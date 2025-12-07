uint64_t sub_1005A1F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *a3;
  if (*(a3 + 16))
  {
    v10 = *(a3 + 8);
    if (*(a3 + 16) == 1)
    {
      sub_1000065A8(0, &qword_100ADE560, UICollectionViewCell_ptr);

      v11 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
      sub_1005A5538(v9, v10, 1);
      return v11;
    }

    if (v9 > 1)
    {
      v13 = &qword_100ADE560;
      v14 = UICollectionViewCell_ptr;
    }

    else if (v9 | v10)
    {
      v13 = &qword_100AD4D40;
      v14 = UICollectionViewListCell_ptr;
    }

    else
    {
      v13 = &qword_100ADE560;
      v14 = UICollectionViewCell_ptr;
    }

    sub_1000065A8(0, v13, v14);
  }

  else
  {
    sub_1000065A8(0, &qword_100ADE560, UICollectionViewCell_ptr);
  }

  return UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
}

uint64_t sub_1005A20D4()
{
  v1 = sub_1000F24EC(&qword_100AE9F00, &qword_10095EA30);
  v29 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v26 - v2;
  sub_1005A5624();
  sub_1005A5588();
  NSDiffableDataSourceSnapshot.init()();
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_100A5A610);
  LOBYTE(v31) = 0;
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_100A5A670);
  LOBYTE(v31) = 1;
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_100A5A6D0);
  v28 = v0;
  v4 = *(v0 + OBJC_IVAR____TtC7Journal30CustomizeJournalViewController_viewModel);
  v5 = *(v4 + 88);
  v6 = *(v5 + 16);
  v30 = v3;
  if (v6)
  {
    v31 = _swiftEmptyArrayStorage;

    sub_10019A254(0, v6, 0);
    v7 = v31;
    v8 = *(v31 + 2);
    v9 = 3 * v8;
    v10 = 32;
    do
    {
      v11 = *(v5 + v10);
      v31 = v7;
      v12 = *(v7 + 3);
      v13 = v8 + 1;
      if (v8 >= v12 >> 1)
      {
        sub_10019A254((v12 > 1), v8 + 1, 1);
        v7 = v31;
      }

      *(v7 + 2) = v13;
      v14 = &v7[v9];
      *(v14 + 4) = v11;
      v14[5] = 0.0;
      *(v14 + 48) = 0;
      v9 += 3;
      ++v10;
      v8 = v13;
      --v6;
    }

    while (v6);

    v3 = v30;
  }

  LOBYTE(v31) = 2;
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

  LOBYTE(v31) = 2;
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_100A5A730);
  LOBYTE(v31) = 3;
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
  v15 = *(v4 + 96);
  v16 = *(v15 + 16);
  if (v16)
  {
    v27 = v1;
    v31 = _swiftEmptyArrayStorage;

    sub_10019A254(0, v16, 0);
    v17 = v31;
    v26 = v15;
    v18 = (v15 + 40);
    do
    {
      v19 = *(v18 - 1);
      v20 = *v18;
      v31 = v17;
      v22 = *(v17 + 2);
      v21 = *(v17 + 3);

      if (v22 >= v21 >> 1)
      {
        sub_10019A254((v21 > 1), v22 + 1, 1);
        v17 = v31;
      }

      *(v17 + 2) = v22 + 1;
      v23 = &v17[3 * v22];
      *(v23 + 4) = v19;
      *(v23 + 5) = v20;
      *(v23 + 48) = 1;
      v18 += 2;
      --v16;
    }

    while (v16);

    v1 = v27;
    v3 = v30;
  }

  LOBYTE(v31) = 3;
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v24 = v31;
  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

  return (*(v29 + 8))(v3, v1);
}

void sub_1005A24BC()
{
  v1 = sub_1000F24EC(&qword_100AE9F00, &qword_10095EA30);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC7Journal30CustomizeJournalViewController_viewModel);
  swift_getKeyPath();
  v12 = v5;
  sub_1005A54CC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = v5[7];
  if (v6)
  {
    v7 = v5[6];
    swift_getKeyPath();
    swift_getKeyPath();

    static UIViewController.ViewLoading.subscript.getter();

    v8 = v12;
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    sub_1000F24EC(&qword_100AD65A0, &qword_100945280);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100940080;
    *(v9 + 32) = v7;
    *(v9 + 40) = v6;
    *(v9 + 48) = 1;
    NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v9);

    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v10 = v12;
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_1005A26FC()
{
  v1 = sub_1000F24EC(&qword_100AE9F08, &qword_10095EA38);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v17 - v3;
  sub_1005A5588();
  NSDiffableDataSourceSectionSnapshot.init()();
  v5 = *(*(v0 + OBJC_IVAR____TtC7Journal30CustomizeJournalViewController_viewModel) + 88);
  v6 = *(v5 + 16);
  if (v6)
  {
    v17[1] = v0;
    v18 = v2;
    v19 = _swiftEmptyArrayStorage;

    sub_10019A254(0, v6, 0);
    v7 = v19;
    v8 = *(v19 + 2);
    v9 = 3 * v8;
    v10 = 32;
    do
    {
      v11 = *(v5 + v10);
      v19 = v7;
      v12 = *(v7 + 3);
      v13 = v8 + 1;
      if (v8 >= v12 >> 1)
      {
        sub_10019A254((v12 > 1), v8 + 1, 1);
        v7 = v19;
      }

      *(v7 + 2) = v13;
      v14 = &v7[v9];
      *(v14 + 4) = v11;
      v14[5] = 0.0;
      *(v14 + 48) = 0;
      v9 += 3;
      ++v10;
      v8 = v13;
      --v6;
    }

    while (v6);

    v2 = v18;
  }

  v19 = 0;
  v20 = 0;
  v21 = -1;
  NSDiffableDataSourceSectionSnapshot.append(_:to:)();

  v19 = 0;
  v20 = 0;
  v21 = -1;
  NSDiffableDataSourceSectionSnapshot.append(_:to:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v15 = v19;
  LOBYTE(v19) = 2;
  UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1005A2968()
{
  v0 = sub_1000F24EC(&qword_100AE9F00, &qword_10095EA30);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - v2;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v4 = v8;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  NSDiffableDataSourceSnapshot.reconfigureItems(_:)(&off_100A5A7C8);
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v5 = v8;
  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

  return (*(v1 + 8))(v3, v0);
}

id sub_1005A2B08(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICollectionLayoutListConfiguration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v67 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v60 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v15 = Strong;
  v65 = v5;
  v66 = v9;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v16 = v68;
  dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();

  if (v68 <= 1u)
  {
    if (v68)
    {
      (*(v65 + 104))(v7, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v4);
      UICollectionLayoutListConfiguration.init(appearance:)();
      v58 = [objc_opt_self() clearColor];
      UICollectionLayoutListConfiguration.backgroundColor.setter();
      sub_1000065A8(0, &unk_100AD4440, NSCollectionLayoutSection_ptr);
      v42 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
      [v42 contentInsets];
      [v42 setContentInsets:20.0];
      [v42 contentInsets];
      [v42 setContentInsets:?];

      (*(v66 + 8))(v13, v8);
    }

    else
    {
      v44 = objc_opt_self();
      v45 = [v44 absoluteDimension:96.0];
      v46 = [v44 absoluteDimension:96.0];
      v47 = objc_opt_self();
      v48 = [v47 sizeWithWidthDimension:v45 heightDimension:v46];

      v49 = [objc_opt_self() itemWithLayoutSize:v48];
      v50 = objc_opt_self();
      v51 = [v50 flexibleSpacing:0.0];
      v52 = [v50 flexibleSpacing:0.0];
      v53 = [objc_opt_self() spacingForLeading:v51 top:0 trailing:v52 bottom:0];

      [v49 setEdgeSpacing:v53];
      v54 = [v44 fractionalWidthDimension:1.0];
      v55 = [v44 absoluteDimension:96.0];
      v56 = [v47 sizeWithWidthDimension:v54 heightDimension:v55];

      v57 = [objc_opt_self() horizontalGroupWithLayoutSize:v56 repeatingSubitem:v49 count:1];
      v42 = [objc_opt_self() sectionWithGroup:v57];
    }

    return v42;
  }

  if (v68 - 2 >= 2)
  {

    return 0;
  }

  v63 = v8;
  v64 = v15;
  v62 = v68;
  v17 = [a2 traitCollection];
  v18 = [v17 userInterfaceIdiom];

  if (v18 == 5)
  {
    v19 = 28.0;
  }

  else
  {
    v19 = 40.0;
  }

  v20 = objc_opt_self();
  v21 = [v20 absoluteDimension:v19];
  v22 = [v20 absoluteDimension:v19];
  v23 = objc_opt_self();
  v24 = [v23 sizeWithWidthDimension:v21 heightDimension:v22];

  v25 = objc_opt_self();
  v61 = v24;
  v26 = [v25 itemWithLayoutSize:v24];
  v27 = objc_opt_self();
  v28 = [v27 flexibleSpacing:0.0];
  v29 = [v27 flexibleSpacing:0.0];
  v30 = [objc_opt_self() spacingForLeading:v28 top:0 trailing:v29 bottom:0];

  [v26 setEdgeSpacing:v30];
  v31 = [v20 fractionalWidthDimension:1.0];
  v32 = [v20 absoluteDimension:v19];
  v33 = [v23 sizeWithWidthDimension:v31 heightDimension:v32];

  v34 = objc_opt_self();
  sub_1000F24EC(&unk_100AD4780, &unk_100941070);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100941D50;
  *(v35 + 32) = v26;
  sub_1000065A8(0, &unk_100AD8A80, NSCollectionLayoutItem_ptr);
  v36 = v26;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v38 = [v34 horizontalGroupWithLayoutSize:v33 subitems:isa];

  v39 = [v27 fixedSpacing:10.0];
  [v38 setInterItemSpacing:v39];

  (*(v65 + 104))(v7, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v4);
  v40 = v67;
  UICollectionLayoutListConfiguration.init(appearance:)();
  sub_1000065A8(0, &unk_100AD4440, NSCollectionLayoutSection_ptr);
  v41 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  v42 = [objc_opt_self() sectionWithGroup:v38];
  [v42 setInterGroupSpacing:12.0];
  [v41 contentInsets];
  [v42 contentInsets];
  [v42 setContentInsets:?];
  [v41 contentInsets];
  [v42 contentInsets];
  [v42 setContentInsets:?];
  [v42 contentInsets];
  [v42 setContentInsets:8.0];
  [v42 contentInsets];
  [v42 setContentInsets:8.0];
  [v42 contentInsets];
  v43 = (v66 + 8);
  [v42 setContentInsets:?];

  (*v43)(v40, v63);
  return v42;
}

uint64_t sub_1005A34CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1005A3564, v6, v5);
}

uint64_t sub_1005A3564()
{
  v1 = [*(v0 + 16) traitCollection];
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1005A3620;

  return sub_1003DA88C(v1);
}

uint64_t sub_1005A3620()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1005A37B4;
  }

  else
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1005A373C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1005A373C()
{

  [*(v0 + 16) dismissViewControllerAnimated:1 completion:0];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005A37B4()
{
  v1 = *(v0 + 48);

  if (qword_100AD0008 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100AE9DF0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error while saving changes to the journal: %@", v5, 0xCu);
    sub_100004F84(v6, &unk_100AD4BB0, &unk_100941E50);
  }

  else
  {
  }

  [*(v0 + 16) dismissViewControllerAnimated:1 completion:0];
  v8 = *(v0 + 8);

  return v8();
}

void sub_1005A3AB0()
{
  v1 = v0;
  v2 = [objc_allocWithZone(type metadata accessor for ColorPickerViewController()) init];
  [v2 setSupportsAlpha:0];
  [v2 setDelegate:v0];
  *&v2[OBJC_IVAR____TtC7Journal25ColorPickerViewController_journalDelegate + 8] = &off_100A743D8;
  swift_unknownObjectWeakAssign();
  v3 = v2;
  [v3 setModalPresentationStyle:7];
  v4 = [v0 collectionView];
  if (v4)
  {
    v5 = v4;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v7 = [v5 cellForItemAtIndexPath:isa];

    v8 = [v3 popoverPresentationController];
    if (v8)
    {
      [v8 setSourceItem:v7];
    }

    [v1 presentViewController:v3 animated:1 completion:0];

    v9 = *&v1[OBJC_IVAR____TtC7Journal30CustomizeJournalViewController_colorPickerViewController];
    *&v1[OBJC_IVAR____TtC7Journal30CustomizeJournalViewController_colorPickerViewController] = v3;
  }

  else
  {
    __break(1u);
  }
}

id sub_1005A3C90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustomizeJournalViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CustomizeJournalViewController(uint64_t a1)
{
  result = qword_100AE9E58;
  if (!qword_100AE9E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005A3E30(uint64_t a1)
{
  sub_1005A3F18(319);
  if (v1 <= 0x3F)
  {
    sub_10000C298(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1005A3F18(uint64_t a1)
{
  if (!qword_100AE9E68)
  {
    sub_1000F2A18(&unk_100AD4D10, &qword_10095E810);
    v1 = type metadata accessor for UIViewController.ViewLoading();
    if (!v2)
    {
      atomic_store(v1, &qword_100AE9E68);
    }
  }
}

void sub_1005A3F7C(void *a1, uint64_t a2)
{
  v52 = a1;
  v3 = sub_1000F24EC(&unk_100ADFB90, &qword_1009512D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v41 - v4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v41 - v11;
  swift_getKeyPath();
  swift_getKeyPath();
  v54 = v2;
  static UIViewController.ViewLoading.subscript.getter();

  v13 = v59;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v14 = v60;
  if (v60 == 255)
  {
    return;
  }

  v16 = *(&v59 + 1);
  v15 = v59;
  if (v60 == 2)
  {
    v17 = v59 == 1 && *(&v59 + 1) == 0;
    v18 = v17;
    if (v59 == 0 || v18)
    {
      return;
    }
  }

  v19 = [v52 indexPathsForSelectedItems];
  if (!v19)
  {
LABEL_57:
    sub_1005A5524(v15, v16, v14);
    return;
  }

  v49 = v16;
  v50 = v15;
  v53 = v14;
  v45 = v9;
  v46 = v5;
  v20 = v19;
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v57 = *(v21 + 16);
  if (!v57)
  {
LABEL_56:

    LOBYTE(v14) = v53;
    v16 = v49;
    v15 = v50;
    goto LABEL_57;
  }

  v22 = 0;
  v23 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v51 = OBJC_IVAR____TtC7Journal30CustomizeJournalViewController_viewModel;
  v56 = v21 + v23;
  v55 = v7 + 16;
  if (v49)
  {
    v24 = 0;
  }

  else
  {
    v24 = v50 == 3;
  }

  if (v49)
  {
    v25 = 0;
  }

  else
  {
    v25 = v50 == 2;
  }

  v47 = v25;
  v48 = v24;
  v26 = (v7 + 8);
  v44 = (v7 + 48);
  v42 = (v7 + 32);
  v43 = xmmword_10095E7D0;
  while (v22 < *(v21 + 16))
  {
    (*(v7 + 16))(v12, v56 + *(v7 + 72) * v22, v6);
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v27 = v58;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    v28 = v60;
    if (v60 == 255)
    {
      (*v26)(v12, v6);
      goto LABEL_21;
    }

    v29 = v59;
    if (!v60)
    {
      if (v53 && (v53 != 2 || !v47))
      {
        LOBYTE(v28) = 0;
        goto LABEL_51;
      }

      goto LABEL_43;
    }

    if (v60 == 1)
    {
      if (v53 != 1 && (v53 != 2 || !v48))
      {
        LOBYTE(v28) = 1;
LABEL_51:
        v32.n128_f64[0] = sub_1005A5524(v29, *(&v29 + 1), v28);
LABEL_52:
        (*v26)(v12, v6, v32);
        goto LABEL_21;
      }

      goto LABEL_43;
    }

    if (v60 != 2)
    {
      goto LABEL_51;
    }

    if (!(v59 ^ 2 | *(&v59 + 1)))
    {
      if (v53)
      {
        LOBYTE(v28) = 2;
        goto LABEL_51;
      }

LABEL_43:
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v52 deselectItemAtIndexPath:isa animated:0];

      if (v28 != 2)
      {
        goto LABEL_51;
      }

LABEL_44:
      if (v29 != 3)
      {
        goto LABEL_51;
      }

      goto LABEL_45;
    }

    if (v59 ^ 3 | *(&v59 + 1))
    {
      goto LABEL_44;
    }

    if (v53 == 1 || v53 == 2 && v48)
    {
      goto LABEL_43;
    }

LABEL_45:
    v31 = *&v54[v51];
    swift_getKeyPath();
    *&v59 = v31;
    sub_1005A54CC();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v31 + 72) || v53 && (v53 != 2 || !v47))
    {
      goto LABEL_52;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v33 = v54;
    static UIViewController.ViewLoading.subscript.getter();

    v34 = v59;
    v59 = v43;
    v60 = 2;
    v35 = v46;
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

    if ((*v44)(v35, 1, v6) == 1)
    {
      (*v26)(v12, v6);
      sub_100004F84(v35, &unk_100ADFB90, &qword_1009512D0);
    }

    else
    {
      v36 = v45;
      (*v42)(v45, v35, v6);
      v37 = [v33 collectionView];
      if (!v37)
      {
        goto LABEL_60;
      }

      v38 = v37;
      v39 = IndexPath._bridgeToObjectiveC()().super.isa;
      [v38 deselectItemAtIndexPath:v39 animated:1];

      v40 = *v26;
      (*v26)(v36, v6);
      (v40)(v12, v6);
    }

LABEL_21:
    if (v57 == ++v22)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
}

uint64_t sub_1005A4854(uint64_t a1)
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

uint64_t sub_1005A4870(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1005A48B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1005A48FC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1005A4938()
{
  result = qword_100AE9ED8;
  if (!qword_100AE9ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9ED8);
  }

  return result;
}

unint64_t sub_1005A4990()
{
  result = qword_100AE9EE0;
  if (!qword_100AE9EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9EE0);
  }

  return result;
}

id sub_1005A49E4()
{
  v1 = v0;
  v2 = sub_1000F24EC(&unk_100ADFB90, &qword_1009512D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v9 = v13;
  v13 = xmmword_100955130;
  v14 = 2;
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_100004F84(v4, &unk_100ADFB90, &qword_1009512D0);
  }

  (*(v6 + 32))(v8, v4, v5);
  result = [v1 collectionView];
  if (result)
  {
    v11 = result;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [v11 deselectItemAtIndexPath:isa animated:1];

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005A4C20(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        if (a1 != a4 || a2 != a5)
        {

          return _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        return 1;
      }
    }

    else
    {
      if (a1 > 1)
      {
        if (a1 ^ 2 | a2)
        {
          if (a6 != 2 || a4 != 3)
          {
            return 0;
          }
        }

        else if (a6 != 2 || a4 != 2)
        {
          return 0;
        }
      }

      else
      {
        if (!(a1 | a2))
        {
          return a6 == 2 && !(a5 | a4);
        }

        if (a6 != 2 || a4 != 1)
        {
          return 0;
        }
      }

      if (!a5)
      {
        return 1;
      }
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  v7 = 0xE900000000000065;
  v8 = 0x6E69677265627541;
  v9 = 0xE900000000000065;
  v10 = a1;
  v11 = 0x6E69677265627541;
  switch(v10)
  {
    case 1:
      v9 = 0xE500000000000000;
      v11 = 0x6B63697242;
      break;
    case 2:
      v11 = 0x6E69507974737544;
      v9 = 0xE90000000000006BLL;
      break;
    case 3:
      v9 = 0xE500000000000000;
      v11 = 0x6873756C42;
      break;
    case 4:
      v9 = 0xE400000000000000;
      v11 = 1684955475;
      break;
    case 5:
      v9 = 0xE500000000000000;
      v11 = 0x6863616550;
      break;
    case 6:
      v9 = 0xE700000000000000;
      v11 = 0x646C6172656D45;
      break;
    case 7:
      v11 = 0x73696F7571727554;
      break;
    case 8:
      v9 = 0xE600000000000000;
      v11 = 0x746C61626F43;
      break;
    case 9:
      v11 = 1701273939;
      v9 = 0xE400000000000000;
      break;
    case 10:
      v11 = 0x776F6C666E726F43;
      v9 = 0xEA00000000007265;
      break;
    case 11:
      v9 = 0xE600000000000000;
      v11 = 0x74656C6F6956;
      break;
    case 12:
      v11 = 0x6F7268636F6E6F4DLL;
      v9 = 0xEA0000000000656DLL;
      break;
    default:
      break;
  }

  switch(a4)
  {
    case 1:
      v7 = 0xE500000000000000;
      v8 = 0x6B63697242;
      break;
    case 2:
      v8 = 0x6E69507974737544;
      v7 = 0xE90000000000006BLL;
      break;
    case 3:
      v7 = 0xE500000000000000;
      v8 = 0x6873756C42;
      break;
    case 4:
      v7 = 0xE400000000000000;
      v8 = 1684955475;
      break;
    case 5:
      v7 = 0xE500000000000000;
      v8 = 0x6863616550;
      break;
    case 6:
      v7 = 0xE700000000000000;
      v8 = 0x646C6172656D45;
      break;
    case 7:
      v8 = 0x73696F7571727554;
      break;
    case 8:
      v7 = 0xE600000000000000;
      v8 = 0x746C61626F43;
      break;
    case 9:
      v8 = 1701273939;
      v7 = 0xE400000000000000;
      break;
    case 10:
      v8 = 0x776F6C666E726F43;
      v7 = 0xEA00000000007265;
      break;
    case 11:
      v7 = 0xE600000000000000;
      v8 = 0x74656C6F6956;
      break;
    case 12:
      v8 = 0x6F7268636F6E6F4DLL;
      v7 = 0xEA0000000000656DLL;
      break;
    default:
      break;
  }

  if (v11 == v8 && v9 == v7)
  {

    return 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v12 & 1;
  }
}

void sub_1005A4FFC(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v2 = v10;
  if (v10 > 1u)
  {
    if (v10 != 255)
    {
      if (v10 == 2 && v8 == 2 && !v9)
      {
        sub_1005A3AB0();
        return;
      }

      goto LABEL_11;
    }
  }

  else
  {
    if (v10)
    {
      if (v10 == 1)
      {
        v3 = *(v1 + OBJC_IVAR____TtC7Journal30CustomizeJournalViewController_viewModel);
        sub_1005A5550(v8, v9, 1);
        sub_1003D9A9C(v8, v9);
        if (*(v3 + 72))
        {
          KeyPath = swift_getKeyPath();
          __chkstk_darwin(KeyPath);
          sub_1005A54CC();
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

          sub_1005A5524(v8, v9, 1);
          return;
        }

        *(v3 + 64) = 0;
        *(v3 + 72) = 0;
        v5 = v8;
        v6 = v9;
        v2 = 1;
        goto LABEL_12;
      }

LABEL_11:
      v5 = v8;
      v6 = v9;
LABEL_12:
      sub_1005A5524(v5, v6, v2);
      return;
    }

    v7 = swift_getKeyPath();
    __chkstk_darwin(v7);
    sub_1005A54CC();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_1005A24BC();
    sub_1005A26FC();
  }
}

void sub_1005A5288(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1000F24EC(&unk_100AD68C0, &unk_100941E70);
  *&v4 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v6 = v14 - v5;
  v7 = [v2 traitCollection];
  static MergeableColor.normalized(fromFixed:compatibleWith:)();

  v8 = type metadata accessor for MergeableColor();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_100004F84(v6, &unk_100AD68C0, &unk_100941E70);
  }

  else
  {
    v10 = sub_10007C744();
    (*(v9 + 8))(v6, v8);
    if (v10)
    {
      v11 = *&v2[OBJC_IVAR____TtC7Journal30CustomizeJournalViewController_viewModel];
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v14[-4] = v11;
      v14[-3] = v10;
      LOBYTE(v14[-2]) = 1;
      v14[1] = v11;
      sub_1005A54CC();
      v13 = v10;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      sub_1005A26FC();
    }
  }
}

unint64_t sub_1005A54CC()
{
  result = qword_100AE9EF0;
  if (!qword_100AE9EF0)
  {
    type metadata accessor for CustomizeJournalViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9EF0);
  }

  return result;
}

double sub_1005A5524(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1005A5538(result, a2, a3);
  }

  return v3;
}

double sub_1005A5538(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

double sub_1005A5550(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

unint64_t sub_1005A5588()
{
  result = qword_100AE9F10;
  if (!qword_100AE9F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9F10);
  }

  return result;
}

uint64_t sub_1005A55DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

unint64_t sub_1005A5624()
{
  result = qword_100AE9F20;
  if (!qword_100AE9F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9F20);
  }

  return result;
}

uint64_t sub_1005A56E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_1000F24EC(&unk_100AE9F40, &unk_10095EA88) - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = *(sub_1000F24EC(&qword_100AE9F38, &qword_10095EA80) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(sub_1000F24EC(&qword_100AE9F30, &qword_10095EA78) - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = (*(v14 + 64) + v8 + v15) & ~v8;
  v17 = *(sub_1000F24EC(&qword_100AE9F28, &qword_10095EA70) - 8);
  return sub_1005A1F0C(a1, a2, a3, v3 + v9, v3 + v12, v3 + v15, v3 + v16, v3 + ((v10 + v8 + v16) & ~v8), v3 + ((v10 + *(v17 + 80) + ((v10 + v8 + v16) & ~v8)) & ~*(v17 + 80)));
}

unint64_t sub_1005A5938()
{
  result = qword_100AE9F58;
  if (!qword_100AE9F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9F58);
  }

  return result;
}

unint64_t sub_1005A5A64()
{
  result = qword_100AE9F78;
  if (!qword_100AE9F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9F78);
  }

  return result;
}

unint64_t sub_1005A5B08()
{
  result = qword_100AE9F80;
  if (!qword_100AE9F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9F80);
  }

  return result;
}

uint64_t sub_1005A5B5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_1005A34CC(a1, v4, v5, v6);
}

id sub_1005A5C38(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7Journal15CanvasStackView_reflectionPromptView] = 0;
  *&v4[OBJC_IVAR____TtC7Journal15CanvasStackView_journalEntry] = 0;
  v4[OBJC_IVAR____TtC7Journal15CanvasStackView_isEditing] = 0;
  *&v4[OBJC_IVAR____TtC7Journal15CanvasStackView_mindfulMinutesCanvasTipView] = 0;
  *&v4[OBJC_IVAR____TtC7Journal15CanvasStackView_mindfulMinuteCanvasTipTask] = 0;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for CanvasStackView();
  v9 = objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
  [v9 setAxis:1];
  [v9 setDistribution:0];
  [v9 setAlignment:0];
  [v9 setSpacing:4.0];

  return v9;
}

void sub_1005A5DFC()
{
  v1 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = &v14 - v3;
  v5 = OBJC_IVAR____TtC7Journal15CanvasStackView_mindfulMinuteCanvasTipTask;
  if (*&v0[OBJC_IVAR____TtC7Journal15CanvasStackView_mindfulMinuteCanvasTipTask])
  {

    sub_1000F24EC(&qword_100AD5BC0, &qword_100943550);
    Task.cancel()();
  }

  if (*&v0[OBJC_IVAR____TtC7Journal15CanvasStackView_journalEntry] && v0[OBJC_IVAR____TtC7Journal15CanvasStackView_isEditing] == 1)
  {
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    type metadata accessor for MainActor();
    v7 = v0;
    v8 = v0;
    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = &protocol witness table for MainActor;
    v10[4] = v7;
    *&v8[v5] = sub_1004EC158(0, 0, v4, &unk_10095EBB0, v10);
  }

  else
  {
    v11 = OBJC_IVAR____TtC7Journal15CanvasStackView_mindfulMinutesCanvasTipView;
    v12 = *&v0[OBJC_IVAR____TtC7Journal15CanvasStackView_mindfulMinutesCanvasTipView];
    if (v12)
    {
      [v12 removeFromSuperview];
      v13 = *&v0[v11];
      *&v0[v11] = 0;
    }
  }
}

uint64_t sub_1005A6000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  sub_1000F24EC(&qword_100AD4CD0, &unk_100943730);
  v4[12] = swift_task_alloc();
  v5 = type metadata accessor for Tips.Status();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = sub_1000F24EC(&qword_100AD4CD8, &unk_1009468B0);
  v4[17] = swift_task_alloc();
  v4[18] = sub_1000F24EC(&qword_100AD4CE0, &qword_100943740);
  v4[19] = swift_task_alloc();
  v6 = sub_1000F24EC(&qword_100AE9FE8, &qword_10095EBB8);
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v7 = sub_1000F24EC(&qword_100AE9FF0, &qword_10095EBC0);
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = type metadata accessor for MainActor();
  v4[27] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[28] = v9;
  v4[29] = v8;

  return _swift_task_switch(sub_1005A6278, v9, v8);
}

uint64_t sub_1005A6278()
{
  v1 = v0[11];
  v2 = OBJC_IVAR____TtC7Journal15CanvasStackView_mindfulMinutesCanvasTipView;
  v0[30] = OBJC_IVAR____TtC7Journal15CanvasStackView_mindfulMinutesCanvasTipView;
  if (*(v1 + v2))
  {
    goto LABEL_7;
  }

  if (qword_100ACF988 != -1)
  {
    swift_once();
  }

  if (![objc_opt_self() isHealthDataAvailable])
  {
LABEL_7:

    v10 = v0[1];

    return v10();
  }

  else
  {
    v4 = v0[21];
    v3 = v0[22];
    v5 = v0[20];
    v0[31] = sub_1002AD3E4();
    Tip.shouldDisplayUpdates.getter();
    AsyncMapSequence.base.getter();
    sub_10000B58C(&qword_100AE9FF8, &qword_100AD4CD8, &unk_1009468B0, &protocol conformance descriptor for AsyncStream<A>);
    dispatch thunk of AsyncSequence.makeAsyncIterator()();
    AsyncMapSequence.transform.getter();
    (*(v4 + 8))(v3, v5);
    AsyncMapSequence.Iterator.init(_:transform:)();
    v6 = static MainActor.shared.getter();
    v0[32] = v6;
    if (v6)
    {
      swift_getObjectType();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v0[33] = v7;
    v0[34] = v9;

    return _swift_task_switch(sub_1005A64F8, v7, v9);
  }
}

uint64_t sub_1005A64F8()
{
  v1 = v0[32];
  v0[35] = AsyncMapSequence.Iterator.baseIterator.modify();
  sub_10000B58C(&qword_100AEA000, &qword_100AD4CE0, &qword_100943740, &protocol conformance descriptor for AsyncStream<A>.Iterator);
  v2 = swift_task_alloc();
  v0[36] = v2;
  *v2 = v0;
  v2[1] = sub_1005A65FC;
  v3 = v0[12];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, v1, &protocol witness table for MainActor);
}

uint64_t sub_1005A65FC()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 264);
    v4 = *(v2 + 272);
    v5 = sub_1005A68D4;
  }

  else
  {
    (*(v2 + 280))();
    v3 = *(v2 + 264);
    v4 = *(v2 + 272);
    v5 = sub_1005A6724;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1005A6724()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_1005A7DE0(v3);
    v4 = v0[28];
    v5 = v0[29];

    return _swift_task_switch(sub_1005A6C88, v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[15], v3, v1);
    v6 = AsyncMapSequence.Iterator.transform.getter();
    v0[37] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[38] = v8;
    *v8 = v0;
    v8[1] = sub_1005A68EC;
    v9 = v0[15];

    return (v11)(v0 + 39, v9);
  }
}

uint64_t sub_1005A68EC()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);

  (*(v3 + 8))(v2, v4);
  *(v1 + 313) = *(v1 + 312);
  v5 = *(v1 + 272);
  v6 = *(v1 + 264);

  return _swift_task_switch(sub_1005A6A98, v6, v5);
}

uint64_t sub_1005A6A98()
{

  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return _swift_task_switch(sub_1005A6AFC, v1, v2);
}

uint64_t sub_1005A6AFC()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 88);
  v3 = *&v2[v1];
  if (*(v0 + 313))
  {
    if (v3)
    {
      goto LABEL_7;
    }

    v4 = *(v0 + 248);
    *(v0 + 40) = &type metadata for MindfulMinutesCanvasTip;
    *(v0 + 48) = v4;
    v5 = objc_allocWithZone(type metadata accessor for TipUIView());
    v6 = TipUIView.init(_:arrowEdge:actionHandler:)();
    v7 = *&v2[v1];
    *&v2[v1] = v6;
    v8 = v6;

    v9 = v8;
    [v2 insertArrangedSubview:v9 atIndex:0];
    v10 = [objc_opt_self() systemMintColor];
    [v9 setTintColor:v10];
  }

  else
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    [v3 removeFromSuperview];
    v10 = *&v2[v1];
    *&v2[v1] = 0;
  }

LABEL_7:
  v11 = static MainActor.shared.getter();
  *(v0 + 256) = v11;
  if (v11)
  {
    swift_getObjectType();
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  *(v0 + 264) = v12;
  *(v0 + 272) = v14;

  return _swift_task_switch(sub_1005A64F8, v12, v14);
}

uint64_t sub_1005A6C88()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

double sub_1005A6D60()
{
  v1 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v1 - 8);
  v3 = &v21 - v2;
  result = sub_1005A702C();
  v5 = *&v0[OBJC_IVAR____TtC7Journal15CanvasStackView_reflectionPromptView];
  if (!v5)
  {
    return result;
  }

  v6 = OBJC_IVAR____TtC7Journal15CanvasStackView_journalEntry;
  if (*&v0[OBJC_IVAR____TtC7Journal15CanvasStackView_journalEntry])
  {
    v7 = v5;

    v8 = sub_100049F2C();
    if (v8)
    {
      sub_10053256C(v8);
      v10 = v9;
      v12 = v11;

      if (v10)
      {

        *&v7[OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_journalEntry] = *&v0[v6];
        swift_retain_n();

        sub_10043B5F4();

        v22 = v7;
        [v0 addArrangedSubview:v22];
        [v22 setHidden:0];

LABEL_12:
        v20 = v22;

        return result;
      }
    }

    else
    {
    }
  }

  else
  {
    v13 = v5;
  }

  v22 = v5;
  [v0 removeArrangedSubview:v22];
  [v22 setHidden:1];

  v14 = *&v0[v6];
  if (!v14)
  {
    goto LABEL_12;
  }

  v15 = sub_100049F2C();
  if (v15)
  {
    v16 = v15;
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v14;
    v18[5] = v16;
    v19 = v16;
    sub_1003E9628(0, 0, v3, &unk_10095EB98, v18);
  }

  else
  {
  }

  return result;
}

double sub_1005A702C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Journal15CanvasStackView_journalEntry;
  if (*&v0[OBJC_IVAR____TtC7Journal15CanvasStackView_journalEntry])
  {

    v3 = sub_100049F2C();
    if (v3)
    {
      sub_10053256C(v3);
      v5 = v4;
      v7 = v6;

      if (v5)
      {

        v9 = OBJC_IVAR____TtC7Journal15CanvasStackView_reflectionPromptView;
        v10 = *&v1[OBJC_IVAR____TtC7Journal15CanvasStackView_reflectionPromptView];
        if (v10 || (type metadata accessor for CanvasReflectionPromptView(), v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init], v12 = *&v1[v9], *&v1[v9] = v11, v12, (v10 = *&v1[v9]) != 0))
        {
          *&v10[OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_journalEntry] = *&v1[v2];
          swift_retain_n();
          v13 = v10;

          sub_10043B5F4();

          v14 = v13[OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_isEditing];
          v13[OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_isEditing] = 1;
          sub_10043AAF8(v14);
          v22 = v13;
          sub_100760EA4(v22);
          v15 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v16 = &v22[OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_deletePrompt];
          *v16 = sub_1005A7C1C;
          v16[1] = v15;

          [v1 addArrangedSubview:v22];
          [v22 setHidden:0];

          __asm { FMOV            V0.2D, #12.0 }

          *&v22[OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_outerCornerRadius] = _Q0;
        }
      }
    }

    else
    {
    }
  }

  return result;
}

double sub_1005A723C(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC7Journal15CanvasStackView_journalEntry];
  if (v3 && *(v3 + OBJC_IVAR____TtC7Journal14EntryViewModel_showPhotoMemoryBanner) != 1)
  {
    return result;
  }

  v4 = [v1 subviews];
  sub_10021DE14();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
LABEL_19:
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_20:

    if (a1)
    {
      type metadata accessor for CanvasPhotosMemoriesBanner();
      v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v12 = v11[OBJC_IVAR____TtC7Journal26CanvasPhotosMemoriesBanner_isEditing];
      v11[OBJC_IVAR____TtC7Journal26CanvasPhotosMemoriesBanner_isEditing] = 1;
      if (v12 != 1)
      {
        sub_10080B0F8();
      }

      [v1 addArrangedSubview:v11];
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      *(v14 + 24) = v11;
      v15 = &v11[OBJC_IVAR____TtC7Journal26CanvasPhotosMemoriesBanner_deleteBanner];
      *v15 = sub_1005A7B54;
      v15[1] = v14;
    }

    return result;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_20;
  }

LABEL_5:
  v7 = 0;
  while ((v5 & 0xC000000000000001) != 0)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_14;
    }

LABEL_9:
    v16 = v8;
    type metadata accessor for CanvasPhotosMemoriesBanner();
    if (swift_dynamicCastClass())
    {
      goto LABEL_15;
    }

    ++v7;
    if (v9 == v6)
    {
      goto LABEL_20;
    }
  }

  if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_19;
  }

  v8 = *(v5 + 8 * v7 + 32);
  v9 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    goto LABEL_9;
  }

LABEL_14:
  __break(1u);
LABEL_15:

  return result;
}

void sub_1005A74D0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong removeArrangedSubview:a2];
  }

  [a2 setHidden:1];
  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = *(v5 + OBJC_IVAR____TtC7Journal15CanvasStackView_journalEntry);
    v7 = v5;

    if (v6)
    {
      *(v6 + OBJC_IVAR____TtC7Journal14EntryViewModel_showPhotoMemoryBanner) = 0;
      v8 = *(v6 + 24);
      v9 = swift_allocObject();
      *(v9 + 16) = sub_1003A9A2C;
      *(v9 + 24) = v6;
      v11[4] = sub_100028EF4;
      v11[5] = v9;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 1107296256;
      v11[2] = sub_10001A7D4;
      v11[3] = &unk_100A746E0;
      v10 = _Block_copy(v11);

      [v8 performBlockAndWait:v10];
      _Block_release(v10);
      LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

      if (v8)
      {
        __break(1u);
      }
    }
  }
}

id sub_1005A787C(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for CanvasStackView();
  return objc_msgSendSuper2(&v7, *a4, a3);
}

id sub_1005A78CC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CanvasStackView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1005A7990(uint64_t a1)
{
  v1 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC7Journal15CanvasStackView_reflectionPromptView);
    if (v6)
    {
      v7 = v6;
      [v5 removeArrangedSubview:v7];
      [v7 setHidden:1];
      v8 = *&v5[OBJC_IVAR____TtC7Journal15CanvasStackView_journalEntry];
      if (v8)
      {

        v9 = sub_100049F2C();
        if (v9)
        {
          v10 = v9;
          v11 = type metadata accessor for TaskPriority();
          (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
          v12 = swift_allocObject();
          v12[2] = 0;
          v12[3] = 0;
          v12[4] = v8;
          v12[5] = v10;

          v13 = v10;
          sub_1003E9628(0, 0, v3, &unk_10095EBA0, v12);
        }
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1005A7B5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032EC8;

  return sub_100531C64(a1, v4, v5, v7, v6);
}

uint64_t sub_1005A7C24()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1005A7C6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032ECC;

  return sub_100531C64(a1, v4, v5, v7, v6);
}

uint64_t sub_1005A7D2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_1005A6000(a1, v4, v5, v6);
}

uint64_t sub_1005A7DE0(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD4CD0, &unk_100943730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1005A7E48(void *a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v81 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v80 = (&v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for EntriesSortOrder();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  *&v90 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v89 = &v78 - v10;
  __chkstk_darwin(v11);
  v13 = &v78 - v12;
  __chkstk_darwin(v14);
  v16 = &v78 - v15;
  v96 = _swiftEmptyArrayStorage;
  if (qword_100AD0468 != -1)
  {
    swift_once();
  }

  v17 = *(&xmmword_100B304B0 + 1);
  v87 = xmmword_100B304B0;
  v18 = OBJC_IVAR____TtC7Journal18EntryListViewModel_sortOrder;
  swift_beginAccess();
  v19 = v7[2];
  v88 = a1;
  v84 = v19;
  v85 = v18;
  v19(v16, &v18[a1], v6);
  v83 = v7[13];
  v83(v13, enum case for EntriesSortOrder.entryDate(_:), v6);
  sub_1005A9360();
  v86 = v17;

  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v94 == v92 && v95 == v93)
  {
    v20 = 1;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }

  v82 = v20;
  v21 = v7[1];
  v21(v13, v6);
  v21(v16, v6);

  v22 = sub_1000065A8(0, &qword_100AD4420, UIAction_ptr);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v87 = v22;
  v86 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  if (qword_100AD0470 != -1)
  {
    swift_once();
  }

  v84(v89, &v85[v88], v6);
  v83(v90, enum case for EntriesSortOrder.momentDate(_:), v6);

  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v94 != v92 || v95 != v93)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v23 = v91;
  v21(v90, v6);
  v21(v89, v6);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v91 = sub_1000065A8(0, &unk_100AD4D00, UIMenu_ptr);
  if (qword_100AD0460 != -1)
  {
    swift_once();
  }

  v25 = xmmword_100B304A0;

  v26 = String._bridgeToObjectiveC()();
  v85 = objc_opt_self();
  v27 = [v85 systemImageNamed:v26];

  sub_1000F24EC(&unk_100AD4780, &unk_100941070);
  v28 = swift_allocObject();
  v90 = xmmword_100941D60;
  *(v28 + 16) = xmmword_100941D60;
  v29 = v86;
  *(v28 + 32) = v86;
  *(v28 + 40) = v24;
  v30 = v29;
  v89 = v24;
  v97.value.super.isa = v27;
  v97.is_nil = 0;
  v31 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v25, 0, v97, 32, 0xFFFFFFFFFFFFFFFFLL, v28, v74).super.super.isa;
  v32 = [(objc_class *)v31 selectedElements];
  sub_1000065A8(0, &unk_100ADC630, UIMenuElement_ptr);
  v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v33 >> 62))
  {
    if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

LABEL_22:
    v36 = 0;
    goto LABEL_23;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_22;
  }

LABEL_16:
  if ((v33 & 0xC000000000000001) != 0)
  {
    v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_50:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      goto LABEL_45;
    }

    v34 = *(v33 + 32);
  }

  v35 = v34;

  v36 = [v35 title];

  if (!v36)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = String._bridgeToObjectiveC()();
LABEL_23:
  }

  [(objc_class *)v31 setSubtitle:v36];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v37 = [v23 traitCollection];
  v38 = [v37 userInterfaceIdiom];

  v86 = v31;
  if (v38 != 5)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v39 = v94;
    v40 = [v94 isActive];

    if ((v40 & 1) == 0)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v41 = String._bridgeToObjectiveC()();
      v42 = [v85 systemImageNamed:v41];

      swift_allocObject();
      swift_unknownObjectWeakInit();
      v43 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      [v43 setAttributes:sub_100303598()];
      v44 = v43;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  if (qword_100AD0478 != -1)
  {
    swift_once();
  }

  v45 = qword_100AD0918;

  if (v45 != -1)
  {
    swift_once();
  }

  v46 = qword_100B30DF0;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v83 = v46;
  v84 = v46;
  v47 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  if (qword_100AD0480 != -1)
  {
    swift_once();
  }

  v48 = qword_100AD0910;

  if (v48 != -1)
  {
    swift_once();
  }

  v49 = qword_100B30DE8;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v50 = v49;
  v51 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  if (sub_100087B3C() <= 0)
  {
    [v47 setAttributes:4];
  }

  v52 = swift_allocObject();
  *(v52 + 16) = v90;
  *(v52 + 32) = v51;
  *(v52 + 40) = v47;
  v53 = v51;
  v54 = v47;
  v55._countAndFlagsBits = 0;
  v55._object = 0xE000000000000000;
  v98.value.super.isa = 0;
  v98.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v55, 0, v98, 1, 0xFFFFFFFFFFFFFFFFLL, v52, v75);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v56 = v96;
  if ((static Runtime.isInternalBuild.getter() & 1) == 0)
  {

    return v56;
  }

  v81 = v54;
  v82 = v53;
  v88 = v30;
  v57 = String._bridgeToObjectiveC()();
  v58 = v85;
  v80 = [v85 systemImageNamed:v57];

  v59 = swift_allocObject();
  *(v59 + 16) = v90;
  v60 = v59;
  v79 = v59;
  v61 = String._bridgeToObjectiveC()();
  v62 = [v58 systemImageNamed:v61];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v60 + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_100941D70;
  v64 = String._bridgeToObjectiveC()();
  v65 = [v58 systemImageNamed:v64];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v63 + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v66 = String._bridgeToObjectiveC()();
  v67 = [v58 systemImageNamed:v66];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v63 + 40) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v68 = v83;
  *(v63 + 48) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v69._countAndFlagsBits = 0;
  v69._object = 0xE000000000000000;
  v99.value.super.isa = 0;
  v99.is_nil = 0;
  v70.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v69, 0, v99, 1, 0xFFFFFFFFFFFFFFFFLL, v63, v76).super.super.isa;
  v71 = v79;
  v79[5].super.super.isa = v70.super.super.isa;
  v72._countAndFlagsBits = 0x6C616E7265746E49;
  v72._object = 0xE800000000000000;
  v100.value.super.isa = v80;
  v100.is_nil = 0;
  v32 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v72, 0, v100, 0, 0xFFFFFFFFFFFFFFFFLL, v71, v77).super.super.isa;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_50;
  }

LABEL_45:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return v96;
}

char *sub_1005A8FD4(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = type metadata accessor for EntriesSortOrder();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v16[-v9];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    (*(v5 + 104))(v10, *a3, v4);
    (*(v5 + 16))(v7, v10, v4);
    static EntriesSortOrder.timeline.setter();
    v13 = *&v12[OBJC_IVAR____TtC7Journal29JournalTimelineViewController_model];
    static EntriesSortOrder.timeline.getter();
    v14 = OBJC_IVAR____TtC7Journal18EntryListViewModel_sortOrder;
    swift_beginAccess();
    (*(v5 + 24))(v13 + v14, v7, v4);
    swift_endAccess();
    sub_100022BB4();
    v15 = *(v5 + 8);
    v15(v7, v4);
    (*((swift_isaMask & **&v12[OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController]) + 0x388))(v13, 0, 1);
    sub_100303B98();

    return (v15)(v10, v4);
  }

  return result;
}

void sub_1005A9218(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10041BDC0();
  }
}

void sub_1005A926C(uint64_t a1, uint64_t a2, const char **a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *a3;
    v6 = Strong;
    [Strong v5];
  }
}

void sub_1005A92C8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = objc_allocWithZone(type metadata accessor for AdminMenuController(0));
    v5 = UIHostingController.init(rootView:)();
    [v5 setModalPresentationStyle:2];
    [v3 presentViewController:v5 animated:1 completion:0];
  }
}

unint64_t sub_1005A9360()
{
  result = qword_100AE3EE8;
  if (!qword_100AE3EE8)
  {
    type metadata accessor for EntriesSortOrder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3EE8);
  }

  return result;
}

uint64_t sub_1005A9470()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AEA008);
  v1 = sub_10000617C(v0, qword_100AEA008);
  if (qword_100AD01C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FFE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1005A9538()
{
  sub_1000F24EC(&qword_100AEA020, &qword_10095EC30);
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = _swiftEmptySetSingleton;
  qword_100B2FC20 = v0;
  return result;
}

uint64_t sub_1005A9590()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100032ECC;

  return sub_1005AAA54(0, 0);
}

uint64_t sub_1005A9638()
{
  v1 = *(v0 + 216);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = *(v0 + 192);

    v4 = v3;
    *(v0 + 232) = __CocoaSet.contains(_:)() & 1;

    v5 = sub_1005A9810;
  }

  else if (*(v2 + 16))
  {
    v6 = *(v2 + 40);

    v7 = NSObject._rawHashValue(seed:)(v6);
    v8 = -1 << *(v2 + 32);
    v9 = v7 & ~v8;
    if ((*(v2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
    {
      v10 = ~v8;
      while (1)
      {
        v11 = *(*(v2 + 48) + 8 * v9);
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          break;
        }

        v9 = (v9 + 1) & v10;
        if (((*(v2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v5 = sub_1005A9BA8;
    }

    else
    {
LABEL_8:

      v5 = sub_1005AAC54;
    }
  }

  else
  {

    v5 = sub_1005A9B30;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1005A9810()
{
  if ((*(v0 + 232) & 1) == 0)
  {
    v12 = qword_100B2FC20;
    *(v0 + 224) = qword_100B2FC20;
    v13 = sub_1005A9EA4;
LABEL_21:
    v26 = v13;

    v18 = v26;
    v23 = v12;
    v19 = 0;

    return _swift_task_switch(v18, v23, v19);
  }

  if (qword_100AD0030 != -1)
  {
    swift_once();
  }

  v2 = (v0 + 192);
  v1 = *(v0 + 192);
  v3 = type metadata accessor for Logger();
  sub_10000617C(v3, qword_100AEA008);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 192);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v5, v6, "Skipping AssetPostprocessingOperation for id %@, already processing.", v8, 0xCu);
    sub_10012B714(v9);

    v11 = v5;
    v5 = *(v0 + 208);
  }

  else
  {
    v2 = (v0 + 208);
    v11 = *(v0 + 192);
  }

  v14 = *v2;
  v15 = *(v0 + 184);
  v16 = *(v0 + 200);
  v17 = *(v0 + 168);

  if (v16 != v17)
  {
    v22 = *(v0 + 200);
    *(v0 + 184) = v15;
    v23 = *(v0 + 160);
    if ((v23 & 0xC000000000000001) != 0)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v22 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return _swift_task_switch(v18, v23, v19);
      }

      v24 = *(v23 + 8 * v22 + 32);
    }

    *(v0 + 192) = v24;
    *(v0 + 200) = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
    }

    else if (qword_100ACFE28 == -1)
    {
LABEL_18:
      v25 = [*(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container) newBackgroundContext];
      *(v0 + 208) = v25;
      [v25 setAutomaticallyMergesChangesFromParent:1];
      if (qword_100AD0040 != -1)
      {
        swift_once();
      }

      v12 = qword_100B2FC20;
      *(v0 + 216) = qword_100B2FC20;
      v13 = sub_1005A9638;
      goto LABEL_21;
    }

    swift_once();
    goto LABEL_18;
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1005A9B30()
{
  v1 = qword_100B2FC20;
  *(v0 + 224) = qword_100B2FC20;

  return _swift_task_switch(sub_1005A9EA4, v1, 0);
}

uint64_t sub_1005A9BA8()
{
  if (qword_100AD0030 != -1)
  {
    swift_once();
  }

  v2 = (v0 + 24);
  v1 = v0[24];
  v3 = type metadata accessor for Logger();
  sub_10000617C(v3, qword_100AEA008);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[24];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v5, v6, "Skipping AssetPostprocessingOperation for id %@, already processing.", v8, 0xCu);
    sub_10012B714(v9);

    v11 = v5;
    v5 = v0[26];
  }

  else
  {
    v2 = (v0 + 26);
    v11 = v0[24];
  }

  v12 = *v2;
  v13 = v0[23];
  v14 = v0[25];
  v15 = v0[21];

  if (v14 != v15)
  {
    v20 = v0[25];
    v0[23] = v13;
    v21 = v0[20];
    if ((v21 & 0xC000000000000001) != 0)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v20 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return _swift_task_switch(v16, v21, v17);
      }

      v22 = *(v21 + 8 * v20 + 32);
    }

    v0[24] = v22;
    v0[25] = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
    }

    else if (qword_100ACFE28 == -1)
    {
LABEL_16:
      v23 = [*(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container) newBackgroundContext];
      v0[26] = v23;
      [v23 setAutomaticallyMergesChangesFromParent:1];
      if (qword_100AD0040 != -1)
      {
        swift_once();
      }

      v24 = qword_100B2FC20;
      v0[27] = qword_100B2FC20;

      v16 = sub_1005A9638;
      v21 = v24;
      v17 = 0;

      return _swift_task_switch(v16, v21, v17);
    }

    swift_once();
    goto LABEL_16;
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1005A9EA4()
{
  v5 = v0;
  v1 = *(v0 + 192);
  swift_beginAccess();
  sub_100288038(&v4, v1);
  v2 = v4;
  swift_endAccess();

  return _swift_task_switch(sub_1005A9F54, 0, 0);
}

void sub_1005A9F54()
{
  receiver = v0[13].receiver;
  super_class = v0[11].super_class;
  v3 = v0[12].receiver;
  v4 = v0[6].super_class;
  v5 = type metadata accessor for AssetPostprocessingOperation(0);
  v6 = objc_allocWithZone(v5);
  *&v6[qword_100AF22E0] = v3;
  *&v6[qword_100AF22E8] = receiver;
  v0[4].receiver = v6;
  v0[4].super_class = v5;
  v7 = v3;
  v8 = receiver;
  v9 = objc_msgSendSuper2(v0 + 4, "init");
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = v7;
  v11 = *&v9[qword_100AE7BA8];
  v12 = swift_task_alloc();
  *(v12 + 16) = sub_1005AA970;
  *(v12 + 24) = v10;
  v13 = v7;
  os_unfair_lock_lock(v11 + 10);
  sub_1005AA978(&v11[4]);
  os_unfair_lock_unlock(v11 + 10);
  if (super_class)
  {
    return;
  }

  if (qword_100AD0038 != -1)
  {
    swift_once();
  }

  v14 = qword_100B2FC18;
  [v14 addOperation:v9];

  v16 = v0[12].super_class;
  v15 = v0[13].receiver;
  v17 = v0[10].super_class;

  if (v16 != v17)
  {
    v21 = v0[12].super_class;
    v0[11].super_class = 0;
    v22 = v0[10].receiver;
    if ((v22 & 0xC000000000000001) != 0)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v21 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
_swift_task_switch:
        _swift_task_switch(v18, v22, v19);
        return;
      }

      v23 = *(v22 + 8 * v21 + 32);
    }

    v0[12].receiver = v23;
    v0[12].super_class = (v21 + 1);
    if (__OFADD__(v21, 1))
    {
      __break(1u);
    }

    else if (qword_100ACFE28 == -1)
    {
LABEL_14:
      v24 = [*(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container) newBackgroundContext];
      v0[13].receiver = v24;
      [v24 setAutomaticallyMergesChangesFromParent:1];
      if (qword_100AD0040 != -1)
      {
        swift_once();
      }

      v25 = qword_100B2FC20;
      v0[13].super_class = qword_100B2FC20;

      v18 = sub_1005A9638;
      v22 = v25;
      v19 = 0;

      goto _swift_task_switch;
    }

    swift_once();
    goto LABEL_14;
  }

  v20 = v0->super_class;

  v20();
}

void sub_1005AA290(double **a2@<X8>)
{
  v3 = v2;
  if (qword_100ACFE28 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v5 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
    type metadata accessor for JournalEntryAssetFileAttachmentMO();
    v6 = v5;
    v7 = NSManagedObjectContext.fetch<A>(_:)();
    if (v3)
    {

      if (qword_100AD0030 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_10000617C(v8, qword_100AEA008);
      swift_errorRetain();
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        swift_errorRetain();
        v13 = _swift_stdlib_bridgeErrorToNSError();
        *(v11 + 4) = v13;
        *v12 = v13;
        _os_log_impl(&_mh_execute_header, v9, v10, "AssetPostprocessingOperation error %@", v11, 0xCu);
        sub_10012B714(v12);
      }

      else
      {
      }

      goto LABEL_37;
    }

    v14 = v7;

    if (v14 >> 62)
    {
      break;
    }

    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_32;
    }

LABEL_9:
    if (qword_100AD0030 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000617C(v16, qword_100AEA008);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    v29 = a2;
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      if (v14 >> 62)
      {
        v20 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v20 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v19 + 4) = v20;

      _os_log_impl(&_mh_execute_header, v17, v18, "AssetPostprocessingOperation - about to process %ld attachments.", v19, 0xCu);
    }

    else
    {
    }

    v21 = 0;
    v3 = &selRef_setRegion_;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v21 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v22 = *(v14 + 8 * v21 + 32);
      }

      v23 = v22;
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      a2 = [v22 objectID];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      ++v21;
      if (v24 == v15)
      {

        a2 = v29;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  if (v15)
  {
    goto LABEL_9;
  }

LABEL_32:

  if (qword_100AD0030 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_10000617C(v25, qword_100AEA008);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "AssetPostprocessingOperation - nothing to process.", v28, 2u);
  }

LABEL_37:
  *a2 = _swiftEmptyArrayStorage;
}

double sub_1005AA780(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a2;
  v9[5] = a3;
  v10 = a3;
  sub_1003E9628(0, 0, v7, &unk_10095EC28, v9);

  return result;
}

uint64_t sub_1005AA8AC()
{
  if (qword_100AD0040 != -1)
  {
    swift_once();
  }

  v1 = qword_100B2FC20;
  *(v0 + 48) = qword_100B2FC20;

  return _swift_task_switch(sub_1000B1D90, v1, 0);
}

uint64_t sub_1005AA994(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032EC8;

  return sub_1005AA88C(a1, v4, v5, v7, v6);
}

uint64_t sub_1005AAA54(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(sub_1005AAADC, v2, v4);
}

uint64_t sub_1005AAADC()
{
  if (qword_100AD0038 != -1)
  {
    swift_once();
  }

  [qword_100B2FC18 cancelAllOperations];
  if (qword_100AD0040 != -1)
  {
    swift_once();
  }

  v1 = qword_100B2FC20;
  *(v0 + 40) = qword_100B2FC20;

  return _swift_task_switch(sub_1005AABC8, v1, 0);
}

uint64_t sub_1005AABC8()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  *(v1 + 112) = _swiftEmptySetSingleton;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1005AAC78()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC7Journal25JournalSyncEngineDelegate_syncEngine;
  v3 = *(v1 + OBJC_IVAR____TtC7Journal25JournalSyncEngineDelegate_syncEngine);
  v0[3] = v3;
  if (v3)
  {
    *(v1 + v2) = 0;
    if (qword_100AD0048 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000617C(v4, qword_100AEA028);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Cancelling sync engine operations", v7, 2u);
    }

    v8 = swift_task_alloc();
    v0[4] = v8;
    *v8 = v0;
    v8[1] = sub_1005AAE18;

    return CKSyncEngine.cancelOperations()();
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1005AAE18()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_1001F0E40, v1, 0);
}

uint64_t sub_1005AAF28()
{
  v1[2] = v0;
  sub_1000F24EC(&qword_100ADFA80, &qword_100950F18);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for SettingsKey();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1005AB020, v0, 0);
}

uint64_t sub_1005AB020()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_100026188();
  v4 = static NSUserDefaults.shared.getter();
  (*(v2 + 104))(v1, enum case for SettingsKey.cloudKitSyncingEnabled(_:), v3);
  SettingsKey.rawValue.getter();
  (*(v2 + 8))(v1, v3);
  v5 = String._bridgeToObjectiveC()();

  LODWORD(v1) = [v4 BOOLForKey:v5];

  if (v1)
  {
    if (sub_100217AC4())
    {
      if (qword_100AD0048 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_10000617C(v6, qword_100AEA028);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "Detected CloudKit schema version change, resetting stored state token and forcing full refetch", v9, 2u);
      }

      v10 = swift_task_alloc();
      v0[7] = v10;
      *v10 = v0;
      v10[1] = sub_1005AB398;

      return sub_1005ADE88();
    }

    else
    {
      v17 = swift_task_alloc();
      v0[8] = v17;
      *v17 = v0;
      v17[1] = sub_1005AB57C;
      v18 = v0[3];

      return sub_1005AE4E4(v18);
    }
  }

  else
  {
    if (qword_100AD0048 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000617C(v12, qword_100AEA028);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Syncing is disabled", v15, 2u);
    }

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1005AB398()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_1005AB4A8, v1, 0);
}

uint64_t sub_1005AB4A8()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for CKSyncEngine.State.Serialization();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 24);
  sub_1005AF218(v3);
  sub_100004F84(v3, &qword_100ADFA80, &qword_100950F18);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1005AB57C()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_1005AB68C, v1, 0);
}

uint64_t sub_1005AB68C()
{
  v1 = *(v0 + 24);
  sub_1005AF218(v1);
  sub_100004F84(v1, &qword_100ADFA80, &qword_100950F18);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1005AB71C(char a1)
{
  v2 = v1;
  if (qword_100AD0048 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000617C(v4, qword_100AEA028);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    v9 = String.init<A>(describing:)();
    v11 = sub_100008458(v9, v10, &v12);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Setting sync state: %s", v7, 0xCu);
    sub_10000BA7C(v8);
  }

  *(v2 + 112) = a1;
}

uint64_t sub_1005AB87C()
{
  v1 = OBJC_IVAR____TtC7Journal25JournalSyncEngineDelegate_sessionID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_1005AB920()
{
  result = qword_100AEA1D0;
  if (!qword_100AEA1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA1D0);
  }

  return result;
}

uint64_t sub_1005AB974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v6 = type metadata accessor for CKSyncEngine.RecordZoneChangeBatch();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  sub_1000F24EC(&qword_100AEA1E0, &qword_10095EE18);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v7 = type metadata accessor for ProtectedData.ProtectedDataState();
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_1005ABB7C, v3, 0);
}

uint64_t sub_1005ABB7C()
{
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  type metadata accessor for ProtectedData();
  static ProtectedData.shared.getter();
  ProtectedData.state.getter();

  (*(v4 + 104))(v2, enum case for ProtectedData.ProtectedDataState.available(_:), v3);
  v5 = static ProtectedData.ProtectedDataState.== infix(_:_:)();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {
    v7 = v0[3];
    CKSyncEngine.state.getter();
    v8 = CKSyncEngine.State.pendingRecordZoneChanges.getter();

    v9 = swift_task_alloc();
    *(v9 + 16) = v7;
    sub_1007785C8(sub_1005AF884, v9, v8);
    v11 = v10;
    v0[23] = v10;

    v12 = swift_task_alloc();
    v0[24] = v12;
    *v12 = v0;
    v12[1] = sub_1005ABF0C;
    v13 = v0[18];

    return CKSyncEngine.RecordZoneChangeBatch.init(pendingChanges:recordProvider:)(v13, v11, &unk_10095EE20, 0);
  }

  else
  {
    if (qword_100AD0048 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000617C(v14, qword_100AEA028);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "isProtectedDataAvailable false", v17, 2u);
    }

    v18 = v0[12];
    v19 = v0[13];
    v20 = v0[2];

    (*(v19 + 56))(v20, 1, 1, v18);

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_1005ABF0C()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_1005AC01C, v1, 0);
}

uint64_t sub_1005AC01C()
{
  v120 = v0;
  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[13];
  sub_1000082B4(v0[18], v1, &qword_100AEA1E0, &qword_10095EE18);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100004F84(v0[17], &qword_100AEA1E0, &qword_10095EE18);
    if (qword_100AD0048 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000617C(v4, qword_100AEA028);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[23];
    if (v7)
    {
      v101 = v6;
      log = v5;
      v9 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      buf = v9;
      *v9 = 136446466;
      v10 = *(v8 + 16);
      v100 = v10;
      if (v10)
      {
        v11 = v0[7];
        v12 = *(v11 + 16);
        v11 += 16;
        v13 = v0[23] + ((*(v11 + 64) + 32) & ~*(v11 + 64));
        v114 = *(v11 + 56);
        v117 = v12;
        v112 = (v11 + 72);
        v109 = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
        v107 = (v11 - 8);
        v104 = (v11 + 80);
        v14 = _swiftEmptyArrayStorage;
        do
        {
          v16 = v0[11];
          v17 = v0[9];
          v18 = v0[6];
          v117(v16, v13, v18);
          v117(v17, v16, v18);
          v19 = (*v112)(v17, v18);
          v20 = v0[11];
          v21 = v0[9];
          v22 = v0[6];
          if (v19 == v109)
          {
            (*v104)(v0[9], v0[6]);
            v23 = *v21;
            v24 = [*v21 recordName];
            v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v27 = v26;

            (*v107)(v20, v22);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v14 = sub_10009BCC8(0, *(v14 + 2) + 1, 1, v14);
            }

            v29 = *(v14 + 2);
            v28 = *(v14 + 3);
            if (v29 >= v28 >> 1)
            {
              v14 = sub_10009BCC8((v28 > 1), v29 + 1, 1, v14);
            }

            *(v14 + 2) = v29 + 1;
            v30 = &v14[2 * v29];
            *(v30 + 4) = v25;
            *(v30 + 5) = v27;
          }

          else
          {
            v15 = *v107;
            (*v107)(v0[11], v0[6]);
            v15(v21, v22);
          }

          v13 += v114;
          --v10;
        }

        while (v10);
      }

      v68 = Array.description.getter();
      v70 = v69;

      v71 = sub_100008458(v68, v70, &v119);

      *(buf + 4) = v71;
      *(buf + 6) = 2082;
      v72 = v100;
      if (v100)
      {
        v73 = v0[7];
        v74 = *(v73 + 16);
        v73 += 16;
        v116 = v74;
        v75 = v0[23] + ((*(v73 + 64) + 32) & ~*(v73 + 64));
        v113 = *(v73 + 56);
        v111 = (v73 + 72);
        v108 = enum case for CKSyncEngine.PendingRecordZoneChange.deleteRecord(_:);
        v76 = (v73 - 8);
        v105 = (v73 + 80);
        v77 = _swiftEmptyArrayStorage;
        do
        {
          v79 = v0[10];
          v80 = v0[8];
          v81 = v0[6];
          v116(v79, v75, v81);
          v116(v80, v79, v81);
          v82 = (*v111)(v80, v81);
          v83 = v0[10];
          v84 = v0[8];
          v85 = v0[6];
          if (v82 == v108)
          {
            (*v105)(v0[8], v0[6]);
            v86 = *v84;
            v87 = [*v84 recordName];
            v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v106 = v89;

            (*v76)(v83, v85);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v77 = sub_10009BCC8(0, *(v77 + 2) + 1, 1, v77);
            }

            v91 = *(v77 + 2);
            v90 = *(v77 + 3);
            if (v91 >= v90 >> 1)
            {
              v77 = sub_10009BCC8((v90 > 1), v91 + 1, 1, v77);
            }

            *(v77 + 2) = v91 + 1;
            v92 = &v77[2 * v91];
            *(v92 + 4) = v88;
            *(v92 + 5) = v106;
          }

          else
          {
            v78 = *v76;
            (*v76)(v0[10], v0[6]);
            v78(v84, v85);
          }

          v75 += v113;
          --v72;
        }

        while (v72);
      }

      v93 = v0[18];

      v94 = Array.description.getter();
      v96 = v95;

      v97 = sub_100008458(v94, v96, &v119);

      *(buf + 14) = v97;
      _os_log_impl(&_mh_execute_header, log, v101, "CloudKit requested batch changes, but nothing to send. \nFiltered saves: %{public}s\nFiltered deletes: %{public}s", buf, 0x16u);
      swift_arrayDestroy();

      v60 = v93;
    }

    else
    {
      v59 = v0[18];

      v60 = v59;
    }

    sub_100004F84(v60, &qword_100AEA1E0, &qword_10095EE18);
    (*(v0[13] + 56))(v0[2], 1, 1, v0[12]);
  }

  else
  {
    v31 = v0[16];
    v32 = v0[17];
    v33 = v0[12];
    v34 = v0[13];

    v35 = *(v34 + 32);
    v35(v31, v32, v33);
    if (qword_100AD0048 != -1)
    {
      swift_once();
    }

    v36 = v0[15];
    v37 = v0[16];
    v39 = v0[13];
    v38 = v0[14];
    v40 = v0[12];
    v41 = type metadata accessor for Logger();
    sub_10000617C(v41, qword_100AEA028);
    v42 = *(v39 + 16);
    v42(v36, v37, v40);
    v42(v38, v37, v40);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v118 = v35;
      v45 = v0[15];
      v47 = v0[12];
      v46 = v0[13];
      v48 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v119 = v115;
      *v48 = 136315394;
      v49 = CKSyncEngine.RecordZoneChangeBatch.recordsToSave.getter();
      sub_1002AFE54(v49);

      v110 = *(v46 + 8);
      v110(v45, v47);
      v50 = Dictionary.description.getter();
      v52 = v51;

      v53 = sub_100008458(v50, v52, &v119);

      *(v48 + 4) = v53;
      *(v48 + 12) = 2048;
      v54 = CKSyncEngine.RecordZoneChangeBatch.recordIDsToDelete.getter();
      if (v54 >> 62)
      {
        v55 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v56 = v0[18];
      v57 = v0[14];
      v58 = v0[12];

      v110(v57, v58);
      *(v48 + 14) = v55;
      _os_log_impl(&_mh_execute_header, v43, v44, "Batch sending record zone changes:\nAdditions: %s\nDeletions: %ld", v48, 0x16u);
      sub_10000BA7C(v115);

      sub_100004F84(v56, &qword_100AEA1E0, &qword_10095EE18);
      v35 = v118;
    }

    else
    {
      v61 = v0[18];
      v62 = v0[15];
      v63 = v0[12];
      v64 = *(v0[13] + 8);
      v64(v0[14], v63);

      v64(v62, v63);
      sub_100004F84(v61, &qword_100AEA1E0, &qword_10095EE18);
    }

    v65 = v0[12];
    v66 = v0[13];
    v67 = v0[2];
    v35(v67, v0[16], v65);
    (*(v66 + 56))(v67, 0, 1, v65);
  }

  v98 = v0[1];

  return v98();
}

uint64_t sub_1005ACA8C(uint64_t a1)
{
  v1 = type metadata accessor for CKSyncEngine.SendChangesOptions.Scope();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CKSyncEngine.SendChangesOptions();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  CKSyncEngine.SendChangesContext.options.getter();
  CKSyncEngine.SendChangesOptions.scope.getter();
  (*(v6 + 8))(v8, v5);
  v9 = CKSyncEngine.SendChangesOptions.Scope.contains(_:)();
  (*(v2 + 8))(v4, v1);
  return v9 & 1;
}

uint64_t sub_1005ACC44()
{
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v1 = qword_100B2F9E0;
  v0[3] = qword_100B2F9E0;
  v2 = [*(*(v1 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container) newBackgroundContext];
  v0[4] = v2;
  v3 = *(v1 + 16);
  v0[5] = v3;
  v3;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1005ACD64;
  v5 = v0[2];

  return sub_10048903C(0, 0, v5, v2);
}

uint64_t sub_1005ACD64(uint64_t a1)
{
  v2 = *(*v1 + 40);
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_1005ACE80, 0, 0);
}

uint64_t sub_1005ACE80()
{
  v23 = v0;
  if (*(v0 + 56))
  {

    v1 = *(v0 + 56);
    v2 = *(v0 + 8);

    return v2(v1);
  }

  else
  {
    if (qword_100AD0048 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 16);
    v5 = type metadata accessor for Logger();
    *(v0 + 64) = sub_10000617C(v5, qword_100AEA028);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 16);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = 136315138;
      v12 = [v9 recordName];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = sub_100008458(v13, v15, &v22);

      *(v10 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v7, v8, "Background context could not find an object for record id: %s", v10, 0xCu);
      sub_10000BA7C(v11);
    }

    v17 = *(*(v0 + 24) + 16);
    *(v0 + 72) = v17;
    v18 = *&v17[OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate];
    *(v0 + 80) = v18;
    v19 = v18;
    v17;
    v20 = swift_task_alloc();
    *(v0 + 88) = v20;
    *v20 = v0;
    v20[1] = sub_1005AD108;
    v21 = *(v0 + 16);

    return sub_10048903C(0, 0, v21, v19);
  }
}

uint64_t sub_1005AD108(uint64_t a1)
{
  v2 = *(*v1 + 72);
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_1005AD224, 0, 0);
}

uint64_t sub_1005AD224()
{
  v20 = v0;
  if (*(v0 + 96))
  {
    v1 = *(v0 + 32);

    v2 = *(v0 + 96);
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 80);
    v8 = *(v0 + 32);
    if (v6)
    {
      v9 = *(v0 + 16);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315138;
      v12 = [v9 recordName];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = sub_100008458(v13, v15, &v19);

      *(v10 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v4, v5, "Sync context could not find an object for record id: %s", v10, 0xCu);
      sub_10000BA7C(v11);
    }

    v2 = 0;
  }

  v17 = *(v0 + 8);

  return v17(v2);
}

uint64_t sub_1005AD3D4(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  Changes = type metadata accessor for CKSyncEngine.FetchChangesOptions.Scope();
  v3[4] = Changes;
  v3[5] = *(Changes - 8);
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_1005AD494, v2, 0);
}

uint64_t sub_1005AD494()
{
  CKSyncEngine.FetchChangesContext.options.getter();
  type metadata accessor for ProtectedData();
  static ProtectedData.shared.getter();
  v1 = ProtectedData.isAvailable.getter();

  if (v1)
  {
    v3 = v0[5];
    v2 = v0[6];
    v4 = v0[4];
    v5 = static CloudKitStackConfiguration.zone.getter();
    v6 = [v5 zoneID];

    sub_1000F24EC(&unk_100AD4780, &unk_100941070);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100941D50;
    *(v7 + 32) = v6;
    *v2 = v7;
    (*(v3 + 104))(v2, enum case for CKSyncEngine.FetchChangesOptions.Scope.zoneIDs(_:), v4);
    v8 = v6;
    CKSyncEngine.FetchChangesOptions.scope.setter();
    sub_1000F24EC(&qword_100AEA1D8, &unk_10095EE00);
    v9 = *(sub_1000F24EC(&qword_100ADFEB8, &qword_100951638) - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100940080;
    v12 = (v11 + v10);
    *v12 = v8;
    v13 = v8;
    CKSyncEngine.FetchChangesOptions.ZoneConfiguration.init(shouldFetchAssetContents:resultsLimit:)();
    sub_100364380(v11);
    swift_setDeallocating();
    sub_100004F84(v12, &qword_100ADFEB8, &qword_100951638);
    swift_deallocClassInstance();
    CKSyncEngine.FetchChangesOptions.zoneConfigurations.setter();
  }

  else
  {
    if (qword_100AD0048 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000617C(v14, qword_100AEA028);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "ProtectedData isn't available, returning empty zoneIDs to avoid fetching any CloudKit changes", v17, 2u);
    }

    v19 = v0[5];
    v18 = v0[6];
    v20 = v0[4];

    *v18 = _swiftEmptyArrayStorage;
    (*(v19 + 104))(v18, enum case for CKSyncEngine.FetchChangesOptions.Scope.zoneIDs(_:), v20);
    CKSyncEngine.FetchChangesOptions.scope.setter();
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_1005AD7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100032EC8;

  return sub_1005AB974(a1, a2, a3);
}

uint64_t sub_1005AD888(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100032EC8;

  return sub_1005AD3D4(a1, a2);
}

uint64_t sub_1005AD930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for JournalSyncEngineDelegate(0);
  *v8 = v4;
  v8[1] = sub_1005AD9F8;

  return CKSyncEngineDelegate.shouldFetchChanges(zoneID:syncEngine:)(a1, a2, v9, a4);
}

uint64_t sub_1005AD9F8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1005ADAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for JournalSyncEngineDelegate(0);
  *v10 = v5;
  v10[1] = sub_1005AD9F8;

  return CKSyncEngineDelegate.relatedApplicationBundleIdentifiers(zoneIDs:recordIDs:syncEngine:)(a1, a2, a3, v11, a5);
}

unint64_t sub_1005ADBC4()
{
  result = sub_1005ADBE4();
  qword_100B2FC28 = result;
  return result;
}

unint64_t sub_1005ADBE4()
{
  sub_1000F24EC(&qword_100AE2B80, &qword_100954330);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100940050;
  v1 = type metadata accessor for JournalMO();
  v2 = sub_100042028(&qword_100AEA200, &type metadata accessor for JournalMO, &protocol conformance descriptor for JournalMO);
  *(inited + 32) = v1;
  *(inited + 40) = v2;
  v3 = type metadata accessor for AppStorageMO();
  v4 = sub_100042028(&qword_100AEA208, &type metadata accessor for AppStorageMO, &protocol conformance descriptor for AppStorageMO);
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  if (static Runtime.Environment.useCloudKitStagingEnvironment.getter())
  {
    sub_1006ADCB8(_swiftEmptyArrayStorage);
  }

  v5 = sub_100363F40(_swiftEmptyArrayStorage);
  v6 = *(inited + 16);
  if (!v6)
  {
LABEL_18:

    return v5;
  }

  v7 = 0;
  while (v7 < *(inited + 16))
  {
    v26 = *(inited + 32 + 16 * v7);
    v9 = dispatch thunk of static RecordUploading.recordType.getter();
    v11 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v5;
    v13 = sub_100094E98(v9, v11);
    v15 = *(v5 + 16);
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      goto LABEL_20;
    }

    v19 = v14;
    if (*(v5 + 24) < v18)
    {
      sub_1008202B4(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_100094E98(v9, v11);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_22;
      }

LABEL_13:
      if (v19)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_13;
    }

    v24 = v13;
    sub_1008240C8();
    v13 = v24;
    if (v19)
    {
LABEL_5:
      v8 = v13;

      v5 = v27;
      *(v27[7] + 16 * v8) = v26;
      goto LABEL_6;
    }

LABEL_14:
    v5 = v27;
    v27[(v13 >> 6) + 8] |= 1 << v13;
    v21 = (v27[6] + 16 * v13);
    *v21 = v9;
    v21[1] = v11;
    *(v27[7] + 16 * v13) = v26;
    v22 = v27[2];
    v17 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v17)
    {
      goto LABEL_21;
    }

    v27[2] = v23;
LABEL_6:
    if (v6 == ++v7)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1005ADE88()
{
  v1[2] = v0;
  v2 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1005ADF48, v0, 0);
}

uint64_t sub_1005ADF48()
{
  if (qword_100ACFCA8 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *(*(qword_100B2F840 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate);
  v0[6] = v4;
  v5 = swift_allocObject();
  v0[7] = v5;
  *(v5 + 16) = v4;
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
  v4;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1005AE0C0;
  v7 = v0[5];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v6, v7, sub_1005B04D0, v5, &type metadata for () + 1);
}

uint64_t sub_1005AE0C0()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 72) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 16);
  if (v0)
  {
    v7 = sub_1005AE330;
  }

  else
  {
    v7 = sub_1005AE26C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1005AE26C()
{
  v1 = *(v0 + 48);
  sub_100026188();
  v2 = static NSUserDefaults.shared.getter();
  v3 = String._bridgeToObjectiveC()();
  [v2 setInteger:1 forKey:v3];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1005AE330()
{
  if (qword_100AD0048 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100AEA028);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to remove existing state token: %@", v4, 0xCu);
    sub_100004F84(v5, &unk_100AD4BB0, &unk_100941E50);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1005AE4E4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for CKSyncEngine.State.Serialization();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = sub_1000F24EC(&qword_100ADFA80, &qword_100950F18);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1005AE654, v1, 0);
}

uint64_t sub_1005AE654()
{
  if (qword_100ACFCA8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = qword_100B2F840;
  *(v0 + 112) = qword_100B2F840;
  v4 = *(*(v3 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate);
  *(v0 + 120) = v4;
  v5 = swift_allocObject();
  *(v0 + 128) = v5;
  *(v5 + 16) = v4;
  *(v0 + 224) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v6 = *(v2 + 104);
  *(v0 + 136) = v6;
  *(v0 + 144) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v6(v1);
  v4;
  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  *v7 = v0;
  v7[1] = sub_1005AE7DC;
  v8 = *(v0 + 104);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v8, v9, sub_1005B04EC, v5, v10);
}

void sub_1005AE7DC()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = v2[10];
    v4 = v2[7];
    v5 = v2[8];
    v6 = v2[3];
    v7 = *(v5 + 8);
    v2[20] = v7;
    v2[21] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v4);

    _swift_task_switch(sub_1005AE940, v6, 0);
  }
}

uint64_t sub_1005AE940()
{
  v1 = v0[12];
  v2 = v0[4];
  v3 = v0[5];
  sub_1000082B4(v0[13], v1, &qword_100ADFA80, &qword_100950F18);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[14];
    v5 = v0[3];
    sub_100004F84(v0[12], &qword_100ADFA80, &qword_100950F18);
    v6 = *(v4 + 16);
    v0[22] = v6;
    sub_100042028(&qword_100AEA1F8, type metadata accessor for JournalSyncEngineDelegate, &unk_10095EDC8);
    v7 = v6;
    if (v5)
    {
      swift_getObjectType();
      v8 = dispatch thunk of Actor.unownedExecutor.getter();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    v0[23] = v8;
    v0[24] = v10;

    return _swift_task_switch(sub_1005AEB7C, v8, v10);
  }

  else
  {
    v11 = v0[15];
    v12 = v0[12];
    v14 = v0[5];
    v13 = v0[6];
    v15 = v0[4];
    v16 = v0[2];
    sub_100004F84(v0[13], &qword_100ADFA80, &qword_100950F18);

    v17 = *(v14 + 32);
    v17(v13, v12, v15);
    v17(v16, v13, v15);
    (*(v14 + 56))(v16, 0, 1, v15);

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_1005AEB7C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 136);
  v3 = *(v0 + 224);
  v4 = *(v0 + 72);
  v5 = *(v0 + 56);
  v6 = swift_allocObject();
  *(v0 + 200) = v6;
  *(v6 + 16) = v1;
  v2(v4, v3, v5);
  v7 = v1;
  v8 = swift_task_alloc();
  *(v0 + 208) = v8;
  *v8 = v0;
  v8[1] = sub_1005AECA8;
  v9 = *(v0 + 88);
  v10 = *(v0 + 72);
  v11 = *(v0 + 16);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v11, v10, sub_1005B0508, v6, v9);
}

uint64_t sub_1005AECA8()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 56);
  *(*v1 + 216) = v0;

  v3(v4, v5);

  v6 = *(v2 + 192);
  v7 = *(v2 + 184);
  if (v0)
  {
    v8 = sub_1005AEF8C;
  }

  else
  {
    v8 = sub_1005AEE6C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1005AEE6C()
{
  v1 = *(v0 + 24);

  return _swift_task_switch(sub_1005AEED8, v1, 0);
}

uint64_t sub_1005AEED8()
{
  v1 = *(v0 + 104);

  sub_100004F84(v1, &qword_100ADFA80, &qword_100950F18);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1005AEF8C()
{
  v1 = *(v0 + 24);

  return _swift_task_switch(sub_1005AEFF8, v1, 0);
}

uint64_t sub_1005AEFF8()
{
  if (qword_100AD0048 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100AEA028);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed trying to migrate old state token: %@", v4, 0xCu);
    sub_100004F84(v5, &unk_100AD4BB0, &unk_100941E50);

    v7 = v2;
    v2 = v0[15];
  }

  else
  {
    v7 = v0[15];
  }

  v8 = v0[13];
  v9 = v0[4];
  v10 = v0[5];
  v11 = v0[2];

  sub_100004F84(v8, &qword_100ADFA80, &qword_100950F18);
  (*(v10 + 56))(v11, 1, 1, v9);

  v12 = v0[1];

  return v12();
}

double sub_1005AF218(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v42 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100ADFA80, &qword_100950F18);
  __chkstk_darwin(v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v36 - v12;
  v14 = OBJC_IVAR____TtC7Journal25JournalSyncEngineDelegate_syncEngine;
  if (*(v1 + OBJC_IVAR____TtC7Journal25JournalSyncEngineDelegate_syncEngine))
  {
    if (qword_100AD0048 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000617C(v15, qword_100AEA028);
    v42 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v42, v16, "Attempting to start the sync engine while one is already running", v17, 2u);
    }

    v18 = v42;
  }

  else
  {
    v41 = v11;
    if (qword_100AD0048 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000617C(v20, qword_100AEA028);
    sub_1000082B4(a1, v13, &qword_100ADFA80, &qword_100950F18);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v37 = v23;
      v39 = swift_slowAlloc();
      v43 = v39;
      *v23 = 136315394;
      v38 = v21;
      v40 = a1;
      sub_1000082B4(v13, v9, &qword_100ADFA80, &qword_100950F18);
      v24 = String.init<A>(describing:)();
      v25 = v42;
      LODWORD(v41) = v22;
      v27 = v26;
      sub_100004F84(v13, &qword_100ADFA80, &qword_100950F18);
      v28 = sub_100008458(v24, v27, &v43);

      v29 = v37;
      *(v37 + 1) = v28;
      *(v29 + 6) = 2082;
      (v25[2].isa)(v6, v2 + OBJC_IVAR____TtC7Journal25JournalSyncEngineDelegate_sessionID, v4);
      sub_100042028(&qword_100AE19B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      (v25[1].isa)(v6, v4);
      v33 = sub_100008458(v30, v32, &v43);
      a1 = v40;

      *(v29 + 14) = v33;
      v34 = v38;
      _os_log_impl(&_mh_execute_header, v38, v41, "Initializing the sync engine.\nState token: %s\nSessionID: %{public}s", v29, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100004F84(v13, &qword_100ADFA80, &qword_100950F18);
    }

    v35 = sub_100042070(a1);
    *(v2 + OBJC_IVAR____TtC7Journal25JournalSyncEngineDelegate_isEngineFetching) = 0;
    *(v2 + OBJC_IVAR____TtC7Journal25JournalSyncEngineDelegate_isEngineSending) = 0;
    *(v2 + v14) = v35;
  }

  return result;
}

uint64_t sub_1005AF6FC@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for SyncDataMO();
  result = static SyncDataMO.decodedSyncEngineStateData(context:)();
  if (v2)
  {

    v5 = type metadata accessor for CKSyncEngine.State.Serialization();
    return (*(*(v5 - 8) + 56))(a2, 1, 1, v5);
  }

  return result;
}

id sub_1005AF79C(void *a1)
{
  type metadata accessor for SyncDataMO();
  result = static SyncDataMO.removeStateToken(context:)();
  if (!v1)
  {
    v5 = 0;
    if ([a1 save:&v5])
    {
      return v5;
    }

    else
    {
      v4 = v5;
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1005AF8A4()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_1005AF9B4, v1, 0);
}

uint64_t sub_1005AF9B4()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  sub_1003E9628(0, 0, v4, &unk_10095EE48, v6);

  (*(v2 + 8))(v1, v3);
  v7 = v0[42];
  v8 = v0[40];
  v9 = v0[41];
  v10 = v0[36];
  v11 = v0[33];
  v12 = v0[34];
  sub_100059D08(v7, "JournalSyncEngineDelegate.handleEvent", 37, 2, v0[43]);

  (*(v12 + 8))(v10, v11);
  (*(v9 + 8))(v7, v8);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1005AFC18()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_1005AFD28, v1, 0);
}

uint64_t sub_1005AFD28()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[42];
  v2 = v0[40];
  v3 = v0[41];
  v4 = v0[36];
  v5 = v0[33];
  v6 = v0[34];
  sub_100059D08(v1, "JournalSyncEngineDelegate.handleEvent", 37, 2, v0[43]);

  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1005AFF00()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_1005B0010, v1, 0);
}

uint64_t sub_1005B0010()
{
  (*(v0[12] + 8))(v0[13], v0[11]);
  v1 = v0[42];
  v2 = v0[40];
  v3 = v0[41];
  v4 = v0[36];
  v5 = v0[33];
  v6 = v0[34];
  sub_100059D08(v1, "JournalSyncEngineDelegate.handleEvent", 37, 2, v0[43]);

  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1005B01E8()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_1005B02F8, v1, 0);
}

uint64_t sub_1005B02F8()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[42];
  v2 = v0[40];
  v3 = v0[41];
  v4 = v0[36];
  v5 = v0[33];
  v6 = v0[34];
  sub_100059D08(v1, "JournalSyncEngineDelegate.handleEvent", 37, 2, v0[43]);

  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1005B0524(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Duration.TimeFormatStyle.Pattern();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Duration.TimeFormatStyle();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;
  v20 = a2;
  LOBYTE(a2) = static Duration.< infix(_:_:)();
  (*(v6 + 104))(v8, enum case for FloatingPointRoundingRule.toNearestOrEven(_:), v5);
  if (a2)
  {
    static Duration.TimeFormatStyle.Pattern.minuteSecond(padMinuteToLength:fractionalSecondsLength:roundFractionalSeconds:)();
  }

  else
  {
    static Duration.TimeFormatStyle.Pattern.hourMinuteSecond(padHourToLength:fractionalSecondsLength:roundFractionalSeconds:)();
  }

  (*(v6 + 8))(v8, v5);
  static FormatStyle<>.time(pattern:)();
  (*(v9 + 8))(v11, v18);
  sub_10043C588();
  Duration.formatted<A>(_:)();
  (*(v13 + 8))(v15, v12);
  return v21;
}

uint64_t sub_1005B07B8@<X0>(uint64_t a1@<X8>)
{
  v120 = a1;
  v2 = type metadata accessor for AttributedString();
  v118 = *(v2 - 8);
  v119 = v2;
  __chkstk_darwin(v2);
  v117 = &v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v116 - v5;
  v7 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v7);
  v8 = sub_1000F24EC(&qword_100AD1350, &unk_100949E00);
  __chkstk_darwin(v8 - 8);
  v10 = &v116 - v9;
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for SidebarInsightsBrickViewModel.MetricType(0);
  __chkstk_darwin(v13);
  v15 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1007EDCD4();
  sub_100471100(v1, v15);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v24 = v15[16] >> 5;
    if (v24 > 1)
    {
      if (v24 == 2)
      {
        if (*v15)
        {
          if (*v15 == 1)
          {
            String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
            v34._countAndFlagsBits = 23390;
            v34._object = 0xE200000000000000;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v34);
            v121 = v16;
            String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
            v35 = 0xD000000000000037;
            v36 = 0x80000001008FC810;
          }

          else
          {
            String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
            v51._countAndFlagsBits = 23390;
            v51._object = 0xE200000000000000;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v51);
            v121 = v16;
            String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
            v36 = 0x80000001008FC880;
            v35 = 0xD000000000000038;
          }

          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v35);
          String.LocalizationValue.init(stringInterpolation:)();
          v37 = type metadata accessor for Locale();
          (*(*(v37 - 8) + 56))(v10, 1, 1, v37);
          swift_getKeyPath();
          v121 = _swiftEmptyArrayStorage;
          sub_1005B63A0();
          sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
          sub_1005B63F8();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          sub_100280F98();
        }

        else
        {
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v45._countAndFlagsBits = 23390;
          v45._object = 0xE200000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v45);
          v121 = v16;
          String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
          v46._countAndFlagsBits = 0xD000000000000036;
          v46._object = 0x80000001008FC7A0;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v46);
          String.LocalizationValue.init(stringInterpolation:)();
          v47 = type metadata accessor for Locale();
          (*(*(v47 - 8) + 56))(v10, 1, 1, v47);
          swift_getKeyPath();
          v121 = _swiftEmptyArrayStorage;
          sub_1005B63A0();
          sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
          sub_1005B63F8();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          sub_100280F98();
        }

        goto LABEL_36;
      }

      if (v24 == 3)
      {
        v25 = *v15;
        v26 = BYTE1(*v15);
        if (v25 > 4)
        {
          if (*v15 <= 7u)
          {
            if (v25 == 5)
            {
              if ((v26 - 2) < 2)
              {
                goto LABEL_68;
              }

              if (!BYTE1(*v15))
              {
                String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
                v66._countAndFlagsBits = 23390;
                v66._object = 0xE200000000000000;
                String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v66);
                v121 = v16;
                String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
                v67._countAndFlagsBits = 0xD00000000000003CLL;
                v67._object = 0x80000001008FC270;
                String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v67);
                String.LocalizationValue.init(stringInterpolation:)();
                v68 = type metadata accessor for Locale();
                (*(*(v68 - 8) + 56))(v10, 1, 1, v68);
                swift_getKeyPath();
                v121 = _swiftEmptyArrayStorage;
                sub_1005B63A0();
                sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
                sub_1005B63F8();
                dispatch thunk of SetAlgebra.init<A>(_:)();
                sub_100280F98();
LABEL_72:
                v44 = v117;
                goto LABEL_88;
              }

              String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
              v88._countAndFlagsBits = 23390;
              v88._object = 0xE200000000000000;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v88);
              v121 = v16;
              String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
              v89._countAndFlagsBits = 0xD00000000000003DLL;
              v89._object = 0x80000001008FC1F0;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v89);
              String.LocalizationValue.init(stringInterpolation:)();
              v90 = type metadata accessor for Locale();
              (*(*(v90 - 8) + 56))(v10, 1, 1, v90);
              swift_getKeyPath();
              v121 = _swiftEmptyArrayStorage;
              sub_1005B63A0();
              sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
              sub_1005B63F8();
              dispatch thunk of SetAlgebra.init<A>(_:)();
              sub_100280F98();
            }

            else
            {
              if (v25 == 6)
              {
                if ((v26 - 2) >= 2)
                {
                  if (!BYTE1(*v15))
                  {
                    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
                    v27._countAndFlagsBits = 23390;
                    v27._object = 0xE200000000000000;
                    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v27);
                    v121 = v16;
                    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
                    v28._countAndFlagsBits = 0xD000000000000039;
                    v28._object = 0x80000001008FC170;
                    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v28);
                    String.LocalizationValue.init(stringInterpolation:)();
                    v29 = type metadata accessor for Locale();
                    (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
                    swift_getKeyPath();
                    v121 = _swiftEmptyArrayStorage;
                    sub_1005B63A0();
                    sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
                    sub_1005B63F8();
                    dispatch thunk of SetAlgebra.init<A>(_:)();
                    sub_100280F98();
LABEL_87:
                    v44 = v117;
                    goto LABEL_88;
                  }

                  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
                  v104._countAndFlagsBits = 23390;
                  v104._object = 0xE200000000000000;
                  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v104);
                  v121 = v16;
                  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
                  v105._countAndFlagsBits = 0xD00000000000003ALL;
                  v105._object = 0x80000001008FC0F0;
                  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v105);
                  String.LocalizationValue.init(stringInterpolation:)();
                  v106 = type metadata accessor for Locale();
                  (*(*(v106 - 8) + 56))(v10, 1, 1, v106);
                  swift_getKeyPath();
                  v121 = _swiftEmptyArrayStorage;
                  sub_1005B63A0();
                  sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
                  sub_1005B63F8();
                  dispatch thunk of SetAlgebra.init<A>(_:)();
                  sub_100280F98();
LABEL_83:
                  v44 = v117;
                  goto LABEL_88;
                }

                goto LABEL_68;
              }

              if ((v26 - 2) < 2)
              {
                goto LABEL_68;
              }

              if (!BYTE1(*v15))
              {
                String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
                v79._countAndFlagsBits = 23390;
                v79._object = 0xE200000000000000;
                String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v79);
                v121 = v16;
                String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
                v80._countAndFlagsBits = 0xD00000000000003CLL;
                v80._object = 0x80000001008FC070;
                String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v80);
                String.LocalizationValue.init(stringInterpolation:)();
                v81 = type metadata accessor for Locale();
                (*(*(v81 - 8) + 56))(v10, 1, 1, v81);
                swift_getKeyPath();
                v121 = _swiftEmptyArrayStorage;
                sub_1005B63A0();
                sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
                sub_1005B63F8();
                dispatch thunk of SetAlgebra.init<A>(_:)();
                sub_100280F98();
                goto LABEL_72;
              }

              String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
              v110._countAndFlagsBits = 23390;
              v110._object = 0xE200000000000000;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v110);
              v121 = v16;
              String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
              v111._countAndFlagsBits = 0xD00000000000003DLL;
              v111._object = 0x80000001008FBFF0;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v111);
              String.LocalizationValue.init(stringInterpolation:)();
              v112 = type metadata accessor for Locale();
              (*(*(v112 - 8) + 56))(v10, 1, 1, v112);
              swift_getKeyPath();
              v121 = _swiftEmptyArrayStorage;
              sub_1005B63A0();
              sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
              sub_1005B63F8();
              dispatch thunk of SetAlgebra.init<A>(_:)();
              sub_100280F98();
            }

            v44 = v117;
            goto LABEL_88;
          }

          if (v25 == 8)
          {
            if ((v26 - 2) >= 2)
            {
              if (BYTE1(*v15))
              {
                String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
                v91._countAndFlagsBits = 23390;
                v91._object = 0xE200000000000000;
                String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v91);
                v121 = v16;
                String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
                v70 = 0xD000000000000040;
                v71 = 0x80000001008FBEE0;
              }

              else
              {
                String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
                v69._countAndFlagsBits = 23390;
                v69._object = 0xE200000000000000;
                String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v69);
                v121 = v16;
                String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
                v70 = 0xD00000000000003FLL;
                v71 = 0x80000001008FBF70;
              }

              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v70);
              String.LocalizationValue.init(stringInterpolation:)();
              v72 = type metadata accessor for Locale();
              (*(*(v72 - 8) + 56))(v10, 1, 1, v72);
              swift_getKeyPath();
              v121 = _swiftEmptyArrayStorage;
              sub_1005B63A0();
              sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
              sub_1005B63F8();
              dispatch thunk of SetAlgebra.init<A>(_:)();
              sub_100280F98();
              v44 = v117;
              goto LABEL_88;
            }

            goto LABEL_68;
          }

          if (v25 == 9)
          {
            if ((v26 - 2) >= 2)
            {
              if (!BYTE1(*v15))
              {
                String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
                v57._countAndFlagsBits = 23390;
                v57._object = 0xE200000000000000;
                String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v57);
                v121 = v16;
                String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
                v58._countAndFlagsBits = 0xD000000000000039;
                v58._object = 0x80000001008FBE60;
                String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v58);
                String.LocalizationValue.init(stringInterpolation:)();
                v59 = type metadata accessor for Locale();
                (*(*(v59 - 8) + 56))(v10, 1, 1, v59);
                swift_getKeyPath();
                v121 = _swiftEmptyArrayStorage;
                sub_1005B63A0();
                sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
                sub_1005B63F8();
                dispatch thunk of SetAlgebra.init<A>(_:)();
                sub_100280F98();
                goto LABEL_87;
              }

              String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
              v107._countAndFlagsBits = 23390;
              v107._object = 0xE200000000000000;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v107);
              v121 = v16;
              String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
              v108._countAndFlagsBits = 0xD00000000000003ALL;
              v108._object = 0x80000001008FBDE0;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v108);
              String.LocalizationValue.init(stringInterpolation:)();
              v109 = type metadata accessor for Locale();
              (*(*(v109 - 8) + 56))(v10, 1, 1, v109);
              swift_getKeyPath();
              v121 = _swiftEmptyArrayStorage;
              sub_1005B63A0();
              sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
              sub_1005B63F8();
              dispatch thunk of SetAlgebra.init<A>(_:)();
              sub_100280F98();
              goto LABEL_83;
            }

LABEL_68:
            v44 = v117;
            AttributedString.init(stringLiteral:)();
LABEL_89:
            v54 = v118;
            v53 = v119;
            (*(v118 + 32))(v6, v44, v119);
            v52 = v120;
            goto LABEL_38;
          }

          if ((v26 - 2) < 2)
          {
            goto LABEL_68;
          }

          if (BYTE1(*v15))
          {
            String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
            v113._countAndFlagsBits = 23390;
            v113._object = 0xE200000000000000;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v113);
            v121 = v16;
            String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
            v114._countAndFlagsBits = 0xD000000000000039;
            v114._object = 0x80000001008FBCE0;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v114);
            String.LocalizationValue.init(stringInterpolation:)();
            v115 = type metadata accessor for Locale();
            (*(*(v115 - 8) + 56))(v10, 1, 1, v115);
            swift_getKeyPath();
            v121 = _swiftEmptyArrayStorage;
            sub_1005B63A0();
            sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
            sub_1005B63F8();
            dispatch thunk of SetAlgebra.init<A>(_:)();
            sub_100280F98();
            goto LABEL_87;
          }

          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v82._countAndFlagsBits = 23390;
          v82._object = 0xE200000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v82);
          v121 = v16;
          String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
          v83._object = 0x80000001008FBD60;
          v83._countAndFlagsBits = 0xD000000000000038;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v83);
          String.LocalizationValue.init(stringInterpolation:)();
          v84 = type metadata accessor for Locale();
          (*(*(v84 - 8) + 56))(v10, 1, 1, v84);
          swift_getKeyPath();
          v121 = _swiftEmptyArrayStorage;
          sub_1005B63A0();
          sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
          sub_1005B63F8();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          sub_100280F98();
LABEL_80:
          v44 = v117;
          goto LABEL_88;
        }

        if (*v15 <= 1u)
        {
          if (*v15)
          {
            if ((v26 - 2) < 2)
            {
              goto LABEL_68;
            }

            if (BYTE1(*v15))
            {
              String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
              v101._countAndFlagsBits = 23390;
              v101._object = 0xE200000000000000;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v101);
              v121 = v16;
              String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
              v102._object = 0x80000001008FC5C0;
              v102._countAndFlagsBits = 0xD000000000000038;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v102);
              String.LocalizationValue.init(stringInterpolation:)();
              v103 = type metadata accessor for Locale();
              (*(*(v103 - 8) + 56))(v10, 1, 1, v103);
              swift_getKeyPath();
              v121 = _swiftEmptyArrayStorage;
              sub_1005B63A0();
              sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
              sub_1005B63F8();
              dispatch thunk of SetAlgebra.init<A>(_:)();
              sub_100280F98();
              goto LABEL_80;
            }

            String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
            v76._countAndFlagsBits = 23390;
            v76._object = 0xE200000000000000;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v76);
            v121 = v16;
            String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
            v77._countAndFlagsBits = 0xD000000000000037;
            v77._object = 0x80000001008FC640;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v77);
            String.LocalizationValue.init(stringInterpolation:)();
            v78 = type metadata accessor for Locale();
            (*(*(v78 - 8) + 56))(v10, 1, 1, v78);
            swift_getKeyPath();
            v121 = _swiftEmptyArrayStorage;
            sub_1005B63A0();
            sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
            sub_1005B63F8();
            dispatch thunk of SetAlgebra.init<A>(_:)();
            sub_100280F98();
          }

          else
          {
            if ((v26 - 2) < 2)
            {
              goto LABEL_68;
            }

            if (BYTE1(*v15))
            {
              String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
              v98._countAndFlagsBits = 23390;
              v98._object = 0xE200000000000000;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v98);
              v121 = v16;
              String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
              v99._object = 0x80000001008FC6B0;
              v99._countAndFlagsBits = 0xD000000000000038;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v99);
              String.LocalizationValue.init(stringInterpolation:)();
              v100 = type metadata accessor for Locale();
              (*(*(v100 - 8) + 56))(v10, 1, 1, v100);
              swift_getKeyPath();
              v121 = _swiftEmptyArrayStorage;
              sub_1005B63A0();
              sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
              sub_1005B63F8();
              dispatch thunk of SetAlgebra.init<A>(_:)();
              sub_100280F98();
              goto LABEL_80;
            }

            String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
            v60._countAndFlagsBits = 23390;
            v60._object = 0xE200000000000000;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v60);
            v121 = v16;
            String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
            v61._countAndFlagsBits = 0xD000000000000037;
            v61._object = 0x80000001008FC730;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v61);
            String.LocalizationValue.init(stringInterpolation:)();
            v62 = type metadata accessor for Locale();
            (*(*(v62 - 8) + 56))(v10, 1, 1, v62);
            swift_getKeyPath();
            v121 = _swiftEmptyArrayStorage;
            sub_1005B63A0();
            sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
            sub_1005B63F8();
            dispatch thunk of SetAlgebra.init<A>(_:)();
            sub_100280F98();
          }
        }

        else
        {
          if (v25 == 2)
          {
            if ((v26 - 2) < 2)
            {
              goto LABEL_68;
            }

            if (BYTE1(*v15))
            {
              String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
              v85._countAndFlagsBits = 23390;
              v85._object = 0xE200000000000000;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v85);
              v121 = v16;
              String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
              v86._countAndFlagsBits = 0xD00000000000003CLL;
              v86._object = 0x80000001008FC4C0;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v86);
              String.LocalizationValue.init(stringInterpolation:)();
              v87 = type metadata accessor for Locale();
              (*(*(v87 - 8) + 56))(v10, 1, 1, v87);
              swift_getKeyPath();
              v121 = _swiftEmptyArrayStorage;
              sub_1005B63A0();
              sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
              sub_1005B63F8();
              dispatch thunk of SetAlgebra.init<A>(_:)();
              sub_100280F98();
              goto LABEL_72;
            }

            String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
            v63._countAndFlagsBits = 23390;
            v63._object = 0xE200000000000000;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v63);
            v121 = v16;
            String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
            v64._countAndFlagsBits = 0xD00000000000003BLL;
            v64._object = 0x80000001008FC540;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v64);
            String.LocalizationValue.init(stringInterpolation:)();
            v65 = type metadata accessor for Locale();
            (*(*(v65 - 8) + 56))(v10, 1, 1, v65);
            swift_getKeyPath();
            v121 = _swiftEmptyArrayStorage;
            sub_1005B63A0();
            sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
            sub_1005B63F8();
            dispatch thunk of SetAlgebra.init<A>(_:)();
            sub_100280F98();
            v44 = v117;
LABEL_88:
            AttributedString.init<A>(localized:options:table:bundle:locale:comment:including:)();
            goto LABEL_89;
          }

          if (v25 == 3)
          {
            if ((v26 - 2) < 2)
            {
              goto LABEL_68;
            }

            if (!BYTE1(*v15))
            {
              String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
              v41._countAndFlagsBits = 23390;
              v41._object = 0xE200000000000000;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v41);
              v121 = v16;
              String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
              v42._countAndFlagsBits = 0xD000000000000036;
              v42._object = 0x80000001008FC450;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v42);
              String.LocalizationValue.init(stringInterpolation:)();
              v43 = type metadata accessor for Locale();
              (*(*(v43 - 8) + 56))(v10, 1, 1, v43);
              swift_getKeyPath();
              v121 = _swiftEmptyArrayStorage;
              sub_1005B63A0();
              sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
              sub_1005B63F8();
              dispatch thunk of SetAlgebra.init<A>(_:)();
              sub_100280F98();
              v44 = v117;
              goto LABEL_88;
            }

            String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
            v92._countAndFlagsBits = 23390;
            v92._object = 0xE200000000000000;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v92);
            v121 = v16;
            String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
            v93._countAndFlagsBits = 0xD000000000000037;
            v93._object = 0x80000001008FC3E0;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v93);
            String.LocalizationValue.init(stringInterpolation:)();
            v94 = type metadata accessor for Locale();
            (*(*(v94 - 8) + 56))(v10, 1, 1, v94);
            swift_getKeyPath();
            v121 = _swiftEmptyArrayStorage;
            sub_1005B63A0();
            sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
            sub_1005B63F8();
            dispatch thunk of SetAlgebra.init<A>(_:)();
            sub_100280F98();
          }

          else
          {
            if ((v26 - 2) < 2)
            {
              goto LABEL_68;
            }

            if (BYTE1(*v15))
            {
              String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
              v95._countAndFlagsBits = 23390;
              v95._object = 0xE200000000000000;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v95);
              v121 = v16;
              String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
              v96._object = 0x80000001008FC2F0;
              v96._countAndFlagsBits = 0xD000000000000038;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v96);
              String.LocalizationValue.init(stringInterpolation:)();
              v97 = type metadata accessor for Locale();
              (*(*(v97 - 8) + 56))(v10, 1, 1, v97);
              swift_getKeyPath();
              v121 = _swiftEmptyArrayStorage;
              sub_1005B63A0();
              sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
              sub_1005B63F8();
              dispatch thunk of SetAlgebra.init<A>(_:)();
              sub_100280F98();
              goto LABEL_80;
            }

            String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
            v73._countAndFlagsBits = 23390;
            v73._object = 0xE200000000000000;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v73);
            v121 = v16;
            String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
            v74._countAndFlagsBits = 0xD000000000000037;
            v74._object = 0x80000001008FC370;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v74);
            String.LocalizationValue.init(stringInterpolation:)();
            v75 = type metadata accessor for Locale();
            (*(*(v75 - 8) + 56))(v10, 1, 1, v75);
            swift_getKeyPath();
            v121 = _swiftEmptyArrayStorage;
            sub_1005B63A0();
            sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
            sub_1005B63F8();
            dispatch thunk of SetAlgebra.init<A>(_:)();
            sub_100280F98();
          }
        }

        v44 = v117;
        goto LABEL_88;
      }

LABEL_19:
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v31._countAndFlagsBits = 23390;
      v31._object = 0xE200000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v31);
      v121 = v16;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v32._countAndFlagsBits = 0xD000000000000039;
      v32._object = 0x80000001008FBC60;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v32);
      String.LocalizationValue.init(stringInterpolation:)();
      v33 = type metadata accessor for Locale();
      (*(*(v33 - 8) + 56))(v10, 1, 1, v33);
      swift_getKeyPath();
      v121 = _swiftEmptyArrayStorage;
      sub_1005B63A0();
      sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
      sub_1005B63F8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      sub_100280F98();
LABEL_36:
      AttributedString.init<A>(localized:options:table:bundle:locale:comment:including:)();
      goto LABEL_37;
    }

    if (v24)
    {
      if (*v15 <= 1u)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v38._countAndFlagsBits = 23390;
        v38._object = 0xE200000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v38);
        v121 = v16;
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v39._countAndFlagsBits = 0xD000000000000036;
        v39._object = 0x80000001008FC900;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v39);
        String.LocalizationValue.init(stringInterpolation:)();
        v40 = type metadata accessor for Locale();
        (*(*(v40 - 8) + 56))(v10, 1, 1, v40);
        swift_getKeyPath();
        v121 = _swiftEmptyArrayStorage;
        sub_1005B63A0();
        sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
        sub_1005B63F8();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        sub_100280F98();
        goto LABEL_36;
      }
    }

    else
    {
      if (!*v15)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v48._countAndFlagsBits = 23390;
        v48._object = 0xE200000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v48);
        v121 = v16;
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v49._object = 0x80000001008FC9A0;
        v49._countAndFlagsBits = 0xD000000000000038;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v49);
        String.LocalizationValue.init(stringInterpolation:)();
        v50 = type metadata accessor for Locale();
        (*(*(v50 - 8) + 56))(v10, 1, 1, v50);
        swift_getKeyPath();
        v121 = _swiftEmptyArrayStorage;
        sub_1005B63A0();
        sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
        sub_1005B63F8();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        sub_100280F98();
        goto LABEL_36;
      }

      if (*v15 == 1)
      {
        goto LABEL_19;
      }
    }

    AttributedString.init(stringLiteral:)();
LABEL_37:
    v53 = v119;
    v52 = v120;
    v54 = v118;
LABEL_38:
    v55 = *(sub_1000F24EC(&qword_100AE4CB0, &qword_10096AA40) + 48);
    (*(v54 + 32))(v52, v6, v53);
    v56 = type metadata accessor for UUID();
    return (*(*(v56 - 8) + 8))(&v15[v55], v56);
  }

  v17 = v15[8];
  v18 = *(sub_1000F24EC(&qword_100AE4CA8, &unk_100956FF0) + 48);
  v19 = type metadata accessor for UUID();
  (*(*(v19 - 8) + 8))(&v15[v18], v19);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 23390;
  v20._object = 0xE200000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v20);
  v121 = v16;
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  if (v17)
  {
    v21 = 0xD000000000000034;
    v22 = 0x80000001008FCA20;
  }

  else
  {
    v21 = 0xD000000000000033;
    v22 = 0x80000001008FCA90;
  }

  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v21);
  String.LocalizationValue.init(stringInterpolation:)();
  v23 = type metadata accessor for Locale();
  (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
  swift_getKeyPath();
  v121 = _swiftEmptyArrayStorage;
  sub_1005B63A0();
  sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
  sub_1005B63F8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100280F98();
  return AttributedString.init<A>(localized:options:table:bundle:locale:comment:including:)();
}

uint64_t sub_1005B35AC@<X0>(uint64_t a1@<X8>)
{
  v123 = a1;
  v2 = type metadata accessor for AttributedString();
  v121 = *(v2 - 8);
  v122 = v2;
  __chkstk_darwin(v2);
  v120 = &v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v119 - v5;
  v7 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v7);
  v8 = sub_1000F24EC(&qword_100AD1350, &unk_100949E00);
  __chkstk_darwin(v8 - 8);
  v10 = &v119 - v9;
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for SidebarInsightsBrickViewModel.MetricType(0);
  __chkstk_darwin(v13);
  v15 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1007EDCD4();
  sub_100471100(v1, v15);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v24 = v15[16] >> 5;
    if (v24 > 1)
    {
      if (v24 == 2)
      {
        if (*v15)
        {
          if (*v15 == 1)
          {
            String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
            v34._countAndFlagsBits = 23390;
            v34._object = 0xE200000000000000;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v34);
            v124 = v16;
            String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
            v35 = 0xD00000000000004FLL;
            v36 = 0x80000001008FD3A0;
          }

          else
          {
            String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
            v54._countAndFlagsBits = 23390;
            v54._object = 0xE200000000000000;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v54);
            v124 = v16;
            String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
            v36 = 0x80000001008FD3F0;
            v35 = 0xD000000000000050;
          }

          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v35);
          String.LocalizationValue.init(stringInterpolation:)();
          v37 = type metadata accessor for Locale();
          (*(*(v37 - 8) + 56))(v10, 1, 1, v37);
          swift_getKeyPath();
          v124 = _swiftEmptyArrayStorage;
          sub_1005B63A0();
          sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
          sub_1005B63F8();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          sub_100280F98();
        }

        else
        {
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v45._countAndFlagsBits = 23390;
          v45._object = 0xE200000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v45);
          v124 = v16;
          String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
          v46._countAndFlagsBits = 0xD00000000000004ELL;
          v46._object = 0x80000001008FD350;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v46);
          String.LocalizationValue.init(stringInterpolation:)();
          v47 = type metadata accessor for Locale();
          (*(*(v47 - 8) + 56))(v10, 1, 1, v47);
          swift_getKeyPath();
          v124 = _swiftEmptyArrayStorage;
          sub_1005B63A0();
          sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
          sub_1005B63F8();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          sub_100280F98();
        }

        goto LABEL_38;
      }

      if (v24 == 3)
      {
        v25 = *v15;
        v26 = BYTE1(*v15);
        if (v25 > 4)
        {
          if (*v15 <= 7u)
          {
            if (v25 == 5)
            {
              if ((v26 - 2) < 2)
              {
                goto LABEL_70;
              }

              if (!BYTE1(*v15))
              {
                String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
                v69._countAndFlagsBits = 23390;
                v69._object = 0xE200000000000000;
                String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v69);
                v124 = v16;
                String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
                v70._countAndFlagsBits = 0xD000000000000054;
                v70._object = 0x80000001008FCF80;
                String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v70);
                String.LocalizationValue.init(stringInterpolation:)();
                v71 = type metadata accessor for Locale();
                (*(*(v71 - 8) + 56))(v10, 1, 1, v71);
                swift_getKeyPath();
                v124 = _swiftEmptyArrayStorage;
                sub_1005B63A0();
                sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
                sub_1005B63F8();
                dispatch thunk of SetAlgebra.init<A>(_:)();
                sub_100280F98();
LABEL_74:
                v44 = v120;
                goto LABEL_90;
              }

              String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
              v91._countAndFlagsBits = 23390;
              v91._object = 0xE200000000000000;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v91);
              v124 = v16;
              String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
              v92._countAndFlagsBits = 0xD000000000000055;
              v92._object = 0x80000001008FCF20;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v92);
              String.LocalizationValue.init(stringInterpolation:)();
              v93 = type metadata accessor for Locale();
              (*(*(v93 - 8) + 56))(v10, 1, 1, v93);
              swift_getKeyPath();
              v124 = _swiftEmptyArrayStorage;
              sub_1005B63A0();
              sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
              sub_1005B63F8();
              dispatch thunk of SetAlgebra.init<A>(_:)();
              sub_100280F98();
            }

            else
            {
              if (v25 == 6)
              {
                if ((v26 - 2) >= 2)
                {
                  if (!BYTE1(*v15))
                  {
                    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
                    v27._countAndFlagsBits = 23390;
                    v27._object = 0xE200000000000000;
                    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v27);
                    v124 = v16;
                    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
                    v28._countAndFlagsBits = 0xD000000000000051;
                    v28._object = 0x80000001008FCEC0;
                    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v28);
                    String.LocalizationValue.init(stringInterpolation:)();
                    v29 = type metadata accessor for Locale();
                    (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
                    swift_getKeyPath();
                    v124 = _swiftEmptyArrayStorage;
                    sub_1005B63A0();
                    sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
                    sub_1005B63F8();
                    dispatch thunk of SetAlgebra.init<A>(_:)();
                    sub_100280F98();
LABEL_89:
                    v44 = v120;
                    goto LABEL_90;
                  }

                  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
                  v107._countAndFlagsBits = 23390;
                  v107._object = 0xE200000000000000;
                  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v107);
                  v124 = v16;
                  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
                  v108._countAndFlagsBits = 0xD000000000000052;
                  v108._object = 0x80000001008FCE60;
                  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v108);
                  String.LocalizationValue.init(stringInterpolation:)();
                  v109 = type metadata accessor for Locale();
                  (*(*(v109 - 8) + 56))(v10, 1, 1, v109);
                  swift_getKeyPath();
                  v124 = _swiftEmptyArrayStorage;
                  sub_1005B63A0();
                  sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
                  sub_1005B63F8();
                  dispatch thunk of SetAlgebra.init<A>(_:)();
                  sub_100280F98();
LABEL_85:
                  v44 = v120;
                  goto LABEL_90;
                }

                goto LABEL_70;
              }

              if ((v26 - 2) < 2)
              {
                goto LABEL_70;
              }

              if (!BYTE1(*v15))
              {
                String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
                v82._countAndFlagsBits = 23390;
                v82._object = 0xE200000000000000;
                String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v82);
                v124 = v16;
                String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
                v83._countAndFlagsBits = 0xD000000000000054;
                v83._object = 0x80000001008FCE00;
                String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v83);
                String.LocalizationValue.init(stringInterpolation:)();
                v84 = type metadata accessor for Locale();
                (*(*(v84 - 8) + 56))(v10, 1, 1, v84);
                swift_getKeyPath();
                v124 = _swiftEmptyArrayStorage;
                sub_1005B63A0();
                sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
                sub_1005B63F8();
                dispatch thunk of SetAlgebra.init<A>(_:)();
                sub_100280F98();
                goto LABEL_74;
              }

              String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
              v113._countAndFlagsBits = 23390;
              v113._object = 0xE200000000000000;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v113);
              v124 = v16;
              String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
              v114._countAndFlagsBits = 0xD000000000000055;
              v114._object = 0x80000001008FCDA0;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v114);
              String.LocalizationValue.init(stringInterpolation:)();
              v115 = type metadata accessor for Locale();
              (*(*(v115 - 8) + 56))(v10, 1, 1, v115);
              swift_getKeyPath();
              v124 = _swiftEmptyArrayStorage;
              sub_1005B63A0();
              sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
              sub_1005B63F8();
              dispatch thunk of SetAlgebra.init<A>(_:)();
              sub_100280F98();
            }

            v44 = v120;
            goto LABEL_90;
          }

          if (v25 == 8)
          {
            if ((v26 - 2) >= 2)
            {
              if (BYTE1(*v15))
              {
                String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
                v94._countAndFlagsBits = 23390;
                v94._object = 0xE200000000000000;
                String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v94);
                v124 = v16;
                String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
                v73 = 0xD000000000000058;
                v74 = 0x80000001008FCCE0;
              }

              else
              {
                String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
                v72._countAndFlagsBits = 23390;
                v72._object = 0xE200000000000000;
                String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v72);
                v124 = v16;
                String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
                v73 = 0xD000000000000057;
                v74 = 0x80000001008FCD40;
              }

              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v73);
              String.LocalizationValue.init(stringInterpolation:)();
              v75 = type metadata accessor for Locale();
              (*(*(v75 - 8) + 56))(v10, 1, 1, v75);
              swift_getKeyPath();
              v124 = _swiftEmptyArrayStorage;
              sub_1005B63A0();
              sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
              sub_1005B63F8();
              dispatch thunk of SetAlgebra.init<A>(_:)();
              sub_100280F98();
              v44 = v120;
              goto LABEL_90;
            }

            goto LABEL_70;
          }

          if (v25 == 9)
          {
            if ((v26 - 2) >= 2)
            {
              if (!BYTE1(*v15))
              {
                String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
                v60._countAndFlagsBits = 23390;
                v60._object = 0xE200000000000000;
                String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v60);
                v124 = v16;
                String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
                v61._countAndFlagsBits = 0xD000000000000051;
                v61._object = 0x80000001008FCC80;
                String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v61);
                String.LocalizationValue.init(stringInterpolation:)();
                v62 = type metadata accessor for Locale();
                (*(*(v62 - 8) + 56))(v10, 1, 1, v62);
                swift_getKeyPath();
                v124 = _swiftEmptyArrayStorage;
                sub_1005B63A0();
                sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
                sub_1005B63F8();
                dispatch thunk of SetAlgebra.init<A>(_:)();
                sub_100280F98();
                goto LABEL_89;
              }

              String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
              v110._countAndFlagsBits = 23390;
              v110._object = 0xE200000000000000;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v110);
              v124 = v16;
              String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
              v111._countAndFlagsBits = 0xD000000000000052;
              v111._object = 0x80000001008FCC20;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v111);
              String.LocalizationValue.init(stringInterpolation:)();
              v112 = type metadata accessor for Locale();
              (*(*(v112 - 8) + 56))(v10, 1, 1, v112);
              swift_getKeyPath();
              v124 = _swiftEmptyArrayStorage;
              sub_1005B63A0();
              sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
              sub_1005B63F8();
              dispatch thunk of SetAlgebra.init<A>(_:)();
              sub_100280F98();
              goto LABEL_85;
            }

LABEL_70:
            v44 = v120;
            AttributedString.init(stringLiteral:)();
LABEL_91:
            v57 = v121;
            v56 = v122;
            (*(v121 + 32))(v6, v44, v122);
            v55 = v123;
            goto LABEL_40;
          }

          if ((v26 - 2) < 2)
          {
            goto LABEL_70;
          }

          if (BYTE1(*v15))
          {
            String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
            v116._countAndFlagsBits = 23390;
            v116._object = 0xE200000000000000;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v116);
            v124 = v16;
            String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
            v117._countAndFlagsBits = 0xD000000000000051;
            v117._object = 0x80000001008FCB60;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v117);
            String.LocalizationValue.init(stringInterpolation:)();
            v118 = type metadata accessor for Locale();
            (*(*(v118 - 8) + 56))(v10, 1, 1, v118);
            swift_getKeyPath();
            v124 = _swiftEmptyArrayStorage;
            sub_1005B63A0();
            sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
            sub_1005B63F8();
            dispatch thunk of SetAlgebra.init<A>(_:)();
            sub_100280F98();
            goto LABEL_89;
          }

          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v85._countAndFlagsBits = 23390;
          v85._object = 0xE200000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v85);
          v124 = v16;
          String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
          v86._object = 0x80000001008FCBC0;
          v86._countAndFlagsBits = 0xD000000000000050;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v86);
          String.LocalizationValue.init(stringInterpolation:)();
          v87 = type metadata accessor for Locale();
          (*(*(v87 - 8) + 56))(v10, 1, 1, v87);
          swift_getKeyPath();
          v124 = _swiftEmptyArrayStorage;
          sub_1005B63A0();
          sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
          sub_1005B63F8();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          sub_100280F98();
LABEL_82:
          v44 = v120;
          goto LABEL_90;
        }

        if (*v15 <= 1u)
        {
          if (*v15)
          {
            if ((v26 - 2) < 2)
            {
              goto LABEL_70;
            }

            if (BYTE1(*v15))
            {
              String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
              v104._countAndFlagsBits = 23390;
              v104._object = 0xE200000000000000;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v104);
              v124 = v16;
              String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
              v105._object = 0x80000001008FD1F0;
              v105._countAndFlagsBits = 0xD000000000000050;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v105);
              String.LocalizationValue.init(stringInterpolation:)();
              v106 = type metadata accessor for Locale();
              (*(*(v106 - 8) + 56))(v10, 1, 1, v106);
              swift_getKeyPath();
              v124 = _swiftEmptyArrayStorage;
              sub_1005B63A0();
              sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
              sub_1005B63F8();
              dispatch thunk of SetAlgebra.init<A>(_:)();
              sub_100280F98();
              goto LABEL_82;
            }

            String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
            v79._countAndFlagsBits = 23390;
            v79._object = 0xE200000000000000;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v79);
            v124 = v16;
            String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
            v80._countAndFlagsBits = 0xD00000000000004FLL;
            v80._object = 0x80000001008FD250;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v80);
            String.LocalizationValue.init(stringInterpolation:)();
            v81 = type metadata accessor for Locale();
            (*(*(v81 - 8) + 56))(v10, 1, 1, v81);
            swift_getKeyPath();
            v124 = _swiftEmptyArrayStorage;
            sub_1005B63A0();
            sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
            sub_1005B63F8();
            dispatch thunk of SetAlgebra.init<A>(_:)();
            sub_100280F98();
          }

          else
          {
            if ((v26 - 2) < 2)
            {
              goto LABEL_70;
            }

            if (BYTE1(*v15))
            {
              String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
              v101._countAndFlagsBits = 23390;
              v101._object = 0xE200000000000000;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v101);
              v124 = v16;
              String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
              v102._object = 0x80000001008FD2A0;
              v102._countAndFlagsBits = 0xD000000000000050;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v102);
              String.LocalizationValue.init(stringInterpolation:)();
              v103 = type metadata accessor for Locale();
              (*(*(v103 - 8) + 56))(v10, 1, 1, v103);
              swift_getKeyPath();
              v124 = _swiftEmptyArrayStorage;
              sub_1005B63A0();
              sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
              sub_1005B63F8();
              dispatch thunk of SetAlgebra.init<A>(_:)();
              sub_100280F98();
              goto LABEL_82;
            }

            String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
            v63._countAndFlagsBits = 23390;
            v63._object = 0xE200000000000000;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v63);
            v124 = v16;
            String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
            v64._countAndFlagsBits = 0xD00000000000004FLL;
            v64._object = 0x80000001008FD300;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v64);
            String.LocalizationValue.init(stringInterpolation:)();
            v65 = type metadata accessor for Locale();
            (*(*(v65 - 8) + 56))(v10, 1, 1, v65);
            swift_getKeyPath();
            v124 = _swiftEmptyArrayStorage;
            sub_1005B63A0();
            sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
            sub_1005B63F8();
            dispatch thunk of SetAlgebra.init<A>(_:)();
            sub_100280F98();
          }
        }

        else
        {
          if (v25 == 2)
          {
            if ((v26 - 2) < 2)
            {
              goto LABEL_70;
            }

            if (BYTE1(*v15))
            {
              String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
              v88._countAndFlagsBits = 23390;
              v88._object = 0xE200000000000000;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v88);
              v124 = v16;
              String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
              v89._countAndFlagsBits = 0xD000000000000054;
              v89._object = 0x80000001008FD130;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v89);
              String.LocalizationValue.init(stringInterpolation:)();
              v90 = type metadata accessor for Locale();
              (*(*(v90 - 8) + 56))(v10, 1, 1, v90);
              swift_getKeyPath();
              v124 = _swiftEmptyArrayStorage;
              sub_1005B63A0();
              sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
              sub_1005B63F8();
              dispatch thunk of SetAlgebra.init<A>(_:)();
              sub_100280F98();
              goto LABEL_74;
            }

            String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
            v66._countAndFlagsBits = 23390;
            v66._object = 0xE200000000000000;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v66);
            v124 = v16;
            String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
            v67._countAndFlagsBits = 0xD000000000000053;
            v67._object = 0x80000001008FD190;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v67);
            String.LocalizationValue.init(stringInterpolation:)();
            v68 = type metadata accessor for Locale();
            (*(*(v68 - 8) + 56))(v10, 1, 1, v68);
            swift_getKeyPath();
            v124 = _swiftEmptyArrayStorage;
            sub_1005B63A0();
            sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
            sub_1005B63F8();
            dispatch thunk of SetAlgebra.init<A>(_:)();
            sub_100280F98();
            v44 = v120;
LABEL_90:
            AttributedString.init<A>(localized:options:table:bundle:locale:comment:including:)();
            goto LABEL_91;
          }

          if (v25 == 3)
          {
            if ((v26 - 2) < 2)
            {
              goto LABEL_70;
            }

            if (!BYTE1(*v15))
            {
              String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
              v41._countAndFlagsBits = 23390;
              v41._object = 0xE200000000000000;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v41);
              v124 = v16;
              String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
              v42._countAndFlagsBits = 0xD00000000000004ELL;
              v42._object = 0x80000001008FD0E0;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v42);
              String.LocalizationValue.init(stringInterpolation:)();
              v43 = type metadata accessor for Locale();
              (*(*(v43 - 8) + 56))(v10, 1, 1, v43);
              swift_getKeyPath();
              v124 = _swiftEmptyArrayStorage;
              sub_1005B63A0();
              sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
              sub_1005B63F8();
              dispatch thunk of SetAlgebra.init<A>(_:)();
              sub_100280F98();
              v44 = v120;
              goto LABEL_90;
            }

            String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
            v95._countAndFlagsBits = 23390;
            v95._object = 0xE200000000000000;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v95);
            v124 = v16;
            String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
            v96._countAndFlagsBits = 0xD00000000000004FLL;
            v96._object = 0x80000001008FD090;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v96);
            String.LocalizationValue.init(stringInterpolation:)();
            v97 = type metadata accessor for Locale();
            (*(*(v97 - 8) + 56))(v10, 1, 1, v97);
            swift_getKeyPath();
            v124 = _swiftEmptyArrayStorage;
            sub_1005B63A0();
            sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
            sub_1005B63F8();
            dispatch thunk of SetAlgebra.init<A>(_:)();
            sub_100280F98();
          }

          else
          {
            if ((v26 - 2) < 2)
            {
              goto LABEL_70;
            }

            if (BYTE1(*v15))
            {
              String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
              v98._countAndFlagsBits = 23390;
              v98._object = 0xE200000000000000;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v98);
              v124 = v16;
              String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
              v99._object = 0x80000001008FCFE0;
              v99._countAndFlagsBits = 0xD000000000000050;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v99);
              String.LocalizationValue.init(stringInterpolation:)();
              v100 = type metadata accessor for Locale();
              (*(*(v100 - 8) + 56))(v10, 1, 1, v100);
              swift_getKeyPath();
              v124 = _swiftEmptyArrayStorage;
              sub_1005B63A0();
              sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
              sub_1005B63F8();
              dispatch thunk of SetAlgebra.init<A>(_:)();
              sub_100280F98();
              goto LABEL_82;
            }

            String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
            v76._countAndFlagsBits = 23390;
            v76._object = 0xE200000000000000;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v76);
            v124 = v16;
            String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
            v77._countAndFlagsBits = 0xD00000000000004FLL;
            v77._object = 0x80000001008FD040;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v77);
            String.LocalizationValue.init(stringInterpolation:)();
            v78 = type metadata accessor for Locale();
            (*(*(v78 - 8) + 56))(v10, 1, 1, v78);
            swift_getKeyPath();
            v124 = _swiftEmptyArrayStorage;
            sub_1005B63A0();
            sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
            sub_1005B63F8();
            dispatch thunk of SetAlgebra.init<A>(_:)();
            sub_100280F98();
          }
        }

        v44 = v120;
        goto LABEL_90;
      }

LABEL_19:
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v31._countAndFlagsBits = 23390;
      v31._object = 0xE200000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v31);
      v124 = v16;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v32._countAndFlagsBits = 0xD000000000000051;
      v32._object = 0x80000001008FCB00;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v32);
      String.LocalizationValue.init(stringInterpolation:)();
      v33 = type metadata accessor for Locale();
      (*(*(v33 - 8) + 56))(v10, 1, 1, v33);
      swift_getKeyPath();
      v124 = _swiftEmptyArrayStorage;
      sub_1005B63A0();
      sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
      sub_1005B63F8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      sub_100280F98();
LABEL_38:
      AttributedString.init<A>(localized:options:table:bundle:locale:comment:including:)();
      goto LABEL_39;
    }

    if (v24)
    {
      if (!*v15)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v51._countAndFlagsBits = 23390;
        v51._object = 0xE200000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v51);
        v124 = v16;
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v52._countAndFlagsBits = 0xD00000000000004DLL;
        v52._object = 0x80000001008FD450;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v52);
        String.LocalizationValue.init(stringInterpolation:)();
        v53 = type metadata accessor for Locale();
        (*(*(v53 - 8) + 56))(v10, 1, 1, v53);
        swift_getKeyPath();
        v124 = _swiftEmptyArrayStorage;
        sub_1005B63A0();
        sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
        sub_1005B63F8();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        sub_100280F98();
        goto LABEL_38;
      }

      if (*v15 == 1)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v38._countAndFlagsBits = 23390;
        v38._object = 0xE200000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v38);
        v124 = v16;
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v39._countAndFlagsBits = 0xD00000000000004ELL;
        v39._object = 0x80000001008FD4A0;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v39);
        String.LocalizationValue.init(stringInterpolation:)();
        v40 = type metadata accessor for Locale();
        (*(*(v40 - 8) + 56))(v10, 1, 1, v40);
        swift_getKeyPath();
        v124 = _swiftEmptyArrayStorage;
        sub_1005B63A0();
        sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
        sub_1005B63F8();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        sub_100280F98();
        goto LABEL_38;
      }
    }

    else
    {
      if (!*v15)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v48._countAndFlagsBits = 23390;
        v48._object = 0xE200000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v48);
        v124 = v16;
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v49._object = 0x80000001008FD4F0;
        v49._countAndFlagsBits = 0xD000000000000050;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v49);
        String.LocalizationValue.init(stringInterpolation:)();
        v50 = type metadata accessor for Locale();
        (*(*(v50 - 8) + 56))(v10, 1, 1, v50);
        swift_getKeyPath();
        v124 = _swiftEmptyArrayStorage;
        sub_1005B63A0();
        sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
        sub_1005B63F8();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        sub_100280F98();
        goto LABEL_38;
      }

      if (*v15 == 1)
      {
        goto LABEL_19;
      }
    }

    AttributedString.init(stringLiteral:)();
LABEL_39:
    v56 = v122;
    v55 = v123;
    v57 = v121;
LABEL_40:
    v58 = *(sub_1000F24EC(&qword_100AE4CB0, &qword_10096AA40) + 48);
    (*(v57 + 32))(v55, v6, v56);
    v59 = type metadata accessor for UUID();
    return (*(*(v59 - 8) + 8))(&v15[v58], v59);
  }

  v17 = v15[8];
  v18 = *(sub_1000F24EC(&qword_100AE4CA8, &unk_100956FF0) + 48);
  v19 = type metadata accessor for UUID();
  (*(*(v19 - 8) + 8))(&v15[v18], v19);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 23390;
  v20._object = 0xE200000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v20);
  v124 = v16;
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  if (v17)
  {
    v21 = 0xD00000000000004CLL;
    v22 = 0x80000001008FD550;
  }

  else
  {
    v21 = 0xD00000000000004BLL;
    v22 = 0x80000001008FD5A0;
  }

  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v21);
  String.LocalizationValue.init(stringInterpolation:)();
  v23 = type metadata accessor for Locale();
  (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
  swift_getKeyPath();
  v124 = _swiftEmptyArrayStorage;
  sub_1005B63A0();
  sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
  sub_1005B63F8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100280F98();
  return AttributedString.init<A>(localized:options:table:bundle:locale:comment:including:)();
}

unint64_t sub_1005B63A0()
{
  result = qword_100AD1358;
  if (!qword_100AD1358)
  {
    type metadata accessor for AttributedString.FormattingOptions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD1358);
  }

  return result;
}

unint64_t sub_1005B63F8()
{
  result = qword_100AD1368;
  if (!qword_100AD1368)
  {
    sub_1000F2A18(&qword_100AD1360, &unk_10093C020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD1368);
  }

  return result;
}

void sub_1005B645C(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v50 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(qword_100AEA2B0, &qword_10095EEB0);
  v48 = *(v10 - 8);
  v49 = v10;
  v46 = *(v48 + 64);
  __chkstk_darwin(v10);
  v47 = &v40 - v11;
  v12 = swift_allocObject();
  *(v12 + 16) = _swiftEmptyArrayStorage;
  v13 = [objc_opt_self() fetchAssetsWithMediaType:1 options:0];
  v14 = dispatch_group_create();
  v55 = [objc_allocWithZone(PHImageRequestOptions) init];
  [v55 setSynchronous:1];
  [v55 setDeliveryMode:1];
  [v55 setNetworkAccessAllowed:1];
  v15 = [v13 countOfAssetsWithMediaType:1];
  if (v15 < 1)
  {

    v39 = v55;
  }

  else if (v54 < 0)
  {
    __break(1u);
  }

  else
  {
    v52 = v13;
    v53 = v12;
    v40 = v9;
    v41 = v7;
    v42 = v5;
    v43 = v6;
    v44 = v3;
    v45 = v2;
    if (v54)
    {
      v16 = v15;
      v51 = objc_opt_self();
      v17 = 0;
      v18 = -v16 % v16;
      do
      {
        aBlock = 0;
        swift_stdlib_random();
        if (v16 <= aBlock * v16)
        {
          v19 = v52;
        }

        else
        {
          v19 = v52;
          if (v18 > aBlock * v16)
          {
            v27 = v52;
            do
            {
              aBlock = 0;
              swift_stdlib_random();
            }

            while (v18 > aBlock * v16);
            v19 = v27;
          }
        }

        ++v17;
        v20 = [v19 objectAtIndex:v40];
        dispatch_group_enter(v14);
        v21 = [v51 defaultManager];
        v22 = swift_allocObject();
        v22[2] = v53;
        v22[3] = v20;
        v22[4] = v14;
        v61 = sub_1005B6E88;
        v62 = v22;
        aBlock = _NSConcreteStackBlock;
        v58 = 1107296256;
        v59 = sub_1005B6D4C;
        v60 = &unk_100A74A90;
        v23 = _Block_copy(&aBlock);

        v24 = v55;
        v25 = v20;
        v26 = v14;

        [v21 requestImageForAsset:v25 targetSize:0 contentMode:v24 options:v23 resultHandler:{1000.0, 1000.0}];
        _Block_release(v23);
      }

      while (v17 != v54);
    }

    sub_100005508();
    v28 = static OS_dispatch_queue.main.getter();
    v30 = v47;
    v29 = v48;
    v31 = v49;
    (*(v48 + 16))(v47, v50, v49);
    v32 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v33 = (v46 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    (*(v29 + 32))(v34 + v32, v30, v31);
    *(v34 + v33) = v53;
    v61 = sub_1005B6E94;
    v62 = v34;
    aBlock = _NSConcreteStackBlock;
    v58 = 1107296256;
    v59 = sub_100006C7C;
    v60 = &unk_100A74AE0;
    v35 = _Block_copy(&aBlock);

    v36 = v40;
    static DispatchQoS.unspecified.getter();
    v56 = _swiftEmptyArrayStorage;
    sub_1000826D8();
    sub_1000F24EC(&unk_100AD6220, &unk_10093C0A0);
    sub_100006610();
    v37 = v42;
    v38 = v45;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v35);

    (*(v44 + 8))(v37, v38);
    (*(v41 + 8))(v36, v43);
  }
}

void sub_1005B6B34(void *a1, uint64_t a2, uint64_t a3, void *a4, NSObject *a5)
{
  if (a1)
  {
    v8 = a1;
    v9 = [a4 localIdentifier];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    swift_beginAccess();
    v13 = *(a3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + 16) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1003E6B30(0, *(v13 + 2) + 1, 1, v13);
      *(a3 + 16) = v13;
    }

    v16 = *(v13 + 2);
    v15 = *(v13 + 3);
    if (v16 >= v15 >> 1)
    {
      v13 = sub_1003E6B30((v15 > 1), v16 + 1, 1, v13);
    }

    *(v13 + 2) = v16 + 1;
    v17 = &v13[3 * v16];
    *(v17 + 4) = v8;
    *(v17 + 5) = v10;
    *(v17 + 6) = v12;
    *(a3 + 16) = v13;
    swift_endAccess();
  }

  else
  {
    sub_1000F24EC(&unk_100AE88B0, &unk_100943ED0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100940080;
    v20 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    if (a2)
    {
      v21 = Dictionary.description.getter();
      v20 = v22;
    }

    else
    {
      v21 = 0;
    }

    v23 = v20;
    String.append(_:)(*&v21);

    *(v19 + 56) = &type metadata for String;
    *(v19 + 32) = 0xD000000000000027;
    *(v19 + 40) = 0x80000001008FD640;
    print(_:separator:terminator:)();
  }

  dispatch_group_leave(a5);
}

double sub_1005B6D4C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a2;
  v4(a2, v5);

  return result;
}

uint64_t sub_1005B6DF8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  sub_1000F24EC(qword_100AEA2B0, &qword_10095EEB0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1005B6E94()
{
  v1 = *(sub_1000F24EC(qword_100AEA2B0, &qword_10095EEB0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1005B6DF8(v0 + v2, v3);
}

uint64_t sub_1005B6F44(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for BlendMode();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1005B6FCC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for BlendMode();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = ((*(*(v8 - 8) + 64) + v11 + (v13 & ~v11)) & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_1005B723C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(type metadata accessor for BlendMode() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = ((*(v10 + 64) + v13 + (v14 & ~v13)) & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

char *sub_1005B7594(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7Journal39FullScreenStateOfMindCollectionViewCell_stateOfMindAsset] = 0;
  v9 = OBJC_IVAR____TtC7Journal39FullScreenStateOfMindCollectionViewCell_stateOfMindView;
  type metadata accessor for StateOfMindAssetGridView(0);
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC7Journal39FullScreenStateOfMindCollectionViewCell_scrollView;
  *&v4[v10] = [objc_allocWithZone(UIScrollView) init];
  v48.receiver = v4;
  v48.super_class = type metadata accessor for FullScreenStateOfMindCollectionViewCell(0);
  v11 = objc_msgSendSuper2(&v48, "initWithFrame:", a1, a2, a3, a4);
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = v11;
  static UIView.Invalidating.subscript.setter();
  v13 = OBJC_IVAR____TtC7Journal39FullScreenStateOfMindCollectionViewCell_scrollView;
  [*&v12[OBJC_IVAR____TtC7Journal39FullScreenStateOfMindCollectionViewCell_scrollView] setTranslatesAutoresizingMaskIntoConstraints:{0, 0x3FF0000000000000, 0x3FF8000000000000}];
  [*&v12[v13] setContentInsetAdjustmentBehavior:2];
  [*&v12[v13] setShowsVerticalScrollIndicator:0];
  [*&v12[OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_maskedContentView] addSubview:*&v12[v13]];
  v14 = *&v12[v13];
  sub_100013178(0.0);

  v15 = OBJC_IVAR____TtC7Journal39FullScreenStateOfMindCollectionViewCell_stateOfMindView;
  [*&v12[OBJC_IVAR____TtC7Journal39FullScreenStateOfMindCollectionViewCell_stateOfMindView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = *&v12[v15];
  v17 = v16[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
  v16[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] = 7;
  v18 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
  if (v16[OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated] != 1)
  {
    v19 = v16;
LABEL_8:
    sub_10047A7F4();
    v16[v18] = 1;

    goto LABEL_9;
  }

  if (v17 > 3 && v17 > 6)
  {

    goto LABEL_9;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v21 = v16;

  if ((v20 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  [*&v12[v13] addSubview:*&v12[v15]];
  v22 = objc_opt_self();
  sub_1000F24EC(&unk_100AD4780, &unk_100941070);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10094F800;
  v24 = [*&v12[v15] topAnchor];
  v25 = [*&v12[v13] contentLayoutGuide];
  v26 = [v25 topAnchor];

  v27 = [v24 constraintEqualToAnchor:v26];
  *(v23 + 32) = v27;
  v28 = [*&v12[v15] leadingAnchor];
  v29 = [*&v12[v13] contentLayoutGuide];
  v30 = [v29 leadingAnchor];

  v31 = [v28 constraintEqualToAnchor:v30];
  *(v23 + 40) = v31;
  v32 = [*&v12[v15] trailingAnchor];
  v33 = [*&v12[v13] contentLayoutGuide];
  v34 = [v33 trailingAnchor];

  v35 = [v32 constraintEqualToAnchor:v34];
  *(v23 + 48) = v35;
  v36 = [*&v12[v15] bottomAnchor];
  v37 = [*&v12[v13] contentLayoutGuide];
  v38 = [v37 bottomAnchor];

  v39 = [v36 constraintEqualToAnchor:v38];
  *(v23 + 56) = v39;
  v40 = [*&v12[v15] widthAnchor];
  v41 = [*&v12[v13] widthAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];

  *(v23 + 64) = v42;
  v43 = [*&v12[v15] heightAnchor];
  v44 = [*&v12[v13] heightAnchor];
  v45 = [v43 constraintGreaterThanOrEqualToAnchor:v44];

  *(v23 + 72) = v45;
  sub_1001AD130();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v22 activateConstraints:isa];

  return v12;
}

void sub_1005B7C08()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal39FullScreenStateOfMindCollectionViewCell_scrollView);
}

id sub_1005B7C58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenStateOfMindCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FullScreenStateOfMindCollectionViewCell(uint64_t a1)
{
  result = qword_100AEA378;
  if (!qword_100AEA378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1005B7D94()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7Journal39FullScreenStateOfMindCollectionViewCell_stateOfMindView);
  v2 = v1;
  return v1;
}

void *sub_1005B7DC8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7Journal39FullScreenStateOfMindCollectionViewCell_stateOfMindAsset);
  v2 = v1;
  return v1;
}

void sub_1005B7DFC()
{
  *(v0 + OBJC_IVAR____TtC7Journal39FullScreenStateOfMindCollectionViewCell_stateOfMindAsset) = 0;
  v1 = OBJC_IVAR____TtC7Journal39FullScreenStateOfMindCollectionViewCell_stateOfMindView;
  type metadata accessor for StateOfMindAssetGridView(0);
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC7Journal39FullScreenStateOfMindCollectionViewCell_scrollView;
  *(v0 + v2) = [objc_allocWithZone(UIScrollView) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1005B7EB4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v156 = type metadata accessor for ColorRenderingMode();
  v155 = *(v156 - 8);
  __chkstk_darwin(v156);
  v154 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for StaticWaveformView(0);
  v128 = *(v160 - 8);
  __chkstk_darwin(v160);
  v127 = v7;
  v130 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for NamedCoordinateSpace();
  __chkstk_darwin(v125);
  v124 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for DragGesture();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v131 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_1000F24EC(&qword_100AEA508, &qword_10095F1B0);
  v136 = *(v138 - 8);
  __chkstk_darwin(v138);
  v134 = &v113 - v10;
  v122 = type metadata accessor for GeometryProxy();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v117 = v11;
  v119 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_1000F24EC(&qword_100AEA510, &qword_10095F1B8);
  __chkstk_darwin(v126);
  v158 = (&v113 - v12);
  v129 = sub_1000F24EC(&qword_100AEA518, &qword_10095F1C0);
  __chkstk_darwin(v129);
  v151 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v148 = &v113 - v15;
  v16 = sub_1000F24EC(&qword_100AEA520, &qword_10095F1C8);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v113 - v18;
  v20 = sub_1000F24EC(&qword_100AEA528, &qword_10095F1D0);
  __chkstk_darwin(v20 - 8);
  v141 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v142 = &v113 - v23;
  __chkstk_darwin(v24);
  v139 = (&v113 - v25);
  __chkstk_darwin(v26);
  v28 = &v113 - v27;
  v143 = sub_1000F24EC(&qword_100AEA530, &qword_10095F1D8);
  __chkstk_darwin(v143);
  v30 = &v113 - v29;
  v150 = sub_1000F24EC(&qword_100AEA538, &qword_10095F1E0);
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v147 = &v113 - v31;
  v145 = sub_1000F24EC(&qword_100AEA540, &qword_10095F1E8);
  __chkstk_darwin(v145);
  v153 = &v113 - v32;
  v146 = sub_1000F24EC(&qword_100AEA548, &qword_10095F1F0);
  __chkstk_darwin(v146);
  v152 = &v113 - v33;
  v123 = a1;
  GeometryProxy.size.getter();
  v159 = a2;
  sub_1000AAAE0(v34);
  v36 = v35;
  v161 = v37;
  v39 = v38;
  *a3 = static Alignment.center.getter();
  a3[1] = v40;
  v157 = a3;
  *v30 = static VerticalAlignment.center.getter();
  *(v30 + 1) = 0;
  v144 = v30;
  v30[16] = 0;
  *v28 = static VerticalAlignment.center.getter();
  *(v28 + 1) = 0;
  v28[16] = 0;
  v120 = sub_1000F24EC(&qword_100AEA550, &qword_10095F1F8);
  v41 = *(v120 + 44);
  v140 = v28;
  v137 = v16;
  v135 = v17;
  v114 = v19;
  v118 = v39;
  if (v39 < 1)
  {
    (*(v17 + 56))(&v28[v41], 1, 1, v16);
  }

  else
  {
    *&v162 = 0;
    *(&v162 + 1) = v39;
    swift_getKeyPath();
    *(swift_allocObject() + 16) = v36;
    sub_1000F24EC(&qword_100ADD6B8, &qword_10094DBF0);
    sub_1000F24EC(&qword_100AEA560, &qword_10095F230);
    sub_1000AAF00();
    sub_1000AAFE0();
    ForEach<>.init(_:id:content:)();
    (*(v17 + 32))(&v28[v41], v19, v16);
    (*(v17 + 56))(&v28[v41], 0, 1, v16);
  }

  v42 = static VerticalAlignment.center.getter();
  v43 = v158;
  *v158 = v42;
  v43[1] = 0;
  *(v43 + 16) = 0;
  v44 = v43;
  v45 = v161;
  v46 = (*(v161 + 16) + 1);
  v47 = (v159 + *(v160 + 28));
  v48 = v47[3];
  v49 = v47[4];
  sub_10000CA14(v47, v48);
  v50 = (*(v49 + 24))(v48, v49) * v46;
  v51 = COERCE_DOUBLE(sub_1000AB2E4(v45));
  if (v52)
  {
    v53 = 1.0;
  }

  else
  {
    v53 = v51;
  }

  v116 = v44 + *(sub_1000F24EC(&qword_100AEA558, &unk_10095F200) + 44);
  v54 = *(v45 + 16);
  *&v162 = 0;
  *(&v162 + 1) = v54;
  KeyPath = swift_getKeyPath();
  v55 = v121;
  v56 = v119;
  v57 = v122;
  (*(v121 + 16))(v119, v123, v122);
  v58 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v59 = (v117 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
  v61 = (v60 + 15) & 0xFFFFFFFFFFFFFFF8;
  v62 = swift_allocObject();
  (*(v55 + 32))(v62 + v58, v56, v57);
  *(v62 + v59) = v53;
  *(v62 + v60) = v45;
  *(v62 + v61) = v50;
  *(v62 + ((v61 + 15) & 0xFFFFFFFFFFFFFFF8)) = v36;

  v63 = sub_1000F24EC(&qword_100ADD6B8, &qword_10094DBF0);
  v64 = sub_1000F24EC(&qword_100AEA560, &qword_10095F230);
  v65 = sub_1000AAF00();
  sub_1000AAFE0();
  v66 = v116;
  v121 = v63;
  v123 = v64;
  v122 = v65;
  ForEach<>.init(_:id:content:)();
  v67 = static Animation.default.getter();
  v68 = v66 + *(sub_1000F24EC(&qword_100AEA590, &qword_10095F248) + 36);
  *v68 = v67;
  *(v68 + 8) = v50;
  *&v162 = 0x6D726F6665766177;
  *(&v162 + 1) = 0xE800000000000000;
  static CoordinateSpaceProtocol<>.named<A>(_:)();
  v69 = v131;
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v70 = v159;
  v71 = v130;
  sub_1000AAA14(v159, v130);
  v72 = (*(v128 + 80) + 16) & ~*(v128 + 80);
  v73 = (v127 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  sub_1000AAA78(v71, v74 + v72, type metadata accessor for StaticWaveformView);
  *(v74 + v73) = v45;
  *(v74 + ((v73 + 15) & 0xFFFFFFFFFFFFFFF8)) = v36;
  sub_1005B9DA4(&qword_100AEA598, &type metadata accessor for DragGesture, &protocol conformance descriptor for DragGesture);
  sub_1005B9DA4(&qword_100AEA5A0, &type metadata accessor for DragGesture.Value, &protocol conformance descriptor for DragGesture.Value);

  v75 = v134;
  v76 = v133;
  Gesture<>.onChanged(_:)();

  (*(v132 + 8))(v69, v76);
  static GestureMask.all.getter();
  sub_10000B58C(&qword_100AEA5A8, &qword_100AEA510, &qword_10095F1B8, &protocol conformance descriptor for HStack<A>);
  sub_10000B58C(&qword_100AEA5B0, &qword_100AEA508, &qword_10095F1B0, &protocol conformance descriptor for _ChangedGesture<A>);
  v77 = v148;
  v78 = v138;
  v79 = v158;
  View.gesture<A>(_:including:)();
  (*(v136 + 8))(v75, v78);
  sub_100004F84(v79, &qword_100AEA510, &qword_10095F1B8);
  LOBYTE(v79) = *(v70 + *(v160 + 20));
  *(v77 + *(sub_1000F24EC(&qword_100AEA5B8, &qword_10095F250) + 36)) = v79;
  v80 = (v77 + *(v129 + 36));
  *v80 = 0x6D726F6665766177;
  v80[1] = 0xE800000000000000;
  v81 = static VerticalAlignment.center.getter();
  v82 = v139;
  *v139 = v81;
  *(v82 + 8) = 0;
  *(v82 + 16) = 0;
  v83 = *(v120 + 44);
  if (v118 < 1)
  {
    v88 = 1;
    v87 = v137;
    v85 = v135;
  }

  else
  {
    *&v162 = 0;
    *(&v162 + 1) = v118;
    swift_getKeyPath();
    *(swift_allocObject() + 16) = v36;
    v84 = v114;
    ForEach<>.init(_:id:content:)();
    v85 = v135;
    v86 = v84;
    v87 = v137;
    (*(v135 + 32))(v82 + v83, v86, v137);
    v88 = 0;
  }

  (*(v85 + 56))(v82 + v83, v88, 1, v87);
  v89 = sub_1000F24EC(&qword_100AEA5C0, &qword_10095F258);
  v90 = v144;
  v91 = &v144[*(v89 + 44)];
  v92 = v140;
  v93 = v142;
  sub_1000AB3A8(v140, v142);
  v94 = v151;
  sub_1000D6494(v77, v151);
  v95 = v141;
  sub_1000AB3A8(v82, v141);
  sub_1000AB3A8(v93, v91);
  v96 = sub_1000F24EC(&qword_100AEA5C8, &qword_10095F260);
  sub_1000D6494(v94, v91 + *(v96 + 48));
  sub_1000AB3A8(v95, v91 + *(v96 + 64));
  sub_100004F84(v82, &qword_100AEA528, &qword_10095F1D0);
  sub_100004F84(v77, &qword_100AEA518, &qword_10095F1C0);
  sub_100004F84(v92, &qword_100AEA528, &qword_10095F1D0);
  sub_100004F84(v95, &qword_100AEA528, &qword_10095F1D0);
  sub_100004F84(v94, &qword_100AEA518, &qword_10095F1C0);
  sub_100004F84(v93, &qword_100AEA528, &qword_10095F1D0);
  v97 = v155;
  v98 = v154;
  v99 = v156;
  (*(v155 + 104))(v154, enum case for ColorRenderingMode.nonLinear(_:), v156);
  sub_10000B58C(&qword_100AEA5D0, &qword_100AEA530, &qword_10095F1D8, &protocol conformance descriptor for HStack<A>);
  v100 = v147;
  View.drawingGroup(opaque:colorMode:)();
  (*(v97 + 8))(v98, v99);
  sub_100004F84(v90, &qword_100AEA530, &qword_10095F1D8);
  static Alignment.center.getter();
  v101 = *(sub_1000F24EC(&qword_100AEA5D8, &qword_10095F268) + 44);
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v102 = v153;
  (*(v149 + 32))(v153, v100, v150);
  v103 = (v102 + *(v145 + 36));
  v104 = v167;
  v103[4] = v166;
  v103[5] = v104;
  v103[6] = v168;
  v105 = v163;
  *v103 = v162;
  v103[1] = v105;
  v106 = v165;
  v103[2] = v164;
  v103[3] = v106;
  v107 = swift_getKeyPath();
  v108 = v152;
  v109 = &v152[*(v146 + 36)];
  v110 = *(sub_1000F24EC(&qword_100AE1570, &qword_10095F2A0) + 28);
  v111 = enum case for LayoutDirection.leftToRight(_:);
  v112 = type metadata accessor for LayoutDirection();
  (*(*(v112 - 8) + 104))(v109 + v110, v111, v112);
  *v109 = v107;
  sub_100021CEC(v102, v108, &qword_100AEA540, &qword_10095F1E8);
  sub_100021CEC(v108, v157 + v101, &qword_100AEA548, &qword_10095F1F0);
}

uint64_t sub_1005B91D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a5@<D1>)
{
  v43 = a3;
  v42 = type metadata accessor for ColorResource();
  v9 = *(v42 - 8);
  __chkstk_darwin(v42);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Capsule();
  __chkstk_darwin(v12 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F24EC(&qword_100AEA588, &qword_10095F240);
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  v41 = sub_1000F24EC(&qword_100AEA578, &qword_10095F238);
  __chkstk_darwin(v41);
  v19 = &v40 - v18;
  v20 = *a1;
  GeometryProxy.size.getter();
  if (v20 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v20 >= *(a2 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v21 = enum case for RoundedCornerStyle.continuous(_:);
  v22 = type metadata accessor for RoundedCornerStyle();
  (*(*(v22 - 8) + 104))(v14, v21, v22);
  if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a5 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a5 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v20 < a5)
  {
    if (qword_100AD0BE0 == -1)
    {
LABEL_8:
      v23 = qword_100B312B0;
      goto LABEL_12;
    }

LABEL_18:
    swift_once();
    goto LABEL_8;
  }

  if (qword_100AD0BF8 != -1)
  {
    swift_once();
  }

  v23 = qword_100B312F8;
LABEL_12:
  v24 = v42;
  v25 = sub_10000617C(v42, v23);
  (*(v9 + 16))(v11, v25, v24);
  v26 = Color.init(_:)();
  sub_1000AAA78(v14, v17, &type metadata accessor for Capsule);
  *&v17[*(v15 + 52)] = v26;
  *&v17[*(v15 + 56)] = 256;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_100021CEC(v17, v19, &qword_100AEA588, &qword_10095F240);
  v27 = &v19[*(v41 + 36)];
  v28 = v45;
  *v27 = v44;
  *(v27 + 1) = v28;
  *(v27 + 2) = v46;
  LOBYTE(v26) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = v43;
  sub_100021CEC(v19, v43, &qword_100AEA578, &qword_10095F238);
  result = sub_1000F24EC(&qword_100AEA560, &qword_10095F230);
  v39 = v37 + *(result + 36);
  *v39 = v26;
  *(v39 + 8) = v30;
  *(v39 + 16) = v32;
  *(v39 + 24) = v34;
  *(v39 + 32) = v36;
  *(v39 + 40) = 0;
  return result;
}

uint64_t sub_1005B9628(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (a1 + 3.0) * *(a4 + 16);
  DragGesture.Value.location.getter();
  v7 = v6 / v5;
  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  if (v7 <= 1.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1.0;
  }

  v9 = (a3 + *(type metadata accessor for StaticWaveformView(0) + 28));
  v10 = v9[3];
  v11 = v9[4];
  sub_10000CA14(v9, v10);
  return (*(v11 + 16))(v10, v11, v8);
}

uint64_t sub_1005B96D0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ColorResource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = enum case for RoundedCornerStyle.continuous(_:);
  v8 = type metadata accessor for RoundedCornerStyle();
  (*(*(v8 - 8) + 104))(a1, v7, v8);
  if (qword_100AD0BF8 != -1)
  {
    swift_once();
  }

  v9 = sub_10000617C(v3, qword_100B312F8);
  (*(v4 + 16))(v6, v9, v3);
  v10 = Color.init(_:)();
  v11 = sub_1000F24EC(&qword_100AEA588, &qword_10095F240);
  *(a1 + *(v11 + 52)) = v10;
  *(a1 + *(v11 + 56)) = 256;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v12 = (a1 + *(sub_1000F24EC(&qword_100AEA578, &qword_10095F238) + 36));
  v13 = v24[1];
  *v12 = v24[0];
  v12[1] = v13;
  v12[2] = v24[2];
  LOBYTE(v10) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  result = sub_1000F24EC(&qword_100AEA560, &qword_10095F230);
  v23 = a1 + *(result + 36);
  *v23 = v10;
  *(v23 + 8) = v15;
  *(v23 + 16) = v17;
  *(v23 + 24) = v19;
  *(v23 + 32) = v21;
  *(v23 + 40) = 0;
  return result;
}

uint64_t sub_1005B9908()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1005B997C(uint64_t a1)
{
  result = sub_1005B9DA4(&qword_100AEA458, type metadata accessor for $s7Journal0029StaticWaveformViewswift_tAFJhfMX117_0_33_A61E944E790334B8290030312B43B0257PreviewfMf_15PreviewRegistryfMu_.MockWaveformProviding, &unk_10095F0FC);
  *(a1 + 8) = result;
  return result;
}

void sub_1005B99FC(uint64_t a1)
{
  sub_1005B9AA0(319);
  if (v1 <= 0x3F)
  {
    sub_1005B9AF8();
    if (v2 <= 0x3F)
    {
      sub_1005B9B48();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1005B9AA0(uint64_t a1)
{
  if (!qword_100AD22C8)
  {
    type metadata accessor for LayoutDirection();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_100AD22C8);
    }
  }
}

void sub_1005B9AF8()
{
  if (!qword_100AEA4C8)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100AEA4C8);
    }
  }
}

unint64_t sub_1005B9B48()
{
  result = qword_100AEA4D0;
  if (!qword_100AEA4D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100AEA4D0);
  }

  return result;
}

void sub_1005B9BAC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for StaticWaveformView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1005B7EB4(a1, v6, a2);
}

uint64_t sub_1005B9C2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for GeometryProxy() - 8);
  v6 = (((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v2 + v6);
  v8 = *(v2 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1005B91D0(a1, v7, a2, v8);
}

uint64_t sub_1005B9CFC(uint64_t a1)
{
  v3 = *(type metadata accessor for StaticWaveformView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1005B9628(v7, a1, v1 + v4, v6);
}

uint64_t sub_1005B9DA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005B9E0C()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AEA5F0);
  sub_10000617C(v0, qword_100AEA5F0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1005B9E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a1;
  v4[4] = v3;
  v6 = type metadata accessor for URL();
  v4[5] = v6;
  v4[6] = *(v6 - 8);
  v4[7] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[8] = v7;
  v4[9] = v9;

  return _swift_task_switch(sub_1005B9F8C, v7, v9);
}

uint64_t sub_1005B9F8C()
{
  v1 = v0[4];
  v2 = *(v1 + qword_100AEA618);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[11] = v4;
  v5 = sub_100226C08();
  *v4 = v0;
  v4[1] = sub_1005BA088;

  return CKDatabase.configuredWith<A>(configuration:group:body:)(v0 + 2, v2, 0, &unk_10095F2E0, v3, v5);
}

uint64_t sub_1005BA088()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1005BA5EC;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1005BA1A4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1005BA1A4()
{
  v1 = v0[2];
  if (!CKRecord.subscript.getter())
  {
    goto LABEL_6;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    swift_unknownObjectRelease();
LABEL_6:
    if (qword_100AD0058 != -1)
    {
      swift_once();
    }

    v12 = v0[4];
    v13 = type metadata accessor for Logger();
    sub_10000617C(v13, qword_100AEA5F0);
    v14 = v12;
    v15 = v1;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[4];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412546;
      v21 = *(v18 + qword_100AEA608);
      *(v19 + 4) = v21;
      *(v19 + 12) = 2112;
      *(v19 + 14) = v15;
      *v20 = v21;
      v20[1] = v15;
      v22 = v15;
      v23 = v21;
      _os_log_impl(&_mh_execute_header, v16, v17, "Error getting JournalEntryAssetFileAttachment.file as CKAsset for requested id %@. Record: %@", v19, 0x16u);
      sub_1000F24EC(&unk_100AD4BB0, &unk_100941E50);
      swift_arrayDestroy();
    }

    sub_1005BA9C8();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
    goto LABEL_11;
  }

  v3 = [v2 fileURL];
  if (v3)
  {
    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[5];
    v7 = v0[3];
    v8 = v3;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    swift_unknownObjectRelease();

    v9 = sub_1000F24EC(&qword_100AE5DF8, &unk_10095F2F0);
    v10 = *(v9 + 48);
    (*(v5 + 32))(v7, v4, v6);
    *(v7 + v10) = v1;
    (*(*(v9 - 8) + 56))(v7, 0, 1, v9);

    v11 = v0[1];
    goto LABEL_12;
  }

  if (qword_100AD0058 != -1)
  {
    swift_once();
  }

  v26 = v0[4];
  v27 = type metadata accessor for Logger();
  sub_10000617C(v27, qword_100AEA5F0);
  v28 = v26;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = v0[4];
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    v34 = *(v31 + qword_100AEA608);
    *(v32 + 4) = v34;
    *v33 = v34;
    v35 = v34;
    _os_log_impl(&_mh_execute_header, v29, v30, "ckAsset.fileURL is nil for requested recordID %@", v32, 0xCu);
    sub_10012B714(v33);
  }

  sub_1005BA9C8();
  swift_allocError();
  *v36 = 1;
  swift_willThrow();
  swift_unknownObjectRelease();
LABEL_11:

  v11 = v0[1];
LABEL_12:

  return v11();
}

uint64_t sub_1005BA5EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005BA658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return _swift_task_switch(sub_1005BA67C, 0, 0);
}

uint64_t sub_1005BA67C()
{
  v1 = v0[20];
  v2 = *(v0[21] + qword_100AEA608);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10022663C;
  v3 = swift_continuation_init();
  v0[17] = sub_1000F24EC(&qword_100AD9578, &qword_100948B88);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10039677C;
  v0[13] = &unk_100A74CE0;
  v0[14] = v3;
  [v1 fetchRecordWithID:v2 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

void sub_1005BA7E0()
{
  v1 = *(v0 + qword_100AEA618);
}

id sub_1005BA830()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AttachmentDownloadOperation(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1005BA868(uint64_t a1)
{
  v2 = *(a1 + qword_100AEA618);
}

uint64_t type metadata accessor for AttachmentDownloadOperation(uint64_t a1)
{
  result = qword_100AEA648;
  if (!qword_100AEA648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005BA918(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100032ECC;

  return sub_1005BA658(a1, a2, v6);
}

unint64_t sub_1005BA9C8()
{
  result = qword_100AEA738;
  if (!qword_100AEA738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA738);
  }

  return result;
}

unint64_t sub_1005BAA30()
{
  result = qword_100AEA740;
  if (!qword_100AEA740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA740);
  }

  return result;
}

uint64_t sub_1005BAA94(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1005BAAF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

double sub_1005BAB58(void *a1, unsigned int a2, uint64_t a3, char a4)
{
  v8 = mach_absolute_time();
  v9 = 0.0;
  v10 = 0.0;
  if (a4)
  {
    if (a3)
    {
      v11 = v8 >= a3;
      v12 = v8 - a3;
      if (v12 != 0 && v11)
      {
        [objc_opt_self() secondsForHostTime:v12];
        v10 = v13;
      }
    }
  }

  if (a1)
  {
    v14 = a1;
    [v14 sampleRate];
    if (v15 <= 0.0)
    {
    }

    else
    {
      [v14 sampleRate];
      v17 = v16;

      v9 = a2 / v17;
    }
  }

  return v10 + v9;
}

void sub_1005BAC20(char a1, void *a2, void *a3)
{
  if (!a2 || !a1)
  {
    goto LABEL_7;
  }

  v6 = *v3;
  if (!*v3)
  {
    v7 = a2;
    v8 = a3;
    a2 = v7;
    v6 = a3;
  }

  *v3 = v6;
  v9 = a2;
  v10 = a3;
  v11 = [v9 frameLength];
  v12 = *(v3 + 8);
  v13 = __CFADD__(v12, v11);
  v14 = v12 + v11;
  if (!v13)
  {
    *(v3 + 8) = v14;
    v15 = [v10 hostTime];

    *(v3 + 16) = v15;
LABEL_7:
    *(v3 + 24) = a1 == 1;
    return;
  }

  __break(1u);
}

double sub_1005BACE0(uint64_t a1, void *a2, unsigned int a3, uint64_t a4, char a5)
{
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0.0;
  v14 = 0.0;
  if ((a5 & 1) != 0 && a4)
  {
    v15 = CACurrentMediaTime();
    Date.init()();
    Date.timeIntervalSince(_:)();
    v17 = v16;
    (*(v10 + 8))(v12, v9);
    [objc_opt_self() secondsForHostTime:a4];
    v14 = v15 + v17 - v18;
  }

  if (a2)
  {
    v19 = a2;
    [v19 sampleRate];
    if (v20 <= 0.0)
    {
    }

    else
    {
      [v19 sampleRate];
      v22 = v21;

      v13 = a3 / v22;
    }
  }

  return v14 + v13;
}

uint64_t sub_1005BAF0C(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t *a4, void *a5)
{
  a2(0);
  result = a3();
  *a4 = result;
  *a5 = v9;
  return result;
}

uint64_t sub_1005BAF5C()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AEA748);
  sub_10000617C(v0, qword_100AEA748);
  return Logger.init(subsystem:category:)();
}

id sub_1005BAFDC()
{
  type metadata accessor for SessionActor();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = [objc_opt_self() sharedInstance];
  *(v0 + 112) = result;
  qword_100AEA760 = v0;
  return result;
}

uint64_t sub_1005BB03C()
{
  type metadata accessor for MainActor();
  v0[2] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_1005BB0D0, v2, v1);
}

uint64_t sub_1005BB0D0()
{
  if (qword_100AD0090 != -1)
  {
    swift_once();
  }

  v1 = qword_100AEA760;
  *(v0 + 40) = qword_100AEA760;

  return _swift_task_switch(sub_1005BB168, v1, 0);
}

uint64_t sub_1005BB168()
{
  sub_1005BB64C();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return _swift_task_switch(sub_1001F15C0, v1, v2);
}

uint64_t sub_1005BB1CC()
{
  type metadata accessor for MainActor();
  v0[2] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_1005BB260, v2, v1);
}

uint64_t sub_1005BB260()
{
  if (qword_100AD0090 != -1)
  {
    swift_once();
  }

  v1 = qword_100AEA760;
  *(v0 + 40) = qword_100AEA760;

  return _swift_task_switch(sub_1005BB2F8, v1, 0);
}

uint64_t sub_1005BB2F8(uint64_t a1, uint64_t a2)
{
  sub_1005BB368(AVAudioSessionCategoryPlayback, a2);
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);

  return _swift_task_switch(sub_1005BB8F4, v3, v4);
}

double sub_1005BB368(uint64_t a1, uint64_t a2)
{
  v4 = 524292;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {

    v11 = &AVAudioSessionModeSpokenAudio;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v11 = &AVAudioSessionModeDefault;
    if (v10)
    {
      v11 = &AVAudioSessionModeSpokenAudio;
    }

    else
    {
      v4 = 0;
    }
  }

  v12 = *v11;
  v13 = *(v2 + 112);
  v29 = 0;
  v14 = [v13 setCategory:a1 mode:v12 options:v4 error:&v29];
  v15 = v29;
  if (v14 && (v29 = 0, v16 = v15, v17 = [v13 setActive:1 error:&v29], v15 = v29, v17))
  {
    v18 = v29;
  }

  else
  {
    v20 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100AD0088 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000617C(v21, qword_100AEA748);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v29 = v25;
      *v24 = 136315138;
      swift_getErrorValue();
      v26 = Error.localizedDescription.getter();
      v28 = sub_100008458(v26, v27, &v29);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to activate audio session: %s", v24, 0xCu);
      sub_10000BA7C(v25);
    }

    else
    {
    }
  }

  return result;
}

double sub_1005BB64C()
{
  v1 = *(v0 + 112);
  v17 = 0;
  v2 = [v1 setCategory:AVAudioSessionCategoryPlayback mode:AVAudioSessionModeDefault options:1 error:&v17];
  v3 = v17;
  if (v2 && (v17 = 0, v4 = v3, v5 = [v1 setActive:0 error:&v17], v3 = v17, v5))
  {

    v6 = v3;
  }

  else
  {
    v8 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100AD0088 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000617C(v9, qword_100AEA748);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = Error.localizedDescription.getter();
      v16 = sub_100008458(v14, v15, &v17);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to deactivate audio session: %s", v12, 0xCu);
      sub_10000BA7C(v13);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1005BB8F8()
{
  v0 = sub_1000F24EC(&qword_100ADA618, &qword_10094A368);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_1000F24EC(&qword_100ADA620, &unk_10095F540);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for DateComponents();
  sub_100006118(v6, qword_100B2FCA8);
  sub_10000617C(v6, qword_100B2FCA8);
  v7 = type metadata accessor for Calendar();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = type metadata accessor for TimeZone();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  return DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
}

uint64_t sub_1005BBAF0(uint64_t a1, char a2)
{
  v5 = type metadata accessor for Calendar.Identifier();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC7Journal18MindfulnessManager_startDate;
  v10 = type metadata accessor for Date();
  v11 = *(*(v10 - 8) + 56);
  v11(v2 + v9, 1, 1, v10);
  v11(v2 + OBJC_IVAR____TtC7Journal18MindfulnessManager_endDate, 1, 1, v10);
  *(v2 + OBJC_IVAR____TtC7Journal18MindfulnessManager_pauseTask) = 0;
  v12 = OBJC_IVAR____TtC7Journal18MindfulnessManager_backgroundingSemaphore;
  *(v2 + v12) = dispatch_semaphore_create(0);
  Logger.init(subsystem:category:)();
  (*(v6 + 104))(v8, enum case for Calendar.Identifier.gregorian(_:), v5);
  Calendar.init(identifier:)();
  (*(v6 + 8))(v8, v5);
  *(v2 + OBJC_IVAR____TtC7Journal18MindfulnessManager_shouldShowTTRAlert) = 0;
  v13 = (v2 + OBJC_IVAR____TtC7Journal18MindfulnessManager_ttrErrorDescription);
  *v13 = 0;
  v13[1] = 0;
  sub_1000082B4(a1, v2 + 16, &qword_100AEAA10, &unk_10095F530);
  v14 = &NSExtensionHostDidEnterBackgroundNotification;
  if ((a2 & 1) == 0)
  {
    v14 = &UISceneDidEnterBackgroundNotification;
  }

  v15 = *v14;
  v16 = objc_opt_self();
  v17 = [v16 defaultCenter];
  [v17 addObserver:v2 selector:"appDidEnterBackground:" name:v15 object:0];

  v18 = [v16 defaultCenter];
  [v18 addObserver:v2 selector:"appWillBeTerminated" name:UIApplicationWillTerminateNotification object:0];

  v19 = [v16 defaultCenter];
  v20 = qword_100ACFD40;

  if (v20 != -1)
  {
    swift_once();
  }

  [v19 addObserver:v2 selector:"userBecameActive" name:qword_100B2F8B0 object:0];

  v21 = [v16 defaultCenter];
  v22 = qword_100ACFD48;

  if (v22 != -1)
  {
    swift_once();
  }

  [v21 addObserver:v2 selector:"userBecameInactive" name:qword_100B2F8B8 object:0];

  sub_100004F84(a1, &qword_100AEAA10, &unk_10095F530);
  return v2;
}

double sub_1005BBEE8()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  Notification.object.getter();
  if (v25)
  {
    sub_100511110();
    if (swift_dynamicCast())
    {
      v9 = v23;
      v10 = [v23 session];
      v11 = [v10 role];

      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
      if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
      {
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v21 & 1) == 0)
        {
          return result;
        }
      }
    }
  }

  else
  {
    sub_100004F84(v24, &qword_100AD13D0, &unk_100942DB0);
  }

  v16 = OBJC_IVAR____TtC7Journal18MindfulnessManager_startDate;
  swift_beginAccess();
  sub_1000082B4(v1 + v16, v8, &unk_100AD4790, &unk_10093B4E0);
  LODWORD(v16) = (*(v3 + 48))(v8, 1, v2);
  sub_100004F84(v8, &unk_100AD4790, &unk_10093B4E0);
  if (v16 != 1)
  {
    if (qword_100ACFED0 != -1)
    {
      swift_once();
    }

    v18 = qword_100B2FA60;
    if (!swift_unknownObjectWeakLoadStrong() || (v19 = *(v18 + 24), ObjectType = swift_getObjectType(), LOBYTE(v19) = sub_100885D80(ObjectType, v19), swift_unknownObjectRelease(), (v19 & 1) == 0))
    {
      static Date.now.getter();
      sub_1005BD558(v5, 60.0);
      (*(v3 + 8))(v5, v2);
    }
  }

  return result;
}

double sub_1005BC31C()
{
  v1 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR____TtC7Journal18MindfulnessManager_startDate;
  swift_beginAccess();
  sub_1000082B4(v0 + v7, v6, &unk_100AD4790, &unk_10093B4E0);
  v8 = type metadata accessor for Date();
  LODWORD(v7) = (*(*(v8 - 8) + 48))(v6, 1, v8);
  sub_100004F84(v6, &unk_100AD4790, &unk_10093B4E0);
  if (v7 != 1)
  {
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    type metadata accessor for MainActor();

    v11 = v0;
    v12 = static MainActor.shared.getter();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = v11;
    sub_1003E9628(0, 0, v3, &unk_10095F588, v13);
  }

  return result;
}

uint64_t sub_1005BC52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Date();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_1005BC620, v7, v6);
}

uint64_t sub_1005BC620(__n128 a1)
{
  static Date.now.getter();
  v2 = swift_task_alloc();
  *(v1 + 72) = v2;
  *v2 = v1;
  v2[1] = sub_1005BC6C4;
  v3 = *(v1 + 40);

  return sub_1005BED00(v3, 0);
}

uint64_t sub_1005BC6C4()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return _swift_task_switch(sub_1005C0820, v6, v5);
}

void sub_1005BC860()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  v8 = OBJC_IVAR____TtC7Journal18MindfulnessManager_startDate;
  swift_beginAccess();
  sub_1000082B4(v0 + v8, v7, &unk_100AD4790, &unk_10093B4E0);
  LODWORD(v8) = (*(v2 + 48))(v7, 1, v1);
  sub_100004F84(v7, &unk_100AD4790, &unk_10093B4E0);
  if (v8 == 1)
  {
    static Date.now.getter();
    sub_1005BD218(v4);
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      static Date.now.getter();
      v13 = Date.debugDescription.getter();
      v15 = v14;
      (*(v2 + 8))(v4, v1);
      v16 = sub_100008458(v13, v15, &v17);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "User became active at %s", v11, 0xCu);
      sub_10000BA7C(v12);
    }

    sub_1005BEA54();
  }
}

double sub_1005BCB28()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
  v12 = OBJC_IVAR____TtC7Journal18MindfulnessManager_startDate;
  swift_beginAccess();
  sub_1000082B4(v0 + v12, v11, &unk_100AD4790, &unk_10093B4E0);
  LODWORD(v12) = (*(v6 + 48))(v11, 1, v5);
  sub_100004F84(v11, &unk_100AD4790, &unk_10093B4E0);
  if (v12 != 1)
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27 = v4;
      v28 = v17;
      v18 = v17;
      *v16 = 136315138;
      static Date.now.getter();
      v19 = Date.debugDescription.getter();
      v21 = v20;
      (*(v6 + 8))(v8, v5);
      v22 = sub_100008458(v19, v21, &v28);

      *(v16 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v14, v15, "User became inactive at %s", v16, 0xCu);
      sub_10000BA7C(v18);
      v4 = v27;
    }

    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 56))(v4, 1, 1, v23);
    type metadata accessor for MainActor();

    v24 = static MainActor.shared.getter();
    v25 = swift_allocObject();
    v25[2] = v24;
    v25[3] = &protocol witness table for MainActor;
    v25[4] = v1;
    sub_1003E9628(0, 0, v4, &unk_10095F578, v25);
  }

  return result;
}

uint64_t sub_1005BCEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Date();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_1005BCF94, v7, v6);
}

uint64_t sub_1005BCF94(__n128 a1)
{
  static Date.now.getter();
  v2 = swift_task_alloc();
  *(v1 + 72) = v2;
  *v2 = v1;
  v2[1] = sub_1005BD038;
  v3 = *(v1 + 40);

  return sub_1005BED00(v3, 1);
}

uint64_t sub_1005BD038()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return _swift_task_switch(sub_100163E38, v6, v5);
}

double sub_1005BD1D4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);

  return result;
}

void sub_1005BD218(uint64_t a1)
{
  v25 = a1;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  v12 = OBJC_IVAR____TtC7Journal18MindfulnessManager_startDate;
  swift_beginAccess();
  sub_1000082B4(v1 + v12, v11, &unk_100AD4790, &unk_10093B4E0);
  v13 = (*(v3 + 48))(v11, 1, v2);
  sub_100004F84(v11, &unk_100AD4790, &unk_10093B4E0);
  if (v13 == 1)
  {
    v14 = *(v3 + 16);
    v15 = v25;
    v14(v8, v25, v2);
    (*(v3 + 56))(v8, 0, 1, v2);
    swift_beginAccess();
    sub_100041B1C(v8, v1 + v12);
    swift_endAccess();
    v14(v5, v15, v2);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26[0] = v19;
      *v18 = 136315138;
      v20 = Date.debugDescription.getter();
      v22 = v21;
      (*(v3 + 8))(v5, v2);
      v23 = sub_100008458(v20, v22, v26);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "Started mindfulness session %s", v18, 0xCu);
      sub_10000BA7C(v19);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }
  }
}

void sub_1005BD558(uint64_t a1, double a2)
{
  v3 = v2;
  v43 = a1;
  v5 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v5 - 8);
  v41 = &v37 - v6;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v42 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  v13 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v13 - 8);
  v15 = &v37 - v14;
  v16 = OBJC_IVAR____TtC7Journal18MindfulnessManager_startDate;
  swift_beginAccess();
  sub_1000082B4(v2 + v16, v15, &unk_100AD4790, &unk_10093B4E0);
  v17 = (*(v8 + 48))(v15, 1, v7);
  sub_100004F84(v15, &unk_100AD4790, &unk_10093B4E0);
  if (v17 != 1)
  {
    v18 = v43;
    v39 = *(v8 + 16);
    v40 = v8 + 16;
    v39(v12, v43, v7);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock[0] = v38;
      *v21 = 136315138;
      v22 = Date.debugDescription.getter();
      v24 = v23;
      (*(v8 + 8))(v12, v7);
      v25 = sub_100008458(v22, v24, aBlock);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "Paused mindfulness session at %s", v21, 0xCu);
      sub_10000BA7C(v38);

      v18 = v43;
    }

    else
    {

      (*(v8 + 8))(v12, v7);
    }

    v26 = type metadata accessor for TaskPriority();
    v27 = v41;
    (*(*(v26 - 8) + 56))(v41, 1, 1, v26);
    v28 = v42;
    v39(v42, v18, v7);
    type metadata accessor for MainActor();

    v29 = static MainActor.shared.getter();
    v30 = *(v8 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    *(v31 + 24) = &protocol witness table for MainActor;
    *(v31 + 32) = a2;
    *(v31 + 40) = v3;
    v38 = *(v8 + 32);
    v38(v31 + ((v30 + 48) & ~v30), v28, v7);
    *(v3 + OBJC_IVAR____TtC7Journal18MindfulnessManager_pauseTask) = sub_1004EC158(0, 0, v27, &unk_10095F558, v31);

    v32 = [objc_opt_self() processInfo];
    v33 = String._bridgeToObjectiveC()();
    v34 = swift_allocObject();
    swift_weakInit();
    v39(v28, v43, v7);
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    v38(v35 + ((v30 + 24) & ~v30), v28, v7);
    aBlock[4] = sub_1005C053C;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10003264C;
    aBlock[3] = &unk_100A74F18;
    v36 = _Block_copy(aBlock);

    [v32 performExpiringActivityWithReason:v33 usingBlock:v36];
    _Block_release(v36);
  }
}

uint64_t sub_1005BDB18(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a5;
  *(v6 + 32) = a6;
  *(v6 + 16) = a1;
  v7 = type metadata accessor for ContinuousClock();
  *(v6 + 40) = v7;
  *(v6 + 48) = *(v7 - 8);
  *(v6 + 56) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v6 + 64) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 72) = v9;
  *(v6 + 80) = v8;

  return _swift_task_switch(sub_1005BDC10, v9, v8);
}

uint64_t sub_1005BDC10(uint64_t a1)
{
  v2 = static Duration.seconds(_:)();
  v4 = v3;
  static Clock<>.continuous.getter();
  v5 = swift_task_alloc();
  *(v1 + 88) = v5;
  *v5 = v1;
  v5[1] = sub_1005BDCEC;

  return sub_10003FA1C(v2, v4, 0, 0, 1);
}

uint64_t sub_1005BDCEC()
{
  v2 = *v1;
  v3 = *v1;
  v2[12] = v0;

  v4 = v2[7];
  v5 = v2[6];
  v6 = v2[5];
  if (v0)
  {
    (*(v5 + 8))(v4, v6);
    v7 = v2[9];
    v8 = v2[10];

    return _swift_task_switch(sub_1005BE050, v7, v8);
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v9 = swift_task_alloc();
    v2[13] = v9;
    *v9 = v3;
    v9[1] = sub_1005BDEC4;
    v10 = v2[4];

    return sub_1005BED00(v10, 0);
  }
}

uint64_t sub_1005BDEC4()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_1005BDFE4, v3, v2);
}

uint64_t sub_1005BDFE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005BE050()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1005BE0BC(char a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    (*(v6 + 16))(&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
    type metadata accessor for MainActor();

    v15 = static MainActor.shared.getter();
    v16 = (*(v6 + 80) + 48) & ~*(v6 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = &protocol witness table for MainActor;
    *(v17 + 32) = a1 & 1;
    *(v17 + 40) = v13;
    (*(v6 + 32))(v17 + v16, v8, v5);
    sub_1003E9628(0, 0, v11, &unk_10095F568, v17);

    v18 = *(v13 + OBJC_IVAR____TtC7Journal18MindfulnessManager_backgroundingSemaphore);
    OS_dispatch_semaphore.wait()();
  }
}

uint64_t sub_1005BE318(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  *(v6 + 88) = a4;
  type metadata accessor for MainActor();
  *(v6 + 32) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 40) = v8;
  *(v6 + 48) = v7;

  return _swift_task_switch(sub_1005BE3B4, v8, v7);
}

uint64_t sub_1005BE3B4(uint64_t a1)
{
  if (*(v1 + 88) == 1)
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Process is being suspended so ending the background timer early", v4, 2u);
    }

    v5 = swift_task_alloc();
    *(v1 + 56) = v5;
    *v5 = v1;
    v5[1] = sub_1005BE5EC;
    v6 = *(v1 + 24);

    return sub_1005BED00(v6, 0);
  }

  else
  {
    v8 = *(*(v1 + 16) + OBJC_IVAR____TtC7Journal18MindfulnessManager_pauseTask);
    *(v1 + 64) = v8;
    if (v8)
    {

      v9 = swift_task_alloc();
      *(v1 + 72) = v9;
      v10 = sub_1000F24EC(&qword_100AD5BC0, &qword_100943550);
      *v9 = v1;
      v9[1] = sub_1005BE780;

      return Task.value.getter(v10, v8, &type metadata for () + 1, v10, &protocol self-conformance witness table for Error);
    }

    else
    {

      OS_dispatch_semaphore.signal()();
      v11 = *(v1 + 8);

      return v11();
    }
  }
}

uint64_t sub_1005BE5EC()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_1005BE70C, v3, v2);
}

uint64_t sub_1005BE70C()
{

  OS_dispatch_semaphore.signal()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005BE780()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_1005BE93C;
  }

  else
  {
    v5 = sub_1005BE8BC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1005BE8BC()
{

  OS_dispatch_semaphore.signal()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005BE93C()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Sleep task was canceled", v3, 2u);
  }

  OS_dispatch_semaphore.signal()();
  v4 = *(v0 + 8);

  return v4();
}

void sub_1005BEA54()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC7Journal18MindfulnessManager_pauseTask;
  if (!*(v0 + OBJC_IVAR____TtC7Journal18MindfulnessManager_pauseTask))
  {
    goto LABEL_4;
  }

  if (swift_task_isCancelled())
  {

LABEL_4:
    static Date.now.getter();
    sub_1005BD218(v4);
    (*(v2 + 8))(v4, v1);
    return;
  }

  if (*(v0 + v5))
  {

    sub_1000F24EC(&qword_100AD5BC0, &qword_100943550);
    Task.cancel()();

    *(v0 + v5) = 0;
  }

  v14 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    static Date.now.getter();
    v9 = Date.debugDescription.getter();
    v11 = v10;
    (*(v2 + 8))(v4, v1);
    v12 = sub_100008458(v9, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v14, v6, "Resumed mindfulness session at %s", v7, 0xCu);
    sub_10000BA7C(v8);
  }

  else
  {

    v13 = v14;
  }
}

uint64_t sub_1005BED00(uint64_t a1, char a2)
{
  *(v3 + 520) = a2;
  *(v3 + 304) = a1;
  *(v3 + 312) = v2;
  v4 = type metadata accessor for Calendar.Component();
  *(v3 + 320) = v4;
  *(v3 + 328) = *(v4 - 8);
  *(v3 + 336) = swift_task_alloc();
  v5 = type metadata accessor for Date();
  *(v3 + 344) = v5;
  *(v3 + 352) = *(v5 - 8);
  *(v3 + 360) = swift_task_alloc();
  *(v3 + 368) = swift_task_alloc();
  *(v3 + 376) = swift_task_alloc();
  *(v3 + 384) = swift_task_alloc();
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 400) = swift_task_alloc();
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 416) = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  *(v3 + 424) = swift_task_alloc();
  *(v3 + 432) = swift_task_alloc();
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v3 + 464) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 472) = v7;
  *(v3 + 480) = v6;

  return _swift_task_switch(sub_1005BEF10, v7, v6);
}

uint64_t sub_1005BEF10()
{
  v97 = v0;
  v1 = *(v0 + 456);
  v2 = *(v0 + 344);
  v3 = *(v0 + 352);
  v4 = *(v0 + 312);
  v5 = OBJC_IVAR____TtC7Journal18MindfulnessManager_startDate;
  *(v0 + 488) = OBJC_IVAR____TtC7Journal18MindfulnessManager_startDate;
  swift_beginAccess();
  sub_1000082B4(v4 + v5, v1, &unk_100AD4790, &unk_10093B4E0);
  v6 = *(v3 + 48);
  if (v6(v1, 1, v2) == 1)
  {
    v7 = *(v0 + 456);

    sub_100004F84(v7, &unk_100AD4790, &unk_10093B4E0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Not currently in a mindfulness session, so nothing will be logged to Health";
LABEL_22:
      _os_log_impl(&_mh_execute_header, v8, v9, v11, v10, 2u);

      goto LABEL_23;
    }

    goto LABEL_23;
  }

  v93 = v4;
  v94 = v6;
  v12 = *(v0 + 312);
  sub_100004F84(*(v0 + 456), &unk_100AD4790, &unk_10093B4E0);
  v13 = OBJC_IVAR____TtC7Journal18MindfulnessManager_pauseTask;
  if (*(v12 + OBJC_IVAR____TtC7Journal18MindfulnessManager_pauseTask))
  {

    sub_1000F24EC(&qword_100AD5BC0, &qword_100943550);
    Task.cancel()();

    *(v12 + v13) = 0;
  }

  v14 = *(v0 + 448);
  v15 = *(v0 + 344);
  v16 = *(v0 + 352);
  v17 = *(v0 + 312);
  if (*(v0 + 520) == 1)
  {
    Date.addingTimeInterval(_:)();
  }

  else
  {
    (*(v16 + 16))(*(v0 + 448), *(v0 + 304), *(v0 + 344));
  }

  v18 = *(v16 + 56);
  v18(v14, 0, 1, v15);
  v19 = OBJC_IVAR____TtC7Journal18MindfulnessManager_endDate;
  swift_beginAccess();
  sub_100041B1C(v14, v17 + v19);
  swift_endAccess();
  v92 = v18;
  *(v0 + 496) = v18;
  v20 = *(v0 + 440);
  v21 = *(v0 + 344);
  sub_1000082B4(v93 + v5, v20, &unk_100AD4790, &unk_10093B4E0);
  if (v94(v20, 1, v21) == 1)
  {
    v22 = *(v0 + 440);

    v23 = &unk_100AD4790;
    v24 = &unk_10093B4E0;
    v25 = v22;
LABEL_19:
    sub_100004F84(v25, v23, v24);
LABEL_20:
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "endDate, healthManager, or minimumStartDate was nil";
      goto LABEL_22;
    }

LABEL_23:

LABEL_24:

    v46 = *(v0 + 8);

    return v46();
  }

  v91 = v5;
  v26 = *(v0 + 432);
  v27 = *(v0 + 344);
  v28 = *(v0 + 312);
  v29 = *(*(v0 + 352) + 32);
  v29(*(v0 + 416), *(v0 + 440), v27);
  v30 = OBJC_IVAR____TtC7Journal18MindfulnessManager_endDate;
  *(v0 + 504) = OBJC_IVAR____TtC7Journal18MindfulnessManager_endDate;
  swift_beginAccess();
  sub_1000082B4(v28 + v30, v26, &unk_100AD4790, &unk_10093B4E0);
  if (v94(v26, 1, v27) == 1)
  {
    v31 = *(v0 + 432);
    (*(*(v0 + 352) + 8))(*(v0 + 416), *(v0 + 344));

    v23 = &unk_100AD4790;
    v24 = &unk_10093B4E0;
    v25 = v31;
    goto LABEL_19;
  }

  v32 = *(v0 + 312);
  v29(*(v0 + 408), *(v0 + 432), *(v0 + 344));
  sub_1000082B4(v32 + 16, v0 + 56, &qword_100AEAA10, &unk_10095F530);
  if (!*(v0 + 80))
  {
    v41 = *(v0 + 408);
    v42 = *(v0 + 416);
    v43 = *(v0 + 344);
    v44 = *(v0 + 352);

    v45 = *(v44 + 8);
    v45(v41, v43);
    v45(v42, v43);
    v23 = &qword_100AEAA10;
    v24 = &unk_10095F530;
    v25 = v0 + 56;
    goto LABEL_19;
  }

  sub_100018480((v0 + 56), v0 + 16);
  if (qword_100AD0098 != -1)
  {
    swift_once();
  }

  v33 = *(v0 + 424);
  v89 = *(v0 + 344);
  v34 = type metadata accessor for DateComponents();
  sub_10000617C(v34, qword_100B2FCA8);
  Calendar.date(byAdding:to:wrappingComponents:)();
  if (v94(v33, 1, v89) == 1)
  {
    v35 = *(v0 + 416);
    v36 = *(v0 + 424);
    v37 = *(v0 + 408);
    v38 = *(v0 + 344);
    v39 = *(v0 + 352);

    v40 = *(v39 + 8);
    v40(v37, v38);
    v40(v35, v38);
    sub_100004F84(v36, &unk_100AD4790, &unk_10093B4E0);
    sub_10000BA7C((v0 + 16));
    goto LABEL_20;
  }

  v95 = v30;
  v90 = v28;
  v48 = *(v0 + 336);
  v49 = *(v0 + 320);
  v50 = *(v0 + 328);
  v29(*(v0 + 400), *(v0 + 424), *(v0 + 344));
  (*(v50 + 104))(v48, enum case for Calendar.Component.second(_:), v49);
  v51 = Calendar.compare(_:to:toGranularity:)();
  (*(v50 + 8))(v48, v49);
  if ((v51 + 1) > 1)
  {
    v56 = *(v0 + 408);
    v57 = *(v0 + 416);
    v59 = *(v0 + 360);
    v58 = *(v0 + 368);
    v60 = *(v0 + 344);
    v61 = *(v0 + 352);

    v62 = *(v61 + 16);
    v62(v58, v57, v60);
    v62(v59, v56, v60);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    v65 = os_log_type_enabled(v63, v64);
    v67 = *(v0 + 408);
    v66 = *(v0 + 416);
    v68 = *(v0 + 400);
    v70 = *(v0 + 360);
    v69 = *(v0 + 368);
    v71 = *(v0 + 344);
    v72 = *(v0 + 352);
    if (v65)
    {
      v86 = v64;
      v73 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *v73 = 136315394;
      v87 = v68;
      v88 = v66;
      v74 = Date.debugDescription.getter();
      v76 = v75;
      v77 = *(v72 + 8);
      v77(v69, v71);
      v78 = sub_100008458(v74, v76, &v96);

      *(v73 + 4) = v78;
      *(v73 + 12) = 2080;
      v79 = Date.debugDescription.getter();
      v81 = v80;
      v77(v70, v71);
      v82 = sub_100008458(v79, v81, &v96);

      *(v73 + 14) = v82;
      _os_log_impl(&_mh_execute_header, v63, v86, "The Mindfulness session duration was less than a minute, so it won't be logged into Health (start: %s, end: %s", v73, 0x16u);
      swift_arrayDestroy();

      v77(v87, v71);
      v77(v67, v71);
      v77(v88, v71);
    }

    else
    {

      v83 = *(v72 + 8);
      v83(v70, v71);
      v83(v69, v71);
      v83(v68, v71);
      v83(v67, v71);
      v83(v66, v71);
    }

    v84 = *(v0 + 448);
    v85 = *(v0 + 344);
    v92(v84, 1, 1, v85);
    swift_beginAccess();
    sub_100041B1C(v84, v93 + v91);
    swift_endAccess();
    v92(v84, 1, 1, v85);
    swift_beginAccess();
    sub_100041B1C(v84, v90 + v95);
    swift_endAccess();
    sub_10000BA7C((v0 + 16));
    goto LABEL_24;
  }

  v52 = *(v0 + 464);
  sub_10000CA14((v0 + 16), *(v0 + 40));

  v53 = swift_task_alloc();
  *(v0 + 512) = v53;
  *v53 = v0;
  v53[1] = sub_1005BF9CC;
  v55 = *(v0 + 408);
  v54 = *(v0 + 416);

  return sub_100137040(v52, &protocol witness table for MainActor, v54, v55);
}

uint64_t sub_1005BF9CC()
{
  v1 = *(*v0 + 464);

  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(sub_1005BFB08, v2, v4);
}