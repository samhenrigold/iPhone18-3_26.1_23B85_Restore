void sub_100434AF4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076593C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v99 - v8;
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v99 - v12;
  v113.receiver = v1;
  v113.super_class = ObjectType;
  objc_msgSendSuper2(&v113, "viewDidLoad", v11);
  v14 = [v1 view];
  if (!v14)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = v14;
  v16 = sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v17 = sub_100770D2C();
  [v15 setBackgroundColor:v17];

  v18 = [v1 collectionView];
  if (!v18)
  {
    return;
  }

  v106 = v13;
  v107 = v9;
  v103 = v6;
  v104 = v3;
  v109 = v4;
  v110 = v16;
  v19 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_presenter];
  v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_shelfDataSource];
  v108 = v18;
  v21 = [v1 snapshotPageTraitEnvironment];
  v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph];
  v23 = type metadata accessor for PurchasesCollectionViewDataSource();
  v24 = objc_allocWithZone(v23);
  *&v24[OBJC_IVAR____TtC20ProductPageExtension33PurchasesCollectionViewDataSource_presenter] = v19;
  *&v24[OBJC_IVAR____TtC20ProductPageExtension33PurchasesCollectionViewDataSource_shelfDataSource] = v20;

  v25 = [v21 snapshotPageTraitEnvironment];
  *&v24[OBJC_IVAR____TtC20ProductPageExtension33PurchasesCollectionViewDataSource_pageTraits] = v25;
  *&v24[OBJC_IVAR____TtC20ProductPageExtension33PurchasesCollectionViewDataSource_objectGraph] = v22;
  v112.receiver = v24;
  v112.super_class = v23;

  v26 = objc_msgSendSuper2(&v112, "init");
  swift_unknownObjectRelease();
  v27 = OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_purchasesCollectionViewDataSource;
  v28 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_purchasesCollectionViewDataSource];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_purchasesCollectionViewDataSource] = v26;

  v29 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_artworkLoader];
  v30 = [v1 snapshotPageTraitEnvironment];
  v31 = type metadata accessor for PurchasesCollectionViewDelegate();
  v32 = objc_allocWithZone(v31);
  v33 = &v32[OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_didScrollHandler];
  *v33 = 0;
  *(v33 + 1) = 0;
  *&v32[OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_objectGraph] = v22;
  *&v32[OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_presenter] = v19;
  *&v32[OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_shelfDataSource] = v20;
  *&v32[OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_artworkLoader] = v29;
  v105 = v19;

  v34 = [v30 snapshotPageTraitEnvironment];
  *&v32[OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_pageTraits] = v34;
  v111.receiver = v32;
  v111.super_class = v31;
  v35 = objc_msgSendSuper2(&v111, "init");
  swift_unknownObjectRelease();
  v36 = OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_purchasesCollectionViewDelegate;
  v37 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_purchasesCollectionViewDelegate];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_purchasesCollectionViewDelegate] = v35;
  v38 = v35;

  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = &v38[OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_didScrollHandler];
  v41 = *&v38[OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_didScrollHandler];
  v42 = *&v38[OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_didScrollHandler + 8];
  *v40 = sub_10043926C;
  v40[1] = v39;

  sub_1000167E0(v41, v42);

  v43 = *&v1[v36];
  v44 = v43;
  sub_1000743FC(v43);
  v45 = *&v1[v27];
  v46 = v45;
  sub_100074410(v45);
  v47 = v108;
  v48 = v108;
  v49 = sub_100770D2C();
  [v48 setBackgroundColor:v49];

  [v48 setAlwaysBounceVertical:1];
  v50 = OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_collectionViewTableLayout;
  v51 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_collectionViewTableLayout];
  if (!v51)
  {
    goto LABEL_18;
  }

  [v51 setSeparatorInset:{0.0, 92.0, 0.0, 20.0}];
  v52 = *&v1[v50];
  v53 = v104;
  if (!v52)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  [v52 _setShowsAdditionalSeparators:0];
  sub_10000A5D4(&qword_100949720, qword_1007A2E70);
  v54 = sub_10076B5BC();
  v55 = *(v54 - 8);
  v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_100783DD0;
  (*(v55 + 104))(v57 + v56, enum case for Shelf.ContentType.purchasesLockup(_:), v54);
  v58 = sub_10017A63C(v57);
  swift_setDeallocating();
  (*(v55 + 8))(v57 + v56, v54);
  swift_deallocClassInstance();
  v59 = v48;
  sub_100439278(v58, v47);

  sub_100439688(v47);

  sub_1007682DC();
  v60 = v106;
  sub_10076829C();
  v61 = v109;
  v62 = v107;
  (*(v109 + 104))(v107, enum case for PurchasesContentMode.hidden(_:), v53);
  sub_100439208(&qword_100957298, 255, &type metadata accessor for PurchasesContentMode, &protocol conformance descriptor for PurchasesContentMode);
  LOBYTE(v57) = sub_10076FF1C();
  v65 = *(v61 + 8);
  v63 = v61 + 8;
  v64 = v65;
  v65(v62, v53);
  v65(v60, v53);
  if ((v57 & 1) == 0)
  {
    v101 = v59;
    v102 = v64;
    v66 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_segmentedControlView];
    [v1 pageMarginInsets];
    [v66 setLayoutMargins:?];
    sub_1004356B8();
    v67 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v110 = OBJC_IVAR____TtC20ProductPageExtension20SegmentedControlView_segmentedControl;
    v68 = *&v66[OBJC_IVAR____TtC20ProductPageExtension20SegmentedControlView_segmentedControl];

    [v68 removeTarget:v66 action:"selectedIndexChangedIn:" forControlEvents:4096];
    v69 = &v66[OBJC_IVAR____TtC20ProductPageExtension20SegmentedControlView_segmentDidChangeHandler];
    v70 = *&v66[OBJC_IVAR____TtC20ProductPageExtension20SegmentedControlView_segmentDidChangeHandler];
    v71 = *&v66[OBJC_IVAR____TtC20ProductPageExtension20SegmentedControlView_segmentDidChangeHandler + 8];
    *v69 = sub_1004398C4;
    v69[1] = v67;
    swift_retain_n();
    sub_1000167E0(v70, v71);

    v72 = v68;
    v73 = v66;
    [v72 addTarget:v66 action:"selectedIndexChangedIn:" forControlEvents:4096];

    v74 = sub_10076824C();
    v75 = *(v74 + 16);
    if (v75)
    {
      v99 = v1;
      v100 = v74;
      v76 = *(v109 + 16);
      v77 = v74 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
      v107 = *(v109 + 72);
      v108 = v76;
      v109 = v63;
      v79 = v102;
      v78 = v103;
      do
      {
        (v108)(v78, v77, v53);
        v80 = v73;
        v81 = *&v73[v110];
        sub_10076590C();
        v82 = sub_10076FF6C();

        v83 = sub_10076591C();
        v79(v78, v53);
        [v81 insertSegmentWithTitle:v82 atIndex:v83 animated:0];

        v73 = v80;
        v77 += v107;
        --v75;
      }

      while (v75);

      v1 = v99;
    }

    else
    {
    }

    v84 = *&v73[v110];
    v85 = v106;
    sub_10076829C();
    v86 = sub_10076591C();
    v102(v85, v53);
    [v84 setSelectedSegmentIndex:v86];

    v59 = v101;
  }

  v87 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_searchBar];
  v114._countAndFlagsBits = 0x484352414553;
  v114._object = 0xE600000000000000;
  v115._countAndFlagsBits = 0;
  v115._object = 0xE000000000000000;
  sub_1007622EC(v114, v115);
  v88 = sub_10076FF6C();

  [v87 setPlaceholder:v88];

  [v87 setHidden:1];
  [v87 setDelegate:v1];
  v89 = [objc_allocWithZone(UIImage) init];
  [v87 setBackgroundImage:v89];

  v90 = [v1 view];
  if (!v90)
  {
    goto LABEL_20;
  }

  v91 = v90;
  [v90 addSubview:v87];

  v92 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_flowPreviewing];
  if (v92)
  {
    v93 = objc_allocWithZone(UIContextMenuInteraction);
    v94 = v92;
    v95 = [v93 initWithDelegate:v94];
    [v59 addInteraction:v95];
  }

  v96 = [v1 navigationItem];
  v97 = [v96 rightBarButtonItem];

  v98 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_doneButtonItem];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_doneButtonItem] = v97;
}

void sub_1004355C8(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong view];
    if (v5)
    {
      v6 = v5;
      [v5 endEditing:1];

      v7 = *&v4[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_searchBar];
      [a1 contentOffset];
      [v7 frame];
      CGRectGetHeight(v8);
      [v7 frame];
      [v7 setFrame:?];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1004356B8()
{
  v1 = v0;
  v2 = [v0 parentViewController];
  v3 = [v2 navigationController];

  if (!v3 || (v3, (v4 = [v1 parentViewController]) == 0) || (v5 = v4, v6 = objc_msgSend(v4, "navigationItem"), v5, (v7 = v6) == 0))
  {
    v7 = [v1 navigationItem];
  }

  v8 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_navigationBarPalettePresenter];
  v9 = v7;
  sub_1000DF9B0(v9, 0, 1);

  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_segmentedControlView];
  v51[3] = type metadata accessor for SegmentedControlView();
  v51[4] = &protocol witness table for UIView;
  v51[0] = v10;
  sub_10000A570(v51, v50);
  sub_10000A570(v50, v49);
  v11 = swift_allocObject();
  sub_10003F19C(v50, v11 + 16);
  v12 = v10;
  sub_10000CD74(v51);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    sub_10000CD74(v49);
    return;
  }

  v14 = Strong;
  v15 = *(v8 + 24);
  if (v15)
  {
    [v15 setHidden:1];
  }

  v16 = v12;
  [v16 setHidden:0];
  v17 = [v16 superview];
  v18 = [v14 contentView];
  v19 = v18;
  if (v17)
  {
    if (v18)
    {
      sub_100016F40(0, &qword_1009441F0, UIView_ptr);
      v20 = sub_100770EEC();

      if (v20)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v19 = v17;
  }

  else if (!v18)
  {
    goto LABEL_18;
  }

LABEL_17:
  v21 = [v14 contentView];
  [v21 bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  [v16 setFrame:{v23, v25, v27, v29}];
  [v16 setAutoresizingMask:18];
  v30 = [v14 contentView];
  [v30 addSubview:v16];

LABEL_18:
  v31 = *(v8 + 24);
  *(v8 + 24) = v10;
  v32 = v16;

  if (*(v8 + 65))
  {
    v33 = [v14 contentView];
    sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    sub_10076422C();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;

    v52.origin.x = v35;
    v52.origin.y = v37;
    v52.size.width = v39;
    v52.size.height = v41;
    CGRectGetWidth(v52);
    v42 = [v14 contentView];
    sub_10000CF78(v49, v49[3]);
    sub_10076D2AC();
    v44 = v43;

    [v14 setPreferredHeight:v44];
    [v14 preferredHeight];
    [v14 setMinimumHeight:?];
  }

  v45 = *(v8 + 32);
  v46 = *(v8 + 40);
  v47 = *(v8 + 48);
  v48 = *(v8 + 56);
  *(v8 + 32) = sub_100275A3C;
  *(v8 + 40) = v11;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  sub_1000E0788(v45, v46, v47, v48);

  sub_10000CD74(v49);
}

void sub_100435AF0(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100435B4C(a1);
  }
}

id sub_100435B4C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_10076593C();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v2 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v10 = result;
  [result endEditing:1];

  v11 = [a1 selectedSegmentIndex];
  v12 = enum case for PurchasesContentMode.all(_:);
  v13 = *(v5 + 104);
  v13(v8, enum case for PurchasesContentMode.all(_:), v4);
  v14 = sub_10076591C();
  v15 = *(v5 + 8);
  v15(v8, v4);
  if (v14 == v11 || (v12 = enum case for PurchasesContentMode.notOnDevice(_:), v13(v8, enum case for PurchasesContentMode.notOnDevice(_:), v4), v16 = sub_10076591C(), v15(v8, v4), v16 == v11))
  {
    sub_10043464C(0);
LABEL_5:
    v13(v8, v12, v4);
    return sub_1007682AC();
  }

  v12 = enum case for PurchasesContentMode.hidden(_:);
  v13(v8, enum case for PurchasesContentMode.hidden(_:), v4);
  v17 = sub_10076591C();
  result = (v15)(v8, v4);
  if (v17 == v11)
  {
    v37._object = 0x80000001007E7BC0;
    v37._countAndFlagsBits = 0xD000000000000014;
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    sub_1007622EC(v37, v38);
    v36 = ObjectType;
    v35[0] = v2;
    ObjectType = v2;
    v18 = sub_10076FF6C();

    v19 = v36;
    if (v36)
    {
      v20 = sub_10000CF78(v35, v36);
      v32[1] = v32;
      v33 = v18;
      v21 = *(v19 - 8);
      v22 = __chkstk_darwin(v20);
      v24 = v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v24, v22);
      v25 = sub_10077165C();
      (*(v21 + 8))(v24, v19);
      v18 = v33;
      sub_10000CD74(v35);
    }

    else
    {
      v25 = 0;
    }

    v26 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v18 style:0 target:v25 action:"unhideAll"];

    swift_unknownObjectRelease();
    v27 = ObjectType;
    sub_10043464C(v26);
    v28 = [v27 navigationItem];
    v29 = *&v27[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_hideAllButton];
    [v28 setRightBarButtonItem:v29];

    v30 = [v27 navigationItem];
    v31 = [v30 rightBarButtonItem];

    [v31 setEnabled:1];
    goto LABEL_5;
  }

  return result;
}

void sub_100436034(void *a1, uint64_t a2, uint64_t a3, const char **a4, uint64_t a5)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  v7 = *a4;
  v8 = v9.receiver;
  objc_msgSendSuper2(&v9, v7, a3);
  sub_100760BDC();
}

void sub_1004360BC(void *a1, uint64_t a2, const char **a3, uint64_t a4)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v5 = *a3;
  v6 = v7.receiver;
  objc_msgSendSuper2(&v7, v5);
  sub_100760BDC();
}

void sub_10043612C()
{
  v49.receiver = v0;
  v49.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v49, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_searchBar];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v50.origin.x = v5;
  v50.origin.y = v7;
  v50.size.width = v9;
  v50.size.height = v11;
  CGRectGetWidth(v50);
  v12 = [v0 view];
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12;
  [v12 bounds];
  v15 = v14;
  v17 = v16;

  [v1 sizeThatFits:{v15, v17}];
  [v1 frame];
  [v1 setFrame:?];
  v18 = [v0 collectionView];
  if (v18)
  {
    v19 = v18;
    [v1 frame];
    Height = CGRectGetHeight(v51);
    [v19 contentInset];
    [v19 setContentInset:Height];
  }

  v21 = *&v0[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_emptyStateView];
  if (v21)
  {
    v22 = v21;
    v23 = [v0 view];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 safeAreaLayoutGuide];

      [v25 layoutFrame];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      [v0 pageMarginInsets];
      v36 = sub_100102A30(v27, v29, v31, v33, v34, v35);
      v38 = v37;
      v40 = v39;
      v42 = v41;
      [v1 frame];
      MaxY = CGRectGetMaxY(v52);
      v53.origin.x = v36;
      v53.origin.y = v38;
      v53.size.width = v40;
      v53.size.height = v42;
      v44 = CGRectGetHeight(v53);
      [v1 frame];
      v45 = v44 - CGRectGetMaxY(v54);
      v46 = v22;
      [v0 pageMarginInsets];
      v48 = v47;
      v55.origin.x = v36;
      v55.origin.y = v38;
      v55.size.width = v40;
      v55.size.height = v42;
      [v46 setFrame:{v48, MaxY, CGRectGetWidth(v55), v45}];

      return;
    }

LABEL_11:
    __break(1u);
  }
}

void sub_100436474(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v35.receiver = v4;
  v35.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v35, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v8 = *&v4[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_purchasesCollectionViewDelegate];
  if (!v8)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v9 = v8;
  v10 = &selRef_initWithTabBarSystemItem_tag_;
  v11 = [v4 traitCollection];
  v12 = type metadata accessor for SnapshotPageTraitEnvironment();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v14 = a2;
  v14[1] = a3;
  *&v13[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v11;
  v34.receiver = v13;
  v34.super_class = v12;
  v15 = &off_100911000;
  v16 = objc_msgSendSuper2(&v34, "init");
  v17 = [v4 collectionView];
  v18 = [v16 snapshotPageTraitEnvironment];
  *&v9[OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_pageTraits] = v18;
  v19 = swift_unknownObjectRelease();
  if (v17)
  {
    v31[1] = v31;
    v32 = *(*&v9[OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_shelfDataSource] + 24);
    __chkstk_darwin(v19);
    v20 = v17;

    sub_10000A5D4(&unk_1009520B0, &qword_100790A00);
    sub_1001C9F18();
    v15 = &off_100911000;
    sub_10076F35C();
    v10 = &selRef_initWithTabBarSystemItem_tag_;
  }

  else
  {
  }

  v21 = *&v4[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_purchasesCollectionViewDataSource];
  if (!v21)
  {
    goto LABEL_10;
  }

  v22 = v21;
  v23 = [v4 v10[274]];
  v24 = objc_allocWithZone(v12);
  v25 = &v24[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v25 = a2;
  v25[1] = a3;
  *&v24[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v23;
  v33.receiver = v24;
  v33.super_class = v12;
  v26 = objc_msgSendSuper2(&v33, v15[185]);
  v27 = [v4 collectionView];
  v28 = [v26 snapshotPageTraitEnvironment];
  *&v22[OBJC_IVAR____TtC20ProductPageExtension33PurchasesCollectionViewDataSource_pageTraits] = v28;
  v29 = swift_unknownObjectRelease();
  if (v27)
  {
    v32 = *(*&v22[OBJC_IVAR____TtC20ProductPageExtension33PurchasesCollectionViewDataSource_shelfDataSource] + 24);
    __chkstk_darwin(v29);
    v30 = v27;

    sub_10000A5D4(&unk_1009520B0, &qword_100790A00);
    sub_1001C9F18();
    sub_10076F35C();
  }

  else
  {
  }
}

void sub_1004368C4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10076593C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = v34 - v11;
  v36.receiver = v2;
  v36.super_class = ObjectType;
  objc_msgSendSuper2(&v36, "traitCollectionDidChange:", a1, v10);
  sub_10076829C();
  (*(v6 + 104))(v8, enum case for PurchasesContentMode.hidden(_:), v5);
  sub_100439208(&qword_100957298, 255, &type metadata accessor for PurchasesContentMode, &protocol conformance descriptor for PurchasesContentMode);
  LOBYTE(a1) = sub_10076FF1C();
  v13 = *(v6 + 8);
  v13(v8, v5);
  v13(v12, v5);
  if ((a1 & 1) == 0)
  {
    v14 = *&v2[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_segmentedControlView];
    [v2 pageMarginInsets];
    [v14 setLayoutMargins:?];
  }

  v15 = *&v2[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_purchasesCollectionViewDelegate];
  if (!v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = &selRef__setPocketInsets_;
  v18 = [v2 snapshotPageTraitEnvironment];
  v19 = [v2 collectionView];
  v20 = [v18 snapshotPageTraitEnvironment];
  *&v16[OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_pageTraits] = v20;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v21 = *&v16[OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_shelfDataSource];
  v22 = [v20 snapshotPageTraitEnvironment];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v23 = [v19 reloadData];
  if (v19)
  {
    v34[1] = v34;
    v35 = *(v21 + 24);
    __chkstk_darwin(v23);
    v34[-2] = v19;
    v34[-1] = v21;
    v24 = v19;

    sub_10000A5D4(&unk_1009520B0, &qword_100790A00);
    sub_1001C9F18();
    v17 = &selRef__setPocketInsets_;
    sub_10076F35C();

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v25 = *&v2[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_purchasesCollectionViewDataSource];
  if (!v25)
  {
    goto LABEL_13;
  }

  v26 = v25;
  v27 = [v2 v17[23]];
  v28 = [v2 collectionView];
  v29 = [v27 v17[23]];
  *&v26[OBJC_IVAR____TtC20ProductPageExtension33PurchasesCollectionViewDataSource_pageTraits] = v29;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v30 = *&v26[OBJC_IVAR____TtC20ProductPageExtension33PurchasesCollectionViewDataSource_shelfDataSource];
  v31 = [v29 v17[23]];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v32 = [v28 reloadData];
  if (v28)
  {
    v35 = *(v30 + 24);
    __chkstk_darwin(v32);
    v34[-2] = v28;
    v34[-1] = v30;
    v33 = v28;

    sub_10000A5D4(&unk_1009520B0, &qword_100790A00);
    sub_1001C9F18();
    sub_10076F35C();

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_100437120()
{
  v1 = v0;
  v2 = sub_10076DE4C();
  __chkstk_darwin(v2 - 8);
  if (sub_10076827C())
  {
    v3 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
    v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
    sub_10076857C();

    v5 = *&v0[v3];
    *&v0[v3] = 0;

    v6 = [v0 view];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];

      sub_10076856C();
      return;
    }

    __break(1u);
  }

  else
  {
    sub_10076DE3C();
    v8 = objc_allocWithZone(sub_10076DE6C());
    v9 = sub_10076DE5C();
    v10 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
    v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
    sub_10076857C();

    v12 = *&v1[v10];
    *&v1[v10] = v9;
    v13 = v9;

    v14 = [v1 view];
    if (v14)
    {
      v15 = v14;
      [v14 bounds];

      sub_10076856C();
      return;
    }
  }

  __break(1u);
}

void sub_100437320(__n128 a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
  if (v3)
  {
    sub_10076DE6C();
    if (swift_dynamicCastClass())
    {
      v4 = v3;
      sub_10076857C();

      v5 = *&v1[v2];
      *&v1[v2] = 0;

      v6 = [v1 view];
      if (v6)
      {
        v7 = v6;
        [v6 bounds];

        sub_10076856C();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_100437408(uint64_t a1)
{
  v2 = v1;
  sub_10076DF3C();
  sub_100439208(&qword_100957290, 255, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for BasePresenter);
  swift_errorRetain();

  v3 = sub_10076DEFC();
  v4 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
  sub_10076857C();

  v6 = *&v2[v4];
  *&v2[v4] = v3;
  v9 = v3;

  v7 = [v2 view];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];

    sub_10076856C();
  }

  else
  {
    __break(1u);
  }
}

void sub_100437588()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_emptyStateView;
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_emptyStateView];
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *&v1[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v1[v2] = 0;

  v5 = [v1 collectionView];
  if (v5)
  {
    v6 = v5;
    [v5 setHidden:0];
  }

  sub_1000DFBB4();
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_searchBar] setHidden:0];
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100439200;
  *(v9 + 24) = v8;
  v11[4] = sub_1000B9014;
  v11[5] = v9;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1001C5148;
  v11[3] = &unk_1008955C0;
  v10 = _Block_copy(v11);

  [v7 performWithoutAnimation:v10];
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }
}

void sub_10043777C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong collectionView];

    if (!v3)
    {
      __break(1u);
      return;
    }

    [v3 reloadData];
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 collectionView];

    if (v6)
    {
      [v6 layoutIfNeeded];
    }
  }
}

void sub_10043785C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v7 = v6;
  v14 = [v6 collectionView];
  if (v14)
  {
    v15 = v14;
    [v14 setHidden:1];
  }

  v16 = *&v7[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_navigationBarPalettePresenter];
  if (a5)
  {
    sub_1000DFBB4();
  }

  else
  {
    v17 = *(v16 + 24);
    if (v17)
    {
      if (*(v16 + 65) == 1)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v19 = Strong;
          [v17 setHidden:1];
          [v19 setMinimumHeight:0.0];
          [v19 setPreferredHeight:0.0];

          *(v16 + 65) = 0;
        }
      }
    }
  }

  [*&v7[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_searchBar] setHidden:(a6 & 1) == 0];
  v20 = objc_allocWithZone(type metadata accessor for EmptyStateView(0));

  v21 = sub_10070982C(a1, a2, a3, a4);
  v22 = OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_emptyStateView;
  v23 = *&v7[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_emptyStateView];
  if (v23)
  {
    [v23 removeFromSuperview];
    v24 = *&v7[v22];
  }

  else
  {
    v24 = 0;
  }

  *&v7[v22] = v21;
  v25 = v21;

  [v25 setUserInteractionEnabled:0];
  v26 = [v7 view];
  if (!v26)
  {
    __break(1u);
    goto LABEL_18;
  }

  v27 = v26;
  [v26 addSubview:v25];

  v28 = [v7 view];
  if (!v28)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v29 = v28;
  [v28 setNeedsLayout];
}

void sub_100437A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10075E11C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = [v3 collectionView];
  if (v10)
  {
    v11 = v10;
    (*(v8 + 16))(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
    v12 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v13 = swift_allocObject();
    *(v13 + 2) = a2;
    *(v13 + 3) = a3;
    *(v13 + 4) = v3;
    (*(v8 + 32))(&v13[v12], aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    v14 = swift_allocObject();
    *(v14 + 16) = sub_100439170;
    *(v14 + 24) = v13;
    aBlock[4] = sub_1000349FC;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001C5148;
    aBlock[3] = &unk_100895548;
    v15 = _Block_copy(aBlock);
    v16 = v3;

    [v11 performBatchUpdates:v15 completion:0];
    _Block_release(v15);
  }
}

void sub_100437CA0(void (*a1)(void), uint64_t a2, void *a3, uint64_t a4)
{
  a1();
  v6 = [a3 collectionView];
  if (v6)
  {
    v7 = v6;
    sub_10000A5D4(&qword_100944C48, &unk_10079AFF0);
    v8 = sub_10075E11C();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100783DD0;
    (*(v9 + 16))(v11 + v10, a4, v8);
    isa = sub_1007701AC().super.isa;

    [v7 deleteItemsAtIndexPaths:isa];
  }
}

void sub_100437E14(uint64_t a1, uint64_t a2)
{
  v4 = sub_10075E11C();
  v69 = *(v4 - 8);
  v70 = v4;
  __chkstk_darwin(v4);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = &v65 - v8;
  v9 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v9 - 8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v67 = &v65 - v13;
  __chkstk_darwin(v14);
  v16 = &v65 - v15;
  v17 = sub_10076F13C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100016E2C(a2, v103, &unk_1009434C0, &qword_100783F60);
  if (v104)
  {
    sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    if (swift_dynamicCast())
    {
      v21 = v72;
      [v21 bounds];
      LOBYTE(v97) = 1;
      *&v79 = v21;
      *(&v79 + 1) = v22;
      *&v80 = v23;
      *(&v80 + 1) = v24;
      *&v81 = v25;
      BYTE8(v81) = 1;
      __asm { FMOV            V0.2D, #10.0 }

      v82 = _Q0;
      v83 = _Q0;
      v84 = 15;
      sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
      *v20 = sub_10077068C();
      (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
      v31 = sub_10076F16C();
      (*(v18 + 8))(v20, v17);
      if (v31)
      {
        v87 = xmmword_10094FFF8;
        v88 = xmmword_100950008;
        v89 = xmmword_100950018;
        v85 = xmmword_10094FFD8;
        v86 = xmmword_10094FFE8;
        v93 = v81;
        v94 = v82;
        v95 = v83;
        v91 = v79;
        v92 = v80;
        v97 = xmmword_10094FFD8;
        v98 = xmmword_10094FFE8;
        v100 = xmmword_100950008;
        v101 = xmmword_100950018;
        v90 = qword_100950028;
        v96 = v84;
        v102 = qword_100950028;
        v99 = xmmword_10094FFF8;
        sub_100016E2C(&v85, &v73, &unk_1009505F0, &qword_1007A2110);
        xmmword_10094FFF8 = v93;
        xmmword_100950008 = v94;
        xmmword_100950018 = v95;
        qword_100950028 = v96;
        xmmword_10094FFD8 = v91;
        xmmword_10094FFE8 = v92;
        sub_10000CFBC(&v97, &unk_1009505F0, &qword_1007A2110);
        v32 = *&v71[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph];
        v33 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
        sub_1001F9960(&v79, &v73);
        sub_10076F5AC();
        v34 = *(v33 - 8);
        if ((*(v34 + 48))(v16, 1, v33) == 1)
        {
          sub_10000CFBC(v16, &unk_100943200, &unk_100785840);
        }

        else
        {
          sub_100263BF0(a1, 1, v32, v16);

          (*(v34 + 8))(v16, v33);
        }

        v75 = xmmword_10094FFF8;
        v76 = xmmword_100950008;
        v77 = xmmword_100950018;
        v78 = qword_100950028;
        v73 = xmmword_10094FFD8;
        v74 = xmmword_10094FFE8;
        xmmword_10094FFD8 = v85;
        xmmword_10094FFE8 = v86;
        xmmword_10094FFF8 = v87;
        xmmword_100950008 = v88;
        xmmword_100950018 = v89;
        qword_100950028 = v90;
        sub_10000CFBC(&v73, &unk_1009505F0, &qword_1007A2110);
        sub_1001F99BC(&v79);

        return;
      }

      __break(1u);
      goto LABEL_27;
    }

    v66 = a1;
  }

  else
  {
    v66 = a1;
    sub_10000CFBC(v103, &unk_1009434C0, &qword_100783F60);
  }

  v35 = [v71 collectionView];
  if (!v35)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v36 = v35;
  v37 = [v35 indexPathsForSelectedItems];

  if (!v37)
  {
LABEL_20:
    v61 = *&v71[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph];
    v62 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
    sub_10076F5AC();
    v63 = *(v62 - 8);
    if ((*(v63 + 48))(v11, 1, v62) == 1)
    {
      sub_10000CFBC(v11, &unk_100943200, &unk_100785840);
    }

    else
    {
      sub_100263BF0(v66, 1, v61, v11);

      (*(v63 + 8))(v11, v62);
    }

    return;
  }

  v38 = v70;
  v39 = sub_1007701BC();

  if (!*(v39 + 16))
  {

    goto LABEL_20;
  }

  v40 = v69;
  (*(v69 + 16))(v6, v39 + ((*(v40 + 80) + 32) & ~*(v40 + 80)), v38);

  v41 = *(v40 + 32);
  v42 = v68;
  v41(v68, v6, v38);
  v43 = [v71 collectionView];
  if (!v43)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v44 = v43;
  v45 = v42;
  isa = sub_10075E02C().super.isa;
  v47 = [v44 cellForItemAtIndexPath:isa];

  if (!v47)
  {
    (*(v69 + 8))(v45, v70);
    goto LABEL_20;
  }

  v48 = v47;
  [v48 bounds];
  LOBYTE(v97) = 1;
  *&v79 = v47;
  *(&v79 + 1) = v49;
  *&v80 = v50;
  *(&v80 + 1) = v51;
  *&v81 = v52;
  BYTE8(v81) = 1;
  __asm { FMOV            V0.2D, #10.0 }

  v82 = _Q0;
  v83 = _Q0;
  v84 = 15;
  sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
  *v20 = sub_10077068C();
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v54 = sub_10076F16C();
  (*(v18 + 8))(v20, v17);
  if ((v54 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v87 = xmmword_10094FFF8;
  v88 = xmmword_100950008;
  v89 = xmmword_100950018;
  v85 = xmmword_10094FFD8;
  v86 = xmmword_10094FFE8;
  v93 = v81;
  v94 = v82;
  v95 = v83;
  v91 = v79;
  v92 = v80;
  v97 = xmmword_10094FFD8;
  v98 = xmmword_10094FFE8;
  v100 = xmmword_100950008;
  v101 = xmmword_100950018;
  v90 = qword_100950028;
  v96 = v84;
  v102 = qword_100950028;
  v99 = xmmword_10094FFF8;
  sub_100016E2C(&v85, &v73, &unk_1009505F0, &qword_1007A2110);
  xmmword_10094FFF8 = v93;
  xmmword_100950008 = v94;
  xmmword_100950018 = v95;
  qword_100950028 = v96;
  xmmword_10094FFD8 = v91;
  xmmword_10094FFE8 = v92;
  sub_10000CFBC(&v97, &unk_1009505F0, &qword_1007A2110);
  v55 = *&v71[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph];
  v56 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  sub_1001F9960(&v79, &v73);
  v57 = v67;
  sub_10076F5AC();
  v58 = *(v56 - 8);
  v59 = (*(v58 + 48))(v57, 1, v56);
  v60 = v68;
  if (v59 == 1)
  {
    sub_10000CFBC(v57, &unk_100943200, &unk_100785840);
  }

  else
  {
    sub_100263BF0(v66, 1, v55, v57);

    (*(v58 + 8))(v57, v56);
  }

  v64 = v70;
  v75 = xmmword_10094FFF8;
  v76 = xmmword_100950008;
  v77 = xmmword_100950018;
  v78 = qword_100950028;
  v73 = xmmword_10094FFD8;
  v74 = xmmword_10094FFE8;
  xmmword_10094FFD8 = v85;
  xmmword_10094FFE8 = v86;
  xmmword_10094FFF8 = v87;
  xmmword_100950008 = v88;
  xmmword_100950018 = v89;
  qword_100950028 = v90;
  sub_10000CFBC(&v73, &unk_1009505F0, &qword_1007A2110);
  sub_1001F99BC(&v79);

  (*(v69 + 8))(v60, v64);
}

void sub_10043886C()
{

  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_flowPreviewing);
}

void sub_100438B70(void *a1, uint64_t a2)
{
  v36 = a2;
  v35 = sub_10000A5D4(&qword_1009572A0, &qword_1007909F0);
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v26 - v4;
  v33 = sub_10075E11C();
  v5 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v31 = &v26 - v9;
  v37 = a1;
  v10 = [a1 visibleCells];
  sub_100016F40(0, &qword_10094D1D0, UICollectionViewCell_ptr);
  v11 = sub_1007701BC();

  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_16:

    return;
  }

  v12 = sub_10077158C();
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v12 < 1)
  {
    __break(1u);
  }

  else
  {
    v13 = 0;
    v14 = v11 & 0xC000000000000001;
    v28 = (v3 + 8);
    v29 = (v5 + 32);
    v27 = (v5 + 8);
    v30 = v11 & 0xC000000000000001;
    v15 = v33;
    do
    {
      if (v14)
      {
        v16 = sub_10077149C();
      }

      else
      {
        v16 = *(v11 + 8 * v13 + 32);
      }

      v17 = v16;
      swift_getObjectType();
      if (swift_conformsToProtocol2() && v17 && (v18 = [v37 indexPathForCell:v17]) != 0)
      {
        v19 = v32;
        v20 = v18;
        sub_10075E06C();

        v21 = v11;
        v22 = v31;
        (*v29)(v31, v19, v15);
        v38 = sub_10075E0AC();
        sub_10077140C();
        v23 = v34;
        sub_10076FDEC();
        sub_10076F9BC();

        v24 = v23;
        v14 = v30;
        (*v28)(v24, v35);
        v25 = v22;
        v11 = v21;
        (*v27)(v25, v15);
      }

      else
      {
      }

      ++v13;
    }

    while (v12 != v13);
  }
}

uint64_t sub_100438F04()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100438F3C()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

id sub_100438F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v9 = sub_100439208(&qword_100957278, 255, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
  v10 = sub_10000A5D4(&unk_100957280, &unk_1007A2E60);
  v11 = objc_allocWithZone(v10);
  v12 = &v11[qword_10094A6C8];
  *&v11[qword_10094A6C8 + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v13 = &v11[qword_10094A6C0];
  *v13 = a3;
  *(v13 + 1) = a4;
  *(v12 + 1) = v9;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *&v11[qword_10094A6D8] = a5;
  v15.receiver = v11;
  v15.super_class = v10;
  return objc_msgSendSuper2(&v15, "init");
}

uint64_t sub_1004390AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10075E11C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

void sub_100439170(uint64_t a1, uint64_t a2)
{
  v3 = *(sub_10075E11C() - 8);
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_100437CA0(v4, v5, v6, v7);
}

double sub_1004391E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100439208(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_100439278(uint64_t a1, void *a2)
{
  v43 = a2;
  v3 = sub_10076B5BC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v42 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v32[-v7];
  __chkstk_darwin(v9);
  v39 = &v32[-v10];
  v11 = sub_10076F09C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
  (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.utility(_:), v11);
  v15 = sub_1007706BC();
  v16 = v14;
  v17 = v8;
  (*(v12 + 8))(v16, v11);
  sub_1004AF54C(v15, a1);

  v18 = a1 + 56;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 56);
  v22 = (v19 + 63) >> 6;
  v37 = v4 + 32;
  v38 = v4 + 16;
  v36 = v4 + 88;
  v35 = enum case for Shelf.ContentType.personalizationFeedbackContainer(_:);
  v33 = enum case for Shelf.ContentType.informationRibbon(_:);
  v40 = a1;
  v41 = (v4 + 8);

  v23 = 0;
  v34 = v4;
  while (v21)
  {
LABEL_10:
    v25 = v39;
    v26 = *(v4 + 16);
    v26(v39, *(v40 + 48) + *(v4 + 72) * (__clz(__rbit64(v21)) | (v23 << 6)), v3);
    (*(v4 + 32))(v17, v25, v3);
    v27 = v42;
    v26(v42, v17, v3);
    v28 = (*(v4 + 88))(v27, v3);
    if (v28 == v35)
    {
      type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    }

    else if (v28 == v33)
    {
      type metadata accessor for InformationRibbonCollectionViewCell(0);
    }

    else
    {
      (*v41)(v42, v3);
      if (!sub_10041329C())
      {
        goto LABEL_4;
      }
    }

    if (v43)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_10076B59C();
      v30 = v17;
      v31 = sub_10076FF6C();

      [v43 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v31];

      v17 = v30;
      v4 = v34;
    }

LABEL_4:
    v21 &= v21 - 1;
    (*v41)(v17, v3);
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v22)
    {

      return;
    }

    v21 = *(v18 + 8 * v24);
    ++v23;
    if (v21)
    {
      v23 = v24;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_100439688(void *a1)
{
  if (a1)
  {
    type metadata accessor for TitleHeaderView(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = UICollectionElementKindSectionHeader;
    sub_1007708FC();
    v4 = sub_10076FF6C();

    [a1 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v3 withReuseIdentifier:v4];

    type metadata accessor for InteractiveTitleHeaderView(0);
    v5 = swift_getObjCClassFromMetadata();
    v6 = v3;
    sub_1007708FC();
    v7 = sub_10076FF6C();

    [a1 registerClass:v5 forSupplementaryViewOfKind:v6 withReuseIdentifier:v7];

    type metadata accessor for InfiniteScrollFooterView();
    v8 = swift_getObjCClassFromMetadata();
    v9 = UICollectionElementKindSectionFooter;
    sub_1007708FC();
    v10 = sub_10076FF6C();

    [a1 registerClass:v8 forSupplementaryViewOfKind:v9 withReuseIdentifier:v10];

    sub_100016F40(0, &qword_100950650, UICollectionReusableView_ptr);
    v11 = swift_getObjCClassFromMetadata();
    v12 = sub_10076FF6C();
    v13 = sub_10076FF6C();
    [a1 registerClass:v11 forSupplementaryViewOfKind:v12 withReuseIdentifier:v13];

    v14 = sub_10076FF6C();
    v15 = sub_10076FF6C();
    [a1 registerClass:v11 forSupplementaryViewOfKind:v14 withReuseIdentifier:v15];
  }
}

uint64_t sub_1004398CC()
{
  sub_10000CD74((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

void sub_10043999C()
{
  v41.receiver = v0;
  v41.super_class = type metadata accessor for AlertActionHeaderViewController();
  objc_msgSendSuper2(&v41, "viewDidLoad");
  v1 = sub_10076FF6C();
  v2 = [objc_opt_self() systemImageNamed:v1];

  if (v2)
  {
    v3 = [objc_allocWithZone(UIImageView) initWithImage:v2];
    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      v6 = v3;
      [v5 addSubview:v6];

      v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31AlertActionHeaderViewController_imageView];
      *&v0[OBJC_IVAR____TtC20ProductPageExtension31AlertActionHeaderViewController_imageView] = v6;
      v8 = v6;

      sub_10000A5D4(&unk_100942870, &qword_100784460);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_100785D70;
      v10 = objc_opt_self();
      *(v9 + 32) = [v10 secondaryLabelColor];
      *(v9 + 40) = [v10 clearColor];
      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      isa = sub_1007701AC().super.isa;

      v12 = [objc_opt_self() configurationWithPaletteColors:isa];

      [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v8 setPreferredSymbolConfiguration:v12];
      [v8 setContentMode:1];

      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_10079B610;
      v14 = [v0 view];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 heightAnchor];

        v17 = [v16 constraintEqualToConstant:80.0];
        *(v13 + 32) = v17;
        v18 = [v8 topAnchor];

        v19 = [v0 view];
        if (v19)
        {
          v20 = v19;
          v40 = v12;
          v21 = [v19 topAnchor];

          v22 = [v18 constraintEqualToAnchor:v21 constant:20.0];
          *(v13 + 40) = v22;
          v23 = [v8 bottomAnchor];

          v24 = [v0 view];
          if (v24)
          {
            v25 = v24;
            v26 = [v24 bottomAnchor];

            v27 = [v23 constraintEqualToAnchor:v26];
            *(v13 + 48) = v27;
            v28 = [v8 leadingAnchor];

            v29 = [v0 view];
            if (v29)
            {
              v30 = v29;
              v31 = [v29 leadingAnchor];

              v32 = [v28 constraintEqualToAnchor:v31];
              *(v13 + 56) = v32;
              v33 = [v8 trailingAnchor];

              v34 = [v0 view];
              if (v34)
              {
                v35 = v34;
                v36 = objc_opt_self();
                v37 = [v35 trailingAnchor];

                v38 = [v33 constraintEqualToAnchor:v37];
                *(v13 + 64) = v38;
                sub_100016F40(0, &qword_100945D78, NSLayoutConstraint_ptr);
                v39 = sub_1007701AC().super.isa;

                [v36 activateConstraints:v39];

                return;
              }

LABEL_15:
              __break(1u);
              return;
            }

LABEL_14:
            __break(1u);
            goto LABEL_15;
          }

LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

id sub_100439F68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlertActionHeaderViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10043A010()
{
  v1 = sub_10000A5D4(&unk_10094DE60, "ܱ\b");
  __chkstk_darwin(v1 - 8);
  v3 = &v28 - v2;
  v4 = sub_10075E11C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = [result collectionView];
    v14 = OBJC_IVAR____TtC20ProductPageExtension34ComponentViewOverflowTransitioning_selectedIndexPath;
    swift_beginAccess();
    sub_1000DE51C(v0 + v14, v3);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      sub_10043AEE0(v3);
      return 0;
    }

    (*(v5 + 32))(v10, v3, v4);
    if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension34ComponentViewOverflowTransitioning_isTransitioningFromContainer) != 1)
    {
      if (v13)
      {
        v22 = v13;
        isa = sub_10075E02C().super.isa;
        v24 = [v22 cellForItemAtIndexPath:isa];

        (*(v5 + 8))(v10, v4);
        return v24;
      }

      (*(v5 + 8))(v10, v4);

      return 0;
    }

    sub_10075E0AC();
    sub_10075E08C();
    if (v13)
    {
      v15 = v13;
      v16 = sub_10075E02C().super.isa;
      v17 = [v15 cellForItemAtIndexPath:v16];

      if (v17)
      {
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          result = sub_10075E09C();
          v18 = OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons;
          v19 = *&v17[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
          if (v19 >> 62)
          {
            v28 = result;
            v26 = sub_10077158C();
            result = v28;
            if (v28 < v26)
            {
LABEL_10:
              v20 = *&v17[v18];
              if ((v20 & 0xC000000000000001) != 0)
              {
                v28 = v5;

                v21 = sub_10077149C();

                v5 = v28;

                goto LABEL_24;
              }

              if ((result & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (result < *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v21 = *(v20 + 8 * result + 32);

LABEL_24:
                v27 = *(v5 + 8);
                v27(v7, v4);
                v27(v10, v4);
                return v21;
              }

              __break(1u);
              return result;
            }
          }

          else if (result < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_10;
          }

          v21 = 0;
          goto LABEL_24;
        }

        v15 = v12;
        v12 = v17;
      }
    }

    v25 = *(v5 + 8);
    v25(v7, v4);
    v25(v10, v4);
    return 0;
  }

  return result;
}

void sub_10043A514()
{
  v0 = sub_10043A010();
  if (v0)
  {
    v1 = v0;
    [v0 setHidden:1];
  }
}

char *sub_10043A604(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v4 = Strong;
  v5 = sub_10043A010();
  if (!v5)
  {

LABEL_6:
    v52 = 0u;
    v54 = 0u;
    v22 = 1;
    goto LABEL_7;
  }

  v6 = v5;
  result = [v4 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v8 = result;
  [v6 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v6 superview];
  [v8 convertRect:v17 fromView:{v10, v12, v14, v16}];
  v51 = v19;
  v53 = v18;
  v49 = v21;
  v50 = v20;

  v22 = 0;
  *&v23 = v51;
  *(&v23 + 1) = v49;
  v52 = v23;
  *&v23 = v53;
  *(&v23 + 1) = v50;
  v54 = v23;
LABEL_7:
  v24 = [a1 presentingViewController];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 traitCollection];

    v27 = [v26 horizontalSizeClass];
    v28 = v27 == 1;
  }

  else
  {
    v28 = 0;
  }

  v29 = type metadata accessor for BouncyToRectAnimation();
  v30 = objc_allocWithZone(v29);
  v31 = &v30[OBJC_IVAR____TtC20ProductPageExtension21BouncyToRectAnimation_toRect];
  *v31 = v54;
  *(v31 + 1) = v52;
  v31[32] = v22;
  v30[OBJC_IVAR____TtC20ProductPageExtension21BouncyToRectAnimation_shouldAnimateTabBar] = v28;
  v55.receiver = v30;
  v55.super_class = v29;
  v32 = objc_msgSendSuper2(&v55, "init");
  v33 = swift_allocObject();
  *(v33 + 16) = a1;
  v34 = OBJC_IVAR____TtC20ProductPageExtension27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v35 = *&v32[v34];
  v36 = a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v32[v34] = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_10049DEB4(0, *(v35 + 2) + 1, 1, v35);
    *&v32[v34] = v35;
  }

  v39 = *(v35 + 2);
  v38 = *(v35 + 3);
  if (v39 >= v38 >> 1)
  {
    v35 = sub_10049DEB4((v38 > 1), v39 + 1, 1, v35);
  }

  *(v35 + 2) = v39 + 1;
  v40 = &v35[24 * v39];
  *(v40 + 4) = sub_10043AE90;
  *(v40 + 5) = v33;
  v40[48] = 1;
  *&v32[v34] = v35;
  swift_endAccess();

  v41 = swift_allocObject();
  *(v41 + 16) = v1;
  *(v41 + 24) = v36;
  swift_beginAccess();
  v42 = *&v32[v34];
  v43 = v36;
  v44 = v1;

  v45 = swift_isUniquelyReferenced_nonNull_native();
  *&v32[v34] = v42;
  if ((v45 & 1) == 0)
  {
    v42 = sub_10049DEB4(0, *(v42 + 2) + 1, 1, v42);
    *&v32[v34] = v42;
  }

  v47 = *(v42 + 2);
  v46 = *(v42 + 3);
  if (v47 >= v46 >> 1)
  {
    v42 = sub_10049DEB4((v46 > 1), v47 + 1, 1, v42);
  }

  *(v42 + 2) = v47 + 1;
  v48 = &v42[24 * v47];
  *(v48 + 4) = sub_10043AED8;
  *(v48 + 5) = v41;
  v48[48] = 2;
  *&v32[v34] = v42;
  swift_endAccess();

  return v32;
}

void sub_10043A9D4(int a1, int a2, id a3)
{
  v3 = [a3 _existingPresentationControllerImmediate:1 effective:1];
  if (v3)
  {
    v9 = v3;
    type metadata accessor for ComponentViewOverflowPresentationController();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4;
      sub_1004A5914();
      v6 = v5 + OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_interactiveDismissal;
      swift_beginAccess();
      if (*(v6 + 24))
      {
        sub_10000A570(v6, v10);
        v7 = v11;
        v8 = v12;
        sub_10000CF78(v10, v11);
        (*(v8 + 24))(v7, v8);

        sub_10000CD74(v10);
        return;
      }
    }
  }
}

void sub_10043AAF0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_10043A010();
  if (v5)
  {
    v6 = v5;
    [v5 setHidden:0];
  }

  v7 = [a4 _existingPresentationControllerImmediate:1 effective:1];
  if (v7)
  {
    v8 = v7;
    type metadata accessor for ComponentViewOverflowPresentationController();
    if (swift_dynamicCastClass())
    {
      sub_1004A5A04();
    }
  }
}

id sub_10043ACC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComponentViewOverflowTransitioning(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ComponentViewOverflowTransitioning(uint64_t a1)
{
  result = qword_100957320;
  if (!qword_100957320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10043ADB0(uint64_t a1, uint64_t a2)
{
  sub_1002153E0(319, a2);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10043AE58()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10043AE98()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10043AEE0(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_10094DE60, "ܱ\b");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_10043AF48(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v4 = Strong;
  v5 = sub_10043A010();
  if (!v5)
  {

LABEL_6:
    v41 = 0u;
    v43 = 0u;
    v22 = 1;
    goto LABEL_7;
  }

  v6 = v5;
  result = [v4 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v8 = result;
  [v6 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v6 superview];
  [v8 convertRect:v17 fromView:{v10, v12, v14, v16}];
  v40 = v19;
  v42 = v18;
  v38 = v21;
  v39 = v20;

  v22 = 0;
  *&v23 = v40;
  *(&v23 + 1) = v38;
  v41 = v23;
  *&v23 = v42;
  *(&v23 + 1) = v39;
  v43 = v23;
LABEL_7:
  v24 = [a1 traitCollection];
  v25 = [v24 horizontalSizeClass];

  v26 = type metadata accessor for BouncyFromRectAnimation();
  v27 = objc_allocWithZone(v26);
  v28 = &v27[OBJC_IVAR____TtC20ProductPageExtension23BouncyFromRectAnimation_fromRect];
  *v28 = v43;
  *(v28 + 1) = v41;
  v28[32] = v22;
  v27[OBJC_IVAR____TtC20ProductPageExtension23BouncyFromRectAnimation_shouldAnimateTabBar] = v25 == 1;
  v44.receiver = v27;
  v44.super_class = v26;
  v29 = objc_msgSendSuper2(&v44, "init");
  v30 = swift_allocObject();
  *(v30 + 16) = v1;
  v31 = OBJC_IVAR____TtC20ProductPageExtension27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v32 = *&v29[v31];
  v33 = v1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v29[v31] = v32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v32 = sub_10049DEB4(0, *(v32 + 2) + 1, 1, v32);
    *&v29[v31] = v32;
  }

  v36 = *(v32 + 2);
  v35 = *(v32 + 3);
  if (v36 >= v35 >> 1)
  {
    v32 = sub_10049DEB4((v35 > 1), v36 + 1, 1, v32);
  }

  *(v32 + 2) = v36 + 1;
  v37 = &v32[24 * v36];
  *(v37 + 4) = sub_10043B1F8;
  *(v37 + 5) = v30;
  v37[48] = 0;
  *&v29[v31] = v32;
  swift_endAccess();

  return v29;
}

double sub_10043B250()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007601EC();
  sub_10043B474(&unk_100957330, &type metadata accessor for Screenshots, &protocol conformance descriptor for Screenshots);
  sub_10076332C();
  if (!v12[1])
  {
    return 0.0;
  }

  v12[0] = sub_1007601DC();
  v4 = sub_1007601CC();
  v5 = sub_100630CB4();
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  v6 = *(v1 + 8);
  v6(v3, v0);
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  v8 = v7;
  v6(v3, v0);
  sub_1003782D0(v12[0], v4, v5, 0.0, 0.0, v8);
  v10 = v9;

  swift_unknownObjectRelease();

  return v10;
}

uint64_t sub_10043B474(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard.unsafeMutableAddressor()
{
  if (qword_100940508 != -1)
  {
    swift_once();
  }

  v0 = sub_10076B3AC();

  return sub_10000A61C(v0, static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard);
}

char *sub_10043B524(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10076B3AC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v61 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_metrics;
  if (qword_100940508 != -1)
  {
    swift_once();
  }

  v15 = sub_10000A61C(v11, static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard);
  v60 = *(v12 + 16);
  v60(&v4[v14], v15, v11);
  v16 = OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_borderLabelViewPlacement;
  v17 = enum case for MetadataRibbonSecondaryViewPlacement.leading(_:);
  v18 = sub_10076A8CC();
  (*(*(v18 - 8) + 104))(&v5[v16], v17, v18);
  v19 = &v5[OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_id];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 4) = 0;
  v20 = OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_itemType;
  v21 = sub_1007668DC();
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  v22 = &v5[OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_labelMaxWidth];
  *v22 = 0;
  v22[8] = 1;
  v23 = &v5[OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_truncationLegibilityThreshold];
  *v23 = 0;
  v23[8] = 1;
  v5[OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_allowsTruncation] = 2;
  sub_1007626BC();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_descriptionLabel] = sub_10076269C();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_borderedLabel] = sub_10076269C();
  v65.receiver = v5;
  v65.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v65, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v28 = v24;
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v29 = OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_descriptionLabel;
  v30 = *&v28[OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_descriptionLabel];
  sub_1000325F0();
  v31 = v30;
  v32 = sub_100770D1C();
  [v31 setTextColor:v32];

  v33 = OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_borderedLabel;
  v34 = *&v28[OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_borderedLabel];
  v35 = sub_100770D1C();
  [v34 setTextColor:v35];

  v36 = *&v28[v29];
  v57 = OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_metrics;
  v37 = v61;
  v59 = v12 + 16;
  v60(v61, &v28[OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_metrics], v11);
  v38 = v36;
  v39 = sub_10076B39C();
  v40 = *(v12 + 8);
  v55 = v12 + 8;
  v56 = v40;
  v40(v37, v11);
  [v38 setNumberOfLines:v39];

  v58 = v29;
  v41 = *&v28[v29];
  sub_10076D84C();
  if (qword_10093F698 != -1)
  {
    swift_once();
  }

  v42 = sub_10076715C();
  v43 = sub_10000A61C(v42, qword_10099CE38);
  v63 = v42;
  v44 = sub_10018CD1C();
  v64 = v44;
  v45 = sub_10000DB7C(v62);
  v46 = *(*(v42 - 8) + 16);
  v46(v45, v43, v42);
  sub_1007625FC();

  v47 = *&v28[v33];
  v48 = v61;
  v60(v61, &v28[v57], v11);
  v49 = v47;
  v50 = sub_10076B38C();
  v56(v48, v11);
  [v49 setNumberOfLines:v50];

  v51 = *&v28[v33];
  sub_10076D84C();
  if (qword_10093F6B0 != -1)
  {
    swift_once();
  }

  v52 = sub_10000A61C(v42, qword_10099CE80);
  v63 = v42;
  v64 = v44;
  v53 = sub_10000DB7C(v62);
  v46(v53, v52, v42);
  sub_1007625FC();

  [*&v28[v33] setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
  [v28 addSubview:*&v28[v33]];
  [v28 addSubview:*&v28[v58]];

  return v28;
}

uint64_t sub_10043BB30()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10076D1FC();
  v20 = *(v2 - 8);
  v21 = v2;
  __chkstk_darwin(v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076B3AC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10076B3BC();
  v9 = *(v19 - 8);
  *&v10 = __chkstk_darwin(v19).n128_u64[0];
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28.receiver = v0;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, "layoutSubviews", v10);
  v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_borderedLabel];
  v26 = sub_1007626BC();
  v27 = &protocol witness table for UILabel;
  v24 = &protocol witness table for UILabel;
  v25 = v13;
  v14 = *&v0[OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_descriptionLabel];
  v23 = v26;
  v22 = v14;
  (*(v6 + 16))(v8, &v0[OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_metrics], v5);
  v15 = v13;
  v16 = v14;
  sub_10076B34C();
  sub_10076422C();
  sub_10076B36C();
  (*(v20 + 8))(v4, v21);
  return (*(v9 + 8))(v12, v19);
}

double sub_10043BE00(uint64_t a1, double a2, double a3)
{
  v4 = sub_10076B3AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076B3BC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_borderedLabel);
  v20 = sub_1007626BC();
  v21 = &protocol witness table for UILabel;
  v19[4] = &protocol witness table for UILabel;
  v19[5] = v12;
  v13 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_descriptionLabel);
  v19[3] = v20;
  v19[0] = v13;
  (*(v5 + 16))(v7, v3 + OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_metrics, v4);
  v14 = v12;
  v15 = v13;
  sub_10076B34C();
  sub_10076B35C();
  v17 = v16;
  (*(v9 + 8))(v11, v8);
  return v17;
}

id sub_10043C09C(uint64_t a1, uint64_t a2, uint64_t a3, NSString a4, uint64_t a5)
{
  v9 = sub_10076A8CC();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&v5[OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_descriptionLabel];
  if (a4)
  {
    a4 = sub_10076FF6C();
  }

  [v14 setText:{a4, v11}];

  (*(v10 + 16))(v13, a5, v9);
  v15 = OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_borderLabelViewPlacement;
  swift_beginAccess();
  (*(v10 + 24))(&v5[v15], v13, v9);
  swift_endAccess();
  [v5 setNeedsLayout];
  (*(v10 + 8))(v13, v9);
  v16 = *&v5[OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_borderedLabel];
  if (a2)
  {
    v17 = sub_10077001C();
  }

  else
  {
    v17 = 0;
  }

  [v16 setAttributedText:v17];

  return [v5 setNeedsLayout];
}

uint64_t sub_10043C3E0()
{
  v0 = sub_10076A8CC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007642CC();
  v6 = v5;
  v7 = sub_10076438C();
  v9 = v8;
  sub_10076433C();
  sub_10043C09C(v4, v6, v7, v9, v3);

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10043C504@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_itemType;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &qword_100943318, &qword_100799480);
}

uint64_t sub_10043C56C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_itemType;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v3, &qword_100943318, &qword_100799480);
  return swift_endAccess();
}

void sub_10043C648(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_labelMaxWidth;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

void sub_10043C714(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_truncationLegibilityThreshold;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t sub_10043C7D4()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_10043C818(char a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_allowsTruncation;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_10043C8C8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_id;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &qword_100943310, &unk_100784150);
}

uint64_t sub_10043C930(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_id;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v3, &qword_100943310, &unk_100784150);
  return swift_endAccess();
}

uint64_t sub_10043CA00()
{
  v0 = sub_10000A5D4(&unk_100942850, &unk_100784420);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8[-1] - v2;
  v4 = sub_10076B3AC();
  sub_10000DB18(v4, static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard);
  sub_10000A61C(v4, static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  sub_10075FECC();
  v8[3] = v0;
  v8[4] = sub_10001CE64();
  v5 = sub_10000DB7C(v8);
  (*(v1 + 16))(v5, v3, v0);
  sub_10076B37C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100940508 != -1)
  {
    swift_once();
  }

  v2 = sub_10076B3AC();
  v3 = sub_10000A61C(v2, static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView(uint64_t a1)
{
  result = qword_100957388;
  if (!qword_100957388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10043CC78(uint64_t a1)
{
  sub_10076B3AC();
  if (v1 <= 0x3F)
  {
    sub_10076A8CC();
    if (v2 <= 0x3F)
    {
      sub_100038324(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10043CDA8()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_metrics;
  if (qword_100940508 != -1)
  {
    swift_once();
  }

  v2 = sub_10076B3AC();
  v3 = sub_10000A61C(v2, static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  v4 = OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_borderLabelViewPlacement;
  v5 = enum case for MetadataRibbonSecondaryViewPlacement.leading(_:);
  v6 = sub_10076A8CC();
  (*(*(v6 - 8) + 104))(v0 + v4, v5, v6);
  v7 = v0 + OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_id;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0;
  v8 = OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_itemType;
  v9 = sub_1007668DC();
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  v10 = v0 + OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_labelMaxWidth;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v0 + OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_truncationLegibilityThreshold;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_allowsTruncation) = 2;
  sub_10077156C();
  __break(1u);
}

double sub_10043CF78(uint64_t a1, uint64_t a2, __n128 a3, double a4)
{
  v64 = a2;
  v57 = a1;
  v66 = sub_10076B3BC();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v63 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10076DA7C();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076DD3C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v51 - v11;
  __chkstk_darwin(v13);
  v15 = &v51 - v14;
  __chkstk_darwin(v16);
  v69 = &v51 - v17;
  v18 = sub_10076B3AC();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v55 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v51 - v22;
  if (qword_100940508 != -1)
  {
    swift_once();
  }

  v67 = v9;
  v24 = sub_10000A61C(v18, static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard);
  v60 = v19;
  v25 = *(v19 + 16);
  v62 = v18;
  v54 = v19 + 16;
  v53 = v25;
  v25(v23, v24, v18);
  sub_10076DD2C();
  sub_10076D84C();
  v68 = v23;
  if (qword_10093F6B0 != -1)
  {
    swift_once();
  }

  v26 = sub_10076715C();
  v27 = sub_10000A61C(v26, qword_10099CE80);
  v74 = v26;
  v28 = sub_10018CD1C();
  v75 = v28;
  v29 = sub_10000DB7C(&v73);
  v30 = *(*(v26 - 8) + 16);
  v30(v29, v27, v26);
  sub_10076DC8C();
  v56 = v7;
  v31 = *(v7 + 8);
  v31(v12, v6);
  sub_10000CD74(&v73);
  sub_10076B38C();
  sub_10076DD1C();
  v31(v15, v6);
  sub_10076DD2C();
  sub_10076D84C();
  if (qword_10093F698 != -1)
  {
    swift_once();
  }

  v32 = sub_10000A61C(v26, qword_10099CE38);
  v74 = v26;
  v75 = v28;
  v33 = sub_10000DB7C(&v73);
  v30(v33, v32, v26);
  sub_10076DC8C();
  v31(v12, v6);
  sub_10000CD74(&v73);
  sub_10076B39C();
  v34 = v67;
  sub_10076DD1C();
  v31(v15, v6);
  sub_1007642CC();
  v52 = v31;
  if (v35)
  {
    v36 = sub_10077001C();
  }

  else
  {
    v36 = 0;
  }

  sub_10076438C();
  v37 = *(v56 + 16);
  v37(v15, v34, v6);
  sub_10076DA5C();
  v38 = v58;
  sub_10076DA9C();
  v39 = v38;
  sub_10076DA4C();
  v40 = v6;
  v41 = *(v59 + 8);
  v42 = v61;
  v41(v39, v61);
  v37(v15, v69, v40);
  v43 = v36;
  sub_10076DA5C();
  sub_10076DABC();
  sub_10076DA4C();
  v41(v39, v42);
  sub_10000A570(v72, v71);
  sub_10000A570(&v73, v70);
  v44 = v68;
  v45 = v62;
  v53(v55, v68, v62);
  v46 = v63;
  sub_10076B34C();
  sub_10076B35C();
  v48 = v47;

  (*(v65 + 8))(v46, v66);
  sub_10000CD74(v72);
  sub_10000CD74(&v73);
  v49 = v52;
  v52(v67, v40);
  v49(v69, v40);
  (*(v60 + 8))(v44, v45);
  return v48;
}

uint64_t sub_10043D778(uint64_t a1, uint64_t a2, int *a3)
{
  if ((sub_1007621DC() & 1) == 0 || *(a1 + a3[5]) != *(a2 + a3[5]) || (sub_10075E05C() & 1) == 0)
  {
    return 0;
  }

  return sub_1007621DC();
}

uint64_t sub_10043D808(uint64_t a1, __n128 a2)
{
  v39 = a1;
  v3 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v36 = &v35 - v7;
  v8 = sub_10000A5D4(&unk_100957590, &qword_1007ACDC0);
  __chkstk_darwin(v8 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  v14 = sub_10000A5D4(&unk_1009575B8, &unk_1007A3320);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v35 - v16;
  v18 = OBJC_IVAR____TtC20ProductPageExtension42InteractiveSectionBackgroundScrollObserver_currentState;
  swift_beginAccess();
  v19 = *(v15 + 56);
  v38 = v2;
  sub_100016E2C(v2 + v18, v17, &unk_100957590, &qword_1007ACDC0);
  sub_100016E2C(v39, &v17[v19], &unk_100957590, &qword_1007ACDC0);
  v20 = *(v4 + 48);
  if (v20(v17, 1, v3) == 1)
  {
    if (v20(&v17[v19], 1, v3) == 1)
    {
      return sub_10000CFBC(v17, &unk_100957590, &qword_1007ACDC0);
    }

    goto LABEL_6;
  }

  sub_100016E2C(v17, v13, &unk_100957590, &qword_1007ACDC0);
  if (v20(&v17[v19], 1, v3) == 1)
  {
    sub_10021C73C(v13, v22);
LABEL_6:
    v23 = &unk_1009575B8;
    v24 = &unk_1007A3320;
    goto LABEL_13;
  }

  v25 = v36;
  sub_100440F74(&v17[v19], v36);
  if (sub_1007621DC())
  {
    v27 = *(v3 + 20);
    v26.n128_u64[0] = *&v13[v27];
    if (v26.n128_f64[0] == *(v25 + v27) && (sub_10075E05C() & 1) != 0)
    {
      v28 = sub_1007621DC();
      sub_10021C73C(v25, v29);
      sub_10021C73C(v13, v30);
      result = sub_10000CFBC(v17, &unk_100957590, &qword_1007ACDC0);
      if (v28)
      {
        return result;
      }

      goto LABEL_14;
    }
  }

  sub_10021C73C(v25, v26);
  sub_10021C73C(v13, v31);
  v23 = &unk_100957590;
  v24 = &qword_1007ACDC0;
LABEL_13:
  sub_10000CFBC(v17, v23, v24);
LABEL_14:
  sub_100016E2C(v38 + v18, v10, &unk_100957590, &qword_1007ACDC0);
  if (v20(v10, 1, v3) == 1)
  {
    return sub_10000CFBC(v10, &unk_100957590, &qword_1007ACDC0);
  }

  v32 = v37;
  sub_100440F74(v10, v37);
  sub_10043DC18(v32, v33);
  return sub_10021C73C(v32, v34);
}

uint64_t sub_10043DBEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B62C();
  *a1 = result;
  return result;
}

uint64_t sub_10043DC18(uint64_t a1, uint64_t a2)
{
  v2 = sub_10075E11C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  sub_10075E0AC();
  sub_10075E08C();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v7 = Strong, type metadata accessor for InteractiveSectionBackgroundView(0), sub_1007708EC(), v8 = sub_10076FF6C(), , isa = sub_10075E02C().super.isa, v10 = [v7 _visibleDecorationViewOfKind:v8 atIndexPath:isa], v7, v8, isa, !v10) || (*&v18[0] = v10, sub_100440FD8(), sub_10000A5D4(&unk_1009575E0, qword_1007A3338), (swift_dynamicCast() & 1) == 0))
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
  }

  sub_10043DED8(v20);
  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11 || (v12 = v11, v13 = UICollectionElementKindSectionHeader, v14 = sub_10075E02C().super.isa, v15 = [v12 _visibleSupplementaryViewOfKind:v13 atIndexPath:v14], v12, v13, v14, !v15) || (v17[1] = v15, sub_100440FD8(), sub_10000A5D4(&unk_1009575E0, qword_1007A3338), (swift_dynamicCast() & 1) == 0))
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
  }

  sub_10043DED8(v18);
  (*(v3 + 8))(v5, v2);
  sub_10000CFBC(v18, &unk_1009575D0, &qword_10079E290);
  return sub_10000CFBC(v20, &unk_1009575D0, &qword_10079E290);
}

uint64_t sub_10043DED8(uint64_t a1)
{
  v60 = sub_10000A5D4(&unk_1009575B8, &unk_1007A3320);
  __chkstk_darwin(v60);
  v61 = &v54 - v3;
  v4 = sub_10000A5D4(&unk_100957590, &qword_1007ACDC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v54 - v8;
  __chkstk_darwin(v10);
  v12 = &v54 - v11;
  __chkstk_darwin(v13);
  v15 = (&v54 - v14);
  v16 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v54 - v21;
  sub_100016E2C(a1, &v62, &unk_1009575D0, &qword_10079E290);
  if (!v63)
  {
    return sub_10000CFBC(&v62, &unk_1009575D0, &qword_10079E290);
  }

  v58 = v12;
  v59 = v22;
  sub_100012498(&v62, v65);
  v23 = OBJC_IVAR____TtC20ProductPageExtension42InteractiveSectionBackgroundScrollObserver_currentState;
  swift_beginAccess();
  sub_100016E2C(v1 + v23, v15, &unk_100957590, &qword_1007ACDC0);
  v24 = *(v17 + 48);
  if (v24(v15, 1, v16) == 1)
  {
    v25 = &unk_100957590;
    v26 = &qword_1007ACDC0;
    v27 = v15;
LABEL_21:
    sub_10000CFBC(v27, v25, v26);
    return sub_10000CD74(v65);
  }

  v54 = v19;
  v55 = v6;
  v56 = a1;
  v57 = v1;
  v29 = v59;
  sub_100440F74(v15, v59);
  v30 = v66;
  v31 = v67;
  sub_10000CF78(v65, v66);
  v32 = v58;
  v33.n128_f64[0] = (*(v31 + 8))(v30, v31);
  sub_10021C620(v29, v9, v33);
  (*(v17 + 56))(v9, 0, 1, v16);
  v34 = v61;
  v35 = *(v60 + 48);
  sub_100016E2C(v32, v61, &unk_100957590, &qword_1007ACDC0);
  sub_100016E2C(v9, v34 + v35, &unk_100957590, &qword_1007ACDC0);
  if (v24(v34, 1, v16) == 1)
  {
    sub_10000CFBC(v9, &unk_100957590, &qword_1007ACDC0);
    sub_10000CFBC(v32, &unk_100957590, &qword_1007ACDC0);
    if (v24((v34 + v35), 1, v16) == 1)
    {
      sub_10000CFBC(v34, &unk_100957590, &qword_1007ACDC0);
LABEL_8:
      sub_10021C73C(v59, v36);
      return sub_10000CD74(v65);
    }

    goto LABEL_11;
  }

  v37 = v55;
  sub_100016E2C(v34, v55, &unk_100957590, &qword_1007ACDC0);
  if (v24((v34 + v35), 1, v16) == 1)
  {
    sub_10000CFBC(v9, &unk_100957590, &qword_1007ACDC0);
    sub_10000CFBC(v58, &unk_100957590, &qword_1007ACDC0);
    sub_10021C73C(v37, v38);
LABEL_11:
    sub_10000CFBC(v34, &unk_1009575B8, &unk_1007A3320);
    v39 = v57;
    goto LABEL_18;
  }

  v40 = v54;
  sub_100440F74(v34 + v35, v54);
  v41 = sub_1007621DC();
  v39 = v57;
  if (v41 & 1) != 0 && (v43 = *(v16 + 20), v42.n128_u64[0] = *(v37 + v43), v42.n128_f64[0] == *(v40 + v43)) && (sub_10075E05C())
  {
    v44 = sub_1007621DC();
    sub_10021C73C(v40, v45);
    sub_10000CFBC(v9, &unk_100957590, &qword_1007ACDC0);
    sub_10000CFBC(v58, &unk_100957590, &qword_1007ACDC0);
    sub_10021C73C(v37, v46);
    sub_10000CFBC(v34, &unk_100957590, &qword_1007ACDC0);
    if (v44)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_10021C73C(v40, v42);
    sub_10000CFBC(v9, &unk_100957590, &qword_1007ACDC0);
    sub_10000CFBC(v58, &unk_100957590, &qword_1007ACDC0);
    sub_10021C73C(v37, v47);
    sub_10000CFBC(v34, &unk_100957590, &qword_1007ACDC0);
  }

LABEL_18:
  sub_100016E2C(v56, &v62, &unk_1009575D0, &qword_10079E290);
  v49 = v63;
  if (!v63)
  {
    sub_10021C73C(v59, v48);
    v25 = &unk_1009575D0;
    v26 = &qword_10079E290;
    v27 = &v62;
    goto LABEL_21;
  }

  v50 = v64;
  sub_10000CF78(&v62, v63);
  v51 = *(v39 + OBJC_IVAR____TtC20ProductPageExtension42InteractiveSectionBackgroundScrollObserver_objectGraph);
  v52 = v59;
  v53.n128_f64[0] = (*(v50 + 16))(v59, v51, v49, v50);
  sub_10021C73C(v52, v53);
  sub_10000CD74(&v62);
  return sub_10000CD74(v65);
}

uint64_t sub_10043E4F4()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension42InteractiveSectionBackgroundScrollObserver_shelfLayoutContext;
  v2 = sub_10076469C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectWeakDestroy();

  sub_10000CFBC(v0 + OBJC_IVAR____TtC20ProductPageExtension42InteractiveSectionBackgroundScrollObserver_currentState, &unk_100957590, &qword_1007ACDC0);

  return swift_deallocClassInstance();
}

void sub_10043E5F8(uint64_t a1)
{
  sub_10076469C();
  if (v2 <= 0x3F)
  {
    sub_10021B8CC(319, v1);
    if (v3 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10043E710(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = sub_1007621EC();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = sub_10075E11C();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10043E814(uint64_t a1, uint64_t a2, int a3, uint64_t a4, __n128 a5)
{
  v9 = sub_1007621EC();
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, v9);
  }

  else
  {
    v13 = sub_10075E11C();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + *(a4 + 24);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_10043E910(uint64_t a1, __n128 a2)
{
  result = sub_1007621EC();
  if (v3 <= 0x3F)
  {
    result = sub_10075E11C();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10043E9AC()
{
  result = qword_100957588;
  if (!qword_100957588)
  {
    type metadata accessor for InteractiveSectionBackgroundScrollObserver(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957588);
  }

  return result;
}

double sub_10043EA04(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10043FD38(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_10043EA80(v6);
  sub_1007714DC();
  return result;
}

void sub_10043EA80(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_10077162C(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000A5D4(&qword_100948BB0, &qword_1007A3330);
        v6 = sub_10077023C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_10043EDB8(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10043EB90(0, v2, 1, a1);
  }
}

void sub_10043EB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = sub_10075E11C();
  __chkstk_darwin(v33);
  v32 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  v28 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v34 = *a4;
    v14 = v34 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v30 = v14;
    v31 = a3;
    v16 = *(v34 + 8 * a3);
    v29 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v19 = [v16 indexPath];
      sub_10075E06C();

      v20 = [v18 indexPath];
      v21 = v32;
      sub_10075E06C();

      LOBYTE(v20) = sub_10075E04C();
      v22 = *v13;
      v23 = v21;
      v24 = v33;
      (*v13)(v23, v33);
      v22(v12, v24);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if ((v20 & 1) == 0)
      {
LABEL_4:
        a3 = v31 + 1;
        v14 = v30 + 8;
        v15 = v29 - 1;
        if (v31 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v25;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_10043EDB8(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v111 = a1;
  v120 = sub_10075E11C();
  __chkstk_darwin(v120);
  v119 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v118 = &v105 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v111;
    if (!*v111)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v100 = a4;
    }

    else
    {
LABEL_121:
      v100 = sub_10043FB64(a4);
    }

    v121 = v100;
    v101 = *(v100 + 2);
    if (v101 >= 2)
    {
      while (*v16)
      {
        a4 = *&v100[16 * v101];
        v102 = v100;
        v103 = *&v100[16 * v101 + 24];
        sub_10043F640((*v16 + 8 * a4), (*v16 + 8 * *&v100[16 * v101 + 16]), (*v16 + 8 * v103), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v103 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_10043FB64(v102);
        }

        if (v101 - 2 >= *(v102 + 2))
        {
          goto LABEL_115;
        }

        v104 = &v102[16 * v101];
        *v104 = a4;
        v104[1] = v103;
        v121 = v102;
        sub_10043FAD8(v101 - 1);
        v100 = v121;
        v101 = *(v121 + 2);
        if (v101 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v117 = (v11 + 8);
  v15 = _swiftEmptyArrayStorage;
  v110 = a4;
  v106 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v115 = v13;
      v108 = v15;
      v109 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v114 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v21 = [v18 indexPath];
      v22 = v118;
      sub_10075E06C();

      v23 = [v20 indexPath];
      v24 = v119;
      sub_10075E06C();

      LODWORD(v116) = sub_10075E04C();
      v25 = *v117;
      v26 = v120;
      (*v117)(v24, v120);
      v25(v22, v26);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v107 = v16;
      v27 = (v16 + 2);
      while (1)
      {
        v14 = v115;
        if (v115 == v27)
        {
          break;
        }

        v28 = *(v5 - 8);
        v29 = *v5;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v30 = [v29 indexPath];
        v31 = v118;
        sub_10075E06C();

        v32 = [v28 indexPath];
        v33 = v119;
        sub_10075E06C();

        LODWORD(v32) = sub_10075E04C() & 1;
        v34 = v33;
        v35 = v120;
        v25(v34, v120);
        v25(v31, v35);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        ++v27;
        v5 += 8;
        if ((v116 & 1) != v32)
        {
          v14 = (v27 - 1);
          break;
        }
      }

      v15 = v108;
      v6 = v109;
      a4 = v110;
      v16 = v107;
      v36 = v114;
      if (v116)
      {
        if (v14 < v107)
        {
          goto LABEL_118;
        }

        a3 = v106;
        if (v107 < v14)
        {
          v37 = 8 * v14 - 8;
          v38 = v14;
          v39 = v107;
          do
          {
            if (v39 != --v38)
            {
              v41 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v40 = *(v41 + v36);
              *(v41 + v36) = *(v41 + v37);
              *(v41 + v37) = v40;
            }

            v39 = (v39 + 1);
            v37 -= 8;
            v36 += 8;
          }

          while (v39 < v38);
        }
      }

      else
      {
        a3 = v106;
      }
    }

    v42 = a3[1];
    if (v14 < v42)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v43 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v43 >= v42)
        {
          v43 = a3[1];
        }

        if (v43 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v43)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v56 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v56;
    }

    else
    {
      v15 = sub_10049D820(0, *(v56 + 2) + 1, 1, v56);
    }

    a4 = *(v15 + 2);
    v57 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v57 >> 1)
    {
      v15 = sub_10049D820((v57 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v58 = &v15[16 * a4];
    *(v58 + 4) = v16;
    *(v58 + 5) = v14;
    v59 = *v111;
    if (!*v111)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v60 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v61 = *(v15 + 4);
          v62 = *(v15 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_56:
          if (v64)
          {
            goto LABEL_105;
          }

          v77 = &v15[16 * v5];
          v79 = *v77;
          v78 = *(v77 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_108;
          }

          v83 = &v15[16 * v60 + 32];
          v85 = *v83;
          v84 = *(v83 + 1);
          v71 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v71)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v81, v86))
          {
            goto LABEL_112;
          }

          if (v81 + v86 >= v63)
          {
            if (v63 < v86)
            {
              v60 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v87 = &v15[16 * v5];
        v89 = *v87;
        v88 = *(v87 + 1);
        v71 = __OFSUB__(v88, v89);
        v81 = v88 - v89;
        v82 = v71;
LABEL_70:
        if (v82)
        {
          goto LABEL_107;
        }

        v90 = &v15[16 * v60];
        v92 = *(v90 + 4);
        v91 = *(v90 + 5);
        v71 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v71)
        {
          goto LABEL_110;
        }

        if (v93 < v81)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v60 - 1;
        if (v60 - 1 >= v5)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v98 = v15;
        v5 = *&v15[16 * a4 + 32];
        v16 = *&v15[16 * v60 + 40];
        sub_10043F640((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v60 + 32]), (*a3 + 8 * v16), v59);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_10043FB64(v98);
        }

        if (a4 >= *(v98 + 2))
        {
          goto LABEL_102;
        }

        v99 = &v98[16 * a4];
        *(v99 + 4) = v5;
        *(v99 + 5) = v16;
        v121 = v98;
        a4 = &v121;
        sub_10043FAD8(v60);
        v15 = v121;
        v5 = *(v121 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v65 = &v15[16 * v5 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_103;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_104;
      }

      v72 = &v15[16 * v5];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_106;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_109;
      }

      if (v76 >= v68)
      {
        v94 = &v15[16 * v60 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_113;
        }

        if (v63 < v97)
        {
          v60 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v110;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v108 = v15;
  v109 = v6;
  v116 = *a3;
  v44 = v116 + 8 * v14 - 8;
  v107 = v16;
  a4 = v16 - v14;
  v112 = v43;
LABEL_29:
  v114 = v44;
  v115 = v14;
  v5 = *(v116 + 8 * v14);
  v113 = a4;
  v45 = v44;
  while (1)
  {
    v46 = *v45;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v47 = [v5 indexPath];
    v48 = v118;
    sub_10075E06C();

    v49 = [v46 indexPath];
    v50 = v119;
    sub_10075E06C();

    LOBYTE(v49) = sub_10075E04C();
    v51 = *v117;
    v52 = v50;
    v53 = v120;
    (*v117)(v52, v120);
    v51(v48, v53);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v49 & 1) == 0)
    {
LABEL_28:
      v14 = v115 + 1;
      v44 = v114 + 8;
      a4 = v113 - 1;
      if ((v115 + 1) != v112)
      {
        goto LABEL_29;
      }

      v14 = v112;
      v15 = v108;
      v6 = v109;
      a3 = v106;
      v16 = v107;
      goto LABEL_36;
    }

    if (!v116)
    {
      break;
    }

    v54 = *v45;
    v5 = *(v45 + 8);
    *v45 = v5;
    *(v45 + 8) = v54;
    v45 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_10043F640(void **a1, void **a2, void **a3, void **a4)
{
  v51 = sub_10075E11C();
  v8 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v49 = &v45 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v52 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v54 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v52)
    {
      v46 = a4;
      v47 = (v8 + 8);
LABEL_27:
      v45 = a1;
      v29 = a1 - 1;
      v30 = (a3 - 1);
      v31 = v54;
      v48 = a1 - 1;
      do
      {
        v53 = v30;
        v32 = (v30 + 8);
        v33 = *--v31;
        v34 = *v29;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v35 = [v33 indexPath];
        v36 = v49;
        sub_10075E06C();

        v37 = [v34 indexPath];
        v38 = v50;
        sub_10075E06C();

        LOBYTE(v37) = sub_10075E04C();
        v39 = *v47;
        v40 = v38;
        v41 = v51;
        (*v47)(v40, v51);
        v39(v36, v41);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v37)
        {
          a4 = v46;
          a3 = v53;
          v43 = v48;
          if (v32 != v45)
          {
            *v53 = *v48;
          }

          if (v54 <= a4 || (a1 = v43, v43 <= v52))
          {
            a1 = v43;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v46;
        v42 = v53;
        if (v32 != v54)
        {
          *v53 = *v31;
        }

        v30 = v42 - 8;
        v54 = v31;
        v29 = v48;
      }

      while (v31 > a4);
      v54 = v31;
      a1 = v45;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v54 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v52 = a1;
        v17 = *a2;
        v18 = *a4;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v19 = [v17 indexPath];
        v20 = v49;
        sub_10075E06C();

        v21 = [v18 indexPath];
        v22 = v50;
        sub_10075E06C();

        LOBYTE(v21) = sub_10075E04C();
        v23 = *v16;
        v24 = v22;
        v25 = v51;
        (*v16)(v24, v51);
        v23(v20, v25);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if ((v21 & 1) == 0)
        {
          break;
        }

        v26 = a2;
        v27 = v52;
        v28 = v52 == a2++;
        if (!v28)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v27 + 1;
        if (a4 >= v54 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v26 = a4;
      v27 = v52;
      v28 = v52 == a4++;
      if (v28)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v27 = *v26;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v54 - a4 + (v54 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v54 - a4));
  }

  return 1;
}

uint64_t sub_10043FAD8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10043FB64(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_10043FB78(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A5D4(&qword_1009575C8, &qword_1007A5E40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_10043FC7C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_10077158C();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v5 = v3;
  v6 = sub_1004A01D4(v4);
  sub_1000FB6F4((v6 + 4), v5, a1);
  v8 = v7;

  result = v6;
  if (v8 != v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_10043FD4C(char **a1, double a2)
{
  v115 = a1;
  v4 = sub_10000A5D4(&unk_100957590, &qword_1007ACDC0);
  __chkstk_darwin(v4 - 8);
  v113 = v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v112 = v109 - v7;
  v128 = sub_10075E11C();
  v122 = *(v128 - 8);
  __chkstk_darwin(v128);
  v121 = v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v114 = v109 - v10;
  __chkstk_darwin(v11);
  v118 = v109 - v12;
  __chkstk_darwin(v13);
  v119 = v109 - v14;
  __chkstk_darwin(v15);
  v120 = v109 - v16;
  v130 = sub_1007621EC();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v111 = v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v117 = v109 - v19;
  __chkstk_darwin(v20);
  v116 = v109 - v21;
  __chkstk_darwin(v22);
  v127 = (v109 - v23);
  __chkstk_darwin(v24);
  v126 = v109 - v25;
  v125 = sub_10076C38C();
  v134 = *(v125 - 1);
  __chkstk_darwin(v125);
  v27 = v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10076469C();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = v109 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v123 = *(v132 - 8);
  v32 = __chkstk_darwin(v132);
  v131 = v109 - v33;
  v34 = OBJC_IVAR____TtC20ProductPageExtension42InteractiveSectionBackgroundScrollObserver_shelfLayoutContext;
  v35 = *(v29 + 16);
  v133 = v2;
  v35(v31, v2 + OBJC_IVAR____TtC20ProductPageExtension42InteractiveSectionBackgroundScrollObserver_shelfLayoutContext, v28, v32);
  v124 = v35;
  sub_10076468C();
  v36 = *(v29 + 8);
  v36(v31, v28);
  (v35)(v31, v2 + v34, v28);
  sub_10076460C();
  v36(v31, v28);
  sub_10076C31C();
  v38 = v37;
  v39 = *(v134 + 8);
  v134 += 8;
  v40 = v125;
  v39(v27, v125);
  v124(v31, v133 + v34, v28);
  sub_10076460C();
  v36(v31, v28);
  sub_10076C2BC();
  v42 = v41;
  v39(v27, v40);
  v43 = v131;
  v44 = v132;
  swift_getKeyPath();
  sub_10076F49C();

  v134 = v140;
  swift_getKeyPath();
  v45 = v126;
  sub_10076F49C();

  v46 = v129;
  v47 = v129 + 104;
  v48 = *(v129 + 104);
  v49 = v127;
  v50 = v130;
  v48(v127, enum case for ShelfBackground.interactive(_:), v130);
  LOBYTE(v34) = sub_1007621DC();
  v53 = *(v46 + 8);
  v51 = v46 + 8;
  v52 = v53;
  (v53)(v49, v50);
  (v53)(v45, v50);
  if ((v34 & 1) == 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    (*(v123 + 8))(v43, v44);
    return;
  }

  v55 = Strong;
  v109[2] = v47;

  v140 = sub_10043FC7C(v56);
  sub_10043EA04(&v140);
  v110 = v48;
  v57 = v140;
  v58 = v134;
  v125 = v55;
  if (v140 < 0 || (v140 & 0x4000000000000000) != 0)
  {
LABEL_58:
    v59 = sub_10077158C();
  }

  else
  {
    v59 = *(v140 + 16);
  }

  v124 = v51;
  v115 = v52;
  if (!v59)
  {
    v127 = _swiftEmptyArrayStorage;
LABEL_30:

    if (!v127[2])
    {

LABEL_55:
      (*(v123 + 8))(v131, v132);
      return;
    }

    v71 = v122;
    v72 = v127 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
    v73 = v114;
    v74 = v128;
    v126 = *(v122 + 16);
    (v126)(v114, v72, v128);

    v75 = v118;
    (*(v71 + 32))(v118, v73, v74);
    if (__OFADD__(sub_10075E09C(), v58))
    {
      goto LABEL_61;
    }

    sub_10075E0AC();
    sub_10075E08C();
    swift_getKeyPath();
    sub_10076F49C();

    v76 = *(v140 + 16);

    v77 = sub_10075E09C();
    v78 = v130;
    v79 = v117;
    if ((v77 & 0x8000000000000000) == 0 && v77 < v76)
    {
      swift_getKeyPath();
      sub_10076F49C();

      v80 = v139;
      v81 = sub_10075E09C();
      if ((v81 & 0x8000000000000000) != 0)
      {
        goto LABEL_62;
      }

      if (v81 >= *(v80 + 16))
      {
        goto LABEL_64;
      }

      sub_10000A570(v80 + 40 * v81 + 32, v138);

      sub_10000A5D4(&qword_1009575A0, &unk_100784980);
      sub_10000A5D4(&qword_1009575A8, &qword_1007A3310);
      if (swift_dynamicCast())
      {
        sub_100012498(&v135, &v140);
        sub_10000CF78(&v140, v141);
        sub_100767BDC();
        sub_10000CD74(&v140);
LABEL_41:
        swift_getKeyPath();
        sub_10076F49C();

        v82 = *(v140 + 16);

        v83 = sub_10075E09C();
        if ((v83 & 0x8000000000000000) == 0 && v83 < v82)
        {
          swift_getKeyPath();
          sub_10076F49C();

          v84 = v139;
          v85 = sub_10075E09C();
          if ((v85 & 0x8000000000000000) != 0)
          {
            goto LABEL_63;
          }

          if (v85 >= *(v84 + 16))
          {
            goto LABEL_65;
          }

          sub_10000A570(v84 + 40 * v85 + 32, v138);

          sub_10000A5D4(&qword_1009575A0, &unk_100784980);
          sub_10000A5D4(&qword_1009575A8, &qword_1007A3310);
          if (swift_dynamicCast())
          {
            sub_100012498(&v135, &v140);
            sub_10000CF78(&v140, v141);
            sub_100767BDC();
            sub_10000CD74(&v140);
            v86 = enum case for ShelfBackground.none(_:);
LABEL_49:
            v87 = v129;
            v88 = *(v129 + 16);
            v89 = v111;
            v88(v111, v79, v78);
            LODWORD(v87) = (*(v87 + 88))(v89, v78);
            (v115)(v89, v78);
            v90 = 1.0;
            if (v87 == v86)
            {
              v91 = v126;
            }

            else
            {
              v92 = [v125 collectionViewLayout];
              isa = sub_10075E02C().super.isa;
              v94 = [v92 layoutAttributesForItemAtIndexPath:isa];

              v91 = v126;
              if (v94)
              {
                [v94 frame];
                v95 = CGRectGetMinX(v144) - v38 - a2;
                [v94 frame];
                Width = CGRectGetWidth(v145);

                v90 = (v95 + v42 + Width) / (v42 + Width);
                if (v90 >= 1.0)
                {
                  v90 = 1.0;
                }
              }
            }

            v97 = v112;
            v98 = v116;
            v88(v112, v116, v78);
            v99 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
            v100 = v75;
            v101 = v128;
            v91(v97 + v99[6], v100, v128);
            v102 = v117;
            v88((v97 + v99[7]), v117, v78);
            *(v97 + v99[5]) = v90;
            (*(*(v99 - 1) + 56))(v97, 0, 1, v99);
            v103 = OBJC_IVAR____TtC20ProductPageExtension42InteractiveSectionBackgroundScrollObserver_currentState;
            v104 = v133;
            swift_beginAccess();
            v105 = v113;
            sub_100016E2C(v104 + v103, v113, &unk_100957590, &qword_1007ACDC0);
            swift_beginAccess();
            sub_100440F04(v97, v104 + v103);
            swift_endAccess();
            sub_10043D808(v105, v106);

            sub_10000CFBC(v105, &unk_100957590, &qword_1007ACDC0);
            sub_10000CFBC(v97, &unk_100957590, &qword_1007ACDC0);
            v107 = v115;
            (v115)(v102, v78);
            (v107)(v98, v78);
            v108 = *(v122 + 8);
            v108(v121, v101);
            v108(v118, v101);
            goto LABEL_55;
          }

          v137 = 0;
          v135 = 0u;
          v136 = 0u;
          sub_10000CFBC(&v135, &qword_1009575B0, &qword_1007A3318);
        }

        v86 = enum case for ShelfBackground.none(_:);
        v110(v79, enum case for ShelfBackground.none(_:), v78);
        goto LABEL_49;
      }

      v137 = 0;
      v135 = 0u;
      v136 = 0u;
      sub_10000CFBC(&v135, &qword_1009575B0, &qword_1007A3318);
    }

    v110(v116, enum case for ShelfBackground.none(_:), v78);
    goto LABEL_41;
  }

  if (v59 < 1)
  {
    goto LABEL_60;
  }

  v60 = 0;
  v51 = v57 & 0xC000000000000001;
  v126 = (v122 + 8);
  v109[1] = v122 + 32;
  v127 = _swiftEmptyArrayStorage;
  v52 = &selRef_initWithTabBarSystemItem_tag_;
  while (1)
  {
    if (v51)
    {
      v61 = sub_10077149C();
    }

    else
    {
      v61 = *(v57 + 8 * v60 + 32);
      swift_unknownObjectRetain();
    }

    if ([v61 representedElementCategory])
    {
      goto LABEL_20;
    }

    [v61 frame];
    v62 = CGRectGetMinX(v142) - v42 - a2;
    [v61 frame];
    v63 = CGRectGetMaxX(v143) - a2;
    if (v62 > v63)
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (v62 > v38 || v38 >= v63)
    {
      goto LABEL_20;
    }

    v64 = [v61 indexPath];
    v65 = v120;
    sub_10075E06C();

    v66 = sub_10075E09C();
    (*v126)(v65, v128);
    if (!v58)
    {
      goto LABEL_57;
    }

    if (v66 == 0x8000000000000000 && v58 == -1)
    {
      break;
    }

    if (!(v66 % v58))
    {
      v67 = [v61 indexPath];
      sub_10075E06C();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v127 = sub_10049DE8C(0, v127[2] + 1, 1, v127);
      }

      v69 = v127[2];
      v68 = v127[3];
      if (v69 >= v68 >> 1)
      {
        v127 = sub_10049DE8C((v68 > 1), v69 + 1, 1, v127);
      }

      swift_unknownObjectRelease();
      v70 = v127;
      v127[2] = v69 + 1;
      (*(v122 + 32))(v70 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v69, v119, v128);
      goto LABEL_21;
    }

LABEL_20:
    swift_unknownObjectRelease();
LABEL_21:
    if (v59 == ++v60)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);

  __break(1u);
}

uint64_t sub_100440ED0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B62C();
  *a1 = result;
  return result;
}

uint64_t sub_100440F04(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100957590, &qword_1007ACDC0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100440F74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100440FD8()
{
  result = qword_100950650;
  if (!qword_100950650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100950650);
  }

  return result;
}

void sub_100441024(void *a1)
{
  sub_100443D5C();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v1 contentView];
    [v4 addSubview:v3];

    [v1 setNeedsLayout];
  }
}

void sub_1004410D4()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "prepareForReuse");
  v2 = *(*&v0[OBJC_IVAR____TtC20ProductPageExtension29AppShowcaseCollectionViewCell_lockupView] + OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_iconView);
  v10.value.super.isa = 0;
  v10.is_nil = 0;
  sub_10075FCEC(v10, v3);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong setHidden:1];
  }

  [v1 setNeedsLayout];
  sub_100443D5C();
  swift_unknownObjectWeakAssign();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = [v1 contentView];
    [v8 addSubview:v7];

    [v1 setNeedsLayout];
  }
}

uint64_t sub_1004411F4()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_1009575F0);
  sub_10000A61C(v4, qword_1009575F0);
  if (qword_100940F80 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1C78);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

double sub_1004413C8()
{
  v0 = sub_10076D39C();
  sub_10000DB18(v0, qword_100957608);
  sub_10000A61C(v0, qword_100957608);
  sub_10076D3AC();
  return result;
}

char *sub_10044141C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC20ProductPageExtension29AppShowcaseCollectionViewCell_itemLayoutContext;
  v11 = sub_10076341C();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC20ProductPageExtension29AppShowcaseCollectionViewCell_lockupView;
  *&v4[v12] = [objc_allocWithZone(type metadata accessor for AppShowcaseLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC20ProductPageExtension29AppShowcaseCollectionViewCell_showcaseType;
  v14 = enum case for AppShowcaseType.large(_:);
  v15 = sub_10075ECCC();
  (*(*(v15 - 8) + 104))(&v4[v13], v14, v15);
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v17 = [v16 contentView];
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v18 = [v16 contentView];
  [v18 addSubview:*&v16[OBJC_IVAR____TtC20ProductPageExtension29AppShowcaseCollectionViewCell_lockupView]];

  return v16;
}

void (*sub_100441770(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension29AppShowcaseCollectionViewCell_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1004417C4;
}

void sub_1004417C4(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_100443D5C();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [v2 contentView];
      [v6 addSubview:v5];

      [v2 setNeedsLayout];
    }

    v9 = v3;
  }

  else
  {
    v9 = *a1;
    sub_100443D5C();
    swift_unknownObjectWeakAssign();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      goto LABEL_8;
    }

    v3 = v7;
    v8 = [v2 contentView];
    [v8 addSubview:v3];

    [v2 setNeedsLayout];
  }

LABEL_8:
}

uint64_t sub_1004418EC(__n128 a1)
{
  v1 = sub_10076481C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_10076D39C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_5;
  }

  v13 = qword_1009A2558;
  v14 = Strong;
  swift_beginAccess();
  (*(v2 + 16))(v4, &v14[v13], v1);

  sub_10076476C();
  (*(v2 + 8))(v4, v1);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
LABEL_5:
    sub_10000CFBC(v7, &unk_1009467E0, qword_10078CB50);
    v15 = 0;
    return v15 & 1;
  }

  (*(v9 + 32))(v11, v7, v8);
  v15 = sub_10076D2FC();
  (*(v9 + 8))(v11, v8);
  return v15 & 1;
}

void sub_100441BE4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v124 = sub_10077164C();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v122 = &v122 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_10076481C();
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v129 = &v122 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v5 - 8);
  v137 = &v122 - v6;
  v139 = sub_10076D39C();
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v128 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10075ECCC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v126 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v125 = &v122 - v12;
  __chkstk_darwin(v13);
  v136 = &v122 - v14;
  __chkstk_darwin(v15);
  v135 = &v122 - v16;
  __chkstk_darwin(v17);
  *&v144 = &v122 - v18;
  __chkstk_darwin(v19);
  v127 = &v122 - v20;
  __chkstk_darwin(v21);
  *&v132 = &v122 - v22;
  __chkstk_darwin(v23);
  v142 = &v122 - v24;
  __chkstk_darwin(v25);
  v27 = &v122 - v26;
  __chkstk_darwin(v28);
  v30 = &v122 - v29;
  *&v32 = __chkstk_darwin(v31).n128_u64[0];
  v34 = &v122 - v33;
  v153.receiver = v1;
  v153.super_class = ObjectType;
  objc_msgSendSuper2(&v153, "layoutSubviews", v32);
  v35 = [v1 contentView];
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  sub_10076422C();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;

  v44 = OBJC_IVAR____TtC20ProductPageExtension29AppShowcaseCollectionViewCell_showcaseType;
  swift_beginAccess();
  v45 = v9[2];
  v146 = v44;
  v143 = *&v1;
  v147 = v45;
  v148 = v9 + 2;
  v45(v34, &v1[v44], v8);
  v46 = v9;
  v47 = v9[13];
  v145 = enum case for AppShowcaseType.large(_:);
  v47(v30);
  sub_1004448A8(&qword_100957668, &type metadata accessor for AppShowcaseType, &protocol conformance descriptor for AppShowcaseType);
  sub_10077018C();
  sub_10077018C();
  if (v149 == v151 && v150 == v152)
  {
    v48 = 1;
  }

  else
  {
    v48 = sub_10077167C();
  }

  v49 = v9[1];
  v49(v30, v8);
  v141 = v9 + 1;
  v140 = v49;
  v49(v34, v8);

  if (v48)
  {
    v51 = v143;
    v134 = sub_1004418EC(v50);
  }

  else
  {
    v134 = 0;
    v51 = v143;
  }

  v52 = v142;
  v53.n128_f64[0] = v147(v27, *&v51 + v146, v8);
  sub_1004418EC(v53);
  v54 = v46;
  v55 = v46[4];
  v55(v52, v27, v8);
  v56 = v54[11];
  v142 = (v54 + 11);
  v57 = v56(v52, v8);
  v133 = v55;
  if (v57 == v145 || v57 == enum case for AppShowcaseType.small(_:))
  {
    v58 = v143;
  }

  else
  {
    v58 = v143;
    if (v57 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      v140(v52, v8);
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  Width = 0.0;
  v61 = &off_100911000;
  if (!Strong)
  {
    goto LABEL_26;
  }

  v62 = Strong;
  v63 = [Strong isHidden];

  v64 = v146;
  if (v63)
  {
    goto LABEL_27;
  }

  v65 = v132;
  v66 = v147;
  v67.n128_f64[0] = v147(*&v132, *&v58 + v146, v8);
  v68 = sub_1004418EC(v67);
  v154.origin.x = v37;
  v154.origin.y = v39;
  v154.size.width = v41;
  v154.size.height = v43;
  Width = CGRectGetWidth(v154);
  v69 = v127;
  v66(v127, *&v65, v8);
  v70 = v56(v69, v8);
  if (v70 != v145)
  {
    if (v70 != enum case for AppShowcaseType.small(_:) && v70 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      v140(*&v132, v8);
      Width = 0.0;
      v132 = *&v127;
      v61 = &off_100911000;
      goto LABEL_25;
    }

    v61 = &off_100911000;
    if (qword_100940518 == -1)
    {
LABEL_24:
      sub_10000A61C(v139, qword_100957608);
      sub_10076D35C();
      Width = v71;
      goto LABEL_25;
    }

LABEL_69:
    swift_once();
    goto LABEL_24;
  }

  if ((v68 & 1) == 0)
  {
    v61 = &off_100911000;
    if (qword_100940518 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_69;
  }

  v61 = &off_100911000;
LABEL_25:
  v140(*&v132, v8);
LABEL_26:
  v64 = v146;
LABEL_27:
  v147(*&v144, *&v58 + v64, v8);
  v72 = swift_unknownObjectWeakLoadStrong();
  v132 = Width;
  if (v72)
  {
    v74 = v72;
    v75 = [v72 v61[319]];
  }

  else
  {
    v75 = 1;
  }

  v76 = v133;
  v77 = sub_1004418EC(v73);
  v155.origin.x = v37;
  v155.origin.y = v39;
  v155.size.width = v41;
  v155.size.height = v43;
  v78 = CGRectGetWidth(v155);
  v143 = v37;
  v79 = v145;
  if (v75 || (v77 & 1) != 0)
  {
    v140(*&v144, v8);
    v80 = v136;
    goto LABEL_46;
  }

  v81 = v125;
  v147(v125, *&v144, v8);
  v82 = v56(v81, v8);
  v80 = v136;
  if (v82 == v79)
  {
    if (qword_100940518 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_70;
  }

  if (v82 != enum case for AppShowcaseType.small(_:) && v82 != enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    v140(v81, v8);
    v83 = 0.0;
    goto LABEL_41;
  }

  if (qword_100940518 != -1)
  {
LABEL_70:
    swift_once();
  }

LABEL_40:
  sub_10000A61C(v139, qword_100957608);
  sub_10076D35C();
  v83 = v84;
LABEL_41:
  v85 = v126;
  v76(v126, *&v144, v8);
  v86 = v56(v85, v8);
  v87 = 0.0;
  v88 = 25.0;
  if (v86 != v79)
  {
    v87 = 30.0;
    if (v86 != enum case for AppShowcaseType.small(_:))
    {
      v87 = 25.0;
      if (v86 != enum case for AppShowcaseType.smallAlignedLeft(_:))
      {
        (v140)(v85, v8, 25.0, 25.0);
        v88 = 0.0;
        v87 = 0.0;
      }
    }
  }

  v78 = v78 - (v83 + v88 + v87);
  v37 = v143;
LABEL_46:
  v89 = *(*&v58 + OBJC_IVAR____TtC20ProductPageExtension29AppShowcaseCollectionViewCell_lockupView);
  v156.origin.x = v37;
  v156.origin.y = v39;
  v156.size.width = v41;
  v156.size.height = v43;
  Height = CGRectGetHeight(v156);
  v91.n128_f64[0] = v78;
  v92 = sub_100693A10(v91, Height);
  v94 = v93;
  v157.origin.x = v37;
  v157.origin.y = v39;
  v144 = v41;
  v157.size.width = v41;
  v157.size.height = v43;
  MinX = CGRectGetMinX(v157);
  v96 = v135;
  v147(v135, *&v58 + v146, v8);
  v76(v80, v96, v8);
  v97 = v56(v80, v8);
  v98 = 0.0;
  v99 = v43;
  v100 = v39;
  if (v97 == v79)
  {
    v101 = v139;
    v102 = v138;
    v103 = v134;
  }

  else
  {
    v98 = 30.0;
    v101 = v139;
    v102 = v138;
    v103 = v134;
    if (v97 != enum case for AppShowcaseType.small(_:))
    {
      v98 = 25.0;
      if (v97 != enum case for AppShowcaseType.smallAlignedLeft(_:))
      {
        (v140)(v80, v8, 25.0);
        v98 = 0.0;
      }
    }
  }

  v104 = MinX + v98;
  v105 = 20.0;
  if ((v103 & 1) == 0)
  {
    v158.origin.x = v143;
    v158.origin.y = v100;
    v158.size.width = v144;
    v158.size.height = v99;
    v105 = CGRectGetMidY(v158) + v94 * -0.5;
  }

  sub_100770A4C();
  [v89 setFrame:?];
  v106 = swift_unknownObjectWeakLoadStrong();
  if (!v106)
  {
    v113 = v137;
    (*(v102 + 56))(v137, 1, 1, v101);
    goto LABEL_59;
  }

  v107 = qword_1009A2558;
  v108 = v106;
  swift_beginAccess();
  v109 = v130;
  v110 = &v108[v107];
  v111 = v129;
  v112 = v131;
  (*(v130 + 16))(v129, v110, v131);

  v113 = v137;
  sub_10076476C();
  (*(v109 + 8))(v111, v112);
  if ((*(v102 + 48))(v113, 1, v101) == 1)
  {
LABEL_59:
    sub_10000CFBC(v113, &unk_1009467E0, qword_10078CB50);
    goto LABEL_60;
  }

  v114 = v128;
  (*(v102 + 32))(v128, v113, v101);
  v115 = swift_unknownObjectWeakLoadStrong();
  if (v115 && (v116 = v115, v117 = [v115 isHidden], v116, v114 = v128, (v117 & 1) == 0))
  {
    sub_10076D36C();
    if (v103)
    {
      v159.origin.x = v143;
      v159.origin.y = v100;
      v159.size.width = v144;
      v159.size.height = v99;
      CGRectGetMinX(v159);
      v160.origin.x = v104;
      v160.origin.y = v105;
      v160.size.width = v92;
      v160.size.height = v94;
      CGRectGetMaxY(v160);
      if (qword_100940510 != -1)
      {
        swift_once();
      }

      v120 = sub_10076D9AC();
      sub_10000A61C(v120, qword_1009575F0);
      v121 = v122;
      sub_10076D17C();
      sub_10076D40C();
      (*(v123 + 8))(v121, v124);
      (*(v102 + 8))(v128, v101);
    }

    else
    {
      v161.origin.x = v104;
      v161.origin.y = v105;
      v161.size.width = v92;
      v161.size.height = v94;
      CGRectGetMaxX(v161);
      v162.origin.x = v143;
      v162.origin.y = v100;
      v162.size.width = v144;
      v162.size.height = v99;
      CGRectGetHeight(v162);
      (*(v102 + 8))(v114, v101);
    }
  }

  else
  {
    (*(v102 + 8))(v114, v101);
  }

LABEL_60:
  v118 = swift_unknownObjectWeakLoadStrong();
  if (v118)
  {
    v119 = v118;
    sub_100770A4C();
    [v119 setFrame:?];
  }
}

uint64_t type metadata accessor for AppShowcaseCollectionViewCell(uint64_t a1)
{
  result = qword_100957648;
  if (!qword_100957648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100442E84(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    sub_10075ECCC();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t (*sub_100442F88(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_100441770(v2);
  return sub_100019A4C;
}

uint64_t sub_100442FF8()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1004448A8(&qword_100957670, type metadata accessor for AppShowcaseCollectionViewCell, &unk_1007A3408);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_10044306C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1004448A8(&qword_100957670, type metadata accessor for AppShowcaseCollectionViewCell, &unk_1007A3408);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1004430F8(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1004448A8(&qword_100957670, type metadata accessor for AppShowcaseCollectionViewCell, &unk_1007A3408);
  *(v3 + 32) = sub_10076483C();
  return sub_10001D41C;
}

void sub_10044328C(char *a1, void *a2, double a3, double a4)
{
  v82 = a2;
  v73 = sub_10077164C();
  v77 = *(v73 - 8);
  __chkstk_darwin(v73);
  v75 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10075ECCC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v76 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v74 = &v68 - v12;
  __chkstk_darwin(v13);
  v70 = &v68 - v14;
  __chkstk_darwin(v15);
  v72 = &v68 - v16;
  __chkstk_darwin(v17);
  v81 = &v68 - v18;
  __chkstk_darwin(v19);
  v71 = &v68 - v20;
  __chkstk_darwin(v21);
  v84 = &v68 - v22;
  __chkstk_darwin(v23);
  v83 = &v68 - v24;
  __chkstk_darwin(v25);
  v27 = &v68 - v26;
  v28 = sub_10076D39C();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v69 = &v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v78 = &v68 - v32;
  __chkstk_darwin(v33);
  v35 = &v68 - v34;
  v36 = sub_10075F24C();
  v79 = v29;
  v80 = v28;
  if (v36)
  {
    sub_10076B84C();

    sub_10076BEFC();

    sub_10076D3AC();
    v37 = sub_10076D2FC();
    (*(v29 + 8))(v35, v28);
  }

  else
  {
    v37 = 0;
  }

  if (!sub_10075F24C())
  {
    v38 = v37;
    sub_10075F23C();
    goto LABEL_8;
  }

  sub_10075F23C();
  if (v37)
  {
    v38 = v37;
LABEL_8:
    v9[1](v27, v8);
    v39 = a3;
    goto LABEL_23;
  }

  v40 = v71;
  (v9[2])(v71, v27, v8);
  v41 = v9;
  v42 = v9[11];
  v43 = (v42)(v40, v8);
  v44 = enum case for AppShowcaseType.large(_:);
  if (v43 == enum case for AppShowcaseType.large(_:))
  {
    if (qword_100940518 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

  if (v43 == enum case for AppShowcaseType.small(_:) || v43 == enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    if (qword_100940518 == -1)
    {
LABEL_16:
      sub_10000A61C(v80, qword_100957608);
      sub_10076D35C();
      v45 = v46;
      goto LABEL_17;
    }

LABEL_43:
    swift_once();
    goto LABEL_16;
  }

  v41[1](v40, v8);
  v45 = 0.0;
LABEL_17:
  v47 = v81;
  (v41[4])(v81, v27, v8);
  v48 = (v42)(v47, v8);
  v49 = 0.0;
  v50 = 25.0;
  if (v48 == v44)
  {
    v9 = v41;
  }

  else
  {
    v49 = 30.0;
    v9 = v41;
    if (v48 != enum case for AppShowcaseType.small(_:))
    {
      v49 = 25.0;
      if (v48 != enum case for AppShowcaseType.smallAlignedLeft(_:))
      {
        (v41[1])(v47, v8, 25.0, 25.0);
        v50 = 0.0;
        v49 = 0.0;
      }
    }
  }

  v38 = v37;
  v39 = a3 - (v45 + v50 + v49);
LABEL_23:
  type metadata accessor for AppShowcaseLockupView(0);
  v51.n128_f64[0] = v39;
  sub_100693E0C(a1, v82, v51, a4);
  v81 = a1;
  sub_10075F23C();
  v52 = enum case for AppShowcaseType.large(_:);
  v53 = v9[13];
  (v53)(v84, enum case for AppShowcaseType.large(_:), v8);
  sub_1004448A8(&qword_100957668, &type metadata accessor for AppShowcaseType, &protocol conformance descriptor for AppShowcaseType);
  sub_10077018C();
  sub_10077018C();
  if (v87 != v85 || v88 != v86)
  {
    v38 &= sub_10077167C();
  }

  v71 = v9;
  v54 = v9[1];
  v54(v84, v8);
  v54(v83, v8);

  if (v38)
  {
    if (qword_100940510 != -1)
    {
      swift_once();
    }

    v55 = sub_10076D9AC();
    sub_10000A61C(v55, qword_1009575F0);
    v56 = v75;
    sub_10076D17C();
    sub_10076D40C();
    (*(v77 + 8))(v56, v73);
    v57 = sub_10075F24C();
    v59 = v79;
    v58 = v80;
    v60 = v78;
    if (v57)
    {
      sub_10076B84C();

      sub_10076BEFC();

      v61 = v69;
      sub_10076D3AC();
      (*(v59 + 32))(v60, v61, v58);
      v62 = v72;
      sub_10075F23C();
      v63 = v71;
      v64 = v70;
      (*(v71 + 2))(v70, v62, v8);
      v65 = (*(v63 + 11))(v64, v8);
      if (v65 != v52)
      {
        if (v65 == enum case for AppShowcaseType.small(_:) || v65 == enum case for AppShowcaseType.smallAlignedLeft(_:))
        {
          if (qword_100940518 != -1)
          {
            swift_once();
          }

          sub_10000A61C(v58, qword_100957608);
          sub_10076D35C();
        }

        else
        {
          v54(v62, v8);
          v62 = v64;
        }
      }

      v54(v62, v8);
      sub_10076D36C();
      (*(v59 + 8))(v60, v58);
    }
  }

  else
  {
    v66 = v74;
    sub_10075F23C();
    v67 = v76;
    (v53)(v76, v52, v8);
    sub_10077018C();
    sub_10077018C();
    if (v87 != v85 || v88 != v86)
    {
      sub_10077167C();
    }

    v54(v67, v8);
    v54(v66, v8);
  }
}

void sub_100443D5C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    sub_1004448A8(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
    Strong = v1;
  }

  v2 = sub_1000E7228(Strong);

  if (v2)
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v3 removeFromSuperview];
    }
  }
}

void sub_100443E2C(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v4 = sub_10076D39C();
  v52 = *(v4 - 8);
  v53 = v4;
  __chkstk_darwin(v4);
  v51 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076BF6C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  __chkstk_darwin(v13);
  v15 = &v46 - v14;
  v54 = sub_10075ECCC();
  v56 = *(v54 - 8);
  __chkstk_darwin(v54);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v49 = &v46 - v19;
  __chkstk_darwin(v20);
  v22 = &v46 - v21;
  __chkstk_darwin(v23);
  v25 = &v46 - v24;
  sub_10000A570(a1, v58);
  sub_10000A5D4(&unk_100942830, &qword_100782680);
  sub_10075F26C();
  if (!swift_dynamicCast())
  {
    return;
  }

  v47 = v17;
  v26 = v57;
  v27 = *(*&v2[OBJC_IVAR____TtC20ProductPageExtension29AppShowcaseCollectionViewCell_lockupView] + OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_iconView);
  Strong = swift_unknownObjectWeakLoadStrong();
  v50 = v27;
  v28 = [v2 contentView];
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  sub_10076422C();

  sub_10075F25C();
  v29 = sub_10076BB5C();

  if (v29)
  {
    v46 = v26;
    sub_10075F23C();
    v30 = v56;
    v31 = v54;
    (*(v56 + 32))(v22, v25, v54);
    v32 = (*(v30 + 88))(v22, v31);
    if (v32 != enum case for AppShowcaseType.large(_:) && v32 != enum case for AppShowcaseType.small(_:) && v32 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      (*(v56 + 8))(v22, v31);
    }

    sub_10076BF7C();
    (*(v7 + 104))(v9, enum case for Artwork.Style.roundedRect(_:), v6);
    sub_10076BF2C();
    v33 = *(v7 + 8);
    v33(v9, v6);
    v33(v12, v6);
    sub_10076BF4C();
    sub_10076BFCC();
    v34 = v50;
    sub_10076BF7C();
    sub_10075FCCC();
    [v34 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      sub_100770D5C();
    }

    sub_10075FB8C();
    sub_10075FD2C();
    sub_1004448A8(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_100760B8C();

    v33(v15, v6);
  }

  if (!sub_10075F24C())
  {

    return;
  }

  sub_10076B84C();

  sub_10076BEFC();
  sub_10076BEFC();
  v35 = v51;
  sub_10076D3AC();
  v36 = v49;
  sub_10075F23C();
  v37 = sub_10076D2FC();
  v38 = v56;
  v39 = v47;
  v40 = v54;
  (*(v56 + 16))(v47, v36, v54);
  v41 = (*(v38 + 88))(v39, v40);
  v42 = Strong;
  if (v41 == enum case for AppShowcaseType.large(_:))
  {
    v43 = v53;
    if (v37)
    {
LABEL_21:
      (*(v56 + 8))(v36, v40);
      goto LABEL_22;
    }

    if (qword_100940518 == -1)
    {
LABEL_20:
      sub_10000A61C(v43, qword_100957608);
      sub_10076D35C();
      goto LABEL_21;
    }

LABEL_27:
    swift_once();
    goto LABEL_20;
  }

  v43 = v53;
  if (v41 == enum case for AppShowcaseType.small(_:) || v41 == enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    if (qword_100940518 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_27;
  }

  v44 = *(v56 + 8);
  v44(v36, v40);
  v44(v47, v40);
LABEL_22:
  sub_10076D36C();
  sub_10076BFCC();
  if (v42)
  {
    type metadata accessor for VideoView(0);
    sub_1004448A8(&unk_100942840, type metadata accessor for VideoView, &unk_1007B40F8);
    v45 = v42;
    sub_100760B8C();
  }

  else
  {
    sub_100760B9C();
  }

  (*(v52 + 8))(v35, v43);
}

void sub_1004446E0(uint64_t a1, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension29AppShowcaseCollectionViewCell_lockupView);
  v4 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_iconView;
  v5 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_iconView);
  v14.value.super.isa = 0;
  v14.is_nil = 0;
  sub_10075FCEC(v14, v6);

  v7 = *(v3 + v4);
  sub_10075FD2C();
  sub_1004448A8(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v8 = v7;
  sub_100760BFC();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = qword_1009602D0;
    v12 = Strong;
    v11 = [*(Strong + qword_1009602D0) layer];
    [v11 removeAllAnimations];

    [*&v12[v10] setImage:0];
    type metadata accessor for VideoView(0);
    sub_1004448A8(&unk_100942840, type metadata accessor for VideoView, &unk_1007B40F8);
    sub_100760BFC();
  }
}

uint64_t sub_1004448A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1004448F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = xmmword_1007A3490;
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;

  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
LABEL_2:
  if (v4 <= 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6 + 1;
  v8 = 16 * v4 + 40;
  while (1)
  {
    if (v4 == 3)
    {
      sub_10000A5D4(&unk_100943470, &qword_10078C740);
      swift_arrayDestroy();
      sub_10000A5D4(&unk_10094BB60, &unk_100785530);
      sub_10003BCA8();
      sub_10076FEFC();

      return;
    }

    if (v7 == ++v4)
    {
      break;
    }

    v9 = v8 + 16;
    v10 = *&v15[v8];
    v8 += 16;
    if (v10)
    {
      v11 = *&v15[v9 - 24];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_10049D954(0, *(v5 + 2) + 1, 1, v5);
      }

      v13 = *(v5 + 2);
      v12 = *(v5 + 3);
      if (v13 >= v12 >> 1)
      {
        v5 = sub_10049D954((v12 > 1), v13 + 1, 1, v5);
      }

      *(v5 + 2) = v13 + 1;
      v14 = &v5[16 * v13];
      *(v14 + 4) = v11;
      *(v14 + 5) = v10;
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t type metadata accessor for PrefetchMarkerCollectionViewCell(uint64_t a1)
{
  result = qword_1009576A0;
  if (!qword_1009576A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100444CB4(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100444D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100444F20(&qword_100950C98, &unk_1007A3530);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100444DFC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension32PrefetchMarkerCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_100444E54(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension32PrefetchMarkerCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_100444F20(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PrefetchMarkerCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100444F78()
{
  result = qword_1009576B0;
  if (!qword_1009576B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009576B0);
  }

  return result;
}

uint64_t sub_100444FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[26] = a1;
  v3[27] = a2;
  v4 = sub_10075DB7C();
  v3[28] = v4;
  v3[29] = *(v4 - 8);
  v3[30] = swift_task_alloc();

  return _swift_task_switch(sub_10044508C, 0, 0);
}

id sub_10044508C()
{
  if (sub_10076315C())
  {
    v1 = sub_10076FF9C();
    v3 = v2;
    *(v0 + 144) = 1;
    *(v0 + 168) = &type metadata for Bool;
    sub_10000CD64((v0 + 144), (v0 + 176));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10024AD30((v0 + 176), v1, v3, isUniquelyReferenced_nonNull_native);
  }

  if (sub_10076317C())
  {
    v5 = sub_10076FF9C();
    v7 = v6;
    *(v0 + 104) = &type metadata for Bool;
    *(v0 + 80) = 1;
    sub_10000CD64((v0 + 80), (v0 + 112));
    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_10024AD30((v0 + 112), v5, v7, v8);
  }

  v9 = sub_10076316C();
  if ((v10 & 1) == 0)
  {
    v11 = v9;
    v12 = sub_10076FF9C();
    v14 = v13;
    *(v0 + 40) = &type metadata for Double;
    *(v0 + 16) = v11;
    sub_10000CD64((v0 + 16), (v0 + 48));
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_10024AD30((v0 + 48), v12, v14, v15);
  }

  if (_swiftEmptyDictionarySingleton[2])
  {
    v16 = [objc_allocWithZone(_LSOpenConfiguration) init];
    if (v16)
    {
      isa = sub_10076FE3C().super.isa;
      [v16 setFrontBoardOptions:isa];
    }
  }

  else
  {
    v16 = 0;
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v19 = result;
    v21 = *(v0 + 232);
    v20 = *(v0 + 240);
    v22 = *(v0 + 224);
    v23 = *(v0 + 208);

    sub_10076318C();
    sub_10075DB1C(v24);
    v26 = v25;
    (*(v21 + 8))(v20, v22);
    [v19 openURL:v26 configuration:v16 completionHandler:0];

    v27 = enum case for ActionOutcome.performed(_:);
    v28 = sub_10076F50C();
    (*(*(v28 - 8) + 104))(v23, v27, v28);

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004453BC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000257CC;

  return sub_100444FCC(a1, v4, v5);
}

unint64_t sub_100445460()
{
  result = qword_10094F048;
  if (!qword_10094F048)
  {
    sub_1007631AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094F048);
  }

  return result;
}

uint64_t sub_1004454B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10044550C();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, v6);
}

unint64_t sub_10044550C()
{
  result = qword_1009576B8;
  if (!qword_1009576B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009576B8);
  }

  return result;
}

void *sub_100445560(uint64_t a1)
{
  v3 = sub_10075DDBC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v167 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v172 = Strong;
  v167[1] = sub_10000A5D4(&unk_100942870, &qword_100784460);
  v168 = swift_allocObject();
  *(v168 + 16) = xmmword_100784DC0;
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  type metadata accessor for ActionDebugSetting();
  v167[0] = a1;
  v9 = swift_allocObject();
  *(v9 + 56) = 0xD000000000000013;
  *(v9 + 64) = 0x80000001007E7FC0;
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0u;
  *(v9 + 104) = sub_100446A58;
  *(v9 + 112) = v8;
  v10 = v1;

  sub_10075DDAC();
  v11 = sub_10075DD8C();
  v13 = v12;
  v14 = *(v4 + 8);
  v175 = v3;
  v14(v6, v3);
  v190 = v11;
  v191 = v13;
  sub_10077140C();

  *(v168 + 32) = v9;
  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  v16 = swift_allocObject();
  strcpy((v16 + 56), "Clear Caches");
  *(v16 + 69) = 0;
  *(v16 + 70) = -5120;
  *(v16 + 72) = 0u;
  *(v16 + 88) = 0u;
  *(v16 + 104) = sub_100446A7C;
  *(v16 + 112) = v15;
  v17 = v10;

  sub_10075DDAC();
  v18 = sub_10075DD8C();
  v20 = v19;
  v14(v6, v3);
  v173 = v4 + 8;
  v190 = v18;
  v191 = v20;
  sub_10077140C();

  v21 = v168;
  *(v168 + 40) = v16;
  v22 = swift_allocObject();
  *(v22 + 16) = v17;
  v23 = swift_allocObject();
  *(v23 + 56) = 0xD000000000000015;
  *(v23 + 64) = 0x80000001007E7FE0;
  *(v23 + 72) = 0u;
  *(v23 + 88) = 0u;
  *(v23 + 104) = sub_100446A80;
  *(v23 + 112) = v22;
  v24 = v17;

  sub_10075DDAC();
  v25 = sub_10075DD8C();
  v27 = v26;
  v28 = v175;
  v14(v6, v175);
  v190 = v25;
  v191 = v27;
  sub_10077140C();

  *(v21 + 48) = v23;
  v171 = swift_allocObject();
  *(v171 + 16) = xmmword_1007A3670;
  v29 = objc_allocWithZone(type metadata accessor for DebugSettings());
  swift_unknownObjectWeakInit();
  v30 = v172;
  swift_unknownObjectWeakAssign();
  v174 = type metadata accessor for DebugSettingsProvider();
  v189.receiver = v29;
  v189.super_class = v174;
  v170 = v30;
  v31 = objc_msgSendSuper2(&v189, "init");
  v172 = type metadata accessor for NavigationActionDebugSetting();
  v32 = swift_allocObject();
  v32[7] = 0x73676E6974746553;
  v32[8] = 0xE800000000000000;
  v32[9] = 0;
  v32[10] = 0;
  v32[11] = v31;
  v32[12] = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v169 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v32[13] = 0;
  v33 = v28;
  v34 = v31;
  sub_10075DDAC();
  v35 = sub_10075DD8C();
  v37 = v36;
  v176 = v14;
  v14(v6, v33);
  v190 = v35;
  v191 = v37;
  sub_10077140C();

  *(v171 + 32) = v32;
  v38 = objc_allocWithZone(type metadata accessor for StorefrontSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v188.receiver = v38;
  v188.super_class = v174;
  v39 = objc_msgSendSuper2(&v188, "init");
  v40 = swift_allocObject();
  v40[7] = 0x6F726665726F7453;
  v40[8] = 0xEA0000000000746ELL;
  v40[9] = 0;
  v40[10] = 0;
  v40[11] = v39;
  v40[12] = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v40[13] = 0;
  v41 = v39;
  sub_10075DDAC();
  v42 = sub_10075DD8C();
  v44 = v43;
  v14(v6, v33);
  v190 = v42;
  v191 = v44;
  sub_10077140C();

  v45 = v171;
  *(v171 + 40) = v40;
  v46 = objc_allocWithZone(type metadata accessor for MetricsSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v47 = v174;
  v187.receiver = v46;
  v187.super_class = v174;
  v48 = objc_msgSendSuper2(&v187, "init");
  v49 = swift_allocObject();
  v49[7] = 0x7363697274654DLL;
  v49[8] = 0xE700000000000000;
  v49[9] = 0;
  v49[10] = 0;
  v50 = v169;
  v49[11] = v48;
  v49[12] = v50;
  v49[13] = 0;
  v51 = v48;
  sub_10075DDAC();
  v52 = sub_10075DD8C();
  v54 = v53;
  v176(v6, v175);
  v190 = v52;
  v191 = v54;
  sub_10077140C();

  *(v45 + 48) = v49;
  v55 = objc_allocWithZone(type metadata accessor for TodaySettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v186.receiver = v55;
  v186.super_class = v47;
  v56 = objc_msgSendSuper2(&v186, "init");
  v57 = swift_allocObject();
  v57[7] = 0x7961646F54;
  v57[8] = 0xE500000000000000;
  v57[9] = 0;
  v57[10] = 0;
  v57[11] = v56;
  v57[12] = v50;
  v57[13] = 0;
  v58 = v56;
  sub_10075DDAC();
  v59 = sub_10075DD8C();
  v61 = v60;
  v62 = v176;
  v176(v6, v175);
  v190 = v59;
  v191 = v61;
  sub_10077140C();

  v63 = v171;
  *(v171 + 56) = v57;
  v64 = objc_allocWithZone(type metadata accessor for ArcadeSettings());
  v65 = v170;
  v170 = v65;
  v66 = v167[0];

  v67 = sub_10061F6F0(v65, v66);

  v68 = swift_allocObject();
  v68[7] = 0x656461637241;
  v68[8] = 0xE600000000000000;
  v68[9] = 0;
  v68[10] = 0;
  v69 = v169;
  v68[11] = v67;
  v68[12] = v69;
  v68[13] = 0;
  v70 = v67;
  sub_10075DDAC();
  v71 = sub_10075DD8C();
  v73 = v72;
  v74 = v175;
  v62(v6, v175);
  v190 = v71;
  v191 = v73;
  sub_10077140C();

  *(v63 + 64) = v68;
  v75 = objc_allocWithZone(type metadata accessor for SearchSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v76 = v174;
  v185.receiver = v75;
  v185.super_class = v174;
  v77 = objc_msgSendSuper2(&v185, "init");
  v78 = swift_allocObject();
  v78[7] = 0x686372616553;
  v78[8] = 0xE600000000000000;
  v78[9] = 0;
  v78[10] = 0;
  v78[11] = v77;
  v78[12] = v69;
  v78[13] = 0;
  v79 = v77;
  sub_10075DDAC();
  v80 = sub_10075DD8C();
  v82 = v81;
  v176(v6, v74);
  v190 = v80;
  v191 = v82;
  sub_10077140C();

  v83 = v171;
  *(v171 + 72) = v78;
  v84 = objc_allocWithZone(type metadata accessor for ProductPageSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v184.receiver = v84;
  v184.super_class = v76;
  v85 = objc_msgSendSuper2(&v184, "init");
  v86 = swift_allocObject();
  strcpy((v86 + 56), "Product Page");
  *(v86 + 69) = 0;
  *(v86 + 70) = -5120;
  *(v86 + 72) = 0;
  *(v86 + 80) = 0;
  *(v86 + 88) = v85;
  *(v86 + 96) = v69;
  *(v86 + 104) = 0;
  v87 = v85;
  sub_10075DDAC();
  v88 = sub_10075DD8C();
  v90 = v89;
  v176(v6, v175);
  v190 = v88;
  v191 = v90;
  sub_10077140C();

  v83[10] = v86;
  v91 = objc_allocWithZone(type metadata accessor for AdsSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v183.receiver = v91;
  v183.super_class = v76;
  v92 = objc_msgSendSuper2(&v183, "init");
  v93 = swift_allocObject();
  v93[7] = 7562305;
  v93[8] = 0xE300000000000000;
  v93[9] = 0;
  v93[10] = 0;
  v93[11] = v92;
  v93[12] = v69;
  v93[13] = 0;
  v94 = v92;
  sub_10075DDAC();
  v95 = sub_10075DD8C();
  v97 = v96;
  v98 = v175;
  v99 = v176;
  v176(v6, v175);
  v190 = v95;
  v191 = v97;
  sub_10077140C();

  v83[11] = v93;
  v100 = objc_allocWithZone(type metadata accessor for OnboardingSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v182.receiver = v100;
  v182.super_class = v174;
  v101 = objc_msgSendSuper2(&v182, "init");
  v102 = swift_allocObject();
  v102[7] = 0x696472616F626E4FLL;
  v102[8] = 0xEA0000000000676ELL;
  v102[9] = 0;
  v102[10] = 0;
  v102[11] = v101;
  v102[12] = v169;
  v102[13] = 0;
  v103 = v101;
  sub_10075DDAC();
  v104 = sub_10075DD8C();
  v106 = v105;
  v99(v6, v98);
  v190 = v104;
  v191 = v106;
  sub_10077140C();

  v83[12] = v102;
  v107 = objc_allocWithZone(type metadata accessor for ShelfPlaceholderSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v108 = v174;
  v181.receiver = v107;
  v181.super_class = v174;
  v109 = objc_msgSendSuper2(&v181, "init");
  v110 = swift_allocObject();
  v110[7] = 0xD000000000000012;
  v110[8] = 0x80000001007E8000;
  v110[9] = 0;
  v110[10] = 0;
  v111 = v169;
  v110[11] = v109;
  v110[12] = v111;
  v110[13] = 0;
  v112 = v109;
  sub_10075DDAC();
  v113 = sub_10075DD8C();
  v115 = v114;
  v116 = v175;
  v176(v6, v175);
  v190 = v113;
  v191 = v115;
  sub_10077140C();

  *(v171 + 104) = v110;
  v117 = objc_allocWithZone(type metadata accessor for DownloadProgressSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v180.receiver = v117;
  v180.super_class = v108;
  v118 = objc_msgSendSuper2(&v180, "init");
  v119 = swift_allocObject();
  v119[7] = 0xD000000000000011;
  v119[8] = 0x80000001007E8020;
  v119[9] = 0;
  v119[10] = 0;
  v119[11] = v118;
  v119[12] = v111;
  v120 = v111;
  v119[13] = 0;
  v121 = v118;
  sub_10075DDAC();
  v122 = sub_10075DD8C();
  v124 = v123;
  v125 = v176;
  v176(v6, v116);
  v190 = v122;
  v191 = v124;
  sub_10077140C();

  v126 = v171;
  *(v171 + 112) = v119;
  v127 = objc_allocWithZone(type metadata accessor for AppCapabilitiesSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v179.receiver = v127;
  v179.super_class = v174;
  v128 = objc_msgSendSuper2(&v179, "init");
  v129 = swift_allocObject();
  v129[7] = 0xD000000000000010;
  v129[8] = 0x80000001007CF840;
  v129[9] = 0;
  v129[10] = 0;
  v129[11] = v128;
  v129[12] = v120;
  v129[13] = 0;
  v130 = v128;
  sub_10075DDAC();
  v131 = sub_10075DD8C();
  v133 = v132;
  v134 = v175;
  v125(v6, v175);
  v190 = v131;
  v191 = v133;
  sub_10077140C();

  v135 = v126;
  *(v126 + 120) = v129;
  v136 = objc_allocWithZone(type metadata accessor for LocalizerSettings());
  swift_unknownObjectWeakInit();
  v137 = v170;
  swift_unknownObjectWeakAssign();
  v178.receiver = v136;
  v138 = v174;
  v178.super_class = v174;
  v139 = objc_msgSendSuper2(&v178, "init");
  v140 = swift_allocObject();
  v140[7] = 0x657A696C61636F4CLL;
  v140[8] = 0xE900000000000072;
  v140[9] = 0;
  v140[10] = 0;
  v141 = v169;
  v140[11] = v139;
  v140[12] = v141;
  v140[13] = 0;
  v142 = v139;
  sub_10075DDAC();
  v143 = sub_10075DD8C();
  v145 = v144;
  v176(v6, v134);
  v190 = v143;
  v191 = v145;
  sub_10077140C();

  v146 = v135;
  *(v135 + 128) = v140;
  v147 = objc_allocWithZone(type metadata accessor for NotificationSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v177.receiver = v147;
  v177.super_class = v138;
  v148 = objc_msgSendSuper2(&v177, "init");

  v149 = swift_allocObject();
  strcpy((v149 + 56), "Notifications");
  *(v149 + 70) = -4864;
  *(v149 + 72) = 0;
  *(v149 + 80) = 0;
  *(v149 + 88) = v148;
  *(v149 + 96) = v141;
  *(v149 + 104) = 0;
  v150 = v148;
  sub_10075DDAC();
  v151 = sub_10075DD8C();
  v153 = v152;
  v154 = v175;
  v155 = v176;
  v176(v6, v175);
  v190 = v151;
  v191 = v153;
  sub_10077140C();

  *(v146 + 136) = v149;
  v156 = v146;
  v157 = swift_allocObject();
  *(v157 + 16) = xmmword_100785D70;
  type metadata accessor for DebugSection();
  v158 = swift_allocObject();
  sub_10075DDAC();
  v159 = sub_10075DD8C();
  v161 = v160;
  v155(v6, v154);
  v158[2] = v159;
  v158[3] = v161;
  v158[4] = 0;
  v158[5] = 0xE000000000000000;
  v158[6] = v168;
  *(v157 + 32) = v158;
  v162 = swift_allocObject();
  sub_10075DDAC();
  v163 = sub_10075DD8C();
  v165 = v164;
  v155(v6, v154);
  v162[2] = v163;
  v162[3] = v165;
  v162[4] = 0;
  v162[5] = 0xE000000000000000;
  v162[6] = v156;
  *(v157 + 40) = v162;

  return v157;
}

void sub_100446918(uint64_t a1)
{
  sub_10000A5D4(&qword_1009576F0, &qword_1007AB980);
  sub_10076F64C();
  sub_10076FC1C();
  [v2 invalidateMediaToken];
  v1 = [objc_opt_self() sharedCoordinator];
  [v1 notify];
  swift_unknownObjectRelease();
}

id sub_1004469C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugMenuSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100446A20()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100446A88()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v1 = Strong;
  v2 = [Strong presentingViewController];

  if (!v2)
  {
    goto LABEL_8;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = [v3 selectedViewController];

    if (!v4)
    {
      goto LABEL_8;
    }

    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    v2 = v4;
    if (v5)
    {
      v6 = v5;
      goto LABEL_11;
    }
  }

LABEL_8:
  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7 || (v8 = v7, v9 = [v7 presentingViewController], v8, !v9))
  {
    v6 = 0;
    goto LABEL_23;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {

    goto LABEL_23;
  }

LABEL_11:
  v10 = [v6 viewControllers];
  sub_10003F040();
  v11 = sub_1007701BC();

  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_13;
    }

LABEL_45:

    goto LABEL_23;
  }

  v12 = sub_10077158C();
  if (!v12)
  {
    goto LABEL_45;
  }

LABEL_13:
  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
    __break(1u);
  }

  else if ((v11 & 0xC000000000000001) == 0)
  {
    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v14 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v15 = *(v11 + 8 * v14 + 32);
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_50;
  }

  v15 = sub_10077149C();
LABEL_18:
  v16 = v15;

  if (!v16)
  {
LABEL_23:
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    sub_100446F74(&v30);
    v11 = 0;
LABEL_24:
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    goto LABEL_25;
  }

  v11 = v16;
  sub_10000A5D4(&qword_100957708, qword_1007A36D8);
  if (swift_dynamicCast())
  {
    if (*(&v31 + 1))
    {
LABEL_43:
      sub_100012498(&v30, v33);
      sub_100012498(v33, &aBlock);
      goto LABEL_26;
    }
  }

  else
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
  }

  sub_100446F74(&v30);
  v24 = [v11 childViewControllers];
  v10 = sub_1007701BC();

  if (!(v10 >> 62))
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_38;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = sub_10077158C();
  if (!result)
  {
LABEL_51:

    goto LABEL_24;
  }

LABEL_38:
  if ((v10 & 0xC000000000000001) != 0)
  {
    sub_10077149C();
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v25 = *(v10 + 32);
  }

  sub_10000A5D4(&qword_100957708, qword_1007A36D8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  if (*(&v31 + 1))
  {
    goto LABEL_43;
  }

LABEL_25:
  sub_100446F74(&v30);
  aBlock = 0u;
  v27 = 0u;
  v28 = 0;
LABEL_26:
  v34[0] = aBlock;
  v34[1] = v27;
  v35 = v28;
  sub_100446FDC(v34, &aBlock);
  if (*(&v27 + 1))
  {
    sub_100012498(&aBlock, v33);
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17 && (v18 = v17, v19 = [v17 presentingViewController], v18, v19))
    {
      sub_10000A570(v33, &v30);
      v20 = swift_allocObject();
      sub_100012498(&v30, v20 + 16);
      v28 = sub_100447084;
      v29 = v20;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v27 = sub_10009AEDC;
      *(&v27 + 1) = &unk_100895748;
      v21 = _Block_copy(&aBlock);

      [v19 dismissViewControllerAnimated:1 completion:v21];
      _Block_release(v21);
    }

    else
    {
    }

    sub_10000CD74(v33);
    p_aBlock = v34;
  }

  else
  {
    sub_100446F74(v34);

    p_aBlock = &aBlock;
  }

  return sub_100446F74(p_aBlock);
}

uint64_t sub_100446F74(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_1009576F8, &qword_1007A36D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100446FDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009576F8, &qword_1007A36D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10044704C()
{
  sub_10000CD74((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100447084()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_10000CF78(v0 + 2, v1);
  return (*(v2 + 8))(v1, v2);
}

double sub_1004470D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1004470F8()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_artworkViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(v2 + 56) + ((v8 << 9) | (8 * v9)));
    sub_10075FD2C();
    sub_10000D7F8();
    v11 = v10;
    sub_100760BFC();
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

double sub_100447280(void *a1, __n128 a2)
{
  v240 = a1;
  v2 = sub_100763BCC();
  v210 = *(v2 - 8);
  v211 = v2;
  __chkstk_darwin(v2);
  v209 = &v188 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100763BBC();
  v206 = *(v4 - 8);
  v207 = v4;
  __chkstk_darwin(v4);
  v208 = &v188 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100763BAC();
  v203 = *(v6 - 8);
  v204 = v6;
  __chkstk_darwin(v6);
  v205 = &v188 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_100763BFC();
  v212 = *(v198 - 8);
  __chkstk_darwin(v198);
  v197 = &v188 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076997C();
  v200 = *(v9 - 8);
  v201 = v9;
  __chkstk_darwin(v9);
  v199 = &v188 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100763BEC();
  v12 = *(v11 - 8);
  v238 = v11;
  v239 = v12;
  __chkstk_darwin(v11);
  v192 = &v188 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v237 = &v188 - v15;
  __chkstk_darwin(v16);
  v236 = &v188 - v17;
  __chkstk_darwin(v18);
  v226 = &v188 - v19;
  v20 = sub_10075D78C();
  v217 = *(v20 - 8);
  __chkstk_darwin(v20);
  v216 = (&v188 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v225 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v225);
  v23 = &v188 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_10000A5D4(&unk_10094BB20, &unk_10079AAD0);
  v202 = *(v196 - 8);
  __chkstk_darwin(v196);
  v191 = &v188 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v235 = &v188 - v26;
  __chkstk_darwin(v27);
  v232 = &v188 - v28;
  __chkstk_darwin(v29);
  v195 = &v188 - v30;
  __chkstk_darwin(v31);
  v234 = &v188 - v32;
  __chkstk_darwin(v33);
  v233 = &v188 - v34;
  __chkstk_darwin(v35);
  v224 = &v188 - v36;
  __chkstk_darwin(v37);
  v227 = &v188 - v38;
  v39 = sub_10076C36C();
  v214 = *(v39 - 8);
  v215 = v39;
  __chkstk_darwin(v39);
  v213 = &v188 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v221 = &v188 - v42;
  v43 = sub_10076B21C();
  v219 = *(v43 - 8);
  v220 = v43;
  __chkstk_darwin(v43);
  v218 = &v188 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  __chkstk_darwin(v45 - 8);
  v223 = sub_10000A5D4(&qword_100957718, &qword_1007A3778);
  v46 = *(v223 - 8);
  __chkstk_darwin(v223);
  v231 = &v188 - v47;
  v230 = sub_10076C38C();
  v48 = *(v230 - 8);
  __chkstk_darwin(v230);
  v228 = &v188 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v52 = &v188 - v51;
  __chkstk_darwin(v53);
  v55 = &v188 - v54;
  sub_10076B29C();
  sub_100449310(&qword_100957720, &type metadata accessor for Uber, &protocol conformance descriptor for Uber);
  sub_10076332C();
  v56 = v270[0];
  if (!v270[0])
  {
    return 0.0;
  }

  v190 = v20;
  v193 = v46;
  v222 = v23;
  swift_getKeyPath();
  v229 = v56;
  sub_10076338C();

  sub_10076C26C();
  v58 = v57;
  v61 = *(v48 + 8);
  v59 = v48 + 8;
  v60 = v61;
  v62 = v230;
  (v61)(v55, v230);
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C25C();
  v64 = v63;
  (v61)(v52, v62);
  *&v65 = v58 - v64;
  sub_1007633DC();
  sub_10076FDBC();
  swift_getKeyPath();
  sub_10076338C();

  v194 = v270[0];
  v66 = v218;
  sub_10076B23C();
  swift_getKeyPath();
  sub_1004492B8();
  v67 = v223;
  sub_10076FD9C();

  LOBYTE(v62) = v268[0];
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C24C();
  v69 = v68;
  v70 = v230;
  (v61)(v55, v230);
  v71 = v194;
  sub_10020B56C(v194, v66, (v62 & 1) == 0, v69, v65, 0);
  v73 = v72;

  (*(v219 + 8))(v66, v220);
  v75 = sub_10076B24C();
  if (v74)
  {
    v76 = v70;
    v219 = v74;
    v194 = v75;
    v78 = v214;
    v77 = v215;
    v214[13](v221, enum case for PageGrid.Direction.vertical(_:), v215);
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C2FC();
    (v60)(v55, v76);
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C25C();
    (v60)(v55, v76);
    v79 = v221;
    (v78)[2](v213, v221, v77);
    sub_1005AC334(0.0);
    sub_10076C33C();
    (v78[1])(v79, v77);
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C2FC();
    v214 = v60;
    v215 = v59;
    (v60)(v55, v76);
    if (qword_100940890 != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for TitleHeaderView.Style(0);
    v81 = sub_10000A61C(v80, qword_1009A0830);
    sub_10076C2EC();
    swift_getKeyPath();
    sub_10076338C();

    v218 = v271[0];
    v82 = [v271[0] traitCollection];
    v83 = v238;
    v84 = (v239 + 56);
    v85 = *(v239 + 56);
    v85(v227, 1, 1, v238);
    v240 = v84;
    v189 = v85;
    v85(v224, 1, 1, v83);
    memset(v270, 0, sizeof(v270));
    v269 = 0;
    memset(v268, 0, sizeof(v268));
    v220 = v80;
    v221 = v81;
    v188 = *(v80 + 20);
    v86 = v222;
    sub_10011BA50(v81 + v188, v222, 0);
    sub_10005312C();
    v87 = v225;
    v213 = v82;
    v88 = sub_100770B3C();
    *&v265 = v194;
    v89 = v219;
    *(&v265 + 1) = v219;

    v90 = v216;
    sub_10075D76C();
    sub_10002564C();
    sub_1007711EC();
    v92 = v91;
    v217[1](v90, v190);

    v93 = 0uLL;
    v94 = 0;
    if (v92)
    {
      goto LABEL_10;
    }

    [v88 lineHeight];
    v96 = ceil(v95 * 1.3);
    if ((*&v96 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v96 > -9.22337204e18)
    {
      if (v96 >= 9.22337204e18)
      {
        __break(1u);
        goto LABEL_69;
      }

      v86 = v222;
      v93 = 0uLL;
LABEL_10:
      v267 = 0;
      v265 = v93;
      v266 = v93;
      v97 = sub_10076C04C();
      v263 = v97;
      v264 = sub_100449310(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v98 = sub_10000DB7C(&v261);
      (*(*(v97 - 8) + 104))(v98, enum case for Feature.measurement_with_labelplaceholder(_:), v97);
      v99 = v88;
      sub_10076C90C();
      sub_10000CD74(&v261);
      v100 = v199;
      v217 = v99;
      sub_10076996C();
      sub_10076994C();
      (*(v200 + 8))(v100, v201);
      sub_100016E2C(&v265, v260, &unk_10094DA00, &qword_100783FA0);
      v101 = v263;
      v102 = v264;
      v103 = sub_10000CF78(&v261, v263);
      v259[3] = v101;
      v259[4] = *(v102 + 8);
      v104 = sub_10000DB7C(v259);
      (*(*(v101 - 8) + 16))(v104, v103, v101);
      v105 = *(v86 + *(v87 + 32));
      v257 = &type metadata for Float;
      v258 = &protocol witness table for Float;
      v256[0] = v105;
      v106 = *(v87 + 36);
      v107 = sub_10076D9AC();
      v255[3] = v107;
      v255[4] = &protocol witness table for StaticDimension;
      v108 = sub_10000DB7C(v255);
      v109 = v87;
      v110 = *(*(v107 - 8) + 16);
      v110(v108, v86 + v106, v107);
      v111 = *(v109 + 40);
      v254[3] = v107;
      v254[4] = &protocol witness table for StaticDimension;
      v112 = sub_10000DB7C(v254);
      v110(v112, v86 + v111, v107);
      sub_100016E2C(v270, &v248, &qword_10094BB30, qword_100796E40);
      v113 = *(&v249 + 1);
      if (*(&v249 + 1))
      {
        v114 = v250;
        v115 = sub_10000CF78(&v248, *(&v249 + 1));
        *(&v252 + 1) = v113;
        v253 = *(v114 + 8);
        v116 = sub_10000DB7C(&v251);
        (*(*(v113 - 8) + 16))(v116, v115, v113);
        sub_10000CD74(&v248);
      }

      else
      {
        sub_10000CFBC(&v248, &qword_10094BB30, qword_100796E40);
        v251 = 0u;
        v252 = 0u;
        v253 = 0;
      }

      sub_100016E2C(v268, v245, &qword_10094BB30, qword_100796E40);
      v117 = v246;
      v118 = v225;
      if (v246)
      {
        v119 = v247;
        v120 = sub_10000CF78(v245, v246);
        *(&v249 + 1) = v117;
        v250 = *(v119 + 8);
        v121 = sub_10000DB7C(&v248);
        (*(*(v117 - 8) + 16))(v121, v120, v117);
        sub_10000CD74(v245);
      }

      else
      {
        sub_10000CFBC(v245, &qword_10094BB30, qword_100796E40);
        v248 = 0u;
        v249 = 0u;
        v250 = 0;
      }

      v122 = v232;
      v123 = v222;
      sub_10000A570(&v222[*(v118 + 48)], v245);
      sub_10000A570(v123 + *(v118 + 52), &v244);
      v242 = &type metadata for Double;
      v243 = &protocol witness table for Double;
      v241 = 0x4020000000000000;
      sub_100763BDC();
      sub_10000CD74(&v261);
      sub_10000CFBC(&v265, &unk_10094DA00, &qword_100783FA0);
      v124 = v221[v220[9]];
      sub_10000A5D4(&qword_10094BB38, &unk_100791CD0);
      v125 = *(v202 + 72);
      v126 = (*(v202 + 80) + 32) & ~*(v202 + 80);
      if (v124)
      {
        if (v124 == 1)
        {
          v219 = swift_allocObject();
          v127 = v219 + v126;
          sub_100016E2C(v227, v219 + v126, &unk_10094BB20, &unk_10079AAD0);
          v128 = v239 + 16;
          (*(v239 + 16))(v127 + v125, v226, v83);
          v129 = v83;
          v189(v127 + v125, 0, 1, v83);
          sub_100016E2C(v224, v127 + 2 * v125, &unk_10094BB20, &unk_10079AAD0);
          v130 = (v128 + 32);
          v236 = (v128 + 16);
          v240 = _swiftEmptyArrayStorage;
          v131 = 3;
          v233 = v127;
          do
          {
            v132 = v125;
            v133 = v234;
            sub_100016E2C(v127, v234, &unk_10094BB20, &unk_10079AAD0);
            v134 = v133;
            v135 = v235;
            sub_1001CA0C0(v134, v235);
            if ((*v130)(v135, 1, v129) == 1)
            {
              sub_10000CFBC(v135, &unk_10094BB20, &unk_10079AAD0);
            }

            else
            {
              v136 = v135;
              v137 = *v236;
              (*v236)(v237, v136, v129);
              v138 = v240;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v138 = sub_10049E330(0, v138[2] + 1, 1, v138);
              }

              v140 = v138[2];
              v139 = v138[3];
              if (v140 >= v139 >> 1)
              {
                v138 = sub_10049E330((v139 > 1), v140 + 1, 1, v138);
              }

              v138[2] = v140 + 1;
              v141 = (*(v239 + 80) + 32) & ~*(v239 + 80);
              v240 = v138;
              v129 = v238;
              v137(v138 + v141 + *(v239 + 72) * v140, v237);
            }

            v125 = v132;
            v127 += v132;
            --v131;
          }

          while (v131);
          swift_setDeallocating();
          swift_arrayDestroy();
          v89 = v197;
          v88 = v198;
          v83 = v129;
        }

        else
        {
          v219 = swift_allocObject();
          v154 = v219 + v126;
          sub_100016E2C(v227, v154, &unk_10094BB20, &unk_10079AAD0);
          v155 = v239;
          (*(v239 + 16))(v154 + v125, v226, v83);
          v189(v154 + v125, 0, 1, v83);
          v156 = v195;
          sub_100016E2C(v154, v195, &unk_10094BB20, &unk_10079AAD0);
          v157 = v191;
          sub_1001CA0C0(v156, v191);
          v158 = *(v155 + 48);
          v159 = (v155 + 32);
          if (v158(v157, 1, v83) == 1)
          {
            sub_10000CFBC(v157, &unk_10094BB20, &unk_10079AAD0);
            v160 = _swiftEmptyArrayStorage;
          }

          else
          {
            v161 = *v159;
            (*v159)(v192, v157, v83);
            v162 = _swiftEmptyArrayStorage;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v162 = sub_10049E330(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
            }

            v164 = *(v162 + 2);
            v163 = *(v162 + 3);
            v160 = v162;
            if (v164 >= v163 >> 1)
            {
              v160 = sub_10049E330((v163 > 1), v164 + 1, 1, v162);
            }

            *(v160 + 2) = v164 + 1;
            v165 = &v160[((*(v239 + 80) + 32) & ~*(v239 + 80)) + *(v239 + 72) * v164];
            v83 = v238;
            v161(v165, v192, v238);
            v157 = v191;
          }

          v166 = v154 + v125;
          v167 = v195;
          sub_100016E2C(v166, v195, &unk_10094BB20, &unk_10079AAD0);
          sub_1001CA0C0(v167, v157);
          if (v158(v157, 1, v83) == 1)
          {
            sub_10000CFBC(v157, &unk_10094BB20, &unk_10079AAD0);
          }

          else
          {
            v168 = *v159;
            v169 = v192;
            (*v159)(v192, v157, v83);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v160 = sub_10049E330(0, *(v160 + 2) + 1, 1, v160);
            }

            v171 = *(v160 + 2);
            v170 = *(v160 + 3);
            v172 = v160;
            if (v171 >= v170 >> 1)
            {
              v172 = sub_10049E330((v170 > 1), v171 + 1, 1, v160);
            }

            *(v172 + 2) = v171 + 1;
            v168(&v172[((*(v239 + 80) + 32) & ~*(v239 + 80)) + *(v239 + 72) * v171], v169, v83);
          }

          v89 = v197;
          v88 = v198;
          swift_setDeallocating();
          swift_arrayDestroy();
        }
      }

      else
      {
        v219 = swift_allocObject();
        v142 = v219 + v126;
        sub_100016E2C(v227, v219 + v126, &unk_10094BB20, &unk_10079AAD0);
        sub_100016E2C(v224, v142 + v125, &unk_10094BB20, &unk_10079AAD0);
        v143 = v239 + 16;
        (*(v239 + 16))(v142 + 2 * v125, v226, v83);
        v144 = v83;
        v189(v142 + 2 * v125, 0, 1, v83);
        v145 = (v143 + 32);
        v237 = (v143 + 16);
        v240 = _swiftEmptyArrayStorage;
        v146 = 3;
        v235 = v142;
        do
        {
          v147 = v233;
          sub_100016E2C(v142, v233, &unk_10094BB20, &unk_10079AAD0);
          sub_1001CA0C0(v147, v122);
          if ((*v145)(v122, 1, v144) == 1)
          {
            sub_10000CFBC(v122, &unk_10094BB20, &unk_10079AAD0);
          }

          else
          {
            v148 = *v237;
            (*v237)(v236, v122, v144);
            v149 = v240;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v149 = sub_10049E330(0, v149[2] + 1, 1, v149);
            }

            v151 = v149[2];
            v150 = v149[3];
            if (v151 >= v150 >> 1)
            {
              v149 = sub_10049E330((v150 > 1), v151 + 1, 1, v149);
            }

            v149[2] = v151 + 1;
            v152 = (*(v239 + 80) + 32) & ~*(v239 + 80);
            v240 = v149;
            v153 = v149 + v152 + *(v239 + 72) * v151;
            v144 = v238;
            v148(v153, v236);
            v122 = v232;
          }

          v142 += v125;
          --v146;
        }

        while (v146);
        swift_setDeallocating();
        swift_arrayDestroy();
        v89 = v197;
        v88 = v198;
        v83 = v144;
      }

      swift_deallocClassInstance();
      v267 = 0;
      v265 = 0u;
      v266 = 0u;
      sub_100016E2C(&v265, &v261, &unk_10094DA00, &qword_100783FA0);
      v174 = v220;
      v173 = v221;
      v175 = *&v221[v220[14]];
      v260[3] = &type metadata for CGFloat;
      v260[4] = &protocol witness table for CGFloat;
      v260[0] = v175;
      (*(v203 + 16))(v205, &v221[v220[10]], v204);
      (*(v206 + 16))(v208, &v173[v174[11]], v207);
      (*(v210 + 104))(v209, enum case for TitleHeaderLayout.AccessoryHorizontalAlignment.rightJustified(_:), v211);
      sub_100763B7C();
      sub_100770ACC();
      sub_100449310(&unk_10094BB40, &type metadata accessor for TitleHeaderLayout, &protocol conformance descriptor for TitleHeaderLayout);
      sub_10076D2AC();
      v261 = v176;
      v262 = v177;
      sub_100770ADC();
      Main = JUScreenClassGetMain();
      v90 = v212;
      if (Main != 1)
      {

        swift_unknownObjectRelease();

        v90[1](v89, v88);
        v182.n128_f64[0] = (*(v239 + 8))(v226, v83);
        sub_10011BAB4(v222, v182);
        sub_10000CFBC(v268, &qword_10094BB30, qword_100796E40);
        sub_10000CFBC(v270, &qword_10094BB30, qword_100796E40);
        sub_10000CFBC(v224, &unk_10094BB20, &unk_10079AAD0);
        sub_10000CFBC(v227, &unk_10094BB20, &unk_10079AAD0);
        (v214)(v228, v230);
        (*(v193 + 8))(v231, v223);
        v181 = 0.0;
        goto LABEL_63;
      }

      v92 = v222;
      v86 = v193;
      v87 = v230;
      if (qword_10093FC38 == -1)
      {
LABEL_57:
        v179 = sub_10000A61C(v225, qword_10099DF58);
        v94 = v188;
        if (sub_10019942C(&v221[v188], v179))
        {

          swift_unknownObjectRelease();

          v90[1](v89, v88);
          v180.n128_f64[0] = (*(v239 + 8))(v226, v83);
          sub_10011BAB4(v92, v180);
          sub_10000CFBC(v268, &qword_10094BB30, qword_100796E40);
          sub_10000CFBC(v270, &qword_10094BB30, qword_100796E40);
          sub_10000CFBC(v224, &unk_10094BB20, &unk_10079AAD0);
          sub_10000CFBC(v227, &unk_10094BB20, &unk_10079AAD0);
          (v214)(v228, v87);
          (*(v86 + 8))(v231, v223);
          v181 = 5.0;
LABEL_63:
          v186 = v262 - v181;
          sub_10000CFBC(&v265, &unk_10094DA00, &qword_100783FA0);
          return v73 + v186;
        }

        if (qword_10093FC40 == -1)
        {
LABEL_61:
          v183 = sub_10000A61C(v225, qword_10099DF70);
          v184 = sub_10019942C(&v221[v94], v183);

          swift_unknownObjectRelease();

          v90[1](v89, v88);
          v185.n128_f64[0] = (*(v239 + 8))(v226, v83);
          sub_10011BAB4(v92, v185);
          sub_10000CFBC(v268, &qword_10094BB30, qword_100796E40);
          sub_10000CFBC(v270, &qword_10094BB30, qword_100796E40);
          sub_10000CFBC(v224, &unk_10094BB20, &unk_10079AAD0);
          sub_10000CFBC(v227, &unk_10094BB20, &unk_10079AAD0);
          (v214)(v228, v87);
          (*(v86 + 8))(v231, v223);
          v181 = 0.0;
          if (v184)
          {
            v181 = 5.0;
          }

          goto LABEL_63;
        }

LABEL_69:
        swift_once();
        goto LABEL_61;
      }

LABEL_67:
      swift_once();
      goto LABEL_57;
    }

    __break(1u);
    goto LABEL_67;
  }

  (*(v193 + 8))(v231, v67);

  return v73;
}

unint64_t sub_1004492B8()
{
  result = qword_100957728;
  if (!qword_100957728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957728);
  }

  return result;
}

uint64_t sub_100449310(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_100449358(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = sub_10075EA4C();
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin(v7);
  v53 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076997C();
  v10 = *(v9 - 8);
  v62 = v9;
  v63 = v10;
  __chkstk_darwin(v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10075EA2C();
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a2 traitCollection];
  v61 = v4;
  sub_100449B38(v18, v17);

  sub_10075EA1C();
  v47 = *(v14 + 8);
  v48 = v14 + 8;
  v51 = v17;
  v49 = v13;
  v47(v17, v13);
  v50 = sub_10076DDDC();
  swift_allocObject();
  v52 = sub_10076DDBC();
  v60 = a1;
  sub_10075E69C();
  sub_10076BB6C();

  v19 = sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_100940F78 != -1)
  {
    swift_once();
  }

  v20 = sub_10076D3DC();
  sub_10000A61C(v20, qword_1009A1C60);
  v21 = [a2 traitCollection];
  sub_100770B3C();

  v22 = sub_10076C04C();
  v72[3] = v22;
  v59 = sub_10044B1E0(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v72[4] = v59;
  v23 = sub_10000DB7C(v72);
  v24 = *(v22 - 8);
  v25 = *(v24 + 104);
  v56 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v57 = v24 + 104;
  v58 = v25;
  v25(v23);
  sub_10076C90C();
  sub_10000CD74(v72);
  sub_10076996C();
  sub_10076994C();
  v26 = *(v63 + 8);
  v63 += 8;
  v27 = v26;
  v26(v12, v62);
  sub_10075E6AC();
  if (qword_100940F80 != -1)
  {
    swift_once();
  }

  v46 = sub_10000A61C(v20, qword_1009A1C78);
  v28 = a2;
  v29 = [a2 traitCollection];
  v45 = v19;
  sub_100770B3C();

  v71[3] = v22;
  v71[4] = v59;
  v30 = sub_10000DB7C(v71);
  v58(v30, v56, v22);
  sub_10076C90C();
  sub_10000CD74(v71);
  sub_10076996C();
  sub_10076994C();
  v44 = v27;
  v27(v12, v62);
  v31 = [v28 traitCollection];
  v32 = v51;
  sub_100449B38(v31, v51);

  sub_10075E9FC();
  v47(v32, v49);
  v33 = v50;
  swift_allocObject();
  v49 = sub_10076DDBC();
  sub_10075E68C();
  v34 = v28;
  v35 = [v28 traitCollection];
  sub_100770B3C();

  v70[3] = v22;
  v70[4] = v59;
  v36 = sub_10000DB7C(v70);
  v58(v36, v56, v22);
  sub_10076C90C();
  sub_10000CD74(v70);
  sub_10076996C();
  sub_10076994C();
  v44(v12, v62);
  v37 = [v34 traitCollection];
  sub_100449B38(v37, v32);

  v69[8] = v33;
  v69[9] = &protocol witness table for LayoutViewPlaceholder;
  v69[5] = v52;
  sub_10000A570(v72, v69);
  sub_10000A570(v71, &v68);
  sub_10000A570(v70, &v67);
  v65 = v33;
  v66 = &protocol witness table for LayoutViewPlaceholder;
  v64 = v49;

  v38 = v53;
  sub_10075EA3C();
  sub_10044B1E0(&qword_100957780, &type metadata accessor for InAppPurchaseShowcaseLockupViewLayout, &protocol conformance descriptor for InAppPurchaseShowcaseLockupViewLayout);
  v39 = v55;
  sub_10076D2AC();
  v41 = v40;

  (*(v54 + 8))(v38, v39);
  sub_10000CD74(v70);
  sub_10000CD74(v71);
  sub_10000CD74(v72);
  return v41;
}

uint64_t sub_100449B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a1;
  v65 = a2;
  v72 = sub_10076443C();
  v76 = *(v72 - 8);
  __chkstk_darwin(v72);
  v61 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v63 = &v54 - v4;
  __chkstk_darwin(v5);
  v58 = &v54 - v6;
  __chkstk_darwin(v7);
  v59 = &v54 - v8;
  v9 = sub_10076D1AC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_10076D9AC();
  __chkstk_darwin(v55);
  v62 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v71 = &v54 - v15;
  __chkstk_darwin(v16);
  v18 = &v54 - v17;
  v19 = sub_10075E77C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E6FC();
  sub_10075E73C();
  (*(v20 + 8))(v22, v19);
  if (qword_100940F78 != -1)
  {
    swift_once();
  }

  v23 = sub_10076D3DC();
  v24 = sub_10000A61C(v23, qword_1009A1C60);
  v25 = *(v23 - 8);
  v69 = *(v25 + 16);
  v68 = v25 + 16;
  v69(v12, v24, v23);
  v26 = enum case for FontSource.useCase(_:);
  v74 = v10[13];
  v75 = v10 + 13;
  v74(v12);
  v81 = v9;
  v82 = &protocol witness table for FontSource;
  v27 = sub_10000DB7C(v80);
  v67 = v10[2];
  v73 = v10 + 2;
  v67(v27, v12, v9);
  v60 = v18;
  sub_10076D9BC();
  v29 = v10[1];
  v28 = v10 + 1;
  v66 = v29;
  v29(v12, v9);
  if (qword_100940F80 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A61C(v23, qword_1009A1C78);
  v31 = v69;
  v69(v12, v30, v23);
  (v74)(v12, v26, v9);
  v81 = v9;
  v82 = &protocol witness table for FontSource;
  v32 = sub_10000DB7C(v80);
  v33 = v67;
  v67(v32, v12, v9);
  sub_10076D9BC();
  v34 = v66;
  v66(v12, v9);
  v54 = v30;
  v57 = v23;
  v31(v12, v30, v23);
  v56 = v26;
  (v74)(v12, v26, v9);
  v81 = v55;
  v82 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v80);
  v78 = v9;
  v79 = &protocol witness table for FontSource;
  v35 = sub_10000DB7C(v77);
  v33(v35, v12, v9);
  sub_10076D9BC();
  v55 = v9;
  v34(v12, v9);
  v36 = sub_10077071C();
  v64 = v28;
  if (v36)
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v37 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v37 = qword_100944CA0;
  }

  v38 = v72;
  v39 = sub_10000A61C(v72, v37);
  v40 = v76;
  v41 = *(v76 + 16);
  v42 = v58;
  v41(v58, v39, v38);
  v43 = *(v40 + 32);
  v44 = v59;
  v43(v59, v42, v38);
  sub_1007643EC();
  v45 = *(v40 + 8);
  v76 = v40 + 8;
  v45(v44, v38);
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v46 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v46 = qword_100944CA0;
  }

  v47 = v72;
  v48 = sub_10000A61C(v72, v46);
  v49 = v61;
  v41(v61, v48, v47);
  v50 = v63;
  v43(v63, v49, v47);
  sub_10076441C();
  v45(v50, v47);
  v69(v12, v54, v57);
  v51 = v55;
  (v74)(v12, v56, v55);
  v78 = v51;
  v79 = &protocol witness table for FontSource;
  v52 = sub_10000DB7C(v77);
  v67(v52, v12, v51);
  sub_10076D9BC();
  v66(v12, v51);
  return sub_10075EA0C();
}

char *sub_10044A43C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v66 = sub_10076771C();
  v10 = *(v66 - 8);
  __chkstk_darwin(v66);
  v12 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v13 - 8);
  v15 = v57 - v14;
  v16 = sub_10075E77C();
  __chkstk_darwin(v16 - 8);
  v18 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_iconView;
  sub_10075E6FC();
  v20 = objc_allocWithZone(type metadata accessor for InAppPurchaseView(0));
  v21 = sub_1005B7DD4(v18, 1);
  v67 = v5;
  *&v5[v19] = v21;
  v22 = OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_titleLabel;
  if (qword_100940F78 != -1)
  {
    swift_once();
  }

  v23 = sub_10076D3DC();
  v24 = sub_10000A61C(v23, qword_1009A1C60);
  v25 = *(v23 - 8);
  v65 = *(v25 + 16);
  v65(v15, v24, v23);
  v26 = *(v25 + 56);
  v64 = v25 + 56;
  v26(v15, 0, 1, v23);
  v27 = *(v10 + 104);
  v62 = v10 + 104;
  v63 = v27;
  v28 = enum case for DirectionalTextAlignment.none(_:);
  (v27)(v12);
  v29 = sub_1007626BC();
  v30 = objc_allocWithZone(v29);
  *&v67[v22] = sub_1007626AC();
  v61 = OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_subtitleLabel;
  if (qword_100940F80 != -1)
  {
    swift_once();
  }

  v60 = sub_10000A61C(v23, qword_1009A1C78);
  v65(v15, v60, v23);
  v57[1] = v25 + 16;
  v59 = v26;
  v26(v15, 0, 1, v23);
  v31 = v66;
  v32 = v63;
  v63(v12, v28, v66);
  v58 = v29;
  v33 = objc_allocWithZone(v29);
  v34 = sub_1007626AC();
  v35 = v67;
  v36 = v60;
  *&v67[v61] = v34;
  v37 = v31;
  v38 = OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_descriptionLabel;
  v65(v15, v36, v23);
  v59(v15, 0, 1, v23);
  v32(v12, v28, v37);
  v39 = objc_allocWithZone(v58);
  *&v35[v38] = sub_1007626AC();
  v40 = OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_offerButton;
  v41 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v35[v40] = sub_1001E89B8(0);
  v42 = type metadata accessor for InAppPurchaseShowcaseLockupView();
  v68.receiver = v35;
  v68.super_class = v42;
  v43 = objc_msgSendSuper2(&v68, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v47 = v43;
  [v47 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v48 = OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_subtitleLabel;
  v49 = *&v47[OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_subtitleLabel];
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v50 = v49;
  v51 = sub_100770D1C();
  [v50 setTextColor:v51];

  v52 = OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_descriptionLabel;
  v53 = *&v47[OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_descriptionLabel];
  v54 = sub_100770D1C();
  [v53 setTextColor:v54];

  v55 = OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_titleLabel;
  [*&v47[OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_titleLabel] setTextAlignment:1];
  [*&v47[v48] setTextAlignment:1];
  [*&v47[v52] setTextAlignment:1];
  [v47 addSubview:*&v47[OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_iconView]];
  [v47 addSubview:*&v47[v55]];
  [v47 addSubview:*&v47[v48]];
  [v47 addSubview:*&v47[v52]];
  [v47 addSubview:*&v47[OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_offerButton]];

  return v47;
}

uint64_t sub_10044AAB0()
{
  v1 = v0;
  swift_getObjectType();
  v28 = sub_10076D1FC();
  v27 = *(v28 - 8);
  __chkstk_darwin(v28);
  v26 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10075EA2C();
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10075EA4C();
  v6 = *(v25 - 8);
  __chkstk_darwin(v25);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for InAppPurchaseShowcaseLockupView();
  v35.receiver = v0;
  v35.super_class = v24;
  objc_msgSendSuper2(&v35, "layoutSubviews");
  v9 = [v0 traitCollection];
  sub_100449B38(v9, v5);

  v10 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_iconView];
  v33 = type metadata accessor for InAppPurchaseView(0);
  v34 = &protocol witness table for UIView;
  v32 = v10;
  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_titleLabel];
  v30 = sub_1007626BC();
  v31 = &protocol witness table for UILabel;
  v29[14] = &protocol witness table for UILabel;
  v29[15] = v11;
  v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_subtitleLabel];
  v29[13] = v30;
  v29[9] = &protocol witness table for UILabel;
  v29[10] = v12;
  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_descriptionLabel];
  v29[8] = v30;
  v29[5] = v13;
  v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_offerButton];
  v15 = type metadata accessor for OfferButton();
  v29[4] = &protocol witness table for UIView;
  v29[3] = v15;
  v29[0] = v14;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  sub_10075EA3C();
  sub_10076422C();
  v21 = v26;
  sub_10075E9EC();
  (*(v27 + 8))(v21, v28);
  return (*(v6 + 8))(v8, v25);
}

double sub_10044AE18(double a1, double a2)
{
  v3 = v2;
  swift_getObjectType();
  v4 = sub_10075EA2C();
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10075EA4C();
  v7 = *(v28 - 8);
  *&v8 = __chkstk_darwin(v28).n128_u64[0];
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v2 traitCollection];
  sub_100449B38(v11, v6);

  v12 = *&v2[OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_iconView];
  v33 = type metadata accessor for InAppPurchaseView(0);
  v34 = &protocol witness table for UIView;
  v32 = v12;
  v13 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_titleLabel];
  v30 = sub_1007626BC();
  v31 = &protocol witness table for UILabel;
  v29[14] = &protocol witness table for UILabel;
  v29[15] = v13;
  v14 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_subtitleLabel];
  v29[13] = v30;
  v29[9] = &protocol witness table for UILabel;
  v29[10] = v14;
  v15 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_descriptionLabel];
  v29[8] = v30;
  v29[5] = v15;
  v16 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_offerButton];
  v17 = type metadata accessor for OfferButton();
  v29[4] = &protocol witness table for UIView;
  v29[3] = v17;
  v29[0] = v16;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  v21 = v15;
  v22 = v16;
  sub_10075EA3C();
  sub_10044B1E0(&qword_100957780, &type metadata accessor for InAppPurchaseShowcaseLockupViewLayout, &protocol conformance descriptor for InAppPurchaseShowcaseLockupViewLayout);
  v23 = v28;
  sub_10076D2AC();
  v25 = v24;
  (*(v7 + 8))(v10, v23);
  return v25;
}

id sub_10044B10C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for InAppPurchaseShowcaseLockupView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10044B1E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10044B228()
{
  v1 = v0;
  v45 = sub_10076771C();
  v2 = *(v45 - 8);
  __chkstk_darwin(v45);
  v47 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v36 - v5;
  v7 = sub_10075E77C();
  __chkstk_darwin(v7 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_iconView;
  sub_10075E6FC();
  v11 = objc_allocWithZone(type metadata accessor for InAppPurchaseView(0));
  v12 = sub_1005B7DD4(v9, 1);
  v46 = v1;
  *(v1 + v10) = v12;
  v40 = OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_titleLabel;
  if (qword_100940F78 != -1)
  {
    swift_once();
  }

  v13 = sub_10076D3DC();
  v14 = sub_10000A61C(v13, qword_1009A1C60);
  v15 = *(v13 - 8);
  v16 = *(v15 + 16);
  v44 = v15 + 16;
  v16(v6, v14, v13);
  v43 = *(v15 + 56);
  v43(v6, 0, 1, v13);
  v17 = *(v2 + 104);
  v18 = enum case for DirectionalTextAlignment.none(_:);
  v41 = v2 + 104;
  v42 = v17;
  v17(v47);
  v19 = sub_1007626BC();
  v20 = objc_allocWithZone(v19);
  *(v46 + v40) = sub_1007626AC();
  v40 = OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_subtitleLabel;
  if (qword_100940F80 != -1)
  {
    swift_once();
  }

  v21 = sub_10000A61C(v13, qword_1009A1C78);
  v38 = v16;
  v39 = v21;
  v16(v6, v21, v13);
  v22 = v43;
  v43(v6, 0, 1, v13);
  v23 = v47;
  v37 = v18;
  v24 = v18;
  v25 = v45;
  v26 = v42;
  v42(v47, v24, v45);
  v36 = v19;
  v27 = objc_allocWithZone(v19);
  v28 = sub_1007626AC();
  v29 = v46;
  v30 = v39;
  *(v46 + v40) = v28;
  v31 = v25;
  v32 = OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_descriptionLabel;
  v38(v6, v30, v13);
  v22(v6, 0, 1, v13);
  v26(v23, v37, v31);
  v33 = objc_allocWithZone(v36);
  *(v29 + v32) = sub_1007626AC();
  v34 = OBJC_IVAR____TtC20ProductPageExtension31InAppPurchaseShowcaseLockupView_offerButton;
  v35 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v29 + v34) = sub_1001E89B8(0);
  sub_10077156C();
  __break(1u);
}

void *sub_10044B6E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_10044B9A0(a1, a2);
  if (v2)
  {
    v3 = v2;
    sub_10077019C();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();
  }

  return _swiftEmptyArrayStorage;
}

double sub_10044B788@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20 = a3;
  v8 = sub_10076341C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  type metadata accessor for SeparatorSupplementaryView(0);
  if (sub_10077090C())
  {

    v11 = sub_1007708FC();
    v19[1] = v12;
    v19[2] = v11;
    v13 = swift_allocObject();
    v19[0] = a4;
    v14 = v13;
    swift_weakInit();
    (*(v9 + 16))(v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v8);
    v15 = *(v9 + 80);
    v20 = a1;
    v16 = (v15 + 24) & ~v15;
    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    (*(v9 + 32))(v17 + v16, v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    *(v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v19[0];
    *(a5 + 24) = sub_10000A5D4(&qword_100942C18, &unk_10078C540);
    *(a5 + 32) = sub_100023880();
    sub_10000DB7C(a5);

    sub_10076A3BC();
  }

  else
  {
    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

id sub_10044B9A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10076C38C();
  v83 = *(v4 - 8);
  v84 = v4;
  __chkstk_darwin(v4);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100763F9C();
  v8 = *(v7 - 8);
  v86 = v7;
  v87 = v8;
  __chkstk_darwin(v7);
  v85 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v77 - v11;
  __chkstk_darwin(v13);
  v15 = &v77 - v14;
  v16 = sub_10000A5D4(&qword_100942C08, &unk_1007A3900);
  __chkstk_darwin(v16 - 8);
  v18 = &v77 - v17;
  v19 = sub_100763FDC();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10044C394(v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_10044C864(v18);
    return 0;
  }

  (*(v20 + 32))(v22, v18, v19);
  if (((*(*v2 + 128))(a1) & 1) == 0)
  {
    (*(v20 + 8))(v22, v19);
    return 0;
  }

  v82 = v22;
  sub_100763FBC();
  v80 = *(v87 + 88);
  v23 = v80(v15, v86);
  v78 = enum case for ComponentSeparator.Position.bottom(_:);
  v79 = enum case for ComponentSeparator.Position.top(_:);
  if (v23 == enum case for ComponentSeparator.Position.top(_:) || (v24 = v23, v23 == enum case for ComponentSeparator.Position.bottom(_:)))
  {
    v39 = objc_opt_self();
    v40 = [v39 fractionalWidthDimension:1.0];
    swift_getKeyPath();
    sub_10076338C();

    v41 = v88;
    sub_100763FCC();
    v43 = v42;

    v44 = [v39 absoluteDimension:v43];
    v45 = [objc_opt_self() sizeWithWidthDimension:v40 heightDimension:v44];

    v46 = v45;
  }

  else
  {
    v25 = enum case for ComponentSeparator.Position.leading(_:);
    v26 = objc_opt_self();
    v27 = v26;
    if (v24 != v25 && v24 != enum case for ComponentSeparator.Position.trailing(_:))
    {
      v81 = [v26 fractionalWidthDimension:1.0];
      swift_getKeyPath();
      sub_10076338C();

      v28 = v88;
      sub_100763FCC();
      v30 = v29;

      v31 = [v27 absoluteDimension:v30];
      v32 = objc_opt_self();
      v33 = v81;
      v34 = [v32 sizeWithWidthDimension:v81 heightDimension:v31];

      v35 = *(v87 + 8);
      v81 = v34;
      v36 = v15;
      v37 = v86;
      v35(v36, v86);
      goto LABEL_14;
    }

    swift_getKeyPath();
    sub_10076338C();

    v47 = v88;
    sub_100763FCC();
    v49 = v48;

    v50 = [v27 absoluteDimension:v49];
    v51 = [v27 fractionalHeightDimension:1.0];
    v52 = [objc_opt_self() sizeWithWidthDimension:v50 heightDimension:v51];

    v46 = v52;
  }

  v81 = v46;
  v37 = v86;
LABEL_14:
  v53 = v82;
  sub_100763FBC();
  v54 = v80(v12, v37);
  if (v54 == v79)
  {
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C23C();
    v56 = v55;
    (*(v83 + 8))(v6, v84);
    v57 = [objc_opt_self() layoutAnchorWithEdges:1 absoluteOffset:{0.0, v56 * -0.5}];
  }

  else if (v54 == v78)
  {
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C23C();
    v59 = v58;
    (*(v83 + 8))(v6, v84);
    v57 = [objc_opt_self() layoutAnchorWithEdges:4 absoluteOffset:{0.0, v59 * 0.5}];
  }

  else
  {
    if (v54 != enum case for ComponentSeparator.Position.leading(_:))
    {
      v68 = enum case for ComponentSeparator.Position.trailing(_:);
      v69 = v54;
      swift_getKeyPath();
      sub_10076338C();

      v70 = (v83 + 8);
      if (v69 == v68)
      {
        sub_10076C2BC();
        v72 = v71;
        (*v70)(v6, v84);
        v62 = [objc_opt_self() layoutAnchorWithEdges:8 absoluteOffset:{v72 * 0.5, 0.0}];
        v37 = v86;
      }

      else
      {
        sub_10076C23C();
        v74 = v73;
        (*v70)(v6, v84);
        v75 = [objc_opt_self() layoutAnchorWithEdges:1 absoluteOffset:{0.0, v74 * -0.5}];
        v76 = *(v87 + 8);
        v62 = v75;
        v37 = v86;
        v76(v12, v86);
      }

      v53 = v82;
      goto LABEL_21;
    }

    swift_getKeyPath();
    sub_10076338C();

    sub_10076C2BC();
    v61 = v60;
    (*(v83 + 8))(v6, v84);
    v57 = [objc_opt_self() layoutAnchorWithEdges:2 absoluteOffset:{v61 * -0.5, 0.0}];
  }

  v62 = v57;
LABEL_21:
  type metadata accessor for SeparatorSupplementaryView(0);
  v63 = v85;
  sub_100763FBC();
  v88 = 0;
  v89 = 0xE000000000000000;
  sub_10077151C();
  v90._countAndFlagsBits = 95;
  v90._object = 0xE100000000000000;
  sub_1007700CC(v90);
  v91._countAndFlagsBits = sub_10077091C();
  sub_1007700CC(v91);

  (*(v87 + 8))(v63, v37);
  v64 = sub_10076FF6C();

  v65 = objc_opt_self();
  v66 = v81;
  v67 = [v65 supplementaryItemWithLayoutSize:v81 elementKind:v64 containerAnchor:v62];

  (*(v20 + 8))(v53, v19);
  return v67;
}

uint64_t sub_10044C394@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_10000A5D4(&qword_100942C08, &unk_1007A3900);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  sub_10000CF78((v3 + 16), *(v3 + 40));
  if (sub_10076A3CC() && swift_conformsToProtocol2())
  {
    sub_10076A93C();
    v8 = sub_100763FDC();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(a3, v7, v8);
      return (*(v9 + 56))(a3, 0, 1, v8);
    }

    sub_10044C864(v7);
  }

  v10 = sub_100763FDC();
  return (*(*(v10 - 8) + 56))(a3, 1, 1, v10);
}

uint64_t sub_10044C56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = sub_10000A5D4(&qword_100942C08, &unk_1007A3900);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  v11 = sub_100763FDC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v22 - v16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000A570(result + 16, v22);

    sub_10000CF78(v22, v22[3]);
    v19 = sub_10076A3CC();
    result = sub_10000CD74(v22);
    if (v19)
    {
      result = swift_conformsToProtocol2();
      if (result)
      {
        sub_10076A93C();
        if ((*(v12 + 48))(v10, 1, v11) == 1)
        {
          return sub_10044C864(v10);
        }

        else
        {
          (*(v12 + 32))(v17, v10, v11);
          (*(v12 + 16))(v14, v17, v11);
          v20 = OBJC_IVAR____TtC20ProductPageExtension26SeparatorSupplementaryView_separator;
          swift_beginAccess();
          (*(v12 + 24))(a1 + v20, v14, v11);
          swift_endAccess();
          sub_1006359A8();
          v21 = *(v12 + 8);
          v21(v14, v11);
          return (v21)(v17, v11);
        }
      }
    }
  }

  return result;
}

uint64_t sub_10044C864(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100942C08, &unk_1007A3900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10044C8CC()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  swift_getKeyPath();
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  v10 = *(v5 + 8);
  v34 = v5 + 8;
  v35 = v10;
  v10(v9, v4);
  v11 = *(v36 + 16);

  v33 = sub_1007633CC();
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C21C();
  v13 = v12;
  v14 = v12;
  v15 = *(v1 + 8);
  v31 = v0;
  result = v15(v3, v0);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!v13)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v17 = v11 % v13;
  if (!v17)
  {
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C21C();
    v19 = v18;
    v20 = v18;
    result = v15(v3, v31);
    if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v19 <= -9.22337204e18)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v19 >= 9.22337204e18)
    {
LABEL_34:
      __break(1u);
      return result;
    }

    v17 = v19;
  }

  v21 = __OFSUB__(v11, v17);
  v22 = v11 - v17;
  if (v21)
  {
    goto LABEL_29;
  }

  v23 = v22 - 1;
  if (__OFSUB__(v22, 1))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  swift_getKeyPath();
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  v24 = v35;
  v35(v9, v4);
  v25 = v36;
  result = sub_1007633CC();
  if (v25 != 1)
  {
    v29 = v23 < result;
LABEL_19:
    v28 = v33;
    goto LABEL_20;
  }

  v26 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_31;
  }

  swift_getKeyPath();
  v27 = v32;
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  v24(v27, v4);
  if (v36 == -1)
  {
    v29 = 1;
    goto LABEL_19;
  }

  v28 = v33;
  if (v36)
  {
    v29 = v26 % v36 == 0;
  }

  else
  {
    v29 = v26 == 0;
  }

LABEL_20:
  if (v11 <= 1)
  {
    v30 = 1;
  }

  else
  {
    v30 = v11;
  }

  return v28 != v30 - 1 && !v29;
}

uint64_t sub_10044CD68()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10044CDA0()
{
  v1 = sub_10076341C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

unint64_t sub_10044CE7C()
{
  result = qword_100957850;
  if (!qword_100957850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957850);
  }

  return result;
}

unint64_t sub_10044CED4()
{
  result = qword_100957858;
  if (!qword_100957858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957858);
  }

  return result;
}

unint64_t sub_10044CF28()
{
  result = qword_100957860;
  if (!qword_100957860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957860);
  }

  return result;
}

uint64_t sub_10044CFA0()
{
  v0 = sub_10000A5D4(&qword_10094D880, &qword_100794E90);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_10075DA7C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_10075D72C();
  sub_10000DB18(v5, qword_10099FA40);
  sub_10000A61C(v5, qword_10099FA40);
  sub_10075DA5C();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_10075D71C();
}

uint64_t sub_10044D104()
{
  v0 = sub_10000A5D4(&qword_1009578E0, "bt\a");
  sub_10000DB18(v0, qword_10099FA58);
  sub_10000A61C(v0, qword_10099FA58);
  sub_10000A5D4(&qword_100957900, &qword_1007A3EA0);
  return sub_10076D02C();
}

uint64_t sub_10044D194()
{
  v0 = sub_10000A5D4(&qword_10094D878, &qword_100794E88);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_10000A5D4(&qword_10094D880, &qword_100794E90);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_10075DA7C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = sub_10076FF5C();
  __chkstk_darwin(v8 - 8);
  sub_10076FF4C();
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_10076FF3C(v12);
  sub_10075D5EC();
  sub_10076FF2C(v11);

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_10076FF3C(v13);
  sub_10075DA6C();
  (*(v7 + 56))(v5, 1, 1, v6);
  v9 = sub_10075D62C();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return sub_10075D63C();
}

uint64_t sub_10044D404(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1001FC3F4;

  return sub_10044E590(a1);
}

unint64_t sub_10044D4B0()
{
  result = qword_100957868;
  if (!qword_100957868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957868);
  }

  return result;
}

unint64_t sub_10044D504()
{
  result = qword_100957870;
  if (!qword_100957870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957870);
  }

  return result;
}

unint64_t sub_10044D55C()
{
  result = qword_100957878;
  if (!qword_100957878)
  {
    sub_10000CE78(&qword_100957880, qword_1007A3AA8);
    sub_10044D504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957878);
  }

  return result;
}

uint64_t sub_10044D5E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10044D858();
  *v5 = v2;
  v5[1] = sub_100025A64;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_10044D694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100025A64;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_10044D750()
{
  result = qword_100957888;
  if (!qword_100957888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957888);
  }

  return result;
}

unint64_t sub_10044D7A8()
{
  result = qword_100957890;
  if (!qword_100957890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957890);
  }

  return result;
}

unint64_t sub_10044D800()
{
  result = qword_100957898;
  if (!qword_100957898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957898);
  }

  return result;
}

unint64_t sub_10044D858()
{
  result = qword_1009578A0;
  if (!qword_1009578A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009578A0);
  }

  return result;
}

unint64_t sub_10044D8B4()
{
  result = qword_1009578A8;
  if (!qword_1009578A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009578A8);
  }

  return result;
}

uint64_t sub_10044D908(uint64_t a1)
{
  v1 = sub_10000A5D4(&qword_100957910, &qword_1007A3EA8);
  __chkstk_darwin(v1);
  sub_10044CF28();
  sub_10075D69C();
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  sub_10075D68C(v3);
  swift_getKeyPath();
  sub_10000A5D4(&qword_100957918, &qword_1007A3ED8);
  sub_10075D67C();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_10075D68C(v4);
  return sub_10075D6AC();
}

unint64_t sub_10044DA28()
{
  result = qword_1009578B0;
  if (!qword_1009578B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009578B0);
  }

  return result;
}

unint64_t sub_10044DA80()
{
  result = qword_1009578B8;
  if (!qword_1009578B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009578B8);
  }

  return result;
}

unint64_t sub_10044DADC()
{
  result = qword_1009578C0;
  if (!qword_1009578C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009578C0);
  }

  return result;
}

uint64_t sub_10044DB30(uint64_t a1)
{
  sub_10044E510();
  v2 = sub_10075D66C();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10044DBA0@<X0>(uint64_t a1@<X8>)
{
  if (qword_100940520 != -1)
  {
    swift_once();
  }

  v3 = sub_10075D72C();
  v4 = sub_10000A61C(v3, qword_10099FA40);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t sub_10044DC8C(uint64_t a1)
{
  v2 = sub_10044CF28();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10044DCDC()
{
  result = qword_1009578D8;
  if (!qword_1009578D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009578D8);
  }

  return result;
}

uint64_t sub_10044DD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000257CC;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_10044DDF8(uint64_t a1)
{
  v2 = sub_10044DADC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10044DE64(char a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    sub_10077145C(38);

    v6 = 0xD000000000000024;
  }

  else
  {
    sub_10077145C(31);

    v6 = 0xD00000000000001DLL;
  }

  v7._countAndFlagsBits = a2;
  v7._object = a3;
  sub_1007700CC(v7);
  return v6;
}

void sub_10044DF20(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v42 = a4;
  v43 = a5;
  v46 = a3;
  v9 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v9 - 8);
  v11 = &v40 - v10;
  v12 = sub_10000A5D4(&qword_1009578E0, "bt\a");
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v40 - v14;
  v16 = sub_10000A5D4(&qword_1009578E8, "ht\a");
  __chkstk_darwin(v16 - 8);
  v18 = &v40 - v17;
  v19 = sub_10075DA7C();
  __chkstk_darwin(v19 - 8);
  sub_10000A5D4(&qword_10094D870, &qword_100794E80);
  sub_10075DA5C();
  v45 = sub_10075D61C();

  sub_10075DA5C();
  v20 = sub_10075D61C();
  v21 = qword_100940528;
  v41 = v20;

  if (v21 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v12, qword_10099FA58);
  sub_100071820(&qword_1009578F0, &qword_1009578E0, "bt\a", &protocol conformance descriptor for Regex<A>);
  sub_10076D01C();
  v44 = a1;
  sub_10077015C();
  sub_10076D03C();
  (*(v13 + 8))(v15, v12);

  v22 = sub_10000A5D4(&qword_1009578F8, &qword_1007A3E98);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v18, 1, v22) == 1)
  {
    sub_10000CFBC(v18, &qword_1009578E8, "ht\a");

    v24 = 0;
    v25 = a2;
    v26 = v44;
    v27 = v44;
  }

  else
  {
    sub_10076D04C();

    (*(v23 + 8))(v18, v22);
    v27 = sub_10077006C();
    v25 = v39;

    v24 = 1;
    v26 = v44;
  }

  v28 = v42;
  if (!v43)
  {
    v28 = 0;
  }

  v29 = 0xE000000000000000;
  if (v43)
  {
    v29 = v43;
  }

  v47 = v28;
  v48 = v29;

  sub_10075D5FC();
  v30 = v11;
  sub_100050CC0(v46, v11);
  v31 = sub_10075DB7C();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v11, 1, v31) == 1)
  {
    sub_10000CFBC(v11, &unk_1009435D0, &qword_100785850);
    v33 = sub_10044DE64(v24, v27, v25);
    v35 = v34;
  }

  else
  {
    v33 = sub_10075DAFC();
    v35 = v36;
    (*(v32 + 8))(v30, v31);
  }

  v47 = v33;
  v48 = v35;
  v37 = v41;
  sub_10075D5FC();
  sub_10000CFBC(v46, &unk_1009435D0, &qword_100785850);

  v38 = v45;

  *a6 = v26;
  a6[1] = a2;
  a6[2] = v27;
  a6[3] = v25;
  a6[4] = v38;
  a6[5] = v37;
}

unint64_t sub_10044E510()
{
  result = qword_100957908;
  if (!qword_100957908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957908);
  }

  return result;
}

uint64_t sub_10044E564@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10075D60C();
  *a1 = result;
  return result;
}

uint64_t sub_10044E590(uint64_t a1)
{
  *(v1 + 64) = a1;
  sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  *(v1 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_10044E62C, 0, 0);
}

uint64_t sub_10044E62C()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_1004BBD2C(0, v2, 0);
    v3 = sub_10075DB7C();
    v4 = *(*(v3 - 8) + 56);
    v5 = (v1 + 40);
    do
    {
      v6 = *(v0 + 72);
      v7 = *(v5 - 1);
      v8 = *v5;
      v4(v6, 1, 1, v3);

      sub_10044DF20(v7, v8, v6, 0, 0, (v0 + 16));
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_1004BBD2C((v9 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      v11 = &_swiftEmptyArrayStorage[6 * v10];
      v12 = *(v0 + 16);
      v13 = *(v0 + 48);
      v11[3] = *(v0 + 32);
      v11[4] = v13;
      v11[2] = v12;
      v5 += 2;
      --v2;
    }

    while (v2);
  }

  v14 = *(v0 + 8);

  return v14(_swiftEmptyArrayStorage);
}

uint64_t type metadata accessor for SearchButton(uint64_t a1)
{
  result = qword_100957928;
  if (!qword_100957928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10044E864()
{
  sub_1000325F0();
  result = sub_100770DAC();
  qword_10099FA70 = result;
  return result;
}

uint64_t sub_10044E898()
{
  sub_1000325F0();
  result = sub_100770E1C();
  qword_10099FA78 = result;
  return result;
}

id sub_10044E8CC(uint64_t a1)
{
  v3 = sub_10076048C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[qword_100957920] = a1;
  v7 = type metadata accessor for SearchButton(0);
  v15.receiver = v1;
  v15.super_class = v7;

  v8 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1007641DC();
  v9 = qword_100940530;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  [v10 setBackgroundColor:qword_10099FA70];
  if (qword_100940538 != -1)
  {
    swift_once();
  }

  [v10 setTintColor:qword_10099FA78];

  v11 = [v10 layer];
  [v11 setCornerRadius:22.0];

  [v10 setClipsToBounds:1];
  (*(v4 + 104))(v6, enum case for SystemImage.magnifyingglass(_:), v3);
  v12 = sub_10076046C();
  (*(v4 + 8))(v6, v3);
  v13 = [v12 imageWithRenderingMode:2];

  [v10 setImage:v13 forState:0];
  [v10 addTarget:v10 action:"goToSearch" forControlEvents:64];

  return v10;
}

double sub_10044EB88(void *a1)
{
  v1 = a1;
  v2 = [v1 traitCollection];
  if (qword_100940998 != -1)
  {
    swift_once();
  }

  v3 = sub_10076D3DC();
  v4 = sub_10000A61C(v3, qword_1009A0AD8);
  sub_1001ACC0C(v4, v2, 44.0);
  v6 = v5;

  return v6;
}

uint64_t sub_10044EC70()
{
  v0 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v0 - 8);
  v33 = &v29 - v1;
  v32 = sub_10075F65C();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100765F6C();
  v4 = *(v30 - 8);
  __chkstk_darwin(v30);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100766EDC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076F4FC();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v12 - 8);
  v14 = &v29 - v13;
  v15 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v15 - 8);
  v17 = &v29 - v16;
  v18 = sub_10076C15C();
  __chkstk_darwin(v18);
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  (*(v20 + 104))(&v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.search(_:));
  v21 = sub_10075DB7C();
  (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  v22 = sub_10076096C();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v35 = 0u;
  v36 = 0u;
  sub_10076F4DC();
  (*(v8 + 104))(v10, enum case for FlowPresentationContext.push(_:), v7);
  (*(v4 + 104))(v6, enum case for FlowAnimationBehavior.never(_:), v30);
  (*(v2 + 104))(v31, enum case for FlowOrigin.inapp(_:), v32);
  sub_10076FA2C();
  sub_10075F63C();
  swift_allocObject();
  v23 = v33;
  v24 = sub_10075F5EC();
  v25 = *(v34 + qword_100957920);
  v26 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  sub_10076F5AC();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v23, 1, v26) == 1)
  {

    return sub_1000527AC(v23);
  }

  else
  {
    sub_100263C24(v24, 1, v25, v23);

    return (*(v27 + 8))(v23, v26);
  }
}

void sub_10044F23C(void *a1)
{
  v1 = a1;
  sub_10044EC70();
}

void sub_10044F284(void *a1, uint64_t a2, void *a3)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for SearchButton(0);
  v4 = a3;
  v5 = v8.receiver;
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", v4);
  [v5 invalidateIntrinsicContentSize];
  v6 = [v5 layer];
  [v5 intrinsicContentSize];
  [v6 setCornerRadius:v7 * 0.5];
}

id sub_10044F38C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchButton(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t static SearchPageGridBreakpointOverridable.pageGridWithSearchOverrides(for:)()
{
  v0 = sub_10076469C();
  __chkstk_darwin(v0 - 8);
  sub_1007632FC();
  if (qword_100940540 != -1)
  {
    swift_once();
  }

  return sub_10076C32C();
}

uint64_t sub_10044F4C0()
{
  v0 = sub_10000A5D4(&qword_100942900, &unk_10078A660);
  __chkstk_darwin(v0 - 8);
  v2 = &v42 - v1;
  v53 = sub_10076C2DC();
  v3 = *(v53 - 8);
  __chkstk_darwin(v53);
  v5 = (&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10000A5D4(&qword_100942908, &unk_1007A3F70);
  __chkstk_darwin(v6 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v42 - v10;
  __chkstk_darwin(v12);
  v56 = &v42 - v13;
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  sub_10000A5D4(&qword_100942910, &unk_10078A670);
  v17 = *(sub_10076C20C() - 8);
  v54 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v47 = v19;
  *(v19 + 16) = xmmword_1007844F0;
  v20 = v19 + v18;
  v58 = 0x3FF0000000000000;
  sub_10001E290();
  sub_10076C29C();
  v58 = 0;
  sub_10076C29C();
  v58 = 0x4048000000000000;
  v21 = v11;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #16.0 }

  *v5 = _Q0;
  v57 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v27 = *(v3 + 104);
  v48 = v3 + 104;
  v28 = v53;
  v27(v5);
  v51 = v27;
  left = UIEdgeInsetsZero.left;
  LOBYTE(v58) = 0;
  sub_10076C29C();
  v58 = 0;
  v50 = v8;
  sub_10076C29C();
  v52 = v20;
  v55 = v16;
  sub_10076C1CC();
  v58 = 0x3FF0000000000000;
  sub_10076C29C();
  v58 = 0;
  sub_10076C29C();
  v58 = 0x4048000000000000;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #20.0 }

  *v5 = _Q0;
  (v27)(v5, v57, v28);
  LOBYTE(v58) = 0;
  v49 = v2;
  sub_10076C29C();
  v58 = 0;
  sub_10076C29C();
  v31 = v54;
  top = UIEdgeInsetsZero.top;
  v46 = left;
  v42 = v21;
  sub_10076C1CC();
  v43 = 2 * v31;
  v58 = 0x3FF0000000000000;
  sub_10076C29C();
  v58 = 0;
  sub_10076C29C();
  v58 = 0x4048000000000000;
  sub_10076C29C();
  v44 = vdupq_n_s64(0x4041000000000000uLL);
  v32 = v5;
  *v5 = v44;
  v33 = v53;
  v34 = v51;
  (v51)(v5, v57, v53);
  LOBYTE(v58) = 0;
  sub_10076C29C();
  v58 = 0;
  sub_10076C29C();
  v35 = v43;
  v36 = v32;
  sub_10076C1CC();
  v37 = v54;
  v43 = v35 + v54;
  v58 = 0x4000000000000000;
  sub_10076C29C();
  v58 = 0x4044000000000000;
  sub_10076C29C();
  v58 = 0x4044000000000000;
  sub_10076C29C();
  *v36 = v44;
  v38 = v57;
  (v34)(v36, v57, v33);
  sub_1007704BC();
  LOBYTE(v58) = 0;
  sub_10076C29C();
  v58 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v43 = 4 * v37;
  v58 = 0x4000000000000000;
  sub_10076C29C();
  v58 = 0x4044000000000000;
  sub_10076C29C();
  v58 = 0x4044000000000000;
  sub_10076C29C();
  v44 = vdupq_n_s64(0x404A000000000000uLL);
  *v36 = v44;
  v39 = v53;
  (v51)(v36, v38, v53);
  LOBYTE(v58) = 0;
  sub_10076C29C();
  v58 = 0;
  sub_10076C29C();
  v40 = v43;
  sub_10076C1CC();
  v54 += v40;
  v58 = 0x4000000000000000;
  sub_10076C29C();
  v58 = 0x4044000000000000;
  sub_10076C29C();
  v58 = 0x4044000000000000;
  sub_10076C29C();
  *v36 = v44;
  (v51)(v36, v57, v39);
  LOBYTE(v58) = 0;
  sub_10076C29C();
  v58 = 0;
  sub_10076C29C();
  result = sub_10076C1CC();
  qword_10099FA90 = v47;
  return result;
}