uint64_t sub_1000A05A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = type metadata accessor for UUID();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = type metadata accessor for SFProximityHandoff.Interaction();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v7 = type metadata accessor for SFNearbySharingInteractionViewState();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  sub_1000077C8(&qword_1001764B0, &qword_10011E5A8);
  v4[19] = swift_task_alloc();
  v8 = sub_1000077C8(&qword_1001764B8, &unk_10011E5B0);
  v4[20] = v8;
  v4[21] = *(v8 - 8);
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_1000A07FC, 0, 0);
}

uint64_t sub_1000A07FC()
{
  sub_1000077C8(&qword_100176468, &qword_10011E588);
  AsyncStream.makeAsyncIterator()();
  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  v1[1] = sub_1000A08C4;
  v2 = v0[19];
  v3 = v0[20];

  return AsyncStream.Iterator.next(isolation:)(v2, 0, 0, v3);
}

uint64_t sub_1000A08C4()
{

  return _swift_task_switch(sub_1000A09C0, 0, 0);
}

uint64_t sub_1000A09C0()
{
  v124 = v0;
  v1 = v0[19];
  v2 = v0[12];
  v3 = v0[13];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[15];
    (*(v0[21] + 8))(v0[22], v0[20]);
    (*(v3 + 104))(v4, enum case for SFNearbySharingInteractionViewState.idle(_:), v2);
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v5 = v0[14];
    v6 = v0[15];
    v7 = v0[12];
    v8 = v0[13];
    v10 = v0[9];
    v9 = v0[10];
    v11 = v0[8];
    v12 = v0[3];
    v13 = type metadata accessor for Logger();
    v14 = sub_100007D20(v13, qword_10017F350);
    v15 = *(v8 + 16);
    v0[28] = v14;
    v120 = v15;
    v15(v5, v6, v7);
    (*(v10 + 16))(v9, v12, v11);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v116 = v17;
      v18 = v0[16];
      log = v16;
      v20 = v0[13];
      v19 = v0[14];
      v21 = v0[12];
      v22 = v0[7];
      v112 = v0[9];
      v114 = v0[8];
      v23 = v0[6];
      v108 = v0[10];
      v110 = v0[5];
      v24 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      *v24 = 136315394;
      v120(v18, v19, v21);
      v25 = String.init<A>(describing:)();
      v27 = v26;
      v28 = *(v20 + 8);
      v28(v19, v21);
      v29 = sub_10003E81C(v25, v27, &v123);
      v27, v30, v31, v32, v33, v34, v35, v36;
      *(v24 + 4) = v29;
      *(v24 + 12) = 2080;
      SFProximityHandoff.Interaction.id.getter();
      sub_1000A53A0(&qword_1001770E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      (*(v23 + 8))(v22, v110);
      (*(v112 + 8))(v108, v114);
      v40 = sub_10003E81C(v37, v39, &v123);
      v39, v41, v42, v43, v44, v45, v46, v47;
      *(v24 + 14) = v40;
      _os_log_impl(&_mh_execute_header, log, v116, "Sending final viewState %s for interaction ID %s to proximity handoff client", v24, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v92 = v0[13];
      v93 = v0[14];
      v94 = v0[12];
      v96 = v0[9];
      v95 = v0[10];
      v97 = v0[8];

      (*(v96 + 8))(v95, v97);
      v28 = *(v92 + 8);
      v28(v93, v94);
    }

    v0[29] = v28;
    v122 = (&async function pointer to dispatch thunk of SFProximityHandoffClient.nearbySharingInteractionView(update:viewState:) + async function pointer to dispatch thunk of SFProximityHandoffClient.nearbySharingInteractionView(update:viewState:));
    v98 = swift_task_alloc();
    v0[30] = v98;
    *v98 = v0;
    v98[1] = sub_1000A1324;
    v99 = v0[15];
  }

  else
  {
    (*(v3 + 32))(v0[18], v1, v2);
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v48 = v0[17];
    v49 = v0[18];
    v50 = v0[12];
    v51 = v0[13];
    v52 = v0[11];
    v53 = v0[8];
    v54 = v0[9];
    v55 = v0[3];
    v56 = type metadata accessor for Logger();
    v57 = sub_100007D20(v56, qword_10017F350);
    v58 = *(v51 + 16);
    v0[24] = v57;
    v121 = v58;
    v58(v48, v49, v50);
    (*(v54 + 16))(v52, v55, v53);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    v61 = os_log_type_enabled(v59, v60);
    v62 = v0[17];
    if (v61)
    {
      loga = v59;
      v63 = v0[16];
      v64 = v0[12];
      v65 = v0[13];
      v113 = v0[9];
      v115 = v0[8];
      v117 = v60;
      v67 = v0[6];
      v66 = v0[7];
      v109 = v0[11];
      v111 = v0[5];
      v68 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      *v68 = 136315394;
      v121(v63, v62, v64);
      v69 = String.init<A>(describing:)();
      v71 = v70;
      v72 = *(v65 + 8);
      v72(v62, v64);
      v73 = sub_10003E81C(v69, v71, &v123);
      v71, v74, v75, v76, v77, v78, v79, v80;
      *(v68 + 4) = v73;
      *(v68 + 12) = 2080;
      SFProximityHandoff.Interaction.id.getter();
      sub_1000A53A0(&qword_1001770E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v82;
      (*(v67 + 8))(v66, v111);
      (*(v113 + 8))(v109, v115);
      v84 = sub_10003E81C(v81, v83, &v123);
      v83, v85, v86, v87, v88, v89, v90, v91;
      *(v68 + 14) = v84;
      _os_log_impl(&_mh_execute_header, loga, v117, "Sending viewState %s for interaction ID %s to proximity handoff client", v68, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v101 = v0[12];
      v100 = v0[13];
      v102 = v0[11];
      v103 = v0[8];
      v104 = v0[9];

      (*(v104 + 8))(v102, v103);
      v72 = *(v100 + 8);
      v72(v62, v101);
    }

    v0[25] = v72;
    v122 = (&async function pointer to dispatch thunk of SFProximityHandoffClient.nearbySharingInteractionView(update:viewState:) + async function pointer to dispatch thunk of SFProximityHandoffClient.nearbySharingInteractionView(update:viewState:));
    v105 = swift_task_alloc();
    v0[26] = v105;
    *v105 = v0;
    v105[1] = sub_1000A1150;
    v99 = v0[18];
  }

  v106 = v0[3];

  return v122(v106, v99);
}

uint64_t sub_1000A1150()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1000A1538;
  }

  else
  {
    v2 = sub_1000A1264;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000A1264()
{
  (*(v0 + 200))(*(v0 + 144), *(v0 + 96));
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_1000A08C4;
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);

  return AsyncStream.Iterator.next(isolation:)(v2, 0, 0, v3);
}

uint64_t sub_1000A1324()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1000A1700;
  }

  else
  {
    v2 = sub_1000A1438;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000A1438()
{
  (*(v0 + 232))(*(v0 + 120), *(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A1538()
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to forward viewState to proximityHandoffClient: %@", v3, 0xCu);
    sub_1000159AC(v4, &qword_100172EB0, &qword_100119410);
  }

  else
  {
  }

  (*(v0 + 200))(*(v0 + 144), *(v0 + 96));
  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  *v6 = v0;
  v6[1] = sub_1000A08C4;
  v7 = *(v0 + 152);
  v8 = *(v0 + 160);

  return AsyncStream.Iterator.next(isolation:)(v7, 0, 0, v8);
}

uint64_t sub_1000A1700()
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to forward final viewState to proximityHandoffClient: %@", v3, 0xCu);
    sub_1000159AC(v4, &qword_100172EB0, &qword_100119410);
  }

  else
  {
  }

  (*(v0 + 232))(*(v0 + 120), *(v0 + 96));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000A18F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NearbySharingInteractionViewState(0);
  __chkstk_darwin(v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100007D20(v10, qword_10017F350);
  sub_1000AB044(a1, v9, type metadata accessor for NearbySharingInteractionViewState);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = v14;
    *v13 = 136315138;
    sub_1000AB044(v9, v6, type metadata accessor for NearbySharingInteractionViewState);
    v15 = String.init<A>(describing:)();
    v29 = a1;
    v16 = a2;
    v18 = v17;
    sub_1000AB0AC(v9, type metadata accessor for NearbySharingInteractionViewState);
    v19 = sub_10003E81C(v15, v18, &v30);
    v20 = v18;
    a2 = v16;
    a1 = v29;
    v20, v21, v22, v23, v24, v25, v26, v27;
    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "New (internal) viewState: %s", v13, 0xCu);
    sub_100007920(v14);
  }

  else
  {

    sub_1000AB0AC(v9, type metadata accessor for NearbySharingInteractionViewState);
  }

  sub_1000AB044(a1, v6, type metadata accessor for NearbySharingInteractionViewState);
  return sub_1000A1B7C(v6, a2);
}

uint64_t sub_1000A1B7C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NearbySharingInteractionViewState(0);
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB044(a1, v6, type metadata accessor for NearbySharingInteractionViewState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1000AB0AC(a1, type metadata accessor for NearbySharingInteractionViewState);
      v14 = v6;
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_1000AB0AC(a1, type metadata accessor for NearbySharingInteractionViewState);
        sub_1000588EC(*v6, *(v6 + 1), *(v6 + 2), *(v6 + 3), *(v6 + 4), *(v6 + 5), *(v6 + 6), *(v6 + 7), *(v6 + 8), *(v6 + 9), *(v6 + 10), *(v6 + 11));
        v11 = enum case for SFNearbySharingInteractionViewState.contentPreview(_:);
        v12 = type metadata accessor for SFNearbySharingInteractionViewState();
        (*(*(v12 - 8) + 104))(a2, v11, v12);
        return sub_100056D60((v6 + 104));
      }

      v14 = a1;
    }

    sub_1000AB0AC(v14, type metadata accessor for NearbySharingInteractionViewState);
    v13 = &enum case for SFNearbySharingInteractionViewState.idle(_:);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_1000AB0AC(a1, type metadata accessor for NearbySharingInteractionViewState);
      v8 = enum case for SFNearbySharingInteractionViewState.idle(_:);
      v9 = type metadata accessor for SFNearbySharingInteractionViewState();
      (*(*(v9 - 8) + 104))(a2, v8, v9);
      return sub_1000AB0AC(v6, type metadata accessor for NearbySharingInteractionViewState);
    }

    dispatch thunk of ShockwaveAnimationCoordinator.state.getter();

    sub_1000AB0AC(a1, type metadata accessor for NearbySharingInteractionViewState);
    v13 = &enum case for SFNearbySharingInteractionViewState.shockwave(_:);
  }

  v15 = *v13;
  v16 = type metadata accessor for SFNearbySharingInteractionViewState();
  return (*(*(v16 - 8) + 104))(a2, v15, v16);
}

void sub_1000A1E2C()
{
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100007D20(v0, qword_10017F350);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "viewStatePublisher ended", v3, 2u);
  }

  sub_1000077C8(&qword_100176460, &qword_10011E580);
  AsyncStream.Continuation.finish()();
}

uint64_t sub_1000A1F24(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v3 = sub_1000077C8(&qword_1001764A8, &qword_10011E5A0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v37 = &v33 - v5;
  v6 = type metadata accessor for SFNearbySharingInteractionViewState();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100007D20(v13, qword_10017F350);
  v39 = *(v7 + 16);
  v39(v12, a1, v6);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = a1;
    v17 = v16;
    v33 = swift_slowAlloc();
    v40 = v33;
    *v17 = 136315138;
    v39(v9, v12, v6);
    v18 = String.init<A>(describing:)();
    v35 = v4;
    v36 = v3;
    v19 = v18;
    v21 = v20;
    (*(v7 + 8))(v12, v6);
    v22 = sub_10003E81C(v19, v21, &v40);
    v23 = v21;
    v4 = v35;
    v23, v24, v25, v26, v27, v28, v29, v30;
    *(v17 + 4) = v22;
    v3 = v36;
    _os_log_impl(&_mh_execute_header, v14, v15, "New viewState: %s", v17, 0xCu);
    sub_100007920(v33);

    a1 = v34;
  }

  else
  {

    (*(v7 + 8))(v12, v6);
  }

  v39(v9, a1, v6);
  sub_1000077C8(&qword_100176460, &qword_10011E580);
  v31 = v37;
  AsyncStream.Continuation.yield(_:)();
  return (*(v4 + 8))(v31, v3);
}

void sub_1000A2298(uint64_t a1, char *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10009D4E0(a2);
    sub_10009D6A8(a2);
  }
}

double sub_1000A22FC(void *a1)
{
  v2 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  if (!sub_100054568())
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100007D20(v6, qword_10017F350);
    v7 = a1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v28 = v11;
      *v10 = 136315138;
      type metadata accessor for UUID();
      sub_1000A53A0(&qword_1001770E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v13;
      v15 = sub_10003E81C(v12, v13, &v28);
      v14, v16, v17, v18, v19, v20, v21, v22;
      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "Ending nearby sharing interaction with ID: %s due to remote alert dismissal", v10, 0xCu);
      sub_100007920(v11);
    }

    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 56))(v4, 1, 1, v23);
    type metadata accessor for MainActor();
    v24 = v7;
    v25 = static MainActor.shared.getter();
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = &protocol witness table for MainActor;
    v26[4] = v24;
    sub_1000F9860(0, 0, v4, &unk_10011E690, v26);
  }

  return result;
}

double sub_1000A25B0(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v44 - v8;
  v10 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_nearbySharingInteractionRemoteAlertPresentationsByID;
  swift_beginAccess();
  v12 = *(v1 + v10);
  if (*v12->connection)
  {

    v13 = sub_10003EDEC(a1);
    if (v14)
    {
      v49 = *(*v12->nearbySharingInteractionCoordinator + 8 * v13);

      v12, v21, v22, v23, v24, v25, v26, v27;
      if (qword_100172218 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_100007D20(v28, qword_10017F350);
      v48 = *(v4 + 16);
      v48(v9, a1, v3);
      v29 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v47))
      {
        v30 = swift_slowAlloc();
        v45 = v30;
        v46 = swift_slowAlloc();
        v50[0] = v46;
        *v30 = 136315138;
        sub_1000A53A0(&qword_1001770E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v44 = v29;
        v31 = dispatch thunk of CustomStringConvertible.description.getter();
        v33 = v32;
        (*(v4 + 8))(v9, v3);
        v34 = sub_10003E81C(v31, v33, v50);
        v33, v35, v36, v37, v38, v39, v40, v41;
        v43 = v44;
        v42 = v45;
        *(v45 + 1) = v34;
        _os_log_impl(&_mh_execute_header, v43, v47, "Dismissing remote alert for nearby sharing interaction with ID: %s", v42, 0xCu);
        sub_100007920(v46);
      }

      else
      {

        (*(v4 + 8))(v9, v3);
      }

      dispatch thunk of SFRemoteAlertPresentationHandle.dismiss(animated:completion:)();
      v48(v6, a1, v3);
      swift_beginAccess();
      sub_100027388(0, v6);
      swift_endAccess();
    }

    else
    {
      v12, v14, v15, v16, v17, v18, v19, v20;
    }
  }

  return result;
}

uint64_t sub_1000A2920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000A29B8, v6, v5);
}

uint64_t sub_1000A29B8()
{

  sub_10004F4F8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A2A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000A2AB4, v7, v6);
}

uint64_t sub_1000A2AB4()
{

  if (qword_100172250 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);

  sub_1000FC284(v1);

  v2 = *(v0 + 8);

  return v2();
}

double sub_1000A2DD0(uint64_t a1)
{
  v69 = a1;
  v2 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v2 - 8);
  v4 = &v58[-v3];
  v5 = type metadata accessor for ActivityUIDismissalPolicy();
  v66 = *(v5 - 8);
  v67 = v5;
  __chkstk_darwin(v5);
  v7 = &v58[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000077C8(&qword_100176400, &qword_10011E508);
  __chkstk_darwin(v8 - 8);
  v10 = &v58[-v9];
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v68 = &v58[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v58[-v15];
  v17 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_nearbySharingInteractionActivitiesByID;
  swift_beginAccess();
  v19 = *(v1 + v17);
  if (*v19->connection)
  {

    v20 = sub_10003EDEC(v69);
    if (v21)
    {
      v64 = *(*v19->nearbySharingInteractionCoordinator + 8 * v20);
      v65 = v4;

      v19, v28, v29, v30, v31, v32, v33, v34;
      if (qword_100172218 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_100007D20(v35, qword_10017F350);
      v62 = *(v12 + 16);
      v63 = v12 + 16;
      v62(v16, v69, v11);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v60 = v38;
        v61 = swift_slowAlloc();
        v70[0] = v61;
        *v38 = 136315138;
        sub_1000A53A0(&qword_1001770E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v59 = v37;
        v39 = dispatch thunk of CustomStringConvertible.description.getter();
        v41 = v40;
        (*(v12 + 8))(v16, v11);
        v42 = sub_10003E81C(v39, v41, v70);
        v41, v43, v44, v45, v46, v47, v48, v49;
        v50 = v60;
        *(v60 + 1) = v42;
        _os_log_impl(&_mh_execute_header, v36, v59, "Ending activity for nearby sharing interaction with ID: %s", v50, 0xCu);
        sub_100007920(v61);
      }

      else
      {

        (*(v12 + 8))(v16, v11);
      }

      v51 = sub_1000077C8(&qword_100176408, &qword_10011E510);
      (*(*(v51 - 8) + 56))(v10, 1, 1, v51);
      static ActivityUIDismissalPolicy.immediate.getter();
      v52 = v64;
      dispatch thunk of Activity.endSync(_:dismissalPolicy:)();
      (*(v66 + 8))(v7, v67);
      sub_1000159AC(v10, &qword_100176400, &qword_10011E508);
      v53 = type metadata accessor for TaskPriority();
      v54 = v65;
      (*(*(v53 - 8) + 56))(v65, 1, 1, v53);
      type metadata accessor for MainActor();

      v55 = static MainActor.shared.getter();
      v56 = swift_allocObject();
      v56[2] = v55;
      v56[3] = &protocol witness table for MainActor;
      v56[4] = v52;
      sub_1000F9860(0, 0, v54, &unk_10011E548, v56);

      v57 = v68;
      v62(v68, v69, v11);
      swift_beginAccess();
      sub_10002739C(0, v57);
      swift_endAccess();
    }

    else
    {
      v19, v21, v22, v23, v24, v25, v26, v27;
    }
  }

  return result;
}

uint64_t sub_1000A3380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000A3418, v6, v5);
}

uint64_t sub_1000A3418()
{

  if (qword_100172250 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);

  sub_1000FC4A4(v1);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1000A34D0()
{
  v1 = v0;
  v2 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for ActivityUIDismissalPolicy();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000077C8(&qword_100176400, &qword_10011E508);
  __chkstk_darwin(v9 - 8);
  v11 = &v25 - v10;
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100007D20(v12, qword_10017F350);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Ending failure activity", v15, 2u);
  }

  v16 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_failureActivity;
  v17 = *(v0 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_failureActivity);
  if (v17)
  {
    v18 = sub_1000077C8(&qword_100176408, &qword_10011E510);
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);

    static ActivityUIDismissalPolicy.immediate.getter();
    dispatch thunk of Activity.endSync(_:dismissalPolicy:)();
    (*(v6 + 8))(v8, v5);
    sub_1000159AC(v11, &qword_100176400, &qword_10011E508);
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
    type metadata accessor for MainActor();

    v20 = static MainActor.shared.getter();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = &protocol witness table for MainActor;
    v21[4] = v17;
    sub_1000F9860(0, 0, v4, &unk_10011E520, v21);

    *(v1 + v16) = 0;
  }

  else
  {
    v26 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v26, v22, "No current failure activity found", v23, 2u);
    }

    v24 = v26;
  }
}

void sub_1000A38EC(uint64_t a1)
{
  if (!qword_1001761A8)
  {
    sub_100007CCC(&qword_1001761B0, &unk_10011E1F0);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_1001761A8);
    }
  }
}

uint64_t sub_1000A3950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000AC238, v6, v5);
}

uint64_t sub_1000A39E8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NearbySharingInteractionCoordinator(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void sub_1000A3A28()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = *&v65[0];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1000A8C80(*&v65[0], sub_1000A7C50, 0, isUniquelyReferenced_nonNull_native, v65);
  v0, v2, v3, v4, v5, v6, v7, v8;
  v67 = &_swiftEmptyArrayStorage;
  v9 = *&v65[0] + 64;
  v10 = 1 << *(*&v65[0] + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(*&v65[0] + 64);
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  v56 = v14;
  while (v12)
  {
LABEL_11:
    v32 = *(*(v14 + 56) + ((v15 << 9) | (8 * __clz(__rbit64(v12)))));
    swift_getKeyPath();
    swift_getKeyPath();
    v33 = v32;
    static Published.subscript.getter();

    v65[0] = v58;
    v65[1] = v59;
    v65[2] = v60;
    v65[3] = v61;
    v65[4] = v62;
    v65[5] = v63;
    v66 = v64;

    v30 = &_swiftEmptySetSingleton;
    if (*(&v62 + 1) <= 0xFFFFFFFEFFFFFFFFLL)
    {

      if (*(&v62 + 1) >> 62)
      {

        sub_1000159AC(v65, &unk_1001763B0, &qword_10011AF00);
        *(&v59 + 1), v16, v17, v18, v19, v20, v21, v22;
        *(&v58 + 1), v23, v24, v25, v26, v27, v28, v29;
        v30 = v60;
      }

      else
      {
        sub_1000159AC(v65, &unk_1001763B0, &qword_10011AF00);
        v30 = v61;
      }
    }

    v12 &= v12 - 1;
    sub_1000A5DC8(v30);
    v14 = v56;
  }

  while (1)
  {
    v31 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v31 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v31);
    ++v15;
    if (v12)
    {
      v15 = v31;
      goto LABEL_11;
    }
  }

  v41 = v67;
  v55 = *v67->connection;
  if (!v55)
  {
LABEL_22:
    v41, v34, v35, v36, v37, v38, v39, v40;
    return;
  }

  v42 = 0;
  v43 = &v67->interventionTasks[3];
  v44 = &_swiftEmptyArrayStorage;
  v54 = v67;
  while (v42 < *v41->connection)
  {
    v45 = *(v43 - 19);
    v46 = *(v43 - 11);
    v47 = *(v43 - 3);
    v48 = *(v43 - 2);
    v49 = *(v43 - 1);
    v50 = *v43;

    v57 = v47;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_1000A5AD0(0, *v44->connection + 1, 1, v44, v37, v38, v39, v40);
    }

    v52 = *v44->connection;
    v51 = *v44->airdropClient;
    if (v52 >= v51 >> 1)
    {
      v44 = sub_1000A5AD0((v51 > 1), v52 + 1, 1, v44, v37, v38, v39, v40);
    }

    ++v42;
    *v44->connection = v52 + 1;
    v53 = v44 + 24 * v52;
    *(v53 + 4) = v45;
    *(v53 + 5) = v46;
    v53[48] = v57;
    v53[49] = v48;
    v53[50] = v49;
    v53[51] = v50;
    v43 += 24;
    v41 = v54;
    if (v55 == v42)
    {
      goto LABEL_22;
    }
  }

LABEL_24:
  __break(1u);

  __break(1u);
}

uint64_t sub_1000A3E84(uint64_t a1, unint64_t *a2, void *a3, unint64_t *a4)
{
  sub_1000A3A28();
  v12 = v11;
  v13 = 0;
  v14 = *v11->connection;
  transfersMonitorTask = v11->transfersMonitorTask;
  v69 = v11->transfersMonitorTask;
LABEL_2:
  v16 = &transfersMonitorTask[24 * v13];
  while (1)
  {
    if (v14 == v13)
    {
      v12, v4, v5, v6, v7, v8, v9, v10;
      if (&_swiftEmptyArrayStorage >> 62)
      {
        goto LABEL_41;
      }

      v36 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v36)
      {
        goto LABEL_36;
      }

      goto LABEL_11;
    }

    if (v13 >= *v12->connection)
    {
      break;
    }

    ++v13;
    v17 = v16 + 3;
    v18 = *v16;
    v19 = objc_opt_self();

    v20 = String._bridgeToObjectiveC()();
    v21 = [v19 normalizedHandleWithDestinationID:v20];
    v18, v22, v23, v24, v25, v26, v27, v28;

    v16 = v17;
    if (v21)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      transfersMonitorTask = v69;
      goto LABEL_2;
    }
  }

  while (2)
  {
    __break(1u);
    do
    {
      __break(1u);
      do
      {
        __break(1u);
LABEL_41:
        v36 = _CocoaArrayWrapper.endIndex.getter();
        if (!v36)
        {
          goto LABEL_36;
        }

LABEL_11:
        v37 = 0;
        v65 = v36;
LABEL_12:
        if ((&_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
        {
          v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_16;
        }
      }

      while (v37 >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10));
      v38 = *&_swiftEmptyArrayStorage.airDropClient[8 * v37];
LABEL_16:
      v70 = v38;
      v39 = __OFADD__(v37, 1);
      v40 = v37 + 1;
    }

    while (v39);
    v66 = v40;
    if ((a1 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      sub_1000165C4(0, a2, a3);
      sub_1000A5BEC(a4, a2, a3, &protocol conformance descriptor for NSObject);
      Set.Iterator.init(_cocoa:)();
      v41 = &_swiftEmptyArrayStorage;
      v42 = v72;
      v43 = v73;
      v44 = v74;
      v45 = v75;
    }

    else
    {
      v41 = a1;
      v46 = -1 << *(a1 + 32);
      v43 = ~v46;
      v47 = -v46;
      if (v47 < 64)
      {
        v48 = ~(-1 << v47);
      }

      else
      {
        v48 = -1;
      }

      v45 = v48 & *(a1 + 56);

      v44 = 0;
      v42 = a1 + 56;
    }

    v49 = (v43 + 64) >> 6;
    while (v41 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_35;
      }

      sub_1000165C4(0, a2, a3);
      swift_dynamicCast();
      v52 = v71;
      if (!v71)
      {
        goto LABEL_35;
      }

LABEL_33:
      v53 = [v52 handle];
      v54 = [v53 isEquivalentToHandle:v70];

      if (v54)
      {

        sub_100026860(v41);
        &_swiftEmptyArrayStorage, v55, v56, v57, v58, v59, v60, v61;
        return 1;
      }
    }

    v50 = v44;
    v51 = v45;
    if (!v45)
    {
      while (1)
      {
        v44 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          break;
        }

        if (v44 >= v49)
        {
          goto LABEL_35;
        }

        v51 = *(v42 + 8 * v44);
        ++v50;
        if (v51)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
      continue;
    }

    break;
  }

LABEL_29:
  v45 = (v51 - 1) & v51;
  v52 = *(*(v41 + 48) + ((v44 << 9) | (8 * __clz(__rbit64(v51)))));
  if (v52)
  {
    goto LABEL_33;
  }

LABEL_35:
  sub_100026860(v41);

  v37 = v66;
  if (v66 != v65)
  {
    goto LABEL_12;
  }

LABEL_36:
  &_swiftEmptyArrayStorage, v29, v30, v31, v32, v33, v34, v35;
  return 0;
}

uint64_t sub_1000A42D0(void *a1)
{
  if ([a1 state])
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100007D20(v2, qword_10017F350);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_23;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Not permitting auto-join of Boop to SharePlay as the conversation is already joined", v5, 2u);
LABEL_22:

LABEL_23:

    return 0;
  }

  v6 = [a1 remoteMembers];
  sub_1000165C4(0, &unk_100176390, TUConversationMember_ptr);
  sub_1000A5BEC(&qword_100172E90, &unk_100176390, TUConversationMember_ptr, &protocol conformance descriptor for NSObject);
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v6) = sub_1000A3E84(v7, &unk_100176390, TUConversationMember_ptr, &qword_100172E90);
  v7, v8, v9, v10, v11, v12, v13, v14;
  if ((v6 & 1) == 0)
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100007D20(v32, qword_10017F350);
    v33 = a1;
    v3 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v3, v27))
    {
      goto LABEL_23;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v33;
    *v29 = v33;
    v34 = v33;
    v31 = "Ignoring conversation which does not match any of the current nearby contacts: %@";
LABEL_21:
    _os_log_impl(&_mh_execute_header, v3, v27, v31, v28, 0xCu);
    sub_1000159AC(v29, &qword_100172EB0, &qword_100119410);

    goto LABEL_22;
  }

  v15 = [a1 activeRemoteParticipants];
  sub_1000165C4(0, &qword_1001763A0, TUConversationParticipant_ptr);
  sub_1000A5BEC(&qword_1001763A8, &qword_1001763A0, TUConversationParticipant_ptr, &protocol conformance descriptor for NSObject);
  v16 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = sub_1000A3E84(v16, &qword_1001763A0, TUConversationParticipant_ptr, &qword_1001763A8);
  v16, v18, v19, v20, v21, v22, v23, v24;
  if ((v17 & 1) == 0)
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100007D20(v35, qword_10017F350);
    v36 = a1;
    v3 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v3, v27))
    {
      goto LABEL_23;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v36;
    *v29 = v36;
    v37 = v36;
    v31 = "Ignoring conversation where the nearby contact is not an active participant: %@";
    goto LABEL_21;
  }

  if ([a1 avMode])
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100007D20(v25, qword_10017F350);
    v26 = a1;
    v3 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v3, v27))
    {
      goto LABEL_23;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v26;
    *v29 = v26;
    v30 = v26;
    v31 = "Not permitting auto-join of Boop to SharePlay as the conversation is no longer AVLess: %@";
    goto LABEL_21;
  }

  v39 = [a1 provider];
  v40 = [v39 isDefaultProvider];

  if ((v40 & 1) == 0)
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100007D20(v41, qword_10017F350);
    v42 = a1;
    v3 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v3, v27))
    {
      goto LABEL_23;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v42;
    *v29 = v42;
    v43 = v42;
    v31 = "Not permitting auto-join of Boop to SharePlay as the conversation is not from the default provider: %@";
    goto LABEL_21;
  }

  return 1;
}

void sub_1000A48AC(_TtC9AirDropUI33AirDropTransferSessionsController *a1)
{
  if (qword_100172218 != -1)
  {
LABEL_22:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_10017F350);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  a1, v5, v6, v7, v8, v9, v10, v11;
  if (os_log_type_enabled(v3, v4))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v38 = v13;
    *v12 = 136315138;
    sub_1000165C4(0, &unk_100177FF0, TUConversation_ptr);
    v14 = Array.description.getter();
    v16 = v15;
    v17 = sub_10003E81C(v14, v15, &v38);
    v16, v18, v19, v20, v21, v22, v23, v24;
    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "Updating using filtered conversation invitations: %s", v12, 0xCu);
    sub_100007920(v13);
  }

  if (a1 >> 62)
  {
    v25 = _CocoaArrayWrapper.endIndex.getter();
    if (!v25)
    {
      return;
    }
  }

  else
  {
    v25 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v25)
    {
      return;
    }
  }

  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v27 = *&a1->airDropClient[8 * i];
    }

    v28 = v27;
    v29 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (sub_1000A42D0(v27))
    {
      break;
    }

    if (v29 == v25)
    {
      return;
    }
  }

  v30 = v28;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    *(v33 + 4) = v30;
    *v34 = v30;
    v35 = v30;
    _os_log_impl(&_mh_execute_header, v31, v32, "Joining SharePlay conversation for nearby sharing interaction: %@", v33, 0xCu);
    sub_1000159AC(v34, &qword_100172EB0, &qword_100119410);
  }

  v36 = [objc_allocWithZone(TUJoinConversationRequest) initWithConversation:v30];
  [v36 setAvMode:0];
  v37 = [objc_opt_self() sharedInstance];
  [v37 launchAppForJoinRequest:v36];
}

void sub_1000A4C38(void *a1)
{
  v1 = [a1 activeConversations];
  sub_1000165C4(0, &unk_100177FF0, TUConversation_ptr);
  sub_1000A5BEC(&qword_1001763E0, &unk_100177FF0, TUConversation_ptr, &protocol conformance descriptor for NSObject);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v2 = v28;
    v3 = v29;
    v4 = v30;
    v5 = v31;
    v6 = v32;
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v2 + 56);
  }

  v25 = v4;
  v26 = v2;
  v10 = (v4 + 64) >> 6;
  if ((v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_16:
  if (__CocoaSet.Iterator.next()() && (swift_dynamicCast(), v15 = v27, v13 = v5, v14 = v6, v27))
  {
    while (1)
    {
      if ([v15 state])
      {

        v5 = v13;
        v6 = v14;
        if (v2 < 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v16 = [v15 remoteMembers];
        sub_1000165C4(0, &unk_100176390, TUConversationMember_ptr);
        sub_1000A5BEC(&qword_100172E90, &unk_100176390, TUConversationMember_ptr, &protocol conformance descriptor for NSObject);
        v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v16) = sub_1000A3E84(v17, &unk_100176390, TUConversationMember_ptr, &qword_100172E90);
        v17, v18, v19, v20, v21, v22, v23, v24;
        if (v16)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        v5 = v13;
        v6 = v14;
        v2 = v26;
        if (v26 < 0)
        {
          goto LABEL_16;
        }
      }

LABEL_10:
      v11 = v5;
      v12 = v6;
      v13 = v5;
      if (!v6)
      {
        break;
      }

LABEL_14:
      v14 = (v12 - 1) & v12;
      v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
      if (!v15)
      {
        goto LABEL_24;
      }
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        goto LABEL_24;
      }

      v12 = *(v3 + 8 * v13);
      ++v11;
      if (v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    sub_100026860(v2);
  }
}

uint64_t sub_1000A4FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1000077C8(&qword_1001780C0, &qword_100120BD0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000A510C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1000077C8(&qword_1001780C0, &qword_100120BD0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_1000A5234(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1000A52B8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000A52B8(uint64_t a1)
{
  if (!qword_1001762E8)
  {
    type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1001762E8);
    }
  }
}

uint64_t sub_1000A53A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000A53EC()
{
  result = qword_100176328;
  if (!qword_100176328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176328);
  }

  return result;
}

unint64_t sub_1000A5444()
{
  result = qword_100176330;
  if (!qword_100176330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176330);
  }

  return result;
}

unint64_t sub_1000A549C()
{
  result = qword_100176338;
  if (!qword_100176338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176338);
  }

  return result;
}

unint64_t sub_1000A54F4()
{
  result = qword_100176340;
  if (!qword_100176340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176340);
  }

  return result;
}

unint64_t sub_1000A5548()
{
  result = qword_100176350;
  if (!qword_100176350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176350);
  }

  return result;
}

unint64_t sub_1000A559C()
{
  result = qword_100176360;
  if (!qword_100176360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176360);
  }

  return result;
}

uint64_t sub_1000A55F0(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v7 = v6;
  return static Published.subscript.setter();
}

_TtC9AirDropUI33AirDropTransferSessionsController *sub_1000A568C(_TtC9AirDropUI33AirDropTransferSessionsController *result, const char *a2, void *a3, _TtC9AirDropUI33AirDropTransferSessionsController *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->airdropClient;
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
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

  v12 = *a4->connection;
  if (v11 <= v12)
  {
    v13 = *a4->connection;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1000077C8(&qword_100172F48, &unk_100118BD0);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *v14->connection = v12;
    *v14->airdropClient = 2 * (v16 >> 4);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14->airDropClient >= &a4->airDropClient[16 * v12])
    {
      memmove(v14->airDropClient, a4->airDropClient, 16 * v12);
    }

    *a4->connection = 0;
  }

  else
  {
    sub_1000077C8(&qword_100172F40, &qword_10011EA40);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v14;
}

_TtC9AirDropUI33AirDropTransferSessionsController *sub_1000A57E8(_TtC9AirDropUI33AirDropTransferSessionsController *result, int64_t a2, char a3, _TtC9AirDropUI33AirDropTransferSessionsController *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->airdropClient;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v12 = *a4->connection;
  if (v11 <= v12)
  {
    v13 = *a4->connection;
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000077C8(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  *v17->connection = v12;
  *v17->airdropClient = 2 * ((result - v16) / v15);
LABEL_19:
  v20 = a7(0);
  v25 = *(v20 - 1);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = a4 + v26;
  if (v9)
  {
    if (v17 < a4 || v17 + v26 >= &v27[*(v25 + 72) * v12])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *a4->connection = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v27, v19, v20, v21, v22, v23, v24;
  return v17;
}

_TtC9AirDropUI33AirDropTransferSessionsController *sub_1000A59C4(_TtC9AirDropUI33AirDropTransferSessionsController *result, int64_t a2, void *a3, _TtC9AirDropUI33AirDropTransferSessionsController *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->airdropClient;
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

  v12 = *a4->connection;
  if (v11 <= v12)
  {
    v13 = *a4->connection;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1000077C8(&qword_100172A80, &unk_1001187D0);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *v14->connection = v12;
    *v14->airdropClient = 2 * (v16 >> 4);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  airDropClient = v14->airDropClient;
  v18 = a4->airDropClient;
  if (v9)
  {
    if (v14 != a4 || airDropClient >= &v18[16 * v12])
    {
      memmove(airDropClient, v18, 16 * v12);
    }

    *a4->connection = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

_TtC9AirDropUI33AirDropTransferSessionsController *sub_1000A5AD0(_TtC9AirDropUI33AirDropTransferSessionsController *result, int64_t a2, char a3, _TtC9AirDropUI33AirDropTransferSessionsController *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->airdropClient;
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

  v12 = *a4->connection;
  if (v11 <= v12)
  {
    v13 = *a4->connection;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1000077C8(&qword_100172A88, &qword_10011E4C0);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    *v14->connection = v12;
    *v14->airdropClient = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  airDropClient = v14->airDropClient;
  v17 = a4->airDropClient;
  if (v9)
  {
    v18 = 24 * v12;
    if (v14 != a4 || airDropClient >= &v17[24 * v12])
    {
      memmove(airDropClient, v17, v18);
    }

    *a4->connection = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v17, v18, a4, a5, a6, a7, a8;
  return v14;
}

uint64_t sub_1000A5BEC(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000165C4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000A5CD0(_TtC9AirDropUI33AirDropTransferSessionsController *a1)
{
  v2 = *a1->connection;
  v3 = *v1;
  v4 = *(*v1)->connection;
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *v3->airdropClient >> 1)
  {
    if (*a1->connection)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v25 = v4 + v2;
  }

  else
  {
    v25 = v4;
  }

  v3 = sub_1000A5AD0(isUniquelyReferenced_nonNull_native, v25, 1, v3, v11, v12, v13, v14);
  if (!*a1->connection)
  {
LABEL_13:
    a1, v8, v9, v10, v11, v12, v13, v14;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*v3->airdropClient >> 1) - *v3->connection < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();
  a1, v15, v16, v17, v18, v19, v20, v21;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v22 = *v3->connection;
  v23 = __OFADD__(v22, v2);
  v24 = v22 + v2;
  if (!v23)
  {
    *v3->connection = v24;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1000A5DC8(void *a1)
{
  v3 = a1[2];
  v4 = *v1;
  v5 = *(*v1)->connection;
  v6 = v3 + v5;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v13 = *v4->airdropClient >> 1, v13 < v6))
  {
    if (v5 <= v6)
    {
      v14 = v3 + v5;
    }

    else
    {
      v14 = v5;
    }

    v4 = sub_1000A5AD0(isUniquelyReferenced_nonNull_native, v14, 1, v4, v9, v10, v11, v12);
    v13 = *v4->airdropClient >> 1;
  }

  v15 = *v4->connection;
  v16 = v13 - v15;
  a1 = sub_1000A7D10(&v67, &v4->airDropClient[24 * v15], v13 - v15, v7);
  if (a1 < v3)
  {
    goto LABEL_15;
  }

  v19 = a1;
  if (a1)
  {
    v20 = *v4->connection;
    v21 = __OFADD__(v20, a1);
    v22 = a1 + v20;
    if (v21)
    {
      __break(1u);
LABEL_19:
      v25 = (v18 + 64) >> 6;
      if (v25 <= v2 + 1)
      {
        v26 = v2 + 1;
      }

      else
      {
        v26 = (v18 + 64) >> 6;
      }

      v27 = v26 - 1;
      do
      {
        v28 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_66:
          __break(1u);
          return;
        }

        if (v28 >= v25)
        {
          v70 = v27;
          v71 = 0;
          goto LABEL_13;
        }

        v29 = *(v17 + 8 * v28);
        ++v2;
      }

      while (!v29);
      v64 = v18;
      v23 = (v29 - 1) & v29;
      v24 = __clz(__rbit64(v29)) | (v28 << 6);
      v2 = v28;
      goto LABEL_27;
    }

    *v4->connection = v22;
  }

  a1 = v67;
  if (v19 != v16)
  {
    goto LABEL_13;
  }

LABEL_16:
  v16 = *v4->connection;
  v17 = v68;
  v18 = v69;
  v2 = v70;
  v66 = v68;
  if (!v71)
  {
    goto LABEL_19;
  }

  v23 = (v71 - 1) & v71;
  v24 = __clz(__rbit64(v71)) | (v70 << 6);
  v64 = v69;
  v25 = (v69 + 64) >> 6;
LABEL_27:
  v65 = a1;
  v30 = a1[6] + 24 * v24;
  v32 = *v30;
  v31 = *(v30 + 8);
  v33 = *(v30 + 16);
  v34 = *(v30 + 17);
  v35 = *(v30 + 18);
  v36 = *(v30 + 19);
  if (v34)
  {
    v37 = 256;
  }

  else
  {
    v37 = 0;
  }

  v38 = v37 | v33;
  if (v35)
  {
    v39 = 0x10000;
  }

  else
  {
    v39 = 0;
  }

  if (v36)
  {
    v40 = 0x1000000;
  }

  else
  {
    v40 = 0;
  }

  v41 = v38 | v39 | v40;

  v46 = v66;
LABEL_38:
  while (1)
  {
    v47 = *v4->airdropClient;
    v48 = v47 >> 1;
    if ((v47 >> 1) < v16 + 1)
    {
      break;
    }

    if (v16 < v48)
    {
      goto LABEL_40;
    }

LABEL_37:
    *v4->connection = v16;
  }

  v62 = sub_1000A5AD0((v47 > 1), v16 + 1, 1, v4, v42, v43, v44, v45);
  v46 = v66;
  v4 = v62;
  v48 = *v62->airdropClient >> 1;
  if (v16 >= v48)
  {
    goto LABEL_37;
  }

LABEL_40:
  while (1)
  {
    v49 = &v4->airDropClient[24 * v16];
    *v49 = v32;
    *(v49 + 8) = v31;
    *(v49 + 16) = v41 & 1;
    *(v49 + 17) = BYTE1(v41) & 1;
    *(v49 + 18) = BYTE2(v41) & 1;
    *(v49 + 19) = HIBYTE(v41) & 1;
    ++v16;
    if (!v23)
    {
      break;
    }

    a1 = v65;
LABEL_47:
    v52 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v53 = a1[6] + 24 * (v52 | (v2 << 6));
    v32 = *v53;
    v31 = *(v53 + 8);
    v54 = *(v53 + 16);
    v55 = *(v53 + 17);
    v56 = *(v53 + 18);
    v57 = *(v53 + 19);
    if (v55)
    {
      v58 = 256;
    }

    else
    {
      v58 = 0;
    }

    v59 = v58 | v54;
    if (v56)
    {
      v60 = 0x10000;
    }

    else
    {
      v60 = 0;
    }

    if (v57)
    {
      v61 = 0x1000000;
    }

    else
    {
      v61 = 0;
    }

    v41 = v59 | v60 | v61;

    v46 = v66;
    if (v16 == v48)
    {
      v16 = v48;
      *v4->connection = v48;
      goto LABEL_38;
    }
  }

  v50 = v2;
  a1 = v65;
  while (1)
  {
    v51 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      __break(1u);
      goto LABEL_66;
    }

    if (v51 >= v25)
    {
      break;
    }

    v23 = *(v46 + 8 * v51);
    ++v50;
    if (v23)
    {
      v2 = v51;
      goto LABEL_47;
    }
  }

  if (v25 <= v2 + 1)
  {
    v63 = v2 + 1;
  }

  else
  {
    v63 = v25;
  }

  v69 = v64;
  v70 = v63 - 1;
  v71 = 0;
  *v4->connection = v16;
LABEL_13:
  sub_100026860(a1);
  *v1 = v4;
}

void *sub_1000A613C(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if (!*(a2 + 16))
  {

    return &_swiftEmptySetSingleton;
  }

  v86[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_43;
  }

  v12 = 0;
  v77 = 0;
  airDropClient = v4->airDropClient;
  v14 = (v2 + 56);
  v82 = v4;
  v83 = v4->airDropClient;
  while (1)
  {
    v15 = &airDropClient[16 * v12];
    v17 = *v15;
    v16 = *(v15 + 1);
    v80 = v12 + 1;
    Hasher.init(_seed:)();

    String.hash(into:)();
    v18 = Hasher._finalize()();
    v26 = -1 << *(v2 + 32);
    v27 = v18 & ~v26;
    v28 = v27 >> 6;
    v29 = 1 << v27;
    if (((1 << v27) & v14[v27 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    v16, v19, v20, v21, v22, v23, v24, v25;
    v12 = v80;
    v4 = v82;
    if (v80 == v3)
    {
      goto LABEL_43;
    }
  }

  v30 = (*(v2 + 48) + 16 * v27);
  v19 = v30[1];
  if (*v30 != v17 || v19 != v16)
  {
    v32 = ~v26;
    while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v27 = (v27 + 1) & v32;
      v28 = v27 >> 6;
      v29 = 1 << v27;
      if (((1 << v27) & v14[v27 >> 6]) == 0)
      {
        airDropClient = v83;
        goto LABEL_6;
      }

      v33 = (*(v2 + 48) + 16 * v27);
      v19 = v33[1];
      if (*v33 == v17 && v19 == v16)
      {
        break;
      }
    }
  }

  v86[1] = v80;
  v16, v19, v20, v21, v22, v23, v24, v25;
  v35 = *(v2 + 32);
  v78 = ((1 << v35) + 63) >> 6;
  v36 = 8 * v78;
  v37 = v83;
  if ((v35 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_47:
  v63 = v36;

  v64 = v63;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v79 = &v76;
    __chkstk_darwin(v34);
    v27 = &v76 - ((v38 + 15) & 0x3FFFFFFFFFFFFFF0);
    v85 = v14;
    memcpy(v27, v14, v38);
    v84 = v2;
    v39 = *(v2 + 16);
    v40 = *(v27 + 8 * v28) & ~v29;
    v81 = v27;
    *(v27 + 8 * v28) = v40;
    v41 = v39 - 1;
    v42 = v82;
    v14 = *v82->connection;
    v43 = v80;
    while (1)
    {
      v80 = v41;
      if (v43 == v14)
      {
LABEL_41:
        v2 = sub_1000A7704(v81, v78, v80, v84);
LABEL_42:
        v4 = v42;
LABEL_43:
        v4, v5, v6, v7, v8, v9, v10, v11;
        return v2;
      }

      v28 = v43;
      while (1)
      {
        if (v43 < 0)
        {
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        if (v28 >= *v42->connection)
        {
          goto LABEL_46;
        }

        v45 = &v37[16 * v28];
        v46 = *v45;
        v29 = *(v45 + 1);
        ++v28;
        v2 = v84;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v47 = Hasher._finalize()();
        v55 = -1 << *(v2 + 32);
        v56 = v47 & ~v55;
        v27 = v56 >> 6;
        v57 = 1 << v56;
        if (((1 << v56) & v85[v56 >> 6]) != 0)
        {
          break;
        }

LABEL_37:
        v29, v48, v49, v50, v51, v52, v53, v54;
LABEL_22:
        v37 = v83;
        if (v28 == v14)
        {
          goto LABEL_41;
        }
      }

      v58 = (*(v2 + 48) + 16 * v56);
      v48 = v58[1];
      if (*v58 != v46 || v48 != v29)
      {
        v60 = ~v55;
        v2 = 1;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v56 = (v56 + 1) & v60;
          v27 = v56 >> 6;
          v57 = 1 << v56;
          if (((1 << v56) & v85[v56 >> 6]) == 0)
          {
            v42 = v82;
            goto LABEL_37;
          }

          v61 = (*(v84 + 48) + 16 * v56);
          v48 = v61[1];
          if (*v61 == v46 && v48 == v29)
          {
            break;
          }
        }
      }

      v29, v48, v49, v50, v51, v52, v53, v54;
      v42 = v82;
      v44 = v81[v27];
      v81[v27] = v44 & ~v57;
      if ((v44 & v57) == 0)
      {
        goto LABEL_22;
      }

      v41 = v80 - 1;
      v37 = v83;
      if (__OFSUB__(v80, 1))
      {
        __break(1u);
      }

      v43 = v28;
      if (v80 == 1)
      {

        v2 = &_swiftEmptySetSingleton;
        goto LABEL_42;
      }
    }
  }

  v65 = swift_slowAlloc();
  memcpy(v65, v14, v64);
  v66 = v77;
  sub_1000A704C(v65, v78, v2, v27, v86);
  v68 = v67;

  if (!v66)
  {

    v82, v69, v70, v71, v72, v73, v74, v75;
    return v68;
  }

  __break(1u);
  return result;
}

char *sub_1000A65E8(uint64_t a1, char *a2)
{
  v5 = sub_1000077C8(&qword_100172F08, &unk_10011E530);
  __chkstk_darwin(v5 - 8);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v66 - v9);
  v11 = type metadata accessor for UUID();
  __chkstk_darwin(v11);
  v86 = (&v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v15 = (&v66 - v14);
  __chkstk_darwin(v16);
  v81 = (&v66 - v18);
  if (!*(a2 + 2))
  {

    return &_swiftEmptySetSingleton;
  }

  v67 = v10;
  v69 = v7;
  v20 = a1 + 64;
  v19 = *(a1 + 64);
  v21 = -1 << *(a1 + 32);
  v80 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v88 = (v22 & v19);
  v73 = (63 - v21) >> 6;
  v87 = v17 + 16;
  v78 = (v17 + 48);
  v79 = (v17 + 56);
  v77 = (v17 + 32);
  v83 = a2 + 56;
  v68 = v17;
  v89 = (v17 + 8);

  v24 = 0;
  v70 = a1;
  for (i = a1 + 64; ; v20 = i)
  {
    v25 = v88;
    v26 = v24;
    if (v88)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v67;
      (*(v68 + 16))(v67, *(a1 + 48) + *(v68 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v73 <= (v24 + 1) ? v24 + 1 : v73;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_58;
        }

        if (v26 >= v73)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v67;
    }

    v75 = *v79;
    v75(v30, v31, 1, v11);
    v90 = a1;
    v91 = v20;
    v92 = v80;
    v93 = v28;
    v94 = v2;
    v74 = *v78;
    if (v74(v30, 1, v11) == 1)
    {
      sub_1000159AC(v30, &qword_100172F08, &unk_10011E530);
      v59 = a1;
      goto LABEL_53;
    }

    v72 = *v77;
    v72(v81, v30, v11);
    v71 = sub_1000A53A0(&unk_100173CF0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v33 = -1 << a2[32];
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) != 0)
    {
      break;
    }

    (*v89)(v81, v11);
LABEL_22:
    v24 = v28;
    v88 = v2;
  }

  v66 = v89 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v82 = ~v33;
  v34 = *(v68 + 72);
  v84 = *(v68 + 16);
  v85 = v34;
  while (1)
  {
    v84(v15, *(a2 + 6) + v85 * v24, v11);
    v35 = sub_1000A53A0(&qword_100175DE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v88 = *v89;
    v88(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v82;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) == 0)
    {
      a1 = v70;
      v88(v81, v11);
      goto LABEL_22;
    }
  }

  v82 = v35;
  v37 = (v88)(v81, v11);
  v38 = a2[32];
  v66 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v66;
  a1 = v70;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v67 = &v66;
    __chkstk_darwin(v37);
    v40 = &v66 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v83, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 2);
    v81 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v69;
    v44 = i;
    v45 = v73;
LABEL_26:
    v68 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v84(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v85, v11);
      v50 = 0;
LABEL_39:
      v75(v24, v50, 1, v11);
      v90 = a1;
      v91 = v44;
      v92 = v80;
      v93 = v28;
      v94 = v2;
      if (v74(v24, 1, v11) == 1)
      {
        sub_1000159AC(v24, &qword_100172F08, &unk_10011E530);
        a2 = sub_1000A7928(v81, v66, v68, a2);
        goto LABEL_52;
      }

      v72(v86, v24, v11);
      v51 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v52 = a2;
      v53 = -1 << a2[32];
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v83[v54 >> 6]) != 0)
      {
        v84(v15, *(v52 + 6) + v54 * v85, v11);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v88(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v83[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v84(v15, *(v52 + 6) + v54 * v85, v11);
            v57 = dispatch thunk of static Equatable.== infix(_:_:)();
            v88(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v88(v86, v11);
        v58 = v81[v26];
        v81[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
        if ((v58 & v20) != 0)
        {
          v43 = v68 - 1;
          if (__OFSUB__(v68, 1))
          {
            __break(1u);
          }

          if (v68 == 1)
          {

            a2 = &_swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v88(v86, v11);
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v61 = v23;

    v81 = a2;
    v62 = v61;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v63 = v81;

      a2 = v63;
      continue;
    }

    break;
  }

  v64 = swift_slowAlloc();
  memcpy(v64, v83, v62);
  sub_1000A7230(v64, v66, v81, v24, &v90);
  a2 = v65;

LABEL_52:
  v59 = v90;
LABEL_53:
  sub_100026860(v59);
  return a2;
}

void sub_1000A704C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v33 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          sub_1000A7704(a1, a2, v33, a3);
          return;
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v16 = Hasher._finalize()();
        v24 = -1 << *(a3 + 32);
        v25 = v16 & ~v24;
        v26 = v25 >> 6;
        v27 = 1 << v25;
        if (((1 << v25) & *(v9 + 8 * (v25 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
        v14, v17, v18, v19, v20, v21, v22, v23;
      }

      v28 = (*(a3 + 48) + 16 * v25);
      v17 = v28[1];
      if (*v28 != v15 || v17 != v14)
      {
        v30 = ~v24;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v25 = (v25 + 1) & v30;
          v26 = v25 >> 6;
          v27 = 1 << v25;
          if (((1 << v25) & *(v9 + 8 * (v25 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v31 = (*(a3 + 48) + 16 * v25);
          v17 = v31[1];
          if (*v31 == v15 && v17 == v14)
          {
            break;
          }
        }
      }

      v14, v17, v18, v19, v20, v21, v22, v23;
      v10 = a1[v26];
      a1[v26] = v10 & ~v27;
    }

    while ((v10 & v27) == 0);
    v8 = v33 - 1;
    if (__OFSUB__(v33, 1))
    {
LABEL_23:
      __break(1u);
      return;
    }

    if (v33 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_1000A7230(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = sub_1000077C8(&qword_100172F08, &unk_10011E530);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for UUID();
  __chkstk_darwin(v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_1000159AC(v11, &qword_100172F08, &unk_10011E530);
          v45 = v61;

          sub_1000A7928(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_1000A53A0(&unk_100173CF0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_1000A53A0(&qword_100175DE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

Swift::Int sub_1000A7704(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_1000077C8(&qword_100176590, &qword_10011E7C0);
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

uint64_t sub_1000A7928(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for UUID();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1000077C8(&qword_100175DE8, &qword_10011DC90);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1000A53A0(&unk_100173CF0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

id sub_1000A7C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_1000077C8(&qword_1001763D0, &qword_100121C60) + 48);
  v5 = *(sub_1000077C8(&qword_1001763C8, &unk_10011E4D0) + 48);
  v8 = *(a1 + v4);
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  *(a2 + v5) = v8;

  return v8;
}

void *sub_1000A7D10(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = *(a4 + 48) + 24 * (__clz(__rbit64(v9)) | (v12 << 6));
      v19 = *v17;
      v18 = *(v17 + 8);
      v9 &= v9 - 1;
      v20 = *(v17 + 16);
      v21 = *(v17 + 17);
      v22 = *(v17 + 18);
      LOBYTE(v17) = *(v17 + 19);
      *v11 = v19;
      *(v11 + 8) = v18;
      *(v11 + 16) = v20;
      *(v11 + 17) = v21;
      *(v11 + 18) = v22;
      *(v11 + 19) = v17;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 24;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = (63 - v7) >> 6;
    }

    v12 = v24 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_1000A7E88(uint64_t a1@<X8>)
{
  v3 = sub_1000077C8(&qword_1001763D0, &qword_100121C60);
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v5 = &v39 - v4;
  v42 = type metadata accessor for UUID();
  v6 = *(v42 - 8);
  __chkstk_darwin(v42);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000077C8(&qword_1001763D8, &unk_10011E4E0);
  __chkstk_darwin(v9 - 8);
  v46 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v14 = &v39 - v12;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v39 = v5;
  v45 = v18;
  if (v19)
  {
    v41 = a1;
    v20 = v17;
LABEL_11:
    v40 = (v19 - 1) & v19;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    v25 = v42;
    (*(v6 + 16))(v8, *(v15 + 48) + *(v6 + 72) * v24, v42, v13);
    v26 = *(*(v15 + 56) + 8 * v24);
    v27 = *(v44 + 48);
    v28 = v8;
    v29 = v44;
    (*(v6 + 32))(v14, v28, v25);
    *&v14[v27] = v26;
    v30 = v43;
    (*(v43 + 56))(v14, 0, 1, v29);
    v31 = v26;
    v32 = v40;
    a1 = v41;
    v23 = v20;
LABEL_12:
    *v1 = v15;
    v1[1] = v16;
    v33 = v46;
    v1[2] = v45;
    v1[3] = v23;
    v1[4] = v32;
    v34 = v1[5];
    sub_100021A84(v14, v33, &qword_1001763D8, &unk_10011E4E0);
    v35 = 1;
    if ((*(v30 + 48))(v33, 1, v29) != 1)
    {
      v36 = v33;
      v37 = v39;
      sub_100021A84(v36, v39, &qword_1001763D0, &qword_100121C60);
      v34(v37);
      sub_1000159AC(v37, &qword_1001763D0, &qword_100121C60);
      v35 = 0;
    }

    v38 = sub_1000077C8(&qword_1001763C8, &unk_10011E4D0);
    (*(*(v38 - 8) + 56))(a1, v35, 1, v38);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v30 = v43;
        v29 = v44;
        (*(v43 + 56))(&v39 - v12, 1, 1, v44, v13);
        v32 = 0;
        goto LABEL_12;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        v41 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

unint64_t sub_1000A8264(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000077C8(&qword_1001765B0, &qword_10011A8B0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_10003EEC0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000A8368(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000077C8(&qword_100173C90, &qword_10011A2F8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10003EEC0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000A846C(uint64_t a1)
{
  v2 = sub_1000077C8(&qword_100176598, &qword_10011E7C8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000077C8(&unk_1001765A0, &qword_10011A2F0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100007BA4(v9, v5, &qword_100176598, &qword_10011E7C8);
      result = sub_10003EF38(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for SFAirDrop.TransferIdentifier();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000A8654(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = sub_1000077C8(a2, a3);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    sub_1000077C8(a4, a5);
    v14 = static _DictionaryStorage.allocate(capacity:)();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      sub_100007BA4(v16, v12, a2, v27);
      result = sub_10003EDEC(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = type metadata accessor for UUID();
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, v12, v22);
      *(v14[7] + 8 * v20) = *&v12[v15];
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {

        return v14;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000A8834(uint64_t a1)
{
  v2 = sub_1000077C8(&unk_100176570, &unk_10011E790);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000077C8(&unk_100173D10, &qword_10011A398);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100007BA4(v9, v5, &unk_100176570, &unk_10011E790);
      result = sub_10003EDEC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000A8A1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000077C8(&qword_1001763E8, &qword_10011E4F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100007BA4(v4, &v11, &unk_1001763F0, &qword_10011E4F8);
      v5 = v11;
      result = sub_10003F050(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100058DC8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000A8B44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000077C8(&qword_1001765E8, &qword_10011EA28);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100007BA4(v4, v13, &qword_1001765F0, &unk_10011EA30);
      result = sub_10003F00C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100058DC8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_1000A8C80(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v53 = a5;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000077C8(&qword_1001763C0, &qword_10011E4C8);
  __chkstk_darwin(v13 - 8);
  v15 = &v42 - v14;
  v16 = -1 << *(a1 + 32);
  v17 = ~v16;
  v18 = *(a1 + 64);
  v19 = -v16;
  v46 = a1;
  v47 = a1 + 64;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v48 = v17;
  v49 = 0;
  v50 = v20 & v18;
  v51 = a2;
  v52 = a3;
  v44 = v10;
  v45 = (v10 + 32);
  v43 = (v10 + 8);

  v42 = a3;

  while (1)
  {
    sub_1000A7E88(v15);
    v24 = sub_1000077C8(&qword_1001763C8, &unk_10011E4D0);
    if ((*(*(v24 - 8) + 48))(v15, 1, v24) == 1)
    {
      sub_100026860(v46);

      return;
    }

    v25 = *(v24 + 48);
    v26 = *v45;
    v27 = v9;
    (*v45)(v12, v15, v9);
    v28 = *&v15[v25];
    v29 = *v53;
    v31 = sub_10003EDEC(v12);
    v32 = v29[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      break;
    }

    v35 = v30;
    if (v29[3] >= v34)
    {
      if ((a4 & 1) == 0)
      {
        sub_1000421BC();
      }
    }

    else
    {
      sub_10003FECC(v34, a4 & 1);
      v36 = sub_10003EDEC(v12);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_19;
      }

      v31 = v36;
    }

    v38 = *v53;
    if (v35)
    {
      v21 = *(v38[7] + 8 * v31);

      v9 = v27;
      (*v43)(v12, v27);
      v22 = v38[7];
      v23 = *(v22 + 8 * v31);
      *(v22 + 8 * v31) = v21;

      a4 = 1;
    }

    else
    {
      v38[(v31 >> 6) + 8] |= 1 << v31;
      v9 = v27;
      v26((v38[6] + *(v44 + 72) * v31), v12, v27);
      *(v38[7] + 8 * v31) = v28;
      v39 = v38[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_18;
      }

      v38[2] = v41;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1000A8FFC(void *a1)
{
  v2 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v2 - 8);
  v4 = &v83 - v3;
  v5 = type metadata accessor for SFRemoteAlertPresentationRequest.PresentationType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100054568())
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100007D20(v9, qword_10017F350);
    v10 = a1;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *v13 = 136315394;
      type metadata accessor for UUID();
      sub_1000A53A0(&qword_1001770E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      v17 = sub_10003E81C(v14, v15, &v86);
      v16, v18, v19, v20, v21, v22, v23, v24;
      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      v85 = sub_100054568();
      v25 = String.init<A>(describing:)();
      v27 = v26;
      v28 = sub_10003E81C(v25, v26, &v86);
      v27, v29, v30, v31, v32, v33, v34, v35;
      *(v13 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v11, v12, "Not creating remote alert for interaction with ID: %s preferred presentation style is: %s", v13, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    v38 = sub_100007D20(v37, qword_10017F350);
    v39 = a1;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v83 = v38;
      v43 = v42;
      v44 = swift_slowAlloc();
      v84 = v4;
      v45 = v44;
      v86 = v44;
      *v43 = 136315138;
      type metadata accessor for UUID();
      sub_1000A53A0(&qword_1001770E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      v49 = sub_10003E81C(v46, v47, &v86);
      v48, v50, v51, v52, v53, v54, v55, v56;
      *(v43 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v40, v41, "Creating remote alert presentation for nearby sharing interaction with ID: %s", v43, 0xCu);
      sub_100007920(v45);
      v4 = v84;
    }

    v57 = objc_allocWithZone(type metadata accessor for NearbySharingInteractionViewController(0));
    v58 = v39;
    v59 = sub_1000D9AE4(v58);
    type metadata accessor for AUIRemoteAlertPresentationManager(0);
    v60 = sub_100078F40();
    (*(v6 + 104))(v8, enum case for SFRemoteAlertPresentationRequest.PresentationType.unknown(_:), v5);
    v36 = dispatch thunk of SFRemoteAlertPresentationManager.present(_:animated:contentOverlaysStatusBar:supportedInterfaceOrientations:hideViewController:presentationType:)();

    (*(v6 + 8))(v8, v5);
    if (v36)
    {
      *(swift_allocObject() + 16) = v58;
      v61 = v58;

      dispatch thunk of SFRemoteAlertPresentationHandle.onDismiss.setter();

      return v36;
    }

    v63 = v58;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v86 = v67;
      *v66 = 136315138;
      type metadata accessor for UUID();
      sub_1000A53A0(&qword_1001770E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v69;
      v71 = sub_10003E81C(v68, v69, &v86);
      v70, v72, v73, v74, v75, v76, v77, v78;
      *(v66 + 4) = v71;
      _os_log_impl(&_mh_execute_header, v64, v65, "Could not create remote alert for interaction with ID: %s, ending the interaction", v66, 0xCu);
      sub_100007920(v67);
    }

    v79 = type metadata accessor for TaskPriority();
    (*(*(v79 - 8) + 56))(v4, 1, 1, v79);
    type metadata accessor for MainActor();
    v80 = v63;
    v81 = static MainActor.shared.getter();
    v82 = swift_allocObject();
    v82[2] = v81;
    v82[3] = &protocol witness table for MainActor;
    v82[4] = v80;
    sub_1000F9860(0, 0, v4, &unk_10011E680, v82);
  }

  return 0;
}

uint64_t sub_1000A972C(char *a1)
{
  v130 = type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType();
  v127 = *(v130 - 8);
  __chkstk_darwin(v130);
  v125 = v112 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for NearbySharingInteractionAttributes(0);
  __chkstk_darwin(v128);
  v4 = v112 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ActivityPresentationOptions();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v129 = v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v112 - v13;
  v15 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v15 - 8);
  v17 = v112 - v16;
  v18 = sub_100054568();
  v132 = a1;
  if (v18 == 1)
  {
    v123 = v6;
    v19 = type metadata accessor for TaskPriority();
    v20 = *(v19 - 8);
    v120 = *(v20 + 56);
    v121 = v19;
    v119 = v20 + 56;
    v120(v17, 1, 1);
    v122 = type metadata accessor for MainActor();
    v21 = static MainActor.shared.getter();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = &protocol witness table for MainActor;
    sub_1000F9860(0, 0, v17, &unk_10011E640, v22);

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v116 = *(v10 + 88);
    v117 = v10 + 88;
    LODWORD(v21) = v116(v14, v9);
    v23 = enum case for SFAirDrop.NearbySharingInteraction.State.connectionInterrupted(_:);
    v24 = *(v10 + 8);
    v118 = v9;
    v112[1] = v10 + 8;
    v112[0] = v24;
    v24(v14, v9);
    v115 = v23;
    v131 = v8;
    v126 = v17;
    v124 = v5;
    v113 = v10;
    if (v21 == v23)
    {
      if (qword_100172218 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_100007D20(v25, qword_10017F350);
      v26 = v132;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v114 = v4;
        v31 = v30;
        v134[0] = v30;
        *v29 = 136315138;
        type metadata accessor for UUID();
        sub_1000A53A0(&qword_1001770E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v32 = dispatch thunk of CustomStringConvertible.description.getter();
        v34 = v33;
        v35 = sub_10003E81C(v32, v33, v134);
        v34, v36, v37, v38, v39, v40, v41, v42;
        *(v29 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v27, v28, "Creating failure activity for nearby sharing interaction with ID: %s", v29, 0xCu);
        sub_100007920(v31);
        v4 = v114;
      }

      if (!SBUIIsSystemApertureEnabled())
      {
LABEL_8:
        v43 = v127;
        sub_1000077C8(&qword_100175D30, &qword_10011D980);
        v44 = type metadata accessor for ActivityPresentationOptions.ActivityPresentationDestination();
        v45 = *(v44 - 8);
        v46 = (*(v45 + 80) + 32) & ~*(v45 + 80);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_1001186F0;
        (*(v45 + 104))(v47 + v46, enum case for ActivityPresentationOptions.ActivityPresentationDestination.banner(_:), v44);
LABEL_20:
        v92 = v130;
        ActivityPresentationOptions.init(destinations:)();
        v93 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_id;
        v94 = type metadata accessor for UUID();
        v95 = *(*(v94 - 8) + 16);
        v130 = v93;
        v95(v4, &v132[v93], v94);
        v96 = *(v128 + 20);
        v97 = *(v43 + 56);
        v97(&v4[v96], 1, 1, v92);
        swift_getKeyPath();
        swift_getKeyPath();
        v98 = v129;
        static Published.subscript.getter();

        v99 = v118;
        v100 = v116(v98, v118);
        if (v100 == v115)
        {
          (*(v113 + 96))(v98, v99);
          v101 = *(v43 + 32);
          v102 = v125;
          v101(v125, v98, v92);
          sub_1000159AC(&v4[v96], &qword_1001780C0, &qword_100120BD0);
          v101(&v4[v96], v102, v92);
          v97(&v4[v96], 0, 1, v92);
        }

        else
        {
          (v112[0])(v98, v99);
        }

        v103 = v126;
        sub_1000077C8(&unk_1001764F0, &qword_10011E650);
        v104 = v131;
        v105 = static Activity.request(attributes:contentState:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:)();
        v106 = v132;
        v108 = v105;
        (v120)(v103, 1, 1, v121);
        v109 = v106;

        v110 = static MainActor.shared.getter();
        v111 = swift_allocObject();
        v111[2] = v110;
        v111[3] = &protocol witness table for MainActor;
        v111[4] = v108;
        v111[5] = v109;
        sub_1000F9860(0, 0, v103, &unk_10011E670, v111);

        (*(v123 + 8))(v104, v124);
        sub_1000AB0AC(v4, type metadata accessor for NearbySharingInteractionAttributes);
        return v108;
      }
    }

    else
    {
      v114 = v4;
      if (qword_100172218 != -1)
      {
        swift_once();
      }

      v75 = type metadata accessor for Logger();
      sub_100007D20(v75, qword_10017F350);
      v76 = v132;
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v134[0] = v80;
        *v79 = 136315138;
        type metadata accessor for UUID();
        sub_1000A53A0(&qword_1001770E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v81 = dispatch thunk of CustomStringConvertible.description.getter();
        v83 = v82;
        v84 = sub_10003E81C(v81, v82, v134);
        v83, v85, v86, v87, v88, v89, v90, v91;
        *(v79 + 4) = v84;
        _os_log_impl(&_mh_execute_header, v77, v78, "Creating activity for nearby sharing interaction with ID: %s", v79, 0xCu);
        sub_100007920(v80);
      }

      v4 = v114;
      if (!SBUIIsSystemApertureEnabled())
      {
        goto LABEL_8;
      }
    }

    v43 = v127;
    static ActivityPresentationOptions.ActivityPresentationDestination.systemApertureOnly.getter();
    goto LABEL_20;
  }

  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  sub_100007D20(v48, qword_10017F350);
  v49 = v132;
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v134[0] = swift_slowAlloc();
    *v52 = 136315394;
    type metadata accessor for UUID();
    sub_1000A53A0(&qword_1001770E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v54;
    v56 = sub_10003E81C(v53, v54, v134);
    v55, v57, v58, v59, v60, v61, v62, v63;
    *(v52 + 4) = v56;
    *(v52 + 12) = 2080;
    v133 = sub_100054568();
    v64 = String.init<A>(describing:)();
    v66 = v65;
    v67 = sub_10003E81C(v64, v65, v134);
    v66, v68, v69, v70, v71, v72, v73, v74;
    *(v52 + 14) = v67;
    _os_log_impl(&_mh_execute_header, v50, v51, "Not creating activity for interaction with ID: %s preferred presentation style is: %s", v52, 0x16u);
    swift_arrayDestroy();
  }

  return 0;
}

void sub_1000AA5C4(void *a1)
{
  v2 = sub_1000077C8(&qword_100172EE0, &qword_10011B220);
  __chkstk_darwin(v2 - 8);
  v94 = &v93 - v3;
  v4 = type metadata accessor for URL();
  v95 = *(v4 - 8);
  v96 = v4;
  __chkstk_darwin(v4);
  v93 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A3A28();
  v14 = v6;
  v15 = *(v6 + 16);
  if (!v15)
  {
LABEL_13:

    v14, v7, v8, v9, v10, v11, v12, v13;
    return;
  }

  v16 = 0;
  v17 = (v6 + 40);
  while (1)
  {
    if (v16 >= *v14->connection)
    {
      __break(1u);
      return;
    }

    v19 = *(v17 - 1);
    v18 = *v17;

    v20 = [a1 sender];
    if (!v20)
    {
      v18, v21, v22, v23, v24, v25, v26, v27;
      goto LABEL_4;
    }

    v28 = v20;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    if (v19 == v29 && v18 == v31)
    {
      break;
    }

    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v18, v41, v42, v43, v44, v45, v46, v47;
    v31, v48, v49, v50, v51, v52, v53, v54;
    if (v40)
    {
      v55 = v14;
      goto LABEL_17;
    }

LABEL_4:
    ++v16;
    v17 += 3;
    if (v15 == v16)
    {
      goto LABEL_13;
    }
  }

  v14, v32, v33, v34, v35, v36, v37, v38;
  v18, v56, v57, v58, v59, v60, v61, v62;
  v55 = v31;
LABEL_17:
  v55, v7, v8, v9, v10, v11, v12, v13;
  v63 = [a1 body];
  if (v63)
  {
    v64 = v63;
    v65 = [v63 string];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v66;

    v68 = v94;
    URL.init(string:)();
    v67, v69, v70, v71, v72, v73, v74, v75;
    v77 = v95;
    v76 = v96;
    if ((*(v95 + 48))(v68, 1, v96) == 1)
    {
      sub_1000159AC(v68, &qword_100172EE0, &qword_10011B220);
    }

    else
    {
      v78 = v93;
      (*(v77 + 32))(v93, v68, v76);
      v79 = [objc_opt_self() sharedApplication];
      v80 = v77;
      URL._bridgeToObjectiveC()(v81);
      v83 = v82;
      v84 = sub_1000A8A1C(&_swiftEmptyArrayStorage);
      type metadata accessor for OpenExternalURLOptionsKey(0);
      sub_1000A53A0(&qword_100172860, type metadata accessor for OpenExternalURLOptionsKey, &unk_1001184E0);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v84, v86, v87, v88, v89, v90, v91, v92;
      [v79 openURL:v83 options:isa completionHandler:0];

      (*(v80 + 8))(v78, v76);
    }
  }
}

uint64_t sub_1000AA9AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000167E4;

  return sub_1000A3950(a1, v4, v5, v6);
}

uint64_t sub_1000AAA84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000AAA9C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000AAADC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000BCF0;

  return sub_1000A3380(a1, v4, v5, v6);
}

uint64_t sub_1000AAB90()
{
  v1 = sub_1000077C8(&qword_100176468, &qword_10011E588);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for SFProximityHandoff.Interaction();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_1000AACF8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000077C8(&qword_100176468, &qword_10011E588) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for SFProximityHandoff.Interaction() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1000167E4;

  return sub_1000A05A4(a1, v1 + v6, v1 + v9, v10);
}

void sub_1000AAE7C()
{
  sub_1000077C8(&qword_100176460, &qword_10011E580);

  sub_1000A1E2C();
}

uint64_t sub_1000AAEF8()
{
  v1 = sub_1000077C8(&qword_100176460, &qword_10011E580);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000AAF8C(uint64_t a1)
{
  v3 = *(sub_1000077C8(&qword_100176460, &qword_10011E580) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000A1F24(a1, v4);
}

uint64_t sub_1000AB008(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_1000AB044(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000AB0AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000AB10C()
{
  v1 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1000AB1D8(uint64_t a1)
{
  v3 = *(type metadata accessor for SFAirDrop.NearbySharingInteraction() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_10009EE24(a1, v4, v5, v6);
}

uint64_t sub_1000AB24C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AB2A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AB2E0()
{
  v1 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000AB3AC(uint64_t a1)
{
  v4 = *(type metadata accessor for SFAirDrop.NearbySharingInteraction() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000BCF0;

  return sub_10009F11C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1000AB4AC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AB4E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000167E4;

  return sub_1000791B0();
}

uint64_t sub_1000AB594(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000167E4;

  return sub_1000A2920(a1, v4, v5, v6);
}

uint64_t sub_1000AB648()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000AB690(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000167E4;

  return sub_1000A2A1C(a1, v4, v5, v7, v6);
}

uint64_t sub_1000AB750(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000167E4;

  return sub_100096C6C(a1, v4, v5, v6);
}

uint64_t sub_1000AB804()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AB844(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000167E4;

  return sub_100096C6C(a1, v4, v5, v6);
}

uint64_t sub_1000AB8F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000167E4;

  return sub_100096C6C(a1, v4, v5, v6);
}

uint64_t sub_1000AB9AC(__n128 a1)
{
  v2 = type metadata accessor for SFAirDrop.NearbySharingAssertionRequest();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(v3 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_1000ABA80(uint64_t a1, __n128 a2)
{
  v5 = *(type metadata accessor for SFAirDrop.NearbySharingAssertionRequest() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = v2[5];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1000167E4;

  return sub_10009A720(a1, v7, v8, v9, v10, v2 + v6);
}

uint64_t sub_1000ABB84()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000ABBCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000167E4;

  return sub_1000989CC(a1, v4, v5, v7, v6);
}

uint64_t sub_1000ABC8C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000ABCDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000167E4;

  return sub_100097C64(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000ABDAC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000ABDEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000167E4;

  return sub_100096C6C(a1, v4, v5, v6);
}

uint64_t getEnumTagSinglePayload for NearbySharingInteractionPresentationStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NearbySharingInteractionPresentationStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000AC02C()
{
  result = qword_1001765B8;
  if (!qword_1001765B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001765B8);
  }

  return result;
}

unint64_t sub_1000AC084()
{
  result = qword_1001765C0;
  if (!qword_1001765C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001765C0);
  }

  return result;
}

unint64_t sub_1000AC0DC()
{
  result = qword_1001765C8;
  if (!qword_1001765C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001765C8);
  }

  return result;
}

unint64_t sub_1000AC134()
{
  result = qword_1001765D0;
  if (!qword_1001765D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001765D0);
  }

  return result;
}

unint64_t sub_1000AC18C()
{
  result = qword_1001765D8;
  if (!qword_1001765D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001765D8);
  }

  return result;
}

unint64_t sub_1000AC1E4()
{
  result = qword_1001765E0;
  if (!qword_1001765E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001765E0);
  }

  return result;
}

uint64_t sub_1000AC2A0()
{
  v0 = type metadata accessor for Logger();
  sub_1000154C0(v0, qword_10017F308);
  sub_100007D20(v0, qword_10017F308);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000AC31C()
{
  v0 = type metadata accessor for Logger();
  sub_1000154C0(v0, qword_10017F320);
  sub_100007D20(v0, qword_10017F320);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000AC3E4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  sub_1000154C0(v5, a2);
  sub_100007D20(v5, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000AC470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000077C8(&qword_100176628, qword_10011EAB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000AC550(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000077C8(&qword_100176628, qword_10011EAB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for AirDropAskRequestView(uint64_t a1)
{
  result = qword_100176688;
  if (!qword_100176688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000AC664(uint64_t a1)
{
  sub_1000AC708(319);
  if (v1 <= 0x3F)
  {
    sub_1000AC760(319);
    if (v2 <= 0x3F)
    {
      sub_10004DD64();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000AC708(uint64_t a1)
{
  if (!qword_100176698)
  {
    type metadata accessor for DynamicTypeSize();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_100176698);
    }
  }
}

void sub_1000AC760(uint64_t a1)
{
  if (!qword_1001766A0)
  {
    type metadata accessor for AirDropTransferSession(255);
    sub_1000C9AAC(&qword_100173460, type metadata accessor for AirDropTransferSession, &unk_10011D344);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_1001766A0);
    }
  }
}

void sub_1000AC810(uint64_t a1)
{
  v39 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v3 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (v5)
  {
    v31 = v1;
    v43 = &_swiftEmptyArrayStorage;
    sub_10000E474(0, v5, 0);
    v42 = v43;
    v6 = a1 + 56;
    v7 = _HashTable.startBucket.getter();
    v8 = 0;
    v36 = v3 + 8;
    v37 = v3 + 16;
    v32 = a1 + 64;
    v33 = v5;
    v34 = v3;
    v35 = a1 + 56;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_21;
      }

      v40 = *(a1 + 36);
      v11 = v38;
      v12 = v39;
      (*(v3 + 16))(v38, *(a1 + 48) + *(v3 + 72) * v7, v39);
      v41 = SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();
      v14 = v13;
      (*(v3 + 8))(v11, v12);
      v20 = v42;
      v43 = v42;
      v22 = *v42->connection;
      v21 = *v42->airdropClient;
      if (v22 >= v21 >> 1)
      {
        sub_10000E474((v21 > 1), v22 + 1, 1);
        v20 = v43;
      }

      *v20->connection = v22 + 1;
      v23 = v20 + 16 * v22;
      *(v23 + 4) = v41;
      *(v23 + 5) = v14;
      v9 = 1 << *(a1 + 32);
      if (v7 >= v9)
      {
        goto LABEL_22;
      }

      v6 = v35;
      v24 = *(v35 + 8 * v10);
      if ((v24 & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      v42 = v20;
      if (v40 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v25 = v24 & (-2 << (v7 & 0x3F));
      if (v25)
      {
        v9 = __clz(__rbit64(v25)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v3 = v34;
      }

      else
      {
        v26 = v10 << 6;
        v27 = v10 + 1;
        v28 = (v32 + 8 * v10);
        v3 = v34;
        while (v27 < (v9 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            sub_100047AC0(v7, v40, 0, v15, v16, v17, v18, v19);
            v9 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        sub_100047AC0(v7, v40, 0, v15, v16, v17, v18, v19);
      }

LABEL_4:
      ++v8;
      v7 = v9;
      if (v8 == v33)
      {
        return;
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
  }
}

void *sub_1000ACB18(uint64_t a1, uint64_t a2)
{
  v8 = type metadata accessor for _ConditionalContent.Storage();
  v9 = __chkstk_darwin(v8);
  (*(*(a2 - 8) + 16))(&v12 - v10, a1, a2, v9);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

void *sub_1000ACC10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for _ConditionalContent.Storage();
  v9 = __chkstk_darwin(v8);
  (*(*(a3 - 8) + 16))(&v12 - v10, a1, a3, v9);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1000ACD08()
{
  v0 = type metadata accessor for Logger();
  sub_1000154C0(v0, qword_100176610);
  v1 = sub_100007D20(v0, qword_100176610);
  if (qword_100172210 != -1)
  {
    swift_once();
  }

  v2 = sub_100007D20(v0, qword_10017F338);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000ACDD0()
{
  v0 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for AirDropAskRequestView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for SFAirDropReceive.Transfer.State.waitingForAskResponse(_:))
  {
    (*(v1 + 96))(v3, v0);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v5 = v19[15];
    v6 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
    (*(*(v6 - 8) + 8))(v3, v6);
  }

  else if (v4 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitiveContentResponse(_:))
  {
    (*(v1 + 96))(v3, v0);
    v7 = sub_1000077C8(&qword_100173CE0, &qword_100118F90);
    *&v3[*(v7 + 48)], v8, v9, v10, v11, v12, v13, v14;
    v15 = *(v7 + 64);
    v16 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
    (*(*(v16 - 8) + 8))(&v3[v15], v16);
    v17 = type metadata accessor for SFAirDropReceive.ItemDestination();
    (*(*(v17 - 8) + 8))(v3, v17);
    return 1;
  }

  else
  {
    (*(v1 + 8))(v3, v0);
    return 0;
  }

  return v5;
}

uint64_t sub_1000AD0A4@<X0>(uint64_t a1@<X8>)
{
  v177 = a1;
  v128 = sub_1000077C8(&qword_1001766E0, &qword_10011EB38);
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v125 = &v122 - v2;
  v142 = sub_1000077C8(&qword_1001766E8, &qword_10011EB40);
  __chkstk_darwin(v142);
  v126 = &v122 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v129 = &v122 - v5;
  v138 = sub_1000077C8(&qword_1001766F0, &qword_10011EB48);
  __chkstk_darwin(v138);
  v140 = &v122 - v6;
  v170 = sub_1000077C8(&qword_1001766F8, &qword_10011EB50);
  __chkstk_darwin(v170);
  v141 = &v122 - v7;
  v139 = sub_1000077C8(&qword_100176700, &qword_10011EB58);
  __chkstk_darwin(v139);
  v136 = (&v122 - v8);
  v9 = sub_1000077C8(&qword_100173D50, &unk_10011D120);
  __chkstk_darwin(v9 - 8);
  v147 = &v122 - v10;
  v149 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
  v148 = *(v149 - 8);
  __chkstk_darwin(v149);
  v135 = &v122 - v11;
  v12 = sub_1000077C8(&qword_100176708, &qword_10011EB60);
  __chkstk_darwin(v12 - 8);
  v158 = &v122 - v13;
  v162 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v156 = *(v162 - 8);
  __chkstk_darwin(v162);
  v134 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v133 = &v122 - v16;
  __chkstk_darwin(v17);
  v146 = &v122 - v18;
  __chkstk_darwin(v19);
  v155 = &v122 - v20;
  v165 = sub_1000077C8(&qword_100176710, &qword_10011EB68);
  __chkstk_darwin(v165);
  v166 = &v122 - v21;
  v168 = sub_1000077C8(&qword_100176718, &qword_10011EB70);
  __chkstk_darwin(v168);
  v167 = &v122 - v22;
  v176 = sub_1000077C8(&qword_100176720, &qword_10011EB78);
  __chkstk_darwin(v176);
  v169 = &v122 - v23;
  v178 = sub_1000077C8(&qword_100176728, &qword_10011EB80);
  __chkstk_darwin(v178);
  v137 = (&v122 - v24);
  v153 = sub_1000077C8(&qword_100176730, &unk_10011EB88);
  __chkstk_darwin(v153);
  v132 = (&v122 - v25);
  v145 = sub_1000077C8(&qword_100175008, &qword_10011C610);
  v131 = *(v145 - 8);
  __chkstk_darwin(v145);
  v144 = &v122 - v26;
  v159 = sub_1000077C8(&qword_100176738, &qword_10011EB98);
  __chkstk_darwin(v159);
  v161 = &v122 - v27;
  v150 = sub_1000077C8(&qword_100176740, &qword_10011EBA0);
  __chkstk_darwin(v150);
  v151 = &v122 - v28;
  v160 = sub_1000077C8(&qword_100176748, &qword_10011EBA8);
  __chkstk_darwin(v160);
  v152 = &v122 - v29;
  v172 = sub_1000077C8(&qword_100176750, &unk_10011EBB0);
  __chkstk_darwin(v172);
  v157 = (&v122 - v30);
  v31 = sub_1000077C8(&unk_100174F80, &unk_10011AE60);
  v171 = *(v31 - 8);
  __chkstk_darwin(v31);
  v143 = &v122 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v154 = &v122 - v34;
  v164 = sub_1000077C8(&qword_100176758, &unk_10011EBC0);
  __chkstk_darwin(v164);
  v163 = &v122 - v35;
  v36 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  __chkstk_darwin(v36 - 8);
  v38 = &v122 - v37;
  v39 = type metadata accessor for SFAirDropSend.Transfer.State();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v122 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v45 = &v122 - v44;
  v46 = sub_1000077C8(&qword_100176760, &qword_10011EBD0);
  v174 = *(v46 - 8);
  v175 = v46;
  __chkstk_darwin(v46);
  v173 = &v122 - v47;
  v124 = type metadata accessor for AirDropAskRequestView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
  v48 = v39;
  v49 = v40;

  if ((*(v40 + 48))(v38, 1, v48) == 1)
  {
    v50 = v1;
    sub_1000159AC(v38, &qword_100172FD0, &qword_10011A210);
    swift_getKeyPath();
    swift_getKeyPath();
    v51 = v155;
    static Published.subscript.getter();

    v52 = v158;
    SFAirDropReceive.Transfer.State.contactResponsePermissionRequest.getter();
    v53 = v156;
    v54 = *(v156 + 8);
    v55 = v162;
    v54(v51, v162);
    v56 = v171;
    if ((*(v171 + 48))(v52, 1, v31) == 1)
    {
      sub_1000159AC(v52, &qword_100176708, &qword_10011EB60);
      swift_getKeyPath();
      swift_getKeyPath();
      v57 = v146;
      static Published.subscript.getter();

      v58 = v147;
      SFAirDropReceive.Transfer.State.permissionRequest.getter();
      v54(v57, v55);
      v59 = v148;
      v60 = v149;
      if ((*(v148 + 48))(v58, 1, v149) == 1)
      {
        sub_1000159AC(v58, &qword_100173D50, &unk_10011D120);
        swift_getKeyPath();
        swift_getKeyPath();
        v61 = v133;
        static Published.subscript.getter();

        v62 = v134;
        (*(v53 + 104))(v134, enum case for SFAirDropReceive.Transfer.State.created(_:), v55);
        v63 = static SFAirDropReceive.Transfer.State.== infix(_:_:)();
        v54(v62, v55);
        v54(v61, v55);
        if (v63)
        {
          v64 = v125;
          ProgressView<>.init<>()();
          static Alignment.center.getter();
          _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
          v65 = v126;
          (*(v127 + 32))(v126, v64, v128);
          v66 = (v65 + *(v142 + 36));
          v67 = v184;
          v66[4] = v183;
          v66[5] = v67;
          v66[6] = v185;
          v68 = v180;
          *v66 = v179;
          v66[1] = v68;
          v69 = v182;
          v66[2] = v181;
          v66[3] = v69;
          v70 = v129;
          sub_100021A84(v65, v129, &qword_1001766E8, &qword_10011EB40);
          sub_100007BA4(v70, v140, &qword_1001766E8, &qword_10011EB40);
          swift_storeEnumTagMultiPayload();
          sub_1000C7F9C(&qword_100176820, &qword_100176700, &qword_10011EB58, sub_1000C7F6C);
          sub_1000C80D8();
          v71 = v141;
          _ConditionalContent<>.init(storage:)();
          sub_1000C7A04();
          sub_1000C7EB4();
          v72 = v169;
          sub_1000ACC10(v71, v168, v170);
          sub_1000159AC(v71, &qword_1001766F8, &qword_10011EB50);
          sub_1000C7978();
          sub_1000C7DFC();
          v73 = v173;
          sub_1000ACB18(v72, v176);
          sub_1000159AC(v72, &qword_100176720, &qword_10011EB78);
          sub_1000159AC(v70, &qword_1001766E8, &qword_10011EB40);
        }

        else
        {
          v112 = static VerticalAlignment.center.getter();
          v113 = v137;
          *v137 = v112;
          *(v113 + 8) = 0;
          *(v113 + 16) = 1;
          v114 = sub_1000077C8(&qword_100176768, &qword_10011EC68);
          sub_1000C4B40(v50, v113 + *(v114 + 44));
          v115 = static Edge.Set.all.getter();
          EdgeInsets.init(_all:)();
          v116 = v178;
          v117 = v113 + *(v178 + 36);
          *v117 = v115;
          *(v117 + 8) = v118;
          *(v117 + 16) = v119;
          *(v117 + 24) = v120;
          *(v117 + 32) = v121;
          *(v117 + 40) = 0;
          sub_1000C7978();
          sub_1000C7DFC();
          v73 = v173;
          sub_1000ACC10(v113, v176, v116);
          sub_1000159AC(v113, &qword_100176728, &qword_10011EB80);
        }
      }

      else
      {
        v95 = v135;
        (*(v59 + 32))(v135, v58, v60);
        v96 = v136;
        sub_1000B3AD8(v136);
        sub_100007BA4(v96, v140, &qword_100176700, &qword_10011EB58);
        swift_storeEnumTagMultiPayload();
        sub_1000C7F9C(&qword_100176820, &qword_100176700, &qword_10011EB58, sub_1000C7F6C);
        sub_1000C80D8();
        v97 = v141;
        _ConditionalContent<>.init(storage:)();
        sub_1000C7A04();
        sub_1000C7EB4();
        v98 = v169;
        sub_1000ACC10(v97, v168, v170);
        sub_1000159AC(v97, &qword_1001766F8, &qword_10011EB50);
        sub_1000C7978();
        sub_1000C7DFC();
        v73 = v173;
        sub_1000ACB18(v98, v176);
        sub_1000159AC(v98, &qword_100176720, &qword_10011EB78);
        sub_1000159AC(v96, &qword_100176700, &qword_10011EB58);
        (*(v59 + 8))(v95, v60);
      }
    }

    else
    {
      v85 = v143;
      (*(v56 + 32))(v143, v52, v31);
      v86 = v157;
      sub_1000AECC0(v157);
      sub_100007BA4(v86, v166, &qword_100176750, &unk_10011EBB0);
      swift_storeEnumTagMultiPayload();
      sub_1000C7ABC();
      sub_1000C7F9C(&qword_100176790, &qword_100176750, &unk_10011EBB0, sub_1000C7C2C);
      v87 = v167;
      _ConditionalContent<>.init(storage:)();
      sub_1000C7A04();
      sub_1000C7EB4();
      v88 = v169;
      sub_1000ACB18(v87, v168);
      sub_1000159AC(v87, &qword_100176718, &qword_10011EB70);
      sub_1000C7978();
      sub_1000C7DFC();
      v73 = v173;
      sub_1000ACB18(v88, v176);
      sub_1000159AC(v88, &qword_100176720, &qword_10011EB78);
      sub_1000159AC(v86, &qword_100176750, &unk_10011EBB0);
      (*(v56 + 8))(v85, v31);
    }
  }

  else
  {
    v74 = v171;
    (*(v40 + 32))(v45, v38, v48);
    (*(v40 + 16))(v42, v45, v48);
    v75 = (*(v40 + 88))(v42, v48);
    v76 = v42;
    v123 = v45;
    v130 = v48;
    if (v75 == enum case for SFAirDropSend.Transfer.State.waitingForShareContactPermissionResponse(_:))
    {
      (*(v40 + 96))(v42, v48);
      v77 = sub_1000077C8(&qword_100175010, &qword_10011C618);
      v78 = *(v74 + 32);
      v79 = &v42[*(v77 + 48)];
      v122 = v31;
      v78(v154, v79, v31);
      v80 = v157;
      sub_1000AECC0(v157);
      sub_100007BA4(v80, v151, &qword_100176750, &unk_10011EBB0);
      swift_storeEnumTagMultiPayload();
      sub_1000C7F9C(&qword_100176790, &qword_100176750, &unk_10011EBB0, sub_1000C7C2C);
      sub_1000C7F9C(&qword_1001767C8, &qword_100176730, &unk_10011EB88, sub_1000C7D14);
      v81 = v152;
      _ConditionalContent<>.init(storage:)();
      sub_100007BA4(v81, v161, &qword_100176748, &qword_10011EBA8);
      swift_storeEnumTagMultiPayload();
      sub_1000C7B48();
      sub_1000C7DFC();
      v82 = v163;
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v81, &qword_100176748, &qword_10011EBA8);
      sub_1000159AC(v80, &qword_100176750, &unk_10011EBB0);
      v83 = v82;
      (*(v74 + 8))(v154, v122);
      v84 = type metadata accessor for SFAirDrop.ContactInfo();
      (*(*(v84 - 8) + 8))(v42, v84);
    }

    else
    {
      v89 = v178;
      if (v75 == enum case for SFAirDropSend.Transfer.State.waitingForImportContactResponse(_:))
      {
        (*(v40 + 96))(v42, v48);
        v90 = sub_1000077C8(&qword_100175000, &unk_10011ECC0);
        v91 = v131;
        (*(v131 + 32))(v144, &v42[*(v90 + 48)], v145);
        v92 = v132;
        sub_1000B13CC(v132);
        sub_100007BA4(v92, v151, &qword_100176730, &unk_10011EB88);
        swift_storeEnumTagMultiPayload();
        sub_1000C7F9C(&qword_100176790, &qword_100176750, &unk_10011EBB0, sub_1000C7C2C);
        sub_1000C7F9C(&qword_1001767C8, &qword_100176730, &unk_10011EB88, sub_1000C7D14);
        v93 = v152;
        _ConditionalContent<>.init(storage:)();
        sub_100007BA4(v93, v161, &qword_100176748, &qword_10011EBA8);
        swift_storeEnumTagMultiPayload();
        sub_1000C7B48();
        sub_1000C7DFC();
        v83 = v163;
        _ConditionalContent<>.init(storage:)();
        sub_1000159AC(v93, &qword_100176748, &qword_10011EBA8);
        sub_1000159AC(v92, &qword_100176730, &unk_10011EB88);
        (*(v91 + 8))(v144, v145);
        v94 = type metadata accessor for SFAirDrop.ContactInfo();
        (*(*(v94 - 8) + 8))(v76, v94);
      }

      else
      {
        v99 = static VerticalAlignment.center.getter();
        v100 = v137;
        *v137 = v99;
        *(v100 + 8) = 0;
        *(v100 + 16) = 1;
        v101 = sub_1000077C8(&qword_100176768, &qword_10011EC68);
        sub_1000C4B40(v1, v100 + *(v101 + 44));
        v102 = static Edge.Set.all.getter();
        EdgeInsets.init(_all:)();
        v103 = v100 + *(v89 + 36);
        *v103 = v102;
        *(v103 + 8) = v104;
        *(v103 + 16) = v105;
        *(v103 + 24) = v106;
        *(v103 + 32) = v107;
        *(v103 + 40) = 0;
        sub_100007BA4(v100, v161, &qword_100176728, &qword_10011EB80);
        swift_storeEnumTagMultiPayload();
        sub_1000C7B48();
        sub_1000C7DFC();
        v83 = v163;
        _ConditionalContent<>.init(storage:)();
        sub_1000159AC(v100, &qword_100176728, &qword_10011EB80);
        (*(v49 + 8))(v42, v130);
      }
    }

    v73 = v173;
    sub_100007BA4(v83, v166, &qword_100176758, &unk_10011EBC0);
    swift_storeEnumTagMultiPayload();
    sub_1000C7ABC();
    sub_1000C7F9C(&qword_100176790, &qword_100176750, &unk_10011EBB0, sub_1000C7C2C);
    v108 = v83;
    v109 = v167;
    _ConditionalContent<>.init(storage:)();
    sub_1000C7A04();
    sub_1000C7EB4();
    v110 = v169;
    sub_1000ACB18(v109, v168);
    sub_1000159AC(v109, &qword_100176718, &qword_10011EB70);
    sub_1000C7978();
    sub_1000C7DFC();
    sub_1000ACB18(v110, v176);
    sub_1000159AC(v110, &qword_100176720, &qword_10011EB78);
    sub_1000159AC(v108, &qword_100176758, &unk_10011EBC0);
    (*(v49 + 8))(v123, v130);
  }

  sub_1000C8190();
  (*(v174 + 16))(v177, v73, v175);
  return sub_1000159AC(v73, &qword_100176760, &qword_10011EBD0);
}

uint64_t sub_1000AECC0@<X0>(void *a1@<X8>)
{
  v305 = a1;
  v303 = sub_1000077C8(&qword_100176B38, &qword_10011F098);
  __chkstk_darwin(v303);
  v304 = &v235 - v1;
  v289 = sub_1000077C8(&qword_100176B40, &qword_10011F0A0);
  __chkstk_darwin(v289);
  v290 = &v235 - v2;
  v302 = sub_1000077C8(&qword_1001767A0, &qword_10011EC70);
  __chkstk_darwin(v302);
  v291 = &v235 - v3;
  v279 = sub_1000077C8(&qword_100176B48, &qword_10011F0A8);
  __chkstk_darwin(v279);
  v262 = (&v235 - v4);
  v298 = sub_1000077C8(&qword_100176888, &qword_10011ECE8);
  __chkstk_darwin(v298);
  v286 = (&v235 - v5);
  v6 = sub_1000077C8(&qword_100176B50, &qword_10011F0B0);
  __chkstk_darwin(v6 - 8);
  v272 = (&v235 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v253 = (&v235 - v9);
  __chkstk_darwin(v10);
  v267 = (&v235 - v11);
  v285 = sub_1000077C8(&qword_100176B58, &qword_10011F0B8);
  __chkstk_darwin(v285);
  v287 = &v235 - v12;
  v283 = sub_1000077C8(&qword_100176B60, &qword_10011F0C0);
  __chkstk_darwin(v283);
  v284 = &v235 - v13;
  v271 = sub_1000077C8(&qword_100176B68, &qword_10011F0C8);
  __chkstk_darwin(v271);
  v278 = &v235 - v14;
  v277 = sub_1000077C8(&qword_100176B70, &qword_10011F0D0);
  __chkstk_darwin(v277);
  v249 = &v235 - v15;
  v300 = sub_1000077C8(&qword_100176B78, &qword_10011F0D8);
  v307 = *(v300 - 8);
  __chkstk_darwin(v300);
  v275 = &v235 - v16;
  v297 = type metadata accessor for DeviceLockState();
  v306 = *(v297 - 8);
  __chkstk_darwin(v297);
  v295 = &v235 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v296 = &v235 - v19;
  v20 = sub_1000077C8(&qword_100176B80, &qword_10011F0E0);
  __chkstk_darwin(v20 - 8);
  v261 = &v235 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v260 = &v235 - v23;
  __chkstk_darwin(v24);
  v26 = &v235 - v25;
  __chkstk_darwin(v27);
  v301 = &v235 - v28;
  __chkstk_darwin(v29);
  v251 = &v235 - v30;
  v292 = sub_1000077C8(&qword_1001768C8, &qword_10011ED28);
  __chkstk_darwin(v292);
  v294 = &v235 - v31;
  v293 = sub_1000077C8(&qword_1001768D0, &qword_10011ED30);
  __chkstk_darwin(v293);
  v33 = &v235 - v32;
  v34 = sub_1000077C8(&qword_1001768D8, &qword_10011ED38);
  __chkstk_darwin(v34 - 8);
  v255 = &v235 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v268 = &v235 - v37;
  __chkstk_darwin(v38);
  v266 = &v235 - v39;
  __chkstk_darwin(v40);
  v299 = &v235 - v41;
  __chkstk_darwin(v42);
  v265 = &v235 - v43;
  v308 = sub_1000077C8(&qword_100176B88, &qword_10011F0E8);
  __chkstk_darwin(v308);
  v259 = &v235 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v258 = &v235 - v46;
  __chkstk_darwin(v47);
  v257 = &v235 - v48;
  __chkstk_darwin(v49);
  v254 = &v235 - v50;
  __chkstk_darwin(v51);
  v256 = &v235 - v52;
  __chkstk_darwin(v53);
  v252 = &v235 - v54;
  __chkstk_darwin(v55);
  v270 = &v235 - v56;
  __chkstk_darwin(v57);
  v250 = &v235 - v58;
  __chkstk_darwin(v59);
  v269 = &v235 - v60;
  __chkstk_darwin(v61);
  v264 = (&v235 - v62);
  v63 = sub_1000077C8(&qword_100176B90, &qword_10011F0F0);
  __chkstk_darwin(v63 - 8);
  v280 = &v235 - v64;
  v65 = sub_1000077C8(&qword_1001767C0, &qword_10011EC80);
  __chkstk_darwin(v65 - 8);
  v67 = &v235 - v66;
  v288 = sub_1000077C8(&qword_1001767B0, &qword_10011EC78);
  __chkstk_darwin(v288);
  v281 = &v235 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v69);
  v282 = &v235 - v70;
  v71 = type metadata accessor for SFAirDrop.DeclineAction();
  v72 = *(v71 - 8);
  __chkstk_darwin(v71);
  v74 = &v235 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1000077C8(&qword_100176B98, &qword_10011F0F8);
  v76 = *(v75 - 8);
  __chkstk_darwin(v75);
  v78 = (&v235 - v77);
  sub_1000077C8(&unk_100174F80, &unk_10011AE60);
  SFAirDrop.PermissionRequest.style.getter();
  v79 = (*(v76 + 88))(v78, v75);
  if (v79 == enum case for SFAirDrop.PermissionRequest.Style.inline<A>(_:))
  {
    v245 = v26;
    (*(v76 + 96))(v78, v75);
    v81 = *v78;
    v80 = v78[1];
    v83 = v78[2];
    v82 = v78[3];
    v273 = v78[4];
    v84 = sub_1000077C8(&qword_100176BB0, &qword_10011F110);
    (*(v72 + 32))(v74, v78 + *(v84 + 80), v71);
    *v67 = static HorizontalAlignment.center.getter();
    *(v67 + 1) = 0;
    v67[16] = 0;
    v85 = type metadata accessor for AirDropAskRequestView(0);
    _ZF = v309[*(v85 + 24)] == 1;
    v248 = v71;
    v247 = v72;
    v263 = v74;
    v246 = v67;
    v276 = v80;
    v274 = v82;
    if (_ZF)
    {
      v87 = static HorizontalAlignment.leading.getter();
      v88 = v264;
      *v264 = v87;
      v88[1] = 0x402E000000000000;
      *(v88 + 16) = 0;
      *v33 = static VerticalAlignment.top.getter();
      *(v33 + 1) = 0x4034000000000000;
      v33[16] = 0;
      v89 = sub_1000077C8(&qword_100176998, &qword_10011EDF8);
      sub_1000B7298(v309, v81, v80, v83, v82, &v33[*(v89 + 44)]);
      sub_100007BA4(v33, v294, &qword_1001768D0, &qword_10011ED30);
      swift_storeEnumTagMultiPayload();
      sub_1000C821C();
      sub_1000199C8(&qword_100176938, &qword_100176888, &qword_10011ECE8, &protocol conformance descriptor for HStack<A>);
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v33, &qword_1001768D0, &qword_10011ED30);
      swift_getKeyPath();
      swift_getKeyPath();
      v90 = v296;
      static Published.subscript.getter();

      v91 = v306;
      v92 = v295;
      v93 = v297;
      (*(v306 + 104))(v295, enum case for DeviceLockState.unlocked(_:), v297);
      v94 = static DeviceLockState.== infix(_:_:)();
      v95 = *(v91 + 8);
      v95(v92, v93);
      v95(v90, v93);
      if (v94)
      {
        v96 = static Axis.Set.horizontal.getter();
        v97 = v249;
        *v249 = v96;
        v98 = sub_1000077C8(&qword_100176C10, &qword_10011F148);
        sub_1000B66BC(v309, v273, v74, v97 + *(v98 + 44));
        sub_100007BA4(v97, v278, &qword_100176B70, &qword_10011F0D0);
        swift_storeEnumTagMultiPayload();
        sub_1000199C8(&qword_100176C00, &qword_100176B70, &qword_10011F0D0, &protocol conformance descriptor for ViewThatFits<A>);
        sub_1000199C8(&qword_100176C08, &qword_100176B48, &qword_10011F0A8, &protocol conformance descriptor for HStack<A>);
        v99 = v275;
        _ConditionalContent<>.init(storage:)();
        sub_1000159AC(v97, &qword_100176B70, &qword_10011F0D0);
        v100 = v251;
        sub_100021A84(v99, v251, &qword_100176B78, &qword_10011F0D8);
        v101 = 0;
        v102 = v301;
        v103 = v307;
      }

      else
      {
        v101 = 1;
        v102 = v301;
        v103 = v307;
        v100 = v251;
      }

      (*(v103 + 56))(v100, v101, 1, v300);
      v197 = sub_1000077C8(&qword_100176BB8, &qword_10011F118);
      v198 = v264;
      v199 = v264 + *(v197 + 44);
      v200 = v265;
      v201 = v299;
      sub_100007BA4(v265, v299, &qword_1001768D8, &qword_10011ED38);
      sub_100007BA4(v100, v102, &qword_100176B80, &qword_10011F0E0);
      sub_100007BA4(v201, v199, &qword_1001768D8, &qword_10011ED38);
      v202 = sub_1000077C8(&qword_100176BC0, &qword_10011F120);
      sub_100007BA4(v102, v199 + *(v202 + 48), &qword_100176B80, &qword_10011F0E0);
      sub_1000159AC(v100, &qword_100176B80, &qword_10011F0E0);
      sub_1000159AC(v200, &qword_1001768D8, &qword_10011ED38);
      sub_1000159AC(v102, &qword_100176B80, &qword_10011F0E0);
      sub_1000159AC(v201, &qword_1001768D8, &qword_10011ED38);
      v203 = static Edge.Set.all.getter();
      v204 = v198 + *(v308 + 36);
      *v204 = v203;
      *(v204 + 8) = xmmword_10011EA80;
      *(v204 + 24) = xmmword_10011EA90;
      v204[40] = 0;
      sub_100007BA4(v198, v284, &qword_100176B88, &qword_10011F0E8);
      swift_storeEnumTagMultiPayload();
      sub_1000C8FC8();
      sub_1000199C8(&qword_100176BE8, &qword_100176B58, &qword_10011F0B8, &protocol conformance descriptor for ViewThatFits<A>);
      v196 = v280;
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v198, &qword_100176B88, &qword_10011F0E8);
    }

    else
    {
      *v287 = static Axis.Set.vertical.getter();
      v109 = static HorizontalAlignment.leading.getter();
      v110 = v267;
      *v267 = v109;
      v110[1] = 0x4030000000000000;
      *(v110 + 16) = 0;
      v111 = static VerticalAlignment.top.getter();
      v112 = v286;
      *v286 = v111;
      *(v112 + 8) = 0x4034000000000000;
      *(v112 + 16) = 0;
      v251 = sub_1000077C8(&qword_100176910, &qword_10011ED70);
      v113 = v112 + *(v251 + 44);
      v114 = v309;
      v265 = v81;
      v264 = v83;
      sub_1000B6928(v309, v81, v80, v83, v82, v113);
      sub_100007BA4(v112, v294, &qword_100176888, &qword_10011ECE8);
      v115 = 1;
      swift_storeEnumTagMultiPayload();
      v116 = sub_1000C821C();
      v117 = sub_1000199C8(&qword_100176938, &qword_100176888, &qword_10011ECE8, &protocol conformance descriptor for HStack<A>);
      v249 = v116;
      v243 = v117;
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v112, &qword_100176888, &qword_10011ECE8);
      v118 = *(v114 + *(v85 + 20) + 8);
      swift_getKeyPath();
      swift_getKeyPath();
      v119 = v296;
      v244 = v118;
      static Published.subscript.getter();

      v120 = v306;
      v121 = *(v306 + 104);
      v122 = v295;
      v242 = enum case for DeviceLockState.unlocked(_:);
      v123 = v297;
      v241 = v306 + 104;
      v240 = v121;
      v121(v295);
      v124 = static DeviceLockState.== infix(_:_:)();
      v125 = *(v120 + 8);
      v125(v122, v123);
      v306 = v120 + 8;
      v239 = v125;
      v125(v119, v123);
      v126 = v245;
      if (v124)
      {
        v127 = static VerticalAlignment.center.getter();
        v128 = v262;
        *v262 = v127;
        *(v128 + 8) = 0x4024000000000000;
        *(v128 + 16) = 0;
        v129 = sub_1000077C8(&qword_100176BF8, &qword_10011F140);
        sub_1000B94F4(v263, v309, v273, v128 + *(v129 + 44));
        sub_100007BA4(v128, v278, &qword_100176B48, &qword_10011F0A8);
        swift_storeEnumTagMultiPayload();
        sub_1000199C8(&qword_100176C00, &qword_100176B70, &qword_10011F0D0, &protocol conformance descriptor for ViewThatFits<A>);
        sub_1000199C8(&qword_100176C08, &qword_100176B48, &qword_10011F0A8, &protocol conformance descriptor for HStack<A>);
        v130 = v275;
        _ConditionalContent<>.init(storage:)();
        sub_1000159AC(v128, &qword_100176B48, &qword_10011F0A8);
        sub_100021A84(v130, v126, &qword_100176B78, &qword_10011F0D8);
        v115 = 0;
      }

      v238 = *(v307 + 56);
      v307 += 56;
      v238(v126, v115, 1, v300);
      v237 = sub_1000077C8(&qword_100176BB8, &qword_10011F118);
      v131 = v267;
      v132 = v267 + *(v237 + 44);
      v133 = v266;
      v134 = v299;
      sub_100007BA4(v266, v299, &qword_1001768D8, &qword_10011ED38);
      v135 = v301;
      sub_100007BA4(v126, v301, &qword_100176B80, &qword_10011F0E0);
      sub_100007BA4(v134, v132, &qword_1001768D8, &qword_10011ED38);
      v236 = sub_1000077C8(&qword_100176BC0, &qword_10011F120);
      sub_100007BA4(v135, v132 + *(v236 + 48), &qword_100176B80, &qword_10011F0E0);
      sub_1000159AC(v126, &qword_100176B80, &qword_10011F0E0);
      sub_1000159AC(v133, &qword_1001768D8, &qword_10011ED38);
      sub_1000159AC(v135, &qword_100176B80, &qword_10011F0E0);
      sub_1000159AC(v134, &qword_1001768D8, &qword_10011ED38);
      v136 = static Edge.Set.all.getter();
      v137 = v250;
      sub_100021A84(v131, v250, &qword_100176B50, &qword_10011F0B0);
      v138 = v137 + *(v308 + 36);
      *v138 = v136;
      __asm { FMOV            V0.2D, #16.0 }

      *(v138 + 8) = _Q0;
      *(v138 + 24) = _Q0;
      *(v138 + 40) = 0;
      sub_100021A84(v137, v269, &qword_100176B88, &qword_10011F0E8);
      v143 = static HorizontalAlignment.leading.getter();
      v144 = v253;
      *v253 = v143;
      *(v144 + 8) = 0x4026000000000000;
      *(v144 + 16) = 0;
      v145 = static VerticalAlignment.top.getter();
      v146 = v286;
      *v286 = v145;
      *(v146 + 8) = 0x4034000000000000;
      *(v146 + 16) = 0;
      sub_1000B6928(v309, v265, v276, v264, v274, v146 + *(v251 + 44));
      sub_100007BA4(v146, v294, &qword_100176888, &qword_10011ECE8);
      swift_storeEnumTagMultiPayload();
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v146, &qword_100176888, &qword_10011ECE8);
      swift_getKeyPath();
      swift_getKeyPath();
      v147 = v296;
      static Published.subscript.getter();

      v148 = v295;
      v149 = v297;
      v240(v295, v242, v297);
      v150 = static DeviceLockState.== infix(_:_:)();
      v151 = v239;
      v239(v148, v149);
      v151(v147, v149);
      v152 = 1;
      if (v150)
      {
        v153 = static VerticalAlignment.center.getter();
        v154 = v262;
        *v262 = v153;
        *(v154 + 8) = 0x4024000000000000;
        *(v154 + 16) = 0;
        v155 = sub_1000077C8(&qword_100176BF8, &qword_10011F140);
        sub_1000B94F4(v263, v309, v273, v154 + *(v155 + 44));
        sub_100007BA4(v154, v278, &qword_100176B48, &qword_10011F0A8);
        swift_storeEnumTagMultiPayload();
        sub_1000199C8(&qword_100176C00, &qword_100176B70, &qword_10011F0D0, &protocol conformance descriptor for ViewThatFits<A>);
        sub_1000199C8(&qword_100176C08, &qword_100176B48, &qword_10011F0A8, &protocol conformance descriptor for HStack<A>);
        v156 = v275;
        _ConditionalContent<>.init(storage:)();
        sub_1000159AC(v154, &qword_100176B48, &qword_10011F0A8);
        sub_100021A84(v156, v260, &qword_100176B78, &qword_10011F0D8);
        v152 = 0;
      }

      v157 = v260;
      v238(v260, v152, 1, v300);
      v158 = v144 + *(v237 + 44);
      v159 = v268;
      v160 = v299;
      sub_100007BA4(v268, v299, &qword_1001768D8, &qword_10011ED38);
      v161 = v301;
      sub_100007BA4(v157, v301, &qword_100176B80, &qword_10011F0E0);
      sub_100007BA4(v160, v158, &qword_1001768D8, &qword_10011ED38);
      sub_100007BA4(v161, v158 + *(v236 + 48), &qword_100176B80, &qword_10011F0E0);
      sub_1000159AC(v157, &qword_100176B80, &qword_10011F0E0);
      sub_1000159AC(v159, &qword_1001768D8, &qword_10011ED38);
      sub_1000159AC(v161, &qword_100176B80, &qword_10011F0E0);
      sub_1000159AC(v160, &qword_1001768D8, &qword_10011ED38);
      LOBYTE(v158) = static Edge.Set.all.getter();
      v162 = v252;
      sub_100021A84(v144, v252, &qword_100176B50, &qword_10011F0B0);
      v163 = v162 + *(v308 + 36);
      *v163 = v158;
      *(v163 + 8) = xmmword_10011EA60;
      *(v163 + 24) = xmmword_10011EA60;
      *(v163 + 40) = 0;
      sub_100021A84(v162, v270, &qword_100176B88, &qword_10011F0E8);
      v164 = static HorizontalAlignment.leading.getter();
      v165 = v272;
      *v272 = v164;
      v165[1] = 0x4020000000000000;
      *(v165 + 16) = 0;
      v166 = static VerticalAlignment.top.getter();
      v167 = v286;
      *v286 = v166;
      *(v167 + 8) = 0x4034000000000000;
      *(v167 + 16) = 0;
      sub_1000B6928(v309, v265, v276, v264, v274, v167 + *(v251 + 44));
      sub_100007BA4(v167, v294, &qword_100176888, &qword_10011ECE8);
      swift_storeEnumTagMultiPayload();
      v168 = v255;
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v167, &qword_100176888, &qword_10011ECE8);
      swift_getKeyPath();
      swift_getKeyPath();
      v169 = v296;
      static Published.subscript.getter();

      v170 = v295;
      v171 = v297;
      v240(v295, v242, v297);
      LOBYTE(v167) = static DeviceLockState.== infix(_:_:)();
      v172 = v239;
      v239(v170, v171);
      v172(v169, v171);
      v173 = 1;
      if (v167)
      {
        v174 = static VerticalAlignment.center.getter();
        v175 = v262;
        *v262 = v174;
        *(v175 + 8) = 0x4024000000000000;
        *(v175 + 16) = 0;
        v176 = sub_1000077C8(&qword_100176BF8, &qword_10011F140);
        sub_1000B94F4(v263, v309, v273, v175 + *(v176 + 44));
        sub_100007BA4(v175, v278, &qword_100176B48, &qword_10011F0A8);
        swift_storeEnumTagMultiPayload();
        sub_1000199C8(&qword_100176C00, &qword_100176B70, &qword_10011F0D0, &protocol conformance descriptor for ViewThatFits<A>);
        sub_1000199C8(&qword_100176C08, &qword_100176B48, &qword_10011F0A8, &protocol conformance descriptor for HStack<A>);
        v177 = v275;
        _ConditionalContent<>.init(storage:)();
        sub_1000159AC(v175, &qword_100176B48, &qword_10011F0A8);
        sub_100021A84(v177, v261, &qword_100176B78, &qword_10011F0D8);
        v173 = 0;
      }

      v178 = v261;
      v238(v261, v173, 1, v300);
      v179 = sub_1000077C8(&qword_100176BC8, &qword_10011F128);
      v309 = &v287[*(v179 + 44)];
      v180 = v272;
      v181 = v272 + *(v237 + 44);
      v182 = v299;
      sub_100007BA4(v168, v299, &qword_1001768D8, &qword_10011ED38);
      v183 = v168;
      v184 = v301;
      sub_100007BA4(v178, v301, &qword_100176B80, &qword_10011F0E0);
      sub_100007BA4(v182, v181, &qword_1001768D8, &qword_10011ED38);
      sub_100007BA4(v184, v181 + *(v236 + 48), &qword_100176B80, &qword_10011F0E0);
      sub_1000159AC(v178, &qword_100176B80, &qword_10011F0E0);
      sub_1000159AC(v183, &qword_1001768D8, &qword_10011ED38);
      sub_1000159AC(v184, &qword_100176B80, &qword_10011F0E0);
      sub_1000159AC(v182, &qword_1001768D8, &qword_10011ED38);
      LOBYTE(v181) = static Edge.Set.all.getter();
      v185 = v254;
      sub_100021A84(v180, v254, &qword_100176B50, &qword_10011F0B0);
      v186 = v185 + *(v308 + 36);
      *v186 = v181;
      *(v186 + 8) = xmmword_10011EA70;
      *(v186 + 24) = xmmword_10011EA70;
      *(v186 + 40) = 0;
      v187 = v256;
      sub_100021A84(v185, v256, &qword_100176B88, &qword_10011F0E8);
      v188 = v269;
      v189 = v257;
      sub_100007BA4(v269, v257, &qword_100176B88, &qword_10011F0E8);
      v190 = v270;
      v191 = v258;
      sub_100007BA4(v270, v258, &qword_100176B88, &qword_10011F0E8);
      v192 = v259;
      sub_100007BA4(v187, v259, &qword_100176B88, &qword_10011F0E8);
      v193 = v309;
      sub_100007BA4(v189, v309, &qword_100176B88, &qword_10011F0E8);
      v194 = sub_1000077C8(&qword_100176BD0, &qword_10011F130);
      sub_100007BA4(v191, v193 + *(v194 + 48), &qword_100176B88, &qword_10011F0E8);
      sub_100007BA4(v192, v193 + *(v194 + 64), &qword_100176B88, &qword_10011F0E8);
      sub_1000159AC(v187, &qword_100176B88, &qword_10011F0E8);
      sub_1000159AC(v190, &qword_100176B88, &qword_10011F0E8);
      sub_1000159AC(v188, &qword_100176B88, &qword_10011F0E8);
      sub_1000159AC(v192, &qword_100176B88, &qword_10011F0E8);
      sub_1000159AC(v191, &qword_100176B88, &qword_10011F0E8);
      sub_1000159AC(v189, &qword_100176B88, &qword_10011F0E8);
      v195 = v287;
      sub_100007BA4(v287, v284, &qword_100176B58, &qword_10011F0B8);
      swift_storeEnumTagMultiPayload();
      sub_1000C8FC8();
      sub_1000199C8(&qword_100176BE8, &qword_100176B58, &qword_10011F0B8, &protocol conformance descriptor for ViewThatFits<A>);
      v196 = v280;
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v195, &qword_100176B58, &qword_10011F0B8);
    }

    v205 = sub_1000077C8(&qword_100176BF0, &qword_10011F138);
    v206 = v246;
    sub_100021A84(v196, &v246[*(v205 + 44)], &qword_100176B90, &qword_10011F0F0);
    v273, v207, v208, v209, v210, v211, v212, v213;
    v274, v214, v215, v216, v217, v218, v219, v220;
    v276, v221, v222, v223, v224, v225, v226, v227;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v228 = v281;
    sub_100021A84(v206, v281, &qword_1001767C0, &qword_10011EC80);
    v229 = (v228 + *(v288 + 36));
    v230 = v315;
    v229[4] = v314;
    v229[5] = v230;
    v229[6] = v316;
    v231 = v311;
    *v229 = v310;
    v229[1] = v231;
    v232 = v313;
    v229[2] = v312;
    v229[3] = v232;
    v233 = v282;
    sub_100021A84(v228, v282, &qword_1001767B0, &qword_10011EC78);
    sub_100007BA4(v233, v290, &qword_1001767B0, &qword_10011EC78);
    swift_storeEnumTagMultiPayload();
    sub_1000C7C5C();
    v234 = v291;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v234, v304, &qword_1001767A0, &qword_10011EC70);
    swift_storeEnumTagMultiPayload();
    sub_1000C7C2C();
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v234, &qword_1001767A0, &qword_10011EC70);
    sub_1000159AC(v233, &qword_1001767B0, &qword_10011EC78);
    return (*(v247 + 8))(v263, v248);
  }

  else if (v79 == enum case for SFAirDrop.PermissionRequest.Style.intervention<A>(_:))
  {
    (*(v76 + 96))(v78, v75);
    v104 = *(sub_1000077C8(&qword_100176BA0, &qword_10011F100) + 48);
    swift_storeEnumTagMultiPayload();
    sub_1000C7C5C();
    v105 = v291;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v105, v304, &qword_1001767A0, &qword_10011EC70);
    swift_storeEnumTagMultiPayload();
    sub_1000C7C2C();
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v105, &qword_1001767A0, &qword_10011EC70);
    v106 = sub_1000077C8(&qword_100176BA8, &qword_10011F108);
    (*(*(v106 - 8) + 8))(v78 + v104, v106);
    v107 = type metadata accessor for SFInterventionWorkflow();
    return (*(*(v107 - 8) + 8))(v78, v107);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1000C7C2C();
    _ConditionalContent<>.init(storage:)();
    return (*(v76 + 8))(v78, v75);
  }
}

uint64_t sub_1000B13CC@<X0>(void *a1@<X8>)
{
  v305 = a1;
  v303 = sub_1000077C8(&qword_100176870, &qword_10011ECD0);
  __chkstk_darwin(v303);
  v304 = &v235 - v1;
  v289 = sub_1000077C8(&qword_100176878, &qword_10011ECD8);
  __chkstk_darwin(v289);
  v290 = &v235 - v2;
  v302 = sub_1000077C8(&qword_1001767D8, &qword_10011EC88);
  __chkstk_darwin(v302);
  v291 = &v235 - v3;
  v279 = sub_1000077C8(&qword_100176880, &qword_10011ECE0);
  __chkstk_darwin(v279);
  v262 = (&v235 - v4);
  v298 = sub_1000077C8(&qword_100176888, &qword_10011ECE8);
  __chkstk_darwin(v298);
  v286 = (&v235 - v5);
  v6 = sub_1000077C8(&qword_100176890, &qword_10011ECF0);
  __chkstk_darwin(v6 - 8);
  v272 = (&v235 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v253 = (&v235 - v9);
  __chkstk_darwin(v10);
  v267 = (&v235 - v11);
  v285 = sub_1000077C8(&qword_100176898, &qword_10011ECF8);
  __chkstk_darwin(v285);
  v287 = &v235 - v12;
  v283 = sub_1000077C8(&qword_1001768A0, &qword_10011ED00);
  __chkstk_darwin(v283);
  v284 = &v235 - v13;
  v271 = sub_1000077C8(&qword_1001768A8, &qword_10011ED08);
  __chkstk_darwin(v271);
  v278 = &v235 - v14;
  v277 = sub_1000077C8(&qword_1001768B0, &qword_10011ED10);
  __chkstk_darwin(v277);
  v249 = &v235 - v15;
  v300 = sub_1000077C8(&qword_1001768B8, &qword_10011ED18);
  v307 = *(v300 - 8);
  __chkstk_darwin(v300);
  v275 = &v235 - v16;
  v297 = type metadata accessor for DeviceLockState();
  v306 = *(v297 - 8);
  __chkstk_darwin(v297);
  v295 = &v235 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v296 = &v235 - v19;
  v20 = sub_1000077C8(&qword_1001768C0, &qword_10011ED20);
  __chkstk_darwin(v20 - 8);
  v261 = &v235 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v260 = &v235 - v23;
  __chkstk_darwin(v24);
  v26 = &v235 - v25;
  __chkstk_darwin(v27);
  v301 = &v235 - v28;
  __chkstk_darwin(v29);
  v251 = &v235 - v30;
  v292 = sub_1000077C8(&qword_1001768C8, &qword_10011ED28);
  __chkstk_darwin(v292);
  v294 = &v235 - v31;
  v293 = sub_1000077C8(&qword_1001768D0, &qword_10011ED30);
  __chkstk_darwin(v293);
  v33 = &v235 - v32;
  v34 = sub_1000077C8(&qword_1001768D8, &qword_10011ED38);
  __chkstk_darwin(v34 - 8);
  v255 = &v235 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v268 = &v235 - v37;
  __chkstk_darwin(v38);
  v266 = &v235 - v39;
  __chkstk_darwin(v40);
  v299 = &v235 - v41;
  __chkstk_darwin(v42);
  v265 = &v235 - v43;
  v308 = sub_1000077C8(&qword_1001768E0, &qword_10011ED40);
  __chkstk_darwin(v308);
  v259 = &v235 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v258 = &v235 - v46;
  __chkstk_darwin(v47);
  v257 = &v235 - v48;
  __chkstk_darwin(v49);
  v254 = &v235 - v50;
  __chkstk_darwin(v51);
  v256 = &v235 - v52;
  __chkstk_darwin(v53);
  v252 = &v235 - v54;
  __chkstk_darwin(v55);
  v270 = &v235 - v56;
  __chkstk_darwin(v57);
  v250 = &v235 - v58;
  __chkstk_darwin(v59);
  v269 = &v235 - v60;
  __chkstk_darwin(v61);
  v264 = (&v235 - v62);
  v63 = sub_1000077C8(&qword_1001768E8, &qword_10011ED48);
  __chkstk_darwin(v63 - 8);
  v280 = &v235 - v64;
  v65 = sub_1000077C8(&qword_1001767F8, &qword_10011EC98);
  __chkstk_darwin(v65 - 8);
  v67 = &v235 - v66;
  v288 = sub_1000077C8(&qword_1001767E8, &qword_10011EC90);
  __chkstk_darwin(v288);
  v281 = &v235 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v69);
  v282 = &v235 - v70;
  v71 = type metadata accessor for SFAirDrop.DeclineAction();
  v72 = *(v71 - 8);
  __chkstk_darwin(v71);
  v74 = &v235 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1000077C8(&qword_1001768F0, &qword_10011ED50);
  v76 = *(v75 - 8);
  __chkstk_darwin(v75);
  v78 = (&v235 - v77);
  sub_1000077C8(&qword_100175008, &qword_10011C610);
  SFAirDrop.PermissionRequest.style.getter();
  v79 = (*(v76 + 88))(v78, v75);
  if (v79 == enum case for SFAirDrop.PermissionRequest.Style.inline<A>(_:))
  {
    v245 = v26;
    (*(v76 + 96))(v78, v75);
    v81 = *v78;
    v80 = v78[1];
    v83 = v78[2];
    v82 = v78[3];
    v273 = v78[4];
    v84 = sub_1000077C8(&qword_100176908, &qword_10011ED68);
    (*(v72 + 32))(v74, v78 + *(v84 + 80), v71);
    *v67 = static HorizontalAlignment.center.getter();
    *(v67 + 1) = 0;
    v67[16] = 0;
    v85 = type metadata accessor for AirDropAskRequestView(0);
    _ZF = v309[*(v85 + 24)] == 1;
    v248 = v71;
    v247 = v72;
    v263 = v74;
    v246 = v67;
    v276 = v80;
    v274 = v82;
    if (_ZF)
    {
      v87 = static HorizontalAlignment.leading.getter();
      v88 = v264;
      *v264 = v87;
      v88[1] = 0x402E000000000000;
      *(v88 + 16) = 0;
      *v33 = static VerticalAlignment.top.getter();
      *(v33 + 1) = 0x4034000000000000;
      v33[16] = 0;
      v89 = sub_1000077C8(&qword_100176998, &qword_10011EDF8);
      sub_1000B7298(v309, v81, v80, v83, v82, &v33[*(v89 + 44)]);
      sub_100007BA4(v33, v294, &qword_1001768D0, &qword_10011ED30);
      swift_storeEnumTagMultiPayload();
      sub_1000C821C();
      sub_1000199C8(&qword_100176938, &qword_100176888, &qword_10011ECE8, &protocol conformance descriptor for HStack<A>);
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v33, &qword_1001768D0, &qword_10011ED30);
      swift_getKeyPath();
      swift_getKeyPath();
      v90 = v296;
      static Published.subscript.getter();

      v91 = v306;
      v92 = v295;
      v93 = v297;
      (*(v306 + 104))(v295, enum case for DeviceLockState.unlocked(_:), v297);
      v94 = static DeviceLockState.== infix(_:_:)();
      v95 = *(v91 + 8);
      v95(v92, v93);
      v95(v90, v93);
      if (v94)
      {
        v96 = static Axis.Set.horizontal.getter();
        v97 = v249;
        *v249 = v96;
        v98 = sub_1000077C8(&qword_1001769A0, &qword_10011EE00);
        sub_1000B6450(v309, v273, v74, v97 + *(v98 + 44));
        sub_100007BA4(v97, v278, &qword_1001768B0, &qword_10011ED10);
        swift_storeEnumTagMultiPayload();
        sub_1000199C8(&qword_100176988, &qword_1001768B0, &qword_10011ED10, &protocol conformance descriptor for ViewThatFits<A>);
        sub_1000199C8(&qword_100176990, &qword_100176880, &qword_10011ECE0, &protocol conformance descriptor for HStack<A>);
        v99 = v275;
        _ConditionalContent<>.init(storage:)();
        sub_1000159AC(v97, &qword_1001768B0, &qword_10011ED10);
        v100 = v251;
        sub_100021A84(v99, v251, &qword_1001768B8, &qword_10011ED18);
        v101 = 0;
        v102 = v301;
        v103 = v307;
      }

      else
      {
        v101 = 1;
        v102 = v301;
        v103 = v307;
        v100 = v251;
      }

      (*(v103 + 56))(v100, v101, 1, v300);
      v197 = sub_1000077C8(&qword_100176940, &qword_10011EDC8);
      v198 = v264;
      v199 = v264 + *(v197 + 44);
      v200 = v265;
      v201 = v299;
      sub_100007BA4(v265, v299, &qword_1001768D8, &qword_10011ED38);
      sub_100007BA4(v100, v102, &qword_1001768C0, &qword_10011ED20);
      sub_100007BA4(v201, v199, &qword_1001768D8, &qword_10011ED38);
      v202 = sub_1000077C8(&qword_100176948, &qword_10011EDD0);
      sub_100007BA4(v102, v199 + *(v202 + 48), &qword_1001768C0, &qword_10011ED20);
      sub_1000159AC(v100, &qword_1001768C0, &qword_10011ED20);
      sub_1000159AC(v200, &qword_1001768D8, &qword_10011ED38);
      sub_1000159AC(v102, &qword_1001768C0, &qword_10011ED20);
      sub_1000159AC(v201, &qword_1001768D8, &qword_10011ED38);
      v203 = static Edge.Set.all.getter();
      v204 = v198 + *(v308 + 36);
      *v204 = v203;
      *(v204 + 8) = xmmword_10011EA80;
      *(v204 + 24) = xmmword_10011EA90;
      v204[40] = 0;
      sub_100007BA4(v198, v284, &qword_1001768E0, &qword_10011ED40);
      swift_storeEnumTagMultiPayload();
      sub_1000C8330();
      sub_1000199C8(&qword_100176970, &qword_100176898, &qword_10011ECF8, &protocol conformance descriptor for ViewThatFits<A>);
      v196 = v280;
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v198, &qword_1001768E0, &qword_10011ED40);
    }

    else
    {
      *v287 = static Axis.Set.vertical.getter();
      v109 = static HorizontalAlignment.leading.getter();
      v110 = v267;
      *v267 = v109;
      v110[1] = 0x4030000000000000;
      *(v110 + 16) = 0;
      v111 = static VerticalAlignment.top.getter();
      v112 = v286;
      *v286 = v111;
      *(v112 + 8) = 0x4034000000000000;
      *(v112 + 16) = 0;
      v251 = sub_1000077C8(&qword_100176910, &qword_10011ED70);
      v113 = v112 + *(v251 + 44);
      v114 = v309;
      v265 = v81;
      v264 = v83;
      sub_1000B6928(v309, v81, v80, v83, v82, v113);
      sub_100007BA4(v112, v294, &qword_100176888, &qword_10011ECE8);
      v115 = 1;
      swift_storeEnumTagMultiPayload();
      v116 = sub_1000C821C();
      v117 = sub_1000199C8(&qword_100176938, &qword_100176888, &qword_10011ECE8, &protocol conformance descriptor for HStack<A>);
      v249 = v116;
      v243 = v117;
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v112, &qword_100176888, &qword_10011ECE8);
      v118 = *(v114 + *(v85 + 20) + 8);
      swift_getKeyPath();
      swift_getKeyPath();
      v119 = v296;
      v244 = v118;
      static Published.subscript.getter();

      v120 = v306;
      v121 = *(v306 + 104);
      v122 = v295;
      v242 = enum case for DeviceLockState.unlocked(_:);
      v123 = v297;
      v241 = v306 + 104;
      v240 = v121;
      v121(v295);
      v124 = static DeviceLockState.== infix(_:_:)();
      v125 = *(v120 + 8);
      v125(v122, v123);
      v306 = v120 + 8;
      v239 = v125;
      v125(v119, v123);
      v126 = v245;
      if (v124)
      {
        v127 = static VerticalAlignment.center.getter();
        v128 = v262;
        *v262 = v127;
        *(v128 + 8) = 0x4024000000000000;
        *(v128 + 16) = 0;
        v129 = sub_1000077C8(&qword_100176980, &qword_10011EDF0);
        sub_1000B8974(v263, v309, v273, v128 + *(v129 + 44));
        sub_100007BA4(v128, v278, &qword_100176880, &qword_10011ECE0);
        swift_storeEnumTagMultiPayload();
        sub_1000199C8(&qword_100176988, &qword_1001768B0, &qword_10011ED10, &protocol conformance descriptor for ViewThatFits<A>);
        sub_1000199C8(&qword_100176990, &qword_100176880, &qword_10011ECE0, &protocol conformance descriptor for HStack<A>);
        v130 = v275;
        _ConditionalContent<>.init(storage:)();
        sub_1000159AC(v128, &qword_100176880, &qword_10011ECE0);
        sub_100021A84(v130, v126, &qword_1001768B8, &qword_10011ED18);
        v115 = 0;
      }

      v238 = *(v307 + 56);
      v307 += 56;
      v238(v126, v115, 1, v300);
      v237 = sub_1000077C8(&qword_100176940, &qword_10011EDC8);
      v131 = v267;
      v132 = v267 + *(v237 + 44);
      v133 = v266;
      v134 = v299;
      sub_100007BA4(v266, v299, &qword_1001768D8, &qword_10011ED38);
      v135 = v301;
      sub_100007BA4(v126, v301, &qword_1001768C0, &qword_10011ED20);
      sub_100007BA4(v134, v132, &qword_1001768D8, &qword_10011ED38);
      v236 = sub_1000077C8(&qword_100176948, &qword_10011EDD0);
      sub_100007BA4(v135, v132 + *(v236 + 48), &qword_1001768C0, &qword_10011ED20);
      sub_1000159AC(v126, &qword_1001768C0, &qword_10011ED20);
      sub_1000159AC(v133, &qword_1001768D8, &qword_10011ED38);
      sub_1000159AC(v135, &qword_1001768C0, &qword_10011ED20);
      sub_1000159AC(v134, &qword_1001768D8, &qword_10011ED38);
      v136 = static Edge.Set.all.getter();
      v137 = v250;
      sub_100021A84(v131, v250, &qword_100176890, &qword_10011ECF0);
      v138 = v137 + *(v308 + 36);
      *v138 = v136;
      __asm { FMOV            V0.2D, #16.0 }

      *(v138 + 8) = _Q0;
      *(v138 + 24) = _Q0;
      *(v138 + 40) = 0;
      sub_100021A84(v137, v269, &qword_1001768E0, &qword_10011ED40);
      v143 = static HorizontalAlignment.leading.getter();
      v144 = v253;
      *v253 = v143;
      *(v144 + 8) = 0x4026000000000000;
      *(v144 + 16) = 0;
      v145 = static VerticalAlignment.top.getter();
      v146 = v286;
      *v286 = v145;
      *(v146 + 8) = 0x4034000000000000;
      *(v146 + 16) = 0;
      sub_1000B6928(v309, v265, v276, v264, v274, v146 + *(v251 + 44));
      sub_100007BA4(v146, v294, &qword_100176888, &qword_10011ECE8);
      swift_storeEnumTagMultiPayload();
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v146, &qword_100176888, &qword_10011ECE8);
      swift_getKeyPath();
      swift_getKeyPath();
      v147 = v296;
      static Published.subscript.getter();

      v148 = v295;
      v149 = v297;
      v240(v295, v242, v297);
      v150 = static DeviceLockState.== infix(_:_:)();
      v151 = v239;
      v239(v148, v149);
      v151(v147, v149);
      v152 = 1;
      if (v150)
      {
        v153 = static VerticalAlignment.center.getter();
        v154 = v262;
        *v262 = v153;
        *(v154 + 8) = 0x4024000000000000;
        *(v154 + 16) = 0;
        v155 = sub_1000077C8(&qword_100176980, &qword_10011EDF0);
        sub_1000B8974(v263, v309, v273, v154 + *(v155 + 44));
        sub_100007BA4(v154, v278, &qword_100176880, &qword_10011ECE0);
        swift_storeEnumTagMultiPayload();
        sub_1000199C8(&qword_100176988, &qword_1001768B0, &qword_10011ED10, &protocol conformance descriptor for ViewThatFits<A>);
        sub_1000199C8(&qword_100176990, &qword_100176880, &qword_10011ECE0, &protocol conformance descriptor for HStack<A>);
        v156 = v275;
        _ConditionalContent<>.init(storage:)();
        sub_1000159AC(v154, &qword_100176880, &qword_10011ECE0);
        sub_100021A84(v156, v260, &qword_1001768B8, &qword_10011ED18);
        v152 = 0;
      }

      v157 = v260;
      v238(v260, v152, 1, v300);
      v158 = v144 + *(v237 + 44);
      v159 = v268;
      v160 = v299;
      sub_100007BA4(v268, v299, &qword_1001768D8, &qword_10011ED38);
      v161 = v301;
      sub_100007BA4(v157, v301, &qword_1001768C0, &qword_10011ED20);
      sub_100007BA4(v160, v158, &qword_1001768D8, &qword_10011ED38);
      sub_100007BA4(v161, v158 + *(v236 + 48), &qword_1001768C0, &qword_10011ED20);
      sub_1000159AC(v157, &qword_1001768C0, &qword_10011ED20);
      sub_1000159AC(v159, &qword_1001768D8, &qword_10011ED38);
      sub_1000159AC(v161, &qword_1001768C0, &qword_10011ED20);
      sub_1000159AC(v160, &qword_1001768D8, &qword_10011ED38);
      LOBYTE(v158) = static Edge.Set.all.getter();
      v162 = v252;
      sub_100021A84(v144, v252, &qword_100176890, &qword_10011ECF0);
      v163 = v162 + *(v308 + 36);
      *v163 = v158;
      *(v163 + 8) = xmmword_10011EA60;
      *(v163 + 24) = xmmword_10011EA60;
      *(v163 + 40) = 0;
      sub_100021A84(v162, v270, &qword_1001768E0, &qword_10011ED40);
      v164 = static HorizontalAlignment.leading.getter();
      v165 = v272;
      *v272 = v164;
      v165[1] = 0x4020000000000000;
      *(v165 + 16) = 0;
      v166 = static VerticalAlignment.top.getter();
      v167 = v286;
      *v286 = v166;
      *(v167 + 8) = 0x4034000000000000;
      *(v167 + 16) = 0;
      sub_1000B6928(v309, v265, v276, v264, v274, v167 + *(v251 + 44));
      sub_100007BA4(v167, v294, &qword_100176888, &qword_10011ECE8);
      swift_storeEnumTagMultiPayload();
      v168 = v255;
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v167, &qword_100176888, &qword_10011ECE8);
      swift_getKeyPath();
      swift_getKeyPath();
      v169 = v296;
      static Published.subscript.getter();

      v170 = v295;
      v171 = v297;
      v240(v295, v242, v297);
      LOBYTE(v167) = static DeviceLockState.== infix(_:_:)();
      v172 = v239;
      v239(v170, v171);
      v172(v169, v171);
      v173 = 1;
      if (v167)
      {
        v174 = static VerticalAlignment.center.getter();
        v175 = v262;
        *v262 = v174;
        *(v175 + 8) = 0x4024000000000000;
        *(v175 + 16) = 0;
        v176 = sub_1000077C8(&qword_100176980, &qword_10011EDF0);
        sub_1000B8974(v263, v309, v273, v175 + *(v176 + 44));
        sub_100007BA4(v175, v278, &qword_100176880, &qword_10011ECE0);
        swift_storeEnumTagMultiPayload();
        sub_1000199C8(&qword_100176988, &qword_1001768B0, &qword_10011ED10, &protocol conformance descriptor for ViewThatFits<A>);
        sub_1000199C8(&qword_100176990, &qword_100176880, &qword_10011ECE0, &protocol conformance descriptor for HStack<A>);
        v177 = v275;
        _ConditionalContent<>.init(storage:)();
        sub_1000159AC(v175, &qword_100176880, &qword_10011ECE0);
        sub_100021A84(v177, v261, &qword_1001768B8, &qword_10011ED18);
        v173 = 0;
      }

      v178 = v261;
      v238(v261, v173, 1, v300);
      v179 = sub_1000077C8(&qword_100176950, &qword_10011EDD8);
      v309 = &v287[*(v179 + 44)];
      v180 = v272;
      v181 = v272 + *(v237 + 44);
      v182 = v299;
      sub_100007BA4(v168, v299, &qword_1001768D8, &qword_10011ED38);
      v183 = v168;
      v184 = v301;
      sub_100007BA4(v178, v301, &qword_1001768C0, &qword_10011ED20);
      sub_100007BA4(v182, v181, &qword_1001768D8, &qword_10011ED38);
      sub_100007BA4(v184, v181 + *(v236 + 48), &qword_1001768C0, &qword_10011ED20);
      sub_1000159AC(v178, &qword_1001768C0, &qword_10011ED20);
      sub_1000159AC(v183, &qword_1001768D8, &qword_10011ED38);
      sub_1000159AC(v184, &qword_1001768C0, &qword_10011ED20);
      sub_1000159AC(v182, &qword_1001768D8, &qword_10011ED38);
      LOBYTE(v181) = static Edge.Set.all.getter();
      v185 = v254;
      sub_100021A84(v180, v254, &qword_100176890, &qword_10011ECF0);
      v186 = v185 + *(v308 + 36);
      *v186 = v181;
      *(v186 + 8) = xmmword_10011EA70;
      *(v186 + 24) = xmmword_10011EA70;
      *(v186 + 40) = 0;
      v187 = v256;
      sub_100021A84(v185, v256, &qword_1001768E0, &qword_10011ED40);
      v188 = v269;
      v189 = v257;
      sub_100007BA4(v269, v257, &qword_1001768E0, &qword_10011ED40);
      v190 = v270;
      v191 = v258;
      sub_100007BA4(v270, v258, &qword_1001768E0, &qword_10011ED40);
      v192 = v259;
      sub_100007BA4(v187, v259, &qword_1001768E0, &qword_10011ED40);
      v193 = v309;
      sub_100007BA4(v189, v309, &qword_1001768E0, &qword_10011ED40);
      v194 = sub_1000077C8(&qword_100176958, &qword_10011EDE0);
      sub_100007BA4(v191, v193 + *(v194 + 48), &qword_1001768E0, &qword_10011ED40);
      sub_100007BA4(v192, v193 + *(v194 + 64), &qword_1001768E0, &qword_10011ED40);
      sub_1000159AC(v187, &qword_1001768E0, &qword_10011ED40);
      sub_1000159AC(v190, &qword_1001768E0, &qword_10011ED40);
      sub_1000159AC(v188, &qword_1001768E0, &qword_10011ED40);
      sub_1000159AC(v192, &qword_1001768E0, &qword_10011ED40);
      sub_1000159AC(v191, &qword_1001768E0, &qword_10011ED40);
      sub_1000159AC(v189, &qword_1001768E0, &qword_10011ED40);
      v195 = v287;
      sub_100007BA4(v287, v284, &qword_100176898, &qword_10011ECF8);
      swift_storeEnumTagMultiPayload();
      sub_1000C8330();
      sub_1000199C8(&qword_100176970, &qword_100176898, &qword_10011ECF8, &protocol conformance descriptor for ViewThatFits<A>);
      v196 = v280;
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v195, &qword_100176898, &qword_10011ECF8);
    }

    v205 = sub_1000077C8(&qword_100176978, &qword_10011EDE8);
    v206 = v246;
    sub_100021A84(v196, &v246[*(v205 + 44)], &qword_1001768E8, &qword_10011ED48);
    v273, v207, v208, v209, v210, v211, v212, v213;
    v274, v214, v215, v216, v217, v218, v219, v220;
    v276, v221, v222, v223, v224, v225, v226, v227;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v228 = v281;
    sub_100021A84(v206, v281, &qword_1001767F8, &qword_10011EC98);
    v229 = (v228 + *(v288 + 36));
    v230 = v315;
    v229[4] = v314;
    v229[5] = v230;
    v229[6] = v316;
    v231 = v311;
    *v229 = v310;
    v229[1] = v231;
    v232 = v313;
    v229[2] = v312;
    v229[3] = v232;
    v233 = v282;
    sub_100021A84(v228, v282, &qword_1001767E8, &qword_10011EC90);
    sub_100007BA4(v233, v290, &qword_1001767E8, &qword_10011EC90);
    swift_storeEnumTagMultiPayload();
    sub_1000C7D44();
    v234 = v291;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v234, v304, &qword_1001767D8, &qword_10011EC88);
    swift_storeEnumTagMultiPayload();
    sub_1000C7D14();
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v234, &qword_1001767D8, &qword_10011EC88);
    sub_1000159AC(v233, &qword_1001767E8, &qword_10011EC90);
    return (*(v247 + 8))(v263, v248);
  }

  else if (v79 == enum case for SFAirDrop.PermissionRequest.Style.intervention<A>(_:))
  {
    (*(v76 + 96))(v78, v75);
    v104 = *(sub_1000077C8(&qword_1001768F8, &qword_10011ED58) + 48);
    swift_storeEnumTagMultiPayload();
    sub_1000C7D44();
    v105 = v291;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v105, v304, &qword_1001767D8, &qword_10011EC88);
    swift_storeEnumTagMultiPayload();
    sub_1000C7D14();
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v105, &qword_1001767D8, &qword_10011EC88);
    v106 = sub_1000077C8(&qword_100176900, &qword_10011ED60);
    (*(*(v106 - 8) + 8))(v78 + v104, v106);
    v107 = type metadata accessor for SFInterventionWorkflow();
    return (*(*(v107 - 8) + 8))(v78, v107);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1000C7D14();
    _ConditionalContent<>.init(storage:)();
    return (*(v76 + 8))(v78, v75);
  }
}

uint64_t sub_1000B3AD8@<X0>(void *a1@<X8>)
{
  v305 = a1;
  v303 = sub_1000077C8(&qword_100176CA0, &qword_10011F1E8);
  __chkstk_darwin(v303);
  v304 = &v235 - v1;
  v289 = sub_1000077C8(&qword_100176CA8, &qword_10011F1F0);
  __chkstk_darwin(v289);
  v290 = &v235 - v2;
  v302 = sub_1000077C8(&qword_100176830, &qword_10011ECA8);
  __chkstk_darwin(v302);
  v291 = &v235 - v3;
  v279 = sub_1000077C8(&qword_100176CB0, &qword_10011F1F8);
  __chkstk_darwin(v279);
  v262 = (&v235 - v4);
  v298 = sub_1000077C8(&qword_100176888, &qword_10011ECE8);
  __chkstk_darwin(v298);
  v286 = (&v235 - v5);
  v6 = sub_1000077C8(&qword_100176CB8, &qword_10011F200);
  __chkstk_darwin(v6 - 8);
  v272 = (&v235 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v253 = (&v235 - v9);
  __chkstk_darwin(v10);
  v267 = (&v235 - v11);
  v285 = sub_1000077C8(&qword_100176CC0, &qword_10011F208);
  __chkstk_darwin(v285);
  v287 = &v235 - v12;
  v283 = sub_1000077C8(&qword_100176CC8, &qword_10011F210);
  __chkstk_darwin(v283);
  v284 = &v235 - v13;
  v271 = sub_1000077C8(&qword_100176CD0, &qword_10011F218);
  __chkstk_darwin(v271);
  v278 = &v235 - v14;
  v277 = sub_1000077C8(&qword_100176CD8, &qword_10011F220);
  __chkstk_darwin(v277);
  v249 = &v235 - v15;
  v300 = sub_1000077C8(&qword_100176CE0, &qword_10011F228);
  v307 = *(v300 - 8);
  __chkstk_darwin(v300);
  v275 = &v235 - v16;
  v297 = type metadata accessor for DeviceLockState();
  v306 = *(v297 - 8);
  __chkstk_darwin(v297);
  v295 = &v235 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v296 = &v235 - v19;
  v20 = sub_1000077C8(&qword_100176CE8, &qword_10011F230);
  __chkstk_darwin(v20 - 8);
  v261 = &v235 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v260 = &v235 - v23;
  __chkstk_darwin(v24);
  v26 = &v235 - v25;
  __chkstk_darwin(v27);
  v301 = &v235 - v28;
  __chkstk_darwin(v29);
  v251 = &v235 - v30;
  v292 = sub_1000077C8(&qword_1001768C8, &qword_10011ED28);
  __chkstk_darwin(v292);
  v294 = &v235 - v31;
  v293 = sub_1000077C8(&qword_1001768D0, &qword_10011ED30);
  __chkstk_darwin(v293);
  v33 = &v235 - v32;
  v34 = sub_1000077C8(&qword_1001768D8, &qword_10011ED38);
  __chkstk_darwin(v34 - 8);
  v255 = &v235 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v268 = &v235 - v37;
  __chkstk_darwin(v38);
  v266 = &v235 - v39;
  __chkstk_darwin(v40);
  v299 = &v235 - v41;
  __chkstk_darwin(v42);
  v265 = &v235 - v43;
  v308 = sub_1000077C8(&qword_100176CF0, &qword_10011F238);
  __chkstk_darwin(v308);
  v259 = &v235 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v258 = &v235 - v46;
  __chkstk_darwin(v47);
  v257 = &v235 - v48;
  __chkstk_darwin(v49);
  v254 = &v235 - v50;
  __chkstk_darwin(v51);
  v256 = &v235 - v52;
  __chkstk_darwin(v53);
  v252 = &v235 - v54;
  __chkstk_darwin(v55);
  v270 = &v235 - v56;
  __chkstk_darwin(v57);
  v250 = &v235 - v58;
  __chkstk_darwin(v59);
  v269 = &v235 - v60;
  __chkstk_darwin(v61);
  v264 = (&v235 - v62);
  v63 = sub_1000077C8(&qword_100176CF8, &unk_10011F240);
  __chkstk_darwin(v63 - 8);
  v280 = &v235 - v64;
  v65 = sub_1000077C8(&qword_100176850, &qword_10011ECB8);
  __chkstk_darwin(v65 - 8);
  v67 = &v235 - v66;
  v288 = sub_1000077C8(&qword_100176840, &qword_10011ECB0);
  __chkstk_darwin(v288);
  v281 = &v235 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v69);
  v282 = &v235 - v70;
  v71 = type metadata accessor for SFAirDrop.DeclineAction();
  v72 = *(v71 - 8);
  __chkstk_darwin(v71);
  v74 = &v235 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1000077C8(&qword_100173CA8, &unk_10011A310);
  v76 = *(v75 - 8);
  __chkstk_darwin(v75);
  v78 = (&v235 - v77);
  sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
  SFAirDrop.PermissionRequest.style.getter();
  v79 = (*(v76 + 88))(v78, v75);
  if (v79 == enum case for SFAirDrop.PermissionRequest.Style.inline<A>(_:))
  {
    v245 = v26;
    (*(v76 + 96))(v78, v75);
    v81 = *v78;
    v80 = v78[1];
    v83 = v78[2];
    v82 = v78[3];
    v273 = v78[4];
    v84 = sub_1000077C8(&qword_100173CC0, qword_10011D010);
    (*(v72 + 32))(v74, v78 + *(v84 + 80), v71);
    *v67 = static HorizontalAlignment.center.getter();
    *(v67 + 1) = 0;
    v67[16] = 0;
    v85 = type metadata accessor for AirDropAskRequestView(0);
    _ZF = v309[*(v85 + 24)] == 1;
    v248 = v71;
    v247 = v72;
    v263 = v74;
    v246 = v67;
    v276 = v80;
    v274 = v82;
    if (_ZF)
    {
      v87 = static HorizontalAlignment.leading.getter();
      v88 = v264;
      *v264 = v87;
      v88[1] = 0x402E000000000000;
      *(v88 + 16) = 0;
      *v33 = static VerticalAlignment.top.getter();
      *(v33 + 1) = 0x4034000000000000;
      v33[16] = 0;
      v89 = sub_1000077C8(&qword_100176998, &qword_10011EDF8);
      sub_1000B7298(v309, v81, v80, v83, v82, &v33[*(v89 + 44)]);
      sub_100007BA4(v33, v294, &qword_1001768D0, &qword_10011ED30);
      swift_storeEnumTagMultiPayload();
      sub_1000C821C();
      sub_1000199C8(&qword_100176938, &qword_100176888, &qword_10011ECE8, &protocol conformance descriptor for HStack<A>);
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v33, &qword_1001768D0, &qword_10011ED30);
      swift_getKeyPath();
      swift_getKeyPath();
      v90 = v296;
      static Published.subscript.getter();

      v91 = v306;
      v92 = v295;
      v93 = v297;
      (*(v306 + 104))(v295, enum case for DeviceLockState.unlocked(_:), v297);
      v94 = static DeviceLockState.== infix(_:_:)();
      v95 = *(v91 + 8);
      v95(v92, v93);
      v95(v90, v93);
      if (v94)
      {
        v96 = static Axis.Set.horizontal.getter();
        v97 = v249;
        *v249 = v96;
        v98 = sub_1000077C8(&qword_100176D68, &qword_10011F298);
        sub_1000B61E4(v309, v273, v74, v97 + *(v98 + 44));
        sub_100007BA4(v97, v278, &qword_100176CD8, &qword_10011F220);
        swift_storeEnumTagMultiPayload();
        sub_1000199C8(&qword_100176D58, &qword_100176CD8, &qword_10011F220, &protocol conformance descriptor for ViewThatFits<A>);
        sub_1000199C8(&qword_100176D60, &qword_100176CB0, &qword_10011F1F8, &protocol conformance descriptor for HStack<A>);
        v99 = v275;
        _ConditionalContent<>.init(storage:)();
        sub_1000159AC(v97, &qword_100176CD8, &qword_10011F220);
        v100 = v251;
        sub_100021A84(v99, v251, &qword_100176CE0, &qword_10011F228);
        v101 = 0;
        v102 = v301;
        v103 = v307;
      }

      else
      {
        v101 = 1;
        v102 = v301;
        v103 = v307;
        v100 = v251;
      }

      (*(v103 + 56))(v100, v101, 1, v300);
      v197 = sub_1000077C8(&qword_100176D10, &qword_10011F268);
      v198 = v264;
      v199 = v264 + *(v197 + 44);
      v200 = v265;
      v201 = v299;
      sub_100007BA4(v265, v299, &qword_1001768D8, &qword_10011ED38);
      sub_100007BA4(v100, v102, &qword_100176CE8, &qword_10011F230);
      sub_100007BA4(v201, v199, &qword_1001768D8, &qword_10011ED38);
      v202 = sub_1000077C8(&qword_100176D18, &qword_10011F270);
      sub_100007BA4(v102, v199 + *(v202 + 48), &qword_100176CE8, &qword_10011F230);
      sub_1000159AC(v100, &qword_100176CE8, &qword_10011F230);
      sub_1000159AC(v200, &qword_1001768D8, &qword_10011ED38);
      sub_1000159AC(v102, &qword_100176CE8, &qword_10011F230);
      sub_1000159AC(v201, &qword_1001768D8, &qword_10011ED38);
      v203 = static Edge.Set.all.getter();
      v204 = v198 + *(v308 + 36);
      *v204 = v203;
      *(v204 + 8) = xmmword_10011EA80;
      *(v204 + 24) = xmmword_10011EA90;
      v204[40] = 0;
      sub_100007BA4(v198, v284, &qword_100176CF0, &qword_10011F238);
      swift_storeEnumTagMultiPayload();
      sub_1000C9254();
      sub_1000199C8(&qword_100176D40, &qword_100176CC0, &qword_10011F208, &protocol conformance descriptor for ViewThatFits<A>);
      v196 = v280;
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v198, &qword_100176CF0, &qword_10011F238);
    }

    else
    {
      *v287 = static Axis.Set.vertical.getter();
      v109 = static HorizontalAlignment.leading.getter();
      v110 = v267;
      *v267 = v109;
      v110[1] = 0x4030000000000000;
      *(v110 + 16) = 0;
      v111 = static VerticalAlignment.top.getter();
      v112 = v286;
      *v286 = v111;
      *(v112 + 8) = 0x4034000000000000;
      *(v112 + 16) = 0;
      v251 = sub_1000077C8(&qword_100176910, &qword_10011ED70);
      v113 = v112 + *(v251 + 44);
      v114 = v309;
      v265 = v81;
      v264 = v83;
      sub_1000B6928(v309, v81, v80, v83, v82, v113);
      sub_100007BA4(v112, v294, &qword_100176888, &qword_10011ECE8);
      v115 = 1;
      swift_storeEnumTagMultiPayload();
      v116 = sub_1000C821C();
      v117 = sub_1000199C8(&qword_100176938, &qword_100176888, &qword_10011ECE8, &protocol conformance descriptor for HStack<A>);
      v249 = v116;
      v243 = v117;
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v112, &qword_100176888, &qword_10011ECE8);
      v118 = *(v114 + *(v85 + 20) + 8);
      swift_getKeyPath();
      swift_getKeyPath();
      v119 = v296;
      v244 = v118;
      static Published.subscript.getter();

      v120 = v306;
      v121 = *(v306 + 104);
      v122 = v295;
      v242 = enum case for DeviceLockState.unlocked(_:);
      v123 = v297;
      v241 = v306 + 104;
      v240 = v121;
      v121(v295);
      v124 = static DeviceLockState.== infix(_:_:)();
      v125 = *(v120 + 8);
      v125(v122, v123);
      v306 = v120 + 8;
      v239 = v125;
      v125(v119, v123);
      v126 = v245;
      if (v124)
      {
        v127 = static VerticalAlignment.center.getter();
        v128 = v262;
        *v262 = v127;
        *(v128 + 8) = 0x4024000000000000;
        *(v128 + 16) = 0;
        v129 = sub_1000077C8(&qword_100176D50, &qword_10011F290);
        sub_1000B7DF4(v263, v309, v273, v128 + *(v129 + 44));
        sub_100007BA4(v128, v278, &qword_100176CB0, &qword_10011F1F8);
        swift_storeEnumTagMultiPayload();
        sub_1000199C8(&qword_100176D58, &qword_100176CD8, &qword_10011F220, &protocol conformance descriptor for ViewThatFits<A>);
        sub_1000199C8(&qword_100176D60, &qword_100176CB0, &qword_10011F1F8, &protocol conformance descriptor for HStack<A>);
        v130 = v275;
        _ConditionalContent<>.init(storage:)();
        sub_1000159AC(v128, &qword_100176CB0, &qword_10011F1F8);
        sub_100021A84(v130, v126, &qword_100176CE0, &qword_10011F228);
        v115 = 0;
      }

      v238 = *(v307 + 56);
      v307 += 56;
      v238(v126, v115, 1, v300);
      v237 = sub_1000077C8(&qword_100176D10, &qword_10011F268);
      v131 = v267;
      v132 = v267 + *(v237 + 44);
      v133 = v266;
      v134 = v299;
      sub_100007BA4(v266, v299, &qword_1001768D8, &qword_10011ED38);
      v135 = v301;
      sub_100007BA4(v126, v301, &qword_100176CE8, &qword_10011F230);
      sub_100007BA4(v134, v132, &qword_1001768D8, &qword_10011ED38);
      v236 = sub_1000077C8(&qword_100176D18, &qword_10011F270);
      sub_100007BA4(v135, v132 + *(v236 + 48), &qword_100176CE8, &qword_10011F230);
      sub_1000159AC(v126, &qword_100176CE8, &qword_10011F230);
      sub_1000159AC(v133, &qword_1001768D8, &qword_10011ED38);
      sub_1000159AC(v135, &qword_100176CE8, &qword_10011F230);
      sub_1000159AC(v134, &qword_1001768D8, &qword_10011ED38);
      v136 = static Edge.Set.all.getter();
      v137 = v250;
      sub_100021A84(v131, v250, &qword_100176CB8, &qword_10011F200);
      v138 = v137 + *(v308 + 36);
      *v138 = v136;
      __asm { FMOV            V0.2D, #16.0 }

      *(v138 + 8) = _Q0;
      *(v138 + 24) = _Q0;
      *(v138 + 40) = 0;
      sub_100021A84(v137, v269, &qword_100176CF0, &qword_10011F238);
      v143 = static HorizontalAlignment.leading.getter();
      v144 = v253;
      *v253 = v143;
      *(v144 + 8) = 0x4026000000000000;
      *(v144 + 16) = 0;
      v145 = static VerticalAlignment.top.getter();
      v146 = v286;
      *v286 = v145;
      *(v146 + 8) = 0x4034000000000000;
      *(v146 + 16) = 0;
      sub_1000B6928(v309, v265, v276, v264, v274, v146 + *(v251 + 44));
      sub_100007BA4(v146, v294, &qword_100176888, &qword_10011ECE8);
      swift_storeEnumTagMultiPayload();
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v146, &qword_100176888, &qword_10011ECE8);
      swift_getKeyPath();
      swift_getKeyPath();
      v147 = v296;
      static Published.subscript.getter();

      v148 = v295;
      v149 = v297;
      v240(v295, v242, v297);
      v150 = static DeviceLockState.== infix(_:_:)();
      v151 = v239;
      v239(v148, v149);
      v151(v147, v149);
      v152 = 1;
      if (v150)
      {
        v153 = static VerticalAlignment.center.getter();
        v154 = v262;
        *v262 = v153;
        *(v154 + 8) = 0x4024000000000000;
        *(v154 + 16) = 0;
        v155 = sub_1000077C8(&qword_100176D50, &qword_10011F290);
        sub_1000B7DF4(v263, v309, v273, v154 + *(v155 + 44));
        sub_100007BA4(v154, v278, &qword_100176CB0, &qword_10011F1F8);
        swift_storeEnumTagMultiPayload();
        sub_1000199C8(&qword_100176D58, &qword_100176CD8, &qword_10011F220, &protocol conformance descriptor for ViewThatFits<A>);
        sub_1000199C8(&qword_100176D60, &qword_100176CB0, &qword_10011F1F8, &protocol conformance descriptor for HStack<A>);
        v156 = v275;
        _ConditionalContent<>.init(storage:)();
        sub_1000159AC(v154, &qword_100176CB0, &qword_10011F1F8);
        sub_100021A84(v156, v260, &qword_100176CE0, &qword_10011F228);
        v152 = 0;
      }

      v157 = v260;
      v238(v260, v152, 1, v300);
      v158 = v144 + *(v237 + 44);
      v159 = v268;
      v160 = v299;
      sub_100007BA4(v268, v299, &qword_1001768D8, &qword_10011ED38);
      v161 = v301;
      sub_100007BA4(v157, v301, &qword_100176CE8, &qword_10011F230);
      sub_100007BA4(v160, v158, &qword_1001768D8, &qword_10011ED38);
      sub_100007BA4(v161, v158 + *(v236 + 48), &qword_100176CE8, &qword_10011F230);
      sub_1000159AC(v157, &qword_100176CE8, &qword_10011F230);
      sub_1000159AC(v159, &qword_1001768D8, &qword_10011ED38);
      sub_1000159AC(v161, &qword_100176CE8, &qword_10011F230);
      sub_1000159AC(v160, &qword_1001768D8, &qword_10011ED38);
      LOBYTE(v158) = static Edge.Set.all.getter();
      v162 = v252;
      sub_100021A84(v144, v252, &qword_100176CB8, &qword_10011F200);
      v163 = v162 + *(v308 + 36);
      *v163 = v158;
      *(v163 + 8) = xmmword_10011EA60;
      *(v163 + 24) = xmmword_10011EA60;
      *(v163 + 40) = 0;
      sub_100021A84(v162, v270, &qword_100176CF0, &qword_10011F238);
      v164 = static HorizontalAlignment.leading.getter();
      v165 = v272;
      *v272 = v164;
      v165[1] = 0x4020000000000000;
      *(v165 + 16) = 0;
      v166 = static VerticalAlignment.top.getter();
      v167 = v286;
      *v286 = v166;
      *(v167 + 8) = 0x4034000000000000;
      *(v167 + 16) = 0;
      sub_1000B6928(v309, v265, v276, v264, v274, v167 + *(v251 + 44));
      sub_100007BA4(v167, v294, &qword_100176888, &qword_10011ECE8);
      swift_storeEnumTagMultiPayload();
      v168 = v255;
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v167, &qword_100176888, &qword_10011ECE8);
      swift_getKeyPath();
      swift_getKeyPath();
      v169 = v296;
      static Published.subscript.getter();

      v170 = v295;
      v171 = v297;
      v240(v295, v242, v297);
      LOBYTE(v167) = static DeviceLockState.== infix(_:_:)();
      v172 = v239;
      v239(v170, v171);
      v172(v169, v171);
      v173 = 1;
      if (v167)
      {
        v174 = static VerticalAlignment.center.getter();
        v175 = v262;
        *v262 = v174;
        *(v175 + 8) = 0x4024000000000000;
        *(v175 + 16) = 0;
        v176 = sub_1000077C8(&qword_100176D50, &qword_10011F290);
        sub_1000B7DF4(v263, v309, v273, v175 + *(v176 + 44));
        sub_100007BA4(v175, v278, &qword_100176CB0, &qword_10011F1F8);
        swift_storeEnumTagMultiPayload();
        sub_1000199C8(&qword_100176D58, &qword_100176CD8, &qword_10011F220, &protocol conformance descriptor for ViewThatFits<A>);
        sub_1000199C8(&qword_100176D60, &qword_100176CB0, &qword_10011F1F8, &protocol conformance descriptor for HStack<A>);
        v177 = v275;
        _ConditionalContent<>.init(storage:)();
        sub_1000159AC(v175, &qword_100176CB0, &qword_10011F1F8);
        sub_100021A84(v177, v261, &qword_100176CE0, &qword_10011F228);
        v173 = 0;
      }

      v178 = v261;
      v238(v261, v173, 1, v300);
      v179 = sub_1000077C8(&qword_100176D20, &qword_10011F278);
      v309 = &v287[*(v179 + 44)];
      v180 = v272;
      v181 = v272 + *(v237 + 44);
      v182 = v299;
      sub_100007BA4(v168, v299, &qword_1001768D8, &qword_10011ED38);
      v183 = v168;
      v184 = v301;
      sub_100007BA4(v178, v301, &qword_100176CE8, &qword_10011F230);
      sub_100007BA4(v182, v181, &qword_1001768D8, &qword_10011ED38);
      sub_100007BA4(v184, v181 + *(v236 + 48), &qword_100176CE8, &qword_10011F230);
      sub_1000159AC(v178, &qword_100176CE8, &qword_10011F230);
      sub_1000159AC(v183, &qword_1001768D8, &qword_10011ED38);
      sub_1000159AC(v184, &qword_100176CE8, &qword_10011F230);
      sub_1000159AC(v182, &qword_1001768D8, &qword_10011ED38);
      LOBYTE(v181) = static Edge.Set.all.getter();
      v185 = v254;
      sub_100021A84(v180, v254, &qword_100176CB8, &qword_10011F200);
      v186 = v185 + *(v308 + 36);
      *v186 = v181;
      *(v186 + 8) = xmmword_10011EA70;
      *(v186 + 24) = xmmword_10011EA70;
      *(v186 + 40) = 0;
      v187 = v256;
      sub_100021A84(v185, v256, &qword_100176CF0, &qword_10011F238);
      v188 = v269;
      v189 = v257;
      sub_100007BA4(v269, v257, &qword_100176CF0, &qword_10011F238);
      v190 = v270;
      v191 = v258;
      sub_100007BA4(v270, v258, &qword_100176CF0, &qword_10011F238);
      v192 = v259;
      sub_100007BA4(v187, v259, &qword_100176CF0, &qword_10011F238);
      v193 = v309;
      sub_100007BA4(v189, v309, &qword_100176CF0, &qword_10011F238);
      v194 = sub_1000077C8(&qword_100176D28, &qword_10011F280);
      sub_100007BA4(v191, v193 + *(v194 + 48), &qword_100176CF0, &qword_10011F238);
      sub_100007BA4(v192, v193 + *(v194 + 64), &qword_100176CF0, &qword_10011F238);
      sub_1000159AC(v187, &qword_100176CF0, &qword_10011F238);
      sub_1000159AC(v190, &qword_100176CF0, &qword_10011F238);
      sub_1000159AC(v188, &qword_100176CF0, &qword_10011F238);
      sub_1000159AC(v192, &qword_100176CF0, &qword_10011F238);
      sub_1000159AC(v191, &qword_100176CF0, &qword_10011F238);
      sub_1000159AC(v189, &qword_100176CF0, &qword_10011F238);
      v195 = v287;
      sub_100007BA4(v287, v284, &qword_100176CC0, &qword_10011F208);
      swift_storeEnumTagMultiPayload();
      sub_1000C9254();
      sub_1000199C8(&qword_100176D40, &qword_100176CC0, &qword_10011F208, &protocol conformance descriptor for ViewThatFits<A>);
      v196 = v280;
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v195, &qword_100176CC0, &qword_10011F208);
    }

    v205 = sub_1000077C8(&qword_100176D48, &qword_10011F288);
    v206 = v246;
    sub_100021A84(v196, &v246[*(v205 + 44)], &qword_100176CF8, &unk_10011F240);
    v273, v207, v208, v209, v210, v211, v212, v213;
    v274, v214, v215, v216, v217, v218, v219, v220;
    v276, v221, v222, v223, v224, v225, v226, v227;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v228 = v281;
    sub_100021A84(v206, v281, &qword_100176850, &qword_10011ECB8);
    v229 = (v228 + *(v288 + 36));
    v230 = v315;
    v229[4] = v314;
    v229[5] = v230;
    v229[6] = v316;
    v231 = v311;
    *v229 = v310;
    v229[1] = v231;
    v232 = v313;
    v229[2] = v312;
    v229[3] = v232;
    v233 = v282;
    sub_100021A84(v228, v282, &qword_100176840, &qword_10011ECB0);
    sub_100007BA4(v233, v290, &qword_100176840, &qword_10011ECB0);
    swift_storeEnumTagMultiPayload();
    sub_1000C8020();
    v234 = v291;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v234, v304, &qword_100176830, &qword_10011ECA8);
    swift_storeEnumTagMultiPayload();
    sub_1000C7F6C();
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v234, &qword_100176830, &qword_10011ECA8);
    sub_1000159AC(v233, &qword_100176840, &qword_10011ECB0);
    return (*(v247 + 8))(v263, v248);
  }

  else if (v79 == enum case for SFAirDrop.PermissionRequest.Style.intervention<A>(_:))
  {
    (*(v76 + 96))(v78, v75);
    v104 = *(sub_1000077C8(&qword_100176D00, &qword_10011F250) + 48);
    swift_storeEnumTagMultiPayload();
    sub_1000C8020();
    v105 = v291;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v105, v304, &qword_100176830, &qword_10011ECA8);
    swift_storeEnumTagMultiPayload();
    sub_1000C7F6C();
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v105, &qword_100176830, &qword_10011ECA8);
    v106 = sub_1000077C8(&qword_100176D08, &unk_10011F258);
    (*(*(v106 - 8) + 8))(v78 + v104, v106);
    v107 = type metadata accessor for SFInterventionWorkflow();
    return (*(*(v107 - 8) + 8))(v78, v107);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1000C7F6C();
    _ConditionalContent<>.init(storage:)();
    return (*(v76 + 8))(v78, v75);
  }
}

uint64_t sub_1000B61E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v7 = sub_1000077C8(&qword_100176D70, &qword_10011F2A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  v13 = sub_1000077C8(&qword_100176CB0, &qword_10011F1F8);
  __chkstk_darwin(v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v24 - v17;
  *v18 = static VerticalAlignment.center.getter();
  *(v18 + 1) = 0x4024000000000000;
  v18[16] = 0;
  v19 = sub_1000077C8(&qword_100176D50, &qword_10011F290);
  sub_1000B7DF4(a3, a1, a2, &v18[*(v19 + 44)]);
  *v12 = static HorizontalAlignment.center.getter();
  *(v12 + 1) = 0x4024000000000000;
  v12[16] = 0;
  v20 = sub_1000077C8(&qword_100176D78, &qword_10011F2A8);
  sub_1000BED28(a3, a1, a2, &v12[*(v20 + 44)]);
  sub_100007BA4(v18, v15, &qword_100176CB0, &qword_10011F1F8);
  sub_100007BA4(v12, v9, &qword_100176D70, &qword_10011F2A0);
  v21 = v25;
  sub_100007BA4(v15, v25, &qword_100176CB0, &qword_10011F1F8);
  v22 = sub_1000077C8(&qword_100176D80, &qword_10011F2B0);
  sub_100007BA4(v9, v21 + *(v22 + 48), &qword_100176D70, &qword_10011F2A0);
  sub_1000159AC(v12, &qword_100176D70, &qword_10011F2A0);
  sub_1000159AC(v18, &qword_100176CB0, &qword_10011F1F8);
  sub_1000159AC(v9, &qword_100176D70, &qword_10011F2A0);
  return sub_1000159AC(v15, &qword_100176CB0, &qword_10011F1F8);
}

uint64_t sub_1000B6450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v7 = sub_1000077C8(&qword_1001769A8, &qword_10011EE08);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  v13 = sub_1000077C8(&qword_100176880, &qword_10011ECE0);
  __chkstk_darwin(v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v24 - v17;
  *v18 = static VerticalAlignment.center.getter();
  *(v18 + 1) = 0x4024000000000000;
  v18[16] = 0;
  v19 = sub_1000077C8(&qword_100176980, &qword_10011EDF0);
  sub_1000B8974(a3, a1, a2, &v18[*(v19 + 44)]);
  *v12 = static HorizontalAlignment.center.getter();
  *(v12 + 1) = 0x4024000000000000;
  v12[16] = 0;
  v20 = sub_1000077C8(&qword_1001769B0, &qword_10011EE10);
  sub_1000BF50C(a3, a1, a2, &v12[*(v20 + 44)]);
  sub_100007BA4(v18, v15, &qword_100176880, &qword_10011ECE0);
  sub_100007BA4(v12, v9, &qword_1001769A8, &qword_10011EE08);
  v21 = v25;
  sub_100007BA4(v15, v25, &qword_100176880, &qword_10011ECE0);
  v22 = sub_1000077C8(&qword_1001769B8, &qword_10011EE18);
  sub_100007BA4(v9, v21 + *(v22 + 48), &qword_1001769A8, &qword_10011EE08);
  sub_1000159AC(v12, &qword_1001769A8, &qword_10011EE08);
  sub_1000159AC(v18, &qword_100176880, &qword_10011ECE0);
  sub_1000159AC(v9, &qword_1001769A8, &qword_10011EE08);
  return sub_1000159AC(v15, &qword_100176880, &qword_10011ECE0);
}

uint64_t sub_1000B66BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v7 = sub_1000077C8(&qword_100176C18, &qword_10011F150);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  v13 = sub_1000077C8(&qword_100176B48, &qword_10011F0A8);
  __chkstk_darwin(v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v24 - v17;
  *v18 = static VerticalAlignment.center.getter();
  *(v18 + 1) = 0x4024000000000000;
  v18[16] = 0;
  v19 = sub_1000077C8(&qword_100176BF8, &qword_10011F140);
  sub_1000B94F4(a3, a1, a2, &v18[*(v19 + 44)]);
  *v12 = static HorizontalAlignment.center.getter();
  *(v12 + 1) = 0x4024000000000000;
  v12[16] = 0;
  v20 = sub_1000077C8(&qword_100176C20, &qword_10011F158);
  sub_1000BFCF0(a3, a1, a2, &v12[*(v20 + 44)]);
  sub_100007BA4(v18, v15, &qword_100176B48, &qword_10011F0A8);
  sub_100007BA4(v12, v9, &qword_100176C18, &qword_10011F150);
  v21 = v25;
  sub_100007BA4(v15, v25, &qword_100176B48, &qword_10011F0A8);
  v22 = sub_1000077C8(&qword_100176C28, &qword_10011F160);
  sub_100007BA4(v9, v21 + *(v22 + 48), &qword_100176C18, &qword_10011F150);
  sub_1000159AC(v12, &qword_100176C18, &qword_10011F150);
  sub_1000159AC(v18, &qword_100176B48, &qword_10011F0A8);
  sub_1000159AC(v9, &qword_100176C18, &qword_10011F150);
  return sub_1000159AC(v15, &qword_100176B48, &qword_10011F0A8);
}

uint64_t sub_1000B6928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v81 = a5;
  v73 = a4;
  v74 = a3;
  v72 = a2;
  v8 = type metadata accessor for DeviceLockState();
  v78 = *(v8 - 8);
  v79 = v8;
  __chkstk_darwin(v8);
  v77 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v76 = &v63 - v11;
  v69 = type metadata accessor for Font.TextStyle();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v68 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AirDropDescriptionView(0);
  __chkstk_darwin(v13);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1000077C8(&qword_100174138, &unk_10011AE80);
  __chkstk_darwin(v70);
  v17 = &v63 - v16;
  v71 = sub_1000077C8(&qword_100176B20, &qword_10011F080);
  __chkstk_darwin(v71);
  v80 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v63 - v20;
  __chkstk_darwin(v22);
  v87 = &v63 - v23;
  v64 = type metadata accessor for AirDropAskRequestView(0);
  v24 = *(v64 + 20);
  v66 = a1;
  v25 = *(a1 + v24 + 8);
  v26 = type metadata accessor for AirDropTransferSession(0);
  v27 = sub_1000C9AAC(&qword_100173460, type metadata accessor for AirDropTransferSession, &unk_10011D344);

  v75 = v25;
  v65 = v26;
  v63 = v27;
  v28 = ObservedObject.init(wrappedValue:)();
  v85 = v29;
  v86 = v28;
  v84 = [objc_allocWithZone(UIColor) initWithRed:0.043 green:0.608 blue:1.0 alpha:1.0];
  if (qword_100172140 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v83 = LOBYTE(v94[0]);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *(&v108[3] + 1) = *&v108[28];
  *(&v108[11] + 1) = *&v108[36];
  *(&v108[19] + 1) = *&v108[44];
  v82 = static Edge.Set.all.getter();
  LOBYTE(v94[0]) = 0;
  v30 = qword_1001721B8;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = qword_10017F258;
  v94[0] = 0x402C000000000000;
  (*(v67 + 104))(v68, enum case for Font.TextStyle.subheadline(_:), v69);
  sub_10004A578();

  ScaledMetric.init(wrappedValue:relativeTo:)();
  v32 = &v15[v13[5]];
  v33 = v73;
  v34 = v74;
  *v32 = v72;
  v32[1] = v34;
  v35 = &v15[v13[6]];
  v36 = v81;
  *v35 = v33;
  *(v35 + 1) = v36;
  *(v35 + 2) = v31;
  *(v35 + 3) = 2;
  v35[32] = 0;
  *&v15[v13[7]] = 0x3FF0000000000000;

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000C8DD8(v15, v17, type metadata accessor for AirDropDescriptionView);
  v37 = &v17[*(v70 + 36)];
  v38 = *&v108[92];
  *(v37 + 4) = *&v108[84];
  *(v37 + 5) = v38;
  *(v37 + 6) = *&v108[100];
  v39 = *&v108[60];
  *v37 = *&v108[52];
  *(v37 + 1) = v39;
  v40 = *&v108[76];
  *(v37 + 2) = *&v108[68];
  *(v37 + 3) = v40;
  v41 = static Edge.Set.all.getter();
  sub_100021A84(v17, v21, &qword_100174138, &unk_10011AE80);
  v42 = &v21[*(v71 + 36)];
  *v42 = v41;
  *(v42 + 1) = 0x4010000000000000;
  *(v42 + 2) = 0;
  *(v42 + 3) = 0;
  *(v42 + 4) = 0;
  v42[40] = 0;
  sub_100021A84(v21, v87, &qword_100176B20, &qword_10011F080);
  swift_getKeyPath();
  swift_getKeyPath();
  v43 = v76;
  static Published.subscript.getter();

  v45 = v77;
  v44 = v78;
  v46 = v79;
  (*(v78 + 104))(v77, enum case for DeviceLockState.unlocked(_:), v79);
  v47 = static DeviceLockState.== infix(_:_:)();
  v48 = *(v44 + 8);
  v48(v45, v46);
  v48(v43, v46);
  if (v47)
  {
    v49 = *(v66 + *(v64 + 24));

    v50 = ObservedObject.init(wrappedValue:)();
    v52 = v51;

    v53 = 1;
    v54 = 1;
  }

  else
  {
    v50 = 0;
    v52 = 0;
    v49 = 0;
    v53 = 0;
    v54 = 0;
  }

  v55 = v80;
  sub_100007BA4(v87, v80, &qword_100176B20, &qword_10011F080);
  *&v88 = v86;
  *(&v88 + 1) = v85;
  LOBYTE(v89) = 1;
  *(&v89 + 1) = v110[0];
  DWORD1(v89) = *(v110 + 3);
  *(&v89 + 1) = v84;
  LOBYTE(v90[0]) = v83;
  *(v90 + 1) = *v108;
  *(&v90[1] + 1) = *&v108[8];
  *(&v90[2] + 1) = *&v108[16];
  *&v90[3] = *(&v108[23] + 1);
  BYTE8(v90[3]) = v82;
  *(&v90[3] + 9) = *v109;
  HIDWORD(v90[3]) = *&v109[3];
  v81 = xmmword_10011EAA0;
  v91 = xmmword_10011EAA0;
  v92 = 0uLL;
  v93 = 0;
  *(a6 + 128) = 0;
  v56 = v90[1];
  *(a6 + 32) = v90[0];
  *(a6 + 48) = v56;
  v57 = v89;
  *a6 = v88;
  *(a6 + 16) = v57;
  v58 = v92;
  *(a6 + 96) = v91;
  *(a6 + 112) = v58;
  v59 = v90[3];
  *(a6 + 64) = v90[2];
  *(a6 + 80) = v59;
  v60 = sub_1000077C8(&qword_100176B28, &qword_10011F088);
  sub_100007BA4(v55, a6 + *(v60 + 48), &qword_100176B20, &qword_10011F080);
  v61 = a6 + *(v60 + 64);
  sub_100007BA4(&v88, v94, &qword_100176B30, &qword_10011F090);
  sub_10004DC44(v50, v52, v49, 0, v53);
  sub_10004DCA8(v50, v52, v49, 0, v53);
  *v61 = v50;
  *(v61 + 8) = v52;
  *(v61 + 16) = v49;
  *(v61 + 24) = 0;
  *(v61 + 32) = v53;
  *(v61 + 40) = v54;
  sub_1000159AC(v87, &qword_100176B20, &qword_10011F080);
  sub_10004DCA8(v50, v52, v49, 0, v53);
  sub_1000159AC(v55, &qword_100176B20, &qword_10011F080);
  v99 = *v108;
  v94[0] = v86;
  v94[1] = v85;
  v95 = 1;
  *v96 = v110[0];
  *&v96[3] = *(v110 + 3);
  v97 = v84;
  v98 = v83;
  v100 = *&v108[8];
  *v101 = *&v108[16];
  *&v101[15] = *(&v108[23] + 1);
  v102 = v82;
  *v103 = *v109;
  *&v103[3] = *&v109[3];
  v104 = v81;
  v105 = 0;
  v106 = 0;
  v107 = 0;
  return sub_1000159AC(v94, &qword_100176B30, &qword_10011F090);
}

uint64_t sub_1000B7298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a6;
  v11 = type metadata accessor for DeviceLockState();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v49 - v16;
  v18 = sub_1000077C8(&qword_100176AE8, &qword_10011EFF8);
  __chkstk_darwin(v18 - 8);
  v51 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v49 - v21;
  *v22 = static HorizontalAlignment.leading.getter();
  *(v22 + 1) = 0;
  v22[16] = 0;
  v23 = sub_1000077C8(&qword_100176AF0, &qword_10011F000);
  sub_1000B774C(a2, a3, a4, a5, &v22[*(v23 + 44)]);
  v24 = type metadata accessor for AirDropAskRequestView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  (*(v12 + 104))(v14, enum case for DeviceLockState.unlocked(_:), v11);
  LOBYTE(a4) = static DeviceLockState.== infix(_:_:)();
  v25 = *(v12 + 8);
  v25(v14, v11);
  v25(v17, v11);
  if (a4)
  {
    v49 = *(a1 + *(v24 + 24));
    type metadata accessor for AirDropTransferSession(0);
    sub_1000C9AAC(&qword_100173460, type metadata accessor for AirDropTransferSession, &unk_10011D344);

    v26 = ObservedObject.init(wrappedValue:)();
    v28 = v27;
    v29 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    LOBYTE(v58[0]) = 0;
    v38 = v29;
    v39 = 1;
  }

  else
  {
    v26 = 0;
    v28 = 0;
    v39 = 0;
    v38 = 0;
    v49 = 0;
    v31 = 0;
    v33 = 0;
    v35 = 0;
    v37 = 0;
  }

  v40 = v51;
  sub_100007BA4(v22, v51, &qword_100176AE8, &qword_10011EFF8);
  v41 = v50;
  sub_100007BA4(v40, v50, &qword_100176AE8, &qword_10011EFF8);
  v42 = (v41 + *(sub_1000077C8(&qword_100176AF8, &qword_10011F008) + 48));
  *&v52 = v26;
  *(&v52 + 1) = v28;
  v43 = v28;
  v44 = v26;
  v45 = v49;
  v53 = v49;
  v54 = 0;
  *&v55 = v39;
  *(&v55 + 1) = v39;
  *&v56 = v38;
  *(&v56 + 1) = v31;
  *v57 = v33;
  *&v57[8] = v35;
  *&v57[16] = v37;
  v57[24] = 0;
  v46 = v49;
  *v42 = v52;
  v42[1] = v46;
  v47 = v56;
  v42[2] = v55;
  v42[3] = v47;
  v42[4] = *v57;
  *(v42 + 73) = *&v57[9];
  sub_100007BA4(&v52, v58, &qword_100176B00, &unk_10011F010);
  sub_1000159AC(v22, &qword_100176AE8, &qword_10011EFF8);
  v58[0] = v44;
  v58[1] = v43;
  v58[2] = v45;
  v58[3] = 0;
  v58[4] = v39;
  v58[5] = v39;
  v58[6] = v38;
  v58[7] = v31;
  v58[8] = v33;
  v58[9] = v35;
  v58[10] = v37;
  v59 = 0;
  sub_1000159AC(v58, &qword_100176B00, &unk_10011F010);
  return sub_1000159AC(v40, &qword_100176AE8, &qword_10011EFF8);
}

uint64_t sub_1000B774C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v55 = a4;
  v56 = a3;
  v54 = a2;
  v8 = type metadata accessor for Font.TextStyle();
  v51 = *(v8 - 8);
  v52 = v8;
  __chkstk_darwin(v8);
  v50 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AirDropDescriptionView(0);
  __chkstk_darwin(v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1000077C8(&qword_100174138, &unk_10011AE80);
  __chkstk_darwin(v53);
  v61 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v45 - v15;
  __chkstk_darwin(v17);
  v60 = &v45 - v18;
  type metadata accessor for AirDropAskRequestView(0);
  type metadata accessor for AirDropTransferSession(0);
  sub_1000C9AAC(&qword_100173460, type metadata accessor for AirDropTransferSession, &unk_10011D344);

  v19 = ObservedObject.init(wrappedValue:)();
  v58 = v20;
  v59 = v19;
  v57 = [objc_allocWithZone(UIColor) initWithRed:0.043 green:0.608 blue:1.0 alpha:1.0];
  if (qword_100172140 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v62 = v80;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *(v74 + 7) = *&v74[7];
  *(&v74[2] + 7) = *&v74[9];
  *(&v74[4] + 7) = *&v74[11];
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v48 = v76;
  v49 = v74[13];
  v46 = v79;
  v47 = v78;
  v90 = 1;
  v89 = v75;
  v88 = v77;
  v21 = qword_1001721B8;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_10017F258;
  *&v80 = 0x402C000000000000;
  (*(v51 + 104))(v50, enum case for Font.TextStyle.subheadline(_:), v52);
  sub_10004A578();

  ScaledMetric.init(wrappedValue:relativeTo:)();
  v23 = &v12[v10[5]];
  v24 = v55;
  v25 = v56;
  *v23 = v54;
  v23[1] = v25;
  v26 = &v12[v10[6]];
  *v26 = v24;
  *(v26 + 1) = a5;
  *(v26 + 2) = v22;
  *(v26 + 3) = 0;
  v26[32] = 1;
  *&v12[v10[7]] = 0x3FE0000000000000;

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000C8DD8(v12, v16, type metadata accessor for AirDropDescriptionView);
  v27 = &v16[*(v53 + 36)];
  v28 = v85;
  *(v27 + 4) = v84;
  *(v27 + 5) = v28;
  *(v27 + 6) = v86;
  v29 = v81;
  *v27 = v80;
  *(v27 + 1) = v29;
  v30 = v83;
  *(v27 + 2) = v82;
  *(v27 + 3) = v30;
  v31 = v60;
  sub_100021A84(v16, v60, &qword_100174138, &unk_10011AE80);
  LOBYTE(v22) = v90;
  v32 = v89;
  v33 = v88;
  v34 = v61;
  sub_100007BA4(v31, v61, &qword_100174138, &unk_10011AE80);
  v36 = v58;
  v35 = v59;
  *&v63 = v59;
  *(&v63 + 1) = v58;
  LOBYTE(v64) = 1;
  *(&v64 + 1) = *v87;
  DWORD1(v64) = *&v87[3];
  v37 = v57;
  *(&v64 + 1) = v57;
  v65[0] = v62;
  *&v65[1] = *v74;
  *&v65[17] = *&v74[2];
  *&v65[33] = *&v74[4];
  v38 = *(&v74[5] + 7);
  *&v65[48] = *(&v74[5] + 7);
  v39 = *&v65[16];
  *(a6 + 32) = *v65;
  *(a6 + 48) = v39;
  *(a6 + 64) = *&v65[32];
  v40 = v64;
  *a6 = v63;
  *(a6 + 16) = v40;
  *(a6 + 80) = v38;
  *(a6 + 88) = 0;
  *(a6 + 96) = v22;
  v41 = v48;
  *(a6 + 104) = v49;
  *(a6 + 112) = v32;
  *(a6 + 120) = v41;
  *(a6 + 128) = v33;
  v42 = v46;
  *(a6 + 136) = v47;
  *(a6 + 144) = v42;
  v43 = sub_1000077C8(&qword_100176B08, &qword_10011F068);
  sub_100007BA4(v34, a6 + *(v43 + 64), &qword_100174138, &unk_10011AE80);
  sub_100007BA4(&v63, v66, &qword_100176B10, &qword_10011F070);
  sub_1000159AC(v31, &qword_100174138, &unk_10011AE80);
  sub_1000159AC(v34, &qword_100174138, &unk_10011AE80);
  v71 = *v74;
  v66[0] = v35;
  v66[1] = v36;
  v67 = 1;
  *v68 = *v87;
  *&v68[3] = *&v87[3];
  v69 = v37;
  v70 = v62;
  v72 = *&v74[2];
  *v73 = *&v74[4];
  *&v73[15] = *(&v74[5] + 7);
  return sub_1000159AC(v66, &qword_100176B10, &qword_10011F070);
}

uint64_t sub_1000B7DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v91 = a3;
  v99 = a4;
  v6 = sub_1000077C8(&qword_1001769E8, &qword_10011EE58);
  v92 = *(v6 - 8);
  v93 = v6;
  __chkstk_darwin(v6);
  v89 = &v76 - v7;
  v8 = sub_1000077C8(&qword_1001769F0, &qword_10011EE60);
  __chkstk_darwin(v8 - 8);
  v98 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v95 = &v76 - v11;
  v12 = sub_1000077C8(&qword_100176DA0, &qword_10011F2D0);
  v96 = *(v12 - 8);
  v97 = v12;
  __chkstk_darwin(v12);
  v94 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v103 = &v76 - v15;
  v16 = type metadata accessor for AirDropUIButtonStyle.Style();
  v84 = *(v16 - 8);
  v85 = v16;
  __chkstk_darwin(v16);
  v83 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AirDropUIButtonStyle();
  v87 = *(v18 - 8);
  v88 = v18;
  __chkstk_darwin(v18);
  v86 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SFAirDrop.DeclineAction();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for AirDropAskRequestView(0);
  v100 = *(v79 - 8);
  __chkstk_darwin(v79);
  v101 = v24;
  v25 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1000077C8(&qword_1001772A0, &qword_10011FB10);
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v78 = &v76 - v26;
  v90 = sub_1000077C8(&qword_1001769C8, &qword_10011EE30);
  v27 = *(v90 - 8);
  __chkstk_darwin(v90);
  v80 = &v76 - v28;
  v29 = sub_1000077C8(&qword_1001769D0, &unk_10011EE38);
  __chkstk_darwin(v29 - 8);
  v102 = &v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v76 - v32;
  if (SFAirDrop.DeclineAction.hidden.getter())
  {
    (*(v27 + 56))(v33, 1, 1, v90);
    v34 = a2;
    v35 = v25;
  }

  else
  {
    sub_1000C83E8(a2, v25);
    (*(v21 + 16))(&v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v20);
    v36 = (*(v100 + 80) + 16) & ~*(v100 + 80);
    v37 = *(v21 + 80);
    v77 = v27;
    v35 = v25;
    v38 = a2;
    v39 = (v101 + v37 + v36) & ~v37;
    v40 = swift_allocObject();
    sub_1000C8DD8(v35, v40 + v36, type metadata accessor for AirDropAskRequestView);
    v41 = (*(v21 + 32))(v40 + v39, v23, v20);
    __chkstk_darwin(v41);
    v42 = v78;
    Button.init(action:label:)();
    if (*(v38 + *(v79 + 24)))
    {
      v43 = &enum case for AirDropUIButtonStyle.Style.jindoDefault(_:);
    }

    else
    {
      v43 = &enum case for AirDropUIButtonStyle.Style.nonJindo(_:);
    }

    (*(v84 + 104))(v83, *v43, v85);
    v44 = v86;
    AirDropUIButtonStyle.init(style:)();
    sub_1000199C8(&qword_1001772C0, &qword_1001772A0, &qword_10011FB10, &protocol conformance descriptor for Button<A>);
    sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle, &protocol conformance descriptor for AirDropUIButtonStyle);
    v45 = v80;
    v46 = v82;
    v47 = v88;
    View.buttonStyle<A>(_:)();
    (*(v87 + 8))(v44, v47);
    (*(v81 + 8))(v42, v46);
    v48 = v77;
    v49 = v90;
    (*(v77 + 32))(v33, v45, v90);
    (*(v48 + 56))(v33, 0, 1, v49);
    v34 = v38;
  }

  v50 = v33;
  v104 = v91;
  sub_1000C83E8(v34, v35);
  v51 = (*(v100 + 80) + 16) & ~*(v100 + 80);
  v52 = swift_allocObject();
  sub_1000C8DD8(v35, v52 + v51, type metadata accessor for AirDropAskRequestView);

  v53 = sub_1000077C8(&qword_100176DA8, &unk_10011F2D8);
  v54 = type metadata accessor for UUID();
  v55 = sub_1000077C8(&qword_100176A08, &qword_10011EE78);
  v56 = sub_1000199C8(&qword_100176DB0, &qword_100176DA8, &unk_10011F2D8, &protocol conformance descriptor for [A]);
  v57 = sub_1000C8488();
  v58 = sub_1000199C8(&qword_100176DB8, &unk_100172F90, &qword_100118CE0, &protocol conformance descriptor for SFAirDrop.AcceptAction<A>);
  ForEach<>.init(_:content:)(&v104, sub_1000C9778, v52, v53, v54, v55, v56, v57, v58);
  if (sub_1000ACDD0())
  {
    v59 = v89;
    sub_1000BE958(v89);
    v61 = v92;
    v60 = v93;
    v62 = v95;
    (*(v92 + 32))(v95, v59, v93);
    v63 = 0;
  }

  else
  {
    v63 = 1;
    v62 = v95;
    v61 = v92;
    v60 = v93;
  }

  (*(v61 + 56))(v62, v63, 1, v60);
  v64 = v102;
  sub_100007BA4(v33, v102, &qword_1001769D0, &unk_10011EE38);
  v65 = v62;
  v66 = v96;
  v67 = v97;
  v68 = *(v96 + 16);
  v69 = v94;
  v70 = v103;
  v68(v94, v103, v97);
  v71 = v98;
  sub_100007BA4(v65, v98, &qword_1001769F0, &qword_10011EE60);
  v101 = v50;
  v72 = v99;
  sub_100007BA4(v64, v99, &qword_1001769D0, &unk_10011EE38);
  v73 = sub_1000077C8(&qword_100176DC8, &qword_10011F320);
  v68((v72 + *(v73 + 48)), v69, v67);
  sub_100007BA4(v71, v72 + *(v73 + 64), &qword_1001769F0, &qword_10011EE60);
  sub_1000159AC(v65, &qword_1001769F0, &qword_10011EE60);
  v74 = *(v66 + 8);
  v74(v70, v67);
  sub_1000159AC(v101, &qword_1001769D0, &unk_10011EE38);
  sub_1000159AC(v71, &qword_1001769F0, &qword_10011EE60);
  v74(v69, v67);
  return sub_1000159AC(v102, &qword_1001769D0, &unk_10011EE38);
}

uint64_t sub_1000B8974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v91 = a3;
  v99 = a4;
  v6 = sub_1000077C8(&qword_1001769E8, &qword_10011EE58);
  v92 = *(v6 - 8);
  v93 = v6;
  __chkstk_darwin(v6);
  v89 = &v76 - v7;
  v8 = sub_1000077C8(&qword_1001769F0, &qword_10011EE60);
  __chkstk_darwin(v8 - 8);
  v98 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v95 = &v76 - v11;
  v12 = sub_1000077C8(&qword_1001769F8, &qword_10011EE68);
  v96 = *(v12 - 8);
  v97 = v12;
  __chkstk_darwin(v12);
  v94 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v103 = &v76 - v15;
  v16 = type metadata accessor for AirDropUIButtonStyle.Style();
  v84 = *(v16 - 8);
  v85 = v16;
  __chkstk_darwin(v16);
  v83 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AirDropUIButtonStyle();
  v87 = *(v18 - 8);
  v88 = v18;
  __chkstk_darwin(v18);
  v86 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SFAirDrop.DeclineAction();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for AirDropAskRequestView(0);
  v100 = *(v79 - 8);
  __chkstk_darwin(v79);
  v101 = v24;
  v25 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1000077C8(&qword_1001772A0, &qword_10011FB10);
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v78 = &v76 - v26;
  v90 = sub_1000077C8(&qword_1001769C8, &qword_10011EE30);
  v27 = *(v90 - 8);
  __chkstk_darwin(v90);
  v80 = &v76 - v28;
  v29 = sub_1000077C8(&qword_1001769D0, &unk_10011EE38);
  __chkstk_darwin(v29 - 8);
  v102 = &v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v76 - v32;
  if (SFAirDrop.DeclineAction.hidden.getter())
  {
    (*(v27 + 56))(v33, 1, 1, v90);
    v34 = a2;
    v35 = v25;
  }

  else
  {
    sub_1000C83E8(a2, v25);
    (*(v21 + 16))(&v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v20);
    v36 = (*(v100 + 80) + 16) & ~*(v100 + 80);
    v37 = *(v21 + 80);
    v77 = v27;
    v35 = v25;
    v38 = a2;
    v39 = (v101 + v37 + v36) & ~v37;
    v40 = swift_allocObject();
    sub_1000C8DD8(v35, v40 + v36, type metadata accessor for AirDropAskRequestView);
    v41 = (*(v21 + 32))(v40 + v39, v23, v20);
    __chkstk_darwin(v41);
    v42 = v78;
    Button.init(action:label:)();
    if (*(v38 + *(v79 + 24)))
    {
      v43 = &enum case for AirDropUIButtonStyle.Style.jindoDefault(_:);
    }

    else
    {
      v43 = &enum case for AirDropUIButtonStyle.Style.nonJindo(_:);
    }

    (*(v84 + 104))(v83, *v43, v85);
    v44 = v86;
    AirDropUIButtonStyle.init(style:)();
    sub_1000199C8(&qword_1001772C0, &qword_1001772A0, &qword_10011FB10, &protocol conformance descriptor for Button<A>);
    sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle, &protocol conformance descriptor for AirDropUIButtonStyle);
    v45 = v80;
    v46 = v82;
    v47 = v88;
    View.buttonStyle<A>(_:)();
    (*(v87 + 8))(v44, v47);
    (*(v81 + 8))(v42, v46);
    v48 = v77;
    v49 = v90;
    (*(v77 + 32))(v33, v45, v90);
    (*(v48 + 56))(v33, 0, 1, v49);
    v34 = v38;
  }

  v50 = v33;
  v104 = v91;
  sub_1000C83E8(v34, v35);
  v51 = (*(v100 + 80) + 16) & ~*(v100 + 80);
  v52 = swift_allocObject();
  sub_1000C8DD8(v35, v52 + v51, type metadata accessor for AirDropAskRequestView);

  v53 = sub_1000077C8(&qword_100176A00, &qword_10011EE70);
  v54 = type metadata accessor for UUID();
  v55 = sub_1000077C8(&qword_100176A08, &qword_10011EE78);
  v56 = sub_1000199C8(&qword_100176A10, &qword_100176A00, &qword_10011EE70, &protocol conformance descriptor for [A]);
  v57 = sub_1000C8488();
  v58 = sub_1000199C8(&qword_100176A40, &qword_100176A48, &qword_10011EE90, &protocol conformance descriptor for SFAirDrop.AcceptAction<A>);
  ForEach<>.init(_:content:)(&v104, sub_1000C8E40, v52, v53, v54, v55, v56, v57, v58);
  if (sub_1000ACDD0())
  {
    v59 = v89;
    sub_1000BE958(v89);
    v61 = v92;
    v60 = v93;
    v62 = v95;
    (*(v92 + 32))(v95, v59, v93);
    v63 = 0;
  }

  else
  {
    v63 = 1;
    v62 = v95;
    v61 = v92;
    v60 = v93;
  }

  (*(v61 + 56))(v62, v63, 1, v60);
  v64 = v102;
  sub_100007BA4(v33, v102, &qword_1001769D0, &unk_10011EE38);
  v65 = v62;
  v66 = v96;
  v67 = v97;
  v68 = *(v96 + 16);
  v69 = v94;
  v70 = v103;
  v68(v94, v103, v97);
  v71 = v98;
  sub_100007BA4(v65, v98, &qword_1001769F0, &qword_10011EE60);
  v101 = v50;
  v72 = v99;
  sub_100007BA4(v64, v99, &qword_1001769D0, &unk_10011EE38);
  v73 = sub_1000077C8(&qword_100176B18, &qword_10011F078);
  v68((v72 + *(v73 + 48)), v69, v67);
  sub_100007BA4(v71, v72 + *(v73 + 64), &qword_1001769F0, &qword_10011EE60);
  sub_1000159AC(v65, &qword_1001769F0, &qword_10011EE60);
  v74 = *(v66 + 8);
  v74(v70, v67);
  sub_1000159AC(v101, &qword_1001769D0, &unk_10011EE38);
  sub_1000159AC(v71, &qword_1001769F0, &qword_10011EE60);
  v74(v69, v67);
  return sub_1000159AC(v102, &qword_1001769D0, &unk_10011EE38);
}

uint64_t sub_1000B94F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v91 = a3;
  v99 = a4;
  v6 = sub_1000077C8(&qword_1001769E8, &qword_10011EE58);
  v92 = *(v6 - 8);
  v93 = v6;
  __chkstk_darwin(v6);
  v89 = &v76 - v7;
  v8 = sub_1000077C8(&qword_1001769F0, &qword_10011EE60);
  __chkstk_darwin(v8 - 8);
  v98 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v95 = &v76 - v11;
  v12 = sub_1000077C8(&qword_100176C48, &qword_10011F180);
  v96 = *(v12 - 8);
  v97 = v12;
  __chkstk_darwin(v12);
  v94 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v103 = &v76 - v15;
  v16 = type metadata accessor for AirDropUIButtonStyle.Style();
  v84 = *(v16 - 8);
  v85 = v16;
  __chkstk_darwin(v16);
  v83 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AirDropUIButtonStyle();
  v87 = *(v18 - 8);
  v88 = v18;
  __chkstk_darwin(v18);
  v86 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SFAirDrop.DeclineAction();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for AirDropAskRequestView(0);
  v100 = *(v79 - 8);
  __chkstk_darwin(v79);
  v101 = v24;
  v25 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1000077C8(&qword_1001772A0, &qword_10011FB10);
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v78 = &v76 - v26;
  v90 = sub_1000077C8(&qword_1001769C8, &qword_10011EE30);
  v27 = *(v90 - 8);
  __chkstk_darwin(v90);
  v80 = &v76 - v28;
  v29 = sub_1000077C8(&qword_1001769D0, &unk_10011EE38);
  __chkstk_darwin(v29 - 8);
  v102 = &v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v76 - v32;
  if (SFAirDrop.DeclineAction.hidden.getter())
  {
    (*(v27 + 56))(v33, 1, 1, v90);
    v34 = a2;
    v35 = v25;
  }

  else
  {
    sub_1000C83E8(a2, v25);
    (*(v21 + 16))(&v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v20);
    v36 = (*(v100 + 80) + 16) & ~*(v100 + 80);
    v37 = *(v21 + 80);
    v77 = v27;
    v35 = v25;
    v38 = a2;
    v39 = (v101 + v37 + v36) & ~v37;
    v40 = swift_allocObject();
    sub_1000C8DD8(v35, v40 + v36, type metadata accessor for AirDropAskRequestView);
    v41 = (*(v21 + 32))(v40 + v39, v23, v20);
    __chkstk_darwin(v41);
    v42 = v78;
    Button.init(action:label:)();
    if (*(v38 + *(v79 + 24)))
    {
      v43 = &enum case for AirDropUIButtonStyle.Style.jindoDefault(_:);
    }

    else
    {
      v43 = &enum case for AirDropUIButtonStyle.Style.nonJindo(_:);
    }

    (*(v84 + 104))(v83, *v43, v85);
    v44 = v86;
    AirDropUIButtonStyle.init(style:)();
    sub_1000199C8(&qword_1001772C0, &qword_1001772A0, &qword_10011FB10, &protocol conformance descriptor for Button<A>);
    sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle, &protocol conformance descriptor for AirDropUIButtonStyle);
    v45 = v80;
    v46 = v82;
    v47 = v88;
    View.buttonStyle<A>(_:)();
    (*(v87 + 8))(v44, v47);
    (*(v81 + 8))(v42, v46);
    v48 = v77;
    v49 = v90;
    (*(v77 + 32))(v33, v45, v90);
    (*(v48 + 56))(v33, 0, 1, v49);
    v34 = v38;
  }

  v50 = v33;
  v104 = v91;
  sub_1000C83E8(v34, v35);
  v51 = (*(v100 + 80) + 16) & ~*(v100 + 80);
  v52 = swift_allocObject();
  sub_1000C8DD8(v35, v52 + v51, type metadata accessor for AirDropAskRequestView);

  v53 = sub_1000077C8(&qword_100176C50, &qword_10011F188);
  v54 = type metadata accessor for UUID();
  v55 = sub_1000077C8(&qword_100176A08, &qword_10011EE78);
  v56 = sub_1000199C8(&qword_100176C58, &qword_100176C50, &qword_10011F188, &protocol conformance descriptor for [A]);
  v57 = sub_1000C8488();
  v58 = sub_1000199C8(&qword_100176C60, &qword_100176C68, &qword_10011F190, &protocol conformance descriptor for SFAirDrop.AcceptAction<A>);
  ForEach<>.init(_:content:)(&v104, sub_1000C9228, v52, v53, v54, v55, v56, v57, v58);
  if (sub_1000ACDD0())
  {
    v59 = v89;
    sub_1000BE958(v89);
    v61 = v92;
    v60 = v93;
    v62 = v95;
    (*(v92 + 32))(v95, v59, v93);
    v63 = 0;
  }

  else
  {
    v63 = 1;
    v62 = v95;
    v61 = v92;
    v60 = v93;
  }

  (*(v61 + 56))(v62, v63, 1, v60);
  v64 = v102;
  sub_100007BA4(v33, v102, &qword_1001769D0, &unk_10011EE38);
  v65 = v62;
  v66 = v96;
  v67 = v97;
  v68 = *(v96 + 16);
  v69 = v94;
  v70 = v103;
  v68(v94, v103, v97);
  v71 = v98;
  sub_100007BA4(v65, v98, &qword_1001769F0, &qword_10011EE60);
  v101 = v50;
  v72 = v99;
  sub_100007BA4(v64, v99, &qword_1001769D0, &unk_10011EE38);
  v73 = sub_1000077C8(&qword_100176C98, &qword_10011F1E0);
  v68((v72 + *(v73 + 48)), v69, v67);
  sub_100007BA4(v71, v72 + *(v73 + 64), &qword_1001769F0, &qword_10011EE60);
  sub_1000159AC(v65, &qword_1001769F0, &qword_10011EE60);
  v74 = *(v66 + 8);
  v74(v70, v67);
  sub_1000159AC(v101, &qword_1001769D0, &unk_10011EE38);
  sub_1000159AC(v71, &qword_1001769F0, &qword_10011EE60);
  v74(v69, v67);
  return sub_1000159AC(v102, &qword_1001769D0, &unk_10011EE38);
}

uint64_t sub_1000BA074(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDrop.DeclineAction();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  if (qword_100172220 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100007D20(v8, qword_100176610);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "User declined AirDrop", v11, 2u);
  }

  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  (*(v3 + 16))(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  (*(v3 + 32))(v14 + v13, &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  static Task<>.noThrow(priority:operation:)();

  return sub_1000159AC(v7, &qword_100172F50, &qword_10011E500);
}

uint64_t sub_1000BA320@<X0>(_TtC9AirDropUI33AirDropTransferSessionsController *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v140 = a1;
  v141 = a2;
  v146 = a3;
  v144 = sub_1000077C8(&qword_100176A68, &qword_10011EF10);
  __chkstk_darwin(v144);
  v145 = (&v120 - v3);
  v138 = sub_1000077C8(&qword_100176A70, &qword_10011EF18);
  __chkstk_darwin(v138);
  v5 = (&v120 - v4);
  v143 = sub_1000077C8(&qword_100176A28, &qword_10011EE80);
  __chkstk_darwin(v143);
  v139 = &v120 - v6;
  v130 = type metadata accessor for AirDropUIButtonStyle.Style();
  v128 = *(v130 - 8);
  __chkstk_darwin(v130);
  v131 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for AirDropUIButtonStyle();
  v133 = *(v136 - 8);
  __chkstk_darwin(v136);
  v132 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for AirDropAskRequestView(0);
  v124 = *(v127 - 8);
  v9 = *(v124 + 64);
  __chkstk_darwin(v127);
  v125 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_1000077C8(&qword_100176A30, &qword_10011EE88);
  v129 = *(v135 - 8);
  __chkstk_darwin(v135);
  v126 = &v120 - v10;
  v137 = sub_1000077C8(&qword_100176A78, &qword_10011EF20);
  v134 = *(v137 - 8);
  __chkstk_darwin(v137);
  v12 = &v120 - v11;
  v13 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  v14 = *(v13 - 8);
  v15 = v14[8];
  __chkstk_darwin(v13);
  v123 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v120 - v17;
  v19 = sub_1000077C8(&unk_100172F90, &qword_100118CE0);
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v120 - v22;
  (*(v20 + 16))(&v120 - v22, v140, v19, v21);
  v24 = (*(v20 + 88))(v23, v19);
  v142 = v23;
  if (v24 == enum case for SFAirDrop.AcceptAction.single<A>(_:))
  {
    v122 = v12;
    v140 = v5;
    (*(v20 + 96))(v23, v19);
    v25 = v14[4];
    v25(v18, v23, v13);
    v26 = v125;
    sub_1000C83E8(v141, v125);
    v121 = v14;
    v28 = v14 + 2;
    v27 = v14[2];
    v29 = v123;
    v27(v123, v18, v13);
    v30 = (*(v124 + 80) + 16) & ~*(v124 + 80);
    v31 = (v9 + v30 + *(v28 + 64)) & ~*(v28 + 64);
    v32 = swift_allocObject();
    sub_1000C8DD8(v26, v32 + v30, type metadata accessor for AirDropAskRequestView);
    v33 = (v25)(v32 + v31, v29, v13);
    __chkstk_darwin(v33);
    v34 = v141;
    sub_1000077C8(&qword_100176A98, &qword_10011EF40);
    sub_1000C8848();
    v35 = v126;
    Button.init(action:label:)();
    v36 = *(v34 + *(v127 + 24));
    v37 = (v128 + 104);
    v120 = v18;
    if (v36)
    {
      if (SFAirDrop.AcceptAction.Single.prominent.getter())
      {
        v38 = &enum case for AirDropUIButtonStyle.Style.jindoAccept(_:);
      }

      else
      {
        v38 = &enum case for AirDropUIButtonStyle.Style.jindoDefault(_:);
      }

      (*v37)(v131, *v38, v130);
    }

    else
    {
      (*v37)(v131, enum case for AirDropUIButtonStyle.Style.nonJindo(_:), v130);
    }

    v109 = v140;
    v110 = v122;
    v141 = *(sub_1000077C8(&qword_100173CC8, &qword_10011A330) + 48);
    v111 = v132;
    AirDropUIButtonStyle.init(style:)();
    v112 = sub_1000199C8(&qword_100176A38, &qword_100176A30, &qword_10011EE88, &protocol conformance descriptor for Button<A>);
    v113 = sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle, &protocol conformance descriptor for AirDropUIButtonStyle);
    v115 = v135;
    v114 = v136;
    View.buttonStyle<A>(_:)();
    (*(v133 + 8))(v111, v114);
    (*(v129 + 8))(v35, v115);
    v116 = v134;
    v117 = v137;
    (*(v134 + 16))(v109, v110, v137);
    swift_storeEnumTagMultiPayload();
    v147 = v115;
    v148 = v114;
    v149 = v112;
    v150 = v113;
    swift_getOpaqueTypeConformance2();
    v118 = v139;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v118, v145, &qword_100176A28, &qword_10011EE80);
    swift_storeEnumTagMultiPayload();
    sub_1000C8514();
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v118, &qword_100176A28, &qword_10011EE80);
    (*(v116 + 8))(v110, v117);
    (v121[1])(v120, v13);
    v119 = type metadata accessor for UUID();
    return (*(*(v119 - 8) + 8))(&v142[v141], v119);
  }

  else if (v24 == enum case for SFAirDrop.AcceptAction.composite<A>(_:))
  {
    (*(v20 + 96))(v23, v19);
    v141 = *(sub_1000077C8(&qword_100175310, &qword_10011CF58) + 48);
    LocalizedStringKey.init(stringLiteral:)();
    v39 = Text.init(_:tableName:bundle:comment:)();
    v41 = v40;
    v42 = v5;
    v44 = v43;
    v46 = v45;
    v147 = static Color.red.getter();
    v47 = Text.foregroundStyle<A>(_:)();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    sub_10004BBC8(v39, v41, (v44 & 1), v52, v54, v55, v56, v57);

    v46, v58, v59, v60, v61, v62, v63, v64;
    v42->super.isa = v47;
    *v42->listener = v49;
    v42->connection[0] = v51 & 1;
    *v42->airdropClient = v53;
    v140 = v53;
    swift_storeEnumTagMultiPayload();
    sub_100078974(v47, v49, v51 & 1);
    v65 = sub_1000199C8(&qword_100176A38, &qword_100176A30, &qword_10011EE88, &protocol conformance descriptor for Button<A>);
    v66 = sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle, &protocol conformance descriptor for AirDropUIButtonStyle);

    v147 = v135;
    v148 = v136;
    v149 = v65;
    v150 = v66;
    swift_getOpaqueTypeConformance2();
    v67 = v139;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v67, v145, &qword_100176A28, &qword_10011EE80);
    swift_storeEnumTagMultiPayload();
    sub_1000C8514();
    _ConditionalContent<>.init(storage:)();
    sub_10004BBC8(v47, v49, (v51 & 1), v68, v69, v70, v71, v72);
    v140, v73, v74, v75, v76, v77, v78, v79;
    sub_1000159AC(v67, &qword_100176A28, &qword_10011EE80);
    v80 = type metadata accessor for UUID();
    v81 = v142;
    (*(*(v80 - 8) + 8))(&v142[v141], v80);
    v82 = sub_1000077C8(&qword_100175278, &unk_10011F2F0);
    return (*(*(v82 - 8) + 8))(v81, v82);
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    v84 = Text.init(_:tableName:bundle:comment:)();
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v147 = static Color.red.getter();
    v91 = Text.foregroundStyle<A>(_:)();
    v93 = v92;
    v95 = v94;
    v141 = v96;
    sub_10004BBC8(v84, v86, (v88 & 1), v96, v97, v98, v99, v100);

    v90, v101, v102, v103, v104, v105, v106, v107;
    v108 = v145;
    *v145 = v91;
    v108[1] = v93;
    *(v108 + 16) = v95 & 1;
    v108[3] = v141;
    swift_storeEnumTagMultiPayload();
    sub_1000C8514();
    _ConditionalContent<>.init(storage:)();
    return (*(v20 + 8))(v142, v19);
  }
}

uint64_t sub_1000BB144@<X0>(_TtC9AirDropUI33AirDropTransferSessionsController *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v140 = a1;
  v141 = a2;
  v146 = a3;
  v144 = sub_1000077C8(&qword_100176A68, &qword_10011EF10);
  __chkstk_darwin(v144);
  v145 = (&v120 - v3);
  v138 = sub_1000077C8(&qword_100176A70, &qword_10011EF18);
  __chkstk_darwin(v138);
  v5 = (&v120 - v4);
  v143 = sub_1000077C8(&qword_100176A28, &qword_10011EE80);
  __chkstk_darwin(v143);
  v139 = &v120 - v6;
  v130 = type metadata accessor for AirDropUIButtonStyle.Style();
  v128 = *(v130 - 8);
  __chkstk_darwin(v130);
  v131 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for AirDropUIButtonStyle();
  v133 = *(v136 - 8);
  __chkstk_darwin(v136);
  v132 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for AirDropAskRequestView(0);
  v124 = *(v127 - 8);
  v9 = *(v124 + 64);
  __chkstk_darwin(v127);
  v125 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_1000077C8(&qword_100176A30, &qword_10011EE88);
  v129 = *(v135 - 8);
  __chkstk_darwin(v135);
  v126 = &v120 - v10;
  v137 = sub_1000077C8(&qword_100176A78, &qword_10011EF20);
  v134 = *(v137 - 8);
  __chkstk_darwin(v137);
  v12 = &v120 - v11;
  v13 = sub_1000077C8(&qword_100176A80, &qword_10011EF28);
  v14 = *(v13 - 8);
  v15 = v14[8];
  __chkstk_darwin(v13);
  v123 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v120 - v17;
  v19 = sub_1000077C8(&qword_100176A48, &qword_10011EE90);
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v120 - v22;
  (*(v20 + 16))(&v120 - v22, v140, v19, v21);
  v24 = (*(v20 + 88))(v23, v19);
  v142 = v23;
  if (v24 == enum case for SFAirDrop.AcceptAction.single<A>(_:))
  {
    v122 = v12;
    v140 = v5;
    (*(v20 + 96))(v23, v19);
    v25 = v14[4];
    v25(v18, v23, v13);
    v26 = v125;
    sub_1000C83E8(v141, v125);
    v121 = v14;
    v28 = v14 + 2;
    v27 = v14[2];
    v29 = v123;
    v27(v123, v18, v13);
    v30 = (*(v124 + 80) + 16) & ~*(v124 + 80);
    v31 = (v9 + v30 + *(v28 + 64)) & ~*(v28 + 64);
    v32 = swift_allocObject();
    sub_1000C8DD8(v26, v32 + v30, type metadata accessor for AirDropAskRequestView);
    v33 = (v25)(v32 + v31, v29, v13);
    __chkstk_darwin(v33);
    v34 = v141;
    sub_1000077C8(&qword_100176A98, &qword_10011EF40);
    sub_1000C8848();
    v35 = v126;
    Button.init(action:label:)();
    v36 = *(v34 + *(v127 + 24));
    v37 = (v128 + 104);
    v120 = v18;
    if (v36)
    {
      if (SFAirDrop.AcceptAction.Single.prominent.getter())
      {
        v38 = &enum case for AirDropUIButtonStyle.Style.jindoAccept(_:);
      }

      else
      {
        v38 = &enum case for AirDropUIButtonStyle.Style.jindoDefault(_:);
      }

      (*v37)(v131, *v38, v130);
    }

    else
    {
      (*v37)(v131, enum case for AirDropUIButtonStyle.Style.nonJindo(_:), v130);
    }

    v109 = v140;
    v110 = v122;
    v141 = *(sub_1000077C8(&qword_100176AD8, &qword_10011EF68) + 48);
    v111 = v132;
    AirDropUIButtonStyle.init(style:)();
    v112 = sub_1000199C8(&qword_100176A38, &qword_100176A30, &qword_10011EE88, &protocol conformance descriptor for Button<A>);
    v113 = sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle, &protocol conformance descriptor for AirDropUIButtonStyle);
    v115 = v135;
    v114 = v136;
    View.buttonStyle<A>(_:)();
    (*(v133 + 8))(v111, v114);
    (*(v129 + 8))(v35, v115);
    v116 = v134;
    v117 = v137;
    (*(v134 + 16))(v109, v110, v137);
    swift_storeEnumTagMultiPayload();
    v147 = v115;
    v148 = v114;
    v149 = v112;
    v150 = v113;
    swift_getOpaqueTypeConformance2();
    v118 = v139;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v118, v145, &qword_100176A28, &qword_10011EE80);
    swift_storeEnumTagMultiPayload();
    sub_1000C8514();
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v118, &qword_100176A28, &qword_10011EE80);
    (*(v116 + 8))(v110, v117);
    (v121[1])(v120, v13);
    v119 = type metadata accessor for UUID();
    return (*(*(v119 - 8) + 8))(&v142[v141], v119);
  }

  else if (v24 == enum case for SFAirDrop.AcceptAction.composite<A>(_:))
  {
    (*(v20 + 96))(v23, v19);
    v141 = *(sub_1000077C8(&qword_100176A88, &qword_10011EF30) + 48);
    LocalizedStringKey.init(stringLiteral:)();
    v39 = Text.init(_:tableName:bundle:comment:)();
    v41 = v40;
    v42 = v5;
    v44 = v43;
    v46 = v45;
    v147 = static Color.red.getter();
    v47 = Text.foregroundStyle<A>(_:)();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    sub_10004BBC8(v39, v41, (v44 & 1), v52, v54, v55, v56, v57);

    v46, v58, v59, v60, v61, v62, v63, v64;
    v42->super.isa = v47;
    *v42->listener = v49;
    v42->connection[0] = v51 & 1;
    *v42->airdropClient = v53;
    v140 = v53;
    swift_storeEnumTagMultiPayload();
    sub_100078974(v47, v49, v51 & 1);
    v65 = sub_1000199C8(&qword_100176A38, &qword_100176A30, &qword_10011EE88, &protocol conformance descriptor for Button<A>);
    v66 = sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle, &protocol conformance descriptor for AirDropUIButtonStyle);

    v147 = v135;
    v148 = v136;
    v149 = v65;
    v150 = v66;
    swift_getOpaqueTypeConformance2();
    v67 = v139;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v67, v145, &qword_100176A28, &qword_10011EE80);
    swift_storeEnumTagMultiPayload();
    sub_1000C8514();
    _ConditionalContent<>.init(storage:)();
    sub_10004BBC8(v47, v49, (v51 & 1), v68, v69, v70, v71, v72);
    v140, v73, v74, v75, v76, v77, v78, v79;
    sub_1000159AC(v67, &qword_100176A28, &qword_10011EE80);
    v80 = type metadata accessor for UUID();
    v81 = v142;
    (*(*(v80 - 8) + 8))(&v142[v141], v80);
    v82 = sub_1000077C8(&qword_100176A90, &qword_10011EF38);
    return (*(*(v82 - 8) + 8))(v81, v82);
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    v84 = Text.init(_:tableName:bundle:comment:)();
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v147 = static Color.red.getter();
    v91 = Text.foregroundStyle<A>(_:)();
    v93 = v92;
    v95 = v94;
    v141 = v96;
    sub_10004BBC8(v84, v86, (v88 & 1), v96, v97, v98, v99, v100);

    v90, v101, v102, v103, v104, v105, v106, v107;
    v108 = v145;
    *v145 = v91;
    v108[1] = v93;
    *(v108 + 16) = v95 & 1;
    v108[3] = v141;
    swift_storeEnumTagMultiPayload();
    sub_1000C8514();
    _ConditionalContent<>.init(storage:)();
    return (*(v20 + 8))(v142, v19);
  }
}

uint64_t sub_1000BBF68@<X0>(_TtC9AirDropUI33AirDropTransferSessionsController *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v140 = a1;
  v141 = a2;
  v146 = a3;
  v144 = sub_1000077C8(&qword_100176A68, &qword_10011EF10);
  __chkstk_darwin(v144);
  v145 = (&v120 - v3);
  v138 = sub_1000077C8(&qword_100176A70, &qword_10011EF18);
  __chkstk_darwin(v138);
  v5 = (&v120 - v4);
  v143 = sub_1000077C8(&qword_100176A28, &qword_10011EE80);
  __chkstk_darwin(v143);
  v139 = &v120 - v6;
  v130 = type metadata accessor for AirDropUIButtonStyle.Style();
  v128 = *(v130 - 8);
  __chkstk_darwin(v130);
  v131 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for AirDropUIButtonStyle();
  v133 = *(v136 - 8);
  __chkstk_darwin(v136);
  v132 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for AirDropAskRequestView(0);
  v124 = *(v127 - 8);
  v9 = *(v124 + 64);
  __chkstk_darwin(v127);
  v125 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_1000077C8(&qword_100176A30, &qword_10011EE88);
  v129 = *(v135 - 8);
  __chkstk_darwin(v135);
  v126 = &v120 - v10;
  v137 = sub_1000077C8(&qword_100176A78, &qword_10011EF20);
  v134 = *(v137 - 8);
  __chkstk_darwin(v137);
  v12 = &v120 - v11;
  v13 = sub_1000077C8(&qword_100176C78, &qword_10011F1A0);
  v14 = *(v13 - 8);
  v15 = v14[8];
  __chkstk_darwin(v13);
  v123 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v120 - v17;
  v19 = sub_1000077C8(&qword_100176C68, &qword_10011F190);
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v120 - v22;
  (*(v20 + 16))(&v120 - v22, v140, v19, v21);
  v24 = (*(v20 + 88))(v23, v19);
  v142 = v23;
  if (v24 == enum case for SFAirDrop.AcceptAction.single<A>(_:))
  {
    v122 = v12;
    v140 = v5;
    (*(v20 + 96))(v23, v19);
    v25 = v14[4];
    v25(v18, v23, v13);
    v26 = v125;
    sub_1000C83E8(v141, v125);
    v121 = v14;
    v28 = v14 + 2;
    v27 = v14[2];
    v29 = v123;
    v27(v123, v18, v13);
    v30 = (*(v124 + 80) + 16) & ~*(v124 + 80);
    v31 = (v9 + v30 + *(v28 + 64)) & ~*(v28 + 64);
    v32 = swift_allocObject();
    sub_1000C8DD8(v26, v32 + v30, type metadata accessor for AirDropAskRequestView);
    v33 = (v25)(v32 + v31, v29, v13);
    __chkstk_darwin(v33);
    v34 = v141;
    sub_1000077C8(&qword_100176A98, &qword_10011EF40);
    sub_1000C8848();
    v35 = v126;
    Button.init(action:label:)();
    v36 = *(v34 + *(v127 + 24));
    v37 = (v128 + 104);
    v120 = v18;
    if (v36)
    {
      if (SFAirDrop.AcceptAction.Single.prominent.getter())
      {
        v38 = &enum case for AirDropUIButtonStyle.Style.jindoAccept(_:);
      }

      else
      {
        v38 = &enum case for AirDropUIButtonStyle.Style.jindoDefault(_:);
      }

      (*v37)(v131, *v38, v130);
    }

    else
    {
      (*v37)(v131, enum case for AirDropUIButtonStyle.Style.nonJindo(_:), v130);
    }

    v109 = v140;
    v110 = v122;
    v141 = *(sub_1000077C8(&qword_100176C90, &qword_10011F1B8) + 48);
    v111 = v132;
    AirDropUIButtonStyle.init(style:)();
    v112 = sub_1000199C8(&qword_100176A38, &qword_100176A30, &qword_10011EE88, &protocol conformance descriptor for Button<A>);
    v113 = sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle, &protocol conformance descriptor for AirDropUIButtonStyle);
    v115 = v135;
    v114 = v136;
    View.buttonStyle<A>(_:)();
    (*(v133 + 8))(v111, v114);
    (*(v129 + 8))(v35, v115);
    v116 = v134;
    v117 = v137;
    (*(v134 + 16))(v109, v110, v137);
    swift_storeEnumTagMultiPayload();
    v147 = v115;
    v148 = v114;
    v149 = v112;
    v150 = v113;
    swift_getOpaqueTypeConformance2();
    v118 = v139;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v118, v145, &qword_100176A28, &qword_10011EE80);
    swift_storeEnumTagMultiPayload();
    sub_1000C8514();
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v118, &qword_100176A28, &qword_10011EE80);
    (*(v116 + 8))(v110, v117);
    (v121[1])(v120, v13);
    v119 = type metadata accessor for UUID();
    return (*(*(v119 - 8) + 8))(&v142[v141], v119);
  }

  else if (v24 == enum case for SFAirDrop.AcceptAction.composite<A>(_:))
  {
    (*(v20 + 96))(v23, v19);
    v141 = *(sub_1000077C8(&qword_100176C80, &qword_10011F1A8) + 48);
    LocalizedStringKey.init(stringLiteral:)();
    v39 = Text.init(_:tableName:bundle:comment:)();
    v41 = v40;
    v42 = v5;
    v44 = v43;
    v46 = v45;
    v147 = static Color.red.getter();
    v47 = Text.foregroundStyle<A>(_:)();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    sub_10004BBC8(v39, v41, (v44 & 1), v52, v54, v55, v56, v57);

    v46, v58, v59, v60, v61, v62, v63, v64;
    v42->super.isa = v47;
    *v42->listener = v49;
    v42->connection[0] = v51 & 1;
    *v42->airdropClient = v53;
    v140 = v53;
    swift_storeEnumTagMultiPayload();
    sub_100078974(v47, v49, v51 & 1);
    v65 = sub_1000199C8(&qword_100176A38, &qword_100176A30, &qword_10011EE88, &protocol conformance descriptor for Button<A>);
    v66 = sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle, &protocol conformance descriptor for AirDropUIButtonStyle);

    v147 = v135;
    v148 = v136;
    v149 = v65;
    v150 = v66;
    swift_getOpaqueTypeConformance2();
    v67 = v139;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v67, v145, &qword_100176A28, &qword_10011EE80);
    swift_storeEnumTagMultiPayload();
    sub_1000C8514();
    _ConditionalContent<>.init(storage:)();
    sub_10004BBC8(v47, v49, (v51 & 1), v68, v69, v70, v71, v72);
    v140, v73, v74, v75, v76, v77, v78, v79;
    sub_1000159AC(v67, &qword_100176A28, &qword_10011EE80);
    v80 = type metadata accessor for UUID();
    v81 = v142;
    (*(*(v80 - 8) + 8))(&v142[v141], v80);
    v82 = sub_1000077C8(&qword_100176C88, &qword_10011F1B0);
    return (*(*(v82 - 8) + 8))(v81, v82);
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    v84 = Text.init(_:tableName:bundle:comment:)();
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v147 = static Color.red.getter();
    v91 = Text.foregroundStyle<A>(_:)();
    v93 = v92;
    v95 = v94;
    v141 = v96;
    sub_10004BBC8(v84, v86, (v88 & 1), v96, v97, v98, v99, v100);

    v90, v101, v102, v103, v104, v105, v106, v107;
    v108 = v145;
    *v145 = v91;
    v108[1] = v93;
    *(v108 + 16) = v95 & 1;
    v108[3] = v141;
    swift_storeEnumTagMultiPayload();
    sub_1000C8514();
    _ConditionalContent<>.init(storage:)();
    return (*(v20 + 8))(v142, v19);
  }
}

uint64_t sub_1000BCD8C(uint64_t a1)
{
  v2 = v1;
  v49 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  v4 = *(v49 - 8);
  __chkstk_darwin(v49);
  v6 = &v45 - v5;
  v7 = type metadata accessor for AirDropAskRequestView(0);
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  __chkstk_darwin(v7);
  v47 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v9 - 8);
  v11 = &v45 - v10;
  v48 = a1;
  if (sub_1000C3F50(a1, &unk_100173C98, &unk_10011A300) == 0xD000000000000010 && 0x8000000100124D20 == v12)
  {
    v12, v12, v13, 0x8000000100124D20, v14, v15, v16, v17;
  }

  else
  {
    v18 = v12;
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v18, v20, v21, v22, v23, v24, v25, v26;
    if ((v19 & 1) == 0)
    {
LABEL_6:
      if (qword_100172220 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100007D20(v27, qword_100176610);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "User accepted AirDrop", v30, 2u);
      }

      v31 = type metadata accessor for TaskPriority();
      (*(*(v31 - 8) + 56))(v11, 1, 1, v31);
      v32 = v49;
      (*(v4 + 16))(v6, v48, v49);
      v33 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v34 = swift_allocObject();
      (*(v4 + 32))(v34 + v33, v6, v32);
      goto LABEL_16;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v50)
  {
    goto LABEL_6;
  }

  if (qword_100172220 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_100007D20(v35, qword_100176610);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "User chose to show sensitive content", v38, 2u);
  }

  v39 = type metadata accessor for TaskPriority();
  (*(*(v39 - 8) + 56))(v11, 1, 1, v39);
  v40 = v47;
  sub_1000C83E8(v2, v47);
  v41 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v42 = swift_allocObject();
  sub_1000C8DD8(v40, v42 + v41, type metadata accessor for AirDropAskRequestView);
  v43 = swift_allocObject();
  *(v43 + 16) = &unk_10011F310;
  *(v43 + 24) = v42;
LABEL_16:
  static Task<>.noThrow(priority:operation:)();

  return sub_1000159AC(v11, &qword_100172F50, &qword_10011E500);
}

uint64_t sub_1000BD32C(uint64_t a1)
{
  v2 = v1;
  v49 = sub_1000077C8(&qword_100176A80, &qword_10011EF28);
  v4 = *(v49 - 8);
  __chkstk_darwin(v49);
  v6 = &v45 - v5;
  v7 = type metadata accessor for AirDropAskRequestView(0);
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  __chkstk_darwin(v7);
  v47 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v9 - 8);
  v11 = &v45 - v10;
  v48 = a1;
  if (sub_1000C3F50(a1, &qword_100176A80, &qword_10011EF28) == 0xD000000000000010 && 0x8000000100124D20 == v12)
  {
    v12, v12, v13, 0x8000000100124D20, v14, v15, v16, v17;
  }

  else
  {
    v18 = v12;
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v18, v20, v21, v22, v23, v24, v25, v26;
    if ((v19 & 1) == 0)
    {
LABEL_6:
      if (qword_100172220 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100007D20(v27, qword_100176610);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "User accepted AirDrop", v30, 2u);
      }

      v31 = type metadata accessor for TaskPriority();
      (*(*(v31 - 8) + 56))(v11, 1, 1, v31);
      v32 = v49;
      (*(v4 + 16))(v6, v48, v49);
      v33 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v34 = swift_allocObject();
      (*(v4 + 32))(v34 + v33, v6, v32);
      goto LABEL_16;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v50)
  {
    goto LABEL_6;
  }

  if (qword_100172220 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_100007D20(v35, qword_100176610);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "User chose to show sensitive content", v38, 2u);
  }

  v39 = type metadata accessor for TaskPriority();
  (*(*(v39 - 8) + 56))(v11, 1, 1, v39);
  v40 = v47;
  sub_1000C83E8(v2, v47);
  v41 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v42 = swift_allocObject();
  sub_1000C8DD8(v40, v42 + v41, type metadata accessor for AirDropAskRequestView);
  v43 = swift_allocObject();
  *(v43 + 16) = &unk_10011EFD8;
  *(v43 + 24) = v42;
LABEL_16:
  static Task<>.noThrow(priority:operation:)();

  return sub_1000159AC(v11, &qword_100172F50, &qword_10011E500);
}