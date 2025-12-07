void *sub_100021D60(uint64_t a1)
{
  v2 = v1;
  v2[3] = 0;
  swift_unknownObjectWeakInit();
  v2[4] = a1;
  sub_100168088(&unk_100578420, &unk_100402000);

  BaseObjectGraph.inject<A>(_:)();
  sub_1000109E4(v5, (v2 + 5));
  type metadata accessor for PlaybackController();
  BaseObjectGraph.inject<A>(_:)();
  v2[15] = *&v5[0];
  sub_100168088(&qword_100573DB8, &unk_1004013A0);
  BaseObjectGraph.inject<A>(_:)();
  sub_1000109E4(v5, (v2 + 10));
  v2[16] = [objc_allocWithZone(PFCoreAnalyticsChannel) init];
  return v2;
}

id sub_100021E4C()
{
  v1 = OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager____lazy_storage___restoreQueue;
  v2 = *(v0 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager____lazy_storage___restoreQueue);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager____lazy_storage___restoreQueue);
  }

  else
  {
    v4 = [objc_allocWithZone(NSOperationQueue) init];
    [v4 setMaxConcurrentOperationCount:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_100021ED4()
{
  v1 = *&v0[OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_tasks];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    while (v3 < *(v1 + 16))
    {
      sub_100004428(v4, v96);
      sub_10021A6FC(v96);
      ++v3;
      sub_100004590(v96);
      v4 += 40;
      if (v2 == v3)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_5:
  v5 = *&v0[OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_jobStorage];
  v6 = *&v0[OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_jobStorage + 8];
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  swift_unknownObjectRetain();
  v8 = v0;
  v9 = static OS_os_log.downloads.getter();
  v10 = sub_100168088(&qword_100578178, &qword_100405720);
  v11 = objc_allocWithZone(v10);
  v12 = &v11[*((swift_isaMask & *v11) + 0x198)];
  *v12 = 0;
  v12[8] = 2;
  v13 = &v11[*((swift_isaMask & *v11) + 0x1A8)];
  *v13 = sub_100030AD8;
  v13[1] = v7;
  v14 = &v11[*((swift_isaMask & *v11) + 0x1A0)];
  *v14 = v5;
  *(v14 + 1) = v6;
  *&v11[*((swift_isaMask & *v11) + 0x1B0)] = v9;
  v95.receiver = v11;
  v95.super_class = v10;
  swift_unknownObjectRetain();
  v15 = objc_msgSendSuper2(&v95, "init");
  v16 = swift_allocObject();
  *(v16 + 16) = v8;
  v17 = v8;
  v18 = static OS_os_log.downloads.getter();
  v19 = sub_100168088(&qword_100578180, &qword_100405728);
  v20 = objc_allocWithZone(v19);
  v21 = &v20[*((swift_isaMask & *v20) + 0x198)];
  *v21 = 0;
  v21[8] = 2;
  v22 = &v20[*((swift_isaMask & *v20) + 0x1A8)];
  *v22 = sub_10003CDF8;
  v22[1] = v16;
  v23 = &v20[*((swift_isaMask & *v20) + 0x1A0)];
  *v23 = v5;
  *(v23 + 1) = v6;
  *&v20[*((swift_isaMask & *v20) + 0x1B0)] = v18;
  v94.receiver = v20;
  v94.super_class = v19;
  v24 = objc_msgSendSuper2(&v94, "init");
  v25 = swift_allocObject();
  *(v25 + 16) = v17;
  v26 = sub_100168088(&qword_100578188, &qword_100405730);
  v27 = objc_allocWithZone(v26);
  v28 = &v27[*((swift_isaMask & *v27) + 0x180)];
  *v28 = 0;
  v28[8] = 2;
  v29 = &v27[*((swift_isaMask & *v27) + 0x188)];
  *v29 = sub_10003C508;
  v29[1] = v25;
  v93.receiver = v27;
  v93.super_class = v26;
  v30 = v17;
  v88.receiver = objc_msgSendSuper2(&v93, "init");
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  v32 = sub_100168088(&qword_100578190, &qword_100405738);
  v33 = objc_allocWithZone(v32);
  v34 = &v33[*((swift_isaMask & *v33) + 0x180)];
  *v34 = 0;
  v34[8] = 2;
  v35 = &v33[*((swift_isaMask & *v33) + 0x188)];
  *v35 = sub_100023670;
  *(v35 + 1) = v31;
  v92.receiver = v33;
  v92.super_class = v32;
  v86 = v30;
  v87 = objc_msgSendSuper2(&v92, "init");
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = &v15[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v38 = *&v15[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v39 = *&v15[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8];
  *v37 = sub_100031494;
  v37[1] = v36;

  sub_1000112B4(v38, v39);

  ObjectType = swift_getObjectType();
  v41 = swift_conformsToProtocol2();
  if (!v41)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v42 = v41;
  v43 = swift_allocObject();
  *(v43 + 24) = v42;
  swift_unknownObjectWeakInit();
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = swift_allocObject();
  *(v45 + 16) = v44;
  *(v45 + 24) = v43;
  v46 = *(v42 + 72);
  v47 = v15;

  v46(sub_1000319D0, v45, ObjectType, v42);

  v91.receiver = v24;
  v91.super_class = type metadata accessor for BaseOperation();
  v88.super_class = v91.super_class;
  objc_msgSendSuper2(&v91, "addDependency:", v47);

  v85 = v47;
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = &v24[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v50 = *&v24[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v51 = *&v24[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8];
  *v49 = sub_10003B660;
  v49[1] = v48;

  sub_1000112B4(v50, v51);

  v52 = swift_getObjectType();
  v53 = swift_conformsToProtocol2();
  if (!v53)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v54 = v53;
  v55 = swift_allocObject();
  *(v55 + 24) = v54;
  swift_unknownObjectWeakInit();
  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v57 = swift_allocObject();
  *(v57 + 16) = v56;
  *(v57 + 24) = v55;
  v58 = *(v54 + 72);
  v59 = v24;

  v58(sub_10003B6A0, v57, v52, v54);

  v90 = v88;
  objc_msgSendSuper2(&v90, "addDependency:", v59);

  v60 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v61 = (v88.receiver + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
  v62 = *(v88.receiver + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
  v63 = *(v88.receiver + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8);
  *v61 = sub_10003B660;
  v61[1] = v60;

  sub_1000112B4(v62, v63);

  v64 = swift_getObjectType();
  v65 = swift_conformsToProtocol2();
  if (v65)
  {
    v66 = v65;
    v67 = swift_allocObject();
    *(v67 + 24) = v66;
    swift_unknownObjectWeakInit();
    v68 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v69 = swift_allocObject();
    *(v69 + 16) = v68;
    *(v69 + 24) = v67;
    v70 = *(v66 + 72);
    v71 = v88.receiver;
    v72 = v87;

    v70(sub_10003B6A0, v69, v64, v66);

    v89.receiver = v72;
    v89.super_class = v88.super_class;
    objc_msgSendSuper2(&v89, "addDependency:", v71);

    v73 = swift_allocObject();
    *(v73 + 16) = v86;
    v74 = &v72[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
    v75 = *&v72[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
    v76 = *&v72[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError + 8];
    *v74 = sub_10021B4D8;
    v74[1] = v73;
    v77 = v86;
    sub_1000112B4(v75, v76);

    v78 = *&v77[OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_operationQueue];
    sub_100168088(&unk_100574680, &qword_100401740);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_100402D70;
    *(v79 + 32) = v85;
    *(v79 + 40) = v59;
    *(v79 + 48) = v71;
    *(v79 + 56) = v72;
    sub_100009F1C(0, &unk_10057A6A0, NSOperation_ptr);
    v80 = v85;
    v81 = v59;
    v82 = v71;
    v83 = v72;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v78 addOperations:isa waitUntilFinished:0];

    return;
  }

LABEL_12:
  __break(1u);

  sub_100004590(v96);
  __break(1u);
}

uint64_t sub_100022914()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002294C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022984()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t type metadata accessor for JobStorageError(uint64_t a1)
{
  result = qword_100577C20;
  if (!qword_100577C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100022A30(uint64_t a1)
{
  sub_100022AAC(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DownloadJob(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100022AAC(uint64_t a1)
{
  if (!qword_100577C30)
  {
    sub_100168310(&qword_100575C50, &unk_100402650);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100577C30);
    }
  }
}

uint64_t sub_100022B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for OperationResult(319, *(a1 + 368), a3, a4);
  if (v5 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_100022C18()
{
  result = qword_10057EED0;
  if (!qword_10057EED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057EED0);
  }

  return result;
}

void *sub_100022C90(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100022DC0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100022DC0(v10, 0);
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

void *sub_100022DC0(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100168088(&qword_10057CE38, "؏\b");
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_100022E34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t))
{
  sub_10001B944(a1, v19);
  sub_100168088(a3, a4);
  swift_dynamicCast();
  v10 = v21;
  if (v21 >= 2u)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      [Strong cancel];
      goto LABEL_6;
    }
  }

  else
  {
    v11 = v20;
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = v12 + *((swift_isaMask & *v12) + 0x198);
      swift_beginAccess();
      v15 = *v14;
      *v14 = v11;
      v16 = v14[8];
      v14[8] = v10;
      a5(v11, v10);
      a6(v15, v16);
LABEL_6:
    }
  }

  return (a6)(v20, v21);
}

uint64_t sub_100023004(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t))
{
  sub_10001B944(a1, v19);
  sub_100168088(a3, a4);
  swift_dynamicCast();
  v10 = v21;
  if (v21 >= 2u)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      [Strong cancel];
      goto LABEL_6;
    }
  }

  else
  {
    v11 = v20;
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = v12 + *((swift_isaMask & *v12) + 0x180);
      swift_beginAccess();
      v15 = *v14;
      *v14 = v11;
      v16 = v14[8];
      v14[8] = v10;
      a5(v11, v10);
      a6(v15, v16);
LABEL_6:
    }
  }

  return (a6)(v20, v21);
}

uint64_t sub_100023170()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *v0;
  v4 = swift_isaMask;
  v18 = *((swift_isaMask & v3) + 0x170);
  v5 = *(v18 - 8);
  __chkstk_darwin();
  v7 = &v17 - v6;
  v19 = type metadata accessor for OperationResult(0, *((v4 & v3) + 0x178), v8, v9);
  v10 = *(v19 - 8);
  __chkstk_darwin();
  __chkstk_darwin();
  v12 = &v17 - v11;
  v13 = *(v1 + *((v4 & v3) + 0x188));
  WitnessTable = swift_getWitnessTable();
  sub_100014CBC(ObjectType, WitnessTable, v7);
  v13(v7);
  (*(v5 + 8))(v7, v18);
  v15 = swift_getWitnessTable();
  sub_10002DF44(v12, ObjectType, v15, &off_1004F25B8, &off_1004F2598);
  return (*(v10 + 8))(v12, v19);
}

id sub_100023468(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for NSUserDefaults.Name();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v1[OBJC_IVAR____TtC8Podcasts17MenuBarController_menuBarPresenter];
  v9 = type metadata accessor for GlobalActionController();
  *v8 = 0;
  *(v8 + 1) = 0;
  v10 = objc_allocWithZone(v9);

  *&v2[OBJC_IVAR____TtC8Podcasts17MenuBarController_globalActionController] = sub_1000236B0(v11);
  sub_100009F1C(0, &qword_100579A00, NSUserDefaults_ptr);
  (*(v5 + 104))(v7, enum case for NSUserDefaults.Name.shared(_:), v4);
  sub_100024384(&unk_10057E7B0, &qword_100579A00, NSUserDefaults_ptr, &protocol conformance descriptor for NSUserDefaults);
  BaseObjectGraph.inject<A>(_:named:)();
  (*(v5 + 8))(v7, v4);
  *&v2[OBJC_IVAR____TtC8Podcasts17MenuBarController_userDefaults] = v16;
  v12 = [objc_opt_self() mainSystem];
  [v12 setNeedsRebuild];

  v15.receiver = v2;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "init");
}

id sub_1000236B0(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC8PodcastsP33_1EBA7FB1085F92D3987B8EDF2EAB73D122GlobalActionController_debugActionsController;
  *&v2[v5] = [objc_allocWithZone(type metadata accessor for DebugActionsController()) init];
  *&v2[OBJC_IVAR____TtC8PodcastsP33_1EBA7FB1085F92D3987B8EDF2EAB73D122GlobalActionController_objectGraph] = a1;
  sub_100168088(&qword_10057E670, &unk_100405FE0);

  BaseObjectGraph.inject<A>(_:)();
  sub_1000109E4(v18, &v2[OBJC_IVAR____TtC8PodcastsP33_1EBA7FB1085F92D3987B8EDF2EAB73D122GlobalActionController_libraryActionController]);
  sub_100168088(&unk_100575CF0, &qword_100401FF0);
  BaseObjectGraph.inject<A>(_:)();
  *&v2[OBJC_IVAR____TtC8PodcastsP33_1EBA7FB1085F92D3987B8EDF2EAB73D122GlobalActionController_libraryDataProvider] = v18[0];
  sub_100168088(&unk_10057AB00, &qword_100406C50);
  BaseObjectGraph.inject<A>(_:)();
  sub_1000109E4(v18, &v2[OBJC_IVAR____TtC8PodcastsP33_1EBA7FB1085F92D3987B8EDF2EAB73D122GlobalActionController_episodeController]);
  sub_100168088(&qword_10057ABC0, &qword_10040C610);
  BaseObjectGraph.inject<A>(_:)();
  *&v2[OBJC_IVAR____TtC8PodcastsP33_1EBA7FB1085F92D3987B8EDF2EAB73D122GlobalActionController_syncController] = *&v18[0];
  type metadata accessor for PlaybackController();
  BaseObjectGraph.inject<A>(_:)();
  *&v2[OBJC_IVAR____TtC8PodcastsP33_1EBA7FB1085F92D3987B8EDF2EAB73D122GlobalActionController_playbackController] = *&v18[0];
  v17.receiver = v2;
  v17.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v17, "init");
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 defaultCenter];
  [v9 addObserver:v8 selector:"didChangeStoreAccount:" name:ACDAccountStoreDidChangeNotification object:0];

  v10 = v8;
  v11 = String._bridgeToObjectiveC()();
  [v9 addObserver:v10 selector:"mainWindowDidChangeKey:" name:v11 object:0];

  v12 = v10;
  v13 = String._bridgeToObjectiveC()();
  [v9 addObserver:v12 selector:"mainWindowDidChangeKey:" name:v13 object:0];

  v14 = v12;
  v15 = static NSNotificationName.pfPerShowSettingsChanged.getter();
  [v9 addObserver:v14 selector:"perShowSettingsDidChange:" name:v15 object:0];

  return v14;
}

uint64_t sub_10002398C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v38 = a3;
  v6 = type metadata accessor for DownloadJob(0);
  v7 = *(v6 - 1);
  __chkstk_darwin();
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = static os_log_type_t.default.getter();
  v34 = sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v12 = static OS_os_log.downloads.getter();
  v33 = v11;
  v13 = os_log_type_enabled(v12, v11);
  v32[1] = v6;
  if (v13)
  {

    v14 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    v35 = v32[0];
    *v14 = 134349314;
    *(v14 + 4) = *(v10 + 16);

    *(v14 + 12) = 2082;
    v15 = Array.description.getter();
    v17 = sub_1000153E0(v15, v16, &v35);

    *(v14 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v12, v33, "%{public}ld jobs retreived from storage %{public}s", v14, 0x16u);
    sub_100004590(v32[0]);
  }

  v18 = &_swiftEmptyDictionarySingleton;
  v35 = &_swiftEmptyDictionarySingleton;
  v19 = *(v10 + 16);
  if (v19)
  {
    v20 = 0;
    while (v20 < *(v10 + 16))
    {
      sub_1001BE270(v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v20, v9);
      sub_10021B000(&v35, v9);
      if (v3)
      {
        goto LABEL_15;
      }

      ++v20;
      sub_1001BE660(v9);
      if (v19 == v20)
      {
        v18 = v35;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_15:

    sub_1001BE660(v9);

    __break(1u);
  }

  else
  {
LABEL_9:
    v21 = static os_log_type_t.default.getter();
    v22 = static OS_os_log.downloads.getter();
    if (os_log_type_enabled(v22, v21))
    {

      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v35 = v24;
      *v23 = 134349314;
      *(v23 + 4) = v18[2];

      *(v23 + 12) = 2082;
      sub_100168088(&qword_100574900, &unk_100400AA0);
      sub_100023DA8();
      v25 = Dictionary.description.getter();
      v27 = sub_1000153E0(v25, v26, &v35);

      *(v23 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v22, v21, "Sync completed. Number of jobs running: %{public}ld. %{public}s", v23, 0x16u);
      sub_100004590(v24);
    }

    v28 = *(a2 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
    if (v28)
    {
      v29 = *(a2 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8);
      v37 = sub_100168088(&qword_100578198, &qword_10040F690);
      v35 = v18;
      v36 = 0;

      sub_100013CB4(v28, v29);
      v28(&v35);
      sub_1000112B4(v28, v29);
      sub_100004590(&v35);
    }

    sub_10003172C();

    v31 = v38;
    *v38 = 0;
    *(v31 + 8) = 0;
  }

  return result;
}

unint64_t sub_100023DA8()
{
  result = qword_1005781A0;
  if (!qword_1005781A0)
  {
    type metadata accessor for DownloadJob(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005781A0);
  }

  return result;
}

uint64_t sub_100023E24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = sub_100168088(&unk_100581800, &unk_10040F698);
  __chkstk_darwin();
  v46 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v47 = &v40 - v7;
  v8 = *a1;
  v49 = a2;
  swift_unknownObjectWeakInit();
  v9 = *(v8 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v41 = a3;
    v52 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v11 = v8 + 64;
    v12 = _HashTable.startBucket.getter();
    v13 = 0;
    v10 = *(v8 + 36);
    v42 = v8 + 72;
    v43 = v10;
    v44 = v8 + 64;
    v45 = v9;
    while (1)
    {
      if (v12 < 0 || v12 >= 1 << *(v8 + 32))
      {
        goto LABEL_40;
      }

      v15 = v12 >> 6;
      a3 = 1 << v12;
      if ((*(v11 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        break;
      }

      if (v10 != *(v8 + 36))
      {
        goto LABEL_42;
      }

      v50 = v13;
      v16 = v48;
      v17 = *(v48 + 48);
      v18 = *(v8 + 48);
      v19 = type metadata accessor for DownloadJob(0);
      v10 = v47;
      sub_1003711F4(v18 + *(*(v19 - 8) + 72) * v12, v47, type metadata accessor for DownloadJob);
      sub_100004428(*(v8 + 56) + 40 * v12, v10 + v17);
      v20 = v8;
      v21 = v46;
      sub_100370EAC(v10, v46, type metadata accessor for DownloadJob);
      v22 = *(v16 + 48);
      sub_1000109E4((v10 + v17), v21 + v22);
      sub_10035E75C(v21, v21 + v22, &v53);
      v23 = v21;
      v8 = v20;
      sub_100009104(v23, &unk_100581800, &unk_10040F698);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v14 = 1 << *(v20 + 32);
      if (v12 >= v14)
      {
        goto LABEL_43;
      }

      v11 = v44;
      v24 = v45;
      v25 = *(v44 + 8 * v15);
      if ((v25 & a3) == 0)
      {
        goto LABEL_44;
      }

      v10 = v43;
      if (v43 != *(v8 + 36))
      {
        goto LABEL_45;
      }

      v26 = v25 & (-2 << (v12 & 0x3F));
      if (v26)
      {
        v14 = __clz(__rbit64(v26)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = v15 << 6;
        v28 = v15 + 1;
        v29 = (v42 + 8 * v15);
        while (v28 < (v14 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            sub_100252820(v12, v43, 0);
            v14 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        sub_100252820(v12, v43, 0);
      }

LABEL_4:
      v13 = v50 + 1;
      v12 = v14;
      if (v50 + 1 == v24)
      {
        v32 = v52;
        a3 = v41;
        v10 = _swiftEmptyArrayStorage;
        goto LABEL_20;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v32 = _swiftEmptyArrayStorage;
LABEL_20:
  swift_unknownObjectWeakDestroy();
  v53 = _swiftEmptyArrayStorage;
  v33 = v32[2];
  if (v33)
  {
    for (i = 0; i != v33; ++i)
    {
      if (i >= v32[2])
      {
        goto LABEL_39;
      }

      v52 = v32[i + 4];

      sub_10035F790(&v52, v49, &v51);

      if (v51)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v10 = v53;
      }
    }
  }

  swift_unknownObjectWeakInit();
  if (v10 >> 62)
  {
LABEL_47:
    v35 = _CocoaArrayWrapper.endIndex.getter();
    if (!v35)
    {
      goto LABEL_48;
    }

LABEL_30:
    v36 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v38 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v36 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v37 = *(v10 + 8 * v36 + 32);

        v38 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }
      }

      v52 = v37;
      sub_10035FE1C(&v52, &v53);

      ++v36;
      if (v38 == v35)
      {
        goto LABEL_48;
      }
    }
  }

  v35 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v35)
  {
    goto LABEL_30;
  }

LABEL_48:

  result = swift_unknownObjectWeakDestroy();
  *a3 = 0;
  *(a3 + 8) = 0;
  return result;
}

uint64_t sub_100024384(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100009F1C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000243C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void, void), uint64_t a6)
{
  v11 = 0xD00000000000002DLL;
  v43 = type metadata accessor for Logger();
  v12 = *(v43 - 8);
  __chkstk_darwin();
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && ((v16 = Strong, v17 = *sub_1000044A0(a4, a4[3]), v41[1] = a6, v42 = a5, v17 > 1) ? (v17 != 2 ? (v18 = "ts.downloads.episodes.headers", v11 = 0xD00000000000002FLL) : (v18 = "ts.downloads.episodes.restore")) : v17 ? (v18 = "sodes.userInitiated") : (v11 = 0xD000000000000033, v18 = "bytes"), v19 = v18 | 0x8000000000000000, v20 = *&v16[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_accessQueue], v21 = swift_allocObject(), v21[2] = v16, v21[3] = v11, v21[4] = v19, v21[5] = a1, v21[6] = a2, v22 = swift_allocObject(), *(v22 + 16) = sub_10002D9B0, *(v22 + 24) = v21, v48 = sub_10002D7F0, v49 = v22, aBlock[0] = _NSConcreteStackBlock, aBlock[1] = 1107296256, aBlock[2] = sub_10002D904, v47 = &unk_1004F10C0, v23 = _Block_copy(aBlock), swift_unknownObjectRetain_n(), v24 = v16, , , dispatch_sync(v20, v23), swift_unknownObjectRelease(), _Block_release(v23), LOBYTE(v23) = swift_isEscapingClosureAtFileLocation(), v24, , result = , a5 = v42, (v23 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    static Logger.downloads.getter();
    sub_100004428(a4, aBlock);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v45 = v29;
      *v28 = 136446210;
      v30 = *sub_1000044A0(aBlock, v47);
      v31 = 0xD000000000000033;
      v32 = "bytes";
      v33 = "ts.downloads.episodes.restore";
      v34 = 0xD00000000000002FLL;
      if (v30 == 2)
      {
        v34 = 0xD00000000000002DLL;
      }

      else
      {
        v33 = "ts.downloads.episodes.headers";
      }

      if (v30)
      {
        v31 = 0xD00000000000002DLL;
        v32 = "sodes.userInitiated";
      }

      if (v30 <= 1)
      {
        v35 = v31;
      }

      else
      {
        v35 = v34;
      }

      if (v30 <= 1)
      {
        v36 = v32;
      }

      else
      {
        v36 = v33;
      }

      strcpy(v44, "ConfigType: ");
      BYTE5(v44[1]) = 0;
      HIWORD(v44[1]) = -5120;
      v37 = v36 | 0x8000000000000000;
      String.append(_:)(*&v35);

      v38 = v44[0];
      v39 = v44[1];
      sub_100004590(aBlock);
      v40 = sub_1000153E0(v38, v39, &v45);

      *(v28 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v26, v27, "Created downloader for %{public}s", v28, 0xCu);
      sub_100004590(v29);

      (*(v12 + 8))(v14, v43);
    }

    else
    {

      (*(v12 + 8))(v14, v43);
      sub_100004590(aBlock);
    }

    return a5(0, 0);
  }

  return result;
}

uint64_t sub_100024870()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000248BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  swift_unknownObjectRetain();

  sub_100024954(a4, a5, a2, a3);
  return swift_endAccess();
}

uint64_t sub_100024954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_10002DAF0(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_10000F9A8(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_100260DB0();
        v16 = v18;
      }

      swift_unknownObjectRelease();
      result = sub_100292DA0(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

Swift::Int sub_100024A58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100168088(&qword_100572F50, &qword_1003FF390);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100024D10@<X0>(uint64_t a1@<X8>)
{
  v304 = a1;
  v303 = sub_100168088(&qword_10057AC60, &qword_100408258);
  v302 = *(v303 - 8);
  __chkstk_darwin();
  v301 = &v218 - v1;
  v300 = sub_100168088(&qword_10057AC68, &unk_10040C1A0);
  v299 = *(v300 - 8);
  __chkstk_darwin();
  v298 = &v218 - v2;
  v297 = sub_100168088(&qword_10057AC70, &qword_100408260);
  v296 = *(v297 - 8);
  __chkstk_darwin();
  v295 = &v218 - v3;
  v294 = sub_100168088(&qword_10057AC78, &qword_100408268);
  v293 = *(v294 - 8);
  __chkstk_darwin();
  v292 = &v218 - v4;
  v291 = sub_100168088(&qword_10057AC80, &qword_100408270);
  v290 = *(v291 - 8);
  __chkstk_darwin();
  v288 = &v218 - v5;
  v287 = sub_100168088(&qword_10057AC88, &qword_100408278);
  v286 = *(v287 - 8);
  __chkstk_darwin();
  v285 = &v218 - v6;
  v284 = sub_100168088(&qword_10057AC90, &qword_100408280);
  v283 = *(v284 - 8);
  __chkstk_darwin();
  v282 = &v218 - v7;
  v281 = type metadata accessor for TabChangeActionOpenStoreURLActionImplementation();
  v280 = *(v281 - 8);
  __chkstk_darwin();
  v279 = &v218 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = type metadata accessor for TabChangeOpenAudioActionImplementation();
  v277 = *(v278 - 8);
  __chkstk_darwin();
  v276 = &v218 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v275 = type metadata accessor for TabChangeOpenAppLocationActionImplementation();
  v274 = *(v275 - 8);
  __chkstk_darwin();
  v272 = &v218 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = sub_100168088(&qword_10057AC98, &qword_100408288);
  v270 = *(v271 - 8);
  __chkstk_darwin();
  v269 = &v218 - v11;
  v268 = sub_100168088(&qword_10057ACA0, &qword_100408290);
  v267 = *(v268 - 8);
  __chkstk_darwin();
  v266 = &v218 - v12;
  v265 = sub_100168088(&qword_10057ACA8, &qword_100408298);
  v264 = *(v265 - 8);
  __chkstk_darwin();
  v263 = &v218 - v13;
  v262 = type metadata accessor for IgnorePurgedEpisodesActionImplementation();
  v261 = *(v262 - 8);
  __chkstk_darwin();
  v260 = &v218 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = type metadata accessor for RestorePurgedEpisodesActionImplementation();
  v258 = *(v259 - 8);
  __chkstk_darwin();
  v257 = &v218 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = type metadata accessor for IgnoreAbandonedDownloadsActionImplementation();
  v255 = *(v256 - 8);
  __chkstk_darwin();
  v254 = &v218 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = type metadata accessor for RemoveAbandonedDownloadsActionImplementation();
  v252 = *(v253 - 8);
  __chkstk_darwin();
  v251 = &v218 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = type metadata accessor for DeclineEpisodeLimitRecommendationActionImplementation();
  v249 = *(v250 - 8);
  __chkstk_darwin();
  v248 = &v218 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = type metadata accessor for AcceptEpisodeLimitRecommendationActionImplementation();
  v246 = *(v247 - 8);
  __chkstk_darwin();
  v245 = &v218 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  refreshed = type metadata accessor for RequestTipProviderRefreshActionImplementation();
  v243 = *(refreshed - 8);
  __chkstk_darwin();
  v242 = &v218 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_10057ACB0, &qword_1004082A0);
  __chkstk_darwin();
  v218 = &v218 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v240 = &v218 - v22;
  __chkstk_darwin();
  v224 = &v218 - v23;
  __chkstk_darwin();
  v223 = &v218 - v24;
  v221 = type metadata accessor for PlayQueueItemActionImplementation();
  v220 = *(v221 - 8);
  __chkstk_darwin();
  v219 = &v218 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = type metadata accessor for TextFieldAlertActionImplementation();
  v239 = *(v238 - 8);
  __chkstk_darwin();
  v237 = &v218 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = type metadata accessor for AlertSheetActionImplementation();
  v236 = *(v235 - 8);
  __chkstk_darwin();
  v234 = &v218 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = type metadata accessor for AlertActionImplementation();
  v233 = *(v232 - 8);
  __chkstk_darwin();
  v231 = &v218 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = type metadata accessor for FollowShowByURLActionImplementation();
  v230 = *(v229 - 8);
  __chkstk_darwin();
  v228 = &v218 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = sub_100168088(&qword_10057ACB8, &qword_1004082A8);
  v227 = *(v226 - 8);
  __chkstk_darwin();
  v225 = &v218 - v30;
  StationActionImplementation = type metadata accessor for CreateStationActionImplementation();
  v32 = *(StationActionImplementation - 8);
  __chkstk_darwin();
  v34 = &v218 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100168088(&qword_10057AB40, &qword_10040B770);
  v36 = *(v35 - 8);
  __chkstk_darwin();
  v273 = &v218 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v289 = &v218 - v38;
  __chkstk_darwin();
  v339 = &v218 - v39;
  __chkstk_darwin();
  v338 = &v218 - v40;
  __chkstk_darwin();
  v337 = &v218 - v41;
  __chkstk_darwin();
  v336 = &v218 - v42;
  __chkstk_darwin();
  v335 = &v218 - v43;
  __chkstk_darwin();
  v334 = &v218 - v44;
  __chkstk_darwin();
  v333 = &v218 - v45;
  __chkstk_darwin();
  v332 = &v218 - v46;
  __chkstk_darwin();
  v331 = &v218 - v47;
  __chkstk_darwin();
  v330 = &v218 - v48;
  __chkstk_darwin();
  v329 = &v218 - v49;
  __chkstk_darwin();
  v328 = &v218 - v50;
  __chkstk_darwin();
  v327 = &v218 - v51;
  __chkstk_darwin();
  v326 = &v218 - v52;
  __chkstk_darwin();
  v325 = &v218 - v53;
  __chkstk_darwin();
  v324 = &v218 - v54;
  __chkstk_darwin();
  v323 = &v218 - v55;
  __chkstk_darwin();
  v322 = &v218 - v56;
  __chkstk_darwin();
  v222 = &v218 - v57;
  __chkstk_darwin();
  v241 = &v218 - v58;
  __chkstk_darwin();
  v305 = &v218 - v59;
  __chkstk_darwin();
  v306 = &v218 - v60;
  __chkstk_darwin();
  v307 = &v218 - v61;
  __chkstk_darwin();
  v308 = &v218 - v62;
  __chkstk_darwin();
  v309 = &v218 - v63;
  __chkstk_darwin();
  v310 = &v218 - v64;
  __chkstk_darwin();
  v311 = &v218 - v65;
  __chkstk_darwin();
  v312 = &v218 - v66;
  __chkstk_darwin();
  v313 = &v218 - v67;
  __chkstk_darwin();
  v321 = &v218 - v68;
  __chkstk_darwin();
  v320 = &v218 - v69;
  __chkstk_darwin();
  v319 = &v218 - v70;
  __chkstk_darwin();
  v318 = &v218 - v71;
  __chkstk_darwin();
  v317 = &v218 - v72;
  __chkstk_darwin();
  v316 = &v218 - v73;
  __chkstk_darwin();
  v75 = &v218 - v74;
  __chkstk_darwin();
  v77 = &v218 - v76;
  CreateStationActionImplementation.init()();
  v78 = type metadata accessor for BaseObjectGraph();
  ActionDispatcher.init()();
  v79 = v36 + 16;
  v340 = *(v36 + 16);
  v340(v77, v75, v35);
  sub_100283980(&qword_10057ACC0, &type metadata accessor for CreateStationActionImplementation, &protocol conformance descriptor for CreateStationActionImplementation);
  v315 = v77;
  ActionDispatcher.add<A>(_:)();
  v314 = v36;
  v344 = *(v36 + 8);
  v344(v75, v35);
  (*(v32 + 8))(v34, StationActionImplementation);
  type metadata accessor for DeleteStationAction();
  sub_100283980(&qword_10057ACC8, &type metadata accessor for DeleteStationAction, &protocol conformance descriptor for DeleteStationAction);
  sub_100283980(&qword_10057ACD0, &type metadata accessor for DeleteStationAction, &protocol conformance descriptor for DeleteStationAction);
  v80 = v225;
  IntentDelegatingActionImplementation.init()();
  ActionDispatcher.init()();
  v81 = v340;
  v340(v316, v75, v35);
  sub_100009FAC(&qword_10057ACD8, &qword_10057ACB8, &qword_1004082A8, &protocol conformance descriptor for IntentDelegatingActionImplementation<A>);
  v82 = v226;
  v83 = v78;
  ActionDispatcher.add<A>(_:)();
  v84 = v344;
  v344(v75, v35);
  (*(v227 + 8))(v80, v82);
  v85 = v228;
  FollowShowByURLActionImplementation.init()();
  ActionDispatcher.init()();
  v81(v317, v75, v35);
  sub_100283980(&qword_10057ACE0, &type metadata accessor for FollowShowByURLActionImplementation, &protocol conformance descriptor for FollowShowByURLActionImplementation);
  v86 = v229;
  ActionDispatcher.add<A>(_:)();
  v84(v75, v35);
  v87 = v36 + 8;
  (*(v230 + 8))(v85, v86);
  v88 = v231;
  AlertActionImplementation.init()();
  ActionDispatcher.init()();
  v81(v318, v75, v35);
  sub_100283980(&qword_10057ACE8, &type metadata accessor for AlertActionImplementation, &protocol conformance descriptor for AlertActionImplementation);
  v89 = v232;
  ActionDispatcher.add<A>(_:)();
  v90 = v344;
  v344(v75, v35);
  (*(v233 + 8))(v88, v89);
  v91 = v234;
  AlertSheetActionImplementation.init()();
  ActionDispatcher.init()();
  v81(v319, v75, v35);
  sub_100283980(&qword_10057ACF0, &type metadata accessor for AlertSheetActionImplementation, &protocol conformance descriptor for AlertSheetActionImplementation);
  v92 = v235;
  ActionDispatcher.add<A>(_:)();
  v90(v75, v35);
  (*(v236 + 8))(v91, v92);
  v93 = v237;
  TextFieldAlertActionImplementation.init()();
  v345 = v83;
  ActionDispatcher.init()();
  v342 = v79;
  v81(v320, v75, v35);
  sub_100283980(&unk_10057ACF8, &type metadata accessor for TextFieldAlertActionImplementation, &protocol conformance descriptor for TextFieldAlertActionImplementation);
  v94 = v238;
  ActionDispatcher.add<A>(_:)();
  v341 = v75;
  v343 = v87;
  v90(v75, v35);
  (*(v239 + 8))(v93, v94);
  v95 = type metadata accessor for Podcasts();
  v347 = v95;
  v348 = sub_100283980(&qword_1005742C0, &type metadata accessor for Podcasts, &protocol conformance descriptor for Podcasts);
  v96 = sub_10000E680(&v346);
  (*(*(v95 - 8) + 104))(v96, enum case for Podcasts.experimentalPlayActionImplementations(_:), v95);
  LOBYTE(v95) = isFeatureEnabled(_:)();
  sub_100004590(&v346);
  if (v95)
  {
    sub_100168088(&qword_10057AE00, &unk_10040C1B0);
    v97 = v340;
    sub_100009FAC(&qword_10057AE08, &qword_10057AE00, &unk_10040C1B0, &protocol conformance descriptor for PlaybackActionImplementation<A>);
    static ActionDispatcher.Builder<>.buildExpression<A>(_:)();
    sub_100168088(&qword_10057AE10, &qword_1004082B8);
    sub_100009FAC(&qword_10057AE18, &qword_10057AE10, &qword_1004082B8, &protocol conformance descriptor for PlaybackActionImplementation<A>);
    static ActionDispatcher.Builder<>.buildExpression<A>(_:)();
    sub_100168088(&qword_10057AE20, &unk_10040C1C0);
    sub_100009FAC(&qword_10057AE28, &qword_10057AE20, &unk_10040C1C0, &protocol conformance descriptor for PlaybackActionImplementation<A>);
    static ActionDispatcher.Builder<>.buildExpression<A>(_:)();
    sub_100168088(&qword_10057AE30, &qword_1004082C0);
    sub_100009FAC(&qword_10057AE38, &qword_10057AE30, &qword_1004082C0, &protocol conformance descriptor for PlaybackActionImplementation<A>);
    static ActionDispatcher.Builder<>.buildExpression<A>(_:)();
    v98 = v219;
    PlayQueueItemActionImplementation.init()();
    v99 = v341;
    ActionDispatcher.init()();
    v97();
    sub_100283980(&qword_10057AE40, &type metadata accessor for PlayQueueItemActionImplementation, &protocol conformance descriptor for PlayQueueItemActionImplementation);
    v100 = v221;
    ActionDispatcher.add<A>(_:)();
    v344(v99, v35);
    (*(v220 + 8))(v98, v100);
    sub_100168088(&qword_10057AE48, &unk_10040C1D0);
    sub_100009FAC(&qword_10057AE50, &qword_10057AE48, &unk_10040C1D0, &protocol conformance descriptor for PlaybackActionImplementation<A>);
    static ActionDispatcher.Builder<>.buildExpression<A>(_:)();
    sub_100168088(&qword_10057AE58, &qword_1004082C8);
    sub_100009FAC(&qword_10057AE60, &qword_10057AE58, &qword_1004082C8, &protocol conformance descriptor for PlaybackActionImplementation<A>);
    static ActionDispatcher.Builder<>.buildExpression<A>(_:)();
    sub_100168088(&qword_10057AE68, &unk_10040C1E0);
    sub_100009FAC(&qword_10057AE70, &qword_10057AE68, &unk_10040C1E0, &protocol conformance descriptor for PlaybackActionImplementation<A>);
    static ActionDispatcher.Builder<>.buildExpression<A>(_:)();
    sub_100168088(&qword_10057AE78, &qword_1004082D0);
    sub_100009FAC(&qword_10057AE80, &qword_10057AE78, &qword_1004082D0, &protocol conformance descriptor for PlaybackActionImplementation<A>);
    static ActionDispatcher.Builder<>.buildExpression<A>(_:)();
    sub_100168088(&qword_10057AE88, &qword_1004082D8);
    sub_100009FAC(&qword_10057AE90, &qword_10057AE88, &qword_1004082D8, &protocol conformance descriptor for PlaybackActionImplementation<A>);
    v101 = v241;
    static ActionDispatcher.Builder<>.buildExpression<A>(_:)();
    sub_100168088(&qword_10057ADF8, &qword_1004082B0);
    v102 = v314;
    v103 = *(v314 + 72);
    v104 = (*(v314 + 80) + 32) & ~*(v314 + 80);
    v240 = swift_allocObject();
    v105 = v240 + v104;
    (v97)(v240 + v104, v313, v35);
    (v97)(v105 + v103, v312, v35);
    v237 = (2 * v103);
    (v97)(v105 + 2 * v103, v311, v35);
    v239 = 3 * v103;
    (v97)(v105 + 3 * v103, v310, v35);
    (v97)(v105 + 4 * v103, v309, v35);
    v238 = 5 * v103;
    (v97)(v105 + 5 * v103, v308, v35);
    v236 = v105 + 6 * v103;
    v97();
    v235 = 7 * v103;
    (v97)(v105 + 7 * v103, v306, v35);
    (v97)(v105 + 8 * v103, v305, v35);
    (v97)(v105 + 9 * v103, v101, v35);
    v106 = v222;
    ActionDispatcher.init()();
    ActionDispatcher.add(contentsOf:)();
    ActionDispatcher.add(contentsOf:)();
    ActionDispatcher.add(contentsOf:)();
    ActionDispatcher.add(contentsOf:)();
    ActionDispatcher.add(contentsOf:)();
    ActionDispatcher.add(contentsOf:)();
    ActionDispatcher.add(contentsOf:)();
    ActionDispatcher.add(contentsOf:)();
    ActionDispatcher.add(contentsOf:)();
    ActionDispatcher.add(contentsOf:)();
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v107 = v223;
    (v97)(v223, v106, v35);
    (*(v102 + 56))(v107, 0, 1, v35);
    v108 = v224;
    sub_100010430(v107, v224, &qword_10057ACB0, &qword_1004082A0);
    v109 = *(v102 + 48);
    if (v109(v108, 1, v35) != 1)
    {
      sub_100009104(v107, &qword_10057ACB0, &qword_1004082A0);
      v115 = v106;
      v116 = v344;
      v344(v115, v35);
      v116(v241, v35);
      v116(v305, v35);
      v116(v306, v35);
      v116(v307, v35);
      v116(v308, v35);
      v116(v309, v35);
      v116(v310, v35);
      v116(v311, v35);
      v116(v312, v35);
      v116(v313, v35);
      (*(v102 + 32))(v321, v108, v35);
      goto LABEL_10;
    }

    ActionDispatcher.init()();
    sub_100009104(v107, &qword_10057ACB0, &qword_1004082A0);
    v110 = v106;
    v111 = v344;
    v344(v110, v35);
    v111(v241, v35);
    v111(v305, v35);
    v111(v306, v35);
    v111(v307, v35);
    v111(v308, v35);
    v111(v309, v35);
    v111(v310, v35);
    v111(v311, v35);
    v111(v312, v35);
    v111(v313, v35);
    if (v109(v108, 1, v35) == 1)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v112 = v314;
  v113 = v240;
  (*(v314 + 56))(v240, 1, 1, v35);
  v108 = v218;
  sub_100010430(v113, v218, &qword_10057ACB0, &qword_1004082A0);
  v114 = *(v112 + 48);
  if (v114(v108, 1, v35) != 1)
  {
    sub_100009104(v240, &qword_10057ACB0, &qword_1004082A0);
    (*(v112 + 32))(v321, v108, v35);
    goto LABEL_10;
  }

  ActionDispatcher.init()();
  sub_100009104(v240, &qword_10057ACB0, &qword_1004082A0);
  if (v114(v108, 1, v35) != 1)
  {
LABEL_7:
    sub_100009104(v108, &qword_10057ACB0, &qword_1004082A0);
  }

LABEL_10:
  v117 = v242;
  RequestTipProviderRefreshActionImplementation.init()();
  v118 = v322;
  ActionDispatcher.init()();
  v119 = v340;
  (v340)();
  v120 = v119;
  sub_100283980(&qword_10057AD08, &type metadata accessor for RequestTipProviderRefreshActionImplementation, &protocol conformance descriptor for RequestTipProviderRefreshActionImplementation);
  v121 = refreshed;
  ActionDispatcher.add<A>(_:)();
  v122 = v344;
  v344(v118, v35);
  (*(v243 + 8))(v117, v121);
  v123 = v245;
  AcceptEpisodeLimitRecommendationActionImplementation.init()();
  v124 = v323;
  ActionDispatcher.init()();
  v125 = v118;
  v126 = v124;
  v120(v125, v124, v35);
  sub_100283980(&qword_10057AD10, &type metadata accessor for AcceptEpisodeLimitRecommendationActionImplementation, &protocol conformance descriptor for AcceptEpisodeLimitRecommendationActionImplementation);
  v127 = v247;
  ActionDispatcher.add<A>(_:)();
  v122(v126, v35);
  (*(v246 + 8))(v123, v127);
  v128 = v248;
  DeclineEpisodeLimitRecommendationActionImplementation.init()();
  v129 = v324;
  ActionDispatcher.init()();
  v130 = v126;
  v131 = v129;
  v120(v130, v129, v35);
  sub_100283980(&qword_10057AD18, &type metadata accessor for DeclineEpisodeLimitRecommendationActionImplementation, &protocol conformance descriptor for DeclineEpisodeLimitRecommendationActionImplementation);
  v132 = v250;
  ActionDispatcher.add<A>(_:)();
  v122(v131, v35);
  (*(v249 + 8))(v128, v132);
  v133 = v251;
  RemoveAbandonedDownloadsActionImplementation.init()();
  v134 = v325;
  ActionDispatcher.init()();
  v135 = v131;
  v136 = v134;
  v120(v135, v134, v35);
  sub_100283980(&qword_10057AD20, &type metadata accessor for RemoveAbandonedDownloadsActionImplementation, &protocol conformance descriptor for RemoveAbandonedDownloadsActionImplementation);
  v137 = v253;
  ActionDispatcher.add<A>(_:)();
  v122(v136, v35);
  (*(v252 + 8))(v133, v137);
  v138 = v254;
  IgnoreAbandonedDownloadsActionImplementation.init()();
  v139 = v326;
  ActionDispatcher.init()();
  v140 = v136;
  v141 = v139;
  v120(v140, v139, v35);
  sub_100283980(&qword_10057AD28, &type metadata accessor for IgnoreAbandonedDownloadsActionImplementation, &protocol conformance descriptor for IgnoreAbandonedDownloadsActionImplementation);
  v142 = v256;
  ActionDispatcher.add<A>(_:)();
  v122(v141, v35);
  (*(v255 + 8))(v138, v142);
  v143 = v257;
  RestorePurgedEpisodesActionImplementation.init()();
  v144 = v327;
  ActionDispatcher.init()();
  v145 = v141;
  v146 = v144;
  v120(v145, v144, v35);
  sub_100283980(&qword_10057AD30, &type metadata accessor for RestorePurgedEpisodesActionImplementation, &protocol conformance descriptor for RestorePurgedEpisodesActionImplementation);
  v147 = v259;
  ActionDispatcher.add<A>(_:)();
  v122(v146, v35);
  (*(v258 + 8))(v143, v147);
  v148 = v260;
  IgnorePurgedEpisodesActionImplementation.init()();
  v149 = v328;
  ActionDispatcher.init()();
  v150 = v146;
  v151 = v149;
  v120(v150, v149, v35);
  sub_100283980(&qword_10057AD38, &type metadata accessor for IgnorePurgedEpisodesActionImplementation, &protocol conformance descriptor for IgnorePurgedEpisodesActionImplementation);
  v152 = v262;
  ActionDispatcher.add<A>(_:)();
  v122(v151, v35);
  (*(v261 + 8))(v148, v152);
  type metadata accessor for RemoveDownloadedEpisodesAction();
  sub_100283980(&qword_10057AD40, &type metadata accessor for RemoveDownloadedEpisodesAction, &protocol conformance descriptor for RemoveDownloadedEpisodesAction);
  v153 = v122;
  sub_100283980(&qword_10057AD48, &type metadata accessor for RemoveDownloadedEpisodesAction, &protocol conformance descriptor for RemoveDownloadedEpisodesAction);
  v154 = v263;
  IntentDelegatingActionImplementation.init()();
  v155 = v329;
  ActionDispatcher.init()();
  v156 = v151;
  v157 = v155;
  v120(v156, v155, v35);
  v158 = v120;
  v313 = &protocol conformance descriptor for IntentDelegatingActionImplementation<A>;
  sub_100009FAC(&qword_10057AD50, &qword_10057ACA8, &qword_100408298, &protocol conformance descriptor for IntentDelegatingActionImplementation<A>);
  v159 = v265;
  ActionDispatcher.add<A>(_:)();
  v153(v157, v35);
  v160 = v153;
  (*(v264 + 8))(v154, v159);
  type metadata accessor for DownloadEpisodesAction();
  sub_100283980(&qword_10057AD58, &type metadata accessor for DownloadEpisodesAction, &protocol conformance descriptor for DownloadEpisodesAction);
  sub_100283980(&qword_10057AD60, &type metadata accessor for DownloadEpisodesAction, &protocol conformance descriptor for DownloadEpisodesAction);
  v161 = v266;
  IntentDelegatingActionImplementation.init()();
  v162 = v330;
  ActionDispatcher.init()();
  v163 = v157;
  v164 = v162;
  v158(v163, v162, v35);
  sub_100009FAC(&qword_10057AD68, &qword_10057ACA0, &qword_100408290, v313);
  v165 = v268;
  ActionDispatcher.add<A>(_:)();
  v153(v164, v35);
  (*(v267 + 8))(v161, v165);
  type metadata accessor for UpdateEpisodeDownloadBehaviorAction();
  sub_100283980(&qword_10057AD70, &type metadata accessor for UpdateEpisodeDownloadBehaviorAction, &protocol conformance descriptor for UpdateEpisodeDownloadBehaviorAction);
  sub_100283980(&qword_10057AD78, &type metadata accessor for UpdateEpisodeDownloadBehaviorAction, &protocol conformance descriptor for UpdateEpisodeDownloadBehaviorAction);
  v166 = v269;
  IntentDelegatingActionImplementation.init()();
  v167 = v331;
  ActionDispatcher.init()();
  v158(v164, v167, v35);
  sub_100009FAC(&qword_10057AD80, &qword_10057AC98, &qword_100408288, v313);
  v168 = v271;
  ActionDispatcher.add<A>(_:)();
  v169 = v160;
  v160(v167, v35);
  (*(v270 + 8))(v166, v168);
  v170 = v272;
  TabChangeOpenAppLocationActionImplementation.init()();
  v171 = v332;
  ActionDispatcher.init()();
  v172 = v167;
  v173 = v171;
  v174 = v340;
  v340(v172, v171, v35);
  sub_100283980(&qword_10057AD88, &type metadata accessor for TabChangeOpenAppLocationActionImplementation, &protocol conformance descriptor for TabChangeOpenAppLocationActionImplementation);
  v175 = v275;
  ActionDispatcher.add<A>(_:)();
  v160(v173, v35);
  (*(v274 + 8))(v170, v175);
  v176 = v276;
  TabChangeOpenAudioActionImplementation.init()();
  v177 = v333;
  ActionDispatcher.init()();
  v178 = v173;
  v179 = v177;
  (v174)(v178, v177, v35);
  sub_100283980(&qword_10057AD90, &type metadata accessor for TabChangeOpenAudioActionImplementation, &protocol conformance descriptor for TabChangeOpenAudioActionImplementation);
  v180 = v278;
  ActionDispatcher.add<A>(_:)();
  v160(v179, v35);
  (*(v277 + 8))(v176, v180);
  v181 = v279;
  TabChangeActionOpenStoreURLActionImplementation.init()();
  v182 = v334;
  ActionDispatcher.init()();
  v183 = v179;
  v184 = v182;
  (v174)(v183, v182, v35);
  sub_100283980(&unk_10057AD98, &type metadata accessor for TabChangeActionOpenStoreURLActionImplementation, &protocol conformance descriptor for TabChangeActionOpenStoreURLActionImplementation);
  v185 = v281;
  ActionDispatcher.add<A>(_:)();
  v160(v184, v35);
  (*(v280 + 8))(v181, v185);
  type metadata accessor for FlowAction();
  v312 = &protocol conformance descriptor for Action;
  sub_100283980(&unk_10057A0D0, &type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
  v186 = v282;
  ActionRunnerDelegatingActionImplementation.init()();
  v187 = v335;
  ActionDispatcher.init()();
  (v174)(v184, v187, v35);
  v313 = &protocol conformance descriptor for ActionRunnerDelegatingActionImplementation<A>;
  sub_100009FAC(&qword_10057ADA8, &qword_10057AC90, &qword_100408280, &protocol conformance descriptor for ActionRunnerDelegatingActionImplementation<A>);
  v188 = v284;
  ActionDispatcher.add<A>(_:)();
  v169(v187, v35);
  (*(v283 + 8))(v186, v188);
  type metadata accessor for PopToRootAction();
  sub_100283980(&qword_10057ADB0, &type metadata accessor for PopToRootAction, &protocol conformance descriptor for Action);
  v189 = v285;
  ActionRunnerDelegatingActionImplementation.init()();
  v190 = v336;
  ActionDispatcher.init()();
  v191 = v187;
  v192 = v190;
  (v174)(v191, v190, v35);
  v193 = v313;
  sub_100009FAC(&qword_10057ADB8, &qword_10057AC88, &qword_100408278, v313);
  v194 = v287;
  ActionDispatcher.add<A>(_:)();
  v195 = v344;
  v344(v192, v35);
  (*(v286 + 8))(v189, v194);
  type metadata accessor for SearchAction();
  sub_100283980(&qword_10057ADC0, &type metadata accessor for SearchAction, &protocol conformance descriptor for SearchAction);
  v196 = v288;
  ActionRunnerDelegatingActionImplementation.init()();
  v197 = v337;
  ActionDispatcher.init()();
  (v174)(v192, v197, v35);
  sub_100009FAC(&qword_10057ADC8, &qword_10057AC80, &qword_100408270, v193);
  v198 = v291;
  ActionDispatcher.add<A>(_:)();
  v195(v197, v35);
  (*(v290 + 8))(v196, v198);
  type metadata accessor for TabChangeAction();
  sub_100283980(&qword_10057ADD0, &type metadata accessor for TabChangeAction, v312);
  v199 = v292;
  ActionRunnerDelegatingActionImplementation.init()();
  v200 = v338;
  ActionDispatcher.init()();
  (v174)(v197, v200, v35);
  sub_100009FAC(&qword_10057ADD8, &qword_10057AC78, &qword_100408268, v313);
  v201 = v294;
  ActionDispatcher.add<A>(_:)();
  v202 = v344;
  v344(v200, v35);
  (*(v293 + 8))(v199, v201);
  v347 = type metadata accessor for SyncTaskScheduler();
  v348 = &protocol witness table for SyncTaskScheduler;
  sub_10000E680(&v346);
  SyncTaskScheduler.init()();
  v203 = v295;
  ClosureActionImplementation.init(scheduler:)();
  v204 = v339;
  ActionDispatcher.init()();
  (v174)(v200, v204, v35);
  sub_100009FAC(&qword_10057ADE0, &qword_10057AC70, &qword_100408260, &protocol conformance descriptor for ClosureActionImplementation<A>);
  v205 = v297;
  ActionDispatcher.add<A>(_:)();
  v206 = v202;
  v202(v204, v35);
  (*(v296 + 8))(v203, v205);
  v207 = v298;
  CompoundActionImplementation.init()();
  v208 = v289;
  ActionDispatcher.init()();
  (v174)(v204, v208, v35);
  sub_100009FAC(&qword_10057ADE8, &qword_10057AC68, &unk_10040C1A0, &protocol conformance descriptor for CompoundActionImplementation<A>);
  v209 = v300;
  ActionDispatcher.add<A>(_:)();
  v206(v208, v35);
  (*(v299 + 8))(v207, v209);
  v210 = v301;
  EmptyActionImplementation.init()();
  v211 = v273;
  ActionDispatcher.init()();
  (v174)(v208, v211, v35);
  sub_100009FAC(&qword_10057ADF0, &qword_10057AC60, &qword_100408258, &protocol conformance descriptor for EmptyActionImplementation<A>);
  v212 = v303;
  ActionDispatcher.add<A>(_:)();
  v206(v211, v35);
  (*(v302 + 8))(v210, v212);
  sub_100168088(&qword_10057ADF8, &qword_1004082B0);
  v213 = *(v314 + 72);
  v214 = (*(v314 + 80) + 32) & ~*(v314 + 80);
  v314 = swift_allocObject();
  v215 = v314 + v214;
  (v174)(v314 + v214, v315, v35);
  (v174)(v215 + v213, v316, v35);
  v311 = (2 * v213);
  (v174)(v215 + 2 * v213, v317, v35);
  v313 = 3 * v213;
  (v174)(v215 + 3 * v213, v318, v35);
  v309 = (4 * v213);
  (v174)(v215 + 4 * v213, v319, v35);
  v312 = 5 * v213;
  (v174)(v215 + 5 * v213, v320, v35);
  v310 = (v215 + 6 * v213);
  v174();
  v308 = 7 * v213;
  (v174)(v215 + 7 * v213, v341, v35);
  (v174)(v215 + 8 * v213, v322, v35);
  v307 = 9 * v213;
  (v174)(v215 + 9 * v213, v323, v35);
  v306 = (v215 + 10 * v213);
  v174();
  v305 = (v215 + 11 * v213);
  v174();
  v303 = v215 + 12 * v213;
  v174();
  v302 = v215 + 13 * v213;
  v174();
  v301 = (v215 + 14 * v213);
  v174();
  v300 = 15 * v213;
  (v174)(v215 + 15 * v213, v329, v35);
  (v174)(v215 + 16 * v213, v330, v35);
  v299 = 17 * v213;
  (v174)(v215 + 17 * v213, v331, v35);
  v298 = (v215 + 18 * v213);
  v174();
  v297 = v215 + 19 * v213;
  v174();
  v296 = v215 + 20 * v213;
  v174();
  v295 = (v215 + 21 * v213);
  v174();
  v294 = v215 + 22 * v213;
  v174();
  v293 = v215 + 23 * v213;
  v174();
  v292 = (v215 + 24 * v213);
  v174();
  v291 = v215 + 25 * v213;
  v174();
  (v174)(v215 + 26 * v213, v208, v35);
  ActionDispatcher.init()();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v216 = v344;
  v344(v208, v35);
  v216(v339, v35);
  v216(v338, v35);
  v216(v337, v35);
  v216(v336, v35);
  v216(v335, v35);
  v216(v334, v35);
  v216(v333, v35);
  v216(v332, v35);
  v216(v331, v35);
  v216(v330, v35);
  v216(v329, v35);
  v216(v328, v35);
  v216(v327, v35);
  v216(v326, v35);
  v216(v325, v35);
  v216(v324, v35);
  v216(v323, v35);
  v216(v322, v35);
  v216(v341, v35);
  v216(v321, v35);
  v216(v320, v35);
  v216(v319, v35);
  v216(v318, v35);
  v216(v317, v35);
  v216(v316, v35);
  return (v216)(v315, v35);
}

uint64_t LibraryDataProvider.showsPaginatedPublisher(listType:sortBy:lockupStyle:pageSize:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v5 = a3;
  v8 = type metadata accessor for ShowLockupStyle();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100168088(&qword_100573AB8, &qword_100401198);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = v25 - v14;
  v16 = sub_100029130(a1, a2 & 1);
  v25[6] = v17;
  v25[7] = v16;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25[4] = v19;
  v25[5] = v18;
  v25[3] = sub_10002929C(a1, a2 & 1);
  v25[2] = ShowsSortType.sortDescriptors.getter(v5);
  v20 = [*(v25[1] + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  static OS_dispatch_queue.main.getter();
  (*(v9 + 16))(v11, v26, v8);
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = swift_allocObject();
  (*(v9 + 32))(v22 + v21, v11, v8);
  type metadata accessor for LibraryShowLockup();
  sub_100009F1C(0, &qword_100573AC0, MTPodcast_ptr);
  FetchedResultsListPublisher.init(identifier:entityName:predicate:sortDescriptors:pageSize:managedObjectContext:receiveOn:transform:updateRequiredComparator:)();
  sub_100009FAC(&qword_100573AC8, &qword_100573AB8, &qword_100401198, &protocol conformance descriptor for FetchedResultsListPublisher<A, B>);
  v23 = PaginatedPublisher.eraseToAnyPaginatedPublisher()();
  (*(v13 + 8))(v15, v12);
  return v23;
}

unint64_t sub_100029130(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 0x6465776F6C6C6F66;
    v3 = 0x6B72616D6B6F6F62;
    if (a1 != 5)
    {
      v3 = 0xD000000000000011;
    }

    v4 = 0x64616F6C6E776F64;
    if (a1 != 3)
    {
      v4 = 0xD000000000000011;
    }

    if (a1 <= 4)
    {
      v3 = v4;
    }

    v5 = 0x776F6C6C6F666E75;
    if (a1 != 1)
    {
      v5 = 7105633;
    }

    if (a1)
    {
      v2 = v5;
    }

    if (a1 <= 2)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    sub_10019BAC4();
    v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v7);

    v8._countAndFlagsBits = 41;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
    return 0x286C656E6E616863;
  }
}

id sub_10002929C(uint64_t a1, char a2)
{
  result = objc_opt_self();
  if (a2)
  {
    if (a1 <= 2)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          v6 = result;
          v7 = [result predicateForNotSubscribedAndNotHiddenAndNotImplicitlyFollowed];
          v8 = [v6 predicateForPodcastsWithLibraryEpisodes];
          v9 = [v7 AND:v8];

          return v9;
        }

        else
        {
          v10 = result;
          v11 = [result predicateForNotSubscribedAndNotHiddenAndNotImplicitlyFollowed];
          v12 = [v10 predicateForPodcastsWithLibraryEpisodes];
          v13 = [v11 AND:v12];

          v14 = [v10 predicateForSubscribedAndNotHidden];
          v15 = [v14 OR:v13];

          return v15;
        }
      }

      v5 = [result predicateForSubscribedAndNotHidden];
    }

    else if (a1 > 4)
    {
      if (a1 == 5)
      {
        v5 = [result predicateForPodcastsWithBookmarkedEpisodes];
      }

      else
      {
        v5 = [result predicateForPodcastsWithUnplayedBookmarkedEpisodes];
      }
    }

    else if (a1 == 3)
    {
      v5 = [result predicateForPodcastsWithDownloadedEpisodes];
    }

    else
    {
      v5 = [result predicateForPodcastsWithUnplayedDownloadedEpisodes];
    }
  }

  else
  {
    if (a1 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = [result predicateForNotImplicitlyFollowedPodcastsWithChannelStoreId:a1];
  }

  return v5;
}

id ShowsSortType.sortDescriptors.getter(char a1)
{
  result = [objc_opt_self() sortDescriptorsForSortType:qword_10040CC00[a1]];
  if (result)
  {
    v2 = result;
    sub_100029528();
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100029528()
{
  result = qword_10057B1F0;
  if (!qword_10057B1F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10057B1F0);
  }

  return result;
}

uint64_t LibraryDataProvider.fetchStationsObserver(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StationListOptions();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  sub_100168088(&qword_100573AD0, &qword_1004011E0);
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  static OS_os_log.libraryLoadingSignpost.getter();
  v7 = Promise.init(signpost:log:metadata:logResult:)();
  v8 = [*(v2 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  aBlock[4] = sub_10019BA30;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E16E0;
  v11 = _Block_copy(aBlock);

  [v8 performBlock:v11];
  _Block_release(v11);

  return v7;
}

uint64_t sub_1000297C4()
{
  v1 = type metadata accessor for StationListOptions();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100029864(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v4 - 8);
  __chkstk_darwin();
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v20 = *(v7 - 8);
  v21 = v7;
  __chkstk_darwin();
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FeedManagerBagConfiguration();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin();
  v19[1] = *&a2[OBJC_IVAR___MTFeedManager_queue];
  (*(v11 + 16))(v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10, v13);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  (*(v11 + 32))(v15 + v14, v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  aBlock[4] = sub_100029C24;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004EB548;
  v16 = _Block_copy(aBlock);
  v17 = a2;
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_10000E53C(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0, &unk_100400B50);
  sub_100009FAC(&qword_10057D390, &unk_100575CD0, &unk_100400B50, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v22 + 8))(v6, v4);
  (*(v20 + 8))(v9, v21);
}

id sub_100029C24()
{
  v1 = *(type metadata accessor for FeedManagerBagConfiguration() - 8);
  v2 = *(v0 + 16);
  v3 = *(v2 + OBJC_IVAR___MTFeedManager__feedIngesterProvider);
  v4 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100029C94(v4, v3, v2);
}

id sub_100029C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  updated = type metadata accessor for FeedUpdateRequest();
  v58 = *(updated - 8);
  __chkstk_darwin();
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v62 = *(v8 - 8);
  __chkstk_darwin();
  v61 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FeedManagerBagConfiguration();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72[3] = type metadata accessor for FeedIngesterProvider();
  v72[4] = sub_10000E53C(&unk_10057D828, type metadata accessor for FeedIngesterProvider, &protocol conformance descriptor for FeedIngesterProvider);
  v72[0] = a2;
  v14 = objc_opt_self();

  v15 = [v14 sharedInstance];
  v16 = [v15 importContext];

  (*(v11 + 16))(v13, a1, v10);
  sub_100004428(v72, v71);
  type metadata accessor for StoreFeedUpdater();
  swift_allocObject();
  v17 = v16;
  v18 = StoreFeedUpdater.init(bagConfiguration:ctx:ingesterProvider:)();
  result = [objc_allocWithZone(MTExternalFeedDownloader) initWithDelegate:0];
  if (result)
  {
    v20 = result;
    sub_100004428(v72, v71);
    v64 = type metadata accessor for RSSFeedUpdater();
    v21 = objc_allocWithZone(v64);
    v22 = v20;
    v60 = v17;
    v59 = v22;
    v23 = RSSFeedUpdater.init(ctx:ingesterProvider:externalFeedDownloader:)();
    v24 = (a3 + OBJC_IVAR___MTFeedManager__system);
    v25 = *(a3 + OBJC_IVAR___MTFeedManager__system);
    v26 = *(a3 + OBJC_IVAR___MTFeedManager__system + 8);
    v27 = *(a3 + OBJC_IVAR___MTFeedManager__system + 16);
    *v24 = v23;
    v24[1] = &protocol witness table for RSSFeedUpdater;
    v24[2] = v18;
    v28 = v23;
    v63 = a3;
    v29 = v28;
    swift_retain_n();
    v30 = v29;
    v31 = v63;
    v32 = v30;
    sub_10003F6FC(v25, v26, v27);
    v66 = v18;
    sub_10003E784(v32, &protocol witness table for RSSFeedUpdater, v18);
    v33 = OBJC_IVAR___MTFeedManager__pendingRequests;
    swift_beginAccess();
    v34 = *(v31 + v33);
    *(v31 + v33) = _swiftEmptyArrayStorage;
    v35 = *(v34 + 16);
    if (v35)
    {
      v65 = v32;
      v57 = v8;
      v36 = objc_opt_self();
      v37 = v58 + 16;
      v38 = *(v58 + 16);
      v39 = (*(v58 + 80) + 32) & ~*(v58 + 80);
      v58 = v34;
      v40 = v34 + v39;
      v41 = *(v37 + 56);
      v42 = (v37 - 8);
      v38(v7, v40, updated);
      while (1)
      {
        if ([v36 isEmpty:FeedUpdateRequest.podcastStoreId.getter()])
        {
          dispatch thunk of URLBasedFeedUpdater.updateFeed(request:)();
        }

        else
        {
          dispatch thunk of StoreFeedUpdater.updateFeed(request:)();
        }

        v43 = updated;
        (*v42)(v7, updated);
        v40 += v41;
        if (!--v35)
        {
          break;
        }

        v38(v7, v40, v43);
      }

      v8 = v57;
      v31 = v63;
      v32 = v65;
    }

    else
    {
    }

    v44 = OBJC_IVAR___MTFeedManager__pendingBlocks;
    swift_beginAccess();
    v45 = *(v31 + v44);
    *(v31 + v44) = _swiftEmptyArrayStorage;
    v46 = *(v45 + 16);
    v47 = v66;
    if (v46)
    {
      v48 = v45 + 40;
      do
      {
        v49 = *(v48 - 8);
        v68 = v32;
        v69 = &protocol witness table for RSSFeedUpdater;
        v70 = v47;

        v49(&v68);

        v48 += 16;
        --v46;
      }

      while (v46);
    }

    v68 = v32;
    v69 = &protocol witness table for RSSFeedUpdater;
    v70 = v47;
    sub_100168088(&unk_10057D640, &unk_10040AE58);
    UninitializedCurrentValueSubject.send(_:)();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v50 = v61;
    static OS_os_log.feedUpdate.getter();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "System setup complete", v53, 2u);

      v54 = v32;
      v55 = v51;
      v56 = v62;
    }

    else
    {

      v56 = v62;
      v55 = v60;
      v54 = v59;
    }

    (*(v56 + 8))(v50, v8);
    return sub_100004590(v72);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10002A344(unint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, _UNKNOWN **))
{
  v14 = sub_10002A4B4(a4);
  v15 = sub_10002A4B4(a1);
  a2(v14, v15);

  v16 = (a5 + OBJC_IVAR____TtC8Podcasts16AssetsDownloader_statusUpdateHandler);
  v17 = *(a5 + OBJC_IVAR____TtC8Podcasts16AssetsDownloader_statusUpdateHandler);
  v18 = *(a5 + OBJC_IVAR____TtC8Podcasts16AssetsDownloader_statusUpdateHandler + 8);
  *v16 = a6;
  v16[1] = a7;
  sub_100013CB4(a6, a7);
  sub_1000112B4(v17, v18);
  v19 = *(a5 + OBJC_IVAR____TtC8Podcasts16AssetsDownloader_fairPlayAssetsDownloader + 8);
  ObjectType = swift_getObjectType();
  v21 = *(v19 + 8);
  v22 = *(v21 + 16);
  sub_100013CB4(a6, a7);
  v22(a6, a7, ObjectType, v21);
  return a8(a5, &off_1004F1300);
}

void *sub_10002A4B4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v17 = _swiftEmptyArrayStorage;
  result = sub_1001A791C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_1001A791C((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_100009F1C(0, &qword_1005748F0, NSURLSessionTask_ptr);
        v16 = &off_1004E5188;
        *&v14 = v6;
        v3[2] = v8 + 1;
        sub_1000109E4(&v14, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = v3[2];
        v11 = v3[3];
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_1001A791C((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_100009F1C(0, &qword_1005748F0, NSURLSessionTask_ptr);
        v16 = &off_1004E5188;
        *&v14 = v13;
        v3[2] = v12 + 1;
        sub_1000109E4(&v14, &v3[5 * v12 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t _s8Podcasts19LibraryDataProviderC26fetchPodcastDetailBlocking4from8ShelfKit0fG0CSg10Foundation3URLV_tF_0@<X0>(NSURL *a1@<X8>)
{
  URL._bridgeToObjectiveC()(a1);
  v2 = v1;
  v3 = [v1 pf_cleanUrlToStoreId];
  v4 = objc_opt_self();
  if (![v4 isNotEmpty:v3] || !objc_msgSend(v4, "isEmpty:", objc_msgSend(v2, "pf_cleanUrlToStoreTrackId")))
  {
    goto LABEL_10;
  }

  v5 = [v2 pf_cleanUrlToEpisodeGuid];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v20[0] = v7;
  v20[1] = v9;
  sub_100168088(&qword_100574230, &qword_100401FE0);
  sub_1001A0728();
  v10 = Optional<A>.isEmpty.getter();

  if (v10)
  {
    v11 = objc_opt_self();
    v12 = [v11 predicateForPodcastStoreId:v3];
    v13 = type metadata accessor for Podcasts();
    v20[3] = v13;
    v20[4] = sub_10000F084(&qword_1005742C0, &type metadata accessor for Podcasts, &protocol conformance descriptor for Podcasts);
    v14 = sub_10000E680(v20);
    (*(*(v13 - 8) + 104))(v14, enum case for Podcasts.renderImplicitFollowsAsLocalShows(_:), v13);
    LOBYTE(v13) = isFeatureEnabled(_:)();
    sub_100004590(v20);
    v15 = &selRef_predicateForNotHiddenPodcasts;
    if ((v13 & 1) == 0)
    {
      v15 = &selRef_predicateForNotHiddenNotImplicitlyFollowedPodcasts;
    }

    v16 = [v11 *v15];
    v17 = [v12 AND:v16];

    type metadata accessor for CoreDataFetcher();
    v18 = v17;
    sub_100168088(&qword_100573B48, &qword_100401228);
    static CoreDataFetcher.performAndWaitOnPodcast<A>(with:block:)();

    return v20[0];
  }

  else
  {
LABEL_10:

    return 0;
  }
}

uint64_t LibraryDataProvider.fetchChannelDetailBlocking(from:)@<X0>(NSURL *a1@<X8>)
{
  URL._bridgeToObjectiveC()(a1);
  v2 = v1;
  if ([objc_opt_self() isNotEmpty:{objc_msgSend(v1, "pf_cleanUrlToChannelStoreId")}])
  {
    type metadata accessor for CoreDataFetcher();
    sub_100168088(&qword_100573AE0, &qword_1004011F0);
    static CoreDataFetcher.performAndWaitOnChannel<A>(for:block:)();

    return v4;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_10002AB00(uint64_t a1)
{
  v2 = v1;
  if (UITabBarController.canSelect(navigationTab:)())
  {

    return UITabBarController.selectTabIfPossible(_:)(a1);
  }

  else
  {
    v4 = static TabConverter.translateNavigationTab(for:interface:)();
    v5 = static NavigationTab.== infix(_:_:)();
    result = sub_10002ACE0(v4);
    if (v5)
    {
      sub_100168088(&qword_1005745B0, &qword_100401AD0);

      BaseObjectGraph.inject<A>(_:)();

      sub_1000044A0(v11, v12);
      v6 = dispatch thunk of TabGroupManager.tabGroup.getter();
      v7 = UITab.tab(matching:)();

      if (v7)
      {
        [v2 setSelectedTab:v7];
      }

      else
      {
        sub_1000044A0(v11, v12);
        v8 = dispatch thunk of TabGroupManager.tabGroup.getter();
        v9 = [v8 children];

        sub_100009F1C(0, &qword_1005745C0, UITab_ptr);
        static Array._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100168088(&qword_100580548, &qword_10040E2D0);
        sub_10033D854();
        Collection.isNotEmpty.getter();
      }

      return sub_100004590(v11);
    }
  }

  return result;
}

uint64_t sub_10002ACE0(uint64_t result)
{
  if ((result - 1) >= 0x12)
  {
  }

  return result;
}

uint64_t sub_10002ACF4(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v27 = a3;
  v28 = a1;
  v4 = type metadata accessor for OSSignpostError();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin();
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OSSignposter();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static OSSignposter.bootstrap.getter();
  v15 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v24 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v8 + 8))(v10, v7);
    return (*(v12 + 8))(v14, v11);
  }

  v23 = v11;
  if ((v27 & 1) == 0)
  {
    if (v28)
    {
LABEL_9:

      checkForErrorAndConsumeState(state:)();

      v18 = v25;
      v17 = v26;
      if ((*(v25 + 88))(v6, v26) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v19 = "[Error] Interval already ended";
      }

      else
      {
        (*(v18 + 8))(v6, v17);
        v19 = "";
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v24, v21, v28, v19, v20, 2u);

      v11 = v23;
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v28 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v28 & 0xFFFFF800) != 0xD800)
  {
    if (v28 >> 16 <= 0x10)
    {
      v28 = &v29;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_10002B038()
{
  v0 = sub_100168088(&qword_100575E38, &unk_100402F68);
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v7 - v2;
  RepublishingValueSubject.value.getter();
  if (v8)
  {
  }

  else if (os_feature_enabled_red_sun())
  {
    UITabBarController.mcui.getter();
    sub_10002B22C();
    type metadata accessor for NowPlayingMediaPlayerController();
    sub_10002B2B0(&qword_100575E28, 255, &type metadata accessor for NowPlayingMediaPlayerController, &protocol conformance descriptor for NowPlayingMediaPlayerController);
    v4 = MCUINamespace<A>.installNowPlayingView<A>(controller:)();

    (*(v1 + 8))(v3, v0);
    v8 = v4;
    RepublishingValueSubject.send(_:)();

    RepublishingValueSubject.value.getter();
    v6 = v8;
    if (v8)
    {
      sub_10002B2B0(&qword_100575E40, v5, type metadata accessor for NowPlayingBootstrap, &unk_100402F14);
      swift_unknownObjectRetain();
      dispatch thunk of NowPlayingViewController.delegate.setter();
    }

    sub_10002B2F8();
  }
}

uint64_t sub_10002B22C()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    type metadata accessor for NowPlayingMediaPlayerController();
    swift_allocObject();

    v1 = NowPlayingMediaPlayerController.init(asPartOf:)();
    *(v0 + 48) = v1;
  }

  return v1;
}

uint64_t sub_10002B2B0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_10002B2F8()
{
  v54 = *v0;
  sub_100168088(&qword_100575C10, &qword_100402E50);
  __chkstk_darwin();
  v64 = &v44 - v1;
  v2 = sub_100168088(&qword_100575E48, &qword_100402F78);
  v3 = *(v2 - 8);
  v62 = v2;
  v63 = v3;
  __chkstk_darwin();
  v57 = &v44 - v4;
  v48 = sub_100168088(&unk_100580450, &qword_100402F80);
  v49 = *(v48 - 8);
  __chkstk_darwin();
  v6 = &v44 - v5;
  v45 = sub_100168088(&unk_10057DE20, &qword_100402F88);
  v47 = *(v45 - 8);
  __chkstk_darwin();
  v8 = &v44 - v7;
  v9 = sub_100168088(&qword_100575E50, &qword_100402F90);
  v10 = *(v9 - 8);
  v50 = v9;
  v51 = v10;
  __chkstk_darwin();
  v12 = &v44 - v11;
  v53 = sub_100168088(&qword_100575E58, &qword_100402F98);
  v55 = *(v53 - 8);
  __chkstk_darwin();
  v46 = &v44 - v13;
  v14 = sub_100168088(&qword_100575E60, &qword_100402FA0);
  v15 = *(v14 - 8);
  v58 = v14;
  v59 = v15;
  __chkstk_darwin();
  v52 = &v44 - v16;
  v17 = sub_100168088(&qword_100575E68, &qword_100402FA8);
  v18 = *(v17 - 8);
  v60 = v17;
  v61 = v18;
  __chkstk_darwin();
  v56 = &v44 - v19;
  v44 = v0;
  dispatch thunk of PlaybackController.$nowPlayingItem.getter();
  dispatch thunk of PlaybackController.$isPlaying.getter();
  v20 = sub_10002B22C();
  swift_beginAccess();
  v21 = *(v20 + 264);

  v65 = v21;
  sub_100168088(&qword_100575E70, &qword_100402FB0);
  sub_100009FAC(&qword_100575E78, &unk_10057DE20, &qword_100402F88, &protocol conformance descriptor for Published<A>.Publisher);
  sub_100009FAC(&unk_100580460, &unk_100580450, &qword_100402F80, &protocol conformance descriptor for Published<A>.Publisher);
  sub_100009FAC(&qword_100575E80, &qword_100575E70, &qword_100402FB0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v22 = v45;
  v23 = v48;
  Publisher.combineLatest<A, B>(_:_:)();

  (*(v49 + 8))(v6, v23);
  (*(v47 + 8))(v8, v22);
  v24 = swift_allocObject();
  *(v24 + 16) = v54;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_10002C06C;
  *(v25 + 24) = v24;
  sub_100168088(&qword_100575E88, &qword_100402FB8);
  sub_100009FAC(&qword_100575E90, &qword_100575E50, &qword_100402F90, &protocol conformance descriptor for Publishers.CombineLatest3<A, B, C>);
  v26 = v46;
  v27 = v50;
  Publisher.map<A>(_:)();

  (*(v51 + 8))(v12, v27);
  v28 = v44;
  v65 = v44[7];
  v29 = sub_100168088(&qword_100575E98, &qword_100402FC0);
  v30 = sub_100168088(&qword_100575EA0, &qword_100402FC8);
  v31 = sub_100009FAC(&qword_100575EA8, &qword_100575E98, &qword_100402FC0, &protocol conformance descriptor for RepublishingValueSubject<A, B>);
  v32 = v57;
  Publisher.nonNilValues<A>()();
  sub_100009FAC(&qword_100575EB0, &qword_100575E58, &qword_100402F98, &protocol conformance descriptor for Publishers.Map<A, B>);
  v65 = v29;
  v66 = v30;
  v67 = v31;
  swift_getOpaqueTypeConformance2();
  v34 = v52;
  v33 = v53;
  v35 = v62;
  Publisher.combineLatest<A>(_:)();
  (*(v63 + 8))(v32, v35);
  (*(v55 + 8))(v26, v33);
  sub_10002BD04();
  v36 = static OS_dispatch_queue.main.getter();
  v65 = v36;
  v37 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v38 = v64;
  (*(*(v37 - 8) + 56))(v64, 1, 1, v37);
  sub_100009FAC(&qword_100575EB8, &qword_100575E60, &qword_100402FA0, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  sub_10002B2B0(&qword_100575C40, 255, sub_10002BD04, &protocol conformance descriptor for OS_dispatch_queue);
  v39 = v56;
  v40 = v58;
  Publisher.receive<A>(on:options:)();
  sub_100009104(v38, &qword_100575C10, &qword_100402E50);

  (*(v59 + 8))(v34, v40);
  sub_100009FAC(&qword_100575EC0, &qword_100575E68, &qword_100402FA8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v41 = v60;
  v42 = Publisher<>.sink(receiveValue:)();
  (*(v61 + 8))(v39, v41);
  v28[5] = v42;
}

uint64_t sub_10002BCCC()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10002BD04()
{
  result = qword_1005729D0;
  if (!qword_1005729D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005729D0);
  }

  return result;
}

uint64_t sub_10002BD50(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = a1[8];
  v6 = sub_100168088(&qword_100575ED0, &qword_100402FD8);
  return v3(v4, v5, &a1[*(v6 + 64)]);
}

uint64_t sub_10002BDC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    v9 = MPModelObject.contentId.getter();
    v11 = v9;
    v13 = v12;
    v14 = v10;
    if (v10 <= 1u)
    {
      if (v10)
      {
        v18 = [v9 URIRepresentation];
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v15 = URL.absoluteString.getter();
        v17 = v19;
        (*(v5 + 8))(v7, v4);
      }

      else
      {
        v24[0] = v9;
        sub_1000366D8();
        v15 = BinaryInteger.description.getter();
        v17 = v16;
      }

      goto LABEL_8;
    }

    if (v10 == 2)
    {

      v15 = v11;
      v17 = v13;
LABEL_8:
      type metadata accessor for EpisodeEntity();
      v24[0] = v15;
      v24[1] = v17;
      sub_10002B2B0(&qword_100575ED8, 255, &type metadata accessor for EpisodeEntity, &protocol conformance descriptor for EpisodeEntity);
      EntityIdentifier.init<A>(for:identifier:)();

      sub_1001CEA54(v11, v13, v14);
      v20 = type metadata accessor for EntityIdentifier();
      return (*(*(v20 - 8) + 56))(a2, 0, 1, v20);
    }
  }

  v22 = type metadata accessor for EntityIdentifier();
  v23 = *(*(v22 - 8) + 56);

  return v23(a2, 1, 1, v22);
}

uint64_t sub_10002C074(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002C0E0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ChannelLockupGenerator();
  v3 = swift_allocObject();
  a1[3] = v2;
  result = sub_100283980(&qword_10057AFF8, type metadata accessor for ChannelLockupGenerator, &protocol conformance descriptor for ChannelLockupGenerator);
  a1[4] = result;
  *a1 = v3;
  return result;
}

void sub_10002C164(void *a1)
{
  sub_100168088(&qword_10057D398, &qword_10040AC00);
  __chkstk_darwin();
  v4 = &v15 - v3;
  v5 = objc_opt_self();
  v6 = [v5 sharedApplication];
  v7 = [v6 launchedToTest];

  if ((v7 & 1) == 0)
  {
    v8 = [v5 sharedApplication];
    v9 = [objc_opt_self() standardUserDefaults];
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 stringForKey:v10];

    if (!v11)
    {
      return;
    }
  }

  v12 = a1;
  PPTViewControllerProxy.init(tabBarController:)();
  v13 = type metadata accessor for PPTViewControllerProxy();
  (*(*(v13 - 8) + 56))(v4, 0, 1, v13);
  v14 = OBJC_IVAR____TtC8Podcasts11AppDelegate_pptViewHierarchyProxy;
  swift_beginAccess();
  sub_10002C62C(v4, v1 + v14);
  swift_endAccess();
}

uint64_t sub_10002C4C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002C560(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *((swift_isaMask & *a1) + 0x180);
  v6 = type metadata accessor for OperationResult(0, *((swift_isaMask & *a1) + 0x170), a3, a4);
  (*(*(v6 - 8) + 8))(&a1[v5], v6);
}

uint64_t sub_10002C62C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_10057D398, &qword_10040AC00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10002C69C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for NSUserDefaults.Name();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ([objc_opt_self() isRunningOnInternalOS])
  {
    sub_100009F1C(0, &qword_100579A00, NSUserDefaults_ptr);
    (*(v5 + 104))(v7, enum case for NSUserDefaults.Name.shared(_:), v4);
    sub_100024384(&unk_10057E7B0, &qword_100579A00, NSUserDefaults_ptr, &protocol conformance descriptor for NSUserDefaults);
    BaseObjectGraph.inject<A>(_:named:)();
    (*(v5 + 8))(v7, v4);
    v8 = v13;
    static UserDefaultsKey<>.demoMode.getter();
    NSUserDefaults.subscript.getter();

    if ((v12[7] & 1) == 0)
    {
      v9 = [objc_allocWithZone(UIScreenEdgePanGestureRecognizer) initWithTarget:v2 action:"handleDebugActivationFrom:"];
      [v9 setEdges:8];
      v10 = [a1 view];
      if (!v10)
      {
        __break(1u);
        return;
      }

      v11 = v10;
      [v10 addGestureRecognizer:v9];

      v8 = v11;
    }
  }
}

void sub_10002C914()
{
  v1 = v0;
  v72 = sub_100168088(&qword_10057E6A8, &qword_10040BF80);
  v70 = *(v72 - 8);
  __chkstk_darwin();
  v69 = &v47 - v2;
  v75 = sub_100168088(&qword_10057E6B0, &qword_10040BF88);
  v73 = *(v75 - 8);
  __chkstk_darwin();
  v71 = &v47 - v3;
  v4 = sub_100168088(&qword_10057E6B8, &qword_10040BF90);
  v65 = *(v4 - 8);
  __chkstk_darwin();
  v74 = &v47 - v5;
  v6 = sub_100168088(&unk_10057E6C0, &qword_10040BF98);
  v63 = *(v6 - 8);
  v64 = v6;
  __chkstk_darwin();
  v62 = &v47 - v7;
  sub_100168088(&qword_100575C10, &qword_100402E50);
  __chkstk_darwin();
  v61 = &v47 - v8;
  v60 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  v59 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  v58 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v54 = *(v55 - 8);
  __chkstk_darwin();
  v56 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NSNotificationCenter.Publisher();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100168088(&qword_10057E6D0, &qword_10040BFA0);
  v53 = *(v16 - 8);
  __chkstk_darwin();
  v18 = &v47 - v17;
  v19 = sub_100168088(&qword_10057E6D8, &qword_10040BFA8);
  v57 = *(v19 - 8);
  __chkstk_darwin();
  v21 = &v47 - v20;
  v22 = sub_100168088(&qword_10057E6E0, &qword_10040BFB0);
  v67 = *(v22 - 8);
  v68 = v22;
  __chkstk_darwin();
  v66 = &v47 - v23;
  if (*(v1 + OBJC_IVAR____TtC8Podcasts11AppDelegate_flowController))
  {
    v24 = *(v1 + OBJC_IVAR____TtC8Podcasts11AppDelegate_flowController);
    type metadata accessor for BaseFlowController();
    v25 = swift_dynamicCastClass();
    if (v25)
    {
      v49 = v25;
      v26 = objc_opt_self();
      v50 = v4;
      v27 = v26;
      v52 = v24;
      swift_unknownObjectRetain();
      v28 = [v27 defaultCenter];
      v29 = @"MTSyncControllerSubscriptionSyncCompleted";
      NSNotificationCenter.publisher(for:object:)();

      sub_10002C074(&qword_10057E6E8, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
      Publisher.first()();
      (*(v13 + 8))(v15, v12);
      type metadata accessor for LibraryDataProvider(0);

      BaseObjectGraph.inject<A>(_:)();

      v30 = v76;
      *(swift_allocObject() + 16) = v30;
      static Subscribers.Demand.unlimited.getter();
      sub_100168088(&qword_10057E6F0, &qword_10040BFB8);
      v51 = v1;
      v48 = &protocol conformance descriptor for Publishers.First<A>;
      sub_100009FAC(&qword_10057E6F8, &qword_10057E6D0, &qword_10040BFA0, &protocol conformance descriptor for Publishers.First<A>);
      sub_100009FAC(&unk_10057E700, &qword_10057E6F0, &qword_10040BFB8, &protocol conformance descriptor for AnyPublisher<A, B>);
      Publisher<>.flatMap<A>(maxPublishers:_:)();

      (*(v53 + 8))(v18, v16);
      v31 = sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
      (*(v54 + 104))(v56, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v55);
      static DispatchQoS.unspecified.getter();
      v76 = _swiftEmptyArrayStorage;
      sub_10002C074(&qword_1005743B0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_100168088(&unk_1005729E0, &unk_1003FEB50);
      sub_100009FAC(&qword_1005743C0, &unk_1005729E0, &unk_1003FEB50, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v32 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v76 = v32;
      v33 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      v34 = v61;
      (*(*(v33 - 8) + 56))(v61, 1, 1, v33);
      v35 = sub_100009FAC(&unk_10057E710, &qword_10057E6D8, &qword_10040BFA8, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
      v36 = sub_100024384(&qword_100575C40, &qword_1005729D0, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
      v37 = v66;
      Publisher.receiveAndSubscribe<A>(on:options:)();
      sub_100009104(v34, &qword_100575C10, &qword_100402E50);

      (*(v57 + 8))(v21, v19);
      v76 = v19;
      v77 = v31;
      v78 = v35;
      v79 = v36;
      swift_getOpaqueTypeConformance2();
      v38 = v62;
      v39 = v68;
      Publisher.first()();
      sub_100009FAC(&qword_10057E720, &unk_10057E6C0, &qword_10040BF98, v48);
      swift_unknownObjectRetain();
      v40 = v64;
      Publisher<>.sink(receiveValue:)();

      (*(v63 + 8))(v38, v40);
      swift_beginAccess();
      sub_100168088(&unk_1005783F0, &unk_1004031C0);
      sub_100009FAC(&unk_10057A070, &unk_1005783F0, &unk_1004031C0, &protocol conformance descriptor for [A]);
      AnyCancellable.store<A>(in:)();
      swift_endAccess();

      sub_100168088(&qword_10057E728, &qword_10040BFC0);
      v41 = v69;
      Publisher.map<A>(_:)();
      v76 = 0;
      v77 = 0;
      sub_100168088(&qword_10057E730, &qword_10040BFC8);
      sub_100009FAC(&qword_10057E738, &qword_10057E6A8, &qword_10040BF80, &protocol conformance descriptor for Publishers.Map<A, B>);
      v43 = v71;
      v42 = v72;
      Publisher.scan<A>(_:_:)();
      (*(v70 + 8))(v41, v42);
      sub_100168088(&qword_10057E740, &qword_10040BFD0);
      sub_100009FAC(&qword_10057E748, &qword_10057E6B0, &qword_10040BF88, &protocol conformance descriptor for Publishers.Scan<A, B>);
      v45 = v74;
      v44 = v75;
      Publisher.compactMap<A>(_:)();
      (*(v73 + 8))(v43, v44);
      sub_100009FAC(&unk_10057E750, &qword_10057E6B8, &qword_10040BF90, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
      swift_unknownObjectRetain();
      v46 = v50;
      Publisher<>.sink(receiveValue:)();

      (*(v65 + 8))(v45, v46);
      swift_beginAccess();
      AnyCancellable.store<A>(in:)();
      swift_endAccess();
      swift_unknownObjectRelease();

      (*(v67 + 8))(v37, v39);
    }
  }
}

uint64_t sub_10002D764()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002D7AC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_statusUpdateHandler);
  v4 = *(v2 + OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_statusUpdateHandler);
  v5 = *(v2 + OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_statusUpdateHandler + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000112B4(v4, v5);
}

id sub_10002DA14()
{
  v1 = &v0[OBJC_IVAR____TtC8Podcasts25PlatformContentController_syncabilityController];
  v2 = type metadata accessor for PlatformContentController_Null();
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = &v0[OBJC_IVAR____TtC8Podcasts25PlatformContentController_platformImpl];
  v4[3] = v2;
  v4[4] = &off_1004E8FC8;
  *v4 = v3;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  swift_beginAccess();
  sub_10002DC9C(v9, v1);
  swift_endAccess();
  v5 = &v0[OBJC_IVAR____TtC8Podcasts25PlatformContentController_syncToAppController];
  v6 = type metadata accessor for PlatformContentController();
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v8.receiver = v0;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t sub_10002DAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10000F9A8(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100024A58(v18, a5 & 1);
      v13 = sub_10000F9A8(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_100260DB0();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return swift_unknownObjectRelease();
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_10002DC9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_10057B380, &qword_100408738);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002DD38(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2;
  return v3(&v5);
}

uint64_t sub_10002DD74(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2;
  return a3(&v4);
}

void sub_10002DDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = type metadata accessor for AsyncBlockOperation(0, a3, a4, v8);
    WitnessTable = swift_getWitnessTable();
    sub_10002DF44(a1, v10, WitnessTable, &off_1004F25B8, &off_1004F2598);
  }
}

uint64_t sub_10002DF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for OperationResult(0, AssociatedTypeWitness, v11, v12);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin();
  v17 = (&v28 - v16);
  v18 = *(a5 + 8);
  v29 = v5;
  v19 = v18(a2, a5, v15);
  if (v19)
  {
    v21 = v19;
    v22 = v20;
    v30[3] = v13;
    v23 = sub_10000E680(v30);
    v24 = *(v14 + 16);
    v24(v23, a1, v13);
    v21(v30);
    sub_1000112B4(v21, v22);
    sub_100004590(v30);
  }

  else
  {
    v24 = *(v14 + 16);
  }

  v24(v17, a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v17;
    v26 = *(a4 + 88);
    swift_errorRetain();
    v26(v25, a2, a4);
  }

  else
  {
    (*(v14 + 8))(v17, v13);
  }

  return (*(a4 + 56))(a2, a4);
}

uint64_t sub_10002E154()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
  sub_100013CB4(v1, *(v0 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8));
  return v1;
}

id sub_10002E20C()
{
  v1 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
  [*(v0 + OBJC_IVAR____TtC8Podcasts13BaseOperation_lock) lock];
  v2 = OBJC_IVAR____TtC8Podcasts13BaseOperation__onFinishBlocks;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v0 + v1);

  result = [v4 unlock];
  v6 = *(v3 + 16);
  if (!v6)
  {
  }

  v7 = 0;
  v8 = v3 + 40;
  while (v7 < *(v3 + 16))
  {
    ++v7;
    v9 = *(v8 - 8);

    v9(v10);

    v8 += 16;
    if (v6 == v7)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002E2E8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *((swift_isaMask & *a1) + 0x180);
  v6 = type metadata accessor for OperationResult(0, *((swift_isaMask & *a1) + 0x170), a3, a4);
  (*(*(v6 - 8) + 8))(&a1[v5], v6);
}

Swift::Void __swiftcall LibraryDataProvider.restorePreviouslyDownloadedEpisodes()()
{
  if (*(v0 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_downloadsRestoreController))
  {
    v1 = static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v2 = static OS_os_log.restore.getter();
    os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, v2, "Received request to attempt post-restore if necessary.", 54, 2, _swiftEmptyArrayStorage);

    OS_dispatch_queue.sync<A>(execute:)();
    if (v7 == 1)
    {
      v3 = static os_log_type_t.default.getter();
      v4 = static OS_os_log.restore.getter();
      os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Post-restore request has been processed already, and user might have been prompted already.", 91, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      v5 = swift_allocObject();
      swift_weakInit();
      v6 = swift_allocObject();
      v6[2] = v5;
      v6[3] = UInt64.int64Representation.getter;
      v6[4] = 0;

      sub_10002E75C(sub_100030398, v6);
    }
  }
}

uint64_t sub_10002E6BC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002E6F4()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10002E75C(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 2) = v2;
  *(v5 + 3) = a1;
  *(v5 + 4) = a2;
  v6 = sub_100168088(&unk_10057A690, &unk_100400AC0);
  v7 = objc_allocWithZone(v6);
  v8 = &v7[*((swift_isaMask & *v7) + 0x180)];
  *v8 = 0;
  v8[8] = 2;
  v9 = &v7[*((swift_isaMask & *v7) + 0x188)];
  *v9 = sub_10002F614;
  v9[1] = v5;
  v20.receiver = v7;
  v20.super_class = v6;

  v10 = objc_msgSendSuper2(&v20, "init");
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = &v10[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
  v13 = *&v10[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
  v14 = *&v10[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError + 8];
  *v12 = sub_10027B8A8;
  v12[1] = v11;

  v15 = v10;
  sub_1000112B4(v13, v14);

  v16 = sub_10002EA1C();
  sub_100168088(&unk_100574680, &qword_100401740);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1004007B0;
  *(v17 + 32) = v15;
  sub_100009F1C(0, &unk_10057A6A0, NSOperation_ptr);
  v18 = v15;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v16 addOperations:isa waitUntilFinished:{0, v20.receiver, v20.super_class}];
}

uint64_t sub_10002E964()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002E99C()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_10002EA1C()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = *(v0 + 88);
  }

  else
  {
    v3 = [objc_allocWithZone(NSOperationQueue) init];
    [v3 setMaxConcurrentOperationCount:1];
    v4 = *(v0 + 88);
    *(v0 + 88) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

char *sub_10002EA9C()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtC8Podcasts19ChannelListObserver_currentValue] = _swiftEmptyArrayStorage;
  v2 = &v0[OBJC_IVAR____TtC8Podcasts19ChannelListObserver_didChange];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = OBJC_IVAR____TtC8Podcasts19ChannelListObserver_mangedContextProvider;
  *&v0[v3] = [objc_opt_self() sharedInstance];
  v4 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTChannelEntityName];
  sub_100009F1C(0, &qword_1005751F0, NSPredicate_ptr);
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004007C0;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v9 = sub_100022C18();
  *(v5 + 64) = v9;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v9;
  *(v5 + 72) = v10;
  *(v5 + 80) = v11;
  v12 = NSPredicate.init(format:_:)();
  [v4 setPredicate:v12];

  sub_100168088(&unk_100574680, &qword_100401740);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1004007B0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = objc_allocWithZone(NSSortDescriptor);
  v15 = String._bridgeToObjectiveC()();

  v16 = [v14 initWithKey:v15 ascending:1];

  *(v13 + 32) = v16;
  sub_100009F1C(0, &qword_10057B1F0, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 setSortDescriptors:isa];

  v18 = [*&v1[v3] privateQueueContext];
  v19 = [objc_allocWithZone(MTFetchedResultsController) initWithFetchRequest:v4 managedObjectContext:v18 sectionNameKeyPath:0 cacheName:0];
  *&v1[OBJC_IVAR____TtC8Podcasts19ChannelListObserver_channelObserver] = v19;
  sub_100168088(&qword_100574690, &unk_100401BA0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100401B10;
  *(v20 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v20 + 40) = v21;
  *(v20 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v20 + 56) = v22;
  *(v20 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v20 + 72) = v23;
  *(v20 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v20 + 88) = v24;
  *(v20 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v20 + 104) = v25;
  *(v20 + 112) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v20 + 120) = v26;
  v27 = v19;
  v28 = Array._bridgeToObjectiveC()().super.isa;

  [v27 setPropertyKeys:v28];

  v40.receiver = v1;
  v40.super_class = type metadata accessor for ChannelListObserver();
  v29 = objc_msgSendSuper2(&v40, "init");
  v30 = OBJC_IVAR____TtC8Podcasts19ChannelListObserver_channelObserver;
  v31 = *&v29[OBJC_IVAR____TtC8Podcasts19ChannelListObserver_channelObserver];
  v32 = v29;
  [v31 setDelegate:v32];
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1001A3240;
  *(v34 + 24) = v33;
  v39[4] = sub_10002D950;
  v39[5] = v34;
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 1107296256;
  v39[2] = sub_10002D904;
  v39[3] = &unk_1004E2330;
  v35 = _Block_copy(v39);

  [v18 performBlockAndWait:v35];
  _Block_release(v35);
  LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

  if (v35)
  {
    __break(1u);
  }

  else
  {
    objc_sync_enter(v32);
    v37 = *&v29[v30];
    v38 = sub_10002F748(v37);

    *&v32[OBJC_IVAR____TtC8Podcasts19ChannelListObserver_currentValue] = v38;

    objc_sync_exit(v32);

    return v32;
  }

  return result;
}

uint64_t sub_10002F008()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002F07C(char a1)
{
  sub_1000044A0((v1 + 16), *(v1 + 40));
  v3 = dispatch thunk of MediaLibraryClientProtocol.mostRecentRestoreToken.getter();
  if (!v4)
  {
    return 2;
  }

  v5 = v3;
  v6 = v4;
  v7 = sub_100278B4C(0);
  v9 = v7;
  v10 = v8;
  if ((a1 & 1) == 0)
  {
    if (v8)
    {
      if (v5 == v7 && v6 == v8)
      {
      }

      else
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v15 & 1) == 0)
        {
          return 0;
        }
      }

      return 0xD000000000000023;
    }

    goto LABEL_19;
  }

  if (!v8)
  {
LABEL_18:

    return 1;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v16 = sub_100278B4C(1);
  if (!v17)
  {
LABEL_19:

    return 0;
  }

  if (v9 == v16 && v10 == v17)
  {

    return 0;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
    return 0;
  }

  return 0;
}

uint64_t sub_10002F298@<X0>(void *a1@<X1>, void (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_10002F07C(1);
  if ((v8 & 0x100) != 0)
  {
    v17 = v8;
    if (v8 == 2)
    {
      if (!(v6 | v7))
      {
        v23 = static os_log_type_t.default.getter();
        sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
        v13 = static OS_os_log.restore.getter();
        os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v13, "Post-restore has been completed already.", 40, 2, _swiftEmptyArrayStorage);
        goto LABEL_11;
      }

      if (!(v6 ^ 1 | v7))
      {
        v18 = static os_log_type_t.error.getter();
        sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
        v19 = static OS_os_log.restore.getter();
        os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v19, "App did not start restoration of the most recent episodes. This might be an indication of earlier failures during backup restore.", 129, 2, _swiftEmptyArrayStorage);

        v20 = 1;
LABEL_12:
        result = (a2)(0, v20, 0, 0);
        goto LABEL_13;
      }
    }

    v21 = v6;
    v22 = v7;
    a2();
    result = sub_1000316C4(v21, v22, v17, 1);
    goto LABEL_13;
  }

  v9 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v10 = static OS_os_log.restore.getter();
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "Checking if post-restore download is needed.", 44, 2, _swiftEmptyArrayStorage);

  sub_1000044A0(a1 + 2, a1[5]);
  v11 = *(dispatch thunk of MediaLibraryClientProtocol.postRestoreCandidates()() + 16);

  v12 = static os_log_type_t.default.getter();
  v13 = static OS_os_log.restore.getter();
  if (!v11)
  {
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Post-restore download is not needed.", 36, 2, _swiftEmptyArrayStorage);
LABEL_11:

    v20 = 0;
    goto LABEL_12;
  }

  sub_100168088(&unk_100574670, &qword_100400AB0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100400790;
  *(v14 + 56) = &type metadata for Int;
  *(v14 + 64) = &protocol witness table for Int;
  *(v14 + 32) = v11;
  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Number of post-restore episodes to download %d", v24);

  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = v11;

  (a2)(v11, sub_10027B8B0, v15, 0);

LABEL_13:
  *a3 = 0;
  *(a3 + 8) = 0;
  return result;
}

uint64_t sub_10002F5DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002F634()
{
  v0 = [objc_opt_self() defaultMediaLibrary];
  v1 = [v0 valueForDatabaseProperty:MTMediaLibraryRestoreTokenProperty];

  if (v1)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100009104(v6, &unk_1005783D0, &qword_1004031E0);
    return 0;
  }
}

unint64_t sub_10002F748(void *a1)
{
  v1 = a1;
  v11 = 0;
  v2 = [a1 managedObjectContext];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = &v11;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1001A3238;
  *(v4 + 24) = v3;
  aBlock[4] = sub_10002D7F0;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002D904;
  aBlock[3] = &unk_1004E22B8;
  v5 = _Block_copy(aBlock);
  v6 = v1;

  [v2 performBlockAndWait:v5];
  _Block_release(v5);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
LABEL_9:
    type metadata accessor for LegacyLockup();

    v9 = _bridgeCocoaArray<A>(_:)();

    swift_bridgeObjectRelease_n();
    v7 = v9;
    goto LABEL_7;
  }

  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  if (v7 >> 62)
  {
    goto LABEL_9;
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  type metadata accessor for LegacyLockup();

LABEL_7:

  return v7;
}

uint64_t sub_10002F964()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10002FA08()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 willChangeValueForKey:v1];

  v2 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
  [*&v0[OBJC_IVAR____TtC8Podcasts13BaseOperation_lock] lock];
  if (v0[OBJC_IVAR____TtC8Podcasts13BaseOperation__state] != 2)
  {
    v0[OBJC_IVAR____TtC8Podcasts13BaseOperation__state] = 1;
  }

  [*&v0[v2] unlock];
  v3 = String._bridgeToObjectiveC()();
  [v0 didChangeValueForKey:v3];
}

BOOL sub_10002FAF4()
{
  v1 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
  [*(v0 + OBJC_IVAR____TtC8Podcasts13BaseOperation_lock) lock];
  v2 = *(v0 + OBJC_IVAR____TtC8Podcasts13BaseOperation__state);
  [*(v0 + v1) unlock];
  return v2 == 1;
}

void sub_10002FB54(id a1)
{
  if (a1)
  {
    v3 = [a1 horizontalSizeClass];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (!a1 || v3 != v5)
  {
    v6 = OBJC_IVAR____TtC8Podcasts28PodcastsFlowTabBarController_flowController;
    swift_beginAccess();
    if (*&v1[v6])
    {
      type metadata accessor for ParentFlowController();
      if (swift_dynamicCastClass())
      {
        swift_unknownObjectRetain();
        v7 = [v1 traitCollection];
        UITraitCollection.interfaceMode.getter();

        ParentFlowController.interfaceMode.setter();
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_10002FC8C(void **a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v14 = *(Strong + 48), v27 = a7, v15 = Strong, v26 = a1, v16 = swift_allocObject(), *(v16 + 16) = v15, *(v16 + 24) = 1, v17 = swift_allocObject(), *(v17 + 16) = sub_100030AE0, *(v17 + 24) = v16, v32 = sub_10002D7F0, v33 = v17, aBlock = _NSConcreteStackBlock, v29 = 1107296256, v30 = sub_10002D904, v31 = &unk_1004ED188, v18 = _Block_copy(&aBlock), , , , dispatch_sync(v14, v18), _Block_release(v18), LOBYTE(v14) = swift_isEscapingClosureAtFileLocation(), a7 = v27, , a1 = v26, , result = , (v14 & 1) != 0))
  {
    __break(1u);
  }

  else if (a4)
  {
    v20 = static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v21 = static OS_os_log.restore.getter();
    sub_100168088(&unk_100574670, &qword_100400AB0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100400790;
    aBlock = a1;
    v29 = a2;
    LOBYTE(v30) = a3;
    sub_100030C30();
    v23 = Error.localizedDescription.getter();
    v25 = v24;
    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = sub_100022C18();
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v21, "Post-restore downloads will not be started due to underlying error: %{public}s", 78, 2, v22);

    return (a6)(0);
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_100305300(a1, a2, a3, a6, a7);
    }
  }

  return result;
}

uint64_t sub_10002FF8C()
{

  return _swift_deallocObject(v0, 25, 7);
}

BOOL sub_10002FFD4()
{
  v1 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
  [*(v0 + OBJC_IVAR____TtC8Podcasts13BaseOperation_lock) lock];
  v2 = *(v0 + OBJC_IVAR____TtC8Podcasts13BaseOperation__state);
  [*(v0 + v1) unlock];
  return v2 == 2;
}

unint64_t sub_100030034()
{
  result = qword_100574638;
  if (!qword_100574638)
  {
    sub_100168310(&unk_100574640, &unk_100401730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100574638);
  }

  return result;
}

uint64_t sub_10003009C(uint64_t a1)
{
  v2 = *((swift_isaMask & *v1) + 0x170);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v23.i8[-v5];
  v9 = *&v1[*((v8 & v7) + 0x1B0)];
  v10 = &v1[*((v8 & v7) + 0x1A8)];
  v11 = *v10;
  v24 = v10[1];
  v25 = v11;
  v12 = *((v8 & v7) + 0x1A0);
  v13 = *((v8 & v7) + 0x188);
  v14 = *((v8 & v7) + 0x190);
  v4.n128_u64[0] = v2;
  v23 = *v15;
  *&v16 = vdupq_laneq_s64(v23, 1).u64[0];
  v27 = v14;
  *(&v16 + 1) = v13;
  v26[0] = vzip1q_s64(v4, v23);
  v26[1] = v16;
  v17 = type metadata accessor for StorageOperation(0, v26);
  WitnessTable = swift_getWitnessTable();
  sub_100014CBC(v17, WitnessTable, v6);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v2;
  *(v20 + 24) = v23;
  *(v20 + 40) = v13;
  *(v20 + 48) = v14;
  *(v20 + 56) = v9;
  *(v20 + 64) = v19;
  v21 = v9;

  v25(&v1[v12], v6, sub_10003142C, v20);

  (*(v3 + 8))(v6, v2);
}

uint64_t sub_100030320()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100030358()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000303D0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = *((swift_isaMask & *v1) + 0x198);
  swift_beginAccess();
  v8 = type metadata accessor for OperationResult(0, *((v4 & v3) + 0x170), v6, v7);
  return (*(*(v8 - 8) + 16))(a1, &v1[v5], v8);
}

void sub_100030490(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"MTListenNowManagerListenNowContentDidChange" object:0];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained update];
}

void sub_100030504(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v8 = *a1;
  v9 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v10 = static OS_os_log.downloads.getter();
  v44 = a3;
  v45 = a4;
  v43 = v8;
  if (os_log_type_enabled(v10, v9))
  {
    v11 = a5;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v47 = v13;
    *v12 = 136446466;
    v15 = *&v11[OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier];
    v14 = *&v11[OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier + 8];
    v16 = v11[OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier + 16];
    aBlock = 0x496E6F6973736553;
    v49 = 0xEB00000000203A44;
    if (v16)
    {
      v17 = 1936484398;
    }

    else
    {
      v17 = 0x7261646E6174732ELL;
    }

    if (v16)
    {
      v18 = 0xE400000000000000;
    }

    else
    {
      v18 = 0xE900000000000064;
    }

    v46._countAndFlagsBits = v15;
    v46._object = v14;

    v19._countAndFlagsBits = v17;
    v19._object = v18;
    String.append(_:)(v19);

    String.append(_:)(v46);

    v20 = sub_1000153E0(aBlock, v49, &v47);

    *(v12 + 4) = v20;
    *(v12 + 12) = 2050;
    v21 = *(*&v11[OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_tasks] + 16);

    *(v12 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v10, v9, "Delete not running jobs from storage for session %{public}s. Number of running downloads %{public}ld", v12, 0x16u);
    sub_100004590(v13);
  }

  v22 = *&a5[OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_tasks];
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v22 + 32;
    v26 = v23 - 1;
    v27 = _swiftEmptyArrayStorage;
    do
    {
      v28 = v25 + 40 * v24;
      v29 = v24;
      while (1)
      {
        if (v29 >= *(v22 + 16))
        {
          __break(1u);

          sub_100004590(&aBlock);

          __break(1u);
          return;
        }

        sub_100004428(v28, &aBlock);
        sub_10021A9A0(&aBlock, a5, &v46);
        sub_100004590(&aBlock);
        if ((v46._object & 1) == 0)
        {
          break;
        }

        ++v29;
        v28 += 40;
        if (v23 == v29)
        {
          goto LABEL_24;
        }
      }

      v42 = v25;
      v30 = v26;
      countAndFlagsBits = v46._countAndFlagsBits;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_100243930(0, *(v27 + 2) + 1, 1, v27);
      }

      v33 = *(v27 + 2);
      v32 = *(v27 + 3);
      if (v33 >= v32 >> 1)
      {
        v27 = sub_100243930((v32 > 1), v33 + 1, 1, v27);
      }

      v24 = v29 + 1;
      *(v27 + 2) = v33 + 1;
      *&v27[8 * v33 + 32] = countAndFlagsBits;
      v26 = v30;
      v34 = v30 == v29;
      v25 = v42;
    }

    while (!v34);
  }

  else
  {
    v27 = _swiftEmptyArrayStorage;
  }

LABEL_24:
  v35 = *&a5[OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier];
  v36 = *&a5[OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier + 8];
  v37 = a5[OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier + 16];
  v38 = [*(v43 + 16) newBackgroundContext];
  v39 = swift_allocObject();
  *(v39 + 16) = v35;
  *(v39 + 24) = v36;
  *(v39 + 32) = v37;
  *(v39 + 40) = v27;
  *(v39 + 48) = v38;
  *(v39 + 56) = v44;
  *(v39 + 64) = v45;
  v52 = sub_10021B5E4;
  v53 = v39;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_10000F038;
  v51 = &unk_1004E5D18;
  v40 = _Block_copy(&aBlock);

  v41 = v38;

  [v41 performBlock:v40];
  _Block_release(v40);
}

unint64_t sub_100030C30()
{
  result = qword_10057A680;
  if (!qword_10057A680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057A680);
  }

  return result;
}

uint64_t sub_100030C84(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

void *sub_100030CA0(uint64_t a1, unint64_t a2)
{
  v3 = sub_100022C90(a1, a2);
  sub_100030CEC(&off_1004DE630);
  return v3;
}

uint64_t sub_100030CEC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10003C524(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

__n128 sub_100030DD8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100030DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v59 = a4;
  v60 = a6;
  v64 = a2;
  v65 = a3;
  v12 = *(a5 - 8);
  __chkstk_darwin();
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for OperationResult(0, v17, v15, v16);
  v61 = *(v18 - 8);
  v62 = v18;
  __chkstk_darwin();
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v58 = (&v56 - v21);
  v63 = *(a7 - 8);
  __chkstk_darwin();
  v57 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v56 - v23;
  v25 = a8;
  v26 = type metadata accessor for Result();
  v27 = __chkstk_darwin();
  v29 = &v56 - v28;
  (*(v30 + 16))(&v56 - v28, a1, v26, v27);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v56 = *(v63 + 32);
    v56(v24, v29, a7);
    v31 = static os_log_type_t.error.getter();
    sub_100168088(&unk_100574670, &qword_100400AB0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100400790;
    v33 = v25;
    v34 = Error.localizedDescription.getter();
    v36 = v35;
    *(v32 + 56) = &type metadata for String;
    *(v32 + 64) = sub_100022C18();
    *(v32 + 32) = v34;
    *(v32 + 40) = v36;
    os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v64, "Storage opeartion finished with error %{public}s.", 49, 2, v32);

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v38 = Strong;
      v39 = v63;
      v40 = v57;
      (*(v63 + 16))(v57, v24, a7);
      v41 = _getErrorEmbeddedNSError<A>(_:)();
      if (v41)
      {
        v42 = v41;
        (*(v39 + 8))(v40, a7);
      }

      else
      {
        v42 = swift_allocError();
        v56(v51, v40, a7);
      }

      v52 = v58;
      *v58 = v42;
      v53 = v62;
      swift_storeEnumTagMultiPayload();
      v66 = v59;
      v67 = a5;
      v68 = v60;
      v69 = a7;
      v70 = v33;
      v54 = type metadata accessor for StorageOperation(0, &v66);
      WitnessTable = swift_getWitnessTable();
      sub_10002DF44(v52, v54, WitnessTable, &off_1004F25B8, &off_1004F2598);

      (*(v61 + 8))(v52, v53);
      return (*(v39 + 8))(v24, a7);
    }

    else
    {
      return (*(v63 + 8))(v24, a7);
    }
  }

  else
  {
    v43 = v25;
    (*(v12 + 32))(v14, v29, a5);
    v44 = static os_log_type_t.debug.getter();
    os_log(_:dso:log:_:_:)(v44, &_mh_execute_header, v64, "Storage operation finished successfully.", 40, 2, _swiftEmptyArrayStorage);
    swift_beginAccess();
    v45 = swift_unknownObjectWeakLoadStrong();
    if (v45)
    {
      v46 = v45;
      (*(v12 + 16))(v20, v14, a5);
      v47 = v62;
      swift_storeEnumTagMultiPayload();
      v66 = v59;
      v67 = a5;
      v68 = v60;
      v69 = a7;
      v70 = v43;
      v48 = type metadata accessor for StorageOperation(0, &v66);
      v49 = swift_getWitnessTable();
      sub_10002DF44(v20, v48, v49, &off_1004F25B8, &off_1004F2598);

      (*(v61 + 8))(v20, v47);
    }

    return (*(v12 + 8))(v14, a5);
  }
}

uint64_t sub_1000314A0(uint64_t result, char a2)
{
  if (a2 == 1)
  {
    return swift_errorRetain();
  }

  return v2;
}

unint64_t sub_1000314C0(uint64_t a1, unint64_t a2, char a3)
{
  if (!a3)
  {
    _StringGuts.grow(_:)(34);

    v9 = 0xD000000000000020;
    v6._countAndFlagsBits = a1;
    v6._object = a2;
    String.append(_:)(v6);
    return v9;
  }

  if (a3 == 1)
  {
    _StringGuts.grow(_:)(18);

    v9 = 0xD000000000000010;
    swift_getErrorValue();
    v4._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v4);

    return v9;
  }

  v8 = 0xD00000000000003BLL;
  if (!(a1 ^ 1 | a2))
  {
    v8 = 0xD000000000000038;
  }

  if (a1 | a2)
  {
    return v8;
  }

  else
  {
    return 0xD000000000000037;
  }
}

uint64_t sub_10003163C(uint64_t result, char a2)
{
  if (a2 == 1)
  {
  }

  return v2;
}

id sub_100031650(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003967C;
  v4[3] = &unk_1004D8358;
  v4[4] = v2;
  return [v2 processListenNowEpisodes:a2 completion:v4];
}

uint64_t sub_1000316C4(uint64_t a1, uint64_t a2, char a3, char a4)
{
  if (a4)
  {
    return sub_1000316D0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1000316D0(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
  }

  return v3;
}

void sub_10003172C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
  [*(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_lock) lock];
  v3 = *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation__error);
  v4 = *(v1 + v2);
  swift_errorRetain();
  [v4 unlock];
  if (v3)
  {
    v5 = *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_onError);
    if (v5)
    {
      v6 = *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_onError + 8);

      v5(v3);
      sub_1000112B4(v5, v6);
    }
  }

  sub_10002E20C();

  sub_100031E00();
}

void sub_100031854(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(a2 + 24);
      ObjectType = swift_getObjectType();
      v7 = (*(v5 + 80))(ObjectType, v5);
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0;
    }

    v8 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
    [*&v4[OBJC_IVAR____TtC8Podcasts13BaseOperation_lock] lock];
    *&v4[OBJC_IVAR____TtC8Podcasts13BaseOperation__error] = v7;
    swift_errorRetain();

    [*&v4[v8] unlock];
  }
}

uint64_t sub_100031980(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100009F1C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000319E0(uint64_t a1, char a2)
{
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = sub_10002929C(a1, a2 & 1);
  v6 = objc_allocWithZone(MTUuidQueryObserver);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 initWithEntityName:v7 predicate:v5];

  if (v8)
  {
    *(v2 + 16) = v8;
    [v8 startObserving];
    v9 = [*(v2 + 16) uuids];
    if (v9)
    {
      v10 = v9;
      v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = *(v11 + 16);

      *(v2 + 24) = v12;
      v13 = *(v2 + 16);
      v14 = swift_allocObject();
      swift_weakInit();
      v18[4] = sub_100043C4C;
      v18[5] = v14;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 1107296256;
      v18[2] = sub_100043B8C;
      v18[3] = &unk_1004E9A40;
      v15 = _Block_copy(v18);
      v16 = v13;

      v17 = [v16 addResultsChangedHandler:v15];
      _Block_release(v15);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100031BD4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100031C0C()
{
  v1 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
  [*(v0 + OBJC_IVAR____TtC8Podcasts13BaseOperation_lock) lock];
  v2 = *(v0 + OBJC_IVAR____TtC8Podcasts13BaseOperation__error);
  v3 = *(v0 + v1);
  swift_errorRetain();
  [v3 unlock];
  return v2;
}

void sub_100031C74(void *a1, uint64_t a2, void *a3, SEL *a4)
{
  v7 = objc_opt_self();
  v8 = a3;
  v12 = a1;
  v9 = [v7 sharedApplication];
  v10 = [v9 delegate];

  if (v10)
  {
    if ([v10 respondsToSelector:*a4])
    {
      v11 = [v7 sharedApplication];
      [v10 *a4];
    }

    else
    {
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_100031E00()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 willChangeValueForKey:v1];

  v2 = String._bridgeToObjectiveC()();
  [v0 willChangeValueForKey:v2];

  v3 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
  [*&v0[OBJC_IVAR____TtC8Podcasts13BaseOperation_lock] lock];
  if (v0[OBJC_IVAR____TtC8Podcasts13BaseOperation__state] != 2)
  {
    v0[OBJC_IVAR____TtC8Podcasts13BaseOperation__state] = 2;
  }

  [*&v0[v3] unlock];
  v4 = String._bridgeToObjectiveC()();
  [v0 didChangeValueForKey:v4];

  v5 = String._bridgeToObjectiveC()();
  [v0 didChangeValueForKey:v5];
}

void sub_100032178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000321AC()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t type metadata accessor for ForegroundSyncUtil(uint64_t a1)
{
  result = qword_10057F7D8;
  if (!qword_10057F7D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100032270(uint64_t a1)
{
  result = type metadata accessor for Date();
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

id sub_1000323A4()
{
  result = [objc_allocWithZone(type metadata accessor for ForegroundSyncUtil(0)) init];
  static ForegroundSyncUtil.shared = result;
  return result;
}

char *sub_100032410()
{
  sub_100168088(&qword_100574760, &unk_1003FEB60);
  __chkstk_darwin();
  v48 = &v41 - v1;
  v46 = type metadata accessor for LibraryImageProvider();
  v47 = *(v46 - 8);
  __chkstk_darwin();
  v45 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___MTForegroundSyncUtil_defaults;
  v44 = objc_opt_self();
  *(v0 + v7) = [v44 _applePodcastsFoundationSharedUserDefaults];
  v42 = OBJC_IVAR___MTForegroundSyncUtil_workQueue;
  v41 = sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000E5CC(&qword_1005743B0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100168088(&unk_1005729E0, &unk_1003FEB50);
  sub_100015E58(&qword_1005743C0, &unk_1005729E0, &unk_1003FEB50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v8 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = v43;
  *&v43[v42] = v8;
  v10 = OBJC_IVAR___MTForegroundSyncUtil_syncController;
  *&v9[v10] = [objc_opt_self() sharedInstance];
  v11 = v9;
  v12 = [objc_opt_self() sharedInstance];
  v50 = sub_100009F1C(0, &unk_100572A00, IMURLBag_ptr);
  v51 = &protocol witness table for IMURLBag;
  aBlock[0] = v12;
  v13 = type metadata accessor for MediaRequestController();
  v14 = [objc_allocWithZone(v13) init];
  v58 = v13;
  v59 = &protocol witness table for MediaRequestController;
  v57 = v14;
  v15 = type metadata accessor for MAPICategoriesProvider();
  swift_allocObject();
  v16 = MAPICategoriesProvider.init(mediaRequestController:)();
  v58 = v15;
  v59 = &protocol witness table for MAPICategoriesProvider;
  v57 = v16;
  v17 = v45;
  static LibraryImageProvider.background.getter();
  type metadata accessor for CategoryIngester();
  v18 = swift_allocObject();
  v19 = v46;
  v18[5] = v46;
  v18[6] = &protocol witness table for LibraryImageProvider;
  v20 = sub_10000E680(v18 + 2);
  (*(v47 + 32))(v20, v17, v19);
  v21 = [v44 _applePodcastsFoundationSharedUserDefaults];
  v22 = [v21 objectForKey:kMTLastCategoriesSyncDateDefaultKey];

  if (v22)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
  }

  v56[0] = v54;
  v56[1] = v55;
  v23 = v48;
  if (*(&v55 + 1))
  {
    v24 = type metadata accessor for Date();
    v25 = swift_dynamicCast();
    (*(*(v24 - 8) + 56))(v23, v25 ^ 1u, 1, v24);
  }

  else
  {
    sub_100009104(v56, &unk_1005783D0, &qword_1004031E0);
    v26 = type metadata accessor for Date();
    (*(*(v26 - 8) + 56))(v23, 1, 1, v26);
  }

  v27 = OBJC_IVAR___MTForegroundSyncUtil_categoriesSyncUtil;
  static OS_dispatch_queue.uiAssetPreparationQueue.getter();
  v28 = [objc_opt_self() sharedInstance];
  v29 = [v28 importContext];

  type metadata accessor for CategoriesSyncUtil();
  swift_allocObject();
  *&v11[v27] = CategoriesSyncUtil.init(categoriesSyncThresholdProvider:categoriesProvider:categoryIngester:lastCategoriesSyncDate:queue:ctx:)();
  v30 = &v11[OBJC_IVAR___MTForegroundSyncUtil_storefrontChangeObserver];
  *v30 = 0u;
  v30[1] = 0u;
  static Date.distantPast.getter();
  *&v11[OBJC_IVAR___MTForegroundSyncUtil____lazy_storage___formatter] = 0;
  v11[OBJC_IVAR___MTForegroundSyncUtil_needsSyncing] = 1;
  v31 = type metadata accessor for ForegroundSyncUtil(0);
  v53.receiver = v11;
  v53.super_class = v31;
  v32 = objc_msgSendSuper2(&v53, "init");
  v33 = objc_opt_self();
  v34 = v32;
  v35 = [v33 sharedCoordinator];
  v36 = *&v34[OBJC_IVAR___MTForegroundSyncUtil_categoriesSyncUtil];
  v51 = sub_10031FE88;
  v52 = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  v50 = &unk_1004EDDC8;
  v37 = _Block_copy(aBlock);

  v38 = [v35 registerCleanupHandler:v37];
  _Block_release(v37);

  v50 = sub_100009F1C(0, &qword_10057F7F0, ASKStorefrontChangeHandlerToken_ptr);
  aBlock[0] = v38;
  v39 = OBJC_IVAR___MTForegroundSyncUtil_storefrontChangeObserver;
  swift_beginAccess();
  sub_1000333FC(aBlock, &v34[v39]);
  swift_endAccess();

  return v34;
}

uint64_t sub_100032C70@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for ShowLockupStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LibraryShowLockup();
  (*(v7 + 16))(v9, a2, v6);
  v10 = a1;
  static MetricsDataConfiguration.default.getter();
  result = sub_100032D90(v10, v9, v12);
  *a3 = result;
  return result;
}

uint64_t sub_100032D90(void *a1, char *a2, __int128 *a3)
{
  sub_100168088(&qword_100574038, &unk_100401780);
  __chkstk_darwin();
  v8 = v36 - v7;
  sub_100168088(&unk_100578C10, &qword_100400B60);
  __chkstk_darwin();
  v10 = v36 - v9;
  v11 = type metadata accessor for ShowLockupStyle.LockupStyleOptions();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin().n128_u64[0];
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 uuid];
  if (v16)
  {
    v40 = v8;
    v48 = v3;
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    [a1 storeCollectionId];
    v50 = AdamID.init(rawValue:)();
    v49 = sub_10003346C(a1);
    v51 = v21;
    ShowLockupStyle.subline.getter();
    v43 = MTPodcast.lockupString(with:)();
    (*(v12 + 8))(v15, v11);
    if (ShowLockupStyle.includesOfferButton.getter())
    {
      type metadata accessor for LibraryFollowAction();
      swift_allocObject();

      v22 = LibraryFollowAction.init(podcastUuid:displaySuccessHUD:)();
    }

    else
    {
      v22 = 0;
    }

    MTPodcast.artworkModel.getter();
    v25 = [a1 title];
    if (v25)
    {
      v26 = v25;
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v27;
    }

    else
    {
      v42 = 0;
      v41 = 0;
    }

    v47 = v10;
    [a1 addedDate];

    v28 = sub_100034D1C(a1, a2, v49, v51, a3);
    v30 = v28;
    v45 = v20;
    v46 = v18;
    v44 = v22;
    v31 = v40;
    if (v28)
    {
      v32 = type metadata accessor for Action();
      v28 = sub_100036A24();
    }

    else
    {
      v32 = 0;
      *(&v52 + 1) = 0;
      v53 = 0;
    }

    *&v52 = v30;
    v54 = v32;
    v55 = v28;
    v38 = sub_100036C30(a1, a3, v29);
    v37 = sub_100037100(a1);
    v36[1] = [a1 subscribed];
    v36[0] = [a1 isExplicit];
    *&v57 = v50;
    sub_1000366D8();
    BinaryInteger.description.getter();
    static MetricsIDType.itsContentID.getter();
    static MetricsTargetType.lockup.getter();
    v40 = a2;
    static MetricsContentKind.show.getter();
    v39 = a1;
    static ImpressionMetrics.shelfItem(id:idType:uniqueID:impressionType:kind:name:)();

    v33 = type metadata accessor for ImpressionMetrics();
    (*(*(v33 - 8) + 56))(v31, 0, 1, v33);
    LOBYTE(v57) = 1;
    v24 = dispatch thunk of LibraryShowLockup.__allocating_init(uuid:adamId:icon:name:title:addedDate:subtitles:ordinal:rating:buttonAction:clickAction:providerAction:playAction:contextAction:isSubscribed:isExplicit:shelfUniqueId:impressionMetrics:)();
    v57 = *a3;
    sub_100009104(&v57, &unk_100574650, &unk_1004023C0);
    v58[0] = *(a3 + 2);
    sub_100009104(v58, &unk_100573A90, &unk_100401170);
    v56 = *(a3 + 3);
    sub_100009104(&v56, &unk_100574660, &unk_1004023D0);
    sub_100037470(*(a3 + 4), *(a3 + 5));

    v34 = type metadata accessor for ShowLockupStyle();
    (*(*(v34 - 8) + 8))(v40, v34);
  }

  else
  {
    v23 = type metadata accessor for ShowLockupStyle();
    (*(*(v23 - 8) + 8))(a2, v23);
    v52 = *a3;
    sub_100009104(&v52, &unk_100574650, &unk_1004023C0);
    *&v57 = *(a3 + 2);
    sub_100009104(&v57, &unk_100573A90, &unk_100401170);
    v58[0] = *(a3 + 3);
    sub_100009104(v58, &unk_100574660, &unk_1004023D0);
    sub_100037470(*(a3 + 4), *(a3 + 5));

    return 0;
  }

  return v24;
}

uint64_t sub_1000333FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&unk_1005783D0, &qword_1004031E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003346C(void *a1)
{
  sub_100168088(&qword_100575048, &unk_100402710);
  __chkstk_darwin();
  v3 = &v13 - v2;
  v4 = type metadata accessor for ShowLockupStyle.LockupStyleOptions();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShowLockupStyle.title.getter();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100009104(v3, &qword_100575048, &unk_100402710);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v8 = MTPodcast.lockupString(with:)();
    if (*(v8 + 2))
    {
      v9 = *(v8 + 4);

      (*(v5 + 8))(v7, v4);
      return v9;
    }

    (*(v5 + 8))(v7, v4);
  }

  v10 = [a1 title];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v9;
}

char *MTPodcast.lockupString(with:)()
{
  if ([v0 subscribed])
  {
    v1 = [v0 showTypeInFeedResolvedValue];
    v2 = [v0 newEpisodesCount];
    if (v1 == 2)
    {
      if (v2 || [v0 newTrailersCount])
      {
        v3 = ShowLockupStyle.LockupStyleOptions.followedSerialShowStyle.getter();
      }

      else
      {
        v3 = ShowLockupStyle.LockupStyleOptions.followedSerialShowFallbackStyle.getter();
      }
    }

    else
    {
      if (v2 || [v0 newTrailersCount])
      {
        goto LABEL_14;
      }

      v3 = ShowLockupStyle.LockupStyleOptions.followedEpisodicShowFallbackStyle.getter();
    }

LABEL_10:
    if (v3 != 15)
    {
      goto LABEL_15;
    }

LABEL_14:
    v3 = ShowLockupStyle.LockupStyleOptions.followedEpisodicShowStyle.getter();
    goto LABEL_15;
  }

  if ([v0 newEpisodesCount] || objc_msgSend(v0, "newTrailersCount") || (v3 = ShowLockupStyle.LockupStyleOptions.unfollowedShowFallbackStyle.getter(), v3 == 15))
  {
    v3 = ShowLockupStyle.LockupStyleOptions.unfollowedShowStyle.getter();
    goto LABEL_10;
  }

LABEL_15:

  return MTPodcast.lockupString(with:)(v3);
}

char *MTPodcast.lockupString(with:)(char a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  __chkstk_darwin();
  v5 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin().n128_u64[0];
  v9 = &v113 - v8;
  result = _swiftEmptyArrayStorage;
  switch(a1)
  {
    case 1:
      v37 = v6;
      [v1 latestEpisodeAvailabilityTime];
      if (v38 <= 0.0)
      {
        return _swiftEmptyArrayStorage;
      }

      [v1 latestEpisodeAvailabilityTime];
      Date.init()();
      Date.init()();
      v39 = static AbbreviatedTimeIntervalFormatter.string(from:relativeTo:currentYearReferenceDate:)();
      v41 = v40;
      v42 = *(v3 + 8);
      v42(v5, v37);
      v42(v9, v37);
      v43 = &selRef_newEpisodesCount;
      if ([v1 newEpisodesCount] <= 0)
      {
        v43 = &selRef_newTrailersCount;
        if ([v1 newTrailersCount] <= 0)
        {
          goto LABEL_49;
        }

        v44 = "NEW_TRAILERS_AND_LAST_UPDATED_DATE_FORMAT";
      }

      else
      {
        v44 = "NEW_EPISODES_AND_LAST_UPDATED_DATE_FORMAT";
      }

      v49 = (v44 - 32);
      v50 = 0xD000000000000029;
      goto LABEL_48;
    case 2:
      v45 = v6;
      [v1 latestEpisodeAvailabilityTime];
      if (v46 <= 0.0)
      {
        return _swiftEmptyArrayStorage;
      }

      [v1 latestEpisodeAvailabilityTime];
      Date.init()();
      Date.init()();
      v39 = static AbbreviatedTimeIntervalFormatter.string(from:relativeTo:currentYearReferenceDate:)();
      v41 = v47;
      v48 = *(v3 + 8);
      v48(v5, v45);
      v48(v9, v45);
      v43 = &selRef_newEpisodesCount;
      if ([v1 newEpisodesCount] > 0)
      {
        v49 = "_LAST_UPDATED_DATE_FORMAT";
        v50 = 0xD00000000000002ALL;
LABEL_48:
        v104 = v49 | 0x8000000000000000;
        v105._countAndFlagsBits = 0;
        v105._object = 0xE000000000000000;
        PFLocalizedString(_:comment:)(*&v50, v105);
        sub_100168088(&unk_100574670, &qword_100400AB0);
        v106 = swift_allocObject();
        v113 = xmmword_100400790;
        *(v106 + 16) = xmmword_100400790;
        v107 = [v1 *v43];
        *(v106 + 56) = &type metadata for Int64;
        *(v106 + 64) = &protocol witness table for Int64;
        *(v106 + 32) = v107;
        static String.localizedStringWithFormat(_:_:)();

        sub_100168088(&qword_100574690, &unk_100401BA0);
        v108 = swift_allocObject();
        *(v108 + 16) = v113;
        sub_100168088(&unk_100574670, &qword_100400AB0);
        v109 = swift_allocObject();
        *(v109 + 16) = v113;
        *(v109 + 56) = &type metadata for String;
        *(v109 + 64) = sub_100022C18();
        *(v109 + 32) = v39;
        *(v109 + 40) = v41;
        v110 = String.init(format:_:)();
        v112 = v111;

        result = v108;
        *(v108 + 32) = v110;
        *(v108 + 40) = v112;
        return result;
      }

      v43 = &selRef_newTrailersCount;
      if ([v1 newTrailersCount] > 0)
      {
        v49 = "EPISODES_COUNT_FORMAT";
        v50 = 0xD000000000000029;
        goto LABEL_48;
      }

LABEL_49:

      return _swiftEmptyArrayStorage;
    case 3:
    case 4:
      v11 = v6;
      [v1 latestEpisodeAvailabilityTime];
      if (v12 <= 0.0)
      {
        return _swiftEmptyArrayStorage;
      }

      [v1 latestEpisodeAvailabilityTime];
      Date.init()();
      Date.init()();
      v13 = static AbbreviatedTimeIntervalFormatter.string(from:relativeTo:currentYearReferenceDate:)();
      v15 = v14;
      v16 = *(v3 + 8);
      v16(v5, v11);
      v16(v9, v11);
      sub_100168088(&qword_100574690, &unk_100401BA0);
      v17 = swift_allocObject();
      v113 = xmmword_100400790;
      *(v17 + 16) = xmmword_100400790;
      v18._countAndFlagsBits = 0xD000000000000016;
      v18._object = 0x800000010046D600;
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      PFLocalizedString(_:comment:)(v18, v19);
      sub_100168088(&unk_100574670, &qword_100400AB0);
      v20 = swift_allocObject();
      *(v20 + 16) = v113;
      *(v20 + 56) = &type metadata for String;
      *(v20 + 64) = sub_100022C18();
      *(v20 + 32) = v13;
      *(v20 + 40) = v15;
      v21 = static String.localizedStringWithFormat(_:_:)();
      v23 = v22;

      goto LABEL_25;
    case 5:
      [v1 addedDate];
      if (v67 <= 0.0)
      {
        return _swiftEmptyArrayStorage;
      }

      [v1 addedDate];
      v69 = [objc_allocWithZone(NSDate) initWithTimeIntervalSinceReferenceDate:v68];
      v70 = [v69 microUnabbreviatedFriendlyDisplayString];

      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v72;

      sub_100168088(&qword_100574690, &unk_100401BA0);
      result = swift_allocObject();
      *(result + 1) = xmmword_100400790;
      *(result + 4) = v71;
      goto LABEL_22;
    case 6:
      [v1 addedDate];
      if (v51 <= 0.0)
      {
        return _swiftEmptyArrayStorage;
      }

      [v1 addedDate];
      v53 = [objc_allocWithZone(NSDate) initWithTimeIntervalSinceReferenceDate:v52];
      v54 = [v53 microUnabbreviatedFriendlyDisplayString];

      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;

      sub_100168088(&qword_100574690, &unk_100401BA0);
      v58 = swift_allocObject();
      v113 = xmmword_100400790;
      *(v58 + 16) = xmmword_100400790;
      v59 = 0x776F6C6C6F46;
      goto LABEL_28;
    case 7:
      [v1 latestEpisodeAvailabilityTime];
      if (v76 <= 0.0)
      {
        return _swiftEmptyArrayStorage;
      }

      [v1 latestEpisodeAvailabilityTime];
      v78 = [objc_allocWithZone(NSDate) initWithTimeIntervalSinceReferenceDate:v77];
      v79 = [v78 microUnabbreviatedFriendlyDisplayString];

      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v80;

      sub_100168088(&qword_100574690, &unk_100401BA0);
      v58 = swift_allocObject();
      v113 = xmmword_100400790;
      *(v58 + 16) = xmmword_100400790;
      v59 = 0x696669646F4DLL;
LABEL_28:
      v81._countAndFlagsBits = v59 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
      v81._object = 0xEB00000000402520;
      v82._countAndFlagsBits = 0;
      v82._object = 0xE000000000000000;
      PFLocalizedString(_:comment:)(v81, v82);
      sub_100168088(&unk_100574670, &qword_100400AB0);
      v83 = swift_allocObject();
      *(v83 + 16) = v113;
      *(v83 + 56) = &type metadata for String;
      *(v83 + 64) = sub_100022C18();
      *(v83 + 32) = v55;
      *(v83 + 40) = v57;
      v84 = static String.localizedStringWithFormat(_:_:)();
      v86 = v85;

      result = v58;
      *(v58 + 32) = v84;
      *(v58 + 40) = v86;
      return result;
    case 8:
      sub_100168088(&qword_100574690, &unk_100401BA0);
      v17 = swift_allocObject();
      v113 = xmmword_100400790;
      *(v17 + 16) = xmmword_100400790;
      v35._object = 0x800000010046D550;
      v35._countAndFlagsBits = 0xD000000000000015;
      v36._countAndFlagsBits = 0;
      v36._object = 0xE000000000000000;
      PFLocalizedString(_:comment:)(v35, v36);
      sub_100168088(&unk_100574670, &qword_100400AB0);
      v31 = swift_allocObject();
      *(v31 + 16) = v113;
      v32 = [v1 downloadedEpisodesCount];
      goto LABEL_24;
    case 9:
      sub_100168088(&qword_100574690, &unk_100401BA0);
      v17 = swift_allocObject();
      v113 = xmmword_100400790;
      *(v17 + 16) = xmmword_100400790;
      v73._object = 0x800000010046D550;
      v73._countAndFlagsBits = 0xD000000000000015;
      v74._countAndFlagsBits = 0;
      v74._object = 0xE000000000000000;
      PFLocalizedString(_:comment:)(v73, v74);
      sub_100168088(&unk_100574670, &qword_100400AB0);
      v31 = swift_allocObject();
      *(v31 + 16) = v113;
      v32 = [v1 downloadedUnplayedEpisodesCount];
      goto LABEL_24;
    case 10:
      sub_100168088(&qword_100574690, &unk_100401BA0);
      v17 = swift_allocObject();
      v113 = xmmword_100400790;
      *(v17 + 16) = xmmword_100400790;
      v29._object = 0x800000010046D550;
      v29._countAndFlagsBits = 0xD000000000000015;
      v30._countAndFlagsBits = 0;
      v30._object = 0xE000000000000000;
      PFLocalizedString(_:comment:)(v29, v30);
      sub_100168088(&unk_100574670, &qword_100400AB0);
      v31 = swift_allocObject();
      *(v31 + 16) = v113;
      v32 = [v1 savedEpisodesCount];
      goto LABEL_24;
    case 11:
      sub_100168088(&qword_100574690, &unk_100401BA0);
      v17 = swift_allocObject();
      v113 = xmmword_100400790;
      *(v17 + 16) = xmmword_100400790;
      v33._object = 0x800000010046D550;
      v33._countAndFlagsBits = 0xD000000000000015;
      v34._countAndFlagsBits = 0;
      v34._object = 0xE000000000000000;
      PFLocalizedString(_:comment:)(v33, v34);
      sub_100168088(&unk_100574670, &qword_100400AB0);
      v31 = swift_allocObject();
      *(v31 + 16) = v113;
      v32 = [v1 savedUnplayedEpisodesCount];
      goto LABEL_24;
    case 12:
      sub_100168088(&qword_100574690, &unk_100401BA0);
      v17 = swift_allocObject();
      v113 = xmmword_100400790;
      *(v17 + 16) = xmmword_100400790;
      v65._object = 0x800000010046D550;
      v65._countAndFlagsBits = 0xD000000000000015;
      v66._countAndFlagsBits = 0;
      v66._object = 0xE000000000000000;
      PFLocalizedString(_:comment:)(v65, v66);
      sub_100168088(&unk_100574670, &qword_100400AB0);
      v31 = swift_allocObject();
      *(v31 + 16) = v113;
      v32 = [v1 libraryEpisodesCount];
LABEL_24:
      *(v31 + 56) = &type metadata for Int64;
      *(v31 + 64) = &protocol witness table for Int64;
      *(v31 + 32) = v32;
      v21 = static String.localizedStringWithFormat(_:_:)();
      v23 = v75;

LABEL_25:

      result = v17;
      *(v17 + 32) = v21;
      *(v17 + 40) = v23;
      return result;
    case 13:
      v24 = [v1 category];
      if (!v24)
      {
        return _swiftEmptyArrayStorage;
      }

      v25 = v24;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      sub_100168088(&qword_100574690, &unk_100401BA0);
      result = swift_allocObject();
      *(result + 1) = xmmword_100400790;
      *(result + 4) = v26;
LABEL_22:
      *(result + 5) = v28;
      return result;
    case 14:
      return result;
    default:
      v60 = [v1 author];
      if (v60)
      {
        v61 = v60;
        v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v64 = v63;
      }

      else
      {
        v62 = 0;
        v64 = 0;
      }

      v87 = [v1 provider];
      if (v87)
      {
        v88 = v87;
        v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v91 = v90;
      }

      else
      {
        v89 = 0;
        v91 = 0;
      }

      v92 = 0;
      v114 = v62;
      v115[0] = v64;
      v115[1] = v89;
      v115[2] = v91;
      v93 = _swiftEmptyArrayStorage;
LABEL_34:
      v94 = &v115[2 * v92];
      while (++v92 != 3)
      {
        v95 = v94 + 2;
        v96 = *v94;
        v94 += 2;
        if (v96)
        {
          v97 = *(v95 - 3);
          v98 = v93;

          v99 = v98;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v99 = sub_100243134(0, *(v98 + 2) + 1, 1, v98);
          }

          v93 = v99;
          v101 = *(v99 + 2);
          v100 = *(v99 + 3);
          if (v101 >= v100 >> 1)
          {
            v93 = sub_100243134((v100 > 1), v101 + 1, 1, v99);
          }

          *(v93 + 2) = v101 + 1;
          v102 = &v93[16 * v101];
          *(v102 + 4) = v97;
          *(v102 + 5) = v96;
          goto LABEL_34;
        }
      }

      v103 = v93;
      sub_100168088(&qword_100574230, &qword_100401FE0);
      swift_arrayDestroy();
      return v103;
  }
}

Swift::Void __swiftcall ForegroundSyncUtil.updatePlaybackSettingIfNeeded()()
{
  v53 = type metadata accessor for Logger();
  v1 = *(v53 - 8);
  __chkstk_darwin();
  v3 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v50 - v4;
  __chkstk_darwin();
  v7 = &v50 - v6;
  __chkstk_darwin();
  v9 = &v50 - v8;
  __chkstk_darwin();
  v11 = &v50 - v10;
  sub_100009F1C(0, &qword_10057AB20, off_1004D1A70);
  v12 = [swift_getObjCClassFromMetadata() sharedInstance];
  v13 = [v12 activeAccount];

  v14 = *(v0 + OBJC_IVAR___MTForegroundSyncUtil_defaults);
  static String.Account.lastSignedInDSIDKey.getter();
  v15 = String._bridgeToObjectiveC()();

  v52 = v14;
  v16 = [v14 stringForKey:v15];

  if (!v16)
  {
    v17 = 0;
    v19 = 0;
    if (!v13)
    {
      goto LABEL_13;
    }

LABEL_5:
    v20 = [v13 ams_DSID];
    if (!v20)
    {
      goto LABEL_13;
    }

    v51 = v1;
    v21 = v20;
    v22 = [v20 stringValue];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    type metadata accessor for AnalyticsIdentifierManager();
    v23 = static AnalyticsIdentifierManager.hashDSIDWithSalt(_:)();
    v25 = v24;

    if (!v25)
    {

      static Logger.playback.getter();
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "[Foreground Sync] Not setting Continuous Playback. Failed to hash DSID.", v37, 2u);
      }

      else
      {
      }

      (*(v51 + 8))(v5, v53);
      return;
    }

    if (v19 && (v17 == v23 && v19 == v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      static Logger.playback.getter();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "[Foreground Sync] User hasn't changed. Not updating Continuous Playback setting.", v28, 2u);
      }

      else
      {
      }

      (*(v51 + 8))(v7, v53);
      return;
    }

    v38 = [v13 ams_accountFlagValueForAccountFlag:AMSAccountFlagUnderThirteen];
    v39 = v51;
    if (v38)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v54 = 0u;
      v55 = 0u;
    }

    v56[0] = v54;
    v56[1] = v55;
    if (*(&v55 + 1))
    {
      if (swift_dynamicCast() && (v54 & 1) != 0)
      {

        v40 = 1;
        goto LABEL_36;
      }
    }

    else
    {
      sub_100009104(v56, &unk_1005783D0, &qword_1004031E0);
    }

    if (!v19)
    {
      static Logger.playback.getter();
      v42 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v42, v46))
      {
        v11 = v9;
        v41 = v52;
        v45 = v53;
        goto LABEL_43;
      }

      v47 = swift_slowAlloc();
      *v47 = 67109120;
      _os_log_impl(&_mh_execute_header, v42, v46, "[Foreground Sync] User has changed but doesn't need setting reset. U13=%{BOOL}d", v47, 8u);
      v11 = v9;
      v41 = v52;
      v45 = v53;
      goto LABEL_41;
    }

    v40 = 0;
LABEL_36:
    v41 = v52;
    [v52 setBool:v40 ^ 1u forKey:kMTContinuousPlaybackEnabledKey];
    static Logger.playback.getter();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v42, v43))
    {
      v39 = v51;
      v45 = v53;
LABEL_43:

      (*(v39 + 8))(v11, v45);
      v48 = String._bridgeToObjectiveC()();

      static String.Account.lastSignedInDSIDKey.getter();
      v49 = String._bridgeToObjectiveC()();

      [v41 setObject:v48 forKey:v49];

      return;
    }

    v44 = swift_slowAlloc();
    *v44 = 67109376;
    *(v44 + 4) = v40 ^ 1;
    *(v44 + 8) = 1024;
    *(v44 + 10) = v40;
    _os_log_impl(&_mh_execute_header, v42, v43, "[Foreground Sync] Setting Continuous Playback to %{BOOL}d for user U13=%{BOOL}d.", v44, 0xEu);
    v39 = v51;
    v45 = v53;
LABEL_41:

    goto LABEL_43;
  }

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (v13)
  {
    goto LABEL_5;
  }

LABEL_13:
  v29 = v53;
  if (v19)
  {
    *&v56[0] = v17;
    *(&v56[0] + 1) = v19;
    sub_1001A0728();
    v30 = Collection.isNotEmpty.getter();

    if (v30)
    {
      static String.Account.lastSignedInDSIDKey.getter();
      v31 = String._bridgeToObjectiveC()();

      [v52 setURL:0 forKey:v31];
    }
  }

  static Logger.playback.getter();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "[Foreground Sync] Not setting Continuous Playback. No current signed in user.", v34, 2u);
  }

  else
  {
  }

  (*(v1 + 8))(v3, v29);
}

uint64_t sub_100034D1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v103 = a5;
  v86 = a3;
  v87 = a4;
  v97 = a2;
  sub_100168088(&qword_10057CF40, qword_100405ED0);
  __chkstk_darwin();
  v7 = v83 - v6;
  type metadata accessor for ScalarDictionary();
  __chkstk_darwin();
  v9 = v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  v83[1] = v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v83[2] = v83 - v11;
  __chkstk_darwin();
  v85 = v83 - v12;
  __chkstk_darwin();
  v98 = v83 - v13;
  v14 = type metadata accessor for FlowDestinationPageHeader();
  v104 = *(v14 - 8);
  __chkstk_darwin();
  v93 = v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v94 = v83 - v16;
  __chkstk_darwin();
  v108 = v83 - v17;
  v18 = type metadata accessor for FlowPresentationContext();
  v101 = *(v18 - 8);
  v102 = v18;
  __chkstk_darwin();
  v91 = v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v92 = v83 - v20;
  __chkstk_darwin();
  v84 = v83 - v21;
  __chkstk_darwin();
  v107 = v83 - v22;
  v23 = type metadata accessor for FlowDestination();
  v105 = *(v23 - 8);
  v106 = v23;
  __chkstk_darwin();
  v89 = (v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v90 = (v83 - v25);
  __chkstk_darwin();
  v95 = v83 - v26;
  __chkstk_darwin();
  v96 = v83 - v27;
  __chkstk_darwin();
  v29 = (v83 - v28);
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v88 = v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v32 = v83 - v31;
  __chkstk_darwin();
  v34 = v83 - v33;
  __chkstk_darwin();
  v36 = v83 - v35;
  *&v37 = __chkstk_darwin().n128_u64[0];
  v39 = v83 - v38;
  [a1 storeCollectionId];
  v100 = AdamID.init(rawValue:)();
  if ([a1 isHiddenOrImplicitlyFollowed])
  {
    v40 = [a1 bestAvailableStoreCleanURL];
    v99 = v9;
    if (v40)
    {
      v41 = v40;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v42 = type metadata accessor for URL();
      (*(*(v42 - 8) + 56))(v36, 0, 1, v42);
    }

    else
    {
      v50 = type metadata accessor for URL();
      (*(*(v50 - 8) + 56))(v36, 1, 1, v50);
    }

    sub_1001B8A3C(v36, v39);
    v51 = *(sub_100168088(&unk_10057C230, &qword_100402DC0) + 48);
    *v29 = 0;
    sub_1001BB0E0(v39, v29 + v51);
    (*(v105 + 104))(v29, enum case for FlowDestination.page(_:), v106);
    (*(v101 + 104))(v107, enum case for FlowPresentationContext.pushDetail(_:), v102);
    (*(v104 + 104))(v108, enum case for FlowDestinationPageHeader.uber(_:), v14);
    *&v112 = v100;
    sub_1000366D8();
    BinaryInteger.description.getter();
    static MetricsTargetType.lockup.getter();
    sub_100168088(&unk_10057DC50, &unk_10040A590);
    type metadata accessor for MetricsData();
    *(swift_allocObject() + 16) = xmmword_100400790;
    static MetricsActionType.navigate.getter();
    static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();

    ScalarDictionary.init()();
    ActionMetrics.init(data:custom:)();
    sub_100168088(&qword_1005742B0, &qword_100406C70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004007C0;
    v53 = static Link.Presentation.textFollowsTintColor.getter();
    *(inited + 32) = v53;
    v54 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
    *(inited + 33) = v54;
    Link.Presentation.init(rawValue:)();
    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v53)
    {
      Link.Presentation.init(rawValue:)();
    }

    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v54)
    {
      Link.Presentation.init(rawValue:)();
    }

    type metadata accessor for FlowAction();
    swift_allocObject();
    v55 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
    sub_100009104(v39, &qword_100574040, &unk_100400AD0);
    return v55;
  }

  ShowLockupStyle.groupedEpisodesListType.getter();
  if (v111 != 255)
  {
    v108 = v14;
    v112 = v110[0];
    v113 = v110[1];
    v114 = v110[2];
    v115 = v110[3];
    v116 = v111;
    v43 = [a1 uuid];
    if (!v43)
    {
      v47 = &qword_100575040;
      v48 = &qword_100402708;
      v49 = v110;
      goto LABEL_22;
    }

    v99 = v9;
    v44 = v43;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    EpisodeListType.groupedFlowDestination(podcastUUID:)();

    v46 = v105;
    v45 = v106;
    if ((*(v105 + 48))(v7, 1, v106) == 1)
    {
      sub_100009104(v110, &qword_100575040, &qword_100402708);
      v47 = &qword_10057CF40;
      v48 = qword_100405ED0;
      v49 = v7;
LABEL_22:
      sub_100009104(v49, v47, v48);
      return 0;
    }

    v64 = v96;
    (*(v46 + 32))(v96, v7, v45);
    (*(v46 + 16))(v95, v64, v45);
    v109 = v100;
    sub_1000366D8();
    BinaryInteger.description.getter();
    static MetricsTargetType.lockup.getter();
    v65 = [a1 uuid];
    if (v65)
    {
      v66 = v65;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      URL.init(string:)();

      v67 = type metadata accessor for URL();
      v68 = *(v67 - 8);
      if ((*(v68 + 48))(v32, 1, v67) != 1)
      {
        (*(v68 + 32))(v34, v32, v67);
        (*(v68 + 56))(v34, 0, 1, v67);
        goto LABEL_35;
      }

      sub_100009104(v32, &qword_100574040, &unk_100400AD0);
    }

    v69 = type metadata accessor for URL();
    (*(*(v69 - 8) + 56))(v34, 1, 1, v69);
LABEL_35:
    sub_100168088(&unk_10057DC50, &unk_10040A590);
    type metadata accessor for MetricsData();
    *(swift_allocObject() + 16) = xmmword_100400790;
    static MetricsActionType.navigate.getter();
    static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();

    ScalarDictionary.init()();
    ActionMetrics.init(data:custom:)();
    sub_100009104(v34, &qword_100574040, &unk_100400AD0);
    (*(v101 + 104))(v84, enum case for FlowPresentationContext.infer(_:), v102);
    sub_100168088(&qword_1005742B0, &qword_100406C70);
    v77 = swift_initStackObject();
    *(v77 + 16) = xmmword_1004007C0;
    v78 = static Link.Presentation.textFollowsTintColor.getter();
    *(v77 + 32) = v78;
    v79 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
    *(v77 + 33) = v79;
    Link.Presentation.init(rawValue:)();
    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v78)
    {
      Link.Presentation.init(rawValue:)();
    }

    Link.Presentation.init(rawValue:)();
    v80 = Link.Presentation.init(rawValue:)();
    v81 = v108;
    if (v80 != v79)
    {
      Link.Presentation.init(rawValue:)();
    }

    (*(v104 + 104))(v94, enum case for FlowDestinationPageHeader.standard(_:), v81);
    type metadata accessor for FlowAction();
    swift_allocObject();

    v55 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
    sub_100009104(v110, &qword_100575040, &qword_100402708);
    (*(v105 + 8))(v96, v106);
    return v55;
  }

  v99 = v9;
  type metadata accessor for PodcastDetail();
  v56 = a1;
  v57 = PodcastDetail.__allocating_init(from:episodes:episodeToPlay:seasonToShow:)();
  if (!v57)
  {
    return 0;
  }

  v58 = v57;
  sub_100036618();
  LODWORD(v107) = static UITraitCollection.interfaceIdiomIsMac.getter();
  if ([v56 subscribed])
  {
    *v89 = v58;
    (*(v105 + 104))();
    (*(v101 + 104))(v91, enum case for FlowPresentationContext.push(_:), v102);
    (*(v104 + 104))(v93, enum case for FlowDestinationPageHeader.uber(_:), v14);
    *&v112 = v100;
    sub_1000366D8();

    BinaryInteger.description.getter();
    static MetricsTargetType.lockup.getter();
    v59 = type metadata accessor for URL();
    v60 = v88;
    (*(*(v59 - 8) + 56))(v88, 1, 1, v59);
    sub_100168088(&unk_10057DC50, &unk_10040A590);
    type metadata accessor for MetricsData();
    *(swift_allocObject() + 16) = xmmword_100400790;
    static MetricsActionType.navigate.getter();
    static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();

    ScalarDictionary.init()();
    ActionMetrics.init(data:custom:)();
    sub_100009104(v60, &qword_100574040, &unk_100400AD0);
    sub_100168088(&qword_1005742B0, &qword_100406C70);
    v61 = swift_initStackObject();
    *(v61 + 16) = xmmword_1004007C0;
    v62 = static Link.Presentation.textFollowsTintColor.getter();
    *(v61 + 32) = v62;
    v63 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
    *(v61 + 33) = v63;
    Link.Presentation.init(rawValue:)();
    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v62)
    {
      Link.Presentation.init(rawValue:)();
    }

    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v63)
    {
      Link.Presentation.init(rawValue:)();
    }

    type metadata accessor for FlowAction();
    swift_allocObject();
  }

  else
  {
    v108 = v14;

    v70 = Podcast.uuid.getter();
    v71 = v90;
    *v90 = v70;
    v71[1] = v72;
    *(v71 + 64) = 9;
    (*(v105 + 104))(v71, enum case for FlowDestination.episodeList(_:), v106);
    (*(v101 + 104))(v92, enum case for FlowPresentationContext.push(_:), v102);
    *&v112 = v100;
    sub_1000366D8();
    BinaryInteger.description.getter();
    static MetricsTargetType.lockup.getter();
    Podcast.uuid.getter();

    v73 = v88;
    URL.init(string:)();

    sub_100168088(&unk_10057DC50, &unk_10040A590);
    type metadata accessor for MetricsData();
    *(swift_allocObject() + 16) = xmmword_100400790;
    static MetricsActionType.navigate.getter();
    static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();

    ScalarDictionary.init()();
    ActionMetrics.init(data:custom:)();
    sub_100009104(v73, &qword_100574040, &unk_100400AD0);
    sub_100168088(&qword_1005742B0, &qword_100406C70);
    v74 = swift_initStackObject();
    *(v74 + 16) = xmmword_1004007C0;
    v75 = static Link.Presentation.textFollowsTintColor.getter();
    *(v74 + 32) = v75;
    v76 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
    *(v74 + 33) = v76;
    Link.Presentation.init(rawValue:)();
    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v75)
    {
      Link.Presentation.init(rawValue:)();
    }

    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v76)
    {
      Link.Presentation.init(rawValue:)();
    }

    (*(v104 + 104))(v94, enum case for FlowDestinationPageHeader.standard(_:), v108);
    type metadata accessor for FlowAction();
    swift_allocObject();
  }

  v55 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();

  return v55;
}

void *sub_100036208(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
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

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100168088(a5, a6);
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

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_10003643C()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  *(*v1 + 80) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1003268F0;
  }

  else
  {
    v5 = sub_100036664;
  }

  return _swift_task_switch(v5, 0, 0);
}

unint64_t sub_100036618()
{
  result = qword_10057BC40;
  if (!qword_10057BC40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10057BC40);
  }

  return result;
}

uint64_t sub_100036664()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_1000366D8()
{
  result = qword_10057E7A0;
  if (!qword_10057E7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057E7A0);
  }

  return result;
}

Swift::Void __swiftcall ForegroundSyncUtil.feedUpdateAllPodcastsOnForeground()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v5 = *(v12 - 8);
  __chkstk_darwin();
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[1] = *&v0[OBJC_IVAR___MTForegroundSyncUtil_workQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_100037AC8;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004EDCD8;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_10000E5CC(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0, &unk_100400B50);
  sub_100015E58(&qword_10057D390, &unk_100575CD0, &unk_100400B50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v12);
}

uint64_t sub_1000369E8()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100036A24()
{
  result = qword_100578430;
  if (!qword_100578430)
  {
    type metadata accessor for Action();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100578430);
  }

  return result;
}

uint64_t sub_100036A8C()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 64) = v0;

  sub_100009104(v5, &qword_100578010, &qword_100401F60);
  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v6 = sub_1003279E8;
  }

  else
  {
    v6 = sub_10003708C;
  }

  return _swift_task_switch(v6, 0, 0);
}

id sub_100036C30(void *a1, uint64_t a2, __n128 a3)
{
  type metadata accessor for ScalarDictionary();
  __chkstk_darwin();
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v5 = v20 - v4;
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  sub_100168088(&unk_100573A80, &unk_100401160);
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = v20 - v7;
  result = [a1 smartPlayEpisode];
  if (result)
  {
    v10 = result;
    v11 = [result uuid];
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = MTEpisode.adamID.getter();
      v25 = v14;
      v15 = type metadata accessor for EpisodeListSettings();
      (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
      [v10 storeTrackId];
      v16 = AdamID.init(rawValue:)();
      v24 = static MetricsTargetType.button.getter();
      if (AdamID.isEmpty.getter())
      {

        static ActionMetrics.notInstrumented.getter();
      }

      else
      {
        sub_100168088(&unk_10057DC50, &unk_10040A590);
        v23 = v13;
        v17 = *(type metadata accessor for MetricsData() - 8);
        v22 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_100400790;
        v27 = v16;
        sub_1000366D8();
        v20[2] = BinaryInteger.description.getter();
        v20[1] = static MetricsActionType.play.getter();
        v18 = type metadata accessor for URL();
        (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
        static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();

        sub_100009104(v5, &qword_100574040, &unk_100400AD0);
        ScalarDictionary.init()();
        ActionMetrics.init(data:custom:)();
      }

      type metadata accessor for LibraryPlayAction();
      swift_allocObject();
      v19 = LibraryPlayAction.init(episodeUuid:episodeAdamId:channelAdamId:settings:showPlayerIfPlaying:title:timestamp:actionMetrics:)();

      return v19;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_10003708C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

id sub_100037100(void *a1)
{
  result = [a1 uuid];
  if (result)
  {
    v2 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    ShowLockupStyle.groupedEpisodesListType.getter();
    if (v4 == 255 || (v6 = v3[0], v7 = v3[1], v8 = v3[2], v9 = v3[3], v10 = v4, EpisodeListType.singleShowListType(showUuid:)(), sub_100009104(v3, &qword_100575040, &qword_100402708), v5 == 255))
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v15 = -1;
    }

    type metadata accessor for LibraryPodcastContextAction();
    swift_allocObject();
    return LibraryPodcastContextAction.init(podcastUuid:groupedEpisodeListType:)();
  }

  return result;
}

uint64_t sub_100037208(uint64_t a1)
{
  v3 = *v2;
  v3[13] = a1;
  v3[14] = v1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100037474, 0, 0);
  }
}

uint64_t sub_100037474()
{
  v1 = v0[13];
  v2 = *(v1 + 16);
  v0[15] = v2;
  if (v2)
  {
    v3 = v0[8];
    v4 = v0[14];
    v0[16] = 0;
    if (*(v1 + 16))
    {
      v5 = *(v3 + 16);
      v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v5(v0[11], v1 + v6, v0[7]);
      static Task<>.checkCancellation()();
      v0[17] = v4;
      if (v4)
      {
        (*(v0[8] + 8))(v0[11], v0[7]);

LABEL_6:

        v8 = v0[1];

        return v8();
      }

      v10 = v0[10];
      v11 = v0[8];
      v21 = v0[11];
      v22 = v0[9];
      v12 = v0[7];
      v14 = v0[2];
      v13 = v0[3];
      static OSSignposter.widget.getter();
      v15 = type metadata accessor for TaskPriority();
      (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
      v5(v10, v21, v12);
      v16 = swift_allocObject();
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      (*(v11 + 32))(v16 + v6, v10, v12);
      *(v16 + ((v6 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
      v17 = v14;
      v18 = swift_task_alloc();
      v0[18] = v18;
      *v18 = v0;
      v18[1] = sub_100042F78;
    }

    else
    {
      __break(1u);
    }

    return __s2os12OSSignposterV18PodcastsFoundationE4task8priority4name5blockxScPSg_s12StaticStringVxyYaYAcntYas8SendableRzlF();
  }

  v7 = v0[14];

  static Task<>.checkCancellation()();
  if (v7)
  {
    goto LABEL_6;
  }

  type metadata accessor for MainActor();
  v0[19] = static MainActor.shared.getter();
  v20 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10032684C, v20, v19);
}

void sub_100037830()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  static OS_os_log.feedUpdate.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "[Foreground Sync] Initiating feed updates on app foreground.", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  v7 = [objc_opt_self() sharedInstance];
  v8 = [v7 integerForKey:kForegroundFeedUpdateThreshold];

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100038984;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100038258;
  aBlock[3] = &unk_1004EDD28;
  v10 = _Block_copy(aBlock);

  [v8 asyncValueWithCompletion:v10];
  _Block_release(v10);
}

uint64_t sub_100037A90()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t type metadata accessor for StationListObserver(uint64_t a1)
{
  result = qword_100581560;
  if (!qword_100581560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100037B60(uint64_t a1)
{
  result = type metadata accessor for StationListOptions();
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

char *sub_100037C20(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC8Podcasts19StationListObserver_currentValue] = _swiftEmptyArrayStorage;
  v3 = &v1[OBJC_IVAR____TtC8Podcasts19StationListObserver_didChange];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC8Podcasts19StationListObserver_managedContextProvider;
  *&v1[v4] = [objc_opt_self() sharedInstance];
  v5 = OBJC_IVAR____TtC8Podcasts19StationListObserver_options;
  v6 = type metadata accessor for StationListOptions();
  v7 = *(v6 - 8);
  v32 = v6;
  v33 = a1;
  (*(v7 + 16))(&v1[v5], a1);
  v8 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTPlaylistEntityName];
  v9 = objc_opt_self();
  v10 = [v9 topLevelPlaylistsExcludingFoldersPredicate];
  [v8 setPredicate:v10];

  v11 = [v9 sortDescriptors];
  [v8 setSortDescriptors:v11];

  v12 = [*&v1[v4] privateQueueContext];
  v13 = [objc_allocWithZone(MTFetchedResultsController) initWithFetchRequest:v8 managedObjectContext:v12 sectionNameKeyPath:0 cacheName:0];
  *&v1[OBJC_IVAR____TtC8Podcasts19StationListObserver_stationsObserver] = v13;
  sub_100168088(&qword_100574690, &unk_100401BA0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004007A0;
  *(v14 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v14 + 40) = v15;
  *(v14 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v14 + 56) = v16;
  *(v14 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v14 + 72) = v17;
  *(v14 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v14 + 88) = v18;
  *(v14 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v14 + 104) = v19;
  v20 = v13;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v20 setPropertyKeys:isa];

  v35.receiver = v1;
  v35.super_class = type metadata accessor for StationListObserver(0);
  v22 = objc_msgSendSuper2(&v35, "init");
  v23 = OBJC_IVAR____TtC8Podcasts19StationListObserver_stationsObserver;
  v24 = *&v22[OBJC_IVAR____TtC8Podcasts19StationListObserver_stationsObserver];
  v25 = v22;
  [v24 setDelegate:v25];
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_10035D814;
  *(v27 + 24) = v26;
  aBlock[4] = sub_10002D950;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002D904;
  aBlock[3] = &unk_1004F0488;
  v28 = _Block_copy(aBlock);

  [v12 performBlockAndWait:v28];
  _Block_release(v28);
  LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

  if (v28)
  {
    __break(1u);
  }

  else
  {
    objc_sync_enter(v25);
    v30 = *&v22[v23];
    v31 = sub_100038FE4(v30, v33);

    *&v25[OBJC_IVAR____TtC8Podcasts19StationListObserver_currentValue] = v31;

    objc_sync_exit(v25);

    (*(v7 + 8))(v33, v32);

    return v25;
  }

  return result;
}

uint64_t sub_1000380C4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100038258(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_1000382EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v37 = *(v9 - 8);
  v38 = v9;
  __chkstk_darwin();
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Logger();
  v12 = *(v40 - 8);
  __chkstk_darwin();
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v37 - v15;
  __chkstk_darwin();
  v18 = &v37 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a3)
    {
      sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
      swift_errorRetain();
      static OS_os_log.feedUpdate.getter();
      swift_errorRetain();
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        v25 = _convertErrorToNSError(_:)();
        *(v23 + 4) = v25;
        *v24 = v25;
        _os_log_impl(&_mh_execute_header, v21, v22, "[Foreground Sync] Failed to fetch feed update threshold from the bag with error: %@", v23, 0xCu);
        sub_100009104(v24, &qword_100575B20, &qword_100401F90);
      }

      else
      {
      }

      return (*(v12 + 8))(v16, v40);
    }

    else if (a1 && (aBlock = 0, LOBYTE(v43) = 1, static Double._conditionallyBridgeFromObjectiveC(_:result:)(), (v43 & 1) == 0))
    {
      v33 = aBlock;
      v34 = swift_allocObject();
      *(v34 + 16) = v33;
      *(v34 + 24) = v20;
      v46 = sub_10003931C;
      v47 = v34;
      aBlock = _NSConcreteStackBlock;
      v43 = 1107296256;
      v44 = sub_10000F038;
      v45 = &unk_1004EDD78;
      v35 = _Block_copy(&aBlock);
      v36 = v20;
      static DispatchQoS.unspecified.getter();
      v41 = _swiftEmptyArrayStorage;
      sub_10000E5CC(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100168088(&unk_100575CD0, &unk_100400B50);
      sub_100015E58(&qword_10057D390, &unk_100575CD0, &unk_100400B50);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v35);
      (*(v39 + 8))(v8, v6);
      (*(v37 + 8))(v11, v38);
    }

    else
    {
      sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
      static OS_os_log.feedUpdate.getter();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "[Foreground Sync] Unable to cast value for feed update threshold from the bag to a Double.", v32, 2u);
      }

      else
      {
      }

      return (*(v12 + 8))(v14, v40);
    }
  }

  else
  {
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    static OS_os_log.feedUpdate.getter();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "[Foreground Sync] Unable to unwrap self in ForegroundSyncUtil.", v28, 2u);
    }

    return (*(v12 + 8))(v18, v40);
  }
}

uint64_t sub_10003894C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000389C4(char *a1, double a2)
{
  v4 = type metadata accessor for Date();
  v48 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v42 - v7;
  __chkstk_darwin();
  v10 = &v42 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v47 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v42 - v14;
  v43 = sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  static OS_os_log.feedUpdate.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v18 = os_log_type_enabled(v16, v17);
  v49 = a1;
  if (v18)
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = a2;
    _os_log_impl(&_mh_execute_header, v16, v17, "[Foreground Sync] threshold bag value: %f", v19, 0xCu);
    a1 = v49;
  }

  v20 = *(v12 + 8);
  v45 = v12 + 8;
  v46 = v11;
  v44 = v20;
  v20(v15, v11);
  static Date.now.getter();
  v21 = OBJC_IVAR___MTForegroundSyncUtil_lastExpectedFeedsUpdateDate;
  swift_beginAccess();
  v22 = v48;
  v42 = v48[2];
  v42(v6, &a1[v21], v4);
  static Date.+ infix(_:_:)();
  v23 = v22[1];
  v23(v6, v4);
  sub_10000E5CC(&qword_10057F7E8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v24 = dispatch thunk of static Comparable.< infix(_:_:)();
  v23(v8, v4);
  v23(v10, v4);
  if (v24)
  {
    v25 = v47;
    static OS_os_log.feedUpdate.getter();
    v26 = v49;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      aBlock[0] = v48;
      *v29 = 136315138;
      LODWORD(v43) = v28;
      v30 = sub_10031F498();
      v42(v10, &v49[v21], v4);
      isa = Date._bridgeToObjectiveC()().super.isa;
      v23(v10, v4);
      v32 = [v30 stringFromDate:isa];

      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = sub_1000153E0(v33, v35, aBlock);

      *(v29 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v27, v43, "[Foreground Sync] Not updating feeds on app foreground because within feed update threshold. Last update occurred: %s", v29, 0xCu);
      sub_100004590(v48);

      v37 = v47;
    }

    else
    {

      v37 = v25;
    }

    return v44(v37, v46);
  }

  else
  {
    sub_100009F1C(0, &qword_100573DE0, off_1004D1AD8);
    v38 = [swift_getObjCClassFromMetadata() sharedInstance];
    aBlock[4] = sub_100045200;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100045040;
    aBlock[3] = &unk_1004EDDA0;
    v39 = _Block_copy(aBlock);
    [v38 updateAllPodcastsUserInitiated:0 forced:0 source:24 started:v39];
    _Block_release(v39);

    static Date.now.getter();
    v40 = v49;
    swift_beginAccess();
    (v22[5])(&v40[v21], v10, v4);
    return swift_endAccess();
  }
}

void *sub_100038FE4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for StationListOptions();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v17 = 0;
  v7 = [a1 managedObjectContext];
  (*(v5 + 16))(&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = &v17;
  (*(v5 + 32))(v9 + v8, &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_10035D794;
  *(v10 + 24) = v9;
  aBlock[4] = sub_10002D7F0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002D904;
  aBlock[3] = &unk_1004F0410;
  v11 = _Block_copy(aBlock);
  v12 = a1;

  [v7 performBlockAndWait:v11];
  _Block_release(v11);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  else
  {
    v14 = v17;
    if (v17)
    {
    }

    else
    {
      v14 = _swiftEmptyArrayStorage;
    }

    return v14;
  }

  return result;
}

uint64_t sub_100039258()
{
  v1 = type metadata accessor for StationListOptions();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

unint64_t sub_100039340()
{
  result = qword_100573CE0;
  if (!qword_100573CE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100573CE0);
  }

  return result;
}

void *sub_10003938C(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v15 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    v11 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v14 = v7;
      a1(&v13, &v14);
      if (v3)
      {

        return v11;
      }

      if (v13)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v11 = v15;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

unint64_t sub_10003955C()
{
  result = qword_100581588;
  if (!qword_100581588)
  {
    type metadata accessor for StationListOptions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100581588);
  }

  return result;
}

unint64_t sub_1000395B4()
{
  result = qword_100581570;
  if (!qword_100581570)
  {
    sub_100168310(&unk_100581578, &qword_10040F450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100581570);
  }

  return result;
}

uint64_t sub_100039618()
{
  if (+[MTApplication localLibraryUpdatesDisabled](MTApplication, "localLibraryUpdatesDisabled") || (+[PFClientUtil isRunningOnHomepod]& 1) != 0)
  {
    v0 = 1;
  }

  else
  {
    if (qword_100583CE0 != -1)
    {
      sub_10003985C();
    }

    v0 = byte_100583CE8;
  }

  return v0 & 1;
}

void sub_10003967C(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  *(*(a1 + 32) + 9) = 0;
  if (*(*(a1 + 32) + 10) == 1)
  {
    v3 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "MTListenNowManager update task finished but there is a pending task. Will run update again", buf, 2u);
    }

    [*(a1 + 32) update];
  }

  else
  {
    v4 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MTListenNowManager update task finished.", v5, 2u);
    }

    [*(a1 + 32) _endBackgroundTask];
  }

  objc_sync_exit(v2);
}

void sub_100039870(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  byte_100583CE8 = [v1 BOOLForKey:@"MTFeatureDisabled_FeedUpdate"];
}

uint64_t _s8Podcasts11FeedManagerC32abortUpdatesIfNetworkUnreachable13userInitiatedS2b_tF_0(char a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v11 = result;
    v12 = [result isReachable];

    result = v12 ^ 1;
    if (v12 & 1) == 0 && (a1)
    {
      sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
      v13 = static OS_dispatch_queue.main.getter();
      aBlock[4] = sub_1002D5714;
      aBlock[5] = 0;
      v17 = v13;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000F038;
      aBlock[3] = &unk_1004EB6B0;
      v14 = _Block_copy(aBlock);
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10000E53C(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      v16 = v6;
      sub_100168088(&unk_100575CD0, &unk_100400B50);
      sub_100009FAC(&qword_10057D390, &unk_100575CD0, &unk_100400B50, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v15 = v17;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v14);

      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v9, v16);
      return 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100039C94(uint64_t a1)
{
  v4 = *(type metadata accessor for ArtworkRequest() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001C51C;

  return sub_100039DB4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100039DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for ArtworkRequest();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100039ED0, 0, 0);
}

uint64_t sub_100039ED0(uint64_t a1)
{
  v3 = v1[5];
  v2 = v1[6];
  v4 = v1[4];
  v5 = v1[2];
  static Logger.widget.getter();
  (*(v3 + 16))(v2, v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v1[5];
  v9 = v1[6];
  v11 = v1[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = ArtworkRequest.key.getter();
    (*(v10 + 8))(v9, v11);
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%@] Prefetching widget artwork", v12, 0xCu);
    sub_100009104(v13, &qword_100575B20, &qword_100401F90);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v15 = v1[3];
  (*(v1[8] + 8))(v1[9], v1[7]);
  v16 = (v15 + OBJC_IVAR____TtC8Podcasts13WidgetManager_imageProvider);
  v18 = *(v15 + OBJC_IVAR____TtC8Podcasts13WidgetManager_imageProvider + 24);
  v17 = v16[4];
  sub_1000044A0(v16, v18);
  v19 = swift_task_alloc();
  v1[10] = v19;
  *v19 = v1;
  v19[1] = sub_100042D74;
  v20 = v1[2];

  return ImageProvider.prefetching(artwork:)(v20, v18, v17);
}

void sub_10003A0F4(uint64_t a1, void *a2)
{
  v3 = [a2 mt_compactMap:&stru_1004DB728];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t sub_10003A508()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void FeedManager.updateFeed(forFeedUrl:cloudSyncFeedUrl:podcastStoreId:triggerBy:userInitiated:forceBootstrap:useBackgroundFetch:source:telemetryIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSString a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v35 = a3;
  v32 = a8;
  v33 = a6;
  v34 = a7;
  sub_100168088(&unk_10057D668, &qword_10040AE68);
  __chkstk_darwin();
  v15 = &v31[-v14];
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v17 = (v31 - v16);
  URL._bridgeToObjectiveC()(v16);
  v19 = v18;
  sub_100010430(a2, v17, &qword_100574040, &unk_100400AD0);
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  v23 = 0;
  if ((*(v21 + 48))(v17, 1, v20) != 1)
  {
    URL._bridgeToObjectiveC()(v22);
    v23 = v24;
    (*(v21 + 8))(v17, v20);
  }

  if (a5)
  {
    a5 = String._bridgeToObjectiveC()();
  }

  sub_100010430(a10, v15, &unk_10057D668, &qword_10040AE68);
  v25 = type metadata accessor for UUID();
  v26 = *(v25 - 8);
  isa = 0;
  if ((*(v26 + 48))(v15, 1, v25) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v26 + 8))(v15, v25);
  }

  if (a11)
  {
    aBlock[4] = a11;
    aBlock[5] = a12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100185CE0;
    aBlock[3] = &unk_1004EB228;
    v28 = _Block_copy(aBlock);
  }

  else
  {
    v28 = 0;
  }

  LOBYTE(v30) = 0;
  LOBYTE(v29) = v32 & 1;
  [v36 updateFeedForFeedUrl:v19 cloudSyncFeedUrl:v23 podcastStoreId:v35 triggerBy:a5 userInitiated:v33 & 1 forceBootstrap:v34 & 1 useBackgroundFetch:v29 source:a9 isSubscribing:v30 telemetryIdentifier:isa feedDownloadedHook:0 preProcessFeedHook:0 postProcessFeedHook:0 completion:v28];
  _Block_release(v28);
}

uint64_t FeedManager.updateFeed(forFeedUrl:cloudSyncFeedUrl:podcastStoreId:triggerBy:userInitiated:forceBootstrap:useBackgroundFetch:source:isSubscribing:telemetryIdentifier:feedDownloadedHook:preProcessFeedHook:postProcessFeedHook:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, int a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v64 = a7;
  LODWORD(v65) = a8;
  v63 = a6;
  v56 = a5;
  v60 = a3;
  v61 = a4;
  v55 = a2;
  v54 = a1;
  v59 = a9;
  v58 = a10;
  v52 = a19;
  v57 = a18;
  v51 = a17;
  v48 = a16;
  v53 = a11;
  v69 = type metadata accessor for DispatchWorkItemFlags();
  v71 = *(v69 - 8);
  __chkstk_darwin();
  v67 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for DispatchQoS();
  v68 = *(v70 - 8);
  __chkstk_darwin();
  v62 = v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_10057D668, &qword_10040AE68);
  __chkstk_darwin();
  v22 = v45 - v21;
  v45[0] = v45 - v21;
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v24 = v45 - v23;
  v45[1] = v45 - v23;
  v25 = type metadata accessor for URL();
  v26 = *(v25 - 8);
  __chkstk_darwin();
  v28 = v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45[2] = v28;
  updated = type metadata accessor for FeedUpdateRequest();
  v49 = *(updated - 8);
  v29 = *(v49 + 64);
  __chkstk_darwin();
  v47 = v45 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin();
  v46 = v45 - v31;
  (*(v26 + 16))(v28, v54, v25, v30);
  sub_100010430(v55, v24, &qword_100574040, &unk_100400AD0);
  sub_100010430(v53, v22, &unk_10057D668, &qword_10040AE68);

  sub_100013CB4(a12, a13);
  sub_100013CB4(a14, a15);
  sub_100013CB4(v48, v51);
  sub_100013CB4(v57, v52);
  v32 = v46;
  FeedUpdateRequest.init(feedUrl:cloudSyncFeedUrl:podcastStoreId:triggerBy:userInitiated:forceBootstrap:useBackgroundFetch:source:isSubscribing:telemetryIdentifier:feedDownloadedHook:preProcessFeedHook:postProcessFeedHook:completion:)();
  v33 = v66;
  v65 = *&v66[OBJC_IVAR___MTFeedManager_queue];
  v34 = v49;
  v35 = v47;
  v36 = updated;
  (*(v49 + 16))(v47, v32, updated);
  v37 = (*(v34 + 80) + 24) & ~*(v34 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v33;
  (*(v34 + 32))(v38 + v37, v35, v36);
  aBlock[4] = sub_10004286C;
  aBlock[5] = v38;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004EB278;
  v39 = _Block_copy(aBlock);
  v40 = v33;
  v41 = v62;
  static DispatchQoS.unspecified.getter();
  v72 = _swiftEmptyArrayStorage;
  sub_10000E53C(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0, &unk_100400B50);
  sub_100009FAC(&qword_10057D390, &unk_100575CD0, &unk_100400B50, &protocol conformance descriptor for [A]);
  v42 = v67;
  v43 = v69;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v39);
  (*(v71 + 8))(v42, v43);
  (*(v68 + 8))(v41, v70);
  (*(v34 + 8))(v32, v36);
}

uint64_t sub_10003B43C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003B668(uint64_t result, char a2)
{
  if (a2 == 1)
  {
    return swift_errorRetain();
  }

  if (!a2)
  {
  }

  return v2;
}

uint64_t sub_10003B684(uint64_t result, char a2)
{
  if (a2 == 1)
  {
  }

  if (!a2)
  {
  }

  return v2;
}

void sub_10003B728(void *a1)
{
  v2 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v3 = static OS_os_log.launch.getter();
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100400790;
  v5 = [a1 activityType];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_100022C18();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "Continue user activity type: %{public}s", 39, 2, v4);

  v9 = objc_opt_self();
  v10 = [v9 sharedApplication];
  v11 = [v10 delegate];

  if (v11)
  {
    if ([v11 respondsToSelector:"application:continueUserActivity:restorationHandler:"])
    {
      v12 = [v9 sharedApplication];
      v14[4] = UInt64.int64Representation.getter;
      v14[5] = 0;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 1107296256;
      v14[2] = sub_100270A4C;
      v14[3] = &unk_1004E7ED8;
      v13 = _Block_copy(v14);
      [v11 application:v12 continueUserActivity:a1 restorationHandler:v13];
      swift_unknownObjectRelease();

      _Block_release(v13);
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10003BA44(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UserActivityController();

  BaseObjectGraph.injectIfAvailable<A>(_:)();

  if (v12[1])
  {
    if (sub_10003BC20(a1))
    {
      v6 = a1;
      v7 = sub_10003BEBC(v6);
      if (v7 > 1)
      {
        if (v7 == 2)
        {
          sub_10026B584(v6);
        }
      }

      else if (v7)
      {
        sub_100264D64(v6);
      }

      else
      {
        sub_1002647E0(v6);
      }
    }
  }

  else
  {
    static Logger.userActivity.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Unable to find PlaybackContinuityController in graph", v10, 2u);
    }

    (*(v3 + 8))(v5, v2);
  }

  return 1;
}

BOOL sub_10003BC20(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1;
  v7 = sub_10003BEBC(v6);
  static Logger.userActivity.getter();
  v8 = v6;

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v22 = v2;
    v12 = v11;
    v23 = swift_slowAlloc();
    *v12 = 136315650;
    v13 = _typeName(_:qualified:)();
    v15 = sub_1000153E0(v13, v14, &v23);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v16 = [v8 activityType];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = sub_1000153E0(v17, v19, &v23);

    *(v12 + 14) = v20;
    *(v12 + 22) = 1024;
    *(v12 + 24) = v7 != 3;
    _os_log_impl(&_mh_execute_header, v9, v10, "Asking if %s supports '%s'. Returning %{BOOL}d", v12, 0x1Cu);
    swift_arrayDestroy();

    (*(v3 + 8))(v5, v22);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  return v7 != 3;
}

uint64_t sub_10003BEBC(void *a1)
{
  v2 = [a1 activityType];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v21[0] = v3;
  v21[1] = v5;
  v20[2] = v21;
  LOBYTE(v2) = sub_10003C0AC(sub_10003C218, v20, &off_1004DEFA0);

  if (v2)
  {

    return 0;
  }

  v7 = [a1 activityType];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
  {

    return 1;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {

    return 1;
  }

  v14 = [a1 activityType];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {

    return 2;
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10003C0AC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10003C158@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = *((swift_isaMask & *v1) + 0x180);
  swift_beginAccess();
  v8 = type metadata accessor for OperationResult(0, *((v4 & v3) + 0x170), v6, v7);
  return (*(*(v8 - 8) + 16))(a1, &v1[v5], v8);
}

uint64_t sub_10003C238(uint64_t *a1)
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

uint64_t sub_10003C290(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void sub_10003C2EC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a2;
  v6 = *(type metadata accessor for DownloadJob(0) - 8);
  __chkstk_darwin();
  v24 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v21 - v8;
  v10 = *a1;
  v11 = *(*a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v26 = v3;
    v21 = a3;
    v27 = _swiftEmptyArrayStorage;
    v13 = sub_1001A7694(0, v11, 0);
    v14 = 0;
    v12 = v27;
    v23 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v22 = v10 + v23;
    while (v14 < *(v10 + 16))
    {
      v15 = v6;
      v16 = *(v6 + 72);
      v17 = v24;
      sub_1001BE270(v22 + v16 * v14, v24);
      v18 = v26;
      sub_10021AC84(v17, v25, v9);
      v26 = v18;
      v13 = v17;
      if (v18)
      {
        goto LABEL_11;
      }

      sub_1001BE660(v17);
      v27 = v12;
      v20 = v12[2];
      v19 = v12[3];
      if (v20 >= v19 >> 1)
      {
        sub_1001A7694((v19 > 1), v20 + 1, 1);
        v12 = v27;
      }

      ++v14;
      v12[2] = v20 + 1;
      v13 = sub_10021B4E0(v9, v12 + v23 + v20 * v16);
      v6 = v15;
      if (v11 == v14)
      {
        a3 = v21;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    sub_1001BE660(v13);

    __break(1u);
  }

  else
  {
LABEL_9:
    *a3 = v12;
    *(a3 + 8) = 0;
  }
}

char *sub_10003C524(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100168088(&qword_10057CE38, "؏\b");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_10003C66C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = swift_isaMask;
  v7 = *((swift_isaMask & *a1) + 0x198);
  v8 = type metadata accessor for OperationResult(0, *((swift_isaMask & *a1) + 0x170), a3, a4);
  (*(*(v8 - 8) + 8))(&a1[v7], v8);
  (*(*(*((v6 & v5) + 0x180) - 8) + 8))(&a1[*((swift_isaMask & *a1) + 0x1A0)]);

  v9 = *&a1[*((swift_isaMask & *a1) + 0x1B0)];
}

void sub_10003C7C0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = *a2;
  v9 = static os_log_type_t.default.getter();
  v10 = sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v11 = static OS_os_log.downloads.getter();
  v12 = os_log_type_enabled(v11, v9);
  v59 = v7;
  if (v8 < 1)
  {
    if (!v12)
    {
      goto LABEL_19;
    }

    v57 = v10;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v63 = v23;
    *v22 = 136446210;
    v25 = *(a5 + OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier);
    v24 = *(a5 + OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier + 8);
    v26 = *(a5 + OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier + 16);
    aBlock = 0x496E6F6973736553;
    v65 = 0xEB00000000203A44;
    if (v26)
    {
      v27 = 1936484398;
    }

    else
    {
      v27 = 0x7261646E6174732ELL;
    }

    if (v26)
    {
      v28 = 0xE400000000000000;
    }

    else
    {
      v28 = 0xE900000000000064;
    }

    v61._countAndFlagsBits = v25;
    v61._object = v24;

    v29._countAndFlagsBits = v27;
    v29._object = v28;
    String.append(_:)(v29);

    String.append(_:)(v61);

    v30 = sub_1000153E0(aBlock, v65, &v63);

    *(v22 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v11, v9, "No jobs have been deleted from storage for session %{public}s", v22, 0xCu);
    sub_100004590(v23);
  }

  else
  {
    if (!v12)
    {
      goto LABEL_19;
    }

    v57 = v10;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v63 = v14;
    *v13 = 134349314;
    *(v13 + 4) = v8;
    *(v13 + 12) = 2082;
    v16 = *(a5 + OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier);
    v15 = *(a5 + OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier + 8);
    v17 = *(a5 + OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier + 16);
    aBlock = 0x496E6F6973736553;
    v65 = 0xEB00000000203A44;
    if (v17)
    {
      v18 = 1936484398;
    }

    else
    {
      v18 = 0x7261646E6174732ELL;
    }

    if (v17)
    {
      v19 = 0xE400000000000000;
    }

    else
    {
      v19 = 0xE900000000000064;
    }

    v60._countAndFlagsBits = v16;
    v60._object = v15;

    v20._countAndFlagsBits = v18;
    v20._object = v19;
    String.append(_:)(v20);

    String.append(_:)(v60);

    v21 = sub_1000153E0(aBlock, v65, &v63);

    *(v13 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v11, v9, "Deleted %{public}ld jobs from storage for session %{public}s", v13, 0x16u);
    sub_100004590(v14);
  }

LABEL_19:

  v31 = static os_log_type_t.default.getter();
  v32 = static OS_os_log.downloads.getter();
  if (os_log_type_enabled(v32, v31))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v63 = v34;
    *v33 = 136446210;
    v36 = *(a5 + OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier);
    v35 = *(a5 + OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier + 8);
    v37 = *(a5 + OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier + 16);
    aBlock = 0x496E6F6973736553;
    v65 = 0xEB00000000203A44;
    if (v37)
    {
      v38 = 1936484398;
    }

    else
    {
      v38 = 0x7261646E6174732ELL;
    }

    if (v37)
    {
      v39 = 0xE400000000000000;
    }

    else
    {
      v39 = 0xE900000000000064;
    }

    v62._countAndFlagsBits = v36;
    v62._object = v35;

    v40._countAndFlagsBits = v38;
    v40._object = v39;
    String.append(_:)(v40);

    String.append(_:)(v62);

    v41 = sub_1000153E0(aBlock, v65, &v63);

    *(v33 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v32, v31, "Fetch running jobs from storage for session%{public}s", v33, 0xCu);
    sub_100004590(v34);
  }

  v42 = *(a5 + OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_tasks);
  v43 = *(v42 + 16);
  if (v43)
  {
    sub_1001A779C(0, v43, 0);
    v44 = v42 + 32;
    do
    {
      sub_100004428(v44, &aBlock);
      v45 = v67;
      v46 = v68;
      sub_1000044A0(&aBlock, v67);
      v47 = (*(v46 + 3))(v45, v46);
      sub_100004590(&aBlock);
      v49 = _swiftEmptyArrayStorage[2];
      v48 = _swiftEmptyArrayStorage[3];
      if (v49 >= v48 >> 1)
      {
        sub_1001A779C((v48 > 1), v49 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v49 + 1;
      _swiftEmptyArrayStorage[v49 + 4] = v47;
      v44 += 40;
      --v43;
    }

    while (v43);
  }

  v51 = *(a5 + OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier);
  v50 = *(a5 + OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier + 8);
  v52 = *(a5 + OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier + 16);
  v53 = [*(v59 + 16) newBackgroundContext];
  v54 = swift_allocObject();
  *(v54 + 16) = v51;
  *(v54 + 24) = v50;
  *(v54 + 32) = v52;
  *(v54 + 40) = _swiftEmptyArrayStorage;
  *(v54 + 48) = v53;
  *(v54 + 56) = a3;
  *(v54 + 64) = a4;
  v68 = sub_10021B5CC;
  v69 = v54;
  aBlock = _NSConcreteStackBlock;
  v65 = 1107296256;
  v66 = sub_10000F038;
  v67 = &unk_1004E5CC8;
  v55 = _Block_copy(&aBlock);

  v56 = v53;

  [v56 performBlock:v55];
  _Block_release(v55);
}

uint64_t sub_10003CE14(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001C51C;

  return sub_10003CEC8();
}

uint64_t sub_10003CEC8()
{
  v0[3] = type metadata accessor for MainActor();
  v0[4] = static MainActor.shared.getter();
  v1 = type metadata accessor for DownloadRemovalObserver();
  v0[5] = v1;
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_100042038;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_10003CF98(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001C51C;

  return sub_10003D04C();
}

uint64_t sub_10003D04C()
{
  v1 = type metadata accessor for Logger();
  v0[4] = v1;
  v0[5] = *(v1 - 8);
  v0[6] = swift_task_alloc();
  v0[7] = type metadata accessor for MainActor();
  v0[8] = static MainActor.shared.getter();
  v2 = type metadata accessor for CacheDeleteObserver();
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_10003D174;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v2, v2);
}

uint64_t sub_10003D174()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100303718, v4, v3);
  }

  else
  {
    v2[11] = v2[2];
    v7 = (&async function pointer to dispatch thunk of CacheDeleteObserver.subscribeToObservation() + async function pointer to dispatch thunk of CacheDeleteObserver.subscribeToObservation());
    v5 = swift_task_alloc();
    v2[12] = v5;
    *v5 = v2;
    v5[1] = sub_100042258;

    return v7();
  }
}

void sub_10003D318(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  if ([*(a1 + 32) subscriptionState] == 1)
  {
    objc_sync_exit(v2);

    v2 = +[UIApplication sharedApplication];
    [v2 registerForRemoteNotifications];
  }

  else
  {
    v3 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to complete APNS registration. Reason: interrupted.", v4, 2u);
    }

    objc_sync_exit(v2);
  }
}

void sub_10003D448(id a1)
{
  v1 = objc_alloc_init(MTPodcastDerivedPropertyObserver);
  v2 = qword_100583CB8;
  qword_100583CB8 = v1;
}

uint64_t sub_10003DBA0()
{
  if (+[MTApplication localLibraryUpdatesDisabled])
  {
    v0 = 1;
  }

  else
  {
    if (qword_100583CA8 != -1)
    {
      sub_10003DBF0();
    }

    v0 = byte_100583CB0;
  }

  return v0 & 1;
}

void sub_10003DC04(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  byte_100583CB0 = [v1 BOOLForKey:@"MTFeatureDisabled_CloudSync"];
}

void sub_10003DC98(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [*(a1 + 32) URLForKey:kMTSyncPutAll];
  v9 = *(a1 + 40);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10003DDB0;
  v14[3] = &unk_1004DC0C8;
  v15 = v7;
  v13 = *(a1 + 40);
  v10 = v13.i64[0];
  v16 = vextq_s8(v13, v13, 8uLL);
  v17 = v6;
  v11 = v6;
  v12 = v7;
  [v8 asyncValueOnQueue:v9 withCompletion:v14];
}

void sub_10003DDB0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v7 | *(a1 + 32))
  {
    v8 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138412546;
      v20 = v9;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "MTSyncController fetch of GetAll/PutAll bag value failed. Errors=%@ %@", buf, 0x16u);
    }

    v10 = dispatch_time(0, 60000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000EF5C8;
    block[3] = &unk_1004D8358;
    block[4] = *(a1 + 40);
    dispatch_after(v10, &_dispatch_main_q, block);
  }

  else
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10003DF80;
    v14[3] = &unk_1004D94C8;
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v13 = *(a1 + 40);
    v15 = v12;
    v16 = v13;
    v17 = v6;
    dispatch_async(v11, v14);
  }
}

void sub_10003DF80(uint64_t a1, uint64_t a2)
{
  v3 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting MTSyncController and the bag has loaded with GetAll=%@. ", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003E0C8;
  block[3] = &unk_1004D94C8;
  v6 = *(a1 + 32);
  v5 = v6.i64[0];
  v8 = vextq_s8(v6, v6, 8uLL);
  v9 = *(a1 + 48);
  if (qword_100583CA0 != -1)
  {
    dispatch_once(&qword_100583CA0, block);
  }
}

void sub_10003E0C8(uint64_t a1, uint64_t a2)
{
  v3 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up MTSyncController. Will kick off initial syncs.", &v14, 2u);
  }

  [*(a1 + 32) _setupUPP];
  v4 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v14 = 138412546;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "MTSyncController GET URL: %@, PUT URL: %@", &v14, 0x16u);
  }

  v7 = [*(a1 + 32) cloudSyncController];

  if (v7)
  {
    v8 = [*(a1 + 32) cloudSyncController];
    [v8 setDelegate:0];
  }

  v9 = [MZKeyValueStoreController alloc];
  v10 = [(MZKeyValueStoreController *)v9 initWithDomain:kMTPodcastsDomain baseURLForGETAll:*(a1 + 40) baseURLForPUTAll:*(a1 + 48)];
  [*(a1 + 32) setCloudSyncController:v10];

  v11 = [*(a1 + 32) cloudSyncController];
  [v11 setDelegate:*(a1 + 32)];

  v12 = [*(a1 + 32) cloudSyncController];
  [v12 reset];

  [*(a1 + 32) setIsRunning:1];
  [*(a1 + 32) syncEverything];
  v13 = +[NSNotificationCenter defaultCenter];
  [v13 postNotificationName:@"MTSyncControllerDidStartRunningNotification" object:0];
}

void sub_10003E534(id a1)
{
  v1 = objc_alloc_init(MZPreferences);
  v2 = qword_100583BB8;
  qword_100583BB8 = v1;
}

void sub_10003E5F8(uint64_t a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"DerivedPropertyObserverPersistentHistoryToken"];

  if (v3)
  {
    v9 = 0;
    v4 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v9];
    v5 = v9;
    if (v5)
    {
      v6 = _MTLogCategoryDatabase();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v11 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Derived Property Observer encountered error trying to fetch previous history token %@", buf, 0xCu);
      }
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = v4;
      v6 = *(v7 + 96);
      *(v7 + 96) = v8;
    }
  }

  else
  {
    v5 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Derived Property Observer has never processed persistent history data.", buf, 2u);
    }
  }
}

uint64_t sub_10003E784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a3;
  v69 = a2;
  v68 = a1;
  v3 = sub_100168088(&qword_10057D790, &qword_10040AF60);
  v4 = *(v3 - 8);
  v80 = v3;
  v81 = v4;
  __chkstk_darwin();
  v78 = &v47 - v5;
  v6 = sub_100168088(&qword_10057D798, &qword_10040AF68);
  v7 = *(v6 - 8);
  v82 = v6;
  v83 = v7;
  __chkstk_darwin();
  v79 = &v47 - v8;
  v75 = sub_100168088(&qword_10057D7A0, &qword_10040AF70);
  v77 = *(v75 - 8);
  __chkstk_darwin();
  v71 = &v47 - v9;
  v74 = sub_100168088(&qword_10057D7A8, &qword_10040AF78);
  v76 = *(v74 - 8);
  __chkstk_darwin();
  v70 = &v47 - v10;
  v64 = sub_100168088(&unk_10057D690, &qword_10040AE78);
  v65 = *(v64 - 8);
  __chkstk_darwin();
  v62 = &v47 - v11;
  v66 = sub_100168088(&qword_10057D7B0, &qword_10040AF80);
  v72 = *(v66 - 8);
  __chkstk_darwin();
  v61 = &v47 - v12;
  v58 = sub_100168088(&qword_10057D688, &qword_10040AE70);
  v59 = *(v58 - 8);
  __chkstk_darwin();
  v57 = &v47 - v13;
  v63 = sub_100168088(&unk_10057D7B8, &unk_10040AF88);
  v67 = *(v63 - 8);
  __chkstk_darwin();
  v56 = &v47 - v14;
  sub_100168088(&qword_100575C10, &qword_100402E50);
  __chkstk_darwin();
  v84 = &v47 - v15;
  v55 = sub_100168088(&qword_10057D630, &qword_10040AE50);
  v16 = *(v55 - 8);
  __chkstk_darwin();
  v18 = &v47 - v17;
  v53 = sub_100168088(&qword_10057D7C8, &unk_10040AF98);
  v54 = *(v53 - 8);
  __chkstk_darwin();
  v48 = &v47 - v19;
  v52 = OBJC_IVAR___MTFeedManager_systemFuture;
  static Subscribers.Demand.unlimited.getter();
  sub_100168088(&unk_10057D640, &unk_10040AE58);
  sub_100168088(&unk_1005783E0, &unk_100405860);
  sub_100009FAC(&unk_10057D650, &unk_10057D640, &unk_10040AE58, &protocol conformance descriptor for UninitializedCurrentValueSubject<A, B>);
  v60 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_100009FAC(&qword_10057DE80, &unk_1005783E0, &unk_100405860, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.flatMap<A>(maxPublishers:_:)();
  sub_100009FAC(&qword_10057D660, &qword_10057D630, &qword_10040AE50, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v20 = v55;
  v21 = Publisher.eraseToAnyPublisher()();
  (*(v16 + 8))(v18, v20);
  v85 = v21;
  sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  v22 = static OS_dispatch_queue.main.getter();
  v86 = v22;
  v51 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v23 = *(v51 - 8);
  v50 = *(v23 + 56);
  v52 = v23 + 56;
  v24 = v84;
  v50(v84, 1, 1, v51);
  v55 = sub_1000179F8();
  v25 = v48;
  Publisher.receive<A>(on:options:)();
  sub_100009104(v24, &qword_100575C10, &qword_100402E50);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100009FAC(&qword_10057D7D0, &qword_10057D7C8, &unk_10040AF98, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v26 = v53;
  Publisher<>.sink(receiveValue:)();

  (*(v54 + 8))(v25, v26);
  swift_beginAccess();
  v54 = sub_100168088(&unk_1005783F0, &unk_1004031C0);
  v53 = sub_100009FAC(&unk_10057A070, &unk_1005783F0, &unk_1004031C0, &protocol conformance descriptor for [A]);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  swift_getObjectType();
  v27 = v57;
  dispatch thunk of URLBasedFeedUpdater.updatingFeedURLs.getter();
  swift_getKeyPath();
  sub_100009FAC(&qword_10057D7D8, &qword_10057D688, &qword_10040AE70, &protocol conformance descriptor for ReadOnlyCurrentValueSubject<A, B>);
  v28 = v56;
  v29 = v58;
  Publisher.map<A>(_:)();

  (*(v59 + 8))(v27, v29);
  v30 = v62;
  dispatch thunk of StoreFeedUpdater.updatingStoreIDs.getter();
  swift_getKeyPath();
  sub_100009FAC(&qword_10057D7E0, &unk_10057D690, &qword_10040AE78, &protocol conformance descriptor for ReadOnlyCurrentValueSubject<A, B>);
  v31 = v61;
  v32 = v64;
  Publisher.map<A>(_:)();

  (*(v65 + 8))(v30, v32);
  sub_100009FAC(&qword_10057D7E8, &unk_10057D7B8, &unk_10040AF88, &protocol conformance descriptor for Publishers.MapKeyPath<A, B>);
  sub_100009FAC(&qword_10057D7F0, &qword_10057D7B0, &qword_10040AF80, &protocol conformance descriptor for Publishers.MapKeyPath<A, B>);
  v33 = v71;
  v34 = v63;
  v35 = v66;
  Publisher.combineLatest<A>(_:)();
  sub_100009FAC(&qword_10057D7F8, &qword_10057D7A0, &qword_10040AF70, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  v36 = v70;
  v37 = v75;
  Publisher.map<A>(_:)();
  (*(v77 + 8))(v33, v37);
  sub_100009FAC(&qword_10057D800, &qword_10057D7A8, &qword_10040AF78, &protocol conformance descriptor for Publishers.Map<A, B>);
  v38 = v74;
  v39 = Publisher.eraseToAnyPublisher()();
  (*(v76 + 8))(v36, v38);
  (*(v72 + 8))(v31, v35);
  (*(v67 + 8))(v28, v34);
  v85 = v39;

  v40 = static OS_dispatch_queue.main.getter();
  v86 = v40;
  v41 = v84;
  v50(v84, 1, 1, v51);
  sub_100168088(&qword_10057D808, &qword_10040B018);
  sub_100009FAC(&qword_10057D810, &qword_10057D808, &qword_10040B018, v60);
  v42 = v78;
  Publisher.receive<A>(on:options:)();
  sub_100009104(v41, &qword_100575C10, &qword_100402E50);

  sub_100009FAC(&qword_10057D818, &qword_10057D790, &qword_10040AF60, v49);
  v44 = v79;
  v43 = v80;
  Publisher.drop(while:)();
  (*(v81 + 8))(v42, v43);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009FAC(&qword_10057D820, &qword_10057D798, &qword_10040AF68, &protocol conformance descriptor for Publishers.DropWhile<A>);
  v45 = v82;
  Publisher<>.sink(receiveValue:)();

  (*(v83 + 8))(v44, v45);
  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

uint64_t sub_10003F658()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10003F6BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _processLatestPersistentHistoryTransactions];
}

uint64_t sub_10003F6FC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_10003FE08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  _Block_object_dispose((v31 - 256), 8);
  _Block_object_dispose((v31 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_100040158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10004018C(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

uint64_t sub_100040214(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void *sub_10004025C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  if (__OFADD__(*result, v2))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + v2;
  }

  return result;
}

__n128 sub_100040274(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100040288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  sub_100168088(&qword_100575C10, &qword_100402E50);
  __chkstk_darwin();
  v54 = &v36 - v3;
  v44 = sub_100168088(&qword_10057D848, &qword_10040B028);
  v47 = *(v44 - 8);
  __chkstk_darwin();
  v40 = &v36 - v4;
  v46 = sub_100168088(&qword_10057D850, &qword_10040B030);
  v48 = *(v46 - 8);
  __chkstk_darwin();
  v41 = &v36 - v5;
  v50 = sub_100168088(&qword_10057D858, &qword_10040B038);
  v53 = *(v50 - 8);
  __chkstk_darwin();
  v42 = &v36 - v6;
  v7 = sub_100168088(&qword_10057D860, &qword_10040B040);
  v8 = *(v7 - 8);
  v51 = v7;
  v52 = v8;
  __chkstk_darwin();
  v45 = &v36 - v9;
  v10 = sub_100168088(&unk_10057D690, &qword_10040AE78);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v36 - v12;
  v38 = sub_100168088(&qword_10057D868, &qword_10040B048);
  v49 = *(v38 - 8);
  __chkstk_darwin();
  v55 = &v36 - v14;
  v15 = sub_100168088(&qword_10057D688, &qword_10040AE70);
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v36 - v17;
  v37 = sub_100168088(&qword_10057D870, &qword_10040B050);
  v43 = *(v37 - 8);
  __chkstk_darwin();
  v20 = &v36 - v19;
  swift_getObjectType();
  dispatch thunk of URLBasedFeedUpdater.updatingFeedURLs.getter();
  swift_getKeyPath();
  sub_100009FAC(&qword_10057D7D8, &qword_10057D688, &qword_10040AE70, &protocol conformance descriptor for ReadOnlyCurrentValueSubject<A, B>);
  Publisher.map<A>(_:)();

  (*(v16 + 8))(v18, v15);
  dispatch thunk of StoreFeedUpdater.updatingStoreIDs.getter();
  swift_getKeyPath();
  sub_100009FAC(&qword_10057D7E0, &unk_10057D690, &qword_10040AE78, &protocol conformance descriptor for ReadOnlyCurrentValueSubject<A, B>);
  Publisher.map<A>(_:)();

  (*(v11 + 8))(v13, v10);
  sub_100009FAC(&qword_10057D878, &qword_10057D870, &qword_10040B050, &protocol conformance descriptor for Publishers.MapKeyPath<A, B>);
  sub_100009FAC(&qword_10057D880, &qword_10057D868, &qword_10040B048, &protocol conformance descriptor for Publishers.MapKeyPath<A, B>);
  v21 = v40;
  v23 = v37;
  v22 = v38;
  Publisher.combineLatest<A>(_:)();
  sub_100009FAC(&qword_10057D888, &qword_10057D848, &qword_10040B028, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  v24 = v41;
  v25 = v44;
  Publisher.map<A>(_:)();
  (*(v47 + 8))(v21, v25);
  sub_100009FAC(&qword_10057D890, &qword_10057D850, &qword_10040B030, &protocol conformance descriptor for Publishers.Map<A, B>);
  v26 = v42;
  v27 = v46;
  Publisher<>.removeDuplicates()();
  (*(v48 + 8))(v24, v27);
  sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  v28 = static OS_dispatch_queue.main.getter();
  v56 = v28;
  v29 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v30 = v54;
  (*(*(v29 - 8) + 56))(v54, 1, 1, v29);
  sub_100009FAC(&qword_10057D898, &qword_10057D858, &qword_10040B038, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  sub_1000179F8();
  v31 = v45;
  v32 = v50;
  Publisher.receive<A>(on:options:)();
  sub_100009104(v30, &qword_100575C10, &qword_100402E50);

  (*(v53 + 8))(v26, v32);
  sub_100009FAC(&qword_10057D8A0, &qword_10057D860, &qword_10040B040, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v33 = v51;
  v34 = Publisher.eraseToAnyPublisher()();
  (*(v52 + 8))(v31, v33);
  (*(v49 + 8))(v55, v22);
  (*(v43 + 8))(v20, v23);
  return v34;
}

uint64_t sub_100040C48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100040288(*a1, a1[1], a1[2]);
  *a2 = result;
  return result;
}

uint64_t sub_100040C7C@<X0>(uint64_t *a1@<X3>, uint64_t *a2@<X4>, unint64_t *a3@<X5>, _BYTE *a4@<X8>)
{
  sub_100168088(a1, a2);
  sub_100009FAC(a3, a1, a2, &protocol conformance descriptor for Set<A>);
  result = Collection.isNotEmpty.getter();
  *a4 = result & 1;
  return result;
}

uint64_t sub_100040E48()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100040E88()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100040EE0(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100040F2C()
{
  v1 = type metadata accessor for PerformanceTestCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100040FC8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100041008(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 32));
  a2(*(v3 + 40));

  return _swift_deallocObject(v3, a3, 7);
}

uint64_t sub_10004106C()
{
  v1 = type metadata accessor for ShowSettingsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_100004590((v0 + v3));

  v5 = *(v1 + 32);
  sub_100168088(&qword_100577830, &qword_100406F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DismissAction();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000411F4()
{
  v1 = type metadata accessor for PlaybackIntent();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  sub_100004590((v0 + v5));

  if (*(v0 + v6 + 24))
  {
    sub_100004590((v0 + v6));
  }

  return _swift_deallocObject(v0, v6 + 32, v3 | 7);
}

uint64_t sub_10004131C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10004136C()
{
  v1 = type metadata accessor for DownloadedAssetEffect();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for DownloadEnvironment();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_1000414CC(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_100041598()
{
  v1 = sub_100168088(&qword_100580288, &unk_10040DE90);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004162C()
{

  return _swift_deallocObject(v0, 56, 7);
}

void sub_100041758(uint64_t a1)
{
  v1 = a1;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v116 objects:v128 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v117;
    v89 = kMTPodcastEntityName;
    v83 = kPodcastUuid;
    v6 = (v1 + 48);
    v92 = kMTEpisodeEntityName;
    v82 = kEpisodePodcastUuid;
    v7 = (v1 + 56);
    v91 = kEpisodePodcast;
    *&v3 = 134349056;
    v74 = v3;
    v95 = v1;
    v75 = *v117;
    do
    {
      v8 = 0;
      v76 = v4;
      do
      {
        if (*v117 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v81 = v8;
        v9 = *(*(&v116 + 1) + 8 * v8);
        context = objc_autoreleasePoolPush();
        v10 = [v9 author];
        v11 = [v10 isEqualToString:@"MTPodcastDerivedPropertyObserver"];

        if ((v11 & 1) == 0)
        {
          v86 = +[NSMutableSet set];
          v85 = +[NSMutableSet set];
          v84 = +[NSMutableSet set];
          v112 = 0u;
          v113 = 0u;
          v114 = 0u;
          v115 = 0u;
          v79 = v9;
          v93 = [v9 changes];
          v12 = [v93 countByEnumeratingWithState:&v112 objects:v127 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v113;
            do
            {
              for (i = 0; i != v13; i = i + 1)
              {
                if (*v113 != v14)
                {
                  objc_enumerationMutation(v93);
                }

                v16 = *(*(&v112 + 1) + 8 * i);
                v17 = *(*(v1 + 72) + 8);
                if (*(v17 + 24))
                {
                  v18 = 1;
                }

                else
                {
                  v18 = [*(v1 + 40) _shouldUpdatePodcastsStatsForChange:*(*(&v112 + 1) + 8 * i)];
                  v17 = *(*(v1 + 72) + 8);
                }

                *(v17 + 24) = v18;
                if ([*(v1 + 40) _changeContainsRelevantEpisodeChanges:{v16, v74}])
                {
                  v19 = [v16 changedObjectID];
                  [v86 addObject:v19];
                }

                if ([*(v1 + 40) _changeContainsRelevantPodcastChanges:v16])
                {
                  v20 = [v16 changedObjectID];
                  [v85 addObject:v20];
                }

                if ([*(v1 + 40) _changeContainsRelevantChannelChanges:v16])
                {
                  v21 = [v16 changedObjectID];
                  [v84 addObject:v21];
                }

                v22 = [v16 changedObjectID];
                v23 = [v22 entity];
                v24 = [v23 name];

                v25 = [v16 changeType];
                if ([v24 isEqualToString:v89])
                {
                  v26 = v25 == 2;
                }

                else
                {
                  v26 = 0;
                }

                if (v26)
                {
                  v27 = v13;
                  v28 = v14;
                  v29 = [v16 tombstone];
                  v30 = [v29 objectForKey:v83];

                  if (v30)
                  {
                    [*v6 addObject:v30];
                  }

                  v14 = v28;
                  v13 = v27;
                  v1 = v95;
                }

                if ([v24 isEqualToString:v92] && v25 == 2)
                {
                  v31 = [v16 tombstone];
                  v32 = [v31 objectForKey:v82];

                  if (v32)
                  {
                    [*v7 addObject:v32];
                  }
                }
              }

              v13 = [v93 countByEnumeratingWithState:&v112 objects:v127 count:16];
            }

            while (v13);
          }

          v33 = [[NSFetchRequest alloc] initWithEntityName:v92];
          v34 = [NSPredicate predicateForObjectIdsInSet:v86];
          [v33 setPredicate:v34];

          [v33 setReturnsDistinctResults:1];
          [v33 setIncludesPropertyValues:1];
          v126 = v91;
          v35 = [NSArray arrayWithObjects:&v126 count:1];
          [v33 setPropertiesToFetch:v35];

          [v33 setResultType:2];
          v78 = v33;
          v36 = [*(v1 + 64) executeFetchRequest:v33];
          v108 = 0u;
          v109 = 0u;
          v110 = 0u;
          v111 = 0u;
          v88 = v36;
          v37 = [v36 countByEnumeratingWithState:&v108 objects:v125 count:16];
          if (v37)
          {
            v38 = v37;
            v39 = *v109;
            do
            {
              for (j = 0; j != v38; j = j + 1)
              {
                if (*v109 != v39)
                {
                  objc_enumerationMutation(v88);
                }

                v41 = [*(*(&v108 + 1) + 8 * j) objectForKeyedSubscript:{v91, v74}];
                if (v41)
                {
                  v42 = [*(v1 + 64) objectWithID:v41];
                  v43 = [v42 uuid];

                  if (v43)
                  {
                    if ([v42 isHiddenOrImplicitlyFollowed])
                    {
                      v44 = v6;
                    }

                    else
                    {
                      v44 = v7;
                    }

                    v45 = *v44;
                    v46 = [v42 uuid];
                    [v45 addObject:v46];
                  }
                }
              }

              v38 = [v88 countByEnumeratingWithState:&v108 objects:v125 count:16];
            }

            while (v38);
          }

          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v47 = [v85 allObjects];
          v48 = [v47 countByEnumeratingWithState:&v104 objects:v124 count:16];
          if (v48)
          {
            v49 = v48;
            v50 = *v105;
            do
            {
              for (k = 0; k != v49; k = k + 1)
              {
                if (*v105 != v50)
                {
                  objc_enumerationMutation(v47);
                }

                v52 = [*(v1 + 64) objectWithID:*(*(&v104 + 1) + 8 * k)];
                v53 = [v52 uuid];

                if (v53)
                {
                  if ([v52 hidden])
                  {
                    v54 = v6;
                  }

                  else
                  {
                    v54 = v7;
                  }

                  v55 = *v54;
                  v56 = [v52 uuid];
                  [v55 addObject:v56];
                }
              }

              v49 = [v47 countByEnumeratingWithState:&v104 objects:v124 count:16];
            }

            while (v49);
          }

          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v87 = [v84 allObjects];
          v94 = [v87 countByEnumeratingWithState:&v100 objects:v123 count:16];
          if (v94)
          {
            v90 = *v101;
            do
            {
              for (m = 0; m != v94; m = m + 1)
              {
                if (*v101 != v90)
                {
                  objc_enumerationMutation(v87);
                }

                v58 = [*(v1 + 64) objectWithID:*(*(&v100 + 1) + 8 * m)];
                v96 = 0u;
                v97 = 0u;
                v98 = 0u;
                v99 = 0u;
                v59 = [v58 podcasts];
                v60 = [v59 countByEnumeratingWithState:&v96 objects:v122 count:16];
                if (v60)
                {
                  v61 = v60;
                  v62 = *v97;
                  do
                  {
                    for (n = 0; n != v61; n = n + 1)
                    {
                      if (*v97 != v62)
                      {
                        objc_enumerationMutation(v59);
                      }

                      v64 = *(*(&v96 + 1) + 8 * n);
                      v65 = [v64 uuid];

                      if (v65)
                      {
                        if ([v64 hidden])
                        {
                          v66 = v6;
                        }

                        else
                        {
                          v66 = v7;
                        }

                        v67 = *v66;
                        v68 = [v64 uuid];
                        [v67 addObject:v68];
                      }
                    }

                    v61 = [v59 countByEnumeratingWithState:&v96 objects:v122 count:16];
                  }

                  while (v61);
                }

                v1 = v95;
              }

              v94 = [v87 countByEnumeratingWithState:&v100 objects:v123 count:16];
            }

            while (v94);
          }

          v69 = _MTLogCategoryDatabase();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
          {
            v70 = [v79 transactionNumber];
            *buf = v74;
            v121 = v70;
            _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "Derived Property Observer processed transaction %{public}lld", buf, 0xCu);
          }

          v71 = [v79 token];
          v72 = *(*(v1 + 80) + 8);
          v73 = *(v72 + 40);
          *(v72 + 40) = v71;

          v5 = v75;
          v4 = v76;
        }

        objc_autoreleasePoolPop(context);
        v8 = v81 + 1;
      }

      while ((v81 + 1) != v4);
      v4 = [obj countByEnumeratingWithState:&v116 objects:v128 count:16];
    }

    while (v4);
  }
}