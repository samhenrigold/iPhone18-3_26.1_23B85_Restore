id sub_507AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

id sub_507B60()
{
  v0 = sub_50DD0C();

  return v0;
}

void sub_507B8C(uint64_t a1)
{
  v3 = qword_9593C0;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_507C44(uint64_t a1)
{
  v3 = qword_9593C8;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_507D20()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = (swift_isaMask & *v0);
  v5 = sub_BD88(&qword_949580, &qword_78A3F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v44 - v7;
  v9 = *&stru_248.segname[(v3 & v2) + 8];
  v10 = v4[36];
  v47[0] = v4[35];
  v47[1] = v10;
  v47[2] = v4[37];
  v48 = v9;
  v11 = type metadata accessor for BaseDiffableShelfViewController(0, v47);
  v49.receiver = v1;
  v49.super_class = v11;
  objc_msgSendSuper2(&v49, "viewDidLoad");
  [v1 setInstallsStandardGestureForInteractiveMovement:0];
  sub_483080(0, 0, 1);
  v12 = [v1 view];
  if (!v12)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v12;
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v14 = sub_76A000();
  [v13 setBackgroundColor:v14];

  v15 = [v1 collectionView];
  if (v15)
  {
    v16 = v15;
    v17 = [objc_opt_self() systemBackgroundColor];
    [v16 setBackgroundColor:v17];
  }

  v18 = [v1 collectionView];
  if (v18)
  {
    v19 = v18;
    [v18 setAlwaysBounceVertical:1];
  }

  swift_getWitnessTable();
  sub_763A40();
  (*(&stru_478.size + (swift_isaMask & *v1)))();
  sub_75F180();
  v20 = [v1 collectionView];
  if (!v20)
  {
    goto LABEL_16;
  }

  v21 = v20;
  [v20 setPrefetchDataSource:v1];

  v22 = qword_9593C8;
  swift_beginAccess();
  v23 = *(v1 + v22);
  if (v23)
  {
    v46 = v5;
    v24 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph);
    type metadata accessor for DiffableFlowPreviewPresenter();
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_BD88(&qword_949590, &qword_78A400);
    swift_allocObject();
    v26 = v23;
    v45 = v24;
    swift_retain_n();
    *(v25 + 32) = sub_7690B0();
    v44 = v26;
    swift_unknownObjectWeakAssign();
    *(v25 + 24) = v24;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_50DF28;
    *(v27 + 24) = 0;
    sub_16194(&qword_959570, &qword_949590, &qword_78A400, &protocol conformance descriptor for SyncEvent<A>);
    sub_768710();
    sub_768720();

    sub_BEB8(v47);
    (*(v6 + 8))(v8, v46);
    v28 = sub_50E528(&qword_959578, type metadata accessor for DiffableFlowPreviewPresenter, &unk_79FD74);
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    v30[2] = v29;
    v30[3] = v25;
    v30[4] = v28;

    v31 = v1;
    v32 = sub_50E008(v25, v31, sub_45AF0, v30, v45);

    v33 = *(v31 + qword_9593D8);
    *(v31 + qword_9593D8) = v32;
    v34 = v32;

    *(v31 + qword_9593D0) = v25;

    v35 = [objc_allocWithZone(UIContextMenuInteraction) initWithDelegate:v34];
    v36 = [v31 collectionView];
    if (v36)
    {
      v37 = v36;
      [v36 addInteraction:v35];

      goto LABEL_10;
    }

LABEL_17:
    __break(1u);
    return;
  }

LABEL_10:
  if (*(v1 + qword_9593E0))
  {
    v38 = [v1 collectionView];
    sub_7614E0();
  }

  v39 = *(v1 + qword_9593E8);
  if (v39)
  {
    v40 = *(&stru_3D8.size + (swift_isaMask & *v1));

    v42 = v40(v41);
    v43 = *(v39 + 16);
    *(v39 + 16) = v42;
  }
}

void sub_50840C(void *a1)
{
  v1 = a1;
  sub_507D20();
}

double sub_508454(char a1)
{
  v2 = v1;
  v4 = swift_isaMask & *v2;
  v5 = *&stru_248.segname[v4 + 8];
  v6 = *(&stru_1F8.reserved2 + v4);
  v9[0] = *(&stru_1F8.reloff + v4);
  v9[1] = v6;
  v9[2] = *(v4 + 592);
  v10 = v5;
  v7 = type metadata accessor for BaseDiffableShelfViewController(0, v9);
  v11.receiver = v2;
  v11.super_class = v7;
  objc_msgSendSuper2(&v11, "viewWillAppear:", a1 & 1);
  if ((*(v2 + qword_99E1B0) & 1) == 0)
  {
    sub_761860();
  }

  sub_75F1A0();
  sub_75A0A0();
  return result;
}

void sub_50854C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_508454(a3);
}

void sub_5085A0(char a1)
{
  v2 = v1;
  v4 = swift_isaMask & *v2;
  v5 = *&stru_248.segname[v4 + 8];
  v6 = *(&stru_1F8.reserved2 + v4);
  v10[0] = *(&stru_1F8.reloff + v4);
  v10[1] = v6;
  v10[2] = *(v4 + 592);
  v11 = v5;
  v7 = type metadata accessor for BaseDiffableShelfViewController(0, v10);
  v12.receiver = v2;
  v12.super_class = v7;
  objc_msgSendSuper2(&v12, "viewDidAppear:", a1 & 1);
  sub_75F190();
  sub_761120();
  sub_768900();
  sub_768ED0();
  v8 = *&v10[0];
  sub_7610A0();
  sub_75E3E0();
  sub_7688F0();
  if (*&v10[0])
  {
    v9 = *&v10[0];
    sub_75E3C0();

    v8 = v9;
  }
}

void sub_5086EC(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_5085A0(a3);
}

void sub_508740(char a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = swift_isaMask;
  v6 = (swift_isaMask & *v2);
  v7 = sub_768D60();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&stru_248.segname[(v5 & v4) + 8];
  v12 = v6[36];
  v16[0] = v6[35];
  v16[1] = v12;
  v16[2] = v6[37];
  v17 = v11;
  v13 = type metadata accessor for BaseDiffableShelfViewController(0, v16);
  v18.receiver = v2;
  v18.super_class = v13;
  objc_msgSendSuper2(&v18, "viewWillDisappear:", a1 & 1);
  sub_768D50();
  sub_75F1F0();
  (*(v8 + 8))(v10, v7);
  if (*(v2 + qword_99E1E8) == 1)
  {
    sub_761120();
    sub_768900();
    sub_768ED0();
    v14 = *&v16[0];
    sub_761070();
  }

  sub_75E3E0();
  sub_768900();
  sub_768ED0();
  v15 = *&v16[0];
  sub_75E3B0();
}

void sub_508954(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_508740(a3);
}

double sub_5089A8(char a1)
{
  v2 = v1;
  v4 = swift_isaMask & *v2;
  v5 = *&stru_248.segname[v4 + 8];
  v6 = *(&stru_1F8.reserved2 + v4);
  v9[0] = *(&stru_1F8.reloff + v4);
  v9[1] = v6;
  v9[2] = *(v4 + 592);
  v10 = v5;
  v7 = type metadata accessor for BaseDiffableShelfViewController(0, v9);
  v11.receiver = v2;
  v11.super_class = v7;
  objc_msgSendSuper2(&v11, "viewDidDisappear:", a1 & 1);
  sub_75F1E0();
  sub_75A0A0();
  return result;
}

void sub_508A7C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_5089A8(a3);
}

void sub_508B04(void *a1)
{
  v1 = a1;
  sub_509044(&selRef_didReceiveMemoryWarning, &protocol conformance descriptor for DiffablePagePresenter<A>, &ViewControllerPresenter.viewDidReceiveMemoryWarning());
}

uint64_t sub_508B80()
{
  v1 = swift_isaMask & *v0;
  v2 = *&stru_248.segname[v1 + 8];
  v3 = *(&stru_1F8.reserved2 + v1);
  v6[0] = *(&stru_1F8.reloff + v1);
  v6[1] = v3;
  v6[2] = *(v1 + 592);
  v7 = v2;
  v4 = type metadata accessor for BaseDiffableShelfViewController(0, v6);
  v8.receiver = v0;
  v8.super_class = v4;
  objc_msgSendSuper2(&v8, "as_viewWillBecomePartiallyVisible");
  return sub_75F240();
}

void sub_508C34(void *a1)
{
  v1 = a1;
  sub_508B80();
}

void sub_508C7C()
{
  v1 = swift_isaMask & *v0;
  v6 = *(&stru_1F8.reloff + v1);
  v2 = *(v1 + 584);
  v7 = *(v1 + 568);
  v8 = v2;
  v9 = *(v1 + 600);
  v3 = type metadata accessor for BaseDiffableShelfViewController(0, &v6);
  v10.receiver = v0;
  v10.super_class = v3;
  objc_msgSendSuper2(&v10, "as_viewDidBecomePartiallyVisible");
  swift_getWitnessTable();
  sub_758930();
  if (*(v0 + qword_99E1E8) == 1)
  {
    sub_761120();
    sub_768900();
    sub_768ED0();
    v4 = v6;
    sub_761070();
  }

  sub_75A0A0();
  sub_75E3E0();
  sub_768900();
  sub_768ED0();
  v5 = v6;
  sub_75E3B0();
}

void sub_508E2C(void *a1)
{
  v1 = a1;
  sub_508C7C();
}

void sub_508E74()
{
  v1 = swift_isaMask & *v0;
  v2 = *&stru_248.segname[v1 + 8];
  v3 = *(&stru_1F8.reserved2 + v1);
  v8[0] = *(&stru_1F8.reloff + v1);
  v8[1] = v3;
  v8[2] = *(v1 + 592);
  v9 = v2;
  v4 = type metadata accessor for BaseDiffableShelfViewController(0, v8);
  v10.receiver = v0;
  v10.super_class = v4;
  objc_msgSendSuper2(&v10, "as_viewWillBecomeFullyVisible");
  sub_75F230();
  sub_761120();
  sub_768900();
  sub_768ED0();
  v5 = *&v8[0];
  sub_7610A0();
  sub_75E3E0();
  sub_7688F0();
  v6 = *&v8[0];
  if (*&v8[0])
  {
    v7 = *&v8[0];
    sub_75E3C0();
  }

  sub_75A0A0();
}

void sub_508FC8(void *a1)
{
  v1 = a1;
  sub_508E74();
}

uint64_t sub_509044(SEL *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = swift_isaMask & *v3;
  v12 = *(&stru_1F8.reloff + v6);
  v7 = *(v6 + 584);
  v13 = *(v6 + 568);
  v11 = v13;
  v14 = v7;
  v15 = *(v6 + 600);
  v8 = type metadata accessor for BaseDiffableShelfViewController(0, &v12);
  v16.receiver = v3;
  v16.super_class = v8;
  objc_msgSendSuper2(&v16, *a1);
  WitnessTable = swift_getWitnessTable();
  return a3(v11, WitnessTable);
}

void sub_50913C(void *a1)
{
  v1 = a1;
  sub_509044(&selRef_as_viewDidBecomeFullyVisible, &protocol conformance descriptor for DiffablePagePresenter<A>, &AppStoreViewControllerPresenter.viewDidBecomeFullyVisible());
}

id sub_5091B8(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = (swift_isaMask & *v1);
  v6 = sub_BD88(&qword_9495B8, &qword_78A428);
  __chkstk_darwin(v6 - 8);
  v8 = v18 - v7;
  v9 = *&stru_248.segname[(v4 & v3) + 8];
  v10 = v5[36];
  v18[0] = v5[35];
  v18[1] = v10;
  v18[2] = v5[37];
  v19 = v9;
  v11 = type metadata accessor for BaseDiffableShelfViewController(0, v18);
  v20.receiver = v1;
  v20.super_class = v11;
  objc_msgSendSuper2(&v20, "traitCollectionDidChange:", a1);
  result = [v1 isViewLoaded];
  if (result)
  {
    v13 = [v1 collectionView];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 collectionViewLayout];

      [v15 invalidateLayout];
    }

    sub_503EE0();
    v16 = sub_BD88(&unk_959560, &qword_7A2870);
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    sub_5040A8(v8);
    sub_10A2C(v8, &qword_9495B8, &qword_78A428);
    result = [v1 view];
    if (result)
    {
      v17 = result;
      [result bounds];

      swift_getWitnessTable();
      sub_763A70();
      return sub_483080(0, 0, 1);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_509428(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_5091B8(a3);
}

id sub_509494(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = swift_isaMask;
  v10 = (swift_isaMask & *v3);
  v11 = sub_BD88(&qword_9495B8, &qword_78A428);
  __chkstk_darwin(v11 - 8);
  v13 = &aBlock - v12;
  v14 = *&stru_248.segname[(v9 & v8) + 8];
  v15 = v10[36];
  aBlock = v10[35];
  v23 = v15;
  v24 = v10[37];
  v25 = v14;
  v16 = type metadata accessor for BaseDiffableShelfViewController(0, &aBlock);
  v26.receiver = v4;
  v26.super_class = v16;
  objc_msgSendSuper2(&v26, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  result = [v4 isViewLoaded];
  if (result)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = v4;
    *(v18 + 24) = a2;
    *(v18 + 32) = a3;
    *&v24 = sub_50DF1C;
    *(&v24 + 1) = v18;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v23 = sub_6C6800;
    *(&v23 + 1) = &unk_895380;
    v19 = _Block_copy(&aBlock);
    v20 = v4;

    [a1 animateAlongsideTransition:v19 completion:0];
    _Block_release(v19);
    sub_503EE0();
    v21 = sub_BD88(&unk_959560, &qword_7A2870);
    (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
    sub_5040A8(v13);
    sub_10A2C(v13, &qword_9495B8, &qword_78A428);
    swift_getWitnessTable();
    return sub_763A70();
  }

  return result;
}

void sub_50972C(double a1, double a2, uint64_t a3, void *a4)
{
  v5 = swift_isaMask & *a4;
  v8 = *&stru_248.segname[v5 + 8];
  v9 = *(&stru_1F8.reserved2 + v5);
  v13[0] = *(&stru_1F8.reloff + v5);
  v13[1] = v9;
  v13[2] = *(v5 + 592);
  v14 = v8;
  type metadata accessor for BaseDiffableShelfViewController(0, v13);
  sub_483080(*&a1, *&a2, 0);
  v10 = [a4 collectionView];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 collectionViewLayout];

    [v12 invalidateLayout];
  }
}

void sub_50983C(void *a1, uint64_t a2, void *a3, double a4, double a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_509494(a3, a4, a5);
  swift_unknownObjectRelease();
}

id sub_5098BC()
{
  v1 = (swift_isaMask & *v0);
  result = [v0 collectionView];
  if (result)
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    v18 = v1[70];
    v4[2] = v18;
    v17 = v1[71];
    v4[3] = v17;
    v5 = v1[72];
    v4[4] = v5;
    v6 = v1[73];
    v4[5] = v6;
    v7 = v1[74];
    v4[6] = v7;
    v8 = v1[75];
    v4[7] = v8;
    v9 = v1[76];
    v4[8] = v9;
    v4[9] = v3;
    v10 = objc_allocWithZone(sub_BD88(&unk_959530, &unk_7A2850));
    v11 = sub_762D80();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *&v14 = v18;
    *(&v14 + 1) = v17;
    *&v15 = v5;
    *(&v15 + 1) = v6;
    *(v13 + 16) = v14;
    *(v13 + 32) = v15;
    *(v13 + 48) = v7;
    *(v13 + 56) = v8;
    *(v13 + 64) = v9;
    *(v13 + 72) = v12;
    v16 = v11;

    sub_767A30();

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_509AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v28 = a7;
  v29 = a8;
  v14 = sub_BD88(&qword_93FF28, &unk_79FDC0);
  __chkstk_darwin(v14 - 8);
  v16 = v27 - v15;
  v17 = sub_BD88(&unk_959540, &qword_784830);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v27 - v19;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = result;
    v23 = qword_9593C8;
    swift_beginAccess();
    v24 = *&v22[v23];
    if (!v24)
    {

      (*(v18 + 56))(v16, 1, 1, v17);
      goto LABEL_6;
    }

    v25 = v24;
    sub_762D40();

    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {

LABEL_6:
      sub_10A2C(v16, &qword_93FF28, &unk_79FDC0);
      return 0;
    }

    v27[0] = a11;
    v27[1] = a2;
    (*(v18 + 32))(v20, v16, v17);

    v30[0] = a5;
    v30[1] = a6;
    v30[2] = v28;
    v30[3] = v29;
    v30[4] = a9;
    v30[5] = a10;
    v30[6] = v27[0];
    type metadata accessor for BaseDiffableShelfViewController(0, v30);
    swift_getWitnessTable();
    v26 = sub_7639C0();

    (*(v18 + 8))(v20, v17);
    return v26;
  }

  return result;
}

uint64_t sub_509D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v16 = Strong;
  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
  }

  v21[0] = a6;
  v21[1] = a7;
  v21[2] = a8;
  v21[3] = a9;
  v21[4] = a10;
  v21[5] = a11;
  v21[6] = a12;
  type metadata accessor for BaseDiffableShelfViewController(0, v21);
  swift_getWitnessTable();
  v19 = sub_7639D0();

  return v19;
}

id sub_509F20()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = swift_isaMask & *v0;
  v4 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
  result = [v0 view];
  if (result)
  {
    v6 = result;
    [result bounds];
    v8 = v7;
    v10 = v9;

    (*&stru_478.segname[(swift_isaMask & *v1) + 8])(v8, v10);
    sub_BE70(0, &unk_956240, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    isa = sub_769450().super.isa;

    [v4 setBoundarySupplementaryItems:isa];

    v12 = (*(ObjectType + 792))();
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = *(v3 + 560);
    *(v14 + 24) = *(v3 + 568);
    *(v14 + 40) = *(v3 + 584);
    *(v14 + 48) = *(v3 + 592);
    *(v14 + 64) = *(v3 + 608);
    *(v14 + 72) = v13;
    v15 = objc_allocWithZone(v12);
    v18[4] = sub_50DD54;
    v18[5] = v14;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 1107296256;
    v18[2] = sub_507AD4;
    v18[3] = &unk_8952E0;
    v16 = _Block_copy(v18);

    v17 = [v15 initWithSectionProvider:v16 configuration:v4];

    _Block_release(v16);

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_50A1D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _UNKNOWN **a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v30 = a4;
  v16 = sub_7684B0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v26 = a9;
  v27 = a10;
  v29 = a2;
  v21 = Strong;
  sub_BD88(&qword_94AA50, &qword_78C6E8);
  v28 = a1;
  v31 = v21;
  v32 = &off_895238;

  v22 = v21;
  sub_768490();
  sub_7688C0();

  (*(v17 + 8))(v19, v16);

  v31 = v30;
  v32 = a5;
  v33 = a6;
  v34 = a7;
  v35 = a8;
  v36 = v26;
  v37 = v27;
  type metadata accessor for BaseDiffableShelfViewController(0, &v31);
  swift_getWitnessTable();
  v23 = sub_763A90();

  return v23;
}

uint64_t sub_50A408(void *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v41 = a9;
  v37 = a1;
  v15 = sub_75B660();
  v39 = *(v15 - 8);
  v40 = v15;
  __chkstk_darwin(v15);
  v17 = (&v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_BD88(&unk_94F1F0, &qword_782290);
  v38 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v36 - v19;
  v21 = sub_BD88(&unk_957F70, &unk_780270);
  __chkstk_darwin(v21 - 8);
  v23 = &v36 - v22;
  v24 = sub_75DAB0();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v25 + 56))(v23, 1, 1, v24);
    return sub_10A2C(v23, &unk_957F70, &unk_780270);
  }

  v29 = Strong;
  v42[0] = a7;
  v42[1] = a8;
  v42[2] = v41;
  v42[3] = a10;
  v42[4] = a11;
  v42[5] = a12;
  v42[6] = a13;
  type metadata accessor for BaseDiffableShelfViewController(0, v42);
  swift_getWitnessTable();
  sub_763A20();

  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    return sub_10A2C(v23, &unk_957F70, &unk_780270);
  }

  (*(v25 + 32))(v27, v23, v24);
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v38 + 8))(v20, v18);
  v31 = v39;
  v30 = v40;
  if ((*(v39 + 88))(v17, v40) == enum case for ShelfBackground.color(_:))
  {
    (*(v31 + 96))(v17, v30);
    v32 = *v17;
    v33 = *(sub_BD88(&unk_959640, qword_78DD60) + 48);
    v34 = sub_75EDA0();
    (*(*(v34 - 8) + 8))(v17 + v33, v34);
    [v37 setBackgroundColor:v32];

    return (*(v25 + 8))(v27, v24);
  }

  else
  {
    (*(v25 + 8))(v27, v24);
    return (*(v31 + 8))(v17, v30);
  }
}

void sub_50A878(void *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v53 = a8;
  v54 = a9;
  v52 = a7;
  v50 = sub_75B660();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v51 = (&v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = sub_BD88(&unk_94F1F0, &qword_782290);
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v16 = &v45 - v15;
  v17 = sub_BD88(&unk_957F70, &unk_780270);
  __chkstk_darwin(v17 - 8);
  v19 = &v45 - v18;
  v20 = sub_75DAB0();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v55 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_BD88(&qword_93FF08, qword_77F350);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v45 - v25;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    v46 = a1;
    v29 = qword_9593C8;
    swift_beginAccess();
    v30 = *&v28[v29];
    if (!v30)
    {

      return;
    }

    v31 = v30;

    sub_767A90();
    v32 = sub_7678E0();
    (*(v24 + 8))(v26, v23);
    swift_beginAccess();
    v33 = swift_unknownObjectWeakLoadStrong();
    if (v33)
    {
      if (__OFSUB__(v32, 1))
      {
        __break(1u);
        return;
      }

      v34 = v33;
      v35 = v21;
      v56[0] = v52;
      v56[1] = v53;
      v56[2] = v54;
      v56[3] = a10;
      v56[4] = a11;
      v56[5] = a12;
      v56[6] = a13;
      type metadata accessor for BaseDiffableShelfViewController(0, v56);
      swift_getWitnessTable();
      sub_763A20();

      v36 = (*(v21 + 48))(v19, 1, v20);
      v37 = v55;
      if (v36 != 1)
      {
        (*(v35 + 32))(v55, v19, v20);
        sub_75DAA0();
        swift_getKeyPath();
        v38 = v51;
        v39 = v48;
        sub_768750();

        (*(v47 + 8))(v16, v39);
        v40 = v49;
        v41 = v50;
        if ((*(v49 + 88))(v38, v50) == enum case for ShelfBackground.color(_:))
        {
          (*(v40 + 96))(v38, v41);
          v42 = *v38;
          v43 = *(sub_BD88(&unk_959640, qword_78DD60) + 48);
          v44 = sub_75EDA0();
          (*(*(v44 - 8) + 8))(v38 + v43, v44);
          [v46 setBackgroundColor:v42];

          (*(v35 + 8))(v37, v20);
        }

        else
        {
          (*(v35 + 8))(v37, v20);
          (*(v40 + 8))(v38, v41);
        }

        return;
      }
    }

    else
    {
      (*(v21 + 56))(v19, 1, 1, v20);
    }

    sub_10A2C(v19, &unk_957F70, &unk_780270);
  }
}

uint64_t sub_50AE50(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  sub_1ED18(a2, &v7, &unk_93FBD0, &qword_77DFA0);
  sub_1ED18(&v6, &v4, &unk_959590, &qword_78A420);
  v2 = v4;

  sub_5064A0(v2, v5);

  sub_10A2C(&v6, &unk_959590, &qword_78A420);
  return sub_10A2C(v5, &unk_93FBD0, &qword_77DFA0);
}

double sub_50AF2C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    v5 = sub_7617F0();

    if (v5)
    {
      sub_75CA90();
    }
  }

  return result;
}

uint64_t sub_50B000(uint64_t a1, void *a2, uint64_t a3, void (*a4)(id, char *, uint64_t, void, uint64_t, uint64_t))
{
  v6 = v4;
  v9 = swift_isaMask & *v6;
  v10 = sub_BD88(&unk_93F620, &unk_77E220);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - v11;
  v13 = sub_75C840();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result && a2)
  {
    v24 = a1;
    v25 = a4;
    swift_getObjectType();
    v18 = a2;
    sub_75D9E0();
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {

      return sub_10A2C(v12, &unk_93F620, &unk_77E220);
    }

    else
    {
      (*(v14 + 32))(v16, v12, v13);
      v19 = *(v9 + 608);
      v20 = *(v9 + 576);
      v26[0] = *(v9 + 560);
      v26[1] = v20;
      v26[2] = *(v9 + 592);
      v27 = v19;
      type metadata accessor for BaseDiffableShelfViewController(0, v26);
      swift_getWitnessTable();
      sub_763A50();
      v22 = v21;
      ObjectType = swift_getObjectType();
      v25(v18, v16, v24, *(v6 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph), ObjectType, v22);

      swift_unknownObjectRelease();
      return (*(v14 + 8))(v16, v13);
    }
  }

  return result;
}

uint64_t sub_50B2D8(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, char *, uint64_t, void, uint64_t, uint64_t))
{
  v10 = sub_757640();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  sub_50B000(v14, v15, v17, a6);

  return (*(v11 + 8))(v13, v10);
}

void sub_50B43C(void *a1, uint64_t a2, void (*a3)(id, char *, void *, void, uint64_t, uint64_t))
{
  v6 = swift_isaMask & *v3;
  v7 = sub_BD88(&unk_93F620, &unk_77E220);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_75C840();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = sub_757550().super.isa;
  v25 = [a1 cellForItemAtIndexPath:isa];

  if (v25)
  {
    v24 = a1;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v23 = a3;
      v15 = v25;
      sub_75D9E0();
      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {

        sub_10A2C(v9, &unk_93F620, &unk_77E220);
      }

      else
      {
        (*(v11 + 32))(v13, v9, v10);
        v17 = *(v6 + 608);
        v18 = *(v6 + 576);
        v26[0] = *(v6 + 560);
        v26[1] = v18;
        v26[2] = *(v6 + 592);
        v27 = v17;
        type metadata accessor for BaseDiffableShelfViewController(0, v26);
        swift_getWitnessTable();
        sub_763A50();
        v20 = v19;
        ObjectType = swift_getObjectType();
        v23(v15, v13, v24, *(v3 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph), ObjectType, v20);

        swift_unknownObjectRelease();
        (*(v11 + 8))(v13, v10);
      }
    }

    else
    {
      v16 = v25;
    }
  }
}

uint64_t sub_50B780(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, char *, void *, void, uint64_t, uint64_t))
{
  v8 = sub_757640();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  v12 = a3;
  v13 = a1;
  sub_50B43C(v12, v11, a5);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_50B88C(uint64_t a1, void *a2)
{
  v2 = swift_isaMask & *a2;
  v3 = *&stru_248.segname[v2 + 8];
  v4 = *(&stru_1F8.reserved2 + v2);
  v6[0] = *(&stru_1F8.reloff + v2);
  v6[1] = v4;
  v6[2] = *(v2 + 592);
  v7 = v3;
  type metadata accessor for BaseDiffableShelfViewController(0, v6);
  swift_getWitnessTable();
  return sub_763A00();
}

double sub_50B974(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_757640();
  v6 = sub_769460();
  v7 = a3;
  v8 = a1;
  sub_506620(v7, v6);

  return result;
}

uint64_t sub_50B9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v51 = a1;
  v52 = a5;
  v10 = swift_isaMask & *v6;
  v11 = sub_BD88(&unk_93F620, &unk_77E220);
  __chkstk_darwin(v11 - 8);
  v45 = (&v41 - v12);
  v13 = sub_75C840();
  v49 = *(v13 - 8);
  v50 = v13;
  __chkstk_darwin(v13);
  v48 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&unk_957F70, &unk_780270);
  __chkstk_darwin(v15 - 8);
  v17 = &v41 - v16;
  v18 = sub_75DAB0();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v10 + 1176);
  v46 = a3;
  v47 = a4;
  v23(v59, a3, a4, v20);
  sub_1ED18(v59, &v53, &unk_959550, &unk_7A2860);
  v44 = a2;
  if (*(&v54 + 1))
  {
    sub_10914(&v53, &v57);
    v24 = *(v10 + 576);
    v43 = *(v10 + 560);
    v42 = v24;
    v41 = *(v10 + 592);
    v25 = *(v10 + 608);
    v53 = v43;
    v54 = v24;
    v55 = v41;
    v56 = v25;
    type metadata accessor for BaseDiffableShelfViewController(0, &v53);
    swift_getWitnessTable();
    sub_763A50();
    swift_getObjectType();
    sub_761AA0();
    swift_unknownObjectRelease();
    sub_BEB8(&v57);
    v26 = v41;
    v27 = v42;
    v28 = v43;
  }

  else
  {
    sub_10A2C(&v53, &unk_959550, &unk_7A2860);
    v28 = *(v10 + 560);
    v27 = *(v10 + 576);
    v26 = *(v10 + 592);
    v25 = *(v10 + 608);
  }

  v53 = v28;
  v54 = v27;
  v55 = v26;
  v56 = v25;
  type metadata accessor for BaseDiffableShelfViewController(0, &v53);
  swift_getWitnessTable();
  sub_763A10();
  v29 = (*(v19 + 48))(v17, 1, v18);
  v30 = v48;
  if (v29 == 1)
  {
    v31 = &unk_957F70;
    v32 = &unk_780270;
    v33 = v17;
  }

  else
  {
    (*(v19 + 32))(v22, v17, v18);
    sub_763A60();
    swift_getObjectType();
    sub_761E40();
    swift_unknownObjectRelease();
    if (v58)
    {
      sub_10914(&v57, &v53);
      sub_763A50();
      swift_getObjectType();
      sub_761A90();
      swift_unknownObjectRelease();
      sub_BEB8(&v53);
      (*(v19 + 8))(v22, v18);
      goto LABEL_10;
    }

    (*(v19 + 8))(v22, v18);
    v31 = &unk_959550;
    v32 = &unk_7A2860;
    v33 = &v57;
  }

  sub_10A2C(v33, v31, v32);
LABEL_10:
  v34 = v45;
  sub_763A00();
  v36 = v49;
  v35 = v50;
  if ((*(v49 + 48))(v34, 1, v50) == 1)
  {
    sub_10A2C(v59, &unk_959550, &unk_7A2860);
    v37 = &unk_93F620;
    v38 = &unk_77E220;
    v39 = v34;
  }

  else
  {
    (*(v36 + 32))(v30, v34, v35);
    sub_763A30();
    swift_getObjectType();
    sub_761520();
    swift_unknownObjectRelease();
    if (v58)
    {
      sub_10914(&v57, &v53);
      sub_763A50();
      swift_getObjectType();
      sub_761A80();
      swift_unknownObjectRelease();
      sub_BEB8(&v53);
      (*(v36 + 8))(v30, v35);
      v37 = &unk_959550;
      v38 = &unk_7A2860;
      v39 = v59;
    }

    else
    {
      (*(v36 + 8))(v30, v35);
      sub_10A2C(v59, &unk_959550, &unk_7A2860);
      v39 = &v57;
      v37 = &unk_959550;
      v38 = &unk_7A2860;
    }
  }

  return sub_10A2C(v39, v37, v38);
}

uint64_t sub_50C128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v49 = a5;
  v11 = swift_isaMask & *v6;
  v12 = sub_BD88(&unk_93F620, &unk_77E220);
  __chkstk_darwin(v12 - 8);
  v48 = (&v42 - v13);
  v14 = sub_75C840();
  v53 = *(v14 - 8);
  v54 = v14;
  __chkstk_darwin(v14);
  v52 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_BD88(&unk_957F70, &unk_780270);
  __chkstk_darwin(v16 - 8);
  v18 = &v42 - v17;
  v47 = sub_75DAB0();
  v19 = *(v47 - 8);
  v20 = __chkstk_darwin(v47);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v11 + 1176);
  v50 = a3;
  v51 = a4;
  v23(&v55, a3, a4, v20);
  v46 = a1;
  v45 = a2;
  if (*(&v56 + 1))
  {
    sub_10914(&v55, &v59);
    v24 = *(v11 + 576);
    v44 = *(v11 + 560);
    v43 = v24;
    v42 = *(v11 + 592);
    v25 = *(v11 + 608);
    v55 = v44;
    v56 = v24;
    v57 = v42;
    v58 = v25;
    type metadata accessor for BaseDiffableShelfViewController(0, &v55);
    swift_getWitnessTable();
    sub_763A50();
    swift_getObjectType();
    sub_761AD0();
    swift_unknownObjectRelease();
    sub_BEB8(&v59);
    v26 = v42;
    v27 = v43;
    v28 = v44;
  }

  else
  {
    sub_10A2C(&v55, &unk_959550, &unk_7A2860);
    v28 = *(v11 + 560);
    v27 = *(v11 + 576);
    v26 = *(v11 + 592);
    v25 = *(v11 + 608);
  }

  v55 = v28;
  v56 = v27;
  v57 = v26;
  v58 = v25;
  type metadata accessor for BaseDiffableShelfViewController(0, &v55);
  swift_getWitnessTable();
  sub_763A10();
  v29 = v47;
  if ((*(v19 + 48))(v18, 1, v47) == 1)
  {
    v30 = &unk_957F70;
    v31 = &unk_780270;
    v32 = v18;
  }

  else
  {
    (*(v19 + 32))(v22, v18, v29);
    sub_763A60();
    swift_getObjectType();
    sub_761E40();
    swift_unknownObjectRelease();
    if (v60)
    {
      sub_10914(&v59, &v55);
      sub_763A50();
      swift_getObjectType();
      sub_761AC0();
      swift_unknownObjectRelease();
      sub_BEB8(&v55);
      (*(v19 + 8))(v22, v29);
      goto LABEL_10;
    }

    (*(v19 + 8))(v22, v29);
    v30 = &unk_959550;
    v31 = &unk_7A2860;
    v32 = &v59;
  }

  sub_10A2C(v32, v30, v31);
LABEL_10:
  v33 = v48;
  sub_763A00();
  v35 = v53;
  v34 = v54;
  v36 = (*(v53 + 48))(v33, 1, v54);
  v37 = v52;
  if (v36 == 1)
  {
    v38 = &unk_93F620;
    v39 = &unk_77E220;
    v40 = v33;
  }

  else
  {
    (*(v35 + 32))(v52, v33, v34);
    sub_763A30();
    swift_getObjectType();
    sub_761520();
    swift_unknownObjectRelease();
    if (v60)
    {
      sub_10914(&v59, &v55);
      sub_763A50();
      swift_getObjectType();
      sub_761AB0();
      swift_unknownObjectRelease();
      sub_BEB8(&v55);
      return (*(v35 + 8))(v37, v34);
    }

    (*(v35 + 8))(v37, v34);
    v38 = &unk_959550;
    v39 = &unk_7A2860;
    v40 = &v59;
  }

  return sub_10A2C(v40, v38, v39);
}

uint64_t sub_50C7E4(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(id, id, uint64_t, uint64_t, char *))
{
  v11 = sub_757640();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_769240();
  v17 = v16;
  sub_757590();
  v18 = a3;
  v19 = a4;
  v20 = a1;
  a7(v18, v19, v15, v17, v14);

  return (*(v12 + 8))(v14, v11);
}

Class sub_50C930(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_BD88(&unk_94EE60, qword_7841A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  if (a4)
  {
    sub_757590();
    v13 = sub_757640();
    (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  }

  else
  {
    v13 = sub_757640();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = a3;
  v15 = a1;
  sub_506A00(v9, v12);

  sub_10A2C(v9, &unk_94EE60, qword_7841A0);
  sub_757640();
  v16 = *(v13 - 8);
  v17 = (*(v16 + 48))(v12, 1, v13);
  v18 = 0;
  if (v17 != 1)
  {
    isa = sub_757550().super.isa;
    (*(v16 + 8))(v12, v13);
    v18 = isa;
  }

  return v18;
}

void sub_50CB3C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  sub_50DAC8(a4, a5);

  swift_unknownObjectRelease();
}

void sub_50CBDC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_50CBC0(v4);
}

void sub_50CC60(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_50CC44(v4);
}

void sub_50CCE4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_50CCC8(v4);
}

void sub_50CD68(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_50CD4C(v4);
}

void sub_50CDF4(void *a1, uint64_t a2, void *a3, char a4)
{
  v6 = a3;
  v7 = a1;
  sub_50CDD0(v6, a4);
}

uint64_t sub_50CE64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph);
  v10 = sub_BD88(&unk_93F630, &unk_77E230);
  sub_768860();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    result = sub_10A2C(v8, &unk_93F980, &qword_77EDA0);
    v13 = 0;
  }

  else
  {
    v13 = sub_32A6C0(a2, 1, v9, v8);
    result = (*(v11 + 8))(v8, v10);
  }

  *a3 = v13;
  return result;
}

void sub_50CFD4(void *a1)
{
  v1 = a1;
  sub_502F74();
}

void sub_50D01C(void *a1)
{
  v1 = a1;
  sub_502F94();
}

double sub_50D064()
{

  v1 = qword_99E1A0;
  v2 = sub_764540();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return result;
}

id sub_50D1BC()
{
  v1 = swift_isaMask & *v0;
  v2 = *&stru_248.segname[v1 + 8];
  v3 = *(&stru_1F8.reserved2 + v1);
  v6[0] = *(&stru_1F8.reloff + v1);
  v6[1] = v3;
  v6[2] = *(v1 + 592);
  v7 = v2;
  v4 = type metadata accessor for BaseDiffableShelfViewController(0, v6);
  v8.receiver = v0;
  v8.super_class = v4;
  return objc_msgSendSuper2(&v8, "dealloc");
}

double sub_50D258(uint64_t a1)
{

  v2 = qword_99E1A0;
  v3 = sub_764540();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  return result;
}

id sub_50D4C0()
{
  v1 = [v0 collectionView];

  return v1;
}

void sub_50D4F8(void *a1)
{
  [v1 setCollectionView:a1];
}

void (*sub_50D540(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 collectionView];
  return sub_50D59C;
}

void sub_50D59C(id *a1)
{
  v1 = *a1;
  [a1[1] setCollectionView:?];
}

void *sub_50D5E4()
{
  v0 = sub_50DEA0();
  v1 = v0;
  return v0;
}

uint64_t (*sub_50D614(uint64_t *a1))()
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
  *(v2 + 32) = sub_507C9C(v2);
  return sub_246E0;
}

void *sub_50D684()
{
  v0 = sub_50DE5C();
  v1 = v0;
  return v0;
}

uint64_t (*sub_50D6B4(uint64_t *a1))()
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
  *(v2 + 32) = sub_507BE4(v2);
  return sub_246E0;
}

uint64_t (*sub_50D72C(uint64_t *a1))()
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
  *(v2 + 32) = sub_503DE4(v2);
  return sub_21028;
}

double sub_50D9C8()
{
  sub_50DE4C();

  return result;
}

uint64_t sub_50DAC8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = swift_isaMask;
  v5 = (swift_isaMask & *v2);
  v6 = sub_BD88(&unk_957F70, &unk_780270);
  __chkstk_darwin(v6 - 8);
  v8 = v16 - v7;
  v9 = sub_75DAB0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&stru_248.segname[(v4 & v3) + 8];
  v14 = v5[36];
  v16[0] = v5[35];
  v16[1] = v14;
  v16[2] = v5[37];
  v17 = v13;
  type metadata accessor for BaseDiffableShelfViewController(0, v16);
  swift_getWitnessTable();
  sub_763A20();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10A2C(v8, &unk_957F70, &unk_780270);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_75FA10();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_50DD1C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_50DD88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_50DDA0()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_50DE5C()
{
  v1 = qword_9593C0;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_50DEA0()
{
  v1 = qword_9593C8;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_50DEE4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t (*sub_50DF28(void *a1))(uint64_t a1, uint64_t a2)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_50E19C;
}

uint64_t sub_50DF8C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_50DFC8()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

id sub_50E008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_50E528(&qword_959578, type metadata accessor for DiffableFlowPreviewPresenter, &unk_79FD74);
  v9 = sub_BD88(&unk_959580, &unk_7A2878);
  v10 = objc_allocWithZone(v9);
  v11 = &v10[qword_944108];
  *&v10[qword_944108 + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v12 = &v10[qword_944100];
  *v12 = a3;
  *(v12 + 1) = a4;
  *(v11 + 1) = v8;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *&v10[qword_944118] = a5;
  v14.receiver = v10;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, "init");
}

uint64_t sub_50E164()
{

  return _swift_deallocObject(v0, 24, 7);
}

void (*sub_50E1EC(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_50E48C;
}

uint64_t (*sub_50E250(void *a1))(uint64_t, uint64_t)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_50E5B8;
}

uint64_t (*sub_50E2B4(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1C642C;
}

id (*sub_50E340(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_50E468;
}

uint64_t (*sub_50E3A4(void *a1))(uint64_t, uint64_t)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_50E5B8;
}

uint64_t (*sub_50E408())(void *a1)
{
  v1 = (*(v0 + 16))();
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_50E134;
}

uint64_t sub_50E528(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_50E5CC()
{
  result = qword_941210;
  if (!qword_941210)
  {
    type metadata accessor for SmallContactCardCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_941210);
  }

  return result;
}

double sub_50E624()
{
  v0 = sub_75DAB0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75C720();
  v4 = sub_50E708();
  (*(v1 + 8))(v3, v0);
  return v4;
}

double sub_50E708()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_765E60();
  sub_75DA20();
  sub_765630();
  v4 = *(v1 + 8);
  v4(v3, v0);
  sub_75DA20();
  sub_765580();
  v6 = v5;
  v4(v3, v0);
  v7 = sub_75DA30();
  v8 = type metadata accessor for SnapshotPageTraitEnvironment();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
  *v10 = v6;
  *(v10 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v9[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v7;
  v15.receiver = v9;
  v15.super_class = v8;
  v11 = objc_msgSendSuper2(&v15, "init");
  sub_765E30();
  v13 = v12;

  return v13;
}

double sub_50E8C0()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  result = 1.0 / v2;
  *&qword_99E200 = 1.0 / v2;
  return result;
}

uint64_t sub_50E94C(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_7664A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_766CA0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DividerView.Style(0);
  sub_161DC(v12, a3);
  v13 = sub_BE38(v12, a3);
  *v7 = UIFontTextStyleBody;
  (*(v5 + 104))(v7, enum case for FontSource.textStyle(_:), v4);
  v19[3] = v4;
  v19[4] = &protocol witness table for FontSource;
  v14 = sub_B1B4(v19);
  (*(v5 + 16))(v14, v7, v4);
  v15 = UIFontTextStyleBody;
  sub_766CB0();
  (*(v5 + 8))(v7, v4);
  v16 = *&UIEdgeInsetsZero.bottom;
  *v13 = *&UIEdgeInsetsZero.top;
  *(v13 + 1) = v16;
  return (*(v9 + 32))(&v13[*(v12 + 20)], v11, v8);
}

char *sub_50EB78(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC18ASMessagesProvider11DividerView_separatorInset];
  v11 = *&UIEdgeInsetsZero.bottom;
  *v10 = *&UIEdgeInsetsZero.top;
  *(v10 + 1) = v11;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider11DividerView_style;
  if (qword_93D2D0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for DividerView.Style(0);
  v14 = sub_BE38(v13, qword_99E208);
  sub_395C4(v14, &v4[v12]);
  v15 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider11DividerView_separatorView] = v15;
  v23.receiver = v4;
  v23.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v23, "initWithFrame:", a1, a2, a3, a4);
  v17 = OBJC_IVAR____TtC18ASMessagesProvider11DividerView_separatorView;
  v18 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider11DividerView_separatorView];
  sub_396E8();
  v19 = v16;
  v20 = v18;
  v21 = sub_769FB0();
  [v20 setBackgroundColor:v21];

  [v19 addSubview:*&v16[v17]];
  return v19;
}

id sub_50EFE0()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (qword_93D2C8 != -1)
  {
    swift_once();
  }

  v9 = *&qword_99E200;
  v10 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider11DividerView_separatorView];
  v17.origin.x = v2;
  v17.origin.y = v4;
  v17.size.width = v6;
  v17.size.height = v8;
  MinX = CGRectGetMinX(v17);
  v12 = &v0[OBJC_IVAR____TtC18ASMessagesProvider11DividerView_separatorInset];
  v13 = MinX + v12[1];
  v18.origin.x = v2;
  v18.origin.y = v4;
  v18.size.width = v6;
  v18.size.height = v8;
  v14 = CGRectGetMidY(v18) + v9 * -0.5;
  v19.origin.x = v2;
  v19.origin.y = v4;
  v19.size.width = v6;
  v19.size.height = v8;
  return [v10 setFrame:{v13, v14, CGRectGetWidth(v19) - v12[1] - v12[3], v9}];
}

uint64_t sub_50F1E8(uint64_t a1)
{
  result = type metadata accessor for DividerView.Style(319);
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

uint64_t sub_50F2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_766CA0();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_50F350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_766CA0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_50F3CC(uint64_t a1)
{
  type metadata accessor for UIEdgeInsets(319);
  if (v1 <= 0x3F)
  {
    sub_766CA0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_50F450(uint64_t a1, uint64_t a2)
{
  v2 = sub_76A920();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93D2C8 != -1)
  {
    swift_once();
  }

  v6 = floor(*&qword_99E200);
  type metadata accessor for DividerView.Style(0);
  sub_766470();
  sub_766CA0();
  sub_766700();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  return v6 + v8;
}

double sub_50F5C0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v365 = a4;
  v389 = type metadata accessor for ShelfHeaderLayout(0);
  __chkstk_darwin(v389);
  v374 = &v329 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v366 = &v329 - v9;
  v10 = sub_766D70();
  v385 = *(v10 - 8);
  v386 = v10;
  __chkstk_darwin(v10);
  v330 = &v329 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_766AF0();
  v345 = *(v12 - 8);
  v346 = v12;
  __chkstk_darwin(v12);
  v363 = &v329 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v332 = &v329 - v15;
  __chkstk_darwin(v16);
  v343 = &v329 - v17;
  __chkstk_darwin(v18);
  v344 = &v329 - v19;
  v342 = sub_76A920();
  v340 = *(v342 - 8);
  __chkstk_darwin(v342);
  v339 = &v329 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v396 = sub_766690();
  v384 = *(v396 - 8);
  __chkstk_darwin(v396);
  v341 = &v329 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v336 = &v329 - v23;
  v24 = sub_BD88(&unk_954ED0, &unk_77E060);
  __chkstk_darwin(v24 - 8);
  v371 = &v329 - v25;
  v26 = sub_BD88(&unk_95A870, &unk_798D00);
  __chkstk_darwin(v26 - 8);
  v370 = &v329 - v27;
  v28 = sub_76A3F0();
  v372 = *(v28 - 8);
  v373 = v28;
  __chkstk_darwin(v28);
  v369 = &v329 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v368 = &v329 - v31;
  v32 = sub_BD88(&unk_948010, qword_789590);
  __chkstk_darwin(v32 - 8);
  v362 = &v329 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v377 = &v329 - v35;
  __chkstk_darwin(v36);
  v334 = &v329 - v37;
  __chkstk_darwin(v38);
  v376 = &v329 - v39;
  v383 = sub_759810();
  v394 = *(v383 - 8);
  __chkstk_darwin(v383);
  v360 = &v329 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_BD88(&qword_959958, qword_7A2A90);
  __chkstk_darwin(v41 - 8);
  v364 = &v329 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v331 = &v329 - v44;
  __chkstk_darwin(v45);
  v395 = &v329 - v46;
  v47 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v47 - 8);
  v338 = &v329 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v335 = &v329 - v50;
  __chkstk_darwin(v51);
  v387 = &v329 - v52;
  __chkstk_darwin(v53);
  v380 = (&v329 - v54);
  v55 = sub_BD88(&qword_959940, &qword_7A2A00);
  __chkstk_darwin(v55);
  v382 = &v329 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v381 = &v329 - v58;
  __chkstk_darwin(v59);
  v397 = &v329 - v60;
  __chkstk_darwin(v61);
  v391 = &v329 - v62;
  __chkstk_darwin(v63);
  v390 = &v329 - v64;
  __chkstk_darwin(v65);
  v67 = &v329 - v66;
  v68 = sub_BD88(&qword_94AFE8, &unk_7AF540);
  __chkstk_darwin(v68 - 8);
  v349 = &v329 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70);
  *&v367 = &v329 - v71;
  __chkstk_darwin(v72);
  v74 = &v329 - v73;
  __chkstk_darwin(v75);
  v77 = &v329 - v76;
  v358 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  __chkstk_darwin(v358);
  v392 = &v329 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v79);
  v399 = &v329 - v80;
  v81 = sub_75DA30();
  v379 = sub_759840();
  sub_759870();
  v355 = sub_759780();
  v388 = v74;
  v393 = a1;
  sub_759860();
  v398 = a2;
  sub_51A6D8();
  if (qword_93D320 != -1)
  {
    swift_once();
  }

  v82 = sub_7666D0();
  v83 = sub_BE38(v82, qword_9597F8);
  v84.super.isa = v81;
  v333 = v83;
  isa = sub_7666B0(v84).super.isa;
  [(objc_class *)isa pointSize];
  v87 = v86;
  v88 = objc_opt_self();
  v353 = isa;
  v354 = [v88 fontWithDescriptor:isa size:v87];
  [v354 lineHeight];
  v356 = v89;
  v90 = &v67[*(v55 + 48)];
  v91 = v67;
  v357 = v77;
  sub_51242C(v67, v90, v77);
  if (qword_93D328 != -1)
  {
    swift_once();
  }

  v92 = sub_BE38(v82, qword_959810);
  v93.super.isa = v81;
  v361 = v92;
  v94 = sub_7666B0(v93).super.isa;
  [(objc_class *)v94 pointSize];
  v350 = v94;
  v351 = [v88 fontWithDescriptor:v94 size:?];
  [v351 lineHeight];
  v378 = v95;
  v359 = v55;
  sub_512A90(v390, &v390[*(v55 + 48)], v388);
  v400 = v81;
  v96 = [(objc_class *)v81 preferredContentSizeCategory];
  v97 = sub_769B30();

  v375 = v82;
  if ((v97 & 1) == 0 || (v98 = 0.0, UIAccessibilityButtonShapesEnabled()))
  {
    v352 = v67;
    v99 = v88;
    v100 = *&v367;
    sub_1ED18(v388, *&v367, &qword_94AFE8, &unk_7AF540);
    v101 = sub_759760();
    v102 = *(v101 - 8);
    v98 = 7.0;
    if ((*(v102 + 48))(v100, 1, v101) != 1)
    {
      v103 = v349;
      sub_1ED18(v100, v349, &qword_94AFE8, &unk_7AF540);
      v104 = (*(v102 + 88))(v103, v101);
      if (v104 != enum case for ShelfHeader.ArtworkType.icon(_:))
      {
        v98 = 5.0;
        if (v104 != enum case for ShelfHeader.ArtworkType.category(_:))
        {
          (*(v102 + 8))(v103, v101);
          v98 = 7.0;
        }
      }
    }

    sub_10A2C(v100, &qword_94AFE8, &unk_7AF540);
    v82 = v375;
    v88 = v99;
    v91 = v352;
  }

  v352 = *&v98;
  v367 = a3;
  if (qword_93D338 != -1)
  {
    swift_once();
  }

  v105 = sub_BE38(v82, qword_959840);
  v106.super.isa = v400;
  v337 = v105;
  v107.super.isa = sub_7666B0(v106).super.isa;
  [(objc_class *)v107.super.isa pointSize];
  v108 = [v88 fontWithDescriptor:v107.super.isa size:?];
  [v108 lineHeight];
  v110 = v109;
  sub_7697D0();
  v349 = v111;
  v113 = v112;
  v115 = v114;
  v117 = v116;
  sub_7697D0();
  v119 = v118;
  v121 = v120;
  v123 = v122;
  v125 = v124;
  sub_1ED18(v91, v391, &qword_959940, &qword_7A2A00);
  sub_1ED18(v91, v397, &qword_959940, &qword_7A2A00);
  v126 = v388;
  if (v379)
  {
    sub_765260();
    v127 = v380;
    sub_7666A0();
    v128 = 0;
  }

  else
  {
    v128 = 1;
    v127 = v380;
  }

  v129 = v378 - v110;
  v130 = *(v384 + 56);
  v130(v127, v128, 1, v396);
  v131 = *&UIEdgeInsetsZero.top;
  v347 = *&UIEdgeInsetsZero.bottom;
  v348 = v131;
  v132 = v390;
  sub_1ED18(v390, v381, &qword_959940, &qword_7A2A00);
  sub_1ED18(v132, v382, &qword_959940, &qword_7A2A00);
  if (v355)
  {
    sub_765260();
    sub_7666A0();

    v133 = 0;
  }

  else
  {

    v133 = 1;
  }

  v134 = v357;

  sub_10A2C(v390, &qword_959940, &qword_7A2A00);
  sub_10A2C(v91, &qword_959940, &qword_7A2A00);
  sub_10A2C(v126, &qword_94AFE8, &unk_7AF540);
  sub_10A2C(v134, &qword_94AFE8, &unk_7AF540);
  v135 = v133;
  v136 = v396;
  v130(v387, v135, 1, v396);
  v137 = v358;
  v138 = *(v359 + 48);
  v139 = *(v358 + 40);
  v140 = v399;
  v130(&v399[v139], 1, 1, v136);
  v388 = v137[15];
  v130(&v140[v388], 1, 1, v136);
  *v140 = v349;
  *(v140 + 1) = v113;
  *(v140 + 2) = v115;
  *(v140 + 3) = v117;
  *(v140 + 4) = v356;
  *(v140 + 5) = v119;
  *(v140 + 6) = v121;
  *(v140 + 7) = v123;
  *(v140 + 8) = v125;
  v141 = v137[7];
  v142 = sub_766CA0();
  v143 = *(v142 - 8);
  v144 = *(v143 + 32);
  v357 = v141;
  v144(&v141[v140], v391, v142);
  v356 = v137[8];
  v390 = v138;
  v144(&v140[v356], &v138[v397], v142);
  *&v140[v137[9]] = 0x4008000000000000;
  v379 = v139;
  sub_B33C8(v380, &v140[v139], &unk_948720, &unk_784970);
  *&v140[v137[11]] = v378;
  v145 = &v140[v137[12]];
  v146 = v347;
  *v145 = v348;
  *(v145 + 1) = v146;
  v359 = v137[13];
  v147 = v381;
  v144(&v140[v359], v381, v142);
  *&v378 = v137[14];
  v148 = v382;
  v144(&v140[*&v378], &v138[v382], v142);
  sub_B33C8(v387, &v140[v388], &unk_948720, &unk_784970);
  *&v140[v137[16]] = v352;
  v149 = &v140[v137[17]];
  *v149 = v129;
  *(v149 + 2) = 0;
  *(v149 + 3) = 0;
  *(v149 + 1) = 0x4024000000000000;
  v150 = *(v143 + 8);
  v150(v148, v142);
  v151 = v390;
  v150(&v390[v147], v142);
  v150(v397, v142);
  v150(&v151[v391], v142);
  v380 = *(v385 + 56);
  v381 = v385 + 56;
  (v380)(v395, 1, 1, v386);
  v152 = v360;
  sub_759820();
  LOBYTE(v142) = sub_7597F0();
  v153 = *(v394 + 8);
  v154 = v383;
  v387 = v394 + 8;
  v382 = v153;
  v153(v152, v383);
  v155 = 0;
  v156 = 0;
  v157 = 0;
  v158 = v367;
  if (v142)
  {
    sub_767500();
    v156 = sub_7670D0();
    swift_allocObject();
    v155 = sub_7670B0();
    v157 = &protocol witness table for LayoutViewPlaceholder;
  }

  v423[0] = v155;
  v423[1] = 0;
  v423[2] = 0;
  v423[3] = v156;
  v423[4] = v157;
  sub_7598C0();
  v159 = v369;
  v160 = v377;
  if (!v161)
  {
    v390 = 0;
    v166 = v399;
    goto LABEL_40;
  }

  if (qword_93D318 != -1)
  {
    swift_once();
  }

  v162 = qword_9597F0;
  (*(v394 + 56))(v376, 1, 1, v154);
  v390 = v162;
  v163 = v162;
  v164 = sub_759830();
  if (v164)
  {
  }

  sub_76A3A0();
  sub_76A2A0();
  sub_76A2C0();
  v165 = v334;
  sub_1ED18(v376, v334, &unk_948010, qword_789590);
  if ((*(v394 + 48))(v165, 1, v154) == 1)
  {
    sub_10A2C(v165, &unk_948010, qword_789590);
LABEL_31:
    if (qword_93D340 != -1)
    {
      swift_once();
    }

    v168 = qword_959858;
    goto LABEL_34;
  }

  v167 = sub_7597B0();
  (v382)(v165, v154);
  if (!v167)
  {
    goto LABEL_31;
  }

LABEL_34:
  v169 = v164 != 0;
  v170 = v368;
  sub_76A320();
  sub_BE70(0, &qword_93F900, UIFont_ptr);
  v171 = sub_769E10();
  *(swift_allocObject() + 16) = v171;
  v172 = v171;
  v173 = v370;
  sub_767BA0();
  v174 = sub_767B90();
  (*(*(v174 - 8) + 56))(v173, 0, 1, v174);
  sub_76A340();
  v175 = v371;
  v176 = v372;
  v177 = v373;
  (*(v372 + 16))(v371, v170, v373);
  (*(v176 + 56))(v175, 0, 1, v177);
  sub_76A420();
  [v163 setUserInteractionEnabled:v169];
  [v163 _setWantsAccessibilityUnderline:v169];

  (*(v176 + 8))(v170, v177);
  sub_10A2C(v376, &unk_948010, qword_789590);
  v178 = sub_7598C0();
  v180 = v179;
  v181 = sub_75DA30();
  if (sub_759890())
  {
    v160 = v377;
    if (qword_93D2E0 != -1)
    {
      swift_once();
    }

    v182 = [qword_9597B8 configurationWithTraitCollection:v181];
    v183 = sub_759910();
  }

  else
  {
    v183 = 0;
    v160 = v377;
  }

  v184 = sub_51B054(v178, v180, v181, v183);

  [v163 setAttributedTitle:v184 forState:0];

  v166 = v399;
  v154 = v383;
LABEL_40:
  if (sub_759840())
  {

    v185 = v335;
    sub_1ED18(v166 + v379, v335, &unk_948720, &unk_784970);
    v186 = v384;
    v187 = v396;
    if ((*(v384 + 48))(v185, 1, v396) == 1)
    {
      sub_10A2C(v185, &unk_948720, &unk_784970);
      v397 = 0;
    }

    else
    {
      (*(v186 + 32))(v336, v185, v187);
      v188 = v339;
      sub_766470();
      sub_766C70();
      v189 = *(v340 + 8);
      v190 = v342;
      v189(v188, v342);
      sub_766470();
      sub_766C70();
      v191 = v188;
      v159 = v369;
      v192 = v190;
      v160 = v377;
      v189(v191, v192);
      v193 = v336;
      sub_766610();
      sub_7670D0();
      swift_allocObject();
      v397 = sub_7670B0();
      (*(v186 + 8))(v193, v187);
    }

    v154 = v383;
  }

  else
  {
    v397 = 0;
  }

  v194 = sub_759770();
  if (v194)
  {
  }

  v195 = v160;
  if (qword_93D310 != -1)
  {
    swift_once();
  }

  v196 = qword_9597E8;
  v197 = sub_7598A0();
  v199 = v198;
  v200 = sub_75DA30();
  v201 = sub_51B374(v197, v199, v200, v194 != 0);

  v391 = v196;
  [v196 setAttributedTitle:v201 forState:0];

  v202 = v394;
  v203 = v195;
  (*(v394 + 56))(v195, 1, 1, v154);
  sub_76A3A0();
  sub_76A2A0();
  sub_76A2C0();
  v204 = v362;
  sub_1ED18(v195, v362, &unk_948010, qword_789590);
  if ((*(v202 + 48))(v204, 1, v154) == 1)
  {
    sub_10A2C(v204, &unk_948010, qword_789590);
  }

  else
  {
    v205 = sub_759790();
    (v382)(v204, v154);
    if (v205)
    {
      goto LABEL_56;
    }
  }

  if (qword_93D348 != -1)
  {
    swift_once();
  }

  v206 = qword_959860;
LABEL_56:
  v207 = v194 != 0;
  sub_76A320();
  v208 = [objc_opt_self() clearColor];
  v209 = sub_76A230();
  sub_767760();
  v209(&v420, 0);
  v210 = sub_76A230();
  sub_767740();
  v210(&v420, 0);
  v211 = sub_BE70(0, &qword_93F900, UIFont_ptr);
  v212 = sub_769E10();
  *(swift_allocObject() + 16) = v212;
  v213 = v212;
  v214 = v370;
  sub_767BA0();
  v215 = sub_767B90();
  (*(*(v215 - 8) + 56))(v214, 0, 1, v215);
  sub_76A340();
  v216 = v371;
  v217 = v372;
  v218 = v373;
  (*(v372 + 16))(v371, v159, v373);
  (*(v217 + 56))(v216, 0, 1, v218);
  v219 = v391;
  sub_76A420();
  [v219 setNeedsUpdateConfiguration];
  [v219 setContentHorizontalAlignment:4];
  [v219 setUserInteractionEnabled:v207];
  [v219 _setWantsAccessibilityUnderline:v207];

  (*(v217 + 8))(v159, v218);
  sub_10A2C(v203, &unk_948010, qword_789590);
  if (sub_759780())
  {

    v220 = v338;
    sub_1ED18(&v399[v388], v338, &unk_948720, &unk_784970);
    v221 = v384;
    v222 = v396;
    v223 = (*(v384 + 48))(v220, 1, v396);
    v224 = v363;
    if (v223 == 1)
    {
      sub_10A2C(v220, &unk_948720, &unk_784970);
      v225 = 0;
    }

    else
    {
      (*(v221 + 32))(v341, v220, v222);
      v226 = v339;
      sub_766470();
      sub_766C70();
      v394 = v211;
      v227 = *(v340 + 8);
      v228 = v342;
      v227(v226, v342);
      sub_766470();
      sub_766C70();
      v227(v226, v228);
      v229 = v341;
      sub_766610();
      sub_7670D0();
      swift_allocObject();
      v225 = sub_7670B0();
      (*(v221 + 8))(v229, v396);
    }
  }

  else
  {
    v225 = 0;
    v224 = v363;
  }

  v230 = v374;
  v231 = sub_7598D0();
  v233 = v375;
  v396 = v225;
  if (v232)
  {
    v234 = HIBYTE(v232) & 0xF;
    if ((v232 & 0x2000000000000000) == 0)
    {
      v234 = v231 & 0xFFFFFFFFFFFFLL;
    }

    if (v234)
    {
      v388 = v231;
      v394 = v232;
      sub_766AE0();
      if (qword_93D330 != -1)
      {
        swift_once();
      }

      sub_BE38(v233, qword_959828);
      v235 = sub_75DA30();
      v236 = sub_769E10();

      v237 = v332;
      sub_766AD0();

      v238 = v224;
      v239 = v345;
      v240 = v346;
      v241 = *(v345 + 8);
      v241(v238, v346);
      v242 = v343;
      sub_766AA0();
      v241(v237, v240);
      v243 = v344;
      sub_766A90();
      v241(v242, v240);
      (*(v239 + 16))(v242, v243, v240);
      sub_766D50();
      v244 = v331;
      sub_766D80();
      v241(v243, v240);
      v245 = v395;
      sub_10A2C(v395, &qword_959958, qword_7A2A90);
      (v380)(v244, 0, 1, v386);
      sub_109C4(v244, v245, &qword_959958, qword_7A2A90);
      v230 = v374;
      v225 = v396;
    }

    else
    {
    }
  }

  v246 = sub_759850();
  v247 = sub_51B550(v246);
  if (v249 == -1)
  {
    v419 = 0;
    v417 = 0u;
    v418 = 0u;
    v261 = v386;
  }

  else
  {
    v250 = v247;
    v251 = v248;
    if (v249)
    {
      v252 = v249;
      v253 = sub_75DA30();
      v254 = sub_769E10();
      v255 = [objc_opt_self() configurationWithFont:v254 scale:2];
      v256 = sub_769210();
      sub_51BE60(v250, v251, v252);
      v257 = [objc_opt_self() _systemImageNamed:v256 withConfiguration:v255];

      if (v257)
      {
        v258 = v257;
        [v258 size];
        v259 = sub_7670D0();
        swift_allocObject();
        v260 = sub_7670B0();
        *(&v418 + 1) = v259;
        v419 = &protocol witness table for LayoutViewPlaceholder;

        *&v417 = v260;
      }

      else
      {
        v419 = 0;
        v417 = 0u;
        v418 = 0u;
      }

      v230 = v374;
      v261 = v386;
    }

    else
    {
      v262 = v343;
      sub_766AE0();
      v263 = sub_75DA30();
      v264 = sub_769E10();

      sub_766AD0();
      (*(v345 + 8))(v262, v346);
      sub_766D50();
      v265 = v330;
      sub_766D80();
      sub_766D40();
      v261 = v386;
      (*(v385 + 8))(v265, v386);
      v266 = *(&v421 + 1);
      v267 = v422;
      v268 = sub_B170(&v420, *(&v421 + 1));
      *(&v418 + 1) = v266;
      v419 = v267[1];
      v269 = sub_B1B4(&v417);
      (*(*(v266 - 8) + 16))(v269, v268, v266);
      sub_BEB8(&v420);
    }

    v225 = v396;
  }

  v420 = v417;
  v421 = v418;
  v422 = v419;
  sub_51A5A4(v399, v392);
  sub_1ED18(v423, &v417, &unk_943B10, &qword_77E080);
  if (v390)
  {
    v270 = v390;
    if (([v270 isHidden] & 1) == 0 && objc_msgSend(v270, "hasContent"))
    {
      v271 = sub_75C560();
      v416 = &protocol witness table for UIButton;
      *(&v415 + 1) = v271;
      *&v414 = v270;
      goto LABEL_84;
    }
  }

  v416 = 0;
  v414 = 0u;
  v415 = 0u;
LABEL_84:
  v272 = v385;
  v273 = v397;
  if (v397)
  {
    v274 = sub_7670D0();
    v273 = &protocol witness table for LayoutViewPlaceholder;
    v275 = v397;
  }

  else
  {
    v275 = 0;
    v274 = 0;
    v413[2] = 0;
    v413[1] = 0;
  }

  v413[0] = v275;
  v413[3] = v274;
  v413[4] = v273;
  v276 = sub_75C560();
  v412[4] = &protocol witness table for UIButton;
  v412[3] = v276;
  v412[0] = v391;
  if (v225)
  {
    v277 = sub_7670D0();
    v278 = &protocol witness table for LayoutViewPlaceholder;
    v279 = v225;
  }

  else
  {
    v279 = 0;
    v277 = 0;
    v278 = 0;
    v411[2] = 0;
    v411[1] = 0;
  }

  v280 = v364;
  v411[0] = v279;
  v411[3] = v277;
  v411[4] = v278;
  sub_1ED18(v395, v364, &qword_959958, qword_7A2A90);
  if ((*(v272 + 48))(v280, 1, v261) == 1)
  {

    v281 = v391;
    sub_10A2C(v280, &qword_959958, qword_7A2A90);
    v408 = 0u;
    v409 = 0u;
    v410 = 0;
  }

  else
  {
    *(&v409 + 1) = v261;
    v410 = &protocol witness table for LabelPlaceholder;
    v282 = sub_B1B4(&v408);
    (*(v272 + 32))(v282, v280, v261);

    v283 = v391;
  }

  sub_1ED18(&v420, v407, &unk_943B10, &qword_77E080);
  sub_51A5A4(v392, v230);
  sub_1ED18(&v417, v401, &unk_943B10, &qword_77E080);
  v284 = v402;
  if (v402)
  {
    v285 = v403;
    sub_B170(v401, v402);
    v286 = sub_76A480();
    v287 = *(v286 - 8);
    __chkstk_darwin(v286);
    v289 = &v329 - v288;
    sub_766510();
    v290 = *(v284 - 8);
    if ((*(v290 + 48))(v289, 1, v284) == 1)
    {
      (*(v287 + 8))(v289, v286);
      v406 = 0;
      v404 = 0u;
      v405 = 0u;
    }

    else
    {
      *(&v405 + 1) = v284;
      v406 = v285;
      v292 = sub_B1B4(&v404);
      (*(v290 + 32))(v292, v289, v284);
    }

    v291 = v389;
    sub_BEB8(v401);
  }

  else
  {
    sub_10A2C(v401, &unk_943B10, &qword_77E080);
    v404 = 0u;
    v405 = 0u;
    v406 = 0;
    v291 = v389;
  }

  v293 = v230 + v291[5];
  v294 = v405;
  *v293 = v404;
  *(v293 + 16) = v294;
  *(v293 + 32) = v406;
  sub_1ED18(&v414, v230 + v291[6], &unk_941EB0, &unk_7814A0);
  sub_1ED18(v413, v401, &unk_943B10, &qword_77E080);
  v295 = v402;
  if (v402)
  {
    v296 = v403;
    sub_B170(v401, v402);
    v297 = sub_76A480();
    v298 = *(v297 - 8);
    __chkstk_darwin(v297);
    v300 = &v329 - v299;
    sub_766510();
    v301 = *(v295 - 8);
    if ((*(v301 + 48))(v300, 1, v295) == 1)
    {
      (*(v298 + 8))(v300, v297);
      v406 = 0;
      v404 = 0u;
      v405 = 0u;
    }

    else
    {
      *(&v405 + 1) = v295;
      v406 = v296;
      v302 = sub_B1B4(&v404);
      (*(v301 + 32))(v302, v300, v295);
    }

    sub_BEB8(v401);
    v291 = v389;
  }

  else
  {
    sub_10A2C(v401, &unk_943B10, &qword_77E080);
    v404 = 0u;
    v405 = 0u;
    v406 = 0;
  }

  v303 = v230 + v291[7];
  v304 = v405;
  *v303 = v404;
  *(v303 + 16) = v304;
  *(v303 + 32) = v406;
  sub_134D8(v412, v230 + v291[8]);
  sub_1ED18(v411, v401, &unk_943B10, &qword_77E080);
  v305 = v402;
  if (v402)
  {
    v306 = v403;
    sub_B170(v401, v402);
    v307 = sub_76A480();
    v308 = *(v307 - 8);
    __chkstk_darwin(v307);
    v310 = &v329 - v309;
    sub_766510();
    v311 = *(v305 - 8);
    if ((*(v311 + 48))(v310, 1, v305) == 1)
    {
      (*(v308 + 8))(v310, v307);
      v406 = 0;
      v404 = 0u;
      v405 = 0u;
    }

    else
    {
      *(&v405 + 1) = v305;
      v406 = v306;
      v312 = sub_B1B4(&v404);
      (*(v311 + 32))(v312, v310, v305);
    }

    sub_BEB8(v401);
    v291 = v389;
  }

  else
  {
    sub_10A2C(v401, &unk_943B10, &qword_77E080);
    v404 = 0u;
    v405 = 0u;
    v406 = 0;
  }

  v313 = v230 + v291[9];
  v314 = v405;
  *v313 = v404;
  *(v313 + 16) = v314;
  *(v313 + 32) = v406;
  sub_1ED18(&v408, v230 + v291[10], &unk_941EB0, &unk_7814A0);
  sub_1ED18(v407, v401, &unk_943B10, &qword_77E080);
  v315 = v402;
  if (v402)
  {
    v316 = v230;
    v317 = v403;
    sub_B170(v401, v402);
    v318 = sub_76A480();
    v319 = *(v318 - 8);
    __chkstk_darwin(v318);
    v321 = &v329 - v320;
    sub_766510();
    v322 = *(v315 - 8);
    if ((*(v322 + 48))(v321, 1, v315) == 1)
    {
      sub_10A2C(v407, &unk_943B10, &qword_77E080);
      sub_10A2C(&v417, &unk_943B10, &qword_77E080);
      sub_51A608(v392, type metadata accessor for ShelfHeaderLayout.Metrics);
      sub_10A2C(&v408, &unk_941EB0, &unk_7814A0);
      sub_10A2C(v411, &unk_943B10, &qword_77E080);
      sub_BEB8(v412);
      sub_10A2C(v413, &unk_943B10, &qword_77E080);
      sub_10A2C(&v414, &unk_941EB0, &unk_7814A0);
      (*(v319 + 8))(v321, v318);
      v406 = 0;
      v404 = 0u;
      v405 = 0u;
    }

    else
    {
      *(&v405 + 1) = v315;
      v406 = v317;
      v323 = sub_B1B4(&v404);
      (*(v322 + 32))(v323, v321, v315);
      sub_10A2C(v407, &unk_943B10, &qword_77E080);
      sub_10A2C(&v417, &unk_943B10, &qword_77E080);
      sub_51A608(v392, type metadata accessor for ShelfHeaderLayout.Metrics);
      sub_10A2C(&v408, &unk_941EB0, &unk_7814A0);
      sub_10A2C(v411, &unk_943B10, &qword_77E080);
      sub_BEB8(v412);
      sub_10A2C(v413, &unk_943B10, &qword_77E080);
      sub_10A2C(&v414, &unk_941EB0, &unk_7814A0);
    }

    sub_BEB8(v401);
    v291 = v389;
    v230 = v316;
  }

  else
  {
    sub_10A2C(v407, &unk_943B10, &qword_77E080);
    sub_10A2C(&v417, &unk_943B10, &qword_77E080);
    sub_51A608(v392, type metadata accessor for ShelfHeaderLayout.Metrics);
    sub_10A2C(&v408, &unk_941EB0, &unk_7814A0);
    sub_10A2C(v411, &unk_943B10, &qword_77E080);
    sub_BEB8(v412);
    sub_10A2C(v413, &unk_943B10, &qword_77E080);
    sub_10A2C(&v414, &unk_941EB0, &unk_7814A0);
    sub_10A2C(v401, &unk_943B10, &qword_77E080);
    v404 = 0u;
    v405 = 0u;
    v406 = 0;
  }

  v324 = v230 + v291[11];
  v325 = v405;
  *v324 = v404;
  *(v324 + 16) = v325;
  *(v324 + 32) = v406;
  v326 = v366;
  sub_51C078(v230, v366, type metadata accessor for ShelfHeaderLayout);
  v327 = sub_75DA30();
  ShelfHeaderLayout.measure(toFit:with:)(v327, v158, v365);

  sub_51A608(v326, type metadata accessor for ShelfHeaderLayout);
  sub_10A2C(&v420, &unk_943B10, &qword_77E080);
  sub_10A2C(v423, &unk_943B10, &qword_77E080);
  sub_10A2C(v395, &qword_959958, qword_7A2A90);
  sub_51A608(v399, type metadata accessor for ShelfHeaderLayout.Metrics);
  return v158;
}

uint64_t sub_51242C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_7664A0();
  v52 = *(v6 - 8);
  __chkstk_darwin(v6);
  v51 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&qword_94AFE8, &unk_7AF540);
  __chkstk_darwin(v8 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  v14 = sub_BD88(&qword_959940, &qword_7A2A00);
  __chkstk_darwin(v14);
  v16 = &v45 - v15;
  sub_1ED18(a3, v13, &qword_94AFE8, &unk_7AF540);
  v17 = sub_759760();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v55 = v13;
  v20 = v19(v13, 1, v17);
  v53 = a1;
  v54 = a2;
  if (v20 != 1)
  {
    sub_1ED18(v55, v10, &qword_94AFE8, &unk_7AF540);
    if ((*(v18 + 88))(v10, v17) == enum case for ShelfHeader.ArtworkType.category(_:))
    {
      v21 = v14;
      v50 = *(v14 + 48);
      if (qword_93D320 != -1)
      {
        swift_once();
      }

      v22 = sub_7666D0();
      v48 = sub_BE38(v22, qword_9597F8);
      v23 = *(v22 - 8);
      v47 = *(v23 + 16);
      v49 = v23 + 16;
      v24 = v51;
      v47(v51, v48, v22);
      LODWORD(v46) = enum case for FontSource.useCase(_:);
      v25 = v52;
      v45 = *(v52 + 104);
      v45(v24);
      v57 = v6;
      v58 = &protocol witness table for FontSource;
      v26 = sub_B1B4(v56);
      v27 = *(v25 + 16);
      v27(v26, v24, v6);
      sub_766CB0();
      v28 = *(v25 + 8);
      v28(v24, v6);
      v47(v24, v48, v22);
      (v45)(v24, v46, v6);
      v57 = v6;
      v58 = &protocol witness table for FontSource;
      v29 = sub_B1B4(v56);
      v27(v29, v24, v6);
      sub_766CB0();
      v28(v24, v6);
      v31 = v53;
      v30 = v54;
      goto LABEL_10;
    }

    (*(v18 + 8))(v10, v17);
  }

  v49 = *(v14 + 48);
  v50 = v14;
  if (qword_93D320 != -1)
  {
    swift_once();
  }

  v32 = sub_7666D0();
  v47 = sub_BE38(v32, qword_9597F8);
  v33 = *(v32 - 8);
  v46 = *(v33 + 16);
  v48 = v33 + 16;
  v34 = v51;
  v46(v51, v47, v32);
  v35 = enum case for FontSource.useCase(_:);
  v36 = v52;
  v45 = *(v52 + 104);
  (v45)(v34, enum case for FontSource.useCase(_:), v6);
  v57 = v6;
  v58 = &protocol witness table for FontSource;
  v37 = sub_B1B4(v56);
  v38 = *(v36 + 16);
  v38(v37, v34, v6);
  sub_766CB0();
  v39 = *(v36 + 8);
  v39(v34, v6);
  v46(v34, v47, v32);
  (v45)(v34, v35, v6);
  v57 = v6;
  v58 = &protocol witness table for FontSource;
  v40 = sub_B1B4(v56);
  v38(v40, v34, v6);
  sub_766CB0();
  v39(v34, v6);
  v31 = v53;
  v30 = v54;
  v21 = v50;
LABEL_10:
  sub_10A2C(v55, &qword_94AFE8, &unk_7AF540);
  v41 = *(v21 + 48);
  v42 = sub_766CA0();
  v43 = *(*(v42 - 8) + 32);
  v43(v31, v16, v42);
  return (v43)(v30, &v16[v41], v42);
}

uint64_t sub_512A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_7664A0();
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&qword_94AFE8, &unk_7AF540);
  __chkstk_darwin(v9 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v47 - v13;
  v15 = sub_BD88(&qword_959940, &qword_7A2A00);
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  sub_1ED18(a3, v14, &qword_94AFE8, &unk_7AF540);
  v18 = sub_759760();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v57 = v14;
  v21 = v20(v14, 1, v18);
  v55 = a1;
  v56 = a2;
  if (v21 != 1)
  {
    sub_1ED18(v57, v11, &qword_94AFE8, &unk_7AF540);
    if ((*(v19 + 88))(v11, v18) == enum case for ShelfHeader.ArtworkType.category(_:))
    {
      v22 = v17;
      v23 = v15;
      v52 = *(v15 + 48);
      if (qword_93D328 != -1)
      {
        swift_once();
      }

      v24 = sub_7666D0();
      v50 = sub_BE38(v24, qword_959810);
      v25 = *(v24 - 8);
      v49 = *(v25 + 16);
      v51 = v25 + 16;
      v49(v8, v50, v24);
      LODWORD(v48) = enum case for FontSource.useCase(_:);
      v27 = v53;
      v26 = v54;
      v47 = *(v53 + 104);
      v47(v8);
      v59 = v26;
      v60 = &protocol witness table for FontSource;
      v28 = sub_B1B4(v58);
      v29 = *(v27 + 16);
      v29(v28, v8, v26);
      sub_766CB0();
      v30 = *(v27 + 8);
      v30(v8, v26);
      v49(v8, v50, v24);
      (v47)(v8, v48, v26);
      v59 = v26;
      v60 = &protocol witness table for FontSource;
      v31 = sub_B1B4(v58);
      v29(v31, v8, v26);
      sub_766CB0();
      v30(v8, v26);
      v33 = v55;
      v32 = v56;
      goto LABEL_10;
    }

    (*(v19 + 8))(v11, v18);
  }

  v51 = *(v15 + 48);
  v52 = v15;
  if (qword_93D328 != -1)
  {
    swift_once();
  }

  v34 = sub_7666D0();
  v49 = sub_BE38(v34, qword_959810);
  v35 = *(v34 - 8);
  v48 = *(v35 + 16);
  v50 = v35 + 16;
  v48(v8, v49, v34);
  v36 = enum case for FontSource.useCase(_:);
  v37 = v53;
  v38 = v54;
  v47 = *(v53 + 104);
  (v47)(v8, enum case for FontSource.useCase(_:), v54);
  v59 = v38;
  v60 = &protocol witness table for FontSource;
  v39 = sub_B1B4(v58);
  v40 = *(v37 + 16);
  v40(v39, v8, v38);
  sub_766CB0();
  v41 = *(v37 + 8);
  v41(v8, v38);
  v48(v8, v49, v34);
  (v47)(v8, v36, v38);
  v59 = v38;
  v60 = &protocol witness table for FontSource;
  v42 = sub_B1B4(v58);
  v40(v42, v8, v38);
  sub_766CB0();
  v41(v8, v38);
  v22 = v17;
  v33 = v55;
  v32 = v56;
  v23 = v52;
LABEL_10:
  sub_10A2C(v57, &qword_94AFE8, &unk_7AF540);
  v43 = *(v23 + 48);
  v44 = sub_766CA0();
  v45 = *(*(v44 - 8) + 32);
  v45(v33, v22, v44);
  return (v45)(v32, &v22[v43], v44);
}

id sub_5130E4()
{
  result = [objc_opt_self() configurationWithScale:1];
  qword_9597B8 = result;
  return result;
}

void sub_513198(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = objc_allocWithZone(NSAttributedString);
  v6 = sub_769210();
  v7 = [v5 initWithString:v6];

  *a4 = v7;
}

uint64_t sub_513260(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v8 = sub_7666D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75C560();
  if (*a2 != -1)
  {
    swift_once();
  }

  v12 = sub_BE38(v8, a3);
  (*(v9 + 16))(v11, v12, v8);
  result = sub_75C550();
  *a4 = result;
  return result;
}

id sub_5133E0(uint64_t a1, uint64_t *a2, id *a3, int a4)
{
  v7 = sub_7666D0();
  sub_161DC(v7, a2);
  v8 = sub_BE38(v7, a2);
  v10 = *a3;
  *v8 = *a3;
  *(v8 + 8) = a4;
  (*(*(v7 - 8) + 104))();

  return v10;
}

char *sub_5134D0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v182 = a4;
  v181 = a3;
  v180 = a2;
  v179 = a1;
  ObjectType = swift_getObjectType();
  v6 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v6 - 8);
  v189 = &v161 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v186 = &v161 - v9;
  v185 = sub_BD88(&qword_959940, &qword_7A2A00);
  __chkstk_darwin(v185);
  v188 = &v161 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v187 = &v161 - v12;
  __chkstk_darwin(v13);
  v195 = &v161 - v14;
  __chkstk_darwin(v15);
  v194 = &v161 - v16;
  __chkstk_darwin(v17);
  v193 = &v161 - v18;
  __chkstk_darwin(v19);
  v192 = &v161 - v20;
  v21 = sub_BD88(&qword_94AFE8, &unk_7AF540);
  __chkstk_darwin(v21 - 8);
  v161 = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v163 = &v161 - v24;
  __chkstk_darwin(v25);
  v196 = &v161 - v26;
  __chkstk_darwin(v27);
  v184 = &v161 - v28;
  v176 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  __chkstk_darwin(v176);
  v177 = (&v161 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  top = COERCE_DOUBLE(sub_760AD0());
  v173 = *(*&top - 8);
  __chkstk_darwin(*&top);
  *&v175 = &v161 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v31 - 8);
  v172 = &v161 - v32;
  v33 = sub_7666D0();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v191 = &v161 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_7674E0();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v161 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_767510();
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v43 = &v161 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_containerView;
  *&v5[v44] = [objc_allocWithZone(UIView) init];
  v183 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_separatorView;
  (*(v37 + 104))(v39, enum case for Separator.Position.top(_:), v36);
  v199 = sub_766970();
  v200 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v198);
  sub_766960();
  sub_7674F0();
  v45 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v46 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator;
  swift_beginAccess();
  v47 = *(v41 + 40);
  v48 = v45;
  v47(&v45[v46], v43, v40);
  swift_endAccess();

  *(v183 + v5) = v48;
  v49 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowButton;
  sub_75C560();
  if (qword_93D320 != -1)
  {
    swift_once();
  }

  v50 = sub_BE38(v33, qword_9597F8);
  v171 = v34;
  v51 = *(v34 + 16);
  v169 = *&v50;
  v183 = v51;
  (v51)(v191);
  *&v5[v49] = sub_75C550();
  v167 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowArtwork;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowArtwork] = 0;
  v52 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowArtworkType;
  v53 = sub_759760();
  v164 = *(v53 - 8);
  v54 = *(v164 + 56);
  v168 = v52;
  v54(&v52[v5], 1, 1, v53);
  v55 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowArtworkView;
  sub_759210();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v5[v55] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v57 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleButton;
  if (qword_93D328 != -1)
  {
    swift_once();
  }

  v166 = sub_BE38(v33, qword_959810);
  (v183)(v191);
  *&v5[v57] = sub_75C550();
  v165 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleArtwork;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleArtwork] = 0;
  v58 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleArtworkType;
  v162 = v53;
  v54(&v5[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleArtworkType], 1, 1, v53);
  v59 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleArtworkView;
  *&v5[v59] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v60 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_accessoryButton;
  if (qword_93D338 != -1)
  {
    swift_once();
  }

  v170 = sub_BE38(v33, qword_959840);
  v61 = v183;
  (v183)(v191);
  *&v5[v60] = sub_75C550();
  v62 = &v5[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleAction];
  *v62 = 0;
  *(v62 + 1) = 0;
  v63 = &v5[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_accessoryAction];
  *v63 = 0;
  *(v63 + 1) = 0;
  v64 = &v5[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowAction];
  *v64 = 0;
  *(v64 + 1) = 0;
  v65 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_subtitleLabel;
  v66 = v185;
  v67 = v171;
  v68 = v61;
  if (qword_93D330 != -1)
  {
    swift_once();
  }

  v69 = sub_BE38(v33, qword_959828);
  v70 = v172;
  (v68)(v172, v69, v33);
  (*(v67 + 56))(v70, 0, 1, v33);
  (*(*&v173 + 104))(COERCE_CGFLOAT(*&v175), enum case for DirectionalTextAlignment.none(_:), COERCE_CGFLOAT(*&top));
  v71 = objc_allocWithZone(sub_75BB20());
  *&v5[v65] = sub_75BB10();
  v72 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_configuration;
  v73 = sub_759810();
  (*(*(v73 - 8) + 56))(&v5[v72], 1, 1, v73);
  v5[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_shouldHighlightEntireView] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_currentTouch] = 0;
  v74 = *&v167[v5];
  v75 = v168;
  swift_beginAccess();
  v76 = v184;
  sub_1ED18(v75 + v5, v184, &qword_94AFE8, &unk_7AF540);
  v77 = *&v165[v5];
  swift_beginAccess();
  sub_1ED18(&v5[v58], v196, &qword_94AFE8, &unk_7AF540);
  v78 = objc_opt_self();
  v171 = v77;

  v191 = v74;

  v79.super.isa = [v78 currentTraitCollection];
  isa = v79.super.isa;
  bottom = UIEdgeInsetsZero.bottom;
  v82 = sub_7666B0(v79).super.isa;
  [(objc_class *)v82 pointSize];
  v84 = v83;
  v85 = objc_opt_self();
  v167 = v82;
  v168 = [v85 fontWithDescriptor:v82 size:v84];
  [v168 lineHeight];
  v172 = v86;
  sub_51242C(v192, v192 + *(v66 + 48), v76);
  v87.super.isa = isa;
  v88 = sub_7666B0(v87).super.isa;
  [(objc_class *)v88 pointSize];
  v165 = v88;
  v166 = [v85 fontWithDescriptor:v88 size:?];
  [v166 lineHeight];
  v173 = v89;
  sub_512A90(v193, v193 + *(v66 + 48), v196);
  v183 = isa;
  v90 = [(objc_class *)isa preferredContentSizeCategory];
  LOBYTE(v76) = sub_769B30();

  if ((v76 & 1) == 0 || (v91 = 0.0, UIAccessibilityButtonShapesEnabled()))
  {
    v92 = v163;
    sub_1ED18(v196, v163, &qword_94AFE8, &unk_7AF540);
    v93 = v164;
    v94 = v162;
    v91 = 7.0;
    if ((*(v164 + 48))(v92, 1, v162) != 1)
    {
      v95 = v161;
      sub_1ED18(v92, v161, &qword_94AFE8, &unk_7AF540);
      v96 = (*(v93 + 88))(v95, v94);
      if (v96 != enum case for ShelfHeader.ArtworkType.icon(_:))
      {
        v91 = 5.0;
        if (v96 != enum case for ShelfHeader.ArtworkType.category(_:))
        {
          (*(v164 + 8))(v95, v94);
          v91 = 7.0;
        }
      }
    }

    sub_10A2C(v92, &qword_94AFE8, &unk_7AF540);
  }

  v169 = v91;
  v97.super.isa = v183;
  v98.super.isa = sub_7666B0(v97).super.isa;
  [(objc_class *)v98.super.isa pointSize];
  v99 = [v85 fontWithDescriptor:v98.super.isa size:?];
  [v99 lineHeight];
  v101 = v100;
  top = UIEdgeInsetsZero.top;
  sub_7697D0();
  v170 = v102;
  v164 = v103;
  v163 = v104;
  v162 = v105;
  sub_7697D0();
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v113 = v112;
  v114 = v192;
  sub_1ED18(v192, v194, &qword_959940, &qword_7A2A00);
  sub_1ED18(v114, v195, &qword_959940, &qword_7A2A00);
  v175 = bottom;
  if (v191)
  {
    sub_765260();
    v115 = v186;
    sub_7666A0();
    v116 = 0;
  }

  else
  {
    v116 = 1;
    v115 = v186;
  }

  v117 = sub_766690();
  v118 = *(*(v117 - 8) + 56);
  v118(v115, v116, 1, v117);
  left = UIEdgeInsetsZero.left;
  right = UIEdgeInsetsZero.right;
  v121 = v193;
  sub_1ED18(v193, v187, &qword_959940, &qword_7A2A00);
  sub_1ED18(v121, v188, &qword_959940, &qword_7A2A00);
  v178 = v5;
  if (v171)
  {
    sub_765260();
    v122 = v189;
    sub_7666A0();

    v123 = 0;
  }

  else
  {

    v123 = 1;
    v122 = v189;
  }

  v124 = v185;

  sub_10A2C(v193, &qword_959940, &qword_7A2A00);
  sub_10A2C(v192, &qword_959940, &qword_7A2A00);
  sub_10A2C(v196, &qword_94AFE8, &unk_7AF540);
  sub_10A2C(v184, &qword_94AFE8, &unk_7AF540);
  v118(v122, v123, 1, v117);
  v125 = v173;
  v126 = v173 - v101;
  v127 = *(v124 + 48);
  v128 = v176;
  v129 = *(v176 + 40);
  v130 = v177;
  v118(v177 + v129, 1, 1, v117);
  v196 = v128[15];
  v118(v130 + v196, 1, 1, v117);
  v131 = v164;
  *v130 = v170;
  v130[1] = v131;
  v132 = v162;
  v130[2] = v163;
  v130[3] = v132;
  v130[4] = v172;
  v130[5] = v107;
  v130[6] = v109;
  v130[7] = v111;
  v130[8] = v113;
  v133 = v128[7];
  v134 = sub_766CA0();
  v135 = *(v134 - 8);
  v136 = *(v135 + 32);
  v136(v130 + v133, v194, v134);
  v136(v130 + v128[8], v195 + v127, v134);
  *(v130 + v128[9]) = 0x4008000000000000;
  sub_B33C8(v186, v130 + v129, &unk_948720, &unk_784970);
  *(v130 + v128[11]) = v125;
  v137 = (v130 + v128[12]);
  *v137 = top;
  v137[1] = left;
  v137[2] = v175;
  v137[3] = right;
  v138 = v187;
  v136(v130 + v128[13], v187, v134);
  v139 = v188;
  v136(v130 + v128[14], v188 + v127, v134);
  sub_B33C8(v189, v130 + v196, &unk_948720, &unk_784970);
  *(v130 + v128[16]) = v169;
  v140 = v130 + v128[17];
  *v140 = v126;
  *(v140 + 2) = 0;
  *(v140 + 3) = 0;
  *(v140 + 1) = 0x4024000000000000;
  v141 = *(v135 + 8);
  v141(v139, v134);
  v141(v138 + v127, v134);
  v141(v195, v134);
  v141(v194 + v127, v134);
  v142 = v178;
  sub_51C078(v130, &v178[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_metrics], type metadata accessor for ShelfHeaderLayout.Metrics);
  v143 = ObjectType;
  v197.receiver = v142;
  v197.super_class = ObjectType;
  v144 = objc_msgSendSuper2(&v197, "initWithFrame:", v179, v180, v181, v182);
  v145 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleButton;
  v146 = *&v144[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleButton];
  sub_BE70(0, &qword_955FA0, UIAction_ptr);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v147 = v144;
  v148 = v146;
  v149 = sub_76A1F0();
  [v148 addAction:v149 forControlEvents:0x2000];

  v150 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_accessoryButton;
  v151 = *&v147[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_accessoryButton];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v152 = v151;
  v153 = sub_76A1F0();
  [v152 addAction:v153 forControlEvents:0x2000];

  v154 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowButton;
  v155 = *&v147[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowButton];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v156 = v155;
  v157 = sub_76A1F0();
  [v156 addAction:v157 forControlEvents:0x2000];

  v158 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_containerView;
  [*&v147[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_containerView] addSubview:*&v147[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_separatorView]];
  [*&v147[v158] addSubview:*&v147[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowArtworkView]];
  [*&v147[v158] addSubview:*&v147[v154]];
  [*&v147[v158] addSubview:*&v147[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleArtworkView]];
  [*&v147[v158] addSubview:*&v144[v145]];
  [*&v147[v158] addSubview:*&v147[v150]];
  [*&v147[v158] addSubview:*&v147[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_subtitleLabel]];
  [v147 addSubview:*&v147[v158]];
  sub_514D18();
  sub_BD88(&qword_9477F0, qword_780200);
  v159 = swift_allocObject();
  *(v159 + 16) = xmmword_77E280;
  *(v159 + 32) = sub_767B80();
  *(v159 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v159 + 48) = sub_7676F0();
  *(v159 + 56) = &protocol witness table for UITraitLegibilityWeight;
  v199 = v143;
  v198 = v147;
  sub_769F30();
  swift_unknownObjectRelease();

  sub_BEB8(&v198);
  return v147;
}

void sub_514C80(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = &Strong[*a3];
    v7 = *v6;
    if (*v6)
    {
      v8 = v6[1];
      sub_F714(*v6, v8);

      v7();
      sub_F704(v7, v8);
    }

    else
    {
    }
  }
}

uint64_t sub_514D18()
{
  v1 = v0;
  v2 = sub_BD88(&unk_954ED0, &unk_77E060);
  __chkstk_darwin(v2 - 8);
  v118 = &v96 - v3;
  v4 = sub_BD88(&unk_95A870, &unk_798D00);
  __chkstk_darwin(v4 - 8);
  v117 = &v96 - v5;
  v115 = sub_76A3F0();
  v119 = *(v115 - 8);
  __chkstk_darwin(v115);
  v101 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v112 = &v96 - v8;
  __chkstk_darwin(v9);
  v11 = &v96 - v10;
  v12 = sub_BD88(&unk_948010, qword_789590);
  __chkstk_darwin(v12 - 8);
  v99 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v113 = &v96 - v15;
  __chkstk_darwin(v16);
  v18 = &v96 - v17;
  __chkstk_darwin(v19);
  v102 = &v96 - v20;
  v21 = sub_759810();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_separatorView];
  v26 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_configuration;
  swift_beginAccess();
  v116 = v22;
  v29 = *(v22 + 48);
  v27 = v22 + 48;
  v28 = v29;
  v30 = 1;
  v31 = v29(&v1[v26], 1, v21);
  v121 = v29;
  if (!v31)
  {
    v32 = v116;
    (*(v116 + 16))(v24, &v1[v26], v21);
    v33 = sub_7597F0();
    v34 = v32;
    v28 = v121;
    (*(v34 + 8))(v24, v21);
    v30 = v33 ^ 1;
  }

  [v25 setHidden:v30 & 1];
  v120 = v27;
  v35 = v28(&v1[v26], 1, v21);
  v100 = v24;
  if (!v35)
  {
    v36 = v116;
    (*(v116 + 16))(v24, &v1[v26], v21);
    sub_759800();
    (*(v36 + 8))(v24, v21);
  }

  sub_7590A0();
  v37 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowButton];
  v114 = v26;
  v38 = &v1[v26];
  v39 = v102;
  sub_1ED18(v38, v102, &unk_948010, qword_789590);
  v40 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowAction];
  v98 = [v1 traitCollection];
  sub_76A3A0();
  sub_76A2A0();
  sub_76A2C0();
  sub_1ED18(v39, v18, &unk_948010, qword_789590);
  v41 = v21;
  if (v121(v18, 1, v21) == 1)
  {
    sub_10A2C(v18, &unk_948010, qword_789590);
    v42 = v112;
  }

  else
  {
    v43 = sub_7597B0();
    (*(v116 + 8))(v18, v21);
    v42 = v112;
    if (v43)
    {
      goto LABEL_11;
    }
  }

  if (qword_93D340 != -1)
  {
    swift_once();
  }

  v44 = qword_959858;
LABEL_11:
  v97 = v41;
  sub_76A320();
  v45 = sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93D320 != -1)
  {
    swift_once();
  }

  v46 = v40 != 0;
  v103 = sub_7666D0();
  sub_BE38(v103, qword_9597F8);
  v47 = v98;
  v111 = v45;
  v48 = sub_769E10();
  *(swift_allocObject() + 16) = v48;
  v49 = v48;
  v50 = v117;
  sub_767BA0();
  v51 = sub_767B90();
  v52 = *(v51 - 8);
  v53 = *(v52 + 56);
  v110 = v51;
  v109 = v53;
  v108 = v52 + 56;
  (v53)(v50, 0, 1);
  sub_76A340();
  v54 = v118;
  v55 = v119;
  v56 = *(v119 + 16);
  v57 = v115;
  v107 = v119 + 16;
  v106 = v56;
  v56(v118, v11, v115);
  v58 = *(v55 + 56);
  v105 = v55 + 56;
  v104 = v58;
  v58(v54, 0, 1, v57);
  sub_76A420();
  [v37 setUserInteractionEnabled:v46];
  [v37 _setWantsAccessibilityUnderline:v46];

  v59 = *(v55 + 8);
  v119 = v55 + 8;
  v112 = v59;
  (v59)(v11, v57);
  sub_10A2C(v102, &unk_948010, qword_789590);
  v60 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleButton];
  v61 = v113;
  sub_1ED18(&v1[v114], v113, &unk_948010, qword_789590);
  v62 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleAction];
  v63 = [v1 traitCollection];
  sub_76A3A0();
  sub_76A2A0();
  sub_76A2C0();
  v64 = v61;
  v65 = v99;
  sub_1ED18(v64, v99, &unk_948010, qword_789590);
  v66 = v97;
  if (v121(v65, 1, v97) == 1)
  {
    sub_10A2C(v65, &unk_948010, qword_789590);
  }

  else
  {
    v67 = sub_759790();
    (*(v116 + 8))(v65, v66);
    if (v67)
    {
      goto LABEL_19;
    }
  }

  if (qword_93D348 != -1)
  {
    swift_once();
  }

  v68 = qword_959860;
LABEL_19:
  sub_76A320();
  v102 = objc_opt_self();
  v69 = [v102 clearColor];
  v70 = sub_76A230();
  sub_767760();
  v70(v122, 0);
  v71 = sub_76A230();
  sub_767740();
  v71(v122, 0);
  if (qword_93D328 != -1)
  {
    swift_once();
  }

  v72 = v62 != 0;
  sub_BE38(v103, qword_959810);
  v73 = sub_769E10();
  *(swift_allocObject() + 16) = v73;
  v74 = v73;
  v75 = v117;
  sub_767BA0();
  v109(v75, 0, 1, v110);
  sub_76A340();
  v76 = v118;
  v77 = v115;
  v106(v118, v42, v115);
  v104(v76, 0, 1, v77);
  sub_76A420();
  [v60 setNeedsUpdateConfiguration];
  [v60 setContentHorizontalAlignment:4];
  [v60 setUserInteractionEnabled:v72];
  [v60 _setWantsAccessibilityUnderline:v72];

  (v112)(v42, v77);
  sub_10A2C(v113, &unk_948010, qword_789590);
  v78 = v114;
  v79 = v121(&v1[v114], 1, v66);
  v80 = v101;
  if (v79)
  {
    v81 = v100;
  }

  else
  {
    v82 = v116;
    v81 = v100;
    (*(v116 + 16))(v100, &v1[v78], v66);
    sub_7597E0();
    (*(v82 + 8))(v81, v66);
  }

  sub_7590A0();
  sub_76A3A0();
  sub_76A2A0();
  sub_76A2C0();
  if (v121(&v1[v78], 1, v66) || (v84 = v116, (*(v116 + 16))(v81, &v1[v78], v66), v85 = sub_7597D0(), (*(v84 + 8))(v81, v66), !v85))
  {
    v83 = [v102 systemBlueColor];
  }

  sub_76A320();
  if (qword_93D338 != -1)
  {
    swift_once();
  }

  sub_BE38(v103, qword_959840);
  v86 = [v1 traitCollection];
  v87 = sub_769E10();

  *(swift_allocObject() + 16) = v87;
  v88 = v87;
  v89 = v117;
  sub_767BA0();
  v109(v89, 0, 1, v110);
  sub_76A340();
  v90 = v118;
  v106(v118, v80, v77);
  v104(v90, 0, 1, v77);
  sub_76A420();
  v91 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_subtitleLabel];
  if (v121(&v1[v78], 1, v66) || (v93 = v78, v94 = v116, (*(v116 + 16))(v81, &v1[v93], v66), v92 = sub_7597C0(), (*(v94 + 8))(v81, v66), !v92))
  {
    if (qword_93D350 != -1)
    {
      swift_once();
    }

    v92 = qword_959868;
  }

  [v91 setTextColor:v92];

  [v1 setNeedsLayout];
  return (v112)(v80, v77);
}

uint64_t sub_515CDC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_BD88(&unk_948010, qword_789590);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_BD88(&qword_94AFE8, &unk_7AF540);
  *&v6 = __chkstk_darwin(v5 - 8).n128_u64[0];
  v8 = &v24 - v7;
  v25.receiver = v0;
  v25.super_class = ObjectType;
  objc_msgSendSuper2(&v25, "prepareForReuse", v6);
  v9 = &v0[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowAction];
  v10 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowAction];
  v11 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowAction + 8];
  *v9 = 0;
  *(v9 + 1) = 0;
  sub_F704(v10, v11);
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowButton] setAttributedTitle:0 forState:0];
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowArtwork] = 0;

  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowArtworkView] setHidden:1];
  v12 = sub_759760();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowArtworkType;
  swift_beginAccess();
  sub_B33C8(v8, &v0[v13], &qword_94AFE8, &unk_7AF540);
  swift_endAccess();
  v14 = &v0[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_accessoryAction];
  v15 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_accessoryAction];
  v16 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_accessoryAction + 8];
  *v14 = 0;
  *(v14 + 1) = 0;
  sub_F704(v15, v16);
  v17 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_accessoryButton];
  [v17 setTitle:0 forState:0];
  [v17 setImage:0 forState:0];
  v18 = &v0[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleAction];
  v19 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleAction];
  v20 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleAction + 8];
  *v18 = 0;
  *(v18 + 1) = 0;
  sub_F704(v19, v20);
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleButton] setAttributedTitle:0 forState:0];
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_subtitleLabel] setText:0];
  v21 = sub_759810();
  (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
  v22 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_configuration;
  swift_beginAccess();
  sub_51A668(v4, &v0[v22]);
  swift_endAccess();
  sub_514D18();
  return sub_10A2C(v4, &unk_948010, qword_789590);
}

double sub_516038@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v3 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_metrics;
  swift_beginAccess();
  v69 = v5;
  sub_51A5A4(v2 + v6, v5);
  v7 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_separatorView);
  v86[3] = type metadata accessor for SeparatorView(0);
  v86[4] = &protocol witness table for UIView;
  v86[0] = v7;
  v8 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowButton);
  v9 = v7;
  if (([v8 isHidden] & 1) != 0 || !objc_msgSend(v8, "hasContent"))
  {
    v85 = 0;
    v83 = 0u;
    v84 = 0u;
  }

  else
  {
    *(&v84 + 1) = sub_75C560();
    v85 = &protocol witness table for UIButton;
    *&v83 = v8;
    v10 = v8;
  }

  v11 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowArtworkView);
  v12 = sub_759210();
  v82[3] = v12;
  v82[4] = &protocol witness table for UIView;
  v82[0] = v11;
  v13 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleButton);
  v14 = sub_75C560();
  v81[3] = v14;
  v81[4] = &protocol witness table for UIButton;
  v80[4] = &protocol witness table for UIView;
  v81[0] = v13;
  v15 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleArtworkView);
  v80[3] = v12;
  v80[0] = v15;
  v16 = v11;
  v17 = v13;
  v18 = v15;
  v19 = sub_516DCC();
  v20 = v19;
  if (v19)
  {
    v19 = sub_75BB20();
    v21 = &protocol witness table for UILabel;
  }

  else
  {
    v21 = 0;
    v79[1] = 0;
    v79[2] = 0;
  }

  v79[0] = v20;
  v79[3] = v19;
  v79[4] = v21;
  v22 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_accessoryButton);
  if (([v22 isHidden] & 1) != 0 || !objc_msgSend(v22, "hasContent"))
  {
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
  }

  else
  {
    *(&v77 + 1) = v14;
    v78 = &protocol witness table for UIView;
    *&v76 = v22;
    v23 = v22;
  }

  v24 = v68;
  sub_51A5A4(v69, v68);
  sub_1ED18(v86, v70, &unk_943B10, &qword_77E080);
  v25 = v71;
  if (v71)
  {
    v26 = v72;
    sub_B170(v70, v71);
    v27 = sub_76A480();
    v28 = *(v27 - 8);
    __chkstk_darwin(v27);
    v30 = &v67 - v29;
    sub_766510();
    v31 = *(v25 - 8);
    if ((*(v31 + 48))(v30, 1, v25) == 1)
    {
      (*(v28 + 8))(v30, v27);
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
    }

    else
    {
      *(&v74 + 1) = v25;
      v75 = v26;
      v32 = sub_B1B4(&v73);
      (*(v31 + 32))(v32, v30, v25);
    }

    sub_BEB8(v70);
  }

  else
  {
    sub_10A2C(v70, &unk_943B10, &qword_77E080);
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
  }

  v33 = type metadata accessor for ShelfHeaderLayout(0);
  v34 = v24 + v33[5];
  v35 = v74;
  *v34 = v73;
  *(v34 + 16) = v35;
  *(v34 + 32) = v75;
  sub_1ED18(&v83, v24 + v33[6], &unk_941EB0, &unk_7814A0);
  sub_1ED18(v82, v70, &unk_943B10, &qword_77E080);
  v36 = v71;
  if (v71)
  {
    v37 = v72;
    sub_B170(v70, v71);
    v38 = sub_76A480();
    v39 = *(v38 - 8);
    __chkstk_darwin(v38);
    v41 = &v67 - v40;
    sub_766510();
    v42 = *(v36 - 8);
    if ((*(v42 + 48))(v41, 1, v36) == 1)
    {
      (*(v39 + 8))(v41, v38);
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
    }

    else
    {
      *(&v74 + 1) = v36;
      v75 = v37;
      v43 = sub_B1B4(&v73);
      (*(v42 + 32))(v43, v41, v36);
    }

    sub_BEB8(v70);
  }

  else
  {
    sub_10A2C(v70, &unk_943B10, &qword_77E080);
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
  }

  v44 = v24 + v33[7];
  v45 = v74;
  *v44 = v73;
  *(v44 + 16) = v45;
  *(v44 + 32) = v75;
  sub_134D8(v81, v24 + v33[8]);
  sub_1ED18(v80, v70, &unk_943B10, &qword_77E080);
  v46 = v71;
  if (v71)
  {
    v47 = v72;
    sub_B170(v70, v71);
    v48 = sub_76A480();
    v49 = *(v48 - 8);
    __chkstk_darwin(v48);
    v51 = &v67 - v50;
    sub_766510();
    v52 = *(v46 - 8);
    if ((*(v52 + 48))(v51, 1, v46) == 1)
    {
      (*(v49 + 8))(v51, v48);
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
    }

    else
    {
      *(&v74 + 1) = v46;
      v75 = v47;
      v53 = sub_B1B4(&v73);
      (*(v52 + 32))(v53, v51, v46);
    }

    sub_BEB8(v70);
  }

  else
  {
    sub_10A2C(v70, &unk_943B10, &qword_77E080);
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
  }

  v54 = v24 + v33[9];
  v55 = v74;
  *v54 = v73;
  *(v54 + 16) = v55;
  *(v54 + 32) = v75;
  sub_1ED18(v79, v24 + v33[10], &unk_941EB0, &unk_7814A0);
  sub_1ED18(&v76, v70, &unk_943B10, &qword_77E080);
  v56 = v71;
  if (v71)
  {
    v57 = v72;
    sub_B170(v70, v71);
    v58 = sub_76A480();
    v67 = &v67;
    v59 = *(v58 - 8);
    __chkstk_darwin(v58);
    v61 = &v67 - v60;
    sub_766510();
    v62 = *(v56 - 8);
    if ((*(v62 + 48))(v61, 1, v56) == 1)
    {
      sub_51A608(v69, type metadata accessor for ShelfHeaderLayout.Metrics);
      sub_10A2C(&v76, &unk_943B10, &qword_77E080);
      sub_10A2C(v79, &unk_941EB0, &unk_7814A0);
      sub_10A2C(v80, &unk_943B10, &qword_77E080);
      sub_BEB8(v81);
      sub_10A2C(v82, &unk_943B10, &qword_77E080);
      sub_10A2C(&v83, &unk_941EB0, &unk_7814A0);
      sub_10A2C(v86, &unk_943B10, &qword_77E080);
      (*(v59 + 8))(v61, v58);
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
    }

    else
    {
      *(&v74 + 1) = v56;
      v75 = v57;
      v63 = sub_B1B4(&v73);
      (*(v62 + 32))(v63, v61, v56);
      sub_51A608(v69, type metadata accessor for ShelfHeaderLayout.Metrics);
      sub_10A2C(&v76, &unk_943B10, &qword_77E080);
      sub_10A2C(v79, &unk_941EB0, &unk_7814A0);
      sub_10A2C(v80, &unk_943B10, &qword_77E080);
      sub_BEB8(v81);
      sub_10A2C(v82, &unk_943B10, &qword_77E080);
      sub_10A2C(&v83, &unk_941EB0, &unk_7814A0);
      sub_10A2C(v86, &unk_943B10, &qword_77E080);
    }

    sub_BEB8(v70);
  }

  else
  {
    sub_51A608(v69, type metadata accessor for ShelfHeaderLayout.Metrics);
    sub_10A2C(&v76, &unk_943B10, &qword_77E080);
    sub_10A2C(v79, &unk_941EB0, &unk_7814A0);
    sub_10A2C(v80, &unk_943B10, &qword_77E080);
    sub_BEB8(v81);
    sub_10A2C(v82, &unk_943B10, &qword_77E080);
    sub_10A2C(&v83, &unk_941EB0, &unk_7814A0);
    sub_10A2C(v86, &unk_943B10, &qword_77E080);
    sub_10A2C(v70, &unk_943B10, &qword_77E080);
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
  }

  v64 = v24 + v33[11];
  result = *&v73;
  v66 = v74;
  *v64 = v73;
  *(v64 + 16) = v66;
  *(v64 + 32) = v75;
  return result;
}

void *sub_516DCC()
{
  if ([v0 isHidden])
  {
    return 0;
  }

  v1 = [v0 text];
  if (v1)
  {
    v2 = v1;
    v3 = sub_769240();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      goto LABEL_9;
    }
  }

  v7 = [v0 attributedText];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = [v7 length];

  if (v9 < 1)
  {
    return 0;
  }

LABEL_9:
  v10 = v0;
  return v0;
}

uint64_t sub_516EE4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_756F10();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  sub_1EABC();
  v7 = a2;
  return sub_756F20();
}

uint64_t sub_516F84(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5)
{
  v29 = a4;
  v30 = a5;
  v9 = sub_7652D0();
  __chkstk_darwin(v9 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&qword_94AFE8, &unk_7AF540);
  __chkstk_darwin(v12 - 8);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v27 - v16;
  v18 = sub_759760();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1ED18(a2, v17, &qword_94AFE8, &unk_7AF540);
    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      v24 = *(v19 + 32);
      v27[1] = v11;
      v28 = v24;
      v24(v21, v17, v18);
      *(v5 + *a3) = a1;
      swift_retain_n();

      [*(v5 + *v29) setHidden:0];
      sub_7652E0();
      sub_7591B0();

      v28(v14, v21, v18);
      (*(v19 + 56))(v14, 0, 1, v18);
      v25 = *v30;
      swift_beginAccess();
      v23 = v5 + v25;
      goto LABEL_6;
    }

    sub_10A2C(v17, &qword_94AFE8, &unk_7AF540);
  }

  *(v5 + *a3) = 0;

  [*(v5 + *v29) setHidden:1];
  (*(v19 + 56))(v14, 1, 1, v18);
  v22 = *v30;
  swift_beginAccess();
  v23 = v5 + v22;
LABEL_6:
  sub_B33C8(v14, v23, &qword_94AFE8, &unk_7AF540);
  return swift_endAccess();
}

uint64_t sub_5172EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v219 = a5;
  v232 = *&a3;
  v233 = a2;
  ObjectType = swift_getObjectType();
  v227 = sub_768C60();
  v226 = *(v227 - 8);
  __chkstk_darwin(v227);
  v225 = &v205 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v223 = &v205 - v11;
  __chkstk_darwin(v12);
  v224 = &v205 - v13;
  v222 = sub_BD88(&unk_94F1F0, &qword_782290);
  v221 = *(v222 - 8);
  __chkstk_darwin(v222);
  v220 = &v205 - v14;
  v15 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v15 - 8);
  v241 = &v205 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v237 = &v205 - v18;
  v236 = sub_BD88(&qword_959940, &qword_7A2A00);
  __chkstk_darwin(v236);
  v240 = &v205 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v239 = &v205 - v21;
  __chkstk_darwin(v22);
  v238 = &v205 - v23;
  __chkstk_darwin(v24);
  v246 = &v205 - v25;
  __chkstk_darwin(v26);
  v245 = &v205 - v27;
  __chkstk_darwin(v28);
  v244 = &v205 - v29;
  v214 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  __chkstk_darwin(v214);
  v215 = &v205 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_BD88(&unk_948010, qword_789590);
  __chkstk_darwin(v31 - 8);
  v212 = &v205 - v32;
  v231 = sub_75DAB0();
  v33 = *(v231 - 1);
  __chkstk_darwin(v231);
  v228 = v34;
  v229 = &v205 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_BD88(&qword_94AFE8, &unk_7AF540);
  __chkstk_darwin(v35 - 8);
  *&v206 = &v205 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v207 = &v205 - v38;
  __chkstk_darwin(v39);
  v235 = &v205 - v40;
  __chkstk_darwin(v41);
  v234 = &v205 - v42;
  __chkstk_darwin(v43);
  v45 = &v205 - v44;
  v46 = sub_759840();
  sub_759870();
  sub_516F84(v46, v45, &OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowArtwork, &OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowArtworkView, &OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowArtworkType);

  sub_10A2C(v45, &qword_94AFE8, &unk_7AF540);
  v242 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowButton];
  v47 = sub_7598C0();
  v49 = v48;
  v243 = a4;
  v50 = sub_75DA30();
  v51 = sub_759890();
  v230 = a1;
  if (v51)
  {
    if (qword_93D2E0 != -1)
    {
      swift_once();
    }

    v52 = [qword_9597B8 configurationWithTraitCollection:v50];
    v53 = sub_759910();
  }

  else
  {
    v53 = 0;
  }

  v54 = sub_51B054(v47, v49, v50, v53);

  [v242 setAttributedTitle:v54 forState:0];

  v55 = sub_759780();
  sub_759860();
  sub_516F84(v55, v45, &OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleArtwork, &OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleArtworkView, &OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleArtworkType);

  sub_10A2C(v45, &qword_94AFE8, &unk_7AF540);
  v56 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleButton];
  v57 = sub_7598A0();
  v59 = v58;
  v60 = v243;
  v61 = sub_75DA30();
  v62 = sub_759770();
  if (v62)
  {
  }

  v63 = sub_51B374(v57, v59, v61, v62 != 0);

  v217 = v56;
  [v56 setAttributedTitle:v63 forState:0];

  v64 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_subtitleLabel];
  sub_7598D0();
  if (v65)
  {
    v66 = sub_769210();
  }

  else
  {
    v66 = 0;
  }

  v218 = v64;
  [v64 setText:v66];

  v67 = sub_759850();
  v68 = sub_51B550(v67);
  if (v70 == -1)
  {
    v82 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_accessoryButton];
    [v82 setTitle:0 forState:0];
    v216 = v82;
    [v82 setImage:0 forState:0];
  }

  else
  {
    v71 = v70;
    v72 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_accessoryButton];
    v216 = v72;
    if (v70)
    {
      v73 = v68;
      v74 = v69;
      [v72 setTitle:0 forState:0];
      v75 = v72;
      v76 = sub_75DA30();
      sub_BE70(0, &qword_93F900, UIFont_ptr);
      if (qword_93D338 != -1)
      {
        swift_once();
      }

      v77 = sub_7666D0();
      sub_BE38(v77, qword_959840);
      v78 = sub_769E10();
      v79 = [objc_opt_self() configurationWithFont:v78 scale:2];
      v80 = sub_769210();
      sub_51BE60(v73, v74, v71);
      v81 = [objc_opt_self() _systemImageNamed:v80 withConfiguration:v79];

      [v75 setImage:v81 forState:0];
      v60 = v243;
    }

    else
    {
      v83 = v72;
      v84 = v68;
      v85 = v69;
      v86 = sub_769210();
      [v83 setTitle:v86 forState:{0, sub_51BE60(v84, v85, v71)}];

      [v83 setImage:0 forState:0];
    }
  }

  v87 = sub_759770();
  if (v87)
  {
    v88 = swift_allocObject();
    *(v88 + 24) = v232;
    swift_unknownObjectWeakInit();
    v89 = v229;
    v90 = v231;
    (*(v33 + 16))(v229, v60, v231);
    v91 = (*(v33 + 80) + 24) & ~*(v33 + 80);
    v92 = swift_allocObject();
    *(v92 + 16) = v88;
    (*(v33 + 32))(v92 + v91, v89, v90);

    v87 = swift_allocObject();
    *(v87 + 16) = sub_51C05C;
    *(v87 + 24) = v92;
    v93 = sub_51C11C;
  }

  else
  {
    v93 = 0;
  }

  v94 = &v6[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleAction];
  v96 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleAction];
  v95 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleAction + 8];
  *v94 = v93;
  v94[1] = v87;
  sub_F704(v96, v95);
  v97 = sub_759850();
  if (v97)
  {
    v98 = swift_allocObject();
    *(v98 + 24) = v232;
    swift_unknownObjectWeakInit();
    v99 = v229;
    v100 = v231;
    (*(v33 + 16))(v229, v60, v231);
    v101 = (*(v33 + 80) + 24) & ~*(v33 + 80);
    v102 = swift_allocObject();
    *(v102 + 16) = v98;
    (*(v33 + 32))(v102 + v101, v99, v100);

    v97 = swift_allocObject();
    *(v97 + 16) = sub_51BFCC;
    *(v97 + 24) = v102;
    v103 = sub_51C11C;
  }

  else
  {
    v103 = 0;
  }

  v104 = &v6[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_accessoryAction];
  v106 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_accessoryAction];
  v105 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_accessoryAction + 8];
  *v104 = v103;
  v104[1] = v97;
  sub_F704(v106, v105);
  v107 = sub_759830();
  if (v107)
  {
    v108 = swift_allocObject();
    *(v108 + 24) = v232;
    swift_unknownObjectWeakInit();
    v109 = v229;
    v110 = v231;
    (*(v33 + 16))(v229, v60, v231);
    v111 = (*(v33 + 80) + 24) & ~*(v33 + 80);
    v112 = swift_allocObject();
    *(v112 + 16) = v108;
    (*(v33 + 32))(v112 + v111, v109, v110);

    v107 = swift_allocObject();
    *(v107 + 16) = sub_51BF7C;
    *(v107 + 24) = v112;
    v113 = sub_46344;
  }

  else
  {
    v113 = 0;
  }

  v114 = &v6[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowAction];
  v116 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowAction];
  v115 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowAction + 8];
  *v114 = v113;
  v114[1] = v107;
  sub_F704(v116, v115);
  v117 = v212;
  sub_759820();
  v118 = sub_759810();
  (*(*(v118 - 8) + 56))(v117, 0, 1, v118);
  v119 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_configuration;
  swift_beginAccess();
  sub_51A668(v117, &v6[v119]);
  swift_endAccess();
  sub_514D18();
  sub_10A2C(v117, &unk_948010, qword_789590);
  v120 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowArtwork];
  v121 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowArtworkType;
  swift_beginAccess();
  v122 = v234;
  sub_1ED18(&v6[v121], v234, &qword_94AFE8, &unk_7AF540);
  v123 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleArtwork];
  v124 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleArtworkType;
  swift_beginAccess();
  v125 = v235;
  sub_1ED18(&v6[v124], v235, &qword_94AFE8, &unk_7AF540);
  v228 = v123;

  v233 = v120;

  sub_51A6D8();
  v229 = v6;
  v126 = [v6 traitCollection];
  if (qword_93D320 != -1)
  {
    swift_once();
  }

  v127 = sub_7666D0();
  sub_BE38(v127, qword_9597F8);
  v128.super.isa = v126;
  isa = sub_7666B0(v128).super.isa;
  [(objc_class *)isa pointSize];
  v131 = v130;
  v132 = objc_opt_self();
  v210 = isa;
  v211 = [v132 fontWithDescriptor:isa size:v131];
  [v211 lineHeight];
  v212 = v133;
  v134 = v236;
  sub_51242C(v244, v244 + *(v236 + 48), v122);
  if (qword_93D328 != -1)
  {
    swift_once();
  }

  sub_BE38(v127, qword_959810);
  v135.super.isa = v126;
  v136 = sub_7666B0(v135).super.isa;
  [(objc_class *)v136 pointSize];
  v208 = v136;
  v209 = [v132 fontWithDescriptor:v136 size:?];
  [v209 lineHeight];
  v232 = v137;
  sub_512A90(v245, v245 + *(v134 + 48), v125);
  v231 = v126;
  v138 = [(objc_class *)v126 preferredContentSizeCategory];
  v139 = sub_769B30();

  if ((v139 & 1) == 0 || (v140 = 0.0, UIAccessibilityButtonShapesEnabled()))
  {
    v141 = v207;
    sub_1ED18(v125, v207, &qword_94AFE8, &unk_7AF540);
    v142 = sub_759760();
    v143 = *(v142 - 8);
    v140 = 7.0;
    if ((*(v143 + 48))(v141, 1, v142) != 1)
    {
      v144 = v206;
      sub_1ED18(v141, v206, &qword_94AFE8, &unk_7AF540);
      v145 = (*(v143 + 88))(v144, v142);
      if (v145 != enum case for ShelfHeader.ArtworkType.icon(_:))
      {
        v140 = 5.0;
        if (v145 != enum case for ShelfHeader.ArtworkType.category(_:))
        {
          (*(v143 + 8))(v144, v142);
          v140 = 7.0;
        }
      }
    }

    sub_10A2C(v141, &qword_94AFE8, &unk_7AF540);
  }

  ObjectType = *&v140;
  if (qword_93D338 != -1)
  {
    swift_once();
  }

  sub_BE38(v127, qword_959840);
  v146.super.isa = v231;
  v147.super.isa = sub_7666B0(v146).super.isa;
  [(objc_class *)v147.super.isa pointSize];
  v148 = [v132 fontWithDescriptor:v147.super.isa size:?];
  [v148 lineHeight];
  v150 = v149;
  sub_7697D0();
  v207 = v151;
  v153 = v152;
  v155 = v154;
  v157 = v156;
  sub_7697D0();
  v159 = v158;
  v161 = v160;
  v163 = v162;
  v165 = v164;
  v166 = v244;
  sub_1ED18(v244, v246, &qword_959940, &qword_7A2A00);
  sub_1ED18(v166, v238, &qword_959940, &qword_7A2A00);
  if (v233)
  {
    sub_765260();
    v167 = v237;
    sub_7666A0();
    v168 = 0;
  }

  else
  {
    v168 = 1;
    v167 = v237;
  }

  v169 = v232 - v150;
  v170 = sub_766690();
  v171 = *(*(v170 - 8) + 56);
  v171(v167, v168, 1, v170);
  v172 = *&UIEdgeInsetsZero.top;
  v205 = *&UIEdgeInsetsZero.bottom;
  v206 = v172;
  v173 = v245;
  sub_1ED18(v245, v239, &qword_959940, &qword_7A2A00);
  sub_1ED18(v173, v240, &qword_959940, &qword_7A2A00);
  if (v228)
  {
    sub_765260();
    v174 = v241;
    sub_7666A0();

    v175 = 0;
  }

  else
  {

    v175 = 1;
    v174 = v241;
  }

  v176 = v234;

  sub_10A2C(v245, &qword_959940, &qword_7A2A00);
  sub_10A2C(v244, &qword_959940, &qword_7A2A00);
  sub_10A2C(v235, &qword_94AFE8, &unk_7AF540);
  sub_10A2C(v176, &qword_94AFE8, &unk_7AF540);
  v171(v174, v175, 1, v170);
  v177 = *(v236 + 48);
  v178 = v214;
  v179 = *(v214 + 40);
  v180 = v215;
  v171(&v215[v179], 1, 1, v170);
  v245 = v178[15];
  v171(&v180[v245], 1, 1, v170);
  *v180 = v207;
  *(v180 + 1) = v153;
  *(v180 + 2) = v155;
  *(v180 + 3) = v157;
  *(v180 + 4) = v212;
  *(v180 + 5) = v159;
  *(v180 + 6) = v161;
  *(v180 + 7) = v163;
  *(v180 + 8) = v165;
  v181 = v178[7];
  v182 = sub_766CA0();
  v183 = *(v182 - 8);
  v184 = *(v183 + 32);
  v184(&v180[v181], v246, v182);
  v185 = v238;
  v184(&v180[v178[8]], v238 + v177, v182);
  *&v180[v178[9]] = 0x4008000000000000;
  sub_B33C8(v237, &v180[v179], &unk_948720, &unk_784970);
  *&v180[v178[11]] = v232;
  v186 = &v180[v178[12]];
  v187 = v205;
  *v186 = v206;
  *(v186 + 1) = v187;
  v188 = v239;
  v184(&v180[v178[13]], v239, v182);
  v189 = v240;
  v184(&v180[v178[14]], v240 + v177, v182);
  sub_B33C8(v241, &v180[v245], &unk_948720, &unk_784970);
  *&v180[v178[16]] = ObjectType;
  v190 = &v180[v178[17]];
  *v190 = v169;
  *(v190 + 2) = 0;
  *(v190 + 3) = 0;
  *(v190 + 1) = 0x4024000000000000;
  v191 = *(v183 + 8);
  v191(v189, v182);
  v191(v188 + v177, v182);
  v191(v185, v182);
  v191(v246 + v177, v182);
  v192 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_metrics;
  v193 = v229;
  swift_beginAccess();
  sub_51BE80(v180, &v193[v192]);
  swift_endAccess();
  sub_75A110();
  sub_768900();
  sub_768ED0();
  sub_5192F0();

  if (sub_759770())
  {

    v194 = sub_759830();
    v195 = v223;
    if (v194 || sub_759850())
    {

      v196 = 0;
    }

    else
    {
      v196 = 1;
    }
  }

  else
  {
    v196 = 0;
    v195 = v223;
  }

  v193[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_shouldHighlightEntireView] = v196;
  [*&v193[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_containerView] setUserInteractionEnabled:v196 ^ 1u];
  v197 = v220;
  sub_75DAA0();
  swift_getKeyPath();
  v198 = v222;
  sub_768750();

  (*(v221 + 8))(v197, v198);
  v250 = 0u;
  v249 = 0u;
  v248 = &type metadata for AnyHashable;
  v247 = swift_allocObject();
  sub_59C2C(&v251, v247 + 16);
  sub_768C30();
  sub_10A2C(&v249, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(&v247, &unk_93FBD0, &qword_77DFA0);
  v199 = sub_759770();
  if (v199)
  {
  }

  *(&v250 + 1) = &type metadata for Bool;
  LOBYTE(v249) = v199 != 0;
  v200 = v224;
  sub_768C40();
  v201 = *(v226 + 8);
  v202 = v227;
  v201(v195, v227);
  sub_10A2C(&v249, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();
  v201(v200, v202);
  v250 = 0u;
  v249 = 0u;
  v248 = &type metadata for AnyHashable;
  v247 = swift_allocObject();
  sub_59C2C(&v251, v247 + 16);
  v203 = v225;
  sub_768C30();
  sub_10A2C(&v249, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(&v247, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();
  v201(v203, v202);
  v250 = 0u;
  v249 = 0u;
  v248 = &type metadata for AnyHashable;
  v247 = swift_allocObject();
  sub_59C2C(&v251, v247 + 16);
  sub_768C30();
  sub_10A2C(&v249, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(&v247, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();
  v201(v203, v202);
  v250 = 0u;
  v249 = 0u;
  v248 = &type metadata for AnyHashable;
  v247 = swift_allocObject();
  sub_59C2C(&v251, v247 + 16);
  sub_768C30();
  sub_10A2C(&v249, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(&v247, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();
  v201(v203, v202);
  v250 = 0u;
  v249 = 0u;
  v248 = &type metadata for AnyHashable;
  v247 = swift_allocObject();
  sub_59C2C(&v251, v247 + 16);
  sub_768C30();
  sub_10A2C(&v249, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(&v247, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();
  v201(v203, v202);
  v250 = 0u;
  v249 = 0u;
  v248 = &type metadata for AnyHashable;
  v247 = swift_allocObject();
  sub_59C2C(&v251, v247 + 16);
  sub_768C30();
  sub_10A2C(&v249, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(&v247, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();
  v201(v203, v202);
  [v193 setNeedsLayout];
  return sub_1EB60(&v251);
}

uint64_t sub_5191B8(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t))
{
  v5 = sub_BD88(&unk_94F1F0, &qword_782290);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    sub_75DAA0();
    a3(v8, ObjectType, v10);
    swift_unknownObjectRelease();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

void sub_5192F0()
{
  v1 = sub_765240();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowArtwork))
  {

    sub_765260();
    sub_765250();
    sub_765210();
    (*(v2 + 8))(v4, v1);
    sub_765330();
    sub_759210();
    sub_14FA38();
    sub_75A050();
  }

  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleArtwork))
  {

    sub_765260();
    sub_765250();
    sub_765210();
    (*(v2 + 8))(v4, v1);
    sub_765330();
    sub_759210();
    sub_14FA38();
    sub_75A050();
  }
}

void sub_51952C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (v2[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_shouldHighlightEntireView] == 1)
  {
    v6 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_currentTouch;
    v7 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_currentTouch];
    if (!v7 || [v7 phase] == &dword_0 + 3 || (v8 = *&v2[v6]) != 0 && objc_msgSend(v8, "phase") == &dword_4)
    {
      v9 = sub_74E4B8(a1);
      if (v9)
      {
        v10 = *&v2[v6];
        *&v2[v6] = v9;
        v11 = v9;

        [v2 alpha];
        if (v12 == 0.5)
        {
        }

        else
        {
          v14 = objc_opt_self();
          v15 = swift_allocObject();
          *(v15 + 16) = v2;
          *(v15 + 24) = 0x3FE0000000000000;
          aBlock[4] = sub_51C12C;
          aBlock[5] = v15;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_23F0CC;
          aBlock[3] = &unk_895790;
          v16 = _Block_copy(aBlock);
          v17 = v2;

          [v14 animateWithDuration:4 delay:v16 options:0 animations:0.2 completion:0.0];

          _Block_release(v16);
        }

        sub_BE70(0, &qword_963060, UITouch_ptr);
        sub_5A800();
        v13.super.isa = sub_769630().super.isa;
        objc_msgSendSuper2(&v19, "touchesBegan:withEvent:", v13.super.isa, a2, v18.receiver, v18.super_class, v2, ObjectType);
      }

      else
      {
        sub_BE70(0, &qword_963060, UITouch_ptr);
        sub_5A800();
        v13.super.isa = sub_769630().super.isa;
        v21.receiver = v2;
        v21.super_class = ObjectType;
        objc_msgSendSuper2(&v21, "touchesBegan:withEvent:", v13.super.isa, a2, v18.receiver, v18.super_class, v19.receiver, v19.super_class);
      }
    }

    else
    {
      sub_BE70(0, &qword_963060, UITouch_ptr);
      sub_5A800();
      v13.super.isa = sub_769630().super.isa;
      objc_msgSendSuper2(&v18, "touchesBegan:withEvent:", v13.super.isa, a2, v2, ObjectType, v19.receiver, v19.super_class);
    }
  }

  else
  {
    sub_BE70(0, &qword_963060, UITouch_ptr);
    sub_5A800();
    v13.super.isa = sub_769630().super.isa;
    v22.receiver = v2;
    v22.super_class = ObjectType;
    objc_msgSendSuper2(&v22, "touchesBegan:withEvent:", v13.super.isa, a2, v18.receiver, v18.super_class, v19.receiver, v19.super_class);
  }
}

void sub_519824(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (v2[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_shouldHighlightEntireView] != 1)
  {
    sub_BE70(0, &qword_963060, UITouch_ptr);
    sub_5A800();
    v14.super.isa = sub_769630().super.isa;
    v22.receiver = v2;
    v22.super_class = ObjectType;
    objc_msgSendSuper2(&v22, "touchesMoved:withEvent:", v14.super.isa, a2, v19.receiver, v19.super_class);
    goto LABEL_14;
  }

  v6 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_currentTouch];
  if (!v6)
  {
LABEL_11:
    sub_BE70(0, &qword_963060, UITouch_ptr);
    sub_5A800();
    v14.super.isa = sub_769630().super.isa;
    v21.receiver = v2;
    v21.super_class = ObjectType;
    objc_msgSendSuper2(&v21, "touchesMoved:withEvent:", v14.super.isa, a2, v19.receiver, v19.super_class);
    goto LABEL_14;
  }

  v7 = v6;
  if ((sub_666B98(v7, a1) & 1) == 0)
  {

    goto LABEL_11;
  }

  [v7 locationInView:v2];
  v9 = v8;
  v11 = v10;
  [v2 bounds];
  v23.x = v9;
  v23.y = v11;
  if (CGRectContainsPoint(v24, v23))
  {
    v12 = 0.5;
  }

  else
  {
    v12 = 1.0;
  }

  [v2 alpha];
  if (v13 == v12)
  {
  }

  else
  {
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = v2;
    *(v16 + 24) = v12;
    aBlock[4] = sub_51C12C;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    aBlock[3] = &unk_895740;
    v17 = _Block_copy(aBlock);
    v18 = v2;

    [v15 animateWithDuration:4 delay:v17 options:0 animations:0.2 completion:0.0];

    _Block_release(v17);
  }

  sub_BE70(0, &qword_963060, UITouch_ptr);
  sub_5A800();
  v14.super.isa = sub_769630().super.isa;
  objc_msgSendSuper2(&v19, "touchesMoved:withEvent:", v14.super.isa, a2, v2, ObjectType);
LABEL_14:
}

double sub_519AF0(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_BE70(0, &qword_963060, UITouch_ptr);
  sub_5A800();
  v8 = sub_769640();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);

  return result;
}

void sub_519BA0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (v2[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_shouldHighlightEntireView] != 1)
  {
    sub_BE70(0, &qword_963060, UITouch_ptr);
    sub_5A800();
    v11.super.isa = sub_769630().super.isa;
    v19.receiver = v2;
    v19.super_class = ObjectType;
    objc_msgSendSuper2(&v19, "touchesCancelled:withEvent:", v11.super.isa, a2, v16.receiver, v16.super_class);
    goto LABEL_11;
  }

  v6 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_currentTouch;
  v7 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_currentTouch];
  if (!v7)
  {
LABEL_8:
    sub_BE70(0, &qword_963060, UITouch_ptr);
    sub_5A800();
    v11.super.isa = sub_769630().super.isa;
    v18.receiver = v2;
    v18.super_class = ObjectType;
    objc_msgSendSuper2(&v18, "touchesCancelled:withEvent:", v11.super.isa, a2, v16.receiver, v16.super_class);
    goto LABEL_11;
  }

  v8 = v7;
  if ((sub_666B98(v8, a1) & 1) == 0)
  {

    goto LABEL_8;
  }

  v9 = *&v2[v6];
  *&v2[v6] = 0;

  [v2 alpha];
  if (v10 == 1.0)
  {
  }

  else
  {
    v12 = objc_opt_self();
    v13 = swift_allocObject();
    *(v13 + 16) = v2;
    *(v13 + 24) = 0x3FF0000000000000;
    aBlock[4] = sub_51C12C;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    aBlock[3] = &unk_8956F0;
    v14 = _Block_copy(aBlock);
    v15 = v2;

    [v12 animateWithDuration:4 delay:v14 options:0 animations:0.2 completion:0.0];

    _Block_release(v14);
  }

  sub_BE70(0, &qword_963060, UITouch_ptr);
  sub_5A800();
  v11.super.isa = sub_769630().super.isa;
  objc_msgSendSuper2(&v16, "touchesCancelled:withEvent:", v11.super.isa, a2, v2, ObjectType);
LABEL_11:
}

void sub_519E2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (v2[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_shouldHighlightEntireView] != 1)
  {
    sub_BE70(0, &qword_963060, UITouch_ptr);
    sub_5A800();
    v23.super.isa = sub_769630().super.isa;
    v27.receiver = v3;
    v27.super_class = ObjectType;
    objc_msgSendSuper2(&v27, "touchesEnded:withEvent:", v23.super.isa, a2, v24.receiver, v24.super_class);
    goto LABEL_13;
  }

  v7 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_currentTouch;
  v8 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_currentTouch];
  if (!v8)
  {
LABEL_12:
    sub_BE70(0, &qword_963060, UITouch_ptr);
    sub_5A800();
    v23.super.isa = sub_769630().super.isa;
    v26.receiver = v3;
    v26.super_class = ObjectType;
    objc_msgSendSuper2(&v26, "touchesEnded:withEvent:", v23.super.isa, a2, v24.receiver, v24.super_class);
    goto LABEL_13;
  }

  v9 = v8;
  if ((sub_666B98(v9, a1) & 1) == 0)
  {

    goto LABEL_12;
  }

  v10 = *&v3[v7];
  *&v3[v7] = 0;

  [v3 alpha];
  if (v11 != 1.0)
  {
    v12 = objc_opt_self();
    v13 = swift_allocObject();
    *(v13 + 16) = v3;
    *(v13 + 24) = 0x3FF0000000000000;
    aBlock[4] = sub_B2390;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    aBlock[3] = &unk_8956A0;
    v14 = _Block_copy(aBlock);
    v15 = v3;

    [v12 animateWithDuration:4 delay:v14 options:0 animations:0.2 completion:0.0];
    _Block_release(v14);
  }

  [v9 locationInView:v3];
  v17 = v16;
  v19 = v18;
  [v3 bounds];
  v28.x = v17;
  v28.y = v19;
  if (CGRectContainsPoint(v29, v28))
  {
    v20 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleAction];
    if (v20)
    {
      v21 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleAction + 8];

      v20(v22);
      sub_F704(v20, v21);
    }
  }

  sub_BE70(0, &qword_963060, UITouch_ptr);
  sub_5A800();
  v23.super.isa = sub_769630().super.isa;
  objc_msgSendSuper2(&v24, "touchesEnded:withEvent:", v23.super.isa, a2, v3, ObjectType);
LABEL_13:
}

uint64_t type metadata accessor for ShelfHeaderView(uint64_t a1)
{
  result = qword_959920;
  if (!qword_959920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_51A324(uint64_t a1)
{
  type metadata accessor for ShelfHeaderLayout.Metrics(319);
  if (v1 <= 0x3F)
  {
    sub_51A4AC(319, &qword_959930, &type metadata accessor for ShelfHeader.ArtworkType);
    if (v2 <= 0x3F)
    {
      sub_51A4AC(319, &qword_959938, &type metadata accessor for ShelfHeader.Configuration);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_51A4AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_76A480();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_51A500()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_51A538(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_51A550()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_51A5A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_51A608(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_51A668(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_948010, qword_789590);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_51A6D8()
{
  v65 = sub_BD88(&qword_959948, &qword_7A2A40);
  __chkstk_darwin(v65);
  v68 = (&v61 - v0);
  v1 = sub_BD88(&qword_963790, qword_77EBC0);
  __chkstk_darwin(v1 - 8);
  v62 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v61 - v4;
  __chkstk_darwin(v6);
  v8 = &v61 - v7;
  v9 = sub_BD88(&qword_94B9A0, &unk_78EAF0);
  __chkstk_darwin(v9 - 8);
  v61 = (&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v64 = &v61 - v12;
  v13 = sub_75B660();
  v66 = *(v13 - 8);
  v67 = v13;
  __chkstk_darwin(v13);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_BD88(&unk_94F1F0, &qword_782290);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v61 - v18;
  sub_75DAA0();
  swift_getKeyPath();
  v63 = v15;
  sub_768750();

  v20 = *(v17 + 8);
  v20(v19, v16);
  v21 = v62;
  sub_75DA50();
  sub_10A2C(v21, &qword_963790, qword_77EBC0);
  sub_109C4(v5, v8, &qword_963790, qword_77EBC0);
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    sub_10A2C(v8, &qword_963790, qword_77EBC0);
    v22 = 1;
    v23 = v64;
  }

  else
  {
    swift_getKeyPath();
    v23 = v64;
    sub_768750();

    v20(v8, v16);
    v22 = 0;
  }

  v25 = v66;
  v24 = v67;
  (*(v66 + 56))(v23, v22, 1, v67);
  v26 = *(v65 + 48);
  v27 = v68;
  (*(v25 + 32))(v68, v63, v24);
  sub_109C4(v23, v27 + v26, &qword_94B9A0, &unk_78EAF0);
  v28 = *(v25 + 88);
  v29 = v28(v27, v24);
  v30 = enum case for ShelfBackground.color(_:);
  if (v29 == enum case for ShelfBackground.color(_:))
  {
    (*(v25 + 96))(v27, v24);

    v31 = *(sub_BD88(&unk_959640, qword_78DD60) + 48);
    v32 = sub_75EDA0();
    (*(*(v32 - 8) + 8))(v27 + v31, v32);
LABEL_8:
    sub_10A2C(v27 + v26, &qword_94B9A0, &unk_78EAF0);
LABEL_9:
    sub_7697D0();
    return;
  }

  v33 = enum case for ShelfBackground.gradient(_:);
  if (v29 == enum case for ShelfBackground.gradient(_:))
  {
    (*(v25 + 96))(v27, v24);

    v34 = sub_BD88(&qword_94B3C0, &qword_7ADD80);
    v35 = v34[12];
    v36 = v34[16];
    v37 = v34[20];
    v38 = sub_75EDA0();
    (*(*(v38 - 8) + 8))(v27 + v37, v38);
    v39 = sub_763400();
    v40 = *(*(v39 - 8) + 8);
    v40(v27 + v36, v39);
    v40(v27 + v35, v39);
    goto LABEL_8;
  }

  v41 = enum case for ShelfBackground.materialGradient(_:);
  if (v29 == enum case for ShelfBackground.materialGradient(_:))
  {
    (*(v25 + 96))(v27, v24);
    v42 = *(sub_BD88(&qword_959950, &unk_7A2A80) + 48);
    v43 = sub_75EDA0();
    (*(*(v43 - 8) + 8))(v27 + v42, v43);
    v44 = sub_763E10();
    (*(*(v44 - 8) + 8))(v27, v44);
    goto LABEL_8;
  }

  if ((*(v25 + 48))(v27 + v26, 1, v24) != 1)
  {
    v45 = v61;
    sub_1ED18(v27 + v26, v61, &qword_94B9A0, &unk_78EAF0);
    v46 = v28(v45, v24);
    if (v46 == v30)
    {
      (*(v25 + 96))(v45, v24);

      v47 = *(sub_BD88(&unk_959640, qword_78DD60) + 48);
      v48 = sub_75EDA0();
      (*(*(v48 - 8) + 8))(v45 + v47, v48);
    }

    else if (v46 == v33)
    {
      v49 = v61;
      (*(v25 + 96))(v61, v24);

      v50 = sub_BD88(&qword_94B3C0, &qword_7ADD80);
      v51 = v50[12];
      v52 = v50[16];
      v53 = v50[20];
      v54 = sub_75EDA0();
      (*(*(v54 - 8) + 8))(v49 + v53, v54);
      v55 = sub_763400();
      v56 = *(*(v55 - 8) + 8);
      v56(v49 + v52, v55);
      v56(v49 + v51, v55);
    }

    else
    {
      v57 = v61;
      if (v46 != v41)
      {
        (*(v25 + 8))(v61, v24);
        goto LABEL_13;
      }

      (*(v25 + 96))(v61, v24);
      v58 = *(sub_BD88(&qword_959950, &unk_7A2A80) + 48);
      v59 = sub_75EDA0();
      (*(*(v59 - 8) + 8))(v57 + v58, v59);
      v60 = sub_763E10();
      (*(*(v60 - 8) + 8))(v57, v60);
    }

    sub_10A2C(v27 + v26, &qword_94B9A0, &unk_78EAF0);
    (*(v25 + 8))(v27, v24);
    goto LABEL_9;
  }

LABEL_13:
  sub_10A2C(v27, &qword_959948, &qword_7A2A40);
}

id sub_51B054(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v8 = objc_allocWithZone(NSAttributedString);

  v9 = sub_769210();

  v10 = [v8 initWithString:v9];

  if (a4)
  {
    v11 = objc_opt_self();
    v12 = a4;
    v13 = [v11 textAttachmentWithImage:v12];
    v14 = [objc_opt_self() attributedStringWithAttachment:v13];

    if (!a2)
    {
      goto LABEL_10;
    }

    v15 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v15 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      v16 = [objc_allocWithZone(NSMutableAttributedString) init];
      if ([a3 layoutDirection])
      {
        if (qword_93D2F0 != -1)
        {
          swift_once();
        }

        v17 = &qword_9597C8;
      }

      else
      {
        if (qword_93D2E8 != -1)
        {
          swift_once();
        }

        v17 = &qword_9597C0;
      }

      [v16 appendAttributedString:*v17];
      if (qword_93D2F8 != -1)
      {
        swift_once();
      }

      [v16 appendAttributedString:qword_9597D0];
      [v16 appendAttributedString:v10];
      if (qword_93D300 != -1)
      {
        swift_once();
      }

      v18 = qword_9597D8;
      [v16 appendAttributedString:qword_9597D8];
      if (qword_93D308 != -1)
      {
        swift_once();
      }

      [v16 appendAttributedString:qword_9597E0];
      [v16 appendAttributedString:v14];
      [v16 appendAttributedString:v18];
      v19 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v16];

      v10 = v14;
      v14 = v19;
    }

    else
    {
LABEL_10:
      v16 = v12;
    }

    return v14;
  }

  return v10;
}

id sub_51B374(uint64_t a1, unint64_t a2, void *a3, char a4)
{
  v8 = sub_759950();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  if (a4)
  {
    (*(v9 + 104))(v12, enum case for SystemImage.chevronForward(_:), v8, v10);
    if (qword_93D2E0 != -1)
    {
      swift_once();
    }

    v14 = [qword_9597B8 configurationWithTraitCollection:a3];
    v15 = sub_759930();

    (*(v9 + 8))(v12, v8);
    v16 = [objc_opt_self() secondaryLabelColor];
    v13 = [v15 imageWithTintColor:v16];
  }

  v17 = sub_51B054(a1, a2, a3, v13);

  return v17;
}

uint64_t sub_51B550(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = sub_764C60();
  v3 = v2;

  if (v3)
  {
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {

      return v1;
    }
  }

  v5 = sub_764C70();

  if (!v5)
  {

    return 0;
  }

  v1 = sub_7651B0();
  v7 = v6;

  if (!v7)
  {
    return 0;
  }

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    return 0;
  }

  return v1;
}

void sub_51B658()
{
  v1 = v0;
  v2 = sub_760AD0();
  v45 = *(v2 - 8);
  v46 = v2;
  __chkstk_darwin(v2);
  v47 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v4 - 8);
  v44 = &v43 - v5;
  v6 = sub_7666D0();
  v48 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7674E0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_767510();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_containerView;
  *(v1 + v17) = [objc_allocWithZone(UIView) init];
  v49 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_separatorView;
  (*(v10 + 104))(v12, enum case for Separator.Position.top(_:), v9);
  v50[3] = sub_766970();
  v50[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v50);
  sub_766960();
  sub_7674F0();
  v18 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator;
  swift_beginAccess();
  v20 = *(v14 + 40);
  v21 = v18;
  v20(&v18[v19], v16, v13);
  swift_endAccess();

  *(v49 + v1) = v21;
  v22 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowButton;
  sub_75C560();
  if (qword_93D320 != -1)
  {
    swift_once();
  }

  v23 = sub_BE38(v6, qword_9597F8);
  v49 = *(v48 + 16);
  v49(v8, v23, v6);
  *(v1 + v22) = sub_75C550();
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowArtwork) = 0;
  v24 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowArtworkType;
  v25 = sub_759760();
  v26 = *(*(v25 - 8) + 56);
  v26(v1 + v24, 1, 1, v25);
  v27 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowArtworkView;
  sub_759210();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v27) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v29 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleButton;
  if (qword_93D328 != -1)
  {
    swift_once();
  }

  v30 = sub_BE38(v6, qword_959810);
  v49(v8, v30, v6);
  *(v1 + v29) = sub_75C550();
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleArtwork) = 0;
  v26(v1 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleArtworkType, 1, 1, v25);
  v31 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleArtworkView;
  *(v1 + v31) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v32 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_accessoryButton;
  if (qword_93D338 != -1)
  {
    swift_once();
  }

  v33 = sub_BE38(v6, qword_959840);
  v49(v8, v33, v6);
  *(v1 + v32) = sub_75C550();
  v34 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_titleAction);
  *v34 = 0;
  v34[1] = 0;
  v35 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_accessoryAction);
  *v35 = 0;
  v35[1] = 0;
  v36 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_eyebrowAction);
  *v36 = 0;
  v36[1] = 0;
  v37 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_subtitleLabel;
  if (qword_93D330 != -1)
  {
    swift_once();
  }

  v38 = sub_BE38(v6, qword_959828);
  v39 = v44;
  v49(v44, v38, v6);
  (*(v48 + 56))(v39, 0, 1, v6);
  (*(v45 + 104))(v47, enum case for DirectionalTextAlignment.none(_:), v46);
  v40 = objc_allocWithZone(sub_75BB20());
  *(v1 + v37) = sub_75BB10();
  v41 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_configuration;
  v42 = sub_759810();
  (*(*(v42 - 8) + 56))(v1 + v41, 1, 1, v42);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_shouldHighlightEntireView) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfHeaderView_currentTouch) = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_51BDBC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_51BE60(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_51BE78(result, a2);
  }

  return v3;
}

uint64_t sub_51BE80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_51BF08()
{
  sub_BEB8((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_51BF40()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_51BF94()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_51C078(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_51C13C(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v9 = OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_itemLayoutContext;
  v10 = sub_75C840();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_placement];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_inlineUnifiedMessageViewController] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView] = 0;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for UnifiedMessageCollectionViewCell(0);
  v12 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = v12;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v17 = [v16 contentView];
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  sub_BD88(&qword_9477F0, qword_780200);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_77B6D0;
  *(v18 + 32) = sub_7676E0();
  *(v18 + 40) = &protocol witness table for UITraitLayoutDirection;
  sub_769F40();

  swift_unknownObjectRelease();

  return v16;
}

void sub_51C4D8()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for UnifiedMessageCollectionViewCell(0);
  objc_msgSendSuper2(&v4, "prepareForReuse");
  v1 = OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView;
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView] removeFromSuperview];
  v2 = *&v0[v1];
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;
}

double sub_51C5A4()
{
  v1 = [v0 contentView];
  [v1 bounds];
  v3 = v2;

  return v3;
}

void sub_51C61C(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v7 = a1;

  if (a1)
  {
    v6 = [v1 contentView];
    [v6 addSubview:v7];

    [v7 updateTraitsIfNeeded];
    [v7 setNeedsLayout];
    [v1 setNeedsLayout];
    [v1 layoutIfNeeded];
  }
}

void (*sub_51C71C(void *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView;
  a1[1] = v1;
  a1[2] = v2;
  v3 = *(v1 + v2);
  *a1 = v3;
  v4 = v3;
  return sub_51C774;
}

void sub_51C774(uint64_t a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v8 = v2;
    sub_51C61C(v2);
LABEL_8:

    return;
  }

  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *&v3[v4];
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *&v3[v4];
  }

  else
  {
    v6 = 0;
  }

  *&v3[v4] = v2;
  v8 = v2;

  if (v2)
  {
    v7 = [v3 contentView];
    [v7 addSubview:v8];

    [v8 updateTraitsIfNeeded];
    [v8 setNeedsLayout];
    [v3 setNeedsLayout];
    [v3 layoutIfNeeded];
    goto LABEL_8;
  }
}

id sub_51C88C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnifiedMessageCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_51C95C(uint64_t a1)
{
  sub_1EA64(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_51CA00()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_placement);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_51CA58(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_placement);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

void *sub_51CB18()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_inlineUnifiedMessageViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_51CB64(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_inlineUnifiedMessageViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_51CC1C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView);
  v2 = v1;
  return v1;
}

void (*sub_51CC50(void *a1))(void *a1)
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
  v2[4] = sub_51C71C(v2);
  return sub_215A4;
}

double sub_51CCC0()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 == &dword_0 + 2 && (v3 = objc_opt_self(), v4 = [v3 mainScreen], objc_msgSend(v4, "bounds"), v6 = v5, v8 = v7, v10 = v9, v12 = v11, v4, v31.origin.x = v6, v31.origin.y = v8, v31.size.width = v10, v31.size.height = v12, Width = CGRectGetWidth(v31), v14 = objc_msgSend(v3, "mainScreen"), objc_msgSend(v14, "bounds"), v16 = v15, v18 = v17, v20 = v19, v22 = v21, v14, v32.origin.x = v16, v32.origin.y = v18, v32.size.width = v20, v32.size.height = v22, CGRectGetHeight(v32) < Width))
  {
    v23 = [v0 contentView];
    [v23 bounds];

    v24 = [v3 mainScreen];
    [v24 bounds];

    v25 = [v0 contentView];
    [v25 bounds];

    sub_769CD0();
    return v26;
  }

  else
  {
    v28 = [v0 contentView];
    [v28 bounds];
    v27 = v29;
  }

  return v27;
}

void sub_51CF04()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
}

id sub_51D058(char *a1)
{
  [*&a1[OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView] updateTraitsIfNeeded];

  return [a1 setNeedsLayout];
}

char *sub_51D0AC(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_contentView] = 0;
  sub_23BD1C(a1, &v1[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_layoutMetrics]);
  v3 = [objc_allocWithZone(UIScrollView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_contentScrollView] = v3;
  sub_134D8(a1 + 80, v18);
  sub_134D8(a1 + 40, &v19);
  sub_134D8(a1 + 120, &v20);
  v4 = type metadata accessor for OnboardingTrayView();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingTrayView_itemViewLayoutItems] = _swiftEmptyArrayStorage;
  sub_51DAB0(v18, &v5[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingTrayView_layoutMetrics]);
  v17.receiver = v5;
  v17.super_class = v4;
  v6 = objc_msgSendSuper2(&v17, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v6 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  sub_51DB0C(v18);
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_trayView] = v6;
  v10 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:0];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_trayBackgroundView] = v10;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for OnboardingPageView();
  v11 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v11 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_contentScrollView;
  [*&v11[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_contentScrollView] setContentInsetAdjustmentBehavior:2];
  [*&v11[v12] setShowsVerticalScrollIndicator:0];
  [*&v11[v12] setShowsHorizontalScrollIndicator:0];
  [v11 addSubview:*&v11[v12]];
  v13 = OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_trayBackgroundView;
  [v11 addSubview:*&v11[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_trayBackgroundView]];
  v14 = [*&v11[v13] contentView];
  [v14 addSubview:*&v11[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_trayView]];

  sub_23BD78(a1);
  return v11;
}

id sub_51D394()
{
  v37.receiver = v0;
  v37.super_class = type metadata accessor for OnboardingPageView();
  objc_msgSendSuper2(&v37, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_trayView];
  v2 = [v1 isHidden];
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  if ((v2 & 1) == 0)
  {
    sub_75D650();
    [v1 measurementsWithFitting:v0 in:{v8, v9}];
    v6 = v10;
    v7 = v11;
    sub_75D650();
    v4 = floor(CGRectGetMidX(v38) + v6 * -0.5);
    sub_75D650();
    MaxY = CGRectGetMaxY(v39);
    v5 = MaxY - v7;
    [*&v0[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_trayBackgroundView] setFrame:{v4, MaxY - v7, v6, v7}];
    [v1 setFrame:{0.0, 0.0, v6, v7}];
  }

  [v0 bounds];
  v13 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_contentScrollView];
  [v13 setFrame:?];
  v14 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_contentView];
  v15 = 0.0;
  v16 = 0.0;
  if (v14)
  {
    rect = v5;
    v17 = v14;
    sub_75D650();
    MinX = CGRectGetMinX(v40);
    sub_75D650();
    MinY = CGRectGetMinY(v41);
    sub_75D650();
    Width = CGRectGetWidth(v42);
    v34 = v4;
    v35 = v6;
    if (v2)
    {
      sub_75D650();
      Height = CGRectGetHeight(v43);
    }

    else
    {
      v44.origin.x = v4;
      v44.origin.y = rect;
      v44.size.width = v6;
      v44.size.height = v7;
      Height = CGRectGetMinY(v44);
    }

    v22 = Height;
    [v17 measurementsWithFitting:v0 in:{Width, Height}];
    v15 = v23;
    v16 = v24;
    v45.origin.x = MinX;
    v45.origin.y = MinY;
    v45.size.width = Width;
    v45.size.height = v22;
    v25 = floor(CGRectGetMidX(v45) + v15 * -0.5);
    v46.origin.x = MinX;
    v46.origin.y = MinY;
    v46.size.width = Width;
    v46.size.height = v22;
    v26 = CGRectGetMinY(v46);
    sub_75D650();
    sub_769D20();
    [v17 setFrame:?];
    if ((v2 & 1) != 0 || (v47.origin.x = v25, v47.origin.y = v26, v47.size.width = v15, v47.size.height = v16, v27 = CGRectGetMaxY(v47), v48.origin.x = v34, v48.size.width = v35, v48.origin.y = rect, v48.size.height = v7, CGRectGetMinY(v48) > v27))
    {
      [*&v0[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_trayBackgroundView] setEffect:0];
      v3 = 0.0;
    }

    else
    {
      v49.origin.x = v34;
      v49.origin.y = rect;
      v49.size.width = v35;
      v49.size.height = v7;
      v33 = CGRectGetHeight(v49);
      v50.origin.x = v25;
      v50.origin.y = v26;
      v50.size.width = v15;
      v50.size.height = v16;
      v28 = CGRectGetMaxY(v50);
      v51.origin.x = v34;
      v51.origin.y = rect;
      v51.size.width = v35;
      v51.size.height = v7;
      v29 = v28 - CGRectGetMinY(v51);
      if (v29 >= v33)
      {
        v3 = v33;
      }

      else
      {
        v3 = v29;
      }

      v30 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_trayBackgroundView];
      v31 = [objc_opt_self() effectWithStyle:4];
      [v30 setEffect:v31];
    }
  }

  [v13 setContentSize:{v15, v16, *&v33}];
  [v13 setContentInset:{0.0, 0.0, v3, 0.0}];
  return [v13 setContentOffset:{0.0, 0.0}];
}

id sub_51D7BC(void *a1)
{
  v2 = v1;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for OnboardingPageView();
  objc_msgSendSuper2(&v15, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_769A00();

  if (!a1 || ((sub_769A00() ^ v5) & 1) != 0)
  {
    return [v2 setNeedsLayout];
  }

  v7 = [v2 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  v9 = [a1 preferredContentSizeCategory];
  v10 = sub_769240();
  v12 = v11;
  if (v10 == sub_769240() && v12 == v13)
  {
  }

  else
  {
    v14 = sub_76A950();

    if ((v14 & 1) == 0)
    {
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

id sub_51D9CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingPageView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_51DB60(__n128 a1)
{
  v2 = v1;
  v3 = sub_75B660();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_75EDA0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v30 - v13;
  (*(v4 + 16))(v6, v2, v3, v12);
  v15 = (*(v4 + 88))(v6, v3);
  if (v15 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v4 + 96))(v6, v3);

    v16 = &qword_94B9A8;
    v17 = &qword_78EB00;
    goto LABEL_5;
  }

  if (v15 == enum case for ShelfBackground.color(_:))
  {
    (*(v4 + 96))(v6, v3);

    v16 = &unk_959640;
    v17 = qword_78DD60;
LABEL_5:
    v18 = sub_BD88(v16, v17);
    v19 = *(v8 + 32);
    v19(v14, v6 + *(v18 + 48), v7);
    v19(v10, v14, v7);
    goto LABEL_7;
  }

  if (v15 == enum case for ShelfBackground.gradient(_:))
  {
    (*(v4 + 96))(v6, v3);

    v22 = sub_BD88(&qword_94B3C0, &qword_7ADD80);
    v23 = v22[12];
    v30 = v22[16];
    v31 = v23;
    v24 = *(v8 + 32);
    v24(v14, v6 + v22[20], v7);
    v25 = sub_763400();
    v26 = *(*(v25 - 8) + 8);
    v26(v6 + v30, v25);
    v26(v6 + v31, v25);
    v24(v10, v14, v7);
  }

  else if (v15 == enum case for ShelfBackground.materialGradient(_:))
  {
    (*(v4 + 96))(v6, v3);
    v27 = sub_BD88(&qword_959950, &unk_7A2A80);
    v28 = *(v8 + 32);
    v28(v14, v6 + *(v27 + 48), v7);
    v29 = sub_763E10();
    (*(*(v29 - 8) + 8))(v6, v29);
    v28(v10, v14, v7);
  }

  else
  {
    (*(v8 + 104))(v14, enum case for ShelfBackgroundStyle.automatic(_:), v7);
    (*(v4 + 8))(v6, v3);
    (*(v8 + 32))(v10, v14, v7);
  }

LABEL_7:
  v20 = (*(v8 + 88))(v10, v7);
  if (v20 == enum case for ShelfBackgroundStyle.dark(_:))
  {
    return 2;
  }

  if (v20 == enum case for ShelfBackgroundStyle.light(_:))
  {
    return 1;
  }

  if (v20 != enum case for ShelfBackgroundStyle.automatic(_:))
  {
    (*(v8 + 8))(v10, v7);
  }

  return 0;
}

uint64_t sub_51E018(int a1, int a2)
{
  v66 = a2;
  v3 = sub_BD88(&qword_940A60, &unk_7A18E0);
  __chkstk_darwin(v3 - 8);
  v4 = sub_765610();
  v5 = *(v4 - 8);
  v72 = v4;
  v73 = v5;
  __chkstk_darwin(v4);
  v7 = (v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_BD88(&qword_940A68, &qword_79AB60);
  __chkstk_darwin(v8 - 8);
  v65 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v64 = v57 - v11;
  __chkstk_darwin(v12);
  v63 = v57 - v13;
  __chkstk_darwin(v14);
  v62 = v57 - v15;
  __chkstk_darwin(v16);
  v61 = v57 - v17;
  __chkstk_darwin(v18);
  v59 = v57 - v19;
  __chkstk_darwin(v20);
  v57[5] = v57 - v21;
  __chkstk_darwin(v22);
  v57[4] = v57 - v23;
  __chkstk_darwin(v24);
  *&v58 = v57 - v25;
  __chkstk_darwin(v26);
  v57[3] = v57 - v27;
  __chkstk_darwin(v28);
  v57[2] = v57 - v29;
  __chkstk_darwin(v30);
  v57[1] = v57 - v31;
  __chkstk_darwin(v32);
  __chkstk_darwin(v33);
  __chkstk_darwin(v34);
  __chkstk_darwin(v35);
  __chkstk_darwin(v36);
  sub_BD88(&qword_940A70, &unk_7A18F0);
  v37 = *(sub_765540() - 8);
  v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v69 = *(v37 + 72);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_780120;
  v60 = v39;
  v71 = v39 + v38;
  v70 = a1;
  if (a1)
  {
    v40 = 0x3FF0000000000000;
  }

  else
  {
    v40 = 0x4000000000000000;
  }

  v74 = v40;
  sub_62634();
  sub_7655D0();
  v74 = 0x4020000000000000;
  sub_62634();
  sub_7655D0();
  v74 = 0x4020000000000000;
  sub_7655D0();
  __asm { FMOV            V0.2D, #16.0 }

  *v7 = _Q0;
  v46 = *(v73 + 104);
  v68 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v73 += 104;
  v67 = v46;
  v46(v7);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v74) = 0;
  sub_7655D0();
  v74 = 0;
  sub_7655D0();
  sub_765500();
  if (v70)
  {
    v48 = 0x3FF0000000000000;
  }

  else
  {
    v48 = 0x4000000000000000;
  }

  v74 = v48;
  sub_7655D0();
  v74 = 0x4024000000000000;
  sub_7655D0();
  v74 = 0x4024000000000000;
  sub_7655D0();
  __asm { FMOV            V0.2D, #20.0 }

  *v7 = _Q0;
  v67(v7, v68, v72);
  LOBYTE(v74) = 0;
  sub_7655D0();
  v74 = 0;
  sub_7655D0();
  sub_765500();
  if (v70)
  {
    v50 = 0x4000000000000000;
  }

  else
  {
    v50 = 0x4008000000000000;
  }

  v74 = v50;
  sub_7655D0();
  if (v66)
  {
    v51 = 12.0;
  }

  else
  {
    v51 = 20.0;
  }

  v74 = *&v51;
  sub_7655D0();
  v74 = *&v51;
  sub_7655D0();
  *v7 = vdupq_n_s64(0x4041000000000000uLL);
  v67(v7, v68, v72);
  LOBYTE(v74) = 0;
  sub_7655D0();
  v74 = 0;
  sub_7655D0();
  v58 = left;
  sub_765500();
  if (v70)
  {
    v52 = 0x4000000000000000;
  }

  else
  {
    v52 = 0x4010000000000000;
  }

  v74 = v52;
  sub_7655D0();
  v74 = *&v51;
  sub_7655D0();
  v74 = *&v51;
  sub_7655D0();
  *v7 = vdupq_n_s64(0x4041000000000000uLL);
  v67(v7, v68, v72);
  sub_7697A0();
  LOBYTE(v74) = 0;
  sub_7655D0();
  v74 = 0;
  sub_7655D0();
  sub_765500();
  if (v70)
  {
    v53 = 0x4008000000000000;
  }

  else
  {
    v53 = 0x4014000000000000;
  }

  v74 = v53;
  sub_7655D0();
  if (v66)
  {
    v54 = 12.0;
  }

  else
  {
    v54 = 24.0;
  }

  v74 = *&v54;
  sub_7655D0();
  v74 = *&v51;
  sub_7655D0();
  *v7 = vdupq_n_s64(0x404A000000000000uLL);
  v67(v7, v68, v72);
  LOBYTE(v74) = 0;
  sub_7655D0();
  v74 = 0;
  sub_7655D0();
  sub_765500();
  if (v70)
  {
    v55 = 0x4008000000000000;
  }

  else
  {
    v55 = 0x4018000000000000;
  }

  v74 = v55;
  sub_7655D0();
  v74 = *&v54;
  sub_7655D0();
  v74 = *&v51;
  sub_7655D0();
  *v7 = vdupq_n_s64(0x404A000000000000uLL);
  v67(v7, v68, v72);
  LOBYTE(v74) = 0;
  sub_7655D0();
  v74 = 0;
  sub_7655D0();
  sub_765500();
  return v60;
}

uint64_t sub_51EC74(uint64_t a1, uint64_t a2)
{
  v2 = sub_757640();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7575F0();
  sub_757610();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_51ED58()
{
  v0 = sub_BD88(&unk_9467B0, &qword_7A2E60);
  __chkstk_darwin(v0 - 8);
  sub_76A6E0();
  sub_769090();

  sub_BD88(&qword_9467C0, &qword_790FA0);
  sub_16194(&qword_9467C8, &qword_9467C0, &qword_790FA0, &protocol conformance descriptor for TransientStateStore<A>);
  return sub_768AE0();
}

void sub_51EEDC(uint64_t a2@<X8>)
{
  v4 = sub_757640();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 32) == 1)
  {
    sub_7575B0();
    sub_75AFD0();
    (*(v5 + 8))(v7, v4);
    sub_BD88(&unk_944DA0, &unk_77EB70);
    sub_BD88(&qword_956C60, &qword_79FE28);
    if (swift_dynamicCast())
    {
      sub_10914(v9, v11);
      v8 = v11[1];
      *a2 = v11[0];
      *(a2 + 16) = v8;
      *(a2 + 32) = v12;
    }

    else
    {
      v10 = 0;
      memset(v9, 0, sizeof(v9));
      sub_51FB68(v9);
      sub_76A840();
      __break(1u);
    }
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

uint64_t sub_51F0E8(uint64_t a1, uint64_t a2)
{
  sub_51EEDC(&v4);
  if (v5)
  {
    sub_10914(&v4, v6);
    sub_B170(v6, v6[3]);
    v2 = sub_761280();
    sub_BEB8(v6);
    return v2;
  }

  else
  {
    sub_51FB68(&v4);
    return sub_75AF20();
  }
}

uint64_t sub_51F1A8()
{
  v3 = sub_757640();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_51EEDC(&v8);
  if (v9)
  {
    sub_10914(&v8, v10);
    sub_B170(v10, v10[3]);
    sub_761290();
    return sub_BEB8(v10);
  }

  else
  {
    sub_51FB68(&v8);
    sub_7575B0();
    sub_75AFD0();
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_51F36C(uint64_t a1, void (*a2)(char *, uint64_t *, void *, uint64_t, uint64_t))
{
  v4 = sub_BD88(&unk_9467B0, &qword_7A2E60);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_757640();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  sub_7575B0();
  (*(v8 + 16))(v10, v13, v7);
  sub_769080();
  v18 = *(v2 + 40);

  v14 = sub_BD88(&qword_9467C0, &qword_790FA0);
  v15 = sub_16194(&qword_9467C8, &qword_9467C0, &qword_790FA0, &protocol conformance descriptor for TransientStateStore<A>);
  a2(v6, &v18, &type metadata for Never, v14, v15);
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_51F584(uint64_t a1, void (*a2)(char *, void **, void *, uint64_t, uint64_t))
{
  v4 = v2;
  v6 = sub_BD88(&unk_9467B0, &qword_7A2E60);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_757640();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v24 - v14;
  sub_51EC74(a1, v16);
  v17 = (*(v10 + 16))(v12, v15, v9);
  sub_51FB10(v17, v18);
  v19 = sub_769420();
  v20 = sub_141558(v19);

  v25 = v20;
  sub_BD88(&qword_959AA8, qword_7A2E68);
  sub_16194(&qword_959AB0, &qword_959AA8, qword_7A2E68, &protocol conformance descriptor for [A]);
  sub_769070();
  v25 = *(v4 + 40);

  v21 = sub_BD88(&qword_9467C0, &qword_790FA0);
  v22 = sub_16194(&qword_9467C8, &qword_9467C0, &qword_790FA0, &protocol conformance descriptor for TransientStateStore<A>);
  a2(v8, &v25, &type metadata for Never, v21, v22);
  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_51F80C(uint64_t a1, uint64_t a2)
{
  v3 = sub_757640();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7575B0();
  if (*(v2 + 32) == 1)
  {
    sub_75AFC0();
  }

  else
  {
    sub_75AF60();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_51F984()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_51F9CC()
{
  sub_51F984();

  return swift_deallocClassInstance();
}

unint64_t sub_51FB10(uint64_t a1, uint64_t a2)
{
  result = qword_959AA0;
  if (!qword_959AA0)
  {
    sub_757640();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_959AA0);
  }

  return result;
}

uint64_t sub_51FB68(uint64_t a1)
{
  v2 = sub_BD88(&qword_956C48, &unk_79FE08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_51FBD0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  *(v15 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  *(v15 + 64) = a5;
  *(v15 + 72) = a6;
  *(v15 + 80) = a7;
  swift_unknownObjectWeakAssign();
  return v15;
}

unint64_t sub_51FC88()
{
  result = qword_959AB8;
  if (!qword_959AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_959AB8);
  }

  return result;
}

uint64_t sub_51FCE0@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v5 = sub_BD88(&unk_959AC0, &qword_7A2F88);
  __chkstk_darwin(v5 - 8);
  v49 = &v40[-v6];
  v7 = sub_BD88(&qword_9569B8, &qword_79FA60);
  __chkstk_darwin(v7 - 8);
  v9 = &v40[-v8];
  v10 = sub_7656C0();
  v46 = *(v10 - 8);
  v47 = v10;
  __chkstk_darwin(v10);
  v12 = &v40[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_BD88(&unk_955F20, &unk_77EB30);
  __chkstk_darwin(v13 - 8);
  v15 = &v40[-v14];
  v16 = sub_75ACC0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v40[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v22 = &v40[-v21];
  sub_BD88(&qword_93F908, &qword_79FE00);
  v45 = a1;
  sub_75C760();
  if (!v51)
  {
    sub_10A2C(v50, &qword_93F910, &qword_77EB80);
    (*(v17 + 56))(v15, 1, 1, v16);
    goto LABEL_9;
  }

  v44 = v9;
  sub_B170(v50, v51);
  sub_760470();
  sub_BEB8(v50);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
LABEL_9:
    sub_10A2C(v15, &unk_955F20, &unk_77EB30);
    v31 = sub_7677A0();
    return (*(*(v31 - 8) + 56))(a3, 1, 1, v31);
  }

  v43 = a3;
  (*(v17 + 32))(v22, v15, v16);
  v23 = *(v17 + 16);
  v23(v19, v22, v16);
  v24 = *(v17 + 88);
  v25 = v24(v19, v16);
  if (v25 == enum case for ItemBackground.ad(_:) || (v26 = v25, v25 == enum case for ItemBackground.insetAd(_:)) || v25 == enum case for ItemBackground.clearAdWithSeparator(_:))
  {
    v41 = enum case for ItemBackground.insetAd(_:);
    v42 = v24;
    swift_getKeyPath();
    sub_75C7B0();

    v32 = v49;
    v23(v49, v22, v16);
    v33 = v48;
    if (v48 == 2)
    {
      v34 = v44;
      sub_6CC744(v12, v22, v44);
      (*(v46 + 8))(v12, v47);
      v35 = *(v17 + 8);
      v35(v22, v16);
      v35(v32, v16);
    }

    else
    {
      v36 = v42(v32, v16);
      v34 = v44;
      if (v36 == v41)
      {
        sub_6CCAD8(v33);
        (*(v46 + 8))(v12, v47);
        (*(v17 + 8))(v22, v16);
        v37 = sub_7677A0();
        (*(*(v37 - 8) + 56))(v34, 0, 1, v37);
      }

      else
      {
        (*(v46 + 8))(v12, v47);
        v38 = *(v17 + 8);
        v38(v22, v16);
        v39 = sub_7677A0();
        (*(*(v39 - 8) + 56))(v34, 1, 1, v39);
        v38(v32, v16);
      }
    }

    return sub_520354(v34, v43);
  }

  else
  {
    v27 = enum case for ItemBackground.condensedSearch(_:);
    v28 = *(v17 + 8);
    v28(v22, v16);
    v29 = sub_7677A0();
    result = (*(*(v29 - 8) + 56))(v43, 1, 1, v29);
    if (v26 != v27)
    {
      return (v28)(v19, v16);
    }
  }

  return result;
}

uint64_t sub_520354(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_9569B8, &qword_79FA60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5203C4(char *a1)
{
  v3 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v3 - 8);
  v5 = v56 - v4;
  v6 = sub_7666D0();
  v7 = *(v6 - 1);
  __chkstk_darwin(v6);
  v67 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v56 - v10;
  if (qword_93D378 != -1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    v12 = sub_BD88(&qword_94E610, &qword_792B38);
    sub_BE38(v12, qword_959B18);
    v72 = v1;
    v13 = v1;
    sub_7592B0();

    v14 = *&v13[OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_headingTextLabel];
    v15 = v7[2];
    v66 = (v7 + 2);
    v64 = v15;
    v15(v5, v11, v6);
    v16 = v7[7];
    v65 = (v7 + 7);
    v63 = v16;
    v16(v5, 0, 1, v6);
    v68 = v5;
    sub_75BA40();
    if (qword_93D360 != -1)
    {
      swift_once();
    }

    v17 = sub_BD88(&unk_93F8F0, &qword_78CC50);
    v18 = sub_BE38(v17, qword_959AD0);
    v71 = v13;
    v19 = v13;
    v62 = v18;
    sub_7592B0();

    [v14 setTextAlignment:v72];
    sub_75A9C0();
    v57 = v11;
    v58 = v7;
    if (v20)
    {
      v21 = sub_769210();
    }

    else
    {
      v21 = 0;
    }

    [v14 setText:v21];

    v22 = *&v19[OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_headingArtworkView];
    v23 = sub_75A9A0();
    sub_36289C(v23);

    if (qword_93D370 != -1)
    {
      swift_once();
    }

    sub_BE38(v12, qword_959B00);
    v72 = v19;
    v24 = v19;
    v25 = v67;
    sub_7592B0();

    v26 = *&v24[OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_textLabel];
    v27 = v68;
    v64(v68, v25, v6);
    v63(v27, 0, 1, v6);
    sub_75BA40();
    v71 = v24;
    v28 = v24;
    sub_7592B0();

    [v26 setTextAlignment:v72];
    sub_75A9B0();
    if (v29)
    {
      v30 = sub_769210();
    }

    else
    {
      v30 = 0;
    }

    [v26 setText:v30];

    sub_75AA10();
    sub_75A9F0();
    v31 = sub_769490();

    if ((v31 & 1) != 0 && (v32 = [v28 traitCollection], v33 = sub_769A00(), v32, (v33 & 1) == 0))
    {
      v35 = 4;
      v34 = 1;
    }

    else
    {
      v34 = 0;
      v35 = 0;
    }

    [v26 setNumberOfLines:v34];
    [v26 setLineBreakMode:v35];
    v36 = OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_leadingPairLabels;
    swift_beginAccess();
    v60 = v36;
    v61 = a1;
    v1 = *(v28 + v36);
    v59 = v6;
    v56[1] = v17;
    if (v1 >> 62)
    {
      v37 = sub_76A860();
    }

    else
    {
      v37 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    }

    v7 = &unk_90D000;
    if (v37)
    {
      v11 = 0;
      v5 = (v1 & 0xC000000000000001);
      v6 = (v1 & 0xFFFFFFFFFFFFFF8);
      do
      {
        if (v5)
        {
          v38 = sub_76A770();
        }

        else
        {
          if (v11 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_50;
          }

          v38 = *(v1 + 8 * v11 + 32);
        }

        v39 = v38;
        a1 = (v11 + 1);
        if (__OFADD__(v11, 1))
        {
          goto LABEL_49;
        }

        [v38 removeFromSuperview];

        ++v11;
      }

      while (a1 != v37);
    }

    v5 = OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_trailingPairLabels;
    swift_beginAccess();
    v1 = *&v5[v28];
    if (v1 >> 62)
    {
      v40 = sub_76A860();
    }

    else
    {
      v40 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    }

    if (v40)
    {
      v11 = 0;
      v6 = (v1 & 0xC000000000000001);
      a1 = (v1 & 0xFFFFFFFFFFFFFF8);
      do
      {
        if (v6)
        {
          v41 = sub_76A770();
        }

        else
        {
          if (v11 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_52;
          }

          v41 = *(v1 + 8 * v11 + 32);
        }

        v42 = v41;
        v43 = (v11 + 1);
        if (__OFADD__(v11, 1))
        {
          goto LABEL_51;
        }

        [v41 removeFromSuperview];

        ++v11;
      }

      while (v43 != v40);
    }

    v6 = _swiftEmptyArrayStorage;
    *(v28 + v60) = _swiftEmptyArrayStorage;

    *&v5[v28] = _swiftEmptyArrayStorage;

    v44 = sub_75AA10();
    v1 = v44;
    if (!(v44 >> 62))
    {
      v45 = *(&dword_10 + (v44 & 0xFFFFFFFFFFFFFF8));
      a1 = v68;
      if (!v45)
      {
        break;
      }

      goto LABEL_40;
    }

    v45 = sub_76A860();
    a1 = v68;
    if (!v45)
    {
      break;
    }

LABEL_40:
    v11 = 0;
    v7 = (v1 & 0xC000000000000001);
    v5 = (v1 & 0xFFFFFFFFFFFFFF8);
    while (v7)
    {
      v46 = sub_76A770();
      v6 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        goto LABEL_48;
      }

LABEL_44:
      v70 = v46;
      sub_52377C(&v70, v28, v47);

      ++v11;
      if (v6 == v45)
      {
        goto LABEL_58;
      }
    }

    if (v11 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_53;
    }

    v46 = *(v1 + 8 * v11 + 32);

    v6 = (v11 + 1);
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_44;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_once();
  }

LABEL_58:

  v48 = *(v28 + OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_listTextLabel);
  v49 = v67;
  v50 = v59;
  v64(a1, v67, v59);
  v63(a1, 0, 1, v50);
  sub_75BA40();
  v69[0] = v28;
  v51 = v28;
  sub_7592B0();

  [v48 setTextAlignment:v70];
  v53 = sub_522C48(v52, v61, v51);
  [v48 setAttributedText:v53];

  [v51 setNeedsLayout];
  v54 = v58[1];
  v54(v49, v50);
  return (v54)(v57, v50);
}

uint64_t sub_520C4C()
{
  v0 = sub_760590();
  sub_161DC(v0, qword_99E270);
  sub_BE38(v0, qword_99E270);
  return sub_760580();
}

uint64_t sub_520D20(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_BD88(&unk_93F8F0, &qword_78CC50);
  sub_161DC(v5, a2);
  sub_BE38(v5, a2);
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  type metadata accessor for NSTextAlignment(0);
  return sub_7592C0();
}

uint64_t sub_520DC4()
{
  v0 = sub_7666D0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_BD88(&qword_94E610, &qword_792B38);
  sub_161DC(v7, qword_959B00);
  sub_BE38(v7, qword_959B00);
  if (qword_93D6D8 != -1)
  {
    swift_once();
  }

  v8 = sub_BE38(v0, qword_99EC80);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_93D6D0 != -1)
  {
    swift_once();
  }

  v10 = sub_BE38(v0, qword_99EC68);
  v9(v3, v10, v0);
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  return sub_7592D0();
}

uint64_t sub_520FA4()
{
  v0 = sub_7666D0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_BD88(&qword_94E610, &qword_792B38);
  sub_161DC(v7, qword_959B18);
  sub_BE38(v7, qword_959B18);
  if (qword_93D6E8 != -1)
  {
    swift_once();
  }

  v8 = sub_BE38(v0, qword_99ECB0);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_93D6E0 != -1)
  {
    swift_once();
  }

  v10 = sub_BE38(v0, qword_99EC98);
  v9(v3, v10, v0);
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  return sub_7592D0();
}

char *sub_521184(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_leadingPairLabels] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_trailingPairLabels] = _swiftEmptyArrayStorage;
  type metadata accessor for AnnotationImagesView(0);
  *&v4[OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_headingArtworkView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_75BB20();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_headingTextLabel] = v11;
  v12 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_textLabel] = v12;
  v13 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_listTextLabel] = v13;
  v32.receiver = v4;
  v32.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v18 addSubview:*&v18[OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_headingArtworkView]];
  v19 = OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_headingTextLabel;
  [*&v18[OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_headingTextLabel] setNumberOfLines:0];
  v20 = qword_93D360;
  v21 = *&v18[v19];
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = sub_BD88(&unk_93F8F0, &qword_78CC50);
  sub_BE38(v22, qword_959AD0);
  v23 = v18;
  sub_7592B0();

  [v21 setTextAlignment:{v31, v18}];
  [v23 addSubview:*&v18[v19]];
  v24 = OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_textLabel;
  [*&v23[OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_textLabel] setNumberOfLines:0];
  v25 = *&v23[v24];
  v26 = v23;
  v27 = v25;
  sub_7592B0();

  [v27 setTextAlignment:{v31, v23}];
  [v26 addSubview:*&v23[v24]];
  v28 = OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_listTextLabel;
  [*&v26[OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_listTextLabel] setNumberOfLines:0];
  v29 = *&v26[v28];
  sub_7592B0();

  [v29 setTextAlignment:{v31, v26}];
  [v26 addSubview:*&v26[v28]];

  return v26;
}

uint64_t sub_521544()
{
  v1 = sub_760590();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_93D358 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v1, qword_99E270);
  (*(v2 + 16))(v4, v5, v1);
  v6 = *(v0 + OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_headingTextLabel);
  v7 = sub_75BB20();
  v29 = v7;
  v30 = &protocol witness table for UILabel;
  v28 = v6;
  v8 = *(v0 + OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_headingArtworkView);
  v26 = type metadata accessor for AnnotationImagesView(0);
  v27 = &protocol witness table for UIView;
  v24 = &protocol witness table for UILabel;
  v25 = v8;
  v9 = *(v0 + OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_textLabel);
  v10 = *(v0 + OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_listTextLabel);
  v23 = v7;
  v21 = &protocol witness table for UILabel;
  v22 = v9;
  v20 = v7;
  v19 = v10;
  swift_beginAccess();
  v11 = v6;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  sub_141658(v15);

  swift_beginAccess();

  sub_141658(v16);

  return sub_7605A0();
}

double *sub_521A6C(void *a1, uint64_t a2, void (*a3)(uint64_t *, void, uint64_t), double a4, double a5)
{
  v121 = a3;
  v118 = a2;
  v104 = sub_760590();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v117 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_7605B0();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_762D10();
  v120 = *(v10 - 8);
  __chkstk_darwin(v10);
  v107 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v106 = &v100 - v13;
  __chkstk_darwin(v14);
  v105 = &v100 - v15;
  __chkstk_darwin(v16);
  v18 = &v100 - v17;
  v110 = sub_7666D0();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v119 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v100 - v21;
  if (qword_93D370 != -1)
  {
    swift_once();
  }

  v23 = sub_BD88(&qword_94E610, &qword_792B38);
  sub_BE38(v23, qword_959B00);
  v132 = a1;
  sub_7592B0();
  sub_BE70(0, &qword_93F900, UIFont_ptr);
  ObjectType = swift_getObjectType();
  v25 = [a1 traitCollection];
  v108 = v22;
  v127 = sub_769E10();

  if (qword_93D378 != -1)
  {
    swift_once();
  }

  sub_BE38(v23, qword_959B18);
  v132 = a1;
  sub_7592B0();
  v26 = [a1 traitCollection];
  v101 = sub_769E10();

  v27 = v121;
  v28 = sub_75A9A0();
  sub_363CC4(v28, a1, a4, a5);

  v102 = sub_7670D0();
  swift_allocObject();
  v29 = sub_7670A0();
  sub_75A9A0();
  sub_765390();
  sub_769490();

  sub_767080();
  v114 = ObjectType;
  v126 = sub_522BB8(v30, v27, a1);
  v31 = sub_75AA10();
  if (v31 >> 62)
  {
    v73 = v31;
    v32 = sub_76A860();
    v31 = v73;
  }

  else
  {
    v32 = *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8));
  }

  v128 = v10;
  v116 = a1;
  v115 = v29;
  if (v32)
  {
    v33 = v31;
    v131[0] = _swiftEmptyArrayStorage;
    result = sub_143EE8(0, v32 & ~(v32 >> 63), 0);
    if (v32 < 0)
    {
      __break(1u);
      goto LABEL_38;
    }

    v35 = 0;
    v36 = v131[0];
    v124 = (v33 & 0xC000000000000001);
    LODWORD(v123) = enum case for Feature.measurement_with_labelplaceholder(_:);
    v37 = (v120 + 8);
    v125 = v33;
    v38 = v32;
    do
    {
      if (v124)
      {
        sub_76A770();
      }

      else
      {
      }

      sub_75A9D0();
      v39 = sub_7653B0();
      v133 = v39;
      v134 = sub_52392C(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v40 = sub_B1B4(&v132);
      (*(*(v39 - 8) + 104))(v40, v123, v39);
      v41 = v127;
      sub_765C30();
      sub_BEB8(&v132);
      sub_762D00();
      sub_762CE0();

      (*v37)(v18, v128);
      v131[0] = v36;
      v43 = *(v36 + 16);
      v42 = *(v36 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_143EE8((v42 > 1), v43 + 1, 1);
      }

      ++v35;
      v44 = v133;
      v45 = v134;
      v46 = sub_10974(&v132, v133);
      v47 = __chkstk_darwin(v46);
      v49 = &v100 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v50 + 16))(v49, v47);
      sub_523364(v43, v49, v131, v44, v45);
      sub_BEB8(&v132);
      v36 = v131[0];
    }

    while (v38 != v35);

    v51 = v120;
    v27 = v121;
  }

  else
  {

    v51 = v120;
  }

  v52 = sub_75AA10();
  if (v52 >> 62)
  {
    v74 = v52;
    v53 = sub_76A860();
    v52 = v74;
    if (v53)
    {
LABEL_20:
      v54 = v52;
      v131[0] = _swiftEmptyArrayStorage;
      result = sub_143EE8(0, v53 & ~(v53 >> 63), 0);
      if ((v53 & 0x8000000000000000) == 0)
      {
        v124 = v18;
        v55 = 0;
        v56 = v131[0];
        v123 = v54 & 0xC000000000000001;
        v122 = enum case for Feature.measurement_with_labelplaceholder(_:);
        v57 = (v51 + 8);
        v125 = v54;
        do
        {
          if (v123)
          {
            sub_76A770();
          }

          else
          {
          }

          sub_75A9E0();
          v58 = sub_7653B0();
          v133 = v58;
          v134 = sub_52392C(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
          v59 = sub_B1B4(&v132);
          (*(*(v58 - 8) + 104))(v59, v122, v58);
          v60 = v127;
          sub_765C30();
          sub_BEB8(&v132);
          v61 = v124;
          sub_762D00();
          sub_762CE0();

          (*v57)(v61, v128);
          v131[0] = v56;
          v63 = *(v56 + 16);
          v62 = *(v56 + 24);
          if (v63 >= v62 >> 1)
          {
            sub_143EE8((v62 > 1), v63 + 1, 1);
          }

          ++v55;
          v64 = v133;
          v65 = v134;
          v66 = sub_10974(&v132, v133);
          v67 = __chkstk_darwin(v66);
          v69 = &v100 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v70 + 16))(v69, v67);
          sub_523364(v63, v69, v131, v64, v65);
          sub_BEB8(&v132);
          v56 = v131[0];
        }

        while (v53 != v55);

        v72 = v117;
        v27 = v121;
        goto LABEL_32;
      }

LABEL_38:
      __break(1u);
      return result;
    }
  }

  else
  {
    v53 = *(&dword_10 + (v52 & 0xFFFFFFFFFFFFFF8));
    if (v53)
    {
      goto LABEL_20;
    }
  }

  v72 = v117;
LABEL_32:
  v123 = sub_522C48(v71, v27, v116);
  if (qword_93D358 != -1)
  {
    swift_once();
  }

  v75 = v104;
  v76 = sub_BE38(v104, qword_99E270);
  (*(v103 + 16))(v72, v76, v75);
  sub_75A9C0();
  v77 = sub_7653B0();
  v133 = v77;
  v125 = sub_52392C(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v134 = v125;
  v78 = sub_B1B4(&v132);
  v79 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v80 = *(*(v77 - 8) + 104);
  v80(v78, enum case for Feature.measurement_with_labelplaceholder(_:), v77);
  v81 = v101;
  sub_765C30();
  sub_BEB8(&v132);
  v82 = v105;
  v124 = v81;
  sub_762D00();
  sub_762CE0();
  v83 = *(v120 + 8);
  v84 = v82;
  v85 = v128;
  v83(v84, v128);
  v131[3] = v102;
  v131[4] = &protocol witness table for LayoutViewPlaceholder;
  v131[0] = v115;

  sub_75A9B0();
  v120 = v86;
  v130[3] = v77;
  v130[4] = v125;
  v87 = sub_B1B4(v130);
  v122 = v79;
  v88 = v79;
  v89 = v83;
  v121 = v80;
  v80(v87, v88, v77);
  v90 = v127;
  sub_765C30();
  sub_BEB8(v130);
  v91 = v106;
  sub_762D00();
  sub_762CE0();
  v89(v91, v85);
  v92 = v123;
  if (!v123)
  {
    [objc_allocWithZone(NSAttributedString) init];
  }

  v129[3] = v77;
  v129[4] = v125;
  v93 = sub_B1B4(v129);
  v121(v93, v122, v77);
  v94 = v92;
  v95 = v90;
  sub_765C30();
  sub_BEB8(v129);
  v96 = v107;
  sub_762CD0();
  sub_762CE0();
  v89(v96, v128);
  v97 = v111;
  sub_7605A0();
  sub_760560();

  (*(v112 + 8))(v97, v113);
  v98 = *(v109 + 8);
  v99 = v110;
  v98(v119, v110);
  return (v98)(v108, v99);
}

uint64_t sub_522BB8(__n128 a1, uint64_t a2, void *a3)
{
  sub_75AA10();
  sub_75A9F0();
  v4 = sub_769490();

  if (v4)
  {
    v5 = [a3 traitCollection];
    v6 = sub_769A00();

    v7 = v6 ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

id sub_522C48(__n128 a1, uint64_t a2, void *a3)
{
  v4 = sub_7573C0();
  v46 = *(v4 - 8);
  __chkstk_darwin(v4);
  v45 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_76A920();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7664A0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_766CA0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_75AA00();
  if (!v17)
  {
    return 0;
  }

  v41 = v16;
  v40 = v4;
  v42 = v17;
  v39[1] = a3;
  v18 = [a3 traitCollection];
  v19 = sub_7699F0();

  if (v19)
  {
    v51[0] = v41;
    v51[1] = v42;
    v49 = 161644770;
    v50 = 0xA400000000000000;
    v47 = 0x208F80E2A280E2;
    v48 = 0xA700000000000000;
    sub_12EC40();
    sub_76A4F0();

    v20 = objc_allocWithZone(NSAttributedString);
    v21 = sub_769210();

    v22 = [v20 initWithString:v21];
  }

  else
  {
    if (qword_93D6D8 != -1)
    {
      swift_once();
    }

    v23 = sub_7666D0();
    v24 = sub_BE38(v23, qword_99EC80);
    (*(*(v23 - 8) + 16))(v11, v24, v23);
    (*(v9 + 104))(v11, enum case for FontSource.useCase(_:), v8);
    v51[3] = v8;
    v51[4] = &protocol witness table for FontSource;
    v25 = sub_B1B4(v51);
    (*(v9 + 16))(v25, v11, v8);
    sub_766CB0();
    (*(v9 + 8))(v11, v8);
    sub_766470();
    sub_766700();
    v27 = v26;
    (*(v43 + 8))(v7, v44);
    (*(v13 + 8))(v15, v12);
    v28 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    [v28 setFirstLineHeadIndent:0.0];
    [v28 setHeadIndent:v27];
    [v28 setDefaultTabInterval:v27];
    sub_BE70(0, &unk_959B90, NSTextTab_ptr);
    isa = sub_769450().super.isa;
    [v28 setTabStops:isa];

    [v28 setParagraphSpacing:0.0];
    v30 = v45;
    sub_757390();
    sub_757340();
    v32 = v31;
    (*(v46 + 8))(v30, v40);
    [v28 setLineHeightMultiple:v32];
    sub_BD88(&qword_940F40, &qword_785F00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_77B6D0;
    *(inited + 32) = NSParagraphStyleAttributeName;
    *(inited + 64) = sub_BE70(0, &unk_959BA0, NSMutableParagraphStyle_ptr);
    *(inited + 40) = v28;
    v34 = NSParagraphStyleAttributeName;
    v35 = v28;
    sub_10D028(inited);
    swift_setDeallocating();
    sub_252F70(inited + 32);
    v36 = objc_allocWithZone(NSAttributedString);
    v37 = sub_769210();

    type metadata accessor for Key(0);
    sub_52392C(&qword_93EC10, type metadata accessor for Key, &unk_77D804);
    v21 = sub_7690E0().super.isa;

    v22 = [v36 initWithString:v37 attributes:v21];
  }

  return v22;
}

uint64_t sub_523364(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_B1B4(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_34698(&v12, v10 + 40 * a1 + 32);
}

id sub_5233FC(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v6 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_7666D0();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a4 traitCollection];
  v15 = sub_769A00();

  if (qword_93D370 != -1)
  {
    swift_once();
  }

  v16 = sub_BD88(&qword_94E610, &qword_792B38);
  sub_BE38(v16, qword_959B00);
  v26 = a4;
  sub_7592B0();
  if ((v15 | a3))
  {
    if (qword_93D360 != -1)
    {
      swift_once();
    }

    v17 = sub_BD88(&unk_93F8F0, &qword_78CC50);
    v18 = qword_959AD0;
  }

  else
  {
    if (qword_93D368 != -1)
    {
      swift_once();
    }

    v17 = sub_BD88(&unk_93F8F0, &qword_78CC50);
    v18 = qword_959AE8;
  }

  sub_BE38(v17, v18);
  v25 = a4;
  sub_7592B0();
  v19 = v26;
  sub_75BB20();
  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  (*(v10 + 16))(v8, v13, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  sub_75BA40();
  v21 = v20;
  [v21 setNumberOfLines:(v15 & 1) == 0];
  if (v15)
  {
    v22 = 0;
  }

  else
  {
    v22 = 4;
  }

  [v21 setLineBreakMode:v22];

  [v21 setTextAlignment:v19];
  v23 = sub_769210();
  [v21 setText:v23];

  (*(v10 + 8))(v13, v9);
  return v21;
}

void sub_52377C(uint64_t a1, char *a2, __n128 a3)
{
  v4 = sub_75A9D0();
  v6 = sub_5233FC(v4, v5, 1, a2);

  v7 = sub_75A9E0();
  v9 = sub_5233FC(v7, v8, 1, a2);

  v10 = OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_leadingPairLabels;
  swift_beginAccess();
  v11 = v6;
  sub_769440();
  if (*(&dword_10 + (*&a2[v10] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&a2[v10] & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();
  swift_endAccess();
  v12 = OBJC_IVAR____TtCC18ASMessagesProvider28AnnotationCollectionViewCell8ItemView_trailingPairLabels;
  swift_beginAccess();
  v13 = v9;
  sub_769440();
  if (*(&dword_10 + (*&a2[v12] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&a2[v12] & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();
  swift_endAccess();
  [a2 addSubview:v11];
  [a2 addSubview:v13];
}

uint64_t sub_52392C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SearchAdTransparencyLabel(uint64_t a1)
{
  result = qword_959BD8;
  if (!qword_959BD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_523A28(void *a1, id a2)
{
  v3 = [a2 layer];
  v4 = [a1 CGContext];
  [v3 renderInContext:v4];
}

void sub_523AE0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

char *sub_523B2C(void *a1)
{
  v3 = sub_768C60();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_760AD0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v11 - 8);
  v13 = v23 - v12;
  v14 = qword_959BB0;
  *(v1 + v14) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v15 = v1 + qword_959BC8;
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 1;
  v16 = (v1 + qword_959BD0);
  *v16 = 0;
  v16[1] = 0;
  *(v1 + qword_959BB8) = a1;
  v17 = a1;
  sub_524880(v17);
  *(v1 + qword_959BC0) = v18;
  v19 = sub_7666D0();
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  (*(v8 + 104))(v10, enum case for DirectionalTextAlignment.none(_:), v7);
  v20 = sub_75BB10();
  [v20 setUserInteractionEnabled:1];
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  sub_768C10();
  sub_BDD0(v23);
  sub_BDD0(v24);
  sub_769E70();
  (*(v4 + 8))(v6, v3);
  v21 = qword_959BB0;
  [*&v20[qword_959BB0] addTarget:v20 action:"didTapLabelWithGestureRecognizer:"];
  [*&v20[v21] setDelegate:v20];
  [v20 addGestureRecognizer:*&v20[v21]];

  return v20;
}

double sub_523E88(char *a1)
{
  ObjectType = swift_getObjectType();
  v3 = &a1[qword_959BC8];
  if (a1[qword_959BC8 + 16])
  {
    v4 = a1;
  }

  else
  {
    v6 = *v3;
    v5 = v3[1];
    v7 = a1;
    sub_523FE8(v6, v5, &v12);
    if ((v13 & 1) == 0)
    {
      *&v9 = UIAccessibilityConvertFrameToScreenCoordinates(v12, v7);

      return v9;
    }
  }

  v11.receiver = a1;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, "accessibilityFrame");
  v9 = v8;

  return v9;
}

id sub_523F78(void *a1, double a2, double a3, double a4, double a5)
{
  v10.receiver = a1;
  v10.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v10, "setAccessibilityFrame:", a2, a3, a4, a5);
}

void sub_523FE8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = [v3 attributedText];
  if (v8)
  {
    v9 = [objc_allocWithZone(NSTextStorage) initWithAttributedString:v8];
    v10 = [objc_allocWithZone(NSLayoutManager) init];
    [v9 addLayoutManager:v10];
    [v4 bounds];
    v13 = [objc_allocWithZone(NSTextContainer) initWithSize:{v11, v12}];
    [v13 setLineFragmentPadding:0.0];
    [v10 addTextContainer:v13];
    v24 = 0;
    v25 = 0;
    [v10 characterRangeForGlyphRange:a1 actualGlyphRange:{a2, &v24}];
    [v10 boundingRectForGlyphRange:v24 inTextContainer:{v25, v13}];
    v21 = v14;
    v22 = v15;
    v20 = v16;
    v23 = v17;

    *&v19 = v20;
    *&v18 = v21;
    *(&v18 + 1) = v22;
    *(&v19 + 1) = v23;
  }

  else
  {
    v18 = 0uLL;
    v19 = 0uLL;
  }

  *a3 = v18;
  *(a3 + 16) = v19;
  *(a3 + 32) = v8 == 0;
}

void sub_5241B8()
{
  v1 = v0;
  sub_BD88(&qword_940F40, &qword_785F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77E280;
  *(inited + 32) = NSForegroundColorAttributeName;
  v3 = qword_93DDA0;
  v4 = NSForegroundColorAttributeName;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = qword_9A00A0;
  v6 = sub_BE70(0, &qword_93E540, UIColor_ptr);
  *(inited + 40) = v5;
  *(inited + 64) = v6;
  *(inited + 72) = NSFontAttributeName;
  v7 = v5;
  v8 = NSFontAttributeName;
  v9 = [v0 font];
  *(inited + 104) = sub_BD88(&qword_94B5B8, qword_78E0B8);
  *(inited + 80) = v9;
  sub_10D028(inited);
  swift_setDeallocating();
  sub_BD88(qword_940F50, &qword_785170);
  swift_arrayDestroy();
  sub_BE70(0, &qword_9562D0, NSAttributedString_ptr);
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_77D9F0;
  v11 = *&v0[qword_959BC0];
  *(v10 + 32) = v11;
  v12 = v11;
  v13 = [v0 traitCollection];
  v14 = sub_769A70();
  v15 = [v14 length];
  v16 = &v1[qword_959BC8];
  *v16 = 0;
  *(v16 + 1) = v15;
  v16[16] = 0;
  v17 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v14];
  if (*&v1[qword_959BD0 + 8])
  {
    v18 = objc_allocWithZone(NSAttributedString);

    v19 = sub_769210();

    v20 = [v18 initWithString:v19];

    [v17 appendAttributedString:v20];
  }

  [v1 setAttributedText:v17];
}

void sub_524480(uint64_t a1)
{
  v2 = v1;
  v4 = sub_7676A0();
  __chkstk_darwin(v4);
  sub_75BB20();
  v5 = sub_75BB30();
  v5(a1);
  v6 = *&v2[qword_959BB8];
  v7 = [v2 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  sub_769EE0();
  sub_767670();
  sub_769EF0();
  [v6 updateTraitsIfNeeded];
  sub_524880(v6);
  v9 = *&v2[qword_959BC0];
  *&v2[qword_959BC0] = v10;

  sub_5241B8();
}

BOOL sub_5245E0(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = &a1[qword_959BC8];
  if (a1[qword_959BC8 + 16])
  {
    return 0;
  }

  v8 = *v4;
  v7 = v4[1];
  v9 = a4;
  v10 = a1;
  sub_523FE8(v8, v7, &v22);
  if (v23)
  {
    v5 = 0;
  }

  else
  {
    sub_769D50();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [v9 locationInView:v10];
    v24.x = v19;
    v24.y = v20;
    v25.origin.x = v12;
    v25.origin.y = v14;
    v25.size.width = v16;
    v25.size.height = v18;
    v5 = CGRectContainsPoint(v25, v24);
  }

  return v5;
}

void sub_5246DC(char *a1)
{
  v1 = *&a1[qword_959BB8] + qword_95CDB8;
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);
    v5 = a1;
    v4 = sub_F714(v2, v3);
    v2(v4);
    sub_F704(v2, v3);
  }
}

double sub_5247A4()
{

  return result;
}

double sub_524808(uint64_t a1)
{

  return result;
}

void sub_524880(void *a1)
{
  [a1 sizeToFit];
  [a1 bounds];
  v6 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:{v2, v3, v4, v5}];
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_524A88;
  *(v8 + 24) = v7;
  v11[4] = sub_524AA0;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_523AE0;
  v11[3] = &unk_895C18;
  v9 = _Block_copy(v11);
  v10 = a1;

  [v6 imageWithActions:v9];

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }
}

uint64_t sub_524A50()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_524AC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void *sub_524AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_BD88(&unk_93F630, &unk_77E230);
    sub_768860();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v7, 1, v10) == 1)
    {

      return sub_10A2C(v7, &unk_93F980, &qword_77EDA0);
    }

    else
    {
      sub_32A6C0(a3, 1, a2, v7);

      return (*(v11 + 8))(v7, v10);
    }
  }

  return result;
}

void sub_524C60(uint64_t a1, char a2, Swift::Bool a3)
{
  v4 = v3;
  v17.value.super.isa = 0;
  v17.is_nil = 0;
  sub_7591D0(v17, a3);
  sub_759210();
  sub_5275A0(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  sub_75A0C0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = qword_940590;
    v7 = Strong;
    v8 = [*(Strong + qword_940590) layer];
    [v8 removeAllAnimations];

    [*&v7[v6] setImage:0];
    type metadata accessor for VideoView(0);
    sub_5275A0(&unk_93F530, type metadata accessor for VideoView, &unk_7AD180);
    sub_75A0C0();
  }

  v9 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupView);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
    v11 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView];
    v12 = v9;
    v13 = v11;
    v18.value.super.isa = 0;
    v18.is_nil = 0;
    sub_7591D0(v18, v14);

    v15 = *&v9[v10];
    sub_75A0C0();
  }
}

double sub_524E80(uint64_t *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = *a1;
  ObjectType = swift_getObjectType();

  return sub_525AA4(a2, a3, v13, a8, a6, v8, ObjectType);
}

double sub_524F90(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8, double a9, double a10, uint64_t a11, int *a12)
{
  v82 = a5;
  v83 = a6;
  v92 = a3;
  v77 = a1;
  v78 = a2;
  v86 = type metadata accessor for AppEventCardLayout.Metrics(0);
  __chkstk_darwin(v86);
  v80 = v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for AppEventCardLayout(0);
  __chkstk_darwin(v87);
  v81 = (v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_762D10();
  v74 = *(v18 - 8);
  __chkstk_darwin(v18);
  v79 = v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v76 = v72 - v21;
  __chkstk_darwin(v22);
  v72[0] = v72 - v23;
  v24 = sub_7670D0();
  swift_allocObject();
  v99 = sub_7670B0();
  swift_allocObject();
  v98 = sub_7670B0();
  swift_allocObject();
  v97 = sub_7670B0();
  swift_allocObject();
  v96 = sub_7670B0();
  swift_allocObject();
  v102 = sub_7670B0();
  swift_allocObject();
  v95 = sub_7670B0();
  swift_allocObject();
  v94 = sub_7670B0();
  swift_allocObject();
  v101 = sub_7670B0();
  v25 = [a8 traitCollection];
  sub_767500();

  swift_allocObject();
  v85 = sub_7670B0();
  v26 = 0;
  v27 = 0;
  if (a7)
  {
    swift_allocObject();
    v27 = sub_7670B0();
    swift_allocObject();
    v26 = sub_7670B0();
  }

  v93 = v26;
  v84 = v27;
  v28 = [a8 traitCollection];
  v29 = [v28 preferredContentSizeCategory];
  v30 = sub_769B50();

  v100 = sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93DB90 != -1)
  {
    swift_once();
  }

  v91 = sub_7666D0();
  sub_BE38(v91, qword_99FAA8);
  v31 = a8;
  v32 = [a8 traitCollection];
  v33 = sub_769E10();

  v73 = v30;
  v34 = sub_7653B0();
  v124[3] = v34;
  v90 = sub_5275A0(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v124[4] = v90;
  v35 = sub_B1B4(v124);
  v36 = *(*(v34 - 8) + 104);
  v89 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v88 = v36;
  v36(v35);
  sub_765C30();
  sub_BEB8(v124);

  v37 = v33;
  v72[1] = ~v30;
  v38 = v72[0];
  v75 = v37;
  sub_762D00();
  sub_762CE0();
  v39 = *(v74 + 1);
  v39(v38, v18);
  if (qword_93DB98 != -1)
  {
    swift_once();
  }

  v74 = a12;
  sub_BE38(v91, qword_99FAC0);
  v40 = [v31 traitCollection];
  v41 = sub_769E10();

  v123[3] = v34;
  v123[4] = v90;
  v42 = sub_B1B4(v123);
  v88(v42, v89, v34);
  sub_765C30();
  sub_BEB8(v123);
  v92 = v31;

  v43 = v41;
  v44 = v76;
  v78 = v43;
  sub_762D00();
  sub_762CE0();
  v39(v44, v18);
  if (qword_93DBA0 != -1)
  {
    swift_once();
  }

  sub_BE38(v91, qword_99FAD8);
  v45 = [v92 traitCollection];
  v46 = sub_769E10();

  v122[3] = v34;
  v122[4] = v90;
  v47 = sub_B1B4(v122);
  v88(v47, v89, v34);
  sub_765C30();
  sub_BEB8(v122);

  v48 = v46;
  v49 = v79;
  v100 = v48;
  sub_762D00();
  sub_762CE0();
  v39(v49, v18);
  if (qword_93C4F0 != -1)
  {
    swift_once();
  }

  v50 = sub_BE38(v86, qword_99B3E8);
  v51 = v80;
  sub_17D61C(v50, v80);
  v121 = &protocol witness table for LayoutViewPlaceholder;
  v120 = v24;
  *&v119 = v99;
  v118 = &protocol witness table for LayoutViewPlaceholder;
  v117 = v24;
  v115 = &protocol witness table for LayoutViewPlaceholder;
  *&v116 = v98;
  v114 = v24;
  v112 = &protocol witness table for LayoutViewPlaceholder;
  *&v113 = v97;
  v111 = v24;
  v109 = &protocol witness table for LayoutViewPlaceholder;
  *&v110 = v96;
  v108 = v24;
  *&v107 = v102;
  sub_134D8(v124, v106);
  sub_134D8(v123, v105);
  sub_134D8(v122, v103);
  v52 = v84;
  if (v84)
  {
    v53 = v24;
  }

  else
  {
    v53 = 0;
  }

  if (v84)
  {
    v54 = &protocol witness table for LayoutViewPlaceholder;
  }

  else
  {
    v54 = 0;
  }

  v90 = v54;
  v91 = v53;
  v55 = v93;
  if (v93)
  {
    v56 = &protocol witness table for LayoutViewPlaceholder;
  }

  else
  {
    v56 = 0;
  }

  if (v93)
  {
    v57 = v24;
  }

  else
  {
    v57 = 0;
  }

  v58 = v81;
  sub_17D680(v51, v81);
  v59 = v87;
  sub_10914(&v119, v58 + *(v87 + 20));
  sub_10914(&v116, v58 + v59[6]);
  sub_10914(&v113, v58 + v59[7]);
  sub_10914(&v110, v58 + v59[8]);
  sub_10914(&v107, v58 + v59[9]);
  v60 = (v58 + v59[10]);
  v61 = v94;
  *v60 = v95;
  v60[3] = v24;
  v60[4] = &protocol witness table for LayoutViewPlaceholder;
  v62 = (v58 + v59[11]);
  *v62 = v61;
  v62[3] = v24;
  v62[4] = &protocol witness table for LayoutViewPlaceholder;
  v63 = (v58 + v59[12]);
  *v63 = v101;
  v63[3] = v24;
  v63[4] = &protocol witness table for LayoutViewPlaceholder;
  sub_10914(v106, v58 + v59[13]);
  sub_10914(v105, v58 + v59[14]);
  v64 = v58 + v59[15];
  v65 = v103[1];
  *v64 = v103[0];
  *(v64 + 1) = v65;
  *(v64 + 4) = v104;
  v66 = (v58 + v59[16]);
  *v66 = v85;
  v66[3] = v24;
  v66[4] = &protocol witness table for LayoutViewPlaceholder;
  v67 = (v58 + v59[17]);
  *v67 = v52;
  v67[1] = 0;
  v68 = v90;
  v69 = v91;
  v67[2] = 0;
  v67[3] = v69;
  v67[4] = v68;
  v70 = (v58 + v59[18]);
  *v70 = v55;
  v70[1] = 0;
  v70[2] = 0;
  v70[3] = v57;
  v70[4] = v56;

  sub_2CDA90(v92, v58, v74, a9, a10);

  sub_2467C(v58);
  sub_BEB8(v122);
  sub_BEB8(v123);
  sub_BEB8(v124);
  return a9;
}

double sub_525AA4(double a1, double a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int *a7)
{
  v12 = sub_7586C0();
  v14 = v13;
  v15 = sub_7586B0();
  v17 = v16;
  v18 = sub_7586F0();
  v20 = v19;
  v21 = sub_370728(a5);
  v22 = sub_524F90(v12, v14, v15, v17, v18, v20, v21 & 1, a4, a1, a2, a6, a7);

  return v22;
}

double sub_525B90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v172 = a2;
  v5 = sub_768940();
  v170 = *(v5 - 8);
  v171 = v5;
  __chkstk_darwin(v5);
  v169 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&unk_948710, &qword_77FF90);
  __chkstk_darwin(v7 - 8);
  v166 = &v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v165 = &v147 - v10;
  v11 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v11 - 8);
  v163 = &v147 - v12;
  v13 = sub_75A6B0();
  __chkstk_darwin(v13 - 8);
  v161 = &v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v160 = &v147 - v16;
  v17 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v17 - 8);
  v159 = &v147 - v18;
  v157 = sub_75A6E0();
  v156 = *(v157 - 8);
  __chkstk_darwin(v157);
  v158 = &v147 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_75DC30();
  v162 = *(v164 - 8);
  __chkstk_darwin(v164);
  v168 = &v147 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v21 - 8);
  v148 = &v147 - v22;
  v23 = sub_BD88(&unk_9457D0, &unk_785630);
  __chkstk_darwin(v23 - 8);
  v150 = &v147 - v24;
  v25 = sub_BD88(&unk_94AC40, qword_78D7F0);
  __chkstk_darwin(v25 - 8);
  v154 = &v147 - v26;
  v27 = sub_BD88(&unk_9457E0, &qword_785640);
  __chkstk_darwin(v27 - 8);
  v151 = &v147 - v28;
  v29 = sub_BD88(&unk_94A780, &unk_788DC0);
  __chkstk_darwin(v29 - 8);
  v152 = &v147 - v30;
  v31 = sub_BD88(&unk_944E00, &unk_784910);
  __chkstk_darwin(v31 - 8);
  v33 = &v147 - v32;
  v34 = sub_763750();
  v149 = *(v34 - 8);
  __chkstk_darwin(v34);
  v36 = &v147 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_BD88(&unk_948730, &qword_788DD0);
  __chkstk_darwin(v37 - 8);
  v153 = &v147 - v38;
  v39 = sub_75CA40();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v147 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_7586B0();
  sub_17A830(v43, v44);
  v45 = sub_7586C0();
  sub_17A83C(v45, v46);
  v47 = sub_7586F0();
  sub_17A848(v47, v48);
  v49 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView];
  sub_758670();
  v50 = sub_75CA20();
  v51 = v39;
  v52 = v172;
  (*(v40 + 8))(v42, v51);
  v155 = v49;
  [v49 setOverrideUserInterfaceStyle:v50];
  sub_17A1DC();
  v173 = a1;
  v53 = sub_370728(v52);
  v167 = v3;
  if (v53)
  {
    v54 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupContainerView;
    if (!*&v3[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupContainerView])
    {
      v55 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      sub_17D430();
      v56 = *&v3[v54];
      *&v3[v54] = v55;
      v57 = v55;

      sub_17ADCC();
    }

    v58 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupView;
    if (!*&v3[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupView])
    {
      v59 = [objc_allocWithZone(type metadata accessor for SmallLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v60 = *&v3[v58];
      if (v60)
      {
        [v60 removeFromSuperview];
        v61 = *&v3[v58];
      }

      else
      {
        v61 = 0;
      }

      *&v3[v58] = v59;
      v70 = v59;

      sub_17AF94();
    }

    v71 = *&v3[v54];
    if (v71)
    {
      [v71 setHidden:0];
    }

    v72 = *&v3[v58];
    if (v72)
    {
      [v72 setHidden:0];
      v73 = *&v3[v58];
      if (v73)
      {
        v147 = v58;
        v74 = v73;
        v75 = sub_7586E0();
        v76 = v149;
        v77 = *(v149 + 104);
        v77(v36, enum case for OfferButtonPresenterViewAlignment.right(_:), v34);
        v77(v33, enum case for OfferButtonPresenterViewAlignment.left(_:), v34);
        (*(v76 + 56))(v33, 0, 1, v34);
        sub_5275A0(&unk_944E10, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
        v78 = v153;
        sub_760940();
        v79 = sub_BD88(&unk_948740, &unk_784920);
        (*(*(v79 - 8) + 56))(v78, 0, 1, v79);
        v80 = sub_758C70();
        v81 = v152;
        (*(*(v80 - 8) + 56))(v152, 1, 1, v80);
        v82 = sub_75BD30();
        v83 = v151;
        (*(*(v82 - 8) + 56))(v151, 1, 1, v82);
        v84 = sub_BD88(&unk_9457F0, qword_783FD0);
        v85 = v154;
        (*(*(v84 - 8) + 56))(v154, 1, 1, v84);
        v86 = sub_765870();
        v87 = v150;
        (*(*(v86 - 8) + 56))(v150, 1, 1, v86);
        v149 = v75;
        sub_4A18A4(v75, v74, v78, v172, 0, 0, v81, v83, v87, v85);
        sub_10A2C(v87, &unk_9457D0, &unk_785630);
        v74[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 1;
        sub_1FD89C();
        [v74 setNeedsLayout];
        v88 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel;
        v89 = *&v74[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel];
        if (v89)
        {
          [v89 setHidden:1];
          v90 = *&v74[v88];
          if (v90)
          {
            [v90 setText:0];
          }
        }

        v91 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel;
        v92 = *&v74[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel];
        if (v92)
        {
          if (([v92 isHidden] & 1) == 0)
          {
            v93 = *&v74[v91];
            if (v93)
            {
              if ([v93 hasContent])
              {
                v94 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel;
                [*&v74[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel] setHidden:1];
                [*&v74[v94] setText:0];
              }
            }
          }
        }

        v95 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel;
        if ([*&v74[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel] isHidden] || !objc_msgSend(*&v74[v95], "hasContent"))
        {

          sub_10A2C(v154, &unk_94AC40, qword_78D7F0);
          sub_10A2C(v83, &unk_9457E0, &qword_785640);
          sub_10A2C(v81, &unk_94A780, &unk_788DC0);
          sub_10A2C(v153, &unk_948730, &qword_788DD0);
        }

        else
        {
          v96 = *&v74[v91];
          if (v96)
          {
            [v96 setHidden:1];
            v97 = *&v74[v91];
            if (v97)
            {
              [v97 setText:0];
            }
          }

          v98 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel;
          [*&v74[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel] setHidden:1];
          [*&v74[v98] setText:0];

          sub_10A2C(v154, &unk_94AC40, qword_78D7F0);
          sub_10A2C(v83, &unk_9457E0, &qword_785640);
          sub_10A2C(v81, &unk_94A780, &unk_788DC0);
          sub_10A2C(v153, &unk_948730, &qword_788DD0);
        }

        v99 = *&v3[v147];
        if (v99)
        {
          v100 = *(v99 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel);
          if (!v100)
          {
            goto LABEL_37;
          }

          v101 = qword_93D588;
          v102 = v100;
          if (v101 != -1)
          {
            swift_once();
          }

          v103 = sub_7666D0();
          v104 = sub_BE38(v103, qword_99E8A8);
          v105 = *(v103 - 8);
          v106 = v148;
          (*(v105 + 16))(v148, v104, v103);
          (*(v105 + 56))(v106, 0, 1, v103);
          sub_75BA40();

          v99 = *&v3[v147];
          if (v99)
          {
LABEL_37:
            v107 = *(v99 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel);
            if (v107)
            {
              v108 = qword_93D5A0;
              v109 = v107;
              if (v108 != -1)
              {
                swift_once();
              }

              v110 = sub_7666D0();
              v111 = sub_BE38(v110, qword_99E8F0);
              v112 = *(v110 - 8);
              v113 = v148;
              (*(v112 + 16))(v148, v111, v110);
              (*(v112 + 56))(v113, 0, 1, v110);
              sub_75BA40();
            }
          }
        }
      }
    }

    sub_7586E0();
    v114 = sub_764D80();

    if (v114)
    {
      v115 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v116 = swift_allocObject();
      v52 = v172;
      v116[2] = v115;
      v116[3] = v52;
      v116[4] = v114;
      v114 = swift_allocObject();
      *(v114 + 16) = sub_527668;
      *(v114 + 24) = v116;

      v117 = sub_46344;
    }

    else
    {
      v117 = 0;
      v52 = v172;
    }

    v118 = v3;
    v66 = v168;
    v119 = &v118[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupViewTappedAction];
    v68 = *&v118[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupViewTappedAction];
    v69 = *&v118[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupViewTappedAction + 8];
    *v119 = v117;
    v119[1] = v114;
  }

  else
  {
    v62 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupView;
    v63 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupView];
    if (v63)
    {
      [v63 removeFromSuperview];
      v64 = *&v3[v62];
    }

    else
    {
      v64 = 0;
    }

    v65 = v3;
    v66 = v168;
    *&v65[v62] = 0;

    sub_17AF94();
    v67 = &v65[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupViewTappedAction];
    v68 = *&v65[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupViewTappedAction];
    v69 = *&v65[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupViewTappedAction + 8];
    *v67 = 0;
    *(v67 + 1) = 0;
  }

  sub_F704(v68, v69);
  if (sub_758630())
  {
    (*(v156 + 104))(v158, enum case for VideoFillMode.scaleAspectFill(_:), v157);
    sub_764BC0();
    sub_765260();
    v120 = v159;
    sub_7666A0();

    v121 = sub_766690();
    (*(*(v121 - 8) + 56))(v120, 0, 1, v121);
    sub_764B60();
    sub_764BA0();
    sub_764B70();
    sub_764B50();
    sub_764BB0();
    sub_75DC10();
    sub_75C360();
    sub_768880();
    v122 = v174[0];
    sub_764B40();
    v123 = v163;
    sub_764BD0();
    v124 = sub_7570A0();
    (*(*(v124 - 8) + 56))(v123, 0, 1, v124);
    v125 = v165;
    sub_764B90();
    v126 = v166;
    sub_764B80();
    type metadata accessor for VideoView(0);
    sub_5275A0(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
    v172 = v122;
    v127 = sub_75C340();
    v128 = v66;
    sub_10A2C(v126, &unk_948710, &qword_77FF90);
    sub_10A2C(v125, &unk_948710, &qword_77FF90);
    sub_10A2C(v123, &unk_93FD30, qword_77F240);
    sub_10A2C(v174, &unk_9443A0, &unk_77E240);
    v129 = v167;
    sub_17D2EC();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v131 = Strong;
      [v155 insertSubview:Strong aboveSubview:*&v129[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView]];
      [v129 setNeedsLayout];

      (*(v162 + 8))(v128, v164);
    }

    else
    {
      (*(v162 + 8))(v128, v164);
    }
  }

  else
  {
    v129 = v167;
    sub_17D2EC();
    swift_unknownObjectWeakAssign();
    v132 = swift_unknownObjectWeakLoadStrong();
    if (v132)
    {
      v133 = v132;
      [v155 insertSubview:v132 aboveSubview:*&v129[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView]];
      [v129 setNeedsLayout];
    }
  }

  sub_761060();
  sub_768900();
  sub_768ED0();
  v134 = v174[0];

  v135 = sub_758680();
  type metadata accessor for NotifyMeButtonPresenter(0);
  v136 = swift_allocObject();
  v137 = v136 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_view;
  *(v136 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v136 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_displayTimeReachedTimer) = 0;
  *(v136 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  swift_beginAccess();
  *(v137 + 8) = &off_886578;
  swift_unknownObjectWeakAssign();
  *(v136 + 16) = v134;
  *(v136 + 24) = v135;

  v138 = v169;
  v139 = v171;
  sub_768ED0();
  (*(v170 + 32))(v136 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_metricsPipeline, v138, v139);
  *(v136 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_objectGraph) = v52;
  sub_75A920();

  v140 = sub_768ED0();
  *(v136 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_bag) = v174[5];
  sub_E929C(v140, v141);
  sub_E9C30(v142, v143);
  v144 = [objc_opt_self() defaultCenter];

  v145 = sub_760FD0();
  [v144 addObserver:v136 selector:"userNotificationsDidChangeNotification:" name:v145 object:0];

  sub_17C5AC(v136);
  v129[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_includeBorderInDarkMode] = sub_758690() & 1;
  sub_17A1DC();

  return result;
}

double *sub_5271CC(double a1, uint64_t a2, void *a3)
{
  v4 = sub_765240();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _swiftEmptyArrayStorage;
  if (qword_93C4F0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_BE38(v8, qword_99B3E8);
  sub_766660();
  if (sub_758630())
  {
    sub_764BC0();
  }

  else if (!sub_758650())
  {
    v9 = _swiftEmptyArrayStorage;
    goto LABEL_9;
  }

  sub_765250();
  sub_765210();
  (*(v5 + 8))(v7, v4);
  sub_765330();

  sub_769440();
  if (*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v17 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();

  v9 = v17;
LABEL_9:
  sub_7586E0();
  v10 = sub_764F20();

  if (v10)
  {
    v11 = [a3 traitCollection];
    v12 = sub_769A00();

    if (v12)
    {
      if (qword_93C4E8 != -1)
      {
        swift_once();
      }

      v13 = qword_99B3D0;
    }

    else
    {
      if (qword_93C4E0 != -1)
      {
        swift_once();
      }

      v13 = qword_99B3B8;
    }

    v14 = sub_75CF00();
    sub_BE38(v14, v13);
    sub_75CDD0();
    sub_765250();
    sub_765210();
    (*(v5 + 8))(v7, v4);
    sub_765330();

    sub_769440();
    if (*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v17 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();

    return v17;
  }

  else
  {
  }

  return v9;
}

uint64_t sub_5275A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_5275E8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_527620()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_527674()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_5276AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v11 = sub_75CF00();
  v45 = *(v11 - 1);
  v46 = v11;
  __chkstk_darwin(v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_7652D0();
  __chkstk_darwin(v14 - 8);
  v15 = sub_765240();
  v48 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51[3] = a4;
  v51[4] = a5;
  v18 = sub_B1B4(v51);
  (*(*(a4 - 8) + 16))(v18, a1, a4);
  sub_134D8(v51, v50);
  sub_BD88(&unk_93F520, &unk_77E560);
  sub_758700();
  if (!swift_dynamicCast())
  {
    return sub_BEB8(v51);
  }

  v19 = v49;
  if (qword_93C4F0 != -1)
  {
    swift_once();
  }

  v47 = v15;
  v44 = a2;
  v20 = type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_BE38(v20, qword_99B3E8);
  sub_766660();
  v21 = sub_758630();
  v43 = v19;
  if (v21)
  {
    sub_764BC0();

    v22 = v48;
LABEL_8:
    sub_765250();
    sub_765210();
    (*(v22 + 8))(v17, v47);
    sub_765330();
    v24 = *(a3 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView);
    sub_7652E0();
    sub_7591B0();
    [v24 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      sub_76A030();
    }

    sub_759070();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v26 = Strong;
      type metadata accessor for VideoView(0);
      sub_5275A0(&unk_93F530, type metadata accessor for VideoView, &unk_7AD180);
      sub_75A050();
    }

    else
    {
      sub_759210();
      sub_5275A0(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_75A050();
    }

    v22 = v48;
    goto LABEL_14;
  }

  v23 = sub_758650();
  v22 = v48;
  if (v23)
  {

    goto LABEL_8;
  }

LABEL_14:
  v27 = *(a3 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupView);
  if (v27)
  {
    v28 = v27;
    sub_7586E0();
    v29 = sub_764F20();

    if (v29)
    {
      v30 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
      swift_beginAccess();
      v32 = v45;
      v31 = v46;
      (*(v45 + 16))(v13, &v28[v30], v46);
      sub_75CDD0();
      (*(v32 + 8))(v13, v31);
      sub_765250();
      sub_765210();
      v45 = *(v22 + 8);
      (v45)(v17, v47);
      v33 = sub_765330();
      v42 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
      v34 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView];
      v46 = v28;
      v35 = v34;
      sub_7652E0();
      sub_7591B0();
      [v35 setContentMode:sub_765140()];
      v48 = v33;
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540, UIColor_ptr);
        sub_76A030();
      }

      sub_759070();

      v36 = v42;
      v37 = *&v28[v42];
      sub_765250();
      v38 = sub_765210();
      (v45)(v17, v47);
      [v37 setContentMode:v38];

      v28 = *&v28[v36];
      v39 = v46;

      sub_759210();
      sub_5275A0(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_75A050();
    }
  }

  else
  {
  }

  return sub_BEB8(v51);
}