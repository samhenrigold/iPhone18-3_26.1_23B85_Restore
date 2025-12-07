void sub_688904(__n128 a1)
{
  v1 = sub_68B888();
  if (v1)
  {
    v6 = v1;
    v2 = [v6 configuration];
    sub_BE70(0, &unk_960E50, UICollectionViewCompositionalLayoutConfiguration_ptr);
    v3 = sub_76A440();

    sub_68822C(v4);
    sub_BE70(0, &unk_956240, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    isa = sub_769450().super.isa;

    [v3 setBoundarySupplementaryItems:isa];

    [v6 setConfiguration:v3];
  }
}

void sub_688A20()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
  if (v2)
  {
    sub_767160();
    if (swift_dynamicCastClass())
    {
      v3 = v2;
      sub_761930();

      v4 = *&v0[v1];
      *&v0[v1] = 0;

      v5 = [v0 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];

        sub_761920();

        sub_6BC898();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_688B34(uint64_t a1)
{
  v3 = [v1 collectionView];
  sub_685184(a1, v3);

  sub_688904(v4);
}

uint64_t sub_688BEC(uint64_t a1)
{
  v3 = sub_BD88(&unk_960E40, &unk_7AC6F0);
  *&v4 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v6 = &v20 - v5;
  v7 = [v1 collectionView];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 collectionViewLayout];

    [v9 invalidateLayout];
  }

  v10 = [v1 collectionView];
  if (v10)
  {
    v11 = v10;
    sub_BD88(&unk_941A18, &qword_78A3D0);
    v12 = sub_757640();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_77B6D0;
    (*(v13 + 16))(v15 + v14, a1, v12);
    isa = sub_769450().super.isa;

    [v11 reloadItemsAtIndexPaths:isa];
  }

  v17 = sub_68B888();
  v18 = sub_757500();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  sub_684C84(v6);

  return sub_10A2C(v6, &unk_960E40, &unk_7AC6F0);
}

void sub_688E40(uint64_t a1)
{
  v2 = v1;
  v28 = a1;
  v27 = swift_isaMask & *v1;
  v3 = sub_757500();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v25 = v5;
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_960E40, &unk_7AC6F0);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v25 - v8;
  v10 = [v1 collectionView];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 collectionViewLayout];

    [v12 invalidateLayout];
  }

  v13 = sub_68B888();
  v14 = *(v4 + 16);
  v15 = v28;
  v14(v9, v28, v3);
  (*(v4 + 56))(v9, 0, 1, v3);
  sub_684C84(v9);

  sub_10A2C(v9, &unk_960E40, &unk_7AC6F0);
  v16 = objc_opt_self();
  v17 = v26;
  v14(v26, v15, v3);
  v18 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v19 = swift_allocObject();
  v20 = v27;
  *(v19 + 16) = *(v27 + 1000);
  *(v19 + 32) = *(v20 + 1016);
  *(v19 + 40) = *(v20 + 1024);
  *(v19 + 56) = *(v20 + 1040);
  *(v19 + 64) = v2;
  (*(v4 + 32))(v19 + v18, v17, v3);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_68DD5C;
  *(v21 + 24) = v19;
  aBlock[4] = sub_47164;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1EB578;
  aBlock[3] = &unk_89C310;
  v22 = _Block_copy(aBlock);
  v23 = v2;

  [v16 performWithoutAnimation:v22];
  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_6891FC(uint64_t a1)
{
  v2 = v1;
  v3 = swift_isaMask & *v1;
  v4 = *&stru_3D8.segname[v3];
  v5 = *(&stru_3D8.reloff + v3);
  if (sub_75AF30())
  {
    if (qword_93DEF8 != -1)
    {
      swift_once();
    }

    v6 = sub_768FF0();
    sub_BE38(v6, qword_9A0418);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77DC20;
    v27 = v4;
    v7 = *(v3 + 1024);
    v28 = *(v3 + 1008);
    v29 = v7;
    v30 = v5;
    *&v29 = type metadata accessor for BaseShelfViewController(0, &v27);
    v27 = v1;
    v8 = v1;
    sub_7685C0();
    sub_10A2C(&v27, &unk_93FBD0, &qword_77DFA0);
    sub_768540();
    swift_getErrorValue();
    *&v29 = v26;
    v9 = sub_B1B4(&v27);
    (*(*(v26 - 8) + 16))(v9);
    sub_7685E0();
    sub_10A2C(&v27, &unk_93FBD0, &qword_77DFA0);
    sub_768EA0();
  }

  else
  {
    sub_767230();
    swift_errorRetain();
    swift_unknownObjectRetain();
    v10 = sub_7671F0();
    v11 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
    v12 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
    v13 = v10;
    sub_761930();

    v14 = *&v2[v11];
    *&v2[v11] = v10;
    v25 = v13;

    v15 = [v2 view];
    if (v15)
    {
      v16 = v15;
      [v15 bounds];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      v27 = v18;
      *&v28 = v20;
      *(&v28 + 1) = v22;
      *&v29 = v24;
      BYTE8(v29) = 0;
      sub_761920();

      sub_6BC898();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_6895E8()
{
  v1 = [v0 collectionView];
  sub_685594();

  sub_688904(v2);
}

void sub_689650()
{
  v1 = [v0 collectionView];
  sub_6771B0(v1);

  sub_688904(v2);
}

double sub_6896B8(uint64_t a1)
{
  v2 = swift_isaMask & *v1;
  if (qword_93DEF8 != -1)
  {
    swift_once();
  }

  v3 = sub_768FF0();
  sub_BE38(v3, qword_9A0418);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77DC20;
  v4 = *(v2 + 1016);
  v9 = *(v2 + 1000);
  v10 = v4;
  v11 = *(v2 + 1032);
  *(&v10 + 1) = type metadata accessor for BaseShelfViewController(0, &v9);
  *&v9 = v1;
  v5 = v1;
  sub_7685C0();
  sub_10A2C(&v9, &unk_93FBD0, &qword_77DFA0);
  sub_768540();
  swift_getErrorValue();
  *(&v10 + 1) = v8;
  v6 = sub_B1B4(&v9);
  (*(*(v8 - 8) + 16))(v6);
  sub_7685E0();
  sub_10A2C(&v9, &unk_93FBD0, &qword_77DFA0);
  sub_768EA0();

  return result;
}

uint64_t sub_68992C(uint64_t a1)
{
  v3 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph);
  v7 = sub_BD88(&unk_93F630, &unk_77E230);
  sub_768860();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10A2C(v5, &unk_93F980, &qword_77EDA0);
  }

  sub_32A6C0(a1, 1, v6, v5);

  return (*(v8 + 8))(v5, v7);
}

double sub_689A7C(uint64_t a1)
{
  if (a1)
  {
    v2 = swift_isaMask & *v1;
    sub_75B5B0();
    swift_allocObject();

    *(v1 + qword_960D80) = sub_75B5A0();

    if (!*(v1 + qword_960D80))
    {
      return result;
    }

    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = *(v2 + 1000);
    *(v5 + 32) = *(v2 + 1016);
    *(v5 + 40) = *(v2 + 1024);
    *(v5 + 56) = *(v2 + 1040);
    *(v5 + 64) = v4;

    sub_75B550();
  }

  else
  {
    *(v1 + qword_960D80) = 0;
  }

  return result;
}

uint64_t sub_689BFC()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v28 = swift_isaMask & *v0;
  v3 = sub_768380();
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v32 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7683C0();
  v30 = *(v5 - 8);
  v31 = v5;
  __chkstk_darwin(v5);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_7683E0();
  v7 = *(v27 - 8);
  __chkstk_darwin(v27);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  aBlock[0] = *(v0 + qword_960D48);
  swift_unknownObjectRetain();
  sub_75CA70();
  v13 = *&stru_3D8.segname[v2 & v1];
  v14 = *&stru_3D8.segname[(v2 & v1) + 8];
  sub_75D370();
  swift_unknownObjectRelease();
  if (*(*(v0 + qword_960D50) + 112))
  {

    sub_75F4E0();
  }

  sub_68D518();
  sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  v25 = sub_769970();
  sub_7683D0();
  sub_75CA80();
  sub_768450();
  v26 = *(v7 + 8);
  v15 = v27;
  v26(v9, v27);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  *(v17 + 24) = v14;
  v18 = v28;
  *(v17 + 32) = *(v28 + 1016);
  *(v17 + 40) = *(v18 + 1024);
  *(v17 + 56) = *(v18 + 1040);
  *(v17 + 64) = v16;
  aBlock[4] = sub_68DC08;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_89C270;
  v19 = _Block_copy(aBlock);

  v20 = v29;
  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_68DC1C(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_BD88(&qword_940350, &unk_77F850);
  sub_1A93C4(&qword_9406F0, &qword_940350, &unk_77F850);
  v21 = v32;
  v22 = v34;
  sub_76A5A0();
  v23 = v25;
  sub_769930();
  _Block_release(v19);

  (*(v33 + 8))(v21, v22);
  (*(v30 + 8))(v20, v31);
  return (v26)(v12, v15);
}

void sub_68A0DC()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask & *v0;
  v4 = *&stru_3D8.segname[v3 + 16];
  v5 = *(&stru_3D8.reloff + (swift_isaMask & v2));
  v23 = *(v3 + 1000);
  v24 = v23;
  v25 = v4;
  v22 = *(v3 + 1024);
  v26 = v22;
  v27 = v5;
  v6 = type metadata accessor for BaseShelfViewController(0, &v24);
  v28.receiver = v1;
  v28.super_class = v6;
  objc_msgSendSuper2(&v28, "viewDidLoad");
  v7 = *&v1[qword_960D78];
  if (v7)
  {
    sub_BE70(0, &unk_960E30, UIContextMenuInteraction_ptr);
    type metadata accessor for FlowPreviewing(0, v23, v4, v8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = v7;
    v11 = [objc_allocWithZone(ObjCClassFromMetadata) initWithDelegate:v10];
    v12 = [v1 collectionView];
    if (!v12)
    {
LABEL_11:
      __break(1u);
      return;
    }

    v13 = v12;
    [v12 addInteraction:v11];
  }

  v14 = [v1 collectionView];
  if (!v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  v16 = sub_68A350();
  [v15 setCollectionViewLayout:v16];

  sub_75DB60();
  v17 = [v1 collectionView];
  if (v17)
  {
    v18 = v17;
    [v17 setAlwaysBounceVertical:1];
  }

  v19 = [v1 collectionView];
  if (v19)
  {
    v20 = v19;
    [v19 setPrefetchDataSource:v1];
  }

  v21 = [v1 collectionView];
  sub_5AFC2C(v21);
}

id sub_68A350()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = swift_isaMask & *v0;
  v4 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
  sub_68822C(v5);
  sub_BE70(0, &unk_956240, NSCollectionLayoutBoundarySupplementaryItem_ptr);
  isa = sub_769450().super.isa;

  [v4 setBoundarySupplementaryItems:isa];

  v7 = type metadata accessor for BaseCollectionCompositionalLayout();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = *(v3 + 1000);
  *(v9 + 32) = *&stru_3D8.segname[(v2 & v1) + 16];
  *(v9 + 40) = *(v3 + 1024);
  *(v9 + 56) = *(&stru_3D8.reloff + (v2 & v1));
  *(v9 + 64) = v8;
  v10 = objc_allocWithZone(v7);
  v14[4] = sub_68DBBC;
  v14[5] = v9;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_507AD4;
  v14[3] = &unk_89C1F8;
  v11 = _Block_copy(v14);

  v12 = [v10 initWithSectionProvider:v11 configuration:v4];

  _Block_release(v11);

  return v12;
}

void sub_68A574(void *a1)
{
  v1 = a1;
  sub_68A0DC();
}

double sub_68A5BC()
{
  v1 = swift_isaMask & *v0;
  v2 = *&stru_3D8.segname[v1 + 16];
  v3 = *(&stru_3D8.reloff + v1);
  v6 = *&stru_3D8.segname[v1];
  v7 = v2;
  v8 = *(v1 + 1024);
  v9 = v3;
  v4 = type metadata accessor for BaseShelfViewController(0, &v6);
  v10.receiver = v0;
  v10.super_class = v4;
  objc_msgSendSuper2(&v10, "as_viewDidBecomeFullyVisible");
  if (*(*(v0 + qword_960D50) + 112))
  {

    sub_75F510();
  }

  sub_75B430();
  sub_75B410();
  sub_75EBB0();
  sub_75B3F0();

  sub_75B410();
  sub_75B390();

  return result;
}

void sub_68A728(void *a1)
{
  v1 = a1;
  sub_68A5BC();
}

id sub_68A770(uint64_t a1, uint64_t a2)
{
  v3 = swift_isaMask & *v2;
  v4 = sub_7572A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v3 + 1016);
  v11[0] = *(v3 + 1000);
  v11[1] = v8;
  v11[2] = *(v3 + 1032);
  v9 = type metadata accessor for BaseShelfViewController(0, v11);
  v12.receiver = v2;
  v12.super_class = v9;
  result = objc_msgSendSuper2(&v12, "as_viewWillBecomeFullyVisible");
  if (*(v2 + qword_960D80))
  {

    sub_757290();
    sub_75B560();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

void sub_68A8DC(void *a1)
{
  v2 = a1;
  sub_68A770(v2, v1);
}

id sub_68A924(char a1, uint64_t a2)
{
  v4 = swift_isaMask & *v2;
  v5 = sub_7572A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v4 + 1016);
  v12[0] = *(v4 + 1000);
  v12[1] = v9;
  v12[2] = *(v4 + 1032);
  v10 = type metadata accessor for BaseShelfViewController(0, v12);
  v13.receiver = v2;
  v13.super_class = v10;
  result = objc_msgSendSuper2(&v13, "viewWillAppear:", a1 & 1);
  if (*(v2 + qword_960D80))
  {

    sub_757290();
    sub_75B560();

    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

void sub_68AA98(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_68A924(a3, v4);
}

void sub_68AAEC(char a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v3;
  v6 = swift_isaMask;
  v7 = swift_isaMask & *v3;
  v8 = sub_7572A0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&stru_3D8.segname[(v6 & v5) + 16];
  v13 = *(&stru_3D8.reloff + (v6 & v5));
  v16 = *(v7 + 1000);
  v17 = v16;
  v18 = v12;
  v15 = *(v7 + 1024);
  v19 = v15;
  v20 = v13;
  v14 = type metadata accessor for BaseShelfViewController(0, &v17);
  v21.receiver = v3;
  v21.super_class = v14;
  objc_msgSendSuper2(&v21, "viewDidAppear:", a1 & 1);
  if (sub_75EB70())
  {
    sub_757290();
    sub_757270();
    (*(v9 + 8))(v11, v8);
    sub_75CAA0();
  }

  if (*(*(v3 + qword_960D50) + 112))
  {

    sub_75F510();
  }

  sub_75B430();
  sub_75B410();
  sub_75EBB0();
  sub_75B3F0();
}

void sub_68AD40(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_68AAEC(a3, v4);
}

void sub_68AD94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = swift_isaMask & *v2;
  v5 = sub_7572A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v4 + 1016);
  v11[0] = *(v4 + 1000);
  v11[1] = v9;
  v11[2] = *(v4 + 1032);
  v10 = type metadata accessor for BaseShelfViewController(0, v11);
  v12.receiver = v3;
  v12.super_class = v10;
  objc_msgSendSuper2(&v12, "as_viewWillBecomePartiallyVisible");
  if (*(*&v3[qword_960D50] + 112))
  {

    sub_75F510();
  }

  sub_75B430();
  sub_75B410();
  sub_75B3F0();

  sub_75B410();
  sub_75B390();

  if (*&v3[qword_960D80])
  {

    sub_757290();
    sub_75B590();

    (*(v6 + 8))(v8, v5);
  }
}

void sub_68AF78(void *a1)
{
  v2 = a1;
  sub_68AD94(v2, v1);
}

void sub_68AFC0(char a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v3;
  v6 = swift_isaMask;
  v7 = swift_isaMask & *v3;
  v8 = sub_7572A0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_768D60();
  __chkstk_darwin(v12 - 8);
  v13 = sub_BD88(&qword_940CB0, "ޥ\a");
  __chkstk_darwin(v13 - 8);
  v15 = &v21 - v14;
  v16 = *&stru_3D8.segname[(v6 & v5) + 16];
  v17 = *(&stru_3D8.reloff + (v6 & v5));
  v22 = *(v7 + 1000);
  v23 = v22;
  v24 = v16;
  v21 = *(v7 + 1024);
  v25 = v21;
  v26 = v17;
  v18 = type metadata accessor for BaseShelfViewController(0, &v23);
  v27.receiver = v3;
  v27.super_class = v18;
  objc_msgSendSuper2(&v27, "viewWillDisappear:", a1 & 1);
  if (sub_75EB70())
  {
    sub_768D50();
    sub_757290();
    sub_757270();
    (*(v9 + 8))(v11, v8);
    sub_75CAC0();
    v19 = sub_75CAD0();
    (*(*(v19 - 8) + 56))(v15, 0, 1, v19);
    sub_75CAB0();
  }

  if (*(v3 + qword_960D68) == 1)
  {
    sub_761120();
    sub_768900();
    sub_768ED0();
    v20 = v23;
    sub_761070();
  }

  if (*(*(v3 + qword_960D50) + 112))
  {

    sub_75F510();
  }

  sub_75B430();
  sub_75B410();
  sub_75B3F0();

  sub_75B410();
  sub_75B390();

  if (*(v3 + qword_960D80))
  {

    sub_757290();
    sub_75B590();

    (*(v9 + 8))(v11, v8);
  }
}

void sub_68B3A0(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_68AFC0(a3, v4);
}

void sub_68B3F4()
{
  v1 = swift_isaMask & *v0;
  v2 = *&stru_3D8.segname[v1 + 16];
  v5[0] = *&stru_3D8.segname[v1];
  v5[1] = v2;
  v5[2] = *(v1 + 1032);
  v3 = type metadata accessor for BaseShelfViewController(0, v5);
  v6.receiver = v0;
  v6.super_class = v3;
  objc_msgSendSuper2(&v6, "as_viewDidBecomePartiallyVisible");
  if (*(v0 + qword_960D68) == 1)
  {
    sub_761120();
    sub_768900();
    sub_768ED0();
    v4 = *&v5[0];
    sub_761070();
  }
}

void sub_68B4E8(void *a1)
{
  v1 = a1;
  sub_68B3F4();
}

void sub_68B530(uint64_t a1)
{
  v3 = swift_isaMask & *v1;
  v4 = *&stru_3D8.segname[v3 + 16];
  v8[0] = *&stru_3D8.segname[v3];
  v8[1] = v4;
  v8[2] = *(v3 + 1032);
  v5 = type metadata accessor for BaseShelfViewController(0, v8);
  v9.receiver = v1;
  v9.super_class = v5;
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  if ([v1 isViewLoaded])
  {
    sub_688904(v6);
    v7 = [v1 collectionView];
    sub_6856BC(v7);
  }
}

void sub_68B628(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_68B530(a3);
}

void sub_68B694(uint64_t a1, double a2, double a3)
{
  v7 = swift_isaMask & *v3;
  v8 = *&stru_3D8.segname[v7 + 16];
  v17[0] = *&stru_3D8.segname[v7];
  v17[1] = v8;
  v17[2] = *(v7 + 1032);
  v9 = type metadata accessor for BaseShelfViewController(0, v17);
  v18.receiver = v3;
  v18.super_class = v9;
  objc_msgSendSuper2(&v18, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v3 isViewLoaded])
  {
    v10 = [v3 traitCollection];
    v11 = type metadata accessor for SnapshotPageTraitEnvironment();
    v12 = objc_allocWithZone(v11);
    v13 = &v12[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
    *v13 = a2;
    v13[1] = a3;
    *&v12[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v10;
    v16.receiver = v12;
    v16.super_class = v11;
    v14 = objc_msgSendSuper2(&v16, "init");
    v15 = [v3 collectionView];
    sub_6856FC(v15);
  }
}

void sub_68B808(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_68B694(a3, a4, a5);
  swift_unknownObjectRelease();
}

id sub_68B888()
{
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    v3 = [result collectionViewLayout];

    result = 0;
    if (v3)
    {
      type metadata accessor for BaseCollectionCompositionalLayout();
      result = swift_dynamicCastClass();
      if (!result)
      {

        return 0;
      }
    }
  }

  return result;
}

void sub_68B904(uint64_t a1)
{
  v12 = [v1 collectionView];
  if (v12)
  {
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 56);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    if (v5)
    {
      while (1)
      {
        v8 = v7;
LABEL_10:
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = *(*(a1 + 48) + ((v8 << 9) | (8 * v9)));
        v11 = sub_75AFE0();
        sub_687DC8(v11, v10, v12);

        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        return;
      }

      if (v8 >= v6)
      {
        break;
      }

      v5 = *(a1 + 56 + 8 * v8);
      ++v7;
      if (v5)
      {
        v7 = v8;
        goto LABEL_10;
      }
    }
  }
}

double sub_68BAB8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_757640();
  v6 = sub_769460();
  v7 = a3;
  v8 = a1;
  sub_68D344(v6, v9);

  return result;
}

id sub_68BB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = Strong;

  v6 = v5;
  result = [v6 collectionView];
  if (result)
  {
    v8 = result;
    v9 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph];

    v10 = sub_677594(a1, v8, v6, v9);

    return v10;
  }

  __break(1u);
  return result;
}

double sub_68BC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_3ADE74(Strong, v7);
    sub_68B904(v9);
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v12 = v10;
    swift_unknownObjectRetain();

    v13 = sub_75EB70();
    swift_unknownObjectRelease();
    if (v13)
    {
      sub_75CA90();
    }
  }

  return result;
}

void sub_68BD18(void *a1)
{
  v1 = [a1 collectionView];
  if (v1)
  {
    v3 = v1;
    sub_7574C0(v2);
    v5 = v4;
    [v3 reloadSections:v4];
  }
}

void sub_68BDA0(void *a1, uint64_t a2)
{
  v4 = sub_757500();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 collectionView];
  if (v9)
  {
    v10 = v9;
    sub_BD88(&qword_95B250, "hq\b");
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_77B6D0;
    *(v11 + 32) = a2;
    v15[1] = v11;
    sub_68DC1C(&qword_960E10, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
    sub_BD88(&qword_960E18, &qword_7AC8D8);
    sub_1A93C4(&unk_960E20, &qword_960E18, &qword_7AC8D8);
    sub_76A5A0();
    sub_7574C0(v12);
    v14 = v13;
    (*(v5 + 8))(v8, v4);
    [v10 reloadSections:v14];
  }
}

void sub_68BF7C(void *a1)
{
  v1 = a1;
  sub_6895E8();
}

void sub_68BFC4(void *a1)
{
  v1 = a1;
  sub_689650();
}

void sub_68C00C(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v4 = a1;
  sub_6896B8(v5);
}

uint64_t sub_68C064(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_68DA18();

  return v6;
}

uint64_t sub_68C0B0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v8 = sub_68DA44(a4);

  return v8;
}

void sub_68C104(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_689BFC();
  }
}

double sub_68C160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_unknownObjectRetain();

    sub_75DB50();
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_68C1F0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  LOBYTE(a5) = sub_68D9B8(a5, v11);

  return a5 & 1;
}

double sub_68C25C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  v12 = sub_68D9E8(a5, v11);

  return v12;
}

id sub_68C330(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_757640();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_769240();
  v13 = v12;
  sub_757590();
  v14 = a3;
  v15 = a1;
  v17 = sub_68C2F0(v14, v11, v13, v10, v16);

  (*(v8 + 8))(v10, v7);

  return v17;
}

uint64_t sub_68C470(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_757640();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_769240();
  v15 = v14;
  sub_757590();
  v16 = a3;
  v17 = a4;
  v18 = a1;
  sub_68DA70(v17, v13, v15, v19);

  return (*(v10 + 8))(v12, v9);
}

id sub_68C5E8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_757640();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  v10 = a3;
  v11 = a1;
  v12 = sub_68C5B0(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

uint64_t sub_68C75C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = sub_757640();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  v12 = a3;
  v13 = a4;
  v14 = a1;
  sub_68C6FC(v12, v13, v11);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_68C874(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = sub_757640();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_757590();
  v12 = a3;
  v13 = a4;
  v14 = a1;
  sub_68DAFC(v13, v11);

  return (*(v9 + 8))(v11, v8);
}

BOOL sub_68C988(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_757640();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  v10 = a3;
  v11 = a1;
  isa = sub_757550().super.isa;
  v13 = [v10 cellForItemAtIndexPath:isa];

  if (v13)
  {
    swift_getObjectType();
    v14 = swift_conformsToProtocol2() == 0;

    v10 = v11;
    v11 = v13;
  }

  else
  {
    v14 = 0;
  }

  (*(v7 + 8))(v9, v6);
  return v14;
}

uint64_t sub_68CB38(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_757640();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  v10 = a3;
  v11 = a1;
  sub_68CAF0(v10, v9);

  return (*(v7 + 8))(v9, v6);
}

void sub_68CC50(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_68CC34(v4);
}

void sub_68CCD4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_68CCB8(v4);
}

id sub_68CD3C(uint64_t a1)
{
  v3 = swift_isaMask & *v1;
  v4 = *&stru_3D8.segname[v3 + 16];
  v7[0] = *&stru_3D8.segname[v3];
  v7[1] = v4;
  v7[2] = *(v3 + 1032);
  v5 = type metadata accessor for BaseShelfViewController(0, v7);
  v8.receiver = v1;
  v8.super_class = v5;
  objc_msgSendSuper2(&v8, "scrollViewDidScroll:", a1);
  return [*(v1 + qword_960D58) scrollViewDidScroll:a1];
}

void sub_68CDFC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_68CD3C(v4);
}

void sub_68CE80(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_68CE64(v4);
}

void sub_68CF0C(void *a1, uint64_t a2, void *a3, char a4)
{
  v6 = a3;
  v7 = a1;
  sub_68CEE8(v6, a4);
}

void sub_68CF7C(void *a1)
{
  v2 = a1;
  sub_687A58(v2, v1);
}

void sub_68CFC4(void *a1)
{
  v2 = a1;
  sub_687B40(v2, v1);
}

double sub_68D00C()
{
  swift_unknownObjectRelease();

  return result;
}

id sub_68D09C()
{
  v1 = swift_isaMask & *v0;
  v2 = *&stru_3D8.segname[v1 + 16];
  v5[0] = *&stru_3D8.segname[v1];
  v5[1] = v2;
  v5[2] = *(v1 + 1032);
  v3 = type metadata accessor for BaseShelfViewController(0, v5);
  v6.receiver = v0;
  v6.super_class = v3;
  return objc_msgSendSuper2(&v6, "dealloc");
}

double sub_68D12C(uint64_t a1)
{
  swift_unknownObjectRelease();

  return result;
}

uint64_t sub_68D2D0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_769650();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1A05AC(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

double sub_68D344(uint64_t a1, uint64_t a2)
{
  v23 = sub_757640();
  v4 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v20[1] = v2;
    v24 = _swiftEmptyArrayStorage;
    sub_143E24(0, v7, 0);
    v8 = v24;
    v10 = *(v4 + 16);
    v9 = v4 + 16;
    v11 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v21 = *(v9 + 56);
    v22 = v10;
    v12 = (v9 - 8);
    do
    {
      v13 = v23;
      v14 = v9;
      v22(v6, v11, v23);
      v15 = sub_7575D0();
      (*v12)(v6, v13);
      v24 = v8;
      v17 = *(v8 + 2);
      v16 = *(v8 + 3);
      if (v17 >= v16 >> 1)
      {
        sub_143E24((v16 > 1), v17 + 1, 1);
        v8 = v24;
      }

      *(v8 + 2) = v17 + 1;
      *&v8[v17 + 4] = v15;
      v11 += v21;
      --v7;
      v9 = v14;
    }

    while (v7);
  }

  v18 = sub_68D2D0(v8);

  sub_68B904(v18);

  return result;
}

void sub_68D518()
{
  v1 = v0;
  v2 = sub_767140();
  __chkstk_darwin(v2 - 8);
  v3 = sub_75AF30();
  v4 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
  v5 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
  if (!v3)
  {
    if (v5)
    {
      sub_767160();
      if (swift_dynamicCastClass())
      {
        return;
      }
    }

    sub_75EB60();
    sub_767130();
    v10 = objc_allocWithZone(sub_767160());
    v11 = sub_767150();
    v12 = *&v1[v4];
    v13 = v11;
    sub_761930();

    v14 = *&v1[v4];
    *&v1[v4] = v11;
    v15 = v13;

    v16 = [v1 view];
    if (v16)
    {
      v17 = v16;
      [v16 bounds];

      sub_761920();
      sub_6BC898();

      return;
    }

LABEL_12:
    __break(1u);
    return;
  }

  v6 = v5;
  sub_761930();

  v7 = *&v1[v4];
  *&v1[v4] = 0;

  v8 = [v1 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_12;
  }

  v9 = v8;
  [v8 bounds];

  sub_761920();

  sub_6BC898();
}

void sub_68D7EC(void *a1)
{
  if (a1)
  {
    v2 = [a1 integerValue];
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_68D998;
    *(v5 + 24) = v4;
    v9[4] = sub_2EC28;
    v9[5] = v5;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_1EB578;
    v9[3] = &unk_89C180;
    v6 = _Block_copy(v9);
    v7 = v1;

    [v3 performWithoutAnimation:v6];
    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

uint64_t sub_68D960()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_68D9A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_68DA70(void *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (sub_7575E0() < 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_7575D0();
  }

  sub_67B160(a1, a2, a3, v9, v4, *&v4[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph], v8);
}

uint64_t sub_68DB4C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_68DB84()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_68DC1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_68DC98()
{
  v1 = sub_757500();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_68DD5C()
{
  sub_757500();
  v1 = *(v0 + 64);

  sub_68BD18(v1);
}

void sub_68DE44(uint64_t a1)
{
  v2 = sub_760F00();
  __chkstk_darwin(v2 - 8);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_760F20();
  v66 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7656C0();
  v64 = *(v8 - 8);
  v65 = v8;
  __chkstk_darwin(v8);
  v63 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&qword_952418, &qword_79A2C8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v50 - v12;
  sub_75D950();
  sub_68E798(&unk_9523A0, &type metadata accessor for ProductDescription, &protocol conformance descriptor for ProductDescription);
  sub_75C750();
  v14 = aBlock[0];
  if (aBlock[0])
  {
    v62 = v5;
    sub_34903C();
    v67 = a1;
    sub_75C780();
    sub_769030();
    v15 = aBlock[0];
    v60 = v10;
    v61 = v7;
    v58 = v4;
    v59 = v11;
    v57 = v13;
    v54 = v14;
    if (LOBYTE(aBlock[0]) == 2)
    {
      sub_75D940();
      v15 = sub_765890();
    }

    v56 = sub_75D940();
    if (v15)
    {
      v16 = sub_7658A0();
      v53 = 3;
    }

    else
    {
      v16 = sub_7658D0();
      v53 = 0;
    }

    v17 = [sub_527DE4() traitCollection];
    swift_unknownObjectRelease();
    v18 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v16];
    v19 = [v16 length];
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = v17;
    *(v20 + 32) = v18;
    *(v20 + 40) = 1;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_119AC;
    *(v21 + 24) = v20;
    v77 = sub_2636C;
    v78 = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10C1C;
    v76 = &unk_89C388;
    v22 = _Block_copy(aBlock);
    v23 = v17;
    v24 = v18;

    v55 = v16;
    [v16 enumerateAttributesInRange:0 options:v19 usingBlock:{0x100000, v22}];

    _Block_release(v22);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v26 = v24;
      v27 = sub_75D930();
      v28 = sub_75D920();
      v29 = sub_75D910();
      if (sub_75D900())
      {
        v30 = sub_764C60();
        v51 = v31;
        v52 = v30;
      }

      else
      {
        v51 = 0;
        v52 = 0;
      }

      v32 = sub_527DE4();
      swift_getKeyPath();
      v33 = v63;
      sub_75C7B0();

      sub_765630();
      (*(v64 + 8))(v33, v65);
      v34 = swift_allocObject();
      v35 = v53;
      *(v34 + 16) = v26;
      *(v34 + 24) = v35;
      v36 = sub_7670D0();
      swift_allocObject();
      v37 = v26;
      v38 = sub_767090();
      v76 = v36;
      v77 = &protocol witness table for LayoutViewPlaceholder;
      aBlock[0] = v38;
      v39 = swift_allocObject();
      v39[2] = v27;
      v39[3] = v28;
      v39[4] = v29;
      v39[5] = v32;
      swift_allocObject();

      swift_unknownObjectRetain();
      v40 = sub_767090();
      v74[3] = v36;
      v74[4] = &protocol witness table for LayoutViewPlaceholder;
      v74[0] = v40;
      v41 = type metadata accessor for DeveloperLinkView();
      v42 = swift_allocObject();
      v43 = v51;
      v44 = v52;
      v42[2] = v41;
      v42[3] = v44;
      v42[4] = v43;
      swift_allocObject();
      v45 = sub_767090();
      v73[3] = v36;
      v73[4] = &protocol witness table for LayoutViewPlaceholder;
      v73[0] = v45;
      sub_75A530();
      LOBYTE(v41) = sub_769490();

      if (v41)
      {
        sub_134D8(v74, v71);
      }

      else
      {
        v72 = 0;
        memset(v71, 0, sizeof(v71));
      }

      v46 = v61;
      v47 = v59;
      v48 = v57;
      sub_630128(v58);
      sub_134D8(aBlock, &v70);
      sub_134D8(v74, &v69);
      sub_134D8(v73, &v68);
      sub_760F10();
      sub_68E798(&qword_952420, &type metadata accessor for ProductDescriptionLayout, &protocol conformance descriptor for ProductDescriptionLayout);
      v49 = v62;
      sub_7665A0();

      swift_unknownObjectRelease();

      (*(v66 + 8))(v46, v49);
      sub_70550(v71);
      (*(v47 + 8))(v48, v60);
      sub_BEB8(v73);
      sub_BEB8(v74);
      sub_BEB8(aBlock);
    }
  }
}

uint64_t sub_68E674()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_68E6CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_68E6E8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_68E720()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_68E760()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_68E798(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_68E7E0()
{
  v0 = sub_7632B0();
  sub_161DC(v0, qword_9A06C8);
  sub_BE38(v0, qword_9A06C8);
  return sub_7632A0();
}

uint64_t sub_68E82C()
{
  v0 = sub_7631F0();
  sub_161DC(v0, qword_9A06E0);
  v1 = sub_BE38(v0, qword_9A06E0);
  v2 = enum case for CondensedSearchResultCardLayout.Configuration.appEvent(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

char *sub_68E8B4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_7593D0();
  v76 = *(v10 - 8);
  v77 = v10;
  __chkstk_darwin(v10);
  v75 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_954ED0, &unk_77E060);
  __chkstk_darwin(v12 - 8);
  v74 = &v68 - v13;
  v14 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v14 - 8);
  v73 = &v68 - v15;
  v16 = OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_appEventFormattedDateView;
  *&v4[v16] = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v17 = OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_titleLabel;
  sub_75BB20();
  *&v4[v17] = sub_75BB00();
  v18 = OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_viewButton;
  *&v5[v18] = [objc_opt_self() buttonWithType:0];
  v19 = OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_artworkView;
  if (qword_93E068 != -1)
  {
    swift_once();
  }

  v20 = sub_7632B0();
  sub_BE38(v20, qword_9A06C8);
  sub_763210();
  *&v5[v19] = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, v21, v22}];
  v23 = OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_appEventTapGestureRecognizer;
  *&v5[v23] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v24 = &v5[OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_appEventViewTappedAction];
  v25 = type metadata accessor for CondensedAppEventCardView();
  *v24 = 0;
  *(v24 + 1) = 0;
  v79.receiver = v5;
  v79.super_class = v25;
  v26 = objc_msgSendSuper2(&v79, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v30 = v26;
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v70 = OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_appEventFormattedDateView;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_appEventFormattedDateView]];
  v31 = OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_titleLabel;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_titleLabel]];
  v72 = OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_artworkView;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_artworkView]];
  v71 = OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_viewButton;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_viewButton]];
  v32 = qword_93E070;
  v33 = *&v30[v31];
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = sub_7631F0();
  sub_BE38(v34, qword_9A06E0);
  v35 = v73;
  sub_7631E0();
  v36 = sub_7666D0();
  v37 = *(v36 - 8);
  v38 = *(v37 + 56);
  v68 = v36;
  v69 = v38;
  v38(v35, 0, 1, v36);
  sub_75BA40();

  v39 = v30;
  v40.super.isa = [v39 traitCollection];
  isa = v40.super.isa;
  [*&v30[v31] setNumberOfLines:sub_7631B0(v40)];

  v42 = v70;
  v43 = *&v30[v70];
  v44 = v43[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_style];
  v43[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_style] = 7;
  v45 = v43;
  sub_26B40C(v44);

  *(*&v30[v42] + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_delegate + 8) = &off_89C448;
  swift_unknownObjectWeakAssign();

  v46 = *&v30[v31];
  *v35 = UIFontTextStyleSubheadline;
  *(v35 + 2) = 0;
  v47 = v68;
  (*(v37 + 104))(v35, enum case for FontUseCase.preferredFont(_:), v68);
  v69(v35, 0, 1, v47);
  v48 = v46;
  v49 = UIFontTextStyleSubheadline;
  sub_75BA40();

  v50 = v71;
  v51 = *&v30[v71];
  v52 = v51;
  v53 = [v39 traitCollection];
  v54 = v74;
  v55 = ObjectType;
  sub_6960C0(v51, v74);

  v56 = sub_76A3F0();
  (*(*(v56 - 8) + 56))(v54, 0, 1, v56);
  sub_76A420();

  v57 = sub_69635C();
  sub_18184(v57, v58);

  [*&v30[v50] addTarget:v39 action:"handleTapWithGestureRecognizer:" forControlEvents:64];
  v59 = *&v30[v72];
  v61 = v75;
  v60 = v76;
  v62 = v77;
  (*(v76 + 104))(v75, enum case for CornerStyle.continuous(_:), v77);
  v63 = v59;
  sub_759200();

  (*(v60 + 8))(v61, v62);
  v64 = OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_appEventTapGestureRecognizer;
  v65 = *&v39[OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_appEventTapGestureRecognizer];
  [v65 addTarget:v39 action:"handleTapWithGestureRecognizer:"];

  [v39 addGestureRecognizer:*&v39[v64]];
  sub_BD88(&qword_9477F0, qword_780200);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_77B6D0;
  *(v66 + 32) = sub_767B80();
  *(v66 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(swift_allocObject() + 16) = v55;
  sub_769F40();

  swift_unknownObjectRelease();

  return v39;
}

id sub_68F090(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_69635C();
  sub_696380(v5, v6, a3, &off_89C458);

  v7 = [a1 traitCollection];
  v8 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_titleLabel];
  if (qword_93E070 != -1)
  {
    swift_once();
  }

  v9 = sub_7631F0();
  sub_BE38(v9, qword_9A06E0);
  v10.super.isa = v7;
  [v8 setNumberOfLines:sub_7631B0(v10)];

  return [a1 setNeedsLayout];
}

id sub_68F1E4()
{
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_appEventTapGestureRecognizer] removeTarget:v0 action:0];
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_viewButton] removeTarget:v0 action:"handleTapWithGestureRecognizer:" forControlEvents:0xFFFFFFFFLL];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CondensedAppEventCardView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_68F380()
{
  v1 = v0;
  v2 = sub_BD88(&qword_93F3C8, &unk_77E070);
  v123 = *(v2 - 8);
  v124 = v2;
  __chkstk_darwin(v2);
  v122 = &v90 - v3;
  v4 = sub_7632B0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7632D0();
  v120 = *(v8 - 8);
  *&v121 = v8;
  __chkstk_darwin(v8);
  v119 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_7664F0();
  v107 = *(v10 - 8);
  v108 = v10;
  __chkstk_darwin(v10);
  v106 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_766E60();
  v128 = *(v126 - 8);
  __chkstk_darwin(v126);
  v103 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_766E50();
  v129 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_766E00();
  v127 = *(v125 - 8);
  __chkstk_darwin(v125);
  v15 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_766EA0();
  v16 = *(v105 - 8);
  __chkstk_darwin(v105);
  v104 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CondensedAppEventCardView();
  v148.receiver = v0;
  v148.super_class = v18;
  objc_msgSendSuper2(&v148, "layoutSubviews");
  sub_75D650();
  v20 = v19;
  v22 = v21;
  v23 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_appEventFormattedDateView];
  sub_26DAA8(v145);
  v24 = sub_270D88(v0, v145, v20, v22);
  v26 = v25;
  sub_37538(v145);
  [v23 setFrame:{0.0, 0.0, v24, v26}];
  v27 = [v0 traitCollection];
  v28 = sub_769A00();

  if (v28)
  {
    v95 = v16;
    if (qword_93E068 != -1)
    {
      swift_once();
    }

    v29 = sub_BE38(v4, qword_9A06C8);
    v30 = type metadata accessor for AppPromotionFormattedDateView();
    v147 = &protocol witness table for UIView;
    v146 = v30;
    v145[0] = v23;
    v31 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_titleLabel];
    v32 = sub_75BB20();
    v144 = &protocol witness table for UILabel;
    v143 = v32;
    v142[0] = v31;
    v33 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_viewButton];
    v34 = sub_3DA82C();
    v141 = &protocol witness table for UIView;
    v140 = v34;
    v139 = v33;
    v35 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_artworkView];
    v137 = sub_759210();
    v138 = &protocol witness table for UIView;
    v136 = v35;
    sub_BD88(&qword_93F458, &unk_77E270);
    v36 = *(sub_766E90() - 8);
    v99 = *(v36 + 72);
    v37 = *(v36 + 80);
    v94 = v1;
    v38 = (v37 + 32) & ~v37;
    v39 = swift_allocObject();
    v93 = v39;
    *(v39 + 16) = xmmword_782440;
    v124 = v39 + v38;
    v40 = v23;
    v41 = v31;
    v42 = v33;
    v43 = v35;
    sub_763240();
    v97 = v29;
    sub_763260();
    v92 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
    v44 = v127;
    v98 = *(v127 + 104);
    v100 = v127 + 104;
    v45 = v15;
    v98(v15);
    v46 = sub_BD88(&unk_960ED0, &qword_784ED0);
    v47 = *(v129 + 72);
    v109 = *(v129 + 80);
    v96 = (v109 + 32) & ~v109;
    v122 = v47;
    v123 = 3 * v47;
    v110 = 2 * v47;
    v111 = v46;
    v48 = swift_allocObject();
    v121 = xmmword_77DC20;
    *(v48 + 16) = xmmword_77DC20;
    sub_766E40();
    sub_766E20();
    sub_766E30();
    v131[0] = v48;
    v119 = sub_692CDC(&qword_93F448, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
    v118 = sub_BD88(&unk_960EE0, &unk_77E260);
    v120 = sub_1EDC8();
    v50 = v101;
    v49 = v102;
    sub_76A5A0();
    v117 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v51 = v128;
    v52 = *(v128 + 104);
    v115 = v128 + 104;
    v116 = v52;
    v53 = v103;
    v54 = v126;
    v52(v103);
    sub_766E80();
    v55 = *(v51 + 8);
    v128 = v51 + 8;
    v114 = v55;
    v55(v53, v54);
    v56 = *(v129 + 8);
    v129 += 8;
    v113 = v56;
    v56(v50, v49);
    v57 = *(v44 + 8);
    v127 = v44 + 8;
    v112 = v57;
    v58 = v125;
    v57(v45, v125);
    sub_34630(v132);
    sub_BEB8(v133);
    sub_763230();
    memset(v132, 0, 40);
    v91 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
    v59 = v98;
    v98(v45);
    v60 = swift_allocObject();
    *(v60 + 16) = v121;
    sub_766E40();
    sub_766E20();
    sub_766E30();
    v131[0] = v60;
    sub_76A5A0();
    v61 = v126;
    v116(v53, v117, v126);
    v62 = v99;
    sub_766E80();
    v114(v53, v61);
    v113(v50, v49);
    v112(v45, v58);
    sub_34630(v132);
    sub_BEB8(v133);
    v90 = 2 * v62;
    v63 = v143;
    v64 = v144;
    v65 = sub_B170(v142, v143);
    v134 = v63;
    v135 = v64[1];
    v66 = sub_B1B4(v133);
    (*(*(v63 - 8) + 16))(v66, v65, v63);
    sub_763220();
    sub_763270();
    (v59)(v45, v91, v58);
    v67 = swift_allocObject();
    *(v67 + 16) = v121;
    sub_766E40();
    sub_766E20();
    sub_766E30();
    v130 = v67;
    sub_76A5A0();
    v68 = v126;
    v116(v53, v117, v126);
    v69 = v90;
    sub_766E80();
    v114(v53, v68);
    v113(v50, v49);
    v70 = v125;
    v112(v45, v125);
    sub_34630(v131);
    sub_BEB8(v132);
    sub_BEB8(v133);
    v99 += v69;
    v134 = &type metadata for Double;
    v135 = &protocol witness table for Double;
    v133[0] = 0x4030000000000000;
    sub_763250();
    (v98)(v45, v92, v70);
    v71 = swift_allocObject();
    *(v71 + 16) = v121;
    sub_766E40();
    sub_766E20();
    sub_766E30();
    v131[0] = v71;
    sub_76A5A0();
    v72 = v126;
    v116(v53, v117, v126);
    sub_766E80();
    v114(v53, v72);
    v113(v50, v49);
    v112(v45, v70);
    sub_34630(v132);
    sub_BEB8(v133);
    v73 = v104;
    sub_766E70();
    sub_BEB8(&v136);
    sub_BEB8(&v139);
    sub_BEB8(v142);
    sub_BEB8(v145);
    v75 = v105;
    v74 = v106;
    sub_7672C0();
    (*(v107 + 8))(v74, v108);
    return (*(v95 + 8))(v73, v75);
  }

  else
  {
    if (qword_93E068 != -1)
    {
      swift_once();
    }

    v77 = sub_BE38(v4, qword_9A06C8);
    (*(v5 + 16))(v7, v77, v4);
    v78 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_artworkView];
    v146 = sub_759210();
    v147 = sub_692CDC(&unk_93E520, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v145[0] = v78;
    v133[0] = v23;
    type metadata accessor for AppPromotionFormattedDateView();
    v79 = v78;
    sub_7665D0();
    v80 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_titleLabel];
    v81 = sub_75BB20();
    v141 = &protocol witness table for UILabel;
    v140 = v81;
    v139 = v80;
    v82 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_viewButton];
    v137 = sub_3DA82C();
    v138 = &protocol witness table for UIButton;
    v136 = v82;
    v83 = v80;
    v84 = v82;
    v85 = v119;
    sub_7632C0();
    v86 = [v1 traitCollection];
    sub_692CDC(&qword_93F3D0, &type metadata accessor for CondensedSearchResultCardLayout, &protocol conformance descriptor for CondensedSearchResultCardLayout);
    v87 = v122;
    v88 = v121;
    sub_766730();
    swift_getOpaqueTypeConformance2();
    v89 = v124;
    sub_7673E0();

    (*(v123 + 8))(v87, v89);
    return (*(v120 + 8))(v85, v88);
  }
}

double sub_690440(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v116 = sub_BD88(&qword_93F3C8, &unk_77E070);
  v111 = *(v116 - 8);
  __chkstk_darwin(v116);
  v6 = &v82 - v5;
  v110 = sub_7632D0();
  v7 = *(v110 - 8);
  __chkstk_darwin(v110);
  v9 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_766E60();
  v119 = *(v117 - 8);
  __chkstk_darwin(v117);
  v93 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_766E50();
  v120 = *(v92 - 8);
  __chkstk_darwin(v92);
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_766E00();
  v118 = *(v114 - 8);
  __chkstk_darwin(v114);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_7632B0();
  v112 = *(v15 - 8);
  v113 = v15;
  __chkstk_darwin(v15);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_766EA0();
  v95 = *(v18 - 8);
  v96 = v18;
  __chkstk_darwin(v18);
  v94 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_769A00())
  {
    sub_7632A0();
    v20 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_appEventFormattedDateView];
    v137 = type metadata accessor for AppPromotionFormattedDateView();
    v138 = &protocol witness table for UIView;
    v136 = v20;
    v21 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_titleLabel];
    v134 = sub_75BB20();
    v135 = &protocol witness table for UILabel;
    v133[0] = v21;
    v22 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_viewButton];
    v131 = sub_3DA82C();
    v132 = &protocol witness table for UIView;
    v130 = v22;
    v23 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_artworkView];
    v128 = sub_759210();
    v129 = &protocol witness table for UIView;
    v127 = v23;
    sub_BD88(&qword_93F458, &unk_77E270);
    v24 = *(sub_766E90() - 8);
    v90 = *(v24 + 72);
    v25 = *(v24 + 80);
    v88 = v3;
    v26 = (v25 + 32) & ~v25;
    v27 = swift_allocObject();
    v87 = v27;
    *(v27 + 16) = xmmword_782440;
    v116 = v27 + v26;
    v28 = v20;
    v29 = v21;
    v30 = v22;
    v31 = v23;
    v115 = v17;
    sub_763240();
    sub_763260();
    v86 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
    v32 = v118;
    v33 = *(v118 + 104);
    v89 = v118 + 104;
    v97 = v33;
    v33(v14);
    v91 = sub_BD88(&unk_960ED0, &qword_784ED0);
    v34 = *(v120 + 72);
    v35 = *(v120 + 80);
    v36 = (v35 + 32) & ~v35;
    v110 = 3 * v34;
    v111 = v35;
    v108 = v34;
    v109 = 2 * v34;
    v37 = swift_allocObject();
    v107 = xmmword_77DC20;
    *(v37 + 16) = xmmword_77DC20;
    sub_766E40();
    sub_766E20();
    sub_766E30();
    v122[0] = v37;
    v106 = sub_692CDC(&qword_93F448, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
    v105 = sub_BD88(&unk_960EE0, &unk_77E260);
    v99 = sub_1EDC8();
    v38 = v92;
    sub_76A5A0();
    v104 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v39 = v119;
    v40 = *(v119 + 104);
    v102 = v119 + 104;
    v103 = v40;
    v41 = v93;
    v42 = v117;
    v40(v93);
    sub_766E80();
    v98 = *(v39 + 8);
    v119 = v39 + 8;
    v98(v41, v42);
    v43 = *(v120 + 8);
    v120 += 8;
    v101 = v43;
    v43(v12, v38);
    v44 = *(v32 + 8);
    v118 = v32 + 8;
    v100 = v44;
    v45 = v114;
    v44(v14, v114);
    sub_34630(v123);
    sub_BEB8(v124);
    sub_763230();
    memset(v123, 0, 40);
    v85 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
    v97(v14);
    v84 = v36;
    v46 = swift_allocObject();
    *(v46 + 16) = v107;
    sub_766E40();
    sub_766E20();
    sub_766E30();
    v122[0] = v46;
    sub_76A5A0();
    v47 = v117;
    v103(v41, v104, v117);
    v48 = v90;
    sub_766E80();
    v98(v41, v47);
    v101(v12, v38);
    v100(v14, v45);
    sub_34630(v123);
    sub_BEB8(v124);
    v83 = 2 * v48;
    v49 = v134;
    v50 = v135;
    v51 = sub_B170(v133, v134);
    v125 = v49;
    v126 = v50[1];
    v52 = sub_B1B4(v124);
    (*(*(v49 - 8) + 16))(v52, v51, v49);
    sub_763220();
    sub_763270();
    v53 = v45;
    (v97)(v14, v85, v45);
    v54 = swift_allocObject();
    *(v54 + 16) = v107;
    sub_766E40();
    sub_766E20();
    sub_766E30();
    v121 = v54;
    sub_76A5A0();
    v55 = v117;
    v103(v41, v104, v117);
    v56 = v83;
    sub_766E80();
    v98(v41, v55);
    v101(v12, v38);
    v100(v14, v53);
    sub_34630(v122);
    sub_BEB8(v123);
    sub_BEB8(v124);
    v90 += v56;
    v125 = &type metadata for Double;
    v126 = &protocol witness table for Double;
    v124[0] = 0x4030000000000000;
    sub_763250();
    (v97)(v14, v86, v53);
    v57 = swift_allocObject();
    *(v57 + 16) = v107;
    sub_766E40();
    sub_766E20();
    sub_766E30();
    v122[0] = v57;
    sub_76A5A0();
    v58 = v117;
    v103(v41, v104, v117);
    sub_766E80();
    v98(v41, v58);
    v101(v12, v38);
    v100(v14, v53);
    sub_34630(v123);
    sub_BEB8(v124);
    v59 = v94;
    sub_766E70();
    (*(v112 + 8))(v115, v113);
    sub_BEB8(&v127);
    sub_BEB8(&v130);
    sub_BEB8(v133);
    sub_BEB8(&v136);
    v60 = [v88 traitCollection];
    sub_7671D0();
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_77D9F0;
    *(v61 + 32) = v60;
    v62 = v60;
    v63 = sub_7671E0();
    v64 = v96;
    sub_7665A0();
    v66 = v65;

    (*(v95 + 8))(v59, v64);
  }

  else
  {
    v68 = v112;
    v67 = v113;
    if (qword_93E068 != -1)
    {
      swift_once();
    }

    v69 = sub_BE38(v67, qword_9A06C8);
    (*(v68 + 16))(v17, v69, v67);
    v70 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_artworkView];
    v137 = sub_759210();
    v138 = sub_692CDC(&unk_93E520, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v136 = v70;
    v71 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_appEventFormattedDateView];
    v134 = type metadata accessor for AppPromotionFormattedDateView();
    v135 = sub_692CDC(&qword_960EF8, type metadata accessor for AppPromotionFormattedDateView, &unk_78EEEC);
    v133[0] = v71;
    v72 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_titleLabel];
    v131 = sub_75BB20();
    v132 = &protocol witness table for UILabel;
    v130 = v72;
    v73 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_viewButton];
    v128 = sub_3DA82C();
    v129 = &protocol witness table for UIButton;
    v127 = v73;
    v74 = v70;
    v75 = v71;
    v76 = v72;
    v77 = v73;
    sub_7632C0();
    sub_692CDC(&qword_93F3D0, &type metadata accessor for CondensedSearchResultCardLayout, &protocol conformance descriptor for CondensedSearchResultCardLayout);
    v78 = v110;
    sub_766730();
    swift_getOpaqueTypeConformance2();
    v79 = v116;
    sub_7673F0();
    v66 = v80;
    (*(v111 + 8))(v6, v79);
    (*(v7 + 8))(v9, v78);
  }

  return v66;
}

double sub_6913F4()
{
  v108 = sub_766E60();
  v112 = *(v108 - 8);
  __chkstk_darwin(v108);
  v82 = &v68 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_766E50();
  v113 = *(v81 - 8);
  __chkstk_darwin(v81);
  v80 = &v68 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_766E00();
  v3 = *(v2 - 8);
  v110 = v2;
  v111 = v3;
  __chkstk_darwin(v2);
  v77 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_766EA0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v83 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_7664A0();
  v8 = *(v106 - 8);
  __chkstk_darwin(v106);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_762D10();
  v107 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_75DAB0();
  __chkstk_darwin(v14 - 8);
  v15 = sub_7656C0();
  v78 = *(v15 - 8);
  v79 = v15;
  __chkstk_darwin(v15);
  v91 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7583C0();
  sub_692CDC(&qword_93F5B0, &type metadata accessor for AppEventSearchResult, &protocol conformance descriptor for SearchResult);
  sub_75C750();
  if (!v123[0])
  {
    return 0.0;
  }

  v105 = v11;
  v90 = v123[0];
  sub_75C720();
  if (qword_93D050 != -1)
  {
    swift_once();
  }

  sub_765660();
  sub_765630();
  v18 = v17;
  v20 = v19;
  swift_getKeyPath();
  sub_75C7B0();

  v21 = v123[0];
  if (qword_93E068 != -1)
  {
    swift_once();
  }

  v22 = sub_7632B0();
  v109 = sub_BE38(v22, qword_9A06C8);
  sub_763210();
  v23 = sub_7670D0();
  swift_allocObject();
  v89 = sub_7670B0();
  if (qword_93C840 != -1)
  {
    swift_once();
  }

  v75 = v6;
  v76 = v5;
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_53DA04(&unk_99C330, v21, v18, v20);
  swift_unknownObjectRelease();
  swift_allocObject();
  v88 = sub_7670A0();
  sub_7583A0();
  sub_7586C0();
  v104 = v24;

  if (qword_93E070 != -1)
  {
    swift_once();
  }

  v25 = sub_7631F0();
  sub_BE38(v25, qword_9A06E0);
  sub_7631E0();
  v26 = v106;
  (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v106);
  v27.super.isa = [v21 traitCollection];
  isa = v27.super.isa;
  sub_766490(v27);

  (*(v8 + 8))(v10, v26);
  v29 = sub_7653B0();
  v124 = v29;
  v125 = sub_692CDC(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v30 = sub_B1B4(v123);
  (*(*(v29 - 8) + 104))(v30, enum case for Feature.measurement_with_labelplaceholder(_:), v29);
  sub_765C30();
  sub_BEB8(v123);
  sub_762D00();
  sub_762CE0();
  (*(v107 + 8))(v13, v105);
  sub_763200();
  swift_allocObject();
  v31 = sub_7670B0();
  v122[3] = v23;
  v122[4] = &protocol witness table for LayoutViewPlaceholder;
  v121[4] = &protocol witness table for LayoutViewPlaceholder;
  v122[0] = v88;
  v121[3] = v23;
  v121[0] = v31;
  v74 = v31;
  v120[4] = &protocol witness table for LayoutViewPlaceholder;
  v120[3] = v23;
  v120[0] = v89;
  sub_BD88(&qword_93F458, &unk_77E270);
  v32 = *(sub_766E90() - 8);
  v87 = *(v32 + 72);
  v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v34 = swift_allocObject();
  v73 = v34;
  *(v34 + 16) = xmmword_782440;
  v92 = v34 + v33;

  sub_763240();
  sub_763260();
  v71 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v35 = v111;
  v36 = *(v111 + 104);
  v93 = v111 + 104;
  v94 = v36;
  v72 = v21;
  v37 = v77;
  v36(v77);
  v95 = sub_BD88(&unk_960ED0, &qword_784ED0);
  v38 = *(v113 + 72);
  v39 = *(v113 + 80);
  v85 = (v39 + 32) & ~v39;
  v106 = 3 * v38;
  v107 = v39;
  v104 = v38;
  v105 = 2 * v38;
  v40 = swift_allocObject();
  v103 = xmmword_77DC20;
  *(v40 + 16) = xmmword_77DC20;
  sub_766E40();
  sub_766E20();
  sub_766E30();
  v115[0] = v40;
  v101 = sub_692CDC(&qword_93F448, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
  v100 = sub_BD88(&unk_960EE0, &unk_77E260);
  v102 = sub_1EDC8();
  v41 = v80;
  v42 = v81;
  sub_76A5A0();
  v99 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v43 = v112;
  v44 = *(v112 + 104);
  v97 = v112 + 104;
  v98 = v44;
  v45 = v82;
  v46 = v108;
  v44(v82);
  sub_766E80();
  v84 = *(v43 + 8);
  v112 = v43 + 8;
  v84(v45, v46);
  v86 = *(v113 + 8);
  v113 += 8;
  v86(v41, v42);
  v47 = *(v35 + 8);
  v111 = v35 + 8;
  v96 = v47;
  v47(v37, v110);
  sub_34630(v116);
  sub_BEB8(v117);
  sub_763230();
  memset(v116, 0, 40);
  v70 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  v94(v37);
  v48 = swift_allocObject();
  *(v48 + 16) = v103;
  sub_766E40();
  sub_766E20();
  sub_766E30();
  v115[0] = v48;
  sub_76A5A0();
  v98(v45, v99, v46);
  v49 = v87;
  sub_766E80();
  v50 = v84;
  v84(v45, v46);
  v86(v41, v42);
  v51 = v110;
  v96(v37, v110);
  sub_34630(v116);
  sub_BEB8(v117);
  v69 = 2 * v49;
  v52 = v124;
  v53 = v125;
  v54 = sub_B170(v123, v124);
  v118 = v52;
  v119 = *(v53 + 8);
  v55 = sub_B1B4(v117);
  (*(*(v52 - 8) + 16))(v55, v54, v52);
  sub_763220();
  sub_763270();
  (v94)(v37, v70, v51);
  v56 = swift_allocObject();
  *(v56 + 16) = v103;
  sub_766E40();
  sub_766E20();
  sub_766E30();
  v114 = v56;
  sub_76A5A0();
  v57 = v108;
  v98(v45, v99, v108);
  v58 = v69;
  sub_766E80();
  v50(v45, v57);
  v59 = v86;
  v86(v41, v42);
  v60 = v110;
  v96(v37, v110);
  sub_34630(v115);
  sub_BEB8(v116);
  sub_BEB8(v117);
  v87 += v58;
  v118 = &type metadata for Double;
  v119 = &protocol witness table for Double;
  v117[0] = 0x4030000000000000;
  sub_763250();
  (v94)(v37, v71, v60);
  v61 = swift_allocObject();
  *(v61 + 16) = v103;
  sub_766E40();
  sub_766E20();
  sub_766E30();
  v115[0] = v61;
  sub_76A5A0();
  v62 = v108;
  v98(v45, v99, v108);
  sub_766E80();
  v84(v45, v62);
  v59(v41, v42);
  v96(v37, v60);
  sub_34630(v116);
  sub_BEB8(v117);
  v63 = v83;
  sub_766E70();
  sub_BEB8(v120);
  sub_BEB8(v121);
  sub_BEB8(v122);
  v64 = v76;
  sub_7665A0();
  v66 = v65;
  swift_unknownObjectRelease();

  (*(v78 + 8))(v91, v79);
  sub_BEB8(v123);
  (*(v75 + 8))(v63, v64);
  return v66;
}

double sub_692450()
{
  v50 = sub_7632B0();
  __chkstk_darwin(v50);
  v55 = &v48 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_7632D0();
  v60 = *(v1 - 8);
  v61 = v1;
  __chkstk_darwin(v1);
  v58 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_766D70();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_7666D0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_767030();
  v8 = *(v54 - 8);
  __chkstk_darwin(v54);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v48 - v12;
  __chkstk_darwin(v14);
  v51 = &v48 - v15;
  v16 = sub_75DAB0();
  __chkstk_darwin(v16 - 8);
  v17 = sub_7656C0();
  v52 = *(v17 - 8);
  v53 = v17;
  __chkstk_darwin(v17);
  v64 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7583C0();
  sub_692CDC(&qword_93F5B0, &type metadata accessor for AppEventSearchResult, &protocol conformance descriptor for SearchResult);
  sub_75C750();
  v63 = v74[0];
  if (!v74[0])
  {
    return 0.0;
  }

  v49 = v5;
  sub_75C720();
  if (qword_93D050 != -1)
  {
    swift_once();
  }

  sub_765660();
  sub_765630();
  v20 = v19;
  v22 = v21;
  swift_getKeyPath();
  sub_75C7B0();

  v23 = v74[0];
  swift_getObjectType();
  v48 = [v23 traitCollection];
  v62 = sub_7583A0();
  if (qword_93E068 != -1)
  {
    swift_once();
  }

  sub_BE38(v50, qword_9A06C8);
  sub_763210();
  v25 = v24;
  v27 = v26;
  if (qword_93C840 != -1)
  {
    swift_once();
  }

  swift_unknownObjectRetain();
  v28 = sub_53DA04(&unk_99C330, v23, v20, v22);
  v30 = v29;
  swift_unknownObjectRelease();
  sub_767020();
  v31 = v49;
  v50 = v23;
  if (qword_93E070 != -1)
  {
    swift_once();
  }

  v32 = sub_7631F0();
  sub_BE38(v32, qword_9A06E0);
  sub_7631E0();
  sub_766FF0();
  v31[1](v7, v4);
  v33 = *(v8 + 8);
  v34 = v54;
  (v33)(v10, v54);
  v49 = v33;
  v35 = v48;
  v36.super.isa = v48;
  sub_7631B0(v36);
  v37 = v51;
  sub_767010();
  (v33)(v13, v34);
  sub_7586C0();
  (*(v8 + 16))(v13, v37, v34);
  sub_766D50();
  v38 = v56;
  sub_766D90();
  v74[3] = &type metadata for FixedSizedPlaceholder;
  v39 = sub_1ECC4();
  v74[4] = v39;
  *v74 = v28;
  v74[1] = v30;
  v40 = v59;
  v73[3] = v59;
  v73[4] = &protocol witness table for LabelPlaceholder;
  v41 = sub_B1B4(v73);
  v42 = v57;
  (*(v57 + 16))(v41, v38, v40);
  v71 = &type metadata for FixedSizedPlaceholder;
  v72 = v39;
  v70 = xmmword_7AC960;
  v69[3] = &type metadata for FixedSizedPlaceholder;
  v69[4] = v39;
  v69[0] = v25;
  v69[1] = v27;
  sub_7632A0();
  sub_134D8(v69, &v68);
  sub_134D8(v74, &v67);
  sub_134D8(v73, &v66);
  sub_134D8(&v70, &v65);
  v43 = v58;
  sub_7632C0();
  sub_BEB8(v69);
  sub_BEB8(&v70);
  sub_BEB8(v73);
  sub_BEB8(v74);
  sub_692CDC(&qword_960EF0, &type metadata accessor for CondensedSearchResultCardLayout, &protocol conformance descriptor for CondensedSearchResultCardLayout);
  v44 = v61;
  sub_7673F0();
  v46 = v45;
  swift_unknownObjectRelease();

  (*(v60 + 8))(v43, v44);
  (*(v42 + 8))(v38, v40);
  (v49)(v37, v34);
  (*(v52 + 8))(v64, v53);
  return v46;
}

uint64_t sub_692CDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_692D24()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_appEventFormattedDateView;
  *(v1 + v2) = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_titleLabel;
  sub_75BB20();
  *(v1 + v3) = sub_75BB00();
  v4 = OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_viewButton;
  *(v1 + v4) = [objc_opt_self() buttonWithType:0];
  v5 = OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_artworkView;
  if (qword_93E068 != -1)
  {
    swift_once();
  }

  v6 = sub_7632B0();
  sub_BE38(v6, qword_9A06C8);
  sub_763210();
  *(v1 + v5) = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, v7, v8}];
  v9 = OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_appEventTapGestureRecognizer;
  *(v1 + v9) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v10 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_appEventViewTappedAction);
  *v10 = 0;
  v10[1] = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_692EEC(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  [*&v3[qword_963BA0] setHidden:(sub_75A280() & 1) == 0];
  v7 = *&v3[qword_963BA8];
  sub_75A2A0();
  if (v8)
  {
    v9 = sub_769210();
  }

  else
  {
    v9 = 0;
  }

  [v7 setText:v9];

  sub_396E8();
  if (a3)
  {
    v10 = [objc_allocWithZone(UIColor) initWithRed:0.388235294 green:0.388235294 blue:0.4 alpha:1.0];
    v11 = [objc_allocWithZone(UIColor) initWithRed:0.282352941 green:0.282352941 blue:0.290196078 alpha:1.0];
    v12 = [objc_allocWithZone(UIColor) initWithRed:0.682352941 green:0.682352941 blue:0.698039216 alpha:1.0];
    v13.super.isa = [objc_allocWithZone(UIColor) initWithRed:0.780392157 green:0.780392157 blue:0.8 alpha:1.0];
    v14.super.isa = v10;
    v15.super.isa = v11;
    v16.super.isa = v12;
    v17.super.isa = sub_76A110(v14, v15, v16, v13).super.isa;
  }

  else
  {
    v17.super.isa = sub_769FF0();
  }

  isa = v17.super.isa;
  [v7 setTextColor:v17.super.isa];

  v19 = v4[qword_963BB8];
  v4[qword_963BB8] = a2 & 1;
  if (v19 != (a2 & 1))
  {
    if (a2)
    {
      v20 = 0;
    }

    else
    {
      v20 = 6;
    }

    [v7 setNumberOfLines:v20];
    [v4 setNeedsLayout];
  }

  return sub_766CD0();
}

double sub_693154()
{
  v31 = sub_7656C0();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v1 = &v24 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_75FA00();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = &v24 - v4;
  v5 = sub_BD88(&unk_94F1F0, &qword_782290);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  v9 = sub_75DAB0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75B1B0();
  sub_693618(&qword_9404F8, &type metadata accessor for UpsellBreakout, &protocol conformance descriptor for UpsellBreakout);
  sub_75C750();
  v13 = v33;
  if (!v33)
  {
    return 0.0;
  }

  sub_75C720();
  sub_75DAA0();
  (*(v10 + 8))(v12, v9);
  swift_getKeyPath();
  sub_768750();

  (*(v6 + 8))(v8, v5);

  sub_768FA0();
  sub_693618(&qword_9486C0, &type metadata accessor for NilState, &protocol conformance descriptor for NilState);
  v14 = v25;
  sub_75C780();
  v15 = v28;
  sub_75C740();
  swift_getKeyPath();
  sub_75C7B0();

  sub_765630();
  v17 = v16;
  v19 = v18;
  (*(v29 + 8))(v1, v31);
  v20 = sub_527DE4();
  sub_1B4888(v17, v19, v13, v20);
  v22 = v21;
  swift_unknownObjectRelease();

  (*(v30 + 8))(v15, v32);
  (*(v26 + 8))(v14, v27);
  return v22;
}

uint64_t sub_693618(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_693664(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v19 = a3;
  v17 = sub_765240();
  v6 = *(v17 - 8);
  __chkstk_darwin(v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    swift_beginAccess();
    v10 = (a1 + 40);
    do
    {
      v11 = *v10;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;

        sub_765250();
        sub_765210();
        (*(v6 + 8))(v8, v17);
        sub_765330();
        v21 = 0;
        memset(v20, 0, sizeof(v20));
        v14 = swift_allocObject();
        *(v14 + 16) = a2;
        *(v14 + 24) = v11;
        v15 = a2;
        sub_75A040();

        sub_10A2C(v20, &unk_9443A0, &unk_77E240);
      }

      v10 += 2;
      --v9;
    }

    while (v9);
  }
}

double sub_693884(double a1, double a2, double a3, double a4, double a5, double a6, uint64_t a7, void *a8)
{
  v10 = sub_76A920();
  v47 = *(v10 - 8);
  v48 = v10;
  __chkstk_darwin(v10);
  v46 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_766CA0();
  v45 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_7666D0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v51 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44[3] = sub_75F2A0();
  v19 = v18;
  v44[1] = sub_75F300();
  v21 = v20;
  v44[2] = sub_75F310();
  v52 = v22;
  v49 = a1;
  sub_769DA0();
  if (qword_93C1E8 != -1)
  {
    swift_once();
  }

  sub_BE38(v15, qword_99A048);
  if (qword_93C200 != -1)
  {
    swift_once();
  }

  sub_BE38(v12, qword_99A090);
  v50 = v21;
  if (v21)
  {
    v23 = v19;
    v24 = a8;
    v25 = sub_7653B0();
    v54 = v25;
    v55 = sub_696070(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v26 = sub_B1B4(v53);
    (*(*(v25 - 8) + 104))(v26, enum case for Feature.measurement_with_labelplaceholder(_:), v25);
    sub_765C30();
    sub_BEB8(v53);
    a8 = v24;
    v19 = v23;
    sub_762CB0();
    sub_766720();
  }

  v27 = v52;
  v28 = v14;
  if (qword_93C1F0 != -1)
  {
    swift_once();
  }

  v29 = sub_BE38(v15, qword_99A060);
  (*(v16 + 16))(v51, v29, v15);
  v30 = v45;
  if (qword_93C208 != -1)
  {
    swift_once();
  }

  v31 = sub_BE38(v12, qword_99A0A8);
  (*(v30 + 16))(v28, v31, v12);
  if (v27)
  {
    v32 = sub_7653B0();
    v54 = v32;
    v55 = sub_696070(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v33 = sub_B1B4(v53);
    (*(*(v32 - 8) + 104))(v33, enum case for Feature.measurement_with_labelplaceholder(_:), v32);
    sub_765C30();
    sub_BEB8(v53);
    v34 = v51;
    sub_762CB0();
    sub_766720();
    (*(v30 + 8))(v28, v12);
    (*(v16 + 8))(v34, v15);
  }

  else
  {
    (*(v30 + 8))(v28, v12);
    (*(v16 + 8))(v51, v15);
  }

  v35 = v48;
  v36 = v46;
  if (qword_93C1E0 != -1)
  {
    swift_once();
  }

  sub_BE38(v15, qword_99A030);
  if (qword_93C1F8 != -1)
  {
    swift_once();
  }

  sub_BE38(v12, qword_99A078);
  if (v19)
  {
    v37 = sub_7653B0();
    v54 = v37;
    v55 = sub_696070(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v38 = sub_B1B4(v53);
    (*(*(v37 - 8) + 104))(v38, enum case for Feature.measurement_with_labelplaceholder(_:), v37);
    sub_765C30();
    sub_BEB8(v53);
    sub_762CB0();
    sub_766720();
  }

  v39 = [a8 traitCollection];
  sub_766470();
  sub_BE70(0, &qword_93F900, UIFont_ptr);
  v40 = sub_769E10();
  sub_766C70();
  sub_769E20();

  v41 = *(v47 + 8);
  v41(v36, v35);
  if (qword_93DCE0 != -1)
  {
    swift_once();
  }

  sub_BE38(v12, qword_99FDE8);
  sub_766470();
  sub_766700();
  v41(v36, v35);
  if (qword_93C1C8 != -1)
  {
    swift_once();
  }

  v42 = sub_766690();
  sub_BE38(v42, qword_99A008);
  sub_766650();
  sub_766660();

  return v49;
}

id sub_69421C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7, double a8, double a9, double a10)
{
  v222 = a5;
  v223 = a4;
  v215 = a3;
  v225 = a1;
  v226 = a2;
  v15 = sub_7652D0();
  __chkstk_darwin(v15 - 8);
  v195 = &v191 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_765240();
  v193 = *(v194 - 8);
  __chkstk_darwin(v194);
  v192 = &v191 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_BD88(&unk_948710, &qword_77FF90);
  __chkstk_darwin(v18 - 8);
  v210 = &v191 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v209 = &v191 - v21;
  v22 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v22 - 8);
  v208 = &v191 - v23;
  v24 = sub_75A6B0();
  __chkstk_darwin(v24 - 8);
  v207 = &v191 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v206 = &v191 - v27;
  v28 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v28 - 8);
  v205 = &v191 - v29;
  v203 = sub_75A6E0();
  v202 = *(v203 - 8);
  __chkstk_darwin(v203);
  v204 = &v191 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_75DC30();
  v212 = *(v213 - 8);
  __chkstk_darwin(v213);
  v211 = &v191 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = sub_764CF0();
  v228 = *(v231 - 8);
  __chkstk_darwin(v231);
  v230 = &v191 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_75CA40();
  v197 = *(v198 - 8);
  __chkstk_darwin(v198);
  v196 = &v191 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_BD88(&qword_94B8B0, &qword_78E920);
  __chkstk_darwin(v34 - 8);
  v216 = &v191 - v35;
  v218 = sub_75B1E0();
  v217 = *(v218 - 8);
  __chkstk_darwin(v218);
  v201 = &v191 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v214 = &v191 - v38;
  v229 = sub_761380();
  v227 = *(v229 - 8);
  __chkstk_darwin(v229);
  v220 = &v191 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v221 = &v191 - v41;
  __chkstk_darwin(v42);
  v44 = &v191 - v43;
  v45 = sub_766690();
  v224 = *(v45 - 8);
  __chkstk_darwin(v45);
  v47 = &v191 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_766EB0();
  v49 = *(v48 - 8);
  *&v50 = __chkstk_darwin(v48).n128_u64[0];
  v52 = &v191 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = [a6 contentView];
  [v53 setLayoutMargins:{a7, a8, a9, a10}];

  v232[0] = a6;
  v54 = type metadata accessor for EditorialSearchResultCollectionViewCell();
  v55 = sub_696070(&qword_960F08, type metadata accessor for EditorialSearchResultCollectionViewCell, &protocol conformance descriptor for NSObject);
  v56 = a6;
  v199 = v55;
  sub_76A6E0();
  sub_75D300();
  sub_1EB60(v233);
  v200 = v54;
  sub_75D650();
  if (qword_93C1C8 != -1)
  {
    goto LABEL_99;
  }

  while (1)
  {
    v57 = sub_BE38(v45, qword_99A008);
    v58 = v224;
    (*(v224 + 16))(v47, v57, v45);
    v191 = v47;
    sub_766EC0();
    sub_7665A0();
    v60 = v59;
    v62 = v61;
    (*(v49 + 8))(v52, v48);
    sub_75F2F0();
    v63 = v229;
    v64 = (*(v227 + 88))(v44, v229);
    v65 = v45;
    v219 = enum case for EditorialSearchResultType.appEventStory(_:);
    if (v64 == enum case for EditorialSearchResultType.category(_:) || v64 == enum case for EditorialSearchResultType.collection(_:) || v64 == enum case for EditorialSearchResultType.story(_:) || v64 == enum case for EditorialSearchResultType.appEventStory(_:))
    {
      v56[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_showEditorialIcon] = 1;
      [*&v56[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_editorialIcon] setHidden:0];
      [v56 setNeedsLayout];
    }

    else
    {
      v56[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_showEditorialIcon] = 0;
      [*&v56[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_editorialIcon] setHidden:1];
      [v56 setNeedsLayout];
      (*(v227 + 8))(v44, v63);
    }

    v66 = sub_75F2A0();
    sub_34E40(v66, v67);
    sub_75F300();
    v69 = v68;
    v70 = *&v56[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_titleLabel];
    if (v68)
    {
      v71 = sub_769210();
    }

    else
    {
      v71 = 0;
    }

    [v70 setText:v71];

    [v70 setHidden:v69 == 0];
    [v56 setNeedsLayout];
    sub_75F310();
    v73 = v72;
    v74 = *&v56[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_subtitleLabel];
    if (v72)
    {
      v75 = sub_769210();
    }

    else
    {
      v75 = 0;
    }

    [v74 setText:v75];

    [v74 setHidden:v73 == 0];
    [v56 setNeedsLayout];
    v76 = sub_75F2C0();
    v77 = v229;
    if (!v76)
    {
      goto LABEL_17;
    }

    v78 = v76;
    v79 = v216;
    sub_75F290();
    v80 = v217;
    v81 = v218;
    if ((*(v217 + 48))(v79, 1, v218) == 1)
    {
      break;
    }

    v52 = v214;
    (*(v80 + 32))(v214, v79, v81);
    v95 = v201;
    (*(v80 + 16))(v201, v52, v81);
    v96 = (*(v80 + 88))(v95, v81);
    if (v96 == enum case for ArtworkGridType.small(_:))
    {
      goto LABEL_23;
    }

    if (v96 == enum case for ArtworkGridType.large(_:))
    {
      v97 = 1;
    }

    else if (v96 == enum case for ArtworkGridType.extraLarge(_:))
    {
      v97 = 2;
    }

    else
    {
      if (v96 != enum case for ArtworkGridType.mixed(_:))
      {
        (*(v80 + 8))(v95, v81);
LABEL_23:
        v97 = 0;
        goto LABEL_42;
      }

      v97 = 3;
    }

LABEL_42:
    v112 = objc_allocWithZone(type metadata accessor for ArtworkGrid());
    v113 = sub_44CF14(v97, 0.0, 0.0, 0.0, 0.0);
    sub_432010();
    v114 = v113[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_gridType];
    v115.f64[0] = v60;
    v116 = sub_44C77C(v114, v115, v62);
    v49 = *(v78 + 16);
    if (v116 < v49)
    {
      v117.f64[0] = v60;
      v118 = sub_44C77C(v114, v117, v62);
      if ((v118 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v49 >= v118)
      {
        if (v49 == v118)
        {
LABEL_59:
          v48 = v78;
        }

        else
        {
          v213 = v113;
          v216 = v56;
          v119 = v78 + ((*(v228 + 80) + 32) & ~*(v228 + 80));
          v226 = v78;
          sub_4A61D4(v78, v119, 0, (2 * v118) | 1);
          v48 = v120;
LABEL_47:

          v56 = v216;
          v52 = v214;
          v113 = v213;
        }

        *&v113[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_expectedNumberOfArtworkImages] = *(v48 + 16);
        sub_44CD50();
        v125 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v126 = swift_allocObject();
        v126[2] = v113;
        v126[3] = v125;
        v127 = v222;
        v126[4] = v222;
        v128 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v129 = swift_allocObject();
        v129[2] = v113;
        v129[3] = v128;
        v129[4] = v127;
        v233[0] = v56;
        v130 = v113;
        swift_retain_n();
        v131 = v56;
        v132 = v130;
        sub_76A6E0();
        sub_75D2E0();

        sub_10A2C(v232, &unk_9443A0, &unk_77E240);
        sub_1EB60(v233);
        v133 = OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_artworkGrid;
        v134 = *&v131[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_artworkGrid];
        v135 = v132;
        if (v134)
        {
          [v134 removeFromSuperview];
          v136 = *&v131[v133];
        }

        else
        {
          v136 = 0;
        }

        v137 = v218;
        *&v131[v133] = v132;
        v138 = v132;

        sub_35458();
        (*(v217 + 8))(v52, v137);
LABEL_64:
        v77 = v229;
        goto LABEL_65;
      }

      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    if (v116 <= v49)
    {
      goto LABEL_59;
    }

    v224 = v116 - v49;
    if (v116 - v49 < 0)
    {
      goto LABEL_103;
    }

    if (v49)
    {
      v213 = v113;
      v216 = v56;

      v48 = v78;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_52;
      }

      goto LABEL_105;
    }

LABEL_104:
    __break(1u);
LABEL_105:
    v48 = sub_7B800(0, v49 + 1, 1, v78);
LABEL_52:
    v121 = 0;
    v47 = ((*(v228 + 80) + 32) & ~*(v228 + 80));
    v226 = v78;
    v45 = &v47[v78];
    v56 = (v228 + 16);
    v44 = (v228 + 32);
    while (1)
    {
      v122 = v121 % v49;
      if (v121 % v49 < 0)
      {
        break;
      }

      if (v122 >= *(v226 + 16))
      {
        goto LABEL_98;
      }

      v52 = *(v228 + 72);
      (*(v228 + 16))(v230, v45 + v52 * v122, v231);
      v124 = *(v48 + 16);
      v123 = *(v48 + 24);
      if (v124 >= v123 >> 1)
      {
        v48 = sub_7B800((v123 > 1), v124 + 1, 1, v48);
      }

      ++v121;
      *(v48 + 16) = v124 + 1;
      (*v44)(&v47[v48 + v124 * v52], v230, v231);
      if (v224 == v121)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    swift_once();
  }

  sub_10A2C(v79, &qword_94B8B0, &qword_78E920);
LABEL_17:
  if (!sub_75F280())
  {
    if (sub_75F2B0())
    {
      sub_759210();
      v98 = sub_759010();
      [v98 setContentMode:2];
      sub_765320();
      sub_696070(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_75A050();
      v99 = OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_editorialArtworkView;
      v100 = *&v56[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_editorialArtworkView];
      v101 = v98;
      if (v100)
      {
        [v100 removeFromSuperview];
        v102 = v56;
        v103 = *&v56[v99];
      }

      else
      {
        v102 = v56;
        v103 = 0;
      }

      *&v102[v99] = v98;
      v110 = v98;

      v111 = [v102 contentView];
      [v111 addSubview:v110];

      [v102 setNeedsLayout];

      v56 = v102;
    }

    else
    {
      if (!sub_75F270())
      {
        goto LABEL_65;
      }

      v104 = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      sub_765260();
      v105 = v191;
      sub_7666A0();
      sub_766610();
      (*(v58 + 8))(v105, v45);
      v106 = v192;
      sub_765250();
      sub_765210();
      (*(v193 + 8))(v106, v194);
      sub_765330();
      sub_7652E0();
      sub_7591B0();
      [v104 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540, UIColor_ptr);
        sub_76A030();
      }

      sub_759070();
      sub_696070(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_75A050();
      v107 = OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_iconArtworkView;
      v108 = *&v56[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_iconArtworkView];
      v109 = v104;
      if (v108)
      {
        [v108 removeFromSuperview];
        v108 = *&v56[v107];
      }

      *&v56[v107] = v104;
      v190 = v104;

      sub_35168();
    }

    goto LABEL_64;
  }

  (*(v202 + 104))(v204, enum case for VideoFillMode.scaleAspectFill(_:), v203);
  sub_764BC0();
  sub_765260();
  v82 = v205;
  sub_7666A0();

  (*(v58 + 56))(v82, 0, 1, v65);
  sub_764B60();
  sub_764BA0();
  sub_764B70();
  sub_764B50();
  sub_764BB0();
  v83 = v211;
  sub_75DC10();
  sub_75C360();
  sub_768880();
  v84 = v233[0];
  sub_764B40();
  v85 = v208;
  sub_764BD0();
  v86 = sub_7570A0();
  (*(*(v86 - 8) + 56))(v85, 0, 1, v86);
  v87 = v209;
  sub_764B90();
  v88 = v210;
  sub_764B80();
  type metadata accessor for VideoView(0);
  sub_696070(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
  v231 = v84;
  v89 = sub_75C340();
  sub_10A2C(v88, &unk_948710, &qword_77FF90);
  sub_10A2C(v87, &unk_948710, &qword_77FF90);
  sub_10A2C(v85, &unk_93FD30, qword_77F240);
  sub_10A2C(v233, &unk_9443A0, &unk_77E240);
  sub_3731C();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v91 = Strong;
    v92 = [v56 contentView];
    [v92 addSubview:v91];
  }

  [v56 setNeedsLayout];

  v93 = swift_unknownObjectWeakLoadStrong();
  if (v93)
  {
    v94 = v93;
    sub_764BC0();
    sub_765330();

    sub_696070(&unk_93F530, type metadata accessor for VideoView, &unk_7AD180);
    sub_75A050();

    (*(v212 + 8))(v83, v213);
  }

  else
  {
    (*(v212 + 8))(v83, v213);
  }

  v77 = v229;
LABEL_65:
  v139 = v221;
  sub_75F2F0();
  v140 = v227;
  v141 = v220;
  (*(v227 + 104))(v220, v219, v77);
  sub_696070(&qword_94B8B8, &type metadata accessor for EditorialSearchResultType, &protocol conformance descriptor for EditorialSearchResultType);
  sub_769430();
  sub_769430();
  if (v233[0] == v232[0] && v233[1] == v232[1])
  {
    v142 = *(v140 + 8);
    v142(v141, v77);
    v142(v139, v77);

    v143 = &selRef_setSpeed_;
LABEL_69:
    v147 = sub_75F2E0();
    if (v147 >> 62)
    {
      v148 = sub_76A860();
    }

    else
    {
      v148 = *(&dword_10 + (v147 & 0xFFFFFFFFFFFFFF8));
    }

    if (v148)
    {
      v149 = OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView;
      v150 = *&v56[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView];
      if (v150)
      {
        goto LABEL_73;
      }

      v162 = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v163 = *&v56[v149];
      if (v163)
      {
        [v163 removeFromSuperview];
        v164 = *&v56[v149];
      }

      else
      {
        v164 = 0;
      }

      *&v56[v149] = v162;
      v177 = v162;

      if (v177)
      {
        v178 = v177[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_style];
        v177[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_style] = 6;
        sub_26B40C(v178);
        v179 = [v56 contentView];
        [v179 addSubview:v177];
      }

      [v56 setNeedsLayout];

      v180 = *&v56[v149];
      if (v180)
      {
        type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
        v181 = v180;
        sub_7688F0();
        v182 = v233[0];
        v183 = v56;
        v184 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
        v185 = *&v181[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
        v186 = v185;
        sub_26CAC0(v182);
        v187 = *&v181[v184];
        *&v181[v184] = v182;
        v56 = v183;
        v143 = &selRef_setSpeed_;
        v188 = v182;

        sub_26CC24(v185);
        v189 = *&v56[v149];
        if (v189)
        {
          *(v189 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_delegate + 8) = &off_880968;
          swift_unknownObjectWeakAssign();
          v150 = *&v56[v149];
          if (v150)
          {
LABEL_73:
            v151 = v150;
            v152 = [v56 contentView];
            [v152 bringSubviewToFront:v151];

            v153 = sub_75F2E0();
            sub_268FDC(v153);
          }
        }
      }
    }

    v154 = OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView;
    v155 = *&v56[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView];
    if (v155)
    {
      v156 = v155;
      v157 = sub_75F320();
      v158 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_backgroundView;
      swift_beginAccess();
      v159 = *&v156[v158];
      if (v159)
      {
        v160 = v143[457];
        v161 = v159;
        [v161 v160];
      }

      else
      {

        v156 = v157;
      }

      v165 = *&v56[v154];
      if (v165)
      {
        v166 = v165;
        v167 = v196;
        sub_75F2D0();
        v168 = sub_75CA20();
        (*(v197 + 8))(v167, v198);
        [v166 setOverrideUserInterfaceStyle:v168];
      }
    }

    v169 = OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_editorialArtworkView;
    v170 = *&v56[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_editorialArtworkView];
    if (v170)
    {
      v171 = v170;
      sub_75CD10();

      v172 = *&v56[v169];
      if (v172)
      {
        v173 = v172;
        if (!sub_75F320())
        {
          v174 = [objc_opt_self() clearColor];
        }

        sub_75CD00();
      }
    }
  }

  else
  {
    v144 = sub_76A950();
    v145 = v77;
    v146 = *(v140 + 8);
    v146(v141, v145);
    v146(v139, v145);

    v143 = &selRef_setSpeed_;
    if (v144)
    {
      goto LABEL_69;
    }
  }

  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v175 = sub_76A000();
  [v56 v143[457]];

  return [v56 setNeedsLayout];
}

uint64_t sub_695FF0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_696038()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_696070(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_6960C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_76A270();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_954ED0, &unk_77E060);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  if (!a1)
  {
    v13 = sub_76A3F0();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
    goto LABEL_5;
  }

  sub_76A410();
  v11 = sub_76A3F0();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_5:
    sub_502E14(v10);
    sub_76A360();
    goto LABEL_6;
  }

  (*(v12 + 32))(a2, v10, v11);
LABEL_6:
  (*(v5 + 104))(v7, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v4);
  sub_76A280();
  v14 = objc_opt_self();
  v15 = [v14 systemBlueColor];
  sub_76A320();
  sub_396E8();
  v16 = [v14 whiteColor];
  v17.super.isa = [v14 tertiarySystemGroupedBackgroundColor];
  v18.super.isa = v16;
  sub_76A0C0(v18, v17);
  sub_76A310();
  return sub_76A2C0();
}

uint64_t sub_69635C()
{
  v1._object = 0x80000000007F0710;
  v1._countAndFlagsBits = 0xD000000000000016;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  return sub_75B750(v1, v2);
}

uint64_t sub_696380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51[1] = a1;
  v7 = sub_BD88(&qword_93F428, &unk_79F050);
  __chkstk_darwin(v7 - 8);
  v51[0] = v51 - v8;
  v57 = sub_7664A0();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7666D0();
  v61 = *(v11 - 8);
  __chkstk_darwin(v11);
  v52 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v60 = v51 - v14;
  v15 = sub_756F10();
  __chkstk_darwin(v15 - 8);
  v16 = sub_756EB0();
  v58 = *(v16 - 8);
  v59 = v16;
  __chkstk_darwin(v16);
  v18 = v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_BD88(&unk_954ED0, &unk_77E060);
  __chkstk_darwin(v19 - 8);
  v54 = v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v21);
  v24 = v51 - v23;
  v25 = *(a4 + 16);
  v62 = a3;
  v63 = a4;
  v26 = a4;
  v27 = v4;
  v53 = v25;
  v28 = (v25)(a3, v26, v22);
  sub_76A410();

  sub_756F00();
  sub_756EC0();
  v64 = v27;
  v29 = [v27 traitCollection];
  v30 = sub_769350();
  v56 = v18;
  if (v29 && (sub_769A00() & 1) != 0)
  {
    if (v30 < 9)
    {
LABEL_4:
      v31 = v61;
      if (qword_93D8E0 != -1)
      {
        swift_once();
      }

      v32 = qword_99F298;
      goto LABEL_11;
    }
  }

  else if (v30 <= 6)
  {
    goto LABEL_4;
  }

  v31 = v61;
  if (qword_93D8E8 != -1)
  {
    swift_once();
  }

  v32 = qword_99F2B0;
LABEL_11:
  v33 = sub_BE38(v11, v32);
  v34 = *(v31 + 16);
  v35 = v52;
  v34(v52, v33, v11);

  v36 = v60;
  (*(v31 + 32))(v60, v35, v11);
  v34(v10, v36, v11);
  v37 = v55;
  v38 = v57;
  (*(v55 + 104))(v10, enum case for FontSource.useCase(_:), v57);
  v39.super.isa = [v64 traitCollection];
  isa = v39.super.isa;
  v41 = sub_766490(v39).super.isa;

  (*(v37 + 8))(v10, v38);
  v65 = v41;
  sub_1EABC();
  v42 = v41;
  v43 = v56;
  sub_756ED0();
  v44 = sub_76A3F0();
  v45 = (*(*(v44 - 8) + 48))(v24, 1, v44);
  v47 = v58;
  v46 = v59;
  if (!v45)
  {
    v48 = v51[0];
    (*(v58 + 16))(v51[0], v43, v59);
    (*(v47 + 56))(v48, 0, 1, v46);
    sub_76A2F0();
  }

  v49 = v53(v62, v63);
  sub_362208(v24, v54);
  sub_76A420();

  (*(v31 + 8))(v36, v11);
  (*(v47 + 8))(v43, v46);
  return sub_502E14(v24);
}

uint64_t sub_6969E0(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_7664A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_766CA0();
  sub_161DC(v8, a3);
  sub_BE38(v8, a3);
  *v7 = UIFontTextStyleBody;
  (*(v5 + 104))(v7, enum case for FontSource.textStyle(_:), v4);
  v13[3] = v4;
  v13[4] = &protocol witness table for FontSource;
  v9 = sub_B1B4(v13);
  (*(v5 + 16))(v9, v7, v4);
  v10 = UIFontTextStyleBody;
  sub_766CB0();
  return (*(v5 + 8))(v7, v4);
}

void sub_696B54()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for SeparatorSupplementaryView(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = sub_769210();
    sub_769BD0();
    v5 = sub_769210();

    [v2 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v4 withReuseIdentifier:v5];
  }
}

void sub_696C38(void *a1)
{
  v1 = a1;
  sub_696B54();
}

double sub_696C80()
{
  v1 = [v0 traitCollection];
  sub_767500();
  v3 = v2;

  return v3;
}

void sub_696CD0(uint64_t a1)
{
  v3 = sub_BD88(&qword_961538, qword_7ACC80);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = sub_764590();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_760A90())
  {
    (*(v7 + 104))(v9, enum case for Uber.Style.above(_:), v6);
    v10 = sub_7645F0();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    sub_764610();
    swift_allocObject();
    swift_retain_n();
    v11 = sub_7645A0();
    v12 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uber];
    *&v1[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uber] = v11;

    sub_6BC5D4(v12, v13);
  }

  v14 = [v1 collectionView];
  sub_697B7C(a1, v14);

  sub_2A0C7C();
}

double sub_696F18(void *a1)
{
  v1 = a1;
  sub_29FB28();
  v3 = v2;

  return v3;
}

id sub_696F74(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  if (a2 == 0xD000000000000039 && 0x80000000007D87C0 == a3 || (sub_76A950() & 1) != 0)
  {
    v9 = sub_769210();
    type metadata accessor for SeparatorSupplementaryView(0);
    sub_769BD0();
    v10 = sub_769210();

    v11.super.isa = sub_757550().super.isa;
    v12 = [a1 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:v10 forIndexPath:v11.super.isa];
  }

  else
  {
    v13 = sub_769210();
    v11.super.isa = sub_757550().super.isa;
    v15.receiver = v4;
    v15.super_class = ObjectType;
    v12 = objc_msgSendSuper2(&v15, "collectionView:viewForSupplementaryElementOfKind:atIndexPath:", a1, v13, v11.super.isa);
  }

  return v12;
}

id sub_6970DC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_757640();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_769240();
  v13 = v12;
  sub_757590();
  v14 = a3;
  v15 = a1;
  v16 = sub_696F74(v14, v11, v13);

  (*(v8 + 8))(v10, v7);

  return v16;
}

void sub_69721C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v34[1] = a5;
  v35 = a1;
  ObjectType = swift_getObjectType();
  v10 = sub_75D3C0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v36 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_75D400();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v34[0] = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v34 - v17;
  if (a3 == 0xD000000000000039 && 0x80000000007D87C0 == a4 || (sub_76A950()) && (type metadata accessor for SeparatorSupplementaryView(0), (v19 = swift_dynamicCastClass()) != 0))
  {
    v20 = v19;
    (*(v11 + 104))(v36, enum case for ComponentSeparator.Position.top(_:), v10);
    v35 = a2;
    [v6 pageContainerSize];
    v22 = v21;
    v23 = [v6 traitCollection];
    v24 = sub_7699B0();

    if ((v24 & 1) != 0 && v22 > 672.0)
    {
      sub_4FF230();
    }

    else
    {
      v39.receiver = v6;
      v39.super_class = ObjectType;
      objc_msgSendSuper2(&v39, "pageMarginInsets");
    }

    [v6 pageContainerSize];
    v28 = v27;
    v29 = [v6 traitCollection];
    v30 = sub_7699B0();

    if ((v30 & 1) != 0 && v28 > 672.0)
    {
      sub_4FF230();
    }

    else
    {
      v38.receiver = v6;
      v38.super_class = ObjectType;
      objc_msgSendSuper2(&v38, "pageMarginInsets");
    }

    sub_75D3D0();
    v31 = v34[0];
    (*(v14 + 16))(v34[0], v18, v13);
    v32 = OBJC_IVAR____TtC18ASMessagesProvider26SeparatorSupplementaryView_separator;
    swift_beginAccess();
    (*(v14 + 24))(v20 + v32, v31, v13);
    swift_endAccess();
    sub_31D6C4();

    v33 = *(v14 + 8);
    v33(v31, v13);
    v33(v18, v13);
  }

  else
  {
    v25 = sub_769210();
    isa = sub_757550().super.isa;
    v40.receiver = v6;
    v40.super_class = ObjectType;
    objc_msgSendSuper2(&v40, "collectionView:willDisplaySupplementaryView:forElementKind:atIndexPath:", v35, a2, v25, isa);
  }
}

uint64_t sub_697660(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_757640();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_769240();
  v15 = v14;
  sub_757590();
  v16 = a3;
  v17 = a4;
  v18 = a1;
  sub_69721C(v16, v17, v13, v15, v12);

  return (*(v10 + 8))(v12, v9);
}

uint64_t type metadata accessor for VersionHistoryViewController(uint64_t a1)
{
  result = qword_960F38;
  if (!qword_960F38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_697894(uint64_t a1, uint64_t a2)
{
  v4 = sub_768C60();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&qword_961528, &unk_7ACC70);
  swift_allocObject();
  swift_retain_n();
  v8 = sub_4792F0();

  v9 = sub_46F944(a1, v8, a2);
  sub_697B34(&qword_961530, &unk_7ACC28);
  v10 = v9;

  v11 = v10;
  sub_760AA0();
  sub_760AB0();
  v13 = v12;

  if (v13)
  {
    v14 = sub_769210();
  }

  else
  {
    v14 = 0;
  }

  [v11 setTitle:v14];

  v11[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_prefersLargeTitle] = 1;
  v15 = *&v11[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uber];
  v16 = [v11 navigationItem];
  v17 = v16;
  if (v15)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  [v16 setLargeTitleDisplayMode:v18];

  v19 = [v11 view];
  if (v19)
  {
    memset(v20, 0, sizeof(v20));
    sub_768C20();
    sub_BDD0(v20);
    sub_769E70();

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_697B34(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VersionHistoryViewController(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_697B7C(uint64_t a1, void *a2)
{
  v43 = a2;
  v3 = sub_764930();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v42 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v32[-v7];
  __chkstk_darwin(v9);
  v39 = &v32[-v10];
  v11 = sub_768390();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_12EA98();
  (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.utility(_:), v11);
  v15 = sub_7699A0();
  v16 = v14;
  v17 = v8;
  (*(v12 + 8))(v16, v11);
  sub_47E01C(v15, a1);

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
      if (!sub_3AC688())
      {
        goto LABEL_4;
      }
    }

    if (v43)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_764910();
      v30 = v17;
      v31 = sub_769210();

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

id sub_697F7C(void *a1, char a2)
{
  if (!a2)
  {
    v2 = [objc_opt_self() systemBackgroundColor];
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    sub_BE70(0, &qword_93E540, UIColor_ptr);
    v2 = sub_769FD0();
LABEL_5:
    v3 = v2;
    v4 = [v2 colorWithAlphaComponent:0.4];
    goto LABEL_6;
  }

  v7 = [a1 userInterfaceStyle];
  v8 = objc_opt_self();
  if (v7 == &dword_0 + 2)
  {
    v3 = [v8 whiteColor];
    v4 = [v3 colorWithAlphaComponent:0.13];
  }

  else
  {
    v3 = [v8 systemBlueColor];
    v4 = [v3 colorWithAlphaComponent:0.1];
  }

LABEL_6:
  v5 = v4;

  return v5;
}

id sub_698090(void *a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v2 = objc_opt_self();
      v3 = &selRef_whiteColor;
      goto LABEL_8;
    }

    v4 = [a1 userInterfaceStyle];
    v2 = objc_opt_self();
    v3 = &selRef_systemBlueColor;
  }

  else
  {
    v4 = [a1 userInterfaceStyle];
    v2 = objc_opt_self();
    v3 = &selRef_blackColor;
  }

  if (v4 == &dword_0 + 2)
  {
    v3 = &selRef_whiteColor;
  }

LABEL_8:
  v5 = [v2 *v3];

  return v5;
}

uint64_t sub_69814C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x54646E416E6F6369;
  v4 = 0xEC000000656C7469;
  v5 = 0x80000000007C8F60;
  if (v2 != 1)
  {
    v3 = 0xD000000000000011;
    v4 = 0x80000000007C8F60;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x796C6E4F6E6F6369;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = 0x54646E416E6F6369;
  if (*a2 == 1)
  {
    v5 = 0xEC000000656C7469;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x796C6E4F6E6F6369;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_76A950();
  }

  return v11 & 1;
}

Swift::Int sub_698258()
{
  sub_76AA30();
  sub_769330();

  return sub_76AA80();
}

double sub_698308(uint64_t a1)
{
  sub_769330();

  return result;
}

Swift::Int sub_6983A4(uint64_t a1)
{
  sub_76AA30();
  sub_769330();

  return sub_76AA80();
}

unint64_t sub_698450@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_69A1DC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_698480(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEC000000656C7469;
  v5 = 0x54646E416E6F6369;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x80000000007C8F60;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x796C6E4F6E6F6369;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

id sub_6984FC()
{
  result = [objc_opt_self() effectWithBlurRadius:30.0];
  qword_961558 = result;
  return result;
}

uint64_t sub_69856C(double a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v8 = sub_7664A0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DBB0 != -1)
  {
    swift_once();
  }

  v12 = sub_7666D0();
  v13 = sub_BE38(v12, qword_99FB08);
  (*(*(v12 - 8) + 16))(v11, v13, v12);
  (*(v9 + 104))(v11, enum case for FontSource.useCase(_:), v8);
  *a3 = sub_766CA0();
  *a4 = &protocol witness table for StaticDimension;
  sub_B1B4(a5);
  v17[3] = v8;
  v17[4] = &protocol witness table for FontSource;
  v14 = sub_B1B4(v17);
  (*(v9 + 16))(v14, v11, v8);
  sub_766CB0();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_698788(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_7664A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_766CA0();
  sub_161DC(v8, a3);
  sub_BE38(v8, a3);
  if (qword_93DA88 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  v10 = sub_BE38(v9, qword_99F790);
  (*(*(v9 - 8) + 16))(v7, v10, v9);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v14[3] = v4;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_B1B4(v14);
  (*(v5 + 16))(v11, v7, v4);
  sub_766CB0();
  return (*(v5 + 8))(v7, v4);
}

char *sub_698964()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_760AD0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v1[OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_style] = 0;
  v1[OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_isActive] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_bellMicaPlayer] = 0;
  if (qword_93E090 != -1)
  {
    swift_once();
  }

  v10 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:qword_961558];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_backgroundBlurView] = v10;
  v11 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_backgroundTintView] = v11;
  if (qword_93DBB0 != -1)
  {
    swift_once();
  }

  v12 = sub_7666D0();
  v13 = sub_BE38(v12, qword_99FB08);
  v14 = *(v12 - 8);
  (*(v14 + 16))(v9, v13, v12);
  (*(v14 + 56))(v9, 0, 1, v12);
  (*(v4 + 104))(v6, enum case for DirectionalTextAlignment.leading(_:), v3);
  v15 = objc_allocWithZone(sub_75BB20());
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_titleLabel] = sub_75BB10();
  v16 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_bellView] = v16;
  v37.receiver = v1;
  v37.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v37, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v21 = v17;
  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v22 = OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_backgroundBlurView;
  [*&v21[OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_backgroundBlurView] setClipsToBounds:1];
  v23 = [*&v21[v22] layer];
  v24 = v23;
  v25 = OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_style;
  if (v21[OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_style])
  {
    v26 = 4.0;
  }

  else
  {
    v26 = 17.0;
  }

  [v23 setCornerRadius:v26];

  [*&v21[v22] setUserInteractionEnabled:0];
  [v21 addSubview:*&v21[v22]];
  v27 = OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_backgroundTintView;
  v28 = v21[v25];
  v29 = *&v21[OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_backgroundTintView];
  v30 = [v21 traitCollection];

  v31 = sub_697F7C(v30, v28);
  [v29 setBackgroundColor:v31];

  v32 = [*&v21[v27] layer];
  v33 = v32;
  if (v21[v25])
  {
    v34 = 4.0;
  }

  else
  {
    v34 = 17.0;
  }

  [v32 setCornerRadius:v34];

  [*&v21[v27] setUserInteractionEnabled:0];
  [v21 addSubview:*&v21[v27]];
  sub_698E80();
  [v21 addSubview:*&v21[OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_titleLabel]];
  sub_698F84(0);
  v35 = OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_bellView;
  [*&v21[OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_bellView] setUserInteractionEnabled:0];
  [v21 addSubview:*&v21[v35]];
  sub_6990AC();

  return v21;
}

void sub_698E80()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_titleLabel);
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_style))
  {
    [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_titleLabel) setHidden:0];
    if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_isActive))
    {
      v2 = "APP_EVENTS_BUTTON_NOTIFY_ME";
    }

    else
    {
      v2 = "e";
    }

    if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_isActive))
    {
      v3._countAndFlagsBits = 0xD000000000000021;
    }

    else
    {
      v3._countAndFlagsBits = 0xD00000000000001BLL;
    }

    v3._object = (v2 | 0x8000000000000000);
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    sub_75B750(v3, v7);
    v5 = sub_769210();

    [v1 setText:v5];
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_titleLabel);

    [v4 setHidden:1];
  }
}

void sub_698F84(char a1)
{
  v2 = (a1 & 1) != 0 && !UIAccessibilityIsReduceMotionEnabled();
  v3 = objc_allocWithZone(AppStoreMicaPlayer);
  v4 = sub_769210();

  v5 = [v3 initWithFileName:v4 retinaScale:1.0];

  sub_69931C(v5);
  if (v2)
  {
    v6 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_bellMicaPlayer);
    if (v6)
    {

      [v6 play];
    }
  }
}

void sub_6990AC()
{
  sub_698E80();
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_backgroundBlurView];
  v2 = OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_style;
  [v1 setHidden:v0[OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_style] != 0];
  v3 = [v1 layer];
  v4 = v3;
  if (v0[v2])
  {
    v5 = 4.0;
  }

  else
  {
    v5 = 17.0;
  }

  [v3 setCornerRadius:v5];

  v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_backgroundTintView];
  v7 = [v6 layer];
  v8 = v7;
  if (v0[v2])
  {
    v9 = 4.0;
  }

  else
  {
    v9 = 17.0;
  }

  [v7 setCornerRadius:v9];

  v10 = v0[v2];
  v11 = [v0 traitCollection];
  v12 = sub_697F7C(v11, v10);

  [v6 setBackgroundColor:v12];
  v13 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_titleLabel];
  LOBYTE(v12) = v0[v2];
  v14 = [v0 traitCollection];
  v15 = sub_698090(v14, v12);

  [v13 setTextColor:v15];
  LOBYTE(v13) = v0[v2];
  v16 = [v0 traitCollection];
  v17 = sub_698090(v16, v13);

  sub_699440(v17);
}

void sub_69931C(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_bellMicaPlayer;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_bellMicaPlayer];
  if (v4)
  {
    [v4 removeFromSuperlayer];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    v7 = v1[OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_style];
    v8 = [v1 traitCollection];
    v9 = sub_698090(v8, v7);

    sub_699440(v9);
    v10 = [*&v1[OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_bellView] layer];
    [v6 addToLayer:v10 onTop:1 gravity:kCAGravityResizeAspect];
  }
}

void sub_699440(void *a1)
{
  v3 = sub_756FF0();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_bellMicaPlayer);
  if (v8)
  {
    v9 = [v8 rootLayer];
    if (v9)
    {
      v10 = v9;
      sub_BE70(0, &qword_961660, CAShapeLayer_ptr);
      v11 = [v10 mp_allLayersWithKindOfClass:swift_getObjCClassFromMetadata()];

      if (v11)
      {
        v14[0] = v4;
        sub_769FA0();
        sub_756FE0();
        while (v17)
        {
          sub_13310(&v16, &v15);
          if (swift_dynamicCast())
          {
            v12 = v14[1];
            v13 = [a1 CGColor];
            [v12 setFillColor:v13];
          }

          sub_756FE0();
        }

        (*(v14[0] + 8))(v7, v3);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_699644()
{
  ObjectType = swift_getObjectType();
  v2 = sub_76A920();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30.receiver = v0;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, "layoutSubviews", v4);
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_backgroundBlurView];
  sub_75D650();
  [v7 setFrame:?];
  v8 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_backgroundTintView];
  sub_75D650();
  [v8 setFrame:?];
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_style])
  {
    if (qword_93E0B8 != -1)
    {
      swift_once();
    }

    v9 = sub_766CA0();
    sub_BE38(v9, qword_9615E0);
    sub_766470();
    sub_766700();
    v10 = *(v3 + 8);
    v10(v6, v2);
    if (qword_93E0A8 != -1)
    {
      swift_once();
    }

    sub_BE38(v9, qword_9615B0);
    sub_766470();
    sub_766700();
    v12 = v11;
    v10(v6, v2);
    if (qword_93E0B0 != -1)
    {
      swift_once();
    }

    sub_BE38(v9, qword_9615C8);
    sub_766470();
    sub_766700();
    v14 = v13;
    v10(v6, v2);
    if (qword_93E088 != -1)
    {
      swift_once();
    }

    sub_BE38(v9, qword_961540);
    sub_766470();
    sub_766700();
    v16 = v15;
    v10(v6, v2);
    sub_75D650();
    v17 = CGRectGetWidth(v31) - v12 - v14 - v16;
    sub_75D650();
    Height = CGRectGetHeight(v32);
    v19 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_titleLabel];
    [v19 measurementsWithFitting:v0 in:{v17, Height}];
    if (qword_93E098 != -1)
    {
      swift_once();
    }

    sub_B170(qword_961560, qword_961578);
    sub_766720();
    sub_75D650();
    CGRectGetMinX(v33);
    sub_75D650();
    CGRectGetMinY(v34);
    sub_75D650();
    sub_769D20();
    [v19 setFrame:?];
    sub_75D650();
    CGRectGetMinX(v35);
    sub_75D650();
    CGRectGetMidY(v36);
    v20 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_bellView];
    sub_75D650();
    sub_769D20();
  }

  else
  {
    sub_75D650();
    v25 = CGRectGetMidX(v37) + -17.0;
    sub_75D650();
    MidY = CGRectGetMidY(v38);
    v21 = v25;
    v22 = MidY + -17.0;
    v20 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_bellView];
    v23 = 34.0;
    v24 = 34.0;
  }

  [v20 setFrame:{v21, v22, v23, v24}];
  v27 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_bellMicaPlayer];
  if (v27)
  {
    v28 = v27;
    v29 = [v20 layer];
    [v28 moveAndResizeWithinParentLayer:v29 usingGravity:kCAGravityResizeAspect animate:0];
  }
}

void sub_699C10(double a1)
{
  swift_getObjectType();
  v3 = sub_76A920();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_style))
  {
    if (qword_93E0A8 != -1)
    {
      swift_once();
    }

    v7 = sub_766CA0();
    sub_BE38(v7, qword_9615B0);
    sub_766470();
    sub_766700();
    v9 = v8;
    v10 = *(v4 + 8);
    v10(v6, v3);
    if (qword_93E0B0 != -1)
    {
      swift_once();
    }

    sub_BE38(v7, qword_9615C8);
    sub_766470();
    sub_766700();
    v12 = v11;
    v10(v6, v3);
    if (qword_93E088 != -1)
    {
      swift_once();
    }

    sub_BE38(v7, qword_961540);
    sub_766470();
    sub_766700();
    v14 = v13;
    v10(v6, v3);
    sub_75D650();
    [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_titleLabel) measurementsWithFitting:v1 in:{a1 - v9 - v12 - v14, CGRectGetHeight(v17)}];
    if (qword_93E098 != -1)
    {
      swift_once();
    }

    sub_B170(qword_961560, qword_961578);
    sub_766720();
    if (qword_93E0A0 != -1)
    {
      swift_once();
    }

    v15 = qword_9615A0;
    sub_B170(qword_961588, qword_9615A0);
    sub_33964(v15);
    sub_766700();
    v10(v6, v3);
  }
}

unint64_t sub_69A188()
{
  result = qword_961658;
  if (!qword_961658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_961658);
  }

  return result;
}

unint64_t sub_69A1DC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_87F3D8;
  v6._object = a2;
  v4 = sub_76A8E0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

void *sub_69A228()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_avatarShowcase);
  v2 = v1;
  return v1;
}

void (*sub_69A260(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_avatarShowcase);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_69A2B8;
}

void sub_69A2B8(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_3548F8(v2);
  }

  else
  {
    sub_3548F8(*a1);
  }
}

uint64_t sub_69A350(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_69A524(&qword_950978, type metadata accessor for EditorialCardCollectionViewCell, &unk_7ACDD0);

  return AvatarShowcaseDisplaying.applyAvatars(from:asPartOf:)(a1, a2, ObjectType, v5);
}

uint64_t sub_69A40C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v4 = sub_69A524(&qword_950978, type metadata accessor for EditorialCardCollectionViewCell, &unk_7ACDD0);

  return a3(ObjectType, v4);
}

uint64_t sub_69A524(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_69A56C(char *a1, __int128 *a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = a2[5];
  v63 = a2[4];
  v64 = v10;
  v11 = a2[7];
  v65 = a2[6];
  v66 = v11;
  v12 = a2[1];
  v59 = *a2;
  v60 = v12;
  v13 = a2[3];
  v61 = a2[2];
  v62 = v13;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC18ASMessagesProvider15VideoMirrorView_videoLayer;
  *&v5[v14] = [objc_allocWithZone(AVPlayerLayer) init];
  swift_unknownObjectWeakAssign();
  v49 = a1;
  if (a1)
  {
    a1 = *&a1[qword_940590];
  }

  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_artworkLayer;
  *&v5[v15] = [objc_allocWithZone(CALayer) init];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_imageKVOContext] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_imageObserversAdded] = 0;
  swift_unknownObjectWeakAssign();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_contentsScaleFactor] = a3;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_contentsVerticalOffset] = a4;
  v58.receiver = v5;
  v58.super_class = type metadata accessor for MirrorView();
  v16 = objc_msgSendSuper2(&v58, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v16 setClipsToBounds:1];
  [v16 setUserInteractionEnabled:0];
  v17 = OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_artworkLayer;
  [*&v16[OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_artworkLayer] setContentsGravity:kCAGravityResizeAspectFill];
  LODWORD(v18) = 1.0;
  [*&v16[v17] setOpacity:v18];
  [*&v16[v17] setAnchorPoint:{0.5, 0.5}];
  v19 = qword_93C498;
  v20 = *&v16[v17];
  if (v19 != -1)
  {
    swift_once();
  }

  sub_BD88(&qword_9452F0, qword_78B4B0);
  isa = sub_7690E0().super.isa;
  [v20 setActions:isa];

  v22 = *&v16[v17];
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 mainScreen];
  [v25 scale];
  v27 = v26;

  [v24 setContentsScale:v27];
  [*&v16[v17] setMasksToBounds:1];
  v28 = *&v16[v17];
  v29 = a2[5];
  v54 = a2[4];
  v55 = v29;
  v30 = a2[7];
  v56 = a2[6];
  v57 = v30;
  v31 = a2[1];
  v50 = *a2;
  v51 = v31;
  v32 = a2[3];
  v52 = a2[2];
  v53 = v32;
  [v28 setTransform:&v50];
  sub_15F084();
  v33 = [v16 layer];

  [v33 addSublayer:*&v16[v17]];
  v34 = v16;
  [v34 setClipsToBounds:1];
  [v34 setUserInteractionEnabled:0];
  v35 = OBJC_IVAR____TtC18ASMessagesProvider15VideoMirrorView_videoLayer;
  [*&v34[OBJC_IVAR____TtC18ASMessagesProvider15VideoMirrorView_videoLayer] setAnchorPoint:{0.5, 0.5}];
  v36 = *&v34[v35];
  v37 = sub_7690E0().super.isa;
  [v36 setActions:v37];

  v38 = *&v34[v35];
  v39 = [v23 mainScreen];
  [v39 scale];
  v41 = v40;

  [v38 setContentsScale:v41];
  [*&v34[v35] setMasksToBounds:1];
  [*&v34[v35] setContentsGravity:kCAGravityResizeAspectFill];
  v42 = *&v34[v35];
  v54 = v63;
  v55 = v64;
  v56 = v65;
  v57 = v66;
  v50 = v59;
  v51 = v60;
  v52 = v61;
  v53 = v62;
  [v42 setTransform:&v50];
  sub_69B168();
  v43 = [v34 layer];
  v44 = *&v16[v17];
  v45 = *&v34[v35];
  v46 = v44;

  [v43 insertSublayer:v45 below:v46];
  sub_BD88(&qword_9477F0, qword_780200);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_77B6D0;
  *(v47 + 32) = sub_767710();
  *(v47 + 40) = &protocol witness table for _UITraitHDRHeadroomUsage;
  sub_769F40();

  swift_unknownObjectRelease();

  return v34;
}

void sub_69AB3C(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();

    if (v5)
    {
      swift_unknownObjectRelease();
      if (v5 == v1)
      {
        v6 = swift_unknownObjectWeakLoadStrong();
        if (v6)
        {
          v7 = v6;

          if (v7 == a1)
          {
            return;
          }
        }

        else if (!a1)
        {
          return;
        }

        v8 = swift_unknownObjectWeakLoadStrong();
        if (v8)
        {
          v9 = v8;
          sub_50A68(0, 0);
        }
      }
    }
  }
}

double sub_69AE14(double a1, double a2)
{
  v3 = sub_75DC30();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  v10 = sub_766690();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v25 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = qword_99A200;
    v18 = Strong;
    swift_beginAccess();
    (*(v4 + 16))(v6, &v18[v17], v3);

    sub_75DB80();
    (*(v4 + 8))(v6, v3);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      (*(v11 + 32))(v15, v9, v10);
      sub_766600();
      a1 = v19;
LABEL_8:
      (*(v11 + 8))(v15, v10);
      return a1;
    }
  }

  else
  {
    (*(v11 + 56))(v9, 1, 1, v10);
  }

  sub_9C2A0(v9);
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    v22 = [v20 image];

    if (v22)
    {
      [v22 size];
      v15 = v25;
      sub_7666A0();
      sub_766600();
      a1 = v23;

      goto LABEL_8;
    }
  }

  return a1;
}

void sub_69B168()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + qword_940590);
  }

  else
  {
    v4 = 0;
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    if (!v5)
    {

      goto LABEL_11;
    }

    sub_22AFB8();
    v8 = v5;
    v9 = sub_76A1C0();

    if (v9)
    {

      goto LABEL_12;
    }

LABEL_9:
    v10 = sub_769210();
    v11 = OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_imageKVOContext;
    swift_beginAccess();
    [v5 removeObserver:v1 forKeyPath:v10 context:v1 + v11];
    swift_endAccess();

LABEL_11:
    sub_15F084();

    goto LABEL_12;
  }

  if (v5)
  {
    goto LABEL_9;
  }

LABEL_12:
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v14 = swift_unknownObjectRetain();
    sub_50A68(v14, &off_89C5D8);
  }

  v15 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider15VideoMirrorView_videoLayer);
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16 && (v17 = v16, v18 = [v16 backgroundColor], v17, v18))
  {
    v19 = [v18 CGColor];
  }

  else
  {
    v19 = 0;
  }

  [v15 setBackgroundColor:v19];

  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    v22 = *(v20 + qword_9405B0);
  }

  else
  {
    v22 = 0;
  }

  [v15 setPlayer:v22];

  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23 && (v24 = *(v23 + qword_9405B8), v25 = v23, v26 = v24, v25, v24))
  {
    v27 = [v26 videoGravity];
  }

  else
  {
    v27 = AVLayerVideoGravityResizeAspectFill;
  }

  [v15 setVideoGravity:v27];
}

void sub_69B444()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider15VideoMirrorView_videoLayer);
}

id sub_69B484(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for VideoMirrorView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_69B528(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider15VideoMirrorView_videoLayer];
  v2 = [a1 traitCollection];
  v3 = [v2 _headroomUsage];

  v4 = &CADynamicRangeHigh;
  if (v3 != &dword_0 + 1)
  {
    v4 = &CADynamicRangeConstrainedHigh;
  }

  v5 = *v4;
  [v1 setPreferredDynamicRange:v5];
}

uint64_t sub_69B5D8(double a1, double a2, double a3, double a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v7 = a7;
  if (a6 >> 62)
  {
    v11 = sub_76A860();
    if (v11 == 3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = *(&dword_10 + (a6 & 0xFFFFFFFFFFFFFF8));
    if (v11 == 3)
    {
      goto LABEL_8;
    }
  }

  if (v11 == 2)
  {
    sub_69B9A8(a6, v7, v13, a3, a4);
    goto LABEL_9;
  }

  if (v11 != 1)
  {
LABEL_8:
    sub_69BD7C(a6, v7, v13, a3, a4);
    goto LABEL_9;
  }

  sub_69B848(a6, v7, v13);
LABEL_9:
  sub_10914(v13, v14);
  sub_B170(v14, v14[3]);
  sub_7673E0();
  return sub_BEB8(v14);
}

double sub_69B708(uint64_t a1, unint64_t a2, uint64_t a3, double a4, double a5)
{
  v5 = a3;
  if (a2 >> 62)
  {
    v9 = sub_76A860();
    if (v9 == 3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (v9 == 3)
    {
      goto LABEL_8;
    }
  }

  if (v9 == 2)
  {
    sub_69B9A8(a2, v5, v13, a4, a5);
    goto LABEL_9;
  }

  if (v9 != 1)
  {
LABEL_8:
    sub_69BD7C(a2, v5, v13, a4, a5);
    goto LABEL_9;
  }

  sub_69B848(a2, v5, v13);
LABEL_9:
  sub_10914(v13, v14);
  sub_B170(v14, v14[3]);
  sub_7673F0();
  v11 = v10;
  sub_BEB8(v14);
  return v11;
}

uint64_t sub_69B848@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v7 = *(result + 32);
  }

  v8 = v7;
  if (a2 != 4)
  {
    sub_769D60();
  }

  sub_2630C();
  sub_766580();
  sub_B170(v9, v9[3]);
  sub_7665D0();
  sub_767280();
  a3[3] = sub_7672A0();
  a3[4] = &protocol witness table for Center;
  sub_B1B4(a3);
  sub_7672B0();

  return sub_BEB8(v9);
}

void sub_69B9A8(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_766880();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v30 - v15;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v31 = sub_76A770();
    v19 = sub_76A770();
    goto LABEL_5;
  }

  v17 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v17 == 1)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v18 = *(a1 + 40);
  v31 = *(a1 + 32);
  v19 = v18;
LABEL_5:
  v20 = v19;
  if (a2 == 4)
  {
    v21 = 33.0;
  }

  else
  {
    v22 = a5 / 224.0;
    v23 = fmin(a5 / 224.0, 1.0);
    if (a5 / 224.0 >= a4 / 224.0)
    {
      v22 = a4 / 224.0;
    }

    if (a4 / 224.0 >= 1.0)
    {
      v24 = v23;
    }

    else
    {
      v24 = v22;
    }

    sub_769D60();
    v21 = v24 * 80.0;
  }

  sub_766850();
  v32[0] = v20;
  sub_2630C();
  sub_766580();
  v30 = v20;
  sub_B170(v33, v34);
  sub_7665D0();
  sub_766870();
  sub_BEB8(v32);
  v25 = *(v11 + 8);
  v25(v13, v10);
  sub_BEB8(v33);
  v26 = v31;
  v32[0] = v31;
  sub_766580();
  sub_B170(v33, v34);
  sub_7665D0();
  *(swift_allocObject() + 16) = v21;
  a3[3] = v10;
  a3[4] = &protocol witness table for DisjointStack;
  sub_B1B4(a3);
  sub_766870();

  sub_BEB8(v32);
  v25(v16, v10);
  sub_BEB8(v33);
  v27 = [v26 layer];
  [v27 setZPosition:2.0];

  v28 = v30;
  v29 = [v30 layer];
  [v29 setZPosition:1.0];
}

void sub_69BD7C(unint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_766BD0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v24 = sub_76A770();
    v25 = sub_76A770();
    v26 = sub_76A770();
    goto LABEL_6;
  }

  v20 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v20)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v20 == 1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v20 < 3)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  v23 = *(a1 + 48);
  v24 = v21;
  v25 = v22;
  v26 = v23;
LABEL_6:
  v37 = v26;
  v38 = a3;
  v35 = v24;
  if (a2 == 4)
  {
    v27 = 10.0;
  }

  else
  {
    v28 = a5 / 127.0;
    v29 = fmin(a5 / 127.0, 1.0);
    if (a5 / 127.0 >= a4 / 421.0)
    {
      v28 = a4 / 421.0;
    }

    if (a4 / 421.0 >= 1.0)
    {
      v30 = v29;
    }

    else
    {
      v30 = v28;
    }

    sub_769D60();
    v27 = v30 * 20.0;
  }

  sub_766BA0();
  v39[0] = v25;
  sub_2630C();
  sub_766580();
  v36 = v25;
  sub_B170(v40, v41);
  sub_7665D0();
  *(swift_allocObject() + 16) = v27;
  sub_766BB0();

  sub_BEB8(v39);
  v31 = *(v11 + 8);
  v31(v13, v10);
  sub_BEB8(v40);
  v32 = v35;
  v39[0] = v35;
  sub_766580();
  sub_B170(v40, v41);
  sub_7665D0();
  *(swift_allocObject() + 16) = v27;
  sub_766BB0();

  sub_BEB8(v39);
  v31(v16, v10);
  sub_BEB8(v40);
  v33 = v37;
  v39[0] = v37;
  sub_766580();
  sub_B170(v40, v41);
  sub_7665D0();
  v34 = v38;
  v38[3] = v10;
  v34[4] = &protocol witness table for HorizontalStack;
  sub_B1B4(v34);
  sub_766BB0();

  sub_BEB8(v39);
  v31(v19, v10);
  sub_BEB8(v40);
}

uint64_t sub_69C1E0()
{
  v0 = sub_766840();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4[3] = &type metadata for Double;
  v4[4] = &protocol witness table for Double;
  *v4 = 0;
  v5 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v6 = *(v1 + 104);
  (v6)(v4, enum case for DisjointStack.EdgePosition.anchored(_:), v0, v2);
  sub_766830();
  v4[3] = &type metadata for Double;
  v4[4] = &protocol witness table for Double;
  *v4 = 0;
  v6(v4, v5, v0);
  return sub_766800();
}

uint64_t sub_69C304(double a1)
{
  v2 = sub_766840();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 3) = &type metadata for CGFloat;
  *(v6 + 4) = &protocol witness table for CGFloat;
  *v6 = a1;
  v7 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v8 = *(v3 + 104);
  (v8)(v6, enum case for DisjointStack.EdgePosition.anchored(_:), v2, v4);
  sub_766830();
  *(v6 + 3) = &type metadata for CGFloat;
  *(v6 + 4) = &protocol witness table for CGFloat;
  *v6 = a1;
  v8(v6, v7, v2);
  return sub_766800();
}

uint64_t sub_69C4AC(double a1)
{
  v2 = sub_BD88(&qword_940A60, &unk_7A18E0);
  __chkstk_darwin(v2 - 8);
  v45 = &v37 - v3;
  v48 = sub_765610();
  v54 = *(v48 - 8);
  __chkstk_darwin(v48);
  v5 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_BD88(&qword_940A68, &qword_79AB60);
  __chkstk_darwin(v6 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = &v37 - v10;
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  sub_BD88(&qword_940A70, &unk_7A18F0);
  v17 = *(sub_765540() - 8);
  v53 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v43 = v19;
  *(v19 + 16) = xmmword_780120;
  v20 = v19 + v18;
  v56 = 0x3FF0000000000000;
  sub_62634();
  sub_7655D0();
  v55 = 16.0;
  v56 = 0x4020000000000000;
  sub_7655B0();
  v56 = 0x4030000000000000;
  v55 = a1;
  sub_7655B0();
  __asm { FMOV            V0.2D, #16.0 }

  *v5 = _Q0;
  v52 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v26 = *(v54 + 104);
  v54 += 104;
  v27 = v48;
  v26(v5);
  v47 = v26;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  LOBYTE(v56) = 0;
  sub_7655D0();
  v56 = 0;
  v44 = v8;
  sub_7655D0();
  v46 = v20;
  v50 = v16;
  v51 = v13;
  sub_765500();
  v56 = 0x3FF0000000000000;
  sub_7655D0();
  v55 = 20.0;
  v56 = 0x4024000000000000;
  sub_7655B0();
  v56 = 0x4030000000000000;
  v55 = a1;
  sub_7655B0();
  __asm { FMOV            V0.2D, #20.0 }

  *v5 = _Q0;
  (v26)(v5, v52, v27);
  LOBYTE(v56) = 0;
  sub_7655D0();
  v56 = 0;
  sub_7655D0();
  v31 = v53;
  top = UIEdgeInsetsZero.top;
  v40 = left;
  v42 = bottom;
  sub_765500();
  v56 = 0x4000000000000000;
  sub_7655D0();
  v56 = 0x4034000000000000;
  sub_7655D0();
  v56 = 0x4030000000000000;
  v55 = a1;
  sub_7655B0();
  v39 = vdupq_n_s64(0x4041000000000000uLL);
  *v5 = v39;
  v33 = v47;
  v32 = v48;
  (v47)(v5, v52, v48);
  LOBYTE(v56) = 0;
  sub_7655D0();
  v56 = 0;
  sub_7655D0();
  sub_765500();
  v38 = 2 * v31 + v53;
  v56 = 0x4000000000000000;
  sub_7655D0();
  v56 = 0x4034000000000000;
  sub_7655D0();
  v56 = 0x4030000000000000;
  v55 = a1;
  sub_7655B0();
  *v5 = v39;
  (v33)(v5, v52, v32);
  sub_7697A0();
  LOBYTE(v56) = 0;
  sub_7655D0();
  v56 = 0;
  sub_7655D0();
  sub_765500();
  v38 = 4 * v53;
  v56 = 0x4008000000000000;
  sub_7655D0();
  v56 = 0x4038000000000000;
  sub_7655D0();
  v56 = 0x4030000000000000;
  v55 = a1;
  sub_7655B0();
  v39 = vdupq_n_s64(0x404A000000000000uLL);
  *v5 = v39;
  v34 = v52;
  v35 = v48;
  (v47)(v5, v52, v48);
  LOBYTE(v56) = 0;
  sub_7655D0();
  v56 = 0;
  sub_7655D0();
  sub_765500();
  v56 = 0x4008000000000000;
  sub_7655D0();
  v56 = 0x4038000000000000;
  sub_7655D0();
  v56 = 0x4030000000000000;
  v55 = a1;
  sub_7655B0();
  *v5 = v39;
  (v47)(v5, v34, v35);
  LOBYTE(v56) = 0;
  sub_7655D0();
  v56 = 0;
  sub_7655D0();
  sub_765500();
  return v43;
}

id sub_69CEB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider45PersonalizationTransparencyPageViewController_overlayViewController] = 0;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider45PersonalizationTransparencyPageViewController_presenter] = a1;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider45PersonalizationTransparencyPageViewController_objectGraph] = a2;
  v11.receiver = v3;
  v11.super_class = ObjectType;

  v7 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", 0, 0);
  sub_69DAF8(&qword_9616F0, v8, type metadata accessor for PersonalizationTransparencyPageViewController, &unk_7ACF18);
  v9 = v7;
  sub_7640B0();

  return v9;
}

void sub_69D088(uint64_t a1)
{
  v2 = sub_69D398(a1);
  v3 = [v1 childViewControllers];
  sub_3C80C();
  v4 = sub_769460();

  if (v4 >> 62)
  {
    if (sub_76A860())
    {
      goto LABEL_3;
    }

LABEL_11:

    v8 = 0;
    goto LABEL_12;
  }

  if (!*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_24;
    }

    v5 = *(v4 + 32);
  }

  v6 = v5;

  type metadata accessor for GenericAccountPageViewController();
  v7 = swift_dynamicCastClass();
  v8 = v7;
  if (v7)
  {
    [v7 willMoveToParentViewController:0];
    v9 = [v8 view];
    if (!v9)
    {
LABEL_28:
      __break(1u);
      return;
    }

    v10 = v9;
    [v9 removeFromSuperview];

    [v8 removeFromParentViewController];
  }

  else
  {
  }

LABEL_12:
  v11 = v2;
  [v1 addChildViewController:v11];
  v12 = [v11 view];
  if (!v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v13 = v12;
  v14 = [v1 view];
  if (!v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [v13 setFrame:{v17, v19, v21, v23}];
  v24 = [v1 view];
  if (!v24)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v25 = v24;
  v26 = [v11 view];

  if (!v26)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v25 addSubview:v26];

  [v11 didMoveToParentViewController:v1];
  v27 = [v1 navigationItem];
  sub_75D540();
  if (v28)
  {
    v29 = sub_769210();
  }

  else
  {
    v29 = 0;
  }

  [v27 setTitle:v29];
}

id sub_69D398(uint64_t a1)
{
  v2 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider45PersonalizationTransparencyPageViewController_objectGraph);
  v6 = sub_7570A0();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_7622A0();
  swift_allocObject();

  v7 = sub_762200();
  v8 = sub_69DAF8(&qword_955CF0, 255, &type metadata accessor for GenericAccountPagePresenter, &protocol conformance descriptor for BasePresenter);

  v9 = sub_6A0B30(v5, v7, v8, _swiftEmptyArrayStorage, 0xD000000000000012, 0x80000000007E2590);

  v10 = type metadata accessor for GenericAccountPageViewController();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC18ASMessagesProvider32GenericAccountPageViewController_overlayViewController] = 0;
  *&v11[OBJC_IVAR____TtC18ASMessagesProvider32GenericAccountPageViewController_presenter] = v7;
  *&v11[OBJC_IVAR____TtC18ASMessagesProvider32GenericAccountPageViewController_objectGraph] = v9;
  v13.receiver = v11;
  v13.super_class = v10;
  return objc_msgSendSuper2(&v13, "initWithStyle:", 2);
}

void sub_69D56C()
{
  v1 = v0;
  v2 = sub_767140();
  v3 = [v0 childViewControllers];
  sub_3C80C();
  sub_769460();

  LOBYTE(v3) = sub_769490();

  if (v3)
  {
    v4 = OBJC_IVAR____TtC18ASMessagesProvider45PersonalizationTransparencyPageViewController_overlayViewController;
    v5 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider45PersonalizationTransparencyPageViewController_overlayViewController];
    sub_761930();

    v6 = *&v0[v4];
    *&v0[v4] = 0;

    v7 = [v0 view];
    if (v7)
    {
      v8 = v7;
      [v7 bounds];

      sub_761920();
      return;
    }

    __break(1u);
  }

  else
  {
    sub_767130();
    v9 = objc_allocWithZone(sub_767160());
    v10 = sub_767150();
    v11 = OBJC_IVAR____TtC18ASMessagesProvider45PersonalizationTransparencyPageViewController_overlayViewController;
    v12 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider45PersonalizationTransparencyPageViewController_overlayViewController];
    sub_761930();

    v13 = *&v1[v11];
    *&v1[v11] = v10;
    v14 = v10;

    v15 = [v1 view];
    if (v15)
    {
      v16 = v15;
      [v15 bounds];

      sub_761920();
      return;
    }
  }

  __break(1u);
}

id sub_69D7AC()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider45PersonalizationTransparencyPageViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider45PersonalizationTransparencyPageViewController_overlayViewController];
  sub_761930();

  v3 = *&v0[v1];
  *&v0[v1] = 0;

  result = [v0 view];
  if (result)
  {
    v5 = result;
    [result bounds];

    return sub_761920();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_69D874(uint64_t a1)
{
  v2 = v1;
  sub_767230();
  sub_69DAF8(&qword_9616F8, 255, &type metadata accessor for PersonalizationTransparencyPagePresenter, &protocol conformance descriptor for BasePresenter);
  swift_errorRetain();

  v3 = sub_7671F0();
  v4 = OBJC_IVAR____TtC18ASMessagesProvider45PersonalizationTransparencyPageViewController_overlayViewController;
  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider45PersonalizationTransparencyPageViewController_overlayViewController];
  sub_761930();

  v6 = *&v2[v4];
  *&v2[v4] = v3;
  v9 = v3;

  v7 = [v2 view];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];

    sub_761920();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_69DAF8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_69DBD8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void, __n128)@<X2>, unint64_t *a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void, __n128)@<X6>, uint64_t a8@<X8>)
{
  v229 = a7;
  v225 = a6;
  v226 = a2;
  v231 = a8;
  v219 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v219);
  v209 = &v186 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v202 = &v186 - v15;
  v16 = sub_75CFE0();
  v217 = *(v16 - 8);
  v218 = v16;
  __chkstk_darwin(v16);
  v224 = &v186 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v214 = &v186 - v19;
  v20 = sub_BD88(&qword_9439D8, &qword_799160);
  __chkstk_darwin(v20 - 8);
  v223 = &v186 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v222 = &v186 - v23;
  __chkstk_darwin(v24);
  v213 = &v186 - v25;
  __chkstk_darwin(v26);
  v212 = &v186 - v27;
  v28 = sub_BD88(&qword_9439E0, &unk_787AB0);
  __chkstk_darwin(v28 - 8);
  v208 = &v186 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v207 = &v186 - v31;
  __chkstk_darwin(v32);
  v201 = &v186 - v33;
  __chkstk_darwin(v34);
  v200 = &v186 - v35;
  v36 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v215 = *(v36 - 8);
  __chkstk_darwin(v36);
  v206 = &v186 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v205 = &v186 - v39;
  __chkstk_darwin(v40);
  v204 = &v186 - v41;
  __chkstk_darwin(v42);
  v221 = &v186 - v43;
  __chkstk_darwin(v44);
  v199 = &v186 - v45;
  __chkstk_darwin(v46);
  v198 = &v186 - v47;
  __chkstk_darwin(v48);
  v197 = &v186 - v49;
  __chkstk_darwin(v50);
  v211 = &v186 - v51;
  v52 = sub_BD88(&unk_948010, qword_789590);
  __chkstk_darwin(v52 - 8);
  v188 = &v186 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v190 = &v186 - v55;
  __chkstk_darwin(v56);
  v193 = &v186 - v57;
  __chkstk_darwin(v58);
  v196 = &v186 - v59;
  __chkstk_darwin(v60);
  v195 = &v186 - v61;
  __chkstk_darwin(v62);
  v189 = &v186 - v63;
  __chkstk_darwin(v64);
  v192 = &v186 - v65;
  __chkstk_darwin(v66);
  v191 = &v186 - v67;
  __chkstk_darwin(v68);
  v194 = &v186 - v69;
  __chkstk_darwin(v70);
  v220 = &v186 - v71;
  __chkstk_darwin(v72);
  v210 = &v186 - v73;
  v74 = sub_75B660();
  v75 = *(v74 - 8);
  __chkstk_darwin(v74);
  v77 = &v186 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __chkstk_darwin(v78);
  v81 = &v186 - v80;
  v227 = v8;
  a3(0, v79);
  v228 = a4;
  v230 = a5;
  v82 = a5;
  v83 = v225;
  sub_6A0AE8(a4, v82, v225);
  v84 = sub_75AEF0();
  v85 = 0;
  if (v84)
  {
    v85 = sub_75AFE0();
  }

  v232 = v85;
  v216 = v36;
  sub_75B000();
  v87 = v86;
  if (v86)
  {
  }

  v203 = v87;
  sub_75B010();
  v89 = v88;
  if (v88)
  {
  }

  sub_75AF00();
  (*(v75 + 104))(v77, enum case for ShelfBackground.interactive(_:), v74);
  v90 = sub_75B650();
  v91 = *(v75 + 8);
  v91(v77, v74);
  v91(v81, v74);
  v92 = v226;
  v94 = v228;
  v93 = v229;
  v95 = v230;
  v96 = v83;
  v97 = sub_69FCF8(a1, v226, v229, v228, v230, v83);
  v98 = sub_69FACC(a1, v92, v93, v94, v95, v96);
  if (v90)
  {
    sub_36492C(v89 != 0, v231);

    return;
  }

  v99 = v89;
  v187 = v89;
  if (v97)
  {
    if (v232)
    {

      v100 = sub_764AF0();

      v101 = v204;
      v102 = v220;
      if (v100)
      {
        sub_759820();

        v103 = 0;
      }

      else
      {
        v103 = 1;
      }
    }

    else
    {
      v103 = 1;
      v101 = v204;
      v102 = v220;
    }

    v108 = sub_759810();
    v109 = *(v108 - 8);
    (*(v109 + 56))(v102, v103, 1, v108);
    v110 = sub_75CFD0();
    v229 = *(v110 - 1);
    (*(v229 + 7))(v222, 1, 1, v110);
    v230 = v110;
    if (v99)
    {
      v111 = (v109 + 48);
      if (v97 == 1)
      {
        v112 = v195;
        sub_1ED18(v102, v195, &unk_948010, qword_789590);
        if ((*v111)(v112, 1, v108) == 1)
        {
          sub_10A2C(v112, &unk_948010, qword_789590);
          v113 = 0;
        }

        else
        {
          v113 = sub_7597B0();
          (*(v109 + 8))(v112, v108);
        }

        v121 = v216;
        v122 = v207;
        sub_5E740C(v113, v221);

        if (qword_93DE80 != -1)
        {
          swift_once();
        }

        v123 = qword_9A0298;
      }

      else
      {
        v116 = v196;
        sub_1ED18(v102, v196, &unk_948010, qword_789590);
        if ((*v111)(v116, 1, v108) == 1)
        {
          sub_10A2C(v116, &unk_948010, qword_789590);
          v117 = 0;
        }

        else
        {
          v117 = sub_7597B0();
          (*(v109 + 8))(v116, v108);
        }

        v121 = v216;
        v122 = v207;
        sub_5E740C(v117, v221);

        if (qword_93DE70 != -1)
        {
          swift_once();
        }

        v123 = qword_9A0268;
      }

      v124 = sub_BE38(v121, v123);
      sub_6A0A80(v124, v101, type metadata accessor for TitleHeaderView.TextConfiguration);
      if (qword_93DE30 != -1)
      {
        swift_once();
      }

      v125 = 0;
      v126 = qword_9A01A8;
      v127 = v122;
    }

    else
    {
      if (v97 == 1)
      {
        v114 = v193;
        sub_1ED18(v102, v193, &unk_948010, qword_789590);
        if ((*(v109 + 48))(v114, 1, v108) == 1)
        {
          sub_10A2C(v114, &unk_948010, qword_789590);
          v115 = 0;
        }

        else
        {
          v115 = sub_7597B0();
          (*(v109 + 8))(v114, v108);
        }

        v121 = v216;
        v122 = v207;
        sub_5E740C(v115, v221);

        if (qword_93DE78 != -1)
        {
          swift_once();
        }

        v125 = 1;
        v126 = qword_9A0280;
      }

      else
      {
        v118 = (v109 + 48);
        if (v203)
        {
          v119 = v190;
          sub_1ED18(v102, v190, &unk_948010, qword_789590);
          if ((*v118)(v119, 1, v108) == 1)
          {
            sub_10A2C(v119, &unk_948010, qword_789590);
            v120 = 0;
          }

          else
          {
            v120 = sub_7597B0();
            (*(v109 + 8))(v119, v108);
          }

          v121 = v216;
          v122 = v207;
          sub_5E7414(v120, v221);

          if (qword_93DE68 != -1)
          {
            swift_once();
          }

          v125 = 1;
          v126 = qword_9A0250;
        }

        else
        {
          v143 = v188;
          sub_1ED18(v102, v188, &unk_948010, qword_789590);
          if ((*v118)(v143, 1, v108) == 1)
          {
            sub_10A2C(v143, &unk_948010, qword_789590);
            v144 = 0;
          }

          else
          {
            v144 = sub_7597B0();
            (*(v109 + 8))(v143, v108);
          }

          v121 = v216;
          v122 = v207;
          sub_5E740C(v144, v221);

          if (qword_93DE60 != -1)
          {
            swift_once();
          }

          v125 = 1;
          v126 = qword_9A0238;
        }
      }

      v127 = v101;
    }

    LODWORD(v228) = v99 != 0;
    v167 = sub_BE38(v121, v126);
    sub_6A0A80(v167, v127, type metadata accessor for TitleHeaderView.TextConfiguration);
    (*(v215 + 56))(v122, v125, 1, v121);
    v168 = v221;
    v169 = v205;
    sub_6A0A80(v221, v205, type metadata accessor for TitleHeaderView.TextConfiguration);
    v170 = v206;
    sub_6A0A80(v101, v206, type metadata accessor for TitleHeaderView.TextConfiguration);
    v171 = v101;
    v172 = v208;
    sub_1ED18(v122, v208, &qword_9439E0, &unk_787AB0);
    v173 = v222;
    sub_1ED18(v222, v223, &qword_9439D8, &qword_799160);
    v175 = v217;
    v174 = v218;
    (*(v217 + 104))(v224, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v218);
    sub_396E8();
    v176 = sub_769FB0();

    sub_10A2C(v173, &qword_9439D8, &qword_799160);
    sub_10A2C(v122, &qword_9439E0, &unk_787AB0);
    sub_C1DBC(v171, v177);
    sub_C1DBC(v168, v178);
    sub_10A2C(v220, &unk_948010, qword_789590);
    v179 = v219;
    v180 = *(v219 + 32);
    v181 = v169;
    v162 = v209;
    sub_C1E18(v181, v209, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_C1E18(v170, v162 + v179[5], type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_15CF04(v172, v162 + v179[6]);
    *(v162 + v179[7]) = 0;
    *(v162 + v180) = 0;
    *(v162 + v179[9]) = v228;
    *(v162 + v179[14]) = 0x4030000000000000;
    *(v162 + v179[12]) = 0;
    *(v162 + v179[13]) = v176;
    v182 = v223;
    (*(v175 + 32))(v162 + v179[11], v224, v174);
    v184 = v229;
    v183 = v230;
    if ((*(v229 + 6))(v182, 1, v230) == 1)
    {
      sub_10A2C(v182, &qword_9439D8, &qword_799160);
      if (v187)
      {
        v185 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
      }

      else
      {
        v185 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
      }

      (*(v184 + 13))(v162 + v179[10], *v185, v183);
    }

    else
    {
      (*(v184 + 4))(v162 + v179[10], v182, v183);
    }

    goto LABEL_101;
  }

  LODWORD(v230) = v98;
  if (v232)
  {

    v104 = sub_764AF0();

    v105 = v197;
    v106 = v210;
    if (v104)
    {
      sub_759820();

      v107 = 0;
    }

    else
    {
      v107 = 1;
    }
  }

  else
  {
    v107 = 1;
    v105 = v197;
    v106 = v210;
  }

  v128 = sub_759810();
  v129 = *(v128 - 8);
  (*(v129 + 56))(v106, v107, 1, v128);
  v130 = sub_75CFD0();
  v228 = *(v130 - 1);
  v229 = v130;
  (v228[7])(v212, 1, 1);
  v131 = (v129 + 48);
  if (v203)
  {
    if (v99)
    {
      v132 = v194;
      sub_1ED18(v106, v194, &unk_948010, qword_789590);
      if ((*v131)(v132, 1, v128) == 1)
      {
        sub_10A2C(v132, &unk_948010, qword_789590);
        v133 = 0;
      }

      else
      {
        v133 = sub_7597B0();
        (*(v129 + 8))(v132, v128);
      }

      v138 = v216;
      v139 = v200;
      sub_5E740C(v133, v211);

      if (qword_93DE58 != -1)
      {
        swift_once();
      }

      v140 = qword_9A0220;
LABEL_68:
      v145 = sub_BE38(v138, v140);
      sub_6A0A80(v145, v105, type metadata accessor for TitleHeaderView.TextConfiguration);
      if (qword_93DE30 != -1)
      {
        swift_once();
      }

      v146 = 0;
      v147 = qword_9A01A8;
      v148 = v139;
      goto LABEL_84;
    }

    v136 = v191;
    sub_1ED18(v106, v191, &unk_948010, qword_789590);
    if ((*v131)(v136, 1, v128) == 1)
    {
      sub_10A2C(v136, &unk_948010, qword_789590);
      v137 = 0;
    }

    else
    {
      v137 = sub_7597B0();
      (*(v129 + 8))(v136, v128);
    }

    v138 = v216;
    v139 = v200;
    sub_5E740C(v137, v211);

    if (qword_93DE40 != -1)
    {
      swift_once();
    }

    v146 = 1;
    v147 = qword_9A01D8;
  }

  else
  {
    if (v99)
    {
      v134 = v192;
      sub_1ED18(v106, v192, &unk_948010, qword_789590);
      if ((*v131)(v134, 1, v128) == 1)
      {
        sub_10A2C(v134, &unk_948010, qword_789590);
        v135 = 0;
      }

      else
      {
        v135 = sub_7597B0();
        (*(v129 + 8))(v134, v128);
      }

      v138 = v216;
      v139 = v200;
      sub_5E740C(v135, v211);

      if (qword_93DE50 != -1)
      {
        swift_once();
      }

      v140 = qword_9A0208;
      goto LABEL_68;
    }

    v141 = v189;
    sub_1ED18(v106, v189, &unk_948010, qword_789590);
    if ((*v131)(v141, 1, v128) == 1)
    {
      sub_10A2C(v141, &unk_948010, qword_789590);
      v142 = 0;
    }

    else
    {
      v142 = sub_7597B0();
      (*(v129 + 8))(v141, v128);
    }

    v138 = v216;
    v139 = v200;
    sub_5E740C(v142, v211);

    if (qword_93DE38 != -1)
    {
      swift_once();
    }

    v146 = 1;
    v147 = qword_9A01C0;
  }

  v148 = v105;
LABEL_84:
  LODWORD(v227) = v99 != 0;
  v149 = sub_BE38(v138, v147);
  sub_6A0A80(v149, v148, type metadata accessor for TitleHeaderView.TextConfiguration);
  (*(v215 + 56))(v139, v146, 1, v138);
  v150 = v211;
  v151 = v198;
  sub_6A0A80(v211, v198, type metadata accessor for TitleHeaderView.TextConfiguration);
  v152 = v199;
  sub_6A0A80(v105, v199, type metadata accessor for TitleHeaderView.TextConfiguration);
  v153 = v201;
  sub_1ED18(v139, v201, &qword_9439E0, &unk_787AB0);
  v154 = v212;
  sub_1ED18(v212, v213, &qword_9439D8, &qword_799160);
  v155 = v217;
  v156 = v218;
  (*(v217 + 104))(v214, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v218);
  sub_396E8();
  v226 = sub_769FB0();

  sub_10A2C(v154, &qword_9439D8, &qword_799160);
  sub_10A2C(v139, &qword_9439E0, &unk_787AB0);
  sub_C1DBC(v105, v157);
  sub_C1DBC(v150, v158);
  sub_10A2C(v210, &unk_948010, qword_789590);
  v159 = v219;
  v160 = *(v219 + 32);
  v161 = v151;
  v162 = v202;
  sub_C1E18(v161, v202, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_C1E18(v152, v162 + v159[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_15CF04(v153, v162 + v159[6]);
  *(v162 + v159[7]) = v230 & 1;
  *(v162 + v160) = 0;
  *(v162 + v159[9]) = v227;
  *(v162 + v159[14]) = 0x4030000000000000;
  *(v162 + v159[12]) = 0;
  *(v162 + v159[13]) = v226;
  v163 = v213;
  (*(v155 + 32))(v162 + v159[11], v214, v156);
  v165 = v228;
  v164 = v229;
  if ((v228[6])(v163, 1, v229) == 1)
  {
    sub_10A2C(v163, &qword_9439D8, &qword_799160);
    if (v187)
    {
      v166 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
    }

    else
    {
      v166 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
    }

    (v165[13])(v162 + v159[10], *v166, v164);
  }

  else
  {
    (v165[4])(v162 + v159[10], v163, v164);
  }

LABEL_101:
  sub_C1E18(v162, v231, type metadata accessor for TitleHeaderView.Style);
}

void *sub_69F5B8()
{

  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();

  return v0;
}

double sub_69F610(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v37 = a4;
  v36 = a3;
  v35 = a2;
  v4 = sub_BD88(&qword_951BE0, &unk_782280);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_764930();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  sub_75EB10();
  sub_6A0AE8(&qword_94D5C8, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BaseShelfPresenter);
  sub_75AFE0();
  v38 = v13;
  sub_764940();
  if (v36)
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    v14 = 0;
    v15 = v6;
    v16 = v38;
    v17 = v7;
  }

  else
  {
    sub_75AF10();
    (*(v8 + 56))(v6, 0, 1, v7);
    sub_75AFF0();
    v15 = v6;
    v17 = v7;
    if (v18)
    {

      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    v16 = v38;
  }

  v19 = v37;
  (*(v8 + 16))(v10, v16, v17);
  v20 = (*(v8 + 88))(v10, v17);
  if (v20 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    v21 = &off_89D438;
  }

  else
  {
    if (v20 != enum case for Shelf.ContentType.informationRibbon(_:))
    {
      (*(v8 + 8))(v10, v17);
      goto LABEL_14;
    }

    type metadata accessor for InformationRibbonCollectionViewCell(0);
    v21 = &off_8924D0;
  }

  v22 = (v21[1])();
  if ((v23 & 1) == 0)
  {
LABEL_19:
    v33 = *&v22;

    v32 = v33;
    goto LABEL_20;
  }

LABEL_14:
  if (sub_3AC688())
  {
    v22 = (*(v24 + 40))(v15, v14, v19);
    if ((v25 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  if (qword_93DCF0 != -1)
  {
    swift_once();
  }

  v26 = sub_766CA0();
  sub_BE38(v26, qword_99FE18);
  v27 = [v19 traitCollection];
  sub_7671D0();
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_77D9F0;
  *(v28 + 32) = v27;
  v29 = v27;
  v30 = sub_7671E0();
  sub_7666E0();
  v32 = v31;

  v16 = v38;
LABEL_20:
  sub_10A2C(v15, &qword_951BE0, &unk_782280);
  (*(v8 + 8))(v16, v17);
  return v32;
}

uint64_t sub_69FACC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, __n128), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a2;
  v26 = a6;
  v10 = sub_BD88(&qword_951BE0, &unk_782280);
  __chkstk_darwin(v10 - 8);
  v12 = &v25 - v11;
  v13 = sub_764930();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(0, v15);
  sub_6A0AE8(a4, a5, v26);
  v18 = a1;
  sub_75AF10();
  v19 = sub_3AC688();
  v21 = v20;
  (*(v14 + 8))(v17, v13);
  if (v19)
  {
    if (v18 < 1)
    {
      v22 = 1;
    }

    else
    {
      sub_75AF10();
      v22 = 0;
    }

    (*(v14 + 56))(v12, v22, 1, v13);
    v23 = (*(v21 + 96))(v12, v25, v19, v21);
    sub_10A2C(v12, &qword_951BE0, &unk_782280);
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_69FCF8(uint64_t a1, void *a2, uint64_t (*a3)(void, __n128), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v70 = a2;
  v11 = sub_BD88(&qword_9439F0, &qword_7ACF90);
  __chkstk_darwin(v11);
  v72 = &v63 - v12;
  v13 = sub_75B660();
  v71 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  __chkstk_darwin(v18);
  v74 = &v63 - v19;
  v23 = __chkstk_darwin(v20);
  v73 = &v63 - v24;
  if (a1 >= 1)
  {
    v67 = v22;
    v68 = v21;
    a3(0, v23);
    sub_6A0AE8(a4, a5, a6);
    if (sub_75AF30() >= 1)
    {
      v25 = v73;
      sub_75AF00();
      v26 = v74;
      sub_75AF00();
      v27 = v25;
      v28 = *(v11 + 48);
      v30 = v71;
      v29 = v72;
      v31 = v71[2];
      v31(v72, v27, v13);
      v69 = v28;
      v31((v29 + v28), v26, v13);
      v32 = v30[11];
      v33 = v32(v29, v13);
      if (v33 == enum case for ShelfBackground.color(_:))
      {
        v34 = v33;
        v35 = v68;
        v31(v68, v29, v13);
        v64 = v30[12];
        v64(v35, v13);
        v65 = *v35;
        v63 = sub_BD88(&unk_959640, qword_78DD60);
        v66 = *(v63 + 48);
        if (v32(v29 + v69, v13) == v34)
        {
          v36 = v67;
          v31(v67, &v72[v69], v13);
          v64(v36, v13);
          v37 = *v36;
          v64 = *(v63 + 48);
          v38 = v70;
          v39 = [v70 traitCollection];
          v40 = v65;
          v41 = [v65 resolvedColorWithTraitCollection:v39];

          v42 = [v38 traitCollection];
          v43 = [v37 resolvedColorWithTraitCollection:v42];

          sub_396E8();
          LOBYTE(v42) = sub_76A1C0();

          v44 = v69;
          if ((v42 & 1) == 0)
          {
            v59 = v71[1];
            v59(v74, v13);
            v59(v73, v13);
            v60 = sub_75EDA0();
            v61 = *(*(v60 - 8) + 8);
            v61(v64 + v36, v60);
            v61(v68 + v66, v60);
            v62 = v72;
            v59(&v72[v44], v13);
            v59(v62, v13);
            return 2;
          }

          v45 = sub_75EDA0();
          v46 = *(*(v45 - 8) + 8);
          v46(v64 + v36, v45);
          v46(v68 + v66, v45);
        }

        else
        {
          v47 = sub_75EDA0();
          (*(*(v47 - 8) + 8))(v35 + v66, v47);
        }

        v30 = v71;
        v29 = v72;
      }

      v48 = enum case for ShelfBackground.none(_:);
      v49 = v30[13];
      v49(v15, enum case for ShelfBackground.none(_:), v13);
      v50 = sub_6A0AE8(&qword_9439F8, &type metadata accessor for ShelfBackground, &protocol conformance descriptor for ShelfBackground);
      v51 = sub_7691C0();
      v52 = v30[1];
      v52(v15, v13);
      if ((v51 & 1) == 0)
      {
        v49(v15, v48, v13);
        v53 = sub_75B650();
        v52(v15, v13);
        if (v53)
        {
          v52(v74, v13);
          v52(v73, v13);
LABEL_14:
          v52((v29 + v69), v13);
          v52(v29, v13);
          return 2;
        }
      }

      v71 = v50;
      v49(v15, v48, v13);
      v54 = v73;
      v55 = sub_75B650();
      v52(v15, v13);
      if (v55)
      {
        v49(v15, v48, v13);
        v56 = v74;
        v57 = sub_7691C0();
        v52(v15, v13);
        v52(v56, v13);
        v52(v54, v13);
        if ((v57 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v52(v74, v13);
        v52(v54, v13);
      }

      sub_10A2C(v29, &qword_9439F0, &qword_7ACF90);
    }
  }

  return 0;
}

double sub_6A04CC(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v9 = sub_764930();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v19[-v14];
  if (a3)
  {
    return sub_69F610(a1, a2, a3 & 1, a4);
  }

  v22 = v4;
  sub_75D330();
  (*(v10 + 104))(v12, enum case for Shelf.ContentType.privacyDefinition(_:), v9);
  sub_6A0AE8(&qword_942D68, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  sub_769430();
  sub_769430();
  if (v25 == v23 && v26 == v24)
  {
    v17 = *(v10 + 8);
    v17(v12, v9);
    v17(v15, v9);

    return 0.0;
  }

  else
  {
    v20 = sub_76A950();
    v21 = a2;
    v18 = *(v10 + 8);
    v18(v12, v9);
    v18(v15, v9);
    a2 = v21;

    result = 0.0;
    if ((v20 & 1) == 0)
    {
      return sub_69F610(a1, a2, a3 & 1, a4);
    }
  }

  return result;
}

void sub_6A0744(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a3;
  v5 = sub_764930();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  sub_75D330();
  (*(v6 + 104))(v8, enum case for Shelf.ContentType.privacyDefinition(_:), v5);
  sub_6A0AE8(&qword_942D68, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  sub_769430();
  sub_769430();
  if (v20 == v19)
  {
    v12 = *(v6 + 8);
    v12(v8, v5);
    v12(v11, v5);
  }

  else
  {
    v17 = a2;
    v13 = sub_76A950();
    v14 = *(v6 + 8);
    v14(v8, v5);
    v14(v11, v5);

    if ((v13 & 1) == 0)
    {
      sub_69DBD8(a1, v17, &type metadata accessor for GenericPagePresenter, &qword_94D5C8, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BaseShelfPresenter, &type metadata accessor for GenericPagePresenter, v18);
      return;
    }
  }

  if (qword_93CDD0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for TitleHeaderView.Style(0);
  v16 = sub_BE38(v15, qword_99D4B0);
  sub_6A0A80(v16, v18, type metadata accessor for TitleHeaderView.Style);
}

uint64_t type metadata accessor for PrivacyDefinitionsDataSource(uint64_t a1)
{
  result = qword_961728;
  if (!qword_961728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6A0A80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_6A0AE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_6A0B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v59 = a5;
  v60 = a6;
  v9 = sub_BD88(&qword_961A28, qword_7ACF98);
  __chkstk_darwin(v9 - 8);
  v54 = &v50 - v10;
  v64 = sub_7684B0();
  v11 = *(v64 - 8);
  __chkstk_darwin(v64);
  v57 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v50 = &v50 - v14;
  v15 = sub_768940();
  v68 = *(v15 - 8);
  __chkstk_darwin(v15);
  v55 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v69 = &v50 - v18;
  sub_75A110();
  sub_7688F0();
  v19 = v70;
  if (!v70)
  {
    result = sub_768890();
    __break(1u);
    return result;
  }

  swift_allocObject();

  v58 = v19;
  v20 = sub_75A0F0();
  v21 = sub_BD88(&qword_94DC10, &qword_791AD0);
  v22 = *(v11 + 72);
  v63 = v11;
  v23 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v53 = 2 * v22;
  v52 = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_77E280;
  v67 = v23;
  *&v70 = v20;
  v56 = v20;

  sub_768490();
  sub_BD88(&unk_943590, &unk_784940);
  type metadata accessor for LinkPresentationProvider();
  *&v70 = swift_allocObject();
  swift_allocObject();
  *&v70 = sub_758C40();
  sub_768490();
  v73 = v24;
  v61 = a4;
  v62 = a1;
  if (a2)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      swift_unknownObjectRetain();
      sub_75EB80();
      v25 = sub_75EB90();
      v51 = v26;
      v66 = v25;
      swift_unknownObjectRetain();
      v27 = sub_75EBA0();
      swift_unknownObjectRelease();
      goto LABEL_7;
    }
  }

  sub_75A920();
  sub_768900();
  sub_768ED0();
  sub_75A840();
  sub_768ED0();
  sub_768D00();
  sub_75A7E0();
  v28 = sub_768CF0();
  sub_75F520();
  swift_allocObject();
  swift_retain_n();
  v66 = v28;
  v27 = sub_75F4F0();

  if (a2)
  {
    v51 = &protocol witness table for BasicImpressionsTracker;
LABEL_7:
    swift_getObjectType();
    v29 = swift_conformsToProtocol2();
    v65 = v27;
    if (v29)
    {
      sub_762C90();
      swift_getObjectType();
      swift_unknownObjectRetain();

      *&v70 = sub_763F30();
      v30 = v50;
      sub_768490();
      v32 = *(v24 + 16);
      v31 = *(v24 + 24);
      if (v32 >= v31 >> 1)
      {
        v24 = sub_7B350((v31 > 1), v32 + 1, 1, v24);
      }

      v33 = v67;
      swift_unknownObjectRelease();
      *(v24 + 16) = v32 + 1;
      (*(v63 + 32))(v24 + v33 + v32 * v22, v30, v64);
      v73 = v24;
    }

    else
    {
    }

    goto LABEL_13;
  }

  v51 = &protocol witness table for BasicImpressionsTracker;
  v65 = v27;
LABEL_13:
  v50 = (8 * v22);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_783150;
  sub_75C360();
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  v34 = v68;
  v35 = v69;
  v36 = *(v68 + 16);
  v37 = v54;
  v36(v54, v69, v15);
  (*(v34 + 56))(v37, 0, 1, v15);
  swift_allocObject();
  *&v70 = sub_75C350();
  sub_768490();
  v38 = sub_761120();
  sub_7625F0();
  v39 = sub_7625E0();
  sub_7625C0();

  v40 = v55;
  v36(v55, v35, v15);
  v41 = objc_allocWithZone(v38);
  *&v70 = sub_7610E0();
  sub_768490();
  *&v70 = [objc_allocWithZone(sub_75E3E0()) init];
  sub_768490();
  v36(v40, v35, v15);
  sub_768490();
  sub_BD88(&qword_942490, &qword_781F58);
  *&v70 = v66;
  *(&v70 + 1) = v51;
  sub_768490();
  sub_75F520();
  *&v70 = v65;
  sub_768490();
  type metadata accessor for TodayCardOverlayReusePool();
  swift_allocObject();
  *&v70 = sub_4AB838(25);
  sub_768490();
  type metadata accessor for TodayCardGridTracker();
  v42 = swift_allocObject();
  *(v42 + 16) = sub_10D6C4(_swiftEmptyArrayStorage);
  *&v70 = v42;
  sub_768490();
  sub_10A200(v52);
  sub_757860();
  swift_allocObject();

  *&v70 = sub_757870();
  v43 = v57;
  sub_768490();
  v44 = v73;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v44 = sub_7B350(0, *(v44 + 2) + 1, 1, v44);
  }

  v45 = v61;
  v47 = *(v44 + 2);
  v46 = *(v44 + 3);
  if (v47 >= v46 >> 1)
  {
    v44 = sub_7B350((v46 > 1), v47 + 1, 1, v44);
  }

  *(v44 + 2) = v47 + 1;
  (*(v63 + 32))(v44 + v67 + v47 * v22, v43, v64);
  sub_768900();

  sub_7688B0();
  *&v70 = v44;
  sub_BD88(&qword_957CD8, &qword_7B15C0);
  sub_6A158C();
  sub_7688D0();

  *&v70 = v45;
  sub_7688D0();

  v48 = sub_7688E0();

  swift_unknownObjectRelease();

  (*(v68 + 8))(v69, v15);
  return v48;
}

unint64_t sub_6A158C()
{
  result = qword_957CE0;
  if (!qword_957CE0)
  {
    sub_133D8(&qword_957CD8, &qword_7B15C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_957CE0);
  }

  return result;
}

uint64_t MetadataRibbonBarViewLayout.Metrics.standard.unsafeMutableAddressor()
{
  if (qword_93E0C0 != -1)
  {
    swift_once();
  }

  v0 = sub_762310();

  return sub_BE38(v0, static MetadataRibbonBarViewLayout.Metrics.standard);
}

char *sub_6A1654(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_762310();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v42[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonBarView_metrics;
  if (qword_93E0C0 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v11, static MetadataRibbonBarViewLayout.Metrics.standard);
  v17 = *(v12 + 16);
  v17(&v5[v15], v16, v11);
  v18 = &v5[OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonBarView_id];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 4) = 0;
  v19 = OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonBarView_itemType;
  v20 = sub_75FC90();
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  v21 = &v5[OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonBarView_labelMaxWidth];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v5[OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonBarView_truncationLegibilityThreshold];
  *v22 = 0;
  v22[8] = 1;
  v5[OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonBarView_allowsTruncation] = 2;
  sub_75BB20();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonBarView_dividerLabel] = sub_75BB00();
  v43.receiver = v5;
  v43.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v43, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonBarView_dividerLabel;
  v29 = *&v27[OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonBarView_dividerLabel];
  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 separatorColor];
  [v31 setTextColor:v32];

  v33 = *&v27[v28];
  v17(v14, &v27[OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonBarView_metrics], v11);
  v34 = v33;
  v35 = sub_762300();
  (*(v12 + 8))(v14, v11);
  [v34 setNumberOfLines:v35];

  v36 = *&v27[v28];
  sub_766B40();
  if (qword_93C740 != -1)
  {
    swift_once();
  }

  v37 = sub_760500();
  v38 = sub_BE38(v37, qword_99BB00);
  v42[3] = v37;
  v42[4] = sub_DC39C();
  v39 = sub_B1B4(v42);
  (*(*(v37 - 8) + 16))(v39, v38, v37);
  sub_75BA60();

  [v27 addSubview:*&v27[v28]];
  return v27;
}

uint64_t sub_6A1A9C()
{
  ObjectType = swift_getObjectType();
  v18 = sub_7664F0();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_762310();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_762320();
  v9 = *(v17 - 8);
  *&v10 = __chkstk_darwin(v17).n128_u64[0];
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v0;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "layoutSubviews", v10);
  v13 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonBarView_dividerLabel];
  v20 = sub_75BB20();
  v21 = &protocol witness table for UILabel;
  v19 = v13;
  (*(v6 + 16))(v8, &v0[OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonBarView_metrics], v5);
  v14 = v13;
  sub_7622C0();
  sub_75D650();
  sub_7622E0();
  (*(v2 + 8))(v4, v18);
  return (*(v9 + 8))(v12, v17);
}

double sub_6A2030(__n128 a1)
{
  sub_75D7B0();
  v2 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonBarView_dividerLabel];
  if (v3)
  {
    v4 = sub_769210();
  }

  else
  {
    v4 = 0;
  }

  [v2 setText:v4];

  [v1 setNeedsLayout];

  return result;
}

uint64_t sub_6A20C4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonBarView_itemType;
  swift_beginAccess();
  return sub_1ED18(v1 + v3, a1, &qword_93EBC0, qword_783DC0);
}

uint64_t sub_6A212C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonBarView_itemType;
  swift_beginAccess();
  sub_B33C8(a1, v1 + v3, &qword_93EBC0, qword_783DC0);
  return swift_endAccess();
}

void sub_6A2208(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonBarView_labelMaxWidth;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

void sub_6A22D4(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonBarView_truncationLegibilityThreshold;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t sub_6A2394()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonBarView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_6A23D8(char a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonBarView_allowsTruncation;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_6A2488@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonBarView_id;
  swift_beginAccess();
  return sub_1ED18(v1 + v3, a1, &unk_9443A0, &unk_77E240);
}

uint64_t sub_6A24F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonBarView_id;
  swift_beginAccess();
  sub_B33C8(a1, v1 + v3, &unk_9443A0, &unk_77E240);
  return swift_endAccess();
}

uint64_t sub_6A25C0()
{
  v0 = sub_BD88(&unk_93F5A0, &unk_77E570);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - v2;
  v4 = sub_762310();
  sub_161DC(v4, static MetadataRibbonBarViewLayout.Metrics.standard);
  sub_BE38(v4, static MetadataRibbonBarViewLayout.Metrics.standard);
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  sub_7593B0();
  sub_7622F0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t static MetadataRibbonBarViewLayout.Metrics.standard.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_93E0C0 != -1)
  {
    swift_once();
  }

  v2 = sub_762310();
  v3 = sub_BE38(v2, static MetadataRibbonBarViewLayout.Metrics.standard);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t type metadata accessor for MetadataRibbonBarView(uint64_t a1)
{
  result = qword_961A68;
  if (!qword_961A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_6A27FC(uint64_t a1)
{
  sub_762310();
  if (v1 <= 0x3F)
  {
    sub_DBB44(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

double sub_6A28F0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v39 = a2;
  v33 = a1;
  v4 = sub_762310();
  v36 = *(v4 - 8);
  __chkstk_darwin(v4);
  v35 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_762320();
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin(v6);
  v34 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_766D70();
  v31 = *(v32 - 8);
  __chkstk_darwin(v32);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_767030();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  __chkstk_darwin(v17);
  v19 = &v29 - v18;
  if (qword_93E0C0 != -1)
  {
    swift_once();
  }

  v20 = sub_BE38(v4, static MetadataRibbonBarViewLayout.Metrics.standard);
  sub_767020();
  sub_766B40();
  v30 = v4;
  if (qword_93C740 != -1)
  {
    swift_once();
  }

  v21 = sub_760500();
  v22 = sub_BE38(v21, qword_99BB00);
  v41[3] = v21;
  v41[4] = sub_DC39C();
  v23 = sub_B1B4(v41);
  (*(*(v21 - 8) + 16))(v23, v22, v21);
  sub_766F80();
  v24 = *(v11 + 8);
  v24(v13, v10);
  sub_BEB8(v41);
  sub_762300();
  sub_767010();
  v24(v16, v10);
  sub_75D7B0();
  (*(v11 + 16))(v16, v19, v10);
  sub_766D50();
  sub_766D90();
  sub_766D40();
  (*(v31 + 8))(v9, v32);
  sub_134D8(v41, v40);
  (*(v36 + 16))(v35, v20, v30);
  v25 = v34;
  sub_7622C0();
  sub_7622D0();
  v27 = v26;
  (*(v37 + 8))(v25, v38);
  sub_BEB8(v41);
  v24(v19, v10);
  return v27;
}

void sub_6A2DE4()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonBarView_metrics;
  if (qword_93E0C0 != -1)
  {
    swift_once();
  }

  v2 = sub_762310();
  v3 = sub_BE38(v2, static MetadataRibbonBarViewLayout.Metrics.standard);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  v4 = v0 + OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonBarView_id;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  v5 = OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonBarView_itemType;
  v6 = sub_75FC90();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = v0 + OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonBarView_labelMaxWidth;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v0 + OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonBarView_truncationLegibilityThreshold;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider21MetadataRibbonBarView_allowsTruncation) = 2;
  sub_76A840();
  __break(1u);
}

double sub_6A2F64()
{
  qword_961A80 = 0;
  swift_unknownObjectWeakInit();
  return result;
}

unint64_t sub_6A2F7C()
{
  result = qword_952550;
  if (!qword_952550)
  {
    type metadata accessor for VideoView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_952550);
  }

  return result;
}

void sub_6A2FD4(uint64_t a1, char a2)
{
  v5 = *&v2[qword_940590];
  v6 = [v5 layer];
  [v6 removeAllAnimations];

  if ((a2 & 1) != 0 && ([v5 alpha], v7 == 1.0))
  {
    [v5 setAlpha:0.0];
    [v5 setImage:a1];
    sub_25519C();
    v8 = v2;
    v9 = sub_769B70();
    v10 = swift_allocObject();
    *(v10 + 16) = v2;
    v13[4] = sub_6A32E8;
    v13[5] = v10;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_23F0CC;
    v13[3] = &unk_89C690;
    v11 = _Block_copy(v13);
    v12 = v8;

    [v9 addAnimations:v11];
    _Block_release(v11);
    [v9 startAnimation];
  }

  else
  {

    [v5 setImage:a1];
  }
}

id sub_6A31A0()
{
  v1 = [*(v0 + qword_940590) image];

  return v1;
}

void sub_6A31E4(void *a1)
{
  [*(v1 + qword_940590) setImage:a1];
}

void (*sub_6A3238(void *a1))(id *a1)
{
  v3 = *(v1 + qword_940590);
  a1[1] = v3;
  *a1 = [v3 image];
  return sub_647B04;
}

uint64_t sub_6A32B0()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_6A330C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_6A3324()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27VideoCardCollectionViewCell_videoCardView);
  [v1 frame];
  MinX = CGRectGetMinX(v4);
  [v1 frame];
  CGRectGetMinY(v5);
  [v1 frame];
  CGRectGetWidth(v6);
  [v1 frame];
  CGRectGetHeight(v7);
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_overlayView] frame];
  CGRectGetHeight(v8);
  return MinX;
}

void *sub_6A33E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27VideoCardCollectionViewCell_avatarShowcase);
  v2 = v1;
  return v1;
}

void (*sub_6A3418(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider27VideoCardCollectionViewCell_avatarShowcase);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_6A3470;
}

void sub_6A3470(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_4D0E4(v2);
  }

  else
  {
    sub_4D0E4(*a1);
  }
}

uint64_t sub_6A34DC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_6A36B0(&qword_940428, type metadata accessor for VideoCardCollectionViewCell, &unk_7AD200);

  return AvatarShowcaseDisplaying.applyAvatars(from:asPartOf:)(a1, a2, ObjectType, v5);
}

uint64_t sub_6A3598(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v4 = sub_6A36B0(&qword_940428, type metadata accessor for VideoCardCollectionViewCell, &unk_7AD200);

  return a3(ObjectType, v4);
}

uint64_t sub_6A36B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_6A36F8()
{
  v1 = sub_BD88(&unk_93F980, &qword_77EDA0);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = &v11 - v3;
  result = [v0 view];
  if (result)
  {
    v6 = result;
    v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider26TapActionGestureRecognizer_objectGraph];
    v8 = sub_BD88(&unk_93F630, &unk_77E230);
    sub_768860();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v4, 1, v8) == 1)
    {

      return sub_268C8(v4);
    }

    else
    {

      sub_32A6C0(v10, 1, v7, v4);

      return (*(v9 + 8))(v4, v8);
    }
  }

  return result;
}

void sub_6A398C(__n128 a1)
{
  sub_7622B0();
  v2 = sub_6A3B44(v1);
  v3 = sub_7696E0();
  v5 = _swiftEmptyArrayStorage;
  if (!v3)
  {
LABEL_6:
    sub_1AE9B4(v5, v4);

    return;
  }

  v6 = v3;
  v21 = _swiftEmptyArrayStorage;
  sub_143DA0(0, v3 & ~(v3 >> 63), 0);
  v5 = _swiftEmptyArrayStorage;
  sub_7696C0();
  if ((v6 & 0x8000000000000000) == 0)
  {
    do
    {
      v7 = sub_769710();

      v7(v20, 0);
      v8 = sub_75C670();
      v18 = v9;
      v19 = v8;
      v10 = sub_75C650();
      v17 = v11;
      v12 = sub_75C630();

      v21 = v5;
      v13 = v2;
      v15 = *(v5 + 2);
      v14 = *(v5 + 3);
      if (v15 >= v14 >> 1)
      {
        sub_143DA0((v14 > 1), v15 + 1, 1);
        v5 = v21;
      }

      *(v5 + 2) = v15 + 1;
      v16 = &v5[5 * v15];
      *(v16 + 4) = v19;
      *(v16 + 5) = v18;
      *(v16 + 6) = v10;
      *(v16 + 7) = v17;
      *(v16 + 64) = v12 & 1;
      sub_769700();
      --v6;
      v2 = v13;
    }

    while (v6);
    goto LABEL_6;
  }

  __break(1u);
}

unint64_t sub_6A3B44(__n128 a1)
{
  result = qword_94DC68;
  if (!qword_94DC68)
  {
    sub_7622B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94DC68);
  }

  return result;
}

char *sub_6A3B9C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18ASMessagesProvider30SearchActionCollectionViewCell_itemLayoutContext;
  v10 = sub_75C840();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC18ASMessagesProvider30SearchActionCollectionViewCell_actionContentView;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for SearchActionContentView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v20.receiver = v4;
  v20.super_class = type metadata accessor for SearchActionCollectionViewCell(0);
  v12 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = v12;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v17 = [v16 contentView];
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v18 = [v16 contentView];
  [v18 addSubview:*&v16[OBJC_IVAR____TtC18ASMessagesProvider30SearchActionCollectionViewCell_actionContentView]];

  return v16;
}

id sub_6A3F88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchActionCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SearchActionCollectionViewCell(uint64_t a1)
{
  result = qword_961AF0;
  if (!qword_961AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6A40C0(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v4.value.super.isa = 0;
  v4.is_nil = 0;
  sub_7591D0(v4, a3);
  sub_759210();
  sub_6A41B0(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  return sub_75A0C0();
}

uint64_t sub_6A41B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_6A41F8()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_9A0778);
  sub_BE38(v4, qword_9A0778);
  if (qword_93D448 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99E4E8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

char *sub_6A4468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v81 = a4;
  v74[2] = a3;
  v78 = a2;
  v74[1] = a1;
  v79 = type metadata accessor for DividerView.Style(0);
  __chkstk_darwin(v79);
  v80 = v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_760AD0();
  v6 = *(v83 - 8);
  __chkstk_darwin(v83);
  v82 = v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v8 - 8);
  v10 = v74 - v9;
  v11 = sub_7664A0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = OBJC_IVAR____TtC18ASMessagesProvider14EmptyStateView_divider;
  *&v4[v15] = [objc_allocWithZone(type metadata accessor for DividerView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *v14 = UIFontTextStyleBody;
  (*(v12 + 104))(v14, enum case for FontSource.textStyle(_:), v11);
  v86[3] = v11;
  v86[4] = &protocol witness table for FontSource;
  v16 = sub_B1B4(v86);
  (*(v12 + 16))(v16, v14, v11);
  v17 = UIFontTextStyleBody;
  sub_766CB0();
  (*(v12 + 8))(v14, v11);
  v84 = v4;
  v18 = &v4[OBJC_IVAR____TtC18ASMessagesProvider14EmptyStateView_title];
  *v18 = 0;
  v18[1] = 0;
  v77 = OBJC_IVAR____TtC18ASMessagesProvider14EmptyStateView_titleLabel;
  if (qword_93D448 != -1)
  {
    swift_once();
  }

  v19 = sub_7666D0();
  v20 = sub_BE38(v19, qword_99E4E8);
  v21 = *(v19 - 8);
  v76 = *(v21 + 16);
  v76(v10, v20, v19);
  v75 = *(v21 + 56);
  v75(v10, 0, 1, v19);
  v22 = enum case for DirectionalTextAlignment.none(_:);
  v23 = *(v6 + 104);
  v23(v82, enum case for DirectionalTextAlignment.none(_:), v83);
  v24 = sub_75BB20();
  v25 = objc_allocWithZone(v24);
  v26 = sub_75BB10();
  v27 = v84;
  *&v84[v77] = v26;
  v28 = &v27[OBJC_IVAR____TtC18ASMessagesProvider14EmptyStateView_descriptionText];
  *v28 = 0;
  v28[1] = 0;
  v29 = OBJC_IVAR____TtC18ASMessagesProvider14EmptyStateView_descriptionLabel;
  if (qword_93D928 != -1)
  {
    swift_once();
  }

  v30 = sub_BE38(v19, qword_99F370);
  v76(v10, v30, v19);
  v75(v10, 0, 1, v19);
  v23(v82, v22, v83);
  v31 = objc_allocWithZone(v24);
  v32 = sub_75BB10();
  v33 = v84;
  *&v84[v29] = v32;
  v33[OBJC_IVAR____TtC18ASMessagesProvider14EmptyStateView_hasDivider] = 0;
  v34 = type metadata accessor for EmptyStateView(0);
  v85.receiver = v33;
  v85.super_class = v34;
  v35 = objc_msgSendSuper2(&v85, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v36 = sub_BE70(0, &qword_93E540, UIColor_ptr);
  v37 = v35;
  v38 = sub_76A000();
  [v37 setBackgroundColor:v38];

  if (v78)
  {
    v39 = *&v37[OBJC_IVAR____TtC18ASMessagesProvider14EmptyStateView_titleLabel];
    sub_BD88(&qword_940F40, &qword_785F00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_77B6D0;
    *(inited + 32) = NSParagraphStyleAttributeName;
    v41 = qword_93C2E8;
    v42 = v39;
    v43 = NSParagraphStyleAttributeName;
    if (v41 != -1)
    {
      swift_once();
    }

    v44 = qword_99A448;
    *(inited + 64) = sub_BE70(0, &qword_940F48, NSParagraphStyle_ptr);
    *(inited + 40) = v44;
    v45 = v44;
    sub_10D028(inited);
    swift_setDeallocating();
    sub_252F70(inited + 32);
    v46 = objc_allocWithZone(NSAttributedString);
    v47 = sub_769210();

    type metadata accessor for Key(0);
    sub_206144();
    isa = sub_7690E0().super.isa;

    v49 = [v46 initWithString:v47 attributes:isa];

    [v42 setAttributedText:v49];
  }

  [v37 addSubview:*&v37[OBJC_IVAR____TtC18ASMessagesProvider14EmptyStateView_titleLabel]];
  v50 = OBJC_IVAR____TtC18ASMessagesProvider14EmptyStateView_descriptionLabel;
  [*&v37[OBJC_IVAR____TtC18ASMessagesProvider14EmptyStateView_descriptionLabel] setNumberOfLines:0];
  if (v81)
  {
    v51 = *&v37[v50];
    sub_BD88(&qword_940F40, &qword_785F00);
    v52 = swift_initStackObject();
    *(v52 + 16) = xmmword_77E280;
    *(v52 + 32) = NSParagraphStyleAttributeName;
    v53 = qword_93C2E8;
    v54 = v51;
    v55 = NSParagraphStyleAttributeName;
    if (v53 != -1)
    {
      swift_once();
    }

    v56 = qword_99A448;
    v57 = sub_BE70(0, &qword_940F48, NSParagraphStyle_ptr);
    *(v52 + 40) = v56;
    *(v52 + 64) = v57;
    *(v52 + 72) = NSForegroundColorAttributeName;
    v58 = v56;
    v59 = NSForegroundColorAttributeName;
    v60 = sub_769FF0();
    *(v52 + 104) = v36;
    *(v52 + 80) = v60;
    sub_10D028(v52);
    swift_setDeallocating();
    sub_BD88(qword_940F50, &qword_785170);
    swift_arrayDestroy();
    v61 = objc_allocWithZone(NSAttributedString);
    v62 = sub_769210();

    type metadata accessor for Key(0);
    sub_206144();
    v63 = sub_7690E0().super.isa;

    v64 = [v61 initWithString:v62 attributes:v63];

    [v54 setAttributedText:v64];
  }

  [v37 addSubview:*&v37[v50]];
  v65 = OBJC_IVAR____TtC18ASMessagesProvider14EmptyStateView_divider;
  [*&v37[OBJC_IVAR____TtC18ASMessagesProvider14EmptyStateView_divider] setHidden:(v37[OBJC_IVAR____TtC18ASMessagesProvider14EmptyStateView_hasDivider] & 1) == 0];
  v66 = qword_93D2D8;
  v67 = *&v37[v65];
  if (v66 != -1)
  {
    swift_once();
  }

  v68 = sub_BE38(v79, qword_99E220);
  v69 = v80;
  sub_395C4(v68, v80);
  v70 = &v67[OBJC_IVAR____TtC18ASMessagesProvider11DividerView_style];
  swift_beginAccess();
  sub_39628(v69, v70);
  swift_endAccess();
  v71 = &v67[OBJC_IVAR____TtC18ASMessagesProvider11DividerView_separatorInset];
  v72 = *(v70 + 1);
  *v71 = *v70;
  *(v71 + 1) = v72;
  [v67 setNeedsLayout];
  [v67 setNeedsLayout];

  sub_3968C(v69);
  [v37 addSubview:*&v37[v65]];

  return v37;
}

void sub_6A4EE4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_76A920();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EmptyStateView(0);
  v21.receiver = v0;
  v21.super_class = v7;
  objc_msgSendSuper2(&v21, "layoutSubviews");
  v8 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider14EmptyStateView_divider];
  [v0 frame];
  Width = CGRectGetWidth(v22);
  if (qword_93D2D8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for DividerView.Style(0);
  sub_BE38(v10, qword_99E220);
  if (qword_93D2C8 != -1)
  {
    swift_once();
  }

  v11 = floor(*&qword_99E200);
  sub_766470();
  sub_766CA0();
  sub_766700();
  v13 = v12;
  (*(v4 + 8))(v6, v3);
  [v8 setFrame:{0.0, 0.0, Width, v11 + v13}];
  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  *(v15 + 24) = ObjectType;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_6A5720;
  *(v16 + 24) = v15;
  aBlock[4] = sub_2EC28;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1EB578;
  aBlock[3] = &unk_89C708;
  v17 = _Block_copy(aBlock);
  v18 = v1;

  [v14 performWithoutAnimation:v17];
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

id sub_6A5218(char *a1)
{
  v2 = sub_76A920();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider14EmptyStateView_titleLabel];
  [a1 bounds];
  [v7 sizeThatFits:{v8, v9}];
  v11 = v10;
  v13 = v12;
  v14 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider14EmptyStateView_descriptionLabel];
  [a1 bounds];
  [v14 sizeThatFits:{v15, v16}];
  v18 = v17;
  v20 = v19;
  v21 = v13 + v19;
  [a1 bounds];
  v22 = (CGRectGetWidth(v32) - v11) * 0.5;
  [a1 bounds];
  [v7 setFrame:{v22, (CGRectGetHeight(v33) - v21) * 0.5, v11, v13}];
  [a1 bounds];
  Width = CGRectGetWidth(v34);
  [v7 lastBaselineMaxY];
  v25 = v24;
  if (qword_93E0D0 != -1)
  {
    swift_once();
  }

  v26 = sub_766CA0();
  sub_BE38(v26, qword_9A0778);
  v27 = [a1 traitCollection];
  sub_766470();
  sub_766C70();
  v29 = v28;

  (*(v3 + 8))(v6, v2);
  return [v14 setFrame:{(Width - v18) * 0.5, v25 + v29, v18, v20}];
}

id sub_6A54E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmptyStateView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for EmptyStateView(uint64_t a1)
{
  result = qword_961B48;
  if (!qword_961B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6A5630(uint64_t a1)
{
  result = sub_766CA0();
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

uint64_t sub_6A56E8()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_6A5738(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_6A5750()
{
  v1 = sub_760AD0();
  v35 = *(v1 - 8);
  __chkstk_darwin(v1);
  v33 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = sub_7664A0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = OBJC_IVAR____TtC18ASMessagesProvider14EmptyStateView_divider;
  *(v0 + v10) = [objc_allocWithZone(type metadata accessor for DividerView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *v9 = UIFontTextStyleBody;
  (*(v7 + 104))(v9, enum case for FontSource.textStyle(_:), v6);
  v36[3] = v6;
  v36[4] = &protocol witness table for FontSource;
  v11 = sub_B1B4(v36);
  (*(v7 + 16))(v11, v9, v6);
  v12 = UIFontTextStyleBody;
  sub_766CB0();
  (*(v7 + 8))(v9, v6);
  v34 = v0;
  v13 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider14EmptyStateView_title);
  *v13 = 0;
  v13[1] = 0;
  v31 = OBJC_IVAR____TtC18ASMessagesProvider14EmptyStateView_titleLabel;
  if (qword_93D448 != -1)
  {
    swift_once();
  }

  v14 = sub_7666D0();
  v15 = sub_BE38(v14, qword_99E4E8);
  v16 = *(v14 - 8);
  v30 = *(v16 + 16);
  v30(v5, v15, v14);
  v17 = *(v16 + 56);
  v17(v5, 0, 1, v14);
  v18 = enum case for DirectionalTextAlignment.none(_:);
  v19 = *(v35 + 104);
  v32 = v1;
  v35 += 104;
  v19(v33, enum case for DirectionalTextAlignment.none(_:), v1);
  v20 = sub_75BB20();
  v21 = objc_allocWithZone(v20);
  v22 = sub_75BB10();
  v23 = v34;
  *(v34 + v31) = v22;
  v24 = (v23 + OBJC_IVAR____TtC18ASMessagesProvider14EmptyStateView_descriptionText);
  *v24 = 0;
  v24[1] = 0;
  v31 = OBJC_IVAR____TtC18ASMessagesProvider14EmptyStateView_descriptionLabel;
  if (qword_93D928 != -1)
  {
    swift_once();
  }

  v25 = sub_BE38(v14, qword_99F370);
  v30(v5, v25, v14);
  v17(v5, 0, 1, v14);
  v19(v33, v18, v32);
  v26 = objc_allocWithZone(v20);
  v27 = sub_75BB10();
  v28 = v34;
  *(v34 + v31) = v27;
  *(v28 + OBJC_IVAR____TtC18ASMessagesProvider14EmptyStateView_hasDivider) = 0;
  sub_76A840();
  __break(1u);
}

char *sub_6A5C1C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  swift_weakInit();
  v10 = &v4[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_impressionsUpdateBlock];
  *v10 = 0;
  v10[1] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_tapGestureRecognizer] = 0;
  v11 = &v4[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_clickActionHandler];
  *v11 = 0;
  v11[1] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_isExpanded] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_sizeCategory] = 7;
  v4[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_wantsCardConsistentMargins] = 0;
  type metadata accessor for TodayCardLockupView();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_lockupView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v24.receiver = v4;
  v24.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  v13 = [v12 layer];
  [v13 setAllowsGroupBlending:0];

  v14 = OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_lockupView;
  v15 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_lockupView];
  v16 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_allowsGroupBlending;
  v15[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_allowsGroupBlending] = 0;
  v17 = v15;
  v18 = [v17 layer];
  [v18 setAllowsGroupBlending:v15[v16]];

  v19 = [*&v17[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton] layer];
  [v19 setAllowsGroupBlending:v15[v16]];

  [*(*&v12[v14] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v12[v14] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v12[v14] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_ordinalLabel) setAccessibilityIgnoresInvertColors:1];
  [v12 addSubview:*&v12[v14]];
  v20 = [objc_allocWithZone(UITapGestureRecognizer) init];
  [v20 setDelegate:v12];
  [v20 addTarget:v12 action:"handleTap"];

  [v12 addGestureRecognizer:v20];
  v21 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_tapGestureRecognizer];
  *&v12[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_tapGestureRecognizer] = v20;
  v22 = v20;

  [v12 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraExtraLarge];
  return v12;
}

void sub_6A5F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v7 = v6;
  v118 = a6;
  v132 = a2;
  v136 = a1;
  v10 = a5;
  v11 = sub_7652D0();
  __chkstk_darwin(v11 - 8);
  v117 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_765240();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_94AC40, qword_78D7F0);
  __chkstk_darwin(v14 - 8);
  v131 = &v113 - v15;
  v16 = sub_BD88(&unk_9457D0, &unk_785630);
  __chkstk_darwin(v16 - 8);
  v130 = &v113 - v17;
  v18 = sub_BD88(&unk_9457E0, &qword_785640);
  __chkstk_darwin(v18 - 8);
  v129 = &v113 - v19;
  v20 = sub_BD88(&unk_94A780, &unk_788DC0);
  __chkstk_darwin(v20 - 8);
  v128 = &v113 - v21;
  v22 = sub_BD88(&unk_944E00, &unk_784910);
  __chkstk_darwin(v22 - 8);
  v121 = &v113 - v23;
  v120 = sub_763750();
  v24 = *(v120 - 8);
  __chkstk_darwin(v120);
  v26 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_BD88(&unk_948730, &qword_788DD0);
  __chkstk_darwin(v27 - 8);
  v122 = &v113 - v28;
  v137 = sub_765B10();
  v29 = *(v137 - 8);
  __chkstk_darwin(v137);
  v133 = &v113 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v32 = __chkstk_darwin(v31).n128_u64[0];
  v34 = &v113 - v33;
  v35 = v6[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_sizeCategory];
  v6[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_sizeCategory] = a5;
  v36 = v10;
  if (v10 == 7)
  {
    if (v35 == 7)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v6 setNeedsLayout];
    goto LABEL_6;
  }

  if (v35 == 7)
  {
    goto LABEL_5;
  }

  switch(v10)
  {
    case 6:
      if (v35 != 6)
      {
        goto LABEL_5;
      }

      break;
    case 5:
      if (v35 != 5)
      {
        goto LABEL_5;
      }

      break;
    case 4:
      if (v35 != 4)
      {
        goto LABEL_5;
      }

      break;
    default:
      if ((v35 - 7) > 0xFFFFFFFC || v35 != v10)
      {
        goto LABEL_5;
      }

      break;
  }

LABEL_6:
  v37 = [v6 traitCollection];
  v38 = v36;
  if (v36 != 4)
  {
    sub_765650();
    sub_765650();
  }

  [v37 layoutDirection];
  sub_769BB0();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;

  [v6 setLayoutMargins:{v40, v42, v44, v46}];
  v47 = sub_4C0AA4(a4);
  [v7 setBackgroundColor:v47];

  v48 = *(v29 + 104);
  v126 = enum case for TodayCard.Style.white(_:);
  v127 = v29 + 104;
  v125 = v48;
  v48(v34);
  v49 = sub_6A80DC(&qword_9409B0, &type metadata accessor for TodayCard.Style, &protocol conformance descriptor for TodayCard.Style);
  sub_769430();
  v124 = v49;
  sub_769430();
  v135 = a4;
  if (v142 == v138 && v143 == v139)
  {
    v50 = 1;
  }

  else if (sub_76A950())
  {
    v50 = 1;
  }

  else
  {
    v50 = 2;
  }

  v51 = *(v29 + 8);
  v134 = v29 + 8;
  v123 = v51;
  v51(v34, v137);

  [v7 setOverrideUserInterfaceStyle:v50];
  v52 = [v7 layer];
  [v52 setCornerRadius:20.0];

  v53 = [v7 layer];
  v54 = v53;
  v55 = 12;
  if (v38 == 6)
  {
    v55 = 15;
  }

  if (v7[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_isExpanded])
  {
    v56 = 0;
  }

  else
  {
    v56 = v55;
  }

  [v53 setMaskedCorners:v56];

  v57 = OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_lockupView;
  v58 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_lockupView];
  v119 = sub_760110();
  v59 = *(v24 + 104);
  v60 = v120;
  v59(v26, enum case for OfferButtonPresenterViewAlignment.right(_:), v120);
  v61 = v121;
  v59(v121, enum case for OfferButtonPresenterViewAlignment.left(_:), v60);
  (*(v24 + 56))(v61, 0, 1, v60);
  sub_6A80DC(&unk_944E10, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
  v62 = v122;
  sub_760940();
  v63 = sub_BD88(&unk_948740, &unk_784920);
  (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
  v64 = sub_760100();
  v65 = sub_758C70();
  v66 = v128;
  (*(*(v65 - 8) + 56))(v128, 1, 1, v65);
  v67 = sub_75BD30();
  v68 = v129;
  (*(*(v67 - 8) + 56))(v129, 1, 1, v67);
  v69 = sub_765870();
  v70 = v130;
  (*(*(v69 - 8) + 56))(v130, 1, 1, v69);
  v71 = sub_BD88(&unk_9457F0, qword_783FD0);
  v72 = v131;
  (*(*(v71 - 8) + 56))(v131, 1, 1, v71);
  sub_4A18A4(v119, v58, v62, v132, (v64 & 1) == 0, 0, v66, v68, v70, v72);
  v58[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_BD3C0();
  [v58 setNeedsLayout];
  sub_BD3C0();

  sub_10A2C(v72, &unk_94AC40, qword_78D7F0);
  sub_10A2C(v70, &unk_9457D0, &unk_785630);
  sub_10A2C(v68, &unk_9457E0, &qword_785640);
  sub_10A2C(v66, &unk_94A780, &unk_788DC0);
  sub_10A2C(v62, &unk_948730, &qword_788DD0);
  v73 = *&v7[v57];
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v74 = v73;
  v75 = sub_769FD0();
  v76 = v75;
  v77 = *&v74[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleTextColor];
  *&v74[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleTextColor] = v75;
  if (!v77)
  {
    v82 = v75;
    v79 = 0;
    v81 = v133;
    goto LABEL_23;
  }

  v78 = v75;
  v79 = v77;
  v80 = sub_76A1C0();

  v81 = v133;
  if ((v80 & 1) == 0)
  {
LABEL_23:
    sub_3E31BC();
    v78 = v76;
  }

  v83 = *(*&v7[v57] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_ordinalLabel);
  v84 = sub_769FF0();
  [v83 setTextColor:v84];

  v85 = *(*&v7[v57] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel);
  v86 = sub_769FF0();
  [v85 setTextColor:v86];

  v87 = *(*&v7[v57] + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkTitleLabel);
  v88 = sub_769FF0();
  [v87 setTextColor:v88];

  v89 = *(*&v7[v57] + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkSubtitleLabel);
  v90 = sub_769FF0();
  [v89 setTextColor:v90];

  v91 = *&v7[v57];
  v92 = v91[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_preferStackedLargeAXLayouts];
  v91[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_preferStackedLargeAXLayouts] = 1;
  if ((v92 & 1) == 0)
  {
    v93 = &v91[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_axMetrics];
    swift_beginAccess();
    v93[337] = 1;
    [v91 setNeedsLayout];
  }

  v125(v81, v126, v137);
  sub_769430();
  sub_769430();
  if (v138 == v140 && v139 == v141)
  {
    v123(v81, v137);

LABEL_30:
    v95 = *(*&v7[v57] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton);
    v96 = sub_76A0F0();
    goto LABEL_32;
  }

  v94 = sub_76A950();
  v123(v81, v137);

  if (v94)
  {
    goto LABEL_30;
  }

  v97 = *(*&v7[v57] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton);
  v98 = objc_opt_self();
  v95 = v97;
  v96 = [v98 whiteColor];
LABEL_32:
  v99 = v96;
  [v95 setTintColor:v96];

  v100 = *&v7[v57];
  v101 = *(v100 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel);
  if (v101)
  {
    v102 = v101;
    v103 = sub_769FF0();
    [v102 setTextColor:v103];

    v100 = *&v7[v57];
  }

  v104 = *(v100 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel);
  if (v104)
  {
    v105 = v104;
    v106 = sub_769FF0();
    [v105 setTextColor:v106];

    v107 = *(*&v7[v57] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel);
    if (v107)
    {
      [v107 setAccessibilityIgnoresInvertColors:1];
    }
  }

  sub_6A7028();
  sub_760110();
  v108 = sub_764EE0();

  if (v108)
  {
    v109 = v114;
    sub_765250();
    sub_765210();
    (*(v115 + 8))(v109, v116);
    swift_beginAccess();
    sub_765330();
    v110 = *(*&v7[v57] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
    sub_7652E0();
    sub_7591B0();
    [v110 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_76A030();
    }

    sub_759070();

    v111 = *(*&v7[v57] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
    sub_759210();
    sub_6A80DC(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v112 = v111;
    sub_75A050();
  }

  else
  {
    v112 = *(*&v7[v57] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
    sub_759190();
  }
}

void sub_6A7028()
{
  [v0 overrideUserInterfaceStyle];
  sub_769240();
  v1 = sub_769210();

  v2 = OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_lockupView;
  v3 = [*(*&v0[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkTitleLabel) layer];
  [v3 setCompositingFilter:v1];

  v4 = [*(*&v0[v2] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel) layer];
  [v4 setCompositingFilter:v1];

  v5 = *&v0[v2];
  v6 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel);
  if (v6)
  {
    v7 = [v6 layer];
    [v7 setCompositingFilter:v1];

    v5 = *&v0[v2];
  }

  v8 = [*(*(v5 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton) + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_subtitleLabel) layer];
  [v8 setCompositingFilter:v1];

  v9 = [*(*&v0[v2] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel) layer];
  [v9 setCompositingFilter:v1];
}

void sub_6A71F0()
{
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "layoutSubviews");
  [v0 bounds];
  [v0 layoutMargins];
  sub_769D10();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_lockupView;
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_lockupView] sizeThatFits:{v5, v7}];
  v11 = v10;
  v12 = *&v0[v9];
  v20.origin.x = v2;
  v20.origin.y = v4;
  v20.size.width = v6;
  v20.size.height = v8;
  MinX = CGRectGetMinX(v20);
  v21.origin.x = v2;
  v21.origin.y = v4;
  v21.size.width = v6;
  v21.size.height = v8;
  v14 = CGRectGetMidY(v21) + v11 * -0.5;
  v22.origin.x = v2;
  v22.origin.y = v4;
  v22.size.width = v6;
  v22.size.height = v8;
  [v12 setFrame:{MinX, v14, CGRectGetWidth(v22), v11}];

  v15 = &v0[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_impressionsUpdateBlock];
  swift_beginAccess();
  v16 = *v15;
  if (*v15)
  {
    v17 = *(v15 + 1);

    v16(v18);
    sub_F704(v16, v17);
  }
}

double sub_6A73DC(double a1)
{
  v3 = [v1 traitCollection];
  if (qword_93C328 != -1)
  {
    swift_once();
  }

  sub_138D34(v3, &xmmword_99A9B0, 1);
  sub_769A00();
  sub_7697D0();
  sub_769A00();
  sub_7697D0();

  return a1;
}

void sub_6A7780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v4 - 8);
  v6 = &v24[-v5 - 8];
  v7 = sub_768AB0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_134D8(a3, v24);
      sub_BD88(&unk_944DA0, &unk_77EB70);
      sub_765B70();
      if ((swift_dynamicCast() & 1) != 0 && (v13 = sub_765B60(), , v13))
      {
        sub_760120();
        if (swift_dynamicCastClass())
        {
          sub_760110();
          sub_764E50();

          if ((*(v8 + 48))(v6, 1, v7) == 1)
          {

            sub_10A2C(v6, &unk_93FF30, &unk_77DB10);
          }

          else
          {
            (*(v8 + 32))(v10, v6, v7);
            [*&v12[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_lockupView] frame];
            v15 = v14;
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v22 = [v12 superview];
            [v12 convertRect:v22 toView:{v15, v17, v19, v21}];

            sub_75F4B0();

            (*(v8 + 8))(v10, v7);
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

    else
    {
    }
  }
}

uint64_t sub_6A7BB4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_clickActionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_clickActionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_clickActionHandler + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_F704(v4, v5);
}

void sub_6A7BD4()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  sub_759210();
  sub_6A80DC(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v2 = v1;
  sub_75A0C0();
}

void sub_6A7C94()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  sub_759190();
}

uint64_t sub_6A7D00()
{
  sub_BD88(&qword_941C10, &qword_781230);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_77B6D0;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_lockupView);
  *(v1 + 56) = type metadata accessor for TodayCardLockupView();
  *(v1 + 32) = v2;
  v3 = v2;
  return v1;
}

double sub_6A7DB8(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();

  return result;
}

void (*sub_6A7E18(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_57E1C;
}