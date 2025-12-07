uint64_t sub_10037FF50(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 336) = a1;
  *(v4 + 344) = v1;

  v5 = *(v3 + 56);
  if (v1)
  {
    v6 = sub_1003815A4;
  }

  else
  {
    v6 = sub_100380084;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100380084()
{
  v1 = *(v0 + 336);
  v51 = *(v0 + 256);
  v2 = v1 + 64;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);
  v6 = (63 - v4) >> 6;
  v49 = *(v0 + 184);
  v50 = *(v0 + 232);
  v52 = *(v0 + 336);

  v7 = 0;
  v47 = v6;
  v48 = v2;
  while (v5)
  {
LABEL_11:
    v9 = *(v0 + 272);
    v10 = *(v0 + 224);
    v60 = *(v0 + 48);
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = v11 | (v7 << 6);
    v13 = *(v49 + 72);
    (*(v49 + 16))(v9, *(v52 + 48) + v13 * v12, *(v0 + 176));
    v55 = *(v51 + 48);
    v57 = v9;
    v53 = *(v50 + 16);
    v53(v9 + v55, *(v52 + 56) + *(v50 + 72) * v12, v10);
    v14 = v60 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
    v15 = -1;
    do
    {
      if (++v15 == *(v0 + 312))
      {
        v6 = v47;
        v2 = v48;
        goto LABEL_5;
      }

      sub_1000095A8(&qword_1005A91B8, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
      v14 += v13;
    }

    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
    v16 = *(v0 + 320);
    Location.timestamp.getter();
    v6 = v47;
    if (v16 - v17 < 60.0)
    {
      v18 = *(v0 + 272);
      v19 = *(v0 + 248);
      v53(v19, v57 + v55, *(v0 + 224));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100452B70(v19, v18, isUniquelyReferenced_nonNull_native);
    }

    v2 = v48;
LABEL_5:
    sub_100002CE0(*(v0 + 272), &qword_1005B2440, &qword_1004D68C0);
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_11;
    }
  }

  *(v0 + 352) = _swiftEmptyDictionarySingleton;
  *(v0 + 360) = _swiftEmptyDictionarySingleton;
  v21 = *(v0 + 184);
  v22 = *(v21 + 72);
  v58 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = *(v0 + 48) + v58;
  v61 = (v21 + 16);
  v54 = (v21 + 8);
  v24 = (v21 + 32);

  v25 = 0;
  v56 = v22;
  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    (*v61)(*(v0 + 216), v23, *(v0 + 176));
    if (_swiftEmptyDictionarySingleton[2] && (v27 = *(v0 + 216), , sub_1001FD93C(v27), LOBYTE(v27) = v28, , (v27 & 1) != 0))
    {
      (*v54)(*(v0 + 216), *(v0 + 176));
    }

    else
    {
      v29 = *v24;
      (*v24)(*(v0 + 208), *(v0 + 216), *(v0 + 176));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000E8E0(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v31 = _swiftEmptyArrayStorage[2];
      v30 = _swiftEmptyArrayStorage[3];
      if (v31 >= v30 >> 1)
      {
        sub_10000E8E0((v30 > 1), v31 + 1, 1);
      }

      v32 = *(v0 + 208);
      v33 = *(v0 + 176);
      _swiftEmptyArrayStorage[2] = v31 + 1;
      v34 = _swiftEmptyArrayStorage + v58 + v31 * v56;
      v22 = v56;
      v29(v34, v32, v33);
    }

    v23 += v22;
    ++v25;
    if (v26 == *(v0 + 312))
    {

      if (_swiftEmptyArrayStorage[2])
      {
        v35 = *(v0 + 112);
        v36 = *(v0 + 96);
        v37 = *(v0 + 88);
        v59 = *(v0 + 80);
        (*(*(v0 + 128) + 104))(*(v0 + 136), enum case for LocatePriority.live(_:), *(v0 + 120));
        v38 = enum case for LegacyRefreshCommandReason.deepLocate(_:);
        refreshed = type metadata accessor for LegacyRefreshCommandReason();
        v40 = *(refreshed - 8);
        (*(v40 + 104))(v35, v38, refreshed);
        (*(v40 + 56))(v35, 0, 1, refreshed);
        (*(v37 + 104))(v36, enum case for ClientOrigin.other(_:), v59);
        RequestOrigin.init(_:)();
        LocationRequest.init(priority:origin:toHandles:reason:startRefreshingLocation:isCached:)();
        v41 = swift_task_alloc();
        *(v0 + 368) = v41;
        *v41 = v0;
        v41[1] = sub_1003807D0;

        return daemon.getter();
      }

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 134217984;
        *(v44 + 4) = 0x404E000000000000;
        _os_log_impl(&_mh_execute_header, v42, v43, "All cached legacy locations < %fs. Just return cached loactions", v44, 0xCu);
      }

      v45 = *(v0 + 8);

      return v45(_swiftEmptyDictionarySingleton);
    }
  }

LABEL_38:
  __break(1u);
  return daemon.getter();
}

uint64_t sub_1003807D0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 376) = a1;

  v3 = swift_task_alloc();
  *(v2 + 384) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CommandManager(0);
  v6 = sub_1000095A8(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000095A8(&qword_1005A90C8, type metadata accessor for CommandManager, &unk_1004C23F8);
  *v3 = v9;
  v3[1] = sub_1003809AC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003809AC(uint64_t a1)
{
  v4 = *v2;
  v4[49] = a1;
  v4[50] = v1;

  if (v1)
  {
    v5 = v4[7];
    v6 = sub_100381BA0;
  }

  else
  {
    v6 = sub_100380B00;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100380B00()
{
  v1 = v0[49];
  (*(v0[19] + 16))(v0[20], v0[21], v0[18]);
  v2 = OBJC_IVAR____TtC13findmylocated14CommandManager_coalescedCommands;
  swift_beginAccess();
  v3 = *(v1 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v2) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1000295F4(0, v3[2] + 1, 1, v3);
    *(v1 + v2) = v3;
  }

  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    v3 = sub_1000295F4((v5 > 1), v6 + 1, 1, v3);
  }

  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[18];
  v3[2] = v6 + 1;
  (*(v8 + 32))(v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6, v7, v9);
  *(v1 + v2) = v3;
  swift_endAccess();
  v10 = swift_task_alloc();
  v0[51] = v10;
  *v10 = v0;
  v10[1] = sub_100380C90;

  return sub_100034580(1, 0, 0);
}

uint64_t sub_100380C90(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 416) = a1;
  *(v4 + 424) = v1;

  v5 = *(v3 + 56);
  if (v1)
  {
    v6 = sub_100381438;
  }

  else
  {
    v6 = sub_100380DC4;
  }

  return _swift_task_switch(v6, v5, 0);
}

void sub_100380DC4()
{
  v69 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v68 = v4;
    *v3 = 141558275;
    *(v3 + 4) = 1752392040;
    *(v3 + 12) = 2081;
    sub_1000095A8(&qword_1005A91B0, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
    v5 = Dictionary.description.getter();
    v7 = sub_10000D01C(v5, v6, &v68);

    *(v3 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Server returned legacy locations < %{private,mask.hash}s", v3, 0x16u);
    sub_100004984(v4);
  }

  v8 = 0;
  v9 = v0[52];
  v10 = v0[33];
  v65 = v0[32];
  v11 = v0[29];
  v12 = *(v9 + 64);
  v54 = v9 + 64;
  v57 = v11;
  v58 = v9;
  v13 = -1;
  v14 = -1 << *(v9 + 32);
  if (-v14 < 64)
  {
    v13 = ~(-1 << -v14);
  }

  v15 = v13 & v12;
  v16 = (63 - v14) >> 6;
  v62 = (v10 + 56);
  v63 = (v11 + 16);
  v64 = (v11 + 32);
  v60 = (v11 + 8);
  v61 = (v10 + 48);
  v55 = v0[45];
  v56 = v16;
  v59 = v0[44];
LABEL_6:
  v24 = v8;
  if (v15)
  {
    while (1)
    {
      v25 = v24;
LABEL_15:
      v28 = v0[31];
      v29 = v0[28];
      v66 = v0[25];
      v30 = v0[22];
      v31 = v0[23];
      v32 = v0[8];
      v33 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v34 = v33 | (v25 << 6);
      (*(v31 + 16))();
      (*(v57 + 16))(v28, *(v58 + 56) + *(v57 + 72) * v34, v29);
      v35 = *(v65 + 48);
      (*(v31 + 32))(v32, v66, v30);
      (*(v57 + 32))(v32 + v35, v28, v29);
      v36 = 0;
      v27 = v25;
      v16 = v56;
LABEL_16:
      v37 = v0[32];
      v39 = v0[8];
      v38 = v0[9];
      (*v62)(v39, v36, 1, v37);
      sub_100383444(v39, v38);
      if ((*v61)(v38, 1, v37) == 1)
      {
        break;
      }

      v67 = v27;
      v40 = v0[30];
      v41 = v0[28];
      v42 = v0[23];
      v43 = v0[9];
      v44 = v0[6];
      v45 = *(v65 + 48);
      v46 = *(v42 + 32);
      v42 += 32;
      v46(v0[24], v43, v0[22]);
      (*v64)(v40, v43 + v45, v41);
      v47 = v44 + ((*(v42 + 48) + 32) & ~*(v42 + 48));
      v48 = *(v42 + 40);
      v49 = -1;
      while (++v49 != v0[39])
      {
        sub_1000095A8(&qword_1005A91B8, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
        v47 += v48;
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          v18 = v0[30];
          v17 = v0[31];
          v19 = v0[28];
          v20 = v0[23];
          v21 = v0[24];
          v22 = v0[22];
          (*v63)(v17, v18, v19);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v68 = v59;
          sub_100452B70(v17, v21, isUniquelyReferenced_nonNull_native);
          (*v60)(v18, v19);
          (*(v20 + 8))(v21, v22);
          v59 = v68;
          v55 = v68;
          v8 = v67;
          goto LABEL_6;
        }
      }

      v50 = v0[23];
      v51 = v0[24];
      v52 = v0[22];
      (*v60)(v0[30], v0[28]);
      (*(v50 + 8))(v51, v52);
      v24 = v67;
      if (!v15)
      {
        goto LABEL_8;
      }
    }

    (*(v0[19] + 8))(v0[21], v0[18]);

    v53 = v0[1];

    v53(v55);
  }

  else
  {
LABEL_8:
    if (v16 <= v24 + 1)
    {
      v26 = v24 + 1;
    }

    else
    {
      v26 = v16;
    }

    v27 = v26 - 1;
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v16)
      {
        v15 = 0;
        v36 = 1;
        goto LABEL_16;
      }

      v15 = *(v54 + 8 * v25);
      ++v24;
      if (v15)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100381438()
{

  (*(v0[19] + 8))(v0[21], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003815A4()
{
  v43 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[43];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v42 = v5;
    *v4 = 136446210;
    v0[5] = v3;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v42);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Fetch cached server location failed with error: %{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  else
  {
  }

  v0[44] = _swiftEmptyDictionarySingleton;
  v0[45] = _swiftEmptyDictionarySingleton;
  v9 = v0[23];
  v10 = *(v9 + 72);
  v39 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = v0[6] + v39;
  v41 = (v9 + 16);
  v37 = (v9 + 8);
  v12 = (v9 + 32);

  v13 = 0;
  v14 = _swiftEmptyArrayStorage;
  v38 = v10;
  do
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return daemon.getter();
    }

    (*v41)(v0[27], v11, v0[22]);
    if (_swiftEmptyDictionarySingleton[2] && (v16 = v0[27], , sub_1001FD93C(v16), LOBYTE(v16) = v17, , (v16 & 1) != 0))
    {
      (*v37)(v0[27], v0[22]);
    }

    else
    {
      v18 = *v12;
      (*v12)(v0[26], v0[27], v0[22]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10000E8E0(0, v14[2] + 1, 1);
        v14 = v42;
      }

      v21 = v14[2];
      v20 = v14[3];
      if (v21 >= v20 >> 1)
      {
        sub_10000E8E0((v20 > 1), v21 + 1, 1);
        v14 = v42;
      }

      v22 = v0[26];
      v23 = v0[22];
      v14[2] = v21 + 1;
      v24 = v14 + v39 + v21 * v38;
      v10 = v38;
      v18(v24, v22, v23);
    }

    v11 += v10;
    ++v13;
  }

  while (v15 != v0[39]);

  if (v14[2])
  {
    v25 = v0[14];
    v26 = v0[12];
    v27 = v0[11];
    v40 = v0[10];
    (*(v0[16] + 104))(v0[17], enum case for LocatePriority.live(_:), v0[15]);
    v28 = enum case for LegacyRefreshCommandReason.deepLocate(_:);
    refreshed = type metadata accessor for LegacyRefreshCommandReason();
    v30 = *(refreshed - 8);
    (*(v30 + 104))(v25, v28, refreshed);
    (*(v30 + 56))(v25, 0, 1, refreshed);
    (*(v27 + 104))(v26, enum case for ClientOrigin.other(_:), v40);
    RequestOrigin.init(_:)();
    LocationRequest.init(priority:origin:toHandles:reason:startRefreshingLocation:isCached:)();
    v31 = swift_task_alloc();
    v0[46] = v31;
    *v31 = v0;
    v31[1] = sub_1003807D0;

    return daemon.getter();
  }

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = 0x404E000000000000;
    _os_log_impl(&_mh_execute_header, v32, v33, "All cached legacy locations < %fs. Just return cached loactions", v34, 0xCu);
  }

  v35 = v0[1];

  return v35(_swiftEmptyDictionarySingleton);
}

uint64_t sub_100381BA0()
{
  (*(v0[19] + 8))(v0[21], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100381D04(uint64_t a1)
{
  v2 = *(*v1 + 152);
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_100381E38, v2, 0);
}

uint64_t sub_100381E38()
{
  v1 = v0[19];
  v2 = v0[9];
  v3 = OBJC_IVAR____TtC13findmylocated11DataManager_legacyLocationsForHandles;
  swift_beginAccess();
  v0[23] = *(v1 + v3);

  return _swift_task_switch(sub_100381ED8, v2, 0);
}

uint64_t sub_100381ED8()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[18];

  v4 = sub_1003845C4(v2, v3, v1);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_100381FBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10038202C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 216) = a1;
  *(v4 + 224) = v1;

  v5 = *(v3 + 32);
  if (v1)
  {
    v6 = sub_1003824FC;
  }

  else
  {
    v6 = sub_100382160;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100382160()
{
  v1 = *(v0 + 32);
  v19 = OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationTask;
  v20 = v1;
  if (*(v1 + OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationTask))
  {

    Task.cancel()();

    v1 = *(v0 + 32);
  }

  v2 = *(v0 + 232);
  v17 = *(v0 + 144);
  v18 = *(v0 + 152);
  v3 = *(v0 + 128);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 64);
  v7 = *(v0 + 48);
  v16 = *(v0 + 40);
  v8 = *(v0 + 24);
  (*(v0 + 112))(v4, 1, 1, *(v0 + 104));
  v3(v5, v8, v7);
  v9 = (v2 + 32) & ~v2;
  v10 = (v9 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = v17;
  v18(v11 + v9, v5, v7);
  *(v11 + v10) = v1;
  *(v11 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)) = v16;
  swift_retain_n();
  v12 = sub_1001D7F30(0, 0, v4, &unk_1004D6E08, v11);

  *(v20 + v19) = v12;

  v13 = *(v0 + 216);

  v14 = *(v0 + 8);

  return v14(v13);
}

uint64_t sub_100382340()
{
  v13 = v0;
  v1 = v0[25];

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 141558275;
    *(v4 + 4) = 1752392040;
    *(v4 + 12) = 2081;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v12);

    *(v4 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "legacyRefreshLocation call failed: %{private,mask.hash}s", v4, 0x16u);
    sub_100004984(v5);
  }

  v9 = sub_1002087C4(_swiftEmptyArrayStorage);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_1003824FC()
{
  v13 = v0;
  v1 = v0[28];

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 141558275;
    *(v4 + 4) = 1752392040;
    *(v4 + 12) = 2081;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v12);

    *(v4 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "legacyRefreshLocation call failed: %{private,mask.hash}s", v4, 0x16u);
    sub_100004984(v5);
  }

  v9 = sub_1002087C4(_swiftEmptyArrayStorage);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_1003826B8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = *(v4 + 16);
    v6 = sub_10038286C;
  }

  else
  {
    v7 = *(v4 + 16);

    *(v4 + 56) = a1;
    v6 = sub_1003827F8;
    v5 = v7;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003827F8()
{
  sub_1003718C0(*(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10038286C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003828D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = type metadata accessor for LocationRequest();
  v5[4] = v7;
  v5[5] = *(v7 - 8);
  v5[6] = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock();
  v5[7] = v8;
  v5[8] = *(v8 - 8);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_1003829F0, a5, 0);
}

uint64_t sub_1003829F0(uint64_t a1)
{
  static Task<>.checkCancellation()();
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v1 + 80) = v2;
  *v2 = v1;
  v2[1] = sub_100382C58;

  return sub_100291918(0x8155A43676E00000, 6, 0, 0, 1);
}

uint64_t sub_100382C58()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  *(*v1 + 88) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = sub_100383064;
  }

  else
  {
    v7 = sub_100382DE0;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100382DE0()
{
  v22 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005E0B28);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_1000095A8(&qword_1005A9300, &type metadata accessor for LocationRequest, &protocol conformance descriptor for LocationRequest);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_10000D01C(v14, v16, &v21);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Schedule next refresh call request: %{private,mask.hash}s", v12, 0x16u);
    sub_100004984(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = swift_task_alloc();
  v0[12] = v18;
  *v18 = v0;
  v18[1] = sub_100383218;
  v19 = v0[2];

  return sub_100021604(v19);
}

uint64_t sub_100383064()
{
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0B28);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "legacyLocationTask error: %{public}@", v4, 0xCu);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100383218(uint64_t a1)
{
  v4 = *v1;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100383358(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Handle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Friend.handle.getter();
  v6 = static Handle.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t sub_100383444(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B2438, &qword_1004D68B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t *sub_1003834B4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_1003842BC(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_10038356C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (1)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_5;
    }

    v7 = (v5 + 16 * v4);
    v9 = *v7;
    v8 = v7[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v10 = Hasher._finalize()();
    v11 = -1 << *(a2 + 32);
    v12 = v10 & ~v11;
    if ((*(v6 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      break;
    }

LABEL_4:

LABEL_5:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v13 = ~v11;
  while (1)
  {
    v14 = (*(a2 + 48) + 16 * v12);
    v15 = *v14 == v9 && v14[1] == v8;
    if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v6 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

uint64_t sub_1003836B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v110 = a4;
  v105 = a2;
  v103 = type metadata accessor for Location();
  v101 = *(v103 - 8);
  __chkstk_darwin(v103);
  v102 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Handle();
  v111 = *(v7 - 8);
  v112 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v96 - v12;
  __chkstk_darwin(v11);
  v100 = &v96 - v14;
  v15 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  __chkstk_darwin(v15 - 8);
  v17 = &v96 - v16;
  v18 = type metadata accessor for Date();
  v107 = *(v18 - 8);
  v108 = v18;
  v19 = __chkstk_darwin(v18);
  v99 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v104 = &v96 - v22;
  __chkstk_darwin(v21);
  v106 = &v96 - v23;
  v24 = sub_10004B564(&qword_1005A9188, &unk_1004D80D0);
  __chkstk_darwin(v24 - 8);
  v26 = &v96 - v25;
  v27 = type metadata accessor for Friend();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v109 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C1900;
  *(inited + 32) = Handle.identifier.getter();
  *(inited + 40) = v31;
  v32 = Handle.siblingIdentifiers.getter();
  v113 = inited;
  sub_1002492B0(v32);
  v33 = sub_10023F00C(v113);

  LOBYTE(a3) = sub_10038356C(a3, v33);

  if (a3)
  {
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_10000A6F0(v35, qword_1005E0B28);
    v37 = v111;
    v36 = v112;
    (*(v111 + 16))(v10, a1, v112);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v38, v39))
    {

      (*(v37 + 8))(v10, v36);
      return 0;
    }

    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v113 = v41;
    *v40 = 141558275;
    *(v40 + 4) = 1752392040;
    *(v40 + 12) = 2081;
    v42 = Handle.identifier.getter();
    v44 = v43;
    (*(v37 + 8))(v10, v36);
    v45 = sub_10000D01C(v42, v44, &v113);

    *(v40 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v38, v39, "Not sending legacy location for handle: %{private,mask.hash}s\nsince current client is not interested", v40, 0x16u);
    sub_100004984(v41);

LABEL_11:

    return 0;
  }

  __chkstk_darwin(v34);
  *(&v96 - 2) = a1;
  sub_10044FE2C(sub_1003847E8, v110, v26);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_100002CE0(v26, &qword_1005A9188, &unk_1004D80D0);
    v46 = v111;
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_10000A6F0(v47, qword_1005E0B28);
    v48 = v112;
    (*(v46 + 16))(v13, a1, v112);
    v38 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v38, v49))
    {

      (*(v46 + 8))(v13, v48);
      return 0;
    }

    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v113 = v51;
    *v50 = 141558275;
    *(v50 + 4) = 1752392040;
    *(v50 + 12) = 2081;
    v52 = Handle.identifier.getter();
    v54 = v53;
    (*(v46 + 8))(v13, v48);
    v55 = sub_10000D01C(v52, v54, &v113);

    *(v50 + 14) = v55;
    _os_log_impl(&_mh_execute_header, v38, v49, "Not sending legacy location for handle: %{private,mask.hash}s\nsince handle is not following", v50, 0x16u);
    sub_100004984(v51);

    goto LABEL_11;
  }

  v56 = v109;
  (*(v28 + 32))(v109, v26, v27);
  Friend.createdAt.getter();
  v58 = v107;
  v57 = v108;
  if ((*(v107 + 48))(v17, 1, v108) == 1)
  {
    (*(v28 + 8))(v56, v27);
    sub_100002CE0(v17, &unk_1005AE5B0, &qword_1004C32F0);
    return 1;
  }

  v110 = v28;
  v60 = v106;
  (*(v58 + 32))(v106, v17, v57);
  v61 = v104;
  Location.date.getter();
  v62 = static Date.< infix(_:_:)();
  v63 = *(v58 + 8);
  v63(v61, v57);
  if (v62)
  {
    v98 = v63;
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_10000A6F0(v64, qword_1005E0B28);
    v65 = v111;
    v66 = v100;
    v67 = a1;
    v68 = v112;
    (*(v111 + 16))(v100, v67, v112);
    v69 = v99;
    (*(v107 + 16))(v99, v106, v57);
    v71 = v101;
    v70 = v102;
    v72 = v103;
    (*(v101 + 16))(v102, v105, v103);
    v73 = Logger.logObject.getter();
    LODWORD(v107) = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v107))
    {
      v74 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v113 = v105;
      *v74 = 141559299;
      *(v74 + 4) = 1752392040;
      *(v74 + 12) = 2081;
      v97 = v73;
      v75 = Handle.identifier.getter();
      v76 = v71;
      v78 = v77;
      (*(v65 + 8))(v66, v68);
      v79 = sub_10000D01C(v75, v78, &v113);

      *(v74 + 14) = v79;
      *(v74 + 22) = 2160;
      *(v74 + 24) = 1752392040;
      *(v74 + 32) = 2081;
      v80 = Date.localISO8601.getter();
      v82 = v81;
      v83 = v69;
      v84 = v108;
      v85 = v98;
      v98(v83, v108);
      v86 = sub_10000D01C(v80, v82, &v113);

      *(v74 + 34) = v86;
      *(v74 + 42) = 2160;
      *(v74 + 44) = 1752392040;
      *(v74 + 52) = 2081;
      v87 = v104;
      v88 = v102;
      Location.date.getter();
      v89 = Date.localISO8601.getter();
      v91 = v90;
      v85(v87, v84);
      (*(v76 + 8))(v88, v103);
      v92 = sub_10000D01C(v89, v91, &v113);

      *(v74 + 54) = v92;
      v93 = v97;
      _os_log_impl(&_mh_execute_header, v97, v107, "Drop older legacy location for handle: %{private,mask.hash}s\ncreateAt: %{private,mask.hash}s\nlocation timestamp: %{private,mask.hash}s", v74, 0x3Eu);
      swift_arrayDestroy();

      v85(v106, v84);
    }

    else
    {

      (*(v71 + 8))(v70, v72);
      v94 = v108;
      v95 = v98;
      v98(v69, v108);
      (*(v65 + 8))(v66, v68);
      v95(v106, v94);
    }

    (*(v110 + 8))(v109, v27);
    return 0;
  }

  v63(v60, v57);
  (*(v110 + 8))(v109, v27);
  return 1;
}

uint64_t sub_1003842BC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a2;
  v46 = a4;
  v47 = a5;
  v32 = a1;
  v45 = type metadata accessor for Location();
  v6 = *(v45 - 8);
  __chkstk_darwin(v45);
  v43 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for Handle();
  result = __chkstk_darwin(v42);
  v40 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v48 = a3;
  v12 = *(a3 + 64);
  v35 = a3 + 64;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v33 = 0;
  v34 = (v13 + 63) >> 6;
  v38 = v6 + 16;
  v39 = v9 + 16;
  v44 = v6;
  v41 = v9;
  v36 = v9 + 8;
  v37 = v6 + 8;
  v16 = v42;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v49 = (v15 - 1) & v15;
LABEL_11:
    v20 = v17 | (v11 << 6);
    v21 = v48;
    v23 = v40;
    v22 = v41;
    (*(v41 + 16))(v40, v48[6] + *(v41 + 72) * v20, v16);
    v24 = v44;
    v25 = v45;
    v26 = v20;
    v27 = v21[7] + *(v44 + 72) * v20;
    v28 = v43;
    (*(v44 + 16))(v43, v27, v45);
    LOBYTE(v21) = sub_1003836B8(v23, v28, v46, v47);
    (*(v24 + 8))(v28, v25);
    result = (*(v22 + 8))(v23, v16);
    v15 = v49;
    if (v21)
    {
      *(v32 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      if (__OFADD__(v33++, 1))
      {
        __break(1u);
        return sub_10023E060(v32, v31, v33, v48);
      }
    }
  }

  v18 = v11;
  while (1)
  {
    v11 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v11 >= v34)
    {
      return sub_10023E060(v32, v31, v33, v48);
    }

    v19 = *(v35 + 8 * v11);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v49 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003845C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  swift_bridgeObjectRetain_n();
  v11 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v12 = sub_1003834B4(v14, v9, a1, a2, a3);

      goto LABEL_6;
    }
  }

  __chkstk_darwin(v11);
  bzero(&v15 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  v12 = sub_1003842BC((&v15 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)), v9, a1, a2, a3);

  if (v3)
  {
    swift_willThrow();
  }

LABEL_6:

  return v12;
}

uint64_t sub_100384808(uint64_t a1)
{
  v4 = *(type metadata accessor for LocationRequest() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100003690;

  return sub_1003828D0(a1, v6, v7, v1 + v5, v8);
}

void sub_100384940(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v10 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(type metadata accessor for Handle() - 8);
    a2(&v10, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {

      return;
    }
  }
}

uint64_t sub_100384A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v8 - 8);
  v10 = v20 - v9;
  sub_100005F04(a1, v20 - v9, &qword_1005A9690, &qword_1004C2A00);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100002CE0(v10, &qword_1005A9690, &qword_1004C2A00);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = dispatch thunk of Actor.unownedExecutor.getter();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  sub_10004B564(&qword_1005B04E8, &qword_1004D67E0);
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t sub_100384C4C(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v6 = sub_10004B564(&qword_1005AB4B0, &unk_1004C5410);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  v9 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  a3(v8, a2);
  return sub_100002CE0(v8, &qword_1005AB4B0, &unk_1004C5410);
}

uint64_t sub_100384D84(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for ClientID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100384E44, v1, 0);
}

uint64_t sub_100384E44()
{
  v23 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005E0B28);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136446210;
    sub_100016E78(&qword_1005B1F10, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_10000D01C(v14, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "stopRefreshingLocation for all, clientID: %{public}s", v12, 0xCu);
    sub_100004984(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = sub_10035D2B8();
  v0[7] = v18;
  v19 = swift_task_alloc();
  v0[8] = v19;
  *v19 = v0;
  v19[1] = sub_1003850C4;
  v20 = v0[2];

  return sub_10035DEBC(v20, v18);
}

uint64_t sub_1003850C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1003851F0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for ClientOrigin();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  type metadata accessor for RequestOrigin();
  v2[8] = swift_task_alloc();
  sub_10004B564(&qword_1005A92D8, &qword_1004C2898);
  v2[9] = swift_task_alloc();
  Priority = type metadata accessor for LocatePriority();
  v2[10] = Priority;
  v2[11] = *(Priority - 8);
  v2[12] = swift_task_alloc();
  v5 = type metadata accessor for LocationRequest();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v6 = type metadata accessor for Friend();
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();
  v7 = type metadata accessor for Handle();
  v2[20] = v7;
  v2[21] = *(v7 - 8);
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_100385490, v1, 0);
}

uint64_t sub_100385490()
{
  v9 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 184) = sub_10000A6F0(v1, qword_1005E0B28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000032, 0x80000001004E88E0, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = swift_task_alloc();
  *(v0 + 192) = v6;
  *v6 = v0;
  v6[1] = sub_100385640;

  return daemon.getter();
}

uint64_t sub_100385640(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 200) = a1;

  v3 = swift_task_alloc();
  *(v2 + 208) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_100016E78(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100016E78(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_10038581C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10038581C(uint64_t a1)
{
  v4 = *v2;
  v4[27] = a1;
  v4[28] = v1;

  if (v1)
  {
    v5 = v4[4];
    v6 = sub_1003863E8;
  }

  else
  {

    v6 = sub_100385954;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100385954()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v0 + 232) = v4;
  *(v4 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v4 + v3, enum case for HandleType.following(_:), v1);
  v5 = swift_task_alloc();
  *(v0 + 240) = v5;
  *v5 = v0;
  v5[1] = sub_100385AB8;

  return sub_10001C61C(v4, 1);
}

uint64_t sub_100385AB8(uint64_t a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 248) = a1;

  return _swift_task_switch(sub_100385BEC, v2, 0);
}

uint64_t sub_100385BEC()
{
  v50 = v0;
  v1 = v0[31];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[21];
    v4 = v0[18];
    v49 = _swiftEmptyArrayStorage;
    sub_10000E8E0(0, v2, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = *(v4 + 16);
    v4 += 16;
    v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v44 = *(v4 + 56);
    v46 = v6;
    v8 = (v4 - 8);
    do
    {
      v9 = v0[19];
      v10 = v0[17];
      v46(v9, v7, v10);
      Friend.handle.getter();
      (*v8)(v9, v10);
      v49 = v5;
      v12 = v5[2];
      v11 = v5[3];
      if (v12 >= v11 >> 1)
      {
        sub_10000E8E0((v11 > 1), v12 + 1, 1);
        v5 = v49;
      }

      v13 = v0[22];
      v14 = v0[20];
      v5[2] = v12 + 1;
      (*(v3 + 32))(v5 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v13, v14);
      v7 += v44;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
  }

  if (v5[2])
  {
    v15 = v0[16];
    v16 = v0[14];
    v45 = v0[13];
    v47 = v0[15];
    v17 = v0[9];
    v18 = v0[7];
    v20 = v0[5];
    v19 = v0[6];
    (*(v0[11] + 104))(v0[12], enum case for LocatePriority.backgroundProactive(_:), v0[10]);
    refreshed = type metadata accessor for LegacyRefreshCommandReason();
    (*(*(refreshed - 8) + 56))(v17, 1, 1, refreshed);
    (*(v19 + 104))(v18, enum case for ClientOrigin.other(_:), v20);
    RequestOrigin.init(_:)();
    LocationRequest.init(priority:origin:toHandles:reason:startRefreshingLocation:isCached:)();
    (*(v16 + 16))(v47, v15, v45);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v22, v23);
    v26 = v0[14];
    v25 = v0[15];
    v27 = v0[13];
    if (v24)
    {
      v28 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = v48;
      *v28 = 136315138;
      sub_100016E78(&qword_1005A9300, &type metadata accessor for LocationRequest, &protocol conformance descriptor for LocationRequest);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      v32 = *(v26 + 8);
      v32(v25, v27);
      v33 = sub_10000D01C(v29, v31, &v49);

      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v22, v23, "Location Service subscribeToBackgroundProactiveLocations: %s", v28, 0xCu);
      sub_100004984(v48);
    }

    else
    {

      v32 = *(v26 + 8);
      v32(v25, v27);
    }

    v0[32] = v32;
    v41 = swift_task_alloc();
    v0[33] = v41;
    *v41 = v0;
    v41[1] = sub_1003861B0;
    v42 = v0[16];
    v43 = v0[3];

    return sub_100016580(v42, v43);
  }

  else
  {

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v49 = v37;
      *v36 = 136446210;
      *(v36 + 4) = sub_10000D01C(0xD000000000000032, 0x80000001004E88E0, &v49);
      _os_log_impl(&_mh_execute_header, v34, v35, "Unable to %{public}s with empty followings", v36, 0xCu);
      sub_100004984(v37);
    }

    v38 = sub_1002087C4(_swiftEmptyArrayStorage);

    v39 = v0[1];

    return v39(v38);
  }
}

uint64_t sub_1003861B0(uint64_t a1)
{
  v4 = *v2;
  v4[34] = v1;

  v5 = v4[4];
  if (v1)
  {
    v6 = sub_1003864BC;
  }

  else
  {
    v4[35] = a1;
    v6 = sub_1003862EC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003862EC()
{
  v1 = v0[32];
  v2 = v0[16];
  v3 = v0[13];

  v1(v2, v3);
  v4 = v0[35];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1003863E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003864BC()
{
  v15 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[34];
    v4 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD000000000000032, 0x80000001004E88E0, &v14);
    *(v4 + 12) = 2082;
    v0[2] = v3;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v5 = String.init<A>(describing:)();
    v7 = sub_10000D01C(v5, v6, &v14);

    *(v4 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s failed with %{public}s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v8 = v0[32];
  v9 = v0[16];
  v10 = v0[13];
  v11 = sub_1002087C4(_swiftEmptyArrayStorage);

  v8(v9, v10);

  v12 = v0[1];

  return v12(v11);
}

double sub_100386720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v86 = a3;
  v5 = sub_10004B564(&qword_1005B0690, &qword_1004D2018);
  __chkstk_darwin(v5 - 8);
  v82 = &v76 - v6;
  v85 = type metadata accessor for Handle();
  v78 = *(v85 - 8);
  __chkstk_darwin(v85);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Priority = type metadata accessor for LocatePriority();
  v10 = *(Priority - 1);
  __chkstk_darwin(Priority);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ClientID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_10000A6F0(v17, qword_1005E0B28);
  (*(v14 + 16))(v16, a1, v13);
  (*(v10 + 16))(v12, v86, Priority);

  v79 = v18;
  v19 = a2;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v87 = Priority;
  v22 = a1;
  v23 = v21;

  LODWORD(v81) = v23;
  v24 = os_log_type_enabled(v20, v23);
  v83 = v22;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v80 = v20;
    v26 = v25;
    v91[0] = swift_slowAlloc();
    *v26 = 136315650;
    sub_100016E78(&qword_1005B1F10, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
    v77 = v19;
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    (*(v14 + 8))(v16, v13);
    v30 = sub_10000D01C(v27, v29, v91);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    sub_100016E78(&qword_1005B2460, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
    v31 = v87;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    (*(v10 + 8))(v12, v31);
    v35 = sub_10000D01C(v32, v34, v91);

    *(v26 + 14) = v35;
    *(v26 + 22) = 2080;
    v36 = v77;
    v37 = Array.description.getter();
    v39 = sub_10000D01C(v37, v38, v91);

    *(v26 + 24) = v39;
    v40 = v80;
    _os_log_impl(&_mh_execute_header, v80, v81, "Remove legacyLocationSubscriptions: client: %s priority: %s handles: %s", v26, 0x20u);
    swift_arrayDestroy();

    v41 = v86;
  }

  else
  {

    (*(v10 + 8))(v12, v87);
    (*(v14 + 8))(v16, v13);
    v36 = v19;
    v41 = v86;
  }

  v42 = OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationSubscriptions;
  v43 = v84;
  swift_beginAccess();
  v45 = *(v43 + v42);
  if (*(v45 + 16))
  {

    v46 = sub_1001FDF60(v41);
    if (v47)
    {
      v48 = *(v45 + 56) + 24 * v46;
      v50 = *v48;
      v49 = *(v48 + 8);
      v51 = *(v48 + 16);

      v91[0] = v50;
      v91[1] = v49;
      v91[2] = v51;
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.debug.getter();
      v54 = os_log_type_enabled(v52, v53);
      v80 = v51;
      if (v54)
      {
        v55 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v89[0] = v87;
        *v55 = 136315138;

        v56 = sub_100344994(v50, v49, v51);
        v58 = v57;

        v59 = sub_10000D01C(v56, v58, v89);

        *(v55 + 4) = v59;
        _os_log_impl(&_mh_execute_header, v52, v53, "remove legacyLocationSubscriptions: %s", v55, 0xCu);
        sub_100004984(v87);
      }

      v60 = v85;
      v61 = *(v36 + 16);
      if (v61)
      {
        v81 = v49;
        v87 = *(v78 + 16);
        v62 = v36 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
        v63 = *(v78 + 72);
        v64 = (v78 + 8);
        v79 = v8;
        (v87)(v8, v62, v85);
        while (1)
        {
          if (v50[2])
          {
            v68 = sub_1001FD93C(v8);
            if (v69)
            {
              v90 = *(v50[7] + 8 * v68);

              v70 = v82;
              sub_1001AD0DC(v83, v82);
              sub_100002CE0(v70, &qword_1005B0690, &qword_1004D2018);
              v71 = *(v90 + 16);

              if (!v71)
              {
                swift_beginAccess();
                v72 = sub_1001FD93C(v8);
                if (v73)
                {
                  v74 = v72;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v50 = v91[0];
                  v88 = v91[0];
                  if (!isUniquelyReferenced_nonNull_native)
                  {
                    sub_100205330();
                    v50 = v88;
                  }

                  (*v64)(v50[6] + v74 * v63, v85);

                  sub_1002016B4(v74, v50);
                  v91[0] = v50;
                }

                swift_endAccess();
              }

              v65 = v84;
              swift_beginAccess();
              v66 = v81;

              v67 = swift_isUniquelyReferenced_nonNull_native();
              v88 = *(v65 + v42);
              *(v65 + v42) = 0x8000000000000000;
              sub_100454430(v50, v66, v80, v86, v67);
              *(v65 + v42) = v88;
              swift_endAccess();
              v60 = v85;
              v8 = v79;
            }
          }

          (*v64)(v8, v60);
          v62 += v63;
          if (!--v61)
          {
            break;
          }

          (v87)(v8, v62, v60);
        }
      }
    }
  }

  return result;
}

uint64_t sub_100386FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  return _swift_task_switch(sub_100386FD0, v3, 0);
}

uint64_t sub_100386FD0()
{
  v13 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0B28);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v6 = 136446723;
    *(v6 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E88A0, &v12);
    *(v6 + 12) = 2160;
    *(v6 + 14) = 1752392040;
    *(v6 + 22) = 2081;
    *(v6 + 24) = sub_10000D01C(v5, v4, &v12);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s with payload: %{private,mask.hash}s", v6, 0x20u);
    swift_arrayDestroy();
  }

  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_10034A390;
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];

  return sub_1003A809C(v10, v8, v9);
}

uint64_t sub_1003871E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_10004B564(&qword_1005A9188, &unk_1004D80D0);
  v4[6] = swift_task_alloc();
  v5 = type metadata accessor for Friend();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v6 = type metadata accessor for Handle();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_100387384, v3, 0);
}

uint64_t sub_100387384()
{
  v12 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 152) = sub_10000A6F0(v1, qword_1005E0B28);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 141558275;
    *(v4 + 4) = 1752392040;
    *(v4 + 12) = 2081;
    v6 = Array.description.getter();
    v8 = sub_10000D01C(v6, v7, &v11);

    *(v4 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "stopRefreshingLocation for: %{private,mask.hash}s", v4, 0x16u);
    sub_100004984(v5);
  }

  v9 = swift_task_alloc();
  *(v0 + 160) = v9;
  *v9 = v0;
  v9[1] = sub_100387570;

  return daemon.getter();
}

uint64_t sub_100387570(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 168) = a1;

  v3 = swift_task_alloc();
  *(v2 + 176) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_100016E78(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100016E78(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_10038774C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10038774C(uint64_t a1)
{
  v4 = *v2;
  v4[23] = a1;
  v4[24] = v1;

  if (v1)
  {
    v5 = v4[5];
    v6 = sub_100388744;
  }

  else
  {

    v6 = sub_100387884;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100387884()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v0 + 200) = v4;
  *(v4 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v4 + v3, enum case for HandleType.following(_:), v1);
  v5 = swift_task_alloc();
  *(v0 + 208) = v5;
  *v5 = v0;
  v5[1] = sub_1003879E8;

  return sub_10001C61C(v4, 1);
}

uint64_t sub_1003879E8(uint64_t a1)
{
  v2 = *(*v1 + 40);
  *(*v1 + 216) = a1;

  return _swift_task_switch(sub_100387B1C, v2, 0);
}

uint64_t sub_100387B1C()
{
  v1 = v0[2];
  v39 = *(v1 + 16);
  if (v39)
  {
    v2 = 0;
    v38 = v0[27];
    v3 = v0[15];
    v4 = v0[8];
    v5 = *(v3 + 16);
    v3 += 16;
    v37 = v5;
    v36 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v35 = *(v3 + 56);
    v6 = (v3 - 8);
    v44 = (v4 + 8);
    v40 = v4;
    v41 = (v4 + 32);
    v33 = (v4 + 48);
    v34 = (v4 + 56);
    v7 = _swiftEmptyArrayStorage;
    do
    {
      v42 = v7;
      v43 = v2;
      v37(v0[18], v36 + v2 * v35, v0[14]);
      v8 = *(v38 + 16);
      if (v8)
      {
        v9 = v0[27] + ((*(v40 + 80) + 32) & ~*(v40 + 80));
        v10 = *(v40 + 72);
        v11 = *(v40 + 16);
        while (1)
        {
          v12 = v0[17];
          v13 = v0[14];
          v11(v0[12], v9, v0[7]);
          Friend.handle.getter();
          v14 = static Handle.== infix(_:_:)();
          v15 = *v6;
          (*v6)(v12, v13);
          if (v14)
          {
            break;
          }

          (*v44)(v0[12], v0[7]);
          v9 += v10;
          if (!--v8)
          {
            goto LABEL_9;
          }
        }

        v16 = v0[6];
        v17 = v0[7];
        (*v41)(v16, v0[12], v17);
        (*v34)(v16, 0, 1, v17);
      }

      else
      {
LABEL_9:
        (*v34)(v0[6], 1, 1, v0[7]);
        v15 = *v6;
      }

      v19 = v0[6];
      v18 = v0[7];
      v15(v0[18], v0[14]);
      v7 = v42;
      if ((*v33)(v19, 1, v18) == 1)
      {
        sub_100002CE0(v0[6], &qword_1005A9188, &unk_1004D80D0);
      }

      else
      {
        v20 = *v41;
        (*v41)(v0[13], v0[6], v0[7]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1001FCB80(0, v42[2] + 1, 1, v42);
        }

        v22 = v7[2];
        v21 = v7[3];
        if (v22 >= v21 >> 1)
        {
          v7 = sub_1001FCB80((v21 > 1), v22 + 1, 1, v7);
        }

        v23 = v0[13];
        v24 = v0[7];
        v7[2] = v22 + 1;
        v20(v7 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v22, v23, v24);
      }

      v2 = v43 + 1;
    }

    while (v43 + 1 != v39);
    v1 = v0[2];
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v0[28] = v7;
  v25 = v0[4];
  v26 = v0[3];

  sub_100386720(v25, v1, v26);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134217984;
    v30 = *(sub_10002A170() + 2);

    *(v29 + 4) = v30;

    _os_log_impl(&_mh_execute_header, v27, v28, "stopRefreshingLocation LegacyRefresh handle count: %ld", v29, 0xCu);
  }

  else
  {
  }

  v31 = swift_task_alloc();
  v0[29] = v31;
  *v31 = v0;
  v31[1] = sub_100387FA8;

  return sub_100021A68();
}

uint64_t sub_100387FA8(char a1)
{
  v2 = *(*v1 + 40);
  *(*v1 + 264) = a1;

  return _swift_task_switch(sub_1003880C0, v2, 0);
}

void sub_1003880C0()
{
  if ((*(v0 + 264) & 1) == 0)
  {
    v1 = *(v0 + 40);
    v2 = OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationTask;
    if (*(v1 + OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationTask))
    {

      Task.cancel()();
    }

    *(v1 + v2) = 0;

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Cancel next legacy location refresh task", v5, 2u);
    }
  }

  v6 = *(v0 + 224);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = *(v0 + 64);
    v36 = (v9 + 32);
    v32 = *(v6 + 16);
    v34 = *(v0 + 224);
    while (v8 < *(v6 + 16))
    {
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = *(v9 + 72);
      (*(v9 + 16))(*(v0 + 88), *(v0 + 224) + v10 + v11 * v8, *(v0 + 56));
      if (Friend.isSecureLocationCapable.getter())
      {
        v12 = *v36;
        (*v36)(*(v0 + 80), *(v0 + 88), *(v0 + 56));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100239354(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v14 = _swiftEmptyArrayStorage[2];
        v13 = _swiftEmptyArrayStorage[3];
        if (v14 >= v13 >> 1)
        {
          sub_100239354((v13 > 1), v14 + 1, 1);
        }

        v15 = *(v0 + 80);
        v16 = *(v0 + 56);
        _swiftEmptyArrayStorage[2] = v14 + 1;
        v12(_swiftEmptyArrayStorage + v10 + v14 * v11, v15, v16);
        v7 = v32;
        v6 = v34;
      }

      else
      {
        (*(v9 + 8))(*(v0 + 88), *(v0 + 56));
      }

      if (v7 == ++v8)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    v17 = _swiftEmptyArrayStorage[2];
    if (v17)
    {
      v18 = *(v0 + 120);
      v19 = *(v0 + 64);
      sub_10000E8E0(0, v17, 0);
      v20 = *(v19 + 16);
      v19 += 16;
      v21 = _swiftEmptyArrayStorage + ((*(v19 + 64) + 32) & ~*(v19 + 64));
      v33 = *(v19 + 56);
      v35 = v20;
      v22 = (v19 - 8);
      do
      {
        v23 = *(v0 + 72);
        v24 = *(v0 + 56);
        v35(v23, v21, v24);
        Friend.handle.getter();
        (*v22)(v23, v24);
        v26 = _swiftEmptyArrayStorage[2];
        v25 = _swiftEmptyArrayStorage[3];
        if (v26 >= v25 >> 1)
        {
          sub_10000E8E0((v25 > 1), v26 + 1, 1);
        }

        v27 = *(v0 + 128);
        v28 = *(v0 + 112);
        _swiftEmptyArrayStorage[2] = v26 + 1;
        (*(v18 + 32))(_swiftEmptyArrayStorage + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v26, v27, v28);
        v21 += v33;
        --v17;
      }

      while (v17);
    }

    *(v0 + 240) = _swiftEmptyArrayStorage;
    v29 = swift_task_alloc();
    *(v0 + 248) = v29;
    *v29 = v0;
    v29[1] = sub_100388518;
    v30 = *(v0 + 32);
    v31 = *(v0 + 24);

    sub_100356174(_swiftEmptyArrayStorage, v31, v30);
  }
}

uint64_t sub_100388518()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_100388830;
  }

  else
  {
    v4 = sub_100388660;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100388660()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100388744()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100388830()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10038891C()
{
  v1 = *v0;
  v4 = *v0;

  v2 = swift_task_alloc();
  *(v1 + 400) = v2;
  *v2 = v4;
  v2[1] = sub_100016968;

  return daemon.getter();
}

uint64_t sub_100388A48(uint64_t a1)
{
  v2 = *(*v1 + 40);
  *(*v1 + 456) = a1;

  return _swift_task_switch(sub_100388B7C, v2, 0);
}

uint64_t sub_100388B7C(uint64_t a1)
{
  v2 = LocationRequest.toHandles.getter();
  v209 = v1;
  v184 = *(v2 + 16);
  if (v184)
  {
    v3 = 0;
    v182 = v1[57];
    v4 = v1[21];
    v5 = v1[12];
    v6 = *(v4 + 16);
    v4 += 16;
    v180 = v6;
    v178 = v2 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v177 = *(v4 + 56);
    v7 = (v4 - 8);
    v202 = (v5 + 8);
    v186 = v5;
    v189 = (v5 + 32);
    v175 = (v5 + 48);
    v176 = (v5 + 56);
    v8 = _swiftEmptyArrayStorage;
    do
    {
      v194 = v3;
      v198 = v8;
      v180(v1[29], v178 + v3 * v177, v1[20]);
      v9 = *(v182 + 16);
      if (v9)
      {
        v10 = v1[57] + ((*(v186 + 80) + 32) & ~*(v186 + 80));
        v11 = *(v186 + 72);
        v12 = *(v186 + 16);
        while (1)
        {
          v13 = v209[28];
          v14 = v209[20];
          v12(v209[18], v10, v209[11]);
          Friend.handle.getter();
          v15 = static Handle.== infix(_:_:)();
          v16 = *v7;
          v1 = v209;
          (*v7)(v13, v14);
          if (v15)
          {
            break;
          }

          (*v202)(v209[18], v209[11]);
          v10 += v11;
          if (!--v9)
          {
            goto LABEL_9;
          }
        }

        v17 = v209[10];
        v18 = v209[11];
        (*v189)(v17, v209[18], v18);
        (*v176)(v17, 0, 1, v18);
      }

      else
      {
LABEL_9:
        (*v176)(v1[10], 1, 1, v1[11]);
        v16 = *v7;
      }

      v20 = v1[10];
      v19 = v1[11];
      v16(v1[29], v1[20]);
      v8 = v198;
      if ((*v175)(v20, 1, v19) == 1)
      {
        sub_100002CE0(v1[10], &qword_1005A9188, &unk_1004D80D0);
      }

      else
      {
        v21 = *v189;
        (*v189)(v1[19], v1[10], v1[11]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1001FCB80(0, v198[2] + 1, 1, v198);
        }

        v23 = v8[2];
        v22 = v8[3];
        if (v23 >= v22 >> 1)
        {
          v8 = sub_1001FCB80((v22 > 1), v23 + 1, 1, v8);
        }

        v24 = v1[19];
        v25 = v1[11];
        v8[2] = v23 + 1;
        v21(v8 + ((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 72) * v23, v24, v25);
      }

      v3 = v194 + 1;
    }

    while (v194 + 1 != v184);
  }

  else
  {

    v8 = _swiftEmptyArrayStorage;
  }

  v190 = v8[2];
  if (v190)
  {
    v27 = v1[37];
    v26 = v1[38];
    v199 = v8;
    v29 = v1[34];
    v28 = v1[35];
    v30 = v1[12];
    LocationRequest.priority.getter();
    (*(v28 + 104))(v27, enum case for LocatePriority.backgroundProactive(_:), v29);
    sub_100016E78(&qword_1005B0210, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
    v181 = dispatch thunk of static Equatable.== infix(_:_:)();
    v31 = *(v28 + 8);
    v32 = v199;
    v31(v27, v29);
    v183 = v31;
    v33 = (v31)(v26, v29);
    v41 = 0;
    v195 = (v30 + 8);
    v187 = (v30 + 32);
    v42 = _swiftEmptyArrayStorage;
    do
    {
      if (v41 >= *(v32 + 2))
      {
        __break(1u);
        goto LABEL_90;
      }

      v43 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v44 = *(v30 + 72);
      v203 = *(v30 + 16);
      v203(v209[17], &v32[v43 + v44 * v41], v209[11]);
      if (Friend.isSecureLocationCapable.getter())
      {
        v45 = *v187;
        (*v187)(v209[16], v209[17], v209[11]);
        v212 = v42;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100239354(0, v42[2] + 1, 1);
          v42 = v212;
        }

        v47 = v42[2];
        v46 = v42[3];
        if (v47 >= v46 >> 1)
        {
          sub_100239354((v46 > 1), v47 + 1, 1);
          v42 = v212;
        }

        v48 = v209[16];
        v49 = v209[11];
        v42[2] = v47 + 1;
        v33 = v45(v42 + v43 + v47 * v44, v48, v49);
        v32 = v199;
      }

      else
      {
        v33 = (*v195)(v209[17], v209[11]);
      }

      ++v41;
    }

    while (v190 != v41);
    v50 = v42[2];
    if (v50)
    {
      v51 = v209[21];
      v212 = _swiftEmptyArrayStorage;
      sub_10000E8E0(0, v50, 0);
      v52 = _swiftEmptyArrayStorage;
      v179 = v43;
      v53 = v42 + v43;
      do
      {
        v54 = v209[15];
        v55 = v52;
        v56 = v209[11];
        v203(v54, v53, v56);
        Friend.handle.getter();
        v57 = v56;
        v52 = v55;
        (*v195)(v54, v57);
        v212 = v55;
        v58 = v55[2];
        v59 = v52[3];
        if (v58 >= v59 >> 1)
        {
          sub_10000E8E0((v59 > 1), v58 + 1, 1);
          v52 = v212;
        }

        v60 = v209[27];
        v61 = v209[20];
        v52[2] = v58 + 1;
        (*(v51 + 32))(v52 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v58, v60, v61);
        v53 += v44;
        --v50;
      }

      while (v50);
      v185 = v52;

      v32 = v199;
      v43 = v179;
    }

    else
    {

      v185 = _swiftEmptyArrayStorage;
    }

    v67 = 0;
    v68 = &v32[v43];
    v69 = _swiftEmptyArrayStorage;
    while (v67 < *(v32 + 2))
    {
      v203(v209[14], v68, v209[11]);
      if (Friend.isLegacyLocationCapable.getter())
      {
        v70 = *v187;
        (*v187)(v209[13], v209[14], v209[11]);
        v212 = v69;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100239354(0, v69[2] + 1, 1);
          v69 = v212;
        }

        v72 = v69[2];
        v71 = v69[3];
        if (v72 >= v71 >> 1)
        {
          sub_100239354((v71 > 1), v72 + 1, 1);
          v69 = v212;
        }

        v73 = v209[13];
        v74 = v209[11];
        v69[2] = v72 + 1;
        v33 = v70(v69 + v43 + v72 * v44, v73, v74);
        v32 = v199;
      }

      else
      {
        v33 = (*v195)(v209[14], v209[11]);
      }

      ++v67;
      v68 += v44;
      if (v190 == v67)
      {

        v75 = v69[2];
        if (v75)
        {
          v76 = v209;
          v77 = v209[21];
          v212 = _swiftEmptyArrayStorage;
          sub_10000E8E0(0, v75, 0);
          v78 = _swiftEmptyArrayStorage;
          v79 = v69 + v43;
          do
          {
            v80 = v76[15];
            v81 = v76;
            v82 = v78;
            v83 = v81[11];
            v203(v80, v79, v83);
            Friend.handle.getter();
            v84 = v83;
            v78 = v82;
            (*v195)(v80, v84);
            v212 = v82;
            v85 = v82[2];
            v86 = v78[3];
            if (v85 >= v86 >> 1)
            {
              sub_10000E8E0((v86 > 1), v85 + 1, 1);
              v78 = v212;
            }

            v87 = v81[26];
            v88 = v81[20];
            v78[2] = v85 + 1;
            (*(v77 + 32))(v78 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v85, v87, v88);
            v79 += v44;
            --v75;
            v76 = v81;
          }

          while (v75);
        }

        else
        {

          v78 = _swiftEmptyArrayStorage;
          v76 = v209;
        }

        LocationRequest.priority.getter();
        LocationRequest.origin.getter();
        v206 = v78;
        if ((v181 & 1) == 0)
        {
        }

        v89 = v76[46];
        v191 = v76[41];
        v90 = v76[38];
        v196 = v76[39];
        v91 = v76[34];
        v92 = v76[7];
        v93 = v209[3];
        LocationRequest.priority.getter();
        LocatePriority.reason.getter();
        v31(v90, v91);
        refreshed = type metadata accessor for LegacyRefreshCommandReason();
        v95 = *(*(refreshed - 8) + 56);
        v95(v92, 0, 1, refreshed);
        LocationRequest.init(priority:origin:toHandles:reason:startRefreshingLocation:isCached:)();
        LocationRequest.priority.getter();
        LocationRequest.origin.getter();
        v95(v92, 1, 1, refreshed);

        LocationRequest.init(priority:origin:toHandles:reason:startRefreshingLocation:isCached:)();
        v96 = v93;
        v97 = v209;
        v89(v191, v96, v196);
        v98 = Logger.logObject.getter();
        v99 = static os_log_type_t.default.getter();
        v100 = os_log_type_enabled(v98, v99);
        v101 = v209[48];
        v102 = v209[41];
        v103 = v209[39];
        if (v100)
        {
          v104 = v209[38];
          v105 = v209[34];
          v106 = swift_slowAlloc();
          v204 = swift_slowAlloc();
          v212 = v204;
          *v106 = 136446210;
          v200 = v101;
          LocationRequest.priority.getter();
          sub_100016E78(&qword_1005B2460, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
          v107 = dispatch thunk of CustomStringConvertible.description.getter();
          v109 = v108;
          v110 = v104;
          v97 = v209;
          v183(v110, v105);
          v200(v102, v103);
          v111 = sub_10000D01C(v107, v109, &v212);

          *(v106 + 4) = v111;
          _os_log_impl(&_mh_execute_header, v98, v99, "LocationService: Start Refresh Location with priority: %{public}s for", v106, 0xCu);
          sub_100004984(v204);
        }

        else
        {

          v101(v102, v103);
        }

        v112 = Logger.logObject.getter();
        v113 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          *v114 = 134217984;
          v115 = v185[2];

          *(v114 + 4) = v115;

          _os_log_impl(&_mh_execute_header, v112, v113, "LocationService: validSecureLocationHandles count: %ld", v114, 0xCu);
        }

        else
        {
          swift_bridgeObjectRelease_n();
        }

        v116 = Logger.logObject.getter();
        v117 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          *v118 = 134217984;
          v119 = v206[2];

          *(v118 + 4) = v119;

          _os_log_impl(&_mh_execute_header, v116, v117, "LocationService: legacyRefreshHandles count: %ld", v118, 0xCu);
        }

        else
        {
          swift_bridgeObjectRelease_n();
        }

        v33 = LocationRequest.toHandles.getter();
        v120 = v33;
        v121 = *(v33 + 16);
        if (v121)
        {
          v122 = 0;
          v207 = v97[21];
          v201 = (v207 + 8);
          v188 = *(v33 + 16);
          while (v122 < *(v120 + 16))
          {
            v124 = v97[25];
            v125 = v97[23];
            v126 = v97[20];
            v127 = *(v207 + 16);
            v127(v124, v120 + ((*(v207 + 80) + 32) & ~*(v207 + 80)) + *(v207 + 72) * v122, v126);
            v127(v125, v124, v126);
            v128 = Logger.logObject.getter();
            v129 = v97;
            v130 = static os_log_type_t.default.getter();
            v131 = os_log_type_enabled(v128, v130);
            v132 = v129[23];
            v133 = v129[20];
            if (v131)
            {
              v134 = swift_slowAlloc();
              v192 = swift_slowAlloc();
              v212 = v192;
              *v134 = 141558275;
              *(v134 + 4) = 1752392040;
              *(v134 + 12) = 2081;
              sub_100016E78(&qword_1005B02C8, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
              v135 = v120;
              v136 = dispatch thunk of CustomStringConvertible.description.getter();
              v138 = v137;
              v123 = *v201;
              (*v201)(v132, v133);
              v139 = v136;
              v120 = v135;
              v140 = sub_10000D01C(v139, v138, &v212);
              v121 = v188;

              *(v134 + 14) = v140;
              _os_log_impl(&_mh_execute_header, v128, v130, "LocationService: legacy location Request for: %{private,mask.hash}s", v134, 0x16u);
              sub_100004984(v192);
            }

            else
            {

              v123 = *v201;
              (*v201)(v132, v133);
            }

            ++v122;
            v97 = v209;
            v33 = (v123)(v209[25], v209[20]);
            if (v121 == v122)
            {
              goto LABEL_77;
            }
          }

          goto LABEL_91;
        }

LABEL_77:

        v33 = LocationRequest.toHandles.getter();
        v141 = v33;
        v142 = *(v33 + 16);
        if (!v142)
        {
LABEL_84:

          if ((v181 & 1) == 0)
          {
            v162 = v97[38];
            v163 = v97[34];
            v164 = v97[4];
            v165 = LocationRequest.toHandles.getter();
            LocationRequest.priority.getter();
            sub_10038A6B4(v164, v165, v162);

            v183(v162, v163);
          }

          v167 = v97[42];
          v166 = v97[43];
          v168 = v97[5];
          v169 = v97[6];
          v170 = v97[4];
          v171 = sub_10004B564(&qword_1005B04E8, &qword_1004D67E0);
          v172 = sub_100016E78(&qword_1005B23E0, type metadata accessor for LocationService, &unk_1004D6610);
          v173 = swift_task_alloc();
          v97[58] = v173;
          v173[2] = v166;
          v173[3] = v168;
          v173[4] = v167;
          v173[5] = v170;
          v173[6] = v169;
          v174 = swift_task_alloc();
          v97[59] = v174;
          *v174 = v97;
          v174[1] = sub_10038A1B8;
          v38 = &unk_1004D7098;
          v33 = (v97 + 2);
          v34 = v171;
          v35 = v171;
          v36 = v168;
          v37 = v172;
          v39 = v173;
          v40 = v171;

          return withTaskGroup<A, B>(of:returning:isolation:body:)(v33, v34, v35, v36, v37, v38, v39, v40);
        }

        v143 = 0;
        v205 = v97[21];
        v208 = (v205 + 8);
        v193 = *(v33 + 16);
        while (v143 < *(v141 + 16))
        {
          v145 = v97[24];
          v146 = v97[22];
          v147 = v97[20];
          v148 = *(v205 + 16);
          v148(v145, v141 + ((*(v205 + 80) + 32) & ~*(v205 + 80)) + *(v205 + 72) * v143, v147);
          v148(v146, v145, v147);
          v149 = Logger.logObject.getter();
          v150 = v97;
          v151 = static os_log_type_t.default.getter();
          v152 = os_log_type_enabled(v149, v151);
          v153 = v150[22];
          v154 = v150[20];
          if (v152)
          {
            v155 = swift_slowAlloc();
            v197 = swift_slowAlloc();
            v212 = v197;
            *v155 = 141558275;
            *(v155 + 4) = 1752392040;
            *(v155 + 12) = 2081;
            sub_100016E78(&qword_1005B02C8, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
            v156 = v141;
            v157 = dispatch thunk of CustomStringConvertible.description.getter();
            v159 = v158;
            v144 = *v208;
            (*v208)(v153, v154);
            v160 = v157;
            v141 = v156;
            v161 = sub_10000D01C(v160, v159, &v212);
            v142 = v193;

            *(v155 + 14) = v161;
            _os_log_impl(&_mh_execute_header, v149, v151, "LocationService: secure location Request for: %{private,mask.hash}s", v155, 0x16u);
            sub_100004984(v197);
          }

          else
          {

            v144 = *v208;
            (*v208)(v153, v154);
          }

          ++v143;
          v97 = v209;
          v33 = (v144)(v209[24], v209[20]);
          if (v142 == v143)
          {
            goto LABEL_84;
          }
        }

        goto LABEL_92;
      }
    }

LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    return withTaskGroup<A, B>(of:returning:isolation:body:)(v33, v34, v35, v36, v37, v38, v39, v40);
  }

  else
  {

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "Start Refresh Location with empty handles", v64, 2u);
    }

    v210 = sub_1002087C4(_swiftEmptyArrayStorage);

    v65 = v1[1];

    return v65(v210);
  }
}

uint64_t sub_10038A1B8()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_10038A2E4, v1, 0);
}

uint64_t sub_10038A2E4()
{
  v1 = v0[48];
  v2 = v0[42];
  v3 = v0[43];
  v4 = v0[39];

  v7 = v0[2];
  v1(v2, v4);
  v1(v3, v4);

  v5 = v0[1];

  return v5(v7);
}

uint64_t sub_10038A4EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10038A6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = a3;
  v5 = type metadata accessor for Handle();
  v87 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v76 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v69 - v8;
  Priority = type metadata accessor for LocatePriority();
  v10 = *(Priority - 1);
  __chkstk_darwin(Priority);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for ClientID();
  v13 = *(v85 - 8);
  v14 = __chkstk_darwin(v85);
  v84 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v81 = &v69 - v17;
  __chkstk_darwin(v16);
  v19 = &v69 - v18;
  if (qword_1005A84C8 != -1)
  {
LABEL_23:
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000A6F0(v20, qword_1005E0B28);
  isa = v13[2].isa;
  v83 = v13 + 2;
  isa(v19, a1, v85);
  (*(v10 + 16))(v12, v75, Priority);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  LODWORD(v77) = v22;
  v78 = v21;
  v23 = os_log_type_enabled(v21, v22);
  v79 = a2;
  v73 = v13;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v90[0] = v71;
    *v24 = 136315650;
    sub_100016E78(&qword_1005B1F10, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
    v25 = v85;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v72 = v9;
    v27 = a1;
    v29 = v28;
    v30 = v13[1].isa;
    v31 = v25;
    v80 = v30;
    v30(v19, v25);
    v32 = sub_10000D01C(v26, v29, v90);
    a1 = v27;

    *(v24 + 4) = v32;
    *(v24 + 12) = 2080;
    sub_100016E78(&qword_1005B2460, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
    v33 = Priority;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    (*(v10 + 8))(v12, v33);
    v37 = sub_10000D01C(v34, v36, v90);

    *(v24 + 14) = v37;
    *(v24 + 22) = 2080;
    v9 = v72;
    v38 = Array.description.getter();
    v40 = sub_10000D01C(v38, v39, v90);

    *(v24 + 24) = v40;
    v41 = v78;
    _os_log_impl(&_mh_execute_header, v78, v77, "Track new legacyLocationSubscriptions: client: %s priority: %s handles: %s", v24, 0x20u);
    swift_arrayDestroy();

    v42 = v75;

    v12 = v31;
  }

  else
  {

    (*(v10 + 8))(v12, Priority);
    v12 = v85;
    v80 = v13[1].isa;
    v80(v19, v85);
    v42 = v75;
  }

  v43 = OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationSubscriptions;
  v44 = v74;
  v45 = swift_beginAccess();
  v46 = *(v44 + v43);
  v47 = v84;
  if (!*(v46 + 16))
  {
    goto LABEL_19;
  }

  v48 = sub_1001FDF60(v42);
  if ((v49 & 1) == 0)
  {

LABEL_19:
    __chkstk_darwin(v45);
    *(&v69 - 2) = a1;
    sub_100384940(_swiftEmptyDictionarySingleton, sub_10037DC20, (&v69 - 4), v79);
    v63 = v42;
    v10 = v64;
    v65 = 0;
    v66 = 0;
LABEL_21:
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v88 = *(v44 + v43);
    *(v44 + v43) = 0x8000000000000000;
    sub_100454430(v10, v65, v66, v63, isUniquelyReferenced_nonNull_native);
    *(v44 + v43) = v88;
    swift_endAccess();
  }

  v72 = v43;
  v50 = (*(v46 + 56) + 24 * v48);
  v10 = *v50;
  v51 = v50[1];
  v70 = v50[2];
  v71 = v51;

  v13 = *(v79 + 16);
  if (!v13)
  {
LABEL_20:
    v65 = v71;

    v44 = v74;
    v63 = v75;
    v43 = v72;
    v66 = v70;
    goto LABEL_21;
  }

  Priority = *(v87 + 16);
  a2 = v79 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
  v79 = *(v87 + 72);
  v87 += 16;
  v77 = (v87 - 8);
  v78 = v73 + 1;
  while (1)
  {
    v54 = v5;
    (Priority)(v9, a2, v5);
    v5 = a1;
    isa(v47, a1, v12);
    a1 = swift_isUniquelyReferenced_nonNull_native();
    v89 = v10;
    v19 = sub_1001FD93C(v9);
    v56 = *(v10 + 16);
    v57 = (v55 & 1) == 0;
    v58 = v56 + v57;
    if (__OFADD__(v56, v57))
    {
      __break(1u);
      goto LABEL_23;
    }

    v59 = v55;
    if (*(v10 + 24) >= v58)
    {
      if ((a1 & 1) == 0)
      {
        sub_100205330();
        v10 = v89;
      }

      goto LABEL_16;
    }

    sub_100231874(v58, a1);
    v10 = v89;
    v60 = sub_1001FD93C(v9);
    if ((v59 & 1) != (v61 & 1))
    {
      break;
    }

    v19 = v60;
LABEL_16:
    a1 = v5;
    v5 = v54;
    if ((v59 & 1) == 0)
    {
      v62 = v76;
      (Priority)(v76, v9, v54);
      sub_100234290(v19, v62, &_swiftEmptySetSingleton, v10);
    }

    v52 = v81;
    v47 = v84;
    sub_10002F5B4(v81, v84);
    v53 = v52;
    v12 = v85;
    v80(v53, v85);
    (*v77)(v9, v54);
    a2 += v79;
    v13 = (v13 - 1);
    if (!v13)
    {
      goto LABEL_20;
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10038AF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  v9 = type metadata accessor for Location();
  v7[11] = v9;
  v7[12] = *(v9 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v10 = type metadata accessor for Handle();
  v7[15] = v10;
  v7[16] = *(v10 - 8);
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  sub_10004B564(&qword_1005B2438, &qword_1004D68B0);
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  sub_10004B564(&qword_1005B2480, &qword_1004D69F0);
  v7[21] = swift_task_alloc();
  v11 = sub_10004B564(&qword_1005B2488, &qword_1004D69F8);
  v7[22] = v11;
  v7[23] = *(v11 - 8);
  v7[24] = swift_task_alloc();
  v12 = type metadata accessor for ClientID();
  v7[25] = v12;
  v13 = *(v12 - 8);
  v7[26] = v13;
  v7[27] = *(v13 + 64);
  v7[28] = swift_task_alloc();
  v14 = type metadata accessor for LocationRequest();
  v7[29] = v14;
  v15 = *(v14 - 8);
  v7[30] = v15;
  v7[31] = *(v15 + 64);
  v7[32] = swift_task_alloc();
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v7[33] = swift_task_alloc();

  return _swift_task_switch(sub_10038B2A4, a4, 0);
}

uint64_t sub_10038B2A4()
{
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[29];
  v25 = v0[28];
  v26 = v0[27];
  v21 = v0[26];
  v24 = v0[25];
  v27 = v0[10];
  v22 = v0[8];
  v23 = v0[9];
  v6 = v0[6];
  v28 = v0[7];
  v7 = type metadata accessor for TaskPriority();
  v18 = *(*(v7 - 8) + 56);
  v18(v1, 1, 1, v7);
  v17 = *(v4 + 16);
  v17(v2, v6, v5);
  v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = (v3 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  v19 = *(v4 + 32);
  v19(v9 + v20, v2, v5);
  *(v9 + v8) = v28;

  sub_100384A24(v1, &unk_1004D70A8, v9);
  sub_100002CE0(v1, &qword_1005A9690, &qword_1004C2A00);
  v18(v1, 1, 1, v7);
  v17(v2, v22, v5);
  (*(v21 + 16))(v25, v23, v24);
  v10 = (v8 + 8 + *(v21 + 80)) & ~*(v21 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  v19(v11 + v20, v2, v5);
  *(v11 + v8) = v28;
  (*(v21 + 32))(v11 + v10, v25, v24);
  *(v11 + ((v26 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;

  sub_100384A24(v1, &unk_1004D70B8, v11);
  sub_100002CE0(v1, &qword_1005A9690, &qword_1004C2A00);
  sub_10004B564(&qword_1005B04E8, &qword_1004D67E0);
  TaskGroup.makeAsyncIterator()();
  v12 = sub_100016E78(&qword_1005B23E0, type metadata accessor for LocationService, &unk_1004D6610);
  v0[34] = v12;
  v0[35] = _swiftEmptyDictionarySingleton;
  v13 = v0[7];
  v14 = swift_task_alloc();
  v0[36] = v14;
  *v14 = v0;
  v14[1] = sub_10002086C;
  v15 = v0[22];

  return TaskGroup.Iterator.next(isolation:)(v0 + 2, v13, v12, v15);
}

uint64_t sub_10038B66C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10038B77C(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_10038B87C, 0, 0);
}

uint64_t sub_10038B87C()
{
  v0[2] = v0[5];
  sub_10004B564(&qword_1005B2510, &qword_1004D70C0);
  CheckedContinuation.resume(returning:)();
  v1 = v0[1];

  return v1();
}

uint64_t sub_10038B908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a4;
  return _swift_task_switch(sub_10038B92C, 0, 0);
}

uint64_t sub_10038B92C(uint64_t a1)
{
  v2 = *(LocationRequest.toHandles.getter() + 16);

  if (v2)
  {
    v3 = swift_task_alloc();
    *(v1 + 56) = v3;
    *v3 = v1;
    v3[1] = sub_10038BA1C;
    v4 = *(v1 + 48);
    v5 = *(v1 + 32);

    return sub_100352198(v5, v4);
  }

  else
  {
    **(v1 + 24) = sub_1002087C4(_swiftEmptyArrayStorage);
    v7 = *(v1 + 8);

    return v7();
  }
}

uint64_t sub_10038BA1C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_10038BB64;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_10038BB44;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10038BB64()
{
  v14 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0B28);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 64);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    *(v0 + 16) = v4;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Encrypted location refresh failed with %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  v10 = sub_1002087C4(_swiftEmptyArrayStorage);

  **(v0 + 24) = v10;
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10038BD40(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  sub_10004B564(&qword_1005A9188, &unk_1004D80D0);
  v3[7] = swift_task_alloc();
  v4 = type metadata accessor for Friend();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v5 = type metadata accessor for Handle();
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return _swift_task_switch(sub_10038BF2C, v2, 0);
}

uint64_t sub_10038BF2C()
{
  v11 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 184) = sub_10000A6F0(v1, qword_1005E0B28);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v4 = 136446723;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E88C0, &v10);
    *(v4 + 12) = 2160;
    *(v4 + 14) = 1752392040;
    *(v4 + 22) = 2081;
    v5 = Array.description.getter();
    v7 = sub_10000D01C(v5, v6, &v10);

    *(v4 + 24) = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s handles: %{private,mask.hash}s", v4, 0x20u);
    swift_arrayDestroy();
  }

  v8 = swift_task_alloc();
  *(v0 + 192) = v8;
  *v8 = v0;
  v8[1] = sub_10038C154;

  return daemon.getter();
}

uint64_t sub_10038C154(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 200) = a1;

  v3 = swift_task_alloc();
  *(v2 + 208) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_100016E78(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100016E78(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_10038C330;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10038C330(uint64_t a1)
{
  v4 = *v2;
  v4[27] = a1;
  v4[28] = v1;

  if (v1)
  {
    v5 = v4[5];
    v6 = sub_10038D61C;
  }

  else
  {

    v6 = sub_10038C468;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10038C468()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v0 + 232) = v4;
  *(v4 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v4 + v3, enum case for HandleType.following(_:), v1);
  v5 = swift_task_alloc();
  *(v0 + 240) = v5;
  *v5 = v0;
  v5[1] = sub_10038C5CC;

  return sub_10001C61C(v4, 1);
}

uint64_t sub_10038C5CC(uint64_t a1)
{
  v2 = *(*v1 + 40);
  *(*v1 + 248) = a1;

  return _swift_task_switch(sub_10038C700, v2, 0);
}

uint64_t sub_10038C700()
{
  v1 = v0[3];
  v100 = *(v1 + 16);
  if (v100)
  {
    v2 = 0;
    v98 = v0[31];
    v3 = v0[18];
    v4 = v0[9];
    v5 = *(v3 + 16);
    v3 += 16;
    v97 = v5;
    v96 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v95 = *(v3 + 56);
    v6 = (v3 - 8);
    v110 = (v4 + 8);
    v102 = v4;
    v104 = (v4 + 32);
    v93 = (v4 + 48);
    v94 = (v4 + 56);
    v7 = _swiftEmptyArrayStorage;
    do
    {
      v106 = v2;
      v108 = v7;
      v97(v0[22], v96 + v2 * v95, v0[17]);
      v8 = *(v98 + 16);
      if (v8)
      {
        v9 = v0[31] + ((*(v102 + 80) + 32) & ~*(v102 + 80));
        v10 = *(v102 + 72);
        v11 = *(v102 + 16);
        while (1)
        {
          v12 = v0[21];
          v13 = v0[17];
          v11(v0[15], v9, v0[8]);
          Friend.handle.getter();
          v14 = static Handle.== infix(_:_:)();
          v15 = *v6;
          (*v6)(v12, v13);
          if (v14)
          {
            break;
          }

          (*v110)(v0[15], v0[8]);
          v9 += v10;
          if (!--v8)
          {
            goto LABEL_9;
          }
        }

        v16 = v0[7];
        v17 = v0[8];
        (*v104)(v16, v0[15], v17);
        (*v94)(v16, 0, 1, v17);
      }

      else
      {
LABEL_9:
        (*v94)(v0[7], 1, 1, v0[8]);
        v15 = *v6;
      }

      v19 = v0[7];
      v18 = v0[8];
      v15(v0[22], v0[17]);
      v7 = v108;
      if ((*v93)(v19, 1, v18) == 1)
      {
        sub_100002CE0(v0[7], &qword_1005A9188, &unk_1004D80D0);
      }

      else
      {
        v20 = *v104;
        (*v104)(v0[16], v0[7], v0[8]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1001FCB80(0, v108[2] + 1, 1, v108);
        }

        v22 = v7[2];
        v21 = v7[3];
        if (v22 >= v21 >> 1)
        {
          v7 = sub_1001FCB80((v21 > 1), v22 + 1, 1, v7);
        }

        v23 = v0[16];
        v24 = v0[8];
        v7[2] = v22 + 1;
        v20(v7 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v22, v23, v24);
      }

      v2 = v106 + 1;
    }

    while (v106 + 1 != v100);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v103 = v7[2];
  if (v103)
  {
    v33 = 0;
    v34 = v0[9];
    v107 = (v34 + 8);
    v101 = (v34 + 32);
    v35 = _swiftEmptyArrayStorage;
    v109 = v7;
    do
    {
      if (v33 >= v7[2])
      {
        __break(1u);
        goto LABEL_64;
      }

      v105 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v36 = *(v34 + 72);
      v111 = *(v34 + 16);
      v111(v0[14], v7 + v105 + v36 * v33, v0[8]);
      if (Friend.isSecureLocationCapable.getter())
      {
        v37 = *v101;
        (*v101)(v0[13], v0[14], v0[8]);
        v114 = v35;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100239354(0, v35[2] + 1, 1);
          v35 = v114;
        }

        v39 = v35[2];
        v38 = v35[3];
        if (v39 >= v38 >> 1)
        {
          sub_100239354((v38 > 1), v39 + 1, 1);
          v35 = v114;
        }

        v40 = v0[13];
        v41 = v0[8];
        v35[2] = v39 + 1;
        v25 = v37(v35 + v105 + v39 * v36, v40, v41);
        v7 = v109;
      }

      else
      {
        v25 = (*v107)(v0[14], v0[8]);
      }

      ++v33;
    }

    while (v103 != v33);
    v42 = v35[2];
    if (v42)
    {
      v43 = v0[18];
      v114 = _swiftEmptyArrayStorage;
      sub_10000E8E0(0, v42, 0);
      v44 = _swiftEmptyArrayStorage;
      v45 = v35 + v105;
      do
      {
        v46 = v0[12];
        v47 = v0[8];
        v111(v46, v45, v47);
        Friend.handle.getter();
        (*v107)(v46, v47);
        v114 = v44;
        v49 = v44[2];
        v48 = v44[3];
        if (v49 >= v48 >> 1)
        {
          sub_10000E8E0((v48 > 1), v49 + 1, 1);
          v44 = v114;
        }

        v50 = v0[20];
        v51 = v0[17];
        v44[2] = v49 + 1;
        (*(v43 + 32))(v44 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v49, v50, v51);
        v45 += v36;
        --v42;
      }

      while (v42);

      v7 = v109;
    }

    else
    {

      v44 = _swiftEmptyArrayStorage;
    }

    v58 = 0;
    v99 = v44;
    v0[32] = v44;
    v59 = v7 + v105;
    v60 = _swiftEmptyArrayStorage;
    while (v58 < v7[2])
    {
      v111(v0[11], v59, v0[8]);
      if (Friend.isLegacyLocationCapable.getter())
      {
        v61 = *v101;
        (*v101)(v0[10], v0[11], v0[8]);
        v114 = v60;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100239354(0, v60[2] + 1, 1);
          v60 = v114;
        }

        v63 = v60[2];
        v62 = v60[3];
        if (v63 >= v62 >> 1)
        {
          sub_100239354((v62 > 1), v63 + 1, 1);
          v60 = v114;
        }

        v64 = v0[10];
        v65 = v0[8];
        v60[2] = v63 + 1;
        v25 = v61(v60 + v105 + v63 * v36, v64, v65);
        v7 = v109;
      }

      else
      {
        v25 = (*v107)(v0[11], v0[8]);
      }

      ++v58;
      v59 += v36;
      if (v103 == v58)
      {

        v66 = v60[2];
        if (v66)
        {
          v67 = v0[18];
          v114 = _swiftEmptyArrayStorage;
          sub_10000E8E0(0, v66, 0);
          v68 = _swiftEmptyArrayStorage;
          v69 = v60 + v105;
          do
          {
            v70 = v0[12];
            v71 = v0[8];
            v111(v70, v69, v71);
            Friend.handle.getter();
            (*v107)(v70, v71);
            v114 = v68;
            v73 = v68[2];
            v72 = v68[3];
            if (v73 >= v72 >> 1)
            {
              sub_10000E8E0((v72 > 1), v73 + 1, 1);
              v68 = v114;
            }

            v74 = v0[19];
            v75 = v0[17];
            v68[2] = v73 + 1;
            (*(v67 + 32))(v68 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v73, v74, v75);
            v69 += v36;
            --v66;
          }

          while (v66);
        }

        else
        {

          v68 = _swiftEmptyArrayStorage;
        }

        v0[33] = v68;

        v76 = v99;

        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          *v79 = 136447235;
          *(v79 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E88C0, &v114);
          *(v79 + 12) = 2160;
          *(v79 + 14) = 1752392040;
          *(v79 + 22) = 2081;
          v80 = Array.description.getter();
          v82 = sub_10000D01C(v80, v81, &v114);

          *(v79 + 24) = v82;
          v76 = v99;
          *(v79 + 32) = 2160;
          *(v79 + 34) = 1752392040;
          *(v79 + 42) = 2081;
          v83 = Array.description.getter();
          v85 = sub_10000D01C(v83, v84, &v114);

          *(v79 + 44) = v85;
          _os_log_impl(&_mh_execute_header, v77, v78, "%{public}s\nlegacy location handles: %{private,mask.hash}s\nsecure location request: %{private,mask.hash}s", v79, 0x34u);
          swift_arrayDestroy();
        }

        v86 = v0[5];
        v87 = v0[6];
        v88 = v0[4];
        v89 = sub_10004B564(&qword_1005B04E8, &qword_1004D67E0);
        v90 = sub_100016E78(&qword_1005B23E0, type metadata accessor for LocationService, &unk_1004D6610);
        v91 = swift_task_alloc();
        v0[34] = v91;
        v91[2] = v68;
        v91[3] = v86;
        v91[4] = v76;
        v91[5] = v88;
        v91[6] = v87;
        v92 = swift_task_alloc();
        v0[35] = v92;
        *v92 = v0;
        v92[1] = sub_10038D3A4;
        v30 = &unk_1004D7050;
        v25 = (v0 + 2);
        v26 = v89;
        v27 = v89;
        v28 = v86;
        v29 = v90;
        v31 = v91;
        v32 = v89;

        return withTaskGroup<A, B>(of:returning:isolation:body:)(v25, v26, v27, v28, v29, v30, v31, v32);
      }
    }

LABEL_64:
    __break(1u);
    return withTaskGroup<A, B>(of:returning:isolation:body:)(v25, v26, v27, v28, v29, v30, v31, v32);
  }

  else
  {

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v114 = v55;
      *v54 = 136446210;
      *(v54 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E88C0, &v114);
      _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s no valid friend currently sharing locations with me yet", v54, 0xCu);
      sub_100004984(v55);
    }

    v112 = sub_1002087C4(_swiftEmptyArrayStorage);

    v56 = v0[1];

    return v56(v112);
  }
}

uint64_t sub_10038D3A4()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_10038D510, v1, 0);
}

uint64_t sub_10038D510()
{

  v3 = *(v0 + 16);

  v1 = *(v0 + 8);

  return v1(v3);
}

uint64_t sub_10038D61C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10038D724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  v9 = type metadata accessor for Location();
  v7[11] = v9;
  v7[12] = *(v9 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v10 = type metadata accessor for Handle();
  v7[15] = v10;
  v7[16] = *(v10 - 8);
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  sub_10004B564(&qword_1005B2438, &qword_1004D68B0);
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  sub_10004B564(&qword_1005B2480, &qword_1004D69F0);
  v7[21] = swift_task_alloc();
  v11 = sub_10004B564(&qword_1005B2488, &qword_1004D69F8);
  v7[22] = v11;
  v7[23] = *(v11 - 8);
  v7[24] = swift_task_alloc();
  v12 = type metadata accessor for ClientID();
  v7[25] = v12;
  v13 = *(v12 - 8);
  v7[26] = v13;
  v7[27] = *(v13 + 64);
  v7[28] = swift_task_alloc();
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v7[29] = swift_task_alloc();

  return _swift_task_switch(sub_10038D9E8, a4, 0);
}

uint64_t sub_10038D9E8()
{
  v1 = v0[29];
  v2 = v0[26];
  v19 = v0[28];
  v20 = v0[27];
  v3 = v0[10];
  v16 = v3;
  v17 = v0[9];
  v18 = v0[25];
  v4 = v0[7];
  v21 = v0[8];
  v5 = v0[6];
  v6 = type metadata accessor for TaskPriority();
  v15 = *(*(v6 - 8) + 56);
  v15(v1, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;
  v7[5] = v4;
  v7[6] = v3;

  sub_100384A24(v1, &unk_1004D7060, v7);
  sub_100002CE0(v1, &qword_1005A9690, &qword_1004C2A00);
  v15(v1, 1, 1, v6);
  (*(v2 + 16))(v19, v17, v18);
  v8 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 4) = v21;
  *(v9 + 5) = v4;
  (*(v2 + 32))(&v9[v8], v19, v18);
  *&v9[(v20 + v8 + 7) & 0xFFFFFFFFFFFFFFF8] = v16;

  sub_100384A24(v1, &unk_1004D7070, v9);
  sub_100002CE0(v1, &qword_1005A9690, &qword_1004C2A00);
  sub_10004B564(&qword_1005B04E8, &qword_1004D67E0);
  TaskGroup.makeAsyncIterator()();
  v10 = sub_100016E78(&qword_1005B23E0, type metadata accessor for LocationService, &unk_1004D6610);
  v0[30] = v10;
  v0[31] = _swiftEmptyDictionarySingleton;
  v11 = v0[7];
  v12 = swift_task_alloc();
  v0[32] = v12;
  *v12 = v0;
  v12[1] = sub_10038DCFC;
  v13 = v0[22];

  return TaskGroup.Iterator.next(isolation:)(v0 + 2, v11, v10, v13);
}

uint64_t sub_10038DCFC()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_10038DE0C, v1, 0);
}

uint64_t sub_10038DE0C()
{
  v1 = v0[2];
  v2 = v0[31];
  if (v1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0[3] = v2;
    v68 = v1 + 64;
    v4 = -1;
    v5 = -1 << *(v1 + 32);
    if (-v5 < 64)
    {
      v4 = ~(-1 << -v5);
    }

    v6 = v4 & *(v1 + 64);
    v67 = (63 - v5) >> 6;
    v7 = v0[31];
    v69 = v1;

    for (i = 0; ; i = v75)
    {
      v77 = v7;
      v76 = isUniquelyReferenced_nonNull_native;
      if (!v6)
      {
        if (v67 <= i + 1)
        {
          v14 = i + 1;
        }

        else
        {
          v14 = v67;
        }

        while (1)
        {
          v13 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if (v13 >= v67)
          {
            v75 = v14 - 1;
            v59 = v0[20];
            v60 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
            (*(*(v60 - 8) + 56))(v59, 1, 1, v60);
            v6 = 0;
            goto LABEL_16;
          }

          v6 = *(v68 + 8 * v13);
          ++i;
          if (v6)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        return TaskGroup.Iterator.next(isolation:)(v8, v9, v10, v11);
      }

      v13 = i;
LABEL_15:
      v15 = v0[20];
      v16 = v0[15];
      v17 = v0[16];
      v18 = v0[14];
      v19 = v0[12];
      v71 = v0[11];
      v74 = v0[18];
      v20 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v21 = v20 | (v13 << 6);
      (*(v17 + 16))();
      (*(v19 + 16))(v18, *(v69 + 56) + *(v19 + 72) * v21, v71);
      v22 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
      v23 = *(v22 + 48);
      (*(v17 + 32))(v15, v74, v16);
      (*(v19 + 32))(v15 + v23, v18, v71);
      (*(*(v22 - 8) + 56))(v15, 0, 1, v22);
      v75 = v13;
LABEL_16:
      v24 = v0[19];
      sub_1000176A8(v0[20], v24, &qword_1005B2438, &qword_1004D68B0);
      v25 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
      v26 = (*(*(v25 - 8) + 48))(v24, 1, v25);
      v27 = v0[21];
      if (v26 == 1)
      {
        v28 = sub_10004B564(&qword_1005B01E0, &qword_1004D1768);
        (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
      }

      else
      {
        v29 = v0[19];
        v31 = v0[15];
        v30 = v0[16];
        v32 = v0[12];
        v72 = v0[11];
        v33 = *(v25 + 48);
        v34 = sub_10004B564(&qword_1005B01E0, &qword_1004D1768);
        v35 = *(v34 + 48);
        (*(v30 + 16))(v27, v29, v31);
        (*(v32 + 16))(v27 + v35, v29 + v33, v72);
        sub_100002CE0(v29, &qword_1005B2440, &qword_1004D68C0);
        (*(*(v34 - 8) + 56))(v27, 0, 1, v34);
      }

      v36 = v0[21];
      v37 = sub_10004B564(&qword_1005B01E0, &qword_1004D1768);
      if ((*(*(v37 - 8) + 48))(v36, 1, v37) == 1)
      {

        v0[31] = v77;
        v61 = v0[30];
        v62 = v0[7];
        v63 = swift_task_alloc();
        v0[32] = v63;
        *v63 = v0;
        v63[1] = sub_10038DCFC;
        v11 = v0[22];
        v8 = (v0 + 2);
        v9 = v62;
        v10 = v61;

        return TaskGroup.Iterator.next(isolation:)(v8, v9, v10, v11);
      }

      v38 = v0[17];
      v40 = v0[12];
      v39 = v0[13];
      v41 = v0[11];
      v42 = *(v37 + 48);
      v70 = *(v0[16] + 32);
      v70(v38, v36, v0[15]);
      v73 = *(v40 + 32);
      v73(v39, v36 + v42, v41);
      v43 = sub_1001FD93C(v38);
      v44 = v77[2];
      v45 = (v9 & 1) == 0;
      v8 = v44 + v45;
      if (__OFADD__(v44, v45))
      {
        goto LABEL_40;
      }

      v46 = v9;
      if (v77[3] >= v8)
      {
        if ((v76 & 1) == 0)
        {
          sub_1002034E4();
        }
      }

      else
      {
        v47 = v0[17];
        sub_10022D91C(v8, v76 & 1);
        v48 = sub_1001FD93C(v47);
        if ((v46 & 1) != (v49 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v43 = v48;
      }

      v7 = v0[3];
      v51 = v0[16];
      v50 = v0[17];
      v52 = v0[15];
      v54 = v0[12];
      v53 = v0[13];
      v55 = v0[11];
      if (v46)
      {
        (*(v51 + 8))(v0[17], v0[15]);
        v8 = (*(v54 + 40))(v7[7] + *(v54 + 72) * v43, v53, v55);
      }

      else
      {
        v7[(v43 >> 6) + 8] |= 1 << v43;
        v70(v7[6] + *(v51 + 72) * v43, v50, v52);
        v8 = (v73)(v7[7] + *(v54 + 72) * v43, v53, v55);
        v56 = v7[2];
        v57 = __OFADD__(v56, 1);
        v58 = v56 + 1;
        if (v57)
        {
          goto LABEL_41;
        }

        v7[2] = v58;
      }

      isUniquelyReferenced_nonNull_native = 1;
    }
  }

  v64 = v0[4];
  (*(v0[23] + 8))(v0[24], v0[22]);
  *v64 = v2;

  v65 = v0[1];

  return v65();
}

uint64_t sub_10038E5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  v6 = type metadata accessor for Location();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v7 = type metadata accessor for Handle();
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  sub_10004B564(&qword_1005B2438, &qword_1004D68B0);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_10038E73C, 0, 0);
}

uint64_t sub_10038E73C()
{
  if (*(*(v0 + 32) + 16))
  {
    v1 = swift_task_alloc();
    *(v0 + 128) = v1;
    *v1 = v0;
    v1[1] = sub_10038E878;
    v2 = *(v0 + 32);

    return sub_10037F790(v2);
  }

  else
  {
    **(v0 + 24) = sub_1002087C4(_swiftEmptyArrayStorage);

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_10038E878(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v4 = sub_10038EF48;
  }

  else
  {
    v4 = sub_10038E98C;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_10038E98C()
{
  v55 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 136);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(*(v0 + 136) + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v40 = (63 - v7) >> 6;
  v51 = (v1 + 16);
  v50 = (v1 + 32);
  v41 = *(v0 + 56);
  v42 = *(v0 + 80);
  v46 = (v1 + 8);
  v43 = *(v0 + 136);

  v9 = 0;
  v47 = v4;
  while (v8)
  {
    v11 = v9;
LABEL_16:
    v14 = *(v0 + 112);
    v52 = *(v0 + 104);
    v15 = *(v0 + 64);
    v49 = *(v0 + 72);
    v16 = *(v0 + 48);
    v17 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v18 = v17 | (v11 << 6);
    (*(v42 + 16))();
    (*(v41 + 16))(v15, *(v43 + 56) + *(v41 + 72) * v18, v16);
    v19 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
    v20 = *(v19 + 48);
    (*(v42 + 32))(v14, v52, v49);
    (*(v41 + 32))(v14 + v20, v15, v16);
    (*(*(v19 - 8) + 56))(v14, 0, 1, v19);
LABEL_17:
    v21 = *(v0 + 120);
    sub_1000176A8(*(v0 + 112), v21, &qword_1005B2438, &qword_1004D68B0);
    v22 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
    if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
    {

      **(v0 + 24) = *(v0 + 136);

      v39 = *(v0 + 8);

      v39();
      return;
    }

    (*v50)(*(v0 + 96), *(v0 + 120), *(v0 + 72));
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 88);
    v23 = *(v0 + 96);
    v25 = *(v0 + 72);
    v26 = type metadata accessor for Logger();
    sub_10000A6F0(v26, qword_1005E0B28);
    (*v51)(v24, v23, v25);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 88);
    v53 = *(v0 + 96);
    v31 = *(v0 + 72);
    if (v29)
    {
      v45 = v28;
      v32 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v54 = v48;
      *v32 = 141558275;
      *(v32 + 4) = 1752392040;
      *(v32 + 12) = 2081;
      v44 = Handle.identifier.getter();
      v34 = v33;
      v35 = *v46;
      (*v46)(v30, v31);
      v36 = sub_10000D01C(v44, v34, &v54);

      *(v32 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v27, v45, "Get legacy latest location for handle: %{private,mask.hash}s", v32, 0x16u);
      sub_100004984(v48);

      v35(v53, v31);
    }

    else
    {

      v10 = *v46;
      (*v46)(v30, v31);
      v10(v53, v31);
    }

    (*(v41 + 8))(*(v0 + 120) + *(v22 + 48), *(v0 + 48));
    v4 = v47;
  }

  if (v40 <= v9 + 1)
  {
    v12 = v9 + 1;
  }

  else
  {
    v12 = v40;
  }

  v13 = v12 - 1;
  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v40)
    {
      v37 = *(v0 + 112);
      v38 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
      (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
      v8 = 0;
      v9 = v13;
      goto LABEL_17;
    }

    v8 = *(v4 + 8 * v11);
    ++v9;
    if (v8)
    {
      v9 = v11;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_10038EF48()
{
  v14 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0B28);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 144);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    *(v0 + 16) = v4;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Legacy location refresh failed with %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  v10 = sub_1002087C4(_swiftEmptyArrayStorage);

  **(v0 + 24) = v10;

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10038F160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a4;
  return _swift_task_switch(sub_10038F184, 0, 0);
}

uint64_t sub_10038F184()
{
  v14 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 56) = sub_10000A6F0(v1, qword_1005E0B28);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v4 = 136446723;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E88C0, &v13);
    *(v4 + 12) = 2160;
    *(v4 + 14) = 1752392040;
    *(v4 + 22) = 2081;
    type metadata accessor for Handle();
    v5 = Array.description.getter();
    v7 = sub_10000D01C(v5, v6, &v13);

    *(v4 + 24) = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s subscribing shallow locations\nfor: %{private,mask.hash}s", v4, 0x20u);
    swift_arrayDestroy();
  }

  if (*(*(v0 + 32) + 16))
  {
    v8 = swift_task_alloc();
    *(v0 + 64) = v8;
    *v8 = v0;
    v8[1] = sub_10038F414;
    v9 = *(v0 + 48);
    v10 = *(v0 + 32);

    return sub_100353274(v10, v9);
  }

  else
  {
    **(v0 + 24) = sub_1002087C4(_swiftEmptyArrayStorage);
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_10038F414(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v4 = sub_10038F6F0;
  }

  else
  {
    v4 = sub_10038F528;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10038F528()
{
  v11 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 141558275;
    *(v3 + 4) = 1752392040;
    *(v3 + 12) = 2081;
    type metadata accessor for Handle();
    type metadata accessor for Location();
    sub_100016E78(&qword_1005A91B0, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
    v5 = Dictionary.description.getter();
    v7 = sub_10000D01C(v5, v6, &v10);

    *(v3 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Encrypted latest location: %{private,mask.hash}s", v3, 0x16u);
    sub_100004984(v4);
  }

  **(v0 + 24) = *(v0 + 72);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10038F6F0()
{
  v12 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 80);
    v4 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E88C0, &v11);
    *(v4 + 12) = 2082;
    *(v0 + 16) = v3;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v5 = String.init<A>(describing:)();
    v7 = sub_10000D01C(v5, v6, &v11);

    *(v4 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s failed with %{public}s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v8 = sub_1002087C4(_swiftEmptyArrayStorage);

  **(v0 + 24) = v8;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10038F8C8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_10038F958;

  return sub_10001CC28();
}

uint64_t sub_10038F958(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_10038FA58, 0, 0);
}

uint64_t sub_10038FA58()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_10038FB5C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD00000000000001ALL, 0x80000001004E8880, sub_100396164, v4, &type metadata for () + 1);
}

uint64_t sub_10038FB5C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1003966C4;
  }

  else
  {

    v2 = sub_1003966C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10038FC78(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_10038FD08;

  return sub_10001CC28();
}

uint64_t sub_10038FD08(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_10038FE08, 0, 0);
}

uint64_t sub_10038FE08()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_10038FF0C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000021, 0x80000001004E8850, sub_100396158, v4, &type metadata for () + 1);
}

uint64_t sub_10038FF0C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100390028;
  }

  else
  {

    v2 = sub_100207260;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100390028()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100390094(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = swift_task_alloc();
  v3[5] = v4;
  *v4 = v3;
  v4[1] = sub_100390128;

  return sub_10001CC28();
}

uint64_t sub_100390128(uint64_t a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_100390240, v2, 0);
}

uint64_t sub_100390240()
{
  sub_100395EB0();
  *(v0 + 56) = v1;

  return _swift_task_switch(sub_1003902FC, 0, 0);
}

uint64_t sub_1003902FC()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *(v1 + 16) = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1003903E8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2, 0, 0, 0xD000000000000013, 0x80000001004E8830, sub_100396104, v1, &type metadata for () + 1);
}

uint64_t sub_1003903E8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_10039056C;
  }

  else
  {

    v2 = sub_100390504;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100390504()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10039056C()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003905E0()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_10039066C;

  return sub_10001CC28();
}

uint64_t sub_10039066C(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_10039076C, 0, 0);
}

uint64_t sub_10039076C()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_100390844;
  v2 = *(v0 + 40);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000013, 0x80000001004E8810, sub_100395EA8, v2, &type metadata for Data);
}

uint64_t sub_100390844()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1001268B0;
  }

  else
  {
    v2 = sub_100390958;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100390958()
{

  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_1003909C0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100390A50;

  return sub_10001CC28();
}

uint64_t sub_100390A50(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_100390B50, 0, 0);
}

uint64_t sub_100390B50()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_10038FB5C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000015, 0x80000001004E87F0, sub_100395E9C, v4, &type metadata for () + 1);
}

uint64_t sub_100390C54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100390CE0;

  return sub_10001CC28();
}

uint64_t sub_100390CE0(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return _swift_task_switch(sub_100390DE0, 0, 0);
}

uint64_t sub_100390DE0()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_100390EB4;
  v2 = *(v0 + 24);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v1, 0, 0, 0xD000000000000010, 0x80000001004E87D0, sub_100395E94, v2, &type metadata for () + 1);
}

uint64_t sub_100390EB4()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_100390FC8;
  }

  else
  {
    v2 = sub_1003966CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100390FC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10039104C()
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  *(v0 + 40) = PropertyListEncoder.init()();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1003910FC;

  return sub_10001CC28();
}

uint64_t sub_1003910FC(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_1003911FC, 0, 0);
}

uint64_t sub_1003911FC()
{
  v1 = swift_task_alloc();
  v0[8] = v1;
  v2 = sub_10004B564(&qword_1005B24F0, &qword_1004DBFF0);
  v0[9] = v2;
  *v1 = v0;
  v1[1] = sub_1003912F0;
  v3 = v0[7];

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0x6572616853746567, 0xEF29287379654B64, sub_100395DD8, v3, v2);
}

uint64_t sub_1003912F0()
{

  return _swift_task_switch(sub_1003913EC, 0, 0);
}

uint64_t sub_1003913EC()
{
  v1 = v0[4];

  v0[10] = v0[2];

  return _swift_task_switch(sub_100391460, v1, 0);
}

uint64_t sub_100391460()
{
  v0[3] = v0[10];
  sub_100395DE0();
  v1 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v3 = v2;

  v4 = v0[1];

  return v4(v1, v3);
}

uint64_t sub_10039157C()
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  *(v0 + 40) = PropertyListEncoder.init()();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10039162C;

  return sub_10001CC28();
}

uint64_t sub_10039162C(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_10039172C, 0, 0);
}

uint64_t sub_10039172C()
{
  v1 = swift_task_alloc();
  v0[8] = v1;
  v2 = sub_10004B564(&qword_1005B24E0, &qword_1004D6FF0);
  v0[9] = v2;
  *v1 = v0;
  v1[1] = sub_100391818;
  v3 = v0[7];

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000014, 0x80000001004E87B0, sub_100395D1C, v3, v2);
}

uint64_t sub_100391818()
{

  return _swift_task_switch(sub_100391914, 0, 0);
}

uint64_t sub_100391914()
{
  v1 = v0[4];

  v0[10] = v0[2];

  return _swift_task_switch(sub_100391988, v1, 0);
}

uint64_t sub_100391988()
{
  v0[3] = v0[10];
  sub_100395D24();
  v1 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v3 = v2;

  v4 = v0[1];

  return v4(v1, v3);
}

uint64_t sub_100391A84()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for SecureLocationsConfig(0);
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_100391B18, v0, 0);
}

uint64_t sub_100391B18()
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  *(v0 + 40) = PropertyListEncoder.init()();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_100391BC8;

  return sub_10001CC28();
}

uint64_t sub_100391BC8(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_100391CC8, 0, 0);
}

uint64_t sub_100391CC8()
{
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_100391DA0;
  v2 = v0[7];
  v4 = v0[3];
  v3 = v0[4];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, 0, 0, 0x6E6F436863746566, 0xED00002928676966, sub_100395D14, v2, v4);
}

uint64_t sub_100391DA0()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_10039200C;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 16);

    v3 = sub_100391EC8;
    v4 = v5;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_100391EC8()
{
  v1 = v0[9];
  sub_100016E78(&qword_1005B24D8, type metadata accessor for SecureLocationsConfig, &unk_1004CC178);
  v2 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v1)
  {
    sub_10012BBA0(v0[4]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v2;
    v7 = v3;
    sub_10012BBA0(v0[4]);

    v8 = v0[1];

    return v8(v6, v7);
  }
}

uint64_t sub_10039200C()
{
  v1 = *(v0 + 16);

  return _swift_task_switch(sub_100392084, v1, 0);
}

uint64_t sub_100392084()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003920E8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100392108, v1, 0);
}

uint64_t sub_100392108()
{
  v9 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0B28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000020, 0x80000001004E8760, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  else
  {
  }

  *(v0 + 32) = 0x80000001004E8760;
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_1003922D4;

  return sub_10001CC28();
}

uint64_t sub_1003922D4(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_1003923EC, v2, 0);
}

uint64_t sub_1003923EC()
{
  v1 = v0[3];
  v2 = sub_100016E78(&qword_1005B23E0, type metadata accessor for LocationService, &unk_1004D6610);
  v3 = swift_task_alloc();
  v0[7] = v3;
  v4 = type metadata accessor for SecureLocationsStewie.PublishResult();
  *v3 = v0;
  v3[1] = sub_100392500;
  v5 = v0[6];
  v6 = v0[4];
  v7 = v0[2];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, v1, v2, 0xD000000000000020, v6, sub_100395710, v5, v4);
}

uint64_t sub_100392500()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_10029F1F8;
  }

  else
  {
    v4 = sub_100016108;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10039262C(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005B24D0, &qword_1004D6FD0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_1000A2EDC(sub_100395718, v7);
}

uint64_t sub_100392770(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100392790, v1, 0);
}

uint64_t sub_100392790()
{
  v9 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0B28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004E8740, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  else
  {
  }

  *(v0 + 32) = 0x80000001004E8740;
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_10039295C;

  return sub_10001CC28();
}

uint64_t sub_10039295C(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_100392A74, v2, 0);
}

uint64_t sub_100392A74()
{
  v1 = v0[3];
  v2 = sub_100016E78(&qword_1005B23E0, type metadata accessor for LocationService, &unk_1004D6610);
  v3 = swift_task_alloc();
  v0[7] = v3;
  v4 = type metadata accessor for SecureLocationsStewie.PublishResult();
  *v3 = v0;
  v3[1] = sub_100392B88;
  v5 = v0[6];
  v6 = v0[4];
  v7 = v0[2];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, v1, v2, 0xD000000000000015, v6, sub_100395708, v5, v4);
}

uint64_t sub_100392B88()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1002AB3A4;
  }

  else
  {
    v4 = sub_1002CE9C8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100392CB4(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005B24D0, &qword_1004D6FD0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_1001166DC(sub_1003966C0, v7);
}

uint64_t sub_100392E08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&unk_1005AB4C0, &qword_1004C3440);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for SecureLocationsStewie.PublishResult();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  if (a2)
  {
    v18 = a2;
    swift_errorRetain();
  }

  else
  {
    sub_100005F04(a1, v6, &unk_1005AB4C0, &qword_1004C3440);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      (*(v8 + 32))(v13, v6, v7);
      (*(v8 + 16))(v11, v13, v7);
      sub_10004B564(&qword_1005B24D0, &qword_1004D6FD0);
      CheckedContinuation.resume(returning:)();
      return (*(v8 + 8))(v13, v7);
    }

    sub_100002CE0(v6, &unk_1005AB4C0, &qword_1004C3440);
    sub_1000284BC();
    v14 = swift_allocError();
    *v15 = 0;
    v18 = v14;
  }

  sub_10004B564(&qword_1005B24D0, &qword_1004D6FD0);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_100393064(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100393084, v1, 0);
}

uint64_t sub_100393084()
{
  v9 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0B28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000014, 0x80000001004E8720, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  else
  {
  }

  *(v0 + 32) = 0x80000001004E8720;
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_100393250;

  return sub_10001CC28();
}

uint64_t sub_100393250(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_100393368, v2, 0);
}

uint64_t sub_100393368()
{
  v1 = v0[3];
  v2 = sub_100016E78(&qword_1005B23E0, type metadata accessor for LocationService, &unk_1004D6610);
  v3 = swift_task_alloc();
  v0[7] = v3;
  v4 = type metadata accessor for SecureLocationsStewie.ServiceState();
  *v3 = v0;
  v3[1] = sub_100392B88;
  v5 = v0[6];
  v6 = v0[4];
  v7 = v0[2];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, v1, v2, 0xD000000000000014, v6, sub_10039566C, v5, v4);
}

uint64_t sub_10039347C(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005B24C8, &qword_1004D6FC0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - v4;
  (*(v3 + 16))(&v10 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100395674;
  *(v8 + 24) = v7;

  sub_10011576C(sub_100395700, v8);
}

uint64_t sub_10039360C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005AB4B0, &unk_1004C5410);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  if (a2)
  {
    v18 = a2;
    swift_errorRetain();
  }

  else
  {
    sub_100005F04(a1, v6, &qword_1005AB4B0, &unk_1004C5410);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      (*(v8 + 32))(v13, v6, v7);
      (*(v8 + 16))(v11, v13, v7);
      sub_10004B564(&qword_1005B24C8, &qword_1004D6FC0);
      CheckedContinuation.resume(returning:)();
      return (*(v8 + 8))(v13, v7);
    }

    sub_100002CE0(v6, &qword_1005AB4B0, &unk_1004C5410);
    sub_1000284BC();
    v14 = swift_allocError();
    *v15 = 0;
    v18 = v14;
  }

  sub_10004B564(&qword_1005B24C8, &qword_1004D6FC0);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_100393868()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003938D8()
{
  *(v1 + 16) = v0;
  sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100393974, v0, 0);
}

uint64_t sub_100393974()
{
  v11 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0B28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001BLL, 0x80000001004E8700, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = *(v0 + 24);
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_10035D620(v6);
  sub_100002CE0(v6, &qword_1005A96E0, &qword_1004C2A80);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100393B58(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100054E60;

  return sub_100016580(a1, a2);
}

uint64_t sub_100393BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000368C;

  return sub_1003871E4(a1, a2, a3);
}

uint64_t sub_100393CA8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003788;

  return sub_100384D84(a1);
}

uint64_t sub_100393D3C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000552EC;

  return sub_100357C48(a1);
}

uint64_t sub_100393DD0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000552EC;

  return sub_1003851F0(a1);
}

uint64_t sub_100393E64(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000552EC;

  return sub_10038BD40(a1, a2);
}

uint64_t sub_100393F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000368C;

  return sub_100386FAC(a1, a2, a3);
}

uint64_t sub_100393FB8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_10038F8C8(a1, a2);
}

uint64_t sub_10039405C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_10038FC78(a1, a2);
}

uint64_t sub_100394100(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_100390094(a1, a2);
}

uint64_t sub_1003941A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1003966BC;

  return sub_1003905E0();
}

uint64_t sub_100394230(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_1003909C0(a1, a2);
}

uint64_t sub_1003942D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_100390C54();
}

uint64_t sub_100394360()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1003966BC;

  return sub_10039102C();
}

uint64_t sub_1003943EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1003966BC;

  return sub_10039155C();
}

uint64_t sub_100394478(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100394508;

  return sub_10001CC28();
}

uint64_t sub_100394508(uint64_t a1)
{
  v2 = *v1;
  v5 = *v1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v5;
  v3[1] = sub_100394640;

  return daemon.getter();
}

uint64_t sub_100394640(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 48) = a1;

  v3 = swift_task_alloc();
  *(v2 + 56) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for SecureLocationService();
  v6 = sub_100016E78(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100016E78(&qword_1005AD528, type metadata accessor for SecureLocationService, &unk_1004D95B8);
  *v3 = v9;
  v3[1] = sub_10039481C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10039481C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10013A454, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[10] = v5;
    *v5 = v4;
    v5[1] = sub_1003949AC;
    v6 = v3[3];
    v7 = v3[2];

    return sub_10045FAC0(v7, v6);
  }
}

uint64_t sub_1003949AC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 88) = v2;

  if (v2)
  {
    v7 = sub_1002BE408;
  }

  else
  {
    *(v6 + 96) = a2;
    *(v6 + 104) = a1;
    v7 = sub_100394AE0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100394AE0()
{

  v1 = v0[1];
  v3 = v0[12];
  v2 = v0[13];

  return v1(v2, v3);
}

uint64_t sub_100394B48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001A2C40;

  return sub_100391A84();
}

uint64_t sub_100394BD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100394C60;

  return sub_10001CC28();
}

uint64_t sub_100394C60(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return _swift_task_switch(sub_100394D60, 0, 0);
}

uint64_t sub_100394D60()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_100394E34;
  v2 = *(v0 + 24);

  return withCheckedContinuation<A>(isolation:function:_:)(v1, 0, 0, 0xD000000000000013, 0x80000001004E8790, sub_100395D0C, v2, &type metadata for () + 1);
}

uint64_t sub_100394E34()
{

  return _swift_task_switch(sub_100394F30, 0, 0);
}

uint64_t sub_100394F30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100394F94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100395020;

  return sub_10001CC28();
}

uint64_t sub_100395020(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return _swift_task_switch(sub_100395120, 0, 0);
}

uint64_t sub_100395120()
{
  v1 = *(*(*(v0 + 24) + 56) + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieManager);
  type metadata accessor for Transaction();
  v2 = swift_task_alloc();
  *(v2 + 16) = v1;
  *(v2 + 24) = 1;
  v3 = v1;
  static Transaction.named<A>(_:with:)();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100395220()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1003952AC;

  return sub_10001CC28();
}

uint64_t sub_1003952AC(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return _swift_task_switch(sub_1003953AC, 0, 0);
}

uint64_t sub_1003953AC()
{
  sub_10011E810();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100395418(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003690;

  return sub_1003920E8(a1);
}

uint64_t sub_1003954B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_100392770(a1);
}

uint64_t sub_100395548(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_100393064(a1);
}

uint64_t sub_1003955E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003938D8();
}

uint64_t sub_100395674(uint64_t a1, uint64_t a2)
{
  sub_10004B564(&qword_1005B24C8, &qword_1004D6FC0);

  return sub_10039360C(a1, a2);
}

uint64_t sub_10039579C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_10004B564(&qword_1005B2440, &qword_1004D68C0) + 48);
  v5 = *(sub_10004B564(&qword_1005B01E0, &qword_1004D1768) + 48);
  v6 = type metadata accessor for Handle();
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = type metadata accessor for Location();
  v8 = *(*(v7 - 8) + 16);

  return v8(a2 + v5, a1 + v4, v7);
}

uint64_t sub_10039587C@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
  v44 = *(v2 - 8);
  v45 = v2;
  __chkstk_darwin(v2);
  v40 = &v40 - v3;
  v49 = type metadata accessor for Location();
  v4 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Handle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004B564(&qword_1005B2438, &qword_1004D68B0);
  v11 = __chkstk_darwin(v10 - 8);
  v46 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v43 = &v40 - v14;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  if (v19)
  {
    v42 = v1[2];
    v20 = v17;
LABEL_11:
    v41 = (v19 - 1) & v19;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    (*(v7 + 16))(v9, *(v15 + 48) + *(v7 + 72) * v24, v6);
    (*(v4 + 16))(v48, *(v15 + 56) + *(v4 + 72) * v24, v49);
    v25 = v6;
    v26 = v45;
    v27 = *(v45 + 48);
    v28 = *(v7 + 32);
    v29 = v43;
    v28(v43, v9, v25);
    (*(v4 + 32))(v29 + v27, v48, v49);
    v30 = v44;
    (*(v44 + 56))(v29, 0, 1, v26);
    v31 = v41;
    v18 = v42;
    v23 = v20;
LABEL_12:
    *v1 = v15;
    v1[1] = v16;
    v1[2] = v18;
    v1[3] = v23;
    v1[4] = v31;
    v32 = v1[5];
    v33 = v46;
    sub_1000176A8(v29, v46, &qword_1005B2438, &qword_1004D68B0);
    v34 = 1;
    v35 = (*(v30 + 48))(v33, 1, v26);
    v36 = v47;
    if (v35 != 1)
    {
      v37 = v33;
      v38 = v40;
      sub_1000176A8(v37, v40, &qword_1005B2440, &qword_1004D68C0);
      v32(v38);
      sub_100002CE0(v38, &qword_1005B2440, &qword_1004D68C0);
      v34 = 0;
    }

    v39 = sub_10004B564(&qword_1005B01E0, &qword_1004D1768);
    return (*(*(v39 - 8) + 56))(v36, v34, 1, v39);
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
        v29 = v43;
        v30 = v44;
        v26 = v45;
        (*(v44 + 56))(v43, 1, 1, v45);
        v31 = 0;
        goto LABEL_12;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        v42 = v1[2];
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_100395D24()
{
  result = qword_1005B24E8;
  if (!qword_1005B24E8)
  {
    sub_10004B610(&qword_1005B24E0, &qword_1004D6FF0);
    sub_100016E78(&qword_1005AB008, type metadata accessor for SecureLocation, &unk_1004C2C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B24E8);
  }

  return result;
}

unint64_t sub_100395DE0()
{
  result = qword_1005B24F8;
  if (!qword_1005B24F8)
  {
    sub_10004B610(&qword_1005B24F0, &qword_1004DBFF0);
    sub_100016E78(&qword_1005B1C60, type metadata accessor for SecureLocationsCachedSharedKey, &unk_1004C4530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B24F8);
  }

  return result;
}

void sub_100395EB0()
{
  v0 = [objc_allocWithZone(NSMutableSet) init];
  sub_10039610C();
  sub_10004B564(&qword_1005B2508, &qword_1004D7020);
  [v0 addObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  v3 = 0;
  v1 = v0;
  static Set._conditionallyBridgeFromObjectiveC(_:result:)();

  sub_1000F7A28();
  swift_allocError();
  *v2 = 17;
  swift_willThrow();
}

unint64_t sub_10039610C()
{
  result = qword_1005B2500;
  if (!qword_1005B2500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005B2500);
  }

  return result;
}

uint64_t sub_100396170(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10000368C;

  return sub_10038D724(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_100396248(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_10038E5C0(a1, v4, v5, v6, v7);
}

uint64_t sub_100396310(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ClientID() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10000368C;

  return sub_10038F160(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t sub_100396448(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10000368C;

  return sub_10038AF7C(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_100396520(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for LocationRequest() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for ClientID() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100003690;

  return sub_10038B908(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_1003966D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  v8 = type metadata accessor for ClientID();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v9 = type metadata accessor for LocationRequest();
  v7[14] = v9;
  v7[15] = *(v9 - 8);
  v7[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000161D0, 0, 0);
}

uint64_t sub_1003967F8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = sub_100396F24;
  }

  else
  {
    v4 = sub_100396BA0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100396934()
{
  v17 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[21];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005E0B28);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v8 = 136446466;
    *(v8 + 4) = sub_10000D01C(0xD000000000000035, 0x80000001004E8EC0, &v16);
    *(v8 + 12) = 2082;
    v0[2] = v4;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v9 = String.init<A>(describing:)();
    v11 = sub_10000D01C(v9, v10, &v16);

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s trampoline error: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v12 = v0[9];
  v13 = sub_100027AC8(v4);
  v12(0, 0xF000000000000000, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_100396BA0()
{
  v26 = v0;
  v2 = v0[19];
  v1 = v0[20];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[3] = v2;
  sub_10004B564(&qword_1005B04E8, &qword_1004D67E0);
  sub_100379750();
  v3 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[13];
  v24 = v0[14];
  v9 = v0[11];
  v8 = v0[12];
  if (v1)
  {

    (*(v8 + 8))(v7, v9);
    (*(v6 + 8))(v5, v24);

    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000A6F0(v10, qword_1005E0B28);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v25[0] = swift_slowAlloc();
      *v13 = 136446466;
      *(v13 + 4) = sub_10000D01C(0xD000000000000035, 0x80000001004E8EC0, v25);
      *(v13 + 12) = 2082;
      v0[2] = v1;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v14 = String.init<A>(describing:)();
      v16 = sub_10000D01C(v14, v15, v25);

      *(v13 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s trampoline error: %{public}s", v13, 0x16u);
      swift_arrayDestroy();
    }

    v17 = v0[9];
    v18 = sub_100027AC8(v1);
    v17(0, 0xF000000000000000, v18);
  }

  else
  {
    v23 = v0[9];
    v19 = v3;
    v20 = v4;

    sub_100005F6C(v19, v20);
    v23(v19, v20, 0);
    sub_1000049D0(v19, v20);
    sub_1000049D0(v19, v20);
    (*(v8 + 8))(v7, v9);
    (*(v6 + 8))(v5, v24);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_100396F24()
{
  v17 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[20];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005E0B28);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v8 = 136446466;
    *(v8 + 4) = sub_10000D01C(0xD000000000000035, 0x80000001004E8EC0, &v16);
    *(v8 + 12) = 2082;
    v0[2] = v4;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v9 = String.init<A>(describing:)();
    v11 = sub_10000D01C(v9, v10, &v16);

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s trampoline error: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v12 = v0[9];
  v13 = sub_100027AC8(v4);
  v12(0, 0xF000000000000000, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_100397324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  v9 = type metadata accessor for ClientID();
  v8[12] = v9;
  v8[13] = *(v9 - 8);
  v8[14] = swift_task_alloc();
  sub_10004B564(&qword_1005B2560, &qword_1004D72B8);
  v8[15] = swift_task_alloc();
  Priority = type metadata accessor for LocatePriority();
  v8[16] = Priority;
  v8[17] = *(Priority - 8);
  v8[18] = swift_task_alloc();

  return _swift_task_switch(sub_100397488, 0, 0);
}

uint64_t sub_100397488()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  LocatePriority.init(rawValue:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[5];
    sub_1003A7F00(v0[15]);
    sub_1000284BC();
    swift_allocError();
    *v5 = 2;
    v4();

    v6 = v0[1];

    return v6();
  }

  else
  {
    (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_100017B4C(&qword_1005B2558, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    swift_allocObject();
    PropertyListDecoder.init()();
    sub_10004B564(&qword_1005B2400, &qword_1004D67B8);
    sub_1003A7ADC();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v8 = v0[11];

    v0[19] = v0[3];

    return _swift_task_switch(sub_100397908, v8, 0);
  }
}

uint64_t sub_100397908()
{
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[21] = v2;
    *v2 = v0;
    v2[1] = sub_100397AA0;
    v3 = v0[18];
    v4 = v0[19];
    v5 = v0[14];

    return sub_1003871E4(v4, v3, v5);
  }

  else
  {

    v7 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v0[23] = swift_allocError();
    (*(*(v7 - 8) + 104))(v8, enum case for CommunicationError.missingTrampoline(_:), v7);
    swift_willThrow();

    return _swift_task_switch(sub_100397C04, 0, 0);
  }
}

uint64_t sub_100397AA0()
{
  *(*v1 + 176) = v0;

  if (v0)
  {

    v2 = sub_100397F4C;
  }

  else
  {

    v2 = sub_100397E70;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100397C04()
{
  v16 = v0;
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[23];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005E0B28);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v8 = 136446466;
    *(v8 + 4) = sub_10000D01C(0xD00000000000003DLL, 0x80000001004E8E80, &v15);
    *(v8 + 12) = 2082;
    v0[2] = v4;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v9 = String.init<A>(describing:)();
    v11 = sub_10000D01C(v9, v10, &v15);

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s trampoline error: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v12 = v0[5];
  sub_100027AC8(v4);
  v12();

  v13 = v0[1];

  return v13();
}

uint64_t sub_100397E70()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 96);
  (*(v0 + 40))(0);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100397F4C()
{
  v16 = v0;
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[22];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005E0B28);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v8 = 136446466;
    *(v8 + 4) = sub_10000D01C(0xD00000000000003DLL, 0x80000001004E8E80, &v15);
    *(v8 + 12) = 2082;
    v0[2] = v4;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v9 = String.init<A>(describing:)();
    v11 = sub_10000D01C(v9, v10, &v15);

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s trampoline error: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v12 = v0[5];
  sub_100027AC8(v4);
  v12();

  v13 = v0[1];

  return v13();
}

uint64_t sub_100398354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = type metadata accessor for ClientID();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_10039841C, 0, 0);
}

uint64_t sub_10039841C()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100017B4C(&qword_1005B2558, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v1 = *(v0 + 40);

  return _swift_task_switch(sub_100398714, v1, 0);
}

uint64_t sub_100398714()
{
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_10039889C;
    v3 = v0[10];

    return sub_100384D84(v3);
  }

  else
  {
    v5 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v0[13] = swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for CommunicationError.missingTrampoline(_:), v5);
    swift_willThrow();

    return _swift_task_switch(sub_100398A4C, 0, 0);
  }
}

uint64_t sub_10039889C()
{

  return _swift_task_switch(sub_1003989B4, 0, 0);
}

uint64_t sub_1003989B4()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  (*(v0 + 48))(0);
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100398A4C()
{
  v13 = v0;
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[13];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000030, 0x80000001004E8E10, &v12);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v12);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[6];
  sub_100027AC8(v1);
  v9();

  v10 = v0[1];

  return v10();
}

uint64_t sub_100398DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return _swift_task_switch(sub_100398DFC, 0, 0);
}

uint64_t sub_100398DFC()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_10004B564(&qword_1005B2400, &qword_1004D67B8);
  sub_1003A7ADC();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v1 = v0[7];

  v0[10] = v0[2];

  return _swift_task_switch(sub_1003990E0, v1, 0);
}

uint64_t sub_1003990E0()
{
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_100399274;
    v3 = v0[10];

    return sub_100357C48(v3);
  }

  else
  {

    v5 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v0[15] = swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for CommunicationError.missingTrampoline(_:), v5);
    swift_willThrow();

    return _swift_task_switch(sub_1003993E0, 0, 0);
  }
}

uint64_t sub_100399274(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {

    v4 = sub_1003998F4;
  }

  else
  {

    v4 = sub_100399604;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003993E0()
{
  v14 = v0;
  v1 = v0[15];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004E8DC0, &v13);
    *(v5 + 12) = 2082;
    v0[3] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v13);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[8];
  v10 = sub_100027AC8(v1);
  v9(0, 0xF000000000000000, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100399604()
{
  v20 = v0;
  v2 = v0[13];
  v1 = v0[14];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[4] = v2;
  sub_10004B564(&qword_1005B04E8, &qword_1004D67E0);
  sub_100379750();
  v3 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v1)
  {

    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000A6F0(v5, qword_1005E0B28);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v19[0] = swift_slowAlloc();
      *v8 = 136446466;
      *(v8 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004E8DC0, v19);
      *(v8 + 12) = 2082;
      v0[3] = v1;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v9 = String.init<A>(describing:)();
      v11 = sub_10000D01C(v9, v10, v19);

      *(v8 + 14) = v11;
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s trampoline error: %{public}s", v8, 0x16u);
      swift_arrayDestroy();
    }

    v12 = v0[8];
    v13 = sub_100027AC8(v1);
    v12(0, 0xF000000000000000, v13);
  }

  else
  {
    v14 = v0[8];
    v15 = v3;
    v16 = v4;

    sub_100005F6C(v15, v16);
    v14(v15, v16, 0);
    sub_1000049D0(v15, v16);
    sub_1000049D0(v15, v16);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1003998F4()
{
  v14 = v0;
  v1 = v0[14];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004E8DC0, &v13);
    *(v5 + 12) = 2082;
    v0[3] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v13);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[8];
  v10 = sub_100027AC8(v1);
  v9(0, 0xF000000000000000, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100399C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = type metadata accessor for ClientID();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_100399D30, 0, 0);
}

uint64_t sub_100399D30()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100017B4C(&qword_1005B2558, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v1 = *(v0 + 48);

  return _swift_task_switch(sub_10039A034, v1, 0);
}

uint64_t sub_10039A034()
{
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_10039A1BC;
    v3 = v0[11];

    return sub_1003851F0(v3);
  }

  else
  {
    v5 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v0[16] = swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for CommunicationError.missingTrampoline(_:), v5);
    swift_willThrow();

    return _swift_task_switch(sub_10039A2F8, 0, 0);
  }
}

uint64_t sub_10039A1BC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_10039A874;
  }

  else
  {
    v4 = sub_10039A53C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10039A2F8()
{
  v14 = v0;
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = v0[16];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000003DLL, 0x80000001004E8D60, &v13);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v13);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[7];
  v10 = sub_100027AC8(v1);
  v9(0, 0xF000000000000000, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10039A53C()
{
  v23 = v0;
  v2 = v0[14];
  v1 = v0[15];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[3] = v2;
  sub_10004B564(&qword_1005B04E8, &qword_1004D67E0);
  sub_100379750();
  v3 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  if (v1)
  {
    (*(v6 + 8))(v0[11], v0[9]);

    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005E0B28);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v22[0] = swift_slowAlloc();
      *v11 = 136446466;
      *(v11 + 4) = sub_10000D01C(0xD00000000000003DLL, 0x80000001004E8D60, v22);
      *(v11 + 12) = 2082;
      v0[2] = v1;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v12 = String.init<A>(describing:)();
      v14 = sub_10000D01C(v12, v13, v22);

      *(v11 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s trampoline error: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
    }

    v15 = v0[7];
    v16 = sub_100027AC8(v1);
    v15(0, 0xF000000000000000, v16);
  }

  else
  {
    v17 = v0[7];
    v18 = v3;
    v19 = v4;

    sub_100005F6C(v18, v19);
    v17(v18, v19, 0);
    sub_1000049D0(v18, v19);
    sub_1000049D0(v18, v19);
    (*(v6 + 8))(v5, v7);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_10039A874()
{
  v14 = v0;
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = v0[15];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000003DLL, 0x80000001004E8D60, &v13);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v13);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[7];
  v10 = sub_100027AC8(v1);
  v9(0, 0xF000000000000000, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10039AC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  v8 = type metadata accessor for ClientID();
  v7[12] = v8;
  v7[13] = *(v8 - 8);
  v7[14] = swift_task_alloc();

  return _swift_task_switch(sub_10039ACD4, 0, 0);
}

uint64_t sub_10039ACD4()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_10004B564(&qword_1005B2400, &qword_1004D67B8);
  sub_1003A7ADC();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v0[15] = v0[2];
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100017B4C(&qword_1005B2558, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v1 = v0[9];

  return _swift_task_switch(sub_10039B05C, v1, 0);
}

uint64_t sub_10039B05C()
{
  Strong = swift_weakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[17] = v2;
    *v2 = v0;
    v2[1] = sub_10039B1F0;
    v3 = v0[14];
    v4 = v0[15];

    return sub_10038BD40(v4, v3);
  }

  else
  {

    v6 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v0[20] = swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for CommunicationError.missingTrampoline(_:), v6);
    swift_willThrow();

    return _swift_task_switch(sub_10039B35C, 0, 0);
  }
}

uint64_t sub_10039B1F0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {

    v4 = sub_10039B8D8;
  }

  else
  {

    v4 = sub_10039B5A0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10039B35C()
{
  v14 = v0;
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[20];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000029, 0x80000001004E8CF0, &v13);
    *(v5 + 12) = 2082;
    v0[3] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v13);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[10];
  v10 = sub_100027AC8(v1);
  v9(0, 0xF000000000000000, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10039B5A0()
{
  v23 = v0;
  v2 = v0[18];
  v1 = v0[19];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[4] = v2;
  sub_10004B564(&qword_1005B04E8, &qword_1004D67E0);
  sub_100379750();
  v3 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  if (v1)
  {
    (*(v6 + 8))(v0[14], v0[12]);

    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005E0B28);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v22[0] = swift_slowAlloc();
      *v11 = 136446466;
      *(v11 + 4) = sub_10000D01C(0xD000000000000029, 0x80000001004E8CF0, v22);
      *(v11 + 12) = 2082;
      v0[3] = v1;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v12 = String.init<A>(describing:)();
      v14 = sub_10000D01C(v12, v13, v22);

      *(v11 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s trampoline error: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
    }

    v15 = v0[10];
    v16 = sub_100027AC8(v1);
    v15(0, 0xF000000000000000, v16);
  }

  else
  {
    v17 = v0[10];
    v18 = v3;
    v19 = v4;

    sub_100005F6C(v18, v19);
    v17(v18, v19, 0);
    sub_1000049D0(v18, v19);
    sub_1000049D0(v18, v19);
    (*(v6 + 8))(v5, v7);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_10039B8D8()
{
  v14 = v0;
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[19];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000029, 0x80000001004E8CF0, &v13);
    *(v5 + 12) = 2082;
    v0[3] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v13);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[10];
  v10 = sub_100027AC8(v1);
  v9(0, 0xF000000000000000, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10039BCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_10039BCDC, a1, 0);
}

uint64_t sub_10039BCDC()
{
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_10039BE5C;

    return sub_10001CC28();
  }

  else
  {
    v4 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v0[14] = swift_allocError();
    (*(*(v4 - 8) + 104))(v5, enum case for CommunicationError.missingTrampoline(_:), v4);
    swift_willThrow();

    return _swift_task_switch(sub_10039C17C, 0, 0);
  }
}

uint64_t sub_10039BE5C(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_10039BF5C, 0, 0);
}

uint64_t sub_10039BF5C()
{
  v1 = v0[10];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_task_alloc();
  v0[11] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_10039C060;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD00000000000001ALL, 0x80000001004E8880, sub_100396164, v4, &type metadata for () + 1);
}

uint64_t sub_10039C060()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_10039C394;
  }

  else
  {

    v2 = sub_1003A8094;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10039C17C()
{
  v13 = v0;
  v1 = v0[14];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000025, 0x80000001004E8C90, &v12);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v12);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[6];
  sub_100027AC8(v1);
  v9();

  v10 = v0[1];

  return v10();
}

uint64_t sub_10039C394()
{

  return _swift_task_switch(sub_10039C404, 0, 0);
}

uint64_t sub_10039C404()
{
  v13 = v0;

  v1 = v0[13];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000025, 0x80000001004E8C90, &v12);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v12);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[6];
  sub_100027AC8(v1);
  v9();

  v10 = v0[1];

  return v10();
}

uint64_t sub_10039C774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_10039C7A0, a1, 0);
}

uint64_t sub_10039C7A0()
{
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_10039C920;

    return sub_10001CC28();
  }

  else
  {
    v4 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v0[14] = swift_allocError();
    (*(*(v4 - 8) + 104))(v5, enum case for CommunicationError.missingTrampoline(_:), v4);
    swift_willThrow();

    return _swift_task_switch(sub_10039CC40, 0, 0);
  }
}

uint64_t sub_10039C920(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_10039CA20, 0, 0);
}

uint64_t sub_10039CA20()
{
  v1 = v0[10];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_task_alloc();
  v0[11] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_10039CB24;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000021, 0x80000001004E8850, sub_100396158, v4, &type metadata for () + 1);
}

uint64_t sub_10039CB24()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_10039CEDC;
  }

  else
  {

    v2 = sub_10039CE58;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10039CC40()
{
  v13 = v0;
  v1 = v0[14];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000002CLL, 0x80000001004E8C60, &v12);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v12);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[6];
  sub_100027AC8(v1);
  v9();

  v10 = v0[1];

  return v10();
}

uint64_t sub_10039CE58()
{
  v1 = *(v0 + 48);

  v1(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10039CEDC()
{

  return _swift_task_switch(sub_10039CF4C, 0, 0);
}

uint64_t sub_10039CF4C()
{
  v13 = v0;

  v1 = v0[13];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000002CLL, 0x80000001004E8C60, &v12);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v12);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[6];
  sub_100027AC8(v1);
  v9();

  v10 = v0[1];

  return v10();
}

uint64_t sub_10039D2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_10039D2E8, a1, 0);
}

uint64_t sub_10039D2E8()
{
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_10039D470;
    v4 = v0[4];
    v3 = v0[5];

    return sub_100390094(v4, v3);
  }

  else
  {
    v6 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v0[11] = swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for CommunicationError.missingTrampoline(_:), v6);
    swift_willThrow();

    return _swift_task_switch(sub_10039D58C, 0, 0);
  }
}

uint64_t sub_10039D470()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_10039D80C;
  }

  else
  {

    v2 = sub_10039D7A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10039D58C()
{
  v13 = v0;
  v1 = v0[11];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E8C40, &v12);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v12);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[6];
  sub_100027AC8(v1);
  v9();

  v10 = v0[1];

  return v10();
}

uint64_t sub_10039D7A4()
{
  (*(v0 + 48))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10039D80C()
{
  v13 = v0;

  v1 = v0[10];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E8C40, &v12);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v12);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[6];
  sub_100027AC8(v1);
  v9();

  v10 = v0[1];

  return v10();
}

uint64_t sub_10039DB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return _swift_task_switch(sub_10039DBA4, a1, 0);
}

uint64_t sub_10039DBA4()
{
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_10039DD24;

    return sub_10001CC28();
  }

  else
  {
    v4 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v0[13] = swift_allocError();
    (*(*(v4 - 8) + 104))(v5, enum case for CommunicationError.missingTrampoline(_:), v4);
    swift_willThrow();

    return _swift_task_switch(sub_10039E010, 0, 0);
  }
}

uint64_t sub_10039DD24(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_10039DE24, 0, 0);
}

uint64_t sub_10039DE24()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_10039DEFC;
  v2 = *(v0 + 80);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000013, 0x80000001004E8810, sub_100395EA8, v2, &type metadata for Data);
}

uint64_t sub_10039DEFC()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_10039E2E8;
  }

  else
  {
    v2 = sub_10039E234;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10039E010()
{
  v14 = v0;
  v1 = v0[13];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004E8C20, &v13);
    *(v5 + 12) = 2082;
    v0[4] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v13);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[6];
  v10 = sub_100027AC8(v1);
  v9(0, 0xF000000000000000, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10039E234()
{
  v1 = v0[6];

  v2 = v0[2];
  v3 = v0[3];
  sub_100005F6C(v2, v3);
  v1(v2, v3, 0);
  sub_1000049D0(v2, v3);
  sub_1000049D0(v2, v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_10039E2E8()
{

  return _swift_task_switch(sub_10039E350, 0, 0);
}

uint64_t sub_10039E350()
{
  v14 = v0;

  v1 = v0[12];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004E8C20, &v13);
    *(v5 + 12) = 2082;
    v0[4] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v13);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[6];
  v10 = sub_100027AC8(v1);
  v9(0, 0xF000000000000000, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10039E680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_10039E6AC, a1, 0);
}

uint64_t sub_10039E6AC()
{
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_10039E82C;

    return sub_10001CC28();
  }

  else
  {
    v4 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v0[14] = swift_allocError();
    (*(*(v4 - 8) + 104))(v5, enum case for CommunicationError.missingTrampoline(_:), v4);
    swift_willThrow();

    return _swift_task_switch(sub_10039EB4C, 0, 0);
  }
}

uint64_t sub_10039E82C(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_10039E92C, 0, 0);
}

uint64_t sub_10039E92C()
{
  v1 = v0[10];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_task_alloc();
  v0[11] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_10039EA30;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000015, 0x80000001004E87F0, sub_100395E9C, v4, &type metadata for () + 1);
}

uint64_t sub_10039EA30()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_10039ED64;
  }

  else
  {

    v2 = sub_1003A8094;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10039EB4C()
{
  v13 = v0;
  v1 = v0[14];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001CLL, 0x80000001004E8C00, &v12);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v12);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[6];
  sub_100027AC8(v1);
  v9();

  v10 = v0[1];

  return v10();
}

uint64_t sub_10039ED64()
{

  return _swift_task_switch(sub_10039EDD4, 0, 0);
}

uint64_t sub_10039EDD4()
{
  v13 = v0;

  v1 = v0[13];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001CLL, 0x80000001004E8C00, &v12);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v12);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[6];
  sub_100027AC8(v1);
  v9();

  v10 = v0[1];

  return v10();
}

uint64_t sub_10039F144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_10039F16C, a1, 0);
}

uint64_t sub_10039F16C()
{
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_10039F2EC;

    return sub_10001CC28();
  }

  else
  {
    v4 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v0[11] = swift_allocError();
    (*(*(v4 - 8) + 104))(v5, enum case for CommunicationError.missingTrampoline(_:), v4);
    swift_willThrow();

    return _swift_task_switch(sub_10039F5D4, 0, 0);
  }
}

uint64_t sub_10039F2EC(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_10039F3EC, 0, 0);
}

uint64_t sub_10039F3EC()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_10039F4C0;
  v2 = *(v0 + 64);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v1, 0, 0, 0xD000000000000010, 0x80000001004E87D0, sub_100395E94, v2, &type metadata for () + 1);
}

uint64_t sub_10039F4C0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_10039F870;
  }

  else
  {
    v2 = sub_10039F7EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10039F5D4()
{
  v13 = v0;
  v1 = v0[11];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001BLL, 0x80000001004E8BE0, &v12);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v12);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[4];
  sub_100027AC8(v1);
  v9();

  v10 = v0[1];

  return v10();
}

uint64_t sub_10039F7EC()
{
  v1 = *(v0 + 32);

  v1(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10039F870()
{

  return _swift_task_switch(sub_10039F8D8, 0, 0);
}

uint64_t sub_10039F8D8()
{
  v13 = v0;

  v1 = v0[10];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001BLL, 0x80000001004E8BE0, &v12);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v12);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[4];
  sub_100027AC8(v1);
  v9();

  v10 = v0[1];

  return v10();
}

uint64_t sub_10039FBFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_10039FC20, a3, 0);
}

uint64_t sub_10039FC20()
{
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_10039FDA0;

    return sub_10039102C();
  }

  else
  {
    v4 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v0[9] = swift_allocError();
    (*(*(v4 - 8) + 104))(v5, enum case for CommunicationError.missingTrampoline(_:), v4);
    swift_willThrow();

    return _swift_task_switch(sub_10039FEDC, 0, 0);
  }
}

uint64_t sub_10039FDA0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {
    v7 = sub_1003A0100;
  }

  else
  {

    *(v6 + 80) = a2;
    *(v6 + 88) = a1;
    v7 = sub_1003A808C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10039FEDC()
{
  v14 = v0;
  v1 = v0[9];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004E8BC0, &v13);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v13);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[3];
  v10 = sub_100027AC8(v1);
  v9(0, 0xF000000000000000, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003A0100()
{
  v14 = v0;

  v1 = v0[8];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004E8BC0, &v13);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v13);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[3];
  v10 = sub_100027AC8(v1);
  v9(0, 0xF000000000000000, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003A0430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_1003A0454, a3, 0);
}

uint64_t sub_1003A0454()
{
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_1003A05D4;

    return sub_10039155C();
  }

  else
  {
    v4 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v0[9] = swift_allocError();
    (*(*(v4 - 8) + 104))(v5, enum case for CommunicationError.missingTrampoline(_:), v4);
    swift_willThrow();

    return _swift_task_switch(sub_1003A0710, 0, 0);
  }
}

uint64_t sub_1003A05D4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {
    v7 = sub_1003A0934;
  }

  else
  {

    *(v6 + 80) = a2;
    *(v6 + 88) = a1;
    v7 = sub_1003A808C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003A0710()
{
  v14 = v0;
  v1 = v0[9];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E8BA0, &v13);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v13);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[3];
  v10 = sub_100027AC8(v1);
  v9(0, 0xF000000000000000, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003A0934()
{
  v14 = v0;

  v1 = v0[8];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E8BA0, &v13);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v13);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[3];
  v10 = sub_100027AC8(v1);
  v9(0, 0xF000000000000000, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003A0C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_1003A0C90, a1, 0);
}

uint64_t sub_1003A0C90()
{
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_1003A0E10;

    return sub_10001CC28();
  }

  else
  {
    v4 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v0[15] = swift_allocError();
    (*(*(v4 - 8) + 104))(v5, enum case for CommunicationError.missingTrampoline(_:), v4);
    swift_willThrow();

    return _swift_task_switch(sub_1003A12B4, 0, 0);
  }
}

uint64_t sub_1003A0E10(uint64_t a1)
{
  v2 = *v1;
  v5 = *v1;

  v3 = swift_task_alloc();
  *(v2 + 80) = v3;
  *v3 = v5;
  v3[1] = sub_1003A0F48;

  return daemon.getter();
}

uint64_t sub_1003A0F48(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 88) = a1;

  v3 = swift_task_alloc();
  *(v2 + 96) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for SecureLocationService();
  v6 = sub_100017B4C(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100017B4C(&qword_1005AD528, type metadata accessor for SecureLocationService, &unk_1004D95B8);
  *v3 = v9;
  v3[1] = sub_1003A1124;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003A1124(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[13] = a1;
  v3[14] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003A160C, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[16] = v5;
    *v5 = v4;
    v5[1] = sub_1003A14D8;
    v6 = v3[5];
    v7 = v3[4];

    return sub_10045FAC0(v7, v6);
  }
}

uint64_t sub_1003A12B4()
{
  v14 = v0;
  v1 = v0[15];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000027, 0x80000001004E8B70, &v13);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v13);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[6];
  v10 = sub_100027AC8(v1);
  v9(0, 0xF000000000000000, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003A14D8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 136) = v2;

  if (v2)
  {
    v7 = sub_1003A1738;
  }

  else
  {
    *(v6 + 144) = a2;
    *(v6 + 152) = a1;
    v7 = sub_1003A167C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003A160C()
{
  *(v0 + 160) = *(v0 + 112);

  return _swift_task_switch(sub_1003A17A8, 0, 0);
}

uint64_t sub_1003A167C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[6];

  sub_100005F6C(v1, v2);
  v3(v1, v2, 0);
  sub_1000049D0(v1, v2);
  sub_1000049D0(v1, v2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1003A1738()
{
  *(v0 + 160) = *(v0 + 136);

  return _swift_task_switch(sub_1003A17A8, 0, 0);
}

uint64_t sub_1003A17A8()
{
  v14 = v0;

  v1 = v0[20];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000027, 0x80000001004E8B70, &v13);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v13);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[6];
  v10 = sub_100027AC8(v1);
  v9(0, 0xF000000000000000, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003A1B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_1003A1B48, a3, 0);
}

uint64_t sub_1003A1B48()
{
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_1003A1CC8;

    return sub_100391A84();
  }

  else
  {
    v4 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v0[9] = swift_allocError();
    (*(*(v4 - 8) + 104))(v5, enum case for CommunicationError.missingTrampoline(_:), v4);
    swift_willThrow();

    return _swift_task_switch(sub_1003A1E04, 0, 0);
  }
}

uint64_t sub_1003A1CC8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {
    v7 = sub_1003A20B0;
  }

  else
  {

    *(v6 + 80) = a2;
    *(v6 + 88) = a1;
    v7 = sub_1003A2028;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003A1E04()
{
  v14 = v0;
  v1 = v0[9];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004E8B50, &v13);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v13);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[3];
  v10 = sub_100027AC8(v1);
  v9(0, 0xF000000000000000, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003A2028()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  (*(v0 + 24))(v1, v2, 0);
  sub_1000049D0(v1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1003A20B0()
{
  v14 = v0;

  v1 = v0[8];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004E8B50, &v13);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v13);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[3];
  v10 = sub_100027AC8(v1);
  v9(0, 0xF000000000000000, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003A23E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_1003A2408, a1, 0);
}

uint64_t sub_1003A2408()
{
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_1003A2588;

    return sub_10001CC28();
  }

  else
  {
    v4 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v0[10] = swift_allocError();
    (*(*(v4 - 8) + 104))(v5, enum case for CommunicationError.missingTrampoline(_:), v4);
    swift_willThrow();

    return _swift_task_switch(sub_1003A2858, 0, 0);
  }
}

uint64_t sub_1003A2588(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_1003A2688, 0, 0);
}

uint64_t sub_1003A2688()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1003A275C;
  v2 = *(v0 + 64);

  return withCheckedContinuation<A>(isolation:function:_:)(v1, 0, 0, 0xD000000000000013, 0x80000001004E8790, sub_100395D0C, v2, &type metadata for () + 1);
}

uint64_t sub_1003A275C()
{

  return _swift_task_switch(sub_1003A8098, 0, 0);
}

uint64_t sub_1003A2858()
{
  v13 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0B28);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[10];
    v5 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E8B30, &v12);
    *(v5 + 12) = 2082;
    v0[2] = v4;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v12);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[4];
  sub_100027AC8(v0[10]);
  v9();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003A2B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = type metadata accessor for DecodedLocationNotification();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_1003A2C48, a1, 0);
}

uint64_t sub_1003A2C48()
{
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_1003A2DD4;
    v3 = v0[9];
    v4 = v0[3];
    v5 = v0[4];

    return sub_100386FAC(v3, v4, v5);
  }

  else
  {
    v7 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError, &protocol conformance descriptor for CommunicationError);
    v0[13] = swift_allocError();
    (*(*(v7 - 8) + 104))(v8, enum case for CommunicationError.missingTrampoline(_:), v7);
    swift_willThrow();

    return _swift_task_switch(sub_1003A2EF0, 0, 0);
  }
}