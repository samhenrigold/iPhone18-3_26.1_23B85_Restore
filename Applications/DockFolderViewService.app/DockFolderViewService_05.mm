id sub_10006E310(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = a1;
  }

  else
  {
    v12 = sub_10006E67C();
  }

  v13 = a1;
  static Logger.UI.getter();
  v14 = v12;
  v15 = a4;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v46 = v9;
    v19 = v18;
    v44 = swift_slowAlloc();
    v47 = v44;
    *v19 = 136316162;
    *(v19 + 4) = sub_100037B98(0xD000000000000040, 0x80000001000946A0, &v47);
    *(v19 + 12) = 2080;
    v20 = v14;
    v45 = v8;
    v21 = v20;
    v22 = [v20 description];
    v43 = v17;
    v23 = a3;
    v24 = v22;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v16;
    v26 = a2;
    v27 = v25;
    v29 = v28;

    v30 = sub_100037B98(v27, v29, &v47);

    *(v19 + 14) = v30;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v26;
    *(v19 + 32) = 1024;
    *(v19 + 34) = v23;
    *(v19 + 38) = 2080;
    v31 = v15;
    v32 = [v31 description];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    a3 = v23;
    v36 = v33;
    a2 = v26;
    v37 = sub_100037B98(v36, v35, &v47);

    *(v19 + 40) = v37;
    v38 = v42;
    _os_log_impl(&_mh_execute_header, v42, v43, "%s update portalView: %s to use sourceLayerRenderId: %llu, sourceContextId: %u for context: %s", v19, 0x30u);
    swift_arrayDestroy();

    (*(v46 + 8))(v11, v45);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v39 = [v14 portalLayer];
  [v39 setSourceLayerRenderId:a2];

  v40 = [v14 portalLayer];
  [v40 setSourceContextId:a3];

  return v14;
}

id sub_10006E67C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FolderSceneDelegate._DOCPortalView();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v4 setHidesSourceView:1];
  [v4 setClipsToBounds:0];
  static Logger.UI.getter();
  v5 = v4;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v19 = v1;
    v9 = v8;
    v20 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_100037B98(0xD000000000000012, 0x80000001000946F0, &v20);
    *(v9 + 12) = 2080;
    v10 = v5;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v0;
    v14 = v13;

    v15 = sub_100037B98(v12, v14, &v20);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s created portalView: %s", v9, 0x16u);
    swift_arrayDestroy();

    (*(v19 + 8))(v3, v18);
  }

  else
  {

    (*(v1 + 8))(v3, v0);
  }

  return v5;
}

uint64_t sub_10006E910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 256) = v17;
  *(v8 + 240) = v16;
  *(v8 + 224) = a7;
  *(v8 + 232) = a8;
  *(v8 + 208) = a5;
  *(v8 + 216) = a6;
  *(v8 + 200) = a4;
  v9 = type metadata accessor for Logger();
  *(v8 + 264) = v9;
  *(v8 + 272) = *(v9 - 8);
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  sub_10000589C(&qword_1000BCE60, &unk_100090AE0);
  *(v8 + 304) = swift_task_alloc();
  v10 = type metadata accessor for URL();
  *(v8 + 312) = v10;
  v11 = *(v10 - 8);
  *(v8 + 320) = v11;
  *(v8 + 328) = *(v11 + 64);
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 368) = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 376) = v13;
  *(v8 + 384) = v12;

  return _swift_task_switch(sub_10006EAF8, v13, v12);
}

uint64_t sub_10006EAF8()
{
  v1 = objc_opt_self();
  v0[49] = v1;
  v2 = [v1 defaultManager];
  v0[50] = v2;
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v0[51] = v4;
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_10006EC58;
  v6 = swift_continuation_init();
  v0[17] = sub_10000589C(&qword_1000BCE68, &qword_100091150);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10006FF08;
  v0[13] = &unk_1000AFD28;
  v0[14] = v6;
  [v2 fetchItemForURL:v5 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10006EC58()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 416) = v2;
  v3 = *(v1 + 384);
  v4 = *(v1 + 376);
  if (v2)
  {
    v5 = sub_10006FB70;
  }

  else
  {
    v5 = sub_10006ED88;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10006ED88()
{
  v67 = v0;
  v1 = v0[50];
  v2 = v0[51];
  v3 = v0[40];
  v4 = v0[26];
  v64 = v0[24];
  v0[53] = v64;

  v5 = 0;
  v6 = *(v4 + 16);
  while (v6 != v5)
  {
    v7 = v0[45];
    v8 = v0[39];
    (*(v3 + 16))(v7, v0[26] + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v5++, v8);
    URL._bridgeToObjectiveC()(v9);
    v11 = v10;
    v12 = FPURLMightBeInFileProvider();

    (*(v3 + 8))(v7, v8);
    if (!v12)
    {

      static Logger.UI.getter();

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = v0[34];
        v58 = v0[33];
        v61 = v0[37];
        v16 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        *v16 = 136315394;
        *(v16 + 4) = sub_100037B98(0xD00000000000003FLL, 0x8000000100094520, &v66);
        *(v16 + 12) = 2080;
        v17 = Array.description.getter();
        v19 = sub_100037B98(v17, v18, &v66);

        *(v16 + 14) = v19;
        _os_log_impl(&_mh_execute_header, v13, v14, "%s at least one URL is not in FileProvider, importing as regular files: %s ", v16, 0x16u);
        swift_arrayDestroy();

        v20 = *(v15 + 8);
        v20(v61, v58);
      }

      else
      {
        v24 = v0[37];
        v25 = v0[33];
        v26 = v0[34];

        v20 = *(v26 + 8);
        v20(v24, v25);
      }

      static Logger.UI.getter();
      v27 = v64;

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();

      v65 = v27;
      if (os_log_type_enabled(v28, v29))
      {
        v59 = v0[33];
        v62 = v0[36];
        v30 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        *v30 = 136315650;
        *(v30 + 4) = sub_100037B98(0xD00000000000001DLL, 0x8000000100094580, &v66);
        *(v30 + 12) = 2080;
        v31 = v27;
        v32 = [v31 description];
        v56 = v20;
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        v36 = sub_100037B98(v33, v35, &v66);

        *(v30 + 14) = v36;
        *(v30 + 22) = 2080;
        v37 = Array.description.getter();
        v39 = sub_100037B98(v37, v38, &v66);

        *(v30 + 24) = v39;
        _os_log_impl(&_mh_execute_header, v28, v29, "%s destination item: %s documentURLs: %s", v30, 0x20u);
        swift_arrayDestroy();

        v56(v62, v59);
      }

      else
      {
        v40 = v0[36];
        v41 = v0[33];

        v20(v40, v41);
      }

      v60 = v0[32];
      v63 = v0[49];
      v57 = v0[31];
      v43 = v0[29];
      v42 = v0[30];
      v44 = v0[27];
      v45 = v0[28];
      v46 = objc_allocWithZone(FPMoveOperation);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v48 = [v46 initWithURLs:isa destinationFolder:v65];

      [v48 setLastUsageUpdatePolicy:2];
      [v48 setShouldBounceOnCollision:1];
      v49 = swift_allocObject();
      v49[2] = v48;
      v49[3] = v44;
      v49[4] = v48;
      v49[5] = v6;
      v49[6] = v45;
      v49[7] = v43;
      v49[8] = v42;
      v49[9] = v57;
      v49[10] = v60;
      v0[22] = sub_100072B64;
      v0[23] = v49;
      v0[18] = _NSConcreteStackBlock;
      v0[19] = 1107296256;
      v0[20] = sub_1000717DC;
      v0[21] = &unk_1000AFD78;
      v50 = _Block_copy(v0 + 18);
      v51 = v48;
      v52 = v44;

      v53 = v51;

      [v53 setActionCompletionBlock:v50];
      _Block_release(v50);

      v54 = [v63 defaultManager];
      [v54 scheduleAction:v53];

      v55 = v0[1];

      return v55();
    }
  }

  v21 = swift_task_alloc();
  v0[54] = v21;
  *v21 = v0;
  v21[1] = sub_10006F4A8;
  v22 = v0[26];

  return sub_100073CBC(v22);
}

uint64_t sub_10006F4A8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 440) = v1;

  if (v1)
  {
    v5 = v4[47];
    v6 = v4[48];
    v7 = sub_10006F7E4;
  }

  else
  {
    v4[56] = a1;
    v5 = v4[47];
    v6 = v4[48];
    v7 = sub_10006F5D0;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10006F5D0()
{
  v1 = v0[53];
  v2 = v0[44];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[38];
  v6 = v0[39];
  v7 = v0[27];
  v16 = v0[56];
  v17 = v0[28];
  v8 = v0[25];

  static TaskPriority.userInitiated.getter();
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  (*(v4 + 16))(v2, v8, v6);
  v10 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = v1;
  *(v11 + 5) = v16;
  *(v11 + 6) = v7;
  (*(v4 + 32))(&v11[v10], v2, v6);
  *&v11[(v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8] = v17;
  v12 = v1;
  v13 = v7;

  sub_100070928(0, 0, v5, &unk_100091170, v11);

  sub_100006390(v5, &qword_1000BCE60, &unk_100090AE0);

  v14 = v0[1];

  return v14();
}

uint64_t sub_10006F7E4()
{
  v36 = v0;
  v1 = v0[53];

  v2 = v0[43];
  v3 = v0[39];
  v4 = v0[40];
  v5 = v0[25];
  static Logger.UI.getter();
  v6 = *(v4 + 16);
  v6(v2, v5, v3);

  v7 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  v8 = os_log_type_enabled(v7, v33);
  v9 = v0[43];
  v10 = v0[39];
  v11 = v0[40];
  v12 = v0[34];
  v34 = v0[35];
  v13 = v0[33];
  v14 = v0[26];
  if (v8)
  {
    v32 = v0[33];
    v15 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v15 = 136315650;
    *(v15 + 4) = sub_100037B98(0xD00000000000003FLL, 0x8000000100094520, &v35);
    *(v15 + 12) = 2048;
    *(v15 + 14) = *(v14 + 16);

    *(v15 + 22) = 2080;
    sub_1000725AC(&unk_1000BC418, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    log = v7;
    v31 = v12;
    v18 = v17;
    v19 = *(v11 + 8);
    v19(v9, v10);
    v20 = sub_100037B98(v16, v18, &v35);

    *(v15 + 24) = v20;
    _os_log_impl(&_mh_execute_header, log, v33, "%s failed to move %ld URL(s) to folder: %s", v15, 0x20u);
    swift_arrayDestroy();

    (*(v31 + 8))(v34, v32);
  }

  else
  {

    v19 = *(v11 + 8);
    v19(v9, v10);
    (*(v12 + 8))(v34, v13);
  }

  v21 = v0[28];
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = v0[40];
    v24 = v21 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v25 = *(v23 + 72);
    do
    {
      v26 = v0[42];
      v27 = v0[39];
      v6(v26, v24, v27);
      URL.stopAccessingSecurityScopedResource()();
      v19(v26, v27);
      v24 += v25;
      --v22;
    }

    while (v22);
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_10006FB70()
{
  v37 = v0;
  v1 = v0[51];
  v2 = v0[50];

  swift_willThrow();

  v3 = v0[43];
  v4 = v0[39];
  v5 = v0[40];
  v6 = v0[25];
  static Logger.UI.getter();
  v7 = *(v5 + 16);
  v7(v3, v6, v4);

  v8 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();
  v9 = os_log_type_enabled(v8, v34);
  v10 = v0[43];
  v11 = v0[39];
  v12 = v0[40];
  v13 = v0[34];
  v35 = v0[35];
  v14 = v0[33];
  v15 = v0[26];
  if (v9)
  {
    v33 = v0[33];
    v16 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    *v16 = 136315650;
    *(v16 + 4) = sub_100037B98(0xD00000000000003FLL, 0x8000000100094520, v36);
    *(v16 + 12) = 2048;
    *(v16 + 14) = *(v15 + 16);

    *(v16 + 22) = 2080;
    sub_1000725AC(&unk_1000BC418, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    log = v8;
    v32 = v13;
    v19 = v18;
    v20 = *(v12 + 8);
    v20(v10, v11);
    v21 = sub_100037B98(v17, v19, v36);

    *(v16 + 24) = v21;
    _os_log_impl(&_mh_execute_header, log, v34, "%s failed to move %ld URL(s) to folder: %s", v16, 0x20u);
    swift_arrayDestroy();

    (*(v32 + 8))(v35, v33);
  }

  else
  {

    v20 = *(v12 + 8);
    v20(v10, v11);
    (*(v13 + 8))(v35, v14);
  }

  v22 = v0[28];
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = v0[40];
    v25 = v22 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v26 = *(v24 + 72);
    do
    {
      v27 = v0[42];
      v28 = v0[39];
      v7(v27, v25, v28);
      URL.stopAccessingSecurityScopedResource()();
      v20(v27, v28);
      v25 += v26;
      --v23;
    }

    while (v23);
  }

  v29 = v0[1];

  return v29();
}

uint64_t sub_10006FF08(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100042398((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_10000589C(&unk_1000BC330, &qword_100090AD8);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10006FFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = type metadata accessor for URL();
  v8[7] = v9;
  v10 = *(v9 - 8);
  v8[8] = v10;
  v8[9] = *(v10 + 64);
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v8[12] = v11;
  v8[13] = *(v11 - 8);
  v8[14] = swift_task_alloc();

  return _swift_task_switch(sub_100070118, 0, 0);
}

uint64_t sub_100070118()
{
  type metadata accessor for MainActor();
  *(v0 + 120) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000701AC, v2, v1);
}

uint64_t sub_1000701AC()
{
  v42 = v0;
  v1 = v0[2];

  static Logger.Application.getter();
  swift_bridgeObjectRetain_n();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v7 = 136315650;
    *(v7 + 4) = sub_100037B98(0xD00000000000003FLL, 0x8000000100094520, &v41);
    *(v7 + 12) = 2080;
    v8 = [v5 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_100037B98(v9, v11, &v41);

    *(v7 + 14) = v12;
    *(v7 + 22) = 2048;
    if (v6 >> 62)
    {
      v13 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v0[13];
    v14 = v0[14];
    v16 = v0[12];

    *(v7 + 24) = v13;

    _os_log_impl(&_mh_execute_header, v3, v4, "%s: performing drop in to: %s with %ld.", v7, 0x20u);
    swift_arrayDestroy();

    (*(v15 + 8))(v14, v16);
  }

  else
  {
    v18 = v0[13];
    v17 = v0[14];
    v19 = v0[12];
    swift_bridgeObjectRelease_n();

    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[4];
  v21 = *(v20 + OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_rootViewController);
  if (v21)
  {
    v40 = *(v20 + OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_rootViewController);
  }

  else
  {
    v40 = [objc_allocWithZone(UIViewController) init];
  }

  v22 = v0[11];
  v23 = v0[8];
  v24 = v0[7];
  v25 = v0[5];
  v39 = v0[6];
  sub_10001A2A8(0, &unk_1000BC470, FPItem_ptr);
  v26 = *(v23 + 16);
  v26(v22, v25, v24);
  v27 = *(v23 + 80);
  v28 = swift_allocObject();
  (*(v23 + 32))(v28 + ((v27 + 16) & ~v27), v22, v24);
  v29 = v21;
  static FPItem.performDrop(_:underItem:alertPresenting:completion:)();

  v30 = *(v39 + 16);
  if (v30)
  {
    v31 = v0[8];
    v32 = v0[6] + ((v27 + 32) & ~v27);
    v33 = *(v31 + 72);
    v34 = (v31 + 8);
    do
    {
      v35 = v0[10];
      v36 = v0[7];
      v26(v35, v32, v36);
      URL.stopAccessingSecurityScopedResource()();
      (*v34)(v35, v36);
      v32 += v33;
      --v30;
    }

    while (v30);
  }

  v37 = v0[1];

  return v37();
}

uint64_t sub_1000705C4(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  (*(v5 + 16))(v7, a2, v4);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v23 = v8;
    v14 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v14 = 136315650;
    *(v14 + 4) = sub_100037B98(0xD00000000000003FLL, 0x8000000100094520, &v24);
    *(v14 + 12) = 2048;
    if (a1)
    {
      if (a1 >> 62)
      {
        v15 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v15 = 0;
    }

    *(v14 + 14) = v15;

    *(v14 + 22) = 2080;
    sub_1000725AC(&unk_1000BC418, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v5 + 8))(v7, v4);
    v20 = sub_100037B98(v17, v19, &v24);

    *(v14 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s finished moving %ld nodes(s) to folder: %s finished", v14, 0x20u);
    swift_arrayDestroy();

    return (*(v9 + 8))(v11, v23);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_100070928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000589C(&qword_1000BCE60, &unk_100090AE0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100042774(a3, v25 - v10, &qword_1000BCE60, &unk_100090AE0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100006390(v11, &qword_1000BCE60, &unk_100090AE0);
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

double sub_100070BE8(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v103 = a7;
  v104 = a8;
  v102 = a6;
  v97 = a5;
  v99 = a4;
  v107 = a3;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v96 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v98 = &v94 - v20;
  __chkstk_darwin(v21);
  v105 = &v94 - v22;
  __chkstk_darwin(v23);
  v100 = &v94 - v24;
  __chkstk_darwin(v25);
  v27 = &v94 - v26;
  static Logger.UI.getter();
  v28 = a2;
  swift_errorRetain();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();

  v31 = os_log_type_enabled(v29, v30);
  v101 = v16;
  v106 = v17;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v109 = v95;
    *v32 = 136315650;
    *(v32 + 4) = sub_100037B98(0xD00000000000001DLL, 0x8000000100094580, &v109);
    *(v32 + 12) = 2080;
    v33 = [v28 transferResults];
    if (v33)
    {
      v34 = v33;
      sub_10001A2A8(0, &unk_1000BC470, FPItem_ptr);
      v35 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v35 = 0;
    }

    v108 = v35;
    sub_10000589C(&unk_1000BCED0, &unk_100091190);
    v37 = String.init<A>(describing:)();
    v39 = sub_100037B98(v37, v38, &v109);

    *(v32 + 14) = v39;
    *(v32 + 22) = 2080;
    v108 = a1;
    swift_errorRetain();
    sub_10000589C(&unk_1000BC4B0, &qword_100090BC8);
    v40 = String.init<A>(describing:)();
    v42 = sub_100037B98(v40, v41, &v109);

    *(v32 + 24) = v42;
    _os_log_impl(&_mh_execute_header, v29, v30, "%s move operation transfer result: %s error: %s", v32, 0x20u);
    swift_arrayDestroy();

    v36 = *(v106 + 8);
    v16 = v101;
    v36(v27, v101);
  }

  else
  {

    v36 = *(v17 + 8);
    v36(v27, v16);
  }

  v43 = v105;
  if (a1)
  {
    swift_errorRetain();
    v44 = v100;
    static Logger.UI.getter();
    swift_errorRetain();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      *v47 = 136315394;
      *(v47 + 4) = sub_100037B98(0xD00000000000001DLL, 0x8000000100094580, &v109);
      *(v47 + 12) = 2080;
      v108 = a1;
      swift_errorRetain();
      sub_10000589C(&unk_1000BC330, &qword_100090AD8);
      v48 = String.init<A>(describing:)();
      v50 = sub_100037B98(v48, v49, &v109);
      v105 = v36;
      v51 = v50;

      *(v47 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v45, v46, "%s move operation failed with error: %s Presenting alert.", v47, 0x16u);
      swift_arrayDestroy();

      (v105)(v100, v101);
    }

    else
    {

      v36(v44, v16);
    }

    v64 = swift_allocObject();
    v65 = v107;
    *(v64 + 16) = v107;
    *(v64 + 24) = a1;
    swift_errorRetain();
    v66 = v65;
    DOCRunInMainThread(_:)();

    goto LABEL_25;
  }

  v52 = [v99 transferResults];
  if (v52)
  {
    v53 = v52;
    v54 = sub_10001A2A8(0, &unk_1000BC470, FPItem_ptr);
    v55 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    static Logger.UI.getter();

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();

    v58 = os_log_type_enabled(v56, v57);
    v100 = v54;
    if (v58)
    {
      v59 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v109 = v99;
      *v59 = 136315394;
      *(v59 + 4) = sub_100037B98(0xD00000000000001DLL, 0x8000000100094580, &v109);
      *(v59 + 12) = 2080;
      v60 = Dictionary.description.getter();
      v62 = sub_100037B98(v60, v61, &v109);

      *(v59 + 14) = v62;
      _os_log_impl(&_mh_execute_header, v56, v57, "%s move operation transfer result: %s", v59, 0x16u);
      swift_arrayDestroy();
      v16 = v101;

      v63 = v105;
    }

    else
    {

      v63 = v43;
    }

    v36(v63, v16);
    v73 = v98;
    if (*(v55 + 16) == v97)
    {

      goto LABEL_25;
    }

    static Logger.UI.getter();

    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      *v76 = 136315394;
      *(v76 + 4) = sub_100037B98(0xD00000000000001DLL, 0x8000000100094580, &v109);
      *(v76 + 12) = 2080;
      v77 = Dictionary.description.getter();
      v105 = v36;
      v79 = v78;

      v80 = sub_100037B98(v77, v79, &v109);

      *(v76 + 14) = v80;
      _os_log_impl(&_mh_execute_header, v74, v75, "%s unexpected transfer results count: %s", v76, 0x16u);
      swift_arrayDestroy();

      (v105)(v98, v101);
      goto LABEL_25;
    }

    v72 = v73;
  }

  else
  {
    v67 = v96;
    static Logger.UI.getter();
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v109 = v71;
      *v70 = 136315138;
      *(v70 + 4) = sub_100037B98(0xD00000000000001DLL, 0x8000000100094580, &v109);
      _os_log_impl(&_mh_execute_header, v68, v69, "%s unhandled case", v70, 0xCu);
      sub_1000064E0(v71);
    }

    v72 = v67;
  }

  v36(v72, v16);
LABEL_25:
  v106 = a9;
  v81 = *(v102 + 16);
  if (v81)
  {
    v84 = *(v13 + 16);
    v82 = v13 + 16;
    v83 = v84;
    v85 = v102 + ((*(v82 + 64) + 32) & ~*(v82 + 64));
    v86 = *(v82 + 56);
    do
    {
      v83(v15, v85, v12);
      URL.stopAccessingSecurityScopedResource()();
      (*(v82 - 8))(v15, v12);
      v85 += v86;
      --v81;
    }

    while (v81);
  }

  v87 = swift_allocObject();
  v88 = v107;
  v89 = v103;
  v90 = v104;
  v87[2] = v107;
  v87[3] = v89;
  v91 = v106;
  v87[4] = v90;
  v87[5] = v91;
  v87[6] = a10;
  v92 = v88;

  DOCRunInMainThread(_:)();

  return result;
}

void sub_100071728(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_rootViewController);
  if (v2)
  {
    v3 = v2;
    v4 = _convertErrorToNSError(_:)();
    v5 = String._bridgeToObjectiveC()();
    DOCPresentAlertForErrorWithForceHandler();
  }
}

void sub_1000717DC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_100071848(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v45 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  __chkstk_darwin(v45);
  v44 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v39 - v18;
  v20 = type metadata accessor for Logger();
  __chkstk_darwin(v20);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    v41 = a4;
    v42 = v22;
    v43 = v21;
    static Logger.UI.getter();
    sub_100042774(a8, v19, &unk_1000BCA20, &qword_100090BC0);
    v25 = a3;

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v48 = v40;
      *v28 = 136315906;
      *(v28 + 4) = sub_100037B98(0xD000000000000035, 0x8000000100094600, &v48);
      *(v28 + 12) = 2080;
      v29 = swift_allocObject();
      *(v29 + 16) = v25;
      v30 = swift_allocObject();
      *(v30 + 16) = sub_100074F80;
      *(v30 + 24) = v29;
      v46 = sub_100074F64;
      v47 = v30;
      v31 = v25;
      sub_10000589C(&unk_1000BCEE0, qword_1000911A0);
      v32 = String.init<A>(describing:)();
      v34 = sub_100037B98(v32, v33, &v48);

      *(v28 + 14) = v34;
      *(v28 + 22) = 2080;
      *(v28 + 24) = sub_100037B98(v41, a5, &v48);
      *(v28 + 32) = 2080;
      sub_100042774(v19, v44, &unk_1000BCA20, &qword_100090BC0);
      v35 = String.init<A>(describing:)();
      v37 = v36;
      sub_100006390(v19, &unk_1000BCA20, &qword_100090BC0);
      v38 = sub_100037B98(v35, v37, &v48);

      *(v28 + 34) = v38;
      _os_log_impl(&_mh_execute_header, v26, v27, "%s FAILED scene: %s contextID: %s, iconURL: %s", v28, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      sub_100006390(v19, &unk_1000BCA20, &qword_100090BC0);
    }

    (*(v42 + 8))(v24, v43);
  }

  else
  {
    sub_100041D18(a1, a2);
    sub_1000671E4(a4, a5, a6, a7, a1, a2);

    sub_100041D6C(a1, a2);
  }
}

uint64_t sub_100071CF4(double a1)
{
  v2 = v1;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for FolderSceneDelegate._DOCPortalView();
  v3 = objc_msgSendSuper2(&v15, "description");
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  _StringGuts.grow(_:)(71);
  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0xD000000000000022;
  v8._object = 0x8000000100094490;
  String.append(_:)(v8);
  v9 = [v2 portalLayer];
  [v9 sourceLayerRenderId];

  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11._object = 0x80000001000944C0;
  v11._countAndFlagsBits = 0xD00000000000001FLL;
  String.append(_:)(v11);
  v12 = [v2 portalLayer];
  [v12 sourceContextId];

  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  return 0;
}

id sub_100071FD8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_100072100(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t sub_100072154(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10007224C;

  return v6(a1);
}

uint64_t sub_10007224C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100072358()
{

  return _swift_deallocObject(v0, 48, 7);
}

double sub_1000723A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100072400()
{

  sub_100041D80(*(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10007246C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100072540()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  sub_100066C7C(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1000725AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100072620()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100072660()
{
  result = qword_1000BCE48;
  if (!qword_1000BCE48)
  {
    sub_10001A2A8(255, &qword_1000BCE40, BSAction_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BCE48);
  }

  return result;
}

uint64_t sub_1000726C8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_1000727F8(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v1 + 24);
  v15 = *(v1 + 16);
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100041F4C;

  return sub_10006E910(a1, v15, v14, v1 + v4, v8, v9, v10, v11);
}

uint64_t sub_10007297C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100043474;

  return sub_100072154(a1, v4);
}

uint64_t sub_100072A34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100041F4C;

  return sub_100072154(a1, v4);
}

uint64_t sub_100072B04()
{

  return _swift_deallocObject(v0, 88, 7);
}

void sub_100072B9C(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v53 - v8;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    v60 = v4;
    v61 = v3;
    v12 = objc_allocWithZone(NSString);
    v13 = a1;
    v14 = String._bridgeToObjectiveC()();
    v15 = [v12 initWithString:v14];

    sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10008F940;
    *(v16 + 32) = v1;
    v17 = v1;
    sub_10000589C(&unk_1000BCEF0, &unk_1000911B8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v59 = v15;
    [v11 _registerBSActionResponderArray:isa forKey:v15];

    type metadata accessor for DOCSBSceneRootViewController();
    v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    *&v19[OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_dockSceneInteractionDelegate + 8] = &off_1000AFA20;
    swift_unknownObjectWeakAssign();
    v20 = *&v17[OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_rootViewController];
    *&v17[OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_rootViewController] = v19;
    v21 = v19;

    v22 = [objc_allocWithZone(UIWindow) initWithWindowScene:v11];
    v23 = OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_window;
    v24 = *&v17[OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_window];
    *&v17[OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_window] = v22;
    v25 = v22;

    if (v25)
    {
      [v25 setRootViewController:v21];
    }

    static Logger.UI.getter();
    v26 = v13;
    v27 = v17;
    v28 = v21;
    v29 = v9;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();

    v58 = v31;
    if (os_log_type_enabled(v30, v31))
    {
      v56 = v29;
      v57 = v28;
      v55 = v26;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v62 = v53;
      *v32 = 136316162;
      *(v32 + 4) = sub_100037B98(0xD00000000000001FLL, 0x8000000100093F30, &v62);
      *(v32 + 12) = 2080;
      v34 = [v11 session];
      v35 = [v34 persistentIdentifier];

      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v39 = sub_100037B98(v36, v38, &v62);

      *(v32 + 14) = v39;
      *(v32 + 22) = 2112;
      *(v32 + 24) = v11;
      *v33 = v11;
      *(v32 + 32) = 2112;
      v54 = v23;
      v40 = *&v17[v23];
      if (!v40)
      {

        __break(1u);
        return;
      }

      v26 = v55;
      v41 = v55;
      v42 = v40;
      v28 = v57;

      *(v32 + 34) = v42;
      *(v32 + 42) = 2112;
      *(v32 + 44) = v28;
      v33[1] = v40;
      v33[2] = v19;
      v43 = v28;
      _os_log_impl(&_mh_execute_header, v30, v58, "%s: sceneIdentifier: %s scene: %@, window: %@, doc vc: %@", v32, 0x34u);
      sub_10000589C(&qword_1000BC328, &qword_100090AD0);
      swift_arrayDestroy();

      swift_arrayDestroy();

      (*(v60 + 8))(v56, v61);
      v23 = v54;
    }

    else
    {

      (*(v60 + 8))(v29, v61);
    }

    v52 = *&v17[v23];
    [v52 makeKeyAndVisible];
  }

  else
  {
    static Logger.Application.getter();
    v44 = a1;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v62 = v48;
      *v47 = 136315138;
      swift_getObjectType();
      v49 = _typeName(_:qualified:)();
      v51 = sub_100037B98(v49, v50, &v62);

      *(v47 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v45, v46, "Denying creation of browser window / scene.  Unexpected scene type received: %s)", v47, 0xCu);
      sub_1000064E0(v48);
    }

    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1000731B8(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v18 = v2;
    v10 = v9;
    v19 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100037B98(0xD000000000000016, 0x8000000100093DC0, &v19);
    *(v10 + 12) = 2080;
    v11 = v6;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_100037B98(v13, v15, &v19);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s scene: %s", v10, 0x16u);
    swift_arrayDestroy();

    return (*(v3 + 8))(v5, v18);
  }

  else
  {

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1000733EC(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v18 = v2;
    v10 = v9;
    v19 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100037B98(0xD000000000000018, 0x8000000100093EC0, &v19);
    *(v10 + 12) = 2080;
    v11 = v6;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_100037B98(v13, v15, &v19);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s scene: %s", v10, 0x16u);
    swift_arrayDestroy();

    return (*(v3 + 8))(v5, v18);
  }

  else
  {

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_100073620(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v18 = v2;
    v10 = v9;
    v19 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100037B98(0xD000000000000019, 0x8000000100093EA0, &v19);
    *(v10 + 12) = 2080;
    v11 = v6;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_100037B98(v13, v15, &v19);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s scene: %s", v10, 0x16u);
    swift_arrayDestroy();

    return (*(v3 + 8))(v5, v18);
  }

  else
  {

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_100073854(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v18 = v2;
    v10 = v9;
    v19 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100037B98(0xD00000000000001CLL, 0x8000000100093E80, &v19);
    *(v10 + 12) = 2080;
    v11 = v6;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_100037B98(v13, v15, &v19);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s scene: %s", v10, 0x16u);
    swift_arrayDestroy();

    return (*(v3 + 8))(v5, v18);
  }

  else
  {

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_100073A88(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v18 = v2;
    v10 = v9;
    v19 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100037B98(0xD00000000000001BLL, 0x8000000100093E60, &v19);
    *(v10 + 12) = 2080;
    v11 = v6;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_100037B98(v13, v15, &v19);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s scene: %s", v10, 0x16u);
    swift_arrayDestroy();

    return (*(v3 + 8))(v5, v18);
  }

  else
  {

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_100073CBC(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for Logger();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[12] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[13] = v5;
  v1[14] = v4;

  return _swift_task_switch(sub_100073E18, v5, v4);
}

uint64_t sub_100073E18()
{
  *(v0 + 16) = _swiftEmptyArrayStorage;
  v1 = *(*(v0 + 32) + 16);
  *(v0 + 120) = v1;
  if (v1)
  {
    v2 = *(v0 + 72);
    v3 = objc_opt_self();
    *(v0 + 128) = v3;
    v4 = *(v2 + 80);
    *(v0 + 208) = v4;
    *(v0 + 136) = *(v2 + 72);
    v5 = *(v2 + 16);
    *(v0 + 144) = v5;
    *(v0 + 152) = 0;
    v6 = *(v0 + 88);
    v7 = *(v0 + 64);
    v8 = *(v0 + 32);
    v9 = (*(v0 + 72) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 160) = _swiftEmptyArrayStorage;
    *(v0 + 168) = v9;
    v5(v6, v8 + ((v4 + 32) & ~v4), v7);
    *(v0 + 176) = [v3 defaultManager];
    v10 = swift_task_alloc();
    *(v0 + 184) = v10;
    *v10 = v0;
    v10[1] = sub_100073FC4;
    v11 = *(v0 + 88);

    return FPItemManager.doc_fetchItem(for:)(v11);
  }

  else
  {

    v12 = *(v0 + 8);

    return v12(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100073FC4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v4 = *(v3 + 104);
    v5 = *(v3 + 112);
    v6 = sub_1000742EC;
  }

  else
  {

    v4 = *(v3 + 104);
    v5 = *(v3 + 112);
    v6 = sub_1000740E0;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1000740E0()
{
  v1 = *(v0 + 192);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v2 = *(v0 + 192);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  (*(v5 + 8))(v3, v4);
  v6 = *(v0 + 16);
  v7 = *(v0 + 152) + 1;
  if (v7 == *(v0 + 120))
  {

    v8 = *(v0 + 8);

    return v8(v6);
  }

  else
  {
    *(v0 + 152) = v7;
    *(v0 + 160) = v6;
    v10 = *(v0 + 144);
    v11 = *(v0 + 128);
    v12 = *(v0 + 88);
    v13 = *(v0 + 64);
    v14 = *(v0 + 32) + ((*(v0 + 208) + 32) & ~*(v0 + 208)) + *(v0 + 136) * v7;
    *(v0 + 168) = (*(v0 + 72) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v12, v14, v13);
    *(v0 + 176) = [v11 defaultManager];
    v15 = swift_task_alloc();
    *(v0 + 184) = v15;
    *v15 = v0;
    v15[1] = sub_100073FC4;
    v16 = *(v0 + 88);

    return FPItemManager.doc_fetchItem(for:)(v16);
  }
}

uint64_t sub_1000742EC()
{
  v44 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);

  static Logger.UI.getter();
  v1(v2, v3, v4);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v38 = *(v0 + 200);
    v7 = *(v0 + 80);
    v9 = *(v0 + 64);
    v8 = *(v0 + 72);
    v41 = *(v0 + 56);
    v42 = *(v0 + 88);
    v39 = *(v0 + 48);
    v40 = *(v0 + 40);
    v10 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v10 = 136315650;
    *(v10 + 4) = sub_100037B98(0xD000000000000010, 0x80000001000945A0, &v43);
    *(v10 + 12) = 2080;
    sub_1000725AC(&unk_1000BC418, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    v14 = *(v8 + 8);
    v14(v7, v9);
    v15 = sub_100037B98(v11, v13, &v43);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2080;
    *(v0 + 24) = v38;
    swift_errorRetain();
    sub_10000589C(&unk_1000BC330, &qword_100090AD8);
    v16 = String.init<A>(describing:)();
    v18 = sub_100037B98(v16, v17, &v43);

    *(v10 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s could not fetch item for URL: %s error: %s", v10, 0x20u);
    swift_arrayDestroy();

    (*(v39 + 8))(v41, v40);
    v14(v42, v9);
  }

  else
  {
    v20 = *(v0 + 80);
    v19 = *(v0 + 88);
    v21 = *(v0 + 64);
    v22 = *(v0 + 72);
    v24 = *(v0 + 48);
    v23 = *(v0 + 56);
    v25 = *(v0 + 40);

    v26 = *(v22 + 8);
    v26(v20, v21);
    (*(v24 + 8))(v23, v25);
    v26(v19, v21);
  }

  v27 = *(v0 + 152) + 1;
  if (v27 == *(v0 + 120))
  {
    v28 = *(v0 + 160);

    v29 = *(v0 + 8);

    return v29(v28);
  }

  else
  {
    *(v0 + 152) = v27;
    v31 = *(v0 + 144);
    v32 = *(v0 + 128);
    v33 = *(v0 + 88);
    v34 = *(v0 + 64);
    v35 = *(v0 + 32) + ((*(v0 + 208) + 32) & ~*(v0 + 208)) + *(v0 + 136) * v27;
    *(v0 + 168) = (*(v0 + 72) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v31(v33, v35, v34);
    *(v0 + 176) = [v32 defaultManager];
    v36 = swift_task_alloc();
    *(v0 + 184) = v36;
    *v36 = v0;
    v36[1] = sub_100073FC4;
    v37 = *(v0 + 88);

    return FPItemManager.doc_fetchItem(for:)(v37);
  }
}

uint64_t sub_10007474C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10007483C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100043474;

  return sub_10006FFE0(a1, v7, v8, v9, v10, v11, v1 + v6, v12);
}

uint64_t sub_100074984()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100074A0C(unint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000705C4(a1, v4);
}

uint64_t sub_100074AAC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100074AF8()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100074B50()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100074B90()
{
  v1 = *(sub_10000589C(&unk_1000BCA20, &qword_100090BC0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_100074CC0(uint64_t a1, unint64_t a2)
{
  v5 = *(sub_10000589C(&unk_1000BCA20, &qword_100090BC0) - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2 + ((*(v5 + 80) + 56) & ~*(v5 + 80));

  sub_100071848(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_100074D7C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100074DEC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100074E40()
{

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_100074E98()
{

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_100074ED8()
{

  return _swift_deallocObject(v0, 96, 7);
}

void sub_100074FCC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_100075018(double a1, double a2)
{
  v5 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{a1, a2}];
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10007C410;
  *(v7 + 24) = v6;
  v10[4] = sub_10007C478;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100074FCC;
  v10[3] = &unk_1000B0358;
  v8 = _Block_copy(v10);
  v9 = v2;

  [v5 imageWithActions:v8];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
}

id sub_1000751CC(uint64_t a1)
{
  v2 = type metadata accessor for UICornerRadius();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICornerConfiguration();
  __chkstk_darwin(v6 - 8);
  v7 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (_UISolariumEnabled())
  {
    static UICornerRadius.containerConcentric(minimum:)();
    static UICornerConfiguration.uniformCorners(radius:)();
    (*(v3 + 8))(v5, v2);
    UIView.cornerConfiguration.setter();
  }

  else
  {
    v8 = [v7 layer];
    [v8 setCornerCurve:kCACornerCurveContinuous];

    v9 = [v7 layer];
    [v9 setCornerRadius:sub_10007547C()];

    v10 = [v7 layer];
    [v10 setMasksToBounds:1];
  }

  v11 = [v7 layer];
  [v11 setCompositingFilter:kCAFilterPlusL];

  if (*(a1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_selected))
  {
    v12 = 0.0980392157;
  }

  else
  {
    v12 = 0.152941176;
  }

  v13 = [objc_allocWithZone(UIColor) initWithDisplayP3Red:v12 green:v12 blue:v12 alpha:1.0];
  [v7 setBackgroundColor:v13];

  return v7;
}

double sub_10007547C()
{
  v1 = (v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___cornerRadius);
  if ((*(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___cornerRadius + 8) & 1) == 0)
  {
    return *v1;
  }

  strcpy(v1, "ףp=\nW+@");
  return 13.67;
}

double sub_1000754BC()
{
  v1 = v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___baseThumbnailContainerSize;
  if ((*(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___baseThumbnailContainerSize + 16) & 1) == 0)
  {
    return *v1;
  }

  if (*(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_useListLayout))
  {
    v2 = &OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_idealThumbnailSizeList;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_idealThumbnailSizeGrid;
  }

  v3 = v0 + *v2;
  result = *v3;
  v5 = *(v3 + 8);
  *v1 = *v3;
  *(v1 + 8) = v5;
  *(v1 + 16) = 0;
  return result;
}

id sub_100075514(uint64_t a1)
{
  v2 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v3) = 1144750080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v3];
  LODWORD(v4) = 1144750080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v4];
  v5 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView, sub_100075AFC);
  [v2 addSubview:v5];

  v6 = sub_100075A44();
  [v2 addSubview:v6];

  sub_1000754BC();
  v7 = *(a1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_layoutScale);
  UIRoundToScale();
  v9 = v8;
  if (*(a1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_useListLayout))
  {
    v10 = v7 * *(a1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___baseThumbnailContainerSize + 8) + v7 * -6.0 + v7 * -6.0;
  }

  else
  {
    v10 = v7 * *(a1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___baseThumbnailContainerSize + 8);
  }

  v39 = objc_opt_self();
  sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100091200;
  v12 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView;
  v13 = [*(a1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView) widthAnchor];
  v14 = [v13 constraintLessThanOrEqualToConstant:v7 * *(a1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___baseThumbnailContainerSize)];

  *(v11 + 32) = v14;
  v15 = [*(a1 + v12) heightAnchor];
  v16 = [v15 constraintLessThanOrEqualToConstant:v10];

  *(v11 + 40) = v16;
  v17 = [*(a1 + v12) centerXAnchor];
  v18 = [v2 centerXAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v11 + 48) = v19;
  v20 = [*(a1 + v12) bottomAnchor];
  v21 = [v2 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v11 + 56) = v22;
  v23 = [*(a1 + v12) topAnchor];
  v24 = [v2 topAnchor];
  v25 = [v23 constraintGreaterThanOrEqualToAnchor:v24];

  *(v11 + 64) = v25;
  v26 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___badge;
  v27 = [*(a1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___badge) centerXAnchor];
  v28 = [*(a1 + v12) centerXAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:v9];

  *(v11 + 72) = v29;
  v30 = [*(a1 + v26) bottomAnchor];
  v31 = [*(a1 + v12) bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v11 + 80) = v32;
  v33 = [*(a1 + v26) widthAnchor];
  v34 = [v33 constraintEqualToConstant:17.0];

  *(v11 + 88) = v34;
  v35 = [*(a1 + v26) heightAnchor];
  v36 = [v35 constraintEqualToConstant:17.0];

  *(v11 + 96) = v36;
  sub_10001A2A8(0, &qword_1000BB900, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v39 activateConstraints:isa];

  return v2;
}

id sub_100075A44()
{
  v1 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___badge;
  v2 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___badge);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___badge);
  }

  else
  {
    v4 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setContentMode:1];

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100075AFC(uint64_t a1)
{
  v2 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setContentMode:1];
  if (_UISolariumEnabled())
  {
    v3 = 5.0;
  }

  else
  {
    v3 = 3.0;
  }

  v4 = [v2 layer];
  [v4 setCornerRadius:v3 * *(a1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_layoutScale)];

  v5 = [v2 layer];
  [v5 setMasksToBounds:1];

  v6 = [v2 layer];
  [v6 setCornerCurve:kCACornerCurveContinuous];

  return v2;
}

id sub_100075C40(uint64_t a1)
{
  v2 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___title, sub_1000762C8);
  v43 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___subtitle, sub_100076620);
  v3 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = v2;
  [v3 addSubview:v4];
  LODWORD(v5) = 1148846080;
  [v3 setContentHuggingPriority:1 forAxis:v5];
  LODWORD(v6) = 1132068864;
  [v3 setContentHuggingPriority:0 forAxis:v6];
  v7 = [v3 layer];
  [v7 setAllowsGroupBlending:0];

  v8 = objc_opt_self();
  sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100090F10;
  v10 = [v4 topAnchor];

  v11 = [v3 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v9 + 32) = v12;
  v13 = [v4 leadingAnchor];

  v14 = [v3 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v9 + 40) = v15;
  v16 = [v4 trailingAnchor];

  v17 = [v3 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v9 + 48) = v18;
  sub_10001A2A8(0, &qword_1000BB900, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  p_type = &stru_1000B6FF0.type;
  v42 = v8;
  [v8 activateConstraints:isa];

  LODWORD(isa) = *(a1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_useListLayout);
  v21 = &stru_1000B6FF0.type;
  if (isa == 1)
  {
    v22 = v43;
    [v3 addSubview:v22];
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_10008F920;
    v24 = [v22 topAnchor];
    v25 = [v4 bottomAnchor];

    v26 = [v24 constraintEqualToAnchor:v25 constant:2.0];
    *(v23 + 32) = v26;
    v27 = [v22 leadingAnchor];

    v28 = [v3 leadingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];

    *(v23 + 40) = v29;
    v30 = [v22 trailingAnchor];

    v31 = [v3 trailingAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];

    v21 = (&stru_1000B6FF0 + 16);
    *(v23 + 48) = v32;
    p_type = (&stru_1000B6FF0 + 16);
    v33 = (v23 + 56);
  }

  else
  {
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_10008F940;
    v33 = (v34 + 32);
    v22 = v4;
  }

  v35 = [v22 v21[369]];

  v36 = [v3 v21[369]];
  v37 = [v35 constraintEqualToAnchor:v36];

  *v33 = v37;
  v38 = Array._bridgeToObjectiveC()().super.isa;

  [v42 p_type[371]];

  v39 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___titleOverlay, sub_10007653C);
  [v3 addSubview:v39];

  v40 = DOCConstraintsToResizeWithReferenceView();
  if (!v40)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = Array._bridgeToObjectiveC()().super.isa;
  }

  [v42 p_type[371]];

  return v3;
}

id sub_100076264(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1000762C8(void *a1)
{
  v2 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor:v3];

  v4 = [v2 layer];
  v5 = [a1 traitCollection];
  [v5 userInterfaceStyle];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = String._bridgeToObjectiveC()();

  [v4 setCompositingFilter:v6];

  [v2 setNumberOfLines:sub_10007645C()];
  if (*(a1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_useListLayout))
  {
    v7 = 4;
  }

  else
  {
    v7 = 1;
  }

  [v2 setTextAlignment:v7];
  return v2;
}

uint64_t sub_10007645C()
{
  if (v0[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_useListLayout] != 1)
  {
    return 1;
  }

  [v0 frame];
  if (v1 >= 58.0)
  {
    v3 = 1;
  }

  else
  {
    [v0 frame];
    v3 = v2 <= 0.0;
  }

  v5 = [v0 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  LOBYTE(v5) = static UIContentSizeCategory.>= infix(_:_:)();
  if (v3 || (v5 & 1) == 0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

id sub_10007653C(uint64_t a1)
{
  v2 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor:v3];

  [v2 setNumberOfLines:sub_10007645C()];
  if (*(a1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_useListLayout))
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  [v2 setTextAlignment:v4];
  return v2;
}

id sub_100076620(void *a1)
{
  v2 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [objc_opt_self() tertiaryLabelColor];
  [v2 setTextColor:v3];

  v4 = [v2 layer];
  v5 = [a1 traitCollection];
  [v5 userInterfaceStyle];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = String._bridgeToObjectiveC()();

  [v4 setCompositingFilter:v6];

  [v2 setNumberOfLines:1];
  if (*(a1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_useListLayout))
  {
    v7 = 4;
  }

  else
  {
    v7 = 1;
  }

  [v2 setTextAlignment:v7];
  return v2;
}

uint64_t sub_1000767B0(uint64_t a1)
{
  sub_100042EC8(a1, *(a1 + 24));
  v1 = UIContentSizeCategoryExtraExtraExtraLarge;
  return UIMutableTraits.preferredContentSizeCategory.setter();
}

void sub_100076804(void *a1, unsigned __int8 a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v96 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v94 = *(v9 - 8);
  v95 = v9;
  __chkstk_darwin(v9);
  v11 = &ObjectType - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000589C(&unk_1000BC340, &unk_100091350);
  __chkstk_darwin(v12 - 8);
  v92 = &ObjectType - v13;
  v14 = type metadata accessor for ImageOptions();
  __chkstk_darwin(v14 - 8);
  v16 = &v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind];
  v17 = *&v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind];
  v18 = v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind + 8];
  v19 = v18 == 2 && v17 == 0;
  v93 = &ObjectType - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v19)
  {
    v20 = 0;
    if (a2 == 2 && !a1)
    {
      return;
    }
  }

  else if (v18 >= 2)
  {
    v20 = 0;
  }

  else
  {
    v20 = [v17 thumbnailIdentifier];
  }

  if (a2 > 1u)
  {
    if (v20)
    {
LABEL_17:
      v22 = v20;
LABEL_19:

      sub_10007B4A8(v17, v18);
LABEL_20:
      v24 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_thumbnailLoader;
      v25 = *&v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_thumbnailLoader];
      if (v25)
      {
        [v25 removeListener:v3];
      }

      v26 = *v16;
      if (v16[8])
      {
        if (v16[8] == 1)
        {
          v91 = v24;
          swift_unknownObjectRetain();
          v27 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___title, sub_1000762C8);
          [v27 setLineBreakMode:5];

          v28 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___title;
          [*&v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___title] setAlpha:1.0];
          v29 = *&v3[v28];
          ObjectType = swift_getObjectType();
          v30 = v29;
          v31 = [v26 displayName];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          sub_10007BD74(1);
          v33 = v32;

          [v30 setAttributedText:v33];

          v34 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___titleOverlay, sub_10007653C);
          [v34 setLineBreakMode:5];

          v35 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___titleOverlay;
          [*&v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___titleOverlay] setAlpha:1.0];
          [*&v3[v35] setHidden:0];
          v36 = *&v3[v35];
          v37 = [v26 displayName];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          sub_10007BD74(0);
          v39 = v38;

          [v36 setAttributedText:v39];

          v40 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___subtitle, sub_100076620);
          swift_unknownObjectRetain();
          DOCNode.localizedDate(horizontalSizeClass:preferLastUsedDate:)(UIUserInterfaceSizeClassCompact, 1);
          v41 = String._bridgeToObjectiveC()();

          [v40 setText:v41];

          v42 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___subtitle;
          [*&v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___subtitle] setLineBreakMode:5];
          [*&v3[v42] setAdjustsFontSizeToFitWidth:1];
          [*&v3[v42] setAlpha:1.0];
          [v3 setUserInteractionEnabled:1];
          v43 = sub_1000754BC();
          v44 = *&v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_layoutScale];
          v45 = v43 * v44;
          v46 = *&v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___baseThumbnailContainerSize + 8];
          v47 = [v3 traitCollection];
          v48 = [v3 traitCollection];
          [v48 displayScale];
          v50 = v49;

          if (v45 <= 0.0 || v44 * v46 <= 0.0 || v50 <= 0.0)
          {

            sub_10007B4A8(v26, 1u);
            v51 = 0;
          }

          else
          {
            sub_10007B494(v26, 1u);
            nullsub_1();
            swift_unknownObjectRetain();
            UITraitCollection._ifColorForIconFolderTintComponents.getter();
            ImageOptions.init(size:scale:isFolded:folderTintComponents:)();
            if (qword_1000BB738 != -1)
            {
              swift_once();
            }

            objc_allocWithZone(type metadata accessor for NodeThumbnail());

            v51 = NodeThumbnail.init(node:imageOptions:imageCache:)();
            NodeThumbnail.addListener(_:)();
            sub_10007B4A8(v26, 1u);

            sub_10007B4A8(v26, 1u);
          }

          v81 = v91;
          *&v3[v91] = v51;
          swift_unknownObjectRelease();
          if ([v26 isFolder])
          {
            if (qword_1000BB740 != -1)
            {
              swift_once();
            }

            v93 = qword_1000BF180;
            v82 = swift_allocObject();
            *(v82 + 16) = v3;
            aBlock[4] = sub_10007C2C4;
            aBlock[5] = v82;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_10000D508;
            aBlock[3] = &unk_1000B01A0;
            v83 = _Block_copy(aBlock);
            v84 = v3;
            static DispatchQoS.unspecified.getter();
            v97 = _swiftEmptyArrayStorage;
            sub_10007C350(&qword_1000BC400, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
            sub_10000589C(&unk_1000BCE30, &unk_100090E70);
            sub_10007D18C(&qword_1000BC410, &unk_1000BCE30, &unk_100090E70);
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v83);
            sub_10007B4A8(v26, 1u);
            (*(v96 + 8))(v8, v6);
            (*(v94 + 8))(v11, v95);
          }

          else
          {
            v87 = *&v3[v81];
            if (v87)
            {
              v88 = [v87 thumbnail];
            }

            else
            {
              v88 = 0;
            }

            sub_10007776C(v88, 0);
            sub_10007B4A8(v26, 1u);
          }
        }

        else
        {
          v71 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView, sub_100075AFC);
          v72 = [v71 layer];

          [v72 setBorderWidth:0.0];
          v73 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView;
          [*&v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView] setImage:0];
          [*&v3[v73] setHidden:1];
          v74 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___title, sub_1000762C8);
          [v74 setAttributedText:0];

          v75 = *&v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___title];
          v76 = String._bridgeToObjectiveC()();
          [v75 setText:v76];

          v77 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___titleOverlay, sub_10007653C);
          [v77 setHidden:1];

          [*&v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___titleOverlay] setAttributedText:0];
          v78 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___subtitle, sub_100076620);
          v79 = String._bridgeToObjectiveC()();
          [v78 setText:v79];

          [v3 setUserInteractionEnabled:0];
          v80 = sub_100075A44();
          [v80 setImage:0];
        }
      }

      else
      {
        swift_unknownObjectRetain();
        v52 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___title, sub_1000762C8);
        [v52 setAttributedText:0];

        v53 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___title;
        v54 = *&v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___title];
        v55._countAndFlagsBits = 3081666804;
        v55._object = 0xA400000000000000;
        String.init(repeating:count:)(v55, 32);
        v56 = String._bridgeToObjectiveC()();

        [v54 setText:v56];

        [*&v3[v53] setLineBreakMode:1];
        [*&v3[v53] setAlpha:0.08];
        v57 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___titleOverlay, sub_10007653C);
        [v57 setHidden:1];

        [*&v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___titleOverlay] setAttributedText:0];
        v58 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___subtitle, sub_100076620);
        v59._countAndFlagsBits = 3081666804;
        v59._object = 0xA400000000000000;
        String.init(repeating:count:)(v59, 8);
        v60 = String._bridgeToObjectiveC()();

        [v58 setText:v60];

        v61 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___subtitle;
        [*&v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___subtitle] setLineBreakMode:1];
        [*&v3[v61] setAlpha:0.08];
        [v3 setUserInteractionEnabled:1];
        v62 = sub_1000754BC();
        v63 = *&v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_layoutScale];
        v64 = v62 * v63;
        v65 = *&v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___baseThumbnailContainerSize + 8];
        swift_unknownObjectRetain();
        v66 = [v3 traitCollection];
        v67 = [v3 traitCollection];
        [v67 displayScale];
        v69 = v68;

        if (v64 <= 0.0 || v63 * v65 <= 0.0 || v69 <= 0.0)
        {

          sub_10007B4A8(v26, 0);
          v70 = 0;
        }

        else
        {
          sub_10007B494(v26, 0);
          nullsub_1();
          swift_unknownObjectRetain();
          UITraitCollection._ifColorForIconFolderTintComponents.getter();
          ImageOptions.init(size:scale:isFolded:folderTintComponents:)();
          if (qword_1000BB738 != -1)
          {
            swift_once();
          }

          objc_allocWithZone(type metadata accessor for NodeThumbnail());

          v70 = NodeThumbnail.init(node:imageOptions:imageCache:)();
          NodeThumbnail.addListener(_:)();
          sub_10007B4A8(v26, 0);

          sub_10007B4A8(v26, 0);
        }

        *&v3[v24] = v70;
        swift_unknownObjectRelease();
        v85 = *&v3[v24];
        if (v85)
        {
          v86 = [v85 thumbnail];
        }

        else
        {
          v86 = 0;
        }

        sub_10007776C(v86, 1);

        v89 = sub_100075A44();
        [v89 setImage:0];

        sub_10007B4A8(v26, 0);
      }

      sub_100077D0C();
      return;
    }
  }

  else
  {
    v21 = [a1 thumbnailIdentifier];
    v22 = v21;
    if (v20)
    {
      if (v21)
      {
        sub_10001A2A8(0, &unk_1000BD128, DOCNodeThumbnailIdentifier_ptr);
        v23 = static NSObject.== infix(_:_:)();

        sub_10007B4A8(v17, v18);
        if (v23)
        {
          return;
        }

        goto LABEL_20;
      }

      goto LABEL_17;
    }

    if (v21)
    {
      goto LABEL_19;
    }
  }

  sub_10007B4A8(v17, v18);
}

void sub_10007776C(void *a1, char a2)
{
  v3 = v2;
  if (!a1 || ([a1 size], v6 == 0.0) || (v8 = v7, v7 == 0.0))
  {
    v13 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView, sub_100075AFC);
    [v13 setImage:0];

    v14 = *(v3 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView);

    [v14 setHidden:1];
  }

  else
  {
    v9 = v6;
    v10 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_thumbnailRatioConstraint;
    v11 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_thumbnailRatioConstraint);
    if (v11)
    {
      [v11 setActive:0];
      v12 = *(v2 + v10);
    }

    else
    {
      v12 = 0;
    }

    *(v2 + v10) = 0;

    v15 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView, sub_100075AFC);
    v16 = [v15 widthAnchor];

    v17 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView;
    v18 = [*(v3 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView) heightAnchor];
    v19 = [v16 constraintEqualToAnchor:v18 multiplier:v9 / v8];

    [v19 setActive:1];
    v20 = *(v3 + v10);
    *(v3 + v10) = v19;
    v24 = v19;

    if (a2)
    {
      v21 = [objc_opt_self() systemBackgroundColor];
      sub_100075018(v9, v8);
      v23 = v22;

      [*(v3 + v17) setImage:v23];
    }

    else
    {
      [*(v3 + v17) setImage:a1];
    }

    [*(v3 + v17) setHidden:0];
  }
}

uint64_t sub_1000779F4(char *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v18 = *(v5 - 8);
  v19 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&a1[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_thumbnailLoader];
  if (v9)
  {
    v10 = [v9 thumbnail];
  }

  else
  {
    v10 = 0;
  }

  sub_10001A2A8(0, &unk_1000BCE20, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v10;
  aBlock[4] = sub_10007C324;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000D508;
  aBlock[3] = &unk_1000B01F0;
  v13 = _Block_copy(aBlock);
  v14 = v10;
  v15 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10007C350(&qword_1000BC400, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000589C(&unk_1000BCE30, &unk_100090E70);
  sub_10007D18C(&qword_1000BC410, &unk_1000BCE30, &unk_100090E70);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v20 + 8))(v4, v2);
  return (*(v18 + 8))(v8, v19);
}

void sub_100077D0C()
{
  v1 = *&v0[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind];
  if (!v0[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind + 8])
  {
    swift_unknownObjectRetain();
    v11 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView, sub_100075AFC);
    v12 = [v11 layer];

    v13 = objc_opt_self();
    v14 = [v0 traitCollection];
    [v13 separatorThicknessForTraitCollection:v14];
    v16 = v15;

    [v12 setBorderWidth:v16];
    v9 = v1;
    v10 = 0;
LABEL_9:

    sub_10007B4A8(v9, v10);
    return;
  }

  if (v0[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind + 8] == 1)
  {
    v2 = 0.0;
    if (([swift_unknownObjectRetain() isFolder] & 1) == 0)
    {
      v3 = *&v0[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_thumbnailLoader];
      if (v3)
      {
        if ([v3 isRepresentativeIcon])
        {
          v4 = objc_opt_self();
          v5 = [v0 traitCollection];
          [v4 separatorThicknessForTraitCollection:v5];
          v2 = v6;
        }
      }
    }

    v7 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView, sub_100075AFC);
    v8 = [v7 layer];

    [v8 setBorderWidth:v2];
    v9 = v1;
    v10 = 1;
    goto LABEL_9;
  }

  v17 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView, sub_100075AFC);
  v18 = [v17 layer];

  [v18 setBorderWidth:0.0];
}

char *sub_100077F88(uint64_t a1, uint64_t a2, char a3, char a4, double a5, double a6, double a7, double a8, double a9)
{
  ObjectType = swift_getObjectType();
  *&v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___listBackground] = 0;
  v20 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_listBackgroundBlurEffect;
  *&v9[v20] = [objc_opt_self() effectWithStyle:7];
  v21 = &v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___cornerRadius];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___baseThumbnailContainerSize];
  *v22 = 0;
  *(v22 + 1) = 0;
  v22[16] = 1;
  v23 = &v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_idealThumbnailSizeGrid];
  *&v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_idealThumbnailSizeGrid] = xmmword_100091210;
  *&v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_idealThumbnailSizeList] = xmmword_100091220;
  *&v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_thumbnailRatioConstraint] = 0;
  *&v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailContainer] = 0;
  *&v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView] = 0;
  *&v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___badge] = 0;
  *&v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___titleWidthConstraint] = 0;
  *&v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___subtitleWidthConstraint] = 0;
  *&v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___labelContainer] = 0;
  *&v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___title] = 0;
  *&v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___titleOverlay] = 0;
  *&v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___subtitle] = 0;
  *&v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_thumbnailLoader] = 0;
  v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_selected] = 0;
  *&v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v24 = &v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind];
  *v24 = 0;
  v24[8] = 2;
  *&v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_layoutScale] = a9;
  v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_useListLayout] = a4;
  if ((a3 & 1) == 0)
  {
    *v23 = a1;
    v23[1] = a2;
  }

  v91.receiver = v9;
  v91.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v91, "initWithFrame:", a5, a6, a7, a8);
  v26 = v25;
  if (a4)
  {
    v27 = [v25 layer];
    [v27 setAllowsGroupBlending:0];

    v28 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___listBackground, sub_1000751CC);
    [v26 addSubview:v28];

    isa = DOCConstraintsToResizeWithSuperview();
    if (!isa)
    {
      sub_10001A2A8(0, &qword_1000BB900, NSLayoutConstraint_ptr);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    [objc_opt_self() activateConstraints:isa];
  }

  v30 = v26;
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 clearColor];
  [v32 setBackgroundColor:v33];

  v34 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailContainer, sub_100075514);
  [v32 addSubview:v34];

  v35 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___labelContainer, sub_100075C40);
  [v32 addSubview:v35];

  if (a4)
  {

    v90 = objc_opt_self();
    sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_100091240;
    v37 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailContainer;
    v38 = [*&v32[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailContainer] leadingAnchor];
    v39 = [v32 leadingAnchor];
    v40 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_layoutScale;
    v41 = [v38 constraintEqualToAnchor:v39 constant:*&v32[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_layoutScale] * 6.0];

    *(v36 + 32) = v41;
    v42 = &selRef_centerYAnchor;
    v43 = [*&v32[v37] centerYAnchor];
    v44 = [v32 centerYAnchor];

    v45 = [v43 constraintEqualToAnchor:v44];
    *(v36 + 40) = v45;
    v46 = [*&v32[v37] heightAnchor];
    sub_1000754BC();
    v47 = &v32[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___baseThumbnailContainerSize];
    v48 = [v46 constraintLessThanOrEqualToConstant:*&v32[v40] * *&v32[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___baseThumbnailContainerSize + 8]];

    *(v36 + 48) = v48;
    v49 = [*&v32[v37] widthAnchor];
    v50 = [v49 constraintEqualToConstant:*v47 * *&v32[v40]];

    *(v36 + 56) = v50;
    v51 = &v32[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___labelContainer];
    v52 = [*&v32[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___labelContainer] leadingAnchor];
    v53 = [*&v32[v37] trailingAnchor];
    v54 = [v52 constraintEqualToAnchor:v53 constant:*&v32[v40] * 6.0];

    *(v36 + 64) = v54;
    v55 = [*v51 trailingAnchor];
    v56 = [v32 trailingAnchor];

    v57 = [v55 constraintEqualToAnchor:v56 constant:*&v32[v40] * -6.0];
    *(v36 + 72) = v57;
    v58 = (v36 + 80);
  }

  else
  {
    v90 = objc_opt_self();
    sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_100091230;
    v60 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailContainer;
    v61 = [*&v32[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailContainer] leadingAnchor];
    v62 = [v32 leadingAnchor];
    v63 = [v61 constraintEqualToAnchor:v62];

    *(v59 + 32) = v63;
    v64 = [*&v32[v60] trailingAnchor];
    v65 = [v32 trailingAnchor];

    v66 = [v64 constraintEqualToAnchor:v65];
    *(v59 + 40) = v66;
    v67 = [*&v32[v60] topAnchor];
    v68 = [v32 topAnchor];

    v69 = [v67 constraintEqualToAnchor:v68];
    *(v59 + 48) = v69;
    v70 = [*&v32[v60] widthAnchor];
    v71 = sub_1000754BC();
    v72 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_layoutScale;
    v73 = [v70 constraintGreaterThanOrEqualToConstant:v71 * *&v32[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_layoutScale]];

    *(v59 + 56) = v73;
    v51 = &v32[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___labelContainer];
    v74 = [*&v32[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___labelContainer] leadingAnchor];
    v75 = [v32 leadingAnchor];

    v76 = [v74 constraintEqualToAnchor:v75];
    *(v59 + 64) = v76;
    v77 = [*v51 trailingAnchor];
    v78 = [v32 trailingAnchor];

    v79 = [v77 constraintEqualToAnchor:v78];
    *(v59 + 72) = v79;
    v80 = [*v51 topAnchor];
    v42 = &selRef_bottomAnchor;
    v81 = [*&v32[v60] bottomAnchor];
    v82 = [v80 constraintEqualToAnchor:v81 constant:*&v32[v72] * 6.0];

    *(v59 + 80) = v82;
    v58 = (v59 + 88);
  }

  v83 = [*v51 *v42];
  v84 = [v32 *v42];

  v85 = [v83 constraintEqualToAnchor:v84];
  *v58 = v85;
  sub_10001A2A8(0, &qword_1000BB900, NSLayoutConstraint_ptr);
  v86 = Array._bridgeToObjectiveC()().super.isa;

  [v90 activateConstraints:v86];

  v87 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v32 action:"handleTap:"];
  [v32 addGestureRecognizer:v87];
  v88 = [objc_allocWithZone(UIDragInteraction) initWithDelegate:v32];
  [v32 addInteraction:v88];

  return v32;
}

void sub_100078A9C()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "didMoveToWindow");
  v1 = [v0 window];
  if (v1)
  {

    v2 = [v0 traitCollection];
    swift_beginAccess();
    swift_beginAccess();
    v3 = sub_10007B8DC(&qword_1000BCF10, &qword_1000BCF18, v2, UIFontWeightRegular);
    swift_endAccess();
    swift_endAccess();
    v4 = v3;

    v5 = [v0 traitCollection];
    swift_beginAccess();
    swift_beginAccess();
    v6 = sub_10007B8DC(&qword_1000BCF20, &qword_1000BCF28, v5, UIFontWeightRegular);
    swift_endAccess();
    swift_endAccess();
    v7 = v6;

    v8 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___title, sub_1000762C8);
    v9 = v4;
    [v8 setFont:v9];

    v10 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___titleOverlay, sub_10007653C);
    [v10 setFont:v9];

    v11 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___subtitle, sub_100076620);
    [v11 setFont:v7];

    v12 = *&v0[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___title];
    [v12 setNumberOfLines:sub_10007645C()];

    v13 = *&v0[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___titleOverlay];
    [v13 setNumberOfLines:sub_10007645C()];
  }
}

void sub_100078D90()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "layoutSubviews");
  if (*(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_useListLayout) == 1)
  {
    v1 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___listBackground, sub_1000751CC);
    if (*(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_selected))
    {
      v2 = 0.0980392157;
    }

    else
    {
      v2 = 0.152941176;
    }

    v3 = [objc_allocWithZone(UIColor) initWithDisplayP3Red:v2 green:v2 blue:v2 alpha:1.0];
    [v1 setBackgroundColor:v3];
  }

  v4 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView, sub_100075AFC);
  v5 = [v4 layer];

  v6 = [objc_opt_self() separatorColor];
  v7 = [v6 colorWithAlphaComponent:0.15];

  v8 = [v7 CGColor];
  [v5 setBorderColor:v8];

  v9 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___title, sub_1000762C8);
  [v9 setNumberOfLines:sub_10007645C()];

  v10 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___titleOverlay, sub_10007653C);
  [v10 setNumberOfLines:sub_10007645C()];
}

uint64_t sub_10007900C()
{
  type metadata accessor for ImageCache();
  swift_allocObject();
  result = ImageCache.init()();
  qword_1000BF178 = result;
  return result;
}

uint64_t sub_10007904C()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_10001A2A8(0, &unk_1000BCE20, OS_dispatch_queue_ptr);
  static DispatchQoS.userInitiated.getter();
  v8 = _swiftEmptyArrayStorage;
  sub_10007C350(&qword_1000BD138, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000589C(&qword_1000BD140, &unk_100091360);
  sub_10007D18C(&unk_1000BD148, &qword_1000BD140, &unk_100091360);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1000BF180 = result;
  return result;
}

uint64_t sub_1000792AC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind + 8);
    if (v3 <= 1)
    {
      v4 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind);
      swift_getObjectType();
      sub_10007B494(v4, v3);
      v5 = DOCNode.fpfs_syncFetchFPItem()();
      sub_10007B4A8(v4, v3);
      if (v5)
      {
        v6 = v2 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v7 = *(v6 + 8);
          ObjectType = swift_getObjectType();
          (*(v7 + 8))(v2, v5, ObjectType, v7);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10007943C(objc_class *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10000589C(&unk_1000BC340, &unk_100091350);
  __chkstk_darwin(v5 - 8);
  v52 = &v52 - v6;
  v7 = type metadata accessor for ImageOptions();
  __chkstk_darwin(v7 - 8);
  v53 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UITraitCollection.Traits();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55.receiver = v2;
  v55.super_class = ObjectType;
  [(objc_class *)&v55 traitCollectionDidChange:a1, v11];
  v14 = [v2 traitCollection];
  sub_10000589C(&unk_1000BC530, &qword_100090D00);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100090DF0;
  static UITraitCollection.Traits.userInterfaceStyle.getter();
  static UITraitCollection.Traits.displayScale.getter();
  v54 = v15;
  sub_10007C350(&unk_1000BD180, &type metadata accessor for UITraitCollection.Traits, &protocol conformance descriptor for UITraitCollection.Traits);
  sub_10000589C(&unk_1000BC540, &qword_100090D08);
  sub_10007D18C(&unk_1000BD190, &unk_1000BC540, &qword_100090D08);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  LOBYTE(v15) = UITraitCollection.doc_hasChanged(_:comparesTo:)();

  (*(v10 + 8))(v13, v9);
  if ((v15 & 1) != 0 || (v16 = [v2 traitCollection], v56.value.super.isa = a1, v17 = UITraitCollection.traitCollectionTintEqual(_:)(v56), v16, !v17))
  {
    v18 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_thumbnailLoader;
    v19 = *&v2[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_thumbnailLoader];
    if (v19)
    {
      [v19 removeListener:v2];
    }

    v20 = &v2[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind];
    v21 = v2[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind + 8];
    if (v21 >= 2)
    {
      v22 = 0;
    }

    else
    {
      v22 = *v20;
      sub_10007B494(*v20, v21);
    }

    v23 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView, sub_100075AFC);
    [v23 frame];
    v25 = v24;
    v27 = v26;

    v28 = [v2 traitCollection];
    v29 = [v2 traitCollection];
    [v29 displayScale];
    v31 = v30;

    if (v22)
    {
      if (v25 > 0.0 && v27 > 0.0 && v31 > 0.0)
      {
        nullsub_1();
        swift_unknownObjectRetain_n();
        UITraitCollection._ifColorForIconFolderTintComponents.getter();
        ImageOptions.init(size:scale:isFolded:folderTintComponents:)();
        if (qword_1000BB738 != -1)
        {
          swift_once();
        }

        objc_allocWithZone(type metadata accessor for NodeThumbnail());

        v32 = NodeThumbnail.init(node:imageOptions:imageCache:)();
        NodeThumbnail.addListener(_:)();

        swift_unknownObjectRelease_n();
        goto LABEL_17;
      }

      swift_unknownObjectRelease();
    }

    v32 = 0;
LABEL_17:
    *&v2[v18] = v32;
    swift_unknownObjectRelease();
  }

  v33 = [v2 traitCollection];
  swift_beginAccess();
  swift_beginAccess();
  v34 = sub_10007B8DC(&qword_1000BCF10, &qword_1000BCF18, v33, UIFontWeightRegular);
  swift_endAccess();
  swift_endAccess();
  v35 = v34;

  v36 = [v2 traitCollection];
  swift_beginAccess();
  swift_beginAccess();
  v37 = sub_10007B8DC(&qword_1000BCF20, &qword_1000BCF28, v36, UIFontWeightRegular);
  swift_endAccess();
  swift_endAccess();
  v38 = v37;
  v53 = v38;

  v39 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___title, sub_1000762C8);
  v40 = v35;
  [v39 setFont:v40];

  v41 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___titleOverlay, sub_10007653C);
  [v41 setFont:v40];

  v42 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___subtitle, sub_100076620);
  [v42 setFont:v38];

  v43 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___title;
  v44 = [*&v2[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___title] layer];
  v45 = [v2 traitCollection];
  [v45 userInterfaceStyle];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = String._bridgeToObjectiveC()();

  [v44 setCompositingFilter:v46];

  v47 = [*&v2[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___subtitle] layer];
  v48 = [v2 traitCollection];
  [v48 userInterfaceStyle];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = String._bridgeToObjectiveC()();

  [v47 setCompositingFilter:v49];

  v50 = *&v2[v43];
  [v50 setNumberOfLines:sub_10007645C()];

  v51 = *&v2[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___titleOverlay];
  [v51 setNumberOfLines:sub_10007645C()];
}

double sub_100079FDC(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind + 8] <= 1u && [*&v1[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind] isFolder])
  {
    v21 = v4;
    if (qword_1000BB740 != -1)
    {
      swift_once();
    }

    v20[1] = qword_1000BF180;
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = v1;
    aBlock[4] = sub_10007D13C;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000D508;
    aBlock[3] = &unk_1000B0538;
    v13 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v14 = v1;
    static DispatchQoS.unspecified.getter();
    v22 = _swiftEmptyArrayStorage;
    sub_10007C350(&qword_1000BC400, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000589C(&unk_1000BCE30, &unk_100090E70);
    sub_10007D18C(&qword_1000BC410, &unk_1000BCE30, &unk_100090E70);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);
    (*(v21 + 8))(v6, v3);
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    v16 = [a1 thumbnail];
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = a1;
    v18[4] = v16;
    swift_unknownObjectRetain();

    v19 = v16;
    DOCRunInMainThread(_:)();
  }

  return result;
}

void sub_10007A3D8(uint64_t a1, uint64_t a2, void *a3, __n128 a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_thumbnailLoader);
    if (v8)
    {
      v9 = v8 == a2;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      sub_10007776C(a3, *(Strong + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind + 8) == 0);
      sub_100077D0C();
    }
  }
}

double sub_10007A474(void *a1, uint64_t a2)
{
  v3 = [a1 thumbnail];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = v3;

  swift_unknownObjectRetain();
  v6 = v3;
  DOCRunInMainThread(_:)();

  return result;
}

void sub_10007A5B8(uint64_t a1, Swift::UInt a2, Swift::UInt a3)
{
  sub_100042774(a1, v8, &qword_1000BCA30, &unk_100090E80);
  if (v8[3])
  {
    sub_10001A2A8(0, &unk_1000BD158, UIFont_ptr);
    if (swift_dynamicCast())
    {
      if ((CTFontGetSymbolicTraits(font) & 0x2000) != 0)
      {
        v5 = a2;
        v6 = a3;
      }

      else
      {
        v5 = a2;
        v6 = a3;
      }

      sub_100083A7C(v8, v5, v6);
    }
  }

  else
  {
    sub_100006390(v8, &qword_1000BCA30, &unk_100090E80);
  }
}

uint64_t sub_10007A6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_10001A344(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_100006390(v13, &qword_1000BCA30, &unk_100090E80);
}

void sub_10007A758(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_selected;
  v3 = *(a1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_selected);
  *(a1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_selected) = a2;
  if (v3 != (a2 & 1) && (*(a1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_useListLayout) & 1) != 0)
  {
    v5 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___listBackground, sub_1000751CC);
    if (*(a1 + v2))
    {
      v6 = 0.0980392157;
    }

    else
    {
      v6 = 0.152941176;
    }

    v7 = [objc_allocWithZone(UIColor) initWithDisplayP3Red:v6 green:v6 blue:v6 alpha:1.0];
    [v5 setBackgroundColor:v7];
  }
}

void sub_10007AA48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  ObjectType = swift_getObjectType();
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10001A2A8(0, &qword_1000BD168, UITouch_ptr);
    sub_10007D008();
    Set.Iterator.init(_cocoa:)();
    v4 = aBlock[6];
    v5 = aBlock[7];
    v6 = aBlock[8];
    v7 = aBlock[9];
    v8 = aBlock[10];
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v4 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  while (v4 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
LABEL_19:
      LOBYTE(v13) = 0;
LABEL_20:
      sub_100042A9C(v4);
      v27 = objc_opt_self();
      v28 = swift_allocObject();
      *(v28 + 16) = v3;
      *(v28 + 24) = v13;
      aBlock[4] = sub_10007D22C;
      aBlock[5] = v28;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000D508;
      aBlock[3] = &unk_1000B03F8;
      v29 = _Block_copy(aBlock);
      v30 = v3;

      [v27 animateWithDuration:v29 animations:0.1];
      _Block_release(v29);
      sub_10001A2A8(0, &qword_1000BD168, UITouch_ptr);
      sub_10007D008();
      isa = Set._bridgeToObjectiveC()().super.isa;
      v35.receiver = v30;
      v35.super_class = ObjectType;
      objc_msgSendSuper2(&v35, "touchesMoved:withEvent:", isa, a2);

      return;
    }

    sub_10001A2A8(0, &qword_1000BD168, UITouch_ptr);
    swift_dynamicCast();
    v13 = aBlock[0];
    if (!aBlock[0])
    {
      goto LABEL_20;
    }

LABEL_9:
    [v3 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    [v13 locationInView:v3];
    v37.x = v22;
    v37.y = v23;
    v38.origin.x = v15;
    v38.origin.y = v17;
    v38.size.width = v19;
    v38.size.height = v21;
    v24 = CGRectContainsPoint(v38, v37);

    if (v24)
    {
      LOBYTE(v13) = 1;
      goto LABEL_20;
    }
  }

  v25 = v7;
  v26 = v8;
  if (v8)
  {
LABEL_8:
    v8 = (v26 - 1) & v26;
    v13 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v26)))));
    if (!v13)
    {
      goto LABEL_20;
    }

    goto LABEL_9;
  }

  while (1)
  {
    v7 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_19;
    }

    v26 = *(v5 + 8 * v7);
    ++v25;
    if (v26)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_10007AE9C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  ObjectType = swift_getObjectType();
  sub_10001A2A8(0, &qword_1000BD168, UITouch_ptr);
  sub_10007D008();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = 0;
  aBlock[4] = a6;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000D508;
  aBlock[3] = a7;
  v15 = _Block_copy(aBlock);
  v16 = a1;
  v17 = a4;

  [v13 animateWithDuration:v15 animations:0.1];
  _Block_release(v15);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v20.receiver = v16;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, *a8, isa, v17);
}

uint64_t sub_10007B2A0(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_10007B2BC(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10007B2D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10007B318(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_10007B35C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_10007B384(void *a1, unsigned __int8 a2, void *a3, unsigned __int8 a4)
{
  if (a2 == 2 && a1 == 0)
  {
    v8 = 0;
    if (a4 == 2 && !a3)
    {
      goto LABEL_21;
    }
  }

  else if (a2 > 1u)
  {
    v8 = 0;
  }

  else
  {
    v5 = a3;
    v6 = a4;
    v7 = [a1 thumbnailIdentifier];
    a4 = v6;
    a3 = v5;
    v8 = v7;
  }

  if (a4 > 1u)
  {
    if (v8)
    {
      goto LABEL_16;
    }

LABEL_21:
    v11 = 1;
    return v11 & 1;
  }

  v9 = [a3 thumbnailIdentifier];
  v10 = v9;
  if (!v8)
  {
    if (v9)
    {
      v11 = 0;
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  if (!v9)
  {
LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  sub_10001A2A8(0, &unk_1000BD128, DOCNodeThumbnailIdentifier_ptr);
  v11 = static NSObject.== infix(_:_:)();

LABEL_17:
  v10 = v8;
LABEL_18:

  return v11 & 1;
}

double sub_10007B494(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_10007B4A8(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return swift_unknownObjectRelease();
  }

  return v2;
}

unint64_t sub_10007B4BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000589C(&qword_1000BD1B0, &unk_100091390);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_100052AAC();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_10007B5AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000589C(&qword_1000BD1A8, &qword_100091388);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100042774(v4, &v11, &qword_1000BB928, &qword_100091380);
      v5 = v11;
      result = sub_100052AAC();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10001A344(&v12, (v3[7] + 32 * result));
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

unint64_t sub_10007B6D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000589C(&unk_1000BCAD0, &unk_100091020);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100037A68(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_10007B7D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000589C(&qword_1000BCAC0, &qword_100091010);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100037A68(v5, v6);
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

id sub_10007B8DC(id *a1, void **a2, void *a3, double a4)
{
  v34 = a3;
  v7 = type metadata accessor for UITraitCollection.Traits();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000589C(&unk_1000BC530, &qword_100090D00);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100090DF0;
  static UITraitCollection.Traits.sizeCategory.getter();
  static UITraitCollection.Traits.legibilityWeight.getter();
  v35 = v11;
  sub_10007C350(&unk_1000BD180, &type metadata accessor for UITraitCollection.Traits, &protocol conformance descriptor for UITraitCollection.Traits);
  sub_10000589C(&unk_1000BC540, &qword_100090D08);
  sub_10007D18C(&unk_1000BD190, &unk_1000BC540, &qword_100090D08);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v33 = a2;
  v12 = *a2;
  v13 = v34;
  v14 = UITraitCollection.doc_hasChanged(_:comparesTo:)();
  (*(v8 + 8))(v10, v7);
  v15 = *a1;
  if (*a1)
  {
    if ((v14 & 1) == 0)
    {
      return v15;
    }
  }

  v16 = UITraitCollection.modifyingTraits(_:)();
  v17 = objc_opt_self();
  v18 = [v17 preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption2 compatibleWithTraitCollection:v16];
  sub_10000589C(&unk_1000BB910, &qword_10008FB30);
  inited = swift_initStackObject();
  v32 = xmmword_10008F930;
  *(inited + 16) = xmmword_10008F930;
  *(inited + 32) = UIFontWeightTrait;
  *(inited + 40) = a4;
  v20 = UIFontWeightTrait;
  v21 = sub_10007B4BC(inited);
  swift_setDeallocating();
  sub_100006390(inited + 32, &qword_1000BD1A0, &qword_10008FB38);
  v22 = [v17 preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption2 compatibleWithTraitCollection:v13];
  sub_10000589C(&qword_1000BB908, &unk_100091370);
  v23 = swift_initStackObject();
  *(v23 + 16) = v32;
  *(v23 + 32) = UIFontDescriptorTraitsAttribute;
  *(v23 + 64) = sub_10000589C(&qword_1000BB920, &unk_10008FB40);
  *(v23 + 40) = v21;
  v24 = UIFontDescriptorTraitsAttribute;
  sub_10007B5AC(v23);
  swift_setDeallocating();
  sub_100006390(v23 + 32, &qword_1000BB928, &qword_100091380);
  type metadata accessor for AttributeName(0);
  sub_10007C350(&qword_1000BB930, type metadata accessor for AttributeName, &unk_100090390);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v26 = [v22 fontDescriptorByAddingAttributes:isa];

  [v22 pointSize];
  v28 = v27;
  [v18 pointSize];
  if (v29 < v28)
  {
    v28 = v29;
  }

  v15 = [objc_opt_self() fontWithDescriptor:v26 size:v28];

  *a1 = v15;
  *v33 = v13;
  v30 = v13;
  return v15;
}

void sub_10007BD74(char a1)
{
  v40 = &_swiftEmptySetSingleton;
  v41 = &_swiftEmptySetSingleton;
  v2 = objc_allocWithZone(NSMutableAttributedString);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithString:v3];

  v5 = [v4 length];
  [v4 fixAttributesInRange:{0, v5}];
  v6 = swift_allocObject();
  *(v6 + 16) = &v40;
  *(v6 + 24) = &v41;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10007C398;
  *(v7 + 24) = v6;
  v38 = sub_10007C3B0;
  v39 = v7;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_10007A6AC;
  v37 = &unk_1000B0268;
  v8 = _Block_copy(&aBlock);

  [v4 enumerateAttribute:NSFontAttributeName inRange:0 options:v5 usingBlock:{0, v8}];

  _Block_release(v8);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v33 = a1;
  v9 = v40;

  v40 = &_swiftEmptySetSingleton;
  v41 = &_swiftEmptySetSingleton;
  v10 = objc_allocWithZone(NSMutableAttributedString);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithString:v11];

  v13 = [v12 length];
  [v12 fixAttributesInRange:{0, v13}];
  v14 = swift_allocObject();
  *(v14 + 16) = &v40;
  *(v14 + 24) = &v41;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10007D204;
  *(v15 + 24) = v14;
  v38 = sub_10007D208;
  v39 = v15;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_10007A6AC;
  v37 = &unk_1000B02E0;
  v16 = _Block_copy(&aBlock);

  [v12 enumerateAttribute:NSFontAttributeName inRange:0 options:v13 usingBlock:{0, v16}];

  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v18 = v41;

    v19 = objc_allocWithZone(NSMutableAttributedString);
    v20 = String._bridgeToObjectiveC()();
    v21 = [v19 initWithString:v20];

    if ((v33 & 1) == 0)
    {
      v9 = v18;
    }

    v22 = 0;
    v23 = 1 << v9[32];
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v9 + 7);
    v26 = (v23 + 63) >> 6;
    while (v25)
    {
LABEL_13:
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v29 = (*(v9 + 6) + ((v22 << 10) | (16 * v28)));
      v30 = v29[1];
      if (v30 > 0)
      {
        v31 = *v29;
        v32 = [objc_opt_self() clearColor];
        [v21 addAttribute:NSForegroundColorAttributeName value:v32 range:{v31, v30}];
      }
    }

    while (1)
    {
      v27 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v27 >= v26)
      {

        return;
      }

      v25 = *&v9[8 * v27 + 56];
      ++v22;
      if (v25)
      {
        v22 = v27;
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_10007C28C()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10007C2CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10007C2E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007C350(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10007C3D8()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_10007C410(void *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  [*(v1 + 16) setFill];

  return [a1 fillRect:{0.0, 0.0, v3, v4}];
}

void sub_10007C4A0()
{
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___listBackground) = 0;
  v1 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_listBackgroundBlurEffect;
  *(v0 + v1) = [objc_opt_self() effectWithStyle:7];
  v2 = v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___cornerRadius;
  *v2 = 0;
  *(v2 + 8) = 1;
  v3 = v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___baseThumbnailContainerSize;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_idealThumbnailSizeGrid) = xmmword_100091210;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_idealThumbnailSizeList) = xmmword_100091220;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_thumbnailRatioConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailContainer) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___badge) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___titleWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___subtitleWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___labelContainer) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___title) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___titleOverlay) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___subtitle) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_thumbnailLoader) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_selected) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v4 = v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind;
  *v4 = 0;
  *(v4 + 8) = 2;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *sub_10007C650(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Widget.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100037B98(0xD000000000000025, 0x8000000100094B60, &v19);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s", v9, 0xCu);
    sub_1000064E0(v10);
  }

  (*(v4 + 8))(v6, v3);
  v11 = (v2 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind);
  v12 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind + 8);
  if (v12 >= 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v13 = *v11;
  swift_getObjectType();
  sub_10007B494(v13, v12);
  if ((DOCNode.supportsDrag.getter() & 1) != 0 && (v14 = DOCNode.dragItemFor(session:supportsPickingFolders:)()) != 0)
  {
    v15 = v14;
    sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
    v16 = swift_allocObject();
    *(v16 + 1) = xmmword_10008F940;
    v16[4] = v15;
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  sub_10007B4A8(v13, v12);
  return v16;
}

void *sub_10007C8AC(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v31 - v8;
  static Logger.Widget.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100037B98(0xD000000000000030, 0x8000000100094B20, &v33);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s", v12, 0xCu);
    sub_1000064E0(v13);
  }

  v14 = *(v4 + 8);
  v14(v9, v3);
  sub_10001A2A8(0, &unk_1000BC470, FPItem_ptr);
  if (static FPItem.sessionContainsDOCNode(_:)())
  {
    v15 = v2[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind + 8];
    if (v15 <= 1)
    {
      v16 = *&v2[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind];
      swift_getObjectType();
      sub_10007B494(v16, v15);
      if (DOCNode.supportsDrag.getter())
      {
        v17 = DOCNode.dragItemFor(session:supportsPickingFolders:)();
        if (v17)
        {
          v18 = v17;
          sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_10008F940;
          *(v19 + 32) = v18;
          sub_10007B4A8(v16, v15);
          return v19;
        }
      }

      sub_10007B4A8(v16, v15);
    }
  }

  else
  {
    static Logger.Widget.getter();
    v21 = v2;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = v32;
      *v24 = 136315394;
      *(v24 + 4) = sub_100037B98(0xD000000000000030, 0x8000000100094B20, &v33);
      *(v24 + 12) = 2080;
      v25 = v21;
      v26 = [v25 description];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31[1] = v4;
      v29 = v28;

      v30 = sub_100037B98(v27, v29, &v33);

      *(v24 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v22, v23, "%s Item %s cannot be added to the drag because it is already part of the drag", v24, 0x16u);
      swift_arrayDestroy();
    }

    v14(v6, v3);
  }

  return _swiftEmptyArrayStorage;
}

id sub_10007CCCC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Widget.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100037B98(0xD00000000000002DLL, 0x8000000100094AF0, &v29);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s", v8, 0xCu);
    sub_1000064E0(v9);
  }

  (*(v3 + 8))(v5, v2);
  v10 = [objc_allocWithZone(UIDragPreviewParameters) init];
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 clearColor];
  [v12 setBackgroundColor:v13];

  v14 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView, sub_100075AFC);
  [v14 frame];
  v16 = v15;
  v18 = v17;

  if (v16 != 0.0 || v18 != 0.0)
  {
    v19 = (v1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind);
    v20 = *(v1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind + 8);
    if (v20 <= 1)
    {
      v21 = *v19;
      if ([*v19 isFolder])
      {
        sub_10001A2A8(0, &qword_1000BC460, UIBezierPath_ptr);
        v22 = static UIBezierPath.path(for:thumbnailSize:)();
        [v12 setVisiblePath:v22];
      }

      sub_10007B4A8(v21, v20);
    }
  }

  v23 = *(v1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView);
  v24 = objc_allocWithZone(UITargetedDragPreview);
  v25 = v23;
  v26 = [v24 initWithView:v25 parameters:v12];

  return v26;
}

unint64_t sub_10007D008()
{
  result = qword_1000BD170;
  if (!qword_1000BD170)
  {
    sub_10001A2A8(255, &qword_1000BD168, UITouch_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BD170);
  }

  return result;
}

uint64_t sub_10007D070()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10007D0B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007D0FC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007D144()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10007D18C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000143B0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10007D258(uint64_t *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  v8 = *a1;
  v9 = *(v7 + *a1);
  if (v9)
  {
    v10 = *(v7 + *a1);
  }

  else
  {
    v11 = sub_10007F4AC(a2, a3, a4, a5, a6, a7);
    v12 = *(v7 + v8);
    *(v7 + v8) = v11;
    v10 = v11;

    v9 = 0;
  }

  v13 = v9;
  return v10;
}

id sub_10007D2B8()
{
  v1 = OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___footerBackgroundView;
  v2 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___footerBackgroundView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___footerBackgroundView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = [objc_allocWithZone(UIColor) initWithDisplayP3Red:0.152941176 green:0.152941176 blue:0.152941176 alpha:1.0];
    [v4 setBackgroundColor:v5];

    v6 = [v4 layer];

    v7 = String._bridgeToObjectiveC()();

    [v6 setCompositingFilter:v7];

    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_10007D40C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_cellSpacing] = 0x4020000000000000;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_itemRows] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_itemCells] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_rowBackgroundViews] = _swiftEmptyArrayStorage;
  v10 = &v4[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_lastLayoutSize];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_rowSideMargin] = 0x402A000000000000;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_footerBackgroundViewHeightConstraint] = 0;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___backgroundRowContainerStackView] = 0;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___listStackView] = 0;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___footerBackgroundView] = 0;
  v11 = &v4[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_blendMode];
  *v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11[1] = v12;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_items] = _swiftEmptyArrayStorage;
  v4[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_isMasked] = 0;
  v56.receiver = v4;
  v56.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v56, "initWithFrame:", a1, a2, a3, a4);
  v14 = sub_10007D258(&OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___backgroundRowContainerStackView, 0, 0.0, 0.0, 0.0, 0.0, 0.0);
  [v13 addSubview:v14];

  v15 = sub_10007D2B8();
  [v13 addSubview:v15];

  v16 = [v13 layer];
  [v16 setAllowsGroupBlending:0];

  v17 = OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___backgroundRowContainerStackView;
  v18 = [*&v13[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___backgroundRowContainerStackView] layer];
  [v18 setAllowsGroupBlending:0];

  v19 = OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___footerBackgroundView;
  v20 = [*&v13[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___footerBackgroundView] heightAnchor];
  [v13 frame];
  v23 = 31.0;
  if (v21 < 200.0 && v21 <= 539.0 && v22 <= 200.0)
  {
    [v13 frame];
    v23 = 23.0;
    if (v24 <= 136.0)
    {
      v23 = 20.0;
    }
  }

  v25 = [v20 constraintEqualToConstant:v23];

  v55 = OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_footerBackgroundViewHeightConstraint;
  v26 = *&v13[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_footerBackgroundViewHeightConstraint];
  *&v13[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_footerBackgroundViewHeightConstraint] = v25;

  sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100091230;
  v28 = [*&v13[v17] topAnchor];
  v29 = [v13 topAnchor];

  v30 = [v28 constraintEqualToAnchor:v29];
  *(v27 + 32) = v30;
  v31 = [*&v13[v17] leadingAnchor];
  v32 = [v13 leadingAnchor];

  v33 = [v31 constraintEqualToAnchor:v32];
  *(v27 + 40) = v33;
  v34 = [*&v13[v17] trailingAnchor];
  v35 = [v13 trailingAnchor];

  v36 = [v34 constraintEqualToAnchor:v35];
  *(v27 + 48) = v36;
  v37 = [*&v13[v19] topAnchor];
  v38 = [*&v13[v17] bottomAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];

  *(v27 + 56) = v39;
  v40 = [*&v13[v19] leadingAnchor];
  v41 = [v13 leadingAnchor];

  v42 = [v40 constraintEqualToAnchor:v41];
  *(v27 + 64) = v42;
  v43 = [*&v13[v19] trailingAnchor];
  v44 = [v13 trailingAnchor];

  v45 = [v43 constraintEqualToAnchor:v44];
  *(v27 + 72) = v45;
  v46 = [*&v13[v19] bottomAnchor];
  v47 = [v13 bottomAnchor];

  v48 = [v46 constraintEqualToAnchor:v47];
  *(v27 + 80) = v48;
  v49 = *&v13[v55];
  if (v49)
  {
    v50 = objc_opt_self();
    *(v27 + 88) = v49;
    sub_10001A2A8(0, &qword_1000BB900, NSLayoutConstraint_ptr);
    v51 = v49;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v50 activateConstraints:isa];

    v53 = sub_10007D258(&OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___listStackView, 1, 8.0, 8.0, 8.0, 8.0, 8.0);
    [v13 addSubview:v53];

    v54 = DOCConstraintsToResizeWithSuperview();
    if (!v54)
    {
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = Array._bridgeToObjectiveC()().super.isa;
    }

    [v50 activateConstraints:v54];
  }

  else
  {
    __break(1u);
  }
}

id sub_10007DB70()
{
  ObjectType = swift_getObjectType();
  [v0 frame];
  Width = CGRectGetWidth(v36);
  [v0 frame];
  Height = CGRectGetHeight(v37);
  [v0 frame];
  v4 = CGRectGetHeight(v38);
  [v0 frame];
  v5 = CGRectGetWidth(v39);
  v6 = &v0[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_lastLayoutSize];
  v7 = *&v0[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_lastLayoutSize];
  v8 = *&v0[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_lastLayoutSize + 8];
  v9 = v0[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_lastLayoutSize + 16];
  [v0 frame];
  if ((v9 & 1) != 0 || (v7 == v10 ? (v12 = v8 == v11) : (v12 = 0), !v12))
  {
    if ((v6[2] & 1) != 0 || ((v13 = floor(v5), *v6 == floor(v4)) ? (v14 = v6[1] == v13) : (v14 = 0), !v14))
    {
      v15 = floor(Width);
      v16 = floor(Height);
      [v0 frame];
      if (v17 <= 539.0)
      {
        if (v18 <= 200.0)
        {
          v23 = v17;
          v24.n128_f64[0] = sub_10007DE68(v0);
          sub_10007E010(v0, v24);
          v20 = 2;
          if (v23 >= 200.0)
          {
            sub_10007ED90(2, v0);
LABEL_19:
            *v6 = v15;
            v6[1] = v16;
            *(v6 + 16) = 0;
            goto LABEL_20;
          }

          v21 = 2;
        }

        else
        {
          v22.n128_f64[0] = sub_10007DE68(v0);
          sub_10007E010(v0, v22);
          v20 = 3;
          v21 = 3;
        }
      }

      else
      {
        v19.n128_f64[0] = sub_10007DE68(v0);
        sub_10007E010(v0, v19);
        v20 = 3;
        v21 = 5;
      }

      sub_10007E298(v20, v21, v0);
      goto LABEL_19;
    }
  }

LABEL_20:
  [v0 frame];
  v27 = 31.0;
  if (v25 < 200.0 && v25 <= 539.0 && v26 <= 200.0)
  {
    [v0 frame];
    v27 = 23.0;
    if (v28 <= 136.0)
    {
      v27 = 20.0;
    }
  }

  v29 = *&v0[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_footerBackgroundViewHeightConstraint];
  if (v29)
  {
    [v29 setConstant:v27];
  }

  v30 = OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_itemCells;
  swift_beginAccess();
  v31 = *&v0[v30];
  v32 = *&v0[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_items];
  v33 = v0[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_isMasked];

  sub_10007F744(v31, v32, v33);

  v35.receiver = v0;
  v35.super_class = ObjectType;
  return objc_msgSendSuper2(&v35, "layoutSubviews");
}

double sub_10007DE68(uint64_t a1)
{
  v2 = sub_10007D258(&OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___backgroundRowContainerStackView, 0, 0.0, 0.0, 0.0, 0.0, 0.0);
  v3 = [v2 arrangedSubviews];

  sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    v7 = OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___backgroundRowContainerStackView;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      [*(a1 + v7) removeArrangedSubview:v8];
      [v9 removeFromSuperview];

      ++v6;
      if (v10 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v11 = OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_rowBackgroundViews;
  swift_beginAccess();
  *(a1 + v11) = _swiftEmptyArrayStorage;

  return result;
}

double sub_10007E010(uint64_t a1, __n128 a2)
{
  v3 = OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_itemRows;
  swift_beginAccess();
  v19 = a1;
  v4 = *(a1 + v3);
  if (v4 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (i)
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        [v7 removeFromSuperview];

        ++v6;
        if (v9 == i)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_12:

    *(v19 + v3) = _swiftEmptyArrayStorage;

    v10 = OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_itemCells;
    swift_beginAccess();
    *(v19 + v10) = _swiftEmptyArrayStorage;

    v11 = sub_10007D258(&OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___listStackView, 1, 8.0, 8.0, 8.0, 8.0, 8.0);
    v12 = [v11 arrangedSubviews];

    sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v4 >> 62))
    {
      v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v13)
      {
        break;
      }

      goto LABEL_14;
    }

    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (!v13)
    {
      break;
    }

LABEL_14:
    v14 = 0;
    v3 = OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___listStackView;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v15 = *(v4 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      [*(v19 + v3) removeArrangedSubview:v15];
      [v16 removeFromSuperview];

      ++v14;
      if (v17 == v13)
      {
        goto LABEL_28;
      }
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_28:

  return result;
}

void sub_10007E298(uint64_t a1, uint64_t a2, char *a3)
{
  if (a1 < 1 || a2 < 1)
  {
    return;
  }

  v4 = sub_10007D2B8();
  [v4 setHidden:0];

  sub_10007EA0C(a1);
  v5 = 0;
  v6 = OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_rowBackgroundViews;
  p_type = &stru_1000B6FF0.type;
  v41 = OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_itemCells;
  v42 = OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_itemRows;
  while (1)
  {
    v8 = a2;
    do
    {
      [a3 p_type[414]];
      if (v9 >= 200.0)
      {
        v11 = 302.0;
      }

      else
      {
        v11 = 190.0;
      }

      if (v10 > 200.0)
      {
        v11 = 302.0;
      }

      if (v9 <= 539.0)
      {
        v12 = v11;
      }

      else
      {
        v12 = 630.0;
      }

      [a3 p_type[414]];
      v13 = CGRectGetWidth(v45) / v12;
      v14 = objc_allocWithZone(type metadata accessor for RecentItemCell());
      *&sub_100077F88(0, 0, 1, 0, 0.0, 0.0, 0.0, 0.0, v13)[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_delegate + 8] = &off_1000B0588;
      swift_unknownObjectWeakAssign();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        p_type = (&stru_1000B6FF0 + 16);
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      --v8;
    }

    while (v8);
    if (_swiftEmptyArrayStorage >> 62)
    {
      sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);

      _bridgeCocoaArray<A>(_:)();
    }

    else
    {
      swift_bridgeObjectRetain_n();
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
    }

    v15 = objc_allocWithZone(UIStackView);
    sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v17 = [v15 initWithArrangedSubviews:isa];

    [v17 setDistribution:1];
    [v17 setSpacing:8.0];
    [v17 setAxis:0];
    v18 = v17;
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [a3 addSubview:v18];
    sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_10008F960;
    v20 = [v18 leadingAnchor];
    v21 = [a3 leadingAnchor];
    v22 = [v20 constraintEqualToAnchor:v21 constant:13.0];

    *(v19 + 32) = v22;
    v23 = [v18 trailingAnchor];

    v24 = [a3 trailingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24 constant:-13.0];

    *(v19 + 40) = v25;
    sub_10001A2A8(0, &qword_1000BB900, NSLayoutConstraint_ptr);
    v26 = Array._bridgeToObjectiveC()().super.isa;

    [a3 addConstraints:v26];

    if (_swiftEmptyArrayStorage >> 62)
    {
      break;
    }

    v27 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_20;
    }

LABEL_32:

    ++v5;
    v38 = Array._bridgeToObjectiveC()().super.isa;

    [a3 addConstraints:v38];

    swift_beginAccess();
    v39 = v18;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    p_type = (&stru_1000B6FF0 + 16);
    if (*((*&a3[v42] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&a3[v42] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    swift_beginAccess();
    sub_10000D790(_swiftEmptyArrayStorage, v40);
    swift_endAccess();

    if (v5 == a1)
    {
      return;
    }
  }

  v27 = _CocoaArrayWrapper.endIndex.getter();
  if (!v27)
  {
    goto LABEL_32;
  }

LABEL_20:
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v27 < 0)
  {
    goto LABEL_39;
  }

  v28 = 0;
  while (2)
  {
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v29 = _swiftEmptyArrayStorage[v28 + 4];
    }

    v30 = v29;
    v31 = sub_100075A24();
    v32 = [v31 bottomAnchor];

    swift_beginAccess();
    v33 = *&a3[v6];
    if ((v33 & 0xC000000000000001) != 0)
    {
      v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_28:
      v35 = v34;
      ++v28;
      swift_endAccess();
      v36 = [v35 bottomAnchor];

      v37 = [v32 constraintEqualToAnchor:v36];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v27 == v28)
      {
        goto LABEL_32;
      }

      continue;
    }

    break;
  }

  if (v5 < *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v34 = *(v33 + 8 * v5 + 32);
    goto LABEL_28;
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

void sub_10007EA0C(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a1;
    if (a1)
    {
      v3 = v1;
      v4 = 0;
      v5 = 0;
      v6 = OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_rowBackgroundViews;
      v26 = OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___footerBackgroundView;
      do
      {
        v7 = sub_10007F1E4(v5);
        v8 = sub_10007D258(&OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___backgroundRowContainerStackView, 0, 0.0, 0.0, 0.0, 0.0, 0.0);
        [v8 addArrangedSubview:v7];

        swift_beginAccess();
        v9 = v7;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v3 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        if (v2 == 1)
        {
          v10 = sub_10007D2B8();
          v11 = [v10 backgroundColor];

          [v9 setBackgroundColor:v11];
          v12 = [v9 layer];
          v13 = [*(v3 + v26) layer];
          v14 = [v13 compositingFilter];

          if (v14)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            sub_100042398(v28, v28[3]);
            v14 = _bridgeAnythingToObjectiveC<A>(_:)();
            sub_1000064E0(v28);
          }

          [v12 setCompositingFilter:v14];

          swift_unknownObjectRelease();
        }

        if (v4)
        {
          sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_10008F940;
          v16 = [v9 heightAnchor];
          v17 = [v4 heightAnchor];
          if (v5 == 1)
          {
            v18 = 1.13;
          }

          else
          {
            v18 = 1.0;
          }

          v27 = v4;
          v19 = v6;
          v20 = v2;
          v21 = objc_opt_self();
          v22 = v9;
          v23 = [v16 constraintEqualToAnchor:v17 multiplier:v18];

          *(v15 + 32) = v23;
          v9 = v22;
          sub_10001A2A8(0, &qword_1000BB900, NSLayoutConstraint_ptr);
          isa = Array._bridgeToObjectiveC()().super.isa;

          v25 = v21;
          v2 = v20;
          v6 = v19;
          [v25 activateConstraints:isa];
        }

        ++v5;
        v4 = v9;
      }

      while (v2 != v5);
    }
  }
}

void sub_10007ED90(uint64_t a1, char *a2)
{
  v5 = sub_10007D2B8();
  [v5 setHidden:1];

  if (a1 < 0)
  {
    goto LABEL_37;
  }

  if (a1)
  {
    v33 = xmmword_10008F960;
    do
    {
      sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
      v6 = swift_allocObject();
      *(v6 + 16) = v33;
      [a2 frame];
      if (v7 >= 200.0)
      {
        v9 = 302.0;
      }

      else
      {
        v9 = 190.0;
      }

      if (v8 > 200.0)
      {
        v9 = 302.0;
      }

      if (v7 <= 539.0)
      {
        v10 = v9;
      }

      else
      {
        v10 = 630.0;
      }

      [a2 frame];
      v11 = CGRectGetWidth(v34) / v10;
      v12 = type metadata accessor for RecentItemCell();
      v13 = objc_allocWithZone(v12);
      v14 = sub_100077F88(0, 0, 1, 1, 0.0, 0.0, 0.0, 0.0, v11);
      *&v14[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_delegate + 8] = &off_1000B0588;
      swift_unknownObjectWeakAssign();
      *(v6 + 32) = v14;
      [a2 frame];
      if (v15 >= 200.0)
      {
        v17 = 302.0;
      }

      else
      {
        v17 = 190.0;
      }

      if (v16 > 200.0)
      {
        v17 = 302.0;
      }

      if (v15 <= 539.0)
      {
        v18 = v17;
      }

      else
      {
        v18 = 630.0;
      }

      [a2 frame];
      v19 = CGRectGetWidth(v35) / v18;
      v20 = objc_allocWithZone(v12);
      v21 = sub_100077F88(0, 0, 1, 1, 0.0, 0.0, 0.0, 0.0, v19);
      *&v21[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_delegate + 8] = &off_1000B0588;
      swift_unknownObjectWeakAssign();
      *(v6 + 40) = v21;
      v22 = objc_allocWithZone(UIStackView);
      sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);

      isa = Array._bridgeToObjectiveC()().super.isa;

      v24 = [v22 initWithArrangedSubviews:isa];

      [v24 setDistribution:1];
      [v24 setSpacing:8.0];
      [v24 setAxis:0];
      v25 = v24;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v2 = _swiftEmptyArrayStorage;
      swift_beginAccess();
      sub_10000D790(v6, v26);
      swift_endAccess();

      --a1;
    }

    while (a1);
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v28 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v28 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v29 = *(v2 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v32 = sub_10007D258(&OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___listStackView, 1, 8.0, 8.0, 8.0, 8.0, 8.0);
      [v32 addArrangedSubview:v30];

      ++v28;
      if (v31 == i)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

LABEL_39:
}

id sub_10007F1E4(uint64_t a1)
{
  v2 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (a1 == 2)
  {
    v5 = [objc_allocWithZone(UIColor) initWithDisplayP3Red:0.0980392157 green:0.0980392157 blue:0.0980392157 alpha:1.0];
    [v2 setBackgroundColor:v5];

    v4 = [v2 layer];
    goto LABEL_6;
  }

  if (a1 == 1)
  {
    v3 = [objc_allocWithZone(UIColor) initWithDisplayP3Red:0.0470588235 green:0.0470588235 blue:0.0470588235 alpha:1.0];
    [v2 setBackgroundColor:v3];

    v4 = [v2 layer];
LABEL_6:
    v6 = v4;

    v7 = String._bridgeToObjectiveC()();

    [v6 setCompositingFilter:v7];

    goto LABEL_7;
  }

  v7 = [objc_opt_self() clearColor];
  [v2 setBackgroundColor:v7];
LABEL_7:

  return v2;
}

id sub_10007F4AC(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v12 = objc_allocWithZone(UIStackView);
  sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v14 = [v12 initWithArrangedSubviews:isa];

  v15 = v14;
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v15 setAxis:1];
  [v15 setDistribution:a1];
  [v15 setSpacing:a2];
  [v15 setLayoutMarginsRelativeArrangement:1];
  [v15 setInsetsLayoutMarginsFromSafeArea:0];
  [v15 setLayoutMargins:{a3, a4, a5, a6}];

  return v15;
}

void sub_10007F5FC()
{
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_cellSpacing) = 0x4020000000000000;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_itemRows) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_itemCells) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_rowBackgroundViews) = _swiftEmptyArrayStorage;
  v1 = v0 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_lastLayoutSize;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_rowSideMargin) = 0x402A000000000000;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_footerBackgroundViewHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___backgroundRowContainerStackView) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___listStackView) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___footerBackgroundView) = 0;
  v2 = (v0 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_blendMode);
  *v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2[1] = v3;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_items) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_isMasked) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10007F744(unint64_t a1, unint64_t a2, char a3)
{
  LOBYTE(v3) = a3;
  v22 = objc_opt_self();
  v5 = [v22 sharedGenerator];
  v21 = [v5 startBatching];

  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v26 = a1 & 0xFFFFFFFFFFFFFF8;
    v27 = (a1 & 0xC000000000000001);
    if ((a2 & 0x8000000000000000) != 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v20 = v7;
    v23 = (v3 & 1) == 0;
    v8 = 4;
    v25 = a1;
    while (1)
    {
      v14 = v8 - 4;
      if (v27)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v26 + 16))
        {
          goto LABEL_24;
        }

        v15 = *(a1 + 8 * v8);
      }

      v3 = v15;
      v16 = v8 - 3;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v17 = objc_autoreleasePoolPush();
      if (a2 >> 62)
      {
        if (v14 >= _CocoaArrayWrapper.endIndex.getter())
        {
LABEL_7:
          v9 = 0;
          v10 = 2;
          goto LABEL_8;
        }
      }

      else if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_7;
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v18 = *(a2 + 8 * v8);
      }

      v9 = v18;
      v19 = v18;
      v10 = v23;
LABEL_8:
      v11 = &v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind];
      v12 = *&v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind];
      *v11 = v9;
      v13 = v11[8];
      v11[8] = v10;
      sub_10007B494(v9, v10);
      sub_100076804(v12, v13);
      sub_10007B4A8(v12, v13);
      sub_10007B4A8(v9, v10);
      sub_10007B4A8(v9, v10);
      objc_autoreleasePoolPop(v17);

      ++v8;
      a1 = v25;
      if (v16 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:
  v28 = [v22 sharedGenerator];
  [v28 endBatching:v21];
}

id sub_10007FAD4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DOCSBFolderCollectionViewLayout();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10007FC58(double a1)
{
  v2 = *&v1[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionViewLayout_contentOffsetToApply];
  *&v1[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionViewLayout_contentOffsetToApply] = a1;
  if (a1 <= 0.0 && v2 != a1)
  {
    return [v1 invalidateLayout];
  }

  return result;
}

unint64_t sub_10007FC88(double a1, double a2, double a3, double a4)
{
  v31.receiver = v4;
  v31.super_class = swift_getObjectType();
  v9 = objc_msgSendSuper2(&v31, "layoutAttributesForElementsInRect:", a1, a2, a3, a4);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  sub_100085CB4();
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = v4;
  if (v11 >> 62)
  {
LABEL_32:
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v12)
  {
LABEL_23:

    return v11;
  }

  v13 = 0;
  v30 = v11 & 0xC000000000000001;
  v14 = v11 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v30)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v13 >= *(v14 + 16))
      {
        goto LABEL_31;
      }

      v15 = *(v11 + 8 * v13 + 32);
    }

    v16 = v15;
    v17 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v18 = [v15 representedElementKind];
    if (!v18)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_7:

      goto LABEL_8;
    }

    v19 = v11;
    v20 = v18;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!v23)
    {
      v11 = v19;
      goto LABEL_7;
    }

    if (v21 == v24 && v23 == v25)
    {
      break;
    }

    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v11 = v19;
    if (v27)
    {
      goto LABEL_26;
    }

LABEL_8:

    ++v13;
    if (v17 == v12)
    {
      goto LABEL_23;
    }
  }

LABEL_26:

  if (*&v29[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionViewLayout_contentOffsetToApply] < 0.0)
  {
    [v16 frame];
    [v16 setFrame:?];
  }

  return v19;
}

uint64_t sub_10007FF4C()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

id sub_100080070()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerFrame];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v3 = &v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerFrameInSuperview];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v4 = &v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_staticHeaderFrame];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v5 = &v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_staticHeaderFrameInSuperview];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerAdditionalYOffset] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerItemScaleBoundaryZoneTop] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerItemScaleBoundaryZoneBottom] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_itemTopBoundary] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_itemBottomBoundary] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_itemBottomBoundaryWithSpacing] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerAndSpacingHeight] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_scrollViewHeightExcludingCellHeight] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_scrollViewHeightExcludingHeaderRegion] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionHeaderZoneTop] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionHeaderZoneBottom] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionDockZoneTop] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionDockZoneBottom] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionHeaderZoneTop] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionHeaderZoneBottom] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionDockZoneTop] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionDockZoneBottom] = 0;
  v6 = OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_easeInFunction;
  v7 = objc_opt_self();
  *&v0[v6] = [v7 functionWithName:kCAMediaTimingFunctionEaseIn];
  v8 = OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_easeOutFunction;
  *&v0[v8] = [v7 functionWithName:kCAMediaTimingFunctionEaseOut];
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout____lazy_storage___easingFunctions] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_alwaysVisiblePinnedToBottomCount] = 3;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_indexPathsOfItemsPinnedToBottom] = &_swiftEmptySetSingleton;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_progressOfBottomItemIconInDock] = 0;
  v11.receiver = v0;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "init");
  [v9 setMinimumLineSpacing:10.0];
  [v9 setMinimumInteritemSpacing:10.0];
  [v9 setSectionInset:{10.0, 0.0, 10.0, 0.0}];
  [v9 setSectionHeadersPinToVisibleBounds:1];

  return v9;
}

id sub_100080334(double a1)
{
  v2 = *&v1[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionViewLayout_contentOffsetToApply];
  *&v1[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionViewLayout_contentOffsetToApply] = a1;
  if (v2 != a1)
  {
    return [v1 invalidateLayout];
  }

  return result;
}

uint64_t sub_100080360()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40.receiver = v1;
  v40.super_class = ObjectType;
  objc_msgSendSuper2(&v40, "prepareLayout", v5);
  v8 = [v1 collectionView];
  if (v8)
  {
    v9 = v8;
    [v9 contentSize];
    v11 = v10;
    [v9 frame];
    if (v11 >= CGRectGetHeight(v41))
    {
    }

    else
    {
      [v9 contentSize];
      v13 = v12;

      if (v13 > 0.0)
      {
        v14 = 0;
LABEL_7:
        [v1 setSectionHeadersPinToVisibleBounds:v14];

        goto LABEL_8;
      }
    }

    v14 = 1;
    goto LABEL_7;
  }

LABEL_8:
  static Logger.UI.getter();
  v15 = v1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v36 = v3;
    v18 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v18 = 136315906;
    *(v18 + 4) = sub_100037B98(0x2865726170657270, 0xE900000000000029, &v39);
    *(v18 + 12) = 2080;
    v19 = v15;
    v20 = [v19 description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_100037B98(v21, v23, &v39);

    *(v18 + 14) = v24;
    *(v18 + 22) = 1024;
    LODWORD(v24) = [v19 sectionHeadersPinToVisibleBounds];

    *(v18 + 24) = v24;
    *(v18 + 28) = 2080;
    v25 = [v19 collectionView];
    v26 = v25;
    if (v25)
    {
      [v25 contentSize];
      v34 = v27;
      v35 = v28;

      *&v29 = v34;
      *(&v29 + 1) = v35;
    }

    else
    {
      v29 = 0uLL;
    }

    v37 = v29;
    v38 = v26 == 0;
    sub_10000589C(&qword_1000BD4D0, &qword_1000914D0);
    v31 = String.init<A>(describing:)();
    v33 = sub_100037B98(v31, v32, &v39);

    *(v18 + 30) = v33;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s self: %s sectionHeadersPinToVisibleBounds: %{BOOL}d contentSize: %s", v18, 0x26u);
    swift_arrayDestroy();

    return (*(v4 + 8))(v7, v36);
  }

  else
  {

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_100080760()
{
  v1 = OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout____lazy_storage___easingFunctions;
  if (*(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout____lazy_storage___easingFunctions))
  {
    v2 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout____lazy_storage___easingFunctions);
  }

  else
  {
    type metadata accessor for DOCSBLayoutEasingFunctions();
    v2 = swift_allocObject();
    *(v2 + 16) = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseIn];
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_100080808(void *a1, void *a2)
{
  if (a1 && a2)
  {
    v4 = a1;
    v5 = a2;
    [v5 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionViewLayout_contentOffsetToApply;
    if (*&v2[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionViewLayout_contentOffsetToApply] <= 0.0)
    {
      v14 = v6;
    }

    else
    {
      v14 = *&v2[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionViewLayout_contentOffsetToApply];
    }

    [v2 itemSize];
    v16 = v15;
    [v2 itemSize];
    v18 = v17 * 4.0;
    if (v17 * 4.0 < 0.0)
    {
      __break(1u);
    }

    else
    {
      v19 = v16 * 0.15;
      v20 = *&v2[v13];
      if (v18 >= v20)
      {
        v21 = *&v2[v13];
      }

      else
      {
        v21 = v18;
      }

      if (v20 > 0.0)
      {
        v22 = v21;
      }

      else
      {
        v22 = 0.0;
      }

      v23 = v22 / v18 + 0.0;
      *&v23 = v23;
      [*&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_easeOutFunction] _solveForInput:v23];
      if (v19 >= 0.0)
      {
        *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerAdditionalYOffset] = -(v19 * v24 + 0.0);
        [v5 setFrame:{v8, v14, v10, v12}];
        [v5 frame];
        v25 = &v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerFrame];
        *v25 = v26;
        *(v25 + 1) = v27;
        *(v25 + 2) = v28;
        *(v25 + 3) = v29;
        v30 = v4;
        [v5 frame];
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v39 = [v30 superview];
        [v30 convertRect:v39 toView:{v32, v34, v36, v38}];
        v41 = v40;
        v43 = v42;
        v45 = v44;
        v47 = v46;

        v48 = &v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerFrameInSuperview];
        *v48 = v41;
        *(v48 + 1) = v43;
        *(v48 + 2) = v45;
        *(v48 + 3) = v47;
        [v2 itemSize];
        [v2 itemSize];
        v49 = sub_100085E5C();
        v51 = v50;
        v53 = v52;
        v55 = v54;
        v56 = &v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_staticHeaderFrameInSuperview];
        *v56 = v49;
        v56[1] = v50;
        v56[2] = v52;
        v56[3] = v54;
        v57 = [v30 superview];

        [v30 convertRect:v57 fromView:{v49, v51, v53, v55}];
        v59 = v58;
        v61 = v60;
        v63 = v62;
        v65 = v64;

        v66 = &v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_staticHeaderFrame];
        *v66 = v59;
        *(v66 + 1) = v61;
        *(v66 + 2) = v63;
        *(v66 + 3) = v65;
        MaxY = CGRectGetMaxY(*v25);
        [v2 minimumInteritemSpacing];
        *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_itemTopBoundary] = MaxY + v68;
        [v30 bounds];
        v70 = v69;

        [v2 itemSize];
        v72 = v70 - v71;
        *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_itemBottomBoundary] = v72;
        [v2 minimumInteritemSpacing];
        v74 = OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_itemBottomBoundaryWithSpacing;
        *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_itemBottomBoundaryWithSpacing] = v72 - v73;
        v75 = *(v25 + 3);
        [v2 minimumInteritemSpacing];
        v77 = OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerAndSpacingHeight;
        *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerAndSpacingHeight] = v75 + v76;
        [v30 bounds];
        v79 = v78;

        [v2 itemSize];
        *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_scrollViewHeightExcludingCellHeight] = v79 - v80;
        *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_scrollViewHeightExcludingHeaderRegion] = v79 - v80 - *&v2[v77];
        MinY = CGRectGetMinY(*v48);
        [v2 itemSize];
        *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerItemScaleBoundaryZoneTop] = MinY - (v82 + v82);
        *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerItemScaleBoundaryZoneBottom] = CGRectGetMaxY(*v48);
        *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionHeaderZoneTop] = CGRectGetMinY(*v48);
        *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionHeaderZoneBottom] = CGRectGetMidY(*v48);
        v83 = *&v2[v74];
        [v2 itemSize];
        *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionDockZoneTop] = v83 - v84;
        v85 = *&v2[v74];
        [v2 itemSize];
        *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionDockZoneBottom] = v85 + v86 * -0.5;
        v87 = CGRectGetMinY(*v48);
        [v2 minimumInteritemSpacing];
        v89 = v88;
        [v2 itemSize];
        *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionHeaderZoneTop] = v87 + (v89 + v90) * -4.0;
        v91 = CGRectGetMaxY(*v48);
        [v2 minimumInteritemSpacing];
        *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionHeaderZoneBottom] = v91 + v92;
        v93 = *&v2[v74];
        [v2 itemSize];
        v95 = v94;

        *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionDockZoneTop] = v93 - v95;
        *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionDockZoneBottom] = *&v2[v74];
        return;
      }
    }

    __break(1u);
  }
}

id sub_100080E8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v18.receiver = v3;
  v18.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v18, "layoutAttributesForSupplementaryViewOfKind:atIndexPath:", v7, isa);

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v10 == a2)
  {

    if (!v9)
    {
      return v9;
    }
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0 || !v9)
    {
      return v9;
    }
  }

  type metadata accessor for DOCSBFolderFanCollectionViewLayoutAttributes();
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;
    Strong = swift_unknownObjectWeakLoadStrong();
    v16 = v9;
    sub_100080808(Strong, v14);

    sub_100080FD8(v14);
  }

  return v9;
}

void sub_100080FD8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v180 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v180 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v180 - v13;
  v15 = OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionViewLayout_scrollView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v213 = Strong;
  v17 = [v2 collectionView];
  if (v17)
  {
    *&v207 = v7;
    v201 = v5;
    v202 = v4;
    v205 = v17;
    v18 = v14;
    v19 = v8;
    v20 = v9;
    v21 = [v17 numberOfItemsInSection:0];
    v22 = [a1 indexPath];
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v203 = IndexPath.item.getter();
    v23 = *(v20 + 8);
    *&v208 = v18;
    v211 = v19;
    v209 = v23;
    v212 = v20 + 8;
    v23(v18, v19);
    v200 = v21;
    *&v204 = v21 - 1;
    if (__OFSUB__(v21, 1))
    {
      __break(1u);
      goto LABEL_78;
    }

    v24 = [a1 indexPath];
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    [a1 frame];
    v187 = v25;
    v26 = v213;
    [a1 frame];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v35 = [v26 superview];
    v206 = v26;
    [v26 convertRect:v35 toView:{v28, v30, v32, v34}];
    v37 = v36;
    v39 = v38;
    *&v210 = v38;
    v41 = v40;
    v43 = v42;

    v218.origin.x = v37;
    v218.origin.y = v39;
    v218.size.width = v41;
    v218.size.height = v43;
    MinY = CGRectGetMinY(v218);
    v189 = OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_scrollViewHeightExcludingCellHeight;
    v45 = 1.0 - MinY / *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_scrollViewHeightExcludingCellHeight];
    v188 = OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_scrollViewHeightExcludingHeaderRegion;
    v46 = v45 * *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_scrollViewHeightExcludingHeaderRegion];
    v186 = *&v2[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionViewLayout_contentOffsetToApply];
    [v2 itemSize];
    v185 = v47;
    [v2 minimumLineSpacing];
    v184 = v48;
    v213 = v11;
    v49 = IndexPath.item.getter();
    v191 = OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_itemBottomBoundaryWithSpacing;
    v183 = *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_itemBottomBoundaryWithSpacing];
    [v2 minimumLineSpacing];
    v182 = v50;
    sub_100080760();
    v51 = swift_unknownObjectWeakLoadStrong();
    v52 = a1;
    v190 = v15;
    if (v51)
    {
      v53 = v51;
      v54 = [v51 traitCollection];

      v55 = [v54 layoutDirection];
      LOBYTE(v51) = v55 == 1;
    }

    v56 = v207;
    v57 = v211;
    v58 = sub_100085C24(v51, v46, 2775.0);
    v60 = v59;

    CGAffineTransformMakeTranslation(&t1, v58, 0.0);
    a = t1.a;
    b = t1.b;
    c = t1.c;
    d = t1.d;
    tx = t1.tx;
    ty = t1.ty;
    CGAffineTransformMakeRotation(&t1, v60);
    v192 = t1.a;
    v194 = t1.b;
    v196 = t1.c;
    v198 = t1.d;
    v199 = t1.tx;
    *&v207 = t1.ty;
    v64 = [v52 representedElementKind];
    if (v64)
    {
      v65 = v64;
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;

      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (v68)
      {
        if (v66 == v69 && v68 == v70)
        {
          v71 = v206;

LABEL_50:
          CGAffineTransformMakeTranslation(&t1, 0.0, *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerAdditionalYOffset]);
          v156 = *&t1.a;
          v157 = *&t1.c;
          v158 = *&t1.tx;
          t1.a = a;
          t1.b = b;
          t1.c = c;
          t1.d = d;
          t1.tx = tx;
          t1.ty = ty;
          *&t2.a = v156;
          *&t2.c = v157;
          *&t2.tx = v158;
          CGAffineTransformConcat(&v214, &t1, &t2);
          t1.a = v192;
          t1.b = v194;
          t1.c = v196;
          t1.d = v198;
          t1.tx = v199;
          *&t1.ty = v207;
          t2 = v214;
          CGAffineTransformConcat(&v214, &t1, &t2);
          t1 = v214;
          [v52 setTransform:&t1];

          v209(v213, v57);
          return;
        }

        v155 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v155)
        {
          v71 = v206;

          goto LABEL_50;
        }

LABEL_16:
        static Logger.UI.getter();
        v73 = v52;
        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.debug.getter();

        v76 = os_log_type_enabled(v74, v75);
        v181 = v49;
        if (v76)
        {
          v77 = swift_slowAlloc();
          *&t1.a = swift_slowAlloc();
          *v77 = 136315906;
          *(v77 + 4) = sub_100037B98(0xD000000000000018, 0x8000000100095390, &t1);
          *(v77 + 12) = 2080;
          v78 = [v73 indexPath];
          v79 = v57;
          v80 = v208;
          static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

          sub_100085DA8(&qword_1000BC458, &protocol conformance descriptor for IndexPath);
          v81 = dispatch thunk of CustomStringConvertible.description.getter();
          v82 = v79;
          v84 = v83;
          v209(v80, v82);
          v85 = sub_100037B98(v81, v84, &t1);

          *(v77 + 14) = v85;
          *(v77 + 22) = 2048;
          *(v77 + 24) = v58;
          *(v77 + 32) = 2048;
          *(v77 + 34) = v60;
          _os_log_impl(&_mh_execute_header, v74, v75, "%s item: %s xOffsetAndRadians xPos: %f, radians: %f", v77, 0x2Au);
          swift_arrayDestroy();
        }

        (*(v201 + 8))(v56, v202);
        v86 = *&v210;
        v87 = v203;
        v88 = IndexPath.item.getter();
        v89 = v206;
        if (!__OFSUB__(v200, 3))
        {
          v90 = OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_staysVisibleWhenPinnedToBottom;
          v73[OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_staysVisibleWhenPinnedToBottom] = v88 >= (v200 - 3);
          v91 = [v73 indexPath];
          v92 = v208;
          static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

          v93 = IndexPath.item.getter();
          v94 = v211;
          v95 = v209;
          v209(v92, v211);
          [v73 setZIndex:v93];
          v219.origin.x = v37;
          v219.origin.y = v86;
          v219.size.width = v41;
          v219.size.height = v43;
          v96 = CGRectGetMinY(v219);
          v97 = OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionHeaderZoneBottom;
          if (v96 <= *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionHeaderZoneBottom] && v87 != v204)
          {
            *&v208 = v37;
            v220.origin.x = v37;
            v220.origin.y = v86;
            v98 = v41;
            v220.size.width = v41;
            v99 = v43;
            v220.size.height = v43;
            v100 = CGRectGetMinY(v220);
            v101 = *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionHeaderZoneTop];
            v102 = *&v2[v97];
            if (v101 <= v102)
            {
              v103 = v100;
              v104 = CGRectGetMinY(*&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerFrameInSuperview]);
              [v2 itemSize];
              v106 = v105;
              v107 = *&v2[v97];
              v108 = [v89 superview];

              if (!v108)
              {
LABEL_85:
                __break(1u);
                return;
              }

              v109 = v104 + v106 * 0.5;
              v110 = v109 - v107;
              if (v103 > v101)
              {
                v111 = v103;
              }

              else
              {
                v111 = v101;
              }

              if (v102 < v111)
              {
                v111 = v102;
              }

              v112 = v109 + 1.0 - (sin((1.0 - ((v111 - v101) / (v102 - v101) + 0.0)) * -1.57079633) + 1.0) * v110;
              v113 = v98;
              v114 = *&v208;
              v115 = v99;
              v116 = v113;
              [v108 convertRect:v89 toCoordinateSpace:?];
              v118 = v117;
              v120 = v119;
              v122 = v121;
              v124 = v123;

              [v73 setFrame:{v118, v120, v122, v124}];
              v221.origin.x = v114;
              *&v221.origin.y = v210;
              v221.size.width = v116;
              v221.size.height = v115;
              v125 = CGRectGetMinY(v221);
              v126 = OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerItemScaleBoundaryZoneTop;
              v127 = *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerItemScaleBoundaryZoneTop];
              v128 = OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerItemScaleBoundaryZoneBottom;
              v129 = *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerItemScaleBoundaryZoneBottom];
              if (v127 <= v129)
              {
                if (v125 <= v127)
                {
                  v125 = *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerItemScaleBoundaryZoneTop];
                }

                if (v129 >= v125)
                {
                  v130 = v125;
                }

                else
                {
                  v130 = *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerItemScaleBoundaryZoneBottom];
                }

                v131 = (v130 - v127) * 0.1 / (v129 - v127) + 0.9;
                v132 = *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_easeInFunction];
                *&v131 = v131;
                [v132 _solveForInput:v131];
                *&v73[OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_imageScale] = v133;
                v134 = *&v2[v126];
                v135 = *&v2[v128];
                if (v134 <= v135)
                {
                  v136 = (v130 - v134) / (v135 - v134) + 0.0;
                  *&v136 = v136;
                  [v132 _solveForInput:v136];
                  v138 = v137;
                  v222.origin.x = v114;
                  v139 = *&v210;
                  *&v222.origin.y = v210;
                  v222.size.width = v116;
                  v222.size.height = v115;
                  v140 = CGRectGetMinY(v222);
                  v141 = OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionHeaderZoneBottom;
                  v142 = v140 < *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionHeaderZoneBottom];
                  v143 = 1.0;
                  if (!v142)
                  {
LABEL_43:
                    *&v73[OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_titleAlpha] = v143;
                    v224.origin.x = v114;
                    v224.origin.y = v112;
                    v224.size.width = v116;
                    v224.size.height = v115;
                    v149 = *&v2[v188] * (1.0 - CGRectGetMinY(v224) / *&v2[v189]);
                    v150 = swift_unknownObjectWeakLoadStrong();

                    if (v150)
                    {
                      v151 = [v150 traitCollection];

                      v152 = [v151 layoutDirection];
                      v153 = v152 == 1;
                    }

                    else
                    {
                      v153 = 0;
                    }

                    v164 = sub_100085C24(v153, v149, 2775.0);
                    v166 = v165;

                    CGAffineTransformMakeTranslation(&t1, v164, 0.0);
                    v167 = t1.tx;
                    v168 = t1.ty;
                    v210 = *&t1.a;
                    v208 = *&t1.c;
                    CGAffineTransformMakeRotation(&t1, v166);
                    v169 = t1.tx;
                    v170 = t1.ty;
                    v207 = *&t1.a;
                    v204 = *&t1.c;
                    [v73 setAlpha:v138];
                    *&t1.a = v207;
                    *&t1.c = v204;
                    t1.tx = v169;
                    t1.ty = v170;
                    *&t2.a = v210;
                    *&t2.c = v208;
                    t2.tx = v167;
                    t2.ty = v168;
                    CGAffineTransformConcat(&v214, &t1, &t2);
                    t1 = v214;
                    [v73 setTransform:&t1];

                    v95(v213, v94);
                    v73[OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_isPinnedToBottom] = 0;
                    v73[OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_titleShouldHide] = *&v73[OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_titleAlpha] == 0.0;
                    return;
                  }

                  v223.origin.x = v114;
                  v223.origin.y = v139;
                  v223.size.width = v116;
                  v223.size.height = v115;
                  v144 = CGRectGetMinY(v223);
                  v145 = *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionHeaderZoneTop];
                  v146 = *&v2[v141];
                  if (v145 <= v146)
                  {
                    if (v144 <= v145)
                    {
                      v144 = *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionHeaderZoneTop];
                    }

                    if (v146 < v144)
                    {
                      v144 = *&v2[v141];
                    }

                    v147 = (v144 - v145) / (v146 - v145) + 0.0;
                    *&v147 = v147;
                    [v132 _solveForInput:v147];
                    v143 = v148;
                    goto LABEL_43;
                  }

                  goto LABEL_83;
                }

                goto LABEL_81;
              }

LABEL_80:
              __break(1u);
LABEL_81:
              __break(1u);
              goto LABEL_82;
            }

LABEL_79:
            __break(1u);
            goto LABEL_80;
          }

          v225.origin.x = v37;
          v225.origin.y = v86;
          v225.size.width = v41;
          v225.size.height = v43;
          if (*&v2[v191] < CGRectGetMinY(v225))
          {
            CGAffineTransformMakeTranslation(&t1, 0.0, v183 + v186 - (v185 + v184) * v181 - (v187 + v182));
            [v73 setTransform:&t1];
            v73[OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_titleShouldHide] = 1;
            v73[OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_isPinnedToBottom] = 1;
            *&v73[OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_titleAlpha] = 0;
            if ((v73[v90] & 1) == 0)
            {
              [v73 setAlpha:0.0];

              v154 = v213;
LABEL_75:
              v95(v154, v94);
              return;
            }

            goto LABEL_58;
          }

          t1.a = v192;
          t1.b = v194;
          t1.c = v196;
          t1.d = v198;
          t1.tx = v199;
          *&t1.ty = v207;
          t2.a = a;
          t2.b = b;
          t2.c = c;
          t2.d = d;
          t2.tx = tx;
          t2.ty = ty;
          CGAffineTransformConcat(&v214, &t1, &t2);
          t1 = v214;
          [v73 setTransform:&t1];
          v73[OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_titleShouldHide] = 0;
          v159 = OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_titleAlpha;
          *&v73[OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_titleAlpha] = 0x3FF0000000000000;
          v73[OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_isPinnedToBottom] = 0;
          [v73 setAlpha:1.0];
          v226.origin.x = v37;
          v226.origin.y = v86;
          v226.size.width = v41;
          v226.size.height = v43;
          v160 = CGRectGetMinY(v226);
          v161 = *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionDockZoneTop];
          v162 = *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionDockZoneBottom];
          if (v161 > v162)
          {
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
            goto LABEL_84;
          }

          if (v160 <= v161)
          {
            v160 = *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionDockZoneTop];
          }

          if (v162 < v160)
          {
            v160 = *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionDockZoneBottom];
          }

          *&v73[v159] = 1.0 - ((v160 - v161) / (v162 - v161) + 0.0);
          if (v73[v90] == 1 && v87 != v204)
          {
LABEL_58:
            v163 = v213;
LABEL_59:
            v95(v163, v94);

            return;
          }

          v227.origin.x = v37;
          v227.origin.y = v86;
          v227.size.width = v41;
          v227.size.height = v43;
          v171 = CGRectGetMinY(v227);
          v172 = OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionDockZoneTop;
          v173 = v213;
          if (*&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionDockZoneTop] <= v171)
          {
            v228.origin.x = v37;
            v228.origin.y = v86;
            v228.size.width = v41;
            v228.size.height = v43;
            v174 = CGRectGetMinY(v228);
            v175 = *&v2[v172];
            v176 = *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionDockZoneBottom];
            if (v175 > v176)
            {
LABEL_84:
              __break(1u);
              goto LABEL_85;
            }

            if (v174 <= v175)
            {
              v174 = *&v2[v172];
            }

            if (v176 < v174)
            {
              v174 = *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionDockZoneBottom];
            }

            v177 = 1.0 - ((v174 - v175) / (v176 - v175) + 0.0);
            *&v177 = v177;
            [*&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_easeInFunction] _solveForInput:v177];
            v179 = v178;
            if (v87 != v204)
            {
              [v73 setAlpha:v179];
LABEL_74:

              v154 = v173;
              goto LABEL_75;
            }
          }

          else
          {
            if (v87 != v204)
            {
              v163 = v213;
              goto LABEL_59;
            }

            v179 = 1.0;
          }

          [v2 setProgressOfBottomItemIconInDock:v179];
          goto LABEL_74;
        }

LABEL_78:
        __break(1u);
        goto LABEL_79;
      }
    }

    else
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    goto LABEL_16;
  }

  v72 = v213;
}

uint64_t sub_100082410(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10000589C(&qword_1000BC448, &qword_100090B98);
  __chkstk_darwin(v10 - 8);
  v107 = v95 - v11;
  v12 = type metadata accessor for IndexPath();
  v108 = *(v12 - 8);
  __chkstk_darwin(v12);
  v105 = v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v111 = v95 - v15;
  v113.receiver = v4;
  v113.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v113, "layoutAttributesForElementsInRect:", a1, a2, a3, a4);
  if (!v16)
  {
    v20 = 0;
    goto LABEL_26;
  }

  v17 = v16;
  sub_100085CB4();
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = sub_100083084(v18, v19);

  if (!v20)
  {
    goto LABEL_26;
  }

  v21 = v20 & 0xFFFFFFFFFFFFFF8;
  v104 = v4;
  v110 = v12;
  if (v20 >> 62)
  {
    goto LABEL_93;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (i)
    {
      v22 = 0;
      v23 = v20 & 0xC000000000000001;
      while (1)
      {
        if (v23)
        {
          v24 = v20;
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v22 >= *(v21 + 16))
          {
            goto LABEL_90;
          }

          v24 = v20;
          v25 = *(v20 + 8 * v22 + 32);
        }

        v26 = v25;
        v20 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_89;
        }

        v27 = [v25 representedElementKind];
        if (!v27)
        {
          break;
        }

        v28 = v21;
        v29 = v27;
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (!v32)
        {
          v21 = v28;
          goto LABEL_8;
        }

        v35 = v30 == v33 && v32 == v34;
        if (v35)
        {
          v20 = v24;

          goto LABEL_31;
        }

        v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v21 = v28;
        if (v36)
        {
          v20 = v24;
LABEL_31:

          v4 = v104;
          v12 = v110;
          goto LABEL_32;
        }

LABEL_9:

        ++v22;
        v35 = v20 == i;
        v20 = v24;
        if (v35)
        {
          goto LABEL_25;
        }
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_8:

      goto LABEL_9;
    }

LABEL_25:

    v4 = v104;
    v12 = v110;
LABEL_26:
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;
    v40 = v111;
    IndexPath.init(item:section:)();
    v41 = sub_100080E8C(v37, v39);

    (*(v108 + 8))(v40, v12);
    if (v41)
    {
      type metadata accessor for DOCSBFolderFanCollectionViewLayoutAttributes();
      v26 = swift_dynamicCastClass();
      if (!v26)
      {
      }
    }

    else
    {
      v26 = 0;
    }

LABEL_32:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      break;
    }

    v43 = Strong;
    v44 = [v4 collectionView];
    if (!v44)
    {
      if (v20)
      {
        if (v20 >> 62)
        {
          sub_100085CB4();

          v92 = _bridgeCocoaArray<A>(_:)();

          goto LABEL_100;
        }

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        sub_100085CB4();

LABEL_56:
      }

      else
      {
      }

      goto LABEL_57;
    }

    v45 = v44;
    if (!v26)
    {
      if (!v20)
      {

        return v20;
      }

      if (!(v20 >> 62))
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        sub_100085CB4();

        return v20;
      }

      sub_100085CB4();

      v93 = _bridgeCocoaArray<A>(_:)();

LABEL_103:
      swift_bridgeObjectRelease_n();
      return v93;
    }

    v46 = v26;
    v47 = v43;
    sub_100080808(v43, v26);
    v100 = v47;

    v101 = v46;
    v48 = [v4 indexPathsOfItemsPinnedToBottom];
    v21 = sub_100085DA8(&qword_1000BC4F8, &protocol conformance descriptor for IndexPath);
    v49 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v112 = v49;
    v103 = v45;
    v104 = v4;
    v110 = v12;
    v95[0] = v20 >> 62;
    v99 = v21;
    if (v20)
    {
      v50 = v20 & 0xFFFFFFFFFFFFFF8;
      if (v20 >> 62)
      {
        v51 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v51 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      i = v4;

      if (v51)
      {
        v52 = 0;
        v106 = v20 & 0xC000000000000001;
        v53 = (v108 + 8);
        v54 = v51;
        while (1)
        {
          if (v106)
          {
            v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v52 >= *(v50 + 16))
            {
              goto LABEL_92;
            }

            v57 = *(v20 + 8 * v52 + 32);
          }

          v58 = v57;
          v59 = v52 + 1;
          if (__OFADD__(v52, 1))
          {
            goto LABEL_91;
          }

          sub_100080FD8(v57);
          if (*(v58 + OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_isPinnedToBottom) == 1 && *(v58 + OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_staysVisibleWhenPinnedToBottom) == 1)
          {
            v60 = [v58 indexPath];
            v61 = v105;
            static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

            v21 = v111;
            sub_100083B98(v111, v61);
            (*v53)(v21, v110);
          }

          else
          {
            v55 = [v58 indexPath];
            v21 = v111;
            static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

            v56 = v107;
            sub_1000856AC(v21, v107);
            (*v53)(v21, v110);
            sub_100085D40(v56);
          }

          ++v52;
          v35 = v59 == v54;
          v50 = v20 & 0xFFFFFFFFFFFFFF8;
          if (v35)
          {
            v49 = v112;
            v45 = v103;
            break;
          }
        }
      }
    }

    v98 = v20;
    v63 = [v45 numberOfItemsInSection:{0, v95[0]}];
    v97 = v95;
    __chkstk_darwin(v63);
    i = v64;
    v95[-2] = v64;
    v65 = *(v49 + 32);
    v66 = v65 & 0x3F;
    v67 = ((1 << v65) + 63) >> 6;
    v68 = 8 * v67;

    if (v66 > 0xD)
    {

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v94 = swift_slowAlloc();
        v84 = sub_100085308(v94, v67, v49, sub_100085D00);

LABEL_80:

        v85 = v104;
        v86 = [v104 indexPathsOfItemsPinnedToBottom];
        v87 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1000831E4(v84, v87);
        LOBYTE(v86) = v88;

        v89 = v103;
        if ((v86 & 1) == 0)
        {
          isa = Set._bridgeToObjectiveC()().super.isa;
          [v85 setIndexPathsOfItemsPinnedToBottom:isa];
        }

        v91 = v98;
        if (!v98)
        {

          return 0;
        }

        if (!v95[0])
        {

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          sub_100085CB4();

          return v91;
        }

        sub_100085CB4();

        v93 = _bridgeCocoaArray<A>(_:)();

        goto LABEL_103;
      }
    }

    v96 = v67;
    v95[1] = v95;
    __chkstk_darwin(v69);
    v102 = v95 - ((v68 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v102, v68);
    v70 = 0;
    v71 = v49;
    v72 = v49 + 56;
    v73 = 1 << *(v49 + 32);
    v74 = -1;
    if (v73 < 64)
    {
      v74 = ~(-1 << v73);
    }

    v20 = v74 & *(v49 + 56);
    v75 = (v73 + 63) >> 6;
    v107 = v108 + 16;
    v105 = 0;
    v106 = v108 + 8;
    v76 = v108;
    v77 = v110;
    while (v20)
    {
      v78 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_75:
      v81 = v78 | (v70 << 6);
      v82 = v111;
      (*(v76 + 16))(v111, *(v71 + 48) + *(v76 + 72) * v81, v77);
      v21 = IndexPath.item.getter();
      (*(v76 + 8))(v82, v77);
      if (v21 < i)
      {
        *&v102[(v81 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v81;
        if (__OFADD__(v105++, 1))
        {
          __break(1u);
LABEL_79:
          v84 = sub_100085398(v102, v96, v105, v71);
          goto LABEL_80;
        }
      }
    }

    v79 = v70;
    while (1)
    {
      v70 = v79 + 1;
      if (__OFADD__(v79, 1))
      {
        break;
      }

      if (v70 >= v75)
      {
        goto LABEL_79;
      }

      v80 = *(v72 + 8 * v70);
      ++v79;
      if (v80)
      {
        v78 = __clz(__rbit64(v80));
        v20 = (v80 - 1) & v80;
        goto LABEL_75;
      }
    }

    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    ;
  }

  if (!v20)
  {
LABEL_57:

    return v20;
  }

  if (!(v20 >> 62))
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100085CB4();
    goto LABEL_56;
  }

  sub_100085CB4();

  v92 = _bridgeCocoaArray<A>(_:)();
LABEL_100:
  swift_bridgeObjectRelease_n();

  return v92;
}

void *sub_100083084(unint64_t a1, __n128 a2)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  specialized ContiguousArray.reserveCapacity(_:)();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      type metadata accessor for DOCSBFolderFanCollectionViewLayoutAttributes();
      if (!swift_dynamicCastClass())
      {

        return 0;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v7 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    _CocoaArrayWrapper.endIndex.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
  }

  return _swiftEmptyArrayStorage;
}

void sub_1000831E4(uint64_t a1, uint64_t a2)
{
  v58 = type metadata accessor for IndexPath();
  v4 = *(v58 - 8);
  __chkstk_darwin(v58);
  v54 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v53 = &v46 - v7;
  v56 = sub_10000589C(&qword_1000BD4C8, &qword_1000914C8);
  __chkstk_darwin(v56);
  v57 = &v46 - v8;
  v9 = sub_10000589C(&qword_1000BC448, &qword_100090B98);
  __chkstk_darwin(v9 - 8);
  v62 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v64 = &v46 - v12;
  v13 = *(a2 + 56);
  v49 = a2 + 56;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v16 = ~(-1 << v14);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v13;
  v18 = *(a1 + 56);
  v47 = a1 + 56;
  v19 = 1 << *(a1 + 32);
  if (v19 < 64)
  {
    v15 = ~(-1 << v19);
  }

  v20 = v15 & v18;
  v48 = (v14 + 63) >> 6;
  v63 = (v4 + 56);
  v46 = (v19 + 63) >> 6;
  v59 = (v4 + 48);
  v60 = v4 + 16;
  v51 = a2;
  v52 = (v4 + 32);
  v61 = v4;
  v55 = (v4 + 8);

  v50 = a1;

  v21 = 0;
  v22 = 0;
  while (1)
  {
    if (!v17)
    {
      if (v48 <= v21 + 1)
      {
        v26 = v21 + 1;
      }

      else
      {
        v26 = v48;
      }

      v27 = v26 - 1;
      v24 = v58;
      v25 = v59;
      while (1)
      {
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v23 >= v48)
        {
          v17 = 0;
          v29 = 1;
          v21 = v27;
          goto LABEL_18;
        }

        v17 = *(v49 + 8 * v23);
        ++v21;
        if (v17)
        {
          v21 = v23;
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_40;
    }

    v23 = v21;
    v24 = v58;
    v25 = v59;
LABEL_17:
    v28 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    (*(v61 + 16))(v64, *(v51 + 48) + *(v61 + 72) * (v28 | (v23 << 6)), v24);
    v29 = 0;
LABEL_18:
    v30 = *v63;
    (*v63)(v64, v29, 1, v24);
    if (!v20)
    {
      if (v46 <= v22 + 1)
      {
        v32 = v22 + 1;
      }

      else
      {
        v32 = v46;
      }

      v33 = v32 - 1;
      while (1)
      {
        v31 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v31 >= v46)
        {
          v20 = 0;
          v35 = 1;
          v22 = v33;
          goto LABEL_29;
        }

        v20 = *(v47 + 8 * v31);
        ++v22;
        if (v20)
        {
          v22 = v31;
          goto LABEL_28;
        }
      }

LABEL_40:
      __break(1u);
      return;
    }

    v31 = v22;
LABEL_28:
    v34 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    (*(v61 + 16))(v62, *(v50 + 48) + *(v61 + 72) * (v34 | (v31 << 6)), v24);
    v35 = 0;
LABEL_29:
    v36 = v62;
    v30(v62, v35, 1, v24);
    v37 = v57;
    v38 = *(v56 + 48);
    sub_100085DEC(v64, v57);
    sub_100085DEC(v36, v37 + v38);
    v39 = *v25;
    if ((*v25)(v37, 1, v24) == 1)
    {
      break;
    }

    if (v39(v37 + v38, 1, v24) == 1)
    {

      (*v55)(v37, v24);
      return;
    }

    v40 = v53;
    v41 = *v52;
    (*v52)(v53, v37, v24);
    v42 = v37 + v38;
    v43 = v54;
    v41(v54, v42, v24);
    sub_100085DA8(&qword_1000BCCE8, &protocol conformance descriptor for IndexPath);
    v44 = dispatch thunk of static Equatable.== infix(_:_:)();
    v45 = *v55;
    (*v55)(v43, v24);
    v45(v40, v24);
    if ((v44 & 1) == 0)
    {

      return;
    }
  }

  if (v39(v37 + v38, 1, v24) != 1)
  {
    sub_100085D40(v37 + v38);
  }
}

Class sub_100083770(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t (*a7)(double, double, double, double))
{
  v12 = a1;
  v13 = a7(a2, a3, a4, a5);

  if (v13)
  {
    sub_100085CB4();
    v14.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v14.super.isa = 0;
  }

  return v14.super.isa;
}

double sub_10008398C()
{

  return result;
}

uint64_t sub_100083A7C(Swift::UInt *a1, Swift::UInt a2, Swift::UInt a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v14 = *v12;
      v13 = v12[1];
      if (v14 == a2 && v13 == a3)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_100084400(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    result = 1;
  }

  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t sub_100083B98(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100085DA8(&qword_1000BC4F8, &protocol conformance descriptor for IndexPath);
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
      sub_100085DA8(&qword_1000BCCE8, &protocol conformance descriptor for IndexPath);
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
    sub_100084570(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

void sub_100083E50(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000589C(&qword_1000BD4D8, &qword_1000914D8);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v19);
      Hasher._combine(_:)(v20);
      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1000840B8(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for IndexPath();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10000589C(&qword_1000BD4C0, &qword_1000914C0);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_100085DA8(&qword_1000BC4F8, &protocol conformance descriptor for IndexPath);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_100084400(Swift::UInt result, Swift::UInt a2, unint64_t a3, char a4)
{
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a4)
  {
    sub_100083E50(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      sub_1000847EC();
      a3 = v9;
      goto LABEL_15;
    }

    sub_100084B68(v7 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(result);
  Hasher._combine(_:)(a2);
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v16 = *v14;
      v15 = v14[1];
      if (v16 == result && v15 == a2)
      {
        goto LABEL_18;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_15:
  v18 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v19 = (*(v18 + 48) + 16 * a3);
  *v19 = result;
  v19[1] = a2;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_18:
  type metadata accessor for _NSRange(0);
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100084570(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000840B8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100084930();
      goto LABEL_12;
    }

    sub_100084DA0(v11 + 1);
  }

  v13 = *v3;
  sub_100085DA8(&qword_1000BC4F8, &protocol conformance descriptor for IndexPath);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_100085DA8(&qword_1000BCCE8, &protocol conformance descriptor for IndexPath);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1000847EC()
{
  v1 = v0;
  sub_10000589C(&qword_1000BD4D8, &qword_1000914D8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_100084930()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000589C(&qword_1000BD4C0, &qword_1000914C0);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    v24 = v3 + 16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
      (*(v3 + 32))(*(v8 + 48) + v20, v5, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

void sub_100084B68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000589C(&qword_1000BD4D8, &qword_1000914D8);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v18);
      Hasher._combine(_:)(v19);
      v20 = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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
    *v2 = v5;
  }
}

void sub_100084DA0(uint64_t a1)
{
  v2 = v1;
  v34 = type metadata accessor for IndexPath();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10000589C(&qword_1000BD4C0, &qword_1000914C0);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_100085DA8(&qword_1000BC4F8, &protocol conformance descriptor for IndexPath);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
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
    *v2 = v7;
  }
}

void sub_1000850A8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v35 = a4;
  v29 = a2;
  v30 = a1;
  v38 = type metadata accessor for IndexPath();
  v7.n128_f64[0] = __chkstk_darwin(v38);
  v36 = a3;
  v37 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v12 = *(a3 + 56);
  v11 = a3 + 56;
  v10 = v12;
  v13 = 1 << *(v11 - 24);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v33 = v6 + 16;
  v34 = v6;
  v31 = 0;
  v32 = (v6 + 8);
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v18 = v17 | (v9 << 6);
    v19 = v38;
    v20 = v37;
LABEL_11:
    (*(v34 + 16))(v20, *(v36 + 48) + *(v34 + 72) * v18, v19, v7);
    v23 = v35(v20);
    v24 = v20;
    if (v4)
    {
      (*v32)(v20, v19);
      return;
    }

    v25 = v23;
    (*v32)(v24, v19);
    if (v25)
    {
      *(v30 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_16:
        v27 = v36;

        sub_100085398(v30, v29, v31, v27);
        return;
      }
    }
  }

  v21 = v9;
  v19 = v38;
  v20 = v37;
  while (1)
  {
    v9 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_16;
    }

    v22 = *(v11 + 8 * v9);
    ++v21;
    if (v22)
    {
      v15 = (v22 - 1) & v22;
      v18 = __clz(__rbit64(v22)) | (v9 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_100085308(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1000850A8(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_100085398(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for IndexPath();
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

  sub_10000589C(&qword_1000BD4C0, &qword_1000914C0);
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
    sub_100085DA8(&qword_1000BC4F8, &protocol conformance descriptor for IndexPath);
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

uint64_t sub_1000856AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100085DA8(&qword_1000BC4F8, &protocol conformance descriptor for IndexPath);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_100085DA8(&qword_1000BCCE8, &protocol conformance descriptor for IndexPath);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100084930();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_10008592C(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

void sub_10008592C(int64_t a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v34 = (v12 + 1) & v11;
      v14 = *(v4 + 16);
      v13 = v4 + 16;
      v15 = v11;
      v16 = *(v13 + 56);
      v35 = v13;
      v32 = (v13 - 8);
      v33 = v14;
      do
      {
        v17 = v8;
        v18 = v16;
        v19 = v16 * v10;
        v33(v6, *(v7 + 48) + v16 * v10, v3);
        v20 = v7;
        v21 = v15;
        v22 = v20;
        sub_100085DA8(&qword_1000BC4F8, &protocol conformance descriptor for IndexPath);
        v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v15 = v21;
        if (a1 >= v34)
        {
          if (v24 >= v34 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v18;
            v28 = v18 * a1;
            if (v18 * a1 < v19 || v27 + v18 * a1 >= (v27 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v34 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v18;
LABEL_5:
        v10 = (v10 + 1) & v15;
        v8 = v17;
      }

      while (((*(v17 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

double sub_100085C24(char a1, double a2, double a3)
{
  v3 = 1.0;
  if (a1)
  {
    v3 = -1.0;
  }

  if (a2 >= a3)
  {
    a2 = a3;
  }

  v8 = v3 * (a3 - sqrt(a3 * a3 - a2 * a2));
  v4 = asin(a2 / a3 * v3);
  *v5.i64 = v8;
  *&v5.i64[1] = v4;
  v6 = vdupq_n_s64(0x7FF0000000000000uLL);
  *&result = vbslq_s8(vceqq_s64(vandq_s8(v5, v6), v6), vandq_s8(v5, vceqzq_s64(vandq_s8(v5, vdupq_n_s64(0xFFFFFFFFFFFFFuLL)))), v5).u64[0];
  return result;
}

unint64_t sub_100085CB4()
{
  result = qword_1000BD4B8;
  if (!qword_1000BD4B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000BD4B8);
  }

  return result;
}

uint64_t sub_100085D40(uint64_t a1)
{
  v2 = sub_10000589C(&qword_1000BC448, &qword_100090B98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100085DA8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexPath();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100085DEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000589C(&qword_1000BC448, &qword_100090B98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100085E74()
{
  v1 = (v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerFrame);
  *v1 = 0u;
  v1[1] = 0u;
  v2 = (v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerFrameInSuperview);
  *v2 = 0u;
  v2[1] = 0u;
  v3 = (v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_staticHeaderFrame);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = (v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_staticHeaderFrameInSuperview);
  *v4 = 0u;
  v4[1] = 0u;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerAdditionalYOffset) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerItemScaleBoundaryZoneTop) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerItemScaleBoundaryZoneBottom) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_itemTopBoundary) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_itemBottomBoundary) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_itemBottomBoundaryWithSpacing) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerAndSpacingHeight) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_scrollViewHeightExcludingCellHeight) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_scrollViewHeightExcludingHeaderRegion) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionHeaderZoneTop) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionHeaderZoneBottom) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionDockZoneTop) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionDockZoneBottom) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionHeaderZoneTop) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionHeaderZoneBottom) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionDockZoneTop) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionDockZoneBottom) = 0;
  v5 = OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_easeInFunction;
  v6 = objc_opt_self();
  *(v0 + v5) = [v6 functionWithName:kCAMediaTimingFunctionEaseIn];
  v7 = OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_easeOutFunction;
  *(v0 + v7) = [v6 functionWithName:kCAMediaTimingFunctionEaseOut];
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout____lazy_storage___easingFunctions) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_alwaysVisiblePinnedToBottomCount) = 3;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_indexPathsOfItemsPinnedToBottom) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_progressOfBottomItemIconInDock) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100086094(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3 + qword_1000BD530;
  v5 = *(v3 + qword_1000BD530);
  v6 = *(v3 + qword_1000BD530 + 8);
  v7 = *(v3 + qword_1000BD530 + 16);
  *v4 = *&a1;
  *(v4 + 8) = *&a2;
  *(v4 + 16) = a3 & 1;
  if ((a3 & 1) == 0)
  {
    if ((v7 & 1) != 0 || (v5 == *&a1 ? (v10 = v6 == *&a2) : (v10 = 0), !v10))
    {
      v11 = *(v3 + qword_1000BD600);
      if (v11)
      {
        v12 = *(v3 + qword_1000BD608);
        if (v12)
        {
          v13 = v11;
          v14 = v12;
          [v13 setConstant:*&a2];
          [v14 setConstant:*&a1];
        }
      }
    }
  }
}

id sub_100086210(void *a1)
{
  *&v1[OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_label] = 0;
  *&v1[OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_labelContainer] = 0;
  *&v1[OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_thumbnailShadow] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCSBCollectionViewCellContentView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

char *sub_1000863A0(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v8 = objc_allocWithZone(v6);
  v9 = &v8[qword_1000BD530];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  *&v8[qword_1000BD538] = 0;
  v10 = qword_1000BD540;
  type metadata accessor for DOCSBCollectionViewCellContentView();
  *&v8[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v8[qword_1000BD548] = 0;
  v11 = a1;
  v12 = DOCItemCollectionCell.init(frame:containerView:)();
  v13 = objc_allocWithZone(UIView);
  v14 = v12;
  v15 = [v13 init];
  v16 = [objc_allocWithZone(type metadata accessor for DOCItemCollectionCell.BackgroundStateView()) init];
  [v16 setAutoresizingMask:18];
  [v16 setHidden:1];

  [v15 addSubview:v16];
  v17 = *&v14[qword_1000BD548];
  *&v14[qword_1000BD548] = v16;

  v18 = [objc_allocWithZone(UIView) init];
  [v14 setSelectedBackgroundView:v18];

  [v14 setBackgroundView:v15];
  return v14;
}

id sub_100086568(void *a1)
{
  type metadata accessor for DOCItemCollectionCell();
  v3 = method lookup function for DOCItemCollectionCell();
  v3(a1);
  v4 = DOCItemCollectionCell.thumbnailView.getter();
  [v4 setDelegate:v1];

  type metadata accessor for DOCImageViewContainerView();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = *(v1 + qword_1000BD538);
  *(v1 + qword_1000BD538) = v5;

  v7 = *(v1 + qword_1000BD540);

  return [a1 addSubview:v7];
}

void sub_100086634()
{
  v1 = v0;
  v2 = type metadata accessor for UICellConfigurationState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();
  if (v6)
  {

    v7 = [v0 _bridgedConfigurationState];
    static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

    if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (UICellConfigurationState.isHighlighted.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter())
    {
      (*(v3 + 8))(v5, v2);
    }

    else
    {
      v14 = UICellConfigurationState.isEditing.getter();
      (*(v3 + 8))(v5, v2);
      if ((v14 & 1) == 0)
      {
        return;
      }
    }

    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_10008B2C0;
    *(v10 + 24) = v9;
    aBlock[4] = sub_10008B2D8;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000099B4;
    aBlock[3] = &unk_1000B0608;
    v11 = _Block_copy(aBlock);
    v12 = v1;

    [v8 performWithoutAnimation:v11];
    _Block_release(v11);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_1000868AC(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for DOCSBCollectionViewCell(0);
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "layoutSubviews");
  sub_100086634();
}

uint64_t sub_10008694C(uint64_t a1)
{
  type metadata accessor for DOCItemCollectionCell();
  v2 = method lookup function for DOCItemCollectionCell();
  v2();
  sub_100087274();
  v3 = *((swift_isaMask & *v1) + qword_1000BF1B8 + 152);

  return v3();
}

void sub_1000869EC(double a1)
{
  v1 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();
  if (v1)
  {
    v5 = v1;
    dispatch thunk of DOCItemCollectionCellContent.title.getter();
    v2 = dispatch thunk of DOCItemCollectionCell.titleLabel.getter();
    if (v2)
    {
      v3 = v2;
      v4 = String._bridgeToObjectiveC()();

      [v3 setText:v4];
    }

    else
    {
    }
  }
}

void sub_100086AB0()
{
  type metadata accessor for DOCItemCollectionCell();
  v0 = method lookup function for DOCItemCollectionCell();
  v0();

  sub_100087274();
}

void sub_100086AFC()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DOCItemCollectionCell();
  v8 = method lookup function for DOCItemCollectionCell();
  v8();
  v9 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();
  if (v9)
  {
    v20 = v9;
    v10 = dispatch thunk of DOCItemCollectionCellContent.thumbnail.getter();
    if (v10)
    {
      v11 = v10;
      v12 = DOCItemCollectionCell.thumbnailView.getter();
      [v12 updateImage:v11 addDecoration:{objc_msgSend(swift_unknownObjectRetain(), "isRepresentativeIcon")}];

      swift_unknownObjectRelease_n();
    }

    else
    {
      v13 = dispatch thunk of DOCItemCollectionCellContent.isInCreateMode.getter();
      if (v13 == 2)
      {
        __break(1u);
        return;
      }

      if ((v13 & 1) == 0)
      {
        v14 = DOCItemCollectionCell.thumbnailView.getter();
        [v14 setThumbnail:0];
      }
    }

    if (sub_100086EA8())
    {
      sub_10001A2A8(0, &unk_1000BCE20, OS_dispatch_queue_ptr);
      v15 = static OS_dispatch_queue.main.getter();
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_10008B330;
      aBlock[5] = v16;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000D508;
      aBlock[3] = &unk_1000B0658;
      v17 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10008B338();
      sub_10000589C(&unk_1000BCE30, &unk_100090E70);
      sub_1000518F8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v17);

      (*(v1 + 8))(v3, v0);
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      v18 = v20;
    }
  }
}