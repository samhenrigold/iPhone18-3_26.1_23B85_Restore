uint64_t sub_1003D18A8()
{
  v26.receiver = v0;
  v26.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v26, "viewDidLoad");
  v1 = sub_1003D1BE4();
  v2 = *&v0[OBJC_IVAR____TtC5Music27LibraryGenresViewController____lazy_storage___collectionView];
  v3 = objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration);
  v4 = v2;
  v5 = [v3 init];
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 72) = static MPCPlayerCommandRequest.isAvailable(in:);
  *(v8 + 80) = 0;
  *(v8 + 88) = v6;
  v9 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  aBlock[4] = sub_1002193FC;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005A63A8;
  aBlock[3] = &unk_1010AA640;
  v10 = _Block_copy(aBlock);

  v11 = [v9 initWithSectionProvider:v10 configuration:v5];

  _Block_release(v10);

  [v1 setCollectionViewLayout:v11];

  v12 = *&v0[OBJC_IVAR____TtC5Music27LibraryGenresViewController_responseController];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = *(v12 + 32);
  v15 = *(v12 + 40);
  *(v12 + 32) = sub_1003D57A8;
  *(v12 + 40) = v13;

  sub_100020438(v14, v15);

  v16 = sub_1003D2424();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = *(v16 + 88);
  v19 = *(v16 + 96);
  *(v16 + 88) = sub_1003D57B0;
  *(v16 + 96) = v17;

  sub_100020438(v18, v19);

  v23[3] = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v20 = sub_10001C8B8(v23);
  sub_1003D25FC(v20);
  v24[3] = sub_10010FC20(&qword_10118DE48, &qword_100EC9E18);
  v21 = sub_10001C8B8(v24);
  sub_1003D2884(v21);
  return swift_arrayDestroy();
}

id sub_1003D1BE4()
{
  v1 = v0;
  v2 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC5Music27LibraryGenresViewController____lazy_storage___collectionView;
  v11 = *&v1[OBJC_IVAR____TtC5Music27LibraryGenresViewController____lazy_storage___collectionView];
  if (v11)
  {
    v12 = *&v1[OBJC_IVAR____TtC5Music27LibraryGenresViewController____lazy_storage___collectionView];
LABEL_6:
    v45 = v11;
    return v12;
  }

  sub_100009F78(0, &qword_101184600, UICollectionViewCompositionalLayout_ptr);
  (*(v3 + 104))(v5, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v2);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v13 = static UICollectionViewCompositionalLayout.list(using:)();
  (*(v7 + 8))(v9, v6);
  v14 = type metadata accessor for HIMetricsCollectionView();
  objc_allocWithZone(v14);
  v15 = v13;
  v16 = sub_100188F30(v15, 1, 0);
  result = [v1 view];
  if (result)
  {
    v18 = result;
    [result bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v47.receiver = v16;
    v47.super_class = v14;
    v27 = v16;
    objc_msgSendSuper2(&v47, "frame");
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v46.receiver = v27;
    v46.super_class = v14;
    objc_msgSendSuper2(&v46, "setFrame:", v20, v22, v24, v26);
    sub_1001891B4(v29, v31, v33, v35);
    [v27 setAutoresizingMask:18];

    result = [v1 view];
    if (result)
    {
      v36 = result;
      [result addSubview:v27];

      v37 = v27;
      [v37 _setShouldPrefetchCellsWhenPerformingReloadData:1];
      [v37 setDataSource:v1];
      [v37 setDelegate:v1];
      [v37 setKeyboardDismissMode:1];
      [v37 setAllowsFocus:1];
      [v37 setRemembersLastFocusedIndexPath:1];

      v38 = AccessibilityIdentifier.libraryGenresView.unsafeMutableAddressor();
      v39 = *v38;
      v40 = v38[1];
      v41 = v38[2];
      v42 = v38[3];

      v43 = UIView.withAccessibilityIdentifier(_:)(v39, v40, v41, v42);

      v44 = *&v1[v10];
      *&v1[v10] = v43;
      v12 = v43;

      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1003D1FDC(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_10118DE60, &unk_100EC8F30);
  __chkstk_darwin();
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v39 - v5;
  v7 = sub_10010FC20(&unk_10118D230, &qword_100EC9E50);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v39 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v40 = v8;
    v41 = a1;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v6);

    v16 = sub_10010FC20(&unk_10118DE70, &unk_100EC8F40);
    v17 = *(v16 - 8);
    v18 = *(v17 + 48);
    v19 = v17 + 48;
    if (v18(v6, 1, v16) == 1)
    {
      sub_1000095E8(v6, &unk_10118DE60, &unk_100EC8F30);
      v20 = 1;
    }

    else
    {
      v39 = v19;
      v21 = v18;
      v22 = v10;
      v23 = v40;
      (*(v40 + 16))(v12, v6, v7);
      sub_1000095E8(v6, &unk_10118DE70, &unk_100EC8F40);
      v24 = MusicLibrarySectionedResponse.isEmpty.getter(v7);
      v25 = v23;
      v10 = v22;
      v18 = v21;
      (*(v25 + 8))(v12, v7);
      v20 = !v24;
    }

    [v15 setNeedsUpdateContentUnavailableConfiguration];
    v26 = sub_1003D1BE4();
    [v26 setBouncesVertically:v20 & 1];

    v27 = OBJC_IVAR____TtC5Music27LibraryGenresViewController____lazy_storage___collectionView;
    [*&v15[OBJC_IVAR____TtC5Music27LibraryGenresViewController____lazy_storage___collectionView] setAlwaysBounceVertical:v20 & 1];
    [*&v15[v27] reloadData];
    v28 = sub_1003D2424();
    RequestResponse.Revision.content.getter(v4);
    if (v18(v4, 1, v16) == 1)
    {
      sub_1000095E8(v4, &unk_10118DE60, &unk_100EC8F30);
    }

    else
    {
      v29 = v40;
      (*(v40 + 16))(v10, v4, v7);
      sub_1000095E8(v4, &unk_10118DE70, &unk_100EC8F40);
      v30 = MusicLibrarySectionedResponse.isEmpty.getter(v7);
      (*(v29 + 8))(v10, v7);
      if (!v30)
      {
        v38 = *(v28 + 64);
        *(v28 + 64) = 1;
        if (v38)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    v31 = (*(*&v15[OBJC_IVAR____TtC5Music27LibraryGenresViewController____lazy_storage___searchController] + 120) + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
    v32 = v31[1];
    if (v32)
    {
      v33 = *v31 & 0xFFFFFFFFFFFFLL;
      if ((v32 & 0x2000000000000000) != 0)
      {
        v34 = HIBYTE(v32) & 0xF;
      }

      else
      {
        v34 = v33;
      }

      v35 = v34 != 0;
      v36 = *(v28 + 64);
      *(v28 + 64) = v35;
      if (v36 == v35)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v37 = *(v28 + 64);
      *(v28 + 64) = 0;
      if ((v37 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

LABEL_13:
    sub_10043EAB8();
LABEL_14:
  }

  return result;
}

uint64_t sub_1003D2424()
{
  v1 = OBJC_IVAR____TtC5Music27LibraryGenresViewController____lazy_storage___searchController;
  if (*&v0[OBJC_IVAR____TtC5Music27LibraryGenresViewController____lazy_storage___searchController])
  {
    v2 = *&v0[OBJC_IVAR____TtC5Music27LibraryGenresViewController____lazy_storage___searchController];
  }

  else
  {
    type metadata accessor for LibrarySearchController();
    swift_allocObject();
    v3 = v0;
    v2 = sub_10043F158(0, 0, v3);

    *&v0[v1] = v2;
  }

  return v2;
}

double sub_1003D24C8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC5Music27LibraryGenresViewController_responseController);
    v8 = Strong;

    if (a2)
    {
      v9 = a1;
    }

    else
    {
      v9 = 0;
    }

    if (a2)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0xE000000000000000;
    }

    v11 = *(v7 + 48);
    swift_beginAccess();
    v12 = *(v11 + 16);
    v13 = *(v11 + 32);
    v14 = *(v11 + 48);
    v15 = *(v11 + 64);
    v16 = *(v11 + 96);
    v22[4] = *(v11 + 80);
    v22[5] = v16;
    v23 = *(v11 + 112);
    v22[2] = v14;
    v22[3] = v15;
    v22[0] = v12;
    v22[1] = v13;
    v17 = *(v11 + 16);
    v25 = *(v11 + 32);
    v24 = v17;
    v18 = *(v11 + 56);
    v19 = *(v11 + 72);
    v20 = *(v11 + 88);
    v31 = *(v11 + 104);
    v30 = v20;
    v29 = v19;
    v28 = v18;

    sub_1003BF504(v22, &v21);

    v26 = v9;
    v27 = v10;
    sub_100379288(&v24);
  }

  return result;
}

uint64_t sub_1003D25FC@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_10118C540, &qword_100EC0500);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music27LibraryGenresViewController____lazy_storage___headerRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &unk_10118C540, &qword_100EC0500);
  v8 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &unk_10118C540, &qword_100EC0500);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &unk_10118C540, &qword_100EC0500);
  return swift_endAccess();
}

uint64_t sub_1003D2884@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_10118DE88, &unk_100EC9E58);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music27LibraryGenresViewController____lazy_storage___listCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &qword_10118DE88, &unk_100EC9E58);
  v8 = sub_10010FC20(&qword_10118DE48, &qword_100EC9E18);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &qword_10118DE88, &unk_100EC9E58);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
  type metadata accessor for Genre();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &qword_10118DE88, &unk_100EC9E58);
  return swift_endAccess();
}

uint64_t sub_1003D2BF8(char a1)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for MetricsEvent.Page(0);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v1;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "viewDidAppear:", a1 & 1, v4);
  v7 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v8 = MetricsEvent.Page.libraryGenresList.unsafeMutableAddressor();
  sub_100363C68(v8, v6);
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

  return sub_100363CCC(v6);
}

void sub_1003D2E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[0] = a1;
  v22[1] = a4;
  sub_10010FC20(&unk_10118DE60, &unk_100EC8F30);
  __chkstk_darwin();
  v6 = v22 - v5;
  v7 = sub_10010FC20(&unk_10118D230, &qword_100EC9E50);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v22 - v9;
  v11 = sub_10010FC20(&unk_10118D220, &qword_100EC8F28);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = v22 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v6);

    v19 = sub_10010FC20(&unk_10118DE70, &unk_100EC8F40);
    if ((*(*(v19 - 8) + 48))(v6, 1, v19) == 1)
    {
      sub_1000095E8(v6, &unk_10118DE60, &unk_100EC8F30);

      return;
    }

    (*(v8 + 16))(v10, v6, v7);
    sub_1000095E8(v6, &unk_10118DE70, &unk_100EC8F40);
    v20 = MusicLibrarySectionedResponse.sections.getter();
    (*(v8 + 8))(v10, v7);
    v21 = IndexPath.section.getter();
    if ((v21 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v21 < *(v20 + 16))
    {
      (*(v12 + 16))(v14, v20 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v21, v11);

      (*(v12 + 32))(v16, v14, v11);
      swift_getKeyPath();
      MusicLibrarySection.subscript.getter();

      sub_1005FF7FC(v22[2], v22[3], v23);

      UICollectionViewCell.contentConfiguration.setter();

      (*(v12 + 8))(v16, v11);
      return;
    }

    __break(1u);
  }
}

void sub_1003D321C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10010FC20(&unk_10118C520, &qword_100EC7CE0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v15 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    __chkstk_darwin();
    v15[-2] = a3;
    _s8TextCellVMa(0);
    sub_1003D5748(v13);
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.horizontal.getter();

    UIHostingConfiguration.margins(_:_:)();
    v14 = *(v6 + 8);
    v14(v8, v5);
    static Edge.Set.vertical.getter();
    v15[3] = v5;
    v15[4] = sub_100020674(&unk_10118C530, &unk_10118C520, &qword_100EC7CE0, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10001C8B8(v15);
    UIHostingConfiguration.margins(_:_:)();
    v14(v10, v5);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_1003D347C@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for Font.TextStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Genre.name.getter();
  v8 = v7;
  v9 = _s8TextCellVMa(0);
  v10 = UIFontTextStyleBody;
  static SymbolRenderingMode.monochrome.getter();
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v6;
  a1[3] = v8;
  a1[4] = v10;
  v15 = 0x4040000000000000;
  v11 = *(v3 + 104);
  v11(v5, enum case for Font.TextStyle.title(_:), v2);
  sub_100363C0C();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v15 = 0x402E000000000000;
  v11(v5, enum case for Font.TextStyle.body(_:), v2);
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v12 = *(v9 + 40);
  *(a1 + v12) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1003D3958(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v16 - v8;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v10 == a3)
  {
    goto LABEL_7;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v12 & 1) == 0)
  {
    strcpy(v16, "Unknown kind=");
    v16[7] = -4864;
    v13._countAndFlagsBits = a2;
    v13._object = a3;
    String.append(_:)(v13);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_7:
  }

  sub_1003D25FC(v9);
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  v14 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
  (*(v7 + 8))(v9, v6);
  return v14;
}

void *sub_1003D3C7C(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  sub_10010FC20(&unk_10118ABC0, &unk_100EC03E0);
  __chkstk_darwin();
  v33 = &v29 - v4;
  v5 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin();
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for UICellAccessory.DisplayedState();
  v8 = *(v31 - 8);
  __chkstk_darwin();
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&qword_10118DE48, &qword_100EC9E18);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v29 - v13;
  sub_10010FC20(&qword_10118DE80, &unk_100EE4D70);
  __chkstk_darwin();
  v36 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v29 - v16;
  v30 = v2;
  sub_10037B03C(a2, &v29 - v16);
  sub_1003D2884(v14);
  v18 = sub_1007FA934(v14, a2, v17);
  (*(v12 + 8))(v14, v11);
  sub_10010FC20(&unk_101184740, &qword_100ED5D60);
  type metadata accessor for UICellAccessory();
  *(swift_allocObject() + 16) = xmmword_100EBC6B0;
  v19 = v31;
  (*(v8 + 104))(v10, enum case for UICellAccessory.DisplayedState.always(_:), v31);
  v20 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v20 - 8) + 56))(v33, 1, 1, v20);
  UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
  static UICellAccessory.disclosureIndicator(displayed:options:)();
  (*(v34 + 8))(v7, v35);
  (*(v8 + 8))(v10, v19);
  UICollectionViewListCell.accessories.setter();
  v21 = [v30 traitCollection];
  v22 = [v21 userInterfaceIdiom];

  if (v22 != 6)
  {
    v23 = v18;

    [v23 directionalLayoutMargins];
    [v23 setDirectionalLayoutMargins:?];
  }

  v24 = v36;
  sub_1000089F8(v17, v36, &qword_10118DE80, &unk_100EE4D70);
  v25 = type metadata accessor for Genre();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_1000095E8(v24, &qword_10118DE80, &unk_100EE4D70);
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
  }

  else
  {
    *(&v38 + 1) = v25;
    v39 = &protocol witness table for Genre;
    v27 = sub_10001C8B8(&v37);
    (*(v26 + 32))(v27, v24, v25);
  }

  sub_1000095E8(v17, &qword_10118DE80, &unk_100EE4D70);
  sub_1000095E8(&v37, &qword_1011A3DD0, &unk_100EC03F0);
  return v18;
}

uint64_t sub_1003D4460()
{
  sub_10010FC20(&unk_10118DE60, &unk_100EC8F30);
  __chkstk_darwin();
  v1 = &v11 - v0;
  v2 = sub_10010FC20(&unk_10118D230, &qword_100EC9E50);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v11 - v6;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v1);

  v8 = sub_10010FC20(&unk_10118DE70, &unk_100EC8F40);
  if ((*(*(v8 - 8) + 48))(v1, 1, v8) == 1)
  {
    sub_1000095E8(v1, &unk_10118DE60, &unk_100EC8F30);
  }

  else
  {
    (*(v3 + 16))(v5, v1, v2);
    sub_1000095E8(v1, &unk_10118DE70, &unk_100EC8F40);
    (*(v3 + 32))(v7, v5, v2);
    if (MusicLibrarySectionedResponse.isEmpty.getter(v2))
    {
      *(&v12 + 1) = type metadata accessor for UIContentUnavailableConfiguration();
      v13 = &protocol witness table for UIContentUnavailableConfiguration;
      v9 = sub_10001C8B8(&v11);
      sub_1007DA040(v9);
      UIViewController.contentUnavailableConfiguration.setter();
      return (*(v3 + 8))(v7, v2);
    }

    (*(v3 + 8))(v7, v2);
  }

  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  return UIViewController.contentUnavailableConfiguration.setter();
}

uint64_t type metadata accessor for LibraryGenresViewController(uint64_t a1)
{
  result = qword_10118DE30;
  if (!qword_10118DE30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003D4A34(uint64_t a1)
{
  sub_10003920C(319, &unk_101184560, &unk_10118A650, &qword_100EC02B0);
  if (v1 <= 0x3F)
  {
    sub_10003920C(319, &qword_10118DE40, &qword_10118DE48, &qword_100EC9E18);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1003D4B4C(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC5Music27LibraryGenresViewController_responseController];
  v2 = [a1 traitCollection];
  sub_100217F14();
  UITraitCollection.subscript.getter();

  v3 = sub_10049CB78();

  v4 = *(v1 + 48);
  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = *(v4 + 32);
  v7 = *(v4 + 48);
  v8 = *(v4 + 64);
  v9 = *(v4 + 96);
  v23[4] = *(v4 + 80);
  v23[5] = v9;
  v24 = *(v4 + 112);
  v23[2] = v7;
  v23[3] = v8;
  v23[0] = v5;
  v23[1] = v6;
  v16 = *(v4 + 16);
  v17 = v3 & 1;
  v10 = *(v4 + 33);
  v19 = *(v4 + 49);
  v18 = v10;
  v11 = *(v4 + 65);
  v12 = *(v4 + 81);
  v13 = *(v4 + 97);
  *&v22[15] = *(v4 + 112);
  *v22 = v13;
  v21 = v12;
  v20 = v11;
  sub_1003BF504(v23, &v15);
  return sub_100379288(&v16);
}

uint64_t sub_1003D4C70(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC5Music27LibraryGenresViewController_responseController];
  v2 = [a1 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v3 = *&v24[0];
  v4 = *(v1 + 48);
  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = *(v4 + 32);
  v7 = *(v4 + 48);
  v8 = *(v4 + 64);
  v9 = *(v4 + 96);
  v24[4] = *(v4 + 80);
  v24[5] = v9;
  v25 = *(v4 + 112);
  v24[2] = v7;
  v24[3] = v8;
  v24[0] = v5;
  v24[1] = v6;
  v10 = v5;
  v11 = *(v4 + 32);
  v19 = *(v4 + 48);
  v18 = v11;
  v12 = *(v4 + 64);
  v13 = *(v4 + 80);
  v14 = *(v4 + 96);
  v23 = *(v4 + 112);
  v22 = v14;
  v21 = v13;
  v20 = v12;
  sub_1003BF504(v24, v16);

  v17[0] = v10;
  v17[1] = v3;
  return sub_100379288(v17);
}

uint64_t sub_1003D4D78()
{
  sub_10010FC20(&unk_10118DE60, &unk_100EC8F30);
  __chkstk_darwin();
  v1 = &v10 - v0;
  v2 = sub_10010FC20(&unk_10118D230, &qword_100EC9E50);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - v4;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v1);

  v6 = sub_10010FC20(&unk_10118DE70, &unk_100EC8F40);
  if ((*(*(v6 - 8) + 48))(v1, 1, v6) == 1)
  {
    sub_1000095E8(v1, &unk_10118DE60, &unk_100EC8F30);
    return 0;
  }

  else
  {
    (*(v3 + 16))(v5, v1, v2);
    sub_1000095E8(v1, &unk_10118DE70, &unk_100EC8F40);
    v8 = MusicLibrarySectionedResponse.sections.getter();
    (*(v3 + 8))(v5, v2);
    v7 = *(v8 + 16);
  }

  return v7;
}

uint64_t sub_1003D4F7C(unint64_t a1)
{
  v19 = a1;
  v1 = sub_10010FC20(&qword_10118D210, &qword_100EBD760);
  v18 = *(v1 - 8);
  __chkstk_darwin();
  v3 = &v18 - v2;
  v4 = sub_10010FC20(&unk_10118D220, &qword_100EC8F28);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18 - v6;
  sub_10010FC20(&unk_10118DE60, &unk_100EC8F30);
  __chkstk_darwin();
  v9 = &v18 - v8;
  v10 = sub_10010FC20(&unk_10118D230, &qword_100EC9E50);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v18 - v12;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v9);

  v14 = sub_10010FC20(&unk_10118DE70, &unk_100EC8F40);
  if ((*(*(v14 - 8) + 48))(v9, 1, v14) == 1)
  {
    sub_1000095E8(v9, &unk_10118DE60, &unk_100EC8F30);
    return 0;
  }

  (*(v11 + 16))(v13, v9, v10);
  sub_1000095E8(v9, &unk_10118DE70, &unk_100EC8F40);
  v16 = MusicLibrarySectionedResponse.sections.getter();
  result = (*(v11 + 8))(v13, v10);
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(v16 + 16) <= v19)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  (*(v5 + 16))(v7, v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19, v4);

  MusicLibrarySection.items.getter();
  (*(v5 + 8))(v7, v4);
  sub_100020674(&unk_10118C240, &qword_10118D210, &qword_100EBD760, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v17 = dispatch thunk of Collection.distance(from:to:)();
  (*(v18 + 8))(v3, v1);
  return v17;
}

void sub_1003D5398(uint64_t a1)
{
  v2 = v1;
  sub_10010FC20(&unk_10119F3A0, &qword_100EC7CD0);
  __chkstk_darwin();
  v5 = &v21 - v4;
  _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_10118DE80, &unk_100EE4D70);
  __chkstk_darwin();
  v9 = &v21 - v8;
  v10 = type metadata accessor for Genre();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10037B03C(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000095E8(v9, &qword_10118DE80, &unk_100EE4D70);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    (*(v11 + 16))(v7, v13, v10);
    swift_storeEnumTagMultiPayload();
    v14 = [v1 traitCollection];
    sub_100217F14();
    UITraitCollection.subscript.getter();

    v15 = sub_10049CB78();

    v16 = objc_allocWithZone(type metadata accessor for LibraryAlbumsViewController(0));
    v17 = sub_1006E7454(v7, v15 & 1);
    v18 = [v2 navigationController];
    if (v18)
    {
      v19 = v18;
      UIViewController.traitOverrides.getter();
      v20 = type metadata accessor for UITraitOverrides();
      (*(*(v20 - 8) + 56))(v5, 0, 1, v20);
      UINavigationController.push(_:traitOverrides:animated:)(v17, v5, 1);

      sub_1000095E8(v5, &unk_10119F3A0, &qword_100EC7CD0);
      (*(v11 + 8))(v13, v10);
    }

    else
    {
      (*(v11 + 8))(v13, v10);
    }
  }
}

unint64_t sub_1003D5748(__n128 a1)
{
  result = qword_10118DE90;
  if (!qword_10118DE90)
  {
    _s8TextCellVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118DE90);
  }

  return result;
}

id sub_1003D57B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a2;
    sub_100016270(&v8, v10);
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  memset(v10, 0, sizeof(v10));
  if (a3)
  {
LABEL_3:
    sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:

  swift_unknownObjectRetain();
  v6 = v5(v10, v3);

  sub_1000095E8(v10, &unk_101183F30, qword_100EBF960);

  return v6;
}

uint64_t sub_1003D58AC()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  if (*(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_filtersToDownloadedContent) == 1 || (type metadata accessor for MusicLibrary(), , static MusicLibrary.shared.getter(), sub_1003E1338(&qword_10118CE20, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary), v1 = dispatch thunk of static Equatable.== infix(_:_:)(), , , (v1 & 1) != 0))
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  else
  {

    v3 = MusicLibrary.name.getter();

    return v3;
  }
}

char *sub_1003D5AB0()
{
  v123 = _s9PlaylistsVMa(0);
  __chkstk_darwin();
  v2 = v106 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_10010FC20(&qword_10118DF68, &qword_100EC9FA8);
  v118 = *(v120 - 8);
  __chkstk_darwin();
  v117 = v106 - v3;
  v122 = sub_10010FC20(&unk_101197220, &unk_100ED5E80);
  v121 = *(v122 - 8);
  __chkstk_darwin();
  v119 = v106 - v4;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v116 = v106 - v5;
  v109 = sub_10010FC20(&unk_101197230, &qword_100ECD2D0);
  v108 = *(v109 - 8);
  __chkstk_darwin();
  v7 = v106 - v6;
  v112 = sub_10010FC20(&qword_10118DF70, &qword_100EC9FB0);
  v111 = *(v112 - 1);
  __chkstk_darwin();
  v9 = v106 - v8;
  v115 = sub_10010FC20(&qword_10118DF78, &qword_100EC9FB8);
  v114 = *(v115 - 8);
  __chkstk_darwin();
  v113 = v106 - v10;
  v11 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_pinsTabGroup;
  v12 = objc_allocWithZone(_s12PinsTabGroupCMa(0));
  *(v0 + v11) = sub_100328F50(_swiftEmptyArrayStorage);
  v13 = v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_pinsObserver;
  *(v13 + 32) = 0;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  v14 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_facetsTabGroup;
  v15 = objc_allocWithZone(_s14FacetsTabGroupCMa());
  *(v0 + v14) = sub_1007EBC30();
  *(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab____lazy_storage___menuTabElementsController) = 0;
  *(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab____lazy_storage___editableMenuController) = 0;
  v124 = v2;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_10010F538(_swiftEmptyArrayStorage);
  }

  else
  {
    v16 = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_visiblePlaylistSidebarTabs) = v16;
  v17 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_playlistSectionTab;
  v18 = objc_allocWithZone(_s18PlaylistSectionTabCMa());
  *(v0 + v17) = sub_100736C48();
  *(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab____lazy_storage___playlistsTabsController) = 0;
  v19 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_createdPlaylist;
  v20 = type metadata accessor for Playlist();
  (*(*(v20 - 8) + 56))(v0 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_artworkCache;
  type metadata accessor for ArtworkPrefetchingController.CacheReference();
  v22 = swift_allocObject();
  *(v22 + 16) = 0xD000000000000017;
  *(v22 + 24) = 0x8000000100E49230;
  *(v22 + 32) = 0;
  *(v0 + v21) = v22;
  *(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_userDefaultsPlaylistSortObserver) = 0;
  *(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_ignoreUserDefaultsPlaylistSortUpdate) = 0;
  *(v22 + 40) = 1;
  *(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab____lazy_storage___playlistSortButton) = 0;
  *(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_cloudLibraryStatus) = 0x80000000;
  v23 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_sharedLibrariesController;
  type metadata accessor for SharedLibrariesController(0);
  swift_allocObject();
  *(v0 + v23) = sub_10003C170();
  *(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_sharedLibraryObservers) = 0;
  v24 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary;
  v106[1] = type metadata accessor for MusicLibrary();
  *(v0 + v24) = static MusicLibrary.shared.getter();
  *(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_downloadsController) = 0;
  *(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_filtersToDownloadedContent) = 0;
  sub_100035EA0(0, &v130);
  v25 = sub_100489578(&v130);
  v26 = objc_allocWithZone(type metadata accessor for NavigationController());
  v27 = v25;
  v28 = [v26 init];
  [v27 setManagingNavigationController:v28];

  [v27 setPreferredPlacement:6];
  [v27 setAllowsReordering:1];
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100EBE270;
  v30 = *(v27 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_pinsTabGroup);
  *(v29 + 32) = v30;
  v31 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_facetsTabGroup;
  v32 = *(v27 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_facetsTabGroup);
  *(v29 + 40) = v32;
  v110 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_playlistSectionTab;
  v33 = *(v27 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_playlistSectionTab);
  *(v29 + 48) = v33;
  sub_100009F78(0, &qword_101181F70, UITab_ptr);
  v34 = v30;
  v35 = v32;
  v36 = v33;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 setChildren:isa];

  v38 = [*(v27 + v31) identifier];
  if (!v38)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = String._bridgeToObjectiveC()();
  }

  [v27 setDefaultChildIdentifier:v38];

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6D0;
  v126 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_sharedLibrariesController;
  swift_beginAccess();

  sub_10010FC20(&unk_101197240, &unk_100ECD2C0);
  Published.projectedValue.getter();
  swift_endAccess();

  v107 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_100020674(&qword_10118DF80, &unk_101197230, &qword_100ECD2D0, &protocol conformance descriptor for Published<A>.Publisher);
  v39 = v109;
  Publisher.dropFirst(_:)();
  (*(v108 + 8))(v7, v39);
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v40 = static OS_dispatch_queue.main.getter();
  v129 = v40;
  v41 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v42 = *(v41 - 8);
  v108 = *(v42 + 56);
  v109 = v42 + 56;
  v43 = v116;
  (v108)(v116, 1, 1, v41);
  sub_100020674(&qword_10118DF88, &qword_10118DF70, &qword_100EC9FB0, &protocol conformance descriptor for Publishers.Drop<A>);
  v106[2] = sub_10001C070(&qword_101184920, &qword_101182960, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v44 = v113;
  v45 = v112;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v43, &qword_101182140, &unk_100EBD2A0);

  (*(v111 + 8))(v9, v45);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v112 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100020674(&qword_10118DF90, &qword_10118DF78, &qword_100EC9FB8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v46 = v27;
  v47 = v115;
  v48 = Publisher<>.sink(receiveValue:)();

  (*(v114 + 8))(v44, v47);
  *(inited + 32) = v48;
  swift_beginAccess();

  sub_10010FC20(&unk_101197250, &qword_100EC9FC0);
  v49 = v117;
  Published.projectedValue.getter();
  swift_endAccess();

  v50 = static OS_dispatch_queue.main.getter();
  v129 = v50;
  (v108)(v43, 1, 1, v41);
  sub_100020674(&qword_10118DF98, &qword_10118DF68, &qword_100EC9FA8, v107);
  v51 = v119;
  v52 = v120;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v43, &qword_101182140, &unk_100EBD2A0);

  (*(v118 + 8))(v49, v52);
  swift_getKeyPath();
  v129 = v46;
  sub_100020674(&unk_101197260, &unk_101197220, &unk_100ED5E80, v112);
  v53 = v122;
  v54 = Publisher<>.assign<A>(to:on:)();

  (*(v121 + 8))(v51, v53);
  v55 = inited;
  *(inited + 40) = v54;
  sub_10010E5A8(v55);
  v57 = v56;
  swift_setDeallocating();
  swift_arrayDestroy();
  *&v46[OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_sharedLibraryObservers] = v57;

  v58 = *(v27 + v126);
  v59 = *(v58 + OBJC_IVAR____TtC5Music25SharedLibrariesController_isAutomaticReloadingEnabled);
  *(v58 + OBJC_IVAR____TtC5Music25SharedLibrariesController_isAutomaticReloadingEnabled) = 1;
  if (v59 != 1)
  {

    sub_10044D424();
  }

  v60 = [objc_opt_self() currentTraitCollection];
  v61 = [v60 userInterfaceIdiom];

  if (v61 == 6)
  {
    type metadata accessor for LibraryDownloadsController(0);
    v62 = swift_allocObject();
    type metadata accessor for Track();
    MusicItemCollection.init(arrayLiteral:)();
    v63 = (v62 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_didUpdateDownloadQueue);
    *v63 = 0;
    v63[1] = 0;
    *(v62 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_isAutomaticReloadingEnabled) = 0;
    *(v62 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_viewModel) = 0;
    v64 = v62 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_downloadQueueSubscription;
    *v64 = 0u;
    *(v64 + 16) = 0u;
    *(v64 + 32) = 0;
    *(v62 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_itemStateCache) = _swiftEmptyDictionarySingleton;
    *&v46[OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_downloadsController] = v62;
  }

  v65 = *(v27 + v110);
  if (v46[OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_filtersToDownloadedContent] != 1)
  {

    static MusicLibrary.shared.getter();
    v67 = static MusicLibrary.== infix(_:_:)();

    v68 = *(v65 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_wantsNewPlaylistAction);
    *(v65 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_wantsNewPlaylistAction) = v67 & 1;
    if ((v67 & 1) == v68)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v66 = *(v65 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_wantsNewPlaylistAction);
  *(v65 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_wantsNewPlaylistAction) = 0;
  if (v66)
  {
LABEL_13:
    sub_1007371EC();
  }

LABEL_14:
  sub_1003D9A80();
  v69 = sub_1003DCCEC();
  v70 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v71 = (v69 + *(*v69 + 128));
  swift_beginAccess();
  v72 = *v71;
  v73 = v71[1];
  *v71 = sub_1003E1388;
  v71[1] = v70;

  sub_100020438(v72, v73);

  v74 = sub_1003DDCB8();
  v75 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v76 = (v74 + *(*v74 + 112));
  swift_beginAccess();
  v77 = *v76;
  v78 = v76[1];
  *v76 = sub_1003E1390;
  v76[1] = v75;

  sub_100020438(v77, v78);

  v79 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab____lazy_storage___playlistsTabsController;
  v80 = *&v46[OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab____lazy_storage___playlistsTabsController];
  v81 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v82 = (v80 + *(*v80 + 128));
  swift_beginAccess();
  v83 = *v82;
  v84 = v82[1];
  *v82 = sub_1003E1398;
  v82[1] = v81;
  v85 = v46;

  sub_100020438(v83, v84);

  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);

  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);

  v86 = *(**CloudLibrary.StatusObserver.shared.unsafeMutableAddressor() + 216);

  v86(v85, &off_1010AA668);

  v87 = *&v46[v79];
  v88 = *(*v87 + 96);
  swift_beginAccess();
  v89 = v124;
  sub_1003E158C(v87 + v88, v124, _s9PlaylistsVMa);
  v90 = *(v123 + 32);
  if (qword_10117F298 != -1)
  {
    swift_once();
  }

  v91 = _s9PlaylistsV5ScopeVMa(0);
  v92 = sub_1000060E4(v91, qword_101218730);
  v93 = sub_1001982EC((v89 + v90), v92);
  v94 = "LibraryPlaylists";
  v95 = 0xD000000000000010;
  if (v93)
  {
    v95 = 0xD000000000000011;
  }

  else
  {
    v94 = "v32@0:8@16@24";
  }

  v127 = v95;
  v128 = v94 | 0x8000000000000000;

  v96._countAndFlagsBits = 0x53746E65746E6F43;
  v96._object = 0xEB0000000074726FLL;
  String.append(_:)(v96);

  v97 = v127;
  v98 = v128;
  sub_1003E15F4(v89, _s9PlaylistsVMa);
  sub_100009F78(0, &qword_10118CE58, NSUserDefaults_ptr);
  v127 = v97;
  v128 = v98;
  v99 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v100 = sub_100009838();

  v101 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(&v127, 0, 0, sub_1003E13A0, v99, &type metadata for String, v100);

  *&v85[OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_userDefaultsPlaylistSortObserver] = v101;

  v102 = [v85 tabBarController];

  v103 = v85;
  if (v102)
  {
    type metadata accessor for TabBarController(0);
    if (swift_dynamicCastClass())
    {
      sub_1006BA068();
      v104 = v102;
      v102 = v85;
    }

    else
    {
      v104 = v85;
    }

    v103 = v102;
  }

  return v85;
}

void sub_1003D6E40(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_10117F7A0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000060E4(v5, qword_101218E00);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134349056;
      if (v2 >> 62)
      {
        v9 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v8 + 4) = v9;

      _os_log_impl(&_mh_execute_header, v6, v7, "Available shared libraries changed (%{public}ld shared libraries available). Updating tabs…", v8, 0xCu);
    }

    else
    {
    }

    v10 = v4;
    v11 = [v10 tabBarController];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 sidebar];

      [v13 reconfigureItemForTab:v10];
    }

    v14 = [v10 tabBarController];

    if (v14)
    {
      sub_10003F950();
    }
  }
}

double sub_1003D702C(uint64_t *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary);
  *(*a2 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary) = *a1;

  sub_1003DF9EC(v2);

  return result;
}

void sub_1003D7080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  v5 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_facetsTabGroup;
  v6 = *(Strong + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_facetsTabGroup);
  RequestResponse.Revision.content.getter(&v25);
  v7 = v25;
  if (!v25)
  {
    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_4;
    }

LABEL_8:
    sub_100009F78(0, &qword_101181F70, UITab_ptr);

    _bridgeCocoaArray<A>(_:)();

    goto LABEL_5;
  }

  if (v7 >> 62)
  {
    goto LABEL_8;
  }

LABEL_4:

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  sub_100009F78(0, &qword_101181F70, UITab_ptr);
LABEL_5:

  sub_100009F78(0, &qword_101181F70, UITab_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 setChildren:isa];

  v9 = *&v4[v5];
  RequestResponse.Revision.content.getter(&v25);
  if (v25)
  {
  }

  v10 = Array._bridgeToObjectiveC()().super.isa;

  [v9 setDisplayOrderIdentifiers:v10];

  if (qword_10117F7A0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000060E4(v11, qword_101218E00);
  v12 = v4;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136446210;
    v17 = [*&v4[v5] children];
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = Array.description.getter();
    v20 = v19;

    v21 = sub_1000105AC(v18, v20, &v25);

    *(v15 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "Updated library facet group with facets: %{public}s", v15, 0xCu);
    sub_10000959C(v16);
  }

  v22 = [v12 tabBarController];
  if (v22)
  {
    v23 = v22;
    type metadata accessor for TabBarController(0);
    if (swift_dynamicCastClass())
    {
      sub_1006BA068();
      v24 = v23;
    }

    else
    {
      v24 = v12;
      v12 = v23;
    }
  }
}

void sub_1003D7420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v5 = Strong;
  v6 = [Strong tabBarController];

  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = [v6 selectedTab];

  if (!v7)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  _s11PlaylistTabCMa();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
  }

LABEL_7:
  v8 = *(_s19PlaylistTabsRequestVMa(0) + 20);

  *(a2 + v8) = v6;
}

void sub_1003D74FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v4 = &v125 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v125 - v5;
  __chkstk_darwin();
  v135 = (&v125 - v7);
  v8 = type metadata accessor for Playlist();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v125 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v15 = Strong;
  v132 = v13;
  if (qword_10117F7A0 != -1)
  {
    swift_once();
  }

  v129 = v11;
  v134 = v8;
  v131 = v6;
  v16 = type metadata accessor for Logger();
  v133 = sub_1000060E4(v16, qword_101218E00);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Applying playlists updates…", v19, 2u);
  }

  v20 = v15;
  v21 = [v20 tabBarController];
  v22 = &qword_10118D000;
  v137 = v20;
  v130 = v4;
  v23 = v9;
  if (!v21)
  {

    goto LABEL_33;
  }

  v24 = v21;
  v25 = [v21 selectedTab];

  if (!v25)
  {
    goto LABEL_31;
  }

  _s11PlaylistTabCMa();
  v26 = swift_dynamicCastClass();
  if (!v26)
  {
    v20 = v137;

LABEL_32:
    v22 = &qword_10118D000;
    goto LABEL_33;
  }

  v27 = v26;
  RequestResponse.Revision.content.getter(&v145);
  if (!v146)
  {

LABEL_30:
    v20 = v137;
LABEL_31:

    goto LABEL_32;
  }

  v28 = v145;

  if (!v28)
  {

    v20 = v137;
    goto LABEL_32;
  }

  sub_100009F78(0, &qword_101197A30, NSObject_ptr);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {

    goto LABEL_30;
  }

  v29 = v25;
  v136 = sub_1002D1F90();
  v128 = v29;

  if (qword_10117F7B8 != -1)
  {
    swift_once();
  }

  sub_1000060E4(v16, qword_101218E48);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Selected tab was a playlist that is no longer available. Selecting the closest one as a fallback…", v32, 2u);
  }

  v33 = v136;
  if (!v136)
  {
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&_mh_execute_header, v96, v97, "Failed to find a closest tab for a previously selected playlist tab. Should not happen.", v98, 2u);
    }

    v20 = v137;
    v22 = &qword_10118D000;
    goto LABEL_79;
  }

  v34 = swift_dynamicCastClass();
  v22 = &qword_10118D000;
  v127 = v28;
  if (!v34)
  {
    goto LABEL_71;
  }

  v35 = *(*&v137[OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_playlistSectionTab] + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_userPlaylistsTabGroup);
  v36 = v33;
  v37 = [v36 identifier];
  if (!v37)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = String._bridgeToObjectiveC()();
  }

  v38 = [v35 tabForIdentifier:v37];

  if (v38)
  {

    v39 = v36;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    v42 = os_log_type_enabled(v40, v41);
    v136 = v39;
    if (v42)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v145 = v44;
      *v43 = 136446210;
      v45 = v39;
      v46 = [v45 description];
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v50 = sub_1000105AC(v47, v49, &v145);

      *(v43 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v40, v41, "Selecting closest playlist tab: %{public}s", v43, 0xCu);
      sub_10000959C(v44);
    }

    v20 = v137;
    v51 = v127;
    v52 = v128;
    v53 = [v137 tabBarController];

    v22 = &qword_10118D000;
    if (v53)
    {
      v54 = v136;
      [v53 setSelectedTab:v136];

      goto LABEL_33;
    }

    goto LABEL_82;
  }

  while (1)
  {

    v22 = &qword_10118D000;
    v28 = v127;
    v33 = v136;
LABEL_71:
    if (swift_dynamicCastClass())
    {
      v99 = v33;
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v145 = v103;
        *v102 = 136446210;
        v104 = v99;
        v126 = v104;
        v105 = [v104 description];
        v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v108 = v107;

        v109 = sub_1000105AC(v106, v108, &v145);

        *(v102 + 4) = v109;
        sub_10000959C(v103);
        v28 = v127;

        v22 = &qword_10118D000;
      }

      else
      {
      }

      v20 = v137;
LABEL_79:
      v122 = v128;
      v123 = [v20 tabBarController];

      if (v123)
      {
        v124 = *(*&v20[v22[475]] + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_allPlaylistsTab);
        [v123 setSelectedTab:v124];
      }

LABEL_82:
    }

    else
    {
      v110 = v128;
      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        v145 = v128;
        *v113 = 136446210;
        v114 = v110;
        v115 = v110;
        v116 = [v27 description];
        v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v119 = v118;

        v110 = v115;
        v120 = sub_1000105AC(v117, v119, &v145);
        v33 = v136;

        *(v113 + 4) = v120;
        v28 = v127;
        sub_10000959C(v128);
      }

      v22 = &qword_10118D000;
      v20 = v137;
      v121 = [v137 tabBarController];

      [v121 setSelectedTab:v33];
    }

LABEL_33:
    v55 = *(*&v20[v22[475]] + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_userPlaylistsTabGroup);
    RequestResponse.Revision.content.getter(&v140);
    v57 = v140;
    v56 = v141;
    v59 = v142;
    v58 = v143;
    v60 = v144;
    if (v141)
    {
      v145 = v140;
      v146 = v141;
      v147 = v142;
      v148 = v143;
      v149 = v144;
      sub_10073819C();
    }

    v136 = sub_100009F78(0, &qword_101181F70, UITab_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v55 setChildren:isa];

    if (qword_10117F238 != -1)
    {
      swift_once();
    }

    sub_100174190();

    sub_1003E147C(v57, v56, v59, v58, v60);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "Updated user playlists tab group", v64, 2u);
    }

    v65 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_createdPlaylist;
    swift_beginAccess();
    v66 = v135;
    sub_1000089F8(&v20[v65], v135, &unk_1011814D0, &qword_100EC12A0);
    v67 = v23;
    v68 = v134;
    if ((*(v23 + 48))(v66, 1, v134) == 1)
    {
      sub_1000095E8(v66, &unk_1011814D0, &qword_100EC12A0);
    }

    else
    {
      v69 = v132;
      (*(v23 + 32))(v132, v66, v68);
      if (sub_1003DEB98(v69))
      {
        v70 = *(v23 + 16);
        v71 = v129;
        v70(v129, v69, v68);
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v133 = swift_slowAlloc();
          v140 = v133;
          *v74 = 136446210;
          sub_1003E1338(&qword_101184200, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
          v75 = dispatch thunk of CustomStringConvertible.description.getter();
          v77 = v76;
          v135 = *(v67 + 8);
          (v135)(v71, v134);
          v78 = sub_1000105AC(v75, v77, &v140);
          v68 = v134;

          *(v74 + 4) = v78;
          _os_log_impl(&_mh_execute_header, v72, v73, "Successfully selected newly created playlist: %{public}s", v74, 0xCu);
          sub_10000959C(v133);
        }

        else
        {

          v135 = *(v67 + 8);
          (v135)(v71, v68);
        }

        v79 = v130;
        v80 = v131;
        (*(v67 + 56))(v131, 1, 1, v68);
        sub_1000089F8(&v20[v65], v79, &unk_1011814D0, &qword_100EC12A0);
        swift_beginAccess();
        sub_1003E12C8(v80, &v20[v65]);
        swift_endAccess();
        sub_1003DE2D8(v79);
        sub_1000095E8(v79, &unk_1011814D0, &qword_100EC12A0);
        sub_1000095E8(v80, &unk_1011814D0, &qword_100EC12A0);
        (v135)(v132, v68);
      }

      else
      {
        (*(v23 + 8))(v69, v68);
      }
    }

    v81 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_visiblePlaylistSidebarTabs;
    swift_beginAccess();
    v82 = *&v20[v81];
    if ((v82 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      sub_10001C070(&qword_10118DFA0, &qword_101181F70, UITab_ptr, &protocol conformance descriptor for NSObject);
      Set.Iterator.init(_cocoa:)();
      v84 = v140;
      v83 = v141;
      v85 = v142;
      v23 = v143;
      v86 = v144;
    }

    else
    {
      v87 = -1 << *(v82 + 32);
      v83 = v82 + 56;
      v85 = ~v87;
      v88 = -v87;
      v89 = v88 < 64 ? ~(-1 << v88) : -1;
      v86 = v89 & *(v82 + 56);
      swift_bridgeObjectRetain_n();
      v23 = 0;
      v84 = v82;
    }

    v36 = 0;
    v135 = v85;
    v27 = ((v85 + 64) >> 6);
    if (v84 < 0)
    {
      break;
    }

LABEL_54:
    v90 = v23;
    v91 = v86;
    v92 = v23;
    if (v86)
    {
LABEL_58:
      v93 = (v91 - 1) & v91;
      v94 = *(*(v84 + 48) + ((v92 << 9) | (8 * __clz(__rbit64(v91)))));
      if (v94)
      {
        goto LABEL_62;
      }

      goto LABEL_64;
    }

    while (1)
    {
      v92 = v90 + 1;
      if (__OFADD__(v90, 1))
      {
        break;
      }

      if (v92 >= v27)
      {
        goto LABEL_64;
      }

      v91 = *(v83 + 8 * v92);
      ++v90;
      if (v91)
      {
        goto LABEL_58;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v95 = __CocoaSet.Iterator.next()();
    if (!v95)
    {
      break;
    }

    v138 = v95;
    swift_dynamicCast();
    v94 = v139;
    v92 = v23;
    v93 = v86;
    if (!v139)
    {
      break;
    }

LABEL_62:
    v139 = v94;
    sub_1003D86C4(&v139, v137);

    v23 = v92;
    v86 = v93;
    if ((v84 & 0x8000000000000000) == 0)
    {
      goto LABEL_54;
    }
  }

LABEL_64:
  sub_10005C9F8(v84);
}

void sub_1003D86C4(void **a1, void *a2)
{
  v49 = a2;
  v52 = type metadata accessor for Artwork();
  v54 = *(v52 - 8);
  __chkstk_darwin();
  v47 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10010FC20(&unk_101191420, &unk_100EC9120);
  __chkstk_darwin();
  v5 = &v46 - v4;
  v6 = type metadata accessor for Playlist();
  v50 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11ArtworkInfoV10PropertiesVMa(0);
  __chkstk_darwin();
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_10118DFA8, &qword_100ECA000);
  __chkstk_darwin();
  v12 = &v46 - v11;
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v48 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v46 - v14;
  __chkstk_darwin();
  v17 = &v46 - v16;
  v18 = *a1;
  _s11PlaylistTabCMa();
  if (swift_dynamicCastClass())
  {
    v53 = v18;
    sub_10053CB9C(v12);
    v19 = _s11ArtworkInfoVMa(0);
    if ((*(*(v19 - 8) + 48))(v12, 1, v19) == 1)
    {
      sub_1000095E8(v12, &qword_10118DFA8, &qword_100ECA000);
      v20 = v54;
      v21 = v52;
      (*(v54 + 56))(v17, 1, 1, v52);
    }

    else
    {
      sub_1003E158C(v12, v10, _s11ArtworkInfoV10PropertiesVMa);
      sub_1003E15F4(v12, _s11ArtworkInfoVMa);
      sub_1000089F8(v10, v17, &unk_101188920, &qword_100EBCC50);
      sub_1003E15F4(v10, _s11ArtworkInfoV10PropertiesVMa);
      v21 = v52;
      v20 = v54;
    }

    v22 = v55;
    UnfairLock.locked<A>(_:)(sub_1003E14F4);
    v55 = v22;

    Playlist.artwork.getter();
    (*(v50 + 8))(v8, v6);
    v23 = *(v51 + 48);
    sub_1000089F8(v17, v5, &unk_101188920, &qword_100EBCC50);
    sub_1000089F8(v15, &v5[v23], &unk_101188920, &qword_100EBCC50);
    v24 = *(v20 + 48);
    if (v24(v5, 1, v21) == 1)
    {
      sub_1000095E8(v15, &unk_101188920, &qword_100EBCC50);
      sub_1000095E8(v17, &unk_101188920, &qword_100EBCC50);
      if (v24(&v5[v23], 1, v21) == 1)
      {
        sub_1000095E8(v5, &unk_101188920, &qword_100EBCC50);
LABEL_19:

        return;
      }
    }

    else
    {
      v25 = v48;
      sub_1000089F8(v5, v48, &unk_101188920, &qword_100EBCC50);
      if (v24(&v5[v23], 1, v21) != 1)
      {
        v42 = v54;
        v43 = &v5[v23];
        v44 = v47;
        (*(v54 + 32))(v47, v43, v21);
        sub_1003E1338(&unk_10118D3D0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
        LODWORD(v52) = dispatch thunk of static Equatable.== infix(_:_:)();
        v45 = *(v42 + 8);
        v45(v44, v21);
        sub_1000095E8(v15, &unk_101188920, &qword_100EBCC50);
        sub_1000095E8(v17, &unk_101188920, &qword_100EBCC50);
        v45(v25, v21);
        sub_1000095E8(v5, &unk_101188920, &qword_100EBCC50);
        if (v52)
        {
          goto LABEL_19;
        }

LABEL_12:
        if (qword_10117F7A0 != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        sub_1000060E4(v26, qword_101218E00);
        v27 = v53;
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();

        v30 = os_log_type_enabled(v28, v29);
        v55 = v27;
        if (v30)
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v56 = v32;
          *v31 = 136446210;
          v33 = v27;
          v34 = [v33 description];
          v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v37 = v36;

          v38 = sub_1000105AC(v35, v37, &v56);

          *(v31 + 4) = v38;
          _os_log_impl(&_mh_execute_header, v28, v29, "Reconfiguring playlist sidebar item for tab=%{public}s", v31, 0xCu);
          sub_10000959C(v32);
        }

        v39 = [v49 tabBarController];
        if (v39)
        {
          v40 = v39;
          v41 = [v39 sidebar];

          [v41 reconfigureItemForTab:v55];
        }

        goto LABEL_19;
      }

      sub_1000095E8(v15, &unk_101188920, &qword_100EBCC50);
      sub_1000095E8(v17, &unk_101188920, &qword_100EBCC50);
      (*(v54 + 8))(v25, v21);
    }

    sub_1000095E8(v5, &unk_101191420, &unk_100EC9120);
    goto LABEL_12;
  }
}

void sub_1003D8F5C(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v4 = v21 - v3;
  _s9PlaylistsVMa(0);
  __chkstk_darwin();
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_ignoreUserDefaultsPlaylistSortUpdate))
    {
    }

    else
    {
      v8 = Strong;
      sub_1000089F8(a1, v22, &unk_101183F30, qword_100EBF960);
      if (v23)
      {
        if (swift_dynamicCast())
        {
          v10 = v21[1];
          v9 = v21[2];
          type metadata accessor for JSONDecoder();
          swift_allocObject();
          JSONDecoder.init()();
          sub_100110448();
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();

          v11 = v22[0];
          v12 = v22[1];
          v13 = sub_1003DDCB8();
          v14 = *(*v13 + 96);
          swift_beginAccess();
          sub_1003E158C(v13 + v14, v6, _s9PlaylistsVMa);

          if (v12)
          {
            v15 = 256;
          }

          else
          {
            v15 = 0;
          }

          sub_100375B90(v15 | v11);
          v17 = v16;
          sub_1003E15F4(v6, _s9PlaylistsVMa);
          if ((v17 & 0xFF00) != 0x200)
          {
            v18 = type metadata accessor for TaskPriority();
            (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
            type metadata accessor for MainActor();
            v8 = v8;
            v19 = static MainActor.shared.getter();
            v20 = swift_allocObject();
            *(v20 + 16) = v19;
            *(v20 + 24) = &protocol witness table for MainActor;
            *(v20 + 32) = v8;
            *(v20 + 40) = v17;
            *(v20 + 41) = HIBYTE(v17) & 1;
            sub_1001F4CB8(0, 0, v4, &unk_100EC9FF8, v20);
          }

          sub_10002C064(v10, v9);
        }

        else
        {
        }
      }

      else
      {

        sub_1000095E8(v22, &unk_101183F30, qword_100EBF960);
      }
    }
  }
}

uint64_t sub_1003D9430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 64) = a5;
  *(v5 + 40) = a4;
  _s19PlaylistTabsRequestVMa(0);
  *(v5 + 48) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 56) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003D94F8, v7, v6);
}

uint64_t sub_1003D94F8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 64);

  v3 = sub_1003DDCB8();
  v4 = *(*v3 + 96);
  swift_beginAccess();
  sub_1003E158C(v3 + v4, v1, _s19PlaylistTabsRequestVMa);
  v5 = (v1 + *(_s9PlaylistsVMa(0) + 44));
  v6 = *v5;
  v7 = v5[1];
  *v5 = v2;
  v5[1] = HIBYTE(v2) & 1;
  if (v7)
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  sub_10018F8E4(v8 | v6);
  RequestResponse.Controller.request.setter(v1);

  v9 = *(v0 + 8);

  return v9();
}

double sub_1003D9610()
{
  sub_1000095E8(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_pinsObserver, &qword_10118D380, &qword_100EBDE20);

  sub_1000095E8(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_createdPlaylist, &unk_1011814D0, &qword_100EC12A0);

  return result;
}

id sub_1003D9750(__n128 a1)
{
  v2 = *(**CloudLibrary.StatusObserver.shared.unsafeMutableAddressor() + 224);

  v3 = v1;
  v2();

  v5.receiver = v3;
  v5.super_class = _s3TabCMa(0);
  return objc_msgSendSuper2(&v5, "dealloc");
}

BOOL sub_1003D99EC(void *a1)
{
  v2 = [a1 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (!v3)
  {
    return 1;
  }

  v4 = [a1 traitCollection];
  v5 = [v4 horizontalSizeClass];

  return v5 == 1;
}

uint64_t sub_1003D9A80()
{
  v1 = v0;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v3 = &v20 - v2;
  v4 = sub_10010FC20(&unk_101197280, &unk_100ED5ED0);
  v22 = *(v4 - 8);
  v23 = v4;
  __chkstk_darwin();
  v21 = &v20 - v5;
  v6 = sub_10010FC20(&qword_10118DFD0, &qword_100ECA058);
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin();
  v24 = &v20 - v7;
  v8 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_pinsObserver;
  swift_beginAccess();
  v27 = v8;
  sub_1000089F8(v1 + v8, v29, &qword_10118D380, &qword_100EBDE20);
  if (v30)
  {
    sub_100008FE4(v29, v28);
    sub_1000095E8(v29, &qword_10118D380, &qword_100EBDE20);
    sub_10000954C(v28, v28[3]);
    dispatch thunk of Cancellable.cancel()();
    sub_10000959C(v28);
  }

  else
  {
    sub_1000095E8(v29, &qword_10118D380, &qword_100EBDE20);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v29);

  MusicLibrary.pinsObserver.getter();

  v9 = dispatch thunk of MusicLibraryPinsObserver.pinsPublisher.getter();

  v29[0] = v9;
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v10 = static OS_dispatch_queue.main.getter();
  v28[0] = v10;
  v11 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  sub_10010FC20(&qword_10118BFE8, &qword_100ECBCC0);
  sub_100020674(&unk_101197290, &qword_10118BFE8, &qword_100ECBCC0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_10001C070(&qword_101184920, &qword_101182960, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v12 = v21;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v3, &qword_101182140, &unk_100EBD2A0);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10010FC20(&qword_10118DFD8, &qword_100ECA060);
  sub_100020674(&qword_10118BFF0, &unk_101197280, &unk_100ED5ED0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v13 = v23;
  v14 = v24;
  Publisher.map<A>(_:)();

  (*(v22 + 8))(v12, v13);
  *(swift_allocObject() + 16) = v1;
  sub_100020674(&qword_10118DFE0, &qword_10118DFD0, &qword_100ECA058, &protocol conformance descriptor for Publishers.Map<A, B>);
  v15 = v1;
  v16 = v26;
  v17 = Publisher<>.sink(receiveValue:)();

  (*(v25 + 8))(v14, v16);
  v30 = type metadata accessor for AnyCancellable();
  v31 = &protocol witness table for AnyCancellable;
  v29[0] = v17;
  v18 = v27;
  swift_beginAccess();
  sub_10006B010(v29, v1 + v18, &qword_10118D380, &qword_100EBDE20);
  return swift_endAccess();
}

void sub_1003DA034(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v93 = type metadata accessor for MusicPin.Item();
  v6 = *(v93 - 8);
  __chkstk_darwin();
  v92 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MusicPin();
  v85 = *(v8 - 8);
  __chkstk_darwin();
  v89 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v88 = &v83 - v10;
  __chkstk_darwin();
  v91 = &v83 - v11;
  v12 = sub_10010FC20(&unk_1011972A0, &qword_100ECBC60);
  v13 = *(v12 - 1);
  __chkstk_darwin();
  v15 = &v83 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = _swiftEmptyArrayStorage;
  if (!Strong)
  {
    goto LABEL_74;
  }

  v87 = a3;
  v90 = Strong;
  v84 = v6;
  if (qword_10117F7A0 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v18 = type metadata accessor for Logger();
    sub_1000060E4(v18, qword_101218E00);
    (*(v13 + 16))(v15, a1, v12);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v21 = os_log_type_enabled(v19, v20);
    v95 = v12;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v98[0] = v23;
      *v22 = 136446210;
      sub_100020674(&qword_10118DFC8, &unk_1011972A0, &qword_100ECBC60, &protocol conformance descriptor for MusicItemCollection<A>);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v12;
      v27 = v26;
      (*(v13 + 8))(v15, v25);
      v28 = sub_1000105AC(v24, v27, v98);

      *(v22 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v19, v20, "Received new pins from observer: %{public}s", v22, 0xCu);
      sub_10000959C(v23);
    }

    else
    {

      (*(v13 + 8))(v15, v12);
    }

    v17 = v91;
    v29 = v90;
    v30 = [*(v90 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_pinsTabGroup) children];
    sub_100009F78(0, &qword_101181F70, UITab_ptr);
    v94 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v86 = v29;
    v31 = [v86 tabBarController];
    a3 = v87;
    if (!v31)
    {
      break;
    }

    v32 = v31;
    v33 = [v31 selectedTab];

    if (!v33)
    {
      break;
    }

    _s6PinTabCMa(0);
    v34 = swift_dynamicCastClass();

    if (!v34)
    {
      break;
    }

    v12 = sub_100020674(&qword_1011972B0, &unk_1011972A0, &qword_100ECBC60, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (v98[0] != v97[0])
    {
      break;
    }

    v35 = [*(v86 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_facetsTabGroup) children];
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v98[0] = _swiftEmptyArrayStorage;
    if (v15 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
      if (!v36)
      {
LABEL_27:
        v41 = _swiftEmptyArrayStorage;
LABEL_28:

        v17 = v91;
        if ((v41 & 0x8000000000000000) != 0 || (v41 & 0x4000000000000000) != 0)
        {
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_36;
          }

LABEL_31:
          if ((v41 & 0xC000000000000001) != 0)
          {
            v42 = sub_1007E914C(0, v41);
          }

          else
          {
            if (!*(v41 + 16))
            {
              __break(1u);
              return;
            }

            v42 = *(v41 + 32);
          }

          v43 = v42;
        }

        else
        {
          if (*(v41 + 16))
          {
            goto LABEL_31;
          }

LABEL_36:

          v43 = 0;
        }

        v44 = [v86 tabBarController];
        if (v44)
        {
          v45 = v44;
          if (!v43)
          {
            v43 = *(*(v86 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_playlistSectionTab) + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_allPlaylistsTab);
          }

          [v45 setSelectedTab:v43];
        }

        else
        {
          v45 = v43;
        }

        break;
      }
    }

    else
    {
      v36 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v36)
      {
        goto LABEL_27;
      }
    }

    v37 = 0;
    v13 = v15 & 0xC000000000000001;
    v38 = (v15 & 0xFFFFFFFFFFFFFF8);
    v90 = (v15 & 0xFFFFFFFFFFFFFF8);
    v83 = v15 & 0xC000000000000001;
    while (1)
    {
      if (v13)
      {
        v39 = sub_1007E914C(v37, v15);
      }

      else
      {
        if (v37 >= *(v38 + 2))
        {
          goto LABEL_24;
        }

        v39 = *(v15 + 8 * v37 + 32);
      }

      v12 = v39;
      v40 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if ([v39 isHidden])
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v13 = v83;
        v38 = v90;
      }

      ++v37;
      if (v40 == v36)
      {
        v41 = v98[0];
        a3 = v87;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

  v46 = sub_100020674(&qword_1011972B0, &unk_1011972A0, &qword_100ECBC60, &protocol conformance descriptor for MusicItemCollection<A>);
  v47 = dispatch thunk of Collection.count.getter();
  if (!v47)
  {

    v17 = _swiftEmptyArrayStorage;
    goto LABEL_54;
  }

  v48 = v47;
  v96 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  dispatch thunk of Collection.startIndex.getter();
  if (v48 < 0)
  {
    goto LABEL_78;
  }

  v49 = (v85 + 16);
  v90 = (v84 + 8);
  v50 = (v85 + 8);
  v91 = v46;
  do
  {
    v58 = dispatch thunk of Collection.subscript.read();
    v59 = *v49;
    (*v49)(v17);
    v58(v97, 0);
    v60 = v17;
    v61 = v92;
    MusicPin.item.getter();
    KeyPath = swift_getKeyPath();
    v64 = sub_1002D14D8(v61, KeyPath, v94, v63);

    (*v90)(v61, v93);
    if (!v64)
    {
      goto LABEL_47;
    }

    v17 = v60;
    if ((sub_10032A06C(v60) & 1) == 0)
    {

LABEL_47:
      v51 = a1;
      v52 = v88;
      (v59)(v88, v60, v8);
      v53 = objc_allocWithZone(_s6PinTabCMa(0));
      (v59)(&v53[OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin], v52, v8);
      v54 = v89;
      (v59)(v89, v52, v8);
      sub_1007484FC(v54, v98);
      v55 = sub_10003622C(v98);
      sub_10032A8A4();

      v56 = *v50;
      v57 = v52;
      a1 = v51;
      (*v50)(v57, v8);
      v56(v60, v8);
      v17 = v60;
      goto LABEL_48;
    }

    (*v50)(v60, v8);
LABEL_48:
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    dispatch thunk of Collection.formIndex(after:)();
    --v48;
  }

  while (v48);

  v17 = v96;
  a3 = v87;
LABEL_54:
  v65 = v86;
  v66 = [v86 tabBarController];
  v67 = v65;
  if (v66)
  {
    v68 = v66;
    v69 = [v66 selectedTab];

    v67 = v65;
    if (v69)
    {
      _s6PinTabCMa(0);
      v95 = swift_dynamicCastClass();
      if (v95)
      {
        v90 = v69;
        if (v17 >> 62)
        {
          goto LABEL_79;
        }

        v92 = (v17 & 0xFFFFFFFFFFFFFF8);
        v94 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_59:
        v91 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
        swift_beginAccess();
        v70 = 0;
        v93 = v17 & 0xC000000000000001;
        v71 = (v85 + 16);
        v72 = (v85 + 8);
        while (v94 != v70)
        {
          if (v93)
          {
            v73 = v17;
            v74 = sub_1007E9990(v70, v17);
          }

          else
          {
            if (v70 >= *(v92 + 2))
            {
              goto LABEL_77;
            }

            v73 = v17;
            v74 = *(v17 + 8 * v70 + 32);
          }

          v75 = v74;
          if (__OFADD__(v70, 1))
          {
            __break(1u);
LABEL_77:
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            v92 = (v17 & 0xFFFFFFFFFFFFFF8);
            v94 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_59;
          }

          v76 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
          swift_beginAccess();
          v77 = *v71;
          v78 = v88;
          (*v71)(v88, &v75[v76], v8);
          v79 = v89;
          v77(v89, &v91[v95], v8);
          sub_1003E1338(&qword_101197100, &type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
          sub_1003E1338(qword_1011972F0, &type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
          LOBYTE(v76) = static MusicItem<>.==~ infix(_:_:)();

          v80 = *v72;
          (*v72)(v79, v8);
          v80(v78, v8);
          ++v70;
          v17 = v73;
          if (v76)
          {
            v82 = v90;
            v65 = v86;
            v69 = v86;
LABEL_71:
            a3 = v87;
            goto LABEL_72;
          }
        }

        v65 = v86;
        v81 = [v86 tabBarController];

        if (v81)
        {
          v69 = v90;
          v82 = sub_1002D1F90();

          [v81 setSelectedTab:v82];
          goto LABEL_71;
        }

        v67 = v90;
        a3 = v87;
      }

      else
      {
        v82 = v65;
LABEL_72:

        v67 = v69;
      }
    }
  }

LABEL_74:
  *a3 = v17;
}

uint64_t sub_1003DAE24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
  swift_beginAccess();
  v5 = type metadata accessor for MusicPin();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1003DAEB4(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for MusicPin();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin();
  v10 = &v16[-v9];
  v11 = *(v5 + 16);
  v11(&v16[-v9], a1, v4, v8);
  v12 = *a2;
  v13 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
  swift_beginAccess();
  (v11)(v7, v12 + v13, v4);
  swift_beginAccess();
  (*(v5 + 24))(v12 + v13, v10, v4);
  swift_endAccess();
  sub_100329AA8(v7);
  v14 = *(v5 + 8);
  v14(v7, v4);
  return (v14)(v10, v4);
}

void sub_1003DB05C(unint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_pinsTabGroup);
  if (*a1 >> 62)
  {
    [v2 setHidden:_CocoaArrayWrapper.endIndex.getter() == 0];
    sub_100009F78(0, &qword_101181F70, UITab_ptr);

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    [v2 setHidden:*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) == 0];

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100009F78(0, &qword_101181F70, UITab_ptr);
  }

  sub_100009F78(0, &qword_101181F70, UITab_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setChildren:isa];

  v4 = Array._bridgeToObjectiveC()().super.isa;
  [v2 setDisplayOrderIdentifiers:v4];

  if (qword_10117F678 != -1)
  {
    swift_once();
  }

  v5 = sub_10010BA00(&off_10109ABD8);
  sub_1003C6340(v5);

  if (qword_10117F7A8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000060E4(v6, qword_101218E18);

  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446210;
    _s6PinTabCMa(0);
    v10 = Array.description.getter();
    v12 = sub_1000105AC(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, oslog, v7, "Updated library pins group with pins: %{public}s", v8, 0xCu);
    sub_10000959C(v9);
  }
}

uint64_t sub_1003DB364()
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v2 = &v42 - v1;
  v3 = sub_10010FC20(&unk_1011972A0, &qword_100ECBC60);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v45 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v42 - v6;
  if (qword_10117F7B0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v9 = sub_1000060E4(v8, qword_101218E30);
  v10 = v0;
  v44 = v9;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = v4;
    v46 = v42;
    *v13 = 136446210;
    v14 = [*&v10[OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_pinsTabGroup] displayOrder];
    sub_100009F78(0, &qword_101181F70, UITab_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = Array.description.getter();
    v17 = v16;

    v18 = sub_1000105AC(v15, v17, &v46);

    *(v13 + 4) = v18;
    v19 = v12;
    v20 = &qword_10118D000;
    _os_log_impl(&_mh_execute_header, v11, v19, "Updating pins to reflect user display order=%{public}s", v13, 0xCu);
    sub_10000959C(v42);
    v4 = v43;

    v21 = &selRef_setPhotosHeaderMetadata_;
  }

  else
  {

    v21 = &selRef_setPhotosHeaderMetadata_;
    v20 = &qword_10118D000;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v46);

  MusicLibrary.pinsObserver.getter();

  dispatch thunk of MusicLibraryPinsObserver.pins.getter();

  sub_100020674(&qword_1011972B0, &unk_1011972A0, &qword_100ECBC60, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v22 = dispatch thunk of Collection.distance(from:to:)();
  v23 = *&v10[v20[469]];
  v24 = [v23 v21[447]];
  sub_100009F78(0, &qword_101181F70, UITab_ptr);
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v25 >> 62)
  {
    v26 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v22 == v26)
  {
    v27 = type metadata accessor for TaskPriority();
    (*(*(v27 - 8) + 56))(v2, 1, 1, v27);
    type metadata accessor for MainActor();
    v28 = v10;
    v29 = static MainActor.shared.getter();
    v30 = swift_allocObject();
    v30[2] = v29;
    v30[3] = &protocol witness table for MainActor;
    v30[4] = v28;
    sub_10086E3AC(0, 0, v2, &unk_100ECA050, v30);

    return (v4[1])(v7, v3);
  }

  else
  {
    v43 = v23;
    v32 = v45;
    (v4[2])(v45, v7, v3);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v46 = v44;
      *v35 = 136446210;
      sub_100020674(&qword_10118DFC8, &unk_1011972A0, &qword_100ECBC60, &protocol conformance descriptor for MusicItemCollection<A>);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      v39 = v4[1];
      v39(v32, v3);
      v40 = sub_1000105AC(v36, v38, &v46);

      *(v35 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v33, v34, "Unexpectedly found different number of newly ordered tabs. Resetting to currentlyOrderedPins=%{public}s", v35, 0xCu);
      sub_10000959C(v44);
    }

    else
    {

      v39 = v4[1];
      v39(v32, v3);
    }

    isa = Array._bridgeToObjectiveC()().super.isa;
    [v43 setDisplayOrderIdentifiers:isa];

    return (v39)(v7, v3);
  }
}

uint64_t sub_1003DBA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  v5 = type metadata accessor for MusicPin();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[24] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[25] = v7;
  v4[26] = v6;

  return _swift_task_switch(sub_1003DBB60, v7, v6);
}

uint64_t sub_1003DBB60()
{
  v68 = v0;
  v0[18] = &_swiftEmptySetSingleton;
  v2 = v0[19];
  v3 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_pinsObserver;
  swift_beginAccess();
  sub_1000089F8(v2 + v3, (v0 + 2), &qword_10118D380, &qword_100EBDE20);
  if (v0[5])
  {
    sub_100008FE4((v0 + 2), (v0 + 7));
    sub_1000095E8((v0 + 2), &qword_10118D380, &qword_100EBDE20);
    sub_10000954C(v0 + 7, v0[10]);
    dispatch thunk of Cancellable.cancel()();
    sub_10000959C(v0 + 7);
  }

  else
  {
    sub_1000095E8((v0 + 2), &qword_10118D380, &qword_100EBDE20);
  }

  v4 = [*(v0[19] + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_pinsTabGroup) displayOrder];
  sub_100009F78(0, &qword_101181F70, UITab_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v0[27] = v5;

  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[28] = v5 & 0xFFFFFFFFFFFFFF8;
  v0[29] = v6;
  v7 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary;
  v0[31] = 0;
  v0[32] = &_swiftEmptySetSingleton;
  v0[30] = v7;
  if (v6)
  {
    v8 = 0;
    v9 = 0;
    v64 = &_swiftEmptySetSingleton;
    v66 = v0;
    while (1)
    {
      v61 = v9;
      while (1)
      {
        v10 = v0[27];
        if ((v10 & 0xC000000000000001) != 0)
        {
          v11 = sub_1007E914C(v8, v10);
        }

        else
        {
          if (v8 >= *(v0[28] + 16))
          {
            goto LABEL_40;
          }

          v11 = *(v10 + 8 * v8 + 32);
        }

        v5 = v11;
        v12 = v8 + 1;
        v0[33] = v11;
        v0[34] = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:

          v54 = v64;
          v53 = v1;
LABEL_42:
          v55 = v0[22];
          v56 = v0[20];
          v0[41] = *(v0[19] + v0[30]);
          (v8)(v55, v53 + v9, v56);

          v57 = swift_task_alloc();
          v0[42] = v57;
          *v57 = v0;
          v57[1] = sub_1003DC3D0;
          v58 = v0[22];

          return MusicLibrary.movePin(_:position:)(v58, v54);
        }

        _s6PinTabCMa(0);
        v13 = swift_dynamicCastClass();
        v0[35] = v13;
        if (v13)
        {
          break;
        }

        if (qword_10117F7B0 != -1)
        {
          swift_once();
        }

        v14 = type metadata accessor for Logger();
        sub_1000060E4(v14, qword_101218E30);
        v1 = v5;
        v5 = Logger.logObject.getter();
        v9 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v5, v9))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v67 = v16;
          *v15 = 136446210;
          v1 = v1;
          v17 = v8;
          v18 = [v1 description];
          v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;

          v22 = sub_1000105AC(v19, v21, &v67);

          *(v15 + 4) = v22;
          v8 = v17;
          v0 = v66;
          _os_log_impl(&_mh_execute_header, v5, v9, "Found different Tab=%{public}s in pinsTabGroup", v15, 0xCu);
          sub_10000959C(v16);
        }

        else
        {
        }

        ++v8;
        if (v12 == v0[29])
        {
          goto LABEL_33;
        }
      }

      v9 = v13;
      v64 = v8;
      v23 = v0[23];
      v25 = v0[20];
      v24 = v0[21];
      v1 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
      v0[36] = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
      swift_beginAccess();
      v8 = *(v24 + 16);
      v0[37] = v8;
      v0[38] = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      (v8)(v23, v1 + v9, v25);
      v26 = v5;
      v27 = MusicPin.position.getter();
      v28 = *(v24 + 8);
      v0[39] = v28;
      v0[40] = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = v23;
      v30 = v28;
      v28(v29, v25);
      if (v27 != v61)
      {
        break;
      }

      if (__OFADD__(v61, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        swift_once();
LABEL_37:
        v40 = type metadata accessor for Logger();
        sub_1000060E4(v40, qword_101218E30);
        v41 = v26;
        v5 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v5, v42))
        {
          goto LABEL_41;
        }

        v65 = v5;
        v43 = v0[23];
        v44 = v0[20];
        v63 = v42;
        v45 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v67 = v62;
        *v45 = 136446466;
        v59 = v1;
        v60 = v30;
        v46 = v1 + v9;
        v47 = v8;
        (v8)(v43, v46, v44);
        sub_1003E1338(&qword_10118BB00, &type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
        v48 = v44;
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        v51 = v50;
        v60(v43, v48);
        v52 = sub_1000105AC(v49, v51, &v67);
        v53 = v59;
        v8 = v47;

        *(v45 + 4) = v52;
        *(v45 + 12) = 2050;
        v54 = v64;
        *(v45 + 14) = v64;
        _os_log_impl(&_mh_execute_header, v65, v63, "Moving pin=%{public}s to index=%{public}ld", v45, 0x16u);
        sub_10000959C(v62);

        goto LABEL_42;
      }

      v9 = v61 + 1;
      v30 = v0[39];
      v31 = v0[23];
      v32 = v0[20];
      (v0[37])(v31, v0[35] + v0[36], v32);
      v33 = MusicPin.position.getter();
      v30(v31, v32);
      sub_1003B3AB0(&v67, v33);
      v8 = v0[18];
      v64 = v8;
      if (*(v8 + 16))
      {
        v26 = (v8 + 56);
        v34 = ~(-1 << *(v8 + 32));
        v35 = v61 + 1;
        while (1)
        {
          v9 = v35;
          v36 = static Hasher._hash(seed:_:)();
          v37 = v36 & v34;
          if (((*(&v26->isa + (((v36 & v34) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v36 & v34)) & 1) == 0)
          {
            break;
          }

          while (*(*(v8 + 48) + 8 * v37) != v9)
          {
            v37 = (v37 + 1) & v34;
            if (((*(&v26->isa + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
            {
              goto LABEL_32;
            }
          }

          v35 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_47;
          }
        }
      }

LABEL_32:
      v5 = v0[33];

      v8 = v0[34];
      v0[31] = v9;
      v0[32] = v64;
      if (v8 == v0[29])
      {
        goto LABEL_33;
      }
    }

    if (qword_10117F7B0 != -1)
    {
      goto LABEL_48;
    }

    goto LABEL_37;
  }

LABEL_33:

  sub_1003D9A80();

  v38 = v0[1];

  return v38();
}

uint64_t sub_1003DC3D0()
{
  v2 = *v1;
  *(v2 + 344) = v0;

  v3 = *(v2 + 312);
  if (v0)
  {
    v4 = *(v2 + 176);
    v5 = *(v2 + 160);

    v3(v4, v5);

    v6 = *(v2 + 200);
    v7 = *(v2 + 208);
    v8 = sub_1003DCC64;
  }

  else
  {
    v3(*(v2 + 176), *(v2 + 160));

    v6 = *(v2 + 200);
    v7 = *(v2 + 208);
    v8 = sub_1003DC584;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_1003DC584()
{
  v59 = v0;
  v3 = *(v0 + 248);
  while (2)
  {
    log = v3;
    v4 = *(v0 + 312);
    v5 = *(v0 + 184);
    v6 = *(v0 + 160);
    (*(v0 + 296))(v5, *(v0 + 280) + *(v0 + 288), v6);
    v7 = MusicPin.position.getter();
    v4(v5, v6);
    sub_1003B3AB0(&v58, v7);
    v8 = *(v0 + 144);
    v53 = v8;
    if (*(v8 + 16))
    {
      v9 = v8 + 56;
      v10 = ~(-1 << *(v8 + 32));
      v11 = log;
      while (1)
      {
        log = v11;
        v12 = static Hasher._hash(seed:_:)();
        v13 = v12 & v10;
        if (((*(v9 + (((v12 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v10)) & 1) == 0)
        {
          break;
        }

        while (*(*(v53 + 48) + 8 * v13) != log)
        {
          v13 = (v13 + 1) & v10;
          if (((*(v9 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        v11 = (&log->isa + 1);
        if (__OFADD__(log, 1))
        {
          __break(1u);
LABEL_41:
          swift_once();
          goto LABEL_33;
        }
      }
    }

LABEL_11:
    v14 = *(v0 + 264);

    v15 = *(v0 + 272);
    *(v0 + 248) = log;
    *(v0 + 256) = v53;
    if (v15 == *(v0 + 232))
    {
      goto LABEL_29;
    }

    while (1)
    {
      v16 = *(v0 + 216);
      if ((v16 & 0xC000000000000001) != 0)
      {
        v17 = sub_1007E914C(v15, v16);
      }

      else
      {
        if (v15 >= *(*(v0 + 224) + 16))
        {
          goto LABEL_36;
        }

        v17 = *(v16 + 8 * v15 + 32);
      }

      v14 = v17;
      v18 = v15 + 1;
      *(v0 + 264) = v17;
      *(v0 + 272) = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      _s6PinTabCMa(0);
      v19 = swift_dynamicCastClass();
      *(v0 + 280) = v19;
      if (v19)
      {
        break;
      }

      if (qword_10117F7B0 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_1000060E4(v20, qword_101218E30);
      v21 = v14;
      v14 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v22))
      {
        v57 = v15;
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v58 = v24;
        *v23 = 136446210;
        v25 = v21;
        v26 = [v25 description];
        v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        v4 = sub_1000105AC(v1, v28, &v58);

        *(v23 + 4) = v4;
        _os_log_impl(&_mh_execute_header, v14, v22, "Found different Tab=%{public}s in pinsTabGroup", v23, 0xCu);
        sub_10000959C(v24);

        v15 = v57;
      }

      else
      {
      }

      ++v15;
      if (v18 == *(v0 + 232))
      {
        goto LABEL_29;
      }
    }

    v57 = v15;
    v29 = *(v0 + 184);
    v31 = *(v0 + 160);
    v30 = *(v0 + 168);
    v4 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
    *(v0 + 288) = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
    v32 = v19;
    swift_beginAccess();
    v1 = *(v30 + 16);
    *(v0 + 296) = v1;
    *(v0 + 304) = (v30 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v53 = v32;
    v1(v29, v4 + v32, v31);
    v7 = v14;
    v33 = MusicPin.position.getter();
    v2 = *(v30 + 8);
    *(v0 + 312) = v2;
    *(v0 + 320) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v2(v29, v31);
    if (v33 == log)
    {
      v3 = (&log->isa + 1);
      if (!__OFADD__(log, 1))
      {
        continue;
      }

      __break(1u);
LABEL_29:

      sub_1003D9A80();

      v34 = *(v0 + 8);

      return v34();
    }

    break;
  }

  if (qword_10117F7B0 != -1)
  {
    goto LABEL_41;
  }

LABEL_33:
  v36 = type metadata accessor for Logger();
  sub_1000060E4(v36, qword_101218E30);
  v37 = v7;
  v14 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  v56 = v38;
  if (os_log_type_enabled(v14, v38))
  {
    loga = v14;
    v39 = *(v0 + 184);
    v40 = *(v0 + 160);
    buf = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v58 = v52;
    *buf = 136446466;
    v1(v39, v4 + v53, v40);
    sub_1003E1338(&qword_10118BB00, &type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
    v41 = v39;
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    v2(v41, v40);
    v45 = sub_1000105AC(v42, v44, &v58);

    *(buf + 4) = v45;
    *(buf + 6) = 2050;
    v46 = v57;
    *(buf + 14) = v57;
    _os_log_impl(&_mh_execute_header, loga, v56, "Moving pin=%{public}s to index=%{public}ld", buf, 0x16u);
    sub_10000959C(v52);
  }

  else
  {
LABEL_37:

    v46 = v57;
  }

  v47 = *(v0 + 176);
  v48 = *(v0 + 160);
  *(v0 + 328) = *(*(v0 + 152) + *(v0 + 240));
  v1(v47, v4 + v53, v48);

  v49 = swift_task_alloc();
  *(v0 + 336) = v49;
  *v49 = v0;
  v49[1] = sub_1003DC3D0;
  v50 = *(v0 + 176);

  return MusicLibrary.movePin(_:position:)(v50, v46);
}

uint64_t sub_1003DCC64()
{
  v1 = *(v0 + 264);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t *sub_1003DCCEC()
{
  v1 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab____lazy_storage___menuTabElementsController;
  if (*(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab____lazy_storage___menuTabElementsController))
  {
    v2 = *(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab____lazy_storage___menuTabElementsController);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_facetsTabGroup);
    type metadata accessor for MusicLibrary();
    v8[0] = v3;
    v8[1] = static MusicLibrary.shared.getter();
    sub_10010FC20(&qword_10118DFC0, &qword_100ECA040);
    swift_allocObject();
    v2 = RequestResponse.Controller.init(request:)(v8, v4, v5, v6);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t *sub_1003DCDB4()
{
  v1 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab____lazy_storage___editableMenuController;
  if (*(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab____lazy_storage___editableMenuController))
  {
    v2 = *(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab____lazy_storage___editableMenuController);
  }

  else
  {

    static Library.Menu.Request.with(_:)(sub_1003E16C4, v7);

    sub_10010FC20(&unk_101197030, &unk_100ECAA00);
    v3 = swift_allocObject();
    v2 = RequestResponse.Controller.init(request:)(v7, v3, v4, v5);
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1003DCE8C(uint64_t a1)
{
  sub_10010FC20(&unk_101182EA0, &unk_100EBE980);
  *&v3 = __chkstk_darwin().n128_u64[0];
  v73 = &v66 - v4;
  v5 = *(v1 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_facetsTabGroup);
  v6 = [v5 displayOrder];
  v7 = sub_100009F78(0, &qword_101181F70, UITab_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    v71 = v1;
    v72 = a1;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v71 = v1;
    v72 = a1;
    if (v9)
    {
LABEL_3:
      v76[0] = _swiftEmptyArrayStorage;
      sub_100015C04(0, v9 & ~(v9 >> 63), 0);
      if (v9 < 0)
      {
        __break(1u);
        return;
      }

      v69 = v5;
      v70 = v7;
      v10 = 0;
      v11 = v76[0];
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v12 = sub_1007E914C(v10, v8);
        }

        else
        {
          v12 = *(v8 + 8 * v10 + 32);
        }

        v13 = v12;
        v14 = [v12 identifier];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v76[0] = v11;
        v19 = v11[2];
        v18 = v11[3];
        if (v19 >= v18 >> 1)
        {
          sub_100015C04((v18 > 1), v19 + 1, 1);
          v11 = v76[0];
        }

        ++v10;
        v11[2] = v19 + 1;
        v20 = &v11[2 * v19];
        v20[4] = v15;
        v20[5] = v17;
      }

      while (v9 != v10);

      v5 = v69;
      goto LABEL_14;
    }
  }

  v11 = _swiftEmptyArrayStorage;
LABEL_14:
  v21 = [v5 children];
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (qword_10117F7B0 != -1)
  {
LABEL_41:
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  v24 = sub_1000060E4(v23, qword_101218E30);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  v27 = os_log_type_enabled(v25, v26);
  v69 = v24;
  v70 = v22;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v76[0] = swift_slowAlloc();
    *v28 = 136446466;
    v29 = Array.description.getter();
    v31 = sub_1000105AC(v29, v30, v76);

    *(v28 + 4) = v31;
    *(v28 + 12) = 2082;
    v32 = Array.description.getter();
    v34 = sub_1000105AC(v32, v33, v76);

    *(v28 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v25, v26, "Received menu update request with tab display order identifiers=%{public}s, updated visibility for tabs=%{public}s", v28, 0x16u);
    swift_arrayDestroy();
  }

  v35 = v73;
  v36 = v11[2];
  if (!v36)
  {
    v39 = _swiftEmptyArrayStorage;
    goto LABEL_36;
  }

  v37 = 0;
  v38 = v11 + 5;
  v66 = v36 - 1;
  v39 = _swiftEmptyArrayStorage;
  v67 = v11 + 5;
  do
  {
    v68 = v39;
    v40 = &v38[2 * v37];
    v22 = v37;
    while (1)
    {
      if (v22 >= v11[2])
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v41 = *(v40 - 1);
      v42 = *v40;
      v76[0] = v41;
      v76[1] = v42;
      v74 = 0xD000000000000014;
      v75 = 0x8000000100E3E560;
      v43 = type metadata accessor for Locale();
      (*(*(v43 - 8) + 56))(v35, 1, 1, v43);
      sub_100009838();

      StringProtocol.range<A>(of:options:range:locale:)();
      v45 = v44;
      v47 = v46;
      sub_1000095E8(v35, &unk_101182EA0, &unk_100EBE980);
      if (v47)
      {

        goto LABEL_21;
      }

      v48 = HIBYTE(v42) & 0xF;
      if ((v42 & 0x2000000000000000) == 0)
      {
        v48 = v41 & 0xFFFFFFFFFFFFLL;
      }

      if (4 * v48 < v45 >> 14)
      {
        goto LABEL_40;
      }

      String.subscript.getter();

      v49 = static String._fromSubstring(_:)();
      v51 = v50;
      v35 = v73;

      v77._countAndFlagsBits = v49;
      v77._object = v51;
      v52 = sub_1002CF218(v77);
      if (v52 != 13)
      {
        break;
      }

LABEL_21:
      ++v22;
      v40 += 2;
      if (v36 == v22)
      {
        v39 = v68;
        goto LABEL_36;
      }
    }

    v53 = v52;
    v39 = v68;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_10049A0A4(0, *(v39 + 2) + 1, 1, v39);
    }

    v55 = *(v39 + 2);
    v54 = *(v39 + 3);
    if (v55 >= v54 >> 1)
    {
      v39 = sub_10049A0A4((v54 > 1), v55 + 1, 1, v39);
    }

    v37 = v22 + 1;
    *(v39 + 2) = v55 + 1;
    v39[v55 + 32] = v53;
    v38 = v67;
  }

  while (v66 != v22);
LABEL_36:

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v76[0] = v59;
    *v58 = 136446210;
    v60 = Array.description.getter();
    v62 = sub_1000105AC(v60, v61, v76);

    *(v58 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v56, v57, "Updating editable library menu with mapped ordered identifiers=%{public}s", v58, 0xCu);
    sub_10000959C(v59);
  }

  v63 = v72;
  v64 = v70;
  sub_1003DCDB4();
  v65 = swift_allocObject();
  v65[2] = v39;
  v65[3] = v63;
  v65[4] = v64;

  RequestResponse.Controller.setNeedsReload(_:)(sub_1003E16B8, v65);
}

void sub_1003DD624(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  RequestResponse.Revision.content.getter(v27);
  if (*v27)
  {
    *v26 = *v27;
    *&v26[8] = *&v27[8];
    *&v26[24] = *&v27[24];
    *&v26[40] = *&v27[40];

    sub_1007ED934(a3, v26, a4, a5);

    *v27 = *v26;
    *&v27[16] = *&v26[16];
    *&v27[32] = *&v26[32];
    v12 = *&v26[8];
    v32[0] = *v26;
    v30 = *&v26[24];
    v31 = *&v26[16];
    v28 = *&v26[40];
    v29 = *&v26[32];
    sub_1000089F8(v32, v24, &qword_10118DFB8, &qword_100ECA038);
    v13 = v12;
    sub_1000089F8(&v31, v24, &qword_10118DFB8, &qword_100ECA038);
    sub_1000089F8(&v30, v24, &qword_101196FE0, &qword_100ED5CD0);
    sub_1000089F8(&v29, v24, &qword_10118DFB8, &qword_100ECA038);
    sub_1000089F8(&v28, v24, &qword_101196FE0, &qword_100ED5CD0);
    Library.Menu.persist()();
    sub_1000095E8(v32, &qword_10118DFB8, &qword_100ECA038);

    sub_1000095E8(&v31, &qword_10118DFB8, &qword_100ECA038);
    sub_1000095E8(&v30, &qword_101196FE0, &qword_100ED5CD0);
    sub_1000095E8(&v29, &qword_10118DFB8, &qword_100ECA038);
    sub_1000095E8(&v28, &qword_101196FE0, &qword_100ED5CD0);
    if (qword_10117F7B0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000060E4(v14, qword_101218E30);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136446210;
      v24[0] = *v27;
      v24[1] = *&v27[16];
      v24[2] = *&v27[32];
      sub_1000089F8(v32, v23, &qword_10118DFB8, &qword_100ECA038);
      v22 = v13;
      sub_1000089F8(&v31, v23, &qword_10118DFB8, &qword_100ECA038);
      sub_1000089F8(&v30, v23, &qword_101196FE0, &qword_100ED5CD0);
      sub_1000089F8(&v29, v23, &qword_10118DFB8, &qword_100ECA038);
      sub_1000089F8(&v28, v23, &qword_101196FE0, &qword_100ED5CD0);
      v19 = String.init<A>(describing:)();
      v21 = sub_1000105AC(v19, v20, &v25);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Successfully saved library menu edits %{public}s", v17, 0xCu);
      sub_10000959C(v18);

      sub_1000095E8(v32, &qword_10118DFB8, &qword_100ECA038);
      sub_1000095E8(&v31, &qword_10118DFB8, &qword_100ECA038);
      sub_1000095E8(&v30, &qword_101196FE0, &qword_100ED5CD0);
      sub_1000095E8(&v29, &qword_10118DFB8, &qword_100ECA038);
    }

    else
    {

      sub_1000095E8(v32, &qword_10118DFB8, &qword_100ECA038);
      sub_1000095E8(&v31, &qword_10118DFB8, &qword_100ECA038);
      sub_1000095E8(&v30, &qword_101196FE0, &qword_100ED5CD0);
      sub_1000095E8(&v29, &qword_10118DFB8, &qword_100ECA038);
    }

    sub_1000095E8(&v28, &qword_101196FE0, &qword_100ED5CD0);
  }

  else
  {
    if (qword_10117F7B0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000060E4(v8, qword_101218E30);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to load editable Library Menu", v11, 2u);
    }
  }
}

uint64_t *sub_1003DDCB8()
{
  v1 = _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin();
  v3 = (&v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = _s9PlaylistsVMa(0);
  __chkstk_darwin();
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v47 - v7;
  _s19PlaylistTabsRequestVMa(0);
  __chkstk_darwin();
  if (*(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab____lazy_storage___playlistsTabsController))
  {
    v11 = *(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab____lazy_storage___playlistsTabsController);
  }

  else
  {
    v50 = v10;
    v51 = v8;
    v52 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v53 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab____lazy_storage___playlistsTabsController;
    v54 = v0;
    v12 = *(v1 + 20);
    v13 = type metadata accessor for Playlist.Folder();
    (*(*(v13 - 8) + 56))(v3 + v12, 1, 1, v13);
    if (qword_10117F5D8 != -1)
    {
      swift_once();
    }

    *v3 = qword_101218AB8;
    *(v3 + *(v1 + 24)) = 0;
    type metadata accessor for MusicLibrary();

    *v6 = static MusicLibrary.shared.getter();
    *(v6 + 2) = 0;
    v6[24] = 1;
    v14 = &v6[v4[9]];
    *v14 = 0;
    *(v14 + 1) = 0xE000000000000000;
    v49 = v4[10];
    *&v6[v49] = &_swiftEmptySetSingleton;
    v15 = &v6[v4[11]];
    *v15 = 263;
    v16 = v4[8];
    sub_1003E158C(v3, &v6[v16], _s9PlaylistsV5ScopeVMa);
    *(v6 + 4) = 256;
    v17 = objc_opt_self();
    v18 = [v17 standardUserDefaults];
    if (qword_10117F298 != -1)
    {
      swift_once();
    }

    v19 = sub_1000060E4(v1, qword_101218730);
    v48 = v16;
    v20 = sub_1001982EC(&v6[v16], v19);
    v21 = "LibraryPlaylists";
    if (v20)
    {
      v22 = 0xD000000000000011;
    }

    else
    {
      v22 = 0xD000000000000010;
    }

    v47 = "LibraryPlaylists";
    if ((v20 & 1) == 0)
    {
      v21 = "v32@0:8@16@24";
    }

    v55 = v22;
    v56 = v21 | 0x8000000000000000;

    v23._countAndFlagsBits = 0x53746E65746E6F43;
    v23._object = 0xEB0000000074726FLL;
    String.append(_:)(v23);

    sub_100110448();
    sub_10011049C();
    NSUserDefaults.decodeValue<A>(_:forKey:)(&_s11ContentSortVN, &v55);

    sub_100375B90(v55);
    if ((v24 & 0xFF00) == 0x200 && (v25 = sub_1001982EC(v3, v19), v24 = sub_10045FDA0(v25 & 1 | 0xFFFFFF80), (v24 & 0xFF00) == 0x200))
    {
      LOBYTE(v26) = 1;
      LOBYTE(v24) = 7;
    }

    else
    {
      v26 = (v24 >> 8) & 1;
    }

    v27 = v48;
    *v15 = v24;
    v15[1] = v26;
    v28 = [v17 standardUserDefaults];
    v29 = sub_1001982EC(&v6[v27], v19);
    if (v29)
    {
      v30 = 0xD000000000000011;
    }

    else
    {
      v30 = 0xD000000000000010;
    }

    v31 = v47;
    if ((v29 & 1) == 0)
    {
      v31 = "v32@0:8@16@24";
    }

    v32 = v31 | 0x8000000000000000;
    v33 = sub_10010FC20(&unk_10118CD70, &qword_100EBE248);
    v55 = v30;
    v56 = v32;

    v34._countAndFlagsBits = 0x704F7265746C6946;
    v34._object = 0xEC0000006E6F6974;
    String.append(_:)(v34);

    sub_100178DD8(&unk_101182910, sub_100178D84, &protocol conformance descriptor for <> Set<A>);
    sub_100178DD8(&unk_101182920, sub_100178E50, &protocol conformance descriptor for <> Set<A>);
    NSUserDefaults.decodeValue<A>(_:forKey:)(v33, &v55);

    v35 = v55;
    if (!v55)
    {
      v36 = sub_10018F3F4();
      v37 = Optional<A>.convertToSet.getter(v36);
      if (v37)
      {
        v35 = v37;
      }

      else
      {
        v35 = &_swiftEmptySetSingleton;
      }
    }

    v38 = sub_10018F5B8();
    v39 = sub_1003AE5C4(v38, v35);

    sub_1003E15F4(v3, _s9PlaylistsV5ScopeVMa);
    *&v6[v49] = v39;
    v40 = v51;
    sub_1003E1654(v6, v51);
    v41 = v40;
    v42 = v52;
    sub_1003E1654(v41, v52);
    *(v42 + *(v50 + 20)) = 0;
    sub_10010FC20(&qword_10118DFB0, &qword_100ECA030);
    swift_allocObject();
    v11 = RequestResponse.Controller.init(request:)(v42, v43, v44, v45);
    *(v54 + v53) = v11;
  }

  return v11;
}

uint64_t sub_1003DE2D8(char *a1)
{
  v2 = v1;
  v46 = a1;
  v3 = sub_10010FC20(&unk_1011A4980, &unk_100ED53C0);
  __chkstk_darwin();
  v5 = &v37 - v4;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v44 = &v37 - v8;
  __chkstk_darwin();
  v10 = &v37 - v9;
  __chkstk_darwin();
  v12 = &v37 - v11;
  v13 = type metadata accessor for Playlist();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v42 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v37 - v16;
  v18 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_createdPlaylist;
  swift_beginAccess();
  v43 = v18;
  v45 = v2;
  sub_1000089F8(v2 + v18, v12, &unk_1011814D0, &qword_100EC12A0);
  v19 = *(v14 + 48);
  if (v19(v12, 1, v13) == 1)
  {
    return sub_1000095E8(v12, &unk_1011814D0, &qword_100EC12A0);
  }

  v40 = v7;
  v37 = *(v14 + 32);
  v37(v17, v12, v13);
  v21 = *(v14 + 16);
  v41 = v17;
  v21(v10, v17, v13);
  v38 = *(v14 + 56);
  v39 = v14 + 56;
  v38(v10, 0, 1, v13);
  v22 = *(v3 + 48);
  sub_1000089F8(v10, v5, &unk_1011814D0, &qword_100EC12A0);
  sub_1000089F8(v46, &v5[v22], &unk_1011814D0, &qword_100EC12A0);
  if (v19(v5, 1, v13) == 1)
  {
    sub_1000095E8(v10, &unk_1011814D0, &qword_100EC12A0);
    if (v19(&v5[v22], 1, v13) == 1)
    {
      sub_1000095E8(v5, &unk_1011814D0, &qword_100EC12A0);
      return (*(v14 + 8))(v41, v13);
    }

    goto LABEL_8;
  }

  v23 = v44;
  sub_1000089F8(v5, v44, &unk_1011814D0, &qword_100EC12A0);
  if (v19(&v5[v22], 1, v13) == 1)
  {
    sub_1000095E8(v10, &unk_1011814D0, &qword_100EC12A0);
    (*(v14 + 8))(v23, v13);
LABEL_8:
    v24 = v14;
    sub_1000095E8(v5, &unk_1011A4980, &unk_100ED53C0);
    v25 = v45;
    goto LABEL_9;
  }

  v31 = v42;
  v37(v42, &v5[v22], v13);
  sub_1003E1338(&unk_1011A4660, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
  v46 = v5;
  v32 = v14;
  v33 = dispatch thunk of static Equatable.== infix(_:_:)();
  v25 = v45;
  v34 = v23;
  v35 = v33;
  v24 = v32;
  v36 = *(v32 + 8);
  v36(v31, v13);
  sub_1000095E8(v10, &unk_1011814D0, &qword_100EC12A0);
  v36(v34, v13);
  sub_1000095E8(v46, &unk_1011814D0, &qword_100EC12A0);
  if (v35)
  {
    return (v36)(v41, v13);
  }

LABEL_9:
  v26 = v41;
  v27 = v25;
  v28 = sub_1003DEB98(v41);
  result = (*(v24 + 8))(v26, v13);
  if (v28)
  {
    v29 = v40;
    v38(v40, 1, 1, v13);
    v30 = v43;
    swift_beginAccess();
    sub_10006B010(v29, v27 + v30, &unk_1011814D0, &qword_100EC12A0);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1003DE89C(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v16[-v6];
  type metadata accessor for PlaylistCreation.FlowResult(0);
  __chkstk_darwin();
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Playlist();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1003E158C(a1, v9, type metadata accessor for PlaylistCreation.FlowResult);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_1003E15F4(v9, type metadata accessor for PlaylistCreation.FlowResult);
  }

  (*(v11 + 32))(v13, v9, v10);
  (*(v11 + 16))(v7, v13, v10);
  (*(v11 + 56))(v7, 0, 1, v10);
  v15 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_createdPlaylist;
  swift_beginAccess();
  sub_1000089F8(a2 + v15, v5, &unk_1011814D0, &qword_100EC12A0);
  swift_beginAccess();
  sub_1003E12C8(v7, a2 + v15);
  swift_endAccess();
  sub_1003DE2D8(v5);
  sub_1000095E8(v5, &unk_1011814D0, &qword_100EC12A0);
  sub_1000095E8(v7, &unk_1011814D0, &qword_100EC12A0);
  return (*(v11 + 8))(v13, v10);
}

BOOL sub_1003DEB98(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UITabBarControllerSidebar.ScrollTarget();
  v69 = *(v4 - 8);
  v70 = v4;
  __chkstk_darwin();
  v68 = (&v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Playlist();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v63 - v10;
  if (qword_10117F7B8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000060E4(v12, qword_101218E48);
  v13 = *(v7 + 16);
  v71 = a1;
  v65 = v13;
  v13(v11, a1, v6);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v67 = v7;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v64 = v1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v63 = v9;
    v20 = v19;
    v72 = v19;
    *v18 = 136446210;
    sub_1003E1338(&qword_101184200, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v7;
    v24 = v23;
    v66 = *(v22 + 8);
    v66(v11, v6);
    v25 = sub_1000105AC(v21, v24, &v72);

    *(v18 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v14, v15, "Attempting to select playlist tab: %{public}s", v18, 0xCu);
    sub_10000959C(v20);
    v9 = v63;

    v2 = v64;
  }

  else
  {

    v66 = *(v7 + 8);
    v66(v11, v6);
  }

  v26 = [*&v2[OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_playlistSectionTab] children];
  sub_100009F78(0, &qword_101181F70, UITab_ptr);
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  KeyPath = swift_getKeyPath();
  v29 = v71;
  v30 = sub_1002D0F2C(v71, KeyPath, v27);

  if (v30)
  {
    v31 = v30;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v72 = v35;
      *v34 = 136446210;
      v36 = v31;
      v71 = v30;
      v37 = v2;
      v38 = v36;
      v39 = [v36 description];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43 = sub_1000105AC(v40, v42, &v72);

      *(v34 + 4) = v43;
      v2 = v37;
      v30 = v71;
      _os_log_impl(&_mh_execute_header, v32, v33, "Selecting playlist tab: %{public}s", v34, 0xCu);
      sub_10000959C(v35);
    }

    v44 = [v2 tabBarController];
    if (v44)
    {
      v45 = v44;
      [v44 setSelectedTab:v31];
    }

    v46 = [v2 tabBarController];
    if (v46)
    {
      v47 = v46;
      v48 = [v46 sidebar];

      v50 = v68;
      v49 = v69;
      *v68 = v31;
      v51 = v70;
      (*(v49 + 104))(v50, enum case for UITabBarControllerSidebar.ScrollTarget.tab(_:), v70);
      v52 = v31;
      UITabBarControllerSidebar.scroll(to:animated:)();

      (*(v49 + 8))(v50, v51);
    }

    else
    {
    }
  }

  else
  {
    v65(v9, v29, v6);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = v9;
      v57 = swift_slowAlloc();
      v72 = v57;
      *v55 = 136446210;
      sub_1003E1338(&qword_101184200, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      v66(v56, v6);
      v61 = sub_1000105AC(v58, v60, &v72);

      *(v55 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v53, v54, "Unable to select playlist tab: %{public}s: couldn't find playlist", v55, 0xCu);
      sub_10000959C(v57);
    }

    else
    {

      v66(v9, v6);
    }
  }

  return v30 != 0;
}

id sub_1003DF2C4()
{
  v1 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab____lazy_storage___playlistSortButton;
  v2 = *(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab____lazy_storage___playlistSortButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab____lazy_storage___playlistSortButton);
  }

  else
  {
    v4 = sub_1003DF328(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1003DF328(uint64_t a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v1 = type metadata accessor for UIButton.Configuration();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v15[-v5];
  sub_1002D276C();
  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() systemImageNamed:v7];

  UIButton.Configuration.image.setter();
  sub_100009F78(0, &qword_101183A18, UIButton_ptr);
  (*(v2 + 16))(v4, v6, v1);
  v9 = UIButton.init(configuration:primaryAction:)();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1003E1578;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003D57B8;
  aBlock[3] = &unk_1010AA720;
  v11 = _Block_copy(aBlock);

  [v9 _setMenuProvider:v11];
  _Block_release(v11);
  [v9 setShowsMenuAsPrimaryAction:1];
  [v9 setPointerInteractionEnabled:1];
  v12 = v9;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v13 = String._bridgeToObjectiveC()();

  [v12 setAccessibilityLabel:v13];

  (*(v2 + 8))(v6, v1);
  return v12;
}

Class sub_1003DF6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s9PlaylistsVMa(0);
  __chkstk_darwin();
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = sub_1003DDCB8();

    v7 = *(*v6 + 96);
    swift_beginAccess();
    sub_1003E158C(v6 + v7, v4, _s9PlaylistsVMa);

    v8 = swift_allocObject();
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    Strong = sub_100211D00(sub_1003E1580, v8).super.super.isa;

    sub_1003E15F4(v4, _s9PlaylistsVMa);
  }

  return Strong;
}

void sub_1003DF844(__int16 a1, uint64_t a2)
{
  _s19PlaylistTabsRequestVMa(0);
  __chkstk_darwin();
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_ignoreUserDefaultsPlaylistSortUpdate] = 1;
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = sub_1003DDCB8();

    v9 = *(*v8 + 96);
    swift_beginAccess();
    sub_1003E158C(v8 + v9, v4, _s19PlaylistTabsRequestVMa);
    v10 = &v4[*(_s9PlaylistsVMa(0) + 44)];
    v11 = *v10;
    v12 = v10[1];
    *v10 = a1;
    v10[1] = HIBYTE(a1) & 1;
    if (v12)
    {
      v13 = 256;
    }

    else
    {
      v13 = 0;
    }

    sub_10018F8E4(v13 | v11);
    RequestResponse.Controller.request.setter(v4);
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v14[OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_ignoreUserDefaultsPlaylistSortUpdate] = 0;
  }
}

double sub_1003DF9EC(uint64_t a1)
{
  v2 = v1;
  v4 = &v94;
  v84 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin();
  v83 = v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v7 = v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v9 = v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s19PlaylistTabsRequestVMa(0);
  __chkstk_darwin();
  v11 = v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary;
  v94 = *(v2 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary);
  v88 = a1;
  v13 = type metadata accessor for MusicLibrary();
  sub_1003E1338(&qword_10118CE20, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v82 = v11;
    v80[0] = v9;
    v80[2] = v13;
    v15 = *&v12[v2];
    v16 = qword_10117F7A0;

    if (v16 != -1)
    {
      goto LABEL_36;
    }

    while (1)
    {
      v17 = type metadata accessor for Logger();
      sub_1000060E4(v17, qword_101218E00);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      v20 = os_log_type_enabled(v18, v19);
      v80[1] = v12;
      v81 = v7;
      if (v20)
      {
        v21 = v2;
        v22 = swift_slowAlloc();
        *v4 = swift_slowAlloc();
        *v22 = 136446466;
        v23 = MusicLibrary.name.getter();
        v25 = sub_1000105AC(v23, v24, &v94);

        *(v22 + 4) = v25;
        *(v22 + 12) = 2082;
        v26 = MusicLibrary.id.getter();
        v28 = sub_1000105AC(v26, v27, &v94);

        *(v22 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v18, v19, "Selected music library changed to %{public}s (%{public}s)", v22, 0x16u);
        swift_arrayDestroy();

        v2 = v21;
      }

      v29 = sub_1003DCDB4();
      Library.Menu.Request.MediaLibrarySource.init(_:)();
      v31 = v30;
      v33 = v32;
      swift_beginAccess();
      v34 = *(v29 + 1);
      v35 = *(v29 + 2);
      v36 = *(v29 + 3);
      v37 = *(v29 + 5);
      *(v4 + 48) = *(v29 + 4);
      *(v4 + 64) = v37;
      *(v4 + 16) = v35;
      *(v4 + 32) = v36;
      *v4 = v34;
      v38 = *v4;
      v39 = v95;
      v40 = *(v29 + 25);
      v41 = *(v29 + 41);
      v42 = *(v29 + 57);
      v43 = *(v29 + 73);
      *(v4 + 143) = v29[11];
      *(v4 + 112) = v42;
      *(v4 + 128) = v43;
      *(v4 + 80) = v40;
      *(v4 + 96) = v41;
      LOBYTE(v87[0]) = v33 & 1;

      sub_1003E1510(&v94, &v88);
      sub_1003E156C(v38, v39);
      v88 = v31;
      v89 = v87[0];
      v44 = *(v4 + 80);
      v91 = *(v4 + 96);
      v45 = *(v4 + 128);
      v92 = *(v4 + 112);
      v93[0] = v45;
      *(v93 + 15) = *(v4 + 143);
      v90 = v44;
      RequestResponse.Controller.request.setter(&v88);

      sub_1003D9A80();
      v46 = sub_1003DCCEC();
      swift_beginAccess();
      v87[0] = v46[2];
      v47 = v87[0];
      v87[1] = v15;

      v48 = v47;
      RequestResponse.Controller.request.setter(v87);

      v49 = sub_1003DDCB8();
      v50 = *(*v49 + 96);
      swift_beginAccess();
      v51 = v49 + v50;
      v52 = v82;
      sub_1003E158C(v51, v82, _s19PlaylistTabsRequestVMa);

      *v52 = v15;
      v53 = v52 + *(_s9PlaylistsVMa(0) + 44);
      v54 = *v53;
      v55 = v53[1] == 0;
      v85 = v15;
      if (v55)
      {
        v56 = 0;
      }

      else
      {
        v56 = 256;
      }

      sub_100375B90(v56 | v54);
      v58 = (v57 >> 8) & 1;
      if ((v57 & 0xFF00) == 0x200)
      {
        v59 = 7;
      }

      else
      {
        v59 = v57;
      }

      if ((v57 & 0xFF00) == 0x200)
      {
        LOBYTE(v58) = 1;
      }

      *v53 = v59;
      v53[1] = v58;
      v60 = v56 | v54;
      v15 = v85;
      sub_10018F8E4(v60);
      RequestResponse.Controller.request.setter(v52);

      static MusicLibrary.shared.getter();
      v7 = static MusicLibrary.== infix(_:_:)();

      if ((v7 & 1) == 0)
      {
        v61 = *(v2 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_filtersToDownloadedContent);
        *(v2 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_filtersToDownloadedContent) = 0;
        sub_1003E02F4(v61);
      }

      v62 = [v2 tabBarController];
      if (!v62 || (v63 = v62, v64 = [v62 traitCollection], v63, v65 = objc_msgSend(v64, "userInterfaceIdiom"), v64, v65 != 6))
      {
        if (v7)
        {
          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          String.init(localized:table:bundle:locale:comment:)();
        }

        else
        {
          MusicLibrary.name.getter();
        }

        v66 = String._bridgeToObjectiveC()();

        [v2 setTitle:v66];
      }

      v67 = [v2 tabBarController];
      if (v67)
      {
        v68 = v67;
        sub_10003F5A0();
      }

      v69 = [v2 managingNavigationController];
      if (!v69)
      {
        break;
      }

      v80[0] = v2;
      v70 = v69;
      v12 = [v69 viewControllers];

      sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
      v71 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v71 >> 62)
      {
        v72 = _CocoaArrayWrapper.endIndex.getter();
        if (!v72)
        {
LABEL_38:

          v2 = v80[0];
          break;
        }
      }

      else
      {
        v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v72)
        {
          goto LABEL_38;
        }
      }

      v4 = 0;
      v81 = v71 & 0xFFFFFFFFFFFFFF8;
      v82 = v71 & 0xC000000000000001;
      v2 = v85;
      while (1)
      {
        if (v82)
        {
          v73 = sub_10004056C(v4, v71);
        }

        else
        {
          if (v4 >= *(v81 + 16))
          {
            goto LABEL_35;
          }

          v73 = *(v71 + 8 * v4 + 32);
        }

        v12 = v73;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v15 = v71;
        UIViewController.traitOverrides.getter();
        v86 = v2;
        sub_100137E8C();
        dispatch thunk of UIMutableTraits.subscript.setter();
        UIViewController.traitOverrides.setter();

        ++v4;
        if (v7 == v72)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      swift_once();
    }

    v74 = [v2 tabBarController];
    if (v74)
    {
      v75 = v74;
      sub_10003F950();
    }

    v76 = *(v2 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_playlistSectionTab);
    if (*(v2 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_filtersToDownloadedContent) == 1)
    {
      v77 = *(v76 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_wantsNewPlaylistAction);
      *(v76 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_wantsNewPlaylistAction) = 0;
      if ((v77 & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    else
    {

      static MusicLibrary.shared.getter();
      v78 = static MusicLibrary.== infix(_:_:)();

      v79 = *(v76 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_wantsNewPlaylistAction);
      *(v76 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_wantsNewPlaylistAction) = v78 & 1;
      if ((v78 & 1) == v79)
      {
LABEL_46:

        return result;
      }
    }

    sub_1007371EC();
    goto LABEL_46;
  }

  return result;
}

void sub_1003E02F4(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  type metadata accessor for UITraitOverrides();
  __chkstk_darwin();
  _s19PlaylistTabsRequestVMa(0);
  __chkstk_darwin();
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_filtersToDownloadedContent;
  if (v2[OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_filtersToDownloadedContent] == v3)
  {
    return;
  }

  v7 = sub_1003DDCB8();
  v8 = v2[v6];
  v9 = *(*v7 + 96);
  swift_beginAccess();
  sub_1003E158C(v7 + v9, v5, _s19PlaylistTabsRequestVMa);
  v5[8] = v8;
  RequestResponse.Controller.request.setter(v5);

  v10 = [v2 tabBarController];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 selectedTab];

    if (v12)
    {
      v48 = v12;
      v13 = [v12 managingTabGroup];
      if (v13)
      {
        v14 = v13;
        sub_100009F78(0, &qword_10118DF60, UITabGroup_ptr);
        v15 = v2;
        v16 = static NSObject.== infix(_:_:)();

        if (v16)
        {
          v17 = [v15 managingNavigationController];
          if (v17)
          {
            v40 = v17;
            v18 = [v17 viewControllers];
            sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
            v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            if (v19 >> 62)
            {
              goto LABEL_28;
            }

            for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
            {
              v21 = 0;
              v46 = v19 & 0xFFFFFFFFFFFFFF8;
              v47 = v19 & 0xC000000000000001;
              v39 = "LibraryView.Shows";
              v42 = "LibraryView.Songs";
              v43 = 0x8000000100E3C290;
              v41 = "nt";
              v38[9] = "LibraryView.Playlists";
              v38[10] = "LibraryView.RecentlyAdded";
              v38[7] = "LibraryView.Albums";
              v38[8] = "LibraryView.Artists";
              v38[5] = "LibraryView.MusicVideos";
              v38[6] = "LibraryView.MadeForYou";
              v38[4] = "LibraryView.Genres";
              v38[3] = "LibraryView.Compilations";
              v38[2] = "LibraryView.Composers";
              v38[1] = "LibraryView.Downloaded";
              v44 = i;
              v45 = v6;
              while (1)
              {
                if (v47)
                {
                  v23 = sub_10004056C(v21, v19);
                }

                else
                {
                  if (v21 >= *(v46 + 16))
                  {
                    goto LABEL_27;
                  }

                  v23 = *(v19 + 8 * v21 + 32);
                }

                v24 = v23;
                v25 = v21 + 1;
                if (__OFADD__(v21, 1))
                {
                  break;
                }

                v26 = v2[v6];
                _s8FacetTabCMa();
                v27 = swift_dynamicCastClass();
                if (v27)
                {
                  v28 = v42;
                  switch(*(v27 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab8FacetTab_facetIdentifier))
                  {
                    case 5:
                      goto LABEL_22;
                    case 0xB:
                      v28 = v39;
LABEL_22:
                      if ((v28 | 0x8000000000000000) != v43)
                      {
                        goto LABEL_23;
                      }

                      goto LABEL_11;
                    default:
LABEL_23:
                      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if (((v29 | v26) & 1) == 0)
                      {
                        goto LABEL_24;
                      }

                      goto LABEL_11;
                  }
                }

                if (v26)
                {
LABEL_11:
                  v22 = sub_10010E29C(&off_10109ABB0);
                }

                else
                {
LABEL_24:
                  v22 = &_swiftEmptySetSingleton;
                }

                UIViewController.traitOverrides.getter();
                v49 = v22;
                sub_100217F14();
                dispatch thunk of UIMutableTraits.subscript.setter();
                UIViewController.traitOverrides.setter();

                ++v21;
                v6 = v45;
                if (v25 == v44)
                {
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_27:
              __break(1u);
LABEL_28:
              ;
            }

LABEL_29:
          }
        }
      }
    }
  }

  v30 = [v2 tabBarController];
  if (v30)
  {
    v31 = v30;
    sub_10003F5A0();
  }

  v32 = [v2 tabBarController];
  if (v32)
  {
    v33 = v32;
    sub_10003F950();
  }

  v34 = *&v2[OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_playlistSectionTab];
  if (v2[v6] == 1)
  {
    v35 = *(v34 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_wantsNewPlaylistAction);
    *(v34 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_wantsNewPlaylistAction) = 0;
    if ((v35 & 1) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  type metadata accessor for MusicLibrary();

  static MusicLibrary.shared.getter();
  v36 = static MusicLibrary.== infix(_:_:)();

  v37 = *(v34 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_wantsNewPlaylistAction);
  *(v34 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_wantsNewPlaylistAction) = v36 & 1;
  if ((v36 & 1) != v37)
  {
LABEL_39:
    sub_1007371EC();
  }

LABEL_40:
  if (qword_10117F6D8 != -1)
  {
    swift_once();
  }

  sub_100429E44(v2[v6]);
}

unint64_t sub_1003E09A8()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v21[2] = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v23 = _swiftEmptyArrayStorage;
  if (CloudLibrary.Status.shouldShowActionButton.getter(*&v0[OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_cloudLibraryStatus]))
  {
    sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
    CloudLibrary.EnablementContext.action.unsafeMutableAddressor();

    v2 = String._bridgeToObjectiveC()();
    v3 = [objc_opt_self() systemImageNamed:v2];

    String._bridgeToObjectiveC()();
    swift_allocObject();
    v4 = [v0 tabBarController];
    swift_unknownObjectWeakInit();

    UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v5 = [v0 tabBarController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 traitCollection];

    v8 = [v7 userInterfaceIdiom];
    if (v8 == 6)
    {
      type metadata accessor for MusicLibrary();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v22);

      static MusicLibrary.shared.getter();
      v9 = static MusicLibrary.== infix(_:_:)();

      if (v9)
      {
        sub_10010FC20(&qword_101183990, &qword_100EBC750);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100EBC6D0;
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v11 = String.init(localized:table:bundle:locale:comment:)();
        v21[0] = v12;
        v21[1] = v11;
        v13 = String._bridgeToObjectiveC()();
        v14 = objc_opt_self();
        v15 = [v14 systemImageNamed:v13];

        sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        *(inited + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v16 = String._bridgeToObjectiveC()();
        v17 = [v14 systemImageNamed:v16];

        swift_allocObject();
        swift_unknownObjectWeakInit();
        *(inited + 40) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        sub_10012409C(inited);
      }
    }
  }

  sub_10044D0C4();
  if (v18)
  {
    v19 = v18;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  return v23;
}

void *sub_1003E0FEC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    memset(v5, 0, sizeof(v5));
    v6 = 0;
    v7 = xmmword_100EBCEF0;
    v3 = result;
    PresentationSource.init(viewController:position:)(v3, v5, v4);
    static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:completion:)(0, v4, 1, 0, 0);

    return sub_10012BA6C(v4);
  }

  return result;
}

void sub_1003E108C(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_filtersToDownloadedContent);
    v5[OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_filtersToDownloadedContent] = a3;
    sub_1003E02F4(v6);
  }
}

void sub_1003E10F8(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_cloudLibraryStatus];
  *&v1[OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_cloudLibraryStatus] = a1;
  if ((static CloudLibrary.Status.__derived_enum_equals(_:_:)(v3) & 1) == 0)
  {
    v4 = [v1 tabBarController];
    if (v4)
    {
      v5 = v4;
      sub_10003F950();
    }
  }
}

void sub_1003E1184(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t sub_1003E1204(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1003E12C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003E1338(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003E13A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (*(v1 + 41))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_1003D9430(a1, v4, v5, v6, v8 | v7);
}

void sub_1003E147C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

void sub_1003E156C(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1003E158C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003E15F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003E1654(uint64_t a1, uint64_t a2)
{
  v4 = _s9PlaylistsVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003E16CC(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1003E1718(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_1003DBA60(a1, v4, v5, v6);
}

__n128 sub_1003E17DC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1003E17F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003E1838(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003E188C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = type metadata accessor for URL();
  v75 = *(v3 - 8);
  v76 = v3;
  __chkstk_darwin();
  v72 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MusicAppDestination.PlaylistDescriptor();
  v73 = *(v5 - 8);
  v74 = v5;
  __chkstk_darwin();
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MusicAppDestination();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v71 - v12;
  __chkstk_darwin();
  v15 = (&v71 - v14);
  v16 = _s18AppPageDestinationOMa(0);
  v77 = *(v16 - 8);
  v78 = v16;
  v17 = __chkstk_darwin();
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v9 + 16);
  v20(v15, a1, v8, v17);
  v21 = (*(v9 + 88))(v15, v8);
  if (v21 == enum case for MusicAppDestination.libraryArtistAlbumsPage(_:))
  {
    (*(v9 + 8))(a1, v8);
    (*(v9 + 96))(v15, v8);
    v22 = type metadata accessor for Artist();
    (*(*(v22 - 8) + 32))(v19, v15, v22);
LABEL_19:
    v55 = v78;
    swift_storeEnumTagMultiPayload();
    v56 = v79;
    sub_1003F2718(v19, v79, _s18AppPageDestinationOMa);
    v57 = 0;
    return (*(v77 + 56))(v56, v57, 1, v55);
  }

  if (v21 == enum case for MusicAppDestination.libraryComposerAlbumsPage(_:))
  {
    (*(v9 + 8))(a1, v8);
    (*(v9 + 96))(v15, v8);
    v23 = type metadata accessor for Composer();
    (*(*(v23 - 8) + 32))(v19, v15, v23);
    goto LABEL_19;
  }

  if (v21 == enum case for MusicAppDestination.libraryAlbumDetailPage(_:))
  {
    (*(v9 + 8))(a1, v8);
    (*(v9 + 96))(v15, v8);
    v24 = type metadata accessor for MusicAppDestination.AlbumDescriptor();
    (*(*(v24 - 8) + 32))(v19, v15, v24);
    goto LABEL_19;
  }

  if (v21 == enum case for MusicAppDestination.libraryPlaylistDetailPage(_:))
  {
    (*(v9 + 8))(a1, v8);
    (*(v9 + 96))(v15, v8);
    v25 = type metadata accessor for Playlist();
    (*(*(v25 - 8) + 32))(v19, v15, v25);
    goto LABEL_19;
  }

  if (v21 == enum case for MusicAppDestination.libraryPlaylistFolderDetailPage(_:))
  {
    (*(v9 + 8))(a1, v8);
    (*(v9 + 96))(v15, v8);
    v26 = type metadata accessor for Playlist.Folder();
    (*(*(v26 - 8) + 32))(v19, v15, v26);
    goto LABEL_19;
  }

  if (v21 == enum case for MusicAppDestination.catalogAlbumDetailPage(_:))
  {
    (*(v9 + 8))(a1, v8);
    (*(v9 + 96))(v15, v8);
    v27 = *(sub_10010FC20(&qword_10118E040, &qword_100ECA358) + 48);
    v28 = *(v15 + v27);
    v29 = *(v15 + v27 + 8);
    v30 = &v19[v27];
    v31 = type metadata accessor for MusicAppDestination.AlbumDescriptor();
    (*(*(v31 - 8) + 32))(v19, v15, v31);
    *v30 = v28;
    *(v30 + 1) = v29;
    goto LABEL_19;
  }

  if (v21 == enum case for MusicAppDestination.catalogPlaylistDetailPage(_:))
  {
    (*(v9 + 8))(a1, v8);
    (*(v9 + 96))(v15, v8);
    v32 = (v15 + *(sub_10010FC20(&qword_10118E070, &qword_100ECA368) + 48));
    v33 = *v32;
    v34 = v32[1];
    v35 = sub_10010FC20(&qword_10118E038, &qword_100ECA350);
    v36 = &v19[*(v35 + 48)];
    v37 = *(v35 + 64);
    (*(v73 + 32))(v19, v15, v74);
    *v36 = v33;
    *(v36 + 1) = v34;
    (v75[7])(&v19[v37], 1, 1, v76);
    goto LABEL_19;
  }

  if (v21 == enum case for MusicAppDestination.collaborativePlaylistDetailPage(_:))
  {
    (*(v9 + 8))(a1, v8);
    (*(v9 + 96))(v15, v8);
    v38 = *(sub_10010FC20(&qword_10118E068, &qword_100ECA360) + 48);
    v39 = v74;
    v71 = *(v73 + 32);
    v71(v7, v15, v74);
    v40 = v75;
    v73 = v75[4];
    v41 = v15 + v38;
    v42 = v72;
    v43 = v76;
    (v73)(v72, v41, v76);
    v44 = sub_10010FC20(&qword_10118E038, &qword_100ECA350);
    v45 = &v19[*(v44 + 48)];
    v46 = *(v44 + 64);
    v71(v19, v7, v39);
    *v45 = 0;
    *(v45 + 1) = 0;
    (v73)(&v19[v46], v42, v43);
    (v40[7])(&v19[v46], 0, 1, v43);
    goto LABEL_19;
  }

  if (v21 == enum case for MusicAppDestination.sharedLyrics(_:))
  {
    (*(v9 + 8))(a1, v8);
    (*(v9 + 96))(v15, v8);
    v47 = *v15;
    v48 = v15[1];
    v49 = sub_10010FC20(&qword_10118E030, &qword_100ECA348);
    v50 = v75[4];
    v51 = v15 + *(v49 + 48);
    v52 = v72;
    v53 = v76;
    v50(v72, v51, v76);
    v54 = *(v49 + 48);
    *v19 = v47;
    *(v19 + 1) = v48;
    v50(&v19[v54], v52, v53);
    goto LABEL_19;
  }

  if (qword_10117FC68 != -1)
  {
    swift_once();
  }

  v59 = type metadata accessor for Logger();
  sub_1000060E4(v59, qword_1012194A8);
  (v20)(v13, a1, v8);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v76 = a1;
    v63 = v62;
    v74 = v62;
    v75 = swift_slowAlloc();
    v80 = v75;
    *v63 = 136446210;
    (v20)(v11, v13, v8);
    v64 = String.init<A>(describing:)();
    v66 = v65;
    v67 = *(v9 + 8);
    v67(v13, v8);
    v68 = sub_1000105AC(v64, v66, &v80);

    v69 = v74;
    *(v74 + 4) = v68;
    _os_log_impl(&_mh_execute_header, v60, v61, "Unhandled MUI Destination=%{public}s", v69, 0xCu);
    sub_10000959C(v75);

    v70 = v76;
  }

  else
  {

    v67 = *(v9 + 8);
    v67(a1, v8);
    v70 = v13;
  }

  v67(v70, v8);
  v55 = v78;
  v56 = v79;
  v67(v15, v8);
  v57 = 1;
  return (*(v77 + 56))(v56, v57, 1, v55);
}

uint64_t sub_1003E2384()
{
  _s18AppPageDestinationOMa(0);
  __chkstk_darwin();
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003F2650(v0, v2, _s18AppPageDestinationOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_1003F26B8(v2, _s18AppPageDestinationOMa);
        return 0x7265736F706D6F63;
      }

      else
      {

        v7 = *(sub_10010FC20(&qword_10118E030, &qword_100ECA348) + 48);
        v8 = type metadata accessor for URL();
        (*(*(v8 - 8) + 8))(&v2[v7], v8);
        return 0x79616C705F776F6ELL;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v4 = 0x7473696C79616C70;
      sub_1003F26B8(v2, _s18AppPageDestinationOMa);
    }

    else
    {
      sub_1003F26B8(v2, _s18AppPageDestinationOMa);
      return 0x5F7972617262696CLL;
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v4 = 0x65645F6D75626C61;
    }

    else
    {
      v4 = 0x7473696C79616C70;
    }

    sub_1003F26B8(v2, _s18AppPageDestinationOMa);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v4 = 0x7473696C79616C70;
      v6 = sub_10010FC20(&qword_10118E038, &qword_100ECA350);

      sub_1000095E8(&v2[*(v6 + 64)], &qword_101183A20, &unk_100EBCF80);
      v5 = type metadata accessor for MusicAppDestination.PlaylistDescriptor();
    }

    else
    {
      v4 = 0x65645F6D75626C61;
      sub_10010FC20(&qword_10118E040, &qword_100ECA358);

      v5 = type metadata accessor for MusicAppDestination.AlbumDescriptor();
    }

    (*(*(v5 - 8) + 8))(v2, v5);
  }

  return v4;
}

uint64_t sub_1003E26D8(uint64_t a1)
{
  v68 = a1;
  v1 = type metadata accessor for Composer();
  v62 = *(v1 - 8);
  v63 = v1;
  __chkstk_darwin();
  v59 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for Artist();
  v55 = *(v57 - 8);
  __chkstk_darwin();
  v54 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Playlist.Folder();
  v52 = *(v4 - 8);
  v53 = v4;
  __chkstk_darwin();
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Playlist();
  v51 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v65 = *(v10 - 8);
  v66 = v10;
  __chkstk_darwin();
  v64 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v58 = &v51 - v14;
  v15 = type metadata accessor for MusicAppDestination.PlaylistDescriptor();
  v60 = *(v15 - 8);
  v61 = v15;
  __chkstk_darwin();
  v56 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MusicAppDestination.AlbumDescriptor();
  v18 = *(v17 - 8);
  __chkstk_darwin();
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v51 - v21;
  _s18AppPageDestinationOMa(0);
  __chkstk_darwin();
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003F2650(v67, v24, _s18AppPageDestinationOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        v44 = sub_10010FC20(&qword_10118E030, &qword_100ECA348);
        v46 = v64;
        v45 = v65;
        v47 = v66;
        (*(v65 + 32))(v64, &v24[*(v44 + 48)], v66);
        Hasher._combine(_:)(7uLL);
        String.hash(into:)();

        sub_1000340AC(&qword_10118E048, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        dispatch thunk of Hashable.hash(into:)();
        return (*(v45 + 8))(v46, v47);
      }

      v31 = v62;
      v30 = v63;
      v32 = v59;
      (*(v62 + 32))(v59, v24, v63);
      Hasher._combine(_:)(6uLL);
      v33 = &qword_101188E78;
      v34 = &type metadata accessor for Composer;
      v35 = &protocol conformance descriptor for Composer;
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v28 = v52;
        v27 = v53;
        (*(v52 + 32))(v6, v24, v53);
        Hasher._combine(_:)(4uLL);
        sub_1000340AC(&qword_101183200, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
        dispatch thunk of Hashable.hash(into:)();
        return (*(v28 + 8))(v6, v27);
      }

      v32 = v54;
      v31 = v55;
      v30 = v57;
      (*(v55 + 32))(v54, v24, v57);
      Hasher._combine(_:)(5uLL);
      v33 = &qword_101188E70;
      v34 = &type metadata accessor for Artist;
      v35 = &protocol conformance descriptor for Artist;
    }

    sub_1000340AC(v33, v34, v35);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v31 + 8))(v32, v30);
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v18 + 32))(v20, v24, v17);
      Hasher._combine(_:)(2uLL);
      sub_1000340AC(&qword_10118E058, &type metadata accessor for MusicAppDestination.AlbumDescriptor, &protocol conformance descriptor for MusicAppDestination.AlbumDescriptor);
      dispatch thunk of Hashable.hash(into:)();
      return (*(v18 + 8))(v20, v17);
    }

    else
    {
      v43 = v51;
      (*(v51 + 32))(v9, v24, v7);
      Hasher._combine(_:)(3uLL);
      sub_1000340AC(&qword_10118E050, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
      dispatch thunk of Hashable.hash(into:)();
      return (*(v43 + 8))(v9, v7);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v36 = sub_10010FC20(&qword_10118E038, &qword_100ECA350);
    v37 = *&v24[*(v36 + 48) + 8];
    v38 = *(v36 + 64);
    v40 = v60;
    v39 = v61;
    v41 = v56;
    (*(v60 + 32))(v56, v24, v61);
    v42 = v58;
    sub_100027998(&v24[v38], v58);
    Hasher._combine(_:)(1uLL);
    sub_1000340AC(&qword_10118E060, &type metadata accessor for MusicAppDestination.PlaylistDescriptor, &protocol conformance descriptor for MusicAppDestination.PlaylistDescriptor);
    dispatch thunk of Hashable.hash(into:)();
    if (v37)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    sub_1000089F8(v42, v13, &qword_101183A20, &unk_100EBCF80);
    v49 = v65;
    v48 = v66;
    if ((*(v65 + 48))(v13, 1, v66) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v50 = v64;
      (*(v49 + 32))(v64, v13, v48);
      Hasher._combine(_:)(1u);
      sub_1000340AC(&qword_10118E048, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      dispatch thunk of Hashable.hash(into:)();
      (*(v49 + 8))(v50, v48);
    }

    sub_1000095E8(v42, &qword_101183A20, &unk_100EBCF80);
    return (*(v40 + 8))(v41, v39);
  }

  else
  {
    v26 = *&v24[*(sub_10010FC20(&qword_10118E040, &qword_100ECA358) + 48) + 8];
    (*(v18 + 32))(v22, v24, v17);
    Hasher._combine(_:)(0);
    sub_1000340AC(&qword_10118E058, &type metadata accessor for MusicAppDestination.AlbumDescriptor, &protocol conformance descriptor for MusicAppDestination.AlbumDescriptor);
    dispatch thunk of Hashable.hash(into:)();
    if (v26)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    return (*(v18 + 8))(v22, v17);
  }
}

void sub_1003E3240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v5 = Strong;
  v6 = [Strong view];

  if (!v6)
  {
    __break(1u);
    return;
  }

  v7 = UIView.findPresentationSourceView<A>(id:)();

  if (!v7)
  {
LABEL_4:
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      [v8 view];
    }
  }
}

uint64_t sub_1003E3338()
{
  v2 = *v1;
  v2[25] = v0;

  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[26] = v4;
  v2[27] = v3;
  if (v0)
  {
    v5 = sub_1003E3D5C;
  }

  else
  {
    v5 = sub_1003E3498;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1003E3498(__n128 a1)
{
  AsyncStream.makeAsyncIterator()();
  v2 = static MainActor.shared.getter();
  v1[28] = v2;
  v3 = swift_task_alloc();
  v1[29] = v3;
  *v3 = v1;
  v3[1] = sub_1003E355C;
  v4 = v1[15];
  v5 = v1[16];

  return AsyncStream.Iterator.next(isolation:)(v4, v2, &protocol witness table for MainActor, v5);
}

uint64_t sub_1003E355C()
{
  v1 = *v0;

  v2 = *(v1 + 216);
  v3 = *(v1 + 208);

  return _swift_task_switch(sub_1003E36A0, v3, v2);
}

uint64_t sub_1003E36A0()
{
  v63 = v0;
  v1 = v0[15];
  v2 = v0[10];
  v3 = v0[11];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = v0[20];
    v4 = v0[21];
    v7 = v0[18];
    v6 = v0[19];
    v8 = v0[16];
    v9 = v0[17];

    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);

    v10 = v0[1];

    return v10();
  }

  else
  {
    (*(v3 + 32))(v0[14], v1, v2);
    if (qword_10117FC68 != -1)
    {
      swift_once();
    }

    v13 = v0[13];
    v12 = v0[14];
    v14 = v0[10];
    v15 = v0[11];
    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, qword_1012194A8);
    v17 = *(v15 + 16);
    v17(v13, v12, v14);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[13];
    if (v20)
    {
      v22 = v0[11];
      v23 = v0[12];
      v24 = v0[10];
      v25 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v62 = v60;
      *v25 = 136446210;
      v17(v23, v21, v24);
      v26 = String.init<A>(describing:)();
      v61 = v17;
      v28 = v27;
      v29 = v24;
      v30 = *(v22 + 8);
      v30(v21, v29);
      v31 = sub_1000105AC(v26, v28, &v62);
      v17 = v61;

      *(v25 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v18, v19, "Received 👽 Notice: %{public}s", v25, 0xCu);
      sub_10000959C(v60);
    }

    else
    {
      v32 = v0[10];
      v33 = v0[11];

      v30 = *(v33 + 8);
      v30(v21, v32);
    }

    v34 = v0[12];
    v35 = v0[5];
    v36 = v0[6];
    v37 = v0[4];
    v17(v34, v0[14], v0[10]);
    sub_1003E3FA4(v34, v37);
    if ((*(v36 + 48))(v37, 1, v35) == 1)
    {
      sub_1000095E8(v0[4], &unk_10118B980, &qword_100ECA530);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "Unable to parse 👽 notice as a Music.app notice", v40, 2u);
      }
    }

    else
    {
      v42 = v0[8];
      v41 = v0[9];
      sub_1003F2718(v0[4], v41, type metadata accessor for Notice);
      sub_1003F2650(v41, v42, type metadata accessor for Notice);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();
      v45 = os_log_type_enabled(v43, v44);
      v46 = v0[8];
      if (v45)
      {
        v47 = v0[7];
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v62 = v49;
        *v48 = 136446210;
        sub_1003F2650(v46, v47, type metadata accessor for Notice);
        v50 = String.init<A>(describing:)();
        v52 = v51;
        sub_1003F26B8(v46, type metadata accessor for Notice);
        v53 = sub_1000105AC(v50, v52, &v62);

        *(v48 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v43, v44, "Presenting 👽 notice as %{public}s", v48, 0xCu);
        sub_10000959C(v49);
      }

      else
      {

        sub_1003F26B8(v46, type metadata accessor for Notice);
      }

      v54 = (*(v0[3] + 32) & 0x7FFFFFFFFFFFFFFFLL);
      v55 = UIViewController.noticePresenter.getter();

      if (v55)
      {
        (*(*v55 + 200))(v0[9], 0);
      }

      sub_1003F26B8(v0[9], type metadata accessor for Notice);
    }

    v30(v0[14], v0[10]);
    v56 = static MainActor.shared.getter();
    v0[28] = v56;
    v57 = swift_task_alloc();
    v0[29] = v57;
    *v57 = v0;
    v57[1] = sub_1003E355C;
    v58 = v0[15];
    v59 = v0[16];

    return AsyncStream.Iterator.next(isolation:)(v58, v56, &protocol witness table for MainActor, v59);
  }
}

uint64_t sub_1003E3D5C()
{
  v14 = v0;

  if (qword_10117FC68 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_1012194A8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[25];
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to observe for MusicUI notices. %{public}s", v6, 0xCu);
    sub_10000959C(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003E3FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Notice.Variant(0);
  __chkstk_darwin();
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MusicNotice();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Notice(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin();
  v14 = (&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v9, a1, v6, v12);
  v15 = (*(v7 + 88))(v9, v6);
  if (v15 == enum case for MusicNotice.favorite(_:) || v15 == enum case for MusicNotice.unfavorite(_:) || v15 == enum case for MusicNotice.addToLibrary(_:))
  {
    goto LABEL_4;
  }

  if (v15 == enum case for MusicNotice.follow(_:) || v15 == enum case for MusicNotice.unfollow(_:) || v15 == enum case for MusicNotice.block(_:))
  {
    (*(v7 + 8))(a1, v6);
LABEL_10:
    v16 = 1;
    return (*(v11 + 56))(a2, v16, 1, v10);
  }

  if (v15 != enum case for MusicNotice.suggestLess(_:) && v15 != enum case for MusicNotice.playNext(_:) && v15 != enum case for MusicNotice.playLast(_:) && v15 != enum case for MusicNotice.addToQueue(_:) && v15 != enum case for MusicNotice.playAfter(_:))
  {
    v18 = *(v7 + 8);
    v18(a1, v6);
    v18(v9, v6);
    goto LABEL_10;
  }

LABEL_4:
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v5, v14);
  (*(v7 + 8))(a1, v6);
  sub_1003F26B8(v5, type metadata accessor for Notice.Variant);
  sub_1003F2718(v14, a2, type metadata accessor for Notice);
  v16 = 0;
  return (*(v11 + 56))(a2, v16, 1, v10);
}

uint64_t sub_1003E4358()
{
  v2 = *v1;
  v2[18] = v0;

  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[19] = v4;
  v2[20] = v3;
  if (v0)
  {
    v5 = sub_1003E4AA8;
  }

  else
  {
    v5 = sub_1003E44B8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1003E44B8(__n128 a1)
{
  AsyncStream.makeAsyncIterator()();
  v2 = static MainActor.shared.getter();
  v1[21] = v2;
  v3 = swift_task_alloc();
  v1[22] = v3;
  *v3 = v1;
  v3[1] = sub_1003E457C;
  v4 = v1[8];
  v5 = v1[9];

  return AsyncStream.Iterator.next(isolation:)(v4, v2, &protocol witness table for MainActor, v5);
}

uint64_t sub_1003E457C()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_1003E46C0, v3, v2);
}

uint64_t sub_1003E46C0()
{
  v42 = v0;
  v1 = v0[8];
  v2 = v0[3];
  v3 = v0[4];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = v0[13];
    v4 = v0[14];
    v7 = v0[11];
    v6 = v0[12];
    v8 = v0[9];
    v9 = v0[10];

    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);

    v10 = v0[1];

    return v10();
  }

  else
  {
    (*(v3 + 32))(v0[7], v1, v2);
    if (qword_10117F658 != -1)
    {
      swift_once();
    }

    v12 = v0[6];
    v13 = v0[7];
    v14 = v0[3];
    v15 = v0[4];
    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, qword_101218B30);
    v17 = *(v15 + 16);
    v17(v12, v13, v14);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[6];
    if (v20)
    {
      v22 = v0[4];
      v23 = v0[5];
      v24 = v0[3];
      v25 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = v40;
      *v25 = 136446210;
      v17(v23, v21, v24);
      v26 = String.init<A>(describing:)();
      v28 = v27;
      v29 = *(v22 + 8);
      v29(v21, v24);
      v30 = sub_1000105AC(v26, v28, &v41);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v18, v19, "Received MusicUI MLI Status: %{public}s", v25, 0xCu);
      sub_10000959C(v40);
    }

    else
    {
      v31 = v0[3];
      v32 = v0[4];

      v29 = *(v32 + 8);
      v29(v21, v31);
    }

    if (qword_10117F630 != -1)
    {
      swift_once();
    }

    v33 = v0[7];
    v34 = v0[3];
    v35 = sub_1003670A4(v33);
    (v29)(v33, v34, v35);
    v36 = static MainActor.shared.getter();
    v0[21] = v36;
    v37 = swift_task_alloc();
    v0[22] = v37;
    *v37 = v0;
    v37[1] = sub_1003E457C;
    v38 = v0[8];
    v39 = v0[9];

    return AsyncStream.Iterator.next(isolation:)(v38, v36, &protocol witness table for MainActor, v39);
  }
}

uint64_t sub_1003E4AA8()
{
  v14 = v0;

  if (qword_10117F658 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101218B30);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to observe for MusicUI MLI Status updates. %{public}s", v6, 0xCu);
    sub_10000959C(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

double sub_1003E4CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = a2;
  v9[5] = a3;
  sub_1001F4CB8(0, 0, v6, &unk_100ECA510, v9);

  return result;
}

uint64_t sub_1003E4DE4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1001AB600;

  return v8();
}

uint64_t sub_1003E4EF4(uint64_t a1)
{
  v1[24] = a1;
  sub_10010FC20(&unk_1011838D0, &unk_100EC0320);
  v1[25] = swift_task_alloc();
  v1[26] = type metadata accessor for Notice.Variant(0);
  v1[27] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[28] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003E4FF4, v3, v2);
}

uint64_t sub_1003E4FF4()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 32);
    if (v2 >= 0)
    {
      v3 = *(Strong + 32);
    }

    else
    {
      v3 = (v2 & 0x7FFFFFFFFFFFFFFFLL);
    }

    v4 = (v2 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = UIViewController.noticePresenter.getter();
    if (v5)
    {
      v6 = v5;
      v7 = *(v0 + 216);
      swift_storeEnumTagMultiPayload();
      (*(*v6 + 192))(v7, 0);

      sub_1003F26B8(v7, type metadata accessor for Notice.Variant);
    }

    v8 = *(v0 + 200);
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
    *(v0 + 144) = 0;
    *(v0 + 152) = xmmword_100EBCEF0;
    v9 = v4;
    PresentationSource.init(viewController:position:)(v3, v0 + 112, v0 + 16);
    v10 = type metadata accessor for Actions.MetricsReportingContext(0);
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    PresentationSource.presentDownloadPinsAlertIfNecessary(catalogID:metricsReportingContext:)(0, 0, v8);

    sub_1000095E8(v8, &unk_1011838D0, &unk_100EC0320);
    sub_10012BA6C(v0 + 16);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1003E51DC(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = type metadata accessor for Notice.Variant(0);
  v1[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[8] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003E52A4, v3, v2);
}

uint64_t sub_1003E52A4()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = (*(Strong + 32) & 0x7FFFFFFFFFFFFFFFLL);

    v3 = UIViewController.noticePresenter.getter();

    if (v3)
    {
      v4 = *(v0 + 56);
      swift_storeEnumTagMultiPayload();
      (*(*v3 + 192))(v4, 0);

      sub_1003F26B8(v4, type metadata accessor for Notice.Variant);
    }
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1003E53CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s23AppSheetPageDestinationOMa(0);
  v19 = *(v4 - 8);
  __chkstk_darwin();
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for MusicAppDestination();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 88))(a1, v7);
  if (v9 == enum case for MusicAppDestination.createOrAddToPlaylistPage(_:))
  {
    (*(v8 + 96))(a1, v7);
    *v6 = *a1;
LABEL_16:
    swift_storeEnumTagMultiPayload();
    sub_1003F2718(v6, a2, _s23AppSheetPageDestinationOMa);
    return (*(v19 + 56))(a2, 0, 1, v4);
  }

  if (v9 == enum case for MusicAppDestination.moveToFolderPage(_:))
  {
    goto LABEL_4;
  }

  if (v9 == enum case for MusicAppDestination.viewLyricsPage(_:))
  {
    (*(v8 + 96))(a1, v7);
    v11 = type metadata accessor for Song();
    (*(*(v11 - 8) + 32))(v6, a1, v11);
    goto LABEL_16;
  }

  if (v9 == enum case for MusicAppDestination.reportAConcern(_:))
  {
    (*(v8 + 96))(a1, v7);
    v12 = type metadata accessor for ReportableMusicItem();
    (*(*(v12 - 8) + 32))(v6, a1, v12);
    goto LABEL_16;
  }

  if (v9 == enum case for MusicAppDestination.share(_:))
  {
    (*(v8 + 96))(a1, v7);
    v13 = type metadata accessor for ShareableMusicItem();
    (*(*(v13 - 8) + 32))(v6, a1, v13);
    goto LABEL_16;
  }

  if (v9 == enum case for MusicAppDestination.collaborate(_:))
  {
LABEL_4:
    (*(v8 + 96))(a1, v7);
    v10 = type metadata accessor for Playlist();
    (*(*(v10 - 8) + 32))(v6, a1, v10);
    goto LABEL_16;
  }

  if (v9 == enum case for MusicAppDestination.classicalAppStorePage(_:))
  {
    (*(v8 + 96))(a1, v7);
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 32))(v6, a1, v14);
    goto LABEL_16;
  }

  if (v9 == enum case for MusicAppDestination.sharePage(_:))
  {
    (*(v8 + 96))(a1, v7);
    v15 = type metadata accessor for MusicAppDestination.SharePageDescriptor();
    (*(*(v15 - 8) + 32))(v6, a1, v15);
    goto LABEL_16;
  }

  (*(v8 + 8))(a1, v7);
  v17 = *(v19 + 56);

  return v17(a2, 1, 1, v4);
}

double sub_1003E58C8(uint64_t a1)
{
  v53 = a1;
  v41 = type metadata accessor for URL();
  v51 = *(v41 - 8);
  __chkstk_darwin();
  v50 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for MusicAppDestination.SharePageDescriptor();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin();
  v47 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ShareableMusicItem();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin();
  v44 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ReportableMusicItem();
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin();
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Song();
  v39 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Playlist();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PlaylistAddableItem();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s23AppSheetPageDestinationOMa(0);
  __chkstk_darwin();
  v20 = (&v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1003F2650(v52, v20, _s23AppSheetPageDestinationOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v32 = v47;
        v31 = v48;
        v30 = v49;
        (*(v48 + 32))(v47, v20, v49);
        Hasher._combine(_:)(6uLL);
        v33 = &unk_10118E080;
        v34 = &type metadata accessor for MusicAppDestination.SharePageDescriptor;
        v35 = &protocol conformance descriptor for MusicAppDestination.SharePageDescriptor;
      }

      else
      {
        v32 = v50;
        v31 = v51;
        v30 = v41;
        (*(v51 + 32))(v50, v20, v41);
        Hasher._combine(_:)(7uLL);
        v33 = &qword_10118E048;
        v34 = &type metadata accessor for URL;
        v35 = &protocol conformance descriptor for URL;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v31 = v42;
      v30 = v43;
      v32 = v40;
      (*(v42 + 32))(v40, v20, v43);
      Hasher._combine(_:)(4uLL);
      v33 = &unk_10118E090;
      v34 = &type metadata accessor for ReportableMusicItem;
      v35 = &protocol conformance descriptor for ReportableMusicItem;
    }

    else
    {
      v32 = v44;
      v31 = v45;
      v30 = v46;
      (*(v45 + 32))(v44, v20, v46);
      Hasher._combine(_:)(5uLL);
      v33 = &unk_10118E088;
      v34 = &type metadata accessor for ShareableMusicItem;
      v35 = &protocol conformance descriptor for ShareableMusicItem;
    }

    sub_1000340AC(v33, v34, v35);
    dispatch thunk of Hashable.hash(into:)();
    (*(v31 + 8))(v32, v30);
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v12 + 32))(v14, v20, v11);
      Hasher._combine(_:)(2uLL);
      sub_1000340AC(&qword_10118E050, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
      dispatch thunk of Hashable.hash(into:)();
      (*(v12 + 8))(v14, v11);
    }

    else
    {
      v37 = v39;
      (*(v39 + 32))(v10, v20, v8);
      Hasher._combine(_:)(3uLL);
      sub_1000340AC(&unk_10118D020, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      dispatch thunk of Hashable.hash(into:)();
      (*(v37 + 8))(v10, v8);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v12 + 32))(v14, v20, v11);
    Hasher._combine(_:)(1uLL);
    sub_1000340AC(&qword_10118E050, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    dispatch thunk of Hashable.hash(into:)();
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    v22 = *v20;
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(*(v22 + 16));
    v23 = *(v22 + 16);
    if (v23)
    {
      v26 = *(v16 + 16);
      v25 = v16 + 16;
      v24 = v26;
      v27 = (*(v25 + 64) + 32) & ~*(v25 + 64);
      v52 = v22;
      v28 = v22 + v27;
      v29 = *(v25 + 56);
      do
      {
        v24(v18, v28, v15);
        sub_1000340AC(&qword_10118E098, &type metadata accessor for PlaylistAddableItem, &protocol conformance descriptor for PlaylistAddableItem);
        dispatch thunk of Hashable.hash(into:)();
        (*(v25 - 8))(v18, v15);
        v28 += v29;
        --v23;
      }

      while (v23);
    }
  }

  return result;
}

Swift::Int sub_1003E617C(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_1003E61E0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

void *sub_1003E6228(void (*a1)(char *, uint64_t, __n128))
{
  v2 = type metadata accessor for URL();
  v433 = *(v2 - 8);
  v434 = v2;
  __chkstk_darwin();
  v431 = v3;
  v432 = &v384 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v453 = &v384 - v4;
  v5 = type metadata accessor for MusicAppDestination.SharePageDescriptor.Kind();
  v406 = *(v5 - 8);
  v407 = v5;
  __chkstk_darwin();
  v405 = &v384 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicAppDestination.SharePageDescriptor.Source();
  v429 = *(v7 - 8);
  v430 = v7;
  __chkstk_darwin();
  v428 = (&v384 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v462 = type metadata accessor for MusicAppDestination.SharePageDescriptor();
  v461 = *(v462 - 8);
  __chkstk_darwin();
  v460 = &v384 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v412 = type metadata accessor for ShareURLDescriptor();
  v410 = *(v412 - 8);
  __chkstk_darwin();
  v398 = &v384 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v394 = &v384 - v11;
  v397 = v12;
  __chkstk_darwin();
  v411 = &v384 - v13;
  v437 = type metadata accessor for MusicFriendsInviteDescriptor();
  v435 = *(v437 - 8);
  __chkstk_darwin();
  v409 = &v384 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v404 = &v384 - v15;
  v408 = v16;
  __chkstk_darwin();
  v436 = &v384 - v17;
  v413 = type metadata accessor for SocialProfileDescriptor();
  v395 = *(v413 - 8);
  __chkstk_darwin();
  v402 = &v384 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v390 = &v384 - v19;
  v391 = v20;
  __chkstk_darwin();
  v396 = &v384 - v21;
  v22 = type metadata accessor for ShareableMusicItem();
  v23 = *(v22 - 8);
  __chkstk_darwin();
  v386 = &v384 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v387 = &v384 - v25;
  __chkstk_darwin();
  v439 = &v384 - v26;
  __chkstk_darwin();
  v28 = &v384 - v27;
  v441 = type metadata accessor for ReportableMusicItem();
  v446 = *(v441 - 8);
  __chkstk_darwin();
  v393 = &v384 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v401 = &v384 - v30;
  __chkstk_darwin();
  v445 = &v384 - v31;
  v454 = type metadata accessor for AppInterfaceContext.Activity(0);
  v455 = *(v454 - 8);
  __chkstk_darwin();
  v457 = &v384 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v458 = &v384 - v33;
  v456 = v34;
  __chkstk_darwin();
  v459 = (&v384 - v35);
  v451 = type metadata accessor for Song();
  v423 = *(v451 - 8);
  __chkstk_darwin();
  v421 = &v384 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v450 = &v384 - v37;
  v38 = type metadata accessor for Playlist.Folder.Item();
  v416 = *(v38 - 8);
  v417 = v38;
  __chkstk_darwin();
  v418 = &v384 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v424 = *(type metadata accessor for Actions.Collaborate.Context(0) - 8);
  __chkstk_darwin();
  v425 = v40;
  v426 = &v384 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v427 = &v384 - v41;
  v452 = type metadata accessor for Playlist();
  v464 = *(v452 - 8);
  __chkstk_darwin();
  v422 = &v384 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v420 = &v384 - v43;
  __chkstk_darwin();
  v448 = &v384 - v44;
  __chkstk_darwin();
  v449 = &v384 - v45;
  v419 = v46;
  __chkstk_darwin();
  v465 = &v384 - v47;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v466 = &v384 - v48;
  sub_10010FC20(&unk_1011838D0, &unk_100EC0320);
  __chkstk_darwin();
  v440 = &v384 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v438 = &v384 - v50;
  __chkstk_darwin();
  v468 = &v384 - v51;
  v475 = type metadata accessor for PlaylistAddableItem();
  isa = v475[-1].isa;
  __chkstk_darwin();
  v389 = &v384 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v474 = (&v384 - v53);
  v472 = _s23AppSheetPageDestinationOMa(0);
  __chkstk_darwin();
  v473 = (&v384 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v56 = &v384 - v55;
  __chkstk_darwin();
  v58 = &v384 - v57;
  v59 = type metadata accessor for Logger();
  v60 = *(v59 - 8);
  __chkstk_darwin();
  v388 = &v384 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v399 = &v384 - v62;
  __chkstk_darwin();
  v403 = &v384 - v63;
  __chkstk_darwin();
  v392 = &v384 - v64;
  __chkstk_darwin();
  v415 = &v384 - v65;
  __chkstk_darwin();
  v400 = &v384 - v66;
  __chkstk_darwin();
  v68 = &v384 - v67;
  v69 = Logger.actions.unsafeMutableAddressor();
  v471 = v60;
  v70 = *(v60 + 16);
  v442 = v69;
  v443 = v70;
  v469 = v59;
  v444 = v60 + 16;
  (v70)(v68);
  v467 = a1;
  sub_1003F2650(a1, v58, _s23AppSheetPageDestinationOMa);
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.default.getter();
  v73 = os_log_type_enabled(v71, v72);
  v447 = v28;
  if (v73)
  {
    v74 = swift_slowAlloc();
    v463 = v22;
    v75 = v74;
    v76 = swift_slowAlloc();
    *&v481 = v76;
    *v75 = 136446210;
    sub_1003F2650(v58, v56, _s23AppSheetPageDestinationOMa);
    v77 = String.init<A>(describing:)();
    v78 = v23;
    v80 = v79;
    sub_1003F26B8(v58, _s23AppSheetPageDestinationOMa);
    v81 = sub_1000105AC(v77, v80, &v481);

    *(v75 + 4) = v81;
    _os_log_impl(&_mh_execute_header, v71, v72, "[MusicUI Actions] Called presentSheetPage with destination=%{public}s", v75, 0xCu);
    sub_10000959C(v76);
    v82 = v470;

    v22 = v463;

    v83 = *(v471 + 8);
    v84 = v469;
    v83(v68, v469);
  }

  else
  {
    v78 = v23;

    sub_1003F26B8(v58, _s23AppSheetPageDestinationOMa);
    v83 = *(v471 + 8);
    v84 = v469;
    v83(v68, v469);
    v82 = v470;
  }

  v85 = v82[4];
  v86 = (v85 & 0x7FFFFFFFFFFFFFFFLL);
  if (v85 >= 0)
  {
    v87 = v82[4];
  }

  else
  {
    v87 = (v85 & 0x7FFFFFFFFFFFFFFFLL);
  }

  sub_1003F2650(v467, v473, _s23AppSheetPageDestinationOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v132 = v460;
        (*(v461 + 32))(v460, v473, v462);
        __chkstk_darwin();
        v382 = v132;
        v383 = v82;
        v133 = v86;
        v134 = sub_10012BC18(sub_1003F6004, (&v384 - 4), &off_10109AC00);
        v135 = v428;
        MusicAppDestination.SharePageDescriptor.source.getter();
        v137 = v429;
        v136 = v430;
        v138 = (*(v429 + 88))(v135, v430);
        v139 = &unk_100EBC000;
        v475 = v133;
        if (v138 == enum case for MusicAppDestination.SharePageDescriptor.Source.data(_:))
        {
          (*(v137 + 96))(v135, v136);
          v140 = *v135;
          v141 = v135[1];
          sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
          v142 = swift_allocObject();
          *(v142 + 1) = xmmword_100EBC6B0;
          sub_10002BC44(v140, v141);
          v143 = v405;
          MusicAppDestination.SharePageDescriptor.kind.getter();
          v144 = type metadata accessor for ShareAssetActivityItemProvider(0);
          v145 = objc_allocWithZone(v144);
          v146 = &v145[OBJC_IVAR____TtC5Music30ShareAssetActivityItemProvider_data];
          *v146 = v140;
          v146[1] = v141;
          v147 = v406;
          v148 = v407;
          (*(v406 + 16))(&v145[OBJC_IVAR____TtC5Music30ShareAssetActivityItemProvider_kind], v143, v407);
          v486.receiver = v145;
          v486.super_class = v144;
          v149 = objc_msgSendSuper2(&v486, "init");
          v150 = v143;
          v139 = &unk_100EBC000;
          (*(v147 + 8))(v150, v148);
          v142[7] = v144;
          v142[4] = v149;
          sub_10002C064(v140, v141);
        }

        else if (v138 == enum case for MusicAppDestination.SharePageDescriptor.Source.itemSource(_:))
        {
          (*(v137 + 96))(v135, v136);
          v227 = *v135;
          sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
          v142 = swift_allocObject();
          *(v142 + 1) = xmmword_100EBC6B0;
          v142[7] = swift_getObjectType();
          v142[4] = v227;
        }

        else
        {
          (*(v137 + 8))(v135, v136);
          v142 = _swiftEmptyArrayStorage;
        }

        v288 = v457;
        if (v134 >> 62)
        {
          sub_100009F78(0, &unk_101183F50, UIActivity_ptr);

          v289 = _bridgeCocoaArray<A>(_:)();
          swift_bridgeObjectRelease_n();
        }

        else
        {

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          sub_100009F78(0, &unk_101183F50, UIActivity_ptr);

          v289 = v134;
        }

        sub_10010FC20(&qword_101181538, &unk_100ECF030);
        v290 = swift_allocObject();
        *(v290 + 16) = v139[107];
        *(v290 + 32) = UIActivityTypeSharePlay;
        v291 = objc_allocWithZone(type metadata accessor for ActivityViewController());
        v292 = UIActivityTypeSharePlay;
        sub_1001260A8(v289, v142, v290, 0, 0, 0, 0);
        v294 = v293;
        v295 = v459;
        *v459 = v293;
        *(v295 + 8) = 1;
        *(v295 + 16) = &_swiftEmptySetSingleton;
        swift_storeEnumTagMultiPayload();
        v296 = v458;
        sub_1003F2650(v295, v458, type metadata accessor for AppInterfaceContext.Activity);
        sub_1003F2650(v296, v288, type metadata accessor for AppInterfaceContext.Activity);
        v297 = (*(v455 + 80) + 32) & ~*(v455 + 80);
        v298 = swift_allocObject();
        *(v298 + 16) = 0;
        *(v298 + 24) = 0;
        sub_1003F2718(v288, v298 + v297, type metadata accessor for AppInterfaceContext.Activity);
        v299 = v294;
        sub_100706900(v296, sub_100137E88, v298);

        sub_1003F26B8(v296, type metadata accessor for AppInterfaceContext.Activity);
        sub_1003F26B8(v295, type metadata accessor for AppInterfaceContext.Activity);
        return (*(v461 + 8))(v460, v462);
      }

      else
      {
        v218 = v433;
        v217 = v434;
        v475 = *(v433 + 32);
        v219 = v453;
        (v475)(v453, v473, v434);
        v220 = type metadata accessor for TaskPriority();
        (*(*(v220 - 8) + 56))(v466, 1, 1, v220);
        v221 = v432;
        (*(v218 + 16))(v432, v219, v217);
        type metadata accessor for MainActor();
        v474 = v86;
        v222 = static MainActor.shared.getter();
        v223 = (*(v218 + 80) + 32) & ~*(v218 + 80);
        v224 = (v431 + v223 + 7) & 0xFFFFFFFFFFFFFFF8;
        v225 = v87;
        v226 = swift_allocObject();
        *(v226 + 16) = v222;
        *(v226 + 24) = &protocol witness table for MainActor;
        (v475)(v226 + v223, v221, v217);
        *(v226 + v224) = v225;
        sub_10086E3AC(0, 0, v466, &unk_100ECA3A0, v226);

        return (*(v218 + 8))(v453, v217);
      }
    }

    v472 = v87;
    v385 = v83;
    if (EnumCaseMultiPayload != 4)
    {
      v384 = v86;
      v181 = v78;
      v182 = *(v78 + 32);
      v183 = v447;
      v182(v447, v473, v22);
      v184 = *(v181 + 16);
      v185 = v439;
      v184(v439, v183, v22);
      v186 = (*(v181 + 88))(v185, v22);
      v463 = v22;
      if (v186 == enum case for ShareableMusicItem.findFriendInvite(_:))
      {
        v475 = v181;
        (*(v181 + 96))(v185, v22);
        v188 = v435;
        v187 = v436;
        v189 = *(v435 + 32);
        v190 = v437;
        v474 = (v435 + 32);
        v473 = v189;
        (v189)(v436, v185, v437);
        v191 = v403;
        v443(v403, v442, v84);
        v192 = v404;
        v470 = *(v188 + 16);
        (v470)(v404, v187, v190);
        v468 = v384;
        v193 = Logger.logObject.getter();
        v194 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v193, v194))
        {
          v195 = swift_slowAlloc();
          v196 = swift_slowAlloc();
          *&v481 = v196;
          *v195 = 136446210;
          MusicFriendsInviteDescriptor.userProfileDescriptor.getter();
          v197 = String.init<A>(describing:)();
          v199 = v198;
          v200 = *(v435 + 8);
          v465 = ((v435 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v467 = v200;
          (v200)(v192, v437);
          v201 = sub_1000105AC(v197, v199, &v481);
          v190 = v437;

          *(v195 + 4) = v201;
          _os_log_impl(&_mh_execute_header, v193, v194, "[MusicUI Actions] Attempting to execute action=invite friend to social with descriptor=%{public}s", v195, 0xCu);
          sub_10000959C(v196);

          v188 = v435;

          v202 = v191;
          v203 = v469;
        }

        else
        {

          v278 = *(v188 + 8);
          v465 = ((v188 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v467 = v278;
          (v278)(v192, v190);
          v202 = v191;
          v203 = v84;
        }

        v385(v202, v203);
        v279 = type metadata accessor for TaskPriority();
        v280 = v466;
        (*(*(v279 - 8) + 56))(v466, 1, 1, v279);
        v281 = v409;
        v282 = v436;
        (v470)(v409, v436, v190);
        type metadata accessor for MainActor();
        v283 = v468;
        v284 = static MainActor.shared.getter();
        v285 = (*(v188 + 80) + 32) & ~*(v188 + 80);
        v286 = (v408 + v285 + 7) & 0xFFFFFFFFFFFFFFF8;
        v287 = swift_allocObject();
        *(v287 + 16) = v284;
        *(v287 + 24) = &protocol witness table for MainActor;
        (v473)(v287 + v285, v281, v190);
        *(v287 + v286) = v472;
        sub_1001F4CB8(0, 0, v280, &unk_100ECA3E0, v287);

        (v467)(v282, v190);
      }

      else
      {
        if (v186 == enum case for ShareableMusicItem.shareURL(_:))
        {
          v475 = v181;
          (*(v181 + 96))(v185, v22);
          v229 = v410;
          v228 = v411;
          v230 = *(v410 + 32);
          v231 = v412;
          v474 = (v410 + 32);
          v473 = v230;
          (v230)(v411, v185, v412);
          v232 = v399;
          v443(v399, v442, v84);
          v233 = *(v229 + 16);
          v234 = v394;
          (v233)(v394, v228, v231);
          v470 = v384;
          v235 = Logger.logObject.getter();
          v236 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v235, v236))
          {
            v237 = swift_slowAlloc();
            v465 = v233;
            v238 = v237;
            v239 = swift_slowAlloc();
            *&v481 = v239;
            *v238 = 136446210;
            v240 = v398;
            (v465)(v398, v234, v231);
            v241 = String.init<A>(describing:)();
            v243 = v242;
            v244 = *(v410 + 8);
            v467 = ((v410 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v468 = v244;
            (v244)(v234, v412);
            v245 = sub_1000105AC(v241, v243, &v481);
            v231 = v412;

            *(v238 + 4) = v245;
            _os_log_impl(&_mh_execute_header, v235, v236, "[MusicUI Actions] Attempting to execute action=share for shareURLDescriptor=%{public}s", v238, 0xCu);
            sub_10000959C(v239);
            v229 = v410;

            v233 = v465;

            v385(v399, v469);
          }

          else
          {

            v318 = *(v229 + 8);
            v467 = ((v229 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v468 = v318;
            (v318)(v234, v231);
            v385(v232, v84);
            v240 = v398;
          }

          v319 = type metadata accessor for TaskPriority();
          v320 = v466;
          (*(*(v319 - 8) + 56))(v466, 1, 1, v319);
          v321 = v240;
          v322 = v240;
          v323 = v411;
          (v233)(v321, v411, v231);
          type metadata accessor for MainActor();
          v324 = v470;
          v325 = static MainActor.shared.getter();
          v326 = (*(v229 + 80) + 32) & ~*(v229 + 80);
          v327 = (v397 + v326 + 7) & 0xFFFFFFFFFFFFFFF8;
          v328 = swift_allocObject();
          *(v328 + 16) = v325;
          *(v328 + 24) = &protocol witness table for MainActor;
          (v473)(v328 + v326, v322, v231);
          *(v328 + v327) = v472;
          sub_1001F4CB8(0, 0, v320, &unk_100ECA3D0, v328);

          v329 = v323;
        }

        else
        {
          if (v186 != enum case for ShareableMusicItem.socialProfile(_:))
          {
            v330 = v384;
            sub_1003EDE74(&v481);
            if (*(&v482 + 1))
            {
              sub_100059A8C(&v481, v485);
              sub_100008FE4(v485, v484);
              v331 = v472;
              v332 = UIViewController.playActivityInformation.getter();
              v334 = v333;
              v336 = v335;
              v338 = v337;
              v490 = 0u;
              v491 = 0u;
              *&v492[0] = 0;
              *(v492 + 8) = xmmword_100EBCEF0;
              v475 = v330;
              PresentationSource.init(viewController:position:)(v331, &v490, &v481);
              v339 = type metadata accessor for Actions.MetricsReportingContext(0);
              v340 = v468;
              (*(*(v339 - 8) + 56))(v468, 1, 1, v339);
              v341 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
              sub_100008FE4(v484, v480);
              sub_100008FE4(v484, v479);
              sub_10012B7A8(&v481, &v476);
              v342 = swift_allocObject();
              sub_100059A8C(v479, v342 + 16);
              *(v342 + 56) = 2;
              *(v342 + 64) = v332;
              *(v342 + 72) = v334;
              *(v342 + 80) = v336;
              *(v342 + 88) = v338;
              sub_10012B828(&v476, v342 + 96);
              v343 = v438;
              sub_1000089F8(v340, v438, &unk_1011838D0, &unk_100EC0320);
              type metadata accessor for MusicLibrary();

              sub_10002D6A4(v336, v338);
              v344 = static MusicLibrary.shared.getter();
              Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:)(v480, v344, v341, &qword_100ECA3B0, v342, v343, &v487);

              sub_100029CA4(v336, v338);
              sub_1000095E8(v340, &unk_1011838D0, &unk_100EC0320);
              sub_10012BA6C(&v481);
              sub_10000959C(v484);
              v345 = type metadata accessor for TaskPriority();
              v346 = v466;
              (*(*(v345 - 8) + 56))(v466, 1, 1, v345);
              v481 = *&v489[16];
              type metadata accessor for MainActor();

              sub_100118E9C(&v481, &v476);
              v347 = static MainActor.shared.getter();
              v348 = swift_allocObject();
              *(v348 + 16) = v347;
              *(v348 + 24) = &protocol witness table for MainActor;
              v349 = v488;
              *(v348 + 32) = v487;
              *(v348 + 48) = v349;
              v350 = *&v489[16];
              *(v348 + 64) = *v489;
              *(v348 + 80) = v350;
              sub_1001F4CB8(0, 0, v346, &unk_100ECA3C0, v348);

              sub_100015BB0(&v481);

              sub_10000959C(v485);
              v351 = *(v181 + 8);
              v352 = v463;
              v351(v447, v463);
              return (v351)(v439, v352);
            }

            else
            {
              sub_1000095E8(&v481, &qword_10118E0A8, "\\k\t");
              v443(v388, v442, v84);
              v371 = v387;
              v184(v387, v183, v22);
              v372 = Logger.logObject.getter();
              v373 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v372, v373))
              {
                v374 = swift_slowAlloc();
                v475 = swift_slowAlloc();
                *&v481 = v475;
                *v374 = 136446210;
                v184(v386, v371, v463);
                v375 = String.init<A>(describing:)();
                v377 = v376;
                v378 = v371;
                v379 = *(v181 + 8);
                v379(v378, v463);
                v380 = sub_1000105AC(v375, v377, &v481);

                *(v374 + 4) = v380;
                _os_log_impl(&_mh_execute_header, v372, v373, "[MusicUI Actions] Failed to convert %{public}s to MusicCore.ShareableMusicItem", v374, 0xCu);
                sub_10000959C(v475);

                v22 = v463;

                v385(v388, v469);
                v379(v447, v22);
              }

              else
              {

                v381 = v371;
                v379 = *(v181 + 8);
                v379(v381, v22);
                v385(v388, v469);
                v379(v183, v22);
              }

              return (v379)(v439, v22);
            }
          }

          v475 = v181;
          (*(v181 + 96))(v185, v22);
          v301 = v395;
          v300 = v396;
          v302 = *(v395 + 32);
          v231 = v413;
          v474 = (v395 + 32);
          v473 = v302;
          (v302)(v396, v185, v413);
          v303 = v392;
          v443(v392, v442, v84);
          v304 = *(v301 + 16);
          v305 = v390;
          (v304)(v390, v300, v231);
          v470 = v384;
          v306 = Logger.logObject.getter();
          v307 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v306, v307))
          {
            v308 = swift_slowAlloc();
            v465 = v304;
            v309 = v308;
            v310 = swift_slowAlloc();
            *&v481 = v310;
            *v309 = 136446210;
            v311 = v402;
            (v465)(v402, v305, v231);
            v312 = String.init<A>(describing:)();
            v314 = v313;
            v315 = *(v395 + 8);
            v467 = ((v395 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v468 = v315;
            (v315)(v305, v413);
            v316 = sub_1000105AC(v312, v314, &v481);
            v231 = v413;

            *(v309 + 4) = v316;
            _os_log_impl(&_mh_execute_header, v306, v307, "[MusicUI Actions] Attempting to execute action=share for social profile with descriptor=%{public}s", v309, 0xCu);
            sub_10000959C(v310);
            v301 = v395;

            v304 = v465;

            v385(v392, v469);
          }

          else
          {

            v362 = *(v301 + 8);
            v467 = ((v301 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v468 = v362;
            (v362)(v305, v231);
            v385(v303, v84);
            v311 = v402;
          }

          v363 = type metadata accessor for TaskPriority();
          v364 = v466;
          (*(*(v363 - 8) + 56))(v466, 1, 1, v363);
          v365 = v396;
          (v304)(v311, v396, v231);
          type metadata accessor for MainActor();
          v366 = v470;
          v367 = static MainActor.shared.getter();
          v368 = (*(v301 + 80) + 32) & ~*(v301 + 80);
          v369 = (v391 + v368 + 7) & 0xFFFFFFFFFFFFFFF8;
          v370 = swift_allocObject();
          *(v370 + 16) = v367;
          *(v370 + 24) = &protocol witness table for MainActor;
          (v473)(v370 + v368, v311, v231);
          *(v370 + v369) = v472;
          sub_1001F4CB8(0, 0, v364, &unk_100ECA3F0, v370);

          v329 = v365;
        }

        (v468)(v329, v231);
      }

      return (v475[1].isa)(v447, v463);
    }

    v103 = v445;
    v102 = v446;
    v104 = v441;
    (*(v446 + 32))(v445, v473, v441);
    v105 = v86;
    v106 = sub_1003EC9E0();
    if (!v107)
    {
      v443(v415, v442, v84);
      v254 = *(v102 + 16);
      v255 = v401;
      v254(v401, v103, v104);
      v256 = Logger.logObject.getter();
      v257 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v256, v257))
      {
        v258 = swift_slowAlloc();
        v475 = v256;
        v259 = v258;
        v474 = swift_slowAlloc();
        *&v481 = v474;
        *v259 = 136446210;
        v254(v393, v255, v104);
        v260 = String.init<A>(describing:)();
        v262 = v261;
        v263 = *(v446 + 8);
        v263(v255, v104);
        v264 = sub_1000105AC(v260, v262, &v481);

        *(v259 + 4) = v264;
        v265 = v257;
        v266 = v475;
        _os_log_impl(&_mh_execute_header, v475, v265, "[MusicUI Actions] Failed to initialize report a concern context from MusicUI.ReportableMusicItem=%{public}s", v259, 0xCu);
        sub_10000959C(v474);

        v385(v415, v469);
        return (v263)(v445, v104);
      }

      else
      {

        v317 = *(v102 + 8);
        v317(v255, v104);
        v385(v415, v469);
        return (v317)(v103, v104);
      }
    }

    v110 = v106;
    v111 = v107;
    v112 = v109;
    v113 = v108;
    v476 = 0u;
    v477 = 0u;
    *&v478[0] = 0;
    *(v478 + 8) = xmmword_100EBCEF0;

    v114 = v105;

    PresentationSource.init(viewController:position:)(v472, &v476, &v481);
    v115 = type metadata accessor for Actions.MetricsReportingContext(0);
    (*(*(v115 - 8) + 56))(v440, 1, 1, v115);
    if (v113 > 2)
    {
      if (v113 == 3)
      {

        v116 = 0xE600000000000000;
        v117 = 0x747369747261;
        v118 = 39;
        goto LABEL_80;
      }

      if (v113 != 4)
      {

        v117 = 0;
        v116 = 0xE000000000000000;
        v118 = 43;
        goto LABEL_80;
      }
    }

    else
    {
      if (!v113)
      {

        v116 = 0xE800000000000000;
        v117 = 0x7473696C79616C70;
        v118 = 41;
        goto LABEL_80;
      }

      if (v113 == 1)
      {

        v116 = 0xED0000656C69666FLL;
        v117 = 0x72506C6169636F73;
        v118 = 42;
LABEL_80:
        v353 = swift_allocObject();
        *(v353 + 16) = v110;
        *(v353 + 24) = v111;
        *(v353 + 32) = v113;
        *(v353 + 40) = v112;
        sub_10012B828(&v481, v353 + 48);
        Actions.ReportConcern.Context.init(contentID:contentType:actionType:canReportConcern:reportConcern:metricsReportingContext:)(v110, v111, v117, v116, v118, variable initialization expression of _NSRange.NSRangeIterator.current, 0, &unk_100EBF410, &v487, v353, v440);
        v354 = type metadata accessor for TaskPriority();
        v355 = v466;
        (*(*(v354 - 8) + 56))(v466, 1, 1, v354);
        type metadata accessor for MainActor();

        v356 = static MainActor.shared.getter();
        v357 = swift_allocObject();
        *(v357 + 16) = v356;
        *(v357 + 24) = &protocol witness table for MainActor;
        v358 = v488;
        *(v357 + 32) = v487;
        *(v357 + 48) = v358;
        *(v357 + 64) = *v489;
        *(v357 + 80) = *&v489[16];
        sub_1001F4CB8(0, 0, v355, &unk_100ECA408, v357);

        return (*(v446 + 8))(v445, v441);
      }
    }

    if ((v113 - 3) < 2)
    {
      v118 = 39;
    }

    else
    {
      v118 = 40;
    }

    v116 = 0xE400000000000000;
    v117 = 1735290739;
    goto LABEL_80;
  }

  if (EnumCaseMultiPayload > 1)
  {
    v119 = v465;
    if (EnumCaseMultiPayload == 2)
    {
      v120 = v464;
      v121 = v86;
      v122 = v452;
      (*(v464 + 32))(v465, v473, v452);
      v123 = v418;
      (*(v120 + 16))(v418, v119, v122);
      (*(v416 + 104))(v123, enum case for Playlist.Folder.Item.playlist(_:), v417);
      *&v476 = v82;
      type metadata accessor for MusicLibrary();
      v124 = v121;

      v125 = static MusicLibrary.shared.getter();
      Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:)(v123, v125, &v476, &type metadata for PlaylistPicker.Presenter, &off_1010AD928, &v481);
      v126 = type metadata accessor for TaskPriority();
      v127 = v466;
      (*(*(v126 - 8) + 56))(v466, 1, 1, v126);
      type metadata accessor for MainActor();

      v128 = static MainActor.shared.getter();
      v129 = swift_allocObject();
      *(v129 + 16) = v128;
      *(v129 + 24) = &protocol witness table for MainActor;
      v130 = v482;
      *(v129 + 32) = v481;
      *(v129 + 48) = v130;
      *(v129 + 64) = v483;
      sub_1001F4CB8(0, 0, v127, &unk_100ECA418, v129);

      return (*(v120 + 8))(v119, v122);
    }

    else
    {
      v204 = v423;
      v205 = v450;
      v206 = v451;
      (*(v423 + 32))(v450, v473, v451);
      v207 = v421;
      (*(v204 + 16))(v421, v205, v206);
      v208 = objc_allocWithZone(type metadata accessor for StaticLyricsViewController(0));
      v475 = v86;
      v209 = sub_100336758(v207, 0, 1);
      v210 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v209];
      sub_10032EC90();
      v211 = v459;
      *v459 = v210;
      *(v211 + 8) = 1;
      *(v211 + 16) = &_swiftEmptySetSingleton;
      swift_storeEnumTagMultiPayload();
      v212 = v458;
      sub_1003F2650(v211, v458, type metadata accessor for AppInterfaceContext.Activity);
      v213 = v457;
      sub_1003F2650(v212, v457, type metadata accessor for AppInterfaceContext.Activity);
      v214 = (*(v455 + 80) + 32) & ~*(v455 + 80);
      v215 = swift_allocObject();
      *(v215 + 16) = 0;
      *(v215 + 24) = 0;
      sub_1003F2718(v213, v215 + v214, type metadata accessor for AppInterfaceContext.Activity);
      v216 = v210;
      sub_100706900(v212, sub_100139B24, v215);

      sub_1003F26B8(v212, type metadata accessor for AppInterfaceContext.Activity);
      sub_1003F26B8(v211, type metadata accessor for AppInterfaceContext.Activity);

      return (*(v204 + 8))(v450, v451);
    }
  }

  else
  {
    v89 = v465;
    if (EnumCaseMultiPayload)
    {
      v151 = v464;
      v152 = *(v464 + 32);
      v153 = v473;
      v154 = v452;
      v474 = (v464 + 32);
      v473 = v152;
      (v152)(v465, v153, v452);
      v155 = *(v151 + 16);
      v156 = v449;
      v155(v449, v89, v154);
      v487 = 0u;
      v488 = 0u;
      *v489 = 0;
      *&v489[8] = xmmword_100EBCEF0;
      v475 = v86;
      PresentationSource.init(viewController:position:)(v87, &v487, &v481);
      v157 = type metadata accessor for Actions.MetricsReportingContext(0);
      (*(*(v157 - 8) + 56))(v468, 1, 1, v157);
      if (qword_10117F610 != -1)
      {
        swift_once();
      }

      v158 = qword_101218AE0;
      v471 = qword_101218AE0;
      v155(v448, v156, v154);
      v159 = v155;
      v160 = v420;
      v159(v420, v156, v154);
      v470 = (v151 + 16);
      v161 = (*(v151 + 80) + 24) & ~*(v151 + 80);
      v162 = v161 + v419;
      v163 = swift_allocObject();
      v472 = v163;
      v163[2] = v158;
      v164 = v160;
      v165 = v154;
      v166 = v473;
      (v473)(v163 + v161, v164, v154);
      v167 = v422;
      v159(v422, v156, v165);
      sub_10012B7A8(&v481, &v476);
      v168 = (v162 + 7) & 0xFFFFFFFFFFFFFFF8;
      v169 = swift_allocObject();
      *(v169 + 16) = v471;
      v170 = v165;
      (v166)(v169 + v161, v167, v165);
      sub_10012B828(&v476, v169 + v168);
      v171 = v468;
      v172 = v438;
      sub_1000089F8(v468, v438, &unk_1011838D0, &unk_100EC0320);
      swift_retain_n();
      v173 = v427;
      Actions.Collaborate.Context.init(playlist:canCollaborateOnPlaylist:collaborate:metricsReportingContext:)(v448, sub_1003F6738, v472, sub_1003F679C, v169, v172, v427);
      sub_1000095E8(v171, &unk_1011838D0, &unk_100EC0320);
      sub_10012BA6C(&v481);
      v174 = *(v464 + 8);
      v174(v449, v165);
      v175 = type metadata accessor for TaskPriority();
      v176 = v466;
      (*(*(v175 - 8) + 56))(v466, 1, 1, v175);
      v177 = v426;
      sub_1003F2650(v173, v426, type metadata accessor for Actions.Collaborate.Context);
      type metadata accessor for MainActor();
      v178 = static MainActor.shared.getter();
      v179 = (*(v424 + 80) + 32) & ~*(v424 + 80);
      v180 = swift_allocObject();
      *(v180 + 16) = v178;
      *(v180 + 24) = &protocol witness table for MainActor;
      sub_1003F2718(v177, v180 + v179, type metadata accessor for Actions.Collaborate.Context);
      sub_1001F4CB8(0, 0, v176, &unk_100ECA428, v180);

      sub_1003F26B8(v173, type metadata accessor for Actions.Collaborate.Context);
      return (v174)(v465, v170);
    }

    else
    {
      v472 = v87;
      v384 = v86;
      v385 = v83;
      v90 = *v473;
      v91 = *(*v473 + 2);
      v467 = *v473;
      v465 = v91;
      if (v91)
      {
        v473 = *(isa + 2);
        v92 = v90 + ((*(isa + 80) + 32) & ~*(isa + 80));
        v93 = *(isa + 9);
        v94 = (isa + 8);
        v95 = v86;
        v96 = _swiftEmptyArrayStorage;
        v97 = v468;
        while (1)
        {
          v98 = v474;
          v99 = v475;
          (v473)(v474, v92, v475);
          PlaylistAddableItem.addableItem.getter();
          (*v94)(v98, v99);
          sub_10010FC20(&qword_10118E0B0, &qword_100ECA430);
          sub_10010FC20(&qword_10118E0B8, &qword_100ECA438);
          if (swift_dynamicCast())
          {
            if (*(&v477 + 1))
            {
              sub_1000D8F88(&v476, &v481);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v96 = sub_10049A0B8(0, v96[2] + 1, 1, v96);
              }

              v101 = v96[2];
              v100 = v96[3];
              if (v101 >= v100 >> 1)
              {
                v96 = sub_10049A0B8((v100 > 1), v101 + 1, 1, v96);
              }

              v96[2] = v101 + 1;
              sub_1000D8F88(&v481, &v96[6 * v101 + 4]);
              v97 = v468;
              goto LABEL_14;
            }
          }

          else
          {
            v477 = 0u;
            v478[0] = 0u;
            v476 = 0u;
          }

          sub_1000095E8(&v476, &qword_10118E0C0, &qword_100ECA440);
LABEL_14:
          v92 += v93;
          if (!--v91)
          {
            goto LABEL_48;
          }
        }
      }

      v246 = v86;
      v96 = _swiftEmptyArrayStorage;
      v97 = v468;
LABEL_48:
      if (v96[2])
      {

        v487 = 0u;
        v488 = 0u;
        *v489 = 0;
        *&v489[8] = xmmword_100EBCEF0;
        v247 = v384;
        PresentationSource.init(viewController:position:)(v472, &v487, &v481);
        sub_10012B7A8(&v481, &v476);
        v485[0] = v470;
        v248 = type metadata accessor for Actions.MetricsReportingContext(0);
        (*(*(v248 - 8) + 56))(v97, 1, 1, v248);
        type metadata accessor for MusicLibrary();

        static MusicLibrary.shared.getter();
        Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)(v96, &v476, v485, v97, &type metadata for PlaylistPicker.Presenter, &off_1010AD928, &v490);
        v249 = type metadata accessor for TaskPriority();
        v250 = v466;
        (*(*(v249 - 8) + 56))(v466, 1, 1, v249);
        type metadata accessor for MainActor();

        v251 = static MainActor.shared.getter();
        v252 = swift_allocObject();
        *(v252 + 16) = v251;
        *(v252 + 24) = &protocol witness table for MainActor;
        v253 = v491;
        *(v252 + 32) = v490;
        *(v252 + 48) = v253;
        *(v252 + 64) = v492[0];
        sub_1001F4CB8(0, 0, v250, &unk_100ECA450, v252);

        return sub_10012BA6C(&v481);
      }

      v267 = v400;
      v268 = v469;
      v443(v400, v442, v469);
      v269 = v467;

      v270 = Logger.logObject.getter();
      v271 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v270, v271))
      {

        return (v385)(v267, v268);
      }

      v272 = swift_slowAlloc();
      result = swift_slowAlloc();
      v273 = result;
      *&v476 = result;
      *v272 = 136446210;
      if (!v465)
      {

        *&v483 = 0;
        v481 = 0u;
        v482 = 0u;
        goto LABEL_82;
      }

      if (*(v269 + 2))
      {
        v274 = isa;
        v275 = v269 + ((*(v274 + 80) + 32) & ~*(v274 + 80));
        v276 = v389;
        v277 = v475;
        (*(isa + 2))(v389, v275, v475);

        PlaylistAddableItem.addableItem.getter();
        (*(v274 + 1))(v276, v277);
        v268 = v469;
LABEL_82:
        sub_10010FC20(&qword_10118E0C8, &qword_100ECA458);
        v359 = String.init<A>(describing:)();
        v361 = sub_1000105AC(v359, v360, &v476);

        *(v272 + 4) = v361;
        _os_log_impl(&_mh_execute_header, v270, v271, "[MusicUI Actions] MusicUI.PlaylistAddableItem %{public}s isn't MusicLibraryActionable", v272, 0xCu);
        sub_10000959C(v273);

        return (v385)(v267, v268);
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1003E9B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a4;
  type metadata accessor for MainActor();
  v4[17] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[18] = v6;
  v4[19] = v5;

  return _swift_task_switch(sub_1003E9BC4, v6, v5);
}

uint64_t sub_1003E9BC4()
{
  static Actions.AddToPlaylist.action(context:)(*(v0 + 128), v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_1003E9C64;

  return sub_1003E9E00(1);
}

uint64_t sub_1003E9C64()
{
  v1 = *v0;

  sub_1000095E8(v1 + 16, &qword_10118E0D0, &unk_100ECA468);
  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return _swift_task_switch(sub_1003E9DA0, v3, v2);
}

uint64_t sub_1003E9DA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003E9E00(char a1)
{
  *(v2 + 664) = a1;
  v3 = type metadata accessor for Logger();
  *(v2 + 584) = v3;
  *(v2 + 592) = *(v3 - 8);
  *(v2 + 600) = swift_task_alloc();
  *(v2 + 608) = swift_task_alloc();
  v4 = v1[5];
  *(v2 + 192) = v1[4];
  *(v2 + 208) = v4;
  *(v2 + 224) = v1[6];
  v5 = v1[1];
  *(v2 + 128) = *v1;
  *(v2 + 144) = v5;
  v6 = v1[3];
  *(v2 + 160) = v1[2];
  *(v2 + 176) = v6;

  return _swift_task_switch(sub_1003E9EEC, 0, 0);
}

uint64_t sub_1003E9EEC(uint64_t a1)
{
  v28 = v1;
  v2 = *(v1 + 608);
  v3 = *(v1 + 592);
  v4 = *(v1 + 584);
  v5 = Logger.actions.unsafeMutableAddressor();
  *(v1 + 616) = v5;
  v6 = *(v3 + 16);
  *(v1 + 624) = v6;
  *(v1 + 632) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = *(v1 + 208);
  *(v1 + 80) = *(v1 + 192);
  *(v1 + 96) = v7;
  *(v1 + 112) = *(v1 + 224);
  v8 = *(v1 + 144);
  *(v1 + 16) = *(v1 + 128);
  *(v1 + 32) = v8;
  v9 = *(v1 + 176);
  *(v1 + 48) = *(v1 + 160);
  *(v1 + 64) = v9;
  sub_1000089F8(v1 + 16, v1 + 240, &qword_10118E0D0, &unk_100ECA468);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v1 + 608);
  v14 = *(v1 + 592);
  v15 = *(v1 + 584);
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136446210;
    v18 = ActionType.rawValue.getter(*(v1 + 64));
    v20 = v19;
    sub_1000095E8(v1 + 16, &qword_10118E0D0, &unk_100ECA468);
    v21 = sub_1000105AC(v18, v20, &v27);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "[MusicUI Actions] Attempting to execute action=%{public}s", v16, 0xCu);
    sub_10000959C(v17);
  }

  else
  {
    sub_1000095E8(v1 + 16, &qword_10118E0D0, &unk_100ECA468);
  }

  v22 = *(v14 + 8);
  v22(v13, v15);
  *(v1 + 640) = v22;
  v23 = swift_task_alloc();
  *(v1 + 648) = v23;
  v24 = sub_10010FC20(&qword_10118E0D0, &unk_100ECA468);
  *v23 = v1;
  v23[1] = sub_1003EA168;
  v25 = *(v1 + 664);

  return Action.execute(checkSupportedStatus:)(v24, v25, v24);
}

uint64_t sub_1003EA168()
{
  *(*v1 + 656) = v0;

  if (v0)
  {
    v2 = sub_1003EA27C;
  }

  else
  {
    v2 = sub_1003F6C70;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003EA27C()
{
  v24 = v0;
  (*(v0 + 624))(*(v0 + 600), *(v0 + 616), *(v0 + 584));
  v1 = *(v0 + 208);
  *(v0 + 416) = *(v0 + 192);
  *(v0 + 432) = v1;
  *(v0 + 448) = *(v0 + 224);
  v2 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v2;
  v3 = *(v0 + 176);
  *(v0 + 384) = *(v0 + 160);
  *(v0 + 400) = v3;
  sub_1000089F8(v0 + 352, v0 + 464, &qword_10118E0D0, &unk_100ECA468);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 656);
    v21 = *(v0 + 600);
    v22 = *(v0 + 640);
    v7 = *(v0 + 584);
    v8 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v8 = 136446466;
    v9 = ActionType.rawValue.getter(*(v0 + 400));
    v11 = v10;
    sub_1000095E8(v0 + 352, &qword_10118E0D0, &unk_100ECA468);
    v12 = sub_1000105AC(v9, v11, &v23);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v0 + 576) = v6;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v13 = String.init<A>(describing:)();
    v15 = sub_1000105AC(v13, v14, &v23);

    *(v8 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "[MusicUI Actions] Failed to execute action=%{public}s with error=%{public}s", v8, 0x16u);
    swift_arrayDestroy();

    v22(v21, v7);
  }

  else
  {
    v16 = *(v0 + 640);
    v17 = *(v0 + 600);
    v18 = *(v0 + 584);

    sub_1000095E8(v0 + 352, &qword_10118E0D0, &unk_100ECA468);

    v16(v17, v18);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1003EA544(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 136) = a1;
  *(v2 + 32) = sub_10010FC20(&qword_10118E0D8, &qword_100ECA478);
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  *(v2 + 56) = v3;
  *(v2 + 64) = *(v3 - 8);
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_1003EA65C, 0, 0);
}

uint64_t sub_1003EA65C(uint64_t a1)
{
  v28 = v1;
  v2 = *(v1 + 80);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 48);
  v6 = *(v1 + 24);
  v7 = Logger.actions.unsafeMutableAddressor();
  *(v1 + 88) = v7;
  v8 = *(v4 + 16);
  *(v1 + 96) = v8;
  *(v1 + 104) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v2, v7, v3);
  sub_1000089F8(v6, v5, &qword_10118E0D8, &qword_100ECA478);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v1 + 80);
  v13 = *(v1 + 56);
  v14 = *(v1 + 64);
  v15 = *(v1 + 48);
  if (v11)
  {
    v16 = *(v1 + 32);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27 = v18;
    *v17 = 136446210;
    LOBYTE(v16) = *(v15 + *(v16 + 36));
    sub_1000095E8(v15, &qword_10118E0D8, &qword_100ECA478);
    v19 = ActionType.rawValue.getter(v16);
    v21 = sub_1000105AC(v19, v20, &v27);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v9, v10, "[MusicUI Actions] Attempting to execute action=%{public}s", v17, 0xCu);
    sub_10000959C(v18);
  }

  else
  {
    sub_1000095E8(*(v1 + 48), &qword_10118E0D8, &qword_100ECA478);
  }

  v22 = *(v14 + 8);
  v22(v12, v13);
  *(v1 + 112) = v22;
  v23 = swift_task_alloc();
  *(v1 + 120) = v23;
  *v23 = v1;
  v23[1] = sub_1003EA89C;
  v24 = *(v1 + 32);
  v25 = *(v1 + 136);

  return Action.execute(checkSupportedStatus:)(v23, v25, v24);
}

uint64_t sub_1003EA89C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1003EAA34;
  }

  else
  {
    v2 = sub_1003EA9B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003EA9B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003EAA34()
{
  v24 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  (*(v0 + 96))(*(v0 + 72), *(v0 + 88), *(v0 + 56));
  sub_1000089F8(v2, v1, &qword_10118E0D8, &qword_100ECA478);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 128);
    v21 = *(v0 + 72);
    v22 = *(v0 + 112);
    v6 = *(v0 + 56);
    v8 = *(v0 + 32);
    v7 = *(v0 + 40);
    v9 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v9 = 136446466;
    LOBYTE(v8) = *(v7 + *(v8 + 36));
    sub_1000095E8(v7, &qword_10118E0D8, &qword_100ECA478);
    v10 = ActionType.rawValue.getter(v8);
    v12 = sub_1000105AC(v10, v11, &v23);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2082;
    *(v0 + 16) = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v13 = String.init<A>(describing:)();
    v15 = sub_1000105AC(v13, v14, &v23);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "[MusicUI Actions] Failed to execute action=%{public}s with error=%{public}s", v9, 0x16u);
    swift_arrayDestroy();

    v22(v21, v6);
  }

  else
  {
    v16 = *(v0 + 112);
    v17 = *(v0 + 72);
    v18 = *(v0 + 56);
    sub_1000095E8(*(v0 + 40), &qword_10118E0D8, &qword_100ECA478);

    v16(v17, v18);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1003EACF0(char a1)
{
  *(v2 + 664) = a1;
  v3 = type metadata accessor for Logger();
  *(v2 + 584) = v3;
  *(v2 + 592) = *(v3 - 8);
  *(v2 + 600) = swift_task_alloc();
  *(v2 + 608) = swift_task_alloc();
  v4 = v1[5];
  *(v2 + 192) = v1[4];
  *(v2 + 208) = v4;
  *(v2 + 224) = v1[6];
  v5 = v1[1];
  *(v2 + 128) = *v1;
  *(v2 + 144) = v5;
  v6 = v1[3];
  *(v2 + 160) = v1[2];
  *(v2 + 176) = v6;

  return _swift_task_switch(sub_1003EADDC, 0, 0);
}

uint64_t sub_1003EADDC(uint64_t a1)
{
  v28 = v1;
  v2 = *(v1 + 608);
  v3 = *(v1 + 592);
  v4 = *(v1 + 584);
  v5 = Logger.actions.unsafeMutableAddressor();
  *(v1 + 616) = v5;
  v6 = *(v3 + 16);
  *(v1 + 624) = v6;
  *(v1 + 632) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = *(v1 + 208);
  *(v1 + 80) = *(v1 + 192);
  *(v1 + 96) = v7;
  *(v1 + 112) = *(v1 + 224);
  v8 = *(v1 + 144);
  *(v1 + 16) = *(v1 + 128);
  *(v1 + 32) = v8;
  v9 = *(v1 + 176);
  *(v1 + 48) = *(v1 + 160);
  *(v1 + 64) = v9;
  sub_1000089F8(v1 + 16, v1 + 240, &qword_10118E0E0, &qword_100ECA490);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v1 + 608);
  v14 = *(v1 + 592);
  v15 = *(v1 + 584);
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136446210;
    v18 = ActionType.rawValue.getter(*(v1 + 64));
    v20 = v19;
    sub_1000095E8(v1 + 16, &qword_10118E0E0, &qword_100ECA490);
    v21 = sub_1000105AC(v18, v20, &v27);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "[MusicUI Actions] Attempting to execute action=%{public}s", v16, 0xCu);
    sub_10000959C(v17);
  }

  else
  {
    sub_1000095E8(v1 + 16, &qword_10118E0E0, &qword_100ECA490);
  }

  v22 = *(v14 + 8);
  v22(v13, v15);
  *(v1 + 640) = v22;
  v23 = swift_task_alloc();
  *(v1 + 648) = v23;
  v24 = sub_10010FC20(&qword_10118E0E0, &qword_100ECA490);
  *v23 = v1;
  v23[1] = sub_1003EB058;
  v25 = *(v1 + 664);

  return Action.execute(checkSupportedStatus:)(v24, v25, v24);
}

uint64_t sub_1003EB058()
{
  *(*v1 + 656) = v0;

  if (v0)
  {
    v2 = sub_1003EB1D8;
  }

  else
  {
    v2 = sub_1003EB16C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003EB16C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003EB1D8()
{
  v24 = v0;
  (*(v0 + 624))(*(v0 + 600), *(v0 + 616), *(v0 + 584));
  v1 = *(v0 + 208);
  *(v0 + 416) = *(v0 + 192);
  *(v0 + 432) = v1;
  *(v0 + 448) = *(v0 + 224);
  v2 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v2;
  v3 = *(v0 + 176);
  *(v0 + 384) = *(v0 + 160);
  *(v0 + 400) = v3;
  sub_1000089F8(v0 + 352, v0 + 464, &qword_10118E0E0, &qword_100ECA490);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 656);
    v21 = *(v0 + 600);
    v22 = *(v0 + 640);
    v7 = *(v0 + 584);
    v8 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v8 = 136446466;
    v9 = ActionType.rawValue.getter(*(v0 + 400));
    v11 = v10;
    sub_1000095E8(v0 + 352, &qword_10118E0E0, &qword_100ECA490);
    v12 = sub_1000105AC(v9, v11, &v23);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v0 + 576) = v6;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v13 = String.init<A>(describing:)();
    v15 = sub_1000105AC(v13, v14, &v23);

    *(v8 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "[MusicUI Actions] Failed to execute action=%{public}s with error=%{public}s", v8, 0x16u);
    swift_arrayDestroy();

    v22(v21, v7);
  }

  else
  {
    v16 = *(v0 + 640);
    v17 = *(v0 + 600);
    v18 = *(v0 + 584);

    sub_1000095E8(v0 + 352, &qword_10118E0E0, &qword_100ECA490);

    v16(v17, v18);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1003EB4A0(char a1)
{
  *(v2 + 704) = a1;
  v3 = type metadata accessor for Logger();
  *(v2 + 624) = v3;
  *(v2 + 632) = *(v3 - 8);
  *(v2 + 640) = swift_task_alloc();
  v4 = swift_task_alloc();
  v5 = *(v1 + 80);
  *(v2 + 200) = *(v1 + 64);
  *(v2 + 216) = v5;
  *(v2 + 232) = *(v1 + 96);
  v6 = *(v1 + 16);
  *(v2 + 136) = *v1;
  *(v2 + 152) = v6;
  v7 = *(v1 + 48);
  *(v2 + 168) = *(v1 + 32);
  *(v2 + 648) = v4;
  *(v2 + 248) = *(v1 + 112);
  *(v2 + 184) = v7;

  return _swift_task_switch(sub_1003EB5A0, 0, 0);
}

uint64_t sub_1003EB5A0(uint64_t a1)
{
  v28 = v1;
  v2 = *(v1 + 648);
  v3 = *(v1 + 632);
  v4 = *(v1 + 624);
  v5 = Logger.actions.unsafeMutableAddressor();
  *(v1 + 656) = v5;
  v6 = *(v3 + 16);
  *(v1 + 664) = v6;
  *(v1 + 672) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = *(v1 + 216);
  *(v1 + 80) = *(v1 + 200);
  *(v1 + 96) = v7;
  *(v1 + 112) = *(v1 + 232);
  *(v1 + 128) = *(v1 + 248);
  v8 = *(v1 + 152);
  *(v1 + 16) = *(v1 + 136);
  *(v1 + 32) = v8;
  v9 = *(v1 + 184);
  *(v1 + 48) = *(v1 + 168);
  *(v1 + 64) = v9;
  sub_1000089F8(v1 + 16, v1 + 256, &qword_1011839B0, &unk_100EC73E0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v1 + 648);
  v14 = *(v1 + 632);
  v15 = *(v1 + 624);
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136446210;
    v18 = ActionType.rawValue.getter(*(v1 + 72));
    v20 = v19;
    sub_1000095E8(v1 + 16, &qword_1011839B0, &unk_100EC73E0);
    v21 = sub_1000105AC(v18, v20, &v27);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "[MusicUI Actions] Attempting to execute action=%{public}s", v16, 0xCu);
    sub_10000959C(v17);
  }

  else
  {
    sub_1000095E8(v1 + 16, &qword_1011839B0, &unk_100EC73E0);
  }

  v22 = *(v14 + 8);
  v22(v13, v15);
  *(v1 + 680) = v22;
  v23 = swift_task_alloc();
  *(v1 + 688) = v23;
  v24 = sub_10010FC20(&qword_1011839B0, &unk_100EC73E0);
  *v23 = v1;
  v23[1] = sub_1003EB830;
  v25 = *(v1 + 704);

  return Action.execute(checkSupportedStatus:)(v24, v25, v24);
}

uint64_t sub_1003EB830()
{
  *(*v1 + 696) = v0;

  if (v0)
  {
    v2 = sub_1003EB9B0;
  }

  else
  {
    v2 = sub_1003EB944;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003EB944()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003EB9B0()
{
  v24 = v0;
  (*(v0 + 664))(*(v0 + 640), *(v0 + 656), *(v0 + 624));
  v1 = *(v0 + 216);
  *(v0 + 440) = *(v0 + 200);
  *(v0 + 456) = v1;
  *(v0 + 472) = *(v0 + 232);
  *(v0 + 488) = *(v0 + 248);
  v2 = *(v0 + 152);
  *(v0 + 376) = *(v0 + 136);
  *(v0 + 392) = v2;
  v3 = *(v0 + 184);
  *(v0 + 408) = *(v0 + 168);
  *(v0 + 424) = v3;
  sub_1000089F8(v0 + 376, v0 + 496, &qword_1011839B0, &unk_100EC73E0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 696);
    v21 = *(v0 + 640);
    v22 = *(v0 + 680);
    v20 = *(v0 + 624);
    v7 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v7 = 136446466;
    v8 = ActionType.rawValue.getter(*(v0 + 432));
    v10 = v9;
    sub_1000095E8(v0 + 376, &qword_1011839B0, &unk_100EC73E0);
    v11 = sub_1000105AC(v8, v10, &v23);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    *(v0 + 616) = v6;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v12 = String.init<A>(describing:)();
    v14 = sub_1000105AC(v12, v13, &v23);

    *(v7 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "[MusicUI Actions] Failed to execute action=%{public}s with error=%{public}s", v7, 0x16u);
    swift_arrayDestroy();

    v22(v21, v20);
  }

  else
  {
    v15 = *(v0 + 680);
    v16 = *(v0 + 640);
    v17 = *(v0 + 624);

    sub_1000095E8(v0 + 376, &qword_1011839B0, &unk_100EC73E0);

    v15(v16, v17);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1003EBC94(char a1)
{
  *(v2 + 744) = a1;
  v3 = type metadata accessor for Logger();
  *(v2 + 664) = v3;
  *(v2 + 672) = *(v3 - 8);
  *(v2 + 680) = swift_task_alloc();
  *(v2 + 688) = swift_task_alloc();
  v4 = v1[5];
  *(v2 + 208) = v1[4];
  *(v2 + 224) = v4;
  v5 = v1[7];
  *(v2 + 240) = v1[6];
  *(v2 + 256) = v5;
  v6 = v1[1];
  *(v2 + 144) = *v1;
  *(v2 + 160) = v6;
  v7 = v1[3];
  *(v2 + 176) = v1[2];
  *(v2 + 192) = v7;

  return _swift_task_switch(sub_1003EBD80, 0, 0);
}

uint64_t sub_1003EBD80(uint64_t a1)
{
  v29 = v1;
  v2 = *(v1 + 688);
  v3 = *(v1 + 672);
  v4 = *(v1 + 664);
  v5 = Logger.actions.unsafeMutableAddressor();
  *(v1 + 696) = v5;
  v6 = *(v3 + 16);
  *(v1 + 704) = v6;
  *(v1 + 712) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = *(v1 + 224);
  *(v1 + 80) = *(v1 + 208);
  *(v1 + 96) = v7;
  v8 = *(v1 + 256);
  *(v1 + 112) = *(v1 + 240);
  *(v1 + 128) = v8;
  v9 = *(v1 + 160);
  *(v1 + 16) = *(v1 + 144);
  *(v1 + 32) = v9;
  v10 = *(v1 + 192);
  *(v1 + 48) = *(v1 + 176);
  *(v1 + 64) = v10;
  sub_1000089F8(v1 + 16, v1 + 272, &qword_10118E0F0, &qword_100ECEFA0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v1 + 688);
  v15 = *(v1 + 672);
  v16 = *(v1 + 664);
  if (v13)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 136446210;
    v19 = ActionType.rawValue.getter(*(v1 + 80));
    v21 = v20;
    sub_1000095E8(v1 + 16, &qword_10118E0F0, &qword_100ECEFA0);
    v22 = sub_1000105AC(v19, v21, &v28);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v11, v12, "[MusicUI Actions] Attempting to execute action=%{public}s", v17, 0xCu);
    sub_10000959C(v18);
  }

  else
  {
    sub_1000095E8(v1 + 16, &qword_10118E0F0, &qword_100ECEFA0);
  }

  v23 = *(v15 + 8);
  v23(v14, v16);
  *(v1 + 720) = v23;
  v24 = swift_task_alloc();
  *(v1 + 728) = v24;
  v25 = sub_10010FC20(&qword_10118E0F0, &qword_100ECEFA0);
  *v24 = v1;
  v24[1] = sub_1003EBFFC;
  v26 = *(v1 + 744);

  return Action.execute(checkSupportedStatus:)(v25, v26, v25);
}

uint64_t sub_1003EBFFC()
{
  *(*v1 + 736) = v0;

  if (v0)
  {
    v2 = sub_1003EC17C;
  }

  else
  {
    v2 = sub_1003EC110;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003EC110()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003EC17C()
{
  v25 = v0;
  (*(v0 + 704))(*(v0 + 680), *(v0 + 696), *(v0 + 664));
  v1 = *(v0 + 224);
  *(v0 + 464) = *(v0 + 208);
  *(v0 + 480) = v1;
  v2 = *(v0 + 256);
  *(v0 + 496) = *(v0 + 240);
  *(v0 + 512) = v2;
  v3 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 144);
  *(v0 + 416) = v3;
  v4 = *(v0 + 192);
  *(v0 + 432) = *(v0 + 176);
  *(v0 + 448) = v4;
  sub_1000089F8(v0 + 400, v0 + 528, &qword_10118E0F0, &qword_100ECEFA0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 736);
    v22 = *(v0 + 680);
    v23 = *(v0 + 720);
    v8 = *(v0 + 664);
    v9 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v9 = 136446466;
    v10 = ActionType.rawValue.getter(*(v0 + 464));
    v12 = v11;
    sub_1000095E8(v0 + 400, &qword_10118E0F0, &qword_100ECEFA0);
    v13 = sub_1000105AC(v10, v12, &v24);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v0 + 656) = v7;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v14 = String.init<A>(describing:)();
    v16 = sub_1000105AC(v14, v15, &v24);

    *(v9 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "[MusicUI Actions] Failed to execute action=%{public}s with error=%{public}s", v9, 0x16u);
    swift_arrayDestroy();

    v23(v22, v8);
  }

  else
  {
    v17 = *(v0 + 720);
    v18 = *(v0 + 680);
    v19 = *(v0 + 664);

    sub_1000095E8(v0 + 400, &qword_10118E0F0, &qword_100ECEFA0);

    v17(v18, v19);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1003EC444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_10010FC20(&qword_10118E0D8, &qword_100ECA478);
  v4[3] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_1003EC514, v6, v5);
}

uint64_t sub_1003EC514()
{
  static Actions.Collaborate.action(context:)(v0[2], v0[3]);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1003EC5B0;

  return sub_1003EA544(1);
}

uint64_t sub_1003EC5B0()
{
  v1 = *v0;
  v2 = *(*v0 + 24);

  sub_1000095E8(v2, &qword_10118E0D8, &qword_100ECA478);
  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return _swift_task_switch(sub_1003EC704, v4, v3);
}

uint64_t sub_1003EC704()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003EC76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a4;
  type metadata accessor for MainActor();
  v4[17] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[18] = v6;
  v4[19] = v5;

  return _swift_task_switch(sub_1003EC804, v6, v5);
}

uint64_t sub_1003EC804()
{
  static Actions.MoveToFolder.action(context:)(*(v0 + 128), v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_1003EC8A4;

  return sub_1003EACF0(0);
}

uint64_t sub_1003EC8A4()
{
  v1 = *v0;

  sub_1000095E8(v1 + 16, &qword_10118E0E0, &qword_100ECA490);
  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return _swift_task_switch(sub_1003F6C60, v3, v2);
}

uint64_t sub_1003EC9E0()
{
  Context = type metadata accessor for ReportAConcernSearchQueryContext();
  v45 = *(Context - 8);
  __chkstk_darwin();
  v44 = &v43 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for SocialProfileDescriptor();
  v48 = *(v49 - 8);
  __chkstk_darwin();
  v47 = &v43 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Playlist();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CreditArtist();
  v51 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for Song();
  v52 = *(v50 - 8);
  __chkstk_darwin();
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v43 - v11;
  v13 = type metadata accessor for ReportableMusicItem();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin();
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v53, v13, v15);
  v18 = (*(v14 + 88))(v17, v13);
  if (v18 == enum case for ReportableMusicItem.playlist(_:))
  {
    (*(v14 + 96))(v17, v13);
    (*(v3 + 32))(v5, v17, v2);
    v19 = Playlist.catalogID.getter();
    if (!v20)
    {
      v19 = Playlist.id.getter();
    }

    v21 = v19;
    (*(v3 + 8))(v5, v2);
  }

  else if (v18 == enum case for ReportableMusicItem.creditArtist(_:))
  {
    (*(v14 + 96))(v17, v13);
    v22 = v51;
    (*(v51 + 32))(v8, v17, v6);
    v21 = CreditArtist.id.getter();
    (*(v22 + 8))(v8, v6);
  }

  else if (v18 == enum case for ReportableMusicItem.creditSong(_:))
  {
    (*(v14 + 96))(v17, v13);
    v23 = v52;
    v24 = v50;
    (*(v52 + 32))(v12, v17, v50);
    v25 = Song.catalogID.getter();
    if (!v26)
    {
      v25 = Song.id.getter();
    }

    v21 = v25;
    (*(v23 + 8))(v12, v24);
  }

  else
  {
    v27 = v52;
    if (v18 == enum case for ReportableMusicItem.lyricsSong(_:))
    {
      (*(v14 + 96))(v17, v13);
      v28 = v50;
      (*(v27 + 32))(v10, v17, v50);
      v29 = Song.catalogID.getter();
      if (!v30)
      {
        v29 = Song.id.getter();
      }

      v21 = v29;
      (*(v27 + 8))(v10, v28);
    }

    else if (v18 == enum case for ReportableMusicItem.socialProfile(_:))
    {
      (*(v14 + 96))(v17, v13);
      v31 = v48;
      v32 = v47;
      v33 = v49;
      (*(v48 + 32))(v47, v17, v49);
      v21 = SocialProfileDescriptor.musicItemID.getter();
      (*(v31 + 8))(v32, v33);
    }

    else if (v18 == enum case for ReportableMusicItem.searchQueryContext(_:))
    {
      (*(v14 + 96))(v17, v13);
      v34 = v45;
      v35 = v44;
      v36 = Context;
      (*(v45 + 32))(v44, v17, Context);
      v21 = ReportAConcernSearchQueryContext.term.getter();
      sub_10010FC20(&unk_1011972C0, &qword_100ECF9B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100EBDC20;
      strcpy((inited + 32), "queryContext");
      *(inited + 45) = 0;
      *(inited + 46) = -5120;
      v38 = ReportAConcernSearchQueryContext.context.getter();
      v39 = sub_10010FC20(&qword_10118E0E8, &unk_100ECA4A0);
      *(inited + 48) = v38;
      *(inited + 72) = v39;
      *(inited + 80) = 0x6554686372616573;
      *(inited + 88) = 0xEA00000000006D72;
      v40 = ReportAConcernSearchQueryContext.term.getter();
      *(inited + 120) = &type metadata for String;
      *(inited + 96) = v40;
      *(inited + 104) = v41;
      sub_10010BC60(inited);
      swift_setDeallocating();
      sub_10010FC20(&unk_1011927D0, &unk_100EBA560);
      swift_arrayDestroy();
      (*(v34 + 8))(v35, v36);
    }

    else
    {
      (*(v14 + 8))(v17, v13);
      return 0;
    }
  }

  return v21;
}

uint64_t sub_1003ED1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  type metadata accessor for MainActor();
  v4[18] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[19] = v6;
  v4[20] = v5;

  return _swift_task_switch(sub_1003ED268, v6, v5);
}

uint64_t sub_1003ED268()
{
  static Actions.ReportConcern.action(context:)(*(v0 + 136), v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  *v1 = v0;
  v1[1] = sub_1003ED308;

  return sub_1003EB4A0(1);
}

uint64_t sub_1003ED308()
{
  v1 = *v0;

  sub_1000095E8(v1 + 16, &qword_1011839B0, &unk_100EC73E0);
  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_1003ED444, v3, v2);
}

uint64_t sub_1003ED444()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003ED4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  type metadata accessor for MainActor();
  v5[23] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[24] = v7;
  v5[25] = v6;

  return _swift_task_switch(sub_1003ED53C, v7, v6);
}

uint64_t sub_1003ED53C()
{
  v1 = *(v0 + 176);
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 152) = xmmword_100EBCEF0;
  PresentationSource.init(viewController:position:)(v1, v0 + 112, v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 208) = v2;
  *v2 = v0;
  v2[1] = sub_1003ED62C;
  v3 = *(v0 + 168);

  return sub_10012ACF4(v3, 0, 0, 0, 0, v0 + 16);
}

uint64_t sub_1003ED62C()
{
  v1 = *v0;

  sub_10012BA6C(v1 + 16);
  v2 = *(v1 + 200);
  v3 = *(v1 + 192);

  return _swift_task_switch(sub_1003ED758, v3, v2);
}

uint64_t sub_1003ED758()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003ED7B8(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v7 = type metadata accessor for SocialProfileDescriptor();
  v6[23] = v7;
  v6[24] = *(v7 - 8);
  v6[25] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[26] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[27] = v9;
  v6[28] = v8;

  return _swift_task_switch(sub_1003ED8AC, v9, v8);
}

uint64_t sub_1003ED8AC()
{
  v1 = *(v0 + 176);
  MusicFriendsInviteDescriptor.userProfileDescriptor.getter();
  v2 = MusicFriendsInviteDescriptor.recipientEmail.getter();
  v4 = v3;
  *(v0 + 232) = v3;
  v5 = MusicFriendsInviteDescriptor.recipientPhoneNumber.getter();
  v7 = v6;
  *(v0 + 240) = v6;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 152) = xmmword_100EBCEF0;
  PresentationSource.init(viewController:position:)(v1, v0 + 112, v0 + 16);
  v8 = swift_task_alloc();
  *(v0 + 248) = v8;
  *v8 = v0;
  v8[1] = sub_1003ED9D8;
  v9 = *(v0 + 200);

  return sub_10012ACF4(v9, v2, v4, v5, v7, v0 + 16);
}

uint64_t sub_1003ED9D8()
{
  v1 = *v0;

  sub_10012BA6C(v1 + 16);
  v2 = *(v1 + 224);
  v3 = *(v1 + 216);

  return _swift_task_switch(sub_1003EDB44, v3, v2);
}

uint64_t sub_1003EDB44()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[24];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003EDBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  type metadata accessor for MainActor();
  v5[23] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[24] = v7;
  v5[25] = v6;

  return _swift_task_switch(sub_1003EDC68, v7, v6);
}

uint64_t sub_1003EDC68()
{
  v1 = *(v0 + 176);
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 152) = xmmword_100EBCEF0;
  PresentationSource.init(viewController:position:)(v1, v0 + 112, v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 208) = v2;
  *v2 = v0;
  v2[1] = sub_1003EDD48;
  v3 = *(v0 + 168);

  return sub_10012B1C0(v3, v0 + 16);
}

uint64_t sub_1003EDD48()
{
  v1 = *v0;

  sub_10012BA6C(v1 + 16);
  v2 = *(v1 + 200);
  v3 = *(v1 + 192);

  return _swift_task_switch(sub_1003F6C64, v3, v2);
}

uint64_t sub_1003EDE74@<X0>(uint64_t *a1@<X8>)
{
  v133 = a1;
  v84 = type metadata accessor for UploadedVideo();
  v83 = *(v84 - 8);
  __chkstk_darwin();
  v82 = &v81 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for UploadedAudio();
  v86 = *(v87 - 8);
  __chkstk_darwin();
  v85 = &v81 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for TVShow();
  v89 = *(v90 - 8);
  __chkstk_darwin();
  v88 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for TVSeason();
  v92 = *(v93 - 8);
  __chkstk_darwin();
  v91 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for TVEpisode();
  v95 = *(v96 - 8);
  __chkstk_darwin();
  v94 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for Track();
  v98 = *(v99 - 8);
  __chkstk_darwin();
  v97 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for Station();
  v101 = *(v102 - 8);
  __chkstk_darwin();
  v100 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for Song();
  v104 = *(v105 - 8);
  __chkstk_darwin();
  v103 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for RecordLabel();
  v107 = *(v108 - 8);
  __chkstk_darwin();
  v106 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for RadioShow();
  v110 = *(v111 - 8);
  __chkstk_darwin();
  v109 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Playlist();
  v113 = *(v11 - 8);
  v114 = v11;
  __chkstk_darwin();
  v112 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MusicVideo();
  v116 = *(v13 - 8);
  v117 = v13;
  __chkstk_darwin();
  v115 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MusicMovie();
  v119 = *(v15 - 8);
  v120 = v15;
  __chkstk_darwin();
  v118 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Genre();
  v122 = *(v17 - 8);
  v123 = v17;
  __chkstk_darwin();
  v121 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for EditorialItem();
  v125 = *(v19 - 8);
  v126 = v19;
  __chkstk_darwin();
  v124 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Curator();
  v128 = *(v21 - 8);
  v129 = v21;
  __chkstk_darwin();
  v127 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Composer();
  v130 = *(v23 - 8);
  v131 = v23;
  __chkstk_darwin();
  v25 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Artist();
  v27 = *(v26 - 8);
  __chkstk_darwin();
  v29 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Album();
  v31 = *(v30 - 8);
  __chkstk_darwin();
  v33 = &v81 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for ShareableMusicItem();
  v35 = *(v34 - 8);
  v36 = __chkstk_darwin();
  v38 = &v81 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v35 + 16))(v38, v132, v34, v36);
  v39 = (*(v35 + 88))(v38, v34);
  if (v39 == enum case for ShareableMusicItem.album(_:))
  {
    (*(v35 + 96))(v38, v34);
    v40 = *(v31 + 32);
    v40(v33, v38, v30);
    v41 = v133;
    v133[3] = v30;
    v41[4] = &protocol witness table for Album;
    v42 = sub_10001C8B8(v41);
    return (v40)(v42, v33, v30);
  }

  v44 = v133;
  if (v39 == enum case for ShareableMusicItem.artist(_:))
  {
    (*(v35 + 96))(v38, v34);
    v45 = *(v27 + 32);
    v45(v29, v38, v26);
    v44[3] = v26;
    v44[4] = &protocol witness table for Artist;
    v46 = sub_10001C8B8(v44);
    return (v45)(v46, v29, v26);
  }

  if (v39 == enum case for ShareableMusicItem.composer(_:))
  {
    (*(v35 + 96))(v38, v34);
    v47 = v131;
    v48 = *(v130 + 32);
    v48(v25, v38, v131);
    v44[3] = v47;
    v44[4] = sub_1000340AC(&qword_10118E130, &type metadata accessor for Composer, &protocol conformance descriptor for Composer);
    v49 = sub_10001C8B8(v44);
    return (v48)(v49, v25, v47);
  }

  if (v39 == enum case for ShareableMusicItem.curator(_:))
  {
    (*(v35 + 96))(v38, v34);
    v50 = v127;
    v51 = *(v128 + 32);
    v52 = v38;
    v53 = v129;
    v51(v127, v52, v129);
    v54 = &protocol witness table for Curator;
LABEL_9:
    v44[3] = v53;
    v44[4] = v54;
LABEL_13:
    v59 = sub_10001C8B8(v44);
    v60 = v50;
    v61 = v53;
    return (v51)(v59, v60, v61);
  }

  if (v39 == enum case for ShareableMusicItem.editorialItem(_:))
  {
    (*(v35 + 96))(v38, v34);
    v50 = v124;
    v51 = *(v125 + 32);
    v55 = v38;
    v53 = v126;
    v51(v124, v55, v126);
    v44[3] = v53;
    v56 = &unk_10118E128;
    v57 = &type metadata accessor for EditorialItem;
    v58 = &protocol conformance descriptor for EditorialItem;
LABEL_12:
    v44[4] = sub_1000340AC(v56, v57, v58);
    goto LABEL_13;
  }

  if (v39 == enum case for ShareableMusicItem.findFriendInvite(_:))
  {
    goto LABEL_17;
  }

  if (v39 == enum case for ShareableMusicItem.genre(_:))
  {
    (*(v35 + 96))(v38, v34);
    v50 = v121;
    v51 = *(v122 + 32);
    v62 = v38;
    v53 = v123;
    v51(v121, v62, v123);
    v54 = &protocol witness table for Genre;
    goto LABEL_9;
  }

  if (v39 == enum case for ShareableMusicItem.musicMovie(_:))
  {
    (*(v35 + 96))(v38, v34);
    v50 = v118;
    v51 = *(v119 + 32);
    v63 = v38;
    v53 = v120;
    v51(v118, v63, v120);
    v44[3] = v53;
    v56 = &unk_10118E120;
    v57 = &type metadata accessor for MusicMovie;
    v58 = &protocol conformance descriptor for MusicMovie;
    goto LABEL_12;
  }

  if (v39 == enum case for ShareableMusicItem.musicVideo(_:))
  {
    (*(v35 + 96))(v38, v34);
    v50 = v115;
    v51 = *(v116 + 32);
    v64 = v38;
    v53 = v117;
    v51(v115, v64, v117);
    v54 = &protocol witness table for MusicVideo;
    goto LABEL_9;
  }

  if (v39 == enum case for ShareableMusicItem.playlist(_:))
  {
    (*(v35 + 96))(v38, v34);
    v51 = *(v113 + 32);
    v50 = v112;
    v65 = v38;
    v53 = v114;
    v51(v112, v65, v114);
    v54 = &protocol witness table for Playlist;
    goto LABEL_9;
  }

  if (v39 == enum case for ShareableMusicItem.radioShow(_:))
  {
    (*(v35 + 96))(v38, v34);
    v51 = *(v110 + 32);
    v50 = v109;
    v66 = v38;
    v53 = v111;
    v51(v109, v66, v111);
    v54 = &protocol witness table for RadioShow;
    goto LABEL_9;
  }

  if (v39 == enum case for ShareableMusicItem.recordLabel(_:))
  {
    (*(v35 + 96))(v38, v34);
    v51 = *(v107 + 32);
    v50 = v106;
    v67 = v38;
    v53 = v108;
    v51(v106, v67, v108);
    v54 = &protocol witness table for RecordLabel;
    goto LABEL_9;
  }

  if (v39 == enum case for ShareableMusicItem.shareURL(_:) || v39 == enum case for ShareableMusicItem.socialProfile(_:))
  {
LABEL_17:
    result = (*(v35 + 8))(v38, v34);
    v44[4] = 0;
    *v44 = 0u;
    *(v44 + 1) = 0u;
    return result;
  }

  if (v39 == enum case for ShareableMusicItem.song(_:))
  {
    (*(v35 + 96))(v38, v34);
    v68 = *(v104 + 32);
    v69 = v103;
    v70 = v38;
    v71 = v105;
    v68(v103, v70, v105);
    v72 = &protocol witness table for Song;
LABEL_38:
    v44[3] = v71;
    v44[4] = v72;
    v75 = sub_10001C8B8(v44);
    return (v68)(v75, v69, v71);
  }

  if (v39 == enum case for ShareableMusicItem.station(_:))
  {
    (*(v35 + 96))(v38, v34);
    v68 = *(v101 + 32);
    v69 = v100;
    v73 = v38;
    v71 = v102;
    v68(v100, v73, v102);
    v72 = &protocol witness table for Station;
    goto LABEL_38;
  }

  if (v39 == enum case for ShareableMusicItem.track(_:))
  {
    (*(v35 + 96))(v38, v34);
    v68 = *(v98 + 32);
    v69 = v97;
    v74 = v38;
    v71 = v99;
    v68(v97, v74, v99);
    v72 = &protocol witness table for Track;
    goto LABEL_38;
  }

  if (v39 == enum case for ShareableMusicItem.tvEpisode(_:))
  {
    (*(v35 + 96))(v38, v34);
    v51 = *(v95 + 32);
    v76 = v94;
    v77 = v96;
    v51(v94, v38, v96);
    v44[3] = v77;
    v78 = &unk_10118E118;
    v79 = &type metadata accessor for TVEpisode;
    v80 = &protocol conformance descriptor for TVEpisode;
  }

  else if (v39 == enum case for ShareableMusicItem.tvSeason(_:))
  {
    (*(v35 + 96))(v38, v34);
    v51 = *(v92 + 32);
    v76 = v91;
    v77 = v93;
    v51(v91, v38, v93);
    v44[3] = v77;
    v78 = &unk_10118E110;
    v79 = &type metadata accessor for TVSeason;
    v80 = &protocol conformance descriptor for TVSeason;
  }

  else if (v39 == enum case for ShareableMusicItem.tvShow(_:))
  {
    (*(v35 + 96))(v38, v34);
    v51 = *(v89 + 32);
    v76 = v88;
    v77 = v90;
    v51(v88, v38, v90);
    v44[3] = v77;
    v78 = &unk_10118E108;
    v79 = &type metadata accessor for TVShow;
    v80 = &protocol conformance descriptor for TVShow;
  }

  else if (v39 == enum case for ShareableMusicItem.uploadedAudio(_:))
  {
    (*(v35 + 96))(v38, v34);
    v51 = *(v86 + 32);
    v76 = v85;
    v77 = v87;
    v51(v85, v38, v87);
    v44[3] = v77;
    v78 = &unk_10118E100;
    v79 = &type metadata accessor for UploadedAudio;
    v80 = &protocol conformance descriptor for UploadedAudio;
  }

  else
  {
    if (v39 != enum case for ShareableMusicItem.uploadedVideo(_:))
    {
      v133[4] = 0;
      *v44 = 0u;
      *(v44 + 1) = 0u;
      return (*(v35 + 8))(v38, v34);
    }

    (*(v35 + 96))(v38, v34);
    v51 = *(v83 + 32);
    v76 = v82;
    v77 = v84;
    v51(v82, v38, v84);
    v44[3] = v77;
    v78 = &unk_10118E0F8;
    v79 = &type metadata accessor for UploadedVideo;
    v80 = &protocol conformance descriptor for UploadedVideo;
  }

  v44[4] = sub_1000340AC(v78, v79, v80);
  v59 = sub_10001C8B8(v44);
  v60 = v76;
  v61 = v77;
  return (v51)(v59, v60, v61);
}