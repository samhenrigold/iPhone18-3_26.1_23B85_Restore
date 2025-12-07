uint64_t sub_1002027C8()
{
  v1 = v0;
  v2 = type metadata accessor for Artist();
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin();
  v46 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for SymbolEffectOptions();
  v4 = *(v45 - 8);
  __chkstk_darwin();
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BounceSymbolEffect();
  v40 = *(v7 - 8);
  v41 = v7;
  __chkstk_darwin();
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v38 - v10;
  sub_10010FC20(&unk_101184950, &qword_100EC05E0);
  __chkstk_darwin();
  v13 = &v38 - v12;
  v14 = &v0[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_isFavoritedState];
  swift_beginAccess();
  v15 = sub_10010FC20(&qword_101184608, &qword_100EC0340);
  sub_1000089F8(&v14[*(v15 + 28)], v13, &unk_101184950, &qword_100EC05E0);
  v16 = sub_10010FC20(&qword_101184610, &qword_100EC0348);
  if ((*(*(v16 - 8) + 48))(v13, 1, v16) == 1)
  {
    sub_1000095E8(v13, &unk_101184950, &qword_100EC05E0);
    v17 = *v14;
  }

  else
  {
    v17 = v13[*(v16 + 32)];
    sub_1000095E8(v13, &qword_101184610, &qword_100EC0348);
  }

  swift_endAccess();
  sub_100216128(v17, v49);
  v42 = v49[1];
  v18 = v49[3];
  v19 = v49[4];
  v43 = v49[5];
  v44 = v49[0];
  v20 = v49[6];
  if (v17 && v1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_viewHasAppeared] == 1)
  {
    v38 = sub_1001FE348();
    BounceSymbolEffect.init()();
    BounceSymbolEffect.up.getter();
    v39 = v18;
    v40 = *(v40 + 8);
    v21 = v11;
    v22 = v41;
    (v40)(v21, v41);
    static SymbolEffectOptions.default.getter();
    sub_100218B94(&qword_101183AA8, &type metadata accessor for BounceSymbolEffect, &protocol conformance descriptor for BounceSymbolEffect);
    v23 = v38;
    UIBarButtonItem.addSymbolEffect<A>(_:options:animated:)();

    (*(v4 + 8))(v6, v45);
    (v40)(v9, v22);
    v18 = v39;
  }

  else
  {
    v24 = sub_1001FE348();
    static SymbolEffectOptions.default.getter();
    UIBarButtonItem.removeAllSymbolEffects(options:animated:)();

    (*(v4 + 8))(v6, v45);
  }

  v25 = sub_1001FE348();
  v26 = v44;
  [v25 setImage:v44];

  v27 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___favoriteBarButtonItem;
  v28 = *&v1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___favoriteBarButtonItem];

  v29 = String._bridgeToObjectiveC()();

  [v28 setTitle:v29];

  v30 = *&v1[v27];
  sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
  v31 = v30;

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v18, v19, v43, v20);

  v32 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artist;
  swift_beginAccess();
  v34 = v46;
  v33 = v47;
  v35 = &v1[v32];
  v36 = v48;
  (*(v47 + 16))(v46, v35, v48);
  sub_1002157F8(v34, v1);

  return (*(v33 + 8))(v34, v36);
}

void sub_100202DC0(char a1)
{
  v2 = v1;
  v12.receiver = v1;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "viewWillAppear:", a1 & 1);
  v4 = sub_1001FC918();
  UICollectionView.clearSelection(using:animated:)([v2 transitionCoordinator], a1);

  swift_unknownObjectRelease();
  v5 = [v2 transitionCoordinator];
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11[4] = sub_100219078;
    v11[5] = v7;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1007E9F28;
    v11[3] = &unk_1010A1500;
    v8 = _Block_copy(v11);

    [v6 animateAlongsideTransition:0 completion:v8];
    _Block_release(v8);
    swift_unknownObjectRelease();
  }

  else
  {
    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  }

  type metadata accessor for ApplicationMainMenu();
  v9 = sub_100314AEC();
  if (v9)
  {
    v10 = v9;
    sub_100059768();
  }
}

void sub_100202F7C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  }
}

uint64_t sub_100203050(char a1)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for MetricsEvent.Page(0);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v1;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "viewDidAppear:", a1 & 1, v4);
  *(v1 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_viewHasAppeared) = 1;
  v7 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v8 = MetricsEvent.Page.libraryArtistDetail.unsafeMutableAddressor();
  sub_100217D58(v8, v6, type metadata accessor for MetricsEvent.Page);
  v9 = sub_10053771C();
  v11 = v10;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v12 = qword_101218AD0;
  v13 = GroupActivitiesManager.hasJoined.getter();
  v14 = GroupActivitiesManager.participantsCount.getter();
  v15 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v7) + 0xA0))(v6, v9, v11, v13 & 1, v14, *(v12 + v15));

  return sub_100217EB4(v6, type metadata accessor for MetricsEvent.Page);
}

void sub_100203374(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_10010FC20(&qword_101184850, &qword_100EC0508);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v17 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artistHeader);
    *(Strong + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artistHeader) = a1;
    v12 = Strong;

    a1;
    v13 = [v12 traitCollection];
    v14 = [v13 horizontalSizeClass];

    __chkstk_darwin();
    v17[-2] = v14;
    v17[-1] = v12;
    sub_10010FC20(&qword_101184858, &qword_100EC0510);
    v15 = sub_1001109D0(&qword_101184860, &qword_100EC0518);
    v16 = sub_100218C4C();
    v17[0] = v15;
    v17[1] = v16;
    swift_getOpaqueTypeConformance2();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v17[3] = v6;
    v17[4] = sub_100020674(&qword_101184890, &qword_101184850, &qword_100EC0508, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10001C8B8(v17);
    UIHostingConfiguration.margins(_:_:)();
    (*(v7 + 8))(v9, v6);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_1002035E0(uint64_t a1, char *a2)
{
  v4 = sub_10010FC20(&qword_101184860, &qword_100EC0518);
  __chkstk_darwin();
  v6 = &v26 - v5;
  if (a1 == 2)
  {
    v7 = 0x4034000000000000;
  }

  else
  {
    v7 = 0x4031000000000000;
  }

  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = v7;
  v6[16] = 0;
  v8 = sub_10010FC20(&qword_101184898, &unk_100EC0530);
  sub_1002037F8(a2, &v6[*(v8 + 44)]);
  v9 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = &v6[*(sub_10010FC20(&qword_101184878, &qword_100EC0520) + 36)];
  *v18 = v9;
  *(v18 + 1) = v11;
  *(v18 + 2) = v13;
  *(v18 + 3) = v15;
  *(v18 + 4) = v17;
  v18[40] = 0;
  v19 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v20 = &v6[*(v4 + 36)];
  *v20 = v19;
  *(v20 + 1) = v21;
  *(v20 + 2) = v22;
  *(v20 + 3) = v23;
  *(v20 + 4) = v24;
  v20[40] = 0;
  sub_100218B94(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference, &unk_100EC2A40);
  sub_100218C4C();

  View.artworkCaching(owner:)();

  return sub_1000095E8(v6, &qword_101184860, &qword_100EC0518);
}

uint64_t sub_1002037F8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  type metadata accessor for Locale();
  __chkstk_darwin();
  *&v115 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  *&v114 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  v111 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v116 = type metadata accessor for Artist();
  *&v117 = *(v116 - 8);
  __chkstk_darwin();
  v110 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v109 = &v108 - v7;
  sub_10010FC20(&qword_1011848A0, &unk_100EC64F0);
  __chkstk_darwin();
  v9 = &v108 - v8;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v11 = &v108 - v10;
  v12 = type metadata accessor for LibraryArtistHeaderView(0);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011848A8, &qword_100EC0540);
  __chkstk_darwin();
  v112 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v118 = &v108 - v17;
  v18 = (*(sub_1001FC874() + 120) + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
  v20 = *v18;
  v19 = v18[1];

  if (!v19)
  {
    goto LABEL_6;
  }

  v21 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v21 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    (*(v13 + 56))(v118, 1, 1, v12);
  }

  else
  {
LABEL_6:
    v22 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artist;
    swift_beginAccess();
    (*(v117 + 16))(v15, &a1[v22], v116);
    v23 = type metadata accessor for IndexPath();
    (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
    sub_100376F3C(v11, &v15[*(v12 + 20)]);
    sub_1000095E8(v11, &unk_10118BCE0, &qword_100EC6450);
    v24 = *(v12 + 24);
    *&v15[v24] = swift_getKeyPath();
    sub_10010FC20(&unk_101184840, &qword_100EC0DE0);
    swift_storeEnumTagMultiPayload();
    v25 = v118;
    sub_100217DC0(v15, v118, type metadata accessor for LibraryArtistHeaderView);
    (*(v13 + 56))(v25, 0, 1, v12);
  }

  v26 = type metadata accessor for PlaybackIntentDescriptor(0);
  v27 = swift_allocBox();
  v29 = v28;
  sub_100204574(v9);
  if ((*(*(v26 - 8) + 48))(v9, 1, v26) == 1)
  {
    sub_1000095E8(v9, &qword_1011848A0, &unk_100EC64F0);
    v30 = swift_deallocBox();
    v31 = (*(*&a1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___searchController] + 120) + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
    v32 = v31[1];
    if (!v32 || ((v33 = *v31 & 0xFFFFFFFFFFFFLL, (v32 & 0x2000000000000000) != 0) ? (v34 = HIBYTE(v32) & 0xF) : (v34 = v33), !v34))
    {
      if (sub_100205144(v30))
      {
        v35 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artist;
        swift_beginAccess();
        v36 = v117;
        v37 = *(v117 + 16);
        v38 = v109;
        v39 = v116;
        v37(v109, &a1[v35], v116);
        Artist.catalogID.getter();
        v41 = v40;
        v42 = *(v36 + 8);
        *&v117 = v36 + 8;
        v109 = v42;
        (v42)(v38, v39);
        v43 = v41;
        if (v41)
        {
        }

        v44 = [a1 traitCollection];
        sub_100217F14();
        UITraitCollection.subscript.getter();

        v45 = sub_10049CB78();

        v108 = v43;
        if (v45)
        {
          if (!v43)
          {
LABEL_25:
            String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
            v68._countAndFlagsBits = 0xD000000000000014;
            v68._object = 0x8000000100E418A0;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v68);
            v69 = &a1[v35];
            v70 = v110;
            v71 = v116;
            v37(v110, v69, v116);
            v72 = Artist.name.getter();
            v74 = v73;
            (v109)(v70, v71);
            v75._countAndFlagsBits = v72;
            v75._object = v74;
            String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v75);

            v76 = 0x8000000100E418C0;
            v67 = 0xD000000000000012;
LABEL_28:
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v67);
            String.LocalizationValue.init(stringInterpolation:)();
            static Locale.current.getter();
LABEL_29:
            v85 = String.init(localized:table:bundle:locale:comment:)();
            v87 = v86;
            v88 = v108 != 0;
            v89 = swift_allocObject();
            swift_unknownObjectWeakInit();

            static ApplicationCapabilities.shared.getter(v128);
            sub_100014984(v128);
            LOBYTE(v121) = BYTE1(v128[0]);
            State.init(wrappedValue:)();

            v119 = 1;
            *&v121 = v85;
            *(&v121 + 1) = v87;
            LOBYTE(v122[0]) = v88;
            v90 = *&UIEdgeInsetsZero.top;
            *(&v122[1] + 8) = *&UIEdgeInsetsZero.bottom;
            *(v122 + 8) = v90;
            *(&v122[2] + 1) = sub_100218D90;
            *&v123[0] = v89;
            BYTE8(v123[0]) = v124;
            *&v123[1] = *(&v124 + 1);
            BYTE8(v123[1]) = 1;
            sub_100218D98();
            sub_100218DEC();
            _ConditionalContent<>.init(storage:)();
            v116 = *v125;
            v117 = v124;
            v114 = *&v125[16];
            v115 = *&v125[32];
            v53 = *&v125[48];
            v55 = *(&v126 + 1);
            v54 = v126;
            v56 = v127;
            goto LABEL_30;
          }
        }

        else
        {
          v57 = *(*&a1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_albumsResponseController] + 48) + *(**(*&a1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_albumsResponseController] + 48) + 96);
          swift_beginAccess();
          if (!v43)
          {
            if (!*(v57 + 8))
            {
              String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
              v99._countAndFlagsBits = 0x6973756D20646441;
              v99._object = 0xED00002079622063;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v99);
              v100 = &a1[v35];
              v101 = v110;
              v102 = v116;
              v37(v110, v100, v116);
              v103 = Artist.name.getter();
              v105 = v104;
              (v109)(v101, v102);
              v106._countAndFlagsBits = v103;
              v106._object = v105;
              String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v106);

              v107._countAndFlagsBits = 0xD000000000000011;
              v107._object = 0x8000000100E41830;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v107);
              String.LocalizationValue.init(stringInterpolation:)();
              static Locale.current.getter();
              goto LABEL_29;
            }

            goto LABEL_25;
          }

          if (!*(v57 + 8))
          {
            String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
            v77._countAndFlagsBits = 0x6973756D20646441;
            v77._object = 0xED00002079622063;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v77);
            v78 = &a1[v35];
            v79 = v110;
            v80 = v116;
            v37(v110, v78, v116);
            v81 = Artist.name.getter();
            v83 = v82;
            (v109)(v79, v80);
            v84._countAndFlagsBits = v81;
            v84._object = v83;
            String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v84);

            v66 = " variable is artist name.";
            v67 = 0xD00000000000003BLL;
            goto LABEL_27;
          }
        }

        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v58._object = 0x8000000100E41970;
        v58._countAndFlagsBits = 0xD000000000000012;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v58);
        v59 = &a1[v35];
        v60 = v110;
        v61 = v116;
        v37(v110, v59, v116);
        v62 = Artist.name.getter();
        v64 = v63;
        (v109)(v60, v61);
        v65._countAndFlagsBits = v62;
        v65._object = v64;
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v65);

        v66 = "Download music by ";
        v67 = 0xD00000000000002BLL;
LABEL_27:
        v76 = v66 | 0x8000000000000000;
        goto LABEL_28;
      }
    }

    v53 = 0;
    v54 = 0;
    v55 = 0;
    v116 = 0u;
    v117 = 0u;
    v56 = -1;
    v114 = 0u;
    v115 = 0u;
  }

  else
  {
    sub_100217DC0(v9, v29, type metadata accessor for PlaybackIntentDescriptor);
    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = swift_allocObject();
    *(v47 + 16) = v27;
    *(v47 + 24) = v46;

    v48 = static PlayIntentButtonStack.playShuffle(_:)();
    v50 = v49;
    v52 = v51;

    v120[0] = 0;
    *&v124 = v48;
    *(&v124 + 1) = v50;
    *v125 = v52;
    *&v125[8] = v121;
    *&v125[24] = v122[0];
    *&v125[40] = v122[1];
    v126 = v122[2];
    v127 = 0;
    sub_100218D98();
    sub_100218DEC();
    _ConditionalContent<>.init(storage:)();

    v116 = v128[1];
    v117 = v128[0];
    v114 = v128[2];
    v115 = v128[3];
    v53 = v129;
    v54 = v130;
    v55 = v131;
    v56 = v132;
  }

LABEL_30:
  v91 = v112;
  sub_1000089F8(v118, v112, &qword_1011848A8, &qword_100EC0540);
  v92 = v113;
  sub_1000089F8(v91, v113, &qword_1011848A8, &qword_100EC0540);
  v93 = (v92 + *(sub_10010FC20(&qword_1011848B0, &qword_100EC0548) + 48));
  v121 = v117;
  v122[0] = v116;
  v122[1] = v114;
  v122[2] = v115;
  *&v123[0] = v53;
  *(&v123[0] + 1) = v54;
  v95 = v116;
  v94 = v114;
  *v93 = v117;
  v93[1] = v95;
  v96 = v122[2];
  v97 = v123[0];
  v93[2] = v94;
  v93[3] = v96;
  *&v123[1] = v55;
  BYTE8(v123[1]) = v56;
  v93[4] = v97;
  *(v93 + 73) = *(v123 + 9);
  sub_1000089F8(&v121, &v124, &qword_1011848B8, &qword_100EC0550);
  sub_1000095E8(v118, &qword_1011848A8, &qword_100EC0540);
  v124 = v117;
  *v125 = v116;
  *&v125[16] = v114;
  *&v125[32] = v115;
  *&v125[48] = v53;
  *&v126 = v54;
  *(&v126 + 1) = v55;
  v127 = v56;
  sub_1000095E8(&v124, &qword_1011848B8, &qword_100EC0550);
  return sub_1000095E8(v91, &qword_1011848A8, &qword_100EC0540);
}

uint64_t sub_100204574@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v42[1] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v44 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v43 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  __chkstk_darwin();
  v8 = v42 - v7;
  _s11MusicVideosVMa(0);
  __chkstk_darwin();
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v12 = v42 - v11;
  _s6AlbumsVMa(0);
  __chkstk_darwin();
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v16 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = v42 - v17;
  v19 = __chkstk_darwin();
  v21 = v42 - v20;
  v45 = v5;
  v22 = *(v5 + 56);
  v23 = v4;
  v22(v42 - v20, 1, 1, v4, v19);
  if (sub_1001FFA80())
  {
    v24 = *(*&v2[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_albumsResponseController] + 48);
    v25 = *(*v24 + 96);
    swift_beginAccess();
    sub_100217D58(v24 + v25, v14, _s6AlbumsVMa);
    v26 = type metadata accessor for Album();
    (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
    sub_100289108(v12, v18);
    sub_1000095E8(v12, &unk_101184730, &unk_100ECB920);
    sub_100217EB4(v14, _s6AlbumsVMa);
    v27 = v23;
  }

  else
  {
    v27 = v4;
    if (!sub_1001FFC7C())
    {
      goto LABEL_6;
    }

    v28 = *(*&v2[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_musicVideosResponseController] + 48);
    v29 = *(*v28 + 96);
    swift_beginAccess();
    sub_100217D58(v28 + v29, v10, _s11MusicVideosVMa);
    v30 = type metadata accessor for MusicVideo();
    (*(*(v30 - 8) + 56))(v8, 1, 1, v30);
    sub_1006FD384(v8, v18);
    sub_1000095E8(v8, &unk_1011846B0, &unk_100ECB630);
    sub_100217EB4(v10, _s11MusicVideosVMa);
  }

  sub_1000095E8(v21, &unk_10118CDB0, &unk_100EC0360);
  sub_10003D17C(v18, v21, &unk_10118CDB0, &unk_100EC0360);
LABEL_6:
  sub_1000089F8(v21, v16, &unk_10118CDB0, &unk_100EC0360);
  v31 = v45;
  if ((*(v45 + 48))(v16, 1, v27) == 1)
  {
    sub_1000095E8(v21, &unk_10118CDB0, &unk_100EC0360);
    sub_1000095E8(v16, &unk_10118CDB0, &unk_100EC0360);
    v32 = 1;
    v33 = v46;
  }

  else
  {
    v34 = v43;
    (*(v31 + 32))(v43, v16, v27);
    v35 = v44;
    (*(v31 + 16))(v44, v34, v27);
    swift_storeEnumTagMultiPayload();
    v49 = 0;
    memset(v48, 0, sizeof(v48));
    v47[0] = v2;
    v36 = v2;
    v37 = String.init<A>(reflecting:)();
    v47[3] = &type metadata for Player.CommandIssuerIdentity;
    v47[4] = &protocol witness table for Player.CommandIssuerIdentity;
    v47[0] = v37;
    v47[1] = v38;
    v39 = v36;
    v33 = v46;
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v35, v48, 3, 0, 0, 1, 0, 1, v46, v2, v47);
    (*(v31 + 8))(v34, v27);
    sub_1000095E8(v21, &unk_10118CDB0, &unk_100EC0360);
    v32 = 0;
  }

  v40 = type metadata accessor for PlaybackIntentDescriptor(0);
  return (*(*(v40 - 8) + 56))(v33, v32, 1, v40);
}

uint64_t sub_100204C50(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v34[1] = a3;
  v4 = 0xD000000000000015;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v39 = v34 - v5;
  v6 = type metadata accessor for PlaybackIntentDescriptor(0);
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  __chkstk_darwin();
  v38 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v35 = v34 - v8;
  v9 = swift_projectBox();
  v42 = 0;
  v43 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v42 = 0xD000000000000019;
  v43 = 0x8000000100E419C0;
  v36 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0xD000000000000018;
      v10 = "PlayIntentButton.sing";
    }

    else
    {
      v10 = "Header.PlaybackControls: ";
    }
  }

  else
  {
    v10 = "PlayIntentButton.shuffle";
  }

  v11._object = (v10 | 0x8000000000000000);
  v11._countAndFlagsBits = v4;
  String.append(_:)(v11);

  v12 = v42;
  v13 = v43;
  swift_beginAccess();
  v14 = v9 + *(v6 + 32);
  v15 = *(v14 + 24);
  v34[0] = v12;
  if (v15)
  {
    sub_100008FE4(v14, &v42);
    v16 = v44;
    v17 = v45;
    sub_10000954C(&v42, v44);
    v40[3] = &type metadata for Player.CommandIssuerIdentity;
    v40[4] = &protocol witness table for Player.CommandIssuerIdentity;
    v40[0] = v12;
    v40[1] = v13;

    v18 = Player.CommandIssuer.appending(_:)(v40, v16, v17);
    v20 = v19;
    sub_10000959C(v40);
    sub_10000959C(&v42);
    v44 = &type metadata for Player.CommandIssuerIdentity;
    v45 = &protocol witness table for Player.CommandIssuerIdentity;
    if (v20)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v44 = &type metadata for Player.CommandIssuerIdentity;
    v45 = &protocol witness table for Player.CommandIssuerIdentity;
  }

  sub_10010FC20(&unk_101183930, &unk_100EC1690);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100EBDC20;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v41 = Strong;
  }

  else
  {
    v41 = 0;
    sub_10010FC20(&qword_1011848D0, &qword_100EC0558);
  }

  v23 = String.init<A>(reflecting:)();
  *(v21 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v21 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v21 + 32) = v23;
  *(v21 + 40) = v24;
  *(v21 + 96) = &type metadata for Player.CommandIssuerIdentity;
  *(v21 + 104) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v21 + 72) = v34[0];
  *(v21 + 80) = v13;
  v18 = static Player.CommandIssuer<>.combining(_:)(v21);
  v20 = v25;
LABEL_14:

  v42 = v18;
  v43 = v20;
  swift_beginAccess();
  sub_10006B010(&v42, v9 + *(v6 + 32), &unk_101183910, &unk_100EBDD00);
  PlaybackIntentDescriptor.configure(for:)(v36);
  swift_endAccess();
  swift_beginAccess();
  v26 = v35;
  sub_100217D58(v9, v35, type metadata accessor for PlaybackIntentDescriptor);
  v27 = type metadata accessor for TaskPriority();
  v28 = v39;
  (*(*(v27 - 8) + 56))(v39, 1, 1, v27);
  v29 = v38;
  sub_100217D58(v26, v38, type metadata accessor for PlaybackIntentDescriptor);
  type metadata accessor for MainActor();
  v30 = static MainActor.shared.getter();
  v31 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  *(v32 + 24) = &protocol witness table for MainActor;
  sub_100217DC0(v29, v32 + v31, type metadata accessor for PlaybackIntentDescriptor);
  sub_1001F4F78(0, 0, v28, &unk_100EC0560, v32);

  return sub_100217EB4(v26, type metadata accessor for PlaybackIntentDescriptor);
}

BOOL sub_100205144(uint64_t a1)
{
  v1 = RequestResponse.Controller.revision.getter();
  v2 = *(v1 + *(*v1 + 112));

  if (!v2)
  {
    return 0;
  }

  v3 = RequestResponse.Controller.revision.getter();
  v4 = *(v3 + *(*v3 + 112));

  return v4 != 0;
}

char *sub_1002051D8(uint64_t a1)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v2 = &v58 - v1;
  v65 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v66 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  __chkstk_darwin();
  v69 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v4;
  __chkstk_darwin();
  v70 = &v58 - v5;
  v6 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v74 = *(v6 - 8);
  __chkstk_darwin();
  v73 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for Station();
  v61 = *(v62 - 8);
  __chkstk_darwin();
  v60 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v59 = &v58 - v9;
  sub_10010FC20(&unk_1011848D8, &qword_100EC0568);
  __chkstk_darwin();
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v58 - v12;
  v14 = type metadata accessor for Artist();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v58 - v20;
  __chkstk_darwin();
  v75 = &v58 - v22;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v63 = v19;
  v64 = v6;
  v58 = v2;
  v24 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artist;
  v25 = result;
  swift_beginAccess();
  v26 = *(v15 + 16);
  v26(v17, &v25[v24], v14);
  Artist.defaultPlayableItem.getter();
  (*(v15 + 8))(v17, v14);
  v27 = type metadata accessor for Artist.PlayableItem();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  v71 = v13;
  v30 = v29(v13, 1, v27);
  v72 = v25;
  if (v30 == 1)
  {
    goto LABEL_6;
  }

  v31 = v71;
  sub_1000089F8(v71, v11, &unk_1011848D8, &qword_100EC0568);
  if ((*(v28 + 88))(v11, v27) != enum case for Artist.PlayableItem.station(_:))
  {
    (*(v28 + 8))(v11, v27);
    v25 = v72;
LABEL_6:
    *(&v78 + 1) = v14;
    v79 = &protocol witness table for Artist;
    v38 = sub_10001C8B8(&v77);
    v26(v38, &v25[v24], v14);
    MusicPlaybackIntentDescriptor.init(stationSeed:)();
    v37 = v64;
    v36 = v74;
    v35 = v75;
    v31 = v71;
    (*(v74 + 56))(v21, 0, 1, v64);
    sub_10003D17C(v21, v35, &unk_10118CDB0, &unk_100EC0360);
    goto LABEL_7;
  }

  (*(v28 + 96))(v11, v27);
  v32 = v61;
  v33 = v59;
  v34 = v62;
  (*(v61 + 32))(v59, v11, v62);
  (*(v32 + 16))(v60, v33, v34);
  v35 = v75;
  MusicPlaybackIntentDescriptor.init(station:)();
  (*(v32 + 8))(v33, v34);
  v36 = v74;
  v37 = v64;
  (*(v74 + 56))(v35, 0, 1, v64);
LABEL_7:
  sub_1000095E8(v31, &unk_1011848D8, &qword_100EC0568);
  v39 = v63;
  sub_1000089F8(v35, v63, &unk_10118CDB0, &unk_100EC0360);
  if ((*(v36 + 48))(v39, 1, v37) == 1)
  {
    sub_1000095E8(v35, &unk_10118CDB0, &unk_100EC0360);
  }

  else
  {
    v40 = v73;
    (*(v36 + 32))(v73, v39, v37);
    v41 = v66;
    (*(v36 + 16))(v66, v40, v37);
    swift_storeEnumTagMultiPayload();
    v79 = 0;
    v77 = 0u;
    v78 = 0u;
    sub_10010FC20(&unk_101183930, &unk_100EC1690);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_100EBDC20;
    v43 = v72;
    v76[0] = v72;
    v44 = v72;
    v45 = String.init<A>(reflecting:)();
    *(v42 + 56) = &type metadata for Player.CommandIssuerIdentity;
    *(v42 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v42 + 32) = v45;
    *(v42 + 40) = v46;
    *(v42 + 96) = &type metadata for Player.CommandIssuerIdentity;
    *(v42 + 104) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v42 + 72) = 0xD000000000000013;
    *(v42 + 80) = 0x8000000100E41A40;
    v47 = static Player.CommandIssuer<>.combining(_:)(v42);
    v49 = v48;

    v76[3] = &type metadata for Player.CommandIssuerIdentity;
    v76[4] = &protocol witness table for Player.CommandIssuerIdentity;
    v76[0] = v47;
    v76[1] = v49;
    v50 = v44;
    v51 = v70;
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v41, &v77, 3, 0, 0, 1, 0, 1, v70, v43, v76);
    v52 = type metadata accessor for TaskPriority();
    v53 = v58;
    (*(*(v52 - 8) + 56))(v58, 1, 1, v52);
    v54 = v69;
    sub_100217D58(v51, v69, type metadata accessor for PlaybackIntentDescriptor);
    type metadata accessor for MainActor();
    v55 = static MainActor.shared.getter();
    v56 = (*(v67 + 80) + 32) & ~*(v67 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = v55;
    *(v57 + 24) = &protocol witness table for MainActor;
    sub_100217DC0(v54, v57 + v56, type metadata accessor for PlaybackIntentDescriptor);
    sub_1001F4F78(0, 0, v53, &unk_100EC0570, v57);

    sub_100217EB4(v51, type metadata accessor for PlaybackIntentDescriptor);
    (*(v36 + 8))(v73, v37);
    v39 = v75;
  }

  return sub_1000095E8(v39, &unk_10118CDB0, &unk_100EC0360);
}

void sub_100205C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (sub_1001FFA80() && sub_1001FFC7C() && IndexPath.section.getter() <= 1)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v7 = String.init(localized:table:bundle:locale:comment:)();
      sub_1005FF7FC(v7, v8, v9);

      UICollectionViewCell.contentConfiguration.setter();
    }
  }
}

uint64_t sub_100205DF8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v42 = a1;
  v44 = a2;
  v43 = type metadata accessor for MusicFavoriteStatus();
  v2 = *(v43 - 8);
  __chkstk_darwin();
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v41 = &v37 - v5;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v9 = &v37 - v8;
  v10 = _s8GridCellVMa(0);
  __chkstk_darwin();
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Album();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v13, &protocol witness table for Album, v9);
  v14 = sub_1001FC918();
  v15 = *&v14[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 48];

  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(v15, 0, 0, 1, 0x3FF0000000000000, 0, 2, v45);
  v16 = Corner.medium.unsafeMutableAddressor();
  v17 = *v16;
  v18 = v16[1];
  v19 = *(v16 + 16);
  v20 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v20 - 8) + 56))(v7, 1, 11, v20);
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v9, v7, 0, 1, v45, v17, v18, v19, v12);
  v21 = sub_10034DFAC();
  v39 = v22;
  v40 = v21;
  v38 = Album.releaseYearString.getter();
  v24 = v23;
  v25 = v41;
  Album.favoriteStatus.getter();
  v26 = v4;
  v27 = v4;
  v28 = v43;
  (*(v2 + 104))(v27, enum case for MusicFavoriteStatus.favorited(_:), v43);
  v29 = static MusicFavoriteStatus.== infix(_:_:)();
  v30 = *(v2 + 8);
  v30(v26, v28);
  v30(v25, v28);
  Album.contentRating.getter();
  v31 = &v12[v10[5]];
  *v31 = 0;
  *(v31 + 1) = 0;
  *(v31 + 2) = 0;
  *&v12[v10[6]] = 0x3FF0000000000000;
  v32 = &v12[v10[7]];
  v33 = v39;
  *v32 = v40;
  *(v32 + 1) = v33;
  v34 = &v12[v10[8]];
  *v34 = v38;
  v34[1] = v24;
  v12[v10[9]] = v29 & 1;
  v12[v10[11]] = 0;
  v35 = v10[12];
  *&v12[v35] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  sub_100218B94(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference, &unk_100EC2A40);
  sub_100218B94(&qword_10118D290, _s8GridCellVMa, &unk_100ED75D8);

  View.artworkCaching(owner:)();

  return sub_100217EB4(v12, _s8GridCellVMa);
}

void sub_1002062A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10010FC20(&unk_10118D320, &unk_100EC9050);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = v18 - v11;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    __chkstk_darwin();
    v18[-4] = a3;
    v18[-3] = v13;
    v18[-2] = a5;
    v14 = v13;
    sub_10010FC20(&unk_1011847A0, &unk_100EC0470);
    v15 = _s8ListCellVMa(255);
    v16 = sub_100218B94(&qword_10118D2E0, _s8ListCellVMa, &unk_100ED7588);
    v18[0] = v15;
    v18[1] = v16;
    swift_getOpaqueTypeConformance2();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.horizontal.getter();

    UIHostingConfiguration.margins(_:_:)();
    v17 = *(v8 + 8);
    v17(v10, v7);
    static Edge.Set.vertical.getter();
    v18[3] = v7;
    v18[4] = sub_100020674(&unk_1011847B0, &unk_10118D320, &unk_100EC9050, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10001C8B8(v18);
    UIHostingConfiguration.margins(_:_:)();
    v17(v12, v7);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_100206580@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v60 = a1;
  v61 = a2;
  sub_10010FC20(&unk_10118D2F0, &unk_100EBCE10);
  __chkstk_darwin();
  v62 = &v50[-v2];
  v59 = type metadata accessor for MusicFavoriteStatus();
  v3 = *(v59 - 8);
  __chkstk_darwin();
  v53 = &v50[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v52 = &v50[-v5];
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v7 = &v50[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v9 = &v50[-v8];
  type metadata accessor for ArtworkImage.Info(0);
  __chkstk_darwin();
  v11 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = v11;
  v12 = _s8ListCellVMa(0);
  __chkstk_darwin();
  v14 = &v50[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for Album();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v15, &protocol witness table for Album, v9);
  ArtworkImage.Size.init(cgSize:)(0x4050000000000000, 0x4050000000000000, 0, v66);
  v16 = Corner.small.unsafeMutableAddressor();
  v17 = *v16;
  v18 = v16[1];
  v19 = *(v16 + 16);
  v20 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v20 - 8) + 56))(v7, 1, 11, v20);
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v9, v7, 0, 1, v66, v17, v18, v19, v11);
  v21 = sub_10034DFAC();
  v56 = v22;
  v57 = v21;
  v23 = Album.releaseYearString.getter();
  v54 = v24;
  v55 = v23;
  v25 = v52;
  Album.favoriteStatus.getter();
  v26 = v53;
  v27 = v59;
  (*(v3 + 104))(v53, enum case for MusicFavoriteStatus.favorited(_:), v59);
  v51 = static MusicFavoriteStatus.== infix(_:_:)();
  v28 = *(v3 + 8);
  v28(v26, v27);
  v28(v25, v27);
  Album.contentRating.getter();
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  sub_10010FC20(&unk_1011847C0, &unk_100EC0480);
  swift_allocObject();
  OptionalObservableObject.init(publisher:)(&v63);
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  sub_10010FC20(&unk_10118D300, &qword_100EBCE20);
  swift_allocObject();
  v59 = OptionalObservableObject.init(publisher:)(&v63);
  v29 = static HierarchicalShapeStyle.primary.getter();
  *(v14 + 3) = &type metadata for HierarchicalShapeStyle;
  *(v14 + 4) = &protocol witness table for HierarchicalShapeStyle;
  *v14 = v29;
  v14[40] = 0;
  v30 = &v14[v12[6]];
  v31 = v12[9];
  v32 = v12[10];
  v33 = type metadata accessor for ContentRating();
  (*(*(v33 - 8) + 56))(&v14[v32], 1, 1, v33);
  v53 = &v14[v12[11]];
  v34 = v12[14];
  *&v14[v34] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  v35 = v58;
  sub_100217D58(v58, &v14[v12[5]], type metadata accessor for ArtworkImage.Info);
  v30[1] = 0;
  v30[2] = 0;
  *v30 = 0;
  v36 = &v14[v12[7]];
  v37 = v56;
  *v36 = v57;
  v36[1] = v37;
  v38 = &v14[v12[8]];
  v39 = v54;
  *v38 = v55;
  v38[1] = v39;
  v14[v31] = v51 & 1;
  v40 = &v14[v32];
  v41 = v62;
  sub_1002190E0(v62, v40, &unk_10118D2F0, &unk_100EBCE10);
  v42 = &v14[v12[12]];
  sub_100020674(&unk_1011847D0, &unk_1011847C0, &unk_100EC0480, &protocol conformance descriptor for OptionalObservableObject<A>);

  *v42 = ObservedObject.init(wrappedValue:)();
  v42[1] = v43;
  v44 = &v14[v12[13]];
  sub_100020674(&qword_10118D310, &unk_10118D300, &qword_100EBCE20, &protocol conformance descriptor for OptionalObservableObject<A>);
  v45 = ObservedObject.init(wrappedValue:)();
  v47 = v46;

  sub_1000095E8(v41, &unk_10118D2F0, &unk_100EBCE10);
  sub_100217EB4(v35, type metadata accessor for ArtworkImage.Info);
  *v44 = v45;
  v44[1] = v47;
  v48 = v53;
  *v53 = 0;
  v48[1] = 0;
  sub_100218B94(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference, &unk_100EC2A40);
  sub_100218B94(&qword_10118D2E0, _s8ListCellVMa, &unk_100ED7588);

  View.artworkCaching(owner:)();

  return sub_100217EB4(v14, _s8ListCellVMa);
}

void sub_100206C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_10010FC20(&qword_10118D2C0, &unk_100ED1530);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v14 - v8;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    __chkstk_darwin();
    v14[-2] = a3;
    v14[-1] = v10;
    v11 = v10;
    sub_10010FC20(&unk_101184760, &unk_100EC0410);
    v12 = _s8GridCellVMa(255);
    v13 = sub_100218B94(&qword_10118D290, _s8GridCellVMa, &unk_100ED75D8);
    v14[0] = v12;
    v14[1] = v13;
    swift_getOpaqueTypeConformance2();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v14[3] = v6;
    v14[4] = sub_100020674(&unk_101184770, &qword_10118D2C0, &unk_100ED1530, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10001C8B8(v14);
    UIHostingConfiguration.margins(_:_:)();
    (*(v7 + 8))(v9, v6);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_100206ED0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v38 = a1;
  v41 = a2;
  v40 = type metadata accessor for MusicFavoriteStatus();
  v2 = *(v40 - 8);
  __chkstk_darwin();
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v39 = &v34 - v5;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v9 = &v34 - v8;
  v10 = _s8GridCellVMa(0);
  __chkstk_darwin();
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MusicVideo();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v13, &protocol witness table for MusicVideo, v9);
  v14 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v14 - 8) + 56))(v7, 5, 11, v14);
  v15 = sub_1001FC918();
  v16 = *&v15[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 48];

  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(v16, 0, 0, 1, 0x3FFC71C71C71C71CLL, 0, 2, v42);
  v17 = Corner.medium.unsafeMutableAddressor();
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v9, v7, 0, 1, v42, *v17, v17[1], *(v17 + 16), v12);
  v18 = MusicVideo.title.getter();
  v36 = v19;
  v37 = v18;
  v35 = MusicVideo.releaseYearString.getter();
  v21 = v20;
  v22 = v39;
  MusicVideo.favoriteStatus.getter();
  v23 = v4;
  v24 = v4;
  v25 = v40;
  (*(v2 + 104))(v24, enum case for MusicFavoriteStatus.favorited(_:), v40);
  v26 = static MusicFavoriteStatus.== infix(_:_:)();
  v27 = *(v2 + 8);
  v27(v23, v25);
  v27(v22, v25);
  MusicVideo.contentRating.getter();
  v28 = &v12[v10[5]];
  *v28 = 0;
  *(v28 + 1) = 0;
  *(v28 + 2) = 0;
  *&v12[v10[6]] = 0x3FFC71C71C71C71CLL;
  v29 = &v12[v10[7]];
  v30 = v36;
  *v29 = v37;
  *(v29 + 1) = v30;
  v31 = &v12[v10[8]];
  *v31 = v35;
  v31[1] = v21;
  v12[v10[9]] = v26 & 1;
  v12[v10[11]] = 0;
  v32 = v10[12];
  *&v12[v32] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  sub_100218B94(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference, &unk_100EC2A40);
  sub_100218B94(&qword_10118D290, _s8GridCellVMa, &unk_100ED75D8);

  View.artworkCaching(owner:)();

  return sub_100217EB4(v12, _s8GridCellVMa);
}

void sub_100207388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10010FC20(&unk_1011847F0, &unk_100EC04A0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = v21 - v12;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v21[0] = v21;
    __chkstk_darwin();
    v21[-4] = a3;
    v21[-3] = v14;
    v21[-2] = a5;
    v15 = v14;
    sub_10010FC20(&unk_101193BE0, &unk_100ED1580);
    v21[1] = a1;
    v16 = sub_1001109D0(&unk_101184800, &unk_100EC04B0);
    v17 = sub_100020674(&unk_101193BF0, &unk_101184800, &unk_100EC04B0, &unk_100ED74E8);
    v22[0] = v16;
    v22[1] = v17;
    swift_getOpaqueTypeConformance2();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.horizontal.getter();

    UIHostingConfiguration.margins(_:_:)();
    v18 = *(v9 + 8);
    v18(v11, v8);
    static Edge.Set.vertical.getter();
    v19 = [v15 traitCollection];
    v20 = [v19 preferredContentSizeCategory];

    UIContentSizeCategory.isAccessibilityCategory.getter();
    v22[3] = v8;
    v22[4] = sub_100020674(&unk_101184810, &unk_1011847F0, &unk_100EC04A0, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10001C8B8(v22);
    UIHostingConfiguration.margins(_:_:)();
    v18(v13, v8);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_1002076CC@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a2;
  v64 = a3;
  v61 = type metadata accessor for MusicFavoriteStatus();
  v4 = *(v61 - 8);
  __chkstk_darwin();
  v60 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v59 = &v50 - v6;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v10 = &v50 - v9;
  type metadata accessor for ArtworkImage.Info(0);
  __chkstk_darwin();
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10010FC20(&unk_101184800, &unk_100EC04B0);
  __chkstk_darwin();
  v15 = &v50 - v14;
  v58 = type metadata accessor for MusicVideo();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v58, &protocol witness table for MusicVideo, v10);
  ArtworkImage.Size.init(cgSize:)(0x4055555555555555, 0x4048000000000000, 0, v65);
  v16 = Corner.small.unsafeMutableAddressor();
  v17 = *v16;
  v18 = v16[1];
  v19 = *(v16 + 16);
  v20 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v20 - 8) + 56))(v8, 1, 11, v20);
  v62 = v12;
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v10, v8, 0, 1, v65, v17, v18, v19, v12);
  v56 = MusicVideo.title.getter();
  v57 = v21;
  v54 = MusicVideo.releaseYearString.getter();
  v55 = v22;
  v52 = MusicVideo.albumTitle.getter();
  v53 = v23;
  MusicVideo.duration.getter();
  v24 = static Duration.seconds(_:)();
  v51 = v25;
  v26 = v59;
  MusicVideo.favoriteStatus.getter();
  v28 = v60;
  v27 = v61;
  (*(v4 + 104))(v60, enum case for MusicFavoriteStatus.favorited(_:), v61);
  v29 = static MusicFavoriteStatus.== infix(_:_:)();
  v30 = *(v4 + 8);
  v30(v28, v27);
  v30(v26, v27);
  MusicVideo.contentRating.getter();
  sub_1007BA8CC(a1);
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v31 = sub_100218B94(&unk_101193C00, &type metadata accessor for MusicVideo, &protocol conformance descriptor for MusicVideo);
  Player.state<A>(for:)(a1, v58, v31);
  v32 = sub_1001FC918();
  v33 = *&v32[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 32];

  sub_100217DC0(v62, v15, type metadata accessor for ArtworkImage.Info);
  v34 = &v15[v13[11]];
  v35 = v57;
  *v34 = v56;
  v34[1] = v35;
  v36 = &v15[v13[12]];
  v37 = v55;
  *v36 = v54;
  v36[1] = v37;
  v38 = &v15[v13[13]];
  v39 = v53;
  *v38 = v52;
  v38[1] = v39;
  v40 = &v15[v13[14]];
  v41 = v51;
  *v40 = v24;
  v40[1] = v41;
  v15[v13[15]] = v29 & 1;
  v15[v13[17]] = 0;
  v42 = &v15[v13[18]];
  sub_10010FC20(&unk_101184820, &unk_100ED1590);
  sub_100020674(&unk_101193C10, &unk_101184820, &unk_100ED1590, &protocol conformance descriptor for MusicLibrary.ItemState<A>);
  *v42 = ObservedObject.init(wrappedValue:)();
  v42[1] = v43;
  v44 = &v15[v13[19]];
  sub_10010FC20(&unk_101184830, &qword_100EC04C0);
  sub_100020674(&unk_101193C20, &unk_101184830, &qword_100EC04C0, &protocol conformance descriptor for MusicItemState<A>);
  *v44 = ObservedObject.init(wrappedValue:)();
  v44[1] = v45;
  *&v15[v13[20]] = 0;
  v46 = &v15[v13[21]];
  *v46 = 0;
  *(v46 + 1) = 0;
  *&v15[v13[22]] = v33;
  v47 = v13[23];
  *&v15[v47] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  v48 = v13[24];
  *&v15[v48] = swift_getKeyPath();
  sub_10010FC20(&unk_101184840, &qword_100EC0DE0);
  swift_storeEnumTagMultiPayload();
  sub_100218B94(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference, &unk_100EC2A40);
  sub_100020674(&unk_101193BF0, &unk_101184800, &unk_100EC04B0, &unk_100ED74E8);

  View.artworkCaching(owner:)();

  return sub_1000095E8(v15, &unk_101184800, &unk_100EC04B0);
}

void sub_100207DB8()
{
  v1 = v0;
  v30 = sub_10010FC20(&qword_101184608, &qword_100EC0340);
  __chkstk_darwin();
  v29 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = &v23 - v3;
  v4 = type metadata accessor for MusicFavoriteStatus();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v23 - v8;
  v10 = type metadata accessor for Artist();
  v24 = v10;
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artist;
  v27 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artist;
  swift_beginAccess();
  v26 = *(v11 + 16);
  v28 = v11 + 16;
  v26(v13, &v1[v14], v10);
  Artist.favoriteStatus.getter();
  v15 = *(v11 + 8);
  v15(v13, v10);
  (*(v5 + 104))(v7, enum case for MusicFavoriteStatus.favorited(_:), v4);
  LOBYTE(v14) = static MusicFavoriteStatus.== infix(_:_:)();
  v16 = *(v5 + 8);
  v16(v7, v4);
  v16(v9, v4);
  v31 = v14 & 1;
  v17 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_isFavoritedState;
  swift_beginAccess();
  v18 = v25;
  sub_1000089F8(&v1[v17], v25, &qword_101184608, &qword_100EC0340);
  OptimisticValue.value.setter(&v31, v30);
  v19 = v29;
  sub_1000089F8(&v1[v17], v29, &qword_101184608, &qword_100EC0340);
  swift_beginAccess();
  sub_1002190E0(v18, &v1[v17], &qword_101184608, &qword_100EC0340);
  swift_endAccess();
  sub_10020A4AC(v19);
  sub_1000095E8(v19, &qword_101184608, &qword_100EC0340);
  sub_1000095E8(v18, &qword_101184608, &qword_100EC0340);
  v20 = [v1 navigationItem];
  v21 = v24;
  v26(v13, &v1[v27], v24);
  Artist.name.getter();
  v15(v13, v21);
  v22 = String._bridgeToObjectiveC()();

  [v20 setBackButtonTitle:v22];
}

void sub_1002081DC(char a1)
{
  _s11MusicVideosVMa(0);
  __chkstk_darwin();
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s6AlbumsVMa(0);
  __chkstk_darwin();
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_onlyShowDownloaded;
  LODWORD(v5) = *(v1 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_onlyShowDownloaded);
  *(v1 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_onlyShowDownloaded) = a1;
  if (v5 != (a1 & 1))
  {
    v8 = *(*(v1 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_albumsResponseController) + 48);
    v9 = *(*v8 + 96);
    swift_beginAccess();
    sub_100217D58(v8 + v9, v6, _s6AlbumsVMa);
    v6[8] = a1 & 1;
    sub_100378808(v6);
    v10 = *(v1 + v7);
    v11 = *(*(v1 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_musicVideosResponseController) + 48);
    v12 = *(*v11 + 96);
    swift_beginAccess();
    sub_100217D58(v11 + v12, v4, _s11MusicVideosVMa);
    v4[16] = v10;
    sub_100377E84(v4);
  }
}

void *sub_100208394(uint64_t a1)
{
  _s6AlbumsVMa(0);
  __chkstk_darwin();
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  result = _swiftEmptyArrayStorage;
  if (Strong)
  {
    v17 = _swiftEmptyArrayStorage;
    v5 = sub_100208680();
    if (v5)
    {
      v6 = v5;
      v7 = [v5 children];
      sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10012409C(v8);
    }

    v9 = sub_1001FC918();
    v10 = v9[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

    if ((v10 & 1) == 0)
    {
      sub_100597E50();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v11 = *(*&Strong[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_albumsResponseController] + 48);
    v12 = *(*v11 + 96);
    swift_beginAccess();
    sub_100217D58(v11 + v12, v2, _s6AlbumsVMa);
    v13 = swift_allocObject();
    swift_weakInit();

    v14.super.super.isa = sub_100211A5C(sub_100219544, v13, sub_10028B3E0, sub_100217E5C).super.super.isa;

    sub_100217EB4(v2, _s6AlbumsVMa);

    if (v14.super.super.isa)
    {
      v15 = v14.super.super.isa;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    return v17;
  }

  return result;
}

unint64_t sub_100208680()
{
  v1 = type metadata accessor for UUID();
  v91 = *(v1 - 8);
  v92 = v1;
  __chkstk_darwin();
  v90 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011838E0, &unk_100EC1670);
  __chkstk_darwin();
  v82 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v93 = &v75 - v4;
  v86 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  __chkstk_darwin();
  v89 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v5;
  __chkstk_darwin();
  v7 = &v75 - v6;
  v83 = *(sub_10010FC20(&unk_1011845D0, &unk_100EBF380) - 8);
  __chkstk_darwin();
  v88 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v8;
  __chkstk_darwin();
  v10 = &v75 - v9;
  sub_10010FC20(&unk_10118AB20, &unk_100EBF390);
  __chkstk_darwin();
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v75 - v13;
  sub_10010FC20(&unk_101183900, &unk_100EC1680);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100EBC6B0;
  v16 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artist;
  swift_beginAccess();
  v17 = type metadata accessor for Artist();
  *(v15 + 56) = v17;
  *(v15 + 64) = &protocol witness table for Artist;
  v18 = sub_10001C8B8((v15 + 32));
  (*(*(v17 - 8) + 16))(v18, &v0[v16], v17);
  v19 = v0;
  v20 = [v19 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v85 = v109[0];
  v21 = type metadata accessor for Actions.PlaybackContext(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v94 = v14;
  v23(v14, 1, 1, v21);
  v24 = type metadata accessor for PlaylistContext(0);
  v25 = *(*(v24 - 8) + 56);
  v95 = v10;
  v25(v10, 1, 1, v24);
  v26 = sub_1001FE264();
  PresentationSource.Position.init(sourceItem:permittedArrowDirections:)(v26, 15, v110);
  PresentationSource.init(viewController:position:)(v19, v110, v109);
  sub_100209388(v7);
  v27 = type metadata accessor for Actions.MetricsReportingContext(0);
  v28 = *(*(v27 - 8) + 56);
  v96 = v7;
  v28(v7, 0, 1, v27);
  sub_100008FE4(v15 + 32, v108);

  sub_1000089F8(v109, &v103, &unk_1011845E0, &unk_100EBF3A0);
  if (v106 == 1)
  {
    v115 = 0;
    memset(v114, 0, sizeof(v114));
    v116 = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:)(v19, v114, v107);
    if (v106 != 1)
    {
      sub_1000095E8(&v103, &unk_1011845E0, &unk_100EBF3A0);
    }
  }

  else
  {
    sub_10012B828(&v103, v107);
  }

  swift_getObjectType();
  v29 = swift_conformsToProtocol2();
  v30 = 0;
  v31 = v93;
  v32 = 0;
  if (v29 && v19)
  {
    v33 = v29;
    v34 = v19;
    v30 = v19;
    v32 = v33;
  }

  v79 = v32;
  v81 = v30;
  v80 = swift_allocBox();
  v36 = v35;
  sub_1000089F8(v94, v12, &unk_10118AB20, &unk_100EBF390);
  v37 = *(v22 + 48);
  if (v37(v12, 1, v21) == 1)
  {
    v38 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
    (*(*(v38 - 8) + 56))(v31, 1, 1, v38);
    v105 = 0;
    v103 = 0u;
    v104 = 0u;
    if (qword_10117F608 != -1)
    {
      swift_once();
    }

    v39 = qword_101218AD8;
    sub_1000089F8(v31, v82, &unk_1011838E0, &unk_100EC1670);
    v78 = v39;
    v40 = UIViewController.playActivityInformation.getter();
    v76 = v42;
    v77 = v41;
    v44 = v43;
    sub_1000089F8(&v103, &v101, &unk_101183910, &unk_100EBDD00);
    if (v102)
    {
      sub_100059A8C(&v101, &v111);
    }

    else
    {
      v75 = v40;
      v100 = v19;
      sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
      v45 = v19;
      sub_10010FC20(&unk_101183920, &unk_100EC0330);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v97, &v111);
      }

      else
      {
        v99 = 0;
        v97 = 0u;
        v98 = 0u;
        *&v111 = v45;
        v46 = v45;
        v47 = String.init<A>(reflecting:)();
        *(&v112 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v113 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v111 = v47;
        *(&v111 + 1) = v48;
        if (*(&v98 + 1))
        {
          sub_1000095E8(&v97, &unk_101183910, &unk_100EBDD00);
        }
      }

      v31 = v93;
      v40 = v75;
      if (v102)
      {
        sub_1000095E8(&v101, &unk_101183910, &unk_100EBDD00);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v78, v82, v40, v77, v44, v76, &v111, v36);
    sub_1000095E8(&v103, &unk_101183910, &unk_100EBDD00);
    sub_1000095E8(v31, &unk_1011838E0, &unk_100EC1670);
    if (v37(v12, 1, v21) != 1)
    {
      sub_1000095E8(v12, &unk_10118AB20, &unk_100EBF390);
    }
  }

  else
  {
    sub_100217DC0(v12, v36, type metadata accessor for Actions.PlaybackContext);
  }

  v49 = *(v21 + 28);
  sub_1000089F8(&v36[v49], &v111, &unk_101183910, &unk_100EBDD00);
  if (*(&v112 + 1))
  {
    sub_100059A8C(&v111, &v103);
  }

  else
  {
    *&v103 = v19;
    v50 = v19;
    v51 = String.init<A>(reflecting:)();
    *(&v104 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v105 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v103 = v51;
    *(&v103 + 1) = v52;
    if (*(&v112 + 1))
    {
      sub_1000095E8(&v111, &unk_101183910, &unk_100EBDD00);
    }
  }

  sub_10010FC20(&unk_101183930, &unk_100EC1690);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_100EBDC20;
  *(v53 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v53 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v53 + 32) = 0x4D747865746E6F43;
  *(v53 + 40) = 0xEB00000000756E65;
  sub_100008FE4(&v103, v53 + 72);
  v54 = static Player.CommandIssuer<>.combining(_:)(v53);
  v56 = v55;

  sub_10000959C(&v103);
  *(&v104 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v105 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v103 = v54;
  *(&v103 + 1) = v56;
  sub_10006B010(&v103, &v36[v49], &unk_101183910, &unk_100EBDD00);
  sub_100008FE4(v108, &v103);
  sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  v93 = String.init<A>(describing:)();
  v82 = v57;
  v78 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008FE4(v108, &v101);
  sub_10012B7A8(v107, &v103);
  v58 = v89;
  sub_1000089F8(v96, v89, &unk_1011838D0, &unk_100EC0320);
  v59 = v88;
  sub_1000089F8(v95, v88, &unk_1011845D0, &unk_100EBF380);
  v60 = (*(v86 + 80) + 160) & ~*(v86 + 80);
  v61 = (v87 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
  v63 = (*(v83 + 80) + v62 + 8) & ~*(v83 + 80);
  v87 = (v63 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = (v63 + v84 + 31) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  sub_100059A8C(&v101, v65 + 16);
  *(v65 + 56) = v85;
  sub_10012B828(&v103, v65 + 64);
  sub_10003D17C(v58, v65 + v60, &unk_1011838D0, &unk_100EC0320);
  *(v65 + v61) = v78;
  *(v65 + v62) = v80;
  sub_10003D17C(v59, v65 + v63, &unk_1011845D0, &unk_100EBF380);
  v66 = v65 + v87;
  v67 = v79;
  *v66 = v81;
  *(v66 + 8) = v67;
  *(v66 + 16) = 2;
  v68 = (v65 + v64);
  *v68 = variable initialization expression of Library.Context.playlistVariants;
  v68[1] = 0;
  swift_unknownObjectRetain();

  v69 = v90;
  UUID.init()();
  v70 = UUID.uuidString.getter();
  v72 = v71;
  (*(v91 + 8))(v69, v92);
  v117._countAndFlagsBits = v93;
  v117._object = v82;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(&v111, v117, v70, v72, sub_100217D28, v65);
  swift_unknownObjectRelease();
  sub_10012BA6C(v107);
  sub_10000959C(v108);

  v73 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
  v107[0] = v111;
  sub_100015BB0(v107);
  v103 = v112;
  sub_100015BB0(&v103);

  sub_1000095E8(v96, &unk_1011838D0, &unk_100EC0320);
  sub_1000095E8(v109, &unk_1011845E0, &unk_100EBF3A0);
  sub_1000095E8(v95, &unk_1011845D0, &unk_100EBF380);
  sub_1000095E8(v94, &unk_10118AB20, &unk_100EBF390);
  return v73;
}

uint64_t sub_100209388@<X0>(char *a1@<X8>)
{
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  __chkstk_darwin();
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v31 - v5;
  sub_10010FC20(&unk_1011838D0, &unk_100EC0320);
  __chkstk_darwin();
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v31 - v9;
  v11 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___actionMetricsReportingContext;
  swift_beginAccess();
  sub_1000089F8(v1 + v11, v10, &unk_1011838D0, &unk_100EC0320);
  v12 = type metadata accessor for Actions.MetricsReportingContext(0);
  v13 = *(v12 - 1);
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    return sub_100217DC0(v10, a1, type metadata accessor for Actions.MetricsReportingContext);
  }

  v37 = v1;
  sub_1000095E8(v10, &unk_1011838D0, &unk_100EC0320);
  v14 = MetricsEvent.Page.libraryArtistDetail.unsafeMutableAddressor();
  sub_100217D58(v14, v6, type metadata accessor for MetricsEvent.Page);
  v15 = type metadata accessor for MetricsEvent.Page(0);
  v16 = v4;
  v17 = *(*(v15 - 8) + 56);
  v17(v6, 0, 1, v15);
  v36 = v16;
  sub_1000089F8(v6, v16, &unk_1011838F0, &qword_100EC1070);
  MetricsReportingController.shared.unsafeMutableAddressor();
  v18 = sub_10053771C();
  v34 = v19;
  v35 = v18;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v20 = qword_101218AD0;
  v33 = GroupActivitiesManager.hasJoined.getter();
  v32 = GroupActivitiesManager.participantsCount.getter();
  sub_1000095E8(v6, &unk_1011838F0, &qword_100EC1070);
  v21 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  v22 = *(v20 + v21);
  v23 = v12[5];
  v17(&a1[v23], 1, 1, v15);
  v24 = v12[7];
  v25 = &a1[v12[6]];
  v26 = v12[8];
  *a1 = xmmword_100EBEF60;
  sub_10006B010(v36, &a1[v23], &unk_1011838F0, &qword_100EC1070);
  v27 = v34;
  *v25 = v35;
  *(v25 + 1) = v27;
  *&a1[v24] = 0;
  *&a1[v26] = 0;
  v28 = &a1[v12[9]];
  *v28 = v33 & 1;
  *(v28 + 1) = v32;
  *(v28 + 2) = v22;
  sub_100217D58(a1, v8, type metadata accessor for Actions.MetricsReportingContext);
  (*(v13 + 56))(v8, 0, 1, v12);
  v29 = v37;
  swift_beginAccess();
  sub_10006B010(v8, v29 + v11, &unk_1011838D0, &unk_100EC0320);
  return swift_endAccess();
}

BOOL sub_100209798(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_1001FFA80() && sub_1001FFC7C();
  }

  else
  {
    return 0;
  }

  return v3;
}

void sub_10020980C(char a1)
{
  if (v1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_hasContent] == (a1 & 1))
  {
    return;
  }

  [v1 setNeedsUpdateContentUnavailableConfiguration];
  v3 = sub_1001FC874();
  if (sub_1001FFA80() || sub_1001FFC7C())
  {
    v4 = *(v3 + 64);
    *(v3 + 64) = 1;
    if (v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = (*(*&v1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___searchController] + 120) + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
  v6 = v5[1];
  if (!v6)
  {
    v11 = *(v3 + 64);
    *(v3 + 64) = 0;
    if ((v11 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    sub_10043EAB8();
    goto LABEL_6;
  }

  v7 = *v5 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8 != 0;
  v10 = *(v3 + 64);
  *(v3 + 64) = v9;
  if (v10 != v9)
  {
    goto LABEL_5;
  }

LABEL_6:

  if (a1)
  {

    sub_100209924();
  }
}

void sub_100209924()
{
  sub_10010FC20(&unk_101184950, &qword_100EC05E0);
  __chkstk_darwin();
  v2 = &v14 - v1;
  if (!sub_100205144(v3))
  {
    goto LABEL_7;
  }

  v4 = (v0 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_isFavoritedState);
  swift_beginAccess();
  v5 = sub_10010FC20(&qword_101184608, &qword_100EC0340);
  sub_1000089F8(&v4[*(v5 + 28)], v2, &unk_101184950, &qword_100EC05E0);
  v6 = sub_10010FC20(&qword_101184610, &qword_100EC0348);
  if ((*(*(v6 - 8) + 48))(v2, 1, v6) == 1)
  {
    sub_1000095E8(v2, &unk_101184950, &qword_100EC05E0);
    v7 = *v4;
    swift_endAccess();
    if (v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = v2[*(v6 + 32)];
    sub_1000095E8(v2, &qword_101184610, &qword_100EC0348);
    swift_endAccess();
    if (v8)
    {
LABEL_7:
      v9 = 0;
      goto LABEL_8;
    }
  }

  if (*(v0 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_hasContent))
  {
    goto LABEL_7;
  }

  v10 = (*(sub_1001FC874() + 120) + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
  v12 = *v10;
  v11 = v10[1];

  if (v11)
  {

    v13 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v13 = v12 & 0xFFFFFFFFFFFFLL;
    }

    v9 = v13 == 0;
  }

  else
  {
    v9 = 1;
  }

LABEL_8:
  sub_1003FE034(v9);
}

void sub_100209B18(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100209B6C();
  }
}

uint64_t sub_100209B6C()
{
  type metadata accessor for MetricsPageProperties(0);
  __chkstk_darwin();
  v70 = v62 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v68 = v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v69 = v62 - v3;
  type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin();
  v72 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v74 = v62 - v5;
  v71 = type metadata accessor for Artist();
  v77 = *(v71 - 8);
  __chkstk_darwin();
  v65 = v6;
  v66 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v76 = v62 - v7;
  v8 = sub_10010FC20(&qword_101184608, &qword_100EC0340);
  __chkstk_darwin();
  v10 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = v62 - v11;
  v13 = sub_10010FC20(&qword_101184610, &qword_100EC0348);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v64 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62[1] = v15;
  __chkstk_darwin();
  v75 = v62 - v16;
  sub_10010FC20(&unk_101184950, &qword_100EC05E0);
  __chkstk_darwin();
  v18 = v62 - v17;
  v67 = v0;
  v19 = &v0[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_isFavoritedState];
  swift_beginAccess();
  sub_1000089F8(&v19[*(v8 + 28)], v18, &unk_101184950, &qword_100EC05E0);
  v63 = v14;
  if ((*(v14 + 48))(v18, 1, v13) == 1)
  {
    sub_1000095E8(v18, &unk_101184950, &qword_100EC05E0);
    v20 = *v19;
  }

  else
  {
    v20 = v18[*(v13 + 32)];
    sub_1000095E8(v18, &qword_101184610, &qword_100EC0348);
  }

  v73 = v20;
  v78[0] = v20 ^ 1;
  sub_1000089F8(v19, v12, &qword_101184608, &qword_100EC0340);
  swift_endAccess();
  v21 = v75;
  OptimisticValue.beginTransaction(_:)(v78, v8, v22, v23, v75);
  sub_1000089F8(v19, v10, &qword_101184608, &qword_100EC0340);
  swift_beginAccess();
  sub_1002190E0(v12, v19, &qword_101184608, &qword_100EC0340);
  swift_endAccess();
  v24 = v67;
  sub_10020A4AC(v10);
  sub_1000095E8(v10, &qword_101184608, &qword_100EC0340);
  sub_1000095E8(v12, &qword_101184608, &qword_100EC0340);
  v25 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artist;
  swift_beginAccess();
  v26 = v76;
  v27 = v77;
  v28 = *(v77 + 16);
  v29 = v71;
  v28(v76, &v24[v25], v71);
  v30 = type metadata accessor for TaskPriority();
  (*(*(v30 - 8) + 56))(v74, 1, 1, v30);
  v31 = v66;
  v28(v66, v26, v29);
  v32 = v64;
  sub_1000089F8(v21, v64, &qword_101184610, &qword_100EC0348);
  type metadata accessor for MainActor();
  v33 = v24;
  v34 = static MainActor.shared.getter();
  v35 = (*(v27 + 80) + 33) & ~*(v27 + 80);
  v36 = (v65 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (*(v63 + 80) + v36 + 8) & ~*(v63 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v34;
  *(v38 + 24) = &protocol witness table for MainActor;
  *(v38 + 32) = v73;
  (*(v27 + 32))(v38 + v35, v31, v29);
  *(v38 + v36) = v33;
  v39 = v38 + v37;
  v40 = v76;
  sub_10003D17C(v32, v39, &qword_101184610, &qword_100EC0348);
  sub_1001F4CB8(0, 0, v74, &unk_100EC05F0, v38);

  v41 = Artist.catalogID.getter();
  if (v42)
  {
    v43 = v41;
  }

  else
  {
    v43 = 0;
  }

  if (v42)
  {
    v44 = v42;
  }

  else
  {
    v44 = 0xE000000000000000;
  }

  v45 = type metadata accessor for URL();
  v46 = *(*(v45 - 8) + 56);
  v47 = v69;
  v46(v69, 1, 1, v45);
  v48 = sub_10010C578(&off_1010999C0);
  sub_1000095E8(&unk_1010999E0, &qword_101183AA0, &unk_100ECAF50);
  v49 = v68;
  v46(v68, 1, 1, v45);

  v50 = v70;
  MetricsPageProperties.init(pageIdentifier:pageType:pageURL:pageDetails:extRefUrl:)(v43, v44, 0x747369747241, 0xE600000000000000, v49, 0, 0, 0, v70);
  if (v73)
  {
    v51 = 23;
  }

  else
  {
    v51 = 22;
  }

  v52 = v72;
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)(v43, v44, 5, v51, v47, 0, 0, 12, v72, v48, 0, 0x300u, v50, 0);
  v53 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v54 = sub_10053771C();
  v56 = v55;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v57 = qword_101218AD0;
  v58 = GroupActivitiesManager.hasJoined.getter();
  v59 = GroupActivitiesManager.participantsCount.getter();
  v60 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v53) + 0xB8))(v52, v54, v56, v58 & 1, v59, *(v57 + v60));

  sub_100217EB4(v52, type metadata accessor for MetricsEvent.Click);
  (*(v77 + 8))(v40, v29);
  return sub_1000095E8(v75, &qword_101184610, &qword_100EC0348);
}

uint64_t sub_10020A4AC(unsigned __int8 *a1)
{
  v33 = a1;
  sub_10010FC20(&unk_101184950, &qword_100EC05E0);
  __chkstk_darwin();
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v30 - v4;
  v6 = sub_10010FC20(&qword_101184608, &qword_100EC0340);
  __chkstk_darwin();
  v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v30 - v8;
  v10 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_isFavoritedState;
  swift_beginAccess();
  v32 = v1;
  sub_1000089F8(v1 + v10, v9, &qword_101184608, &qword_100EC0340);
  sub_1000089F8(&v9[*(v6 + 28)], v5, &unk_101184950, &qword_100EC05E0);
  v11 = sub_10010FC20(&qword_101184610, &qword_100EC0348);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v5, 1, v11) == 1)
  {
    sub_1000095E8(v5, &unk_101184950, &qword_100EC05E0);
    v13 = *v9;
    v14 = &qword_101184608;
    v15 = &qword_100EC0340;
    v16 = v9;
  }

  else
  {
    sub_1000095E8(v9, &qword_101184608, &qword_100EC0340);
    v13 = v5[*(v11 + 32)];
    v14 = &qword_101184610;
    v15 = &qword_100EC0348;
    v16 = v5;
  }

  sub_1000095E8(v16, v14, v15);
  v17 = v33;
  sub_1000089F8(&v33[*(v6 + 28)], v3, &unk_101184950, &qword_100EC05E0);
  if (v12(v3, 1, v11) == 1)
  {
    result = sub_1000095E8(v3, &unk_101184950, &qword_100EC05E0);
    if (v13 == *v17)
    {
      return result;
    }
  }

  else
  {
    v19 = v3[*(v11 + 32)];
    result = sub_1000095E8(v3, &qword_101184610, &qword_100EC0348);
    if (v13 == v19)
    {
      return result;
    }
  }

  if (qword_10117FA80 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000060E4(v20, qword_101219180);
  v21 = v32;
  v22 = v32;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v34 = v26;
    *v25 = 136446210;
    sub_1000089F8(v21 + v10, v31, &qword_101184608, &qword_100EC0340);
    v27 = String.init<A>(describing:)();
    v29 = sub_1000105AC(v27, v28, &v34);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v23, v24, "Library Artist Favorite status resolved to %{public}s", v25, 0xCu);
    sub_10000959C(v26);
  }

  return sub_1002027C8();
}

uint64_t sub_10020A8D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 128) = a6;
  *(v7 + 136) = a7;
  *(v7 + 120) = a5;
  *(v7 + 232) = a4;
  *(v7 + 144) = sub_10010FC20(&qword_101184608, &qword_100EC0340);
  *(v7 + 152) = swift_task_alloc();
  *(v7 + 160) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v7 + 168) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 176) = v9;
  *(v7 + 184) = v8;

  return _swift_task_switch(sub_10020A9C0, v9, v8);
}

uint64_t sub_10020A9C0()
{
  v1 = *(v0 + 232);
  type metadata accessor for MusicLibrary();
  *(v0 + 192) = static MusicLibrary.shared.getter();
  if (v1 == 1)
  {
    v2 = swift_task_alloc();
    *(v0 + 200) = v2;
    v3 = type metadata accessor for Artist();
    *v2 = v0;
    v2[1] = sub_10020AB14;
    v4 = *(v0 + 120);

    return MusicLibrary.undoFavorite<A>(_:)(v4, v3, &protocol witness table for Artist);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 216) = v5;
    v6 = type metadata accessor for Artist();
    *v5 = v0;
    v5[1] = sub_10020AD80;
    v7 = *(v0 + 120);

    return MusicLibrary.favorite<A>(_:)(v7, v6, &protocol witness table for Artist);
  }
}

uint64_t sub_10020AB14()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);
    v4 = *(v2 + 184);
    v5 = sub_10020AE9C;
  }

  else
  {

    v3 = *(v2 + 176);
    v4 = *(v2 + 184);
    v5 = sub_10020AC30;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10020AC30()
{
  v1 = v0[20];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v5 = v0[17];

  v6 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_isFavoritedState;
  swift_beginAccess();
  sub_1000089F8(v4 + v6, v1, &qword_101184608, &qword_100EC0340);
  OptimisticValue.completeTransaction(_:)(v5, v3, v7, v8);
  sub_1000089F8(v4 + v6, v2, &qword_101184608, &qword_100EC0340);
  swift_beginAccess();
  sub_1002190E0(v1, v4 + v6, &qword_101184608, &qword_100EC0340);
  swift_endAccess();
  sub_10020A4AC(v2);
  v9 = v0[20];
  sub_1000095E8(v0[19], &qword_101184608, &qword_100EC0340);
  sub_1000095E8(v9, &qword_101184608, &qword_100EC0340);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10020AD80()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);
    v4 = *(v2 + 184);
    v5 = sub_10020B150;
  }

  else
  {

    v3 = *(v2 + 176);
    v4 = *(v2 + 184);
    v5 = sub_10021954C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10020AE9C()
{
  v22 = v0;
  v1 = v0[26];

  if (qword_10117FA80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, qword_101219180);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136315138;
    v0[14] = v1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v7 = String.init<A>(describing:)();
    v9 = sub_1000105AC(v7, v8, &v21);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Artist Favorite Action failed with error=%s", v5, 0xCu);
    sub_10000959C(v6);
  }

  v11 = v0[19];
  v10 = v0[20];
  v13 = v0[17];
  v12 = v0[18];
  v14 = v0[16];
  v15 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_isFavoritedState;
  swift_beginAccess();
  sub_1000089F8(v14 + v15, v10, &qword_101184608, &qword_100EC0340);
  OptimisticValue.cancelTransaction(_:)(v13, v12, v16, v17);
  sub_1000089F8(v14 + v15, v11, &qword_101184608, &qword_100EC0340);
  swift_beginAccess();
  sub_1002190E0(v10, v14 + v15, &qword_101184608, &qword_100EC0340);
  swift_endAccess();
  sub_10020A4AC(v11);

  v18 = v0[20];
  sub_1000095E8(v0[19], &qword_101184608, &qword_100EC0340);
  sub_1000095E8(v18, &qword_101184608, &qword_100EC0340);

  v19 = v0[1];

  return v19();
}

uint64_t sub_10020B150()
{
  v22 = v0;
  v1 = v0[28];

  if (qword_10117FA80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, qword_101219180);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136315138;
    v0[14] = v1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v7 = String.init<A>(describing:)();
    v9 = sub_1000105AC(v7, v8, &v21);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Artist Favorite Action failed with error=%s", v5, 0xCu);
    sub_10000959C(v6);
  }

  v11 = v0[19];
  v10 = v0[20];
  v13 = v0[17];
  v12 = v0[18];
  v14 = v0[16];
  v15 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_isFavoritedState;
  swift_beginAccess();
  sub_1000089F8(v14 + v15, v10, &qword_101184608, &qword_100EC0340);
  OptimisticValue.cancelTransaction(_:)(v13, v12, v16, v17);
  sub_1000089F8(v14 + v15, v11, &qword_101184608, &qword_100EC0340);
  swift_beginAccess();
  sub_1002190E0(v10, v14 + v15, &qword_101184608, &qword_100EC0340);
  swift_endAccess();
  sub_10020A4AC(v11);

  v18 = v0[20];
  sub_1000095E8(v0[19], &qword_101184608, &qword_100EC0340);
  sub_1000095E8(v18, &qword_101184608, &qword_100EC0340);

  v19 = v0[1];

  return v19();
}

uint64_t sub_10020B4B8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v24[-v9];
  v11 = UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  v12 = *v11 == a2 && v11[1] == a3;
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() != a2 || v19 != a3)
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v21)
      {
LABEL_14:
        sub_100200BBC(v10);
        sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
        v18 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
        (*(v8 + 8))(v10, v7);
        return v18;
      }

      strcpy(v25, "Unknown kind=");
      HIWORD(v25[1]) = -4864;
      v22._countAndFlagsBits = a2;
      v22._object = a3;
      String.append(_:)(v22);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    goto LABEL_14;
  }

  v13 = v4;
  sub_100200938(v10);
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  v14 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
  (*(v8 + 8))(v10, v7);
  v15 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artist;
  swift_beginAccess();
  v16 = type metadata accessor for Artist();
  v25[3] = v16;
  v25[4] = &protocol witness table for Artist;
  v17 = sub_10001C8B8(v25);
  (*(*(v16 - 8) + 16))(v17, v13 + v15, v16);
  v18 = sub_1004F24B0(v25);

  sub_1000095E8(v25, &qword_1011A3DD0, &unk_100EC03F0);
  return v18;
}

void *sub_10020B8F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v162 = a1;
  v5 = sub_10010FC20(&unk_101193A90, &qword_100EC02D0);
  v156 = *(v5 - 8);
  v157 = v5;
  __chkstk_darwin();
  v155 = &v127 - v6;
  v135 = sub_10010FC20(&unk_101193A80, &unk_100ED1360);
  v134 = *(v135 - 8);
  __chkstk_darwin();
  v133 = &v127 - v7;
  sub_10010FC20(&unk_101181600, &unk_100EBD070);
  __chkstk_darwin();
  v9 = &v127 - v8;
  v10 = sub_10010FC20(&qword_101193AF0, &unk_100EC0370);
  v136 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v127 - v11;
  sub_10010FC20(&unk_1011846C0, &unk_100ED13F0);
  __chkstk_darwin();
  v159 = &v127 - v13;
  v142 = sub_10010FC20(&unk_101193AA0, &unk_100EC0380);
  v141 = *(v142 - 8);
  __chkstk_darwin();
  v140 = &v127 - v14;
  sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  __chkstk_darwin();
  v154 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v132 = &v127 - v16;
  __chkstk_darwin();
  v161 = &v127 - v17;
  sub_10010FC20(&unk_10118ABC0, &unk_100EC03E0);
  __chkstk_darwin();
  v151 = &v127 - v18;
  v19 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v152 = *(v19 - 8);
  v153 = v19;
  __chkstk_darwin();
  v149 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for UICellAccessory.DisplayedState();
  v148 = *(v150 - 8);
  __chkstk_darwin();
  v147 = &v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_10010FC20(&qword_101184588, &unk_100EC02C0);
  v144 = *(v145 - 8);
  __chkstk_darwin();
  v143 = &v127 - v22;
  v131 = sub_10010FC20(&qword_101184578, &qword_100EC02B8);
  v130 = *(v131 - 8);
  __chkstk_darwin();
  v129 = &v127 - v23;
  sub_10010FC20(&qword_1011815C0, &unk_100EBD040);
  __chkstk_darwin();
  v25 = &v127 - v24;
  v26 = sub_10010FC20(&qword_1011846D8, &unk_100EC0390);
  v27 = *(v26 - 8);
  __chkstk_darwin();
  v29 = &v127 - v28;
  sub_10010FC20(&unk_1011846E0, &qword_100EC8E40);
  __chkstk_darwin();
  v158 = &v127 - v30;
  v139 = sub_10010FC20(&unk_10118F1E0, &qword_100EC03A0);
  v138 = *(v139 - 8);
  __chkstk_darwin();
  v137 = &v127 - v31;
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v146 = &v127 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v128 = &v127 - v33;
  __chkstk_darwin();
  v160 = &v127 - v34;
  sub_10010FC20(&unk_1011846F0, &qword_100EC03A8);
  __chkstk_darwin();
  v36 = &v127 - v35;
  v163 = a2;
  v37 = IndexPath.section.getter();
  v38 = type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext(0);
  (*(*(v38 - 8) + 56))(v36, 1, 1, v38);
  v164 = v3;
  v39 = sub_1001FCF68(v37, v36);
  sub_1000095E8(v36, &unk_1011846F0, &qword_100EC03A8);
  if (v39 == 2)
  {
    goto LABEL_49;
  }

  if (v39)
  {
    v40 = v164;
    RequestResponse.Controller.revision.getter();
    v41 = v159;
    RequestResponse.Revision.content.getter(v159);

    v42 = sub_10010FC20(&unk_10118D1E0, &unk_100EC03B0);
    if ((*(*(v42 - 8) + 48))(v41, 1, v42) == 1)
    {
      sub_1000095E8(v41, &unk_1011846C0, &unk_100ED13F0);
      v43 = type metadata accessor for MusicVideo();
      v44 = v161;
      (*(*(v43 - 8) + 56))(v161, 1, 1, v43);
      v45 = v163;
      goto LABEL_19;
    }

    v51 = v141;
    v52 = v140;
    v53 = v142;
    (*(v141 + 16))(v140, v41, v142);
    sub_1000095E8(v41, &unk_10118D1E0, &unk_100EC03B0);
    v54 = MusicLibrarySectionedResponse.sections.getter();
    (*(v51 + 8))(v52, v53);
    *&v165 = _swiftEmptyArrayStorage;
    v55 = *(v54 + 16);
    if (v55)
    {
      v56 = *(v136 + 16);
      v57 = (*(v136 + 80) + 32) & ~*(v136 + 80);
      v160 = v54;
      v58 = v54 + v57;
      v59 = *(v136 + 72);
      v60 = (v136 + 8);
      do
      {
        v56(v12, v58, v10);
        MusicLibrarySection.items.getter();
        (*v60)(v12, v10);
        sub_1001240F8(v9);
        v58 += v59;
        --v55;
      }

      while (v55);

      v40 = v164;
      v61 = v165;
    }

    else
    {

      v61 = _swiftEmptyArrayStorage;
    }

    v45 = v163;
    v74 = IndexPath.item.getter();
    v44 = v161;
    if ((v74 & 0x8000000000000000) == 0)
    {
      v75 = v74;
      if (v74 < v61[2])
      {
        v76 = type metadata accessor for MusicVideo();
        v77 = *(v76 - 8);
        (*(v77 + 16))(v44, v61 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v75, v76);

        (*(v77 + 56))(v44, 0, 1, v76);
LABEL_19:
        v78 = sub_1001FC918();
        v79 = v78[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

        if (v79 & 1) != 0 || (*(*&v40[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_layoutVariantController] + 32))
        {
          v80 = v155;
          sub_1002015D4(v155);
          v81 = sub_1007F8490(v80, v45, v44);
          (*(v156 + 8))(v80, v157);
          v82 = v44;
          v83 = v154;
        }

        else
        {
          v84 = v133;
          sub_10020135C(v133);
          v81 = sub_1007F7F54(v84, v45, v44);
          (*(v134 + 8))(v84, v135);
          v85 = Corner.medium.unsafeMutableAddressor();
          v86 = *v85;
          v87 = v85[1];
          v88 = *(v85 + 16);
          v89 = swift_allocObject();
          *(v89 + 16) = v86;
          *(v89 + 24) = v87;
          *(v89 + 32) = v88;
          UICollectionViewCell.configurationUpdateHandler.setter();
          v82 = v44;
          v83 = v132;
        }

        sub_1000089F8(v82, v83, &unk_1011846B0, &unk_100ECB630);
        v90 = type metadata accessor for MusicVideo();
        v91 = *(v90 - 8);
        if ((*(v91 + 48))(v83, 1, v90) == 1)
        {
          sub_1000095E8(v83, &unk_1011846B0, &unk_100ECB630);
          v165 = 0u;
          v166 = 0u;
          v167 = 0;
        }

        else
        {
          *(&v166 + 1) = v90;
          v167 = &protocol witness table for MusicVideo;
          v92 = sub_10001C8B8(&v165);
          (*(v91 + 32))(v92, v83, v90);
        }

        v93 = sub_1004F24B0(&v165);

        v94 = &unk_1011846B0;
        v95 = &unk_100ECB630;
LABEL_44:
        sub_1000095E8(v44, v94, v95);
        sub_1000095E8(&v165, &qword_1011A3DD0, &unk_100EC03F0);
        return v93;
      }

      goto LABEL_47;
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v46 = v164;
  RequestResponse.Controller.revision.getter();
  v47 = v158;
  RequestResponse.Revision.content.getter(v158);

  v48 = sub_10010FC20(&unk_101184700, &unk_100EC03C0);
  if ((*(*(v48 - 8) + 48))(v47, 1, v48) == 1)
  {
    sub_1000095E8(v47, &unk_1011846E0, &qword_100EC8E40);
    v49 = type metadata accessor for Album();
    v44 = v160;
    (*(*(v49 - 8) + 56))(v160, 1, 1, v49);
    v50 = v163;
    goto LABEL_31;
  }

  v62 = v138;
  v63 = v137;
  v64 = v139;
  (*(v138 + 16))(v137, v47, v139);
  sub_1000095E8(v47, &unk_101184700, &unk_100EC03C0);
  v65 = MusicLibrarySectionedResponse.sections.getter();
  (*(v62 + 8))(v63, v64);
  *&v165 = _swiftEmptyArrayStorage;
  v66 = *(v65 + 16);
  if (v66)
  {
    v69 = *(v27 + 16);
    v67 = v27 + 16;
    v68 = v69;
    v70 = (*(v67 + 64) + 32) & ~*(v67 + 64);
    v161 = v65;
    v71 = v65 + v70;
    v72 = *(v67 + 56);
    do
    {
      v68(v29, v71, v26);
      MusicLibrarySection.items.getter();
      (*(v67 - 8))(v29, v26);
      sub_100124960(v25);
      v71 += v72;
      --v66;
    }

    while (v66);

    v73 = v165;
  }

  else
  {

    v73 = _swiftEmptyArrayStorage;
  }

  v50 = v163;
  v96 = IndexPath.item.getter();
  v46 = v164;
  v44 = v160;
  if ((v96 & 0x8000000000000000) != 0)
  {
    goto LABEL_46;
  }

  v97 = v96;
  if (v96 < v73[2])
  {
    v98 = type metadata accessor for Album();
    v99 = *(v98 - 8);
    (*(v99 + 16))(v44, v73 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v97, v98);

    (*(v99 + 56))(v44, 0, 1, v98);
LABEL_31:
    v100 = sub_1001FC918();
    v101 = v100[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

    if (v101 & 1) != 0 || (*(*&v46[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_layoutVariantController] + 32))
    {
      v102 = v143;
      sub_1002010BC(v143);
      v93 = sub_1007F7A18(v102, v50, v44);
      (*(v144 + 8))(v102, v145);
      sub_10010FC20(&unk_101184740, &qword_100ED5D60);
      type metadata accessor for UICellAccessory();
      *(swift_allocObject() + 16) = xmmword_100EBC6B0;
      v103 = v148;
      v104 = v147;
      v105 = v150;
      (*(v148 + 104))(v147, enum case for UICellAccessory.DisplayedState.always(_:), v150);
      v106 = type metadata accessor for UICellAccessory.LayoutDimension();
      (*(*(v106 - 8) + 56))(v151, 1, 1, v106);
      v107 = v149;
      UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
      static UICellAccessory.disclosureIndicator(displayed:options:)();
      (*(v152 + 8))(v107, v153);
      (*(v103 + 8))(v104, v105);
      UICollectionViewListCell.accessories.setter();
      v108 = [v46 traitCollection];
      v109 = [v108 userInterfaceIdiom];

      if (v109 != 6)
      {
        v110 = v93;
        [v110 directionalLayoutMargins];
        [v110 setDirectionalLayoutMargins:?];
      }

      v111 = v146;
      sub_1000089F8(v44, v146, &unk_101184730, &unk_100ECB920);
      v112 = type metadata accessor for Album();
      v113 = *(v112 - 8);
      if ((*(v113 + 48))(v111, 1, v112) == 1)
      {
        sub_1000095E8(v111, &unk_101184730, &unk_100ECB920);
        v165 = 0u;
        v166 = 0u;
        v167 = 0;
      }

      else
      {
        *(&v166 + 1) = v112;
        v167 = &protocol witness table for Album;
        v114 = sub_10001C8B8(&v165);
        (*(v113 + 32))(v114, v111, v112);
      }
    }

    else
    {
      v115 = v129;
      sub_100200E44(v129);
      v116 = sub_1007F74DC(v115, v50, v44);
      (*(v130 + 8))(v115, v131);
      v117 = Corner.medium.unsafeMutableAddressor();
      v118 = *v117;
      v119 = v117[1];
      v120 = *(v117 + 16);
      v121 = swift_allocObject();
      *(v121 + 16) = v118;
      *(v121 + 24) = v119;
      *(v121 + 32) = v120;
      UICollectionViewCell.configurationUpdateHandler.setter();
      v122 = v128;
      sub_1000089F8(v44, v128, &unk_101184730, &unk_100ECB920);
      v123 = type metadata accessor for Album();
      v124 = *(v123 - 8);
      if ((*(v124 + 48))(v122, 1, v123) == 1)
      {
        sub_1000095E8(v122, &unk_101184730, &unk_100ECB920);
        v165 = 0u;
        v166 = 0u;
        v167 = 0;
      }

      else
      {
        *(&v166 + 1) = v123;
        v167 = &protocol witness table for Album;
        v125 = sub_10001C8B8(&v165);
        (*(v124 + 32))(v125, v122, v123);
      }

      v93 = sub_1004F24B0(&v165);
    }

    v94 = &unk_101184730;
    v95 = &unk_100ECB920;
    goto LABEL_44;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

BOOL sub_10020D0C8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = UICollectionView.isDraggingCell(at:)();

  (*(v6 + 8))(v8, v5);
  return (v10 & 1) == 0;
}

unint64_t sub_10020D1BC(void *a1, uint64_t a2)
{
  v3 = v2;
  v226 = a1;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v182 = &v172 - v5;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v178 = &v172 - v6;
  v172 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v173 = &v172 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  __chkstk_darwin();
  v176 = &v172 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = v8;
  __chkstk_darwin();
  v177 = &v172 - v9;
  sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  __chkstk_darwin();
  v180 = &v172 - v10;
  _s11MusicVideosVMa(0);
  __chkstk_darwin();
  v179 = &v172 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v181 = &v172 - v12;
  v187 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v184 = *(v187 - 8);
  __chkstk_darwin();
  v183 = &v172 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181600, &unk_100EBD070);
  __chkstk_darwin();
  v223 = &v172 - v14;
  v202 = type metadata accessor for GenericMusicItem();
  v201 = *(v202 - 8);
  __chkstk_darwin();
  v199 = &v172 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v211 = *(v214 - 8);
  __chkstk_darwin();
  v200 = &v172 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v217 = &v172 - v17;
  v18 = sub_10010FC20(&qword_101193AF0, &unk_100EC0370);
  v186 = *(v18 - 8);
  __chkstk_darwin();
  v20 = &v172 - v19;
  sub_10010FC20(&unk_1011846C0, &unk_100ED13F0);
  __chkstk_darwin();
  v222 = &v172 - v21;
  v210 = sub_10010FC20(&unk_101193AA0, &unk_100EC0380);
  v209 = *(v210 - 8);
  __chkstk_darwin();
  v208 = &v172 - v22;
  v213 = type metadata accessor for MusicVideo();
  v212 = *(v213 - 8);
  __chkstk_darwin();
  v192 = &v172 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v224 = (&v172 - v24);
  v216 = type metadata accessor for IndexPath();
  v215 = *(v216 - 8);
  __chkstk_darwin();
  v203 = v25;
  v204 = &v172 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011846D0, &qword_100EDD110);
  __chkstk_darwin();
  v198 = &v172 - v26;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v196 = &v172 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v195 = &v172 - v28;
  __chkstk_darwin();
  v219 = &v172 - v29;
  v191 = type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin();
  v193 = &v172 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v194 = &v172 - v31;
  __chkstk_darwin();
  v197 = &v172 - v32;
  sub_10010FC20(&qword_1011815C0, &unk_100EBD040);
  __chkstk_darwin();
  v34 = &v172 - v33;
  v35 = sub_10010FC20(&qword_1011846D8, &unk_100EC0390);
  v185 = *(v35 - 8);
  __chkstk_darwin();
  v37 = &v172 - v36;
  sub_10010FC20(&unk_1011846E0, &qword_100EC8E40);
  __chkstk_darwin();
  v221 = &v172 - v38;
  v207 = sub_10010FC20(&unk_10118F1E0, &qword_100EC03A0);
  v206 = *(v207 - 8);
  __chkstk_darwin();
  v205 = &v172 - v39;
  v227 = type metadata accessor for Album();
  v220 = *(v227 - 8);
  __chkstk_darwin();
  v189 = &v172 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v190 = &v172 - v41;
  __chkstk_darwin();
  v218 = &v172 - v42;
  __chkstk_darwin();
  v188 = &v172 - v43;
  __chkstk_darwin();
  v225 = &v172 - v44;
  sub_10010FC20(&unk_1011846F0, &qword_100EC03A8);
  __chkstk_darwin();
  v46 = &v172 - v45;
  v228 = a2;
  v47 = IndexPath.section.getter();
  v48 = type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext(0);
  (*(*(v48 - 8) + 56))(v46, 1, 1, v48);
  v229 = v3;
  v49 = sub_1001FCF68(v47, v46);
  result = sub_1000095E8(v46, &unk_1011846F0, &qword_100EC03A8);
  if (v49 == 2)
  {
    return result;
  }

  if ((v49 & 1) == 0)
  {
    v64 = v229;
    v65 = *&v229[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_albumsResponseController];
    RequestResponse.Controller.revision.getter();
    v66 = v221;
    RequestResponse.Revision.content.getter(v221);

    v67 = sub_10010FC20(&unk_101184700, &unk_100EC03C0);
    if ((*(*(v67 - 8) + 48))(v66, 1, v67) == 1)
    {
      v61 = &unk_1011846E0;
      v62 = &qword_100EC8E40;
      v63 = v66;
      return sub_1000095E8(v63, v61, v62);
    }

    v80 = v206;
    v81 = v205;
    v82 = v207;
    (*(v206 + 16))(v205, v66, v207);
    sub_1000095E8(v66, &unk_101184700, &unk_100EC03C0);
    v83 = MusicLibrarySectionedResponse.sections.getter();
    (*(v80 + 8))(v81, v82);
    *&v231[0] = _swiftEmptyArrayStorage;
    v84 = *(v83 + 16);
    if (v84)
    {
      v224 = v65;
      v85 = *(v185 + 16);
      v86 = (*(v185 + 80) + 32) & ~*(v185 + 80);
      v223 = v83;
      v87 = v83 + v86;
      v88 = *(v185 + 72);
      v89 = (v185 + 8);
      do
      {
        v85(v37, v87, v35);
        MusicLibrarySection.items.getter();
        (*v89)(v37, v35);
        sub_100124960(v34);
        v87 += v88;
        --v84;
      }

      while (v84);

      v90 = *&v231[0];
      v64 = v229;
      v65 = v224;
    }

    else
    {

      v90 = _swiftEmptyArrayStorage;
    }

    result = IndexPath.item.getter();
    if ((result & 0x8000000000000000) == 0)
    {
      if (result < *(v90 + 2))
      {
        v115 = v220;
        v116 = v220[2];
        v117 = v188;
        v118 = v227;
        v116(v188, &v90[((*(v115 + 80) + 32) & ~*(v115 + 80)) + v220[9] * result], v227);

        (v115[4])(v225, v117, v118);
        v119 = [v64 traitCollection];
        sub_100217F14();
        UITraitCollection.subscript.getter();

        LOBYTE(v119) = sub_10049CB78();

        if (v119)
        {
          v120 = 1;
        }

        else
        {
          v121 = v65[6] + *(*v65[6] + 96);
          swift_beginAccess();
          v120 = *(v121 + 8);
        }

        v122 = v218;
        v123 = v227;
        (v116)(v218, v225);
        v124 = sub_10010FC20(&qword_10118A430, &qword_100EC8F70);
        v125 = *(v124 + 64);
        v126 = v197;
        v197[*(v124 + 48)] = v120;
        v127 = _s6AlbumsV5ScopeOMa(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v127 - 8) + 56))(v126, 0, 1, v127);
        *(v126 + v125) = 0;
        swift_storeEnumTagMultiPayload();
        v128 = type metadata accessor for URL();
        v129 = v219;
        (*(*(v128 - 8) + 56))(v219, 1, 1, v128);
        v130 = v190;
        v131 = v123;
        v116(v190, v122, v123);
        v132 = v194;
        sub_100217D58(v126, v194, type metadata accessor for ContainerDetail.Source);
        v133 = v195;
        sub_1000089F8(v129, v195, &qword_101183A20, &unk_100EBCF80);
        v134 = v189;
        v116(v189, v130, v131);
        v135 = v193;
        sub_100217D58(v132, v193, type metadata accessor for ContainerDetail.Source);
        v136 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
        v137 = v198;
        (*(*(v136 - 8) + 56))(v198, 1, 1, v136);
        v138 = v196;
        sub_1000089F8(v133, v196, &qword_101183A20, &unk_100EBCF80);
        v139 = sub_1004E34D0(v134, v135, v137, v138);
        sub_1000095E8(v133, &qword_101183A20, &unk_100EBCF80);
        sub_100217EB4(v132, type metadata accessor for ContainerDetail.Source);
        v140 = v220[1];
        v141 = v227;
        v140(v130, v227);
        v142 = v140;
        v224 = v140;
        v143 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
        v144 = sub_100137F64(v139, v143);
        sub_1000095E8(v219, &qword_101183A20, &unk_100EBCF80);
        sub_100217EB4(v126, type metadata accessor for ContainerDetail.Source);
        v142(v218, v141);
        v145 = v229;
        *&v144[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_artworkCachingReference] = *(*&v229[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_prefetchingController] + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_cachingReference);

        v223 = sub_100009F78(0, &qword_101184710, UIViewControllerTransition_ptr);
        v146 = objc_allocWithZone(UIZoomTransitionOptions);
        v147 = v144;
        v148 = [v146 init];
        UIZoomTransitionOptions.alignmentRectProvider.setter();
        v149 = v215;
        v150 = v204;
        v151 = v216;
        (*(v215 + 16))(v204, v228, v216);
        v152 = (*(v149 + 80) + 24) & ~*(v149 + 80);
        v153 = swift_allocObject();
        v154 = v226;
        *(v153 + 16) = v226;
        (*(v149 + 32))(v153 + v152, v150, v151);
        v155 = v154;
        v156 = static UIViewControllerTransition.zoom(options:sourceViewProvider:)();

        [v147 setPreferredTransition:v156];
        [v145 showViewController:v147 sender:v145];

        return (v224)(v225, v227);
      }

LABEL_37:
      __break(1u);
      return result;
    }

    goto LABEL_35;
  }

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v226 deselectItemAtIndexPath:isa animated:1];

  v52 = v229;
  v53 = [v229 navigationItem];
  v54 = [v53 searchController];

  if (v54)
  {
    v55 = [v54 searchBar];

    [v55 resignFirstResponder];
  }

  v56 = *&v52[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_musicVideosResponseController];
  RequestResponse.Controller.revision.getter();
  v57 = v222;
  RequestResponse.Revision.content.getter(v222);

  v58 = sub_10010FC20(&unk_10118D1E0, &unk_100EC03B0);
  v59 = (*(*(v58 - 8) + 48))(v57, 1, v58);
  v60 = v223;
  if (v59 == 1)
  {
    v61 = &unk_1011846C0;
    v62 = &unk_100ED13F0;
    v63 = v57;
    return sub_1000095E8(v63, v61, v62);
  }

  v227 = v56;
  v68 = v209;
  v69 = v208;
  v70 = v210;
  (*(v209 + 16))(v208, v57, v210);
  sub_1000095E8(v57, &unk_10118D1E0, &unk_100EC03B0);
  v71 = MusicLibrarySectionedResponse.sections.getter();
  (*(v68 + 8))(v69, v70);
  v72 = v71;
  *&v231[0] = _swiftEmptyArrayStorage;
  v73 = *(v71 + 16);
  if (v73)
  {
    v74 = *(v186 + 16);
    v75 = (*(v186 + 80) + 32) & ~*(v186 + 80);
    v226 = v72;
    v76 = &v72[v75];
    v77 = *(v186 + 72);
    v78 = (v186 + 8);
    do
    {
      v74(v20, v76, v18);
      MusicLibrarySection.items.getter();
      (*v78)(v20, v18);
      sub_1001240F8(v60);
      v76 += v77;
      --v73;
    }

    while (v73);

    v79 = *&v231[0];
  }

  else
  {

    v79 = _swiftEmptyArrayStorage;
  }

  result = IndexPath.item.getter();
  v91 = v211;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v92 = v217;
  if (result >= *(v79 + 2))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v93 = v212;
  v94 = *(v212 + 16);
  v95 = v192;
  v96 = v213;
  v94(v192, &v79[((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v212 + 72) * result], v213);

  v97 = v224;
  (*(v93 + 32))(v224, v95, v96);
  v98 = v199;
  v94(v199, v97, v96);
  v99 = v201;
  v100 = v202;
  (*(v201 + 104))(v98, enum case for GenericMusicItem.musicVideo(_:), v202);
  sub_100538C48(v98, v92);
  (*(v99 + 8))(v98, v100);
  v101 = v200;
  v102 = v214;
  (*(v91 + 104))(v200, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v214);
  LOBYTE(v100) = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
  v103 = v92;
  v104 = *(v91 + 8);
  v104(v101, v102);
  if (v100)
  {
    v105 = *(v227 + 48);
    v106 = *(*v105 + 96);
    swift_beginAccess();
    v107 = v179;
    sub_100217D58(v105 + v106, v179, _s11MusicVideosVMa);
    v108 = v180;
    v109 = v224;
    v94(v180, v224, v96);
    (*(v93 + 56))(v108, 0, 1, v96);
    v110 = v181;
    sub_1006FD384(v108, v181);
    sub_1000095E8(v108, &unk_1011846B0, &unk_100ECB630);
    sub_100217EB4(v107, _s11MusicVideosVMa);
    v111 = v184;
    v112 = v187;
    if ((*(v184 + 48))(v110, 1, v187) == 1)
    {
      v104(v217, v214);
      (*(v93 + 8))(v109, v96);
      v61 = &unk_10118CDB0;
      v62 = &unk_100EC0360;
      v63 = v110;
      return sub_1000095E8(v63, v61, v62);
    }

    v157 = v183;
    (*(v111 + 32))(v183, v110, v112);
    v158 = v173;
    (*(v111 + 16))(v173, v157, v112);
    swift_storeEnumTagMultiPayload();
    v232 = 0;
    memset(v231, 0, sizeof(v231));
    v159 = v229;
    v230[0] = v229;
    v160 = v111;
    v161 = v229;
    v162 = String.init<A>(reflecting:)();
    v230[3] = &type metadata for Player.CommandIssuerIdentity;
    v230[4] = &protocol witness table for Player.CommandIssuerIdentity;
    v230[0] = v162;
    v230[1] = v163;
    v164 = v161;
    v165 = v177;
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v158, v231, 3, 0, 0, 1, 0, 1, v177, v159, v230);
    v166 = type metadata accessor for TaskPriority();
    v167 = v178;
    (*(*(v166 - 8) + 56))(v178, 1, 1, v166);
    v168 = v176;
    sub_100217D58(v165, v176, type metadata accessor for PlaybackIntentDescriptor);
    type metadata accessor for MainActor();
    v169 = static MainActor.shared.getter();
    v170 = (*(v174 + 80) + 32) & ~*(v174 + 80);
    v171 = swift_allocObject();
    *(v171 + 16) = v169;
    *(v171 + 24) = &protocol witness table for MainActor;
    sub_100217DC0(v168, v171 + v170, type metadata accessor for PlaybackIntentDescriptor);
    sub_1001F4F78(0, 0, v167, &unk_100ECA700, v171);

    sub_100217EB4(v165, type metadata accessor for PlaybackIntentDescriptor);
    (*(v160 + 8))(v183, v187);
    v104(v217, v214);
    return (*(v212 + 8))(v224, v213);
  }

  else
  {
    v113 = v182;
    (*(v215 + 56))(v182, 1, 1, v216);
    sub_100376F3C(v113, v231);
    sub_1000095E8(v113, &unk_10118BCE0, &qword_100EC6450);
    v114 = v224;
    sub_10085E3A4(v103, v224, v231);
    sub_10012BA6C(v231);
    v104(v103, v102);
    return (*(v93 + 8))(v114, v96);
  }
}

void sub_10020F07C(uint64_t a1)
{
  v1 = objc_allocWithZone(type metadata accessor for ContextualPreview.ViewController(0));

  sub_100243448(v2);
}

unint64_t sub_10020F0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v104 = a5;
  v7 = type metadata accessor for UUID();
  v113 = *(v7 - 8);
  __chkstk_darwin();
  v112 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  __chkstk_darwin();
  v110 = v9;
  v111 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v116 = &v95 - v10;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v12 = &v95 - v11;
  v106 = *(sub_10010FC20(&unk_1011845D0, &unk_100EBF380) - 8);
  __chkstk_darwin();
  v107 = v13;
  v108 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v118 = &v95 - v14;
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v16 = &v95 - v15;
  sub_10010FC20(&unk_1011838E0, &unk_100EC1670);
  __chkstk_darwin();
  v103 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v105 = &v95 - v18;
  __chkstk_darwin();
  v20 = &v95 - v19;
  __chkstk_darwin();
  v22 = &v95 - v21;
  sub_10010FC20(&unk_10118AB20, &unk_100EBF390);
  __chkstk_darwin();
  v114 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v117 = &v95 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v26 = Strong;
  sub_10010FC20(&unk_101183900, &unk_100EC1680);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100EBC6B0;
  sub_100008FE4(a3, v27 + 32);
  v28 = [v26 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v101 = v133[0];
  sub_1000089F8(a4, v16, &unk_10118CDB0, &unk_100EC0360);
  PlaybackIntentDescriptor.IntentType.init(_:)(v16, v22);
  memset(v133, 0, 40);
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v29 = qword_101218AD8;
  sub_1000089F8(v22, v20, &unk_1011838E0, &unk_100EC1670);
  v30 = v29;
  v31 = UIViewController.playActivityInformation.getter();
  v99 = v32;
  v100 = v31;
  v34 = v33;
  v98 = v35;
  sub_1000089F8(v133, &v125, &unk_101183910, &unk_100EBDD00);
  v102 = v7;
  v115 = v26;
  if (*(&v126 + 1))
  {
    sub_100059A8C(&v125, &v129);
  }

  else
  {
    *&v134 = v26;
    sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
    v37 = v26;
    sub_10010FC20(&unk_101183920, &unk_100EC0330);
    if (swift_dynamicCast())
    {
      sub_100059A8C(&v137, &v129);
    }

    else
    {
      v139 = 0;
      v137 = 0u;
      v138 = 0u;
      *&v129 = v37;
      v38 = v37;
      v39 = String.init<A>(reflecting:)();
      v130 = &type metadata for Player.CommandIssuerIdentity;
      v131 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v129 = v39;
      *(&v129 + 1) = v40;
      if (*(&v138 + 1))
      {
        sub_1000095E8(&v137, &unk_101183910, &unk_100EBDD00);
      }
    }

    if (*(&v126 + 1))
    {
      sub_1000095E8(&v125, &unk_101183910, &unk_100EBDD00);
    }
  }

  v41 = v117;
  Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v30, v20, v100, v99, v34, v98, &v129, v117);
  sub_1000095E8(v133, &unk_101183910, &unk_100EBDD00);
  sub_1000095E8(v22, &unk_1011838E0, &unk_100EC1670);
  v42 = type metadata accessor for Actions.PlaybackContext(0);
  v43 = *(v42 - 8);
  (*(v43 + 56))(v41, 0, 1, v42);
  v44 = type metadata accessor for PlaylistContext(0);
  (*(*(v44 - 8) + 56))(v118, 1, 1, v44);
  v45 = type metadata accessor for IndexPath();
  v46 = *(v45 - 8);
  (*(v46 + 16))(v12, v104, v45);
  (*(v46 + 56))(v12, 0, 1, v45);
  v47 = v115;
  sub_100376F3C(v12, v133);
  sub_1000095E8(v12, &unk_10118BCE0, &qword_100EC6450);
  v48 = v116;
  sub_100209388(v116);
  v49 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
  sub_100008FE4(v27 + 32, v132);

  sub_1000089F8(v133, &v125, &unk_1011845E0, &unk_100EBF3A0);
  if (v128 == 1)
  {
    v139 = 0;
    v137 = 0u;
    v138 = 0u;
    v140 = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:)(v47, &v137, &v129);
    v50 = v114;
    if (v128 != 1)
    {
      sub_1000095E8(&v125, &unk_1011845E0, &unk_100EBF3A0);
    }
  }

  else
  {
    sub_10012B828(&v125, &v129);
    v50 = v114;
  }

  swift_getObjectType();
  v51 = swift_conformsToProtocol2();
  if (v51)
  {
    v99 = v51;
    v52 = v47;
    v100 = v47;
  }

  else
  {
    v99 = 0;
    v100 = 0;
  }

  v104 = swift_allocBox();
  v54 = v53;
  sub_1000089F8(v117, v50, &unk_10118AB20, &unk_100EBF390);
  v55 = *(v43 + 48);
  if (v55(v50, 1, v42) == 1)
  {
    v56 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
    v57 = v105;
    (*(*(v56 - 8) + 56))(v105, 1, 1, v56);
    v127 = 0;
    v125 = 0u;
    v126 = 0u;
    v58 = v57;
    v59 = v103;
    sub_1000089F8(v58, v103, &unk_1011838E0, &unk_100EC1670);
    v98 = v30;
    v60 = UIViewController.playActivityInformation.getter();
    v96 = v62;
    v97 = v61;
    v64 = v63;
    sub_1000089F8(&v125, &v123, &unk_101183910, &unk_100EBDD00);
    if (v124)
    {
      sub_100059A8C(&v123, &v134);
    }

    else
    {
      v122 = v47;
      sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
      v65 = v47;
      sub_10010FC20(&unk_101183920, &unk_100EC0330);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v119, &v134);
        v50 = v114;
      }

      else
      {
        v121 = 0;
        v119 = 0u;
        v120 = 0u;
        *&v134 = v65;
        v66 = v65;
        v67 = String.init<A>(reflecting:)();
        *(&v135 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v136 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v134 = v67;
        *(&v134 + 1) = v68;
        v50 = v114;
        if (*(&v120 + 1))
        {
          sub_1000095E8(&v119, &unk_101183910, &unk_100EBDD00);
        }
      }

      v47 = v115;
      v59 = v103;
      if (v124)
      {
        sub_1000095E8(&v123, &unk_101183910, &unk_100EBDD00);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v98, v59, v60, v97, v96, v64, &v134, v54);
    sub_1000095E8(&v125, &unk_101183910, &unk_100EBDD00);
    sub_1000095E8(v105, &unk_1011838E0, &unk_100EC1670);
    if (v55(v50, 1, v42) != 1)
    {
      sub_1000095E8(v50, &unk_10118AB20, &unk_100EBF390);
    }
  }

  else
  {
    sub_100217DC0(v50, v54, type metadata accessor for Actions.PlaybackContext);
  }

  v69 = *(v42 + 28);
  sub_1000089F8(&v54[v69], &v134, &unk_101183910, &unk_100EBDD00);
  if (*(&v135 + 1))
  {
    sub_100059A8C(&v134, &v125);
  }

  else
  {
    *&v125 = v47;
    v70 = v47;
    v71 = String.init<A>(reflecting:)();
    *(&v126 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v127 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v125 = v71;
    *(&v125 + 1) = v72;
    if (*(&v135 + 1))
    {
      sub_1000095E8(&v134, &unk_101183910, &unk_100EBDD00);
    }
  }

  sub_10010FC20(&unk_101183930, &unk_100EC1690);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_100EBDC20;
  *(v73 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v73 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v73 + 32) = 0x4D747865746E6F43;
  *(v73 + 40) = 0xEB00000000756E65;
  sub_100008FE4(&v125, v73 + 72);
  v74 = static Player.CommandIssuer<>.combining(_:)(v73);
  v76 = v75;

  sub_10000959C(&v125);
  *(&v126 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v127 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v125 = v74;
  *(&v125 + 1) = v76;
  sub_10006B010(&v125, &v54[v69], &unk_101183910, &unk_100EBDD00);
  sub_100008FE4(v132, &v125);
  sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  v114 = String.init<A>(describing:)();
  v105 = v77;
  v103 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008FE4(v132, &v123);
  sub_10012B7A8(&v129, &v125);
  v78 = v111;
  sub_1000089F8(v116, v111, &unk_1011838D0, &unk_100EC0320);
  v79 = v108;
  sub_1000089F8(v118, v108, &unk_1011845D0, &unk_100EBF380);
  v80 = (*(v109 + 80) + 160) & ~*(v109 + 80);
  v81 = (v110 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
  v82 = (v81 + 15) & 0xFFFFFFFFFFFFFFF8;
  v83 = (*(v106 + 80) + v82 + 8) & ~*(v106 + 80);
  v110 = (v83 + v107 + 7) & 0xFFFFFFFFFFFFFFF8;
  v84 = (v83 + v107 + 31) & 0xFFFFFFFFFFFFFFF8;
  v85 = swift_allocObject();
  sub_100059A8C(&v123, v85 + 16);
  *(v85 + 56) = v101;
  sub_10012B828(&v125, v85 + 64);
  sub_10003D17C(v78, v85 + v80, &unk_1011838D0, &unk_100EC0320);
  v86 = v104;
  *(v85 + v81) = v103;
  *(v85 + v82) = v86;
  sub_10003D17C(v79, v85 + v83, &unk_1011845D0, &unk_100EBF380);
  v87 = v85 + v110;
  v88 = v99;
  *v87 = v100;
  *(v87 + 8) = v88;
  *(v87 + 16) = 2;
  v89 = (v85 + v84);
  *v89 = variable initialization expression of Library.Context.playlistVariants;
  v89[1] = 0;
  swift_unknownObjectRetain();

  v90 = v112;
  UUID.init()();
  v91 = UUID.uuidString.getter();
  v93 = v92;
  (*(v113 + 8))(v90, v102);
  v141._countAndFlagsBits = v114;
  v141._object = v105;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(&v134, v141, v91, v93, sub_10021953C, v85);
  swift_unknownObjectRelease();
  sub_10012BA6C(&v129);
  sub_10000959C(v132);

  v36 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
  v129 = v134;
  sub_100015BB0(&v129);
  v125 = v135;
  sub_100015BB0(&v125);

  sub_1000095E8(v116, &unk_1011838D0, &unk_100EC0320);
  sub_1000095E8(v133, &unk_1011845E0, &unk_100EBF3A0);
  sub_1000095E8(v118, &unk_1011845D0, &unk_100EBF380);
  sub_1000095E8(v117, &unk_10118AB20, &unk_100EBF390);
  return v36;
}

id sub_1002101F0(void *a1, void *a2, void *a3)
{
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v7 = &v26 - v6;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin().n128_u64[0];
  v14 = &v26 - v13;
  aBlock[0] = [a2 identifier];
  sub_10010FC20(&unk_1011846A0, &unk_100EC8F60);
  v15 = swift_dynamicCast();
  v16 = *(v9 + 56);
  if (v15)
  {
    v16(v7, 0, 1, v8);
    v26 = a1;
    v17 = *(v9 + 32);
    v17(v14, v7, v8);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v9 + 16))(v11, v14, v8);
    v19 = *(v9 + 80);
    v27 = a3;
    v20 = (v19 + 32) & ~v19;
    v21 = swift_allocObject();
    v22 = v26;
    *(v21 + 16) = v18;
    *(v21 + 24) = v22;
    v17((v21 + v20), v11, v8);
    aBlock[4] = sub_10021856C;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010A12D0;
    v23 = _Block_copy(aBlock);
    v24 = v22;

    [v27 addAnimations:v23];
    _Block_release(v23);
    return (*(v9 + 8))(v14, v8);
  }

  else
  {
    v16(v7, 1, 1, v8);
    sub_1000095E8(v7, &unk_10118BCE0, &qword_100EC6450);
    return [a3 setPreferredCommitStyle:0];
  }
}

void sub_100210538(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_10020D1BC(a2, a3);
  }
}

id sub_100210644(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = sub_10023D4E4(v9, 0, 1);

  (*(v7 + 8))(v9, v6);

  return v11;
}

uint64_t sub_1002107C0()
{
  if (*(v0 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_hasContent))
  {
    goto LABEL_7;
  }

  v1 = (*(sub_1001FC874() + 120) + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
  v3 = *v1;
  v2 = v1[1];

  if (!v2)
  {
    goto LABEL_7;
  }

  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    *(&v7 + 1) = type metadata accessor for UIContentUnavailableConfiguration();
    v8 = &protocol witness table for UIContentUnavailableConfiguration;
    sub_10001C8B8(&v6);
    static UIContentUnavailableConfiguration.search()();
  }

  else
  {
LABEL_7:
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
  }

  return UIViewController.contentUnavailableConfiguration.setter();
}

char *sub_100210968(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v28 = sub_10010FC20(&qword_101184608, &qword_100EC0340);
  __chkstk_darwin();
  v30 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v29 = &v27 - v3;
  sub_10010FC20(&unk_101184930, &unk_100EC05C0);
  __chkstk_darwin();
  v5 = &v27 - v4;
  v6 = sub_10010FC20(&qword_101193B90, &qword_100EBD7A0);
  v31 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v27 - v7;
  v9 = type metadata accessor for Artist();
  v32 = *(v9 - 8);
  __chkstk_darwin();
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v27 - v12;
  sub_10010FC20(&unk_101184940, &unk_100EC05D0);
  __chkstk_darwin();
  v15 = &v27 - v14;
  v16 = sub_10010FC20(&qword_101181B10, &qword_100EBD5C8);
  v34 = *(v16 - 8);
  __chkstk_darwin();
  v18 = &v27 - v17;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = result;
    sub_1000089F8(v33, v15, &unk_101184940, &unk_100EC05D0);
    if ((*(v34 + 48))(v15, 1, v16) == 1)
    {

      return sub_1000095E8(v15, &unk_101184940, &unk_100EC05D0);
    }

    else
    {
      (*(v34 + 32))(v18, v15, v16);
      MusicLibraryResponse.items.getter();
      sub_10034DA48(v5);
      (*(v31 + 8))(v8, v6);
      v21 = v32;
      if ((*(v32 + 48))(v5, 1, v9) == 1)
      {
        sub_1000095E8(v5, &unk_101184930, &unk_100EC05C0);
        v35 = 0;
        v22 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_isFavoritedState;
        swift_beginAccess();
        v23 = v29;
        sub_1000089F8(&v20[v22], v29, &qword_101184608, &qword_100EC0340);
        OptimisticValue.value.setter(&v35, v28);
        v24 = v30;
        sub_1000089F8(&v20[v22], v30, &qword_101184608, &qword_100EC0340);
        swift_beginAccess();
        sub_1002190E0(v23, &v20[v22], &qword_101184608, &qword_100EC0340);
        swift_endAccess();
        sub_10020A4AC(v24);
        sub_1000095E8(v24, &qword_101184608, &qword_100EC0340);
        sub_1000095E8(v23, &qword_101184608, &qword_100EC0340);
        sub_100209924();
      }

      else
      {
        (*(v21 + 32))(v13, v5, v9);
        (*(v21 + 16))(v11, v13, v9);
        v25 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artist;
        swift_beginAccess();
        (*(v21 + 24))(&v20[v25], v11, v9);
        swift_endAccess();
        sub_100207DB8();

        v26 = *(v21 + 8);
        v26(v11, v9);
        v26(v13, v9);
      }

      return (*(v34 + 8))(v18, v16);
    }
  }

  return result;
}

void sub_1002111F0(uint64_t a1)
{
  sub_10003920C(319, &unk_101184560, &unk_10118A650, &qword_100EC02B0);
  if (v1 <= 0x3F)
  {
    sub_10003920C(319, &qword_101184570, &qword_101184578, &qword_100EC02B8);
    if (v2 <= 0x3F)
    {
      sub_10003920C(319, &qword_101184580, &qword_101184588, &unk_100EC02C0);
      if (v3 <= 0x3F)
      {
        sub_10003920C(319, &unk_101184590, &unk_101193A80, &unk_100ED1360);
        if (v4 <= 0x3F)
        {
          sub_10003920C(319, &unk_1011845A0, &unk_101193A90, &qword_100EC02D0);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Artist();
            if (v6 <= 0x3F)
            {
              sub_1002114E8(319);
              if (v7 <= 0x3F)
              {
                sub_100211540(319, v7, v8, v9);
                if (v10 <= 0x3F)
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

void sub_1002114E8(uint64_t a1)
{
  if (!qword_1011845B0)
  {
    type metadata accessor for Actions.MetricsReportingContext(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1011845B0);
    }
  }
}

void sub_100211540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1011845B8)
  {
    v4 = type metadata accessor for OptimisticValue(0, &type metadata for Bool, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1011845B8);
    }
  }
}

uint64_t sub_100211590()
{
  v1 = v0;
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  _s6AlbumsVMa(0);
  __chkstk_darwin();
  v3 = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011845C0, &unk_100EC0310);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100EBE260;
  v5 = sub_10031E9F8(xmmword_100EBE260);
  isa = sub_100597E50().super.super.isa;
  v7 = [(objc_class *)isa children];

  sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *(v4 + 32) = v5;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = v8;
  v10 = sub_10031EA10(v9);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v32[3] = v11;
  v32[4] = v13;
  v14._countAndFlagsBits = 0x74726F532ELL;
  v14._object = 0xE500000000000000;
  String.append(_:)(v14);
  v15 = String._bridgeToObjectiveC()();

  v16 = *(*(v1 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_albumsResponseController) + 48);
  v17 = *(*v16 + 96);
  swift_beginAccess();
  sub_100217D58(v16 + v17, v3, _s6AlbumsVMa);
  v18 = swift_allocObject();
  swift_weakInit();

  v19.super.super.isa = sub_100211A5C(sub_100217D1C, v18, sub_10028B3E0, sub_100217E5C).super.super.isa;

  sub_100217EB4(v3, _s6AlbumsVMa);

  if (v19.super.super.isa)
  {
    v20 = [(objc_class *)v19.super.super.isa children];

    v19.super.super.isa = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    v15 = 0;
  }

  *(v4 + 64) = v15;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = v19;
  if (qword_10117F578 != -1)
  {
    swift_once();
  }

  v32[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32[2] = v21;
  v22._countAndFlagsBits = 0x676E6F532ELL;
  v22._object = 0xE500000000000000;
  String.append(_:)(v22);
  v23 = String._bridgeToObjectiveC()();

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24 = String.init(localized:table:bundle:locale:comment:)();
  v26 = v25;
  v27 = sub_100208680();
  if (v27)
  {
    v28 = v27;
    v29 = [v27 children];

    v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    v23 = 0;
    v24 = 0;
    v26 = 0;
    v30 = 0;
  }

  *(v4 + 96) = v23;
  *(v4 + 104) = v24;
  *(v4 + 112) = v26;
  *(v4 + 120) = v30;
  return v4;
}

UIMenu sub_100211A5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *(*a4)(uint64_t *__return_ptr, char *))
{
  v9 = *(a3() + 16);

  if (!v9)
  {
    return 0;
  }

  sub_100009F78(0, &unk_1011845F0, UIMenu_ptr);
  v10 = a3();
  __chkstk_darwin();
  v15[2] = v4;
  v15[3] = a1;
  v15[4] = a2;
  sub_1001FABE4(a4, v15, v10);
  v12 = v11;

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v16.value.super.isa = 0;
  v16.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v13, 0, v16, 1, 0xFFFFFFFFFFFFFFFFLL, v12, v15[5]);
}

UIMenu sub_100211B68(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v17[2] = *(v2 + 32);
  v17[3] = v5;
  v18 = *(v2 + 64);
  v6 = *(v2 + 16);
  v17[0] = *v2;
  v17[1] = v6;
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  v7 = static MusicLibrary.== infix(_:_:)();

  v8 = &unk_101098C30;
  if ((v7 & 1) == 0)
  {
    v8 = &unk_101098C58;
  }

  v9 = *v8;

  if (!v9)
  {
    return 0;
  }

  static MusicLibrary.shared.getter();
  v10 = static MusicLibrary.== infix(_:_:)();

  if (v10)
  {
    v11 = &off_101098C20;
  }

  else
  {
    v11 = &off_101098C48;
  }

  sub_100009F78(0, &unk_1011845F0, UIMenu_ptr);
  __chkstk_darwin();
  v16[2] = v17;
  v16[3] = a1;
  v16[4] = a2;
  sub_1001FABE4(sub_1002180C8, v16, v11);
  v13 = v12;

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v19.value.super.isa = 0;
  v19.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v14, 0, v19, 1, 0xFFFFFFFFFFFFFFFFLL, v13, v16[5]);
}

UIMenu sub_100211D00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  v6 = static MusicLibrary.== infix(_:_:)();

  v7 = &unk_101098AA0;
  if ((v6 & 1) == 0)
  {
    v7 = &unk_101098AC8;
  }

  v8 = *v7;

  if (!v8)
  {
    return 0;
  }

  static MusicLibrary.shared.getter();
  v9 = static MusicLibrary.== infix(_:_:)();

  if (v9)
  {
    v10 = &off_101098A90;
  }

  else
  {
    v10 = &off_101098AB8;
  }

  sub_100009F78(0, &unk_1011845F0, UIMenu_ptr);
  __chkstk_darwin();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  sub_1001FABE4(sub_100217D2C, v15, v10);
  v12 = v11;

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v16.value.super.isa = 0;
  v16.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v13, 0, v16, 1, 0xFFFFFFFFFFFFFFFFLL, v12, v15[5]);
}

UIMenu sub_100211E88(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[1];
  v19[2] = v2[2];
  v19[3] = v5;
  v8 = v2[5];
  v19[4] = v6;
  v19[5] = v8;
  v19[0] = *v2;
  v19[1] = v7;
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  v9 = static MusicLibrary.== infix(_:_:)();

  v10 = &unk_101098A50;
  if ((v9 & 1) == 0)
  {
    v10 = &unk_101098A78;
  }

  v11 = *v10;

  if (!v11)
  {
    return 0;
  }

  static MusicLibrary.shared.getter();
  v12 = static MusicLibrary.== infix(_:_:)();

  if (v12)
  {
    v13 = &off_101098A40;
  }

  else
  {
    v13 = &off_101098A68;
  }

  sub_100009F78(0, &unk_1011845F0, UIMenu_ptr);
  __chkstk_darwin();
  v18[2] = v19;
  v18[3] = a1;
  v18[4] = a2;
  sub_1001FABE4(sub_1002184B4, v18, v13);
  v15 = v14;

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v20.value.super.isa = 0;
  v20.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v16, 0, v20, 1, 0xFFFFFFFFFFFFFFFFLL, v15, v18[5]);
}

id sub_100212024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v45[2] = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v45[1] = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(_s6AlbumsVMa(0) - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v45[0] = a2 + *(v10 + 44);
  v11 = sub_1006B8B0C(*v45[0], a1);
  v12 = sub_100213D4C(v11 & 1, a1, a2);
  v45[4] = v13;
  v45[5] = v12;
  sub_10045E340(a1);
  v45[3] = v14;
  v48 = v11;
  sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
  sub_100217D58(a2, v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), _s6AlbumsVMa);
  v15 = (*(v8 + 80) + 18) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v11 & 1;
  *(v16 + 17) = a1;
  sub_100217DC0(v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, _s6AlbumsVMa);
  v17 = (v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  v18 = v47;
  *v17 = v46;
  v17[1] = v18;

  v19 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  v20 = v19;
  _StringGuts.grow(_:)(25);

  v50._countAndFlagsBits = 0xD000000000000017;
  v50._object = 0x8000000100E41650;
  v21 = 0xEA0000000000656DLL;
  v22 = 0x614E747369747261;
  v23 = 0x8000000100E3C6C0;
  v24 = 0x7473696C79616C70;
  if (a1 == 6)
  {
    v24 = 0xD000000000000010;
  }

  else
  {
    v23 = 0xEC00000065707954;
  }

  v25 = 0xE500000000000000;
  v26 = 0x656C746974;
  if (a1 != 4)
  {
    v26 = 0x79616C507473616CLL;
    v25 = 0xEE00657461446465;
  }

  if (a1 <= 5u)
  {
    v24 = v26;
    v23 = v25;
  }

  v27 = 0xEB00000000657461;
  v28 = 0x44657361656C6572;
  if (a1 != 2)
  {
    v28 = 1918985593;
    v27 = 0xE400000000000000;
  }

  if (a1)
  {
    v22 = 0xD000000000000010;
    v21 = 0x8000000100E3C680;
  }

  if (a1 > 1u)
  {
    v22 = v28;
    v21 = v27;
  }

  if (a1 <= 3u)
  {
    v29 = v22;
  }

  else
  {
    v29 = v24;
  }

  if (a1 <= 3u)
  {
    v30 = v21;
  }

  else
  {
    v30 = v23;
  }

  v31 = v30;
  String.append(_:)(*&v29);

  AccessibilityIdentifier.init(name:)(v50);

  v32 = String._bridgeToObjectiveC()();

  [v20 setAccessibilityIdentifier:v32];

  if ((v48 & 1) == 0)
  {
    goto LABEL_31;
  }

  v33 = *(v45[0] + 1);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v34 = String._bridgeToObjectiveC()();

  [v20 setAccessibilityValue:v34];

  v35 = [v20 accessibilityIdentifier];
  if (!v35)
  {
    [v20 setAccessibilityIdentifier:0];
LABEL_31:

    return v20;
  }

  v36 = v35;
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v50._countAndFlagsBits = v37;
  v50._object = v39;
  v49._countAndFlagsBits = 46;
  v49._object = 0xE100000000000000;
  if (v33)
  {
    v40 = 0x6E69646E65637361;
  }

  else
  {
    v40 = 0x69646E6563736564;
  }

  if (v33)
  {
    v41 = 0xE900000000000067;
  }

  else
  {
    v41 = 0xEA0000000000676ELL;
  }

  v42 = v41;
  String.append(_:)(*&v40);

  String.append(_:)(v49);

  if (v50._object)
  {
    v43 = String._bridgeToObjectiveC()();
  }

  else
  {
    v43 = 0;
  }

  [v20 setAccessibilityIdentifier:v43];

  return v20;
}

id sub_100212638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v45[2] = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v45[1] = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(_s11MusicVideosVMa(0) - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v45[0] = a2 + *(v10 + 48);
  v11 = sub_1006B8B0C(*v45[0], a1);
  v12 = sub_100213FF8(v11 & 1, a1, a2);
  v45[4] = v13;
  v45[5] = v12;
  sub_10045E340(a1);
  v45[3] = v14;
  v48 = v11;
  sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
  sub_100217D58(a2, v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), _s11MusicVideosVMa);
  v15 = (*(v8 + 80) + 18) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v11 & 1;
  *(v16 + 17) = a1;
  sub_100217DC0(v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, _s11MusicVideosVMa);
  v17 = (v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  v18 = v47;
  *v17 = v46;
  v17[1] = v18;

  v19 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  v20 = v19;
  _StringGuts.grow(_:)(25);

  v50._countAndFlagsBits = 0xD000000000000017;
  v50._object = 0x8000000100E41650;
  v21 = 0xEA0000000000656DLL;
  v22 = 0x614E747369747261;
  v23 = 0x8000000100E3C6C0;
  v24 = 0x7473696C79616C70;
  if (a1 == 6)
  {
    v24 = 0xD000000000000010;
  }

  else
  {
    v23 = 0xEC00000065707954;
  }

  v25 = 0xE500000000000000;
  v26 = 0x656C746974;
  if (a1 != 4)
  {
    v26 = 0x79616C507473616CLL;
    v25 = 0xEE00657461446465;
  }

  if (a1 <= 5u)
  {
    v24 = v26;
    v23 = v25;
  }

  v27 = 0xEB00000000657461;
  v28 = 0x44657361656C6572;
  if (a1 != 2)
  {
    v28 = 1918985593;
    v27 = 0xE400000000000000;
  }

  if (a1)
  {
    v22 = 0xD000000000000010;
    v21 = 0x8000000100E3C680;
  }

  if (a1 > 1u)
  {
    v22 = v28;
    v21 = v27;
  }

  if (a1 <= 3u)
  {
    v29 = v22;
  }

  else
  {
    v29 = v24;
  }

  if (a1 <= 3u)
  {
    v30 = v21;
  }

  else
  {
    v30 = v23;
  }

  v31 = v30;
  String.append(_:)(*&v29);

  AccessibilityIdentifier.init(name:)(v50);

  v32 = String._bridgeToObjectiveC()();

  [v20 setAccessibilityIdentifier:v32];

  if ((v48 & 1) == 0)
  {
    goto LABEL_31;
  }

  v33 = *(v45[0] + 1);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v34 = String._bridgeToObjectiveC()();

  [v20 setAccessibilityValue:v34];

  v35 = [v20 accessibilityIdentifier];
  if (!v35)
  {
    [v20 setAccessibilityIdentifier:0];
LABEL_31:

    return v20;
  }

  v36 = v35;
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v50._countAndFlagsBits = v37;
  v50._object = v39;
  v49._countAndFlagsBits = 46;
  v49._object = 0xE100000000000000;
  if (v33)
  {
    v40 = 0x6E69646E65637361;
  }

  else
  {
    v40 = 0x69646E6563736564;
  }

  if (v33)
  {
    v41 = 0xE900000000000067;
  }

  else
  {
    v41 = 0xEA0000000000676ELL;
  }

  v42 = v41;
  String.append(_:)(*&v40);

  String.append(_:)(v49);

  if (v50._object)
  {
    v43 = String._bridgeToObjectiveC()();
  }

  else
  {
    v43 = 0;
  }

  [v20 setAccessibilityIdentifier:v43];

  return v20;
}

id sub_100212C4C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v42 = a3;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v41[2] = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v41[1] = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *(a2 + 41);
  v9 = sub_1006B8B0C(*(a2 + 40), a1);
  v10 = v9 & 1;
  v11 = sub_1002142A4(v9 & 1, a1, a2);
  v41[3] = v12;
  v41[4] = v11;
  sub_10045E340(a1);
  v43 = v9;
  sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
  v13 = swift_allocObject();
  v14 = *a2;
  *(v13 + 40) = a2[1];
  v15 = a2[3];
  *(v13 + 56) = a2[2];
  *(v13 + 72) = v15;
  *(v13 + 16) = v10;
  *(v13 + 17) = a1;
  *(v13 + 88) = *(a2 + 64);
  *(v13 + 24) = v14;
  *(v13 + 96) = v42;
  *(v13 + 104) = a4;

  sub_10021817C(a2, &v45);
  v16 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  v17 = v16;
  _StringGuts.grow(_:)(25);

  v45._countAndFlagsBits = 0xD000000000000017;
  v45._object = 0x8000000100E41650;
  v18 = 0xEA0000000000656DLL;
  v19 = 0x614E747369747261;
  v20 = 0x8000000100E3C6C0;
  v21 = 0x7473696C79616C70;
  if (a1 == 6)
  {
    v21 = 0xD000000000000010;
  }

  else
  {
    v20 = 0xEC00000065707954;
  }

  v22 = 0xE500000000000000;
  v23 = 0x656C746974;
  if (a1 != 4)
  {
    v23 = 0x79616C507473616CLL;
    v22 = 0xEE00657461446465;
  }

  if (a1 <= 5u)
  {
    v21 = v23;
    v20 = v22;
  }

  v24 = 0xEB00000000657461;
  v25 = 0x44657361656C6572;
  if (a1 != 2)
  {
    v25 = 1918985593;
    v24 = 0xE400000000000000;
  }

  if (a1)
  {
    v19 = 0xD000000000000010;
    v18 = 0x8000000100E3C680;
  }

  if (a1 > 1u)
  {
    v19 = v25;
    v18 = v24;
  }

  if (a1 <= 3u)
  {
    v26 = v19;
  }

  else
  {
    v26 = v21;
  }

  if (a1 <= 3u)
  {
    v27 = v18;
  }

  else
  {
    v27 = v20;
  }

  v28 = v27;
  String.append(_:)(*&v26);

  AccessibilityIdentifier.init(name:)(v45);

  v29 = String._bridgeToObjectiveC()();

  [v17 setAccessibilityIdentifier:v29];

  if ((v43 & 1) == 0)
  {
    goto LABEL_31;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v30 = String._bridgeToObjectiveC()();

  [v17 setAccessibilityValue:v30];

  v31 = [v17 accessibilityIdentifier];
  if (!v31)
  {
    [v17 setAccessibilityIdentifier:0];
LABEL_31:

    return v17;
  }

  v32 = v31;
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v45._countAndFlagsBits = v33;
  v45._object = v35;
  v44._countAndFlagsBits = 46;
  v44._object = 0xE100000000000000;
  if (v46)
  {
    v36 = 0x6E69646E65637361;
  }

  else
  {
    v36 = 0x69646E6563736564;
  }

  if (v46)
  {
    v37 = 0xE900000000000067;
  }

  else
  {
    v37 = 0xEA0000000000676ELL;
  }

  v38 = v37;
  String.append(_:)(*&v36);

  String.append(_:)(v44);

  if (v45._object)
  {
    v39 = String._bridgeToObjectiveC()();
  }

  else
  {
    v39 = 0;
  }

  [v17 setAccessibilityIdentifier:v39];

  return v17;
}

id sub_1002131C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v45[2] = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v45[1] = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(_s9PlaylistsVMa(0) - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v45[0] = a2 + *(v10 + 52);
  v11 = sub_1006B8B0C(*v45[0], a1);
  v12 = sub_100214544(v11 & 1, a1, a2);
  v45[4] = v13;
  v45[5] = v12;
  sub_10045E340(a1);
  v45[3] = v14;
  v48 = v11;
  sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
  sub_100217D58(a2, v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), _s9PlaylistsVMa);
  v15 = (*(v8 + 80) + 18) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v11 & 1;
  *(v16 + 17) = a1;
  sub_100217DC0(v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, _s9PlaylistsVMa);
  v17 = (v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  v18 = v47;
  *v17 = v46;
  v17[1] = v18;

  v19 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  v20 = v19;
  _StringGuts.grow(_:)(25);

  v50._countAndFlagsBits = 0xD000000000000017;
  v50._object = 0x8000000100E41650;
  v21 = 0xEA0000000000656DLL;
  v22 = 0x614E747369747261;
  v23 = 0x8000000100E3C6C0;
  v24 = 0x7473696C79616C70;
  if (a1 == 6)
  {
    v24 = 0xD000000000000010;
  }

  else
  {
    v23 = 0xEC00000065707954;
  }

  v25 = 0xE500000000000000;
  v26 = 0x656C746974;
  if (a1 != 4)
  {
    v26 = 0x79616C507473616CLL;
    v25 = 0xEE00657461446465;
  }

  if (a1 <= 5u)
  {
    v24 = v26;
    v23 = v25;
  }

  v27 = 0xEB00000000657461;
  v28 = 0x44657361656C6572;
  if (a1 != 2)
  {
    v28 = 1918985593;
    v27 = 0xE400000000000000;
  }

  if (a1)
  {
    v22 = 0xD000000000000010;
    v21 = 0x8000000100E3C680;
  }

  if (a1 > 1u)
  {
    v22 = v28;
    v21 = v27;
  }

  if (a1 <= 3u)
  {
    v29 = v22;
  }

  else
  {
    v29 = v24;
  }

  if (a1 <= 3u)
  {
    v30 = v21;
  }

  else
  {
    v30 = v23;
  }

  v31 = v30;
  String.append(_:)(*&v29);

  AccessibilityIdentifier.init(name:)(v50);

  v32 = String._bridgeToObjectiveC()();

  [v20 setAccessibilityIdentifier:v32];

  if ((v48 & 1) == 0)
  {
    goto LABEL_31;
  }

  v33 = *(v45[0] + 1);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v34 = String._bridgeToObjectiveC()();

  [v20 setAccessibilityValue:v34];

  v35 = [v20 accessibilityIdentifier];
  if (!v35)
  {
    [v20 setAccessibilityIdentifier:0];
LABEL_31:

    return v20;
  }

  v36 = v35;
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v50._countAndFlagsBits = v37;
  v50._object = v39;
  v49._countAndFlagsBits = 46;
  v49._object = 0xE100000000000000;
  if (v33)
  {
    v40 = 0x6E69646E65637361;
  }

  else
  {
    v40 = 0x69646E6563736564;
  }

  if (v33)
  {
    v41 = 0xE900000000000067;
  }

  else
  {
    v41 = 0xEA0000000000676ELL;
  }

  v42 = v41;
  String.append(_:)(*&v40);

  String.append(_:)(v49);

  if (v50._object)
  {
    v43 = String._bridgeToObjectiveC()();
  }

  else
  {
    v43 = 0;
  }

  [v20 setAccessibilityIdentifier:v43];

  return v20;
}

id sub_1002137D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a3;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v42[1] = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v42[0] = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(a2 + 41);
  v9 = sub_1006B8B0C(*(a2 + 40), a1);
  v10 = v9 & 1;
  v11 = sub_1002142A4(v9 & 1, a1, a2);
  v42[2] = v12;
  v42[3] = v11;
  sub_10045E340(a1);
  v44 = v9;
  sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
  v13 = swift_allocObject();
  v14 = *(a2 + 48);
  *(v13 + 56) = *(a2 + 32);
  *(v13 + 72) = v14;
  v15 = *(a2 + 80);
  *(v13 + 88) = *(a2 + 64);
  *(v13 + 104) = v15;
  v16 = *(a2 + 16);
  *(v13 + 24) = *a2;
  *(v13 + 16) = v10;
  *(v13 + 17) = a1;
  *(v13 + 40) = v16;
  *(v13 + 120) = v43;
  *(v13 + 128) = a4;

  sub_1001103E0(a2, &v46);
  v17 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  v18 = v17;
  _StringGuts.grow(_:)(25);

  v46._countAndFlagsBits = 0xD000000000000017;
  v46._object = 0x8000000100E41650;
  v19 = 0xEA0000000000656DLL;
  v20 = 0x614E747369747261;
  v21 = 0x8000000100E3C6C0;
  v22 = 0x7473696C79616C70;
  if (a1 == 6)
  {
    v22 = 0xD000000000000010;
  }

  else
  {
    v21 = 0xEC00000065707954;
  }

  v23 = 0xE500000000000000;
  v24 = 0x656C746974;
  if (a1 != 4)
  {
    v24 = 0x79616C507473616CLL;
    v23 = 0xEE00657461446465;
  }

  if (a1 <= 5u)
  {
    v22 = v24;
    v21 = v23;
  }

  v25 = 0xEB00000000657461;
  v26 = 0x44657361656C6572;
  if (a1 != 2)
  {
    v26 = 1918985593;
    v25 = 0xE400000000000000;
  }

  if (a1)
  {
    v20 = 0xD000000000000010;
    v19 = 0x8000000100E3C680;
  }

  if (a1 > 1u)
  {
    v20 = v26;
    v19 = v25;
  }

  if (a1 <= 3u)
  {
    v27 = v20;
  }

  else
  {
    v27 = v22;
  }

  if (a1 <= 3u)
  {
    v28 = v19;
  }

  else
  {
    v28 = v21;
  }

  v29 = v28;
  String.append(_:)(*&v27);

  AccessibilityIdentifier.init(name:)(v46);

  v30 = String._bridgeToObjectiveC()();

  [v18 setAccessibilityIdentifier:v30];

  if ((v44 & 1) == 0)
  {
    goto LABEL_31;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v31 = String._bridgeToObjectiveC()();

  [v18 setAccessibilityValue:v31];

  v32 = [v18 accessibilityIdentifier];
  if (!v32)
  {
    [v18 setAccessibilityIdentifier:0];
LABEL_31:

    return v18;
  }

  v33 = v32;
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  v46._countAndFlagsBits = v34;
  v46._object = v36;
  v45._countAndFlagsBits = 46;
  v45._object = 0xE100000000000000;
  if (v47)
  {
    v37 = 0x6E69646E65637361;
  }

  else
  {
    v37 = 0x69646E6563736564;
  }

  if (v47)
  {
    v38 = 0xE900000000000067;
  }

  else
  {
    v38 = 0xEA0000000000676ELL;
  }

  v39 = v38;
  String.append(_:)(*&v37);

  String.append(_:)(v45);

  if (v46._object)
  {
    v40 = String._bridgeToObjectiveC()();
  }

  else
  {
    v40 = 0;
  }

  [v18 setAccessibilityIdentifier:v40];

  return v18;
}

uint64_t sub_100213D4C(char a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  v3 = a2;
  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 != 6)
      {
        goto LABEL_11;
      }

      v4 = a3;
    }

    else
    {
      v4 = a3;
    }
  }

  else
  {
    v4 = a3;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
    return 0;
  }

  if (v3 == 5)
  {
LABEL_11:

    return 0;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    return 0;
  }

  v8 = _s6AlbumsVMa(0);
  return sub_10045E540(*(v4 + *(v8 + 36) + 1), v3);
}

uint64_t sub_100213FF8(char a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  v3 = a2;
  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 != 6)
      {
        goto LABEL_11;
      }

      v4 = a3;
    }

    else
    {
      v4 = a3;
    }
  }

  else
  {
    v4 = a3;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
    return 0;
  }

  if (v3 == 5)
  {
LABEL_11:

    return 0;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    return 0;
  }

  v8 = _s11MusicVideosVMa(0);
  return sub_10045E540(*(v4 + *(v8 + 40) + 1), v3);
}

uint64_t sub_1002142A4(char a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  v3 = a2;
  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 != 6)
      {
        goto LABEL_11;
      }

      v4 = a3;
    }

    else
    {
      v4 = a3;
    }
  }

  else
  {
    v4 = a3;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
    return 0;
  }

  if (v3 == 5)
  {
LABEL_11:

    return 0;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    return 0;
  }

  return sub_10045E540(*(v4 + 41) & 1, v3);
}

uint64_t sub_100214544(char a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  v3 = a2;
  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 != 6)
      {
        goto LABEL_11;
      }

      v4 = a3;
    }

    else
    {
      v4 = a3;
    }
  }

  else
  {
    v4 = a3;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
    return 0;
  }

  if (v3 == 5)
  {
LABEL_11:

    return 0;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    return 0;
  }

  v8 = _s9PlaylistsVMa(0);
  return sub_10045E540(*(v4 + *(v8 + 44) + 1), v3);
}

uint64_t sub_1002147F0(__n128 a1, uint64_t a2, char a3, unsigned __int8 a4, uint64_t a5, uint64_t (*a6)(void, __n128))
{
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (a4 > 6u)
  {

    v10 = 256;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      goto LABEL_9;
    }

    if (a4 == 5)
    {

      goto LABEL_12;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
LABEL_9:
      if (a4 <= 7u && ((1 << a4) & 0x91) != 0)
      {
        v10 = 256;
        return (a6)(v10 | a4);
      }

LABEL_12:
      v10 = 0;
      return (a6)(v10 | a4);
    }

    if (*(a5 + *(_s6AlbumsVMa(0) + 36) + 1))
    {
      v10 = 0;
    }

    else
    {
      v10 = 256;
    }
  }

  return (a6)(v10 | a4);
}

uint64_t sub_100214AD4(__n128 a1, uint64_t a2, char a3, unsigned __int8 a4, uint64_t a5, uint64_t (*a6)(void, __n128))
{
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (a4 > 6u)
  {

    v10 = 256;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      goto LABEL_9;
    }

    if (a4 == 5)
    {

      goto LABEL_12;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
LABEL_9:
      if (a4 <= 7u && ((1 << a4) & 0x91) != 0)
      {
        v10 = 256;
        return (a6)(v10 | a4);
      }

LABEL_12:
      v10 = 0;
      return (a6)(v10 | a4);
    }

    if (*(a5 + *(_s11MusicVideosVMa(0) + 40) + 1))
    {
      v10 = 0;
    }

    else
    {
      v10 = 256;
    }
  }

  return (a6)(v10 | a4);
}

uint64_t sub_100214DB8(__n128 a1, uint64_t a2, char a3, unsigned __int8 a4, uint64_t a5, uint64_t (*a6)(void, __n128))
{
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (a4 > 6u)
  {

    v10 = 256;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      goto LABEL_9;
    }

    if (a4 == 5)
    {

      goto LABEL_12;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
LABEL_9:
      if (a4 <= 7u && ((1 << a4) & 0x91) != 0)
      {
        v10 = 256;
        return (a6)(v10 | a4);
      }

LABEL_12:
      v10 = 0;
      return (a6)(v10 | a4);
    }

    if (*(a5 + *(_s9PlaylistsVMa(0) + 44) + 1))
    {
      v10 = 0;
    }

    else
    {
      v10 = 256;
    }
  }

  return (a6)(v10 | a4);
}

double sub_10021509C(__int16 a1, uint64_t a2)
{
  v3 = _s6AlbumsVMa(0);
  __chkstk_darwin();
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 64) = 1;
    v8 = *(Strong + 48);
    v9 = *(*v8 + 96);
    v10 = Strong;
    swift_beginAccess();
    sub_100217D58(v8 + v9, v5, _s6AlbumsVMa);
    v11 = &v5[*(v3 + 36)];
    v12 = *v11;
    v13 = v11[1];
    *v11 = a1;
    v11[1] = HIBYTE(a1) & 1;
    if (v13)
    {
      v14 = 256;
    }

    else
    {
      v14 = 0;
    }

    sub_10028ACDC(v14 | v12);
    sub_100378808(v5);
    *(v10 + 64) = 0;
  }

  return result;
}

double sub_1002151E4(__int16 a1, uint64_t a2)
{
  _s11MusicVideosVMa(0);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 64) = 1;
    v7 = *(Strong + 48);
    v8 = *(*v7 + 96);
    v9 = Strong;
    swift_beginAccess();
    sub_100217D58(v7 + v8, v4, _s11MusicVideosVMa);
    sub_1006FCB18(a1 & 0x1FF);
    sub_100377E84(v4);
    *(v9 + 64) = 0;
  }

  return result;
}

double sub_1002152FC(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    *(Strong + 64) = 1;
    v6 = *(Strong + 48);
    swift_beginAccess();
    v7 = *(v6 + 48);
    v20[1] = *(v6 + 32);
    v8 = *(v6 + 64);
    v23 = *(v6 + 80);
    v21 = v7;
    v22 = v8;
    v9 = *(v6 + 32);
    v20[0] = *(v6 + 16);
    v10 = BYTE9(v21);
    v11 = BYTE8(v21);
    v19 = *(v6 + 48);
    v17 = *(v6 + 16);
    v18 = v9;
    *&v16[15] = *(v6 + 73);
    *v16 = *(v6 + 58);
    sub_10021817C(v20, &v24);
    if ((sub_1006B8B0C(v2, v11) & 1) == 0 || ((((v2 & 0x100) == 0) ^ v10) & 1) == 0)
    {
      v12 = objc_opt_self();
      v13 = [v12 standardUserDefaults];
      *(&v25 + 1) = &_s11ContentSortVN;
      v26 = sub_100110448();
      v27[0] = sub_10011049C();
      LOBYTE(v24) = v2;
      BYTE1(v24) = (v2 & 0x100) >> 8;
      NSUserDefaults.encodeValue(_:forKey:)(&v24);

      sub_10000959C(&v24);
      v14 = [v12 standardUserDefaults];
      v15 = sub_10045E2D4(v2 & 0x1FF);
      NSUserDefaults.setSortType(_:for:keyDomain:)(v15, 192, 0, 0);
    }

    v24 = v17;
    v25 = v18;
    v26 = v19;
    LOBYTE(v27[0]) = v2;
    BYTE1(v27[0]) = (v2 & 0x100) >> 8;
    *(v27 + 2) = *v16;
    *(&v27[2] + 1) = *&v16[15];
    sub_100379CC8(&v24);
    *(v5 + 64) = 0;
  }

  return result;
}

double sub_1002154EC(__int16 a1, uint64_t a2)
{
  v3 = _s9PlaylistsVMa(0);
  __chkstk_darwin();
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 64) = 1;
    v8 = *(Strong + 48);
    v9 = *(*v8 + 96);
    v10 = Strong;
    swift_beginAccess();
    sub_100217D58(v8 + v9, v5, _s9PlaylistsVMa);
    v11 = &v5[*(v3 + 44)];
    v12 = *v11;
    v13 = v11[1];
    *v11 = a1;
    v11[1] = HIBYTE(a1) & 1;
    if (v13)
    {
      v14 = 256;
    }

    else
    {
      v14 = 0;
    }

    sub_10018F8E4(v14 | v12);
    sub_1003777F4(v5);
    *(v10 + 64) = 0;
  }

  return result;
}

double sub_100215634(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    *(Strong + 64) = 1;
    v6 = *(Strong + 48);
    swift_beginAccess();
    v7 = *(v6 + 64);
    v21 = *(v6 + 48);
    v8 = *(v6 + 16);
    v9 = *(v6 + 32);
    v10 = *(v6 + 96);
    v23 = *(v6 + 80);
    v24 = v10;
    v22 = v7;
    v20[0] = v8;
    v20[1] = v9;
    v11 = BYTE9(v21);
    v12 = BYTE8(v21);
    v19 = *(v6 + 48);
    v17 = *(v6 + 16);
    v18 = *(v6 + 32);
    *&v16[14] = *(v6 + 104);
    v15 = *(v6 + 74);
    *v16 = *(v6 + 90);
    v14 = *(v6 + 58);
    sub_1001103E0(v20, &v25);
    if ((sub_1006B8B0C(v2, v12) & 1) == 0 || ((((v2 & 0x100) == 0) ^ v11) & 1) == 0)
    {
      v13 = [objc_opt_self() standardUserDefaults];
      *(&v26 + 1) = &_s11ContentSortVN;
      v27 = sub_100110448();
      *v28 = sub_10011049C();
      LOBYTE(v25) = v2;
      BYTE1(v25) = (v2 & 0x100) >> 8;
      NSUserDefaults.encodeValue(_:forKey:)(&v25);

      sub_10000959C(&v25);
    }

    v25 = v17;
    v26 = v18;
    *&v28[2] = v14;
    v27 = v19;
    v28[0] = v2;
    v28[1] = (v2 & 0x100) >> 8;
    v29 = v15;
    *v30 = *v16;
    *&v30[14] = *&v16[14];
    sub_100379614(&v25);
    *(v5 + 64) = 0;
  }

  return result;
}

uint64_t sub_1002157F8(uint64_t a1, void *a2)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v5 = &v17[-v4];
  v6 = type metadata accessor for Artist();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18[3] = v10;
  v18[4] = &protocol witness table for Artist;
  v11 = sub_10001C8B8(v18);
  (*(v7 + 16))(v11, a1, v6);
  static ApplicationCapabilities.shared.getter(v19);
  sub_100014984(v19);
  if (v19[8])
  {
    sub_100008FE4(v18, v17);
    sub_10010FC20(&unk_101184960, &qword_100EC05F8);
    if (swift_dynamicCast())
    {
      (*(v7 + 8))(v9, v6);
      v12 = type metadata accessor for TaskPriority();
      (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
      type metadata accessor for MainActor();
      v13 = a2;
      v14 = static MainActor.shared.getter();
      v15 = swift_allocObject();
      v15[2] = v14;
      v15[3] = &protocol witness table for MainActor;
      v15[4] = v13;
      sub_1001F4F78(0, 0, v5, &unk_100EC0600, v15);
    }
  }

  return sub_10000959C(v18);
}

uint64_t sub_100215A5C(char *a1)
{
  _s11MusicVideosVMa(0);
  __chkstk_darwin();
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s6AlbumsVMa(0);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&a1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_albumsResponseController];
  v8 = [a1 traitCollection];
  sub_100217F14();
  UITraitCollection.subscript.getter();

  v9 = sub_10049CB78();

  v10 = *(v7 + 48);
  v11 = *(*v10 + 96);
  swift_beginAccess();
  sub_100217D58(v10 + v11, v6, _s6AlbumsVMa);
  v6[8] = v9 & 1;
  sub_100378808(v6);
  v12 = *&a1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_musicVideosResponseController];
  v13 = [a1 traitCollection];
  UITraitCollection.subscript.getter();

  LOBYTE(a1) = sub_10049CB78();

  v14 = *(v12 + 48);
  v15 = *(*v14 + 96);
  swift_beginAccess();
  sub_100217D58(v14 + v15, v3, _s11MusicVideosVMa);
  v3[16] = a1 & 1;
  return sub_100377E84(v3);
}

uint64_t sub_100215CA8(char *a1)
{
  _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin();
  v37 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = _s11MusicVideosVMa(0);
  __chkstk_darwin();
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin();
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s6AlbumsVMa(0);
  *&v8 = __chkstk_darwin().n128_u64[0];
  v10 = (&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *&a1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_albumsResponseController];
  v12 = [a1 traitCollection];
  v38 = sub_100137E8C();
  UITraitCollection.subscript.getter();

  v13 = v41;
  v14 = *(v11 + 48);
  v15 = *(*v14 + 96);
  swift_beginAccess();
  sub_100217D58(v14 + v15, v10, _s6AlbumsVMa);

  *v10 = v13;
  v16 = v10 + *(v7 + 36);
  v17 = *v16;
  if (v16[1])
  {
    v18 = 256;
  }

  else
  {
    v18 = 0;
  }

  sub_100375F10(v18 | v17);
  if ((v19 & 0xFF00) != 0x200)
  {
    v21 = (v19 >> 8) & 1;
    goto LABEL_11;
  }

  sub_100217D58(v10 + *(v7 + 24), v6, _s6AlbumsV5ScopeOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 3)
  {
    if (EnumCaseMultiPayload == 3)
    {
      LOBYTE(v19) = 0;
      LOBYTE(v21) = 1;
      goto LABEL_11;
    }
  }

  else
  {
    sub_100217EB4(v6, _s6AlbumsV5ScopeOMa);
  }

  LOBYTE(v21) = 1;
  LOBYTE(v19) = 4;
LABEL_11:
  *v16 = v19;
  v16[1] = v21;
  sub_10028ACDC(v18 | v17);
  sub_100378808(v10);
  v22 = *&a1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_musicVideosResponseController];
  v23 = [a1 traitCollection];
  UITraitCollection.subscript.getter();

  v24 = v40;
  v25 = *(v22 + 48);
  v26 = *(*v25 + 96);
  swift_beginAccess();
  sub_100217D58(v25 + v26, v4, _s11MusicVideosVMa);

  *(v4 + 1) = v24;
  v27 = v39;
  v28 = &v4[*(v39 + 40)];
  v29 = *v28;
  if (v28[1])
  {
    v30 = 256;
  }

  else
  {
    v30 = 0;
  }

  sub_100375F28(v30 | v29);
  if ((v31 & 0xFF00) == 0x200)
  {
    v32 = v37;
    sub_100217D58(&v4[*(v27 + 28)], v37, _s11MusicVideosV5ScopeOMa);
    v33 = type metadata accessor for Artist();
    if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
    {
      LOBYTE(v31) = 0;
      v34 = 256;
    }

    else
    {
      sub_100217EB4(v32, _s11MusicVideosV5ScopeOMa);
      v34 = 256;
      LOBYTE(v31) = 4;
    }
  }

  else
  {
    v34 = v31 & 0x100;
  }

  sub_1006FCB18(v34 | v31);
  return sub_100377E84(v4);
}

uint64_t sub_100216128@<X0>(char a1@<W0>, void *a2@<X8>)
{
  if (a1)
  {
    v3 = String._bridgeToObjectiveC()();
    v4 = [objc_opt_self() systemImageNamed:v3];

    v5 = AccessibilityString.undoFavoriteButtonLabel.unsafeMutableAddressor();
    v7 = *v5;
    v6 = v5[1];

    v8 = AccessibilityIdentifier.artistUndoFavorite.unsafeMutableAddressor();
  }

  else
  {
    v9 = String._bridgeToObjectiveC()();
    v4 = [objc_opt_self() systemImageNamed:v9];

    v10 = AccessibilityString.favoriteButtonLabel.unsafeMutableAddressor();
    v7 = *v10;
    v6 = v10[1];

    v8 = AccessibilityIdentifier.artistFavorite.unsafeMutableAddressor();
  }

  v12 = *v8;
  v11 = v8[1];
  v14 = v8[2];
  v13 = v8[3];

  *a2 = v4;
  a2[1] = v7;
  a2[2] = v6;
  a2[3] = v12;
  a2[4] = v11;
  a2[5] = v14;
  a2[6] = v13;
  return result;
}

uint64_t sub_100216244(uint64_t a1)
{
  sub_10010FC20(&unk_1011846C0, &unk_100ED13F0);
  __chkstk_darwin();
  v3 = &v26 - v2;
  v4 = sub_10010FC20(&unk_101193AA0, &unk_100EC0380);
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin();
  v27 = &v26 - v5;
  sub_10010FC20(&unk_1011846E0, &qword_100EC8E40);
  __chkstk_darwin();
  v7 = &v26 - v6;
  v8 = sub_10010FC20(&unk_10118F1E0, &qword_100EC03A0);
  v26 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v26 - v9;
  sub_10010FC20(&unk_1011846F0, &qword_100EC03A8);
  __chkstk_darwin();
  v12 = &v26 - v11;
  v13 = type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = sub_1001FCF68(a1, v12);
  sub_1000095E8(v12, &unk_1011846F0, &qword_100EC03A8);
  result = 0;
  if (v14 != 2)
  {
    if (v14)
    {
      RequestResponse.Controller.revision.getter();
      RequestResponse.Revision.content.getter(v3);

      v16 = sub_10010FC20(&unk_10118D1E0, &unk_100EC03B0);
      if ((*(*(v16 - 8) + 48))(v3, 1, v16) == 1)
      {
        v17 = &unk_1011846C0;
        v18 = &unk_100ED13F0;
        v19 = v3;
LABEL_7:
        sub_1000095E8(v19, v17, v18);
        return 0;
      }

      v21 = v27;
      v22 = v28;
      v23 = v29;
      (*(v28 + 16))(v27, v3, v29);
      sub_1000095E8(v3, &unk_10118D1E0, &unk_100EC03B0);
      v24 = MusicLibrarySectionedResponse.totalItemCount.getter();
      (*(v22 + 8))(v21, v23);
    }

    else
    {
      RequestResponse.Controller.revision.getter();
      RequestResponse.Revision.content.getter(v7);

      v20 = sub_10010FC20(&unk_101184700, &unk_100EC03C0);
      if ((*(*(v20 - 8) + 48))(v7, 1, v20) == 1)
      {
        v17 = &unk_1011846E0;
        v18 = &qword_100EC8E40;
        v19 = v7;
        goto LABEL_7;
      }

      v25 = v26;
      (*(v26 + 16))(v10, v7, v8);
      sub_1000095E8(v7, &unk_101184700, &unk_100EC03C0);
      v24 = MusicLibrarySectionedResponse.totalItemCount.getter();
      (*(v25 + 8))(v10, v8);
    }

    return v24;
  }

  return result;
}

unint64_t sub_1002166E4(uint64_t a1)
{
  v2 = v1;
  sub_10010FC20(&unk_101181600, &unk_100EBD070);
  __chkstk_darwin();
  v117 = &v104 - v4;
  _s11MusicVideosVMa(0);
  __chkstk_darwin();
  v127 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_101193AF0, &unk_100EC0370);
  v116 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v104 - v7;
  sub_10010FC20(&unk_1011846C0, &unk_100ED13F0);
  __chkstk_darwin();
  v138 = (&v104 - v9);
  v133 = sub_10010FC20(&unk_101193AA0, &unk_100EC0380);
  v132 = *(v133 - 8);
  __chkstk_darwin();
  v131 = &v104 - v10;
  v126 = type metadata accessor for MusicVideo();
  v125 = *(v126 - 8);
  __chkstk_darwin();
  v122 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v124 = &v104 - v12;
  sub_10010FC20(&qword_1011815C0, &unk_100EBD040);
  __chkstk_darwin();
  v115 = &v104 - v13;
  _s6AlbumsVMa(0);
  __chkstk_darwin();
  v123 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10010FC20(&qword_1011846D8, &unk_100EC0390);
  v114 = *(v15 - 8);
  __chkstk_darwin();
  v17 = &v104 - v16;
  sub_10010FC20(&unk_1011846E0, &qword_100EC8E40);
  __chkstk_darwin();
  isa = (&v104 - v18);
  v130 = sub_10010FC20(&unk_10118F1E0, &qword_100EC03A0);
  v129 = *(v130 - 8);
  __chkstk_darwin();
  v128 = &v104 - v19;
  v121 = type metadata accessor for Album();
  v120 = *(v121 - 8);
  __chkstk_darwin();
  v118 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v119 = &v104 - v21;
  sub_10010FC20(&unk_1011846F0, &qword_100EC03A8);
  __chkstk_darwin();
  v23 = &v104 - v22;
  v134 = *(sub_10010FC20(&unk_10118CDB0, &unk_100EC0360) - 8);
  __chkstk_darwin();
  v136 = &v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = v24;
  __chkstk_darwin();
  v139 = &v104 - v25;
  v26 = type metadata accessor for IndexPath();
  v27 = *(v26 - 8);
  __chkstk_darwin();
  v30 = __chkstk_darwin();
  v32 = &v104 - v31;
  if (!*(a1 + 16))
  {
    return 0;
  }

  v110 = v29;
  v111 = v28;
  v33 = *(v27 + 16);
  v109 = *(v27 + 80);
  v108 = v27 + 16;
  v107 = v33;
  (v33)(v32, a1 + ((v109 + 32) & ~v109), v26, v30);
  v34 = IndexPath.section.getter();
  v35 = type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext(0);
  (*(*(v35 - 8) + 56))(v23, 1, 1, v35);
  v113 = v2;
  v36 = sub_1001FCF68(v34, v23);
  sub_1000095E8(v23, &unk_1011846F0, &qword_100EC03A8);
  if (v36 == 2)
  {
    (*(v27 + 8))(v32, v26);
    return 0;
  }

  v112 = v32;
  v105 = v27;
  v106 = v26;
  if (v36)
  {
    v37 = *(v113 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_musicVideosResponseController);
    RequestResponse.Controller.revision.getter();
    v38 = v138;
    RequestResponse.Revision.content.getter(v138);

    v39 = sub_10010FC20(&unk_10118D1E0, &unk_100EC03B0);
    if ((*(*(v39 - 8) + 48))(v38, 1, v39) == 1)
    {
      v40 = &unk_1011846C0;
      v41 = &unk_100ED13F0;
LABEL_9:
      sub_1000095E8(v38, v40, v41);
      (*(v105 + 8))(v112, v106);
      return 0;
    }

    v45 = v132;
    v46 = v131;
    v47 = v133;
    (*(v132 + 16))(v131, v38, v133);
    sub_1000095E8(v38, &unk_10118D1E0, &unk_100EC03B0);
    v48 = MusicLibrarySectionedResponse.sections.getter();
    (*(v45 + 8))(v46, v47);
    aBlock = _swiftEmptyArrayStorage;
    v49 = *(v48 + 2);
    if (v49)
    {
      v138 = v37;
      v50 = *(v116 + 16);
      v51 = (*(v116 + 80) + 32) & ~*(v116 + 80);
      isa = v48;
      v52 = v48 + v51;
      v53 = *(v116 + 72);
      v54 = (v116 + 8);
      v55 = v117;
      do
      {
        v50(v8, v52, v6);
        MusicLibrarySection.items.getter();
        (*v54)(v8, v6);
        sub_1001240F8(v55);
        v52 += v53;
        --v49;
      }

      while (v49);

      v56 = aBlock;
      v37 = v138;
    }

    else
    {

      v56 = _swiftEmptyArrayStorage;
    }

    result = IndexPath.item.getter();
    if ((result & 0x8000000000000000) == 0)
    {
      if (result < v56[2])
      {
        v69 = v125;
        v70 = *(v125 + 16);
        v71 = v122;
        v72 = v126;
        v70(v122, v56 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v125 + 72) * result, v126);

        v73 = v124;
        (*(v69 + 32))(v124, v71, v72);
        v148 = v72;
        v149 = &protocol witness table for MusicVideo;
        v74 = sub_10001C8B8(&v147);
        v70(v74, v73, v72);
        v75 = sub_10023D0E4();
        v76 = *(v37 + 48);
        v77 = *(*v76 + 96);
        swift_beginAccess();
        v78 = v76 + v77;
        v79 = v127;
        sub_100217D58(v78, v127, _s11MusicVideosVMa);
        v138 = v75;

        v80 = v139;
        sub_1006FCD38(v139);
        v81 = _s11MusicVideosVMa;
LABEL_27:
        sub_100217EB4(v79, v81);
        (*(v69 + 8))(v73, v72);
        v89 = v109;
        v90 = v112;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v91 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_100008FE4(&v147, &v146);
        v92 = v136;
        sub_1000089F8(v80, v136, &unk_10118CDB0, &unk_100EC0360);
        v93 = v111;
        v94 = v106;
        v107(v111, v90, v106);
        v95 = (*(v134 + 80) + 64) & ~*(v134 + 80);
        v96 = (v135 + v89 + v95) & ~v89;
        v97 = swift_allocObject();
        *(v97 + 16) = v91;
        sub_100059A8C(&v146, v97 + 24);
        sub_10003D17C(v92, v97 + v95, &unk_10118CDB0, &unk_100EC0360);
        v98 = v105;
        (*(v105 + 32))(v97 + v96, v93, v94);
        v99 = objc_opt_self();
        v144 = sub_100218654;
        v145 = v138;
        aBlock = _NSConcreteStackBlock;
        v141 = 1107296256;
        v142 = sub_100747E6C;
        v143 = &unk_1010A1370;
        v100 = _Block_copy(&aBlock);

        v144 = sub_10021865C;
        v145 = v97;
        aBlock = _NSConcreteStackBlock;
        v141 = 1107296256;
        v142 = sub_100747EBC;
        v143 = &unk_1010A1398;
        v101 = _Block_copy(&aBlock);

        v102 = isa;
        v103 = [v99 configurationWithIdentifier:isa previewProvider:v100 actionProvider:v101];

        _Block_release(v101);
        _Block_release(v100);

        sub_1000095E8(v139, &unk_10118CDB0, &unk_100EC0360);
        (*(v98 + 8))(v112, v94);
        sub_10000959C(&v147);

        return v103;
      }

      goto LABEL_30;
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v42 = *(v113 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_albumsResponseController);
  RequestResponse.Controller.revision.getter();
  v38 = isa;
  RequestResponse.Revision.content.getter(isa);

  v43 = sub_10010FC20(&unk_101184700, &unk_100EC03C0);
  if ((*(*(v43 - 8) + 48))(v38, 1, v43) == 1)
  {
    v40 = &unk_1011846E0;
    v41 = &qword_100EC8E40;
    goto LABEL_9;
  }

  v57 = v129;
  v58 = v128;
  v59 = v130;
  (*(v129 + 16))(v128, v38, v130);
  sub_1000095E8(v38, &unk_101184700, &unk_100EC03C0);
  v60 = MusicLibrarySectionedResponse.sections.getter();
  (*(v57 + 8))(v58, v59);
  aBlock = _swiftEmptyArrayStorage;
  v61 = *(v60 + 2);
  if (v61)
  {
    v138 = v42;
    v62 = *(v114 + 16);
    v63 = (*(v114 + 80) + 32) & ~*(v114 + 80);
    isa = v60;
    v64 = v60 + v63;
    v65 = *(v114 + 72);
    v66 = (v114 + 8);
    v67 = v115;
    do
    {
      v62(v17, v64, v15);
      MusicLibrarySection.items.getter();
      (*v66)(v17, v15);
      sub_100124960(v67);
      v64 += v65;
      --v61;
    }

    while (v61);

    v68 = aBlock;
    v42 = v138;
  }

  else
  {

    v68 = _swiftEmptyArrayStorage;
  }

  result = IndexPath.item.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_29;
  }

  if (result < v68[2])
  {
    v69 = v120;
    v82 = *(v120 + 16);
    v83 = v118;
    v72 = v121;
    v82(v118, v68 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v120 + 72) * result, v121);

    v73 = v119;
    (*(v69 + 32))(v119, v83, v72);
    v148 = v72;
    v149 = &protocol witness table for Album;
    v84 = sub_10001C8B8(&v147);
    v82(v84, v73, v72);
    v85 = sub_10023CC30();
    v86 = *(v42 + 48);
    v87 = *(*v86 + 96);
    swift_beginAccess();
    v88 = v86 + v87;
    v79 = v123;
    sub_100217D58(v88, v123, _s6AlbumsVMa);
    v138 = v85;

    v80 = v139;
    sub_100288ABC(v139);
    v81 = _s6AlbumsVMa;
    goto LABEL_27;
  }

LABEL_31:
  __break(1u);
  return result;
}

double sub_100217948()
{
  v0 = [*(sub_1001FC874() + 32) searchBar];
  [v0 resignFirstResponder];

  RequestResponse.Controller.isPaused.setter(1);
  return RequestResponse.Controller.isPaused.setter(1);
}

void sub_1002179DC()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_viewHasAppeared) = 0;
  v2 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___globalHeaderRegistration;
  v3 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v4 = *(*(v3 - 8) + 56);
  v4(v1 + v2, 1, 1, v3);
  v4(v1 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___headerRegistration, 1, 1, v3);
  v5 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___albumGridCellRegistration;
  v6 = sub_10010FC20(&qword_101184578, &qword_100EC02B8);
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___albumListCellRegistration;
  v8 = sub_10010FC20(&qword_101184588, &unk_100EC02C0);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___musicVideoGridCellRegistration;
  v10 = sub_10010FC20(&unk_101193A80, &unk_100ED1360);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___musicVideoListCellRegistration;
  v12 = sub_10010FC20(&unk_101193A90, &qword_100EC02D0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  *(v1 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___collectionView) = 0;
  *(v1 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___contextBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artistResponse) = 0;
  *(v1 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artistResponseSubscription) = 0;
  v13 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_prefetchingController;
  v14 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *(v1 + v13) = sub_10003AAD8(0xD000000000000023, 0x8000000100E416D0);
  *(v1 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artistHeader) = 0;
  *(v1 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_hasContent) = 0;
  *(v1 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_dragDropController) = 0;
  *(v1 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___searchController) = 0;
  v15 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___actionMetricsReportingContext;
  v16 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  *(v1 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_sortBinding) = 0;
  *(v1 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___favoriteBarButtonItem) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100217D58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100217DC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100217EB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100217F14()
{
  result = qword_101184630;
  if (!qword_101184630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101184630);
  }

  return result;
}

uint64_t sub_100217F94@<X0>(unsigned __int8 *a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X2>, uint64_t *a3@<X8>)
{
  result = a2(*a1, v3[2], v3[3], v3[4]);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_100218008(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 18) & ~*(v5 + 80);
  v7 = *(v3 + 16);
  v8 = (v3 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v3 + 17);

  return a3(a1, v7, v11, v3 + v6, v9, v10);
}

id sub_1002180C8@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = *(v6 + 48);
  v11[2] = *(v6 + 32);
  v11[3] = v8;
  v12 = *(v6 + 64);
  v9 = *(v6 + 16);
  v11[0] = *v6;
  v11[1] = v9;
  result = sub_100212C4C(*a1, v11, v5, v7);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10021812C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 96);
  v3 = *(v0 + 17);
  v4 = *(v0 + 40);
  v5 = *(v0 + 72);
  v7[2] = *(v0 + 56);
  v7[3] = v5;
  v8 = *(v0 + 88);
  v7[0] = *(v0 + 24);
  v7[1] = v4;
  return sub_1002181D8(v1, v3, v7, v2, v4);
}

uint64_t sub_1002181D8(char a1, unsigned __int8 a2, uint64_t a3, uint64_t (*a4)(void, __n128), __n128 a5)
{
  if ((a1 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (a2 <= 6u)
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      if (a2 == 5)
      {

        goto LABEL_12;
      }

      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v10 & 1) == 0)
      {
        v9 = ~*(a3 + 40) & 0x100;
        return (a4)(v9 | a2);
      }
    }

LABEL_9:
    if (a2 <= 7u && ((1 << a2) & 0x91) != 0)
    {
      v9 = 256;
      return (a4)(v9 | a2);
    }

LABEL_12:
    v9 = 0;
    return (a4)(v9 | a2);
  }

  v9 = 256;
  return (a4)(v9 | a2);
}

id sub_1002184B4@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = v6[3];
  v12[2] = v6[2];
  v12[3] = v8;
  v9 = v6[5];
  v12[4] = v6[4];
  v12[5] = v9;
  v10 = v6[1];
  v12[0] = *v6;
  v12[1] = v10;
  result = sub_1002137D4(*a1, v12, v5, v7);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100218518()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 120);
  v3 = *(v0 + 17);
  v4 = *(v0 + 72);
  v8[2] = *(v0 + 56);
  v8[3] = v4;
  v5 = *(v0 + 104);
  v8[4] = *(v0 + 88);
  v8[5] = v5;
  v6 = *(v0 + 40);
  v8[0] = *(v0 + 24);
  v8[1] = v6;
  return sub_1002181D8(v1, v3, v8, v2, v8[0]);
}

void sub_10021856C()
{
  v1 = *(type metadata accessor for IndexPath() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_100210538(v2, v3, v4);
}

unint64_t sub_10021865C(uint64_t a1)
{
  v3 = *(sub_10010FC20(&unk_10118CDB0, &unk_100EC0360) - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for IndexPath() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_10020F0B8(a1, v7, v1 + 24, v1 + v4, v8);
}

uint64_t sub_100218744()
{
  v1 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  v2 = (*(v1 + 80) + 160) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(*(sub_10010FC20(&unk_1011845D0, &unk_100EBF380) - 8) + 80);
  sub_10000959C((v0 + 16));

  swift_unknownObjectWeakDestroy();
  v5 = *(v0 + 112);
  if (v5 != 255)
  {
    sub_10012B804(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), v5);
  }

  if (*(v0 + 128))
  {
  }

  if (*(v0 + 144))
  {
  }

  v6 = (v3 + v4 + 8) & ~v4;
  v7 = v0 + v2;
  v8 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v19 = *(v10 + 24);
      v11 = type metadata accessor for URL();
      v17 = *(v11 - 8);
      v18 = v11;
      if (!(*(v17 + 48))(v9 + v19, 1))
      {
        (*(v17 + 8))(v9 + v19, v18);
      }
    }
  }

  v12 = type metadata accessor for PlaylistContext(0);
  if (!(*(*(v12 - 8) + 48))(v0 + v6, 1, v12))
  {
    v13 = type metadata accessor for Playlist.Entry();
    (*(*(v13 - 8) + 8))(v0 + v6, v13);
    v14 = *(v12 + 20);
    v15 = type metadata accessor for Playlist();
    (*(*(v15 - 8) + 8))(v0 + v6 + v14, v15);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100218B94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100218C4C()
{
  result = qword_101184868;
  if (!qword_101184868)
  {
    sub_1001109D0(&qword_101184860, &qword_100EC0518);
    sub_100218CD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101184868);
  }

  return result;
}

unint64_t sub_100218CD8()
{
  result = qword_101184870;
  if (!qword_101184870)
  {
    sub_1001109D0(&qword_101184878, &qword_100EC0520);
    sub_100020674(&qword_101184880, &qword_101184888, &qword_100EC0528, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101184870);
  }

  return result;
}

unint64_t sub_100218D98()
{
  result = qword_1011848C0;
  if (!qword_1011848C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011848C0);
  }

  return result;
}

unint64_t sub_100218DEC()
{
  result = qword_1011848C8;
  if (!qword_1011848C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011848C8);
  }

  return result;
}

uint64_t sub_100218E48()
{
  v1 = type metadata accessor for PlaybackIntentDescriptor(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = (v0 + v2);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for MusicPlaybackIntentDescriptor();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = (v3 + *(v1 + 28));
  if (v5[3])
  {
    sub_10000959C(v5);
  }

  v6 = (v3 + *(v1 + 32));
  if (v6[3])
  {
    sub_10000959C(v6);
  }

  return swift_deallocObject();
}

uint64_t sub_100218F80(uint64_t a1)
{
  v4 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_100423504(a1, v6, v7, v1 + v5);
}

uint64_t sub_1002190E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10010FC20(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_100219150(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Artist() - 8);
  v6 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_10010FC20(&qword_101184610, &qword_100EC0348) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + 32);
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10002F3F4;

  return sub_10020A8D8(a1, v10, v11, v12, v1 + v6, v13, v1 + v9);
}

uint64_t sub_1002192D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100494EB0(a1, v4, v5, v6);
}

uint64_t sub_100219384()
{

  if (v0[3])
  {
  }

  if (v0[5])
  {
  }

  if (v0[7])
  {
  }

  return swift_deallocObject();
}

void sub_100219460(uint64_t a1)
{
  sub_10003920C(319, &qword_1011849D8, &unk_10118F1E0, &qword_100EC03A0);
  if (v1 <= 0x3F)
  {
    sub_10003920C(319, &unk_1011849E0, &unk_101193AA0, &unk_100EC0380);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10021956C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

double sub_1002195E4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

double sub_100219658@<D0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1);

  return result;
}

uint64_t sub_1002196D0()
{
  sub_1000095E8(v0 + OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel_releaseDate, &qword_101188C20, &qword_100EC2030);
  v1 = OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel__trackCount;
  v2 = sub_10010FC20(&unk_1011A4640, &qword_100EE4A10);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel__duration;
  v4 = sub_10010FC20(&unk_101184D60, &unk_100EC09C0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel__recordLabels;
  v6 = sub_10010FC20(&unk_1011A4630, &unk_100EE4A00);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

void sub_10021986C(uint64_t a1)
{
  sub_1001E8510(319);
  if (v1 <= 0x3F)
  {
    sub_1000054CC(319, &qword_101184A68, &qword_101184A70, &qword_100EC0680);
    if (v2 <= 0x3F)
    {
      sub_1002199F0();
      if (v3 <= 0x3F)
      {
        sub_1000054CC(319, qword_101184A80, &unk_101192700, &qword_100EC06A0);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1002199F0()
{
  if (!qword_101184A78)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_101184A78);
    }
  }
}

uint64_t sub_100219A6C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TracklistFooter.ViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

__n128 sub_100219AAC@<Q0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_10010FC20(&qword_101184C08, &qword_100EC0768);
  __chkstk_darwin();
  v7 = v42 - v6;
  *v7 = static HorizontalAlignment.leading.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = sub_10010FC20(&qword_101184C10, &qword_100EC0770);
  sub_100219DE0(a2, &v7[*(v8 + 44)]);
  v9 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  v11 = &v7[*(sub_10010FC20(&qword_101184C18, &qword_100EC07A8) + 36)];
  *v11 = KeyPath;
  v11[1] = v9;
  LODWORD(v9) = static HierarchicalShapeStyle.secondary.getter();
  *&v7[*(sub_10010FC20(&qword_101184C20, &qword_100EC07B0) + 36)] = v9;
  v12 = static Edge.Set.top.getter();
  if (qword_10117F340 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = &v7[*(sub_10010FC20(&qword_101184C28, &qword_100EC07B8) + 36)];
  *v21 = v12;
  *(v21 + 1) = v14;
  *(v21 + 2) = v16;
  *(v21 + 3) = v18;
  *(v21 + 4) = v20;
  v21[40] = 0;
  v22 = static Edge.Set.bottom.getter();
  if (qword_10117F348 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = &v7[*(sub_10010FC20(&qword_101184C30, &qword_100EC07C0) + 36)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = static Edge.Set.leading.getter();
  if (qword_10117F350 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v33 = &v7[*(v5 + 36)];
  *v33 = v32;
  *(v33 + 1) = v34;
  *(v33 + 2) = v35;
  *(v33 + 3) = v36;
  *(v33 + 4) = v37;
  v33[40] = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v7, a3, &qword_101184C08, &qword_100EC0768);
  v38 = a3 + *(sub_10010FC20(&qword_101184C38, &qword_100EC07C8) + 36);
  v39 = v42[5];
  *(v38 + 64) = v42[4];
  *(v38 + 80) = v39;
  *(v38 + 96) = v42[6];
  v40 = v42[1];
  *v38 = v42[0];
  *(v38 + 16) = v40;
  result = v42[3];
  *(v38 + 32) = v42[2];
  *(v38 + 48) = result;
  return result;
}

uint64_t sub_100219DE0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v197 = a2;
  v196 = sub_10010FC20(&qword_101184C40, &qword_100EC07D0);
  v195 = *(v196 - 8);
  __chkstk_darwin();
  v184 = (&v173 - v3);
  v180 = sub_10010FC20(&qword_101184C48, &qword_100EC07D8);
  __chkstk_darwin();
  v181 = (&v173 - v4);
  sub_10010FC20(&qword_101184C50, &unk_100EC07E0);
  __chkstk_darwin();
  v183 = &v173 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v185 = &v173 - v6;
  v173 = sub_10010FC20(&qword_101184C58, &unk_100EDCC30);
  __chkstk_darwin();
  v174 = &v173 - v7;
  v176 = sub_10010FC20(&qword_101184C60, &qword_100EC07F0);
  __chkstk_darwin();
  v175 = &v173 - v8;
  v182 = sub_10010FC20(&qword_101184C68, &unk_100EC07F8);
  v179 = *(v182 - 8);
  __chkstk_darwin();
  v178 = &v173 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v187 = &v173 - v10;
  sub_10010FC20(&unk_101192700, &qword_100EC06A0);
  __chkstk_darwin();
  v191 = (&v173 - v11);
  v203 = sub_10010FC20(&qword_101184C70, &qword_100EBD6D0);
  v202 = *(v203 - 8);
  __chkstk_darwin();
  v177 = &v173 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v201 = &v173 - v13;
  sub_10010FC20(&qword_101184C78, &qword_100EC0808);
  __chkstk_darwin();
  v194 = &v173 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v193 = &v173 - v15;
  v190 = sub_10010FC20(&qword_101184C80, &qword_100EC0810);
  v189 = *(v190 - 8);
  __chkstk_darwin();
  v186 = &v173 - v16;
  sub_10010FC20(&qword_101184C88, &qword_100EC0818);
  __chkstk_darwin();
  v192 = &v173 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v209 = &v173 - v18;
  v205 = sub_10010FC20(&unk_101184C90, &unk_100EC0820);
  v188 = *(v205 - 8);
  __chkstk_darwin();
  v212 = &v173 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v204 = &v173 - v20;
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v22 = &v173 - v21;
  v200 = type metadata accessor for Date();
  v199 = *(v200 - 8);
  __chkstk_darwin();
  v198 = &v173 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101184CA0, &qword_100EC0830);
  __chkstk_darwin();
  v207 = &v173 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v211 = &v173 - v25;
  v26 = type metadata accessor for AccessibilityChildBehavior();
  v27 = *(v26 - 8);
  __chkstk_darwin();
  v29 = &v173 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101184CA8, &qword_100EC0838);
  __chkstk_darwin();
  v31 = &v173 - v30;
  v32 = sub_10010FC20(&qword_101184CB0, &qword_100EC0840);
  v33 = *(v32 - 8);
  __chkstk_darwin();
  v35 = &v173 - v34;
  sub_10010FC20(&qword_101184CB8, &qword_100EC0848);
  __chkstk_darwin();
  v206 = &v173 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v210 = &v173 - v37;
  v38 = *(a1 + 16);
  if (v38 == 2 || (v38 & 1) == 0)
  {
    (*(v33 + 56))(v210, 1, 1, v32);
  }

  else
  {
    *v31 = static VerticalAlignment.center.getter();
    *(v31 + 1) = 0;
    v31[16] = 0;
    v39 = sub_10010FC20(&qword_101184D38, &qword_100EC09A0);
    sub_10021B9DC(&v31[*(v39 + 44)]);
    static AccessibilityChildBehavior.combine.getter();
    sub_100020674(&qword_101184D40, &qword_101184CA8, &qword_100EC0838, &protocol conformance descriptor for HStack<A>);
    View.accessibilityElement(children:)();
    (*(v27 + 8))(v29, v26);
    sub_1000095E8(v31, &qword_101184CA8, &qword_100EC0838);
    v40 = static Edge.Set.bottom.getter();
    if (qword_10117F358 != -1)
    {
      swift_once();
    }

    EdgeInsets.init(_all:)();
    v41 = &v35[*(v32 + 36)];
    *v41 = v40;
    *(v41 + 1) = v42;
    *(v41 + 2) = v43;
    *(v41 + 3) = v44;
    *(v41 + 4) = v45;
    v41[40] = 0;
    v46 = v210;
    sub_10003D17C(v35, v210, &qword_101184CB0, &qword_100EC0840);
    (*(v33 + 56))(v46, 0, 1, v32);
  }

  v47 = v198;
  v48 = OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel_releaseDate;
  swift_beginAccess();
  sub_1000089F8(a1 + v48, v22, &qword_101188C20, &qword_100EC2030);
  v49 = v199;
  v50 = v200;
  v51 = (*(v199 + 48))(v22, 1, v200);
  v208 = a1;
  if (v51 == 1)
  {
    sub_1000095E8(v22, &qword_101188C20, &qword_100EC2030);
    v52 = 1;
    v53 = v211;
    v54 = v205;
  }

  else
  {
    (*(v49 + 32))(v47, v22, v50);
    v55 = *NSDateFormatter.releaseDateFormatter.unsafeMutableAddressor();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v57 = [v55 stringFromDate:isa];

    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;

    v217 = v58;
    v218 = v60;
    sub_100009838();
    v61 = Text.init<A>(_:)();
    v63 = v62;
    v217 = v61;
    v218 = v62;
    v65 = v64 & 1;
    LOBYTE(v219) = v64 & 1;
    v220 = v66;
    v67 = AccessibilityIdentifier.trackListReleaseDate.unsafeMutableAddressor();
    v68 = *v67;
    v69 = v67[1];
    v70 = v67[2];
    v71 = v67[3];

    v72 = v204;
    View.accessibilityIdentifier(_:)(v68, v69, v70, v71, &type metadata for Text, &protocol witness table for Text);

    sub_10011895C(v61, v63, v65);

    v73 = static Edge.Set.bottom.getter();
    if (qword_10117F360 != -1)
    {
      swift_once();
    }

    EdgeInsets.init(_all:)();
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v81 = v80;
    (*(v199 + 8))(v198, v200);
    v54 = v205;
    v82 = v72 + *(v205 + 36);
    *v82 = v73;
    *(v82 + 8) = v75;
    *(v82 + 16) = v77;
    *(v82 + 24) = v79;
    *(v82 + 32) = v81;
    *(v82 + 40) = 0;
    v53 = v211;
    sub_10003D17C(v72, v211, &unk_101184C90, &unk_100EC0820);
    v52 = 0;
  }

  (*(v188 + 56))(v53, v52, 1, v54);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v217);

  v83 = v217;
  v84 = v218;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v217);

  v217 = static String.stringForTrackCountAndDuration(trackCount:duration:)(v83, v84, v217, 0);
  v218 = v85;
  v200 = sub_100009838();
  v86 = Text.init<A>(_:)();
  v88 = v87;
  v217 = v86;
  v218 = v87;
  v90 = v89 & 1;
  LOBYTE(v219) = v89 & 1;
  v220 = v91;
  v92 = AccessibilityIdentifier.trackListCountAndDuration.unsafeMutableAddressor();
  v93 = *v92;
  v94 = v92[1];
  v95 = v92[2];
  v96 = v92[3];

  v97 = v212;
  View.accessibilityIdentifier(_:)(v93, v94, v95, v96, &type metadata for Text, &protocol witness table for Text);

  sub_10011895C(v86, v88, v90);

  v98 = static Edge.Set.bottom.getter();
  if (qword_10117F368 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v99 = v97 + *(v205 + 36);
  *v99 = v98;
  *(v99 + 8) = v100;
  *(v99 + 16) = v101;
  *(v99 + 24) = v102;
  *(v99 + 32) = v103;
  *(v99 + 40) = 0;
  v104 = *(v208 + OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel_copyright + 8);
  if (v104)
  {
    v217 = *(v208 + OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel_copyright);
    v218 = v104;

    v105 = Text.init<A>(_:)();
    v107 = v106;
    v217 = v105;
    v218 = v106;
    v109 = v108 & 1;
    LOBYTE(v219) = v108 & 1;
    v220 = v110;
    v111 = AccessibilityIdentifier.trackListCopyright.unsafeMutableAddressor();
    v112 = *v111;
    v113 = v111[1];
    v114 = v111[2];
    v115 = v111[3];

    v116 = v186;
    View.accessibilityIdentifier(_:)(v112, v113, v114, v115, &type metadata for Text, &protocol witness table for Text);

    sub_10011895C(v105, v107, v109);

    v117 = v209;
    sub_10003D17C(v116, v209, &qword_101184C80, &qword_100EC0810);
    v118 = 0;
  }

  else
  {
    v118 = 1;
    v117 = v209;
  }

  v119 = v201;
  (*(v189 + 56))(v117, v118, 1, v190);
  swift_getKeyPath();
  swift_getKeyPath();
  v120 = v191;
  static Published.subscript.getter(v191);

  v121 = v202;
  v122 = v203;
  if ((*(v202 + 48))(v120, 1, v203) == 1)
  {
    sub_1000095E8(v120, &unk_101192700, &qword_100EC06A0);
LABEL_21:
    v123 = v204;
    v124 = v193;
    (*(v195 + 56))(v193, 1, 1, v196);
    goto LABEL_29;
  }

  (*(v121 + 32))(v119, v120, v122);
  sub_100020674(&qword_101184CD0, &qword_101184C70, &qword_100EBD6D0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v217 == v216)
  {
    (*(v121 + 8))(v119, v122);
    goto LABEL_21;
  }

  if (qword_10117F370 != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v208 = v217;
  v205 = v219;
  v200 = v221;
  v199 = v222;
  v215 = 1;
  v214 = v218;
  v213 = v220;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  dispatch thunk of Collection.distance(from:to:)();
  LocalizedStringKey.init(stringLiteral:)();
  v125 = Text.init(_:tableName:bundle:comment:)();
  v127 = v126;
  v129 = v128;
  v131 = v130;
  v132 = v174;
  v133 = &v174[*(v173 + 36)];
  v134 = *(sub_10010FC20(&qword_101184CD8, &qword_100EC0930) + 28);
  v135 = enum case for Text.Case.uppercase(_:);
  v136 = type metadata accessor for Text.Case();
  v137 = *(v136 - 8);
  (*(v137 + 104))(v133 + v134, v135, v136);
  (*(v137 + 56))(v133 + v134, 0, 1, v136);
  *v133 = swift_getKeyPath();
  *v132 = v125;
  *(v132 + 8) = v127;
  *(v132 + 16) = v129 & 1;
  *(v132 + 24) = v131;
  v138 = static Font.caption2.getter();
  KeyPath = swift_getKeyPath();
  v140 = v175;
  sub_10003D17C(v132, v175, &qword_101184C58, &unk_100EDCC30);
  v141 = (v140 + *(v176 + 36));
  *v141 = KeyPath;
  v141[1] = v138;
  static Font.Weight.semibold.getter();
  sub_10021CEE8();
  View.fontWeight(_:)();
  sub_1000095E8(v140, &qword_101184C60, &qword_100EC07F0);
  if (qword_10117F378 != -1)
  {
    swift_once();
  }

  v198 = qword_101218870;
  if (qword_10117F388 != -1)
  {
    swift_once();
  }

  v142 = qword_101218880;
  v143 = static VerticalAlignment.center.getter();
  v144 = v181;
  *v181 = v143;
  *(v144 + 8) = v142;
  *(v144 + 16) = 0;
  sub_10010FC20(&qword_101184D08, &unk_100EC0970);
  (*(v202 + 16))(v177, v201, v203);
  swift_getKeyPath();
  type metadata accessor for TracklistFooter.RecordLabelStack(0);
  sub_100020674(&qword_101184D10, &qword_101184C70, &qword_100EBD6D0, &protocol conformance descriptor for MusicItemCollection<A>);
  sub_10021D078(&qword_101184D18, &type metadata accessor for RecordLabel, &protocol conformance descriptor for RecordLabel);
  sub_10021D078(&qword_101184D20, type metadata accessor for TracklistFooter.RecordLabelStack, &unk_100EC09F8);
  ForEach<>.init(_:id:content:)();
  v145 = AccessibilityIdentifier.trackListRecordLabel.unsafeMutableAddressor();
  v146 = *v145;
  v147 = v145[1];
  v148 = v145[2];
  v149 = v145[3];
  v150 = sub_100020674(&qword_101184D28, &qword_101184C48, &qword_100EC07D8, &protocol conformance descriptor for HStack<A>);

  v151 = v185;
  View.accessibilityIdentifier(_:)(v146, v147, v148, v149, v180, v150);

  sub_1000095E8(v144, &qword_101184C48, &qword_100EC07D8);
  LOBYTE(v147) = v215;
  LOBYTE(v149) = v214;
  v152 = v213;
  v153 = v179;
  v154 = *(v179 + 16);
  v155 = v178;
  v156 = v182;
  v154(v178, v187, v182);
  v157 = v151;
  v158 = v183;
  sub_1000089F8(v157, v183, &qword_101184C50, &unk_100EC07E0);
  v159 = v184;
  *v184 = 0;
  *(v159 + 8) = v147;
  *(v159 + 16) = v208;
  *(v159 + 24) = v149;
  *(v159 + 32) = v205;
  *(v159 + 40) = v152;
  v160 = v199;
  *(v159 + 48) = v200;
  *(v159 + 56) = v160;
  v161 = sub_10010FC20(&qword_101184D30, &qword_100EC0998);
  v154((v159 + v161[12]), v155, v156);
  v162 = v159 + v161[16];
  *v162 = v198;
  *(v162 + 8) = 0;
  sub_1000089F8(v158, v159 + v161[20], &qword_101184C50, &unk_100EC07E0);
  sub_1000095E8(v185, &qword_101184C50, &unk_100EC07E0);
  v163 = *(v153 + 8);
  v163(v187, v156);
  sub_1000095E8(v158, &qword_101184C50, &unk_100EC07E0);
  v163(v155, v156);
  v124 = v193;
  sub_10003D17C(v159, v193, &qword_101184C40, &qword_100EC07D0);
  (*(v195 + 56))(v124, 0, 1, v196);
  (*(v202 + 8))(v201, v203);
  v123 = v204;
  v117 = v209;
LABEL_29:
  v164 = v212;
  v165 = v206;
  sub_1000089F8(v210, v206, &qword_101184CB8, &qword_100EC0848);
  v166 = v207;
  sub_1000089F8(v211, v207, &qword_101184CA0, &qword_100EC0830);
  sub_1000089F8(v164, v123, &unk_101184C90, &unk_100EC0820);
  v167 = v192;
  sub_1000089F8(v117, v192, &qword_101184C88, &qword_100EC0818);
  v168 = v194;
  sub_1000089F8(v124, v194, &qword_101184C78, &qword_100EC0808);
  v169 = v197;
  sub_1000089F8(v165, v197, &qword_101184CB8, &qword_100EC0848);
  v170 = v124;
  v171 = sub_10010FC20(&qword_101184CC8, &qword_100EC0928);
  sub_1000089F8(v166, v169 + v171[12], &qword_101184CA0, &qword_100EC0830);
  sub_1000089F8(v123, v169 + v171[16], &unk_101184C90, &unk_100EC0820);
  sub_1000089F8(v167, v169 + v171[20], &qword_101184C88, &qword_100EC0818);
  sub_1000089F8(v168, v169 + v171[24], &qword_101184C78, &qword_100EC0808);
  sub_1000095E8(v170, &qword_101184C78, &qword_100EC0808);
  sub_1000095E8(v209, &qword_101184C88, &qword_100EC0818);
  sub_1000095E8(v212, &unk_101184C90, &unk_100EC0820);
  sub_1000095E8(v211, &qword_101184CA0, &qword_100EC0830);
  sub_1000095E8(v210, &qword_101184CB8, &qword_100EC0848);
  sub_1000095E8(v168, &qword_101184C78, &qword_100EC0808);
  sub_1000095E8(v167, &qword_101184C88, &qword_100EC0818);
  sub_1000095E8(v123, &unk_101184C90, &unk_100EC0820);
  sub_1000095E8(v207, &qword_101184CA0, &qword_100EC0830);
  return sub_1000095E8(v206, &qword_101184CB8, &qword_100EC0848);
}

uint64_t sub_10021B9DC@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  sub_10010FC20(&qword_101184D48, &qword_100EC09A8);
  __chkstk_darwin();
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v25 - v3;
  if (qword_10117F878 != -1)
  {
    swift_once();
  }

  v5 = qword_101218F90;
  v34 = Image.init(_:bundle:)();
  View.accessibilityHidden(_:)();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v29 = v36;
  v30 = v34;
  v27 = v39;
  v28 = v38;
  v42 = 1;
  v41 = v35;
  v40 = v37;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v32 = String.init(localized:table:bundle:locale:comment:)();
  v33 = v6;
  sub_100009838();
  v7 = Text.init<A>(_:)();
  v9 = v8;
  v26 = v10;
  v12 = v11;
  sub_1000089F8(v4, v2, &qword_101184D48, &qword_100EC09A8);
  v13 = v42;
  v14 = v41;
  v15 = v2;
  v16 = v40;
  v25 = v4;
  v17 = v31;
  sub_1000089F8(v15, v31, &qword_101184D48, &qword_100EC09A8);
  v18 = sub_10010FC20(&unk_101184D50, &unk_100EC09B0);
  v19 = v17 + *(v18 + 48);
  *v19 = 0;
  *(v19 + 8) = v13;
  v20 = v29;
  *(v19 + 16) = v30;
  *(v19 + 24) = v14;
  *(v19 + 32) = v20;
  *(v19 + 40) = v16;
  v21 = v27;
  *(v19 + 48) = v28;
  *(v19 + 56) = v21;
  v22 = v17 + *(v18 + 64);
  *v22 = v7;
  *(v22 + 8) = v9;
  LOBYTE(v21) = v26;
  v23 = v26 & 1;
  *(v22 + 16) = v26 & 1;
  *(v22 + 24) = v12;
  sub_10021D0C0(v7, v9, v21 & 1);

  sub_1000095E8(v25, &qword_101184D48, &qword_100EC09A8);
  sub_10011895C(v7, v9, v23);

  return sub_1000095E8(v15, &qword_101184D48, &qword_100EC09A8);
}

uint64_t sub_10021BD6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RecordLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_10021BDD8@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v40 = type metadata accessor for AccessibilityTraits();
  v38 = *(v40 - 8);
  __chkstk_darwin();
  v37 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for AccessibilityChildBehavior();
  v35 = *(v2 - 8);
  v36 = v2;
  __chkstk_darwin();
  v33 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(type metadata accessor for TracklistFooter.RecordLabelStack(0) - 8);
  v4 = *(v30 + 64);
  __chkstk_darwin();
  v5 = sub_10010FC20(&qword_101184E50, &qword_100EC0A48);
  __chkstk_darwin();
  v7 = &v29 - v6;
  v8 = sub_10010FC20(&qword_101184E58, &qword_100EC0A50);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v29 - v10;
  v12 = sub_10010FC20(&qword_101184E60, &qword_100EC0A58);
  v31 = *(v12 - 8);
  v32 = v12;
  __chkstk_darwin();
  v14 = &v29 - v13;
  if (qword_10117F380 != -1)
  {
    swift_once();
  }

  v15 = qword_101218878;
  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 1) = v15;
  v7[16] = 0;
  v16 = sub_10010FC20(&qword_101184E68, &qword_100EC0A60);
  v17 = v34;
  sub_10021C2F8(&v7[*(v16 + 44)]);
  v18 = static Color.accentColor.getter();
  KeyPath = swift_getKeyPath();
  v20 = &v7[*(v5 + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  sub_10021D4B8(v17, &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v22 = swift_allocObject();
  sub_10021D51C(&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v23 = sub_10021D5E0();
  View.onTapGesture(count:perform:)();

  sub_1000095E8(v7, &qword_101184E50, &qword_100EC0A48);
  v24 = v33;
  static AccessibilityChildBehavior.combine.getter();
  v41 = v5;
  v42 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.accessibilityElement(children:)();
  (*(v35 + 8))(v24, v36);
  (*(v9 + 8))(v11, v8);
  v26 = v37;
  static AccessibilityTraits.isButton.getter();
  v41 = v8;
  v42 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v27 = v32;
  View.accessibilityAddTraits(_:)();
  (*(v38 + 8))(v26, v40);
  return (*(v31 + 8))(v14, v27);
}

double sub_10021C2F8@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_10010FC20(&unk_101184EC0, &qword_100EC0AC8) - 8;
  __chkstk_darwin();
  v4 = &v21[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v21[-v5];
  v23 = RecordLabel.name.getter();
  v24 = v7;
  sub_100009838();
  v8 = Text.init<A>(_:)();
  v10 = v9;
  v22 = v11;
  v13 = v12;
  v14 = Image.init(systemName:)();
  v15 = (v6 + *(v2 + 44));
  v16 = *(sub_10010FC20(&qword_1011A13C0, &qword_100EC0AD0) + 28);
  v17 = enum case for Image.Scale.small(_:);
  v18 = type metadata accessor for Image.Scale();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = swift_getKeyPath();
  *v6 = v14;
  sub_1000089F8(v6, v4, &unk_101184EC0, &qword_100EC0AC8);
  *a1 = v8;
  *(a1 + 8) = v10;
  LOBYTE(v14) = v22 & 1;
  *(a1 + 16) = v22 & 1;
  *(a1 + 24) = v13;
  v19 = sub_10010FC20(&qword_101184ED0, &qword_100EC0B08);
  sub_1000089F8(v4, a1 + *(v19 + 48), &unk_101184EC0, &qword_100EC0AC8);
  sub_10021D0C0(v8, v10, v14);

  sub_1000095E8(v6, &unk_101184EC0, &qword_100EC0AC8);
  sub_1000095E8(v4, &unk_101184EC0, &qword_100EC0AC8);
  sub_10011895C(v8, v10, v14);

  return result;
}

void sub_10021C540(uint64_t a1)
{
  v2 = type metadata accessor for RecordLabel();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v7 = v22 - v6;
  v8 = [objc_opt_self() sharedApplication];
  v9 = [v8 connectedScenes];
  sub_100062364();
  sub_10021D078(&qword_101183DE0, sub_100062364, &protocol conformance descriptor for NSObject);
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100061FC4(v10);
  v12 = v11;

  if (v12 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      if ((v12 & 0xC000000000000001) != 0)
      {
        v13 = sub_1007E90D4(0, v12);
      }

      else
      {
        if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v13 = *(v12 + 32);
      }

      v14 = v13;

      v15 = [v14 delegate];

      if (v15 && (v22[1] = v15, sub_10010FC20(&unk_101184050, &unk_100EBFA30), sub_10010FC20(&unk_101184EB0, &qword_100ED56D0), (swift_dynamicCast() & 1) != 0))
      {
        if (*(&v24 + 1))
        {
          v16 = *(*sub_10000954C(&v23, *(&v24 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

          sub_10000959C(&v23);
          if (v16)
          {
            v17 = type metadata accessor for TaskPriority();
            (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
            (*(v3 + 16))(v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
            type metadata accessor for MainActor();

            v18 = static MainActor.shared.getter();
            v19 = (*(v3 + 80) + 32) & ~*(v3 + 80);
            v20 = (v4 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
            v21 = swift_allocObject();
            *(v21 + 16) = v18;
            *(v21 + 24) = &protocol witness table for MainActor;
            (*(v3 + 32))(v21 + v19, v5, v2);
            *(v21 + v20) = v16;
            sub_1001F4CB8(0, 0, v7, &unk_100EC0AB8, v21);
          }

          return;
        }
      }

      else
      {
        v25 = 0;
        v23 = 0u;
        v24 = 0u;
      }

      sub_1000095E8(&v23, &unk_101184EA0, &unk_100EBFA20);
      return;
    }
  }

  else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }
}

uint64_t sub_10021C974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_10010FC20(&unk_10119DA70, &qword_100EC0AC0);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();

  return _swift_task_switch(sub_10021CA58, 0, 0);
}

uint64_t sub_10021CA58()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for RecordLabel();
  (*(*(v5 - 8) + 16))(v1, v4, v5);
  (*(v2 + 104))(v1, enum case for MusicPageProvider.Destination.recordLabelDetail<A, B>(_:), v3);
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_10021CB68;
  v7 = v0[3];

  return sub_100704654(v7, 0);
}

uint64_t sub_10021CB68()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);

  (*(v2 + 8))(v1, v3);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10021CD08, v5, v4);
}

uint64_t sub_10021CD08()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_10021CEE8()
{
  result = qword_101184CE0;
  if (!qword_101184CE0)
  {
    sub_1001109D0(&qword_101184C60, &qword_100EC07F0);
    sub_10021CFA0();
    sub_100020674(&unk_1011914B0, &qword_101184D00, &qword_100EC11B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101184CE0);
  }

  return result;
}

unint64_t sub_10021CFA0()
{
  result = qword_101184CE8;
  if (!qword_101184CE8)
  {
    sub_1001109D0(&qword_101184C58, &unk_100EDCC30);
    sub_100020674(&unk_101184CF0, &qword_101184CD8, &qword_100EC0930, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101184CE8);
  }

  return result;
}

uint64_t sub_10021D078(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10021D0C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10021D0F8(uint64_t a1)
{
  result = type metadata accessor for RecordLabel();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10021D164()
{
  result = qword_101184E00;
  if (!qword_101184E00)
  {
    sub_1001109D0(&qword_101184C38, &qword_100EC07C8);
    sub_10021D24C(&qword_101184E08, &qword_101184C08, &qword_100EC0768, sub_10021D21C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101184E00);
  }

  return result;
}

uint64_t sub_10021D24C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10021D300()
{
  result = qword_101184E20;
  if (!qword_101184E20)
  {
    sub_1001109D0(&qword_101184C20, &qword_100EC07B0);
    sub_10021D3B8();
    sub_100020674(&unk_101184E40, &qword_10119A240, &qword_100EC09F0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101184E20);
  }

  return result;
}

unint64_t sub_10021D3B8()
{
  result = qword_101184E28;
  if (!qword_101184E28)
  {
    sub_1001109D0(&qword_101184C18, &qword_100EC07A8);
    sub_100020674(&qword_101184E30, &qword_101184E38, &qword_100EC09E8, &protocol conformance descriptor for VStack<A>);
    sub_100020674(&unk_1011914B0, &qword_101184D00, &qword_100EC11B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101184E28);
  }

  return result;
}

uint64_t sub_10021D4B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TracklistFooter.RecordLabelStack(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10021D51C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TracklistFooter.RecordLabelStack(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10021D5E0()
{
  result = qword_101184E70;
  if (!qword_101184E70)
  {
    sub_1001109D0(&qword_101184E50, &qword_100EC0A48);
    sub_100020674(&qword_101184E78, &unk_101184E80, &qword_100EC0A98, &protocol conformance descriptor for HStack<A>);
    sub_100020674(&unk_1011914C0, &unk_101184E90, &unk_100EC0AA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101184E70);
  }

  return result;
}

uint64_t sub_10021D6C4(uint64_t a1)
{
  v4 = *(type metadata accessor for RecordLabel() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_10021C974(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_10021D7E4()
{
  result = qword_101184ED8;
  if (!qword_101184ED8)
  {
    sub_1001109D0(&qword_101184EE0, &unk_100EC0B10);
    sub_1001109D0(&qword_101184E58, &qword_100EC0A50);
    sub_1001109D0(&qword_101184E50, &qword_100EC0A48);
    sub_10021D5E0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10021D078(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101184ED8);
  }

  return result;
}

unint64_t sub_10021D920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  v4 = static MusicLibrary.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    return 0xD00000000000001DLL;
  }

  if (Song.supportsContainerNavigation(itemState:)(a3))
  {
    return 0;
  }

  return 0xD000000000000010;
}

uint64_t sub_10021D9D0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 104) = a2;
  *(v4 + 16) = a1;
  v5 = type metadata accessor for Track();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  sub_10010FC20(&qword_1011819F8, &qword_100EBD3E8);
  *(v4 + 64) = swift_task_alloc();
  v6 = type metadata accessor for MusicPropertySource();
  *(v4 + 72) = v6;
  *(v4 + 80) = *(v6 - 8);
  *(v4 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_10021DB2C, 0, 0);
}

uint64_t sub_10021DB2C(uint64_t a1)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v1 + 64);
  MusicLibrary.ItemState.containerLoadingSource.getter(v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_1000095E8(*(v1 + 64), &qword_1011819F8, &qword_100EBD3E8);

    v5 = *(v1 + 8);

    return v5();
  }

  else
  {
    v8 = *(v1 + 48);
    v7 = *(v1 + 56);
    v9 = *(v1 + 40);
    v10 = *(v1 + 24);
    v11 = *(v1 + 104);
    (*(*(v1 + 80) + 32))(*(v1 + 88), *(v1 + 64), *(v1 + 72));
    v12 = type metadata accessor for Song();
    (*(*(v12 - 8) + 16))(v7, v10, v12);
    (*(v8 + 104))(v7, enum case for Track.song(_:), v9);
    v13 = swift_task_alloc();
    *(v1 + 96) = v13;
    *v13 = v1;
    v13[1] = sub_10021DD28;
    v14 = *(v1 + 88);
    v15 = *(v1 + 56);
    v16 = *(v1 + 32);

    return sub_100138C84(v16, v15, v14, v11 < 2);
  }
}

uint64_t sub_10021DD28()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10021DE80, 0, 0);
}

uint64_t sub_10021DE80()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10021DF10@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SuggestedSongsModule(0);
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  __chkstk_darwin();
  v29 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&qword_101185400, &qword_100EC0D80);
  __chkstk_darwin();
  v7 = &v25 - v6;
  v8 = sub_10010FC20(&qword_101185408, &qword_100EC0D88);
  v30 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v25 - v9;
  v11 = *(dispatch thunk of MusicSuggestedSongsViewModel.suggestedSongs.getter() + 16);

  if (v11)
  {
    *v7 = static HorizontalAlignment.leading.getter();
    *(v7 + 1) = 0;
    v7[16] = 0;
    v12 = sub_10010FC20(&qword_101185410, &qword_100EC0D90);
    sub_10021E2F0(v1, &v7[*(v12 + 44)]);
    v26 = a1;
    v27 = v8;
    v13 = *(v1 + 24);
    v14 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_placement;
    swift_beginAccess();
    v15 = &v7[*(v5 + 36)];
    sub_1002372D4(v13 + v14, v15, type metadata accessor for SuggestedSongsDataSource.Placement);
    v16 = *(v3 + 24);
    v17 = type metadata accessor for SuggestedSongsModule.Background(0);
    sub_1002372D4(v1 + v16, v15 + *(v17 + 24), type metadata accessor for SuggestedSongsModule.Specs);
    *(v15 + *(v17 + 20)) = 0;
    v31 = dispatch thunk of MusicSuggestedSongsViewModel.isPerformingUserInitiatedRefresh.getter() & 1;
    v18 = v29;
    sub_1002372D4(v1, v29, type metadata accessor for SuggestedSongsModule);
    v19 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v20 = swift_allocObject();
    sub_10023733C(v18, v20 + v19, type metadata accessor for SuggestedSongsModule);
    sub_100237424();
    View.onChange<A>(of:initial:_:)();

    sub_1000095E8(v7, &qword_101185400, &qword_100EC0D80);
    v22 = v26;
    v21 = v27;
    (*(v30 + 32))(v26, v10, v27);
    return (*(v30 + 56))(v22, 0, 1, v21);
  }

  else
  {
    v24 = *(v30 + 56);

    return v24(a1, 1, 1, v8);
  }
}

uint64_t sub_10021E2F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v48 = sub_10010FC20(&qword_101185438, &qword_100EC0DA8) - 8;
  __chkstk_darwin();
  v49 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = v39 - v4;
  v6 = type metadata accessor for SuggestedSongsModule.HeaderView(0) - 8;
  __chkstk_darwin();
  v47 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = (v39 - v8);
  v10 = *(a1 + 8);
  v11 = *(a1 + 24);
  v12 = type metadata accessor for SuggestedSongsModule(0);
  v13 = *(v6 + 32);
  v45 = *(v12 + 24);
  v46 = type metadata accessor for SuggestedSongsModule.Specs;
  sub_1002372D4(a1 + v45, v9 + v13, type metadata accessor for SuggestedSongsModule.Specs);
  v43 = type metadata accessor for MusicSuggestedSongsViewModel();
  v42 = sub_100236DF0(&qword_1011852A0, &type metadata accessor for MusicSuggestedSongsViewModel, &protocol conformance descriptor for MusicSuggestedSongsViewModel);
  v44 = v10;
  swift_retain_n();
  v39[0] = v11;
  swift_retain_n();
  *v9 = ObservedObject.init(wrappedValue:)();
  v9[1] = v14;
  v39[1] = type metadata accessor for SuggestedSongsDataSource(0);
  sub_100236DF0(&qword_1011A4A60, type metadata accessor for SuggestedSongsDataSource, &unk_100EC0BF4);
  v9[2] = ObservedObject.init(wrappedValue:)();
  v9[3] = v15;
  v16 = *(v6 + 36);
  *(v9 + v16) = swift_getKeyPath();
  v41 = sub_10010FC20(&unk_101184840, &qword_100EC0DE0);
  swift_storeEnumTagMultiPayload();
  v17 = *(v12 + 28);
  v40 = a1;
  v18 = (a1 + v17);
  v19 = *v18;
  v20 = *(v18 + 1);
  v54 = v19;
  v55 = v20;
  sub_10010FC20(&unk_101197960, &qword_100EC0DA0);
  State.projectedValue.getter();
  v21 = v51;
  v22 = v52;
  LOBYTE(v11) = v53;
  v23 = type metadata accessor for SuggestedSongsModule.ContentView(0);
  v25 = v45;
  v24 = v46;
  sub_1002372D4(a1 + v45, &v5[v23[7]], v46);
  *v5 = ObservedObject.init(wrappedValue:)();
  *(v5 + 1) = v26;
  v27 = v39[0];
  *(v5 + 2) = ObservedObject.init(wrappedValue:)();
  *(v5 + 3) = v28;
  *(v5 + 4) = v21;
  *(v5 + 5) = v22;
  v5[48] = v11;
  v29 = v23[8];
  *&v5[v29] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  v30 = v23[9];
  *&v5[v30] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v31 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_placement;
  swift_beginAccess();
  v32 = &v5[*(v48 + 44)];
  sub_1002372D4(v27 + v31, v32, type metadata accessor for SuggestedSongsDataSource.Placement);
  v33 = type metadata accessor for SuggestedSongsModule.Background(0);
  sub_1002372D4(v40 + v25, v32 + *(v33 + 24), v24);
  *(v32 + *(v33 + 20)) = 1;
  v34 = v47;
  sub_1002372D4(v9, v47, type metadata accessor for SuggestedSongsModule.HeaderView);
  v35 = v49;
  sub_1000089F8(v5, v49, &qword_101185438, &qword_100EC0DA8);
  v36 = v50;
  sub_1002372D4(v34, v50, type metadata accessor for SuggestedSongsModule.HeaderView);
  v37 = sub_10010FC20(&qword_101185440, &qword_100EC0E20);
  sub_1000089F8(v35, v36 + *(v37 + 48), &qword_101185438, &qword_100EC0DA8);
  sub_1000095E8(v5, &qword_101185438, &qword_100EC0DA8);
  sub_10023754C(v9, type metadata accessor for SuggestedSongsModule.HeaderView);
  sub_1000095E8(v35, &qword_101185438, &qword_100EC0DA8);
  return sub_10023754C(v34, type metadata accessor for SuggestedSongsModule.HeaderView);
}

uint64_t sub_10021E7BC(uint64_t a1, char *a2, uint64_t a3)
{
  type metadata accessor for SuggestedSongsModule(0);
  sub_10010FC20(&unk_101197960, &qword_100EC0DA0);
  return State.wrappedValue.setter();
}

uint64_t sub_10021E830@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v76 = a1;
  sub_10010FC20(&unk_101184290, &qword_100EC0E60);
  __chkstk_darwin();
  v75 = (&v69 - v3);
  type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin();
  v74 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v69 - v5;
  __chkstk_darwin();
  v8 = &v69 - v7;
  sub_10010FC20(&qword_101185780, &qword_100EC10D0);
  __chkstk_darwin();
  v10 = &v69 - v9;
  v11 = sub_10010FC20(&qword_101185788, &qword_100EC10D8);
  __chkstk_darwin();
  v13 = &v69 - v12;
  v69 = sub_10010FC20(&qword_101185790, &qword_100EC10E0);
  __chkstk_darwin();
  v72 = &v69 - v14;
  v71 = sub_10010FC20(&qword_101185798, &qword_100EC10E8);
  __chkstk_darwin();
  v73 = &v69 - v15;
  *v10 = static VerticalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v16 = sub_10010FC20(&qword_1011857A0, &qword_100EC10F0);
  sub_10021EE94(v1, &v10[*(v16 + 44)]);
  v17 = static Edge.Set.top.getter();
  v70 = type metadata accessor for SuggestedSongsModule.HeaderView(0);
  v18 = *(v70 + 24);
  v19 = v2;
  sub_1002372D4(v2 + v18, v8, type metadata accessor for SuggestedSongsDataSource.Placement);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10023754C(v8, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (EnumCaseMultiPayload == 1 && qword_10117F390 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_10003D17C(v10, v13, &qword_101185780, &qword_100EC10D0);
  v29 = &v13[*(v11 + 36)];
  *v29 = v17;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  v30 = static Edge.Set.bottom.getter();
  sub_1002372D4(v2 + v18, v6, type metadata accessor for SuggestedSongsDataSource.Placement);
  v31 = swift_getEnumCaseMultiPayload();
  sub_10023754C(v6, type metadata accessor for SuggestedSongsDataSource.Placement);
  v32 = v31 == 1;
  v33 = v72;
  if (v32 && qword_10117F390 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_10003D17C(v13, v33, &qword_101185788, &qword_100EC10D8);
  v42 = v33 + *(v69 + 36);
  *v42 = v30;
  *(v42 + 8) = v35;
  *(v42 + 16) = v37;
  *(v42 + 24) = v39;
  *(v42 + 32) = v41;
  *(v42 + 40) = 0;
  v43 = static Edge.Set.leading.getter();
  v44 = v74;
  sub_1002372D4(v19 + v18, v74, type metadata accessor for SuggestedSongsDataSource.Placement);
  v45 = swift_getEnumCaseMultiPayload();
  sub_10023754C(v44, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (v45 == 1 && qword_10117F390 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v54 = v73;
  sub_10003D17C(v33, v73, &qword_101185790, &qword_100EC10E0);
  v55 = v54 + *(v71 + 36);
  *v55 = v43;
  *(v55 + 8) = v47;
  *(v55 + 16) = v49;
  *(v55 + 24) = v51;
  *(v55 + 32) = v53;
  *(v55 + 40) = 0;
  v56 = static Edge.Set.trailing.getter();
  v57 = v75;
  sub_10056CAE4(v75);
  sub_10022205C(v57);
  sub_1000095E8(v57, &unk_101184290, &qword_100EC0E60);
  EdgeInsets.init(_all:)();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v66 = v76;
  sub_10003D17C(v54, v76, &qword_101185798, &qword_100EC10E8);
  result = sub_10010FC20(&qword_1011857A8, &qword_100EC10F8);
  v68 = v66 + *(result + 36);
  *v68 = v56;
  *(v68 + 8) = v59;
  *(v68 + 16) = v61;
  *(v68 + 24) = v63;
  *(v68 + 32) = v65;
  *(v68 + 40) = 0;
  return result;
}

uint64_t sub_10021EE94@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v83 = a2;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v74 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v73 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin();
  v65 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v63 = &v62 - v6;
  sub_10010FC20(&qword_1011857B0, &qword_100EC1100);
  __chkstk_darwin();
  v75 = &v62 - v7;
  v66 = sub_10010FC20(&qword_1011857B8, &qword_100EC1108);
  __chkstk_darwin();
  v67 = &v62 - v8;
  v68 = sub_10010FC20(&qword_1011857C0, &qword_100EC1110);
  __chkstk_darwin();
  v69 = &v62 - v9;
  v71 = sub_10010FC20(&qword_1011857C8, &qword_100EC1118);
  __chkstk_darwin();
  v72 = &v62 - v10;
  v11 = sub_10010FC20(&qword_1011857D0, &qword_100EC1120);
  v80 = *(v11 - 8);
  v81 = v11;
  __chkstk_darwin();
  v70 = &v62 - v12;
  sub_10010FC20(&qword_1011857D8, &qword_100EC1128);
  __chkstk_darwin();
  v82 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v84 = &v62 - v14;
  v15 = type metadata accessor for AccessibilityChildBehavior();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10010FC20(&qword_1011857E0, &qword_100EC1130);
  v78 = *(v19 - 8);
  v79 = v19;
  __chkstk_darwin();
  v77 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v62 - v21;
  v23 = static HorizontalAlignment.leading.getter();
  LOBYTE(v85) = 0;
  sub_10021FAEC(a1, v91);
  memcpy(v89, v91, sizeof(v89));
  memcpy(v90, v91, sizeof(v90));
  sub_1000089F8(v89, v87, &qword_1011857E8, &qword_100EC1138);
  sub_1000095E8(v90, &qword_1011857E8, &qword_100EC1138);
  memcpy(&v88[7], v89, 0x150uLL);
  *v87 = v23;
  *&v87[8] = 0;
  v87[16] = v85;
  memcpy(&v87[17], v88, 0x157uLL);
  static AccessibilityChildBehavior.combine.getter();
  sub_10010FC20(&qword_1011857F0, &qword_100EC1140);
  sub_100020674(&qword_1011857F8, &qword_1011857F0, &qword_100EC1140, &protocol conformance descriptor for VStack<A>);
  v76 = v22;
  v24 = a1;
  View.accessibilityElement(children:)();
  (*(v16 + 8))(v18, v15);
  memcpy(v91, v87, 0x168uLL);
  sub_1000095E8(v91, &qword_1011857F0, &qword_100EC1140);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v87);

  v25 = 1;
  if (v87[0] == 1)
  {
    sub_1002206D4(a1, v75);
    v26 = *(type metadata accessor for SuggestedSongsModule.HeaderView(0) + 24);
    v27 = a1 + v26;
    v28 = v63;
    sub_1002372D4(v27, v63, type metadata accessor for SuggestedSongsDataSource.Placement);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_10023754C(v28, type metadata accessor for SuggestedSongsDataSource.Placement);
    if (EnumCaseMultiPayload == 1)
    {
      if (qword_10117F390 != -1)
      {
        swift_once();
      }
    }

    else
    {
      v30 = [objc_opt_self() defaultMetrics];
      [v30 scaledValueForValue:24.0];
    }

    v31 = v65;
    sub_1002372D4(v24 + v26, v65, type metadata accessor for SuggestedSongsDataSource.Placement);
    v32 = swift_getEnumCaseMultiPayload();
    sub_10023754C(v31, type metadata accessor for SuggestedSongsDataSource.Placement);
    if (v32 == 1)
    {
      if (qword_10117F390 != -1)
      {
        swift_once();
      }
    }

    else
    {
      v33 = [objc_opt_self() defaultMetrics];
      [v33 scaledValueForValue:24.0];
    }

    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v34 = v67;
    sub_10003D17C(v75, v67, &qword_1011857B0, &qword_100EC1100);
    v35 = (v34 + *(v66 + 36));
    v36 = *&v87[80];
    v35[4] = *&v87[64];
    v35[5] = v36;
    v35[6] = *&v87[96];
    v37 = *&v87[16];
    *v35 = *v87;
    v35[1] = v37;
    v38 = *&v87[48];
    v35[2] = *&v87[32];
    v35[3] = v38;
    if (qword_10117F3B0 != -1)
    {
      swift_once();
    }

    v39 = qword_101184F18;
    v40 = v69;
    sub_10003D17C(v34, v69, &qword_1011857B8, &qword_100EC1108);
    *(v40 + *(v68 + 36)) = v39;

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v85 = String.init(localized:table:bundle:locale:comment:)();
    v86 = v41;
    sub_100238124();
    sub_100009838();
    v42 = v72;
    View.accessibilityLabel<A>(_:)();

    sub_1000095E8(v40, &qword_1011857C0, &qword_100EC1110);
    refreshed = AccessibilityIdentifier.playlistSuggestedSongsRefreshButton.unsafeMutableAddressor();
    v44 = *refreshed;
    v45 = refreshed[1];
    v46 = refreshed[2];
    v47 = refreshed[3];
    v48 = sub_100238500(&qword_101185860, &qword_1011857C8, &qword_100EC1118, sub_100238124);

    v49 = v70;
    View.accessibilityIdentifier(_:)(v44, v45, v46, v47, v71, v48);

    sub_1000095E8(v42, &qword_1011857C8, &qword_100EC1118);
    sub_10003D17C(v49, v84, &qword_1011857D0, &qword_100EC1120);
    v25 = 0;
  }

  v50 = v84;
  (*(v80 + 56))(v84, v25, 1, v81);
  v51 = v77;
  v52 = v78;
  v53 = *(v78 + 16);
  v54 = v76;
  v55 = v79;
  v53(v77, v76, v79);
  v56 = v82;
  sub_1000089F8(v50, v82, &qword_1011857D8, &qword_100EC1128);
  v57 = v83;
  v53(v83, v51, v55);
  v58 = sub_10010FC20(&qword_101185800, &qword_100EC1148);
  v59 = &v57[*(v58 + 48)];
  *v59 = 0;
  v59[8] = 1;
  sub_1000089F8(v56, &v57[*(v58 + 64)], &qword_1011857D8, &qword_100EC1128);
  sub_1000095E8(v50, &qword_1011857D8, &qword_100EC1128);
  v60 = *(v52 + 8);
  v60(v54, v55);
  sub_1000095E8(v56, &qword_1011857D8, &qword_100EC1128);
  return (v60)(v51, v55);
}

uint64_t sub_10021FAEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v91 = a2;
  v4 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin();
  v90 = v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v89 = v82 - v6;
  __chkstk_darwin();
  v86 = v82 - v7;
  __chkstk_darwin();
  v93 = v82 - v8;
  __chkstk_darwin();
  v94 = v82 - v9;
  __chkstk_darwin();
  v92 = v82 - v10;
  __chkstk_darwin();
  v12 = v82 - v11;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v14 = v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v16 = v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v84 = v16;
  v85 = v14;
  v137 = String.init(localized:table:bundle:locale:comment:)();
  v138 = v17;
  v83 = sub_100009838();
  v18 = Text.init<A>(_:)();
  v20 = v19;
  v22 = v21;
  v95 = *(type metadata accessor for SuggestedSongsModule.HeaderView(0) + 24);
  v96 = a1;
  sub_1002372D4(a1 + v95, v12, type metadata accessor for SuggestedSongsDataSource.Placement);
  v97 = v4;
  LODWORD(v4) = swift_getEnumCaseMultiPayload();
  sub_10023754C(v12, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (v4 == 1)
  {
    if (qword_10117F390 == -1)
    {
      if (byte_101184EE8)
      {
LABEL_4:
        static Font.title2.getter();
        goto LABEL_8;
      }
    }

    else
    {
      swift_once();
      if (byte_101184EE8)
      {
        goto LABEL_4;
      }
    }

    static Font.body.getter();
  }

  else
  {
    static Font.subheadline.getter();
  }

LABEL_8:
  v23 = Text.font(_:)();
  v25 = v24;
  v27 = v26;

  sub_10011895C(v18, v20, v22 & 1);

  v28 = v92;
  sub_1002372D4(v96 + v95, v92, type metadata accessor for SuggestedSongsDataSource.Placement);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10023754C(v28, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (EnumCaseMultiPayload == 1)
  {
    if (qword_10117F390 == -1)
    {
      if (byte_101184EE8)
      {
LABEL_11:
        static Font.Weight.bold.getter();
        goto LABEL_14;
      }
    }

    else
    {
      swift_once();
      if (byte_101184EE8)
      {
        goto LABEL_11;
      }
    }
  }

  static Font.Weight.semibold.getter();
LABEL_14:
  v30 = Text.fontWeight(_:)();
  v32 = v31;
  v34 = v33;
  sub_10011895C(v23, v25, v27 & 1);

  v35 = v94;
  sub_1002372D4(v96 + v95, v94, type metadata accessor for SuggestedSongsDataSource.Placement);
  v36 = swift_getEnumCaseMultiPayload();
  sub_10023754C(v35, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (v36 == 1)
  {
    v37 = static HierarchicalShapeStyle.primary.getter();
  }

  else
  {
    v37 = static HierarchicalShapeStyle.secondary.getter();
  }

  LODWORD(v137) = v37;
  v38 = Text.foregroundStyle<A>(_:)();
  v87 = v39;
  v88 = v38;
  v41 = v40;
  v94 = v42;
  sub_10011895C(v30, v32, v34 & 1);

  v43 = v93;
  sub_1002372D4(v96 + v95, v93, type metadata accessor for SuggestedSongsDataSource.Placement);
  v44 = swift_getEnumCaseMultiPayload();
  sub_10023754C(v43, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (v44 == 1 && qword_10117F390 != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  LODWORD(v92) = v41 & 1;
  v166 = v41 & 1;
  LODWORD(v93) = static Edge.Set.top.getter();
  if (qword_10117F390 != -1)
  {
    swift_once();
  }

  v45 = byte_101184EE8;
  EdgeInsets.init(_all:)();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v167 = 0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v137 = String.init(localized:table:bundle:locale:comment:)();
  v138 = v54;
  v55 = Text.init<A>(_:)();
  v57 = v56;
  v59 = v58;
  v60 = v86;
  sub_1002372D4(v96 + v95, v86, type metadata accessor for SuggestedSongsDataSource.Placement);
  v61 = swift_getEnumCaseMultiPayload();
  sub_10023754C(v60, type metadata accessor for SuggestedSongsDataSource.Placement);
  v82[1] = v45;
  if (v61 == 1 && (v45 & 1) != 0)
  {
    static Font.body.getter();
  }

  else
  {
    static Font.subheadline.getter();
  }

  v62 = Text.font(_:)();
  v64 = v63;
  v66 = v65;

  sub_10011895C(v55, v57, v59 & 1);

  v67 = v89;
  sub_1002372D4(v96 + v95, v89, type metadata accessor for SuggestedSongsDataSource.Placement);
  v68 = swift_getEnumCaseMultiPayload();
  sub_10023754C(v67, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (v68 == 1)
  {
    v69 = static HierarchicalShapeStyle.secondary.getter();
  }

  else
  {
    v69 = static HierarchicalShapeStyle.tertiary.getter();
  }

  LODWORD(v137) = v69;
  v70 = Text.foregroundStyle<A>(_:)();
  v72 = v71;
  v74 = v73;
  v89 = v75;
  sub_10011895C(v62, v64, v66 & 1);

  v76 = v90;
  sub_1002372D4(v96 + v95, v90, type metadata accessor for SuggestedSongsDataSource.Placement);
  swift_getEnumCaseMultiPayload();
  sub_10023754C(v76, type metadata accessor for SuggestedSongsDataSource.Placement);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v77 = v74 & 1;
  v79 = v87;
  v78 = v88;
  *&v106 = v88;
  *(&v106 + 1) = v87;
  LOBYTE(v107) = v92;
  *(&v107 + 1) = *v165;
  DWORD1(v107) = *&v165[3];
  *(&v107 + 1) = v94;
  v112 = v162;
  v113 = v163;
  v114 = v164;
  v108 = v158;
  v109 = v159;
  v110 = v160;
  v111 = v161;
  LOBYTE(v115) = v93;
  DWORD1(v115) = *(v168 + 3);
  *(&v115 + 1) = v168[0];
  *(&v115 + 1) = v47;
  *&v116[0] = v49;
  *(&v116[0] + 1) = v51;
  *&v116[1] = v53;
  BYTE8(v116[1]) = 0;
  v98[2] = v158;
  v98[3] = v159;
  v98[0] = v106;
  v98[1] = v107;
  v98[6] = v162;
  v98[7] = v163;
  v98[4] = v160;
  v98[5] = v161;
  *&v117 = v70;
  *(&v117 + 1) = v72;
  LOBYTE(v118) = v74 & 1;
  *(&v118 + 1) = *v156;
  DWORD1(v118) = *&v156[3];
  v80 = v89;
  *(&v118 + 1) = v89;
  v98[9] = v115;
  v98[10] = v116[0];
  *(&v98[10] + 9) = *(v116 + 9);
  v98[8] = v164;
  v123 = v103;
  v124 = v104;
  v125 = v105;
  v119 = v99;
  v120 = v100;
  v121 = v101;
  v122 = v102;
  v98[17] = v102;
  v98[18] = v103;
  v98[19] = v104;
  v98[20] = v105;
  v98[13] = v118;
  v98[14] = v99;
  v98[15] = v100;
  v98[16] = v101;
  v157 = v77;
  v98[12] = v117;
  memcpy(v91, v98, 0x150uLL);
  v126[0] = v70;
  v126[1] = v72;
  v127 = v77;
  *v128 = *v156;
  *&v128[3] = *&v156[3];
  v129 = v80;
  v134 = v103;
  v135 = v104;
  v136 = v105;
  v130 = v99;
  v131 = v100;
  v132 = v101;
  v133 = v102;
  sub_1000089F8(&v106, &v137, &qword_101181120, &qword_100EBCC08);
  sub_1000089F8(&v117, &v137, &qword_101181130, &unk_100EBCC10);
  sub_1000095E8(v126, &qword_101181130, &unk_100EBCC10);
  v137 = v78;
  v138 = v79;
  v139 = v92;
  *v140 = *v165;
  *&v140[3] = *&v165[3];
  v141 = v94;
  v146 = v162;
  v147 = v163;
  v148 = v164;
  v142 = v158;
  v143 = v159;
  v145 = v161;
  v144 = v160;
  v149 = v93;
  *&v150[3] = *(v168 + 3);
  *v150 = v168[0];
  v151 = v47;
  v152 = v49;
  v153 = v51;
  v154 = v53;
  v155 = 0;
  return sub_1000095E8(&v137, &qword_101181120, &qword_100EBCC08);
}

uint64_t sub_1002206D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v40 = type metadata accessor for PlainButtonStyle();
  v35 = *(v40 - 8);
  __chkstk_darwin();
  v34 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(type metadata accessor for SuggestedSongsModule.HeaderView(0) - 8);
  v4 = *(v32 + 64);
  __chkstk_darwin();
  v5 = sub_10010FC20(&qword_101185838, &qword_100EC1168);
  __chkstk_darwin();
  v7 = &v32 - v6;
  v41 = sub_10010FC20(&qword_101185830, &qword_100EC1160);
  v33 = *(v41 - 8);
  __chkstk_darwin();
  v9 = &v32 - v8;
  v42 = sub_10010FC20(&qword_101185868, &qword_100EC1188);
  v37 = *(v42 - 8);
  __chkstk_darwin();
  v36 = &v32 - v10;
  v38 = sub_10010FC20(&qword_101185870, &qword_100EC1190);
  __chkstk_darwin();
  v12 = &v32 - v11;
  v39 = sub_10010FC20(&qword_101199ED0, &qword_100ED89A0);
  v13 = *(v39 - 8);
  __chkstk_darwin();
  v15 = &v32 - v14;
  if (dispatch thunk of MusicSuggestedSongsViewModel.isPerformingUserInitiatedRefresh.getter())
  {
    ProgressView<>.init<>()();
    v16 = v39;
    (*(v13 + 16))(v12, v15, v39);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_101180F58, &qword_101199ED0, &qword_100ED89A0, &protocol conformance descriptor for ProgressView<A, B>);
    v17 = sub_10023841C();
    v18 = sub_100236DF0(&qword_10119A260, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    v44 = v5;
    v45 = v40;
    v46 = v17;
    v47 = v18;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v44 = v41;
    v45 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v13 + 8))(v15, v16);
  }

  else
  {
    sub_1002372D4(a1, &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SuggestedSongsModule.HeaderView);
    v21 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v22 = swift_allocObject();
    sub_10023733C(&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for SuggestedSongsModule.HeaderView);
    __chkstk_darwin();
    sub_10010FC20(&qword_101185878, &qword_100EC1198);
    sub_1002385E8();
    Button.init(action:label:)();
    *&v7[*(v5 + 36)] = static HierarchicalShapeStyle.primary.getter();
    v23 = v34;
    PlainButtonStyle.init()();
    v24 = sub_10023841C();
    v25 = sub_100236DF0(&qword_10119A260, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    v26 = v40;
    View.buttonStyle<A>(_:)();
    (*(v35 + 8))(v23, v26);
    sub_1000095E8(v7, &qword_101185838, &qword_100EC1168);
    v44 = v5;
    v45 = v26;
    v46 = v24;
    v47 = v25;
    v27 = swift_getOpaqueTypeConformance2();
    v28 = v36;
    v29 = v41;
    View.hover(corner:outset:isRelative:namespace:isEnabled:)(0, 0, 2, 0, 0, 1, 1, v41, 0.0, v27);
    (*(v33 + 8))(v9, v29);
    v30 = v37;
    v31 = v42;
    (*(v37 + 16))(v12, v28, v42);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_101180F58, &qword_101199ED0, &qword_100ED89A0, &protocol conformance descriptor for ProgressView<A, B>);
    v44 = v29;
    v45 = v27;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v30 + 8))(v28, v31);
  }
}

uint64_t sub_100220E64()
{
  v1 = v0;
  v62 = *(type metadata accessor for SuggestedSongsModule.HeaderView(0) - 8);
  __chkstk_darwin();
  v64 = v2;
  v65 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v63 = &v49 - v3;
  v57 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin();
  v60 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v59 = &v49 - v5;
  __chkstk_darwin();
  v55 = &v49 - v6;
  __chkstk_darwin();
  v8 = &v49 - v7;
  __chkstk_darwin();
  v10 = &v49 - v9;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v58 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v49 - v12;
  type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin();
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10117F1F8 != -1)
  {
    swift_once();
  }

  v61 = v15;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v66);

  if (LOBYTE(v66[0]) == 1)
  {
    sub_10012F360();
  }

  sub_10010FC20(&qword_1011858B0, &unk_100EC1280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBDC20;
  v17 = sub_10010C578(&off_101099A00);
  sub_10010FC20(&qword_101183AA0, &unk_100ECAF50);
  swift_arrayDestroy();
  *(inited + 32) = v17;
  v18 = sub_10010C578(&off_101099A60);
  swift_arrayDestroy();
  *(inited + 40) = v18;
  v19 = type metadata accessor for URL();
  v20 = *(*(v19 - 8) + 56);
  v20(v13, 1, 1, v19);
  v54 = sub_10018DA2C(inited);

  v21 = *(v1 + 24);
  v56 = v1;
  v22 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_placement;
  swift_beginAccess();
  v53 = v13;
  sub_1002372D4(v21 + v22, v10, type metadata accessor for SuggestedSongsDataSource.Placement);
  v52 = sub_100222540();
  v51 = v23;
  sub_10023754C(v10, type metadata accessor for SuggestedSongsDataSource.Placement);
  sub_1002372D4(v21 + v22, v8, type metadata accessor for SuggestedSongsDataSource.Placement);
  v24 = v55;
  sub_1002372D4(v8, v55, type metadata accessor for SuggestedSongsDataSource.Placement);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v26 = EnumCaseMultiPayload == 1;
  if (EnumCaseMultiPayload == 1)
  {
    v27 = v8;
  }

  else
  {
    v27 = v24;
  }

  if (v26)
  {
    v8 = v24;
  }

  v28 = 0x72656B636950;
  if (v26)
  {
    v28 = 0x7473696C79616C50;
  }

  v55 = v28;
  v29 = 0xE600000000000000;
  if (v26)
  {
    v29 = 0xE800000000000000;
  }

  v50 = v29;
  sub_10023754C(v27, type metadata accessor for SuggestedSongsDataSource.Placement);
  sub_10023754C(v8, type metadata accessor for SuggestedSongsDataSource.Placement);
  v30 = v58;
  v20(v58, 1, 1, v19);
  v31 = v59;
  sub_1002372D4(v21 + v22, v59, type metadata accessor for SuggestedSongsDataSource.Placement);
  v32 = v60;
  sub_10023733C(v31, v60, type metadata accessor for SuggestedSongsDataSource.Placement);
  LOBYTE(v31) = swift_getEnumCaseMultiPayload() == 1;
  sub_10023754C(v32, type metadata accessor for SuggestedSongsDataSource.Placement);
  v33 = v61;
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)(0xD000000000000014, 0x8000000100E3BEF0, 5, 63, v53, v54, 0, 12, v61, 0, 0, 65280, v52, v51, v55, v50, v30, 0, v31, 2, 0, 0, 0);
  v34 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v35 = sub_10053771C();
  v37 = v36;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v38 = qword_101218AD0;
  v39 = GroupActivitiesManager.hasJoined.getter();
  v40 = GroupActivitiesManager.participantsCount.getter();
  v41 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v34) + 0xB8))(v33, v35, v37, v39 & 1, v40, *(v38 + v41));

  v42 = type metadata accessor for TaskPriority();
  v43 = v63;
  (*(*(v42 - 8) + 56))(v63, 1, 1, v42);
  v44 = v65;
  sub_1002372D4(v56, v65, type metadata accessor for SuggestedSongsModule.HeaderView);
  type metadata accessor for MainActor();
  v45 = static MainActor.shared.getter();
  v46 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = v45;
  *(v47 + 24) = &protocol witness table for MainActor;
  sub_10023733C(v44, v47 + v46, type metadata accessor for SuggestedSongsModule.HeaderView);
  sub_1001F4CB8(0, 0, v43, &unk_100EC1298, v47);

  return sub_10023754C(v33, type metadata accessor for MetricsEvent.Click);
}

uint64_t sub_1002216C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin();
  v41 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v41 - v5;
  __chkstk_darwin();
  v8 = &v41 - v7;
  __chkstk_darwin();
  v10 = &v41 - v9;
  v11 = sub_10010FC20(&qword_10119A280, &qword_100EC11C0);
  v43 = *(v11 - 8);
  v44 = v11;
  __chkstk_darwin();
  v47 = &v41 - v12;
  v42 = sub_10010FC20(&qword_101185890, &unk_100EC11A0);
  __chkstk_darwin();
  v45 = &v41 - v13;
  v14 = Image.init(systemName:)();
  v15 = *(type metadata accessor for SuggestedSongsModule.HeaderView(0) + 24);
  sub_1002372D4(a1 + v15, v10, type metadata accessor for SuggestedSongsDataSource.Placement);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10023754C(v10, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (EnumCaseMultiPayload == 1)
  {
    if (qword_10117F390 != -1)
    {
      swift_once();
    }

    if (byte_101184EE8)
    {
      v17 = static Font.title3.getter();
    }

    else
    {
      v17 = static Font.body.getter();
    }
  }

  else
  {
    v17 = static Font.caption.getter();
  }

  v18 = v17;
  KeyPath = swift_getKeyPath();
  *&v48 = v14;
  *(&v48 + 1) = KeyPath;
  *&v49 = v18;
  v20 = a1;
  sub_1002372D4(a1 + v15, v8, type metadata accessor for SuggestedSongsDataSource.Placement);
  v21 = swift_getEnumCaseMultiPayload();
  sub_10023754C(v8, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (v21 == 1)
  {
    if (qword_10117F390 != -1)
    {
      swift_once();
    }

    if (byte_101184EE8)
    {
      static Font.Weight.medium.getter();
    }

    else
    {
      static Font.Weight.semibold.getter();
    }
  }

  else
  {
    static Font.Weight.heavy.getter();
  }

  sub_10010FC20(&unk_1011A1100, &unk_100ED3F40);
  sub_100238768();
  View.fontWeight(_:)();

  sub_1002372D4(a1 + v15, v6, type metadata accessor for SuggestedSongsDataSource.Placement);
  v22 = swift_getEnumCaseMultiPayload();
  sub_10023754C(v6, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (v22 == 1)
  {
    if (qword_10117F390 != -1)
    {
      swift_once();
    }
  }

  else
  {
    v23 = [objc_opt_self() defaultMetrics];
    [v23 scaledValueForValue:24.0];
  }

  v24 = a1 + v15;
  v25 = v41;
  sub_1002372D4(v24, v41, type metadata accessor for SuggestedSongsDataSource.Placement);
  v26 = swift_getEnumCaseMultiPayload();
  sub_10023754C(v25, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (v26 == 1)
  {
    if (qword_10117F390 != -1)
    {
      swift_once();
    }
  }

  else
  {
    v27 = [objc_opt_self() defaultMetrics];
    [v27 scaledValueForValue:24.0];
  }

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v28 = v45;
  (*(v43 + 32))(v45, v47, v44);
  v29 = (v28 + *(v42 + 36));
  v30 = v53;
  v29[4] = v52;
  v29[5] = v30;
  v29[6] = v54;
  v31 = v49;
  *v29 = v48;
  v29[1] = v31;
  v32 = v51;
  v29[2] = v50;
  v29[3] = v32;
  v33 = static Alignment.center.getter();
  v35 = v34;
  v36 = sub_10010FC20(&qword_101185878, &qword_100EC1198);
  v37 = v46;
  v38 = v46 + *(v36 + 36);
  sub_100221DCC(v20, v38);
  v39 = (v38 + *(sub_10010FC20(&qword_1011858A0, &qword_100EC11B8) + 36));
  *v39 = v33;
  v39[1] = v35;
  return sub_10003D17C(v28, v37, &qword_101185890, &unk_100EC11A0);
}

uint64_t sub_100221DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10010FC20(&qword_1011858A8, &qword_100EC11F8);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (&v21 - v6);
  type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin();
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v21 - v10;
  v12 = *(a1 + 24);
  v13 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_placement;
  swift_beginAccess();
  sub_1002372D4(v12 + v13, v11, type metadata accessor for SuggestedSongsDataSource.Placement);
  sub_10023733C(v11, v9, type metadata accessor for SuggestedSongsDataSource.Placement);
  LODWORD(v12) = swift_getEnumCaseMultiPayload();
  sub_10023754C(v9, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (v12 == 1)
  {
    v14 = 1;
  }

  else
  {
    static Color.white.getter();
    v15 = Color.opacity(_:)();

    KeyPath = swift_getKeyPath();
    v17 = *(v4 + 36);
    v18 = enum case for BlendMode.plusLighter(_:);
    v19 = type metadata accessor for BlendMode();
    (*(*(v19 - 8) + 104))(v7 + v17, v18, v19);
    *v7 = KeyPath;
    v7[1] = v15;
    sub_10003D17C(v7, a2, &qword_1011858A8, &qword_100EC11F8);
    v14 = 0;
  }

  return (*(v5 + 56))(a2, v14, 1, v4);
}

double sub_10022205C(uint64_t a1)
{
  v2 = v1;
  v25 = a1;
  v3 = type metadata accessor for UserInterfaceSizeClass();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_101185768, &qword_100EDBB70);
  __chkstk_darwin();
  v9 = &v24 - v8;
  sub_10010FC20(&unk_101184290, &qword_100EC0E60);
  __chkstk_darwin();
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v24 - v12;
  sub_10010FC20(&qword_101185770, &unk_100EC10C0);
  __chkstk_darwin();
  v15 = &v24 - v14;
  if (qword_10117F390 != -1)
  {
    swift_once();
  }

  v16 = byte_101184EE8;
  sub_1002372D4(v2, v15, type metadata accessor for SuggestedSongsDataSource.Placement);
  type metadata accessor for SuggestedSongsDataSource.Placement(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v18 = 22.0;
  }

  else
  {
    v18 = 16.0;
  }

  if (EnumCaseMultiPayload == 1 && (v16 & 1) == 0)
  {
    (*(v4 + 104))(v13, enum case for UserInterfaceSizeClass.compact(_:), v3);
    (*(v4 + 56))(v13, 0, 1, v3);
    v19 = *(v7 + 48);
    sub_1000089F8(v25, v9, &unk_101184290, &qword_100EC0E60);
    sub_1000089F8(v13, &v9[v19], &unk_101184290, &qword_100EC0E60);
    v20 = *(v4 + 48);
    if (v20(v9, 1, v3) == 1)
    {
      sub_1000095E8(v13, &unk_101184290, &qword_100EC0E60);
      if (v20(&v9[v19], 1, v3) == 1)
      {
        sub_1000095E8(v9, &unk_101184290, &qword_100EC0E60);
        v18 = 16.0;
        goto LABEL_15;
      }
    }

    else
    {
      sub_1000089F8(v9, v11, &unk_101184290, &qword_100EC0E60);
      if (v20(&v9[v19], 1, v3) != 1)
      {
        (*(v4 + 32))(v6, &v9[v19], v3);
        sub_100236DF0(&qword_101185778, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
        v22 = dispatch thunk of static Equatable.== infix(_:_:)();
        v23 = *(v4 + 8);
        v23(v6, v3);
        sub_1000095E8(v13, &unk_101184290, &qword_100EC0E60);
        v23(v11, v3);
        sub_1000095E8(v9, &unk_101184290, &qword_100EC0E60);
        v18 = 16.0;
        if (v22)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      sub_1000095E8(v13, &unk_101184290, &qword_100EC0E60);
      (*(v4 + 8))(v11, v3);
    }

    sub_1000095E8(v9, &qword_101185768, &qword_100EDBB70);
LABEL_14:
    v18 = 20.0;
  }

LABEL_15:
  sub_10023754C(v15, type metadata accessor for SuggestedSongsDataSource.Placement);
  return v18;
}

uint64_t sub_100222540()
{
  v1 = v0;
  v2 = type metadata accessor for Playlist();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v7 = &v12 - v6;
  type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin();
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002372D4(v1, v9, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v9, v2);
    v10 = Playlist.id.getter();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    dispatch thunk of MusicLibraryPlaylistViewModel.playlist.getter();
    if ((*(v3 + 48))(v7, 1, v2) == 1)
    {
      sub_1000095E8(v7, &unk_1011814D0, &qword_100EC12A0);

      return 0x6C79616C5077654ELL;
    }

    else
    {
      v10 = Playlist.id.getter();
      (*(v3 + 8))(v7, v2);
    }
  }

  return v10;
}