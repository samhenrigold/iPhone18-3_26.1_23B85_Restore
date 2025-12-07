uint64_t sub_10010EAA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10010EAF0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000A5418;

  return sub_10010CC80(v2, v3, v5, v4);
}

uint64_t sub_10010EBB0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000A5418;

  return sub_10010C8BC(v2, v3, v4, v5, v6);
}

uint64_t sub_10010EC78()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_10010C55C(v2, v3, v4);
}

uint64_t sub_10010ED2C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *(v5 + 163) = a5;
  *(v5 + 144) = a2;
  *(v5 + 152) = a4;
  *(v5 + 162) = a3;
  *(v5 + 136) = a1;

  return _swift_task_switch(sub_10010EDC8, 0, 0);
}

uint64_t sub_10010EDC8()
{
  v89 = v0;
  *(v0 + 40) = 0;
  v1 = *(v0 + 136);
  *(v0 + 48) = 0;
  v2 = sub_1000CEAB4(v1, *(v0 + 162), &_mh_execute_header);
  swift_beginAccess();
  os_activity_scope_enter(v2, (v0 + 40));
  swift_endAccess();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Checking for first unlock.", v5, 2u);
  }

  v6 = MKBUserUnlockedSinceBoot();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  v9 = os_log_type_enabled(v7, v8);
  if (v6)
  {
    if (v9)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v88 = v11;
      *v10 = 136446210;
      v12 = StaticString.description.getter();
      v14 = sub_1000A2E68(v12, v13, &v88);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v7, v8, "Device does not have the simplified_agent feature flag enabled. ScreenTimeAgent shouldn't run the DaemonActivity for %{public}s", v10, 0xCu);
      sub_1000A462C(v11);
    }

    v15 = 1;
  }

  else
  {
    if (v9)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Device has not been unlocked, and STAgent has been called. The caller will receive an error.", v16, 2u);
    }

    v15 = 0;
  }

  sub_1000A0F2C(&qword_1001E3658, &qword_100143780);
  sub_10010A23C(&qword_1001E3660, &qword_1001E3658, &qword_100143780);
  v17 = swift_allocError();
  *v18 = v15;
  swift_willThrow();
  swift_beginAccess();
  os_activity_scope_leave((v0 + 40));
  swift_endAccess();
  swift_unknownObjectRelease();
  *(v0 + 104) = v17;
  swift_errorRetain();
  sub_1000A0F2C(&unk_1001E1110, &unk_100140900);
  sub_1000A0F2C(&qword_1001E3658, &qword_100143780);
  if (swift_dynamicCast() && (*(v0 + 160) & 1) == 0)
  {

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "ScreenTimeAgent was started before first unlock. An error will be returned to our caller.", v36, 2u);
    }

    v37 = *(v0 + 152);

    swift_allocError();
    *v38 = 0;
    swift_willThrow();
    v39 = type metadata accessor for Logger();
    (*(*(v39 - 8) + 8))(v37, v39);
    goto LABEL_44;
  }

  *(v0 + 112) = v17;
  type metadata accessor for DataStore.DataStoreError(0);
  v19 = swift_task_alloc();
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 37)
    {

      v20 = *v19;
      v21 = *v19;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v86 = v20;
        v24 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v88 = v84;
        *v24 = 136446466;
        v25 = StaticString.description.getter();
        v27 = sub_1000A2E68(v25, v26, &v88);

        *(v24 + 4) = v27;
        v20 = v86;
        *(v24 + 12) = 2114;
        sub_10010EAA8(&qword_1001E2A08, type metadata accessor for DataStore.DataStoreError, &unk_100142AB0);
        swift_allocError();
        *v28 = v86;
        swift_storeEnumTagMultiPayload();
        v29 = v21;
        v30 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 14) = v30;
        *v82 = v30;
        _os_log_impl(&_mh_execute_header, v22, v23, "DaemonActivity %{public}s failed with unknown user: %{public}@", v24, 0x16u);
        sub_1000A5148(v82, &unk_1001E1820, &qword_100140020);

        sub_1000A462C(v84);
      }

      v31 = *(v0 + 152);
      sub_10010EAA8(&qword_1001E2A08, type metadata accessor for DataStore.DataStoreError, &unk_100142AB0);
      swift_allocError();
      *v32 = v20;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v33 = type metadata accessor for Logger();
      (*(*(v33 - 8) + 8))(v31, v33);

LABEL_44:

      goto LABEL_45;
    }

    sub_10010A020(v19);
  }

  *(v0 + 120) = v17;
  swift_errorRetain();
  if (swift_dynamicCast() && (*(v0 + 161) & 1) == 0)
  {

    if (qword_1001E7008)
    {
      v50 = qword_1001E7008;
    }

    else
    {
      sub_1000D3FA4();
      v50 = swift_allocError();
      *v72 = 0;
    }

    swift_errorRetain();
    swift_errorRetain();
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v75 = 138412290;
      swift_errorRetain();
      v77 = _swift_stdlib_bridgeErrorToNSError();
      *(v75 + 4) = v77;
      *v76 = v77;
      _os_log_impl(&_mh_execute_header, v73, v74, "The preflight error %@ did not result in a TTR.", v75, 0xCu);
      sub_1000A5148(v76, &unk_1001E1820, &qword_100140020);
    }

    v78 = *(v0 + 152);

    sub_10010C040(v50);
    swift_willThrow();

    v79 = type metadata accessor for Logger();
    (*(*(v79 - 8) + 8))(v78, v79);
    goto LABEL_44;
  }

  *(v0 + 128) = v17;
  v40 = swift_task_alloc();
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 22)
    {

      v42 = *v40;
      v41 = v40[1];

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v88 = v46;
        *v45 = 136315138;
        *(v45 + 4) = sub_1000A2E68(v42, v41, &v88);
        _os_log_impl(&_mh_execute_header, v43, v44, "askForTime response handling did not find ask request identifier %s", v45, 0xCu);
        sub_1000A462C(v46);
      }

      v47 = *(v0 + 152);
      sub_10010EAA8(&qword_1001E2A08, type metadata accessor for DataStore.DataStoreError, &unk_100142AB0);
      swift_allocError();
      *v48 = v42;
      v48[1] = v41;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v49 = type metadata accessor for Logger();
      (*(*(v49 - 8) + 8))(v47, v49);

      goto LABEL_44;
    }

    sub_10010A020(v40);
  }

  swift_errorRetain();
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v88 = v55;
    *v53 = 136446466;
    v56 = StaticString.description.getter();
    v58 = sub_1000A2E68(v56, v57, &v88);

    *(v53 + 4) = v58;
    *(v53 + 12) = 2114;
    swift_errorRetain();
    v59 = _swift_stdlib_bridgeErrorToNSError();
    *(v53 + 14) = v59;
    *v54 = v59;
    _os_log_impl(&_mh_execute_header, v51, v52, "DaemonActivity %{public}s failed with: %{public}@.", v53, 0x16u);
    sub_1000A5148(v54, &unk_1001E1820, &qword_100140020);

    sub_1000A462C(v55);
  }

  if ((*(v0 + 163) & 1) == 0 && &class metadata base offset for TapToRadarService && &type metadata accessor for TapToRadarService && &nominal type descriptor for TapToRadarService && &type metadata for TapToRadarService)
  {
    v87 = *(v0 + 162);
    v60 = *(v0 + 152);
    v83 = *(v0 + 136);
    v85 = *(v0 + 144);
    sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
    v61 = swift_task_alloc();
    v62 = type metadata accessor for TaskPriority();
    (*(*(v62 - 8) + 56))(v61, 1, 1, v62);
    v63 = type metadata accessor for Logger();
    v64 = *(v63 - 8);
    v65 = *(v64 + 64);
    v66 = swift_task_alloc();
    (*(v64 + 16))(v66, v60, v63);
    v67 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = 0;
    *(v68 + 24) = 0;
    (*(v64 + 32))(v68 + v67, v66, v63);
    v69 = v68 + ((v67 + v65 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v69 = v83;
    *(v69 + 8) = v85;
    *(v69 + 16) = v87;
    *(v68 + ((v67 + v65 + 31) & 0xFFFFFFFFFFFFFFF8)) = v17;

    swift_errorRetain();
    sub_1000A2630(0, 0, v61, &unk_100143B38, v68);
  }

  v70 = *(v0 + 152);
  sub_10010C040(v17);
  swift_willThrow();

  v71 = type metadata accessor for Logger();
  (*(*(v71 - 8) + 8))(v70, v71);
LABEL_45:
  v80 = *(v0 + 8);

  return v80(0);
}

uint64_t sub_10010FC5C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *(v5 + 163) = a5;
  *(v5 + 144) = a2;
  *(v5 + 152) = a4;
  *(v5 + 162) = a3;
  *(v5 + 136) = a1;

  return _swift_task_switch(sub_10010FCF8, 0, 0);
}

uint64_t sub_10010FCF8()
{
  v89 = v0;
  *(v0 + 40) = 0;
  v1 = *(v0 + 136);
  *(v0 + 48) = 0;
  v2 = sub_1000CEAB4(v1, *(v0 + 162), &_mh_execute_header);
  swift_beginAccess();
  os_activity_scope_enter(v2, (v0 + 40));
  swift_endAccess();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Checking for first unlock.", v5, 2u);
  }

  v6 = MKBUserUnlockedSinceBoot();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  v9 = os_log_type_enabled(v7, v8);
  if (v6)
  {
    if (v9)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v88 = v11;
      *v10 = 136446210;
      v12 = StaticString.description.getter();
      v14 = sub_1000A2E68(v12, v13, &v88);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v7, v8, "Device does not have the simplified_agent feature flag enabled. ScreenTimeAgent shouldn't run the DaemonActivity for %{public}s", v10, 0xCu);
      sub_1000A462C(v11);
    }

    v15 = 1;
  }

  else
  {
    if (v9)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Device has not been unlocked, and STAgent has been called. The caller will receive an error.", v16, 2u);
    }

    v15 = 0;
  }

  sub_1000A0F2C(&qword_1001E38A8, &qword_100143B18);
  sub_10010A23C(&qword_1001E38B0, &qword_1001E38A8, &qword_100143B18);
  v17 = swift_allocError();
  *v18 = v15;
  swift_willThrow();
  swift_beginAccess();
  os_activity_scope_leave((v0 + 40));
  swift_endAccess();
  swift_unknownObjectRelease();
  *(v0 + 104) = v17;
  swift_errorRetain();
  sub_1000A0F2C(&unk_1001E1110, &unk_100140900);
  sub_1000A0F2C(&qword_1001E38A8, &qword_100143B18);
  if (swift_dynamicCast() && (*(v0 + 160) & 1) == 0)
  {

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "ScreenTimeAgent was started before first unlock. An error will be returned to our caller.", v36, 2u);
    }

    v37 = *(v0 + 152);

    swift_allocError();
    *v38 = 0;
    swift_willThrow();
    v39 = type metadata accessor for Logger();
    (*(*(v39 - 8) + 8))(v37, v39);
    goto LABEL_44;
  }

  *(v0 + 112) = v17;
  type metadata accessor for DataStore.DataStoreError(0);
  v19 = swift_task_alloc();
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 37)
    {

      v20 = *v19;
      v21 = *v19;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v86 = v20;
        v24 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v88 = v84;
        *v24 = 136446466;
        v25 = StaticString.description.getter();
        v27 = sub_1000A2E68(v25, v26, &v88);

        *(v24 + 4) = v27;
        v20 = v86;
        *(v24 + 12) = 2114;
        sub_10010EAA8(&qword_1001E2A08, type metadata accessor for DataStore.DataStoreError, &unk_100142AB0);
        swift_allocError();
        *v28 = v86;
        swift_storeEnumTagMultiPayload();
        v29 = v21;
        v30 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 14) = v30;
        *v82 = v30;
        _os_log_impl(&_mh_execute_header, v22, v23, "DaemonActivity %{public}s failed with unknown user: %{public}@", v24, 0x16u);
        sub_1000A5148(v82, &unk_1001E1820, &qword_100140020);

        sub_1000A462C(v84);
      }

      v31 = *(v0 + 152);
      sub_10010EAA8(&qword_1001E2A08, type metadata accessor for DataStore.DataStoreError, &unk_100142AB0);
      swift_allocError();
      *v32 = v20;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v33 = type metadata accessor for Logger();
      (*(*(v33 - 8) + 8))(v31, v33);

LABEL_44:

      goto LABEL_45;
    }

    sub_10010A020(v19);
  }

  *(v0 + 120) = v17;
  swift_errorRetain();
  if (swift_dynamicCast() && (*(v0 + 161) & 1) == 0)
  {

    if (qword_1001E7008)
    {
      v50 = qword_1001E7008;
    }

    else
    {
      sub_1000D3FA4();
      v50 = swift_allocError();
      *v72 = 0;
    }

    swift_errorRetain();
    swift_errorRetain();
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v75 = 138412290;
      swift_errorRetain();
      v77 = _swift_stdlib_bridgeErrorToNSError();
      *(v75 + 4) = v77;
      *v76 = v77;
      _os_log_impl(&_mh_execute_header, v73, v74, "The preflight error %@ did not result in a TTR.", v75, 0xCu);
      sub_1000A5148(v76, &unk_1001E1820, &qword_100140020);
    }

    v78 = *(v0 + 152);

    sub_10010C040(v50);
    swift_willThrow();

    v79 = type metadata accessor for Logger();
    (*(*(v79 - 8) + 8))(v78, v79);
    goto LABEL_44;
  }

  *(v0 + 128) = v17;
  v40 = swift_task_alloc();
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 22)
    {

      v42 = *v40;
      v41 = v40[1];

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v88 = v46;
        *v45 = 136315138;
        *(v45 + 4) = sub_1000A2E68(v42, v41, &v88);
        _os_log_impl(&_mh_execute_header, v43, v44, "askForTime response handling did not find ask request identifier %s", v45, 0xCu);
        sub_1000A462C(v46);
      }

      v47 = *(v0 + 152);
      sub_10010EAA8(&qword_1001E2A08, type metadata accessor for DataStore.DataStoreError, &unk_100142AB0);
      swift_allocError();
      *v48 = v42;
      v48[1] = v41;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v49 = type metadata accessor for Logger();
      (*(*(v49 - 8) + 8))(v47, v49);

      goto LABEL_44;
    }

    sub_10010A020(v40);
  }

  swift_errorRetain();
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v88 = v55;
    *v53 = 136446466;
    v56 = StaticString.description.getter();
    v58 = sub_1000A2E68(v56, v57, &v88);

    *(v53 + 4) = v58;
    *(v53 + 12) = 2114;
    swift_errorRetain();
    v59 = _swift_stdlib_bridgeErrorToNSError();
    *(v53 + 14) = v59;
    *v54 = v59;
    _os_log_impl(&_mh_execute_header, v51, v52, "DaemonActivity %{public}s failed with: %{public}@.", v53, 0x16u);
    sub_1000A5148(v54, &unk_1001E1820, &qword_100140020);

    sub_1000A462C(v55);
  }

  if ((*(v0 + 163) & 1) == 0 && &class metadata base offset for TapToRadarService && &type metadata accessor for TapToRadarService && &nominal type descriptor for TapToRadarService && &type metadata for TapToRadarService)
  {
    v87 = *(v0 + 162);
    v60 = *(v0 + 152);
    v83 = *(v0 + 136);
    v85 = *(v0 + 144);
    sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
    v61 = swift_task_alloc();
    v62 = type metadata accessor for TaskPriority();
    (*(*(v62 - 8) + 56))(v61, 1, 1, v62);
    v63 = type metadata accessor for Logger();
    v64 = *(v63 - 8);
    v65 = *(v64 + 64);
    v66 = swift_task_alloc();
    (*(v64 + 16))(v66, v60, v63);
    v67 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = 0;
    *(v68 + 24) = 0;
    (*(v64 + 32))(v68 + v67, v66, v63);
    v69 = v68 + ((v67 + v65 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v69 = v83;
    *(v69 + 8) = v85;
    *(v69 + 16) = v87;
    *(v68 + ((v67 + v65 + 31) & 0xFFFFFFFFFFFFFFF8)) = v17;

    swift_errorRetain();
    sub_1000A2630(0, 0, v61, &unk_100143B20, v68);
  }

  v70 = *(v0 + 152);
  sub_10010C040(v17);
  swift_willThrow();

  v71 = type metadata accessor for Logger();
  (*(*(v71 - 8) + 8))(v70, v71);
LABEL_45:
  v80 = *(v0 + 8);

  return v80();
}

void sub_100110B8C()
{
  v3 = +[NSAssertionHandler currentHandler];
  v0 = [NSString stringWithUTF8String:"int main(int, const char * _Nonnull *)"];
  v1 = __error();
  v2 = [NSString stringWithUTF8String:strerror(*v1)];
  [v3 handleFailureInFunction:v0 file:@"main.m" lineNumber:36 description:{@"Failed to set temporary directory: %@ (%d)", v2, *__error()}];
}

void sub_100110C4C()
{
  v3 = +[NSAssertionHandler currentHandler];
  v0 = [NSString stringWithUTF8String:"int main(int, const char * _Nonnull *)"];
  v1 = __error();
  v2 = [NSString stringWithUTF8String:strerror(*v1)];
  [v3 handleFailureInFunction:v0 file:@"main.m" lineNumber:37 description:{@"Failed to create temporary directory: %@ (%d)", v2, *__error()}];
}

void sub_100110D0C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  sub_100006030(&_mh_execute_header, a2, a3, "CK account info error: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100110D78(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  sub_100006030(&_mh_execute_header, a2, a3, "Failed to reload account state: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100110DE4()
{
  sub_10000604C(__stack_chk_guard);
  LODWORD(v7) = 138543362;
  *(&v7 + 4) = v0;
  sub_100006030(&_mh_execute_header, v1, v2, "CK account info error: %{public}@", v3, v4, v5, v6, v7, DWORD2(v7));
}

void sub_100110E50()
{
  sub_10000604C(__stack_chk_guard);
  LODWORD(v7) = 138543362;
  *(&v7 + 4) = v0;
  sub_100006030(&_mh_execute_header, v1, v2, "Family fetch error: %{public}@", v3, v4, v5, v6, v7, DWORD2(v7));
}

void sub_100110EBC(uint64_t a1, void *a2, NSObject *a3)
{
  v4 = 138543618;
  v5 = a1;
  v6 = 1024;
  v7 = [a2 processIdentifier];
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "%{public}@ connection received from process %d", &v4, 0x12u);
}

void sub_100110F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"STAgentListenerDelegate.m" lineNumber:67 description:{@"Unexpected Mach service name %@", a3}];
}

void sub_100110FD0()
{
  sub_100006438();
  v4 = @"com.apple.private.contacts";
  v5 = v0;
  v6 = @"com.apple.private.contactsui";
  v7 = v0;
  v8 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Client %{public}@ does not have a required entitlement: any of %{public}@, %{public}@, %{public}@", v3, 0x2Au);
}

void sub_10011106C()
{
  sub_100006438();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Client %{public}@ does not have required %{public}@ entitlement", v2, 0x16u);
}

void sub_100111154(void *a1, NSObject *a2)
{
  v3 = 138543618;
  v4 = STAskMachServiceName;
  v5 = 1024;
  v6 = [a1 processIdentifier];
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%{public}@ connection received from process %d", &v3, 0x12u);
}

void sub_1001111F8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Client %{public}@ does not have required %{public}@ entitlement", &v3, 0x16u);
}

void sub_100111280()
{
  sub_100011708();
  sub_10001173C();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
}

void sub_1001113C8()
{
  sub_1000116CC();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100111580(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  sub_1000116D8(&_mh_execute_header, a3, a3, "Could not deserialize incoming ask for time request: %{public}@", a2);
}

void sub_1001115D0()
{
  sub_1000116F0();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001117AC(void *a1, NSObject *a2)
{
  v3 = [a1 payloadDictionary];
  sub_1000116CC();
  sub_1000116D8(&_mh_execute_header, a2, v4, "Could not deserialize incoming ask for time response: %@", v5);
}

void sub_100111878()
{
  sub_1000116CC();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001118E8(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  sub_1000116D8(&_mh_execute_header, a3, a3, "Unable to get requested resouce name for request: %{public}@", a2);
}

void sub_100111AD8(id *a1, NSObject *a2)
{
  v3 = [*a1 payloadDictionary];
  sub_1000116CC();
  sub_1000116D8(&_mh_execute_header, a2, v4, "Could not deserialize incoming v2 ask response: %{public}@", v5);
}

void sub_100111B68()
{
  sub_100011708();
  sub_10001173C();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
}

void sub_100111E50(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = *a1;
  sub_100011720(&_mh_execute_header, a2, a3, "Failed to fetch blueprints: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100111EC0()
{
  sub_1000116CC();
  sub_10001173C();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
}

void sub_100111FAC(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = [*(a1 + 32) requestIdentifier];
  sub_1000116CC();
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to fetch catergory for resource identifier: %{public}@ with error: %{public}@", v6, 0x16u);
}

void sub_10011205C()
{
  sub_1000116CC();
  sub_10001173C();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
}

void sub_100112148()
{
  sub_1000116F0();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001121C4()
{
  sub_1000116F0();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100112268(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to serialize value to data: %{public}@", &v2, 0xCu);
}

void sub_1001122E0(void *a1, uint64_t a2, NSObject *a3)
{
  [a1 valueClass];
  sub_100006438();
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to unarchive value of class: %{public}@ : %{public}@", v5, 0x16u);
}

void sub_100112370()
{
  sub_100006438();
  v2 = 0;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Failed to unarchive value for key: %{public}@ : %{public}@", v1, 0x16u);
}

void sub_1001123E8(uint64_t a1)
{
  v4 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"[STConcreteContactStorePrimitives numberOfContactsForOpaqueFamilyMember:]"];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  [v4 handleFailureInFunction:v1 file:@"STConcreteContactStorePrimitives.m" lineNumber:30 description:{@"expected FAFamilyMember got %@", v3}];
}

void sub_100112494(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to get number of contacts: %{public}@", &v2, 0xCu);
}

void sub_100112590(void *a1)
{
  LODWORD(v7) = 134217984;
  *(&v7 + 4) = [a1 count];
  sub_100014414(&_mh_execute_header, v1, v2, "Processing %lu modified objectIDs", v3, v4, v5, v6, v7, DWORD2(v7));
}

void sub_100112644(void *a1)
{
  LODWORD(v7) = 134217984;
  *(&v7 + 4) = [a1 count];
  sub_100014414(&_mh_execute_header, v1, v2, "Processing %lu deletions", v3, v4, v5, v6, v7, DWORD2(v7));
}

void sub_1001126D4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[STConcreteFamilyCirclePrimitives _startObservingFamilyChangeNotificationsOnQueue:]";
  sub_100006030(&_mh_execute_header, a1, a3, "[v2] %{public}s: \nFailed to register for iCloud account change notifications", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10011274C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[STConcreteFamilyCirclePrimitives _startObservingFamilyChangeNotificationsOnQueue:]";
  sub_100006030(&_mh_execute_header, a1, a3, "[v2] %{public}s: \nFailed to register for Family Circle change notifications", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1001127C4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[STConcreteFamilyCirclePrimitives _stopObservingFamilyChangeNotifications]";
  sub_100006030(&_mh_execute_header, a1, a3, "[v2] %{public}s: \nFailed to unregister for iCloud account change notifications", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10011283C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[STConcreteFamilyCirclePrimitives _stopObservingFamilyChangeNotifications]";
  sub_100006030(&_mh_execute_header, a1, a3, "[v2] %{public}s: \nFailed to unregister for Family Circle change notifications", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1001128B4(os_log_t log)
{
  v1 = 136446210;
  v2 = "[STConcreteIDSTransportPrimitives _sendData:toDestinations:options:]";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "[v2] %{public}s: \nprimativeIdentifierResult.type == STResultTypeFailure", &v1, 0xCu);
}

void sub_100112938()
{
  v6 = 136446466;
  sub_10001932C();
  sub_10001934C(&_mh_execute_header, v0, v1, "[v2] %{public}s: \nFailed to send data. error: %{public}@", v2, v3, v4, v5, v6);
}

void sub_1001129AC()
{
  LODWORD(v2) = 136446722;
  *(&v2 + 4) = "[STConcreteIDSTransportPrimitives _sendOversizedData:toDestinations:sendOptions:]";
  sub_100019340();
  sub_100019368(&_mh_execute_header, v0, v1, "[v2] %{public}s: \nFailed writing oversized data to url: %@, \nerror: %{public}@", v2, DWORD2(v2));
}

void sub_100112A34()
{
  v6 = 136446466;
  sub_10001932C();
  sub_10001934C(&_mh_execute_header, v0, v1, "[v2] %{public}s: \nFailed to send oversized data: %{public}@", v2, v3, v4, v5, v6);
}

void sub_100112AA8()
{
  v6 = 136446466;
  sub_10001932C();
  sub_10001934C(&_mh_execute_header, v0, v1, "[v2] %{public}s: \nFailed to cleanup and delete oversized data resource: %{public}@", v2, v3, v4, v5, v6);
}

void sub_100112B1C(os_log_t log)
{
  v1 = 136446210;
  v2 = "[STConcreteIDSTransportPrimitives addObserver:forReachabilityChangesOfPrimitiveDestinations:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[v2] %{public}s: \nUnable to add reachability observer. Observer is not delegate", &v1, 0xCu);
}

void sub_100112BA0()
{
  v6 = 136446466;
  sub_10001932C();
  sub_10001934C(&_mh_execute_header, v0, v1, "[v2] %{public}s: \nisCapabilityEnabled error: %{public}@", v2, v3, v4, v5, v6);
}

void sub_100112C14()
{
  v1 = 136446467;
  v2 = "[STConcreteIDSTransportPrimitives service:account:incomingData:fromID:context:]";
  sub_100019340();
  _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "[v2] %{public}s: \nUnable to handle incoming message from: %{private}@", &v1, 0x16u);
}

void sub_100112C9C()
{
  LODWORD(v2) = 136446723;
  *(&v2 + 4) = "[STConcreteIDSTransportPrimitives service:account:incomingResourceAtURL:fromID:context:]";
  sub_100019340();
  sub_100019368(&_mh_execute_header, v0, v1, "[v2] %{public}s: \nFailed to read data from resourceURL: %{private}@, error: %{public}@", v2, DWORD2(v2));
}

void sub_100112D24(void *a1, NSObject *a2)
{
  [a1 fileSize];
  v3 = 136446466;
  v4 = "[STConcreteIDSTransportPrimitives service:account:incomingResourceAtURL:fromID:context:]";
  sub_100019340();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[v2] %{public}s: \nFailed to handle incoming resouce. File too large; %{public}llu bytes", &v3, 0x16u);
}

void sub_100112DC0()
{
  v6 = 136446466;
  sub_10001932C();
  sub_10001934C(&_mh_execute_header, v0, v1, "[v2] %{public}s: \nFailed to get updated destination status, error: %{public}@", v2, v3, v4, v5, v6);
}

void sub_100112E34(uint64_t a1, NSObject *a2)
{
  objc_opt_class();
  sub_1000116CC();
  v4 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "handleConfigurationChange: Expected legacy configuration (NSDictionary) got: %{public}@", v5, 0xCu);
}

void sub_100113044(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Did invalidate service: %{public}@ error: %{public}@", &v3, 0x16u);
}

void sub_1001130CC(uint64_t a1, NSObject *a2)
{
  v2 = 138477827;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Rejecting connection: Missing entitlement: %{private}@.", &v2, 0xCu);
}

void sub_1001131CC(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STConduit.m" lineNumber:53 description:{@"%@ must be invalidated before it's deallocated", a2}];
}

void sub_100113240(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STConduit.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"!self.isInvalid"}];
}

void sub_10011338C(uint64_t a1)
{
  objc_opt_class();
  sub_1000116CC();
  v2 = v1;
  sub_100025118();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100113418(uint64_t a1)
{
  objc_opt_class();
  sub_1000116CC();
  v2 = v1;
  sub_100025118();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1001134A4(uint64_t a1)
{
  objc_opt_class();
  sub_1000116CC();
  v2 = v1;
  sub_100025118();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100113530(uint64_t a1)
{
  objc_opt_class();
  sub_1000116CC();
  v2 = v1;
  sub_100025118();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100113858(void *a1)
{
  v1 = [a1 dsid];
  sub_1000116CC();
  sub_100025118();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1001138E4(void *a1)
{
  v1 = [a1 dsid];
  sub_1000116CC();
  sub_100025118();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1001139F8(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2114;
  *&v3[14] = a2;
  sub_100026648(&_mh_execute_header, a2, a3, "Unable to read settings configuration for user: %{public}@ - %{public}@", *v3, *&v3[8], *&v3[16]);
}

void sub_100113A74(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to get communication configuration for child user: %{public}@", &v2, 0xCu);
}

void sub_100113AEC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Failed to get downtime configuration for user: %{public}@", &v2, 0xCu);
}

void sub_100113B64(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138478083;
  *&v3[4] = a1;
  *&v3[12] = 2114;
  *&v3[14] = a2;
  sub_100026648(&_mh_execute_header, a2, a3, "Failed to transform change: %{private}@ with error: %{public}@", *v3, *&v3[8], *&v3[16]);
}

void sub_100113BDC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138478083;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to transform changes: %{private}@ with error: %{public}@", &v3, 0x16u);
}

void sub_100113C64(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STDaemonPersistenceController.m" lineNumber:72 description:@"Store being loaded must have a configuration"];
}

void sub_100113D40()
{
  sub_1000116CC();
  v3 = 2114;
  v4 = v0;
  _os_log_fault_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "Failed to load store %{public}@: %{public}@", v2, 0x16u);
}

void sub_100113F64(void *a1)
{
  v1 = a1;
  v3 = +[NSAssertionHandler currentHandler];
  v2 = [NSString stringWithUTF8String:"[STDaemonPersistenceController _loadLocalPersistentStore]_block_invoke"];
  [v3 handleFailureInFunction:v2 file:@"STDaemonPersistenceController.m" lineNumber:272 description:{@"Failed to load local persistent store: %@", v1}];
}

void sub_100114004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"STDaemonPersistenceController.m" lineNumber:284 description:{@"Failed to create data vault directory: %@", a3}];
}

void sub_100114078(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = __error();
  v6 = [NSString stringWithUTF8String:strerror(*v5)];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STDaemonPersistenceController.m" lineNumber:287 description:{@"Failed to enable data vault: %@ (%d)", v6, *__error()}];
}

void sub_100114188(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = *(*a1 + 40);
  sub_100006030(&_mh_execute_header, a2, a3, "Failed to get local device: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1001141FC(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 changeIdentifier];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "Skipping core data change: %{public}@ - type is not Device State ", a1, 0xCu);
}

void sub_100114344(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to write device: %{public}@ - %{public}@", &v4, 0x16u);
}

void sub_100114578(uint64_t a1)
{
  objc_opt_class();
  sub_1000116CC();
  v2 = v1;
  sub_100025118();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1001146D4(void *a1)
{
  v1 = [a1 changeIdentifier];
  objc_opt_class();
  sub_1000116CC();
  v3 = v2;
  sub_100025118();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100114778(char a1, char a2)
{
  if (a1)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v4 = v3;
  if (a2)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v11 = v5;
  sub_100025118();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_100114934()
{
  v1[0] = 136446466;
  sub_10001932C();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "[v1] %{public}s: \nError saving payload: %{public}@", v1, 0x16u);
}

void sub_1001149B4(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 type];
  v7[0] = 136446722;
  sub_10001932C();
  v8 = v6;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "[v1] %{public}s: \nError archiving payloadType: %{public}@, error: %{public}@", v7, 0x20u);
}

void sub_100114A68(os_log_t log)
{
  v1 = 136446210;
  v2 = "[STEnqueuePayloadOperation main]_block_invoke";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "[v1] %{public}s: \nNo family organization, ending without saving", &v1, 0xCu);
}

void sub_100114AEC()
{
  v1[0] = 136446466;
  sub_10001932C();
  _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "[v1] %{public}s: \nFailed to fetch local user: %{public}@", v1, 0x16u);
}

void sub_100114B6C(uint64_t a1)
{
  v1 = 138543362;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed STEventRequest.initWithCoder: %{public}@", &v1, 0xCu);
}

void sub_100114BEC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Failed to fetch local user: %{public}@", &v2, 0xCu);
}

void sub_100114C64()
{
  sub_1000116F0();
  sub_1000312A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100114D88()
{
  sub_1000116F0();
  sub_1000312A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100114DC4()
{
  sub_1000116F0();
  sub_1000312A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100114E00()
{
  sub_1000116F0();
  sub_1000312A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001150AC()
{
  sub_100039840(__stack_chk_guard);
  sub_100039834();
  sub_100006030(&_mh_execute_header, v0, v1, "Failed to fetch family members: %{public}@", v2, v3, v4, v5);
}

void sub_100115114()
{
  sub_100039840(__stack_chk_guard);
  sub_100039834();
  sub_100006030(&_mh_execute_header, v0, v1, "Failed to fetch local user: %{public}@", v2, v3, v4, v5);
}

void sub_10011524C(void *a1)
{
  v1 = [a1 error];
  sub_1000116CC();
  sub_100039824();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100115340(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 uniqueIdentifier];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "Local blueprint does not exist in checkin response: %@", a1, 0xCu);
}

void sub_1001155C0(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v3 = [sub_100039858() objectForKeyedSubscript:?];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"None";
  }

  [v2 setObject:v5 forKeyedSubscript:@"identifier"];

  v6 = [sub_100039858() objectForKeyedSubscript:?];
  sub_100039800(v6);

  v7 = [sub_100039858() objectForKeyedSubscript:?];
  [sub_1000397E4() setObject:? forKeyedSubscript:?];

  v8 = [sub_100039858() objectForKeyedSubscript:?];
  [sub_1000397E4() setObject:? forKeyedSubscript:?];

  v9 = [sub_100039858() objectForKeyedSubscript:?];
  sub_100039800(v9);

  v10 = [sub_100039858() objectForKeyedSubscript:?];
  sub_100039800(v10);

  v11 = [sub_100039858() objectForKeyedSubscript:?];
  sub_100039800(v11);

  v12 = [v1 objectForKeyedSubscript:@"configurations"];
  v13 = v12;
  if (v12)
  {
    v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 count]);
    [v2 setObject:v14 forKeyedSubscript:@"NumberOfConfigurations"];
  }

  else
  {
    [v2 setObject:&off_1001B21E8 forKeyedSubscript:@"NumberOfConfigurations"];
  }

  sub_100039824();
  _os_log_fault_impl(v15, v16, v17, v18, v19, 0xCu);
}

void sub_1001157F0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [sub_10003984C() objectForKeyedSubscript:?];
  [sub_1000397E4() setObject:? forKeyedSubscript:?];

  v5 = [sub_10003984C() objectForKeyedSubscript:?];
  [sub_1000397E4() setObject:? forKeyedSubscript:?];

  v6 = [sub_10003984C() objectForKeyedSubscript:?];
  sub_100039884(v6);

  v7 = [sub_10003984C() objectForKeyedSubscript:?];
  sub_100039884(v7);

  v8 = [sub_10003984C() objectForKeyedSubscript:?];
  [sub_1000397E4() setObject:? forKeyedSubscript:?];

  v9 = [sub_10003984C() objectForKeyedSubscript:?];
  [sub_1000397E4() setObject:? forKeyedSubscript:?];

  v10 = [sub_10003984C() objectForKeyedSubscript:?];
  [sub_1000397E4() setObject:? forKeyedSubscript:?];

  v11 = [v2 objectForKeyedSubscript:@"configurations"];
  v12 = v11;
  if (v11)
  {
    v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 count]);
    [v3 setObject:v13 forKeyedSubscript:@"NumberOfConfigurations"];
  }

  else
  {
    [v3 setObject:&off_1001B21E8 forKeyedSubscript:@"NumberOfConfigurations"];
  }

  sub_100039824();
  _os_log_fault_impl(v14, v15, v16, v17, v18, 0x16u);
}

void sub_100115AF0()
{
  sub_1000116F0();
  sub_1000397F4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100115B2C()
{
  sub_1000116F0();
  sub_1000397F4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100115B68()
{
  sub_1000116F0();
  sub_1000397F4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100115BA4()
{
  sub_100039840(__stack_chk_guard);
  sub_100011708();
  sub_100039864(&_mh_execute_header, v0, v1, "Found more than 1 user with the same apple id (%{public}@): %{public}@");
}

void sub_100115C0C()
{
  sub_100039840(__stack_chk_guard);
  sub_100039834();
  sub_100006030(&_mh_execute_header, v0, v1, "Ignoring usage request from %{public}@, this user is not a parent", v2, v3, v4, v5);
}

void sub_100115C74()
{
  sub_100039840(__stack_chk_guard);
  sub_100011708();
  sub_100026648(&_mh_execute_header, v0, v1, "Failed to save that all of %{public}@'s devices are new_usage: %{public}@");
}

void sub_100115CDC()
{
  sub_100039840(__stack_chk_guard);
  sub_100039834();
  sub_100011720(&_mh_execute_header, v0, v1, "Can't fulfill usage request, cannot find user with Apple ID: %{public}@", v2, v3, v4, v5);
}

void sub_100116090()
{
  sub_1000116F0();
  sub_1000397F4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011610C()
{
  sub_100039840(__stack_chk_guard);
  sub_100039834();
  sub_100011720(&_mh_execute_header, v0, v1, "Can't persist usage, cannot find user with Apple ID: %{public}@", v2, v3, v4, v5);
}

void sub_1001161DC()
{
  sub_1000116F0();
  sub_1000397F4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100116350(void *a1)
{
  v1 = [a1 updatedObjects];
  sub_1000116CC();
  sub_100039824();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10011645C(uint64_t a1, NSObject *a2)
{
  v2 = 136446466;
  v3 = "[STFamilySettingsManager prepareSettingsPayloadsWithCompletion:]_block_invoke";
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}s: \nFailed to fetch users: %{public}@", &v2, 0x16u);
}

void sub_100116550(void *a1, NSObject *a2)
{
  v3 = [a1 error];
  sub_1000116CC();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to handle family settings payload: %{public}@", v4, 0xCu);
}

void sub_100116B28(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STFetchUsageOperation.m" lineNumber:275 description:{@"Invalid parameter not satisfying: %@", @"reporter"}];
}

void sub_100116C08(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 directory];
  v6 = 138543618;
  v7 = v5;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to purge store at url: %{public}@ - with error: %{public}@", &v6, 0x16u);
}

void sub_100116DF0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to read data from filepath: %{public}@  - file is too large. Removing file instead.", &v2, 0xCu);
}

void sub_100116E68(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to remove oversized file at filepath: %{public}@", &v2, 0xCu);
}

void sub_100116F48(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2114;
  *&v3[14] = a2;
  sub_100026648(&_mh_execute_header, a2, a3, "Failed to find a regular file in directory: %{public}@ - with error: %{public}@", *v3, *&v3[8], *&v3[16]);
}

void sub_10011702C()
{
  v6 = 136446466;
  sub_10001932C();
  sub_10001934C(&_mh_execute_header, v0, v1, "[v2] %{public}s: \nSender's primitives cannot send at this time: %{public}@", v2, v3, v4, v5, v6);
}

void sub_1001170A0()
{
  v6 = 136446466;
  sub_10001932C();
  sub_10001934C(&_mh_execute_header, v0, v1, "[v2] %{public}s: \nMessage recipients are unknown: %{public}@", v2, v3, v4, v5, v6);
}

void sub_100117114()
{
  v6 = 136446466;
  sub_10001932C();
  sub_10001934C(&_mh_execute_header, v0, v1, "[v2] %{public}s: \nAll message recipients are unreachable: %{public}@", v2, v3, v4, v5, v6);
}

void sub_100117188()
{
  v6 = 136446467;
  sub_100042CC8();
  sub_10001934C(&_mh_execute_header, v0, v1, "[v2] %{public}s: \nFailed to get return destination for raw address: %{private}@", v2, v3, v4, v5, v6);
}

void sub_1001171FC()
{
  v6 = 136446467;
  sub_100042CC8();
  sub_10001934C(&_mh_execute_header, v0, v1, "[v2] %{public}s: \nFailed to resolve user alias: %{private}@", v2, v3, v4, v5, v6);
}

void sub_100117270()
{
  v6 = 136446466;
  sub_10001932C();
  sub_10001934C(&_mh_execute_header, v0, v1, "[v2] %{public}s: \nFailed to serialize message to data: %{public}@", v2, v3, v4, v5, v6);
}

void sub_1001172E4()
{
  v6 = 136446466;
  sub_10001932C();
  sub_10001934C(&_mh_execute_header, v0, v1, "[v2] %{public}s: \nSender is offline: %{public}@", v2, v3, v4, v5, v6);
}

void sub_100117358()
{
  v6 = 136446467;
  sub_100042CC8();
  sub_10001934C(&_mh_execute_header, v0, v1, "[v2] %{public}s: \nFailed to get return destination for raw address: %{private}@", v2, v3, v4, v5, v6);
}

void sub_1001173CC(void *a1, NSObject *a2)
{
  v3 = [a1 dsid];
  v4[0] = 136446467;
  sub_100042CC8();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[v2] %{public}s: \nFailed to resolve user alias: %{private}@", v4, 0x16u);
}

void sub_10011746C()
{
  v6 = 136446467;
  sub_100042CC8();
  sub_10001934C(&_mh_execute_header, v0, v1, "[v2] %{public}s: \nDropping message: invalid sender: %{private}@", v2, v3, v4, v5, v6);
}

void sub_1001174E0()
{
  v6 = 136446466;
  sub_10001932C();
  sub_10001934C(&_mh_execute_header, v0, v1, "[v2] %{public}s: \nDropping message: malformed - %{public}@", v2, v3, v4, v5, v6);
}

void sub_100117554()
{
  v6 = 136446467;
  sub_100042CC8();
  sub_10001934C(&_mh_execute_header, v0, v1, "[v2] %{public}s: \nFailed to acknowledge message: %{private}@ - unable to get return destination", v2, v3, v4, v5, v6);
}

void sub_1001175C8()
{
  v6 = 136446467;
  sub_100042CC8();
  sub_10001934C(&_mh_execute_header, v0, v1, "[v2] %{public}s: \nFailed to acknowledge message: %{private}@ - unable to resolve user alias", v2, v3, v4, v5, v6);
}

void sub_10011763C(os_log_t log)
{
  v1 = 136446210;
  v2 = "[STIDSMessageTransport _sendAcknowledgementMessageForResponseIdentifier:toDestination:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[v2] %{public}s \nUnable to get return address", &v1, 0xCu);
}

void sub_1001176C0(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *v8 = 136446467;
  *&v8[4] = "[STIDSMessageTransport _sendAcknowledgementMessageForResponseIdentifier:toDestination:]_block_invoke";
  *&v8[12] = 2113;
  *&v8[14] = *(a1 + 32);
  sub_10001934C(&_mh_execute_header, a2, a3, "[v2] %{public}s: \nFailed to acknowledge message: %{private}@", a5, a6, a7, a8, *v8, *&v8[8], *&v8[16]);
}

void sub_100117744()
{
  v6 = 136446467;
  sub_100042CC8();
  sub_10001934C(&_mh_execute_header, v0, v1, "[v2] %{public}s: \nReceived 'didSend' callback for unknown message; \nprimitiveMessageIdentifier: %{private}@)", v2, v3, v4, v5, v6);
}

void sub_1001177B8()
{
  v3[0] = 136446723;
  sub_100042CC8();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "[v2] %{public}s: \nReceived 'didDeliver' callback for message: \nprimitiveMessageIdentifier: %{private}@, \nprimitiveDestination: %{private}@", v3, 0x20u);
}

void sub_100117844()
{
  v6 = 136446467;
  sub_100042CC8();
  sub_10001934C(&_mh_execute_header, v0, v1, "[v2] %{public}s: \nReceived 'didDeliver' callback for unknown message; \nprimitiveIdentifier: %{private}@", v2, v3, v4, v5, v6);
}

void sub_1001178B8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STIDSTransport.m" lineNumber:80 description:{@"%@ must be invalidated before it's deallocated", a2}];
}

void sub_10011792C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STIDSTransport.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"!self.isInvalid"}];
}

void sub_1001179A8()
{
  sub_100019340();
  sub_1000312A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100117AAC(id *a1, id *a2, NSObject *a3)
{
  v5 = [*a1 UUID];
  v6 = [*a2 error];
  v7 = 136446722;
  v8 = "[STIDSTransport sendPayload:]_block_invoke";
  v9 = 2112;
  v10 = v5;
  v11 = 2114;
  v12 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "[v1] %{public}s: \nSend payload operation error \npayloadUUID: %@ \nerror: %{public}@", &v7, 0x20u);
}

void sub_100117C08()
{
  sub_100019340();
  sub_1000312A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100117C8C()
{
  v2 = 136446723;
  v3 = "[STIDSTransport service:account:identifier:didSendWithSuccess:error:context:]";
  sub_100019340();
  v4 = 2114;
  v5 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "[v1] %{public}s: \naccount: %{private}@, \nidentifier: %{public}@ \ndidSendWithSuccess == NO", &v2, 0x20u);
}

void sub_100117D24()
{
  v3 = 136446722;
  v4 = "[STIDSTransport service:account:incomingResourceAtURL:fromID:context:]";
  sub_100019340();
  v5 = v0;
  v6 = v1;
  _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "[v1] %{public}s: \nCould not read data from URL %{public}@: %{public}@", &v3, 0x20u);
}

void sub_100117DB8(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 payloadType];
  v6[0] = 136446722;
  sub_100046898();
  v7 = 2114;
  v8 = a2;
  _os_log_fault_impl(&_mh_execute_header, a3, OS_LOG_TYPE_FAULT, "[local] %{public}s: \npayloadType: %@ \nFailed to generate payload data: %{public}@", v6, 0x20u);
}

void sub_100117E70(void *a1, NSObject *a2)
{
  v3 = [a1 payloadType];
  v4[0] = 136446466;
  sub_100046898();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[local] %{public}s: \nUnable to forward payload to local transport: service provided no destinations \npayloadType: %@,", v4, 0x16u);
}

void sub_100117F10(uint64_t a1, NSObject *a2)
{
  v2 = 136446466;
  v3 = "[STLocalIDSTransport service:account:incomingData:fromID:context:]";
  v4 = 2114;
  v5 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "[local] %{public}s: \nDid receive unrecognizable data, NSKeyedUnarchiver fail, error: %{public}@", &v2, 0x16u);
}

void sub_100118244()
{
  sub_100049A4C(__stack_chk_guard);
  sub_100039834();
  sub_100049A30(&_mh_execute_header, v0, v1, "Did delete web usage for %{public}@", v2, v3, v4, v5);
}

void sub_1001182AC(void *a1)
{
  [a1 count];
  sub_1000116CC();
  sub_100014414(&_mh_execute_header, v1, v2, "Will delete web usage for multiple urls: %lu urls", v3, v4, v5, v6);
}

void sub_100118324(uint64_t a1)
{
  [*(a1 + 32) count];
  sub_1000116CC();
  sub_100014414(&_mh_execute_header, v1, v2, "Did delete web usage for multiple urls: %lu urls", v3, v4, v5, v6);
}

void sub_100118478()
{
  sub_100049A4C(__stack_chk_guard);
  sub_100039834();
  sub_100049A30(&_mh_execute_header, v0, v1, "Did delete web usage during %{public}@", v2, v3, v4, v5);
}

void sub_1001185B0(os_log_t log)
{
  v1 = 136446210;
  v2 = "[STMessageTrackingTransportService sendMessage:toAddresses:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[v2] %{public}s: \nFailed to send message: Could not generate return address.", &v1, 0xCu);
}

void sub_100118634(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 136446723;
  *&v3[4] = "[STMessageTrackingTransportService sendMessage:toAddresses:]_block_invoke";
  *&v3[12] = 2113;
  *&v3[14] = *(a1 + 32);
  *&v3[22] = 2114;
  sub_100019368(&_mh_execute_header, a2, a3, "[v2] %{public}s: \nFailed to send message: %{private}@ error: %{public}@", *v3, *&v3[8], *&v3[16], a2);
}

void sub_1001186C4()
{
  v1[0] = 136446466;
  sub_10001932C();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "[v2] %{public}s: \nFailed to update ledger item to state: Sending - Missing ledger item for message identifier: %{public}@.", v1, 0x16u);
}

void sub_100118744()
{
  v2 = 136446723;
  sub_10004D7B0();
  sub_100019368(&_mh_execute_header, v0, v1, "[v2] %{public}s: Will not send message identifier: %{public}@ - to: %{private}@", v2);
}

void sub_1001187C8(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v3 = @"Failed";
  *&v4[4] = "[STMessageTrackingTransportService transport:didSendMessageWithIdentifier:result:]";
  *v4 = 136446722;
  *&v4[12] = 2114;
  if (a1 == 2)
  {
    v3 = @"Sent";
  }

  *&v4[14] = v3;
  *&v4[22] = 2114;
  sub_100019368(&_mh_execute_header, a2, a3, "[v2] %{public}s: Failed to update ledger item to state: %{public}@ - Missing ledger item for message identifier: %{public}@.", *v4, *&v4[8], *&v4[16], a2);
}

void sub_100118868()
{
  v2 = 136446722;
  sub_10004D7B0();
  sub_100019368(&_mh_execute_header, v0, v1, "[v2] %{public}s: Did fail to send message identifier: %{public}@ error: %{public}@", v2);
}

void sub_1001188E8()
{
  v1[0] = 136446466;
  sub_10001932C();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "[v2] %{public}s: Failed to update ledger item to state: Delivered - Missing ledger item for message identifier: %{public}@.", v1, 0x16u);
}

void sub_100118968(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "STPersistBlueprintsOperation is exiting; fetchLocalUserInContext received error %@", &v2, 0xCu);
}

void sub_1001189E0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to save blueprints: %{public}@", &v2, 0xCu);
}

void sub_100118A58(void *a1, NSObject *a2)
{
  v3 = a1;
  v4 = objc_opt_new();
  v5 = [sub_100039858() objectForKeyedSubscript:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"None";
  }

  [v4 setObject:v7 forKeyedSubscript:@"identifier"];

  v8 = [sub_100039858() objectForKeyedSubscript:?];
  sub_100039800(v8);

  v9 = [sub_100039858() objectForKeyedSubscript:?];
  [sub_1000397E4() setObject:? forKeyedSubscript:?];

  v10 = [sub_100039858() objectForKeyedSubscript:?];
  [sub_1000397E4() setObject:? forKeyedSubscript:?];

  v11 = [sub_100039858() objectForKeyedSubscript:?];
  sub_100039800(v11);

  v12 = [sub_100039858() objectForKeyedSubscript:?];
  sub_100039800(v12);

  v13 = [sub_100039858() objectForKeyedSubscript:?];
  sub_100039800(v13);

  v14 = [v3 objectForKeyedSubscript:@"configurations"];
  v15 = v14;
  if (v14)
  {
    v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v14 count]);
    [v4 setObject:v16 forKeyedSubscript:@"NumberOfConfigurations"];
  }

  else
  {
    [v4 setObject:&off_1001B2278 forKeyedSubscript:@"NumberOfConfigurations"];
  }

  v17 = 138543362;
  v18 = v4;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unexpectedly received local organization blueprint in payload. Ignoring blueprint: %{public}@", &v17, 0xCu);
}

void sub_100118C90(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = a2;
  v6 = objc_opt_new();
  v7 = [sub_10003984C() objectForKeyedSubscript:?];
  [sub_1000397E4() setObject:? forKeyedSubscript:?];

  v8 = [sub_10003984C() objectForKeyedSubscript:?];
  [sub_1000397E4() setObject:? forKeyedSubscript:?];

  v9 = [sub_10003984C() objectForKeyedSubscript:?];
  sub_100039884(v9);

  v10 = [sub_10003984C() objectForKeyedSubscript:?];
  sub_100039884(v10);

  v11 = [sub_10003984C() objectForKeyedSubscript:?];
  [sub_1000397E4() setObject:? forKeyedSubscript:?];

  v12 = [sub_10003984C() objectForKeyedSubscript:?];
  [sub_1000397E4() setObject:? forKeyedSubscript:?];

  v13 = [sub_10003984C() objectForKeyedSubscript:?];
  [sub_1000397E4() setObject:? forKeyedSubscript:?];

  v14 = [v5 objectForKeyedSubscript:@"configurations"];
  v15 = v14;
  if (v14)
  {
    v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v14 count]);
    [v6 setObject:v16 forKeyedSubscript:@"NumberOfConfigurations"];
  }

  else
  {
    [v6 setObject:&off_1001B2278 forKeyedSubscript:@"NumberOfConfigurations"];
  }

  v17 = 138543618;
  v18 = a1;
  v19 = 2114;
  v20 = v6;
  _os_log_fault_impl(&_mh_execute_header, a3, OS_LOG_TYPE_FAULT, "Unknown organization class name in blueprint payload: %{public}@. Ignoring blueprint: %{public}@", &v17, 0x16u);
}

void sub_100118EF0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to archive genesis state store: %{public}@", &v2, 0xCu);
}

void sub_100118F68(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to unarchive genesis state store: %{public}@", &v2, 0xCu);
}

void sub_100118FE0(void *a1, void *a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:*a1 object:*a2 file:@"STPersistentHistoryCleanupManager.m" lineNumber:57 description:@"deleteHistoryRequest not initialized"];
}

void sub_100119044(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Fetch history after date failed with error: %@", &v2, 0xCu);
}

void sub_1001190BC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Fetch history after token failed with error: %@", &v2, 0xCu);
}

void sub_100119134()
{
  v6 = 136446467;
  sub_100042CC8();
  sub_10001934C(&_mh_execute_header, v0, v1, "[v2] %{public}s: \nFailed to serialize message address map to data: %{private}@", v2, v3, v4, v5, v6);
}

void sub_1001191A8()
{
  v6 = 136446467;
  sub_100042CC8();
  sub_10001934C(&_mh_execute_header, v0, v1, "[v2] %{public}s: \nFailed to deserialize message address map from data: %{private}@", v2, v3, v4, v5, v6);
}

void sub_10011921C(os_log_t log)
{
  v1 = 136446210;
  v2 = "+[STPersistentIDSMessageTransportMessageAddressMap _loadMessageAddressesByPrimitiveDestinationFromKeyValueStore:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[v2] %{public}s: \nFailed to load message address map from key-value store.", &v1, 0xCu);
}

void sub_1001192A0()
{
  v6 = 136446467;
  sub_100042CC8();
  sub_10001934C(&_mh_execute_header, v0, v1, "[v2] %{public}s: \nFailed to deserialize message address from data: %{private}@", v2, v3, v4, v5, v6);
}

void sub_100119314()
{
  v6 = 136446467;
  sub_100042CC8();
  sub_10001934C(&_mh_execute_header, v0, v1, "[v2] %{public}s: \nFailed to resolve primitive destination for raw address: %{private}@", v2, v3, v4, v5, v6);
}

void sub_100119388(void *a1, NSObject *a2)
{
  v3 = [a1 userDSID];
  v4[0] = 136446467;
  sub_100042CC8();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[v2] %{public}s: \nFailed to resolve raw address for user: %{private}@", v4, 0x16u);
}

void sub_100119428()
{
  v6 = 136446467;
  sub_100042CC8();
  sub_10001934C(&_mh_execute_header, v0, v1, "[v2] %{public}s: \nUnable to resolve userDSID from raw address: %{private}@", v2, v3, v4, v5, v6);
}

void sub_10011949C()
{
  v6 = 136446467;
  sub_100042CC8();
  sub_10001934C(&_mh_execute_header, v0, v1, "[v2] %{public}s: \nFailed to resolve raw address from primitive destination: %{private}@", v2, v3, v4, v5, v6);
}

void sub_100119510()
{
  v6 = 136446467;
  sub_100042CC8();
  sub_10001934C(&_mh_execute_header, v0, v1, "[v2] %{public}s: \nFailed to resolve user-targeted primitive destination from primitive destination: %{private}@", v2, v3, v4, v5, v6);
}

void sub_100119584()
{
  sub_10001932C();
  sub_1000312A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100119680(os_log_t log)
{
  v1 = 136446210;
  v2 = "+[STPersistentIDSMessageTransportMessageIdentifierMap _loadMessageIdentifiersByPrimitiveIdentifierFromKeyValueStore:]";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "[v2] %{public}s: \nOversized message identifier map was purged after previously purging it.", &v1, 0xCu);
}

void sub_100119704()
{
  sub_10001932C();
  sub_1000312A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100119800(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Enumerated item was not ledger item: %{public}@", &v2, 0xCu);
}

void sub_100119878(uint64_t a1, uint64_t a2)
{
  v4 = [sub_1000547A0(a1 a2)];
  v5 = [v4 absoluteString];
  *v3 = 138412290;
  *v2 = v5;
  sub_1000547B4(&_mh_execute_header, v6, v7, "Ignoring app %@ (no bundle identifier)");
}

void sub_100119960(void *a1)
{
  v1 = [a1 bundleIdentifier];
  sub_1000116CC();
  sub_100054790();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1001199EC(void *a1)
{
  v2 = [a1 displayName];
  v8 = [a1 bundleIdentifier];
  sub_100054790();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100119AA8()
{
  sub_1000116CC();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Failed to get application record for %{public}@ %{public}@", v2, 0x16u);
}

void sub_100119B2C(uint64_t a1, uint64_t a2)
{
  v4 = [sub_1000547A0(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  sub_1000547B4(&_mh_execute_header, v5, v6, "Removing app: %@");
}

void sub_100119BF0(void *a1)
{
  [a1 count];
  sub_100054790();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100119CDC(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STPersistUsageOperation.m" lineNumber:51 description:@"The specified moc doesn't match the moc of the user device state"];
}

void sub_100119EE4(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 coreDuetIdentifier];
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to persist fetched usage: %{public}@ %{public}@", &v6, 0x16u);
}

void sub_10011A114(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STXPCEventDispatcher.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
}

void sub_10011A1CC(uint64_t a1, void *a2)
{
  v2 = [a2 stream];
  sub_1000585FC();
  sub_100058614(&_mh_execute_header, v3, v4, "Received event for %{public}s on stream %{public}@", v5, v6, v7, v8);
}

void sub_10011A264(uint64_t a1, void *a2)
{
  v2 = [a2 stream];
  sub_1000585FC();
  sub_100058614(&_mh_execute_header, v3, v4, "Dropping unhandled event for %{public}s on stream %{public}@", v5, v6, v7, v8);
}

void sub_10011A2FC(void *a1, NSObject *a2)
{
  v3 = [a1 stream];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Received event unknown event on stream %{public}@", &v4, 0xCu);
}

void sub_10011A398(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STXPCEventDispatcher.m" lineNumber:119 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
}

void sub_10011A414(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  sub_100006030(&_mh_execute_header, a2, a3, "failed to cleanup and migrate blueprints during processing: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10011A4C4(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  sub_100006030(&_mh_execute_header, a2, a3, "Failed to save blueprints: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10011A530(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  sub_100006030(&_mh_execute_header, a2, a3, "failed to fetch expired blueprints: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10011A59C()
{
  sub_100039840(__stack_chk_guard);
  sub_100039834();
  sub_100006030(&_mh_execute_header, v0, v1, "Failed to fetch blueprints to deduplicate configurations: %{public}@", v2, v3, v4, v5);
}

void sub_10011A604()
{
  sub_100039840(__stack_chk_guard);
  sub_100039834();
  sub_100006030(&_mh_execute_header, v0, v1, "Failed to fetch blueprints: %{public}@", v2, v3, v4, v5);
}

void sub_10011A66C()
{
  sub_100039840(__stack_chk_guard);
  sub_100039834();
  _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "Failed to fetch blueprints to upgrade to version 2 categories: %{public}@", v1, 0xCu);
}

void sub_10011A6E0(os_log_t log)
{
  v1 = 136446210;
  v2 = "[STProcessPayloadQueueOperation main]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%{public}s: \nStarted", &v1, 0xCu);
}

void sub_10011A764(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to save payloads: %{public}@", &v2, 0xCu);
}

void sub_10011A7DC(os_log_t log)
{
  v1 = 136446210;
  v2 = "[STProcessPayloadQueueOperation _processPayloadQueue]_block_invoke";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%{public}s: \nFinished", &v1, 0xCu);
}

void sub_10011A860(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to fetch enqueued payloads: %{public}@", &v2, 0xCu);
}

void sub_10011AFD8(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = 138543618;
  v5 = v2;
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to process sent message: %{public}@ - %{public}@", &v4, 0x16u);
}

void sub_10011B41C(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[STReactorCore reactorDirectiveForSendingResponseForResult:downtimeConfigurationsByUserID:]");
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [a1 processedDirective];
  v7 = [v6 data];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v2 handleFailureInFunction:v3 file:@"STReactorCore.m" lineNumber:131 description:{@"expected %@, got %@", v5, v9}];
}

void sub_10011B548()
{
  v1 = +[NSAssertionHandler currentHandler];
  v2 = [NSString stringWithUTF8String:"[STReactorDirectiveProcessor processDirective:]"];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = sub_10006BB70();
  v5 = NSStringFromClass(v4);
  [sub_10006BB60() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void sub_10011B5F8()
{
  v1 = +[NSAssertionHandler currentHandler];
  v2 = [NSString stringWithUTF8String:"[STReactorDirectiveProcessor processDirective:]"];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = sub_10006BB70();
  v5 = NSStringFromClass(v4);
  [sub_10006BB60() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void sub_10011B6A8()
{
  v1 = +[NSAssertionHandler currentHandler];
  v2 = [NSString stringWithUTF8String:"[STReactorDirectiveProcessor processDirective:]"];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = sub_10006BB70();
  v5 = NSStringFromClass(v4);
  [sub_10006BB60() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void sub_10011B758()
{
  v1 = +[NSAssertionHandler currentHandler];
  v2 = [NSString stringWithUTF8String:"[STReactorDirectiveProcessor processDirective:]"];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = sub_10006BB70();
  v5 = NSStringFromClass(v4);
  [sub_10006BB60() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void sub_10011B808()
{
  v1 = +[NSAssertionHandler currentHandler];
  v2 = [NSString stringWithUTF8String:"[STReactorDirectiveProcessor processDirective:]"];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = sub_10006BB70();
  v5 = NSStringFromClass(v4);
  [sub_10006BB60() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void sub_10011B8B8()
{
  v1 = +[NSAssertionHandler currentHandler];
  v2 = [NSString stringWithUTF8String:"[STReactorDirectiveProcessor processDirective:]"];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = sub_10006BB70();
  v5 = NSStringFromClass(v4);
  [sub_10006BB60() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void sub_10011B968(uint64_t a1)
{
  v14 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"[STReactorDirectiveProcessor processDirective:]"];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [sub_10006BB88(v5 v6];
}

void sub_10011BA30()
{
  v1 = +[NSAssertionHandler currentHandler];
  v2 = [NSString stringWithUTF8String:"[STReactorDirectiveProcessor processDirective:]"];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = sub_10006BB70();
  v5 = NSStringFromClass(v4);
  [sub_10006BB60() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void sub_10011BAE0(uint64_t a1)
{
  v14 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"[STReactorDirectiveProcessor processDirective:]"];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [sub_10006BB88(v5 v6];
}

void sub_10011BBA8()
{
  v1 = +[NSAssertionHandler currentHandler];
  v2 = [NSString stringWithUTF8String:"[STReactorDirectiveProcessor processDirective:]"];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = sub_10006BB70();
  v5 = NSStringFromClass(v4);
  [sub_10006BB60() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void sub_10011BC58()
{
  v1 = +[NSAssertionHandler currentHandler];
  v2 = [NSString stringWithUTF8String:"[STReactorDirectiveProcessor processDirective:]"];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = sub_10006BB70();
  v5 = NSStringFromClass(v4);
  [sub_10006BB60() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void sub_10011BD08()
{
  v1 = +[NSAssertionHandler currentHandler];
  v2 = [NSString stringWithUTF8String:"[STReactorDirectiveProcessor processDirective:]"];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = sub_10006BB70();
  v5 = NSStringFromClass(v4);
  [sub_10006BB60() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void sub_10011BDB8()
{
  v1 = +[NSAssertionHandler currentHandler];
  v2 = [NSString stringWithUTF8String:"[STReactorDirectiveProcessor processDirective:]"];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = sub_10006BB70();
  v5 = NSStringFromClass(v4);
  [sub_10006BB60() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void sub_10011BE68(void *a1)
{
  v14 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"[STReactorDirectiveProcessor processDirective:]_block_invoke"];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [sub_10006BB88(v5 v6];
}

void sub_10011C3A8(void *a1)
{
  v1 = [a1 messages];
  [v1 count];
  sub_1000116CC();
  sub_100014414(&_mh_execute_header, v2, v3, "Processing status messages: %lu", v4, v5, v6, v7);
}

void sub_10011C430(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 inReplyTo];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "Ignoring status message: %{public}@", a1, 0xCu);
}

void sub_10011C510()
{
  sub_1000116CC();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10011C5E8()
{
  sub_100070FA4();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10011C73C(uint64_t a1)
{
  objc_opt_class();
  sub_1000116CC();
  v2 = v1;
  sub_100014414(&_mh_execute_header, v3, v4, "%{public}@ : Finished", v5, v6, v7, v8);
}

void sub_10011C7C4()
{
  sub_1000116CC();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10011C834()
{
  v1[0] = 136446467;
  sub_100042CC8();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "[v1] %{public}s: \naddress: %{private}@ \nInvalid IDS device destination", v1, 0x16u);
}

void sub_10011C8B4(void *a1, NSObject *a2)
{
  v3 = [a1 address];
  v4 = 136446466;
  v5 = "[STResolveIDSDestinationsOperation _resolveDestinationsFromLocal]_block_invoke";
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[v1] %{public}s: \naddress: %{public}@ \nInvalid IDS user destination", &v4, 0x16u);
}

void sub_10011C960(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 address];
  v7[0] = 136446723;
  sub_100042CC8();
  v8 = v6;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "[v1] %{public}s: \naddress: %{private}@, \nuserDSID: %{private}@ \nInvalid STCoreUser", v7, 0x20u);
}

void sub_10011CA14()
{
  v2[0] = 136446723;
  sub_100042CC8();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "[v1] %{public}s: \nFailed to fetch user with altID: %{private}@, error: %{public}@", v2, 0x20u);
}

void sub_10011CAA4(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STRestrictionsMigrator.m" lineNumber:264 description:{@"Invalid parameter not satisfying: %@", @"features"}];
}

void sub_10011CB20()
{
  sub_1000116F0();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011CB5C()
{
  sub_1000116F0();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011CBD8()
{
  sub_1000116CC();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10011CCB0()
{
  sub_1000116CC();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10011CD88()
{
  sub_1000116CC();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10011CED4()
{
  sub_1000116CC();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10011D020()
{
  sub_1000116F0();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011D16C()
{
  sub_1000116F0();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011D1A8(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to retrieve local user: %{public}@", &v3, 0xCu);
}

void sub_10011D224(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STDefaultUserPolicyApplicator.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"user.managedObjectContext"}];
}

void sub_10011D2A0(uint8_t *a1, void *a2, const __CFString **a3, NSObject *a4)
{
  v7 = [a2 unsignedIntValue] - 1;
  if (v7 > 3)
  {
    v8 = @"STDefaultUserPolicyNone";
  }

  else
  {
    v8 = off_1001A5858[v7];
  }

  *a1 = 138543362;
  *a3 = v8;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "\tFailed to apply %{public}@", a1, 0xCu);
}

void sub_10011D374(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "There was more than 1 user device state: %{public}@", &v2, 0xCu);
}

void sub_10011D3EC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "There was an error fetching usage blocks: %{public}@", &v2, 0xCu);
}

void sub_10011D534()
{
  sub_1000116CC();
  sub_10008B948();
  sub_10001173C();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
}

void sub_10011D74C(void *a1)
{
  [a1 screenTimeEnabled];
  sub_100039834();
  sub_10008B93C();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0xCu);
}

void sub_10011D920()
{
  sub_1000116F0();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011DC0C(void *a1)
{
  v1 = [a1 name];
  sub_1000116CC();
  sub_100014414(&_mh_execute_header, v2, v3, "Device name is now: %{private}@", v4, v5, v6, v7);
}

void sub_10011E378(void *a1)
{
  v1 = [a1 error];
  sub_1000116CC();
  sub_10008B93C();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
}

void sub_10011E408()
{
  sub_1000116F0();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011E5E4(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Device that is missing usage object also has no assigned user. Unable to add usage object to device. Device will be removed.", buf, 2u);
}

void sub_10011E6F4(id *a1)
{
  v1 = [*a1 familyError];
  sub_1000116CC();
  sub_10008B93C();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
}

void sub_10011E788()
{
  sub_1000116F0();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011E7C4()
{
  sub_1000116F0();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011E868()
{
  sub_1000116F0();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011EA44()
{
  sub_1000116CC();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10011EAB4()
{
  sub_1000116CC();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10011EC6C()
{
  sub_1000116CC();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10011ECDC(void *a1)
{
  v1 = [a1 managingOrganization];
  objc_opt_class();
  sub_1000116CC();
  sub_100014414(&_mh_execute_header, v2, v3, "Fetching restrictions blueprint from organization: %@", v4, v5, v6, v7);
}

void sub_10011ED64()
{
  sub_100039840(__stack_chk_guard);
  sub_100039834();
  sub_100006030(&_mh_execute_header, v0, v1, "Fetching blueprints returned empty results: %{public}@", v2, v3, v4, v5);
}

void sub_10011EDCC()
{
  sub_100039840(__stack_chk_guard);
  sub_100039834();
  sub_100011720(&_mh_execute_header, v0, v1, "Failed to fetch blueprints: %{public}@", v2, v3, v4, v5);
}

void sub_10011EE34()
{
  sub_100039840(__stack_chk_guard);
  sub_100039834();
  sub_10008B948();
  sub_100039864(&_mh_execute_header, v0, v1, "Failed to fetch user with dsid: %@, %{public}@");
}

void sub_10011EF70()
{
  sub_10000604C(__stack_chk_guard);
  sub_100039834();
  sub_100011720(&_mh_execute_header, v0, v1, "failed to update user device state: %{public}@", v2, v3, v4, v5);
}

void sub_10011EFD8()
{
  sub_10000604C(__stack_chk_guard);
  sub_100039834();
  sub_100011720(&_mh_execute_header, v0, v1, "failed to fetch user: %{public}@", v2, v3, v4, v5);
}

void sub_10011F0A8()
{
  sub_1000116F0();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011F0E4()
{
  sub_1000116CC();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10011F280()
{
  sub_100039834();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10011F3D0()
{
  sub_10000604C(__stack_chk_guard);
  sub_100039834();
  sub_100011720(&_mh_execute_header, v0, v1, "Failed to fetch local user: %{public}@", v2, v3, v4, v5);
}

void sub_10011F438()
{
  sub_1000116F0();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011F4DC()
{
  sub_1000116F0();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011F858()
{
  sub_1000116F0();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011F894()
{
  sub_100039840(__stack_chk_guard);
  sub_100039834();
  sub_100006030(&_mh_execute_header, v0, v1, "Cannot fetch or update location sharing modification value. Fetched user not in a family organization: %@", v2, v3, v4, v5);
}

void sub_10011F9DC()
{
  sub_100039840(__stack_chk_guard);
  sub_100039834();
  sub_10008B948();
  sub_10001173C();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
}

void sub_10011FB44()
{
  sub_100039840(__stack_chk_guard);
  sub_100039834();
  sub_10008B948();
  sub_100039864(&_mh_execute_header, v0, v1, "Failed to save locationSharingModificationAllowed value for user with dsid: %@: %{public}@");
}

void sub_10011FBB0()
{
  sub_100039840(__stack_chk_guard);
  sub_100039834();
  sub_100006030(&_mh_execute_header, v0, v1, "For fetching restrictions, failed to fetch actual dsid of local user: %{public}@", v2, v3, v4, v5);
}

void sub_10011FC1C()
{
  sub_10000604C(__stack_chk_guard);
  sub_100039834();
  sub_100006030(&_mh_execute_header, v0, v1, "When retrieving communication safety state, failed to fetch user: %{public}@", v2, v3, v4, v5);
}

void sub_10011FC84()
{
  sub_1000116CC();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10011FF40(uint64_t a1)
{
  v1 = [*(a1 + 32) error];
  sub_1000116CC();
  sub_10008B93C();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);
}

void sub_10011FFD4(uint64_t a1)
{
  v1 = 138543362;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed STRemoteManagementRequest.initWithCoder: %{public}@", &v1, 0xCu);
}

void sub_100120054(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STSendPayloadWithIDSTransportOperation.m" lineNumber:117 description:{@"Invalid parameter not satisfying: %@", @"data"}];
}

void sub_1001200D0(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STSendPayloadWithIDSTransportOperation.m" lineNumber:118 description:{@"Invalid parameter not satisfying: %@", @"destinations.count"}];
}

void sub_10012014C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STSendPayloadWithIDSTransportOperation.m" lineNumber:121 description:@"Missing fromID"];
}

void sub_1001201C0()
{
  v2[0] = 136446466;
  sub_10008D16C();
  v3 = v0;
  _os_log_fault_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "[v1] %{public}s: \nFailed to write temporary file for IDS sendResourceAtURL \nerror: %{public}@", v2, 0x16u);
}

void sub_100120244()
{
  v2[0] = 136446466;
  sub_10008D16C();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "[v1] %{public}s: \nFailed to delete temporary file after IDS \nsendResourceAtURL: %{public}@", v2, 0x16u);
}

void sub_1001202C8(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [*(a1 + 32) payloadType];
  [a2 length];
  v7[0] = 136446722;
  sub_10008D16C();
  v8 = v5;
  v9 = 1024;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "[v1] %{public}s: \nReturnUUID is nil \nFailed to send data payloadType: %{public}@, size: %d bytes", v7, 0x1Cu);
}

void sub_100120398(uint64_t a1, NSObject *a2)
{
  v4 = 138543362;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Cannot transform change identifier of type: %{public}@", &v4, 0xCu);
}

void sub_100120430(uint64_t a1)
{
  v1 = 138543362;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed STStatusRequest.initWithCoder: %{public}@", &v1, 0xCu);
}

void sub_1001204B0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Failed to update user device state: %{public}@", &v2, 0xCu);
}

void sub_100120528()
{
  v6 = 136446466;
  sub_10001932C();
  sub_10001934C(&_mh_execute_header, v0, v1, "[v1] %{public}s: \nFailed to delete orphaned payloads: %{public}@", v2, v3, v4, v5, v6);
}

void sub_10012059C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STTransportPayloadManager.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"!self.isInvalid"}];
}

void sub_100120618()
{
  v6 = 136446466;
  sub_10001932C();
  sub_10001934C(&_mh_execute_header, v0, v1, "[v1] %{public}s: \nFailed to process payload queue: %{public}@", v2, v3, v4, v5, v6);
}

void sub_10012068C()
{
  v2 = 136446722;
  sub_10001932C();
  sub_100019368(&_mh_execute_header, v0, v1, "[v1] %{public}s: \nFailed to resolve destinations %{public}@: %{public}@", v2);
}

void sub_100120708(os_log_t log)
{
  v1 = 136446210;
  v2 = "[STTransportPayloadManager transport:didReceiveData:altURI:appleID:serverReceivedTime:]_block_invoke";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[v1] %{public}s: \nFailed to unarchive transport payload", &v1, 0xCu);
}

void sub_10012078C()
{
  v6 = 136446466;
  sub_10001932C();
  sub_10001934C(&_mh_execute_header, v0, v1, "[v1] %{public}s: \nFailed to unarchive data: %{public}@", v2, v3, v4, v5, v6);
}

void sub_100120800()
{
  v2 = 136446722;
  sub_10001932C();
  sub_100019368(&_mh_execute_header, v0, v1, "[v1] %{public}s: \nFailed to resolve destinations %{public}@: %{public}@", v2);
}

void sub_10012087C()
{
  v6 = 136446466;
  sub_10001932C();
  sub_10001934C(&_mh_execute_header, v0, v1, "[v1] %{public}s: \nReceived invalid payload state: %{public}@", v2, v3, v4, v5, v6);
}

void sub_1001208F0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to initialize payload: %{public}@", &v2, 0xCu);
}

void sub_1001209AC(void *a1, NSObject *a2)
{
  v3 = [a1 underlyingPayload];
  v5 = 138543362;
  v6 = objc_opt_class();
  v4 = v6;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to create request for underlying payload: %{public}@", &v5, 0xCu);
}

void sub_100120A5C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to update: %{public}@ for address: %{public}@", &v3, 0x16u);
}

void sub_100120E68()
{
  sub_10009BB58();
  v3 = +[NSAssertionHandler currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"STUsageManager.m" lineNumber:391 description:{@"Unexpected operation %@", v0}];
}

void sub_100120EE0()
{
  sub_10009BB58();
  v3 = +[NSAssertionHandler currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"STUsageManager.m" lineNumber:380 description:{@"Unexpected operation %@", v0}];
}

void sub_100120F58()
{
  sub_10009BB58();
  v3 = +[NSAssertionHandler currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"STUsageManager.m" lineNumber:369 description:{@"Unexpected operation %@", v0}];
}

void sub_100120FD0(void *a1)
{
  v2 = [a1 name];
  v3 = [a1 object];
  sub_1000585FC();
  sub_100058614(&_mh_execute_header, v4, v5, "Did receive notification %{public}@ for %{public}@", v6, v7, v8, v9);
}

void sub_100121074(uint64_t a1)
{
  v2 = [*(a1 + 32) name];
  v3 = [*(a1 + 32) object];
  sub_1000585FC();
  sub_100058614(&_mh_execute_header, v4, v5, "Did reset usage in response to %{public}@ for %{public}@", v6, v7, v8, v9);
}

void sub_10012111C()
{
  sub_1000116CC();
  v3 = 2114;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Next weekly report rollup not scheduled: %{public}@ is already set, so %{public}@ is ignored", v2, 0x16u);
}

void sub_100121460(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Received unknown ask for time action %{public}@", &v2, 0xCu);
}

void sub_1001214D8(uint64_t a1, NSObject *a2)
{
  v2 = 138543618;
  v3 = a1;
  v4 = 2114;
  v5 = @"com.apple.private.screen-time.persistence";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Rejecting admin store connection from “%{public}@” without entitlement: %{public}@", &v2, 0x16u);
}

void sub_100121564(void *a1)
{
  v1 = [a1 identifier];
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = v1;
  sub_10009E2A0(&_mh_execute_header, v2, v3, "Failed to create biome event for ask for time request: %{public}@", v4, v5, v6, v7, v8, DWORD2(v8));
}

void sub_1001215EC(void *a1)
{
  v1 = [a1 identifier];
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = v1;
  sub_10009E2A0(&_mh_execute_header, v2, v3, "Failed to create biome event for ask for time response: %{public}@", v4, v5, v6, v7, v8, DWORD2(v8));
}

void sub_100121674(void *a1)
{
  v1 = [a1 identifier];
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = v1;
  sub_10009E2A0(&_mh_execute_header, v2, v3, "Failed to create biome child state for downtimeStateEvent: %{public}@", v4, v5, v6, v7, v8, DWORD2(v8));
}

void sub_1001216FC(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  sub_100006030(&_mh_execute_header, a2, a3, "Could not fetch local user to create Screen Time population event: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100121768(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  sub_100006030(&_mh_execute_header, a2, a3, "Could not fetch local user: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1001217D4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "STRegionRatings loadRegionRatingsDataWithCompletionHandler returning error: %{public}@", &v2, 0xCu);
}

void sub_10012184C(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 40);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "STRegionRatings loadRegionRatingsDataWithCompletionHandler returning error: %{public}@", &v3, 0xCu);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}