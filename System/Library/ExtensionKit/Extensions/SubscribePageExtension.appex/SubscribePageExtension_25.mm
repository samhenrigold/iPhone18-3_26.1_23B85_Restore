void sub_1002C091C()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
  if (v2)
  {
    sub_100750FC4();
    if (swift_dynamicCastClass())
    {
      v3 = v2;
      sub_10074B974();

      v4 = *&v0[v1];
      *&v0[v1] = 0;

      v5 = [v0 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];

        sub_10074B964();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1002C0A04(uint64_t a1)
{
  v2 = v1;
  sub_100751094();
  sub_1002C2804(&qword_100930B90, 255, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for BasePresenter);
  swift_errorRetain();

  v3 = sub_100751054();
  v4 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
  v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
  sub_10074B974();

  v6 = *&v2[v4];
  *&v2[v4] = v3;
  v9 = v3;

  v7 = [v2 view];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];

    sub_10074B964();
  }

  else
  {
    __break(1u);
  }
}

void sub_1002C0B84()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_emptyStateView;
  v3 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_emptyStateView];
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

  sub_1002C2D14();
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_searchBar] setHidden:0];
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1002C22F8;
  *(v9 + 24) = v8;
  v11[4] = sub_1000C0C28;
  v11[5] = v9;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10011B528;
  v11[3] = &unk_10086FC40;
  v10 = _Block_copy(v11);

  [v7 performWithoutAnimation:v10];
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }
}

void sub_1002C0D78(uint64_t a1)
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

void sub_1002C0E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v7 = v6;
  v14 = [v6 collectionView];
  if (v14)
  {
    v15 = v14;
    [v14 setHidden:1];
  }

  v16 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_navigationBarPalettePresenter];
  if (a5)
  {
    sub_1002C2D14();
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

  [*&v7[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_searchBar] setHidden:(a6 & 1) == 0];
  v20 = objc_allocWithZone(type metadata accessor for EmptyStateView(0));

  v21 = sub_100421C68(a1, a2, a3, a4);
  v22 = OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_emptyStateView;
  v23 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_emptyStateView];
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

void sub_1002C1084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1007417F4();
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
    *(v14 + 16) = sub_1002C2230;
    *(v14 + 24) = v13;
    aBlock[4] = sub_100045E0C;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10011B528;
    aBlock[3] = &unk_10086FBC8;
    v15 = _Block_copy(aBlock);
    v16 = v3;

    [v11 performBatchUpdates:v15 completion:0];
    _Block_release(v15);
  }
}

void sub_1002C129C(void (*a1)(void), uint64_t a2, void *a3, uint64_t a4)
{
  a1();
  v6 = [a3 collectionView];
  if (v6)
  {
    v7 = v6;
    sub_10000C518(&unk_1009405F0, &qword_1007A6410);
    v8 = sub_1007417F4();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1007A5A00;
    (*(v9 + 16))(v11 + v10, a4, v8);
    isa = sub_100753294().super.isa;

    [v7 deleteItemsAtIndexPaths:isa];
  }
}

void sub_1002C1410(uint64_t a1, uint64_t a2)
{
  v4 = sub_1007417F4();
  v69 = *(v4 - 8);
  v70 = v4;
  __chkstk_darwin(v4);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = &v65 - v8;
  v9 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v9 - 8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v67 = &v65 - v13;
  __chkstk_darwin(v14);
  v16 = &v65 - v15;
  v17 = sub_100752294();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100016B4C(a2, v103, &unk_100923520, &qword_1007A5A70);
  if (v104)
  {
    sub_100016C60(0, &qword_100922300, UIView_ptr);
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
      sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
      *v20 = sub_100753774();
      (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
      v31 = sub_1007522C4();
      (*(v18 + 8))(v20, v17);
      if (v31)
      {
        v87 = xmmword_100931330;
        v88 = xmmword_100931340;
        v89 = xmmword_100931350;
        v85 = xmmword_100931310;
        v86 = xmmword_100931320;
        v93 = v81;
        v94 = v82;
        v95 = v83;
        v91 = v79;
        v92 = v80;
        v97 = xmmword_100931310;
        v98 = xmmword_100931320;
        v100 = xmmword_100931340;
        v101 = xmmword_100931350;
        v90 = qword_100931360;
        v96 = v84;
        v102 = qword_100931360;
        v99 = xmmword_100931330;
        sub_100016B4C(&v85, &v73, &unk_1009308C0, &unk_1007A8BB0);
        xmmword_100931330 = v93;
        xmmword_100931340 = v94;
        xmmword_100931350 = v95;
        qword_100931360 = v96;
        xmmword_100931310 = v91;
        xmmword_100931320 = v92;
        sub_10000C8CC(&v97, &unk_1009308C0, &unk_1007A8BB0);
        v32 = *&v71[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph];
        v33 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
        sub_1001664D8(&v79, &v73);
        sub_1007526C4();
        v34 = *(v33 - 8);
        if ((*(v34 + 48))(v16, 1, v33) == 1)
        {
          sub_10000C8CC(v16, &unk_100923960, &qword_1007A6240);
        }

        else
        {
          sub_1003C0E00(a1, 1, v32, v16);

          (*(v34 + 8))(v16, v33);
        }

        v75 = xmmword_100931330;
        v76 = xmmword_100931340;
        v77 = xmmword_100931350;
        v78 = qword_100931360;
        v73 = xmmword_100931310;
        v74 = xmmword_100931320;
        xmmword_100931310 = v85;
        xmmword_100931320 = v86;
        xmmword_100931330 = v87;
        xmmword_100931340 = v88;
        xmmword_100931350 = v89;
        qword_100931360 = v90;
        sub_10000C8CC(&v73, &unk_1009308C0, &unk_1007A8BB0);
        sub_100166534(&v79);

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
    sub_10000C8CC(v103, &unk_100923520, &qword_1007A5A70);
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
    v61 = *&v71[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph];
    v62 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
    sub_1007526C4();
    v63 = *(v62 - 8);
    if ((*(v63 + 48))(v11, 1, v62) == 1)
    {
      sub_10000C8CC(v11, &unk_100923960, &qword_1007A6240);
    }

    else
    {
      sub_1003C0E00(v66, 1, v61, v11);

      (*(v63 + 8))(v11, v62);
    }

    return;
  }

  v38 = v70;
  v39 = sub_1007532A4();

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
  isa = sub_100741704().super.isa;
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
  sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
  *v20 = sub_100753774();
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v54 = sub_1007522C4();
  (*(v18 + 8))(v20, v17);
  if ((v54 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v87 = xmmword_100931330;
  v88 = xmmword_100931340;
  v89 = xmmword_100931350;
  v85 = xmmword_100931310;
  v86 = xmmword_100931320;
  v93 = v81;
  v94 = v82;
  v95 = v83;
  v91 = v79;
  v92 = v80;
  v97 = xmmword_100931310;
  v98 = xmmword_100931320;
  v100 = xmmword_100931340;
  v101 = xmmword_100931350;
  v90 = qword_100931360;
  v96 = v84;
  v102 = qword_100931360;
  v99 = xmmword_100931330;
  sub_100016B4C(&v85, &v73, &unk_1009308C0, &unk_1007A8BB0);
  xmmword_100931330 = v93;
  xmmword_100931340 = v94;
  xmmword_100931350 = v95;
  qword_100931360 = v96;
  xmmword_100931310 = v91;
  xmmword_100931320 = v92;
  sub_10000C8CC(&v97, &unk_1009308C0, &unk_1007A8BB0);
  v55 = *&v71[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph];
  v56 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
  sub_1001664D8(&v79, &v73);
  v57 = v67;
  sub_1007526C4();
  v58 = *(v56 - 8);
  v59 = (*(v58 + 48))(v57, 1, v56);
  v60 = v68;
  if (v59 == 1)
  {
    sub_10000C8CC(v57, &unk_100923960, &qword_1007A6240);
  }

  else
  {
    sub_1003C0E00(v66, 1, v55, v57);

    (*(v58 + 8))(v57, v56);
  }

  v64 = v70;
  v75 = xmmword_100931330;
  v76 = xmmword_100931340;
  v77 = xmmword_100931350;
  v78 = qword_100931360;
  v73 = xmmword_100931310;
  v74 = xmmword_100931320;
  xmmword_100931310 = v85;
  xmmword_100931320 = v86;
  xmmword_100931330 = v87;
  xmmword_100931340 = v88;
  xmmword_100931350 = v89;
  qword_100931360 = v90;
  sub_10000C8CC(&v73, &unk_1009308C0, &unk_1007A8BB0);
  sub_100166534(&v79);

  (*(v69 + 8))(v60, v64);
}

void sub_1002C1E68()
{

  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_flowPreviewing);
}

uint64_t sub_1002C216C()
{
  v1 = sub_1007417F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1002C2230()
{
  v1 = *(sub_1007417F4() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_1002C129C(v2, v3, v4, v5);
}

double sub_1002C22A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1002C22C0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1002C2300(void *a1, uint64_t a2)
{
  v36 = a2;
  v35 = sub_10000C518(&qword_100930BC0, &qword_1007C6B40);
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v26 - v4;
  v33 = sub_1007417F4();
  v5 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v31 = &v26 - v9;
  v37 = a1;
  v10 = [a1 visibleCells];
  sub_100016C60(0, &qword_100925390, UICollectionViewCell_ptr);
  v11 = sub_1007532A4();

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

  v12 = sub_100754664();
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
        v16 = sub_100754574();
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
        sub_100741744();

        v21 = v11;
        v22 = v31;
        (*v29)(v31, v19, v15);
        v38 = sub_100741784();
        sub_1007544E4();
        v23 = v34;
        sub_100752EE4();
        sub_100752AD4();

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

uint64_t sub_1002C2694()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

id sub_1002C26D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1002C2804(&qword_100930BA8, 255, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
  v9 = sub_10000C518(&qword_100930BB0, &qword_1007B79A8);
  v10 = objc_allocWithZone(v9);
  v11 = &v10[qword_100925588];
  *&v10[qword_100925588 + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v12 = &v10[qword_100925580];
  *v12 = a3;
  *(v12 + 1) = a4;
  *(v11 + 1) = v8;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *&v10[qword_100925598] = a5;
  v14.receiver = v10;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, "init");
}

uint64_t sub_1002C2804(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_1002C2870(void *a1)
{
  if (a1)
  {
    type metadata accessor for TitleHeaderView(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = UICollectionElementKindSectionHeader;
    sub_1007539D4();
    v4 = sub_100753064();

    [a1 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v3 withReuseIdentifier:v4];

    type metadata accessor for InteractiveTitleHeaderView(0);
    v5 = swift_getObjCClassFromMetadata();
    v6 = v3;
    sub_1007539D4();
    v7 = sub_100753064();

    [a1 registerClass:v5 forSupplementaryViewOfKind:v6 withReuseIdentifier:v7];

    type metadata accessor for InfiniteScrollFooterView();
    v8 = swift_getObjCClassFromMetadata();
    v9 = UICollectionElementKindSectionFooter;
    sub_1007539D4();
    v10 = sub_100753064();

    [a1 registerClass:v8 forSupplementaryViewOfKind:v9 withReuseIdentifier:v10];

    sub_100016C60(0, &qword_10092DB20, UICollectionReusableView_ptr);
    v11 = swift_getObjCClassFromMetadata();
    v12 = sub_100753064();
    v13 = sub_100753064();
    [a1 registerClass:v11 forSupplementaryViewOfKind:v12 withReuseIdentifier:v13];

    v14 = sub_100753064();
    v15 = sub_100753064();
    [a1 registerClass:v11 forSupplementaryViewOfKind:v14 withReuseIdentifier:v15];
  }
}

uint64_t sub_1002C2AB4()
{
  sub_10000C620((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

double sub_1002C2AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {

    return sub_1000164A8(a3, a4);
  }

  return result;
}

void sub_1002C2B68(void *a1, uint64_t a2, char a3)
{
  _s18PaletteContentViewCMa();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = &v7[OBJC_IVAR____TtCC22SubscribePageExtension29NavigationBarPalettePresenter18PaletteContentView_didLayoutSubviews];
  v10 = *&v7[OBJC_IVAR____TtCC22SubscribePageExtension29NavigationBarPalettePresenter18PaletteContentView_didLayoutSubviews];
  v11 = *&v7[OBJC_IVAR____TtCC22SubscribePageExtension29NavigationBarPalettePresenter18PaletteContentView_didLayoutSubviews + 8];
  *v9 = sub_1002C3938;
  v9[1] = v8;

  sub_1000164A8(v10, v11);

  v12 = [objc_allocWithZone(_UINavigationBarPalette) initWithContentView:v7];
  [v12 _setDisplaysWhenSearchActive:a3 & 1];
  [v12 _setContentViewMarginType:a2];
  [v12 setClipsToBounds:0];
  *(v3 + 65) = 0;
  [v12 setPreferredHeight:1.0];
  [v12 setMinimumHeight:0.0];
  [v12 setPreferredHeight:0.0];
  v13 = v12;
  [a1 _setBottomPalette:v13];

  swift_unknownObjectWeakAssign();
}

void sub_1002C2D14()
{
  if (*(v0 + 24))
  {
    if ((*(v0 + 65) & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v2 = *(v0 + 32);
        if (v2)
        {
          v3 = *(v0 + 64);
          v5 = *(v0 + 48);
          v4 = *(v0 + 56);
          v19 = Strong;

          sub_10001B5AC(v5, v4);
          v6 = [v19 contentView];
          sub_100009D34();
          sub_1007477B4();
          v8 = v7;
          v10 = v9;
          v12 = v11;
          v14 = v13;

          v21.origin.x = v8;
          v21.origin.y = v10;
          v21.size.width = v12;
          v21.size.height = v14;
          Width = CGRectGetWidth(v21);
          v16 = [v19 contentView];
          v17 = v2(Width);

          [v19 setPreferredHeight:v17];
          v18 = 0.0;
          if ((v3 & 1) == 0)
          {
            v18 = v17;
          }

          [v19 setMinimumHeight:v18];

          sub_1000164A8(v5, v4);
          *(v0 + 65) = 1;
        }

        else
        {
        }
      }
    }
  }
}

double sub_1002C2EC8(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1002C30EC(result);
  }

  return result;
}

void sub_1002C2F20()
{
  if (*(v0 + 24))
  {
    if (*(v0 + 65) == 1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v2 = Strong;
        v3 = *(v0 + 32);
        if (v3)
        {
          v5 = *(v0 + 48);
          v4 = *(v0 + 56);
          v6 = *(v0 + 64);
          v21 = Strong;

          sub_10001B5AC(v5, v4);
          v7 = [v21 contentView];
          sub_100009D34();
          sub_1007477B4();
          v9 = v8;
          v11 = v10;
          v13 = v12;
          v15 = v14;

          v23.origin.x = v9;
          v23.origin.y = v11;
          v23.size.width = v13;
          v23.size.height = v15;
          Width = CGRectGetWidth(v23);
          v17 = [v21 contentView];
          v18 = v3(Width);

          [v21 preferredHeight];
          if (v19 != v18)
          {
            [v21 setPreferredHeight:v18];
            [v21 setMinimumHeight:v18];
            if (v6)
            {
              [v21 setMinimumHeight:0.0];
            }

            sub_1002C30EC(v20);
          }

          sub_1000164A8(v5, v4);
          v2 = v21;
        }

        _objc_release_x1(Strong, v2);
      }
    }
  }
}

double sub_1002C30EC(double result)
{
  v2 = *(v1 + 24);
  if (!v2)
  {
    return result;
  }

  if (*(v1 + 65) != 1)
  {
    return result;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return result;
  }

  v4 = *(v1 + 32);
  if (!v4)
  {
    goto LABEL_15;
  }

  v27 = Strong;
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  if (!v5)
  {
    sub_1002C38B4(v4, *(v1 + 40), 0, *(v1 + 56));
    v25 = v2;
    [v25 setAlpha:1.0];

    Strong = v27;
LABEL_15:

    return result;
  }

  sub_1002C38B4(v4, *(v1 + 40), *(v1 + 48), *(v1 + 56));
  sub_10001B5AC(v5, v6);
  v7 = [v27 contentView];
  sub_100009D34();
  sub_1007477B4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v29.origin.x = v9;
  v29.origin.y = v11;
  v29.size.width = v13;
  v29.size.height = v15;
  Width = CGRectGetWidth(v29);
  v17 = [v27 contentView];
  v18 = v4(Width);

  v19 = [v27 contentView];
  v20 = v5(Width);

  [v27 frame];
  Height = CGRectGetHeight(v30);
  v22 = *(v1 + 24);
  if (v22)
  {
    v23 = (Height - v20) / (v18 - v20);
    if (v23 <= 0.0)
    {
      v23 = 0.0;
    }

    if (v23 <= 1.0)
    {
      v24 = v23;
    }

    else
    {
      v24 = 1.0;
    }

    v26 = v22;
    [v26 setAlpha:v24];

    sub_1000164A8(v5, v6);

    sub_1000164A8(v5, v6);
    Strong = v26;
    goto LABEL_15;
  }

  sub_1000164A8(v5, v6);

  return sub_1000164A8(v5, v6);
}

void sub_1002C33A0(void *a1)
{
  if (*(v1 + 24))
  {
    if ((*(v1 + 65) & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        v5 = *(v1 + 32);
        if (!v5)
        {

          if (!*(v1 + 32))
          {
            return;
          }

          goto LABEL_9;
        }

        v24 = *(v1 + 64);
        v7 = *(v1 + 48);
        v6 = *(v1 + 56);

        sub_10001B5AC(v7, v6);
        v8 = [v4 contentView];
        sub_100009D34();
        sub_1007477B4();
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;

        v26.origin.x = v10;
        v26.origin.y = v12;
        v26.size.width = v14;
        v26.size.height = v16;
        Width = CGRectGetWidth(v26);
        v18 = [v4 contentView];
        v19 = v5(Width);

        [v4 setPreferredHeight:v19];
        v20 = 0.0;
        if ((v24 & 1) == 0)
        {
          v20 = v19;
        }

        [v4 setMinimumHeight:v20];

        sub_1000164A8(v7, v6);
        *(v1 + 65) = 1;
      }
    }
  }

  if (!*(v1 + 32))
  {
    return;
  }

LABEL_9:
  v22 = *(v1 + 48);
  v21 = *(v1 + 56);
  v23 = *(v1 + 64);

  sub_10001B5AC(v22, v21);
  if (v23)
  {
    [a1 _scrollToTopIfPossible:1];
  }

  sub_1000164A8(v22, v21);
}

void sub_1002C35BC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 32);
    if (v3)
    {
      v4 = *(v0 + 48);
      v5 = *(v0 + 56);
      v18 = v2;
      if (*(v0 + 64))
      {
        v6 = *(v0 + 24);
        if (v6)
        {

          sub_10001B5AC(v4, v5);
          v7 = [v6 isHidden];
          Height = 0.0;
          if ((v7 & 1) == 0)
          {
            v9 = [v18 contentView];
            [v9 frame];
            v11 = v10;
            v13 = v12;
            v15 = v14;
            v17 = v16;

            v20.origin.x = v11;
            v20.origin.y = v13;
            v20.size.width = v15;
            v20.size.height = v17;
            Height = CGRectGetHeight(v20);
          }
        }

        else
        {

          sub_10001B5AC(v4, v5);
          Height = 0.0;
        }

        [v18 setMinimumHeight:Height];
        [v18 minimumHeight];
        [v18 setPreferredHeight:?];
      }

      else
      {
        sub_1002C38B4(v3, *(v0 + 40), v4, v5);
      }

      sub_1000164A8(v4, v5);
    }

    else
    {

      _objc_release_x1(0, v2);
    }
  }
}

uint64_t sub_1002C3778()
{
  swift_unknownObjectWeakDestroy();

  sub_1002C2AF4(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_1002C37EC(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1002C3804(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1002C3818(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002C3860(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002C38B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    return sub_10001B5AC(a3, a4);
  }

  return result;
}

uint64_t sub_1002C3900()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1002C3954()
{
  result = qword_100930C90;
  if (!qword_100930C90)
  {
    sub_100747274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100930C90);
  }

  return result;
}

void sub_1002C39AC(uint64_t a1, void **a2)
{
  v98 = a2;
  v103 = a1;
  v3 = sub_10000C518(&qword_100940840, &qword_1007B7B30);
  __chkstk_darwin(v3 - 8);
  v92 = v79 - v4;
  v94 = sub_100742284();
  v93 = *(v94 - 1);
  __chkstk_darwin(v94);
  v6 = v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_10074ED34();
  v95 = *(v99 - 8);
  __chkstk_darwin(v99);
  v8 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_10074F344();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v10 = v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074F164();
  v89 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10074F284();
  v86 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_100752CD4();
  v97 = *(v100 - 8);
  v17 = *(v97 + 64);
  __chkstk_darwin(v100);
  v90 = v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v101 = v79 - v19;
  v91 = sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
  v102 = sub_100752DE4();
  v96 = v2;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v21 = [Strong view];

  if (!v21)
  {
    __break(1u);
    return;
  }

  v22 = [v21 window];

  if (!v22 || (v23 = [v22 windowScene], v22, !v23))
  {
    sub_1002C4F40();
    swift_allocError();
    sub_100752DA4();

    return;
  }

  v85 = v23;
  v24 = sub_100752764();
  sub_100752D34();
  sub_1002C4F94();
  v83 = v24;
  sub_100752D34();
  v84 = aBlock;
  v25 = sub_100747264();
  if (v26)
  {
    v81 = v25;
    v82 = v26;
    v27 = sub_100747234();
    if (v28)
    {
      v79[1] = v27;
      v79[2] = v28;
      if (sub_100747254())
      {
        sub_1007496A4();
        if (sub_100747254())
        {
          v29 = sub_10074F364();

          sub_100747FA4();
          v30 = sub_10074F274();
          v79[0] = v31;
          (*(v86 + 8))(v16, v14);
          aBlock = v30;
          v110 = v79[0];
          v86 = v29;
          v32 = sub_100747FE4();
          if ((v33 & 1) == 0)
          {
            v108._countAndFlagsBits = 45;
            v108._object = 0xE100000000000000;
            v106 = v32;
            v115._countAndFlagsBits = sub_100754714();
            sub_1007531B4(v115);

            sub_1007531B4(v108);
          }

          sub_10074F3C4();
          v34 = sub_10074F154();
          v36 = v35;
          v89[1](v13, v11);
          v108._countAndFlagsBits = v34;
          v108._object = v36;
          v106 = 8217467;
          v107 = 0xE300000000000000;
          v104 = aBlock;
          v105 = v110;
          sub_1000D5C0C();
          v37 = sub_1007542F4();
          v39 = v38;

          v108._countAndFlagsBits = v37;
          v108._object = v39;
          v106 = 8218235;
          v107 = 0xE300000000000000;
          sub_100747FD4();
          v40 = sub_10074F334();
          v42 = v41;
          (*(v87 + 8))(v10, v88);
          v104 = v40;
          v105 = v42;
          sub_1007542F4();
        }

        else
        {
          sub_10074F3C4();
          sub_10074F154();
          v89[1](v13, v11);
        }

        v43 = objc_allocWithZone(sub_100750264());
        v44 = sub_100750254();

        v89 = v44;
        v45 = v44;
        goto LABEL_18;
      }
    }
  }

  v89 = 0;
LABEL_18:
  sub_10000C518(&unk_100925780, qword_1007AC630);
  sub_100752D34();
  v46 = aBlock;
  swift_getObjectType();
  sub_100747244();
  v98 = v46;
  v47 = sub_1007424E4();
  v48 = *(v95 + 8);
  v48(v8, v99);
  swift_getObjectType();
  v95 = v47;
  sub_1007423D4();
  v49 = v93;
  v50 = v94;
  if ((*(v93 + 88))(v6, v94) == enum case for LegacyAppState.openable(_:))
  {
    (*(v49 + 96))(v6, v50);
    v51 = *&v6[*(sub_10000C518(&unk_100930D20, &unk_1007AB240) + 48)];
    v52 = sub_100748314();
    (*(*(v52 - 8) + 8))(v6, v52);
    v53 = [v51 stringValue];
    sub_100753094();
  }

  else
  {
    (*(v49 + 8))(v6, v50);
  }

  sub_100749694();
  v94 = v84;
  sub_100747244();
  sub_10074ECF4();
  v48(v8, v99);
  v54 = objc_allocWithZone(sub_100750224());
  v55 = v89;
  v56 = sub_100750214();
  v57 = v96;
  v58 = swift_unknownObjectUnownedLoadStrong();
  v59 = [v58 presentedViewController];

  if (!v59)
  {
    goto LABEL_24;
  }

  if ([v59 isBeingDismissed])
  {

LABEL_24:
    v60 = v101;
    v61 = sub_100752C94();
    v62 = sub_100752DE4();
    v63 = sub_1007533D4();
    v64 = v92;
    (*(*(v63 - 8) + 56))(v92, 1, 1, v63);
    v65 = swift_allocObject();
    v65[2] = 0;
    v65[3] = 0;
    v66 = v85;
    v65[4] = v85;
    v65[5] = v56;
    v65[6] = v61;
    v65[7] = v62;
    v67 = v66;
    v68 = v56;

    sub_1000A0C18(0, 0, v64, &unk_1007B7B48, v65);

    sub_100752D54();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v97 + 8))(v60, v100);
    return;
  }

  sub_1002C50B8(v57, &v108);
  v69 = v97;
  v70 = v90;
  v71 = v100;
  (*(v97 + 16))(v90, v101, v100);
  v72 = (*(v69 + 80) + 40) & ~*(v69 + 80);
  v73 = (v17 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  sub_1002C51D8(&v108, v74 + 16);
  v75 = v85;
  *(v74 + 24) = v85;
  *(v74 + 32) = v56;
  (*(v69 + 32))(v74 + v72, v70, v71);
  *(v74 + v73) = v102;
  v113 = sub_1002C5210;
  v114 = v74;
  aBlock = _NSConcreteStackBlock;
  v110 = 1107296256;
  v111 = sub_1000CF7B0;
  v112 = &unk_10086FE60;
  v76 = _Block_copy(&aBlock);
  v77 = v75;
  v78 = v56;

  [v59 dismissViewControllerAnimated:1 completion:v76];
  _Block_release(v76);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v69 + 8))(v101, v71);
}

double sub_1002C4790(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10000C518(&qword_100940840, &qword_1007B7B30);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_100752C94();
  v11 = sub_100752DE4();
  v12 = sub_1007533D4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = v10;
  v13[7] = v11;
  v14 = a2;
  v15 = a3;

  sub_1000A0C18(0, 0, v9, &unk_1007B7B58, v13);

  sub_100752D54();

  return result;
}

uint64_t sub_1002C4910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v8 = sub_100752624();
  v7[14] = v8;
  v7[15] = *(v8 - 8);
  v7[16] = swift_task_alloc();
  v9 = sub_100750204();
  v7[17] = v9;
  v7[18] = *(v9 - 8);
  v7[19] = swift_task_alloc();

  return _swift_task_switch(sub_1002C4A30, 0, 0);
}

uint64_t sub_1002C4A30()
{
  sub_100750244();
  swift_allocObject();
  v0[20] = sub_100750234();
  v7 = (&async function pointer to dispatch thunk of ReviewCoordinator.presentReviewComposer(scene:context:bag:) + async function pointer to dispatch thunk of ReviewCoordinator.presentReviewComposer(scene:context:bag:));
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_1002C4B04;
  v2 = v0[19];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];

  return v7(v2, v5, v3, v4);
}

uint64_t sub_1002C4B04()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1002C4D08;
  }

  else
  {
    (*(v2[18] + 8))(v2[19], v2[17]);
    v3 = sub_1002C4C30;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002C4C30()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v2 + 104))(v1, enum case for ActionOutcome.performed(_:), v3);
  sub_100752DB4();

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002C4D08()
{

  if (qword_100921EE0 != -1)
  {
    swift_once();
  }

  v1 = sub_100752E44();
  sub_10000D0FC(v1, qword_100983318);
  sub_10000C518(&qword_100923930, &qword_1007A6B60);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_1007523A4();
  swift_getErrorValue();
  v2 = v0[6];
  v3 = v0[7];
  v0[5] = v3;
  v4 = sub_10000D134(v0 + 2);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  sub_100752444();
  sub_1000277BC((v0 + 2));
  sub_100752D04();

  sub_100752DA4();

  v5 = v0[1];

  return v5();
}

unint64_t sub_1002C4F40()
{
  result = qword_100930CA8;
  if (!qword_100930CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100930CA8);
  }

  return result;
}

unint64_t sub_1002C4F94()
{
  result = qword_100930CB0;
  if (!qword_100930CB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100930CB0);
  }

  return result;
}

uint64_t sub_1002C4FE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000A4868;

  return sub_1002C4910(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1002C50F0(__n128 a1)
{
  v2 = sub_100752CD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectUnownedDestroy();

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v6 + 8, v4 | 7);
}

double sub_1002C5210(__n128 a1)
{
  v2 = *(sub_100752CD4() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);

  return sub_1002C4790(v1 + 16, v5, v6, v1 + v3, v4);
}

double sub_1002C52A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1002C52BC()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1002C5314(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000A27FC;

  return sub_1002C4910(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_1002C53FC()
{
  result = qword_100930D30;
  if (!qword_100930D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100930D30);
  }

  return result;
}

uint64_t type metadata accessor for ProductReviewSelectionHandlerCollectionElementsObserver(uint64_t a1)
{
  result = qword_100930D58;
  if (!qword_100930D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1002C5500()
{
  v1 = qword_100930D50;
  v2 = *(v0 + qword_100930D50);
  if (v2)
  {
    v3 = *(v0 + qword_100930D50);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for ComponentViewOverflowTransitioning(0)) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1002C5574(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4)
{
  v116 = a4;
  v113 = a3;
  v114 = a2;
  v112 = a1;
  v97 = sub_100742CF4();
  v95 = *(v97 - 8);
  __chkstk_darwin(v97);
  v98 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1007493D4();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v96 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_10074A304();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v94 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100752614();
  __chkstk_darwin(v8 - 8);
  v91 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&qword_10092C1F0, &unk_1007A8F60);
  __chkstk_darwin(v10 - 8);
  v104 = &v81 - v11;
  v12 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v12 - 8);
  v103 = &v81 - v13;
  v88 = sub_10074F4D4();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v102 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v15 - 8);
  v107 = &v81 - v16;
  v17 = sub_10000C518(&unk_100923C00, qword_1007AB3D0);
  __chkstk_darwin(v17 - 8);
  v101 = &v81 - v18;
  v19 = sub_1007469A4();
  v110 = *(v19 - 8);
  v111 = v19;
  __chkstk_darwin(v19);
  v100 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v106 = &v81 - v22;
  v23 = sub_100744604();
  v108 = *(v23 - 8);
  v109 = v23;
  __chkstk_darwin(v23);
  v99 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v81 - v26;
  v28 = sub_10074F704();
  v105 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10074EAB4();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v81 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v81 - v36;
  v115 = v4;
  sub_10000C888(&v4[qword_100930D48], *&v4[qword_100930D48 + 24]);
  v38 = v114;
  v39 = sub_10074D754();
  if (!v39 || (v43 = v39, v83 = v42, v84 = v41, v85 = v40, sub_100744624(), sub_1002C6680(&qword_100927FE0, &type metadata accessor for ProductReview, &protocol conformance descriptor for ProductRatingsAndReviewsComponent), sub_1007468B4(), !v119))
  {
    sub_10074E284();
    v52 = sub_10074E294();
    v52(v112, v38, v113, v116);
    return;
  }

  v82 = v43;
  v86 = v119;
  swift_getKeyPath();
  sub_100746914();

  sub_10074EA54();
  sub_1002C6680(&unk_100925360, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v44 = sub_100754324();
  v45 = *(v32 + 8);
  v45(v34, v31);
  v45(v37, v31);
  if (v44)
  {
    swift_getKeyPath();
    sub_100746914();

    sub_10074F594();
    v47 = v46;
    (*(v105 + 8))(v30, v28);
    v48 = v116;
    v50 = v110;
    v49 = v111;
    v51 = v38;
    if (v47 <= 1.0)
    {
LABEL_11:
      sub_10074E284();
      v76 = sub_10074E294();
      v76(v112, v51, v113, v48);

      return;
    }
  }

  else
  {
    sub_100744614();
    v54 = v108;
    v53 = v109;
    v55 = (*(v108 + 88))(v27, v109);
    v56 = enum case for ProductReview.ReviewSource.editorsChoice(_:);
    (*(v54 + 8))(v27, v53);
    v48 = v116;
    v50 = v110;
    v49 = v111;
    v51 = v38;
    if (v55 == v56)
    {
      goto LABEL_11;
    }

    swift_getKeyPath();
    sub_100746914();

    v57 = v119;
    v58 = sub_1007537E4();

    if ((v58 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v59 = v99;
  sub_100744614();
  v61 = v108;
  v60 = v109;
  v62 = (*(v108 + 88))(v59, v109) == enum case for ProductReview.ReviewSource.reviewSummary(_:);
  (*(v61 + 8))(v59, v60);
  v63 = v106;
  sub_100746894();
  v64 = v100;
  (*(v50 + 16))(v100, v63, v49);
  v65 = sub_1006B94B0(v48, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000011, 0x8000000100775610);
  v114 = type metadata accessor for ProductPageReviewsOverflowViewController(0);
  v66 = objc_allocWithZone(v114);
  v67 = sub_1006600B8(v64, v82, v85, v84, v83, v65, v62);

  v68 = sub_1002C5500();
  v69 = v101;
  sub_100746994();
  v70 = sub_1007417F4();
  (*(*(v70 - 8) + 56))(v69, 0, 1, v70);
  v71 = OBJC_IVAR____TtC22SubscribePageExtension34ComponentViewOverflowTransitioning_selectedIndexPath;
  swift_beginAccess();
  sub_10003E1A0(v69, &v68[v71]);
  swift_endAccess();
  v68[OBJC_IVAR____TtC22SubscribePageExtension34ComponentViewOverflowTransitioning_isTransitioningFromContainer] = 1;
  v72 = v67;
  [v72 setTransitioningDelegate:v68];
  [v72 setModalPresentationStyle:4];

  v73 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
  v74 = v107;
  sub_1007526C4();
  v75 = *(v73 - 8);
  if ((*(v75 + 48))(v74, 1, v73) == 1)
  {
    (*(v50 + 8))(v63, v49);

    sub_100052F00(v74);
  }

  else
  {
    v121 = 0;
    v119 = 0u;
    v120 = 0u;
    (*(v87 + 104))(v102, enum case for FlowPage.viewController(_:), v88);
    v77 = sub_100741264();
    (*(*(v77 - 8) + 56))(v103, 1, 1, v77);
    v78 = sub_100743FE4();
    (*(*(v78 - 8) + 56))(v104, 1, 1, v78);
    v118 = v114;
    v117 = v72;
    v115 = v72;
    sub_1007525F4();
    (*(v89 + 104))(v94, enum case for FlowPresentationContext.infer(_:), v90);
    (*(v92 + 104))(v96, enum case for FlowAnimationBehavior.infer(_:), v93);
    (*(v95 + 104))(v98, enum case for FlowOrigin.inapp(_:), v97);
    sub_100752B44();
    sub_100742CD4();
    swift_allocObject();
    v79 = sub_100742C84();
    v80 = v107;
    sub_1003C1424(v79, 1, v116, v107);

    (*(v50 + 8))(v106, v111);
    (*(v75 + 8))(v80, v73);
  }
}

uint64_t sub_1002C6440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100749A94();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_100749A14();
  sub_100729558(v10, v7);
  v11 = *(v5 + 8);
  v11(v7, v4);
  v11(v10, v4);
  return (*(v5 + 16))(a2, a1, v4);
}

void sub_1002C65A8()
{
  swift_unknownObjectWeakDestroy();
  sub_10000C620((v0 + qword_100930D48));
  v1 = *(v0 + qword_100930D50);
}

uint64_t sub_1002C65F8()
{
  v0 = sub_10074E2A4();

  swift_unknownObjectWeakDestroy();
  sub_10000C620((v0 + qword_100930D48));
  v1 = *(v0 + qword_100930D50);

  return swift_deallocClassInstance();
}

uint64_t sub_1002C6680(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AppPromotionCardLayout.init(metrics:shadowView:contentView:borderView:mediaContentView:artworkView:artworkFallbackView:videoView:gradientBlurView:kindLabel:titleLabel:subtitleView:separatorView:lockupContainerView:lockupView:includeSubtitle:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 *a11, __int128 *a12, __int128 *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_10019A65C(a1, a9);
  v22 = type metadata accessor for AppPromotionCardLayout(0);
  sub_100012160(a2, a9 + v22[5]);
  sub_100012160(a3, a9 + v22[6]);
  sub_100012160(a4, a9 + v22[7]);
  sub_100012160(a5, a9 + v22[8]);
  sub_100012160(a6, a9 + v22[9]);
  v23 = a9 + v22[11];
  v24 = *(a8 + 16);
  *v23 = *a8;
  *(v23 + 16) = v24;
  *(v23 + 32) = *(a8 + 32);
  v25 = a9 + v22[12];
  v26 = *(a10 + 16);
  *v25 = *a10;
  *(v25 + 16) = v26;
  *(v25 + 32) = *(a10 + 32);
  sub_100012160(a11, a9 + v22[13]);
  sub_100012160(a12, a9 + v22[14]);
  sub_100012160(a13, a9 + v22[15]);
  v27 = a9 + v22[16];
  v28 = *(a14 + 16);
  *v27 = *a14;
  *(v27 + 16) = v28;
  *(v27 + 32) = *(a14 + 32);
  v29 = a9 + v22[17];
  v30 = *(a15 + 16);
  *v29 = *a15;
  *(v29 + 16) = v30;
  *(v29 + 32) = *(a15 + 32);
  v31 = a9 + v22[18];
  v32 = *(a16 + 16);
  *v31 = *a16;
  *(v31 + 16) = v32;
  *(v31 + 32) = *(a16 + 32);
  *(a9 + v22[19]) = a17;
  v33 = a9 + v22[10];

  return sub_100012160(a7, v33);
}

uint64_t AppPromotionCardLayout.Metrics.artworkAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 20);
  v4 = sub_1007504F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppPromotionCardLayout.Metrics.artworkAspectRatio.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 20);
  v4 = sub_1007504F4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppPromotionCardLayout.Metrics.kindTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 24);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppPromotionCardLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 28);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppPromotionCardLayout.Metrics.subtitleTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 32);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppPromotionCardLayout.Metrics.textBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 36);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppPromotionCardLayout.Metrics.init(contentHorizontalMargin:artworkAspectRatio:kindTopSpace:titleTopSpace:subtitleTopSpace:textBottomSpace:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  sub_100012160(a1, a7);
  v13 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  v14 = v13[5];
  v15 = sub_1007504F4();
  (*(*(v15 - 8) + 32))(a7 + v14, a2, v15);
  sub_100012160(a3, a7 + v13[6]);
  sub_100012160(a4, a7 + v13[7]);
  sub_100012160(a5, a7 + v13[8]);
  v16 = a7 + v13[9];

  return sub_100012160(a6, v16);
}

uint64_t AppPromotionCardLayout.videoView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppPromotionCardLayout(0) + 44);

  return sub_1000CD5F0(v3, a1);
}

uint64_t AppPromotionCardLayout.gradientBlurView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppPromotionCardLayout(0) + 48);

  return sub_1000CD5F0(v3, a1);
}

uint64_t AppPromotionCardLayout.separatorView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppPromotionCardLayout(0) + 64);

  return sub_1000CD5F0(v3, a1);
}

uint64_t AppPromotionCardLayout.lockupContainerView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppPromotionCardLayout(0) + 68);

  return sub_1000CD5F0(v3, a1);
}

uint64_t AppPromotionCardLayout.lockupView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppPromotionCardLayout(0) + 72);

  return sub_1000CD5F0(v3, a1);
}

double static AppPromotionCardLayout.estimatedMeasurementsNonAXLayout(fitting:using:shelfItems:asPartOf:in:)(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  swift_getObjectType();
  v10.n128_f64[0] = a2;

  return sub_1002C9824(v10, a3, a1, a6);
}

double AppPromotionCardLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  swift_getObjectType();

  return sub_1002C86A0(a1, v3, a2, a3);
}

uint64_t AppPromotionCardLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v163 = a2;
  v157 = COERCE_DOUBLE(sub_100747064());
  v155 = *(*&v157 - 8);
  __chkstk_darwin(*&v157);
  v154 = &v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = COERCE_DOUBLE(sub_100754724());
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v144 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AppPromotionCardLayout(0);
  sub_10000C888((v6 + v18[5]), *(v6 + v18[5] + 24));
  sub_100750394();
  sub_10000C888((v7 + v18[6]), *(v7 + v18[6] + 24));
  sub_100750394();
  sub_10000C888((v7 + v18[7]), *(v7 + v18[7] + 24));
  sub_100750394();
  v19 = v6[3];
  sub_10000C888(v7, v7[3]);
  sub_100536120(v19);
  sub_100750564();
  v21 = v20;
  v22 = *(v15 + 8);
  v159 = *&v17;
  v161 = *&v14;
  *&v160 = v15 + 8;
  MaxY = *&v22;
  v22(v17, v14);
  v162 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  v174.origin.x = 0.0;
  v174.origin.y = 0.0;
  v174.size.width = a5;
  v174.size.height = a6;
  CGRectGetWidth(v174);
  sub_1007504C4();
  Height = round(v23);
  v175.origin.x = 0.0;
  v175.origin.y = 0.0;
  v175.size.width = a5;
  v175.size.height = a6;
  if (vabdd_f64(Height, CGRectGetHeight(v175)) < 1.0)
  {
    v176.origin.x = 0.0;
    v176.origin.y = 0.0;
    v176.size.width = a5;
    v176.size.height = a6;
    Height = CGRectGetHeight(v176);
  }

  v177.origin.x = 0.0;
  v177.origin.y = 0.0;
  v177.size.width = a5;
  v177.size.height = a6;
  Width = CGRectGetWidth(v177);
  sub_10000C888((v6 + v18[8]), *(v6 + v18[8] + 24));
  sub_100753B24();
  sub_100750394();
  v178.origin.x = 0.0;
  v178.origin.y = 0.0;
  v178.size.width = Width;
  v178.size.height = Height;
  v26 = CGRectGetWidth(v178);
  v27 = (v6 + v18[9]);
  sub_10000C888(v27, v27[3]);
  sub_100753B24();
  sub_100750394();
  sub_10000C888((v6 + v18[10]), *(v6 + v18[10] + 24));
  sub_10000C888(v27, v27[3]);
  sub_100750384();
  sub_100750394();
  sub_1000CD5F0(v6 + v18[11], &v172);
  if (v173)
  {
    sub_10000C888(&v172, v173);
    sub_100750394();
    sub_10000C620(&v172);
  }

  else
  {
    sub_1002C9F48(&v172);
  }

  sub_1000CD5F0(v6 + v18[12], &v172);
  if (v173)
  {
    sub_10000C888(&v172, v173);
    sub_100750394();
    sub_10000C620(&v172);
  }

  else
  {
    sub_1002C9F48(&v172);
  }

  sub_1000CD5F0(v6 + v18[17], &v170);
  v164 = a5;
  v166 = a4;
  v165 = a3;
  if (!v171)
  {
    sub_1002C9F48(&v170);
LABEL_17:
    v28 = 1;
    v29 = 0.0;
    v153 = 0.0;
    v152 = 0.0;
    v156 = 0.0;
    goto LABEL_18;
  }

  sub_100012160(&v170, &v172);
  sub_10000C888(&v172, v173);
  if (sub_1007503A4())
  {
LABEL_16:
    sub_10000C620(&v172);
    goto LABEL_17;
  }

  sub_1000CD5F0(v6 + v18[18], &v168);
  if (!v169)
  {
    sub_1002C9F48(&v168);
    goto LABEL_16;
  }

  sub_100012160(&v168, &v170);
  sub_10000C888(&v170, v171);
  if (sub_1007503A4())
  {
    sub_10000C620(&v170);
    goto LABEL_16;
  }

  v149 = sub_10010FD98(0.0, 0.0, a5, a6, 0.0, v21);
  v148 = v121;
  v123 = v122;
  v146 = v124;
  v156 = COERCE_DOUBLE(swift_getObjectType());
  v125 = [a1 traitCollection];
  v126 = [v125 preferredContentSizeCategory];
  v127 = sub_100753954();

  v150 = v21;
  v147 = Width;
  v145 = v26;
  if (v127)
  {
    if (qword_1009219E8 != -1)
    {
      swift_once();
    }

    v128 = qword_100982810;
  }

  else
  {
    if (qword_1009219E0 != -1)
    {
      swift_once();
    }

    v128 = qword_1009827F8;
  }

  v129 = v157;
  v130 = sub_10000D0FC(*&v157, v128);
  v131 = v155;
  v132 = v154;
  (*(v155 + 16))(v154, v130, COERCE_CGFLOAT(*&v129));
  v133 = [a1 traitCollection];
  v134 = [v133 preferredContentSizeCategory];
  sub_100753954();

  type metadata accessor for SmallLockupView(0);
  v135 = v146;
  sub_1001CF184(v132, a1, v123, v146);
  v137 = ceil(v136);
  v195.origin.x = 0.0;
  v195.origin.y = 0.0;
  v195.size.width = a5;
  v195.size.height = a6;
  MinX = CGRectGetMinX(v195);
  v196.size.width = v123;
  v144 = v123;
  v138 = v149;
  v196.origin.x = v149;
  v139 = v148;
  v196.origin.y = v148;
  v196.size.height = v135;
  v140 = CGRectGetHeight(v196);
  v156 = v137;
  v141 = v140 - v137;
  v197.origin.x = 0.0;
  v197.origin.y = 0.0;
  v197.size.width = a5;
  v197.size.height = a6;
  v142 = CGRectGetWidth(v197);
  sub_10000C888(&v172, v173);
  v153 = v141;
  v152 = v142;
  sub_100750394();
  v198.origin.x = v138;
  v198.origin.y = v139;
  v143 = v144;
  v198.size.width = v144;
  v198.size.height = v135;
  CGRectGetMinX(v198);
  v199.origin.x = v138;
  v199.origin.y = v139;
  v199.size.width = v143;
  v199.size.height = v135;
  CGRectGetMinY(v199);
  v200.origin.x = v138;
  v200.origin.y = v139;
  v200.size.width = v143;
  v200.size.height = v135;
  CGRectGetWidth(v200);
  sub_10000C888(&v170, v171);
  v29 = MinX;
  a5 = v164;
  sub_100750394();
  (*(v131 + 8))(v132, COERCE_CGFLOAT(*&v157));
  sub_10000C620(&v170);
  sub_10000C620(&v172);
  v28 = 0;
  v21 = v150;
  Width = v147;
  v26 = v145;
LABEL_18:
  v30 = [a1 traitCollection];
  v31 = [v30 preferredContentSizeCategory];
  v32 = sub_100753954();

  v167 = a6;
  if (v32)
  {
    MinX = v29;
    v33 = sub_10010FD98(0.0, 0.0, a5, a6, 0.0, v21);
    v159 = v33;
    v161 = v34;
    v36 = v35;
    v38 = v37;
    v179.origin.x = 0.0;
    v179.origin.y = 0.0;
    v179.size.width = v26;
    v179.size.height = Height;
    MaxY = CGRectGetMaxY(v179);
    v39 = (v7 + v18[13]);
    sub_10000C888(v39, v39[3]);
    v160 = v36;
    v40 = v38;
    sub_100750404();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v47 = v162;
    sub_10000C888((v7 + *(v162 + 24)), *(v7 + *(v162 + 24) + 24));
    sub_100750584();
    v49 = v48;
    v180.origin.x = v33;
    v180.origin.y = v161;
    v180.size.width = v36;
    v180.size.height = v40;
    v50 = CGRectGetMinX(v180);
    v51 = MaxY + v49;
    sub_10000C888(v39, v39[3]);
    sub_100753B24();
    sub_100750394();
    v181.origin.x = v50;
    v181.origin.y = v51;
    v181.size.width = v42;
    v181.size.height = v44;
    v52 = CGRectGetMaxY(v181) - v46;
    v53 = (v7 + v18[14]);
    sub_10000C888(v53, v53[3]);
    v54 = v160;
    v55 = v40;
    sub_100750404();
    v57 = v56;
    v59 = v58;
    v61 = v60;
    sub_10000C888((v7 + *(v47 + 28)), *(v7 + *(v47 + 28) + 24));
    sub_100750584();
    v63 = v62;
    v182.origin.x = v159;
    v182.origin.y = v161;
    v182.size.width = v54;
    MaxY = v55;
    v182.size.height = v55;
    v64 = CGRectGetMinX(v182);
    sub_10000C888(v53, v53[3]);
    sub_100753B24();
    sub_100750394();
    v183.origin.x = v64;
    v183.origin.y = v52 + v63;
    v183.size.width = v57;
    v183.size.height = v59;
    v65 = CGRectGetMaxY(v183);
    if (*(v7 + v18[19]) == 1)
    {
      v66 = v65 - v61;
      sub_10000C888((v7 + *(v47 + 32)), *(v7 + *(v47 + 32) + 24));
      v67 = [a1 traitCollection];
      sub_100750574();
      v69 = v68;

      v70 = v66 + v69;
      v71 = (v7 + v18[15]);
      sub_10000C888(v71, v71[3]);
      v72 = [a1 traitCollection];
      v73 = v160;
      v74 = MaxY;
      sub_100751254();
      v76 = v75;
      v78 = v77;

      v184.origin.x = v159;
      v184.origin.y = v161;
      v184.size.width = v73;
      v184.size.height = v74;
      v79 = CGRectGetMinX(v184);
      sub_10000C888(v71, v71[3]);
      sub_100753B24();
      v80 = [a1 traitCollection];
      sub_100751244();

      v185.origin.x = v79;
      v185.origin.y = v70;
      v185.size.width = v76;
      v185.size.height = v78;
      CGRectGetMaxY(v185);
    }

    sub_1000CD5F0(v7 + v18[16], &v170);
    if (v171)
    {
      sub_100012160(&v170, &v172);
      sub_10000C888(&v172, v173);
      if ((sub_1007503A4() & 1) == 0 && (v28 & 1) == 0)
      {
        sub_10000C888(&v172, v173);
        v81 = v160;
        v82 = MaxY;
        sub_100750404();
        v186.origin.x = MinX;
        v186.origin.y = v153;
        v186.size.width = v152;
        v186.size.height = v156;
        CGRectGetMinY(v186);
        v83 = v159;
        v187.origin.x = v159;
        v84 = v161;
        v187.origin.y = v161;
        v187.size.width = v81;
        v187.size.height = v82;
        CGRectGetMinX(v187);
        v188.origin.x = v83;
        v188.origin.y = v84;
        v188.size.width = v81;
        v188.size.height = v82;
        CGRectGetWidth(v188);
        sub_10000C888(&v172, v173);
        sub_100750394();
      }

      sub_10000C620(&v172);
    }

    else
    {
      sub_1002C9F48(&v170);
    }
  }

  else
  {
    v85 = sub_10010FD98(0.0, 0.0, Width, Height, 0.0, v21);
    v87 = v86;
    v89 = v88;
    v91 = v90;
    v92 = v162;
    v93 = (v7 + *(v162 + 36));
    v94 = v93[3];
    sub_10000C888(v93, v94);
    v95 = v159;
    sub_100536120(v94);
    sub_100750564();
    v97 = v96;
    (*&MaxY)(COERCE_DOUBLE(*&v95), COERCE_CGFLOAT(*&v161));
    v189.origin.x = v85;
    v189.origin.y = v87;
    v189.size.width = v89;
    v189.size.height = v91;
    v98 = CGRectGetHeight(v189) - v97;
    if (*(v7 + v18[19]) == 1)
    {
      v99 = (v7 + v18[15]);
      sub_10000C888(v99, v99[3]);
      v100 = [a1 traitCollection];
      sub_100751254();
      v161 = v101;
      v103 = v102;

      v159 = v98 - v103;
      v160 = v103;
      v190.origin.x = v85;
      v190.origin.y = v87;
      v190.size.width = v89;
      v190.size.height = v91;
      MaxY = CGRectGetMinX(v190);
      sub_10000C888(v99, v99[3]);
      sub_100753B24();
      v104 = v85;
      v105 = [a1 traitCollection];
      sub_100751244();

      sub_10000C888((v7 + *(v92 + 32)), *(v7 + *(v92 + 32) + 24));
      v106 = [a1 traitCollection];
      sub_100750574();
      v108 = v107;

      v191.origin.x = MaxY;
      v191.origin.y = v159;
      v191.size.width = v161;
      v191.size.height = v160;
      v98 = CGRectGetMinY(v191) - v108;
    }

    else
    {
      v104 = v85;
    }

    v109 = (v7 + v18[14]);
    sub_10000C888(v109, v109[3]);
    sub_100750404();
    v111 = v110;
    v113 = v112;
    v161 = v114;
    v160 = v115;
    v116 = v115 + v98 - v112;
    v192.origin.x = v104;
    v192.origin.y = v87;
    v156 = v87;
    v192.size.width = v89;
    v192.size.height = v91;
    v117 = CGRectGetMinX(v192);
    v157 = v104;
    v118 = v117;
    sub_10000C888(v109, v109[3]);
    sub_100753B24();
    sub_100750394();
    sub_10000C888((v7 + *(v92 + 28)), *(v7 + *(v92 + 28) + 24));
    sub_100750584();
    v193.origin.x = v118;
    v193.origin.y = v116;
    v193.size.width = v111;
    v193.size.height = v113;
    CGRectGetMinY(v193);
    v119 = (v7 + v18[13]);
    sub_10000C888(v119, v119[3]);
    sub_100750404();
    v194.origin.x = v157;
    v194.origin.y = v156;
    v194.size.width = v89;
    v194.size.height = v91;
    CGRectGetMinX(v194);
    sub_10000C888(v119, v119[3]);
    sub_100753B24();
    sub_100750394();
  }

  return sub_100750314();
}

double sub_1002C86A0(void *a1, void *a2, double a3, double a4)
{
  v112 = sub_100754724();
  v110 = *(v112 - 8);
  __chkstk_darwin(v112);
  v109 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_100750A94();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v115 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_100750AB4();
  v119 = *(v120 - 1);
  __chkstk_darwin(v120);
  v118 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_100750FD4();
  v111 = *(v114 - 8);
  __chkstk_darwin(v114);
  v107 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v108 = &v99 - v11;
  v106 = sub_1007479B4();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v103 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v104 = (&v99 - v14);
  __chkstk_darwin(v15);
  v102 = &v99 - v16;
  __chkstk_darwin(v17);
  v19 = &v99 - v18;
  v20 = sub_100747064();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v99 - v25;
  v27 = type metadata accessor for AppPromotionCardLayout(0);
  sub_1000CD5F0(a2 + v27[18], &v124);
  v113 = v125;
  sub_1002C9F48(&v124);
  v121 = a1;
  v28 = [a1 traitCollection];
  v29 = [v28 preferredContentSizeCategory];
  v30 = sub_100753954();

  if (v30)
  {
    v31 = v27[13];
    v32 = v27[14];
    v33 = v27[16];
    v99 = v27[15];
    v107 = v33;
    LODWORD(v103) = *(a2 + v27[19]);
    if (qword_1009219E8 != -1)
    {
      swift_once();
    }

    v100 = (a2 + v31);
    v34 = (a2 + v32);
    v35 = sub_10000D0FC(v20, qword_100982810);
    v104 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
    sub_1007504C4();
    v37 = v36;
    v38 = [v121 traitCollection];
    (*(v21 + 16))(v26, v35, v20);
    v39 = sub_100746FD4();
    v41 = v109;
    v101 = v34;
    if ((v42 & 1) == 0 && ((v39 | v40) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (sub_100753804())
      {
        if (qword_100921988 != -1)
        {
          swift_once();
        }

        v43 = qword_10093FF40;
      }

      else
      {
        if (qword_100921990 != -1)
        {
          swift_once();
        }

        v43 = qword_10093FF58;
      }

      v53 = v106;
      v54 = sub_10000D0FC(v106, v43);
      v55 = v105;
      v56 = v102;
      (*(v105 + 16))(v102, v54, v53);
      (*(v55 + 32))(v19, v56, v53);
      sub_100747964();
      sub_100747994();
      sub_100746FE4();
      (*(v55 + 8))(v19, v53);
    }

    sub_100746F14();
    v58 = v57;

    (*(v21 + 8))(v26, v20);
    *&v122 = _swiftEmptyArrayStorage;
    sub_10000C518(&qword_100946760, &unk_1007A63A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007A5A00;
    v125 = &type metadata for CGFloat;
    v126 = &protocol witness table for CGFloat;
    *&v124 = v37;
    v60 = v114;
    *(inited + 56) = v114;
    *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_10000D134((inited + 32));
    sub_100750FE4();
    sub_10049FB8C(inited);
    v61 = v121;
    v62 = v112;
    if (v113)
    {
      v125 = &type metadata for CGFloat;
      v126 = &protocol witness table for CGFloat;
      *&v124 = ceil(v58 + 16.0 + 16.0);
      v63 = v108;
      sub_100750FE4();
      v64 = v122;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = sub_1002548C4(0, v64[2] + 1, 1, v64);
      }

      v66 = v64[2];
      v65 = v64[3];
      if (v66 >= v65 >> 1)
      {
        v64 = sub_1002548C4((v65 > 1), v66 + 1, 1, v64);
      }

      v125 = v60;
      v126 = &protocol witness table for VerticalSpaceMeasurable;
      v67 = sub_10000D134(&v124);
      v68 = v111;
      (*(v111 + 16))(v67, v63, v60);
      v64[2] = v66 + 1;
      sub_100012160(&v124, &v64[5 * v66 + 4]);
      (*(v68 + 8))(v63, v60);
      *&v122 = v64;
    }

    (*(v116 + 104))(v115, enum case for StackMeasurable.Axis.vertical(_:), v117);
    v69 = v118;
    sub_100750AA4();
    sub_100750A84();
    v71 = v70;
    (*(v119 + 8))(v69, v120);
    v72 = a2[3];
    sub_10000C888(a2, v72);
    sub_100536120(v72);
    sub_100750564();
    v120 = *(v110 + 8);
    v120(v41, v62);
    sub_100753BA4();
    sub_10000C888(v100, v100[3]);
    sub_100750404();
    v74 = v73;
    v75 = v104;
    sub_10000C888((a2 + v104[6]), *(a2 + v104[6] + 24));
    sub_100750584();
    *&v124 = v74;
    sub_100750554();
    sub_10000C888(v101, v101[3]);
    sub_100750404();
    v77 = v76;
    sub_10000C888((a2 + v75[7]), *(a2 + v75[7] + 24));
    sub_100750584();
    *&v124 = v77;
    sub_100750554();
    if (v103)
    {
      sub_10000C888((a2 + v99), *(a2 + v99 + 24));
      v78 = [v61 traitCollection];
      sub_100751254();

      sub_10000C888((a2 + v75[8]), *(a2 + v75[8] + 24));
      v79 = [v61 traitCollection];
      sub_100750574();

      v80 = (a2 + v75[9]);
      v81 = v80[3];
      sub_10000C888(v80, v81);
      sub_100536120(v81);
      sub_100750564();
      v120(v41, v112);
    }

    sub_1000CD5F0(&v107[a2], &v122);
    if (v123)
    {
      sub_100012160(&v122, &v124);
      sub_10000C888(&v124, v125);
      if ((sub_1007503A4() & 1) == 0)
      {
        sub_10000C888(&v124, v125);
        sub_100750404();
      }

      sub_10000C620(&v124);
    }

    else
    {
      sub_1002C9F48(&v122);
    }
  }

  else
  {
    if (qword_1009219E0 != -1)
    {
      swift_once();
    }

    v44 = sub_10000D0FC(v20, qword_1009827F8);
    type metadata accessor for AppPromotionCardLayout.Metrics(0);
    sub_1007504C4();
    v46 = v45;
    v47 = [v121 traitCollection];
    (*(v21 + 16))(v23, v44, v20);
    v48 = sub_100746FD4();
    v50 = v114;
    if ((v51 & 1) == 0 && ((v48 | v49) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (sub_100753804())
      {
        if (qword_100921988 != -1)
        {
          swift_once();
        }

        v52 = qword_10093FF40;
      }

      else
      {
        if (qword_100921990 != -1)
        {
          swift_once();
        }

        v52 = qword_10093FF58;
      }

      v82 = v106;
      v83 = sub_10000D0FC(v106, v52);
      v84 = v105;
      v85 = v103;
      (*(v105 + 16))(v103, v83, v82);
      v86 = v104;
      (*(v84 + 32))(v104, v85, v82);
      sub_100747964();
      sub_100747994();
      sub_100746FE4();
      (*(v84 + 8))(v86, v82);
    }

    sub_100746F14();
    v88 = v87;

    (*(v21 + 8))(v23, v20);
    *&v122 = _swiftEmptyArrayStorage;
    sub_10000C518(&qword_100946760, &unk_1007A63A0);
    v89 = swift_initStackObject();
    *(v89 + 16) = xmmword_1007A5A00;
    v125 = &type metadata for CGFloat;
    v126 = &protocol witness table for CGFloat;
    *&v124 = v46;
    *(v89 + 56) = v50;
    *(v89 + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_10000D134((v89 + 32));
    sub_100750FE4();
    sub_10049FB8C(v89);
    if (v113)
    {
      v125 = &type metadata for CGFloat;
      v126 = &protocol witness table for CGFloat;
      *&v124 = ceil(v88 + 4.0 + 4.0);
      v90 = v107;
      sub_100750FE4();
      v91 = v122;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v91 = sub_1002548C4(0, v91[2] + 1, 1, v91);
      }

      v93 = v91[2];
      v92 = v91[3];
      if (v93 >= v92 >> 1)
      {
        v91 = sub_1002548C4((v92 > 1), v93 + 1, 1, v91);
      }

      v125 = v50;
      v126 = &protocol witness table for VerticalSpaceMeasurable;
      v94 = sub_10000D134(&v124);
      v95 = v111;
      (*(v111 + 16))(v94, v90, v50);
      v91[2] = v93 + 1;
      sub_100012160(&v124, &v91[5 * v93 + 4]);
      (*(v95 + 8))(v90, v50);
      *&v122 = v91;
    }

    (*(v116 + 104))(v115, enum case for StackMeasurable.Axis.vertical(_:), v117);
    v96 = v118;
    sub_100750AA4();
    sub_100750A84();
    v71 = v97;
    (*(v119 + 8))(v96, v120);
  }

  return v71;
}

double sub_1002C9824(__n128 a1, double a2, uint64_t a3, void *a4)
{
  v50 = sub_100750A94();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_100750AB4();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v46 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100750FD4();
  v45 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1007479B4();
  v10 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  v15 = sub_100747064();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009219E0 != -1)
  {
    swift_once();
  }

  v19 = sub_10000D0FC(v15, qword_1009827F8);
  type metadata accessor for AppPromotionCardLayout.Metrics(0);
  sub_1007504C4();
  v21 = v20;
  v52 = a4;
  v22 = [a4 traitCollection];
  (*(v16 + 16))(v18, v19, v15);
  v23 = sub_100746FD4();
  v25 = v9;
  if ((v26 & 1) == 0 && ((v23 | v24) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_100753804())
    {
      if (qword_100921988 != -1)
      {
        swift_once();
      }

      v27 = qword_10093FF40;
    }

    else
    {
      if (qword_100921990 != -1)
      {
        swift_once();
      }

      v27 = qword_10093FF58;
    }

    v28 = v44;
    v29 = sub_10000D0FC(v44, v27);
    v30 = v43;
    (*(v10 + 16))(v43, v29, v28);
    (*(v10 + 32))(v14, v30, v28);
    sub_100747964();
    sub_100747994();
    sub_100746FE4();
    (*(v10 + 8))(v14, v28);
  }

  sub_100746F14();
  v32 = v31;

  (*(v16 + 8))(v18, v15);
  v56 = _swiftEmptyArrayStorage;
  sub_10000C518(&qword_100946760, &unk_1007A63A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A5A00;
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  *&v53 = v21;
  *(inited + 56) = v7;
  *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
  sub_10000D134((inited + 32));
  sub_100750FE4();
  sub_10049FB8C(inited);
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  *&v53 = ceil(v32 + 4.0 + 4.0);
  sub_100750FE4();
  v34 = v56;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v34 = sub_1002548C4(0, v34[2] + 1, 1, v34);
  }

  v36 = v34[2];
  v35 = v34[3];
  if (v36 >= v35 >> 1)
  {
    v34 = sub_1002548C4((v35 > 1), v36 + 1, 1, v34);
  }

  v54 = v7;
  v55 = &protocol witness table for VerticalSpaceMeasurable;
  v37 = sub_10000D134(&v53);
  v38 = v45;
  (*(v45 + 16))(v37, v25, v7);
  v34[2] = v36 + 1;
  sub_100012160(&v53, &v34[5 * v36 + 4]);
  (*(v38 + 8))(v25, v7);
  (*(v48 + 104))(v47, enum case for StackMeasurable.Axis.vertical(_:), v50);
  v39 = v46;
  sub_100750AA4();
  sub_100750A84();
  v41 = v40;
  (*(v49 + 8))(v39, v51);
  return v41;
}

uint64_t sub_1002C9F48(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100928A00, &qword_1007A5AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002C9FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1002CA098(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_1002CA154(uint64_t a1)
{
  type metadata accessor for AppPromotionCardLayout.Metrics(319);
  if (v1 <= 0x3F)
  {
    sub_100110300(319, &unk_10092C900, &protocol descriptor for LayoutView);
    if (v2 <= 0x3F)
    {
      sub_1002CA274(319);
      if (v3 <= 0x3F)
      {
        sub_100110300(319, &qword_10092D510, &protocol descriptor for LayoutTextView);
        if (v4 <= 0x3F)
        {
          sub_100110300(319, &qword_100930E10, &protocol descriptor for Placeable);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1002CA274(uint64_t a1)
{
  if (!qword_10092C920)
  {
    sub_10000C724(&qword_100926520, &qword_1007A9F00);
    v1 = sub_100754284();
    if (!v2)
    {
      atomic_store(v1, &qword_10092C920);
    }
  }
}

uint64_t sub_1002CA2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1007504F4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1002CA3AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1007504F4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1002CA450(uint64_t a1)
{
  result = sub_100110300(319, &qword_1009289A0, &protocol descriptor for AnyDimension);
  if (v2 <= 0x3F)
  {
    result = sub_1007504F4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for AppPromotionSubtitleView(uint64_t a1)
{
  result = qword_100930F48;
  if (!qword_100930F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002CA59C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v40 = a5;
  v36 = a4;
  v37 = a3;
  v35 = a1;
  v8 = sub_100751154();
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100750BD4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100750E94();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v32 - v20;
  if (a2)
  {
    v34 = a6;
    sub_100750E84();
    if (qword_1009207F0 != -1)
    {
      swift_once();
    }

    v22 = sub_100750534();
    sub_10000D0FC(v22, qword_100930F18);
    sub_100750E54();
    v33 = *(v16 + 8);
    v33(v18, v15);
    (*(v16 + 16))(v18, v21, v15);
    sub_100750BB4();

    sub_100750BF4();
    sub_100753804();
    v36 &= 1u;
    v23 = sub_100744D34();
    swift_allocObject();
    v24 = sub_100744D24();
    v45 = v23;
    v46 = sub_1002CBC64(&qword_100923048, &type metadata accessor for EmptyPlaceable, &protocol conformance descriptor for EmptyPlaceable);
    v44[0] = v24;
    sub_100751134();
    v45 = v11;
    v46 = &protocol witness table for LabelPlaceholder;
    v25 = sub_10000D134(v44);
    (*(v12 + 16))(v25, v14, v11);
    if (v37)
    {
      v26 = v39;
      *(&v42 + 1) = v39;
      v43 = &protocol witness table for Resize;
      v27 = sub_10000D134(&v41);
      v28 = v38;
      (*(v38 + 16))(v27, v10, v26);
    }

    else
    {
      v43 = 0;
      v41 = 0u;
      v42 = 0u;
      v28 = v38;
      v26 = v39;
    }

    sub_1002CB410(v44, &v41, v36, v40, v34);
    (*(v28 + 8))(v10, v26);
    (*(v12 + 8))(v14, v11);
    v33(v21, v15);
    sub_10000C8CC(&v41, &unk_100924A60, &unk_1007A7B00);
    return sub_10000C8CC(v44, &unk_100924A60, &unk_1007A7B00);
  }

  else
  {
    v29 = sub_100744D34();
    swift_allocObject();
    v30 = sub_100744D24();
    a6[3] = v29;
    result = sub_1002CBC64(&qword_100923048, &type metadata accessor for EmptyPlaceable, &protocol conformance descriptor for EmptyPlaceable);
    a6[4] = result;
    *a6 = v30;
  }

  return result;
}

double sub_1002CAA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10074F284();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v3 + qword_100930F38);
  if (v10)
  {
    v11 = sub_100753064();
  }

  else
  {
    v11 = 0;
  }

  [v9 setText:v11];

  v12 = *(v3 + qword_100930F40);
  [v12 setHidden:a3 == 0];
  sub_1007442C4();
  sub_100752754();
  if (a3)
  {
    if (!v16[1])
    {
      return result;
    }

    sub_10074F294();
    sub_10074F254();
    v14 = *(v6 + 8);
    v14(v8, v5);
    sub_10074F374();
    sub_10074F294();
    v15 = sub_10074F254();
    v14(v8, v5);
    [v12 setContentMode:v15];
    sub_1007433C4();
    sub_1002CBC64(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_100744204();
  }

  return result;
}

uint64_t sub_1002CACDC()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_100930F18);
  v1 = sub_10000D0FC(v0, qword_100930F18);
  if (qword_100921598 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D0FC(v0, qword_100981E00);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_1002CADA4(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10074AB44();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = qword_100930F38;
  if (qword_1009207F0 != -1)
  {
    swift_once();
  }

  v13 = sub_100750534();
  v14 = sub_10000D0FC(v13, qword_100930F18);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v11, v14, v13);
  (*(v15 + 56))(v11, 0, 1, v13);
  (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
  v16 = objc_allocWithZone(sub_100745C84());
  *&v2[v12] = sub_100745C74();
  v17 = qword_100930F40;
  sub_1007433C4();
  *&v2[v17] = sub_1007431D4();
  v2[qword_100930F30] = a1 & 1;
  v27.receiver = v2;
  v27.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v27, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v19 = qword_100930F38;
  v20 = *&v18[qword_100930F38];
  v21 = objc_opt_self();
  v22 = v18;
  v23 = v20;
  v24 = [v21 labelColor];
  [v23 setTextColor:v24];

  v25 = qword_100930F40;
  [*&v22[qword_100930F40] setHidden:1];
  [v22 addSubview:*&v18[v19]];
  [v22 addSubview:*&v22[v25]];

  return v22;
}

uint64_t sub_1002CB0F8(uint64_t a1)
{
  v3 = [*(v1 + qword_100930F38) layer];
  sub_100016B4C(a1, v12, &unk_100923520, &qword_1007A5A70);
  v4 = v13;
  if (v13)
  {
    v5 = sub_10000C888(v12, v13);
    v6 = *(v4 - 8);
    v7 = __chkstk_darwin(v5);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_100754734();
    (*(v6 + 8))(v9, v4);
    sub_10000C620(v12);
  }

  else
  {
    v10 = 0;
  }

  [v3 setCompositingFilter:v10];

  swift_unknownObjectRelease();
  return sub_10000C8CC(a1, &unk_100923520, &qword_1007A5A70);
}

uint64_t sub_1002CB2A8@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  v3 = *&v1[qword_100930F38];
  v17[3] = sub_100745C84();
  v17[4] = &protocol witness table for UILabel;
  v17[0] = v3;
  v4 = *&v1[qword_100930F40];
  v5 = v3;
  if ([v4 isHidden])
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v7 = sub_1007433C4();
    v8 = sub_1002CBC64(&qword_10092E370, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v6 = v4;
  }

  v12 = v6;
  v15 = v7;
  v16 = v8;
  v9 = v1[qword_100930F30];
  v10 = [v1 traitCollection];
  sub_1002CB410(v17, &v12, v9, v10, a1);

  sub_10000C8CC(&v12, &unk_100924A60, &unk_1007A7B00);
  return sub_10000C8CC(v17, &unk_100924A60, &unk_1007A7B00);
}

uint64_t sub_1002CB410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v12 = sub_100750A34();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016B4C(a1, &v39, &unk_100924A60, &unk_1007A7B00);
  if (v40)
  {
    sub_100012160(&v39, v41);
    v16 = sub_100753804();
    v17 = 16.0;
    if ((a3 & 1) == 0)
    {
      v17 = 14.0;
    }

    if (v16)
    {
      v18 = 25.0;
    }

    else
    {
      v18 = v17;
    }

    sub_100038D38();
    if (qword_1009207F0 != -1)
    {
      swift_once();
    }

    v19 = sub_100750534();
    sub_10000D0FC(v19, qword_100930F18);
    v20 = sub_100753C14();
    [v20 lineHeight];
    v22 = v21;
    sub_100750A04();
    sub_100016B4C(a2, &v36, &unk_100924A60, &unk_1007A7B00);
    if (v37)
    {
      if ((v22 - v18) * 0.5 < 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = (v22 - v18) * 0.5;
      }

      sub_100012160(&v36, &v39);
      sub_10000C824(&v39, &v36);
      v35[3] = sub_100751154();
      v35[4] = &protocol witness table for Resize;
      sub_10000D134(v35);
      sub_100751134();
      v34[8] = &type metadata for CGFloat;
      v34[9] = &protocol witness table for CGFloat;
      *&v34[5] = v23;
      v24 = sub_1007507D4();
      v34[3] = v24;
      v34[4] = &protocol witness table for ZeroDimension;
      sub_10000D134(v34);
      sub_1007507C4();
      v33[3] = v24;
      v33[4] = &protocol witness table for ZeroDimension;
      sub_10000D134(v33);
      sub_1007507C4();
      v32[3] = v24;
      v32[4] = &protocol witness table for ZeroDimension;
      sub_10000D134(v32);
      sub_1007507C4();
      v37 = sub_1007511A4();
      v38 = &protocol witness table for Margins;
      sub_10000D134(&v36);
      sub_1007511B4();
      v25 = swift_allocObject();
      *(v25 + 16) = a4;
      *(v25 + 24) = v6;
      v26 = a4;
      sub_1007509F4();

      sub_10000C620(&v39);
      sub_10000C620(&v36);
    }

    else
    {
      sub_10000C8CC(&v36, &unk_100924A60, &unk_1007A7B00);
    }

    sub_1007509F4();
    a5[3] = v12;
    a5[4] = &protocol witness table for HorizontalStack;
    v30 = sub_10000D134(a5);
    (*(v13 + 32))(v30, v15, v12);

    return sub_10000C620(v41);
  }

  else
  {
    sub_10000C8CC(&v39, &unk_100924A60, &unk_1007A7B00);
    v27 = sub_100744D34();
    swift_allocObject();
    v28 = sub_100744D24();
    a5[3] = v27;
    result = sub_1002CBC64(&qword_100923048, &type metadata accessor for EmptyPlaceable, &protocol conformance descriptor for EmptyPlaceable);
    a5[4] = result;
    *a5 = v28;
  }

  return result;
}

void sub_1002CB868()
{
  v1 = *(v0 + qword_100930F40);
}

void sub_1002CB8A8(uint64_t a1)
{
  v2 = *(a1 + qword_100930F40);
}

unint64_t sub_1002CB910()
{
  result = qword_100930F98;
  if (!qword_100930F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100930F98);
  }

  return result;
}

uint64_t sub_1002CB964()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1002CBA00()
{
  v1 = v0;
  v2 = sub_10074AB44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = qword_100930F38;
  if (qword_1009207F0 != -1)
  {
    swift_once();
  }

  v10 = sub_100750534();
  v11 = sub_10000D0FC(v10, qword_100930F18);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v13 = objc_allocWithZone(sub_100745C84());
  *(v1 + v9) = sub_100745C74();
  v14 = qword_100930F40;
  sub_1007433C4();
  *(v1 + v14) = sub_1007431D4();
  sub_100754644();
  __break(1u);
}

uint64_t sub_1002CBC64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1002CBCC0()
{
  result = qword_100930FA0;
  if (!qword_100930FA0)
  {
    sub_100748974();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100930FA0);
  }

  return result;
}

uint64_t sub_1002CBD18()
{
  v0 = sub_100752624();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
  (*(v1 + 104))(v3, enum case for ActionOutcome.unsupported(_:), v0);
  return sub_100752D84();
}

void sub_1002CBF20(void *a1)
{
  v2 = v1;
  v4 = [a1 viewForKey:{UITransitionContextFromViewKey, sub_100524128(0)}];
  v5 = v4;
  if (v4)
  {
    [v4 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v131 = v12;
  }

  else
  {
    v13 = [a1 containerView];
    [v13 bounds];
    v7 = v14;
    v9 = v15;
    v11 = v16;
    v131 = v17;
  }

  v18 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 traitCollection];

    v21 = [v20 horizontalSizeClass];
    if (v21 == 1)
    {
      v22 = 0.0;
    }

    else
    {
      v22 = 0.25;
    }
  }

  else
  {
    v22 = 0.25;
  }

  v23 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageCloseAnimation_toCardView];
  v129 = v9;
  if (!v23 || (v24 = &v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageCloseAnimation_toBounds], (v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageCloseAnimation_toBounds + 32] & 1) != 0) || (v25 = &v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageCloseAnimation_toCenter], (v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageCloseAnimation_toCenter + 16] & 1) != 0))
  {
    v137.origin.x = v7;
    v137.origin.y = v9;
    v137.size.width = v11;
    v137.size.height = v131;
    v27 = v22 * CGRectGetWidth(v137);
    v138.origin.x = v7;
    v138.origin.y = v9;
    v138.size.width = v11;
    v138.size.height = v131;
    v28 = CGRectGetHeight(v138) * 0.25;
    v139.origin.x = v7;
    v139.origin.y = v9;
    v139.size.width = v11;
    v139.size.height = v131;
    v140 = CGRectInset(v139, v27, v28);
    width = v140.size.width;
    height = v140.size.height;
    v140.origin.x = v7;
    v140.origin.y = v9;
    v140.size.width = v11;
    v140.size.height = v131;
    MidX = CGRectGetMidX(v140);
    v141.origin.x = v7;
    v141.origin.y = v9;
    v141.size.width = v11;
    v141.size.height = v131;
    MidY = CGRectGetMidY(v141);
    v125 = 0.0;
    v126 = 0.0;
  }

  else
  {
    MidX = *v25;
    MidY = v25[1];
    width = v24[2];
    height = v24[3];
    v125 = *v24;
    v126 = v24[1];
  }

  v29 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageCloseAnimation_toCollectionViewController];
  v30 = 0.0;
  if (v29)
  {
    v31 = [*&v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageCloseAnimation_toCollectionViewController] view];
    v32 = MidX;
    v33 = MidY;
    v34 = 0.0;
    if (v31)
    {
      v35 = v31;
      [v31 bounds];
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v42 = MidX;
      v44 = v43;
      v45 = [a1 containerView];
      v46 = v44;
      MidX = v42;
      [v35 convertRect:v45 toCoordinateSpace:{v37, v39, v41, v46}];
      v30 = v47;
      v34 = v48;

      v32 = v42 + v30;
      v33 = MidY + v34;
    }
  }

  else
  {
    v32 = MidX;
    v33 = MidY;
    v34 = 0.0;
  }

  v123 = v33;
  v124 = v32;
  v49 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageCloseAnimation_detailPageViewController];
  if (v49)
  {
    v50 = [v49 view];
    if (!v50)
    {
      __break(1u);
      goto LABEL_71;
    }

    v51 = v50;
    [v50 transform];
    v121 = v134;
    v122 = aBlock;
    v120 = v135;

    aBlock = v122;
    v134 = v121;
    v135 = v120;
    [v23 setTransform:&aBlock];
  }

  v142.origin.x = v7;
  v142.origin.y = v129;
  v142.size.width = v11;
  v142.size.height = v131;
  v52 = CGRectGetMidX(v142);
  v143.origin.x = v7;
  v143.origin.y = v129;
  v53 = v11;
  v143.size.width = v11;
  v143.size.height = v131;
  v54 = CGRectGetMidY(v143);
  if (!v23)
  {
    goto LABEL_27;
  }

  v55 = v54;
  if (!v29)
  {
    v60 = v23;
    v59 = [a1 containerView];
    [v59 insertSubview:v60 below:v5];
    goto LABEL_26;
  }

  v56 = v29;
  v57 = v23;
  v58 = [v56 view];
  if (!v58)
  {
LABEL_71:
    __break(1u);
    return;
  }

  v59 = v58;
  [v58 addSubview:v57];

LABEL_26:
  [v23 setHidden:0];
  [v23 setBounds:{0.0, 0.0, v53, v131}];
  [v23 setCenter:{v52 - v30, v55 - v34}];
  [v23 setNeedsLayout];
  [v23 layoutIfNeeded];
  [v23 setAlpha:0.0];

LABEL_27:
  v130 = [a1 viewForKey:{UITransitionContextToViewKey, v54, v120, v121, v122}];
  if (v130)
  {
    v61 = MidX;
    v62 = v130;
    v63 = [a1 containerView];
    [v63 bounds];
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v71 = v70;

    [v62 setFrame:{v65, v67, v69, v71}];
    if (v23)
    {
      v72 = v23;
      v73 = [a1 containerView];
      [v73 insertSubview:v62 below:v72];
    }

    else
    {
      v73 = [a1 containerView];
      [v73 insertSubview:v62 below:v5];
    }

    MidX = v61;
  }

  v74 = _swiftEmptyArrayStorage;
  v136 = _swiftEmptyArrayStorage;
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    v75 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:180.0 damping:22.0 initialVelocity:{0.0, 0.0}];
    v76 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v75 timingParameters:0.0];

    v77 = swift_allocObject();
    *(v77 + 16) = v2;
    *(v77 + 24) = v23;
    *(v77 + 32) = v125;
    *(v77 + 40) = v126;
    *(v77 + 48) = width;
    *(v77 + 56) = height;
    *(v77 + 64) = MidX;
    *(v77 + 72) = MidY;
    *(v77 + 80) = v5;
    *(v77 + 88) = v124;
    *(v77 + 96) = v123;
    *&v135 = sub_1002CD234;
    *(&v135 + 1) = v77;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v134 = sub_1000CF7B0;
    *(&v134 + 1) = &unk_100870040;
    v78 = _Block_copy(&aBlock);
    v79 = v23;
    v80 = v2;
    v81 = v5;

    [v76 addAnimations:v78];
    _Block_release(v78);
    v82 = swift_allocObject();
    *(v82 + 16) = a1;
    *(v82 + 24) = v80;
    *&v135 = sub_1002CD2A8;
    *(&v135 + 1) = v82;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v134 = sub_1001A5B50;
    *(&v134 + 1) = &unk_100870090;
    v83 = _Block_copy(&aBlock);
    v84 = v80;
    swift_unknownObjectRetain();

    [v76 addCompletion:v83];
    _Block_release(v83);
    v85 = v76;
    sub_100753284();
    if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v136 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();

    v74 = v136;
  }

  if (!v5)
  {
LABEL_39:
    if (!UIAccessibilityIsReduceMotionEnabled())
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v86 = v5;
  if (UIAccessibilityIsReduceMotionEnabled())
  {

    goto LABEL_39;
  }

  v87 = swift_allocObject();
  *(v87 + 16) = v86;
  v88 = objc_allocWithZone(UIViewPropertyAnimator);
  *&v135 = sub_1002CD3E0;
  *(&v135 + 1) = v87;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v134 = sub_1000CF7B0;
  *(&v134 + 1) = &unk_1008701D0;
  v89 = _Block_copy(&aBlock);
  v90 = v86;

  v91 = [v88 initWithDuration:v89 controlPoint1:0.216 controlPoint2:0.33 animations:{0.0, 0.83, 0.83}];
  _Block_release(v89);
  v92 = swift_allocObject();
  *(v92 + 16) = v90;
  *&v135 = sub_1002CD3F4;
  *(&v135 + 1) = v92;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v134 = sub_1001A5B50;
  *(&v134 + 1) = &unk_100870220;
  v93 = _Block_copy(&aBlock);
  v94 = v90;

  [v91 addCompletion:v93];
  _Block_release(v93);

  v95 = v91;
  sub_100753284();
  if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v136 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  sub_100753344();

  v74 = v136;
  if (UIAccessibilityIsReduceMotionEnabled())
  {
LABEL_44:
    [v23 setBounds:{v125, v126, width, height}];
    [v23 setCenter:{MidX, MidY}];
    v96 = swift_allocObject();
    v96[2] = v2;
    v96[3] = v23;
    v96[4] = v5;
    v97 = objc_allocWithZone(UIViewPropertyAnimator);
    *&v135 = sub_1002CD380;
    *(&v135 + 1) = v96;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v134 = sub_1000CF7B0;
    *(&v134 + 1) = &unk_100870130;
    v98 = _Block_copy(&aBlock);
    v99 = v23;
    v100 = v2;
    v101 = v5;

    v102 = [v97 initWithDuration:0 curve:v98 animations:0.3];
    _Block_release(v98);
    v103 = swift_allocObject();
    v103[2] = v5;
    v103[3] = a1;
    v103[4] = v100;
    *&v135 = sub_1002CD3D4;
    *(&v135 + 1) = v103;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v134 = sub_1001A5B50;
    *(&v134 + 1) = &unk_100870180;
    v104 = _Block_copy(&aBlock);
    v105 = v100;
    v106 = v101;
    swift_unknownObjectRetain();

    [v102 addCompletion:v104];
    _Block_release(v104);
    v107 = v102;
    sub_100753284();
    if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v136 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();

    v74 = v136;
  }

LABEL_47:
  if (v74 >> 62)
  {
    goto LABEL_59;
  }

  for (i = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v109 = 0;
    while (1)
    {
      if ((v74 & 0xC000000000000001) != 0)
      {
        v110 = sub_100754574();
      }

      else
      {
        if (v109 >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v110 = *(v74 + 8 * v109 + 32);
      }

      v111 = v110;
      v112 = v109 + 1;
      if (__OFADD__(v109, 1))
      {
        break;
      }

      [v110 startAnimation];

      ++v109;
      if (v112 == i)
      {
        goto LABEL_60;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    ;
  }

LABEL_60:
  if (!v23)
  {
    goto LABEL_68;
  }

  v113 = v23;
  if (UIAccessibilityIsReduceMotionEnabled())
  {

LABEL_69:

    return;
  }

  v114 = swift_allocObject();
  *(v114 + 16) = v113;
  v115 = objc_allocWithZone(UIViewPropertyAnimator);
  *&v135 = sub_1002CD324;
  *(&v135 + 1) = v114;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v134 = sub_1000CF7B0;
  *(&v134 + 1) = &unk_1008700E0;
  v116 = _Block_copy(&aBlock);
  v117 = v113;

  v118 = [v115 initWithDuration:v116 controlPoint1:0.13 controlPoint2:0.17 animations:{0.0, 0.67, 1.0}];
  _Block_release(v116);

  if (!v118)
  {
LABEL_68:

    goto LABEL_69;
  }

  [v118 startAnimationAfterDelay:0.083];
  v119 = v118;
  sub_100753284();
  if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v136 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  sub_100753344();
}

id sub_1002CCE24(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, void *a10, void *a11)
{
  sub_100524128(1);
  [a10 setBounds:{a1, a2, a3, a4}];
  [a10 setCenter:{a5, a6}];
  if (a10)
  {
    v22[0] = 0x3FF0000000000000;
    v22[1] = 0;
    v22[2] = 0;
    v22[3] = 0x3FF0000000000000;
    v22[4] = 0;
    v22[5] = 0;
    [a10 setTransform:v22];
  }

  [a11 setBounds:{a1, a2, a3, a4}];
  return [a11 setCenter:{a7, a8}];
}

void sub_1002CCF34(uint64_t a1, void *a2, void *a3)
{
  v6 = OBJC_IVAR____TtC22SubscribePageExtension27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v7 = *(a1 + v6);
  v8 = *(v7 + 16);
  if (v8)
  {

    v9 = (v7 + 48);
    v10 = (v7 + 48);
    do
    {
      v11 = *v10;
      v10 += 24;
      if (v11 == 1)
      {
        v12 = *(v9 - 2);

        v12(1, 1);
      }

      v9 = v10;
      --v8;
    }

    while (v8);
  }

  if (a2)
  {
    [a2 setAlpha:1.0];
    v13[0] = 0x3FF0000000000000;
    v13[1] = 0;
    v13[2] = 0;
    v13[3] = 0x3FF0000000000000;
    v13[4] = 0;
    v13[5] = 0;
    [a2 setTransform:v13];
  }

  if (a3)
  {
    [a3 setAlpha:0.0];
  }
}

void sub_1002CD050(uint64_t a1, id a2, id a3)
{
  if (!a1)
  {
    v8 = v3;
    if (a2)
    {
      v7 = a3;
      [a2 setHidden:1];
      a3 = v7;
    }

    [a3 completeTransition:{1, v4, v8, v5, v6}];
    sub_100524128(2);
  }
}

void sub_1002CD0E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageCloseAnimation_detailPageViewController);
}

id sub_1002CD138(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppPromotionDetailPageCloseAnimation();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1002CD1EC()
{

  return _swift_deallocObject(v0, 104, 7);
}

double sub_1002CD250(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1002CD268()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1002CD2A8(uint64_t a1)
{
  if (!a1)
  {
    [*(v1 + 16) completeTransition:1];
    return sub_100524128(2);
  }

  return result;
}

uint64_t sub_1002CD2EC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002CD338()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002CD38C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

id sub_1002CD3F4(id result)
{
  if (!result)
  {
    return [*(v1 + 16) setHidden:1];
  }

  return result;
}

uint64_t static AppEventDetailPageLayout.prefersCompactAccessibilityLayout(in:)(uint64_t a1)
{
  if (sub_100753804())
  {
    return sub_1007537D4() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t AppEventDetailPageLayout.Metrics.artworkAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1007504F4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppEventDetailPageLayout.Metrics.artworkAspectRatio.setter(uint64_t a1)
{
  v3 = sub_1007504F4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppEventDetailPageLayout.Metrics.contentHorizontalMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 20);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.formattedDateTopMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 24);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleFormattedDateTopMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 28);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.closeButtonTopMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 32);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.closeButtonLeadingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 36);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.closeButtonSize.setter(double a1, double a2)
{
  result = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  v6 = (v2 + *(result + 40));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t AppEventDetailPageLayout.Metrics.muteButtonSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 44);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.kindTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 48);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleKindTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 52);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 56);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.titleTrailingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 60);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleOverlayBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 64);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.shareButtonSize.setter(double a1, double a2)
{
  result = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  v6 = (v2 + *(result + 68));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleShareButtonTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 72);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.shareButtonLeadingContentInset.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 76);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.shareButtonBaseline.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 80);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.detailTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 84);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleDetailTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 88);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleContentContainerTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 92);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.requirementsTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 96);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleRequirementsTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 100);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.notifyMeButtonTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 104);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleNotifyMeButtonTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 108);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.separatorTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 112);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.separatorBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 116);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleSeparatorTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 120);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleSeparatorBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 124);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.lockupBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 128);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleLockupBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 132);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.init(artworkAspectRatio:contentHorizontalMargin:formattedDateTopMargin:accessibleFormattedDateTopMargin:closeButtonTopMargin:closeButtonLeadingMargin:closeButtonSize:muteButtonSpace:kindTopSpace:accessibleKindTopSpace:titleTopSpace:titleTrailingMargin:accessibleOverlayBottomSpace:shareButtonSize:accessibleShareButtonTopSpace:shareButtonLeadingContentInset:shareButtonBaseline:detailTopSpace:accessibleDetailTopSpace:accessibleContentContainerTopSpace:requirementsTopSpace:accessibleRequirementsTopSpace:notifyMeButtonTopSpace:accessibleNotifyMeButtonTopSpace:separatorTopSpace:separatorBottomSpace:accessibleSeparatorTopSpace:accessibleSeparatorBottomSpace:lockupBottomSpace:accessibleLockupBottomSpace:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, __int128 *a14, __int128 *a15, __int128 *a16, __int128 *a17, __int128 *a18, __int128 *a19, __int128 *a20, __int128 *a21, __int128 *a22, __int128 *a23, __int128 *a24, __int128 *a25, __int128 *a26, __int128 *a27, __int128 *a28, __int128 *a29, __int128 *a30, __int128 *a31, __int128 *a32, __int128 *a33)
{
  v44 = sub_1007504F4();
  (*(*(v44 - 8) + 32))(a9, a1, v44);
  v45 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  sub_100012160(a2, a9 + v45[5]);
  sub_100012160(a3, a9 + v45[6]);
  sub_100012160(a4, a9 + v45[7]);
  sub_100012160(a5, a9 + v45[8]);
  sub_100012160(a6, a9 + v45[9]);
  v46 = (a9 + v45[10]);
  *v46 = a10;
  v46[1] = a11;
  sub_100012160(a7, a9 + v45[11]);
  sub_100012160(a8, a9 + v45[12]);
  sub_100012160(a14, a9 + v45[13]);
  sub_100012160(a15, a9 + v45[14]);
  sub_100012160(a16, a9 + v45[15]);
  sub_100012160(a17, a9 + v45[16]);
  v47 = (a9 + v45[17]);
  *v47 = a12;
  v47[1] = a13;
  sub_100012160(a18, a9 + v45[18]);
  sub_100012160(a19, a9 + v45[19]);
  sub_100012160(a20, a9 + v45[20]);
  sub_100012160(a21, a9 + v45[21]);
  sub_100012160(a22, a9 + v45[22]);
  sub_100012160(a23, a9 + v45[23]);
  sub_100012160(a24, a9 + v45[24]);
  sub_100012160(a25, a9 + v45[25]);
  sub_100012160(a26, a9 + v45[26]);
  sub_100012160(a27, a9 + v45[27]);
  sub_100012160(a28, a9 + v45[28]);
  sub_100012160(a29, a9 + v45[29]);
  sub_100012160(a30, a9 + v45[30]);
  sub_100012160(a31, a9 + v45[31]);
  sub_100012160(a32, a9 + v45[32]);
  v48 = a9 + v45[33];

  return sub_100012160(a33, v48);
}

uint64_t sub_1002CEED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AppEventDetailPageLayout.init(metrics:shadowView:cardContentView:borderView:contentContainerView:mediaContainerView:artworkView:videoView:gradientBlurView:mediaReplicationView:overlayContentContainerView:contentBackgroundBlurView:formattedDateView:closeButtonView:kindLabel:titleLabel:shareButtonView:detailLabel:requirementsLabel:notifyMeButton:separatorView:lockupView:isCollapsing:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 *a12, uint64_t a13, __int128 *a14, uint64_t a15, __int128 *a16, __int128 *a17, uint64_t a18, __int128 *a19, uint64_t a20, uint64_t a21, __int128 *a22, __int128 *a23, char a24)
{
  sub_1002CF880(a1, a9);
  v29 = type metadata accessor for AppEventDetailPageLayout(0);
  sub_100012160(a2, a9 + v29[5]);
  sub_100012160(a3, a9 + v29[6]);
  sub_100012160(a4, a9 + v29[7]);
  sub_100012160(a5, a9 + v29[8]);
  sub_100012160(a6, a9 + v29[9]);
  sub_100012160(a7, a9 + v29[10]);
  v30 = a9 + v29[11];
  v31 = *(a8 + 16);
  *v30 = *a8;
  *(v30 + 16) = v31;
  *(v30 + 32) = *(a8 + 32);
  v32 = a9 + v29[12];
  v33 = *(a10 + 16);
  *v32 = *a10;
  *(v32 + 16) = v33;
  *(v32 + 32) = *(a10 + 32);
  v34 = a9 + v29[13];
  v35 = *(a11 + 16);
  *v34 = *a11;
  *(v34 + 16) = v35;
  *(v34 + 32) = *(a11 + 32);
  sub_100012160(a12, a9 + v29[14]);
  v36 = a9 + v29[15];
  v37 = *(a13 + 16);
  *v36 = *a13;
  *(v36 + 16) = v37;
  *(v36 + 32) = *(a13 + 32);
  sub_100012160(a14, a9 + v29[16]);
  v38 = a9 + v29[17];
  v39 = *(a15 + 16);
  *v38 = *a15;
  *(v38 + 16) = v39;
  *(v38 + 32) = *(a15 + 32);
  sub_100012160(a16, a9 + v29[18]);
  sub_100012160(a17, a9 + v29[19]);
  v40 = a9 + v29[20];
  v41 = *(a18 + 16);
  *v40 = *a18;
  *(v40 + 16) = v41;
  *(v40 + 32) = *(a18 + 32);
  sub_100012160(a19, a9 + v29[21]);
  v42 = a9 + v29[22];
  v43 = *(a20 + 16);
  *v42 = *a20;
  *(v42 + 16) = v43;
  *(v42 + 32) = *(a20 + 32);
  v44 = a9 + v29[23];
  v45 = *(a21 + 16);
  *v44 = *a21;
  *(v44 + 16) = v45;
  *(v44 + 32) = *(a21 + 32);
  sub_100012160(a22, a9 + v29[24]);
  result = sub_100012160(a23, a9 + v29[25]);
  *(a9 + v29[26]) = a24;
  return result;
}

uint64_t sub_1002CF880(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static AppEventDetailPageLayout.prefersCompactAccessibilityTitleLayout(in:)(void *a1)
{
  if ((sub_1007537D4() & 1) == 0)
  {
    return 0;
  }

  v2 = [a1 preferredContentSizeCategory];
  v3 = sub_100753954();

  return v3 & 1;
}

uint64_t AppEventDetailPageLayout.placeChildren(relativeTo:in:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = [a1 traitCollection];
  v11 = sub_1007537E4();

  if (v11)
  {
    sub_1002CFA78(a1, a2, a3, a4, a5);
    goto LABEL_8;
  }

  v12 = [a1 traitCollection];
  if (sub_100753804())
  {
    v13 = sub_1007537D4();

    if (v13)
    {
      sub_1002D1470(a1, a2, a3, a4, a5);
      goto LABEL_8;
    }
  }

  else
  {
  }

  sub_1002D2B04(a1, v14, v15, a4, a5);
LABEL_8:

  return sub_100750314();
}

void sub_1002CFA78(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = sub_100754724();
  v13 = *(v12 - 1);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v195 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 traitCollection];
  LODWORD(v207) = sub_100753804();

  v18 = type metadata accessor for AppEventDetailPageLayout(0);
  sub_10000C888((*&v6 + v18[5]), *(*&v6 + v18[5] + 24));
  sub_100750394();
  sub_10000C888((*&v6 + v18[6]), *(*&v6 + v18[6] + 24));
  sub_100750394();
  sub_10000C888((*&v6 + v18[7]), *(*&v6 + v18[7] + 24));
  sub_100750394();
  sub_10000C888((*&v6 + v18[8]), *(*&v6 + v18[8] + 24));
  sub_100750394();
  v220.origin.x = a2;
  v220.origin.y = a3;
  v220.size.width = a4;
  v220.size.height = a5;
  CGRectGetHeight(v220);
  sub_1007504B4();
  v20 = floor(v19) + 4.0;
  v221.origin.x = a2;
  v221.origin.y = a3;
  v221.size.width = a4;
  v221.size.height = a5;
  v21 = CGRectGetHeight(v221) + 4.0;
  sub_10000C888((*&v6 + v18[9]), *(*&v6 + v18[9] + 24));
  v211 = a1;
  sub_100753B24();
  sub_100750394();
  sub_10000C888((*&v6 + v18[10]), *(*&v6 + v18[10] + 24));
  sub_100750394();
  sub_100016B4C(*&v6 + v18[11], v218, &unk_100928A00, &qword_1007A5AB0);
  if (v219)
  {
    sub_10000C888(v218, v219);
    sub_100750394();
    sub_10000C620(v218);
  }

  else
  {
    sub_10000C8CC(v218, &unk_100928A00, &qword_1007A5AB0);
  }

  sub_100016B4C(*&v6 + v18[13], v218, &unk_100928A00, &qword_1007A5AB0);
  v209 = a2;
  if (v219)
  {
    sub_10000C888(v218, v219);
    v222.origin.x = a2;
    v222.origin.y = a3;
    v222.size.width = a4;
    v222.size.height = a5;
    CGRectGetWidth(v222);
    v223.origin.x = v209;
    v223.origin.y = a3;
    v223.size.width = a4;
    v223.size.height = a5;
    CGRectGetHeight(v223);
    a2 = v209;
    sub_100750394();
    sub_10000C620(v218);
  }

  else
  {
    sub_10000C8CC(v218, &unk_100928A00, &qword_1007A5AB0);
  }

  v224.origin.x = 0.0;
  v224.origin.y = 0.0;
  v224.size.width = v20;
  v224.size.height = v21;
  v22 = CGRectGetMaxX(v224) + -4.0;
  v225.origin.x = a2;
  v225.origin.y = a3;
  v225.size.width = a4;
  v225.size.height = a5;
  Width = CGRectGetWidth(v225);
  v226.origin.x = 0.0;
  v226.origin.y = 0.0;
  v226.size.width = v20;
  v226.size.height = v21;
  v24 = Width - CGRectGetWidth(v226) + 4.0;
  v227.origin.x = a2;
  v227.origin.y = a3;
  v227.size.width = a4;
  v227.size.height = a5;
  v25 = CGRectGetHeight(v227) + 4.0;
  sub_10000C888((*&v6 + v18[14]), *(*&v6 + v18[14] + 24));
  sub_100753B24();
  sub_100750394();
  v26 = v18[15];
  v206 = v6;
  sub_100016B4C(*&v6 + v26, v218, &unk_100928A00, &qword_1007A5AB0);
  v210 = v12;
  v204 = a5;
  v205 = a3;
  if (v219)
  {
    sub_10000C888(v218, v219);
    sub_100753B24();
    sub_100750394();
    sub_10000C620(v218);
  }

  else
  {
    sub_10000C8CC(v218, &unk_100928A00, &qword_1007A5AB0);
  }

  v27 = a4;
  *&v28 = COERCE_DOUBLE(type metadata accessor for AppEventDetailPageLayout.Metrics(0));
  v29 = v206;
  v30 = (*&v206 + v28[5]);
  v31 = v30[3];
  sub_10000C888(v30, v31);
  sub_100536120(v31);
  sub_100750564();
  v33 = v32;
  v34 = *(v13 + 8);
  *&v213 = v13 + 8;
  v35 = v210;
  v34(v16, v210);
  v228.origin.y = 0.0;
  v228.origin.x = v22;
  v228.size.width = v24;
  v228.size.height = v25;
  v36 = CGRectGetWidth(v228) - (v33 + v33);
  v229.origin.y = 0.0;
  v229.origin.x = v22;
  v229.size.width = v24;
  v229.size.height = v25;
  Height = CGRectGetHeight(v229);
  v38 = v28[9];
  v39 = (*&v29 + v28[10]);
  v40 = *v39;
  v196 = *(v39 + 1);
  v197 = v40;
  v41 = *(*&v29 + v38 + 24);
  sub_10000C888((*&v29 + v38), v41);
  sub_100536120(v41);
  sub_100750564();
  v34(v16, v35);
  v230.origin.y = 0.0;
  v230.origin.x = v33;
  v230.size.width = v36;
  v230.size.height = Height;
  CGRectGetHeight(v230);
  v42 = (*&v29 + v18[16]);
  v215 = v18;
  sub_10000C888(v42, v42[3]);
  sub_100750404();
  v44 = v43;
  v46 = v45;
  v47 = (*&v29 + v28[6]);
  v48 = v47[3];
  sub_10000C888(v47, v48);
  sub_100536120(v48);
  sub_100750564();
  v50 = v49;
  v34(v16, v35);
  v231.origin.y = 0.0;
  v231.origin.x = v33;
  v231.size.width = v36;
  v231.size.height = Height;
  MinX = CGRectGetMinX(v231);
  v232.origin.y = 0.0;
  v232.origin.x = v33;
  v232.size.width = v36;
  v232.size.height = Height;
  v52 = v50 + CGRectGetMinY(v232);
  sub_10000C888(v42, v42[3]);
  v198 = MinX;
  v202 = v44;
  v201 = v46;
  sub_100753B24();
  v53 = v35;
  sub_100750394();
  v208 = v28;
  v54 = (*&v29 + v28[8]);
  v55 = v54[3];
  sub_10000C888(v54, v55);
  sub_100536120(v55);
  sub_100750564();
  v203 = v16;
  v214 = *&v34;
  v34(v16, v35);
  v233.origin.x = v209;
  v233.origin.y = v205;
  v233.size.width = v27;
  v233.size.height = v204;
  CGRectGetMaxX(v233);
  v234.origin.y = 0.0;
  v234.origin.x = v33;
  v199 = v36;
  v234.size.width = v36;
  v212 = Height;
  v234.size.height = Height;
  CGRectGetMinY(v234);
  sub_100016B4C(*&v29 + v215[17], v218, &unk_100928A00, &qword_1007A5AB0);
  v56 = v33;
  if (v219)
  {
    sub_10000C888(v218, v219);
    sub_100753B24();
    sub_100750394();
    sub_10000C620(v218);
  }

  else
  {
    sub_10000C8CC(v218, &unk_100928A00, &qword_1007A5AB0);
  }

  v235.origin.x = v198;
  v235.origin.y = v52;
  v235.size.width = v202;
  v235.size.height = v201;
  MaxY = CGRectGetMaxY(v235);
  v58 = v206;
  v59 = (*&v206 + v208[17]);
  v60 = v59[1];
  v201 = *v59;
  v61 = (*&v206 + v208[20]);
  v62 = v61[3];
  sub_10000C888(v61, v62);
  v63 = v203;
  sub_100536120(v62);
  sub_100750564();
  v198 = v64;
  v65 = v214;
  (*&v214)(v63, v53);
  v66 = v215;
  *&v202 = v215[20];
  sub_100016B4C(*&v58 + *&v202, &v216, &unk_100928A00, &qword_1007A5AB0);
  v67 = v199;
  v200 = v27;
  v197 = v60;
  if (v217)
  {
    sub_100012160(&v216, v218);
    v68 = v56;
    if (LOBYTE(v207))
    {
      v69 = v58;
      v70 = v208;
      v71 = (*&v69 + v208[18]);
      v72 = v71[3];
      sub_10000C888(v71, v72);
      sub_100536120(v72);
      sub_100750564();
      v74 = v73;
      (*&v65)(v63, v53);
      v75 = (*&v206 + v70[19]);
      v76 = v75[3];
      sub_10000C888(v75, v76);
      sub_100536120(v76);
      sub_100750564();
      v78 = v77;
      (*&v65)(v63, v53);
      v236.origin.y = 0.0;
      v236.origin.x = v56;
      v236.size.width = v67;
      v79 = v212;
      v236.size.height = v212;
      v80 = CGRectGetMinX(v236) - v78;
      v81 = MaxY + v74;
      sub_10000C888(v218, v219);
      v58 = v206;
      v82 = v201;
      sub_100753B24();
      v66 = v215;
      sub_100750394();
      v237.origin.x = v80;
      v237.origin.y = v81;
      v237.size.width = v82;
      v237.size.height = v60;
      MaxY = CGRectGetMaxY(v237) - v198;
      sub_10000C620(v218);
      goto LABEL_19;
    }

    sub_10000C620(v218);
  }

  else
  {
    sub_10000C8CC(&v216, &unk_100928A00, &qword_1007A5AB0);
    v68 = v56;
  }

  v79 = v212;
LABEL_19:
  v83 = (*&v58 + v66[18]);
  sub_10000C888(v83, v83[3]);
  sub_100750404();
  v85 = v84;
  v87 = v86;
  v88 = 12;
  if (LOBYTE(v207))
  {
    v88 = 13;
  }

  v89 = v208;
  v90 = (*&v58 + v208[v88]);
  v91 = v90[3];
  sub_10000C888(v90, v91);
  sub_100536120(v91);
  sub_100750564();
  v93 = v92;
  v94 = v210;
  (*&v214)(v63, v210);
  v238.origin.y = 0.0;
  v238.origin.x = v68;
  v238.size.width = v67;
  v238.size.height = v79;
  v95 = CGRectGetMinX(v238);
  sub_10000C888(v83, v83[3]);
  sub_100753B24();
  sub_100750394();
  v239.origin.x = v95;
  v239.origin.y = MaxY + v93;
  v239.size.width = v85;
  v239.size.height = v87;
  v96 = CGRectGetMaxY(v239);
  sub_100016B4C(*&v58 + *&v202, v218, &unk_100928A00, &qword_1007A5AB0);
  v97 = v219 == 0;
  sub_10000C8CC(v218, &unk_100928A00, &qword_1007A5AB0);
  if (((v97 | LODWORD(v207)) & 1) == 0)
  {
    v98 = (*&v58 + v89[15]);
    v99 = v98[3];
    sub_10000C888(v98, v99);
    sub_100536120(v99);
    sub_100750564();
    (*&v214)(v63, v94);
  }

  v240.origin.y = 0.0;
  v240.origin.x = v68;
  v240.size.width = v67;
  v100 = v67;
  v101 = v68;
  v102 = v212;
  v240.size.height = v212;
  CGRectGetHeight(v240);
  v103 = (*&v58 + v215[19]);
  sub_10000C888(v103, v103[3]);
  sub_100750404();
  v105 = v104;
  v107 = v106;
  v196 = v108;
  v109 = (*&v58 + v89[14]);
  v110 = v109[3];
  sub_10000C888(v109, v110);
  sub_100536120(v110);
  sub_100750564();
  v112 = v111;
  (*&v214)(v63, v94);
  v241.origin.y = 0.0;
  v241.origin.x = v101;
  v241.size.width = v100;
  v241.size.height = v102;
  v113 = CGRectGetMinX(v241);
  v114 = v96 + v112;
  sub_10000C888(v103, v103[3]);
  v206 = v101;
  sub_100753B24();
  sub_100750394();
  v242.origin.x = v113;
  v242.origin.y = v114;
  v242.size.width = v105;
  v242.size.height = v107;
  v115 = CGRectGetMaxY(v242);
  sub_100016B4C(*&v58 + *&v202, &v216, &unk_100928A00, &qword_1007A5AB0);
  if (v217)
  {
    sub_100012160(&v216, v218);
    if ((LOBYTE(v207) & 1) == 0)
    {
      v243.origin.x = v113;
      v243.origin.y = v114;
      v243.size.width = v105;
      v243.size.height = v107;
      CGRectGetMinY(v243);
      v244.origin.y = 0.0;
      v244.origin.x = v206;
      v244.size.width = v100;
      v244.size.height = v212;
      CGRectGetMaxX(v244);
      sub_10000C888(v218, v219);
      sub_100753B24();
      sub_100750394();
    }

    sub_10000C620(v218);
  }

  else
  {
    sub_10000C8CC(&v216, &unk_100928A00, &qword_1007A5AB0);
  }

  v116 = v214;
  v117 = v203;
  v118 = v208;
  v119 = (*&v58 + v215[21]);
  sub_10000C888(v119, v119[3]);
  v120 = v212;
  sub_100750404();
  v122 = v121;
  v124 = v123;
  v125 = (*&v58 + v118[21]);
  v126 = v125[3];
  sub_10000C888(v125, v126);
  sub_100536120(v126);
  sub_100750564();
  v128 = v127;
  (*&v116)(v117, v210);
  v245.origin.y = 0.0;
  v245.origin.x = v206;
  v245.size.width = v100;
  v245.size.height = v120;
  v129 = CGRectGetMinX(v245);
  v130 = v215;
  sub_10000C888(v119, v119[3]);
  v131 = v100;
  sub_100753B24();
  sub_100750394();
  v246.origin.x = v129;
  v246.origin.y = v115 + v128;
  v246.size.width = v122;
  v246.size.height = v124;
  v132 = CGRectGetMaxY(v246);
  sub_100016B4C(*&v58 + v130[22], &v216, &qword_10092BC30, &qword_1007AD5C0);
  if (v217)
  {
    sub_100012160(&v216, v218);
    sub_10000C888(v218, v219);
    if (sub_1007503A4())
    {
      sub_10000C620(v218);
      v133 = v210;
    }

    else
    {
      sub_10000C888(v218, v219);
      v134 = sub_100750364();
      v133 = v210;
      if (v134)
      {
        sub_10000C888(v218, v219);
        v135 = v212;
        sub_100750404();
        v137 = v136;
        v139 = v138;
        v140 = (*&v58 + v118[24]);
        v141 = v140[3];
        sub_10000C888(v140, v141);
        sub_100536120(v141);
        sub_100750564();
        v143 = v142;
        (*&v214)(v117, v133);
        v247.origin.y = 0.0;
        v247.origin.x = v206;
        v247.size.width = v100;
        v247.size.height = v135;
        v144 = CGRectGetMinX(v247);
        sub_10000C888(v218, v219);
        v131 = v100;
        sub_100753B24();
        sub_100750394();
        v248.origin.x = v144;
        v248.origin.y = v132 + v143;
        v248.size.width = v137;
        v248.size.height = v139;
        v132 = CGRectGetMaxY(v248);
      }

      sub_10000C620(v218);
    }

    v130 = v215;
  }

  else
  {
    sub_10000C8CC(&v216, &qword_10092BC30, &qword_1007AD5C0);
    v133 = v210;
  }

  sub_100016B4C(*&v58 + v130[23], &v216, &unk_100928A00, &qword_1007A5AB0);
  if (v217)
  {
    sub_100012160(&v216, v218);
    sub_10000C888(v218, v219);
    v145 = sub_1007503A4();
    v146 = v214;
    if (v145)
    {
      v207 = v132;
    }

    else
    {
      sub_10000C888(v218, v219);
      v147 = v212;
      sub_100750404();
      v149 = v148;
      v151 = v150;
      v152 = (*&v58 + v118[26]);
      v153 = v152[3];
      sub_10000C888(v152, v153);
      sub_100536120(v153);
      sub_100750564();
      v155 = v154;
      (*&v146)(v117, v133);
      v249.origin.y = 0.0;
      v249.origin.x = v206;
      v249.size.width = v100;
      v249.size.height = v147;
      v156 = CGRectGetMinX(v249);
      sub_10000C888(v218, v219);
      v131 = v100;
      sub_100753B24();
      sub_100750394();
      v250.origin.x = v156;
      v250.origin.y = v132 + v155;
      v250.size.width = v149;
      v250.size.height = v151;
      v207 = CGRectGetMaxY(v250);
    }

    sub_10000C620(v218);
  }

  else
  {
    v207 = v132;
    sub_10000C8CC(&v216, &unk_100928A00, &qword_1007A5AB0);
    v146 = v214;
  }

  v157 = (*&v58 + v118[32]);
  v158 = v157[3];
  sub_10000C888(v157, v158);
  sub_100536120(v158);
  sub_100750564();
  v160 = v159;
  (*&v146)(v117, v133);
  v161 = (*&v58 + v215[25]);
  v162 = v133;
  v163 = v161[3];
  v210 = v161;
  sub_10000C888(v161, v163);
  v164 = v212;
  sub_100750404();
  v166 = v165;
  v167 = (*&v58 + v118[29]);
  v168 = v167[3];
  sub_10000C888(v167, v168);
  sub_100536120(v168);
  sub_100750564();
  v170 = v169;
  (*&v146)(v117, v133);
  v171 = (*&v58 + v118[28]);
  v172 = v171[3];
  sub_10000C888(v171, v172);
  sub_100536120(v172);
  v173 = v211;
  sub_100750564();
  v175 = v174;
  (*&v146)(v117, v162);
  v176 = [v173 traitCollection];
  sub_100751364();
  v178 = v177;

  *&v208 = v178;
  v213 = v170;
  v214 = v166;
  v179 = v160;
  v180 = v160 + v166 + v170 + v175 + v178;
  v181 = v207;
  v182 = v207 + v180;
  v251.origin.x = v209;
  v251.origin.y = v205;
  v251.size.width = v200;
  v251.size.height = v204;
  v183 = CGRectGetHeight(v251);
  v252.origin.y = 0.0;
  v184 = v131;
  v185 = v206;
  v252.origin.x = v206;
  v252.size.width = v184;
  v252.size.height = v164;
  v209 = CGRectGetMinX(v252);
  if (v183 >= v182)
  {
    v257.origin.y = 0.0;
    v257.origin.x = v185;
    v257.size.width = v184;
    v257.size.height = v164;
    v190 = CGRectGetHeight(v257);
    v191 = v214;
    v192 = v190 - v214 - v179;
    v258.origin.y = 0.0;
    v258.origin.x = v185;
    v258.size.width = v184;
    v258.size.height = v164;
    v193 = CGRectGetWidth(v258);
    sub_10000C888(v210, v210[3]);
    v194 = v209;
    sub_100753B24();
    sub_100750394();
    v259.origin.y = 0.0;
    v259.origin.x = v185;
    v259.size.width = v184;
    v259.size.height = v164;
    CGRectGetMinX(v259);
    v260.origin.x = v194;
    v260.origin.y = v192;
    v260.size.width = v193;
    v260.size.height = v191;
    CGRectGetMinY(v260);
    v261.origin.y = 0.0;
    v261.origin.x = v185;
    v261.size.width = v184;
    v261.size.height = v164;
    CGRectGetWidth(v261);
    sub_10000C888((*&v58 + v215[24]), *(*&v58 + v215[24] + 24));
  }

  else
  {
    v186 = v181 + v175;
    v253.origin.y = 0.0;
    v253.origin.x = v185;
    v253.size.width = v184;
    v253.size.height = v164;
    v187 = CGRectGetWidth(v253);
    sub_10000C888((*&v58 + v215[24]), *(*&v58 + v215[24] + 24));
    v188 = v209;
    v189 = *&v208;
    sub_100753B24();
    sub_100750394();
    v254.origin.y = 0.0;
    v254.origin.x = v185;
    v254.size.width = v184;
    v254.size.height = v164;
    CGRectGetMinX(v254);
    v255.origin.x = v188;
    v255.origin.y = v186;
    v255.size.width = v187;
    v255.size.height = v189;
    CGRectGetMaxY(v255);
    v256.origin.y = 0.0;
    v256.origin.x = v185;
    v256.size.width = v184;
    v256.size.height = v164;
    CGRectGetWidth(v256);
    sub_10000C888(v210, v210[3]);
  }

  sub_100753B24();
  sub_100750394();
}

void sub_1002D1470(void *a1, double a2, double a3, CGFloat a4, double a5)
{
  v6 = v5;
  v208 = sub_100754724();
  v12 = *(v208 - 8);
  __chkstk_darwin(v208);
  v14 = &v202 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007504C4();
  v16 = v15;
  v17 = type metadata accessor for AppEventDetailPageLayout(0);
  sub_10000C888((v5 + v17[9]), *(v5 + v17[9] + 24));
  sub_100750394();
  v221.origin.x = 0.0;
  v221.origin.y = 0.0;
  v221.size.width = a4;
  v221.size.height = v16;
  CGRectGetWidth(v221);
  v222.origin.x = 0.0;
  v222.origin.y = 0.0;
  v222.size.width = a4;
  v207 = v16;
  v222.size.height = v16;
  CGRectGetHeight(v222);
  sub_10000C888((v6 + v17[10]), *(v6 + v17[10] + 24));
  sub_100750394();
  sub_100016B4C(v5 + v17[11], v219, &unk_100928A00, &qword_1007A5AB0);
  if (v220)
  {
    sub_10000C888(v219, v220);
    sub_100750394();
    sub_10000C620(v219);
  }

  else
  {
    sub_10000C8CC(v219, &unk_100928A00, &qword_1007A5AB0);
  }

  sub_100016B4C(v5 + v17[12], v219, &unk_100928A00, &qword_1007A5AB0);
  if (v220)
  {
    sub_10000C888(v219, v220);
    sub_100750394();
    sub_10000C620(v219);
  }

  else
  {
    sub_10000C8CC(v219, &unk_100928A00, &qword_1007A5AB0);
  }

  sub_10000C888((v5 + v17[14]), *(v5 + v17[14] + 24));
  sub_100750394();
  v18 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  v213 = v17;
  v19 = v18;
  v20 = (v5 + *(v18 + 20));
  v21 = v20[3];
  sub_10000C888(v20, v21);
  sub_100536120(v21);
  sub_100750564();
  v23 = v22;
  v24 = *(v12 + 8);
  v25 = v208;
  v24(v14, v208);
  v26 = sub_10010FD98(a2, a3, a4, a5, 0.0, v23);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = (v6 + v19[8]);
  v34 = v33[3];
  sub_10000C888(v33, v34);
  sub_100536120(v34);
  sub_100750564();
  v203 = v35;
  v204 = v14;
  v205 = v24;
  v24(v14, v25);
  v212 = v19;
  v36 = v19[10];
  v37 = v213;
  v206 = *(v6 + v36 + 8);
  v223.origin.x = v26;
  v223.origin.y = v28;
  v223.size.width = v30;
  v214 = v32;
  v223.size.height = v32;
  CGRectGetMinY(v223);
  v38 = v37[17];
  v216 = v6;
  sub_100016B4C(v6 + v38, v219, &unk_100928A00, &qword_1007A5AB0);
  v215 = v12 + 8;
  v211 = v26;
  if (v220)
  {
    sub_10000C888(v219, v220);
    v39 = v214;
    sub_100753B24();
    sub_100750394();
    sub_10000C620(v219);
    v40 = a4;
    v41 = v39;
  }

  else
  {
    sub_10000C8CC(v219, &unk_100928A00, &qword_1007A5AB0);
    v40 = a4;
    v41 = v214;
  }

  v209 = v28;
  v42 = v208;
  v43 = 0;
  v44 = 0;
  v206 = v40;
  v45 = v207;
  Height = CGRectGetHeight(*(&v40 - 2));
  v47 = (v216 + v37[18]);
  sub_10000C888(v47, v47[3]);
  sub_100750404();
  v203 = v48;
  v50 = v49;
  v51 = a1;
  v52 = [a1 traitCollection];
  v53 = sub_1007537D4();
  v54 = v30;
  v210 = v30;
  v55 = v204;
  if (v53)
  {
    v56 = [v52 preferredContentSizeCategory];
    v57 = sub_100753954();

    v58 = v211;
    if (v57)
    {
      v59 = 16;
      v60 = v42;
      v61 = v205;
      v62 = v51;
      goto LABEL_15;
    }
  }

  else
  {

    v58 = v211;
  }

  v63 = v216;
  v64 = (v216 + v213[19]);
  sub_10000C888(v64, v64[3]);
  v62 = v51;
  sub_100750404();
  v66 = v65;
  v68 = v67;
  v69 = (v63 + v212[16]);
  v70 = v69[3];
  sub_10000C888(v69, v70);
  sub_100536120(v70);
  sub_100750564();
  v72 = v71;
  v73 = v42;
  v60 = v42;
  v61 = v205;
  v205(v55, v73);
  v74 = Height - v72 - v68;
  v224.origin.x = v58;
  v224.origin.y = v209;
  v224.size.width = v210;
  v224.size.height = v214;
  MinX = CGRectGetMinX(v224);
  sub_10000C888(v64, v64[3]);
  sub_100753B24();
  sub_100750394();
  v225.origin.x = MinX;
  v225.origin.y = v74;
  v225.size.width = v66;
  v54 = v210;
  v41 = v214;
  v225.size.height = v68;
  Height = CGRectGetMinY(v225);
  v59 = 14;
LABEL_15:
  v76 = v212;
  v77 = (v216 + v212[v59]);
  v78 = v77[3];
  sub_10000C888(v77, v78);
  sub_100536120(v78);
  sub_100750564();
  v80 = v79;
  v81 = v61;
  v61(v55, v60);
  v82 = Height - v80 - v50;
  v226.origin.x = v58;
  v83 = v209;
  v226.origin.y = v209;
  v226.size.width = v54;
  v226.size.height = v41;
  v84 = CGRectGetMinX(v226);
  sub_10000C888(v47, v47[3]);
  v85 = v203;
  sub_100753B24();
  sub_100750394();
  v86 = v216;
  v87 = (v216 + v76[13]);
  v88 = v87[3];
  sub_10000C888(v87, v88);
  sub_100536120(v88);
  sub_100750564();
  v90 = v89;
  v61(v55, v60);
  v227.origin.x = v84;
  v227.origin.y = v82;
  v227.size.width = v85;
  v227.size.height = v50;
  v91 = CGRectGetMinY(v227) - v90;
  v92 = v213;
  v93 = (v86 + v213[16]);
  sub_10000C888(v93, v93[3]);
  sub_100750404();
  v95 = v94;
  v97 = v96;
  v98 = v91 - v96;
  v228.origin.x = v211;
  v228.origin.y = v83;
  v228.size.width = v54;
  v228.size.height = v41;
  v99 = CGRectGetMinX(v228);
  sub_10000C888(v93, v93[3]);
  sub_100753B24();
  sub_100750394();
  v100 = (v86 + v212[7]);
  v101 = v100[3];
  sub_10000C888(v100, v101);
  sub_100536120(v101);
  sub_100750564();
  v61(v55, v60);
  v229.origin.x = v99;
  v102 = v211;
  v229.origin.y = v98;
  v229.size.width = v95;
  v229.size.height = v97;
  CGRectGetMinY(v229);
  sub_100016B4C(v86 + v92[20], &v217, &unk_100928A00, &qword_1007A5AB0);
  v103 = v60;
  if (v218)
  {
    sub_100012160(&v217, v219);
    v104 = v212;
    v105 = (v216 + v212[20]);
    v106 = v105[3];
    sub_10000C888(v105, v106);
    sub_100536120(v106);
    sub_100750564();
    v81(v55, v60);
    v230.origin.x = v102;
    v230.origin.y = v209;
    v230.size.width = v210;
    v230.size.height = v214;
    CGRectGetMinX(v230);
    sub_10000C888(v219, v220);
    sub_100753B24();
    sub_100750394();
    sub_10000C620(v219);
    v107 = v206;
  }

  else
  {
    sub_10000C8CC(&v217, &unk_100928A00, &qword_1007A5AB0);
    v107 = v206;
    v104 = v212;
  }

  v108 = 0;
  v109 = 0;
  v110 = v207;
  MaxY = CGRectGetMaxY(*(&v107 - 2));
  v112 = [v62 traitCollection];
  if (sub_1007537D4())
  {
    v113 = [v112 preferredContentSizeCategory];
    v114 = sub_100753954();

    if (v114)
    {
      v115 = v216;
      v116 = (v216 + v213[19]);
      sub_10000C888(v116, v116[3]);
      v117 = v210;
      v118 = v214;
      sub_100750404();
      v120 = v119;
      v207 = v121;
      v122 = (v115 + v104[23]);
      v123 = v122[3];
      sub_10000C888(v122, v123);
      sub_100536120(v123);
      sub_100750564();
      v125 = v124;
      v81(v55, v103);
      v231.origin.x = v211;
      v231.origin.y = v209;
      v231.size.width = v117;
      v231.size.height = v118;
      v126 = CGRectGetMinX(v231);
      v127 = MaxY + v125;
      sub_10000C888(v116, v116[3]);
      v128 = v207;
      sub_100753B24();
      sub_100750394();
      v129 = (v115 + v104[22]);
      v130 = v129[3];
      sub_10000C888(v129, v130);
      sub_100536120(v130);
      sub_100750564();
      v132 = v131;
      v133 = v208;
      (v81)(v55);
      v232.origin.x = v126;
      v232.origin.y = v127;
      v232.size.width = v120;
      v232.size.height = v128;
      v207 = CGRectGetMaxY(v232);
      goto LABEL_23;
    }
  }

  else
  {
  }

  v207 = MaxY;
  v134 = (v216 + v104[23]);
  v135 = v134[3];
  sub_10000C888(v134, v135);
  sub_100536120(v135);
  sub_100750564();
  v132 = v136;
  v133 = v60;
  v81(v55, v60);
LABEL_23:
  v137 = v213;
  v138 = v216;
  v139 = (v216 + v213[21]);
  sub_10000C888(v139, v139[3]);
  v140 = v210;
  v141 = v214;
  sub_100750404();
  v143 = v142;
  v145 = v144;
  v233.origin.x = v211;
  v233.origin.y = v209;
  v233.size.width = v140;
  v233.size.height = v141;
  v146 = CGRectGetMinX(v233);
  v147 = v132 + v207;
  sub_10000C888(v139, v139[3]);
  sub_100753B24();
  sub_100750394();
  v234.origin.x = v146;
  v234.origin.y = v147;
  v234.size.width = v143;
  v234.size.height = v145;
  v148 = CGRectGetMaxY(v234);
  sub_100016B4C(v138 + v137[22], &v217, &qword_10092BC30, &qword_1007AD5C0);
  if (!v218)
  {
    sub_10000C8CC(&v217, &qword_10092BC30, &qword_1007AD5C0);
    goto LABEL_27;
  }

  sub_100012160(&v217, v219);
  sub_10000C888(v219, v220);
  if (sub_1007503A4())
  {
    sub_10000C620(v219);
LABEL_27:
    v149 = v212;
    goto LABEL_31;
  }

  sub_10000C888(v219, v220);
  v150 = sub_100750364();
  v149 = v212;
  if (v150)
  {
    sub_10000C888(v219, v220);
    v151 = v210;
    v152 = v214;
    sub_100750404();
    v207 = v153;
    v155 = v154;
    v156 = (v216 + v149[25]);
    v157 = v156[3];
    sub_10000C888(v156, v157);
    sub_100536120(v157);
    sub_100750564();
    v159 = v158;
    v81(v55, v133);
    v235.origin.x = v211;
    v235.origin.y = v209;
    v235.size.width = v151;
    v235.size.height = v152;
    v160 = CGRectGetMinX(v235);
    sub_10000C888(v219, v220);
    v161 = v207;
    sub_100753B24();
    sub_100750394();
    v236.origin.x = v160;
    v236.origin.y = v148 + v159;
    v236.size.width = v161;
    v236.size.height = v155;
    v148 = CGRectGetMaxY(v236);
  }

  sub_10000C620(v219);
LABEL_31:
  sub_100016B4C(v216 + v213[23], &v217, &unk_100928A00, &qword_1007A5AB0);
  if (v218)
  {
    sub_100012160(&v217, v219);
    sub_10000C888(v219, v220);
    if ((sub_1007503A4() & 1) == 0)
    {
      sub_10000C888(v219, v220);
      v207 = v148;
      v162 = v210;
      v163 = v214;
      sub_100750404();
      v165 = v164;
      v167 = v166;
      v168 = (v216 + v149[27]);
      v169 = v168[3];
      sub_10000C888(v168, v169);
      sub_100536120(v169);
      sub_100750564();
      v171 = v170;
      v81(v55, v133);
      v237.origin.x = v211;
      v237.origin.y = v209;
      v237.size.width = v162;
      v237.size.height = v163;
      v172 = CGRectGetMinX(v237);
      v173 = v207 + v171;
      sub_10000C888(v219, v220);
      sub_100753B24();
      sub_100750394();
      v238.origin.x = v172;
      v238.origin.y = v173;
      v238.size.width = v165;
      v238.size.height = v167;
      v148 = CGRectGetMaxY(v238);
    }

    sub_10000C620(v219);
  }

  else
  {
    sub_10000C8CC(&v217, &unk_100928A00, &qword_1007A5AB0);
  }

  v174 = v216;
  v175 = (v216 + v149[30]);
  v176 = v175[3];
  sub_10000C888(v175, v176);
  sub_100536120(v176);
  sub_100750564();
  v178 = v177;
  v81(v55, v133);
  v179 = [v62 traitCollection];
  sub_100751364();
  v181 = v180;

  v182 = v211;
  v239.origin.x = v211;
  v183 = v209;
  v239.origin.y = v209;
  v184 = v210;
  v239.size.width = v210;
  v185 = v214;
  v239.size.height = v214;
  v186 = CGRectGetMinX(v239);
  v207 = v148 + v178;
  v240.origin.x = v182;
  v240.origin.y = v183;
  v240.size.width = v184;
  v240.size.height = v185;
  Width = CGRectGetWidth(v240);
  v188 = v213;
  sub_10000C888((v174 + v213[24]), *(v174 + v213[24] + 24));
  sub_100753B24();
  sub_100750394();
  v189 = (v174 + v149[31]);
  v190 = v189[3];
  sub_10000C888(v189, v190);
  sub_100536120(v190);
  sub_100750564();
  v192 = v191;
  v81(v55, v133);
  v241.origin.x = v186;
  v241.origin.y = v207;
  v241.size.width = Width;
  v241.size.height = v181;
  v193 = v192 + CGRectGetMaxY(v241);
  v194 = v188;
  v195 = (v174 + v188[25]);
  sub_10000C888(v195, v195[3]);
  sub_100750404();
  v197 = v196;
  v242.origin.x = v182;
  v242.origin.y = v183;
  v242.size.width = v184;
  v242.size.height = v185;
  v198 = CGRectGetMinX(v242);
  v243.origin.x = v182;
  v243.origin.y = v183;
  v243.size.width = v184;
  v243.size.height = v185;
  v199 = CGRectGetWidth(v243);
  sub_10000C888(v195, v195[3]);
  sub_100753B24();
  sub_100750394();
  v200 = (v174 + v212[33]);
  v201 = v200[3];
  sub_10000C888(v200, v201);
  sub_100536120(v201);
  sub_100750564();
  v205(v55, v208);
  v244.origin.x = v198;
  v244.origin.y = v193;
  v244.size.width = v199;
  v244.size.height = v197;
  CGRectGetMaxY(v244);
  sub_10000C888((v174 + v194[8]), *(v174 + v194[8] + 24));
  sub_100750394();
  sub_10000C888((v174 + v194[5]), *(v174 + v194[5] + 24));
  sub_100750394();
  sub_10000C888((v174 + v194[6]), *(v174 + v194[6] + 24));
  sub_100750394();
  sub_10000C888((v174 + v194[7]), *(v174 + v194[7] + 24));
  sub_100750394();
}

uint64_t sub_1002D2B04(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v150 = sub_100754724();
  v10 = *(v150 - 8);
  __chkstk_darwin(v150);
  v12 = &v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007504C4();
  if (v13 >= a5)
  {
    v13 = a5;
  }

  v14 = floor(v13);
  v15 = type metadata accessor for AppEventDetailPageLayout(0);
  sub_10000C888((v5 + v15[5]), *(v5 + v15[5] + 24));
  sub_100750394();
  sub_10000C888((v5 + v15[6]), *(v5 + v15[6] + 24));
  sub_100750394();
  sub_10000C888((v5 + v15[7]), *(v5 + v15[7] + 24));
  sub_100750394();
  sub_10000C888((v5 + v15[8]), *(v5 + v15[8] + 24));
  sub_100750394();
  sub_10000C888((v5 + v15[9]), *(v5 + v15[9] + 24));
  sub_100750394();
  sub_10000C888((v5 + v15[10]), *(v5 + v15[10] + 24));
  sub_100750394();
  sub_100016B4C(v5 + v15[11], v157, &unk_100928A00, &qword_1007A5AB0);
  if (v158)
  {
    sub_10000C888(v157, v158);
    sub_100750394();
    sub_10000C620(v157);
  }

  else
  {
    sub_10000C8CC(v157, &unk_100928A00, &qword_1007A5AB0);
  }

  sub_100016B4C(v5 + v15[12], v157, &unk_100928A00, &qword_1007A5AB0);
  if (v158)
  {
    sub_10000C888(v157, v158);
    sub_100750394();
    sub_10000C620(v157);
  }

  else
  {
    sub_10000C8CC(v157, &unk_100928A00, &qword_1007A5AB0);
  }

  sub_10000C888((v5 + v15[14]), *(v5 + v15[14] + 24));
  sub_100750394();
  v16 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  v153 = v15;
  v17 = v16;
  v18 = (v5 + *(v16 + 20));
  v19 = v18[3];
  sub_10000C888(v18, v19);
  sub_100536120(v19);
  sub_100750564();
  v21 = v20;
  v22 = *(v10 + 8);
  v154 = v10 + 8;
  v23 = v150;
  v22(v12, v150);
  MinX = v21;
  v24 = sub_10010FD98(0.0, 0.0, a4, v14, 0.0, v21);
  v146 = a4;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = v17[9];
  v33 = (v6 + v17[10]);
  v34 = *v33;
  v147 = v33[1];
  v148 = v34;
  v35 = *(v6 + v32 + 24);
  sub_10000C888((v6 + v32), v35);
  sub_100536120(v35);
  sub_100750564();
  v22(v12, v23);
  v36 = (v6 + v17[11]);
  v37 = v36[3];
  sub_10000C888(v36, v37);
  sub_100536120(v37);
  sub_100750564();
  v22(v12, v23);
  v159.origin.x = v25;
  v159.origin.y = v27;
  v159.size.width = v29;
  v159.size.height = v31;
  CGRectGetHeight(v159);
  v38 = (v6 + v153[16]);
  sub_10000C888(v38, v38[3]);
  sub_100750404();
  v39 = (v6 + v17[6]);
  v40 = v39[3];
  sub_10000C888(v39, v40);
  sub_100536120(v40);
  sub_100750564();
  v22(v12, v23);
  v41 = v25;
  v160.origin.x = v25;
  v160.origin.y = v27;
  v160.size.width = v29;
  v160.size.height = v31;
  CGRectGetMinX(v160);
  v161.origin.x = v25;
  v161.origin.y = v27;
  v161.size.width = v29;
  v161.size.height = v31;
  CGRectGetMinY(v161);
  sub_10000C888(v38, v38[3]);
  v42 = v29;
  sub_100753B24();
  sub_100750394();
  v152 = v17;
  v43 = v17[8];
  v44 = v153;
  v45 = *(v6 + v43 + 24);
  sub_10000C888((v6 + v43), v45);
  sub_100536120(v45);
  sub_100750564();
  v151 = v22;
  v22(v12, v23);
  v162.origin.x = v41;
  v162.origin.y = v27;
  v162.size.width = v29;
  v162.size.height = v31;
  CGRectGetMinY(v162);
  sub_100016B4C(v6 + v44[17], v157, &unk_100928A00, &qword_1007A5AB0);
  if (v158)
  {
    sub_10000C888(v157, v158);
    sub_100753B24();
    sub_100750394();
    sub_10000C620(v157);
  }

  else
  {
    sub_10000C8CC(v157, &unk_100928A00, &qword_1007A5AB0);
  }

  v46 = (v6 + v44[25]);
  sub_10000C888(v46, v46[3]);
  sub_100750404();
  v48 = v47;
  v49 = v152;
  v50 = (v6 + v152[32]);
  v51 = v50[3];
  sub_10000C888(v50, v51);
  sub_100536120(v51);
  sub_100750564();
  v53 = v52;
  v54 = v150;
  v151(v12, v150);
  v163.origin.x = v41;
  v163.origin.y = v27;
  v163.size.width = v42;
  v163.size.height = v31;
  MinX = CGRectGetMinX(v163);
  v164.origin.x = v41;
  v164.origin.y = v27;
  v164.size.width = v42;
  v164.size.height = v31;
  Height = CGRectGetHeight(v164);
  v148 = v48;
  v147 = Height - v48 - v53;
  v165.origin.x = v41;
  v165.origin.y = v27;
  v165.size.width = v42;
  v165.size.height = v31;
  Width = CGRectGetWidth(v165);
  sub_10000C888(v46, v46[3]);
  sub_100753B24();
  v57 = v54;
  v58 = v153;
  sub_100750394();
  v59 = (v6 + v49[29]);
  v60 = v59[3];
  sub_10000C888(v59, v60);
  sub_100536120(v60);
  sub_100750564();
  v62 = v61;
  v63 = v57;
  v64 = v151;
  v151(v12, v63);
  v65 = [a1 traitCollection];
  sub_100751364();
  v67 = v66;

  v166.origin.x = v41;
  v166.origin.y = v27;
  v166.size.width = v42;
  v166.size.height = v31;
  v68 = CGRectGetMinX(v166);
  v167.origin.x = MinX;
  v167.origin.y = v147;
  v167.size.width = Width;
  v69 = v41;
  v167.size.height = v148;
  v70 = CGRectGetMinY(v167) - v62 - v67;
  v168.origin.x = v69;
  v168.origin.y = v27;
  v168.size.width = v42;
  v168.size.height = v31;
  v71 = CGRectGetWidth(v168);
  sub_10000C888((v6 + v58[24]), *(v6 + v58[24] + 24));
  MinX = v69;
  sub_100753B24();
  sub_100750394();
  v169.origin.x = v68;
  v169.origin.y = v70;
  v169.size.width = v71;
  v169.size.height = v67;
  MinY = CGRectGetMinY(v169);
  v73 = v49[28];
  v74 = v150;
  v75 = *(v6 + v73 + 24);
  sub_10000C888((v6 + v73), v75);
  sub_100536120(v75);
  sub_100750564();
  v77 = v76;
  v64(v12, v74);
  v78 = MinY - v77;
  sub_100016B4C(v6 + v58[23], &v155, &unk_100928A00, &qword_1007A5AB0);
  if (!v156)
  {
    sub_10000C8CC(&v155, &unk_100928A00, &qword_1007A5AB0);
    goto LABEL_16;
  }

  sub_100012160(&v155, v157);
  sub_10000C888(v157, v158);
  if (sub_1007503A4())
  {
    sub_10000C620(v157);
    v64 = v151;
LABEL_16:
    v79 = v31;
    goto LABEL_18;
  }

  sub_10000C888(v157, v158);
  v79 = v31;
  sub_100750404();
  v81 = v80;
  v83 = v82;
  v170.origin.x = MinX;
  v170.origin.y = v27;
  v170.size.width = v42;
  v170.size.height = v31;
  v84 = CGRectGetMinX(v170);
  sub_10000C888(v157, v158);
  sub_100753B24();
  sub_100750394();
  v171.origin.x = v84;
  v171.origin.y = v78 - v83;
  v171.size.width = v81;
  v171.size.height = v83;
  v85 = CGRectGetMinY(v171);
  v86 = (v6 + v152[26]);
  v87 = v86[3];
  sub_10000C888(v86, v87);
  sub_100536120(v87);
  sub_100750564();
  v89 = v88;
  v64 = v151;
  v151(v12, v74);
  v78 = v85 - v89;
  sub_10000C620(v157);
LABEL_18:
  sub_100016B4C(v6 + v153[22], &v155, &qword_10092BC30, &qword_1007AD5C0);
  if (v156)
  {
    sub_100012160(&v155, v157);
    sub_10000C888(v157, v158);
    if ((sub_1007503A4() & 1) == 0)
    {
      sub_10000C888(v157, v158);
      if (sub_100750364())
      {
        sub_10000C888(v157, v158);
        sub_100750404();
        v91 = v90;
        v93 = v92;
        v94 = v78 - v92;
        v172.origin.x = MinX;
        v172.origin.y = v27;
        v172.size.width = v42;
        v172.size.height = v79;
        v95 = CGRectGetMinX(v172);
        sub_10000C888(v157, v158);
        sub_100753B24();
        sub_100750394();
        v173.origin.x = v95;
        v173.origin.y = v94;
        v173.size.width = v91;
        v173.size.height = v93;
        v96 = CGRectGetMinY(v173);
        v97 = (v6 + v152[24]);
        v98 = v97[3];
        sub_10000C888(v97, v98);
        sub_100536120(v98);
        sub_100750564();
        v100 = v99;
        v64(v12, v74);
        v78 = v96 - v100;
      }
    }

    sub_10000C620(v157);
  }

  else
  {
    sub_10000C8CC(&v155, &qword_10092BC30, &qword_1007AD5C0);
  }

  v101 = v153;
  v102 = (v6 + v153[21]);
  sub_10000C888(v102, v102[3]);
  sub_100750404();
  v104 = v103;
  v106 = v105;
  v107 = v78 - v105;
  v174.origin.x = MinX;
  v174.origin.y = v27;
  v174.size.width = v42;
  v174.size.height = v79;
  v108 = CGRectGetMinX(v174);
  sub_10000C888(v102, v102[3]);
  sub_100753B24();
  sub_100750394();
  v175.origin.x = v108;
  v175.origin.y = v107;
  v175.size.width = v104;
  v175.size.height = v106;
  v109 = CGRectGetMinY(v175);
  v110 = v152;
  v111 = (v6 + v152[21]);
  v112 = v111[3];
  sub_10000C888(v111, v112);
  sub_100536120(v112);
  sub_100750564();
  v114 = v113;
  v115 = v151;
  v151(v12, v74);
  v116 = v109 - v114;
  v117 = (v6 + v110[17]);
  v118 = *v117;
  v146 = v117[1];
  *&v148 = v101[20];
  sub_100016B4C(v6 + *&v148, v157, &unk_100928A00, &qword_1007A5AB0);
  v119 = v158;
  sub_10000C8CC(v157, &unk_100928A00, &qword_1007A5AB0);
  if (v119)
  {
    v120 = (v6 + v152[15]);
    v121 = v120[3];
    sub_10000C888(v120, v121);
    sub_100536120(v121);
    sub_100750564();
    v115(v12, v74);
  }

  v147 = v118;
  v122 = MinX;
  v176.origin.x = MinX;
  v176.origin.y = v27;
  v176.size.width = v42;
  v176.size.height = v79;
  CGRectGetHeight(v176);
  v123 = v153;
  v124 = (v6 + v153[19]);
  sub_10000C888(v124, v124[3]);
  sub_100750404();
  v126 = v125;
  v127 = v27;
  v128 = v122;
  v130 = v129;
  v145 = v131;
  v132 = v116 - v129;
  v177.origin.x = v122;
  v177.origin.y = v127;
  v177.size.width = v42;
  v177.size.height = v79;
  v133 = CGRectGetMinX(v177);
  sub_10000C888(v124, v124[3]);
  sub_100753B24();
  sub_100750394();
  v141 = v133;
  v178.origin.x = v133;
  v142 = v132;
  v178.origin.y = v132;
  v144 = v126;
  v178.size.width = v126;
  v143 = v130;
  v178.size.height = v130;
  CGRectGetMinY(v178);
  v134 = (v6 + v152[14]);
  v135 = v134[3];
  sub_10000C888(v134, v135);
  sub_100536120(v135);
  sub_100750564();
  v115(v12, v74);
  v136 = (v6 + v123[18]);
  sub_10000C888(v136, v136[3]);
  sub_100750404();
  v179.origin.x = v128;
  v179.origin.y = v127;
  v179.size.width = v42;
  v179.size.height = v79;
  CGRectGetMinX(v179);
  sub_10000C888(v136, v136[3]);
  sub_100753B24();
  sub_100750394();
  sub_100016B4C(v6 + *&v148, &v155, &unk_100928A00, &qword_1007A5AB0);
  if (!v156)
  {
    return sub_10000C8CC(&v155, &unk_100928A00, &qword_1007A5AB0);
  }

  sub_100012160(&v155, v157);
  v137 = (v6 + v152[20]);
  v138 = v137[3];
  sub_10000C888(v137, v138);
  sub_100536120(v138);
  sub_100750564();
  v115(v12, v74);
  v180.origin.x = v141;
  v180.origin.y = v142;
  v180.size.width = v144;
  v180.size.height = v143;
  CGRectGetMinY(v180);
  v181.origin.x = v128;
  v181.origin.y = v127;
  v181.size.width = v42;
  v181.size.height = v79;
  CGRectGetMaxX(v181);
  sub_10000C888(v157, v158);
  sub_100753B24();
  sub_100750394();
  return sub_10000C620(v157);
}

void sub_1002D3F00(uint64_t a1)
{
  type metadata accessor for AppEventDetailPageLayout.Metrics(319);
  if (v1 <= 0x3F)
  {
    sub_100110300(319, &unk_10092C900, &protocol descriptor for LayoutView);
    if (v2 <= 0x3F)
    {
      sub_100110090(319, &qword_10092C920, &qword_100926520, &qword_1007A9F00);
      if (v3 <= 0x3F)
      {
        sub_100110300(319, &qword_10092D510, &protocol descriptor for LayoutTextView);
        if (v4 <= 0x3F)
        {
          sub_100110090(319, &unk_10092C910, &unk_10092D520, &unk_1007A5C80);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1002D40A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20) + 24);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1002D4198(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_1002D4258(uint64_t a1)
{
  sub_1007504F4();
  if (v1 <= 0x3F)
  {
    sub_100110300(319, &qword_1009289A0, &protocol descriptor for AnyDimension);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

id sub_1002D4358()
{
  sub_10000C518(&qword_1009311E8, &qword_1007B8158);
  inited = swift_initStackObject();
  v2 = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
  *(inited + 32) = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
  *(inited + 16) = xmmword_1007A6580;
  v3 = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  *(inited + 40) = 0;
  *(inited + 48) = v3;
  *(inited + 56) = 6;
  v4 = v2;
  v5 = v3;
  v6 = sub_100414444(inited);
  swift_setDeallocating();
  sub_10000C518(&qword_1009311F0, &qword_1007B8160);
  swift_arrayDestroy();
  v7 = [v0 fontDescriptor];
  sub_10000C518(&qword_1009311F8, &qword_1007B8168);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1007A5A00;
  *(v8 + 32) = UIFontDescriptorFeatureSettingsAttribute;
  sub_10000C518(&qword_100931200, &qword_1007B8170);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007A5A00;
  *(v9 + 32) = v6;
  *(v8 + 64) = sub_10000C518(&qword_100931208, &qword_1007B8178);
  *(v8 + 40) = v9;
  v10 = UIFontDescriptorFeatureSettingsAttribute;
  sub_100414530(v8);
  swift_setDeallocating();
  sub_1002D45A8(v8 + 32);
  type metadata accessor for AttributeName(0);
  sub_1002D4610();
  isa = sub_100752F34().super.isa;

  v12 = [v7 fontDescriptorByAddingAttributes:isa];

  [v0 pointSize];
  v14 = [objc_opt_self() fontWithDescriptor:v12 size:v13];

  return v14;
}

uint64_t sub_1002D45A8(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100931210, qword_1007B8180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002D4610()
{
  result = qword_100922508;
  if (!qword_100922508)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100922508);
  }

  return result;
}

unint64_t sub_1002D467C()
{
  result = qword_100931218;
  if (!qword_100931218)
  {
    sub_100744FD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100931218);
  }

  return result;
}

uint64_t sub_1002D46D4(uint64_t a1, uint64_t a2)
{
  v3 = sub_100744FC4();
  v4 = sub_10052AB60(v3, 1, a2);

  return v4;
}

uint64_t type metadata accessor for PrefetchMarkerCollectionViewCell(uint64_t a1)
{
  result = qword_100931248;
  if (!qword_100931248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002D493C(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1002D4A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1002D4BA8(&qword_100931260, &unk_1007B82A0);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1002D4A84@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension32PrefetchMarkerCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100020514(v1 + v3, a1);
}

uint64_t sub_1002D4ADC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension32PrefetchMarkerCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1002D4BA8(unint64_t *a1, uint64_t a2)
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

void sub_1002D4BEC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v32 = a3;
  v4 = sub_10000C518(&unk_100928740, &qword_1007AC280);
  __chkstk_darwin(v4 - 8);
  v35 = &v31 - v5;
  v6 = sub_100741454();
  v33 = *(v6 - 8);
  __chkstk_darwin(v6);
  v31 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10074ED34();
  v8 = *(v34 - 8);
  __chkstk_darwin(v34);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074BF14();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C824(a1, v41);
  sub_10000C888(a1, a1[3]);
  v15 = v6;
  v16 = v33;
  sub_1007463C4();
  sub_1002D6F4C(&qword_1009312A8, &type metadata accessor for TodayCardTriggerIdentifier, &protocol conformance descriptor for TodayCardTriggerIdentifier);
  *&v38 = sub_100754714();
  *(&v38 + 1) = v17;
  (*(v12 + 8))(v14, v11);
  v43._countAndFlagsBits = 8250;
  v43._object = 0xE200000000000000;
  sub_1007531B4(v43);
  sub_10000C888(a1, a1[3]);
  sub_1007463E4();
  v18 = sub_10074ECF4();
  v20 = v19;
  (*(v8 + 8))(v10, v34);
  v21 = v35;
  v44._countAndFlagsBits = v18;
  v44._object = v20;
  sub_1007531B4(v44);
  v22 = v36;

  v39 = v38;
  sub_100016B4C(v22, v21, &unk_100928740, &qword_1007AC280);
  if ((*(v16 + 48))(v21, 1, v15) == 1)
  {
    sub_10000C8CC(v21, &unk_100928740, &qword_1007AC280);
    sub_10000C8CC(v22, &unk_100928740, &qword_1007AC280);
    v23 = 0xED00002E74657920;
    v24 = 0x6E65657320746F4ELL;
LABEL_8:
    *&v40 = v24;
    *(&v40 + 1) = v23;
    v28 = v41[1];
    v29 = v32;
    *(v32 + 32) = v41[0];
    *(v29 + 48) = v28;
    *(v29 + 64) = v42;
    v30 = v40;
    *v29 = v39;
    *(v29 + 16) = v30;
    sub_10000C620(a1);
    return;
  }

  v25 = v31;
  (*(v16 + 32))(v31, v21, v15);
  sub_100741414();
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v27 = -v26;
  if (!__OFSUB__(0, v26))
  {
    *&v38 = 0;
    *(&v38 + 1) = 0xE000000000000000;
    sub_100754534(20);

    *&v38 = 0x206E656553;
    *(&v38 + 1) = 0xE500000000000000;
    v37 = v27;
    v45._countAndFlagsBits = sub_100754714();
    sub_1007531B4(v45);

    v46._countAndFlagsBits = 0x73646E6F63657320;
    v46._object = 0xED00002E6F676120;
    sub_1007531B4(v46);
    v23 = *(&v38 + 1);
    v24 = v38;
    sub_10000C8CC(v22, &unk_100928740, &qword_1007AC280);
    (*(v16 + 8))(v25, v15);
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1002D5118(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v14 = a3;
  v13 = sub_10074BF14();
  v6 = *(v13 - 8);
  __chkstk_darwin(v13);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100928740, &qword_1007AC280);
  __chkstk_darwin(v9 - 8);
  v11 = &v12 - v10;
  sub_10000C824(a1, v15);
  sub_10000C888(a2, a2[3]);
  sub_10000C888(a1, a1[3]);
  sub_1007463C4();
  sub_100741BA4();
  (*(v6 + 8))(v8, v13);
  sub_1002D4BEC(v15, v11, v14);
}

id sub_1002D52B8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension35DebugTodayCardTriggerViewController_triggerController] = a1;

  *&v1[OBJC_IVAR____TtC22SubscribePageExtension35DebugTodayCardTriggerViewController_sections] = sub_1002D68A0(v4);
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v12, "initWithStyle:", 1);
  v6 = [v5 navigationItem];
  v7 = sub_100753064();
  [v6 setTitle:v7];

  v8 = [v5 navigationItem];
  [v8 setLargeTitleDisplayMode:2];

  v9 = [objc_allocWithZone(UIRefreshControl) init];
  [v5 setRefreshControl:v9];

  v10 = [v5 refreshControl];
  if (v10)
  {
    [v10 addTarget:v5 action:"refreshContent" forControlEvents:4096];
  }

  return v5;
}

void sub_1002D54B4(__n128 a1)
{
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension35DebugTodayCardTriggerViewController_sections] = sub_1002D68A0(*&v1[OBJC_IVAR____TtC22SubscribePageExtension35DebugTodayCardTriggerViewController_triggerController]);

  v2 = [v1 tableView];
  if (v2)
  {
    v3 = v2;
    [v2 reloadData];

    v4 = [v1 refreshControl];
    [v4 endRefreshing];
  }

  else
  {
    __break(1u);
  }
}

void sub_1002D55B8(uint64_t a1, char a2)
{
  v4 = a2 & 1;
  v5 = sub_100753064();

  v6 = sub_100753064();
  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  sub_10000C824(a1, v17);
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  sub_100012160(v17, v8 + 24);
  *(v8 + 64) = v4;
  v9 = v2;
  v10 = sub_100753064();
  aBlock[4] = sub_1002D7300;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10073EFC4;
  aBlock[3] = &unk_1008703A8;
  v11 = _Block_copy(aBlock);

  v12 = objc_opt_self();
  v13 = [v12 actionWithTitle:v10 style:0 handler:v11];
  _Block_release(v11);

  [v7 addAction:v13];
  v14 = sub_100753064();
  v15 = [v12 actionWithTitle:v14 style:1 handler:0];

  [v7 addAction:v15];
  [v9 presentViewController:v7 animated:1 completion:0];
}

void sub_1002D5828(void *a1, char a2, __n128 a3)
{
  v6 = sub_10074BF14();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + OBJC_IVAR____TtC22SubscribePageExtension35DebugTodayCardTriggerViewController_triggerController))
  {
    sub_10074BED4();
    sub_100012160(v13, v14);
    if (a2)
    {
      sub_10000C888(v14, v15);
      sub_10000C518(&qword_1009312C8, &qword_1007B8478);
      v10 = swift_allocObject();
      v10[1] = xmmword_1007A5A00;
      sub_10000C888(a1, a1[3]);
      sub_1007463C4();
      v11._rawValue = v10;
      sub_100741BC4(v11);
    }

    else
    {
      sub_10000C888(a1, a1[3]);
      sub_1007463D4();
      sub_10000C888(v14, v15);
      sub_10000C888(a1, a1[3]);
      sub_1007463C4();
      sub_100741BB4();
      (*(v7 + 8))(v9, v6);
    }

    v12 = [objc_opt_self() sharedCoordinator];
    [v12 simulateStorefrontChange];

    sub_10000C620(v14);
  }
}

uint64_t sub_1002D61AC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1002D61C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1002D620C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1002D6270()
{
  result = qword_1009312A0;
  if (!qword_1009312A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009312A0);
  }

  return result;
}

void sub_1002D62C4(uint64_t a1)
{
  v65 = sub_100748794();
  v2 = *(v65 - 8);
  __chkstk_darwin(v65);
  v64 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_10074BF14();
  v4 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10000C518(&qword_1009312B0, &qword_1007B8468);
  __chkstk_darwin(v61);
  v60 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v59 = &v46 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    v74 = _swiftEmptyArrayStorage;
    sub_10001E3CC(0, v9, 0);
    v10 = v74;
    v11 = a1 + 64;
    v12 = sub_1007543B4();
    v13 = 0;
    v14 = *(a1 + 36);
    v56 = v2 + 16;
    v57 = v4 + 16;
    v54 = v2 + 32;
    v55 = v4 + 32;
    v58 = v2;
    v53 = v2 + 8;
    v52 = v4 + 8;
    v47 = a1 + 72;
    v73 = v4;
    v48 = v9;
    v50 = a1 + 64;
    v49 = v14;
    v51 = a1;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      if ((*(v11 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_22;
      }

      if (v14 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v67 = 1 << v12;
      v68 = v12 >> 6;
      v66 = v13;
      v15 = v61;
      v16 = *(v61 + 48);
      v17 = *(a1 + 48) + *(v4 + 72) * v12;
      v70 = *(v4 + 16);
      v18 = v59;
      v19 = v63;
      v70(v59, v17, v63);
      v20 = v58;
      v21 = *(a1 + 56) + *(v58 + 72) * v12;
      v69 = *(v58 + 16);
      v71 = v12;
      v22 = v65;
      v69(&v18[v16], v21, v65);
      v23 = *(v73 + 32);
      v72 = v10;
      v24 = v60;
      v23(v60, v18, v19);
      v25 = *(v15 + 48);
      (*(v20 + 32))(&v24[v25], &v18[v16], v22);
      v26 = v62;
      v70(v62, v24, v19);
      v27 = v64;
      v69(v64, &v24[v25], v22);
      v70 = sub_10074BF04();
      v29 = v28;
      sub_1002D6F4C(&qword_1009312B8, &type metadata accessor for TriggerBuilderError, &protocol conformance descriptor for TriggerBuilderError);
      v30 = sub_1007547C4();
      v32 = v31;
      v33 = *(v20 + 8);
      v4 = v73;
      v33(v27, v22);
      (*(v4 + 8))(v26, v19);
      v34 = v24;
      v10 = v72;
      sub_10000C8CC(v34, &qword_1009312B0, &qword_1007B8468);
      v74 = v10;
      v36 = v10[2];
      v35 = v10[3];
      if (v36 >= v35 >> 1)
      {
        sub_10001E3CC((v35 > 1), v36 + 1, 1);
        v10 = v74;
      }

      v10[2] = v36 + 1;
      v37 = &v10[9 * v36];
      v38 = v71;
      v37[4] = v70;
      v37[5] = v29;
      v37[6] = v30;
      v37[7] = v32;
      *(v37 + 4) = 0u;
      *(v37 + 5) = 0u;
      v37[12] = 0;
      a1 = v51;
      v12 = 1 << *(v51 + 32);
      if (v38 >= v12)
      {
        goto LABEL_24;
      }

      v11 = v50;
      v39 = *(v50 + 8 * v68);
      if ((v39 & v67) == 0)
      {
        goto LABEL_25;
      }

      LODWORD(v14) = v49;
      if (v49 != *(v51 + 36))
      {
        goto LABEL_26;
      }

      v40 = v39 & (-2 << (v38 & 0x3F));
      if (v40)
      {
        v12 = __clz(__rbit64(v40)) | v38 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v41 = v68 << 6;
        v42 = v68 + 1;
        v43 = (v47 + 8 * v68);
        while (v42 < (v12 + 63) >> 6)
        {
          v45 = *v43++;
          v44 = v45;
          v41 += 64;
          ++v42;
          if (v45)
          {
            sub_1001D3DC4(v38, v49, 0);
            v12 = __clz(__rbit64(v44)) + v41;
            goto LABEL_4;
          }
        }

        sub_1001D3DC4(v38, v49, 0);
      }

LABEL_4:
      v13 = v66 + 1;
      if (v66 + 1 == v48)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void *sub_1002D68A0(uint64_t a1)
{
  if (!a1)
  {
    sub_10000C518(&qword_10092F108, &qword_1007B4F78);
    v10 = swift_allocObject();
    *(v10 + 1) = xmmword_1007A5A00;
    v10[4] = 0xD000000000000015;
    v10[5] = 0x80000001007758F0;
    v10[6] = _swiftEmptyArrayStorage;
    *(v10 + 56) = 2;
    return v10;
  }

  sub_10074BEE4();
  v1 = v45;
  v2 = v46;
  v3 = v47;
  v4 = v48;
  v5 = v49;
  isUniquelyReferenced_nonNull_native = sub_10074BED4();
  v7 = *(v44 + 16);
  v42 = v44;
  v43 = v45;
  if (v7)
  {
    sub_1002D62C4(v44);
    v9 = v8;
    isUniquelyReferenced_nonNull_native = sub_1002552A4(0, 1, 1, _swiftEmptyArrayStorage);
    v10 = isUniquelyReferenced_nonNull_native;
    v12 = *(isUniquelyReferenced_nonNull_native + 16);
    v11 = *(isUniquelyReferenced_nonNull_native + 24);
    if (v12 >= v11 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_1002552A4((v11 > 1), v12 + 1, 1, isUniquelyReferenced_nonNull_native);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    v10[2] = v12 + 1;
    v13 = &v10[4 * v12];
    v13[4] = 0xD000000000000013;
    v13[5] = 0x8000000100775910;
    v13[6] = v9;
    *(v13 + 56) = 2;
    v1 = v43;
    if (*(v43 + 16))
    {
LABEL_6:
      __chkstk_darwin(isUniquelyReferenced_nonNull_native);
      v41 = &v44;
      sub_1003497C0(sub_1002D6F2C, v40, v1);
      v15 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_1002552A4(0, v10[2] + 1, 1, v10);
        v10 = isUniquelyReferenced_nonNull_native;
      }

      v17 = v10[2];
      v16 = v10[3];
      if (v17 >= v16 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_1002552A4((v16 > 1), v17 + 1, 1, v10);
        v10 = isUniquelyReferenced_nonNull_native;
      }

      v10[2] = v17 + 1;
      v18 = &v10[4 * v17];
      v18[4] = 0xD00000000000001DLL;
      v18[5] = 0x8000000100775930;
      v18[6] = v15;
      *(v18 + 56) = 1;
      if (!*(v2 + 16))
      {
        goto LABEL_20;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
    if (*(v45 + 16))
    {
      goto LABEL_6;
    }
  }

  if (*(v2 + 16))
  {
LABEL_15:
    __chkstk_darwin(isUniquelyReferenced_nonNull_native);
    v41 = &v44;
    sub_1003497C0(sub_1002D7348, v40, v2);
    v20 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_1002552A4(0, v10[2] + 1, 1, v10);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    v22 = v10[2];
    v21 = v10[3];
    if (v22 >= v21 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_1002552A4((v21 > 1), v22 + 1, 1, v10);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    v10[2] = v22 + 1;
    v23 = &v10[4 * v22];
    v23[4] = 0xD00000000000001BLL;
    v23[5] = 0x8000000100775950;
    v23[6] = v20;
    *(v23 + 56) = 1;
  }

LABEL_20:
  if (*(v3 + 16))
  {
    __chkstk_darwin(isUniquelyReferenced_nonNull_native);
    v41 = &v44;
    sub_1003497C0(sub_1002D7348, v40, v3);
    v25 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_1002552A4(0, v10[2] + 1, 1, v10);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    v27 = v10[2];
    v26 = v10[3];
    if (v27 >= v26 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_1002552A4((v26 > 1), v27 + 1, 1, v10);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    v10[2] = v27 + 1;
    v28 = &v10[4 * v27];
    v28[4] = 0xD00000000000001CLL;
    v28[5] = 0x8000000100775970;
    v28[6] = v25;
    *(v28 + 56) = 0;
  }

  if (*(v4 + 16))
  {
    __chkstk_darwin(isUniquelyReferenced_nonNull_native);
    v41 = &v44;
    sub_1003497C0(sub_1002D7348, v40, v4);
    v30 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_1002552A4(0, v10[2] + 1, 1, v10);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    v32 = v10[2];
    v31 = v10[3];
    if (v32 >= v31 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_1002552A4((v31 > 1), v32 + 1, 1, v10);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    v10[2] = v32 + 1;
    v33 = &v10[4 * v32];
    v33[4] = 0xD000000000000020;
    v33[5] = 0x8000000100775990;
    v33[6] = v30;
    *(v33 + 56) = 0;
  }

  if (*(v5 + 16))
  {
    __chkstk_darwin(isUniquelyReferenced_nonNull_native);
    v41 = &v44;
    sub_1003497C0(sub_1002D7348, v40, v5);
    v35 = v34;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1002552A4(0, v10[2] + 1, 1, v10);
    }

    v37 = v10[2];
    v36 = v10[3];
    if (v37 >= v36 >> 1)
    {
      v10 = sub_1002552A4((v36 > 1), v37 + 1, 1, v10);
    }

    v10[2] = v37 + 1;
    v38 = &v10[4 * v37];
    v38[4] = 0xD000000000000017;
    v38[5] = 0x80000001007759C0;
    v38[6] = v35;
    *(v38 + 56) = 0;
    sub_10000C620(&v44);
  }

  else
  {
    sub_10000C620(&v44);
  }

  return v10;
}

uint64_t sub_1002D6F4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1002D6F94(void *a1, __n128 a2)
{
  result = sub_100741784();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension35DebugTodayCardTriggerViewController_sections);
  if (result >= *(v5 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = v5 + 32 * result;
  v7 = *(v6 + 48);
  v8 = *(v6 + 56);

  result = sub_100741754();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result < *(v7 + 16))
  {
    sub_1002D7258(v7 + 72 * result + 32, &v16);
    v9 = [a1 textLabel];
    if (v9)
    {
      v10 = v9;
      v11 = sub_100753064();
      [v10 setText:v11];
    }

    v12 = [a1 detailTextLabel];
    if (v12)
    {
      v13 = v12;
      v14 = sub_100753064();
      [v13 setText:v14];

      if (v8 == 2)
      {
LABEL_9:
        v15 = 0;
LABEL_12:
        [a1 setAccessoryType:v15];
        return sub_1002D7290(&v16);
      }
    }

    else
    {

      if (v8 == 2)
      {
        goto LABEL_9;
      }
    }

    v15 = 1;
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1002D7130(__n128 a1)
{
  result = sub_100741784();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension35DebugTodayCardTriggerViewController_sections);
  if (result >= *(v3 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = v3 + 32 * result;
  v5 = *(v4 + 48);
  v6 = *(v4 + 56);

  result = sub_100741754();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (result >= *(v5 + 16))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  sub_1002D7258(v5 + 72 * result + 32, v10);

  if (v6 != 2)
  {
    sub_100016B4C(&v11, &v7, &qword_1009312C0, &qword_1007B8470);
    if (!v8)
    {
      sub_1002D7290(v10);
      return sub_10000C8CC(&v7, &qword_1009312C0, &qword_1007B8470);
    }

    sub_100012160(&v7, v9);
    sub_1002D55B8(v9, v6 & 1);
    sub_10000C620(v9);
  }

  return sub_1002D7290(v10);
}

uint64_t sub_1002D72C0()
{
  sub_10000C620((v0 + 24));

  return _swift_deallocObject(v0, 65, 7);
}

double sub_1002D7330(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1002D7360(__n128 a1)
{
  v50 = sub_100744574();
  v2 = *(v50 - 8);
  __chkstk_darwin(v50);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007429B4();
  v53 = *(v5 - 8);
  v54 = v5;
  __chkstk_darwin(v5);
  v51 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v49 - v8;
  v10 = sub_10000C518(&qword_1009312D0, qword_1007B8480);
  __chkstk_darwin(v10 - 8);
  v12 = &v49 - v11;
  v13 = sub_100743B04();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v49 - v18;
  v52 = v1;
  sub_1007429E4();
  if (v20)
  {

    sub_100743AF4();
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_10000C8CC(v12, &qword_1009312D0, qword_1007B8480);
      v21 = sub_100743AB4();
    }

    else
    {

      (*(v14 + 32))(v19, v12, v13);
      v21 = sub_100743AE4();
      (*(v14 + 8))(v19, v13);
    }
  }

  else
  {
    v21 = 0;
  }

  sub_1007429D4();
  v22 = (*(v53 + 88))(v9, v54);
  if (v22 == enum case for StoreTab.Identifier.today(_:))
  {
    sub_100742A24();
    if (!v23)
    {
      v55._object = 0x8000000100775B60;
      v55._countAndFlagsBits = 0xD000000000000010;
      v60._countAndFlagsBits = 0;
      v60._object = 0xE000000000000000;
      sub_1007458B4(v55, v60);
    }

    if (v21)
    {
      v24 = v21;
    }

    else
    {
      (*(v14 + 104))(v16, enum case for SystemImage.docTextImage(_:), v13);
      v24 = sub_100743AE4();
      (*(v14 + 8))(v16, v13);
    }

    v27 = &enum case for NavigationTab.today(_:);
LABEL_34:
    v40 = v50;
    (*(v2 + 104))(v4, *v27, v50);
    v41 = v21;
    v42 = sub_100744554();
    (*(v2 + 8))(v4, v40);
    v43 = objc_allocWithZone(UITabBarItem);
    v44 = sub_100753064();

    v45 = [v43 initWithTitle:v44 image:v24 tag:v42];

    v46 = v51;
    sub_1007429D4();
    v39 = sub_1007535F4();

    (*(v53 + 8))(v46, v54);
    return v39;
  }

  if (v22 == enum case for StoreTab.Identifier.games(_:))
  {
    sub_100742A24();
    if (!v25)
    {
      v56._object = 0x8000000100775B40;
      v56._countAndFlagsBits = 0xD000000000000010;
      v61._countAndFlagsBits = 0;
      v61._object = 0xE000000000000000;
      sub_1007458B4(v56, v61);
    }

    if (v21)
    {
      v24 = v21;
    }

    else
    {
      (*(v14 + 104))(v16, enum case for SystemImage.rocketFill(_:), v13);
      v24 = sub_100743AE4();
      (*(v14 + 8))(v16, v13);
    }

    v27 = &enum case for NavigationTab.games(_:);
    goto LABEL_34;
  }

  if (v22 == enum case for StoreTab.Identifier.apps(_:))
  {
LABEL_17:
    sub_100742A24();
    if (!v26)
    {
      v57._countAndFlagsBits = 0x5449545F45474150;
      v57._object = 0xEF535050415F454CLL;
      v62._countAndFlagsBits = 0;
      v62._object = 0xE000000000000000;
      sub_1007458B4(v57, v62);
    }

    if (v21)
    {
      v24 = v21;
    }

    else
    {
      (*(v14 + 104))(v16, enum case for SystemImage.app3Stack3DFill(_:), v13);
      v24 = sub_100743AE4();
      (*(v14 + 8))(v16, v13);
    }

    v27 = &enum case for NavigationTab.apps(_:);
    goto LABEL_34;
  }

  if (v22 == enum case for StoreTab.Identifier.updates(_:))
  {
    sub_100742A24();
    if (!v28)
    {
      v58._countAndFlagsBits = 0xD000000000000012;
      v58._object = 0x8000000100775B20;
      v63._countAndFlagsBits = 0;
      v63._object = 0xE000000000000000;
      sub_1007458B4(v58, v63);
    }

    v29 = sub_10056003C(0x5473657461647055, 0xEE006E6F63496261, 0);
    v30 = [v29 _imageThatSuppressesAccessibilityHairlineThickening];

    v31 = v50;
    (*(v2 + 104))(v4, enum case for NavigationTab.updates(_:), v50);
    v32 = sub_100744554();
    (*(v2 + 8))(v4, v31);
    v33 = objc_allocWithZone(UITabBarItem);
    v34 = sub_100753064();

    v35 = [v33 initWithTitle:v34 image:v30 tag:v32];

    v36 = v51;
  }

  else
  {
    if (v22 != enum case for StoreTab.Identifier.search(_:))
    {
      if (v22 == enum case for StoreTab.Identifier.arcade(_:))
      {
        sub_100742A24();
        if (!v48)
        {
          v59._countAndFlagsBits = 0xD000000000000011;
          v59._object = 0x8000000100775B00;
          v64._countAndFlagsBits = 0;
          v64._object = 0xE000000000000000;
          sub_1007458B4(v59, v64);
        }

        if (v21)
        {
          v24 = v21;
        }

        else
        {
          (*(v14 + 104))(v16, enum case for SystemImage.joystickcontrollerFill(_:), v13);
          v24 = sub_100743AE4();
          (*(v14 + 8))(v16, v13);
        }

        v27 = &enum case for NavigationTab.arcade(_:);
        goto LABEL_34;
      }

      if (v22 != enum case for StoreTab.Identifier.featured(_:))
      {

        (*(v53 + 8))(v9, v54);
        return 0;
      }

      goto LABEL_17;
    }

    v37 = v50;
    (*(v2 + 104))(v4, enum case for NavigationTab.search(_:), v50);
    v38 = sub_100744554();
    (*(v2 + 8))(v4, v37);
    v35 = [objc_allocWithZone(UITabBarItem) initWithTabBarSystemItem:8 tag:v38];
    v36 = v51;
  }

  sub_1007429D4();
  v39 = sub_1007535F4();

  (*(v53 + 8))(v36, v54);
  return v39;
}

uint64_t sub_1002D7CA4@<X0>(char *a1@<X8>)
{
  v70 = a1;
  v1 = sub_100744BE4();
  v66 = *(v1 - 8);
  v67 = v1;
  __chkstk_darwin(v1);
  v65 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100745CA4();
  v68 = *(v3 - 8);
  v69 = v3;
  __chkstk_darwin(v3);
  v59 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v59 - v6;
  v8 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v8 - 8);
  v64 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v63 = &v59 - v11;
  __chkstk_darwin(v12);
  v60 = &v59 - v13;
  __chkstk_darwin(v14);
  v62 = &v59 - v15;
  __chkstk_darwin(v16);
  v18 = &v59 - v17;
  __chkstk_darwin(v19);
  v61 = &v59 - v20;
  __chkstk_darwin(v21);
  v23 = &v59 - v22;
  v24 = sub_100741264();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1007429B4();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007429D4();
  v32 = (*(v29 + 88))(v31, v28);
  if (v32 == enum case for StoreTab.Identifier.today(_:))
  {
    sub_100742A14();
    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {
      sub_10000C8CC(v23, &unk_100923970, &qword_1007A6B90);
      v33 = type metadata accessor for FlowDestination(0);
      return (*(*(v33 - 8) + 56))(v70, 1, 1, v33);
    }

    v37 = *(v25 + 32);
    v37(v27, v23, v24);
    v36 = v70;
    v37(v70, v27, v24);
    v35 = type metadata accessor for FlowDestination(0);
    goto LABEL_9;
  }

  if (v32 == enum case for StoreTab.Identifier.games(_:) || v32 == enum case for StoreTab.Identifier.apps(_:))
  {
    goto LABEL_17;
  }

  if (v32 != enum case for StoreTab.Identifier.updates(_:))
  {
    if (v32 == enum case for StoreTab.Identifier.search(_:))
    {
      v36 = v70;
      *v70 = 0;
      v35 = type metadata accessor for FlowDestination(0);
      goto LABEL_9;
    }

    if (v32 == enum case for StoreTab.Identifier.arcade(_:))
    {
      v40 = sub_1007429F4();
      v41 = *(v68 + 104);
      v41(v7, enum case for EditorialPageKey.subscriber(_:), v69);
      if (*(v40 + 16) && (v42 = sub_1004124D0(v7), (v43 & 1) != 0))
      {
        (*(v25 + 16))(v18, *(v40 + 56) + *(v25 + 72) * v42, v24);
        v44 = *(v68 + 8);
        v44(v7, v69);

        v45 = *(v25 + 56);
        v45(v18, 0, 1, v24);
        v46 = v61;
        (*(v25 + 32))(v61, v18, v24);
        v45(v46, 0, 1, v24);
      }

      else
      {

        v44 = *(v68 + 8);
        v44(v7, v69);
        v45 = *(v25 + 56);
        v45(v18, 1, 1, v24);
        v46 = v61;
        sub_100742A14();
        if ((*(v25 + 48))(v18, 1, v24) != 1)
        {
          sub_10000C8CC(v18, &unk_100923970, &qword_1007A6B90);
        }
      }

      v48 = sub_1007429F4();
      v49 = v59;
      v41(v59, enum case for EditorialPageKey.nonSubscriber(_:), v69);
      v50 = v49;
      v51 = v62;
      if (*(v48 + 16) && (v52 = sub_1004124D0(v50), (v53 & 1) != 0))
      {
        v54 = v60;
        (*(v25 + 16))(v60, *(v48 + 56) + *(v25 + 72) * v52, v24);
        v44(v50, v69);

        v45(v54, 0, 1, v24);
        (*(v25 + 32))(v51, v54, v24);
        v45(v51, 0, 1, v24);
      }

      else
      {

        v44(v50, v69);
        v55 = v60;
        v45(v60, 1, 1, v24);
        sub_100742A14();
        if ((*(v25 + 48))(v55, 1, v24) != 1)
        {
          sub_10000C8CC(v55, &unk_100923970, &qword_1007A6B90);
        }
      }

      sub_1000497C4(v46, v63);
      sub_1000497C4(v51, v64);
      v56 = v65;
      sub_100744BD4();
      sub_10000C8CC(v51, &unk_100923970, &qword_1007A6B90);
      sub_10000C8CC(v46, &unk_100923970, &qword_1007A6B90);
      v57 = *(sub_10000C518(&qword_100938EC0, qword_1007B9490) + 48);
      v36 = v70;
      *v70 = 0;
      (*(v66 + 32))(&v36[v57], v56, v67);
      v35 = type metadata accessor for FlowDestination(0);
      goto LABEL_9;
    }

    if (v32 != enum case for StoreTab.Identifier.featured(_:))
    {
      v58 = type metadata accessor for FlowDestination(0);
      (*(*(v58 - 8) + 56))(v70, 1, 1, v58);
      return (*(v29 + 8))(v31, v28);
    }

LABEL_17:
    sub_10000C518(&unk_100932490, &qword_1007A9910);
    v47 = v70;
    *v70 = 0;
    sub_100742A14();
    v35 = type metadata accessor for FlowDestination(0);
    swift_storeEnumTagMultiPayload();
    v38 = *(*(v35 - 8) + 56);
    v39 = v47;
    return v38(v39, 0, 1, v35);
  }

  v35 = type metadata accessor for FlowDestination(0);
  v36 = v70;
LABEL_9:
  swift_storeEnumTagMultiPayload();
  v38 = *(*(v35 - 8) + 56);
  v39 = v36;
  return v38(v39, 0, 1, v35);
}

char *sub_1002D8698(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC22SubscribePageExtension27ParagraphCollectionViewCell_itemLayoutContext;
  v12 = sub_1007469A4();
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtC22SubscribePageExtension27ParagraphCollectionViewCell_expandableTextView;
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v14 = sub_100753E04();
  v15 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  *&v5[v13] = sub_10025F574(v14, 0.0, 0.0, 0.0, 0.0);
  v22.receiver = v5;
  v22.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 systemBackgroundColor];
  [v18 setBackgroundColor:v19];

  v20 = [v18 contentView];
  [v20 addSubview:*&v18[OBJC_IVAR____TtC22SubscribePageExtension27ParagraphCollectionViewCell_expandableTextView]];

  return v18;
}

uint64_t type metadata accessor for ParagraphCollectionViewCell(uint64_t a1)
{
  result = qword_100931300;
  if (!qword_100931300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1002D8C5C(void *a1, char a2, void *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v18 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v18 - 8);
  v20 = &v48 - v19;
  if (a2)
  {
    v21 = 3;
  }

  else
  {
    v21 = 0;
  }

  if (a1)
  {
    v22 = a9 >= a8 ? a8 : a9;
    if (v22 != 0.0)
    {
      v23 = a1;
      v24 = [a3 traitCollection];
      v25 = type metadata accessor for ExpandableTextView.MeasurementsCacheKey();
      v26 = objc_allocWithZone(v25);
      v27 = &v26[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_layoutMargins];
      *v27 = a4;
      v27[1] = a5;
      v27[2] = a6;
      v27[3] = a7;
      *&v26[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_numberOfLines] = v21;
      v28 = &v26[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_fittingSize];
      *v28 = a8;
      v28[1] = a9;
      *&v26[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_traitCollection] = v24;
      *&v26[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_attributedText] = v23;
      v49.receiver = v26;
      v49.super_class = v25;
      v29 = objc_msgSendSuper2(&v49, "init");
      if (qword_1009206A8 != -1)
      {
        swift_once();
      }

      v30 = qword_10092F470;
      v31 = [qword_10092F470 objectForKey:v29];
      if (v31)
      {
        v32 = v31;

        a8 = *&v32[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2410CacheValue_measurements];
      }

      else
      {
        v33 = qword_1009206A0;
        v32 = v23;
        if (v33 != -1)
        {
          swift_once();
        }

        v34 = sub_100750534();
        v35 = sub_10000D0FC(v34, qword_10092F458);
        v36 = *(v34 - 8);
        (*(v36 + 16))(v20, v35, v34);
        (*(v36 + 56))(v20, 0, 1, v34);
        sub_100750964();
        sub_100750984();
        sub_100750974();
        v38 = v37;
        v40 = v39;
        v42 = v41;

        sub_10000C8CC(v20, &unk_100928A40, qword_1007A6630);
        v43 = type metadata accessor for ExpandableTextView.CacheValue();
        v44 = objc_allocWithZone(v43);
        v45 = &v44[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2410CacheValue_measurements];
        *v45 = a8;
        v45[1] = a4 + a6 + v38;
        *(v45 + 2) = v40;
        *(v45 + 3) = v42;
        v48.receiver = v44;
        v48.super_class = v43;
        v46 = objc_msgSendSuper2(&v48, "init");
        [v30 setObject:v46 forKey:v29];
      }
    }
  }

  return a8;
}

uint64_t sub_1002D8FFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 88))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1002D9044(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002D90AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1002D90F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t ProductLockupAccessibilityLayout.Metrics.init(layoutMargins:bannerViewHeight:secondaryBannerViewHeight:iconSize:titleSpace:developerSpace:taglineSpace:tertiaryTitleSpace:shareButtonLeadingMargin:offerTopSpace:offerSubtitleSpace:expandedOfferTitleSpace:expandedOfferSubtitleSpace:bottomSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, __int128 *a16, uint64_t a17, __int128 *a18, __int128 *a19)
{
  *a9 = a10;
  a9[1] = a11;
  a9[2] = a12;
  a9[3] = a13;
  sub_100012160(a1, (a9 + 4));
  sub_100012160(a2, (a9 + 9));
  a9[14] = a14;
  a9[15] = a15;
  v27 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  v28 = v27[8];
  v29 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v30 = *(*(v29 - 8) + 32);
  v30(a9 + v28, a3, v29);
  v30(a9 + v27[9], a4, v29);
  v30(a9 + v27[10], a5, v29);
  v30(a9 + v27[11], a6, v29);
  sub_100012160(a7, a9 + v27[12]);
  sub_100012160(a8, a9 + v27[13]);
  sub_100012160(a16, a9 + v27[14]);
  v30(a9 + v27[15], a17, v29);
  sub_100012160(a18, a9 + v27[16]);
  v31 = a9 + v27[17];

  return sub_100012160(a19, v31);
}

__n128 ProductLockupAccessibilityLayout.init(metrics:iconView:titleText:developerText:taglineText:tertiaryTitleText:offerButton:shareButton:offerSubtitleText:expandedOfferTitleText:expandedOfferSubtitleText:bannerView:secondaryBannerView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v20 = type metadata accessor for ProductLockupAccessibilityLayout(0);
  sub_1002D94B8(a1, a9 + *(v20 + 64));
  sub_100012160(a2, a9);
  sub_100012160(a3, a9 + 40);
  sub_100012160(a4, a9 + 80);
  sub_100012160(a5, a9 + 120);
  v21 = *(a6 + 16);
  *(a9 + 160) = *a6;
  *(a9 + 176) = v21;
  *(a9 + 192) = *(a6 + 32);
  sub_100012160(a7, a9 + 200);
  v22 = *(a8 + 16);
  *(a9 + 240) = *a8;
  *(a9 + 256) = v22;
  *(a9 + 272) = *(a8 + 32);
  sub_100012160(a10, a9 + 280);
  v23 = *(a11 + 16);
  *(a9 + 320) = *a11;
  *(a9 + 336) = v23;
  *(a9 + 352) = *(a11 + 32);
  v24 = *(a12 + 16);
  *(a9 + 360) = *a12;
  *(a9 + 376) = v24;
  *(a9 + 392) = *(a12 + 32);
  *(a9 + 432) = *(a13 + 32);
  v25 = *(a13 + 16);
  *(a9 + 400) = *a13;
  *(a9 + 416) = v25;
  *(a9 + 472) = *(a14 + 32);
  result = *(a14 + 16);
  *(a9 + 440) = *a14;
  *(a9 + 456) = result;
  return result;
}

uint64_t sub_1002D94B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double ProductLockupAccessibilityLayout.measurements(fitting:in:)(void *a1, double a2)
{
  ObjectType = swift_getObjectType();

  return sub_1002DD668(a1, v2, ObjectType, a2);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.titleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 32);
  v4 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.titleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 32);
  v4 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.developerSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 36);
  v4 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.developerSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 36);
  v4 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.taglineSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 40);
  v4 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.taglineSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 40);
  v4 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.tertiaryTitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 44);
  v4 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.tertiaryTitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 44);
  v4 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.shareButtonLeadingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 48);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.offerTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 52);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.offerSubtitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 56);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.expandedOfferTitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 60);
  v4 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.expandedOfferTitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 60);
  v4 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.expandedOfferSubtitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 64);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 68);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);

  return sub_1002DD6BC(v3, a1);
}

uint64_t ProductLockupAccessibilityLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v300 = a2;
  v13 = sub_100750354();
  v298 = *(v13 - 8);
  v299 = v13;
  __chkstk_darwin(v13);
  v297 = &v283 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1007488F4();
  v295 = *(v15 - 8);
  v296 = v15;
  __chkstk_darwin(v15);
  v311 = &v283 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = sub_1007488D4();
  v330 = *(v319 - 8);
  __chkstk_darwin(v319);
  v286 = &v283 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v301 = &v283 - v19;
  __chkstk_darwin(v20);
  v285 = &v283 - v21;
  __chkstk_darwin(v22);
  v309 = &v283 - v23;
  __chkstk_darwin(v24);
  v283 = &v283 - v25;
  __chkstk_darwin(v26);
  v284 = &v283 - v27;
  v346 = sub_100748884();
  v351 = *(v346 - 8);
  __chkstk_darwin(v346);
  v322 = &v283 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v350 = sub_1007488A4();
  v349 = *(v350 - 8);
  __chkstk_darwin(v350);
  v324 = &v283 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v347 = sub_1007488C4();
  v352 = *(v347 - 8);
  __chkstk_darwin(v347);
  v345 = &v283 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100754724();
  v32 = *(v31 - 8);
  *&v33 = __chkstk_darwin(v31).n128_u64[0];
  v35 = &v283 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = [a1 traitCollection];
  v312 = sub_1007537E4();

  v37 = v7 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
  v38 = *(v37 + 56);
  sub_10000C888((v37 + 32), v38);
  sub_100536120(v38);
  sub_100750564();
  v40 = v39;
  v41 = *(v32 + 8);
  v41(v35, v31);
  v42 = *(v37 + 96);
  sub_10000C888((v37 + 72), v42);
  sub_100536120(v42);
  sub_100750564();
  v44 = v43;
  v314 = v35;
  v315 = v32 + 8;
  v45 = v35;
  v46 = v321;
  v316 = v31;
  v313 = v41;
  v41(v45, v31);
  v47 = v37;
  v48 = *(v37 + 8);
  v49 = v40 + *v37;
  v294 = v44;
  v305 = a3;
  v50 = a3;
  v51 = a4;
  v52 = a4;
  v53 = a5;
  v54 = a5;
  v55 = a6;
  v56 = sub_10010FD98(v50, v52, v54, a6, v49, v48);
  v58 = v57;
  v60 = v59;
  v62 = v61;
  sub_100016B4C((v46 + 30), v366, &unk_100928A00, &qword_1007A5AB0);
  v348 = a1;
  v310 = v62;
  if (v367)
  {
    sub_10000C888(v366, v367);
    sub_100750414();
    v302 = v63;
    v65 = v64;
    sub_10000C620(v366);
  }

  else
  {
    sub_10000C8CC(v366, &unk_100928A00, &qword_1007A5AB0);
    v302 = 0.0;
    v65 = 0;
  }

  v287 = v65;
  sub_100016B4C((v46 + 30), v366, &unk_100928A00, &qword_1007A5AB0);
  v66 = v367;
  sub_10000C8CC(v366, &unk_100928A00, &qword_1007A5AB0);
  v303 = v55;
  v304 = v40;
  v306 = v51;
  v307 = v53;
  if (v66)
  {
    v67 = (v37 + *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 48));
    v68 = v67[3];
    sub_10000C888(v67, v68);
    v69 = v314;
    sub_100536120(v68);
    v70 = v348;
    sub_100750564();
    v72 = v71;
    v313(v69, v316);
  }

  else
  {
    v72 = 0.0;
    v70 = v348;
  }

  v73 = [v70 traitCollection];
  v74 = sub_1007537F4();

  v374.origin.x = v56;
  v374.origin.y = v58;
  v374.size.width = v60;
  v75 = v310;
  v374.size.height = v310;
  MinX = CGRectGetMinX(v374);
  v77 = v302;
  v78 = v72 + v302 + MinX;
  v375.origin.x = v56;
  v375.origin.y = v58;
  v375.size.width = v60;
  v375.size.height = v75;
  Width = CGRectGetWidth(v375);
  if (v312)
  {
    v80 = Width - v77 - v72;
  }

  else
  {
    v80 = Width;
  }

  if ((v312 & 1 & v74) != 0)
  {
    v81 = v78;
  }

  else
  {
    v81 = MinX;
  }

  v290 = v81;
  v376.origin.x = v56;
  v376.origin.y = v58;
  v376.size.width = v60;
  v376.size.height = v75;
  MinY = CGRectGetMinY(v376);
  v292 = v58;
  v293 = v56;
  v377.origin.x = v56;
  v377.origin.y = v58;
  v291 = v60;
  v377.size.width = v60;
  v377.size.height = v75;
  Height = CGRectGetHeight(v377);
  sub_10000C888(v46, v46[3]);
  v83 = *(v37 + 120);
  sub_1007503E4();
  v84 = v46[13];
  v344 = v46 + 10;
  sub_10000C888(v46 + 10, v84);
  sub_100750404();
  v86 = v85;
  v88 = v87;
  v89 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  v90 = v47;
  v91 = (v47 + *(v89 + 36));
  *&v363 = v70;
  v92 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v343 = v91;
  sub_100743464();
  *&v363 = v366[0];
  sub_100750584();
  v94 = v86 - v88 + v93;
  v95 = (v46 + 15);
  sub_10000C888(v46 + 15, v46[18]);
  sub_100750404();
  v97 = v96;
  v99 = v98;
  v328 = v89;
  v329 = v90;
  *&v363 = v70;
  v318 = v92;
  sub_100743464();
  *&v363 = v366[0];
  sub_100750584();
  v101 = v97 - v99 + v100;
  if (v101 >= v94)
  {
    sub_10000C824(v95, &v363);
    v95 = v344;
  }

  else
  {
    sub_10000C824(v344, &v363);
  }

  v102 = v330;
  v103 = v346;
  v104 = v351;
  sub_10000C824(v95, &v360);
  v105 = v348;
  *&v357 = v348;
  sub_100743464();
  v106 = v366[0];
  *&v357 = v105;
  sub_100743464();
  v107 = v366[0];
  if (v101 >= v94)
  {
    v108 = v366[0];
  }

  else
  {
    v108 = v106;
  }

  *(&v358 + 1) = &type metadata for CGFloat;
  v359 = &protocol witness table for CGFloat;
  *&v357 = v108;
  if (v101 >= v94)
  {
    v107 = v106;
  }

  *(&v355 + 1) = &type metadata for CGFloat;
  v356 = &protocol witness table for CGFloat;
  *&v354 = v107;
  sub_100012160(&v363, v366);
  sub_10000C824(&v357, &v369);
  sub_100012160(&v360, v370);
  sub_100012160(&v354, v372);
  sub_10000C620(&v357);
  v109 = v321;
  sub_10000C888(v321 + 25, v321[28]);
  sub_100750414();
  v111 = v110;
  sub_10000C518(&qword_10092C0B8, &unk_1007B0A80);
  v323 = *(v102 + 72);
  v112 = (*(v102 + 80) + 32) & ~*(v102 + 80);
  v288 = 2 * v323;
  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_1007A5620;
  v320 = v112;
  v308 = v113;
  v317 = (v113 + v112);
  *(&v364 + 1) = &type metadata for CGFloat;
  v365 = &protocol witness table for CGFloat;
  *&v363 = v83;
  v362 = 0;
  v360 = 0u;
  v361 = 0u;
  v327 = enum case for _VerticalFlowLayout.Child.Placement.firstBaseline(_:);
  v343 = *(*&v352 + 104);
  v344 = (*&v352 + 104);
  v114 = v345;
  v343();
  v342 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.leading(_:);
  v115 = v349;
  v340 = *(v349 + 104);
  v341 = v349 + 104;
  v116 = v109;
  v117 = v324;
  v340();
  v118 = sub_10000C518(&unk_100931370, &unk_1007B2560);
  v119 = *(*&v104 + 72);
  v337 = *(*&v104 + 80);
  v338 = v118;
  v339 = (v337 + 32) & ~v337;
  v336 = v339 + v119;
  v120 = swift_allocObject();
  v335 = xmmword_1007A5A00;
  *(v120 + 16) = xmmword_1007A5A00;
  sub_100748854();
  *&v357 = v120;
  v334 = sub_1002DD7A4(&qword_10092C0C0, &type metadata accessor for _VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for _VerticalFlowLayout.ExclusionCondition);
  v333 = sub_10000C518(&unk_100931380, &unk_1007B0A90);
  v332 = sub_1001C4F00();
  v121 = v104;
  v122 = v322;
  sub_1007543A4();
  sub_1007488B4();
  v331 = *(*&v121 + 8);
  v331(v122, v103);
  v123 = *(v115 + 8);
  v349 = v115 + 8;
  v326 = v123;
  v123(v117, v350);
  v124 = *(*&v352 + 8);
  *&v352 += 8;
  v325 = v124;
  v125 = v347;
  v124(v114, v347);
  sub_10000C8CC(&v360, &qword_100931390, &qword_1007ABDE0);
  sub_10000C620(&v363);
  v126 = v109[8];
  v127 = v109[9];
  v128 = sub_10000C888(v116 + 5, v116[8]);
  *(&v364 + 1) = v126;
  v365 = *(v127 + 8);
  v129 = sub_10000D134(&v363);
  (*(*(v126 - 8) + 16))(v129, v128, v126);
  v130 = v103;
  *&v351 = *&v121 + 8;
  *&v357 = v348;
  sub_100743464();
  v131 = *&v360;
  sub_10000C888(v116 + 5, v116[8]);
  sub_100750844();
  *(&v361 + 1) = &type metadata for CGFloat;
  v362 = &protocol witness table for CGFloat;
  *&v360 = v131 + v132;
  v359 = 0;
  v357 = 0u;
  v358 = 0u;
  v133 = v345;
  v134 = v125;
  (v343)(v345, v327, v125);
  v135 = v324;
  v136 = v350;
  (v340)(v324, v342, v350);
  v137 = swift_allocObject();
  *(v137 + 16) = v335;
  sub_100748854();
  *&v354 = v137;
  sub_1007543A4();
  sub_1007488B4();
  v331(v122, v130);
  v138 = v136;
  v326(v135, v136);
  v325(v133, v134);
  sub_10000C8CC(&v357, &qword_100931390, &qword_1007ABDE0);
  sub_10000C620(&v360);
  sub_10000C620(&v363);
  v139 = v367;
  v140 = v368;
  v141 = sub_10000C888(v366, v367);
  *(&v364 + 1) = v139;
  v365 = *(v140 + 8);
  v142 = sub_10000D134(&v363);
  (*(*(v139 - 8) + 16))(v142, v141, v139);
  v362 = 0;
  v360 = 0u;
  v361 = 0u;
  v143 = v327;
  (v343)(v133, v327, v134);
  v144 = v346;
  (v340)(v135, v342, v138);
  v145 = swift_allocObject();
  *(v145 + 16) = v335;
  sub_100748854();
  *&v357 = v145;
  sub_1007543A4();
  sub_1007488B4();
  v331(v122, v144);
  v146 = v326;
  v326(v135, v138);
  v147 = v146;
  v148 = v325;
  v325(v133, v134);
  sub_10000C8CC(&v360, &qword_100931390, &qword_1007ABDE0);
  sub_10000C620(&v363);
  sub_100016B4C((v321 + 20), &v360, &qword_10092BC30, &qword_1007AD5C0);
  if (*(&v361 + 1))
  {
    v149 = v143;
    v150 = v148;
    sub_100012160(&v360, &v363);
    v151 = *(&v364 + 1);
    v152 = v365;
    v153 = v147;
    v154 = sub_10000C888(&v363, *(&v364 + 1));
    *(&v361 + 1) = v151;
    v362 = v152[1];
    v155 = sub_10000D134(&v360);
    (*(*(v151 - 8) + 16))(v155, v154, v151);
    *&v354 = v348;
    *(&v358 + 1) = &type metadata for CGFloat;
    v359 = &protocol witness table for CGFloat;
    sub_100743464();
    v356 = 0;
    v354 = 0u;
    v355 = 0u;
    v156 = v345;
    v157 = v347;
    (v343)(v345, v149, v347);
    v158 = v324;
    v159 = v350;
    (v340)(v324, v342, v350);
    v160 = swift_allocObject();
    *(v160 + 16) = v335;
    sub_100748854();
    v353 = v160;
    v161 = v322;
    v162 = v346;
    sub_1007543A4();
    v163 = v284;
    sub_1007488B4();
    v331(v161, v162);
    v153(v158, v159);
    v150(v156, v157);
    sub_10000C8CC(&v354, &qword_100931390, &qword_1007ABDE0);
    sub_10000C620(&v357);
    sub_10000C620(&v360);
    v164 = v308;
    v166 = *(v308 + 2);
    v165 = *(v308 + 3);
    if (v166 >= v165 >> 1)
    {
      v164 = sub_100254BF4((v165 > 1), v166 + 1, 1, v308);
    }

    v168 = v319;
    v167 = v320;
    v169 = v330;
    *(v164 + 2) = v166 + 1;
    (*(v169 + 32))(&v164[v167 + v166 * v323], v163, v168);
    sub_10000C620(&v363);
  }

  else
  {
    sub_10000C8CC(&v360, &qword_10092BC30, &qword_1007AD5C0);
    v168 = v319;
    v161 = v322;
    v158 = v324;
    v164 = v308;
  }

  v170 = v321;
  sub_10000C888(v321 + 25, v321[28]);
  if (sub_1007503A4())
  {
    v171 = v161;
    v172 = v164;
    v173 = v327;
    v174 = v343;
  }

  else
  {
    v175 = (v329 + *(v328 + 52));
    v176 = v175[3];
    sub_10000C888(v175, v176);
    v308 = v164;
    v177 = v314;
    sub_100536120(v176);
    sub_100750564();
    v179 = v178;
    v180 = v322;
    v313(v177, v316);
    *(&v364 + 1) = &type metadata for CGFloat;
    v365 = &protocol witness table for CGFloat;
    *&v363 = v111 + v179;
    v362 = 0;
    v360 = 0u;
    v361 = 0u;
    v181 = v345;
    v182 = v347;
    (v343)(v345, v327, v347);
    v183 = v350;
    (v340)(v158, v342, v350);
    v184 = swift_allocObject();
    *(v184 + 16) = v335;
    sub_100748854();
    *&v357 = v184;
    v185 = v346;
    sub_1007543A4();
    v186 = v283;
    sub_1007488B4();
    v331(v180, v185);
    v326(v158, v183);
    v187 = v182;
    v188 = v308;
    v325(v181, v187);
    sub_10000C8CC(&v360, &qword_100931390, &qword_1007ABDE0);
    sub_10000C620(&v363);
    v190 = *(v188 + 2);
    v189 = *(v188 + 3);
    if (v190 >= v189 >> 1)
    {
      v188 = sub_100254BF4((v189 > 1), v190 + 1, 1, v188);
    }

    v191 = v330;
    *(v188 + 2) = v190 + 1;
    (*(v191 + 32))(&v188[v320 + v190 * v323], v186, v168);
    v170 = v321;
    v171 = v322;
    v172 = v188;
    v173 = v327;
    v174 = v343;
  }

  v365 = 0;
  v363 = 0u;
  v364 = 0u;
  v192 = v345;
  v193 = v347;
  (v174)(v345, v173, v347);
  v194 = v324;
  v195 = v350;
  (v340)(v324, v342, v350);
  v196 = swift_allocObject();
  *(v196 + 16) = v335;
  sub_100748854();
  *&v360 = v196;
  v197 = v346;
  sub_1007543A4();
  sub_1007488B4();
  v331(v171, v197);
  v326(v194, v195);
  v325(v192, v193);
  sub_10000C8CC(&v363, &qword_100931390, &qword_1007ABDE0);
  v199 = *(v172 + 2);
  v198 = *(v172 + 3);
  v200 = v172;
  if (v199 >= v198 >> 1)
  {
    v200 = sub_100254BF4((v198 > 1), v199 + 1, 1, v172);
  }

  v201 = v330;
  *(v200 + 2) = v199 + 1;
  v203 = *(v201 + 32);
  v202 = v201 + 32;
  v317 = v203;
  v203(&v200[v320 + v199 * v323], v309, v319);
  sub_100016B4C((v170 + 30), &v360, &unk_100928A00, &qword_1007A5AB0);
  v204 = v324;
  if (*(&v361 + 1))
  {
    sub_100012160(&v360, &v363);
    sub_10000C888(v170 + 25, v170[28]);
    if (v312 & 1 | ((sub_1007503A4() & 1) == 0))
    {
      sub_10000C620(&v363);
    }

    else
    {
      *(&v361 + 1) = &type metadata for CGFloat;
      v362 = &protocol witness table for CGFloat;
      *&v360 = v287;
      v359 = 0;
      v357 = 0u;
      v358 = 0u;
      v205 = v345;
      (v343)(v345, v327, v347);
      v206 = v350;
      (v340)(v204, v342, v350);
      v207 = swift_allocObject();
      *(v207 + 16) = v335;
      sub_100748854();
      *&v354 = v207;
      v208 = v322;
      v209 = v346;
      sub_1007543A4();
      sub_1007488B4();
      v331(v208, v209);
      v326(v204, v206);
      v325(v205, v347);
      sub_10000C8CC(&v357, &qword_100931390, &qword_1007ABDE0);
      sub_10000C620(&v360);
      v211 = *(v200 + 2);
      v210 = *(v200 + 3);
      if (v211 >= v210 >> 1)
      {
        v200 = sub_100254BF4((v210 > 1), v211 + 1, 1, v200);
      }

      sub_10000C620(&v363);
      *(v200 + 2) = v211 + 1;
      v317(&v200[v320 + v211 * v323], v285, v319);
    }
  }

  else
  {
    sub_10000C8CC(&v360, &unk_100928A00, &qword_1007A5AB0);
  }

  sub_100016B4C((v170 + 40), &v360, &qword_10092BC30, &qword_1007AD5C0);
  v330 = v202;
  if (*(&v361 + 1))
  {
    sub_100012160(&v360, &v363);
    v212 = *(&v364 + 1);
    v213 = v365;
    v214 = sub_10000C888(&v363, *(&v364 + 1));
    *(&v361 + 1) = v212;
    v362 = v213[1];
    v215 = sub_10000D134(&v360);
    (*(*(v212 - 8) + 16))(v215, v214, v212);
    *&v354 = v348;
    *(&v358 + 1) = &type metadata for CGFloat;
    v359 = &protocol witness table for CGFloat;
    sub_100743464();
    v356 = 0;
    v354 = 0u;
    v355 = 0u;
    v216 = v200;
    v217 = v345;
    v218 = v347;
    (v343)(v345, v327, v347);
    v219 = v350;
    (v340)(v204, v342, v350);
    v220 = swift_allocObject();
    *(v220 + 16) = v335;
    sub_100748854();
    v353 = v220;
    v221 = v322;
    v222 = v346;
    sub_1007543A4();
    sub_1007488B4();
    v331(v221, v222);
    v326(v204, v219);
    v223 = v217;
    v200 = v216;
    v325(v223, v218);
    sub_10000C8CC(&v354, &qword_100931390, &qword_1007ABDE0);
    sub_10000C620(&v357);
    sub_10000C620(&v360);
    v225 = *(v216 + 2);
    v224 = *(v216 + 3);
    if (v225 >= v224 >> 1)
    {
      v200 = sub_100254BF4((v224 > 1), v225 + 1, 1, v216);
    }

    *(v200 + 2) = v225 + 1;
    v317(&v200[v320 + v225 * v323], v301, v319);
    sub_10000C620(&v363);
  }

  else
  {
    sub_10000C8CC(&v360, &qword_10092BC30, &qword_1007AD5C0);
  }

  sub_100016B4C((v170 + 45), &v360, &qword_10092BC30, &qword_1007AD5C0);
  if (*(&v361 + 1))
  {
    v226 = v322;
    v227 = v350;
    sub_100012160(&v360, &v363);
    v228 = *(&v364 + 1);
    v229 = v365;
    v230 = sub_10000C888(&v363, *(&v364 + 1));
    *(&v361 + 1) = v228;
    v362 = v229[1];
    v231 = sub_10000D134(&v360);
    (*(*(v228 - 8) + 16))(v231, v230, v228);
    v359 = 0;
    v357 = 0u;
    v358 = 0u;
    v232 = v345;
    v233 = v200;
    v234 = v347;
    (v343)(v345, v327, v347);
    (v340)(v204, v342, v227);
    v235 = swift_allocObject();
    *(v235 + 16) = v335;
    sub_100748854();
    *&v354 = v235;
    v236 = v346;
    sub_1007543A4();
    v237 = v286;
    sub_1007488B4();
    v331(v226, v236);
    v326(v204, v227);
    v238 = v234;
    v239 = v233;
    v325(v232, v238);
    sub_10000C8CC(&v357, &qword_100931390, &qword_1007ABDE0);
    sub_10000C620(&v360);
    v240 = *(v233 + 2);
    v241 = *(v239 + 3);
    if (v240 >= v241 >> 1)
    {
      v239 = sub_100254BF4((v241 > 1), v240 + 1, 1, v239);
    }

    *(v239 + 2) = v240 + 1;
    v317(&v239[v320 + v240 * v323], v237, v319);
    sub_10000C620(&v363);
  }

  else
  {
    sub_10000C8CC(&v360, &qword_10092BC30, &qword_1007AD5C0);
  }

  sub_100748894();
  v242 = v297;
  v244 = MinY;
  v243 = v290;
  sub_100748844();
  sub_10000C888(v170 + 5, v170[8]);
  sub_100750404();
  v350 = v245;
  v247 = v246;
  sub_10000C888(v170 + 5, v170[8]);
  sub_100750384();
  v248 = CGRectGetMaxY(v378) - v247;
  v379.origin.x = v243;
  v379.origin.y = v244;
  v379.size.width = v80;
  v379.size.height = Height;
  v249 = CGRectGetMinX(v379);
  v380.origin.x = v243;
  v380.origin.y = v244;
  v380.size.width = v80;
  v380.size.height = Height;
  v250 = CGRectGetWidth(v380);
  sub_100750344();
  v252 = v251;
  v381.origin.x = v243;
  v381.origin.y = v244;
  v381.size.width = v80;
  v381.size.height = Height;
  v253 = v252 + CGRectGetHeight(v381) - v248;
  sub_10000C888(v370, v371);
  sub_100750404();
  v351 = v249;
  v382.origin.x = v249;
  v382.origin.y = v248;
  v382.size.width = v250;
  v382.size.height = v253;
  v352 = CGRectGetMinX(v382);
  v383.origin.x = v249;
  v383.origin.y = v248;
  v383.size.width = v250;
  v383.size.height = v253;
  CGRectGetMinY(v383);
  sub_10000C888(v372, v372[3]);
  sub_100750584();
  sub_10000C888(v370, v371);
  sub_100753B24();
  sub_100750394();
  sub_100016B4C((v170 + 30), &v360, &unk_100928A00, &qword_1007A5AB0);
  if (!*(&v361 + 1))
  {
    sub_10000C8CC(&v360, &unk_100928A00, &qword_1007A5AB0);
    v254 = v303;
    v256 = v292;
    v255 = v293;
    goto LABEL_56;
  }

  sub_100012160(&v360, &v363);
  v254 = v303;
  v256 = v292;
  v255 = v293;
  if ((v312 & 1) == 0)
  {
    sub_10000C888(v170 + 25, v170[28]);
    if ((sub_1007503A4() & 1) == 0)
    {
      sub_10000C888(v170 + 25, v170[28]);
      sub_100750384();
      CGRectGetMidY(v385);
      goto LABEL_58;
    }

    sub_10000C620(&v363);
LABEL_56:
    v257 = v291;
    v258 = v310;
    goto LABEL_59;
  }

  sub_10000C888(v170 + 5, v170[8]);
  sub_100750384();
  CGRectGetMinY(v384);
LABEL_58:
  v386.origin.x = v255;
  v386.origin.y = v256;
  v257 = v291;
  v386.size.width = v291;
  v258 = v310;
  v386.size.height = v310;
  CGRectGetMaxX(v386);
  sub_10000C888(&v363, *(&v364 + 1));
  v254 = v303;
  sub_100753B24();
  sub_100750394();
  sub_10000C620(&v363);
LABEL_59:
  v387.origin.x = v255;
  v387.origin.y = v256;
  v387.size.width = v257;
  v387.size.height = v258;
  v259 = CGRectGetWidth(v387);
  v260 = sub_100750324();
  *v261 = v259;
  v260(&v363, 0);
  v262 = (v329 + *(v328 + 68));
  v263 = v262[3];
  sub_10000C888(v262, v263);
  v264 = v314;
  sub_100536120(v263);
  sub_100750564();
  v266 = v265;
  v313(v264, v316);
  v267 = sub_100750324();
  *(v268 + 8) = v266 + *(v268 + 8);
  v267(&v363, 0);
  sub_100016B4C((v170 + 50), &v360, &unk_100928A00, &qword_1007A5AB0);
  if (*(&v361 + 1))
  {
    sub_100012160(&v360, &v363);
    sub_10000C888(&v363, *(&v364 + 1));
    v270 = v305;
    v269 = v306;
    v388.origin.x = v305;
    v388.origin.y = v306;
    v271 = v307;
    v388.size.width = v307;
    v388.size.height = v254;
    CGRectGetMinX(v388);
    v389.origin.x = v270;
    v389.origin.y = v269;
    v389.size.width = v271;
    v389.size.height = v254;
    CGRectGetMinY(v389);
    v390.origin.x = v270;
    v390.origin.y = v269;
    v390.size.width = v271;
    v390.size.height = v254;
    CGRectGetWidth(v390);
    sub_100750394();
    sub_10000C620(&v363);
  }

  else
  {
    sub_10000C8CC(&v360, &unk_100928A00, &qword_1007A5AB0);
  }

  sub_100016B4C((v170 + 55), &v360, &unk_100928A00, &qword_1007A5AB0);
  if (*(&v361 + 1))
  {
    sub_100012160(&v360, &v363);
    sub_10000C888(&v363, *(&v364 + 1));
    v272 = v305;
    v273 = v306;
    v391.origin.x = v305;
    v391.origin.y = v306;
    v274 = v307;
    v391.size.width = v307;
    v391.size.height = v254;
    CGRectGetMinX(v391);
    v392.origin.x = v272;
    v392.origin.y = v273;
    v392.size.width = v274;
    v392.size.height = v254;
    CGRectGetMaxY(v392);
    v275 = v294;
    v276 = v262[3];
    sub_10000C888(v262, v276);
    v277 = v314;
    sub_100536120(v276);
    sub_100750564();
    v313(v277, v316);
    v393.origin.x = v272;
    v393.origin.y = v273;
    v393.size.width = v274;
    v393.size.height = v254;
    CGRectGetWidth(v393);
    sub_100750394();
    sub_10000C620(&v363);
  }

  else
  {
    sub_10000C8CC(&v360, &unk_100928A00, &qword_1007A5AB0);
    v275 = v294;
  }

  v278 = sub_100750324();
  *(v279 + 8) = v304 + *(v279 + 8);
  v278(&v363, 0);
  v280 = sub_100750324();
  *(v281 + 8) = v275 + *(v281 + 8);
  v280(&v363, 0);
  (*(v295 + 8))(v311, v296);
  sub_10000C620(v373);
  (*(v298 + 32))(v300, v242, v299);
  return sub_10000C8CC(v366, &unk_10092F7A0, &qword_1007B85E0);
}

double ProductLockupAccessibilityLayout.offerButtonMinYDistanceFromBottom(fitting:in:)(uint64_t a1, double a2, double a3)
{
  swift_getObjectType();

  return sub_1002DC874(a1, v3, a2, a3);
}

double sub_1002DC874(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = sub_100754724();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C888(a2 + 35, a2[38]);
  v10 = sub_1007503A4();
  v11 = 0.0;
  v12 = 0.0;
  if ((v10 & 1) == 0)
  {
    sub_10000C888(a2 + 35, a2[38]);
    sub_100750404();
    v14 = v13;
    v11 = v15;
    v16 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
    v17 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_10000C888(&v16[*(v17 + 56)], *&v16[*(v17 + 56) + 24]);
    sub_100750584();
    v12 = v14 - v11 + v18;
  }

  v51 = v12;
  sub_100016B4C((a2 + 40), &v53, &qword_10092BC30, &qword_1007AD5C0);
  if (v54)
  {
    sub_100012160(&v53, v55);
    sub_10000C888(v55, v56);
    sub_100750404();
    v20 = v19;
    v11 = v21;
    type metadata accessor for ProductLockupAccessibilityLayout(0);
    type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    v52 = a1;
    sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
    sub_100743464();
    v52 = v53;
    v22 = v20;
    sub_100750584();
    v24 = v23;
    sub_10000C620(v55);
    v50 = v11;
  }

  else
  {
    sub_10000C8CC(&v53, &qword_10092BC30, &qword_1007AD5C0);
    v22 = JUMeasurementsZero[1];
    v50 = JUMeasurementsZero[3];
    v24 = 0.0;
  }

  sub_100016B4C((a2 + 45), &v53, &qword_10092BC30, &qword_1007AD5C0);
  if (v54)
  {
    sub_100012160(&v53, v55);
    sub_10000C888(v55, v56);
    sub_100750404();
    v26 = v25;
    v49 = v24;
    v11 = v27;
    v28 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
    v29 = &v28[*(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 64)];
    v30 = *(v29 + 3);
    sub_10000C888(v29, v30);
    sub_100536120(v30);
    sub_100750564();
    v32 = v31;
    (*(v7 + 8))(v9, v6);
    *&v53 = v32;
    v24 = v49;
    sub_100750584();
    v34 = v33;
    sub_10000C620(v55);
    v35 = v11;
  }

  else
  {
    sub_10000C8CC(&v53, &qword_10092BC30, &qword_1007AD5C0);
    v26 = JUMeasurementsZero[1];
    v35 = JUMeasurementsZero[3];
    v34 = 0.0;
  }

  sub_10000C888(a2 + 25, a2[28]);
  sub_100750414();
  v37 = v26 - v35 + v34 + v22 - v50 + v24 + v51 + v36;
  v38 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
  v39 = *(v38 + 12);
  sub_10000C888(v38 + 9, v39);
  sub_100536120(v39);
  sub_100750564();
  v41 = v40;
  v42 = *(v7 + 8);
  v42(v9, v6);
  v43 = v37 + v41;
  v44 = &v38[*(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 68)];
  v45 = *(v44 + 3);
  sub_10000C888(v44, v45);
  sub_100536120(v45);
  sub_100750564();
  v47 = v46;
  v42(v9, v6);
  return v11 + v43 + v47;
}

double sub_1002DCDFC(void *a1, void *a2, uint64_t a3, double a4)
{
  v93 = a3;
  v7 = sub_100754724();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v98 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64));
  v11 = *v10;
  v12 = a4 - v10[1];
  v14 = v10[2];
  v13 = v10[3];
  v96 = v10;
  v15 = v12 - v13;
  v91 = v14;
  v92 = v11;
  v16 = a4 - v11 - v14;
  v17 = [a1 traitCollection];
  v18 = sub_1007537E4();

  sub_100016B4C((a2 + 30), v108, &unk_100928A00, &qword_1007A5AB0);
  if (v109)
  {
    sub_10000C888(v108, v109);
    sub_100750414();
    v20 = v19;
    sub_10000C620(v108);
  }

  else
  {
    sub_10000C8CC(v108, &unk_100928A00, &qword_1007A5AB0);
    v20 = 0.0;
  }

  sub_100016B4C((a2 + 30), v108, &unk_100928A00, &qword_1007A5AB0);
  v21 = v109;
  sub_10000C8CC(v108, &unk_100928A00, &qword_1007A5AB0);
  v94 = v8;
  v95 = v7;
  if (v21)
  {
    v22 = (v96 + *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 48));
    v23 = v22[3];
    sub_10000C888(v22, v23);
    v24 = v98;
    sub_100536120(v23);
    sub_100750564();
    v26 = v25;
    (*(v8 + 8))(v24, v7);
    if (v18)
    {
LABEL_6:
      v27 = v15 - v20 - v26;
      goto LABEL_9;
    }
  }

  else
  {
    v26 = 0.0;
    if (v18)
    {
      goto LABEL_6;
    }
  }

  v27 = v15;
LABEL_9:
  v97 = v27;
  sub_10000C888(a2 + 5, a2[8]);
  sub_100750404();
  v29 = v28;
  v31 = v30;
  v32 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  *&v106 = a1;
  sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v33 = a2;
  v34 = v96;
  sub_100743464();
  *&v106 = v108[0];
  v88 = v31;
  v89 = v29;
  sub_100750584();
  v87 = v35;
  sub_10000C888(v33 + 5, v33[8]);
  sub_100750844();
  v86 = v36;
  sub_10000C888(v33 + 10, v33[13]);
  sub_100750404();
  v38 = v37;
  v40 = v39;
  v41 = *(v32 + 36);
  *&v106 = a1;
  v85 = v41;
  v42 = v34;
  sub_100743464();
  *&v106 = v108[0];
  sub_100750584();
  v43 = v16;
  v45 = v38 - v40 + v44;
  v46 = (v33 + 15);
  v99 = v33;
  sub_10000C888(v33 + 15, v33[18]);
  v90 = v43;
  sub_100750404();
  v48 = v47;
  v50 = v49;
  *&v106 = a1;
  sub_100743464();
  *&v106 = v108[0];
  sub_100750584();
  v52 = v48 - v50 + v51;
  if (v52 >= v45)
  {
    sub_10000C824(v46, &v106);
    v46 = (v33 + 10);
  }

  else
  {
    sub_10000C824((v33 + 10), &v106);
  }

  sub_10000C824(v46, &v104);
  v103[0] = a1;
  sub_100743464();
  v53 = v108[0];
  v103[0] = a1;
  sub_100743464();
  v54 = v108[0];
  if (v52 >= v45)
  {
    v55 = v108[0];
  }

  else
  {
    v55 = v53;
  }

  v103[3] = &type metadata for CGFloat;
  v103[4] = &protocol witness table for CGFloat;
  v103[0] = v55;
  if (v52 >= v45)
  {
    v54 = v53;
  }

  v101 = &type metadata for CGFloat;
  v102 = &protocol witness table for CGFloat;
  *&v100 = v54;
  sub_100012160(&v106, v108);
  sub_10000C824(v103, v110);
  sub_100012160(&v104, &v111);
  sub_100012160(&v100, &v112);
  sub_10000C620(v103);
  sub_10000C888(v108, v109);
  v56 = v97;
  v57 = v90;
  sub_100750404();
  v59 = v58;
  v61 = v60;
  sub_10000C888(v110, v110[3]);
  sub_100750584();
  v63 = v62;
  sub_100016B4C((v99 + 20), &v104, &qword_10092BC30, &qword_1007AD5C0);
  v64 = v95;
  if (v105)
  {
    sub_100012160(&v104, &v106);
    sub_10000C888(&v106, v107);
    sub_100750404();
    v66 = v65;
    v68 = v67;
    v103[0] = a1;
    sub_100743464();
    v103[0] = v104;
    v56 = v97;
    sub_100750584();
    v70 = v66 - v68 + v69;
    sub_10000C620(&v106);
  }

  else
  {
    sub_10000C8CC(&v104, &qword_10092BC30, &qword_1007AD5C0);
    v70 = 0.0;
  }

  v71 = v94;
  v72 = v70 + v59 - v61 + v63 + v89 - v88 + v87 + v86 + v42[15];
  v73 = (v42 + *(v32 + 52));
  v74 = v73[3];
  sub_10000C888(v73, v74);
  v75 = v98;
  sub_100536120(v74);
  sub_100750564();
  v77 = v76;
  v78 = *(v71 + 8);
  v78(v75, v64);
  v79 = v72 + v77 + sub_1002DC874(a1, v99, v56, v57);
  v80 = *(v42 + 7);
  sub_10000C888(v42 + 4, v80);
  sub_100536120(v80);
  sub_100750564();
  v82 = v81;
  v78(v75, v64);
  v83 = v91 + v92 + v79 + v82;
  sub_10000C8CC(v108, &unk_10092F7A0, &qword_1007B85E0);
  return v83;
}

double sub_1002DD668(void *a1, void *a2, uint64_t a3, double a4)
{
  sub_1002DCDFC(a1, a2, a3, a4);
  type metadata accessor for ProductLockupAccessibilityLayout(0);
  return a4;
}

uint64_t sub_1002DD6BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002DD720(uint64_t a1)
{
  *(a1 + 8) = sub_1002DD7A4(&unk_10092F790, type metadata accessor for ProductLockupAccessibilityLayout, &protocol conformance descriptor for ProductLockupAccessibilityLayout);
  result = sub_1002DD7A4(&qword_100931398, type metadata accessor for ProductLockupAccessibilityLayout, &protocol conformance descriptor for ProductLockupAccessibilityLayout);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1002DD7A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002DD800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 64);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1002DD8C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 64);

    return v8(v9, a2, a2, v7);
  }

  return result;
}