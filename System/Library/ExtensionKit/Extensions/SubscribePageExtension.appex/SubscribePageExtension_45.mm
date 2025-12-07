void *sub_100514768(double a1, uint64_t a2, void *a3)
{
  v4 = sub_10074F284();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _swiftEmptyArrayStorage;
  if (qword_100920458 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_10000D0FC(v8, qword_10097E0D8);
  sub_1007504C4();
  if (sub_1007427E4())
  {
    sub_10074EC14();
  }

  else if (!sub_100742804())
  {
    v9 = _swiftEmptyArrayStorage;
    goto LABEL_9;
  }

  sub_10074F294();
  sub_10074F254();
  (*(v5 + 8))(v7, v4);
  sub_10074F374();

  sub_100753284();
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  sub_100753344();

  v9 = v17;
LABEL_9:
  sub_100742894();
  v10 = sub_10074EF64();

  if (v10)
  {
    v11 = [a3 traitCollection];
    v12 = sub_100753804();

    if (v12)
    {
      if (qword_100920450 != -1)
      {
        swift_once();
      }

      v13 = qword_10097E0C0;
    }

    else
    {
      if (qword_100920448 != -1)
      {
        swift_once();
      }

      v13 = qword_10097E0A8;
    }

    v14 = sub_100747064();
    sub_10000D0FC(v14, v13);
    sub_100746F34();
    sub_10074F294();
    sub_10074F254();
    (*(v5 + 8))(v7, v4);
    sub_10074F374();

    sub_100753284();
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();

    return v17;
  }

  else
  {
  }

  return v9;
}

uint64_t sub_100514B3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100514B84()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100514BBC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100514C10()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100514C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v11 = sub_100747064();
  v45 = *(v11 - 1);
  v46 = v11;
  __chkstk_darwin(v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10074F314();
  __chkstk_darwin(v14 - 8);
  v15 = sub_10074F284();
  v48 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51[3] = a4;
  v51[4] = a5;
  v18 = sub_10000D134(v51);
  (*(*(a4 - 8) + 16))(v18, a1, a4);
  sub_10000C824(v51, v50);
  sub_10000C518(&unk_100923100, &unk_1007A5F30);
  sub_1007428B4();
  if (!swift_dynamicCast())
  {
    return sub_10000C620(v51);
  }

  v19 = v49;
  if (qword_100920458 != -1)
  {
    swift_once();
  }

  v47 = v15;
  v44 = a2;
  v20 = type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_10000D0FC(v20, qword_10097E0D8);
  sub_1007504C4();
  v21 = sub_1007427E4();
  v43 = v19;
  if (v21)
  {
    sub_10074EC14();

    v22 = v48;
LABEL_8:
    sub_10074F294();
    sub_10074F254();
    (*(v22 + 8))(v17, v47);
    sub_10074F374();
    v24 = *(a3 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_artworkView);
    sub_10074F324();
    sub_100743364();
    [v24 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      sub_100753E34();
    }

    sub_100743224();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v26 = Strong;
      type metadata accessor for VideoView(0);
      sub_100514B3C(&unk_100923110, type metadata accessor for VideoView, &unk_1007BAFA8);
      sub_100744204();
    }

    else
    {
      sub_1007433C4();
      sub_100514B3C(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_100744204();
    }

    v22 = v48;
    goto LABEL_14;
  }

  v23 = sub_100742804();
  v22 = v48;
  if (v23)
  {

    goto LABEL_8;
  }

LABEL_14:
  v27 = *(a3 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupView);
  if (v27)
  {
    v28 = v27;
    sub_100742894();
    v29 = sub_10074EF64();

    if (v29)
    {
      v30 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
      swift_beginAccess();
      v32 = v45;
      v31 = v46;
      (*(v45 + 16))(v13, &v28[v30], v46);
      sub_100746F34();
      (*(v32 + 8))(v13, v31);
      sub_10074F294();
      sub_10074F254();
      v45 = *(v22 + 8);
      (v45)(v17, v47);
      v33 = sub_10074F374();
      v42 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
      v34 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView];
      v46 = v28;
      v35 = v34;
      sub_10074F324();
      sub_100743364();
      [v35 setContentMode:sub_10074F184()];
      v48 = v33;
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500, UIColor_ptr);
        sub_100753E34();
      }

      sub_100743224();

      v36 = v42;
      v37 = *&v28[v42];
      sub_10074F294();
      v38 = sub_10074F254();
      (v45)(v17, v47);
      [v37 setContentMode:v38];

      v28 = *&v28[v36];
      v39 = v46;

      sub_1007433C4();
      sub_100514B3C(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_100744204();
    }
  }

  else
  {
  }

  return sub_10000C620(v51);
}

double sub_1005153A8(double a1, double a2)
{
  v3 = v2;
  v24 = sub_100749A94();
  v6 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&qword_100930BC0, &qword_1007C6B40);
  __chkstk_darwin(v9 - 8);
  v10 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v22 = *(v10 - 8);
  v23 = v10;
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  v25 = 0;
  sub_1007544E4();
  sub_100752EE4();
  v26 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_stateStore);

  sub_10000C518(&qword_100925350, &qword_1007AEDF0);
  sub_10002DDC8(&qword_100925358, &qword_100925350, &qword_1007AEDF0, &protocol conformance descriptor for TransientStateStore<A>);
  sub_100752E74();
  v13 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_componentView + 8);
  ObjectType = swift_getObjectType();
  v20 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_objectGraph);
  v21 = OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_model;
  sub_10000C518(&unk_10093CAD0, &qword_1007AD7B0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1007A6580;
  sub_100749A44();
  sub_100749A14();
  v26 = v15;
  sub_100516BA4(&unk_100929800, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  sub_10000C518(&unk_10093CAE0, &unk_1007AD7B8);
  sub_10002DDC8(&qword_100929810, &unk_10093CAE0, &unk_1007AD7B8, &protocol conformance descriptor for [A]);
  v16 = v24;
  sub_1007543A4();
  v17 = (*(v13 + 72))(v3 + v21, 1, v12, v20, v8, v3, ObjectType, v13, a1, a2);
  (*(v6 + 8))(v8, v16);
  (*(v22 + 8))(v12, v23);
  return v17;
}

id sub_1005157AC(uint64_t a1)
{
  v3 = sub_10000C518(&unk_100923C00, qword_1007AB3D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = [objc_allocWithZone(type metadata accessor for ComponentViewOverflowTransitioning(0)) init];
  v7 = OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_overflowTransitioning;
  v8 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_overflowTransitioning];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_overflowTransitioning] = v6;

  v9 = *&v1[v7];
  if (v9)
  {
    v9[OBJC_IVAR____TtC22SubscribePageExtension34ComponentViewOverflowTransitioning_isTransitioningFromContainer] = 1;
    v10 = sub_1007417F4();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v5, a1, v10);
    (*(v11 + 56))(v5, 0, 1, v10);
    v12 = OBJC_IVAR____TtC22SubscribePageExtension34ComponentViewOverflowTransitioning_selectedIndexPath;
    swift_beginAccess();
    v13 = v9;
    sub_10003E1A0(v5, &v9[v12]);
    swift_endAccess();

    v14 = *&v1[v7];
  }

  else
  {
    v14 = 0;
  }

  [v1 setTransitioningDelegate:v14];
  return [v1 setModalPresentationStyle:4];
}

id sub_1005159E4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10074EAB4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100749A94();
  v39 = *(v7 - 8);
  __chkstk_darwin(v7);
  v37 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&qword_100930BC0, &qword_1007C6B40);
  __chkstk_darwin(v9 - 8);
  v10 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v38 = *(v10 - 8);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v43 = &v30 - v12;
  v46.receiver = v0;
  v46.super_class = ObjectType;
  objc_msgSendSuper2(&v46, "viewDidLoad", v11);
  v13 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_componentView];
  v35 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_componentView + 8];
  v36 = swift_getObjectType();
  v42 = v13;
  v14 = [v13 backgroundView];
  result = [v0 view];
  v16 = result;
  v40 = v10;
  v41 = v6;
  if (v14)
  {
    if (!result)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    v17 = [v14 backgroundColor];
    [v16 setBackgroundColor:v17];

LABEL_6:
    v18 = v7;
    v33 = v4;
    v34 = v3;

    result = [v0 view];
    if (result)
    {
      v19 = result;
      v20 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_scrollView];
      v32 = v20;
      [result addSubview:v20];

      [v20 setDelegate:v0];
      [v20 setAlwaysBounceVertical:1];
      v44[0] = 0;
      sub_1007544E4();
      sub_100752EE4();
      v45[0] = *&v0[OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_stateStore];

      sub_10000C518(&qword_100925350, &qword_1007AEDF0);
      sub_10002DDC8(&qword_100925358, &qword_100925350, &qword_1007AEDF0, &protocol conformance descriptor for TransientStateStore<A>);
      sub_100752944();
      v21 = OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_model;
      v31 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_objectGraph];
      sub_10000C518(&unk_10093CAD0, &qword_1007AD7B0);
      v22 = v39;
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1007A6580;
      sub_100749A44();
      sub_100749A14();
      v45[0] = v23;
      sub_100516BA4(&unk_100929800, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
      sub_10000C518(&unk_10093CAE0, &unk_1007AD7B8);
      sub_10002DDC8(&qword_100929810, &unk_10093CAE0, &unk_1007AD7B8, &protocol conformance descriptor for [A]);
      v24 = v37;
      sub_1007543A4();
      v45[0] = _swiftEmptyArrayStorage;
      sub_100516BA4(&unk_100925360, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
      sub_10000C518(&qword_10092F330, qword_1007C0FD0);
      sub_10002DDC8(&qword_10093CAF0, &qword_10092F330, qword_1007C0FD0, &protocol conformance descriptor for [A]);
      v25 = v41;
      v26 = v34;
      sub_1007543A4();
      v27 = v36;
      v28 = v42;
      (*(v35 + 80))(&v1[v21], v43, v31, v24, v25, v1, v36);
      (*(v33 + 8))(v25, v26);
      (*(v22 + 8))(v24, v18);
      sub_10000C824(&v1[v21], v45);
      v44[3] = v27;
      v44[0] = v28;
      v29 = v28;
      sub_1007430A4();
      sub_100516BEC(v45);
      sub_10000C620(v44);
      [v32 addSubview:v29];
      return (*(v38 + 8))(v43, v40);
    }

    __break(1u);
    goto LABEL_9;
  }

  if (result)
  {
    v17 = [v42 backgroundColor];
    [v16 setBackgroundColor:v17];
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
  return result;
}

id sub_100516124()
{
  v41.receiver = v0;
  v41.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v41, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_scrollView];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  [result bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v1 setFrame:{v5, v7, v9, v11}];
  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = result;
  [result bounds];
  v14 = v13;
  v16 = v15;

  v17 = sub_1005153A8(v14, v16);
  v19 = v18;
  [v1 frame];
  Height = CGRectGetHeight(v42);
  v21 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_componentView];
  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v22 = result;
  [result bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v43.origin.x = v24;
  v43.origin.y = v26;
  v43.size.width = v28;
  v43.size.height = v30;
  MinX = CGRectGetMinX(v43);
  result = [v0 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v32 = result;
  if (v19 <= Height)
  {
    v19 = Height;
  }

  [result bounds];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v44.origin.x = v34;
  v44.origin.y = v36;
  v44.size.width = v38;
  v44.size.height = v40;
  [v21 setFrame:{MinX, CGRectGetMinY(v44), v17, v19}];
  [v1 setContentSize:{v17, v19}];
  return [v0 setPreferredContentSize:{v17, v19}];
}

void sub_10051643C(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "traitCollectionDidChange:", a1);
  if (a1 && [a1 horizontalSizeClass] == 2)
  {
    v3 = [v1 traitCollection];
    v4 = [v3 horizontalSizeClass];

    if (v4 == 1)
    {
      [v1 dismissViewControllerAnimated:0 completion:0];
    }
  }
}

uint64_t sub_100516560()
{
  v1 = sub_10074EAB4();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  __chkstk_darwin(v1);
  v24 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100749A94();
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&qword_100930BC0, &qword_1007C6B40);
  __chkstk_darwin(v6 - 8);
  v7 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v22 = *(v7 - 8);
  v23 = v7;
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  v27 = 0;
  sub_1007544E4();
  sub_100752EE4();
  v28 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_stateStore);

  sub_10000C518(&qword_100925350, &qword_1007AEDF0);
  sub_10002DDC8(&qword_100925358, &qword_100925350, &qword_1007AEDF0, &protocol conformance descriptor for TransientStateStore<A>);
  sub_100752944();
  v18 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_componentView + 8);
  ObjectType = swift_getObjectType();
  v16 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_objectGraph);
  v17 = OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_model;
  sub_10000C518(&unk_10093CAD0, &qword_1007AD7B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007A5A00;
  sub_100749A44();
  v28 = v10;
  sub_100516BA4(&unk_100929800, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  sub_10000C518(&unk_10093CAE0, &unk_1007AD7B8);
  sub_10002DDC8(&qword_100929810, &unk_10093CAE0, &unk_1007AD7B8, &protocol conformance descriptor for [A]);
  v11 = v21;
  sub_1007543A4();
  v28 = _swiftEmptyArrayStorage;
  sub_100516BA4(&unk_100925360, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  sub_10000C518(&qword_10092F330, qword_1007C0FD0);
  sub_10002DDC8(&qword_10093CAF0, &qword_10092F330, qword_1007C0FD0, &protocol conformance descriptor for [A]);
  v13 = v24;
  v12 = v25;
  sub_1007543A4();
  (*(v18 + 80))(v0 + v17, v9, v16, v5, v13, v0, ObjectType);
  (*(v26 + 8))(v13, v12);
  (*(v19 + 8))(v5, v11);
  return (*(v22 + 8))(v9, v23);
}

void sub_100516B8C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_overflowTransitioning);
  *(*v0 + OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_overflowTransitioning) = 0;
}

uint64_t sub_100516BA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100516BEC(uint64_t a1)
{
  v2 = sub_10000C518(&unk_1009297F0, &unk_1007AD7A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_100516C9C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10074F704();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100743184();
  v7 = *(v25 - 8);
  __chkstk_darwin(v25);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100744C54();
  sub_100516F78(&unk_10093CB00, &type metadata accessor for ArcadeShowcase, &protocol conformance descriptor for ArcadeShowcase);
  sub_1007468B4();
  if (!v26)
  {
    return 0.0;
  }

  v24[1] = v2;
  sub_10074B294();
  sub_100752764();
  sub_100752D34();
  v10 = v26;
  sub_10074B274();
  swift_getKeyPath();
  sub_100746914();

  sub_10074F674();
  v12 = v11;
  v14 = v13;
  (*(v4 + 8))(v6, v3);
  v15 = sub_10007DC04();
  if (sub_100743154())
  {
    v16 = sub_100744C24();
  }

  else
  {
    v16 = sub_100744C44();
  }

  v19 = v16;
  v20 = v17;
  swift_getObjectType();
  v21.n128_u64[0] = v12;
  sub_100205448(v19, v20, v15, v21, v14);
  v18 = v22;
  swift_unknownObjectRelease();

  (*(v7 + 8))(v9, v25);
  return v18;
}

uint64_t sub_100516F78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for VideoView(uint64_t a1)
{
  result = qword_10093CBB0;
  if (!qword_10093CBB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100517010(uint64_t a1, __n128 a2)
{
  sub_10051E434(319, a2);
  if (v2 <= 0x3F)
  {
    sub_100741264();
    if (v3 <= 0x3F)
    {
      sub_100747D94();
      if (v4 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_1005171C8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

double sub_100517240(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_10093CB40 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v3 = *(v2 + qword_10093CB70);
  if (v3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension15VideoMirrorView_videoLayer);
      v6 = v3;
      [v5 setPlayer:v6];
      swift_unknownObjectRelease();
    }
  }

  swift_unknownObjectRelease();
  return result;
}

void sub_1005172EC()
{
  v1 = v0;
  v2 = sub_100747D94();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_10093CB70;
  v8 = *&v0[qword_10093CB70];
  if (v8)
  {
    sub_1005202A8(&unk_10093CCC0, type metadata accessor for VideoView, &unk_1007C80E0);
    v9 = v8;
    v10 = v0;
    sub_100743BF4();

    v11 = *&v0[v7];
    if (v11)
    {
      v12 = qword_100982288;
      swift_beginAccess();
      (*(v3 + 16))(v6, &v10[v12], v2);
      v13 = v11;
      sub_100747D64();
      (*(v3 + 8))(v6, v2);
      sub_100743BB4();

      v14 = *&v1[v7];
      if (v14)
      {
        [v14 _setDisallowsVideoLayerDisplayCompositing:1];
      }
    }
  }

  v15 = *&v1[qword_10093CB78];
  if (v15)
  {
    [v15 setPlayer:{*&v1[v7], v4}];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension15VideoMirrorView_videoLayer);
    v18 = *&v1[v7];
    [v17 setPlayer:v18];

    swift_unknownObjectRelease();
  }

  v19 = qword_10093CB90;
  if (v1[qword_10093CB90] == 1)
  {
    [v1 updateAudioSessionCategoryWithIsAudioOn:1];
    v20 = *&v1[v7];
    if (v20)
    {
      [v20 setMuted:0];
    }

    v1[v19] = 0;
  }
}

uint64_t sub_100517558()
{
  v1 = *(v0 + qword_10093CB70);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 currentItem];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 tracks];

  sub_100016C60(0, &unk_10093CD00, AVPlayerItemTrack_ptr);
  v5 = sub_1007532A4();

  if (v5 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_100754574();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = [v8 assetTrack];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 mediaType];

        v14 = sub_100753094();
        v16 = v15;
        if (v14 == sub_100753094() && v16 == v17)
        {

LABEL_23:
          i = 1;
          goto LABEL_24;
        }

        v19 = sub_100754754();

        if (v19)
        {
          goto LABEL_23;
        }
      }

      else
      {
      }

      ++v7;
      if (v10 == i)
      {
        i = 0;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_24:

  return i;
}

id sub_100517790(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for VideoView(0);
  v1 = objc_msgSendSuper2(&v3, "backgroundColor");

  return v1;
}

void sub_1005177EC(char *a1, uint64_t a2, void *a3)
{
  v5 = *&a1[qword_10093CB78];
  v6 = a3;
  v7 = a1;
  if (v5)
  {
    v5 = [v5 view];
  }

  [v5 setBackgroundColor:a3];

  v8.receiver = a1;
  v8.super_class = type metadata accessor for VideoView(0);
  objc_msgSendSuper2(&v8, "setBackgroundColor:", a3);
}

uint64_t sub_10051789C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = sub_100747D94();
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100744864();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + qword_100982258);
  if (v12)
  {
    v30[0] = v9;
    v30[1] = a1;
    v13 = *(v1 + qword_100982258 + 8);

    v14 = sub_10074C5C4();
    v15 = qword_100982288;
    v16 = (v4 + 16);
    v17 = (v4 + 8);
    if (v14)
    {
      swift_beginAccess();
      v18 = v2 + v15;
      v19 = v31;
      (*v16)(v6, v18, v31);
      sub_100747D44();
    }

    else
    {
      swift_beginAccess();
      v25 = v2 + v15;
      v19 = v31;
      (*v16)(v6, v25, v31);
      sub_100747D14();
    }

    (*v17)(v6, v19);
    v26 = sub_10074C5C4();
    v12(v11, v26 & 1);
    v27 = sub_1000164A8(v12, v13);
    return (*(v8 + 8))(v11, v30[0], v27);
  }

  else
  {
    v20 = sub_10074C5C4();
    v21 = qword_100982288;
    v22 = (v4 + 16);
    if (v20)
    {
      swift_beginAccess();
      v23 = v2 + v21;
      v24 = v31;
      (*v22)(v6, v23, v31);
      sub_100747D44();
    }

    else
    {
      swift_beginAccess();
      v29 = v2 + v21;
      v24 = v31;
      (*v22)(v6, v29, v31);
      sub_100747D14();
    }

    return (*(v4 + 8))(v6, v24);
  }
}

id sub_100517BC4(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for VideoView(0);
  return objc_msgSendSuper2(&v2, "frame");
}

void sub_100517C08(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = type metadata accessor for VideoView(0);
  v20.receiver = a1;
  v20.super_class = v10;
  v11 = a1;
  objc_msgSendSuper2(&v20, "frame");
  v13 = v12;
  v15 = v14;
  v19.receiver = v11;
  v19.super_class = v10;
  objc_msgSendSuper2(&v19, "setFrame:", a2, a3, a4, a5);
  [v11 frame];
  v18 = v17 == v13 && v16 == v15;
  if (!v18 && (*(v11 + qword_10093CB60) & 1) == 0)
  {
    sub_10051B82C();
  }
}

void sub_100517CF0(uint64_t a1)
{
  v1 = ASKDeviceTypeGetCurrent();
  v2 = sub_100753094();
  v4 = v3;
  v6 = 8.0;
  if (v2 != sub_100753094() || v4 != v5)
  {
    if (sub_100754754())
    {
      v6 = 8.0;
    }

    else
    {
      v6 = 6.0;
    }
  }

  qword_10093CB10 = *&v6;
  *algn_10093CB18 = v6;
  qword_10093CB20 = *&v6;
  unk_10093CB28 = *&v6;
}

char *sub_100517DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v67 = a6;
  v68 = a5;
  v69 = a4;
  v70 = a3;
  v62 = sub_100752AC4();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_100741264();
  v63 = *(v66 - 8);
  __chkstk_darwin(v66);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v57 - v15;
  v59 = v7;
  v17 = objc_allocWithZone(v7);
  swift_weakInit();
  *&v17[qword_10093CB38 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v17[qword_10093CB40 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v17[qword_10093CB48 + 8] = 0;
  swift_unknownObjectWeakInit();
  v18 = qword_10093CB50;
  *&v17[v18] = [objc_allocWithZone(UIImageView) init];
  v17[qword_10093CB58] = 0;
  v17[qword_10093CB60] = 0;
  v17[qword_10093CB68] = 0;
  *&v17[qword_10093CB70] = 0;
  *&v17[qword_10093CB78] = 0;
  v19 = qword_10093CB80;
  sub_10074C5F4();
  *&v17[v19] = sub_10074C5E4();
  v20 = qword_10093CB88;
  *&v17[v20] = [objc_allocWithZone(type metadata accessor for PlayButton()) init];
  v21 = a2;
  v22 = &v17[qword_100982238];
  v23 = *&UIEdgeInsetsZero.bottom;
  *v22 = *&UIEdgeInsetsZero.top;
  v22[1] = v23;
  v24 = &v17[qword_100982240];
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = 1;
  *&v17[qword_100982248] = 1;
  v17[qword_10093CB90] = 0;
  v25 = &v17[qword_100982258];
  *v25 = 0;
  v25[1] = 0;
  *&v17[qword_100982268 + 8] = 0;
  swift_unknownObjectWeakInit();
  v17[qword_100982270] = 0;
  v17[qword_100982278] = 0;
  swift_unknownObjectWeakInit();
  v17[qword_10093CB98] = 0;
  v17[qword_100982290] = 0;
  *&v17[qword_10093CBA0] = 0;
  v17[qword_10093CBA8] = 0;
  swift_beginAccess();
  v65 = a7;
  swift_weakAssign();
  v64 = a1;
  sub_100066198(a1, &v17[qword_100982260]);
  v26 = sub_100741244();
  v28 = v27;
  v29 = sub_10074F134();
  v58 = a2;
  if (!v28)
  {

    v31 = v66;
    v32 = v63;
    goto LABEL_9;
  }

  if (v26 == v29 && v28 == v30)
  {

    v31 = v66;
    v32 = v63;
    goto LABEL_7;
  }

  v33 = sub_100754754();

  v31 = v66;
  v32 = v63;
  if ((v33 & 1) == 0)
  {
LABEL_9:
    (*(v32 + 16))(&v17[qword_100982250], v21, v31);
    goto LABEL_10;
  }

LABEL_7:
  v34 = [objc_opt_self() mainBundle];
  sub_1007411F4();
  v35 = sub_100753064();

  v36 = [v34 URLForResource:v35 withExtension:0];

  if (!v36)
  {
    goto LABEL_9;
  }

  sub_100741224();

  v37 = *(v32 + 32);
  v37(v16, v13, v31);
  v37(&v17[qword_100982250], v16, v31);
LABEL_10:
  v38 = v32;
  sub_100016B4C(v69, &v17[qword_100982220], &unk_1009281C0, qword_1007ABBB0);
  sub_100016B4C(v68, &v17[qword_100982228], &unk_1009281C0, qword_1007ABBB0);
  v39 = qword_100982288;
  v40 = sub_100747D94();
  v41 = *(v40 - 8);
  (*(v41 + 16))(&v17[v39], v70, v40);
  sub_100016B4C(v67, &v17[qword_100982230], &unk_10093CC90, qword_1007D0C70);
  v73.receiver = v17;
  v73.super_class = v59;
  v42 = objc_msgSendSuper2(&v73, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v42 setClipsToBounds:0];
  v43 = qword_10093CB50;
  [*&v42[qword_10093CB50] setUserInteractionEnabled:0];
  [*&v42[v43] setClipsToBounds:1];
  [v42 addSubview:*&v42[v43]];
  v44 = objc_opt_self();
  v45 = [v44 defaultCenter];
  v46 = sub_1007538A4();
  [v45 addObserver:v42 selector:"didChangeAutoPlayVideoSetting" name:v46 object:0];

  v47 = [v44 defaultCenter];
  [v47 addObserver:v42 selector:"handleMediaServicesReset" name:AVAudioSessionMediaServicesWereResetNotification object:0];

  v48 = qword_10093CB88;
  [*&v42[qword_10093CB88] setHidden:1];
  v49 = *&v42[v48];
  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = &v49[OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_tapActionBlock];
  v52 = *&v49[OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_tapActionBlock];
  v53 = *&v49[OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_tapActionBlock + 8];
  *v51 = sub_1005210B8;
  v51[1] = v50;
  v54 = v49;

  sub_1000164A8(v52, v53);

  memset(v72, 0, sizeof(v72));
  memset(v71, 0, sizeof(v71));
  v55 = v60;
  sub_100752A74();
  sub_10000C8CC(v71, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(v72, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();
  (*(v61 + 8))(v55, v62);
  [v42 addSubview:*&v42[v48]];
  sub_10051F2AC();

  sub_10000C8CC(v67, &unk_10093CC90, qword_1007D0C70);
  sub_10000C8CC(v68, &unk_1009281C0, qword_1007ABBB0);
  sub_10000C8CC(v69, &unk_1009281C0, qword_1007ABBB0);
  (*(v41 + 8))(v70, v40);
  (*(v38 + 8))(v58, v66);
  sub_100016994(v64);

  return v42;
}

void sub_10051868C(uint64_t a1)
{
  v45 = sub_100747D94();
  v1 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &ObjectType - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100744864();
  v4 = *(v3 - 8);
  v42 = v3;
  v43 = v4;
  __chkstk_darwin(v3);
  v6 = &ObjectType - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &ObjectType - v8;
  v10 = sub_100749CD4();
  v46 = *(v10 - 8);
  v47 = v10;
  __chkstk_darwin(v10);
  v12 = &ObjectType - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100749D14();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &ObjectType - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v41 = v1;
    (*((swift_isaMask & *Strong) + qword_100982298 + 712))();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      ObjectType = swift_getObjectType();
      sub_1005202A8(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
      v19 = v18;
      v40 = v9;
      v20 = v6;
      v21 = v13;
      v22 = v19;
      sub_1007471F4();

      v13 = v21;
      v6 = v20;
      v9 = v40;
      swift_unknownObjectRelease();
    }

    (*(v14 + 104))(v16, enum case for MediaClickMetricsEvent.TargetId.play(_:), v13);
    v23 = v13;
    v25 = v46;
    v24 = v47;
    (*(v46 + 104))(v12, enum case for MediaClickMetricsEvent.ActionType.play(_:), v47);
    sub_10051D504(v16, v12);
    (*(v25 + 8))(v12, v24);
    v26 = (*(v14 + 8))(v16, v23);
    if ((*((swift_isaMask & *v18) + qword_100982298 + 752))(v26))
    {
      v27 = sub_10074C5C4();
      v28 = qword_100982288;
      v29 = (v41 + 16);
      v30 = (v41 + 8);
      if (v27)
      {
        swift_beginAccess();
        v31 = v18 + v28;
        v32 = v44;
        (*v29)(v44, v31, v45);
        sub_100747D44();
      }

      else
      {
        swift_beginAccess();
        v33 = v18 + v28;
        v32 = v44;
        (*v29)(v44, v33, v45);
        sub_100747D14();
      }

      (*v30)(v32, v45);
      sub_100744834();
      sub_1005202A8(&qword_1009295E8, &type metadata accessor for VideoControls, &protocol conformance descriptor for VideoControls);
      v34 = v42;
      v35 = sub_100754324();
      v36 = *(v43 + 8);
      v36(v6, v34);
      v36(v9, v34);
      if (v35)
      {
        v37 = *(v18 + qword_10093CB70);
        if (v37)
        {
          v38 = v37;
          [v18 updateAudioSessionCategoryWithIsAudioOn:1];
          [v38 setMuted:0];

          v18 = v38;
        }

        else
        {
          *(v18 + qword_10093CB90) = 1;
        }
      }
    }
  }
}

uint64_t sub_100518C98@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100746494();
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + qword_10093CB70);
  if (v8)
  {
    v14 = v4;
    v9 = v8;
    sub_100743BD4();

    return (*(v14 + 32))(a1, v7, v3);
  }

  else
  {
    v11 = enum case for VideoPlayerState.unknown(_:);
    v12 = *(v4 + 104);

    return v12(a1, v11, v3, v5);
  }
}

void sub_100518DCC()
{
  v1 = v0;
  v2 = qword_10093CB70;
  v3 = *(v0 + qword_10093CB70);
  if (v3 || (sub_1005194D8(), (v3 = *(v0 + v2)) != 0))
  {
    v4 = v3;
    v5 = sub_100743B94();

    if ((v5 & 1) == 0)
    {
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = *(v1 + v2);
      if (v7)
      {
        swift_retain_n();
        v8 = v7;
        if ([v8 isMuted] & 1) != 0 && ((*((swift_isaMask & *v1) + qword_100982298 + 752))())
        {

          sub_1001256F0(sub_1005210B0, v6);

LABEL_12:

          return;
        }
      }

      else
      {
        swift_retain_n();
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v10 = Strong;
        v11 = *(Strong + qword_10093CB70);

        [v11 play];

        return;
      }

      goto LABEL_12;
    }
  }
}

void sub_100518F98(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + qword_10093CB70);

    [v3 play];
  }
}

uint64_t sub_100519010()
{
  v1 = v0;
  v2 = sub_100747D94();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_100982288;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  LOBYTE(v6) = sub_100747CF4();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = sub_10074C5C4();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_10051913C()
{
  v1 = v0;
  v0[qword_100982278] = 0;
  v2 = qword_100982270;
  [v0 setUserInteractionEnabled:(v0[qword_100982270] & 1) == 0];
  v3 = [v0 backgroundColor];
  if (!v3)
  {
    sub_100016C60(0, &qword_100923500, UIColor_ptr);
    v3 = sub_100753E34();
  }

  v10 = v3;
  v4 = *&v0[qword_10093CB78];
  if (v4)
  {
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      if (v1[v2] == 1)
      {
        v7 = [objc_opt_self() clearColor];
      }

      else
      {
        v7 = v10;
      }

      v8 = v7;
      [v6 setBackgroundColor:v7];
    }
  }

  sub_10051F2AC();
  if ((v1[v2] & 1) == 0)
  {
    v9 = *&v1[qword_10093CB70];
    if (v9)
    {
      [v9 setMuted:(v1[qword_10093CB98] & 1) == 0];
    }
  }

  sub_10051B82C();
  [v1 setNeedsLayout];
}

uint64_t sub_1005192C8(_BYTE *a1)
{
  v2 = v1;
  v4 = sub_100747D94();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v15[-v9];
  v11 = qword_100982288;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v2 + v11, v4);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v11, a1, v4);
  swift_endAccess();
  v12(v7, v2 + v11, v4);
  sub_1005202A8(&unk_10093CCF0, &type metadata accessor for VideoConfiguration, &protocol conformance descriptor for VideoConfiguration);
  LOBYTE(v11) = sub_100753014();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if ((v11 & 1) == 0)
  {
    sub_10051F2AC();
  }

  v13(a1, v4);
  return (v13)(v10, v4);
}

void sub_1005194D8()
{
  v1 = v0;
  v2 = sub_100741264();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10051B108();
  v6 = qword_10093CB70;
  v7 = *(v0 + qword_10093CB70);
  if (v7 || (((*(v3 + 16))(v5, v0 + qword_100982250, v2), v8 = objc_allocWithZone(sub_100743C34()), v9 = sub_100743BC4(), (v10 = *(v0 + v6)) == 0) ? (v12 = 0) : (v11 = v10, sub_100743BF4(), v11, v12 = *(v1 + v6)), *(v1 + v6) = v9, v13 = v9, v12, sub_1005172EC(), v13, (v7 = *(v1 + v6)) != 0))
  {
    v14 = v7;
    sub_100743BA4();
  }
}

void sub_100519638(char a1)
{
  if (a1)
  {
    v2 = *(v1 + qword_10093CB78);
    if (v2)
    {
      v7[4] = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
      v7[5] = 0;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 1107296256;
      v7[2] = sub_1005171C8;
      v7[3] = &unk_100879D10;
      v3 = _Block_copy(v7);
      v4 = v2;
      [v4 exitFullScreenAnimated:0 completionHandler:v3];
      _Block_release(v3);
    }

    v5 = *(v1 + qword_10093CB70);
    if (v5)
    {
      v6 = v5;
      sub_100743B84();
    }
  }

  else
  {
    *(v1 + qword_10093CBA8) = 1;
  }
}

void sub_100519738()
{
  v1 = qword_10093CB78;
  v2 = *(v0 + qword_10093CB78);
  if (v2)
  {
    v3 = [v2 view];
  }

  else
  {
    v3 = 0;
  }

  [v3 removeFromSuperview];

  v4 = *(v0 + v1);
  *(v0 + v1) = 0;
}

uint64_t sub_1005197B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v39 = a1;
  v5 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v5 - 8);
  v40 = &v37 - v6;
  v7 = sub_10000C518(&qword_10093CCE0, &qword_1007C8248);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v10 = sub_10000C518(&qword_10093CCE8, qword_1007C8250);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = sub_10000C518(&unk_1009281C0, qword_1007ABBB0);
  __chkstk_darwin(v13 - 8);
  v15 = &v37 - v14;
  v16 = sub_1007524D4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016B4C(v3 + qword_100982220, v15, &unk_1009281C0, qword_1007ABBB0);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    v38 = a3;
    (*(v17 + 32))(v19, v15, v16);
    v21 = qword_10093CB70;
    v22 = *(v3 + qword_10093CB70);
    if (!v22)
    {
      (*(v17 + 8))(v19, v16);
      v20 = 1;
      a3 = v38;
      return (*(v17 + 56))(a3, v20, 1, v16);
    }

    v23 = v3;
    v24 = v22;
    v25 = sub_100743B74();
    if (v25)
    {
      v26 = *(v23 + v21);
      if (v26)
      {
        v27 = [v26 currentItem];
        if (v27)
        {
          v28 = v27;
          v29 = [v27 asset];

          v30 = sub_100753064();
          v31 = [v29 statusOfValueForKey:v30 error:0];

          if (v31 == 2)
          {
            [v25 duration];
            [v25 currentTime];
            CMTimeGetSeconds(&time);

LABEL_12:
            v32 = sub_100746B44();
            v33 = *(v32 - 8);
            (*(v33 + 16))(v12, v39, v32);
            (*(v33 + 56))(v12, 0, 1, v32);
            v34 = sub_100746B54();
            (*(*(v34 - 8) + 56))(v9, 1, 1, v34);
            v35 = v40;
            sub_100743C04();
            a3 = v38;
            sub_100746B74();

            sub_10000C8CC(v35, &unk_100923970, &qword_1007A6B90);
            sub_10000C8CC(v9, &qword_10093CCE0, &qword_1007C8248);
            sub_10000C8CC(v12, &qword_10093CCE8, qword_1007C8250);
            (*(v17 + 8))(v19, v16);
            v20 = 0;
            return (*(v17 + 56))(a3, v20, 1, v16);
          }
        }
      }
    }

    v37 = 0;
    goto LABEL_12;
  }

  sub_10000C8CC(v15, &unk_1009281C0, qword_1007ABBB0);
  v20 = 1;
  return (*(v17 + 56))(a3, v20, 1, v16);
}

uint64_t sub_100519D44@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_10000C518(&unk_10093CC70, &qword_1007C8210);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  v12 = sub_100746B44();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, enum case for MediaMetricsEvent.ActionType.stop(_:), v12, v14);
  if (a2)
  {
    v17 = enum case for MediaMetricsEvent.ActionDetails.complete(_:);
    v18 = sub_100746B64();
    (*(*(v18 - 8) + 104))(v8, v17, v18);
  }

  else
  {
    v18 = sub_100746B64();
    if (a1)
    {
      v19 = &enum case for MediaMetricsEvent.ActionDetails.pause(_:);
    }

    else
    {
      v19 = &enum case for MediaMetricsEvent.ActionDetails.autopause(_:);
    }

    (*(*(v18 - 8) + 104))(v8, *v19, v18);
  }

  sub_100746B64();
  (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
  sub_100521040(v8, v11);
  sub_1005197B8(v16, v11, a3);
  sub_10000C8CC(v11, &unk_10093CC70, &qword_1007C8210);
  return (*(v13 + 8))(v16, v12);
}

void sub_100519FC4(void *a1)
{
  v1 = a1;
  sub_10051F2AC();
}

uint64_t sub_10051A00C()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for VideoView(0);
  objc_msgSendSuper2(&v14, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *&v0[qword_10093CB78];
  if (v9)
  {
    v10 = [v9 view];
  }

  else
  {
    v10 = 0;
  }

  [v10 setFrame:{v2, v4, v6, v8}];

  v11 = *&v0[qword_10093CB50];
  [v11 frame];
  [v11 setFrame:?];
  v15.origin.x = v2;
  v15.origin.y = v4;
  v15.size.width = v6;
  v15.size.height = v8;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = v2;
  v16.origin.y = v4;
  v16.size.width = v6;
  v16.size.height = v8;
  [v11 setCenter:{MidX, CGRectGetMidY(v16)}];
  sub_10051A1A4();
  return sub_10051C5DC();
}

void sub_10051A15C(void *a1)
{
  v1 = a1;
  sub_10051A00C();
}

id sub_10051A1A4()
{
  v1 = qword_10093CB88;
  result = [*&v0[qword_10093CB88] isHidden];
  if ((result & 1) == 0)
  {
    v3 = *&v0[v1];
    [v0 bounds];
    [v3 sizeThatFits:{v4, v5}];
    v7 = v6;
    v9 = v8;

    v10 = &v0[qword_100982240];
    if (v0[qword_100982240 + 16])
    {
      [v0 bounds];
      x = v19.origin.x;
      y = v19.origin.y;
      width = v19.size.width;
      height = v19.size.height;
      MidX = CGRectGetMidX(v19);
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      MidY = CGRectGetMidY(v20);
    }

    else
    {
      MidX = *v10;
      MidY = v10[1];
    }

    v17 = *&v0[v1];

    return [v17 setFrame:{MidX - v7 * 0.5, MidY - v9 * 0.5, v7, v9}];
  }

  return result;
}

uint64_t sub_10051A2F4()
{
  v1 = v0;
  v95 = sub_100744864();
  v2 = *(v95 - 8);
  __chkstk_darwin(v95);
  v4 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v97 = &v85 - v6;
  v7 = sub_100746494();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v85 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v86 = &v85 - v12;
  __chkstk_darwin(v13);
  v87 = &v85 - v14;
  __chkstk_darwin(v15);
  v93 = &v85 - v16;
  __chkstk_darwin(v17);
  v19 = &v85 - v18;
  v22 = __chkstk_darwin(v20);
  v23 = &v85 - v21;
  v24 = qword_10093CBA8;
  v25 = v1[qword_10093CBA8];
  v90 = v8;
  v88 = v26;
  if (v25 == 1)
  {
    v92 = v2;
    v27 = *&v1[qword_10093CB70];
    if (v27)
    {
      v28 = v27;
      sub_100743BD4();

      (*(v8 + 32))(v23, v19, v7);
      v29 = *(v8 + 104);
    }

    else
    {
      v29 = *(v8 + 104);
      v29(&v85 - v21, enum case for VideoPlayerState.unknown(_:), v7, v22);
    }

    v32 = v93;
    (v29)(v93, enum case for VideoPlayerState.paused(_:), v7);
    v33 = sub_100746484();
    v34 = *(v8 + 8);
    v34(v32, v7);
    v34(v23, v7);
    if (v33)
    {
      v1[v24] = 0;
      v31 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = sub_100521038;
    }

    else
    {
      v30 = 0;
      v31 = 0;
    }

    v2 = v92;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v35 = qword_10093CB70;
  v36 = *&v1[qword_10093CB70];
  v89 = v7;
  v96 = v31;
  v91 = qword_10093CB70;
  if (!v36)
  {
    v43 = v2;
    v48 = 0;
    v49 = &v1[qword_100982270];
    v50 = v1[qword_100982270] ^ 1;
    goto LABEL_22;
  }

  v37 = [v36 currentItem];
  if (v37)
  {
    v38 = v4;
    v39 = v2;
    v40 = v37;
    [v37 currentTime];
    sub_100753BF4(0.0, 1000000000);
    v41 = sub_100753BE4();

    v2 = v39;
    v4 = v38;
    v31 = v96;
    v42 = *&v1[v35];
    if (v42)
    {
      goto LABEL_13;
    }

LABEL_17:
    v43 = v2;
    v45 = 0;
    goto LABEL_18;
  }

  v41 = 1;
  v42 = *&v1[v35];
  if (!v42)
  {
    goto LABEL_17;
  }

LABEL_13:
  v43 = v2;
  v44 = v42;
  v45 = sub_100743C14();

  v46 = *&v1[v35];
  if (!v46)
  {
LABEL_18:
    v48 = 0;
    goto LABEL_19;
  }

  v47 = v46;
  v48 = sub_100743C24();

LABEL_19:
  v49 = &v1[qword_100982270];
  v51 = v1[qword_100982270] | v48;
  v52 = v51 | v41;
  v50 = v51 ^ 1;
  if ((v52 & 1) == 0 && (v45 & 1) == 0)
  {
    v48 = 0;
    v50 = v1[qword_10093CB68];
  }

LABEL_22:
  v53 = v1[qword_10093CB58];
  v94 = v30;
  sub_10051AC10(v50 & 1, v53, v30, v31);
  v54 = v97;
  sub_10051789C(v97);
  sub_100744844();
  sub_1005202A8(&qword_1009295E8, &type metadata accessor for VideoControls, &protocol conformance descriptor for VideoControls);
  v55 = v95;
  v56 = sub_100754324();
  v59 = *(v43 + 8);
  v57 = v43 + 8;
  v58 = v59;
  v59(v4, v55);
  if (v56)
  {
    v60 = v48 ^ 1;
  }

  else
  {
    sub_100744854();
    v61 = sub_100754324();
    v58(v4, v55);
    if (v61)
    {
      v62 = *&v1[v91];
      v92 = v57;
      if (v62)
      {
        v63 = v62;
        v64 = v86;
        sub_100743BD4();

        v65 = v89;
        v66 = v90;
        v67 = v87;
        (*(v90 + 32))(v87, v64, v89);
        v68 = *(v66 + 104);
      }

      else
      {
        v65 = v89;
        v66 = v90;
        v68 = *(v90 + 104);
        v67 = v87;
        (v68)(v87, enum case for VideoPlayerState.unknown(_:), v89);
      }

      v69 = v93;
      v87 = v68;
      (v68)(v93, enum case for VideoPlayerState.paused(_:), v65);
      v70 = sub_100746484();
      v71 = *(v66 + 8);
      v71(v69, v65);
      v71(v67, v65);
      if (v70)
      {
        v60 = 1;
        v55 = v95;
        v54 = v97;
      }

      else
      {
        v72 = *&v1[v91];
        if (v72)
        {
          v73 = v72;
          v74 = v85;
          sub_100743BD4();

          (*(v90 + 32))(v88, v74, v65);
          v54 = v97;
          v75 = v87;
        }

        else
        {
          v75 = v87;
          (v87)(v88, enum case for VideoPlayerState.unknown(_:), v65);
          v54 = v97;
        }

        v76 = v93;
        (v75)(v93, enum case for VideoPlayerState.ended(_:), v65);
        v77 = v88;
        v60 = sub_100746484();
        v71(v76, v65);
        v71(v77, v65);
        v55 = v95;
      }
    }

    else
    {
      v60 = 0;
      v54 = v97;
    }
  }

  v78 = v60 & ~*v49;
  v79 = objc_opt_self();
  v80 = swift_allocObject();
  *(v80 + 16) = v1;
  *(v80 + 24) = v78 & 1;
  aBlock[4] = sub_100521004;
  aBlock[5] = v80;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_100879CE8;
  v81 = _Block_copy(aBlock);
  v82 = v1;

  [v79 animateWithDuration:4 delay:v81 options:0 animations:0.2 completion:0.0];
  _Block_release(v81);
  v83 = sub_1000164A8(v94, v96);
  return (v58)(v54, v55, v83);
}

void sub_10051AB90(char a1, uint64_t a2)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = *(Strong + qword_10093CB70);
      v4 = Strong;
      v5 = v3;

      if (v3)
      {
        sub_100743B84();
      }
    }
  }
}

void sub_10051AC10(char a1, char a2, uint64_t (*a3)(), uint64_t a4)
{
  if (a2)
  {
    v8 = a1 & 1;
    if (a1)
    {
      v9 = 0.2;
    }

    else
    {
      v9 = 0.5;
    }

    v10 = swift_allocObject();
    *(v10 + 16) = v4;
    *(v10 + 24) = v8;
    v27 = sub_100520FF8;
    v28 = v10;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_1000CF7B0;
    v26 = &unk_100879C20;
    v11 = _Block_copy(&v23);
    v12 = v4;

    if (a3)
    {
      v27 = a3;
      v28 = a4;
      v23 = _NSConcreteStackBlock;
      v24 = 1107296256;
      v25 = sub_100144DD8;
      v26 = &unk_100879C98;
      a3 = _Block_copy(&v23);
    }

    v13 = objc_opt_self();
    [v13 animateWithDuration:4 delay:v11 options:a3 animations:v9 completion:0.0];
    _Block_release(a3);
    _Block_release(v11);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v8;
    v27 = sub_100521100;
    v28 = v14;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_1000CF7B0;
    v26 = &unk_100879C70;
    v15 = _Block_copy(&v23);
    v16 = v12;

    [v13 animateWithDuration:4 delay:v15 options:0 animations:0.2 completion:0.0];
    _Block_release(v15);
  }

  else
  {
    v17 = objc_opt_self();
    v18 = swift_allocObject();
    *(v18 + 16) = v4;
    *(v18 + 24) = a1 & 1;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_100520FDC;
    *(v19 + 24) = v18;
    v27 = sub_100045E0C;
    v28 = v19;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10011B528;
    v26 = &unk_100879BD0;
    v20 = _Block_copy(&v23);
    v21 = v4;

    [v17 performWithoutAnimation:v20];
    _Block_release(v20);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

id sub_10051AF98(char *a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = 0.0;
    if (a2)
    {
      *&v5 = 1.0;
    }

    [*(Strong + OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_artworkLayer) setOpacity:v5];
    swift_unknownObjectRelease();
  }

  v6 = 0.0;
  if (a2)
  {
    v6 = 1.0;
  }

  [*&a1[qword_10093CB50] setAlpha:v6];

  return [a1 layoutSubviews];
}

id sub_10051B058(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = 0.0;
    if (a2)
    {
      *&v5 = 1.0;
    }

    [*(Strong + OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_artworkLayer) setOpacity:v5];
    swift_unknownObjectRelease();
  }

  v6 = *(a1 + qword_10093CB50);
  v7 = 0.0;
  if (a2)
  {
    v7 = 1.0;
  }

  return [v6 setAlpha:v7];
}

void sub_10051B108()
{
  v1 = qword_10093CB78;
  if (*&v0[qword_10093CB78])
  {
    return;
  }

  v2 = [objc_allocWithZone(type metadata accessor for AppStoreVideoPlayerViewController()) init];
  [v2 setShowsPlaybackControls:0];
  [v2 setAllowsVideoFrameAnalysis:0];
  [v2 setUpdatesNowPlayingInfoCenter:0];
  [v2 setCanPausePlaybackWhenExitingFullScreen:0];
  [v2 setPreferredUnobscuredArea:*&v0[qword_100982248]];
  [v2 setShowsMinimalPlaybackControlsWhenEmbeddedInline:1];
  [v2 setDelegate:v0];
  v3 = v2;
  v4 = [v3 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4;
  [v4 setClipsToBounds:1];

  v6 = [v3 view];
  if (!v6)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = v6;
  v8 = [v0 backgroundColor];
  if (!v8)
  {
    sub_100016C60(0, &qword_100923500, UIColor_ptr);
    v8 = sub_100753E34();
  }

  [v7 setBackgroundColor:v8];

  [v3 setModalPresentationStyle:5];
  [v3 setCanToggleVideoGravityWhenEmbeddedInline:0];
  v9 = [v3 view];
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9;
  v11 = [v9 layer];

  sub_100746ED4();
  v12 = sub_100746EE4();
  v12();
  [v11 setMaskedCorners:sub_1007535E4()];

  v13 = [v3 view];
  if (!v13)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = v13;
  [v0 bounds];
  [v14 setFrame:?];

  v15 = *&v0[qword_10093CB70];
  if (v15)
  {
    v16 = v15;
    [v16 _setDisallowsVideoLayerDisplayCompositing:1];
    [v3 setPlayer:v16];
  }

  v17 = [v3 view];
  if (!v17)
  {
    goto LABEL_19;
  }

  v18 = v17;
  [v0 insertSubview:v17 atIndex:0];

  v19 = *&v0[v1];
  *&v0[v1] = v3;

  sub_10051F2AC();
  v20 = [v3 view];

  if (!v20)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v21 = [v20 layer];

  [v21 setAllowsGroupBlending:0];
}

id sub_10051B4D0()
{
  v1 = v0;
  v2 = sub_100744864();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[qword_100982270] == 1)
  {
    v7 = *&v0[qword_10093CB78];
    if (v7)
    {
      [v7 setShowsPlaybackControls:{1, v4}];
    }
  }

  else
  {
    v8 = *&v0[qword_10093CB70];
    if (v8 && (v9 = v8, v10 = sub_100743C24(), v9, (v10 & 1) != 0))
    {
      v11 = qword_10093CB78;
      v12 = *&v1[qword_10093CB78];
      if (v12)
      {
        v13 = v12;
        sub_10051789C(v6);
        v14 = sub_100744824();
        (*(v3 + 8))(v6, v2);
        [v13 setShowsPlaybackControls:v14 & 1];

        v15 = *&v1[v11];
        if (v15)
        {
          [v15 flashPlaybackControlsWithDuration:5.0];
        }
      }
    }

    else
    {
      v16 = *&v1[qword_10093CB78];
      if (v16)
      {
        [v16 setShowsPlaybackControls:{0, v4}];
      }
    }
  }

  return [v1 accessibilityUpdatePlayerControllerControls];
}

void sub_10051B68C()
{
  v1 = v0;
  if (qword_100921798 != -1)
  {
    swift_once();
  }

  v2 = *&qword_10093CB10;
  v3 = *algn_10093CB18;
  v4 = *&qword_10093CB20;
  v5 = unk_10093CB28;
  v6 = &v0[qword_100982238];
  v7 = *&v0[qword_100982238];
  v8 = *&v0[qword_100982238 + 16];
  v9 = [v0 traitCollection];
  v10 = sub_1007537F4();

  v11 = *&v1[qword_10093CB78];
  if (v11)
  {
    v12 = 8;
    if (v10)
    {
      v13 = 24;
    }

    else
    {
      v13 = 8;
    }

    if ((v10 & 1) == 0)
    {
      v12 = 24;
    }

    v14 = v3 + *&v6[v13];
    v15 = v5 + *&v6[v12];
    v16 = objc_opt_self();
    v17 = v11;
    v18 = [v16 valueWithUIEdgeInsets:{v2 + v7, v14, v4 + v8, v15}];
    [v17 setOverrideLayoutMarginsWhenEmbeddedInline:v18];
  }
}

void sub_10051B82C()
{
  v1 = v0;
  v2 = sub_1007521E4();
  v34 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100752224();
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007521F4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[qword_100982270] != 1)
  {
LABEL_4:
    [v1 frame];
    v15 = [objc_opt_self() mainScreen];
    [v15 scale];

    sub_100753B64();
    v13 = v16;
    v14 = v17;
    goto LABEL_6;
  }

  sub_100016B4C(&v0[qword_100982230], aBlock, &unk_10093CC90, qword_1007D0C70);
  if (v37)
  {
    sub_10000C888(aBlock, v37);
    v12 = sub_100744E74();
    sub_10000C620(aBlock);
    v13 = 0.0;
    v14 = 0.0;
    if ((v12 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  sub_10000C8CC(aBlock, &unk_10093CC90, qword_1007D0C70);
  v13 = 0.0;
  v14 = 0.0;
LABEL_6:
  v18 = qword_10093CB70;
  v19 = *&v1[qword_10093CB70];
  if (!v19 || (v20 = v19, v21 = sub_100743B74(), v20, !v21) || (([v21 preferredMaximumResolution], v23 = v22, v25 = v24, v21, v23 == v13) ? (v26 = v25 == v14) : (v26 = 0), !v26))
  {
    sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
    (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v8);
    v27 = sub_1007537A4();
    (*(v9 + 8))(v11, v8);
    v28 = *&v1[v18];
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = v13;
    *(v29 + 32) = v14;
    v38 = sub_100520F98;
    v39 = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CF7B0;
    v37 = &unk_100879B58;
    v30 = _Block_copy(aBlock);
    v31 = v28;
    sub_100752204();
    v35 = _swiftEmptyArrayStorage;
    sub_1005202A8(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000C518(&unk_10092F750, &qword_1007A6920);
    sub_1000A8054();
    sub_1007543A4();
    sub_100753784();
    _Block_release(v30);

    (*(v34 + 8))(v4, v2);
    (*(v32 + 8))(v7, v33);
  }
}

void sub_10051BD24(uint64_t a1, double a2, double a3)
{
  if (a1)
  {
    v5 = sub_100743B74();
    [v5 setPreferredMaximumResolution:{a2, a3}];
  }
}

void sub_10051BD94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    *(Strong + qword_100982270) = 0;
    sub_10051913C();
  }
}

void sub_10051BDF4(uint64_t a1)
{
  v3 = sub_100748F84();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v7, a1, v3, v5);
  if ((*(v4 + 88))(v7, v3) == enum case for VideoPlaybackFailure.videoDecodersUnavailable(_:))
  {
    (*(v4 + 96))(v7, v3);
    v8 = *v7;
    v9 = [objc_opt_self() defaultCenter];
    v10 = sub_100753894();
    sub_10000C518(&qword_100927760, &qword_1007AE390);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007A6580;
    v17 = sub_10074DAF4();
    v18 = v12;
    sub_1007544E4();
    *(inited + 96) = &type metadata for AnyHashable;
    v13 = swift_allocObject();
    *(inited + 72) = v13;
    sub_100066198(v1 + qword_100982260, v13 + 16);
    v17 = sub_10074DB04();
    v18 = v14;
    sub_1007544E4();
    *(inited + 168) = sub_10000C518(&unk_10093CCD0, &qword_1007C8240);
    *(inited + 144) = v8;
    v15 = v8;
    sub_100414D14(inited);
    swift_setDeallocating();
    sub_10000C518(&qword_100927768, qword_1007AAE20);
    swift_arrayDestroy();
    isa = sub_100752F34().super.isa;

    [v9 postNotificationName:v10 object:0 userInfo:isa];
  }

  else
  {
    (*(v4 + 8))(v7, v3);
  }
}

void sub_10051C0E4()
{
  sub_100746ED4();
  v1 = sub_100746EE4();
  v1();
  v2 = sub_1007535E4();
  v3 = [v0 layer];
  [v3 setMaskedCorners:v2];

  sub_100746EA4();
  v4 = *&v0[qword_10093CB78];
  if (v4)
  {
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 layer];

      [v7 setMaskedCorners:v2];
    }
  }

  v8 = [*&v0[qword_10093CB50] layer];
  [v8 setMaskedCorners:v2];
}

uint64_t sub_10051C214()
{
  sub_100746ED4();
  v0 = sub_100746EE4();

  return v0();
}

void sub_10051C25C(uint64_t a1)
{
  sub_100746ED4();
  v2 = sub_100746EE4();
  v2(a1);

  sub_10051C0E4();
}

uint64_t (*sub_10051C2BC(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  sub_100746ED4();
  v5 = sub_100746EE4();
  *(v4 + 40) = v5(v4);
  return sub_10051C35C;
}

void sub_10051C35C(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    sub_10051C0E4();
  }

  free(v3);
}

void sub_10051C3C4(void *a1, double a2)
{
  v3 = a1;
  sub_10051C514(&selRef__setCornerRadius_, &selRef__cornerRadius, a2);
}

id sub_10051C450(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for VideoView(0);
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_10051C494(void *a1, double a2)
{
  v3 = a1;
  sub_10051C514(&selRef__setContinuousCornerRadius_, &selRef__continuousCornerRadius, a2);
}

id sub_10051C514(SEL *a1, SEL *a2, double a3)
{
  v12.receiver = v3;
  v12.super_class = type metadata accessor for VideoView(0);
  objc_msgSendSuper2(&v12, *a1, a3);
  v7 = *&v3[qword_10093CB78];
  if (v7)
  {
    v8 = [v7 view];
    if (v8)
    {
      v9 = v8;
      [v3 *a2];
      [v9 *a1];
    }
  }

  v10 = *&v3[qword_10093CB50];
  [v3 *a2];
  return [v10 *a1];
}

uint64_t sub_10051C5DC()
{
  v1 = v0;
  v2 = sub_100743584();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v29 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v28 = &v27 - v5;
  v6 = sub_100747D94();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v13 = qword_100982288;
  swift_beginAccess();
  v14 = *(v7 + 16);
  v14(v12, &v1[v13], v6);
  v15 = sub_100747D04();
  v16 = *(v7 + 8);
  v16(v12, v6);
  if ((v15 & 1) == 0)
  {
    [v1 _continuousCornerRadius];
    if (v20 == 0.0)
    {
      [v1 _cornerRadius];
      v21 = v30;
      if (v22 == 0.0)
      {
        v23 = v29;
        v24 = v31;
        (*(v30 + 104))(v29, enum case for CornerStyle.arc(_:), v31);
        goto LABEL_12;
      }

      [v1 _cornerRadius];
      v25 = enum case for CornerStyle.arc(_:);
    }

    else
    {
      [v1 _continuousCornerRadius];
      v25 = enum case for CornerStyle.continuous(_:);
      v21 = v30;
    }

    v23 = v29;
    v24 = v31;
    (*(v21 + 104))(v29, v25, v31);
    goto LABEL_12;
  }

  v14(v9, &v1[v13], v6);
  sub_100747D54();
  v18 = v17;
  v16(v9, v6);
  if (v18)
  {
    v19 = &enum case for CornerStyle.arc(_:);
  }

  else
  {
    [*&v1[qword_10093CB50] frame];
    v19 = &enum case for CornerStyle.continuous(_:);
  }

  v21 = v30;
  v24 = v31;
  v23 = v28;
  (*(v30 + 104))(v28, *v19, v31);
LABEL_12:
  sub_100746E34();
  return (*(v21 + 8))(v23, v24);
}

void sub_10051C954(uint64_t a1, uint64_t a2)
{
  v5 = qword_10093CBA0;
  v6 = *&v2[qword_10093CBA0];
  if (!v6 || [v6 phase] == 3 || (v7 = *&v2[v5]) != 0 && objc_msgSend(v7, "phase") == 4)
  {
    v8 = sub_100669078(a1);
    if (v8)
    {
      v9 = *&v2[v5];
      *&v2[v5] = v8;
      v10 = v8;

      [v10 locationInView:v2];
      v11 = [v2 hitTest:a2 withEvent:?];
      if (v11)
      {
        v12 = v11;
        sub_100016C60(0, &qword_100922300, UIView_ptr);
        v13 = v12;
        v14 = v2;
        v15 = v2;
        v16 = sub_100753FC4();

        if ((v16 & 1) == 0)
        {
          sub_100016C60(0, &unk_100929820, UITouch_ptr);
          sub_1000665E0();
          v17 = v13;
          isa = sub_100753474().super.isa;
          [v17 touchesBegan:isa withEvent:a2];
        }

        v2 = v14;
      }

      sub_100016C60(0, &unk_100929820, UITouch_ptr);
      sub_1000665E0();
      v19.super.isa = sub_100753474().super.isa;
      v21.super_class = type metadata accessor for VideoView(0);
      objc_msgSendSuper2(&v21, "touchesBegan:withEvent:", v19.super.isa, a2, v20.receiver, v20.super_class, v2, v21.super_class, v22.receiver, v22.super_class);
    }

    else
    {
      sub_100016C60(0, &unk_100929820, UITouch_ptr);
      sub_1000665E0();
      v19.super.isa = sub_100753474().super.isa;
      v22.super_class = type metadata accessor for VideoView(0);
      objc_msgSendSuper2(&v22, "touchesBegan:withEvent:", v19.super.isa, a2, v20.receiver, v20.super_class, v21.receiver, v21.super_class, v2, v22.super_class);
    }
  }

  else
  {
    sub_100016C60(0, &unk_100929820, UITouch_ptr);
    sub_1000665E0();
    v19.super.isa = sub_100753474().super.isa;
    v20.super_class = type metadata accessor for VideoView(0);
    objc_msgSendSuper2(&v20, "touchesBegan:withEvent:", v19.super.isa, a2, v2, v20.super_class, v21.receiver, v21.super_class, v22.receiver, v22.super_class);
  }
}

double sub_10051CBE0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100016C60(0, &unk_100929820, UITouch_ptr);
  sub_1000665E0();
  v6 = sub_100753484();
  v7 = a4;
  v8 = a1;
  sub_10051C954(v6, a4);

  return result;
}

void sub_10051CCA8(uint64_t a1, uint64_t a2, SEL *a3)
{
  v7 = qword_10093CBA0;
  v8 = *&v3[qword_10093CBA0];
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  if ((sub_1002A4ED0(v9, a1) & 1) == 0)
  {

LABEL_8:
    sub_100016C60(0, &unk_100929820, UITouch_ptr);
    sub_1000665E0();
    v19.super.isa = sub_100753474().super.isa;
    v21.super_class = type metadata accessor for VideoView(0);
    objc_msgSendSuper2(&v21, *a3, v19.super.isa, a2, v20.receiver, v20.super_class, v3, v21.super_class);
    goto LABEL_11;
  }

  v10 = *&v3[v7];
  *&v3[v7] = 0;

  [v9 locationInView:v3];
  v11 = [v3 hitTest:a2 withEvent:?];
  if (v11)
  {
    v12 = v11;
    sub_100016C60(0, &qword_100922300, UIView_ptr);
    v13 = v12;
    v14 = v3;
    v15 = v3;
    v16 = sub_100753FC4();

    if ((v16 & 1) == 0)
    {
      sub_100016C60(0, &unk_100929820, UITouch_ptr);
      sub_1000665E0();
      v17 = v13;
      isa = sub_100753474().super.isa;
      [v17 *a3];

      v9 = v17;
    }

    v3 = v14;
  }

  else
  {
    v13 = v9;
  }

  sub_100016C60(0, &unk_100929820, UITouch_ptr);
  sub_1000665E0();
  v19.super.isa = sub_100753474().super.isa;
  v20.super_class = type metadata accessor for VideoView(0);
  objc_msgSendSuper2(&v20, *a3, v19.super.isa, a2, v3, v20.super_class, v21.receiver, v21.super_class);
LABEL_11:
}

double sub_10051CED8(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  sub_100016C60(0, &unk_100929820, UITouch_ptr);
  sub_1000665E0();
  v8 = sub_100753484();
  v9 = a4;
  v10 = a1;
  sub_10051CCA8(v8, a4, a5);

  return result;
}

void sub_10051CF88()
{
  v1 = v0;
  v2 = qword_10093CB70;
  v3 = *(v0 + qword_10093CB70);
  if (v3)
  {
    v4 = v3;
    v5 = sub_100743B94();

    v6 = *(v1 + v2);
    if (v6)
    {
      v7 = v6;
      sub_100743BF4();

      v6 = *(v1 + v2);
    }

    *(v1 + v2) = 0;

    sub_1005172EC();
    if (v5)
    {
      sub_1005194D8();
      v8 = *((swift_isaMask & *v1) + qword_100982298 + 712);

      v8();
    }
  }

  else
  {

    sub_1005172EC();
  }
}

void sub_10051D0A4(void *a1)
{
  v1 = a1;
  sub_10051CF88();
}

void sub_10051D0EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong setShowsPlaybackControls:1];
  }
}

void sub_10051D14C()
{
  v1 = sub_100749CD4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100749D14();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v0[qword_10093CB70];
  if (v9)
  {
    v10 = v9;
    [v10 setMuted:{objc_msgSend(v10, "isMuted") ^ 1}];
    v11 = [v10 isMuted];
    [v0 updateAudioSessionCategoryWithIsAudioOn:v11 ^ 1];
    (*(v6 + 104))(v8, enum case for MediaClickMetricsEvent.TargetId.mute(_:), v5);
    v12 = &enum case for MediaClickMetricsEvent.ActionType.mute(_:);
    if (!v11)
    {
      v12 = &enum case for MediaClickMetricsEvent.ActionType.unmute(_:);
    }

    (*(v2 + 104))(v4, *v12, v1);
    sub_10051D504(v8, v4);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
  }
}

void sub_10051D378(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    (*((swift_isaMask & *Strong) + qword_100982298 + 712))();
  }
}

void sub_10051D41C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  sub_100520348(a4);

  swift_unknownObjectRelease();
}

void sub_10051D498(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  sub_1005204EC(a4);
}

void sub_10051D504(uint64_t a1, uint64_t a2)
{
  v69 = a1;
  v70 = a2;
  v3 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v3 - 8);
  v74 = &v62 - v4;
  v5 = sub_100752874();
  __chkstk_darwin(v5 - 8);
  v72 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&qword_10093CCA0, &qword_1007C8218);
  __chkstk_darwin(v7 - 8);
  v71 = &v62 - v8;
  v9 = sub_10000C518(&qword_10093CCA8, &qword_1007C8220);
  __chkstk_darwin(v9 - 8);
  v11 = &v62 - v10;
  v12 = sub_10000C518(&qword_10093CCB0, &qword_1007C8228);
  __chkstk_darwin(v12 - 8);
  v14 = &v62 - v13;
  v15 = sub_10000C518(&qword_10093CCB8, &unk_1007C8230);
  __chkstk_darwin(v15 - 8);
  v17 = &v62 - v16;
  v76 = sub_100752614();
  v73 = *(v76 - 8);
  __chkstk_darwin(v76);
  v68 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v75 = &v62 - v20;
  v21 = sub_10000C518(&unk_1009281C0, qword_1007ABBB0);
  __chkstk_darwin(v21 - 8);
  v23 = &v62 - v22;
  v24 = sub_1007524D4();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016B4C(v2 + qword_100982228, v23, &unk_1009281C0, qword_1007ABBB0);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    v28 = &unk_1009281C0;
    v29 = qword_1007ABBB0;
    v30 = v23;
LABEL_3:
    sub_10000C8CC(v30, v28, v29);
    return;
  }

  (*(v25 + 32))(v27, v23, v24);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    (*(v25 + 8))(v27, v24);
    return;
  }

  v32 = Strong;
  v33 = qword_10093CB70;
  v34 = *(v2 + qword_10093CB70);
  if (!v34)
  {
    (*(v25 + 8))(v27, v24);

    return;
  }

  v35 = v2;
  v66 = v34;
  v36 = sub_100743B74();
  v67 = v32;
  v65 = v2;
  if (!v36)
  {
    goto LABEL_14;
  }

  v37 = v36;
  v38 = *(v35 + v33);
  if (!v38 || (v39 = [v38 currentItem]) == 0 || (v40 = v39, v41 = objc_msgSend(v39, "asset"), v40, v42 = sub_100753064(), v43 = objc_msgSend(v41, "statusOfValueForKey:error:", v42, 0), v41, v42, v43 != 2))
  {

LABEL_14:
    v64 = 0.0;
    v63 = 1;
    goto LABEL_15;
  }

  [v37 currentTime];
  Seconds = CMTimeGetSeconds(&time);

  v63 = 0;
  v64 = Seconds;
LABEL_15:
  sub_10000C518(&unk_10092C210, &qword_1007B0C68);
  v62 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  *(swift_allocObject() + 16) = xmmword_1007A5A00;
  v45 = enum case for MediaClickMetricsEvent.TargetType.button(_:);
  v46 = sub_100749CE4();
  v47 = *(v46 - 8);
  (*(v47 + 104))(v17, v45, v46);
  (*(v47 + 56))(v17, 0, 1, v46);
  v48 = sub_100749D14();
  v49 = *(v48 - 8);
  (*(v49 + 16))(v14, v69, v48);
  (*(v49 + 56))(v14, 0, 1, v48);
  v50 = sub_100749CD4();
  v51 = *(v50 - 8);
  (*(v51 + 16))(v11, v70, v50);
  (*(v51 + 56))(v11, 0, 1, v50);
  LODWORD(v51) = *(v65 + qword_100982270);
  v52 = sub_100749CF4();
  v53 = *(v52 - 8);
  v54 = &enum case for MediaClickMetricsEvent.ActionContext.fullscreen(_:);
  if (!v51)
  {
    v54 = &enum case for MediaClickMetricsEvent.ActionContext.inline(_:);
  }

  v55 = v71;
  (*(*(v52 - 8) + 104))(v71, *v54, v52);
  (*(v53 + 56))(v55, 0, 1, v52);
  sub_100749D04();
  sub_10000C8CC(v55, &qword_10093CCA0, &qword_1007C8218);
  sub_10000C8CC(v11, &qword_10093CCA8, &qword_1007C8220);
  sub_10000C8CC(v14, &qword_10093CCB0, &qword_1007C8228);
  sub_10000C8CC(v17, &qword_10093CCB8, &unk_1007C8230);
  sub_100752864();
  v56 = v75;
  sub_100752604();
  v57 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
  v58 = v74;
  sub_1007526C4();
  v59 = *(v57 - 8);
  if ((*(v59 + 48))(v58, 1, v57) == 1)
  {

    (*(v73 + 8))(v56, v76);
    (*(v25 + 8))(v27, v24);
    v28 = &unk_100923960;
    v29 = &qword_1007A6240;
    v30 = v58;
    goto LABEL_3;
  }

  sub_1007433F4();
  v60 = v73;
  (*(v73 + 16))(v68, v56, v76);
  v61 = sub_1007433D4();
  sub_1003C13F0(v61, 1, v67, v58);

  (*(v60 + 8))(v75, v76);
  (*(v25 + 8))(v27, v24);
  (*(v59 + 8))(v58, v57);
}

uint64_t sub_10051DF74(char *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *&a1[qword_10093CB70];
  if (v3)
  {
    v5 = a1;
    v6 = v3;
    v7 = a3();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_10051E010()
{
  swift_weakDestroy();
  sub_10000C4F0(v0 + qword_10093CB38);
  sub_10000C4F0(v0 + qword_10093CB40);
  sub_10000C4F0(v0 + qword_10093CB48);

  sub_10000C8CC(v0 + qword_100982220, &unk_1009281C0, qword_1007ABBB0);
  sub_10000C8CC(v0 + qword_100982228, &unk_1009281C0, qword_1007ABBB0);
  sub_10000C8CC(v0 + qword_100982230, &unk_10093CC90, qword_1007D0C70);

  v1 = qword_100982250;
  v2 = sub_100741264();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000164A8(*(v0 + qword_100982258), *(v0 + qword_100982258 + 8));
  sub_100016994(v0 + qword_100982260);
  sub_10000C4F0(v0 + qword_100982268);
  swift_unknownObjectWeakDestroy();
  v3 = qword_100982288;
  v4 = sub_100747D94();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + qword_10093CBA0);
}

id sub_10051E204()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10051E23C(uint64_t a1)
{
  swift_weakDestroy();
  sub_10000C4F0(a1 + qword_10093CB38);
  sub_10000C4F0(a1 + qword_10093CB40);
  sub_10000C4F0(a1 + qword_10093CB48);

  sub_10000C8CC(a1 + qword_100982220, &unk_1009281C0, qword_1007ABBB0);
  sub_10000C8CC(a1 + qword_100982228, &unk_1009281C0, qword_1007ABBB0);
  sub_10000C8CC(a1 + qword_100982230, &unk_10093CC90, qword_1007D0C70);

  v2 = qword_100982250;
  v3 = sub_100741264();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  sub_1000164A8(*(a1 + qword_100982258), *(a1 + qword_100982258 + 8));
  sub_100016994(a1 + qword_100982260);
  sub_10000C4F0(a1 + qword_100982268);
  swift_unknownObjectWeakDestroy();
  v4 = qword_100982288;
  v5 = sub_100747D94();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = *(a1 + qword_10093CBA0);
}

void sub_10051E434(uint64_t a1, __n128 a2)
{
  if (!qword_10093CC48)
  {
    sub_1007524D4();
    v2 = sub_100754284();
    if (!v3)
    {
      atomic_store(v2, &qword_10093CC48);
    }
  }
}

double sub_10051E4FC(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();

  return result;
}

void (*sub_10051E55C(uint64_t *a1))(void **a1, char a2, __n128 a3)
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
  v5 = qword_10093CB30;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100091CAC;
}

double sub_10051E644(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_100982268;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*sub_10051E6B0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_100982268;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_10051E750;
}

void sub_10051E750(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_10051E7DC()
{
  v1 = *(v0 + qword_10093CB70);
  if (v1)
  {
    v2 = v1;
    sub_100743BE4();
  }
}

uint64_t sub_10051E87C@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_100982288;
  swift_beginAccess();
  v4 = sub_100747D94();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

void (*sub_10051E908(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = sub_100747D94();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  v8 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[6] = malloc(*(v6 + 64));
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[7] = v9;
  v11 = qword_100982288;
  swift_beginAccess();
  v12 = *(v7 + 16);
  v4[8] = v12;
  v4[9] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v10, v1 + v11, v5);
  return sub_10051EA60;
}

void sub_10051EA60(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  if (a2)
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), v5);
    sub_1005192C8(v4);
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    sub_1005192C8(*(v2 + 56));
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t sub_10051EB18@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_10000C518(&unk_10093CC70, &qword_1007C8210);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_100746B44();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, enum case for MediaMetricsEvent.ActionType.play(_:), v7, v9);
  if (a1)
  {
    v12 = sub_100746B64();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  }

  else
  {
    v13 = enum case for MediaMetricsEvent.ActionDetails.autoplay(_:);
    v14 = sub_100746B64();
    v15 = *(v14 - 8);
    (*(v15 + 104))(v6, v13, v14);
    (*(v15 + 56))(v6, 0, 1, v14);
  }

  sub_1005197B8(v11, v6, a2);
  sub_10000C8CC(v6, &unk_10093CC70, &qword_1007C8210);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10051ED70@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000C518(&unk_10093CC70, &qword_1007C8210);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_100746B44();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, enum case for MediaMetricsEvent.ActionType.seek(_:), v5, v7);
  v10 = enum case for MediaMetricsEvent.ActionDetails.autostart(_:);
  v11 = sub_100746B64();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v4, v10, v11);
  (*(v12 + 56))(v4, 0, 1, v11);
  sub_1005197B8(v9, v4, a1);
  sub_10000C8CC(v4, &unk_10093CC70, &qword_1007C8210);
  return (*(v6 + 8))(v9, v5);
}

void sub_10051EF64(double a1)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_1005202A8(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
    sub_1007471E4();
    swift_unknownObjectRelease();
  }
}

double sub_10051F038()
{
  v1 = v0 + qword_10093CB48;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10051F0DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *(v3 + qword_10093CB70);
  if (!v4)
  {
    return 0;
  }

  v6 = v4;
  LOBYTE(a3) = a3();

  return a3 & 1;
}

void sub_10051F1D8()
{
  v1 = *(v0 + qword_10093CB70);
  if (v1)
  {
    v2 = v1;
    if (sub_100743B94())
    {
      [v2 pause];
    }
  }
}

uint64_t sub_10051F2AC()
{
  v1 = v0;
  v2 = sub_100744864();
  v74 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v79 = &v68 - v6;
  v7 = sub_100744894();
  v78 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100747D94();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v70 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v68 - v14;
  v16 = *(v0 + qword_10093CB70);
  if (v16)
  {
    v17 = v9;
    v18 = v11;
    v19 = qword_100982288;
    swift_beginAccess();
    v20 = v1 + v19;
    v11 = v18;
    (*(v18 + 16))(v15, v20, v10);
    v21 = v16;
    sub_100747D64();
    (*(v11 + 8))(v15, v10);
    sub_100743BB4();

    v9 = v17;
  }

  v68 = v4;
  v77 = v2;
  v75 = qword_10093CB78;
  v22 = *(v1 + qword_10093CB78);
  if (v22)
  {
    v23 = v9;
    v24 = v11;
    v25 = qword_100982288;
    swift_beginAccess();
    v26 = v1 + v25;
    v11 = v24;
    (*(v24 + 16))(v15, v26, v10);
    v27 = v22;
    v28 = sub_100747D24();
    (*(v11 + 8))(v15, v10);
    [v27 setAllowsEnteringFullScreen:v28 & 1];

    v9 = v23;
  }

  v76 = *(v1 + qword_10093CB50);
  v29 = qword_100982288;
  swift_beginAccess();
  v30 = (v11 + 16);
  v72 = *(v11 + 16);
  v72(v15, &v29[v1], v10);
  sub_100747D84();
  v31 = *(v11 + 8);
  v73 = v11 + 8;
  v71 = v31;
  v31(v15, v10);
  v32 = sub_100744874();
  v33 = v78[1];
  v33(v9, v7);
  [v76 setContentMode:v32];
  v34 = *(v1 + v75);
  if (v34)
  {
    v72(v15, &v29[v1], v10);
    v78 = v34;
    sub_100747D84();
    v71(v15, v10);
    v35 = sub_100744884();
    v33(v9, v7);
    v36 = v78;
    [v78 setVideoGravity:v35 forLayoutClass:0];
  }

  v69 = v10;
  v78 = v30;
  v76 = v29;
  sub_10051789C(v79);
  sub_1005202A8(&qword_1009295E8, &type metadata accessor for VideoControls, &protocol conformance descriptor for VideoControls);
  v37 = v68;
  v38 = v77;
  sub_100754394();
  sub_1005202A8(&unk_10093CC80, &type metadata accessor for VideoControls, &protocol conformance descriptor for VideoControls);
  v39 = sub_100753014();
  v40 = v74 + 8;
  v41 = *(v74 + 8);
  v41(v37, v38);
  [v1 setUserInteractionEnabled:(v39 & 1) == 0];
  v42 = *(v1 + qword_10093CB88);
  sub_100744844();
  v43 = sub_100754324();
  v41(v37, v38);
  if (v43)
  {
    v44 = v41;
    v45 = 0;
  }

  else
  {
    sub_100744854();
    v46 = sub_100754324();
    v44 = v41;
    v41(v37, v38);
    v45 = v46 ^ 1;
  }

  v47 = v76;
  [v42 setHidden:{v45 & 1, v68}];

  v48 = v75;
  v49 = *(v1 + v75);
  if (v49)
  {
    v50 = v49;
    [v50 setShowsPlaybackControls:sub_100744824() & 1];

    v47 = v76;
    v51 = *(v1 + v48);
    if (v51)
    {
      v74 = v40;
      v52 = *((swift_isaMask & *v1) + qword_100982298 + 752);
      v53 = v51;
      v54 = (v52() & 1) != 0 ? 1 : *(v1 + qword_100982290);
      [v53 setShowsMinimalPlaybackControlsWhenEmbeddedInline:v54];

      v55 = *(v1 + v48);
      v47 = v76;
      if (v55)
      {
        v56 = v55;
        sub_100744834();
        v57 = v77;
        v58 = sub_100754324();
        v44(v37, v57);
        if (v58)
        {
          v59 = 1;
        }

        else
        {
          v59 = *(v1 + qword_100982270);
        }

        [v56 setPlaybackControlsIncludeVolumeControls:v59];
      }
    }
  }

  sub_10051A2F4();
  v60 = &v47[v1];
  v61 = v69;
  v62 = v70;
  v72(v70, v60, v69);
  v63 = sub_100747D04();
  v71(v62, v61);
  if (v63)
  {
    v64 = v79;
    v65 = v77;
    v66 = v44;
    if ((*(v1 + qword_100982270) & 1) == 0)
    {
      sub_1007433C4();
      sub_100743234();
      sub_100746E64();
      sub_100743244();
    }
  }

  else
  {
    v64 = v79;
    v65 = v77;
    v66 = v44;
  }

  sub_100746E74();
  sub_10051C5DC();
  sub_10051B4D0();
  sub_10051B68C();
  return v66(v64, v65);
}

double sub_10051FB10(char a1)
{
  v2 = sub_1007521E4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100752224();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_1009202F8 != -1)
    {
      swift_once();
    }

    v17[0] = qword_1009294C8;
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = AVAudioSessionCategoryPlayback;
    v10[5] = AVAudioSessionModeDefault;
    v10[6] = 0;
    v22 = sub_1005210FC;
    v23 = v10;
    aBlock = _NSConcreteStackBlock;
    v19 = 1107296256;
    v11 = &unk_100879AE0;
  }

  else
  {
    if (qword_1009202F8 != -1)
    {
      swift_once();
    }

    v17[0] = qword_1009294C8;
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = AVAudioSessionCategoryPlayback;
    v12[5] = AVAudioSessionModeDefault;
    v12[6] = 1;
    v22 = sub_100520EC4;
    v23 = v12;
    aBlock = _NSConcreteStackBlock;
    v19 = 1107296256;
    v11 = &unk_100879A90;
  }

  v20 = sub_1000CF7B0;
  v21 = v11;
  v13 = _Block_copy(&aBlock);
  v14 = AVAudioSessionCategoryPlayback;
  v15 = AVAudioSessionModeDefault;
  sub_100752204();
  v17[1] = _swiftEmptyArrayStorage;
  sub_1005202A8(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000C518(&unk_10092F750, &qword_1007A6920);
  sub_1000A8054();
  sub_1007543A4();
  sub_100753784();
  _Block_release(v13);
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);

  return result;
}

uint64_t sub_10051FEB8(uint64_t a1)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_1005202A8(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
    sub_100747224();
    swift_unknownObjectRelease();
  }

  v3 = v1 + qword_10093CB48;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v6 = sub_1005202A8(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
    (*(v4 + 16))(a1, v1, v6, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  sub_10051B4D0();
  return sub_10051A2F4();
}

void sub_10052001C()
{
  v1 = v0;
  v2 = sub_100747D94();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v6 = qword_100982288;
    swift_beginAccess();
    (*(v3 + 16))(v5, v1 + v6, v2);
    sub_100747D64();
    (*(v3 + 8))(v5, v2);
    sub_1005202A8(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
    sub_100747204();
    swift_unknownObjectRelease();
  }

  if (*(v1 + qword_100982270) == 1)
  {
    v7 = *(v1 + qword_10093CB78);
    if (v7)
    {
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_100520328;
      aBlock[5] = v8;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1005171C8;
      aBlock[3] = &unk_1008799F0;
      v9 = _Block_copy(aBlock);
      v10 = v7;

      [v10 exitFullScreenAnimated:1 completionHandler:v9];
      _Block_release(v9);
    }
  }
}

uint64_t sub_1005202A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005202F0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_100520330(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_100520348(void *a1)
{
  v3 = v1 + qword_10093CB38;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(ObjectType, v4);
    swift_unknownObjectRelease();
  }

  *(v1 + qword_100982278) = 1;
  v13 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v14 = 0;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1003ED3AC;
  v12 = &unk_100879A18;
  v6 = _Block_copy(&v9);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = sub_100520EB8;
  v14 = v7;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1003ED3AC;
  v12 = &unk_100879A40;
  v8 = _Block_copy(&v9);

  [a1 animateAlongsideTransition:v6 completion:v8];
  _Block_release(v8);
  _Block_release(v6);
}

void sub_1005204EC(uint64_t a1)
{
  v2 = v1;
  v48 = sub_100747D94();
  v45 = *(v48 - 8);
  __chkstk_darwin(v48);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100744864();
  v49 = *(v6 - 8);
  __chkstk_darwin(v6);
  v47 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v46 = v43 - v9;
  v10 = sub_100749CD4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100749D14();
  v15 = *(v14 - 8);
  *&v16 = __chkstk_darwin(v14).n128_u64[0];
  v18 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        [v2 updateAudioSessionCategoryWithIsAudioOn:{1, v16}];
        (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.mute(_:), v14);
        v19 = &enum case for MediaClickMetricsEvent.ActionType.unmute(_:);
LABEL_17:
        (*(v11 + 104))(v13, *v19, v10);
        v32 = v18;
        v33 = v13;
LABEL_27:
        sub_10051D504(v32, v33);
        (*(v11 + 8))(v13, v10);
        (*(v15 + 8))(v18, v14);
        return;
      case 4:
        v36 = *(v2 + qword_10093CB70);
        if (v36)
        {
          v37 = [v36 isMuted] ^ 1;
        }

        else
        {
          v37 = 0;
        }

        *(v2 + qword_10093CB98) = v37;
        *(v2 + qword_100982270) = 1;
        sub_10051913C();
        (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.fullscreen(_:), v14);
        (*(v11 + 104))(v13, enum case for MediaClickMetricsEvent.ActionType.enterFullscreen(_:), v10);
        v32 = v18;
        v33 = v13;
        goto LABEL_27;
      case 5:
        *(v2 + qword_100982270) = 0;
        sub_10051913C();
        (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.inline(_:), v14);
        (*(v11 + 104))(v13, enum case for MediaClickMetricsEvent.ActionType.exitFullscreen(_:), v10);
        sub_10051D504(v18, v13);
        (*(v11 + 8))(v13, v10);
        (*(v15 + 8))(v18, v14);
        v20 = v2 + qword_10093CB38;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v21 = *(v20 + 1);
          ObjectType = swift_getObjectType();
          (*(v21 + 16))(ObjectType, v21);
          swift_unknownObjectRelease();
        }

        break;
    }
  }

  else if (a1)
  {
    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return;
      }

      [v2 updateAudioSessionCategoryWithIsAudioOn:{0, v16}];
      (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.mute(_:), v14);
      v19 = &enum case for MediaClickMetricsEvent.ActionType.mute(_:);
      goto LABEL_17;
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      sub_1005202A8(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
      sub_100747214();
      swift_unknownObjectRelease();
    }

    (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.pause(_:), v14);
    (*(v11 + 104))(v13, enum case for MediaClickMetricsEvent.ActionType.pause(_:), v10);
    sub_10051D504(v18, v13);
    (*(v11 + 8))(v13, v10);
    v34 = (*(v15 + 8))(v18, v14);
    if (((*((swift_isaMask & *v2) + qword_100982298 + 752))(v34) & 1) == 0)
    {
      [v2 updateAudioSessionCategoryWithIsAudioOn:0];
      v35 = *(v2 + qword_10093CB70);
      if (v35)
      {
        [v35 setMuted:1];
      }
    }
  }

  else
  {
    v44 = v6;
    v23 = v2;
    v24 = v2 + qword_100982268;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v43[1] = *(v24 + 1);
      swift_getObjectType();
      sub_1005202A8(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
      sub_1007471F4();
      swift_unknownObjectRelease();
    }

    (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.play(_:), v14);
    (*(v11 + 104))(v13, enum case for MediaClickMetricsEvent.ActionType.play(_:), v10);
    sub_10051D504(v18, v13);
    (*(v11 + 8))(v13, v10);
    v25 = (*(v15 + 8))(v18, v14);
    if (((*((swift_isaMask & *v23) + qword_100982298 + 752))(v25) & 1) == 0)
    {
      v26 = sub_10074C5C4();
      v27 = qword_100982288;
      v28 = (v45 + 16);
      v29 = (v45 + 8);
      if (v26)
      {
        swift_beginAccess();
        v30 = v48;
        (*v28)(v5, &v23[v27], v48);
        v31 = v46;
        sub_100747D44();
      }

      else
      {
        swift_beginAccess();
        v30 = v48;
        (*v28)(v5, &v23[v27], v48);
        v31 = v46;
        sub_100747D14();
      }

      v38 = v44;
      (*v29)(v5, v30);
      v39 = v47;
      sub_100744834();
      sub_1005202A8(&qword_1009295E8, &type metadata accessor for VideoControls, &protocol conformance descriptor for VideoControls);
      v40 = sub_100754324();
      v41 = *(v49 + 8);
      v41(v39, v38);
      v41(v31, v38);
      if (v40)
      {
        [v23 updateAudioSessionCategoryWithIsAudioOn:1];
        v42 = *&v23[qword_10093CB70];
        if (v42)
        {
          [v42 setMuted:0];
        }
      }
    }
  }
}

uint64_t sub_100520EC8()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100520F28()
{
  sub_10000C620((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100520F60()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100520FA4()
{

  return _swift_deallocObject(v0, 25, 7);
}

id sub_100521008()
{
  v1 = 0.0;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(*(v0 + 16) + qword_10093CB88) setAlpha:v1];
}

uint64_t sub_100521040(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_10093CC70, &qword_1007C8210);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100521164(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_100750304();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100750B04();
  sub_100039C50(v8, a3);
  sub_10000D0FC(v8, a3);
  if (qword_100921398 != -1)
  {
    swift_once();
  }

  v9 = sub_100750534();
  v10 = sub_10000D0FC(v9, qword_100981800);
  (*(*(v9 - 8) + 16))(v7, v10, v9);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v14[3] = v4;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_10000D134(v14);
  (*(v5 + 16))(v11, v7, v4);
  sub_100750B14();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100521340()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_10093CDB8);
  sub_10000D0FC(v4, qword_10093CDB8);
  *v3 = UIFontTextStyleFootnote;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_10000D134(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleFootnote;
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1005214AC()
{
  v0 = sub_10000C518(&qword_10092AC90, &qword_1007A8830);
  sub_100039C50(v0, qword_10093CDD0);
  sub_10000D0FC(v0, qword_10093CDD0);
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  type metadata accessor for NSTextAlignment(0);
  return sub_100743474();
}

void sub_100521548()
{
  v1 = sub_10000C518(&qword_100934110, qword_1007B70F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_10074C3E4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
  v20 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = sub_10000C518(&unk_100925540, &qword_1007A8140);
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - v12;
  if (*(v0 + qword_1009822B0))
  {
    v14 = *(v0 + qword_1009822A8);
    if (v14)
    {
      v19 = *(v0 + qword_10093CE08);

      v18 = sub_10074EF04();
      v15 = sub_10074EDF4();
      v16 = sub_10000C518(&unk_10092EEA0, qword_1007A8150);
      (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
      (*(v5 + 104))(v7, enum case for OfferButtonSubtitlePosition.below(_:), v4);
      (*(v5 + 56))(v3, 1, 1, v4);
      sub_100523F80(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
      sub_10074A9C4();
      sub_10015DE40(v18, v15, 0, v13, v10, v14, 0, 0);

      (*(v20 + 8))(v10, v8);
      sub_10000C8CC(v13, &unk_100925540, &qword_1007A8140);
    }
  }
}

double sub_1005218D4(uint64_t a1)
{
  v3 = sub_10000C518(&qword_100934110, qword_1007B70F0);
  __chkstk_darwin(v3 - 8);
  v5 = v21 - v4;
  v6 = sub_10074C3E4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
  v22 = *(v10 - 8);
  v23 = v10;
  __chkstk_darwin(v10);
  v12 = v21 - v11;
  v13 = sub_10000C518(&unk_100925540, &qword_1007A8140);
  __chkstk_darwin(v13 - 8);
  v15 = v21 - v14;
  v16 = qword_1009822A8;
  *(v1 + qword_1009822A8) = a1;

  if (*(v1 + qword_1009822B0) && (v17 = *(v1 + v16)) != 0)
  {
    v21[1] = *(v1 + qword_10093CE08);

    v21[0] = sub_10074EF04();
    v18 = sub_10074EDF4();
    v19 = sub_10000C518(&unk_10092EEA0, qword_1007A8150);
    (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
    (*(v7 + 104))(v9, enum case for OfferButtonSubtitlePosition.below(_:), v6);
    (*(v7 + 56))(v5, 1, 1, v6);
    sub_100523F80(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
    sub_10074A9C4();
    sub_10015DE40(v21[0], v18, 0, v15, v12, v17, 0, 0);

    (*(v22 + 8))(v12, v23);
    sub_10000C8CC(v15, &unk_100925540, &qword_1007A8140);
  }

  else
  {
  }

  return result;
}

id sub_100521CB0()
{
  v1 = v0;
  v2 = *&v0[qword_1009822B0];
  if (v2 && (v3 = *&v0[qword_1009822A8]) != 0)
  {
    v4 = *&v0[qword_10093CDF0];

    sub_10074EF34();
    if (v5)
    {
      v6 = sub_100753064();
    }

    else
    {
      v6 = 0;
    }

    [v4 setText:v6];

    if (qword_100921398 != -1)
    {
      swift_once();
    }

    v7 = sub_100750534();
    v8 = sub_10000D0FC(v7, qword_100981800);
    sub_10055FC7C(v9, v2, v8, v3);
    v10 = *&v1[qword_10093CE00];
    sub_100741D24();
    if (v11)
    {
      v12 = sub_100753064();
    }

    else
    {
      v12 = 0;
    }

    [v10 setText:v12];
  }

  else
  {
    [*&v0[qword_10093CDF0] setText:0];
    sub_10004E1D8();
    [*&v0[qword_10093CE00] setText:0];
  }

  sub_100521548();

  return [v1 setNeedsLayout];
}

char *sub_100521E88(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_100752AC4();
  v69 = *(v10 - 8);
  v70 = v10;
  __chkstk_darwin(v10);
  v68 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100750534();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v67 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10074AB44();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v72 = v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v18 - 8);
  v20 = v62 - v19;
  v21 = sub_100741E54();
  __chkstk_darwin(v21 - 8);
  v23 = v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[qword_1009822A8] = 0;
  *&v5[qword_1009822B0] = 0;
  sub_100741DD4();
  v24 = objc_allocWithZone(type metadata accessor for InAppPurchaseView(0));
  *&v5[qword_10093CDE8] = sub_10027562C(v23, 1);
  if (qword_100921398 != -1)
  {
    swift_once();
  }

  v25 = sub_10000D0FC(v12, qword_100981800);
  v26 = *(v13 + 16);
  v26(v20, v25, v12);
  v27 = *(v13 + 56);
  v62[1] = v13 + 56;
  v66 = v27;
  v27(v20, 0, 1, v12);
  v28 = *(v16 + 104);
  v64 = enum case for DirectionalTextAlignment.none(_:);
  v63 = v28;
  v28(v72);
  v29 = sub_100745C84();
  v62[0] = v15;
  v30 = v29;
  v31 = objc_allocWithZone(v29);
  v32 = sub_100745C74();
  v65 = qword_10093CDF0;
  *&v5[qword_10093CDF0] = v32;
  v33 = v67;
  v26(v67, v25, v12);
  v34 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel(0));
  v35 = sub_10004DA8C(v33, 1, 4, 0);
  v36 = qword_10093CDF8;
  *&v5[qword_10093CDF8] = v35;
  if (qword_1009213A0 != -1)
  {
    swift_once();
  }

  v37 = sub_10000D0FC(v12, qword_100981818);
  v26(v20, v37, v12);
  v66(v20, 0, 1, v12);
  v63(v72, v64, v62[0]);
  v38 = objc_allocWithZone(v30);
  v39 = sub_100745C74();
  v40 = qword_10093CE00;
  *&v5[qword_10093CE00] = v39;
  v41 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[qword_10093CE08] = sub_100154454(0);
  v42 = *&v5[v65];
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v43 = v42;
  v44 = v68;
  sub_100752A74();
  sub_10000C8CC(&v74, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(&v76, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  v45 = v70;
  v46 = *(v69 + 8);
  v46(v44, v70);
  v47 = *&v5[v36];
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v48 = v47;
  sub_100752A74();
  sub_10000C8CC(&v74, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(&v76, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  v46(v44, v45);
  v49 = *&v5[v40];
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v50 = v49;
  sub_100752A74();
  sub_10000C8CC(&v74, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(&v76, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  v46(v44, v45);
  v73.receiver = v5;
  v73.super_class = ObjectType;
  v51 = objc_msgSendSuper2(&v73, "initWithFrame:", a1, a2, a3, a4);
  v52 = [v51 contentView];
  [v52 addSubview:*&v51[qword_10093CDE8]];

  v53 = [v51 contentView];
  [v53 addSubview:*&v51[qword_10093CDF0]];

  v54 = [v51 contentView];
  [v54 addSubview:*&v51[qword_10093CDF8]];

  v55 = qword_10093CE00;
  v56 = *&v51[qword_10093CE00];
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v57 = v56;
  v58 = sub_100753DF4();
  [v57 setTextColor:v58];

  v59 = [v51 contentView];
  [v59 addSubview:*&v51[v55]];

  v60 = [v51 contentView];
  [v60 addSubview:*&v51[qword_10093CE08]];

  return v51;
}

void sub_100522720()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100754724();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101.receiver = v1;
  v101.super_class = ObjectType;
  objc_msgSendSuper2(&v101, "layoutSubviews", v5);
  v8 = [v1 contentView];
  sub_100016C60(0, &qword_100922300, UIView_ptr);
  sub_1007477B4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = *&v1[qword_10093CE08];
  v18 = &v17[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize];
  if (v17[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v19 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000C824(&v17[v19], v100);
    sub_10000C888(v100, v100[3]);
    sub_10074AE54();
    v21 = v20;
    v23 = v22;
    sub_10000C620(v100);
    v97 = v21;
    *v18 = v21;
    v18[1] = v23;
    v96 = v23;
    *(v18 + 16) = 0;
  }

  else
  {
    v24 = *v18;
    v96 = v18[1];
    v97 = v24;
  }

  if (qword_1009217A8 != -1)
  {
    swift_once();
  }

  v25 = sub_100750B04();
  sub_10000D0FC(v25, qword_10093CD88);
  sub_1007502D4();
  sub_100750564();
  v90 = v26;
  v27 = *(v4 + 8);
  v27(v7, v3);
  if (qword_1009217B8 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v25, qword_10093CDB8);
  sub_1007502D4();
  sub_100750564();
  v29 = v28;
  v27(v7, v3);
  v30 = *&v1[qword_10093CDE8];
  sub_100741E14();
  v32 = v31;
  v34 = v33;
  v102.origin.x = v10;
  v102.origin.y = v12;
  v102.size.width = v14;
  v102.size.height = v16;
  v87 = CGRectGetMidX(v102) + v32 * -0.5;
  v89 = v32;
  v88 = v34;
  sub_100753B24();
  [v30 setFrame:?];
  v103.origin.x = v10;
  v103.origin.y = v12;
  v103.size.width = v14;
  v103.size.height = v16;
  v35 = CGRectGetWidth(v103) - v97 - v29;
  v36 = *&v1[qword_10093CE00];
  v104.origin.x = v10;
  v104.origin.y = v12;
  v104.size.width = v14;
  v104.size.height = v16;
  [v36 sizeThatFits:{v35, CGRectGetHeight(v104)}];
  v105.origin.x = v10;
  v105.origin.y = v12;
  v105.size.width = v14;
  v105.size.height = v16;
  CGRectGetMaxY(v105);
  v106.origin.x = v10;
  v106.origin.y = v12;
  v106.size.width = v14;
  v106.size.height = v16;
  CGRectGetMinX(v106);
  [v36 lastBaselineFromBottom];
  Width = v35;
  sub_100753B24();
  [v36 setFrame:?];
  v37 = [v36 text];
  if (v37)
  {

    [v36 lastBaselineMaxY];
    v39 = v38;
  }

  else
  {
    v107.origin.x = v10;
    v107.origin.y = v12;
    v107.size.width = v14;
    v107.size.height = v16;
    v39 = CGRectGetMaxY(v107) + -20.0;
  }

  v108.origin.x = v10;
  v108.origin.y = v12;
  v108.size.width = v14;
  v108.size.height = v16;
  MaxX = CGRectGetMaxX(v108);
  v92 = v10;
  v91 = v12;
  v94 = MaxX - v97;
  v93 = v39 - v96;
  sub_100753B24();
  v42 = v41;
  v44 = v43;
  v86 = v14;
  v85 = v16;
  v46 = v45;
  v48 = v47;
  v49 = type metadata accessor for OfferButton();
  v99.receiver = v17;
  v99.super_class = v49;
  objc_msgSendSuper2(&v99, "frame");
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v98.receiver = v17;
  v98.super_class = v49;
  objc_msgSendSuper2(&v98, "setFrame:", v42, v44, v46, v48);
  sub_100153BE0(v51, v53, v55, v57);
  if (qword_1009217B0 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v25, qword_10093CDA0);
  sub_1007502D4();
  sub_100750564();
  v59 = v58;
  v27(v7, v3);
  v60 = *&v1[qword_10093CDF0];
  v61 = v86;
  v62 = v85;
  [v60 sizeThatFits:{v86, v85}];
  v64 = v63;
  v109.origin.y = 70.0;
  v109.origin.x = v87;
  v109.size.width = v89;
  v109.size.height = v88;
  MaxY = CGRectGetMaxY(v109);
  if (qword_1009217A0 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v25, qword_10093CD70);
  sub_1007502D4();
  v66 = [v60 traitCollection];
  sub_100750AD4();
  v68 = v67;

  [v60 firstBaselineFromTop];
  v70 = v69;
  v27(v7, v3);
  v89 = v59;
  v71 = v59 + v64 + MaxY + v68 - v70;
  v110.origin.x = v94;
  v110.origin.y = v93;
  v110.size.width = v97;
  v110.size.height = v96;
  MinY = CGRectGetMinY(v110);
  v73 = v92;
  v74 = v91;
  if (MinY >= v71)
  {
    v111.origin.x = v92;
    v111.origin.y = v91;
    v111.size.width = v61;
    v111.size.height = v62;
    CGRectGetWidth(v111);
  }

  v112.origin.x = v73;
  v112.origin.y = v74;
  v112.size.width = v61;
  v112.size.height = v62;
  CGRectGetMinX(v112);
  sub_100753B24();
  [v60 setFrame:?];
  v75 = *&v1[qword_10093CDF8];
  [v75 sizeThatFits:{v61, v62}];
  v77 = v76;
  sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  if (qword_100921398 != -1)
  {
    swift_once();
  }

  v78 = sub_100750534();
  sub_10000D0FC(v78, qword_100981800);
  v79 = [v1 traitCollection];
  v80 = sub_100753C14();

  [v60 lastBaselineMaxY];
  v82 = v90 + v81;
  sub_100753C24();
  v84 = v89 + v77 + v82 - v83;
  v113.origin.x = v94;
  v113.origin.y = v93;
  v113.size.width = v97;
  v113.size.height = v96;
  if (CGRectGetMinY(v113) >= v84)
  {
    v114.origin.x = v73;
    v114.origin.y = v74;
    v114.size.width = v61;
    v114.size.height = v62;
    Width = CGRectGetWidth(v114);
  }

  v115.origin.x = v73;
  v115.origin.y = v74;
  v115.size.width = v61;
  v115.size.height = v62;
  CGRectGetMinX(v115);
  sub_100753B24();
  [v75 setFrame:?];
}

void sub_1005230BC(void *a1)
{
  v1 = a1;
  sub_100522720();
}

double sub_100523104(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  sub_1006C7184(a1, a2, a3 & 1);
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v10 = v8;
    v11 = a1;
    v12 = [v4 backgroundView];
    if (v12)
    {
      v13 = v12;
      v14 = [v10 backgroundView];
      v15 = [v14 backgroundColor];

      [v13 setBackgroundColor:v15];
    }

    v16 = *&v10[qword_10093CDE8];
    sub_100276968(v16);

    *&v4[qword_1009822B0] = *&v10[qword_1009822B0];
    swift_retain_n();

    sub_100521CB0();
  }

  return result;
}

void sub_100523268(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_100741C54();
  v58 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v57 = &v48 - v12;
  v13 = sub_10074FB54();
  v56 = *(v13 - 8);
  __chkstk_darwin(v13);
  v53 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v54 = &v48 - v16;
  __chkstk_darwin(v17);
  v19 = &v48 - v18;
  v21 = __chkstk_darwin(v20);
  v23 = &v48 - v22;
  sub_1006EB5F4(v21);
  v24 = sub_10074FB64();
  sub_100741A44();
  v25 = swift_dynamicCastClass();
  if (v25)
  {
    v59 = v25;
    v49 = v10;
    v50 = v24;
    v51 = v8;
    sub_1007442C4();
    sub_100752764();
    v52 = a4;
    sub_100752D34();
    v60 = v62;
    v61 = v5;
    [*&v5[qword_10097ED48] setText:0];
    v55 = a1;
    sub_10074FB74();
    v26 = v56;
    v48 = *(v56 + 104);
    v48(v19, enum case for TodayCard.Style.dark(_:), v13);
    sub_100523F80(&qword_1009239F0, &type metadata accessor for TodayCard.Style, &protocol conformance descriptor for TodayCard.Style);
    sub_100753274();
    sub_100753274();
    if (v62 == v64 && v63 == v65)
    {
      v27 = 1;
    }

    else
    {
      v27 = sub_100754754();
    }

    v28 = *(v26 + 8);
    v28(v19, v13);
    v28(v23, v13);

    if (v27)
    {
      v29 = 2;
      v30 = v61;
    }

    else
    {
      v31 = v54;
      sub_10074FB74();
      v32 = v53;
      v48(v53, enum case for TodayCard.Style.light(_:), v13);
      sub_100753274();
      sub_100753274();
      v30 = v61;
      if (v62 == v64 && v63 == v65)
      {
        v28(v32, v13);
        v28(v31, v13);

        v29 = 1;
      }

      else
      {
        v33 = sub_100754754();
        v28(v32, v13);
        v28(v31, v13);

        v29 = v33 & 1;
      }
    }

    [v30 setOverrideUserInterfaceStyle:v29];
    v34 = sub_10074FA74();
    if (!v34)
    {
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      v34 = sub_100753E64();
    }

    v35 = v34;
    v36 = [v30 backgroundView];
    if (v36)
    {
      v37 = v36;
      [v36 setBackgroundColor:v35];
    }

    v38 = *&v30[qword_10093CDE8];
    v56 = sub_100741A34();
    v55 = v35;
    v39 = v57;
    sub_100741D34();
    v40 = OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_theme;
    swift_beginAccess();
    v41 = v58;
    v42 = v51;
    (*(v58 + 24))(&v38[v40], v39, v51);
    swift_endAccess();
    v54 = *(v41 + 16);
    v43 = v49;
    (v54)(v49, &v38[v40], v42);
    sub_100275D50(v43);
    v44 = *(v41 + 8);
    v44(v43, v42);
    v44(v39, v42);
    v45 = v55;
    [v38 setBackgroundColor:v55];
    sub_1006C2A3C(159.0, 159.0, v56, v38, v60);
    (v54)(v39, &v38[v40], v42);
    sub_100275D50(v39);
    v44(v39, v42);
    [v38 setNeedsLayout];

    v47 = v61;
    sub_1005218D4(v46);
    *&v47[qword_1009822B0] = sub_100741A34();

    sub_100521CB0();

    [v47 setNeedsLayout];
  }

  else
  {
  }
}

double sub_100523980(uint64_t a1, uint64_t a2)
{
  sub_1006EA238();
  sub_10000C824(a1, v8);
  sub_10000C518(&unk_100923100, &unk_1007A5F30);
  sub_10074FBB4();
  if (swift_dynamicCast())
  {
    sub_10074FB64();

    sub_100741A44();
    if (swift_dynamicCastClass())
    {
      v6 = *(v2 + qword_10093CDE8);
      v7 = sub_100741A34();
      sub_1006C2A3C(159.0, 159.0, v7, v6, a2);
    }
  }

  return result;
}

uint64_t sub_100523A7C(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  if (*(v3 + qword_10097ED58))
  {
    v5 = *(v3 + qword_10097ED58 + 8);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 128);
    swift_unknownObjectRetain();
    v7(a1, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  v10.value.super.isa = 0;
  v10.is_nil = 0;
  sub_100743384(v10, a3);
  v11.value.super.isa = 0;
  v11.is_nil = 0;
  sub_100743384(v11, v8);
  sub_1007433C4();
  sub_100523F80(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  sub_100744274();
  return sub_100744274();
}

id sub_100523BCC(void *a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_1009217C0 != -1)
    {
      swift_once();
    }

    v6 = sub_10000C518(&qword_10092AC90, &qword_1007A8830);
    sub_10000D0FC(v6, qword_10093CDD0);
    v7 = v1;
    sub_100743464();

    [*&v7[qword_10093CDF0] setTextAlignment:{v8, v1}];
    [*&v7[qword_10093CDF8] setTextAlignment:v8];
    return [*&v7[qword_10093CE00] setTextAlignment:v8];
  }

  return result;
}

void sub_100523D38(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_100523BCC(a3);
}

double sub_100523DA4()
{

  return result;
}

double sub_100523E34(uint64_t a1)
{

  return result;
}

uint64_t type metadata accessor for InAppPurchaseTodayCardCollectionViewCell(uint64_t a1)
{
  result = qword_10093CE38;
  if (!qword_10093CE38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100523F80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_100524028()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnimatedTransitionWithTasks();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100524090(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1005240D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_100524128(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v5 = *(v1 + v3);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = (v5 + 48);
    v8 = (v5 + 48);
    do
    {
      v9 = *v8;
      v8 += 24;
      if (v9 == a1)
      {
        v10 = *(v7 - 2);

        v10(a1, 1);
      }

      v7 = v8;
      --v6;
    }

    while (v6);
  }

  if (a1 == 2)
  {
    *(v1 + v3) = _swiftEmptyArrayStorage;
  }

  return result;
}

unint64_t sub_100524224()
{
  result = qword_10093D290;
  if (!qword_10093D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093D290);
  }

  return result;
}

char *sub_100524278(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_100747424();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100750534();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView;
  if (qword_100920F08 != -1)
  {
    swift_once();
  }

  v20 = sub_10000D0FC(v15, qword_100980A68);
  (*(v16 + 16))(v18, v20, v15);
  if (qword_1009217C8 != -1)
  {
    swift_once();
  }

  v21 = sub_10000D0FC(v11, qword_10093D2A0);
  (*(v12 + 16))(v14, v21, v11);
  v22 = objc_allocWithZone(type metadata accessor for ArcadeLockupView(0));
  *&v5[v19] = sub_1004AE6A0(v18, v14, 0, 0.0, 0.0, 0.0, 0.0);
  v23 = OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_backgroundEffectView;
  if (qword_1009217D0 != -1)
  {
    swift_once();
  }

  *&v5[v23] = [objc_allocWithZone(UIVisualEffectView) initWithEffect:qword_10093D2B8];
  swift_weakInit();
  v24 = &v5[OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_impressionsUpdateBlock];
  *v24 = 0;
  v24[1] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_isExpanded] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_sizeCategory] = 7;
  v32.receiver = v5;
  v32.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v29 = v25;
  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_backgroundEffectView]];
  v30 = OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView;
  [*&v29[OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView] setClipsToBounds:1];
  [v29 addSubview:*&v29[v30]];

  return v29;
}

uint64_t sub_100524664()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100747424();
  sub_100039C50(v4, qword_10093D2A0);
  v18 = sub_10000D0FC(v4, qword_10093D2A0);
  v25[23] = &type metadata for Double;
  v25[24] = &protocol witness table for Double;
  v25[19] = &protocol witness table for Double;
  v25[20] = 0x4053800000000000;
  v25[18] = &type metadata for Double;
  v25[15] = 0x4024000000000000;
  v25[13] = &type metadata for Double;
  v25[14] = &protocol witness table for Double;
  v25[9] = &protocol witness table for Double;
  v25[10] = 0x4034000000000000;
  v25[8] = &type metadata for Double;
  v25[5] = 0x402C000000000000;
  if (qword_100920F08 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v16 = sub_10000D0FC(v5, qword_100980A68);
  v6 = *(v5 - 8);
  v15 = *(v6 + 16);
  v17 = v6 + 16;
  v15(v3, v16, v5);
  v14 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3);
  v7 = sub_100750B04();
  v25[3] = v7;
  v25[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v25);
  v23 = v0;
  v24 = &protocol witness table for FontSource;
  v8 = sub_10000D134(v22);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_100750B14();
  v10 = v1[1];
  v10(v3, v0);
  v15(v3, v16, v5);
  (v13)(v3, v14, v0);
  v23 = v7;
  v24 = &protocol witness table for StaticDimension;
  sub_10000D134(v22);
  v20 = v0;
  v21 = &protocol witness table for FontSource;
  v11 = sub_10000D134(v19);
  v9(v11, v3, v0);
  sub_100750B14();
  v10(v3, v0);
  v21 = &protocol witness table for Double;
  v20 = &type metadata for Double;
  v19[0] = 0x4020000000000000;
  return sub_100747404();
}

id sub_1005249C8()
{
  result = [objc_opt_self() effectWithStyle:9];
  qword_10093D2B8 = result;
  return result;
}

void sub_100524B40()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_backgroundEffectView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView;
  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView];
  sub_1007477B4();
  [v3 sizeThatFits:{v4, v5}];
  v7 = v6;
  v9 = v8;

  v10 = *&v0[v2];
  sub_1007477B4();
  MinX = CGRectGetMinX(v17);
  sub_1007477B4();
  [v10 setFrame:{MinX, CGRectGetMidY(v18) + v9 * -0.5, v7, v9}];

  v12 = &v0[OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_impressionsUpdateBlock];
  swift_beginAccess();
  v13 = *v12;
  if (*v12)
  {
    v14 = *(v12 + 1);

    v13(v15);
    sub_1000164A8(v13, v14);
  }
}

void sub_100524CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v4 - 8);
  v6 = &v24[-v5 - 8];
  v7 = sub_100752914();
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
      sub_10000C824(a3, v24);
      sub_10000C518(&qword_1009242A0, &qword_1007A6400);
      sub_10074FBB4();
      if ((swift_dynamicCast() & 1) != 0 && (v13 = sub_10074FBA4(), , v13))
      {
        sub_10074CA84();
        if (swift_dynamicCastClass())
        {
          sub_10074CA74();
          sub_100743D74();

          if ((*(v8 + 48))(v6, 1, v7) == 1)
          {

            sub_10045862C(v6);
          }

          else
          {
            (*(v8 + 32))(v10, v6, v7);
            [*&v12[OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView] frame];
            v15 = v14;
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v22 = [v12 superview];
            [v12 convertRect:v22 toView:{v15, v17, v19, v21}];

            sub_100749544();

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

double sub_100525144(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();

  return result;
}

void (*sub_1005251A4(uint64_t *a1))(void **a1, char a2, __n128 a3)
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
  v5 = OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100091CAC;
}

uint64_t sub_10052523C()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001B5AC(*v1, v1[1]);
  return v2;
}

double sub_100525298(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000164A8(v6, v7);
}

void (*sub_100525358(uint64_t a1, uint64_t a2))()
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  swift_weakInit();
  sub_10000C824(a1, v7);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  sub_100012160(v7, v5 + 32);
  return sub_1005256F0;
}

unint64_t sub_100525424(__n128 a1)
{
  result = qword_10093D318;
  if (!qword_10093D318)
  {
    sub_10074CA84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093D318);
  }

  return result;
}

double sub_10052547C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v7 = a5;
  v8 = v5[OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_sizeCategory];
  v5[OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_sizeCategory] = a5;
  if (a5 == 7)
  {
    if (v8 == 7)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v5 setNeedsLayout];
    goto LABEL_6;
  }

  if (v8 == 7)
  {
    goto LABEL_5;
  }

  switch(a5)
  {
    case 6u:
      if (v8 != 6)
      {
        goto LABEL_5;
      }

      break;
    case 5u:
      if (v8 != 5)
      {
        goto LABEL_5;
      }

      break;
    case 4u:
      if (v8 != 4)
      {
        goto LABEL_5;
      }

      break;
    default:
      if (v8 != a5 || (v8 - 7) >= 0xFFFFFFFD)
      {
        goto LABEL_5;
      }

      break;
  }

LABEL_6:
  v9 = [v5 traitCollection];
  if (v7 != 4)
  {
    sub_10074F694();
    sub_10074F694();
  }

  [v9 layoutDirection];
  sub_1007539B4();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [v5 setLayoutMargins:{v11, v13, v15, v17}];
  v18 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView];
  v19 = sub_10074CA74();
  sub_100117C00(v19, a2);

  return result;
}

uint64_t sub_100525638()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100525670()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1005256A8()
{

  sub_10000C620((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

void sub_1005256FC()
{
  v1 = v0;
  v2 = sub_100747424();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100750534();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView;
  if (qword_100920F08 != -1)
  {
    swift_once();
  }

  v11 = sub_10000D0FC(v6, qword_100980A68);
  (*(v7 + 16))(v9, v11, v6);
  if (qword_1009217C8 != -1)
  {
    swift_once();
  }

  v12 = sub_10000D0FC(v2, qword_10093D2A0);
  (*(v3 + 16))(v5, v12, v2);
  v13 = objc_allocWithZone(type metadata accessor for ArcadeLockupView(0));
  *(v1 + v10) = sub_1004AE6A0(v9, v5, 0, 0.0, 0.0, 0.0, 0.0);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_backgroundEffectView;
  if (qword_1009217D0 != -1)
  {
    swift_once();
  }

  *(v1 + v14) = [objc_allocWithZone(UIVisualEffectView) initWithEffect:qword_10093D2B8];
  swift_weakInit();
  v15 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_impressionsUpdateBlock);
  *v15 = 0;
  v15[1] = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_isExpanded) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_sizeCategory) = 7;
  sub_100754644();
  __break(1u);
}

double sub_1005259EC()
{
  v0 = sub_100747C14();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746884();
  v4 = sub_100525B14();
  (*(v1 + 8))(v3, v0);
  return v4;
}

double sub_100525B14()
{
  v0 = sub_10074EAB4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  v7 = sub_10074F704();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747B84();
  sub_10074F674();
  (*(v8 + 8))(v10, v7);
  sub_100747BD4();
  sub_10074EA74();
  sub_100525E38(&unk_100925360, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v11 = sub_100754324();
  v12 = *(v1 + 8);
  v12(v3, v0);
  v12(v6, v0);
  if (v11)
  {
    if (qword_100920980 != -1)
    {
      swift_once();
    }

    v13 = qword_10097FB10;
  }

  else
  {
    if (qword_100920988 != -1)
    {
      swift_once();
    }

    v13 = qword_10097FB28;
  }

  v14 = sub_100743424();
  sub_10000D0FC(v14, v13);
  sub_100747BA4();
  sub_100743444();
  sub_100525E38(&qword_100926410, &type metadata accessor for BrickLayout, &protocol conformance descriptor for BrickLayout);
  sub_100750D34();
  v16 = v15;
  swift_unknownObjectRelease();
  return v16;
}

uint64_t sub_100525E38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100525E84()
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
  qword_10093D3D0 = v39;
  return result;
}

void sub_1005268A0(char a1)
{
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_isTransitioning) = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((swift_isaMask & *Strong) + 0xC8))(a1 & 1);
  }
}

void sub_100526950(uint64_t a1, uint64_t a2, char a3)
{
  v6 = v3 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkSize;
  *v6 = a1;
  *(v6 + 8) = a2;
  v7 = a3 & 1;
  *(v6 + 16) = a3 & 1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*((swift_isaMask & *Strong) + 0xF8))(a1, a2, v7);
  }
}

void sub_100526A24(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkLayoutWithMetrics) = a1;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *((swift_isaMask & *Strong) + 0x110);
    v5 = Strong;

    v3(v4);
  }
}

void sub_100526AF4(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_sizeCategory) = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((swift_isaMask & *Strong) + 0x128))(a1);
  }
}

uint64_t sub_100526BAC(uint64_t a1)
{
  v3 = sub_10000C518(&unk_100926C40, qword_1007B9FE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_pageGrid;
  swift_beginAccess();
  sub_10020FB98(a1, v1 + v6);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_100016B4C(v1 + v6, v5, &unk_100926C40, qword_1007B9FE0);
    (*((swift_isaMask & *v8) + 0x140))(v5);
  }

  return sub_10000C8CC(a1, &unk_100926C40, qword_1007B9FE0);
}

double sub_100526D00(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    if (v6 != Strong)
    {
      v7 = *(v4 + 8);
      swift_getObjectType();
      v8 = [*(v2 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_imageView) image];
      (*(v7 + 8))();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      goto LABEL_7;
    }

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
LABEL_7:

  swift_unknownObjectRelease();
  return result;
}

void sub_100526E10(__n128 a1)
{
  v2 = sub_10074DAE4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v44 - v7;
  v9 = sub_10000C518(&unk_100926C40, qword_1007B9FE0);
  __chkstk_darwin(v9 - 8);
  v11 = &v44 - v10;
  v12 = sub_10074F704();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v1[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkSize];
  if ((v1[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkSize + 16] & 1) == 0 && *&v1[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkLayoutWithMetrics])
  {
    v44 = v3;
    v18 = *v16;
    v17 = v16[1];
    v19 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_pageGrid;
    swift_beginAccess();
    sub_100016B4C(&v1[v19], v11, &unk_100926C40, qword_1007B9FE0);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_10000C8CC(v11, &unk_100926C40, qword_1007B9FE0);
    }

    else
    {
      (*(v13 + 32))(v15, v11, v12);
      v20 = v1[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_sizeCategory];
      if (v20 != 7)
      {

        v21 = v1;
        v22.n128_f64[0] = sub_1006E88C4(v20);
        v23 = v44;
        v24 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
        v25 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
        if (v20 != 6)
        {
          v25 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
        }

        if (v20 != 4)
        {
          v24 = v25;
        }

        (*(v44 + 104))(v5, *v24, v2, v22);
        (*(v23 + 32))(v8, v5, v2);
        v26 = sub_1007532B4();

        (*(v23 + 8))(v8, v2);
        v27 = v21[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_isExpanded];
        [v21 bounds];
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;
        v36 = [v21 traitCollection];
        v37 = sub_1005824A4(v36, v29, v31, v33, v35, v18, v17, v26, v27);
        v39 = v38;
        v41 = v40;
        v43 = v42;

        [*&v21[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_imageView] setFrame:{v37, v39, v41, v43}];
      }

      (*(v13 + 8))(v15, v12);
    }
  }
}

char *sub_100527228(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_isExpanded] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_isTransitioning] = 0;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_imageView;
  *&v4[v9] = [objc_allocWithZone(UIImageView) init];
  v10 = &v4[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkSize];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkLayoutWithMetrics] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_sizeCategory] = 7;
  v11 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_pageGrid;
  v12 = sub_10074F704();
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_currentArtworkTemplate;
  v14 = sub_10074F164();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_currentArtworkHandlerKey;
  v16 = sub_100741494();
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_mirrorDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v24.receiver = v4;
  v24.super_class = type metadata accessor for RevealingImageView(0);
  v17 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  v18 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_imageView;
  v19 = *&v17[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_imageView];
  v20 = v17;
  [v19 setContentMode:2];
  v21 = *&v17[v18];
  v22 = v20;
  [v22 addSubview:v21];
  [v22 setClipsToBounds:1];

  return v22;
}

void sub_1005274D4(void *a1)
{
  v3 = sub_10000C518(&unk_100926C40, qword_1007B9FE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (Strong == a1)
    {
    }

    else
    {
      v7 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_imageView);
      v8 = Strong;
      v9 = [v7 image];
      v10 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkSize);
      v11 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkSize + 8);
      v12 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkSize + 16);
      v13 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkLayoutWithMetrics);
      v14 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_pageGrid;
      swift_beginAccess();
      sub_100016B4C(v1 + v14, v5, &unk_100926C40, qword_1007B9FE0);
      v15 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_sizeCategory);

      sub_100527FD0(v9, v10, v11, v12, v13, v5, v15);

      sub_10000C8CC(v5, &unk_100926C40, qword_1007B9FE0);
    }
  }
}

void sub_1005276FC(void *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v50 = a10;
  v16 = sub_10000C518(&unk_100926C40, qword_1007B9FE0);
  __chkstk_darwin(v16 - 8);
  v51 = &v46 - v17;
  v18 = sub_100741494();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v49 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000C518(&qword_100925B78, &qword_1007A9618);
  __chkstk_darwin(v21);
  v23 = &v46 - v22;
  v24 = sub_10000C518(&qword_100925B80, &qword_1007A9620);
  __chkstk_darwin(v24 - 8);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v46 - v28;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    if (!a1)
    {

      return;
    }

    v47 = a9;
    v48 = a1;
    v32 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_currentArtworkHandlerKey;
    swift_beginAccess();
    (*(v19 + 16))(v29, a8, v18);
    (*(v19 + 56))(v29, 0, 1, v18);
    v33 = *(v21 + 48);
    sub_100016B4C(v31 + v32, v23, &qword_100925B80, &qword_1007A9620);
    sub_100016B4C(v29, &v23[v33], &qword_100925B80, &qword_1007A9620);
    v34 = *(v19 + 48);
    if (v34(v23, 1, v18) == 1)
    {
      v35 = v48;
      v36 = v48;
      sub_10000C8CC(v29, &qword_100925B80, &qword_1007A9620);
      if (v34(&v23[v33], 1, v18) == 1)
      {
        sub_10000C8CC(v23, &qword_100925B80, &qword_1007A9620);
LABEL_11:
        v42 = sub_10074F704();
        v43 = *(v42 - 8);
        v44 = v51;
        (*(v43 + 16))(v51, v50, v42);
        (*(v43 + 56))(v44, 0, 1, v42);
        v45 = v35;
        sub_100527FD0(v35, *&a2, *&a3, 0, v47, v44, a11);

        sub_10000C8CC(v44, &unk_100926C40, qword_1007B9FE0);
        return;
      }

LABEL_9:
      sub_10000C8CC(v23, &qword_100925B78, &qword_1007A9618);

      return;
    }

    sub_100016B4C(v23, v26, &qword_100925B80, &qword_1007A9620);
    v37 = v34(&v23[v33], 1, v18);
    v35 = v48;
    if (v37 == 1)
    {
      v38 = v48;
      sub_10000C8CC(v29, &qword_100925B80, &qword_1007A9620);
      (*(v19 + 8))(v26, v18);
      goto LABEL_9;
    }

    v39 = v49;
    (*(v19 + 32))(v49, &v23[v33], v18);
    sub_100528548();
    v46 = v35;
    v40 = sub_100753014();
    v41 = *(v19 + 8);
    v41(v39, v18);
    sub_10000C8CC(v29, &qword_100925B80, &qword_1007A9620);
    v41(v26, v18);
    v35 = v48;
    sub_10000C8CC(v23, &qword_100925B80, &qword_1007A9620);
    if (v40)
    {
      goto LABEL_11;
    }
  }
}

id sub_100527C88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RevealingImageView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RevealingImageView(uint64_t a1)
{
  result = qword_10093D440;
  if (!qword_10093D440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100527DE0(uint64_t a1)
{
  sub_100527F7C(319, qword_1009265D0, &type metadata accessor for PageGrid);
  if (v1 <= 0x3F)
  {
    sub_100527F7C(319, &qword_100937E60, &type metadata accessor for Artwork.URLTemplate);
    if (v2 <= 0x3F)
    {
      sub_100527F7C(319, &unk_10093D450, &type metadata accessor for UUID);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100527F7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100754284();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100527FD0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v48 = a4;
  v15 = sub_10000C518(&unk_100926C40, qword_1007B9FE0);
  *&v16 = __chkstk_darwin(v15 - 8).n128_u64[0];
  v18 = &v44 - v17;
  v19 = *(v8 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_imageView);
  v45 = a1;
  v46 = v19;
  [v19 setImage:{a1, v16}];
  v47 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkLayoutWithMetrics;
  *(v8 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkLayoutWithMetrics) = a5;

  v20 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_mirrorDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v23 = *((swift_isaMask & *Strong) + 0x110);
    v44 = v20;
    swift_bridgeObjectRetain_n();
    v23(a5);
  }

  else
  {
  }

  v24 = v8 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkSize;
  *v24 = a2;
  *(v24 + 8) = a3;
  v25 = v48 & 1;
  *(v24 + 16) = v48 & 1;
  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = v26;
    (*((swift_isaMask & *v26) + 0xF8))(a2, a3, v25);
  }

  sub_100016B4C(a6, v18, &unk_100926C40, qword_1007B9FE0);
  sub_100526BAC(v18);
  v28 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_sizeCategory;
  *(v8 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_sizeCategory) = a7;
  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    v30 = v29;
    (*((swift_isaMask & *v29) + 0x128))(a7);
  }

  v31 = v8 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v32 = *(v31 + 8);
    ObjectType = swift_getObjectType();
    (*(v32 + 8))(v45, ObjectType, v32);
    swift_unknownObjectRelease();
  }

  v34 = swift_unknownObjectWeakLoadStrong();
  if (v34)
  {
    v36 = v34;
    v37 = [v46 image];
    v38 = *v24;
    v39 = *(v24 + 8);
    v40 = *(v24 + 16);
    v41 = *(v8 + v47);
    v42 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_pageGrid;
    swift_beginAccess();
    sub_100016B4C(v8 + v42, v18, &unk_100926C40, qword_1007B9FE0);
    v43 = *(v8 + v28);

    sub_100527FD0(v37, v38, v39, v40, v41, v18, v43);

    sub_10000C8CC(v18, &unk_100926C40, qword_1007B9FE0);
  }

  sub_100526E10(v35);
}

void sub_100528370()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_isTransitioning) = 0;
  v1 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_imageView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  v2 = v0 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkSize;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkLayoutWithMetrics) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_sizeCategory) = 7;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_pageGrid;
  v4 = sub_10074F704();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_currentArtworkTemplate;
  v6 = sub_10074F164();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_currentArtworkHandlerKey;
  v8 = sub_100741494();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_mirrorDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_100754644();
  __break(1u);
}

unint64_t sub_100528548()
{
  result = qword_100925B88;
  if (!qword_100925B88)
  {
    sub_100741494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100925B88);
  }

  return result;
}

id sub_1005285A0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16StandardLinkView_descriptionLabel];
  sub_1007443F4();
  if (v3)
  {
    v4 = sub_100753064();
  }

  else
  {
    v4 = 0;
  }

  [v2 setText:v4];

  v5 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16StandardLinkView_summaryLabel];
  sub_1007443E4();
  if (v6)
  {
    v7 = sub_100753064();
  }

  else
  {
    v7 = 0;
  }

  [v5 setText:v7];

  return [v1 setNeedsLayout];
}

unint64_t sub_1005286D0(void *a1, __n128 a2)
{
  v55 = sub_1007484E4();
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v56 = v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100748504();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_10074CD14();
  v8 = *(v67 - 8);
  __chkstk_darwin(v67);
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074F704();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007445F4();
  sub_1005290F8(&qword_10093C510, &type metadata accessor for PrivacyHeader, &protocol conformance descriptor for PrivacyHeader);
  result = sub_1007468B4();
  v57 = v77;
  if (v77)
  {
    v52 = v5;
    swift_getKeyPath();
    sub_100746914();

    sub_10074F674();
    (*(v12 + 8))(v14, v11);
    sub_100038D38();
    if (qword_100921240 != -1)
    {
      swift_once();
    }

    v51 = v7;
    v16 = sub_100750534();
    sub_10000D0FC(v16, qword_1009813F8);
    swift_getKeyPath();
    sub_100746914();

    v17 = v77;
    v18 = sub_100753C14();

    sub_1007445E4();
    sub_100743E94();

    v19 = sub_100743074();

    v20 = sub_10074F3F4();
    v78 = v20;
    v64 = sub_1005290F8(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v79 = v64;
    v21 = sub_10000D134(&v77);
    v22 = *(v20 - 8);
    v23 = *(v22 + 104);
    v63 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v62 = v23;
    v61 = v22 + 104;
    v23(v21);
    v24 = v19;
    v25 = v18;
    sub_10074FC74();
    sub_10000C620(&v77);
    v66 = v25;
    sub_10074CCD4();
    sub_10074CCE4();
    v26 = *(v8 + 8);
    v65 = v8 + 8;
    v60 = v26;
    v26(v10, v67);
    result = sub_1007445D4();
    v27 = result;
    if (result >> 62)
    {
      v49 = result;
      result = sub_100754664();
      v27 = v49;
      v28 = result;
    }

    else
    {
      v28 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v50[1] = a1;
    v53 = v4;
    v50[0] = v24;
    if (v28)
    {
      if (v28 < 1)
      {
        __break(1u);
        return result;
      }

      v29 = 0;
      v58 = v27 & 0xC000000000000001;
      v30 = _swiftEmptyArrayStorage;
      v59 = v27;
      do
      {
        if (v58)
        {
          sub_100754574();
        }

        else
        {
        }

        sub_10074CFD4();
        sub_100743E94();

        v31 = v66;
        v32 = sub_100743074();

        v75 = v20;
        v76 = v64;
        v33 = sub_10000D134(v74);
        v62(v33, v63, v20);
        v34 = v31;
        v35 = v32;
        sub_10074FC74();
        sub_10000C620(v74);
        sub_10074CCD4();
        sub_10074CCE4();
        v60(v10, v67);
        sub_10000C824(v74, &v71);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_100254FA8(0, v30[2] + 1, 1, v30);
        }

        v37 = v30[2];
        v36 = v30[3];
        if (v37 >= v36 >> 1)
        {
          v30 = sub_100254FA8((v36 > 1), v37 + 1, 1, v30);
        }

        ++v29;

        sub_10000C620(v74);
        v30[2] = v37 + 1;
        sub_100032CCC(&v71, &v30[5 * v37 + 4]);
      }

      while (v28 != v29);
    }

    else
    {
      v30 = _swiftEmptyArrayStorage;
    }

    swift_getKeyPath();
    sub_100746914();

    v38 = v74[0];
    sub_100751364();

    v39 = sub_100750F34();
    swift_allocObject();
    v40 = sub_100750F14();
    if (qword_100920B80 != -1)
    {
      swift_once();
    }

    v41 = v55;
    v42 = sub_10000D0FC(v55, qword_100980170);
    (*(v54 + 16))(v56, v42, v41);
    sub_1007445C4();
    v43 = v78;
    v44 = v79;
    v45 = sub_10000C888(&v77, v78);
    v75 = v43;
    v76 = *(v44 + 8);
    v46 = sub_10000D134(v74);
    (*(*(v43 - 8) + 16))(v46, v45, v43);
    sub_100157548(v30);

    v72 = v39;
    v73 = &protocol witness table for LayoutViewPlaceholder;
    v70 = &protocol witness table for LayoutViewPlaceholder;
    *&v71 = v40;
    v69 = v39;
    v68 = v40;
    swift_retain_n();
    v47 = v51;
    sub_1007484F4();
    swift_getKeyPath();
    sub_100746914();

    sub_1005290F8(&unk_1009332B0, &type metadata accessor for PrivacyHeaderLayout, &protocol conformance descriptor for PrivacyHeaderLayout);
    v48 = v53;
    sub_100750404();

    swift_unknownObjectRelease();

    (*(v52 + 8))(v47, v48);
    return sub_10000C620(&v77);
  }

  return result;
}

uint64_t sub_1005290F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100529140(uint64_t a1, uint64_t a2)
{
  v118 = a2;
  v123 = a1;
  v3 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v3 - 8);
  v115 = v106 - v4;
  v5 = sub_10000C518(&qword_10093D4E0, &unk_1007B6390);
  __chkstk_darwin(v5 - 8);
  v7 = v106 - v6;
  v8 = sub_100744574();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v122 = v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v114 = v106 - v12;
  __chkstk_darwin(v13);
  v116 = v106 - v14;
  __chkstk_darwin(v15);
  v117 = v106 - v16;
  __chkstk_darwin(v17);
  v119 = v106 - v18;
  v19 = sub_10000C518(&qword_10092FD68, &unk_1007B6380);
  __chkstk_darwin(v19 - 8);
  v113 = v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v106 - v22;
  __chkstk_darwin(v24);
  v26 = v106 - v25;
  __chkstk_darwin(v27);
  v29 = v106 - v28;
  __chkstk_darwin(v30);
  v120 = v106 - v31;
  v121 = OBJC_IVAR____TtC22SubscribePageExtension29TabChangeActionImplementation_rootTabBarController;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v33 = [Strong tabBar];

  v34 = [v33 items];
  if (!v34)
  {
    goto LABEL_12;
  }

  v109 = v7;
  sub_100016C60(0, &unk_1009403B0, UITabBarItem_ptr);
  v35 = sub_1007532A4();

  if ((sub_1007532D4() & 1) == 0)
  {

LABEL_12:
    sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
    v45 = v122;
    sub_1007457F4();
    v46 = sub_100744564();
    v48 = v47;
    (*(v9 + 8))(v45, v8);
    sub_10052AB0C();
    swift_allocError();
    *v49 = v46;
    v49[1] = v48;
    return sub_100752D74();
  }

  v36 = *(v9 + 56);
  v111 = v8;
  v36(v120, 1, 1, v8);
  v37 = swift_unknownObjectUnownedLoadStrong();
  v38 = [v37 selectedIndex];

  v112 = v9;
  v110 = v35;
  v107 = v35 >> 62;
  if (v35 >> 62)
  {
    v39 = sub_100754664();
  }

  else
  {
    v39 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = swift_unknownObjectUnownedLoadStrong();
  v41 = [v40 selectedIndex];

  if (v38 < v39)
  {
    v42 = v112;
    if ((v110 & 0xC000000000000001) == 0)
    {
      v43 = v120;
      if ((v41 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v41 < *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v44 = *(v110 + 8 * v41 + 32);
LABEL_10:
        [v44 tag];

        sub_100744544();
        v41 = v111;
        goto LABEL_15;
      }

      __break(1u);
      goto LABEL_61;
    }

    v44 = sub_100754574();
    v43 = v120;
    goto LABEL_10;
  }

  sub_100744544();
  v29 = v26;
  v41 = v111;
  v42 = v112;
  v43 = v120;
LABEL_15:
  sub_10000C8CC(v43, &qword_10092FD68, &unk_1007B6380);
  sub_10052AEC0(v29, v43);
  sub_10052AA9C(v43, v23);
  v39 = *(v42 + 48);
  if (v39(v23, 1, v41) == 1)
  {

    sub_10000C8CC(v23, &qword_10092FD68, &unk_1007B6380);
    sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
    v51 = v122;
    sub_1007457F4();
    v52 = sub_100744564();
    v54 = v53;
    (*(v42 + 8))(v51, v41);
    sub_10052AB0C();
    swift_allocError();
    *v55 = v52;
    v55[1] = v54;
    v56 = sub_100752D74();
    sub_10000C8CC(v43, &qword_10092FD68, &unk_1007B6380);
    return v56;
  }

  v108 = v2;
  v57 = *(v42 + 32);
  v58 = v119;
  v106[1] = v42 + 32;
  v106[0] = v57;
  v57(v119, v23, v41);
  v59 = v116;
  sub_1007457F4();
  v60 = (*(v42 + 88))(v59, v41);
  if (v60 == enum case for NavigationTab.infer(_:))
  {
    v61 = v122;
    v116 = *(v42 + 104);
    (v116)(v122, enum case for NavigationTab.search(_:), v41);
    v62 = sub_100744534();
    v63 = v41;
    v64 = *(v42 + 8);
    v64(v61, v41);
    if ((v62 & 1) == 0)
    {
      v61 = v122;
      (v116)(v122, enum case for NavigationTab.loading(_:), v41);
      v62 = sub_100744534();
      v64(v61, v41);
      if ((v62 & 1) == 0)
      {
        v70 = v114;
        (v116)(v114, enum case for NavigationTab.selected(_:), v41);
        v42 = v117;
        v67 = v118;
        v72 = v106[0];
LABEL_34:
        v72(v42, v70, v41);
        v66 = v112;
        goto LABEL_35;
      }
    }

    v42 = v117;
    if (v107)
    {
      v62 = v110;
      result = sub_100754664();
      v65 = v62;
    }

    else
    {
      v65 = v110;
      result = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v41 = v111;
    v2 = v113;
    if (result)
    {
      if ((v65 & 0xC000000000000001) == 0)
      {
        if (!*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_64;
        }

        v68 = *(v65 + 32);
        goto LABEL_31;
      }

LABEL_62:
      v68 = sub_100754574();
LABEL_31:
      v69 = v68;
      [v68 tag];
      sub_100744544();

      result = (v39)(v2, 1, v41);
      if (result == 1)
      {
LABEL_67:
        __break(1u);
        return result;
      }

      v70 = v114;
      v71 = v2;
      v72 = v106[0];
      (v106[0])(v114, v71, v41);
      v67 = v118;
      goto LABEL_34;
    }

LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v60 == enum case for NavigationTab.selected(_:))
  {
    v66 = v112;
    v42 = v117;
    (*(v112 + 16))(v117, v58, v41);
  }

  else
  {
    v42 = v117;
    sub_1007457F4();
    v66 = v112;
    (*(v112 + 8))(v59, v41);
  }

  v67 = v118;
LABEL_35:
  sub_100745584();
  sub_100745564();
  sub_100744524();
  sub_1007454D4();

  v73 = [objc_opt_self() standardUserDefaults];
  v63 = *(v66 + 16);
  v63(v122, v42, v41);
  v74 = v109;
  sub_100742984();
  sub_1006FE868(v74);

  sub_100742B14();
  sub_100752754();
  v75 = aBlock[0];
  if (aBlock[0])
  {
    sub_100742AF4();
  }

  sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
  v116 = sub_100752DE4();
  v76 = swift_unknownObjectUnownedLoadStrong();
  v61 = [v76 presentedViewController];

  if (!v61)
  {
    goto LABEL_40;
  }

  if ([v61 isBeingDismissed])
  {

LABEL_40:
    v77 = sub_100745814();
    v78 = sub_100745804();
    sub_10052A0E8(v42, v110, v77 & 1, v78, v67);

    v79 = v116;
    sub_100752D54();

    v80 = v111;
    v81 = *(v112 + 8);
    v81(v42, v111);
    v81(v119, v80);
    sub_10000C8CC(v120, &qword_10092FD68, &unk_1007B6380);
    return v79;
  }

  sub_100744AC4();
  sub_100752764();
  sub_100752D34();
  v64 = aBlock[0];
  type metadata accessor for ArticleContainerViewController();
  v62 = swift_dynamicCastClass();
  result = sub_100745804();
  if (!(result >> 62))
  {
    v82 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_43;
  }

LABEL_64:
  v105 = result;
  v82 = sub_100754664();
  result = v105;
LABEL_43:
  v83 = v111;
  v84 = v115;
  if (!v82)
  {

    goto LABEL_51;
  }

  v114 = v62;
  if ((result & 0xC000000000000001) != 0)
  {
    v85 = v64;
    sub_100754574();
    goto LABEL_47;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_67;
  }

  v85 = v64;

LABEL_47:

  sub_100742CD4();
  if (swift_dynamicCastClass())
  {
    sub_100742CB4();

    v83 = v111;
    v64 = v85;
    v62 = v114;
    goto LABEL_52;
  }

  v83 = v111;
  v64 = v85;
  v62 = v114;
LABEL_51:
  v86 = sub_100741264();
  (*(*(v86 - 8) + 56))(v84, 1, 1, v86);
LABEL_52:
  v87 = sub_10074C4A4();
  if (v62 && (v87 & 1) != 0)
  {
    v88 = sub_100745814();
    v89 = sub_100745804();
    sub_10052A0E8(v42, v110, v88 & 1, v89, v118);

    sub_100752D54();

    v90 = v42;
    v91 = v112;
  }

  else
  {
    v114 = swift_unknownObjectUnownedLoadStrong();
    v92 = v122;
    v63(v122, v42, v83);
    v91 = v112;
    v93 = (*(v112 + 80) + 24) & ~*(v112 + 80);
    v121 = v64;
    v94 = (v10 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
    v95 = (v94 + 15) & 0xFFFFFFFFFFFFFFF8;
    v96 = (v95 + 15) & 0xFFFFFFFFFFFFFFF8;
    v97 = swift_allocObject();
    v98 = v83;
    v99 = v97;
    v100 = v108;
    *(v97 + 16) = v108;
    (v106[0])(v97 + v93, v92, v98);
    *(v99 + v94) = v110;
    *(v99 + v95) = v123;
    *(v99 + v96) = v118;
    *(v99 + ((v96 + 15) & 0xFFFFFFFFFFFFFFF8)) = v116;
    aBlock[4] = sub_10052B048;
    aBlock[5] = v99;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CF7B0;
    aBlock[3] = &unk_100879F80;
    v101 = _Block_copy(aBlock);
    v102 = v100;
    v83 = v111;

    v90 = v117;

    v103 = v114;
    [v114 dismissViewControllerAnimated:1 completion:v101];
    _Block_release(v101);
  }

  sub_10000C8CC(v115, &unk_100923970, &qword_1007A6B90);
  v104 = *(v91 + 8);
  v104(v90, v83);
  v104(v119, v83);
  sub_10000C8CC(v120, &qword_10092FD68, &unk_1007B6380);
  return v116;
}

double sub_10052A048(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_100745814();
  v10 = sub_100745804();
  sub_10052A0E8(a2, a3, v9 & 1, v10, a5);

  sub_100752D54();

  return result;
}

uint64_t sub_10052A0E8(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v54 = a3;
  v10 = sub_100752614();
  __chkstk_darwin(v10 - 8);
  v55 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_10000C518(&qword_10093D4B0, &qword_1007C87E0);
  __chkstk_darwin(v72);
  v13 = v53 - v12;
  v14 = sub_10000C518(&qword_10092FD68, &unk_1007B6380);
  __chkstk_darwin(v14 - 8);
  v65 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v76 = v53 - v17;
  __chkstk_darwin(v18);
  v66 = v53 - v19;
  v20 = sub_100744574();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 104))(v24, enum case for NavigationTab.loading(_:), v20, v22);
  v73 = a1;
  v25 = sub_100744534();
  v26 = *(v21 + 8);
  v61 = v24;
  v63 = v26;
  v64 = v21 + 8;
  v26(v24, v20);
  v53[1] = OBJC_IVAR____TtC22SubscribePageExtension29TabChangeActionImplementation_rootTabBarController;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v28 = Strong;
  v56 = a4;
  v57 = a5;
  v60 = v5;
  if (v25)
  {
    v29 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension29TabChangeActionImplementation_loadingNavigationController);
    [Strong setTransientViewController:v29 animated:0];

    sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr);
    v30.super.isa = sub_100753294().super.isa;
    [v29 setViewControllers:v30.super.isa];
    goto LABEL_3;
  }

  [Strong setTransientViewController:0 animated:0];

  v74 = a2;
  if (a2 >> 62)
  {
LABEL_26:
    v31 = sub_100754664();
    v32 = v66;
    if (!v31)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v31 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v32 = v66;
    if (!v31)
    {
      goto LABEL_27;
    }
  }

  v33 = 0;
  v70 = v74 & 0xFFFFFFFFFFFFFF8;
  v71 = v74 & 0xC000000000000001;
  v68 = (v21 + 56);
  v69 = (v21 + 16);
  v34 = (v21 + 48);
  v58 = (v21 + 48);
  v59 = (v21 + 32);
  v67 = v31;
  while (v71)
  {
    v36 = sub_100754574();
    v37 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      goto LABEL_20;
    }

LABEL_13:
    v75 = v36;
    [v36 tag];
    sub_100744544();
    v38 = v76;
    (*v69)(v76, v73, v20);
    (*v68)(v38, 0, 1, v20);
    v21 = *(v72 + 48);
    sub_10052AA9C(v32, v13);
    sub_10052AA9C(v38, &v13[v21]);
    v39 = *v34;
    if ((*v34)(v13, 1, v20) == 1)
    {
      sub_10000C8CC(v76, &qword_10092FD68, &unk_1007B6380);
      sub_10000C8CC(v32, &qword_10092FD68, &unk_1007B6380);
      v35 = v39(&v13[v21], 1, v20);
      v24 = v75;
      if (v35 == 1)
      {
        goto LABEL_21;
      }

      goto LABEL_8;
    }

    v40 = v65;
    sub_10052AA9C(v13, v65);
    if (v39(&v13[v21], 1, v20) == 1)
    {
      sub_10000C8CC(v76, &qword_10092FD68, &unk_1007B6380);
      v21 = v66;
      sub_10000C8CC(v66, &qword_10092FD68, &unk_1007B6380);
      v41 = v40;
      v32 = v21;
      v63(v41, v20);
      v24 = v75;
LABEL_8:
      sub_10000C8CC(v13, &qword_10093D4B0, &qword_1007C87E0);
      goto LABEL_9;
    }

    v42 = v61;
    (*v59)(v61, &v13[v21], v20);
    sub_10052AE24(&unk_10093D4C0, &type metadata accessor for NavigationTab, &protocol conformance descriptor for NavigationTab);
    v62 = sub_100753014();
    v21 = v63;
    v63(v42, v20);
    sub_10000C8CC(v76, &qword_10092FD68, &unk_1007B6380);
    v43 = v66;
    sub_10000C8CC(v66, &qword_10092FD68, &unk_1007B6380);
    v44 = v40;
    v32 = v43;
    (v21)(v44, v20);
    v34 = v58;
    sub_10000C8CC(v13, &qword_10092FD68, &unk_1007B6380);
    v24 = v75;
    if (v62)
    {
      goto LABEL_22;
    }

LABEL_9:

    ++v33;
    if (v37 == v67)
    {
      goto LABEL_27;
    }
  }

  if (v33 >= *(v70 + 16))
  {
    __break(1u);
    goto LABEL_26;
  }

  v36 = *(v74 + 8 * v33 + 32);
  v37 = v33 + 1;
  if (!__OFADD__(v33, 1))
  {
    goto LABEL_13;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  sub_10000C8CC(v13, &qword_10092FD68, &unk_1007B6380);
LABEL_22:
  v45 = swift_unknownObjectUnownedLoadStrong();
  [v45 setSelectedIndex:v33];

  v30.super.isa = swift_unknownObjectUnownedLoadStrong();
  type metadata accessor for StoreTabBarController();
  if (swift_dynamicCastClass())
  {
    sub_1006F66C8(v33);

    v30.super.isa = v24;
  }

  else
  {
  }

LABEL_3:

LABEL_27:
  v46 = swift_unknownObjectUnownedLoadStrong();
  v47 = [v46 selectedViewController];

  if (v47)
  {
    if (v54)
    {
      objc_opt_self();
      v48 = swift_dynamicCastObjCClass();
      if (v48)
      {
      }
    }

    sub_1007525F4();
    sub_100744CB4();
    swift_allocObject();
    v49 = sub_100744C94();
    v50 = sub_10052AB90(v49, 1, v57, sub_1003C1694);

    return v50;
  }

  else
  {
    sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
    sub_10052AB0C();
    swift_allocError();
    *v52 = 0;
    v52[1] = 0;
    return sub_100752D74();
  }
}

id sub_10052A988()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TabChangeActionImplementation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10052AA9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_10092FD68, &unk_1007B6380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10052AB0C()
{
  result = qword_10093D4B8;
  if (!qword_10093D4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093D4B8);
  }

  return result;
}

uint64_t sub_10052AB90(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, uint64_t, char *))
{
  v8 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  sub_1007526C4();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000C8CC(v10, &unk_100923960, &qword_1007A6240);
    sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
    sub_10052AE6C();
    swift_allocError();
    *v15 = 1;
    return sub_100752D74();
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v17 = a4(a1, a2 & 1, a3, v14);
    (*(v12 + 8))(v14, v11);
    return v17;
  }
}

uint64_t sub_10052AE24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10052AE6C()
{
  result = qword_10093D4D0;
  if (!qword_10093D4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093D4D0);
  }

  return result;
}

uint64_t sub_10052AEC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_10092FD68, &unk_1007B6380);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10052AF30(__n128 a1)
{
  v2 = sub_100744574();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (((((((*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v6 + 8, v4 | 7);
}

double sub_10052B048(__n128 a1)
{
  v2 = *(sub_100744574() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + v4);
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10052A048(v7, v1 + v3, v8, v9, v10, v11);
}

double sub_10052B0FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10052B114(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10052B164(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10052B1B8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_10052B1D0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_10052B200()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata);
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata);
  v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata + 8);
  v4 = v2;
  if (v3 >> 60 == 15)
  {
    swift_unknownObjectWeakInit();
    v4 = sub_10052B2B8(v10);
    v6 = v5;
    swift_unknownObjectWeakDestroy();
    v7 = *v1;
    v8 = v1[1];
    *v1 = v4;
    v1[1] = v6;
    sub_10052BE30(v4, v6);
    sub_10052BE84(v7, v8);
  }

  sub_10052BE98(v2, v3);
  return v4;
}

void *sub_10052B2B8(uint64_t a1)
{
  v1 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v1 - 8);
  v3 = &v35 - v2;
  v4 = sub_100741264();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_10000C518(&qword_10092C1F8, &qword_1007B0C50);
    inited = swift_initStackObject();
    v35 = xmmword_1007A5A00;
    *(inited + 16) = xmmword_1007A5A00;
    *(inited + 32) = 1701667182;
    *(inited + 40) = 0xE400000000000000;
    v11 = sub_10074A834();
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v11;
    *(inited + 56) = v12;
    v13 = sub_100414AE8(inited);
    swift_setDeallocating();
    sub_10000C8CC(inited + 32, &qword_10092C200, &qword_1007B0C58);
    sub_10074A804();
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_10000C8CC(v3, &unk_100923970, &qword_1007A6B90);
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      v39 = v4;
      v14 = sub_10000D134(&v38);
      (*(v5 + 16))(v14, v7, v4);
      sub_10000C610(&v38, v37);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v13;
      sub_1006743B4(v37, 7107189, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
      (*(v5 + 8))(v7, v4);
      v13 = v36;
    }

    v16 = sub_10074A844();
    if (v17)
    {
      v39 = &type metadata for String;
      *&v38 = v16;
      *(&v38 + 1) = v17;
      sub_10000C610(&v38, v37);
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v36 = v13;
      sub_1006743B4(v37, 0x796E61706D6F63, 0xE700000000000000, v18);
      v13 = v36;
    }

    v19 = sub_10074A814();
    if (v20)
    {
      v39 = &type metadata for String;
      *&v38 = v19;
      *(&v38 + 1) = v20;
      sub_10000C610(&v38, v37);
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v36 = v13;
      sub_1006743B4(v37, 0x79726F6765746163, 0xE800000000000000, v21);
      v13 = v36;
    }

    v22 = sub_10074A824();
    if ((v23 & 1) == 0)
    {
      v39 = &type metadata for Int64;
      *&v38 = v22;
      sub_10000C610(&v38, v37);
      v24 = swift_isUniquelyReferenced_nonNull_native();
      v36 = v13;
      sub_1006743B4(v37, 0x7A69735F656C6966, 0xE900000000000065, v24);
      v13 = v36;
    }

    v25 = sub_10074A854();
    if (v26)
    {
      v39 = &type metadata for String;
      *&v38 = v25;
      *(&v38 + 1) = v26;
      sub_10000C610(&v38, v37);
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v36 = v13;
      sub_1006743B4(v37, 0x79745F616964656DLL, 0xEA00000000006570, v27);
    }

    v28 = objc_opt_self();
    isa = sub_100752F34().super.isa;

    *&v38 = 0;
    v30 = [v28 archivedDataWithRootObject:isa requiringSecureCoding:0 error:&v38];

    v31 = v38;
    if (v30)
    {
      v32 = sub_100741274();

      return v32;
    }

    else
    {
      v33 = v31;
      sub_100741134();

      swift_willThrow();
      if (qword_100921ED0 != -1)
      {
        swift_once();
      }

      v34 = sub_100752E44();
      sub_10000D0FC(v34, qword_1009832E8);
      sub_10000C518(&qword_100923930, &qword_1007A6B60);
      sub_100752454();
      *(swift_allocObject() + 16) = v35;
      sub_1007523A4();
      sub_100752D04();

      return 0;
    }
  }

  return result;
}

void sub_10052B978(uint64_t *a1@<X8>)
{
  v3 = [v1 activityType];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = sub_100753094();
  v7 = v6;
  if (v5 == sub_100753094() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_100754754();

    if ((v10 & 1) == 0)
    {

LABEL_8:
      a1[3] = &type metadata for String;
      *a1 = 0;
      a1[1] = 0xE000000000000000;
      return;
    }
  }

  v11 = sub_10052B200();
  v13 = v12;
  a1[3] = &type metadata for Data;

  *a1 = v11;
  a1[1] = v13;
}

void sub_10052BA74(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v3 = sub_100753094();
  v5 = v4;
  if (v3 == sub_100753094() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_100754754();

    if ((v8 & 1) == 0)
    {
LABEL_7:
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }
  }

  v9 = sub_10052B200();
  *(a2 + 24) = &type metadata for Data;
  *a2 = v9;
  *(a2 + 8) = v10;
}

id sub_10052BD88(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NotesMetadataActivityItemProvider();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_10052BE30(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

double sub_10052BE84(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100386870(a1, a2);
  }

  return result;
}

double sub_10052BE98(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10052BE30(a1, a2);
  }

  return result;
}

void *sub_10052BEAC(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = sub_100753094();
    v4 = v3;
    if (v2 == sub_100753094() && v4 == v5)
    {
      v9 = v1;
    }

    else
    {
      v7 = sub_100754754();
      v8 = v1;

      if ((v7 & 1) == 0)
      {

        return 0;
      }
    }

    return 0xD00000000000001ELL;
  }

  return result;
}

void *sub_10052BF94(char *a1, int *a2)
{
  v60 = sub_10000C518(&qword_10092C380, &unk_1007B0E90);
  __chkstk_darwin(v60);
  v61 = &v53 - v5;
  v6 = sub_10000C518(&unk_10093D6E0, &unk_1007A6080);
  __chkstk_darwin(v6 - 8);
  v58 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v57 = &v53 - v9;
  __chkstk_darwin(v10);
  v59 = &v53 - v11;
  v12 = sub_10000C518(&unk_100933370, &unk_1007A8CE0);
  __chkstk_darwin(v12 - 8);
  v56 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v62 = &v53 - v15;
  __chkstk_darwin(v16);
  v63 = &v53 - v17;
  v18 = sub_10074E984();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v54 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v53 - v22;
  v24 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v53 - v26;
  v55 = v2;
  v64 = sub_10049CD00(a1, a2);
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v28 = *(v25 + 8);
  v28(v27, v24);
  v29 = v19;
  v30 = (*(v19 + 88))(v23, v18);
  if (v30 == enum case for Shelf.ContentType.productRatings(_:))
  {
    v32 = v57;
    v31 = v58;
    sub_100747BB4();
    sub_10000C8CC(v32, &unk_10093D6E0, &unk_1007A6080);
    v33 = v59;
    sub_100028CD0(v31, v59);
    v34 = (*(v25 + 48))(v33, 1, v24);
    v58 = a1;
    if (v34 == 1)
    {
      sub_10000C8CC(v33, &unk_10093D6E0, &unk_1007A6080);
      v35 = 1;
      v36 = v29;
      v37 = v63;
    }

    else
    {
      swift_getKeyPath();
      v37 = v63;
      sub_1007525B4();

      v28(v33, v24);
      v35 = 0;
      v36 = v29;
    }

    v38 = v62;
    v39 = *(v36 + 56);
    v39(v37, v35, 1, v18);
    (*(v36 + 104))(v38, enum case for Shelf.ContentType.reviewSummary(_:), v18);
    v39(v38, 0, 1, v18);
    v40 = v61;
    v41 = *(v60 + 48);
    sub_100028D40(v37, v61);
    sub_100028D40(v38, v40 + v41);
    v42 = *(v36 + 48);
    if (v42(v40, 1, v18) == 1)
    {
      sub_10000C8CC(v38, &unk_100933370, &unk_1007A8CE0);
      sub_10000C8CC(v37, &unk_100933370, &unk_1007A8CE0);
      if (v42(v40 + v41, 1, v18) == 1)
      {
        sub_10000C8CC(v40, &unk_100933370, &unk_1007A8CE0);
LABEL_17:
        v43 = 28.0;
        v44 = 12.0;
        v45 = v58;
        v46 = 5;
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    v47 = v56;
    sub_100028D40(v40, v56);
    if (v42(v40 + v41, 1, v18) == 1)
    {
      sub_10000C8CC(v62, &unk_100933370, &unk_1007A8CE0);
      sub_10000C8CC(v63, &unk_100933370, &unk_1007A8CE0);
      (*(v36 + 8))(v47, v18);
LABEL_14:
      sub_10000C8CC(v40, &qword_10092C380, &unk_1007B0E90);
      return v64;
    }

    v48 = v40 + v41;
    v49 = v54;
    (*(v36 + 32))(v54, v48, v18);
    sub_10013DFA4();
    v50 = sub_100753014();
    v51 = *(v36 + 8);
    v51(v49, v18);
    sub_10000C8CC(v62, &unk_100933370, &unk_1007A8CE0);
    sub_10000C8CC(v63, &unk_100933370, &unk_1007A8CE0);
    v51(v47, v18);
    sub_10000C8CC(v40, &unk_100933370, &unk_1007A8CE0);
    if (v50)
    {
      goto LABEL_17;
    }
  }

  else if (v30 == enum case for Shelf.ContentType.productReview(_:))
  {
    sub_10052C6E0(&v64, a1);
  }

  else
  {
    if (v30 == enum case for Shelf.ContentType.productReviewAction(_:))
    {
      v43 = -24.0;
      v44 = -16.0;
      v45 = a1;
      v46 = 1;
LABEL_18:
      sub_10052D8D0(&v64, v43, v44, v45, v46);
      return v64;
    }

    (*(v19 + 8))(v23, v18);
  }

  return v64;
}

void sub_10052C6E0(unint64_t *a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = sub_10074C9A4();

    if (v5)
    {
      v6 = sub_100743814();
      Strong = v7;
    }

    else
    {
      v6 = 0;
      Strong = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  type metadata accessor for ProductReviewsShelfHeaderView();
  v8 = sub_1001D68B4(a2, v6, Strong);

  sub_1007539C4();
  v9 = sub_100753064();

  v39 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v8 elementKind:v9 alignment:1];

  v10 = *a1;
  v37 = *a1 >> 62;
  v38 = a1;
  if (v37)
  {
    goto LABEL_48;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
  v12 = 0;
  v13 = v10 & 0xC000000000000001;
  while (v11 != v12)
  {
    if (v13)
    {
      v14 = sub_100754574();
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v14 = *(v10 + 8 * v12 + 32);
    }

    v15 = v14;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      v11 = sub_100754664();
      goto LABEL_8;
    }

    v16 = [v14 elementKind];
    v17 = sub_100753094();
    v19 = v18;

    if (v17 == sub_100753094() && v19 == v20)
    {

LABEL_26:
      if (!v37)
      {
        v23 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v24 = v39;
        if (v23)
        {
          goto LABEL_28;
        }

LABEL_45:

        *v38 = _swiftEmptyArrayStorage;
        return;
      }

      v23 = sub_100754664();
      v24 = v39;
      if (!v23)
      {
        goto LABEL_45;
      }

LABEL_28:
      sub_1007545C4();
      if ((v23 & 0x8000000000000000) == 0)
      {
        v25 = 0;
        do
        {
          if (v13)
          {
            v29 = sub_100754574();
          }

          else
          {
            v29 = *(v10 + 8 * v25 + 32);
          }

          v30 = v29;
          v31 = [v29 elementKind];
          v32 = sub_100753094();
          v34 = v33;

          if (v32 == sub_100753094() && v34 == v35)
          {

            v27 = v24;
          }

          else
          {
            v26 = sub_100754754();

            if (v26)
            {
              v27 = v24;
            }

            else
            {
              v27 = v30;
            }
          }

          ++v25;
          v28 = v27;

          sub_1007545A4();
          sub_1007545D4();
          sub_1007545E4();
          sub_1007545B4();
        }

        while (v23 != v25);
        goto LABEL_45;
      }

      __break(1u);
      goto LABEL_50;
    }

    v22 = sub_100754754();

    ++v12;
    if (v22)
    {
      goto LABEL_26;
    }
  }

  v39 = v39;
  sub_100753284();
  if (*((*v38 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_22;
  }

LABEL_50:
  sub_100753304();
LABEL_22:
  sub_100753344();
}

double sub_10052CB1C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v25 = a3;
  v9 = sub_100747C14();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SeparatorSupplementaryView(0);
  if (sub_1007539C4() == a1 && v13 == a2)
  {

LABEL_5:
    a5[3] = sub_10000C518(&qword_100934200, &unk_1007C8920);
    a5[4] = sub_100150440(&qword_10093D6D0, &qword_100934200, &unk_1007C8920);
    sub_10000D134(a5);

    sub_1007539D4();
LABEL_6:
    sub_10074D744();
    return result;
  }

  v24 = v10;
  v14 = sub_100754754();

  if (v14)
  {
    goto LABEL_5;
  }

  type metadata accessor for ProductReviewsShelfHeaderView();
  if (sub_1007539C4() == a1 && v16 == a2)
  {

LABEL_11:
    a5[3] = sub_10000C518(&qword_1009392E0, &qword_1007C2B50);
    a5[4] = sub_100150440(&unk_10093D6C0, &qword_1009392E0, &qword_1007C2B50);
    v23[2] = sub_10000D134(a5);

    v23[1] = sub_1007539D4();
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = v24;
    (*(v24 + 16))(v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v9);
    v20 = (*(v19 + 80) + 24) & ~*(v19 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    (*(v19 + 32))(v21 + v20, v12, v9);
    goto LABEL_6;
  }

  v17 = sub_100754754();

  if (v17)
  {
    goto LABEL_11;
  }

  v22 = v25;

  return sub_1004989E4(a1, a2, v22, a4, a5);
}

uint64_t sub_10052CE6C(uint64_t a1, __n128 a2)
{
  v3 = sub_100747524();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100747564();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v18 - v13;
  (*(v4 + 104))(v6, enum case for ComponentSeparator.Position.top(_:), v3, v12);
  sub_100747534();
  (*(v8 + 16))(v10, v14, v7);
  v15 = OBJC_IVAR____TtC22SubscribePageExtension26SeparatorSupplementaryView_separator;
  swift_beginAccess();
  (*(v8 + 24))(a1 + v15, v10, v7);
  swift_endAccess();
  sub_10050F87C();
  v16 = *(v8 + 8);
  v16(v10, v7);
  return (v16)(v14, v7);
}

double sub_10052D08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (swift_weakLoadStrong() && (v8 = sub_10074C9A4(), , v8))
    {
      v9 = sub_100743814();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    if (swift_weakLoadStrong())
    {
      v12 = sub_10052D194();
    }

    else
    {
      v12 = 0;
    }

    sub_1001D58B4(a6, v9, v11, v12);
  }

  return result;
}

Class sub_10052D194()
{
  v0 = sub_10074C984();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
LABEL_36:
    v3 = sub_100754664();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        v5 = v4;
        while (1)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            v6 = sub_100754574();
            v4 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
              goto LABEL_34;
            }
          }

          else
          {
            if (v5 >= *(v2 + 16))
            {
              goto LABEL_35;
            }

            v6 = *(v1 + 8 * v5 + 32);

            v4 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
              goto LABEL_36;
            }
          }

          sub_10074ECB4();
          if (v7)
          {
            break;
          }

          ++v5;
          if (v4 == v3)
          {
            goto LABEL_37;
          }
        }

        sub_10074ECA4();
        v8 = swift_dynamicCast();
        v9 = v25;
        if (!v8)
        {
          v9 = 0;
        }

        v23 = v9;
        if (v8)
        {
          v10 = v26;
        }

        else
        {
          v10 = 0;
        }

        if (sub_10074C9A4())
        {
          v22 = sub_100743824();
          v24 = v11;

          if (v10)
          {
            if (v24)
            {
              if (v23 == v22 && v10 == v24)
              {
              }

              else
              {
                sub_100754754();
              }

              goto LABEL_30;
            }

LABEL_28:

            goto LABEL_30;
          }

          if (v24)
          {
            goto LABEL_28;
          }
        }

        else if (v10)
        {
          goto LABEL_28;
        }

LABEL_30:
        sub_100016C60(0, &qword_100929CC0, UIAction_ptr);
        v12 = swift_allocObject();
        swift_weakInit();
        v13 = swift_allocObject();
        *(v13 + 16) = v12;
        *(v13 + 24) = v6;
        v21._rawValue = 0;
        sub_100753FF4();
        sub_100753284();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();
      }

      while (v4 != v3);
    }
  }

LABEL_37:

  if (_swiftEmptyArrayStorage >> 62)
  {
    if (sub_100754664())
    {
      goto LABEL_39;
    }

LABEL_50:

    return 0;
  }

  if (!*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_50;
  }

LABEL_39:
  v14 = sub_10074C994();
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    sub_100016C60(0, &qword_1009257B0, UIMenuElement_ptr);

    v18 = sub_100754654();
  }

  else
  {

    sub_100754764();
    sub_100016C60(0, &qword_1009257B0, UIMenuElement_ptr);
    v18 = _swiftEmptyArrayStorage;
  }

  sub_100016C60(0, &qword_1009257B8, UIMenu_ptr);
  v28._countAndFlagsBits = v16;
  v28._object = v17;
  v29.value._countAndFlagsBits = 0;
  v29.value._object = 0;
  v27.value.super.isa = 0;
  v27.is_nil = 0;
  v19.value = 0;
  return sub_100753C34(v28, v29, v27, v19, 0xFFFFFFFFFFFFFFFFLL, v18, v21).super.super.isa;
}

uint64_t sub_10052D5D0()
{

  sub_10000C4F0(v0 + 24);
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_10052D63C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10052D674()
{
  v1 = sub_100747C14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

double sub_10052D738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_100747C14() - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  return sub_10052D08C(a1, a2, a3, a4, v10, v11);
}

uint64_t sub_10052D7D4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6[3] = sub_100016C60(0, &qword_100929CC0, UIAction_ptr);
    v6[0] = a1;
    v5 = a1;
    sub_10074C9F4();

    return sub_10000C8CC(v6, &unk_100923520, &qword_1007A5A70);
  }

  return result;
}

uint64_t sub_10052D884()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10052D8D0(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v28 = a1;
  v29 = a5;
  v7 = sub_100754724();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v11 = *(v30 - 8);
  __chkstk_darwin(v30);
  v13 = &v27 - v12;
  v31 = a3;
  v32 = a2;
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  sub_100743484();
  v14 = objc_opt_self();
  v15 = [v14 fractionalWidthDimension:1.0];
  v16 = sub_100747B94();
  sub_100747554();
  v18 = v17;

  v19 = [v14 absoluteDimension:v18];
  v20 = [objc_opt_self() sizeWithWidthDimension:v15 heightDimension:v19];

  type metadata accessor for SeparatorSupplementaryView(0);
  sub_1007539C4();
  sub_100747BA4();
  sub_1007502D4();
  sub_100743514();
  v22 = v21;
  swift_unknownObjectRelease();
  v23 = v28;
  (*(v8 + 8))(v10, v7);
  v24 = sub_100753064();

  v25 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v20 elementKind:v24 alignment:v29 absoluteOffset:{0.0, v22}];

  sub_100753284();
  if (*((*v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  sub_100753344();
  return (*(v11 + 8))(v13, v30);
}

uint64_t sub_10052DC84(double a1, uint64_t a2, uint64_t *a3, void **a4)
{
  v6 = sub_100750304();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_100750B04();
  sub_100039C50(v10, a3);
  sub_10000D0FC(v10, a3);
  v11 = *a4;
  *v9 = v11;
  (*(v7 + 104))(v9, enum case for FontSource.textStyle(_:), v6);
  v16[3] = v6;
  v16[4] = &protocol witness table for FontSource;
  v12 = sub_10000D134(v16);
  (*(v7 + 16))(v12, v9, v6);
  v13 = v11;
  sub_100750B14();
  return (*(v7 + 8))(v9, v6);
}

void sub_10052DDF4(double a1, double a2, double a3, double a4)
{
  v9 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v9 - 8);
  v11 = &v91[-v10];
  v12 = sub_10074A3F4();
  __chkstk_darwin(v12 - 8);
  v13 = sub_10074A454();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v91[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_10074A374();
  v18 = __chkstk_darwin(v17);
  (*(v20 + 104))(&v91[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)], enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.leading(_:), v18);
  (*(v14 + 104))(v16, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v13);
  sub_10074A3E4();
  sub_10074A384();
  v21 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_materialBackground;
  *&v4[v21] = [objc_allocWithZone(UIVisualEffectView) init];
  v22 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_badgeLabel;
  sub_100745C84();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v22] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v24 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_titleLabel;
  *&v4[v24] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v25 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_descriptionLabel;
  *&v4[v25] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v26 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_callToActionLabel;
  *&v4[v26] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v27 = sub_100753064();
  v28 = [objc_opt_self() systemImageNamed:v27];

  if (v28)
  {
    v29 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_chevronView;
    v30 = [objc_allocWithZone(UIImageView) initWithImage:v28];

    *&v4[v29] = v30;
    v31 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_tapGestureRecognizer;
    *&v4[v31] = [objc_allocWithZone(UITapGestureRecognizer) init];
    v32 = &v4[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_selectionHandler];
    v33 = type metadata accessor for CarouselItemMaterialTextOverlay(0);
    *v32 = 0;
    *(v32 + 1) = 0;
    v101.receiver = v4;
    v101.super_class = v33;
    v34 = objc_msgSendSuper2(&v101, "initWithFrame:", a1, a2, a3, a4);
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v38 = v34;
    [v38 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
    [v38 setOverrideUserInterfaceStyle:2];
    [v38 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
    v99 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_materialBackground;
    v39 = *&v38[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_materialBackground];
    sub_1006F3F14(26.0);

    v40 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_badgeLabel;
    v41 = qword_1009215A0;
    v42 = *&v38[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_badgeLabel];
    if (v41 != -1)
    {
      swift_once();
    }

    v43 = sub_100750534();
    v44 = sub_10000D0FC(v43, qword_100981E18);
    v45 = *(v43 - 8);
    v46 = *(v45 + 16);
    v46(v11, v44, v43);
    v94 = v45;
    v95 = *(v45 + 56);
    v95(v11, 0, 1, v43);
    sub_100745BA4();

    [*&v38[v40] setNumberOfLines:1];
    v47 = *&v38[v40];
    v48 = objc_opt_self();
    v49 = v47;
    v100 = v48;
    v50 = [v48 secondaryLabelColor];
    v51 = v40;
    v52 = v50;
    [v49 setTextColor:v50];

    v98 = v51;
    v53 = [*&v38[v51] layer];
    v97 = kCAFilterPlusL;
    [v53 setCompositingFilter:?];

    v54 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_titleLabel;
    v55 = qword_1009215B0;
    v56 = *&v38[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_titleLabel];
    if (v55 != -1)
    {
      swift_once();
    }

    v57 = sub_10000D0FC(v43, qword_100981E48);
    v46(v11, v57, v43);
    v58 = v95;
    v95(v11, 0, 1, v43);
    sub_100745BA4();

    [*&v38[v54] setNumberOfLines:2];
    v59 = *&v38[v54];
    v60 = [v100 labelColor];
    v96 = v54;
    v61 = v60;
    [v59 setTextColor:v60];

    v62 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_descriptionLabel;
    v63 = *&v38[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_descriptionLabel];
    *v11 = UIFontTextStyleFootnote;
    v11[1] = UIFontWeightRegular;
    v92 = enum case for FontUseCase.preferredFontDerivative(_:);
    v64 = v11;
    v65 = v94[13];
    v65(v64);
    v58(v64, 0, 1, v43);
    v94 = UIFontTextStyleFootnote;
    v66 = v63;
    sub_100745BA4();

    v67 = v62;
    [*&v38[v62] setNumberOfLines:2];
    v68 = *&v38[v62];
    v93 = v62;
    v69 = v68;
    v70 = [v100 secondaryLabelColor];
    [v69 setTextColor:v70];

    v71 = [*&v38[v67] layer];
    v72 = v97;
    [v71 setCompositingFilter:v97];

    v73 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_callToActionLabel;
    v74 = *&v38[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_callToActionLabel];
    *v64 = v94;
    v64[1] = UIFontWeightBold;
    (v65)(v64, v92, v43);
    v58(v64, 0, 1, v43);
    v75 = v74;
    sub_100745BA4();

    [*&v38[v73] setNumberOfLines:1];
    v76 = *&v38[v73];
    v77 = v100;
    v78 = [v100 labelColor];
    [v76 setTextColor:v78];

    v79 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_chevronView;
    v80 = *&v38[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_chevronView];
    v81 = objc_opt_self();
    v82 = v80;
    v83 = [v81 configurationWithTextStyle:UIFontTextStyleBody];
    [v82 setPreferredSymbolConfiguration:v83];

    v84 = *&v38[v79];
    v85 = [v77 secondaryLabelColor];
    [v84 setTintColor:v85];

    v86 = [*&v38[v79] layer];
    [v86 setCompositingFilter:v72];

    v87 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_tapGestureRecognizer;
    [*&v38[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_tapGestureRecognizer] setEnabled:0];
    v88 = *&v38[v87];
    v89 = v38;
    [v88 addTarget:v89 action:"handleSelection:"];
    v90 = *&v38[v87];
    [v90 setDelegate:v89];

    [v89 addGestureRecognizer:*&v38[v87]];
    [v89 addSubview:*&v38[v99]];
    [v89 addSubview:*&v38[v98]];
    [v89 addSubview:*&v38[v96]];
    [v89 addSubview:*&v38[v93]];
    [v89 addSubview:*&v38[v73]];
    [v89 addSubview:*&v38[v79]];
    sub_10052FD90();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10052EA80@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v31 = a1;
  v32 = a2;
  v30 = sub_1007510A4();
  v29 = *(v30 - 8);
  __chkstk_darwin(v30);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074A374();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  v13 = sub_10074A464();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v14 + 16))(v16, v3 + v17, v13);
  sub_10074A394();
  (*(v14 + 8))(v16, v13);
  v18.n128_f64[0] = (*(v7 + 104))(v9, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v6);
  sub_100530F74(&qword_10092A550, &protocol conformance descriptor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment, v18);
  sub_100753274();
  sub_100753274();
  if (*v40 == v37)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_100754754();
  }

  v20 = *(v7 + 8);
  v20(v9, v6);
  v20(v12, v6);

  sub_10052EFF4(v40);
  if ((v31 & 1) == 0)
  {
    v24 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_chevronView);
    v38 = sub_1001A28CC();
    v39 = &protocol witness table for UIImageView;
    *&v37 = v24;
    v25 = v24;
    sub_1007510E4();
    v35 = sub_100751104();
    v36 = &protocol witness table for Center;
    sub_10000D134(v34);
    sub_100751114();
    (*(v29 + 104))(v5, enum case for Pin.Edge.trailingEdge(_:), v30);
    sub_10000C824(v40, &v37);
    v33[3] = sub_1007511A4();
    v33[4] = &protocol witness table for Margins;
    sub_10000D134(v33);
    sub_100751194();
    v38 = sub_1007510B4();
    v39 = &protocol witness table for Pin;
    sub_10000D134(&v37);
    sub_1007510C4();
    if ((v19 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_10000C824(v40, v33);
    sub_1007510D4();
    v35 = sub_100751104();
    v36 = &protocol witness table for Center;
    sub_10000D134(v34);
    sub_100751114();
    goto LABEL_9;
  }

  v21 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_chevronView);
  type metadata accessor for CarouselItemMaterialTextOverlay(0);
  sub_1007477B4();
  [v21 sizeThatFits:{v22, v23}];
  sub_10000C824(v40, v34);
  v38 = sub_1007511A4();
  v39 = &protocol witness table for Margins;
  sub_10000D134(&v37);
  sub_100751194();
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_10000C824(&v37, v34);
LABEL_9:
  sub_10000C824(v34, v33);
  v26 = sub_1007511A4();
  v27 = v32;
  v32[3] = v26;
  v27[4] = &protocol witness table for Margins;
  sub_10000D134(v27);
  sub_100751194();
  sub_10000C620(v40);
  sub_10000C620(&v37);
  return sub_10000C620(v34);
}

uint64_t sub_10052EFF4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  ObjectType = swift_getObjectType();
  v72 = sub_1007507B4();
  v69 = *(v72 - 8);
  __chkstk_darwin(v72);
  v63 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v65 = &v61 - v5;
  __chkstk_darwin(v6);
  v67 = &v61 - v7;
  v8 = sub_100750B04();
  v70 = *(v8 - 8);
  __chkstk_darwin(v8);
  v66 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v9;
  __chkstk_darwin(v10);
  v73 = &v61 - v11;
  v12 = sub_10074A374();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v61 - v17;
  v19 = sub_10074A464();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v20 + 16))(v22, &v2[v23], v19);
  sub_10074A394();
  (*(v20 + 8))(v22, v19);
  v24.n128_f64[0] = (*(v13 + 104))(v15, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v12);
  sub_100530F74(&qword_10092A550, &protocol conformance descriptor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment, v24);
  sub_100753274();
  sub_100753274();
  if (v74 == v77)
  {
    v25 = *(v13 + 8);
    v25(v15, v12);
    v25(v18, v12);

LABEL_4:
    v28 = qword_1009217F8;
    v62 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_callToActionLabel];
    if (v28 != -1)
    {
      swift_once();
    }

    v29 = qword_10093D738;
    goto LABEL_10;
  }

  v26 = sub_100754754();
  v27 = *(v13 + 8);
  v27(v15, v12);
  v27(v18, v12);

  if (v26)
  {
    goto LABEL_4;
  }

  v30 = qword_1009217F0;
  v62 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_descriptionLabel];
  if (v30 != -1)
  {
    swift_once();
  }

  v29 = qword_10093D720;
LABEL_10:
  v31 = v65;
  v32 = sub_10000D0FC(v8, v29);
  v65 = *(v70 + 16);
  (v65)(v73, v32, v8);
  v33 = v63;
  sub_100750794();
  v34 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_badgeLabel];
  v35 = sub_100745C84();
  v75 = v35;
  v76 = &protocol witness table for UILabel;
  *&v74 = v34;
  v36 = swift_allocObject();
  v37 = ObjectType;
  *(v36 + 16) = v2;
  *(v36 + 24) = v37;
  v38 = v37;
  v39 = v34;
  v40 = v2;
  sub_1007507A4();

  v61 = v8;
  v41 = *(v69 + 1);
  v42 = v33;
  v43 = v72;
  v41(v42, v72);
  v69 = v41;
  sub_10000C620(&v74);
  v44 = *&v40[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_titleLabel];
  v75 = v35;
  v76 = &protocol witness table for UILabel;
  *&v74 = v44;
  v45 = swift_allocObject();
  *(v45 + 16) = v40;
  *(v45 + 24) = v38;
  v63 = v40;
  v46 = v44;
  v47 = v67;
  sub_1007507A4();

  v41(v31, v43);
  sub_10000C620(&v74);
  v75 = v35;
  v76 = &protocol witness table for UILabel;
  v48 = v62;
  *&v74 = v62;
  v49 = v66;
  v50 = v61;
  (v65)(v66, v73, v61);
  v51 = v70;
  v52 = (*(v70 + 80) + 24) & ~*(v70 + 80);
  v53 = (v64 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  v55 = v63;
  *(v54 + 16) = v63;
  (*(v51 + 32))(v54 + v52, v49, v50);
  v56 = v72;
  *(v54 + v53) = ObjectType;
  v57 = v68;
  v68[3] = v56;
  v57[4] = &protocol witness table for VerticalStack;
  sub_10000D134(v57);
  v58 = v48;
  v59 = v55;
  sub_1007507A4();

  v69(v47, v56);
  (*(v51 + 8))(v73, v50);
  return sub_10000C620(&v74);
}

uint64_t sub_10052F7B8(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v23 = a7;
  v24 = a6;
  v9 = sub_10074A374();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10074A464();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v14 + 16))(v16, a3 + v17, v13);
  sub_10074A394();
  (*(v14 + 8))(v16, v13);
  sub_10074A354();
  (*(v10 + 8))(v12, v9);
  sub_100750744();
  v18 = sub_100750764();
  sub_100750784();
  sub_100750784();
  if (sub_100750784() != v18)
  {
    sub_100750784();
  }

  sub_100750734();
  if (*a5 != -1)
  {
    swift_once();
  }

  v19 = sub_100750B04();
  v20 = sub_10000D0FC(v19, v24);
  v25[3] = v19;
  v25[4] = &protocol witness table for StaticDimension;
  v21 = sub_10000D134(v25);
  (*(*(v19 - 8) + 16))(v21, v20, v19);
  return sub_100750714();
}

uint64_t sub_10052FA50(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10074A374();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074A464();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v11 + 16))(v13, a3 + v14, v10);
  sub_10074A394();
  (*(v11 + 8))(v13, v10);
  sub_10074A354();
  (*(v7 + 8))(v9, v6);
  sub_100750744();
  sub_10000C518(&unk_10093D7F0, qword_1007AED00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A6580;
  v16 = sub_100750764();
  *(inited + 32) = v16;
  v17 = sub_100750774();
  *(inited + 40) = v17;
  sub_100750784();
  sub_100750784();
  if (sub_100750784() != v16)
  {
    sub_100750784();
  }

  sub_100750784();
  if (sub_100750784() != v17)
  {
    sub_100750784();
  }

  sub_100750734();
  v18 = sub_100750B04();
  v25 = v18;
  v26 = &protocol witness table for StaticDimension;
  v19 = sub_10000D134(v24);
  v20 = *(*(v18 - 8) + 16);
  v20(v19, a4, v18);
  sub_100750714();
  if (qword_100921800 != -1)
  {
    swift_once();
  }

  v21 = sub_10000D0FC(v18, qword_10093D750);
  v25 = v18;
  v26 = &protocol witness table for StaticDimension;
  v22 = sub_10000D134(v24);
  v20(v22, v21, v18);
  return sub_100750724();
}

id sub_10052FD90()
{
  v1 = v0;
  v56 = sub_10074A3F4();
  v64 = *(v56 - 8);
  __chkstk_darwin(v56);
  v63 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v61 = &v53 - v4;
  __chkstk_darwin(v5);
  v57 = &v53 - v6;
  __chkstk_darwin(v7);
  v54 = &v53 - v8;
  v9 = sub_10074A374();
  v66 = *(v9 - 8);
  v67 = v9;
  __chkstk_darwin(v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10074A464();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v62 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v58 = &v53 - v16;
  __chkstk_darwin(v17);
  v55 = &v53 - v18;
  __chkstk_darwin(v19);
  v53 = &v53 - v20;
  __chkstk_darwin(v21);
  v23 = &v53 - v22;
  v24 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  v25 = *(v13 + 16);
  v25(v23, &v0[v24], v12);
  sub_10074A394();
  v26 = *(v13 + 8);
  (v26)(v23, v12);
  v27 = [v0 traitCollection];
  v28 = sub_10074A364();

  v66[1](v11, v67);
  v29 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_badgeLabel];
  v65 = v28;
  [v29 setTextAlignment:v28];
  v59 = v25;
  v60 = v24;
  v30 = v1;
  v31 = v53;
  v25(v53, &v1[v24], v12);
  v32 = v12;
  v33 = v54;
  sub_10074A404();
  v66 = v26;
  v67 = v13 + 8;
  (v26)(v31, v12);
  v34 = sub_10074A3C4();
  v35 = v33;
  v36 = v56;
  v64 = *(v64 + 8);
  (v64)(v35);
  if (!v34)
  {
    v34 = [objc_opt_self() secondaryLabelColor];
  }

  [v29 setTextColor:v34];

  v37 = v30;
  v38 = *&v30[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_titleLabel];
  [v38 setTextAlignment:v65];
  v39 = v59;
  v40 = v60;
  v41 = v55;
  v59(v55, &v30[v60], v32);
  v42 = v57;
  sub_10074A404();
  (v66)(v41, v32);
  v43 = sub_10074A3D4();
  (v64)(v42, v36);
  if (!v43)
  {
    v43 = [objc_opt_self() labelColor];
  }

  [v38 setTextColor:v43];

  v44 = *&v37[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_descriptionLabel];
  [v44 setTextAlignment:v65];
  v45 = v58;
  v39(v58, &v37[v40], v32);
  v46 = v61;
  sub_10074A404();
  (v66)(v45, v32);
  v47 = sub_10074A3A4();
  (v64)(v46, v36);
  if (!v47)
  {
    v47 = [objc_opt_self() secondaryLabelColor];
  }

  [v44 setTextColor:v47];

  v48 = *&v37[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_callToActionLabel];
  [v48 setTextAlignment:v65];
  v49 = v62;
  v39(v62, &v37[v40], v32);
  v50 = v63;
  sub_10074A404();
  (v66)(v49, v32);
  v51 = sub_10074A3B4();
  (v64)(v50, v36);
  if (!v51)
  {
    v51 = [objc_opt_self() labelColor];
  }

  [v48 setTextColor:v51];

  return [v37 setNeedsLayout];
}

id sub_100530504()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarouselItemMaterialTextOverlay(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CarouselItemMaterialTextOverlay(uint64_t a1)
{
  result = qword_10093D7D0;
  if (!qword_10093D7D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100530680(uint64_t a1)
{
  result = sub_10074A464();
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

double sub_100530734(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_selectionHandler);
  v6 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_selectionHandler);
  v7 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_selectionHandler + 8);
  *v5 = a1;
  v5[1] = a2;
  sub_10001B5AC(a1, a2);
  sub_10001B5AC(a1, a2);
  v8 = sub_1000164A8(v6, v7);
  v9 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_tapGestureRecognizer);
  if (a1)
  {
    v8 = sub_1000164A8(a1, a2);
  }

  [v9 setEnabled:{a1 != 0, v8}];

  return sub_1000164A8(a1, a2);
}

id sub_1005307E8(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_10074A374();
  v78 = *(v5 - 8);
  __chkstk_darwin(v5);
  v67 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v66 = &v59 - v8;
  __chkstk_darwin(v9);
  v62 = &v59 - v10;
  __chkstk_darwin(v11);
  v73 = &v59 - v12;
  __chkstk_darwin(v13);
  v72 = &v59 - v14;
  __chkstk_darwin(v15);
  v71 = &v59 - v16;
  v17 = sub_10074A464();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v61 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v59 - v21;
  __chkstk_darwin(v23);
  v25 = &v59 - v24;
  sub_10074A474();
  v26 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  v27 = v18[3];
  v76 = v26;
  v27(&v3[v26], v25, v17);
  swift_endAccess();
  sub_10052FD90();
  v28 = v18[1];
  v63 = v25;
  v77 = v17;
  v74 = v28;
  v75 = v18 + 1;
  v28(v25, v17);
  v29 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_badgeLabel];
  sub_10074A4D4();
  if (v30)
  {
    v31 = sub_100753064();
  }

  else
  {
    v31 = 0;
  }

  [v29 setText:v31];

  v32 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_titleLabel];
  sub_10074A4E4();
  if (v33)
  {
    v34 = sub_100753064();
  }

  else
  {
    v34 = 0;
  }

  [v32 setText:v34];

  v35 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_descriptionLabel];
  sub_10074A494();
  if (v36)
  {
    v37 = sub_100753064();
  }

  else
  {
    v37 = 0;
  }

  v60 = v35;
  [v35 setText:v37];

  v38 = v18[2];
  v39 = v77;
  v64 = v18 + 2;
  v70 = v38;
  v38(v22, &v3[v76], v77);
  sub_10074A394();
  v74(v22, v39);
  v40 = v78;
  v41 = *(v78 + 104);
  v69 = enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:);
  v68 = v41;
  v42.n128_f64[0] = v41(v72);
  sub_100530F74(&qword_10092A550, &protocol conformance descriptor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment, v42);
  sub_100753274();
  sub_100753274();
  v65 = a1;
  if (v81 == v79 && v82 == v80)
  {
    v43 = 1;
  }

  else
  {
    v43 = sub_100754754();
  }

  v44 = *(v40 + 8);
  v44(v72, v5);
  v78 = v40 + 8;
  v44(v71, v5);

  [v60 setHidden:v43 & 1];
  v72 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_chevronView];
  v45 = v77;
  v46 = v61;
  v70(v61, &v3[v76], v77);
  sub_10074A394();
  v74(v46, v45);
  v47 = v62;
  v68(v62, v69, v5);
  sub_100753274();
  sub_100753274();
  if (v81 == v79 && v82 == v80)
  {
    v48 = 1;
  }

  else
  {
    v48 = sub_100754754();
  }

  v44(v47, v5);
  v44(v73, v5);

  [v72 setHidden:v48 & 1];
  v49 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_callToActionLabel];
  v50 = sub_10074A4A4();
  v52 = sub_100176AEC(v50, v51, [v3 effectiveUserInterfaceLayoutDirection]);

  [v49 setAttributedText:v52];

  v53 = v77;
  v54 = v63;
  v70(v63, &v3[v76], v77);
  v55 = v66;
  sub_10074A394();
  v74(v54, v53);
  v56 = v67;
  v57.n128_f64[0] = v68(v67, v69, v5);
  sub_100530F74(&qword_10093D7E8, &protocol conformance descriptor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment, v57);
  LOBYTE(v54) = sub_100753014();
  v44(v56, v5);
  v44(v55, v5);
  [v49 setHidden:(v54 & 1) == 0];
  return [v3 setNeedsLayout];
}

uint64_t sub_100530F74(unint64_t *a1, uint64_t a2, __n128 a3)
{
  result = *a1;
  if (!result)
  {
    sub_10074A374();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100530FB8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100531068()
{
  v1 = sub_100750B04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100531138(uint64_t a1)
{
  v3 = *(sub_100750B04() - 8);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_10052FA50(v4, a1, v5, v6);
}

void sub_1005311D8()
{
  v1 = sub_10074A3F4();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10074A454();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074A374();
  v7 = __chkstk_darwin(v6);
  (*(v9 + 104))(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.leading(_:), v7);
  (*(v3 + 104))(v5, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v2);
  sub_10074A3E4();
  sub_10074A384();
  v10 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_materialBackground;
  *(v0 + v10) = [objc_allocWithZone(UIVisualEffectView) init];
  v11 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_badgeLabel;
  sub_100745C84();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v11) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_titleLabel;
  *(v0 + v13) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v14 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_descriptionLabel;
  *(v0 + v14) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v15 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_callToActionLabel;
  *(v0 + v15) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v16 = sub_100753064();
  v17 = [objc_opt_self() systemImageNamed:v16];

  if (!v17)
  {
    __break(1u);
  }

  v18 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_chevronView;
  v19 = [objc_allocWithZone(UIImageView) initWithImage:v17];

  *(v0 + v18) = v19;
  v20 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_tapGestureRecognizer;
  *(v0 + v20) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v21 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_selectionHandler);
  *v21 = 0;
  v21[1] = 0;
  sub_100754644();
  __break(1u);
}

id sub_100531548(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v151 = a8;
  v135 = a7;
  v150 = a6;
  v137 = a5;
  v136 = a4;
  v12 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v12 - 8);
  v130 = &v119 - v13;
  v131 = sub_100752914();
  v132 = *(v131 - 8);
  __chkstk_darwin(v131);
  v122 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_10074F284();
  v128 = *(v129 - 8);
  __chkstk_darwin(v129);
  v127 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_1007504F4();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v124 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10074F314();
  __chkstk_darwin(v17 - 8);
  v149 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100747EF4();
  v153 = *(v19 - 8);
  v154 = v19;
  __chkstk_darwin(v19);
  v152 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_100750534();
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v134 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10000C518(&qword_100934110, qword_1007B70F0);
  __chkstk_darwin(v22 - 8);
  v147 = &v119 - v23;
  v144 = sub_10074C3E4();
  v140 = *(v144 - 8);
  __chkstk_darwin(v144);
  v142 = &v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
  v145 = *(v25 - 8);
  v146 = v25;
  __chkstk_darwin(v25);
  v143 = &v119 - v26;
  v27 = sub_10000C518(&unk_100925540, &qword_1007A8140);
  __chkstk_darwin(v27 - 8);
  v141 = &v119 - v28;
  v29 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v29 - 8);
  v133 = &v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v123 = &v119 - v32;
  v33 = sub_10000C518(&unk_1009259A0, &unk_1007B0610);
  __chkstk_darwin(v33 - 8);
  v35 = &v119 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v119 - v37;
  v39 = sub_100743084();
  v148 = *(v39 - 8);
  __chkstk_darwin(v39);
  v41 = &v119 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10000C518(&qword_100935130, qword_1007BDC20);
  __chkstk_darwin(v42 - 8);
  v44 = &v119 - v43;
  v45 = sub_100747F54();
  if (v45)
  {
    v46 = v45;
    v47 = sub_10000C518(&qword_100929360, &unk_1007ACE70);
    (*(*(v47 - 8) + 56))(v44, 1, 1, v47);
    sub_10013C000(v46, v44, v151);

    sub_10000C8CC(v44, &qword_100935130, qword_1007BDC20);
  }

  sub_100747F04();
  if (!v48)
  {
    v148 = sub_100747F14();
    v121 = sub_100747F44();
    sub_100747F24();
    v53 = sub_100747F34();
    v54 = &v8[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_dismissActionBlock];
    v55 = *&v8[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_dismissActionBlock];
    v56 = *&v8[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_dismissActionBlock + 8];
    v57 = v137;
    *v54 = v136;
    v54[1] = v57;
    sub_1000164A8(v55, v56);
    v58 = *&v8[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_dismissButton];

    v59 = sub_100753064();

    [v58 setTitle:v59 forState:0];

    [v58 addTarget:v8 action:"didTapDismiss:" forControlEvents:64];
    v120 = v53;
    if (v53)
    {
      sub_100749EC4();
      v60 = sub_100745E94();
      v61 = *(v60 - 8);
      (*(v61 + 56))(v38, 0, 1, v60);
      sub_10053544C(v38, v35);
      if ((*(v61 + 88))(v35, v60) == enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:))
      {
        if (qword_1009212F8 != -1)
        {
          swift_once();
        }

        v62 = v139;
        v63 = sub_10000D0FC(v139, qword_100981620);
        v64 = v138;
        v65 = v123;
        (*(v138 + 16))(v123, v63, v62);
        (*(v64 + 56))(v65, 0, 1, v62);
        sub_1007466A4();
        v67 = v151;
        v66 = v152;
LABEL_28:
        v82 = sub_10000C518(&unk_10092EEA0, qword_1007A8150);
        v83 = v141;
        (*(*(v82 - 8) + 56))(v141, 1, 1, v82);
        v84 = v140;
        v85 = v144;
        (*(v140 + 104))(v142, enum case for OfferButtonSubtitlePosition.below(_:), v144);
        (*(v84 + 56))(v147, 1, 1, v85);
        sub_1000E6544(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
        v86 = v143;
        sub_10074A9C4();
        sub_10015DE40(v120, v148, v121, v83, v86, v67, 0, 0);

        (*(v145 + 8))(v86, v146);
        sub_10000C8CC(v83, &unk_100925540, &qword_1007A8140);
        v74 = v153;
        goto LABEL_29;
      }

      (*(v61 + 8))(v35, v60);
    }

    else
    {
      v75 = sub_100745E94();
      (*(*(v75 - 8) + 56))(v38, 1, 1, v75);
      sub_10000C8CC(v38, &unk_1009259A0, &unk_1007B0610);
    }

    v66 = v152;
    if (v9[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_style] == 1)
    {
      v67 = v151;
      if (qword_1009212F8 != -1)
      {
        swift_once();
      }

      v76 = qword_100981620;
    }

    else
    {
      v67 = v151;
      if (qword_1009212E8 != -1)
      {
        swift_once();
      }

      v76 = qword_1009815F0;
    }

    v77 = v139;
    v78 = sub_10000D0FC(v139, v76);
    v79 = v138;
    v80 = v134;
    (*(v138 + 16))(v134, v78, v77);
    v81 = v133;
    (*(v79 + 32))(v133, v80, v77);
    (*(v79 + 56))(v81, 0, 1, v77);
    sub_1007466A4();
    goto LABEL_28;
  }

  v49 = [objc_allocWithZone(type metadata accessor for LinkableHeaderView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v50 = OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_headerView;
  v51 = *&v8[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_headerView];
  if (v51)
  {
    [v51 removeFromSuperview];
    v52 = *&v8[v50];
  }

  else
  {
    v52 = 0;
  }

  *&v8[v50] = v49;
  v68 = v49;

  if (v68)
  {
    [*&v8[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_scrollView] addSubview:v68];
  }

  v69 = *&v8[v50] != 0;
  [*&v8[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_offerButton] setHidden:v69];
  [*&v8[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_dismissButton] setHidden:v69];
  [v8 setNeedsLayout];

  v70 = *&v8[v50];
  if (v70)
  {
    v71 = *(v70 + OBJC_IVAR____TtC22SubscribePageExtension18LinkableHeaderView_label);
    (*(v148 + 104))(v41, enum case for StyledText.MediaType.plainText(_:), v39);
    sub_100743094();
    swift_allocObject();
    v72 = v71;
    v73 = sub_100743054();
    sub_10004DF04(v73, 0, _swiftEmptyArrayStorage);
  }

  else
  {
  }

  v66 = v152;
  v74 = v153;
LABEL_29:
  v87 = sub_100534EBC(v9, v9, a1, a2);
  v89 = v88;
  sub_100747F64();
  v90 = v154;
  v91 = (*(v74 + 88))(v66, v154);
  if (v91 == enum case for ArcadeSubscribePage.PageType.generic(_:))
  {
    (*(v74 + 96))(v66, v90);
    v92 = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    sub_10074F374();
    sub_10074F324();
    sub_100743364();
    [v92 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      sub_100753E34();
    }

    sub_100743224();
    sub_1000E6544(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_100744204();
    v93 = OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_contentView;
    v94 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_contentView];
    v95 = v92;
    if (v94)
    {
      [v94 removeFromSuperview];
      v96 = *&v9[v93];
    }

    else
    {
      v96 = 0;
    }

    *&v9[v93] = v92;
    v111 = v92;

    [*&v9[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_scrollView] addSubview:v111];
    [v9 setNeedsLayout];

LABEL_44:

LABEL_47:
    return [v9 setNeedsLayout];
  }

  if (v91 == enum case for ArcadeSubscribePage.PageType.grid(_:))
  {
    (*(v74 + 96))(v66, v90);
    v97 = *v66;
    v98 = v66[1];
    v99 = v9[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_style] == 1;
    v100 = objc_allocWithZone(type metadata accessor for UpsellGridView());
    v101 = sub_1004566A0(v99);
    v102 = OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_contentView;
    v103 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_contentView];
    v104 = v101;
    if (v103)
    {
      [v103 removeFromSuperview];
      v103 = *&v9[v102];
    }

    *&v9[v102] = v101;
    v111 = v101;

    [*&v9[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_scrollView] addSubview:v111];
    [v9 setNeedsLayout];

    *&v111[OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_impressionsCalculator] = v135;

    *&v111[OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_primaryIcon] = v97;

    v112 = OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_remainingIcons;
    swift_beginAccess();
    *&v111[v112] = v98;

    *&v111[OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_artworkLoader] = v150;

    sub_100456C70(v87, v89);

    goto LABEL_47;
  }

  if (v91 == enum case for ArcadeSubscribePage.PageType.singleIcon(_:))
  {
    (*(v74 + 96))(v66, v90);
    sub_100749504();
    v105 = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    sub_10074F2A4();
    v106 = v124;
    sub_100750504();
    sub_1007504B4();
    (*(v125 + 8))(v106, v126);
    v107 = v127;
    sub_10074F294();
    sub_10074F254();
    (*(v128 + 8))(v107, v129);
    sub_10074F374();
    sub_10074F324();
    sub_100743364();
    [v105 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      sub_100753E34();
    }

    sub_100743224();
    sub_1000E6544(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_100744204();
    v108 = v130;
    sub_1007494F4();
    v109 = v132;
    v110 = v131;
    if ((*(v132 + 48))(v108, 1, v131) == 1)
    {
      sub_10000C8CC(v108, &unk_100925380, qword_1007A8E40);
    }

    else
    {
      v114 = v122;
      (*(v109 + 32))();
      if (v135)
      {
        sub_100749544();
      }

      (*(v132 + 8))(v114, v110);
    }

    v115 = OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_contentView;
    v116 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_contentView];
    v117 = v105;
    if (v116)
    {
      [v116 removeFromSuperview];
      v118 = *&v9[v115];
    }

    else
    {
      v118 = 0;
    }

    *&v9[v115] = v105;
    v111 = v105;

    [*&v9[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_scrollView] addSubview:v111];
    [v9 setNeedsLayout];

    goto LABEL_44;
  }

  (*(v74 + 8))(v66, v90);
  return [v9 setNeedsLayout];
}