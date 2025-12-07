void sub_1004D3844(uint64_t a1, uint64_t a2)
{
  v3 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v17 - v5;
  sub_10010FC20(&unk_1011842D0, &qword_100ECBF00);
  __chkstk_darwin();
  v8 = v17 - v7;
  v9 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracks;
  swift_beginAccess();
  sub_1000089F8(a1 + v9, v8, &unk_1011842D0, &qword_100ECBF00);
  if ((*(v4 + 48))(v8, 1, v3))
  {
    sub_1000095E8(v8, &unk_1011842D0, &qword_100ECBF00);
    v10 = (a1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingDetailSection);
    if ((*(a1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingDetailSection) & 1) == 0)
    {
      return;
    }

LABEL_6:
    *v10 = 0;
    v11 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(a1 + v11, &v18, &unk_1011926C0, &unk_100ECF870);
    if (v19)
    {
LABEL_7:
      sub_1000095E8(&v18, &unk_1011926C0, &unk_100ECF870);
      return;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(&v18, &unk_1011926C0, &unk_100ECF870);
    if (Strong)
    {
      v13 = sub_1006A6078();

      sub_10010FC20(&qword_10118AC80, &qword_100EC9020);
      type metadata accessor for IndexPath();
      *(swift_allocObject() + 16) = xmmword_100EBC6B0;
      IndexPath.init(item:section:)();
      v14.super.isa = Array._bridgeToObjectiveC()().super.isa;

      [v13 deleteItemsAtIndexPaths:v14.super.isa];
LABEL_10:

      return;
    }

    return;
  }

  (*(v4 + 16))(v6, v8, v3);
  sub_1000095E8(v8, &unk_1011842D0, &qword_100ECBF00);
  sub_100020674(&qword_1011913B0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  (*(v4 + 8))(v6, v3);
  v10 = (a1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingDetailSection);
  if (v17[0] == v18)
  {
    if (!*(a1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingDetailSection))
    {
      return;
    }

    goto LABEL_6;
  }

  if ((*(a1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingDetailSection) & 1) == 0)
  {
    *v10 = 1;
    v15 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(a1 + v15, &v18, &unk_1011926C0, &unk_100ECF870);
    if (v19)
    {
      goto LABEL_7;
    }

    v16 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(&v18, &unk_1011926C0, &unk_100ECF870);
    if (v16)
    {
      v13 = sub_1006A6078();

      sub_10010FC20(&qword_10118AC80, &qword_100EC9020);
      type metadata accessor for IndexPath();
      *(swift_allocObject() + 16) = xmmword_100EBC6B0;
      IndexPath.init(item:section:)();
      v14.super.isa = Array._bridgeToObjectiveC()().super.isa;

      [v13 insertItemsAtIndexPaths:v14.super.isa];
      goto LABEL_10;
    }
  }
}

void sub_1004D3D70()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v89 = *(v2 - 8);
  v90 = v2;
  __chkstk_darwin();
  v88 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101192700, &qword_100EC06A0);
  __chkstk_darwin();
  v86 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v85 = &v75 - v5;
  v82 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v87 = *(v82 - 8);
  __chkstk_darwin();
  v79 = &v75 - v6;
  sub_10010FC20(&unk_1011842D0, &qword_100ECBF00);
  __chkstk_darwin();
  v8 = &v75 - v7;
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v10 = &v75 - v9;
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v83 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v80 = &v75 - v12;
  __chkstk_darwin();
  v14 = &v75 - v13;
  v15 = type metadata accessor for Album();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v81 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v75 - v18;
  v20 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  sub_1000089F8(v1 + v20, v14, &unk_101184730, &unk_100ECB920);
  v21 = *(v16 + 48);
  if (v21(v14, 1, v15) == 1)
  {
    sub_1000095E8(v14, &unk_101184730, &unk_100ECB920);
  }

  else
  {
    v77 = v21;
    v78 = v16;
    v22 = *(v16 + 32);
    v76 = v15;
    v22(v19, v14, v15);
    v23 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracklistFooterViewModel;
    v24 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracklistFooterViewModel);

    *(v24 + 16) = Album.isAppleDigitalMaster.getter();

    v25 = *(v1 + v23);

    Album.releaseDate.getter();
    v26 = OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel_releaseDate;
    swift_beginAccess();
    sub_10006B010(v10, v25 + v26, &qword_101188C20, &qword_100EC2030);
    swift_endAccess();

    v27 = *(v1 + v23);
    v28 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracks;
    swift_beginAccess();
    sub_1000089F8(v1 + v28, v8, &unk_1011842D0, &qword_100ECBF00);
    v29 = v82;
    v30 = (*(v87 + 48))(v8, 1, v82);
    v84 = v19;
    if (v30)
    {

      sub_1000095E8(v8, &unk_1011842D0, &qword_100ECBF00);
      v31 = 0;
    }

    else
    {
      v32 = v87;
      v33 = *(v87 + 16);
      v75 = v27;
      v34 = v79;
      v33(v79, v8, v29);

      sub_1000095E8(v8, &unk_1011842D0, &qword_100ECBF00);
      sub_100020674(&qword_1011913B0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      v31 = dispatch thunk of Collection.distance(from:to:)();
      (*(v32 + 8))(v34, v29);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v91 = v31;
    v92 = v30 != 0;
    static Published.subscript.setter();
    v35 = *(v1 + v23);

    v36 = Album.copyright.getter();
    v38 = v76;
    if (v37)
    {
      v39 = v86;
      v40 = v85;
      v41 = v77;
    }

    else
    {
      v42 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogAlbum;
      swift_beginAccess();
      v43 = v1 + v42;
      v44 = v80;
      sub_1000089F8(v43, v80, &unk_101184730, &unk_100ECB920);
      v41 = v77;
      v45 = v77(v44, 1, v38);
      v39 = v86;
      v40 = v85;
      if (v45)
      {
        sub_1000095E8(v44, &unk_101184730, &unk_100ECB920);
        v36 = 0;
        v37 = 0;
      }

      else
      {
        v87 = v23;
        v46 = v78;
        v47 = v81;
        (*(v78 + 16))(v81, v44, v38);
        sub_1000095E8(v44, &unk_101184730, &unk_100ECB920);
        v48 = Album.copyright.getter();
        v50 = v49;
        (*(v46 + 8))(v47, v38);
        v37 = v50;
        v41 = v77;
        v36 = v48;
      }
    }

    v51 = (v35 + OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel_copyright);
    *v51 = v36;
    v51[1] = v37;

    v52 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogAlbum;
    swift_beginAccess();
    v53 = v1 + v52;
    v54 = v83;
    sub_1000089F8(v53, v83, &unk_101184730, &unk_100ECB920);
    if (v41(v54, 1, v38))
    {

      sub_1000095E8(v54, &unk_101184730, &unk_100ECB920);
      v55 = sub_10010FC20(&qword_101184C70, &qword_100EBD6D0);
      (*(*(v55 - 8) + 56))(v40, 1, 1, v55);
      v56 = v78;
    }

    else
    {
      v56 = v78;
      v57 = v81;
      (*(v78 + 16))(v81, v54, v38);

      sub_1000095E8(v54, &unk_101184730, &unk_100ECB920);
      Album.recordLabels.getter();
      (*(v56 + 8))(v57, v38);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000089F8(v40, v39, &unk_101192700, &qword_100EC06A0);
    static Published.subscript.setter();
    sub_1000095E8(v40, &unk_101192700, &qword_100EC06A0);
    (*(v56 + 8))(v84, v38);
  }

  v58 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v58, v93, &unk_1011926C0, &unk_100ECF870);
  if (v93[8])
  {
    sub_1000095E8(v93, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v93, &unk_1011926C0, &unk_100ECF870);
    if (Strong)
    {
      v60 = sub_1006A6078();

      v61 = [v60 indexPathsForVisibleItems];
      v62 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v63 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections);
      v64 = *(v63 + 16);
      if (v64)
      {
        v65 = 0;
        v66 = v63 + 32;
        while (*(v66 + v65) != 6)
        {
          if (v64 == ++v65)
          {
            goto LABEL_22;
          }
        }

        v67 = 0;
        v68 = *(v62 + 16);
        v87 = v89 + 16;
        v69 = v89;
        while (v68 != v67)
        {
          if (v67 >= *(v62 + 16))
          {
            __break(1u);
            return;
          }

          v70 = v88;
          v71 = v90;
          (*(v69 + 16))(v88, v62 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v67++, v90);
          v72 = v1;
          v73 = IndexPath.section.getter();
          (*(v69 + 8))(v70, v71);
          v74 = v73 == v65;
          v1 = v72;
          if (v74)
          {

            sub_1004D4938();
            return;
          }
        }
      }

LABEL_22:
    }
  }

  *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_needsDurationUpdate) = 1;
}

uint64_t sub_1004D4938()
{
  sub_10010FC20(&unk_1011842D0, &qword_100ECBF00);
  __chkstk_darwin();
  v2 = &v12[-v1 - 8];
  v3 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v0 + v3, v12, &unk_1011926C0, &unk_100ECF870);
  if (v12[8])
  {
    v4 = &unk_1011926C0;
    v5 = &unk_100ECF870;
    v6 = v12;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    result = sub_1000095E8(v12, &unk_1011926C0, &unk_100ECF870);
    if (!Strong)
    {
      return result;
    }

    v9 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracks;
    swift_beginAccess();
    sub_1000089F8(v0 + v9, v2, &unk_1011842D0, &qword_100ECBF00);
    v13 = v2;
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_10080658C(&v13, sub_1004E5B28, v10);

    v6 = v2;
    v4 = &unk_1011842D0;
    v5 = &qword_100ECBF00;
  }

  return sub_1000095E8(v6, v4, v5);
}

void *sub_1004D4B0C(uint64_t a1, double a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;

    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

void sub_1004D4BB0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_banner);
  if (a1)
  {
    if (v2)
    {
      v7 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_banner);
      type metadata accessor for BannerProvider.Banner();
      sub_1004E41B4(&qword_101192730, &type metadata accessor for BannerProvider.Banner, &protocol conformance descriptor for BannerProvider.Banner);

      v3 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v3)
      {
        return;
      }
    }
  }

  else if (!v2)
  {
    return;
  }

  v4 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v4, &v7, &unk_1011926C0, &unk_100ECF870);
  if (v8)
  {
    sub_1000095E8(&v7, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(&v7, &unk_1011926C0, &unk_100ECF870);
    if (Strong)
    {
      v6 = [Strong isViewLoaded];

      if (v6)
      {
        sub_1004C97D0(0);
      }
    }
  }
}

void sub_1004D4D28()
{
  v1 = *&v0[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    while (*(v4 + v3) != 1)
    {
      if (v2 == ++v3)
      {
        return;
      }
    }

    v5 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(&v0[v5], &aBlock, &unk_1011926C0, &unk_100ECF870);
    if (v14)
    {
      sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
      if (Strong)
      {
        v7 = v0;
        v8 = sub_1006A6078();

        v9 = swift_allocObject();
        *(v9 + 16) = v7;
        *(v9 + 24) = v3;
        v10 = swift_allocObject();
        *(v10 + 16) = sub_1004E5B20;
        *(v10 + 24) = v9;
        v17 = sub_10018A020;
        v18 = v10;
        aBlock = _NSConcreteStackBlock;
        v14 = 1107296256;
        v15 = sub_100029B9C;
        v16 = &unk_1010AF328;
        v11 = _Block_copy(&aBlock);
        v12 = v7;

        [v8 performBatchUpdates:v11 completion:0];
        _Block_release(v11);
      }
    }
  }
}

void sub_1004D4F10(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MusicPropertySource();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v18[-v7];
  static ApplicationCapabilities.shared.getter(v21);
  sub_100014984(v21);
  if (v21[1] & 1) != 0 && (v9 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source, swift_beginAccess(), (*(v4 + 16))(v8, a1 + v9, v3), (*(v4 + 104))(v6, enum case for MusicPropertySource.catalog(_:), v3), LOBYTE(v9) = static MusicPropertySource.== infix(_:_:)(), v10 = *(v4 + 8), v10(v6, v3), v10(v8, v3), (v9) && *(a1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentingCells))
  {
    v11 = (a1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingBannerSection);
    if (*(a1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_banner))
    {
      if (*(a1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingBannerSection))
      {
        return;
      }

      *v11 = 1;
      v12 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(a1 + v12, v19, &unk_1011926C0, &unk_100ECF870);
      if ((v20 & 1) == 0)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(v19, &unk_1011926C0, &unk_100ECF870);
        if (!Strong)
        {
          return;
        }

        v14 = sub_1006A6078();

        sub_10010FC20(&qword_10118AC80, &qword_100EC9020);
        type metadata accessor for IndexPath();
        *(swift_allocObject() + 16) = xmmword_100EBC6B0;
        IndexPath.init(item:section:)();
        v15.super.isa = Array._bridgeToObjectiveC()().super.isa;

        [v14 insertItemsAtIndexPaths:v15.super.isa];
        goto LABEL_14;
      }

LABEL_11:
      sub_1000095E8(v19, &unk_1011926C0, &unk_100ECF870);
      return;
    }

    if (!*(a1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingBannerSection))
    {
      return;
    }
  }

  else
  {
    v11 = (a1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingBannerSection);
    if ((*(a1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingBannerSection) & 1) == 0)
    {
      return;
    }
  }

  *v11 = 0;
  v16 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(a1 + v16, v19, &unk_1011926C0, &unk_100ECF870);
  if (v20)
  {
    goto LABEL_11;
  }

  v17 = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v19, &unk_1011926C0, &unk_100ECF870);
  if (!v17)
  {
    return;
  }

  v14 = sub_1006A6078();

  sub_10010FC20(&qword_10118AC80, &qword_100EC9020);
  type metadata accessor for IndexPath();
  *(swift_allocObject() + 16) = xmmword_100EBC6B0;
  IndexPath.init(item:section:)();
  v15.super.isa = Array._bridgeToObjectiveC()().super.isa;

  [v14 deleteItemsAtIndexPaths:v15.super.isa];
LABEL_14:
}

uint64_t sub_1004D53B8(uint64_t a1)
{
  v2 = v1;
  v137 = a1;
  sub_10010FC20(&unk_1011842D0, &qword_100ECBF00);
  __chkstk_darwin();
  v121 = &v111 - v3;
  v132 = type metadata accessor for MusicPropertySource();
  v131 = *(v132 - 8);
  __chkstk_darwin();
  v130 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v129 = &v111 - v5;
  sub_10010FC20(&unk_101192700, &qword_100EC06A0);
  __chkstk_darwin();
  v127 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v126 = &v111 - v7;
  v117 = type metadata accessor for EditorialVideoArtworkFlavor();
  v116 = *(v117 - 8);
  __chkstk_darwin();
  v115 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101192950, &unk_100EBDF40);
  __chkstk_darwin();
  v119 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v125 = &v111 - v10;
  sub_10010FC20(&qword_101192860, &unk_100ECFB60);
  __chkstk_darwin();
  v124 = &v111 - v11;
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v123 = &v111 - v12;
  v13 = type metadata accessor for Album();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v118 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v128 = &v111 - v16;
  __chkstk_darwin();
  v133 = &v111 - v17;
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v120 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v122 = &v111 - v19;
  __chkstk_darwin();
  v134 = &v111 - v20;
  __chkstk_darwin();
  v22 = &v111 - v21;
  __chkstk_darwin();
  v24 = &v111 - v23;
  v25 = sub_10010FC20(&unk_101192960, &qword_100ECFE40) - 8;
  __chkstk_darwin();
  v27 = &v111 - v26;
  v28 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogAlbum;
  swift_beginAccess();
  v29 = *(v25 + 56);
  v135 = v2;
  v136 = v28;
  sub_1000089F8(v2 + v28, v27, &unk_101184730, &unk_100ECB920);
  sub_1000089F8(v137, &v27[v29], &unk_101184730, &unk_100ECB920);
  v137 = v14;
  v30 = v14 + 48;
  v31 = *(v14 + 48);
  if (v31(v27, 1, v13) == 1)
  {
    v32 = v31(&v27[v29], 1, v13);
    v33 = v13;
    if (v32 == 1)
    {
      return sub_1000095E8(v27, &unk_101184730, &unk_100ECB920);
    }

    goto LABEL_6;
  }

  sub_1000089F8(v27, v24, &unk_101184730, &unk_100ECB920);
  if (v31(&v27[v29], 1, v13) == 1)
  {
    (*(v137 + 8))(v24, v13);
    v33 = v13;
LABEL_6:
    sub_1000095E8(v27, &unk_101192960, &qword_100ECFE40);
    goto LABEL_7;
  }

  v41 = v137;
  v42 = *(v137 + 32);
  v114 = v14 + 48;
  v43 = v133;
  v42(v133, &v27[v29], v13);
  sub_1004E41B4(&unk_101192760, &type metadata accessor for Album, &protocol conformance descriptor for Album);
  v44 = dispatch thunk of static Equatable.== infix(_:_:)();
  v45 = *(v41 + 8);
  v46 = v43;
  v30 = v114;
  v45(v46, v13);
  v45(v24, v13);
  result = sub_1000095E8(v27, &unk_101184730, &unk_100ECB920);
  v33 = v13;
  if (v44)
  {
    return result;
  }

LABEL_7:
  v35 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  v36 = v135;
  swift_beginAccess();
  v113 = v35;
  sub_1000089F8(v36 + v35, v22, &unk_101184730, &unk_100ECB920);
  LODWORD(v35) = v31(v22, 1, v33);
  sub_1000095E8(v22, &unk_101184730, &unk_100ECB920);
  if (v35 != 1)
  {
    v37 = (*(v36 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracklistFooterViewModel) + OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel_copyright);
    if (!v37[1])
    {
      v38 = v136;
      if (v31((v36 + v136), 1, v33))
      {

        v39 = 0;
        v40 = 0;
      }

      else
      {
        v47 = v137;
        v48 = *(v137 + 16);
        v114 = v30;
        v49 = v133;
        v48(v133, v36 + v38, v33);

        v39 = Album.copyright.getter();
        v40 = v50;
        v51 = v49;
        v30 = v114;
        (*(v47 + 8))(v51, v33);
      }

      *v37 = v39;
      v37[1] = v40;
    }
  }

  sub_1004C97D0(0);
  sub_1004B2C94();
  v52 = v136;
  v53 = v134;
  sub_1000089F8(v36 + v136, v134, &unk_101184730, &unk_100ECB920);
  if (v31(v53, 1, v33) == 1)
  {
    goto LABEL_16;
  }

  v56 = *(v137 + 32);
  v57 = v128;
  v134 = v137 + 32;
  v111 = v56;
  v56(v128, v53, v33);
  v58 = Album.catalogID.getter();
  v59 = (v36 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID);
  v60 = *(v36 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID);
  v61 = *(v36 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID + 8);
  *v59 = v58;
  v59[1] = v62;
  sub_1004ABC24(v60, v61);

  sub_1004CAC5C();
  v63 = EditorialVideoArtworkVending.editorialVideoArtworks.getter();
  if (!v63)
  {
    v63 = sub_10010BDB8(_swiftEmptyArrayStorage);
  }

  sub_1005F40C8(v63);

  v64 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___headerConfiguration;

  v65 = v123;
  Album.staticDetailTallArtwork.getter();
  sub_1005F3EAC(v65);

  v66 = *(v36 + v64);
  v67 = v122;
  sub_1000089F8(v36 + v52, v122, &unk_101184730, &unk_100ECB920);
  if (v31(v67, 1, v33))
  {

    sub_1000095E8(v67, &unk_101184730, &unk_100ECB920);
    v68 = type metadata accessor for ContainerDetail.AttributionItem(0);
    v69 = 1;
    v70 = v124;
    (*(*(v68 - 8) + 56))(v124, 1, 1, v68);
  }

  else
  {
    v71 = v137;
    v72 = v133;
    (*(v137 + 16))(v133, v67, v33);

    sub_1000095E8(v67, &unk_101184730, &unk_100ECB920);
    v70 = v124;
    sub_1004CA938(v124);
    (*(v71 + 8))(v72, v33);
    v73 = type metadata accessor for ContainerDetail.AttributionItem(0);
    v69 = (*(*(v73 - 8) + 48))(v70, 1, v73) == 1;
  }

  sub_1000095E8(v70, &qword_101192860, &unk_100ECFB60);
  if (v69 == *(v66 + OBJC_IVAR____TtCV5Music6Header13Configuration__disableAttribution))
  {
    *(v66 + OBJC_IVAR____TtCV5Music6Header13Configuration__disableAttribution) = v69;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    *(&v111 - 2) = v66;
    *(&v111 - 8) = v69;
    v138 = v66;
    sub_1004E41B4(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v74 = v125;
  v75 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v36 + v75, &v138, &unk_1011926C0, &unk_100ECF870);
  if (v139)
  {
    v76 = &unk_1011926C0;
    v77 = &unk_100ECF870;
LABEL_31:
    sub_1000095E8(&v138, v76, v77);
    goto LABEL_32;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v138, &unk_1011926C0, &unk_100ECF870);
  if (!Strong)
  {
    goto LABEL_32;
  }

  v79 = sub_10069F9B8();

  if (*(v79 + 16))
  {

    v140 = v33;
    v141 = &off_1010B22E8;
    v80 = sub_10001C8B8(&v138);
    (*(v137 + 16))(v80, v57, v33);
    sub_10064B708(&v138);

    v76 = &unk_101192850;
    v77 = &qword_100EE4C90;
    goto LABEL_31;
  }

LABEL_32:
  sub_1000089F8(v36 + v75, &v138, &unk_1011926C0, &unk_100ECF870);
  v114 = v30;
  v112 = v31;
  if (v139)
  {
    v81 = &unk_1011926C0;
    v82 = &unk_100ECF870;
    v83 = &v138;
LABEL_44:
    sub_1000095E8(v83, v81, v82);
    goto LABEL_45;
  }

  v84 = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v138, &unk_1011926C0, &unk_100ECF870);
  if (v84)
  {
    v85 = *&v84[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_floatingArtworkDataSource];

    if (v85)
    {
      v86 = EditorialVideoArtworkVending.editorialVideoArtworks.getter();
      if (v86)
      {
        v87 = v86;
        v88 = v115;
        static EditorialVideoArtworkFlavor.motionDetailSquare.getter();
        if (*(v87 + 16))
        {
          v89 = sub_1006BE63C(v88);
          if (v90)
          {
            v91 = v89;
            v92 = *(v87 + 56);
            v93 = v74;
            v94 = type metadata accessor for VideoArtwork();
            v95 = *(v94 - 8);
            v136 = v33;
            v96 = v95;
            (*(v95 + 16))(v93, v92 + *(v95 + 72) * v91, v94);
            (*(v116 + 8))(v88, v117);

            (*(v96 + 56))(v93, 0, 1, v94);
            v33 = v136;
LABEL_43:
            swift_getKeyPath();
            swift_getKeyPath();
            sub_1000089F8(v93, v119, &unk_101192950, &unk_100EBDF40);
            static Published.subscript.setter();
            v83 = v93;
            v81 = &unk_101192950;
            v82 = &unk_100EBDF40;
            goto LABEL_44;
          }
        }

        (*(v116 + 8))(v88, v117);
      }

      v97 = type metadata accessor for VideoArtwork();
      (*(*(v97 - 8) + 56))(v74, 1, 1, v97);
      v93 = v74;
      goto LABEL_43;
    }
  }

LABEL_45:
  v98 = v33;

  v99 = v126;
  Album.recordLabels.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v99, v127, &unk_101192700, &qword_100EC06A0);
  static Published.subscript.setter();
  sub_1000095E8(v99, &unk_101192700, &qword_100EC06A0);
  v100 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
  swift_beginAccess();
  v101 = v131;
  v102 = v129;
  v103 = v132;
  (*(v131 + 16))(v129, v36 + v100, v132);
  v104 = v130;
  (*(v101 + 104))(v130, enum case for MusicPropertySource.library(_:), v103);
  LOBYTE(v100) = static MusicPropertySource.== infix(_:_:)();
  v105 = *(v101 + 8);
  v105(v104, v103);
  v105(v102, v103);
  if ((v100 & 1) == 0)
  {
    return (*(v137 + 8))(v57, v98);
  }

  v106 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracks;
  swift_beginAccess();
  v107 = v36 + v106;
  v53 = v121;
  sub_1000089F8(v107, v121, &unk_1011842D0, &qword_100ECBF00);
  v108 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  if ((*(*(v108 - 8) + 48))(v53, 1, v108) == 1)
  {
    (*(v137 + 8))(v57, v98);
    v54 = &unk_1011842D0;
    v55 = &qword_100ECBF00;
    return sub_1000095E8(v53, v54, v55);
  }

  sub_1000095E8(v53, &unk_1011842D0, &qword_100ECBF00);
  v53 = v120;
  sub_1000089F8(v36 + v113, v120, &unk_101184730, &unk_100ECB920);
  if (v112(v53, 1, v98) == 1)
  {
    (*(v137 + 8))(v57, v98);
LABEL_16:
    v54 = &unk_101184730;
    v55 = &unk_100ECB920;
    return sub_1000095E8(v53, v54, v55);
  }

  v109 = v118;
  v111(v118, v53, v98);
  sub_1004CE888(v109);
  v110 = *(v137 + 8);
  v110(v109, v98);
  return (v110)(v57, v98);
}

uint64_t sub_1004D6764()
{
  v1 = type metadata accessor for Track();
  v52 = *(v1 - 8);
  __chkstk_darwin();
  v3 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v49 - v4;
  v53 = sub_10010FC20(&unk_10118C0B0, &qword_100ECFA00);
  __chkstk_darwin();
  v54 = &v49 - v5;
  v60 = type metadata accessor for Album();
  v59 = *(v60 - 1);
  __chkstk_darwin();
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v9 = &v49 - v8;
  sub_10010FC20(&unk_1011842D0, &qword_100ECBF00);
  __chkstk_darwin();
  v55 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v49 - v11;
  v61 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v62 = *(v61 - 8);
  __chkstk_darwin();
  v58 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v56 = &v49 - v14;
  v15 = type metadata accessor for MusicPropertySource();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v49 - v19;
  static ApplicationCapabilities.shared.getter(v64);
  sub_100014984(v64);
  if ((v64[1] & 1) == 0)
  {
    return 0;
  }

  if (*(v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeOnlyDownloadedContent))
  {
    return 0;
  }

  v50 = v3;
  v51 = v1;
  v21 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
  swift_beginAccess();
  (*(v16 + 16))(v20, v0 + v21, v15);
  (*(v16 + 104))(v18, enum case for MusicPropertySource.library(_:), v15);
  LOBYTE(v21) = static MusicPropertySource.== infix(_:_:)();
  v22 = *(v16 + 8);
  v22(v18, v15);
  v22(v20, v15);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

  v23 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogAlbum;
  swift_beginAccess();
  sub_1000089F8(v0 + v23, v9, &unk_101184730, &unk_100ECB920);
  v24 = v59;
  v25 = v60;
  if ((*(v59 + 48))(v9, 1, v60))
  {
    sub_1000095E8(v9, &unk_101184730, &unk_100ECB920);
    (*(v62 + 56))(v12, 1, 1, v61);
LABEL_7:
    v29 = v12;
LABEL_8:
    sub_1000095E8(v29, &unk_1011842D0, &qword_100ECBF00);
    return 0;
  }

  (*(v24 + 16))(v7, v9, v25);
  sub_1000095E8(v9, &unk_101184730, &unk_100ECB920);
  Album.tracks.getter();
  (*(v24 + 8))(v7, v25);
  v26 = v62;
  v27 = *(v62 + 48);
  v28 = v61;
  if (v27(v12, 1, v61) == 1)
  {
    goto LABEL_7;
  }

  v31 = *(v26 + 32);
  v32 = v56;
  v31(v56, v12, v28);
  v33 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracks;
  swift_beginAccess();
  v34 = v0 + v33;
  v35 = v55;
  sub_1000089F8(v34, v55, &unk_1011842D0, &qword_100ECBF00);
  if (v27(v35, 1, v28) == 1)
  {
    (*(v26 + 8))(v32, v28);
    v29 = v35;
    goto LABEL_8;
  }

  v36 = v58;
  v31(v58, v35, v28);
  sub_100020674(&qword_1011913B0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v37 = dispatch thunk of Collection.distance(from:to:)();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v37 == dispatch thunk of Collection.distance(from:to:)())
  {
    v38 = v54;
    (*(v26 + 16))(v54, v32, v28);
    v39 = *(v53 + 36);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v40 = v51;
    v41 = v50;
    if (*(v38 + v39) == v63[0])
    {
LABEL_17:
      sub_1000095E8(v38, &unk_10118C0B0, &qword_100ECFA00);
      v46 = *(v62 + 8);
      v46(v58, v28);
      v46(v56, v28);
      return 0;
    }

    v60 = (v52 + 16);
    v42 = (v52 + 32);
    v59 = v52 + 8;
    while (1)
    {
      v43 = dispatch thunk of Collection.subscript.read();
      v44 = v28;
      v45 = v57;
      (*v60)(v57);
      v43(v63, 0);
      dispatch thunk of Collection.formIndex(after:)();
      (*v42)(v41, v45, v40);
      __chkstk_darwin();
      *(&v49 - 2) = v41;
      if (!sub_10044ADDC(sub_1004E5B00, (&v49 - 4)))
      {
        break;
      }

      (*v59)(v41, v40);
      dispatch thunk of Collection.endIndex.getter();
      v28 = v44;
      if (*(v38 + v39) == v63[0])
      {
        goto LABEL_17;
      }
    }

    sub_1000095E8(v38, &unk_10118C0B0, &qword_100ECFA00);
    v48 = *(v62 + 8);
    v48(v58, v44);
    v48(v56, v44);
    (*v59)(v41, v40);
  }

  else
  {
    v47 = *(v26 + 8);
    v47(v36, v28);
    v47(v32, v28);
  }

  return 1;
}

uint64_t sub_1004D71E8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Track();
  sub_1004E41B4(&unk_10118A620, &type metadata accessor for Track, &protocol conformance descriptor for Track);
  return static MusicItem<>.==~ infix(_:_:)() & 1;
}

uint64_t sub_1004D7280()
{
  v1 = v0;
  sub_10010FC20(&qword_1011846D0, &qword_100EDD110);
  __chkstk_darwin();
  v51 = &v45 - v2;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v50 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v49 = &v45 - v4;
  __chkstk_darwin();
  v54 = &v45 - v5;
  v55 = type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin();
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v48 = &v45 - v7;
  __chkstk_darwin();
  v53 = &v45 - v8;
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v10 = &v45 - v9;
  v11 = type metadata accessor for Album();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v45 - v15;
  __chkstk_darwin();
  v18 = &v45 - v17;
  __chkstk_darwin();
  v20 = &v45 - v19;
  v21 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  sub_1000089F8(v1 + v21, v10, &unk_101184730, &unk_100ECB920);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1000095E8(v10, &unk_101184730, &unk_100ECB920);
  }

  (*(v12 + 32))(v20, v10, v11);
  v23 = *(v12 + 16);
  v45 = v18;
  v46 = v20;
  v23(v18, v20, v11);
  v24 = v53;
  *v53 = 1;
  v25 = v24;
  swift_storeEnumTagMultiPayload();
  v26 = type metadata accessor for URL();
  v27 = v16;
  v28 = v54;
  (*(*(v26 - 8) + 56))();
  v23(v27, v18, v11);
  v29 = v48;
  sub_1004E40DC(v25, v48, type metadata accessor for ContainerDetail.Source);
  v55 = v12;
  v30 = v49;
  sub_1000089F8(v28, v49, &qword_101183A20, &unk_100EBCF80);
  v23(v14, v27, v11);
  v31 = v47;
  sub_1004E40DC(v29, v47, type metadata accessor for ContainerDetail.Source);
  v32 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
  v33 = v51;
  (*(*(v32 - 8) + 56))(v51, 1, 1, v32);
  v34 = v50;
  sub_1000089F8(v30, v50, &qword_101183A20, &unk_100EBCF80);
  v35 = sub_1004E34D0(v14, v31, v33, v34);
  sub_1000095E8(v30, &qword_101183A20, &unk_100EBCF80);
  sub_1004E414C(v29, type metadata accessor for ContainerDetail.Source);
  v36 = *(v55 + 8);
  v55 += 8;
  v36(v27, v11);
  v37 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
  v38 = sub_100137F64(v35, v37);
  sub_1000095E8(v54, &qword_101183A20, &unk_100EBCF80);
  sub_1004E414C(v53, type metadata accessor for ContainerDetail.Source);
  v36(v45, v11);
  v39 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  v40 = v52;
  swift_beginAccess();
  sub_1000089F8(v40 + v39, v56, &unk_1011926C0, &unk_100ECF870);
  if (v57)
  {

    sub_1000095E8(v56, &unk_1011926C0, &unk_100ECF870);
    v41 = v46;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v56, &unk_1011926C0, &unk_100ECF870);
    if (Strong)
    {
      sub_1000089F8(v52 + v39, v56, &unk_1011926C0, &unk_100ECF870);
      if (v57)
      {
        v43 = 0;
      }

      else
      {
        v43 = swift_unknownObjectWeakLoadStrong();
      }

      v44 = v46;
      sub_1000095E8(v56, &unk_1011926C0, &unk_100ECF870);
      [Strong showViewController:v38 sender:v43];

      v41 = v44;
    }

    else
    {

      v41 = v46;
    }
  }

  return (v36)(v41, v11);
}

void sub_1004D7980()
{
  v1 = *&v0[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    while (*(v4 + v3) != 7)
    {
      if (v2 == ++v3)
      {
        return;
      }
    }

    v5 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(&v0[v5], &aBlock, &unk_1011926C0, &unk_100ECF870);
    if (v14)
    {
      sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
      if (Strong)
      {
        v7 = v0;
        v8 = sub_1006A6078();

        v9 = swift_allocObject();
        *(v9 + 16) = v7;
        *(v9 + 24) = v3;
        v10 = swift_allocObject();
        *(v10 + 16) = sub_1004E5AC8;
        *(v10 + 24) = v9;
        v17 = sub_10018A020;
        v18 = v10;
        aBlock = _NSConcreteStackBlock;
        v14 = 1107296256;
        v15 = sub_100029B9C;
        v16 = &unk_1010AF2B0;
        v11 = _Block_copy(&aBlock);
        v12 = v7;

        [v8 performBatchUpdates:v11 completion:0];
        _Block_release(v11);
      }
    }
  }
}

BOOL sub_1004D7B68()
{
  v34 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v33 = *(v34 - 8);
  __chkstk_darwin();
  v2 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v31 = *(v32 - 8);
  __chkstk_darwin();
  v30 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v30 - v4;
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v7 = &v30 - v6;
  v8 = type metadata accessor for Album();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = (&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  sub_1000089F8(v0 + v12, v7, &unk_101184730, &unk_100ECB920);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000095E8(v7, &unk_101184730, &unk_100ECB920);
    return 0;
  }

  (*(v9 + 32))(v11, v7, v8);
  v13 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v0 + v13, v35, &unk_1011926C0, &unk_100ECF870);
  if (v35[8])
  {
    sub_1000095E8(v35, &unk_1011926C0, &unk_100ECF870);
    v14 = v5;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v35, &unk_1011926C0, &unk_100ECF870);
    v14 = v5;
    if (Strong)
    {
      v16 = [Strong traitCollection];

      v17 = [v16 userInterfaceIdiom];
      if (v17 == 6)
      {
        goto LABEL_17;
      }
    }
  }

  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v18 = *Player.state<A>(for:)(v11, v8, &protocol witness table for Album);
  (*(v18 + 256))();

  v19 = v33;
  v20 = v34;
  if ((*(v33 + 88))(v2, v34) != enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v9 + 8))(v11, v8);
    (*(v19 + 8))(v2, v20);
    return 0;
  }

  (*(v19 + 96))(v2, v20);
  v21 = v2;
  v22 = v31;
  v23 = v32;
  (*(v31 + 32))(v14, v21, v32);
  v24 = v30;
  (*(v22 + 104))(v30, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:), v23);
  v25 = static MusicPlayer.PlayabilityStatus.UnplayableReason.== infix(_:_:)();
  v26 = *(v22 + 8);
  v26(v24, v23);
  if ((v25 & 1) == 0)
  {
LABEL_16:
    v26(v14, v23);
LABEL_17:
    (*(v9 + 8))(v11, v8);
    return 0;
  }

  static ApplicationCapabilities.shared.getter(v35);
  v27 = v36;
  if ((sub_10048BBDC(5, v36) & 1) == 0)
  {
    sub_100014984(v35);
    goto LABEL_16;
  }

  v28 = sub_10048BBDC(0, v27);
  sub_100014984(v35);
  v26(v14, v23);
  (*(v9 + 8))(v11, v8);
  return (v28 & 1) != 0;
}

void sub_1004D8158()
{
  v1 = *&v0[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    while (*(v4 + v3) != 8)
    {
      if (v2 == ++v3)
      {
        return;
      }
    }

    v5 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(&v0[v5], &aBlock, &unk_1011926C0, &unk_100ECF870);
    if (v14)
    {
      sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
      if (Strong)
      {
        v7 = v0;
        v8 = sub_1006A6078();

        v9 = swift_allocObject();
        *(v9 + 16) = v7;
        *(v9 + 24) = v3;
        v10 = swift_allocObject();
        *(v10 + 16) = sub_1004E5A90;
        *(v10 + 24) = v9;
        v17 = sub_100029B94;
        v18 = v10;
        aBlock = _NSConcreteStackBlock;
        v14 = 1107296256;
        v15 = sub_100029B9C;
        v16 = &unk_1010AF238;
        v11 = _Block_copy(&aBlock);
        v12 = v7;

        [v8 performBatchUpdates:v11 completion:0];
        _Block_release(v11);
      }
    }
  }
}

void sub_1004D8340(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a3();
  v7 = *a4;
  if (v6)
  {
    if (*(a1 + *a4))
    {
      return;
    }

    *(a1 + v7) = 1;
    v8 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(a1 + v8, v14, &unk_1011926C0, &unk_100ECF870);
    if ((v15 & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v14, &unk_1011926C0, &unk_100ECF870);
      if (!Strong)
      {
        return;
      }

      v10 = sub_1006A6078();

      sub_10010FC20(&qword_10118AC80, &qword_100EC9020);
      type metadata accessor for IndexPath();
      *(swift_allocObject() + 16) = xmmword_100EBC6B0;
      IndexPath.init(item:section:)();
      v11.super.isa = Array._bridgeToObjectiveC()().super.isa;

      [v10 insertItemsAtIndexPaths:v11.super.isa];
      goto LABEL_11;
    }

LABEL_8:
    sub_1000095E8(v14, &unk_1011926C0, &unk_100ECF870);
    return;
  }

  if (!*(a1 + *a4))
  {
    return;
  }

  *(a1 + v7) = 0;
  v12 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(a1 + v12, v14, &unk_1011926C0, &unk_100ECF870);
  if (v15)
  {
    goto LABEL_8;
  }

  v13 = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v14, &unk_1011926C0, &unk_100ECF870);
  if (!v13)
  {
    return;
  }

  v10 = sub_1006A6078();

  sub_10010FC20(&qword_10118AC80, &qword_100EC9020);
  type metadata accessor for IndexPath();
  *(swift_allocObject() + 16) = xmmword_100EBC6B0;
  IndexPath.init(item:section:)();
  v11.super.isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 deleteItemsAtIndexPaths:v11.super.isa];
LABEL_11:
}

uint64_t sub_1004D8654(uint64_t a1, uint64_t a2)
{
  v3[36] = a2;
  v3[37] = v2;
  v3[35] = a1;
  v4 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v3[38] = v4;
  v3[39] = *(v4 - 8);
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v5 = type metadata accessor for Album();
  v3[43] = v5;
  v3[44] = *(v5 - 8);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v6 = type metadata accessor for Track();
  v3[48] = v6;
  v3[49] = *(v6 - 8);
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError(0);
  v3[54] = swift_task_alloc();
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v7 = type metadata accessor for IndexPath();
  v3[57] = v7;
  v3[58] = *(v7 - 8);
  v3[59] = swift_task_alloc();
  v3[60] = sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v8 = type metadata accessor for Song();
  v3[67] = v8;
  v3[68] = *(v8 - 8);
  v3[69] = swift_task_alloc();
  v9 = type metadata accessor for PlaybackIntentDescriptor(0);
  v3[70] = v9;
  v3[71] = *(v9 - 8);
  v3[72] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[73] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[74] = v11;
  v3[75] = v10;

  return _swift_task_switch(sub_1004D8A7C, v11, v10);
}

uint64_t sub_1004D8A7C()
{
  v1 = v0;
  v2 = *(v0 + 296);
  v3 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v2 + v3, v1 + 240, &unk_1011926C0, &unk_100ECF870);
  if (*(v1 + 248))
  {

    sub_1000095E8(v1 + 240, &unk_1011926C0, &unk_100ECF870);
LABEL_15:
    (*(*(v1 + 568) + 56))(*(v1 + 280), 1, 1, *(v1 + 560));

    v24 = *(v1 + 8);

    return v24();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v1 + 608) = Strong;
  sub_1000095E8(v1 + 240, &unk_1011926C0, &unk_100ECF870);
  if (!Strong)
  {

    goto LABEL_15;
  }

  v5 = *(v1 + 576);
  v6 = *(v1 + 288);
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0;
  *(v1 + 152) = xmmword_100EBCEF0;
  PresentationSource.init(viewController:position:)(Strong, v1 + 112, v1 + 16);
  sub_1004DB58C(v6, v5);
  v7 = *(v1 + 504);
  v8 = *(v1 + 456);
  v9 = *(v1 + 464);
  sub_1000089F8(*(v1 + 288), v7, &unk_10118BCE0, &qword_100EC6450);
  v10 = (*(v9 + 48))(v7, 1, v8);
  if (v10 == 1)
  {
    (*(*(v1 + 544) + 56))(*(v1 + 528), 1, 1, *(v1 + 536));
  }

  else
  {
    v11 = *(v1 + 528);
    (*(*(v1 + 464) + 32))(*(v1 + 472), *(v1 + 504), *(v1 + 456));
    sub_1004DA36C(v11);
    (*(*(v1 + 464) + 8))(*(v1 + 472), *(v1 + 456));
  }

  v12 = *(v1 + 544);
  v13 = *(v1 + 536);
  v14 = *(v1 + 528);
  if ((*(v12 + 48))(v14, 1, v13) == 1)
  {
    v15 = *(v1 + 448);
    v16 = *(v1 + 296);
    sub_1000095E8(v14, &unk_101183960, &unk_100EBCF90);
    v17 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
    swift_beginAccess();
    sub_1000089F8(v16 + v17, v15, &unk_101184730, &unk_100ECB920);
    v25 = sub_1004DAEC4;
    v18 = swift_task_alloc();
    *(v1 + 624) = v18;
    *v18 = v1;
    v18[1] = sub_1004DA040;
    v19 = *(v1 + 448);
  }

  else
  {
    v20 = *(v1 + 552);
    v21 = *(v1 + 520);
    (*(v12 + 32))(v20, v14, v13);
    (*(v12 + 16))(v21, v20, v13);
    (*(v12 + 56))(v21, 0, 1, v13);
    v25 = sub_1004DA740;
    v22 = swift_task_alloc();
    *(v1 + 616) = v22;
    *v22 = v1;
    v22[1] = sub_1004D9CF0;
    v19 = *(v1 + 520);
  }

  return v25(v19, v1 + 16);
}

uint64_t sub_1004D9CF0()
{
  v1 = *v0;
  v2 = *(*v0 + 520);

  sub_1000095E8(v2, &unk_101183960, &unk_100EBCF90);
  v3 = *(v1 + 600);
  v4 = *(v1 + 592);

  return _swift_task_switch(sub_1004D9E44, v4, v3);
}

uint64_t sub_1004D9E44()
{
  v1 = v0[76];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[67];

  (*(v3 + 8))(v2, v4);
  v5 = v0[72];
  v6 = v0[71];
  v7 = v0[70];
  v8 = v0[35];
  sub_10012BA6C((v0 + 2));
  sub_1004E59E0(v5, v8, type metadata accessor for PlaybackIntentDescriptor);
  (*(v6 + 56))(v8, 0, 1, v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004DA040()
{
  v1 = *v0;
  v2 = *(*v0 + 448);

  sub_1000095E8(v2, &unk_101184730, &unk_100ECB920);
  v3 = *(v1 + 600);
  v4 = *(v1 + 592);

  return _swift_task_switch(sub_1004DA194, v4, v3);
}

uint64_t sub_1004DA194()
{
  v1 = v0[76];

  v2 = v0[72];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[35];
  sub_10012BA6C((v0 + 2));
  sub_1004E59E0(v2, v5, type metadata accessor for PlaybackIntentDescriptor);
  (*(v3 + 56))(v5, 0, 1, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1004DA36C@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for Track();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101192800, &qword_100EE5630);
  __chkstk_darwin();
  v8 = v21 - v7;
  sub_10010FC20(&qword_10118A530, &qword_100EC64E0);
  __chkstk_darwin();
  v10 = v21 - v9;
  sub_1004DEB38(v8);
  v11 = type metadata accessor for AlbumDetailDataSource.CellType(0);
  if ((*(*(v11 - 8) + 48))(v8, 1, v11) == 1)
  {
    v12 = &unk_101192800;
    v13 = &qword_100EE5630;
    v14 = v8;
LABEL_5:
    sub_1000095E8(v14, v12, v13);
    v15 = type metadata accessor for Song();
    return (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
  }

  sub_10049FB9C(v10);
  sub_1004E414C(v8, type metadata accessor for AlbumDetailDataSource.CellType);
  if ((*(v4 + 48))(v10, 1, v3) == 1)
  {
    v12 = &qword_10118A530;
    v13 = &qword_100EC64E0;
    v14 = v10;
    goto LABEL_5;
  }

  (*(v4 + 16))(v6, v10, v3);
  if ((*(v4 + 88))(v6, v3) == enum case for Track.song(_:))
  {
    (*(v4 + 96))(v6, v3);
    v17 = type metadata accessor for Song();
    v18 = *(v17 - 8);
    (*(v18 + 32))(a2, v6, v17);
    (*(v18 + 56))(a2, 0, 1, v17);
    return (*(v4 + 8))(v10, v3);
  }

  else
  {
    v19 = type metadata accessor for Song();
    (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
    v20 = *(v4 + 8);
    v20(v6, v3);
    return (v20)(v10, v3);
  }
}

uint64_t sub_1004DA740(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for MusicLibrary.UpgradeOnPlayAction();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_10010FC20(&unk_101192828, &unk_100ECF9F0);
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for Song();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = type metadata accessor for MainActor();
  v2[16] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[17] = v7;
  v2[18] = v6;

  return _swift_task_switch(sub_1004DA940, v7, v6);
}

uint64_t sub_1004DA940()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  sub_1000089F8(v0[2], v3, &unk_101183960, &unk_100EBCF90);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[11];

    sub_1000095E8(v4, &unk_101183960, &unk_100EBCF90);
LABEL_6:

    v15 = v0[1];

    return v15();
  }

  v5 = v0[10];
  v21 = v0[9];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[4];
  (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  static MusicLibraryAction<>.upgradeOnPlayAction.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();

  (*(v8 + 8))(v9, v10);
  (*(v7 + 32))(v21, v5, v6);
  v11 = (*(v7 + 88))(v21, v6);
  v12 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
  (*(v7 + 8))(v21, v6);
  if (v11 != v12 || (v13 = [objc_opt_self() standardUserDefaults], v14 = NSUserDefaults.hasSeenDolbyDownloadConflictAlert.getter(), v13, (v14 & 1) != 0))
  {
    (*(v0[13] + 8))(v0[14], v0[12]);

    goto LABEL_6;
  }

  v17 = v0[3];
  v18 = static MainActor.shared.getter();
  v0[19] = v18;
  v19 = swift_task_alloc();
  v0[20] = v19;
  *(v19 + 16) = v17;
  v20 = swift_task_alloc();
  v0[21] = v20;
  *v20 = v0;
  v20[1] = sub_1004DACA8;

  return withCheckedContinuation<A>(isolation:function:_:)(v20, v18, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x8000000100E4E2F0, sub_1004E5A88, v19, &type metadata for () + 1);
}

uint64_t sub_1004DACA8()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return _swift_task_switch(sub_1004DAE08, v3, v2);
}

uint64_t sub_1004DAE08()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004DAEC4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for MusicLibrary.UpgradeOnPlayAction();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_10010FC20(&unk_101192828, &unk_100ECF9F0);
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for Album();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = type metadata accessor for MainActor();
  v2[16] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[17] = v7;
  v2[18] = v6;

  return _swift_task_switch(sub_1004DB0C4, v7, v6);
}

uint64_t sub_1004DB0C4()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  sub_1000089F8(v0[2], v3, &unk_101184730, &unk_100ECB920);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[11];

    sub_1000095E8(v4, &unk_101184730, &unk_100ECB920);
LABEL_6:

    v15 = v0[1];

    return v15();
  }

  v5 = v0[10];
  v21 = v0[9];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[4];
  (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  static MusicLibraryAction<>.upgradeOnPlayAction.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();

  (*(v8 + 8))(v9, v10);
  (*(v7 + 32))(v21, v5, v6);
  v11 = (*(v7 + 88))(v21, v6);
  v12 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
  (*(v7 + 8))(v21, v6);
  if (v11 != v12 || (v13 = [objc_opt_self() standardUserDefaults], v14 = NSUserDefaults.hasSeenDolbyDownloadConflictAlert.getter(), v13, (v14 & 1) != 0))
  {
    (*(v0[13] + 8))(v0[14], v0[12]);

    goto LABEL_6;
  }

  v17 = v0[3];
  v18 = static MainActor.shared.getter();
  v0[19] = v18;
  v19 = swift_task_alloc();
  v0[20] = v19;
  *(v19 + 16) = v17;
  v20 = swift_task_alloc();
  v0[21] = v20;
  *v20 = v0;
  v20[1] = sub_1004DB42C;

  return withCheckedContinuation<A>(isolation:function:_:)(v20, v18, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x8000000100E4E2F0, sub_1004EA724, v19, &type metadata for () + 1);
}

uint64_t sub_1004DB42C()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return _swift_task_switch(sub_1004EA71C, v3, v2);
}

uint64_t sub_1004DB58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v223 = a1;
  v190 = a2;
  v188 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v203 = &v178 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v214 = *(v4 - 8);
  v215 = v4;
  __chkstk_darwin();
  v189 = &v178 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011927E0, &qword_100ECF9B8);
  __chkstk_darwin();
  v182 = &v178 - v6;
  v184 = sub_10010FC20(&qword_101188E88, &unk_100ECBD70);
  v186 = *(v184 - 8);
  __chkstk_darwin();
  v183 = &v178 - v7;
  v8 = type metadata accessor for MusicPlaybackSource();
  v198 = *(v8 - 8);
  v199 = v8;
  __chkstk_darwin();
  v205 = &v178 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101188910, &qword_100EBE7A0);
  __chkstk_darwin();
  v200 = &v178 - v10;
  v209 = sub_10010FC20(&qword_101192810, &qword_100ECF9C8);
  __chkstk_darwin();
  v211 = &v178 - v11;
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v202 = &v178 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v181 = &v178 - v13;
  __chkstk_darwin();
  v192 = &v178 - v14;
  __chkstk_darwin();
  v187 = &v178 - v15;
  __chkstk_darwin();
  v220 = &v178 - v16;
  v221 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v219 = *(v221 - 8);
  __chkstk_darwin();
  v208 = &v178 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v207 = &v178 - v18;
  __chkstk_darwin();
  v218 = &v178 - v19;
  v20 = type metadata accessor for Track();
  v21 = *(v20 - 8);
  v225 = v20;
  v226 = v21;
  __chkstk_darwin();
  v217 = &v178 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_10118A530, &qword_100EC64E0);
  __chkstk_darwin();
  v201 = &v178 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v180 = &v178 - v24;
  __chkstk_darwin();
  v191 = &v178 - v25;
  __chkstk_darwin();
  v193 = &v178 - v26;
  __chkstk_darwin();
  v216 = &v178 - v27;
  __chkstk_darwin();
  v230 = &v178 - v28;
  v229 = type metadata accessor for AlbumDetailDataSource.CellType(0);
  v238 = *(v229 - 8);
  __chkstk_darwin();
  v206 = &v178 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v204 = &v178 - v30;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v222 = &v178 - v31;
  v32 = type metadata accessor for IndexPath();
  v227 = *(v32 - 8);
  v228 = v32;
  __chkstk_darwin();
  v213 = &v178 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101192800, &qword_100EE5630);
  __chkstk_darwin();
  v185 = (&v178 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v195 = (&v178 - v35);
  __chkstk_darwin();
  v212 = &v178 - v36;
  __chkstk_darwin();
  v38 = &v178 - v37;
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v40 = &v178 - v39;
  v41 = type metadata accessor for Album();
  v42 = *(v41 - 8);
  __chkstk_darwin();
  v196 = &v178 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v45 = (&v178 - v44);
  v46 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  v224 = v2;
  sub_1000089F8(&v2[v46], v40, &unk_101184730, &unk_100ECB920);
  if ((*(v42 + 48))(v40, 1, v41) == 1)
  {
    sub_1000095E8(v40, &unk_101184730, &unk_100ECB920);
    type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError(0);
    sub_1004E41B4(&qword_1011927E8, type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError, &unk_100ED028C);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v194 = v42;
  (*(v42 + 32))(v45, v40, v41);
  v48 = *(v238 + 56);
  v49 = v229;
  v48(v38, 1, 1, v229);
  v50 = v222;
  sub_1000089F8(v223, v222, &unk_10118BCE0, &qword_100EC6450);
  v51 = (*(v227 + 48))(v50, 1, v228);
  v52 = v38;
  v223 = v41;
  v210 = v38;
  if (v51 == 1)
  {
    sub_1000095E8(v50, &unk_10118BCE0, &qword_100EC6450);
    v53 = *(v238 + 48);
    v54 = (v238 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  }

  else
  {
    v178 = v48;
    v55 = v213;
    (*(v227 + 32))(v213, v50, v228);
    v56 = v212;
    sub_1004DEB38(v212);
    v57 = v56;
    v58 = v238 + 48;
    v53 = *(v238 + 48);
    if (v53(v57, 1, v229) == 1)
    {
      sub_1000095E8(v57, &unk_101192800, &qword_100EE5630);
      type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError(0);
      sub_1004E41B4(&qword_1011927E8, type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError, &unk_100ED028C);
      swift_allocError();
      v60 = v227;
      v59 = v228;
      (*(v227 + 16))(v61, v55, v228);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v60 + 8))(v55, v59);
      (*(v194 + 8))(v45, v41);
      v62 = v210;
      return sub_1000095E8(v62, &unk_101192800, &qword_100EE5630);
    }

    v54 = v58 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    (*(v227 + 8))(v55, v228);
    v63 = v204;
    sub_1004E59E0(v57, v204, type metadata accessor for AlbumDetailDataSource.CellType);
    sub_1000095E8(v52, &unk_101192800, &qword_100EE5630);
    v49 = v229;
    sub_1004E59E0(v63, v52, type metadata accessor for AlbumDetailDataSource.CellType);
    v178(v52, 0, 1, v49);
  }

  v228 = v53;
  v64 = v53(v52, 1, v49);
  v65 = v230;
  v67 = v225;
  v66 = v226;
  v68 = v216;
  v238 = v54;
  if (v64)
  {
    (*(v226 + 56))(v230, 1, 1, v225);
  }

  else
  {
    v69 = v206;
    sub_1004E40DC(v52, v206, type metadata accessor for AlbumDetailDataSource.CellType);
    sub_10049FB9C(v65);
    sub_1004E414C(v69, type metadata accessor for AlbumDetailDataSource.CellType);
  }

  sub_1000089F8(v65, v68, &qword_10118A530, &qword_100EC64E0);
  v227 = *(v66 + 48);
  v70 = (v227)(v68, 1, v67);
  v179 = v45;
  if (v70 == 1)
  {
    sub_1000095E8(v68, &qword_10118A530, &qword_100EC64E0);
    if (qword_10117F5F8 != -1)
    {
      swift_once();
    }

    v222 = qword_101218AC8;
    v71 = *Player.state<A>(for:)(v45, v223, &protocol witness table for Album);
    v72 = v208;
    (*(v71 + 256))();

    v73 = v218;
    v74 = v219;
    v75 = v221;
    v219[13](v218, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v221);
    v76 = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
    v77 = v74[1];
    v77(v73, v75);
    if ((v76 & 1) == 0)
    {
      v238 = type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError(0);
      sub_1004E41B4(&qword_1011927E8, type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError, &unk_100ED028C);
      swift_allocError();
      v105 = v104;
      v106 = *(sub_10010FC20(&qword_101192818, &unk_100ECF9D0) + 48);
      v107 = v194;
      (*(v194 + 16))(v105, v179, v223);
      v108 = (v105 + v106);
      v109 = v221;
      (v74)[2](v108, v72, v221);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v77(v72, v109);
      sub_1000095E8(v230, &qword_10118A530, &qword_100EC64E0);
      (*(v107 + 8))(v179, v223);
LABEL_59:
      v62 = v210;
      return sub_1000095E8(v62, &unk_101192800, &qword_100EE5630);
    }

    v77(v72, v75);
  }

  else
  {
    v213 = (v66 + 48);
    v78 = *(v66 + 32);
    v79 = v217;
    v78(v217, v68, v67);
    if (qword_10117F5F8 != -1)
    {
      swift_once();
    }

    v222 = qword_101218AC8;
    v80 = Player.state<A>(for:)(v79, v67, &protocol witness table for Track);
    v81 = v218;
    (*(*v80 + 256))();
    v82 = v219;
    v83 = v207;
    v84 = v221;
    v219[13](v207, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v221);
    v85 = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
    v86 = v82[1];
    v86(v83, v84);
    v86(v81, v84);
    if ((v85 & 1) == 0)
    {
      type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError(0);
      sub_1004E41B4(&qword_1011927E8, type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError, &unk_100ED028C);
      swift_allocError();
      v111 = v110;
      v112 = *(sub_10010FC20(&unk_1011927F0, &qword_100ECF9C0) + 48);
      v113 = v226;
      v114 = v217;
      (*(v226 + 16))(v111, v217, v67);
      *(v111 + v112) = v80;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v113 + 8))(v114, v67);
LABEL_27:
      sub_1000095E8(v230, &qword_10118A530, &qword_100EC64E0);
      (*(v194 + 8))(v179, v223);
      goto LABEL_59;
    }

    (*(v226 + 8))(v217, v67);
  }

  v87 = *(v214 + 56);
  v221 = v214 + 56;
  v219 = v87;
  (v87)(v220, 1, 1, v215);
  v88 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
  v89 = v224;
  swift_beginAccess();
  v90 = *(v209 + 48);
  v91 = type metadata accessor for MusicPropertySource();
  v92 = *(v91 - 8);
  v93 = &v89[v88];
  v94 = v211;
  (*(v92 + 16))(v211, v93, v91);
  sub_1000089F8(v210, v94 + v90, &unk_101192800, &qword_100EE5630);
  v95 = (*(v92 + 88))(v94, v91);
  if (v95 == enum case for MusicPropertySource.catalog(_:))
  {
    v96 = v228(v94 + v90, 1, v229);
    v97 = v230;
    v98 = v194;
    if (v96 != 1)
    {
      v238 = v90;
      sub_1000089F8(v94 + v90, v195, &unk_101192800, &qword_100EE5630);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        v229 = *v195;
        v234[0] = *(v229 + OBJC_IVAR____TtC5Music21ClassicalAlbumSection_workTracks);
        (*(v98 + 16))(v196, v179, v223);
        sub_1000089F8(v97, v193, &qword_10118A530, &qword_100EC64E0);
        v124 = v198;
        v125 = v199;
        v126 = v200;
        (*(v198 + 104))(v200, enum case for MusicPlaybackSource.catalog(_:), v199);
        (*(v124 + 56))(v126, 0, 1, v125);

        sub_10010FC20(&qword_10119ED90, &unk_100ECF7A0);
        sub_100020674(&qword_101192820, &qword_10119ED90, &unk_100ECF7A0, &protocol conformance descriptor for [A]);
        v103 = v187;
        MusicPlaybackIntentDescriptor.init<A, B, C>(items:of:startingAt:playbackSource:)();

        goto LABEL_35;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v234[0] = v195[1];
        (*(v98 + 16))(v196, v179, v223);
        sub_1000089F8(v97, v193, &qword_10118A530, &qword_100EC64E0);
        v101 = v198;
        v100 = v199;
        v102 = v200;
        (*(v198 + 104))(v200, enum case for MusicPlaybackSource.catalog(_:), v199);
        (*(v101 + 56))(v102, 0, 1, v100);
        v229 = sub_10010FC20(&qword_10119ED90, &unk_100ECF7A0);
        sub_100020674(&qword_101192820, &qword_10119ED90, &unk_100ECF7A0, &protocol conformance descriptor for [A]);
        v103 = v187;
        MusicPlaybackIntentDescriptor.init<A, B, C>(items:of:startingAt:playbackSource:)();
LABEL_35:
        v127 = v94;
        v128 = v220;
        sub_1000095E8(v220, &unk_10118CDB0, &unk_100EC0360);
        v129 = v215;
        (v219)(v103, 0, 1, v215);
        v130 = v103;
        v131 = v194;
        sub_10003D17C(v130, v128, &unk_10118CDB0, &unk_100EC0360);
        sub_1000095E8(v127 + v238, &unk_101192800, &qword_100EE5630);
        (*(v92 + 8))(v127, v91);
        v132 = v129;
        v133 = v179;
        v134 = v214;
LABEL_49:
        v149 = v202;
        sub_1000089F8(v128, v202, &unk_10118CDB0, &unk_100EC0360);
        v150 = (*(v134 + 48))(v149, 1, v132);
        v151 = v201;
        if (v150 == 1)
        {
          sub_1000095E8(v149, &unk_10118CDB0, &unk_100EC0360);
          type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError(0);
          sub_1004E41B4(&qword_1011927E8, type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError, &unk_100ED028C);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          v152 = v128;
        }

        else
        {
          v153 = v189;
          (*(v134 + 32))(v189, v149, v132);
          (*(v134 + 16))(v203, v153, v132);
          swift_storeEnumTagMultiPayload();
          sub_1000089F8(v230, v151, &qword_10118A530, &qword_100EC64E0);
          v154 = v225;
          if ((v227)(v151, 1, v225) == 1)
          {
            sub_1000095E8(v151, &qword_10118A530, &qword_100EC64E0);
            v155 = v223;
            v235 = v223;
            v236 = &protocol witness table for Album;
            v156 = sub_10001C8B8(v234);
            (*(v131 + 16))(v156, v133, v155);
          }

          else
          {
            *(&v232 + 1) = v154;
            v233 = &protocol witness table for Track;
            v157 = sub_10001C8B8(&v231);
            (*(v226 + 32))(v157, v151, v154);
            sub_100059A8C(&v231, v234);
          }

          v158 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
          v159 = v224;
          swift_beginAccess();
          sub_1000089F8(&v159[v158], &v231, &unk_1011926C0, &unk_100ECF870);
          if (BYTE8(v231))
          {
            sub_1000095E8(&v231, &unk_1011926C0, &unk_100ECF870);
            Strong = 0;
          }

          else
          {
            Strong = swift_unknownObjectWeakLoadStrong();
            sub_1000095E8(&v231, &unk_1011926C0, &unk_100ECF870);
          }

          *(&v232 + 1) = type metadata accessor for AlbumDetailDataSource(0);
          v233 = &off_1010AEFD0;
          *&v231 = v224;
          v161 = v224;
          PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v203, v234, 3, 0, 0, 1, 0, 1, v190, Strong, &v231);
          (*(v134 + 8))(v153, v132);
          v152 = v220;
        }

        sub_1000095E8(v152, &unk_10118CDB0, &unk_100EC0360);
        sub_1000095E8(v230, &qword_10118A530, &qword_100EC64E0);
        (*(v131 + 8))(v133, v223);
        goto LABEL_59;
      }

      (*(v226 + 8))(v195, v225);
      v90 = v238;
    }

    sub_1000095E8(v94 + v90, &unk_101192800, &qword_100EE5630);
    (*(v92 + 8))(v94, v91);
    static ApplicationCapabilities.shared.getter(v237);
    sub_100014984(v237);
    if (v237[8])
    {
      v140 = &enum case for MusicPlaybackSource.catalog(_:);
      v138 = v179;
      v132 = v215;
      v136 = v198;
      v135 = v199;
      v139 = v191;
    }

    else
    {
      v132 = v215;
      v136 = v198;
      v135 = v199;
      if (qword_10117F5F8 != -1)
      {
        swift_once();
      }

      v137 = (*(*v222 + 528))();
      v138 = v179;
      v139 = v191;
      if (v137)
      {

        v140 = &enum case for MusicPlaybackSource.catalog(_:);
      }

      else
      {
        v140 = &enum case for MusicPlaybackSource.library(_:);
      }
    }

    (*(v136 + 104))(v205, *v140, v135);
    v141 = v223;
    v235 = v223;
    v236 = &protocol witness table for Album;
    v142 = sub_10001C8B8(v234);
    (*(v98 + 16))(v142, v138, v141);
    sub_1000089F8(v230, v139, &qword_10118A530, &qword_100EC64E0);
    v143 = v225;
    v144 = v98;
    if ((v227)(v139, 1, v225) == 1)
    {
      sub_1000095E8(v139, &qword_10118A530, &qword_100EC64E0);
      v231 = 0u;
      v232 = 0u;
      v233 = 0;
    }

    else
    {
      *(&v232 + 1) = v143;
      v233 = &protocol witness table for Track;
      v145 = sub_10001C8B8(&v231);
      (*(v226 + 32))(v145, v139, v143);
    }

    v146 = v200;
    v147 = v205;
    (*(v136 + 16))(v200, v205, v135);
    (*(v136 + 56))(v146, 0, 1, v135);
    v148 = v192;
    MusicPlaybackIntentDescriptor.init(container:startingAt:playbackSource:)();
    (*(v136 + 8))(v147, v135);
    v128 = v220;
    sub_1000095E8(v220, &unk_10118CDB0, &unk_100EC0360);
    (v219)(v148, 0, 1, v132);
    sub_10003D17C(v148, v128, &unk_10118CDB0, &unk_100EC0360);
    v131 = v144;
    v134 = v214;
LABEL_48:
    v133 = v179;
    goto LABEL_49;
  }

  v115 = v230;
  if (v95 != enum case for MusicPropertySource.library(_:))
  {
    type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError(0);
    sub_1004E41B4(&qword_1011927E8, type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError, &unk_100ED028C);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1000095E8(v220, &unk_10118CDB0, &unk_100EC0360);
    sub_1000095E8(v115, &qword_10118A530, &qword_100EC64E0);
    (*(v194 + 8))(v179, v223);
    sub_1000095E8(v94, &qword_101192810, &qword_100ECF9C8);
    goto LABEL_59;
  }

  v116 = v228(v94 + v90, 1, v229);
  v117 = v194;
  v118 = v225;
  if (v116 != 1)
  {
    sub_1000089F8(v94 + v90, v185, &unk_101192800, &qword_100EE5630);
    v119 = swift_getEnumCaseMultiPayload();
    if (!v119)
    {
      v238 = *v185;
      v234[0] = *(v238 + OBJC_IVAR____TtC5Music21ClassicalAlbumSection_workTracks);
      (*(v117 + 16))(v196, v179, v223);
      sub_1000089F8(v230, v193, &qword_10118A530, &qword_100EC64E0);
      v163 = v198;
      v162 = v199;
      v164 = v200;
      (*(v198 + 104))(v200, enum case for MusicPlaybackSource.library(_:), v199);
      (*(v163 + 56))(v164, 0, 1, v162);

      sub_10010FC20(&qword_10119ED90, &unk_100ECF7A0);
      sub_100020674(&qword_101192820, &qword_10119ED90, &unk_100ECF7A0, &protocol conformance descriptor for [A]);
      v123 = v187;
      MusicPlaybackIntentDescriptor.init<A, B, C>(items:of:startingAt:playbackSource:)();

      goto LABEL_62;
    }

    v118 = v225;
    if (v119 == 1)
    {
      v234[0] = v185[1];
      (*(v117 + 16))(v196, v179, v223);
      sub_1000089F8(v230, v193, &qword_10118A530, &qword_100EC64E0);
      v121 = v198;
      v120 = v199;
      v122 = v200;
      (*(v198 + 104))(v200, enum case for MusicPlaybackSource.library(_:), v199);
      (*(v121 + 56))(v122, 0, 1, v120);
      v238 = sub_10010FC20(&qword_10119ED90, &unk_100ECF7A0);
      sub_100020674(&qword_101192820, &qword_10119ED90, &unk_100ECF7A0, &protocol conformance descriptor for [A]);
      v123 = v187;
      MusicPlaybackIntentDescriptor.init<A, B, C>(items:of:startingAt:playbackSource:)();
LABEL_62:
      v128 = v220;
      sub_1000095E8(v220, &unk_10118CDB0, &unk_100EC0360);
      (v219)(v123, 0, 1, v215);
      v165 = v123;
      v131 = v194;
      v134 = v214;
      sub_10003D17C(v165, v128, &unk_10118CDB0, &unk_100EC0360);
      v166 = v211;
      sub_1000095E8(&v211[v90], &unk_101192800, &qword_100EE5630);
      (*(v92 + 8))(v166, v91);
      v132 = v215;
      goto LABEL_48;
    }

    (*(v226 + 8))(v185, v225);
  }

  sub_1000095E8(v94 + v90, &unk_101192800, &qword_100EE5630);
  (*(v92 + 8))(v94, v91);
  v167 = v182;
  sub_1004C50FC(1, v182);
  v168 = v186;
  v169 = v184;
  if ((*(v186 + 48))(v167, 1, v184) == 1)
  {
    sub_1000095E8(v167, &qword_1011927E0, &qword_100ECF9B8);
    type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError(0);
    sub_1004E41B4(&qword_1011927E8, type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError, &unk_100ED028C);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1000095E8(v220, &unk_10118CDB0, &unk_100EC0360);
    goto LABEL_27;
  }

  v170 = v183;
  (*(v168 + 32))(v183, v167, v169);
  MusicLibrarySectionedRequest.ignoreExplicitContentRestrictions.setter();
  v235 = v169;
  v236 = sub_100020674(&qword_101188E90, &qword_101188E88, &unk_100ECBD70, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
  v171 = sub_10001C8B8(v234);
  (*(v168 + 16))(v171, v170, v169);
  v172 = v180;
  sub_1000089F8(v230, v180, &qword_10118A530, &qword_100EC64E0);
  v173 = (v227)(v172, 1, v118);
  v174 = v118;
  v133 = v179;
  if (v173 == 1)
  {
    sub_1000095E8(v172, &qword_10118A530, &qword_100EC64E0);
    v231 = 0u;
    v232 = 0u;
    v233 = 0;
  }

  else
  {
    *(&v232 + 1) = v174;
    v233 = &protocol witness table for Track;
    v175 = sub_10001C8B8(&v231);
    (*(v226 + 32))(v175, v172, v174);
  }

  v132 = v215;
  v128 = v220;
  v176 = v181;
  v177 = v197;
  MusicPlaybackIntentDescriptor.init(request:startingAt:)();
  v197 = v177;
  v134 = v214;
  if (!v177)
  {
    (*(v186 + 8))(v183, v169);
    sub_1000095E8(v128, &unk_10118CDB0, &unk_100EC0360);
    (v219)(v176, 0, 1, v132);
    sub_10003D17C(v176, v128, &unk_10118CDB0, &unk_100EC0360);
    v131 = v194;
    goto LABEL_49;
  }

  (*(v186 + 8))(v183, v169);
  sub_1000095E8(v128, &unk_10118CDB0, &unk_100EC0360);
  sub_1000095E8(v230, &qword_10118A530, &qword_100EC64E0);
  (*(v194 + 8))(v133, v223);
  return sub_1000095E8(v210, &unk_101192800, &qword_100EE5630);
}

uint64_t sub_1004DDAB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10010FC20(&unk_101192800, &qword_100EE5630);
  __chkstk_darwin();
  v5 = v15 - v4;
  v6 = type metadata accessor for Track();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = (v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1004DEB38(v5);
  v10 = type metadata accessor for AlbumDetailDataSource.CellType(0);
  if ((*(*(v10 - 8) + 48))(v5, 1, v10) == 1)
  {
    sub_1000095E8(v5, &unk_101192800, &qword_100EE5630);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      (*(v7 + 32))(v9, v5, v6);
      sub_1004DDD64(v9, a2);
      return (*(v7 + 8))(v9, v6);
    }

    sub_1004E414C(v5, type metadata accessor for AlbumDetailDataSource.CellType);
  }

  type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError(0);
  sub_1004E41B4(&qword_1011927E8, type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError, &unk_100ED028C);
  swift_allocError();
  v13 = v12;
  v14 = type metadata accessor for IndexPath();
  (*(*(v14 - 8) + 16))(v13, a1, v14);
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

void sub_1004DDD64(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v73 = a2;
  v70 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v72 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v85 = *(v88 - 8);
  __chkstk_darwin();
  v71 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011927E0, &qword_100ECF9B8);
  __chkstk_darwin();
  v77 = &v70 - v7;
  v79 = sub_10010FC20(&qword_101188E88, &unk_100ECBD70);
  v78 = *(v79 - 8);
  __chkstk_darwin();
  v74 = &v70 - v8;
  v90 = type metadata accessor for Track();
  v89 = *(v90 - 8);
  __chkstk_darwin();
  v81 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for MusicPropertySource();
  v87 = *(v83 - 8);
  __chkstk_darwin();
  v86 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v76 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v75 = &v70 - v12;
  __chkstk_darwin();
  v80 = &v70 - v13;
  __chkstk_darwin();
  v97 = &v70 - v14;
  v15 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v70 - v19;
  v21 = a1;
  v22 = Track.id.getter();
  v24 = v23;
  v25 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_playerStateCache;
  swift_beginAccess();
  v84 = v3;
  v26 = *&v3[v25];
  if (*(v26 + 16) && (, v27 = sub_100019C10(v22, v24), v29 = v28, , (v29 & 1) != 0))
  {
    v30 = *(*(v26 + 56) + 8 * v27);

    v32 = v90;
  }

  else
  {

    v32 = v90;
    if (qword_10117F5F8 != -1)
    {
      swift_once();
    }

    v31 = Player.state<A>(for:)(v21, v32, &protocol witness table for Track);
    v30 = v31;
  }

  (*(*v30 + 256))(v31);
  (*(v16 + 104))(v18, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v15);
  v33 = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
  v34 = *(v16 + 8);
  v34(v18, v15);
  v34(v20, v15);
  if ((v33 & 1) == 0)
  {
    type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError(0);
    sub_1004E41B4(&qword_1011927E8, type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError, &unk_100ED028C);
    swift_allocError();
    v46 = v45;
    v47 = *(sub_10010FC20(&unk_1011927F0, &qword_100ECF9C0) + 48);
    (*(v89 + 16))(v46, v21, v32);
    *(v46 + v47) = v30;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v35 = *(v85 + 56);
  v35(v97, 1, 1, v88);
  v36 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
  v37 = v84;
  swift_beginAccess();
  v38 = v87;
  v39 = &v37[v36];
  v40 = v86;
  v41 = v83;
  (*(v87 + 16))(v86, v39, v83);
  v42 = (*(v38 + 88))(v40, v41);
  if (v42 != enum case for MusicPropertySource.catalog(_:))
  {
    if (v42 != enum case for MusicPropertySource.library(_:))
    {
      type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError(0);
      sub_1004E41B4(&qword_1011927E8, type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError, &unk_100ED028C);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_1000095E8(v97, &unk_10118CDB0, &unk_100EC0360);
      (*(v87 + 8))(v86, v41);
      return;
    }

    v48 = v77;
    sub_1004C50FC(1, v77);
    v49 = v48;
    v50 = v78;
    v51 = v48;
    v52 = v79;
    if ((*(v78 + 48))(v51, 1, v79) == 1)
    {
      sub_1000095E8(v49, &qword_1011927E0, &qword_100ECF9B8);
      type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError(0);
      sub_1004E41B4(&qword_1011927E8, type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError, &unk_100ED028C);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      v53 = v74;
      (*(v50 + 32))(v74, v49, v52);
      MusicLibrarySectionedRequest<>.filterItems(equalTo:)();
      v95 = v52;
      v96 = sub_100020674(&qword_101188E90, &qword_101188E88, &unk_100ECBD70, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
      v54 = sub_10001C8B8(v94);
      (*(v50 + 16))(v54, v53, v52);
      v93 = 0;
      v91 = 0u;
      v92 = 0u;
      v55 = v82;
      MusicPlaybackIntentDescriptor.init(request:startingAt:)();
      if (!v55)
      {
        (*(v50 + 8))(v53, v52);
        sub_1000095E8(v97, &unk_10118CDB0, &unk_100EC0360);
        v43 = v75;
        goto LABEL_19;
      }

      (*(v50 + 8))(v53, v52);
    }

LABEL_25:
    v61 = v97;
    goto LABEL_26;
  }

  (*(v89 + 16))(v81, v21, v32);
  v43 = v80;
  v44 = v82;
  MusicPlaybackIntentDescriptor.init<A>(item:)();
  sub_1000095E8(v97, &unk_10118CDB0, &unk_100EC0360);
  if (v44)
  {

    return;
  }

LABEL_19:
  v56 = v88;
  v35(v43, 0, 1, v88);
  v57 = v97;
  sub_10003D17C(v43, v97, &unk_10118CDB0, &unk_100EC0360);
  v58 = v57;
  v59 = v76;
  sub_1000089F8(v58, v76, &unk_10118CDB0, &unk_100EC0360);
  v60 = v85;
  if ((*(v85 + 48))(v59, 1, v56) != 1)
  {
    v62 = v71;
    v63 = v88;
    (*(v60 + 32))(v71, v59, v88);
    v64 = v72;
    (*(v60 + 16))(v72, v62, v63);
    swift_storeEnumTagMultiPayload();
    v65 = v90;
    v95 = v90;
    v96 = &protocol witness table for Track;
    v66 = sub_10001C8B8(v94);
    (*(v89 + 16))(v66, v21, v65);
    v67 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(&v37[v67], &v91, &unk_1011926C0, &unk_100ECF870);
    if (BYTE8(v91))
    {
      sub_1000095E8(&v91, &unk_1011926C0, &unk_100ECF870);
      Strong = 0;
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v91, &unk_1011926C0, &unk_100ECF870);
    }

    *(&v92 + 1) = type metadata accessor for AlbumDetailDataSource(0);
    v93 = &off_1010AEFD0;
    *&v91 = v37;
    v69 = v37;
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v64, v94, 3, 0, 0, 1, 0, 1, v73, Strong, &v91);

    (*(v60 + 8))(v62, v88);
    goto LABEL_25;
  }

  sub_1000095E8(v59, &unk_10118CDB0, &unk_100EC0360);
  type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError(0);
  sub_1004E41B4(&qword_1011927E8, type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError, &unk_100ED028C);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v61 = v97;
LABEL_26:
  sub_1000095E8(v61, &unk_10118CDB0, &unk_100EC0360);
}

unint64_t sub_1004DEB38@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v4 + 32;
    while (*(v7 + v6) != 2)
    {
      if (v5 == ++v6)
      {
        goto LABEL_5;
      }
    }

    if (IndexPath.section.getter() == v6)
    {
      v14 = *(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentingCells);
      if (v14)
      {

        if (IndexPath.item.getter() < *(v14 + 16))
        {
          result = IndexPath.item.getter();
          if ((result & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else
          {
            v15 = result;
            if (result < *(v14 + 16))
            {
              v16 = type metadata accessor for AlbumDetailDataSource.CellType(0);
              v17 = *(v16 - 8);
              sub_1004E40DC(v14 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v15, a2, type metadata accessor for AlbumDetailDataSource.CellType);

              v9 = *(v17 + 56);
              v11 = a2;
              v12 = 0;
              v10 = v16;
              goto LABEL_7;
            }
          }

          __break(1u);
          return result;
        }
      }
    }
  }

  else
  {
LABEL_5:
    IndexPath.section.getter();
  }

  v8 = type metadata accessor for AlbumDetailDataSource.CellType(0);
  v9 = *(*(v8 - 8) + 56);
  v10 = v8;
  v11 = a2;
  v12 = 1;
LABEL_7:

  return v9(v11, v12, 1, v10);
}

void sub_1004DECFC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v6 = type metadata accessor for Track();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(type metadata accessor for AlbumDetailDataSource.CellType(0) - 8);
  __chkstk_darwin();
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v27 - v13;
  v34 = a2;
  if (a2 && (v15 = *(v3 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections), (v16 = *(v15 + 16)) != 0))
  {
    v17 = 0;
    v18 = v15 + 32;
    while (*(v18 + v17) != 2)
    {
      if (v16 == ++v17)
      {
        goto LABEL_6;
      }
    }

    v28 = a3;
    v21 = *(v3 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentingCells);
    if (v21 && (v32 = *(v21 + 16)) != 0)
    {
      v31 = v21 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v29 = (v7 + 8);
      v30 = (v7 + 32);

      v22 = 0;
      while (v22 < *(v21 + 16))
      {
        sub_1004E40DC(v31 + *(v10 + 72) * v22, v14, type metadata accessor for AlbumDetailDataSource.CellType);
        sub_1004E40DC(v14, v12, type metadata accessor for AlbumDetailDataSource.CellType);
        if (swift_getEnumCaseMultiPayload() < 2)
        {
          sub_1004E414C(v14, type metadata accessor for AlbumDetailDataSource.CellType);
          sub_1004E414C(v12, type metadata accessor for AlbumDetailDataSource.CellType);
        }

        else
        {
          (*v30)(v9, v12, v6);
          v23 = MusicItem.contains(_:)();
          (*v29)(v9, v6);
          sub_1004E414C(v14, type metadata accessor for AlbumDetailDataSource.CellType);
          if (v23)
          {

            v24 = v28;
            IndexPath.init(item:section:)();
            v25 = type metadata accessor for IndexPath();
            (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
            return;
          }
        }

        if (v32 == ++v22)
        {

          goto LABEL_19;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_19:
      v26 = type metadata accessor for IndexPath();
      (*(*(v26 - 8) + 56))(v28, 1, 1, v26);
    }
  }

  else
  {
LABEL_6:
    v19 = type metadata accessor for IndexPath();
    v20 = *(*(v19 - 8) + 56);

    v20(a3, 1, 1, v19);
  }
}

uint64_t sub_1004DF100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10010FC20(&qword_10118A530, &qword_100EC64E0);
  __chkstk_darwin();
  v6 = &v22[-v5];
  v7 = type metadata accessor for Track();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000089F8(a1, v6, &qword_10118A530, &qword_100EC64E0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000095E8(v6, &qword_10118A530, &qword_100EC64E0);
LABEL_8:
    v15 = type metadata accessor for IndexPath();
    return (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
  }

  (*(v8 + 32))(v10, v6, v7);
  v11 = *(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections);
  v12 = *(v11 + 16);
  if (!v12)
  {
LABEL_7:
    (*(v8 + 8))(v10, v7);
    goto LABEL_8;
  }

  v13 = 0;
  v14 = v11 + 32;
  while (*(v14 + v13) != 2)
  {
    if (v12 == ++v13)
    {
      goto LABEL_7;
    }
  }

  v17 = *(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentingCells);
  if (v17 && (__chkstk_darwin(), *&v22[-16] = v10, , sub_100735698(sub_1004E5A48, &v22[-32], v17), v19 = v18, , (v19 & 1) == 0))
  {
    IndexPath.init(item:section:)();
    v21 = type metadata accessor for IndexPath();
    (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
  }

  else
  {
    v20 = type metadata accessor for IndexPath();
    (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1004DF438(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Track();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AlbumDetailDataSource.CellType(0);
  __chkstk_darwin();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004E40DC(a1, v8, type metadata accessor for AlbumDetailDataSource.CellType);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    (*(v4 + 32))(v6, v8, v3);
    sub_1004E41B4(&unk_10118A620, &type metadata accessor for Track, &protocol conformance descriptor for Track);
    v9 = static MusicItem<>.==~ infix(_:_:)();
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    sub_1004E414C(v8, type metadata accessor for AlbumDetailDataSource.CellType);
    v9 = 0;
  }

  return v9 & 1;
}

double sub_1004DF62C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10010FC20(&qword_10118A530, &qword_100EC64E0);
  __chkstk_darwin();
  v5 = &v15 - v4;
  v6 = type metadata accessor for Track();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011846D0, &qword_100EDD110);
  __chkstk_darwin();
  v11 = (&v15 - v10);
  sub_1000089F8(a1, &v15 - v10, &qword_1011846D0, &qword_100EDD110);
  v12 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    v13 = type metadata accessor for IndexPath();
    (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v9, v11, v6);
    (*(v7 + 16))(v5, v9, v6);
    (*(v7 + 56))(v5, 0, 1, v6);
    sub_1004DF100(v5, a2);
    sub_1000095E8(v5, &qword_10118A530, &qword_100EC64E0);
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    sub_1004DECFC(*v11, v11[1], a2);
  }

  return result;
}

uint64_t sub_1004DF8FC@<X0>(void *a1@<X8>)
{
  v40 = a1;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v37 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v38 = &v36 - v3;
  v4 = type metadata accessor for MusicPropertySource();
  v39 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v8 = &v36 - v7;
  v9 = type metadata accessor for Album();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  sub_1000089F8(v1 + v13, v8, &unk_101184730, &unk_100ECB920);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000095E8(v8, &unk_101184730, &unk_100ECB920);
    v14 = type metadata accessor for MetricsEvent.Page(0);
    return (*(*(v14 - 8) + 56))(v40, 1, 1, v14);
  }

  (*(v10 + 32))(v12, v8, v9);
  v16 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
  swift_beginAccess();
  v17 = v39;
  (*(v39 + 16))(v6, v1 + v16, v4);
  v18 = (*(v17 + 88))(v6, v4);
  if (v18 == enum case for MusicPropertySource.catalog(_:))
  {
    v19 = v1;
    v20 = Album.catalogID.getter();
    if (v21)
    {
      v22 = v21;
      v39 = v20;
    }

    else
    {
      v39 = Album.id.getter();
      v22 = v26;
    }

    v27 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sourceURL;
    swift_beginAccess();
    v28 = v37;
    sub_1000089F8(v19 + v27, v37, &qword_101183A20, &unk_100EBCF80);
    v29 = type metadata accessor for URL();
    v30 = *(v29 - 8);
    v31 = *(v30 + 48);
    if (v31(v28, 1, v29) == 1)
    {
      v32 = v38;
      Album.url.getter();
      v33 = v32;
      (*(v10 + 8))(v12, v9);
      v34 = v31(v28, 1, v29);
      v24 = v40;
      if (v34 != 1)
      {
        sub_1000095E8(v28, &qword_101183A20, &unk_100EBCF80);
      }
    }

    else
    {
      (*(v10 + 8))(v12, v9);
      v33 = v38;
      (*(v30 + 32))(v38, v28, v29);
      (*(v30 + 56))(v33, 0, 1, v29);
      v24 = v40;
    }

    MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(v39, v22, 0x6D75626C41, 0xE500000000000000, v33, 0, 0, 0, v24, 1, 0, 0, 2);
  }

  else
  {
    if (v18 != enum case for MusicPropertySource.library(_:))
    {
      (*(v10 + 8))(v12, v9);
      v25 = type metadata accessor for MetricsEvent.Page(0);
      (*(*(v25 - 8) + 56))(v40, 1, 1, v25);
      return (*(v17 + 8))(v6, v4);
    }

    v23 = MetricsEvent.Page.libraryAlbumDetail.unsafeMutableAddressor();
    v24 = v40;
    sub_1004E40DC(v23, v40, type metadata accessor for MetricsEvent.Page);
    (*(v10 + 8))(v12, v9);
  }

  v35 = type metadata accessor for MetricsEvent.Page(0);
  return (*(*(v35 - 8) + 56))(v24, 0, 1, v35);
}

unint64_t sub_1004DFF28()
{
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v2 = &v14 - v1;
  v3 = type metadata accessor for Album();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011972C0, &qword_100ECF9B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBEF50;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = 0x7365746F6ELL;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 72) = &type metadata for String;
  strcpy((inited + 80), "locationType");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = 0x656E6961746E6F43;
  *(inited + 104) = 0xEF6C696174654472;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 1684957547;
  *(inited + 136) = 0xE400000000000000;
  *(inited + 144) = 0x6D75626C61;
  *(inited + 152) = 0xE500000000000000;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0xD000000000000010;
  *(inited + 216) = &type metadata for Int;
  *(inited + 184) = 0x8000000100E4E2D0;
  *(inited + 192) = 0;
  v8 = sub_10010BC60(inited);
  swift_setDeallocating();
  sub_10010FC20(&unk_1011927D0, &unk_100EBA560);
  swift_arrayDestroy();
  v9 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  sub_1000089F8(v0 + v9, v2, &unk_101184730, &unk_100ECB920);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1000095E8(v2, &unk_101184730, &unk_100ECB920);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v10 = Album.title.getter();
    v18 = &type metadata for String;
    *&v17 = v10;
    *(&v17 + 1) = v11;
    sub_100016270(&v17, v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = v8;
    sub_1006C5E68(v16, 1701667182, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    (*(v4 + 8))(v6, v3);
    return v15;
  }

  return v8;
}

uint64_t sub_1004E0274@<X0>(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  v34 = a2;
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  __chkstk_darwin();
  v4 = &v30[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v30[-v5];
  __chkstk_darwin();
  v8 = &v30[-v7];
  v9 = type metadata accessor for MetricsEvent.Page(0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1004DF8FC(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000095E8(v8, &unk_1011838F0, &qword_100EC1070);
    v13 = type metadata accessor for Actions.MetricsReportingContext(0);
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  else
  {
    sub_1004E59E0(v8, v12, type metadata accessor for MetricsEvent.Page);
    sub_1004E40DC(v12, v6, type metadata accessor for MetricsEvent.Page);
    v15 = *(v10 + 56);
    v15(v6, 0, 1, v9);
    sub_10010FC20(&unk_1011927C0, &unk_100ED6A50);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100EBC6B0;
    *(v16 + 32) = sub_1004DFF28();
    sub_1000089F8(v6, v4, &unk_1011838F0, &qword_100EC1070);
    MetricsReportingController.shared.unsafeMutableAddressor();
    v17 = sub_10053771C();
    v32 = v18;
    v33 = v17;
    if (qword_10117F600 != -1)
    {
      swift_once();
    }

    v19 = qword_101218AD0;
    v31 = GroupActivitiesManager.hasJoined.getter();
    v20 = GroupActivitiesManager.participantsCount.getter();
    sub_1000095E8(v6, &unk_1011838F0, &qword_100EC1070);
    sub_1004E414C(v12, type metadata accessor for MetricsEvent.Page);
    v21 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    v22 = *(v19 + v21);
    v23 = type metadata accessor for Actions.MetricsReportingContext(0);
    v24 = v23[5];
    v15(a1 + v24, 1, 1, v9);
    v25 = v23[7];
    v26 = (a1 + v23[6]);
    v27 = v23[8];
    *a1 = v34;
    sub_10006B010(v4, a1 + v24, &unk_1011838F0, &qword_100EC1070);
    v28 = v32;
    *v26 = v33;
    v26[1] = v28;
    *(a1->n128_u64 + v25) = v16;
    *(a1->n128_u64 + v27) = 0;
    v29 = a1 + v23[9];
    *v29 = v31 & 1;
    *(v29 + 1) = v20;
    *(v29 + 2) = v22;
    return (*(*(v23 - 1) + 56))(a1, 0, 1, v23);
  }
}

uint64_t sub_1004E06A0(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v3 + v4, v6, &unk_1011926C0, &unk_100ECF870);
  swift_beginAccess();
  sub_1002190E0(a1, v3 + v4, &unk_1011926C0, &unk_100ECF870);
  swift_endAccess();
  sub_1004AB7A8(v6);
  sub_1000095E8(a1, &unk_1011926C0, &unk_100ECF870);
  return sub_1000095E8(v6, &unk_1011926C0, &unk_100ECF870);
}

uint64_t sub_1004E0774()
{
  v1 = *(*v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID);

  return v1;
}

uint64_t sub_1004E07FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_prominentItemIndexPath;
  swift_beginAccess();
  return sub_1000089F8(v3 + v4, a1, &unk_10118BCE0, &qword_100EC6450);
}

uint64_t sub_1004E0944@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
  swift_beginAccess();
  v5 = type metadata accessor for MusicPropertySource();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_1004E09D0()
{
  v0 = *AccessibilityIdentifier.albumView.unsafeMutableAddressor();

  return v0;
}

uint64_t sub_1004E0A20()
{
  if (qword_10117F6F8 != -1)
  {
    swift_once();
  }

  v0 = qword_101218CA8;

  return v0;
}

uint64_t sub_1004E0AD0()
{
  if (*(*v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingShowCompleteAlbumSection))
  {
    return 1;
  }

  else
  {
    return *(*v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingStoreNavigationSection);
  }
}

unint64_t sub_1004E0B34()
{
  v1 = *(*v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState);
  if ((v1 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
  {
    return 0;
  }

  if ((v1 >> 62) > 2)
  {
    LOBYTE(v1) = 1;
  }

  return v1 & 1;
}

void sub_1004E0DC4(uint64_t a1)
{
  v3 = *(type metadata accessor for MusicPropertySource() - 8);
  v5 = __chkstk_darwin();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 30 != 1 && (a1 >> 30 != 2 || a1 != 2147483652) && (*(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_allowsCatalogFallback) & 1) != 0)
  {
    v8 = v4;
    (*(v3 + 104))(v7, enum case for MusicPropertySource.library(_:), v4, v5);
    v9 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
    swift_beginAccess();
    (*(v3 + 40))(v1 + v9, v7, v8);
    swift_endAccess();
    sub_1004AF430(v10);
  }
}

uint64_t sub_1004E0F38()
{
  v1 = v0;
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v3 = &v16 - v2;
  v4 = type metadata accessor for Album();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v18, "AlbumDetail(");
  BYTE5(v18[1]) = 0;
  HIWORD(v18[1]) = -5120;
  v8 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  sub_1000089F8(v1 + v8, v3, &unk_101184730, &unk_100ECB920);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000095E8(v3, &unk_101184730, &unk_100ECB920);
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    _StringGuts.grow(_:)(33);
    v9._object = 0x8000000100E4E2B0;
    v9._countAndFlagsBits = 0xD00000000000001FLL;
    String.append(_:)(v9);
    type metadata accessor for AlbumDetailDataSource.LoadingSource(0);
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v17);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v17._countAndFlagsBits = 3826793;
    v17._object = 0xE300000000000000;
    Album.id.getter();
    v10 = MusicItemID.description.getter();
    v12 = v11;

    v13._countAndFlagsBits = v10;
    v13._object = v12;
    String.append(_:)(v13);

    String.append(_:)(v17);

    (*(v5 + 8))(v7, v4);
  }

  v14._countAndFlagsBits = 41;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  return v18[0];
}

uint64_t Album.mappingContent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Album();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  v4 = enum case for MusicLibraryMapping.ItemContent.fetchedCatalogItem<A>(_:);
  v5 = sub_10010FC20(&qword_101192210, &unk_100ECF4E0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

uint64_t sub_1004E12C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004E41B4(&qword_101192B90, &type metadata accessor for Album, &protocol conformance descriptor for Album);

  return MusicLibraryMappingItem<>.mappingID.getter(a1, a2, v4);
}

uint64_t sub_1004E134C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*(a1 - 8) + 16))(a2, v2, a1);
  v4 = enum case for MusicLibraryMapping.ItemContent.fetchedCatalogItem<A>(_:);
  v5 = sub_10010FC20(&qword_101192210, &unk_100ECF4E0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a2, v4, v5);
}

void sub_1004E1428(uint64_t a1)
{
  sub_10003920C(319, &qword_101192410, &qword_101192418, &qword_100ECF5B0);
  if (v1 <= 0x3F)
  {
    sub_10003920C(319, &qword_101192420, &qword_101192428, &qword_100ECF5B8);
    if (v2 <= 0x3F)
    {
      sub_10003920C(319, &qword_101192430, &qword_101192438, &unk_100ECF5C0);
      if (v3 <= 0x3F)
      {
        sub_10003920C(319, &unk_101192440, &qword_1011A4520, &qword_100EE47C0);
        if (v4 <= 0x3F)
        {
          sub_10003920C(319, &unk_101192450, &unk_1011A4B80, &unk_100ECF5D0);
          if (v5 <= 0x3F)
          {
            sub_10003920C(319, &qword_101184580, &qword_101184588, &unk_100EC02C0);
            if (v6 <= 0x3F)
            {
              sub_1004E1AA0(319);
              if (v7 <= 0x3F)
              {
                sub_10003920C(319, &unk_101192470, &unk_1011A4560, &qword_100ECF5E0);
                if (v8 <= 0x3F)
                {
                  sub_1004E1B18(319, &unk_101192480, &type metadata accessor for IndexPath);
                  if (v9 <= 0x3F)
                  {
                    sub_1004E1B18(319, &qword_1011A4570, &type metadata accessor for Artwork);
                    if (v10 <= 0x3F)
                    {
                      sub_1004E1B18(319, &qword_101192490, &type metadata accessor for Album);
                      if (v11 <= 0x3F)
                      {
                        type metadata accessor for MusicPropertySource();
                        if (v12 <= 0x3F)
                        {
                          type metadata accessor for AlbumDetailDataSource.LoadingSource(319);
                          if (v13 <= 0x3F)
                          {
                            sub_1004E1B18(319, &qword_10118F1D8, _s6AlbumsV5ScopeOMa);
                            if (v14 <= 0x3F)
                            {
                              sub_1004E1B18(319, &qword_1011814C0, &type metadata accessor for URL);
                              if (v15 <= 0x3F)
                              {
                                sub_10003920C(319, &qword_10118F6F8, &unk_1011841D0, &qword_100EC5DB0);
                                if (v16 <= 0x3F)
                                {
                                  sub_1004E1B18(319, &qword_101192498, type metadata accessor for AlbumDetailDataSource.ProminentTrackSource);
                                  if (v17 <= 0x3F)
                                  {
                                    swift_updateClassMetadata2();
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1004E1AA0(uint64_t a1)
{
  if (!qword_101192460)
  {
    sub_100009F78(255, &unk_101184750, UICollectionViewCell_ptr);
    type metadata accessor for RelatedContentSpacing.Data(255);
    v1 = type metadata accessor for UICollectionView.CellRegistration();
    if (!v2)
    {
      atomic_store(v1, &qword_101192460);
    }
  }
}

void sub_1004E1B18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_1004E1B98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1004E1BF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1004E1C78(uint64_t a1)
{
  result = type metadata accessor for Album();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Song();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for MusicVideo();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1004E1D68(uint64_t a1)
{
  if (!qword_101192670)
  {
    sub_1001109D0(&qword_10119ED90, &unk_100ECF7A0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_101192670);
    }
  }
}

void sub_1004E1DE0(uint64_t a1)
{
  if (!qword_101192680[0])
  {
    type metadata accessor for Track();
    sub_1001109D0(&qword_101184A70, &qword_100EC0680);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_101192680);
    }
  }
}

void sub_1004E1E60(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1001EBFF0;
  *(v7 + 24) = v6;
  v9[4] = sub_1002CF914;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1002B8A68;
  v9[3] = &unk_1010AF8F0;
  v8 = _Block_copy(v9);

  [a1 setUniversalStoreIdentifiersWithBlock:v8];
  _Block_release(v8);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }
}

uint64_t sub_1004E1FC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Track();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v21 - v8;
  sub_10010FC20(&unk_101192790, &qword_100ECF998);
  __chkstk_darwin();
  v11 = (&v21 - v10);
  v13 = (&v21 + *(v12 + 56) - v10);
  sub_1004E40DC(a1, &v21 - v10, type metadata accessor for AlbumDetailDataSource.ProminentTrackSource);
  sub_1004E40DC(a2, v13, type metadata accessor for AlbumDetailDataSource.ProminentTrackSource);
  type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = *(v5 + 32);
      v14(v9, v11, v4);
      v14(v7, v13, v4);
      sub_1004E41B4(&unk_10118A620, &type metadata accessor for Track, &protocol conformance descriptor for Track);
      v15 = static MusicItem<>.==~ infix(_:_:)();
      v16 = *(v5 + 8);
      v16(v7, v4);
      v16(v9, v4);
      return v15 & 1;
    }

    (*(v5 + 32))(v9, v11, v4);
    v15 = MusicItem.contains(_:)();
LABEL_7:

    (*(v5 + 8))(v9, v4);
    return v15 & 1;
  }

  v18 = *v11;
  v17 = v11[1];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v9, v13, v4);
    v15 = MusicItem.contains(_:)();
    goto LABEL_7;
  }

  if (v18 == *v13 && v17 == v13[1])
  {

    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

uint64_t sub_1004E2338(uint64_t a1, uint64_t a2)
{
  v101 = _s6AlbumsV5ScopeOMa(0);
  v100 = *(v101 - 8);
  __chkstk_darwin();
  v97 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_10010FC20(&qword_101192758, &unk_100ECF978);
  __chkstk_darwin();
  v102 = &v96 - v5;
  sub_10010FC20(&unk_1011926F0, &qword_100ECF890);
  __chkstk_darwin();
  v98 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v103 = &v96 - v7;
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v113 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v114 = &v96 - v9;
  __chkstk_darwin();
  v112 = &v96 - v10;
  __chkstk_darwin();
  v115 = &v96 - v11;
  __chkstk_darwin();
  v106 = &v96 - v12;
  __chkstk_darwin();
  v110 = &v96 - v13;
  v120 = type metadata accessor for Album();
  v118 = *(v120 - 8);
  __chkstk_darwin();
  v107 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v109 = &v96 - v15;
  __chkstk_darwin();
  v105 = &v96 - v16;
  __chkstk_darwin();
  v111 = &v96 - v17;
  __chkstk_darwin();
  v104 = &v96 - v18;
  __chkstk_darwin();
  v108 = &v96 - v19;
  v20 = type metadata accessor for MusicPropertySource();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v117 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v96 - v23;
  __chkstk_darwin();
  v26 = &v96 - v25;
  v27 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
  swift_beginAccess();
  v28 = *(v21 + 16);
  v119 = a1;
  v28(v26, a1 + v27, v20);
  v29 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
  swift_beginAccess();
  v116 = a2;
  v28(v24, a2 + v29, v20);
  LOBYTE(a2) = static MusicPropertySource.== infix(_:_:)();
  v30 = *(v21 + 8);
  v30(v24, v20);
  v30(v26, v20);
  if ((a2 & 1) == 0)
  {
    goto LABEL_15;
  }

  v31 = v119;
  v32 = v117;
  v28(v117, v119 + v27, v20);
  v33 = (*(v21 + 88))(v32, v20);
  v34 = v31;
  if (v33 != enum case for MusicPropertySource.catalog(_:))
  {
    v42 = v118;
    v43 = v120;
    if (v33 != enum case for MusicPropertySource.library(_:))
    {
      v30(v32, v20);
      goto LABEL_15;
    }

    v44 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
    swift_beginAccess();
    v45 = v110;
    sub_1000089F8(v31 + v44, v110, &unk_101184730, &unk_100ECB920);
    v46 = *(v42 + 48);
    if (v46(v45, 1, v43) == 1)
    {
LABEL_9:
      sub_1000095E8(v45, &unk_101184730, &unk_100ECB920);
LABEL_15:
      v59 = 0;
      return v59 & 1;
    }

    v47 = *(v42 + 32);
    v48 = v108;
    v47(v108, v45, v43);
    v49 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
    v50 = v116;
    swift_beginAccess();
    v51 = v50 + v49;
    v45 = v106;
    sub_1000089F8(v51, v106, &unk_101184730, &unk_100ECB920);
    if (v46(v45, 1, v43) == 1)
    {
      (*(v42 + 8))(v48, v43);
      goto LABEL_9;
    }

    v67 = v104;
    v47(v104, v45, v43);
    sub_1004E41B4(&unk_101192760, &type metadata accessor for Album, &protocol conformance descriptor for Album);
    if ((static MusicItem<>.==~ infix(_:_:)() & 1) == 0)
    {
      v87 = *(v42 + 8);
      v87(v67, v43);
      v87(v48, v43);
      goto LABEL_15;
    }

    v68 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_scope;
    v69 = v119;
    swift_beginAccess();
    v70 = v69 + v68;
    v71 = v103;
    sub_1000089F8(v70, v103, &unk_1011926F0, &qword_100ECF890);
    v72 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_scope;
    v73 = v116;
    swift_beginAccess();
    v74 = *(v99 + 48);
    v75 = v102;
    sub_1000089F8(v71, v102, &unk_1011926F0, &qword_100ECF890);
    sub_1000089F8(v73 + v72, v75 + v74, &unk_1011926F0, &qword_100ECF890);
    v76 = *(v100 + 48);
    v77 = v101;
    if (v76(v75, 1, v101) == 1)
    {
      sub_1000095E8(v71, &unk_1011926F0, &qword_100ECF890);
      v78 = *(v42 + 8);
      v79 = v120;
      v78(v104, v120);
      v78(v108, v79);
      if (v76(v75 + v74, 1, v77) == 1)
      {
        sub_1000095E8(v75, &unk_1011926F0, &qword_100ECF890);
        goto LABEL_49;
      }
    }

    else
    {
      v88 = v98;
      sub_1000089F8(v75, v98, &unk_1011926F0, &qword_100ECF890);
      if (v76(v75 + v74, 1, v77) != 1)
      {
        v91 = v75 + v74;
        v92 = v97;
        sub_1004E59E0(v91, v97, _s6AlbumsV5ScopeOMa);
        v93 = sub_10028C5F4(v88, v92);
        sub_1004E414C(v92, _s6AlbumsV5ScopeOMa);
        sub_1000095E8(v103, &unk_1011926F0, &qword_100ECF890);
        v94 = *(v42 + 8);
        v95 = v120;
        v94(v104, v120);
        v94(v108, v95);
        v73 = v116;
        sub_1004E414C(v88, _s6AlbumsV5ScopeOMa);
        sub_1000095E8(v75, &unk_1011926F0, &qword_100ECF890);
        if ((v93 & 1) == 0)
        {
          goto LABEL_15;
        }

LABEL_49:
        v59 = *(v119 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeOnlyDownloadedContent) ^ *(v73 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeOnlyDownloadedContent) ^ 1;
        return v59 & 1;
      }

      sub_1000095E8(v103, &unk_1011926F0, &qword_100ECF890);
      v89 = *(v42 + 8);
      v90 = v120;
      v89(v104, v120);
      v89(v108, v90);
      sub_1004E414C(v88, _s6AlbumsV5ScopeOMa);
    }

    sub_1000095E8(v75, &qword_101192758, &unk_100ECF978);
    goto LABEL_15;
  }

  v35 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  v36 = v115;
  sub_1000089F8(v31 + v35, v115, &unk_101184730, &unk_100ECB920);
  v37 = v118;
  v38 = *(v118 + 48);
  v39 = v120;
  if (v38(v36, 1, v120) == 1)
  {
    v40 = v36;
    v41 = v116;
  }

  else
  {
    v52 = *(v37 + 32);
    v53 = v111;
    v52(v111, v36, v39);
    v54 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
    v41 = v116;
    swift_beginAccess();
    v55 = v41 + v54;
    v39 = v120;
    v56 = v112;
    sub_1000089F8(v55, v112, &unk_101184730, &unk_100ECB920);
    if (v38(v56, 1, v39) != 1)
    {
      v65 = v105;
      v52(v105, v56, v39);
      sub_1004E41B4(&unk_101192760, &type metadata accessor for Album, &protocol conformance descriptor for Album);
      v59 = static MusicItem<>.==~ infix(_:_:)();
      v66 = *(v37 + 8);
      v66(v65, v39);
      v66(v53, v39);
      return v59 & 1;
    }

    (*(v37 + 8))(v53, v39);
    v34 = v119;
    v40 = v56;
  }

  sub_1000095E8(v40, &unk_101184730, &unk_100ECB920);
  v57 = v34 + v35;
  v58 = v114;
  sub_1000089F8(v57, v114, &unk_101184730, &unk_100ECB920);
  if (v38(v58, 1, v39) == 1)
  {
    sub_1000095E8(v58, &unk_101184730, &unk_100ECB920);
  }

  else
  {
    v61 = v109;
    (*(v37 + 32))(v109, v58, v39);
    if (*(v41 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID + 8))
    {
      goto LABEL_22;
    }

    (*(v37 + 8))(v61, v39);
  }

  v62 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  v63 = v41 + v62;
  v64 = v113;
  sub_1000089F8(v63, v113, &unk_101184730, &unk_100ECB920);
  if (v38(v64, 1, v39) != 1)
  {
    v61 = v107;
    (*(v37 + 32))(v107, v64, v39);
    if (!*(v34 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID + 8))
    {
      (*(v37 + 8))(v61, v39);
      goto LABEL_29;
    }

LABEL_22:

    v59 = MusicItem.contains(_:)();

    (*(v37 + 8))(v61, v39);
    return v59 & 1;
  }

  sub_1000095E8(v64, &unk_101184730, &unk_100ECB920);
LABEL_29:
  v80 = *(v34 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID + 8);
  if (v80)
  {
    v81 = *(v41 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID + 8);
    if (v81)
    {
      if (*(v34 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID) != *(v41 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID) || v80 != v81)
      {
        v59 = _stringCompareWithSmolCheck(_:_:expecting:)();
        return v59 & 1;
      }

LABEL_41:
      v59 = 1;
      return v59 & 1;
    }
  }

  v82 = sub_10049FE90();
  v84 = v83;
  v85 = sub_10049FE90();
  if (!v84)
  {
    if (!v86)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (!v86)
  {
LABEL_40:

    goto LABEL_15;
  }

  if (v82 == v85 && v84 == v86)
  {

    v59 = 1;
  }

  else
  {
    v59 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v59 & 1;
}

void sub_1004E3320(void *a1, __n128 a2)
{
  v4 = type metadata accessor for PlacementID();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  if (!a1)
  {
    v8 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v2 + v8, v14, &unk_1011926C0, &unk_100ECF870);
    if (v14[8])
    {
      sub_1000095E8(v14, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v14, &unk_1011926C0, &unk_100ECF870);
      if (Strong)
      {
        v10 = sub_1006A4900();

        if (v10)
        {
          static PlacementID.BubbleTip.showInClassicalAppButton.getter();
          dispatch thunk of PopoverProvider.removeRegistration(for:)();

          (*(v5 + 8))(v7, v4);
        }
      }
    }
  }

  v11 = *(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_openInClassicalBarButtonItem);
  *(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_openInClassicalBarButtonItem) = a1;
  v12 = a1;

  sub_1004B21F8();
}

char *sub_1004E34D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v99 = a4;
  v100 = a3;
  v102 = a2;
  v90 = sub_10010FC20(&unk_101191A70, &unk_100EBF360);
  __chkstk_darwin();
  v89 = &v86 - v5;
  v6 = type metadata accessor for Album();
  v101 = *(v6 - 8);
  v7 = v101;
  __chkstk_darwin();
  v95 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v94 = &v86 - v9;
  sub_10010FC20(&unk_1011842D0, &qword_100ECBF00);
  __chkstk_darwin();
  v92 = &v86 - v10;
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v91 = &v86 - v11;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v13 = &v86 - v12;
  sub_10010FC20(&qword_1011846D0, &qword_100EDD110);
  __chkstk_darwin();
  v15 = &v86 - v14;
  v88 = type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin();
  v93 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v86 - v17;
  type metadata accessor for AlbumDetailDataSource.LoadingSource(0);
  v19 = __chkstk_darwin();
  v21 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v7 + 16);
  v22(v21, a1, v6, v19);
  swift_storeEnumTagMultiPayload();
  v23 = Album.catalogID.getter();
  v25 = v24;
  sub_1004E40DC(v102, v18, type metadata accessor for ContainerDetail.Source);
  sub_1000089F8(v100, v15, &qword_1011846D0, &qword_100EDD110);
  sub_1000089F8(v99, v13, &qword_101183A20, &unk_100EBCF80);
  v26 = objc_allocWithZone(type metadata accessor for AlbumDetailDataSource(0));
  v27 = v25;
  v87 = v18;
  v28 = a1;
  v29 = sub_1004A0128(v21, v23, v27, v18, v15, v13);
  v30 = v91;
  v97 = v22;
  v98 = v7 + 16;
  (v22)(v91, a1, v6);
  v31 = v30;
  (*(v101 + 56))(v30, 0, 1, v6);
  v32 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  v33 = v29;
  sub_10006B010(v31, &v29[v32], &unk_101184730, &unk_100ECB920);
  swift_endAccess();
  v34 = v92;
  Album.tracks.getter();
  v35 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracks;
  swift_beginAccess();
  sub_10006B010(v34, &v33[v35], &unk_1011842D0, &qword_100ECBF00);
  swift_endAccess();
  sub_1004B2C94();
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_1000060E4(v36, qword_1012193F8);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "╭ Creating album detail data source", v39, 2u);
  }

  v40 = v94;
  v97(v94, v28, v6);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v6;
  v96 = v28;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v106[0] = v46;
    *v45 = 136446210;
    sub_1004E41B4(&unk_1011926D0, &type metadata accessor for Album, &protocol conformance descriptor for Album);
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v48;
    v50 = v40;
    v51 = v44;
    v94 = *(v101 + 8);
    (v94)(v50, v44);
    v52 = sub_1000105AC(v47, v49, v106);

    *(v45 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v41, v42, "| Album: %{public}s", v45, 0xCu);
    sub_10000959C(v46);
  }

  else
  {

    v53 = v40;
    v51 = v6;
    v94 = *(v101 + 8);
    (v94)(v53, v6);
  }

  v54 = v93;
  sub_1004E40DC(v102, v93, type metadata accessor for ContainerDetail.Source);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();
  v57 = os_log_type_enabled(v55, v56);
  v58 = v95;
  if (v57)
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v106[0] = v60;
    *v59 = 136446210;
    sub_1004E40DC(v54, v87, type metadata accessor for ContainerDetail.Source);
    v61 = String.init<A>(describing:)();
    v62 = v54;
    v63 = v61;
    v65 = v64;
    sub_1004E414C(v62, type metadata accessor for ContainerDetail.Source);
    v66 = sub_1000105AC(v63, v65, v106);

    *(v59 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v55, v56, "| Source: %{public}s", v59, 0xCu);
    sub_10000959C(v60);
  }

  else
  {

    sub_1004E414C(v54, type metadata accessor for ContainerDetail.Source);
  }

  v67 = v96;
  v97(v58, v96, v51);
  v68 = v33;
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v105 = v72;
    *v71 = 136446210;
    v73 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(&v68[v73], &v103, &unk_1011926C0, &unk_100ECF870);
    if (v104)
    {
      sub_1000095E8(&v103, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v103, &unk_1011926C0, &unk_100ECF870);
      if (Strong)
      {
        v76 = [Strong traitCollection];
        sub_100137E8C();
        UITraitCollection.subscript.getter();

        MusicLibrary.state<A>(for:)();

        v77 = v89;
        dispatch thunk of MusicLibrary.ItemState.addStatus.getter();

        v78 = 0;
LABEL_18:
        v79 = type metadata accessor for MusicLibrary.AddStatus();
        (*(*(v79 - 8) + 56))(v77, v78, 1, v79);
        v80 = String.init<A>(describing:)();
        v82 = v81;
        v83 = v94;
        (v94)(v95, v51);
        v84 = sub_1000105AC(v80, v82, &v105);

        *(v71 + 4) = v84;
        _os_log_impl(&_mh_execute_header, v69, v70, "╰ Add Status: %{public}s", v71, 0xCu);
        sub_10000959C(v72);

        sub_1000095E8(v99, &qword_101183A20, &unk_100EBCF80);
        sub_1000095E8(v100, &qword_1011846D0, &qword_100EDD110);
        sub_1004E414C(v102, type metadata accessor for ContainerDetail.Source);
        v83(v96, v51);
        return v68;
      }
    }

    v78 = 1;
    v77 = v89;
    goto LABEL_18;
  }

  sub_1000095E8(v99, &qword_101183A20, &unk_100EBCF80);
  sub_1000095E8(v100, &qword_1011846D0, &qword_100EDD110);
  sub_1004E414C(v102, type metadata accessor for ContainerDetail.Source);
  v74 = v94;
  (v94)(v67, v51);
  v74(v58, v51);
  return v68;
}

uint64_t sub_1004E40DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004E414C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1004E41B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1004E425C()
{
  result = qword_101192740;
  if (!qword_101192740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101192740);
  }

  return result;
}

char *sub_1004E42B0(char *a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v5 = type metadata accessor for MusicVideo();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v40 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v9 = &v39 - v8;
  sub_10010FC20(&qword_1011846D0, &qword_100EDD110);
  __chkstk_darwin();
  v11 = &v39 - v10;
  type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin();
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AlbumDetailDataSource.LoadingSource(0);
  v14 = __chkstk_darwin();
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v6;
  v17 = *(v6 + 16);
  v17(v16, a1, v5, v14);
  swift_storeEnumTagMultiPayload();
  v42 = a2;
  sub_1004E40DC(a2, v13, type metadata accessor for ContainerDetail.Source);
  (v17)(v11, a1, v5);
  v18 = enum case for Track.musicVideo(_:);
  v19 = type metadata accessor for Track();
  (*(*(v19 - 8) + 104))(v11, v18, v19);
  v20 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v20 - 8) + 56))(v11, 0, 1, v20);
  sub_1000089F8(v43, v9, &qword_101183A20, &unk_100EBCF80);
  v21 = objc_allocWithZone(type metadata accessor for AlbumDetailDataSource(0));
  v22 = sub_1004A0128(v16, 0, 0, v13, v11, v9);
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_1000060E4(v23, qword_1012193F8);
  v24 = v40;
  (v17)(v40, a1, v5);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v39 = a1;
    v28 = v22;
    v29 = v27;
    v30 = swift_slowAlloc();
    v44 = v30;
    *v29 = 136446210;
    sub_1004E41B4(&unk_1011927B0, &type metadata accessor for MusicVideo, &protocol conformance descriptor for MusicVideo);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v24;
    v34 = v33;
    v35 = *(v41 + 8);
    v35(v32, v5);
    v36 = sub_1000105AC(v31, v34, &v44);

    *(v29 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v25, v26, "Creating album detail data source from musicVideo: %{public}s", v29, 0xCu);
    sub_10000959C(v30);

    v22 = v28;

    sub_1000095E8(v43, &qword_101183A20, &unk_100EBCF80);
    sub_1004E414C(v42, type metadata accessor for ContainerDetail.Source);
    v35(v39, v5);
  }

  else
  {

    sub_1000095E8(v43, &qword_101183A20, &unk_100EBCF80);
    sub_1004E414C(v42, type metadata accessor for ContainerDetail.Source);
    v37 = *(v41 + 8);
    v37(a1, v5);
    v37(v24, v5);
  }

  return v22;
}

char *sub_1004E484C(char *a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v5 = type metadata accessor for Song();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v41 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v9 = &v39 - v8;
  sub_10010FC20(&qword_1011846D0, &qword_100EDD110);
  __chkstk_darwin();
  v11 = (&v39 - v10);
  type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin();
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AlbumDetailDataSource.LoadingSource(0);
  v14 = __chkstk_darwin();
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v6;
  v17 = *(v6 + 16);
  v42 = v5;
  v17(v16, a1, v5, v14);
  swift_storeEnumTagMultiPayload();
  v43 = a2;
  sub_1004E40DC(a2, v13, type metadata accessor for ContainerDetail.Source);
  *v11 = Song.id.getter();
  v11[1] = v18;
  v19 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v19 - 8) + 56))(v11, 0, 1, v19);
  sub_1000089F8(v45, v9, &qword_101183A20, &unk_100EBCF80);
  v20 = objc_allocWithZone(type metadata accessor for AlbumDetailDataSource(0));
  v21 = sub_1004A0128(v16, 0, 0, v13, v11, v9);
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000060E4(v22, qword_1012193F8);
  v23 = v41;
  v24 = v42;
  (v17)(v41, a1, v42);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v40 = a1;
    v28 = v27;
    v29 = swift_slowAlloc();
    v46 = v29;
    *v28 = 136446210;
    sub_1004E41B4(&unk_101183F40, &type metadata accessor for Song, &protocol conformance descriptor for Song);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v23;
    v32 = v24;
    v34 = v33;
    v35 = *(v44 + 8);
    v35(v31, v32);
    v36 = sub_1000105AC(v30, v34, &v46);

    *(v28 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v25, v26, "Creating album detail data source from song: %{public}s", v28, 0xCu);
    sub_10000959C(v29);

    sub_1000095E8(v45, &qword_101183A20, &unk_100EBCF80);
    sub_1004E414C(v43, type metadata accessor for ContainerDetail.Source);
    v35(v40, v32);
  }

  else
  {

    sub_1000095E8(v45, &qword_101183A20, &unk_100EBCF80);
    sub_1004E414C(v43, type metadata accessor for ContainerDetail.Source);
    v37 = *(v44 + 8);
    v37(a1, v24);
    v37(v23, v24);
  }

  return v21;
}

char *sub_1004E4D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a5;
  v38 = a6;
  v36 = a4;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v10 = &v35 - v9;
  sub_10010FC20(&qword_1011846D0, &qword_100EDD110);
  __chkstk_darwin();
  v12 = (&v35 - v11);
  type metadata accessor for AlbumDetailDataSource.LoadingSource(0);
  __chkstk_darwin();
  v14 = (&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin();
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v35 - v17;
  v39 = a3;
  sub_1004E40DC(a3, &v35 - v17, type metadata accessor for ContainerDetail.Source);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v19 = a1;
    v20 = a2;
  }

  else
  {
    sub_1000095E8(v18, &unk_1011926F0, &qword_100ECF890);
    v19 = 0;
    v20 = 0;
  }

  *v14 = a1;
  v14[1] = a2;
  swift_storeEnumTagMultiPayload();
  sub_1004E40DC(v39, v16, type metadata accessor for ContainerDetail.Source);
  v21 = v37;
  v22 = v38;
  if (v37)
  {
    *v12 = v36;
    v12[1] = v21;
    v23 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v23 - 8) + 56))(v12, 0, 1, v23);
  }

  else
  {
    v24 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
    (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
  }

  sub_1000089F8(v22, v10, &qword_101183A20, &unk_100EBCF80);
  objc_allocWithZone(type metadata accessor for AlbumDetailDataSource(0));

  v25 = sub_1004A0128(v14, v19, v20, v16, v12, v10);
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_1000060E4(v26, qword_1012193F8);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v41 = v20;
    v42 = v30;
    *v29 = 136446210;
    v40 = v19;
    sub_10010FC20(&unk_1011A49A0, &qword_100ECF970);
    v31 = String.init<A>(describing:)();
    v33 = sub_1000105AC(v31, v32, &v42);

    *(v29 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v27, v28, "Creating album detail data source with album id: %{public}s", v29, 0xCu);
    sub_10000959C(v30);
  }

  else
  {
  }

  sub_1000095E8(v22, &qword_101183A20, &unk_100EBCF80);
  sub_1004E414C(v39, type metadata accessor for ContainerDetail.Source);
  return v25;
}

char *sub_1004E5248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v9 = &v28 - v8;
  sub_10010FC20(&qword_1011846D0, &qword_100EDD110);
  __chkstk_darwin();
  v11 = (&v28 - v10);
  type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AlbumDetailDataSource.LoadingSource(0);
  __chkstk_darwin();
  v15 = (&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v15 = a1;
  v15[1] = a2;
  swift_storeEnumTagMultiPayload();
  v28 = a3;
  sub_1004E40DC(a3, v13, type metadata accessor for ContainerDetail.Source);
  *v11 = a1;
  v11[1] = a2;
  v16 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v16 - 8) + 56))(v11, 0, 1, v16);
  sub_1000089F8(a4, v9, &qword_101183A20, &unk_100EBCF80);
  objc_allocWithZone(type metadata accessor for AlbumDetailDataSource(0));
  swift_bridgeObjectRetain_n();
  v17 = sub_1004A0128(v15, 0, 0, v13, v11, v9);
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000060E4(v18, qword_1012193F8);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v29 = v22;
    *v21 = 136446210;
    v23 = MusicItemID.description.getter();
    v25 = v24;

    v26 = sub_1000105AC(v23, v25, &v29);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v19, v20, "Creating album detail data source from song id: %{public}s", v21, 0xCu);
    sub_10000959C(v22);
  }

  else
  {
  }

  sub_1000095E8(a4, &qword_101183A20, &unk_100EBCF80);
  sub_1004E414C(v28, type metadata accessor for ContainerDetail.Source);
  return v17;
}

uint64_t sub_1004E562C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Track();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v29 - v8;
  sub_10010FC20(&qword_1011927A0, &qword_100ECF9A0);
  __chkstk_darwin();
  v11 = (&v29 - v10);
  v13 = (&v29 + *(v12 + 56) - v10);
  sub_1004E40DC(a1, &v29 - v10, type metadata accessor for AlbumDetailDataSource.CellType);
  sub_1004E40DC(a2, v13, type metadata accessor for AlbumDetailDataSource.CellType);
  type metadata accessor for AlbumDetailDataSource.CellType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v19 = *v11;
    v20 = swift_getEnumCaseMultiPayload();
    if (!v20)
    {
      v18 = sub_1003D0B1C(v19, *v13);

      return v18 & 1;
    }

    if (v20 != 1)
    {

LABEL_14:
      (*(v5 + 8))(v13, v4);
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v15 = *v11;

    v16 = swift_getEnumCaseMultiPayload();
    if (v16)
    {
      if (v16 == 1)
      {
        v17 = *v13;

        v18 = v15 == v17;
        return v18 & 1;
      }

      goto LABEL_14;
    }

LABEL_9:
    sub_1004E414C(v13, type metadata accessor for AlbumDetailDataSource.CellType);
LABEL_15:
    v18 = 0;
    return v18 & 1;
  }

  v21 = *(sub_10010FC20(&qword_1011927A8, &qword_100ECF9A8) + 48);
  v22 = *(v11 + v21);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    sub_1004E414C(v13, type metadata accessor for AlbumDetailDataSource.CellType);
    (*(v5 + 8))(v11, v4);
    goto LABEL_15;
  }

  v30 = *(v11 + v21 + 8);
  v29 = *(v13 + v21);
  v24 = *(v13 + v21 + 8);
  v25 = *(v5 + 32);
  v25(v9, v11, v4);
  v25(v7, v13, v4);
  sub_1004E41B4(&unk_10118A620, &type metadata accessor for Track, &protocol conformance descriptor for Track);
  v26 = static MusicItem<>.==~ infix(_:_:)();
  v27 = *(v5 + 8);
  v27(v7, v4);
  v27(v9, v4);
  v28 = (v22 == v29) & ~v24;
  if (v30)
  {
    v28 = v26 & v24;
  }

  if (v26)
  {
    v18 = v28;
  }

  else
  {
    v18 = v26 & v24;
  }

  return v18 & 1;
}

uint64_t sub_1004E59E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1004E5B40(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEF8)
  {
    return sub_1004E5B60(result, a2, a3);
  }

  return v3;
}

double sub_1004E5B60(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0xFFFFFFFFFFFFFEFCLL) != 0x3FFFFFEFCLL && (result & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFALL)
  {
    return sub_1004E5B90(result, a2, a3);
  }

  return v4;
}

double sub_1004E5B90(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!(a1 >> 62))
  {
  }

  return result;
}

double sub_1004E5BA4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL)
  {
    return sub_1004E5B90(a1, a2, a3);
  }

  return result;
}

double sub_1004E5BE4(uint64_t result, unint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    return sub_1004E5BF8(result, a2);
  }

  return v2;
}

double sub_1004E5BF8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 == 1)
  {
  }

  else if (!(a2 >> 62))
  {
    swift_unknownObjectRetain();
  }

  return result;
}

double sub_1004E5C14(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    return sub_1004E5C28(a1, a2);
  }

  return result;
}

double sub_1004E5C28(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 == 1)
  {
  }

  else if (!(a2 >> 62))
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004E5C48(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Album() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100008F30;

  return sub_1004CF084(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

void sub_1004E5DB4(uint64_t a1, char *a2, void *a3)
{
  if ((a2 - 1) >= 2)
  {
    v4 = a3;

    v5 = a2;
  }
}

void sub_1004E5DFC(uint64_t a1, char *a2, void *a3)
{
  if ((a2 - 1) >= 2)
  {
  }
}

void sub_1004E5E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {

    sub_100030444(a3, a4);
  }
}

void sub_1004E5E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {

    sub_100020438(a3, a4);
  }
}

uint64_t sub_1004E5EDC(uint64_t a1, char a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100008F30;

  return sub_1004CB0F8(a1, a2, v2);
}

double sub_1004E6028(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_1004E6050()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_1004C873C();
}

uint64_t sub_1004E6104(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1004CD4B4(a1, v4, v5, v6);
}

uint64_t sub_1004E61B8(unint64_t a1)
{
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v4 = v19 - v3 + 16;
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_41;
  }

  v5 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections);
  if (*(v5 + 16) <= a1)
  {
    goto LABEL_42;
  }

  v6 = *(v5 + a1 + 32);
  if (v6 <= 4)
  {
    if (v6 <= 1)
    {
      if (v6)
      {
        return *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingBannerSection);
      }

      v7 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState);
      if ((v7 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL || v7 >> 62 != 3 && (v7 & 1) == 0)
      {
        v8 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
        swift_beginAccess();
        sub_1000089F8(v1 + v8, v4, &unk_101184730, &unk_100ECB920);
        v9 = type metadata accessor for Album();
        v10 = (*(*(v9 - 8) + 48))(v4, 1, v9) != 1;
        sub_1000095E8(v4, &unk_101184730, &unk_100ECB920);
        return v10;
      }

      return 0;
    }

    if (v6 == 2)
    {
      v12 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentingCells);
      if (v12)
      {
        return *(v12 + 16);
      }

      return 0;
    }

    if (v6 == 4)
    {
      return *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingNoContentSection);
    }

    goto LABEL_44;
  }

  if (v6 <= 7)
  {
    if (v6 == 6)
    {
      return *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingDetailSection);
    }

    if (v6 == 7)
    {
      return *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingShowCompleteAlbumSection);
    }

    goto LABEL_44;
  }

  if (v6 == 8)
  {
    return *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingStoreNavigationSection);
  }

  if (v6 != 10)
  {
LABEL_44:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v13 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v13, v19, &unk_1011926C0, &unk_100ECF870);
  if (v20)
  {
    sub_1000095E8(v19, &unk_1011926C0, &unk_100ECF870);
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v19, &unk_1011926C0, &unk_100ECF870);
  if (!Strong)
  {
    return 0;
  }

  v15 = Strong[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_isShowingRelatedContent];

  if ((v15 & 1) == 0)
  {
    return 0;
  }

  sub_1000089F8(v1 + v13, v19, &unk_1011926C0, &unk_100ECF870);
  if (v20)
  {
    sub_1000095E8(v19, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    v16 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v19, &unk_1011926C0, &unk_100ECF870);
    if (v16)
    {
      v17 = sub_1006A3A7C();

      if (v17)
      {
        if (v17 >> 62)
        {
          goto LABEL_43;
        }

        v17 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_36;
      }

      goto LABEL_38;
    }
  }

  v17 = 0;
LABEL_38:
  while (1)
  {
    result = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
      break;
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    v17 = _CocoaArrayWrapper.endIndex.getter();
LABEL_36:
  }

  return result;
}

BOOL sub_1004E65AC(uint64_t a1)
{
  v2 = IndexPath.section.getter();
  v3 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = (v3 + 32);
  while (1)
  {
    v6 = *v5++;
    if (v6 == 2)
    {
      break;
    }

    --v2;
    if (!--v4)
    {
      return 0;
    }
  }

  return v2 == 0;
}

id sub_1004E6614(uint64_t a1)
{
  v3 = type metadata accessor for Track();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v59 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v58 = &v46 - v6;
  __chkstk_darwin();
  v61 = &v46 - v7;
  sub_10010FC20(&unk_101192800, &qword_100EE5630);
  __chkstk_darwin();
  v9 = &v46 - v8;
  v10 = type metadata accessor for AlbumDetailDataSource.CellType(0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v60 = &v46 - v14;
  type metadata accessor for IndexPath();
  __chkstk_darwin();
  v19 = __chkstk_darwin();
  if (!*(a1 + 16))
  {
    return 0;
  }

  v56 = v3;
  v57 = v11;
  v54 = v4;
  v55 = v13;
  v53 = v18;
  v62 = v17;
  v63 = v16;
  v20 = *(v17 + 16);
  v21 = v1;
  v22 = *(v17 + 80);
  v23 = &v46 - v15;
  v20(&v46 - v15, a1 + ((v22 + 32) & ~v22), v16, v19);
  v64 = v23;
  IndexPath.section.getter();
  Array.subscript.getter(&type metadata for ContainerDetail.Section, &aBlock);
  if (aBlock != 2)
  {
    (*(v62 + 8))(v64, v63);
    return 0;
  }

  v52 = v22;
  v50 = v20;
  v25 = v64;
  v51 = v21;
  sub_1004DEB38(v9);
  if ((*(v57 + 48))(v9, 1, v10) == 1)
  {
    (*(v62 + 8))(v25, v63);
    sub_1000095E8(v9, &unk_101192800, &qword_100EE5630);
    return 0;
  }

  v26 = v60;
  sub_1004E59E0(v9, v60, type metadata accessor for AlbumDetailDataSource.CellType);
  v27 = v55;
  sub_1004E40DC(v26, v55, type metadata accessor for AlbumDetailDataSource.CellType);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1004E414C(v26, type metadata accessor for AlbumDetailDataSource.CellType);
    (*(v62 + 8))(v64, v63);
    sub_1004E414C(v27, type metadata accessor for AlbumDetailDataSource.CellType);
    return 0;
  }

  v57 = ~v52;
  v28 = v54;
  v29 = *(v54 + 32);
  v30 = v61;
  v31 = v56;
  v29(v61, v27, v56);
  v49 = v29;
  v47 = *(v28 + 16);
  v32 = v58;
  v47(v58, v30, v31);
  v33 = *(v28 + 80);
  v48 = v33 | 7;
  v55 = swift_allocObject();
  v34 = v56;
  v29(&v55[(v33 + 16) & ~v33], v32, v56);
  v58 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = v59;
  v47(v59, v61, v34);
  v36 = v53;
  v37 = v63;
  v50(v53, v64, v63);
  v38 = (v33 + 24) & ~v33;
  v39 = (v5 + v52 + v38) & v57;
  v40 = swift_allocObject();
  *(v40 + 16) = v58;
  v49(v40 + v38, v35, v34);
  v41 = v62;
  (*(v62 + 32))(v40 + v39, v36, v37);
  v42 = objc_opt_self();
  v69 = sub_1004EA30C;
  v70 = v55;
  aBlock = _NSConcreteStackBlock;
  v66 = 1107296256;
  v67 = sub_100747E6C;
  v68 = &unk_1010AFB48;
  v43 = _Block_copy(&aBlock);

  v69 = sub_1004EA710;
  v70 = v40;
  aBlock = _NSConcreteStackBlock;
  v66 = 1107296256;
  v67 = sub_100747EBC;
  v68 = &unk_1010AFB70;
  v44 = _Block_copy(&aBlock);

  v45 = [v42 configurationWithIdentifier:0 previewProvider:v43 actionProvider:v44];

  _Block_release(v44);
  _Block_release(v43);
  (*(v54 + 8))(v61, v56);
  sub_1004E414C(v60, type metadata accessor for AlbumDetailDataSource.CellType);
  (*(v41 + 8))(v64, v63);

  return v45;
}

void sub_1004E6DBC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections);
  v7 = IndexPath.section.getter();
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v7 >= *(v6 + 16))
  {
LABEL_19:
    __break(1u);
    return;
  }

  v8 = *(v6 + v7 + 32);
  if (v8 == 6)
  {
    if (*(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_needsDurationUpdate) == 1)
    {
      *(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_needsDurationUpdate) = 0;

      sub_1004D4938();
    }
  }

  else if (v8 == 2)
  {
    v9 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v3 + v9, v11, &unk_1011926C0, &unk_100ECF870);
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
        sub_1006A44A0();

        sub_100804470(a1, a2);
      }
    }
  }

  else if (!*(v6 + v7 + 32))
  {

    sub_1004CCA54();
  }
}

void sub_1004E6F54(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections);
  v5 = IndexPath.section.getter();
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v5 >= *(v4 + 16))
  {
LABEL_10:
    __break(1u);
    return;
  }

  if (*(v4 + v5 + 32) == 2)
  {
    v6 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v2 + v6, v8, &unk_1011926C0, &unk_100ECF870);
    if (v8[8])
    {
      sub_1000095E8(v8, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v8, &unk_1011926C0, &unk_100ECF870);
      if (Strong)
      {
        sub_1006A44A0();

        sub_100868184(a1);
      }
    }
  }
}

uint64_t sub_1004E7068(uint64_t a1, uint64_t a2)
{
  v2[49] = a1;
  v2[50] = a2;
  v3 = sub_10010FC20(&qword_1011928D0, &unk_100EE4BD0);
  v2[51] = v3;
  v2[52] = *(v3 - 8);
  v2[53] = swift_task_alloc();
  sub_10010FC20(&qword_1011928D8, &qword_100ECFC10);
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  sub_10010FC20(&qword_1011928E0, &qword_100ECFC18);
  v2[56] = swift_task_alloc();
  v2[57] = sub_10010FC20(&qword_1011928E8, &unk_100ECFC20);
  v2[58] = swift_task_alloc();
  v4 = type metadata accessor for Song();
  v2[59] = v4;
  v2[60] = *(v4 - 8);
  v2[61] = swift_task_alloc();
  v5 = type metadata accessor for AlbumDetailDataSource.CellType(0);
  v2[62] = v5;
  v2[63] = *(v5 - 8);
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  v2[71] = swift_task_alloc();
  sub_10010FC20(&unk_101192800, &qword_100EE5630);
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v2[75] = sub_10010FC20(&unk_10118C0B0, &qword_100ECFA00);
  v2[76] = swift_task_alloc();
  v2[77] = swift_task_alloc();
  v6 = sub_10010FC20(&qword_1011928F0, &unk_100F149B0);
  v2[78] = v6;
  v2[79] = *(v6 - 8);
  v2[80] = swift_task_alloc();
  sub_10010FC20(&qword_10118A530, &qword_100EC64E0);
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v7 = type metadata accessor for Track();
  v2[83] = v7;
  v2[84] = *(v7 - 8);
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();
  v2[87] = swift_task_alloc();
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  v2[91] = swift_task_alloc();
  v2[92] = swift_task_alloc();
  v2[93] = swift_task_alloc();
  v2[94] = swift_task_alloc();
  v2[95] = swift_task_alloc();
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  sub_10010FC20(&unk_1011842D0, &qword_100ECBF00);
  v2[98] = swift_task_alloc();
  v8 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v2[99] = v8;
  v2[100] = *(v8 - 8);
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  v2[103] = swift_task_alloc();
  v9 = type metadata accessor for Album();
  v2[104] = v9;
  v2[105] = *(v9 - 8);
  v2[106] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[107] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004E769C, v11, v10);
}

uint64_t sub_1004E769C()
{
  v1 = v0[105];
  v2 = v0[104];
  v3 = v0[103];
  v4 = v0[49];

  sub_1000089F8(v4, v3, &unk_101184730, &unk_100ECB920);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v5 = v0[103];
    v6 = &unk_101184730;
    v7 = &unk_100ECB920;
LABEL_5:
    sub_1000095E8(v5, v6, v7);
    v305 = 0;
    goto LABEL_6;
  }

  v8 = v0[100];
  v9 = v0[99];
  v10 = v0[98];
  v11 = v0[50];
  (*(v0[105] + 32))(v0[106], v0[103], v0[104]);
  sub_1000089F8(v11, v10, &unk_1011842D0, &qword_100ECBF00);
  if ((*(v8 + 48))(v10, 1, v9) == 1)
  {
    v12 = v0[98];
    (*(v0[105] + 8))(v0[106], v0[104]);
    v6 = &unk_1011842D0;
    v7 = &qword_100ECBF00;
    v5 = v12;
    goto LABEL_5;
  }

  v15 = *(v0[100] + 32);
  v15(v0[102], v0[98], v0[99]);
  sub_100020674(&qword_1011913B0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v0[42] == v0[43])
  {
    v16 = v0[106];
    v17 = v0[105];
    v18 = v0[104];
    (*(v0[100] + 8))(v0[102], v0[99]);
    (*(v17 + 8))(v16, v18);
    v305 = _swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  v19 = v0[84];
  v20 = v0[83];
  v21 = v0[82];
  sub_10034DEEC(v21);
  v22 = *(v19 + 48);
  if (v22(v21, 1, v20) == 1)
  {
    sub_1000095E8(v0[82], &qword_10118A530, &qword_100EC64E0);
LABEL_19:
    v53 = v0[83];
    v54 = v0[81];
    sub_10034DEEC(v54);
    v307 = v15;
    if (v22(v54, 1, v53) == 1)
    {
      sub_1000095E8(v0[81], &qword_10118A530, &qword_100EC64E0);
      v263 = 0;
      v286 = enum case for Track.song(_:);
      v288 = 1;
    }

    else
    {
      v55 = v0[93];
      v56 = v0[84];
      v57 = v0[83];
      (*(v56 + 16))(v55, v0[81], v57);
      v58 = (*(v56 + 88))(v55, v57);
      v59 = v0[93];
      v60 = v0[84];
      v61 = v0[83];
      v286 = enum case for Track.song(_:);
      if (v58 == enum case for Track.song(_:))
      {
        v63 = v0[60];
        v62 = v0[61];
        v64 = v0[59];
        (*(v60 + 96))(v59, v61);
        (*(v63 + 32))(v62, v59, v64);
        v263 = Song.discNumber.getter();
        v288 = v65;
        (*(v63 + 8))(v62, v64);
        (*(v60 + 8))(v0[81], v0[83]);
      }

      else
      {
        v66 = *(v60 + 8);
        v66(v59, v61);
        v263 = 0;
        v288 = 1;
        v66(v0[81], v0[83]);
      }
    }

    v67 = v0[101];
    v68 = v0[99];
    v69 = v0[84];
    v70 = v0[75];
    v258 = v0[63];
    v71 = v0[60];
    v72 = v0[58];
    v302 = v0[57];
    v73 = v0[56];
    v74 = v0[52];
    v281 = v0[51];
    v240 = (v0[100] + 16);
    v238 = *v240;
    (*v240)(v73, v0[102], v68);
    v307(v67, v73, v68);
    sub_100020674(&unk_10118C0A0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Sequence.makeIterator()();
    v273 = 0;
    v246 = *(v302 + 36);
    *(v72 + v246) = 0;
    v297 = v69 + 32;
    v303 = (v69 + 16);
    v239 = v70;
    v277 = *(v70 + 36);
    v75 = v72;
    v268 = (v74 + 56);
    v261 = (v74 + 48);
    v284 = (v69 + 88);
    v293 = (v69 + 8);
    v255 = (v71 + 32);
    v257 = (v69 + 96);
    v254 = (v71 + 8);
    v43 = _swiftEmptyArrayStorage;
    v249 = v75;
    while (1)
    {
      dispatch thunk of Collection.endIndex.getter();
      if (*(v75 + v277) == v0[44])
      {
        v76 = 1;
      }

      else
      {
        v308 = v43;
        v77 = v0[92];
        v78 = v0[83];
        v79 = v0[53];
        v43 = v277;
        v80 = dispatch thunk of Collection.subscript.read();
        (*v303)(v77);
        v80(v0 + 2, 0);
        v75 = v249;
        dispatch thunk of Collection.formIndex(after:)();
        v81 = *(v281 + 48);
        *v79 = v273;
        (*v297)(&v79[v81], v77, v78);
        v82 = v273 + 1;
        if (__OFADD__(v273, 1))
        {
          goto LABEL_123;
        }

        v83 = v0[53];
        v84 = v0[54];
        ++v273;
        *(v249 + v246) = v82;
        sub_10003D17C(v83, v84, &qword_1011928D0, &unk_100EE4BD0);
        v76 = 0;
        v43 = v308;
      }

      v85 = v0[54];
      v86 = v0[55];
      v87 = v0[51];
      (*v268)(v85, v76, 1, v87);
      sub_10003D17C(v85, v86, &qword_1011928D8, &qword_100ECFC10);
      if ((*v261)(v86, 1, v87) == 1)
      {
        sub_1000095E8(v0[58], &qword_1011928E8, &unk_100ECFC20);

        v116 = v263;
        if (v288)
        {
          v116 = 1;
        }

LABEL_95:
        v179 = v0[102];
        v180 = v0[99];
        v181 = v0[76];
        sub_10010FC20(&qword_101192020, &unk_100ECFC30);
        v182 = (*(v258 + 80) + 32) & ~*(v258 + 80);
        v262 = *(v258 + 72);
        v183 = swift_allocObject();
        *(v183 + 16) = xmmword_100EBC6B0;
        v260 = v182;
        v184 = (v183 + v182);
        v266 = v116;
        *v184 = v116;
        v184[1] = _swiftEmptyArrayStorage;
        swift_storeEnumTagMultiPayload();
        v238(v181, v179, v180);
        v185 = *(v239 + 36);
        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.endIndex.getter();
        v305 = v183;
        if (*(v181 + v185) == v0[45])
        {
          v245 = 0;
          v283 = _swiftEmptyArrayStorage;
        }

        else
        {
          v245 = 0;
          v248 = v0[84];
          v241 = v0[65];
          v243 = v0[66];
          v283 = _swiftEmptyArrayStorage;
          v250 = v185;
          v252 = v181;
          do
          {
            v194 = v0[88];
            v271 = v194;
            v290 = v0[87];
            v280 = v0[86];
            v195 = v0[83];
            v196 = dispatch thunk of Collection.subscript.read();
            v197 = *v303;
            (*v303)(v194);
            v196(v0 + 6, 0);
            dispatch thunk of Collection.formIndex(after:)();
            v43 = *v297;
            v198 = v290;
            (*v297)(v290, v271, v195);
            v291 = v197;
            (v197)(v280, v198, v195);
            v199 = (*v284)(v280, v195);
            v200 = v0[86];
            v201 = v0[83];
            if (v199 == v286)
            {
              v202 = v0[61];
              v203 = v0[59];
              (*v257)(v0[86], v201);
              (*v255)(v202, v200, v203);
              v204 = Song.discNumber.getter();
              v206 = v205;
              (*v254)(v202, v203);
              v207 = v283;
              if (v206)
              {
                v208 = v305;
              }

              else
              {
                v208 = v305;
                if (v266 != v204)
                {
                  *v0[66] = v266;
                  *(v243 + 8) = v283;
                  swift_storeEnumTagMultiPayload();
                  if (v245 >= *(v305 + 16))
                  {
                    goto LABEL_124;
                  }

                  v209 = v0[65];
                  sub_1004E98EC(v0[66], v305 + v260 + v245 * v262);
                  *v209 = v204;
                  *(v241 + 8) = _swiftEmptyArrayStorage;
                  swift_storeEnumTagMultiPayload();
                  v211 = *(v305 + 16);
                  v210 = *(v305 + 24);
                  v212 = v211 + 1;
                  if (v211 >= v210 >> 1)
                  {
                    v226 = *(v305 + 16);
                    v227 = sub_10049A60C((v210 > 1), v211 + 1, 1, v305);
                    v211 = v226;
                    v208 = v227;
                  }

                  v213 = v0[65];
                  v208[2] = v212;
                  v245 = v211;
                  sub_1004E59E0(v213, v208 + v260 + v211 * v262, type metadata accessor for AlbumDetailDataSource.CellType);
                  v266 = v204;
                  v207 = _swiftEmptyArrayStorage;
                }
              }
            }

            else
            {
              (*v293)(v0[86], v201);
              v208 = v305;
              v207 = v283;
            }

            (v291)(v0[85], v0[87], v0[83]);
            v310 = v208;
            v214 = v43;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v207 = sub_100499798(0, v207[2] + 1, 1, v207);
            }

            v216 = v207[2];
            v215 = v207[3];
            if (v216 >= v215 >> 1)
            {
              v207 = sub_100499798((v215 > 1), v216 + 1, 1, v207);
            }

            v217 = v0[87];
            v218 = v0[85];
            v219 = v0[83];
            v220 = v0[64];
            v207[2] = v216 + 1;
            v283 = v207;
            v214(v207 + ((*(v248 + 80) + 32) & ~*(v248 + 80)) + *(v248 + 72) * v216, v218, v219);
            v221 = v220 + *(sub_10010FC20(&qword_1011927A8, &qword_100ECF9A8) + 48);
            (v291)(v220, v217, v219);
            *v221 = 0;
            *(v221 + 8) = 1;
            swift_storeEnumTagMultiPayload();
            v222 = v310;
            v224 = v310[2];
            v223 = v310[3];
            if (v224 >= v223 >> 1)
            {
              v222 = sub_10049A60C((v223 > 1), v224 + 1, 1, v310);
            }

            v225 = v0[64];
            (*v293)(v0[87], v0[83]);
            v222[2] = v224 + 1;
            v305 = v222;
            sub_1004E59E0(v225, v222 + v260 + v224 * v262, type metadata accessor for AlbumDetailDataSource.CellType);
            dispatch thunk of Collection.endIndex.getter();
          }

          while (*(v252 + v250) != v0[45]);
        }

        v186 = v0[106];
        v187 = v0[105];
        v188 = v0[104];
        v189 = v0[102];
        v190 = v0[100];
        v191 = v0[99];
        v192 = v0[66];
        sub_1000095E8(v0[76], &unk_10118C0B0, &qword_100ECFA00);
        *v192 = v266;
        v192[1] = v283;
        swift_storeEnumTagMultiPayload();
        (*(v190 + 8))(v189, v191);
        v193 = *(v187 + 8);
        v43 = v187 + 8;
        v193(v186, v188);
        if (v245 < *(v305 + 16))
        {
          sub_1004E98EC(v0[66], v305 + v260 + v245 * v262);
          goto LABEL_6;
        }

LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
        goto LABEL_127;
      }

      v88 = v0[55];
      v309 = *v88;
      (*v297)(v0[91], &v88[*(v281 + 48)], v0[83]);
      v89 = *v303;
      if (v288)
      {
        v90 = v0[90];
        v91 = v0[83];
        (v89)(v90, v0[91], v91);
        if ((*v284)(v90, v91) != v286)
        {
          v96 = v43;
          v263 = 0;
          v288 = 1;
          v105 = v0 + 90;
          goto LABEL_40;
        }

        v92 = v0[90];
        v93 = v0[61];
        v94 = v0[59];
        (*v257)(v92, v0[83]);
        (*v255)(v93, v92, v94);
        v263 = Song.discNumber.getter();
        LOBYTE(v92) = v95;
        (*v254)(v93, v94);
        if (v92)
        {
          v96 = v43;
          v288 = 1;
          goto LABEL_41;
        }
      }

      v97 = v0[89];
      v98 = v0[83];
      (v89)(v97, v0[91], v98);
      if ((*v284)(v97, v98) != v286)
      {
        v96 = v43;
        v288 = 0;
        v105 = v0 + 89;
LABEL_40:
        (*v293)(*v105, v0[83]);
        goto LABEL_41;
      }

      v99 = v0[89];
      v100 = v0[61];
      v101 = v0[59];
      (*v257)(v99, v0[83]);
      (*v255)(v100, v99, v101);
      v102 = Song.discNumber.getter();
      v104 = v103;
      (*v254)(v100, v101);
      v288 = 0;
      if ((v104 & 1) == 0 && v102 != v263)
      {
        v178 = v0[58];
        (*v293)(v0[91], v0[83]);
        sub_1000095E8(v178, &qword_1011928E8, &unk_100ECFC20);

        v116 = v263;
        goto LABEL_95;
      }

      v96 = v43;
LABEL_41:
      v106 = v0[91];
      v107 = v0[83];
      v108 = v0[67];
      v109 = v108 + *(sub_10010FC20(&qword_1011927A8, &qword_100ECF9A8) + 48);
      (v89)(v108, v106, v107);
      *v109 = 0;
      *(v109 + 8) = 1;
      swift_storeEnumTagMultiPayload();
      v43 = v96;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_10049A60C(0, v96[2] + 1, 1, v96);
      }

      v111 = *(v43 + 16);
      v110 = *(v43 + 24);
      if (v111 >= v110 >> 1)
      {
        v43 = sub_10049A60C((v110 > 1), v111 + 1, 1, v43);
      }

      v112 = v0[91];
      v113 = v0[83];
      v114 = v0[67];
      *(v43 + 16) = v111 + 1;
      sub_1004E59E0(v114, v43 + ((*(v258 + 80) + 32) & ~*(v258 + 80)) + *(v258 + 72) * v111, type metadata accessor for AlbumDetailDataSource.CellType);
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      v115 = dispatch thunk of Collection.distance(from:to:)();
      (*v293)(v112, v113);
      if (__OFSUB__(v115, 1))
      {
        __break(1u);
        goto LABEL_122;
      }

      if (v309 == v115 - 1)
      {
        v117 = v0[106];
        v118 = v0[105];
        v119 = v0[104];
        v120 = v0[102];
        v121 = v0[100];
        v122 = v0[99];
        sub_1000095E8(v0[58], &qword_1011928E8, &unk_100ECFC20);
        (*(v121 + 8))(v120, v122);
        (*(v118 + 8))(v117, v119);
        v305 = v43;
        goto LABEL_6;
      }
    }
  }

  v23 = *(v0[84] + 32);
  v23(v0[97], v0[82], v0[83]);
  v24 = Track.workName.getter();
  if (!v25)
  {
    (*(v0[84] + 8))(v0[97], v0[83]);
    goto LABEL_19;
  }

  v26 = v25;
  v251 = v23;
  v287 = v0[100];
  v296 = v0[99];
  v300 = v0[102];
  v27 = v0[80];
  v28 = v0[79];
  v267 = v0[78];
  v253 = v0[77];
  v292 = v0[75];
  v29 = v0[63];
  v306 = v24;
  sub_10010FC20(&qword_101192020, &unk_100ECFC30);
  v254 = *(v29 + 72);
  v255 = ((*(v29 + 80) + 32) & ~*(v29 + 80));
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100EBC6B0;
  v276 = Track.composerName.getter();
  v272 = v31;
  type metadata accessor for ClassicalAlbumSection(0);
  v32 = swift_allocObject();
  v33 = OBJC_IVAR____TtC5Music21ClassicalAlbumSection__composerName;
  v0[20] = 0;
  v0[21] = 0;
  sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
  Published.init(initialValue:)();
  v34 = *(v28 + 32);
  v34(v32 + v33, v27, v267);
  v35 = OBJC_IVAR____TtC5Music21ClassicalAlbumSection__artistName;
  v0[22] = 0;
  v0[23] = 0;
  Published.init(initialValue:)();
  v237 = v34;
  v34(v32 + v35, v27, v267);
  v36 = OBJC_IVAR____TtC5Music21ClassicalAlbumSection_workTracks;
  *(v32 + OBJC_IVAR____TtC5Music21ClassicalAlbumSection_workTracks) = _swiftEmptyArrayStorage;
  v37 = OBJC_IVAR____TtC5Music21ClassicalAlbumSection_showTrackArtists;
  *(v32 + OBJC_IVAR____TtC5Music21ClassicalAlbumSection_showTrackArtists) = 0;
  swift_beginAccess();
  v0[24] = v306;
  v0[25] = v26;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v0[26] = v276;
  v0[27] = v272;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v0[28] = 0;
  v0[29] = 0;

  static Published.subscript.setter();
  *(v32 + v36) = _swiftEmptyArrayStorage;

  *(v32 + v37) = 0;
  *(v255 + v30) = v32;
  v305 = v30;
  swift_storeEnumTagMultiPayload();
  v256 = Track.artistName.getter();
  v285 = v38;
  (*(v287 + 16))(v253, v300, v296);
  v39 = *(v292 + 36);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (*(v253 + v39) == v0[48])
  {
    v297 = 0;
    v301 = _swiftEmptyArrayStorage;
LABEL_16:
    v40 = v0[72];
    v41 = v0[62];
    v42 = v0[63];
    sub_1000095E8(v0[77], &unk_10118C0B0, &qword_100ECFA00);
    v43 = v305;
    Array.subscript.getter(v41, v40);
    if ((*(v42 + 48))(v40, 1, v41) == 1)
    {
      v44 = v0[106];
      v45 = v0[105];
      v46 = v0[104];
      v47 = v0[102];
      v48 = v0[100];
      v49 = v0[99];
      v50 = v0[97];
      v51 = v0[84];
      v52 = v0[83];
      v298 = v0[72];

      (*(v51 + 8))(v50, v52);
      (*(v48 + 8))(v47, v49);
      (*(v45 + 8))(v44, v46);

      sub_1000095E8(v298, &unk_101192800, &qword_100EE5630);
    }

    else
    {
      v168 = v0[72];
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v170 = v0[106];
      if (!EnumCaseMultiPayload)
      {
        v228 = v0[68];
        v229 = sub_1004CE4F4(*v168, v256, v285, v301);

        *v228 = v229;
        swift_storeEnumTagMultiPayload();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_129;
        }

        goto LABEL_118;
      }

      v171 = v0[105];
      v299 = v0[104];
      v172 = v0[102];
      v173 = v0[100];
      v174 = v0[99];
      v175 = v0[97];
      v176 = v0[84];
      v177 = v0[83];

      (*(v176 + 8))(v175, v177);
      (*(v173 + 8))(v172, v174);
      (*(v171 + 8))(v170, v299);

      sub_1004E414C(v168, type metadata accessor for AlbumDetailDataSource.CellType);
    }

LABEL_6:

    v13 = v0[1];

    return v13(v305);
  }

  v297 = 0;
  v294 = (v0[84] + 16);
  v247 = (v0[63] + 48);
  v242 = v0[84];
  v282 = 1;
  v301 = _swiftEmptyArrayStorage;
  v123 = v251;
  v244 = v39;
  while (1)
  {
    v124 = v0[96];
    v264 = v0[95];
    v259 = v0[83];
    v269 = v0[74];
    v278 = v0[73];
    v274 = v0[62];
    v125 = dispatch thunk of Collection.subscript.read();
    v289 = *v294;
    (*v294)(v124);
    v125(v0 + 10, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v123(v264, v124, v259);
    v126 = v297;
    Array.subscript.getter(v274, v269);
    sub_1000089F8(v269, v278, &unk_101192800, &qword_100EE5630);
    v127 = (*v247)(v278, 1, v274);
    v128 = v0[73];
    if (v127 == 1)
    {
      sub_1000095E8(v0[73], &unk_101192800, &qword_100EE5630);
      v129 = v282;
      v43 = v305;
LABEL_54:
      v130 = v285;
      goto LABEL_64;
    }

    v43 = v305;
    v130 = v285;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1004E414C(v128, type metadata accessor for AlbumDetailDataSource.CellType);
      v129 = v282;
      goto LABEL_64;
    }

    v131 = *v128;
    v132 = Track.workName.getter();
    if (v133)
    {
      break;
    }

LABEL_63:

    v129 = v282;
LABEL_64:
    v136 = Track.artistName.getter();
    v297 = v126;
    if (!v130)
    {
      goto LABEL_71;
    }

    if (v256 == v136 && v130 == v137)
    {
      v285 = v130;
    }

    else
    {
      v138 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v138 & 1) == 0)
      {
LABEL_71:

        v256 = 0;
        v285 = 0;
        goto LABEL_72;
      }

      v285 = v130;
    }

LABEL_72:
    v139 = v0[95];
    v140 = v0[83];
    v141 = v0[69];
    v142 = v141 + *(sub_10010FC20(&qword_1011927A8, &qword_100ECF9A8) + 48);
    (v289)(v141, v139, v140);
    *v142 = v126;
    *(v142 + 8) = 0;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_10049A60C(0, *(v43 + 16) + 1, 1, v43);
    }

    v144 = *(v43 + 16);
    v143 = *(v43 + 24);
    if (v144 >= v143 >> 1)
    {
      v43 = sub_10049A60C((v143 > 1), v144 + 1, 1, v43);
    }

    v145 = v0[69];
    *(v43 + 16) = v144 + 1;
    sub_1004E59E0(v145, v255 + v43 + v144 * v254, type metadata accessor for AlbumDetailDataSource.CellType);
    if (__OFADD__(v129, 1))
    {
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    (v289)(v0[94], v0[95], v0[83]);
    v305 = v43;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v301 = sub_100499798(0, v301[2] + 1, 1, v301);
    }

    v147 = v301[2];
    v146 = v301[3];
    v282 = v129 + 1;
    if (v147 >= v146 >> 1)
    {
      v301 = sub_100499798((v146 > 1), v147 + 1, 1, v301);
    }

    v148 = v0[95];
    v149 = v0[94];
    v150 = v0[83];
    sub_1000095E8(v0[74], &unk_101192800, &qword_100EE5630);
    (*(v242 + 8))(v148, v150);
    v301[2] = v147 + 1;
    v151 = v301 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v147;
    v123 = v251;
    v251(v151, v149, v150);
    dispatch thunk of Collection.endIndex.getter();
    if (*(v253 + v244) == v0[48])
    {
      goto LABEL_16;
    }
  }

  v134 = v133;
  v279 = v132;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v0 + 30);

  if (v0[30] == v279 && v134 == v0[31])
  {

LABEL_62:

    goto LABEL_63;
  }

  v135 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v135)
  {
    goto LABEL_62;
  }

  v152 = v0[71];
  v153 = sub_1004CE4F4(v131, v256, v285, v301);

  *v152 = v153;
  swift_storeEnumTagMultiPayload();

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v297 & 0x8000000000000000) != 0)
    {
      goto LABEL_126;
    }
  }

  else
  {
    v43 = sub_100501548(v305);
    if ((v297 & 0x8000000000000000) != 0)
    {
      goto LABEL_126;
    }
  }

  if (v297 < *(v43 + 16))
  {
    v154 = v0[80];
    v155 = v0[78];
    v275 = v0[70];
    v297 = v0[62];
    sub_1004E98EC(v0[71], v255 + v43 + v126 * v254);
    v156 = Track.composerName.getter();
    v265 = v157;
    v270 = v156;
    v158 = swift_allocObject();
    v159 = OBJC_IVAR____TtC5Music21ClassicalAlbumSection__composerName;
    v0[32] = 0;
    v0[33] = 0;
    Published.init(initialValue:)();
    v237(v158 + v159, v154, v155);
    v160 = OBJC_IVAR____TtC5Music21ClassicalAlbumSection__artistName;
    v0[34] = 0;
    v0[35] = 0;
    Published.init(initialValue:)();
    v237(v158 + v160, v154, v155);
    v161 = v43;
    v162 = OBJC_IVAR____TtC5Music21ClassicalAlbumSection_workTracks;
    *(v158 + OBJC_IVAR____TtC5Music21ClassicalAlbumSection_workTracks) = _swiftEmptyArrayStorage;
    v163 = OBJC_IVAR____TtC5Music21ClassicalAlbumSection_showTrackArtists;
    *(v158 + OBJC_IVAR____TtC5Music21ClassicalAlbumSection_showTrackArtists) = 0;
    swift_beginAccess();
    v0[36] = v279;
    v0[37] = v134;
    Published.init(initialValue:)();
    swift_endAccess();
    swift_getKeyPath();
    swift_getKeyPath();
    v0[38] = v270;
    v0[39] = v265;

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v0[40] = 0;
    v0[41] = 0;

    static Published.subscript.setter();
    *(v158 + v162) = _swiftEmptyArrayStorage;
    v43 = v161;

    *(v158 + v163) = 0;
    v256 = Track.artistName.getter();
    v285 = v164;
    *v275 = v158;
    swift_storeEnumTagMultiPayload();
    v165 = v161[2];
    v166 = v161[3];

    if (v165 >= v166 >> 1)
    {
      v43 = sub_10049A60C((v166 > 1), v165 + 1, 1, v161);
    }

    v126 = v282;
    v167 = v0[70];
    *(v43 + 16) = v165 + 1;
    sub_1004E59E0(v167, v255 + v43 + v165 * v254, type metadata accessor for AlbumDetailDataSource.CellType);

    v129 = v282 + 1;
    if (__OFADD__(v282, 1))
    {
      goto LABEL_128;
    }

    v301 = _swiftEmptyArrayStorage;
    goto LABEL_54;
  }

LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  v305 = sub_100501548(v43);
LABEL_118:
  v304 = v0[106];
  v230 = v0[105];
  v295 = v0[104];
  v231 = v0[102];
  v232 = v0[100];
  v233 = v0[99];
  v234 = v0[97];
  v235 = v0[84];
  v236 = v0[83];

  (*(v235 + 8))(v234, v236);
  (*(v232 + 8))(v231, v233);
  result = (*(v230 + 8))(v304, v295);
  if ((v297 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v297 < *(v305 + 16))
  {
    sub_1004E98EC(v0[68], v255 + v305 + v297 * v254);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004E98EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlbumDetailDataSource.CellType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004E99A8@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_1004E9A00()
{
  type metadata accessor for Album();
  v1 = *(v0 + 16);

  return sub_1004B6064(v1);
}

unint64_t sub_1004E9A64()
{
  type metadata accessor for ContainerDetail.AttributionItem(0);

  return sub_1006A86F0();
}

uint64_t sub_1004E9AC4()
{
  v2 = *(type metadata accessor for ContainerDetail.AttributionItem(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100008F30;

  return sub_1006A8738(v0 + v3, v4);
}

uint64_t sub_1004E9BC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_1004B3DD8(a1, v4, v5, v7, v6);
}

double sub_1004E9CA0()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);
  v9 = *(v0 + v4 + 8);

  return sub_10072B51C(v0 + v2, v6, v7, v8, v9);
}

uint64_t sub_1004E9D88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1004AEFB0(a1, v4, v5, v6);
}

void sub_1004E9E3C(uint64_t a1)
{
  v1 = sub_1006A6078();
  [v1 setAlpha:1.0];
}

uint64_t sub_1004E9EA4(uint64_t a1)
{
  v4 = *(type metadata accessor for IndexPath() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1004A99A8(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_1004E9FE8()
{
  result = qword_101192A60;
  if (!qword_101192A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101192A60);
  }

  return result;
}

unint64_t sub_1004EA114()
{
  result = qword_101192A80;
  if (!qword_101192A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101192A80);
  }

  return result;
}

double sub_1004EA174(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0xFFFFFFFFFFFFFEFCLL) != 0x3FFFFFEFCLL && (a1 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFALL)
  {
    return sub_10011896C(a1, a2, a3);
  }

  return result;
}

unint64_t sub_1004EA1AC(uint64_t a1)
{
  v3 = *(type metadata accessor for Track() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for IndexPath() - 8);
  return sub_1004D214C(a1, *(v1 + 16), (v1 + v4), v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));
}

__n128 sub_1004EA2D8@<Q0>(__n128 *a1@<X8>)
{
  v2 = (*(v1 + 32) + OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_metadataLocation);
  v3 = v2[1].n128_u8[0];
  result = *v2;
  *a1 = *v2;
  a1[1].n128_u8[0] = v3;
  return result;
}

uint64_t sub_1004EA30C()
{
  v1 = *(type metadata accessor for Track() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1004AB2F4(v2);
}

uint64_t sub_1004EA36C()
{
  v1 = type metadata accessor for Track();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1004EA4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      result = a6(319);
      if (v11 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1004EA5A0(uint64_t a1)
{
  if (!qword_101192C18)
  {
    type metadata accessor for Track();
    sub_1001109D0(&qword_10118A600, &qword_100EC5E48);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_101192C18);
    }
  }
}

void sub_1004EA61C(uint64_t a1)
{
  if (!qword_101192C20)
  {
    type metadata accessor for Album();
    type metadata accessor for MusicPlayer.PlayabilityStatus();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_101192C20);
    }
  }
}

unint64_t sub_1004EA730()
{
  result = qword_101192C50;
  if (!qword_101192C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101192C50);
  }

  return result;
}

unint64_t sub_1004EA788()
{
  result = qword_101192C58;
  if (!qword_101192C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101192C58);
  }

  return result;
}

uint64_t type metadata accessor for GenericMusicItemEntity(uint64_t a1)
{
  result = qword_101192CE8;
  if (!qword_101192CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004EA828()
{
  sub_10010FC20(&qword_101182C20, &qword_100EBE780);
  __chkstk_darwin();
  v1 = &v6 - v0;
  v2 = type metadata accessor for LocalizedStringResource();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v4 = type metadata accessor for TypeDisplayRepresentation();
  sub_100006080(v4, qword_101218EB0);
  sub_1000060E4(v4, qword_101218EB0);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v3 + 56))(v1, 1, 1, v2);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_1004EA998@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GenericMusicItem();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for GenericMusicItemEntity(0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (GenericMusicItem.hasSiriRepresentation.getter())
  {
    (*(v5 + 32))(v11, a1, v4);
    sub_1004F22C8(v11, a2);
    v12 = 0;
  }

  else
  {
    if (qword_10117F6D0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000060E4(v13, qword_101218C28);
    (*(v5 + 16))(v7, a1, v4);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = a2;
      v17 = v16;
      v32 = swift_slowAlloc();
      v34 = v8;
      v35 = v32;
      *v17 = 136446466;
      sub_10010FC20(&qword_101192DB8, &qword_100ED0798);
      v18 = String.init<A>(describing:)();
      v20 = sub_1000105AC(v18, v19, &v35);
      v30 = v15;
      v21 = v20;

      *(v17 + 4) = v21;
      *(v17 + 12) = 2082;
      sub_1004F23EC(&qword_101186698, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      v31 = v8;
      v25 = *(v5 + 8);
      v25(v7, v4);
      v26 = sub_1000105AC(v22, v24, &v35);

      *(v17 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v14, v30, "%{public}s – %{public}s has no Siri representation, failing init", v17, 0x16u);
      swift_arrayDestroy();

      a2 = v33;

      v25(a1, v4);
      v8 = v31;
    }

    else
    {

      v27 = *(v5 + 8);
      v27(a1, v4);
      v27(v7, v4);
    }

    v12 = 1;
  }

  return (*(v9 + 56))(a2, v12, 1, v8);
}

uint64_t sub_1004EAD74@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_101192DC0, &unk_100ED07A0);
  __chkstk_darwin();
  v3 = &v11 - v2;
  GenericMusicItem.optional_siriRepresentation.getter();
  v4 = type metadata accessor for MusicSiriRepresentation();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    return (*(v5 + 32))(a1, v3, v4);
  }

  sub_1000095E8(v3, &qword_101192DC0, &unk_100ED07A0);
  v11 = 0;
  v12 = 0xE000000000000000;
  _StringGuts.grow(_:)(43);
  v11 = type metadata accessor for GenericMusicItemEntity(0);
  sub_10010FC20(&qword_101192DB8, &qword_100ED0798);
  v7 = String.init<A>(describing:)();
  v9 = v8;

  v11 = v7;
  v12 = v9;
  v10._object = 0x8000000100E4E510;
  v10._countAndFlagsBits = 0x1000000000000029;
  String.append(_:)(v10);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1004EAF40(uint64_t a1)
{
  sub_1004EAFA4(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1004EAFA4@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v12[1] = v12 - v1;
  type metadata accessor for IntentMediaItem.ItemType();
  __chkstk_darwin();
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MusicSiriRepresentation.Kind();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MusicSiriRepresentation();
  v8 = *(v13 - 8);
  __chkstk_darwin();
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004EAD74(v10);
  v12[0] = MusicSiriRepresentation.id.getter();
  MusicSiriRepresentation.title.getter();
  MusicSiriRepresentation.kind.getter();
  sub_10013A49C(v3);
  (*(v5 + 8))(v7, v4);
  MusicSiriRepresentation.authorName.getter();
  MusicSiriRepresentation.url.getter();
  IntentMediaItem.init(identifier:title:type:image:artist:url:)();
  return (*(v8 + 8))(v10, v13);
}

uint64_t sub_1004EB228()
{
  type metadata accessor for MusicSiriRepresentation();
  __chkstk_darwin();
  v1 = &v7 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v8 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v7 = type metadata accessor for GenericMusicItemEntity(0);
  sub_10010FC20(&qword_101192DB8, &qword_100ED0798);
  v7 = String.init<A>(describing:)();
  v8 = v2;
  v3._object = 0x8000000100E4E540;
  v3._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v3);
  sub_1004EAD74(v1);
  v4._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return v7;
}

uint64_t sub_1004EB348@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for MusicSiriRepresentation();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004EAD74(v5);
  v6 = MusicSiriRepresentation.id.getter();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  a1[1] = v8;
  return result;
}

uint64_t sub_1004EB428@<X0>(uint64_t a1@<X8>)
{
  if (qword_10117F7D8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for TypeDisplayRepresentation();
  v4 = sub_1000060E4(v3, qword_101218EB0);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t sub_1004EB4D0(uint64_t a1)
{
  v2 = sub_1004F23EC(&qword_101192C60, type metadata accessor for GenericMusicItemEntity, &unk_100ED0700);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1004EB54C@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  sub_10010FC20(&qword_101192DC8, &qword_100ED07C0);
  __chkstk_darwin();
  v2 = v13 - v1;
  sub_10010FC20(&qword_101182C20, &qword_100EBE780);
  __chkstk_darwin();
  v4 = v13 - v3;
  v5 = type metadata accessor for MusicSiriRepresentation();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LocalizedStringResource();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  sub_1004EAD74(v8);
  MusicSiriRepresentation.title.getter();
  (*(v6 + 8))(v8, v5);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v10 + 56))(v4, 1, 1, v9);
  v11 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t sub_1004EB7D0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F3F4;

  return sub_1004EB88C(a1, a2);
}

uint64_t sub_1004EB88C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_10010FC20(&qword_101182C20, &qword_100EBE780);
  v3[5] = swift_task_alloc();
  sub_10010FC20(&unk_101195200, &qword_100EBFA50);
  v3[6] = swift_task_alloc();
  sub_10010FC20(&unk_101184060, &qword_100EBDF50);
  v3[7] = swift_task_alloc();
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  v3[8] = swift_task_alloc();
  v4 = type metadata accessor for Artwork();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = type metadata accessor for DisplayRepresentation.Components();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  sub_10010FC20(&qword_101192DC8, &qword_100ED07C0);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v6 = type metadata accessor for MusicSiriRepresentation();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v7 = type metadata accessor for LocalizedStringResource();
  v3[21] = v7;
  v3[22] = *(v7 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_1004EBBA0, 0, 0);
}

uint64_t sub_1004EBBA0()
{
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v35 = v0[16];
  sub_1004EAD74(v1);
  MusicSiriRepresentation.title.getter();
  v34 = *(v2 + 8);
  v34(v1, v3);
  LocalizedStringResource.init(stringLiteral:)();
  v7 = type metadata accessor for DisplayRepresentation.Image();
  v0[25] = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v0[26] = v9;
  v0[27] = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v35, 1, 1, v7);
  static DisplayRepresentation.Components.image.getter();
  sub_1004F23EC(&qword_101192DD0, &type metadata accessor for DisplayRepresentation.Components, &protocol conformance descriptor for DisplayRepresentation.Components);
  v10 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  (*(v5 + 8))(v4, v6);
  if ((v10 & 1) == 0)
  {
LABEL_4:
    v16 = v0[24];
    v17 = v0[21];
    v18 = v0[22];
    v19 = v0[15];
    v20 = v0[16];
    v21 = v0[5];
    (*(v18 + 16))(v0[23], v16, v17);
    (*(v18 + 56))(v21, 1, 1, v17);
    sub_1004EF154(v20, v19);
    DisplayRepresentation.init(title:subtitle:image:)();
    sub_1000095E8(v20, &qword_101192DC8, &qword_100ED07C0);
    (*(v18 + 8))(v16, v17);

    v22 = v0[1];

    return v22();
  }

  v11 = v0[19];
  v12 = v0[17];
  v13 = v0[9];
  v14 = v0[10];
  v15 = v0[8];
  sub_1004EAD74(v11);
  MusicSiriRepresentation.artwork.getter();
  v34(v11, v12);
  if ((*(v14 + 48))(v15, 1, v13) == 1)
  {
    sub_1000095E8(v0[8], &unk_101188920, &qword_100EBCC50);
    goto LABEL_4;
  }

  v24 = v0[6];
  v25 = v0[7];
  (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
  v26 = type metadata accessor for Artwork.CropStyle();
  (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
  v27 = type metadata accessor for Artwork.ImageFormat();
  (*(*(v27 - 8) + 56))(v24, 1, 1, v27);
  v28 = swift_task_alloc();
  v0[28] = v28;
  *v28 = v0;
  v28[1] = sub_1004EC018;
  v29 = v0[6];
  v30 = v0[7];
  v31.n128_u64[0] = 0x4072C00000000000;
  v32.n128_u64[0] = 1.0;
  v33.n128_u64[0] = 0x4072C00000000000;

  return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v30, v29, 0, 0, v31, v33, v32);
}

uint64_t sub_1004EC018(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 232) = a1;

  v4 = *(v3 + 56);
  v5 = *(v3 + 48);
  if (v1)
  {

    sub_1000095E8(v5, &unk_101195200, &qword_100EBFA50);
    sub_1000095E8(v4, &unk_101184060, &qword_100EBDF50);
    v6 = sub_1004EC43C;
  }

  else
  {
    sub_1000095E8(v5, &unk_101195200, &qword_100EBFA50);
    sub_1000095E8(v4, &unk_101184060, &qword_100EBDF50);
    v6 = sub_1004EC1CC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1004EC1CC()
{
  v1 = UIImageHEICRepresentation(*(v0 + 232));
  v2 = *(v0 + 232);
  if (v1)
  {
    v18 = *(v0 + 208);
    v17 = *(v0 + 200);
    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    v5 = *(v0 + 80);
    v6 = *(v0 + 88);
    v7 = *(v0 + 72);
    v8 = v1;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    DisplayRepresentation.Image.init(data:isTemplate:)();
    (*(v5 + 8))(v6, v7);
    sub_1000095E8(v3, &qword_101192DC8, &qword_100ED07C0);
    v18(v4, 0, 1, v17);
    sub_1004EF1C4(v4, v3);
  }

  else
  {
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  }

  v9 = *(v0 + 192);
  v10 = *(v0 + 168);
  v11 = *(v0 + 176);
  v12 = *(v0 + 120);
  v13 = *(v0 + 128);
  v14 = *(v0 + 40);
  (*(v11 + 16))(*(v0 + 184), v9, v10);
  (*(v11 + 56))(v14, 1, 1, v10);
  sub_1004EF154(v13, v12);
  DisplayRepresentation.init(title:subtitle:image:)();
  sub_1000095E8(v13, &qword_101192DC8, &qword_100ED07C0);
  (*(v11 + 8))(v9, v10);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1004EC43C()
{
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[5];
  (*(v3 + 16))(v0[23], v1, v2);
  (*(v3 + 56))(v6, 1, 1, v2);
  sub_1004EF154(v5, v4);
  DisplayRepresentation.init(title:subtitle:image:)();
  sub_1000095E8(v5, &qword_101192DC8, &qword_100ED07C0);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1004EC5F0(uint64_t a1)
{
  v2 = sub_1004F23EC(&qword_101192D28, type metadata accessor for GenericMusicItemEntity, &unk_100ED04C0);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1004EC66C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10030C530;

  return sub_1004EF234(a1);
}

uint64_t sub_1004EC714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10002F3F4;

  return EntityQuery.suggestedEntities()(a1, a2, a3);
}

uint64_t sub_1004EC7C8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10030C430;

  return sub_1004F0070(a1, a2);
}

unint64_t sub_1004EC880()
{
  result = qword_101192C68;
  if (!qword_101192C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101192C68);
  }

  return result;
}

unint64_t sub_1004EC8D8()
{
  result = qword_101192C78;
  if (!qword_101192C78)
  {
    sub_1001109D0(&qword_101192C80, qword_100ED0358);
    sub_1004F23EC(&qword_101192C70, type metadata accessor for GenericMusicItemEntity, &unk_100ED06A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101192C78);
  }

  return result;
}

uint64_t sub_1004EC98C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1004ECAF8();
  *v5 = v2;
  v5[1] = sub_100008F30;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_1004ECA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008F30;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_1004ECAF8()
{
  result = qword_101192C88;
  if (!qword_101192C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101192C88);
  }

  return result;
}

uint64_t sub_1004ECB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1004ECC04;

  return sub_1004F1194(a2, a3);
}

uint64_t sub_1004ECC04(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_1004ECD3C(uint64_t a1)
{
  result = type metadata accessor for GenericMusicItem();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1004ECE90(uint64_t a1)
{
  *(a1 + 8) = sub_1004F23EC(&qword_101192D40, type metadata accessor for GenericMusicItemEntity, &unk_100ED0618);
  result = sub_1004F23EC(&qword_101192D48, type metadata accessor for GenericMusicItemEntity, &unk_100ED05E8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1004ECF30@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v17 = sub_10010FC20(&qword_101192D78, &qword_100ED0758);
  __chkstk_darwin();
  v16 = v13 - v1;
  type metadata accessor for UTType();
  __chkstk_darwin();
  v2 = sub_10010FC20(&qword_101192D80, &qword_100ED0760);
  v14 = *(v2 - 8);
  v3 = v14;
  __chkstk_darwin();
  v5 = v13 - v4;
  v18 = sub_10010FC20(&qword_101192D88, &qword_100ED0768);
  v6 = *(v18 - 8);
  __chkstk_darwin();
  v8 = v13 - v7;
  static UTType.url.getter();
  type metadata accessor for GenericMusicItemEntity(0);
  v13[1] = sub_1004F23EC(&qword_101192D90, type metadata accessor for GenericMusicItemEntity, &unk_100ED0664);
  DataRepresentation.init(exportedContentType:exporting:)();
  sub_100020674(&qword_101192D98, &qword_101192D80, &qword_100ED0760, &protocol conformance descriptor for DataRepresentation<A>);
  TransferRepresentation.exportingCondition(_:)();
  v15 = *(v3 + 8);
  v15(v5, v2);
  static UTType.text.getter();
  DataRepresentation.init(exportedContentType:exporting:)();
  v9 = v16;
  v10 = *(v17 + 48);
  v11 = v18;
  (*(v6 + 16))(v16, v8, v18);
  (*(v14 + 16))(&v9[v10], v5, v2);
  TupleTransferRepresentation.init(_:)();
  v15(v5, v2);
  return (*(v6 + 8))(v8, v11);
}

uint64_t sub_1004ED2D8(uint64_t a1)
{
  v1[10] = a1;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  v1[11] = swift_task_alloc();
  v2 = type metadata accessor for URL();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_1004ED3D0, 0, 0);
}

uint64_t sub_1004ED3D0()
{
  v27 = v0;
  sub_1004ED77C((v0 + 2));
  v1 = v0[5];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];
  if (v1)
  {
    v5 = v0[7];
    sub_10000954C(v0 + 2, v0[5]);
    (*(v5 + 16))(v1, v5);
    sub_10000959C(v0 + 2);
    if ((*(v3 + 48))(v4, 1, v2) != 1)
    {
      v7 = v0[13];
      v6 = v0[14];
      v8 = v0[12];
      (*(v7 + 32))(v6, v0[11], v8);
      v9 = URL.dataRepresentation.getter();
      v11 = v10;
      (*(v7 + 8))(v6, v8);

      v12 = v0[1];

      return v12(v9, v11);
    }
  }

  else
  {
    sub_1000095E8((v0 + 2), &qword_101192DA0, &qword_100ED0790);
    (*(v3 + 56))(v4, 1, 1, v2);
  }

  sub_1000095E8(v0[11], &qword_101183A20, &unk_100EBCF80);
  if (qword_10117F6D0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000060E4(v14, qword_101218C28);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26[0] = swift_slowAlloc();
    *v17 = 136446466;
    v18 = type metadata accessor for GenericMusicItemEntity(0);
    v0[8] = v18;
    sub_10010FC20(&qword_101192DB8, &qword_100ED0798);
    v19 = String.init<A>(describing:)();
    v21 = sub_1000105AC(v19, v20, v26);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    v0[9] = v18;
    v22 = String.init<A>(describing:)();
    v24 = sub_1000105AC(v22, v23, v26);

    *(v17 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s – no url for entity %{public}s", v17, 0x16u);
    swift_arrayDestroy();
  }

  sub_1004EF100();
  swift_allocError();
  swift_willThrow();

  v25 = v0[1];

  return v25();
}

uint64_t sub_1004ED77C@<X0>(uint64_t a1@<X8>)
{
  v111 = a1;
  v68 = type metadata accessor for UploadedVideo();
  v67 = *(v68 - 8);
  __chkstk_darwin();
  v66 = &v65 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for UploadedAudio();
  v70 = *(v71 - 8);
  __chkstk_darwin();
  v69 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for TVShow();
  v73 = *(v74 - 8);
  __chkstk_darwin();
  v72 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for TVSeason();
  v76 = *(v77 - 8);
  __chkstk_darwin();
  v75 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for TVEpisode();
  v79 = *(v80 - 8);
  __chkstk_darwin();
  v78 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for Station();
  v82 = *(v83 - 8);
  __chkstk_darwin();
  v81 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for Song();
  v85 = *(v86 - 8);
  __chkstk_darwin();
  v84 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for SocialProfile();
  v88 = *(v89 - 8);
  __chkstk_darwin();
  v87 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RecordLabel();
  v91 = *(v9 - 8);
  v92 = v9;
  __chkstk_darwin();
  v90 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RadioShow();
  v94 = *(v11 - 8);
  v95 = v11;
  __chkstk_darwin();
  v93 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Playlist();
  v97 = *(v13 - 8);
  v98 = v13;
  __chkstk_darwin();
  v96 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MusicVideo();
  v100 = *(v15 - 8);
  v101 = v15;
  __chkstk_darwin();
  v99 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MusicMovie();
  v103 = *(v17 - 8);
  v104 = v17;
  __chkstk_darwin();
  v102 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Curator();
  v106 = *(v19 - 8);
  v107 = v19;
  __chkstk_darwin();
  v105 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Composer();
  v108 = *(v21 - 8);
  v109 = v21;
  __chkstk_darwin();
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Artist();
  v25 = *(v24 - 8);
  __chkstk_darwin();
  v27 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Album();
  v29 = *(v28 - 8);
  __chkstk_darwin();
  v31 = &v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for GenericMusicItem();
  v33 = *(v32 - 8);
  v34 = __chkstk_darwin();
  v36 = &v65 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v36, v110, v32, v34);
  v37 = (*(v33 + 88))(v36, v32);
  if (v37 == enum case for GenericMusicItem.album(_:))
  {
    (*(v33 + 96))(v36, v32);
    v38 = *(v29 + 32);
    v38(v31, v36, v28);
    v39 = v111;
    *(v111 + 24) = v28;
    v39[4] = &off_1010B2790;
    v39[5] = &protocol witness table for Album;
    v40 = sub_10001C8B8(v39);
    return (v38)(v40, v31, v28);
  }

  v42 = v111;
  if (v37 == enum case for GenericMusicItem.artist(_:))
  {
    (*(v33 + 96))(v36, v32);
    v43 = *(v25 + 32);
    v43(v27, v36, v24);
    v42[3] = v24;
    v42[4] = &off_1010B27A0;
    v42[5] = &protocol witness table for Artist;
    v44 = sub_10001C8B8(v42);
    return (v43)(v44, v27, v24);
  }

  v45 = v111;
  if (v37 != enum case for GenericMusicItem.composer(_:))
  {
    if (v37 == enum case for GenericMusicItem.creditArtist(_:))
    {
      goto LABEL_8;
    }

    if (v37 == enum case for GenericMusicItem.curator(_:))
    {
      (*(v33 + 96))(v36, v32);
      v50 = v105;
      v47 = *(v106 + 32);
      v46 = v107;
      v47(v105, v36, v107);
      v42[3] = v46;
      v42[4] = &off_1010B27C0;
      v51 = &protocol witness table for Curator;
LABEL_11:
      v42[5] = v51;
LABEL_12:
      v48 = sub_10001C8B8(v42);
      v49 = v50;
      goto LABEL_13;
    }

    if (v37 == enum case for GenericMusicItem.editorialItem(_:) || v37 == enum case for GenericMusicItem.genre(_:))
    {
      goto LABEL_8;
    }

    if (v37 == enum case for GenericMusicItem.musicMovie(_:))
    {
      (*(v33 + 96))(v36, v32);
      v50 = v102;
      v47 = *(v103 + 32);
      v46 = v104;
      v47(v102, v36, v104);
      v42[3] = v46;
      v42[4] = &off_1010B27F0;
      v53 = &unk_10118E120;
      v54 = &type metadata accessor for MusicMovie;
      v55 = &protocol conformance descriptor for MusicMovie;
    }

    else
    {
      if (v37 == enum case for GenericMusicItem.musicVideo(_:))
      {
        (*(v33 + 96))(v36, v32);
        v50 = v99;
        v47 = *(v100 + 32);
        v46 = v101;
        v47(v99, v36, v101);
        v42[3] = v46;
        v42[4] = &off_1010B27E0;
        v51 = &protocol witness table for MusicVideo;
        goto LABEL_11;
      }

      if (v37 == enum case for GenericMusicItem.playlist(_:))
      {
        (*(v33 + 96))(v36, v32);
        v50 = v96;
        v47 = *(v97 + 32);
        v46 = v98;
        v47(v96, v36, v98);
        v42[3] = v46;
        v42[4] = &off_1010B2800;
        v51 = &protocol witness table for Playlist;
        goto LABEL_11;
      }

      if (v37 == enum case for GenericMusicItem.playlistFolder(_:))
      {
        goto LABEL_8;
      }

      if (v37 == enum case for GenericMusicItem.radioShow(_:))
      {
        (*(v33 + 96))(v36, v32);
        v50 = v93;
        v47 = *(v94 + 32);
        v46 = v95;
        v47(v93, v36, v95);
        v42[3] = v46;
        v42[4] = &off_1010B2810;
        v51 = &protocol witness table for RadioShow;
        goto LABEL_11;
      }

      if (v37 == enum case for GenericMusicItem.recordLabel(_:))
      {
        (*(v33 + 96))(v36, v32);
        v46 = v92;
        v47 = *(v91 + 32);
        v50 = v90;
        v47(v90, v36, v92);
        v42[3] = v46;
        v42[4] = &off_1010B2820;
        v51 = &protocol witness table for RecordLabel;
        goto LABEL_11;
      }

      if (v37 != enum case for GenericMusicItem.socialProfile(_:))
      {
        if (v37 != enum case for GenericMusicItem.song(_:))
        {
          if (v37 == enum case for GenericMusicItem.station(_:))
          {
            (*(v33 + 96))(v36, v32);
            v56 = *(v82 + 32);
            v57 = v81;
            v58 = v83;
            v56(v81, v36, v83);
            v42[3] = v58;
            v42[4] = &off_1010B2850;
            v42[5] = &protocol witness table for Station;
            v59 = sub_10001C8B8(v42);
            return (v56)(v59, v57, v58);
          }

          if (v37 == enum case for GenericMusicItem.tvEpisode(_:))
          {
            (*(v33 + 96))(v36, v32);
            v47 = *(v79 + 32);
            v60 = v78;
            v61 = v80;
            v47(v78, v36, v80);
            v42[3] = v61;
            v42[4] = &off_1010B2880;
            v62 = &unk_10118E118;
            v63 = &type metadata accessor for TVEpisode;
            v64 = &protocol conformance descriptor for TVEpisode;
          }

          else if (v37 == enum case for GenericMusicItem.tvSeason(_:))
          {
            (*(v33 + 96))(v36, v32);
            v47 = *(v76 + 32);
            v60 = v75;
            v61 = v77;
            v47(v75, v36, v77);
            v42[3] = v61;
            v42[4] = &off_1010B2890;
            v62 = &unk_10118E110;
            v63 = &type metadata accessor for TVSeason;
            v64 = &protocol conformance descriptor for TVSeason;
          }

          else if (v37 == enum case for GenericMusicItem.tvShow(_:))
          {
            (*(v33 + 96))(v36, v32);
            v47 = *(v73 + 32);
            v60 = v72;
            v61 = v74;
            v47(v72, v36, v74);
            v42[3] = v61;
            v42[4] = &off_1010B28A0;
            v62 = &unk_10118E108;
            v63 = &type metadata accessor for TVShow;
            v64 = &protocol conformance descriptor for TVShow;
          }

          else if (v37 == enum case for GenericMusicItem.uploadedAudio(_:))
          {
            (*(v33 + 96))(v36, v32);
            v47 = *(v70 + 32);
            v60 = v69;
            v61 = v71;
            v47(v69, v36, v71);
            v42[3] = v61;
            v42[4] = &off_1010B28B0;
            v62 = &unk_10118E100;
            v63 = &type metadata accessor for UploadedAudio;
            v64 = &protocol conformance descriptor for UploadedAudio;
          }

          else
          {
            if (v37 != enum case for GenericMusicItem.uploadedVideo(_:))
            {
              v45 = v111;
              if (v37 != enum case for GenericMusicItem.other(_:))
              {
                *(v111 + 16) = 0u;
                *(v42 + 2) = 0u;
                *v42 = 0u;
                return (*(v33 + 8))(v36, v32);
              }

LABEL_8:
              result = (*(v33 + 8))(v36, v32);
              v45[1] = 0u;
              v45[2] = 0u;
              *v45 = 0u;
              return result;
            }

            (*(v33 + 96))(v36, v32);
            v47 = *(v67 + 32);
            v60 = v66;
            v61 = v68;
            v47(v66, v36, v68);
            v42[3] = v61;
            v42[4] = &off_1010B28C0;
            v62 = &unk_10118E0F8;
            v63 = &type metadata accessor for UploadedVideo;
            v64 = &protocol conformance descriptor for UploadedVideo;
          }

          v42[5] = sub_1004F23EC(v62, v63, v64);
          v48 = sub_10001C8B8(v42);
          v49 = v60;
          v52 = v61;
          return (v47)(v48, v49, v52);
        }

        (*(v33 + 96))(v36, v32);
        v47 = *(v85 + 32);
        v50 = v84;
        v46 = v86;
        v47(v84, v36, v86);
        v42[3] = v46;
        v42[4] = &off_1010B2860;
        v51 = &protocol witness table for Song;
        goto LABEL_11;
      }

      (*(v33 + 96))(v36, v32);
      v47 = *(v88 + 32);
      v50 = v87;
      v46 = v89;
      v47(v87, v36, v89);
      v42[3] = v46;
      v42[4] = &off_1010B2830;
      v53 = &unk_101192DA8;
      v54 = &type metadata accessor for SocialProfile;
      v55 = &protocol conformance descriptor for SocialProfile;
    }

    v42[5] = sub_1004F23EC(v53, v54, v55);
    goto LABEL_12;
  }

  (*(v33 + 96))(v36, v32);
  v46 = v109;
  v47 = *(v108 + 32);
  v47(v23, v36, v109);
  v42[3] = v46;
  v42[4] = &off_1010B27B0;
  v42[5] = sub_1004F23EC(&qword_10118E130, &type metadata accessor for Composer, &protocol conformance descriptor for Composer);
  v48 = sub_10001C8B8(v42);
  v49 = v23;
LABEL_13:
  v52 = v46;
  return (v47)(v48, v49, v52);
}

uint64_t sub_1004EEAE4()
{
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v1 = v8 - v0;
  sub_1004ED77C(v8);
  v2 = v9;
  if (v9)
  {
    v3 = v10;
    sub_10000954C(v8, v9);
    (*(v3 + 16))(v2, v3);
    sub_10000959C(v8);
    v4 = type metadata accessor for URL();
    v5 = 1;
    if ((*(*(v4 - 8) + 48))(v1, 1, v4) != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1000095E8(v8, &qword_101192DA0, &qword_100ED0790);
    v6 = type metadata accessor for URL();
    (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  }

  v5 = 0;
LABEL_6:
  sub_1000095E8(v1, &qword_101183A20, &unk_100EBCF80);
  return v5;
}

uint64_t sub_1004EEC70(uint64_t a1, __n128 a2)
{
  v2[2] = a1;
  v3 = type metadata accessor for String.Encoding();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_1004EED30, 0, 0);
}

uint64_t sub_1004EED30()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  GenericMusicItem.title.getter();
  static String.Encoding.utf8.getter();
  v4 = String.data(using:allowLossyConversion:)();
  v6 = v5;

  (*(v2 + 8))(v1, v3);
  if (v6 >> 60 == 15)
  {
    v4 = 0;
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v6;
  }

  v8 = v0[1];

  return v8(v4, v7);
}

uint64_t sub_1004EEF60(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1004EEFF4;

  return sub_1004ED2D8(a1);
}

uint64_t sub_1004EEFF4(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

unint64_t sub_1004EF100()
{
  result = qword_101192DB0;
  if (!qword_101192DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101192DB0);
  }

  return result;
}

uint64_t sub_1004EF154(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101192DC8, &qword_100ED07C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004EF1C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101192DC8, &qword_100ED07C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004EF234(uint64_t a1)
{
  v1[4] = a1;
  sub_10010FC20(&qword_101192DD8, &unk_100ED07D0);
  v1[5] = swift_task_alloc();
  v2 = type metadata accessor for GenericMusicItemEntity(0);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_10010FC20(&unk_101189DA0, &unk_100EBF370);
  v1[11] = swift_task_alloc();
  v3 = type metadata accessor for GenericMusicItem();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_1004EF3E4, 0, 0);
}

uint64_t sub_1004EF3E4()
{
  v1 = v0[4];
  v2 = v1[2];
  v0[16] = v2;
  if (v2)
  {
    v0[17] = 0;
    v0[18] = _swiftEmptyArrayStorage;
    v3 = v1[4];
    v0[19] = v3;
    v4 = v1[5];
    v0[20] = v4;

    v5 = swift_task_alloc();
    v0[21] = v5;
    *v5 = v0;
    v5[1] = sub_1004EF550;
    v6 = v0[11];

    return sub_10013A848(v6, v3, v4);
  }

  else
  {

    v8 = v0[1];

    return v8(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1004EF550()
{

  if (v0)
  {

    v1 = sub_1004EFD20;
  }

  else
  {
    v1 = sub_1004EF668;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1004EF668()
{
  v64 = v0;
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = &unk_101189DA0;
    v5 = &unk_100EBF370;
    v6 = v3;
LABEL_5:
    sub_1000095E8(v6, v4, v5);
    if (qword_10117F6D0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000060E4(v13, qword_101218C28);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[20];
    if (v16)
    {
      v18 = v0[19];
      v19 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v19 = 136446466;
      v0[2] = &type metadata for GenericMusicItemEntityQuery;
      sub_10010FC20(&qword_101192DE8, &unk_100ED07F8);
      v20 = String.init<A>(describing:)();
      v22 = sub_1000105AC(v20, v21, &v63);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2082;
      v23 = sub_1000105AC(v18, v17, &v63);

      *(v19 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s – Query failed for identifier %{public}s", v19, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v24 = v0[18];
    goto LABEL_20;
  }

  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[5];
  (*(v2 + 32))(v7, v3, v1);
  (*(v2 + 16))(v8, v7, v1);
  sub_1004EA998(v8, v11);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    v12 = v0[5];
    (*(v0[13] + 8))(v0[15], v0[12]);
    v4 = &qword_101192DD8;
    v5 = &unk_100ED07D0;
    v6 = v12;
    goto LABEL_5;
  }

  v26 = v0[9];
  v25 = v0[10];
  v27 = v0[5];

  sub_1004F22C8(v27, v25);
  sub_1004F232C(v25, v26);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = v0[18];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_10049A634(0, v24[2] + 1, 1, v0[18]);
  }

  v30 = v24[2];
  v29 = v24[3];
  if (v30 >= v29 >> 1)
  {
    v24 = sub_10049A634((v29 > 1), v30 + 1, 1, v24);
  }

  v31 = v0[9];
  v32 = v0[7];
  v24[2] = v30 + 1;
  sub_1004F22C8(v31, v24 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v30);
  if (qword_10117F6D0 != -1)
  {
    swift_once();
  }

  v33 = v0[10];
  v34 = v0[8];
  v35 = type metadata accessor for Logger();
  sub_1000060E4(v35, qword_101218C28);
  sub_1004F232C(v33, v34);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  v38 = os_log_type_enabled(v36, v37);
  v39 = v0[15];
  v40 = v0[12];
  v41 = v0[13];
  v42 = v0[10];
  v43 = v0[8];
  if (v38)
  {
    v62 = v0[10];
    v44 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v44 = 136446466;
    v0[3] = &type metadata for GenericMusicItemEntityQuery;
    sub_10010FC20(&qword_101192DE8, &unk_100ED07F8);
    v45 = String.init<A>(describing:)();
    v61 = v39;
    v60 = v40;
    v47 = sub_1000105AC(v45, v46, &v63);

    *(v44 + 4) = v47;
    *(v44 + 12) = 2082;
    v48 = sub_1004EB228();
    v50 = v49;
    sub_1004F2390(v43);
    v51 = sub_1000105AC(v48, v50, &v63);

    *(v44 + 14) = v51;
    _os_log_impl(&_mh_execute_header, v36, v37, "%{public}s – Query found entity %{public}s", v44, 0x16u);
    swift_arrayDestroy();

    sub_1004F2390(v62);
    (*(v41 + 8))(v61, v60);
  }

  else
  {

    sub_1004F2390(v43);
    sub_1004F2390(v42);
    (*(v41 + 8))(v39, v40);
  }

LABEL_20:
  v52 = v0[17] + 1;
  if (v52 == v0[16])
  {

    v53 = v0[1];

    return v53(v24);
  }

  else
  {
    v0[17] = v52;
    v0[18] = v24;
    v55 = v0[4] + 16 * v52;
    v56 = *(v55 + 32);
    v0[19] = v56;
    v57 = *(v55 + 40);
    v0[20] = v57;

    v58 = swift_task_alloc();
    v0[21] = v58;
    *v58 = v0;
    v58[1] = sub_1004EF550;
    v59 = v0[11];

    return sub_10013A848(v59, v56, v57);
  }
}

uint64_t sub_1004EFD20()
{
  v22 = v0;
  (*(v0[13] + 56))(v0[11], 1, 1, v0[12]);
  sub_1000095E8(v0[11], &unk_101189DA0, &unk_100EBF370);
  if (qword_10117F6D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101218C28);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[20];
  if (v4)
  {
    v6 = v0[19];
    v7 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v7 = 136446466;
    v0[2] = &type metadata for GenericMusicItemEntityQuery;
    sub_10010FC20(&qword_101192DE8, &unk_100ED07F8);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, &v21);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v11 = sub_1000105AC(v6, v5, &v21);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s – Query failed for identifier %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v12 = v0[17] + 1;
  if (v12 == v0[16])
  {
    v13 = v0[18];

    v14 = v0[1];

    return v14(v13);
  }

  else
  {
    v0[17] = v12;
    v16 = v0[4] + 16 * v12;
    v17 = *(v16 + 32);
    v0[19] = v17;
    v18 = *(v16 + 40);
    v0[20] = v18;

    v19 = swift_task_alloc();
    v0[21] = v19;
    *v19 = v0;
    v19[1] = sub_1004EF550;
    v20 = v0[11];

    return sub_10013A848(v20, v17, v18);
  }
}

uint64_t sub_1004F0070(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  sub_10010FC20(&qword_101192DC0, &unk_100ED07A0);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for MusicSiriRepresentation();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for DisplayRepresentation();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v6 = type metadata accessor for GenericMusicItemEntity(0);
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[21] = v7;
  *v7 = v2;
  v7[1] = sub_1004F02A8;

  return sub_1004EF234(a1);
}

uint64_t sub_1004F02A8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_1004F0464, 0, 0);
  }
}

uint64_t sub_1004F0464()
{
  v1 = v0[22];
  result = sub_10010D324(_swiftEmptyArrayStorage);
  v3 = *(v1 + 16);
  v0[23] = v3;
  if (v3)
  {
    v4 = v0[18];
    v0[24] = result;
    v0[25] = 0;
    v5 = v0[22];
    if (*(v5 + 16))
    {
      sub_1004F232C(v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v0[20]);
      v6 = swift_task_alloc();
      v0[26] = v6;
      *v6 = v0;
      v6[1] = sub_1004F0634;
      v7 = v0[16];
      v8 = v0[5];

      return sub_1004EB88C(v7, v8);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v10 = result;

    v9 = v0[1];

    return v9(v10);
  }

  return result;
}

uint64_t sub_1004F0634()
{

  return _swift_task_switch(sub_1004F0730, 0, 0);
}

uint64_t sub_1004F0730(__n128 a1)
{
  v83 = v1;
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[6];
  GenericMusicItem.optional_siriRepresentation.getter();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = v1[17];
    sub_1000095E8(v1[6], &qword_101192DC0, &unk_100ED07A0);
    _StringGuts.grow(_:)(43);

    v1[2] = v5;
    sub_10010FC20(&qword_101192DB8, &qword_100ED0798);
    v82[0] = String.init<A>(describing:)();
    v82[1] = v6;
    v7._object = 0x8000000100E4E510;
    v7._countAndFlagsBits = 0x1000000000000029;
    String.append(_:)(v7);
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v9 = v1[24];
  v10 = v1[15];
  v81 = v1[16];
  v12 = v1[11];
  v11 = v1[12];
  v13 = v1[10];
  v14 = v1[7];
  v15 = v1[8];
  (*(v15 + 32))(v13, v1[6], v14);
  v16 = MusicSiriRepresentation.id.getter();
  v18 = v17;
  v79 = *(v15 + 8);
  v79(v13, v14);
  v19 = *(v11 + 16);
  v19(v10, v81, v12);
  v20 = v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1[3] = v9;
  v22 = sub_100019C10(v16, v18);
  v24 = *(v9 + 16);
  v25 = (v23 & 1) == 0;
  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (v26)
  {
    __break(1u);
LABEL_28:
    swift_once();
    goto LABEL_16;
  }

  v28 = v23;
  if (*(v1[24] + 24) >= v27)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v73 = v22;
      sub_1006C9554();
      v22 = v73;
    }
  }

  else
  {
    sub_1006C2830(v27, isUniquelyReferenced_nonNull_native);
    v22 = sub_100019C10(v20, v18);
    if ((v28 & 1) != (v29 & 1))
    {

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }
  }

  v30 = v1[15];
  v31 = v1[11];
  v32 = v1[12];
  if (v28)
  {
    v33 = v22;

    v81 = v1[3];
    (*(v32 + 40))(v81[7] + *(v32 + 72) * v33, v30, v31);
  }

  else
  {
    v34 = v1[3];
    v34[(v22 >> 6) + 8] |= 1 << v22;
    v35 = (v34[6] + 16 * v22);
    *v35 = v20;
    v35[1] = v18;
    result = (*(v32 + 32))(v34[7] + *(v32 + 72) * v22, v30, v31);
    v36 = v34[2];
    v26 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v26)
    {
      __break(1u);
      goto LABEL_30;
    }

    v81 = v34;
    v34[2] = v37;
  }

  if (qword_10117F6D0 != -1)
  {
    goto LABEL_28;
  }

LABEL_16:
  v38 = v1[19];
  v39 = v1[20];
  v40 = v1[16];
  v41 = v1[14];
  v42 = v1[11];
  v43 = type metadata accessor for Logger();
  sub_1000060E4(v43, qword_101218C28);
  sub_1004F232C(v39, v38);
  v19(v41, v40, v42);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v1[19];
  v48 = v1[20];
  v80 = v1[16];
  v49 = v1[14];
  if (v46)
  {
    v78 = v1[12];
    v76 = v1[13];
    v77 = v1[11];
    v50 = v1[9];
    v74 = v1[7];
    v75 = v19;
    v51 = swift_slowAlloc();
    v82[0] = swift_slowAlloc();
    *v51 = 136446722;
    v1[4] = &type metadata for GenericMusicItemEntityQuery;
    sub_10010FC20(&qword_101192DE8, &unk_100ED07F8);
    v52 = String.init<A>(describing:)();
    v54 = sub_1000105AC(v52, v53, v82);

    *(v51 + 4) = v54;
    *(v51 + 12) = 2082;
    sub_1004EAD74(v50);
    v55 = MusicSiriRepresentation.id.getter();
    v57 = v56;
    v79(v50, v74);
    sub_1004F2390(v47);
    v58 = sub_1000105AC(v55, v57, v82);

    *(v51 + 14) = v58;
    *(v51 + 22) = 2082;
    v75(v76, v49, v77);
    v59 = String.init<A>(describing:)();
    v61 = v60;
    v62 = *(v78 + 8);
    v62(v49, v77);
    v63 = sub_1000105AC(v59, v61, v82);

    *(v51 + 24) = v63;
    _os_log_impl(&_mh_execute_header, v44, v45, "%{public}s – Entity %{public}s has display representation %{public}s", v51, 0x20u);
    swift_arrayDestroy();

    v62(v80, v77);
  }

  else
  {
    v65 = v1[11];
    v64 = v1[12];

    v66 = *(v64 + 8);
    v66(v49, v65);
    sub_1004F2390(v47);
    v66(v80, v65);
  }

  result = sub_1004F2390(v48);
  v67 = v1[25] + 1;
  if (v67 == v1[23])
  {

    v68 = v1[1];

    return v68(v81);
  }

  v1[24] = v81;
  v1[25] = v67;
  v69 = v1[22];
  if (v67 >= *(v69 + 16))
  {
LABEL_30:
    __break(1u);
    return result;
  }

  sub_1004F232C(v69 + ((*(v1[18] + 80) + 32) & ~*(v1[18] + 80)) + *(v1[18] + 72) * v67, v1[20]);
  v70 = swift_task_alloc();
  v1[26] = v70;
  *v70 = v1;
  v70[1] = sub_1004F0634;
  v71 = v1[16];
  v72 = v1[5];

  return sub_1004EB88C(v71, v72);
}

uint64_t sub_1004F0EF8()
{
  sub_10010FC20(&qword_101192DF0, &qword_100ED0808);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100ED02D0;
  *(v0 + 32) = type metadata accessor for Album();
  *(v0 + 40) = &protocol witness table for Album;
  *(v0 + 48) = type metadata accessor for Artist();
  *(v0 + 56) = &protocol witness table for Artist;
  *(v0 + 64) = type metadata accessor for Curator();
  *(v0 + 72) = &protocol witness table for Curator;
  v1 = type metadata accessor for EditorialItem();
  v2 = sub_1004F23EC(&qword_101192DF8, &type metadata accessor for EditorialItem, &protocol conformance descriptor for EditorialItem);
  *(v0 + 80) = v1;
  *(v0 + 88) = v2;
  v3 = type metadata accessor for Genre();
  v4 = sub_1004F23EC(&qword_101192E00, &type metadata accessor for Genre, &protocol conformance descriptor for Genre);
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  v5 = type metadata accessor for MusicMovie();
  v6 = sub_1004F23EC(&qword_101192E08, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  *(v0 + 112) = v5;
  *(v0 + 120) = v6;
  *(v0 + 128) = type metadata accessor for MusicVideo();
  *(v0 + 136) = &protocol witness table for MusicVideo;
  *(v0 + 144) = type metadata accessor for Playlist();
  *(v0 + 152) = &protocol witness table for Playlist;
  *(v0 + 160) = type metadata accessor for RadioShow();
  *(v0 + 168) = &protocol witness table for RadioShow;
  *(v0 + 176) = type metadata accessor for RecordLabel();
  *(v0 + 184) = &protocol witness table for RecordLabel;
  *(v0 + 192) = type metadata accessor for Song();
  *(v0 + 200) = &protocol witness table for Song;
  *(v0 + 208) = type metadata accessor for Station();
  *(v0 + 216) = &protocol witness table for Station;
  v7 = type metadata accessor for TVEpisode();
  v8 = sub_1004F23EC(&qword_101192E10, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  *(v0 + 224) = v7;
  *(v0 + 232) = v8;
  v9 = type metadata accessor for TVShow();
  v10 = sub_1004F23EC(&qword_101192E18, &type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  *(v0 + 240) = v9;
  *(v0 + 248) = v10;
  v11 = type metadata accessor for UploadedVideo();
  v12 = sub_1004F23EC(&qword_101192E20, &type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
  *(v0 + 256) = v11;
  *(v0 + 264) = v12;
  return v0;
}

uint64_t sub_1004F1194(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  sub_10010FC20(&qword_101192DD8, &unk_100ED07D0);
  v2[6] = swift_task_alloc();
  v3 = type metadata accessor for GenericMusicItemEntity(0);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  sub_10010FC20(&unk_101189DA0, &unk_100EBF370);
  v2[11] = swift_task_alloc();
  v4 = sub_10010FC20(&qword_10118C1D8, &qword_100ED07E0);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for GenericMusicItem();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v6 = type metadata accessor for MusicSearchResultGroup();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  sub_10010FC20(&qword_101192DE0, &unk_100ED07E8);
  v2[22] = swift_task_alloc();
  v7 = type metadata accessor for MusicCatalogInternalSearchResponse();
  v2[23] = v7;
  v2[24] = *(v7 - 8);
  v2[25] = swift_task_alloc();
  v8 = type metadata accessor for MusicCatalogInternalSearchRequest.LyricsOption();
  v2[26] = v8;
  v2[27] = *(v8 - 8);
  v2[28] = swift_task_alloc();
  sub_10010FC20(&qword_10118E488, &qword_100ECA8E0);
  v2[29] = swift_task_alloc();
  v9 = type metadata accessor for MusicCatalogInternalSearchRequest();
  v2[30] = v9;
  v2[31] = *(v9 - 8);
  v2[32] = swift_task_alloc();

  return _swift_task_switch(sub_1004F1580, 0, 0);
}

uint64_t sub_1004F1580()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[27];
  sub_1004F0EF8();

  MusicCatalogInternalSearchRequest.init(term:types:)();
  v5 = enum case for MusicDataRequest.Source.appIntents(_:);
  v6 = type metadata accessor for MusicDataRequest.Source();
  v7 = *(v6 - 8);
  (*(v7 + 104))(v2, v5, v6);
  (*(v7 + 56))(v2, 0, 1, v6);
  MusicCatalogInternalSearchRequest.source.setter();
  MusicCatalogInternalSearchRequest.sparseCount.setter();
  MusicCatalogInternalSearchRequest.limit.setter();
  (*(v4 + 104))(v1, enum case for MusicCatalogInternalSearchRequest.LyricsOption.includeWithoutHighlights(_:), v3);
  MusicCatalogInternalSearchRequest.lyricsOption.setter();
  MusicCatalogInternalSearchRequest.includeImmersiveContent.setter();
  v8 = swift_task_alloc();
  v0[33] = v8;
  *v8 = v0;
  v8[1] = sub_1004F173C;
  v9 = v0[22];

  return MusicCatalogInternalSearchRequest.response()(v9);
}

uint64_t sub_1004F173C()
{

  if (v0)
  {

    v1 = sub_1004F1FE8;
  }

  else
  {
    v1 = sub_1004F1854;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1004F1854()
{
  v77 = v0;
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  v5 = MusicCatalogInternalSearchResponse.resultGroups.getter();
  if (!*(v5 + 16))
  {
    (*(v0[24] + 8))(v0[25], v0[23]);

LABEL_8:
    if (qword_10117F6D0 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1000060E4(v34, qword_101218C28);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v38 = v0[4];
      v37 = v0[5];
      v39 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v39 = 136446466;
      v0[2] = &type metadata for GenericMusicItemEntityQuery;
      sub_10010FC20(&qword_101192DE8, &unk_100ED07F8);
      v40 = String.init<A>(describing:)();
      v42 = sub_1000105AC(v40, v41, &v76);

      *(v39 + 4) = v42;
      *(v39 + 12) = 2082;
      *(v39 + 14) = sub_1000105AC(v38, v37, &v76);
      _os_log_impl(&_mh_execute_header, v35, v36, "%{public}s – No results for search term %{public}s", v39, 0x16u);
      swift_arrayDestroy();
    }

    v75 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v6 = v0[15];
  v7 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  v11 = v0[11];
  v10 = v0[12];
  (*(v0[20] + 16))(v0[21], v5 + ((*(v0[20] + 80) + 32) & ~*(v0[20] + 80)), v0[19]);

  MusicSearchResultGroup.items.getter();
  sub_10034DF7C(v11);
  (*(v9 + 8))(v8, v10);
  v12 = (*(v7 + 48))(v11, 1, v6);
  v13 = v0[11];
  if (v12 == 1)
  {
    v15 = v0[24];
    v14 = v0[25];
    v16 = v0[23];
    (*(v0[20] + 8))(v0[21], v0[19]);
    (*(v15 + 8))(v14, v16);
    v17 = &unk_101189DA0;
    v18 = &unk_100EBF370;
    v19 = v13;
LABEL_7:
    sub_1000095E8(v19, v17, v18);
    goto LABEL_8;
  }

  v21 = v0[17];
  v20 = v0[18];
  v22 = v0[15];
  v23 = v0[16];
  v24 = v0[7];
  v25 = v0[8];
  v26 = v0[6];
  (*(v23 + 32))(v20, v0[11], v22);
  (*(v23 + 16))(v21, v20, v22);
  sub_1004EA998(v21, v26);
  if ((*(v25 + 48))(v26, 1, v24) == 1)
  {
    v28 = v0[24];
    v27 = v0[25];
    v29 = v0[23];
    v31 = v0[20];
    v30 = v0[21];
    v32 = v0[19];
    v33 = v0[6];
    (*(v0[16] + 8))(v0[18], v0[15]);
    (*(v31 + 8))(v30, v32);
    (*(v28 + 8))(v27, v29);
    v17 = &qword_101192DD8;
    v18 = &unk_100ED07D0;
    v19 = v33;
    goto LABEL_7;
  }

  sub_1004F22C8(v0[6], v0[10]);
  if (qword_10117F6D0 != -1)
  {
    swift_once();
  }

  v45 = v0[9];
  v46 = v0[10];
  v47 = type metadata accessor for Logger();
  sub_1000060E4(v47, qword_101218C28);
  sub_1004F232C(v46, v45);

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();

  v50 = os_log_type_enabled(v48, v49);
  v51 = v0[9];
  if (v50)
  {
    v53 = v0[4];
    v52 = v0[5];
    v54 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v54 = 136446722;
    v0[3] = &type metadata for GenericMusicItemEntityQuery;
    sub_10010FC20(&qword_101192DE8, &unk_100ED07F8);
    v55 = String.init<A>(describing:)();
    v57 = sub_1000105AC(v55, v56, &v76);

    *(v54 + 4) = v57;
    *(v54 + 12) = 2082;
    *(v54 + 14) = sub_1000105AC(v53, v52, &v76);
    *(v54 + 22) = 2082;
    v58 = sub_1004EB228();
    v60 = v59;
    sub_1004F2390(v51);
    v61 = sub_1000105AC(v58, v60, &v76);

    *(v54 + 24) = v61;
    _os_log_impl(&_mh_execute_header, v48, v49, "%{public}s – Search for term %{public}s found entity %{public}s", v54, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1004F2390(v51);
  }

  v62 = v0[24];
  v73 = v0[23];
  v74 = v0[25];
  v64 = v0[20];
  v63 = v0[21];
  v66 = v0[18];
  v65 = v0[19];
  v68 = v0[15];
  v67 = v0[16];
  v69 = v0[10];
  v70 = v0[8];
  sub_10010FC20(&qword_1011920A8, qword_100ECF2A0);
  v71 = (*(v70 + 80) + 32) & ~*(v70 + 80);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_100EBC6B0;
  v75 = v72;
  sub_1004F22C8(v69, v72 + v71);
  (*(v67 + 8))(v66, v68);
  (*(v64 + 8))(v63, v65);
  (*(v62 + 8))(v74, v73);
LABEL_13:
  (*(v0[31] + 8))(v0[32], v0[30]);

  v43 = v0[1];

  return v43(v75);
}

uint64_t sub_1004F1FE8()
{
  v14 = v0;
  v1 = v0[22];
  (*(v0[24] + 56))(v1, 1, 1, v0[23]);
  sub_1000095E8(v1, &qword_101192DE0, &unk_100ED07E8);
  if (qword_10117F6D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, qword_101218C28);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[4];
    v5 = v0[5];
    v7 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v7 = 136446466;
    v0[2] = &type metadata for GenericMusicItemEntityQuery;
    sub_10010FC20(&qword_101192DE8, &unk_100ED07F8);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, &v13);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_1000105AC(v6, v5, &v13);
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s – No results for search term %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  (*(v0[31] + 8))(v0[32], v0[30]);

  v11 = v0[1];

  return v11(_swiftEmptyArrayStorage);
}

uint64_t sub_1004F22C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericMusicItemEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004F232C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericMusicItemEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004F2390(uint64_t a1)
{
  v2 = type metadata accessor for GenericMusicItemEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004F23EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1004F2448()
{
  result = qword_101192E38;
  if (!qword_101192E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101192E38);
  }

  return result;
}

void *sub_1004F24B0(uint64_t a1)
{
  sub_10010FC20(&unk_10118D250, &unk_100EC8F78);
  __chkstk_darwin();
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v15 - v5;
  sub_1000089F8(a1, &v15, &qword_1011A3DD0, &unk_100EC03F0);
  if (v16)
  {
    sub_100059A8C(&v15, v18);
    v7 = v19;
    v8 = v20;
    v9 = sub_10000954C(v18, v19);
    v16 = v7;
    v17 = *(v8 + 8);
    v10 = sub_10001C8B8(&v15);
    (*(*(v7 - 8) + 16))(v10, v9, v7);
    sub_100663984(&v15, v6);
    sub_10000959C(&v15);
    sub_1000089F8(v6, v4, &unk_10118D250, &unk_100EC8F78);
    UIView.appEntityIdentifier.setter();
    sub_1000095E8(v6, &unk_10118D250, &unk_100EC8F78);
    v11 = v1;
    sub_10000959C(v18);
  }

  else
  {
    sub_1000095E8(&v15, &qword_1011A3DD0, &unk_100EC03F0);
    v12 = type metadata accessor for EntityIdentifier();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    UIView.appEntityIdentifier.setter();
    v13 = v1;
  }

  return v1;
}

uint64_t sub_1004F26A8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v180 = a1;
  sub_10010FC20(&unk_1011A38A0, &qword_100EE5560);
  __chkstk_darwin();
  v137 = &v131 - v3;
  v136 = type metadata accessor for TVShow();
  v135 = *(v136 - 8);
  __chkstk_darwin();
  v133 = &v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101181B78, &qword_100EBD648);
  __chkstk_darwin();
  v141 = &v131 - v5;
  v140 = type metadata accessor for TVSeason();
  v139 = *(v140 - 8);
  __chkstk_darwin();
  v134 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011996D0, &unk_100ED8090);
  __chkstk_darwin();
  v147 = &v131 - v7;
  v144 = type metadata accessor for TVEpisode();
  v143 = *(v144 - 8);
  __chkstk_darwin();
  v138 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011838C0, &qword_100EBD688);
  __chkstk_darwin();
  v148 = &v131 - v9;
  v149 = type metadata accessor for Station();
  v150 = *(v149 - 8);
  __chkstk_darwin();
  v142 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  __chkstk_darwin();
  v151 = &v131 - v11;
  v152 = type metadata accessor for Song();
  v156 = *(v152 - 8);
  __chkstk_darwin();
  v146 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  __chkstk_darwin();
  v153 = &v131 - v13;
  v155 = type metadata accessor for MusicVideo();
  v154 = *(v155 - 8);
  __chkstk_darwin();
  v145 = &v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101181BB8, &qword_100EBD6C8);
  __chkstk_darwin();
  v158 = &v131 - v15;
  v159 = type metadata accessor for RecordLabel();
  v160 = *(v159 - 8);
  __chkstk_darwin();
  v157 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v162 = &v131 - v17;
  v18 = type metadata accessor for Playlist();
  v19 = *(v18 - 8);
  v163 = v18;
  v164 = v19;
  __chkstk_darwin();
  v161 = &v131 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011803F0, &qword_100EBA6C0);
  __chkstk_darwin();
  v166 = &v131 - v21;
  v22 = type metadata accessor for MusicMovie();
  v23 = *(v22 - 8);
  v167 = v22;
  v168 = v23;
  __chkstk_darwin();
  v165 = &v131 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_10118DE80, &unk_100EE4D70);
  __chkstk_darwin();
  v171 = &v131 - v25;
  v172 = type metadata accessor for Genre();
  v170 = *(v172 - 8);
  __chkstk_darwin();
  v169 = &v131 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118C170, &qword_100EBD778);
  __chkstk_darwin();
  v179 = &v131 - v27;
  v28 = type metadata accessor for Curator();
  v29 = *(v28 - 8);
  v174 = v28;
  v175 = v29;
  __chkstk_darwin();
  v173 = &v131 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118C4F0, &qword_100ECB9A0);
  __chkstk_darwin();
  v178 = &v131 - v31;
  v32 = type metadata accessor for Composer();
  v177 = *(v32 - 8);
  __chkstk_darwin();
  v34 = &v131 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184930, &unk_100EC05C0);
  __chkstk_darwin();
  v36 = &v131 - v35;
  v37 = type metadata accessor for Artist();
  v176 = *(v37 - 8);
  __chkstk_darwin();
  v39 = &v131 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v41 = &v131 - v40;
  v42 = type metadata accessor for Album();
  v43 = *(v42 - 8);
  __chkstk_darwin();
  v45 = &v131 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v181 = v2;
  if (!swift_dynamicCastObjCClass())
  {
    v50 = v39;
    v51 = v176;
    v132 = v34;
    v53 = v177;
    v52 = v178;
    v54 = v32;
    v55 = v179;
    objc_opt_self();
    v56 = v181;
    if (swift_dynamicCastObjCClass())
    {
      v57 = v56;
      dispatch thunk of LegacyModelObjectConvertible.init(_:)();
      if ((*(v51 + 48))(v36, 1, v37) != 1)
      {
        v67 = *(v51 + 32);
        v67(v50, v36, v37);
        v68 = v180;
        v180[3] = v37;
        v68[4] = &protocol witness table for Artist;
        v69 = sub_10001C8B8(v68);
        return (v67)(v69, v50, v37);
      }

      v47 = &unk_101184930;
      v48 = &unk_100EC05C0;
      v49 = v36;
      goto LABEL_25;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v64 = v56;
      v65 = v52;
      v66 = v54;
      dispatch thunk of LegacyModelObjectConvertible.init(_:)();
      if ((*(v53 + 48))(v52, 1, v54) != 1)
      {
        v74 = *(v53 + 32);
        v75 = v132;
        v74(v132, v65, v54);
        v76 = v180;
        v180[3] = v66;
        v76[4] = sub_1004F3ED8(&unk_10118C500, &type metadata accessor for Composer, &protocol conformance descriptor for Composer);
        v77 = sub_10001C8B8(v76);
        return (v74)(v77, v75, v66);
      }

      v47 = &unk_10118C4F0;
      v48 = &qword_100ECB9A0;
      v49 = v52;
      goto LABEL_25;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v70 = v56;
      v71 = v55;
      v72 = v174;
      dispatch thunk of LegacyModelObjectConvertible.init(_:)();
      v73 = v175;
      if ((*(v175 + 48))(v71, 1, v72) != 1)
      {
        v82 = *(v73 + 32);
        v83 = v173;
        v82(v173, v71, v72);
        v84 = v180;
        v180[3] = v72;
        v84[4] = &protocol witness table for Curator;
        v85 = sub_10001C8B8(v84);
        return (v82)(v85, v83, v72);
      }

      v47 = &unk_10118C170;
      v48 = &qword_100EBD778;
      v49 = v71;
      goto LABEL_25;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v78 = v56;
      v79 = v171;
      Genre.init(_:)();
      v80 = v170;
      v81 = v172;
      if ((*(v170 + 48))(v79, 1, v172) == 1)
      {
        v47 = &qword_10118DE80;
        v48 = &unk_100EE4D70;
LABEL_20:
        v49 = v79;
        goto LABEL_25;
      }

      v91 = *(v80 + 32);
      v92 = v169;
      v91(v169, v79, v81);
      v93 = &protocol witness table for Genre;
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v86 = v56;
        v88 = v166;
        v87 = v167;
        dispatch thunk of LegacyModelObjectConvertible.init(_:)();
        v89 = v168;
        if ((*(v168 + 48))(v88, 1, v87) != 1)
        {
          v98 = *(v89 + 32);
          v99 = v165;
          v98(v165, v88, v87);
          v100 = v180;
          v180[3] = v87;
          v100[4] = sub_1004F3ED8(&unk_1011A38B0, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
          v101 = sub_10001C8B8(v100);
          return (v98)(v101, v99, v87);
        }

        v47 = &unk_1011803F0;
        v48 = &qword_100EBA6C0;
        v49 = v88;
        goto LABEL_25;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v96 = v56;
        v79 = v162;
        v81 = v163;
        dispatch thunk of LegacyModelObjectConvertible.init(_:)();
        v97 = v164;
        if ((*(v164 + 48))(v79, 1, v81) == 1)
        {
          v47 = &unk_1011814D0;
          v48 = &qword_100EC12A0;
          goto LABEL_20;
        }

        v91 = *(v97 + 32);
        v92 = v161;
        v91(v161, v79, v81);
        v93 = &protocol witness table for Playlist;
      }

      else
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v102 = v56;
          v79 = v158;
          v81 = v159;
          dispatch thunk of LegacyModelObjectConvertible.init(_:)();
          v103 = v160;
          if ((*(v160 + 48))(v79, 1, v81) == 1)
          {
            v47 = &qword_101181BB8;
            v48 = &qword_100EBD6C8;
            goto LABEL_20;
          }

          v91 = *(v103 + 32);
          v92 = v157;
          v91(v157, v79, v81);
          v93 = &protocol witness table for RecordLabel;
        }

        else
        {
          objc_opt_self();
          v104 = swift_dynamicCastObjCClass();
          if (v104)
          {
            v105 = [v104 hasVideo];
            v106 = v56;
            if (v105)
            {
              v79 = v153;
              v81 = v155;
              dispatch thunk of LegacyModelObjectConvertible.init(_:)();
              v107 = v154;
              if ((*(v154 + 48))(v79, 1, v81) == 1)
              {
                v47 = &unk_1011846B0;
                v48 = &unk_100ECB630;
                goto LABEL_20;
              }

              v91 = *(v107 + 32);
              v92 = v145;
              v91(v145, v79, v81);
              v93 = &protocol witness table for MusicVideo;
            }

            else
            {
              v79 = v151;
              v81 = v152;
              dispatch thunk of LegacyModelObjectConvertible.init(_:)();
              v110 = v156;
              if ((*(v156 + 48))(v79, 1, v81) == 1)
              {
                v47 = &unk_101183960;
                v48 = &unk_100EBCF90;
                goto LABEL_20;
              }

              v91 = *(v110 + 32);
              v92 = v146;
              v91(v146, v79, v81);
              v93 = &protocol witness table for Song;
            }
          }

          else
          {
            objc_opt_self();
            if (!swift_dynamicCastObjCClass())
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                v111 = v181;
                v112 = v147;
                v113 = v144;
                dispatch thunk of LegacyModelObjectConvertible.init(_:)();
                if ((*(v143 + 48))(v112, 1, v113) == 1)
                {
                  v47 = &unk_1011996D0;
                  v48 = &unk_100ED8090;
                  v49 = v147;
                  goto LABEL_25;
                }

                v117 = *(v143 + 32);
                v118 = v138;
                v119 = v144;
                v117(v138, v147, v144);
                v120 = v180;
                v180[3] = v119;
                v121 = &unk_1011996F0;
                v122 = &type metadata accessor for TVEpisode;
                v123 = &protocol conformance descriptor for TVEpisode;
              }

              else
              {
                objc_opt_self();
                if (swift_dynamicCastObjCClass())
                {
                  v114 = v181;
                  v115 = v141;
                  v116 = v140;
                  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
                  if ((*(v139 + 48))(v115, 1, v116) == 1)
                  {
                    v47 = &qword_101181B78;
                    v48 = &qword_100EBD648;
                    v49 = v141;
                    goto LABEL_25;
                  }

                  v58 = *(v139 + 32);
                  v128 = v134;
                  v129 = v140;
                  v58(v134, v141, v140);
                  v130 = v180;
                  v180[3] = v129;
                  v130[4] = sub_1004F3ED8(&qword_101192E48, &type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
                  v60 = sub_10001C8B8(v130);
                  v61 = v128;
                  v62 = v129;
                  return (v58)(v60, v61, v62);
                }

                objc_opt_self();
                result = swift_dynamicCastObjCClass();
                if (!result)
                {
                  goto LABEL_26;
                }

                v125 = v181;
                v126 = v137;
                v127 = v136;
                dispatch thunk of LegacyModelObjectConvertible.init(_:)();
                if ((*(v135 + 48))(v126, 1, v127) == 1)
                {
                  v47 = &unk_1011A38A0;
                  v48 = &qword_100EE5560;
                  v49 = v137;
                  goto LABEL_25;
                }

                v117 = *(v135 + 32);
                v118 = v133;
                v119 = v136;
                v117(v133, v137, v136);
                v120 = v180;
                v180[3] = v119;
                v121 = &unk_101192E40;
                v122 = &type metadata accessor for TVShow;
                v123 = &protocol conformance descriptor for TVShow;
              }

              v120[4] = sub_1004F3ED8(v121, v122, v123);
              v124 = sub_10001C8B8(v120);
              return (v117)(v124, v118, v119);
            }

            v108 = v56;
            v79 = v148;
            v81 = v149;
            dispatch thunk of LegacyModelObjectConvertible.init(_:)();
            v109 = v150;
            if ((*(v150 + 48))(v79, 1, v81) == 1)
            {
              v47 = &unk_1011838C0;
              v48 = &qword_100EBD688;
              goto LABEL_20;
            }

            v91 = *(v109 + 32);
            v92 = v142;
            v91(v142, v79, v81);
            v93 = &protocol witness table for Station;
          }
        }
      }
    }

    v94 = v180;
    v180[3] = v81;
    v94[4] = v93;
    v95 = sub_10001C8B8(v94);
    return (v91)(v95, v92, v81);
  }

  v46 = v181;
  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
  if ((*(v43 + 48))(v41, 1, v42) != 1)
  {
    v58 = *(v43 + 32);
    v58(v45, v41, v42);
    v59 = v180;
    v180[3] = v42;
    v59[4] = &protocol witness table for Album;
    v60 = sub_10001C8B8(v59);
    v61 = v45;
    v62 = v42;
    return (v58)(v60, v61, v62);
  }

  v47 = &unk_101184730;
  v48 = &unk_100ECB920;
  v49 = v41;
LABEL_25:
  result = sub_1000095E8(v49, v47, v48);
LABEL_26:
  v90 = v180;
  v180[4] = 0;
  *v90 = 0u;
  *(v90 + 1) = 0u;
  return result;
}

uint64_t sub_1004F3ED8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004F3F88(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 16 * a1;
    v10 = *(v9 + 32);
    memmove((v9 + 32), (v9 + 48), 16 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    return v10;
  }

  return result;
}

uint64_t sub_1004F401C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100501520(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for Lyrics.TextLine(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_100501D04(v11, a2, type metadata accessor for Lyrics.TextLine);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}