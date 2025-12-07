void sub_10035C91C()
{
  if (!*&v0[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController])
  {
    v1 = [v0 navigationController];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 navigationBar];

      if (v3)
      {

        *(sub_10035BB6C() + 88) = 1;

        v4 = [v0 transitionCoordinator];
        if (v4)
        {
          v5 = v4;
          v6 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v17 = sub_100362DCC;
          v18 = v6;
          aBlock = _NSConcreteStackBlock;
          v14 = 1107296256;
          v15 = sub_1003ED3AC;
          v16 = &unk_100872458;
          v7 = _Block_copy(&aBlock);

          v8 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v17 = sub_100362DE8;
          v18 = v8;
          aBlock = _NSConcreteStackBlock;
          v14 = 1107296256;
          v15 = sub_1003ED3AC;
          v16 = &unk_100872480;
          v9 = _Block_copy(&aBlock);

          [v5 animateAlongsideTransition:v7 completion:v9];
          _Block_release(v9);
          _Block_release(v7);
          swift_unknownObjectRelease();
        }

        else
        {

          v10 = [v0 collectionView];
          if (v10)
          {
            v12 = v10;
            sub_1003CA534(v10, v11);
          }

          else
          {
            __break(1u);
          }
        }
      }
    }
  }
}

void sub_10035CB9C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_10035C6A0(a3);
}

uint64_t sub_10035CC18(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = sub_10074D4C4();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.receiver = v2;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, "viewDidAppear:", a1 & 1, v11);
  v2[qword_10097FBC0] = 1;
  v14 = qword_10097FBC8;
  if ((v2[qword_10097FBC8] & 1) == 0)
  {
    v15 = sub_10074C864();
    if (v15)
    {
      v16 = v15;
      v2[v14] = 1;
      v17 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph];
      sub_100752764();
      sub_100752D34();
      sub_1003C0E00(v16, 1, v17, v8);

      (*(v6 + 8))(v8, v5);
    }
  }

  (*(v10 + 104))(v13, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.didAppear(_:), v9);
  sub_10074D484();
  return (*(v10 + 8))(v13, v9);
}

void sub_10035CE80(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_10035CC18(a3);
}

double sub_10035CED4()
{
  v1 = [v0 presentedViewController];
  if (v1)
  {
  }

  else
  {
    if (*(v0 + qword_10097FBB8) == 1)
    {
      sub_10035BB6C();
      sub_1003CA470();
    }

    else
    {
      v3 = [v0 transitionCoordinator];
      v4 = sub_10035BB6C();
      if (v3)
      {
        v12 = sub_100362DBC;
        v13 = v4;
        v8 = _NSConcreteStackBlock;
        v9 = 1107296256;
        v10 = sub_1003ED3AC;
        v11 = &unk_100872408;
        v5 = _Block_copy(&v8);

        v6 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v12 = sub_100362DC4;
        v13 = v6;
        v8 = _NSConcreteStackBlock;
        v9 = 1107296256;
        v10 = sub_1003ED3AC;
        v11 = &unk_100872430;
        v7 = _Block_copy(&v8);

        [v3 animateAlongsideTransition:v5 completion:v7];
        _Block_release(v7);
        _Block_release(v5);
        swift_unknownObjectRelease();
        return result;
      }

      sub_1003CA470();
    }
  }

  return result;
}

void sub_10035D0FC(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewWillDisappear:", a3);
  sub_10035CED4();
}

void sub_10035D174(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_10074D4C4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = a1;
  v14.super_class = ObjectType;
  v12 = *a3;
  v13 = a1;
  objc_msgSendSuper2(&v14, v12);
  (*(v9 + 104))(v11, *a4, v8);
  sub_10074D484();
  (*(v9 + 8))(v11, v8);
}

uint64_t sub_10035D2A8(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10074D4C4();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v2;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewDidDisappear:", a1 & 1, v7);
  v10 = *(v6 + 104);
  v10(v9, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willDisappear(_:), v5);
  sub_10074D484();
  v11 = *(v6 + 8);
  v11(v9, v5);
  if ([v2 isMovingFromParentViewController])
  {
    v10(v9, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willBeDiscarded(_:), v5);
    sub_10074D484();
    v11(v9, v5);
  }

  return sub_10035D434();
}

uint64_t sub_10035D434()
{
  v1 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  result = sub_10074C924();
  if (result)
  {
    v5 = result;
    v6 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph);
    v7 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
    sub_1007526C4();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v3, 1, v7) == 1)
    {

      return sub_10000C8CC(v3, &unk_100923960, &qword_1007A6240);
    }

    else
    {
      sub_1003C0E00(v5, 1, v6, v3);

      return (*(v8 + 8))(v3, v7);
    }
  }

  return result;
}

void sub_10035D5B8(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_10035D2A8(a3);
}

void sub_10035D60C(void *a1, double a2, double a3)
{
  v18.receiver = v3;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v3 isViewLoaded])
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = sub_10036319C;
    v17 = v7;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_1003ED3AC;
    v15 = &unk_100872390;
    v8 = _Block_copy(&v12);

    [a1 animateAlongsideTransition:v8 completion:0];
    _Block_release(v8);
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    v16 = sub_100362DB4;
    v17 = v9;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_1003ED3AC;
    v15 = &unk_1008723E0;
    v10 = _Block_copy(&v12);
    v11 = v3;

    [a1 animateAlongsideTransition:0 completion:v10];
    _Block_release(v10);
  }
}

void sub_10035D7D8(uint64_t a1, void *a2)
{
  v3 = sub_10074C8A4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074C884();
  v7 = [a2 traitCollection];
  v8 = sub_1007537D4();

  v9 = &enum case for ProductDiffablePagePresenter.PageWidth.compact(_:);
  if ((v8 & 1) == 0)
  {
    v9 = &enum case for ProductDiffablePagePresenter.PageWidth.regular(_:);
  }

  (*(v4 + 104))(v6, *v9, v3);
  sub_10074C894();
  (*(v4 + 8))(v6, v3);
  v10 = [a2 collectionView];
  if (v10)
  {
    v11 = v10;
    [v10 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_10035D95C(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_10035D60C(a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_10035DA04(void *a1)
{
  v1 = a1;
  sub_10035D9DC();
}

uint64_t sub_10035DA74(unsigned int *a1, void (*a2)(void), unsigned int *a3)
{
  v20 = a1;
  v6 = v3;
  v7 = sub_10074D4C4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100742964();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016B4C(v6 + v15, v22, &unk_100930240, qword_1007A56E0);
  if (v23)
  {
    sub_10000C824(v22, v21);
    sub_10000C8CC(v22, &unk_100930240, qword_1007A56E0);
    v18 = a2;
    v19 = v7;
    sub_10000C888(v21, v21[3]);
    (*(v12 + 104))(v14, *v20, v11);
    a2 = v18;
    v7 = v19;
    sub_100742974();
    (*(v12 + 8))(v14, v11);
    v16 = sub_10000C620(v21);
  }

  else
  {
    v16 = sub_10000C8CC(v22, &unk_100930240, qword_1007A56E0);
  }

  a2(v16);
  (*(v8 + 104))(v10, *a3, v7);
  sub_10074D484();
  return (*(v8 + 8))(v10, v7);
}

void sub_10035DD18(void *a1)
{
  v1 = a1;
  sub_10035DA4C();
}

uint64_t sub_10035DD60@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for BaseShelfComponentTypeMappingProvider();
  v3 = swift_allocObject();
  type metadata accessor for AppPromotionsShelfComponentTypeMappingProvider();
  *(v3 + 16) = swift_allocObject();
  type metadata accessor for SmallStoryCardShelfComponentTypeMappingProvider();
  *(v3 + 24) = swift_allocObject();
  a1[3] = v2;
  result = sub_100362DF0(&qword_1009308B8, type metadata accessor for BaseShelfComponentTypeMappingProvider, &unk_1007CE068);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_10035DE14()
{
  v17[2] = swift_getObjectType();
  v1 = sub_10000C518(&qword_100933F18, &qword_1007BB0D0);
  v22 = *(v1 - 8);
  v23 = v1;
  __chkstk_darwin(v1);
  v21 = v17 - v2;
  v3 = sub_10000C518(&qword_100933F20, &qword_1007BB0D8);
  v19 = *(v3 - 8);
  v20 = v3;
  __chkstk_darwin(v3);
  v18 = v17 - v4;
  v5 = sub_10000C518(&qword_1009262A8, &unk_1007BB0E0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - v7;
  sub_100358DF0();
  v9 = *(v0 + qword_10097EE08);
  v17[0] = v0;
  v17[1] = v9;
  sub_100749244();
  v10 = sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
  v11 = sub_100753774();
  v25 = v10;
  v26 = &protocol witness table for OS_dispatch_queue;
  v24[0] = v11;
  sub_10000C518(&unk_1009308F0, &qword_1007A9940);
  sub_10002DDC8(&qword_1009262B0, &unk_1009308F0, &qword_1007A9940, &protocol conformance descriptor for SyncEvent<A>);
  sub_100752584();

  (*(v6 + 8))(v8, v5);
  sub_10000C620(v24);
  sub_10074C904();
  v12 = sub_100753774();
  v25 = v10;
  v26 = &protocol witness table for OS_dispatch_queue;
  v24[0] = v12;
  sub_10000C518(&qword_100933F28, &qword_1007BB0F0);
  sub_10002DDC8(&qword_100933F30, &qword_100933F28, &qword_1007BB0F0, &protocol conformance descriptor for SyncEvent<A>);
  v13 = v18;
  sub_100752584();

  (*(v19 + 8))(v13, v20);
  sub_10000C620(v24);
  sub_10074C944();
  v14 = sub_100753774();
  v25 = v10;
  v26 = &protocol witness table for OS_dispatch_queue;
  v24[0] = v14;
  sub_10000C518(&qword_100933F38, &qword_1007BB0F8);
  sub_10002DDC8(&qword_100933F40, &qword_100933F38, &qword_1007BB0F8, &protocol conformance descriptor for SyncEvent<A>);
  v15 = v21;
  sub_100752584();

  (*(v22 + 8))(v15, v23);
  return sub_10000C620(v24);
}

void sub_10035E278(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100927510, &unk_1007AAB30);
  __chkstk_darwin(v2 - 8);
  v73 = v70 - v3;
  v4 = sub_10000C518(&unk_100930810, &unk_1007B7670);
  v74 = *(v4 - 8);
  v75 = v4;
  __chkstk_darwin(v4);
  v72 = v70 - v5;
  v6 = sub_1007417F4();
  v78 = *(v6 - 8);
  v79 = v6;
  __chkstk_darwin(v6);
  v77 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&qword_100933F50, &unk_1007BB108);
  __chkstk_darwin(v8 - 8);
  v81 = v70 - v9;
  v10 = sub_10074CBD4();
  v11 = *(v10 - 8);
  v82 = v10;
  v83 = v11;
  __chkstk_darwin(v10);
  v76 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&unk_10093D6E0, &unk_1007A6080);
  __chkstk_darwin(v13 - 8);
  v87 = v70 - v14;
  v84 = sub_10074E984();
  v86 = *(v84 - 8);
  __chkstk_darwin(v84);
  v71 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v80 = v70 - v17;
  __chkstk_darwin(v18);
  v85 = v70 - v19;
  v20 = sub_10000C518(&qword_1009262D0, &unk_1007B7720);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v70 - v22;
  v24 = sub_10000C518(&qword_1009308D0, &qword_1007A9960);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v70 - v26;
  v28 = sub_10000C518(&qword_100930830, &unk_1007B7690);
  v29 = a1;
  sub_1007451A4();
  sub_10074E3F4();
  v30 = *(v25 + 8);
  v30(v27, v24);
  v31 = sub_100751744();
  (*(v21 + 8))(v23, v20);
  if (v31 < 1)
  {
    goto LABEL_10;
  }

  v70[2] = v28;
  sub_1007451A4();
  v32 = v87;
  sub_10074E414();
  v30(v27, v24);
  v33 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    v35 = &unk_10093D6E0;
    v36 = &unk_1007A6080;
    v37 = v32;
LABEL_9:
    sub_10000C8CC(v37, v35, v36);
    goto LABEL_10;
  }

  v70[1] = v29;
  swift_getKeyPath();
  v38 = v80;
  sub_1007525B4();

  (*(v34 + 8))(v32, v33);
  v40 = v85;
  v39 = v86;
  v41 = v84;
  (*(v86 + 32))(v85, v38, v84);
  v42 = qword_100930688;
  v43 = v88;
  swift_beginAccess();
  v44 = *(v43 + v42);
  if (!v44)
  {
    (*(v39 + 8))(v40, v41);
    swift_endAccess();
    v48 = v81;
    (*(v83 + 56))(v81, 1, 1, v82);
    goto LABEL_8;
  }

  swift_endAccess();
  v45 = v44;
  v46 = v77;
  sub_100741764();
  v47 = v81;
  sub_1007518A4();

  v48 = v47;
  v87 = *(v78 + 8);
  (v87)(v46, v79);
  v50 = v82;
  v49 = v83;
  if ((*(v83 + 48))(v47, 1, v82) == 1)
  {
    (*(v86 + 8))(v85, v41);
LABEL_8:
    v35 = &qword_100933F50;
    v36 = &unk_1007BB108;
    v37 = v48;
    goto LABEL_9;
  }

  v51 = v76;
  (*(v49 + 32))(v76, v47, v50);
  sub_1007451A4();
  v52 = v30;
  v53 = v73;
  sub_10074E404();
  v54 = v27;
  v55 = v53;
  v52(v54, v24);
  v56 = v74;
  v57 = v53;
  v58 = v75;
  if ((*(v74 + 48))(v57, 1, v75) == 1)
  {
    (*(v49 + 8))(v51, v50);
    (*(v86 + 8))(v85, v84);
    v35 = &qword_100927510;
    v36 = &unk_1007AAB30;
    v37 = v55;
    goto LABEL_9;
  }

  v59 = v72;
  (*(v56 + 32))(v72, v55, v58);
  v61 = v85;
  v60 = v86;
  v62 = v71;
  v63 = v84;
  (*(v86 + 16))(v71, v85, v84);
  if ((*(v60 + 88))(v62, v63) != enum case for Shelf.ContentType.productTopLockup(_:))
  {
    (*(v56 + 8))(v59, v58);
    (*(v83 + 8))(v76, v50);
    v69 = *(v60 + 8);
    v69(v61, v63);
    *(v88 + qword_100933890) = _swiftEmptySetSingleton;

    v69(v62, v63);
    return;
  }

  sub_1007525C4();
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_1007461A4();
  v64 = swift_dynamicCast();
  v65 = v76;
  if (v64)
  {
    if (sub_100746144())
    {

      sub_10000C518(&unk_1009405F0, &qword_1007A6410);
      v66 = (*(v78 + 80) + 32) & ~*(v78 + 80);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1007A5A00;
      sub_100741764();
      v68 = sub_1001A962C(v67);
      swift_setDeallocating();
      (v87)(v67 + v66, v79);
      swift_deallocClassInstance();

      (*(v56 + 8))(v59, v58);
      (*(v83 + 8))(v65, v50);
      (*(v86 + 8))(v85, v84);
      *(v88 + qword_100933890) = v68;
      goto LABEL_11;
    }
  }

  (*(v56 + 8))(v59, v58);
  (*(v83 + 8))(v65, v50);
  (*(v86 + 8))(v85, v84);
LABEL_10:
  *(v88 + qword_100933890) = _swiftEmptySetSingleton;
LABEL_11:
}

void (*sub_10035ED9C(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100362CA0;
}

void sub_10035EE00(uint64_t a1)
{
  v64 = sub_1007417F4();
  v2 = *(v64 - 8);
  __chkstk_darwin(v64);
  v4 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v62 - v6;
  v8 = sub_10074B5B4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == enum case for ProductPageScrollPosition.topOfPage(_:))
  {
    (*(v9 + 96))(v12, v8);
    v14 = *v12;
    v15 = *(*v12 + 16);
    if (!v15)
    {
LABEL_7:
      v20 = [v65 collectionView];
      if (v20)
      {
        v21 = v20;

        [v21 setContentOffset:1 animated:{0.0, 0.0}];

        return;
      }

      goto LABEL_31;
    }

    v16 = 0;
    while (v16 < *(v14 + 16))
    {
      v17 = [v65 collectionView];
      if (!v17)
      {
        goto LABEL_29;
      }

      v18 = v17;
      ++v16;
      sub_100741764();
      isa = sub_100741704().super.isa;
      (*(v2 + 8))(v7, v64);
      [v18 scrollToItemAtIndexPath:isa atScrollPosition:0 animated:1];

      if (v15 == v16)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v13 != enum case for ProductPageScrollPosition.topOfIndexPath(_:))
  {
    (*(v9 + 8))(v12, v8);
    return;
  }

  (*(v9 + 96))(v12, v8);
  v22 = sub_10000C518(&qword_100933F48, &qword_1007BB100);
  v23 = v12[*(v22 + 48)];
  v24 = *&v12[*(v22 + 64)];
  (*(v2 + 32))(v4, v12, v64);
  v25 = [v65 collectionView];
  if (!v25)
  {
    goto LABEL_32;
  }

  v26 = v25;
  v27 = sub_100741704().super.isa;
  v28 = [v26 layoutAttributesForItemAtIndexPath:v27];

  if (!v28)
  {
    goto LABEL_23;
  }

  [v28 frame];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  if (v23)
  {
LABEL_15:
    v63 = v4;
    v41 = *(v24 + 16);
    if (!v41)
    {
LABEL_20:
      v46 = [v65 navigationController];
      if (v46)
      {
        v47 = v46;
        v48 = [v46 navigationBar];

        [v48 frame];
        v50 = v49;
        v52 = v51;
        v54 = v53;
        v56 = v55;

        v67.origin.x = v50;
        v67.origin.y = v52;
        v67.size.width = v54;
        v67.size.height = v56;
        MaxY = CGRectGetMaxY(v67);
      }

      else
      {
        MaxY = 0.0;
      }

      v58 = v63;
      v68.origin.x = v30;
      v68.origin.y = v32;
      v68.size.width = v34;
      v68.size.height = v36;
      MinY = CGRectGetMinY(v68);
      v60 = [v65 collectionView];
      if (v60)
      {
        v61 = v60;

        [v61 setContentOffset:1 animated:{0.0, MinY - MaxY}];

        (*(v2 + 8))(v58, v64);
        return;
      }

      goto LABEL_33;
    }

    v42 = 0;
    while (v42 < *(v24 + 16))
    {
      v43 = [v65 collectionView];
      if (!v43)
      {
        goto LABEL_30;
      }

      v44 = v43;
      ++v42;
      sub_100741764();
      v45 = sub_100741704().super.isa;
      (*(v2 + 8))(v7, v64);
      [v44 scrollToItemAtIndexPath:v45 atScrollPosition:0 animated:1];

      if (v41 == v42)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_28;
  }

  v37 = [v65 collectionView];
  if (v37)
  {
    v38 = v37;
    [v37 contentOffset];
    v40 = v39;

    v66.origin.x = v30;
    v66.origin.y = v32;
    v66.size.width = v34;
    v66.size.height = v36;
    if (CGRectGetMinY(v66) < v40)
    {
      goto LABEL_15;
    }

LABEL_23:
    (*(v2 + 8))(v4, v64);

    return;
  }

LABEL_34:
  __break(1u);
}

void (*sub_10035F424(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100362C7C;
}

uint64_t (*sub_10035F488(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100362C3C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1000C0834;
}

unint64_t sub_10035F518@<X0>(uint64_t *a1@<X8>)
{
  sub_100744594();
  swift_allocObject();
  v2 = sub_100744584();
  swift_allocObject();
  v3 = sub_100744584();
  a1[3] = &type metadata for ProductPageGridProvider;
  result = sub_100362BE8();
  a1[4] = result;
  *a1 = v2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10035F598@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  sub_100362DF0(&qword_100933ED0, type metadata accessor for ProductDiffablePageViewController, &unk_1007B7520);
  v2 = sub_10074DA44();
  v18[3] = swift_getObjectType();
  v18[0] = v2;
  v3 = sub_10074DA34();
  v19[3] = swift_getObjectType();
  v19[0] = v3;
  sub_10000C5B4(v18, v17);
  sub_10000C610(v17, v16);
  sub_10000C518(&qword_100922CC0, &unk_1007AAFB0);
  if (swift_dynamicCast() && *&v15[0])
  {
    v14 = v15[0];
    v4 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100254A80(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_100254A80((v5 > 1), v6 + 1, 1, v4);
    }

    v4[2] = v6 + 1;
    *&v4[2 * v6 + 4] = v14;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_10000C5B4(v19, v17);
  sub_10000C610(v17, v16);
  sub_10000C518(&qword_100922CC0, &unk_1007AAFB0);
  if (swift_dynamicCast() && *&v15[0])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100254A80(0, v4[2] + 1, 1, v4);
    }

    v8 = v4[2];
    v7 = v4[3];
    v9 = v15[0];
    if (v8 >= v7 >> 1)
    {
      v13 = sub_100254A80((v7 > 1), v8 + 1, 1, v4);
      v9 = v15[0];
      v4 = v13;
    }

    v4[2] = v8 + 1;
    *&v4[2 * v8 + 4] = v9;
  }

  swift_arrayDestroy();
  sub_10074DA64();
  v10 = type metadata accessor for ProductPageLayoutSectionProvider(0);
  swift_allocObject();
  sub_10000C824(v17, v16);
  sub_10000C824(v16, v15);

  v11 = sub_10074CB64();
  sub_10000C620(v16);
  result = sub_10000C620(v17);
  a1[3] = v10;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = v11;
  return result;
}

unint64_t sub_10035F8AC@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ProductPageShelfLayoutSpacingProvider;
  result = sub_100362B94();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10035F8E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph);
  type metadata accessor for ProductPageShelfSupplementaryProvider();
  v2 = swift_allocObject();
  v3 = sub_100362DF0(&qword_100933EE0, &type metadata accessor for ProductDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v1;
  sub_100362DF0(&qword_100933F00, type metadata accessor for ProductPageShelfSupplementaryProvider, &unk_1007C3820);

  return v2;
}

uint64_t sub_10035F9E0()
{
  swift_getObjectType();
  sub_100362DF0(&qword_100933ED0, type metadata accessor for ProductDiffablePageViewController, &unk_1007B7520);
  sub_10074DA64();
  type metadata accessor for ProductPageItemSupplementaryViewProvider();
  v0 = swift_allocObject();
  sub_10000C824(v3, v0 + 16);
  type metadata accessor for ProductPageSeparatorItemSupplementaryProvider();
  v1 = swift_allocObject();
  sub_100012160(v3, v1 + 16);
  *(v0 + 56) = v1;
  sub_100362DF0(&qword_100933EF8, type metadata accessor for ProductPageItemSupplementaryViewProvider, &unk_1007BB4DC);
  return v0;
}

id sub_10035FADC()
{
  v1 = v0;
  swift_getObjectType();
  sub_1006B6F14();
  sub_10074D7C4();
  if (swift_dynamicCastClass())
  {
    v2 = sub_10074D794();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    swift_allocObject();
    v2 = sub_10074D7B4();
  }

  sub_10000C518(&qword_100922CE0, &qword_1007A56D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1007A7250;

  sub_10035BB6C();
  type metadata accessor for UberedCollectionElementsObserver();
  v4 = swift_allocObject();
  swift_weakInit();
  *(v4 + 24) = 0;
  swift_weakAssign();

  v5 = sub_100362DF0(&qword_100933EB0, type metadata accessor for UberedCollectionElementsObserver, &unk_1007ABC74);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v6 = *&v0[qword_100933880];
  v7 = sub_100362DF0(&qword_100933EB8, type metadata accessor for ProductPageExtensionBannerScrollObserver, &unk_1007B51B4);
  *(v3 + 48) = v6;
  *(v3 + 56) = v7;

  v8 = sub_10035BA88();
  v9 = sub_100362DF0(&qword_100933EC0, type metadata accessor for ProductTopLockupCollectionElementsObserver, &unk_1007D85BC);
  *(v3 + 64) = v8;
  *(v3 + 72) = v9;
  v10 = *&v1[qword_10097EE18];
  type metadata accessor for ProductMediaCollectionElementsObserver();
  v11 = swift_allocObject();
  swift_weakInit();
  swift_unknownObjectWeakInit();
  swift_weakAssign();
  swift_unknownObjectWeakAssign();
  *(v11 + 32) = v10;
  v12 = sub_100362DF0(&qword_100933EC8, type metadata accessor for ProductMediaCollectionElementsObserver, &unk_1007B0E08);
  *(v3 + 80) = v11;
  *(v3 + 88) = v12;
  sub_100362DF0(&qword_100933ED0, type metadata accessor for ProductDiffablePageViewController, &unk_1007B7520);
  swift_retain_n();

  sub_10074DA64();
  sub_100362DF0(&qword_100933ED8, &type metadata accessor for ProductDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_100362DF0(&qword_100933EE0, &type metadata accessor for ProductDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  type metadata accessor for ProductReviewSelectionHandlerCollectionElementsObserver(0);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v13 + qword_100930D50) = 0;
  swift_unknownObjectWeakAssign();
  sub_10000C824(v25, v13 + qword_100930D48);

  v14 = sub_10074E274();
  sub_10000C620(v25);
  *(v3 + 96) = v14;
  *(v3 + 104) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  type metadata accessor for NavigationBarVisibilityThresholdCollectionElementsObserver();
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v15 + 24) = &off_100872070;
  swift_unknownObjectWeakAssign();
  v16 = sub_100362DF0(&qword_100926288, type metadata accessor for NavigationBarVisibilityThresholdCollectionElementsObserver, &unk_1007B082C);
  *(v3 + 112) = v15;
  *(v3 + 120) = v16;
  v17._rawValue = v3;
  sub_10074D784(v17);

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1007A5620;
  sub_10000C518(&qword_100933EE8, &unk_1007BB0C0);
  swift_allocObject();
  swift_retain_n();
  v19 = sub_10074DB94();
  v20 = sub_10002DDC8(&qword_100933EF0, &qword_100933EE8, &unk_1007BB0C0, &protocol conformance descriptor for SearchAdsCollectionElementsObserver<A, B>);
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  type metadata accessor for BackgroundConfigurationCollectionElementsObserver();
  v21 = swift_allocObject();
  *(v21 + 16) = 3;
  v22 = sub_100362DF0(&qword_100922CF8, type metadata accessor for BackgroundConfigurationCollectionElementsObserver, "me\t");
  *(v18 + 48) = v21;
  *(v18 + 56) = v22;
  sub_10074DA64();
  sub_10074B884();

  result = [v1 collectionView];
  if (result)
  {
    sub_10074E304();
    swift_allocObject();
    *(v18 + 64) = sub_10074E2F4();
    *(v18 + 72) = &protocol witness table for ImpressionsCollectionElementsObserver;
    v24._rawValue = v18;
    sub_10074D784(v24);

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_10036014C(uint64_t a1)
{
  sub_10074E284();
  if (swift_dynamicCastClass())
  {
    return 1;
  }

  sub_10074DCF4();
  return swift_dynamicCastClass() != 0;
}

void sub_1003601A4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  v8 = sub_10000C518(&qword_100933EA0, &unk_1007BB0B0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  sub_10041E590(a1);
  (*(v9 + 16))(v11, a1, v8);
  if ((*(v9 + 88))(v11, v8) == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v9 + 96))(v11, v8);
    sub_100360448(*v11);
    if (*(v1 + qword_10097FBC0) == 1)
    {
      v12 = qword_10097FBC8;
      if ((*(v1 + qword_10097FBC8) & 1) == 0)
      {
        v13 = sub_10074C864();
        if (v13)
        {
          v14 = v13;
          *(v2 + v12) = 1;
          v15 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph);
          sub_100752764();
          sub_100752D34();
          sub_1003C0E00(v14, 1, v15, v7);

          (*(v5 + 8))(v7, v4);
        }
      }
    }

    sub_1003607F4();
  }

  else
  {
    (*(v9 + 8))(v11, v8);
  }
}

void sub_100360448(uint64_t a1)
{
  v17 = a1;
  v2 = sub_1007521E4();
  v20 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100752224();
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100743594();
  v18 = v1;
  sub_100360E10(v8);
  sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
  v9 = sub_100753774();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100362B24;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_1008721B0;
  v11 = _Block_copy(aBlock);

  sub_100752204();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100362DF0(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000C518(&unk_10092F750, &qword_1007A6920);
  sub_10002DDC8(&qword_1009236C0, &unk_10092F750, &qword_1007A6920, &protocol conformance descriptor for [A]);
  sub_1007543A4();
  sub_100753784();
  _Block_release(v11);

  (*(v20 + 8))(v4, v2);
  (*(v5 + 8))(v7, v19);
  v12 = v18;
  sub_100360FCC();
  v13 = *(v12 + qword_100933860);
  if (v13)
  {
    v14 = v13;
    v15 = sub_1007496C4();
    if (v15)
    {
    }

    [v14 setHidden:v15 == 0];
  }

  if (sub_1007496D4() && (v16 = sub_10074E624(), , v16))
  {

    sub_1003610FC();
  }

  else
  {
    sub_100361504();
  }
}

void sub_1003607F4()
{
  v32 = sub_100740C84();
  __chkstk_darwin(v32);
  v33 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_10074ED34();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100744FF4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10074C8C4())
  {
    v31 = v0;
    sub_100746354();
    if (swift_dynamicCastClass())
    {
      sub_100746314();
      sub_100745004();

      if ((*(v10 + 88))(v12, v9) != enum case for ShareSheetData.Metadata.product(_:))
      {

        (*(v10 + 8))(v12, v9);
        return;
      }

      (*(v10 + 96))(v12, v9);
      sub_10074B7E4();
      v13 = sub_10074ECF4();
      v15 = v14;
      (*(v6 + 8))(v8, v5);
      if (!sub_10074B784() || (v16 = sub_10074A854(), v18 = v17, , !v18))
      {
        v20 = v15;
        goto LABEL_19;
      }

      v19 = v16 == 0x656C646E7562 && v18 == 0xE600000000000000;
      v20 = v15;
      if (v19)
      {
      }

      else
      {
        v21 = sub_100754754();

        if ((v21 & 1) == 0)
        {
LABEL_19:

          sub_100746314();
          sub_100744FE4();

          v23 = sub_100741264();
          (*(*(v23 - 8) + 56))(v4, 0, 1, v23);
          v24 = sub_10074B7D4();
          sub_100634C00(v13, v20, v4, v24, v25, &v36);
          v39 = v37;
          v40[0] = v36;
          v35 = _swiftEmptyArrayStorage;
          sub_1000C0664(v40, v34);
          sub_1000C0664(&v39, v34);
          sub_100362DF0(&qword_100926C70, &type metadata accessor for AppEntityVisualState, &protocol conformance descriptor for AppEntityVisualState);

          sub_10000C518(&qword_100926C78, &qword_1007AA020);
          sub_10002DDC8(&qword_100926C80, &qword_100926C78, &qword_1007AA020, &protocol conformance descriptor for [A]);
          sub_1007543A4();
          v34[0] = v36;
          v34[1] = v37;
          v34[2] = v38;
          v26 = objc_allocWithZone(sub_100750164());
          sub_100362AD0();
          v27 = sub_100750154();
          v28 = [v31 view];
          if (v28)
          {
            v29 = v28;

            sub_100753C64();

            sub_1000C0714(v40);
            sub_1000C0714(&v39);
          }

          else
          {
            __break(1u);
          }

          return;
        }
      }

      *&v36 = v13;
      *(&v36 + 1) = v15;
      *&v34[0] = 0x2D656C646E7562;
      *(&v34[0] + 1) = 0xE700000000000000;
      *&v34[0] = sub_100753234();
      *(&v34[0] + 1) = v22;
      sub_1007531A4();

      v20 = *(&v34[0] + 1);
      v13 = *&v34[0];
      goto LABEL_19;
    }
  }
}

void sub_100360E10(void *a1)
{
  v3 = [v1 view];
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = v3;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v5 + OBJC_IVAR____TtC22SubscribePageExtensionP33_D5EB93F8F29FA420E99B1898AD0B2EE640InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset) = (a1 & 8) == 0;

  sub_10062A804();
  if ((a1 & 1) == 0 && ((a1 & 2) == 0 || (sub_10062AA10() & 1) == 0))
  {
    *(v1 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_prefersLargeTitle) = 0;
    goto LABEL_11;
  }

  v6 = [v1 view];
  if (!v6)
  {
LABEL_18:
    __break(1u);
    return;
  }

  a1 = v6;
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
LABEL_17:

    goto LABEL_18;
  }

  v8 = *(v7 + OBJC_IVAR____TtC22SubscribePageExtensionP33_D5EB93F8F29FA420E99B1898AD0B2EE640InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_prefersLargeTitle) = v8;
  if ((v8 & 1) == 0)
  {
LABEL_11:
    v9 = 2;
    goto LABEL_12;
  }

  v9 = 3;
LABEL_12:
  v10 = [v1 navigationItem];
  [v10 setLargeTitleDisplayMode:v9];
}

double sub_100360F64(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10035BA88();

    sub_10072C4EC();
  }

  return result;
}

void sub_100360FCC()
{
  if (*(v0 + qword_100933850) != 1)
  {
LABEL_7:
    v5 = [v0 collectionView];
    if (!v5)
    {
      return;
    }

    goto LABEL_8;
  }

  v1 = [v0 view];
  if (!v1)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v2 = v1;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {

    goto LABEL_13;
  }

  v4 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtensionP33_D5EB93F8F29FA420E99B1898AD0B2EE640InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

  if ((v4 & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = [v0 collectionView];
  if (!v5)
  {
    return;
  }

LABEL_8:
  v6 = v5;
  [v5 frame];
  [v6 setFrame:?];
}

void sub_1003610FC()
{
  v1 = v0;
  v2 = sub_100743B04();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_10097FBE0;
  v8 = *&v1[qword_10097FBE0];
  if (v8)
  {
    v9 = *&v1[qword_10097FBE0];
  }

  else
  {
    (*(v3 + 104))(v6, enum case for SystemImage.speakerSlashFill(_:), v2, v4);
    v10 = sub_100743AE4();
    (*(v3 + 8))(v6, v2);
    v11 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v10 style:0 target:0 action:0];

    v9 = v11;
    v29._object = 0x8000000100778550;
    v29._countAndFlagsBits = 0xD00000000000002BLL;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    sub_1007458B4(v29, v31);
    v12 = sub_100753064();

    [v9 setTitle:v12];

    v30._countAndFlagsBits = 0xD00000000000002CLL;
    v30._object = 0x8000000100778580;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    sub_1007458B4(v30, v32);
    v13 = sub_100753064();

    [v9 setAccessibilityLabel:v13];

    [v9 setHidden:1];
    v14 = *&v1[v7];
    *&v1[v7] = v9;

    v8 = 0;
  }

  v15 = v8;
  v16 = [v1 navigationItem];
  v17 = [v16 rightBarButtonItems];

  if (v17 && (sub_100016C60(0, &qword_100925250, UIBarButtonItem_ptr), v18 = sub_1007532A4(), v17, v28 = v9, __chkstk_darwin(v19), *(&v27 - 2) = &v28, v20 = sub_100074944(sub_100362B2C, (&v27 - 4), v18), , (v20 & 1) == 0))
  {
    v21 = [v1 navigationItem];
    v22 = [v21 rightBarButtonItems];

    if (v22)
    {
      v23 = sub_1007532A4();
    }

    else
    {
      v23 = _swiftEmptyArrayStorage;
    }

    v28 = v23;
    v24 = v9;
    sub_100753284();
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();
    v25 = [v1 navigationItem];
    isa = sub_100753294().super.isa;

    [v25 setRightBarButtonItems:isa];
  }

  else
  {
  }
}

void sub_100361504()
{
  v1 = *&v0[qword_10097FBE0];
  if (v1)
  {
    v14 = v1;
    v2 = [v0 navigationItem];
    v3 = [v2 rightBarButtonItems];

    if (v3 && (sub_100016C60(0, &qword_100925250, UIBarButtonItem_ptr), v4 = sub_1007532A4(), v3, v5 = sub_1001C8958(v14, v4), v7 = v6, , (v7 & 1) == 0))
    {
      v8 = [v0 navigationItem];
      v9 = [v8 rightBarButtonItems];
      if (v9)
      {
        v10 = v9;
        v11 = sub_1007532A4();

        if (v11)
        {
          v13.super.isa = sub_100753294().super.isa;
        }

        else
        {
          v13.super.isa = 0;
        }

        [v8 setRightBarButtonItems:v13.super.isa];
      }

      else
      {
        [v8 setRightBarButtonItems:0];
      }
    }
  }
}

void sub_1003616D0()
{
  if (*(*&v0[qword_100933890] + 16))
  {
    v1 = [v0 view];
    if (v1)
    {
      v2 = v1;
      type metadata accessor for InsetCollectionViewControllerContentView();
      v3 = swift_dynamicCastClass();
      if (v3)
      {
        v4 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtensionP33_D5EB93F8F29FA420E99B1898AD0B2EE640InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

        if ((v4 & 1) == 0)
        {
        }

        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100361770(uint64_t result)
{
  *(v1 + qword_10097EE28) = result;
  if (result)
  {
    *(v1 + qword_10097FBB8) = 1;
  }

  return result;
}

void sub_100361798()
{
  *(v0 + qword_100933850) = 1;
  *(sub_10035BA88() + 72) = 1;

  sub_100360FCC();
}

void sub_1003617E0()
{
  *(v0 + qword_100933850) = 0;
  *(sub_10035BA88() + 72) = 0;

  sub_100360FCC();
}

uint64_t sub_10036181C(uint64_t a1)
{
  v2 = sub_100741264();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_100932480, &unk_1007A9900);
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  sub_100068C18(a1, v9);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_1000AC948(v9);
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v19 = sub_10000C518(&unk_100932490, &qword_1007A9910);
  sub_1000498A8(&v9[*(v19 + 48)], v18);
  sub_1007492E4();
  v20 = *(v4 + 48);
  sub_100016B4C(v15, v6, &unk_100923970, &qword_1007A6B90);
  sub_100016B4C(v18, &v6[v20], &unk_100923970, &qword_1007A6B90);
  v21 = v29;
  v22 = *(v29 + 48);
  if (v22(v6, 1, v2) != 1)
  {
    sub_100016B4C(v6, v12, &unk_100923970, &qword_1007A6B90);
    if (v22(&v6[v20], 1, v2) != 1)
    {
      v25 = v28;
      (*(v21 + 32))(v28, &v6[v20], v2);
      sub_100362DF0(&qword_100926240, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v26 = v21;
      v23 = sub_100753014();
      v27 = *(v26 + 8);
      v27(v25, v2);
      sub_10000C8CC(v15, &unk_100923970, &qword_1007A6B90);
      sub_10000C8CC(v18, &unk_100923970, &qword_1007A6B90);
      v27(v12, v2);
      sub_10000C8CC(v6, &unk_100923970, &qword_1007A6B90);
      return v23 & 1;
    }

    sub_10000C8CC(v15, &unk_100923970, &qword_1007A6B90);
    sub_10000C8CC(v18, &unk_100923970, &qword_1007A6B90);
    (*(v21 + 8))(v12, v2);
    goto LABEL_8;
  }

  sub_10000C8CC(v15, &unk_100923970, &qword_1007A6B90);
  sub_10000C8CC(v18, &unk_100923970, &qword_1007A6B90);
  if (v22(&v6[v20], 1, v2) != 1)
  {
LABEL_8:
    sub_10000C8CC(v6, &unk_100932480, &unk_1007A9900);
    goto LABEL_9;
  }

  sub_10000C8CC(v6, &unk_100923970, &qword_1007A6B90);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_100361CD8(void *a1, __n128 a2)
{
  v3 = sub_100752294();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v16[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  LOBYTE(v35[0]) = 0;
  *&v17[0] = a1;
  *(v17 + 8) = 0u;
  *(&v17[1] + 8) = 0u;
  BYTE8(v17[2]) = 0;
  __asm { FMOV            V0.2D, #10.0 }

  v18 = _Q0;
  v19 = _Q0;
  v20 = 15;
  sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
  v12 = a1;
  *v6 = sub_100753774();
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  LOBYTE(a1) = sub_1007522C4();
  result = (*(v4 + 8))(v6, v3);
  if (a1)
  {
    v24 = xmmword_100931340;
    v25 = xmmword_100931350;
    v21 = xmmword_100931310;
    v22 = xmmword_100931320;
    v23 = xmmword_100931330;
    v29 = v17[2];
    v30 = v18;
    v31 = v19;
    v27 = v17[0];
    v28 = v17[1];
    v33[0] = xmmword_100931310;
    v33[1] = xmmword_100931320;
    v33[3] = xmmword_100931340;
    v33[4] = xmmword_100931350;
    v26 = qword_100931360;
    v32 = v20;
    v34 = qword_100931360;
    v33[2] = xmmword_100931330;
    sub_100016B4C(&v21, v35, &unk_1009308C0, &unk_1007A8BB0);
    xmmword_100931330 = v29;
    xmmword_100931340 = v30;
    xmmword_100931350 = v31;
    qword_100931360 = v32;
    xmmword_100931310 = v27;
    xmmword_100931320 = v28;
    sub_10000C8CC(v33, &unk_1009308C0, &unk_1007A8BB0);
    v16[3] = sub_100016C60(0, &qword_100925250, UIBarButtonItem_ptr);
    v16[0] = v12;
    v14 = v12;
    sub_1001664D8(v17, v35);
    sub_10074C8D4();
    sub_10000C8CC(v16, &unk_100923520, &qword_1007A5A70);
    v35[2] = xmmword_100931330;
    v35[3] = xmmword_100931340;
    v35[4] = xmmword_100931350;
    v35[0] = xmmword_100931310;
    v35[1] = xmmword_100931320;
    xmmword_100931310 = v21;
    xmmword_100931320 = v22;
    xmmword_100931330 = v23;
    xmmword_100931340 = v24;
    v36 = qword_100931360;
    xmmword_100931350 = v25;
    qword_100931360 = v26;
    sub_10000C8CC(v35, &unk_1009308C0, &unk_1007A8BB0);
    return sub_100166534(v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100361FCC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = a1;
  sub_100361CD8(v4, v5);
}

double sub_100362034()
{

  return result;
}

double sub_1003620F4(uint64_t a1)
{

  return result;
}

uint64_t type metadata accessor for ProductDiffablePageViewController(uint64_t a1)
{
  result = qword_1009338C0;
  if (!qword_1009338C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003622FC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10036235C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v11 = sub_100743B54();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &aBlock[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &aBlock[-1] - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v19 = *&Strong[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_navigationBarAppearanceProgress], v20 = Strong[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_navigationBarAppearanceProgress + 8], Strong, v20 == 1))
  {
    if (a5 == 1.79769313e308)
    {
      return;
    }

    goto LABEL_4;
  }

  if (v19 != a5)
  {
LABEL_4:
    sub_100743B14();
    sub_100743B34();
    v22 = v21;
    v24 = v23;
    v25 = *(v12 + 8);
    v25(v17, v11);
    sub_100743B14();
    sub_100743B44();
    v27 = v26;
    v29 = v28;
    v25(v14, v11);
    v30 = swift_allocObject();
    *(v30 + 16) = a1;
    *(v30 + 24) = a5;
    v31 = objc_allocWithZone(UIViewPropertyAnimator);
    aBlock[4] = a3;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CF7B0;
    aBlock[3] = a4;
    v32 = _Block_copy(aBlock);

    v33 = [v31 initWithDuration:v32 controlPoint1:a6 controlPoint2:v22 animations:{v24, v27, v29}];
    _Block_release(v32);
    [v33 startAnimation];
  }
}

void sub_100362634(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_navigationBarAppearanceProgress;
    *v5 = a2;
    *(v5 + 8) = 0;
    sub_10062ADD8();
  }
}

uint64_t sub_1003626AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_100362704(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_10036271C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
    if (v5 && (v6 = v5, sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr), v4 = v4, v7 = sub_100753FC4(), v4, v6, (v7 & 1) != 0) && ([a1 isCancelled] & 1) != 0)
    {
      v8 = sub_10035BB6C();
      v9 = v8;
      v10 = *(v8 + 40);
      if (v10)
      {
        v11 = *(v8 + 48);

        v10(v12, 1.0, 0.0);
        sub_1000164A8(v10, v11);
      }

      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {
        v14 = v13;
        v15 = [v13 navigationController];

        if (v15)
        {
          v16 = [v15 navigationBar];

          [v16 _setTitleOpacity:1.0];
          v4 = v16;
        }
      }

      *(v9 + 88) = 0;
    }

    else
    {
    }
  }
}

void sub_1003628B4(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([a1 isCancelled])
    {
      v5 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
      if (v5)
      {
        v6 = v5;
        sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr);
        v7 = v4;
        v8 = sub_100753FC4();

        if ((v8 & 1) != 0 && !*&v7[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController])
        {
          v9 = v7;
          v10 = [v9 navigationController];
          if (v10)
          {
            v11 = v10;
            v12 = [v10 navigationBar];

            if (v12)
            {

              sub_10035BB6C();
              v13 = [v9 collectionView];

              if (!v13)
              {
                __break(1u);
                return;
              }

              sub_1003CA534(v13, v14);

              v9 = v13;
            }
          }
        }
      }
    }
  }
}

void sub_100362A38(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10035BB6C();
    v4 = [v3 collectionView];
    if (v4)
    {
      v6 = v4;
      sub_1003CA534(v4, v5);
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_100362AD0()
{
  result = qword_100933EA8;
  if (!qword_100933EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100933EA8);
  }

  return result;
}

unint64_t sub_100362B94()
{
  result = qword_100933F08;
  if (!qword_100933F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100933F08);
  }

  return result;
}

unint64_t sub_100362BE8()
{
  result = qword_100933F10;
  if (!qword_100933F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100933F10);
  }

  return result;
}

uint64_t sub_100362D7C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100362DF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100362E48()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1003631B8()
{
  result = qword_100934018;
  if (!qword_100934018)
  {
    sub_10074CC34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100934018);
  }

  return result;
}

uint64_t sub_100363218(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v31 = sub_100742CF4();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v32 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1007493D4();
  v4 = *(v30 - 8);
  __chkstk_darwin(v30);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10074A304();
  v7 = *(v29 - 8);
  __chkstk_darwin(v29);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100752614();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10000C518(&qword_10092C1F0, &unk_1007A8F60);
  __chkstk_darwin(v11 - 8);
  v13 = &v28 - v12;
  v14 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v14 - 8);
  v16 = &v28 - v15;
  v17 = sub_10074F4D4();
  __chkstk_darwin(v17);
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  (*(v19 + 104))(&v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.gameCenterPlayerProfile(_:));
  v20 = sub_100741264();
  (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
  v21 = sub_100743FE4();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = sub_10074CC24();
  if (v23)
  {
    v24 = &type metadata for String;
  }

  else
  {
    v22 = 0;
    v24 = 0;
    v36 = 0;
  }

  v34 = v22;
  v35 = v23;
  v37 = v24;
  sub_1007525F4();
  (*(v7 + 104))(v9, enum case for FlowPresentationContext.infer(_:), v29);
  (*(v4 + 104))(v6, enum case for FlowAnimationBehavior.infer(_:), v30);
  (*(v2 + 104))(v32, enum case for FlowOrigin.inapp(_:), v31);
  sub_100752B44();
  sub_100742CD4();
  swift_allocObject();
  v25 = sub_100742C84();
  v26 = sub_10052AD94(v25, 1, v33);

  return v26;
}

uint64_t sub_1003636F8()
{
  v0 = sub_10000C518(&unk_100947360, &qword_1007C3EF0);
  sub_100039C50(v0, qword_10097FBF0);
  sub_10000D0FC(v0, qword_10097FBF0);
  return sub_100752664();
}

uint64_t sub_100363770()
{
  v0 = sub_10000C518(&unk_100947360, &qword_1007C3EF0);
  sub_100039C50(v0, qword_10097FC08);
  sub_10000D0FC(v0, qword_10097FC08);
  return sub_100752664();
}

uint64_t sub_1003637E8()
{
  v0 = sub_10000C518(&unk_100947360, &qword_1007C3EF0);
  sub_100039C50(v0, qword_10097FC20);
  sub_10000D0FC(v0, qword_10097FC20);
  return sub_100752664();
}

uint64_t sub_100363860()
{
  v0 = sub_10000C518(&unk_100947360, &qword_1007C3EF0);
  sub_100039C50(v0, qword_10097FC38);
  sub_10000D0FC(v0, qword_10097FC38);
  return sub_100752664();
}

uint64_t sub_1003638D8()
{
  v0 = sub_100741494();
  v1 = *(v0 - 8);
  v66 = v0;
  v67 = v1;
  __chkstk_darwin(v0);
  v3 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_100947360, &qword_1007C3EF0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v56 - v6;
  v65 = 0x80000001007786E0;
  if (qword_1009209C0 != -1)
  {
    swift_once();
  }

  v8 = sub_10000D0FC(v4, qword_10097FBF0);
  v63 = sub_100752854();
  v9 = sub_100752824();
  v11 = v5 + 16;
  v10 = *(v5 + 16);
  v10(v7, v8, v4);
  type metadata accessor for BoolPreferencesDebugSetting(0);
  v12 = swift_allocObject();
  strcpy((v12 + 56), "Feed Previews");
  *(v12 + 70) = -4864;
  v13 = v65;
  *(v12 + 72) = 0xD000000000000041;
  *(v12 + 80) = v13;
  *(v12 + 88) = 0;
  v64 = v10;
  v10((v12 + OBJC_IVAR____TtC22SubscribePageExtension27BoolPreferencesDebugSetting_key), v7, v4);
  v14 = (v12 + OBJC_IVAR____TtC22SubscribePageExtension27BoolPreferencesDebugSetting_preferences);
  *v14 = v9;
  v14[1] = &protocol witness table for LocalPreferences;

  sub_100741484();
  v15 = sub_100741464();
  v17 = v16;
  v18 = *(v67 + 8);
  v67 += 8;
  v65 = v18;
  v18(v3, v66);
  v68 = v15;
  v69 = v17;
  v60 = v12;
  sub_1007544E4();
  v19 = *(v5 + 8);
  v61 = v5 + 8;
  v62 = v19;
  v19(v7, v4);

  v59 = 0x8000000100778750;
  v20 = v3;
  if (qword_1009209C8 != -1)
  {
    swift_once();
  }

  v21 = sub_10000D0FC(v4, qword_10097FC08);
  v22 = sub_100752824();
  v23 = v21;
  v24 = v64;
  v64(v7, v23, v4);
  v25 = swift_allocObject();
  *(v25 + 56) = 0xD000000000000017;
  *(v25 + 64) = 0x8000000100778730;
  v26 = v59;
  *(v25 + 72) = 0xD000000000000030;
  *(v25 + 80) = v26;
  *(v25 + 88) = 0;
  v24(v25 + OBJC_IVAR____TtC22SubscribePageExtension27BoolPreferencesDebugSetting_key, v7, v4);
  v27 = (v25 + OBJC_IVAR____TtC22SubscribePageExtension27BoolPreferencesDebugSetting_preferences);
  *v27 = v22;
  v27[1] = &protocol witness table for LocalPreferences;

  sub_100741484();
  v28 = sub_100741464();
  v30 = v29;
  v65(v20, v66);
  v68 = v28;
  v69 = v30;
  v59 = v25;
  sub_1007544E4();
  v62(v7, v4);

  if (qword_1009209D0 != -1)
  {
    swift_once();
  }

  v31 = sub_10000D0FC(v4, qword_10097FC20);
  v32 = sub_100752824();
  v33 = v64;
  v64(v7, v31, v4);
  v34 = swift_allocObject();
  *(v34 + 56) = 0xD000000000000011;
  *(v34 + 64) = 0x8000000100778790;
  *(v34 + 72) = 0xD000000000000067;
  *(v34 + 80) = 0x80000001007787B0;
  *(v34 + 88) = 0;
  v33(v34 + OBJC_IVAR____TtC22SubscribePageExtension27BoolPreferencesDebugSetting_key, v7, v4);
  v35 = (v34 + OBJC_IVAR____TtC22SubscribePageExtension27BoolPreferencesDebugSetting_preferences);
  *v35 = v32;
  v35[1] = &protocol witness table for LocalPreferences;

  sub_100741484();
  v36 = sub_100741464();
  v38 = v37;
  v58 = v11;
  v65(v20, v66);
  v68 = v36;
  v69 = v38;
  sub_1007544E4();
  v62(v7, v4);

  v57 = v20;
  if (qword_1009209D8 != -1)
  {
    swift_once();
  }

  v39 = sub_10000D0FC(v4, qword_10097FC38);
  v40 = sub_100752824();
  v41 = v64;
  v64(v7, v39, v4);
  v42 = swift_allocObject();
  *(v42 + 56) = 0xD00000000000001DLL;
  *(v42 + 64) = 0x8000000100778820;
  *(v42 + 72) = 0xD00000000000003DLL;
  *(v42 + 80) = 0x8000000100778840;
  *(v42 + 88) = 0;
  v41(v42 + OBJC_IVAR____TtC22SubscribePageExtension27BoolPreferencesDebugSetting_key, v7, v4);
  v43 = (v42 + OBJC_IVAR____TtC22SubscribePageExtension27BoolPreferencesDebugSetting_preferences);
  *v43 = v40;
  v43[1] = &protocol witness table for LocalPreferences;

  v44 = v57;
  sub_100741484();
  v45 = sub_100741464();
  v47 = v46;
  v65(v44, v66);
  v68 = v45;
  v69 = v47;
  sub_1007544E4();
  v62(v7, v4);

  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1007A5CF0;
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1007A57A0;
  v50 = v59;
  *(v49 + 32) = v60;
  *(v49 + 40) = v50;
  *(v49 + 48) = v34;
  *(v49 + 56) = v42;
  type metadata accessor for DebugSection();
  v51 = swift_allocObject();
  sub_100741484();
  v52 = sub_100741464();
  v54 = v53;

  v65(v44, v66);
  v51[2] = v52;
  v51[3] = v54;
  v51[4] = 0;
  v51[5] = 0xE000000000000000;
  v51[6] = v49;
  *(v48 + 32) = v51;

  return v48;
}

id sub_10036414C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TodaySettings();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100364238(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = ASKBuildTypeGetCurrent();
  v6 = sub_100753094();
  v8 = v7;
  if (v6 == sub_100753094() && v8 == v9)
  {
    goto LABEL_15;
  }

  v11 = sub_100754754();

  if ((v11 & 1) == 0)
  {
    v12 = sub_100753094();
    v14 = v13;
    if (v12 != sub_100753094() || v14 != v15)
    {
      v17 = sub_100754754();

      if (v17)
      {
        goto LABEL_6;
      }

      v18 = sub_100753094();
      v20 = v19;
      if (v18 == sub_100753094() && v20 == v21)
      {
      }

      else
      {
        v25 = sub_100754754();

        if ((v25 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      sub_100752854();
      sub_100752844();
      if (qword_100921F28 != -1)
      {
        swift_once();
      }

      v26 = sub_10000C518(&unk_100947360, &qword_1007C3EF0);
      sub_10000D0FC(v26, qword_100983450);
      sub_100752534();

      if (v28 != 2 && (v28 & 1) != 0)
      {
        goto LABEL_16;
      }

LABEL_25:
      v23 = 0;
      return v23 & 1;
    }

LABEL_15:

    goto LABEL_16;
  }

LABEL_6:

LABEL_16:
  sub_100752854();
  sub_100752824();
  if (*a1 != -1)
  {
    swift_once();
  }

  v22 = sub_10000C518(&unk_100947360, &qword_1007C3EF0);
  sub_10000D0FC(v22, a2);
  sub_100752534();

  v23 = v27;
  return v23 & 1;
}

uint64_t sub_10036450C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a4;
  v15 = a5;
  v16 = a2;
  v17 = a3;
  v18 = a1;
  v12 = *((swift_isaMask & *v5) + 0x80);
  swift_getOpaqueTypeMetadata2();
  sub_100752764();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v23[2] = OpaqueTypeConformance2;
  v8 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10000C724(&unk_100933350, qword_1007BA4A0);
  sub_100751BD4();
  sub_10000C724(&unk_100933360, &qword_1007A8530);
  v9 = sub_100751BD4();
  v23[0] = OpaqueTypeMetadata2;
  v23[1] = v8;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = sub_10002DDC8(&qword_10092AE10, &unk_100933350, qword_1007BA4A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  WitnessTable = swift_getWitnessTable();
  v20 = sub_10002DDC8(&qword_100924AD8, &unk_100933360, &qword_1007A8530, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v10 = swift_getWitnessTable();
  v12(v23, sub_1003668E8, v13, v9, v10);
  return sub_1007538E4();
}

uint64_t sub_100364798(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v8 = a2;
  ObjectType = swift_getObjectType();
  v3 = *((swift_isaMask & *v2) + 0x88);
  v4 = sub_10000C518(&qword_100934090, &qword_1007BB3B8);
  v5 = sub_10002DDC8(&qword_100934098, &qword_100934090, &qword_1007BB3B8, &protocol conformance descriptor for IDView<A, B>);
  return v3(v8, sub_100366948, v7, v4, v5);
}

uint64_t sub_10036488C@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v11[0] = a3;
  v11[1] = &type metadata for EmptyView;
  v11[2] = a4;
  v11[3] = &protocol witness table for EmptyView;
  v6 = sub_100751E04();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_100751DF4();
  sub_100751E54();
  a5[3] = v6;
  a5[4] = swift_getWitnessTable();
  sub_10000D134(a5);
  sub_100751DE4();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1003649E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a3;
  v45 = a2;
  v49 = a4;
  v44 = sub_100747C14();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_100751BC4();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_10000C518(&unk_100930810, &unk_1007B7670);
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v35 - v8;
  v42 = sub_10074F704();
  v51 = *(v42 - 8);
  __chkstk_darwin(v42);
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v50 = &v35 - v12;
  v13 = sub_10000C518(&qword_100923228, &unk_1007AB120);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v35 - v15;
  v17 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v35 - v19;
  swift_getKeyPath();
  sub_100746914();

  sub_1007525C4();
  (*(v18 + 8))(v20, v17);
  v37 = v55;
  swift_getKeyPath();
  sub_100746914();

  v36 = *(v14 + 56);
  swift_getKeyPath();
  sub_100746914();

  v54 = 0;
  memset(v53, 0, sizeof(v53));
  sub_100746944();
  v21 = v38;
  sub_1007525C4();
  (*(v39 + 8))(v9, v21);
  v39 = sub_100746954();
  v35 = a1;
  sub_100746884();
  v22 = sub_100747B94();
  v23 = [v22 preferredContentSizeCategory];

  v24 = v41;
  sub_100751BB4();
  v25 = *(v43 + 8);
  v26 = v44;
  v25(v6, v44);
  swift_getKeyPath();
  v27 = v40;
  sub_100746914();

  sub_10074F674();
  v28 = *(v51 + 8);
  v51 += 8;
  v29 = v27;
  v30 = v42;
  v28(v29, v42);
  sub_100746884();
  sub_10036506C(v6, v45);
  v25(v6, v26);
  v31 = v36;
  v32 = v24;
  v33 = v50;
  sub_100745B54();

  (*(v46 + 8))(v32, v48);
  sub_10000C620(v52);
  sub_10000C8CC(v53, &unk_1009340A0, &qword_1007BB420);
  v28(v33, v30);
  sub_10000C8CC(&v16[v31], &unk_10093D6E0, &unk_1007A6080);
  sub_10000C8CC(v16, &unk_10093D6E0, &unk_1007A6080);
  sub_10000C518(&qword_100934090, &qword_1007BB3B8);
  return sub_100746934();
}

double sub_10036506C(uint64_t a1, uint64_t a2)
{
  v2 = sub_10074E984();
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v27 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v6 = &v25 - v5;
  v7 = sub_10074F704();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1007499D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003662B8(v14);
  sub_100747B84();
  v15 = sub_1007499C4();
  v17 = v16;
  (*(v8 + 8))(v10, v7);
  if (v17)
  {
    sub_100747C04();
    v18 = v26;
    sub_1007525C4();
    (*(v25 + 8))(v6, v18);
    v19 = v27;
    sub_10074E994();

    v20 = COERCE_DOUBLE(sub_1007499B4());
    v22 = v21;
    (*(v28 + 8))(v19, v29);
    (*(v12 + 8))(v14, v11);
    if (v22)
    {
      return 0.0;
    }

    else
    {
      return v20;
    }
  }

  else
  {
    v23 = *&v15;
    (*(v12 + 8))(v14, v11);
  }

  return v23;
}

uint64_t sub_1003653B8@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v62 = a3;
  v63 = a5;
  v57 = a2;
  v59 = a1;
  v61 = *(a4 - 8);
  __chkstk_darwin(a1);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v8;
  v69 = v9;
  v10 = v9;
  v51 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v56 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v13 = &v43 - v12;
  v14 = sub_100752764();
  v68 = a4;
  v69 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v68 = OpaqueTypeMetadata2;
  v69 = v14;
  v16 = v14;
  v45 = v14;
  v70 = OpaqueTypeConformance2;
  v17 = OpaqueTypeConformance2;
  v46 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeMetadata2();
  v52 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v43 - v19;
  v68 = OpaqueTypeMetadata2;
  v69 = v16;
  v70 = v17;
  v47 = swift_getOpaqueTypeConformance2();
  v68 = v18;
  v69 = v47;
  v50 = &opaque type descriptor for <<opaque return type of View.intentDispatcher(from:)>>;
  v48 = swift_getOpaqueTypeMetadata2();
  v54 = *(v48 - 8);
  __chkstk_darwin(v48);
  v22 = &v43 - v21;
  sub_10000C724(&unk_100933350, qword_1007BA4A0);
  v53 = sub_100751BD4();
  v60 = *(v53 - 8);
  __chkstk_darwin(v53);
  v44 = &v43 - v23;
  sub_10000C724(&unk_100933360, &qword_1007A8530);
  v24 = sub_100751BD4();
  v58 = *(v24 - 8);
  __chkstk_darwin(v24);
  v49 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v26);
  v55 = &v43 - v28;
  v59(v27);
  sub_100751F64();
  (*(v61 + 8))(v7, a4);
  swift_checkMetadataState();
  sub_100751F34();
  (*(v56 + 8))(v13, OpaqueTypeMetadata2);
  v29 = v47;
  sub_100751F44();
  (*(v52 + 8))(v20, v18);
  sub_1007442C4();
  sub_100752D34();
  v68 = v18;
  v69 = v29;
  v30 = swift_getOpaqueTypeConformance2();
  sub_1003668F8(&qword_100934088, &type metadata accessor for ArtworkLoader, &protocol conformance descriptor for ArtworkLoader);
  v31 = v44;
  v32 = v48;
  sub_100752014();

  (*(v54 + 8))(v22, v32);
  swift_getKeyPath();
  v68 = *(v62 + OBJC_IVAR____TtC22SubscribePageExtension22SwiftUIViewHostingCell_flowPreview);
  v33 = sub_10002DDC8(&qword_10092AE10, &unk_100933350, qword_1007BA4A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v66 = v30;
  v67 = v33;

  v34 = v53;
  WitnessTable = swift_getWitnessTable();
  v36 = v49;
  sub_100751FA4();

  (*(v60 + 8))(v31, v34);
  v37 = sub_10002DDC8(&qword_100924AD8, &unk_100933360, &qword_1007A8530, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v64 = WitnessTable;
  v65 = v37;
  swift_getWitnessTable();
  v38 = v58;
  v39 = *(v58 + 16);
  v40 = v55;
  v39(v55, v36, v24);
  v41 = *(v38 + 8);
  v41(v36, v24);
  v39(v63, v40, v24);
  return (v41)(v40, v24);
}

uint64_t sub_100365B30()
{
  v0 = sub_10074E984();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  v10 = 0;
  v11 = 0xE000000000000000;
  v12._countAndFlagsBits = sub_1007539D4();
  sub_1007531B4(v12);

  v13._countAndFlagsBits = 95;
  v13._object = 0xE100000000000000;
  sub_1007531B4(v13);
  swift_getKeyPath();
  sub_100746914();

  sub_1007525C4();
  (*(v5 + 8))(v7, v4);
  sub_10074E994();

  sub_1007545F4();
  (*(v1 + 8))(v3, v0);
  return v10;
}

id sub_100365F1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwiftUIViewHostingCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SwiftUIViewHostingCell(uint64_t a1)
{
  result = qword_100934070;
  if (!qword_100934070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100366004(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10036610C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v5 = sub_100749BD4();
  v6 = __chkstk_darwin(v5);
  (*(v8 + 104))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *a4, v6);
  return sub_100749BE4();
}

uint64_t sub_1003661E8(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = sub_100749BD4();
  v5 = __chkstk_darwin(v4);
  (*(v7 + 104))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *a3, v5);
  return sub_100749BE4();
}

uint64_t sub_1003662B8@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = sub_100751BC4();
  v36 = *(v1 - 8);
  v37 = v1;
  __chkstk_darwin(v1);
  v32 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000C518(&unk_10093D6E0, &unk_1007A6080);
  __chkstk_darwin(v3 - 8);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v8 = sub_10074E984();
  v33 = *(v8 - 8);
  v34 = v8;
  __chkstk_darwin(v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  v18 = sub_10074F704();
  v30 = *(v18 - 8);
  v31 = v18;
  __chkstk_darwin(v18);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747B84();
  sub_100747C04();
  sub_1007525C4();
  v21 = *(v12 + 8);
  v21(v17, v11);
  sub_100747C04();
  sub_1007525C4();
  v21(v14, v11);
  sub_10074E994();

  v22 = v29;
  sub_100747BB4();
  sub_10074F5C4();
  sub_10074F5E4();
  v23 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
  [v23 scaledValueForValue:1.0];

  v24 = sub_100747B94();
  v25 = [v24 preferredContentSizeCategory];

  v26 = v32;
  sub_100751BB4();
  sub_1007499A4();

  (*(v36 + 8))(v26, v37);
  sub_10000C8CC(v22, &unk_10093D6E0, &unk_1007A6080);
  sub_10000C8CC(v7, &unk_10093D6E0, &unk_1007A6080);
  (*(v33 + 8))(v10, v34);
  return (*(v30 + 8))(v20, v31);
}

uint64_t sub_100366764(__n128 a1)
{
  v1 = sub_1007499D4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  sub_1003662B8(&v11 - v6);
  (*(v2 + 32))(v4, v7, v1);
  v8 = (*(v2 + 88))(v4, v1);
  if (v8 == enum case for ComponentHeightFactory.ComponentHeight.constant(_:))
  {
    return 0;
  }

  if (v8 == enum case for ComponentHeightFactory.ComponentHeight.aspectRatio(_:) || v8 != enum case for ComponentHeightFactory.ComponentHeight.auto(_:))
  {
    (*(v2 + 8))(v4, v1);
    return 0;
  }

  return 1;
}

uint64_t sub_1003668F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10036695C@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_10000C518(&qword_100928550, &unk_1007B4B20);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - v6;
  v8 = sub_100747814();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  sub_10024BBC0(v12);

  sub_1007477E4();
  (*(v9 + 8))(v12, v8);
  v16[1] = a1;
  sub_100743464();
  (*(v5 + 8))(v7, v4);
  sub_10074A254();
  v14 = sub_10074A274();
  return (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
}

uint64_t sub_100366B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v167 = a6;
  v162 = a3;
  ObjectType = swift_getObjectType();
  v10 = sub_10000C518(&unk_100929420, qword_1007AD028);
  __chkstk_darwin(v10 - 8);
  v164 = &v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v141 - v13;
  v15 = sub_10074ED34();
  __chkstk_darwin(v15 - 8);
  v145 = &v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_1007455E4();
  v148 = *(v149 - 8);
  __chkstk_darwin(v149);
  v147 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v146 = &v141 - v19;
  v20 = sub_10000C518(&qword_100934110, qword_1007B70F0);
  __chkstk_darwin(v20 - 8);
  v161 = &v141 - v21;
  v159 = sub_10074C3E4();
  v155 = *(v159 - 8);
  __chkstk_darwin(v159);
  v156 = &v141 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
  v158 = *(v160 - 8);
  __chkstk_darwin(v160);
  v157 = &v141 - v23;
  v24 = sub_10000C518(&unk_1009259B0, &unk_1007B0620);
  __chkstk_darwin(v24 - 8);
  v153 = &v141 - v25;
  v152 = sub_10074D734();
  v150 = *(v152 - 8);
  __chkstk_darwin(v152);
  v151 = &v141 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000C518(&unk_100925540, &qword_1007A8140);
  __chkstk_darwin(v27 - 8);
  v154 = &v141 - v28;
  v144 = sub_100754724();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v142 = &v141 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10000C518(&qword_100933250, &unk_1007B3A50);
  __chkstk_darwin(v30 - 8);
  v32 = &v141 - v31;
  v33 = sub_100749A94();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v141 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100751374();
  v165 = *(v37 - 8);
  v166 = v37;
  __chkstk_darwin(v37);
  v168 = &v141 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = a1;
  v39 = sub_10074EF74();
  v163 = v14;
  if (v40)
  {
    v41 = HIBYTE(v40) & 0xF;
    if ((v40 & 0x2000000000000000) == 0)
    {
      v41 = v39 & 0xFFFFFFFFFFFFLL;
    }

    if (v41)
    {
      v141 = a4;
      sub_10000D198();
      v42 = sub_100753DD4();
      sub_10024DEEC(1, v42);

      v43 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_headingLabel];
      if (v43)
      {
        v44 = v43;
        v45 = sub_100753064();

        [v44 setText:v45];
      }

      else
      {
      }

      v47 = v168;
      goto LABEL_12;
    }
  }

  v46 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_headingLabel];
  v47 = v168;
  if (v46)
  {
    [v46 setHidden:1];
  }

LABEL_12:
  sub_10024CF88(v167, v47);
  sub_100749A44();
  sub_100368560(&unk_100929800, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v48 = sub_100754324();
  v49 = *(v34 + 8);
  v49(v36, v33);
  ObjectType = v7;
  if (v48)
  {
    (*(v165 + 56))(v32, 1, 1, v166);
    v50 = OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_separator;
    swift_beginAccess();
    sub_1002A39F8(v32, &v7[v50]);
    swift_endAccess();
    sub_10024D3D4();
    sub_10000C8CC(v32, &qword_100933250, &unk_1007B3A50);
    sub_100749A54();
    LOBYTE(v50) = sub_100754324();
    v49(v36, v33);
    v51 = [v7 contentView];
    v52 = v51;
    if (v50)
    {
      [v51 layoutMargins];
      [v52 setLayoutMargins:?];
    }

    else
    {
      sub_100751304();
      v59 = *(&v172 + 1);
      sub_10000C888(&v171, *(&v172 + 1));
      v60 = v142;
      sub_100536120(v59);
      sub_100750564();
      (*(v143 + 8))(v60, v144);
      [v52 layoutMargins];
      [v52 setLayoutMargins:?];

      sub_10000C620(&v171);
    }

    v58 = v162;
    v57 = ObjectType;
  }

  else
  {
    v54 = v165;
    v53 = v166;
    (*(v165 + 16))(v32, v47, v166);
    (*(v54 + 56))(v32, 0, 1, v53);
    v55 = OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_separator;
    swift_beginAccess();
    sub_1002A39F8(v32, &v7[v55]);
    swift_endAccess();
    sub_10024D3D4();
    sub_10000C8CC(v32, &qword_100933250, &unk_1007B3A50);
    v56 = [v7 contentView];
    [v56 layoutMargins];
    [v56 setLayoutMargins:?];

    v57 = v7;
    v58 = v162;
  }

  v61 = *&v57[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_titleLabel];
  sub_10074EF34();
  if (v62)
  {
    v63 = sub_100753064();
  }

  else
  {
    v63 = 0;
  }

  [v61 setText:v63];

  v64 = sub_10074EF04();
  v65 = sub_10074EDF4();
  v66 = v150;
  v67 = v152;
  (*(v150 + 104))(v151, enum case for OfferButtonPresenterViewAlignment.left(_:), v152);
  (*(v66 + 56))(v153, 1, 1, v67);
  sub_100368560(&unk_100925550, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
  v68 = v154;
  sub_10074A9C4();
  v69 = sub_10000C518(&unk_10092EEA0, qword_1007A8150);
  (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
  v70 = v155;
  v71 = v159;
  (*(v155 + 104))(v156, enum case for OfferButtonSubtitlePosition.right(_:), v159);
  (*(v70 + 56))(v161, 1, 1, v71);
  sub_100368560(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
  v72 = v157;
  sub_10074A9C4();
  sub_10015DE40(v64, v65, 0, v68, v72, v58, 0, 0);

  (*(v158 + 8))(v72, v160);
  sub_10000C8CC(v68, &unk_100925540, &qword_1007A8140);
  if (sub_10074EF04())
  {
    v73 = v146;
    sub_100749ED4();
    v74 = v148;
    v75 = v147;
    v76 = v149;
    (*(v148 + 104))(v147, enum case for OfferLabelStyle.none(_:), v149);
    sub_100368560(&qword_100923598, &type metadata accessor for OfferLabelStyle, &protocol conformance descriptor for OfferLabelStyle);
    v77 = sub_100753014();
    v78 = *(v74 + 8);
    v78(v75, v76);
    v78(v73, v76);
    if ((v77 & 1) == 0)
    {

      sub_100749F14();
      sub_10000C518(&unk_100925780, qword_1007AC630);
      sub_100752764();
      sub_100752D34();
      sub_100744AC4();
      sub_100752D34();
      sub_100744984();

      v82 = sub_100748304();
      swift_allocObject();
      v83 = sub_1007482E4();
      *(&v172 + 1) = v82;
      *&v171 = v83;
      v84 = OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_offerLabelPresenter;
      v80 = ObjectType;
      swift_beginAccess();

      sub_1001183AC(&v171, &v80[v84]);
      swift_endAccess();
      [*&v80[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_offerLabel] frame];
      v174.origin.x = 0.0;
      v174.origin.y = 0.0;
      v174.size.width = 0.0;
      v174.size.height = 0.0;
      if (CGRectEqualToRect(v173, v174))
      {
        v85 = objc_opt_self();
        v86 = [v85 areAnimationsEnabled];
        [v85 setAnimationsEnabled:0];
        sub_100368560(&qword_100934118, type metadata accessor for MediumLockupCollectionViewCell, &unk_1007BB428);
        swift_unknownObjectRetain();
        sub_1007482F4();
        [v80 layoutIfNeeded];
        [v85 setAnimationsEnabled:v86];
      }

      else
      {
        sub_100368560(&qword_100934118, type metadata accessor for MediumLockupCollectionViewCell, &unk_1007BB428);
        swift_unknownObjectRetain();
        sub_1007482F4();
      }

      goto LABEL_29;
    }
  }

  v171 = 0u;
  v172 = 0u;
  v79 = OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_offerLabelPresenter;
  v80 = ObjectType;
  swift_beginAccess();
  sub_1001183AC(&v171, &v80[v79]);
  swift_endAccess();
  v81 = sub_100368174(0, 0);
LABEL_29:
  v87 = v167;
  v88 = OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_headingLabel;
  v89 = *&v80[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_headingLabel];
  if (v89 && ([v89 isHidden] & 1) == 0 && (v90 = *&v80[v88]) != 0)
  {
    v91 = [v90 hasContent];
  }

  else
  {
    v91 = 0;
  }

  v92 = OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_offerLabelPresenter;
  swift_beginAccess();
  sub_100032C04(&v80[v92], &v171);
  v93 = *(&v172 + 1);
  sub_10000C8CC(&v171, &unk_100923520, &qword_1007A5A70);
  v94 = [v87 traitCollection];
  v95 = sub_1007537D4();

  if (v95)
  {
    v96 = [v87 traitCollection];
    v97 = sub_100753804();

    sub_10074EE14();
    if (!v98)
    {
      v100 = v97 ^ 1;
      goto LABEL_51;
    }

    if ((v97 & 1) == 0)
    {
      if (v93)
      {
        v99 = 1;
      }

      else
      {
        v99 = v91;
      }

      v100 = 1;
      if ((v99 & 1) == 0)
      {
LABEL_41:
        sub_10024E19C();
        v101 = *&v80[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel];
        if (v101)
        {
          v102 = v101;
          v103 = sub_100753064();

          [v102 setText:v103];
        }

        else
        {
        }

        goto LABEL_55;
      }

      goto LABEL_48;
    }
  }

  else
  {
    sub_10074EE14();
    if (!v104)
    {
      v100 = 0;
      goto LABEL_51;
    }
  }

  v100 = 0;
  if (v93)
  {
    v105 = v91;
  }

  else
  {
    v105 = 0;
  }

  if ((v105 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_48:

LABEL_51:
  v106 = OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel;
  v107 = *&v80[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel];
  if (v107)
  {
    [v107 setHidden:1];
    v108 = *&v80[v106];
    if (v108)
    {
      [v108 setText:0];
    }
  }

LABEL_55:
  v109 = *&v80[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_subtitleLabel];
  sub_10074EFB4();
  if (v110)
  {
    v111 = sub_100753064();
  }

  else
  {
    v111 = 0;
  }

  [v109 setText:v111];

  v112 = OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel;
  v113 = *&v80[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel];
  if (!v113 || ([v113 isHidden] & 1) != 0 || (v114 = *&v80[v112]) == 0)
  {
    if (v91)
    {
      if (v93)
      {
        goto LABEL_67;
      }
    }

    else if (!v93)
    {
      v116 = 0;
      goto LABEL_71;
    }

    goto LABEL_69;
  }

  v115 = [v114 hasContent];
  if ((v91 & 1) == 0)
  {
    if (!v93)
    {
      v116 = 0;
      if (v115)
      {
        goto LABEL_92;
      }

LABEL_71:
      v117 = 0;
      goto LABEL_72;
    }

    if (v115)
    {
      v117 = 1;
      v116 = 1;
      goto LABEL_72;
    }

LABEL_69:
    v116 = 1;
    goto LABEL_71;
  }

  if (!v93)
  {
    v116 = 1;
    v117 = 1;
    if (v115)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  if ((v115 & 1) == 0)
  {
LABEL_67:
    v116 = 2;
    goto LABEL_71;
  }

  v116 = 2;
LABEL_92:
  v117 = 1;
LABEL_72:
  v118 = [v109 hasContent];
  v119 = v163;
  if (!v118)
  {
LABEL_75:
    v121 = 1;
    goto LABEL_81;
  }

  v120 = v116 + v117;
  if (v100)
  {
    if (v120)
    {
      goto LABEL_75;
    }

    v121 = 0;
  }

  else
  {
    v121 = v120 > 1;
  }

LABEL_81:
  [v109 setHidden:v121];
  v122 = sub_10074EEA4();
  if (!v122)
  {
    sub_10000D198();
    v122 = sub_100753DF4();
  }

  v123 = v122;
  [v109 setTextColor:v122];

  v124 = &stru_1008F2000;
  v125 = [v109 layer];
  sub_10074EEB4();
  v126 = sub_1007497F4();
  v127 = *(v126 - 8);
  v128 = *(v127 + 48);
  if (v128(v119, 1, v126) == 1)
  {
    sub_10000C8CC(v119, &unk_100929420, qword_1007AD028);
LABEL_87:
    v135 = 0;
    goto LABEL_88;
  }

  sub_1007497E4();
  (*(v127 + 8))(v119, v126);
  v129 = *(&v172 + 1);
  if (!*(&v172 + 1))
  {
    goto LABEL_87;
  }

  v130 = sub_10000C888(&v171, *(&v172 + 1));
  v131 = *(v129 - 8);
  v132 = __chkstk_darwin(v130);
  v134 = &v141 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v131 + 16))(v134, v132);
  v135 = sub_100754734();
  (*(v131 + 8))(v134, v129);
  v124 = &stru_1008F2000;
  sub_10000C620(&v171);
LABEL_88:
  [v125 setCompositingFilter:v135];

  swift_unknownObjectRelease();
  v136 = [v80 contentView];
  v137 = [v136 v124[67].name];

  v138 = v164;
  sub_10074EEB4();
  v139 = v128(v138, 1, v126) == 1;
  sub_10000C8CC(v138, &unk_100929420, qword_1007AD028);
  [v137 setAllowsGroupBlending:v139];

  [v80 setNeedsLayout];
  return (*(v165 + 8))(v168, v166);
}

double sub_100368174(uint64_t a1, NSString a2)
{
  v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_offerLabel];
  v6 = [v5 text];
  if (!v6)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  v8 = v6;
  v9 = sub_100753094();
  v11 = v10;

  if (!a2)
  {

    goto LABEL_12;
  }

  if (v9 != a1 || v11 != a2)
  {
    v13 = sub_100754754();

    if (v13)
    {
      return result;
    }

LABEL_10:
    a2 = sub_100753064();
LABEL_12:
    [v5 setText:a2];

    v14 = [v5 text];
    if (v14)
    {
      v15 = v14;
      sub_100753094();
    }

    v16 = sub_100753114();

    [v5 setHidden:v16 & 1];

    [v2 setNeedsLayout];
    return result;
  }

  return result;
}

uint64_t sub_100368340(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_100751374();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_10024CF88(a7, v12);
  sub_100751334();
  (*(v10 + 8))(v12, v9);
  PageTraitEnvironment.pageColumnWidth.getter();
  sub_10024E818(a7, v13, a2);
  v14 = objc_opt_self();
  PageTraitEnvironment.pageColumnWidth.getter();
  v15 = [v14 absoluteDimension:?];
  v16 = sub_100749A04();

  return v16;
}

uint64_t sub_100368560(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1003685A8(double a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v28 = a4;
  v8 = sub_100754724();
  v26 = *(v8 - 8);
  v27 = v8;
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100749A94();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100751374();
  v15 = *(v29 - 8);
  __chkstk_darwin(v29);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_10024CF88(a5, v17);
  sub_100749A44();
  sub_100368560(&unk_100929800, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v18 = sub_100754324();
  v19 = (*(v12 + 8))(v14, v11);
  v19.n128_f64[0] = a1;
  v20 = sub_10024E818(a5, v19, a2);
  if (v18)
  {
    v21 = v20;
    sub_100751304();
    v22 = v31;
    sub_10000C888(v30, v31);
    sub_100536120(v22);
    sub_100750564();
    (*(v26 + 8))(v10, v27);
    (*(v15 + 8))(v17, v29);
    sub_10000C620(v30);
  }

  else
  {
    sub_100753BD4();
    v21 = v23;
    (*(v15 + 8))(v17, v29);
  }

  return v21;
}

void *sub_1003688EC(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v3 = sub_10074E984();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - v9;
  v18 = _swiftEmptyArrayStorage;
  swift_getKeyPath();
  sub_100746914();

  swift_getKeyPath();
  sub_1007525B4();

  (*(v8 + 8))(v10, v7);
  if ((*(v4 + 88))(v6, v3) == enum case for Shelf.ContentType.productBadge(_:))
  {
    v12 = sub_100368B24(a1, v17, v11);
    sub_1004A0098(v12, v13);
  }

  else
  {
    v14 = sub_10055BE28(a1, v17);
    sub_1004A0098(v14, v15);
    (*(v4 + 8))(v6, v3);
  }

  return v18;
}

unint64_t sub_100368B24(uint64_t a1, uint64_t a2, __n128 a3)
{
  v131 = a2;
  v4 = sub_100747524();
  v129 = *(v4 - 8);
  v130 = v4;
  __chkstk_darwin(v4);
  v128 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_10074F704();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v125 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_10074E984();
  v121 = *(v123 - 8);
  __chkstk_darwin(v123);
  v110 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_10000C518(&qword_10092C380, &unk_1007B0E90);
  __chkstk_darwin(v120);
  v122 = &v109 - v8;
  v9 = sub_10000C518(&unk_100933370, &unk_1007A8CE0);
  __chkstk_darwin(v9 - 8);
  v113 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v134 = &v109 - v12;
  __chkstk_darwin(v13);
  v135 = &v109 - v14;
  v15 = sub_10074E5E4();
  v133 = *(v15 - 8);
  __chkstk_darwin(v15);
  v109 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_10000C518(&qword_100934210, &qword_1007BB588);
  __chkstk_darwin(v116);
  v18 = &v109 - v17;
  v19 = sub_10000C518(&qword_100934218, &qword_1007BB590);
  __chkstk_darwin(v19 - 8);
  v112 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v109 - v22;
  __chkstk_darwin(v24);
  v132 = &v109 - v25;
  v26 = sub_10000C518(&qword_100923228, &unk_1007AB120);
  __chkstk_darwin(v26);
  v119 = &v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v109 - v29;
  v31 = sub_10000C518(&unk_10093D6E0, &unk_1007A6080);
  __chkstk_darwin(v31 - 8);
  v118 = &v109 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v109 - v34;
  v141 = _swiftEmptyArrayStorage;
  swift_getKeyPath();
  v136 = a1;
  sub_100746914();

  v117 = v26;
  v36 = *(v26 + 48);
  sub_100066578(v30, v35, &unk_10093D6E0, &unk_1007A6080);
  v37 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  v115 = v38 + 48;
  v114 = v39;
  v40 = v39(v35, 1, v37);
  v111 = v38;
  if (v40 == 1)
  {
    sub_10000C8CC(&v30[v36], &unk_10093D6E0, &unk_1007A6080);
    sub_10000C8CC(v35, &unk_10093D6E0, &unk_1007A6080);
    v138 = 0u;
    v139 = 0u;
    v140 = 0;
    v41 = v132;
LABEL_10:
    sub_10000C8CC(&v138, &unk_1009297F0, &unk_1007AD7A0);
    goto LABEL_11;
  }

  swift_getKeyPath();
  sub_1007525B4();

  v42 = v137;
  (*(v38 + 8))(v35, v37);
  if (*(v42 + 16))
  {
    sub_10000C824(v42 + 32, &v138);
  }

  else
  {

    v140 = 0;
    v138 = 0u;
    v139 = 0u;
  }

  v41 = v132;
  sub_10000C8CC(&v30[v36], &unk_10093D6E0, &unk_1007A6080);
  if (!*(&v139 + 1))
  {
    goto LABEL_10;
  }

  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_1007461A4();
  if (swift_dynamicCast())
  {
    v43 = sub_100746144();

    if (v43)
    {
      v44 = v37;

      sub_10074E604();
      v124 = v43;

      v45 = 0;
      goto LABEL_12;
    }
  }

LABEL_11:
  v44 = v37;
  v124 = 0;
  v45 = 1;
LABEL_12:
  v46 = v133;
  v47 = *(v133 + 56);
  v47(v41, v45, 1, v15);
  (*(v46 + 104))(v23, enum case for Uber.Style.inline(_:), v15);
  v47(v23, 0, 1, v15);
  v48 = *(v116 + 48);
  sub_100016B4C(v41, v18, &qword_100934218, &qword_1007BB590);
  sub_100016B4C(v23, &v18[v48], &qword_100934218, &qword_1007BB590);
  v49 = v41;
  v50 = *(v46 + 48);
  if (v50(v18, 1, v15) == 1)
  {
    sub_10000C8CC(v23, &qword_100934218, &qword_1007BB590);
    sub_10000C8CC(v49, &qword_100934218, &qword_1007BB590);
    v51 = v50(&v18[v48], 1, v15);
    v52 = v121;
    v53 = v118;
    v54 = v44;
    if (v51 == 1)
    {
      sub_10000C8CC(v18, &qword_100934218, &qword_1007BB590);
      LODWORD(v116) = 1;
LABEL_18:
      v56 = v122;
      v58 = v134;
      v57 = v135;
      goto LABEL_20;
    }

LABEL_17:
    sub_10000C8CC(v18, &qword_100934210, &qword_1007BB588);
    LODWORD(v116) = 0;
    goto LABEL_18;
  }

  v55 = v112;
  sub_100016B4C(v18, v112, &qword_100934218, &qword_1007BB590);
  v54 = v44;
  if (v50(&v18[v48], 1, v15) == 1)
  {
    sub_10000C8CC(v23, &qword_100934218, &qword_1007BB590);
    sub_10000C8CC(v132, &qword_100934218, &qword_1007BB590);
    (*(v133 + 8))(v55, v15);
    v52 = v121;
    v53 = v118;
    goto LABEL_17;
  }

  v59 = v133;
  v60 = v109;
  (*(v133 + 32))(v109, &v18[v48], v15);
  sub_10036B3EC(&qword_100934220, &type metadata accessor for Uber.Style, &protocol conformance descriptor for Uber.Style);
  LODWORD(v116) = sub_100753014();
  v61 = *(v59 + 8);
  v61(v60, v15);
  sub_10000C8CC(v23, &qword_100934218, &qword_1007BB590);
  sub_10000C8CC(v132, &qword_100934218, &qword_1007BB590);
  v61(v55, v15);
  sub_10000C8CC(v18, &qword_100934218, &qword_1007BB590);
  v57 = v135;
  v56 = v122;
  v52 = v121;
  v58 = v134;
  v53 = v118;
LABEL_20:
  swift_getKeyPath();
  v62 = v119;
  sub_100746914();

  sub_100066578(v62 + *(v117 + 48), v53, &unk_10093D6E0, &unk_1007A6080);
  if (v114(v53, 1, v54) == 1)
  {
    sub_10000C8CC(v62, &unk_10093D6E0, &unk_1007A6080);
    sub_10000C8CC(v53, &unk_10093D6E0, &unk_1007A6080);
    v63 = *(v52 + 56);
    v64 = v123;
    v63(v57, 1, 1, v123);
  }

  else
  {
    swift_getKeyPath();
    sub_1007525B4();

    (*(v111 + 8))(v53, v54);
    v63 = *(v52 + 56);
    v64 = v123;
    v63(v57, 0, 1, v123);
    sub_10000C8CC(v62, &unk_10093D6E0, &unk_1007A6080);
  }

  (*(v52 + 104))(v58, enum case for Shelf.ContentType.productMediaItem(_:), v64);
  v63(v58, 0, 1, v64);
  v65 = *(v120 + 48);
  sub_100016B4C(v57, v56, &unk_100933370, &unk_1007A8CE0);
  sub_100016B4C(v58, v56 + v65, &unk_100933370, &unk_1007A8CE0);
  v66 = v58;
  v67 = *(v52 + 48);
  if (v67(v56, 1, v64) == 1)
  {
    sub_10000C8CC(v66, &unk_100933370, &unk_1007A8CE0);
    sub_10000C8CC(v57, &unk_100933370, &unk_1007A8CE0);
    v68 = v67(v56 + v65, 1, v64);
    v69 = v136;
    if (v68 == 1)
    {
      sub_10000C8CC(v56, &unk_100933370, &unk_1007A8CE0);
      v70 = 1;
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v71 = v113;
  sub_100016B4C(v56, v113, &unk_100933370, &unk_1007A8CE0);
  v72 = v67(v56 + v65, 1, v64);
  v69 = v136;
  if (v72 == 1)
  {
    sub_10000C8CC(v134, &unk_100933370, &unk_1007A8CE0);
    sub_10000C8CC(v135, &unk_100933370, &unk_1007A8CE0);
    (*(v52 + 8))(v71, v64);
LABEL_28:
    sub_10000C8CC(v56, &qword_10092C380, &unk_1007B0E90);
    v70 = 0;
    goto LABEL_30;
  }

  v73 = v110;
  (*(v52 + 32))(v110, v56 + v65, v64);
  sub_10036B3EC(&qword_1009350D0, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  v70 = sub_100753014();
  v74 = *(v52 + 8);
  v74(v73, v64);
  sub_10000C8CC(v134, &unk_100933370, &unk_1007A8CE0);
  sub_10000C8CC(v135, &unk_100933370, &unk_1007A8CE0);
  v74(v71, v64);
  sub_10000C8CC(v56, &unk_100933370, &unk_1007A8CE0);
LABEL_30:
  v75 = objc_opt_self();
  v76 = [v75 fractionalWidthDimension:1.0];
  swift_getKeyPath();
  sub_100746914();

  v77 = v138;
  sub_100747554();
  v79 = v78;

  v80 = [v75 absoluteDimension:v79];
  v81 = [objc_opt_self() sizeWithWidthDimension:v76 heightDimension:v80];

  if ((v116 & 1) == 0)
  {
    LODWORD(v135) = v70;
    swift_getKeyPath();
    v82 = v125;
    sub_100746914();

    sub_10074F5B4();
    v84 = v83;
    (*(v126 + 8))(v82, v127);
    v85 = [objc_opt_self() layoutAnchorWithEdges:1 absoluteOffset:{0.0, v84 * -0.5}];
    type metadata accessor for SeparatorSupplementaryView(0);
    v87 = v129;
    v86 = v130;
    v88 = v128;
    (*(v129 + 104))(v128, enum case for ComponentSeparator.Position.top(_:), v130);
    *&v138 = 0;
    *(&v138 + 1) = 0xE000000000000000;
    v89 = v81;
    sub_1007545F4();
    v142._countAndFlagsBits = 95;
    v142._object = 0xE100000000000000;
    sub_1007531B4(v142);
    v143._countAndFlagsBits = sub_1007539F4();
    sub_1007531B4(v143);

    (*(v87 + 8))(v88, v86);
    v90 = v85;
    v91 = sub_100753064();

    v92 = [objc_opt_self() supplementaryItemWithLayoutSize:v89 elementKind:v91 containerAnchor:v90];

    v93 = v92;
    sub_100753284();
    if (*((v141 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v141 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();

    v69 = v136;
    LOBYTE(v70) = v135;
  }

  if ((v70 & 1) == 0)
  {
    swift_getKeyPath();
    v94 = v125;
    sub_100746914();

    sub_10074F5B4();
    v96 = v95;
    (*(v126 + 8))(v94, v127);
    v97 = [objc_opt_self() layoutAnchorWithEdges:4 absoluteOffset:{0.0, v96 * 0.5}];
    type metadata accessor for SeparatorSupplementaryView(0);
    v99 = v128;
    v98 = v129;
    v100 = v130;
    (*(v129 + 104))(v128, enum case for ComponentSeparator.Position.bottom(_:), v130);
    *&v138 = 0;
    *(&v138 + 1) = 0xE000000000000000;
    v101 = v81;
    sub_1007545F4();
    v144._countAndFlagsBits = 95;
    v144._object = 0xE100000000000000;
    sub_1007531B4(v144);
    v145._countAndFlagsBits = sub_1007539F4();
    sub_1007531B4(v145);

    (*(v98 + 8))(v99, v100);
    v102 = v97;
    v103 = sub_100753064();

    v104 = [objc_opt_self() supplementaryItemWithLayoutSize:v101 elementKind:v103 containerAnchor:v102];

    v105 = v104;
    sub_100753284();
    if (*((v141 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v141 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();
  }

  v106 = sub_10055BE28(v69, v131);
  sub_1004A0098(v106, v107);

  return v141;
}

void sub_100369F20(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v33 = a4;
  v36 = a1;
  v37 = a2;
  v35 = a5;
  v6 = sub_1007469A4();
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  __chkstk_darwin(v6);
  v29 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074E984();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - v14;
  swift_getKeyPath();
  sub_100746914();

  swift_getKeyPath();
  sub_1007525B4();

  (*(v13 + 8))(v15, v12);
  v16 = *(v9 + 88);
  v32 = v8;
  if (v16(v11, v8) == enum case for Shelf.ContentType.productBadge(_:))
  {
    sub_10036A308(v36, v37, a3, v33, v35);
  }

  else
  {
    v17 = a3;
    type metadata accessor for SeparatorSupplementaryView(0);
    if (sub_1007539E4())
    {

      v34 = sub_1007539D4();
      v28 = v18;
      v19 = swift_allocObject();
      swift_weakInit();
      v20 = v29;
      v21 = v30;
      v22 = v31;
      (*(v30 + 16))(v29, v17, v31);
      v23 = (*(v21 + 80) + 24) & ~*(v21 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = v19;
      (*(v21 + 32))(v24 + v23, v20, v22);
      *(v24 + ((v7 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v33;
      v25 = sub_10000C518(&qword_100934200, &unk_1007C8920);
      v26 = v35;
      v35[3] = v25;
      v26[4] = sub_10036B194();
      sub_10000D134(v26);

      sub_10074D744();
    }

    else
    {
      v27 = v35;
      v35[4] = 0;
      *v27 = 0u;
      *(v27 + 1) = 0u;
    }

    (*(v9 + 8))(v11, v32);
  }
}

double sub_10036A308@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v80 = a3;
  v81 = a4;
  v78 = a5;
  v7 = sub_1007469A4();
  v68 = *(v7 - 8);
  v69 = v7;
  __chkstk_darwin(v7);
  v66 = v8;
  v67 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_100747524();
  v73 = *(v83 - 8);
  __chkstk_darwin(v83);
  v70 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_10000C518(&qword_1009341E8, &qword_1007BB510);
  __chkstk_darwin(v72);
  v11 = v64 - v10;
  v12 = sub_10000C518(&qword_1009341F0, &qword_1007BB518);
  __chkstk_darwin(v12 - 8);
  v14 = v64 - v13;
  v15 = sub_100747564();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000C518(&qword_1009341F8, &qword_1007BB520);
  v74 = *(v19 - 8);
  v20 = *(v74 + 64);
  __chkstk_darwin(v19 - 8);
  v75 = v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v71 = v64 - v22;
  __chkstk_darwin(v23);
  v25 = v64 - v24;
  __chkstk_darwin(v26);
  v28 = v64 - v27;
  v29 = type metadata accessor for SeparatorSupplementaryView(0);
  v82 = a1;
  v79 = a2;
  v77 = v29;
  sub_10050F35C(a1, a2, v28);
  v30 = *(v76 + 56);
  sub_10055CAD8(v14);
  v31 = *(v16 + 48);
  v76 = v15;
  if (v31(v14, 1, v15) == 1)
  {
    sub_10000C8CC(v14, &qword_1009341F0, &qword_1007BB518);
LABEL_10:

    sub_1007539D4();
    v38 = v75;
    sub_100016B4C(v28, v75, &qword_1009341F8, &qword_1007BB520);
    v39 = (*(v74 + 80) + 16) & ~*(v74 + 80);
    v40 = swift_allocObject();
    sub_100066578(v38, v40 + v39, &qword_1009341F8, &qword_1007BB520);
    v41 = sub_10000C518(&qword_100934200, &unk_1007C8920);
    v42 = v28;
    v43 = v78;
    v78[3] = v41;
    v43[4] = sub_10036B194();
    sub_10000D134(v43);
    sub_10074D744();
    v44 = v42;
    goto LABEL_11;
  }

  v64[1] = v30;
  (*(v16 + 32))(v18, v14, v76);
  v65 = v18;
  sub_100747544();
  v32 = v73;
  v33 = v83;
  (*(v73 + 56))(v25, 0, 1, v83);
  v34 = *(v72 + 48);
  sub_100016B4C(v25, v11, &qword_1009341F8, &qword_1007BB520);
  sub_100016B4C(v28, &v11[v34], &qword_1009341F8, &qword_1007BB520);
  v35 = *(v32 + 48);
  if (v35(v11, 1, v33) != 1)
  {
    v37 = v71;
    sub_100016B4C(v11, v71, &qword_1009341F8, &qword_1007BB520);
    if (v35(&v11[v34], 1, v83) != 1)
    {
      v46 = &v11[v34];
      v47 = v70;
      v48 = v37;
      v49 = v83;
      (*(v32 + 32))(v70, v46, v83);
      sub_10036B3EC(&qword_100934208, &type metadata accessor for ComponentSeparator.Position, &protocol conformance descriptor for ComponentSeparator.Position);
      LODWORD(v72) = sub_100753014();
      v50 = *(v32 + 8);
      v50(v47, v49);
      sub_10000C8CC(v25, &qword_1009341F8, &qword_1007BB520);
      v50(v48, v49);
      sub_10000C8CC(v11, &qword_1009341F8, &qword_1007BB520);
      v36 = v65;
      if (v72)
      {
        goto LABEL_14;
      }

LABEL_9:
      (*(v16 + 8))(v36, v76);
      goto LABEL_10;
    }

    sub_10000C8CC(v25, &qword_1009341F8, &qword_1007BB520);
    (*(v32 + 8))(v37, v83);
LABEL_8:
    sub_10000C8CC(v11, &qword_1009341E8, &qword_1007BB510);
    v36 = v65;
    goto LABEL_9;
  }

  sub_10000C8CC(v25, &qword_1009341F8, &qword_1007BB520);
  if (v35(&v11[v34], 1, v83) != 1)
  {
    goto LABEL_8;
  }

  sub_10000C8CC(v11, &qword_1009341F8, &qword_1007BB520);
  v36 = v65;
LABEL_14:
  if ((sub_1007539E4() & 1) == 0)
  {
    (*(v16 + 8))(v36, v76);
    sub_10000C8CC(v28, &qword_1009341F8, &qword_1007BB520);
    result = 0.0;
    v63 = v78;
    *v78 = 0u;
    *(v63 + 1) = 0u;
    v63[4] = 0;
    return result;
  }

  v51 = sub_1007539D4();
  v83 = v28;
  v79 = v51;
  v75 = v52;
  v53 = swift_allocObject();
  swift_weakInit();
  v55 = v67;
  v54 = v68;
  v56 = v69;
  (*(v68 + 16))(v67, v80, v69);
  v57 = v16;
  v58 = (*(v54 + 80) + 24) & ~*(v54 + 80);
  v59 = (v66 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  *(v60 + 16) = v53;
  (*(v54 + 32))(v60 + v58, v55, v56);
  *(v60 + v59) = v81;
  v61 = sub_10000C518(&qword_100934200, &unk_1007C8920);
  v62 = v78;
  v78[3] = v61;
  v62[4] = sub_10036B194();
  sub_10000D134(v62);

  sub_10074D744();
  (*(v57 + 8))(v65, v76);
  v44 = v83;
LABEL_11:
  sub_10000C8CC(v44, &qword_1009341F8, &qword_1007BB520);
  return result;
}

uint64_t sub_10036AC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a1;
  v28 = a5;
  v5 = sub_100747564();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_10000C518(&qword_1009341F8, &qword_1007BB520);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  v15 = sub_100747524();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v26 - v20;
  sub_100016B4C(v28, v14, &qword_1009341F8, &qword_1007BB520);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_10000C8CC(v14, &qword_1009341F8, &qword_1007BB520);
  }

  (*(v16 + 32))(v21, v14, v15);
  (*(v16 + 16))(v18, v21, v15);
  sub_100747534();
  (*(v6 + 16))(v8, v11, v5);
  v23 = OBJC_IVAR____TtC22SubscribePageExtension26SeparatorSupplementaryView_separator;
  v24 = v27;
  swift_beginAccess();
  (*(v6 + 24))(v24 + v23, v8, v5);
  swift_endAccess();
  sub_10050F87C();
  v25 = *(v6 + 8);
  v25(v8, v5);
  v25(v11, v5);
  return (*(v16 + 8))(v21, v15);
}

uint64_t sub_10036AF6C()
{
  sub_10000C620((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_10036AFD8()
{
  v1 = *(sub_10000C518(&qword_1009341F8, &qword_1007BB520) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_100747524();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10036B0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_10000C518(&qword_1009341F8, &qword_1007BB520) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_10036AC40(a1, a2, a3, a4, v10);
}

unint64_t sub_10036B194()
{
  result = qword_10093D6D0;
  if (!qword_10093D6D0)
  {
    sub_10000C724(&qword_100934200, &unk_1007C8920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093D6D0);
  }

  return result;
}

uint64_t sub_10036B1F8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10036B240()
{
  v1 = sub_1007469A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10036B318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_1007469A4() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = *(v4 + 16);
  v12 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10055CCB0(a1, a2, a3, a4, v11, v4 + v10, v12);
}

uint64_t sub_10036B3EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10036B440()
{
  sub_10000D198();
  result = sub_100753DD4();
  qword_10097FC60 = result;
  return result;
}

uint64_t sub_10036B474()
{
  sub_10000D198();
  result = sub_100753DF4();
  qword_10097FC68 = result;
  return result;
}

id sub_10036B4A8()
{
  result = [objc_opt_self() systemGray5Color];
  qword_10097FC70 = result;
  return result;
}

uint64_t sub_10036B4E4()
{
  sub_10000D198();
  result = sub_100753DF4();
  qword_10097FC78 = result;
  return result;
}

void sub_10036B548()
{
  if (qword_100920A00 != -1)
  {
    swift_once();
  }

  v0 = qword_10097FC80;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithTextStyle:v2 scale:2];

  qword_10097FC90 = v3;
}

void sub_10036B5E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25[0] = a2;
  v4 = sub_10074F704();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100748514();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100748534();
  sub_10036BB14(v12);
  sub_1007468B4();
  if (v25[1])
  {
    sub_100748524();
    v13 = (*(v9 + 88))(v11, v8);
    if (v13 == enum case for ProductReviewAction.ReviewAction.tapToRate(_:))
    {
      (*(v9 + 96))(v11, v8);
      v14 = *v11;
      type metadata accessor for ProductTapToRateView(0);
      v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      sub_1002A46B0(v15);
      v16 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension44GenericProductReviewActionCollectionViewCell_productTapToRateView];
      if (v16)
      {
        swift_getKeyPath();
        v17 = v16;
        sub_100746914();

        sub_10074F594();
        v19 = v18;
        (*(v5 + 8))(v7, v4);
        sub_10031FF0C(v14, v19 == 1.0, v25[0]);
      }
    }

    else
    {
      if (v13 != enum case for ProductReviewAction.ReviewAction.writeAReview(_:))
      {
        (*(v9 + 8))(v11, v8);
        goto LABEL_10;
      }

      (*(v9 + 96))(v11, v8);
      type metadata accessor for ProductReviewActionsView(0);
      v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      sub_1002A46BC(v20);
      v21 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension44GenericProductReviewActionCollectionViewCell_productReviewActionsView];
      if (v21)
      {
        v22 = v21;
        v23 = sub_100748554();
        v24 = sub_100748544();
        sub_10007DC04();
        sub_1004425F4(v23, v24, v25[0]);

        swift_unknownObjectRelease();
      }
    }

LABEL_10:
    [v3 setNeedsLayout];
  }
}

uint64_t sub_10036B968@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension44GenericProductReviewActionCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100020514(v1 + v3, a1);
}

uint64_t sub_10036B9C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension44GenericProductReviewActionCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_10036BA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

unint64_t sub_10036BB14(__n128 a1)
{
  result = qword_100934228;
  if (!qword_100934228)
  {
    sub_100748534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100934228);
  }

  return result;
}

void sub_10036BB70()
{
  sub_10074C2F4();
  v0 = sub_10036BD28();
  v1 = sub_1007534E4();
  v2 = _swiftEmptyArrayStorage;
  if (!v1)
  {
LABEL_6:
    sub_10064E930(v2);

    return;
  }

  v3 = v1;
  v18 = _swiftEmptyArrayStorage;
  sub_10001E574(0, v1 & ~(v1 >> 63), 0);
  v2 = _swiftEmptyArrayStorage;
  sub_1007534C4();
  if ((v3 & 0x8000000000000000) == 0)
  {
    do
    {
      v4 = sub_100753514();

      v4(v17, 0);
      v5 = sub_1007467D4();
      v15 = v6;
      v16 = v5;
      v7 = sub_1007467B4();
      v14 = v8;
      v9 = sub_100746794();

      v18 = v2;
      v10 = v0;
      v12 = *(v2 + 2);
      v11 = *(v2 + 3);
      if (v12 >= v11 >> 1)
      {
        sub_10001E574((v11 > 1), v12 + 1, 1);
        v2 = v18;
      }

      *(v2 + 2) = v12 + 1;
      v13 = &v2[40 * v12];
      *(v13 + 4) = v16;
      *(v13 + 5) = v15;
      *(v13 + 6) = v7;
      *(v13 + 7) = v14;
      v13[64] = v9 & 1;
      sub_100753504();
      --v3;
      v0 = v10;
    }

    while (v3);
    goto LABEL_6;
  }

  __break(1u);
}

unint64_t sub_10036BD28()
{
  result = qword_10093EC30;
  if (!qword_10093EC30)
  {
    sub_10074C2F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EC30);
  }

  return result;
}

uint64_t sub_10036BD80()
{
  v1 = sub_100741494();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v5 = swift_allocObject();
  v28 = xmmword_1007A5CF0;
  *(v5 + 16) = xmmword_1007A5CF0;
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  type metadata accessor for ActionDebugSetting();
  v7 = swift_allocObject();
  *(v7 + 56) = 0xD000000000000016;
  *(v7 + 64) = 0x8000000100778990;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = sub_10036C744;
  *(v7 + 112) = v6;
  v8 = v0;

  sub_100741484();
  v9 = sub_100741464();
  v11 = v10;
  v12 = *(v2 + 8);
  v29 = v2 + 8;
  v30 = v12;
  v12(v4, v1);
  v31 = v9;
  v32 = v11;
  sub_1007544E4();

  *(v5 + 32) = v7;
  v13 = swift_allocObject();
  *(v13 + 16) = v28;
  v14 = v13;
  v27 = v13;
  type metadata accessor for PromptActionDebugSetting();
  swift_allocObject();
  *(v14 + 32) = sub_10058C9D0(0xD000000000000018, 0x80000001007789B0, 0, 0, sub_10036C0D4, 0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1007A7210;
  type metadata accessor for DebugSection();
  v16 = swift_allocObject();
  sub_100741484();
  v17 = sub_100741464();
  v19 = v18;
  v20 = v30;
  v30(v4, v1);
  v16[2] = v17;
  v16[3] = v19;
  v16[4] = 0x42206F54206B7341;
  v16[5] = 0xEA00000000007975;
  v16[6] = v5;
  *(v15 + 32) = v16;
  v21 = swift_allocObject();
  sub_100741484();
  v22 = sub_100741464();
  v24 = v23;
  v20(v4, v1);
  v21[2] = v22;
  v21[3] = v24;
  v21[4] = 0xD000000000000015;
  v21[5] = 0x80000001007789D0;
  v21[6] = v27;
  *(v15 + 40) = v21;
  return v15;
}

void sub_10036C0D4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v4 = HIBYTE(a3) & 0xF;
    v5 = a2 & 0xFFFFFFFFFFFFLL;
    if ((a3 & 0x2000000000000000) != 0 ? HIBYTE(a3) & 0xF : v5)
    {
      if ((a3 & 0x1000000000000000) != 0)
      {

        sub_1003B76E0(a2, a3, 10);
        v9 = v37;
        v39 = v38;

        if (v39)
        {
          return;
        }

        goto LABEL_64;
      }

      if ((a3 & 0x2000000000000000) != 0)
      {
        v40 = a2;
        v41 = a3 & 0xFFFFFFFFFFFFFFLL;
        if (a2 == 43)
        {
          if (v4)
          {
            if (--v4)
            {
              v9 = 0;
              v19 = &v40 + 1;
              while (1)
              {
                v20 = *v19 - 48;
                if (v20 > 9)
                {
                  break;
                }

                v21 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  break;
                }

                v9 = v21 + v20;
                if (__OFADD__(v21, v20))
                {
                  break;
                }

                ++v19;
                if (!--v4)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_62;
          }

LABEL_75:
          __break(1u);
          return;
        }

        if (a2 != 45)
        {
          if (v4)
          {
            v9 = 0;
            v24 = &v40;
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                break;
              }

              v26 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                break;
              }

              v9 = v26 + v25;
              if (__OFADD__(v26, v25))
              {
                break;
              }

              v24 = (v24 + 1);
              if (!--v4)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }

        if (v4)
        {
          if (--v4)
          {
            v9 = 0;
            v13 = &v40 + 1;
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                break;
              }

              v15 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                break;
              }

              v9 = v15 - v14;
              if (__OFSUB__(v15, v14))
              {
                break;
              }

              ++v13;
              if (!--v4)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v7 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v7 = sub_100754594();
        }

        v8 = *v7;
        if (v8 == 43)
        {
          if (v5 >= 1)
          {
            v4 = v5 - 1;
            if (v5 != 1)
            {
              v9 = 0;
              if (v7)
              {
                v16 = v7 + 1;
                while (1)
                {
                  v17 = *v16 - 48;
                  if (v17 > 9)
                  {
                    goto LABEL_62;
                  }

                  v18 = 10 * v9;
                  if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                  {
                    goto LABEL_62;
                  }

                  v9 = v18 + v17;
                  if (__OFADD__(v18, v17))
                  {
                    goto LABEL_62;
                  }

                  ++v16;
                  if (!--v4)
                  {
                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_54;
            }

            goto LABEL_62;
          }

          goto LABEL_74;
        }

        if (v8 != 45)
        {
          if (v5)
          {
            v9 = 0;
            if (v7)
            {
              while (1)
              {
                v22 = *v7 - 48;
                if (v22 > 9)
                {
                  goto LABEL_62;
                }

                v23 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  goto LABEL_62;
                }

                v9 = v23 + v22;
                if (__OFADD__(v23, v22))
                {
                  goto LABEL_62;
                }

                ++v7;
                if (!--v5)
                {
                  goto LABEL_54;
                }
              }
            }

            goto LABEL_54;
          }

LABEL_62:
          v9 = 0;
          LOBYTE(v4) = 1;
LABEL_63:
          v42 = v4;
          if (v4)
          {
            return;
          }

LABEL_64:
          v27 = objc_opt_self();
          v28 = [v27 treatmentOverrides];
          if (v28)
          {
            v29 = v28;
            v30 = sub_100752F44();
          }

          else
          {
            v30 = sub_10038664C(_swiftEmptyArrayStorage);
          }

          v40 = 0x62734435625378;
          v41 = 0xE700000000000000;
          sub_10000C518(&unk_100927770, &unk_1007BA6E0);
          v31 = swift_allocObject();
          *(v31 + 16) = xmmword_1007A5A00;
          *(v31 + 56) = &type metadata for Int;
          *(v31 + 64) = &protocol witness table for Int;
          *(v31 + 32) = v9;
          v43._countAndFlagsBits = sub_1007530B4();
          sub_1007531B4(v43);

          v32 = v40;
          v33 = v41;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v40 = v30;
          sub_1006737E0(v32, v33, 0x6D4B3562504E66, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
          isa = sub_100752F34().super.isa;

          [v27 setTreatmentOverrides:isa];

          return;
        }

        if (v5 >= 1)
        {
          v4 = v5 - 1;
          if (v5 != 1)
          {
            v9 = 0;
            if (v7)
            {
              v10 = v7 + 1;
              while (1)
              {
                v11 = *v10 - 48;
                if (v11 > 9)
                {
                  goto LABEL_62;
                }

                v12 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  goto LABEL_62;
                }

                v9 = v12 - v11;
                if (__OFSUB__(v12, v11))
                {
                  goto LABEL_62;
                }

                ++v10;
                if (!--v4)
                {
                  goto LABEL_63;
                }
              }
            }

LABEL_54:
            LOBYTE(v4) = 0;
            goto LABEL_63;
          }

          goto LABEL_62;
        }

        __break(1u);
      }

      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }
  }
}

void sub_10036C534(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  v3 = sub_10074D764();
  sub_10000C518(&qword_100927760, &qword_1007AE390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A5A00;
  sub_10074D774();
  sub_1007544E4();
  v5 = sub_10074ED34();
  *(inited + 96) = v5;
  v6 = sub_10000D134((inited + 72));
  (*(*(v5 - 8) + 16))(v6, a1, v5);
  sub_100414D14(inited);
  swift_setDeallocating();
  sub_10000C8CC(inited + 32, &qword_100927768, qword_1007AAE20);
  isa = sub_100752F34().super.isa;

  [v2 postNotificationName:v3 object:0 userInfo:isa];
}

id sub_10036C6B4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ProductPageSettings();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10036C70C()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10036C768()
{
  v0 = sub_10000C518(&qword_100929630, &unk_1007D5E70);
  __chkstk_darwin(v0 - 8);
  v2 = &v27 - v1;
  v3 = sub_10074ED34();
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  __chkstk_darwin(v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [Strong presentingViewController];

    if (v11)
    {
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (!v12)
      {
LABEL_6:

        goto LABEL_7;
      }

      v13 = [v12 selectedViewController];

      if (v13)
      {
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        v11 = v13;
        if (v14)
        {
          goto LABEL_10;
        }

        goto LABEL_6;
      }
    }
  }

LABEL_7:
  v15 = swift_unknownObjectWeakLoadStrong();
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v30 = [v15 presentingViewController];

  if (!v30)
  {
    return;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_10:
  v30 = v14;
  v17 = [v14 topViewController];
  if (!v17)
  {
LABEL_14:
    v19 = v30;
LABEL_16:

    return;
  }

  v28 = v17;
  type metadata accessor for ProductDiffablePageViewController(0);
  if (!swift_dynamicCastClass())
  {

    v19 = v28;
    goto LABEL_16;
  }

  sub_10074C954();

  v18 = v29;
  if ((*(v29 + 48))(v2, 1, v3) == 1)
  {

    sub_10000C8CC(v2, &qword_100929630, &unk_1007D5E70);
    return;
  }

  v27 = *(v18 + 32);
  v27(v8, v2, v3);
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    v22 = [v20 presentingViewController];

    if (v22)
    {
      v23 = v29;
      (*(v29 + 16))(v5, v8, v3);
      v24 = (*(v23 + 80) + 16) & ~*(v23 + 80);
      v25 = swift_allocObject();
      v27((v25 + v24), v5, v3);
      aBlock[4] = sub_10036CCB8;
      aBlock[5] = v25;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000CF7B0;
      aBlock[3] = &unk_100872AB0;
      v26 = _Block_copy(aBlock);

      [v22 dismissViewControllerAnimated:1 completion:v26];
      _Block_release(v26);

      (*(v23 + 8))(v8, v3);
      return;
    }

    (*(v29 + 8))(v8, v3);
  }

  else
  {
    (*(v18 + 8))(v8, v3);
  }
}

uint64_t sub_10036CC30()
{
  v1 = sub_10074ED34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10036CCB8()
{
  v1 = *(sub_10074ED34() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_10036C534(v2);
}

double sub_10036CD18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_10036CD30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000C518(&unk_10092B0D0, qword_1007A99B0);
  __chkstk_darwin(v4 - 8);
  v6 = v29 - v5;
  v7 = sub_100753CD4();
  v32 = *(v7 - 8);
  v33 = v7;
  __chkstk_darwin(v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074F6E4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = v29 - v16;
  v18 = [a1 presentingViewController];
  if (!v18)
  {
    v18 = a1;
  }

  result = [v18 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v20 = result;
  v30 = v13;
  v31 = a2;
  [result bounds];
  v22 = v21;
  v24 = v23;

  (*(v11 + 104))(v17, enum case for PageGrid.Direction.vertical(_:), v10);
  result = [v18 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v25 = result;
  v29[0] = v22;
  v29[1] = v24;
  v26 = enum case for UIView.LayoutRegion.AdaptivityAxis.vertical(_:);
  v27 = sub_100753CB4();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v6, v26, v27);
  (*(v28 + 56))(v6, 0, 1, v27);
  sub_100753CC4();
  sub_1002FF464(v6);
  sub_100753C94();

  (*(v32 + 8))(v9, v33);
  (*(v11 + 16))(v30, v17, v10);
  if (qword_100920060 != -1)
  {
    swift_once();
  }

  sub_10074F6B4();

  return (*(v11 + 8))(v17, v10);
}

void sub_10036D2F8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell);
  v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell + 8);
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_isCardModeEnabled;
  (*(v3 + 96))((*(v0 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_isCardModeEnabled) & 1) == 0, ObjectType, v3);
  if ((*(v3 + 136))(ObjectType, v3) != 6 && *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell))
  {
    v6 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell + 8);
    v7 = swift_getObjectType();
    (*(v6 + 96))((*(v0 + v5) & 1) == 0, v7, v6);
  }

  swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (v8)
  {
    v9 = v2 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = v8;
    v11 = swift_getObjectType();
    v12 = *(v10 + 32);
    v13 = v2;
    if (v12(v11, v10))
    {
      v15 = v14;
      v16 = swift_getObjectType();
      (*(v15 + 32))((*(v0 + v5) & 1) == 0, v16, v15);
      swift_unknownObjectRelease();
    }
  }

  v17 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell);
  if (v17)
  {
    v18 = swift_getObjectType();
    v19 = swift_conformsToProtocol2();
    if (v19)
    {
      v20 = *(v19 + 32);
      v21 = v19;
      v25 = v17;
      if (v20(v18, v21))
      {
        v23 = v22;
        v24 = swift_getObjectType();
        (*(v23 + 32))((*(v1 + v5) & 1) == 0, v24, v23);
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_10036D570(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_verticalSafeAreaInsets);
  v6 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_verticalSafeAreaInsets);
  v7 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_verticalSafeAreaInsets + 8);
  v8 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_verticalSafeAreaInsets + 16);
  v9 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_verticalSafeAreaInsets + 24);
  if (v6 != a1 || v7 != a2 || v8 != a3 || v9 != a4)
  {
    v13 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell + 8);
    ObjectType = swift_getObjectType();
    *v20 = v6;
    *&v20[1] = v7;
    *&v20[2] = v8;
    *&v20[3] = v9;
    v21 = 0;
    (*(v13 + 224))(v20, ObjectType, v13);
    if (*(v4 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell))
    {
      v15 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell + 8);
      v16 = swift_getObjectType();
      v17 = v5[1];
      v18[0] = *v5;
      v18[1] = v17;
      v19 = 0;
      (*(v15 + 224))(v18, v16, v15);
    }
  }
}

void sub_10036D75C()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 addSubview:v1];

  v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = [v0 view];
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 addSubview:v5];
}

void sub_10036D8E4(void *a1, uint64_t a2, uint64_t a3, const char **a4, void *a5, char a6)
{
  v12.receiver = a1;
  v12.super_class = swift_getObjectType();
  v10 = *a4;
  v11 = v12.receiver;
  objc_msgSendSuper2(&v12, v10, a3);
  v11[*a5] = a6;
}

void sub_10036D95C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10000C518(&unk_10092B0D0, qword_1007A99B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v51 - v4;
  v6 = sub_100753CD4();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51.receiver = v1;
  v51.super_class = ObjectType;
  objc_msgSendSuper2(&v51, "viewDidLayoutSubviews", v8);
  v11 = [v1 view];
  if (!v11)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = v11;
  v13 = enum case for UIView.LayoutRegion.AdaptivityAxis.vertical(_:);
  v14 = sub_100753CB4();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v5, v13, v14);
  (*(v15 + 56))(v5, 0, 1, v14);
  sub_100753CC4();
  sub_1002FF464(v5);
  sub_100753C94();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  (*(v7 + 8))(v10, v6);
  v24 = &v1[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_verticalSafeAreaInsets];
  v25 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_verticalSafeAreaInsets];
  v26 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_verticalSafeAreaInsets + 8];
  v27 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_verticalSafeAreaInsets + 16];
  v28 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_verticalSafeAreaInsets + 24];
  *v24 = v17;
  *(v24 + 1) = v19;
  *(v24 + 2) = v21;
  *(v24 + 3) = v23;
  sub_10036D570(v25, v26, v27, v28);
  v29 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell];
  if (v29)
  {
    v30 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell + 8];
    v31 = v29;
    sub_10036DCE4(v31, v30);
    v33 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell];
    v32 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell + 8];
    v34 = [v1 view];
    if (v34)
    {
      v35 = v34;
      [v34 bounds];
      v37 = v36;

      v38 = sub_10036E084(v33, v32, v37);
      [v33 setFrame:{0.0, 0.0, v38, v39}];

      return;
    }

    goto LABEL_8;
  }

  v40 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell];
  v41 = [v1 view];
  if (v41)
  {
    v42 = v41;
    [v41 bounds];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;

    [v40 setFrame:{v44, v46, v48, v50}];
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_10036DCE4(void *a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for ListTodayCardCollectionViewCell(0);
  if (swift_dynamicCastClass())
  {
    v6 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell + 8];
    ObjectType = swift_getObjectType();
    if ((*(v6 + 160))(ObjectType, v6) == 4)
    {
      if (v2[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_isDisappearing])
      {
        return;
      }

      if (v2[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_isAppearing] == 1)
      {
        v8 = objc_opt_self();
        v9 = swift_allocObject();
        v9[2] = a1;
        v9[3] = a2;
        v9[4] = v3;
        v10 = swift_allocObject();
        *(v10 + 16) = sub_10036E4B0;
        *(v10 + 24) = v9;
        aBlock[4] = sub_100045E0C;
        aBlock[5] = v10;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10011B528;
        aBlock[3] = &unk_100872B28;
        v11 = _Block_copy(aBlock);
        v12 = a1;
        v13 = v3;

        [v8 performWithoutAnimation:v11];
        _Block_release(v11);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return;
        }

        __break(1u);
        goto LABEL_19;
      }

      goto LABEL_14;
    }
  }

  type metadata accessor for RiverTodayCardCollectionViewCell(0);
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    v27 = [v2 view];
    if (v27)
    {
LABEL_15:
      v28 = v27;
      [v27 bounds];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;

      [a1 setFrame:{v30, v32, v34, v36}];
      return;
    }

    __break(1u);
LABEL_14:
    v27 = [v2 view];
    if (!v27)
    {
LABEL_20:
      __break(1u);
      return;
    }

    goto LABEL_15;
  }

  v16 = v15;
  *(v15 + OBJC_IVAR____TtC22SubscribePageExtension32RiverTodayCardCollectionViewCell_isDisappearing) = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_isDisappearing);
  v37 = a1;
  v17 = [v3 view];
  if (!v17)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = v17;
  [v17 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [v16 setFrame:{v20, v22, v24, v26}];
}

double sub_10036E084(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v7 = sub_10074F704();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_isCardModeEnabled])
  {
    return a3;
  }

  v12 = [v3 traitCollection];
  v13 = sub_1007537B4();
  type metadata accessor for ListTodayCardCollectionViewCell(0);
  if (!swift_dynamicCastClass())
  {

    goto LABEL_6;
  }

  ObjectType = swift_getObjectType();
  v15 = (*(a2 + 160))(ObjectType, a2);

  if (v15 != 6)
  {
LABEL_6:
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 6;
LABEL_7:
  if (v13)
  {
    v17 = v16;
  }

  else
  {
    v17 = 5;
  }

  sub_10036CD30(v4, v11);
  v18 = swift_getObjectType();
  v19 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_todayCard];
  v20 = [v4 traitCollection];
  v21 = [v4 view];
  (*(a2 + 80))(v19, v17, 1, v11, v20, v21, v18, a2);

  (*(v8 + 8))(v11, v7);
  return a3;
}

id sub_10036E2FC(void *a1, int a2, id a3)
{
  result = [a3 view];
  if (result)
  {
    v5 = result;
    [result bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    return [a1 setFrame:{v7, v9, v11, v13}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10036E470()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_10036E4CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10036E4E4()
{
  v0 = sub_10000C518(&qword_100923E88, &unk_1007AF240);
  __chkstk_darwin(v0 - 8);
  v40 = &v34 - v1;
  v42 = sub_10074F654();
  v49 = *(v42 - 8);
  __chkstk_darwin(v42);
  v3 = (&v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10000C518(&qword_100923230, &qword_1007BF500);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  sub_10000C518(&qword_100923E90, &unk_1007AF250);
  v16 = *(sub_10074F584() - 8);
  v48 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v39 = v18;
  *(v18 + 16) = xmmword_1007A7250;
  v46 = v18 + v17;
  v50 = 0x3FF0000000000000;
  v51 = 0x3FF8000000000000;
  sub_10001CC10();
  sub_10074F5F4();
  v50 = 0x4030000000000000;
  v51 = 0x4020000000000000;
  sub_10074F5F4();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10074F5F4();
  __asm { FMOV            V0.2D, #16.0 }

  *v3 = _Q0;
  v45 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v24 = *(v49 + 104);
  v49 += 104;
  v47 = v24;
  v25 = v42;
  v24(v3);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v51) = 0;
  sub_10074F614();
  v51 = 0;
  v44 = v6;
  sub_10074F614();
  v41 = v15;
  v43 = v12;
  sub_10074F544();
  v50 = 0x3FF0000000000000;
  v51 = 0x3FF8000000000000;
  sub_10074F5F4();
  v50 = 0x4034000000000000;
  v51 = 0x4024000000000000;
  sub_10074F5F4();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10074F5F4();
  __asm { FMOV            V0.2D, #20.0 }

  *v3 = _Q0;
  v47(v3, v45, v25);
  LOBYTE(v51) = 0;
  sub_10074F614();
  v51 = 0;
  sub_10074F614();
  v28 = v48;
  top = UIEdgeInsetsZero.top;
  v38 = left;
  sub_10074F544();
  v51 = 0x4008000000000000;
  sub_10074F614();
  v51 = 0x4034000000000000;
  sub_10074F614();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10074F5F4();
  v36 = vdupq_n_s64(0x4041000000000000uLL);
  *v3 = v36;
  v29 = v42;
  v30 = v47;
  v47(v3, v45, v42);
  LOBYTE(v51) = 0;
  sub_10074F614();
  v51 = 0;
  sub_10074F614();
  sub_10074F544();
  v35 = 2 * v28 + v48;
  v51 = 0x4010000000000000;
  sub_10074F614();
  v51 = 0x4034000000000000;
  sub_10074F614();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10074F5F4();
  *v3 = v36;
  v30(v3, v45, v29);
  sub_1007535A4();
  LOBYTE(v51) = 0;
  sub_10074F614();
  v51 = 0;
  sub_10074F614();
  v34 = v9;
  sub_10074F544();
  v35 = 4 * v48;
  v51 = 0x4014000000000000;
  sub_10074F614();
  v51 = 0x4038000000000000;
  sub_10074F614();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10074F5F4();
  v36 = vdupq_n_s64(0x404A000000000000uLL);
  *v3 = v36;
  v31 = v45;
  v32 = v42;
  v47(v3, v45, v42);
  LOBYTE(v51) = 0;
  sub_10074F614();
  v51 = 0;
  sub_10074F614();
  sub_10074F544();
  v51 = 0x4018000000000000;
  sub_10074F614();
  v51 = 0x4038000000000000;
  sub_10074F614();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10074F5F4();
  *v3 = v36;
  v47(v3, v31, v32);
  LOBYTE(v51) = 0;
  sub_10074F614();
  v51 = 0;
  sub_10074F614();
  result = sub_10074F544();
  qword_1009342E0 = v39;
  return result;
}

uint64_t sub_10036EF00()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_1009342F0);
  sub_10000D0FC(v4, qword_1009342F0);
  if (qword_100920E90 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_100980900);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

id sub_10036F0D4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension29FamilyPurchasesViewController_presenter) = a1;
  v4 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v15[4] = sub_10036F2D8;
  v15[5] = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_1002B6430;
  v15[3] = &unk_100872B50;
  v5 = _Block_copy(v15);

  v6 = [v4 initWithSectionProvider:v5];
  _Block_release(v5);

  v7 = v6;

  v8 = sub_10062DFAC(v7, a2);

  sub_100372E64(&unk_100934350, v9, type metadata accessor for FamilyPurchasesViewController, &unk_1007BB868);
  v10 = v8;
  sub_10074AC44();
  v11 = v10;
  sub_10074AC74();
  v12 = sub_100753064();

  [v11 setTitle:v12];

  *(v11 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_prefersLargeTitle) = 0;
  v13 = [v11 navigationItem];
  [v13 setLargeTitleDisplayMode:2];

  return v11;
}

uint64_t sub_10036F2D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_100751974();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007519D4();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v2, v8);
  sub_1007519A4();
  sub_100016C60(0, &unk_10093FE00, NSCollectionLayoutSection_ptr);
  v11 = sub_100753A54();
  (*(v7 + 8))(v10, v6);
  return v11;
}

void sub_10036F584(uint64_t a1, uint64_t a2)
{
  v16.receiver = v2;
  v16.super_class = type metadata accessor for FamilyPurchasesViewController();
  objc_msgSendSuper2(&v16, "viewDidLoad");
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    sub_100016C60(0, &qword_100923500, UIColor_ptr);
    v5 = sub_100753E14();
    [v4 setBackgroundColor:v5];

    v6 = [v2 collectionView];
    if (v6)
    {
      v7 = v6;
      v8 = sub_100753E14();
      [v7 setBackgroundColor:v8];

      [v7 setAlwaysBounceVertical:1];
      type metadata accessor for LinkableHeaderCollectionViewCell();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_1007539D4();
      v10 = sub_100753064();

      [v7 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v10];

      type metadata accessor for AccountDetailCollectionViewCell(0);
      v11 = swift_getObjCClassFromMetadata();
      sub_1007539D4();
      v12 = sub_100753064();

      [v7 registerClass:v11 forCellWithReuseIdentifier:v12];

      type metadata accessor for DetailCollectionViewCell(0);
      v13 = swift_getObjCClassFromMetadata();
      v14 = UICollectionElementKindSectionHeader;
      sub_1007539D4();
      v15 = sub_100753064();

      [v7 registerClass:v13 forSupplementaryViewOfKind:v14 withReuseIdentifier:v15];

      sub_100744314();
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_10036F86C(void *a1)
{
  v2 = sub_100749B64();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741784();
  sub_10074ABD4();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for FamilyPurchasesSection.errorBanner(_:))
  {
    type metadata accessor for LinkableHeaderCollectionViewCell();
    sub_1007539D4();
    v7 = sub_100753064();

    v8.super.isa = sub_100741704().super.isa;
    v9 = [a1 dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:v8.super.isa];
LABEL_9:
    v13 = v9;

    return v13;
  }

  if (v6 == enum case for FamilyPurchasesSection.loggedInUser(_:) || v6 == enum case for FamilyPurchasesSection.familyMembers(_:))
  {
    type metadata accessor for AccountDetailCollectionViewCell(0);
    sub_1007539D4();
    v7 = sub_100753064();

    v8.super.isa = sub_100741704().super.isa;
    v9 = [a1 dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:v8.super.isa];
    goto LABEL_9;
  }

  type metadata accessor for LinkableHeaderCollectionViewCell();
  sub_1007539D4();
  v11 = sub_100753064();

  isa = sub_100741704().super.isa;
  v13 = [a1 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:isa];

  (*(v3 + 8))(v5, v2);
  return v13;
}

void sub_100370378(uint64_t a1)
{
  v3 = sub_1007416B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = [v1 collectionView];
  if (v6)
  {
    v14 = v6;
    if (sub_100741694() < 1)
    {
    }

    else
    {
      v7 = objc_opt_self();
      (*(v4 + 16))(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
      v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
      v9 = swift_allocObject();
      *(v9 + 16) = v14;
      (*(v4 + 32))(v9 + v8, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
      v10 = swift_allocObject();
      *(v10 + 16) = sub_100371148;
      *(v10 + 24) = v9;
      aBlock[4] = sub_100045E0C;
      aBlock[5] = v10;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10011B528;
      aBlock[3] = &unk_100872BC8;
      v11 = _Block_copy(aBlock);
      v12 = v14;

      [v7 performWithoutAnimation:v11];

      _Block_release(v11);
      LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

      if (v7)
      {
        __break(1u);
      }
    }
  }
}

void sub_100370614(void *a1)
{
  v2 = [a1 collectionViewLayout];
  [v2 invalidateLayout];

  sub_100741674(v3);
  v5 = v4;
  [a1 reloadSections:v4];
}

id sub_1003706B0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FamilyPurchasesViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10037071C()
{
  v1 = [v0 collectionView];
  [v1 reloadData];
}

uint64_t sub_100370774(uint64_t a1)
{
  v3 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph);
  v7 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
  sub_1007526C4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10000C8CC(v5, &unk_100923960, &qword_1007A6240);
  }

  sub_1003C0E00(a1, 1, v6, v5);

  return (*(v8 + 8))(v5, v7);
}

double sub_10037099C(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = sub_100754724();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2[3];
  sub_10000C888(a2, v10);
  sub_100536120(v10);
  sub_100750564();
  v11 = *(v7 + 8);
  v11(v9, v6);
  sub_10000C888(a2 + 25, a2[28]);
  sub_100750404();
  sub_100016B4C((a2 + 15), v15, &qword_100931390, &qword_1007ABDE0);
  v12 = v16;
  if (v16)
  {
    sub_10000C888(v15, v16);
    sub_100536120(v12);
    sub_100750564();
    v11(v9, v6);
    sub_10000C620(v15);
  }

  else
  {
    sub_10000C8CC(v15, &qword_100931390, &qword_1007ABDE0);
  }

  sub_10000C888(a2 + 30, a2[33]);
  sub_100750414();
  sub_10000C888(a2 + 20, a2[23]);
  sub_100750414();
  sub_10000C888(a2 + 5, a2[8]);
  sub_100750584();
  sub_10000C888(a2 + 10, a2[13]);
  sub_100750554();
  return a3;
}

double sub_100370CBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_100370CD4(uint64_t a1, uint64_t a2, char a3, void *a4, double a5, double a6)
{
  v28 = a1;
  v10 = sub_10074CD14();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921880 != -1)
  {
    swift_once();
  }

  sub_1001B63AC(&unk_10093E990, v31);
  if ((a3 & 1) == 0)
  {
    sub_10000C8CC(v32, &qword_100931390, &qword_1007ABDE0);
    memset(v32, 0, sizeof(v32));
    v33 = 0;
  }

  sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  if (qword_100921010 != -1)
  {
    swift_once();
  }

  v14 = sub_100750534();
  sub_10000D0FC(v14, qword_100980D68);
  v15 = [a4 traitCollection];
  v27 = a4;
  v16 = v15;
  v17 = sub_100753C14();

  sub_1001B63AC(v31, v30);
  v18 = sub_100750F34();
  swift_allocObject();
  v19 = sub_100750EF4();
  v30[23] = v18;
  v30[24] = &protocol witness table for LayoutViewPlaceholder;
  v30[20] = v19;
  v20 = sub_10074F3F4();
  v29[3] = v20;
  v29[4] = sub_100372E64(&qword_10092AC70, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v21 = sub_10000D134(v29);
  (*(*(v20 - 8) + 104))(v21, enum case for Feature.measurement_with_labelplaceholder(_:), v20);
  v22 = v17;
  sub_10074FC74();
  sub_10000C620(v29);

  sub_10074CD04();
  sub_10074CCE4();
  (*(v11 + 8))(v13, v10);
  swift_allocObject();
  v23 = sub_100750EF4();
  v30[33] = v18;
  v30[34] = &protocol witness table for LayoutViewPlaceholder;
  v30[30] = v23;
  v24 = sub_10037099C(v27, v30, a5, a6);

  sub_1001B6408(v30);
  sub_1001B645C(v31);
  return v24;
}

uint64_t sub_100371084()
{
  v1 = sub_1007416B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100371148()
{
  sub_1007416B4();
  v1 = *(v0 + 16);

  sub_100370614(v1);
}

id sub_1003711BC(void *a1, uint64_t a2, uint64_t a3)
{
  if (sub_100753094() == a2 && v5 == a3)
  {

    goto LABEL_10;
  }

  v7 = sub_100754754();

  if (v7)
  {
LABEL_10:
    v10 = sub_100753064();
    type metadata accessor for DetailCollectionViewCell(0);
    sub_1007539D4();
    v11 = sub_100753064();

    isa = sub_100741704().super.isa;
    v13 = [a1 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v11 forIndexPath:isa];

    return v13;
  }

  v8 = objc_allocWithZone(UICollectionViewCell);

  return [v8 init];
}

void sub_1003712F8(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10074F314();
  v58 = *(v5 - 8);
  v59 = v5;
  __chkstk_darwin(v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&qword_10093FDB0, &unk_1007AC460);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - v9;
  v11 = sub_100749B64();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741784();
  sub_10074ABD4();
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == enum case for FamilyPurchasesSection.errorBanner(_:))
  {
    type metadata accessor for LinkableHeaderCollectionViewCell();
    v16 = swift_dynamicCastClass();
    if (!v16)
    {
      return;
    }

    v17 = v16;
    v18 = a1;
    if (sub_10074AC34())
    {
      v19 = *(*&v17[OBJC_IVAR____TtC22SubscribePageExtension32LinkableHeaderCollectionViewCell_headerView] + OBJC_IVAR____TtC22SubscribePageExtension18LinkableHeaderView_label);
      v20 = sub_100743EA4();
      sub_1001D3738(v20, sub_1000E12F0);
      v22 = v21;

      v23 = sub_100743E94();
      sub_10004DF04(v23, 0, v22);

      [v17 setNeedsLayout];

      return;
    }

    goto LABEL_21;
  }

  if (v15 != enum case for FamilyPurchasesSection.loggedInUser(_:) && v15 != enum case for FamilyPurchasesSection.familyMembers(_:))
  {
    (*(v12 + 8))(v14, v11);
    return;
  }

  type metadata accessor for AccountDetailCollectionViewCell(0);
  v25 = swift_dynamicCastClass();
  if (v25)
  {
    v26 = v25;
    v27 = a1;
    [v2 pageMarginInsets];
    v29 = v28;
    v57 = sub_100741774();
    v30 = sub_100741774();
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      return;
    }

    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    sub_100741784();
    v35 = sub_10074AC04();
    v55 = v31 == v35;
    v56 = v31 != v35;
    v36 = v27;
    [v2 pageMarginInsets];
    [v26 setLayoutMargins:?];

    sub_10074AC64();
    v37 = *&v26[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_titleLabel];
    v38 = sub_100753064();

    [v37 setText:v38];

    [v26 setNeedsLayout];
    v26[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_showTopSeparatorView] = 1;
    [*&v26[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_topSeparatorView] setHidden:0];
    top = UIEdgeInsetsZero.top;
    if (v57)
    {
      v40 = v29;
    }

    else
    {
      v40 = left;
    }

    v41 = bottom;
    v42 = right;
    if (v57)
    {
      top = 0.0;
      v41 = 0.0;
      v42 = 0.0;
    }

    v43 = &v26[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_topSeparatorViewInsets];
    *v43 = top;
    v43[1] = v40;
    v43[2] = v41;
    v43[3] = v42;
    *(v43 + 32) = 0;
    v44 = v56;
    v26[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_showBottomSeparatorView] = v55;
    [*&v26[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_bottomSeparatorView] setHidden:v44];
    v45 = &v26[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_bottomSeparatorViewInsets];
    *v45 = UIEdgeInsetsZero.top;
    v45[1] = left;
    v45[2] = bottom;
    v45[3] = right;
    *(v45 + 32) = 0;
    v46 = type metadata accessor for Accessory(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v46 - 8) + 56))(v10, 0, 1, v46);
    sub_1005A94FC(v10, *&v3[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph]);
    sub_10000C8CC(v10, &qword_10093FDB0, &unk_1007AC460);
    [*&v26[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_accessoryView] setHidden:0];
    v47 = &v26[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_imageMarginRight];
    *v47 = 0x4030000000000000;
    v47[8] = 0;
    (*(v58 + 104))(v7, enum case for Artwork.Style.round(_:), v59);
    sub_100743364();
    v48 = sub_10074ABE4();
    if (v48)
    {
      v49 = v48;
      v50 = [objc_opt_self() mainScreen];
      [v50 scale];
      v52 = v51;

      v60.width = 36.0;
      v60.height = 36.0;
      UIGraphicsBeginImageContextWithOptions(v60, 0, v52);
      [v49 drawInRect:{0.0, 0.0, 36.0, 36.0}];
      v53 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
    }

    else
    {
      v53 = 0;
    }

    v18 = v53;
    sub_100743344();
    [v26 setNeedsLayout];

LABEL_21:
  }
}

void sub_1003719A8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  type metadata accessor for DetailCollectionViewCell(0);
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    return;
  }

  v12 = v11;
  if (sub_100753094() == a2 && v13 == a3)
  {
    v17 = a1;
  }

  else
  {
    v15 = sub_100754754();
    v35 = a1;

    if ((v15 & 1) == 0)
    {
      v16 = v35;

      return;
    }
  }

  v18 = [v12 contentView];
  v19 = objc_opt_self();
  v20 = [v19 clearColor];
  [v18 setBackgroundColor:v20];

  v21 = a1;
  v22 = [v19 clearColor];
  [v12 setBackgroundColor:v22];

  v12[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_isSelectable] = 0;
  [v12 setSelectedBackgroundView:0];
  sub_100741784();
  sub_10074AC54();
  v23 = OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_titleLabel;
  v24 = *&v12[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_titleLabel];
  if (v25)
  {
    v26 = sub_100753064();
  }

  else
  {
    v26 = 0;
  }

  [v24 setText:v26];

  if (qword_100920E90 != -1)
  {
    swift_once();
  }

  v27 = sub_100750534();
  v28 = sub_10000D0FC(v27, qword_100980900);
  v29 = *(v27 - 8);
  (*(v29 + 16))(v10, v28, v27);
  (*(v29 + 56))(v10, 0, 1, v27);
  sub_100745BA4();
  v30 = *&v12[v23];
  v31 = [v19 systemGrayColor];
  [v30 setTextColor:v31];

  [v4 pageMarginInsets];
  v33 = v32;
  [v4 pageMarginInsets];
  [v12 setLayoutMargins:{0.0, v33, 0.0}];
}

void sub_100371D60(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Accessory(0);
  v64 = *(v4 - 8);
  __chkstk_darwin(v4);
  v60 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v61 = (&v57 - v7);
  __chkstk_darwin(v8);
  v63 = &v57 - v9;
  v10 = sub_10000C518(&qword_10093FDB0, &unk_1007AC460);
  __chkstk_darwin(v10 - 8);
  v62 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = (&v57 - v13);
  __chkstk_darwin(v15);
  v65 = &v57 - v16;
  __chkstk_darwin(v17);
  v66 = &v57 - v18;
  v19 = sub_100749B64();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v24 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29FamilyPurchasesViewController_presenter];
  sub_100741784();
  sub_10074ABD4();
  v25 = (*(v20 + 88))(v22, v19);
  if (v25 == enum case for FamilyPurchasesSection.errorBanner(_:))
  {
    if (sub_10074AC34())
    {
      v26 = sub_100743E84();
      v28 = v27;
      [a1 bounds];
      sub_100370CD4(v26, v28, 0, v2, v29, v30);
    }

    return;
  }

  if (v25 != enum case for FamilyPurchasesSection.loggedInUser(_:) && v25 != enum case for FamilyPurchasesSection.familyMembers(_:))
  {
    (*(v20 + 8))(v22, v19);
    return;
  }

  v32 = sub_10074AC64();
  v59 = v33;
  v34 = v66;
  swift_storeEnumTagMultiPayload();
  v35 = *(v64 + 56);
  v35(v34, 0, 1, v4);
  v35(v65, 1, 1, v4);
  v36 = sub_100741774();
  sub_100741784();
  v37 = sub_10074AC04();
  v38 = (v37 - 1);
  if (__OFSUB__(v37, 1))
  {
    __break(1u);
    goto LABEL_30;
  }

  v57 = v32;
  v58 = v36;
  v32 = v23;
  v39 = [v23 view];
  if (!v39)
  {
    __break(1u);
    return;
  }

  v40 = v39;
  [v39 bounds];

  v41 = [v23 traitCollection];
  sub_100753804();

  v42 = [v23 traitCollection];
  sub_100016B4C(v66, v14, &qword_10093FDB0, &unk_1007AC460);
  v43 = *(v64 + 48);
  if (v43(v14, 1, v4) == 1)
  {
    v24 = v42;
    v44 = v14;
LABEL_18:
    sub_10000C8CC(v44, &qword_10093FDB0, &unk_1007AC460);
    goto LABEL_20;
  }

  v45 = v14;
  v46 = v63;
  sub_100372EAC(v45, v63);
  sub_10050BF0C(v42);
  v47 = v61;
  swift_storeEnumTagMultiPayload();
  v48 = sub_10050D4C8(v46, v47);
  sub_10007A554(v47);
  if (v48)
  {
    _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();
  }

  v49 = v62;
  sub_100016B4C(v65, v62, &qword_10093FDB0, &unk_1007AC460);
  if (v43(v49, 1, v4) == 1)
  {
    v24 = v42;
    sub_10007A554(v46);
    v44 = v49;
    goto LABEL_18;
  }

  v50 = v60;
  sub_100372EAC(v49, v60);
  v24 = v42;
  sub_10050BF0C(v42);
  sub_10007A554(v50);
  sub_10007A554(v46);
LABEL_20:
  v14 = v38;
  v38 = &selRef_initWithTitle_style_target_action_;
  if (qword_100921928 != -1)
  {
LABEL_30:
    swift_once();
  }

  v51 = sub_100750534();
  sub_10000D0FC(v51, qword_10093FA58);
  v52 = sub_10074F3F4();
  v67[3] = v52;
  v67[4] = sub_100372E64(&qword_10092AC70, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v53 = sub_10000D134(v67);
  (*(*(v52 - 8) + 104))(v53, enum case for Feature.measurement_with_labelplaceholder(_:), v52);
  sub_10074FC74();
  sub_10000C620(v67);
  sub_10074CCB4();
  if (qword_100921930 != -1)
  {
    swift_once();
  }

  v54 = sub_100750B04();
  sub_10000D0FC(v54, qword_10093FA70);
  sub_100750584();
  if (qword_100921938 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v54, qword_10093FA88);
  sub_100750554();
  v55 = [v32 v38[129]];
  sub_100751364();

  if (v58 == v14)
  {
    v56 = [v32 v38[129]];
    sub_100751364();
  }

  else
  {
  }

  sub_10000C8CC(v65, &qword_10093FDB0, &unk_1007AC460);
  sub_10000C8CC(v66, &qword_10093FDB0, &unk_1007AC460);
}

id sub_1003726AC(uint64_t a1)
{
  v2 = sub_100750B04();
  v41 = *(v2 - 8);
  __chkstk_darwin(v2);
  v40 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100754724();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v37 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&qword_100934360, qword_1007B92D0);
  __chkstk_darwin(v6 - 8);
  v36 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v42 = v35 - v9;
  v10 = sub_100749B64();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v35 - v15;
  sub_10074ABD4();
  (*(v11 + 104))(v13, enum case for FamilyPurchasesSection.familyMembers(_:), v10);
  sub_100372E64(&qword_100934368, 255, &type metadata accessor for FamilyPurchasesSection, &protocol conformance descriptor for FamilyPurchasesSection);
  sub_100753274();
  sub_100753274();
  v17 = *(v11 + 8);
  v17(v13, v10);
  result = (v17)(v16, v10);
  if (v43[0] == v43[5])
  {
    sub_10074AC54();
    v35[1] = v19;
    if (qword_100920A20 != -1)
    {
      swift_once();
    }

    v20 = sub_10000D0FC(v2, qword_1009342F0);
    v22 = v41;
    v21 = v42;
    v23 = *(v41 + 16);
    v23(v42, v20, v2);
    (*(v22 + 56))(v21, 0, 1, v2);
    result = [v1 view];
    if (result)
    {
      v24 = result;
      [result bounds];

      v25 = [v1 traitCollection];
      if (qword_1009208C8 != -1)
      {
        swift_once();
      }

      v26 = sub_100750534();
      sub_10000D0FC(v26, qword_100931C70);
      v27 = sub_10074F3F4();
      v43[3] = v27;
      v43[4] = sub_100372E64(&qword_10092AC70, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v28 = sub_10000D134(v43);
      (*(*(v27 - 8) + 104))(v28, enum case for Feature.measurement_with_labelplaceholder(_:), v27);
      sub_10074FC74();
      sub_10000C620(v43);
      sub_10074CCB4();
      if (qword_1009208D0 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v2, qword_100931C88);
      sub_100750584();
      v29 = v36;
      sub_100016B4C(v42, v36, &qword_100934360, qword_1007B92D0);
      v30 = *(v22 + 48);
      v31 = v30(v29, 1, v2);
      v32 = v40;
      if (v31 == 1)
      {
        if (qword_1009208D8 != -1)
        {
          swift_once();
        }

        v33 = sub_10000D0FC(v2, qword_100931CA0);
        v23(v32, v33, v2);
        if (v30(v29, 1, v2) != 1)
        {
          sub_10000C8CC(v29, &qword_100934360, qword_1007B92D0);
        }
      }

      else
      {
        (*(v22 + 32))(v40, v29, v2);
      }

      v34 = v37;
      sub_1007502D4();
      sub_100750AD4();
      (*(v38 + 8))(v34, v39);
      (*(v22 + 8))(v32, v2);

      return sub_10000C8CC(v42, &qword_100934360, qword_1007B92D0);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100372E64(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100372EAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Accessory(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_100372F18(double a1, double a2, double a3, double a4)
{
  v9 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v9 - 8);
  v100 = &v93 - v10;
  v11 = sub_100750304();
  v114 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100747064();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v98 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v93 - v18;
  v20 = OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_materialBackground;
  *&v4[v20] = [objc_allocWithZone(UIVisualEffectView) init];
  v21 = OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_smallLockupView;
  type metadata accessor for SmallLockupView(0);
  *&v4[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22 = OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_tapGestureRecognizer;
  *&v4[v22] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v23 = &v4[OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_selectionHandler];
  v24 = type metadata accessor for CarouselItemLockupOverlay();
  *v23 = 0;
  *(v23 + 1) = 0;
  v122.receiver = v4;
  v122.super_class = v24;
  v25 = objc_msgSendSuper2(&v122, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v29 = v25;
  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v29 setOverrideUserInterfaceStyle:2];
  v99 = UIContentSizeCategoryExtraExtraExtraLarge;
  [v29 setMaximumContentSizeCategory:?];
  v94 = v29;

  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v30 = sub_10000D0FC(v14, qword_10097E3A8);
  v108 = v15;
  v31 = *(v15 + 16);
  v105 = v14;
  v96 = v15 + 16;
  v95 = v31;
  v31(v19, v30, v14);
  sub_100746F44();
  v115 = v19;
  if (qword_1009215A0 != -1)
  {
    swift_once();
  }

  v32 = sub_100750534();
  v33 = sub_10000D0FC(v32, qword_100981E18);
  v97 = *(v32 - 8);
  v35 = v97 + 16;
  v34 = *(v97 + 16);
  v109 = v32;
  v113 = v34;
  v34(v13, v33, v32);
  v36 = v114;
  v37 = v114 + 104;
  v38 = enum case for FontSource.useCase(_:);
  v107 = *(v114 + 104);
  v107(v13);
  v104 = sub_100750B04();
  v120 = v104;
  v121 = &protocol witness table for StaticDimension;
  sub_10000D134(v119);
  v117 = v11;
  v118 = &protocol witness table for FontSource;
  v39 = sub_10000D134(v116);
  v111 = *(v36 + 16);
  v110 = v36 + 16;
  v111(v39, v13, v11);
  sub_100750B14();
  v41 = *(v36 + 8);
  v40 = v36 + 8;
  v106 = v41;
  v41(v13, v11);
  sub_100746F64();
  if (qword_1009215A8 != -1)
  {
    swift_once();
  }

  v42 = v109;
  v112 = sub_10000D0FC(v109, qword_100981E30);
  v113(v13, v112, v42);
  v102 = v38;
  (v107)(v13, v38, v11);
  v43 = v104;
  v120 = v104;
  v121 = &protocol witness table for StaticDimension;
  sub_10000D134(v119);
  v117 = v11;
  v118 = &protocol witness table for FontSource;
  v44 = sub_10000D134(v116);
  v103 = v37;
  v101 = v35;
  v111(v44, v13, v11);
  sub_100750B14();
  v106(v13, v11);
  v114 = v40;
  sub_100747034();
  v45 = v113;
  v113(v13, v112, v42);
  v46 = v102;
  v47 = v107;
  (v107)(v13, v102, v11);
  v120 = v43;
  v121 = &protocol witness table for StaticDimension;
  sub_10000D134(v119);
  v117 = v11;
  v118 = &protocol witness table for FontSource;
  v48 = sub_10000D134(v116);
  v49 = v111;
  v111(v48, v13, v11);
  sub_100750B14();
  v50 = v106;
  v106(v13, v11);
  sub_100747004();
  v45(v13, v112, v109);
  v47(v13, v46, v11);
  v51 = v104;
  v120 = v104;
  v121 = &protocol witness table for StaticDimension;
  sub_10000D134(v119);
  v117 = v11;
  v118 = &protocol witness table for FontSource;
  v52 = sub_10000D134(v116);
  v49(v52, v13, v11);
  sub_100750B14();
  v50(v13, v11);
  sub_100746FF4();
  v113(v13, v112, v109);
  v53 = v102;
  v54 = v107;
  (v107)(v13, v102, v11);
  v120 = v51;
  v121 = &protocol witness table for StaticDimension;
  sub_10000D134(v119);
  v117 = v11;
  v118 = &protocol witness table for FontSource;
  v55 = sub_10000D134(v116);
  v111(v55, v13, v11);
  sub_100750B14();
  v56 = v106;
  v106(v13, v11);
  sub_100747054();
  v57 = v53;
  v58 = v51;
  if (qword_1009215B8 != -1)
  {
    swift_once();
  }

  v59 = v109;
  v60 = sub_10000D0FC(v109, qword_100981E60);
  v113(v13, v60, v59);
  v54(v13, v57, v11);
  v120 = v58;
  v121 = &protocol witness table for StaticDimension;
  sub_10000D134(v119);
  v117 = v11;
  v118 = &protocol witness table for FontSource;
  v61 = sub_10000D134(v116);
  v111(v61, v13, v11);
  sub_100750B14();
  v56(v13, v11);
  v62 = v115;
  sub_100746FB4();
  v114 = OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_smallLockupView;
  v63 = v94;
  v64 = *&v94[OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_smallLockupView];
  v65 = v98;
  v66 = v105;
  v95(v98, v62, v105);
  v67 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  v68 = v108;
  v69 = *(v108 + 24);
  v70 = v64;
  v69(&v64[v67], v65, v66);
  swift_endAccess();
  [v70 setNeedsLayout];

  v71 = *(v68 + 8);
  v108 = v68 + 8;
  v71(v65, v66);
  v72 = v114;
  v73 = *(*&v63[v114] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel);
  v74 = v100;
  v113(v100, v112, v59);
  (*(v97 + 56))(v74, 0, 1, v59);
  v75 = v73;
  sub_100745BA4();

  v76 = [*(*&v63[v72] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel) layer];
  v77 = kCAFilterPlusL;
  [v76 setCompositingFilter:kCAFilterPlusL];

  v78 = *(*&v63[v72] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel);
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v79 = v78;
  v80 = sub_100753DF4();
  [v79 setTextColor:v80];

  [*(*&v63[v72] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel) _setTextColorFollowsTintColor:0];
  v81 = [*(*&v63[v72] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel) layer];
  [v81 setCompositingFilter:v77];

  [*&v63[v72] setMaximumContentSizeCategory:v99];
  v82 = [*&v63[v72] layer];
  [v82 setAllowsGroupBlending:0];

  v83 = OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_materialBackground;
  v84 = *&v63[OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_materialBackground];
  sub_1006F3F14(26.0);

  v85 = OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_tapGestureRecognizer;
  [*&v63[OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_tapGestureRecognizer] setEnabled:0];
  v86 = *&v63[v85];
  v87 = v63;
  [v86 addTarget:v87 action:"handleSelection:"];
  v88 = *&v63[v85];
  [v88 setDelegate:v87];

  [v87 addGestureRecognizer:*&v63[v85]];
  [v87 addSubview:*&v63[v83]];
  v89 = [*&v63[v83] contentView];
  [v89 addSubview:*&v63[v72]];

  v90 = [*&v63[v83] contentView];
  v91 = [v90 layer];

  [v91 setAllowsGroupBlending:0];
  v71(v115, v105);
  return v87;
}

uint64_t sub_100373CFC()
{
  v1 = sub_100751104();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = type metadata accessor for CarouselItemLockupOverlay();
  v15.receiver = v0;
  v15.super_class = v5;
  objc_msgSendSuper2(&v15, "layoutSubviews");
  v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_materialBackground];
  sub_1007477B4();
  [v6 setFrame:?];
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_smallLockupView];
  v14[3] = type metadata accessor for SmallLockupView(0);
  v14[4] = sub_1003752E8(&qword_1009343B8, type metadata accessor for SmallLockupView, &unk_1007B12AC);
  v14[0] = v7;
  sub_10000C824(v14, v12);
  v13[3] = sub_1007511A4();
  v13[4] = &protocol witness table for Margins;
  sub_10000D134(v13);
  v8 = v7;
  sub_100751194();
  sub_1007510E4();
  sub_100751114();
  sub_10000C620(v14);
  sub_1007477B4();
  v9 = [v0 traitCollection];
  sub_100751244();

  return (*(v2 + 8))(v4, v1);
}

double sub_100373F78(double a1, double a2)
{
  v5 = sub_100751104();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1001CDEE8(v14);
  sub_10000C824(v14, v12);
  v13[3] = sub_1007511A4();
  v13[4] = &protocol witness table for Margins;
  sub_10000D134(v13);
  sub_100751194();
  sub_1007510E4();
  sub_100751114();
  sub_10000C620(v14);
  v9 = sub_100374D38(v8, v2, a1, a2);
  (*(v6 + 8))(v8, v5);
  return v9;
}

double sub_100374230(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v4 - 8);
  v6 = &v44 - v5;
  v7 = sub_10000C518(&unk_100925520, &unk_1007A8120);
  __chkstk_darwin(v7 - 8);
  v9 = &v44 - v8;
  v10 = sub_10000C518(&unk_100925990, qword_1007BB900);
  __chkstk_darwin(v10 - 8);
  v12 = &v44 - v11;
  v13 = sub_10000C518(&unk_1009259A0, &unk_1007B0610);
  __chkstk_darwin(v13 - 8);
  v15 = &v44 - v14;
  v16 = sub_10000C518(&unk_100925530, &unk_1007A8130);
  __chkstk_darwin(v16 - 8);
  v18 = &v44 - v17;
  v19 = sub_10000C518(&unk_100925540, &qword_1007A8140);
  __chkstk_darwin(v19 - 8);
  v21 = &v44 - v20;
  v22 = sub_10074A4C4();
  if (v22)
  {
    v24 = v22;
    v45 = v2;
    v25 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_smallLockupView];
    v26 = sub_10000C518(&unk_10092EEA0, qword_1007A8150);
    (*(*(v26 - 8) + 56))(v21, 1, 1, v26);
    v27 = sub_100742E24();
    (*(*(v27 - 8) + 56))(v18, 1, 1, v27);
    v28 = sub_100745E94();
    (*(*(v28 - 8) + 56))(v15, 1, 1, v28);
    v29 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
    (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
    v30 = sub_10074F8B4();
    (*(*(v30 - 8) + 56))(v9, 1, 1, v30);
    sub_100656038(v24, v25, v21, a2, 0, 0, v18, v15, v9, v12);
    sub_10000C8CC(v9, &unk_100925520, &unk_1007A8120);
    v25[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1001CE71C();
    [v25 setNeedsLayout];
    sub_10000C8CC(v12, &unk_100925990, qword_1007BB900);
    sub_10000C8CC(v15, &unk_1009259A0, &unk_1007B0610);
    sub_10000C8CC(v18, &unk_100925530, &unk_1007A8130);
    sub_10000C8CC(v21, &unk_100925540, &qword_1007A8140);
    v31 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel;
    v32 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel];
    if (v32)
    {
      v33 = qword_1009215A0;
      v34 = v32;
      if (v33 != -1)
      {
        swift_once();
      }

      v35 = sub_100750534();
      v36 = sub_10000D0FC(v35, qword_100981E18);
      v37 = *(v35 - 8);
      (*(v37 + 16))(v6, v36, v35);
      (*(v37 + 56))(v6, 0, 1, v35);
      sub_100745BA4();

      v38 = *&v25[v31];
      if (v38)
      {
        v39 = objc_opt_self();
        v40 = v38;
        v41 = [v39 secondaryLabelColor];
        [v40 setTextColor:v41];

        v42 = *&v25[v31];
        if (v42)
        {
          v43 = [v42 layer];
          [v43 setCompositingFilter:kCAFilterPlusL];
        }
      }
    }

    [v45 setNeedsLayout];
  }

  return result;
}

void sub_100374808()
{
  v1 = sub_10074F314();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10074F284();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10074A4C4())
  {
    v6 = sub_10074EF64();

    if (v6)
    {
      sub_10074F294();
      v7 = sub_10074F254();
      (*(v3 + 8))(v5, v2);
      if (qword_100920548 != -1)
      {
        swift_once();
      }

      v8 = sub_100747064();
      sub_10000D0FC(v8, qword_10097E3A8);
      sub_100746F34();
      sub_10074F374();
      v9 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_smallLockupView);
      v10 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
      v11 = *(v9 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
      sub_10074F324();
      sub_100743364();
      [v11 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500, UIColor_ptr);
        sub_100753E34();
      }

      sub_100743224();

      [*(v9 + v10) setContentMode:v7];
      v12 = *(v9 + v10);
      sub_1007433C4();
      sub_1003752E8(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      v13 = v12;
      sub_100744204();
    }
  }
}

id sub_100374AF8(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CarouselItemLockupOverlay();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_100374BC0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_selectionHandler);
  v6 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_selectionHandler);
  v7 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_selectionHandler + 8);
  *v5 = a1;
  v5[1] = a2;
  sub_10001B5AC(a1, a2);
  sub_10001B5AC(a1, a2);
  v8 = sub_1000164A8(v6, v7);
  v9 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_tapGestureRecognizer);
  if (a1)
  {
    v8 = sub_1000164A8(a1, a2);
  }

  [v9 setEnabled:{a1 != 0, v8}];

  return sub_1000164A8(a1, a2);
}

void sub_100374C78()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_smallLockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  sub_1007433C4();
  sub_1003752E8(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v2 = v1;
  sub_100744274();
}

double sub_100374D38(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = sub_100751144();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v41[-v12];
  __chkstk_darwin(v14);
  v16 = &v41[-v15];
  __chkstk_darwin(v17);
  v19 = &v41[-v18];
  v20 = sub_100751104();
  v47[3] = v20;
  v47[4] = &protocol witness table for Center;
  v21 = sub_10000D134(v47);
  (*(*(v20 - 8) + 16))(v21, a1, v20);
  sub_10016D1E8();
  v23 = v22;
  v24 = [a2 traitCollection];
  v25 = [v24 horizontalSizeClass];

  if (v25 == 2)
  {
    v26 = 635.0;
  }

  else
  {
    v26 = a3;
  }

  if (v26 <= v23)
  {
    sub_10000C824(v47, v43);
    *(v19 + 3) = &type metadata for CGFloat;
    *(v19 + 4) = &protocol witness table for CGFloat;
    *v19 = v26;
    v35 = *(v8 + 104);
    v35(v19, enum case for Resize.Rule.replaced(_:), v7);
    v36 = enum case for Resize.Rule.unchanged(_:);
    v35(v16, enum case for Resize.Rule.unchanged(_:), v7);
    v35(v13, v36, v7);
    v35(v10, v36, v7);
    v45 = sub_100751154();
    v46 = &protocol witness table for Resize;
    sub_10000D134(v44);
    sub_100751164();
  }

  else
  {
    sub_100750C24();
    v28 = v27;
    v30 = v29;
    sub_10000C824(v47, v43);
    sub_100750C24();
    v32 = v31;
    v34 = v33;
    v45 = sub_100751224();
    v46 = &protocol witness table for Constrain;
    sub_10000D134(v44);
    v42 = v32 & 1;
    v41[0] = v34 & 1;
    sub_100751234();
    v43[0] = v28 & 1;
    v42 = v30 & 1;
    sub_100750C44();
  }

  sub_10000C888(v44, v45);
  v37 = [a2 traitCollection];
  sub_100751254();
  v39 = v38;

  sub_10000C620(v44);
  sub_10000C620(v47);
  return v39;
}

void sub_100375144()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_materialBackground;
  *(v0 + v1) = [objc_allocWithZone(UIVisualEffectView) init];
  v2 = OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_smallLockupView;
  type metadata accessor for SmallLockupView(0);
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_tapGestureRecognizer;
  *(v0 + v3) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v4 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_selectionHandler);
  *v4 = 0;
  v4[1] = 0;
  sub_100754644();
  __break(1u);
}

BOOL sub_100375220(void *a1)
{
  v2 = [a1 touchesForView:*(*(v1 + OBJC_IVAR____TtC22SubscribePageExtension25CarouselItemLockupOverlay_smallLockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton)];
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  sub_100016C60(0, &unk_100929820, UITouch_ptr);
  sub_1000665E0();
  v4 = sub_100753484();

  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = sub_100754434();
  }

  else
  {
    v5 = *(v4 + 16);
  }

  return v5 == 0;
}

uint64_t sub_1003752E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_100375330()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyHeaderIconView_label;
  *&v0[v2] = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyHeaderIconView_backgroundView;
  *&v0[v3] = [objc_allocWithZone(UIView) init];
  v22.receiver = v0;
  v22.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyHeaderIconView_backgroundView;
  v6 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyHeaderIconView_backgroundView];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 systemBlueColor];
  [v8 setBackgroundColor:v9];

  v10 = [*&v4[v5] layer];
  [v10 setCornerRadius:20.0];

  v11 = [*&v4[v5] layer];
  [v11 setCornerCurve:kCACornerCurveCircular];

  [v4 addSubview:*&v4[v5]];
  v12 = OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyHeaderIconView_label;
  v13 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyHeaderIconView_label];
  v14 = [v7 whiteColor];
  [v13 setTextColor:v14];

  v15 = *&v4[v12];
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 systemFontOfSize:32.0];
  [v17 setFont:v18];

  v19 = *&v4[v12];
  v23._object = 0x8000000100778D30;
  v23._countAndFlagsBits = 0xD00000000000001FLL;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  sub_1007458B4(v23, v24);
  v20 = sub_100753064();

  [v19 setText:v20];

  [v4 addSubview:*&v4[v12]];
  return v4;
}

id sub_1003756B0()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyHeaderIconView_backgroundView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyHeaderIconView_label];
  [v2 sizeToFit];
  [v2 frame];
  Width = CGRectGetWidth(v6);
  [v2 frame];
  return [v2 setFrame:{20.0, 5.0, Width, CGRectGetHeight(v7)}];
}

id sub_1003759DC(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyViewController_adPrivacyHeaderIconView;
  *&v5[v11] = [objc_allocWithZone(type metadata accessor for OnboardingAdPrivacyHeaderIconView()) init];
  v5[OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyViewController_buttonsStyle] = a1 & 1;
  v12 = &v5[OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyViewController_buttonsCallback];
  *v12 = a3;
  v12[1] = a4;

  v19._object = 0x8000000100778DE0;
  v19._countAndFlagsBits = 0xD000000000000025;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  sub_1007458B4(v19, v20);
  sub_100748984();
  v13 = sub_100753064();

  v14 = sub_100753064();

  v18.receiver = v5;
  v18.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v18, "initWithTitle:detailText:icon:contentLayout:", v13, v14, 0, 2);

  v16 = v15;
  [v16 setModalInPresentation:1];
  [v16 setDisableButtonsUntilAllContentWasVisable:a2 & 1];

  return v16;
}

void sub_100375B74()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v53 = sub_100752AC4();
  v50 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&qword_100932470, &unk_1007A5A90);
  __chkstk_darwin(v4 - 8);
  v6 = &v46 - v5;
  v7 = sub_1007541F4();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58.receiver = v1;
  v58.super_class = ObjectType;
  objc_msgSendSuper2(&v58, "viewDidLoad", v9);
  v12 = [v1 headerView];
  LODWORD(v13) = 1036831949;
  [v12 setTitleHyphenationFactor:v13];

  v14 = [v1 headerView];
  v15 = [v14 customIconContainerView];

  if (v15)
  {
    [v15 addSubview:*&v1[OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyViewController_adPrivacyHeaderIconView]];
  }

  v16 = [objc_opt_self() accessoryButton];
  v59._countAndFlagsBits = 0xD00000000000002ALL;
  v59._object = 0x8000000100778EB0;
  v62._countAndFlagsBits = 0;
  v62._object = 0xE000000000000000;
  sub_1007458B4(v59, v62);
  v17 = sub_100753064();

  [v16 setTitle:v17 forState:0];

  [v16 addTarget:v1 action:"didTapLearnMore" forControlEvents:64];
  v18 = v16;
  v19 = sub_100753064();
  [v18 setAccessibilityIdentifier:v19];

  v20 = [v1 headerView];
  v51 = v18;
  [v20 addAccessoryButton:v18];

  v21 = v1[OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyViewController_buttonsStyle];
  v22 = objc_opt_self();
  v23 = [v22 boldButton];
  v24 = v23;
  if (v21)
  {
    v25 = objc_opt_self();
    v26 = v24;
    v27 = [v25 linkButton];
  }

  else
  {
    v48 = v23;
    v47 = [v22 boldButton];
    sub_100754174();
    v28 = objc_opt_self();
    v29 = [v28 systemBlueColor];
    sub_100754124();
    v30 = [v28 systemGray5Color];
    v31 = sub_100754034();
    sub_1007515C4();
    v31(&v56, 0);
    v32 = *(v8 + 16);
    v32(v6, v11, v7);
    v49 = v1;
    v33 = v24;
    v34 = *(v8 + 56);
    v34(v6, 0, 1, v7);
    v35 = v48;
    sub_100754224();

    v32(v6, v11, v7);
    v34(v6, 0, 1, v7);
    v24 = v33;
    v1 = v49;
    v36 = v47;
    sub_100754224();
    v27 = v36;

    (*(v8 + 8))(v11, v7);
  }

  v37 = v24;
  v60._countAndFlagsBits = 0xD000000000000027;
  v60._object = 0x8000000100778F10;
  v63._countAndFlagsBits = 0;
  v63._object = 0xE000000000000000;
  sub_1007458B4(v60, v63);
  v38 = sub_100753064();

  [v37 setTitle:v38 forState:0];

  [v37 addTarget:v1 action:"didTapTurnOn" forControlEvents:64];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v39 = v52;
  sub_100752A14();
  sub_1000277BC(&v54);
  sub_1000277BC(&v56);
  sub_100753C74();

  v40 = *(v50 + 8);
  v41 = v53;
  v40(v39, v53);
  v42 = [v1 buttonTray];
  [v42 addButton:v37];

  v43 = v27;
  v61._countAndFlagsBits = 0xD000000000000028;
  v61._object = 0x8000000100778F40;
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  sub_1007458B4(v61, v64);
  v44 = sub_100753064();

  [v43 setTitle:v44 forState:0];

  [v43 addTarget:v1 action:"didTapTurnOff" forControlEvents:64];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  sub_100752A14();
  sub_1000277BC(&v54);
  sub_1000277BC(&v56);
  sub_100753C74();

  v40(v39, v41);
  v45 = [v1 buttonTray];
  [v45 addButton:v43];
}

uint64_t sub_10037635C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1007521E4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100752224();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "viewDidLayoutSubviews", v9);
  sub_10037660C();
  sub_1000A7FA0();
  v12 = sub_100753774();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100376D30;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_100872C50;
  v14 = _Block_copy(aBlock);

  sub_100752204();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002DCDC();
  sub_10000C518(&unk_10092F750, &qword_1007A6920);
  sub_1000A8054();
  sub_1007543A4();
  sub_100753784();
  _Block_release(v14);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v11, v7);
}

void sub_10037660C()
{
  v1 = v0;
  v2 = sub_100754724();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 headerView];
  v8 = [v7 customIconContainerView];

  if (v8)
  {
    v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyViewController_adPrivacyHeaderIconView];
    [v8 bounds];
    v10 = OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyHeaderIconView_label;
    [*&v9[OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyHeaderIconView_label] sizeToFit];
    [*&v9[v10] frame];
    (*(v3 + 104))(v6, enum case for FloatingPointRoundingRule.up(_:), v2);
    sub_100753B84();
    v12 = v11;
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    [v8 bounds];
    v15 = CGRectGetMidX(v17) - v12 * 0.5;
    [v8 bounds];
    [v9 setFrame:{v15, CGRectGetMidY(v18) - v14 * 0.5, v12, v14}];
  }
}

void sub_100376810(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  MidX = 0.0;
  if (Strong && (v3 = Strong, v4 = [Strong headerView], v3, v5 = objc_msgSend(v4, "customIconContainerView"), v4, v5))
  {
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v29.origin.x = v7;
    v29.origin.y = v9;
    v29.size.width = v11;
    v29.size.height = v13;
    MidX = CGRectGetMidX(v29);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (!v15)
  {
    if (v14)
    {
      return;
    }

    goto LABEL_12;
  }

  v16 = v15;
  v17 = *(v15 + OBJC_IVAR____TtC22SubscribePageExtension33OnboardingAdPrivacyViewController_adPrivacyHeaderIconView);

  [v17 frame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v30.origin.x = v19;
  v30.origin.y = v21;
  v30.size.width = v23;
  v30.size.height = v25;
  if (MidX == CGRectGetMidX(v30))
  {
    v26 = v14;
  }

  else
  {
    v26 = 1;
  }

  if (v26 == 1)
  {
LABEL_12:
    swift_beginAccess();
    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      v28 = v27;
      sub_10037660C();
    }
  }
}

void sub_100376A74()
{
  v1 = sub_100753064();
  v2 = [objc_opt_self() presenterForPrivacySplashWithIdentifier:v1];

  if (v2)
  {
    [v2 setPresentingViewController:v0];
  }

  [v2 present];
}

uint64_t sub_100376CF8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_100376D38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100376D50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100376D98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_100376E00(uint64_t a1, double *a2)
{
  v2 = *(a1 + 8);
  v3 = a2[1];
  v4 = sub_100753094();
  v6 = v5;
  if (v4 == sub_100753094() && v6 == v7)
  {

    return v2 == v3;
  }

  v9 = sub_100754754();

  result = 0;
  if (v9)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_100376EB4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100750A34();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100750A04();
  sub_1000746BC(v2, &v15);
  if (*(&v16 + 1))
  {
    sub_100012160(&v15, v21);
    sub_100377278(v2, &v15);
    v8 = swift_allocObject();
    v9 = v18;
    v8[3] = v17;
    v8[4] = v9;
    v10 = v20;
    v8[5] = v19;
    v8[6] = v10;
    v11 = v16;
    v8[1] = v15;
    v8[2] = v11;
    sub_1007509F4();

    sub_10000C620(v21);
  }

  else
  {
    sub_10007485C(&v15);
  }

  sub_1007509F4();
  a1[3] = v4;
  a1[4] = &protocol witness table for HorizontalStack;
  v12 = sub_10000D134(a1);
  return (*(v5 + 32))(v12, v7, v4);
}

double sub_10037706C(uint64_t a1, double a2, double a3)
{
  sub_100376EB4(v6);
  sub_10000C888(v6, v6[3]);
  sub_100751254();
  v4 = ceil(v3);
  sub_100220598(v6);
  return v4;
}

uint64_t sub_100377110(uint64_t a1)
{
  sub_100376EB4(v2);
  sub_10000C888(v2, v2[3]);
  sub_100751244();
  return sub_100220598(v2);
}

uint64_t sub_1003771AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100377350();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, v4);
}

unint64_t sub_100377208()
{
  result = qword_100934438;
  if (!qword_100934438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100934438);
  }

  return result;
}

uint64_t sub_1003772B0()
{
  if (*(v0 + 40))
  {
    sub_10000C620((v0 + 16));
  }

  sub_10000C620((v0 + 56));

  return _swift_deallocObject(v0, 112, 7);
}

unint64_t sub_100377350()
{
  result = qword_100934440;
  if (!qword_100934440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100934440);
  }

  return result;
}

void sub_1003773B8()
{
  if (*(v0 + 24) == 1 && (v1 = *(v0 + 16)) != 0 && ([v1 _manualScrollEdgeAppearanceProgress], v2 >= 1.0))
  {
    v3 = (v0 + 25);
    v13 = *(v0 + 25);
    *(v0 + 25) = 1;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = (v0 + 25);
    v4 = *(v0 + 25);
    *(v0 + 25) = 0;
    if ((v4 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = *(v0 + 16);
  if (!v5 || (v6 = [v5 rightBarButtonItems]) == 0)
  {
LABEL_16:
    v14 = *(v0 + 16);
    if (v14)
    {
      goto LABEL_17;
    }

    return;
  }

  v7 = v6;
  sub_1003777E0();
  v8 = sub_1007532A4();

  if (v8 >> 62)
  {
    goto LABEL_31;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9)
  {
LABEL_9:
    if (v9 >= 1)
    {
      for (i = 0; i != v9; ++i)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = sub_100754574();
        }

        else
        {
          v11 = *(v8 + 8 * i + 32);
        }

        v12 = v11;
        [v11 setHidden:*v3];
      }

      goto LABEL_32;
    }

    __break(1u);
  }

  else
  {
LABEL_32:
    while (1)
    {

      v14 = *(v0 + 16);
      if (!v14)
      {
        break;
      }

LABEL_17:
      v15 = [v14 rightBarButtonItems];
      if (!v15)
      {
        return;
      }

      v16 = v15;
      sub_1003777E0();
      v8 = sub_1007532A4();

      if (v8 >> 62)
      {
        v0 = sub_100754664();
        if (!v0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v0 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v0)
        {
          goto LABEL_27;
        }
      }

      if (v0 >= 1)
      {
        for (j = 0; j != v0; ++j)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v18 = sub_100754574();
          }

          else
          {
            v18 = *(v8 + 8 * j + 32);
          }

          v19 = v18;
          [v18 setHidden:*v3];
        }

LABEL_27:

        return;
      }

      __break(1u);
LABEL_31:
      v9 = sub_100754664();
      if (v9)
      {
        goto LABEL_9;
      }
    }
  }
}

uint64_t sub_100377608()
{

  return swift_deallocClassInstance();
}

void sub_100377668()
{
  if (*(v0 + 24) == 1)
  {
    v1 = *(v0 + 16);
    if (v1 && ([v1 _manualScrollEdgeAppearanceProgress], v2 >= 1.0))
    {
      v4 = *(v0 + 25);
      *(v0 + 25) = 1;
      if (v4)
      {
        return;
      }
    }

    else
    {
      v3 = *(v0 + 25);
      *(v0 + 25) = 0;
      if ((v3 & 1) == 0)
      {
        return;
      }
    }

    v5 = (v0 + 25);
    v6 = *(v0 + 16);
    if (v6)
    {
      v7 = [v6 rightBarButtonItems];
      if (v7)
      {
        v8 = v7;
        sub_1003777E0();
        v9 = sub_1007532A4();

        if (v9 >> 62)
        {
          v10 = sub_100754664();
          if (v10)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v10)
          {
LABEL_11:
            if (v10 < 1)
            {
              __break(1u);
              return;
            }

            for (i = 0; i != v10; ++i)
            {
              if ((v9 & 0xC000000000000001) != 0)
              {
                v12 = sub_100754574();
              }

              else
              {
                v12 = *(v9 + 8 * i + 32);
              }

              v13 = v12;
              [v12 setHidden:*v5];
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1003777E0()
{
  result = qword_100925250;
  if (!qword_100925250)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100925250);
  }

  return result;
}

uint64_t sub_10037788C@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  PageTraitEnvironment.pageColumnMargin.getter();
  sub_10074A254();
  v2 = sub_10074A274();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_1003779E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_100377A2C()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100929420, qword_1007AD028);
  __chkstk_darwin(v2 - 8);
  v62 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v61 - v5;
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v8 = v7;
  PageTraitEnvironment.pageColumnMargin.getter();
  v10 = (v8 - v9) * 0.5;
  v11 = &v0[OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_preferredArtworkSize];
  *v11 = v10;
  v11[1] = v10;
  [v0 setNeedsLayout];
  v12 = sub_10074EF74();
  if (v13)
  {
    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      v15 = sub_100753DD4();
      sub_100252DE4(1, v15);

      v16 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_headingLabel];
      if (v16)
      {
        v17 = v16;
        v18 = sub_100753064();

        [v17 setText:v18];
      }

      else
      {
      }

      goto LABEL_11;
    }
  }

  v19 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_headingLabel];
  if (v19)
  {
    [v19 setHidden:1];
  }

LABEL_11:
  v20 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_titleLabel];
  sub_10074EF34();
  if (v21)
  {
    v22 = sub_100753064();
  }

  else
  {
    v22 = 0;
  }

  [v20 setText:v22];

  sub_10074EE14();
  if (v23)
  {
    sub_100253094();
    v24 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_tertiaryTitleLabel];
    if (v24)
    {
      v25 = v24;
      v26 = sub_100753064();

      [v25 setText:v26];
    }

    else
    {
    }
  }

  else
  {
    v27 = OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_tertiaryTitleLabel;
    v28 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_tertiaryTitleLabel];
    if (v28)
    {
      [v28 setHidden:1];
      v29 = *&v1[v27];
      if (v29)
      {
        [v29 setText:0];
      }
    }
  }

  v30 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_subtitleLabel];
  sub_10074EFB4();
  if (v31)
  {
    v32 = sub_100753064();
  }

  else
  {
    v32 = 0;
  }

  [v30 setText:v32];

  v33 = OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_headingLabel;
  v34 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_headingLabel];
  if (v34 && ([v34 isHidden] & 1) == 0 && (v35 = *&v1[v33]) != 0)
  {
    v36 = [v35 hasContent];
  }

  else
  {
    v36 = 0;
  }

  v37 = OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_tertiaryTitleLabel;
  v38 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_tertiaryTitleLabel];
  if (v38 && ([v38 isHidden] & 1) == 0 && (v39 = *&v1[v37]) != 0)
  {
    v40 = [v39 hasContent];
  }

  else
  {
    v40 = 0;
  }

  if ([v30 hasContent])
  {
    v41 = v40 & v36;
  }

  else
  {
    v41 = 1;
  }

  [v30 setHidden:v41];
  v42 = sub_10074EEA4();
  if (!v42)
  {
    sub_100016C60(0, &qword_100923500, UIColor_ptr);
    v42 = sub_100753DF4();
  }

  v43 = v42;
  [v30 setTextColor:v42];

  v44 = &stru_1008F2000;
  v45 = [v30 layer];
  sub_10074EEB4();
  v46 = sub_1007497F4();
  v47 = *(v46 - 8);
  v48 = *(v47 + 48);
  if (v48(v6, 1, v46) == 1)
  {
    sub_100378094(v6);
LABEL_43:
    v55 = 0;
    goto LABEL_44;
  }

  sub_1007497E4();
  (*(v47 + 8))(v6, v46);
  v49 = v64;
  if (!v64)
  {
    goto LABEL_43;
  }

  v50 = sub_10000C888(v63, v64);
  v61 = &v61;
  v51 = *(v49 - 8);
  v52 = __chkstk_darwin(v50);
  v54 = &v61 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v51 + 16))(v54, v52);
  v55 = sub_100754734();
  (*(v51 + 8))(v54, v49);
  v44 = &stru_1008F2000;
  sub_10000C620(v63);
LABEL_44:
  [v45 setCompositingFilter:{v55, v61}];

  swift_unknownObjectRelease();
  v56 = [v1 contentView];
  v57 = [v56 v44[67].name];

  v58 = v62;
  sub_10074EEB4();
  v59 = v48(v58, 1, v46) == 1;
  sub_100378094(v58);
  [v57 setAllowsGroupBlending:v59];

  return [v1 setNeedsLayout];
}

uint64_t sub_100378094(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100929420, qword_1007AD028);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1003780FC(double a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v6 = v5;
  PageTraitEnvironment.pageColumnMargin.getter();
  sub_100253750(a3, (v6 - v7) * 0.5, a1);
  v9 = v8;
  v11 = v10;
  v12 = objc_opt_self();
  v13 = [v12 absoluteDimension:v9];
  v14 = [v12 absoluteDimension:v11];
  v15 = objc_opt_self();
  v16 = [v15 sizeWithWidthDimension:v13 heightDimension:v14];

  v17 = [objc_opt_self() itemWithLayoutSize:v16];
  v18 = [v16 widthDimension];
  v19 = [v16 heightDimension];
  v20 = [v15 sizeWithWidthDimension:v18 heightDimension:v19];

  v21 = objc_opt_self();
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1007A5CF0;
  *(v22 + 32) = v17;
  sub_100016C60(0, &qword_100923478, NSCollectionLayoutItem_ptr);
  v23 = v17;
  isa = sub_100753294().super.isa;

  v25 = [v21 verticalGroupWithLayoutSize:v20 subitems:isa];

  return v25;
}

double sub_10037838C()
{
  v1 = sub_10074F704();
  v25 = *(v1 - 8);
  v26 = v1;
  __chkstk_darwin(v1);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&qword_100933270, &qword_1007BA6C8);
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v24 - v5;
  v7 = sub_10000C518(&qword_10092ADB0, &unk_1007AF400);
  __chkstk_darwin(v7 - 8);
  v9 = v24 - v8;
  v10 = sub_100742BB4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100378758(&qword_100934548, &type metadata accessor for Annotation, &protocol conformance descriptor for Annotation);
  sub_1007468B4();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100185A2C(v9);
    return 0.0;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_100349280();
    sub_1007468E4();
    sub_100752E84();
    v24[1] = v0;
    if (v28)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_100742B74();
    }

    swift_getKeyPath();
    sub_100746914();

    sub_10074F674();
    v17 = v16;
    v19 = v18;
    (*(v25 + 8))(v3, v26);
    v20 = sub_10007DC04();
    swift_getObjectType();
    v21.n128_u64[0] = v17;
    sub_10027B8E4(v13, v15 & 1, v20, v21, v19);
    v14 = v22;
    swift_unknownObjectRelease();
    (*(v27 + 8))(v6, v4);
    (*(v11 + 8))(v13, v10);
  }

  return v14;
}

uint64_t sub_100378758(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003787A4(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
  }

  else
  {
    v3 = [a1 tabBarController];
    if (!v3)
    {
LABEL_10:
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v8 = v11;
        v12 = a1;
      }

      else
      {
        v8 = [a1 navigationController];
        if (!v8)
        {
          v13 = 0;
          goto LABEL_19;
        }
      }

      goto LABEL_13;
    }
  }

  v5 = [v3 selectedViewController];
  if (v5)
  {
    v6 = v5;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      goto LABEL_13;
    }
  }

  v9 = [v3 selectedViewController];
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v8 = [v9 navigationController];

  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_13:
  v13 = [v8 presentedViewController];
  if (v13)
  {
    type metadata accessor for PresentationContextViewController();
    v14 = swift_dynamicCastClass();
    if (!v14 || (v15 = [v14 presentedViewController], v13, (v13 = v15) != 0))
    {
      v16 = v13;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (!v13)
      {
      }

      goto LABEL_20;
    }
  }

LABEL_19:
  v16 = 0;
LABEL_20:
  v35[0] = v16;
  v35[1] = v13;
  v35[2] = v8;
  v35[3] = a1;
  v17 = v8;
  v18 = a1;
  v34 = v16;
  result = v13;
  v20 = result;
  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  do
  {
    if (v21 <= 4)
    {
      v23 = 4;
    }

    else
    {
      v23 = v21;
    }

    v24 = v21;
    while (1)
    {
      if (v23 == v24)
      {
        __break(1u);
        return result;
      }

      v25 = v35[v24];
      if (v25)
      {
        swift_getObjectType();
        result = swift_conformsToProtocol2();
        if (result)
        {
          break;
        }
      }

      if (++v24 == 4)
      {
        goto LABEL_34;
      }
    }

    v33 = v20;
    v26 = result;
    v32 = v25;
    result = swift_isUniquelyReferenced_nonNull_native();
    v27 = v3;
    if ((result & 1) == 0)
    {
      result = sub_100255894(0, v22[2] + 1, 1, v22);
      v22 = result;
    }

    v29 = v22[2];
    v28 = v22[3];
    if (v29 >= v28 >> 1)
    {
      result = sub_100255894((v28 > 1), v29 + 1, 1, v22);
      v22 = result;
    }

    v21 = v24 + 1;
    v22[2] = v29 + 1;
    v30 = &v22[2 * v29];
    v30[4] = v32;
    v30[5] = v26;
    v3 = v27;
    v20 = v33;
  }

  while (v24 != 3);
LABEL_34:
  sub_10000C518(&qword_100934550, qword_1007BBD00);
  swift_arrayDestroy();
  if (v22[2])
  {
    v31 = v22[4];

    v8 = *&v31[OBJC_IVAR____TtC22SubscribePageExtension30ArticleContainerViewController_wrapperViewController];
  }

  else
  {

    if (v13)
    {

      return v13;
    }
  }

  return v8;
}

unint64_t sub_100378B58(void *a1)
{
  v1 = sub_1003787A4(a1);
  if (!v1)
  {
LABEL_12:

    return a1;
  }

  v2 = v1;
  v3 = [v1 viewControllers];

  sub_100032B70();
  v4 = sub_1007532A4();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v5 = sub_100754664();
  if (!v5)
  {
LABEL_11:

    goto LABEL_12;
  }

LABEL_4:
  v6 = __OFSUB__(v5, 1);
  result = v5 - 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_16:
    v8 = sub_100754574();
    goto LABEL_9;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v4 + 8 * result + 32);
LABEL_9:
    v9 = v8;

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_100378C70(uint64_t a1, void *a2)
{
  v3 = v2;
  v31 = a2;
  v4 = sub_10000C518(&unk_100933200, qword_1007BD1F0);
  __chkstk_darwin(v4 - 8);
  v6 = (v30 - v5);
  v7 = sub_10074E6B4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v30 - v12;
  v14 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_titleLabel];
  sub_10074D664();
  v15 = sub_100753064();

  [v14 setText:v15];

  sub_10074D644();
  v16.n128_f64[0] = (*(v8 + 104))(v10, enum case for ArcadeDownloadPackSuggestionsPagePrimaryActionKind.getAll(_:), v7);
  sub_10037A5C0(v16);
  v17 = sub_100753014();
  v18 = *(v8 + 8);
  v18(v10, v7);
  v18(v13, v7);
  if ((v17 & 1) != 0 || (v19 = sub_10074D614()) == 0)
  {
    v22 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
    (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  }

  else
  {
    v20 = v19;
    v21 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);

    sub_10074D634();
    *v6 = v20;
    (*(*(v21 - 8) + 56))(v6, 0, 1, v21);
  }

  v23 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_gamesView];
  v24 = sub_10074D604();
  v25 = v24;
  if (!(v24 >> 62))
  {
    v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_7;
    }

LABEL_15:

    v29 = _swiftEmptyArrayStorage;
LABEL_16:
    sub_100669490(v29, v6, 0, v31);

    [v3 setNeedsLayout];
    [v3 invalidateIntrinsicContentSize];
    sub_100379D9C();

    return sub_100038618(v6);
  }

  v26 = sub_100754664();
  if (!v26)
  {
    goto LABEL_15;
  }

LABEL_7:
  v32 = _swiftEmptyArrayStorage;
  result = sub_1007545C4();
  if ((v26 & 0x8000000000000000) == 0)
  {
    v30[1] = v23;
    v28 = 0;
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        sub_100754574();
      }

      else
      {
      }

      ++v28;

      sub_10074C504();

      sub_1007545A4();
      sub_1007545D4();
      sub_1007545E4();
      sub_1007545B4();
    }

    while (v26 != v28);

    v29 = v32;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id sub_100379088()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:150.0 damping:25.0 initialVelocity:{0.0, 0.0}];
  qword_100934558 = result;
  return result;
}

char *sub_1003790D8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_10074AB44();
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin(v8);
  v62 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v10 - 8);
  v59 = &v53 - v11;
  v57 = sub_1007441C4();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v58 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100750304();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_100750B04();
  v17 = *(v56 - 8);
  __chkstk_darwin(v56);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000C518(&qword_10093F5C0, &qword_1007A9CD0);
  __chkstk_darwin(v20 - 8);
  v22 = &v53 - v21;
  v54 = OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_wordmarkView;
  v23 = enum case for Wordmark.arcade(_:);
  v24 = sub_10074F7B4();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v22, v23, v24);
  (*(v25 + 56))(v22, 0, 1, v24);
  if (qword_100921510 != -1)
  {
    swift_once();
  }

  v26 = sub_100750534();
  v53 = sub_10000D0FC(v26, qword_100981C68);
  v27 = *(v26 - 8);
  v28 = *(v27 + 16);
  v28(v16, v53, v26);
  (*(v14 + 104))(v16, enum case for FontSource.useCase(_:), v13);
  v67 = v13;
  v68 = &protocol witness table for FontSource;
  v29 = sub_10000D134(v66);
  (*(v14 + 16))(v29, v16, v13);
  sub_100750B14();
  (*(v14 + 8))(v16, v13);
  (*(v55 + 104))(v58, enum case for WordmarkView.Alignment.leading(_:), v57);
  v30 = v56;
  v67 = v56;
  v68 = &protocol witness table for StaticDimension;
  v31 = sub_10000D134(v66);
  (*(v17 + 16))(v31, v19, v30);
  v32 = objc_allocWithZone(sub_1007441E4());
  v33 = sub_1007441B4();
  (*(v17 + 8))(v19, v30);
  v34 = v63;
  *(v63 + v54) = v33;
  v35 = OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_titleLabel;
  v36 = v59;
  v28(v59, v53, v26);
  (*(v27 + 56))(v36, 0, 1, v26);
  (*(v60 + 104))(v62, enum case for DirectionalTextAlignment.none(_:), v61);
  v37 = objc_allocWithZone(sub_100745C84());
  *&v34[v35] = sub_100745C74();
  v38 = OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_gamesView;
  type metadata accessor for ArcadeDownloadPackGamesCardView(0);
  *&v34[v38] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v39 = &v34[OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_impressionsUpdateBlock];
  *v39 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v39[1] = 0;
  v40 = ObjectType;
  v65.receiver = v34;
  v65.super_class = ObjectType;
  v41 = objc_msgSendSuper2(&v65, "initWithFrame:", a1, a2, a3, a4);
  v42 = *&v41[OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_wordmarkView];
  v43 = v41;
  [v43 addSubview:v42];
  v44 = OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_titleLabel;
  [v43 addSubview:*&v43[OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_titleLabel]];
  [v43 addSubview:*&v43[OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_gamesView]];
  [*&v43[v44] setTextAlignment:1];
  [*&v43[v44] setNumberOfLines:0];
  v45 = *&v43[v44];
  v46 = [v43 traitCollection];
  v47 = [v46 preferredContentSizeCategory];

  LOBYTE(v46) = sub_100753924();
  if (v46)
  {
    v48 = 4;
  }

  else
  {
    v48 = 1;
  }

  [v45 setTextAlignment:{v48, v53}];
  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v49 = swift_allocObject();
  v63 = xmmword_1007A5A00;
  *(v49 + 16) = xmmword_1007A5A00;
  *(v49 + 32) = sub_1007519E4();
  *(v49 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v67 = v40;
  v66[0] = v43;
  v50 = v43;
  sub_100753D34();
  swift_unknownObjectRelease();

  sub_10000C620(v66);
  v51 = swift_allocObject();
  *(v51 + 16) = v63;
  *(v51 + 32) = sub_1007516F4();
  *(v51 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v67 = v40;
  v66[0] = v50;
  sub_100753D34();
  swift_unknownObjectRelease();

  sub_10000C620(v66);
  return v50;
}

uint64_t sub_100379970@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1007507B4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v21 - v8;
  __chkstk_darwin(v10);
  v12 = v21 - v11;
  *(swift_allocObject() + 16) = v1;
  v13 = v1;
  sub_100750794();
  v24 = *&v13[OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_wordmarkView];
  sub_1007441E4();
  sub_100750434();
  sub_1007507A4();
  sub_10000C620(v21);
  v14 = *(v4 + 8);
  v14(v6, v3);
  v15 = *&v13[OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_titleLabel];
  v22 = sub_100745C84();
  v23 = &protocol witness table for UILabel;
  v21[0] = v15;
  *(swift_allocObject() + 16) = v13;
  v16 = v13;
  v17 = v15;
  sub_1007507A4();

  v14(v9, v3);
  sub_10000C620(v21);
  v18 = *&v16[OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_gamesView];
  v22 = type metadata accessor for ArcadeDownloadPackGamesCardView(0);
  v23 = &protocol witness table for CustomLayoutView;
  v21[0] = v18;
  a1[3] = v3;
  a1[4] = &protocol witness table for VerticalStack;
  sub_10000D134(a1);
  v19 = v18;
  sub_1007507A4();
  v14(v12, v3);
  return sub_10000C620(v21);
}

uint64_t sub_100379C34(int a1, id a2)
{
  v2 = [a2 traitCollection];
  sub_1007537B4();

  return sub_100750724();
}

void sub_100379D9C()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_gamesView];
  CGAffineTransformMakeScale(&v6, 0.9, 0.9);
  [v1 setTransform:&v6];
  if (qword_100920A28 != -1)
  {
    swift_once();
  }

  v2 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_100934558 timingParameters:0.0];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *&v6.tx = sub_10037A650;
  *&v6.ty = v3;
  *&v6.a = _NSConcreteStackBlock;
  *&v6.b = 1107296256;
  *&v6.c = sub_1000CF7B0;
  *&v6.d = &unk_100872E48;
  v4 = _Block_copy(&v6);
  v5 = v0;

  [v2 addAnimations:v4];
  _Block_release(v4);
  [v2 startAnimation];
  sub_10066A534();
}

void sub_100379FF0()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  sub_100379970(v4);
  sub_10000C888(v4, v4[3]);
  [v0 bounds];
  v1 = [v0 traitCollection];
  sub_100751244();

  sub_10000C620(v4);
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_impressionsUpdateBlock];

  v2(v3);
}

id sub_10037A198()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_titleLabel];
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = sub_100753924();
  if (v2)
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  [v1 setTextAlignment:v4];
  [v0 setNeedsLayout];

  return [v0 invalidateIntrinsicContentSize];
}

double sub_10037A2A0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 2) = v5;
  *(v6 + 3) = v4;
  *(v6 + 4) = a1;
  v7 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_impressionsUpdateBlock);
  *v7 = sub_10037A73C;
  v7[1] = v6;

  v8 = *v7;

  (v8)(v9);

  return result;
}

void sub_10037A3B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_gamesView);

      v9 = v5;
      sub_100677A8C(v8, a3, v9);
    }
  }
}

double sub_10037A514(uint64_t a1, double a2, double a3)
{
  sub_100379970(v6);
  sub_10000C888(v6, v6[3]);
  sub_100751254();
  v4 = v3;
  sub_10000C620(v6);
  return v4;
}

unint64_t sub_10037A5C0(__n128 a1)
{
  result = qword_1009345A8;
  if (!qword_1009345A8)
  {
    sub_10074E6B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009345A8);
  }

  return result;
}

uint64_t sub_10037A618()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10037A650()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_gamesView);
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform:v3];
}

double sub_10037A69C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10037A6BC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10037A6F4()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10037A748()
{
  v0 = sub_10074AB44();
  v40 = *(v0 - 8);
  v41 = v0;
  __chkstk_darwin(v0);
  v42 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v2 - 8);
  v39 = &v33 - v3;
  v37 = sub_1007441C4();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100750304();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_100750B04();
  v9 = *(v36 - 8);
  __chkstk_darwin(v36);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&qword_10093F5C0, &qword_1007A9CD0);
  __chkstk_darwin(v12 - 8);
  v14 = &v33 - v13;
  v34 = OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_wordmarkView;
  v15 = enum case for Wordmark.arcade(_:);
  v16 = sub_10074F7B4();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v14, v15, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  if (qword_100921510 != -1)
  {
    swift_once();
  }

  v18 = sub_100750534();
  v33 = sub_10000D0FC(v18, qword_100981C68);
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v20(v8, v33, v18);
  (*(v6 + 104))(v8, enum case for FontSource.useCase(_:), v5);
  v45 = v5;
  v46 = &protocol witness table for FontSource;
  v21 = sub_10000D134(v44);
  (*(v6 + 16))(v21, v8, v5);
  sub_100750B14();
  (*(v6 + 8))(v8, v5);
  (*(v35 + 104))(v38, enum case for WordmarkView.Alignment.leading(_:), v37);
  v22 = v36;
  v45 = v36;
  v46 = &protocol witness table for StaticDimension;
  v23 = sub_10000D134(v44);
  (*(v9 + 16))(v23, v11, v22);
  v24 = objc_allocWithZone(sub_1007441E4());
  v25 = sub_1007441B4();
  (*(v9 + 8))(v11, v22);
  v26 = v43;
  v27 = v33;
  *(v43 + v34) = v25;
  v28 = OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_titleLabel;
  v29 = v39;
  v20(v39, v27, v18);
  (*(v19 + 56))(v29, 0, 1, v18);
  (*(v40 + 104))(v42, enum case for DirectionalTextAlignment.none(_:), v41);
  v30 = objc_allocWithZone(sub_100745C84());
  *(v26 + v28) = sub_100745C74();
  v31 = OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_gamesView;
  type metadata accessor for ArcadeDownloadPackGamesCardView(0);
  *(v26 + v31) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v32 = (v26 + OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_impressionsUpdateBlock);
  *v32 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v32[1] = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_10037AD8C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = sub_1007504F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_getObjectType();
    PageTraitEnvironment.pageColumnWidth.getter();
  }

  if (qword_100920960 != -1)
  {
    swift_once();
  }

  v9 = sub_100747674();
  sub_10000D0FC(v9, qword_10097FA38);
  sub_100747664();
  sub_1007504C4();
  (*(v6 + 8))(v8, v5);
  sub_10074A254();
  v10 = sub_10074A274();
  return (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
}

void sub_10037AF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_10074EDC4();
    if (v9)
    {
      v10 = v9;
      v11 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
      sub_1007526C4();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v6, 1, v11) == 1)
      {

        sub_10000C8CC(v6, &unk_100923960, &qword_1007A6240);
      }

      else
      {
        sub_1003C0E00(v10, 1, a3, v6);

        (*(v12 + 8))(v6, v11);
      }
    }

    else
    {
    }
  }
}

double sub_10037B0DC(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_100920960 != -1)
  {
    swift_once();
  }

  v8 = sub_100747674();
  sub_10000D0FC(v8, qword_10097FA38);
  sub_100747694();
  sub_10037C6B0(&qword_100933258, &type metadata accessor for FlowcaseItemLayout, &protocol conformance descriptor for FlowcaseItemLayout);
  sub_100750D34();
  if (qword_100920968 != -1)
  {
    swift_once();
  }

  v9 = sub_100751374();
  sub_10000D0FC(v9, qword_10097FA50);

  sub_100753BD4();
  return result;
}

id sub_10037B2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v178 = a3;
  v175 = sub_100746BA4();
  v177 = *(v175 - 8);
  __chkstk_darwin(v175);
  v169 = &v159 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v168 = &v159 - v8;
  v9 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v9 - 8);
  v160 = &v159 - v10;
  v170 = sub_10074ED34();
  v167 = *(v170 - 8);
  __chkstk_darwin(v170);
  v161 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v159 - v13;
  v15 = sub_10000C518(&unk_100925520, &unk_1007A8120);
  __chkstk_darwin(v15 - 8);
  v165 = &v159 - v16;
  v17 = sub_10000C518(&unk_100925990, qword_1007BB900);
  __chkstk_darwin(v17 - 8);
  v174 = &v159 - v18;
  v19 = sub_10000C518(&unk_1009259A0, &unk_1007B0610);
  __chkstk_darwin(v19 - 8);
  v173 = &v159 - v20;
  v21 = sub_10000C518(&unk_100925530, &unk_1007A8130);
  __chkstk_darwin(v21 - 8);
  v172 = &v159 - v22;
  v23 = sub_10000C518(&unk_1009259B0, &unk_1007B0620);
  __chkstk_darwin(v23 - 8);
  v164 = &v159 - v24;
  v25 = sub_10074D734();
  v162 = *(v25 - 8);
  __chkstk_darwin(v25);
  v163 = &v159 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000C518(&unk_100925540, &qword_1007A8140);
  __chkstk_darwin(v27 - 8);
  v176 = (&v159 - v28);
  v29 = sub_10000C518(&qword_100933090, &unk_1007B1B00);
  __chkstk_darwin(v29 - 8);
  v31 = &v159 - v30;
  v32 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_captionLabel];
  sub_1007443B4();
  if (v33)
  {
    v34 = sub_100753064();
  }

  else
  {
    v34 = 0;
  }

  [v32 setText:v34];

  v35 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_titleLabel];
  sub_100744384();
  if (v36)
  {
    v37 = sub_100753064();
  }

  else
  {
    v37 = 0;
  }

  [v35 setText:v37];

  v38 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_subtitleLabel];
  sub_1007443C4();
  if (v39)
  {
    v40 = sub_100753064();
  }

  else
  {
    v40 = 0;
  }

  [v38 setText:v40];

  v41 = sub_100744374();
  sub_1003260F8(v41);
  v42 = sub_100744354();
  v166 = v14;
  if (v42)
  {
    v179 = v42;
    sub_10074ECD4();
    sub_100752764();
    sub_10037C6B0(&qword_100928558, &type metadata accessor for Action, &protocol conformance descriptor for Action);
    sub_100752684();

    v43 = sub_10000C518(&unk_100933080, &unk_1007B1AB0);
    (*(*(v43 - 8) + 56))(v31, 0, 1, v43);
  }

  else
  {
    v44 = sub_10000C518(&unk_100933080, &unk_1007B1AB0);
    (*(*(v44 - 8) + 56))(v31, 1, 1, v44);
  }

  v45 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_clickAction;
  swift_beginAccess();
  sub_100195594(v31, &v4[v45]);
  swift_endAccess();
  v46 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_gradientBlurView];
  if (sub_1007443A4())
  {
    v47 = sub_10074F1E4();
  }

  else
  {
    v47 = 0;
  }

  v48 = *&v46[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_secondaryColor];
  *&v46[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_secondaryColor] = v47;
  v49 = v47;

  sub_10016A260();
  v50 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_appEventFormattedDateView];
  if (v50)
  {
    type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
    v51 = v50;
    sub_100752754();
    v52 = v179;
    v53 = v4;
    v54 = v46;
    v55 = a1;
    v56 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
    v57 = *&v51[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
    v58 = v57;
    sub_1000CAC84(v52);
    v59 = *&v51[v56];
    *&v51[v56] = v52;
    a1 = v55;
    v46 = v54;
    v4 = v53;
    v60 = v52;

    sub_1000CADE8(v57);
  }

  v61 = sub_100744394();
  v62 = &stru_1008F2000;
  if (v61)
  {
    v63 = v61;
    v159 = v4;
    v64 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupView];
    v65 = v162;
    v66 = *(v162 + 104);
    v66(v163, enum case for OfferButtonPresenterViewAlignment.right(_:), v25);
    v67 = v164;
    v66(v164, enum case for OfferButtonPresenterViewAlignment.left(_:), v25);
    (*(v65 + 56))(v67, 0, 1, v25);
    sub_10037C6B0(&unk_100925550, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
    v68 = v176;
    sub_10074A9C4();
    v69 = sub_10000C518(&unk_10092EEA0, qword_1007A8150);
    (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
    v70 = *(v64 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView);
    v71 = sub_10074EF24();
    if (v71)
    {
    }

    v164 = v46;
    [v70 setHidden:v71 == 0];
    v163 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView;
    v72 = *(v64 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView);
    v73 = sub_100742E24();
    v74 = v172;
    (*(*(v73 - 8) + 56))(v172, 1, 1, v73);
    v75 = sub_100745E94();
    v76 = v173;
    (*(*(v75 - 8) + 56))(v173, 1, 1, v75);
    v77 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
    v78 = v174;
    (*(*(v77 - 8) + 56))(v174, 1, 1, v77);
    v79 = sub_10074F8B4();
    v80 = v165;
    (*(*(v79 - 8) + 56))(v165, 1, 1, v79);
    sub_100656038(v63, v72, v176, v178, 1, 0, v74, v76, v80, v78);
    sub_10000C8CC(v80, &unk_100925520, &unk_1007A8120);
    v72[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 1;
    sub_1001CE71C();
    [v72 setNeedsLayout];
    v81 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel;
    v82 = *&v72[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel];
    if (v82)
    {
      [v82 setHidden:1];
      v83 = *&v72[v81];
      if (v83)
      {
        [v83 setText:0];
      }
    }

    v84 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel;
    v85 = *&v72[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel];
    if (v85)
    {
      if (([v85 isHidden] & 1) == 0)
      {
        v86 = *&v72[v84];
        if (v86)
        {
          if ([v86 hasContent])
          {
            v87 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel;
            [*&v72[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel] setHidden:1];
            [*&v72[v87] setText:0];
          }
        }
      }
    }

    v171 = a1;
    v88 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel;
    v89 = [*&v72[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel] isHidden];
    v90 = v166;
    if (v89 & 1) == 0 && ([*&v72[v88] hasContent])
    {
      v91 = *&v72[v84];
      if (v91)
      {
        [v91 setHidden:1];
        v92 = *&v72[v84];
        if (v92)
        {
          [v92 setText:0];
        }
      }

      v93 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel;
      [*&v72[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel] setHidden:1];
      [*&v72[v93] setText:0];
    }

    sub_10000C8CC(v174, &unk_100925990, qword_1007BB900);
    sub_10000C8CC(v173, &unk_1009259A0, &unk_1007B0610);
    sub_10000C8CC(v172, &unk_100925530, &unk_1007A8130);
    sub_10074EF44();
    v94 = sub_10074EE24();
    v96 = v95;
    v97 = sub_10074EE84();
    v99 = v98;
    v100 = sub_10074EE44();
    v174 = v63;
    if (v96 && v99)
    {
      v101 = v100;
      v173 = v94;
      v102 = v167;
      (*(v167 + 16))(v161, v90, v170);
      sub_10000C518(&unk_100925780, qword_1007AC630);
      sub_100752764();
      sub_100752D34();
      v172 = v97;
      v104 = v179;
      v103 = v180;
      type metadata accessor for CrossLinkPresenter(0);
      swift_allocObject();
      v105 = v64;
      v106 = CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(v161, v173, v96, v172, v99, v101 & 1, v64, &off_10086C378, v104, v103);
      (*(v102 + 8))(v90, v170);
      sub_10000C8CC(v176, &unk_100925540, &qword_1007A8140);
      v107 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkPresenter;
      swift_beginAccess();
      *&v105[v107] = v106;
    }

    else
    {

      v111 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkPresenter;
      swift_beginAccess();
      *(v64 + v111) = 0;

      v112 = sub_1001F6890(0, 0);
      (*(v167 + 8))(v90, v170, v112);
      sub_10000C8CC(v176, &unk_100925540, &qword_1007A8140);
    }

    v113 = v177;
    v114 = v163;
    v115 = *(*&v163[v64] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel);
    if (v115)
    {
      v116 = qword_100920F88;
      v117 = v115;
      if (v116 != -1)
      {
        swift_once();
      }

      v118 = sub_100750534();
      v119 = sub_10000D0FC(v118, qword_100980BE8);
      v120 = *(v118 - 8);
      v121 = v160;
      (*(v120 + 16))(v160, v119, v118);
      (*(v120 + 56))(v121, 0, 1, v118);
      sub_100745BA4();
    }

    v122 = v168;
    sub_100744364();
    v123 = sub_100746B84();
    v126 = *(v113 + 8);
    v125 = v113 + 8;
    v124 = v126;
    (v126)(v122, v175);
    v127 = *(*&v114[v64] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton);
    if (v123 == 2)
    {
      v128 = objc_opt_self();
      v129 = v127;
      v130 = [v128 whiteColor];
    }

    else
    {
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      v131 = v127;
      v130 = sub_100753EF4();
    }

    v132 = v130;
    [v127 setTintColor:v130];

    [v64 setHidden:0];
    v133 = v169;
    sub_100744364();
    v134 = sub_100746B84();
    v135 = v175;
    (v124)(v133, v175);
    [v64 setOverrideUserInterfaceStyle:v134];
    [*(*&v114[v64] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel) _setTextColorFollowsTintColor:0];
    v136 = *(*&v114[v64] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel);
    sub_100016C60(0, &qword_100923500, UIColor_ptr);
    v137 = v136;
    v138 = sub_100753DD4();
    v176 = v124;
    v139 = v138;
    v140 = [v138 colorWithAlphaComponent:0.7];
    v177 = v125;
    v141 = v140;

    [v137 setTextColor:v141];
    v142 = *(*&v114[v64] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel);
    v143 = sub_100753DD4();
    v144 = [v143 colorWithAlphaComponent:0.7];

    [v142 setTextColor:v144];
    v145 = *(v64 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkTitleLabel);
    v146 = sub_100753DD4();
    v147 = [v146 colorWithAlphaComponent:0.7];

    [v145 setTextColor:v147];
    v62 = &stru_1008F2000;
    [v64 setNeedsLayout];
    v148 = swift_allocObject();
    v149 = v159;
    swift_unknownObjectWeakInit();
    v150 = swift_allocObject();
    v151 = v174;
    *(v150 + 2) = v148;
    *(v150 + 3) = v151;
    *(v150 + 4) = v178;
    v152 = &v149[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction];
    v153 = *&v149[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction];
    v154 = *&v149[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction + 8];
    *v152 = sub_10037C6A4;
    v152[1] = v150;

    sub_1000164A8(v153, v154);

    v155 = v164;
    [v164 setHidden:0];
    sub_100744364();
    v156 = sub_100746B84();
    (v176)(v133, v135);
    v157 = v155;
    v4 = v149;
    [v157 setOverrideUserInterfaceStyle:v156];
  }

  else
  {
    v108 = &v4[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction];
    v109 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction];
    v110 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction + 8];
    *v108 = 0;
    *(v108 + 1) = 0;
    [*&v4[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupView] setHidden:{1, sub_1000164A8(v109, v110)}];
    [v46 setHidden:1];
  }

  sub_100327AE4();
  return [v4 v62[51].attr];
}