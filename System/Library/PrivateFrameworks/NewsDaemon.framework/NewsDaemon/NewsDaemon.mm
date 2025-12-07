id sub_100002128()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_10007DFF8 != -1)
  {
    swift_once();
  }

  Container.resolver.getter();
  sub_100002288(v9, v9[3]);
  sub_100025E70(0, &unk_10007EB70, &off_100070F58);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v4 = result;
    Container.resolver.getter();
    sub_100002288(v8, v8[3]);
    type metadata accessor for FeedItemPoolManager(0);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      v5 = result;
      type metadata accessor for TodayFeedServiceEntryPoint();
      v6 = swift_allocObject();
      *(v6 + 16) = v4;
      *(v6 + 24) = v5;
      sub_10001653C(v8);
      sub_10001653C(v9);
      *&v1[OBJC_IVAR___NDTodayFeedServiceListenerDelegate_entryPoint] = v6;
      v7.receiver = v1;
      v7.super_class = ObjectType;
      return objc_msgSendSuper2(&v7, "init");
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100002288(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t type metadata accessor for FeedItemPoolManager(uint64_t a1)
{
  result = qword_10007F480;
  if (!qword_10007F480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_100002318(void *a1)
{
  v2 = type metadata accessor for URL.DirectoryHint();
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin(v2);
  v40 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100015140(&unk_10007EFC0, &qword_10005BEB0);
  __chkstk_darwin(v4 - 8);
  v6 = v36 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v36 - v12;
  sub_100002288(a1, a1[3]);
  sub_100015140(&qword_10007E6E0, &qword_10005A7F8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v39 = result;
  v15 = [result contentDirectory];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v8 + 56))(v6, 1, 1, v7);
  (*(v41 + 13))(v40, enum case for URL.DirectoryHint.inferFromPath(_:), v42);
  URL.init(filePath:directoryHint:relativeTo:)();
  v16 = *(v8 + 16);
  v41 = v13;
  v42 = v11;
  v40 = v16;
  v38 = v8 + 16;
  (v16)(v11, v13, v7);
  sub_100002288(a1, a1[3]);
  sub_100015140(&unk_10007EFD0, &qword_10005B308);
  static FeedItemInventoryName.myArticles.getter();
  dispatch thunk of ResolverType.resolve<A>(_:name:)();

  if (!v53[3])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_100002288(a1, a1[3]);
  static FeedItemInventoryName.globalESL.getter();
  dispatch thunk of ResolverType.resolve<A>(_:name:)();

  if (!v52[3])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100002288(a1, a1[3]);
  static FeedItemInventoryName.perTagESL.getter();
  dispatch thunk of ResolverType.resolve<A>(_:name:)();

  if (!v51[3])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_100002288(a1, a1[3]);
  static FeedItemInventoryName.peopleAlsoRead.getter();
  dispatch thunk of ResolverType.resolve<A>(_:name:)();

  if (!v50[3])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v37 = v8;
  sub_100002288(a1, a1[3]);
  sub_100015140(&qword_10007EFA8, &qword_10005B300);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v49)
  {
    v17 = sub_100017518(v48, v49);
    v36[1] = v36;
    __chkstk_darwin(v17);
    v19 = (v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = *v19;
    v22 = type metadata accessor for UserContextProvider();
    v46 = v22;
    v47 = &off_100072DF8;
    v45[0] = v21;
    v23 = type metadata accessor for FeedItemPoolManager(0);
    v24 = objc_allocWithZone(v23);
    v25 = sub_100017518(v45, v46);
    __chkstk_darwin(v25);
    v27 = (v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v28 + 16))(v27);
    v29 = *v27;
    v44[3] = v22;
    v44[4] = &off_100072DF8;
    v44[0] = v29;
    static TaskPriority.userInitiated.getter();
    v30 = OBJC_IVAR___NDFeedItemPoolManager_activeRefreshTask;
    sub_100015140(&qword_10007E008, &qword_10005A500);
    v31 = swift_allocObject();
    *(v31 + 24) = 0;
    *(v31 + 16) = 0;
    *&v24[v30] = v31;
    v32 = &v24[OBJC_IVAR___NDFeedItemPoolManager_rootDirectoryName];
    *v32 = 0xD000000000000014;
    *(v32 + 1) = 0x800000010005D600;
    v33 = v42;
    (v40)(&v24[OBJC_IVAR___NDFeedItemPoolManager_cachesDirectory], v42, v7);
    sub_100017568(v53, &v24[OBJC_IVAR___NDFeedItemPoolManager_myArticlesInventory]);
    sub_100017568(v52, &v24[OBJC_IVAR___NDFeedItemPoolManager_globalESLInventory]);
    sub_100017568(v51, &v24[OBJC_IVAR___NDFeedItemPoolManager_perTagESLInventory]);
    sub_100017568(v50, &v24[OBJC_IVAR___NDFeedItemPoolManager_peopleAlsoReadInventory]);
    sub_100017568(v44, &v24[OBJC_IVAR___NDFeedItemPoolManager_userContextProvider]);
    v43.receiver = v24;
    v43.super_class = v23;
    v34 = objc_msgSendSuper2(&v43, "init");
    swift_unknownObjectRelease();
    v35 = *(v37 + 8);
    v35(v33, v7);
    v35(v41, v7);
    sub_10001653C(v50);
    sub_10001653C(v51);
    sub_10001653C(v52);
    sub_10001653C(v53);
    sub_10001653C(v44);
    sub_10001653C(v45);
    sub_10001653C(v48);
    return v34;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_100002A80()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002ABC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100002B44()
{
  v1 = sub_100015140(&unk_10007F290, &qword_10005A838);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100002C14()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002C4C()
{
  v1 = sub_100015140(&unk_10007F290, &qword_10005A838);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100002D2C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100002D6C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002DA4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002DDC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100002E24()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002E64()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100002EB8()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100002F34()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002F98()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002FD0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000302C()
{
  v1 = sub_100015140(&qword_10007EE18, &qword_10005AD98);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000030C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000315C()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000031A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000031E0()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1000032BC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000032F4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000333C()
{
  v19 = sub_100015140(&unk_10007F290, &qword_10005A838);
  v1 = *(v19 - 8);
  v2 = *(v1 + 80);
  v16 = (v2 + 32) & ~v2;
  v17 = (*(v1 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = type metadata accessor for Date();
  v3 = *(v18 - 8);
  v4 = *(v3 + 80);
  v15 = (v4 + ((((v17 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v4;
  v5 = (*(v3 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + v5 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v2 | v4 | v8;
  v12 = (v10 + v8 + v9) & ~v8;

  (*(v1 + 8))(v0 + v16, v19);

  (*(v3 + 8))(v0 + v15, v18);

  v13 = *(v7 + 8);
  v13(v0 + v9, v6);
  v13(v0 + v12, v6);

  return _swift_deallocObject(v0, v12 + v10, v11 | 7);
}

uint64_t sub_1000035AC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000035EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015140(&qword_10007F310, qword_10005BD58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003678(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000036E4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100003768()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000037C0()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100003830()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100003874()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000390C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_100003D50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "TodayFeedService did enter operation queue (instance=%{public}@)", &buf, 0xCu);
  }

  v6 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v8 = v6;
    v9 = [v7 length];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "TodayFeedService will adopt feed config data, length=%lu", &buf, 0xCu);
  }

  v10 = [*(a1 + 48) _configFromData:*(a1 + 40)];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    v13 = [*(a1 + 48) _contentIDForConfig:v12];
    v14 = [*(a1 + 48) archiveStore];
    v15 = [v14 isContentIDComplete:v13];

    if (v15)
    {
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_100004314;
      v40[3] = &unk_100071BF0;
      v41 = v13;
      v42 = v3;
      sub_100004314(v40);

      v16 = v41;
    }

    else
    {
      v17 = FCOfflineDownloadsLog;
      if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v13;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "TodayFeedService will begin downloading feed contents, id=%{public}@", &buf, 0xCu);
      }

      v18 = [*(a1 + 48) archiveStore];
      v16 = [v18 interestTokenForContentID:v13];

      v19 = [*(a1 + 48) interestTokens];
      [v19 addObject:v16];

      v20 = [*(a1 + 48) archiveStore];
      [v20 prepareForContentID:v13];

      v21 = [*(a1 + 48) archiveStore];
      [v21 addBlob:*(a1 + 40) name:@"config" contentID:v13];

      v22 = [NDOfflineTodayFeedOperation alloc];
      v23 = [*(a1 + 48) context];
      v24 = [*(a1 + 48) ANFHelper];
      v25 = [(NDOfflineTodayFeedOperation *)v22 initWithFeedConfig:v12 context:v23 ANFHelper:v24];

      *&buf = 0;
      *(&buf + 1) = &buf;
      v46 = 0x3032000000;
      v47 = sub_1000043CC;
      v48 = sub_1000043DC;
      v49 = +[FCContentManifest empty];
      v26 = [*(a1 + 48) queue];
      [(NDOfflineTodayFeedOperation *)v25 setArchiveQueue:v26];

      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_1000043E4;
      v37[3] = &unk_100071C18;
      v37[4] = *(a1 + 48);
      v27 = v13;
      v38 = v27;
      p_buf = &buf;
      [(NDOfflineTodayFeedOperation *)v25 setArchiveHandler:v37];
      v28 = [*(a1 + 48) queue];
      [(NDOfflineTodayFeedOperation *)v25 setFetchCompletionQueue:v28];

      v29 = _NSConcreteStackBlock;
      v30 = 3221225472;
      v31 = sub_1000044A0;
      v32 = &unk_100071C68;
      v33 = *(a1 + 48);
      v34 = v27;
      v35 = v3;
      v36 = &buf;
      [(NDOfflineTodayFeedOperation *)v25 setFetchCompletionHandler:&v29];
      [(NDOfflineTodayFeedOperation *)v25 start:v29];

      _Block_object_dispose(&buf, 8);
    }
  }

  else
  {
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100004298;
    v43[3] = &unk_100071BC8;
    v44 = v3;
    sub_100004298(v43);
    v12 = v44;
  }
}

uint64_t sub_100004298(uint64_t a1)
{
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "TodayFeedService failed to adopt feed config data", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_100004314(uint64_t a1)
{
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "TodayFeedService will ignore feed config because it's already downloaded, id=%{public}@", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_1000043CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000043E4(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 archiveStore];
  [v5 addArchive:v4 forContentID:a1[5]];

  v9 = [v4 manifest];

  v6 = [FCContentManifest manifestByMergingManifest:v9 withManifest:*(*(a1[6] + 8) + 40)];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_1000044A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000046A0;
    v17[3] = &unk_100071C40;
    v6 = v4;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v18 = v6;
    v19 = v7;
    v20 = v8;
    v21 = *(a1 + 48);
    sub_1000046A0(v17);

    v9 = v18;
  }

  else
  {
    v10 = [*(a1 + 32) archiveStore];
    [v10 addManifest:*(*(*(a1 + 56) + 8) + 40) forContentID:*(a1 + 40)];

    v11 = [*(a1 + 32) archiveStore];
    [v11 didCompleteContentID:*(a1 + 40)];

    v9 = [*(*(*(a1 + 56) + 8) + 40) copyWithAssetsOnly];
    v12 = [*(a1 + 32) context];
    v13 = [v12 interestTokenForContentManifest:v9];

    v14 = [*(a1 + 32) interestTokens];
    [v14 addObject:v13];

    v15 = FCOfflineDownloadsLog;
    if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 40);
      *buf = 138543362;
      v23 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "TodayFeedService successfully downloaded feed contents, id=%{public}@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }
}

uint64_t sub_1000046A0(uint64_t a1)
{
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_ERROR))
  {
    sub_1000520C4();
  }

  v2 = [*(a1 + 40) archiveStore];
  [v2 pruneArchivesForContentID:*(a1 + 48)];

  return (*(*(a1 + 56) + 16))();
}

void sub_1000047E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:FCErrorDomain code:8 userInfo:&__NSDictionary0__struct];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_10000491C(uint64_t a1)
{
  v2 = [*(a1 + 32) _latestTodayFeed];
  if (v2)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000049E4;
    v3[3] = &unk_100071BC8;
    v4 = *(a1 + 40);
    sub_1000049E4(v3);
  }
}

void sub_1000049E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:FCErrorDomain code:8 userInfo:&__NSDictionary0__struct];
  (*(v1 + 16))(v1, 0, v2);
}

uint64_t sub_100004B04()
{
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_ERROR))
  {
    sub_10005213C();
  }

  return 0;
}

uint64_t sub_100004B4C()
{
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_ERROR))
  {
    sub_10005217C();
  }

  return 0;
}

void sub_100004E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100004E98(id a1, NSError *a2)
{
  v2 = a2;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_ERROR))
  {
    sub_1000521BC();
  }
}

void sub_100004EEC(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100004FB4;
    v9[3] = &unk_100071D20;
    v10 = v7;
    sub_100004FB4(v9);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

void sub_100004FB4(uint64_t a1)
{
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_ERROR))
  {
    sub_100052230();
  }
}

void sub_100005D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100005D88(uint64_t a1)
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.newsd.todayclientconnection", v2);
  v4 = qword_10007F6F8;
  qword_10007F6F8 = v3;

  v5 = [NTTodayContext alloc];
  v6 = *(a1 + 32);
  v9 = objc_opt_new();
  v7 = [v5 initWithContentContext:v6 feedPersonalizerFactory:v9 groupingService:0 todayBannerValidator:0 articleExposureRegistry:0 processVariant:1 accessQueue:qword_10007F6F8 fetchQueue:*(a1 + 40)];
  v8 = qword_10007F6F0;
  qword_10007F6F0 = v7;
}

void sub_100005E64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained serviceHasNewTodayResults];
}

void sub_100006090(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v14 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    v12 = NTXPCSuitableError();
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    (*(v13 + 16))(v13, v14, v9, v10, v12, 0);
  }
}

uint64_t sub_100006364(uint64_t a1)
{
  v2 = [*(a1 + 32) todayContext];
  [v2 writeUserDidSeeHeadlinesWithAnalyticsElements:*(a1 + 40) atDate:*(a1 + 48)];

  result = *(a1 + 56);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t sub_100006514(uint64_t a1)
{
  v2 = [*(a1 + 32) todayContext];
  [v2 writeUserDidReadHeadlineWithAnalyticsElement:*(a1 + 40) atDate:*(a1 + 48)];

  result = *(a1 + 56);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_100006608(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x26u);
}

void sub_100006C88(uint64_t a1)
{
  v2 = [*(a1 + 32) consumer];
  [v2 downloadProgressedForRequest:*(a1 + 40) progress:*(a1 + 48)];
}

void sub_100006DA0(uint64_t a1)
{
  v2 = [*(a1 + 32) consumer];
  [v2 downloadProgressedForRequest:*(a1 + 40) contentArchive:*(a1 + 48)];
}

void sub_100006EB4(uint64_t a1)
{
  v2 = [*(a1 + 32) consumer];
  [v2 downloadFinishedForRequest:*(a1 + 40) error:*(a1 + 48)];
}

void sub_100006FE0(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v3);
  v4[2]();
}

void sub_10000715C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100007184(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v4);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained connection];

  if (v6)
  {
    [v6 scheduleSendBarrierBlock:v3];
  }

  else
  {
    v7 = v3;
    v7[2]();
  }
}

void sub_100007480(uint64_t a1)
{
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_ERROR))
  {
    sub_100052CD0(a1, v2);
  }
}

uint64_t sub_1000074CC(uint64_t a1)
{
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 connectionDescription];
    *buf = 138543362;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "consumer proxy did send message, connection=%{public}@", buf, 0xCu);
  }

  return FCPerformBlockOnMainThread();
}

id sub_1000075F0(uint64_t a1)
{
  [*(a1 + 32) setSendingMesssage:0];
  v2 = *(a1 + 32);

  return [v2 _sendNextMessage];
}

void *sub_100007930()
{
  v0 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "found no last known requests in store", v2, 2u);
  }

  return &__NSArray0__struct;
}

void sub_100007BE0(uint64_t a1)
{
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_ERROR))
  {
    sub_100052E18();
  }
}

void sub_100007C2C(uint64_t a1)
{
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_ERROR))
  {
    sub_100052E18();
  }
}

id sub_100007E2C()
{
  v0 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "found no last known limits in store", v3, 2u);
  }

  v1 = +[NDDownloadLimits defaultLimits];

  return v1;
}

void sub_1000080A8(uint64_t a1)
{
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_ERROR))
  {
    sub_100052EEC();
  }
}

void sub_1000080F4(uint64_t a1)
{
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_ERROR))
  {
    sub_100052EEC();
  }
}

void sub_1000081C0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

id sub_100008798(uint64_t a1)
{
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 currentConsumer];
    v6 = *(a1 + 40);
    v13 = 134218240;
    v14 = v5;
    v15 = 2048;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "replacing consumer=%p with consumer=%p", &v13, 0x16u);
  }

  v7 = [*(a1 + 32) currentConnection];

  if (v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000530F8();
  }

  v8 = [NDDownloadConsumerProxy alloc];
  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) currentConnection];
  v11 = [(NDDownloadConsumerProxy *)v8 initWithConsumer:v9 connection:v10];
  [*(a1 + 32) setCurrentConsumer:v11];

  return [*(a1 + 32) _catchUpConsumer];
}

id sub_1000088FC(uint64_t a1)
{
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 currentConsumer];
    v6 = *(a1 + 40);
    v13 = 134218240;
    v14 = v5;
    v15 = 2048;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "replacing consumer=%p with consumer=%p", &v13, 0x16u);
  }

  v7 = [*(a1 + 32) currentConnection];

  if (v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000530F8();
  }

  v8 = [NDDownloadConsumerProxy alloc];
  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) currentConnection];
  v11 = [(NDDownloadConsumerProxy *)v8 initWithConsumer:v9 connection:v10];
  [*(a1 + 32) setCurrentConsumer:v11];

  return [*(a1 + 32) _catchUpConsumer];
}

void sub_100008BE4(uint64_t a1)
{
  v2 = [*(a1 + 32) downloadRequests];
  v3 = [v2 isEqualToArray:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = FCOfflineDownloadsLog;
    if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v7 = [v5 downloadRequests];
      v8 = [v7 count];
      v9 = *(a1 + 40);
      v12 = 134218242;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "replacing %lu requests with requests=%{public}@", &v12, 0x16u);
    }

    objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) store];
    [v11 setLastKnownRequests:v10];

    [*(a1 + 32) _pruneUnneededInterestTokens];
    [*(a1 + 32) _cleanUpAVAssetDownloads];
    [*(a1 + 32) _revisitDownloadQueue];
  }
}

void sub_100008D2C(uint64_t a1)
{
  v2 = [*(a1 + 32) downloadRequests];
  v3 = [v2 isEqualToArray:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = FCOfflineDownloadsLog;
    if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v7 = [v5 downloadRequests];
      v8 = [v7 count];
      v9 = *(a1 + 40);
      v12 = 134218242;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "replacing %lu requests with requests=%{public}@", &v12, 0x16u);
    }

    objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) store];
    [v11 setLastKnownRequests:v10];

    [*(a1 + 32) _pruneUnneededInterestTokens];
    [*(a1 + 32) _cleanUpAVAssetDownloads];
    [*(a1 + 32) _revisitDownloadQueue];
  }
}

void sub_100008FF8(uint64_t a1)
{
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "replacing download limits with limits=%{public}@", &v6, 0xCu);
  }

  objc_storeStrong((*(a1 + 40) + 32), *(a1 + 32));
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) store];
  [v5 setLastKnownLimits:v4];
}

void sub_1000090C8(uint64_t a1)
{
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "replacing download limits with limits=%{public}@", &v6, 0xCu);
  }

  objc_storeStrong((*(a1 + 40) + 32), *(a1 + 32));
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) store];
  [v5 setLastKnownLimits:v4];
}

void sub_100009324(uint64_t a1)
{
  v2 = [objc_opt_class() _cacheLookupQueue];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000093E4;
  v3[3] = &unk_100071F40;
  v3[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 fc_addMainThreadOperationWithBlock:v3];
}

void sub_1000093E4(id *a1)
{
  v2 = [a1[4] currentConsumer];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100009498;
  v3[3] = &unk_100071F18;
  v5 = a1[6];
  v4 = a1[5];
  [v2 flushMessagesWithCompletion:v3];
}

void sub_1000094A8(uint64_t a1)
{
  v2 = [objc_opt_class() _cacheLookupQueue];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100009568;
  v3[3] = &unk_100071F40;
  v3[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 fc_addMainThreadOperationWithBlock:v3];
}

void sub_100009568(id *a1)
{
  v2 = [a1[4] currentConsumer];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000961C;
  v3[3] = &unk_100071F18;
  v5 = a1[6];
  v4 = a1[5];
  [v2 flushMessagesWithCompletion:v3];
}

void sub_100009A98(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_100009AD4(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [*(a1 + 32) activeDownloadRequest];
  v4 = *(a1 + 40);

  if (v3 == v4)
  {
    v5 = [*(a1 + 32) currentConsumer];
    [v5 downloadProgressedForRequest:*(a1 + 40) contentArchive:v14];

    v6 = [*(a1 + 32) contentArchiveStore];
    v7 = [*(a1 + 40) contentID];
    [v6 addArchive:v14 forContentID:v7];

    v8 = [v14 manifest];
    v9 = [*(a1 + 32) activeDownloadManifest];
    v10 = [FCContentManifest manifestByMergingManifest:v8 withManifest:v9];
    [*(a1 + 32) setActiveDownloadManifest:v10];

    v11 = [*(a1 + 32) contentArchiveStore];
    v12 = [*(a1 + 32) activeDownloadManifest];
    v13 = [*(a1 + 40) contentID];
    [v11 addManifest:v12 forContentID:v13];
  }
}

void sub_100009C3C(uint64_t a1, double a2)
{
  v4 = [*(a1 + 32) activeDownloadRequest];
  v5 = *(a1 + 40);

  if (v4 == v5)
  {
    v6 = [*(a1 + 32) currentConsumer];
    [v6 downloadProgressedForRequest:*(a1 + 40) progress:a2];

    v7 = *(a1 + 32);

    [v7 setActiveDownloadProgress:a2];
  }
}

void sub_100009CDC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = [WeakRetained isCancelled];

  if (v8)
  {
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10000A194;
    v35[3] = &unk_100071FB8;
    v36 = *(a1 + 32);
    objc_copyWeak(&v38, (a1 + 64));
    v37 = *(a1 + 56);
    sub_10000A194(v35);

    objc_destroyWeak(&v38);
    v9 = v36;
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) activeDownloadRequest];

    if (v10 == v11)
    {
      v12 = FCOfflineDownloadsLog;
      if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        v14 = v12;
        v15 = [v13 contentID];
        v16 = objc_loadWeakRetained((a1 + 64));
        v17 = [v16 shortOperationDescription];
        *buf = 138543874;
        v41 = v15;
        v42 = 2114;
        v43 = v17;
        v44 = 2114;
        v45 = v6;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "processing completion for %{public}@ from %{public}@ with error=%{public}@", buf, 0x20u);
      }

      v18 = [*(a1 + 40) activeDownloadManifest];
      v9 = [v18 copyWithAssetsOnly];

      v19 = [*(a1 + 40) contentContext];
      v20 = [v19 interestTokenForContentManifest:v9];

      v21 = [*(a1 + 40) interestTokensByContentID];
      v39[0] = *(a1 + 48);
      v39[1] = v20;
      v22 = [NSArray arrayWithObjects:v39 count:2];
      v23 = [*(a1 + 32) contentID];
      [v21 setObject:v22 forKey:v23];

      v24 = [*(a1 + 40) contentArchiveStore];
      v25 = [*(a1 + 32) contentID];
      if (v6)
      {
        [v24 pruneArchivesForContentID:v25];

        v26 = [*(a1 + 40) errorsByContentID];
        v27 = [*(a1 + 32) contentID];
        [v26 setObject:v6 forKey:v27];
      }

      else
      {
        [v24 didCompleteContentID:v25];

        v28 = [*(a1 + 40) downloadedContentIDs];
        v29 = [*(a1 + 32) contentID];
        [v28 addObject:v29];

        v26 = [*(a1 + 40) errorsByContentID];
        v27 = [*(a1 + 32) contentID];
        [v26 removeObjectForKey:v27];
      }

      v30 = [*(a1 + 40) currentConsumer];
      [v30 downloadFinishedForRequest:*(a1 + 32) error:v6];

      [*(a1 + 40) setActiveDownloadRequest:0];
      [*(a1 + 40) setActiveDownloadManifest:0];
      [*(a1 + 40) setActiveDownloadProgress:0.0];
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_10000A2AC;
      v31[3] = &unk_100071FB8;
      v32 = *(a1 + 32);
      objc_copyWeak(&v34, (a1 + 64));
      v33 = *(a1 + 56);
      sub_10000A2AC(v31);

      objc_destroyWeak(&v34);
      v9 = v32;
    }
  }
}

uint64_t sub_10000A194(uint64_t a1)
{
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 contentID];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v7 = [WeakRetained shortOperationDescription];
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ignoring completion for %{public}@ from %{public}@ since we cancelled it ourselves", &v9, 0x16u);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_10000A2AC(uint64_t a1)
{
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 contentID];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v7 = [WeakRetained shortOperationDescription];
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ignoring completion for %{public}@ from %{public}@ it's no longer the active request", &v9, 0x16u);
  }

  return (*(*(a1 + 40) + 16))();
}

id sub_10000A914(uint64_t a1)
{
  v2 = [*(a1 + 32) contentArchiveStore];
  [v2 enableFlushingWithFlushingThreshold:0];

  v3 = [*(a1 + 32) contentContext];
  [v3 enableFlushingWithFlushingThreshold:0];

  v4 = *(a1 + 32);

  return [v4 _cleanUpAVAssetDownloads];
}

void sub_10000A988(uint64_t a1)
{
  v1 = [*(a1 + 32) prewarmGroup];
  dispatch_group_leave(v1);
}

id sub_10000B0EC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 downloadedContentIDs];
  v5 = [v3 contentID];

  v6 = [v4 containsObject:v5];
  return v6;
}

void sub_10000B3E4(uint64_t a1)
{
  v2 = [*(a1 + 32) ANFHelper];
  [v2 popInterest];

  [*(a1 + 32) _recordWhetherTasksAreUnfinished];
  v3 = dispatch_time(0, 10000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = nullsub_2;
  block[3] = &unk_100071D20;
  v5 = *(a1 + 40);
  dispatch_after(v3, &_dispatch_main_q, block);
}

uint64_t sub_10000B758(_BYTE *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 options];
  if ((v4 & 1) != 0 && a1[32] == 1)
  {
    v5 = FCOfflineDownloadsLog;
    if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [v3 contentID];
      v15 = 138543362;
      v16 = v7;
      v8 = "filtering download request for %{public}@ because there's no wifi";
LABEL_21:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, &v15, 0xCu);
    }
  }

  else if ((v4 & 4) != 0 && a1[33] == 1)
  {
    v9 = FCOfflineDownloadsLog;
    if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v9;
      v7 = [v3 contentID];
      v15 = 138543362;
      v16 = v7;
      v8 = "filtering download request for %{public}@ because of low-data mode";
      goto LABEL_21;
    }
  }

  else if ((v4 & 2) != 0 && a1[34] == 1)
  {
    v10 = FCOfflineDownloadsLog;
    if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v10;
      v7 = [v3 contentID];
      v15 = 138543362;
      v16 = v7;
      v8 = "filtering download request for %{public}@ because of low-power mode";
      goto LABEL_21;
    }
  }

  else if ((v4 & 8) != 0 && a1[35] == 1)
  {
    v11 = FCOfflineDownloadsLog;
    if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v11;
      v7 = [v3 contentID];
      v15 = 138543362;
      v16 = v7;
      v8 = "filtering download request for %{public}@ because of battery power";
      goto LABEL_21;
    }
  }

  else
  {
    if ((v4 & 0x10) == 0 || a1[36] != 1)
    {
      v13 = 1;
      goto LABEL_24;
    }

    v12 = FCOfflineDownloadsLog;
    if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v12;
      v7 = [v3 contentID];
      v15 = 138543362;
      v16 = v7;
      v8 = "filtering download request for %{public}@ because of low storage";
      goto LABEL_21;
    }
  }

  v13 = 0;
LABEL_24:

  return v13;
}

BOOL sub_10000BAB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) downloadedContentIDs];
  v5 = [v3 contentID];
  v6 = [v4 containsObject:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [*(a1 + 32) errorsByContentID];
    v9 = [v3 contentID];
    v10 = [v8 objectForKey:v9];

    v7 = !v10 || ([*(a1 + 32) _isFatalError:v10] & 1) == 0;
  }

  return v7;
}

void sub_10000BD90(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [*(a1 + 32) downloadRequests];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v10 + 1) + 8 * v8) contentID];
        [v3 addObject:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

void sub_10000C4AC(id a1)
{
  v1 = objc_alloc_init(NSOperationQueue);
  v2 = qword_10007F708;
  qword_10007F708 = v1;

  [qword_10007F708 setName:@"com.apple.newsd.download.cacheLookupQueue"];
  v3 = qword_10007F708;

  [v3 setMaxConcurrentOperationCount:1];
}

void sub_10000C550(id a1)
{
  v1 = objc_alloc_init(NSOperationQueue);
  v2 = qword_10007F718;
  qword_10007F718 = v1;

  [qword_10007F718 setName:@"com.apple.newsd.download.downloadQueue"];
  v3 = qword_10007F718;

  [v3 setMaxConcurrentOperationCount:1];
}

void sub_10000C7C8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x26u);
}

void sub_10000CB28(id *a1, char a2)
{
  if (a2)
  {
    v3 = [a1[4] fc_NewsArticleID];
    if (v3)
    {
      v4 = [FCArticleHeadlinesFetchOperation alloc];
      v5 = [a1[5] contentContext];
      v14 = v3;
      v6 = [NSArray arrayWithObjects:&v14 count:1];
      v7 = [v4 initWithContext:v5 articleIDs:v6 ignoreCacheForArticleIDs:&__NSArray0__struct];

      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10000CD74;
      v8[3] = &unk_100072178;
      v9 = a1[6];
      [v7 setFetchCompletionBlock:v8];
      [v7 start];
    }

    else
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10000CD5C;
      v10[3] = &unk_100071BC8;
      v11 = a1[6];
      sub_10000CD5C(v10);
      v7 = v11;
    }
  }

  else
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000CD44;
    v12[3] = &unk_100071BC8;
    v13 = a1[6];
    sub_10000CD44(v12);
    v3 = v13;
  }
}

void sub_10000CD74(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fetchedObject];
  v8 = [v4 firstObject];

  v5 = *(a1 + 32);
  v6 = [v8 contentURL];
  v7 = [v3 error];

  (*(v5 + 16))(v5, v6, v7);
}

void sub_10000CEE8(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) endpointConnection];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000D01C;
    v6[3] = &unk_1000721C8;
    v4 = &v7;
    v5 = *(a1 + 40);
    v7 = *(a1 + 48);
    [v3 resolveWebURL:v5 withQualityOfService:25 completion:v6];
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000D004;
    v8[3] = &unk_100071BC8;
    v4 = &v9;
    v9 = *(a1 + 48);
    sub_10000D004(v8);
  }
}

void sub_10000D01C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [NSURL fc_NewsURLForArticleID:a2 hardPaywall:1];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000D110;
    v7[3] = &unk_100071F18;
    v9 = *(a1 + 32);
    v8 = v5;
    sub_10000D110(v7);
  }
}

void sub_10000D1BC(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) endpointConnection];
    [v3 fetchWebURLBloomFilterInfoWithQualityOfService:25 completion:*(a1 + 40)];
  }

  else
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10000D28C;
    v4[3] = &unk_100071BC8;
    v5 = *(a1 + 40);
    sub_10000D28C(v4);
  }
}

void sub_10000D28C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[NTPBBloomFilterInfo fc_emptyBloomFilterInfo];
  (*(v1 + 16))(v1, v2, 0);
}

uint64_t sub_10000D508(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) isContentStoreFrontSupported];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

void sub_10000DC04(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 _handleError:a3];
  [*(a1 + 32) _handleInterestToken:v6];

  v7 = *(a1 + 40);

  dispatch_group_leave(v7);
}

id sub_10000DC6C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 context];
  v5 = [v4 assetManager];
  v6 = [v5 assetHandleForURL:v3 lifetimeHint:0];

  return v6;
}

void sub_10000DD04(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 error];
  [v3 _handleError:v4];

  v5 = *(a1 + 40);

  dispatch_group_leave(v5);
}

void sub_10000DD64(uint64_t a1)
{
  v2 = [*(a1 + 32) ANFHelper];
  [v2 popInterest];

  v3 = *(a1 + 32);
  v5 = [v3 resultErrors];
  v4 = [v5 firstObject];
  [v3 finishedPerformingOperationWithError:v4];
}

void sub_10000DF34(uint64_t a1)
{
  v4 = [*(a1 + 32) fetchCompletionHandler];
  v2 = [*(a1 + 32) resultInterestTokens];
  v3 = [v2 readOnlyArray];
  v4[2](v4, v3, *(a1 + 40));
}

void sub_10000E104(uint64_t a1)
{
  v2 = [*(a1 + 32) progressHandler];
  [*(a1 + 32) progress];
  v2[2]();
}

void sub_10000E2E4(uint64_t a1)
{
  v2 = [*(a1 + 32) archiveHandler];
  v2[2](v2, *(a1 + 40));
}

void sub_10000EA84(uint64_t a1)
{
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "XPC connection invalidated, connection=%{public}@", &v4, 0xCu);
  }
}

void sub_10000EB2C(uint64_t a1)
{
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "XPC connection interrupted, connection=%{public}@", &v4, 0xCu);
  }
}

void sub_10000F374(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10000F398(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSystemTask:v3];
}

void sub_10000F7A8()
{
  v0 = FCNotificationsLog;
  if (os_log_type_enabled(FCNotificationsLog, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "notification pool refresh task has already been submitted", v1, 2u);
  }
}

id sub_10000F924(uint64_t a1)
{
  v2 = FCNotificationsLog;
  if (os_log_type_enabled(FCNotificationsLog, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "did handle notification pool refresh task", v4, 2u);
  }

  return [*(a1 + 32) setTaskCompleted];
}

void sub_10000FE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000FE74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000FE8C(uint64_t a1)
{
  v2 = [*(a1 + 32) cacheCoordinator];
  v3 = [v2 allKeys];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000FF4C;
  v7[3] = &unk_100072370;
  v7[4] = *(a1 + 32);
  v4 = [v3 fc_arrayOfObjectsPassingTest:v7];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_100010038(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 fileExistsAtPath:*(a1 + 32)];

  if (v3)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = *(a1 + 48);

    [v4 _pruneArchivesFromContainer:v5 forContentID:v6];
  }

  else
  {
    v7 = +[NSFileManager defaultManager];
    v8 = *(a1 + 32);
    v14 = 0;
    v9 = [v7 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v14];
    v10 = v14;

    v11 = FCOfflineDownloadsLog;
    if (v9)
    {
      if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 48);
        *buf = 138543362;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "content archive store created container for contentID=%{public}@", buf, 0xCu);
      }

      v13 = [*(a1 + 40) cacheCoordinator];
      [v13 didInsertKeyIntoCache:*(a1 + 48)];
    }

    else if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_ERROR))
    {
      sub_10005355C();
    }
  }
}

void sub_1000104A0(uint64_t a1)
{
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_ERROR))
  {
    sub_1000535D8();
  }
}

void sub_1000104EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v12 = 0;
  v4 = [v2 writeToFile:v3 options:0 error:&v12];
  v5 = v12;
  if (v4)
  {
    v6 = FCOfflineDownloadsLog;
    if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v7 = *(a1 + 48);
      *buf = 138543618;
      v14 = v7;
      v15 = 2114;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "content archive store added archive for contentID=%{public}@, archivePath=%{public}@", buf, 0x16u);
    }
  }

  else
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100010650;
    v9[3] = &unk_100071DB0;
    v10 = *(a1 + 48);
    v11 = v5;
    sub_100010650(v9);
  }
}

void sub_100010650(uint64_t a1)
{
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_ERROR))
  {
    sub_100053640();
  }
}

void sub_100010878(uint64_t a1)
{
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_ERROR))
  {
    sub_1000536A8();
  }
}

void sub_1000108C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v12 = 0;
  v4 = [v2 writeToFile:v3 options:1 error:&v12];
  v5 = v12;
  if (v4)
  {
    v6 = FCOfflineDownloadsLog;
    if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v7 = *(a1 + 48);
      *buf = 138543618;
      v14 = v7;
      v15 = 2114;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "content archive store added manifest for contentID=%{public}@, manifestPath=%{public}@", buf, 0x16u);
    }
  }

  else
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100010A28;
    v9[3] = &unk_100071DB0;
    v10 = *(a1 + 48);
    v11 = v5;
    sub_100010A28(v9);
  }
}

void sub_100010A28(uint64_t a1)
{
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_ERROR))
  {
    sub_100053710();
  }
}

void sub_100010BBC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v14 = 0;
  v4 = [v2 writeToFile:v3 options:0 error:&v14];
  v5 = v14;
  if (v4)
  {
    v6 = FCOfflineDownloadsLog;
    if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 48);
      v7 = *(a1 + 56);
      v9 = *(a1 + 40);
      *buf = 138543874;
      v16 = v8;
      v17 = 2114;
      v18 = v7;
      v19 = 2114;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "content archive store added blob for name=%{public}@, contentID=%{public}@, manifestPath=%{public}@", buf, 0x20u);
    }
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100010D40;
    v10[3] = &unk_100071E78;
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v13 = v5;
    sub_100010D40(v10);
  }
}

void sub_100010D40(uint64_t a1)
{
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_ERROR))
  {
    sub_100053778();
  }
}

void sub_100010E68(uint64_t a1)
{
  v2 = +[NSData data];
  v3 = *(a1 + 32);
  v9 = 0;
  v4 = [v2 writeToFile:v3 options:0 error:&v9];
  v5 = v9;

  if ((v4 & 1) == 0)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100010F50;
    v6[3] = &unk_100071DB0;
    v7 = *(a1 + 40);
    v8 = v5;
    sub_100010F50(v6);
  }
}

void sub_100010F50(uint64_t a1)
{
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_ERROR))
  {
    sub_1000537F8();
  }
}

void sub_1000110A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000110B8(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  *(*(*(a1 + 40) + 8) + 24) = [v2 fileExistsAtPath:*(a1 + 32)];
}

void sub_1000113D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000113EC(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [NSData dataWithContentsOfFile:*(a1 + 32)];

  return _objc_release_x1();
}

void sub_100011560(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 subpathsOfDirectoryAtPath:*(a1 + 32) error:0];

  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 pathExtension];
        v10 = [v9 isEqualToString:@"contentArchive"];

        if (v10)
        {
          v11 = [*(a1 + 32) stringByAppendingPathComponent:v8];
          v12 = [FCContentArchive archiveWithPersistedArchivePath:v11];
          [*(a1 + 40) fc_safelyAddObject:v12];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

void sub_1000118BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000118D8(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [NSData dataWithContentsOfFile:*(a1 + 32)];

  return _objc_release_x1();
}

void sub_100011AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100011B04(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = 0;
  v3 = [v2 bookmarkDataWithOptions:0 includingResourceValuesForKeys:0 relativeToURL:0 error:&v7];
  v4 = v7;
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  if (!*(*(*(a1 + 56) + 8) + 40) && os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_ERROR))
  {
    sub_1000538D8();
  }
}

void sub_1000127B8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id sub_100012DB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [FCConfigurationManager alloc];
  v5 = +[FCContextConfiguration defaultConfiguration];
  v6 = [*(a1 + 32) cacheDirectoryFileURL];
  v7 = [v3 resolveProtocol:&OBJC_PROTOCOL___FCFeldsparIDProvider];
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = [v3 resolveClass:objc_opt_class()];

  v11 = [v4 initWithContextConfiguration:v5 contentHostDirectoryFileURL:v6 feldsparIDProvider:v7 appShortVersionString:v9 buildNumberString:v8 networkBehaviorMonitor:v10 appActivityMonitor:0 applicationState:2];

  return v11;
}

id sub_100012EC0(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [(TFResolver *)v2 resolveClass:objc_opt_class()];

  return v3;
}

id sub_100012F20(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [(TFResolver *)v2 resolveClass:objc_opt_class()];

  return v3;
}

id sub_100012F80(uint64_t a1, void *a2)
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = a2;
  v6 = dispatch_queue_create("com.apple.newsd.analytics.urlsessionqueue", v4);

  v7 = [NDAnalyticsEnvelopeManager alloc];
  v8 = [v5 resolveProtocol:&OBJC_PROTOCOL___FCNewsAppConfigurationManager];
  v9 = [v5 resolveClass:objc_opt_class()];

  v10 = [*(a1 + 32) documentDirectoryFileURL];
  v11 = [v7 initWithAppConfigurationManager:v8 telemetryUploader:v9 storeDirectoryFileURL:v10 URLSessionQueue:v6];

  return v11;
}

void sub_100013084(id a1, TFResolver *a2, NDAnalyticsEnvelopeManager *a3)
{
  v3 = a3;
  v4 = kNSURLSessionLaunchOnDemandNotificationName;
  v5 = [(NDAnalyticsEnvelopeManager *)v3 URLSessionQueue];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100013140;
  handler[3] = &unk_100072500;
  v8 = v3;
  v6 = v3;
  xpc_set_event_stream_handler(v4, v5, handler);
}

void sub_100013140(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_transaction_create();
  string = xpc_dictionary_get_string(v3, kNSURLSessionLaunchOnDemandSessionIdentifierKey);

  v6 = [NSString stringWithCString:string encoding:4];
  v7 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = nullsub_3;
  v9[3] = &unk_100071D20;
  v10 = v4;
  v8 = v4;
  [v7 handleLaunchEventForBackgroundSessionWithIdentifier:v6 completion:v9];
}

id sub_100013238(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [NDAnalyticsServiceRouter alloc];
  v4 = [(TFResolver *)v2 resolveClass:objc_opt_class()];

  v8 = v4;
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  v6 = [(NDAnalyticsServiceRouter *)v3 initWithServices:v5];

  return v6;
}

id sub_10001331C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [FCContentContext alloc];
  v5 = +[FCContextConfiguration defaultConfiguration];
  v6 = [v3 resolveProtocol:&OBJC_PROTOCOL___FCNewsAppConfigurationManager];
  v7 = [*(a1 + 32) cacheDirectoryFileURL];
  v8 = [v3 resolveClass:objc_opt_class()];

  v9 = +[FCNetworkReachability sharedNetworkReachability];
  v10 = [v4 initWithConfiguration:v5 configurationManager:v6 contentHostDirectory:v7 networkBehaviorMonitor:v8 networkReachability:v9 desiredHeadlineFieldOptions:0xF87FFFFC1 feedUsage:10 assetKeyManagerDelegate:0 appActivityMonitor:0 backgroundTaskable:0 pptContext:0];

  return v10;
}

id sub_10001344C(id a1, TFResolver *a2)
{
  v2 = objc_alloc_init(NDANFHelperProxyWithFallback);

  return v2;
}

id sub_10001347C(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [NDURLResolutionService alloc];
  v4 = [(TFResolver *)v2 resolveProtocol:&OBJC_PROTOCOL___FCContentContext];

  v5 = [(NDURLResolutionService *)v3 initWithContentContext:v4];

  return v5;
}

id sub_100013500(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [NDNotificationPoolRefreshManager alloc];
  v4 = [(TFResolver *)v2 resolveClass:objc_opt_class()];
  v5 = [(TFResolver *)v2 resolveProtocol:&OBJC_PROTOCOL___FCNewsAppConfigurationManager];

  v6 = [(NDNotificationPoolRefreshManager *)v3 initWithNotificationPool:v4 configManager:v5];

  return v6;
}

id sub_1000135AC(id a1, TFResolver *a2)
{
  v2 = objc_alloc_init(NDContentVariantProvider);

  return v2;
}

id sub_1000135DC(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [NDTodayFeedManager alloc];
  v4 = [(TFResolver *)v2 resolveProtocol:&OBJC_PROTOCOL___FCContentContext];
  v5 = [(TFResolver *)v2 resolveProtocol:&OBJC_PROTOCOL___FCANFHelper];

  v6 = [(NDTodayFeedManager *)v3 initWithContext:v4 ANFHelper:v5];

  return v6;
}

id sub_100013680(id a1, TFResolver *a2)
{
  v2 = [[FCNetworkBehaviorMonitor alloc] initForLoggingOnly];

  return v2;
}

id sub_1000136C0(id a1, TFResolver *a2)
{
  v2 = a2;
  v3 = [FCNotificationPoolService alloc];
  v4 = [(TFResolver *)v2 resolveProtocol:&OBJC_PROTOCOL___FCContentContext];
  v5 = [(TFResolver *)v2 resolveProtocol:&OBJC_PROTOCOL___FCContentVariantProviding];

  v6 = [v3 initWithContext:v4 contentVariantProvider:v5];

  return v6;
}

int main(int argc, const char **argv, const char **envp)
{
  +[NSURLCache setSharedURLCache:](NSURLCache, "setSharedURLCache:", [[NSURLCache alloc] initWithMemoryCapacity:0 diskCapacity:0 diskPath:0]);
  v3 = +[_TtC5newsd14NewsdContainer tfResolver];
  v4 = [v3 resolveProtocol:&OBJC_PROTOCOL___FCContentContext];
  v5 = [v3 resolveProtocol:&OBJC_PROTOCOL___FCANFHelper];
  v6 = [v3 resolveClass:objc_opt_class()];
  v7 = [v3 resolveProtocol:&OBJC_PROTOCOL___NDURLResolutionService];
  v8 = objc_opt_new();
  v18[0] = @"com.apple.newsd.analytics";
  v18[1] = @"com.apple.newsd.today";
  v18[2] = @"com.apple.newsd.url-resolution";
  v18[3] = @"com.apple.newsd.download";
  v18[4] = @"com.apple.newsd.live-activity";
  v18[5] = @"com.apple.newsd.today-feed";
  v9 = [NSArray arrayWithObjects:v18 count:6];
  v10 = [[NDAnalyticsServiceListenerDelegate alloc] initWithService:v6];
  v11 = [[NDTodayServiceListenerDelegate alloc] initWithContentContext:v4 fetchQueue:v8, v10];
  v17[1] = v11;
  v12 = [[NDURLResolutionListenerDelegate alloc] initWithURLResolutionService:v7];
  v17[2] = v12;
  v13 = [[NDDownloadServiceListenerDelegate alloc] initWithContentContext:v4 ANFHelper:v5];
  v17[3] = v13;
  v14 = objc_alloc_init(NDLiveActivityServiceListenerDelegate);
  v17[4] = v14;
  v15 = objc_alloc_init(NDTodayFeedServiceListenerDelegate);
  v17[5] = v15;
  v16 = [NSArray arrayWithObjects:v17 count:6];

  [v9 fc_enumerateSideBySideWithArray:v16 reverse:0 block:&stru_100072660];
  dispatch_main();
}

void sub_100014050(id a1, NSString *a2, NSXPCListenerDelegate *a3, BOOL *a4)
{
  v5 = a3;
  v6 = a2;
  object = [[NSXPCListener alloc] initWithMachServiceName:v6];

  [object setDelegate:v5];
  objc_setAssociatedObject(object, off_10007DFE0, v5, 1);

  [object resume];
}

Swift::Int sub_1000140F4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10001413C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100014180(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = type metadata accessor for TimeZone();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v5 = type metadata accessor for Calendar();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_100014308, 0, 0);
}

uint64_t sub_100014308(uint64_t a1, uint64_t a2)
{
  v3 = NewsCoreUserDefaults();
  v4 = [v3 integerForKey:FCDelayedNotificationFrequencySharedPreferenceKey];

  if (!v4)
  {
    v18 = [*(*(v2 + 80) + 16) possiblyUnfetchedAppConfiguration];
    if ([v18 respondsToSelector:"delayedNotificationSchedulerConfigurationData"])
    {
      v19 = [v18 delayedNotificationSchedulerConfigurationData];
      swift_unknownObjectRelease();
      if (v19)
      {
        v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        type metadata accessor for JSONDecoder();
        swift_allocObject();
        sub_100015334(v20, v22);
        JSONDecoder.init()();
        sub_100015388();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();
        v25 = *(v2 + 72);

        v26 = *(v2 + 16);
        v27 = sub_100034888(v25, *(v2 + 16), *(v2 + 24));
        if (v29)
        {

          sub_1000152E0();
          swift_allocError();
          *v30 = 2;
LABEL_17:
          swift_willThrow();
          sub_1000153DC(v20, v22);
          sub_1000153DC(v20, v22);
          goto LABEL_9;
        }

        v31 = v27;
        v32 = v28;
        sub_100014B28();
        if (v33)
        {

          sub_1000152E0();
          swift_allocError();
          *v34 = 0;
          goto LABEL_17;
        }

        v35 = sub_1000153DC(v20, v22);
        if (v26)
        {
          sub_100015430(v35, 0.0, 1.0);
        }

        else
        {
          v37 = sub_100034784(v35, v36);
        }

        v38 = v37;

        if (__OFSUB__(v32, v31))
        {
          __break(1u);
        }

        else
        {
          v39 = *(v2 + 152);
          v40 = *(v2 + 144);
          v72 = *(v2 + 136);
          v42 = *(v2 + 120);
          v41 = *(v2 + 128);
          v43 = *(v2 + 112);
          v77 = v2;
          v44 = floor(v38 * (v32 - v31));
          static Calendar.current.getter();
          Calendar.startOfDay(for:)();
          (*(v42 + 8))(v41, v43);
          Date.addingTimeInterval(_:)();
          v71 = *(v40 + 8);
          v71(v39, v72);
          v45 = FCNotificationsLog;
          sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
          v46 = swift_allocObject();
          *(v46 + 16) = xmmword_10005A4E0;
          sub_100015234();
          v70 = v45;
          v47 = v2;
          v48 = dispatch thunk of CustomStringConvertible.description.getter();
          v50 = v49;
          *(v46 + 56) = &type metadata for String;
          v51 = sub_10001528C();
          *(v46 + 64) = v51;
          *(v46 + 32) = v48;
          *(v46 + 40) = v50;
          v47[6] = v31;
          v47[7] = v32;
          v47[4] = 0;
          v47[5] = 0xE000000000000000;
          _print_unlocked<A, B>(_:_:)();
          v52._countAndFlagsBits = 3943982;
          v52._object = 0xE300000000000000;
          String.append(_:)(v52);
          _print_unlocked<A, B>(_:_:)();
          v53 = v47[4];
          v54 = v47[5];
          *(v46 + 96) = &type metadata for String;
          *(v46 + 104) = v51;
          *(v46 + 72) = v53;
          *(v46 + 80) = v54;
          v55 = swift_allocObject();
          *(v55 + 16) = xmmword_10005A4F0;
          *(v55 + 56) = &type metadata for Double;
          *(v55 + 64) = &protocol witness table for Double;
          *(v55 + 32) = v38;
          result = String.init(format:_:)();
          *(v46 + 136) = &type metadata for String;
          *(v46 + 144) = v51;
          *(v46 + 112) = result;
          *(v46 + 120) = v56;
          if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v44 > -9.22337204e18)
            {
              if (v44 < 9.22337204e18)
              {
                v58 = v47[19];
                v57 = v47[20];
                v59 = v47[17];
                v60 = v47[18];
                v61 = v47;
                v62 = v47[13];
                v63 = v61[12];
                v69 = v61[11];
                v74 = v57;
                v76 = v61[8];
                *(v46 + 176) = &type metadata for Int;
                *(v46 + 184) = &protocol witness table for Int;
                *(v46 + 152) = v44;
                v64 = dispatch thunk of CustomStringConvertible.description.getter();
                *(v46 + 216) = &type metadata for String;
                *(v46 + 224) = v51;
                *(v46 + 192) = v64;
                *(v46 + 200) = v65;
                v66 = static os_log_type_t.default.getter();
                os_log(_:dso:log:type:_:)("Returning timetable given date %{public}@ in window %{public}@ with normalized offset: %{public}@, absolute offset %llu, date: %{public}@", 137, 2, &_mh_execute_header, v70, v66, v46);

                static TimeZone.current.getter();
                Date.init()();
                TimeZone.secondsFromGMT(for:)();
                v71(v58, v59);
                (*(v63 + 8))(v62, v69);
                v67 = NewsCoreUserDefaults();
                isa = Int._bridgeToObjectiveC()().super.super.isa;
                [v67 setObject:isa forKey:FCDelayedNotificationSecondsFromGMTKey];

                sub_1000153DC(v20, v22);
                (*(v60 + 32))(v76, v74, v59);
                (*(v60 + 56))(v76, 0, 1, v59);
                goto LABEL_3;
              }

LABEL_29:
              __break(1u);
              return result;
            }

LABEL_28:
            __break(1u);
            goto LABEL_29;
          }
        }

        __break(1u);
        goto LABEL_28;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_1000152E0();
    swift_allocError();
    *v23 = 1;
    swift_willThrow();
LABEL_9:

    v17 = *(v2 + 8);
    goto LABEL_10;
  }

  v5 = *(v2 + 136);
  v6 = *(v2 + 144);
  v73 = *(v2 + 160);
  v75 = *(v2 + 64);
  Date.addingTimeInterval(_:)();
  v7 = FCNotificationsLog;
  sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10005A4D0;
  sub_100015234();
  v77 = v2;
  v9 = v7;
  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  v12 = v11;
  *(v8 + 56) = &type metadata for String;
  v13 = sub_10001528C();
  *(v8 + 32) = v10;
  *(v8 + 40) = v12;
  *(v8 + 96) = &type metadata for Int;
  *(v8 + 104) = &protocol witness table for Int;
  *(v8 + 64) = v13;
  *(v8 + 72) = v4;
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v8 + 136) = &type metadata for String;
  *(v8 + 144) = v13;
  *(v8 + 112) = v14;
  *(v8 + 120) = v15;
  v16 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Returning timetable given date %{public}@ using override frequency %lu, date: %{public}@", 88, 2, &_mh_execute_header, v9, v16, v8);

  (*(v6 + 32))(v75, v73, v5);
  (*(v6 + 56))(v75, 0, 1, v5);
LABEL_3:

  v17 = *(v77 + 8);
LABEL_10:

  return v17();
}

uint64_t sub_100014B28()
{
  v0 = type metadata accessor for TimeZone();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Calendar();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DateComponents();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  static TimeZone.current.getter();
  Calendar.dateComponents(in:from:)();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  v12 = DateComponents.hour.getter();
  if ((v13 & 1) == 0)
  {
    v20 = v12;
    v21 = DateComponents.minute.getter();
    if (v22)
    {
      v14 = FCNotificationsLog;
      v23 = static os_log_type_t.error.getter();
      sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_10005A4F0;
      type metadata accessor for Date();
      sub_100015234();
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      *(v24 + 56) = &type metadata for String;
      *(v24 + 64) = sub_10001528C();
      *(v24 + 32) = v25;
      *(v24 + 40) = v27;
      v28 = "Failed to get minute component for date %{public}@";
LABEL_7:
      os_log(_:dso:log:type:_:)(v28, 50, 2, &_mh_execute_header, v14, v23, v24);
      goto LABEL_8;
    }

    v29 = v21;
    v30 = DateComponents.second.getter();
    if (v31)
    {
      v14 = FCNotificationsLog;
      v23 = static os_log_type_t.error.getter();
      sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_10005A4F0;
      type metadata accessor for Date();
      sub_100015234();
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      *(v24 + 56) = &type metadata for String;
      *(v24 + 64) = sub_10001528C();
      *(v24 + 32) = v32;
      *(v24 + 40) = v34;
      v28 = "Failed to get second component for date %{public}@";
      goto LABEL_7;
    }

    v36 = v30;
    v37 = DateComponents.weekday.getter();
    if (v38)
    {
      v14 = FCNotificationsLog;
      v39 = static os_log_type_t.error.getter();
      sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_10005A4F0;
      type metadata accessor for Date();
      sub_100015234();
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      *(v40 + 56) = &type metadata for String;
      *(v40 + 64) = sub_10001528C();
      *(v40 + 32) = v41;
      *(v40 + 40) = v43;
      os_log(_:dso:log:type:_:)("Failed to get weekday component for date %{public}@", 51, 2, &_mh_execute_header, v14, v39, v40);
      goto LABEL_8;
    }

    v44 = v37;
    result = (*(v9 + 8))(v11, v8);
    if ((v20 * 60) >> 64 == (60 * v20) >> 63)
    {
      v45 = 3600 * v20;
      if ((60 * v20 * 60) >> 64 == (3600 * v20) >> 63)
      {
        v46 = 60 * v29;
        if ((v29 * 60) >> 64 == (60 * v29) >> 63)
        {
          v47 = __OFADD__(v45, v46);
          v48 = v45 + v46;
          if (!v47)
          {
            if (!__OFADD__(v48, v36))
            {
              return v44;
            }

            goto LABEL_22;
          }

LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          return result;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }

  v14 = FCNotificationsLog;
  v15 = static os_log_type_t.error.getter();
  sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10005A4F0;
  type metadata accessor for Date();
  sub_100015234();
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_10001528C();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  os_log(_:dso:log:type:_:)("Failed to get hour component for date %{public}@", 48, 2, &_mh_execute_header, v14, v15, v16);
LABEL_8:

  (*(v9 + 8))(v11, v8);
  return 0;
}

uint64_t sub_1000150C8()
{
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t variable initialization expression of FeedItemPoolManager.activeRefreshTask()
{
  sub_100015140(&qword_10007E008, &qword_10005A500);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_100015140(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000151D8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000151F8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

unint64_t sub_100015234()
{
  result = qword_10007E300;
  if (!qword_10007E300)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007E300);
  }

  return result;
}

unint64_t sub_10001528C()
{
  result = qword_10007EC40;
  if (!qword_10007EC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007EC40);
  }

  return result;
}

unint64_t sub_1000152E0()
{
  result = qword_10007E310;
  if (!qword_10007E310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007E310);
  }

  return result;
}

void sub_100015334(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

unint64_t sub_100015388()
{
  result = qword_10007E318;
  if (!qword_10007E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007E318);
  }

  return result;
}

uint64_t sub_1000153DC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100015430(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  result = swift_stdlib_random();
  if (v5 * vcvtd_n_f64_u64(0, 0x35uLL) + a2 == a3)
  {
    return sub_100015430(v6, a2, a3);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DelayedNotificationTimetableFactory.Errors(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DelayedNotificationTimetableFactory.Errors(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_100015634(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100015640(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100015660(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_10001569C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_1000156EC()
{
  result = qword_10007E328;
  if (!qword_10007E328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007E328);
  }

  return result;
}

void *sub_100015740(void *a1)
{
  sub_100002288(a1, a1[3]);
  sub_100015140(&qword_10007E550, &qword_10005A728);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5[3])
  {
    sub_100002288(a1, a1[3]);
    sub_100015140(&qword_10007E558, &qword_10005A730);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v4[3])
    {
      v3 = objc_allocWithZone(type metadata accessor for LiveActivityService());
      return sub_100018390(v5, v4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100015818()
{
  sub_100015140(&qword_10007E548, &qword_10005A720);
  swift_allocObject();
  return Accessor.init(_:)();
}

uint64_t sub_100015978()
{
  v0 = type metadata accessor for Scope();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ProxyContainer.public.getter();
  type metadata accessor for LiveActivityService();
  RegistrationContainer.register<A>(_:name:factory:)();

  (*(v1 + 104))(v3, enum case for Scope.singleton(_:), v0);
  Definition.inScope(_:)();

  (*(v1 + 8))(v3, v0);
  ProxyContainer.public.getter();
  sub_100015140(&qword_10007E548, &qword_10005A720);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_100015C04(uint64_t a1, unint64_t a2, const char *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.liveActivityDaemon.getter();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_100021F24(a1, a2, &v16);
    _os_log_impl(&_mh_execute_header, v10, v11, a3, v12, 0xCu);
    sub_10001653C(v13);
  }

  return (*(v7 + 8))(v9, v6);
}

id FeedItemPoolManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100015E78(void *a1)
{
  v45 = type metadata accessor for XPCInterface();
  v2 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MachService();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10005A4F0;
  *(v10 + 56) = sub_100016438();
  *(v10 + 64) = sub_100016484();
  *(v10 + 32) = a1;
  v11 = a1;
  v12 = String.init(format:_:)();
  v14 = v13;
  static Logger.liveActivityDaemon.getter();
  v15 = v11;

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v37 = v7;
    v38 = v6;
    v40 = v2;
    v18 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v18 = 136446466;
    v39 = v12;
    *(v18 + 4) = sub_100021F24(v12, v14, &aBlock);
    *(v18 + 12) = 2082;
    v19 = [v15 serviceName];
    if (v19)
    {
      v20 = v19;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
    }

    else
    {
      v23 = 0xE500000000000000;
      v21 = 0x3E6C696E3CLL;
    }

    v26 = sub_100021F24(v21, v23, &aBlock);

    *(v18 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "will accept new XPC connection, connection=%{public}s, serviceName=%{public}s", v18, 0x16u);
    swift_arrayDestroy();

    (*(v37 + 8))(v9, v38);
    v25 = v45;
    v24 = v46;
    v12 = v39;
    v2 = v40;
  }

  else
  {

    (*(v7 + 8))(v9, v6);
    v25 = v45;
    v24 = v46;
  }

  v27 = swift_allocObject();
  *(v27 + 16) = v12;
  *(v27 + 24) = v14;
  v51 = sub_1000164DC;
  v52 = v27;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v49 = sub_10001804C;
  v50 = &unk_100072A88;
  v28 = _Block_copy(&aBlock);

  [v15 setInvalidationHandler:v28];
  _Block_release(v28);
  v29 = swift_allocObject();
  *(v29 + 16) = v12;
  *(v29 + 24) = v14;
  v51 = sub_100016518;
  v52 = v29;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v49 = sub_10001804C;
  v50 = &unk_100072AD8;
  v30 = _Block_copy(&aBlock);

  [v15 setInterruptionHandler:v30];
  _Block_release(v30);
  v31 = v41;
  static MachServices.LiveActivities.getter();
  v32 = v44;
  MachService.serviceInterface.getter();
  (*(v42 + 8))(v31, v43);
  isa = XPCInterface.asNSXPCInterface()().super.isa;
  (*(v2 + 8))(v32, v25);
  [v15 setExportedInterface:isa];

  v34 = *(v24 + OBJC_IVAR___NDLiveActivityServiceListenerDelegate_liveActivityService);
  [v15 setExportedObject:v34];
  v35 = *(v34 + OBJC_IVAR____TtC5newsd19LiveActivityService_currentConnection);
  *(v34 + OBJC_IVAR____TtC5newsd19LiveActivityService_currentConnection) = v15;

  [v15 resume];
  return 1;
}

unint64_t sub_100016438()
{
  result = qword_10007EB60;
  if (!qword_10007EB60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10007EB60);
  }

  return result;
}

unint64_t sub_100016484()
{
  result = qword_10007E600;
  if (!qword_10007E600)
  {
    sub_100016438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007E600);
  }

  return result;
}

uint64_t sub_100016500(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001653C(void *a1)
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

uint64_t sub_100016590(uint64_t a1)
{
  v22 = type metadata accessor for URL();
  v2 = *(v22 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v22);
  v21 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Scope();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC5newsd21NotificationsAssembly_cacheDirectoryFileURL;
  v18 = a1;
  ProxyContainer.public.getter();
  sub_100015140(&qword_10007E6C8, &qword_10005A7D8);
  RegistrationContainer.register<A>(_:name:factory:)();

  v20 = enum case for Scope.singleton(_:);
  v19 = *(v5 + 104);
  v16 = v4;
  v19(v7);
  Definition.inScope(_:)();

  v17 = *(v5 + 8);
  v17(v7, v4);
  ProxyContainer.public.getter();
  type metadata accessor for ScoredNotificationPool(0);
  v9 = v23 + v8;
  v10 = v21;
  v11 = v22;
  (*(v2 + 16))(v21, v9, v22);
  v12 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v13 = swift_allocObject();
  (*(v2 + 32))(v13 + v12, v10, v11);
  RegistrationContainer.register<A>(_:name:factory:)();

  v14 = v16;
  (v19)(v7, v20, v16);
  Definition.inScope(_:)();

  v17(v7, v14);
  ProxyContainer.private.getter();
  RegistrationContainer.lazy(block:)();
}

char *sub_1000168D8(void *a1)
{
  sub_100002288(a1, a1[3]);
  sub_100015140(&qword_10007E6D0, &qword_10005A7E0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v18)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_100002288(a1, a1[3]);
  sub_100015140(&qword_10007E6D8, &unk_10005A7E8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v16)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_100002288(a1, a1[3]);
  sub_100015140(&qword_10007E6E8, &unk_10005A800);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v14[3])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_100002288(a1, a1[3]);
  sub_100015140(&qword_10007E6F8, &unk_10005A820);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v3 = result;
    v4 = sub_100017518(v17, v18);
    __chkstk_darwin(v4);
    v6 = (&v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = sub_100017518(v15, v16);
    __chkstk_darwin(v8);
    v10 = (&v14[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = sub_100017214(*v6, *v10, v14, v3);
    swift_unknownObjectRelease();
    sub_10001653C(v15);
    sub_10001653C(v17);
    return v12;
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_100016B9C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002288(a1, a1[3]);
  sub_100015140(&qword_10007E6E0, &qword_10005A7F8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v9 = result;
    sub_100002288(a1, a1[3]);
    sub_100015140(&unk_10007E700, &qword_10005A830);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      v10 = result;
      (*(v5 + 16))(v7, a2, v4);
      v11 = objc_allocWithZone(type metadata accessor for ScoredNotificationPool(0));
      v12 = sub_1000441E0(v9, v10, v7);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100016D38()
{
  sub_100015140(&qword_10007E6D0, &qword_10005A7E0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100015140(&qword_10007E6D8, &unk_10005A7E8);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_100016DE4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100002288(a1, a1[3]);
  sub_100015140(&qword_10007E6F8, &unk_10005A820);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for DelayedNotificationTimetableFactory();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_100072940;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100016E78@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_100002288(a1, a1[3]);
  sub_100015140(&qword_10007E6E0, &qword_10005A7F8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  sub_100002288(a1, a1[3]);
  type metadata accessor for ScoredNotificationPool(0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = result;
  sub_100002288(a1, a1[3]);
  sub_100015140(&qword_10007E6E8, &unk_10005A800);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_100002288(a1, a1[3]);
  sub_100015140(&qword_10007E6F0, &unk_10005A810);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v7 = result;
    v8 = type metadata accessor for DelayedNotificationVendor();
    v9 = swift_allocObject();
    v9[2] = v5;
    v9[3] = v6;
    result = sub_10000390C(&v10, (v9 + 4));
    v9[9] = v7;
    a2[3] = v8;
    a2[4] = &off_1000731C8;
    *a2 = v9;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_100017000()
{
  v1 = OBJC_IVAR____TtC5newsd21NotificationsAssembly_cacheDirectoryFileURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for NotificationsAssembly(uint64_t a1)
{
  result = qword_10007E640;
  if (!qword_10007E640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000170F0(uint64_t a1)
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

id sub_1000171A4(void *a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100016B9C(a1, v4);
}

char *sub_100017214(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for DelayedNotificationTimetableFactory();
  v35[3] = v8;
  v35[4] = &off_100072940;
  v35[0] = a1;
  v9 = type metadata accessor for DelayedNotificationVendor();
  v33 = v9;
  v34 = &off_1000731C8;
  v32[0] = a2;
  v10 = type metadata accessor for DelayedNotificationScheduler();
  v11 = objc_allocWithZone(v10);
  v12 = sub_100017518(v35, v8);
  __chkstk_darwin(v12);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = sub_100017518(v32, v33);
  __chkstk_darwin(v16);
  v18 = (&v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v14;
  v21 = *v18;
  v31[3] = v8;
  v31[4] = &off_100072940;
  v30[4] = &off_1000731C8;
  v31[0] = v20;
  v30[3] = v9;
  v30[0] = v21;
  v22 = OBJC_IVAR___NDDelayedNotificationScheduler_notificationCenter;
  v23 = objc_allocWithZone(UNUserNotificationCenter);
  v24 = String._bridgeToObjectiveC()();
  v25 = [v23 initWithBundleIdentifier:v24];

  *&v11[v22] = v25;
  sub_100017568(v31, &v11[OBJC_IVAR___NDDelayedNotificationScheduler_timetableFactory]);
  sub_100017568(v30, &v11[OBJC_IVAR___NDDelayedNotificationScheduler_notificationVendor]);
  sub_100017568(a3, &v11[OBJC_IVAR___NDDelayedNotificationScheduler_notificationHistory]);
  *&v11[OBJC_IVAR___NDDelayedNotificationScheduler_configurationManager] = a4;
  v29.receiver = v11;
  v29.super_class = v10;
  swift_unknownObjectRetain();
  v26 = objc_msgSendSuper2(&v29, "init");
  [*&v26[OBJC_IVAR___NDDelayedNotificationScheduler_notificationCenter] setPrivateDelegate:v26];
  sub_10001653C(a3);
  sub_10001653C(v30);
  sub_10001653C(v31);
  sub_10001653C(v32);
  sub_10001653C(v35);
  return v26;
}

uint64_t sub_100017518(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_100017568(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1000175CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100015140(&unk_10007F290, &qword_10005A838);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - v10;
  v12 = FCCurrentQoS();
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  (*(v9 + 32))(v14 + v13, v11, v8);
  aBlock[4] = sub_1000179BC;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017D78;
  aBlock[3] = &unk_100072B50;
  v15 = _Block_copy(aBlock);

  [a2 withQualityOfService:v12 enqueueBlock:v15];
  _Block_release(v15);
}

uint64_t sub_1000177A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a1;
  v9 = sub_100015140(&unk_10007F290, &qword_10005A838);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v13 = sub_100015140(&unk_10007EB50, &qword_10005AB40);
  __chkstk_darwin(v13 - 8);
  v15 = &v20 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(v12, a5, v9);
  v17 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a3;
  *(v18 + 5) = a4;
  *(v18 + 6) = v21;
  *(v18 + 7) = a2;
  (*(v10 + 32))(&v18[v17], v12, v9);

  sub_100018090(0, 0, v15, &unk_10005A848, v18);
}

uint64_t sub_1000179BC(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100015140(&unk_10007F290, &qword_10005A838) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1000177A8(a1, a2, v6, v7, v8);
}

uint64_t sub_100017A4C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[3] = a6;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v8[6] = v9;
  *v9 = v8;
  v9[1] = sub_100017B3C;

  return v11();
}

uint64_t sub_100017B3C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100017CD8;
  }

  else
  {
    v2 = sub_100017C50;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100017C50()
{
  (*(v0 + 24))();
  sub_100015140(&unk_10007F290, &qword_10005A838);
  CheckedContinuation.resume(returning:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100017CD8()
{
  v1 = *(v0 + 56);
  (*(v0 + 24))();
  *(v0 + 16) = v1;
  sub_100015140(&unk_10007F290, &qword_10005A838);
  CheckedContinuation.resume(throwing:)();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100017D78(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_100017E24, v4);
}

uint64_t sub_100017E0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017E34(uint64_t a1)
{
  v4 = *(sub_100015140(&unk_10007F290, &qword_10005A838) - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100017F58;

  return sub_100017A4C(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_100017F58()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10001804C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100018090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100015140(&unk_10007EB50, &qword_10005AB40);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100022DA4(a3, v25 - v10, &unk_10007EB50, &qword_10005AB40);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100022E54(v11, &unk_10007EB50, &qword_10005AB40);
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

      sub_100022E54(a3, &unk_10007EB50, &qword_10005AB40);

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

  sub_100022E54(a3, &unk_10007EB50, &qword_10005AB40);
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

void *sub_100018390(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_100015140(&unk_10007EB50, &qword_10005AB40);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  *&v3[OBJC_IVAR____TtC5newsd19LiveActivityService_currentConnection] = 0;
  *&v3[OBJC_IVAR____TtC5newsd19LiveActivityService_maxSubscriptionDelay] = 0x40CC200000000000;
  sub_100017568(a1, &v3[OBJC_IVAR____TtC5newsd19LiveActivityService_liveActivityLauncher]);
  sub_100017568(a2, &v3[OBJC_IVAR____TtC5newsd19LiveActivityService_liveActivityRepository]);
  v15.receiver = v3;
  v15.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v15, "init");
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v10;
  v13 = v10;
  sub_100018090(0, 0, v9, &unk_10005A8A8, v12);

  sub_10001653C(a2);
  sub_10001653C(a1);
  return v13;
}

uint64_t sub_100018540()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100017F58;

  return sub_1000185D0();
}

uint64_t sub_1000185D0()
{
  v1[2] = v0;
  v2 = type metadata accessor for NewsroomActivityID();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for NewsLiveActivitySubscriptionState();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for ScheduledLiveActivity();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v5 = type metadata accessor for NewsLiveActivity();
  v1[13] = v5;
  v1[14] = *(v5 - 8);
  v1[15] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v1[16] = v6;
  v1[17] = *(v6 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_100018818, 0, 0);
}

uint64_t sub_100018818()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC5newsd19LiveActivityService_liveActivityRepository);
  v2 = v1[3];
  v3 = v1[4];
  sub_100002288(v1, v2);
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *v4 = v0;
  v4[1] = sub_1000188D8;

  return dispatch thunk of NewsLiveActivityRepository.activities.getter(v2, v3);
}

uint64_t sub_1000188D8(uint64_t a1)
{
  *(*v1 + 168) = a1;

  return _swift_task_switch(sub_1000189D8, 0, 0);
}

uint64_t sub_1000189D8(uint64_t a1)
{
  static Logger.liveActivityDaemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Will re-scheduled live activities.", v4, 2u);
  }

  v5 = *(v1 + 168);
  v6 = *(v1 + 152);
  v7 = *(v1 + 128);
  v8 = *(v1 + 136);

  v9 = *(v8 + 8);
  *(v1 + 176) = v9;
  v9(v6, v7);
  v10 = *(v5 + 16);
  *(v1 + 184) = v10;
  if (v10)
  {
    v11 = 0;
    v12 = *(v1 + 112);
    *(v1 + 240) = *(v12 + 80);
    *(v1 + 192) = *(v12 + 72);
    *(v1 + 200) = *(v12 + 16);
    *(v1 + 244) = enum case for NewsLiveActivitySubscriptionState.scheduled(_:);
    while (1)
    {
      *(v1 + 208) = v11;
      v13 = *(v1 + 244);
      v15 = *(v1 + 112);
      v14 = *(v1 + 120);
      v16 = *(v1 + 104);
      v18 = *(v1 + 56);
      v17 = *(v1 + 64);
      v19 = *(v1 + 48);
      (*(v1 + 200))(v14, *(v1 + 168) + ((*(v1 + 240) + 32) & ~*(v1 + 240)) + *(v1 + 192) * v11, v16);
      NewsLiveActivity.subscriptionState.getter();
      (*(v15 + 8))(v14, v16);
      if ((*(v18 + 88))(v17, v19) == v13)
      {
        break;
      }

      (*(*(v1 + 56) + 8))(*(v1 + 64), *(v1 + 48));
      v11 = *(v1 + 208) + 1;
      if (v11 == *(v1 + 184))
      {
        goto LABEL_7;
      }
    }

    v22 = *(v1 + 96);
    v23 = *(v1 + 72);
    v24 = *(v1 + 80);
    v25 = *(v1 + 64);
    (*(*(v1 + 56) + 96))(v25, *(v1 + 48));
    (*(v24 + 32))(v22, v25, v23);
    v26 = ScheduledLiveActivity.scheduleRequest.getter();
    *(v1 + 216) = v26;
    v27 = swift_task_alloc();
    *(v1 + 224) = v27;
    *v27 = v1;
    v27[1] = sub_100018CF0;

    return sub_1000194F4(v26);
  }

  else
  {
LABEL_7:

    v20 = *(v1 + 8);

    return v20();
  }
}

uint64_t sub_100018CF0()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_100019054;
  }

  else
  {

    v3 = sub_100018E0C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100018E0C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  while (1)
  {
    (*(v3 + 8))(v1, v2);
    v4 = *(v0 + 208) + 1;
    if (v4 == *(v0 + 184))
    {
      break;
    }

    *(v0 + 208) = v4;
    v5 = *(v0 + 244);
    v7 = *(v0 + 112);
    v6 = *(v0 + 120);
    v8 = *(v0 + 104);
    v10 = *(v0 + 56);
    v9 = *(v0 + 64);
    v11 = *(v0 + 48);
    (*(v0 + 200))(v6, *(v0 + 168) + ((*(v0 + 240) + 32) & ~*(v0 + 240)) + *(v0 + 192) * v4, v8);
    NewsLiveActivity.subscriptionState.getter();
    (*(v7 + 8))(v6, v8);
    if ((*(v10 + 88))(v9, v11) == v5)
    {
      v14 = *(v0 + 96);
      v15 = *(v0 + 72);
      v16 = *(v0 + 80);
      v17 = *(v0 + 64);
      (*(*(v0 + 56) + 96))(v17, *(v0 + 48));
      (*(v16 + 32))(v14, v17, v15);
      v18 = ScheduledLiveActivity.scheduleRequest.getter();
      *(v0 + 216) = v18;
      v19 = swift_task_alloc();
      *(v0 + 224) = v19;
      *v19 = v0;
      v19[1] = sub_100018CF0;

      return sub_1000194F4(v18);
    }

    v3 = *(v0 + 56);
    v1 = *(v0 + 64);
    v2 = *(v0 + 48);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100019054()
{
  v49 = v0;
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);

  static Logger.liveActivityDaemon.getter();
  (*(v4 + 16))(v2, v1, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 176);
  v9 = *(v0 + 144);
  v10 = *(v0 + 128);
  v11 = *(v0 + 88);
  v12 = *(v0 + 96);
  v13 = *(v0 + 72);
  v14 = *(v0 + 80);
  if (v7)
  {
    v42 = *(v0 + 72);
    v47 = *(v0 + 96);
    v15 = *(v0 + 32);
    v16 = *(v0 + 40);
    v46 = *(v0 + 144);
    v17 = *(v0 + 24);
    v45 = *(v0 + 128);
    v18 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v48 = v44;
    *v18 = 136446210;
    v41 = v6;
    ScheduledLiveActivity.activityID.getter();
    sub_100022E0C(&qword_10007E760, &type metadata accessor for NewsroomActivityID, &protocol conformance descriptor for NewsroomActivityID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v8;
    v21 = v20;
    (*(v15 + 8))(v16, v17);
    v22 = *(v14 + 8);
    v22(v11, v42);
    v23 = sub_100021F24(v19, v21, &v48);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v5, v41, "Failed to re-scheduled live activity, id=%{public}s.", v18, 0xCu);
    sub_10001653C(v44);

    v43(v46, v45);
    v22(v47, v42);
  }

  else
  {

    v24 = *(v14 + 8);
    v24(v11, v13);
    v8(v9, v10);
    v24(v12, v13);
  }

  while (1)
  {
    v32 = *(v0 + 208) + 1;
    if (v32 == *(v0 + 184))
    {

      v33 = *(v0 + 8);

      return v33();
    }

    *(v0 + 208) = v32;
    v25 = *(v0 + 244);
    v27 = *(v0 + 112);
    v26 = *(v0 + 120);
    v28 = *(v0 + 104);
    v30 = *(v0 + 56);
    v29 = *(v0 + 64);
    v31 = *(v0 + 48);
    (*(v0 + 200))(v26, *(v0 + 168) + ((*(v0 + 240) + 32) & ~*(v0 + 240)) + *(v0 + 192) * v32, v28);
    NewsLiveActivity.subscriptionState.getter();
    (*(v27 + 8))(v26, v28);
    if ((*(v30 + 88))(v29, v31) == v25)
    {
      break;
    }

    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  }

  v35 = *(v0 + 96);
  v36 = *(v0 + 72);
  v37 = *(v0 + 80);
  v38 = *(v0 + 64);
  (*(*(v0 + 56) + 96))(v38, *(v0 + 48));
  (*(v37 + 32))(v35, v38, v36);
  v39 = ScheduledLiveActivity.scheduleRequest.getter();
  *(v0 + 216) = v39;
  v40 = swift_task_alloc();
  *(v0 + 224) = v40;
  *v40 = v0;
  v40[1] = sub_100018CF0;

  return sub_1000194F4(v39);
}

uint64_t sub_1000194F4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Date();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for NewsroomActivityID();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = type metadata accessor for ScheduledLiveActivity();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_1000196EC, 0, 0);
}

uint64_t sub_1000196EC()
{
  v52 = v0;
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v6 = v0[14];
  LiveActivityScheduleRequest.scheduledActivity.getter();
  static Logger.liveActivityDaemon.getter();
  v7 = *(v6 + 16);
  v7(v2, v1, v5);
  v7(v3, v1, v5);
  v7(v4, v1, v5);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[17];
  v49 = v0[16];
  v12 = v0[14];
  v13 = v0[15];
  v14 = v0[12];
  v15 = v0[13];
  v17 = v0[10];
  v16 = v0[11];
  if (v10)
  {
    log = v8;
    v47 = v0[12];
    v48 = v0[10];
    v18 = v0[8];
    v19 = v0[9];
    v20 = v0[7];
    v43 = v0[5];
    v41 = v0[6];
    v42 = v0[4];
    v44 = v9;
    v21 = swift_slowAlloc();
    v51[0] = swift_slowAlloc();
    *v21 = 136446722;
    v46 = v16;
    ScheduledLiveActivity.activityID.getter();
    sub_100022E0C(&qword_10007E760, &type metadata accessor for NewsroomActivityID, &protocol conformance descriptor for NewsroomActivityID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v13;
    v24 = v23;
    (*(v18 + 8))(v19, v20);
    v25 = *(v12 + 8);
    v25(v11, v15);
    v26 = sub_100021F24(v22, v24, v51);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2082;
    v27 = ScheduledLiveActivity.backgroundTaskID.getter();
    v29 = v28;
    v25(v49, v15);
    v30 = sub_100021F24(v27, v29, v51);

    *(v21 + 14) = v30;
    *(v21 + 22) = 2082;
    ScheduledLiveActivity.scheduleDate.getter();
    sub_100022E0C(&qword_10007E300, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    (*(v43 + 8))(v41, v42);
    v50 = v25;
    v25(v40, v15);
    v34 = sub_100021F24(v31, v33, v51);

    *(v21 + 24) = v34;
    _os_log_impl(&_mh_execute_header, log, v44, "LiveActivityService: will schedule live activity id=%{public}s taskID=%{public}s date=%{public}s", v21, 0x20u);
    swift_arrayDestroy();

    (*(v46 + 8))(v47, v48);
  }

  else
  {

    v35 = *(v12 + 8);
    v35(v13, v15);
    v35(v49, v15);
    v50 = v35;
    v35(v11, v15);
    (*(v16 + 8))(v14, v17);
  }

  v36 = v0[18];
  v37 = v0[13];
  sub_10001F524();
  v50(v36, v37);

  v38 = v0[1];

  return v38();
}

uint64_t sub_100019B8C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for Calendar();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for LiveActivitySubscriptionError();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v7 = type metadata accessor for NewsroomActivityID();
  v2[27] = v7;
  v2[28] = *(v7 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  sub_100015140(&qword_10007E778, &qword_10005A908);
  v2[34] = swift_task_alloc();
  v8 = type metadata accessor for ScheduledLiveActivity();
  v2[35] = v8;
  v2[36] = *(v8 - 8);
  v2[37] = swift_task_alloc();

  return _swift_task_switch(sub_100019EF8, 0, 0);
}

uint64_t sub_100019EF8()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  NewsLiveActivity.scheduledActivityOrLogError.getter(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100022E54(v0[34], &qword_10007E778, &qword_10005A908);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[4];
    (*(v0[36] + 32))(v0[37], v0[34], v0[35]);
    ScheduledLiveActivity.activityID.getter();
    ScheduledLiveActivity.scheduleDate.getter();
    v7 = *(v6 + OBJC_IVAR____TtC5newsd19LiveActivityService_liveActivityRepository + 24);
    v8 = *(v6 + OBJC_IVAR____TtC5newsd19LiveActivityService_liveActivityRepository + 32);
    sub_100002288((v6 + OBJC_IVAR____TtC5newsd19LiveActivityService_liveActivityRepository), v7);
    v9 = swift_task_alloc();
    v0[38] = v9;
    *v9 = v0;
    v9[1] = sub_10001A188;
    v10 = v0[33];

    return dispatch thunk of NewsLiveActivityRepository.removeActivity(identifier:)(v10, v7, v8);
  }
}

uint64_t sub_10001A188()
{

  return _swift_task_switch(sub_10001A284, 0, 0);
}

uint64_t sub_10001A284(uint64_t a1)
{
  v80 = v1;
  v2 = v1[28];
  v3 = v1[24];
  v4 = v1[17];
  v5 = v1[18];
  Date.addingTimeInterval(_:)();
  static Date.now.getter();
  v6 = static Date.< infix(_:_:)();
  v7 = *(v5 + 8);
  v1[39] = v7;
  v1[40] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v3, v4);
  v8 = (v2 + 16);
  v9 = v1[33];
  v10 = v1[27];
  if (v6)
  {
    v11 = v1[32];
    static Logger.liveActivityDaemon.getter();
    v12 = *v8;
    v1[41] = *v8;
    v1[42] = v8 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v11, v9, v10);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v1[32];
    v17 = v1[27];
    v18 = v1[28];
    v19 = v1[16];
    v21 = v1[11];
    v20 = v1[12];
    if (v15)
    {
      v78 = v1[11];
      v22 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v79 = v76;
      *v22 = 136446210;
      sub_100022E0C(&qword_10007E760, &type metadata accessor for NewsroomActivityID, &protocol conformance descriptor for NewsroomActivityID);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v19;
      v25 = v24;
      v72 = v14;
      v26 = *(v18 + 8);
      v26(v16, v17);
      v27 = sub_100021F24(v23, v25, &v79);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v13, v72, "Will request start of live activity id=%{public}s", v22, 0xCu);
      sub_10001653C(v76);

      v28 = *(v20 + 8);
      v28(v74, v78);
    }

    else
    {

      v26 = *(v18 + 8);
      v26(v16, v17);
      v28 = *(v20 + 8);
      v28(v19, v21);
    }

    v1[43] = v28;
    v1[44] = v26;
    v56 = (v1[4] + OBJC_IVAR____TtC5newsd19LiveActivityService_liveActivityLauncher);
    v57 = v56[3];
    v58 = v56[4];
    sub_100002288(v56, v57);
    v59 = swift_task_alloc();
    v1[45] = v59;
    *v59 = v1;
    v59[1] = sub_10001AA50;
    v60 = v1[33];

    return dispatch thunk of NewsLiveActivityLauncherType.startActivity(activityID:)(v60, v57, v58);
  }

  else
  {
    v77 = v7;
    v29 = v1[31];
    v30 = v1[26];
    v31 = v1[23];
    v32 = v1[17];
    v33 = v1[18];
    static Logger.liveActivityDaemon.getter();
    (*v8)(v29, v9, v10);
    (*(v33 + 16))(v31, v30, v32);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v1[36];
    v75 = v1[35];
    v71 = v1[37];
    v73 = v1[33];
    v38 = v1[31];
    v39 = v1[27];
    v40 = v1[28];
    v69 = v1[25];
    v70 = v1[26];
    v41 = v1[23];
    v42 = v1[17];
    v43 = v1[12];
    v67 = v1[11];
    v68 = v1[15];
    if (v36)
    {
      log = v34;
      v44 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v44 = 136446466;
      sub_100022E0C(&qword_10007E760, &type metadata accessor for NewsroomActivityID, &protocol conformance descriptor for NewsroomActivityID);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v39;
      v66 = v39;
      v47 = v45;
      v64 = v35;
      v49 = v48;
      v50 = *(v40 + 8);
      v50(v38, v46);
      v51 = sub_100021F24(v47, v49, &v79);

      *(v44 + 4) = v51;
      *(v44 + 12) = 2082;
      sub_100022E0C(&qword_10007E300, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;
      v77(v41, v42);
      v55 = sub_100021F24(v52, v54, &v79);

      *(v44 + 14) = v55;
      _os_log_impl(&_mh_execute_header, log, v64, "Activity too old to subscribe, id=%{public}s scheduleDate=%{public}s", v44, 0x16u);
      swift_arrayDestroy();

      (*(v43 + 8))(v68, v67);
      v77(v69, v42);
      v77(v70, v42);
      v50(v73, v66);
      (*(v37 + 8))(v71, v75);
    }

    else
    {

      v77(v41, v42);
      v61 = *(v40 + 8);
      v61(v38, v39);
      (*(v43 + 8))(v68, v67);
      v77(v69, v42);
      v77(v70, v42);
      v61(v73, v39);
      (*(v37 + 8))(v71, v75);
    }

    v62 = v1[1];

    return v62();
  }
}

uint64_t sub_10001AA50()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_10001AD2C;
  }

  else
  {
    v2 = sub_10001AB64;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001AB64()
{
  v1 = v0[44];
  v2 = v0[39];
  v3 = v0[36];
  v10 = v0[35];
  v11 = v0[37];
  v4 = v0[33];
  v5 = v0[27];
  v6 = v0[26];
  v7 = v0[17];
  v2(v0[25], v7);
  v2(v6, v7);
  v1(v4, v5);
  (*(v3 + 8))(v11, v10);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10001AD2C()
{
  v80 = v0;
  v0[2] = v0[46];
  swift_errorRetain();
  sub_100015140(&unk_10007EC50, &qword_10005A910);
  if (swift_dynamicCast())
  {
    if ((*(v0[9] + 88))(v0[10], v0[8]) == enum case for LiveActivitySubscriptionError.liveActivityHasNotStarted(_:))
    {
      v1 = v0[22];
      v71 = v0[33];
      v73 = v0[41];
      v2 = v0[30];
      v68 = v0[27];
      v75 = v0[21];
      v4 = v0[17];
      v3 = v0[18];
      v5 = v0[9];
      v6 = v0[10];
      v7 = v0[8];

      (*(v5 + 96))(v6, v7);
      v66 = *(v3 + 32);
      v66(v1, v6, v4);
      static Logger.liveActivityDaemon.getter();
      v73(v2, v71, v68);
      v65 = *(v3 + 16);
      v65(v75, v1, v4);
      v8 = Logger.logObject.getter();
      v64 = static os_log_type_t.default.getter();
      v9 = os_log_type_enabled(v8, v64);
      v10 = v0[43];
      v69 = v0[44];
      v72 = v0[39];
      v11 = v0[30];
      v12 = v0[27];
      v13 = v0[21];
      v14 = v0[17];
      v15 = v0[14];
      v77 = v0[11];
      if (v9)
      {
        log = v8;
        v16 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *v16 = 136446466;
        sub_100022E0C(&qword_10007E760, &type metadata accessor for NewsroomActivityID, &protocol conformance descriptor for NewsroomActivityID);
        v63 = v10;
        v17 = dispatch thunk of CustomStringConvertible.description.getter();
        v61 = v15;
        v19 = v18;
        v69(v11, v12);
        v20 = sub_100021F24(v17, v19, &v79);

        *(v16 + 4) = v20;
        *(v16 + 12) = 2082;
        sub_100022E0C(&qword_10007E300, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        v23 = v22;
        v72(v13, v14);
        v24 = sub_100021F24(v21, v23, &v79);

        *(v16 + 14) = v24;
        _os_log_impl(&_mh_execute_header, log, v64, "Attempted to subscribe to live activity (%{public}s) that hasn't started yet. Will re-schedule for activity start date: %{public}s", v16, 0x16u);
        swift_arrayDestroy();

        v63(v61, v77);
      }

      else
      {

        v72(v13, v14);
        v69(v11, v12);
        v10(v15, v77);
      }

      v52 = v0[39];
      v53 = v0[24];
      v54 = v0[17];
      v56 = v0[6];
      v55 = v0[7];
      v57 = v0[5];
      static Date.now.getter();
      static Calendar.current.getter();
      Date.addSeconds(_:calendar:)();
      (*(v56 + 8))(v55, v57);
      v52(v53, v54);
      sub_100022E0C(&qword_10007F2E0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      if (dispatch thunk of static Comparable.>= infix(_:_:)())
      {
        (v0[39])(v0[19], v0[17]);
        v65(v0[20], v0[22], v0[17]);
      }

      else
      {
        v66(v0[20], v0[19], v0[17]);
      }

      v58 = swift_task_alloc();
      v0[47] = v58;
      *v58 = v0;
      v58[1] = sub_10001B57C;
      v59 = v0[20];
      v60 = v0[3];

      return sub_10001BFFC(v60, v59);
    }

    (*(v0[9] + 8))(v0[10], v0[8]);
  }

  v25 = v0[41];
  v26 = v0[33];
  v27 = v0[29];
  v28 = v0[27];

  static Logger.liveActivityDaemon.getter();
  v25(v27, v26, v28);
  swift_errorRetain();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v67 = v0[44];
    v78 = v0[43];
    v32 = v0[28];
    v31 = v0[29];
    v33 = v0[27];
    v74 = v0[11];
    v76 = v0[13];
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v79 = v70;
    *v34 = 136446466;
    sub_100022E0C(&qword_10007E760, &type metadata accessor for NewsroomActivityID, &protocol conformance descriptor for NewsroomActivityID);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    v39 = v32 + 8;
    v67(v31, v33);
    v40 = sub_100021F24(v36, v38, &v79);

    *(v34 + 4) = v40;
    *(v34 + 12) = 2114;
    swift_errorRetain();
    v41 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 14) = v41;
    *v35 = v41;
    _os_log_impl(&_mh_execute_header, v29, v30, "Failed to subscribe to live activity id=%{public}s, error: %{public}@", v34, 0x16u);
    sub_100022E54(v35, &qword_10007E768, &qword_10005BCE0);

    sub_10001653C(v70);

    v78(v76, v74);
  }

  else
  {
    v43 = v0[43];
    v42 = v0[44];
    v45 = v0[28];
    v44 = v0[29];
    v46 = v0[27];
    v47 = v0[13];
    v48 = v0[11];

    v39 = v45 + 8;
    v42(v44, v46);
    v43(v47, v48);
  }

  v0[48] = v39;
  v49 = swift_task_alloc();
  v0[49] = v49;
  *v49 = v0;
  v49[1] = sub_10001B870;
  v50 = v0[3];

  return sub_10001D08C(v50);
}

uint64_t sub_10001B57C()
{

  return _swift_task_switch(sub_10001B678, 0, 0);
}

uint64_t sub_10001B678()
{
  v1 = v0[39];
  v2 = v0[36];
  v13 = v0[37];
  v11 = v0[44];
  v12 = v0[35];
  v10 = v0[33];
  v3 = v0[27];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[22];
  v7 = v0[17];
  v1(v0[20], v7);
  v1(v6, v7);
  v1(v5, v7);
  v1(v4, v7);
  v11(v10, v3);
  (*(v2 + 8))(v13, v12);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10001B870()
{

  return _swift_task_switch(sub_10001B96C, 0, 0);
}

uint64_t sub_10001B96C()
{
  v1 = v0[44];
  v2 = v0[39];
  v3 = v0[36];
  v12 = v0[37];
  v11 = v0[35];
  v4 = v0[33];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[25];
  v8 = v0[17];

  v2(v7, v8);
  v2(v6, v8);
  v1(v4, v5);
  (*(v3 + 8))(v12, v11);

  v9 = v0[1];

  return v9();
}

uint64_t NewsLiveActivity.scheduledActivityOrLogError.getter@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = type metadata accessor for NewsLiveActivity();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v33 = *(v6 - 8);
  v34 = v6;
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NewsLiveActivitySubscriptionState();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v29 - v14;
  NewsLiveActivity.subscriptionState.getter();
  if ((*(v10 + 88))(v15, v9) == enum case for NewsLiveActivitySubscriptionState.scheduled(_:))
  {
    (*(v10 + 96))(v15, v9);
    v16 = type metadata accessor for ScheduledLiveActivity();
    v17 = v35;
    v18 = *(v16 - 8);
    (*(v18 + 32))(v35, v15, v16);
    return (*(v18 + 56))(v17, 0, 1, v16);
  }

  else
  {
    v32 = *(v10 + 8);
    v32(v15, v9);
    static Logger.liveActivityDaemon.getter();
    (*(v3 + 16))(v5, v1, v2);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v29 = v22;
      v31 = swift_slowAlloc();
      v36 = v31;
      *v22 = 136446210;
      v30 = v21;
      NewsLiveActivity.subscriptionState.getter();
      sub_100022E0C(&qword_10007E710, &type metadata accessor for NewsLiveActivitySubscriptionState, &protocol conformance descriptor for NewsLiveActivitySubscriptionState);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      v32(v13, v9);
      (*(v3 + 8))(v5, v2);
      v26 = sub_100021F24(v23, v25, &v36);

      v27 = v29;
      *(v29 + 1) = v26;
      _os_log_impl(&_mh_execute_header, v20, v30, "Unexpected subscription state. Must be .scheduled(). Is: %{public}s", v27, 0xCu);
      sub_10001653C(v31);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    (*(v33 + 8))(v8, v34);
    v28 = type metadata accessor for ScheduledLiveActivity();
    return (*(*(v28 - 8) + 56))(v35, 1, 1, v28);
  }
}

uint64_t sub_10001BFFC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for NewsroomActivityID();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  sub_100015140(&qword_10007E780, &qword_10005A928);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  sub_100015140(&qword_10007E788, &unk_10005A930);
  v3[13] = swift_task_alloc();
  v6 = type metadata accessor for NewsLiveActivity();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  sub_100015140(&qword_10007E790, &qword_10005BD10);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[20] = v7;
  v3[21] = *(v7 - 8);
  v3[22] = swift_task_alloc();
  sub_100015140(&qword_10007E778, &qword_10005A908);
  v3[23] = swift_task_alloc();
  v8 = type metadata accessor for ScheduledLiveActivity();
  v3[24] = v8;
  v3[25] = *(v8 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_10001C340, 0, 0);
}

uint64_t sub_10001C340()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  NewsLiveActivity.scheduledActivityOrLogError.getter(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100022E54(v0[23], &qword_10007E778, &qword_10005A908);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v25 = v0[26];
    v6 = v0[25];
    v26 = v0[24];
    v7 = v0[22];
    v9 = v0[20];
    v8 = v0[21];
    v11 = v0[18];
    v10 = v0[19];
    v27 = v0[13];
    v28 = v0[12];
    v12 = v0[3];
    v29 = v0[11];
    (*(v6 + 32))();
    UUID.init()();
    UUID.uuidString.getter();
    (*(v8 + 8))(v7, v9);
    v13 = type metadata accessor for Date();
    v14 = *(v13 - 8);
    v15 = *(v14 + 16);
    v15(v10, v12, v13);
    v16 = *(v14 + 56);
    v16(v10, 0, 1, v13);
    v15(v11, v12, v13);
    v16(v11, 0, 1, v13);
    v17 = v16;
    ScheduledLiveActivity.with(backgroundTaskIDSuffix:scheduleDate:originalScheduleDate:retryCount:scheduleDelay:scheduleTimeWindow:)();

    sub_100022E54(v11, &qword_10007E790, &qword_10005BD10);
    sub_100022E54(v10, &qword_10007E790, &qword_10005BD10);
    (*(v6 + 16))(v27, v25, v26);
    v18 = enum case for NewsLiveActivitySubscriptionState.scheduled(_:);
    v19 = type metadata accessor for NewsLiveActivitySubscriptionState();
    v20 = *(v19 - 8);
    (*(v20 + 104))(v27, v18, v19);
    (*(v20 + 56))(v27, 0, 1, v19);
    v17(v10, 1, 1, v13);
    v21 = type metadata accessor for NewsLiveActivityChangeSource();
    v22 = *(*(v21 - 8) + 56);
    v22(v28, 1, 1, v21);
    v22(v29, 1, 1, v21);
    NewsLiveActivity.with(subscriptionState:lastUpdatedContentDate:subscriptionSource:dismissalSource:)();
    sub_100022E54(v29, &qword_10007E780, &qword_10005A928);
    sub_100022E54(v28, &qword_10007E780, &qword_10005A928);
    sub_100022E54(v10, &qword_10007E790, &qword_10005BD10);
    sub_100022E54(v27, &qword_10007E788, &unk_10005A930);
    v23 = swift_task_alloc();
    v0[28] = v23;
    *v23 = v0;
    v23[1] = sub_10001C83C;
    v24 = v0[17];

    return sub_10001E76C(v24);
  }
}

uint64_t sub_10001C83C()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_10001CC60;
  }

  else
  {
    v2 = sub_10001C950;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001C950()
{
  v1 = (v0[4] + OBJC_IVAR____TtC5newsd19LiveActivityService_liveActivityRepository);
  v2 = v1[3];
  v3 = v1[4];
  sub_100002288(v1, v2);
  v4 = swift_task_alloc();
  v0[30] = v4;
  *v4 = v0;
  v4[1] = sub_10001CA18;
  v5 = v0[17];

  return dispatch thunk of NewsLiveActivityRepository.store(_:)(v5, v2, v3);
}

uint64_t sub_10001CA18()
{

  return _swift_task_switch(sub_10001CB14, 0, 0);
}

uint64_t sub_10001CB14()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  (*(v0[15] + 8))(v0[17], v0[14]);
  v5 = *(v4 + 8);
  v5(v1, v3);
  v5(v2, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10001CC60(uint64_t a1)
{
  v45 = v1;
  v3 = v1[15];
  v2 = v1[16];
  v4 = v1[14];
  v5 = v1[2];
  static Logger.liveActivityDaemon.getter();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  LOBYTE(v4) = static os_log_type_t.error.getter();

  v40 = v4;
  v7 = os_log_type_enabled(v6, v4);
  v9 = v1[26];
  v8 = v1[27];
  v10 = v1[24];
  v11 = v1[25];
  v12 = v1[16];
  v13 = v1[17];
  v14 = v1[15];
  v43 = v1[14];
  v15 = v1[9];
  v42 = v1[10];
  v41 = v1[8];
  if (v7)
  {
    v38 = v1[17];
    v39 = v1[26];
    v17 = v1[6];
    v16 = v1[7];
    v32 = v1[9];
    v18 = v1[5];
    v37 = v1[24];
    v19 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v44 = v35;
    *v19 = 136446466;
    v33 = v6;
    NewsLiveActivity.id.getter();
    sub_100022E0C(&qword_10007E760, &type metadata accessor for NewsroomActivityID, &protocol conformance descriptor for NewsroomActivityID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v8;
    v22 = v21;
    (*(v17 + 8))(v16, v18);
    v23 = *(v14 + 8);
    v23(v12, v43);
    v24 = sub_100021F24(v20, v22, &v44);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2114;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v25;
    *v34 = v25;
    _os_log_impl(&_mh_execute_header, v33, v40, "Failed to re-schedule live activity id=%{public}s, error: %{public}@", v19, 0x16u);
    sub_100022E54(v34, &qword_10007E768, &qword_10005BCE0);

    sub_10001653C(v35);

    (*(v32 + 8))(v42, v41);
    v23(v38, v43);
    v26 = *(v11 + 8);
    v26(v39, v37);
    v27 = v36;
    v28 = v37;
  }

  else
  {

    v29 = *(v14 + 8);
    v29(v12, v43);
    (*(v15 + 8))(v42, v41);
    v29(v13, v43);
    v26 = *(v11 + 8);
    v26(v9, v10);
    v27 = v8;
    v28 = v10;
  }

  v26(v27, v28);

  v30 = v1[1];

  return v30();
}

uint64_t sub_10001D08C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for NewsroomActivityID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  sub_100015140(&qword_10007E780, &qword_10005A928);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  sub_100015140(&qword_10007E788, &unk_10005A930);
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for NewsLiveActivity();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v2[21] = v6;
  v2[22] = *(v6 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  sub_100015140(&qword_10007E790, &qword_10005BD10);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v2[28] = v7;
  v2[29] = *(v7 - 8);
  v2[30] = swift_task_alloc();
  sub_100015140(&qword_10007E778, &qword_10005A908);
  v2[31] = swift_task_alloc();
  v8 = type metadata accessor for ScheduledLiveActivity();
  v2[32] = v8;
  v2[33] = *(v8 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();

  return _swift_task_switch(sub_10001D470, 0, 0);
}

uint64_t sub_10001D470()
{
  v86 = v0;
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];
  NewsLiveActivity.scheduledActivityOrLogError.getter(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100022E54(v0[31], &qword_10007E778, &qword_10005A908);
    goto LABEL_13;
  }

  v4 = v0[30];
  v5 = v0[28];
  v6 = v0[29];
  v8 = v0[26];
  v7 = v0[27];
  v10 = v0[21];
  v9 = v0[22];
  (*(v0[33] + 32))(v0[35], v0[31], v0[32]);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v6 + 8))(v4, v5);
  ScheduledLiveActivity.retryInterval.getter();
  Date.init(timeIntervalSinceNow:)();
  v11 = *(v9 + 56);
  v11(v7, 0, 1, v10);
  v11(v8, 1, 1, v10);
  result = ScheduledLiveActivity.retryCount.getter();
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v14 = v0[26];
  v13 = v0[27];
  ScheduledLiveActivity.retryScheduleTimeWindow.getter();
  ScheduledLiveActivity.with(backgroundTaskIDSuffix:scheduleDate:originalScheduleDate:retryCount:scheduleDelay:scheduleTimeWindow:)();

  sub_100022E54(v14, &qword_10007E790, &qword_10005BD10);
  sub_100022E54(v13, &qword_10007E790, &qword_10005BD10);
  v15 = ScheduledLiveActivity.retryCount.getter();
  if (ScheduledLiveActivity.retryCountMax.getter() < v15)
  {
    v16 = v0[18];
    v17 = v0[15];
    v18 = v0[16];
    v19 = v0[2];
    static Logger.liveActivityDaemon.getter();
    (*(v18 + 16))(v16, v19, v17);
    v20 = Logger.logObject.getter();
    v82 = static os_log_type_t.default.getter();
    v21 = os_log_type_enabled(v20, v82);
    v23 = v0[34];
    v22 = v0[35];
    v25 = v0[32];
    v24 = v0[33];
    v26 = v0[18];
    v27 = v0[16];
    v83 = v0[15];
    v28 = v0[10];
    v29 = v0[8];
    v84 = v0[7];
    if (v21)
    {
      v80 = v0[32];
      v81 = v0[35];
      v30 = v0[5];
      v31 = v0[6];
      v72 = v0[4];
      v79 = v0[10];
      buf = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v85 = v78;
      *buf = 136446210;
      log = v20;
      NewsLiveActivity.id.getter();
      sub_100022E0C(&qword_10007E760, &type metadata accessor for NewsroomActivityID, &protocol conformance descriptor for NewsroomActivityID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v23;
      v34 = v33;
      (*(v30 + 8))(v31, v72);
      (*(v27 + 8))(v26, v83);
      v35 = sub_100021F24(v32, v34, &v85);

      v36 = buf;
      *(buf + 4) = v35;
      v37 = "Reached maximum number of retries. Will not retry scheduling task for activity id=%{public}s";
LABEL_10:
      _os_log_impl(&_mh_execute_header, log, v82, v37, v36, 0xCu);
      sub_10001653C(v78);

      (*(v29 + 8))(v79, v84);
      v56 = *(v24 + 8);
      v56(v77, v80);
      v56(v81, v80);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v39 = v0[24];
  v38 = v0[25];
  v41 = v0[22];
  v40 = v0[23];
  v42 = v0[21];
  ScheduledLiveActivity.scheduleDate.getter();
  ScheduledLiveActivity.originalScheduleDate.getter();
  Date.addingTimeInterval(_:)();
  v43 = *(v41 + 8);
  v43(v40, v42);
  sub_100022E0C(&qword_10007F2E0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v44 = dispatch thunk of static Comparable.< infix(_:_:)();
  v43(v39, v42);
  v43(v38, v42);
  if (v44)
  {
    v45 = v0[19];
    v46 = v0[15];
    v47 = v0[16];
    v48 = v0[2];
    static Logger.liveActivityDaemon.getter();
    (*(v47 + 16))(v45, v48, v46);
    v20 = Logger.logObject.getter();
    v82 = static os_log_type_t.default.getter();
    v49 = os_log_type_enabled(v20, v82);
    v23 = v0[34];
    v22 = v0[35];
    v25 = v0[32];
    v24 = v0[33];
    v26 = v0[19];
    v27 = v0[16];
    v83 = v0[15];
    v28 = v0[11];
    v29 = v0[8];
    v84 = v0[7];
    if (v49)
    {
      v80 = v0[32];
      v81 = v0[35];
      v50 = v0[5];
      v51 = v0[6];
      v73 = v0[4];
      v79 = v0[11];
      bufa = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v85 = v78;
      *bufa = 136446210;
      log = v20;
      NewsLiveActivity.id.getter();
      sub_100022E0C(&qword_10007E760, &type metadata accessor for NewsroomActivityID, &protocol conformance descriptor for NewsroomActivityID);
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v23;
      v54 = v53;
      (*(v50 + 8))(v51, v73);
      (*(v27 + 8))(v26, v83);
      v55 = sub_100021F24(v52, v54, &v85);

      v36 = bufa;
      *(bufa + 4) = v55;
      v37 = "Retry schedule date exceeds maximum subscription delay. Will not retry scheduling task for activity id=%{public}s";
      goto LABEL_10;
    }

LABEL_11:

    (*(v27 + 8))(v26, v83);
    (*(v29 + 8))(v28, v84);
    v57 = *(v24 + 8);
    v57(v23, v25);
    v57(v22, v25);
LABEL_13:

    v58 = v0[1];

    return v58();
  }

  v59 = v0[27];
  v60 = v0[21];
  v62 = v0[13];
  v61 = v0[14];
  v63 = v0[12];
  (*(v0[33] + 16))(v61, v0[34], v0[32]);
  v64 = enum case for NewsLiveActivitySubscriptionState.scheduled(_:);
  v65 = v11;
  v66 = type metadata accessor for NewsLiveActivitySubscriptionState();
  v67 = *(v66 - 8);
  (*(v67 + 104))(v61, v64, v66);
  (*(v67 + 56))(v61, 0, 1, v66);
  v65(v59, 1, 1, v60);
  v68 = type metadata accessor for NewsLiveActivityChangeSource();
  v69 = *(*(v68 - 8) + 56);
  v69(v62, 1, 1, v68);
  v69(v63, 1, 1, v68);
  NewsLiveActivity.with(subscriptionState:lastUpdatedContentDate:subscriptionSource:dismissalSource:)();
  sub_100022E54(v63, &qword_10007E780, &qword_10005A928);
  sub_100022E54(v62, &qword_10007E780, &qword_10005A928);
  sub_100022E54(v59, &qword_10007E790, &qword_10005BD10);
  sub_100022E54(v61, &qword_10007E788, &unk_10005A930);
  v70 = swift_task_alloc();
  v0[36] = v70;
  *v70 = v0;
  v70[1] = sub_10001DE6C;
  v71 = v0[20];

  return sub_10001E76C(v71);
}

uint64_t sub_10001DE6C()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_10001E2E4;
  }

  else
  {
    v2 = sub_10001DF80;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001DF80()
{
  v1 = (v0[3] + OBJC_IVAR____TtC5newsd19LiveActivityService_liveActivityRepository);
  v2 = v1[3];
  v3 = v1[4];
  sub_100002288(v1, v2);
  v4 = swift_task_alloc();
  v0[38] = v4;
  *v4 = v0;
  v4[1] = sub_10001E048;
  v5 = v0[20];

  return dispatch thunk of NewsLiveActivityRepository.store(_:)(v5, v2, v3);
}

uint64_t sub_10001E048()
{

  return _swift_task_switch(sub_10001E144, 0, 0);
}

uint64_t sub_10001E144()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  (*(v0[16] + 8))(v0[20], v0[15]);
  v5 = *(v4 + 8);
  v5(v1, v3);
  v5(v2, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10001E2E4(uint64_t a1)
{
  v45 = v1;
  v3 = v1[16];
  v2 = v1[17];
  v4 = v1[15];
  v5 = v1[2];
  static Logger.liveActivityDaemon.getter();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  LOBYTE(v4) = static os_log_type_t.error.getter();

  v40 = v4;
  v7 = os_log_type_enabled(v6, v4);
  v9 = v1[34];
  v8 = v1[35];
  v10 = v1[32];
  v11 = v1[33];
  v12 = v1[20];
  v13 = v1[16];
  v14 = v1[17];
  v43 = v1[15];
  v15 = v1[8];
  v42 = v1[9];
  v41 = v1[7];
  if (v7)
  {
    v38 = v1[20];
    v39 = v1[34];
    v17 = v1[5];
    v16 = v1[6];
    v32 = v1[8];
    v18 = v1[4];
    v37 = v1[32];
    v19 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v44 = v35;
    *v19 = 136446466;
    v33 = v6;
    NewsLiveActivity.id.getter();
    sub_100022E0C(&qword_10007E760, &type metadata accessor for NewsroomActivityID, &protocol conformance descriptor for NewsroomActivityID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v8;
    v22 = v21;
    (*(v17 + 8))(v16, v18);
    v23 = *(v13 + 8);
    v23(v14, v43);
    v24 = sub_100021F24(v20, v22, &v44);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2114;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v25;
    *v34 = v25;
    _os_log_impl(&_mh_execute_header, v33, v40, "Failed to re-schedule live activity id=%{public}s, error: %{public}@", v19, 0x16u);
    sub_100022E54(v34, &qword_10007E768, &qword_10005BCE0);

    sub_10001653C(v35);

    (*(v32 + 8))(v42, v41);
    v23(v38, v43);
    v26 = *(v11 + 8);
    v26(v39, v37);
    v27 = v36;
    v28 = v37;
  }

  else
  {

    v29 = *(v13 + 8);
    v29(v14, v43);
    (*(v15 + 8))(v42, v41);
    v29(v12, v43);
    v26 = *(v11 + 8);
    v26(v9, v10);
    v27 = v8;
    v28 = v10;
  }

  v26(v27, v28);

  v30 = v1[1];

  return v30();
}

uint64_t sub_10001E76C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for NewsroomActivityID();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  sub_100015140(&qword_10007E778, &qword_10005A908);
  v2[19] = swift_task_alloc();
  v6 = type metadata accessor for ScheduledLiveActivity();
  v2[20] = v6;
  v2[21] = *(v6 - 8);
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_10001E9C0, 0, 0);
}

uint64_t sub_10001E9C0()
{
  v84 = v0;
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  NewsLiveActivity.scheduledActivityOrLogError.getter(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100022E54(v0[19], &qword_10007E778, &qword_10005A908);
LABEL_3:

    v4 = v0[1];

    return v4();
  }

  v5 = v0[17];
  v6 = v0[13];
  v7 = v0[14];
  v8 = v0[9];
  (*(v0[21] + 32))(v0[22], v0[19], v0[20]);
  ScheduledLiveActivity.scheduleDate.getter();
  ScheduledLiveActivity.activityID.getter();
  v80 = ScheduledLiveActivity.backgroundTaskID.getter();
  v81 = v9;
  static Date.now.getter();
  sub_100022E0C(&qword_10007F2E0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v10 = dispatch thunk of static Comparable.< infix(_:_:)();
  v11 = *(v7 + 8);
  v7 += 8;
  v0[23] = v11;
  v0[24] = v7 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v82 = v11;
  v11(v5, v6);
  v12 = (v8 + 16);
  v13 = (v7 + 8);
  v14 = v0[18];
  v16 = v0[12];
  v15 = v0[13];
  v17 = v0[8];
  if (v10)
  {
    v18 = v0[15];
    v19 = v0[10];
    static Logger.liveActivityDaemon.getter();
    (*v12)(v19, v16, v17);
    (*v13)(v18, v14, v15);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    v74 = v21;
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[15];
    v76 = v0[13];
    v25 = v0[9];
    v24 = v0[10];
    v26 = v0[8];
    v28 = v0[5];
    v27 = v0[6];
    v29 = v0[4];
    if (v22)
    {
      v72 = v0[4];
      v30 = swift_slowAlloc();
      v83[0] = swift_slowAlloc();
      *v30 = 136446722;
      sub_100022E0C(&qword_10007E760, &type metadata accessor for NewsroomActivityID, &protocol conformance descriptor for NewsroomActivityID);
      v69 = v27;
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      v78 = *(v25 + 8);
      v78(v24, v26);
      v34 = sub_100021F24(v31, v33, v83);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2082;
      v35 = sub_100021F24(v80, v81, v83);

      *(v30 + 14) = v35;
      *(v30 + 22) = 2082;
      sub_100022E0C(&qword_10007E300, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      v82(v23, v76);
      v39 = sub_100021F24(v36, v38, v83);

      *(v30 + 24) = v39;
      _os_log_impl(&_mh_execute_header, v20, v74, "LiveActivityService: will schedule live activity id=%{public}s taskID=%{public}s date=%{public}s", v30, 0x20u);
      swift_arrayDestroy();

      (*(v28 + 8))(v69, v72);
    }

    else
    {

      v82(v23, v76);
      v78 = *(v25 + 8);
      v78(v24, v26);
      (*(v28 + 8))(v27, v29);
    }

    sub_10001F524();
    v63 = v0[23];
    v65 = v0[21];
    v64 = v0[22];
    v66 = v0[20];
    v67 = v0[18];
    v68 = v0[13];
    v78(v0[12], v0[8]);
    v63(v67, v68);
    (*(v65 + 8))(v64, v66);
    goto LABEL_3;
  }

  v40 = v0[16];
  v41 = v0[11];
  static Logger.liveActivityDaemon.getter();
  (*v12)(v41, v16, v17);
  (*v13)(v40, v14, v15);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  v44 = os_log_type_enabled(v42, v43);
  v45 = v0[16];
  v79 = v0[13];
  v46 = v0[11];
  v47 = v0[8];
  v48 = v0[9];
  v49 = v0[7];
  v51 = v0[4];
  v50 = v0[5];
  if (v44)
  {
    v71 = v0[16];
    v52 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v83[0] = v77;
    *v52 = 136446466;
    sub_100022E0C(&qword_10007E760, &type metadata accessor for NewsroomActivityID, &protocol conformance descriptor for NewsroomActivityID);
    v73 = v49;
    v75 = v51;
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v54;
    v70 = v43;
    v56 = *(v48 + 8);
    v56(v46, v47);
    v57 = sub_100021F24(v53, v55, v83);

    *(v52 + 4) = v57;
    *(v52 + 12) = 2048;
    Date.timeIntervalSinceReferenceDate.getter();
    v59 = v58;
    v82(v71, v79);
    *(v52 + 14) = v59;
    _os_log_impl(&_mh_execute_header, v42, v70, "LiveActivityService: will immediately start live activity. Schedule date has passed. id=%{public}s date=%f", v52, 0x16u);
    sub_10001653C(v77);

    (*(v50 + 8))(v73, v75);
  }

  else
  {

    v82(v45, v79);
    v56 = *(v48 + 8);
    v56(v46, v47);
    (*(v50 + 8))(v49, v51);
  }

  v0[25] = v56;
  sub_100022714(v80, v81);

  v61 = swift_task_alloc();
  v0[26] = v61;
  *v61 = v0;
  v61[1] = sub_10001F2EC;
  v62 = v0[2];

  return sub_100019B8C(v62);
}

uint64_t sub_10001F2EC()
{

  return _swift_task_switch(sub_10001F3E8, 0, 0);
}

uint64_t sub_10001F3E8()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v5 = *(v0 + 144);
  v6 = *(v0 + 104);
  (*(v0 + 200))(*(v0 + 96), *(v0 + 64));
  v2(v5, v6);
  (*(v4 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

void sub_10001F524()
{
  v0 = type metadata accessor for Date();
  v47 = *(v0 - 8);
  v48 = v0;
  __chkstk_darwin(v0);
  v2 = &v47 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Logger();
  v53 = *(v3 - 8);
  v54 = v3;
  v4 = __chkstk_darwin(v3);
  v50 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v47 - v7;
  __chkstk_darwin(v6);
  v10 = &v47 - v9;
  v11 = ScheduledLiveActivity.backgroundTaskID.getter();
  v13 = v12;
  sub_10001FC04(v11, v12);
  v49 = objc_opt_self();
  v14 = [v49 sharedScheduler];
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 taskRequestForIdentifier:v15];

  v52 = v8;
  if (v16)
  {

    static Logger.liveActivityDaemon.getter();

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v55 = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_100021F24(v11, v13, &v55);
      _os_log_impl(&_mh_execute_header, v17, v18, "Background task (%{public}s) already exists. Will cancel existing task.", v19, 0xCu);
      sub_10001653C(v20);
    }

    (*(v53 + 8))(v10, v54);
    v21 = v51;
    sub_100022714(v11, v13);
    if (v21)
    {
    }
  }

  ScheduledLiveActivity.scheduleDate.getter();
  Date.timeIntervalSinceNow.getter();
  v23 = v22;
  (*(v47 + 8))(v2, v48);
  ScheduledLiveActivity.scheduleDelay.getter();
  v25 = v23 + v24;
  v26 = objc_allocWithZone(BGNonRepeatingSystemTaskRequest);
  v27 = String._bridgeToObjectiveC()();
  v28 = [v26 initWithIdentifier:v27];

  v29 = v28;
  [v29 setRequiresNetworkConnectivity:1];
  [v29 setScheduleAfter:v25];
  ScheduledLiveActivity.scheduleTimeWindow.getter();
  [v29 setTrySchedulingBefore:v25 + v30];
  [v29 setPriority:2];
  ScheduledLiveActivity.randomInitialDelay.getter();
  [v29 setRandomInitialDelay:?];
  [v29 setNetworkDownloadSize:ScheduledLiveActivity.expectedDownloadByteSize.getter()];

  v31 = v52;
  static Logger.liveActivityDaemon.getter();

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v55 = v35;
    *v34 = 136315394;
    v36 = sub_100021F24(v11, v13, &v55);

    *(v34 + 4) = v36;
    *(v34 + 12) = 2048;
    *(v34 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v32, v33, "Will schedule background task=%s scheduleAfter=%f", v34, 0x16u);
    sub_10001653C(v35);

    v37 = *(v53 + 8);
    v37(v52, v54);
  }

  else
  {

    v37 = *(v53 + 8);
    v37(v31, v54);
  }

  v38 = [v49 sharedScheduler];
  v55 = 0;
  v39 = [v38 submitTaskRequest:v29 error:&v55];

  if (v39)
  {
    v40 = v55;
  }

  else
  {
    v41 = v55;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.liveActivityDaemon.getter();
    swift_errorRetain();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      swift_errorRetain();
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 4) = v46;
      *v45 = v46;
      _os_log_impl(&_mh_execute_header, v42, v43, "Failed to submit background task, error: %@", v44, 0xCu);
      sub_100022E54(v45, &qword_10007E768, &qword_10005BCE0);
    }

    v37(v50, v54);
    swift_willThrow();
  }
}

void sub_10001FC04(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.liveActivityDaemon.getter();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100021F24(a1, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v8, v9, "Will register for handling background task: %s", v10, 0xCu);
    sub_10001653C(v11);
  }

  (*(v5 + 8))(v7, v4);
  v12 = [objc_opt_self() sharedScheduler];
  v13 = String._bridgeToObjectiveC()();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100022CBC;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000213F4;
  aBlock[3] = &unk_100072C68;
  v15 = _Block_copy(aBlock);

  [v12 registerForTaskWithIdentifier:v13 usingQueue:0 launchHandler:v15];
  _Block_release(v15);
}

void sub_10001FEA0(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100015140(&unk_10007EB50, &qword_10005AB40);
  __chkstk_darwin(v7 - 8);
  v9 = &aBlock[-1] - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      v14 = type metadata accessor for TaskPriority();
      (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = v11;
      v15[5] = v13;
      v16 = a1;
      v17 = v11;
      v18 = sub_100018090(0, 0, v9, &unk_10005A8E8, v15);
      v19 = swift_allocObject();
      *(v19 + 16) = v13;
      *(v19 + 24) = v18;
      aBlock[4] = sub_100022D9C;
      aBlock[5] = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10001804C;
      aBlock[3] = &unk_100072CE0;
      v20 = _Block_copy(aBlock);
      v21 = v16;

      [v13 setExpirationHandler:v20];
      _Block_release(v20);

      return;
    }
  }

  static Logger.liveActivityDaemon.getter();
  v22 = a1;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138543362;
    *(v25 + 4) = v22;
    *v26 = v22;
    v27 = v22;
    _os_log_impl(&_mh_execute_header, v23, v24, "Unexpected task type: %{public}@)", v25, 0xCu);
    sub_100022E54(v26, &qword_10007E768, &qword_10005BCE0);
  }

  (*(v4 + 8))(v6, v3);
  [v22 setTaskCompleted];
}

uint64_t sub_100020254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100023584;

  return sub_1000202F0(a5);
}

uint64_t sub_1000202F0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for NewsLiveActivitySubscriptionState();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for ScheduledLiveActivity();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for NewsLiveActivity();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  sub_100015140(&qword_10007E770, &qword_10005A8F8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[16] = v6;
  v2[17] = *(v6 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_10002052C, 0, 0);
}

uint64_t sub_10002052C(uint64_t a1)
{
  v26 = v1;
  v2 = v1[2];
  static Logger.liveActivityDaemon.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[20];
  v9 = v1[16];
  v8 = v1[17];
  if (v6)
  {
    v10 = v1[2];
    v24 = v1[20];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136446210;
    v13 = [v10 identifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_100021F24(v14, v16, &v25);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Will handle background task: %{public}s", v11, 0xCu);
    sub_10001653C(v12);

    v18 = *(v8 + 8);
    v18(v24, v9);
  }

  else
  {

    v18 = *(v8 + 8);
    v18(v7, v9);
  }

  v1[21] = v18;
  v19 = (v1[3] + OBJC_IVAR____TtC5newsd19LiveActivityService_liveActivityRepository);
  v20 = v19[3];
  v21 = v19[4];
  sub_100002288(v19, v20);
  v22 = swift_task_alloc();
  v1[22] = v22;
  *v22 = v1;
  v22[1] = sub_100020748;

  return dispatch thunk of NewsLiveActivityRepository.activities.getter(v20, v21);
}

uint64_t sub_100020748(uint64_t a1)
{
  *(*v1 + 184) = a1;

  return _swift_task_switch(sub_100020848, 0, 0);
}

void sub_100020848()
{
  v70 = v0;
  v1 = *(v0 + 184);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 88);
    v5 = *(v0 + 64);
    v6 = *(v0 + 40);
    v67 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v7 = (v6 + 88);
    v8 = (v4 + 8);
    v64 = enum case for NewsLiveActivitySubscriptionState.scheduled(_:);
    v62 = (v6 + 96);
    v63 = (v6 + 8);
    v60 = (v5 + 8);
    v61 = (v5 + 32);
    v58 = *(v1 + 16);
    v59 = *(v0 + 184);
    while (v3 < *(v1 + 16))
    {
      v9 = *(v0 + 48);
      v10 = *(v0 + 32);
      (*(v4 + 16))(*(v0 + 104), v67 + *(v4 + 72) * v3, *(v0 + 80));
      NewsLiveActivity.subscriptionState.getter();
      v11 = (*v7)(v9, v10);
      v12 = *(v0 + 48);
      v13 = *(v0 + 32);
      if (v11 == v64)
      {
        v14 = *(v0 + 72);
        v15 = *(v0 + 56);
        v16 = *(v0 + 16);
        (*v62)(*(v0 + 48), *(v0 + 32));
        (*v61)(v14, v12, v15);
        v17 = ScheduledLiveActivity.backgroundTaskID.getter();
        v19 = v18;
        v20 = [v16 identifier];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v24 = v17;
        v25 = *(v0 + 72);
        v26 = *(v0 + 56);
        if (v24 == v21 && v19 == v23)
        {

          (*v60)(v25, v26);
LABEL_13:
          v29 = *(v0 + 120);
          v30 = *(v0 + 104);
          v31 = *(v0 + 80);
          v32 = *(v0 + 88);

          (*(v32 + 32))(v29, v30, v31);
          v28 = 0;
          goto LABEL_14;
        }

        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        (*v60)(v25, v26);
        if (v27)
        {
          goto LABEL_13;
        }

        (*v8)(*(v0 + 104), *(v0 + 80));
        v2 = v58;
        v1 = v59;
      }

      else
      {
        (*v8)(*(v0 + 104), *(v0 + 80));
        (*v63)(v12, v13);
      }

      if (v2 == ++v3)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    v28 = 1;
LABEL_14:
    v33 = *(v0 + 112);
    v34 = *(v0 + 120);
    v35 = *(v0 + 80);
    v36 = *(v0 + 88);
    (*(v36 + 56))(v34, v28, 1, v35);
    sub_100022DA4(v34, v33, &qword_10007E770, &qword_10005A8F8);
    if ((*(v36 + 48))(v33, 1, v35) == 1)
    {
      v37 = *(v0 + 16);
      sub_100022E54(*(v0 + 112), &qword_10007E770, &qword_10005A8F8);
      static Logger.liveActivityDaemon.getter();
      v38 = v37;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      v41 = os_log_type_enabled(v39, v40);
      v42 = *(v0 + 168);
      v43 = *(v0 + 144);
      v44 = *(v0 + 120);
      v45 = *(v0 + 128);
      if (v41)
      {
        v46 = *(v0 + 16);
        v68 = *(v0 + 168);
        v47 = swift_slowAlloc();
        v66 = v43;
        v48 = swift_slowAlloc();
        v69 = v48;
        *v47 = 136446210;
        v49 = [v46 identifier];
        v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = v44;
        v52 = v51;

        v53 = sub_100021F24(v50, v52, &v69);

        *(v47 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v39, v40, "Unable to find scheduled activity with background task id: %{public}s", v47, 0xCu);
        sub_10001653C(v48);

        v68(v66, v45);
        v54 = v65;
      }

      else
      {

        v42(v43, v45);
        v54 = v44;
      }

      sub_100022E54(v54, &qword_10007E770, &qword_10005A8F8);
      [*(v0 + 16) setTaskCompleted];

      v57 = *(v0 + 8);

      v57();
    }

    else
    {
      (*(*(v0 + 88) + 32))(*(v0 + 96), *(v0 + 112), *(v0 + 80));
      v55 = swift_task_alloc();
      *(v0 + 192) = v55;
      *v55 = v0;
      v55[1] = sub_100020E78;
      v56 = *(v0 + 96);

      sub_100019B8C(v56);
    }
  }
}

uint64_t sub_100020E78()
{

  return _swift_task_switch(sub_100020F74, 0, 0);
}

uint64_t sub_100020F74(uint64_t a1)
{
  v31 = v1;
  v2 = *(v1 + 16);
  static Logger.liveActivityDaemon.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v1 + 168);
  v8 = *(v1 + 152);
  v29 = *(v1 + 128);
  v9 = *(v1 + 120);
  v11 = *(v1 + 88);
  v10 = *(v1 + 96);
  v12 = *(v1 + 80);
  if (v6)
  {
    v28 = *(v1 + 120);
    v13 = *(v1 + 16);
    v27 = *(v1 + 80);
    v14 = swift_slowAlloc();
    v26 = v8;
    v15 = swift_slowAlloc();
    v30 = v15;
    *v14 = 136446210;
    v16 = [v13 identifier];
    v24 = v7;
    v25 = v10;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = sub_100021F24(v17, v19, &v30);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v4, v5, "Did handle background task: %{public}s", v14, 0xCu);
    sub_10001653C(v15);

    v24(v26, v29);
    (*(v11 + 8))(v25, v27);
    v21 = v28;
  }

  else
  {

    v7(v8, v29);
    (*(v11 + 8))(v10, v12);
    v21 = v9;
  }

  sub_100022E54(v21, &qword_10007E770, &qword_10005A8F8);
  [*(v1 + 16) setTaskCompleted];

  v22 = *(v1 + 8);

  return v22();
}

void sub_10002122C(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.liveActivityDaemon.getter();
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "Live activity scheduling task expired, task=%{public}@", v9, 0xCu);
    sub_100022E54(v10, &qword_10007E768, &qword_10005BCE0);
  }

  (*(v3 + 8))(v5, v2);
  Task.cancel()();
}

void sub_1000213F4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1000215E4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1000216A8;

  return sub_1000194F4(v6);
}

uint64_t sub_1000216A8()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 32);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_1000219D4(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v4[4] = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v4[5] = v10;
  v12 = a4;
  v13 = swift_task_alloc();
  v4[6] = v13;
  *v13 = v4;
  v13[1] = sub_100021AE4;

  return sub_100023100(v6, v8, v9, v11);
}

uint64_t sub_100021AE4()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_100021D34(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100021E2C;

  return v6(a1);
}

uint64_t sub_100021E2C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100021F24(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100021FF0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100023520(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10001653C(v11);
  return v7;
}

unint64_t sub_100021FF0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000220FC(a5, a6);
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

void *sub_1000220FC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100022148(a1, a2);
  sub_100022278(&off_100072770);
  return v3;
}

void *sub_100022148(uint64_t a1, unint64_t a2)
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

  v6 = sub_100022364(v5, 0);
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
        v7 = sub_100022364(v10, 0);
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

uint64_t sub_100022278(uint64_t result)
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

  result = sub_1000223D8(result, v11, 1, v3);
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

void *sub_100022364(uint64_t a1, uint64_t a2)
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

  sub_100015140(&qword_10007E798, &unk_10005A990);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000223D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100015140(&qword_10007E798, &unk_10005A990);
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

uint64_t sub_1000224F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100023584;

  return sub_100018540();
}

uint64_t sub_1000225A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100023584;

  return sub_100021D34(a1, v4);
}

uint64_t sub_10002265C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100017F58;

  return sub_100021D34(a1, v4);
}

id sub_100022714(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v50 = &v48 - v11;
  __chkstk_darwin(v10);
  v13 = &v48 - v12;
  static Logger.liveActivityDaemon.getter();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  v16 = os_log_type_enabled(v14, v15);
  v52 = v5;
  v53 = v2;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v49 = v9;
    v18 = a1;
    v19 = v6;
    v20 = v5;
    v21 = v17;
    v22 = swift_slowAlloc();
    v54 = v22;
    *v21 = 136446210;
    *(v21 + 4) = sub_100021F24(v18, a2, &v54);
    _os_log_impl(&_mh_execute_header, v14, v15, "LiveActivityService: will cancel background task id=%{public}s", v21, 0xCu);
    sub_10001653C(v22);

    v23 = *(v19 + 8);
    v24 = v13;
    v25 = v20;
    a1 = v18;
    v9 = v49;
  }

  else
  {

    v23 = *(v6 + 8);
    v24 = v13;
    v25 = v5;
  }

  v51 = v23;
  v23(v24, v25);
  v26 = objc_opt_self();
  v27 = [v26 sharedScheduler];
  v28 = String._bridgeToObjectiveC()();
  v29 = [v27 taskRequestForIdentifier:v28];

  if (v29)
  {

    v30 = [v26 sharedScheduler];
    v31 = String._bridgeToObjectiveC()();
    v54 = 0;
    v32 = [v30 cancelTaskRequestWithIdentifier:v31 error:&v54];

    if (v32)
    {
      return v54;
    }

    else
    {
      v39 = v54;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      static Logger.liveActivityDaemon.getter();

      swift_errorRetain();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v49 = v9;
        v43 = v42;
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v54 = v45;
        *v43 = 136446466;
        *(v43 + 4) = sub_100021F24(a1, a2, &v54);
        *(v43 + 12) = 2114;
        swift_errorRetain();
        v46 = _swift_stdlib_bridgeErrorToNSError();
        *(v43 + 14) = v46;
        *v44 = v46;
        _os_log_impl(&_mh_execute_header, v40, v41, "Unable to cancel task request, id=%{public}s, error: %{public}@", v43, 0x16u);
        sub_100022E54(v44, &qword_10007E768, &qword_10005BCE0);

        sub_10001653C(v45);

        v47 = v49;
      }

      else
      {

        v47 = v9;
      }

      v51(v47, v52);
      return swift_willThrow();
    }
  }

  else
  {
    v34 = v50;
    static Logger.liveActivityDaemon.getter();

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v54 = v38;
      *v37 = 136446210;
      *(v37 + 4) = sub_100021F24(a1, a2, &v54);
      _os_log_impl(&_mh_execute_header, v35, v36, "LiveActivityService: no existing background with id=%{public}s", v37, 0xCu);
      sub_10001653C(v38);
    }

    return (v51)(v34, v52);
  }
}

uint64_t sub_100022CC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100022CDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100023584;

  return sub_100020254(a1, v4, v5, v7, v6);
}

uint64_t sub_100022DA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100015140(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100022E0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100022E54(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100015140(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100022EB4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100017F58;

  return sub_1000219D4(v2, v3, v5, v4);
}

uint64_t sub_100022F74()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100023584;

  return sub_1000401CC(v2, v3, v4);
}

uint64_t sub_100023034(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100023584;

  return sub_1000402B4(a1, v4, v5, v6);
}

uint64_t sub_100023100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Logger();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000231C4, 0, 0);
}

uint64_t sub_1000231C4(uint64_t a1)
{
  v20 = v1;
  static Logger.liveActivityDaemon.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[7];
    v5 = v1[5];
    v17 = v1[6];
    v18 = v1[8];
    v7 = v1[3];
    v6 = v1[4];
    v8 = v1[2];
    v9 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v9 = 136446466;
    *(v9 + 4) = sub_100021F24(v8, v7, v19);
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_100021F24(v6, v5, v19);
    _os_log_impl(&_mh_execute_header, v2, v3, "LiveActivityService: will cancel live activity, id=%{public}s backgroundTaskID=%{public}s", v9, 0x16u);
    swift_arrayDestroy();

    (*(v4 + 8))(v18, v17);
  }

  else
  {
    v11 = v1[7];
    v10 = v1[8];
    v12 = v1[6];

    (*(v11 + 8))(v10, v12);
  }

  sub_100022714(v1[4], v1[5]);
  v13 = [objc_opt_self() sharedScheduler];
  v14 = String._bridgeToObjectiveC()();
  [v13 deregisterTaskWithIdentifier:v14];

  v15 = v1[1];

  return v15();
}

uint64_t sub_10002342C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100023584;

  return sub_1000215E4(v2, v3, v4);
}

uint64_t sub_1000234E0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100023520(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10002358C@<X0>(uint64_t *a1@<X8>)
{
  v2 = DropboxSubscriptionList.rankedAllSubscribedTagIDs.getter();
  v3 = sub_100030094(v2);

  v4 = DropboxSubscriptionList.mutedTagIDs.getter();
  Article = DropboxReadingHistory.allReadArticleIDs.getter();
  v6 = DropboxReadingHistory.allSeenArticleIDs.getter();
  sub_100015140(&qword_10007E848, &qword_10005BCF0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10005A9A0;
  DropboxReadingHistory.addInterest()();
  v8 = v18;
  v9 = sub_100002288(v17, v18);
  *(v7 + 56) = v8;
  v10 = sub_10002377C((v7 + 32));
  (*(*(v8 - 8) + 16))(v10, v9, v8);
  DropboxSubscriptionList.addInterest()();
  v11 = v16;
  v12 = sub_100002288(v15, v16);
  *(v7 + 88) = v11;
  v13 = sub_10002377C((v7 + 64));
  (*(*(v11 - 8) + 16))(v13, v12, v11);
  sub_10001653C(v15);
  result = sub_10001653C(v17);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = Article;
  a1[3] = v6;
  a1[4] = v7;
  return result;
}

uint64_t sub_100023718()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t *sub_10002377C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *sub_1000237E0(void *a1)
{
  sub_100002288(a1, a1[3]);
  sub_100015140(&qword_10007EA30, &unk_10005AAB0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v2 = [result isPrivateDataSyncingAllowed];
    swift_unknownObjectRelease();
    type metadata accessor for PrivateDataContext();
    if (v2)
    {
      sub_100023D14();
      v3 = static CKContainer.newsPrivateSecure.getter();
      v4 = static PrivateDataContext.readWriteCloud(container:apsMachServiceName:relatedAppBundleID:)();

      return v4;
    }

    else
    {
      return static PrivateDataContext.readWriteLocal.getter();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100023908(void *a1, uint64_t (*a2)(void))
{
  sub_100002288(a1, a1[3]);
  a2(0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100023964@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100002288(a1, a1[3]);
  UserInterestVectorProvider = type metadata accessor for DropboxSmarterFetchUserInterestVectorProvider();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    a2[3] = UserInterestVectorProvider;
    a2[4] = &protocol witness table for DropboxSmarterFetchUserInterestVectorProvider;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100023A00()
{
  v0 = type metadata accessor for Scope();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ProxyContainer.public.getter();
  type metadata accessor for PrivateDataContext();
  static PrivateDataContexts.news.getter();
  RegistrationContainer.register<A>(_:name:factory:)();

  (*(v1 + 104))(v3, enum case for Scope.singleton(_:), v0);
  Definition.inScope(_:)();

  (*(v1 + 8))(v3, v0);
  ProxyContainer.public.getter();
  sub_100015140(&qword_10007E8E8, &unk_10005AA68);
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100015140(&unk_10007E950, qword_10005AA78);
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100015140(&qword_10007E6F0, &unk_10005A810);
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100015140(&qword_10007E9C0, &qword_10005AA98);
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100015140(&qword_10007E9C8, &unk_10005AAA0);
  RegistrationContainer.register<A>(_:name:factory:)();
}

unint64_t sub_100023D14()
{
  result = qword_10007EA38;
  if (!qword_10007EA38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10007EA38);
  }

  return result;
}

uint64_t sub_100023D88(uint64_t a1, unint64_t a2, const char *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.todayFeedService.getter();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_100021F24(a1, a2, &v16);
    _os_log_impl(&_mh_execute_header, v10, v11, a3, v12, 0xCu);
    sub_10001653C(v13);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10002408C()
{
  v1 = *(v0[19] + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000241AC;
  v2 = swift_continuation_init();
  v0[17] = sub_100015140(&unk_10007EB40, &unk_10005AB30);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100024344;
  v0[13] = &unk_100072E30;
  v0[14] = v2;
  [v1 fetchCachedTodayFeedWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000241AC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_1000242D8;
  }

  else
  {
    v2 = sub_1000242BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000242D8(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_100024344(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100002288((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100015140(&unk_10007EC50, &qword_10005A910);
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

uint64_t sub_100024594(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_10002463C;

  return sub_10002406C();
}

uint64_t sub_10002463C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;

  v7 = *(v5 + 24);
  if (v3)
  {
    v8 = _convertErrorToNSError(_:)();

    (v7)[2](v7, 0, v8);

    _Block_release(v7);
  }

  else
  {
    (v7)[2](v7, a1, 0);
    _Block_release(v7);
  }

  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_100024800()
{
  v1 = *(v0[19] + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100024920;
  v2 = swift_continuation_init();
  v0[17] = sub_100015140(&unk_10007EB40, &unk_10005AB30);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100024344;
  v0[13] = &unk_100072E08;
  v0[14] = v2;
  [v1 flushWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100024920()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_100025EC8;
  }

  else
  {
    v2 = sub_100025ED0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100024BA8(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100025EC4;

  return sub_1000247E0();
}

uint64_t sub_100024DDC(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  return _swift_task_switch(sub_100024E6C, 0, 0);
}

uint64_t sub_100024E6C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_100024F08;
  v2 = *(v0 + 16);

  return sub_100044DC4(v2);
}

uint64_t sub_100024F08()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100025078, 0, 0);
  }

  else
  {
    v3 = *(v2 + 32);

    (*(v3 + 16))(v3, 0);
    _Block_release(*(v2 + 32));
    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_100025078()
{
  v1 = *(v0 + 32);

  v2 = _convertErrorToNSError(_:)();

  (*(v1 + 16))(v1, v2);

  _Block_release(*(v0 + 32));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000252B0(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  return _swift_task_switch(sub_100025340, 0, 0);
}

uint64_t sub_100025340()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1000253DC;
  v2 = *(v0 + 16);

  return sub_1000457BC(v2);
}

uint64_t sub_1000253DC(void *a1)
{
  v4 = *v2;
  *(v4 + 48) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100025558, 0, 0);
  }

  else
  {
    v5 = *(v4 + 32);

    (v5)[2](v5, a1, 0);
    _Block_release(v5);

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_100025558()
{
  v1 = *(v0 + 32);

  v2 = _convertErrorToNSError(_:)();

  (v1)[2](v1, 0, v2);

  _Block_release(v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100025658()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100023584;

  return sub_1000252B0(v2, v3, v4);
}

uint64_t sub_10002570C()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100025754()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100023584;

  return sub_100024DDC(v2, v3, v4);
}

uint64_t sub_100025808()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100023584;

  return sub_100024BA8(v2, v3);
}

uint64_t sub_1000258B4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000258F4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100017F58;

  return sub_100024594(v2, v3);
}

uint64_t sub_1000259A0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10005A4F0;
  *(v8 + 56) = sub_100025E70(0, &qword_10007EB60, NSXPCConnection_ptr);
  *(v8 + 64) = sub_100016484();
  *(v8 + 32) = a1;
  v9 = a1;
  v10 = String.init(format:_:)();
  v12 = v11;
  static Logger.todayFeedService.getter();
  v13 = v9;

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v30 = v5;
    v31 = v4;
    v33 = v2;
    v16 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v16 = 136446466;
    v32 = v10;
    *(v16 + 4) = sub_100021F24(v10, v12, &aBlock);
    *(v16 + 12) = 2082;
    v17 = [v13 serviceName];
    if (v17)
    {
      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
    }

    else
    {
      v21 = 0xE500000000000000;
      v19 = 0x3E6C696E3CLL;
    }

    v22 = sub_100021F24(v19, v21, &aBlock);

    *(v16 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "will accept new XPC connection, connection=%{public}s, serviceName=%{public}s", v16, 0x16u);
    swift_arrayDestroy();

    (*(v30 + 8))(v7, v31);
    v10 = v32;
    v2 = v33;
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v23 = swift_allocObject();
  *(v23 + 16) = v10;
  *(v23 + 24) = v12;
  v38 = sub_100025E10;
  v39 = v23;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_10001804C;
  v37 = &unk_100073060;
  v24 = v10;
  v25 = _Block_copy(&aBlock);

  [v13 setInvalidationHandler:v25];
  _Block_release(v25);
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  *(v26 + 24) = v12;
  v38 = sub_100025E4C;
  v39 = v26;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_10001804C;
  v37 = &unk_1000730B0;
  v27 = _Block_copy(&aBlock);

  [v13 setInterruptionHandler:v27];
  _Block_release(v27);
  isa = NDTodayFeedServiceXPCInterface()().super.isa;
  [v13 setExportedInterface:isa];

  [v13 setExportedObject:*(v2 + OBJC_IVAR___NDTodayFeedServiceListenerDelegate_entryPoint)];
  [v13 resume];
  return 1;
}

uint64_t sub_100025E34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100025E70(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100025ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_100025F68;

  return sub_1000260A8();
}

uint64_t sub_100025F68()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_10002A584;

  return sub_100026264();
}

uint64_t sub_1000260C8()
{
  sub_100029100();
  v1 = static OS_dispatch_queue.main.getter();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[6] = sub_10002914C;
  v0[7] = v2;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100028BB4;
  v0[5] = &unk_100073150;
  v3 = _Block_copy(v0 + 2);

  v4 = String.utf8CString.getter();
  xpc_set_event_stream_handler((v4 + 32), v1, v3);

  _Block_release(v3);

  v5 = FCNotificationsLog;
  v6 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("registered notification alarm handler", 37, 2, &_mh_execute_header, v5, v6, _swiftEmptyArrayStorage);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100026264()
{
  v1[5] = v0;
  v2 = type metadata accessor for Date();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  sub_100015140(&qword_10007EC38, &qword_10005AC18);
  v1[9] = swift_task_alloc();
  v3 = type metadata accessor for DelayedNotificationTimetable(0);
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000263C4, 0, 0);
}

uint64_t sub_1000263C4()
{
  v1 = sub_100026D90();
  String.utf8CString.getter();
  String.utf8CString.getter();
  if ((v1 & 1) == 0)
  {
    xpc_set_event();

    v9 = FCNotificationsLog;
    v10 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("cleared notification alarm", 26, 2, &_mh_execute_header, v9, v10, _swiftEmptyArrayStorage);

    goto LABEL_5;
  }

  v2 = xpc_copy_event();

  if (v2)
  {
    v3 = FCNotificationsLog;
    sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_10005A4F0;
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    v0[4] = v2;
    v5 = v3;
    sub_100015140(&qword_10007EC48, &unk_10005AC38);
    _print_unlocked<A, B>(_:_:)();
    v6 = v0[2];
    v7 = v0[3];
    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_10001528C();
    *(v4 + 32) = v6;
    *(v4 + 40) = v7;
    v8 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("no need to schedule alarm because it already exists, alarm=%{public}@", 69, 2, &_mh_execute_header, v5, v8, v4);

    swift_unknownObjectRelease();
LABEL_5:

    v11 = v0[1];

    return v11();
  }

  v13 = swift_task_alloc();
  v0[14] = v13;
  *v13 = v0;
  v13[1] = sub_100026688;
  v14 = v0[9];
  v15 = v0[5];

  return sub_100027F18(v14, v15);
}

uint64_t sub_100026688()
{

  if (v0)
  {

    v1 = sub_100026BCC;
  }

  else
  {
    v1 = sub_1000267A0;
  }

  return _swift_task_switch(v1, 0, 0);
}

void sub_1000267A0()
{
  v1 = v0[9];
  if ((*(v0[11] + 48))(v1, 1, v0[10]) != 1)
  {
    v3 = v0[12];
    v2 = v0[13];
    v4 = v0[6];
    v5 = v0[7];
    sub_100028EE8(v1, v2);
    sub_100028F4C(v2, v3);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      v6 = v0[13];
      String.utf8CString.getter();
      String.utf8CString.getter();
      xpc_set_event();

      v7 = FCNotificationsLog;
      v8 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("cleared notification alarm", 26, 2, &_mh_execute_header, v7, v8, _swiftEmptyArrayStorage);

      v9 = FCNotificationsLog;
      v10 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("successfully cancelled prior notification alarm", 47, 2, &_mh_execute_header, v9, v10, _swiftEmptyArrayStorage);

      v11 = v6;
LABEL_10:
      sub_100028FB0(v11);
      goto LABEL_11;
    }

    (*(v0[7] + 32))(v0[8], v0[12], v0[6]);
    v12 = xpc_dictionary_create(0, 0, 0);
    Date.timeIntervalSince1970.getter();
    v14 = ceil(v13);
    if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v14 > -9.22337204e18)
    {
      if (v14 < 9.22337204e18)
      {
        v15 = 1000000000 * v14;
        if ((v14 * 1000000000) >> 64 == v15 >> 63)
        {
          v16 = v0[13];
          v18 = v0[7];
          v17 = v0[8];
          v19 = v0[6];
          xpc_dictionary_set_date(v12, "Date", v15);
          String.utf8CString.getter();
          String.utf8CString.getter();
          swift_unknownObjectRetain();
          xpc_set_event();

          swift_unknownObjectRelease();
          v20 = FCNotificationsLog;
          sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_10005A4F0;
          sub_100015234();
          v22 = v20;
          v23 = dispatch thunk of CustomStringConvertible.description.getter();
          v25 = v24;
          *(v21 + 56) = &type metadata for String;
          *(v21 + 64) = sub_10001528C();
          *(v21 + 32) = v23;
          *(v21 + 40) = v25;
          v26 = static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)("successfully scheduled notification alarm for date=%{public}@", 61, 2, &_mh_execute_header, v22, v26, v21);

          swift_unknownObjectRelease();
          (*(v18 + 8))(v17, v19);
          v11 = v16;
          goto LABEL_10;
        }

LABEL_17:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_16;
  }

  sub_100022E54(v1, &qword_10007EC38, &qword_10005AC18);
LABEL_11:

  v27 = v0[1];

  v27();
}

uint64_t sub_100026BCC()
{
  (*(v0[11] + 56))(v0[9], 1, 1, v0[10]);
  sub_100022E54(v0[9], &qword_10007EC38, &qword_10005AC18);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100026D90()
{
  v1 = [*(v0 + OBJC_IVAR___NDDelayedNotificationScheduler_configurationManager) possiblyUnfetchedAppConfiguration];
  if (([v1 respondsToSelector:"useNotificationsV2"] & 1) == 0 || !objc_msgSend(v1, "useNotificationsV2"))
  {
    v5 = FCNotificationsLog;
    v6 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("notifications disabled due to app config", 40, 2, &_mh_execute_header, v5, v6, _swiftEmptyArrayStorage);

LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  v2 = [*(v0 + OBJC_IVAR___NDDelayedNotificationScheduler_notificationCenter) notificationSettings];
  v3 = [v2 authorizationStatus];

  if (v3 != 2)
  {
    v8 = FCNotificationsLog;
    sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10005A4F0;
    *(v9 + 56) = &type metadata for Int;
    *(v9 + 64) = &protocol witness table for Int;
    *(v9 + 32) = v3;
    v10 = v8;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("notifications disabled due to authorizationStatus=%ld", v11);

    goto LABEL_6;
  }

  v4 = 1;
LABEL_7:
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_100026F38()
{
  v1[21] = v0;
  type metadata accessor for Date();
  v1[22] = swift_task_alloc();
  v2 = type metadata accessor for NotificationHistoryItem();
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();

  return _swift_task_switch(sub_100027024, 0, 0);
}

uint64_t sub_100027024()
{
  if (sub_100026D90())
  {
    v1 = swift_task_alloc();
    v0[26] = v1;
    *v1 = v0;
    v1[1] = sub_100027108;
    v2 = v0[21];

    return sub_100027890(v2);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100027108(uint64_t a1)
{
  *(*v1 + 216) = a1;

  return _swift_task_switch(sub_100027208, 0, 0);
}

uint64_t sub_100027208()
{
  if (*(v0 + 216))
  {
    v1 = *(*(v0 + 168) + OBJC_IVAR___NDDelayedNotificationScheduler_notificationCenter);
    v2 = [*(v0 + 216) notificationItem];
    v3 = [v2 canonicalID];

    if (v3)
    {
      v5 = sub_10002922C();
      v6 = [objc_opt_self() requestWithIdentifier:v3 content:v5 trigger:0];
      *(v0 + 224) = v6;

      *(v0 + 16) = v0;
      *(v0 + 24) = sub_100027408;
      v7 = swift_continuation_init();
      *(v0 + 136) = sub_100015140(&qword_10007EC60, &qword_10005AC80);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_100027D9C;
      *(v0 + 104) = &unk_1000731A0;
      *(v0 + 112) = v7;
      [v1 addNotificationRequest:v6 withCompletionHandler:v0 + 80];
      v4 = v0 + 16;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_await(v4);
  }

  else
  {

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_100027408()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_100027700;
  }

  else
  {
    v2 = sub_100027518;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100027518()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 168);

  sub_100002288((v2 + OBJC_IVAR___NDDelayedNotificationScheduler_notificationHistory), *(v2 + OBJC_IVAR___NDDelayedNotificationScheduler_notificationHistory + 24));
  v3 = [v1 notificationItem];
  Date.init()();
  NotificationHistoryItem.init(_:notifiedAt:)();
  NotificationHistoryType.add(_:)();
  v4 = *(v0 + 216);
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
  v5 = FCNotificationsLog;
  sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10005A4F0;
  v7 = v5;
  v8 = [v4 description];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_10001528C();
  *(v6 + 32) = v9;
  *(v6 + 40) = v11;
  v12 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("successfully submitted notification request to UserNotifications", 64, 2, &_mh_execute_header, v7, v12, v6);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100027700(uint64_t a1)
{
  v2 = v1[28];
  v3 = v1[29];
  v4 = v1[27];
  swift_willThrow();

  v5 = FCNotificationsLog;
  v6 = static os_log_type_t.error.getter();
  sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
  v7 = swift_allocObject();
  v1[18] = 0;
  *(v7 + 16) = xmmword_10005A4F0;
  v1[19] = 0xE000000000000000;
  v1[20] = v3;
  sub_100015140(&unk_10007EC50, &qword_10005A910);
  _print_unlocked<A, B>(_:_:)();
  v8 = v1[18];
  v9 = v1[19];
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_10001528C();
  *(v7 + 32) = v8;
  *(v7 + 40) = v9;
  os_log(_:dso:log:type:_:)("failed to submit notification request to UserNotifications, error=%{public}@", 76, 2, &_mh_execute_header, v5, v6, v7);

  v10 = v1[1];

  return v10();
}

uint64_t sub_1000278B0()
{
  v1 = *(v0 + 40);
  v2 = FCNotificationsLog;
  v3 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("will fetch payload for next notification", 40, 2, &_mh_execute_header, v2, v3, _swiftEmptyArrayStorage);

  sub_100002288((v1 + OBJC_IVAR___NDDelayedNotificationScheduler_notificationVendor), *(v1 + OBJC_IVAR___NDDelayedNotificationScheduler_notificationVendor + 24));
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1000279A0;

  return sub_10002B2F8();
}

uint64_t sub_1000279A0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_100027C38;
  }

  else
  {
    v4 = sub_100027AB4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100027AB4()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = FCNotificationsLog;
    sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10005A4F0;
    v4 = v2;
    v5 = [v1 description];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = sub_10001528C();
    *(v3 + 32) = v6;
    *(v3 + 40) = v8;
    v9 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("successfully fetched payload for next notification, payload=%{public}@", 70, 2, &_mh_execute_header, v4, v9, v3);

    v10 = *(v0 + 56);
  }

  else
  {
    v11 = FCNotificationsLog;
    v12 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("fetched nil payload for next notification", 41, 2, &_mh_execute_header, v11, v12, _swiftEmptyArrayStorage);

    v10 = 0;
  }

  v13 = *(v0 + 8);

  return v13(v10);
}

uint64_t sub_100027C38()
{
  v1 = v0[8];
  v2 = FCNotificationsLog;
  v3 = static os_log_type_t.error.getter();
  sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
  v4 = swift_allocObject();
  v0[2] = 0;
  *(v4 + 16) = xmmword_10005A4F0;
  v0[3] = 0xE000000000000000;
  v0[4] = v1;
  sub_100015140(&unk_10007EC50, &qword_10005A910);
  _print_unlocked<A, B>(_:_:)();
  v5 = v0[2];
  v6 = v0[3];
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_10001528C();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  os_log(_:dso:log:type:_:)("failed to fetch payload for next notification, error=%{public}@", 63, 2, &_mh_execute_header, v2, v3, v4);

  v7 = v0[1];

  return v7(0);
}

uint64_t sub_100027D9C(uint64_t a1, void *a2)
{
  v3 = sub_100002288((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100015140(&unk_10007EC50, &qword_10005A910);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_100027F18(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = type metadata accessor for Date();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for DelayedNotificationTimetable(0);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100028034, 0, 0);
}

uint64_t sub_100028034()
{
  v1 = v0[8];
  v2 = FCNotificationsLog;
  v3 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("will create timetable for next notification", 43, 2, &_mh_execute_header, v2, v3, _swiftEmptyArrayStorage);

  sub_100002288((v1 + OBJC_IVAR___NDDelayedNotificationScheduler_timetableFactory), *(v1 + OBJC_IVAR___NDDelayedNotificationScheduler_timetableFactory + 24));
  Date.init()();
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_100028148;
  v5 = v0[14];
  v6 = v0[11];

  return sub_100014180(v5, v6);
}

uint64_t sub_100028148()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 128) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100028448;
  }

  else
  {
    v5 = sub_1000282B8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000282B8()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[7];
  v5 = FCNotificationsLog;
  sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10005A4F0;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v7 = v5;
  _print_unlocked<A, B>(_:_:)();
  v8 = v0[4];
  v9 = v0[5];
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_10001528C();
  *(v6 + 32) = v8;
  *(v6 + 40) = v9;
  v10 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("did create timetable for next notification, timetable=%{public}@", 64, 2, &_mh_execute_header, v7, v10, v6);

  sub_100028EE8(v1, v4);
  (*(v2 + 56))(v4, 0, 1, v3);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100028448()
{
  v1 = v0[16];
  v2 = FCNotificationsLog;
  v3 = static os_log_type_t.error.getter();
  sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
  v4 = swift_allocObject();
  v0[2] = 0;
  *(v4 + 16) = xmmword_10005A4F0;
  v0[3] = 0xE000000000000000;
  v0[6] = v1;
  sub_100015140(&unk_10007EC50, &qword_10005A910);
  _print_unlocked<A, B>(_:_:)();
  v5 = v0[2];
  v6 = v0[3];
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_10001528C();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  os_log(_:dso:log:type:_:)("failed to create timetable for next notification, error=%{public}@", 66, 2, &_mh_execute_header, v2, v3, v4);

  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000285D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_100015140(&unk_10007EB50, &qword_10005AB40);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = objc_allocWithZone(NDAssertion);
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 initWithName:v8];

    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v6;
    v11[5] = v9;
    sub_100018090(0, 0, v4, &unk_10005AC68, v11);
  }

  return result;
}

uint64_t sub_100028764()
{
  String.utf8CString.getter();
  String.utf8CString.getter();
  xpc_set_event();

  v1 = FCNotificationsLog;
  v2 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("cleared notification alarm", 26, 2, &_mh_execute_header, v1, v2, _swiftEmptyArrayStorage);

  v3 = FCNotificationsLog;
  v4 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("will handle notification alarm", 30, 2, &_mh_execute_header, v3, v4, _swiftEmptyArrayStorage);

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1000288EC;

  return sub_100026F38();
}

uint64_t sub_1000288EC()
{

  return _swift_task_switch(sub_1000289E8, 0, 0);
}

uint64_t sub_1000289E8()
{
  v1 = FCNotificationsLog;
  v2 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("will schedule next notification alarm", 37, 2, &_mh_execute_header, v1, v2, _swiftEmptyArrayStorage);

  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_100028AC0;

  return sub_100026264();
}

uint64_t sub_100028AC0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100028BB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100028C14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100017F58;

  return sub_100026264();
}

uint64_t sub_100028E34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100017F58;

  return sub_100028C14();
}

uint64_t sub_100028EE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DelayedNotificationTimetable(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100028F4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DelayedNotificationTimetable(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100028FB0(uint64_t a1)
{
  v2 = type metadata accessor for DelayedNotificationTimetable(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002900C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002904C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100023584;

  return sub_100025ED4(a1, v4, v5, v6);
}

unint64_t sub_100029100()
{
  result = qword_10007F260;
  if (!qword_10007F260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10007F260);
  }

  return result;
}

uint64_t sub_100029154(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002916C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100023584;

  return sub_100028744(a1, v4, v5, v6);
}

id sub_10002922C()
{
  v1 = v0;
  v2 = [objc_allocWithZone(UNMutableNotificationContent) init];
  v3 = [objc_msgSend(v0 "headline")];
  swift_unknownObjectRelease();
  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    type metadata accessor for Capabilities();

    if (static Capabilities.isInternalBuild()())
    {
      v7 = [v1 notificationItem];
      v8 = [v7 source];

      v9 = 0x2096A49FF0;
      if (v8 == 5)
      {
        v10 = 0xA500000000000000;
      }

      else
      {
        v9 = 0;
        v10 = 0xE000000000000000;
      }

      v16 = v9;
      v17 = v10;

      v11._countAndFlagsBits = v4;
      v11._object = v6;
      String.append(_:)(v11);
      swift_bridgeObjectRelease_n();
    }

    else
    {
    }
  }

  v12 = String._bridgeToObjectiveC()();

  [v2 setTitle:v12];

  v13 = [v1 bodyText];
  if (!v13)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = String._bridgeToObjectiveC()();
  }

  [v2 setBody:{v13, v16, v17}];

  [v2 setCategoryIdentifier:FCNotificationArticleCategory];
  sub_1000294A8();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 setUserInfo:isa];

  return v2;
}

void *sub_1000294A8()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v11 + 1) = v0;
  AnyHashable.init<A>(_:)();
  sub_100015140(&qword_10007EC68, &qword_10005AC88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10005A4F0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v2;
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v3;
  v4 = sub_10002A2D0(inited);
  swift_setDeallocating();
  sub_100022E54(inited + 32, &qword_10007EC70, &qword_10005AC90);
  v12 = sub_100015140(&qword_10007EC78, &qword_10005AC98);
  *&v11 = v4;
  sub_10002A3E4(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100041C98(v10, v13, isUniquelyReferenced_nonNull_native);
  sub_10002A3F4(v13);
  *&v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v11 + 1) = v6;
  AnyHashable.init<A>(_:)();
  v7 = sub_100029684();
  v12 = sub_100015140(&unk_10007EC80, &unk_10005ACA0);
  *&v11 = v7;
  sub_10002A3E4(&v11, v10);
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_100041C98(v10, v13, v8);
  sub_10002A3F4(v13);
  return &_swiftEmptyDictionarySingleton;
}

void *sub_100029684()
{
  v1 = v0;
  v2 = sub_100015140(&qword_10007E790, &qword_10005BD10);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v60 - v6;
  v66 = &_swiftEmptyDictionarySingleton;
  *&v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v63 + 1) = v8;
  AnyHashable.init<A>(_:)();
  v9 = [objc_msgSend(v0 "headline")];
  swift_unknownObjectRelease();
  if (v9)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v64 = &type metadata for String;
    *&v63 = v10;
    *(&v63 + 1) = v12;
    sub_10002A3E4(&v63, v62);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = &_swiftEmptyDictionarySingleton;
    sub_100041C98(v62, v65, isUniquelyReferenced_nonNull_native);
    sub_10002A3F4(v65);
    v66 = v61;
  }

  else
  {
    sub_100029F78(&v63, v65);
    sub_100022E54(&v63, &qword_10007EC90, &qword_10005ACB0);
    sub_10002A3F4(v65);
  }

  *&v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v63 + 1) = v14;
  AnyHashable.init<A>(_:)();
  v15 = [objc_msgSend(v0 "headline")];
  swift_unknownObjectRelease();
  if (v15)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v64 = &type metadata for String;
    *&v63 = v16;
    *(&v63 + 1) = v18;
    sub_10002A3E4(&v63, v62);
    v19 = v66;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v61 = v19;
    sub_100041C98(v62, v65, v20);
    sub_10002A3F4(v65);
    v66 = v61;
  }

  else
  {
    sub_100029F78(&v63, v65);
    sub_100022E54(&v63, &qword_10007EC90, &qword_10005ACB0);
    sub_10002A3F4(v65);
  }

  *&v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v63 + 1) = v21;
  AnyHashable.init<A>(_:)();
  v22 = [objc_msgSend(v1 "headline")];
  swift_unknownObjectRelease();
  if (v22)
  {
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v64 = &type metadata for String;
    *&v63 = v23;
    *(&v63 + 1) = v25;
    sub_10002A3E4(&v63, v62);
    v26 = v66;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v61 = v26;
    sub_100041C98(v62, v65, v27);
    sub_10002A3F4(v65);
    v66 = v61;
  }

  else
  {
    sub_100029F78(&v63, v65);
    sub_100022E54(&v63, &qword_10007EC90, &qword_10005ACB0);
    sub_10002A3F4(v65);
  }

  *&v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v63 + 1) = v28;
  AnyHashable.init<A>(_:)();
  v29 = [objc_msgSend(v1 "headline")];
  swift_unknownObjectRelease();
  if (v29)
  {
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v64 = &type metadata for String;
    *&v63 = v30;
    *(&v63 + 1) = v32;
    sub_10002A3E4(&v63, v62);
    v33 = v66;
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v61 = v33;
    sub_100041C98(v62, v65, v34);
    sub_10002A3F4(v65);
    v66 = v61;
  }

  else
  {
    sub_100029F78(&v63, v65);
    sub_100022E54(&v63, &qword_10007EC90, &qword_10005ACB0);
    sub_10002A3F4(v65);
  }

  *&v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v63 + 1) = v35;
  AnyHashable.init<A>(_:)();
  v36 = [objc_msgSend(v1 "headline")];
  swift_unknownObjectRelease();
  if (v36)
  {
    v37 = [v36 name];
    swift_unknownObjectRelease();
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v64 = &type metadata for String;
    *&v63 = v38;
    *(&v63 + 1) = v40;
    sub_10002A3E4(&v63, v62);
    v41 = v66;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v61 = v41;
    sub_100041C98(v62, v65, v42);
    sub_10002A3F4(v65);
    v66 = v61;
  }

  else
  {
    sub_100029F78(&v63, v65);
    sub_100022E54(&v63, &qword_10007EC90, &qword_10005ACB0);
    sub_10002A3F4(v65);
  }

  *&v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v63 + 1) = v43;
  AnyHashable.init<A>(_:)();
  v44 = [objc_msgSend(v1 "headline")];
  swift_unknownObjectRelease();
  if (v44 && (v45 = [v44 nameCompact], swift_unknownObjectRelease(), v45))
  {
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    v64 = &type metadata for String;
    *&v63 = v46;
    *(&v63 + 1) = v48;
    sub_10002A3E4(&v63, v62);
    v49 = v66;
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v61 = v49;
    sub_100041C98(v62, v65, v50);
    sub_10002A3F4(v65);
    v66 = v61;
  }

  else
  {
    sub_100029F78(&v63, v65);
    sub_100022E54(&v63, &qword_10007EC90, &qword_10005ACB0);
    sub_10002A3F4(v65);
  }

  *&v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v63 + 1) = v51;
  AnyHashable.init<A>(_:)();
  v52 = [objc_msgSend(v1 "headline")];
  swift_unknownObjectRelease();
  if (v52)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v53 = 0;
  }

  else
  {
    v53 = 1;
  }

  v54 = type metadata accessor for Date();
  v55 = *(v54 - 8);
  (*(v55 + 56))(v5, v53, 1, v54);
  sub_10002A448(v5, v7);
  if ((*(v55 + 48))(v7, 1, v54) == 1)
  {
    sub_100022E54(v7, &qword_10007E790, &qword_10005BD10);
    sub_100029F78(&v63, v65);
    sub_100022E54(&v63, &qword_10007EC90, &qword_10005ACB0);
    sub_10002A3F4(v65);
    return v66;
  }

  else
  {
    Date.timeIntervalSince1970.getter();
    v64 = &type metadata for Double;
    *&v63 = v57;
    (*(v55 + 8))(v7, v54);
    sub_10002A3E4(&v63, v62);
    v58 = v66;
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v61 = v58;
    sub_100041C98(v62, v65, v59);
    sub_10002A3F4(v65);
    return v61;
  }
}

double sub_100029F78@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>)
{
  v3 = v2;
  v5 = sub_1000407C8(a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100042180();
      v9 = v11;
    }

    sub_10002A3F4(*(v9 + 48) + 40 * v7);
    sub_10002A3E4((*(v9 + 56) + 32 * v7), a1);
    sub_10002A01C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_10002A01C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      sub_10002A4B8(*(a2 + 48) + 40 * v6, v25);
      v10 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      result = sub_10002A3F4(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}