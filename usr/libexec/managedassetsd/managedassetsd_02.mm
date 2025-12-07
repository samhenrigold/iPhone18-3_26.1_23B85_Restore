uint64_t sub_10006CE9C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v5 = *(v4 + 48);

    v6 = sub_10006DD78;
    v7 = v5;
  }

  else
  {
    v7 = *(v4 + 48);
    *(v4 + 248) = a1;
    v6 = sub_10006CFEC;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10006CFEC()
{
  v63 = v0;
  v2._rawValue = *(v0 + 224);
  CKSyncEngine.state.getter();

  CKSyncEngine.State.add(pendingRecordZoneChanges:)(v2);

  v3 = *(v0 + 168);
  if (!v3)
  {

LABEL_32:
    swift_unknownObjectRelease();
    goto LABEL_33;
  }

  v1 = v3 >> 62;
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_29:

    if (qword_100129980 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_49;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_29;
  }

LABEL_4:
  if (qword_100129980 != -1)
  {
LABEL_47:
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100066000(v4, qword_100129988);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 136);
  if (v7)
  {
    v9 = *(v0 + 128);
    v10 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *v10 = 136315394;
    sub_100092C8C(0, &qword_100128458, CKRecordID_ptr);
    v11 = Array.description.getter();
    v13 = sub_100065658(v11, v12, &v62);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    v14 = sub_100065658(v9, v8, &v62);

    *(v10 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Request to delete records %s for zone %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  if (v1)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
    if (v15)
    {
      goto LABEL_11;
    }

LABEL_19:

    v16 = _swiftEmptyArrayStorage;
LABEL_25:
    *(v0 + 256) = v16;
    v61 = (*(**(v0 + 48) + 192) + **(**(v0 + 48) + 192));
    v36 = swift_task_alloc();
    *(v0 + 264) = v36;
    *v36 = v0;
    v36[1] = sub_10006D880;

    return v61();
  }

  v15 = *((*(v0 + 168) & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_19;
  }

LABEL_11:
  *(v0 + 16) = _swiftEmptyArrayStorage;
  sub_10009265C(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v16 = *(v0 + 16);
    if ((*(v0 + 168) & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v15; ++i)
      {
        v18 = *(v0 + 296);
        v19 = *(v0 + 88);
        v20 = *(v0 + 56);
        v21 = *(v0 + 64);
        *v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        (*(v21 + 104))(v19, v18, v20);
        *(v0 + 16) = v16;
        v23 = v16[2];
        v22 = v16[3];
        if (v23 >= v22 >> 1)
        {
          sub_10009265C((v22 > 1), v23 + 1, 1);
          v16 = *(v0 + 16);
        }

        v24 = *(v0 + 88);
        v25 = *(v0 + 56);
        v26 = *(v0 + 64);
        v16[2] = v23 + 1;
        (*(v26 + 32))(v16 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23, v24, v25);
      }
    }

    else
    {
      v27 = (v3 + 32);
      v28 = *(*(v0 + 64) + 104);
      do
      {
        v29 = *v27;
        **(v0 + 80) = *v27;
        v28();
        *(v0 + 16) = v16;
        v31 = v16[2];
        v30 = v16[3];
        v32 = v29;
        if (v31 >= v30 >> 1)
        {
          sub_10009265C((v30 > 1), v31 + 1, 1);
          v16 = *(v0 + 16);
        }

        v33 = *(v0 + 80);
        v34 = *(v0 + 56);
        v35 = *(v0 + 64);
        v16[2] = v31 + 1;
        (*(v35 + 32))(v16 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v31, v33, v34);
        ++v27;
        --v15;
      }

      while (v15);
    }

    goto LABEL_25;
  }

  __break(1u);
LABEL_49:
  swift_once();
LABEL_30:
  v38 = type metadata accessor for Logger();
  sub_100066000(v38, qword_100129988);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();

  v41 = os_log_type_enabled(v39, v40);
  v42 = *(v0 + 136);
  v3 = *(v0 + 144);
  if (v41)
  {
    v43 = *(v0 + 128);
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v62 = v45;
    *v44 = 136315138;
    v1 = sub_100065658(v43, v42, &v62);

    *(v44 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v39, v40, "No pending record delete request for zone %s", v44, 0xCu);
    sub_10005D588(v45);

    goto LABEL_32;
  }

  swift_unknownObjectRelease();

LABEL_33:
  v46 = *(v0 + 120);
  v47 = (*(v0 + 112) - 1) & *(v0 + 112);
  if (v47)
  {
    v48 = *(v0 + 104);
LABEL_39:
    *(v0 + 112) = v47;
    *(v0 + 120) = v46;
    v50 = (v46 << 10) | (16 * __clz(__rbit64(v47)));
    v51 = (*(v48 + 48) + v50);
    *(v0 + 128) = *v51;
    *(v0 + 136) = v51[1];
    v52 = (*(v48 + 56) + v50);
    *(v0 + 144) = *v52;
    v53 = v52[1];
    ObjectType = swift_getObjectType();
    v55 = *(v53 + 160);

    swift_unknownObjectRetain();
    v60 = (v55 + *v55);
    v56 = swift_task_alloc();
    *(v0 + 152) = v56;
    *v56 = v0;
    v56[1] = sub_10006BC18;
    v58 = *(v0 + 32);
    v57 = *(v0 + 40);

    return v60(v58, v57, ObjectType, v53);
  }

  else
  {
    while (1)
    {
      v49 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        __break(1u);
        goto LABEL_47;
      }

      v48 = *(v0 + 104);
      if (v49 >= (((1 << *(v0 + 300)) + 63) >> 6))
      {
        break;
      }

      v47 = *(v48 + 8 * v49 + 64);
      ++v46;
      if (v47)
      {
        v46 = v49;
        goto LABEL_39;
      }
    }

    v59 = *(v0 + 8);

    return v59();
  }
}

uint64_t sub_10006D880(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 272) = v1;

  if (v1)
  {
    v5 = *(v4 + 48);

    v6 = sub_10006DE14;
    v7 = v5;
  }

  else
  {
    v7 = *(v4 + 48);
    *(v4 + 280) = a1;
    v6 = sub_10006D9C0;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10006D9C0()
{
  v1._rawValue = *(v0 + 256);
  CKSyncEngine.state.getter();

  CKSyncEngine.State.add(pendingRecordZoneChanges:)(v1);
  swift_unknownObjectRelease();

  v3 = *(v0 + 120);
  v4 = (*(v0 + 112) - 1) & *(v0 + 112);
  if (v4)
  {
    result = *(v0 + 104);
LABEL_7:
    *(v0 + 112) = v4;
    *(v0 + 120) = v3;
    v6 = (v3 << 10) | (16 * __clz(__rbit64(v4)));
    v7 = (*(result + 48) + v6);
    *(v0 + 128) = *v7;
    *(v0 + 136) = v7[1];
    v8 = (*(result + 56) + v6);
    *(v0 + 144) = *v8;
    v9 = v8[1];
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 160);

    swift_unknownObjectRetain();
    v16 = (v11 + *v11);
    v12 = swift_task_alloc();
    *(v0 + 152) = v12;
    *v12 = v0;
    v12[1] = sub_10006BC18;
    v14 = *(v0 + 32);
    v13 = *(v0 + 40);

    return v16(v14, v13, ObjectType, v9);
  }

  else
  {
    while (1)
    {
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        return result;
      }

      result = *(v0 + 104);
      if (v5 >= (((1 << *(v0 + 300)) + 63) >> 6))
      {
        break;
      }

      v4 = *(result + 8 * v5 + 64);
      ++v3;
      if (v4)
      {
        v3 = v5;
        goto LABEL_7;
      }
    }

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_10006DC40()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006DCDC()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006DD78()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006DE14()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006DEB0()
{
  v1[3] = v0;
  sub_10005F5CC(&qword_100128470, &qword_1000E6408);
  v1[4] = swift_task_alloc();
  v2 = type metadata accessor for CKSyncEngine.Configuration();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_10006DFB4, v0, 0);
}

uint64_t sub_10006DFB4()
{
  if ((*(*v0[3] + 136))())
  {

    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100066000(v1, qword_100129988);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "nil the existing sync engine", v4, 2u);
    }

    v5 = v0[3];

    (*(*v5 + 144))(0);
  }

  v6 = *(v0[3] + 112);
  v0[9] = v6;
  v7 = (*v6 + 152) & 0xFFFFFFFFFFFFLL | 0xE7DC000000000000;
  v0[10] = *(*v6 + 152);
  v0[11] = v7;

  return _swift_task_switch(sub_10006E150, v6, 0);
}

uint64_t sub_10006E150()
{
  v1 = *(v0 + 24);
  (*(v0 + 80))();
  v4 = (*(*v1 + 200) + **(*v1 + 200));
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_10006E27C;

  return v4();
}

uint64_t sub_10006E27C()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_10006EA48;
  }

  else
  {
    v4 = sub_10006E3A8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10006E3A8()
{
  v32 = v0;
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = [v5[15] privateCloudDatabase];
  v8 = type metadata accessor for CKSyncEngine.State.Serialization();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_100092BD4(&qword_100128478, v9, type metadata accessor for MACloudSyncedDatabase, &unk_1000E65B0);
  swift_unknownObjectRetain();
  CKSyncEngine.Configuration.init(database:stateSerialization:delegate:)();
  CKSyncEngine.Configuration.automaticallySync.setter();
  CKSyncEngine.Configuration.apsMachServiceName.setter();
  (*(v4 + 16))(v1, v2, v3);
  type metadata accessor for CKSyncEngine();
  swift_allocObject();
  v10 = CKSyncEngine.init(_:)();
  v0[14] = v10;
  v11 = *(*v5 + 18);

  v11(v12);
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100066000(v13, qword_100129988);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v31 = v17;
    *v16 = 136315138;
    v0[2] = v10;
    sub_100092BD4(&qword_100128480, 255, &type metadata accessor for CKSyncEngine, &protocol conformance descriptor for CKSyncEngine);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = sub_100065658(v18, v19, &v31);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "ReInitialized sync engine: %s", v16, 0xCu);
    sub_10005D588(v17);
  }

  v21 = (*(*v0[3] + 160))();
  v0[15] = v22;
  if (v22)
  {
    v23 = v21;
    v24 = v22;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Account identifier fetched, try to save all local data not yet uploaded", v27, 2u);
    }

    v28 = swift_task_alloc();
    v0[16] = v28;
    *v28 = v0;
    v28[1] = sub_10006E844;

    return sub_10006B8A0(v23, v24);
  }

  else
  {
    (*(v0[6] + 8))(v0[8], v0[5]);

    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_10006E844()
{
  v2 = *v1;

  v3 = *(v2 + 24);
  if (v0)
  {

    v4 = sub_100093B2C;
  }

  else
  {

    v4 = sub_10006E9A0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10006E9A0()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10006EA48()
{
  v38 = v0;
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100066000(v1, qword_100129988);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch account identifier: %@, intiate sync engine without account identifier", v4, 0xCu);
    sub_100066C80(v5, &qword_1001287F0, &qword_1000E6C40);
  }

  else
  {
  }

  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[5];
  v10 = v0[6];
  v11 = v0[3];
  v12 = v0[4];
  v13 = [v11[15] privateCloudDatabase];
  v14 = type metadata accessor for CKSyncEngine.State.Serialization();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  sub_100092BD4(&qword_100128478, v15, type metadata accessor for MACloudSyncedDatabase, &unk_1000E65B0);
  swift_unknownObjectRetain();
  CKSyncEngine.Configuration.init(database:stateSerialization:delegate:)();
  CKSyncEngine.Configuration.automaticallySync.setter();
  CKSyncEngine.Configuration.apsMachServiceName.setter();
  (*(v10 + 16))(v8, v7, v9);
  type metadata accessor for CKSyncEngine();
  swift_allocObject();
  v16 = CKSyncEngine.init(_:)();
  v0[14] = v16;
  v17 = *(*v11 + 18);

  v17(v18);
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  sub_100066000(v1, qword_100129988);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v37 = v22;
    *v21 = 136315138;
    v0[2] = v16;
    sub_100092BD4(&qword_100128480, 255, &type metadata accessor for CKSyncEngine, &protocol conformance descriptor for CKSyncEngine);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = sub_100065658(v23, v24, &v37);

    *(v21 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "ReInitialized sync engine: %s", v21, 0xCu);
    sub_10005D588(v22);
  }

  v27 = (*(*v0[3] + 160))(v26);
  v0[15] = v28;
  if (v28)
  {
    v29 = v27;
    v30 = v28;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Account identifier fetched, try to save all local data not yet uploaded", v33, 2u);
    }

    v34 = swift_task_alloc();
    v0[16] = v34;
    *v34 = v0;
    v34[1] = sub_10006E844;

    return sub_10006B8A0(v29, v30);
  }

  else
  {
    (*(v0[6] + 8))(v0[8], v0[5]);

    v36 = v0[1];

    return v36();
  }
}

uint64_t sub_10006F020(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10006F040, v1, 0);
}

uint64_t sub_10006F040()
{
  v1 = *(v0[3] + 112);
  v0[4] = v1;
  v2 = (*v1 + 112) & 0xFFFFFFFFFFFFLL | 0x5821000000000000;
  v0[5] = *(*v1 + 112);
  v0[6] = v2;
  return _swift_task_switch(sub_10006F080, v1, 0);
}

uint64_t sub_10006F080()
{
  v1 = (*(v0 + 40))();
  *(v0 + 56) = 0;
  *(v0 + 64) = v1;
  *(v0 + 72) = v2;
  v3 = *(v0 + 24);

  return _swift_task_switch(sub_10006F13C, v3, 0);
}

uint64_t sub_10006F13C()
{
  v1 = v0[9];
  if (v1 >> 60 == 15)
  {
    v2 = type metadata accessor for CKSyncEngine.State.Serialization();
    v3 = 1;
  }

  else
  {
    v4 = v0[7];
    v5 = v0[8];
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    sub_10005F304(v5, v1);
    JSONDecoder.init()();
    v2 = type metadata accessor for CKSyncEngine.State.Serialization();
    sub_100092BD4(&qword_100128498, 255, &type metadata accessor for CKSyncEngine.State.Serialization, &protocol conformance descriptor for CKSyncEngine.State.Serialization);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v7 = v0[8];
    v6 = v0[9];
    if (v4)
    {

      sub_10005F69C(v7, v6);
      sub_10005F69C(v7, v6);
      v8 = v0[1];
      goto LABEL_7;
    }

    sub_10005F69C(v0[8], v0[9]);
    sub_10005F69C(v7, v6);

    v3 = 0;
  }

  (*(*(v2 - 8) + 56))(v0[2], v3, 1, v2);
  v8 = v0[1];
LABEL_7:

  return v8();
}

uint64_t sub_10006F2F8(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return _swift_task_switch(sub_10006F31C, v2, 0);
}

uint64_t sub_10006F31C()
{
  v34 = v0;
  v1 = *(**(v0 + 40) + 136);
  v2 = v1();
  if (v2 && (v3 = *(v0 + 32), v4 = v2, , v3 == v4))
  {
    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    *(v0 + 48) = sub_100066000(v19, qword_100129988);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 32);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33[0] = v24;
      *v23 = 136315138;
      *(v0 + 16) = v22;
      type metadata accessor for CKSyncEngine();
      sub_100092BD4(&qword_100128480, 255, &type metadata accessor for CKSyncEngine, &protocol conformance descriptor for CKSyncEngine);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = sub_100065658(v25, v26, v33);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Saving sync state for active sync engine %s", v23, 0xCu);
      sub_10005D588(v24);
    }

    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    type metadata accessor for CKSyncEngine.State.Serialization();
    sub_100092BD4(&qword_1001284A8, 255, &type metadata accessor for CKSyncEngine.State.Serialization, &protocol conformance descriptor for CKSyncEngine.State.Serialization);
    v28 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    *(v0 + 56) = 0;
    *(v0 + 64) = v28;
    *(v0 + 72) = v29;
    v30 = *(v0 + 40);

    v31 = *(v30 + 112);
    *(v0 + 80) = v31;
    v32 = (*v31 + 120) & 0xFFFFFFFFFFFFLL | 0x3697000000000000;
    *(v0 + 88) = *(*v31 + 120);
    *(v0 + 96) = v32;

    return _swift_task_switch(sub_10006F930, v31, 0);
  }

  else
  {
    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100066000(v5, qword_100129988);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 32);
      v9 = swift_slowAlloc();
      v33[0] = swift_slowAlloc();
      *v9 = 136315394;
      *(v0 + 16) = v8;
      type metadata accessor for CKSyncEngine();
      sub_100092BD4(&qword_100128480, 255, &type metadata accessor for CKSyncEngine, &protocol conformance descriptor for CKSyncEngine);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v12 = sub_100065658(v10, v11, v33);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2080;
      *(v0 + 16) = (v1)(v13);
      sub_10005F5CC(&qword_1001284A0, &qword_1000E6440);
      v14 = String.init<A>(describing:)();
      v16 = sub_100065658(v14, v15, v33);

      *(v9 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v6, v7, "Ignore sync state for inactive sync engine %s, active engine is %s", v9, 0x16u);
      swift_arrayDestroy();
    }

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_10006F930()
{
  v1 = *(v0 + 56);
  (*(v0 + 88))(*(v0 + 64), *(v0 + 72));
  *(v0 + 104) = v1;
  v2 = *(v0 + 40);
  if (v1)
  {
    v3 = sub_10006FA20;
  }

  else
  {
    v3 = sub_10006F9C0;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_10006F9C0()
{
  sub_10005F358(v0[8], v0[9]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_10006FA20()
{
  sub_10005F358(v0[8], v0[9]);
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to save sync state: %@", v3, 0xCu);
    sub_100066C80(v4, &qword_1001287F0, &qword_1000E6C40);
  }

  else
  {
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_10006FB84()
{
  *(v1 + 16) = v0;
  v4 = (*(*v0 + 248) + **(*v0 + 248));
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10006FC98;

  return v4();
}

uint64_t sub_10006FC98()
{
  v2 = *v1;
  v2[4] = v0;

  if (v0)
  {
    v3 = v2[2];

    return _swift_task_switch(sub_10006FDCC, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_10006FDCC()
{
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100066000(v1, qword_100129988);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to reset sync state: %@", v4, 0xCu);
    sub_100066C80(v5, &qword_1001287F0, &qword_1000E6C40);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10006FF74(uint64_t a1, void *a2)
{
  if (*(*(v2 + 128) + 16))
  {
    sub_100065A98(a1, a2);
    if (v5)
    {
      return swift_unknownObjectRetain();
    }
  }

  _StringGuts.grow(_:)(45);

  v7._countAndFlagsBits = a1;
  v7._object = a2;
  String.append(_:)(v7);
  v8._object = 0x80000001000F0E80;
  v8._countAndFlagsBits = 0xD000000000000022;
  String.append(_:)(v8);
  nullsub_1();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_100092A98();
  swift_allocError();
  *v15 = v10;
  *(v15 + 8) = v12;
  *(v15 + 16) = v14;
  return swift_willThrow();
}

uint64_t sub_100070094(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000700B4, v1, 0);
}

uint64_t sub_1000700B4()
{
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_100129988);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Starting fetchLocalRecord %@", v7, 0xCu);
    sub_100066C80(v8, &qword_1001287F0, &qword_1000E6C40);
  }

  v11 = v0[2];
  v10 = v0[3];

  v12 = [v11 zoneID];
  v13 = [v12 zoneName];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = (*(*v10 + 280))(v14, v16);
  v19 = v18;

  v0[4] = v17;
  ObjectType = swift_getObjectType();
  v24 = (*(v19 + 64) + **(v19 + 64));
  v21 = swift_task_alloc();
  v0[5] = v21;
  *v21 = v0;
  v21[1] = sub_1000704E0;
  v22 = v0[2];

  return v24(v22, ObjectType, v19);
}

uint64_t sub_1000704E0(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_1000705F8, v2, 0);
}

uint64_t sub_1000705F8()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 48);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10007065C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10007067C, v1, 0);
}

uint64_t sub_10007067C()
{
  v1 = *(v0 + 24);
  v2 = [*(v0 + 16) recordID];
  v3 = [v2 zoneID];

  v4 = [v3 zoneName];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = (*(*v1 + 280))(v5, v7);
  v10 = v9;
  *(v0 + 32) = v8;

  ObjectType = swift_getObjectType();
  v15 = (*(v10 + 72) + **(v10 + 72));
  v12 = swift_task_alloc();
  *(v0 + 40) = v12;
  *v12 = v0;
  v12[1] = sub_100070A2C;
  v13 = *(v0 + 16);

  return v15(v13, ObjectType, v10);
}

uint64_t sub_100070A2C()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_100070B58;
  }

  else
  {
    v4 = sub_100093B44;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100070B58()
{
  swift_unknownObjectRelease();
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_100129988);
  v3 = v1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    v9 = [v6 recordID];
    *(v7 + 4) = v9;
    *v8 = v9;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    v8[1] = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to update recordSyncedUp: %@ error: %@", v7, 0x16u);
    sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
    swift_arrayDestroy();
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100070D48(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100070D68, v1, 0);
}

uint64_t sub_100070D68()
{
  v1 = *(v0 + 24);
  v2 = [*(v0 + 16) zoneID];
  v3 = [v2 zoneName];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = (*(*v1 + 280))(v4, v6);
  v9 = v8;
  *(v0 + 32) = v7;

  ObjectType = swift_getObjectType();
  v14 = (*(v9 + 80) + **(v9 + 80));
  v11 = swift_task_alloc();
  *(v0 + 40) = v11;
  *v11 = v0;
  v11[1] = sub_1000710E8;
  v12 = *(v0 + 16);

  return v14(v12, ObjectType, v9);
}

uint64_t sub_1000710E8()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_100071214;
  }

  else
  {
    v4 = sub_100093B44;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100071214()
{
  swift_unknownObjectRelease();
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_100129988);
  v3 = v1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2112;
    v9 = v6;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    v8[1] = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to update deleteSyncedUp: %@ error: %@", v7, 0x16u);
    sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
    swift_arrayDestroy();
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1000713F0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100071414, v2, 0);
}

uint64_t sub_100071414()
{
  v1 = *(v0 + 32);
  v2 = [*(v0 + 16) zoneID];
  v3 = [v2 zoneName];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = (*(*v1 + 280))(v4, v6);
  v9 = v8;
  *(v0 + 40) = v7;

  ObjectType = swift_getObjectType();
  v15 = (*(v9 + 88) + **(v9 + 88));
  v11 = swift_task_alloc();
  *(v0 + 48) = v11;
  *v11 = v0;
  v11[1] = sub_100071798;
  v13 = *(v0 + 16);
  v12 = *(v0 + 24);

  return v15(v13, v12, ObjectType, v9);
}

uint64_t sub_100071798()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1000718C4;
  }

  else
  {
    v4 = sub_100093B48;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000718C4()
{
  swift_unknownObjectRelease();
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_100129988);
  v3 = v1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2112;
    v9 = v6;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    v8[1] = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to process deleteFailed: %@ error: %@", v7, 0x16u);
    sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
    swift_arrayDestroy();
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100071AA0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100071AC0, v1, 0);
}

uint64_t sub_100071AC0()
{
  v1 = *(v0 + 24);
  v2 = [*(v0 + 16) zoneName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = (*(*v1 + 280))(v3, v5);
  v8 = v7;
  *(v0 + 32) = v6;

  ObjectType = swift_getObjectType();
  v13 = (*(v8 + 96) + **(v8 + 96));
  v10 = swift_task_alloc();
  *(v0 + 40) = v10;
  *v10 = v0;
  v10[1] = sub_100071E20;
  v11 = *(v0 + 16);

  return v13(v11, ObjectType, v8);
}

uint64_t sub_100071E20()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_100071FAC;
  }

  else
  {
    v4 = sub_100071F4C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100071F4C()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100071FAC()
{
  swift_unknownObjectRelease();
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_100129988);
  v3 = v1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2112;
    v9 = v6;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    v8[1] = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to update zoneDeleteSyncedUp: %@ error: %@", v7, 0x16u);
    sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
    swift_arrayDestroy();
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100072188(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000721AC, v2, 0);
}

uint64_t sub_1000721AC()
{
  v1 = *(v0 + 32);
  v2 = [*(v0 + 16) zoneName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = (*(*v1 + 280))(v3, v5);
  v8 = v7;
  *(v0 + 40) = v6;

  ObjectType = swift_getObjectType();
  v14 = (*(v8 + 104) + **(v8 + 104));
  v10 = swift_task_alloc();
  *(v0 + 48) = v10;
  *v10 = v0;
  v10[1] = sub_100072510;
  v12 = *(v0 + 16);
  v11 = *(v0 + 24);

  return v14(v12, v11, ObjectType, v8);
}

uint64_t sub_100072510()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_10007263C;
  }

  else
  {
    v4 = sub_100093B48;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10007263C()
{
  swift_unknownObjectRelease();
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_100129988);
  v3 = v1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2112;
    v9 = v6;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    v8[1] = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to process zoneDeleteFailed: %@ error: %@", v7, 0x16u);
    sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
    swift_arrayDestroy();
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100072818(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_10007283C, v2, 0);
}

uint64_t sub_10007283C()
{
  v42 = v0;
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for Logger();
  *(v0 + 40) = sub_100066000(v3, qword_100129988);
  v4 = v1;
  v5 = v2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 16);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v41[0] = swift_slowAlloc();
    *v9 = 138412802;
    v11 = [v8 recordID];
    *(v9 + 4) = v11;
    *v10 = v11;
    *(v9 + 12) = 2080;
    v12 = [v8 etag];
    if (v12)
    {
      v13 = v12;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0xE000000000000000;
    }

    v17 = *(v0 + 24);
    v18 = sub_100065658(v14, v16, v41);

    *(v9 + 14) = v18;
    *(v9 + 22) = 2080;
    v19 = [v17 etag];
    if (v19)
    {
      v20 = v19;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0xE000000000000000;
    }

    v24 = sub_100065658(v21, v23, v41);

    *(v9 + 24) = v24;
    _os_log_impl(&_mh_execute_header, v6, v7, "Starting resolveSyncUpConflict %@ cliETag: %s serverETag: %s", v9, 0x20u);
    sub_100066C80(v10, &qword_1001287F0, &qword_1000E6C40);

    swift_arrayDestroy();
  }

  else
  {
  }

  v25 = *(v0 + 32);
  v26 = [*(v0 + 16) recordID];
  v27 = [v26 zoneID];

  v28 = [v27 zoneName];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v32 = (*(*v25 + 280))(v29, v31);
  v34 = v33;
  *(v0 + 48) = v32;

  ObjectType = swift_getObjectType();
  v40 = (*(v34 + 112) + **(v34 + 112));
  v36 = swift_task_alloc();
  *(v0 + 56) = v36;
  *v36 = v0;
  v36[1] = sub_100072E00;
  v38 = *(v0 + 16);
  v37 = *(v0 + 24);

  return v40(v38, v37, ObjectType, v34);
}

uint64_t sub_100072E00(char a1)
{
  v4 = *v2;
  *(v4 + 64) = v1;

  v5 = *(v4 + 32);
  if (v1)
  {
    v6 = sub_100072FA4;
  }

  else
  {
    *(v4 + 72) = a1 & 1;
    v6 = sub_100072F40;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100072F40()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 72);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100072FA4()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 16);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412546;
    v7 = [v4 recordID];
    *(v5 + 4) = v7;
    *v6 = v7;
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    v6[1] = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to process resolveSyncUpConflict: %@ error: %@", v5, 0x16u);
    sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
    swift_arrayDestroy();
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9(0);
}

uint64_t sub_100073154(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100073174, v1, 0);
}

uint64_t sub_100073174()
{
  v1 = *(v0 + 24);
  v2 = [*(v0 + 16) recordID];
  v3 = [v2 zoneID];

  v4 = [v3 zoneName];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = (*(*v1 + 280))(v5, v7);
  v10 = v9;
  *(v0 + 32) = v8;

  ObjectType = swift_getObjectType();
  v15 = (*(v10 + 120) + **(v10 + 120));
  v12 = swift_task_alloc();
  *(v0 + 40) = v12;
  *v12 = v0;
  v12[1] = sub_100073528;
  v13 = *(v0 + 16);

  return v15(v13, ObjectType, v10);
}

uint64_t sub_100073528(char a1)
{
  v4 = *v2;
  *(v4 + 48) = v1;

  v5 = *(v4 + 24);
  if (v1)
  {
    v6 = sub_1000736CC;
  }

  else
  {
    *(v4 + 56) = a1 & 1;
    v6 = sub_100073668;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100073668()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 56);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000736CC()
{
  swift_unknownObjectRelease();
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_100129988);
  v3 = v1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    v9 = [v6 recordID];
    *(v7 + 4) = v9;
    *v8 = v9;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    v8[1] = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to process resolveUnknownItem: %@ error: %@", v7, 0x16u);
    sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
    swift_arrayDestroy();
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11(0);
}

uint64_t sub_1000738C0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000738E4, v2, 0);
}

uint64_t sub_1000738E4()
{
  v1 = *(v0 + 32);
  v2 = [*(v0 + 16) recordID];
  v3 = [v2 zoneID];

  v4 = [v3 zoneName];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = (*(*v1 + 280))(v5, v7);
  v10 = v9;
  *(v0 + 40) = v8;

  ObjectType = swift_getObjectType();
  v16 = (*(v10 + 128) + **(v10 + 128));
  v12 = swift_task_alloc();
  *(v0 + 48) = v12;
  *v12 = v0;
  v12[1] = sub_100073C98;
  v14 = *(v0 + 16);
  v13 = *(v0 + 24);

  return v16(v14, v13, ObjectType, v10);
}

uint64_t sub_100073C98()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_100073DC4;
  }

  else
  {
    v4 = sub_100093B48;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100073DC4()
{
  swift_unknownObjectRelease();
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_100129988);
  v3 = v1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    v9 = [v6 recordID];
    *(v7 + 4) = v9;
    *v8 = v9;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    v8[1] = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to process handleQuotaExceeded: %@ error: %@", v7, 0x16u);
    sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
    swift_arrayDestroy();
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100073FB4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100073FD4, v1, 0);
}

uint64_t sub_100073FD4()
{
  v1 = *(v0 + 24);
  v2 = [*(v0 + 16) recordID];
  v3 = [v2 zoneID];

  v4 = [v3 zoneName];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = (*(*v1 + 280))(v5, v7);
  v10 = v9;
  *(v0 + 32) = v8;

  ObjectType = swift_getObjectType();
  v15 = (*(v10 + 136) + **(v10 + 136));
  v12 = swift_task_alloc();
  *(v0 + 40) = v12;
  *v12 = v0;
  v12[1] = sub_100074384;
  v13 = *(v0 + 16);

  return v15(v13, ObjectType, v10);
}

uint64_t sub_100074384()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1000744B0;
  }

  else
  {
    v4 = sub_100093B44;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000744B0()
{
  swift_unknownObjectRelease();
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_100129988);
  v3 = v1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    v9 = [v6 recordID];
    *(v7 + 4) = v9;
    *v8 = v9;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    v8[1] = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to process recordSyncedDown: %@ error: %@", v7, 0x16u);
    sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
    swift_arrayDestroy();
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1000746A0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000746C0, v1, 0);
}

uint64_t sub_1000746C0()
{
  v1 = *(v0 + 24);
  v2 = [*(v0 + 16) zoneID];
  v3 = [v2 zoneName];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = (*(*v1 + 280))(v4, v6);
  v9 = v8;
  *(v0 + 32) = v7;

  ObjectType = swift_getObjectType();
  v14 = (*(v9 + 144) + **(v9 + 144));
  v11 = swift_task_alloc();
  *(v0 + 40) = v11;
  *v11 = v0;
  v11[1] = sub_100074A40;
  v12 = *(v0 + 16);

  return v14(v12, ObjectType, v9);
}

uint64_t sub_100074A40()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_100074B6C;
  }

  else
  {
    v4 = sub_100093B44;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100074B6C()
{
  swift_unknownObjectRelease();
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_100129988);
  v3 = v1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2112;
    v9 = v6;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    v8[1] = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to process deleteSyncedDown: %@ error: %@", v7, 0x16u);
    sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
    swift_arrayDestroy();
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100074D48(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100074D6C, v2, 0);
}

uint64_t sub_100074D6C()
{
  v1 = *(v0 + 32);
  v2 = [*(v0 + 16) zoneName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = (*(*v1 + 280))(v3, v5);
  v8 = v7;
  *(v0 + 40) = v6;

  ObjectType = swift_getObjectType();
  v14 = (*(v8 + 152) + **(v8 + 152));
  v10 = swift_task_alloc();
  *(v0 + 48) = v10;
  *v10 = v0;
  v10[1] = sub_1000750D0;
  v12 = *(v0 + 16);
  v11 = *(v0 + 24);

  return v14(v12, v11, ObjectType, v8);
}

uint64_t sub_1000750D0()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_10007525C;
  }

  else
  {
    v4 = sub_1000751FC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000751FC()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007525C()
{
  swift_unknownObjectRelease();
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_100129988);
  v3 = v1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2112;
    v9 = v6;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    v8[1] = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to process zoneDeleteSyncedDown: %@ error: %@", v7, 0x16u);
    sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
    swift_arrayDestroy();
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100075438(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100075458, v1, 0);
}

uint64_t sub_100075458()
{
  v1 = *(v0 + 24);
  v2 = [*(v0 + 16) recordName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *(v0 + 32) = v3;
  *(v0 + 40) = v5;
  v6 = *(v1 + 112);
  *(v0 + 48) = v6;
  v7 = (*v6 + 160) & 0xFFFFFFFFFFFFLL | 0xBCE6000000000000;
  *(v0 + 56) = *(*v6 + 160);
  *(v0 + 64) = v7;

  return _swift_task_switch(sub_100075510, v6, 0);
}

uint64_t sub_100075510()
{
  v1 = (*(v0 + 56))();
  *(v0 + 72) = 0;
  *(v0 + 80) = v1;
  *(v0 + 88) = v2;
  v3 = *(v0 + 24);

  return _swift_task_switch(sub_1000755A4, v3, 0);
}

uint64_t sub_1000755A4()
{
  v35 = v0;
  v1 = *(v0 + 88);
  if (!v1)
  {
    v4 = 0;
    v1 = *(v0 + 40);
    goto LABEL_10;
  }

  v2 = *(v0 + 40);
  if (*(v0 + 80) == *(v0 + 32) && v1 == v2)
  {

    v4 = 0;
LABEL_10:
    *(v0 + 193) = v4;
    *(v0 + 144) = v1;
    v5 = *(**(v0 + 24) + 240);

    v32 = (v5 + *v5);
    v6 = swift_task_alloc();
    *(v0 + 152) = v6;
    *v6 = v0;
    v6[1] = sub_100075E70;
    v7 = *(v0 + 32);
    v8 = v1;
    v9 = v32;

    return v9(v7, v8);
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    v4 = 0;
    v1 = v2;
    goto LABEL_10;
  }

  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100066000(v11, qword_100129988);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 80);
    v16 = *(v0 + 32);
    v15 = *(v0 + 40);
    v17 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v17 = 136315394;
    v18 = sub_100065658(v14, v1, &v34);

    *(v17 + 4) = v18;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_100065658(v16, v15, &v34);
    _os_log_impl(&_mh_execute_header, v12, v13, "account switch from = %s to %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v19 = *(*(v0 + 24) + 128);
  *(v0 + 96) = v19;
  v20 = *(v19 + 32);
  *(v0 + 192) = v20;
  v21 = -1;
  v22 = -1 << v20;
  if (-(-1 << v20) < 64)
  {
    v21 = ~(-1 << -v22);
  }

  v23 = v21 & *(v19 + 64);

  if (!v23)
  {
    v26 = 0;
    while (((63 - v22) >> 6) - 1 != v26)
    {
      v25 = v26 + 1;
      v23 = *(v24 + 8 * v26++ + 72);
      if (v23)
      {
        goto LABEL_25;
      }
    }

    v1 = *(v0 + 40);
    v4 = 1;
    goto LABEL_10;
  }

  v25 = 0;
LABEL_25:
  *(v0 + 104) = v23;
  *(v0 + 112) = v25;
  v27 = (*(v24 + 56) + ((v25 << 10) | (16 * __clz(__rbit64(v23)))));
  *(v0 + 120) = *v27;
  v28 = v27[1];
  ObjectType = swift_getObjectType();
  v30 = *(v28 + 200);
  swift_unknownObjectRetain();
  v33 = (v30 + *v30);
  v31 = swift_task_alloc();
  *(v0 + 128) = v31;
  *v31 = v0;
  v31[1] = sub_100075A74;
  v7 = ObjectType;
  v8 = v28;
  v9 = v33;

  return v9(v7, v8);
}

uint64_t sub_100075A74()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_100076534;
  }

  else
  {
    v4 = sub_100075BA0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100075BA0()
{
  result = swift_unknownObjectRelease();
  v2 = *(v0 + 112);
  v3 = (*(v0 + 104) - 1) & *(v0 + 104);
  if (v3)
  {
    result = *(v0 + 96);
LABEL_7:
    *(v0 + 104) = v3;
    *(v0 + 112) = v2;
    v5 = (*(result + 56) + ((v2 << 10) | (16 * __clz(__rbit64(v3)))));
    *(v0 + 120) = *v5;
    v6 = v5[1];
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 200);
    swift_unknownObjectRetain();
    v16 = (v8 + *v8);
    v9 = swift_task_alloc();
    *(v0 + 128) = v9;
    *v9 = v0;
    v9[1] = sub_100075A74;
    v10 = ObjectType;
    v11 = v6;
    v12 = v16;
  }

  else
  {
    while (1)
    {
      v4 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        return result;
      }

      result = *(v0 + 96);
      if (v4 >= (((1 << *(v0 + 192)) + 63) >> 6))
      {
        break;
      }

      v3 = *(result + 8 * v4 + 64);
      ++v2;
      if (v3)
      {
        v2 = v4;
        goto LABEL_7;
      }
    }

    v13 = *(v0 + 40);
    *(v0 + 193) = 1;
    *(v0 + 144) = v13;
    v14 = *(**(v0 + 24) + 240);

    v17 = (v14 + *v14);
    v15 = swift_task_alloc();
    *(v0 + 152) = v15;
    *v15 = v0;
    v15[1] = sub_100075E70;
    v10 = *(v0 + 32);
    v11 = v13;
    v12 = v17;
  }

  return v12(v10, v11);
}

uint64_t sub_100075E70()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  v8 = (*(**(v2 + 24) + 224) + **(**(v2 + 24) + 224));
  v4 = swift_task_alloc();
  *(v2 + 160) = v4;
  *v4 = v3;
  v4[1] = sub_100076040;
  v5 = *(v2 + 144);
  v6 = *(v2 + 32);

  return v8(v6, v5);
}

uint64_t sub_100076040()
{
  v2 = *v1;
  *(v2 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);

    return _swift_task_switch(sub_100076770, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v2 + 176) = v4;
    *v4 = v2;
    v4[1] = sub_1000761CC;
    v5 = *(v2 + 193);
    v6 = *(v2 + 144);
    v7 = *(v2 + 32);

    return sub_100076BC8(v7, v6, 0, 0, v5);
  }
}

uint64_t sub_1000761CC()
{
  v2 = *v1;
  v2[23] = v0;

  if (v0)
  {
    v3 = v2[3];

    return _swift_task_switch(sub_100076998, v3, 0);
  }

  else
  {
    swift_bridgeObjectRelease_n();
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_10007630C()
{
  v15 = v0;
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100066000(v1, qword_100129988);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[5];
  if (v4)
  {
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136315394;
    v10 = sub_100065658(v6, v5, &v14);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error handleAccount signIn, currently signed in user %s, error: %@", v7, 0x16u);
    sub_100066C80(v8, &qword_1001287F0, &qword_1000E6C40);

    sub_10005D588(v9);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_100076534()
{
  v15 = v0;

  swift_unknownObjectRelease();
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100066000(v1, qword_100129988);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[5];
  if (v4)
  {
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136315394;
    v10 = sub_100065658(v6, v5, &v14);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error handleAccount signIn, currently signed in user %s, error: %@", v7, 0x16u);
    sub_100066C80(v8, &qword_1001287F0, &qword_1000E6C40);

    sub_10005D588(v9);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_100076770()
{
  v15 = v0;
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100066000(v1, qword_100129988);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[5];
  if (v4)
  {
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136315394;
    v10 = sub_100065658(v6, v5, &v14);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error handleAccount signIn, currently signed in user %s, error: %@", v7, 0x16u);
    sub_100066C80(v8, &qword_1001287F0, &qword_1000E6C40);

    sub_10005D588(v9);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_100076998()
{
  v15 = v0;

  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100066000(v1, qword_100129988);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[5];
  if (v4)
  {
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136315394;
    v10 = sub_100065658(v6, v5, &v14);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error handleAccount signIn, currently signed in user %s, error: %@", v7, 0x16u);
    sub_100066C80(v8, &qword_1001287F0, &qword_1000E6C40);

    sub_10005D588(v9);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_100076BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = v5;
  *(v6 + 340) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  v7 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  *(v6 + 72) = v7;
  *(v6 + 80) = *(v7 - 8);
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_100076CB8, v5, 0);
}

uint64_t sub_100076CB8()
{
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 64) + 128);
  *(v0 + 120) = v2;
  v3 = *(v2 + 32);
  *(v0 + 341) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -(-1 << v3));
  }

  v6 = v4 & *(v2 + 64);
  *(v0 + 328) = enum case for CKSyncEngine.PendingDatabaseChange.saveZone(_:);
  *(v0 + 332) = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
  *(v0 + 336) = enum case for CKSyncEngine.PendingRecordZoneChange.deleteRecord(_:);

  if (v6)
  {
    v8 = 0;
LABEL_8:
    *(v0 + 128) = v6;
    *(v0 + 136) = v8;
    v10 = (v8 << 10) | (16 * __clz(__rbit64(v6)));
    v11 = (*(v7 + 48) + v10);
    *(v0 + 144) = *v11;
    *(v0 + 152) = v11[1];
    v12 = (*(v7 + 56) + v10);
    *(v0 + 160) = *v12;
    v29 = v12[1];
    *(v0 + 168) = v29;
    if (v1)
    {
      ObjectType = swift_getObjectType();
      v14 = *(v29 + 160);
      swift_unknownObjectRetain();

      v27 = (v14 + *v14);
      v15 = swift_task_alloc();
      *(v0 + 176) = v15;
      *v15 = v0;
      v15[1] = sub_100077060;
      v16 = *(v0 + 32);

      return v27(v16, v1, ObjectType, v29);
    }

    else
    {
      swift_unknownObjectRetain();
      v18 = swift_getObjectType();
      v28 = (*(v29 + 168) + **(v29 + 168));
      v19 = swift_task_alloc();
      *(v0 + 312) = v19;
      *v19 = v0;
      v19[1] = sub_100078D1C;
      v20 = *(v0 + 168);
      v21 = *(v0 + 340);
      v22 = *(v0 + 48);
      v23 = *(v0 + 56);
      v24 = *(v0 + 40);
      v25 = *(v0 + 32);

      return v28(v25, v24, v22, v23, v21, v18, v20);
    }
  }

  else
  {
    v9 = 0;
    while (((63 - v5) >> 6) - 1 != v9)
    {
      v8 = v9 + 1;
      v6 = *(v7 + 8 * v9++ + 72);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_100077060(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[23] = a1;
  v4[24] = a2;
  v4[25] = v2;

  if (v2)
  {
    v5 = v4[8];

    v6 = sub_1000791A8;
    v7 = v5;
  }

  else
  {
    v7 = v4[8];
    v6 = sub_10007718C;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10007718C()
{
  v78 = v0;
  v1 = *(v0 + 184);
  if (v1)
  {
    if (v1 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_4;
      }
    }

    else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if (qword_100129980 != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      sub_100066000(v2, qword_100129988);

      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v3, v4))
      {
        v6 = *(v0 + 144);
        v5 = *(v0 + 152);
        v7 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *v7 = 136315394;
        sub_100092C8C(0, &qword_100128458, CKRecordID_ptr);
        v8 = Array.description.getter();
        v10 = sub_100065658(v8, v9, &v77);

        *(v7 + 4) = v10;
        *(v7 + 12) = 2080;
        *(v7 + 14) = sub_100065658(v6, v5, &v77);
        _os_log_impl(&_mh_execute_header, v3, v4, "Uploading pending records %s for zone %s", v7, 0x16u);
        swift_arrayDestroy();
      }

      v11 = **(v0 + 64);
      v12 = *(v11 + 192);
      *(v0 + 208) = v12;
      *(v0 + 216) = (v11 + 192) & 0xFFFFFFFFFFFFLL | 0x9F87000000000000;
      v75 = (v12 + *v12);
      v13 = swift_task_alloc();
      *(v0 + 224) = v13;
      *v13 = v0;
      v14 = sub_100077C50;
      goto LABEL_41;
    }

    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100066000(v15, qword_100129988);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = *(v0 + 144);
      v18 = *(v0 + 152);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v77 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_100065658(v19, v18, &v77);
      _os_log_impl(&_mh_execute_header, v16, v17, "No pending records to upload for zone %s", v20, 0xCu);
      sub_10005D588(v21);
    }
  }

  v22 = *(v0 + 192);
  if (!v22)
  {
    goto LABEL_49;
  }

  v23 = v22 >> 62;
  if (!(v22 >> 62))
  {
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

LABEL_45:

    if (qword_100129980 == -1)
    {
      goto LABEL_46;
    }

    goto LABEL_54;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_45;
  }

LABEL_18:
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100066000(v24, qword_100129988);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();

  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v0 + 152);
  if (v27)
  {
    v29 = *(v0 + 144);
    v30 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *v30 = 136315394;
    sub_100092C8C(0, &qword_100128458, CKRecordID_ptr);
    v31 = Array.description.getter();
    v33 = sub_100065658(v31, v32, &v77);

    *(v30 + 4) = v33;
    *(v30 + 12) = 2080;
    v34 = sub_100065658(v29, v28, &v77);

    *(v30 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v25, v26, "Request to delete records %s for zone %s", v30, 0x16u);
    swift_arrayDestroy();
    v23 = v22 >> 62;
  }

  else
  {
  }

  if (v23)
  {
    v35 = _CocoaArrayWrapper.endIndex.getter();
    if (v35)
    {
      goto LABEL_26;
    }

LABEL_34:

    v36 = _swiftEmptyArrayStorage;
LABEL_40:
    *(v0 + 280) = v36;
    v75 = (*(**(v0 + 64) + 192) + **(**(v0 + 64) + 192));
    v13 = swift_task_alloc();
    *(v0 + 288) = v13;
    *v13 = v0;
    v14 = sub_100078A78;
LABEL_41:
    v13[1] = v14;

    return v75();
  }

  v35 = *((*(v0 + 192) & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v35)
  {
    goto LABEL_34;
  }

LABEL_26:
  *(v0 + 16) = _swiftEmptyArrayStorage;
  sub_10009265C(0, v35 & ~(v35 >> 63), 0);
  if ((v35 & 0x8000000000000000) == 0)
  {
    v36 = *(v0 + 16);
    if ((*(v0 + 192) & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v35; ++i)
      {
        v38 = *(v0 + 336);
        v39 = *(v0 + 104);
        v40 = *(v0 + 72);
        v41 = *(v0 + 80);
        *v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        (*(v41 + 104))(v39, v38, v40);
        *(v0 + 16) = v36;
        v43 = v36[2];
        v42 = v36[3];
        if (v43 >= v42 >> 1)
        {
          sub_10009265C((v42 > 1), v43 + 1, 1);
          v36 = *(v0 + 16);
        }

        v44 = *(v0 + 104);
        v45 = *(v0 + 72);
        v46 = *(v0 + 80);
        v36[2] = v43 + 1;
        (*(v46 + 32))(v36 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v43, v44, v45);
      }
    }

    else
    {
      v47 = (v22 + 32);
      v48 = *(*(v0 + 80) + 104);
      do
      {
        v49 = *v47;
        **(v0 + 96) = *v47;
        v48();
        *(v0 + 16) = v36;
        v51 = v36[2];
        v50 = v36[3];
        v52 = v49;
        if (v51 >= v50 >> 1)
        {
          sub_10009265C((v50 > 1), v51 + 1, 1);
          v36 = *(v0 + 16);
        }

        v53 = *(v0 + 96);
        v54 = *(v0 + 72);
        v55 = *(v0 + 80);
        v36[2] = v51 + 1;
        (*(v55 + 32))(v36 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v51, v53, v54);
        ++v47;
        --v35;
      }

      while (v35);
    }

    goto LABEL_40;
  }

  __break(1u);
LABEL_54:
  swift_once();
LABEL_46:
  v57 = type metadata accessor for Logger();
  sub_100066000(v57, qword_100129988);

  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.info.getter();

  v60 = os_log_type_enabled(v58, v59);
  v61 = *(v0 + 152);
  if (!v60)
  {

LABEL_49:

    goto LABEL_50;
  }

  v62 = *(v0 + 144);
  v63 = swift_slowAlloc();
  v64 = swift_slowAlloc();
  v77 = v64;
  *v63 = 136315138;
  v65 = sub_100065658(v62, v61, &v77);

  *(v63 + 4) = v65;
  _os_log_impl(&_mh_execute_header, v58, v59, "No pending record delete request for zone %s", v63, 0xCu);
  sub_10005D588(v64);

LABEL_50:
  v76 = *(v0 + 168);
  ObjectType = swift_getObjectType();
  v74 = (*(v76 + 168) + **(v76 + 168));
  v67 = swift_task_alloc();
  *(v0 + 312) = v67;
  *v67 = v0;
  v67[1] = sub_100078D1C;
  v68 = *(v0 + 168);
  v69 = *(v0 + 340);
  v70 = *(v0 + 48);
  v71 = *(v0 + 56);
  v72 = *(v0 + 40);
  v73 = *(v0 + 32);

  return v74(v73, v72, v70, v71, v69, ObjectType, v68);
}

uint64_t sub_100077C50(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = *(v4 + 64);

    v6 = sub_100079244;
    v7 = v5;
  }

  else
  {
    v7 = *(v4 + 64);
    *(v4 + 240) = a1;
    v6 = sub_100077D9C;
  }

  return _swift_task_switch(v6, v7, 0);
}

void *sub_100077D9C()
{
  v33 = *(v0 + 184);
  v1 = *(v0 + 328);
  CKSyncEngine.state.getter();

  sub_10005F5CC(&qword_100128490, &qword_1000E6420);
  v2 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000E61E0;
  v6 = objc_allocWithZone(CKRecordZone);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithZoneName:v7];

  *(v5 + v4) = v8;
  (*(v3 + 104))(v5 + v4, v1, v2);
  CKSyncEngine.State.add(pendingDatabaseChanges:)(v5);

  if (v33 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_11:

    v11 = _swiftEmptyArrayStorage;
    goto LABEL_17;
  }

  v9 = *((*(v0 + 184) & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_3:
  *(v0 + 24) = _swiftEmptyArrayStorage;
  result = sub_10009265C(0, v9 & ~(v9 >> 63), 0);
  if (v9 < 0)
  {
    __break(1u);
    return result;
  }

  v11 = *(v0 + 24);
  v12 = *(v0 + 184);
  if ((v12 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v9; ++i)
    {
      v14 = *(v0 + 332);
      v15 = *(v0 + 112);
      v16 = *(v0 + 72);
      v17 = *(v0 + 80);
      *v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      (*(v17 + 104))(v15, v14, v16);
      *(v0 + 24) = v11;
      v19 = v11[2];
      v18 = v11[3];
      if (v19 >= v18 >> 1)
      {
        sub_10009265C((v18 > 1), v19 + 1, 1);
        v11 = *(v0 + 24);
      }

      v20 = *(v0 + 112);
      v21 = *(v0 + 72);
      v22 = *(v0 + 80);
      v11[2] = v19 + 1;
      (*(v22 + 32))(v11 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v19, v20, v21);
    }
  }

  else
  {
    v23 = (v12 + 32);
    v24 = *(*(v0 + 80) + 104);
    do
    {
      v25 = *v23;
      **(v0 + 88) = *v23;
      v24();
      *(v0 + 24) = v11;
      v27 = v11[2];
      v26 = v11[3];
      v28 = v25;
      if (v27 >= v26 >> 1)
      {
        sub_10009265C((v26 > 1), v27 + 1, 1);
        v11 = *(v0 + 24);
      }

      v30 = *(v0 + 80);
      v29 = *(v0 + 88);
      v31 = *(v0 + 72);
      v11[2] = v27 + 1;
      (*(v30 + 32))(v11 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v27, v29, v31);
      ++v23;
      --v9;
    }

    while (v9);
  }

LABEL_17:
  *(v0 + 248) = v11;
  v34 = (*(v0 + 208) + **(v0 + 208));
  v32 = swift_task_alloc();
  *(v0 + 256) = v32;
  *v32 = v0;
  v32[1] = sub_1000781BC;

  return v34();
}

uint64_t sub_1000781BC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {
    v5 = *(v4 + 64);

    v6 = sub_1000792E0;
    v7 = v5;
  }

  else
  {
    v7 = *(v4 + 64);
    *(v4 + 272) = a1;
    v6 = sub_10007830C;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10007830C()
{
  v59 = v0;
  v1._rawValue = *(v0 + 248);
  CKSyncEngine.state.getter();

  CKSyncEngine.State.add(pendingRecordZoneChanges:)(v1);

  v2 = *(v0 + 192);
  if (!v2)
  {
    goto LABEL_34;
  }

  v3 = v2 >> 62;
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_30:

    if (qword_100129980 == -1)
    {
      goto LABEL_31;
    }

    goto LABEL_39;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_30;
  }

LABEL_4:
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100066000(v4, qword_100129988);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 152);
  if (v7)
  {
    v9 = *(v0 + 144);
    v10 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v10 = 136315394;
    sub_100092C8C(0, &qword_100128458, CKRecordID_ptr);
    v11 = Array.description.getter();
    v13 = sub_100065658(v11, v12, &v58);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    v14 = sub_100065658(v9, v8, &v58);

    *(v10 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Request to delete records %s for zone %s", v10, 0x16u);
    swift_arrayDestroy();
    v3 = v2 >> 62;
  }

  else
  {
  }

  if (v3)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
    if (v15)
    {
      goto LABEL_12;
    }

LABEL_20:

    v16 = _swiftEmptyArrayStorage;
LABEL_26:
    *(v0 + 280) = v16;
    v56 = (*(**(v0 + 64) + 192) + **(**(v0 + 64) + 192));
    v36 = swift_task_alloc();
    *(v0 + 288) = v36;
    *v36 = v0;
    v36[1] = sub_100078A78;

    return v56();
  }

  v15 = *((*(v0 + 192) & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_20;
  }

LABEL_12:
  *(v0 + 16) = _swiftEmptyArrayStorage;
  sub_10009265C(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v16 = *(v0 + 16);
    if ((*(v0 + 192) & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v15; ++i)
      {
        v18 = *(v0 + 336);
        v19 = *(v0 + 104);
        v20 = *(v0 + 72);
        v21 = *(v0 + 80);
        *v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        (*(v21 + 104))(v19, v18, v20);
        *(v0 + 16) = v16;
        v23 = v16[2];
        v22 = v16[3];
        if (v23 >= v22 >> 1)
        {
          sub_10009265C((v22 > 1), v23 + 1, 1);
          v16 = *(v0 + 16);
        }

        v24 = *(v0 + 104);
        v25 = *(v0 + 72);
        v26 = *(v0 + 80);
        v16[2] = v23 + 1;
        (*(v26 + 32))(v16 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23, v24, v25);
      }
    }

    else
    {
      v27 = (v2 + 32);
      v28 = *(*(v0 + 80) + 104);
      do
      {
        v29 = *v27;
        **(v0 + 96) = *v27;
        v28();
        *(v0 + 16) = v16;
        v31 = v16[2];
        v30 = v16[3];
        v32 = v29;
        if (v31 >= v30 >> 1)
        {
          sub_10009265C((v30 > 1), v31 + 1, 1);
          v16 = *(v0 + 16);
        }

        v33 = *(v0 + 96);
        v34 = *(v0 + 72);
        v35 = *(v0 + 80);
        v16[2] = v31 + 1;
        (*(v35 + 32))(v16 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v31, v33, v34);
        ++v27;
        --v15;
      }

      while (v15);
    }

    goto LABEL_26;
  }

  __break(1u);
LABEL_39:
  swift_once();
LABEL_31:
  v38 = type metadata accessor for Logger();
  sub_100066000(v38, qword_100129988);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();

  v41 = os_log_type_enabled(v39, v40);
  v42 = *(v0 + 152);
  if (!v41)
  {

LABEL_34:

    goto LABEL_35;
  }

  v43 = *(v0 + 144);
  v44 = swift_slowAlloc();
  v45 = swift_slowAlloc();
  v58 = v45;
  *v44 = 136315138;
  v46 = sub_100065658(v43, v42, &v58);

  *(v44 + 4) = v46;
  _os_log_impl(&_mh_execute_header, v39, v40, "No pending record delete request for zone %s", v44, 0xCu);
  sub_10005D588(v45);

LABEL_35:
  v57 = *(v0 + 168);
  ObjectType = swift_getObjectType();
  v55 = (*(v57 + 168) + **(v57 + 168));
  v48 = swift_task_alloc();
  *(v0 + 312) = v48;
  *v48 = v0;
  v48[1] = sub_100078D1C;
  v49 = *(v0 + 168);
  v50 = *(v0 + 340);
  v51 = *(v0 + 48);
  v52 = *(v0 + 56);
  v53 = *(v0 + 40);
  v54 = *(v0 + 32);

  return v55(v54, v53, v51, v52, v50, ObjectType, v49);
}

uint64_t sub_100078A78(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 296) = v1;

  if (v1)
  {
    v5 = *(v4 + 64);

    v6 = sub_10007937C;
    v7 = v5;
  }

  else
  {
    v7 = *(v4 + 64);
    *(v4 + 304) = a1;
    v6 = sub_100078BB8;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100078BB8()
{
  v1._rawValue = *(v0 + 280);
  CKSyncEngine.state.getter();

  CKSyncEngine.State.add(pendingRecordZoneChanges:)(v1);

  v12 = *(v0 + 168);
  ObjectType = swift_getObjectType();
  v11 = (*(v12 + 168) + **(v12 + 168));
  v3 = swift_task_alloc();
  *(v0 + 312) = v3;
  *v3 = v0;
  v3[1] = sub_100078D1C;
  v4 = *(v0 + 168);
  v5 = *(v0 + 340);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 40);
  v9 = *(v0 + 32);

  return v11(v9, v8, v6, v7, v5, ObjectType, v4);
}

uint64_t sub_100078D1C()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_100079418;
  }

  else
  {
    v4 = sub_100078E48;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100078E48()
{
  result = swift_unknownObjectRelease();
  v2 = *(v0 + 136);
  v3 = (*(v0 + 128) - 1) & *(v0 + 128);
  if (v3)
  {
    result = *(v0 + 120);
LABEL_7:
    *(v0 + 128) = v3;
    *(v0 + 136) = v2;
    v5 = *(v0 + 40);
    v6 = (v2 << 10) | (16 * __clz(__rbit64(v3)));
    v7 = (*(result + 48) + v6);
    *(v0 + 144) = *v7;
    *(v0 + 152) = v7[1];
    v8 = (*(result + 56) + v6);
    *(v0 + 160) = *v8;
    v24 = v8[1];
    *(v0 + 168) = v24;
    if (v5)
    {
      ObjectType = swift_getObjectType();
      v10 = *(v24 + 160);
      swift_unknownObjectRetain();

      v22 = (v10 + *v10);
      v11 = swift_task_alloc();
      *(v0 + 176) = v11;
      *v11 = v0;
      v11[1] = sub_100077060;
      v12 = *(v0 + 32);

      return v22(v12, v5, ObjectType, v24);
    }

    else
    {
      swift_unknownObjectRetain();
      v13 = swift_getObjectType();
      v23 = (*(v24 + 168) + **(v24 + 168));
      v14 = swift_task_alloc();
      *(v0 + 312) = v14;
      *v14 = v0;
      v14[1] = sub_100078D1C;
      v15 = *(v0 + 168);
      v16 = *(v0 + 340);
      v17 = *(v0 + 48);
      v18 = *(v0 + 56);
      v19 = *(v0 + 40);
      v20 = *(v0 + 32);

      return v23(v20, v19, v17, v18, v16, v13, v15);
    }
  }

  else
  {
    while (1)
    {
      v4 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        return result;
      }

      result = *(v0 + 120);
      if (v4 >= (((1 << *(v0 + 341)) + 63) >> 6))
      {
        break;
      }

      v3 = *(result + 8 * v4 + 64);
      ++v2;
      if (v3)
      {
        v2 = v4;
        goto LABEL_7;
      }
    }

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_1000791A8()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100079244()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000792E0()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007937C()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100079418()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000794B4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000794D4, v1, 0);
}

uint64_t sub_1000794D4()
{
  v1 = v0[2];
  v2 = *(v0[3] + 112);
  v0[4] = v2;
  v3 = [v1 recordName];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v0[5] = v4;
  v0[6] = v6;
  v7 = (*v2 + 168) & 0xFFFFFFFFFFFFLL | 0xDCE2000000000000;
  v0[7] = *(*v2 + 168);
  v0[8] = v7;

  return _swift_task_switch(sub_100079590, v2, 0);
}

uint64_t sub_100079590()
{
  (*(v0 + 56))(*(v0 + 40), *(v0 + 48));
  *(v0 + 72) = 0;
  v1 = *(v0 + 24);

  v4 = (*(*v1 + 224) + **(*v1 + 224));
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_100079718;

  return v4(0, 0);
}

uint64_t sub_100079718()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_10007A284;
  }

  else
  {
    v4 = sub_100079844;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100079844()
{
  v1 = *(v0 + 24);
  v2 = [*(v0 + 16) recordName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *(v0 + 96) = v3;
  *(v0 + 104) = v5;
  v6 = *(v1 + 128);
  *(v0 + 112) = v6;
  v7 = *(v6 + 32);
  *(v0 + 160) = v7;
  v8 = -1;
  v9 = -1 << v7;
  if (-(-1 << v7) < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v10 = v8 & *(v6 + 64);

  if (v10)
  {
    v11 = 0;
LABEL_8:
    *(v0 + 120) = v10;
    *(v0 + 128) = v11;
    v13 = (*(v6 + 56) + ((v11 << 10) | (16 * __clz(__rbit64(v10)))));
    *(v0 + 136) = *v13;
    v14 = v13[1];
    ObjectType = swift_getObjectType();
    v16 = *(v14 + 168);
    swift_unknownObjectRetain();
    v21 = (v16 + *v16);
    v17 = swift_task_alloc();
    *(v0 + 144) = v17;
    *v17 = v0;
    v17[1] = sub_100079AA0;
    v18 = *(v0 + 96);

    return (v21)(0, 0, v18, v5, 0, ObjectType, v14);
  }

  else
  {
    v12 = 0;
    while (((63 - v9) >> 6) - 1 != v12)
    {
      v11 = v12 + 1;
      v10 = *(v6 + 8 * v12++ + 72);
      if (v10)
      {
        goto LABEL_8;
      }
    }

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_100079AA0()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);

    v4 = sub_100079DE0;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 24);
    v4 = sub_100079BC8;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100079BC8()
{
  result = swift_unknownObjectRelease();
  v2 = *(v0 + 128);
  v3 = (*(v0 + 120) - 1) & *(v0 + 120);
  if (v3)
  {
    v4 = *(v0 + 112);
LABEL_7:
    *(v0 + 120) = v3;
    *(v0 + 128) = v2;
    v6 = *(v0 + 104);
    v7 = (*(v4 + 56) + ((v2 << 10) | (16 * __clz(__rbit64(v3)))));
    *(v0 + 136) = *v7;
    v8 = v7[1];
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 168);
    swift_unknownObjectRetain();
    v14 = (v10 + *v10);
    v11 = swift_task_alloc();
    *(v0 + 144) = v11;
    *v11 = v0;
    v11[1] = sub_100079AA0;
    v12 = *(v0 + 96);

    return (v14)(0, 0, v12, v6, 0, ObjectType, v8);
  }

  else
  {
    while (1)
    {
      v5 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        return result;
      }

      v4 = *(v0 + 112);
      if (v5 >= (((1 << *(v0 + 160)) + 63) >> 6))
      {
        break;
      }

      v3 = *(v4 + 8 * v5 + 64);
      ++v2;
      if (v3)
      {
        v2 = v5;
        goto LABEL_7;
      }
    }

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_100079DE0()
{
  v19 = v0;

  swift_unknownObjectRelease();
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_100129988);
  v3 = v1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v7 = 136315394;
    v10 = [v6 recordName];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_100065658(v11, v13, &v18);

    *(v7 + 4) = v14;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v15;
    *v8 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error handleAccount signOut prviously signed user %s, error: %@", v7, 0x16u);
    sub_100066C80(v8, &qword_1001287F0, &qword_1000E6C40);

    sub_10005D588(v9);
  }

  else
  {
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10007A038()
{
  v19 = v0;

  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_100129988);
  v3 = v1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v7 = 136315394;
    v10 = [v6 recordName];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_100065658(v11, v13, &v18);

    *(v7 + 4) = v14;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v15;
    *v8 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error handleAccount signOut prviously signed user %s, error: %@", v7, 0x16u);
    sub_100066C80(v8, &qword_1001287F0, &qword_1000E6C40);

    sub_10005D588(v9);
  }

  else
  {
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10007A284()
{
  v19 = v0;
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_100129988);
  v3 = v1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v7 = 136315394;
    v10 = [v6 recordName];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_100065658(v11, v13, &v18);

    *(v7 + 4) = v14;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v15;
    *v8 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error handleAccount signOut prviously signed user %s, error: %@", v7, 0x16u);
    sub_100066C80(v8, &qword_1001287F0, &qword_1000E6C40);

    sub_10005D588(v9);
  }

  else
  {
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10007A4C8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_10007A4EC, v2, 0);
}

uint64_t sub_10007A4EC()
{
  v53 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = [v2 recordName];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *(v0 + 40) = v4;
  *(v0 + 48) = v6;
  v7 = [v1 recordName];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = [v2 recordName];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (v8 == v12 && v10 == v14)
  {

    v17 = 0;
LABEL_15:
    *(v0 + 153) = v17;
    v37 = *(v0 + 48);
    v38 = *(**(v0 + 32) + 240);

    v50 = (v38 + *v38);
    v39 = swift_task_alloc();
    *(v0 + 104) = v39;
    *v39 = v0;
    v39[1] = sub_10007AE3C;
    v40 = *(v0 + 40);
    v41 = v37;
    v42 = v50;

    return v42(v40, v41);
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v17 = 0;
  if (v16)
  {
    goto LABEL_15;
  }

  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 16);
  v19 = type metadata accessor for Logger();
  sub_100066000(v19, qword_100129988);
  v20 = v18;

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 16);
    v24 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v24 = 136315394;
    v25 = [v23 recordName];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = sub_100065658(v26, v28, &v52);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_100065658(v4, v6, &v52);
    _os_log_impl(&_mh_execute_header, v21, v22, "account switch from = %s to %s", v24, 0x16u);
    swift_arrayDestroy();
  }

  v30 = *(*(v0 + 32) + 128);
  *(v0 + 56) = v30;
  v31 = *(v30 + 32);
  *(v0 + 152) = v31;
  v32 = -1;
  v33 = -1 << v31;
  if (-(-1 << v31) < 64)
  {
    v32 = ~(-1 << -v33);
  }

  v34 = v32 & *(v30 + 64);

  if (!v34)
  {
    v44 = 0;
    while (((63 - v33) >> 6) - 1 != v44)
    {
      v36 = v44 + 1;
      v34 = *(v35 + 8 * v44++ + 72);
      if (v34)
      {
        goto LABEL_21;
      }
    }

    v17 = 1;
    goto LABEL_15;
  }

  v36 = 0;
LABEL_21:
  *(v0 + 64) = v34;
  *(v0 + 72) = v36;
  v45 = (*(v35 + 56) + ((v36 << 10) | (16 * __clz(__rbit64(v34)))));
  *(v0 + 80) = *v45;
  v46 = v45[1];
  ObjectType = swift_getObjectType();
  v48 = *(v46 + 200);
  swift_unknownObjectRetain();
  v51 = (v48 + *v48);
  v49 = swift_task_alloc();
  *(v0 + 88) = v49;
  *v49 = v0;
  v49[1] = sub_10007AA44;
  v40 = ObjectType;
  v41 = v46;
  v42 = v51;

  return v42(v40, v41);
}

uint64_t sub_10007AA44()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_10007B36C;
  }

  else
  {
    v4 = sub_10007AB70;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10007AB70()
{
  result = swift_unknownObjectRelease();
  v2 = *(v0 + 72);
  v3 = (*(v0 + 64) - 1) & *(v0 + 64);
  if (v3)
  {
    result = *(v0 + 56);
LABEL_7:
    *(v0 + 64) = v3;
    *(v0 + 72) = v2;
    v5 = (*(result + 56) + ((v2 << 10) | (16 * __clz(__rbit64(v3)))));
    *(v0 + 80) = *v5;
    v6 = v5[1];
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 200);
    swift_unknownObjectRetain();
    v16 = (v8 + *v8);
    v9 = swift_task_alloc();
    *(v0 + 88) = v9;
    *v9 = v0;
    v9[1] = sub_10007AA44;
    v10 = ObjectType;
    v11 = v6;
    v12 = v16;
  }

  else
  {
    while (1)
    {
      v4 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        return result;
      }

      result = *(v0 + 56);
      if (v4 >= (((1 << *(v0 + 152)) + 63) >> 6))
      {
        break;
      }

      v3 = *(result + 8 * v4 + 64);
      ++v2;
      if (v3)
      {
        v2 = v4;
        goto LABEL_7;
      }
    }

    *(v0 + 153) = 1;
    v13 = *(v0 + 48);
    v14 = *(**(v0 + 32) + 240);

    v17 = (v14 + *v14);
    v15 = swift_task_alloc();
    *(v0 + 104) = v15;
    *v15 = v0;
    v15[1] = sub_10007AE3C;
    v10 = *(v0 + 40);
    v11 = v13;
    v12 = v17;
  }

  return v12(v10, v11);
}

uint64_t sub_10007AE3C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  v4 = *(v2 + 48);
  v8 = (*(**(v2 + 32) + 224) + **(**(v2 + 32) + 224));
  v5 = swift_task_alloc();
  *(v2 + 112) = v5;
  *v5 = v3;
  v5[1] = sub_10007B010;
  v6 = *(v2 + 40);

  return v8(v6, v4);
}

uint64_t sub_10007B010()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);

    v4 = sub_10007B624;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 32);
    v4 = sub_10007B138;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10007B138()
{
  v1 = *(v0 + 48);
  v2 = [*(v0 + 16) recordName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *(v0 + 128) = v5;
  v6 = swift_task_alloc();
  *(v0 + 136) = v6;
  *v6 = v0;
  v6[1] = sub_10007B220;
  v7 = *(v0 + 153);
  v8 = *(v0 + 40);

  return sub_100076BC8(v8, v1, v3, v5, v7);
}

uint64_t sub_10007B220()
{
  v2 = *v1;
  v2[18] = v0;

  if (v0)
  {
    v3 = v2[4];

    return _swift_task_switch(sub_10007B8C8, v3, 0);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_10007B36C()
{
  v22 = v0;

  swift_unknownObjectRelease();
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_100129988);
  v3 = v1;

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v20 = v0[5];
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v9 = 136315650;
    v11 = [v8 recordName];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_100065658(v12, v14, &v21);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2080;
    v16 = sub_100065658(v20, v7, &v21);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v17;
    *v10 = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error handleAccount switch prviously signed user %s, currently signed in user %s, error: %@", v9, 0x20u);
    sub_100066C80(v10, &qword_1001287F0, &qword_1000E6C40);

    swift_arrayDestroy();
  }

  else
  {
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_10007B624()
{
  v22 = v0;
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_100129988);
  v3 = v1;

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v20 = v0[5];
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v9 = 136315650;
    v11 = [v8 recordName];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_100065658(v12, v14, &v21);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2080;
    v16 = sub_100065658(v20, v7, &v21);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v17;
    *v10 = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error handleAccount switch prviously signed user %s, currently signed in user %s, error: %@", v9, 0x20u);
    sub_100066C80(v10, &qword_1001287F0, &qword_1000E6C40);

    swift_arrayDestroy();
  }

  else
  {
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_10007B8C8()
{
  v22 = v0;

  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_100129988);
  v3 = v1;

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v20 = v0[5];
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v9 = 136315650;
    v11 = [v8 recordName];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_100065658(v12, v14, &v21);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2080;
    v16 = sub_100065658(v20, v7, &v21);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v17;
    *v10 = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error handleAccount switch prviously signed user %s, currently signed in user %s, error: %@", v9, 0x20u);
    sub_100066C80(v10, &qword_1001287F0, &qword_1000E6C40);

    swift_arrayDestroy();
  }

  else
  {
  }

  v18 = v0[1];

  return v18();
}

void sub_10007BB80(uint64_t a1, uint64_t a2)
{
  v76 = a2;
  v75 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v73 = *(v2 - 8);
  v74 = v2;
  __chkstk_darwin(v2);
  v71 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for DispatchQoS();
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for DispatchTime();
  v68 = *(v78 - 8);
  v5 = __chkstk_darwin(v78);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v65 - v8;
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100066000(v10, qword_100129988);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "fetch MA cloud record zones", v13, 2u);
  }

  sub_10005F5CC(&qword_1001284B0, &qword_1000E64D0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000E63A0;
  sub_100092C8C(0, &qword_1001284B8, CKRecordZoneID_ptr);
  v15 = sub_1000C549C();
  v16 = *v15;
  v17 = v15[1];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21._countAndFlagsBits = v16;
  v21._object = v17;
  v22._countAndFlagsBits = v18;
  v22._object = v20;
  *(v14 + 32) = CKRecordZoneID.init(zoneName:ownerName:)(v21, v22);
  v23 = sub_1000C54A8();
  v24 = *v23;
  v25 = v23[1];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29._countAndFlagsBits = v24;
  v29._object = v25;
  v30._countAndFlagsBits = v26;
  v30._object = v28;
  *(v14 + 40) = CKRecordZoneID.init(zoneName:ownerName:)(v29, v30);
  v31 = objc_allocWithZone(CKFetchRecordZonesOperation);
  v67 = v14;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v33 = [v31 initWithRecordZoneIDs:isa];

  v34 = objc_allocWithZone(NSUserDefaults);
  v35 = String._bridgeToObjectiveC()();
  v36 = [v34 initWithSuiteName:v35];

  v37 = 5.0;
  if (v36)
  {
    v38 = v36;
    v39 = String._bridgeToObjectiveC()();
    [v38 doubleForKey:v39];
    v41 = v40;

    if (v41 > 1.0)
    {
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 134217984;
        *(v44 + 4) = v41;
        _os_log_impl(&_mh_execute_header, v42, v43, "CKfetchZonesOperationTimeout is configured as %f secs", v44, 0xCu);
      }

      v37 = v41;
    }
  }

  v66 = v36;
  v45 = v33;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 134218242;
    *(v48 + 4) = v37;
    *(v48 + 12) = 2112;
    *(v48 + 14) = v45;
    *v49 = v45;
    v50 = v45;
    _os_log_impl(&_mh_execute_header, v46, v47, "create %f secs timer for %@", v48, 0x16u);
    sub_100066C80(v49, &qword_1001287F0, &qword_1000E6C40);
  }

  sub_100092C8C(0, &qword_1001284C0, OS_dispatch_queue_ptr);
  v51 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  v52 = v9;
  + infix(_:_:)();
  v68 = *(v68 + 8);
  (v68)(v7, v78);
  v53 = swift_allocObject();
  *(v53 + 16) = v45;
  aBlock[4] = sub_100092D0C;
  aBlock[5] = v53;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000624B0;
  aBlock[3] = &unk_100117590;
  v54 = _Block_copy(aBlock);
  v55 = v45;
  v56 = v69;
  static DispatchQoS.unspecified.getter();
  v79 = _swiftEmptyArrayStorage;
  sub_100092BD4(&qword_1001284C8, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10005F5CC(&qword_1001284D0, &qword_1000E64D8);
  sub_100092F08();
  v57 = v71;
  v58 = v74;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v54);

  (*(v73 + 8))(v57, v58);
  (*(v70 + 8))(v56, v72);
  (v68)(v52, v78);

  v59 = swift_allocObject();
  *(v59 + 16) = 0;
  [v55 setQualityOfService:25];
  v60 = swift_allocObject();
  *(v60 + 16) = v67;
  *(v60 + 24) = v59;

  CKFetchRecordZonesOperation.perRecordZoneResultBlock.setter();
  v61 = swift_allocObject();
  v62 = v75;
  v63 = v76;
  v61[2] = v59;
  v61[3] = v62;
  v61[4] = v63;

  CKFetchRecordZonesOperation.fetchRecordZonesResultBlock.setter();
  v64 = [*(v77 + 120) privateCloudDatabase];
  [v64 addOperation:v55];
}

void sub_10007C43C(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100066000(v7, qword_100129988);
    v8 = a1;
    sub_100093928(a2, 1);
    v41 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    sub_100093934(a2, 1);
    if (os_log_type_enabled(v41, v9))
    {
      v10 = swift_slowAlloc();
      v42[0] = swift_slowAlloc();
      *v10 = 136315394;
      v11 = v8;
      v12 = [v11 description];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = sub_100065658(v13, v15, v42);

      *(v10 + 4) = v16;
      *(v10 + 12) = 2080;
      ErrorValue = swift_getErrorValue();
      __chkstk_darwin(ErrorValue);
      (*(v19 + 16))(&v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
      v20 = String.init<A>(describing:)();
      v22 = sub_100065658(v20, v21, v42);

      *(v10 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v41, v9, "Error fetching record zone %s {error: %s}", v10, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    v42[0] = a1;
    __chkstk_darwin(a1);
    v39[2] = v42;
    if (sub_100092534(sub_100093940, v39, v24))
    {
      if (qword_100129980 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_100066000(v25, qword_100129988);
      v26 = a1;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v42[0] = v30;
        *v29 = 136315138;
        v31 = [v26 zoneName];
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v35 = sub_100065658(v32, v34, v42);

        *(v29 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v27, v28, "found matched MA record zone: %s", v29, 0xCu);
        sub_10005D588(v30);
      }

      swift_beginAccess();
      v36 = *(a5 + 16);
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        __break(1u);
      }

      else
      {
        *(a5 + 16) = v38;
      }
    }
  }
}

uint64_t sub_10007C8C8(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(_BOOL8, uint64_t))
{
  if (a2)
  {
    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100066000(v6, qword_100129988);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    sub_10009391C(a1, 1);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v26[0] = v10;
      *v9 = 136315138;
      ErrorValue = swift_getErrorValue();
      __chkstk_darwin(ErrorValue);
      (*(v13 + 16))(&v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)]);
      v14 = String.init<A>(describing:)();
      v16 = sub_100065658(v14, v15, v26);

      *(v9 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v7, v8, "Error fetching record zones {error: %s}", v9, 0xCu);
      sub_10005D588(v10);
    }

    v17 = 0;
    v18 = a1;
  }

  else
  {
    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100066000(v20, qword_100129988);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      swift_beginAccess();
      *(v23 + 4) = *(a3 + 16);

      _os_log_impl(&_mh_execute_header, v21, v22, "fetchRecordZones completes with number of zones: %ld", v23, 0xCu);
    }

    else
    {
    }

    swift_beginAccess();
    v17 = *(a3 + 16) > 0;
    v18 = 0;
  }

  return a4(v17, v18);
}

uint64_t sub_10007CC18()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10007CC60()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10007CCC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  return _swift_task_switch(sub_10007CCE8, v3, 0);
}

uint64_t sub_10007CCE8()
{
  v69 = v0;
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 96) = sub_100066000(v1, qword_100129988);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 72);
    v5 = *(v0 + 80);
    v6 = *(v0 + 64);
    v7 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_100065658(v6, v4, &v67);
    *(v7 + 12) = 2080;
    *(v0 + 56) = v5;
    type metadata accessor for MASDAssetType(0);
    sub_100092BD4(&qword_1001284E0, 255, type metadata accessor for MASDAssetType, &protocol conformance descriptor for MASDAssetType);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = sub_100065658(v8, v9, &v67);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Scheduling upload: %s %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v11 = *(v0 + 72);
  v12 = *(v0 + 64) & 0xFFFFFFFFFFFFLL;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(v11) & 0xF;
  }

  if (v12)
  {
    v13.super.isa = sub_1000C60E0(*(v0 + 80)).super.isa;
    *(v0 + 104) = v13;
    if (v13.super.isa)
    {
      isa = v13.super.isa;
      v15 = *(v0 + 88);
      v17 = *(v0 + 64);
      v16 = *(v0 + 72);
      sub_100092C8C(0, &qword_100128458, CKRecordID_ptr);

      v18 = isa;
      v19._countAndFlagsBits = v17;
      v19._object = v16;
      v20 = CKRecordID.init(recordName:zoneID:)(v19, v18).super.isa;
      *(v0 + 112) = v20;
      sub_10005F5CC(&qword_1001284E8, &qword_1000E64E8);
      v21 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
      v22 = *(v21 - 8);
      v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1000E61E0;
      *(v24 + v23) = v20;
      *(v0 + 120) = v24;
      (*(v22 + 104))(v24 + v23, enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:), v21);
      v25 = *(*v15 + 192);
      v26 = v20;
      v66 = (v25 + *v25);
      v27 = swift_task_alloc();
      *(v0 + 128) = v27;
      *v27 = v0;
      v27[1] = sub_10007D5D8;

      return v66();
    }

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = *(v0 + 80);
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v67 = v50;
      *v49 = 136315138;
      *(v0 + 24) = v48;
      type metadata accessor for MASDAssetType(0);
      sub_100092BD4(&qword_1001284E0, 255, type metadata accessor for MASDAssetType, &protocol conformance descriptor for MASDAssetType);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = sub_100065658(v51, v52, &v67);

      *(v49 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v46, v47, "Uploading record %s is not supported on this platform", v49, 0xCu);
      sub_10005D588(v50);
    }

    v54 = *(v0 + 80);
    v67 = 0;
    v68 = 0xE000000000000000;
    _StringGuts.grow(_:)(64);
    v55._countAndFlagsBits = 0xD00000000000001CLL;
    v55._object = 0x80000001000F0F00;
    String.append(_:)(v55);
    *(v0 + 16) = v54;
    type metadata accessor for MASDAssetType(0);
    sub_100092BD4(&qword_1001284E0, 255, type metadata accessor for MASDAssetType, &protocol conformance descriptor for MASDAssetType);
    v56._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v56);

    v57._countAndFlagsBits = 0xD000000000000022;
    v57._object = 0x80000001000F0E80;
    String.append(_:)(v57);
  }

  else
  {

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 72);
      v32 = *(v0 + 80);
      v33 = *(v0 + 64);
      v34 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v34 = 136315394;
      *(v34 + 4) = sub_100065658(v33, v31, &v67);
      *(v34 + 12) = 2080;
      *(v0 + 48) = v32;
      type metadata accessor for MASDAssetType(0);
      sub_100092BD4(&qword_1001284E0, 255, type metadata accessor for MASDAssetType, &protocol conformance descriptor for MASDAssetType);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = sub_100065658(v35, v36, &v67);

      *(v34 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v29, v30, "Uploading record %s type %s with empty recordName is not allowed", v34, 0x16u);
      swift_arrayDestroy();
    }

    v38 = *(v0 + 72);
    v39 = *(v0 + 80);
    v40 = *(v0 + 64);
    v67 = 0;
    v68 = 0xE000000000000000;
    _StringGuts.grow(_:)(64);
    v41._object = 0x80000001000F0F20;
    v41._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v41);
    v42._countAndFlagsBits = v40;
    v42._object = v38;
    String.append(_:)(v42);
    v43._countAndFlagsBits = 0x206570797420;
    v43._object = 0xE600000000000000;
    String.append(_:)(v43);
    *(v0 + 40) = v39;
    type metadata accessor for MASDAssetType(0);
    sub_100092BD4(&qword_1001284E0, 255, type metadata accessor for MASDAssetType, &protocol conformance descriptor for MASDAssetType);
    v44._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v44);

    v45._countAndFlagsBits = 0xD000000000000025;
    v45._object = 0x80000001000F0F40;
    String.append(_:)(v45);
  }

  nullsub_1();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  sub_100092A98();
  swift_allocError();
  *v64 = v59;
  *(v64 + 8) = v61;
  *(v64 + 16) = v63;
  swift_willThrow();
  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_10007D5D8(uint64_t a1)
{
  v4 = *v2;
  v4[17] = v1;

  v5 = v4[11];
  if (v1)
  {
    v6 = sub_10007D948;
  }

  else
  {
    v4[18] = a1;
    v6 = sub_10007D714;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10007D714()
{
  v17 = v0;
  v1._rawValue = *(v0 + 120);
  CKSyncEngine.state.getter();

  CKSyncEngine.State.add(pendingRecordZoneChanges:)(v1);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    v6 = *(v0 + 72);
    v7 = *(v0 + 80);
    v8 = *(v0 + 64);
    v9 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_100065658(v8, v6, &v16);
    *(v9 + 12) = 2080;
    *(v0 + 32) = v7;
    type metadata accessor for MASDAssetType(0);
    sub_100092BD4(&qword_1001284E0, 255, type metadata accessor for MASDAssetType, &protocol conformance descriptor for MASDAssetType);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = sub_100065658(v10, v11, &v16);

    *(v9 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "Asked syncEngine to upload: %s %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v13 = *(v0 + 104);
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10007D948()
{
  v1 = v0[14];
  v2 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10007D9B8(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_10007DA7C, v2, 0);
}

uint64_t sub_10007DA7C()
{
  v67 = v0;
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100066000(v1, qword_100129988);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 56);
    v5 = swift_slowAlloc();
    v66[0] = swift_slowAlloc();
    *v5 = 136315394;
    v6 = Array.description.getter();
    v8 = sub_100065658(v6, v7, v66);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v0 + 40) = v4;
    type metadata accessor for MASDAssetType(0);
    sub_100092BD4(&qword_1001284E0, 255, type metadata accessor for MASDAssetType, &protocol conformance descriptor for MASDAssetType);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = sub_100065658(v9, v10, v66);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Deleting record %s %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v12 = *(v0 + 48);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = (v12 + 40);
    v15 = *(v12 + 16);
    do
    {
      if ((*v14 & 0x2000000000000000) != 0)
      {
        v16 = HIBYTE(*v14) & 0xFLL;
      }

      else
      {
        v16 = *(v14 - 1) & 0xFFFFFFFFFFFFLL;
      }

      if (!v16)
      {

        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = *(v0 + 56);
          v36 = swift_slowAlloc();
          v66[0] = swift_slowAlloc();
          *v36 = 136315394;
          v37 = Array.description.getter();
          v39 = sub_100065658(v37, v38, v66);

          *(v36 + 4) = v39;
          *(v36 + 12) = 2080;
          *(v0 + 32) = v35;
          type metadata accessor for MASDAssetType(0);
          sub_100092BD4(&qword_1001284E0, 255, type metadata accessor for MASDAssetType, &protocol conformance descriptor for MASDAssetType);
          v40 = dispatch thunk of CustomStringConvertible.description.getter();
          v42 = sub_100065658(v40, v41, v66);

          *(v36 + 14) = v42;
          _os_log_impl(&_mh_execute_header, v33, v34, "RecordNames: %s type: %s to be deleted contain empty recordName", v36, 0x16u);
          swift_arrayDestroy();
        }

        sub_1000B9568();
        goto LABEL_29;
      }

      v14 += 2;
      --v15;
    }

    while (v15);
    v64.super.isa = sub_1000C60E0(*(v0 + 56)).super.isa;
    if (!v64.super.isa)
    {
      goto LABEL_26;
    }

    v17 = *(v0 + 80);
    v66[0] = _swiftEmptyArrayStorage;
    sub_10009265C(0, v13, 0);
    sub_100092C8C(0, &qword_100128458, CKRecordID_ptr);
    v18 = v66[0];
    v63 = enum case for CKSyncEngine.PendingRecordZoneChange.deleteRecord(_:);
    v19 = (v12 + 40);
    do
    {
      v20 = *(v0 + 88);
      v21 = *(v0 + 72);
      v22 = *(v19 - 1);
      v23 = *v19;

      isa = v64.super.isa;
      v25._countAndFlagsBits = v22;
      v25._object = v23;
      v20->super.isa = CKRecordID.init(recordName:zoneID:)(v25, isa).super.isa;
      (*(v17 + 104))(v20, v63, v21);
      v66[0] = v18;
      v27 = v18[2];
      v26 = v18[3];
      if (v27 >= v26 >> 1)
      {
        sub_10009265C((v26 > 1), v27 + 1, 1);
        v18 = v66[0];
      }

      v28 = *(v0 + 88);
      v29 = *(v0 + 72);
      v18[2] = v27 + 1;
      (*(v17 + 32))(v18 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v27, v28, v29);
      v19 += 2;
      --v13;
    }

    while (v13);
    goto LABEL_20;
  }

  v30.super.isa = sub_1000C60E0(*(v0 + 56)).super.isa;
  if (v30.super.isa)
  {
    isa = v30.super.isa;
    v18 = _swiftEmptyArrayStorage;
LABEL_20:
    *(v0 + 96) = isa;
    *(v0 + 104) = v18;
    v65 = (*(**(v0 + 64) + 192) + **(**(v0 + 64) + 192));
    v31 = swift_task_alloc();
    *(v0 + 112) = v31;
    *v31 = v0;
    v31[1] = sub_10007E308;

    return v65();
  }

LABEL_26:
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = *(v0 + 56);
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v66[0] = v50;
    *v49 = 136315138;
    *(v0 + 24) = v48;
    type metadata accessor for MASDAssetType(0);
    sub_100092BD4(&qword_1001284E0, 255, type metadata accessor for MASDAssetType, &protocol conformance descriptor for MASDAssetType);
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    v53 = sub_100065658(v51, v52, v66);

    *(v49 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v46, v47, "Deleting record %s is not supported on this platform", v49, 0xCu);
    sub_10005D588(v50);
  }

  v54 = *(v0 + 56);
  v66[0] = 0;
  v66[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(63);
  v55._object = 0x80000001000F0F70;
  v55._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v55);
  *(v0 + 16) = v54;
  type metadata accessor for MASDAssetType(0);
  sub_100092BD4(&qword_1001284E0, 255, type metadata accessor for MASDAssetType, &protocol conformance descriptor for MASDAssetType);
  v56._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v56);

  v57._countAndFlagsBits = 0xD000000000000022;
  v57._object = 0x80000001000F0E80;
  String.append(_:)(v57);
  nullsub_1();
LABEL_29:
  v58 = v43;
  v59 = v44;
  v60 = v45;
  sub_100092A98();
  swift_allocError();
  *v61 = v58;
  *(v61 + 8) = v59;
  *(v61 + 16) = v60;
  swift_willThrow();

  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_10007E308(uint64_t a1)
{
  v4 = *v2;
  v4[15] = v1;

  v5 = v4[8];
  if (v1)
  {
    v6 = sub_10007E4F4;
  }

  else
  {
    v4[16] = a1;
    v6 = sub_10007E444;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10007E444()
{
  v2 = v0[12];
  v1._rawValue = v0[13];
  CKSyncEngine.state.getter();

  CKSyncEngine.State.add(pendingRecordZoneChanges:)(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10007E4F4()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10007E584()
{
  v23 = v0;
  v1 = *(*(v0 + 16) + 128);
  *(v0 + 24) = v1;
  v2 = *(v1 + 32);
  *(v0 + 100) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -(-1 << v2));
  }

  v5 = v3 & *(v1 + 64);
  *(v0 + 32) = CKCurrentUserDefaultName;
  *(v0 + 96) = enum case for CKSyncEngine.PendingDatabaseChange.deleteZone(_:);

  if (v5)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 40) = v5;
    *(v0 + 48) = v7;
    v9 = (*(v6 + 48) + ((v7 << 10) | (16 * __clz(__rbit64(v5)))));
    v10 = *v9;
    *(v0 + 56) = *v9;
    v11 = v9[1];
    *(v0 + 64) = v11;
    v12 = qword_100129980;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100066000(v13, qword_100129988);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_100065658(v10, v11, &v22);
      _os_log_impl(&_mh_execute_header, v14, v15, "Deleting zone %s", v16, 0xCu);
      sub_10005D588(v17);
    }

    v21 = (*(**(v0 + 16) + 192) + **(**(v0 + 16) + 192));
    v18 = swift_task_alloc();
    *(v0 + 72) = v18;
    *v18 = v0;
    v18[1] = sub_10007E8CC;

    return v21();
  }

  else
  {
    v8 = 0;
    while (((63 - v4) >> 6) - 1 != v8)
    {
      v7 = v8 + 1;
      v5 = *(v6 + 8 * v8++ + 72);
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_10007E8CC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = *(v4 + 16);

    v6 = sub_10007EE4C;
    v7 = v5;
  }

  else
  {
    v7 = *(v4 + 16);
    *(v4 + 88) = a1;
    v6 = sub_10007EA0C;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10007EA0C()
{
  v28 = v0;
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v25 = *(v0 + 96);
  v3 = CKSyncEngine.state.getter();

  sub_10005F5CC(&qword_100128490, &qword_1000E6420);
  v4 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000E61E0;
  sub_100092C8C(0, &qword_1001284B8, CKRecordZoneID_ptr);
  v8._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8._object = v9;
  v10._countAndFlagsBits = v2;
  v10._object = v1;
  *(v7 + v6) = CKRecordZoneID.init(zoneName:ownerName:)(v10, v8);
  (*(v5 + 104))(v7 + v6, v25, v4);
  CKSyncEngine.State.add(pendingDatabaseChanges:)(v7);

  v11 = *(v0 + 48);
  v12 = (*(v0 + 40) - 1) & *(v0 + 40);
  if (v12)
  {
    v13 = *(v0 + 24);
LABEL_7:
    *(v0 + 40) = v12;
    *(v0 + 48) = v11;
    v15 = (*(v13 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v12)))));
    v3 = *v15;
    *(v0 + 56) = *v15;
    v6 = v15[1];
    *(v0 + 64) = v6;
    v16 = qword_100129980;

    if (v16 != -1)
    {
LABEL_17:
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100066000(v17, qword_100129988);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_100065658(v3, v6, &v27);
      _os_log_impl(&_mh_execute_header, v18, v19, "Deleting zone %s", v20, 0xCu);
      sub_10005D588(v21);
    }

    v26 = (*(**(v0 + 16) + 192) + **(**(v0 + 16) + 192));
    v22 = swift_task_alloc();
    *(v0 + 72) = v22;
    *v22 = v0;
    v22[1] = sub_10007E8CC;

    return v26();
  }

  else
  {
    while (1)
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      v13 = *(v0 + 24);
      if (v14 >= (((1 << *(v0 + 100)) + 63) >> 6))
      {
        break;
      }

      v12 = *(v13 + 8 * v14 + 64);
      ++v11;
      if (v12)
      {
        v11 = v14;
        goto LABEL_7;
      }
    }

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_10007EE4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007EEB0(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return _swift_task_switch(sub_10007EED4, v2, 0);
}

uint64_t sub_10007EED4()
{
  v44 = v0;
  v1 = related decl 'e' for CKErrorCode.underlyingError.getter();
  *(v0 + 56) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v1;
    type metadata accessor for CKUnderlyingError(0);
    sub_100092BD4(&qword_1001284F0, 255, type metadata accessor for CKUnderlyingError, &unk_1000E6A5C);
    _BridgedStoredNSError.code.getter();
    if (*(v0 + 24) == 5011)
    {
      if (qword_100129980 != -1)
      {
        swift_once();
      }

      v3 = *(v0 + 40);
      v4 = type metadata accessor for Logger();
      *(v0 + 64) = sub_100066000(v4, qword_100129988);
      v5 = v3;
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = *(v0 + 40);
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v43 = v10;
        *v9 = 136315138;
        v11 = [v8 zoneName];
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        v15 = sub_100065658(v12, v14, &v43);

        *(v9 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v6, v7, "Missing manatee identity, deleting zone %s", v9, 0xCu);
        sub_10005D588(v10);
      }

      v16 = *(*(v0 + 48) + 128);
      v17 = [*(v0 + 40) zoneName];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      if (*(v16 + 16))
      {
        v21 = sub_100065A98(v18, v20);
        v23 = v22;

        if (v23)
        {
          v24 = (*(v16 + 56) + 16 * v21);
          *(v0 + 72) = *v24;
          v25 = v24[1];
          ObjectType = swift_getObjectType();
          v27 = *(v25 + 192);
          swift_unknownObjectRetain();
          v42 = (v27 + *v27);
          v28 = swift_task_alloc();
          *(v0 + 80) = v28;
          *v28 = v0;
          v28[1] = sub_10007F3AC;

          return v42(1, ObjectType, v25);
        }
      }

      else
      {
      }

      v30 = *(v0 + 40);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = *(v0 + 40);
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v43 = v35;
        *v34 = 136315138;
        v36 = [v33 zoneName];
        v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v38;

        v40 = sub_100065658(v37, v39, &v43);

        *(v34 + 4) = v40;
        _os_log_impl(&_mh_execute_header, v31, v32, "Ignored unknown zone: %s", v34, 0xCu);
        sub_10005D588(v35);
      }
    }

    else
    {
    }
  }

  v41 = *(v0 + 8);

  return v41(0);
}

uint64_t sub_10007F3AC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v5 = (*(*v2 + 192) + **(*v2 + 192));
  v3 = swift_task_alloc();
  *(v1 + 88) = v3;
  *v3 = v6;
  v3[1] = sub_10007F578;

  return v5();
}

uint64_t sub_10007F578(uint64_t a1)
{
  v4 = *v2;
  v4[12] = v1;

  v5 = v4[6];
  if (v1)
  {
    v6 = sub_10007F830;
  }

  else
  {
    v4[13] = a1;
    v6 = sub_10007F6B4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10007F6B4()
{
  v1 = v0[7];
  v2 = v0[5];
  CKSyncEngine.state.getter();

  sub_10005F5CC(&qword_100128490, &qword_1000E6420);
  v3 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000E61E0;
  *(v6 + v5) = v2;
  (*(v4 + 104))(v6 + v5, enum case for CKSyncEngine.PendingDatabaseChange.deleteZone(_:), v3);
  v7 = v2;
  CKSyncEngine.State.add(pendingDatabaseChanges:)(v6);

  swift_unknownObjectRelease();
  v8 = v0[1];

  return v8(1);
}

uint64_t sub_10007F830()
{
  v21 = v0;
  v1 = v0[5];
  swift_unknownObjectRelease();
  v2 = v1;
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[7];
  if (v5)
  {
    v7 = v0[5];
    v19 = v0[7];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v8 = 136315394;
    v11 = [v7 zoneName];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_100065658(v12, v14, &v20);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v16;
    *v9 = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error deleting zone %s, error: %@", v8, 0x16u);
    sub_100066C80(v9, &qword_1001287F0, &qword_1000E6C40);

    sub_10005D588(v10);
  }

  else
  {
  }

  v17 = v0[1];

  return v17(1);
}

uint64_t sub_10007FA50(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10007FAFC;

  return sub_100093060(a1);
}

uint64_t sub_10007FAFC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10007FBF8(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  Asset = type metadata accessor for CKSyncEngine.Event.DidFetchAsset();
  v3[6] = Asset;
  v3[7] = *(Asset - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for CKSyncEngine.Event.FetchedAsset();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v6 = type metadata accessor for CKSyncEngine.Event.WillFetchAsset();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v7 = type metadata accessor for CKSyncEngine.Event.SentDatabaseChanges();
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();
  v8 = type metadata accessor for CKSyncEngine.Event.SentRecordZoneChanges();
  v3[21] = v8;
  v3[22] = *(v8 - 8);
  v3[23] = swift_task_alloc();
  RecordZoneChanges = type metadata accessor for CKSyncEngine.Event.DidFetchRecordZoneChanges();
  v3[24] = RecordZoneChanges;
  v3[25] = *(RecordZoneChanges - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v10 = type metadata accessor for CKSyncEngine.Event.FetchedRecordZoneChanges();
  v3[29] = v10;
  v3[30] = *(v10 - 8);
  v3[31] = swift_task_alloc();
  v11 = type metadata accessor for CKSyncEngine.Event.FetchedDatabaseChanges();
  v3[32] = v11;
  v3[33] = *(v11 - 8);
  v3[34] = swift_task_alloc();
  v12 = type metadata accessor for CKSyncEngine.Event.AccountChange.ChangeType();
  v3[35] = v12;
  v3[36] = *(v12 - 8);
  v3[37] = swift_task_alloc();
  v13 = type metadata accessor for CKSyncEngine.Event.AccountChange();
  v3[38] = v13;
  v3[39] = *(v13 - 8);
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v14 = type metadata accessor for CKSyncEngine.State.Serialization();
  v3[42] = v14;
  v3[43] = *(v14 - 8);
  v3[44] = swift_task_alloc();
  v15 = type metadata accessor for CKSyncEngine.Event.StateUpdate();
  v3[45] = v15;
  v3[46] = *(v15 - 8);
  v3[47] = swift_task_alloc();
  v16 = type metadata accessor for CKSyncEngine.Event();
  v3[48] = v16;
  v3[49] = *(v16 - 8);
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();

  return _swift_task_switch(sub_10008016C, v2, 0);
}

uint64_t sub_10008016C()
{
  v204 = v0;
  v1 = v0;
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v2 = v0[52];
  v3 = v0[48];
  v4 = v0[49];
  v5 = v0[3];
  v6 = type metadata accessor for Logger();
  sub_100066000(v6, qword_100129988);
  v7 = *(v4 + 16);
  v7(v2, v5, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v1[52];
  v13 = v1[48];
  v12 = v1[49];
  if (v10)
  {
    v192 = v7;
    v14 = swift_slowAlloc();
    v188 = swift_slowAlloc();
    v203 = v188;
    *v14 = 136315138;
    sub_100092BD4(&qword_1001284F8, 255, &type metadata accessor for CKSyncEngine.Event, &protocol conformance descriptor for CKSyncEngine.Event);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v201 = v1;
    v17 = v16;
    v187 = v9;
    v18 = *(v12 + 8);
    v18(v11, v13);
    v19 = sub_100065658(v15, v17, &v203);
    v1 = v201;

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v187, "Handling event %s", v14, 0xCu);
    sub_10005D588(v188);

    v7 = v192;
  }

  else
  {

    v18 = *(v12 + 8);
    v18(v11, v13);
  }

  v20 = v1[51];
  v22 = v1[48];
  v21 = v1[49];
  v7(v20, v1[3], v22);
  v23 = (*(v21 + 88))(v20, v22);
  v24 = v1[48];
  if (v23 == enum case for CKSyncEngine.Event.stateUpdate(_:))
  {
    v25 = v1[51];
    v27 = v1[46];
    v26 = v1[47];
    v28 = v1[45];
    v29 = v1[5];
    (*(v1[49] + 96))(v25, v1[48]);
    (*(v27 + 32))(v26, v25, v28);
    CKSyncEngine.Event.StateUpdate.stateSerialization.getter();
    v193 = (*(*v29 + 264) + **(*v29 + 264));
    v30 = swift_task_alloc();
    v1[53] = v30;
    *v30 = v1;
    v30[1] = sub_100081AF4;
    v31 = v1[4];
    v32 = v1[44];
    v33 = v193;

    return v33(v32, v31);
  }

  if (v23 == enum case for CKSyncEngine.Event.accountChange(_:))
  {
    v35 = v1[51];
    v36 = v1[41];
    v38 = v1[38];
    v37 = v1[39];
    v39 = v1[36];
    v40 = v1[37];
    v41 = v1[35];
    (*(v1[49] + 96))(v35, v1[48]);
    (*(v37 + 32))(v36, v35, v38);
    CKSyncEngine.Event.AccountChange.changeType.getter();
    v42 = (*(v39 + 88))(v40, v41);
    if (v42 == enum case for CKSyncEngine.Event.AccountChange.ChangeType.signIn(_:))
    {
      v43 = v1[37];
      v44 = v1[5];
      (*(v1[36] + 96))(v43, v1[35]);
      v45 = *v43;
      v1[54] = *v43;
      v194 = (*(*v44 + 384) + **(*v44 + 384));
      v46 = swift_task_alloc();
      v1[55] = v46;
      *v46 = v1;
      v46[1] = sub_100081DE8;
      v47 = v45;
      v48 = v194;

      return v48(v47);
    }

    if (v42 == enum case for CKSyncEngine.Event.AccountChange.ChangeType.signOut(_:))
    {
      v55 = v1[37];
      v56 = v1[5];
      (*(v1[36] + 96))(v55, v1[35]);
      v57 = *v55;
      v1[56] = *v55;
      v195 = (*(*v56 + 392) + **(*v56 + 392));
      v58 = swift_task_alloc();
      v1[57] = v58;
      *v58 = v1;
      v58[1] = sub_100082090;
      v47 = v57;
      v48 = v195;

      return v48(v47);
    }

    if (v42 == enum case for CKSyncEngine.Event.AccountChange.ChangeType.switchAccounts(_:))
    {
      v65 = v1[37];
      v66 = v1[5];
      (*(v1[36] + 96))(v65, v1[35]);
      v67 = *v65;
      v1[58] = *v65;
      v68 = v65[1];
      v1[59] = v68;
      v196 = (*(*v66 + 400) + **(*v66 + 400));
      v69 = swift_task_alloc();
      v1[60] = v69;
      *v69 = v1;
      v69[1] = sub_100082338;
      v32 = v67;
      v31 = v68;
      v33 = v196;

      return v33(v32, v31);
    }

    (*(v1[39] + 16))(v1[40], v1[41], v1[38]);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();
    v78 = os_log_type_enabled(v76, v77);
    v79 = v1[40];
    v80 = v1[41];
    v82 = v1[38];
    v81 = v1[39];
    if (v78)
    {
      v197 = v1[41];
      v83 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      v203 = v189;
      *v83 = 136315138;
      sub_100092BD4(&qword_100128528, 255, &type metadata accessor for CKSyncEngine.Event.AccountChange, &protocol conformance descriptor for CKSyncEngine.Event.AccountChange);
      v84 = dispatch thunk of CustomStringConvertible.description.getter();
      v85 = v1;
      v87 = v86;
      v88 = *(v81 + 8);
      v88(v79, v82);
      v89 = sub_100065658(v84, v87, &v203);
      v1 = v85;

      *(v83 + 4) = v89;
      _os_log_impl(&_mh_execute_header, v76, v77, "Unknown account change type: %s", v83, 0xCu);
      sub_10005D588(v189);

      v88(v197, v82);
    }

    else
    {

      v96 = *(v81 + 8);
      v96(v79, v82);
      v96(v80, v82);
    }

    (*(v1[36] + 8))(v1[37], v1[35]);
    goto LABEL_46;
  }

  if (v23 == enum case for CKSyncEngine.Event.fetchedDatabaseChanges(_:))
  {
    v49 = v1[51];
    v51 = v1[33];
    v50 = v1[34];
    v52 = v1[32];
    (*(v1[49] + 96))(v49, v1[48]);
    (*(v51 + 32))(v50, v49, v52);
    v53 = swift_task_alloc();
    v1[61] = v53;
    *v53 = v1;
    v53[1] = sub_1000825E4;
    v54 = v1[34];

    return sub_100083300(v54);
  }

  if (v23 == enum case for CKSyncEngine.Event.fetchedRecordZoneChanges(_:))
  {
    v59 = v1[51];
    v61 = v1[30];
    v60 = v1[31];
    v62 = v1[29];
    (*(v1[49] + 96))(v59, v1[48]);
    (*(v61 + 32))(v60, v59, v62);
    v63 = swift_task_alloc();
    v1[62] = v63;
    *v63 = v1;
    v63[1] = sub_10008287C;
    v64 = v1[31];

    return sub_100083E5C(v64);
  }

  if (v23 == enum case for CKSyncEngine.Event.sentDatabaseChanges(_:))
  {
    v70 = v1[51];
    v72 = v1[19];
    v71 = v1[20];
    v73 = v1[18];
    (*(v1[49] + 96))(v70, v1[48]);
    (*(v72 + 32))(v71, v70, v73);
    v74 = swift_task_alloc();
    v1[68] = v74;
    *v74 = v1;
    v74[1] = sub_100083068;
    v75 = v1[20];

    return sub_10008ED8C(v75);
  }

  if (v23 == enum case for CKSyncEngine.Event.sentRecordZoneChanges(_:))
  {
    v90 = v1[51];
    v92 = v1[22];
    v91 = v1[23];
    v93 = v1[21];
    (*(v1[49] + 96))(v90, v1[48]);
    (*(v92 + 32))(v91, v90, v93);
    v94 = swift_task_alloc();
    v1[67] = v94;
    *v94 = v1;
    v94[1] = sub_100082DD0;
    v95 = v1[23];

    return sub_100085188(v95);
  }

  if (v23 == enum case for CKSyncEngine.Event.willFetchChanges(_:) || v23 == enum case for CKSyncEngine.Event.willFetchRecordZoneChanges(_:))
  {
    goto LABEL_45;
  }

  if (v23 != enum case for CKSyncEngine.Event.didFetchRecordZoneChanges(_:))
  {
    if (v23 == enum case for CKSyncEngine.Event.didFetchChanges(_:) || v23 == enum case for CKSyncEngine.Event.willSendChanges(_:) || v23 == enum case for CKSyncEngine.Event.didSendChanges(_:))
    {
LABEL_45:
      v18(v1[51], v1[48]);
LABEL_46:

      v97 = v1[1];

      return v97();
    }

    if (v23 == enum case for CKSyncEngine.Event.willFetchAsset(_:))
    {
      v123 = v1[51];
      v125 = v1[16];
      v124 = v1[17];
      v127 = v1[14];
      v126 = v1[15];
      (*(v1[49] + 96))(v123, v1[48]);
      (*(v126 + 32))(v124, v123, v127);
      (*(v126 + 16))(v125, v124, v127);
      v128 = Logger.logObject.getter();
      v129 = static os_log_type_t.info.getter();
      v130 = os_log_type_enabled(v128, v129);
      v131 = v1[16];
      v132 = v1[17];
      v134 = v1[14];
      v133 = v1[15];
      if (v130)
      {
        v198 = v1[17];
        v135 = swift_slowAlloc();
        v191 = swift_slowAlloc();
        v203 = v191;
        *v135 = 136315138;
        sub_100092BD4(&qword_100128510, 255, &type metadata accessor for CKSyncEngine.Event.WillFetchAsset, &protocol conformance descriptor for CKSyncEngine.Event.WillFetchAsset);
        v136 = dispatch thunk of CustomStringConvertible.description.getter();
        v137 = v1;
        v139 = v138;
        v140 = *(v133 + 8);
        v140(v131, v134);
        v141 = sub_100065658(v136, v139, &v203);
        v1 = v137;

        *(v135 + 4) = v141;
        _os_log_impl(&_mh_execute_header, v128, v129, "Received willFetchAsset event: %s", v135, 0xCu);
        sub_10005D588(v191);

        v140(v198, v134);
      }

      else
      {

        v165 = *(v133 + 8);
        v165(v131, v134);
        v165(v132, v134);
      }

      goto LABEL_46;
    }

    v202 = v1;
    if (v23 == enum case for CKSyncEngine.Event.fetchedAsset(_:))
    {
      v146 = v1[51];
      v148 = v1[12];
      v147 = v1[13];
      v150 = v1[10];
      v149 = v1[11];
      (*(v1[49] + 96))(v146, v24);
      (*(v149 + 32))(v147, v146, v150);
      (*(v149 + 16))(v148, v147, v150);
      v151 = Logger.logObject.getter();
      v152 = static os_log_type_t.info.getter();
      v153 = os_log_type_enabled(v151, v152);
      v154 = v1[12];
      v199 = v1[13];
      v156 = v1[10];
      v155 = v1[11];
      if (v153)
      {
        v157 = swift_slowAlloc();
        v158 = swift_slowAlloc();
        v203 = v158;
        *v157 = 136315138;
        sub_100092BD4(&qword_100128508, 255, &type metadata accessor for CKSyncEngine.Event.FetchedAsset, &protocol conformance descriptor for CKSyncEngine.Event.FetchedAsset);
        v159 = dispatch thunk of CustomStringConvertible.description.getter();
        v161 = v160;
        v162 = *(v155 + 8);
        v162(v154, v156);
        v163 = sub_100065658(v159, v161, &v203);

        *(v157 + 4) = v163;
        v164 = "Received fetchedAsset event: %s";
LABEL_71:
        _os_log_impl(&_mh_execute_header, v151, v152, v164, v157, 0xCu);
        sub_10005D588(v158);

LABEL_73:
        v162(v199, v156);
        v1 = v202;
        goto LABEL_46;
      }
    }

    else
    {
      if (v23 != enum case for CKSyncEngine.Event.didFetchAsset(_:))
      {
        v7(v1[50], v1[3], v24);
        v176 = v1;
        v177 = Logger.logObject.getter();
        v178 = static os_log_type_t.info.getter();
        v179 = os_log_type_enabled(v177, v178);
        v180 = v176[50];
        v181 = v176[48];
        if (v179)
        {
          v182 = swift_slowAlloc();
          v200 = swift_slowAlloc();
          v203 = v200;
          *v182 = 136315138;
          sub_100092BD4(&qword_1001284F8, 255, &type metadata accessor for CKSyncEngine.Event, &protocol conformance descriptor for CKSyncEngine.Event);
          v183 = dispatch thunk of CustomStringConvertible.description.getter();
          v185 = v184;
          v18(v180, v181);
          v186 = sub_100065658(v183, v185, &v203);

          *(v182 + 4) = v186;
          _os_log_impl(&_mh_execute_header, v177, v178, "Received unknown event: %s", v182, 0xCu);
          sub_10005D588(v200);
        }

        else
        {

          v18(v180, v181);
        }

        v1 = v202;
        v18(v202[51], v202[48]);
        goto LABEL_46;
      }

      v166 = v1[51];
      v168 = v1[8];
      v167 = v1[9];
      v170 = v1[6];
      v169 = v1[7];
      (*(v1[49] + 96))(v166, v24);
      (*(v169 + 32))(v167, v166, v170);
      (*(v169 + 16))(v168, v167, v170);
      v151 = Logger.logObject.getter();
      v152 = static os_log_type_t.info.getter();
      v171 = os_log_type_enabled(v151, v152);
      v154 = v1[8];
      v199 = v1[9];
      v156 = v1[6];
      v155 = v1[7];
      if (v171)
      {
        v157 = swift_slowAlloc();
        v158 = swift_slowAlloc();
        v203 = v158;
        *v157 = 136315138;
        sub_100092BD4(&qword_100128500, 255, &type metadata accessor for CKSyncEngine.Event.DidFetchAsset, &protocol conformance descriptor for CKSyncEngine.Event.DidFetchAsset);
        v172 = dispatch thunk of CustomStringConvertible.description.getter();
        v174 = v173;
        v162 = *(v155 + 8);
        v162(v154, v156);
        v175 = sub_100065658(v172, v174, &v203);

        *(v157 + 4) = v175;
        v164 = "Received didFetchAsset event: %s";
        goto LABEL_71;
      }
    }

    v162 = *(v155 + 8);
    v162(v154, v156);
    goto LABEL_73;
  }

  v98 = v1[51];
  v100 = v1[27];
  v99 = v1[28];
  v101 = v1[25];
  v102 = v1[26];
  v103 = v1[24];
  (*(v1[49] + 96))(v98, v1[48]);
  (*(v101 + 32))(v99, v98, v103);
  v104 = *(v101 + 16);
  v104(v100, v99, v103);
  v104(v102, v99, v103);
  v105 = Logger.logObject.getter();
  v106 = static os_log_type_t.info.getter();
  v107 = os_log_type_enabled(v105, v106);
  v109 = v1[26];
  v108 = v1[27];
  v111 = v1[24];
  v110 = v1[25];
  if (v107)
  {
    v112 = swift_slowAlloc();
    v203 = swift_slowAlloc();
    *v112 = 136315394;
    sub_100092BD4(&qword_100128518, 255, &type metadata accessor for CKSyncEngine.Event.DidFetchRecordZoneChanges, &protocol conformance descriptor for CKSyncEngine.Event.DidFetchRecordZoneChanges);
    v113 = dispatch thunk of CustomStringConvertible.description.getter();
    v190 = v106;
    v114 = v1;
    v116 = v115;
    v117 = *(v110 + 8);
    v117(v108, v111);
    v118 = sub_100065658(v113, v116, &v203);
    v1 = v114;

    *(v112 + 4) = v118;
    *(v112 + 12) = 2080;
    v114[2] = CKSyncEngine.Event.DidFetchRecordZoneChanges.error.getter();
    sub_10005F5CC(&qword_100128520, &qword_1000E6530);
    v119 = String.init<A>(describing:)();
    v121 = v120;
    v117(v109, v111);
    v122 = sub_100065658(v119, v121, &v203);

    *(v112 + 14) = v122;
    _os_log_impl(&_mh_execute_header, v105, v190, "Handle didFetchRecordZoneChanges, event: %s, error: %s", v112, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v117 = *(v110 + 8);
    v117(v109, v111);
    v117(v108, v111);
  }

  v1[63] = v117;
  RecordZone = CKSyncEngine.Event.DidFetchRecordZoneChanges.error.getter();
  v1[64] = RecordZone;
  if (!RecordZone)
  {
    (v1[63])(v1[28], v1[24]);
    goto LABEL_46;
  }

  v143 = RecordZone;
  v144 = CKSyncEngine.Event.DidFetchRecordZoneChanges.zoneID.getter();
  v1[65] = v144;
  v145 = swift_task_alloc();
  v1[66] = v145;
  *v145 = v1;
  v145[1] = sub_100082B14;

  return sub_10007EEB0(v143, v144);
}

uint64_t sub_100081AF4()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 344);
  v3 = *(*v0 + 336);
  v4 = *(*v0 + 40);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100081C60, v4, 0);
}

uint64_t sub_100081C60()
{
  (*(v0[46] + 8))(v0[47], v0[45]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100081DE8()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_100081EF8, v1, 0);
}

uint64_t sub_100081EF8()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100082090()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_1000821A0, v1, 0);
}

uint64_t sub_1000821A0()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100082338()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_100082448, v1, 0);
}

uint64_t sub_100082448()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 328);
  v3 = *(v0 + 304);
  v4 = *(v0 + 312);

  (*(v4 + 8))(v2, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000825E4()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_1000826F4, v1, 0);
}

uint64_t sub_1000826F4()
{
  (*(v0[33] + 8))(v0[34], v0[32]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10008287C()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_10008298C, v1, 0);
}

uint64_t sub_10008298C()
{
  (*(v0[30] + 8))(v0[31], v0[29]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100082B14()
{
  v1 = *(*v0 + 520);
  v2 = *(*v0 + 40);

  return _swift_task_switch(sub_100082C3C, v2, 0);
}

uint64_t sub_100082C3C()
{
  (*(v0 + 504))(*(v0 + 224), *(v0 + 192));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100082DD0()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_100082EE0, v1, 0);
}

uint64_t sub_100082EE0()
{
  (*(v0[22] + 8))(v0[23], v0[21]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100083068()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_100083178, v1, 0);
}

uint64_t sub_100083178()
{
  (*(v0[19] + 8))(v0[20], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100083300(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for CKDatabase.DatabaseChange.Deletion.Reason();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for CKDatabase.DatabaseChange.Deletion();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_100083434, v1, 0);
}

uint64_t sub_100083434()
{
  v39 = v0;
  v1 = CKSyncEngine.Event.FetchedDatabaseChanges.deletions.getter();
  *(v0 + 96) = v1;
  v2 = *(v1 + 16);
  *(v0 + 104) = v2;
  if (v2)
  {
    v3 = *(v0 + 56);
    v4 = *(v0 + 64);
    v5 = **(v0 + 24) + 376;
    *(v0 + 112) = *v5;
    *(v0 + 120) = v5 & 0xFFFFFFFFFFFFLL | 0xC2A000000000000;
    v6 = *(v4 + 16);
    v4 += 16;
    v7 = *(v4 + 64);
    *(v0 + 176) = v7;
    *(v0 + 128) = *(v4 + 56);
    *(v0 + 136) = v6;
    *(v0 + 144) = 0;
    v6(*(v0 + 88), v1 + ((v7 + 32) & ~v7), v3);
    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 136);
    v9 = *(v0 + 80);
    v10 = *(v0 + 88);
    v11 = *(v0 + 72);
    v12 = *(v0 + 56);
    v13 = type metadata accessor for Logger();
    sub_100066000(v13, qword_100129988);
    v8(v9, v10, v12);
    v8(v11, v10, v12);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = os_log_type_enabled(v14, v15);
    v18 = *(v0 + 72);
    v17 = *(v0 + 80);
    v19 = *(v0 + 56);
    v20 = *(v0 + 64);
    if (v16)
    {
      v35 = v15;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v38 = v36;
      *v21 = 138412546;
      v23 = CKDatabase.DatabaseChange.Deletion.zoneID.getter();
      v24 = *(v20 + 8);
      v24(v17, v19);
      *(v21 + 4) = v23;
      *v22 = v23;
      *(v21 + 12) = 2080;
      CKDatabase.DatabaseChange.Deletion.reason.getter();
      v25 = String.init<A>(describing:)();
      v27 = v26;
      v24(v18, v19);
      v28 = sub_100065658(v25, v27, &v38);

      *(v21 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v14, v35, "Received deletion for zone: %@ reason: %s", v21, 0x16u);
      sub_100066C80(v22, &qword_1001287F0, &qword_1000E6C40);

      sub_10005D588(v36);
    }

    else
    {

      v24 = *(v20 + 8);
      v24(v18, v19);
      v24(v17, v19);
    }

    *(v0 + 152) = v24;
    v31 = *(v0 + 112);
    v32 = CKDatabase.DatabaseChange.Deletion.zoneID.getter();
    *(v0 + 160) = v32;
    CKDatabase.DatabaseChange.Deletion.reason.getter();
    v37 = (v31 + *v31);
    v33 = swift_task_alloc();
    *(v0 + 168) = v33;
    *v33 = v0;
    v33[1] = sub_10008388C;
    v34 = *(v0 + 48);

    return v37(v32, v34);
  }

  else
  {

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_10008388C()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100083A18, v5, 0);
}

uint64_t sub_100083A18()
{
  v36 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 144) + 1;
  (*(v0 + 152))(*(v0 + 88), *(v0 + 56));
  if (v2 == v1)
  {

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 136);
    v6 = *(v0 + 144) + 1;
    *(v0 + 144) = v6;
    v5(*(v0 + 88), *(v0 + 96) + ((*(v0 + 176) + 32) & ~*(v0 + 176)) + *(v0 + 128) * v6, *(v0 + 56));
    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 136);
    v8 = *(v0 + 80);
    v9 = *(v0 + 88);
    v10 = *(v0 + 72);
    v11 = *(v0 + 56);
    v12 = type metadata accessor for Logger();
    sub_100066000(v12, qword_100129988);
    v7(v8, v9, v11);
    v7(v10, v9, v11);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 72);
    v16 = *(v0 + 80);
    v18 = *(v0 + 56);
    v19 = *(v0 + 64);
    if (v15)
    {
      v32 = v14;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v35 = v33;
      *v20 = 138412546;
      v22 = CKDatabase.DatabaseChange.Deletion.zoneID.getter();
      v23 = *(v19 + 8);
      v23(v16, v18);
      *(v20 + 4) = v22;
      *v21 = v22;
      *(v20 + 12) = 2080;
      CKDatabase.DatabaseChange.Deletion.reason.getter();
      v24 = String.init<A>(describing:)();
      v26 = v25;
      v23(v17, v18);
      v27 = sub_100065658(v24, v26, &v35);

      *(v20 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v13, v32, "Received deletion for zone: %@ reason: %s", v20, 0x16u);
      sub_100066C80(v21, &qword_1001287F0, &qword_1000E6C40);

      sub_10005D588(v33);
    }

    else
    {

      v23 = *(v19 + 8);
      v23(v17, v18);
      v23(v16, v18);
    }

    *(v0 + 152) = v23;
    v28 = *(v0 + 112);
    v29 = CKDatabase.DatabaseChange.Deletion.zoneID.getter();
    *(v0 + 160) = v29;
    CKDatabase.DatabaseChange.Deletion.reason.getter();
    v34 = (v28 + *v28);
    v30 = swift_task_alloc();
    *(v0 + 168) = v30;
    *v30 = v0;
    v30[1] = sub_10008388C;
    v31 = *(v0 + 48);

    return v34(v29, v31);
  }
}

uint64_t sub_100083E5C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for CKDatabase.RecordZoneChange.Deletion();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for CKDatabase.RecordZoneChange.Modification();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for CKSyncEngine.Event.FetchedRecordZoneChanges();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100083FE0, v1, 0);
}

uint64_t sub_100083FE0()
{
  v62 = v0;
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 16);
  v5 = type metadata accessor for Logger();
  *(v0 + 112) = sub_100066000(v5, qword_100129988);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 96);
  v9 = *(v0 + 104);
  v11 = *(v0 + 88);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v61 = v13;
    *v12 = 136315138;
    sub_100092BD4(&qword_100128530, 255, &type metadata accessor for CKSyncEngine.Event.FetchedRecordZoneChanges, &protocol conformance descriptor for CKSyncEngine.Event.FetchedRecordZoneChanges);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_100065658(v14, v16, &v61);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "handleFetchedRecordZoneChanges: %s", v12, 0xCu);
    sub_10005D588(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = CKSyncEngine.Event.FetchedRecordZoneChanges.modifications.getter();
  *(v0 + 120) = v18;
  v19 = *(v18 + 16);
  *(v0 + 128) = v19;
  if (v19)
  {
    v21 = *(v0 + 72);
    v20 = *(v0 + 80);
    v22 = **(v0 + 24) + 360;
    *(v0 + 136) = *v22;
    *(v0 + 144) = v22 & 0xFFFFFFFFFFFFLL | 0xC4C4000000000000;
    v23 = *(v21 + 80);
    *(v0 + 272) = v23;
    *(v0 + 152) = *(v21 + 72);
    v24 = *(v21 + 16);
    *(v0 + 160) = v24;
    *(v0 + 168) = 0;
    v25 = *(v0 + 64);
    v24(v20, v18 + ((v23 + 32) & ~v23), v25);
    v26 = CKDatabase.RecordZoneChange.Modification.record.getter();
    *(v0 + 176) = v26;
    (*(v21 + 8))(v20, v25);
    v27 = v26;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      v32 = [v27 recordID];
      *(v30 + 4) = v32;
      *v31 = v32;
      _os_log_impl(&_mh_execute_header, v28, v29, "Received CKRecord modification: %@", v30, 0xCu);
      sub_100066C80(v31, &qword_1001287F0, &qword_1000E6C40);
    }

    v33 = *(v0 + 136);

    v60 = (v33 + *v33);
    v34 = swift_task_alloc();
    *(v0 + 184) = v34;
    *v34 = v0;
    v34[1] = sub_100084700;
    v35 = v27;
    goto LABEL_18;
  }

  v36 = CKSyncEngine.Event.FetchedRecordZoneChanges.deletions.getter();
  *(v0 + 192) = v36;
  v37 = *(v36 + 16);
  *(v0 + 200) = v37;
  if (v37)
  {
    v39 = *(v0 + 40);
    v38 = *(v0 + 48);
    v40 = *(v0 + 32);
    v41 = **(v0 + 24) + 368;
    *(v0 + 208) = *v41;
    *(v0 + 216) = v41 & 0xFFFFFFFFFFFFLL | 0x6C56000000000000;
    v42 = *(v39 + 16);
    v39 += 16;
    v43 = *(v39 + 64);
    *(v0 + 276) = v43;
    *(v0 + 224) = *(v39 + 56);
    *(v0 + 232) = v42;
    *(v0 + 240) = 0;
    v44 = *(v0 + 56);
    v42(v44, v36 + ((v43 + 32) & ~v43), v40);
    v42(v38, v44, v40);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    v47 = os_log_type_enabled(v45, v46);
    v49 = *(v0 + 40);
    v48 = *(v0 + 48);
    v50 = *(v0 + 32);
    if (v47)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      v53 = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
      v54 = *(v49 + 8);
      v54(v48, v50);
      *(v51 + 4) = v53;
      *v52 = v53;
      _os_log_impl(&_mh_execute_header, v45, v46, "Received CKRecord deletion: %@", v51, 0xCu);
      sub_100066C80(v52, &qword_1001287F0, &qword_1000E6C40);
    }

    else
    {

      v54 = *(v49 + 8);
      v54(v48, v50);
    }

    *(v0 + 248) = v54;
    v57 = *(v0 + 208);
    v58 = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
    *(v0 + 256) = v58;
    v60 = (v57 + *v57);
    v59 = swift_task_alloc();
    *(v0 + 264) = v59;
    *v59 = v0;
    v59[1] = sub_100084D44;
    v35 = v58;
LABEL_18:

    return v60(v35);
  }

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_100084700()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_100084810, v1, 0);
}

uint64_t sub_100084810()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 128);

  if (v1 + 1 != v2)
  {
    v22 = *(v0 + 160);
    v23 = *(v0 + 168) + 1;
    *(v0 + 168) = v23;
    v25 = *(v0 + 72);
    v24 = *(v0 + 80);
    v26 = *(v0 + 64);
    v22(v24, *(v0 + 120) + ((*(v0 + 272) + 32) & ~*(v0 + 272)) + *(v0 + 152) * v23, v26);
    v27 = CKDatabase.RecordZoneChange.Modification.record.getter();
    *(v0 + 176) = v27;
    (*(v25 + 8))(v24, v26);
    v28 = v27;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      v33 = [v28 recordID];
      *(v31 + 4) = v33;
      *v32 = v33;
      _os_log_impl(&_mh_execute_header, v29, v30, "Received CKRecord modification: %@", v31, 0xCu);
      sub_100066C80(v32, &qword_1001287F0, &qword_1000E6C40);
    }

    v34 = *(v0 + 136);

    v42 = (v34 + *v34);
    v35 = swift_task_alloc();
    *(v0 + 184) = v35;
    *v35 = v0;
    v35[1] = sub_100084700;
    v36 = v28;
    goto LABEL_13;
  }

  v3 = CKSyncEngine.Event.FetchedRecordZoneChanges.deletions.getter();
  *(v0 + 192) = v3;
  v4 = *(v3 + 16);
  *(v0 + 200) = v4;
  if (v4)
  {
    v6 = *(v0 + 40);
    v5 = *(v0 + 48);
    v7 = *(v0 + 32);
    v8 = **(v0 + 24) + 368;
    *(v0 + 208) = *v8;
    *(v0 + 216) = v8 & 0xFFFFFFFFFFFFLL | 0x6C56000000000000;
    v9 = *(v6 + 16);
    v6 += 16;
    v10 = *(v6 + 64);
    *(v0 + 276) = v10;
    *(v0 + 224) = *(v6 + 56);
    *(v0 + 232) = v9;
    *(v0 + 240) = 0;
    v11 = *(v0 + 56);
    v9(v11, v3 + ((v10 + 32) & ~v10), v7);
    v9(v5, v11, v7);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    v14 = os_log_type_enabled(v12, v13);
    v16 = *(v0 + 40);
    v15 = *(v0 + 48);
    v17 = *(v0 + 32);
    if (v14)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
      v21 = *(v16 + 8);
      v21(v15, v17);
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v12, v13, "Received CKRecord deletion: %@", v18, 0xCu);
      sub_100066C80(v19, &qword_1001287F0, &qword_1000E6C40);
    }

    else
    {

      v21 = *(v16 + 8);
      v21(v15, v17);
    }

    *(v0 + 248) = v21;
    v39 = *(v0 + 208);
    v40 = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
    *(v0 + 256) = v40;
    v42 = (v39 + *v39);
    v41 = swift_task_alloc();
    *(v0 + 264) = v41;
    *v41 = v0;
    v41[1] = sub_100084D44;
    v36 = v40;
LABEL_13:

    return v42(v36);
  }

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_100084D44()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 24);

  return _swift_task_switch(sub_100084E6C, v2, 0);
}

uint64_t sub_100084E6C()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 240) + 1;
  (*(v0 + 248))(*(v0 + 56), *(v0 + 32));
  if (v2 == v1)
  {

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 232);
    v6 = *(v0 + 240) + 1;
    *(v0 + 240) = v6;
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    v9 = *(v0 + 32);
    v5(v7, *(v0 + 192) + ((*(v0 + 276) + 32) & ~*(v0 + 276)) + *(v0 + 224) * v6, v9);
    v5(v8, v7, v9);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v14 = *(v0 + 40);
    v13 = *(v0 + 48);
    v15 = *(v0 + 32);
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
      v19 = *(v14 + 8);
      v19(v13, v15);
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v10, v11, "Received CKRecord deletion: %@", v16, 0xCu);
      sub_100066C80(v17, &qword_1001287F0, &qword_1000E6C40);
    }

    else
    {

      v19 = *(v14 + 8);
      v19(v13, v15);
    }

    *(v0 + 248) = v19;
    v20 = *(v0 + 208);
    v21 = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
    *(v0 + 256) = v21;
    v23 = (v20 + *v20);
    v22 = swift_task_alloc();
    *(v0 + 264) = v22;
    *v22 = v0;
    v22[1] = sub_100084D44;

    return v23(v21);
  }
}

uint64_t sub_100085188(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v5 = type metadata accessor for CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave();
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_10008533C, v1, 0);
}

uint64_t sub_10008533C()
{
  v174 = v1;
  v2 = *(v1 + 56);
  v3 = CKSyncEngine.Event.SentRecordZoneChanges.savedRecords.getter();
  *(v1 + 184) = v3;
  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    *(v1 + 192) = v4;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v1 + 192) = v4;
    if (v4)
    {
LABEL_3:
      if (v4 >= 1)
      {
        v5 = **(v1 + 64) + 296;
        v6 = *v5;
        *(v1 + 200) = *v5;
        *(v1 + 208) = v5 & 0xFFFFFFFFFFFFLL | 0x6889000000000000;
        *(v1 + 216) = 0;
        v7 = *(v1 + 184);
        if ((v7 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v6 = *(v1 + 200);
        }

        else
        {
          v8 = *(v7 + 32);
        }

        *(v1 + 224) = v8;
        v166 = (v6 + *v6);
        v9 = v8;
        v10 = swift_task_alloc();
        *(v1 + 232) = v10;
        *v10 = v1;
        v10[1] = sub_100086BF0;
LABEL_16:

        return v166(v9);
      }

      __break(1u);
LABEL_20:
      v12 = _CocoaArrayWrapper.endIndex.getter();
      *(v1 + 248) = v12;
      if (!v12)
      {
        goto LABEL_21;
      }

LABEL_11:
      if (v12 >= 1)
      {
        v13 = **(v1 + 64) + 304;
        v14 = *v13;
        *(v1 + 256) = *v13;
        *(v1 + 264) = v13 & 0xFFFFFFFFFFFFLL | 0x1963000000000000;
        *(v1 + 272) = 0;
        v15 = *(v1 + 240);
        if ((v15 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v14 = *(v1 + 256);
        }

        else
        {
          v16 = *(v15 + 32);
        }

        *(v1 + 280) = v16;
        v166 = (v14 + *v14);
        v9 = v16;
        v17 = swift_task_alloc();
        *(v1 + 288) = v17;
        *v17 = v1;
        v17[1] = sub_100088560;
        goto LABEL_16;
      }

      __break(1u);
LABEL_121:
      swift_once();
LABEL_102:
      v131 = type metadata accessor for Logger();
      sub_100066000(v131, qword_100129988);
      v132 = v2;
      v133 = v0;
      v134 = Logger.logObject.getter();
      v135 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v134, v135))
      {
        v136 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        *v136 = 138412546;
        *(v136 + 4) = v132;
        *v137 = v132;
        *(v136 + 12) = 2112;
        v138 = v132;
        v139 = v133;
        v140 = _swift_stdlib_bridgeErrorToNSError();
        *(v136 + 14) = v140;
        v137[1] = v140;
        _os_log_impl(&_mh_execute_header, v134, v135, "Error deleting recordID %@ error: %@", v136, 0x16u);
        sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
        swift_arrayDestroy();
      }

      v141 = *(v1 + 64);

      v169 = (*(*v141 + 312) + **(*v141 + 312));
      v142 = swift_task_alloc();
      *(v1 + 544) = v142;
      *v142 = v1;
      v142[1] = sub_10008E0C4;
      v61 = v132;
      v62 = v133;
      v63 = v169;

      return v63(v61, v62);
    }
  }

  v2 = *(v1 + 56);

  v11 = CKSyncEngine.Event.SentRecordZoneChanges.deletedRecordIDs.getter();
  *(v1 + 240) = v11;
  if (v11 >> 62)
  {
    goto LABEL_20;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v1 + 248) = v12;
  if (v12)
  {
    goto LABEL_11;
  }

LABEL_21:

  v19 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordSaves.getter();
  v20 = *(v19 + 16);
  if (!v20)
  {

    v64 = 0;
    v21 = 0;
    v25 = _swiftEmptyArrayStorage;
    goto LABEL_52;
  }

  v21 = 0;
  v22 = *(v1 + 160);
  v23 = *(v22 + 16);
  v22 += 16;
  v24 = v19 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
  v160 = *(v22 + 56);
  v162 = v23;
  v159 = (v22 - 8);
  v156 = (*(v1 + 104) + 104);
  v25 = _swiftEmptyArrayStorage;
  v155 = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
  v26 = 0;
  v157 = *(v1 + 104);
  do
  {
    v167 = v21;
    v162(*(v1 + 176), v24, *(v1 + 152));
    v21 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
    v32 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
    *(v1 + 16) = v32;
    type metadata accessor for CKError(0);
    sub_100092BD4(&qword_100128538, 255, type metadata accessor for CKError, &unk_1000E694C);
    _BridgedStoredNSError.code.getter();
    if (*(v1 + 24) == 25)
    {
      if (!v167)
      {
        goto LABEL_24;
      }

      v33 = [v167 size];
      v34 = [v21 size];
      v35 = *(v1 + 96);
      v158 = v26;
      if (v33 < v34)
      {
        v36 = *(v1 + 144);
        *v36 = [v167 recordID];
        (*v156)(v36, v155, v35);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_100092358(0, v25[2] + 1, 1, v25, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
        }

        v38 = v25[2];
        v37 = v25[3];
        if (v38 >= v37 >> 1)
        {
          v25 = sub_100092358((v37 > 1), v38 + 1, 1, v25, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
        }

        v27 = *(v1 + 144);
        v28 = *(v1 + 96);

        v25[2] = v38 + 1;
        (*(v157 + 32))(v25 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v38, v27, v28);
        v26 = v158;
LABEL_24:
        v29 = *(v1 + 176);
        v30 = *(v1 + 152);
        v31 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();

        (*v159)(v29, v30);
        v26 = v31;
        goto LABEL_25;
      }

      v39 = *(v1 + 136);
      *v39 = [v21 recordID];
      (*v156)(v39, v155, v35);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_100092358(0, v25[2] + 1, 1, v25, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
      }

      v41 = v25[2];
      v40 = v25[3];
      if (v41 >= v40 >> 1)
      {
        v25 = sub_100092358((v40 > 1), v41 + 1, 1, v25, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
      }

      v42 = *(v1 + 176);
      v43 = *(v1 + 152);
      v154 = *(v1 + 136);
      v44 = *(v1 + 96);

      (*v159)(v42, v43);
      v25[2] = v41 + 1;
      (*(v157 + 32))(v25 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v41, v154, v44);
      v26 = v158;
    }

    else
    {
      (*v159)(*(v1 + 176), *(v1 + 152));
    }

    v21 = v167;
LABEL_25:
    *(v1 + 304) = v21;
    *(v1 + 312) = v25;
    v24 += v160;
    *(v1 + 296) = v26;
    --v20;
  }

  while (v20);

  if (v21)
  {
    if (v26)
    {
      v45 = qword_100129980;
      v46 = v21;
      v47 = v26;
      if (v45 != -1)
      {
        swift_once();
      }

      v48 = type metadata accessor for Logger();
      sub_100066000(v48, qword_100129988);
      v49 = v46;
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v173 = v54;
        *v52 = 138412546;
        v55 = [v49 recordID];
        *(v52 + 4) = v55;
        *v53 = v55;
        *(v52 + 12) = 2080;
        *(v1 + 48) = [v49 size];
        v56 = dispatch thunk of CustomStringConvertible.description.getter();
        v58 = sub_100065658(v56, v57, &v173);

        *(v52 + 14) = v58;
        _os_log_impl(&_mh_execute_header, v50, v51, "Quota exceeded saving %@ size %s", v52, 0x16u);
        sub_100066C80(v53, &qword_1001287F0, &qword_1000E6C40);

        sub_10005D588(v54);
      }

      v59 = *(**(v1 + 64) + 352);
      v168 = (v59 + *v59);
      v60 = swift_task_alloc();
      *(v1 + 320) = v60;
      *v60 = v1;
      v60[1] = sub_100089D8C;
      v61 = v49;
      v62 = v47;
      v63 = v168;

      return v63(v61, v62);
    }

    v64 = 0;
  }

  else
  {
    v64 = v26;
  }

LABEL_52:
  *(v1 + 328) = v64;
  *(v1 + 336) = v21;
  v65 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordSaves.getter();
  *(v1 + 344) = v65;
  v66 = *(v65 + 16);
  *(v1 + 352) = v66;
  if (!v66)
  {

    v69 = _swiftEmptyArrayStorage;
LABEL_94:
    *(v1 + 456) = v69;
    *(v1 + 464) = v25;
    v119 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordDeletes.getter();
    *(v1 + 472) = v119;
    v120 = *(v119 + 32);
    *(v1 + 599) = v120;
    v121 = -1;
    v122 = -1 << v120;
    if (-(-1 << v120) < 64)
    {
      v121 = ~(-1 << -(-1 << v120));
    }

    v123 = v121 & *(v119 + 64);
    if (!v123)
    {
      v125 = 0;
      v126 = ((63 - v122) >> 6) - 1;
      while (v126 != v125)
      {
        v124 = v125 + 1;
        v123 = *(v119 + 8 * v125++ + 72);
        if (v123)
        {
          goto LABEL_101;
        }
      }

      v143 = *(v1 + 64);

      v144 = *(*v143 + 192);
      v165 = *v143 + 192;
      *(v1 + 480) = v144;
      *(v1 + 488) = v165 & 0xFFFFFFFFFFFFLL | 0x9F87000000000000;
      v170 = (v144 + *v144);
      v145 = swift_task_alloc();
      *(v1 + 496) = v145;
      *v145 = v1;
      v145[1] = sub_10008DF7C;

      return v170();
    }

    v124 = 0;
LABEL_101:
    *(v1 + 520) = v124;
    *(v1 + 512) = v123;
    v127 = (v124 << 9) | (8 * __clz(__rbit64(v123)));
    v128 = *(*(v119 + 48) + v127);
    *(v1 + 528) = v128;
    v129 = *(*(v119 + 56) + v127);
    *(v1 + 536) = v129;
    v130 = qword_100129980;
    v2 = v128;
    v0 = v129;
    if (v130 == -1)
    {
      goto LABEL_102;
    }

    goto LABEL_121;
  }

  v67 = 0;
  v68 = *(v1 + 160);
  v69 = _swiftEmptyArrayStorage;
  *(v1 + 584) = *(v68 + 80);
  *(v1 + 360) = *(v68 + 72);
  *(v1 + 368) = *(v68 + 16);
  *(v1 + 588) = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
  *(v1 + 592) = enum case for CKSyncEngine.PendingDatabaseChange.saveZone(_:);
  while (1)
  {
    v70 = v25;
    *(v1 + 384) = v69;
    *(v1 + 392) = v25;
    *(v1 + 376) = v67;
    v72 = *(v1 + 160);
    v71 = *(v1 + 168);
    v73 = *(v1 + 152);
    (*(v1 + 368))(v71, *(v1 + 344) + ((*(v1 + 584) + 32) & ~*(v1 + 584)) + *(v1 + 360) * v67, v73);
    v74 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
    *(v1 + 400) = v74;
    v75 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
    *(v1 + 408) = v75;
    (*(v72 + 8))(v71, v73);
    *(v1 + 32) = v75;
    type metadata accessor for CKError(0);
    sub_100092BD4(&qword_100128538, 255, type metadata accessor for CKError, &unk_1000E694C);
    _BridgedStoredNSError.code.getter();
    v76 = *(v1 + 40);
    if (v76 <= 13)
    {
      break;
    }

    if (v76 <= 22)
    {
      if (v76 == 14)
      {
        v109 = related decl 'e' for CKErrorCode.serverRecord.getter();
        *(v1 + 416) = v109;
        if (v109)
        {
          v151 = *(**(v1 + 64) + 336);
          v172 = (v151 + *v151);
          v152 = v109;
          v153 = swift_task_alloc();
          *(v1 + 424) = v153;
          *v153 = v1;
          v153[1] = sub_10008AD4C;
          v61 = v74;
          v62 = v152;
          v63 = v172;

          return v63(v61, v62);
        }

        if (qword_100129980 != -1)
        {
          swift_once();
        }

        v110 = type metadata accessor for Logger();
        sub_100066000(v110, qword_100129988);
        v111 = v75;
        v112 = Logger.logObject.getter();
        v113 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          v115 = swift_slowAlloc();
          *v114 = 138412290;
          v116 = v111;
          v117 = _swift_stdlib_bridgeErrorToNSError();
          *(v114 + 4) = v117;
          *v115 = v117;
          _os_log_impl(&_mh_execute_header, v112, v113, "No server record for conflict %@", v114, 0xCu);
          sub_100066C80(v115, &qword_1001287F0, &qword_1000E6C40);

          v118 = v74;
        }

        else
        {
          v118 = v112;
          v112 = v74;
        }

        goto LABEL_55;
      }

      if (v76 != 20)
      {
        goto LABEL_114;
      }

      goto LABEL_79;
    }

    if (v76 == 23)
    {
      goto LABEL_79;
    }

    if (v76 == 25)
    {

LABEL_55:
      v25 = v70;
      goto LABEL_56;
    }

    if (v76 != 26)
    {
      goto LABEL_114;
    }

    v163 = *(v1 + 592);
    v78 = *(v1 + 80);
    v77 = *(v1 + 88);
    v79 = *(v1 + 72);
    v80 = [v74 recordID];
    v81 = v69;
    v82 = [v80 zoneID];

    v83 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v82];
    *v77 = v83;
    (*(v78 + 104))(v77, v163, v79);
    v161 = v83;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v81 = sub_100092358(0, v81[2] + 1, 1, v81, &qword_100128490, &qword_1000E6420, &type metadata accessor for CKSyncEngine.PendingDatabaseChange);
    }

    v85 = v81[2];
    v84 = v81[3];
    if (v85 >= v84 >> 1)
    {
      v164 = sub_100092358((v84 > 1), v85 + 1, 1, v81, &qword_100128490, &qword_1000E6420, &type metadata accessor for CKSyncEngine.PendingDatabaseChange);
    }

    else
    {
      v164 = v81;
    }

    v86 = *(v1 + 588);
    v87 = *(v1 + 120);
    v89 = *(v1 + 96);
    v88 = *(v1 + 104);
    v91 = *(v1 + 80);
    v90 = *(v1 + 88);
    v92 = *(v1 + 72);
    v164[2] = v85 + 1;
    (*(v91 + 32))(v164 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v85, v90, v92);
    *v87 = [v74 recordID];
    (*(v88 + 104))(v87, v86, v89);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v70 = sub_100092358(0, v70[2] + 1, 1, v70, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
    }

    v94 = v70[2];
    v93 = v70[3];
    if (v94 >= v93 >> 1)
    {
      v70 = sub_100092358((v93 > 1), v94 + 1, 1, v70, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
    }

    v95 = *(v1 + 120);
    v97 = *(v1 + 96);
    v96 = *(v1 + 104);

    v25 = v70;
    v70[2] = v94 + 1;
    (*(v96 + 32))(v70 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v94, v95, v97);
    v69 = v164;
LABEL_56:
    v67 = *(v1 + 376) + 1;
    if (v67 == *(v1 + 352))
    {

      goto LABEL_94;
    }
  }

  if (v76 <= 5)
  {
    if ((v76 - 3) >= 2)
    {
      goto LABEL_114;
    }

    goto LABEL_79;
  }

  if (v76 == 6 || v76 == 9)
  {
LABEL_79:
    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v98 = type metadata accessor for Logger();
    sub_100066000(v98, qword_100129988);
    v99 = v75;
    v100 = v74;
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *v103 = 138412546;
      v105 = [v100 recordID];
      *(v103 + 4) = v105;
      *v104 = v105;
      *(v103 + 12) = 2112;
      v106 = v69;
      v107 = v99;
      v108 = _swift_stdlib_bridgeErrorToNSError();
      *(v103 + 14) = v108;
      v104[1] = v108;
      _os_log_impl(&_mh_execute_header, v101, v102, "Retryable error saving %@: %@", v103, 0x16u);
      sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
      swift_arrayDestroy();

      v69 = v106;
    }

    else
    {
    }

    goto LABEL_55;
  }

  if (v76 != 11)
  {
LABEL_114:
    v148 = [v74 recordID];
    v149 = [v148 zoneID];
    *(v1 + 440) = v149;

    v150 = swift_task_alloc();
    *(v1 + 448) = v150;
    *v150 = v1;
    v150[1] = sub_10008CE84;

    return sub_10007EEB0(v75, v149);
  }

  v146 = *(**(v1 + 64) + 344);
  v171 = (v146 + *v146);
  v147 = swift_task_alloc();
  *(v1 + 432) = v147;
  *v147 = v1;
  v147[1] = sub_10008BDF0;

  return v171(v74);
}

uint64_t sub_100086BF0()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_100086D00, v1, 0);
}

uint64_t sub_100086D00()
{
  v173 = v1;
  v2 = *(v1 + 216);
  v3 = *(v1 + 192);

  if (v2 + 1 != v3)
  {
    v11 = *(v1 + 216) + 1;
    *(v1 + 216) = v11;
    v12 = *(v1 + 184);
    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v13 = *(v12 + 8 * v11 + 32);
    }

    v14 = v13;
    *(v1 + 224) = v13;
    v165 = (*(v1 + 200) + **(v1 + 200));
    v15 = swift_task_alloc();
    *(v1 + 232) = v15;
    *v15 = v1;
    v15[1] = sub_100086BF0;
    goto LABEL_13;
  }

  v4 = *(v1 + 56);

  v5 = CKSyncEngine.Event.SentRecordZoneChanges.deletedRecordIDs.getter();
  *(v1 + 240) = v5;
  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    *(v1 + 248) = v6;
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v1 + 248) = v6;
    if (v6)
    {
LABEL_4:
      if (v6 >= 1)
      {
        v7 = **(v1 + 64) + 304;
        v8 = *v7;
        *(v1 + 256) = *v7;
        *(v1 + 264) = v7 & 0xFFFFFFFFFFFFLL | 0x1963000000000000;
        *(v1 + 272) = 0;
        v9 = *(v1 + 240);
        if ((v9 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v8 = *(v1 + 256);
        }

        else
        {
          v10 = *(v9 + 32);
        }

        *(v1 + 280) = v10;
        v165 = (v8 + *v8);
        v14 = v10;
        v16 = swift_task_alloc();
        *(v1 + 288) = v16;
        *v16 = v1;
        v16[1] = sub_100088560;
LABEL_13:

        return v165(v14);
      }

      __break(1u);
LABEL_117:
      swift_once();
LABEL_98:
      v130 = type metadata accessor for Logger();
      sub_100066000(v130, qword_100129988);
      v131 = v4;
      v132 = v0;
      v133 = Logger.logObject.getter();
      v134 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v133, v134))
      {
        v135 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        *v135 = 138412546;
        *(v135 + 4) = v131;
        *v136 = v131;
        *(v135 + 12) = 2112;
        v137 = v131;
        v138 = v132;
        v139 = _swift_stdlib_bridgeErrorToNSError();
        *(v135 + 14) = v139;
        v136[1] = v139;
        _os_log_impl(&_mh_execute_header, v133, v134, "Error deleting recordID %@ error: %@", v135, 0x16u);
        sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
        swift_arrayDestroy();
      }

      v140 = *(v1 + 64);

      v168 = (*(*v140 + 312) + **(*v140 + 312));
      v141 = swift_task_alloc();
      *(v1 + 544) = v141;
      *v141 = v1;
      v141[1] = sub_10008E0C4;
      v60 = v131;
      v61 = v132;
      v62 = v168;

      return v62(v60, v61);
    }
  }

  v18 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordSaves.getter();
  v19 = *(v18 + 16);
  if (!v19)
  {

    v63 = 0;
    v20 = 0;
    v24 = _swiftEmptyArrayStorage;
    goto LABEL_48;
  }

  v20 = 0;
  v21 = *(v1 + 160);
  v22 = *(v21 + 16);
  v21 += 16;
  v23 = v18 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
  v159 = *(v21 + 56);
  v161 = v22;
  v158 = (v21 - 8);
  v155 = (*(v1 + 104) + 104);
  v24 = _swiftEmptyArrayStorage;
  v154 = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
  v25 = 0;
  v156 = *(v1 + 104);
  do
  {
    v166 = v20;
    v161(*(v1 + 176), v23, *(v1 + 152));
    v20 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
    v31 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
    *(v1 + 16) = v31;
    type metadata accessor for CKError(0);
    sub_100092BD4(&qword_100128538, 255, type metadata accessor for CKError, &unk_1000E694C);
    _BridgedStoredNSError.code.getter();
    if (*(v1 + 24) == 25)
    {
      if (!v166)
      {
        goto LABEL_20;
      }

      v32 = [v166 size];
      v33 = [v20 size];
      v34 = *(v1 + 96);
      v157 = v25;
      if (v32 < v33)
      {
        v35 = *(v1 + 144);
        *v35 = [v166 recordID];
        (*v155)(v35, v154, v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_100092358(0, v24[2] + 1, 1, v24, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
        }

        v37 = v24[2];
        v36 = v24[3];
        if (v37 >= v36 >> 1)
        {
          v24 = sub_100092358((v36 > 1), v37 + 1, 1, v24, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
        }

        v26 = *(v1 + 144);
        v27 = *(v1 + 96);

        v24[2] = v37 + 1;
        (*(v156 + 32))(v24 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v37, v26, v27);
        v25 = v157;
LABEL_20:
        v28 = *(v1 + 176);
        v29 = *(v1 + 152);
        v30 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();

        (*v158)(v28, v29);
        v25 = v30;
        goto LABEL_21;
      }

      v38 = *(v1 + 136);
      *v38 = [v20 recordID];
      (*v155)(v38, v154, v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_100092358(0, v24[2] + 1, 1, v24, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
      }

      v40 = v24[2];
      v39 = v24[3];
      if (v40 >= v39 >> 1)
      {
        v24 = sub_100092358((v39 > 1), v40 + 1, 1, v24, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
      }

      v41 = *(v1 + 176);
      v42 = *(v1 + 152);
      v153 = *(v1 + 136);
      v43 = *(v1 + 96);

      (*v158)(v41, v42);
      v24[2] = v40 + 1;
      (*(v156 + 32))(v24 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v40, v153, v43);
      v25 = v157;
    }

    else
    {
      (*v158)(*(v1 + 176), *(v1 + 152));
    }

    v20 = v166;
LABEL_21:
    *(v1 + 304) = v20;
    *(v1 + 312) = v24;
    v23 += v159;
    *(v1 + 296) = v25;
    --v19;
  }

  while (v19);

  if (v20)
  {
    if (v25)
    {
      v44 = qword_100129980;
      v45 = v20;
      v46 = v25;
      if (v44 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      sub_100066000(v47, qword_100129988);
      v48 = v45;
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v172 = v53;
        *v51 = 138412546;
        v54 = [v48 recordID];
        *(v51 + 4) = v54;
        *v52 = v54;
        *(v51 + 12) = 2080;
        *(v1 + 48) = [v48 size];
        v55 = dispatch thunk of CustomStringConvertible.description.getter();
        v57 = sub_100065658(v55, v56, &v172);

        *(v51 + 14) = v57;
        _os_log_impl(&_mh_execute_header, v49, v50, "Quota exceeded saving %@ size %s", v51, 0x16u);
        sub_100066C80(v52, &qword_1001287F0, &qword_1000E6C40);

        sub_10005D588(v53);
      }

      v58 = *(**(v1 + 64) + 352);
      v167 = (v58 + *v58);
      v59 = swift_task_alloc();
      *(v1 + 320) = v59;
      *v59 = v1;
      v59[1] = sub_100089D8C;
      v60 = v48;
      v61 = v46;
      v62 = v167;

      return v62(v60, v61);
    }

    v63 = 0;
  }

  else
  {
    v63 = v25;
  }

LABEL_48:
  *(v1 + 328) = v63;
  *(v1 + 336) = v20;
  v64 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordSaves.getter();
  *(v1 + 344) = v64;
  v65 = *(v64 + 16);
  *(v1 + 352) = v65;
  if (!v65)
  {

    v68 = _swiftEmptyArrayStorage;
LABEL_90:
    *(v1 + 456) = v68;
    *(v1 + 464) = v24;
    v118 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordDeletes.getter();
    *(v1 + 472) = v118;
    v119 = *(v118 + 32);
    *(v1 + 599) = v119;
    v120 = -1;
    v121 = -1 << v119;
    if (-(-1 << v119) < 64)
    {
      v120 = ~(-1 << -(-1 << v119));
    }

    v122 = v120 & *(v118 + 64);
    if (!v122)
    {
      v124 = 0;
      v125 = ((63 - v121) >> 6) - 1;
      while (v125 != v124)
      {
        v123 = v124 + 1;
        v122 = *(v118 + 8 * v124++ + 72);
        if (v122)
        {
          goto LABEL_97;
        }
      }

      v142 = *(v1 + 64);

      v143 = *(*v142 + 192);
      v164 = *v142 + 192;
      *(v1 + 480) = v143;
      *(v1 + 488) = v164 & 0xFFFFFFFFFFFFLL | 0x9F87000000000000;
      v169 = (v143 + *v143);
      v144 = swift_task_alloc();
      *(v1 + 496) = v144;
      *v144 = v1;
      v144[1] = sub_10008DF7C;

      return v169();
    }

    v123 = 0;
LABEL_97:
    *(v1 + 520) = v123;
    *(v1 + 512) = v122;
    v126 = (v123 << 9) | (8 * __clz(__rbit64(v122)));
    v127 = *(*(v118 + 48) + v126);
    *(v1 + 528) = v127;
    v128 = *(*(v118 + 56) + v126);
    *(v1 + 536) = v128;
    v129 = qword_100129980;
    v4 = v127;
    v0 = v128;
    if (v129 == -1)
    {
      goto LABEL_98;
    }

    goto LABEL_117;
  }

  v66 = 0;
  v67 = *(v1 + 160);
  v68 = _swiftEmptyArrayStorage;
  *(v1 + 584) = *(v67 + 80);
  *(v1 + 360) = *(v67 + 72);
  *(v1 + 368) = *(v67 + 16);
  *(v1 + 588) = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
  *(v1 + 592) = enum case for CKSyncEngine.PendingDatabaseChange.saveZone(_:);
  while (2)
  {
    v69 = v24;
    *(v1 + 384) = v68;
    *(v1 + 392) = v24;
    *(v1 + 376) = v66;
    v71 = *(v1 + 160);
    v70 = *(v1 + 168);
    v72 = *(v1 + 152);
    (*(v1 + 368))(v70, *(v1 + 344) + ((*(v1 + 584) + 32) & ~*(v1 + 584)) + *(v1 + 360) * v66, v72);
    v73 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
    *(v1 + 400) = v73;
    v74 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
    *(v1 + 408) = v74;
    (*(v71 + 8))(v70, v72);
    *(v1 + 32) = v74;
    type metadata accessor for CKError(0);
    sub_100092BD4(&qword_100128538, 255, type metadata accessor for CKError, &unk_1000E694C);
    _BridgedStoredNSError.code.getter();
    v75 = *(v1 + 40);
    if (v75 > 13)
    {
      if (v75 <= 22)
      {
        if (v75 == 14)
        {
          v108 = related decl 'e' for CKErrorCode.serverRecord.getter();
          *(v1 + 416) = v108;
          if (v108)
          {
            v150 = *(**(v1 + 64) + 336);
            v171 = (v150 + *v150);
            v151 = v108;
            v152 = swift_task_alloc();
            *(v1 + 424) = v152;
            *v152 = v1;
            v152[1] = sub_10008AD4C;
            v60 = v73;
            v61 = v151;
            v62 = v171;

            return v62(v60, v61);
          }

          if (qword_100129980 != -1)
          {
            swift_once();
          }

          v109 = type metadata accessor for Logger();
          sub_100066000(v109, qword_100129988);
          v110 = v74;
          v111 = Logger.logObject.getter();
          v112 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v111, v112))
          {
            v113 = swift_slowAlloc();
            v114 = swift_slowAlloc();
            *v113 = 138412290;
            v115 = v110;
            v116 = _swift_stdlib_bridgeErrorToNSError();
            *(v113 + 4) = v116;
            *v114 = v116;
            _os_log_impl(&_mh_execute_header, v111, v112, "No server record for conflict %@", v113, 0xCu);
            sub_100066C80(v114, &qword_1001287F0, &qword_1000E6C40);

            v117 = v73;
          }

          else
          {
            v117 = v111;
            v111 = v73;
          }

          goto LABEL_51;
        }

        if (v75 != 20)
        {
          goto LABEL_110;
        }
      }

      else if (v75 != 23)
      {
        if (v75 != 25)
        {
          if (v75 != 26)
          {
            goto LABEL_110;
          }

          v162 = *(v1 + 592);
          v77 = *(v1 + 80);
          v76 = *(v1 + 88);
          v78 = *(v1 + 72);
          v79 = [v73 recordID];
          v80 = v68;
          v81 = [v79 zoneID];

          v82 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v81];
          *v76 = v82;
          (*(v77 + 104))(v76, v162, v78);
          v160 = v82;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v80 = sub_100092358(0, v80[2] + 1, 1, v80, &qword_100128490, &qword_1000E6420, &type metadata accessor for CKSyncEngine.PendingDatabaseChange);
          }

          v84 = v80[2];
          v83 = v80[3];
          if (v84 >= v83 >> 1)
          {
            v163 = sub_100092358((v83 > 1), v84 + 1, 1, v80, &qword_100128490, &qword_1000E6420, &type metadata accessor for CKSyncEngine.PendingDatabaseChange);
          }

          else
          {
            v163 = v80;
          }

          v85 = *(v1 + 588);
          v86 = *(v1 + 120);
          v88 = *(v1 + 96);
          v87 = *(v1 + 104);
          v90 = *(v1 + 80);
          v89 = *(v1 + 88);
          v91 = *(v1 + 72);
          v163[2] = v84 + 1;
          (*(v90 + 32))(v163 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v84, v89, v91);
          *v86 = [v73 recordID];
          (*(v87 + 104))(v86, v85, v88);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v69 = sub_100092358(0, v69[2] + 1, 1, v69, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
          }

          v93 = v69[2];
          v92 = v69[3];
          if (v93 >= v92 >> 1)
          {
            v69 = sub_100092358((v92 > 1), v93 + 1, 1, v69, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
          }

          v94 = *(v1 + 120);
          v96 = *(v1 + 96);
          v95 = *(v1 + 104);

          v24 = v69;
          v69[2] = v93 + 1;
          (*(v95 + 32))(v69 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v93, v94, v96);
          v68 = v163;
          goto LABEL_52;
        }

LABEL_51:
        v24 = v69;
LABEL_52:
        v66 = *(v1 + 376) + 1;
        if (v66 == *(v1 + 352))
        {

          goto LABEL_90;
        }

        continue;
      }

      goto LABEL_75;
    }

    break;
  }

  if (v75 <= 5)
  {
    if ((v75 - 3) >= 2)
    {
      goto LABEL_110;
    }

    goto LABEL_75;
  }

  if (v75 == 6 || v75 == 9)
  {
LABEL_75:
    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v97 = type metadata accessor for Logger();
    sub_100066000(v97, qword_100129988);
    v98 = v74;
    v99 = v73;
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      *v102 = 138412546;
      v104 = [v99 recordID];
      *(v102 + 4) = v104;
      *v103 = v104;
      *(v102 + 12) = 2112;
      v105 = v68;
      v106 = v98;
      v107 = _swift_stdlib_bridgeErrorToNSError();
      *(v102 + 14) = v107;
      v103[1] = v107;
      _os_log_impl(&_mh_execute_header, v100, v101, "Retryable error saving %@: %@", v102, 0x16u);
      sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
      swift_arrayDestroy();

      v68 = v105;
    }

    else
    {
    }

    goto LABEL_51;
  }

  if (v75 != 11)
  {
LABEL_110:
    v147 = [v73 recordID];
    v148 = [v147 zoneID];
    *(v1 + 440) = v148;

    v149 = swift_task_alloc();
    *(v1 + 448) = v149;
    *v149 = v1;
    v149[1] = sub_10008CE84;

    return sub_10007EEB0(v74, v148);
  }

  v145 = *(**(v1 + 64) + 344);
  v170 = (v145 + *v145);
  v146 = swift_task_alloc();
  *(v1 + 432) = v146;
  *v146 = v1;
  v146[1] = sub_10008BDF0;

  return v170(v73);
}

uint64_t sub_100088560()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_100088670, v1, 0);
}

uint64_t sub_100088670()
{
  v166 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 248);

  if (v1 + 1 != v2)
  {
    v29 = *(v0 + 272) + 1;
    *(v0 + 272) = v29;
    v30 = *(v0 + 240);
    if ((v30 & 0xC000000000000001) != 0)
    {
      v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v31 = *(v30 + 8 * v29 + 32);
    }

    v52 = v31;
    *(v0 + 280) = v31;
    v160 = (*(v0 + 256) + **(v0 + 256));
    v53 = swift_task_alloc();
    *(v0 + 288) = v53;
    *v53 = v0;
    v53[1] = sub_100088560;

    return v160(v52);
  }

  v3 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordSaves.getter();
  v4 = *(v3 + 16);
  if (!v4)
  {

    v51 = 0;
    v5 = 0;
    v9 = _swiftEmptyArrayStorage;
    goto LABEL_39;
  }

  v5 = 0;
  v6 = *(v0 + 160);
  v7 = *(v6 + 16);
  v6 += 16;
  v8 = v3 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
  v152 = *(v6 + 56);
  v154 = v7;
  v151 = (v6 - 8);
  v148 = (*(v0 + 104) + 104);
  v9 = _swiftEmptyArrayStorage;
  v147 = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
  v10 = 0;
  v149 = *(v0 + 104);
  do
  {
    v158 = v5;
    v154(*(v0 + 176), v8, *(v0 + 152));
    v5 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
    v16 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
    *(v0 + 16) = v16;
    type metadata accessor for CKError(0);
    sub_100092BD4(&qword_100128538, 255, type metadata accessor for CKError, &unk_1000E694C);
    _BridgedStoredNSError.code.getter();
    if (*(v0 + 24) == 25)
    {
      if (!v158)
      {
        goto LABEL_5;
      }

      v17 = [v158 size];
      v18 = [v5 size];
      v19 = *(v0 + 96);
      v150 = v10;
      if (v17 < v18)
      {
        v20 = *(v0 + 144);
        *v20 = [v158 recordID];
        (*v148)(v20, v147, v19);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100092358(0, v9[2] + 1, 1, v9, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
        }

        v22 = v9[2];
        v21 = v9[3];
        if (v22 >= v21 >> 1)
        {
          v9 = sub_100092358((v21 > 1), v22 + 1, 1, v9, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
        }

        v11 = *(v0 + 144);
        v12 = *(v0 + 96);

        v9[2] = v22 + 1;
        (*(v149 + 32))(v9 + ((*(v149 + 80) + 32) & ~*(v149 + 80)) + *(v149 + 72) * v22, v11, v12);
        v10 = v150;
LABEL_5:
        v13 = *(v0 + 176);
        v14 = *(v0 + 152);
        v15 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();

        (*v151)(v13, v14);
        v10 = v15;
        goto LABEL_6;
      }

      v23 = *(v0 + 136);
      *v23 = [v5 recordID];
      (*v148)(v23, v147, v19);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100092358(0, v9[2] + 1, 1, v9, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
      }

      v25 = v9[2];
      v24 = v9[3];
      if (v25 >= v24 >> 1)
      {
        v9 = sub_100092358((v24 > 1), v25 + 1, 1, v9, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
      }

      v26 = *(v0 + 176);
      v27 = *(v0 + 152);
      v146 = *(v0 + 136);
      v28 = *(v0 + 96);

      (*v151)(v26, v27);
      v9[2] = v25 + 1;
      (*(v149 + 32))(v9 + ((*(v149 + 80) + 32) & ~*(v149 + 80)) + *(v149 + 72) * v25, v146, v28);
      v10 = v150;
    }

    else
    {
      (*v151)(*(v0 + 176), *(v0 + 152));
    }

    v5 = v158;
LABEL_6:
    *(v0 + 304) = v5;
    *(v0 + 312) = v9;
    v8 += v152;
    *(v0 + 296) = v10;
    --v4;
  }

  while (v4);

  if (v5)
  {
    if (v10)
    {
      v32 = qword_100129980;
      v33 = v5;
      v34 = v10;
      if (v32 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_100066000(v35, qword_100129988);
      v36 = v33;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v165 = v41;
        *v39 = 138412546;
        v42 = [v36 recordID];
        *(v39 + 4) = v42;
        *v40 = v42;
        *(v39 + 12) = 2080;
        *(v0 + 48) = [v36 size];
        v43 = dispatch thunk of CustomStringConvertible.description.getter();
        v45 = sub_100065658(v43, v44, &v165);

        *(v39 + 14) = v45;
        _os_log_impl(&_mh_execute_header, v37, v38, "Quota exceeded saving %@ size %s", v39, 0x16u);
        sub_100066C80(v40, &qword_1001287F0, &qword_1000E6C40);

        sub_10005D588(v41);
      }

      v46 = *(**(v0 + 64) + 352);
      v159 = (v46 + *v46);
      v47 = swift_task_alloc();
      *(v0 + 320) = v47;
      *v47 = v0;
      v47[1] = sub_100089D8C;
      v48 = v36;
      v49 = v34;
      v50 = v159;

      return v50(v48, v49);
    }

    v51 = 0;
  }

  else
  {
    v51 = v10;
  }

LABEL_39:
  *(v0 + 328) = v51;
  *(v0 + 336) = v5;
  v55 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordSaves.getter();
  *(v0 + 344) = v55;
  v56 = *(v55 + 16);
  *(v0 + 352) = v56;
  if (!v56)
  {

    v59 = _swiftEmptyArrayStorage;
LABEL_81:
    *(v0 + 456) = v59;
    *(v0 + 464) = v9;
    v109 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordDeletes.getter();
    *(v0 + 472) = v109;
    v110 = *(v109 + 32);
    *(v0 + 599) = v110;
    v111 = -1;
    v112 = -1 << v110;
    if (-(-1 << v110) < 64)
    {
      v111 = ~(-1 << -(-1 << v110));
    }

    v113 = v111 & *(v109 + 64);
    if (!v113)
    {
      v115 = 0;
      v116 = ((63 - v112) >> 6) - 1;
      while (v116 != v115)
      {
        v114 = v115 + 1;
        v113 = *(v109 + 8 * v115++ + 72);
        if (v113)
        {
          goto LABEL_88;
        }
      }

      v135 = *(v0 + 64);

      v136 = *(*v135 + 192);
      v157 = *v135 + 192;
      *(v0 + 480) = v136;
      *(v0 + 488) = v157 & 0xFFFFFFFFFFFFLL | 0x9F87000000000000;
      v162 = (v136 + *v136);
      v137 = swift_task_alloc();
      *(v0 + 496) = v137;
      *v137 = v0;
      v137[1] = sub_10008DF7C;

      return v162();
    }

    v114 = 0;
LABEL_88:
    *(v0 + 520) = v114;
    *(v0 + 512) = v113;
    v117 = (v114 << 9) | (8 * __clz(__rbit64(v113)));
    v118 = *(*(v109 + 48) + v117);
    *(v0 + 528) = v118;
    v119 = *(*(v109 + 56) + v117);
    *(v0 + 536) = v119;
    v120 = qword_100129980;
    v121 = v118;
    v122 = v119;
    if (v120 != -1)
    {
      swift_once();
    }

    v123 = type metadata accessor for Logger();
    sub_100066000(v123, qword_100129988);
    v124 = v121;
    v125 = v122;
    v126 = Logger.logObject.getter();
    v127 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      *v128 = 138412546;
      *(v128 + 4) = v124;
      *v129 = v124;
      *(v128 + 12) = 2112;
      v130 = v124;
      v131 = v125;
      v132 = _swift_stdlib_bridgeErrorToNSError();
      *(v128 + 14) = v132;
      v129[1] = v132;
      _os_log_impl(&_mh_execute_header, v126, v127, "Error deleting recordID %@ error: %@", v128, 0x16u);
      sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
      swift_arrayDestroy();
    }

    v133 = *(v0 + 64);

    v161 = (*(*v133 + 312) + **(*v133 + 312));
    v134 = swift_task_alloc();
    *(v0 + 544) = v134;
    *v134 = v0;
    v134[1] = sub_10008E0C4;
    v48 = v124;
    v49 = v125;
    v50 = v161;

    return v50(v48, v49);
  }

  v57 = 0;
  v58 = *(v0 + 160);
  v59 = _swiftEmptyArrayStorage;
  *(v0 + 584) = *(v58 + 80);
  *(v0 + 360) = *(v58 + 72);
  *(v0 + 368) = *(v58 + 16);
  *(v0 + 588) = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
  *(v0 + 592) = enum case for CKSyncEngine.PendingDatabaseChange.saveZone(_:);
  while (2)
  {
    v60 = v9;
    *(v0 + 384) = v59;
    *(v0 + 392) = v9;
    *(v0 + 376) = v57;
    v62 = *(v0 + 160);
    v61 = *(v0 + 168);
    v63 = *(v0 + 152);
    (*(v0 + 368))(v61, *(v0 + 344) + ((*(v0 + 584) + 32) & ~*(v0 + 584)) + *(v0 + 360) * v57, v63);
    v64 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
    *(v0 + 400) = v64;
    v65 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
    *(v0 + 408) = v65;
    (*(v62 + 8))(v61, v63);
    *(v0 + 32) = v65;
    type metadata accessor for CKError(0);
    sub_100092BD4(&qword_100128538, 255, type metadata accessor for CKError, &unk_1000E694C);
    _BridgedStoredNSError.code.getter();
    v66 = *(v0 + 40);
    if (v66 > 13)
    {
      if (v66 <= 22)
      {
        if (v66 == 14)
        {
          v99 = related decl 'e' for CKErrorCode.serverRecord.getter();
          *(v0 + 416) = v99;
          if (v99)
          {
            v143 = *(**(v0 + 64) + 336);
            v164 = (v143 + *v143);
            v144 = v99;
            v145 = swift_task_alloc();
            *(v0 + 424) = v145;
            *v145 = v0;
            v145[1] = sub_10008AD4C;
            v48 = v64;
            v49 = v144;
            v50 = v164;

            return v50(v48, v49);
          }

          if (qword_100129980 != -1)
          {
            swift_once();
          }

          v100 = type metadata accessor for Logger();
          sub_100066000(v100, qword_100129988);
          v101 = v65;
          v102 = Logger.logObject.getter();
          v103 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v102, v103))
          {
            v104 = swift_slowAlloc();
            v105 = swift_slowAlloc();
            *v104 = 138412290;
            v106 = v101;
            v107 = _swift_stdlib_bridgeErrorToNSError();
            *(v104 + 4) = v107;
            *v105 = v107;
            _os_log_impl(&_mh_execute_header, v102, v103, "No server record for conflict %@", v104, 0xCu);
            sub_100066C80(v105, &qword_1001287F0, &qword_1000E6C40);

            v108 = v64;
          }

          else
          {
            v108 = v102;
            v102 = v64;
          }

          goto LABEL_42;
        }

        if (v66 != 20)
        {
          goto LABEL_102;
        }
      }

      else if (v66 != 23)
      {
        if (v66 != 25)
        {
          if (v66 != 26)
          {
            goto LABEL_102;
          }

          v155 = *(v0 + 592);
          v68 = *(v0 + 80);
          v67 = *(v0 + 88);
          v69 = *(v0 + 72);
          v70 = [v64 recordID];
          v71 = v59;
          v72 = [v70 zoneID];

          v73 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v72];
          *v67 = v73;
          (*(v68 + 104))(v67, v155, v69);
          v153 = v73;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v71 = sub_100092358(0, v71[2] + 1, 1, v71, &qword_100128490, &qword_1000E6420, &type metadata accessor for CKSyncEngine.PendingDatabaseChange);
          }

          v75 = v71[2];
          v74 = v71[3];
          if (v75 >= v74 >> 1)
          {
            v156 = sub_100092358((v74 > 1), v75 + 1, 1, v71, &qword_100128490, &qword_1000E6420, &type metadata accessor for CKSyncEngine.PendingDatabaseChange);
          }

          else
          {
            v156 = v71;
          }

          v76 = *(v0 + 588);
          v77 = *(v0 + 120);
          v79 = *(v0 + 96);
          v78 = *(v0 + 104);
          v81 = *(v0 + 80);
          v80 = *(v0 + 88);
          v82 = *(v0 + 72);
          v156[2] = v75 + 1;
          (*(v81 + 32))(v156 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v75, v80, v82);
          *v77 = [v64 recordID];
          (*(v78 + 104))(v77, v76, v79);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v60 = sub_100092358(0, v60[2] + 1, 1, v60, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
          }

          v84 = v60[2];
          v83 = v60[3];
          if (v84 >= v83 >> 1)
          {
            v60 = sub_100092358((v83 > 1), v84 + 1, 1, v60, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
          }

          v85 = *(v0 + 120);
          v87 = *(v0 + 96);
          v86 = *(v0 + 104);

          v9 = v60;
          v60[2] = v84 + 1;
          (*(v86 + 32))(v60 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v84, v85, v87);
          v59 = v156;
          goto LABEL_43;
        }

LABEL_42:
        v9 = v60;
LABEL_43:
        v57 = *(v0 + 376) + 1;
        if (v57 == *(v0 + 352))
        {

          goto LABEL_81;
        }

        continue;
      }

      goto LABEL_66;
    }

    break;
  }

  if (v66 <= 5)
  {
    if ((v66 - 3) >= 2)
    {
      goto LABEL_102;
    }

    goto LABEL_66;
  }

  if (v66 == 6 || v66 == 9)
  {
LABEL_66:
    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v88 = type metadata accessor for Logger();
    sub_100066000(v88, qword_100129988);
    v89 = v65;
    v90 = v64;
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *v93 = 138412546;
      v95 = [v90 recordID];
      *(v93 + 4) = v95;
      *v94 = v95;
      *(v93 + 12) = 2112;
      v96 = v59;
      v97 = v89;
      v98 = _swift_stdlib_bridgeErrorToNSError();
      *(v93 + 14) = v98;
      v94[1] = v98;
      _os_log_impl(&_mh_execute_header, v91, v92, "Retryable error saving %@: %@", v93, 0x16u);
      sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
      swift_arrayDestroy();

      v59 = v96;
    }

    else
    {
    }

    goto LABEL_42;
  }

  if (v66 != 11)
  {
LABEL_102:
    v140 = [v64 recordID];
    v141 = [v140 zoneID];
    *(v0 + 440) = v141;

    v142 = swift_task_alloc();
    *(v0 + 448) = v142;
    *v142 = v0;
    v142[1] = sub_10008CE84;

    return sub_10007EEB0(v65, v141);
  }

  v138 = *(**(v0 + 64) + 344);
  v163 = (v138 + *v138);
  v139 = swift_task_alloc();
  *(v0 + 432) = v139;
  *v139 = v0;
  v139[1] = sub_10008BDF0;

  return v163(v64);
}

uint64_t sub_100089D8C()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_100089E9C, v1, 0);
}

uint64_t sub_100089E9C()
{
  v1 = *(v0 + 304);

  v2 = *(v0 + 312);
  *(v0 + 328) = *(v0 + 296);
  v3 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordSaves.getter();
  *(v0 + 344) = v3;
  v5 = *(v3 + 16);
  *(v0 + 352) = v5;
  if (v5)
  {
    v6 = 0;
    v7 = *(v0 + 160);
    v8 = _swiftEmptyArrayStorage;
    *(v0 + 584) = *(v7 + 80);
    *(v0 + 360) = *(v7 + 72);
    *(v0 + 368) = *(v7 + 16);
    *(v0 + 588) = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
    *(v0 + 592) = enum case for CKSyncEngine.PendingDatabaseChange.saveZone(_:);
    *&v4 = 138412290;
    v101 = v4;
    while (1)
    {
      *(v0 + 384) = v8;
      *(v0 + 392) = v2;
      *(v0 + 376) = v6;
      v9 = *(v0 + 160);
      v10 = *(v0 + 168);
      v11 = *(v0 + 152);
      (*(v0 + 368))(v10, *(v0 + 344) + ((*(v0 + 584) + 32) & ~*(v0 + 584)) + *(v0 + 360) * v6, v11);
      v12 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
      *(v0 + 400) = v12;
      v13 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
      *(v0 + 408) = v13;
      (*(v9 + 8))(v10, v11);
      *(v0 + 32) = v13;
      type metadata accessor for CKError(0);
      sub_100092BD4(&qword_100128538, 255, type metadata accessor for CKError, &unk_1000E694C);
      _BridgedStoredNSError.code.getter();
      v14 = *(v0 + 40);
      if (v14 <= 13)
      {
        break;
      }

      if (v14 <= 22)
      {
        if (v14 != 14)
        {
          if (v14 != 20)
          {
            goto LABEL_62;
          }

LABEL_27:
          if (qword_100129980 != -1)
          {
            swift_once();
          }

          v39 = type metadata accessor for Logger();
          sub_100066000(v39, qword_100129988);
          v40 = v13;
          v41 = v12;
          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            v45 = v2;
            v46 = swift_slowAlloc();
            *v44 = 138412546;
            v47 = [v41 recordID];
            *(v44 + 4) = v47;
            *v46 = v47;
            *(v44 + 12) = 2112;
            v48 = v40;
            v49 = _swift_stdlib_bridgeErrorToNSError();
            *(v44 + 14) = v49;
            v46[1] = v49;
            _os_log_impl(&_mh_execute_header, v42, v43, "Retryable error saving %@: %@", v44, 0x16u);
            sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
            swift_arrayDestroy();
            v2 = v45;
          }

          else
          {
          }

          goto LABEL_4;
        }

        v50 = related decl 'e' for CKErrorCode.serverRecord.getter();
        *(v0 + 416) = v50;
        if (v50)
        {
          v98 = *(**(v0 + 64) + 336);
          v108 = (v98 + *v98);
          v99 = v50;
          v100 = swift_task_alloc();
          *(v0 + 424) = v100;
          *v100 = v0;
          v100[1] = sub_10008AD4C;
          v86 = v12;
          v87 = v99;
          v88 = v108;

          return v88(v86, v87);
        }

        if (qword_100129980 != -1)
        {
          swift_once();
        }

        v51 = type metadata accessor for Logger();
        sub_100066000(v51, qword_100129988);
        v52 = v13;
        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          *v55 = v101;
          v57 = v52;
          v58 = _swift_stdlib_bridgeErrorToNSError();
          *(v55 + 4) = v58;
          *v56 = v58;
          _os_log_impl(&_mh_execute_header, v53, v54, "No server record for conflict %@", v55, 0xCu);
          sub_100066C80(v56, &qword_1001287F0, &qword_1000E6C40);

          v59 = v12;
        }

        else
        {
          v59 = v53;
          v53 = v12;
        }
      }

      else
      {
        switch(v14)
        {
          case 23:
            goto LABEL_27;
          case 25:

            break;
          case 26:
            v103 = v2;
            v15 = *(v0 + 592);
            v16 = *(v0 + 80);
            v17 = *(v0 + 88);
            v18 = *(v0 + 72);
            v19 = [v12 recordID];
            v20 = [v19 zoneID];

            v21 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v20];
            *v17 = v21;
            (*(v16 + 104))(v17, v15, v18);
            v22 = v21;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = sub_100092358(0, v8[2] + 1, 1, v8, &qword_100128490, &qword_1000E6420, &type metadata accessor for CKSyncEngine.PendingDatabaseChange);
            }

            v24 = v8[2];
            v23 = v8[3];
            v102 = v22;
            if (v24 >= v23 >> 1)
            {
              v8 = sub_100092358((v23 > 1), v24 + 1, 1, v8, &qword_100128490, &qword_1000E6420, &type metadata accessor for CKSyncEngine.PendingDatabaseChange);
            }

            v25 = *(v0 + 588);
            v26 = *(v0 + 120);
            v28 = *(v0 + 96);
            v27 = *(v0 + 104);
            v30 = *(v0 + 80);
            v29 = *(v0 + 88);
            v31 = *(v0 + 72);
            v8[2] = v24 + 1;
            (*(v30 + 32))(v8 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v24, v29, v31);
            *v26 = [v12 recordID];
            (*(v27 + 104))(v26, v25, v28);
            v32 = v103;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v32 = sub_100092358(0, v103[2] + 1, 1, v103, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
            }

            v34 = v32[2];
            v33 = v32[3];
            if (v34 >= v33 >> 1)
            {
              v32 = sub_100092358((v33 > 1), v34 + 1, 1, v32, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
            }

            v35 = *(v0 + 120);
            v37 = *(v0 + 96);
            v36 = *(v0 + 104);

            v32[2] = v34 + 1;
            v38 = v35;
            v2 = v32;
            (*(v36 + 32))(v32 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v34, v38, v37);
            break;
          default:
            goto LABEL_62;
        }
      }

LABEL_4:
      v6 = *(v0 + 376) + 1;
      if (v6 == *(v0 + 352))
      {

        goto LABEL_41;
      }
    }

    if (v14 <= 5)
    {
      if ((v14 - 3) >= 2)
      {
        goto LABEL_62;
      }
    }

    else if (v14 != 6 && v14 != 9)
    {
      if (v14 != 11)
      {
LABEL_62:
        v95 = [v12 recordID];
        v96 = [v95 zoneID];
        *(v0 + 440) = v96;

        v97 = swift_task_alloc();
        *(v0 + 448) = v97;
        *v97 = v0;
        v97[1] = sub_10008CE84;

        return sub_10007EEB0(v13, v96);
      }

      v93 = *(**(v0 + 64) + 344);
      v107 = (v93 + *v93);
      v94 = swift_task_alloc();
      *(v0 + 432) = v94;
      *v94 = v0;
      v94[1] = sub_10008BDF0;

      return v107(v12);
    }

    goto LABEL_27;
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_41:
  *(v0 + 456) = v8;
  *(v0 + 464) = v2;
  v60 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordDeletes.getter();
  *(v0 + 472) = v60;
  v61 = *(v60 + 32);
  *(v0 + 599) = v61;
  v62 = -1;
  v63 = -1 << v61;
  if (-(-1 << v61) < 64)
  {
    v62 = ~(-1 << -(-1 << v61));
  }

  v64 = v62 & *(v60 + 64);
  if (v64)
  {
    v65 = 0;
LABEL_48:
    *(v0 + 520) = v65;
    *(v0 + 512) = v64;
    v68 = (v65 << 9) | (8 * __clz(__rbit64(v64)));
    v69 = *(*(v60 + 48) + v68);
    *(v0 + 528) = v69;
    v70 = *(*(v60 + 56) + v68);
    *(v0 + 536) = v70;
    v71 = qword_100129980;
    v72 = v69;
    v73 = v70;
    if (v71 != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    sub_100066000(v74, qword_100129988);
    v75 = v72;
    v76 = v73;
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v79 = 138412546;
      *(v79 + 4) = v75;
      *v80 = v75;
      *(v79 + 12) = 2112;
      v81 = v75;
      v82 = v76;
      v83 = _swift_stdlib_bridgeErrorToNSError();
      *(v79 + 14) = v83;
      v80[1] = v83;
      _os_log_impl(&_mh_execute_header, v77, v78, "Error deleting recordID %@ error: %@", v79, 0x16u);
      sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
      swift_arrayDestroy();
    }

    v84 = *(v0 + 64);

    v105 = (*(*v84 + 312) + **(*v84 + 312));
    v85 = swift_task_alloc();
    *(v0 + 544) = v85;
    *v85 = v0;
    v85[1] = sub_10008E0C4;
    v86 = v75;
    v87 = v76;
    v88 = v105;

    return v88(v86, v87);
  }

  else
  {
    v66 = 0;
    v67 = ((63 - v63) >> 6) - 1;
    while (v67 != v66)
    {
      v65 = v66 + 1;
      v64 = *(v60 + 8 * v66++ + 72);
      if (v64)
      {
        goto LABEL_48;
      }
    }

    v90 = *(v0 + 64);

    v91 = *(*v90 + 192);
    v104 = *v90 + 192;
    *(v0 + 480) = v91;
    *(v0 + 488) = v104 & 0xFFFFFFFFFFFFLL | 0x9F87000000000000;
    v106 = (v91 + *v91);
    v92 = swift_task_alloc();
    *(v0 + 496) = v92;
    *v92 = v0;
    v92[1] = sub_10008DF7C;

    return v106();
  }
}

uint64_t sub_10008AD4C(char a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 596) = a1;

  return _swift_task_switch(sub_10008AE64, v2, 0);
}

uint64_t sub_10008AE64()
{
  if (*(v0 + 596))
  {
    v1 = *(v0 + 588);
    v2 = *(v0 + 128);
    v3 = *(v0 + 96);
    v4 = *(v0 + 104);
    *v2 = [*(v0 + 400) recordID];
    (*(v4 + 104))(v2, v1, v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v0 + 392);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_100092358(0, v6[2] + 1, 1, *(v0 + 392), &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
    }

    v8 = v6[2];
    v7 = v6[3];
    if (v8 >= v7 >> 1)
    {
      v6 = sub_100092358((v7 > 1), v8 + 1, 1, v6, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
    }

    v9 = *(v0 + 416);
    v10 = *(v0 + 400);
    v11 = *(v0 + 128);
    v12 = *(v0 + 96);
    v13 = *(v0 + 104);

    v6[2] = v8 + 1;
    (*(v13 + 32))(v6 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v8, v11, v12);
  }

  else
  {
    v14 = *(v0 + 416);
    v15 = *(v0 + 400);

    v6 = *(v0 + 392);
  }

  v16 = *(v0 + 384);
  v17 = *(v0 + 376) + 1;
  if (v17 != *(v0 + 352))
  {
    while (1)
    {
      *(v0 + 384) = v16;
      *(v0 + 392) = v6;
      *(v0 + 376) = v17;
      v25 = *(v0 + 160);
      v24 = *(v0 + 168);
      v26 = *(v0 + 152);
      (*(v0 + 368))(v24, *(v0 + 344) + ((*(v0 + 584) + 32) & ~*(v0 + 584)) + *(v0 + 360) * v17, v26);
      v27 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
      *(v0 + 400) = v27;
      v28 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
      *(v0 + 408) = v28;
      (*(v25 + 8))(v24, v26);
      *(v0 + 32) = v28;
      type metadata accessor for CKError(0);
      sub_100092BD4(&qword_100128538, 255, type metadata accessor for CKError, &unk_1000E694C);
      _BridgedStoredNSError.code.getter();
      v29 = *(v0 + 40);
      if (v29 <= 13)
      {
        break;
      }

      if (v29 <= 22)
      {
        if (v29 != 14)
        {
          if (v29 != 20)
          {
            goto LABEL_67;
          }

LABEL_29:
          if (qword_100129980 != -1)
          {
            swift_once();
          }

          v30 = type metadata accessor for Logger();
          sub_100066000(v30, qword_100129988);
          v31 = v28;
          v32 = v27;
          v33 = Logger.logObject.getter();
          v34 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            *v35 = 138412546;
            v37 = [v32 recordID];
            *(v35 + 4) = v37;
            *v36 = v37;
            *(v35 + 12) = 2112;
            v38 = v31;
            v39 = _swift_stdlib_bridgeErrorToNSError();
            *(v35 + 14) = v39;
            v36[1] = v39;
            _os_log_impl(&_mh_execute_header, v33, v34, "Retryable error saving %@: %@", v35, 0x16u);
            sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
            swift_arrayDestroy();
          }

          else
          {
          }

          goto LABEL_15;
        }

        v40 = related decl 'e' for CKErrorCode.serverRecord.getter();
        *(v0 + 416) = v40;
        if (v40)
        {
          v99 = *(**(v0 + 64) + 336);
          v111 = (v99 + *v99);
          v100 = v40;
          v101 = swift_task_alloc();
          *(v0 + 424) = v101;
          *v101 = v0;
          v101[1] = sub_10008AD4C;
          v87 = v27;
          v88 = v100;
          v89 = v111;

          return v89(v87, v88);
        }

        if (qword_100129980 != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        sub_100066000(v41, qword_100129988);
        v42 = v28;
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          *v45 = 138412290;
          v47 = v42;
          v48 = _swift_stdlib_bridgeErrorToNSError();
          *(v45 + 4) = v48;
          *v46 = v48;
          _os_log_impl(&_mh_execute_header, v43, v44, "No server record for conflict %@", v45, 0xCu);
          sub_100066C80(v46, &qword_1001287F0, &qword_1000E6C40);

          v49 = v27;
        }

        else
        {
          v49 = v43;
          v43 = v27;
        }
      }

      else
      {
        switch(v29)
        {
          case 23:
            goto LABEL_29;
          case 25:

            break;
          case 26:
            v105 = *(v0 + 592);
            v51 = *(v0 + 80);
            v50 = *(v0 + 88);
            v103 = *(v0 + 72);
            v52 = [v27 recordID];
            v53 = [v52 zoneID];

            v54 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v53];
            *v50 = v54;
            (*(v51 + 104))(v50, v105, v103);
            v106 = v54;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_100092358(0, v16[2] + 1, 1, v16, &qword_100128490, &qword_1000E6420, &type metadata accessor for CKSyncEngine.PendingDatabaseChange);
            }

            v56 = v16[2];
            v55 = v16[3];
            if (v56 >= v55 >> 1)
            {
              v16 = sub_100092358((v55 > 1), v56 + 1, 1, v16, &qword_100128490, &qword_1000E6420, &type metadata accessor for CKSyncEngine.PendingDatabaseChange);
            }

            v104 = *(v0 + 588);
            v57 = *(v0 + 120);
            v58 = *(v0 + 104);
            v102 = *(v0 + 96);
            v60 = *(v0 + 80);
            v59 = *(v0 + 88);
            v61 = *(v0 + 72);
            v16[2] = v56 + 1;
            (*(v60 + 32))(v16 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v56, v59, v61);
            *v57 = [v27 recordID];
            (*(v58 + 104))(v57, v104, v102);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_100092358(0, v6[2] + 1, 1, v6, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
            }

            v63 = v6[2];
            v62 = v6[3];
            if (v63 >= v62 >> 1)
            {
              v6 = sub_100092358((v62 > 1), v63 + 1, 1, v6, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
            }

            v64 = *(v0 + 120);
            v65 = *(v0 + 96);
            v66 = *(v0 + 104);

            v6[2] = v63 + 1;
            (*(v66 + 32))(v6 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v63, v64, v65);
            break;
          default:
            goto LABEL_67;
        }
      }

LABEL_15:
      v17 = *(v0 + 376) + 1;
      if (v17 == *(v0 + 352))
      {
        goto LABEL_9;
      }
    }

    if (v29 <= 5)
    {
      if ((v29 - 3) >= 2)
      {
        goto LABEL_67;
      }
    }

    else if (v29 != 6 && v29 != 9)
    {
      if (v29 == 11)
      {
        v94 = *(**(v0 + 64) + 344);
        v110 = (v94 + *v94);
        v95 = swift_task_alloc();
        *(v0 + 432) = v95;
        *v95 = v0;
        v95[1] = sub_10008BDF0;

        return v110(v27);
      }

LABEL_67:
      v96 = [v27 recordID];
      v97 = [v96 zoneID];
      *(v0 + 440) = v97;

      v98 = swift_task_alloc();
      *(v0 + 448) = v98;
      *v98 = v0;
      v98[1] = sub_10008CE84;

      return sub_10007EEB0(v28, v97);
    }

    goto LABEL_29;
  }

LABEL_9:

  *(v0 + 456) = v16;
  *(v0 + 464) = v6;
  v18 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordDeletes.getter();
  *(v0 + 472) = v18;
  v19 = *(v18 + 32);
  *(v0 + 599) = v19;
  v20 = -1;
  v21 = -1 << v19;
  if (-(-1 << v19) < 64)
  {
    v20 = ~(-1 << -(-1 << v19));
  }

  v22 = v20 & *(v18 + 64);
  if (v22)
  {
    v23 = 0;
LABEL_53:
    *(v0 + 520) = v23;
    *(v0 + 512) = v22;
    v69 = (v23 << 9) | (8 * __clz(__rbit64(v22)));
    v70 = *(*(v18 + 48) + v69);
    *(v0 + 528) = v70;
    v71 = *(*(v18 + 56) + v69);
    *(v0 + 536) = v71;
    v72 = qword_100129980;
    v73 = v70;
    v74 = v71;
    if (v72 != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    sub_100066000(v75, qword_100129988);
    v76 = v73;
    v77 = v74;
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *v80 = 138412546;
      *(v80 + 4) = v76;
      *v81 = v76;
      *(v80 + 12) = 2112;
      v82 = v76;
      v83 = v77;
      v84 = _swift_stdlib_bridgeErrorToNSError();
      *(v80 + 14) = v84;
      v81[1] = v84;
      _os_log_impl(&_mh_execute_header, v78, v79, "Error deleting recordID %@ error: %@", v80, 0x16u);
      sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
      swift_arrayDestroy();
    }

    v85 = *(v0 + 64);

    v108 = (*(*v85 + 312) + **(*v85 + 312));
    v86 = swift_task_alloc();
    *(v0 + 544) = v86;
    *v86 = v0;
    v86[1] = sub_10008E0C4;
    v87 = v76;
    v88 = v77;
    v89 = v108;

    return v89(v87, v88);
  }

  else
  {
    v67 = 0;
    v68 = ((63 - v21) >> 6) - 1;
    while (v68 != v67)
    {
      v23 = v67 + 1;
      v22 = *(v18 + 8 * v67++ + 72);
      if (v22)
      {
        goto LABEL_53;
      }
    }

    v91 = *(v0 + 64);

    v92 = *(*v91 + 192);
    v107 = *v91 + 192;
    *(v0 + 480) = v92;
    *(v0 + 488) = v107 & 0xFFFFFFFFFFFFLL | 0x9F87000000000000;
    v109 = (v92 + *v92);
    v93 = swift_task_alloc();
    *(v0 + 496) = v93;
    *v93 = v0;
    v93[1] = sub_10008DF7C;

    return v109();
  }
}