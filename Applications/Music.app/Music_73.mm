uint64_t sub_100824D38()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = *(v2 + 328);
    v4 = *(v2 + 336);
    v5 = sub_100824FE4;
  }

  else
  {

    v3 = *(v2 + 328);
    v4 = *(v2 + 336);
    v5 = sub_100824E54;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100824E54()
{
  v13 = v0[39];
  v1 = v0[38];
  v11 = v0[48];
  v12 = v0[37];
  v2 = v0[28];
  v10 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[23];

  MusicCatalogResourceResponse.items.getter();
  sub_10034DCDC(v7);
  (*(v5 + 8))(v4, v6);
  sub_100825284(v7);

  sub_1000095E8(v7, &unk_1011814D0, &qword_100EC12A0);
  (*(v2 + 8))(v10, v3);
  (*(v1 + 8))(v13, v12);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100824FE4()
{
  v20 = v0;
  *(v0 + 136) = *(v0 + 408);
  swift_errorRetain();
  result = swift_dynamicCast();
  if (result)
  {

    v2 = *(v0 + 144);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v19 = v6;
      *v5 = 136446210;
      v7 = v2;
      v8 = [v7 description];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = sub_1000105AC(v9, v11, &v19);

      *(v5 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to retrieve catalog playlist when attempting to include equivalents with error=%{public}s", v5, 0xCu);
      sub_10000959C(v6);
    }

    v13 = *(v0 + 384);
    v15 = *(v0 + 304);
    v14 = *(v0 + 312);
    v16 = *(v0 + 296);
    v17 = v2;
    sub_1008259A0(v2);

    (*(v15 + 8))(v14, v16);

    v18 = *(v0 + 8);

    return v18();
  }

  return result;
}

void sub_100825284(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MusicPropertySource();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v53 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v54 = &v45 - v7;
  __chkstk_darwin();
  v9 = &v45 - v8;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v45 - v12;
  __chkstk_darwin();
  v15 = &v45 - v14;
  type metadata accessor for Playlist();
  __chkstk_darwin();
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v20 = v19;
  v22 = v21;
  sub_1000089F8(v18, v15, &unk_1011814D0, &qword_100EC12A0);
  if ((*(v22 + 48))(v15, 1, v20) == 1)
  {
    sub_1000095E8(v15, &unk_1011814D0, &qword_100EC12A0);
    v23 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
    swift_beginAccess();
    (*(v5 + 16))(v9, v2 + v23, v4);
    v24 = v54;
    (*(v5 + 104))(v54, enum case for MusicPropertySource.catalog(_:), v4);
    LOBYTE(v23) = static MusicPropertySource.== infix(_:_:)();
    v25 = *(v5 + 8);
    v25(v24, v4);
    v25(v9, v4);
    if (v23)
    {
      sub_1008259A0(0);
    }
  }

  else
  {
    (*(v22 + 32))(v17, v15, v20);
    (*(v22 + 16))(v13, v17, v20);
    (*(v22 + 56))(v13, 0, 1, v20);
    v52 = v20;
    v26 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogPlaylist;
    swift_beginAccess();
    v51 = v22;
    sub_1000089F8(v2 + v26, v11, &unk_1011814D0, &qword_100EC12A0);
    swift_beginAccess();
    sub_1002190E0(v13, v2 + v26, &unk_1011814D0, &qword_100EC12A0);
    swift_endAccess();
    sub_100834BB8(v11);
    sub_1000095E8(v11, &unk_1011814D0, &qword_100EC12A0);
    sub_1000095E8(v13, &unk_1011814D0, &qword_100EC12A0);
    v27 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
    swift_beginAccess();
    v28 = *(v5 + 16);
    v48 = v5 + 16;
    v49 = v27;
    v46 = v28;
    (v28)(v9, v2 + v27, v4);
    v29 = *(v5 + 104);
    v30 = v54;
    v47 = enum case for MusicPropertySource.catalog(_:);
    v29(v54);
    LOBYTE(v27) = static MusicPropertySource.== infix(_:_:)();
    v50 = v5;
    v31 = *(v5 + 8);
    v31(v30, v4);
    v31(v9, v4);
    if (v27)
    {
      v45 = v31;
      v54 = v17;
      v32 = v51;
      v33 = sub_10081FE6C();
      v34 = v49;
      if (v33)
      {
        (v29)(v9, enum case for MusicPropertySource.library(_:), v4);
        swift_beginAccess();
        (*(v50 + 40))(v2 + v34, v9, v4);
        swift_endAccess();
        if (qword_10117FC48 != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        sub_1000060E4(v35, qword_1012193F8);
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&_mh_execute_header, v36, v37, "Overriding source at load.", v38, 2u);
        }
      }

      v39 = sub_1008192FC(0);
      v40 = v53;
      v46(v53, v2 + v34, v4, v39);
      v41 = (*(v50 + 88))(v40, v4);
      if (v41 == v47)
      {
        sub_100826538();
        v42.n128_f64[0] = sub_1008369E8();
        (*(v32 + 8))(v54, v52, v42);
      }

      else
      {
        v43 = v54;
        if (v41 == enum case for MusicPropertySource.library(_:))
        {
          v44.n128_f64[0] = sub_100827458();
          (*(v32 + 8))(v43, v52, v44);
        }

        else
        {
          (*(v32 + 8))(v54, v52);
          v45(v40, v4);
        }
      }
    }

    else
    {
      (*(v51 + 8))(v17, v52);
    }
  }
}

void sub_1008259A0(void *a1)
{
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, qword_1012193F8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Displaying catalog playlist error view.", v5, 2u);
  }

  if (a1)
  {
    v6 = a1;
    v7 = [v6 userInfo];
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v8 + 16))
    {
      v11 = sub_100019C10(v9, v10);
      v13 = v12;

      if (v13)
      {
        sub_10000DD18(*(v8 + 56) + 32 * v11, v17);

        if ((swift_dynamicCast() & 1) != 0 && (v16 - 400) <= 0x63)
        {
          sub_100825C38(0xC000000000000001, 0, 0);
LABEL_17:

          return;
        }

LABEL_16:
        v14 = sub_100818E5C();
        v15 = swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_100825C38(v14 & 1, sub_10086A638, v15);

        goto LABEL_17;
      }
    }

    else
    {
    }

    goto LABEL_16;
  }

  sub_100825C38(0xC000000000000001, 0, 0);
}

void sub_100825C38(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v9 = v27 - v8 + 22;
  v10 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v3 + v10, v9, &unk_1011814D0, &qword_100EC12A0);
  v11 = type metadata accessor for Playlist();
  LODWORD(v10) = (*(*(v11 - 8) + 48))(v9, 1, v11);
  sub_1000095E8(v9, &unk_1011814D0, &qword_100EC12A0);
  if (v10 != 1)
  {
LABEL_7:
    sub_10011896C(a1, a2, a3);
    goto LABEL_8;
  }

  v12 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    if (v12 == 2)
    {
      a2 = 0;
      a3 = 0;
      a1 = 0x8000000000000001;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v12)
  {
    a2 = 0;
    a3 = 0;
    a1 = a1 & 0x100 | 0x4000000000000001;
  }

  else
  {

    a1 = 1;
  }

LABEL_8:
  v13 = (v3 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState);
  v14 = *(v3 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState);
  v15 = *(v3 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState + 8);
  v16 = *(v3 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState + 16);
  *v13 = a1;
  v13[1] = a2;
  v13[2] = a3;
  sub_10011896C(a1, a2, a3);
  sub_100817B04(v14, v15, v16);
  sub_1004E5BA4(v14, v15, v16);
  sub_1004E5B90(a1, a2, a3);
  v17 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v3 + v17, v27, &unk_1011926C0, &unk_100ECF870);
  if (v28)
  {
    sub_1000095E8(v27, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v27, &unk_1011926C0, &unk_100ECF870);
    if (Strong)
    {
      v19 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_loadingTimer;
      [*&Strong[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_loadingTimer] invalidate];
      v20 = *&Strong[v19];
      *&Strong[v19] = 0;
    }
  }

  v21 = *v13;
  if (*v13 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL && (v21 >> 62 == 3 || (v21))
  {
    sub_1000089F8(v4 + v17, v27, &unk_1011926C0, &unk_100ECF870);
    if (v28)
    {
      sub_1000095E8(v27, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      v22 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v27, &unk_1011926C0, &unk_100ECF870);
      if (v22)
      {
        sub_10069F9B8();

        sub_1005587C8(v23);
      }
    }

    *(v4 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeHeaderOnNextReload) = 1;
    sub_10083AF5C(0);
    sub_1000089F8(v4 + v17, v27, &unk_1011926C0, &unk_100ECF870);
    if (v28)
    {
      sub_1000095E8(v27, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      v24 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v27, &unk_1011926C0, &unk_100ECF870);
      if (v24)
      {
        sub_10069F67C();
      }
    }

    sub_1000089F8(v4 + v17, v27, &unk_1011926C0, &unk_100ECF870);
    if (v28)
    {
      sub_1000095E8(v27, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      v25 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v27, &unk_1011926C0, &unk_100ECF870);
      if (v25)
      {
        [v25 setNeedsUpdateContentUnavailableConfiguration];
      }
    }
  }

  else
  {
    sub_10083AF5C(0);
  }
}

uint64_t sub_1008260A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = sub_10010FC20(&qword_10118A3B0, &qword_100EE4B40);
  v25 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v25 - v4;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v7 = &v25 - v6;
  v8 = type metadata accessor for Playlist();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v2 + v12, v7, &unk_1011814D0, &qword_100EC12A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000095E8(v7, &unk_1011814D0, &qword_100EC12A0);
    v13 = 1;
    v15 = v25;
    v14 = v26;
    return (*(v15 + 56))(v14, v13, 1, v3);
  }

  (*(v9 + 32))(v11, v7, v8);
  type metadata accessor for Playlist.Entry();
  MusicLibrarySectionedRequest.init()();
  MusicLibrarySectionedRequest.deferIdentifierResolution.setter();
  MusicLibrarySectionedRequest<>.filterSections(equalTo:)();
  v16 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v2 + v16, &v27, &unk_1011926C0, &unk_100ECF870);
  if (v28)
  {
    sub_1000095E8(&v27, &unk_1011926C0, &unk_100ECF870);
LABEL_7:
    type metadata accessor for MusicLibrary();
    static MusicLibrary.shared.getter();
    goto LABEL_8;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v27, &unk_1011926C0, &unk_100ECF870);
  if (!Strong)
  {
    goto LABEL_7;
  }

  v18 = [Strong traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

LABEL_8:
  MusicLibrarySectionedRequest.library.setter();
  v19 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeOnlyDownloadedContent;
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  if (*(v2 + v19) == 1)
  {
    swift_getKeyPath();
    LOBYTE(v27) = 1;
    MusicLibrarySectionedRequest<>.includeSections<A>(matching:equalTo:)();
  }

  MusicLibrarySectionedRequest.ignoreExplicitContentRestrictions.setter();
  if (*(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sortingController))
  {

    PlaylistSortingController.apply(to:)();
  }

  v20 = (v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_searchText);
  v21 = *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_searchText + 8);
  if (v21)
  {
    v22 = *v20;

    v23._countAndFlagsBits = v22;
    v23._object = v21;
    MusicLibrarySectionedRequest.filterItems(text:)(v23);
  }

  (*(v9 + 8))(v11, v8);
  v15 = v25;
  v14 = v26;
  (*(v25 + 32))(v26, v5, v3);
  v13 = 0;
  return (*(v15 + 56))(v14, v13, 1, v3);
}

double sub_100826538()
{
  v1 = v0;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v35 = &v31 - v2;
  v3 = sub_10010FC20(&unk_1011A4920, &qword_100ED9288);
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin();
  v34 = &v31 - v4;
  v5 = sub_10010FC20(&qword_10119A848, &qword_100ED9290);
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin();
  v39 = &v31 - v6;
  v42 = sub_10010FC20(&unk_1011A4930, &qword_100ED9298);
  v38 = *(v42 - 8);
  __chkstk_darwin();
  v8 = &v31 - v7;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v10 = &v31 - v9;
  v11 = type metadata accessor for Playlist();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogPlaylist;
  swift_beginAccess();
  sub_1000089F8(v1 + v15, v10, &unk_1011814D0, &qword_100EC12A0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000095E8(v10, &unk_1011814D0, &qword_100EC12A0);
  }

  else
  {
    v17 = *(v12 + 32);
    v33 = v14;
    v17(v14, v10, v11);
    sub_10010FC20(&qword_101191FC0, &unk_100ED92D0);
    v18 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100EBC6B0;
    (*(v12 + 16))(v19 + v18, v14, v11);
    sub_100866F00(&unk_1011A4940, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    v32 = v8;
    MusicLibraryMapping.Request.init(mappingItems:)();
    sub_100020674(&qword_10119A850, &unk_1011A4930, &qword_100ED9298, &protocol conformance descriptor for MusicLibraryMapping.Request<A>);
    v20 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    v21 = v1;
    v22 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponse);
    *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponse) = v20 | 0x8000000000000000;
    v31 = v20;

    sub_1004E6028(v22);
    v23 = v34;
    dispatch thunk of MusicAutoupdatingResponse.$response.getter();
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    v24 = static OS_dispatch_queue.main.getter();
    v43 = v24;
    v25 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v26 = v35;
    (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
    sub_100020674(&unk_1011A4950, &unk_1011A4920, &qword_100ED9288, &protocol conformance descriptor for Published<A>.Publisher);
    sub_1000206BC();
    v27 = v39;
    v28 = v37;
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v26, &qword_101182140, &unk_100EBD2A0);

    (*(v36 + 8))(v23, v28);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100020674(&qword_10119A858, &qword_10119A848, &qword_100ED9290, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v29 = v41;
    v30 = Publisher<>.sink(receiveValue:)();

    (*(v40 + 8))(v27, v29);
    (*(v38 + 8))(v32, v42);
    (*(v12 + 8))(v33, v11);
    *(v21 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponseSubscription) = v30;
  }

  return result;
}

void *sub_100826BE4(char *a1, uint64_t a2)
{
  v60 = a1;
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v53 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v52 - v3;
  __chkstk_darwin();
  v54 = &v52 - v5;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v55 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v52 - v7;
  v9 = sub_10010FC20(&unk_1011A4960, &qword_100ED92E0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v52 - v11;
  v13 = type metadata accessor for Playlist();
  v14 = *(v13 - 8);
  v56 = v13;
  v57 = v14;
  __chkstk_darwin();
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v58 = &v52 - v17;
  sub_10010FC20(&qword_10119A860, &unk_100EE4FC0);
  __chkstk_darwin();
  v19 = &v52 - v18;
  v20 = sub_10010FC20(&unk_1011A4970, &qword_100ED92E8);
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v59 = &v52 - v22;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v24 = result;
    sub_1000089F8(v60, v19, &qword_10119A860, &unk_100EE4FC0);
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {

      v25 = &qword_10119A860;
      v26 = &unk_100EE4FC0;
      v27 = v19;
      return sub_1000095E8(v27, v25, v26);
    }

    v60 = v4;
    v28 = v59;
    (*(v21 + 32))(v59, v19, v20);
    v29 = MusicLibraryMapping.Response.mappedItems.getter();
    if (!*(v29 + 16))
    {

      return (*(v21 + 8))(v28, v20);
    }

    v52 = v20;
    (*(v10 + 16))(v12, v29 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9);

    MusicLibraryMapping.MappedItem.item.getter();
    (*(v10 + 8))(v12, v9);
    v30 = v57;
    v31 = v58;
    v32 = v16;
    v33 = v56;
    (*(v57 + 32))(v58, v32, v56);
    (*(v30 + 16))(v8, v31, v33);
    (*(v30 + 56))(v8, 0, 1, v33);
    v34 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
    swift_beginAccess();
    v35 = v55;
    sub_1000089F8(v24 + v34, v55, &unk_1011814D0, &qword_100EC12A0);
    swift_beginAccess();
    sub_1002190E0(v8, v24 + v34, &unk_1011814D0, &qword_100EC12A0);
    swift_endAccess();
    sub_10081EE74(v35);
    sub_1000095E8(v35, &unk_1011814D0, &qword_100EC12A0);
    sub_1000095E8(v8, &unk_1011814D0, &qword_100EC12A0);
    v36 = sub_10081FE6C();
    v37 = v60;
    if ((v36 & 1) != 0 && (*(v24 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isPendingLocalAddAction) & 1) == 0)
    {
      sub_10082920C();

      (*(v57 + 8))(v58, v33);
      v44 = *(v21 + 8);
      v45 = v59;
      return v44(v45, v52);
    }

    v38 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogEntries;
    swift_beginAccess();
    v39 = v54;
    sub_1000089F8(v24 + v38, v54, &qword_10119A808, &unk_100ED91D0);
    v40 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
    v41 = *(v40 - 8);
    v42 = *(v41 + 48);
    if (v42(v39, 1, v40) != 1)
    {

      (*(v57 + 8))(v58, v33);
      (*(v21 + 8))(v59, v52);
      v25 = &qword_10119A808;
      v26 = &unk_100ED91D0;
      v27 = v39;
      return sub_1000095E8(v27, v25, v26);
    }

    sub_1000095E8(v39, &qword_10119A808, &unk_100ED91D0);
    Playlist.entries.getter();
    if (v42(v37, 1, v40) == 1)
    {
      sub_1000095E8(v37, &qword_10119A808, &unk_100ED91D0);
      v43 = v59;
    }

    else
    {
      v46 = MusicItemCollection.hasNextBatch.getter();
      (*(v41 + 8))(v37, v40);
      v43 = v59;
      if (v46)
      {
        v47 = v53;
        v48 = v58;
        Playlist.entries.getter();
        swift_beginAccess();
        sub_10006B010(v47, v24 + v38, &qword_10119A808, &unk_100ED91D0);
        swift_endAccess();
        sub_1008369E8();

        (*(v57 + 8))(v48, v33);
LABEL_17:
        v44 = *(v21 + 8);
        v45 = v43;
        return v44(v45, v52);
      }
    }

    v49 = v53;
    v50 = v58;
    Playlist.entries.getter();
    v51 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries;
    swift_beginAccess();
    sub_1002190E0(v49, v24 + v51, &qword_10119A808, &unk_100ED91D0);
    swift_endAccess();
    sub_1008422A8();

    sub_1000095E8(v49, &qword_10119A808, &unk_100ED91D0);
    (*(v57 + 8))(v50, v33);
    goto LABEL_17;
  }

  return result;
}

double sub_100827458()
{
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v111 = &v96 - v1;
  v2 = sub_10010FC20(&qword_10119A820, &unk_100ED9240);
  v110 = *(v2 - 8);
  __chkstk_darwin();
  v109 = &v96 - v3;
  v107 = sub_10010FC20(&unk_1011A48E0, &qword_100EE4FA0);
  v112 = *(v107 - 8);
  __chkstk_darwin();
  v5 = &v96 - v4;
  v99 = sub_10010FC20(&unk_101191A70, &unk_100EBF360);
  __chkstk_darwin();
  v101 = &v96 - v6;
  v106 = type metadata accessor for Playlist();
  v105 = *(v106 - 8);
  __chkstk_darwin();
  v113 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v114 = &v96 - v8;
  v102 = sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v104 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v96 - v10;
  sub_10010FC20(&unk_1011A46C0, &qword_100EE4B38);
  __chkstk_darwin();
  v13 = &v96 - v12;
  v14 = sub_10010FC20(&qword_10118A3B0, &qword_100EE4B40);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v103 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v96 - v17;
  __chkstk_darwin();
  v20 = &v96 - v19;
  sub_1008260A0(v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000095E8(v13, &unk_1011A46C0, &qword_100EE4B38);
    return result;
  }

  v98 = v2;
  v100 = v5;
  v108 = v15;
  v22 = *(v15 + 32);
  v116 = v14;
  v22(v20, v13, v14);
  v23 = v20;
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v115 = sub_1000060E4(v24, qword_1012193F8);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "╭ Kicking off library request", v27, 2u);
  }

  v28 = v0;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  v31 = os_log_type_enabled(v29, v30);
  v97 = v28;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v120[0] = v33;
    *v32 = 136446210;
    v34 = v23;
    v35 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
    swift_beginAccess();
    v36 = &v28[v35];
    v23 = v34;
    sub_1000089F8(v36, v11, &unk_1011814D0, &qword_100EC12A0);
    v37 = String.init<A>(describing:)();
    v39 = sub_1000105AC(v37, v38, v120);

    *(v32 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v29, v30, "| Playlist: %{public}s", v32, 0xCu);
    sub_10000959C(v33);
  }

  v40 = v108;
  v41 = *(v108 + 16);
  v102 = v23;
  v42 = v116;
  v41(v18, v23, v116);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = v40;
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v120[0] = v47;
    *v46 = 136446210;
    v41(v103, v18, v42);
    v48 = String.init<A>(describing:)();
    v49 = v42;
    v50 = v48;
    v52 = v51;
    v103 = *(v45 + 8);
    (v103)(v18, v49);
    v53 = sub_1000105AC(v50, v52, v120);

    *(v46 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v43, v44, "| Request: %{public}s", v46, 0xCu);
    sub_10000959C(v47);
  }

  else
  {

    v103 = *(v40 + 8);
    (v103)(v18, v42);
  }

  v54 = v100;
  v55 = v97;
  v57 = v113;
  v56 = v114;
  v58 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  v59 = &v55[v58];
  v60 = v104;
  sub_1000089F8(v59, v104, &unk_1011814D0, &qword_100EC12A0);
  v61 = v105;
  v62 = v106;
  if ((*(v105 + 48))(v60, 1, v106) == 1)
  {
    sub_1000095E8(v60, &unk_1011814D0, &qword_100EC12A0);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "╰ Add Status: Unknown", v65, 2u);
    }

    goto LABEL_20;
  }

  (*(v61 + 32))(v56, v60, v62);
  (*(v61 + 16))(v57, v56, v62);
  v66 = v55;
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v119 = v70;
    *v69 = 136446210;
    v71 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(&v66[v71], &v117, &unk_1011926C0, &unk_100ECF870);
    if (v118)
    {
      sub_1000095E8(&v117, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v117, &unk_1011926C0, &unk_100ECF870);
      if (Strong)
      {
        v75 = [Strong traitCollection];
        sub_100137E8C();
        UITraitCollection.subscript.getter();

        MusicLibrary.state<A>(for:)();

        dispatch thunk of MusicLibrary.ItemState.addStatus.getter();

        v76 = 0;
LABEL_24:
        v77 = type metadata accessor for MusicLibrary.AddStatus();
        (*(*(v77 - 8) + 56))(v101, v76, 1, v77);
        v78 = String.init<A>(describing:)();
        v80 = v79;
        v81 = *(v61 + 8);
        v81(v113, v62);
        v82 = sub_1000105AC(v78, v80, &v119);

        *(v69 + 4) = v82;
        _os_log_impl(&_mh_execute_header, v67, v68, "╰ Add Status: %{public}s", v69, 0xCu);
        sub_10000959C(v70);

        v81(v114, v62);
        v73 = v102;
        v54 = v100;
        goto LABEL_25;
      }
    }

    v76 = 1;
    goto LABEL_24;
  }

  v72 = *(v61 + 8);
  v72(v57, v62);
  v72(v56, v62);
LABEL_20:
  v73 = v102;
LABEL_25:
  sub_100020674(&qword_10119A828, &qword_10118A3B0, &qword_100EE4B40, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
  v83 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
  v84 = *&v55[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponse];
  *&v55[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponse] = v83;

  sub_1004E6028(v84);
  v85 = v55;
  v86 = v109;
  dispatch thunk of MusicAutoupdatingResponse.$response.getter();
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v87 = static OS_dispatch_queue.main.getter();
  v117 = v87;
  v88 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v89 = v111;
  (*(*(v88 - 8) + 56))(v111, 1, 1, v88);
  sub_100020674(&unk_1011A48F0, &qword_10119A820, &unk_100ED9240, &protocol conformance descriptor for Published<A>.Publisher);
  sub_1000206BC();
  v90 = v54;
  v91 = v98;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v89, &qword_101182140, &unk_100EBD2A0);

  (*(v110 + 8))(v86, v91);
  v92 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v93 = swift_allocObject();
  *(v93 + 16) = v92;
  *(v93 + 24) = v83;
  sub_100020674(&qword_10119A830, &unk_1011A48E0, &qword_100EE4FA0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v94 = v107;
  v95 = Publisher<>.sink(receiveValue:)();

  (*(v112 + 8))(v90, v94);
  (v103)(v73, v116);
  *&v85[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponseSubscription] = v95;

  return result;
}

void sub_10082832C(uint64_t a1, uint64_t a2)
{
  v87 = a1;
  v2 = type metadata accessor for MusicPropertySource();
  v86 = *(v2 - 8);
  __chkstk_darwin();
  v84 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v85 = &v79 - v4;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v83 = &v79 - v5;
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v82 = &v79 - v6;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v79 - v9;
  sub_10010FC20(&unk_1011A4900, &qword_100ED9268);
  __chkstk_darwin();
  v81 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v79 - v12;
  sub_10010FC20(&qword_10119A838, &qword_100ED9270);
  __chkstk_darwin();
  v15 = &v79 - v14;
  v16 = sub_10010FC20(&unk_1011A4910, &qword_100ED9278);
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v79 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v21 = Strong;
  if ((dispatch thunk of MusicAutoupdatingResponse.isLoaded.getter() & 1) == 0)
  {

    return;
  }

  v79 = v2;
  v80 = v21;
  sub_1000089F8(v87, v13, &unk_1011A4900, &qword_100ED9268);
  v22 = sub_10010FC20(&qword_10119A840, &qword_100ED9280);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v13, 1, v22) == 1)
  {
    sub_1000095E8(v13, &unk_1011A4900, &qword_100ED9268);
    (*(v17 + 56))(v15, 1, 1, v16);
    v24 = v80;
    v25 = v79;
  }

  else
  {
    v26 = MusicLibrarySectionedResponse.sections.getter();
    (*(v23 + 8))(v13, v22);
    if (*(v26 + 16))
    {
      v27 = v17;
      (*(v17 + 16))(v15, v26 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v16);
      v28 = 0;
      v24 = v80;
      v25 = v79;
    }

    else
    {
      v28 = 1;
      v25 = v79;
      v27 = v17;
      v24 = v80;
    }

    (*(v27 + 56))(v15, v28, 1, v16);
    if ((*(v27 + 48))(v15, 1, v16) != 1)
    {
      (*(v27 + 32))(v19, v15, v16);
      v24[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_allowsCatalogFallback] = 0;
      MusicLibrarySection.item.getter();
      v59 = type metadata accessor for Playlist();
      (*(*(v59 - 8) + 56))(v10, 0, 1, v59);
      v60 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
      swift_beginAccess();
      sub_1000089F8(&v24[v60], v8, &unk_1011814D0, &qword_100EC12A0);
      swift_beginAccess();
      sub_1002190E0(v10, &v24[v60], &unk_1011814D0, &qword_100EC12A0);
      swift_endAccess();
      sub_10081EE74(v8);
      sub_1000095E8(v8, &unk_1011814D0, &qword_100EC12A0);
      sub_1000095E8(v10, &unk_1011814D0, &qword_100EC12A0);
      sub_1008192FC(0);
      v61 = v82;
      MusicLibrarySection.items.getter();
      v62 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
      (*(*(v62 - 8) + 56))(v61, 0, 1, v62);
      v63 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries;
      swift_beginAccess();
      sub_1002190E0(v61, &v24[v63], &qword_10119A808, &unk_100ED91D0);
      swift_endAccess();
      sub_1008422A8();
      sub_1000095E8(v61, &qword_10119A808, &unk_100ED91D0);
      sub_100835910();
      v64 = v83;
      static TaskPriority.userInitiated.getter();
      v65 = type metadata accessor for TaskPriority();
      (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
      type metadata accessor for MainActor();
      v66 = v24;
      v67 = static MainActor.shared.getter();
      v68 = swift_allocObject();
      v68[2] = v67;
      v68[3] = &protocol witness table for MainActor;
      v68[4] = v66;
      sub_1001F4CB8(0, 0, v64, &unk_100EE4FB0, v68);

      (*(v27 + 8))(v19, v16);
      return;
    }
  }

  sub_1000095E8(v15, &qword_10119A838, &qword_100ED9270);
  if ((v24[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_allowsCatalogFallback] & 1) == 0)
  {
    v41 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
    swift_beginAccess();
    v43 = v85;
    v42 = v86;
    v44 = *(v86 + 16);
    v44(v85, &v24[v41], v25);
    v45 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_initialSource;
    swift_beginAccess();
    v46 = v84;
    v44(v84, &v24[v45], v25);
    sub_100866F00(&qword_10119A868, &type metadata accessor for MusicPropertySource, &protocol conformance descriptor for MusicPropertySource);
    LOBYTE(v45) = dispatch thunk of static Equatable.== infix(_:_:)();
    v47 = *(v42 + 8);
    v47(v46, v25);
    v47(v43, v25);
    if ((v45 & 1) == 0)
    {
      sub_100829678();

      return;
    }

    if (qword_10117FC48 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_1000060E4(v48, qword_1012193F8);
    v49 = v81;
    sub_1000089F8(v87, v81, &unk_1011A4900, &qword_100ED9268);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v88[0] = v53;
      *v52 = 136446210;
      v54 = sub_100805CEC(v49);
      v55 = v24;
      v57 = v56;
      sub_1000095E8(v49, &unk_1011A4900, &qword_100ED9268);
      v58 = sub_1000105AC(v54, v57, v88);
      v24 = v55;

      *(v52 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v50, v51, "Popping playlist detail view controller with reason: %{public}s", v52, 0xCu);
      sub_10000959C(v53);
    }

    else
    {

      sub_1000095E8(v49, &unk_1011A4900, &qword_100ED9268);
    }

    v77 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(&v24[v77], v89, &unk_1011926C0, &unk_100ECF870);
    if (v89[8] == 1)
    {

      sub_1000095E8(v89, &unk_1011926C0, &unk_100ECF870);
      return;
    }

    v78 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v89, &unk_1011926C0, &unk_100ECF870);
    if (v78)
    {
      sub_1003FE034(1);
    }

    goto LABEL_38;
  }

  if (*&v24[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogID + 8])
  {
    if (qword_10117FC48 != -1)
    {
      swift_once();
    }

    v29 = v24;
    v30 = type metadata accessor for Logger();
    sub_1000060E4(v30, qword_1012193F8);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to load library playlist — Falling back to catalog.", v33, 2u);
    }

    v34 = enum case for MusicPropertySource.catalog(_:);
    v36 = v85;
    v35 = v86;
    v37 = *(v86 + 104);
    v37(v85, enum case for MusicPropertySource.catalog(_:), v25);
    v38 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_initialSource;
    swift_beginAccess();
    v39 = *(v35 + 40);
    v39(&v29[v38], v36, v25);
    swift_endAccess();
    v37(v36, v34, v25);
    v40 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
    swift_beginAccess();
    v39(&v29[v40], v36, v25);
    swift_endAccess();
    sub_10081B700();

    return;
  }

  v69 = *(**CloudLibrary.StatusObserver.shared.unsafeMutableAddressor() + 328);

  v71 = v69(v70);

  if (v71 >> 30 != 1 && (v71 >> 30 != 2 || v71 != 2147483652))
  {
LABEL_38:

    return;
  }

  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v72 = type metadata accessor for Logger();
  sub_1000060E4(v72, qword_1012193F8);
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&_mh_execute_header, v73, v74, "Failed to load library playlist because library is loading.", v75, 2u);
  }

  v76 = sub_100818E5C();
  sub_100825C38(v76 & 1 | 0x4000000000000100, 0, 0);
}

uint64_t sub_100829160()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1001AB600;

  return sub_10082B4FC();
}

void sub_10082920C()
{
  v1 = v0;
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v3 = &v23[-v2];
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v5 = &v23[-v4];
  v6 = type metadata accessor for MusicPropertySource();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v11 = &v23[-v10];
  if (sub_10081FE6C())
  {
    if (qword_10117FC48 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000060E4(v12, qword_1012193F8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Applying source override.", v15, 2u);
    }

    v16 = enum case for MusicPropertySource.library(_:);
    (*(v7 + 104))(v11, enum case for MusicPropertySource.library(_:), v6);
    v17 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
    swift_beginAccess();
    (*(v7 + 40))(v1 + v17, v11, v6);
    swift_endAccess();
    *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponseSubscription) = 0;

    v18 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
    swift_beginAccess();
    sub_1000089F8(v1 + v18, v5, &unk_1011814D0, &qword_100EC12A0);
    type metadata accessor for PlaylistSortingController(0);
    swift_allocObject();
    v19 = PlaylistSortingController.init(_:)(v5);
    sub_10081FD8C(v19);
    *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogEntriesAutoupdatingResponse) = 0;

    *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogEntriesAutoupdatingResponseSubscription) = 0;

    v20 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
    (*(*(v20 - 8) + 56))(v3, 1, 1, v20);
    v21 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogEntries;
    swift_beginAccess();
    sub_10006B010(v3, v1 + v21, &qword_10119A808, &unk_100ED91D0);
    swift_endAccess();
    *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_paginationTask) = 0;

    (*(v7 + 16))(v9, v1 + v17, v6);
    v22 = (*(v7 + 88))(v9, v6);
    if (v22 == enum case for MusicPropertySource.catalog(_:))
    {
      sub_100826538();
      sub_1008369E8();
    }

    else if (v22 == v16)
    {
      sub_100827458();
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }
  }
}

void sub_100829678()
{
  v1 = v0;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v93 = &v88 - v2;
  v3 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v105 = *(v3 - 8);
  v106 = v3;
  __chkstk_darwin();
  v94 = &v88 - v4;
  v107 = type metadata accessor for IndexPath();
  v104 = *(v107 - 8);
  __chkstk_darwin();
  v101 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v97 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v98 = &v88 - v7;
  v8 = type metadata accessor for Playlist();
  v9 = *(v8 - 8);
  v109 = v8;
  v110 = v9;
  __chkstk_darwin();
  v95 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v103 = &v88 - v11;
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v96 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v108 = &v88 - v13;
  __chkstk_darwin();
  v100 = &v88 - v14;
  __chkstk_darwin();
  v102 = &v88 - v15;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v99 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v88 - v17;
  __chkstk_darwin();
  v20 = &v88 - v19;
  __chkstk_darwin();
  v22 = &v88 - v21;
  v23 = type metadata accessor for MusicPropertySource();
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v26 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_1000060E4(v27, qword_1012193F8);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Removing source override.", v30, 2u);
  }

  (*(v24 + 104))(v26, enum case for MusicPropertySource.catalog(_:), v23);
  v31 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
  swift_beginAccess();
  (*(v24 + 40))(v1 + v31, v26, v23);
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponseSubscription) = 0;

  sub_10081FD8C(0);
  v32 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogPlaylist;
  swift_beginAccess();
  sub_1000089F8(v1 + v32, v22, &unk_1011814D0, &qword_100EC12A0);
  v33 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v1 + v33, v20, &unk_1011814D0, &qword_100EC12A0);
  swift_beginAccess();
  sub_1002190E0(v22, v1 + v33, &unk_1011814D0, &qword_100EC12A0);
  swift_endAccess();
  sub_10081EE74(v20);
  sub_1000095E8(v20, &unk_1011814D0, &qword_100EC12A0);
  sub_1000095E8(v22, &unk_1011814D0, &qword_100EC12A0);
  sub_100826538();
  sub_1000089F8(v1 + v32, v18, &unk_1011814D0, &qword_100EC12A0);
  v34 = v109;
  v35 = v110;
  v36 = *(v110 + 48);
  if (v36(v18, 1, v109))
  {
    v37 = &unk_1011814D0;
    v38 = &qword_100EC12A0;
LABEL_7:
    sub_1000095E8(v18, v37, v38);
    return;
  }

  v39 = v103;
  v92 = *(v35 + 16);
  v92(v103, v18, v34);
  sub_1000095E8(v18, &unk_1011814D0, &qword_100EC12A0);
  v40 = v102;
  Playlist.entries.getter();
  v41 = *(v35 + 8);
  v110 = v35 + 8;
  v41(v39, v34);
  v43 = v105;
  v42 = v106;
  v44 = v105 + 48;
  v103 = *(v105 + 48);
  if ((v103)(v40, 1, v106) == 1)
  {
    sub_1000095E8(v40, &qword_10119A808, &unk_100ED91D0);
    return;
  }

  v91 = v44;
  v45 = MusicItemCollection.hasNextBatch.getter();
  v46 = *(v43 + 8);
  v90 = v43 + 8;
  v89 = v46;
  v46(v40, v42);
  if ((v45 & 1) == 0)
  {
    return;
  }

  v47 = v99;
  sub_1000089F8(v1 + v32, v99, &unk_1011814D0, &qword_100EC12A0);
  v48 = v109;
  if (v36(v47, 1, v109))
  {
    sub_1000095E8(v47, &unk_1011814D0, &qword_100EC12A0);
    v49 = v100;
    (*(v43 + 56))(v100, 1, 1, v42);
  }

  else
  {
    v50 = v47;
    v51 = v95;
    v92(v95, v50, v48);
    sub_1000095E8(v50, &unk_1011814D0, &qword_100EC12A0);
    v49 = v100;
    Playlist.entries.getter();
    v41(v51, v48);
  }

  v52 = v104;
  v53 = v108;
  v54 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogEntries;
  swift_beginAccess();
  v99 = v54;
  sub_10006B010(v49, v1 + v54, &qword_10119A808, &unk_100ED91D0);
  swift_endAccess();
  v55 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
  v56 = *(v55 + 16);
  v57 = v56 != 0;
  v58 = 0;
  if (v56)
  {
    v59 = v55 + 32;
    while (*(v59 + v58) != 2)
    {
      v57 = v56 != ++v58;
      if (v56 == v58)
      {
        v58 = 0;
        break;
      }
    }
  }

  v60 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v60, &v111, &unk_1011926C0, &unk_100ECF870);
  if (v112)
  {
    sub_1000095E8(&v111, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(&v111, &unk_1011926C0, &unk_100ECF870);
    if (Strong)
    {
      v62 = sub_1006A6078();

      v63 = [v62 indexPathsForVisibleItems];
      v64 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v111 = v64;

      sub_10085CCEC(&v111);

      v110 = v111;
      v65 = *(v111 + 16);
      v53 = v108;
      if (v65)
      {
        v102 = (v110 + ((*(v52 + 80) + 32) & ~*(v52 + 80)));
        v109 = v52 + 16;
        v100 = (v52 + 8);
        while (v65 <= *(v110 + 16))
        {
          --v65;
          v66 = &v102[*(v52 + 72) * v65];
          v67 = *(v52 + 16);
          v68 = v101;
          v69 = v107;
          v67(v101, v66, v107);
          v70 = IndexPath.section.getter();
          (*(v52 + 8))(v68, v69);
          if (v57 && v58 == v70)
          {
            v18 = v98;
            v72 = v107;
            v67(v98, v66, v107);

            v71 = 0;
            v43 = v105;
            v42 = v106;
            v52 = v104;
            v53 = v108;
            goto LABEL_30;
          }

          v52 = v104;
          v53 = v108;
          if (!v65)
          {
            goto LABEL_27;
          }
        }

        __break(1u);

        __break(1u);
        return;
      }

LABEL_27:

      v71 = 1;
      v18 = v98;
      v43 = v105;
      v42 = v106;
      goto LABEL_29;
    }
  }

  v71 = 1;
  v18 = v98;
LABEL_29:
  v72 = v107;
LABEL_30:
  (*(v52 + 56))(v18, v71, 1, v72);
  v73 = swift_allocBox();
  v75 = v74;
  sub_1000089F8(v1 + v99, v53, &qword_10119A808, &unk_100ED91D0);
  v76 = (v103)(v53, 1, v42);
  v77 = v97;
  if (v76 == 1)
  {
    sub_1000095E8(v53, &qword_10119A808, &unk_100ED91D0);
    swift_deallocBox();
LABEL_38:
    v86 = v96;
    sub_1000089F8(v1 + v99, v96, &qword_10119A808, &unk_100ED91D0);
    v87 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries;
    swift_beginAccess();
    sub_1002190E0(v86, v1 + v87, &qword_10119A808, &unk_100ED91D0);
    swift_endAccess();
    sub_1008422A8();
    sub_1000095E8(v86, &qword_10119A808, &unk_100ED91D0);
    sub_1008369E8();
    v37 = &unk_10118BCE0;
    v38 = &qword_100EC6450;
    goto LABEL_7;
  }

  (*(v43 + 32))(v75, v53, v42);
  sub_1000089F8(v18, v77, &unk_10118BCE0, &qword_100EC6450);
  if ((*(v52 + 48))(v77, 1, v72) == 1)
  {
    sub_1000095E8(v77, &unk_10118BCE0, &qword_100EC6450);
LABEL_37:

    goto LABEL_38;
  }

  v78 = IndexPath.item.getter();
  (*(v52 + 8))(v77, v72);
  v79 = v94;
  (*(v43 + 16))(v94, v75, v42);
  sub_100020674(&unk_101186ED0, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v80 = dispatch thunk of Collection.distance(from:to:)();
  v89(v79, v42);
  if (v80 >= v78)
  {
    goto LABEL_37;
  }

  v81 = type metadata accessor for TaskPriority();
  v82 = v93;
  (*(*(v81 - 8) + 56))(v93, 1, 1, v81);
  v83 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v84 = static MainActor.shared.getter();
  v85 = swift_allocObject();
  v85[2] = v84;
  v85[3] = &protocol witness table for MainActor;
  v85[4] = v83;
  v85[5] = v73;
  v85[6] = v78;

  sub_10086E3AC(0, 0, v82, &unk_100EE4F80, v85);

  sub_1000095E8(v18, &unk_10118BCE0, &qword_100EC6450);
}

uint64_t sub_10082A640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v6[19] = swift_task_alloc();
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  v6[20] = swift_task_alloc();
  v7 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v6[21] = v7;
  v6[22] = *(v7 - 8);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_projectBox();
  v6[27] = type metadata accessor for MainActor();
  v6[28] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[29] = v9;
  v6[30] = v8;

  return _swift_task_switch(sub_10082A7E0, v9, v8);
}

uint64_t sub_10082A7E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[31] = Strong;
  if (Strong)
  {
    v2 = v0[22];
    swift_beginAccess();
    swift_beginAccess();
    v3 = *(v2 + 16);
    v0[32] = v3;
    v4 = v0[25];
    v5 = v0[21];
    v6 = v0[22];
    v7 = v0[18];
    v3(v4, v0[26], v5);
    sub_100020674(&unk_101186ED0, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v8 = dispatch thunk of Collection.distance(from:to:)();
    v9 = *(v6 + 8);
    v0[33] = v9;
    v0[34] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v4, v5);
    if (v8 < v7)
    {
      (v0[32])(v0[23], v0[26], v0[21]);
      v10 = swift_task_alloc();
      v0[35] = v10;
      v11 = sub_100866F00(&qword_1011A4778, &type metadata accessor for Playlist.Entry, &protocol conformance descriptor for Playlist.Entry);
      *v10 = v0;
      v10[1] = sub_10082AB70;
      v12 = v0[20];
      v13 = v0[21];

      return MusicItemCollection.nextBatch<>(limit:)(v12, 0, 1, v13, v11);
    }

    v14 = v0[31];
    v15 = v0[19];
    v16 = v0[17];

    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v19 = static MainActor.shared.getter();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = &protocol witness table for MainActor;
    v20[4] = v18;
    v20[5] = v16;

    sub_1001F4CB8(0, 0, v15, &unk_100EE4F90, v20);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_10082AB70()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  (*(v2 + 264))(*(v2 + 184), *(v2 + 168));
  v3 = *(v2 + 240);
  v4 = *(v2 + 232);
  if (v0)
  {
    v5 = sub_10082B134;
  }

  else
  {
    v5 = sub_10082AD00;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10082AD00()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    type metadata accessor for Playlist.Entry();
    MusicItemCollection.init(arrayLiteral:)();
    if (v4(v3, 1, v1) != 1)
    {
      sub_1000095E8(*(v0 + 160), &qword_10119A808, &unk_100ED91D0);
    }
  }

  else
  {
    (*(v2 + 32))(*(v0 + 192), v3, v1);
  }

  v5 = *(v0 + 264);
  v6 = *(v0 + 192);
  v7 = *(v0 + 168);
  swift_beginAccess();
  type metadata accessor for Playlist.Entry();
  static MusicItemCollection.+= infix(_:_:)();
  swift_endAccess();
  v5(v6, v7);
  v8 = *(v0 + 200);
  v9 = *(v0 + 168);
  v10 = *(v0 + 176);
  v11 = *(v0 + 144);
  (*(v0 + 256))(v8, *(v0 + 208), v9);
  sub_100020674(&unk_101186ED0, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v12 = dispatch thunk of Collection.distance(from:to:)();
  v13 = *(v10 + 8);
  *(v0 + 264) = v13;
  *(v0 + 272) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v8, v9);
  if (v12 >= v11)
  {
    v18 = *(v0 + 248);
    v19 = *(v0 + 152);
    v20 = *(v0 + 136);

    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v23 = static MainActor.shared.getter();
    v24 = swift_allocObject();
    v24[2] = v23;
    v24[3] = &protocol witness table for MainActor;
    v24[4] = v22;
    v24[5] = v20;

    sub_1001F4CB8(0, 0, v19, &unk_100EE4F90, v24);

    v25 = *(v0 + 8);

    return v25();
  }

  else
  {
    (*(v0 + 256))(*(v0 + 184), *(v0 + 208), *(v0 + 168));
    v14 = swift_task_alloc();
    *(v0 + 280) = v14;
    v15 = sub_100866F00(&qword_1011A4778, &type metadata accessor for Playlist.Entry, &protocol conformance descriptor for Playlist.Entry);
    *v14 = v0;
    v14[1] = sub_10082AB70;
    v16 = *(v0 + 160);
    v17 = *(v0 + 168);

    return MusicItemCollection.nextBatch<>(limit:)(v16, 0, 1, v17, v15);
  }
}

uint64_t sub_10082B134()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10082B1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  v5[18] = swift_task_alloc();
  v5[19] = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v5[20] = swift_projectBox();
  type metadata accessor for MainActor();
  v5[21] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10082B2E0, v7, v6);
}

uint64_t sub_10082B2E0()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[19];
    v4 = v0[20];
    v5 = v0[18];
    swift_beginAccess();
    v6 = *(v3 - 8);
    v7 = *(v6 + 16);
    v7(v5, v4, v3);
    v8 = *(v6 + 56);
    v8(v5, 0, 1, v3);
    v9 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogEntries;
    swift_beginAccess();
    sub_10006B010(v5, v2 + v9, &qword_10119A808, &unk_100ED91D0);
    swift_endAccess();
    swift_beginAccess();
    v7(v5, v4, v3);
    v8(v5, 0, 1, v3);
    v10 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries;
    swift_beginAccess();
    sub_1002190E0(v5, v2 + v10, &qword_10119A808, &unk_100ED91D0);
    swift_endAccess();
    sub_1008422A8();
    sub_1000095E8(v5, &qword_10119A808, &unk_100ED91D0);
    sub_1008369E8();
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_10082B4FC()
{
  v1[11] = v0;
  v2 = type metadata accessor for MusicPropertySource();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v3 = type metadata accessor for Playlist();
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[22] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[23] = v5;
  v1[24] = v4;

  return _swift_task_switch(sub_10082B6A8, v5, v4);
}

uint64_t sub_10082B6A8()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[11];
  v5 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  v0[25] = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v4 + v5, v3, &unk_1011814D0, &qword_100EC12A0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[17];

    sub_1000095E8(v6, &unk_1011814D0, &qword_100EC12A0);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v10 = v0[13];
    v9 = v0[14];
    v12 = v0[11];
    v11 = v0[12];
    (*(v0[19] + 32))(v0[21], v0[17], v0[18]);
    v13 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
    swift_beginAccess();
    (*(v10 + 16))(v9, v12 + v13, v11);
    v14 = swift_task_alloc();
    v0[26] = v14;
    *v14 = v0;
    v14[1] = sub_10082B8AC;
    v15 = v0[20];
    v16 = v0[21];
    v17 = v0[14];

    return sub_10082BBEC(v15, v16, v17);
  }
}

uint64_t sub_10082B8AC()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 192);
  v6 = *(v1 + 184);

  return _swift_task_switch(sub_10082BA30, v6, v5);
}

uint64_t sub_10082BA30()
{
  v1 = v0[25];
  v11 = v0[21];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[11];

  (*(v3 + 16))(v5, v2, v4);
  (*(v3 + 56))(v5, 0, 1, v4);
  sub_1000089F8(v7 + v1, v6, &unk_1011814D0, &qword_100EC12A0);
  swift_beginAccess();
  sub_1002190E0(v5, v7 + v1, &unk_1011814D0, &qword_100EC12A0);
  swift_endAccess();
  sub_10081EE74(v6);
  sub_1000095E8(v6, &unk_1011814D0, &qword_100EC12A0);
  sub_1000095E8(v5, &unk_1011814D0, &qword_100EC12A0);
  v8 = *(v3 + 8);
  v8(v2, v4);
  v8(v11, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10082BBEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for MusicPropertySource();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[10] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[11] = v6;
  v3[12] = v5;

  return _swift_task_switch(sub_10082BCF0, v6, v5);
}

uint64_t sub_10082BCF0()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = enum case for MusicPropertySource.library(_:);
  v5 = *(v3 + 104);
  v5(v1, enum case for MusicPropertySource.library(_:), v2);
  v6 = static MusicPropertySource.== infix(_:_:)();
  v7 = *(v3 + 8);
  v0[13] = v7;
  v0[14] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v2);
  if (v6)
  {
    v8 = v0[8];
    v9 = v0[6];
    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v10 = swift_allocObject();
    v0[15] = v10;
    *(v10 + 16) = xmmword_100EBC6D0;
    sub_10010FC20(&unk_10118C1C0, &qword_100ED92A0);
    *(v10 + 32) = static PartialMusicProperty<A>.entries.getter();
    *(v10 + 40) = static PartialMusicProperty<A>.tracks.getter();
    v5(v8, v4, v9);
    v11 = swift_task_alloc();
    v0[16] = v11;
    v12 = type metadata accessor for Playlist();
    v0[17] = v12;
    v13 = sub_100866F00(&unk_1011A47F0, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    *v11 = v0;
    v11[1] = sub_10082BF84;
    v14 = v0[8];
    v15 = v0[3];

    return MusicItem<>.with(_:preferredSource:)(v15, v10, v14, v12, &protocol witness table for Playlist, &protocol witness table for Playlist, v13);
  }

  else
  {
    v16 = v0[3];
    v17 = v0[4];

    v18 = type metadata accessor for Playlist();
    (*(*(v18 - 8) + 16))(v16, v17, v18);

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_10082BF84()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 48);
  *(*v1 + 144) = v0;

  v3(v4, v5);

  v6 = *(v2 + 96);
  v7 = *(v2 + 88);
  if (v0)
  {
    v8 = sub_10082C148;
  }

  else
  {
    v8 = sub_1004C9434;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10082C148()
{
  v14 = v0;

  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_1012193F8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[18];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[2] = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to retrieve library playlist entries with error=%{public}s", v6, 0xCu);
    sub_10000959C(v7);
  }

  else
  {
  }

  (*(*(v0[17] - 8) + 16))(v0[3], v0[4]);

  v11 = v0[1];

  return v11();
}

void *sub_10082C360()
{
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v33 = v28 - v1;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v28[2] = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v28[1] = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Playlist.Collaborator();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v35 = v28 - v8;
  v32 = *(type metadata accessor for PlaylistCurators.Curator(0) - 8);
  __chkstk_darwin();
  v34 = (v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v0 + *(type metadata accessor for PlaylistDetailDataSource.CollaborationDetails(0) + 20));
  v11 = *(v10 + 16);
  if (!v11)
  {
    return 0;
  }

  v36 = _swiftEmptyArrayStorage;
  sub_10066C818(0, v11, 0);
  v12 = v36;
  v14 = *(v5 + 16);
  v13 = v5 + 16;
  v15 = (v10 + ((*(v13 + 64) + 32) & ~*(v13 + 64)));
  v29 = *(v13 + 56);
  v30 = v14;
  v28[0] = "person.2.badge.fill";
  v16 = (v13 - 8);
  v31 = v13;
  do
  {
    v17 = v35;
    v18 = v30;
    v30(v35, v15, v4);
    v18(v7, v17, v4);
    v20 = Playlist.Collaborator.name.getter();
    if (!v19)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v20 = String.init(localized:table:bundle:locale:comment:)();
    }

    v21 = v19;
    v22 = v33;
    Playlist.Collaborator.artwork.getter();
    v23 = *v16;
    (*v16)(v7, v4);
    v23(v35, v4);
    v24 = v34;
    PlaylistCurators.Curator.init(name:artwork:)(v20, v21, v22, v34);
    v36 = v12;
    v26 = v12[2];
    v25 = v12[3];
    if (v26 >= v25 >> 1)
    {
      sub_10066C818((v25 > 1), v26 + 1, 1);
      v24 = v34;
      v12 = v36;
    }

    v12[2] = v26 + 1;
    sub_100869470(v24, v12 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v26, type metadata accessor for PlaylistCurators.Curator);
    v15 += v29;
    --v11;
  }

  while (v11);
  return v12;
}

uint64_t sub_10082C784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static Playlist.Collaboration.== infix(_:_:)() & 1) == 0 || (sub_10047C308(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20))) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_10047C308(v7, v8);
}

void *sub_10082C800()
{
  v1 = v0;
  v2 = type metadata accessor for Playlist();
  v19 = *(v2 - 8);
  __chkstk_darwin();
  v18 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v5 = &v18 - v4;
  v6 = type metadata accessor for PlaylistDetailDataSource.CollaborationDetails(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A4858, &qword_100EE4EC0);
  __chkstk_darwin();
  v11 = &v18 - v10;
  v12 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationDetails;
  swift_beginAccess();
  sub_1000089F8(v1 + v12, v11, &qword_1011A4858, &qword_100EE4EC0);
  if ((*(v7 + 48))(v11, 1, v6))
  {
    sub_1000095E8(v11, &qword_1011A4858, &qword_100EE4EC0);
  }

  else
  {
    sub_10086772C(v11, v9, type metadata accessor for PlaylistDetailDataSource.CollaborationDetails);
    sub_1000095E8(v11, &qword_1011A4858, &qword_100EE4EC0);
    v15 = sub_10082C360();
    sub_100867794(v9, type metadata accessor for PlaylistDetailDataSource.CollaborationDetails);
    if (v15)
    {
      return v15;
    }
  }

  v13 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v1 + v13, v5, &unk_1011814D0, &qword_100EC12A0);
  v14 = v19;
  if ((*(v19 + 48))(v5, 1, v2))
  {
    sub_1000095E8(v5, &unk_1011814D0, &qword_100EC12A0);
    v15 = 0;
  }

  else
  {
    v16 = v18;
    (*(v14 + 16))(v18, v5, v2);
    sub_1000095E8(v5, &unk_1011814D0, &qword_100EC12A0);
    v15 = sub_10082CB90();
    (*(v14 + 8))(v16, v2);
  }

  return v15;
}

void *sub_10082CB90()
{
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v42 = v38 - v0;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v38[3] = v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v38[2] = v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Playlist.Collaborator();
  v3 = *(v44 - 8);
  __chkstk_darwin();
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v45 = v38 - v6;
  v41 = *(type metadata accessor for PlaylistCurators.Curator(0) - 8);
  __chkstk_darwin();
  v43 = (v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_1011A47E0, &qword_100EE4E48);
  __chkstk_darwin();
  v9 = v38 - v8;
  v10 = sub_10010FC20(&qword_1011A47E8, &unk_100EE4E50);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v38 - v12;
  Playlist.collaborators.getter();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000095E8(v9, &qword_1011A47E0, &qword_100EE4E48);
    return 0;
  }

  (*(v11 + 32))(v13, v9, v10);
  v14 = sub_100020674(&unk_1011A4810, &qword_1011A47E8, &unk_100EE4E50, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v46 == v47)
  {
    (*(v11 + 8))(v13, v10);
    return 0;
  }

  v17 = dispatch thunk of Collection.count.getter();
  if (!v17)
  {
    (*(v11 + 8))(v13, v10);
    return _swiftEmptyArrayStorage;
  }

  v18 = v17;
  v38[0] = v11;
  v47 = _swiftEmptyArrayStorage;
  sub_10066C818(0, v17 & ~(v17 >> 63), 0);
  v15 = v47;
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v18 & 0x8000000000000000) == 0)
  {
    v19 = (v3 + 16);
    v38[1] = "person.2.badge.fill";
    v20 = (v3 + 8);
    v39 = v13;
    v40 = v10;
    v38[4] = v14;
    do
    {
      v21 = dispatch thunk of Collection.subscript.read();
      v22 = *v19;
      v24 = v44;
      v23 = v45;
      (*v19)(v45);
      v21(&v46, 0);
      (v22)(v5, v23, v24);
      v26 = Playlist.Collaborator.name.getter();
      if (!v25)
      {
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v26 = String.init(localized:table:bundle:locale:comment:)();
      }

      v27 = v25;
      v28 = v42;
      Playlist.Collaborator.artwork.getter();
      v29 = *v20;
      v30 = v5;
      v31 = v5;
      v32 = v44;
      (*v20)(v31, v44);
      v29(v45, v32);
      v33 = v43;
      PlaylistCurators.Curator.init(name:artwork:)(v26, v27, v28, v43);
      v47 = v15;
      v35 = v15[2];
      v34 = v15[3];
      if (v35 >= v34 >> 1)
      {
        sub_10066C818((v34 > 1), v35 + 1, 1);
        v33 = v43;
        v15 = v47;
      }

      v15[2] = v35 + 1;
      sub_100869470(v33, v15 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v35, type metadata accessor for PlaylistCurators.Curator);
      v37 = v39;
      v36 = v40;
      dispatch thunk of Collection.formIndex(after:)();
      --v18;
      v5 = v30;
    }

    while (v18);
    (*(v38[0] + 8))(v37, v36);
    return v15;
  }

  __break(1u);
  return result;
}

void sub_10082D208(uint64_t a1)
{
  v3 = type metadata accessor for RelatedContentProvider.ShelfType();
  v78 = *(v3 - 8);
  v79 = v3;
  __chkstk_darwin();
  v77 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_10010FC20(&qword_1011906A0, &qword_100EE4EE0);
  __chkstk_darwin();
  v84 = &v71 - v5;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v89 = v6;
  v90 = v7;
  __chkstk_darwin();
  v76 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v88 = &v71 - v9;
  v10 = type metadata accessor for PlaylistDetailDataSource.CollaborationDetails(0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v85 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A4858, &qword_100EE4EC0);
  __chkstk_darwin();
  v80 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v71 - v14;
  v16 = sub_10010FC20(&qword_1011A48C0, &qword_100EE4F68) - 8;
  __chkstk_darwin();
  v18 = &v71 - v17;
  v86 = v1;
  v19 = v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationDetails;
  swift_beginAccess();
  v20 = *(v16 + 56);
  v81 = a1;
  sub_1000089F8(a1, v18, &qword_1011A4858, &qword_100EE4EC0);
  v87 = v19;
  sub_1000089F8(v19, &v18[v20], &qword_1011A4858, &qword_100EE4EC0);
  v23 = *(v11 + 48);
  v22 = v11 + 48;
  v21 = v23;
  if (v23(v18, 1, v10) == 1)
  {
    if (v21(&v18[v20], 1, v10) == 1)
    {
      v24 = v18;
LABEL_27:
      sub_1000095E8(v24, &qword_1011A4858, &qword_100EE4EC0);
      return;
    }

    goto LABEL_6;
  }

  sub_1000089F8(v18, v15, &qword_1011A4858, &qword_100EE4EC0);
  if (v21(&v18[v20], 1, v10) == 1)
  {
    sub_100867794(v15, type metadata accessor for PlaylistDetailDataSource.CollaborationDetails);
LABEL_6:
    sub_1000095E8(v18, &qword_1011A48C0, &qword_100EE4F68);
    v25 = v90;
    goto LABEL_12;
  }

  v26 = &v18[v20];
  v27 = v85;
  sub_100869470(v26, v85, type metadata accessor for PlaylistDetailDataSource.CollaborationDetails);
  v28 = static Playlist.Collaboration.== infix(_:_:)();
  v25 = v90;
  if (v28 & 1) != 0 && (sub_10047C308(*&v15[*(v10 + 20)], *(v27 + *(v10 + 20))))
  {
    v29 = sub_10047C308(*&v15[*(v10 + 24)], *(v27 + *(v10 + 24)));
    sub_100867794(v27, type metadata accessor for PlaylistDetailDataSource.CollaborationDetails);
    v25 = v90;
    sub_100867794(v15, type metadata accessor for PlaylistDetailDataSource.CollaborationDetails);
    sub_1000095E8(v18, &qword_1011A4858, &qword_100EE4EC0);
    if (v29)
    {
      return;
    }
  }

  else
  {
    sub_100867794(v27, type metadata accessor for PlaylistDetailDataSource.CollaborationDetails);
    sub_100867794(v15, type metadata accessor for PlaylistDetailDataSource.CollaborationDetails);
    sub_1000095E8(v18, &qword_1011A4858, &qword_100EE4EC0);
  }

LABEL_12:
  v30 = v87;
  v85 = v22;
  v31 = v21(v87, 1, v10);
  v82 = v10;
  if (v31)
  {
    v32 = 0;
  }

  else
  {
    v32 = *(v30 + *(v10 + 20));
  }

  v33 = v88;
  v34 = v89;
  v35 = Logger.collaboration.unsafeMutableAddressor();
  v36 = *(v25 + 16);
  v74 = v35;
  v75 = v25 + 16;
  v73 = v36;
  (v36)(v33);

  v37 = v86;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v86 = v32;
    v72 = v39;
    v40 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v92 = v71;
    *v40 = 136315650;
    v41 = v30;
    v42 = 1;
    v43 = v82;
    v44 = v21(v41, 1, v82);
    v45 = type metadata accessor for Playlist.Collaboration();
    v46 = *(v45 - 8);
    if (!v44)
    {
      (*(*(v45 - 8) + 16))(v84, v41, v45);
      v42 = 0;
    }

    (*(v46 + 56))(v84, v42, 1, v45);
    v47 = String.init<A>(describing:)();
    v49 = sub_1000105AC(v47, v48, &v92);

    *(v40 + 4) = v49;
    *(v40 + 12) = 2080;
    v91 = v86;

    sub_10010FC20(&qword_1011A48C8, &qword_100EE4F70);
    v50 = String.init<A>(describing:)();
    v52 = sub_1000105AC(v50, v51, &v92);

    *(v40 + 14) = v52;
    *(v40 + 22) = 2080;
    if (v21(v41, 1, v43))
    {
      v53 = v21;
      v54 = 0;
    }

    else
    {
      v53 = v21;
    }

    v34 = v89;
    v91 = v54;
    v56 = String.init<A>(describing:)();
    v58 = sub_1000105AC(v56, v57, &v92);

    *(v40 + 24) = v58;
    _os_log_impl(&_mh_execute_header, v38, v72, "    [ContainerDetail] details updated with:\n        - collaboration=%s\n        - activeCollaborators=%s\n        - pendingCollaborators=%s", v40, 0x20u);
    swift_arrayDestroy();

    v55 = *(v90 + 8);
    v55(v88, v34);
    v32 = v86;
  }

  else
  {
    v53 = v21;

    v55 = *(v25 + 8);
    v55(v33, v34);
  }

  sub_10082EBAC();
  sub_100840468();
  if (sub_100818B00())
  {
    if (v32)
    {
      v59 = v80;
      sub_1000089F8(v81, v80, &qword_1011A4858, &qword_100EE4EC0);
      v60 = v82;
      if (v53(v59, 1, v82) == 1)
      {

        v24 = v59;
        goto LABEL_27;
      }

      v61 = *(v59 + *(v60 + 20));

      sub_100867794(v59, type metadata accessor for PlaylistDetailDataSource.CollaborationDetails);
      if (v32[2] == *(v61 + 16))
      {
      }

      else
      {
        v62 = v76;
        v73(v76, v74, v34);

        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          *v65 = 134218240;
          v66 = *(v61 + 16);

          *(v65 + 4) = v66;

          *(v65 + 12) = 2048;
          v67 = v32[2];

          *(v65 + 14) = v67;

          _os_log_impl(&_mh_execute_header, v63, v64, "[ContainerDetail] activeCollaborators changed (%ld -> %ld) - Calling collaborators shelf refresh", v65, 0x16u);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        v55(v62, v89);
        v69 = v77;
        v68 = v78;
        v70 = v79;
        (*(v78 + 104))(v77, enum case for RelatedContentProvider.ShelfType.playlistCollaborators(_:), v79);
        dispatch thunk of RelatedContentProvider.refreshShelf(type:)();

        (*(v68 + 8))(v69, v70);
      }
    }

    else
    {
    }
  }

  else
  {
  }
}

Class sub_10082DD10(uint64_t a1)
{
  v2 = type metadata accessor for PopoverProvider.PopoverSource();
  v33 = *(v2 - 8);
  v34 = v2;
  __chkstk_darwin();
  v30 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for PlacementID();
  v31 = *(v4 - 8);
  v32 = v4;
  __chkstk_darwin();
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v7 = String.init(localized:table:bundle:locale:comment:)();
  v9 = v8;
  v10 = String._bridgeToObjectiveC()();
  v11 = [objc_opt_self() systemImageNamed:v10];

  sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10086A390;
  *(v12 + 24) = v6;

  v13 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  swift_unknownObjectWeakDestroy();
  v14 = AccessibilityIdentifier.playlistDetailCollaborationControl.unsafeMutableAddressor();
  v15 = *v14;
  v16 = v14[1];
  v18 = v14[2];
  v17 = v14[3];

  v19 = UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(v7, v9, v11, 0, v13, 0, v15, v16, v18, v17);
  v20 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(a1 + v20, v36, &unk_1011926C0, &unk_100ECF870);
  if ((v36[8] & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v36, &unk_1011926C0, &unk_100ECF870);
    if (Strong)
    {
      if (sub_1006A4900())
      {
        v22 = v29;
        static PlacementID.BubbleTip.collaborateButton.getter();
        v23 = v30;
        *v30 = v19;
        v25 = v33;
        v24 = v34;
        (*(v33 + 104))(v23, enum case for PopoverProvider.PopoverSource.sourceItem(_:), v34);
        v26 = v19;
        dispatch thunk of PopoverProvider.registerPlacement(for:presentingViewController:popoverSource:)();

        (*(v25 + 8))(v23, v24);
        (*(v31 + 8))(v22, v32);
        return v19;
      }
    }

    return v19;
  }

  sub_1000095E8(v36, &unk_1011926C0, &unk_100ECF870);
  return v19;
}

void *sub_10082E20C(uint64_t a1)
{
  v68 = type metadata accessor for Actions.MetricsReportingContext(0);
  __chkstk_darwin();
  v2 = (&v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v74 = &v58 - v3;
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  __chkstk_darwin();
  v71 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v67 = &v58 - v5;
  __chkstk_darwin();
  v69 = (&v58 - v6);
  v70 = type metadata accessor for MetricsEvent.Page(0);
  v72 = *(v70 - 8);
  __chkstk_darwin();
  v73 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v13 = &v58 - v12;
  v14 = type metadata accessor for Playlist();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v75 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v18 = result;
  v19 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v18 + v19, v13, &unk_1011814D0, &qword_100EC12A0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {

    return sub_1000095E8(v13, &unk_1011814D0, &qword_100EC12A0);
  }

  v65 = v15;
  v66 = v14;
  v20 = *(v15 + 32);
  v21 = v75;
  v20(v75, v13, v14);
  v22 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v18 + v22, &v76, &unk_1011926C0, &unk_100ECF870);
  if (v77 == 1)
  {
    result = sub_1000095E8(&v76, &unk_1011926C0, &unk_100ECF870);
    goto LABEL_19;
  }

  v64 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  result = sub_1000095E8(&v76, &unk_1011926C0, &unk_100ECF870);
  if (!Strong)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v86 = sub_10082DCF0();
  v87 = 0u;
  v88 = 0u;
  v89 = 1;
  PresentationSource.Position.init(source:permittedArrowDirections:)(&v86, 15, v78);
  v82[0] = v78[0];
  v82[1] = v78[1];
  v83 = v79;
  v84 = v80;
  v85 = v81;
  PresentationSource.init(viewController:position:)(Strong, v82, &v76);
  v24 = Logger.collaboration.unsafeMutableAddressor();
  (*(v9 + 16))(v11, v24, v8);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Bar button pressed", v27, 2u);
  }

  (*(v9 + 8))(v11, v8);
  if (qword_10117F610 != -1)
  {
    swift_once();
  }

  sub_100450CD8(v21, &v76);
  v28 = v21;
  v29 = Playlist.catalogID.getter();
  v31 = v73;
  v32 = v74;
  v34 = v70;
  v33 = v71;
  if (v30)
  {
    v35 = v30;
    v63 = v29;
    v36 = v69;
    sub_100859CF8(v69);
    v37 = v72;
    if ((*(v72 + 48))(v36, 1, v34) == 1)
    {

      sub_10012BA6C(&v76);
      (*(v65 + 8))(v75, v66);
      return sub_1000095E8(v36, &unk_1011838F0, &qword_100EC1070);
    }

    else
    {
      sub_100869470(v36, v31, type metadata accessor for MetricsEvent.Page);
      v38 = type metadata accessor for URL();
      (*(*(v38 - 8) + 56))(v32, 1, 1, v38);
      v39 = v67;
      sub_10086772C(v31, v67, type metadata accessor for MetricsEvent.Page);
      v40 = *(v37 + 56);
      v72 = v37 + 56;
      v62 = v40;
      v40(v39, 0, 1, v34);
      sub_10010FC20(&unk_1011927C0, &unk_100ED6A50);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_100EBC6B0;
      v42 = sub_10085A8A8();
      v69 = v41;
      *(v41 + 32) = v42;
      sub_1000089F8(v39, v33, &unk_1011838F0, &qword_100EC1070);
      MetricsReportingController.shared.unsafeMutableAddressor();
      v43 = sub_10053771C();
      v60 = v44;
      v61 = v43;
      v45 = v33;
      if (qword_10117F600 != -1)
      {
        swift_once();
      }

      v46 = qword_101218AD0;
      v59 = GroupActivitiesManager.hasJoined.getter();
      v58 = GroupActivitiesManager.participantsCount.getter();
      sub_1000095E8(v39, &unk_1011838F0, &qword_100EC1070);
      v47 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
      swift_beginAccess();
      v67 = *(v46 + v47);
      v48 = v68;
      v49 = *(v68 + 20);
      v50 = v64;
      v62(v64 + v49, 1, 1, v34);
      v51 = v48[7];
      v52 = (v50 + v48[6]);
      v53 = v48[8];
      *v50 = xmmword_100ECF4C0;
      sub_10006B010(v45, v50 + v49, &unk_1011838F0, &qword_100EC1070);
      v54 = v60;
      *v52 = v61;
      v52[1] = v54;
      *(v50 + v51) = v69;
      *(v50 + v53) = 0;
      v55 = v50 + v48[9];
      *v55 = v59 & 1;
      v56 = v67;
      *(v55 + 1) = v58;
      *(v55 + 2) = v56;
      v57 = v74;
      static Actions.reportClickEvent(targetIdentifier:targetType:actionType:actionURL:actionDetails:reportingContext:)(v63, v35, 5, 10, v74, 0, 0, 0, 0xFF00u, v50);

      sub_1000095E8(v57, &qword_101183A20, &unk_100EBCF80);
      sub_100867794(v73, type metadata accessor for MetricsEvent.Page);
      sub_10012BA6C(&v76);
      (*(v65 + 8))(v75, v66);
      return sub_100867794(v50, type metadata accessor for Actions.MetricsReportingContext);
    }
  }

  else
  {

    sub_10012BA6C(&v76);
    return (*(v65 + 8))(v28, v66);
  }
}

void sub_10082EBAC()
{
  sub_10010FC20(&qword_1011A4858, &qword_100EE4EC0);
  __chkstk_darwin();
  v2 = &v15[-v1];
  v3 = type metadata accessor for Playlist();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v8 = &v15[-v7];
  v9 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v0 + v9, v8, &unk_1011814D0, &qword_100EC12A0);
  if ((*(v4 + 48))(v8, 1, v3))
  {
    sub_1000095E8(v8, &unk_1011814D0, &qword_100EC12A0);
  }

  else
  {
    (*(v4 + 16))(v6, v8, v3);
    sub_1000095E8(v8, &unk_1011814D0, &qword_100EC12A0);
    Playlist.hasActiveCollaboration.getter();
    (*(v4 + 8))(v6, v3);
  }

  v10 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationDetails;
  swift_beginAccess();
  sub_1000089F8(v0 + v10, v2, &qword_1011A4858, &qword_100EE4EC0);
  v11 = type metadata accessor for PlaylistDetailDataSource.CollaborationDetails(0);
  if ((*(*(v11 - 8) + 48))(v2, 1, v11))
  {
    sub_1000095E8(v2, &qword_1011A4858, &qword_100EE4EC0);
  }

  else
  {

    sub_1000095E8(v2, &qword_1011A4858, &qword_100EE4EC0);
  }

  v12 = sub_10082DCF0();
  v13 = String._bridgeToObjectiveC()();

  v14 = [objc_opt_self() systemImageNamed:v13];

  [v12 setImage:v14];
}

uint64_t sub_10082EF78()
{
  v1 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___reactionController;
  if (*(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___reactionController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___reactionController);
  }

  else
  {
    v3 = v0;
    _s10ControllerCMa(0);
    swift_allocObject();
    v2 = sub_100250490(&off_101099098);
    *(v3 + v1) = v2;
  }

  return v2;
}

void sub_10082EFFC()
{
  v1 = v0;
  sub_10010FC20(&qword_1011A4858, &qword_100EE4EC0);
  __chkstk_darwin();
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v29 - v4;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v33 = &v29 - v6;
  v34 = sub_10010FC20(&qword_1011A4860, &qword_100EE4EC8);
  v32 = *(v34 - 8);
  __chkstk_darwin();
  v31 = &v29 - v7;
  v8 = sub_10010FC20(&qword_1011A4868, &qword_100EE4ED0);
  v37 = *(v8 - 8);
  v38 = v8;
  __chkstk_darwin();
  v36 = &v29 - v9;
  v40 = sub_10010FC20(&qword_1011A4870, &qword_100EE4ED8);
  v35 = *(v40 - 8);
  __chkstk_darwin();
  v39 = &v29 - v10;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v12 = &v29 - v11;
  v13 = type metadata accessor for Playlist();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v1 + v17, v12, &unk_1011814D0, &qword_100EC12A0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000095E8(v12, &unk_1011814D0, &qword_100EC12A0);
    return;
  }

  (*(v14 + 32))(v16, v12, v13);
  active = Playlist.hasActiveCollaboration.getter();
  v19 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationAutoupdatingResponse;
  if (active)
  {
    if (!*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationAutoupdatingResponse))
    {
      type metadata accessor for Playlist.Collaborator();
      sub_100866F00(&qword_1011A4878, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
      MusicLibrarySectionedRequest.init()();
      MusicLibrarySectionedRequest<>.filterSections(equalTo:)();
      sub_100020674(&qword_1011A4880, &qword_1011A4870, &qword_100EE4ED8, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
      *(v1 + v19) = MusicAutoupdatableRequest.autoupdatingResponse.getter();

      v20 = v31;
      dispatch thunk of MusicAutoupdatingResponse.$response.getter();

      sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
      v30 = static OS_dispatch_queue.main.getter();
      v41 = v30;
      v21 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      v22 = v33;
      (*(*(v21 - 8) + 56))(v33, 1, 1, v21);
      sub_100020674(&qword_1011A4888, &qword_1011A4860, &qword_100EE4EC8, &protocol conformance descriptor for Published<A>.Publisher);
      sub_1000206BC();
      v23 = v36;
      v24 = v34;
      Publisher.receive<A>(on:options:)();
      sub_1000095E8(v22, &qword_101182140, &unk_100EBD2A0);

      (*(v32 + 8))(v20, v24);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100020674(&unk_1011A4890, &qword_1011A4868, &qword_100EE4ED0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
      v25 = v38;
      v26 = Publisher<>.sink(receiveValue:)();

      (*(v37 + 8))(v23, v25);
      (*(v35 + 8))(v39, v40);
      (*(v14 + 8))(v16, v13);
      *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationAutoupdatingResponseSubscription) = v26;

      return;
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationAutoupdatingResponse) = 0;

    *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationAutoupdatingResponseSubscription) = 0;

    v27 = type metadata accessor for PlaylistDetailDataSource.CollaborationDetails(0);
    (*(*(v27 - 8) + 56))(v5, 1, 1, v27);
    v28 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationDetails;
    swift_beginAccess();
    sub_1000089F8(v1 + v28, v3, &qword_1011A4858, &qword_100EE4EC0);
    swift_beginAccess();
    sub_1002190E0(v5, v1 + v28, &qword_1011A4858, &qword_100EE4EC0);
    swift_endAccess();
    sub_10082D208(v3);
    sub_1000095E8(v3, &qword_1011A4858, &qword_100EE4EC0);
    sub_1000095E8(v5, &qword_1011A4858, &qword_100EE4EC0);
  }

  (*(v14 + 8))(v16, v13);
}

void sub_10082F7F8(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_1011A4858, &qword_100EE4EC0);
  __chkstk_darwin();
  v82 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v81 = &v75 - v5;
  v6 = type metadata accessor for Playlist.Collaborator();
  v90 = *(v6 - 8);
  __chkstk_darwin();
  v96 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v87 = &v75 - v8;
  __chkstk_darwin();
  v89 = &v75 - v9;
  __chkstk_darwin();
  v88 = &v75 - v10;
  v91 = sub_10010FC20(&qword_1011A47E8, &unk_100EE4E50);
  v83 = *(v91 - 8);
  __chkstk_darwin();
  v12 = &v75 - v11;
  v13 = sub_10010FC20(&qword_1011A47D8, &qword_100EE4E40);
  __chkstk_darwin();
  v15 = &v75 - v14;
  sub_10010FC20(&qword_1011906A0, &qword_100EE4EE0);
  __chkstk_darwin();
  v17 = &v75 - v16;
  v86 = type metadata accessor for Playlist.Collaboration();
  v85 = *(v86 - 8);
  __chkstk_darwin();
  v93 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A48A0, &qword_100EE4EE8);
  __chkstk_darwin();
  v20 = &v75 - v19;
  sub_10010FC20(&qword_1011A48A8, &qword_100EE4EF0);
  __chkstk_darwin();
  v22 = &v75 - v21;
  v95 = sub_10010FC20(&qword_1011A48B0, &qword_100EE4EF8);
  v92 = *(v95 - 8);
  __chkstk_darwin();
  v94 = &v75 - v23;
  swift_beginAccess();
  v84 = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v25 = Strong;
  v26 = *(Strong + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationAutoupdatingResponse);

  if (!v26)
  {
    return;
  }

  v27 = dispatch thunk of MusicAutoupdatingResponse.isLoaded.getter();

  if ((v27 & 1) == 0)
  {
    return;
  }

  sub_1000089F8(a1, v20, &qword_1011A48A0, &qword_100EE4EE8);
  v28 = sub_10010FC20(&qword_1011A48B8, &qword_100EE4F00);
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v20, 1, v28) == 1)
  {
    sub_1000095E8(v20, &qword_1011A48A0, &qword_100EE4EE8);
    (*(v92 + 56))(v22, 1, 1, v95);
LABEL_10:
    v34 = &qword_1011A48A8;
    v35 = &qword_100EE4EF0;
    v36 = v22;
LABEL_11:
    sub_1000095E8(v36, v34, v35);
    return;
  }

  v30 = MusicLibrarySectionedResponse.sections.getter();
  (*(v29 + 8))(v20, v28);
  if (*(v30 + 16))
  {
    v31 = v92;
    v32 = v95;
    (*(v92 + 16))(v22, v30 + ((*(v92 + 80) + 32) & ~*(v92 + 80)), v95);
    v33 = 0;
  }

  else
  {
    v33 = 1;
    v32 = v95;
    v31 = v92;
  }

  (*(v31 + 56))(v22, v33, 1, v32);
  if ((*(v31 + 48))(v22, 1, v32) == 1)
  {
    goto LABEL_10;
  }

  v37 = v94;
  (*(v31 + 32))(v94, v22, v32);
  swift_getKeyPath();
  MusicLibrarySection.subscript.getter();

  v38 = v85;
  v39 = v86;
  if ((*(v85 + 48))(v17, 1, v86) == 1)
  {
    (*(v31 + 8))(v37, v95);
    v34 = &qword_1011906A0;
    v35 = &qword_100EE4EE0;
    v36 = v17;
    goto LABEL_11;
  }

  (*(v38 + 32))(v93, v17, v39);
  swift_getKeyPath();
  v40 = v95;
  MusicLibrarySection.subscript.getter();

  v41 = v37;
  if (v97[0] != 1)
  {
    (*(v38 + 8))(v93, v39);
    (*(v92 + 8))(v37, v40);
    return;
  }

  MusicLibrarySection.items.getter();
  v42 = v83;
  v43 = v91;
  (*(v83 + 16))(v15, v12, v91);
  v44 = *(v13 + 36);
  v45 = sub_100020674(&unk_1011A4810, &qword_1011A47E8, &unk_100EE4E50, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  v46 = v12;
  v47 = v44;
  v48 = v45;
  (*(v42 + 8))(v46, v43);
  dispatch thunk of Collection.endIndex.getter();
  if (*&v15[v47] != *v97)
  {
    v83 = v90 + 16;
    v59 = (v90 + 32);
    v77 = v90 + 8;
    v80 = _swiftEmptyArrayStorage;
    v76 = _swiftEmptyArrayStorage;
    v60 = v89;
    v79 = v47;
    v78 = v48;
    while (1)
    {
      v63 = dispatch thunk of Collection.subscript.read();
      v64 = *v83;
      v65 = v88;
      (*v83)(v88);
      v63(v97, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v66 = *v59;
      (*v59)(v60, v65, v6);
      v67 = Playlist.Collaborator.isPending.getter();
      if (v67 == 2 || (v67 & 1) == 0)
      {
        (v64)(v96, v60, v6);
        v68 = v80;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = sub_10049B12C(0, v68[2] + 1, 1, v68);
        }

        v70 = v68[2];
        v72 = v68[3];
        v71 = v70 + 1;
        if (v70 >= v72 >> 1)
        {
          v73 = sub_10049B12C((v72 > 1), v70 + 1, 1, v68);
          v68 = v73;
          v61 = v96;
          v74 = &v99;
LABEL_35:
          *(v74 - 32) = v73;
          goto LABEL_23;
        }

        v80 = v68;
        v61 = v96;
      }

      else
      {
        (v64)(v87, v60, v6);
        v68 = v76;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = sub_10049B12C(0, v68[2] + 1, 1, v68);
        }

        v70 = v68[2];
        v69 = v68[3];
        v71 = v70 + 1;
        if (v70 >= v69 >> 1)
        {
          v73 = sub_10049B12C((v69 > 1), v70 + 1, 1, v68);
          v68 = v73;
          v61 = v87;
          v74 = &v98;
          goto LABEL_35;
        }

        v76 = v68;
        v61 = v87;
      }

LABEL_23:
      v60 = v89;
      v62 = v90;
      (*(v90 + 8))(v89, v6);
      v68[2] = v71;
      v66(v68 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v70, v61, v6);
      dispatch thunk of Collection.endIndex.getter();
      v49 = v93;
      v41 = v94;
      if (*&v15[v79] == *v97)
      {
        goto LABEL_18;
      }
    }
  }

  v76 = _swiftEmptyArrayStorage;
  v80 = _swiftEmptyArrayStorage;
  v49 = v93;
LABEL_18:
  sub_1000095E8(v15, &qword_1011A47D8, &qword_100EE4E40);
  swift_beginAccess();
  v50 = swift_unknownObjectWeakLoadStrong();
  if (v50)
  {
    v51 = v50;
    v52 = v85;
    v53 = v41;
    v54 = v81;
    v55 = v86;
    (*(v85 + 16))(v81, v49, v86);
    v56 = type metadata accessor for PlaylistDetailDataSource.CollaborationDetails(0);
    *(v54 + *(v56 + 20)) = v80;
    *(v54 + *(v56 + 24)) = v76;
    (*(*(v56 - 8) + 56))(v54, 0, 1, v56);
    v57 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationDetails;
    swift_beginAccess();
    v58 = v82;
    sub_1000089F8(v51 + v57, v82, &qword_1011A4858, &qword_100EE4EC0);
    swift_beginAccess();
    sub_1002190E0(v54, v51 + v57, &qword_1011A4858, &qword_100EE4EC0);
    swift_endAccess();
    sub_10082D208(v58);

    sub_1000095E8(v58, &qword_1011A4858, &qword_100EE4EC0);
    sub_1000095E8(v54, &qword_1011A4858, &qword_100EE4EC0);
    (*(v52 + 8))(v49, v55);
    (*(v92 + 8))(v53, v95);
  }

  else
  {

    (*(v85 + 8))(v49, v86);
    (*(v92 + 8))(v41, v95);
  }
}

uint64_t sub_100830574(uint64_t a1)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v54 = &v45 - v3;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v5 = &v45 - v4;
  v6 = type metadata accessor for Playlist();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v51 = v8;
  v52 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v55 = &v45 - v9;
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v11 = &v45 - v10;
  v12 = *(*(sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0) - 8) + 64);
  __chkstk_darwin();
  v53 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v45 - v13;
  v15 = a1;
  v17 = v16;
  v19 = v18;
  sub_1000089F8(v15, v11, &qword_10119A808, &unk_100ED91D0);
  if ((*(v17 + 48))(v11, 1, v19) == 1)
  {
    return sub_1000095E8(v11, &qword_10119A808, &unk_100ED91D0);
  }

  v47 = *(v17 + 32);
  v48 = v17 + 32;
  v47(v14, v11, v19);
  v21 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v1 + v21, v5, &unk_1011814D0, &qword_100EC12A0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v17 + 8))(v14, v19);
    return sub_1000095E8(v5, &unk_1011814D0, &qword_100EC12A0);
  }

  v49 = v19;
  v50 = v14;
  v22 = *(v7 + 32);
  v23 = v55;
  v22(v55, v5, v6);
  v24 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v24, v56, &unk_1011926C0, &unk_100ECF870);
  if (v56[8])
  {
    sub_1000095E8(v56, &unk_1011926C0, &unk_100ECF870);
    v25 = v50;
LABEL_10:
    (*(v7 + 8))(v23, v6);
    return (*(v17 + 8))(v25, v49);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v56, &unk_1011926C0, &unk_100ECF870);
  v25 = v50;
  if (!Strong)
  {
    goto LABEL_10;
  }

  v27 = [Strong traitCollection];
  v28 = [v27 userInterfaceIdiom];

  if (v28 == 6)
  {

    (*(v7 + 8))(v55, v6);
  }

  else
  {
    v46 = v1;
    v29 = v55;
    v30 = v7;
    if (Playlist.hasJoinedCollaboration.getter())
    {
      v31 = v54;
      static TaskPriority.userInitiated.getter();
      v32 = type metadata accessor for TaskPriority();
      (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
      v33 = v6;
      v34 = v17;
      (*(v17 + 16))(v53, v50, v49);
      v35 = *(v30 + 16);
      v45 = v22;
      v36 = v52;
      v35(v52, v29, v33);
      type metadata accessor for MainActor();
      v46 = v46;
      v37 = static MainActor.shared.getter();
      v38 = (*(v17 + 80) + 40) & ~*(v17 + 80);
      v39 = (v12 + *(v30 + 80) + v38) & ~*(v30 + 80);
      v40 = v33;
      v41 = v30;
      v42 = swift_allocObject();
      *(v42 + 2) = v37;
      *(v42 + 3) = &protocol witness table for MainActor;
      v43 = v47;
      *(v42 + 4) = v46;
      v44 = v49;
      v43(&v42[v38], v53, v49);
      v45(&v42[v39], v36, v40);
      sub_1001F4CB8(0, 0, v54, &unk_100EE4EA8, v42);

      (*(v41 + 8))(v55, v40);
      return (*(v34 + 8))(v50, v44);
    }

    (*(v7 + 8))(v29, v6);
  }

  return (*(v17 + 8))(v50, v49);
}

uint64_t sub_100830C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v6[5] = swift_task_alloc();
  v6[6] = type metadata accessor for MainActor();
  v6[7] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[8] = v8;
  v6[9] = v7;

  return _swift_task_switch(sub_100830D14, v8, v7);
}

uint64_t sub_100830D14()
{
  v0[10] = sub_10082EF78();
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_100830DB8;
  v3 = v0[3];
  v2 = v0[4];

  return sub_100253240(v3, v2);
}

uint64_t sub_100830DB8(char a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);

  return _swift_task_switch(sub_100830F04, v4, v3);
}

uint64_t sub_100830F04()
{
  v1 = *(v0 + 96);

  if (v1 == 1)
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 16);
    v4 = type metadata accessor for TaskPriority();
    (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
    v5 = v3;
    v6 = static MainActor.shared.getter();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = &protocol witness table for MainActor;
    v7[4] = v5;
    sub_1001F4CB8(0, 0, v2, &unk_100EE4EB8, v7);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100831028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1008310C0, v6, v5);
}

uint64_t sub_1008310C0()
{

  v2.n128_f64[0] = sub_100846A54(v1);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100831124(uint64_t a1)
{
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v79 = &v69 - v2;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v83 = &v69 - v3;
  v4 = type metadata accessor for Playlist();
  v86 = *(v4 - 8);
  v87 = v4;
  __chkstk_darwin();
  v84 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v69 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v78 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v69 - v15;
  v17 = Logger.collaboration.unsafeMutableAddressor();
  v82 = v13;
  v18 = *(v13 + 16);
  v76 = v17;
  v77 = v13 + 16;
  v75 = v18;
  (v18)(v16);
  v19 = *(v7 + 16);
  v81 = a1;
  v20 = v6;
  v73 = v7 + 16;
  v72 = v19;
  v19(v11, a1, v6);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v23 = os_log_type_enabled(v21, v22);
  v80 = v7;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v71 = v9;
    v25 = v24;
    v70 = swift_slowAlloc();
    v89[0] = v70;
    *v25 = 136446210;
    sub_100866F00(&qword_1011A4850, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v74 = *(v7 + 8);
    v74(v11, v20);
    v29 = sub_1000105AC(v26, v28, v89);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v21, v22, "Handling URL=%{public}s", v25, 0xCu);
    sub_10000959C(v70);

    v9 = v71;
  }

  else
  {

    v74 = *(v7 + 8);
    v74(v11, v20);
  }

  v30 = *(v82 + 8);
  v30(v16, v12);
  v31 = v12;
  v32 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  v33 = v85;
  swift_beginAccess();
  v34 = v33 + v32;
  v35 = v83;
  sub_1000089F8(v34, v83, &unk_1011814D0, &qword_100EC12A0);
  if ((*(v86 + 48))(v35, 1, v87) == 1)
  {
    return sub_1000095E8(v35, &unk_1011814D0, &qword_100EC12A0);
  }

  (*(v86 + 32))(v84, v35, v87);
  if (qword_10117F610 != -1)
  {
    swift_once();
  }

  v37 = Collaboration.Manager.queryItemsDictionary(for:)(v81);
  if (v37)
  {
    v38 = v37;
    v39 = v79;
    (*(v80 + 56))(v79, 1, 1, v20);
    v40 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationURL;
    v41 = v85;
    swift_beginAccess();
    sub_10006B010(v39, v41 + v40, &qword_101183A20, &unk_100EBCF80);
    swift_endAccess();

    v43.value = Collaboration.Manager.DeepLinkType.init(_:)(v42).value;
    if (v43.value == MusicCore_Collaboration_Manager_DeepLinkType_unknownDefault)
    {

      v44 = v78;
      v75(v78, v76, v31);
      v72(v9, v81, v20);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = v44;
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v85 = v31;
        v50 = v49;
        v88[0] = v49;
        *v48 = 136446210;
        sub_100866F00(&qword_1011A4850, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v51 = dispatch thunk of CustomStringConvertible.description.getter();
        v52 = v20;
        v53 = v86;
        v54 = v9;
        v56 = v55;
        v74(v54, v52);
        v57 = sub_1000105AC(v51, v56, v88);

        *(v48 + 4) = v57;
        _os_log_impl(&_mh_execute_header, v45, v46, "Unknown type in URL=%{public}s", v48, 0xCu);
        sub_10000959C(v50);

        v30(v47, v85);
        return (*(v53 + 8))(v84, v87);
      }

      v74(v9, v20);
      v30(v44, v31);
    }

    else if (v43.value)
    {
      v58 = Collaboration.Manager.DeepLinkType.profileKey.unsafeMutableAddressor();
      swift_beginAccess();
      if (v38[2] && (v61 = v58, v59 = *v58, v60 = v61[1], , v62 = sub_100019C10(v59, v60), v64 = v63, , (v64 & 1) != 0))
      {
        v65 = (v38[7] + 16 * v62);
        v67 = *v65;
        v66 = v65[1];

        v68 = v67;
      }

      else
      {

        v68 = 0;
        v66 = 0;
      }

      sub_100833398(v68, v66, v84);
    }

    else
    {

      sub_1008319D8(v84, v81);
    }
  }

  return (*(v86 + 8))(v84, v87);
}

double sub_1008319D8(void *a1, uint64_t a2)
{
  v39 = a2;
  v47 = a1;
  v2 = type metadata accessor for URL();
  v45 = *(v2 - 8);
  v46 = v2;
  __chkstk_darwin();
  v41 = v3;
  v44 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Playlist();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin();
  v38 = v5;
  v49 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v48 = &v36 - v6;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v36 - v11;
  v13 = Logger.collaboration.unsafeMutableAddressor();
  v14 = *(v8 + 16);
  v14(v12, v13, v7);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Will attempt to join collaboration.", v17, 2u);
  }

  v18 = *(v8 + 8);
  v18(v12, v7);
  v19 = v47;
  if (Playlist.hasActiveCollaboration.getter())
  {
    v14(v10, v13, v7);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Collaborator is already collaborating or pending.", v22, 2u);
    }

    v18(v10, v7);
  }

  else
  {
    if (qword_10117F610 != -1)
    {
      swift_once();
    }

    v37 = qword_101218AE0;
    v24 = type metadata accessor for TaskPriority();
    (*(*(v24 - 8) + 56))(v48, 1, 1, v24);
    v25 = v42;
    v26 = v43;
    (*(v42 + 16))(v49, v19, v43);
    v28 = v44;
    v27 = v45;
    v29 = v46;
    (*(v45 + 16))(v44, v39, v46);
    type metadata accessor for MainActor();

    v47 = v40;
    v30 = static MainActor.shared.getter();
    v31 = (*(v25 + 80) + 40) & ~*(v25 + 80);
    v32 = (v38 + *(v27 + 80) + v31) & ~*(v27 + 80);
    v33 = (v41 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    *(v34 + 2) = v30;
    *(v34 + 3) = &protocol witness table for MainActor;
    *(v34 + 4) = v37;
    (*(v25 + 32))(&v34[v31], v49, v26);
    (*(v27 + 32))(&v34[v32], v28, v29);
    v35 = v48;
    *&v34[v33] = v47;
    sub_1001F4CB8(0, 0, v35, &unk_100EE4E78, v34);
  }

  return result;
}

uint64_t sub_100831F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = type metadata accessor for Logger();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v9 = type metadata accessor for Playlist();
  v7[15] = v9;
  v7[16] = *(v9 - 8);
  v7[17] = swift_task_alloc();
  v7[18] = type metadata accessor for Collaboration.Flow(0);
  v7[19] = swift_task_alloc();
  type metadata accessor for Collaboration.Flow.View(0);
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v10 = type metadata accessor for Playlist.Collaborator.Status();
  v7[22] = v10;
  v7[23] = *(v10 - 8);
  v7[24] = swift_task_alloc();
  v7[25] = sub_10010FC20(&qword_1011A4828, &qword_100EE4E80);
  v7[26] = swift_task_alloc();
  v7[27] = sub_10010FC20(&qword_1011A4830, &qword_100EE4E88);
  v7[28] = swift_task_alloc();
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v11 = type metadata accessor for Playlist.Collaboration();
  v7[33] = v11;
  v7[34] = *(v11 - 8);
  v7[35] = swift_task_alloc();
  sub_10010FC20(&qword_1011A4838, &qword_100EE4E90);
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[38] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[39] = v13;
  v7[40] = v12;

  return _swift_task_switch(sub_100832280, v13, v12);
}

uint64_t sub_100832280()
{
  Collaboration.Manager.canCollaborate(for:)();
  v1 = Collaboration.Manager.participantProfile.getter();
  if (v1)
  {
    v2 = v1;
    ICMusicUserProfile.collaborator.getter(*(v0 + 296));

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(v0 + 296);
  v5 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  (*(*(v5 - 8) + 56))(v4, v3, 1, v5);
  v6 = swift_task_alloc();
  *(v0 + 328) = v6;
  *v6 = v0;
  v6[1] = sub_1008325E8;
  v7 = *(v0 + 280);
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);

  return Collaboration.Manager.validate(_:url:)(v7, v8, v9);
}

uint64_t sub_1008325E8()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = *(v2 + 320);
  v4 = *(v2 + 312);
  if (v0)
  {
    v5 = sub_100833118;
  }

  else
  {
    v5 = sub_100832724;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100832724()
{
  v100 = v0;
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);

  Playlist.Collaboration.collaboratorStatus.getter();
  (*(v6 + 104))(v2, enum case for Playlist.Collaborator.Status.notJoined(_:), v5);
  (*(v6 + 56))(v2, 0, 1, v5);
  v7 = *(v4 + 48);
  sub_1000089F8(v1, v3, &qword_1011A4830, &qword_100EE4E88);
  sub_1000089F8(v2, v3 + v7, &qword_1011A4830, &qword_100EE4E88);
  v8 = *(v6 + 48);
  if (v8(v3, 1, v5) == 1)
  {
    v9 = *(v0 + 176);
    sub_1000095E8(*(v0 + 248), &qword_1011A4830, &qword_100EE4E88);
    if (v8(v3 + v7, 1, v9) == 1)
    {
      sub_1000095E8(*(v0 + 208), &qword_1011A4830, &qword_100EE4E88);
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v10 = *(v0 + 176);
  sub_1000089F8(*(v0 + 208), *(v0 + 240), &qword_1011A4830, &qword_100EE4E88);
  v11 = v8(v3 + v7, 1, v10);
  v12 = *(v0 + 240);
  v13 = *(v0 + 248);
  if (v11 == 1)
  {
    v15 = *(v0 + 176);
    v14 = *(v0 + 184);
    sub_1000095E8(*(v0 + 248), &qword_1011A4830, &qword_100EE4E88);
    (*(v14 + 8))(v12, v15);
LABEL_6:
    sub_1000095E8(*(v0 + 208), &qword_1011A4828, &qword_100EE4E80);
    goto LABEL_7;
  }

  v41 = *(v0 + 208);
  v43 = *(v0 + 184);
  v42 = *(v0 + 192);
  v44 = *(v0 + 176);
  (*(v43 + 32))(v42, v3 + v7, v44);
  sub_100866F00(&qword_1011A4848, &type metadata accessor for Playlist.Collaborator.Status, &protocol conformance descriptor for Playlist.Collaborator.Status);
  v45 = dispatch thunk of static Equatable.== infix(_:_:)();
  v46 = *(v43 + 8);
  v46(v42, v44);
  sub_1000095E8(v13, &qword_1011A4830, &qword_100EE4E88);
  v46(v12, v44);
  sub_1000095E8(v41, &qword_1011A4830, &qword_100EE4E88);
  if ((v45 & 1) == 0)
  {
LABEL_7:
    v16 = *(v0 + 256);
    v17 = *(v0 + 232);
    v18 = *(v0 + 112);
    v19 = *(v0 + 88);
    v20 = *(v0 + 96);
    v21 = Logger.collaboration.unsafeMutableAddressor();
    (*(v20 + 16))(v18, v21, v19);
    sub_1000089F8(v16, v17, &qword_1011A4830, &qword_100EE4E88);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 296);
    v26 = *(v0 + 272);
    v95 = *(v0 + 264);
    v97 = *(v0 + 280);
    v93 = *(v0 + 256);
    v27 = *(v0 + 232);
    if (v24)
    {
      v28 = *(v0 + 224);
      v89 = *(v0 + 96);
      v90 = *(v0 + 88);
      v91 = *(v0 + 112);
      v92 = *(v0 + 296);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v99 = v30;
      *v29 = 136446210;
      sub_1000089F8(v27, v28, &qword_1011A4830, &qword_100EE4E88);
      v31 = String.init<A>(describing:)();
      v33 = v32;
      sub_1000095E8(v27, &qword_1011A4830, &qword_100EE4E88);
      v34 = sub_1000105AC(v31, v33, &v99);

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v22, v23, "Skipping with=%{public}s", v29, 0xCu);
      sub_10000959C(v30);

      (*(v89 + 8))(v91, v90);
      sub_1000095E8(v93, &qword_1011A4830, &qword_100EE4E88);
      (*(v26 + 8))(v97, v95);
      v35 = &qword_1011A4838;
      v36 = &qword_100EE4E90;
      v37 = v92;
    }

    else
    {
      v38 = *(v0 + 112);
      v39 = *(v0 + 88);
      v40 = *(v0 + 96);

      sub_1000095E8(v27, &qword_1011A4830, &qword_100EE4E88);
      (*(v40 + 8))(v38, v39);
      sub_1000095E8(v93, &qword_1011A4830, &qword_100EE4E88);
      (*(v26 + 8))(v97, v95);
      v35 = &qword_1011A4838;
      v36 = &qword_100EE4E90;
      v37 = v25;
    }

    goto LABEL_19;
  }

LABEL_11:
  v47 = *(v0 + 288);
  v48 = *(v0 + 296);
  v49 = *(v0 + 152);
  v50 = *(v0 + 128);
  v96 = *(v0 + 120);
  v98 = *(v0 + 136);
  v51 = *(v0 + 72);
  v94 = *(v0 + 64);
  v52 = sub_10010FC20(&qword_1011A4840, &qword_100EE4E98);
  v53 = *(v52 + 48);
  v54 = *(v52 + 64);
  sub_1000089F8(v48, v49, &qword_1011A4838, &qword_100EE4E90);
  v55 = type metadata accessor for URL();
  (*(*(v55 - 8) + 16))(v49 + v53, v51, v55);
  *(v49 + v54) = Playlist.Collaboration.isOpenInvitation.getter() & 1;
  swift_storeEnumTagMultiPayload();
  (*(v50 + 16))(v98, v94, v96);
  sub_1000089F8(v48, v47, &qword_1011A4838, &qword_100EE4E90);
  v56 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v57 = (*(*(v56 - 8) + 48))(v47, 1, v56);
  v58 = *(v0 + 288);
  if (v57 == 1)
  {
    sub_1000095E8(v58, &qword_1011A4838, &qword_100EE4E90);
    v59 = 1;
  }

  else
  {
    v60 = *(v58 + *(v56 + 28));
    sub_100867794(v58, type metadata accessor for Collaboration.Flow.Collaborator);
    v59 = v60 ^ 1;
  }

  v62 = *(v0 + 160);
  v61 = *(v0 + 168);
  v63 = *(v0 + 152);
  v64 = *(v0 + 136);
  v65 = *(v0 + 80);
  v66 = *(v0 + 56);
  v67 = swift_allocObject();
  *(v67 + 16) = v65;
  *(v67 + 24) = v66;
  swift_retain_n();
  v68 = v65;
  Collaboration.Flow.View.init(_:playlist:manager:showProfileCreation:profileUpdateHandler:completion:)(v63, v64, v66, v59 & 1, &unk_100ECD320, 0, sub_10086A14C, v67, v61);
  sub_10086772C(v61, v62, type metadata accessor for Collaboration.Flow.View);
  v69 = objc_allocWithZone(sub_10010FC20(&qword_101190698, &unk_100EE4E60));
  v72 = Card.ViewController.init(content:)(v62, v69, v70, v71);
  v73 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v68 + v73, v0 + 40, &unk_1011926C0, &unk_100ECF870);
  if (*(v0 + 48))
  {
    v74 = *(v0 + 296);
    v76 = *(v0 + 272);
    v75 = *(v0 + 280);
    v78 = *(v0 + 256);
    v77 = *(v0 + 264);
    v79 = *(v0 + 168);

    sub_100867794(v79, type metadata accessor for Collaboration.Flow.View);
    sub_1000095E8(v78, &qword_1011A4830, &qword_100EE4E88);
    (*(v76 + 8))(v75, v77);
    sub_1000095E8(v74, &qword_1011A4838, &qword_100EE4E90);
    v35 = &unk_1011926C0;
    v36 = &unk_100ECF870;
    v37 = v0 + 40;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v0 + 40, &unk_1011926C0, &unk_100ECF870);
    v81 = *(v0 + 296);
    v83 = *(v0 + 272);
    v82 = *(v0 + 280);
    v85 = *(v0 + 256);
    v84 = *(v0 + 264);
    v86 = *(v0 + 168);
    if (Strong)
    {
      [Strong presentViewController:v72 animated:1 completion:0];
    }

    sub_100867794(v86, type metadata accessor for Collaboration.Flow.View);
    sub_1000095E8(v85, &qword_1011A4830, &qword_100EE4E88);
    (*(v83 + 8))(v82, v84);
    v35 = &qword_1011A4838;
    v36 = &qword_100EE4E90;
    v37 = v81;
  }

LABEL_19:
  sub_1000095E8(v37, v35, v36);

  v87 = *(v0 + 8);

  return v87();
}

uint64_t sub_100833118()
{
  v1 = v0[37];

  sub_1000095E8(v1, &qword_1011A4838, &qword_100EE4E90);
  v2 = v0[42];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v6 = Logger.collaboration.unsafeMutableAddressor();
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Can't collaborate=%{public}@", v9, 0xCu);
    sub_1000095E8(v10, &unk_101183D70, &unk_100EC6540);
  }

  v13 = v0[12];
  v12 = v0[13];
  v14 = v0[11];

  (*(v13 + 8))(v12, v14);
  Collaboration.Manager.handleError(_:)(v2);

  v15 = v0[1];

  return v15();
}

void sub_100833398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v41 = a1;
  v42 = type metadata accessor for Playlist();
  v40 = *(v42 - 8);
  __chkstk_darwin();
  v36 = v4;
  v39 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v38 = &v33 - v5;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v33 - v10;
  v12 = Logger.collaboration.unsafeMutableAddressor();
  v13 = *(v7 + 16);
  v13(v11, v12, v6);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = v12;
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Will present moderation flow.", v16, 2u);
    v12 = v34;
  }

  v17 = *(v7 + 8);
  v17(v11, v6);
  if (a2)
  {
    v18 = qword_10117F610;

    v34 = a2;
    if (v18 != -1)
    {
      swift_once();
    }

    v33 = qword_101218AE0;
    v19 = type metadata accessor for TaskPriority();
    v20 = v38;
    (*(*(v19 - 8) + 56))(v38, 1, 1, v19);
    v21 = v39;
    v22 = v40;
    v23 = v42;
    (*(v40 + 16))(v39, v35, v42);
    type metadata accessor for MainActor();

    v24 = v37;
    v25 = static MainActor.shared.getter();
    v26 = (*(v22 + 80) + 48) & ~*(v22 + 80);
    v27 = (v36 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = swift_allocObject();
    *(v28 + 2) = v25;
    *(v28 + 3) = &protocol witness table for MainActor;
    v29 = v34;
    *(v28 + 4) = v41;
    *(v28 + 5) = v29;
    (*(v22 + 32))(&v28[v26], v21, v23);
    *&v28[v27] = v33;
    *&v28[(v27 + 15) & 0xFFFFFFFFFFFFFFF8] = v24;
    sub_1001F4CB8(0, 0, v20, &unk_100EE4E38, v28);
  }

  else
  {
    v13(v9, v12, v6);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Missing social profile id", v32, 2u);
    }

    v17(v9, v6);
    static Collaboration.Error.tapToRadarAlert()();
  }
}

uint64_t sub_10083384C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[12] = a4;
  v9 = type metadata accessor for Logger();
  v8[17] = v9;
  v8[18] = *(v9 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = type metadata accessor for Collaboration.Flow(0);
  v8[21] = swift_task_alloc();
  type metadata accessor for Collaboration.Flow.View(0);
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v8[24] = sub_10010FC20(&qword_1011A47D8, &qword_100EE4E40);
  v8[25] = swift_task_alloc();
  v10 = type metadata accessor for Playlist.Collaborator();
  v8[26] = v10;
  v8[27] = *(v10 - 8);
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  sub_10010FC20(&qword_1011A47E0, &qword_100EE4E48);
  v8[31] = swift_task_alloc();
  v11 = sub_10010FC20(&qword_1011A47E8, &unk_100EE4E50);
  v8[32] = v11;
  v8[33] = *(v11 - 8);
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  v12 = type metadata accessor for MusicPropertySource();
  v8[36] = v12;
  v8[37] = *(v12 - 8);
  v8[38] = swift_task_alloc();
  v13 = type metadata accessor for Playlist();
  v8[39] = v13;
  v8[40] = *(v13 - 8);
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[43] = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[44] = v15;
  v8[45] = v14;

  return _swift_task_switch(sub_100833BD0, v15, v14);
}

uint64_t sub_100833BD0()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];

  v0[46] = MusicItemID.init(_:)();
  v0[47] = v4;
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v5 = swift_allocObject();
  v0[48] = v5;
  *(v5 + 16) = xmmword_100EBC6C0;
  sub_10010FC20(&unk_10118C1C0, &qword_100ED92A0);
  *(v5 + 32) = static PartialMusicProperty<A>.collaborators.getter();
  (*(v2 + 104))(v1, enum case for MusicPropertySource.library(_:), v3);
  v6 = swift_task_alloc();
  v0[49] = v6;
  v7 = sub_100866F00(&unk_1011A47F0, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
  *v6 = v0;
  v6[1] = sub_100833D68;
  v8 = v0[42];
  v9 = v0[38];
  v10 = v0[39];

  return MusicItem<>.with(_:preferredSource:)(v8, v5, v9, v10, &protocol witness table for Playlist, &protocol witness table for Playlist, v7);
}

uint64_t sub_100833D68()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  (*(v2[37] + 8))(v2[38], v2[36]);

  if (v0)
  {

    v3 = v2[44];
    v4 = v2[45];
    v5 = sub_1008347DC;
  }

  else
  {
    v3 = v2[44];
    v4 = v2[45];
    v5 = sub_100833EE4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100833EE4()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);

  Playlist.collaborators.getter();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 248);

    sub_1000095E8(v4, &qword_1011A47E0, &qword_100EE4E48);
LABEL_12:
    v25 = *(v0 + 336);
    v26 = *(v0 + 312);
    v27 = *(v0 + 320);
    v29 = *(v0 + 96);
    v28 = *(v0 + 104);
    _StringGuts.grow(_:)(17);

    v30._countAndFlagsBits = v29;
    v30._object = v28;
    String.append(_:)(v30);
    sub_1004525B0();
    swift_allocError();
    *v31 = 0x70206C6169636F73;
    *(v31 + 8) = 0xEF3D656C69666F72;
    *(v31 + 16) = 2;
    swift_willThrow();
    (*(v27 + 8))(v25, v26);
    v33 = *(v0 + 144);
    v32 = *(v0 + 152);
    v34 = *(v0 + 136);
    v35 = Logger.collaboration.unsafeMutableAddressor();
    (*(v33 + 16))(v32, v35, v34);
    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138543362;
      swift_errorRetain();
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v40;
      *v39 = v40;
      _os_log_impl(&_mh_execute_header, v36, v37, "Can't present approval flow=%{public}@", v38, 0xCu);
      sub_1000095E8(v39, &unk_101183D70, &unk_100EC6540);
    }

    else
    {
    }

    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    goto LABEL_16;
  }

  v6 = *(v0 + 272);
  v5 = *(v0 + 280);
  v8 = *(v0 + 256);
  v7 = *(v0 + 264);
  v9 = *(v0 + 192);
  v10 = *(v0 + 200);
  (*(v7 + 32))(v5, *(v0 + 248), v8);
  (*(v7 + 16))(v6, v5, v8);
  sub_100020674(&qword_1011A4808, &qword_1011A47E8, &unk_100EE4E50, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Sequence.makeIterator()();
  v11 = *(v9 + 36);
  sub_100020674(&unk_1011A4810, &qword_1011A47E8, &unk_100EE4E50, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v10 + v11) == *(v0 + 88))
  {
LABEL_11:
    v21 = *(v0 + 280);
    v22 = *(v0 + 256);
    v23 = *(v0 + 264);
    v24 = *(v0 + 200);

    sub_1000095E8(v24, &qword_1011A47D8, &qword_100EE4E40);
    (*(v23 + 8))(v21, v22);
    goto LABEL_12;
  }

  v12 = *(v0 + 216);
  v78 = (v12 + 32);
  v79 = (v12 + 16);
  v77 = (v12 + 8);
  while (1)
  {
    v82 = *(v0 + 368);
    v85 = *(v0 + 376);
    v13 = *(v0 + 232);
    v80 = *(v0 + 224);
    v14 = *(v0 + 208);
    v15 = v10;
    v16 = dispatch thunk of Collection.subscript.read();
    v75 = *v79;
    (*v79)(v13);
    v16(v0 + 16, 0);
    v10 = v15;
    dispatch thunk of Collection.formIndex(after:)();
    v17 = *v78;
    (*v78)(v80, v13, v14);
    if (Playlist.Collaborator.id.getter() == v82 && v18 == v85)
    {
      break;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
      goto LABEL_20;
    }

    (*v77)(*(v0 + 224), *(v0 + 208));
    dispatch thunk of Collection.endIndex.getter();
    if (*(v10 + v11) == *(v0 + 88))
    {
      goto LABEL_11;
    }
  }

LABEL_20:
  v43 = *(v0 + 328);
  v76 = *(v0 + 336);
  v44 = *(v0 + 320);
  v45 = *(v0 + 240);
  v46 = *(v0 + 224);
  v47 = *(v0 + 208);
  v83 = *(v0 + 184);
  v86 = *(v0 + 176);
  v48 = *(v0 + 168);
  v74 = *(v0 + 312);
  v49 = *(v0 + 120);
  v81 = *(v0 + 128);
  sub_1000095E8(*(v0 + 200), &qword_1011A47D8, &qword_100EE4E40);

  v17(v45, v46, v47);
  (v75)(v48, v45, v47);
  swift_storeEnumTagMultiPayload();
  (*(v44 + 16))(v43, v76, v74);
  v50 = swift_allocObject();
  *(v50 + 16) = v81;
  *(v50 + 24) = v49;
  swift_retain_n();
  v51 = v81;
  Collaboration.Flow.View.init(_:playlist:manager:showProfileCreation:profileUpdateHandler:completion:)(v48, v43, v49, 0, 0, 0, sub_10086E3A8, v50, v83);
  sub_10086772C(v83, v86, type metadata accessor for Collaboration.Flow.View);
  v52 = objc_allocWithZone(sub_10010FC20(&qword_101190698, &unk_100EE4E60));
  v56 = Card.ViewController.init(content:)(v86, v53, v54, v55);
  v57 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v51 + v57, v0 + 72, &unk_1011926C0, &unk_100ECF870);
  if (*(v0 + 80))
  {
    v87 = *(v0 + 336);
    v58 = *(v0 + 312);
    v59 = *(v0 + 320);
    v60 = *(v0 + 280);
    v62 = *(v0 + 256);
    v61 = *(v0 + 264);
    v63 = *(v0 + 240);
    v64 = *(v0 + 208);
    v65 = *(v0 + 184);

    sub_100867794(v65, type metadata accessor for Collaboration.Flow.View);
    (*v77)(v63, v64);
    (*(v61 + 8))(v60, v62);
    (*(v59 + 8))(v87, v58);
    sub_1000095E8(v0 + 72, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v0 + 72, &unk_1011926C0, &unk_100ECF870);
    v67 = *(v0 + 320);
    v84 = *(v0 + 312);
    v88 = *(v0 + 336);
    v68 = *(v0 + 280);
    v70 = *(v0 + 256);
    v69 = *(v0 + 264);
    v71 = *(v0 + 240);
    v72 = *(v0 + 208);
    v73 = *(v0 + 184);
    if (Strong)
    {
      [Strong presentViewController:v56 animated:1 completion:0];
    }

    sub_100867794(v73, type metadata accessor for Collaboration.Flow.View);
    (*v77)(v71, v72);
    (*(v69 + 8))(v68, v70);
    (*(v67 + 8))(v88, v84);
  }

LABEL_16:

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_1008347DC()
{

  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = Logger.collaboration.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Can't present approval flow=%{public}@", v7, 0xCu);
    sub_1000095E8(v8, &unk_101183D70, &unk_100EC6540);
  }

  else
  {
  }

  (*(v0[18] + 8))(v0[19], v0[17]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100834A24(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_1011A4820, &qword_100ECD328);
  __chkstk_darwin();
  v5 = (v10 - v4 + 16);
  v6 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(a2 + v6, v10, &unk_1011926C0, &unk_100ECF870);
  if (v10[8])
  {
    sub_1000095E8(v10, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v10, &unk_1011926C0, &unk_100ECF870);
    if (Strong)
    {
      [Strong dismissViewControllerAnimated:1 completion:0];
    }
  }

  sub_1000089F8(a1, v5, &qword_1011A4820, &qword_100ECD328);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_1000095E8(v5, &qword_1011A4820, &qword_100ECD328);
  }

  Collaboration.Manager.handleError(_:)(*v5);
}

uint64_t sub_100834BB8(uint64_t a1)
{
  v2 = v1;
  v71 = a1;
  v62 = type metadata accessor for EditorialVideoArtworkFlavor();
  v61 = *(v62 - 8);
  __chkstk_darwin();
  v60 = &v58[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&unk_101192950, &unk_100EBDF40);
  __chkstk_darwin();
  v63 = &v58[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v68 = &v58[-v5];
  sub_10010FC20(&qword_101192860, &unk_100ECFB60);
  __chkstk_darwin();
  v66 = &v58[-v6];
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v65 = &v58[-v7];
  v8 = type metadata accessor for Playlist();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v67 = &v58[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v64 = &v58[-v11];
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v69 = &v58[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v14 = &v58[-v13];
  v15 = sub_10010FC20(&unk_1011A4980, &unk_100ED53C0) - 8;
  __chkstk_darwin();
  v17 = &v58[-v16];
  v18 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogPlaylist;
  swift_beginAccess();
  v19 = *(v15 + 56);
  v70 = v2;
  sub_1000089F8(v2 + v18, v17, &unk_1011814D0, &qword_100EC12A0);
  sub_1000089F8(v71, &v17[v19], &unk_1011814D0, &qword_100EC12A0);
  v71 = v9;
  v20 = *(v9 + 48);
  if (v20(v17, 1, v8) == 1)
  {
    if (v20(&v17[v19], 1, v8) == 1)
    {
      return sub_1000095E8(v17, &unk_1011814D0, &qword_100EC12A0);
    }

    goto LABEL_6;
  }

  sub_1000089F8(v17, v14, &unk_1011814D0, &qword_100EC12A0);
  if (v20(&v17[v19], 1, v8) == 1)
  {
    (*(v71 + 8))(v14, v8);
LABEL_6:
    sub_1000095E8(v17, &unk_1011A4980, &unk_100ED53C0);
    goto LABEL_7;
  }

  v34 = v71;
  v35 = v64;
  (*(v71 + 32))(v64, &v17[v19], v8);
  sub_100866F00(&unk_1011A4660, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
  v59 = dispatch thunk of static Equatable.== infix(_:_:)();
  v36 = *(v34 + 8);
  v36(v35, v8);
  v36(v14, v8);
  result = sub_1000095E8(v17, &unk_1011814D0, &qword_100EC12A0);
  if ((v59 & 1) == 0)
  {
LABEL_7:
    v22 = v69;
    v23 = v70;
    sub_1000089F8(v70 + v18, v69, &unk_1011814D0, &qword_100EC12A0);
    if (v20(v22, 1, v8) == 1)
    {
      return sub_1000095E8(v22, &unk_1011814D0, &qword_100EC12A0);
    }

    v24 = v67;
    (*(v71 + 32))(v67, v22, v8);
    sub_10083D5A8();
    v25 = v8;
    v26 = EditorialVideoArtworkVending.editorialVideoArtworks.getter();
    if (!v26)
    {
      v26 = sub_10010BDB8(_swiftEmptyArrayStorage);
    }

    v27 = v68;
    sub_1005F40C8(v26);

    v28 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___headerConfiguration;

    v29 = v65;
    Playlist.staticDetailTallArtwork.getter();
    sub_1005F3EAC(v29);

    v30 = *(v23 + v28);

    v31 = v66;
    sub_10083C114(v66);
    v32 = type metadata accessor for ContainerDetail.AttributionItem(0);
    v33 = (*(*(v32 - 8) + 48))(v31, 1, v32);
    sub_1000095E8(v31, &qword_101192860, &unk_100ECFB60);
    if (((v33 == 1) ^ *(v30 + OBJC_IVAR____TtCV5Music6Header13Configuration__disableAttribution)))
    {
      swift_getKeyPath();
      __chkstk_darwin();
      *&v58[-16] = v30;
      v58[-8] = v33 == 1;
      v72 = v30;
      sub_100866F00(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(v30 + OBJC_IVAR____TtCV5Music6Header13Configuration__disableAttribution) = v33 == 1;
    }

    v37 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v23 + v37, &v72, &unk_1011926C0, &unk_100ECF870);
    if (v73)
    {
      v38 = &unk_1011926C0;
      v39 = &unk_100ECF870;
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v72, &unk_1011926C0, &unk_100ECF870);
      if (!Strong)
      {
        goto LABEL_22;
      }

      v41 = sub_10069F9B8();

      if (!*(v41 + 16))
      {

LABEL_22:
        sub_1000089F8(v23 + v37, &v72, &unk_1011926C0, &unk_100ECF870);
        if (v73)
        {
          v43 = &unk_1011926C0;
          v44 = &unk_100ECF870;
          v45 = &v72;
LABEL_34:
          sub_1000095E8(v45, v43, v44);
LABEL_35:
          v57 = sub_100835730(1);
          return (*(v71 + 8))(v24, v25, v57);
        }

        v46 = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(&v72, &unk_1011926C0, &unk_100ECF870);
        if (!v46)
        {
          goto LABEL_35;
        }

        v47 = *&v46[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_floatingArtworkDataSource];

        if (!v47)
        {
          goto LABEL_35;
        }

        v48 = EditorialVideoArtworkVending.editorialVideoArtworks.getter();
        if (v48)
        {
          v49 = v48;
          v50 = v60;
          static EditorialVideoArtworkFlavor.motionDetailSquare.getter();
          if (*(v49 + 16))
          {
            v51 = sub_1006BE63C(v50);
            if (v52)
            {
              v53 = v51;
              v69 = *(v49 + 56);
              v54 = type metadata accessor for VideoArtwork();
              v55 = *(v54 - 8);
              (*(v55 + 16))(v27, &v69[*(v55 + 72) * v53], v54);
              (*(v61 + 8))(v50, v62);

              (*(v55 + 56))(v27, 0, 1, v54);
LABEL_33:
              swift_getKeyPath();
              swift_getKeyPath();
              sub_1000089F8(v27, v63, &unk_101192950, &unk_100EBDF40);
              static Published.subscript.setter();
              v45 = v27;
              v43 = &unk_101192950;
              v44 = &unk_100EBDF40;
              goto LABEL_34;
            }
          }

          (*(v61 + 8))(v50, v62);
        }

        v56 = type metadata accessor for VideoArtwork();
        (*(*(v56 - 8) + 56))(v27, 1, 1, v56);
        goto LABEL_33;
      }

      v74 = v25;
      v75 = &off_1010B2320;
      v42 = sub_10001C8B8(&v72);
      (*(v71 + 16))(v42, v24, v25);
      sub_10064B708(&v72);

      v38 = &unk_101192850;
      v39 = &qword_100EE4C90;
    }

    sub_1000095E8(&v72, v38, v39);
    goto LABEL_22;
  }

  return result;
}

double sub_100835730(char a1)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  *&result = __chkstk_darwin().n128_u64[0];
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_shouldRequestForPlaylistSubscriptionUpdate;
  *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_shouldRequestForPlaylistSubscriptionUpdate) = a1;
  if (a1)
  {
    v7 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponse);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v8 = v1;

      if (dispatch thunk of MusicAutoupdatingResponse.isLoaded.getter())
      {
        v9 = type metadata accessor for TaskPriority();
        (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
        v10 = swift_allocObject();
        swift_unknownObjectWeakInit();
        type metadata accessor for MainActor();

        v11 = static MainActor.shared.getter();
        v12 = swift_allocObject();
        v12[2] = v11;
        v12[3] = &protocol witness table for MainActor;
        v12[4] = v10;

        sub_1001F4CB8(0, 0, v5, &unk_100EE4E28, v12);
        sub_1004E6028(v7);

        *(v8 + v6) = 0;
      }

      else
      {

        return sub_1004E6028(v7);
      }
    }
  }

  return result;
}

double sub_100835910()
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  *&result = __chkstk_darwin().n128_u64[0];
  v3 = &v11 - v2;
  v4 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_shouldRequestForPlaylistSubscriptionUpdate;
  if (*(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_shouldRequestForPlaylistSubscriptionUpdate) == 1)
  {
    v5 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponse);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = v0;

      if (dispatch thunk of MusicAutoupdatingResponse.isLoaded.getter())
      {
        v7 = type metadata accessor for TaskPriority();
        (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
        v8 = swift_allocObject();
        swift_unknownObjectWeakInit();
        type metadata accessor for MainActor();

        v9 = static MainActor.shared.getter();
        v10 = swift_allocObject();
        v10[2] = v9;
        v10[3] = &protocol witness table for MainActor;
        v10[4] = v8;

        sub_1001F4CB8(0, 0, v3, &unk_100EE4E20, v10);
        sub_1004E6028(v5);

        *(v6 + v4) = 0;
      }

      else
      {

        return sub_1004E6028(v5);
      }
    }
  }

  return result;
}

uint64_t sub_100835AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a4;
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v4[26] = v5;
  v4[27] = *(v5 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v6 = type metadata accessor for MusicPropertySource();
  v4[30] = v6;
  v4[31] = *(v6 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v7 = type metadata accessor for Playlist();
  v4[37] = v7;
  v4[38] = *(v7 - 8);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[41] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[42] = v9;
  v4[43] = v8;

  return _swift_task_switch(sub_100835D54, v9, v8);
}

uint64_t sub_100835D54()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 352) = Strong;
  if (!Strong)
  {

    goto LABEL_9;
  }

  v2 = Strong;
  v3 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(&v2[v3], v0 + 160, &unk_1011926C0, &unk_100ECF870);
  if (*(v0 + 168))
  {

    sub_1000095E8(v0 + 160, &unk_1011926C0, &unk_100ECF870);
LABEL_9:

    v12 = *(v0 + 8);

    return v12();
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v0 + 160, &unk_1011926C0, &unk_100ECF870);
  if (!v4)
  {

    goto LABEL_9;
  }

  v5 = *(v0 + 296);
  v6 = *(v0 + 304);
  v7 = *(v0 + 288);
  v8 = [v4 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  *(v0 + 360) = *(v0 + 176);
  v9 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(&v2[v9], v7, &unk_1011814D0, &qword_100EC12A0);
  v10 = *(v6 + 48);
  if (v10(v7, 1, v5) == 1)
  {
    v11 = *(v0 + 288);

    sub_1000095E8(v11, &unk_1011814D0, &qword_100EC12A0);
    goto LABEL_9;
  }

  v58 = v9;
  v59 = v10;
  v15 = *(v0 + 256);
  v14 = *(v0 + 264);
  v16 = *(v0 + 240);
  v17 = *(v0 + 248);
  (*(*(v0 + 304) + 32))(*(v0 + 320), *(v0 + 288), *(v0 + 296));
  v18 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
  swift_beginAccess();
  v19 = *(v17 + 16);
  v19(v14, &v2[v18], v16);
  v20 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_initialSource;
  swift_beginAccess();
  v19(v15, &v2[v20], v16);
  sub_100866F00(&qword_10119A868, &type metadata accessor for MusicPropertySource, &protocol conformance descriptor for MusicPropertySource);
  LOBYTE(v20) = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v17 + 8);
  v21(v15, v16);
  v21(v14, v16);
  if (v20)
  {
    goto LABEL_18;
  }

  v22 = *(v0 + 296);
  v23 = *(v0 + 280);
  v24 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogPlaylist;
  swift_beginAccess();
  sub_1000089F8(&v2[v24], v23, &unk_1011814D0, &qword_100EC12A0);
  if (v59(v23, 1, v22))
  {
    v26 = *(v0 + 208);
    v25 = *(v0 + 216);
    v27 = *(v0 + 200);
    sub_1000095E8(*(v0 + 280), &unk_1011814D0, &qword_100EC12A0);
    (*(v25 + 56))(v27, 1, 1, v26);
LABEL_16:
    v36 = *(v0 + 200);
LABEL_17:
    sub_1000095E8(v36, &qword_101188C20, &qword_100EC2030);
    goto LABEL_18;
  }

  v29 = *(v0 + 304);
  v28 = *(v0 + 312);
  v30 = *(v0 + 296);
  v31 = *(v0 + 280);
  v32 = *(v0 + 216);
  v33 = *(v0 + 200);
  v56 = *(v0 + 208);
  v55 = *(v29 + 16);
  v55(v28, v31, v30);
  sub_1000095E8(v31, &unk_1011814D0, &qword_100EC12A0);
  Playlist.lastModifiedDate.getter();
  v34 = *(v29 + 8);
  *(v0 + 368) = v34;
  *(v0 + 376) = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v34(v28, v30);
  v35 = *(v32 + 48);
  if (v35(v33, 1, v56) == 1)
  {
    goto LABEL_16;
  }

  v54 = v35;
  v57 = *(v0 + 296);
  v40 = *(v0 + 272);
  v41 = *(*(v0 + 216) + 32);
  v41(*(v0 + 232), *(v0 + 200), *(v0 + 208));
  sub_1000089F8(&v2[v58], v40, &unk_1011814D0, &qword_100EC12A0);
  v42 = v59(v40, 1, v57);
  v43 = *(v0 + 208);
  v44 = *(v0 + 192);
  if (v42)
  {
    v45 = *(v0 + 272);
    v46 = *(v0 + 216);
    (*(v46 + 8))(*(v0 + 232), *(v0 + 208));
    sub_1000095E8(v45, &unk_1011814D0, &qword_100EC12A0);
    (*(v46 + 56))(v44, 1, 1, v43);
    v36 = *(v0 + 192);
    goto LABEL_17;
  }

  v47 = *(v0 + 312);
  v48 = *(v0 + 296);
  v49 = *(v0 + 272);
  v55(v47, v49, v48);
  sub_1000095E8(v49, &unk_1011814D0, &qword_100EC12A0);
  Playlist.lastModifiedDate.getter();
  v34(v47, v48);
  if (v54(v44, 1, v43) == 1)
  {
    (*(*(v0 + 216) + 8))(*(v0 + 232), *(v0 + 208));
    v36 = *(v0 + 192);
    goto LABEL_17;
  }

  v41(*(v0 + 224), *(v0 + 192), *(v0 + 208));
  if (static Date.> infix(_:_:)())
  {
    v50 = swift_task_alloc();
    *(v0 + 384) = v50;
    *v50 = v0;
    v50[1] = sub_100836530;
    v38 = *(v0 + 320);
    v39 = 1;
    goto LABEL_19;
  }

  v51 = *(v0 + 232);
  v52 = *(v0 + 208);
  v53 = *(*(v0 + 216) + 8);
  v53(*(v0 + 224), v52);
  v53(v51, v52);
LABEL_18:
  v37 = swift_task_alloc();
  *(v0 + 392) = v37;
  *v37 = v0;
  v37[1] = sub_1008367A8;
  v38 = *(v0 + 320);
  v39 = 0;
LABEL_19:

  return MusicLibrary.updateSubscribedPlaylist(_:ignoreMinimumRefreshInterval:)(v38, v39);
}

uint64_t sub_100836530()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 336);
    v4 = *(v2 + 344);
    v5 = sub_10086E32C;
  }

  else
  {
    v3 = *(v2 + 336);
    v4 = *(v2 + 344);
    v5 = sub_100836654;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100836654()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 320);
  v3 = *(v0 + 296);
  v5 = *(v0 + 224);
  v4 = *(v0 + 232);
  v6 = *(v0 + 208);
  v7 = *(v0 + 216);

  v8 = *(v7 + 8);
  v8(v5, v6);
  v8(v4, v6);
  v1(v2, v3);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1008367A8()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 336);
    v4 = *(v2 + 344);
    v5 = sub_10086E330;
  }

  else
  {
    v3 = *(v2 + 336);
    v4 = *(v2 + 344);
    v5 = sub_1008368CC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1008368CC()
{
  v1 = v0[44];
  v2 = v0[40];
  v3 = v0[37];
  v4 = v0[38];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

double sub_1008369E8()
{
  v1 = v0;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v39 = &v35 - v2;
  v40 = sub_10010FC20(&qword_1011A4788, &qword_100EE4DE8);
  v38 = *(v40 - 8);
  __chkstk_darwin();
  v37 = &v35 - v3;
  v4 = sub_10010FC20(&qword_1011A4790, &qword_100EE4DF0);
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin();
  v42 = &v35 - v5;
  v47 = sub_10010FC20(&qword_1011A4798, &qword_100EE4DF8);
  v41 = *(v47 - 8);
  __chkstk_darwin();
  v46 = &v35 - v6;
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v8 = &v35 - v7;
  v48 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v9 = *(v48 - 8);
  __chkstk_darwin();
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v45 = &v35 - v12;
  v13 = type metadata accessor for MusicPropertySource();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v35 - v17;
  v19 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
  swift_beginAccess();
  (*(v14 + 16))(v18, v1 + v19, v13);
  (*(v14 + 104))(v16, enum case for MusicPropertySource.catalog(_:), v13);
  LOBYTE(v19) = static MusicPropertySource.== infix(_:_:)();
  v20 = *(v14 + 8);
  v20(v16, v13);
  v20(v18, v13);
  if (v19)
  {
    v22 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogEntries;
    swift_beginAccess();
    sub_1000089F8(v1 + v22, v8, &qword_10119A808, &unk_100ED91D0);
    if ((*(v9 + 48))(v8, 1, v48) == 1)
    {
      sub_1000095E8(v8, &qword_10119A808, &unk_100ED91D0);
    }

    else
    {
      v23 = v9;
      v36 = v9;
      v24 = *(v9 + 32);
      v25 = v45;
      v26 = v48;
      v24(v45, v8, v48);
      (*(v23 + 16))(v11, v25, v26);
      sub_100020674(&unk_10119F050, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
      dispatch thunk of Sequence._copyToContiguousArray()();
      type metadata accessor for Playlist.Entry();
      sub_100866F00(&qword_1011A47A0, &type metadata accessor for Playlist.Entry, &protocol conformance descriptor for Playlist.Entry);
      MusicLibraryMapping.Request.init(mappingItems:)();
      sub_100020674(&qword_1011A47A8, &qword_1011A4798, &qword_100EE4DF8, &protocol conformance descriptor for MusicLibraryMapping.Request<A>);
      *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogEntriesAutoupdatingResponse) = MusicAutoupdatableRequest.autoupdatingResponse.getter();

      v27 = v37;
      dispatch thunk of MusicAutoupdatingResponse.$response.getter();
      sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
      v28 = static OS_dispatch_queue.main.getter();
      v49 = v28;
      v29 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      v30 = v39;
      (*(*(v29 - 8) + 56))(v39, 1, 1, v29);
      sub_100020674(&qword_1011A47B0, &qword_1011A4788, &qword_100EE4DE8, &protocol conformance descriptor for Published<A>.Publisher);
      sub_1000206BC();
      v31 = v42;
      v32 = v40;
      Publisher.receive<A>(on:options:)();
      sub_1000095E8(v30, &qword_101182140, &unk_100EBD2A0);

      (*(v38 + 8))(v27, v32);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100020674(&qword_1011A47B8, &qword_1011A4790, &qword_100EE4DF0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
      v33 = v44;
      v34 = Publisher<>.sink(receiveValue:)();

      (*(v43 + 8))(v31, v33);
      (*(v41 + 8))(v46, v47);
      (*(v36 + 8))(v45, v26);
      *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogEntriesAutoupdatingResponseSubscription) = v34;
    }
  }

  return result;
}

void *sub_10083720C(uint64_t a1, uint64_t a2)
{
  v39 = type metadata accessor for Playlist.Entry();
  v3 = *(v39 - 8);
  __chkstk_darwin();
  v38 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v6 = v30 - v5;
  v7 = sub_10010FC20(&qword_1011A47C0, &qword_100EE4E00);
  v40 = *(v7 - 8);
  __chkstk_darwin();
  v9 = v30 - v8;
  sub_10010FC20(&qword_1011A47C8, &qword_100EE4E08);
  __chkstk_darwin();
  v11 = v30 - v10;
  v12 = sub_10010FC20(&qword_1011A47D0, &qword_100EE4E10);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = v30 - v14;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    sub_1000089F8(a1, v11, &qword_1011A47C8, &qword_100EE4E08);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {

      return sub_1000095E8(v11, &qword_1011A47C8, &qword_100EE4E08);
    }

    else
    {
      v33 = v17;
      v35 = v13;
      (*(v13 + 32))(v15, v11, v12);
      v34 = v15;
      v18 = MusicLibraryMapping.Response.mappedItems.getter();
      v19 = *(v18 + 16);
      if (v19)
      {
        v31 = v12;
        v32 = v6;
        v20 = *(v40 + 16);
        v21 = *(v40 + 80);
        v30[1] = v18;
        v22 = v18 + ((v21 + 32) & ~v21);
        v36 = *(v40 + 72);
        v37 = v20;
        v40 += 16;
        v23 = (v40 - 8);
        v24 = _swiftEmptyArrayStorage;
        do
        {
          v37(v9, v22, v7);
          MusicLibraryMapping.MappedItem.item.getter();
          (*v23)(v9, v7);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_10049B104(0, v24[2] + 1, 1, v24);
          }

          v26 = v24[2];
          v25 = v24[3];
          if (v26 >= v25 >> 1)
          {
            v24 = sub_10049B104((v25 > 1), v26 + 1, 1, v24);
          }

          v24[2] = v26 + 1;
          (*(v3 + 32))(v24 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v26, v38, v39);
          v22 += v36;
          --v19;
        }

        while (v19);

        v12 = v31;
        v6 = v32;
      }

      else
      {

        v24 = _swiftEmptyArrayStorage;
      }

      v41 = v24;
      sub_10010FC20(&qword_10119F090, &qword_100EE4C40);
      sub_100020674(&qword_10119F098, &qword_10119F090, &qword_100EE4C40, &protocol conformance descriptor for [A]);
      MusicItemCollection.init<A>(_:)();
      v27 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
      (*(*(v27 - 8) + 56))(v6, 0, 1, v27);
      v28 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries;
      v29 = v33;
      swift_beginAccess();
      sub_1002190E0(v6, v29 + v28, &qword_10119A808, &unk_100ED91D0);
      swift_endAccess();
      sub_1008422A8();

      sub_1000095E8(v6, &qword_10119A808, &unk_100ED91D0);
      return (*(v35 + 8))(v34, v12);
    }
  }

  return result;
}

double sub_1008377B0(uint64_t a1)
{
  v2 = v1;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v5 = v49 - v4;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v54 = v49 - v6;
  sub_10010FC20(&qword_101191570, &qword_100ECE0B0);
  __chkstk_darwin();
  v57 = v49 - v7;
  v8 = type metadata accessor for Playlist.Entry();
  v58 = *(v8 - 8);
  v59 = v8;
  __chkstk_darwin();
  v56 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v55 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = v49 - v13;
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = v49 - v17;
  if (*(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_paginationTask))
  {
    goto LABEL_5;
  }

  v52 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_paginationTask;
  v53 = a1;
  v19 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogEntries;
  swift_beginAccess();
  sub_1000089F8(v2 + v19, v18, &qword_10119A808, &unk_100ED91D0);
  v20 = v11[6];
  if (v20(v18, 1, v10))
  {
    v21 = &qword_10119A808;
    v22 = &unk_100ED91D0;
    v23 = v18;
LABEL_4:
    sub_1000095E8(v23, v21, v22);
    a1 = v53;
LABEL_5:
    v24 = type metadata accessor for IndexPath();
    v25 = *(v24 - 8);
    (*(v25 + 16))(v5, a1, v24);
    (*(v25 + 56))(v5, 0, 1, v24);
    v26 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_largestPrefetchIndexPath;
    swift_beginAccess();
    sub_10006B010(v5, v2 + v26, &unk_10118BCE0, &qword_100EC6450);
    swift_endAccess();
    return result;
  }

  v28 = v11[2];
  v49[1] = v11 + 2;
  v49[0] = v28;
  v28(v14, v18, v10);
  sub_1000095E8(v18, &qword_10119A808, &unk_100ED91D0);
  v51 = v2;
  v29 = MusicItemCollection.hasNextBatch.getter();
  v2 = v51;
  v30 = v29;
  v50 = v11[1];
  v50(v14, v10);
  a1 = v53;
  if ((v30 & 1) == 0)
  {
    goto LABEL_5;
  }

  v31 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries;
  swift_beginAccess();
  sub_1000089F8(v2 + v31, v16, &qword_10119A808, &unk_100ED91D0);
  if (v20(v16, 1, v10))
  {
    sub_1000095E8(v16, &qword_10119A808, &unk_100ED91D0);
    v32 = v57;
    (*(v58 + 56))(v57, 1, 1, v59);
LABEL_13:
    v21 = &qword_101191570;
    v22 = &qword_100ECE0B0;
    v23 = v32;
    goto LABEL_4;
  }

  v33 = v55;
  (v49[0])(v55, v16, v10);
  sub_1000095E8(v16, &qword_10119A808, &unk_100ED91D0);
  sub_100020674(&unk_101186ED0, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
  v34 = dispatch thunk of Collection.isEmpty.getter();
  v36 = v58;
  v35 = v59;
  v32 = v57;
  if (v34)
  {
    v50(v33, v10);
    (*(v36 + 56))(v32, 1, 1, v35);
  }

  else
  {
    dispatch thunk of Collection.endIndex.getter();
    sub_100020674(&qword_1011A4780, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of BidirectionalCollection.index(before:)();
    v37 = dispatch thunk of Collection.subscript.read();
    (*(v36 + 16))(v32);
    v37(v60, 0);
    v50(v33, v10);
    (*(v36 + 56))(v32, 0, 1, v35);
  }

  v38 = (*(v36 + 48))(v32, 1, v35);
  v2 = v51;
  v39 = v56;
  if (v38 == 1)
  {
    goto LABEL_13;
  }

  (*(v36 + 32))(v56, v32, v35);
  v40 = Playlist.Entry.position.getter();
  v41 = v53;
  if (IndexPath.item.getter() < v40)
  {
    (*(v36 + 8))(v39, v35);
    v2 = v51;
    a1 = v41;
    goto LABEL_5;
  }

  v2 = v51;
  if (*(v51 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching))
  {
    (*(v36 + 8))(v39, v35);
    a1 = v41;
    goto LABEL_5;
  }

  v42 = type metadata accessor for TaskPriority();
  v43 = v54;
  (*(*(v42 - 8) + 56))(v54, 1, 1, v42);
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v45 = v2;
  v46 = static MainActor.shared.getter();
  v47 = swift_allocObject();
  v47[2] = v46;
  v47[3] = &protocol witness table for MainActor;
  v47[4] = v44;

  v48 = sub_10086E3AC(0, 0, v43, &unk_100EE4DD0, v47);
  (*(v36 + 8))(v39, v35);
  *(v45 + v52) = v48;

  return result;
}

uint64_t sub_100838068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v4[9] = swift_task_alloc();
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v4[14] = *(v6 + 64);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = type metadata accessor for MainActor();
  v4[19] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[20] = v8;
  v4[21] = v7;

  return _swift_task_switch(sub_100838208, v8, v7);
}

uint64_t sub_100838208()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[22] = Strong;
  if (!Strong)
  {

LABEL_7:

    v27 = v0[1];

    return v27();
  }

  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[10];
  v5 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogEntries;
  v6 = Strong;
  swift_beginAccess();
  sub_1000089F8(v6 + v5, v4, &qword_10119A808, &unk_100ED91D0);
  v7 = *(v3 + 48);
  v0[23] = v7;
  v0[24] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v8 = v7(v4, 1, v2);
  v9 = v0[12];
  v10 = v0[13];
  if (v8)
  {
    v12 = v0[10];
    v11 = v0[11];

    sub_1000095E8(v12, &qword_10119A808, &unk_100ED91D0);
    (*(v10 + 56))(v11, 1, 1, v9);
    v13 = v0[23];
    v15 = v0[11];
    v14 = v0[12];
    type metadata accessor for Playlist.Entry();
    MusicItemCollection.init(arrayLiteral:)();
    if (v13(v15, 1, v14) != 1)
    {
      sub_1000095E8(v0[11], &qword_10119A808, &unk_100ED91D0);
    }

    v16 = v0[22];
    v17 = v0[17];
    v34 = v17;
    v18 = v0[15];
    v19 = v0[12];
    v20 = v0[13];
    v21 = v0[9];
    v22 = type metadata accessor for TaskPriority();
    (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v20 + 16))(v18, v17, v19);

    v24 = static MainActor.shared.getter();
    v25 = (*(v20 + 80) + 40) & ~*(v20 + 80);
    v26 = swift_allocObject();
    *(v26 + 2) = v24;
    *(v26 + 3) = &protocol witness table for MainActor;
    *(v26 + 4) = v23;
    (*(v20 + 32))(&v26[v25], v18, v19);

    sub_1001F4CB8(0, 0, v21, &unk_100EE4DE0, v26);

    (*(v20 + 8))(v34, v19);
    goto LABEL_7;
  }

  v29 = v0[10];
  (*(v10 + 16))(v0[16], v29, v0[12]);
  sub_1000095E8(v29, &qword_10119A808, &unk_100ED91D0);
  v30 = swift_task_alloc();
  v0[25] = v30;
  v31 = sub_100866F00(&qword_1011A4778, &type metadata accessor for Playlist.Entry, &protocol conformance descriptor for Playlist.Entry);
  *v30 = v0;
  v30[1] = sub_100838658;
  v32 = v0[11];
  v33 = v0[12];

  return MusicItemCollection.nextBatch<>(limit:)(v32, 0, 1, v33, v31);
}

uint64_t sub_100838658()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  *(*v1 + 208) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 168);
  v7 = *(v2 + 160);
  if (v0)
  {
    v8 = sub_100838AA4;
  }

  else
  {
    v8 = sub_1008387F0;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1008387F0()
{
  v1 = v0[23];
  v2 = v0[11];
  v3 = v0[12];

  v4 = v1(v2, 1, v3);
  v5 = v0[11];
  v6 = v0[12];
  if (v4 == 1)
  {
    v7 = v0[23];
    type metadata accessor for Playlist.Entry();
    MusicItemCollection.init(arrayLiteral:)();
    if (v7(v5, 1, v6) != 1)
    {
      sub_1000095E8(v0[11], &qword_10119A808, &unk_100ED91D0);
    }
  }

  else
  {
    (*(v0[13] + 32))(v0[17], v0[11], v0[12]);
  }

  v8 = v0[22];
  v9 = v0[17];
  v21 = v9;
  v10 = v0[15];
  v11 = v0[12];
  v12 = v0[13];
  v13 = v0[9];
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v12 + 16))(v10, v9, v11);

  v16 = static MainActor.shared.getter();
  v17 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = v16;
  *(v18 + 3) = &protocol witness table for MainActor;
  *(v18 + 4) = v15;
  (*(v12 + 32))(&v18[v17], v10, v11);

  sub_1001F4CB8(0, 0, v13, &unk_100EE4DE0, v18);

  (*(v12 + 8))(v21, v11);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100838AA4()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100838B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a4;
  v5[24] = a5;
  sub_10010FC20(&qword_101191570, &qword_100ECE0B0);
  v5[25] = swift_task_alloc();
  v6 = type metadata accessor for Playlist.Entry();
  v5[26] = v6;
  v5[27] = *(v6 - 8);
  v5[28] = swift_task_alloc();
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  v5[29] = swift_task_alloc();
  v7 = type metadata accessor for IndexPath();
  v5[30] = v7;
  v5[31] = *(v7 - 8);
  v5[32] = swift_task_alloc();
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v8 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v5[36] = v8;
  v5[37] = *(v8 - 8);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[40] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100838DEC, v10, v9);
}

uint64_t sub_100838DEC()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[36];
    v4 = v0[37];
    v5 = v0[35];
    v6 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries;
    swift_beginAccess();
    v64 = v6;
    sub_1000089F8(&v2[v6], v5, &qword_10119A808, &unk_100ED91D0);
    v7 = *(v4 + 48);
    if (v7(v5, 1, v3) == 1)
    {
      v8 = v0[35];

      v9 = &qword_10119A808;
      v10 = &unk_100ED91D0;
LABEL_6:
      v19 = v8;
LABEL_15:
      sub_1000095E8(v19, v9, v10);
      goto LABEL_16;
    }

    v58 = v7;
    v11 = v0[39];
    v13 = v0[36];
    v12 = v0[37];
    v14 = v0[34];
    v60 = v0[31];
    v62 = v0[30];
    v59 = v0[29];
    (*(v12 + 32))(v11, v0[35], v13);
    static MusicItemCollection.+= infix(_:_:)();
    v15 = *(v12 + 16);
    v15(v14, v11, v13);
    v16 = *(v12 + 56);
    v16(v14, 0, 1, v13);
    swift_beginAccess();
    sub_1002190E0(v14, &v2[v64], &qword_10119A808, &unk_100ED91D0);
    swift_endAccess();
    sub_1008422A8();
    sub_1000095E8(v14, &qword_10119A808, &unk_100ED91D0);
    v15(v14, v11, v13);
    v16(v14, 0, 1, v13);
    v17 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogEntries;
    swift_beginAccess();
    sub_10006B010(v14, &v2[v17], &qword_10119A808, &unk_100ED91D0);
    swift_endAccess();
    sub_1008369E8();
    *&v2[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_paginationTask] = 0;

    v18 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_largestPrefetchIndexPath;
    swift_beginAccess();
    sub_1000089F8(&v2[v18], v59, &unk_10118BCE0, &qword_100EC6450);
    if ((*(v60 + 48))(v59, 1, v62) == 1)
    {
      v8 = v0[29];
      (*(v0[37] + 8))(v0[39], v0[36]);

      v9 = &unk_10118BCE0;
      v10 = &qword_100EC6450;
      goto LABEL_6;
    }

    v20 = v0[36];
    v21 = v0[33];
    (*(v0[31] + 32))(v0[32], v0[29], v0[30]);
    sub_1000089F8(&v2[v64], v21, &qword_10119A808, &unk_100ED91D0);
    v22 = v58(v21, 1, v20);
    v23 = v0[36];
    v24 = v0[33];
    if (v22)
    {
      v25 = v0[39];
      v26 = v0[37];
      v28 = v0[31];
      v27 = v0[32];
      v29 = v0[30];
      v30 = v0[27];
      v63 = v0[25];
      v65 = v0[26];

      (*(v28 + 8))(v27, v29);
      (*(v26 + 8))(v25, v23);
      sub_1000095E8(v24, &qword_10119A808, &unk_100ED91D0);
      (*(v30 + 56))(v63, 1, 1, v65);
LABEL_14:
      v19 = v0[25];
      v9 = &qword_101191570;
      v10 = &qword_100ECE0B0;
      goto LABEL_15;
    }

    v15(v0[38], v0[33], v0[36]);
    sub_1000095E8(v24, &qword_10119A808, &unk_100ED91D0);
    sub_100020674(&unk_101186ED0, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
    v31 = dispatch thunk of Collection.isEmpty.getter();
    v33 = v0[37];
    v32 = v0[38];
    v34 = v0[36];
    v35 = v0[26];
    v36 = v0[27];
    v37 = v0[25];
    if (v31)
    {
      v38 = *(v33 + 8);
      v38(v0[38], v0[36]);
      (*(v36 + 56))(v37, 1, 1, v35);
    }

    else
    {
      dispatch thunk of Collection.endIndex.getter();
      sub_100020674(&qword_1011A4780, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
      dispatch thunk of BidirectionalCollection.index(before:)();
      v39 = dispatch thunk of Collection.subscript.read();
      (*(v36 + 16))(v37);
      v39(v0 + 2, 0);
      v38 = *(v33 + 8);
      v38(v32, v34);
      (*(v36 + 56))(v37, 0, 1, v35);
    }

    v40 = v0[26];
    v41 = v0[27];
    v42 = v0[25];
    if ((*(v41 + 48))(v42, 1, v40) == 1)
    {
      v43 = v0[39];
      v44 = v0[36];
      v46 = v0[31];
      v45 = v0[32];
      v47 = v0[30];

      (*(v46 + 8))(v45, v47);
      v38(v43, v44);
      goto LABEL_14;
    }

    (*(v41 + 32))(v0[28], v42, v40);
    v50 = Playlist.Entry.position.getter();
    v51 = IndexPath.item.getter();
    v52 = v0[39];
    v66 = v0[36];
    v53 = v0[31];
    v54 = v0[32];
    v61 = v0[30];
    v55 = v0[27];
    v56 = v0[28];
    v57 = v0[26];
    if (v51 >= v50)
    {
      sub_1008377B0(v54);
    }

    (*(v55 + 8))(v56, v57);
    (*(v53 + 8))(v54, v61);
    v38(v52, v66);
  }

LABEL_16:

  v48 = v0[1];

  return v48();
}

double sub_1008395B0()
{
  v1 = v0;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v3 = &v18 - v2;
  v4 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18 - v6;
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v9 = &v18 - v8;
  v10 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogEntries;
  swift_beginAccess();
  sub_1000089F8(v1 + v10, v9, &qword_10119A808, &unk_100ED91D0);
  if ((*(v5 + 48))(v9, 1, v4))
  {
    sub_1000095E8(v9, &qword_10119A808, &unk_100ED91D0);
  }

  else
  {
    (*(v5 + 16))(v7, v9, v4);
    sub_1000095E8(v9, &qword_10119A808, &unk_100ED91D0);
    v12 = MusicItemCollection.hasNextBatch.getter();
    (*(v5 + 8))(v7, v4);
    if (v12)
    {
      v13 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_paginationTask;
      if (*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_paginationTask))
      {

        sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
        Task.cancel()();
      }

      v14 = type metadata accessor for TaskPriority();
      (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for MainActor();

      v16 = static MainActor.shared.getter();
      v17 = swift_allocObject();
      v17[2] = v16;
      v17[3] = &protocol witness table for MainActor;
      v17[4] = v15;

      *(v1 + v13) = sub_10086E3AC(0, 0, v3, &unk_100EE4DB0, v17);
    }
  }

  return result;
}

uint64_t sub_100839924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v4[9] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  v4[17] = swift_task_alloc();
  v6 = type metadata accessor for Playlist();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = type metadata accessor for MainActor();
  v4[23] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[24] = v8;
  v4[25] = v7;

  return _swift_task_switch(sub_100839B5C, v8, v7);
}

uint64_t sub_100839B5C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[26] = Strong;
  if (!Strong)
  {

    goto LABEL_5;
  }

  v2 = Strong;
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[17];
  v6 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogPlaylist;
  swift_beginAccess();
  sub_1000089F8(v2 + v6, v5, &unk_1011814D0, &qword_100EC12A0);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v7 = v0[17];

    sub_1000095E8(v7, &unk_1011814D0, &qword_100EC12A0);
LABEL_5:

    v8 = v0[1];

    return v8();
  }

  (*(v0[19] + 32))(v0[21], v0[17], v0[18]);
  v0[27] = swift_allocBox();
  v0[28] = v10;
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v11 = swift_allocObject();
  v0[29] = v11;
  *(v11 + 16) = xmmword_100EBC6C0;
  sub_10010FC20(&unk_10118C1C0, &qword_100ED92A0);
  static PartialMusicProperty<A>.entries.getter();
  v12 = MusicRelationshipProperty.limit(_:)();

  *(v11 + 32) = v12;
  v13 = swift_task_alloc();
  v0[30] = v13;
  *v13 = v0;
  v13[1] = sub_100839E10;
  v14 = v0[20];
  v15 = v0[18];

  return dispatch thunk of MusicPropertyContainer.with(_:)(v14, v11, v15, &protocol witness table for Playlist);
}

uint64_t sub_100839E10()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 200);
  v4 = *(v2 + 192);
  if (v0)
  {
    v5 = sub_10083A344;
  }

  else
  {
    v5 = sub_100839F68;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100839F68(uint64_t a1)
{
  v3 = v1[19];
  v2 = v1[20];
  v4 = v1[18];
  v5 = v1[16];
  v6 = v1[10];
  v7 = v1[11];
  Playlist.entries.getter();
  v8 = *(v3 + 8);
  v1[32] = v8;
  v1[33] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v2, v4);
  v9 = *(v7 + 48);
  v1[34] = v9;
  v1[35] = (v7 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v10 = v9(v5, 1, v6);
  v11 = v1[16];
  if (v10 == 1)
  {
    v12 = v1[10];
    type metadata accessor for Playlist.Entry();
    MusicItemCollection.init(arrayLiteral:)();
    if (v9(v11, 1, v12) != 1)
    {
      sub_1000095E8(v1[16], &qword_10119A808, &unk_100ED91D0);
    }
  }

  else
  {
    (*(v1[11] + 32))(v1[28], v1[16], v1[10]);
  }

  v13 = v1[28];
  v14 = v1[14];
  v15 = v1[10];
  v16 = v1[11];
  v17 = *(v16 + 16);
  v1[36] = v17;
  v17(v14, v13, v15);
  v18 = MusicItemCollection.hasNextBatch.getter();
  v20 = *(v16 + 8);
  v19 = v16 + 8;
  v1[37] = v20;
  v20(v14, v15);
  if (v18)
  {
    v1[38] = v19 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v1[36])(v1[12], v1[28], v1[10]);
    v21 = swift_task_alloc();
    v1[39] = v21;
    v22 = sub_100866F00(&qword_1011A4778, &type metadata accessor for Playlist.Entry, &protocol conformance descriptor for Playlist.Entry);
    *v21 = v1;
    v21[1] = sub_10083A450;
    v23 = v1[15];
    v24 = v1[10];

    return MusicItemCollection.nextBatch<>(limit:)(v23, 10000, 0, v24, v22);
  }

  else
  {
    v25 = v1[32];
    v27 = v1[26];
    v26 = v1[27];
    v28 = v1[21];
    v29 = v1[18];
    v30 = v1[9];

    v31 = type metadata accessor for TaskPriority();
    (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
    v32 = v27;

    v33 = static MainActor.shared.getter();
    v34 = swift_allocObject();
    v34[2] = v33;
    v34[3] = &protocol witness table for MainActor;
    v34[4] = v32;
    v34[5] = v26;
    sub_1001F4CB8(0, 0, v30, &unk_100EE4DC0, v34);

    v25(v28, v29);

    v35 = v1[1];

    return v35();
  }
}

uint64_t sub_10083A344()
{
  v1 = v0[26];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[19];

  (*(v4 + 8))(v2, v3);
  swift_deallocBox();

  v5 = v0[1];

  return v5();
}

uint64_t sub_10083A450()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  (*(v2 + 296))(*(v2 + 96), *(v2 + 80));
  v3 = *(v2 + 200);
  v4 = *(v2 + 192);
  if (v0)
  {
    v5 = sub_10083A958;
  }

  else
  {
    v5 = sub_10083A5E0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10083A5E0()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 80);
  if ((*(v0 + 272))(v1, 1, v2) == 1)
  {
    sub_1000095E8(v1, &qword_10119A808, &unk_100ED91D0);
  }

  else
  {
    v3 = *(v0 + 296);
    v4 = *(v0 + 104);
    (*(*(v0 + 88) + 32))(v4, v1, v2);
    type metadata accessor for Playlist.Entry();
    static MusicItemCollection.+= infix(_:_:)();
    v3(v4, v2);
  }

  v5 = *(v0 + 296);
  v6 = *(v0 + 112);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88) + 8;
  (*(v0 + 288))(v6, *(v0 + 224), v7);
  v9 = MusicItemCollection.hasNextBatch.getter();
  v5(v6, v7);
  if (v9)
  {
    *(v0 + 304) = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (*(v0 + 288))(*(v0 + 96), *(v0 + 224), *(v0 + 80));
    v10 = swift_task_alloc();
    *(v0 + 312) = v10;
    v11 = sub_100866F00(&qword_1011A4778, &type metadata accessor for Playlist.Entry, &protocol conformance descriptor for Playlist.Entry);
    *v10 = v0;
    v10[1] = sub_10083A450;
    v12 = *(v0 + 120);
    v13 = *(v0 + 80);

    return MusicItemCollection.nextBatch<>(limit:)(v12, 10000, 0, v13, v11);
  }

  else
  {
    v14 = *(v0 + 256);
    v16 = *(v0 + 208);
    v15 = *(v0 + 216);
    v17 = *(v0 + 168);
    v18 = *(v0 + 144);
    v19 = *(v0 + 72);

    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
    v21 = v16;

    v22 = static MainActor.shared.getter();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = &protocol witness table for MainActor;
    v23[4] = v21;
    v23[5] = v15;
    sub_1001F4CB8(0, 0, v19, &unk_100EE4DC0, v23);

    v14(v17, v18);

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_10083A958()
{
  v1 = v0[32];
  v2 = v0[26];
  v3 = v0[21];
  v4 = v0[18];

  v1(v3, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10083AA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  v5[15] = swift_task_alloc();
  v5[16] = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v5[17] = swift_projectBox();
  type metadata accessor for MainActor();
  v5[18] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10083AB54, v7, v6);
}

uint64_t sub_10083AB54()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[14];

  swift_beginAccess();
  v5 = *(v3 - 8);
  v6 = *(v5 + 16);
  v6(v2, v1, v3);
  v7 = *(v5 + 56);
  v7(v2, 0, 1, v3);
  v8 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogEntries;
  swift_beginAccess();
  sub_10006B010(v2, v4 + v8, &qword_10119A808, &unk_100ED91D0);
  swift_endAccess();
  swift_beginAccess();
  v6(v2, v1, v3);
  v7(v2, 0, 1, v3);
  v9 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries;
  swift_beginAccess();
  sub_1002190E0(v2, v4 + v9, &qword_10119A808, &unk_100ED91D0);
  swift_endAccess();
  sub_1008422A8();
  sub_1000095E8(v2, &qword_10119A808, &unk_100ED91D0);
  sub_1008369E8();
  *(v4 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_paginationTask) = 0;

  v10 = v0[1];

  return v10();
}

void sub_10083AD58()
{
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v2 = v10 - v1 + 22;
  v3 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
  swift_beginAccess();
  sub_1000089F8(v0 + v3, v2, &qword_10119A808, &unk_100ED91D0);
  v4 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  LODWORD(v3) = (*(*(v4 - 8) + 48))(v2, 1, v4);
  sub_1000095E8(v2, &qword_10119A808, &unk_100ED91D0);
  if (v3 != 1 && (*(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching) & 1) == 0)
  {
    v5 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v0 + v5, v10, &unk_1011926C0, &unk_100ECF870);
    if (v10[8])
    {
      sub_1000095E8(v10, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v10, &unk_1011926C0, &unk_100ECF870);
      if (Strong)
      {
        v7 = sub_1006A3A7C();

        if (v7)
        {
          if (v7 >> 62)
          {
            v8 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v8)
          {
            sub_10083AF5C(1);
          }
        }
      }
    }
  }
}

void sub_10083AF5C(int a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v88 = *(v4 - 8);
  v89 = v4;
  __chkstk_darwin();
  v83 = &v81 - v5;
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v84 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v81 - v7;
  v9 = type metadata accessor for IndexSet();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(&v1[v13], &aBlock, &unk_1011926C0, &unk_100ECF870);
  if (v93)
  {
    sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
    if (Strong)
    {
      v15 = sub_1006A6078();

      v16 = [v15 hasUncommittedUpdates];
      if (v16)
      {
        v17 = 0;
        v18 = 0;
        v2[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_postponeSectionUpdate] = 1;
        goto LABEL_87;
      }
    }
  }

  v90 = v13;
  v2[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_postponeSectionUpdate] = 0;
  IndexSet.init()();
  v19 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeHeaderOnNextReload;
  v20 = v89;
  if (v2[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeHeaderOnNextReload] == 1)
  {
    v21 = *&v2[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections];
    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = 0;
      v24 = v21 + 32;
      while (*(v24 + v23))
      {
        if (v22 == ++v23)
        {
          goto LABEL_13;
        }
      }

      IndexSet.insert(_:)(v23);
      v2[v19] = 0;
    }
  }

LABEL_13:
  v85 = a1;
  v86 = v10;
  v87 = v12;
  v25 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
  swift_beginAccess();
  sub_1000089F8(&v2[v25], v8, &qword_10119A808, &unk_100ED91D0);
  v26 = *(v88 + 48);
  v27 = v26(v8, 1, v20);
  sub_1000095E8(v8, &qword_10119A808, &unk_100ED91D0);
  if (v27 == 1)
  {
    v28 = v9;
    v29 = objc_opt_self();
    v30 = swift_allocObject();
    v31 = v87;
    v30[2] = v2;
    v30[3] = v31;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_10086E328;
    *(v32 + 24) = v30;
    v96 = sub_10018A020;
    v97 = v32;
    aBlock = _NSConcreteStackBlock;
    v93 = 1107296256;
    v94 = sub_100029B9C;
    v95 = &unk_1010C2108;
    v33 = _Block_copy(&aBlock);
    v34 = v2;

    [v29 performWithoutAnimation:v33];
    _Block_release(v33);
    LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

    if ((v29 & 1) == 0)
    {
      sub_1000089F8(&v2[v90], &aBlock, &unk_1011926C0, &unk_100ECF870);
      if (v93)
      {
        sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
LABEL_41:
        (*(v86 + 8))(v31, v28);
LABEL_86:

        v17 = 0;
        v18 = 0;
        goto LABEL_87;
      }

      v48 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
      if (!v48)
      {
        goto LABEL_41;
      }

      v49 = sub_1006A6078();

      v50 = swift_allocObject();
      *(v50 + 16) = v34;
      v51 = swift_allocObject();
      *(v51 + 16) = sub_100869A3C;
      *(v51 + 24) = v50;
      v96 = sub_10018A020;
      v97 = v51;
      aBlock = _NSConcreteStackBlock;
      v93 = 1107296256;
      v94 = sub_100029B9C;
      v95 = &unk_1010C2180;
      v52 = _Block_copy(&aBlock);
      v53 = v34;

      [v49 performBatchUpdates:v52 completion:0];
      _Block_release(v52);

      (*(v86 + 8))(v31, v28);

      v17 = sub_100869A3C;
      v18 = v50;
LABEL_87:
      sub_100020438(v17, v18);
      return;
    }

    __break(1u);
LABEL_74:
    v68 = _CocoaArrayWrapper.endIndex.getter();

    if (!v68)
    {
      goto LABEL_75;
    }

    goto LABEL_72;
  }

  sub_1000089F8(&v2[v90], &aBlock, &unk_1011926C0, &unk_100ECF870);
  v82 = v9;
  if (v93)
  {
    sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    v36 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
    if (v36)
    {
      v37 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_loadingTimer;
      [*&v36[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_loadingTimer] invalidate];
      v38 = *&v36[v37];
      *&v36[v37] = 0;
    }
  }

  v39 = &v2[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState];
  v40 = *&v2[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState];
  v41 = &v2[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState + 8];
  v42 = *v41;
  v43 = *&v2[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState + 16];
  if ((v40 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL)
  {
    if (v40 >> 62 == 3)
    {
      if (v40 != 0xC000000000000000 || (v40 = 0xC000000000000000, v43 | v42))
      {
LABEL_31:
        v40 = 0xC000000000000001;
        goto LABEL_32;
      }

LABEL_29:
      if (v40 == 0xC000000000000000)
      {
        v40 = 0xC000000000000000;
        if (!(v43 | v42))
        {
          goto LABEL_32;
        }
      }

      goto LABEL_31;
    }

    if ((v40 & 1) == 0)
    {
      v60 = v84;
      sub_1000089F8(&v2[v25], v84, &qword_10119A808, &unk_100ED91D0);
      v61 = v89;
      if (v26(v60, 1, v89))
      {
        sub_1000095E8(v60, &qword_10119A808, &unk_100ED91D0);
        v40 = *v39;
        v42 = v39[1];
        v43 = v39[2];
      }

      else
      {
        v62 = v88;
        v63 = v83;
        (*(v88 + 16))(v83, v60, v61);
        sub_1000095E8(v60, &qword_10119A808, &unk_100ED91D0);
        sub_100020674(&unk_101186ED0, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.endIndex.getter();
        (*(v62 + 8))(v63, v61);
        v40 = *v39;
        v42 = v39[1];
        v43 = v39[2];
        if (aBlock != v91)
        {
          goto LABEL_32;
        }
      }
    }
  }

  if ((v40 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
  {
    goto LABEL_33;
  }

  if (v40 >> 62 == 3)
  {
    goto LABEL_29;
  }

  if (v40)
  {
LABEL_32:
    *v39 = 0x3FFFFFEFELL;
    *v41 = 0;
    v41[1] = 0;
    sub_100817B04(v40, v42, v43);
    v35.n128_f64[0] = sub_1004E5BA4(v40, v42, v43);
  }

LABEL_33:
  v44 = *&v2[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections];
  v45 = *(v44 + 16);
  v46 = v44 + 32;
  v28 = v87;
  v31 = v90;
  if (v45)
  {
    v47 = 0;
    while (*(v46 + v47) != 3)
    {
      if (v45 == ++v47)
      {
        goto LABEL_37;
      }
    }

    IndexSet.insert(_:)(v47);
    if (v85)
    {
      goto LABEL_47;
    }
  }

  else
  {
LABEL_37:
    if (v85)
    {
      goto LABEL_47;
    }
  }

  v54 = *(v44 + 16);
  if (!v54)
  {
LABEL_47:
    sub_100846A54(v35);
    goto LABEL_48;
  }

  v55 = 0;
  while (*(v46 + v55) != 2)
  {
    if (v54 == ++v55)
    {
      goto LABEL_47;
    }
  }

  IndexSet.insert(_:)(v55);
LABEL_48:
  sub_1000089F8(&v2[v31], &aBlock, &unk_1011926C0, &unk_100ECF870);
  if (v93)
  {
    goto LABEL_49;
  }

  v56 = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
  if (v56)
  {
    v34 = &OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_includeRelatedContentOnNextReload;
    v57 = v56[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_includeRelatedContentOnNextReload];

    if (v57)
    {
      v58 = *(v44 + 16);
      if (v58)
      {
        v59 = 0;
        while (*(v46 + v59) != 10)
        {
          if (v58 == ++v59)
          {
            goto LABEL_80;
          }
        }

        IndexSet.insert(_:)(v59);
        sub_1000089F8(&v2[v31], &aBlock, &unk_1011926C0, &unk_100ECF870);
        if (v93)
        {
          sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
          goto LABEL_77;
        }

        v30 = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
        if (!v30)
        {
LABEL_77:
          sub_1000089F8(&v2[v31], &aBlock, &unk_1011926C0, &unk_100ECF870);
          if ((v93 & 1) == 0)
          {
            v69 = swift_unknownObjectWeakLoadStrong();
            sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
            if (v69)
            {
              v69[*v34] = 0;
            }

            goto LABEL_80;
          }

LABEL_49:
          sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
          goto LABEL_80;
        }

        sub_1000089F8(&v2[v31], &aBlock, &unk_1011926C0, &unk_100ECF870);
        if (v93)
        {
          sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
        }

        else
        {
          v64 = swift_unknownObjectWeakLoadStrong();
          sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
          if (v64)
          {
            v65 = sub_1006A3A7C();

            v66 = v65;
            if (!v65)
            {
LABEL_76:
              *(v30 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_isShowingRelatedContent) = v66;

              goto LABEL_77;
            }

            if (v65 >> 62)
            {
              goto LABEL_74;
            }

            v67 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);

            if (v67)
            {
LABEL_72:
              v66 = sub_100818C54();
              goto LABEL_76;
            }
          }
        }

LABEL_75:
        v66 = 0;
        goto LABEL_76;
      }
    }
  }

LABEL_80:
  v70 = objc_opt_self();
  v71 = swift_allocObject();
  *(v71 + 16) = v2;
  *(v71 + 24) = v28;
  v72 = swift_allocObject();
  *(v72 + 16) = sub_100869A60;
  *(v72 + 24) = v71;
  v96 = sub_10018A020;
  v97 = v72;
  aBlock = _NSConcreteStackBlock;
  v93 = 1107296256;
  v94 = sub_100029B9C;
  v95 = &unk_1010C21F8;
  v73 = _Block_copy(&aBlock);
  v74 = v2;

  [v70 performWithoutAnimation:v73];
  _Block_release(v73);
  LOBYTE(v70) = swift_isEscapingClosureAtFileLocation();

  if ((v70 & 1) == 0)
  {
    sub_1000089F8(&v2[v31], &aBlock, &unk_1011926C0, &unk_100ECF870);
    if (v93)
    {
      sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      v75 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
      if (v75)
      {
        v76 = sub_1006A6078();

        v77 = swift_allocObject();
        *(v77 + 16) = v74;
        v78 = swift_allocObject();
        *(v78 + 16) = sub_100869A7C;
        *(v78 + 24) = v77;
        v96 = sub_10018A020;
        v97 = v78;
        aBlock = _NSConcreteStackBlock;
        v93 = 1107296256;
        v94 = sub_100029B9C;
        v95 = &unk_1010C2270;
        v79 = _Block_copy(&aBlock);
        v80 = v74;

        [v76 performBatchUpdates:v79 completion:0];
        _Block_release(v79);

        (*(v86 + 8))(v28, v82);

        goto LABEL_86;
      }
    }

    (*(v86 + 8))(v28, v82);
    goto LABEL_86;
  }

  __break(1u);
}

void sub_10083BDF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexSet();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v8 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(a1 + v8, v15, &unk_1011926C0, &unk_100ECF870);
  if (v15[8])
  {
    sub_1000095E8(v15, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v15, &unk_1011926C0, &unk_100ECF870);
    if (Strong)
    {
      v10 = sub_1006A6078();

      (*(v5 + 16))(v7, a2, v4);
      IndexSet._bridgeToObjectiveC()(v11);
      v13 = v12;
      (*(v5 + 8))(v7, v4);
      [v10 reloadSections:v13];
    }
  }
}

void sub_10083BF94()
{
  sub_10084BBB4();
  sub_10084C6A4();
  sub_10084A45C();
  sub_10084E17C();
}

double sub_10083BFC4(char a1, __n128 a2)
{
  v2 = a1 & 1;
  v3 = sub_10083D5A8();
  if (*(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__shouldIncludeFloatingArtwork) == v2)
  {
    *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__shouldIncludeFloatingArtwork) = v2;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_100866F00(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10083C114@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v65 = a1;
  sub_10010FC20(&qword_101186E00, &qword_100EC31E0);
  __chkstk_darwin();
  v57 = &v53 - v3;
  v56 = type metadata accessor for SocialProfile();
  v55 = *(v56 - 8);
  __chkstk_darwin();
  v54 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101183AD0, &qword_100EBE4D8);
  __chkstk_darwin();
  v61 = &v53 - v5;
  v60 = type metadata accessor for UserProfile();
  v59 = *(v60 - 8);
  __chkstk_darwin();
  v58 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101192860, &unk_100ECFB60);
  __chkstk_darwin();
  v8 = &v53 - v7;
  v64 = type metadata accessor for ContainerDetail.AttributionItem(0);
  v66 = *(v64 - 8);
  __chkstk_darwin();
  v62 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v63 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v53 - v11;
  __chkstk_darwin();
  v14 = &v53 - v13;
  __chkstk_darwin();
  v16 = &v53 - v15;
  v17 = type metadata accessor for Playlist();
  v18 = *(v17 - 8);
  __chkstk_darwin();
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v53 - v21;
  v23 = sub_10082C800();
  if (v23)
  {
    v24 = v23[2];

    if (v24)
    {
      v25 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
      swift_beginAccess();
      sub_1000089F8(v2 + v25, v16, &unk_1011814D0, &qword_100EC12A0);
      if ((*(v18 + 48))(v16, 1, v17) != 1)
      {
        v36 = *(v18 + 32);
        v36(v22, v16, v17);
        v37 = v65;
        v36(v65, v22, v17);
        v28 = v64;
        swift_storeEnumTagMultiPayload();
        v35 = v37;
        goto LABEL_20;
      }

      sub_1000095E8(v16, &unk_1011814D0, &qword_100EC12A0);
    }
  }

  v26 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogPlaylist;
  swift_beginAccess();
  sub_1000089F8(v2 + v26, v14, &unk_1011814D0, &qword_100EC12A0);
  v27 = *(v18 + 48);
  if (v27(v14, 1, v17))
  {
    sub_1000095E8(v14, &unk_1011814D0, &qword_100EC12A0);
    v28 = v64;
    (*(v66 + 56))(v8, 1, 1, v64);
LABEL_8:
    sub_1000095E8(v8, &qword_101192860, &unk_100ECFB60);
    goto LABEL_9;
  }

  (*(v18 + 16))(v20, v14, v17);
  sub_1000095E8(v14, &unk_1011814D0, &qword_100EC12A0);
  sub_10083CCC4(v8);
  (*(v18 + 8))(v20, v17);
  v28 = v64;
  if ((*(v66 + 48))(v8, 1, v64) == 1)
  {
    goto LABEL_8;
  }

  v38 = v62;
  sub_100869470(v8, v62, type metadata accessor for ContainerDetail.AttributionItem);
  if (sub_10069BD04())
  {
    v39 = v65;
    sub_100869470(v38, v65, type metadata accessor for ContainerDetail.AttributionItem);
    v35 = v39;
    goto LABEL_20;
  }

  sub_100867794(v38, type metadata accessor for ContainerDetail.AttributionItem);
LABEL_9:
  v29 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v2 + v29, v12, &unk_1011814D0, &qword_100EC12A0);
  if (v27(v12, 1, v17))
  {
    sub_1000095E8(v12, &unk_1011814D0, &qword_100EC12A0);
  }

  else
  {
    (*(v18 + 16))(v20, v12, v17);
    sub_1000095E8(v12, &unk_1011814D0, &qword_100EC12A0);
    Playlist.curatorName.getter();
    v32 = v31;
    (*(v18 + 8))(v20, v17);
    if (v32)
    {

      goto LABEL_16;
    }
  }

  v30 = v63;
  sub_1000089F8(v2 + v29, v63, &unk_1011814D0, &qword_100EC12A0);
  if (!v27(v30, 1, v17))
  {
    (*(v18 + 16))(v20, v30, v17);
    sub_1000095E8(v30, &unk_1011814D0, &qword_100EC12A0);
    v33 = Playlist.isOwner.getter();
    (*(v18 + 8))(v20, v17);
    if (v33 == 2)
    {
      goto LABEL_16;
    }

    v35 = v65;
    if ((v33 & 1) == 0)
    {
      v34 = 1;
      return (*(v66 + 56))(v35, v34, 1, v28);
    }

    v41 = v65;
    if (sub_10082C800())
    {

LABEL_25:
      v34 = 1;
      v35 = v41;
      return (*(v66 + 56))(v35, v34, 1, v28);
    }

    static ApplicationCapabilities.shared.getter(v67);
    sub_100014984(v67);
    if (v68 > 1u)
    {
      v42 = v61;
      if (v68 == 2)
      {

LABEL_33:
        if (qword_10117F278 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter(v42);

        v44 = v59;
        v45 = v60;
        if ((*(v59 + 48))(v42, 1, v60) == 1)
        {
          sub_1000095E8(v42, &qword_101183AD0, &qword_100EBE4D8);
          goto LABEL_25;
        }

        v46 = v58;
        (*(v44 + 32))();
        if ((UserProfile.isOnboarded.getter() & 1) == 0)
        {
          (*(v44 + 8))(v46, v45);
          goto LABEL_25;
        }

        v47 = v44;
        v48 = v57;
        UserProfile.socialProfile.getter();
        (*(v47 + 8))(v46, v45);
        v49 = v55;
        v50 = v56;
        if ((*(v55 + 48))(v48, 1, v56) == 1)
        {
          sub_1000095E8(v48, &qword_101186E00, &qword_100EC31E0);
          goto LABEL_25;
        }

        v51 = *(v49 + 32);
        v52 = v54;
        v51(v54, v48, v50);
        v51(v41, v52, v50);
        swift_storeEnumTagMultiPayload();
        v35 = v41;
LABEL_20:
        v34 = 0;
        return (*(v66 + 56))(v35, v34, 1, v28);
      }
    }

    else
    {
      v42 = v61;
    }

    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v43 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

  sub_1000095E8(v30, &unk_1011814D0, &qword_100EC12A0);
LABEL_16:
  v34 = 1;
  v35 = v65;
  return (*(v66 + 56))(v35, v34, 1, v28);
}

uint64_t sub_10083CCC4@<X0>(char *a1@<X8>)
{
  v45 = a1;
  sub_10010FC20(&unk_10118C170, &qword_100EBD778);
  __chkstk_darwin();
  v42 = &v38 - v1;
  v2 = type metadata accessor for Curator();
  v40 = *(v2 - 8);
  v41 = v2;
  __chkstk_darwin();
  v38 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_10118DE80, &unk_100EE4D70);
  __chkstk_darwin();
  v5 = &v38 - v4;
  v6 = type metadata accessor for Genre();
  v43 = *(v6 - 8);
  v44 = v6;
  __chkstk_darwin();
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A4770, &qword_100EBD6E8);
  __chkstk_darwin();
  v9 = &v38 - v8;
  v10 = type metadata accessor for RadioShow();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101186E00, &qword_100EC31E0);
  __chkstk_darwin();
  v15 = &v38 - v14;
  v16 = type metadata accessor for SocialProfile();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Playlist.socialProfile.getter();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v20 = v45;
    sub_1000095E8(v15, &qword_101186E00, &qword_100EC31E0);
    Playlist.radioShow.getter();
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_1000095E8(v9, &qword_1011A4770, &qword_100EBD6E8);
      Playlist.genre.getter();
      v22 = v43;
      v21 = v44;
      if ((*(v43 + 48))(v5, 1, v44) == 1)
      {
        sub_1000095E8(v5, &qword_10118DE80, &unk_100EE4D70);
        v23 = v42;
        Playlist.curator.getter();
        v25 = v40;
        v24 = v41;
        if ((*(v40 + 48))(v23, 1, v41) == 1)
        {
          sub_1000095E8(v23, &unk_10118C170, &qword_100EBD778);
          v26 = type metadata accessor for ContainerDetail.AttributionItem(0);
          return (*(*(v26 - 8) + 56))(v20, 1, 1, v26);
        }

        v36 = *(v25 + 32);
        v37 = v38;
        v36(v38, v23, v24);
        v36(v20, v37, v24);
        v30 = type metadata accessor for ContainerDetail.AttributionItem(0);
      }

      else
      {
        v34 = *(v22 + 32);
        v35 = v39;
        v34(v39, v5, v21);
        v34(v20, v35, v21);
        v30 = type metadata accessor for ContainerDetail.AttributionItem(0);
      }
    }

    else
    {
      v33 = *(v11 + 32);
      v33(v13, v9, v10);
      v33(v20, v13, v10);
      v30 = type metadata accessor for ContainerDetail.AttributionItem(0);
    }

    swift_storeEnumTagMultiPayload();
    v31 = *(*(v30 - 8) + 56);
    v32 = v20;
  }

  else
  {
    v28 = *(v17 + 32);
    v28(v19, v15, v16);
    v29 = v45;
    v28(v45, v19, v16);
    v30 = type metadata accessor for ContainerDetail.AttributionItem(0);
    swift_storeEnumTagMultiPayload();
    v31 = *(*(v30 - 8) + 56);
    v32 = v29;
  }

  return v31(v32, 0, 1, v30);
}

BOOL sub_10083D330()
{
  v1 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v10 - v3;
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v6 = v10 - v5;
  if ((*(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching) & 1) == 0)
  {
    v7 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
    swift_beginAccess();
    sub_1000089F8(v0 + v7, v6, &qword_10119A808, &unk_100ED91D0);
    if ((*(v2 + 48))(v6, 1, v1))
    {
      sub_1000095E8(v6, &qword_10119A808, &unk_100ED91D0);
    }

    else
    {
      (*(v2 + 16))(v4, v6, v1);
      sub_1000095E8(v6, &qword_10119A808, &unk_100ED91D0);
      sub_100020674(&unk_101186ED0, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      (*(v2 + 8))(v4, v1);
      if (v10[1] == v10[4])
      {
        v8 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_temporaryTracks;
        swift_beginAccess();
        return *(*(v0 + v8) + 16) == 0;
      }
    }
  }

  return 0;
}

uint64_t sub_10083D5A8()
{
  v1 = v0;
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v165 = &v138 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v164 = &v138 - v3;
  sub_10010FC20(&unk_1011A4760, &qword_100ED6BD8);
  __chkstk_darwin();
  v167 = &v138 - v4;
  sub_10010FC20(&qword_1011831D0, &unk_100EC4CD0);
  __chkstk_darwin();
  v6 = &v138 - v5;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v8 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v10 = &v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v12 = &v138 - v11;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v14 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v16 = &v138 - v15;
  sub_10010FC20(&unk_10119F000, &qword_100EC31D0);
  __chkstk_darwin();
  v18 = &v138 - v17;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v20 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  v32 = &v138 - v31;
  if (!*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___headerConfiguration))
  {
    v142 = v27;
    v143 = v26;
    v140 = v25;
    v163 = v16;
    v144 = v24;
    v145 = v23;
    v146 = v22;
    v147 = v10;
    v158 = v21;
    v159 = v8;
    v139 = v30;
    v149 = v29;
    v151 = v28;
    v160 = v18;
    v156 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___headerConfiguration;
    v161 = v12;
    v162 = v6;
    v34 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
    swift_beginAccess();
    sub_1000089F8(v1 + v34, v32, &unk_1011814D0, &qword_100EC12A0);
    v35 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v1 + v35, &v168, &unk_1011926C0, &unk_100ECF870);
    v157 = v1;
    v153 = v20;
    if (v169)
    {
      sub_1000095E8(&v168, &unk_1011926C0, &unk_100ECF870);
      v152 = 2;
      v36 = v14;
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v168, &unk_1011926C0, &unk_100ECF870);
      v36 = v14;
      if (Strong)
      {
        v38 = sub_10069F9B8();

        v39 = v38[5];
        v40 = v38[6];
        v41 = v38[7];
        sub_1004E5DB4(v39, v40, v41);

        if ((v40 - 1) >= 2)
        {
          sub_1004E5DFC(v39, v40, v41);
          v42 = (v39 & 1) == 0;
        }

        else
        {
          v42 = 2;
        }

        v152 = v42;
        v1 = v157;
      }

      else
      {
        v152 = 2;
      }
    }

    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v148 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_canPerformSing);
    v44 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1000089F8(v1 + v35, &v168, &unk_1011926C0, &unk_100ECF870);
    v154 = v44;
    v166 = v45;
    v155 = v43;
    if (v169)
    {

      sub_1000095E8(&v168, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      v46 = swift_unknownObjectWeakLoadStrong();

      sub_1000095E8(&v168, &unk_1011926C0, &unk_100ECF870);
      if (v46)
      {
        v47 = sub_1006A6078();

        v48 = *&v47[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics];
        v49 = *&v47[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 16];
        v50 = v47[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 26] << 16;

        v51 = v50 == 0x20000;
        goto LABEL_16;
      }
    }

    v51 = 1;
    v48 = 0.0;
    v49 = 0.0;
LABEL_16:
    v52 = v163;
    sub_1000089F8(v1 + v35, &v168, &unk_1011926C0, &unk_100ECF870);
    if (v169)
    {
      sub_1000095E8(&v168, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      v53 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v168, &unk_1011926C0, &unk_100ECF870);
      if (v53)
      {
        v54 = sub_1006A6078();

        [v54 adjustedContentInset];
        v56 = v55;

        goto LABEL_21;
      }
    }

    v56 = 0;
LABEL_21:
    _s7MetricsCMa(0);
    v57 = swift_allocObject();
    ObservationRegistrar.init()();
    v58 = 0.0;
    if (v51)
    {
      v59 = 0.0;
    }

    else
    {
      v59 = v48;
    }

    if (!v51)
    {
      v58 = v49;
    }

    *(v57 + 16) = v59;
    *(v57 + 24) = v58;
    v150 = v57;
    *(v57 + 32) = v56;
    if (*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_needsToResolveArtwork) != 1)
    {
      v60 = v142;
      sub_1000089F8(v32, v142, &unk_1011814D0, &qword_100EC12A0);
      v61 = type metadata accessor for Playlist();
      v62 = *(v61 - 8);
      if ((*(v62 + 48))(v60, 1, v61) != 1)
      {
        Playlist.artworkViewModel.getter(v52);
        (*(v62 + 8))(v60, v61);
LABEL_31:
        v64 = v143;
        sub_1000089F8(v32, v143, &unk_1011814D0, &qword_100EC12A0);
        v65 = type metadata accessor for Playlist();
        v66 = *(v65 - 8);
        v67 = *(v66 + 48);
        if (v67(v64, 1, v65) == 1)
        {
          sub_1000095E8(v64, &unk_1011814D0, &qword_100EC12A0);
          v68 = type metadata accessor for Playlist.Variant();
          (*(*(v68 - 8) + 56))(v36, 1, 1, v68);
        }

        else
        {
          Playlist.variant.getter();
          (*(v66 + 8))(v64, v65);
        }

        v69 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
        (*(*(v69 - 8) + 56))(v36, 0, 11, v69);
        v70 = Corner.large.unsafeMutableAddressor();
        v71 = *v70;
        v72 = v70[1];
        v73 = *(v70 + 16);
        ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0, 1, 0, 1, 0, 1, 2, &v168);
        v74 = v160;
        ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v163, v36, 0, 1, &v168, v71, v72, v73, v160);
        v75 = type metadata accessor for ArtworkImage.Info(0);
        v76 = *(v75 - 8);
        v77 = *(v76 + 56);
        v143 = v75;
        v142 = v77;
        v141 = v76 + 56;
        v77(v74, 0, 1);
        v78 = v140;
        sub_1000089F8(v32, v140, &unk_1011814D0, &qword_100EC12A0);
        if (v67(v78, 1, v65) == 1)
        {
          sub_1000095E8(v78, &unk_1011814D0, &qword_100EC12A0);
          v79 = type metadata accessor for Artwork();
          (*(*(v79 - 8) + 56))(v161, 1, 1, v79);
        }

        else
        {
          Playlist.staticDetailTallArtwork.getter();
          (*(v66 + 8))(v78, v65);
        }

        v80 = v145;
        v81 = v144;
        sub_1000089F8(v32, v144, &unk_1011814D0, &qword_100EC12A0);
        v82 = v67(v81, 1, v65);
        v83 = v165;
        if (v82 == 1)
        {
          sub_1000095E8(v81, &unk_1011814D0, &qword_100EC12A0);
        }

        else
        {
          v84 = EditorialVideoArtworkVending.editorialVideoArtworks.getter();
          (*(v66 + 8))(v81, v65);
          if (v84)
          {
            goto LABEL_41;
          }
        }

        v84 = sub_10010BDB8(_swiftEmptyArrayStorage);

LABEL_41:
        sub_1000089F8(v32, v80, &unk_1011814D0, &qword_100EC12A0);
        v85 = v67(v80, 1, v65);
        v147 = v84;
        if (v85 == 1)
        {
          sub_1000095E8(v80, &unk_1011814D0, &qword_100EC12A0);
          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          v145 = String.init(localized:table:bundle:locale:comment:)();
          v144 = v86;
        }

        else
        {
          v145 = Playlist.name.getter();
          v144 = v87;
          (*(v66 + 8))(v80, v65);
        }

        v163 = v66;
        v88 = v146;
        sub_1000089F8(v32, v146, &unk_1011814D0, &qword_100EC12A0);
        if (v67(v88, 1, v65) == 1)
        {
          sub_1000095E8(v88, &unk_1011814D0, &qword_100EC12A0);
          v89 = 1;
          v90 = v162;
        }

        else
        {
          v90 = v162;
          Playlist.favoriteStatus.getter();
          (*(v163 + 8))(v88, v65);
          v89 = 0;
        }

        v91 = v83;
        v92 = type metadata accessor for MusicFavoriteStatus();
        v93 = *(v92 - 8);
        v146 = *(v93 + 56);
        v140 = v93 + 56;
        v146(v90, v89, 1, v92);
        v94 = v158;
        sub_1000089F8(v32, v158, &unk_1011814D0, &qword_100EC12A0);
        if (v67(v94, 1, v65) == 1)
        {
          sub_1000095E8(v94, &unk_1011814D0, &qword_100EC12A0);
          v95 = v153;
          v96 = v164;
        }

        else
        {
          v159 = Playlist.curatorName.getter();
          v98 = v97;
          (*(v163 + 8))(v94, v65);
          v95 = v153;
          v96 = v164;
          v158 = v98;
          if (v98)
          {
            goto LABEL_53;
          }
        }

        v99 = v139;
        sub_1000089F8(v32, v139, &unk_1011814D0, &qword_100EC12A0);
        if (v67(v99, 1, v65) == 1)
        {
          sub_1000095E8(v99, &unk_1011814D0, &qword_100EC12A0);

LABEL_54:
          v159 = 0;
          v158 = 0;
          v102 = 255;
LABEL_55:
          LODWORD(v164) = v102;
          v103 = v149;
          sub_1000089F8(v32, v149, &unk_1011814D0, &qword_100EC12A0);
          if (v67(v103, 1, v65) == 1)
          {
            sub_1000095E8(v103, &unk_1011814D0, &qword_100EC12A0);
          }

          else
          {
            Playlist.lastModifiedDate.getter();
            (*(v163 + 8))(v103, v65);
            sub_10003D17C(v96, v91, &qword_101188C20, &qword_100EC2030);
            v104 = type metadata accessor for Date();
            v105 = *(v104 - 8);
            if ((*(v105 + 48))(v91, 1, v104) != 1)
            {
              v107 = v95;
              v108 = v167;
              (*(v105 + 32))(v167, v91, v104);
              v109 = _s8MetadataV13ConfigurationOMa(0);
              swift_storeEnumTagMultiPayload();
              v110 = v108;
              v95 = v107;
              (*(*(v109 - 8) + 56))(v110, 0, 1, v109);
LABEL_60:
              v111 = v151;
              sub_1000089F8(v32, v151, &unk_1011814D0, &qword_100EC12A0);
              if (v67(v111, 1, v65) == 1)
              {
                sub_1000095E8(v111, &unk_1011814D0, &qword_100EC12A0);
              }

              else
              {
                v112 = sub_1005F7078();
                v114 = v113;
                (*(v163 + 8))(v111, v65);
                if (v114)
                {
                  goto LABEL_64;
                }
              }

              v112 = 0;
              v114 = 0xE000000000000000;
LABEL_64:
              v165 = v112;
              v151 = v114;
              if (v148)
              {
                sub_1000089F8(v32, v95, &unk_1011814D0, &qword_100EC12A0);
                v115 = v67(v95, 1, v65);

                if (v115 != 1)
                {
                  v137 = Playlist.supportsSing.getter();
                  (*(v163 + 8))(v95, v65);
                  v116 = &off_101099350;
                  if (v137 != 2 && (v137 & 1) != 0)
                  {
                    v116 = &off_101099328;
                  }

                  goto LABEL_69;
                }

                sub_1000095E8(v95, &unk_1011814D0, &qword_100EC12A0);
              }

              else
              {
              }

              v116 = &off_101099350;
LABEL_69:
              v163 = sub_10010E594(v116);
              _s13ConfigurationCMa(0);
              v33 = swift_allocObject();
              v117 = OBJC_IVAR____TtCV5Music6Header13Configuration__artworkInfo;
              v142(v33 + OBJC_IVAR____TtCV5Music6Header13Configuration__artworkInfo, 1, 1, v143);
              v118 = OBJC_IVAR____TtCV5Music6Header13Configuration__tallArtwork;
              v119 = type metadata accessor for Artwork();
              (*(*(v119 - 8) + 56))(v33 + v118, 1, 1, v119);
              v120 = OBJC_IVAR____TtCV5Music6Header13Configuration__favoriteStatus;
              v146(v33 + OBJC_IVAR____TtCV5Music6Header13Configuration__favoriteStatus, 1, 1, v92);
              v121 = v33 + OBJC_IVAR____TtCV5Music6Header13Configuration__attribution;
              *v121 = 0;
              *(v121 + 8) = 0;
              *(v121 + 16) = -1;
              v122 = (v33 + OBJC_IVAR____TtCV5Music6Header13Configuration__artworkAction);
              *v122 = 0;
              v122[1] = 0;
              v123 = OBJC_IVAR____TtCV5Music6Header13Configuration__metadata;
              v153 = OBJC_IVAR____TtCV5Music6Header13Configuration__metadata;
              v124 = _s8MetadataV13ConfigurationOMa(0);
              (*(*(v124 - 8) + 56))(v33 + v123, 1, 1, v124);
              v125 = (v33 + OBJC_IVAR____TtCV5Music6Header13Configuration__description);
              *v125 = 0u;
              *(v125 + 1) = 0u;
              v126 = (v33 + OBJC_IVAR____TtCV5Music6Header13Configuration__playbackIntentProvider);
              *v126 = 0;
              v126[1] = 0;
              *(v33 + OBJC_IVAR____TtCV5Music6Header13Configuration__shouldIncludeFloatingArtwork) = 0;
              *(v33 + OBJC_IVAR____TtCV5Music6Header13Configuration__hidePlaybackControls) = 0;
              *(v33 + OBJC_IVAR____TtCV5Music6Header13Configuration__disableAttribution) = 0;
              *(v33 + OBJC_IVAR____TtCV5Music6Header13Configuration__hideTitleContainer) = 0;
              ObservationRegistrar.init()();

              sub_1000095E8(v32, &unk_1011814D0, &qword_100EC12A0);
              *(v33 + 16) = v152;
              sub_1000095E8(v33 + v117, &unk_10119F000, &qword_100EC31D0);
              sub_10003D17C(v160, v33 + v117, &unk_10119F000, &qword_100EC31D0);
              sub_1000095E8(v33 + v118, &unk_101188920, &qword_100EBCC50);
              sub_10003D17C(v161, v33 + v118, &unk_101188920, &qword_100EBCC50);
              *(v33 + OBJC_IVAR____TtCV5Music6Header13Configuration__videoArtworks) = v147;
              v127 = (v33 + OBJC_IVAR____TtCV5Music6Header13Configuration__title);
              v128 = v144;
              *v127 = v145;
              v127[1] = v128;
              sub_1000095E8(v33 + v120, &qword_1011831D0, &unk_100EC4CD0);
              sub_10003D17C(v162, v33 + v120, &qword_1011831D0, &unk_100EC4CD0);
              sub_1005F9490(*v121, *(v121 + 8), *(v121 + 16));
              v129 = v158;
              *v121 = v159;
              *(v121 + 8) = v129;
              *(v121 + 16) = v164;
              v130 = (v33 + OBJC_IVAR____TtCV5Music6Header13Configuration__attributionAction);
              v131 = v154;
              *v130 = sub_1008698E4;
              v130[1] = v131;
              sub_100020438(*v122, v122[1]);
              *v122 = 0;
              v122[1] = 0;
              v132 = v153;
              sub_1000095E8(v33 + v153, &unk_1011A4760, &qword_100ED6BD8);
              sub_10003D17C(v167, v33 + v132, &unk_1011A4760, &qword_100ED6BD8);
              sub_1004E5E90(*v125, v125[1], v125[2], v125[3]);
              v133 = v166;
              v134 = v151;
              *v125 = v165;
              v125[1] = v134;
              v125[2] = sub_1008698EC;
              v125[3] = v133;
              sub_100020438(*v126, v126[1]);
              v135 = v155;
              *v126 = &unk_100EE4D00;
              v126[1] = v135;
              *(v33 + OBJC_IVAR____TtCV5Music6Header13Configuration__playIntentButtonIntents) = v163;
              *(v33 + OBJC_IVAR____TtCV5Music6Header13Configuration__metrics) = v150;

              *(v157 + v156) = v33;

              goto LABEL_70;
            }
          }

          v106 = _s8MetadataV13ConfigurationOMa(0);
          (*(*(v106 - 8) + 56))(v167, 1, 1, v106);
          goto LABEL_60;
        }

        v159 = sub_10034E2C4();
        v101 = v100;
        (*(v163 + 8))(v99, v65);

        v158 = v101;
        if (!v101)
        {
          goto LABEL_54;
        }

LABEL_53:
        v102 = 1;
        goto LABEL_55;
      }

      sub_1000095E8(v60, &unk_1011814D0, &qword_100EC12A0);
    }

    v63 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v63 - 8) + 56))(v52, 1, 1, v63);
    goto LABEL_31;
  }

  v33 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___headerConfiguration);
LABEL_70:

  return v33;
}

uint64_t sub_10083EE34(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 64) = a2;
  *(v3 + 40) = a1;
  *(v3 + 48) = a3;
  type metadata accessor for MainActor();
  *(v3 + 56) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10083EED0, v5, v4);
}

uint64_t sub_10083EED0()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_10083F828(*(v0 + 64), *(v0 + 40));
  }

  else
  {
    v3 = *(v0 + 40);
    v4 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  }

  v5 = *(v0 + 8);

  return v5();
}

void *sub_10083EFA8(uint64_t a1)
{
  v1 = type metadata accessor for ContainerDetail.AttributionItem(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v5 = v19 - v4 + 16;
  sub_10010FC20(&qword_101192860, &unk_100ECFB60);
  __chkstk_darwin();
  v7 = v19 - v6 + 16;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_10083C114(v7);

    if ((*(v2 + 48))(v7, 1, v1) == 1)
    {
      return sub_1000095E8(v7, &qword_101192860, &unk_100ECFB60);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(v11 + v12, v19, &unk_1011926C0, &unk_100ECF870);
      if (v19[8] == 1)
      {

        sub_1000095E8(v19, &unk_1011926C0, &unk_100ECF870);
      }

      else
      {
        v13 = swift_unknownObjectWeakLoadStrong();

        sub_1000095E8(v19, &unk_1011926C0, &unk_100ECF870);
        if (v13)
        {
          v14 = sub_10003169C();

          goto LABEL_10;
        }
      }
    }

    v14 = 0;
LABEL_10:
    if (sub_10069BD04())
    {
      if (!v14)
      {
        return sub_100867794(v7, type metadata accessor for ContainerDetail.AttributionItem);
      }

      v15 = type metadata accessor for TaskPriority();
      (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
      sub_10086772C(v7, (v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16), type metadata accessor for ContainerDetail.AttributionItem);
      v16 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = 0;
      *(v17 + 24) = 0;
      sub_100869470((v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16), v17 + v16, type metadata accessor for ContainerDetail.AttributionItem);
      *(v17 + ((v3 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
      sub_1001F4CB8(0, 0, v5, &unk_100EE4D10, v17);
    }

    return sub_100867794(v7, type metadata accessor for ContainerDetail.AttributionItem);
  }

  return result;
}

void sub_10083F350(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

uint64_t sub_10083F3AC()
{
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v2 = &v16 - v1;
  v3 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___searchHeaderConfiguration;
  if (!*(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___searchHeaderConfiguration))
  {
    v5 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
    swift_beginAccess();
    sub_1000089F8(v0 + v5, v2, &unk_1011814D0, &qword_100EC12A0);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v0 + v7, v19, &unk_1011926C0, &unk_100ECF870);
    if (BYTE8(v19[0]))
    {

      sub_1000095E8(v19, &unk_1011926C0, &unk_100ECF870);
      Strong = 0;
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();

      sub_1000095E8(v19, &unk_1011926C0, &unk_100ECF870);
      if (Strong)
      {
        v9 = sub_1006A6078();

        v10 = *&v9[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics];
        v17 = *&v9[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 16];
        v18 = v10;
        v16 = *&v9[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 32];
        Strong = *&v9[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 48];
        v11 = v9[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

        v13 = v16;
        v12 = v17;
        v14 = v18;
LABEL_8:
        v19[0] = v14;
        v19[1] = v12;
        v19[2] = v13;
        v20 = Strong;
        v21 = v11;
        v4 = sub_100452D54(v2, &unk_100EE4CF0, v6, v19);

        *(v0 + v3) = v4;

        goto LABEL_9;
      }
    }

    v11 = 0;
    v12 = xmmword_100EE4610;
    v14 = 0uLL;
    v13 = 0uLL;
    goto LABEL_8;
  }

  v4 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___searchHeaderConfiguration);
LABEL_9:

  return v4;
}

uint64_t sub_10083F60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a1;
  v3[6] = a3;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  v3[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[8] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10083F6DC, v5, v4);
}

uint64_t sub_10083F6DC()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[7];
    v4 = v0[5];
    v5 = type metadata accessor for IndexPath();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    sub_100854C74(v3, v4);

    sub_1000095E8(v3, &unk_10118BCE0, &qword_100EC6450);
  }

  else
  {
    v6 = v0[5];
    v7 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_10083F828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = a1;
  v91 = a2;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v90 = &v75 - v5;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v92 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v88 = &v75 - v7;
  __chkstk_darwin();
  v95 = &v75 - v8;
  type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin();
  v89 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Playlist();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v77 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v75 - v13;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v86 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v76 = &v75 - v16;
  __chkstk_darwin();
  v18 = &v75 - v17;
  __chkstk_darwin();
  v20 = &v75 - v19;
  v21 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  v96 = v21;
  sub_1000089F8(v3 + v21, v20, &unk_1011814D0, &qword_100EC12A0);
  v22 = *(v11 + 48);
  v23 = v22(v20, 1, v10);
  v94 = v3;
  v87 = v11;
  v93 = v22;
  v78 = v10;
  if (v23)
  {
    sub_1000095E8(v20, &unk_1011814D0, &qword_100EC12A0);
  }

  else
  {
    (*(v11 + 16))(v14, v20, v10);
    sub_1000095E8(v20, &unk_1011814D0, &qword_100EC12A0);
    v24 = Playlist.catalogID.getter();
    v26 = v25;
    (*(v11 + 8))(v14, v10);
    if (v26)
    {
      v84 = v24;
      v85 = v26;
      goto LABEL_8;
    }
  }

  sub_1000089F8(v3 + v96, v18, &unk_1011814D0, &qword_100EC12A0);
  if (v22(v18, 1, v10))
  {
    sub_1000095E8(v18, &unk_1011814D0, &qword_100EC12A0);
    v84 = 0;
    v85 = 0xE000000000000000;
  }

  else
  {
    v27 = v77;
    (*(v11 + 16))(v77, v18, v10);
    sub_1000095E8(v18, &unk_1011814D0, &qword_100EC12A0);
    v84 = Playlist.id.getter();
    v85 = v28;
    (*(v11 + 8))(v27, v10);
  }

LABEL_8:
  v29 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v82 = SymbolButton.Intent.actionType.getter(v4);
  v30 = type metadata accessor for URL();
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  v32(v95, 1, 1, v30);
  sub_10010FC20(&unk_1011927C0, &unk_100ED6A50);
  v33 = swift_allocObject();
  v79 = xmmword_100EBC6B0;
  *(v33 + 16) = xmmword_100EBC6B0;
  v83 = v29;
  v34 = v94;
  v35 = sub_10085A8A8();
  v81 = v33;
  *(v33 + 32) = v35;
  v36 = sub_10010FC20(&qword_101190BE0, &qword_100EC1580);
  inited = swift_initStackObject();
  *(inited + 32) = 1684957547;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0x7473696C79616C70;
  *(inited + 56) = 0xE800000000000000;
  *(inited + 64) = 0x6570795479616C70;
  v38 = 7105633;
  if (v4 == 1)
  {
    v38 = 0x41656C6666756873;
  }

  v39 = 0xE300000000000000;
  if (v4 == 1)
  {
    v39 = 0xEA00000000006C6CLL;
  }

  *(inited + 16) = xmmword_100EBDC20;
  *(inited + 72) = 0xE800000000000000;
  *(inited + 80) = v38;
  *(inited + 88) = v39;
  v80 = sub_10010C578(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_101183AA0, &unk_100ECAF50);
  swift_arrayDestroy();
  v40 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sourceURL;
  swift_beginAccess();
  v41 = v34 + v40;
  v42 = v92;
  sub_1000089F8(v41, v92, &qword_101183A20, &unk_100EBCF80);
  v43 = *(v31 + 48);
  if (v43(v42, 1, v30) == 1)
  {
    v75 = v36;
    v44 = v32;
    v45 = v76;
    sub_1000089F8(v34 + v96, v76, &unk_1011814D0, &qword_100EC12A0);
    v46 = v78;
    if (v93(v45, 1, v78))
    {
      sub_1000095E8(v45, &unk_1011814D0, &qword_100EC12A0);
      v47 = v88;
      v44(v88, 1, 1, v30);
      v48 = v87;
    }

    else
    {
      v48 = v87;
      v52 = v77;
      (*(v87 + 16))(v77, v45, v46);
      sub_1000095E8(v45, &unk_1011814D0, &qword_100EC12A0);
      v47 = v88;
      Playlist.url.getter();
      v53 = v52;
      v42 = v92;
      (*(v48 + 8))(v53, v46);
    }

    v54 = v43(v42, 1, v30);
    v51 = v94;
    if (v54 != 1)
    {
      sub_1000095E8(v42, &qword_101183A20, &unk_100EBCF80);
    }
  }

  else
  {
    v49 = v42;
    v50 = v88;
    (*(v31 + 32))(v88, v49, v30);
    v47 = v50;
    v32(v50, 0, 1, v30);
    v51 = v34;
    v48 = v87;
    v46 = v78;
  }

  v55 = swift_initStackObject();
  *(v55 + 16) = v79;
  strcpy((v55 + 32), "Playlist Name");
  *(v55 + 46) = -4864;
  v56 = v86;
  sub_1000089F8(v51 + v96, v86, &unk_1011814D0, &qword_100EC12A0);
  if (v93(v56, 1, v46))
  {
    sub_1000095E8(v56, &unk_1011814D0, &qword_100EC12A0);
    v57 = 0;
    v58 = 0xE000000000000000;
  }

  else
  {
    v59 = v77;
    (*(v48 + 16))(v77, v56, v46);
    sub_1000095E8(v56, &unk_1011814D0, &qword_100EC12A0);
    v57 = Playlist.name.getter();
    v58 = v60;
    (*(v48 + 8))(v59, v46);
  }

  *(v55 + 48) = v57;
  *(v55 + 56) = v58;
  v61 = sub_10010C578(v55);
  swift_setDeallocating();
  sub_1000095E8(v55 + 32, &qword_101183AA0, &unk_100ECAF50);
  v62 = v89;
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)(v84, v85, 18, v82, v95, v81, 0, 0, v89, v80, 0, 768, v84, v85, 0x7473696C79616C50, 0xE800000000000000, v47, v61, 1, 2, 0, 0, 0);

  v63 = sub_10053771C();
  v65 = v64;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v66 = qword_101218AD0;
  v67 = GroupActivitiesManager.hasJoined.getter();
  v68 = GroupActivitiesManager.participantsCount.getter();
  v69 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  v70 = *(v66 + v69);
  v71 = v83;
  (*((swift_isaMask & *v83) + 0xB8))(v62, v63, v65, v67 & 1, v68, v70);

  sub_100867794(v62, type metadata accessor for MetricsEvent.Click);
  v72 = type metadata accessor for IndexPath();
  v73 = v90;
  (*(*(v72 - 8) + 56))(v90, 1, 1, v72);
  sub_100854C74(v73, v91);
  return sub_1000095E8(v73, &unk_10118BCE0, &qword_100EC6450);
}

uint64_t sub_100840468()
{
  v1 = v0;
  sub_10010FC20(&qword_101192860, &unk_100ECFB60);
  __chkstk_darwin();
  v58 = &v50 - v2;
  sub_10010FC20(&qword_1011831D0, &unk_100EC4CD0);
  __chkstk_darwin();
  v59 = &v50 - v3;
  v54 = type metadata accessor for Playlist.EditableComponents();
  v53 = *(v54 - 8);
  __chkstk_darwin();
  v50 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Playlist();
  v60 = *(v5 - 8);
  v61 = v5;
  __chkstk_darwin();
  v55 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v51 = &v50 - v7;
  sub_10010FC20(&unk_10118D240, &unk_100EC8F50);
  __chkstk_darwin();
  v52 = &v50 - v8;
  v9 = type metadata accessor for MusicPropertySource();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v50 - v13;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v50 - v17;
  __chkstk_darwin();
  v57 = &v50 - v19;
  v56 = sub_10083D5A8();
  v20 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
  swift_beginAccess();
  v21 = *(v10 + 16);
  v21(v14, v1 + v20, v9);
  v22 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_initialSource;
  swift_beginAccess();
  v21(v12, v1 + v22, v9);
  sub_100866F00(&qword_10119A868, &type metadata accessor for MusicPropertySource, &protocol conformance descriptor for MusicPropertySource);
  LOBYTE(v22) = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v10 + 8);
  v23(v12, v9);
  v23(v14, v9);
  if (v22)
  {
    goto LABEL_7;
  }

  v24 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v1 + v24, v18, &unk_1011814D0, &qword_100EC12A0);
  v26 = v60;
  v25 = v61;
  if ((*(v60 + 48))(v18, 1, v61))
  {
    v27 = &unk_1011814D0;
    v28 = &qword_100EC12A0;
LABEL_6:
    sub_1000095E8(v18, v27, v28);
LABEL_7:
    v32 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
    goto LABEL_8;
  }

  v29 = v51;
  (*(v26 + 16))(v51, v18, v25);
  sub_1000095E8(v18, &unk_1011814D0, &qword_100EC12A0);
  v18 = v52;
  Playlist.editableComponents.getter();
  (*(v26 + 8))(v29, v25);
  v30 = v53;
  v31 = v54;
  if ((*(v53 + 48))(v18, 1, v54) == 1)
  {
    v27 = &unk_10118D240;
    v28 = &unk_100EC8F50;
    goto LABEL_6;
  }

  v47 = v50;
  static Playlist.EditableComponents.metadata.getter();
  sub_100866F00(&qword_10119EF60, &type metadata accessor for Playlist.EditableComponents, &protocol conformance descriptor for Playlist.EditableComponents);
  v48 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v49 = *(v30 + 8);
  v49(v47, v31);
  v49(v18, v31);
  if (v48)
  {
    goto LABEL_7;
  }

  v32 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogPlaylist;
LABEL_8:
  v33 = v1 + v32;
  swift_beginAccess();
  v34 = v57;
  sub_1000089F8(v33, v57, &unk_1011814D0, &qword_100EC12A0);
  v35 = sub_10082C800();
  v36 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v1 + v36, v16, &unk_1011814D0, &qword_100EC12A0);
  v38 = v60;
  v37 = v61;
  if ((*(v60 + 48))(v16, 1, v61))
  {
    sub_1000095E8(v16, &unk_1011814D0, &qword_100EC12A0);
    v39 = 1;
    v40 = v59;
  }

  else
  {
    v41 = v55;
    (*(v38 + 16))(v55, v16, v37);
    sub_1000095E8(v16, &unk_1011814D0, &qword_100EC12A0);
    v40 = v59;
    Playlist.favoriteStatus.getter();
    (*(v38 + 8))(v41, v37);
    v39 = 0;
  }

  v42 = type metadata accessor for MusicFavoriteStatus();
  (*(*(v42 - 8) + 56))(v40, v39, 1, v42);
  v43 = v58;
  sub_10083C114(v58);
  v44 = type metadata accessor for ContainerDetail.AttributionItem(0);
  v45 = (*(*(v44 - 8) + 48))(v43, 1, v44) == 1;
  sub_1000095E8(v43, &qword_101192860, &unk_100ECFB60);
  sub_1005F72A0(v34, v35, 0, 0, v40, v45, *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_canPerformSing));

  sub_1000095E8(v40, &qword_1011831D0, &unk_100EC4CD0);
  return sub_1000095E8(v34, &unk_1011814D0, &qword_100EC12A0);
}

double sub_100840D04()
{
  v1 = v0;
  v2 = sub_10083D5A8();
  swift_getKeyPath();
  v19 = v2;
  sub_100866F00(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + OBJC_IVAR____TtCV5Music6Header13Configuration__description);
  v3 = *(v2 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 8);
  v5 = *(v2 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 16);
  v6 = *(v2 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 24);
  sub_1004E5E44(v4, v3, v5, v6);

  if (v3)
  {

    sub_1004E5E90(v4, v3, v5, v6);
    v8 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v1 + v8, &v20, &unk_1011926C0, &unk_100ECF870);
    if (v21)
    {

      sub_1000095E8(&v20, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v20, &unk_1011926C0, &unk_100ECF870);
      if (Strong)
      {
        v10 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___headerConfiguration);
        swift_getKeyPath();
        v20 = v10;

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v11 = *(v10 + OBJC_IVAR____TtCV5Music6Header13Configuration__title);
        v12 = *(v10 + OBJC_IVAR____TtCV5Music6Header13Configuration__title + 8);

        v13 = type metadata accessor for DescriptionModal();
        v14 = objc_allocWithZone(v13);
        v15 = objc_allocWithZone(type metadata accessor for DescriptionModal.Content());
        v16 = sub_100702394(v11, v12, v4, v3);
        v18.receiver = v14;
        v18.super_class = v13;
        v17 = objc_msgSendSuper2(&v18, "initWithRootViewController:", v16);

        [Strong presentViewController:v17 animated:1 completion:0];
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_100840F90()
{
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v2 = v15 - v1;
  v3 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v15 - v5;
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v8 = v15 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState);
  if (v9 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL && (v9 >> 62 == 3 || (v9))
  {
    return 2;
  }

  if (*(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching) != 1)
  {
    v11 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
    swift_beginAccess();
    sub_1000089F8(v0 + v11, v2, &unk_1011814D0, &qword_100EC12A0);
    v12 = type metadata accessor for Playlist();
    v13 = (*(*(v12 - 8) + 48))(v2, 1, v12) == 1;
    sub_1000095E8(v2, &unk_1011814D0, &qword_100EC12A0);
    return (2 * v13);
  }

  v10 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
  swift_beginAccess();
  sub_1000089F8(v0 + v10, v8, &qword_10119A808, &unk_100ED91D0);
  if ((*(v4 + 48))(v8, 1, v3))
  {
    sub_1000095E8(v8, &qword_10119A808, &unk_100ED91D0);
  }

  else
  {
    (*(v4 + 16))(v6, v8, v3);
    sub_1000095E8(v8, &qword_10119A808, &unk_100ED91D0);
    sub_100020674(&unk_101186ED0, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    (*(v4 + 8))(v6, v3);
    if (v15[2] == v15[1])
    {
      return 2;
    }
  }

  return 1;
}

void sub_1008412FC()
{
  v1 = v0;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v3 = &v23[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v23[-v4];
  v6 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v0 + v6, &v27, &unk_1011926C0, &unk_100ECF870);
  if (BYTE8(v27))
  {
    goto LABEL_2;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v27, &unk_1011926C0, &unk_100ECF870);
  if (Strong)
  {
    v10 = sub_10069F9B8();

    v12 = v10[5];
    v11 = v10[6];
    v13 = v10[7];
    sub_1004E5DB4(v12, v11, v13);

    if ((v11 - 1) >= 2)
    {

      v14 = sub_100840F90();
      if (v14 != 2 && (v14 & 1) == 0)
      {
        sub_1000089F8(v1 + v6, &v27, &unk_1011926C0, &unk_100ECF870);
        if (BYTE8(v27))
        {
LABEL_2:
          v7 = &unk_1011926C0;
          v8 = &unk_100ECF870;
LABEL_3:
          sub_1000095E8(&v27, v7, v8);
          return;
        }

        v15 = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(&v27, &unk_1011926C0, &unk_100ECF870);
        if (v15)
        {
          sub_10069F9B8();

          v16 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogPlaylist;
          swift_beginAccess();
          sub_1000089F8(v1 + v16, v5, &unk_1011814D0, &qword_100EC12A0);
          v17 = type metadata accessor for Playlist();
          v18 = *(v17 - 8);
          v19 = *(v18 + 48);
          if (v19(v5, 1, v17) == 1)
          {
            sub_1000095E8(v5, &unk_1011814D0, &qword_100EC12A0);
            v24 = 0u;
            v25 = 0u;
            v26 = 0;
            v20 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
            swift_beginAccess();
            sub_1000089F8(v1 + v20, v3, &unk_1011814D0, &qword_100EC12A0);
            if (v19(v3, 1, v17) == 1)
            {
              sub_1000095E8(v3, &unk_1011814D0, &qword_100EC12A0);
              v27 = 0u;
              v28 = 0u;
              v29 = 0;
            }

            else
            {
              *(&v28 + 1) = v17;
              v29 = &off_1010B2320;
              v22 = sub_10001C8B8(&v27);
              (*(v18 + 32))(v22, v3, v17);
            }

            if (*(&v25 + 1))
            {
              sub_1000095E8(&v24, &unk_101192850, &qword_100EE4C90);
            }
          }

          else
          {
            *(&v25 + 1) = v17;
            v26 = &off_1010B2320;
            v21 = sub_10001C8B8(&v24);
            (*(v18 + 32))(v21, v5, v17);
            sub_100059A8C(&v24, &v27);
          }

          if (qword_10117F700 != -1)
          {
            swift_once();
          }

          sub_1005588C8(&v27, qword_101218CB8, unk_101218CC0);

          v7 = &unk_101192850;
          v8 = &qword_100EE4C90;
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1004E5DFC(v12, v11, v13);
    }
  }
}

double sub_100841720()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    while (*v3++)
    {
      if (!--v2)
      {
        return result;
      }
    }

    v5 = sub_100840F90();
    if (v5 != 2 && (v5 & 1) != 0)
    {
      v7 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(v0 + v7, v10, &unk_1011926C0, &unk_100ECF870);
      if (v10[8])
      {
        sub_1000095E8(v10, &unk_1011926C0, &unk_100ECF870);
      }

      else
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(v10, &unk_1011926C0, &unk_100ECF870);
        if (Strong)
        {
          sub_10069F9B8();

          sub_1005587C8(v9);
        }
      }
    }
  }

  return result;
}

void *sub_100841824(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v4 = type metadata accessor for Playlist.Entry.InternalItem();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v26 - v8;
  Playlist.Entry.internalItem.getter();
  v10 = Playlist.Entry.InternalItem.id.getter();
  v12 = v11;
  v26 = *(v5 + 8);
  v26(v9, v4);
  v13 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_libraryStateCache;
  swift_beginAccess();
  v14 = *(v2 + v13);
  if (*(v14 + 16) && (, v15 = sub_100019C10(v10, v12), v17 = v16, , (v17 & 1) != 0))
  {
    Strong = *(*(v14 + 56) + 8 * v15);
  }

  else
  {

    v19 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v3 + v19, &v27, &unk_1011926C0, &unk_100ECF870);
    if (v28)
    {
      sub_1000095E8(&v27, &unk_1011926C0, &unk_100ECF870);
      Strong = 0;
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v27, &unk_1011926C0, &unk_100ECF870);
      if (Strong)
      {
        v20 = [Strong traitCollection];
        sub_100137E8C();
        UITraitCollection.subscript.getter();

        type metadata accessor for Playlist.Entry();
        Strong = MusicLibrary.state<A>(for:)();
      }
    }

    Playlist.Entry.internalItem.getter();
    v21 = Playlist.Entry.InternalItem.id.getter();
    v23 = v22;
    v26(v7, v4);
    swift_beginAccess();

    sub_100407E78(v24, v21, v23);
    swift_endAccess();
  }

  return Strong;
}

void sub_100841B1C(void (**a1)(char *, uint64_t, uint64_t, uint64_t, __n128))
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v38 = v35 - v6;
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v35 - v9;
  sub_1000089F8(a1, v35 - v9, &qword_10119A808, &unk_100ED91D0);
  v11 = *(v5 + 48);
  v12 = v11(v10, 1, v4);
  v39 = v5;
  if (v12 == 1)
  {
    sub_1000095E8(v10, &qword_10119A808, &unk_100ED91D0);
    v13 = 2;
  }

  else
  {
    sub_100020674(&unk_101186ED0, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v13 = v45[0] == v44;
    (*(v5 + 8))(v10, v4);
  }

  v14 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
  swift_beginAccess();
  v37 = v11;
  v15 = v11((v2 + v14), 1, v4);
  v16 = &OBJC_IVAR____TtC5Music9TrackData_artworkInfo;
  if (v15)
  {
    if (v13 == 2)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v17 = v38;
    v18 = v39;
    (*(v39 + 16))(v38, v2 + v14, v4);
    sub_100020674(&unk_101186ED0, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v19 = v18;
    v16 = &OBJC_IVAR____TtC5Music9TrackData_artworkInfo;
    (*(v19 + 8))(v17, v4);
    if (v13 != 2 && (((v44 == v40) ^ v13) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v20 = v16[242];
  swift_beginAccess();
  sub_1000089F8(v2 + v20, &v40, &unk_1011926C0, &unk_100ECF870);
  if (v41)
  {
    sub_1000095E8(&v40, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(&v40, &unk_1011926C0, &unk_100ECF870);
    if (Strong)
    {
      Strong[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_includeRelatedContentOnNextReload] = 1;
    }
  }

  v22 = sub_10083D5A8();
  v23 = sub_10083D330();
  if (v23 == *(v22 + OBJC_IVAR____TtCV5Music6Header13Configuration__hidePlaybackControls))
  {
    *(v22 + OBJC_IVAR____TtCV5Music6Header13Configuration__hidePlaybackControls) = v23;
  }

  else
  {
    swift_getKeyPath();
    v36 = a1;
    v35[1] = v35;
    __chkstk_darwin();
    v35[-2] = v22;
    LOBYTE(v35[-1]) = v23;
    v40 = v22;
    sub_100866F00(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    a1 = v36;
  }

  v16 = &OBJC_IVAR____TtC5Music9TrackData_artworkInfo;
  if (*(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching) == 1)
  {
    *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeHeaderOnNextReload) = 1;
    sub_1000089F8(v2 + v20, &v40, &unk_1011926C0, &unk_100ECF870);
    if (v41)
    {
      sub_1000095E8(&v40, &unk_1011926C0, &unk_100ECF870);
      goto LABEL_28;
    }

    v24 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(&v40, &unk_1011926C0, &unk_100ECF870);
    if (v24)
    {
      if (v37(v2 + v14, 1, v4))
      {
        v25 = v24[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_hideFloatingArtwork];
        v24[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_hideFloatingArtwork] = 0;
        v26 = 1.0;
        if ((v25 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v27 = v38;
        v28 = v39;
        (*(v39 + 16))(v38, v2 + v14, v4);
        sub_100020674(&unk_101186ED0, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
        dispatch thunk of Collection.startIndex.getter();
        v16 = &OBJC_IVAR____TtC5Music9TrackData_artworkInfo;
        dispatch thunk of Collection.endIndex.getter();
        (*(v28 + 8))(v27, v4);
        v29 = v40 == v42;
        v30 = v24[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_hideFloatingArtwork];
        v24[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_hideFloatingArtwork] = v29;
        if (v29 == v30)
        {
LABEL_27:

          goto LABEL_28;
        }

        v26 = 1.0;
        if (v29)
        {
          v26 = 0.0;
        }
      }

      [*&v24[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_floatingArtworkContainer] setAlpha:v26];
      goto LABEL_27;
    }
  }

LABEL_28:
  sub_10084931C(a1);
  sub_1000089F8(v2 + v14, v8, &qword_10119A808, &unk_100ED91D0);
  sub_100848148(a1, v8);
  v32 = v31;
  sub_1000095E8(v8, &qword_10119A808, &unk_100ED91D0);
  sub_10083AF5C(v32 & 1);
  sub_100842788();
  v33 = v16[242];
  swift_beginAccess();
  sub_1000089F8(v2 + v33, &v42, &unk_1011926C0, &unk_100ECF870);
  if (v43)
  {
    sub_1000095E8(&v42, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    v34 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(&v42, &unk_1011926C0, &unk_100ECF870);
    if (v34)
    {
      [v34 setNeedsUpdateContentUnavailableConfiguration];
    }
  }
}

void sub_1008422A8()
{
  v1 = v0;
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v3 = &v11[-v2];
  v4 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v4, v11, &unk_1011926C0, &unk_100ECF870);
  if (v11[8])
  {
    sub_1000095E8(v11, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v11, &unk_1011926C0, &unk_100ECF870);
    if (Strong)
    {
      v6 = sub_1006A6078();

      v7 = [v6 hasUncommittedUpdates];
      if (v7)
      {
        *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_postponeStaticEntriesUpdates) = 1;
        return;
      }
    }
  }

  *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_postponeStaticEntriesUpdates) = 0;
  sub_100844A18();
  sub_10084A954();
  v8 = sub_10085411C();
  v9 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearchEnabled);
  *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearchEnabled) = v8 & 1;
  sub_1008549A8(v9);
  v10 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries;
  swift_beginAccess();
  sub_1000089F8(v1 + v10, v3, &qword_10119A808, &unk_100ED91D0);
  sub_100830574(v3);
  sub_1000095E8(v3, &qword_10119A808, &unk_100ED91D0);
}

double sub_100842480(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentEntryID);
  v5 = *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentEntryID);
  v6 = *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentEntryID + 8);
  *v4 = a1;
  v4[1] = a2;
  if (v6)
  {
    if (a2)
    {
      v7 = v5 == a1 && v6 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_11;
      }
    }
  }

  else if (!a2)
  {
    return result;
  }

  sub_100842788();
LABEL_11:

  return result;
}

void sub_100842508()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentEntryID);
  if (*(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentEntryID + 8))
  {
    type metadata accessor for Track();

    v3 = MusicItem.contains(_:)();

    if (v3)
    {
      v4 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(v0 + v4, v14, &unk_1011926C0, &unk_100ECF870);
      if (v15)
      {
        sub_1000095E8(v14, &unk_1011926C0, &unk_100ECF870);
      }

      else
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(v14, &unk_1011926C0, &unk_100ECF870);
        if (Strong)
        {
          Strong[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_hasScrolledToProminentItem] = 0;
        }
      }

      sub_1000089F8(v1 + v4, v14, &unk_1011926C0, &unk_100ECF870);
      if (v15)
      {
        sub_1000095E8(v14, &unk_1011926C0, &unk_100ECF870);
      }

      else
      {
        v13 = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(v14, &unk_1011926C0, &unk_100ECF870);
        if (v13)
        {
          sub_100503D5C();
        }
      }

      return;
    }

    if (v2[1])
    {
      return;
    }
  }

  v5 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v0 + v5, v14, &unk_1011926C0, &unk_100ECF870);
  if (v15)
  {
    sub_1000095E8(v14, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    v6 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v14, &unk_1011926C0, &unk_100ECF870);
    if (v6)
    {
      v6[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_hasScrolledToProminentItem] = 0;
    }
  }

  v8 = Track.id.getter();
  v9 = *v2;
  v10 = v2[1];
  *v2 = v8;
  v2[1] = v7;
  if (!v10 || (v9 == v8 ? (v11 = v10 == v7) : (v11 = 0), !v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    sub_100842788();
  }
}

void sub_100842788()
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v102 = &v86 - v1;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v106 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for Playlist.Entry.InternalItem();
  v100 = *(v101 - 8);
  __chkstk_darwin();
  v107 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Playlist.Entry();
  v110 = *(v6 - 8);
  __chkstk_darwin();
  v98 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v104 = &v86 - v8;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v105 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v86 - v10;
  __chkstk_darwin();
  v13 = &v86 - v12;
  sub_10010FC20(&qword_101191570, &qword_100ECE0B0);
  __chkstk_darwin();
  v103 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v86 - v15;
  v96 = *(sub_10010FC20(&qword_10119A808, &unk_100ED91D0) - 8);
  v17 = *(v96 + 64);
  __chkstk_darwin();
  v97 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v95 = &v86 - v18;
  v19 = __chkstk_darwin();
  v21 = &v86 - v20;
  if ((*(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_postponeHighlightLeavingSearch) & 1) != 0 || (v22 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries, swift_beginAccess(), v109 = v2, v99 = v6, v93 = v22, sub_1000089F8(v0 + v22, v21, &qword_10119A808, &unk_100ED91D0), v23 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0), v24 = (*(*(v23 - 8) + 48))(v21, 1, v23), v108 = v3, v25 = v24, v2 = v109, v26 = v99, sub_1000095E8(v21, &qword_10119A808, &unk_100ED91D0), v27 = v25 == 1, v3 = v108, v27) || (v28 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentEntryID + 8)) == 0)
  {
    (*(v3 + 56))(v13, 1, 1, v2, v19);
    v41 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentItemIndexPath;
    swift_beginAccess();
    sub_1000089F8(v0 + v41, v11, &unk_10118BCE0, &qword_100EC6450);
    swift_beginAccess();
    sub_1002190E0(v13, v0 + v41, &unk_10118BCE0, &qword_100EC6450);
    swift_endAccess();
    sub_1008174CC(v11);
    sub_1000095E8(v11, &unk_10118BCE0, &qword_100EC6450);
    v42 = v13;
    v43 = &unk_10118BCE0;
    v44 = &qword_100EC6450;
LABEL_9:
    sub_1000095E8(v42, v43, v44);
    return;
  }

  v91 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentEntryID);
  v29 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentItemIndexPath;
  swift_beginAccess();
  v90 = v29;
  sub_1000089F8(v0 + v29, v13, &unk_10118BCE0, &qword_100EC6450);

  v94 = v0;
  sub_1008596BC(v13, v16);
  sub_1000095E8(v13, &unk_10118BCE0, &qword_100EC6450);
  v30 = v110;
  v31 = *(v110 + 48);
  v89 = (v110 + 48);
  v88 = v31;
  v32 = v31(v16, 1, v26);
  v92 = v28;
  if (v32 == 1)
  {
    sub_1000095E8(v16, &qword_101191570, &qword_100ECE0B0);
    v33 = v94;
    goto LABEL_6;
  }

  v45 = v104;
  (*(v30 + 16))(v104, v16, v26);

  if (MusicItem.contains(_:)())
  {

    v46 = *(v30 + 8);
    v46(v45, v26);
    v46(v16, v26);
    v33 = v94;
  }

  else
  {
    Playlist.Entry.internalItem.getter();
    sub_100866F00(&qword_1011A4748, &type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);
    v54 = v101;
    v55 = v107;
    LODWORD(v87) = MusicItem.contains(_:)();

    (*(v100 + 8))(v55, v54);
    v56 = *(v30 + 8);
    v56(v45, v26);
    v56(v16, v26);
    v33 = v94;
    if ((v87 & 1) == 0)
    {
LABEL_6:
      v35 = v108;
      v34 = v109;
      v36 = *(v108 + 56);
      v104 = (v108 + 56);
      v87 = v36;
      v36(v13, 1, 1, v109);
      v37 = v90;
      sub_1000089F8(v33 + v90, v11, &unk_10118BCE0, &qword_100EC6450);
      swift_beginAccess();
      sub_1002190E0(v13, v33 + v37, &unk_10118BCE0, &qword_100EC6450);
      swift_endAccess();
      sub_1008174CC(v11);
      v38 = v94;
      sub_1000095E8(v11, &unk_10118BCE0, &qword_100EC6450);
      sub_1000095E8(v13, &unk_10118BCE0, &qword_100EC6450);
      v39 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_opportunisticProminentItemIndexPath;
      swift_beginAccess();
      v40 = v105;
      sub_1000089F8(v38 + v39, v105, &unk_10118BCE0, &qword_100EC6450);
      if ((*(v35 + 48))(v40, 1, v34) == 1)
      {
        sub_1000095E8(v40, &unk_10118BCE0, &qword_100EC6450);
        goto LABEL_16;
      }

      v47 = v106;
      (*(v35 + 32))(v106, v40, v34);
      v50 = *(v35 + 16);
      v49 = v35 + 16;
      v48 = v50;
      v50(v13, v47, v34);
      v87(v13, 0, 1, v34);
      v51 = v103;
      sub_1008596BC(v13, v103);
      sub_1000095E8(v13, &unk_10118BCE0, &qword_100EC6450);
      v52 = v99;
      if (v88(v51, 1, v99) == 1)
      {
        sub_1000095E8(v51, &qword_101191570, &qword_100ECE0B0);
        v38 = v94;
LABEL_15:
        (*(v108 + 8))(v106, v109);
LABEL_16:
        v53 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentItemTask;
        if (*(v38 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentItemTask))
        {
        }

        else
        {
          v58 = v102;
          static TaskPriority.userInitiated.getter();
          v59 = type metadata accessor for TaskPriority();
          (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
          v60 = v95;
          sub_1000089F8(v38 + v93, v95, &qword_10119A808, &unk_100ED91D0);
          v61 = *(v38 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
          v110 = *(v38 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponse);
          v62 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v63 = v60;
          v64 = v97;
          sub_10003D17C(v63, v97, &qword_10119A808, &unk_100ED91D0);
          v65 = (*(v96 + 80) + 40) & ~*(v96 + 80);
          v66 = (v17 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
          v67 = (v66 + 23) & 0xFFFFFFFFFFFFFFF8;
          v68 = swift_allocObject();
          v68[2] = 0;
          v68[3] = 0;
          v68[4] = v61;
          sub_10003D17C(v64, v68 + v65, &qword_10119A808, &unk_100ED91D0);
          v69 = (v68 + v66);
          v70 = v92;
          *v69 = v91;
          v69[1] = v70;
          v71 = v110;
          *(v68 + v67) = v110;
          *(v68 + ((v67 + 15) & 0xFFFFFFFFFFFFFFF8)) = v62;

          sub_100869670(v71);
          v72 = v102;
          v73 = sub_100805804(0, 0, v102, &unk_100EE4C78, v68);
          sub_1000095E8(v72, &unk_101181520, &qword_100EBCC60);
          *(v38 + v53) = v73;
        }

        return;
      }

      v89 = v48;
      v105 = v49;
      v75 = v110;
      v76 = v98;
      (*(v110 + 16))(v98, v51, v52);

      if (MusicItem.contains(_:)())
      {

        v77 = *(v75 + 8);
        v77(v76, v52);
        v77(v103, v52);
        v38 = v94;
      }

      else
      {
        Playlist.Entry.internalItem.getter();
        sub_100866F00(&qword_1011A4748, &type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);
        v78 = v101;
        v79 = v107;
        v80 = MusicItem.contains(_:)();

        (*(v100 + 8))(v79, v78);
        v81 = *(v75 + 8);
        v81(v98, v52);
        v81(v103, v52);
        v38 = v94;
        if ((v80 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v82 = v109;
      v83 = v87;
      v87(v13, 1, 1, v109);
      swift_beginAccess();
      sub_10006B010(v13, v38 + v39, &unk_10118BCE0, &qword_100EC6450);
      swift_endAccess();
      v84 = v106;
      v89(v13, v106, v82);
      v83(v13, 0, 1, v82);
      v85 = v90;
      sub_1000089F8(v38 + v90, v11, &unk_10118BCE0, &qword_100EC6450);
      swift_beginAccess();
      sub_1002190E0(v13, v38 + v85, &unk_10118BCE0, &qword_100EC6450);
      swift_endAccess();
      sub_1008174CC(v11);
      sub_1000095E8(v11, &unk_10118BCE0, &qword_100EC6450);
      sub_1000095E8(v13, &unk_10118BCE0, &qword_100EC6450);
      (*(v108 + 8))(v84, v82);
      return;
    }
  }

  v57 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v33 + v57, v111, &unk_1011926C0, &unk_100ECF870);
  if (v111[8])
  {
    v43 = &unk_1011926C0;
    v44 = &unk_100ECF870;
    v42 = v111;
    goto LABEL_9;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v111, &unk_1011926C0, &unk_100ECF870);
  if (Strong)
  {
    sub_100503D5C();
  }
}

uint64_t sub_10084371C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a8;
  v8[19] = v14;
  v8[16] = a6;
  v8[17] = a7;
  v8[14] = a4;
  v8[15] = a5;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v8[20] = swift_task_alloc();
  v9 = type metadata accessor for Playlist.Entry.InternalItem();
  v8[21] = v9;
  v8[22] = *(v9 - 8);
  v8[23] = swift_task_alloc();
  v10 = type metadata accessor for Playlist.Entry();
  v8[24] = v10;
  v8[25] = *(v10 - 8);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  v8[28] = swift_task_alloc();
  v11 = *(sub_10010FC20(&unk_10118BCE0, &qword_100EC6450) - 8);
  v8[29] = v11;
  v8[30] = *(v11 + 64);
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();

  return _swift_task_switch(sub_10084393C, 0, 0);
}

uint64_t sub_10084393C()
{
  v1 = v0[14];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    while (*(v4 + v3) != 2)
    {
      if (v2 == ++v3)
      {
        goto LABEL_14;
      }
    }

    v5 = v0[28];
    sub_1000089F8(v0[15], v5, &qword_10119A808, &unk_100ED91D0);
    v6 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1000095E8(v0[28], &qword_10119A808, &unk_100ED91D0);
    }

    else
    {
      v41 = v7;
      sub_100020674(&unk_101186ED0, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      if (v0[12] != v0[13])
      {
        v8 = v0[25];
        v42 = (v0[22] + 8);
        v43 = (v8 + 8);
        v44 = (v8 + 16);
        v45 = v6;
        while (1)
        {
          v9 = v0[27];
          v10 = v0[26];
          v11 = v0[24];
          v12 = dispatch thunk of Collection.subscript.read();
          v13 = *v44;
          (*v44)(v9);
          v12(v0 + 2, 0);
          (v13)(v10, v9, v11);
          v14 = MusicItem.contains(_:)();
          v15 = v0[26];
          v16 = v0[27];
          v17 = v0[24];
          if (v14)
          {
            break;
          }

          v18 = v0[23];
          v19 = v0[21];
          Playlist.Entry.internalItem.getter();
          sub_100866F00(&qword_1011A4748, &type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);
          v20 = MusicItem.contains(_:)();
          (*v42)(v18, v19);
          v21 = *v43;
          (*v43)(v15, v17);
          v21(v16, v17);
          if (v20)
          {
            goto LABEL_26;
          }

          v6 = v45;
          dispatch thunk of Collection.formIndex(after:)();
          dispatch thunk of Collection.endIndex.getter();
          if (v0[12] == v0[13])
          {
            goto LABEL_13;
          }
        }

        v39 = *v43;
        (*v43)(v0[26], v0[24]);
        v39(v16, v17);
LABEL_26:
        (*(v41 + 8))(v0[28], v45);
        IndexPath.init(item:section:)();
        v23 = 0;
        goto LABEL_22;
      }

LABEL_13:
      (*(v41 + 8))(v0[28], v6);
    }
  }

LABEL_14:
  v22 = v0[18];
  v23 = 1;
  if (v22 < 0 && (v22 & 0xF000000000000007) != 0xF000000000000007)
  {

    if (dispatch thunk of MusicAutoupdatingResponse.isLoaded.getter())
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v0[33] = Strong;
      if (Strong)
      {
        type metadata accessor for MainActor();
        v0[34] = static MainActor.shared.getter();
        v26 = dispatch thunk of Actor.unownedExecutor.getter();

        return _swift_task_switch(sub_100844000, v26, v25);
      }
    }

    sub_1004E6028(v0[18]);
    v23 = 1;
  }

LABEL_22:
  v27 = v0[31];
  v28 = v0[32];
  v29 = v0[29];
  v30 = v0[20];
  v31 = type metadata accessor for IndexPath();
  (*(*(v31 - 8) + 56))(v28, v23, 1, v31);
  v32 = type metadata accessor for TaskPriority();
  (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
  v33 = swift_allocObject();
  swift_beginAccess();
  v34 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_1000089F8(v28, v27, &unk_10118BCE0, &qword_100EC6450);
  type metadata accessor for MainActor();

  v35 = static MainActor.shared.getter();
  v36 = (*(v29 + 80) + 40) & ~*(v29 + 80);
  v37 = swift_allocObject();
  v37[2] = v35;
  v37[3] = &protocol witness table for MainActor;
  v37[4] = v33;
  sub_10003D17C(v27, v37 + v36, &unk_10118BCE0, &qword_100EC6450);

  sub_1001F4CB8(0, 0, v30, &unk_100EE4C88, v37);

  sub_1000095E8(v28, &unk_10118BCE0, &qword_100EC6450);

  v38 = v0[1];

  return v38();
}