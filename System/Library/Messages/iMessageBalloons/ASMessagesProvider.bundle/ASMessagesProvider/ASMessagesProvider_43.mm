uint64_t (*sub_4D3110(uint64_t **a1))()
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
  v2[4] = sub_4D22A8(v2);
  return sub_246E0;
}

uint64_t sub_4D3180()
{
  ObjectType = swift_getObjectType();
  v1 = sub_4D34E8(&qword_9572F8, type metadata accessor for VideoTodayBrickCollectionViewCell, &unk_7A0BF0);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_4D31F4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_4D34E8(&qword_9572F8, type metadata accessor for VideoTodayBrickCollectionViewCell, &unk_7A0BF0);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_4D3280(uint64_t *a1))()
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
  sub_4D34E8(&qword_9572F8, type metadata accessor for VideoTodayBrickCollectionViewCell, &unk_7A0BF0);
  *(v3 + 32) = sub_75DC50();
  return sub_21028;
}

void sub_4D3418()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    sub_4D34E8(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
    Strong = v1;
  }

  v2 = sub_4D2144(Strong);

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

uint64_t sub_4D34E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_4D357C(uint64_t a1, uint64_t a2)
{
  v3 = sub_7656C0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_758700();
  sub_4D3938(&qword_957300, &type metadata accessor for AppEvent, &protocol conformance descriptor for AppPromotion);
  sub_75C750();
  v7 = v19;
  if (!v19)
  {
    return 0.0;
  }

  swift_getKeyPath();
  sub_75C7B0();

  sub_765630();
  v9 = v8;
  v11 = v10;
  (*(v4 + 8))(v6, v3);
  v12 = sub_527DE4();
  v13 = type metadata accessor for AppEventView(0);
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_650A20(v9, v11, v7, v12, a2, v13, ObjectType);
  v16 = v15;
  swift_unknownObjectRelease_n();

  return v16;
}

double sub_4D3760(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = sub_7656C0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_75C7B0();

  sub_765630();
  v8 = v7;
  v10 = v9;
  (*(v4 + 8))(v6, v3);
  v11 = sub_527DE4();
  v12 = type metadata accessor for AppEventView(0);
  sub_7595E0();
  v13 = sub_7595B0();
  v15 = v14;
  v16 = sub_759590();
  v18 = v17;
  v19 = sub_7595C0();
  v21 = v20;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_650C28(v13, v15, v16, v18, v19, v21, v2, v11, v8, v10, v12, ObjectType);
  v24 = v23;

  swift_unknownObjectRelease_n();
  return v24;
}

uint64_t sub_4D3938(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_4D3980(void *a1)
{
  [a1 frame];

  return [a1 setFrame:?];
}

uint64_t sub_4D39D8()
{
  v1 = qword_950140;
  if (*(v0 + qword_950140))
  {
    v2 = *(v0 + qword_950140);
  }

  else
  {
    type metadata accessor for UberedPageScrollObserver();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 80) = 0;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 88) = 1;
    *(v2 + 24) = &off_88E2A8;
    swift_unknownObjectWeakAssign();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = *(v2 + 72);
    v5 = *(v2 + 80);
    *(v2 + 72) = sub_4D4600;
    *(v2 + 80) = v3;

    sub_F704(v4, v5);

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_4D3AEC()
{
  v1 = qword_950150;
  if (*(v0 + qword_950150))
  {
    v2 = *(v0 + qword_950150);
  }

  else
  {
    sub_4D39D8();
    type metadata accessor for UberedCollectionElementsObserver();
    v2 = swift_allocObject();
    swift_weakInit();
    *(v2 + 24) = 0;
    swift_weakAssign();

    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_4D3B90(double a1)
{
  v3 = sub_756F10();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  v10 = sub_BD88(&qword_93F428, &unk_79F050);
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  v16 = sub_756EB0();
  __chkstk_darwin(v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = qword_99CB80;
  if (*&v1[qword_99CB80] != a1)
  {
    v44 = v4;
    v45 = v3;
    v21 = v1;
    v22 = v17;
    v23 = [v1 navigationItem];
    sub_7698B0();

    if ((*(v22 + 48))(v15, 1, v16) == 1)
    {
      sub_10A2C(v15, &qword_93F428, &unk_79F050);
    }

    else
    {
      v43 = v22;
      (*(v22 + 32))(v19, v15, v16);
      v41 = v21;
      v42 = [v21 navigationItem];
      v40 = sub_BD88(&qword_940F40, &qword_785F00);
      inited = swift_initStackObject();
      v39 = xmmword_77B6D0;
      *(inited + 16) = xmmword_77B6D0;
      *(inited + 32) = NSForegroundColorAttributeName;
      v25 = objc_opt_self();
      v37 = v25;
      v38 = NSForegroundColorAttributeName;
      v26 = [v25 labelColor];
      v27 = [v26 colorWithAlphaComponent:a1];

      v36 = sub_396E8();
      *(inited + 64) = v36;
      *(inited + 40) = v27;
      sub_10D028(inited);
      swift_setDeallocating();
      sub_10A2C(inited + 32, qword_940F50, &qword_785170);
      sub_756F30();
      v28 = swift_initStackObject();
      *(v28 + 16) = v39;
      *(v28 + 32) = v38;
      v29 = [v37 labelColor];
      v30 = [v29 colorWithAlphaComponent:*&v41[v20]];

      *(v28 + 64) = v36;
      *(v28 + 40) = v30;
      sub_10D028(v28);
      swift_setDeallocating();
      sub_10A2C(v28 + 32, qword_940F50, &qword_785170);
      sub_756F30();
      sub_4D45B8(&unk_9562C0, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
      sub_756FB0();
      v31 = *(v44 + 8);
      v32 = v45;
      v31(v6, v45);
      v31(v9, v32);
      v33 = v43;
      (*(v43 + 56))(v12, 0, 1, v16);
      v34 = v42;
      sub_7698C0();

      (*(v33 + 8))(v19, v16);
    }
  }
}

char *sub_4D40F0(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_99E038) = 0;
  *(v2 + qword_99CB80) = 0x3FF0000000000000;
  *(v2 + qword_950140) = 0;
  *(v2 + qword_950148) = 0x4034000000000000;
  *(v2 + qword_99CB88) = 0;
  *(v2 + qword_950150) = 0;

  v5 = sub_469FD8(a1, a2);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NavigationBarVisibilityScrollObserver();
  v7 = swift_allocObject();
  *(v7 + 32) = xmmword_782450;
  *(v7 + 16) = sub_4D45B0;
  *(v7 + 24) = v6;
  v8 = qword_99E038;
  *&v5[qword_99E038] = v7;
  v9 = v5;

  v10 = *&v9[qword_99E1D8];

  if (*&v5[v8])
  {
    sub_4D45B8(&qword_942C78, type metadata accessor for NavigationBarVisibilityScrollObserver, &unk_792F98);
  }

  sub_75FA40();

  return v9;
}

void sub_4D42AC(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + qword_99CB80);
    *(Strong + qword_99CB80) = a2;
    sub_4D3B90(v5);
  }
}

uint64_t sub_4D4320()
{
  sub_BD88(&qword_93F1E8, &qword_77DCD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_77E280;
  type metadata accessor for NavigationBarVisibilityThresholdCollectionElementsObserver();
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 24) = &off_894098;
  swift_unknownObjectWeakAssign();
  v2 = sub_4D45B8(&qword_942C80, type metadata accessor for NavigationBarVisibilityThresholdCollectionElementsObserver, &unk_7B012C);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_77E280;
  *(v3 + 32) = sub_5FD8C8();
  *(v3 + 40) = v4;
  v5 = sub_4D3AEC();
  v6 = sub_4D45B8(&qword_9494C8, type metadata accessor for UberedCollectionElementsObserver, &unk_787D44);
  *(v3 + 48) = v5;
  *(v3 + 56) = v6;
  sub_7637E0();
  swift_allocObject();
  *(v0 + 48) = sub_7637D0();
  *(v0 + 56) = &protocol witness table for CompoundCollectionElementsObserver;
  swift_allocObject();
  return sub_7637D0();
}

uint64_t type metadata accessor for GenericDiffablePageViewController(uint64_t a1)
{
  result = qword_957330;
  if (!qword_957330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4D4578()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4D45B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_4D460C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_760370();
  __chkstk_darwin(v9 - 8);
  v10 = sub_7603D0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_7602F0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionModuleOverlay_headerView;
  type metadata accessor for CarouselItemModuleHeaderView(0);
  *&v4[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionModuleOverlay_platterView;
  type metadata accessor for CarouselItemModulePlatterView(0);
  *&v4[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionModuleOverlay_tapGestureRecognizer;
  *&v4[v20] = [objc_allocWithZone(UITapGestureRecognizer) init];
  (*(v15 + 104))(v17, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v14);
  (*(v11 + 104))(v13, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v10);
  sub_760360();
  sub_760300();
  v21 = &v4[OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionModuleOverlay_selectionHandler];
  *v21 = 0;
  *(v21 + 1) = 0;
  v33.receiver = v4;
  v33.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v26 = v22;
  [v26 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v26 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v27 = [v26 layer];
  [v27 setAllowsGroupOpacity:0];

  v28 = OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionModuleOverlay_tapGestureRecognizer;
  [*&v26[OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionModuleOverlay_tapGestureRecognizer] setEnabled:0];
  [*&v26[v28] addTarget:v26 action:"handleSelection:"];
  v29 = *&v26[v28];
  [v29 setDelegate:v26];

  [v26 addGestureRecognizer:*&v26[v28]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionModuleOverlay_headerView]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionModuleOverlay_platterView]];

  return v26;
}

uint64_t sub_4D4A44@<X0>(uint64_t *a1@<X8>)
{
  v23 = a1;
  v3 = sub_766950();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = sub_766880();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_766850();
  *(swift_allocObject() + 16) = v2;
  v14 = v2;
  sub_766930();
  v15 = *&v14[OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionModuleOverlay_headerView];
  v26 = type metadata accessor for CarouselItemModuleHeaderView(0);
  v27 = sub_4D588C(&qword_957980, type metadata accessor for CarouselItemModuleHeaderView, &unk_7AF460);
  v25[0] = v15;
  v16 = v15;
  sub_766940();
  v17 = *(v4 + 8);
  v17(v6, v3);
  sub_BEB8(v25);
  v18 = *&v14[OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionModuleOverlay_platterView];
  v24[3] = type metadata accessor for CarouselItemModulePlatterView(0);
  v24[4] = sub_4D588C(&qword_957988, type metadata accessor for CarouselItemModulePlatterView, &unk_7AECE8);
  v24[0] = v18;
  v26 = v3;
  v27 = &protocol witness table for VerticalStack;
  sub_B1B4(v25);
  v19 = v18;
  sub_766940();
  v17(v9, v3);
  sub_BEB8(v24);
  v20 = v23;
  v23[3] = v10;
  v20[4] = &protocol witness table for DisjointStack;
  sub_B1B4(v20);
  sub_766870();
  (*(v11 + 8))(v13, v10);
  return sub_BEB8(v25);
}

uint64_t sub_4D4E7C()
{
  v0 = sub_766840();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3[3] = sub_766970();
  v3[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v3);
  sub_766960();
  (*(v1 + 104))(v3, enum case for DisjointStack.EdgePosition.anchored(_:), v0);
  return sub_7667F0();
}

uint64_t sub_4D4F70(uint64_t a1, uint64_t a2)
{
  v3 = sub_7603D0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7603E0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionModuleOverlay_displayOptions;
  swift_beginAccess();
  (*(v8 + 16))(v10, a2 + v11, v7);
  sub_760390();
  (*(v8 + 8))(v10, v7);
  sub_7603B0();
  (*(v4 + 8))(v6, v3);
  return sub_7668E0();
}

uint64_t type metadata accessor for CarouselItemCollectionModuleOverlay(uint64_t a1)
{
  result = qword_957968;
  if (!qword_957968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4D534C(uint64_t a1, __n128 a2)
{
  result = sub_7603E0();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_4D53F8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionModuleOverlay_selectionHandler);
  v6 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionModuleOverlay_selectionHandler);
  v7 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionModuleOverlay_selectionHandler + 8);
  *v5 = a1;
  v5[1] = a2;
  sub_F714(a1, a2);
  sub_F714(a1, a2);
  sub_F704(v6, v7);
  v8 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionModuleOverlay_tapGestureRecognizer);
  if (a1)
  {
    sub_F704(a1, a2);
  }

  [v8 setEnabled:a1 != 0];

  return sub_F704(a1, a2);
}

double sub_4D54AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_760400();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_3C2614(v4, a2);

  return result;
}

id sub_4D552C(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v4 = sub_7603E0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7603F0();
  v8 = OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionModuleOverlay_displayOptions;
  swift_beginAccess();
  (*(v5 + 40))(&v3[v8], v7, v4);
  swift_endAccess();
  sub_6EB85C();
  sub_7603F0();
  v9 = sub_760450();
  v11 = v10;
  v12 = sub_760410();
  sub_703558(v7, v9, v11, v12, v13);

  (*(v5 + 8))(v7, v4);
  return [v3 setNeedsLayout];
}

double sub_4D56D4()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionModuleOverlay_platterView) + OBJC_IVAR____TtC18ASMessagesProvider29CarouselItemModulePlatterView_lockupCollectionView);
  v2 = OBJC_IVAR____TtC18ASMessagesProvider32CarouselItemLockupCollectionView_artworkViews;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)); ; i = sub_76A860())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_76A770();
      }

      else
      {
        if (v5 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_14;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      sub_759210();
      sub_4D588C(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_75A0C0();

      ++v5;
      if (v8 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_12:

  return result;
}

uint64_t sub_4D584C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4D588C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_4D58D4()
{
  v1 = sub_760370();
  __chkstk_darwin(v1 - 8);
  v2 = sub_7603D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7602F0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionModuleOverlay_headerView;
  type metadata accessor for CarouselItemModuleHeaderView(0);
  *(v0 + v10) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionModuleOverlay_platterView;
  type metadata accessor for CarouselItemModulePlatterView(0);
  *(v0 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionModuleOverlay_tapGestureRecognizer;
  *(v0 + v12) = [objc_allocWithZone(UITapGestureRecognizer) init];
  (*(v7 + 104))(v9, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v6);
  (*(v3 + 104))(v5, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v2);
  sub_760360();
  sub_760300();
  v13 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionModuleOverlay_selectionHandler);
  *v13 = 0;
  v13[1] = 0;
  sub_76A840();
  __break(1u);
}

void sub_4D5CAC(void *a1)
{
  v2 = v1;
  v38 = [a1 containerView];
  v4 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 viewForKey:UITransitionContextToViewKey];
    if (v6)
    {
      v7 = v6;
      [a1 finalFrameForViewController:v5];
      x = v46.origin.x;
      y = v46.origin.y;
      width = v46.size.width;
      height = v46.size.height;
      v12 = CGRectGetWidth(v46) * 0.2;
      v47.origin.x = x;
      v47.origin.y = y;
      v47.size.width = width;
      v47.size.height = height;
      v13 = CGRectGetHeight(v47) * 0.2;
      v48.origin.x = x;
      v48.origin.y = y;
      v48.size.width = width;
      v48.size.height = height;
      v49 = CGRectInset(v48, v12, v13);
      v14 = &v2[OBJC_IVAR____TtC18ASMessagesProvider31TodayTransitionPresentAnimation_originRect];
      if (v2[OBJC_IVAR____TtC18ASMessagesProvider31TodayTransitionPresentAnimation_originRect + 32])
      {
        v15 = v49.origin.x;
        v16 = v49.origin.y;
        v17 = v49.size.width;
        v18 = v49.size.height;
      }

      else
      {
        v17 = v14[2];
        v18 = v14[3];
        v15 = *v14;
        v16 = v14[1];
      }

      [v38 addSubview:v7];
      [v7 setFrame:{v15, v16, v17, v18}];
      v19 = objc_opt_self();
      v20 = swift_allocObject();
      *(v20 + 16) = v7;
      v21 = swift_allocObject();
      *(v21 + 16) = sub_15E72C;
      *(v21 + 24) = v20;
      v43 = sub_2EC28;
      v44 = v21;
      aBlock = _NSConcreteStackBlock;
      v40 = 1107296256;
      v41 = sub_1EB578;
      v42 = &unk_894258;
      v22 = _Block_copy(&aBlock);
      v23 = v7;

      [v19 performWithoutAnimation:v22];
      _Block_release(v22);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else
      {
        v25 = [swift_unknownObjectRetain() containerView];
        v26 = [v25 traitCollection];

        LOBYTE(v25) = sub_7699D0();
        swift_unknownObjectRelease();
        if (v25)
        {
          v27 = 0.62;
        }

        else
        {
          v27 = 0.61;
        }

        v28 = [a1 containerView];
        v29 = [v28 traitCollection];

        LOBYTE(v28) = sub_7699D0();
        if (v28)
        {
          v30 = 0.8;
        }

        else
        {
          v30 = 0.84;
        }

        v31 = swift_allocObject();
        *(v31 + 2) = v2;
        *(v31 + 3) = v23;
        v31[4] = x;
        v31[5] = y;
        v31[6] = width;
        v31[7] = height;
        v43 = sub_4D6770;
        v44 = v31;
        aBlock = _NSConcreteStackBlock;
        v40 = 1107296256;
        v41 = sub_23F0CC;
        v42 = &unk_8942A8;
        v32 = _Block_copy(&aBlock);
        v33 = v23;
        v34 = v2;

        v35 = swift_allocObject();
        *(v35 + 16) = a1;
        *(v35 + 24) = v34;
        v43 = sub_4D6848;
        v44 = v35;
        aBlock = _NSConcreteStackBlock;
        v40 = 1107296256;
        v41 = sub_3D6D80;
        v42 = &unk_8942F8;
        v36 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();
        v37 = v34;

        [v19 animateWithDuration:129 delay:v32 usingSpringWithDamping:v36 initialSpringVelocity:v27 options:0.0 animations:v30 completion:1.0];

        _Block_release(v36);
        _Block_release(v32);
      }

      return;
    }
  }
}

void sub_4D61F8(void *a1)
{
  v2 = v1;
  v30 = [a1 containerView];
  v4 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 viewForKey:UITransitionContextToViewKey];
    if (v6)
    {
      v7 = v6;
      [a1 finalFrameForViewController:v5];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      [v30 addSubview:v7];
      [v7 setFrame:{v9, v11, v13, v15}];
      [v7 layoutIfNeeded];
      [v7 setAlpha:0.0];
      v16 = [swift_unknownObjectRetain() containerView];
      v17 = [v16 traitCollection];

      LOBYTE(v16) = sub_7699D0();
      swift_unknownObjectRelease();
      if (v16)
      {
        v18 = 0.62;
      }

      else
      {
        v18 = 0.61;
      }

      v19 = [a1 containerView];
      v20 = [v19 traitCollection];

      LOBYTE(v19) = sub_7699D0();
      if (v19)
      {
        v21 = 0.8;
      }

      else
      {
        v21 = 0.84;
      }

      v22 = objc_opt_self();
      v23 = swift_allocObject();
      *(v23 + 16) = v2;
      *(v23 + 24) = v7;
      v35 = sub_4D6680;
      v36 = v23;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = sub_23F0CC;
      v34 = &unk_894190;
      v24 = _Block_copy(&aBlock);
      v25 = v2;
      v26 = v7;

      v27 = swift_allocObject();
      *(v27 + 16) = a1;
      *(v27 + 24) = v25;
      v35 = sub_4D66E4;
      v36 = v27;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = sub_3D6D80;
      v34 = &unk_8941E0;
      v28 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      v29 = v25;

      [v22 animateWithDuration:129 delay:v24 usingSpringWithDamping:v28 initialSpringVelocity:v18 options:0.0 animations:v21 completion:1.0];

      _Block_release(v28);
      _Block_release(v24);
      return;
    }
  }
}

id sub_4D65E8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TodayTransitionPresentAnimation();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_4D6640()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_4D6680()
{
  v1 = *(v0 + 24);
  sub_B584C(1);

  return [v1 setAlpha:1.0];
}

double sub_4D66CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_4D66E8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4D6730()
{

  return _swift_deallocObject(v0, 64, 7);
}

id sub_4D6770()
{
  v1 = *(v0 + 3);
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  sub_B584C(1);

  return [v1 setFrame:{v2, v3, v4, v5}];
}

uint64_t sub_4D67E4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

void InAppMessagesMetricsEventRecorder.record(_:on:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = v3[2];
  if (v4)
  {
    v5 = v3[3];
    v6 = objc_allocWithZone(AMSMetricsEvent);
    sub_F714(v4, v5);

    v7 = sub_769210();

    v8 = [v6 initWithTopic:v7];

    v9 = v3[4];
    if (v9)
    {
      v10 = v3[5];

      v11 = v9(v8);
      sub_F704(v9, v10);
    }

    else
    {
      v11 = v8;
    }

    sub_768B80();
    isa = sub_7690E0().super.isa;

    [v11 addPropertiesWithDictionary:isa];

    v14 = [v11 underlyingDictionary];
    v15 = sub_7690F0();

    sub_4D6BB8(v15);
    v17 = v16;

    if (v17)
    {
      v18 = objc_allocWithZone(IAMFigaroEvent);
      v19 = sub_7690E0().super.isa;

      v20 = [v18 initWithFigaroEventProperties:v19];

      v4(v20);
    }

    else
    {
    }

    sub_F704(v4, v5);
  }

  else
  {
    if (qword_93C308 != -1)
    {
      swift_once();
    }

    v12 = sub_768FF0();
    sub_BE38(v12, qword_99A548);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768EA0();
  }
}

void sub_4D6BB8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_BD88(&qword_955910, &qword_7851F0);
    v2 = sub_76A8B0();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v11 = __clz(__rbit64(v5)) | (v10 << 6);
    sub_59C2C(*(a1 + 48) + 40 * v11, v27);
    sub_132B4(*(a1 + 56) + 32 * v11, v28 + 8);
    v25[0] = v28[0];
    v25[1] = v28[1];
    v26 = v29;
    v24[0] = v27[0];
    v24[1] = v27[1];
    sub_59C2C(v24, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_132B4(v25 + 8, v20);
    sub_4D6FBC(v24);
    v21 = v18;
    sub_13310(v20, v22);
    v12 = v21;
    sub_13310(v22, v23);
    sub_13310(v23, &v21);
    v13 = sub_3DF2F8(v12, *(&v12 + 1));
    if (v14)
    {
      *(v2[6] + 16 * v13) = v12;
      v8 = v13;

      v9 = (v2[7] + 32 * v8);
      sub_BEB8(v9);
      sub_13310(&v21, v9);
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
      *(v2[6] + 16 * v13) = v12;
      sub_13310(&v21, (v2[7] + 32 * v13));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v10 = v7;
  }

  sub_4D6FBC(v24);
}

double InAppMessagesMetricsEventRecorder.withDecorator(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v4 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  sub_F704(v5, v4);

  return result;
}

uint64_t *InAppMessagesMetricsEventRecorder.deinit()
{
  sub_F704(v0[2], v0[3]);
  sub_F704(v0[4], v0[5]);
  return v0;
}

uint64_t InAppMessagesMetricsEventRecorder.__deallocating_deinit()
{
  sub_F704(v0[2], v0[3]);
  sub_F704(v0[4], v0[5]);

  return swift_deallocClassInstance();
}

uint64_t sub_4D6FBC(uint64_t a1)
{
  v2 = sub_BD88(&qword_957A78, &qword_7A0E70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ArcadeSubscribePageLayout.init(metrics:headerView:contentView:detailsView:offerButton:dismissButton:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  memcpy(a7, __src, 0x108uLL);
  v13 = *(a2 + 16);
  *(a7 + 264) = *a2;
  *(a7 + 280) = v13;
  *(a7 + 296) = *(a2 + 32);
  v14 = *(a3 + 16);
  *(a7 + 304) = *a3;
  *(a7 + 320) = v14;
  *(a7 + 336) = *(a3 + 32);
  sub_10914(a4, a7 + 344);
  sub_10914(a5, a7 + 384);

  return sub_10914(a6, a7 + 424);
}

uint64_t ArcadeSubscribePageLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v55 = a2;
  v56 = sub_7664F0();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v53 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v52 = sub_76A920();
  v14 = *(v52 - 8);
  __chkstk_darwin(v52);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6D310(v6 + 264, &v62);
  v17 = *(&v63 + 1);
  if (*(&v63 + 1))
  {
    sub_10914(&v62, v57);
    sub_B170(v57, v58);
    sub_7665B0();
    v19 = v18;
    v21 = v20;
    v68.origin.x = a3;
    v68.origin.y = a4;
    v68.size.width = a5;
    v68.size.height = a6;
    v22 = CGRectGetMidX(v68) + v19 * -0.5;
    v69.origin.x = a3;
    v69.origin.y = a4;
    v69.size.width = a5;
    v69.size.height = a6;
    MinY = CGRectGetMinY(v69);
    sub_B170(v57, v58);
    sub_769D20();
    sub_766530();
    sub_BEB8(v57);
  }

  else
  {
    sub_70550(&v62);
    v22 = 0.0;
    MinY = 0.0;
    v19 = 0.0;
    v21 = 0;
  }

  sub_6D310(v6 + 304, &v62);
  v24 = *(&v63 + 1);
  if (*(&v63 + 1))
  {
    *&v50 = v21;
    sub_10914(&v62, v57);
    ObjectType = swift_getObjectType();
    sub_4D7E78(a1, v6, ObjectType, a5, a6);
    *&v51 = v26;
    v27 = *(v6 + 24);
    sub_B170(v7, *(v7 + 24));
    sub_33964(v27);
    sub_766700();
    v29 = v28;
    (*(v14 + 8))(v16, v52);
    if (v17)
    {
      v70.origin.x = v22;
      v70.origin.y = MinY;
      v70.size.width = v19;
      *&v70.size.height = v50;
      v29 = v29 + CGRectGetMaxY(v70);
    }

    v71.origin.x = a3;
    v71.origin.y = a4;
    v71.size.width = a5;
    v71.size.height = a6;
    MinX = CGRectGetMinX(v71);
    v72.origin.x = a3;
    v72.origin.y = a4;
    v72.size.width = a5;
    v72.size.height = a6;
    Width = CGRectGetWidth(v72);
    sub_B170(v57, v58);
    v47 = Width;
    v48 = MinX;
    v32 = v29;
    v33 = *&v51;
    sub_769D20();
    sub_766530();
    sub_BEB8(v57);
  }

  else
  {
    sub_70550(&v62);
    v47 = 0.0;
    v48 = 0.0;
    v32 = 0.0;
    v33 = 0.0;
  }

  v34 = *(v7 + 80);
  v51 = *(v7 + 96);
  v52 = v34;
  sub_134D8(v7 + 112, v64);
  v35 = *(v7 + 152);
  v49 = *(v7 + 168);
  v50 = v35;
  sub_134D8(v7 + 184, &v66);
  sub_134D8(v7 + 224, &v67);
  v62 = v52;
  v63 = v51;
  v65 = v49;
  *&v64[40] = v50;
  sub_23AB64(&v62, v57);
  sub_134D8(v7 + 344, &v59);
  sub_134D8(v7 + 384, &v60);
  sub_134D8(v7 + 424, &v61);
  swift_getObjectType();
  sub_4D8130(a1, v57, a5, a6);
  v37 = v36;
  if (v24 && (v73.size.width = v47, v73.origin.x = v48, v73.origin.y = v32, v46 = v32, v73.size.height = v33, v38 = v33, v39 = v37 + CGRectGetMaxY(v73), v74.origin.x = a3, v74.origin.y = a4, v74.size.width = a5, v74.size.height = a6, CGRectGetMaxY(v74) < v39))
  {
    v75.size.width = v47;
    v75.origin.x = v48;
    v75.origin.y = v46;
    v75.size.height = v38;
    MaxY = CGRectGetMaxY(v75);
  }

  else
  {
    v76.origin.x = a3;
    v76.origin.y = a4;
    v76.size.width = a5;
    v76.size.height = a6;
    MaxY = CGRectGetMaxY(v76) - v37;
  }

  v77.origin.x = a3;
  v77.origin.y = a4;
  v77.size.width = a5;
  v77.size.height = a6;
  v41 = CGRectGetMinX(v77);
  v78.origin.x = a3;
  v78.origin.y = a4;
  v78.size.width = a5;
  v78.size.height = a6;
  v42 = CGRectGetWidth(v78);
  v43 = v53;
  sub_4D78D4(a1, v41, MaxY, v42, v37);
  sub_7664E0();
  sub_7664D0();
  v79.origin.x = a3;
  v79.origin.y = a4;
  v79.size.width = a5;
  v79.size.height = a6;
  CGRectGetHeight(v79);
  v80.origin.x = a3;
  v80.origin.y = a4;
  v80.size.width = a5;
  v80.size.height = a6;
  CGRectGetMinX(v80);
  v81.origin.x = a3;
  v81.origin.y = a4;
  v81.size.width = a5;
  v81.size.height = a6;
  CGRectGetMinY(v81);
  v82.origin.x = a3;
  v82.origin.y = a4;
  v82.size.width = a5;
  v82.size.height = a6;
  CGRectGetWidth(v82);
  sub_7664B0();
  (*(v54 + 8))(v43, v56);
  sub_23ABC0(v57);
  return sub_23AC14(&v62);
}

double ArcadeSubscribePageLayout.contentViewSize(fitting:in:)(uint64_t a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();

  return sub_4D7E78(a1, v3, ObjectType, a2, a3);
}

void ArcadeSubscribePageLayout.Metrics.detailsMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[10] = a1;
  v4[11] = a2;
  v4[12] = a3;
  v4[13] = a4;
}

void ArcadeSubscribePageLayout.Metrics.offerButtonMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[19] = a1;
  v4[20] = a2;
  v4[21] = a3;
  v4[22] = a4;
}

uint64_t ArcadeSubscribePageLayout.Metrics.buttonsSpacing.setter(__int128 *a1)
{
  sub_BEB8((v1 + 184));

  return sub_10914(a1, v1 + 184);
}

uint64_t ArcadeSubscribePageLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  sub_BEB8((v1 + 224));

  return sub_10914(a1, v1 + 224);
}

uint64_t sub_4D78D4(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v11 = sub_76A920();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v5 + 16);
  v39 = *v5;
  v40 = v15;
  v16 = *(v5 + 128);
  sub_B170((v6 + 104), v16);
  sub_33964(v16);
  sub_766700();
  v38 = v17;
  v18 = *(v12 + 8);
  v18(v14, v11);
  v41.origin.x = a2;
  v41.origin.y = a3;
  v41.size.width = a4;
  v41.size.height = a5;
  CGRectGetWidth(v41);
  v42.origin.x = a2;
  v42.origin.y = a3;
  v42.size.width = a4;
  v42.size.height = a5;
  CGRectGetHeight(v42);
  sub_B170((v6 + 184), *(v6 + 208));
  sub_7665B0();
  v20 = v19;
  v22 = v21;
  v43.origin.x = a2;
  v43.origin.y = a3;
  v43.size.width = a4;
  v43.size.height = a5;
  v23 = CGRectGetMidX(v43) + v20 * -0.5;
  v44.origin.x = a2;
  v44.origin.y = a3;
  v44.size.width = a4;
  v44.size.height = a5;
  v24 = v39 + CGRectGetMinY(v44);
  sub_B170((v6 + 184), *(v6 + 208));
  sub_769D20();
  sub_766530();
  v37 = v23;
  v45.origin.x = v23;
  v45.origin.y = v24;
  v45.size.width = v20;
  v39 = v22;
  v45.size.height = v22;
  CGRectGetMaxY(v45);
  sub_B170((v6 + 224), *(v6 + 248));
  if (sub_766540())
  {
    sub_B170((v6 + 224), *(v6 + 248));
    sub_766530();
  }

  else
  {
    v25 = *(v6 + 56);
    sub_B170((v6 + 32), v25);
    sub_33964(v25);
    sub_766700();
    v36 = v26;
    v18(v14, v11);
    v46.origin.x = a2;
    v46.origin.y = a3;
    v46.size.width = a4;
    v46.size.height = a5;
    v27 = CGRectGetWidth(v46) - *(v6 + 80) - *(v6 + 96);
    sub_B170((v6 + 224), *(v6 + 248));
    v47.origin.x = a2;
    v47.origin.y = a3;
    v47.size.width = a4;
    v47.size.height = a5;
    CGRectGetWidth(v47);
    sub_7665B0();
    if (v27 <= v28)
    {
      v27 = v28;
    }

    v48.origin.x = a2;
    v48.origin.y = a3;
    v48.size.width = a4;
    v48.size.height = a5;
    Width = CGRectGetWidth(v48);
    if (Width < v27)
    {
      v27 = Width;
    }

    v49.origin.x = a2;
    v49.origin.y = a3;
    v49.size.width = a4;
    v49.size.height = a5;
    v30 = CGRectGetMidX(v49) + v27 * -0.5;
    v50.origin.x = v37;
    v50.origin.y = v24;
    v50.size.width = v20;
    v50.size.height = v39;
    v31 = v40 + CGRectGetMaxY(v50);
    sub_B170((v6 + 224), *(v6 + 248));
    v32 = v36;
    sub_769D20();
    sub_766530();
    v51.origin.x = v30;
    v51.origin.y = v31;
    v51.size.width = v27;
    v51.size.height = v32;
    CGRectGetMaxY(v51);
  }

  sub_B170((v6 + 264), *(v6 + 288));
  v33 = sub_766540();
  sub_B170((v6 + 264), *(v6 + 288));
  if ((v33 & 1) == 0)
  {
    sub_7665B0();
    v52.origin.x = a2;
    v52.origin.y = a3;
    v52.size.width = a4;
    v52.size.height = a5;
    CGRectGetMidX(v52);
    sub_B170((v6 + 264), *(v6 + 288));
    sub_769D20();
  }

  sub_766530();
  return sub_7664B0();
}

double sub_4D7E1C(uint64_t a1, double a2, double a3)
{
  swift_getObjectType();

  return sub_4D8130(a1, v3, a2, a3);
}

double sub_4D7E78(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v9 = sub_76A920();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 80);
  v21 = *(a2 + 96);
  v22 = v13;
  sub_134D8(a2 + 112, v31);
  v14 = *(a2 + 152);
  v19 = *(a2 + 168);
  v20 = v14;
  sub_134D8(a2 + 184, &v33);
  sub_134D8(a2 + 224, &v34);
  v30[0] = v22;
  v30[1] = v21;
  v32 = v19;
  *&v31[40] = v20;
  sub_23AB64(v30, v26);
  sub_134D8(a2 + 344, &v27);
  sub_134D8(a2 + 384, &v28);
  sub_134D8(a2 + 424, &v29);
  v15 = *(a2 + 24);
  sub_B170(a2, v15);
  sub_33964(v15);
  sub_766700();
  v16 = *(v10 + 8);
  v16(v12, v9);
  sub_4D8130(a1, v26, a4, a5);
  sub_6D310(a2 + 264, &v23);
  if (v24)
  {
    sub_10914(&v23, v25);
    sub_B170(v25, v25[3]);
    sub_7665B0();
    sub_BEB8(v25);
  }

  else
  {
    sub_70550(&v23);
  }

  v17 = *(a2 + 64);
  sub_B170((a2 + 40), v17);
  sub_33964(v17);
  sub_766700();
  v16(v12, v9);
  sub_23ABC0(v26);
  sub_23AC14(v30);
  return a4;
}

double sub_4D8130(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = sub_76A920();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B170(a2 + 23, a2[26]);
  sub_7665B0();
  v10 = a2[21];
  sub_B170(a2 + 18, v10);
  sub_33964(v10);
  sub_766700();
  v11 = *(v7 + 8);
  v11(v9, v6);
  sub_B170(a2 + 28, a2[31]);
  if ((sub_766540() & 1) == 0)
  {
    v12 = a2[7];
    sub_B170(a2 + 4, v12);
    sub_33964(v12);
    sub_766700();
    v11(v9, v6);
  }

  sub_B170(a2 + 33, a2[36]);
  if ((sub_766540() & 1) == 0)
  {
    sub_B170(a2 + 33, a2[36]);
    sub_7665B0();
  }

  sub_B170(a2 + 28, a2[31]);
  if ((sub_766540() & 1) == 0)
  {
    sub_B170(a2 + 33, a2[36]);
    if ((sub_766540() & 1) == 0)
    {
      v13 = a2[16];
      sub_B170(a2 + 13, v13);
      sub_33964(v13);
      sub_766700();
      v11(v9, v6);
    }
  }

  return a3;
}

uint64_t sub_4D8478(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 464))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_4D84C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 456) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 464) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 464) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_4D8590(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 264))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_4D85D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_4D8670(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 304))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_4D86B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 304) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 304) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_4D8758(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_4D87A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_4D883C(double a1)
{
  v2 = v1;
  v4 = sub_7599A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&qword_95D3A0, qword_7A11F0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - v10;
  v40.a = 1.0;
  v41 = v2[4];
  v12 = *(v5 + 104);
  v32 = enum case for TimingCurve.easeInOut(_:);
  v36 = v4;
  v34 = v5 + 104;
  v31 = v12;
  v12(v7);
  sub_759CC0();
  sub_759CA0();
  v13 = *(v9 + 8);
  v35 = v8;
  v33 = v9 + 8;
  v30 = v13;
  v13(v11, v8);
  CGAffineTransformMakeScale(&v40, v40.a, v40.a);
  v38 = *&v40.a;
  v39 = *&v40.c;
  tx = v40.tx;
  ty = v40.ty;
  v16 = sub_4D9944(v2[2], a1);
  v37 = v2;
  v17 = *v2;
  if (*v2 >> 62)
  {
    v18 = sub_76A860();
    if (!v18)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v18 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
    if (!v18)
    {
      goto LABEL_12;
    }
  }

  if (v18 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v19 = 0;
  v20 = *(v37 + 24);
  do
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v21 = sub_76A770();
    }

    else
    {
      v21 = *(v17 + 8 * v19 + 32);
    }

    v22 = v21;
    *&v40.a = v38;
    *&v40.c = v39;
    v40.tx = tx;
    v40.ty = ty;
    [v21 setTransform:&v40];
    if (v20)
    {
      [v22 _setContinuousCornerRadius:v16];
    }

    ++v19;
  }

  while (v18 != v19);
LABEL_12:
  v40.a = 1.0;
  v41 = 0;
  v31(v7, v32, v36);
  sub_759CC0();
  v23 = v35;
  sub_759CA0();
  v30(v11, v23);
  a = v40.a;
  v25 = v37[1];
  if (v25 >> 62)
  {
    v26 = sub_76A860();
    if (!v26)
    {
      return;
    }
  }

  else
  {
    v26 = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
    if (!v26)
    {
      return;
    }
  }

  if (v26 < 1)
  {
LABEL_23:
    __break(1u);
    return;
  }

  for (i = 0; i != v26; ++i)
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      v28 = sub_76A770();
    }

    else
    {
      v28 = *(v25 + 8 * i + 32);
    }

    v29 = v28;
    [v28 setAlpha:a];
  }
}

void sub_4D8C3C()
{
  v1 = objc_opt_self();
  v2 = *v0;
  v19 = v0[1];
  v20 = v2;
  v3 = v0[2];
  v4 = swift_allocObject();
  v5 = *(v0 + 1);
  *(v4 + 16) = *v0;
  *(v4 + 32) = v5;
  *(v4 + 48) = v0[4];
  v17 = sub_4D9878;
  v18 = v4;
  aBlock = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_23F0CC;
  v16 = &unk_894740;
  v6 = _Block_copy(&aBlock);
  sub_4D9880(&v20, v12);
  sub_4D9880(&v19, v12);
  v7 = v3;

  v8 = swift_allocObject();
  v9 = *(v0 + 1);
  *(v8 + 16) = *v0;
  *(v8 + 32) = v9;
  *(v8 + 48) = v0[4];
  v17 = sub_4D993C;
  v18 = v8;
  aBlock = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_3D6D80;
  v16 = &unk_894790;
  v10 = _Block_copy(&aBlock);
  sub_4D9880(&v20, v12);
  sub_4D9880(&v19, v12);
  v11 = v7;

  [v1 animateWithDuration:v6 animations:v10 completion:0.15];
  _Block_release(v10);
  _Block_release(v6);
}

void sub_4D8E24(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >> 62)
  {
    v2 = sub_76A860();
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v3 = 0;
  v4 = *(a1 + 24);
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = sub_76A770();
    }

    else
    {
      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    v13[1] = 0;
    v13[2] = 0;
    v13[0] = 0x3FF0000000000000;
    v13[3] = 0x3FF0000000000000;
    v13[4] = 0;
    v13[5] = 0;
    [v5 setTransform:v13];
    if (v4)
    {
      [v6 _setContinuousCornerRadius:0.0];
    }

    ++v3;
  }

  while (v2 != v3);
LABEL_12:
  v7 = a1[1];
  if (v7 >> 62)
  {
    v8 = sub_76A860();
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    if (!v8)
    {
      return;
    }
  }

  if (v8 < 1)
  {
LABEL_23:
    __break(1u);
    return;
  }

  for (i = 0; i != v8; ++i)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = sub_76A770();
    }

    else
    {
      v10 = *(v7 + 8 * i + 32);
    }

    v11 = v10;
    [v10 setAlpha:1.0];
  }
}

void sub_4D8FC4(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 >> 62)
  {
    v9 = a2;
    v10 = sub_76A860();
    a2 = v9;
    v3 = v10;
    if (!v10)
    {
      return;
    }
  }

  else
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (!v3)
    {
      return;
    }
  }

  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a2 + 24);
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = sub_76A770();
        if (v5)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v6 = *(v2 + 8 * v4 + 32);
        if (v5)
        {
LABEL_10:
          v7 = v6;
          v8 = [v6 layer];
          [v8 setMaskedCorners:15];

          v6 = v8;
        }
      }

      ++v4;

      if (v3 == v4)
      {
        return;
      }
    }
  }

  __break(1u);
}

void sub_4D90C8()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    v2 = sub_76A860();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_76A770();
      }

      else
      {
        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      ++v3;
      v6[1] = 0;
      v6[2] = 0;
      v6[0] = 0x3FF0000000000000;
      v6[3] = 0x3FF0000000000000;
      v6[4] = 0;
      v6[5] = 0;
      [v4 setTransform:v6];
    }

    while (v2 != v3);
  }
}

void sub_4D91AC(unint64_t a1, unint64_t a2, double a3, double a4)
{
  v35 = sub_7599A0();
  v7 = *(v35 - 8);
  __chkstk_darwin(v35);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&qword_95D3A0, qword_7A11F0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - v12;
  if (a1 >> 62)
  {
    v14 = sub_76A860();
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_11:
    v24 = enum case for TimingCurve.easeInOut(_:);
    v22 = *(v7 + 104);
    goto LABEL_12;
  }

  v14 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v14)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v14 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v32 = a2;
  v15 = 0;
  v16 = a1;
  v33 = a1 & 0xC000000000000001;
  v34 = enum case for TimingCurve.easeInOut(_:);
  v17 = v7 + 104;
  v18 = (v11 + 8);
  v30 = v17 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v31 = v11;
  do
  {
    v23 = v14;
    if (v33)
    {
      v19 = sub_76A770();
    }

    else
    {
      v19 = *(v16 + 8 * v15 + 32);
    }

    v20 = v19;
    ++v15;
    [v19 frame];
    Height = CGRectGetHeight(v38);
    v36.a = 0.0;
    v37 = Height * a4;
    v22 = *v17;
    (*v17)(v9, v34, v35);
    sub_759CC0();
    sub_759CA0();
    (*v18)(v13, v10);
    CGAffineTransformMakeTranslation(&v36, 0.0, v36.a);
    [v20 setTransform:&v36];

    v14 = v23;
  }

  while (v23 != v15);
  v11 = v31;
  a2 = v32;
  v24 = v34;
LABEL_12:
  v36.a = 1.0;
  v37 = 0.0;
  v22(v9, v24, v35);
  sub_759CC0();
  sub_759CA0();
  (*(v11 + 8))(v13, v10);
  a = v36.a;
  if (a2 >> 62)
  {
    v26 = sub_76A860();
    if (!v26)
    {
      return;
    }
  }

  else
  {
    v26 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (!v26)
    {
      return;
    }
  }

  if (v26 < 1)
  {
LABEL_23:
    __break(1u);
    return;
  }

  for (i = 0; i != v26; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v28 = sub_76A770();
    }

    else
    {
      v28 = *(a2 + 8 * i + 32);
    }

    v29 = v28;
    [v28 setAlpha:a];
  }
}

void sub_4D957C(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = sub_76A860();
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    goto LABEL_21;
  }

  v5 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = sub_76A770();
    }

    else
    {
      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    ++v5;
    v12[1] = 0;
    v12[2] = 0;
    v12[0] = 0x3FF0000000000000;
    v12[3] = 0x3FF0000000000000;
    v12[4] = 0;
    v12[5] = 0;
    [v6 setTransform:v12];
  }

  while (v4 != v5);
LABEL_10:
  if (a2 >> 62)
  {
    v8 = sub_76A860();
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (!v8)
    {
      return;
    }
  }

  if (v8 < 1)
  {
LABEL_21:
    __break(1u);
    return;
  }

  for (i = 0; i != v8; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = sub_76A770();
    }

    else
    {
      v10 = *(a2 + 8 * i + 32);
    }

    v11 = v10;
    [v10 setAlpha:1.0];
  }
}

void sub_4D96FC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v7[4] = sub_4D9854;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_23F0CC;
  v7[3] = &unk_8946F0;
  v6 = _Block_copy(v7);

  [v4 animateWithDuration:v6 animations:0.15];
  _Block_release(v6);
}

uint64_t sub_4D9814()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_4D9860(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_4D9880(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_945390, &unk_7851E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4D98F4()
{

  return _swift_deallocObject(v0, 56, 7);
}

double sub_4D9944(void *a1, double a2)
{
  v3 = sub_7599A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&qword_95D3A0, qword_7A11F0);
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v14 - v10;
  if ([a1 userInterfaceIdiom] == &dword_0 + 1)
  {
    v12 = 0x4040000000000000;
  }

  else
  {
    [a1 displayCornerRadius];
  }

  v15 = *&v12;
  v14 = 0x4034000000000000;
  (*(v4 + 104))(v6, enum case for TimingCurve.easeInOut(_:), v3);
  sub_759CC0();
  sub_759CA0();
  (*(v8 + 8))(v11, v7);
  return v15;
}

void sub_4D9B7C(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 configurationWithTextStyle:v6];

  *a3 = v7;
}

uint64_t sub_4D9BE8()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75F5B0();
  sub_161DC(v4, qword_99E048);
  v28 = sub_BE38(v4, qword_99E048);
  if (qword_93D898 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v31 = sub_BE38(v5, qword_99F1C0);
  v6 = *(v5 - 8);
  v33 = *(v6 + 16);
  v34 = v6 + 16;
  v33(v3, v31, v5);
  v35 = enum case for FontSource.useCase(_:);
  v7 = v1 + 13;
  v36 = v1[13];
  v36(v3);
  v8 = sub_766CA0();
  v51[3] = v8;
  v51[4] = &protocol witness table for StaticDimension;
  v30 = v8;
  sub_B1B4(v51);
  v49 = v0;
  v50 = &protocol witness table for FontSource;
  v9 = sub_B1B4(v48);
  v10 = v1 + 2;
  v32 = v1[2];
  v32(v9, v3, v0);
  sub_766CB0();
  v29 = v1[1];
  v29(v3, v0);
  v11 = v33;
  v33(v3, v31, v5);
  (v36)(v3, v35, v0);
  v49 = v8;
  v50 = &protocol witness table for StaticDimension;
  sub_B1B4(v48);
  v46 = v0;
  v47 = &protocol witness table for FontSource;
  v12 = sub_B1B4(v45);
  v32(v12, v3, v0);
  v25 = v1 + 1;
  sub_766CB0();
  v13 = v29;
  v29(v3, v0);
  v27 = v5;
  v11(v3, v31, v5);
  v31 = v7;
  (v36)(v3, v35, v0);
  v46 = v30;
  v47 = &protocol witness table for StaticDimension;
  sub_B1B4(v45);
  v43 = v0;
  v44 = &protocol witness table for FontSource;
  v14 = sub_B1B4(v42);
  v26 = v10;
  v32(v14, v3, v0);
  sub_766CB0();
  v13(v3, v0);
  if (qword_93D8A8 != -1)
  {
    swift_once();
  }

  v15 = v27;
  v24 = sub_BE38(v27, qword_99F1F0);
  v33(v3, v24, v15);
  v16 = v35;
  (v36)(v3, v35, v0);
  v17 = v30;
  v43 = v30;
  v44 = &protocol witness table for StaticDimension;
  sub_B1B4(v42);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v18 = sub_B1B4(v39);
  v19 = v32;
  v32(v18, v3, v0);
  sub_766CB0();
  v20 = v29;
  v29(v3, v0);
  v40 = &type metadata for Double;
  v41 = &protocol witness table for Double;
  v39[0] = 0;
  v33(v3, v24, v15);
  (v36)(v3, v16, v0);
  v38[3] = v17;
  v38[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v21 = sub_B1B4(v37);
  v19(v21, v3, v0);
  sub_766CB0();
  v20(v3, v0);
  return sub_75F580();
}

char *sub_4DA16C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_760AD0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v15 - 8);
  v17 = &v35 - v16;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_dataTypesLabel] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_category] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_iconView] = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_93D898 != -1)
  {
    swift_once();
  }

  v18 = sub_7666D0();
  v19 = sub_BE38(v18, qword_99F1C0);
  v20 = *(v18 - 8);
  (*(v20 + 16))(v17, v19, v18);
  (*(v20 + 56))(v17, 0, 1, v18);
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.leading(_:), v11);
  v21 = objc_allocWithZone(sub_75BB20());
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_titleLabel] = sub_75BB10();
  v35.receiver = v5;
  v35.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v26 = v22;
  [v26 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v26 setClipsToBounds:0];
  v27 = OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_iconView;
  [v26 addSubview:*&v26[OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_iconView]];
  v28 = *&v26[v27];
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v29 = v28;
  v30 = sub_769FD0();
  [v29 setTintColor:v30];

  v31 = OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_titleLabel;
  [v26 addSubview:*&v26[OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_titleLabel]];
  v32 = *&v26[v31];
  v33 = sub_769FD0();
  [v32 setTextColor:v33];

  return v26;
}

id sub_4DA5B8()
{
  v1 = v0;
  v57 = sub_75EC50();
  v2 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v54 = &v51 - v5;
  __chkstk_darwin(v6);
  v56 = &v51 - v7;
  v8 = sub_760AD0();
  v52 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_93E530, &unk_77C5F0);
  *&v12 = __chkstk_darwin(v11 - 8).n128_u64[0];
  v14 = &v51 - v13;
  v15 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_titleLabel];
  v16 = OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_category;
  v17 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_category];
  if (v17)
  {

    sub_75B5E0();

    v17 = sub_769210();
  }

  [v15 setText:{v17, v12}];

  v18 = &unk_90D000;
  if (*&v1[v16])
  {
    v53 = v15;

    v19 = sub_75B600();

    if (*(v19 + 16))
    {
      v20 = OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_dataTypesLabel;
      v21 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_dataTypesLabel];
      if (v21)
      {
        goto LABEL_15;
      }

      if (qword_93D8A8 != -1)
      {
        swift_once();
      }

      v22 = sub_7666D0();
      v23 = sub_BE38(v22, qword_99F1F0);
      v24 = *(v22 - 8);
      (*(v24 + 16))(v14, v23, v22);
      (*(v24 + 56))(v14, 0, 1, v22);
      (*(v52 + 104))(v10, enum case for DirectionalTextAlignment.leading(_:), v8);
      v25 = objc_allocWithZone(sub_75BB20());
      v26 = sub_75BB10();
      v27 = *&v1[v20];
      if (v27)
      {
        [v27 removeFromSuperview];
        v28 = *&v1[v20];
      }

      else
      {
        v28 = 0;
      }

      *&v1[v20] = v26;
      v32 = v26;

      sub_BE70(0, &qword_93E540, UIColor_ptr);
      v33 = v32;
      v34 = sub_769FF0();
      [v33 setTextColor:v34];

      [v1 addSubview:v33];
      [v1 setNeedsLayout];

      v21 = *&v1[v20];
      if (v21)
      {
LABEL_15:
        v58 = v19;
        v35 = v21;
        sub_BD88(&unk_947FF0, &unk_7801F0);
        sub_5FBA8();
        sub_7691A0();

        v36 = sub_769210();

        [v35 setText:v36];
      }

      else
      {
      }

      v31 = v56;
      v30 = v57;
      v37 = *&v1[v20];
      v18 = &unk_90D000;
      if (v37)
      {
        [v37 setHidden:0];
      }

      goto LABEL_18;
    }
  }

  v29 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_dataTypesLabel];
  v31 = v56;
  v30 = v57;
  if (v29)
  {
    [v29 setHidden:1];
  }

LABEL_18:
  if (*&v1[v16])
  {

    v38 = v54;
    sub_75B5D0();

    (*(v2 + 32))(v31, v38, v30);
    v39 = v55;
    (*(v2 + 16))(v55, v31, v30);
    v40 = (*(v2 + 88))(v39, v30);
    if (v40 == enum case for PrivacyCategoryStyle.productPage(_:))
    {
      if (qword_93D898 != -1)
      {
        swift_once();
      }

      v41 = sub_7666D0();
      v42 = v41;
      v43 = qword_99F1C0;
LABEL_27:
      v44 = sub_BE38(v41, v43);
      v45 = *(v42 - 8);
      (*(v45 + 16))(v14, v44, v42);
      (*(v45 + 56))(v14, 0, 1, v42);
      sub_75BA40();
      (*(v2 + 8))(v31, v30);
      return [v1 v18[463]];
    }

    if (v40 == enum case for PrivacyCategoryStyle.detailPage(_:))
    {
      if (qword_93D8A0 != -1)
      {
        swift_once();
      }

      v41 = sub_7666D0();
      v42 = v41;
      v43 = qword_99F1D8;
      goto LABEL_27;
    }

    if (qword_93D898 != -1)
    {
      swift_once();
    }

    v46 = sub_7666D0();
    v47 = sub_BE38(v46, qword_99F1C0);
    v48 = *(v46 - 8);
    (*(v48 + 16))(v14, v47, v46);
    (*(v48 + 56))(v14, 0, 1, v46);
    sub_75BA40();
    v49 = *(v2 + 8);
    v49(v31, v30);
    v49(v55, v30);
  }

  return [v1 v18[463]];
}

uint64_t sub_4DADB0()
{
  ObjectType = swift_getObjectType();
  v2 = sub_7664F0();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_75F5D0();
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75F5B0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v26 - v13;
  v43.receiver = v0;
  v43.super_class = ObjectType;
  v29 = ObjectType;
  objc_msgSendSuper2(&v43, "layoutSubviews", v12);

  sub_4DB0F0(v15, v0, v14);

  (*(v8 + 16))(v10, v14, v7);
  v16 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_iconView];
  v41 = sub_759210();
  v42 = &protocol witness table for UIView;
  v40 = v16;
  v17 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_titleLabel];
  v18 = sub_75BB20();
  v38 = v18;
  v39 = &protocol witness table for UILabel;
  v37 = v17;
  v19 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_dataTypesLabel];
  if (v19)
  {
    v20 = &protocol witness table for UILabel;
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v33 = 0;
    v34 = 0;
  }

  v32 = v19;
  v35 = v18;
  v36 = v20;
  v21 = v16;
  v22 = v17;
  v23 = v19;
  sub_75F5C0();
  sub_75D650();
  v24 = v28;
  sub_75F560();
  (*(v30 + 8))(v24, v31);
  (*(v4 + 8))(v6, v27);
  return (*(v8 + 8))(v14, v7);
}

void sub_4DB0F0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v5 = sub_75EC50();
  v51 = *(v5 - 8);
  v52 = v5;
  __chkstk_darwin(v5);
  v49 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v46 - v8;
  __chkstk_darwin(v10);
  v50 = &v46 - v11;
  v12 = sub_76A920();
  v47 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_7664A0();
  v54 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_766CA0();
  v18 = *(v53 - 8);
  __chkstk_darwin(v53);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93D260 != -1)
  {
    swift_once();
  }

  v21 = sub_75F5B0();
  v22 = sub_BE38(v21, qword_99E048);
  (*(*(v21 - 8) + 16))(a3, v22, v21);
  v23 = sub_4DC908(a1);
  if (v23)
  {
    v24 = v23;
    [v23 size];
    sub_75F5A0();

    if (!a1)
    {
      return;
    }
  }

  else
  {
    v46 = a3;
    if (qword_93D890 != -1)
    {
      swift_once();
    }

    v25 = sub_7666D0();
    v26 = sub_BE38(v25, qword_99F1A8);
    (*(*(v25 - 8) + 16))(v17, v26, v25);
    v27 = v54;
    (*(v54 + 104))(v17, enum case for FontSource.useCase(_:), v15);
    v59 = v15;
    v60 = &protocol witness table for FontSource;
    v28 = sub_B1B4(v58);
    (*(v27 + 16))(v28, v17, v15);
    sub_766CB0();
    (*(v27 + 8))(v17, v15);
    sub_766470();
    v29 = v53;
    sub_766700();
    (*(v47 + 8))(v14, v12);
    sub_75F5A0();
    (*(v18 + 8))(v20, v29);
    if (!a1)
    {
      return;
    }
  }

  sub_75B5D0();
  v31 = v50;
  v30 = v51;
  v32 = v52;
  (*(v51 + 32))(v50, v9, v52);
  v33 = v49;
  (*(v30 + 16))(v49, v31, v32);
  v34 = (*(v30 + 88))(v33, v32);
  if (v34 == enum case for PrivacyCategoryStyle.productPage(_:))
  {
    if (qword_93D898 != -1)
    {
      swift_once();
    }

    v35 = sub_7666D0();
    v36 = v35;
    v37 = qword_99F1C0;
LABEL_17:
    v38 = sub_BE38(v35, v37);
    (*(*(v36 - 8) + 16))(v17, v38, v36);
    v39 = v54;
    (*(v54 + 104))(v17, enum case for FontSource.useCase(_:), v15);
    v59 = v53;
    v60 = &protocol witness table for StaticDimension;
    sub_B1B4(v58);
    v56 = v15;
    v57 = &protocol witness table for FontSource;
    v40 = sub_B1B4(v55);
    (*(v39 + 16))(v40, v17, v15);
    sub_766CB0();
    (*(v39 + 8))(v17, v15);
    sub_75F570();
    (*(v30 + 8))(v31, v32);
    return;
  }

  if (v34 == enum case for PrivacyCategoryStyle.detailPage(_:))
  {
    if (qword_93D8A0 != -1)
    {
      swift_once();
    }

    v35 = sub_7666D0();
    v36 = v35;
    v37 = qword_99F1D8;
    goto LABEL_17;
  }

  if (qword_93D898 != -1)
  {
    swift_once();
  }

  v41 = sub_7666D0();
  v42 = sub_BE38(v41, qword_99F1C0);
  (*(*(v41 - 8) + 16))(v17, v42, v41);
  v43 = v54;
  (*(v54 + 104))(v17, enum case for FontSource.useCase(_:), v15);
  v59 = v53;
  v60 = &protocol witness table for StaticDimension;
  sub_B1B4(v58);
  v56 = v15;
  v57 = &protocol witness table for FontSource;
  v44 = sub_B1B4(v55);
  (*(v43 + 16))(v44, v17, v15);
  sub_766CB0();
  (*(v43 + 8))(v17, v15);
  sub_75F570();
  v45 = *(v30 + 8);
  v45(v31, v32);
  v45(v33, v32);
}

double sub_4DB980(uint64_t a1, __n128 a2, double a3)
{
  v28 = sub_75F5D0();
  v5 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_75F5B0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;

  sub_4DB0F0(v15, a1, v14);

  (*(v9 + 16))(v11, v14, v8);
  v16 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_iconView);
  v38 = sub_759210();
  v39 = &protocol witness table for UIView;
  v37 = v16;
  v17 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_titleLabel);
  v18 = sub_75BB20();
  v35 = v18;
  v36 = &protocol witness table for UILabel;
  v34 = v17;
  v19 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_dataTypesLabel);
  if (v19)
  {
    v20 = &protocol witness table for UILabel;
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v30 = 0;
    v31 = 0;
  }

  v29 = v19;
  v32 = v18;
  v33 = v20;
  v21 = v16;
  v22 = v17;
  v23 = v19;
  sub_75F5C0();
  sub_75F550();
  v25 = v24;
  (*(v5 + 8))(v7, v28);
  (*(v9 + 8))(v14, v8);
  return v25;
}

void sub_4DBCC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v5 = [a1 imageWithRenderingMode:{2, a4, a5}];
  }

  else
  {
    v5 = 0;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_iconView);

    v10.value.super.isa = v5;
    v10.is_nil = 0;
    sub_7591D0(v10, v9);
  }
}

uint64_t sub_4DBE18(void *a1, void *a2, __n128 a3)
{
  v65 = sub_75F5D0();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v5;
  __chkstk_darwin(v6);
  v63 = &v49 - v7;
  v8 = sub_762D10();
  v54 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_75EC50();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_7666D0();
  v69 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_75F5B0();
  v60 = *(v68 - 8);
  __chkstk_darwin(v68);
  v55 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  v66 = a2;
  sub_4DB0F0(a1, a2, &v49 - v20);
  v59 = v21;
  sub_75F590();
  v56 = sub_7670D0();
  swift_allocObject();
  v57 = sub_7670B0();
  v67 = a1;
  sub_75B5D0();
  v22 = (*(v12 + 88))(v14, v11);
  v70 = v15;
  v58 = v8;
  if (v22 == enum case for PrivacyCategoryStyle.productPage(_:))
  {
    if (qword_93D898 != -1)
    {
      swift_once();
    }

    v23 = qword_99F1C0;
LABEL_9:
    v24 = sub_BE38(v15, v23);
    (*(v69 + 16))(v17, v24, v15);
    goto LABEL_13;
  }

  if (v22 == enum case for PrivacyCategoryStyle.detailPage(_:))
  {
    if (qword_93D8A0 != -1)
    {
      swift_once();
    }

    v23 = qword_99F1D8;
    goto LABEL_9;
  }

  if (qword_93D898 != -1)
  {
    swift_once();
  }

  v25 = sub_BE38(v15, qword_99F1C0);
  (*(v69 + 16))(v17, v25, v15);
  (*(v12 + 8))(v14, v11);
LABEL_13:
  v26 = v66;
  sub_BE70(0, &qword_93F900, UIFont_ptr);
  v27 = [v26 traitCollection];
  v28 = sub_769E10();

  sub_75B5E0();
  v29 = sub_7653B0();
  v77[3] = v29;
  v30 = sub_9BA34();
  v53 = v17;
  v51 = v30;
  v77[4] = v30;
  v31 = sub_B1B4(v77);
  v32 = *(*(v29 - 8) + 104);
  v50 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v49 = v32;
  v32(v31);
  v33 = v28;
  sub_765C30();
  sub_BEB8(v77);
  v52 = v33;
  sub_762D00();
  sub_762CE0();
  v34 = *(v54 + 8);
  v35 = v58;
  v34(v10, v58);
  if (qword_93D8A8 != -1)
  {
    swift_once();
  }

  sub_BE38(v70, qword_99F1F0);
  v36 = [v66 traitCollection];
  v37 = sub_769E10();

  v76[0] = sub_75B600();
  sub_BD88(&unk_947FF0, &unk_7801F0);
  sub_5FBA8();
  sub_7691A0();

  v76[3] = v29;
  v76[4] = v51;
  v38 = sub_B1B4(v76);
  v49(v38, v50, v29);
  v67 = v37;
  sub_765C30();
  sub_BEB8(v76);
  sub_762D00();
  sub_762CE0();
  v34(v10, v35);
  v39 = v60;
  v40 = v59;
  (*(v60 + 16))(v55, v59, v68);
  v74 = v56;
  v75 = &protocol witness table for LayoutViewPlaceholder;
  v73 = v57;
  sub_134D8(v77, v72);
  sub_134D8(v76, v71);

  v41 = v63;
  sub_75F5C0();
  v42 = v64;
  v43 = v62;
  v44 = v65;
  (*(v64 + 16))(v62, v41, v65);
  v45 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v46 = swift_allocObject();
  (*(v42 + 32))(v46 + v45, v43, v44);
  swift_allocObject();
  v47 = sub_767090();

  (*(v42 + 8))(v41, v44);
  sub_BEB8(v76);
  sub_BEB8(v77);
  (*(v69 + 8))(v53, v70);
  (*(v39 + 8))(v40, v68);
  return v47;
}

uint64_t sub_4DC804(__n128 a1)
{
  v2 = sub_75F5D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_4DC908(uint64_t a1)
{
  if (a1 && (sub_75B5C0() & 1) != 0)
  {
    if (qword_93D258 != -1)
    {
      swift_once();
    }

    v2 = &qword_957A88;
  }

  else
  {
    if (qword_93D250 == -1)
    {
      if (!a1)
      {
        return 0;
      }
    }

    else
    {
      swift_once();
      if (!a1)
      {
        return 0;
      }
    }

    v2 = &qword_957A80;
  }

  v3 = *v2;
  v4 = sub_75B5F0();
  if ((sub_765160() & 1) == 0)
  {

LABEL_13:

    return 0;
  }

  v5 = v3;
  if (sub_765190())
  {
    v6 = sub_759910();
    goto LABEL_18;
  }

  if ((sub_765180() & 1) == 0)
  {

    goto LABEL_13;
  }

  v6 = sub_56EBA8(v4, v3);
LABEL_18:
  v8 = v6;

  result = v8;
  if (!v8)
  {
    return 0;
  }

  return result;
}

uint64_t sub_4DCA4C()
{
  v1 = v0;
  v2 = sub_768FD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_768850();
  v6 = *(v18 - 8);
  __chkstk_darwin(v18);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC18ASMessagesProvider13BaseBootstrap_pendingMetricsLogger;
  v10 = sub_768780();
  swift_allocObject();
  *(v0 + v9) = sub_768770();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider13BaseBootstrap_diagnosticsRecorder;
  sub_7616E0();
  swift_allocObject();
  *(v0 + v11) = sub_7616D0();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider13BaseBootstrap_pendingEvents) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider13BaseBootstrap_inAppMessagesMetricsEventRecorder) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider13BaseBootstrap_isBootstrapping) = 0;
  sub_BD88(&qword_957CD0, &unk_7A12C0);
  v12 = swift_allocObject();
  v13 = *(v1 + v9);
  *(v12 + 16) = xmmword_77E280;
  *(v12 + 56) = v10;
  *(v12 + 64) = &protocol witness table for ReplayLogger;
  *(v12 + 32) = v13;
  v14 = qword_93DEE8;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = sub_BE38(v2, qword_9A03E8);
  (*(v3 + 16))(v5, v15, v2);
  *(v12 + 96) = sub_768FF0();
  *(v12 + 104) = &protocol witness table for OSLogger;
  sub_B1B4((v12 + 72));
  sub_768FE0();
  sub_768840();
  (*(v6 + 32))(v1 + OBJC_IVAR____TtC18ASMessagesProvider13BaseBootstrap_logger, v8, v18);
  return v1;
}

void sub_4DCD88(uint64_t a1)
{
  v18 = a1;
  v17 = sub_768CD0();
  v2 = *(v17 - 8);
  __chkstk_darwin(v17);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_768670();
  v5 = *(v16 - 8);
  __chkstk_darwin(v16);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC18ASMessagesProvider13BaseBootstrap_pendingEvents;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (!(v9 >> 62))
  {
    if (!*(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
    {
      return;
    }

LABEL_3:
    v10 = *(v1 + v8);
    if (v10 >> 62)
    {
      v11 = sub_76A860();
      if (v11)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v11 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
      if (v11)
      {
LABEL_5:
        if (v11 < 1)
        {
          __break(1u);
          return;
        }

        v14 = v8;
        v15 = v1;
        v12 = (v5 + 8);

        v13 = 0;
        do
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            sub_76A770();
          }

          else
          {
          }

          ++v13;
          sub_759D10();
          sub_768CB0();
          sub_768930();

          (*(v2 + 8))(v4, v17);
          (*v12)(v7, v16);
        }

        while (v11 != v13);

        v8 = v14;
        v1 = v15;
      }
    }

    *(v1 + v8) = _swiftEmptyArrayStorage;

    return;
  }

  if (sub_76A860())
  {
    goto LABEL_3;
  }
}

double sub_4DD028@<D0>(uint64_t a1@<X8>)
{
  v19[2] = a1;
  v1 = sub_75A940();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&qword_957CE8, &qword_7A12D0);
  __chkstk_darwin(v5 - 8);
  v7 = v19 - v6;
  v8 = sub_768E60();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_75A980();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C7D8 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v8, qword_99BCF8);
  (*(v9 + 16))(v11, v16, v8);
  v17 = sub_75B9E0();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  v19[6] = &type metadata for ModernAppStateControllerFactory;
  v19[7] = sub_4E0164();
  (*(v2 + 104))(v4, enum case for ASKBootstrapV2.TargetType.app(_:), v1);
  sub_75A950();
  swift_allocObject();
  swift_weakInit();

  sub_75A960();

  (*(v13 + 8))(v15, v12);

  return result;
}

uint64_t sub_4DD388@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_768E70();
  __chkstk_darwin(v3);
  v4 = sub_75EC10();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_768880();
  sub_75EC00();
  v8 = type metadata accessor for InAppMessagesMetricsEventRecorder();
  v9 = swift_allocObject();
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 32) = sub_75EBE0();
  *(v9 + 40) = v10;
  sub_47160(0, 0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC18ASMessagesProvider13BaseBootstrap_inAppMessagesMetricsEventRecorder) = v9;
  }

  a2[3] = v8;
  a2[4] = sub_4E01F8(&qword_957D30, type metadata accessor for InAppMessagesMetricsEventRecorder, &protocol conformance descriptor for InAppMessagesMetricsEventRecorder);
  *a2 = v9;
  return (*(v5 + 8))(v7, v4);
}

void sub_4DD590(__n128 a1)
{
  v2 = sub_75A980();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + OBJC_IVAR____TtC18ASMessagesProvider13BaseBootstrap_isBootstrapping) & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC18ASMessagesProvider13BaseBootstrap_isBootstrapping) = 1;
    (*(*v1 + 360))(v4);
    sub_4DD028(v6);
    sub_75A970();
    v7 = sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
    swift_retain_n();
    v8 = sub_769970();
    v10[3] = v7;
    v10[4] = &protocol witness table for OS_dispatch_queue;
    v10[0] = v8;
    sub_768F10();

    sub_BEB8(v10);
    sub_757FE0();
    sub_757FD0();
    (*(v3 + 8))(v6, v2);
  }
}

void sub_4DD754(uint64_t a1, __n128 a2)
{
  sub_75C480();
  sub_75C440();
  v3 = OBJC_IVAR____TtC18ASMessagesProvider13BaseBootstrap_pendingEvents;
  swift_beginAccess();
  sub_769440();
  if (*(&dword_10 + (*(a1 + v3) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(a1 + v3) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();
  swift_endAccess();
  sub_4DD590(v4);
}

double sub_4DD81C(uint64_t *a1, uint64_t a2)
{
  sub_4DD930(*a1);
  v3 = (*(*a2 + 328))();
  sub_7688A0();
  sub_75B450();
  sub_768900();
  sub_768ED0();
  sub_4DECB4(v3, v5);

  return result;
}

uint64_t sub_4DD930(uint64_t a1)
{
  v53 = sub_7684B0();
  v47 = *(v53 - 8);
  v48 = (v53 - 8);
  v49 = v47;
  __chkstk_darwin(v53 - 8);
  v52 = &v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_762F60();
  v60 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_763550();
  v59 = *(v54 - 8);
  __chkstk_darwin(v54);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7687D0();
  __chkstk_darwin(v5);
  v45 = sub_75A110();
  sub_760130();
  sub_768880();
  v56 = sub_75A080();
  sub_BE70(0, &qword_957CF0, ASKLoadAvatarResourceOperation_ptr);
  sub_75A100();
  sub_4E01F8(&qword_957CF8, &type metadata accessor for MetricsLogger.Configuration, &protocol conformance descriptor for MetricsLogger.Configuration);
  sub_768EC0();
  v44 = sub_75DF90();
  swift_allocObject();
  v55 = sub_75DFA0();
  sub_75DF80();
  sub_75DF70();
  sub_75A920();
  sub_768900();
  sub_768ED0();
  v51 = v64;
  sub_75A780();
  v6 = sub_BE70(0, &qword_959CF0, ACAccountStore_ptr);
  sub_768ED0();
  v7 = v64;
  v8 = [objc_opt_self() sharedInstance];
  v65 = sub_BE70(0, &qword_957D00, ASDSubscriptionEntitlements_ptr);
  v66 = &protocol witness table for ASDSubscriptionEntitlements;
  v64 = v8;
  v62 = v6;
  v63 = &protocol witness table for ACAccountStore;
  v61 = v7;
  v42 = sub_761230();
  v9 = objc_allocWithZone(v42);
  v50 = v7;
  v10 = sub_7611C0();
  v11 = v4;
  v43 = v4;
  sub_763540();
  sub_BD88(&unk_944300, &qword_77DEE0);
  sub_768ED0();
  v46 = v64;
  v40 = v10;
  swift_unknownObjectRetain();
  v12 = v57;
  sub_762F50();
  sub_BD88(&qword_957D08, &unk_7A12D8);
  v13 = (sub_BD88(&qword_9454E0, &qword_7852F0) - 8);
  v14 = (*(*v13 + 80) + 32) & ~*(*v13 + 80);
  v15 = swift_allocObject();
  v41 = xmmword_77B6D0;
  *(v15 + 16) = xmmword_77B6D0;
  v16 = v15 + v14;
  v17 = (v16 + v13[14]);
  sub_768E00();
  v18 = v58;
  v17[3] = v58;
  v17[4] = sub_4E01F8(&qword_957D10, &type metadata accessor for ArcadeButtonNameFieldsProvider, &protocol conformance descriptor for ArcadeButtonNameFieldsProvider);
  v19 = sub_B1B4(v17);
  (*(v60 + 16))(v19, v12, v18);
  sub_10F020(v15);
  swift_setDeallocating();
  sub_10A2C(v16, &qword_9454E0, &qword_7852F0);
  swift_deallocClassInstance();
  sub_BD88(&qword_957D18, &qword_7A12E8);
  v20 = (sub_BD88(&qword_9454D0, &qword_7852E0) - 8);
  v21 = (*(*v20 + 80) + 32) & ~*(*v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v41;
  v23 = v22 + v21;
  v24 = (v23 + v20[14]);
  sub_768DC0();
  v25 = v54;
  v24[3] = v54;
  v24[4] = sub_4E01F8(&qword_957D20, &type metadata accessor for ArcadeSubscriptionFieldsProvider, &protocol conformance descriptor for ArcadeSubscriptionFieldsProvider);
  v26 = sub_B1B4(v24);
  (*(v59 + 16))(v26, v11, v25);
  sub_10F210(v22);
  swift_setDeallocating();
  sub_10A2C(v23, &qword_9454D0, &qword_7852E0);
  swift_deallocClassInstance();
  v27 = sub_768920();

  v28 = [objc_allocWithZone(type metadata accessor for EventStoreManager()) init];
  *&v41 = v27;

  sub_768910();
  sub_BD88(&qword_94DC10, &qword_791AD0);
  v29 = v49;
  v30 = swift_allocObject();
  v30[1] = xmmword_784250;
  v64 = v56;

  sub_768490();
  sub_758140();
  v64 = sub_758130();
  sub_768490();
  v64 = v55;

  sub_768490();
  v64 = v40;
  v45 = v40;
  sub_768490();
  v64 = v28;
  v48 = v28;
  sub_768490();
  v64 = v30;
  sub_BD88(&qword_957CD8, &qword_7B15C0);
  sub_1A93C4(&qword_957CE0, &qword_957CD8, &qword_7B15C0);
  sub_7688D0();

  sub_7688A0();
  v64 = [objc_allocWithZone(sub_760FC0()) init];
  v47 = v64;
  v31 = v52;
  sub_768490();
  sub_7688C0();

  v32 = v29[1];
  v33 = v53;
  v32(v31, v53);
  sub_758900();
  swift_allocObject();
  v34 = v45;

  v64 = sub_7588C0();

  sub_768490();
  sub_7688C0();

  v32(v31, v33);
  v35 = objc_allocWithZone(sub_758400());

  v64 = sub_7583F0();
  v36 = v64;
  sub_768490();
  v37 = sub_7688C0();

  swift_unknownObjectRelease();

  v32(v31, v33);
  (*(v60 + 8))(v57, v58);
  (*(v59 + 8))(v43, v54);
  return v37;
}

uint64_t sub_4DE4C8(uint64_t a1)
{
  v2 = sub_768380();
  v13 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_7683C0();
  v5 = *(v12 - 8);
  __chkstk_darwin(v12);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  v8 = sub_769970();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  aBlock[4] = sub_4E015C;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_894858;
  v10 = _Block_copy(aBlock);
  swift_errorRetain();

  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_4E01F8(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_BD88(&qword_940350, &unk_77F850);
  sub_1A93C4(&qword_9406F0, &qword_940350, &unk_77F850);
  sub_76A5A0();
  sub_769980();
  _Block_release(v10);

  (*(v13 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v12);
}

double sub_4DE7AC(uint64_t a1)
{
  type metadata accessor for DebugNotificationCenter();
  inited = swift_initStaticObject();
  swift_getErrorValue();
  v2 = sub_76A9C0();
  v4 = v3;
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = sub_38EE8C();

  if (v6)
  {
    sub_59ABF4();
    v7 = *(inited + 24);
    if (v7)
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      v8 = v7;
      isa = sub_76A120(1.0, 0.23137, 0.18824, 0.5).super.isa;
      sub_59A6A0(v2, v4, isa, 0, 0, 3.0);
    }
  }

  return result;
}

uint64_t sub_4DE8E0(uint64_t a1)
{
  v2 = sub_768380();
  v19 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7683C0();
  v17 = *(v5 - 8);
  v18 = v5;
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7684F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  v11 = sub_769970();
  (*(v9 + 16))(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  aBlock[4] = sub_4E00AC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_894808;
  v14 = _Block_copy(aBlock);

  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_4E01F8(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_BD88(&qword_940350, &unk_77F850);
  sub_1A93C4(&qword_9406F0, &qword_940350, &unk_77F850);
  sub_76A5A0();
  sub_769980();
  _Block_release(v14);

  (*(v19 + 8))(v4, v2);
  return (*(v17 + 8))(v7, v18);
}

double sub_4DEC74(uint64_t a1)
{
  type metadata accessor for DebugNotificationCenter();
  swift_initStaticObject();
  return sub_5986A0(a1, v2);
}

void sub_4DECB4(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v34 = a1;
  v3 = sub_768D20();
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&qword_957CE8, &qword_7A12D0);
  __chkstk_darwin(v5 - 8);
  v39 = &v30 - v6;
  v36 = sub_768E70();
  __chkstk_darwin(v36);
  v37 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_7572A0();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_768940();
  v40 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v30 - v15;
  sub_75A920();
  sub_768900();
  sub_768ED0();
  v17 = v41;
  v18 = v2;
  swift_unknownObjectWeakLoadStrong();
  sub_75B440();
  sub_7625F0();
  v19 = sub_7625E0();
  sub_75A7F0();
  sub_7625D0();

  v20 = [objc_opt_self() standardUserDefaults];
  v38 = v17;
  v21 = sub_75A7B0();
  v22 = sub_769210();
  [v20 setBool:v21 & 1 forKey:v22];

  v23 = v18;
  v24 = v34;

  sub_768ED0();
  sub_4DCD88(v16);
  sub_75FEC0();
  sub_757290();
  sub_757270();
  (*(v8 + 8))(v10, v35);
  sub_75FEB0();
  (*(v40 + 16))(v13, v16, v11);
  sub_761FE0();
  swift_allocObject();
  sub_761FC0();
  sub_761230();
  sub_768ED0();
  v25 = v41;
  swift_retain_n();
  sub_7611A0();

  sub_75F150();
  sub_7688F0();
  v26 = v41;
  if (v41)
  {
    sub_75F140();
  }

  sub_75E0C0();
  sub_768ED0();
  v27 = sub_75B9E0();
  (*(*(v27 - 8) + 56))(v39, 1, 1, v27);
  sub_BD88(&qword_94CE68, &qword_790C60);
  sub_768ED0();
  v28 = sub_75E0B0();
  (*(*v23 + 368))(v24, v28);
  sub_75A7C0();
  sub_758160();

  sub_768D40();
  sub_7688F0();
  if (v41)
  {

    v29 = v31;
    sub_768D10();
    sub_768D30();

    (*(v32 + 8))(v29, v33);
    (*(v40 + 8))(v16, v11);
  }

  else
  {
    (*(v40 + 8))(v16, v11);
  }

  *(v23 + OBJC_IVAR____TtC18ASMessagesProvider13BaseBootstrap_isBootstrapping) = 0;
}

uint64_t sub_4DF354(uint64_t a1)
{
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  swift_getErrorValue();
  v7[3] = v6;
  v3 = sub_B1B4(v7);
  (*(*(v6 - 8) + 16))(v3);
  sub_7685C0();
  sub_10A2C(v7, &unk_93FBD0, &qword_77DFA0);
  sub_768850();
  sub_768EA0();

  sub_75BE60();
  swift_allocObject();
  swift_errorRetain();
  sub_75BE50();
  v4 = OBJC_IVAR____TtC18ASMessagesProvider13BaseBootstrap_pendingEvents;
  swift_beginAccess();
  sub_769440();
  if (*(&dword_10 + (*(v1 + v4) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v1 + v4) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();
  swift_endAccess();
  sub_758150();
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider13BaseBootstrap_isBootstrapping) = 0;
  return (*(*v1 + 376))(a1);
}

uint64_t sub_4DF5E4(uint64_t a1)
{
  v3 = sub_768E70();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7684B0();
  v8 = *(v7 - 8);
  v49 = v7;
  v50 = v8;
  __chkstk_darwin(v7);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v47 = &v44 - v11;
  __chkstk_darwin(v12);
  v46 = &v44 - v13;
  __chkstk_darwin(v14);
  v16 = &v44 - v15;
  v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider13BaseBootstrap_inAppMessagesMetricsEventRecorder];
  v51 = a1;
  if (v17)
  {
    v18 = *(*v1 + 144);

    v45 = v1;
    v20 = v18(v19);
    type metadata accessor for InAppMessagesManager();
    swift_allocObject();

    v22 = sub_B6740(v21, v20, v17);

    v52 = v22;

    sub_768490();
    v23 = sub_7B350(0, 1, 1, _swiftEmptyArrayStorage);
    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    if (v25 >= v24 >> 1)
    {
      v23 = sub_7B350((v24 > 1), v25 + 1, 1, v23);
    }

    v26 = v49;

    *(v23 + 2) = v25 + 1;
    (*(v50 + 32))(v23 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v25, v16, v26);
    v1 = v45;
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
    v26 = v49;
  }

  sub_768900();
  sub_768ED0();
  v27 = (*(*v1 + 272))(v6);
  (*(v4 + 8))(v6, v3);
  if (v27)
  {
    sub_75F150();
    v52 = v27;
    v28 = v27;
    v29 = v46;
    sub_768490();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_7B350(0, *(v23 + 2) + 1, 1, v23);
    }

    v31 = *(v23 + 2);
    v30 = *(v23 + 3);
    if (v31 >= v30 >> 1)
    {
      v23 = sub_7B350((v30 > 1), v31 + 1, 1, v23);
    }

    *(v23 + 2) = v31 + 1;
    v32 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v33 = *(v50 + 72);
    v46 = *(v50 + 32);
    (v46)(v23 + v32 + v33 * v31, v29, v26);
    v34 = sub_75F130();
    if (v34)
    {
      v35 = v34;
      v45 = v28;
      sub_761060();
      swift_allocObject();

      v36 = v35;
      v52 = sub_760FE0();

      sub_768490();
      v38 = *(v23 + 2);
      v37 = *(v23 + 3);
      if (v38 >= v37 >> 1)
      {
        v23 = sub_7B350((v37 > 1), v38 + 1, 1, v23);
      }

      v26 = v49;

      *(v23 + 2) = v38 + 1;
      (v46)(v23 + v32 + v38 * v33, v47, v26);
    }

    else
    {
    }
  }

  sub_BE70(0, &qword_959CF0, ACAccountStore_ptr);
  sub_768ED0();
  sub_75A920();
  sub_768ED0();
  sub_75C380();
  swift_allocObject();
  v52 = sub_75C370();

  v39 = v48;
  sub_768490();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_7B350(0, *(v23 + 2) + 1, 1, v23);
  }

  v41 = *(v23 + 2);
  v40 = *(v23 + 3);
  if (v41 >= v40 >> 1)
  {
    v23 = sub_7B350((v40 > 1), v41 + 1, 1, v23);
  }

  *(v23 + 2) = v41 + 1;
  (*(v50 + 32))(v23 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v41, v39, v26);
  v52 = v23;
  sub_BD88(&qword_957CD8, &qword_7B15C0);
  sub_1A93C4(&qword_957CE0, &qword_957CD8, &qword_7B15C0);
  v42 = sub_7688D0();

  return v42;
}

void sub_4DFCB0(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  sub_76A730(43);

  v4._countAndFlagsBits = sub_76A740();
  sub_769370(v4);

  v5._countAndFlagsBits = 0xD000000000000017;
  v5._object = 0x80000000007E50B0;
  sub_769370(v5);
  v6._countAndFlagsBits = sub_76AAA0();
  sub_769370(v6);

  sub_76A840();
  __break(1u);
}

uint64_t sub_4DFE10()
{
  sub_13238(v0 + 16);
  v1 = OBJC_IVAR____TtC18ASMessagesProvider13BaseBootstrap_logger;
  v2 = sub_768850();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BaseBootstrap(uint64_t a1)
{
  result = qword_957B20;
  if (!qword_957B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4DFF48(uint64_t a1, __n128 a2)
{
  result = sub_768850();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_4E0024(__n128 a1)
{
  v2 = sub_7684F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

double sub_4E00AC(__n128 a1)
{
  v2 = *(sub_7684F0() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_4DEC74(v3);
}

double sub_4E010C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_4E0124()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_4E0164()
{
  result = qword_957D28;
  if (!qword_957D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_957D28);
  }

  return result;
}

uint64_t sub_4E01B8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4E01F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_4E0248(uint64_t a1)
{
  v130 = a1;
  v1 = sub_768C60();
  v128 = *(v1 - 8);
  v129 = v1;
  __chkstk_darwin(v1);
  v127 = &v120 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_7652D0();
  __chkstk_darwin(v3 - 8);
  v126 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_760AD0();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v125 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_759950();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&qword_945020, qword_784B20);
  __chkstk_darwin(v7 - 8);
  v9 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v120 - v11;
  v13 = sub_7666D0();
  v131 = *(v13 - 8);
  v132 = v13;
  __chkstk_darwin(v13);
  v15 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v120 - v17;
  v19 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v19 - 8);
  v21 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v120 - v23;
  __chkstk_darwin(v25);
  v27 = &v120 - v26;
  __chkstk_darwin(v28);
  v30 = &v120 - v29;
  v31 = type metadata accessor for Accessory(0);
  __chkstk_darwin(v31);
  v33 = (&v120 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_45DEEC(v133, v33);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        v87 = objc_allocWithZone(type metadata accessor for SearchButton(0));

        sub_48D688(v88);
        return;
      }

      if (EnumCaseMultiPayload != 9)
      {
        v104 = v121;
        v105 = v120;
        v106 = v122;
        (*(v121 + 104))(v120, enum case for SystemImage.chevronForward(_:), v122);
        v107 = sub_759930();
        (*(v104 + 8))(v105, v106);
        v108 = [v107 imageWithRenderingMode:2];

        v109 = [objc_allocWithZone(UIImageView) initWithImage:v108];
        sub_BE70(0, &qword_93E540, UIColor_ptr);
        v110 = sub_76A020();
        [v109 setTintColor:v110];

        return;
      }

      v47 = objc_opt_self();
      v48 = sub_769210();
      v49 = [v47 kitImageNamed:v48];

      if (!v49)
      {
        __break(1u);
        return;
      }

      v50 = [v49 imageWithRenderingMode:2];

      v51 = [v50 imageFlippedForRightToLeftLayoutDirection];
      v52 = [objc_allocWithZone(UIImageView) initWithImage:v51];
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      isa = sub_76A120(0.82098, 0.82153, 0.83748, 1.0).super.isa;
      [v52 setTintColor:isa];
    }

    else if (EnumCaseMultiPayload == 5)
    {
      v79 = v33[1];
      if (qword_93D4C8 != -1)
      {
        swift_once();
      }

      v80 = v132;
      v81 = sub_BE38(v132, qword_99E668);
      v82 = v131;
      (*(v131 + 16))(v21, v81, v80);
      (*(v82 + 56))(v21, 0, 1, v80);
      (*(v123 + 104))(v125, enum case for DirectionalTextAlignment.trailing(_:), v124);
      v83 = objc_allocWithZone(sub_75BB20());
      v84 = sub_75BB10();
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      v85 = v84;
      v86 = sub_769FF0();
      [v85 setTextColor:v86];

      if (v79)
      {
        v51 = sub_769210();
      }

      else
      {
        v51 = 0;
      }

      [v85 setText:v51];
    }

    else
    {
      if (EnumCaseMultiPayload == 6)
      {
        v35 = v33[1];
        v36 = v33[2];
        sub_759210();
        v37 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        sub_765140();
        sub_765330();
        sub_7652E0();
        sub_7591B0();
        [v37 setContentMode:sub_765140()];
        sub_75DEF0();
        sub_7591F0();
        if (!sub_7651A0())
        {
          sub_BE70(0, &qword_93E540, UIColor_ptr);
          sub_76A030();
        }

        sub_759070();
        v38 = sub_759150();
        *(v39 + 16) = v35;
        *(v39 + 24) = v36;
        v38(&v134, 0);
        v40 = [objc_opt_self() clearColor];
        sub_759070();
        memset(&v134, 0, 32);
        memset(v135, 0, 32);
        v41 = v37;
        v42 = v127;
        sub_768C30();
        sub_10A2C(v135, &unk_93FBD0, &qword_77DFA0);
        sub_10A2C(&v134, &unk_93FBD0, &qword_77DFA0);
        sub_769E70();
        (*(v128 + 8))(v42, v129);
        sub_75A110();
        sub_768900();
        sub_768ED0();
        sub_4E474C(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
        sub_75A050();

        return;
      }

      v51 = v33[2];
      v96 = v33[4];
      v97 = v33[6];
      v98 = [objc_opt_self() configurationWithFont:v51 scale:v33[3]];
      v99 = sub_769210();

      v100 = [objc_opt_self() systemImageNamed:v99 withConfiguration:v98];

      v101 = [objc_opt_self() buttonWithType:0];
      [v101 setPreferredSymbolConfiguration:v98 forImageInState:0];
      [v101 setImage:v100 forState:0];
      [v101 setTintColor:v96];
      v102 = v101;
      if (v97)
      {
        v103 = sub_769210();
      }

      else
      {
        v103 = 0;
      }

      [v101 setAccessibilityLabel:v103];
    }

LABEL_65:

    return;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v54 = v33[1];
      v55 = v33[2];

      v56 = [objc_allocWithZone(type metadata accessor for HeaderButton(0)) init];
      sub_75D600();

      v57 = v56;
      if (v54)
      {
        v58 = sub_769210();
      }

      else
      {
        v58 = 0;
      }

      [v56 setTitle:v58 forState:0];

      if (v55)
      {
        [v56 setTintColor:v55];

        return;
      }

      sub_BE70(0, &qword_93E540, UIColor_ptr);
      v51 = sub_76A0F0();
      [v56 setTintColor:v51];

      goto LABEL_65;
    }

    v92 = v33[1];
    v93 = sub_BD88(&qword_957F00, qword_7A1460);
    sub_109C4(v33 + *(v93 + 48), v30, &unk_93E530, &unk_77C5F0);
    v94 = [objc_allocWithZone(type metadata accessor for HeaderButton(0)) init];
    sub_75D600();

    if (v92)
    {
      v95 = sub_769210();
    }

    else
    {
      v95 = 0;
    }

    v113 = v131;
    v112 = v132;
    v114 = v24;
    [v94 setTitle:v95 forState:0];

    sub_1ED18(v30, v24, &unk_93E530, &unk_77C5F0);
    v115 = *(v113 + 48);
    if (v115(v24, 1, v112) == 1)
    {
      v116 = qword_93D4C0;
      v117 = v94;
      if (v116 != -1)
      {
        swift_once();
      }

      v118 = sub_BE38(v112, qword_99E650);
      (*(v113 + 16))(v27, v118, v112);
      if (v115(v114, 1, v112) != 1)
      {
        sub_10A2C(v114, &unk_93E530, &unk_77C5F0);
      }
    }

    else
    {
      (*(v113 + 32))(v27, v24, v112);
      v119 = v94;
    }

    (*(v113 + 56))(v27, 0, 1, v112);
    sub_75C540();

    sub_10A2C(v30, &unk_93E530, &unk_77C5F0);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v59 = v18;
    v60 = v33[2];
    v61 = *(v33 + 3);
    type metadata accessor for HeaderButton(0);
    v62 = qword_93C5D8;
    v63 = v60;
    if (v62 != -1)
    {
      swift_once();
    }

    v64 = v132;
    v65 = sub_BE38(v132, qword_948188);
    v66 = *(v131 + 16);
    v66(v18, v65, v64);
    v66(v15, v18, v64);
    v67 = sub_75C550();
    *&v67[qword_9481A8] = v61;
    v68 = v67;
    v69 = [v68 traitCollection];
    v70 = sub_7699F0();

    v71 = v68;
    v72 = v71;
    if (v70)
    {
      v73 = v61;
    }

    else
    {
      v73 = 0.0;
    }

    if (v70)
    {
      v74 = 0.0;
    }

    else
    {
      v74 = v61;
    }

    if (v70)
    {
      v75 = -v61;
    }

    else
    {
      v75 = v61;
    }

    if ((v70 & 1) == 0)
    {
      v61 = -v61;
    }

    [v71 setContentEdgeInsets:{0.0, v74, 0.0, v73}];
    [v72 setImageEdgeInsets:{0.0, v61, 0.0, v75}];
    v76 = sub_769210();

    [v72 setTitle:v76 forState:0];

    [v72 setImage:v63 forState:0];
    CGAffineTransformMakeScale(&v134, -1.0, 1.0);
    [v72 setTransform:&v134];

    v77 = [v72 titleLabel];
    if (v77)
    {
      CGAffineTransformMakeScale(&v134, -1.0, 1.0);
      [v77 setTransform:&v134];
    }

    v78 = [v72 imageView];

    if (v78)
    {
      CGAffineTransformMakeScale(&v134, -1.0, 1.0);
      [v78 setTransform:&v134];

      (*(v131 + 8))(v59, v132);
    }

    else
    {
      (*(v131 + 8))(v59, v132);
    }

    v111 = v72;
    sub_75D600();
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v43 = *v33;
    v44 = sub_BD88(&qword_942CC8, &unk_782620);
    sub_109C4(v33 + *(v44 + 48), v12, &qword_945020, qword_784B20);
    sub_1ED18(v12, v9, &qword_945020, qword_784B20);
    v45 = objc_allocWithZone(type metadata accessor for AccountButton(0));
    v46 = v130;

    sub_44B150(v43, v9, v46);

    sub_10A2C(v12, &qword_945020, qword_784B20);
  }

  else
  {
    v89 = *v33;
    v90 = v33[1];
    v91 = objc_allocWithZone(type metadata accessor for CountBadgeView());
    sub_293654(1, v89, v90);
  }
}

void sub_4E1514(void *a1)
{
  v2 = v1;
  v42 = a1;
  v3 = sub_767030();
  v37 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v37 - v7;
  __chkstk_darwin(v9);
  v10 = sub_766D70();
  v40 = *(v10 - 8);
  v41 = v10;
  __chkstk_darwin(v10);
  v38 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_759950();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Accessory(0);
  __chkstk_darwin(v16);
  v18 = (&v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = v2;
  sub_45DEEC(v2, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 8)
  {
    if (EnumCaseMultiPayload == 10)
    {
      (*(v13 + 104))(v15, enum case for SystemImage.chevronForward(_:), v12);
      v36 = sub_759930();
      (*(v13 + 8))(v15, v12);
      [v36 size];

      return;
    }

    if (EnumCaseMultiPayload != 9)
    {
      goto LABEL_11;
    }

    v28 = objc_opt_self();
    v29 = sub_769210();
    v30 = [v28 kitImageNamed:v29];

    if (!v30)
    {
      __break(1u);
      return;
    }

    [v30 size];
LABEL_15:

    return;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v33 = *v18;
    v34 = v18[1];
    v35 = objc_allocWithZone(type metadata accessor for CountBadgeView());
    v30 = sub_293654(1, v33, v34);
    [v30 sizeThatFits:{0.0, 0.0}];
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 5)
  {
    sub_767020();
    if (qword_93D4C8 != -1)
    {
      swift_once();
    }

    v20 = sub_7666D0();
    sub_BE38(v20, qword_99E668);
    sub_766FF0();
    v21 = *(v37 + 8);
    v21(v5, v3);
    sub_767010();
    v21(v8, v3);
    sub_766D50();
    v22 = v38;
    sub_766D90();
    sub_7671D0();
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_77D9F0;
    v24 = v42;
    *(v23 + 32) = v42;
    v25 = v24;
    v26 = sub_7671E0();
    v27 = v41;
    sub_7665A0();

    (*(v40 + 8))(v22, v27);
    return;
  }

LABEL_11:
  if (qword_93DEF0 != -1)
  {
    swift_once();
  }

  v31 = sub_768FF0();
  sub_BE38(v31, qword_9A0400);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77DC20;
  sub_768540();
  v43[3] = v16;
  v32 = sub_B1B4(v43);
  sub_45DEEC(v39, v32);
  sub_7685C0();
  sub_10A2C(v43, &unk_93FBD0, &qword_77DFA0);
  sub_768540();
  sub_768E90();

  sub_30984(v18);
}

uint64_t sub_4E1BD4(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v42 = a2;
  v5 = type metadata accessor for Accessory(0);
  v44 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = a3 >> 62;
  if (a3 >> 62)
  {
    goto LABEL_50;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); ; i = sub_76A860())
  {
    v13 = a1 >> 62;
    if (a1 >> 62)
    {
      if (i != sub_76A860())
      {
        return 0;
      }
    }

    else if (i != *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      return 0;
    }

    v31 = a1;
    if (v11)
    {
      break;
    }

    v14 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      return 1;
    }

LABEL_9:
    v15 = 0;
    v39 = a3 & 0xFFFFFFFFFFFFFF8;
    v40 = a3 & 0xC000000000000001;
    v11 = v31 & 0xFFFFFFFFFFFFFF8;
    if (v31 < 0)
    {
      v16 = v31;
    }

    else
    {
      v16 = v31 & 0xFFFFFFFFFFFFFF8;
    }

    v32 = v16;
    v33 = v31 & 0xFFFFFFFFFFFFFF8;
    v37 = v31 & 0xC000000000000001;
    v38 = a3 + 32;
    v35 = a1 >> 62;
    v36 = v31 + 32;
    v30 = a3;
    v34 = v14;
    while (1)
    {
      if (v40)
      {
        v43 = sub_76A770();
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v15 >= *(v39 + 16))
        {
          goto LABEL_48;
        }

        v43 = *(v38 + 8 * v15);

        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_47;
        }
      }

      if (v13)
      {
        v18 = sub_76A860();
      }

      else
      {
        v18 = *(v11 + 16);
      }

      if (v15 == v18)
      {

        return 1;
      }

      v41 = v17;
      if (v37)
      {
        v19 = sub_76A770();
      }

      else
      {
        if (v15 >= *(v11 + 16))
        {
          goto LABEL_49;
        }

        v19 = *(v36 + 8 * v15);
      }

      v20 = v42;
      a1 = v43;
      v21 = (*(v43 + 16))(v42);
      if (v21 != (*(v19 + 16))(v20) || (v22 = *(a1 + 32), v23 = *(v19 + 32), v11 = *(v22 + 16), v11 != *(v23 + 16)))
      {
LABEL_40:

        return 0;
      }

      if (v11 && v22 != v23)
      {
        break;
      }

LABEL_34:
      v15 = v41;
      v13 = v35;
      v11 = v33;
      if (v41 == v34)
      {
        return 1;
      }
    }

    a1 = 0;
    v24 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    a3 = v22 + v24;
    v25 = v23 + v24;
    while (a1 < *(v22 + 16))
    {
      v26 = *(v44 + 72) * a1;
      sub_45DEEC(a3 + v26, v10);
      if (a1 >= *(v23 + 16))
      {
        goto LABEL_46;
      }

      sub_45DEEC(v25 + v26, v7);
      v27 = sub_4E32FC(v10, v7);
      sub_30984(v7);
      sub_30984(v10);
      if (!v27)
      {
        goto LABEL_40;
      }

      if (v11 == ++a1)
      {

        a3 = v30;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    ;
  }

  v14 = sub_76A860();
  if (v14)
  {
    goto LABEL_9;
  }

  return 1;
}

void sub_4E1F8C(uint64_t a1)
{
  v56 = a1;
  v1 = sub_758880();
  v54 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&qword_945020, qword_784B20);
  __chkstk_darwin(v4 - 8);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v52 - v8;
  v10 = sub_7666D0();
  v53 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v13 - 8);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v52 - v17;
  v19 = type metadata accessor for Accessory(0);
  __chkstk_darwin(v19);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_45DEEC(v55, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        sub_76AA40(4uLL);
      }

      else if (EnumCaseMultiPayload == 9)
      {
        sub_76AA40(5uLL);
      }

      else
      {
        sub_76AA40(6uLL);
      }

      return;
    }

    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v23 = *v21;
        v24 = *(v21 + 1);
        v25 = *(v21 + 2);
        sub_76AA40(9uLL);
        v57 = v23;
        sub_765390();
        sub_4E474C(&qword_955908, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
        sub_769160();
        if (v24 == 0.0)
        {
          v26 = 0.0;
        }

        else
        {
          v26 = v24;
        }

        sub_76AA60(*&v26);
        if (v25 == 0.0)
        {
          v27 = 0.0;
        }

        else
        {
          v27 = v25;
        }

        sub_76AA60(*&v27);

        return;
      }

      v43 = *(v21 + 2);
      v44 = *(v21 + 3);
      v45 = *(v21 + 4);
      v46 = *(v21 + 6);
      sub_76AA40(0xAuLL);
      sub_769330();

      sub_76A1D0();
      sub_76AA40(v44);
      if (v45)
      {
        sub_76AA50(1u);
        v47 = v45;
        sub_76A1D0();

        if (v46)
        {
LABEL_37:
          sub_76AA50(1u);
          sub_769330();

LABEL_53:

          return;
        }
      }

      else
      {
        sub_76AA50(0);
        if (v46)
        {
          goto LABEL_37;
        }
      }

      sub_76AA50(0);
      goto LABEL_53;
    }

    v39 = *(v21 + 1);
    sub_76AA40(8uLL);
    if (v39)
    {
LABEL_32:
      sub_76AA50(1u);
      sub_769330();

      return;
    }

LABEL_41:
    sub_76AA50(0);
    return;
  }

  v52 = v15;
  v55 = v12;
  v28 = v54;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v41 = *(v21 + 1);
      v42 = sub_BD88(&qword_957F00, qword_7A1460);
      sub_109C4(&v21[*(v42 + 48)], v18, &unk_93E530, &unk_77C5F0);
      sub_76AA40(1uLL);
      if (v41)
      {
        sub_76AA50(1u);
        sub_769330();
      }

      else
      {
        sub_76AA50(0);
      }

      v48 = v10;
      v50 = v52;
      v49 = v53;
      v51 = v55;
      sub_1ED18(v18, v52, &unk_93E530, &unk_77C5F0);
      if ((*(v49 + 48))(v50, 1, v48) == 1)
      {
        sub_76AA50(0);
      }

      else
      {
        (*(v49 + 32))(v51, v50, v48);
        sub_76AA50(1u);
        sub_4E474C(&unk_957F10, &type metadata accessor for FontUseCase, &protocol conformance descriptor for FontUseCase);
        sub_769160();
        (*(v49 + 8))(v51, v48);
      }

      sub_10A2C(v18, &unk_93E530, &unk_77C5F0);
      return;
    }

    v32 = *(v21 + 1);
    v33 = *(v21 + 2);
    v34 = *(v21 + 4);
    sub_76AA40(0);
    if (v32)
    {
      sub_76AA50(1u);
      sub_769330();

      if (v33)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_76AA50(0);
      if (v33)
      {
LABEL_23:
        sub_76AA50(1u);
        v35 = v33;
        sub_76A1D0();

        if (v34)
        {
LABEL_24:
          sub_76AA50(1u);
          sub_769330();

          return;
        }

LABEL_45:
        sub_76AA50(0);

        return;
      }
    }

    sub_76AA50(0);
    if (v34)
    {
      goto LABEL_24;
    }

    goto LABEL_45;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v36 = *(v21 + 2);
    v37 = *(v21 + 3);
    sub_76AA40(2uLL);
    sub_769330();

    sub_76A1D0();
    v38 = 0.0;
    if (v37 != 0.0)
    {
      v38 = v37;
    }

    sub_76AA60(*&v38);
  }

  else
  {
    if (EnumCaseMultiPayload != 3)
    {
      v40 = *(v21 + 1);
      sub_76AA40(7uLL);
      if (v40)
      {
        goto LABEL_32;
      }

      goto LABEL_41;
    }

    v29 = v9;
    v30 = *v21;
    v31 = sub_BD88(&qword_942CC8, &unk_782620);
    sub_109C4(&v21[*(v31 + 48)], v29, &qword_945020, qword_784B20);
    sub_76AA40(3uLL);
    sub_76AA50(v30);
    sub_1ED18(v29, v6, &qword_945020, qword_784B20);
    if ((*(v28 + 48))(v6, 1, v1) == 1)
    {
      sub_76AA50(0);
    }

    else
    {
      (*(v28 + 32))(v3, v6, v1);
      sub_76AA50(1u);
      sub_4E474C(&qword_957F08, &type metadata accessor for StoreTab, &protocol conformance descriptor for StoreTab);
      sub_769160();
      (*(v28 + 8))(v3, v1);
    }

    sub_10A2C(v29, &qword_945020, qword_784B20);
  }
}

Swift::Int sub_4E2870()
{
  sub_76AA30();
  sub_4E1F8C(v1);
  return sub_76AA80();
}

Swift::Int sub_4E28B4(uint64_t a1)
{
  sub_76AA30();
  sub_4E1F8C(v2);
  return sub_76AA80();
}

double *sub_4E28F8(uint64_t a1)
{
  v2 = v1;
  v43 = a1;
  v3 = type metadata accessor for Accessory(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v10 = (v42 - v9);
  v11 = *(v1 + 32);
  v12 = *(v11 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (!v12)
  {
    return v13;
  }

  v42[1] = v8;
  v45 = _swiftEmptyArrayStorage;
  sub_76A7C0();
  v14 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v15 = *(v4 + 72);
  while (1)
  {
    sub_45DEEC(v14, v10);
    swift_beginAccess();
    v18 = *(v2 + 40);
    if (*(v18 + 16))
    {
      v19 = sub_663F14(v10);
      if (v20)
      {
        v21 = *(*(v18 + 56) + 8 * v19);
        swift_endAccess();
        v22 = v21;
        goto LABEL_5;
      }
    }

    swift_endAccess();
    sub_4E0248(v43);
    v24 = v23;
    sub_45DEEC(v10, v6);
    swift_beginAccess();
    v25 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = *(v2 + 40);
    v27 = v44;
    *(v2 + 40) = 0x8000000000000000;
    v28 = sub_663F14(v6);
    v30 = v27[2];
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      break;
    }

    v34 = v29;
    if (v27[3] < v33)
    {
      sub_454D90(v33, isUniquelyReferenced_nonNull_native);
      v28 = sub_663F14(v6);
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_23;
      }

LABEL_14:
      v36 = v44;
      if ((v34 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_3;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v40 = v28;
    sub_45B410();
    v28 = v40;
    v36 = v44;
    if ((v34 & 1) == 0)
    {
LABEL_15:
      v36[(v28 >> 6) + 8] |= 1 << v28;
      v37 = v28;
      sub_45DEEC(v6, v36[6] + v28 * v15);
      *(v36[7] + 8 * v37) = v25;
      v38 = v36[2];
      v32 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v32)
      {
        goto LABEL_22;
      }

      v36[2] = v39;
      goto LABEL_4;
    }

LABEL_3:
    v16 = v36[7];
    v17 = *(v16 + 8 * v28);
    *(v16 + 8 * v28) = v25;

LABEL_4:
    sub_30984(v6);
    *(v2 + 40) = v36;
    swift_endAccess();
LABEL_5:
    sub_30984(v10);
    sub_76A7A0();
    sub_76A7D0();
    sub_76A7E0();
    sub_76A7B0();
    v14 += v15;
    if (!--v12)
    {
      return v45;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_76A9B0();
  __break(1u);
  return result;
}

uint64_t sub_4E2C14(__n128 a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (sub_7699D0())
  {
    return a3;
  }

  else
  {
    return a4;
  }
}

uint64_t sub_4E2C50()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Accessory(uint64_t a1)
{
  result = qword_957E60;
  if (!qword_957E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_4E2D18(uint64_t a1)
{
  sub_4E2E14(319);
  if (v1 <= 0x3F)
  {
    sub_4E2EA4(319);
    if (v2 <= 0x3F)
    {
      sub_4E2F30(319);
      if (v3 <= 0x3F)
      {
        sub_4E2FB4(319);
        if (v4 <= 0x3F)
        {
          sub_4E302C(319, &qword_957E90);
          if (v5 <= 0x3F)
          {
            sub_4E302C(319, &qword_957E98);
            if (v7 <= 0x3F)
            {
              sub_4E3074(319, v6);
              if (v8 <= 0x3F)
              {
                sub_4E30E8(319);
                if (v9 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_4E2E14(uint64_t a1)
{
  if (!qword_957E70)
  {
    sub_133D8(&qword_941BA0, &qword_7811C0);
    sub_133D8(&unk_944E40, qword_7A1360);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_957E70);
    }
  }
}

void sub_4E2EA4(uint64_t a1)
{
  if (!qword_957E78)
  {
    sub_133D8(&qword_941BA0, &qword_7811C0);
    sub_133D8(&unk_93E530, &unk_77C5F0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_957E78);
    }
  }
}

void sub_4E2F30(uint64_t a1)
{
  if (!qword_957E80)
  {
    sub_BE70(255, &qword_947630, UIImage_ptr);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_957E80);
    }
  }
}

void sub_4E2FB4(uint64_t a1)
{
  if (!qword_957E88)
  {
    sub_133D8(&qword_945020, qword_784B20);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_957E88);
    }
  }
}

void sub_4E302C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1994D4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_4E3074(uint64_t a1, __n128 a2)
{
  if (!qword_957EA0)
  {
    sub_765390();
    type metadata accessor for CGSize(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_957EA0);
    }
  }
}

void sub_4E30E8(uint64_t a1)
{
  if (!qword_957EA8)
  {
    __chkstk_darwin(a1);
    sub_BE70(255, &qword_93F900, UIFont_ptr);
    type metadata accessor for SymbolScale(255);
    sub_133D8(&unk_944E40, qword_7A1360);
    sub_133D8(&qword_941BA0, &qword_7811C0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_957EA8);
    }
  }
}

unint64_t sub_4E32A8()
{
  result = qword_957EE0;
  if (!qword_957EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_957EE0);
  }

  return result;
}

BOOL sub_4E32FC(uint64_t a1, double *a2)
{
  v187 = a1;
  v188 = a2;
  v175 = sub_758880();
  v186 = *(v175 - 8);
  __chkstk_darwin(v175);
  v170 = &v169 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_BD88(&qword_957EE8, &unk_7A1440);
  __chkstk_darwin(v185);
  v184 = &v169 - v3;
  v4 = sub_BD88(&qword_945020, qword_784B20);
  __chkstk_darwin(v4 - 8);
  v172 = &v169 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v179 = &v169 - v7;
  __chkstk_darwin(v8);
  v180 = &v169 - v9;
  v10 = sub_7666D0();
  v173 = *(v10 - 8);
  v174 = v10;
  __chkstk_darwin(v10);
  v177 = &v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_BD88(&qword_94EFA8, &qword_7936B8);
  __chkstk_darwin(v176);
  v183 = &v169 - v12;
  v13 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v13 - 8);
  v171 = &v169 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v178 = &v169 - v16;
  __chkstk_darwin(v17);
  v182 = &v169 - v18;
  v19 = type metadata accessor for Accessory(0);
  __chkstk_darwin(v19);
  v21 = (&v169 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v181 = &v169 - v23;
  __chkstk_darwin(v24);
  v26 = (&v169 - v25);
  __chkstk_darwin(v27);
  v29 = (&v169 - v28);
  __chkstk_darwin(v30);
  v32 = &v169 - v31;
  __chkstk_darwin(v33);
  v35 = &v169 - v34;
  __chkstk_darwin(v36);
  v38 = (&v169 - v37);
  __chkstk_darwin(v39);
  v41 = (&v169 - v40);
  v42 = sub_BD88(&qword_957EF0, &unk_7A1450);
  __chkstk_darwin(v42 - 8);
  v44 = &v169 - v43;
  v46 = (&v169 + *(v45 + 56) - v43);
  sub_45DEEC(v187, &v169 - v43);
  v47 = v188;
  v188 = v46;
  sub_45DEEC(v47, v46);
  v189 = v44;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    v58 = v32;
    v60 = v185;
    v59 = v186;
    v61 = v182;
    v62 = v183;
    v63 = v184;
    if (EnumCaseMultiPayload > 1)
    {
      v64 = v189;
      if (EnumCaseMultiPayload == 2)
      {
        sub_45DEEC(v189, v35);
        v85 = *v35;
        v84 = *(v35 + 1);
        v86 = *(v35 + 2);
        v87 = *(v35 + 3);
        v88 = v188;
        if (swift_getEnumCaseMultiPayload() != 2)
        {

          goto LABEL_61;
        }

        v89 = *(v88 + 2);
        v90 = v88[3];
        if (v85 == *v88 && v84 == *(v88 + 1))
        {
        }

        else
        {
          v129 = sub_76A950();

          if ((v129 & 1) == 0)
          {

            goto LABEL_98;
          }
        }

        sub_BE70(0, &qword_94AB00, NSObject_ptr);
        v130 = sub_76A1C0();

        if (v130)
        {
          v56 = v87 == v90;
          v57 = v64;
LABEL_73:
          sub_30984(v57);
          return v56;
        }

        goto LABEL_98;
      }

      v65 = v188;
      if (EnumCaseMultiPayload == 3)
      {
        v66 = v58;
        sub_45DEEC(v189, v58);
        v67 = *(sub_BD88(&qword_942CC8, &unk_782620) + 48);
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          sub_10A2C(&v66[v67], &qword_945020, qword_784B20);
          goto LABEL_61;
        }

        v68 = *v66;
        v69 = *v65;
        v70 = &v66[v67];
        v71 = v180;
        sub_109C4(v70, v180, &qword_945020, qword_784B20);
        v72 = v65 + v67;
        v73 = v179;
        sub_109C4(v72, v179, &qword_945020, qword_784B20);
        if (v68 == v69)
        {
          v131 = *(v60 + 48);
          v132 = v63;
          sub_1ED18(v71, v63, &qword_945020, qword_784B20);
          v133 = v131;
          sub_1ED18(v73, v132 + v131, &qword_945020, qword_784B20);
          v134 = v59;
          v135 = *(v59 + 48);
          v136 = v175;
          if (v135(v132, 1, v175) == 1)
          {
            sub_10A2C(v73, &qword_945020, qword_784B20);
            sub_10A2C(v71, &qword_945020, qword_784B20);
            if (v135(v132 + v133, 1, v136) == 1)
            {
              sub_10A2C(v132, &qword_945020, qword_784B20);
              goto LABEL_116;
            }
          }

          else
          {
            v145 = v172;
            sub_1ED18(v132, v172, &qword_945020, qword_784B20);
            if (v135(v132 + v133, 1, v136) != 1)
            {
              v158 = v132 + v133;
              v159 = v145;
              v160 = v170;
              (*(v134 + 32))(v170, v158, v136);
              sub_4E474C(&qword_957EF8, &type metadata accessor for StoreTab, &protocol conformance descriptor for StoreTab);
              v161 = sub_7691C0();
              v162 = *(v134 + 8);
              v162(v160, v136);
              sub_10A2C(v179, &qword_945020, qword_784B20);
              sub_10A2C(v180, &qword_945020, qword_784B20);
              v162(v159, v136);
              sub_10A2C(v132, &qword_945020, qword_784B20);
              if (v161)
              {
                goto LABEL_116;
              }

              goto LABEL_98;
            }

            sub_10A2C(v179, &qword_945020, qword_784B20);
            sub_10A2C(v180, &qword_945020, qword_784B20);
            (*(v134 + 8))(v145, v136);
          }

          v75 = &qword_957EE8;
          v76 = &unk_7A1440;
          v74 = v132;
        }

        else
        {
          sub_10A2C(v73, &qword_945020, qword_784B20);
          v74 = v71;
          v75 = &qword_945020;
          v76 = qword_784B20;
        }

        sub_10A2C(v74, v75, v76);
        goto LABEL_98;
      }

      sub_45DEEC(v189, v29);
      v96 = *v29;
      v95 = v29[1];
      v97 = swift_getEnumCaseMultiPayload();
      if (v97 == 4)
      {
        v92 = *(v65 + 1);
        if (v95)
        {
          if (v92)
          {
            v93 = *v65;
            goto LABEL_40;
          }

LABEL_64:

          goto LABEL_98;
        }

LABEL_63:
        if (!v92)
        {
          goto LABEL_116;
        }

        goto LABEL_64;
      }

LABEL_43:

      goto LABEL_61;
    }

    v77 = v189;
    if (!EnumCaseMultiPayload)
    {
      sub_45DEEC(v189, v41);
      v79 = *v41;
      v78 = v41[1];
      v81 = v41[2];
      v80 = v41[3];
      v82 = v41[4];
      v83 = v188;
      if (swift_getEnumCaseMultiPayload())
      {
        v64 = v77;

        goto LABEL_61;
      }

      v126 = *(v83 + 1);
      v125 = *(v83 + 2);
      v128 = *(v83 + 3);
      v127 = *(v83 + 4);
      if (v78)
      {
        if (v126)
        {
          if (v79 == *v188 && v78 == v126)
          {

            goto LABEL_110;
          }

          v154 = sub_76A950();

          if (v154)
          {
LABEL_110:
            if (v81)
            {
              if (!v125)
              {

                goto LABEL_128;
              }

              sub_BE70(0, &qword_93E540, UIColor_ptr);
              v155 = v81;
              v156 = v125;
              v157 = sub_76A1C0();

              if ((v157 & 1) == 0)
              {

LABEL_128:

                goto LABEL_142;
              }
            }

            else if (v125)
            {

              goto LABEL_143;
            }

            if (v82)
            {
              if (!v127)
              {

                goto LABEL_142;
              }

              if (v80 == v128 && v82 == v127)
              {

                v163 = v189;
                goto LABEL_117;
              }

              v167 = sub_76A950();

              if ((v167 & 1) == 0)
              {
                goto LABEL_143;
              }
            }

            else
            {

              if (v127)
              {
                goto LABEL_142;
              }
            }

            v163 = v189;
            goto LABEL_117;
          }
        }

        else
        {
        }

        goto LABEL_143;
      }

      if (v126)
      {

LABEL_142:

        goto LABEL_143;
      }

      goto LABEL_110;
    }

    sub_45DEEC(v189, v38);
    v99 = *v38;
    v98 = v38[1];
    v100 = *(sub_BD88(&qword_957F00, qword_7A1460) + 48);
    v101 = v188;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_10A2C(v38 + v100, &unk_93E530, &unk_77C5F0);

      v64 = v189;
      goto LABEL_61;
    }

    v102 = v101[1];
    v187 = *v101;
    sub_109C4(v38 + v100, v61, &unk_93E530, &unk_77C5F0);
    v103 = v178;
    sub_109C4(v101 + v100, v178, &unk_93E530, &unk_77C5F0);
    if (v98)
    {
      if (v102)
      {
        v104 = v62;
        if (v99 == v187 && v98 == v102)
        {

          v105 = v176;
          v106 = v177;
          goto LABEL_101;
        }

        v146 = sub_76A950();

        v105 = v176;
        v106 = v177;
        if (v146)
        {
LABEL_101:
          v147 = *(v105 + 48);
          sub_1ED18(v61, v104, &unk_93E530, &unk_77C5F0);
          sub_1ED18(v103, v104 + v147, &unk_93E530, &unk_77C5F0);
          v148 = v173;
          v149 = v174;
          v150 = *(v173 + 48);
          if (v150(v104, 1, v174) == 1)
          {
            sub_10A2C(v103, &unk_93E530, &unk_77C5F0);
            sub_10A2C(v61, &unk_93E530, &unk_77C5F0);
            v151 = v150(v104 + v147, 1, v149);
            v152 = v189;
            if (v151 == 1)
            {
              sub_10A2C(v104, &unk_93E530, &unk_77C5F0);
LABEL_126:
              v163 = v152;
              goto LABEL_117;
            }
          }

          else
          {
            v153 = v171;
            sub_1ED18(v104, v171, &unk_93E530, &unk_77C5F0);
            if (v150(v104 + v147, 1, v149) != 1)
            {
              (*(v148 + 32))(v106, v104 + v147, v149);
              sub_4E474C(&qword_94EFB0, &type metadata accessor for FontUseCase, &protocol conformance descriptor for FontUseCase);
              v164 = v148;
              v165 = sub_7691C0();
              v166 = *(v164 + 8);
              v166(v106, v149);
              sub_10A2C(v178, &unk_93E530, &unk_77C5F0);
              sub_10A2C(v61, &unk_93E530, &unk_77C5F0);
              v166(v153, v149);
              sub_10A2C(v104, &unk_93E530, &unk_77C5F0);
              v152 = v189;
              if (v165)
              {
                goto LABEL_126;
              }

LABEL_107:
              sub_30984(v152);
              return 0;
            }

            sub_10A2C(v178, &unk_93E530, &unk_77C5F0);
            sub_10A2C(v61, &unk_93E530, &unk_77C5F0);
            (*(v148 + 8))(v153, v149);
            v152 = v189;
          }

          sub_10A2C(v104, &qword_94EFA8, &qword_7936B8);
          goto LABEL_107;
        }

LABEL_90:
        sub_10A2C(v103, &unk_93E530, &unk_77C5F0);
        sub_10A2C(v61, &unk_93E530, &unk_77C5F0);
        goto LABEL_143;
      }
    }

    else
    {
      v104 = v62;
      v105 = v176;
      v106 = v177;
      if (!v102)
      {
        goto LABEL_101;
      }
    }

    goto LABEL_90;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      v94 = swift_getEnumCaseMultiPayload();
      v64 = v189;
      if (v94 != 8)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v64 = v189;
      if (EnumCaseMultiPayload == 9)
      {
        if (swift_getEnumCaseMultiPayload() != 9)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v123 = swift_getEnumCaseMultiPayload();
        if (v123 != 10)
        {
          goto LABEL_61;
        }
      }
    }

    goto LABEL_116;
  }

  if (EnumCaseMultiPayload != 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v49 = v181;
      sub_45DEEC(v189, v181);
      v51 = *(v49 + 8);
      v50 = *(v49 + 16);
      v52 = v188;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v54 = v52[1];
        v53 = v52[2];
        sub_765390();
        v55 = sub_7651E0();

        if (v55)
        {
          v56 = v50 == v53 && v51 == v54;
          v57 = v189;
          goto LABEL_73;
        }

        goto LABEL_143;
      }

      v64 = v189;
      goto LABEL_61;
    }

    v107 = v189;
    sub_45DEEC(v189, v21);
    v108 = *v21;
    v109 = v21[1];
    v110 = v21[2];
    v111 = v21[3];
    v112 = v21[4];
    v113 = v21[5];
    v114 = v21[6];
    v115 = v188;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v116 = v114;
      v187 = v113;
      v117 = *v115;
      v118 = *(v115 + 1);
      v119 = v115;
      v121 = *(v115 + 2);
      v120 = *(v115 + 3);
      v122 = *(v119 + 4);
      v186 = *(v119 + 5);
      v188 = *(v119 + 6);
      if (v108 == v117 && v109 == v118)
      {

LABEL_78:
        sub_BE70(0, &qword_94AB00, NSObject_ptr);
        v138 = sub_76A1C0();
        v139 = v189;
        if ((v138 & 1) != 0 && v111 == v120)
        {
          if (v112)
          {
            if (!v122)
            {

              goto LABEL_137;
            }

            sub_BE70(0, &qword_93E540, UIColor_ptr);
            v140 = v112;
            v141 = v122;
            v142 = v122;
            v143 = sub_76A1C0();

            if ((v143 & 1) == 0)
            {

LABEL_137:

LABEL_138:

              goto LABEL_85;
            }

LABEL_131:
            if (v116)
            {
              if (!v188)
              {

                goto LABEL_138;
              }

              if (v187 == v186 && v116 == v188)
              {

                v163 = v139;
                goto LABEL_117;
              }

              v168 = sub_76A950();

              if ((v168 & 1) == 0)
              {
                goto LABEL_85;
              }
            }

            else
            {

              if (v188)
              {
                goto LABEL_138;
              }
            }

            v163 = v139;
            goto LABEL_117;
          }

          v141 = v122;
          if (!v122)
          {
            goto LABEL_131;
          }
        }

        else
        {
        }

LABEL_85:
        sub_30984(v139);
        return 0;
      }

      v137 = sub_76A950();

      if (v137)
      {
        goto LABEL_78;
      }

LABEL_143:
      sub_30984(v189);
      return 0;
    }

    v64 = v107;
LABEL_61:
    sub_10A2C(v64, &qword_957EF0, &unk_7A1450);
    return 0;
  }

  v64 = v189;
  sub_45DEEC(v189, v26);
  v96 = *v26;
  v95 = v26[1];
  v91 = v188;
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    goto LABEL_43;
  }

  v92 = *(v91 + 1);
  if (!v95)
  {
    goto LABEL_63;
  }

  if (!v92)
  {
    goto LABEL_64;
  }

  v93 = *v91;
LABEL_40:
  if (v96 != v93 || v95 != v92)
  {
    v144 = sub_76A950();

    if (v144)
    {
      goto LABEL_116;
    }

LABEL_98:
    sub_30984(v64);
    return 0;
  }

LABEL_116:
  v163 = v64;
LABEL_117:
  sub_30984(v163);
  return 1;
}

uint64_t sub_4E474C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ProductPageLayoutSectionProvider(uint64_t a1)
{
  result = qword_957F20;
  if (!qword_957F20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_4E4820(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v8 = *(a1 + 32);
  sub_BD88(&unk_94A500, &qword_7851B0);
  v9 = sub_769460();

  swift_unknownObjectRetain();
  v8(v9, a3, a4, a5);

  swift_unknownObjectRelease();
  return result;
}

id sub_4E48DC(uint64_t a1, uint64_t (*a2)(void), double *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, double *a10)
{
  v141 = a8;
  v133 = a7;
  v135 = a6;
  v136 = a5;
  v134 = a4;
  v138 = a3;
  v142 = a10;
  v143 = a2;
  v140 = a9;
  v11 = sub_BD88(&unk_957F70, &unk_780270);
  __chkstk_darwin(v11 - 8);
  v122 = &v121 - v12;
  v130 = sub_7656C0();
  v132 = *(v130 - 8);
  __chkstk_darwin(v130);
  v129 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_75C6F0();
  v128 = *(v131 - 1);
  __chkstk_darwin(v131);
  v127 = (&v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_75C840();
  v139 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_764930();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v124 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v121 - v22;
  v24 = sub_BD88(&unk_94F1F0, &qword_782290);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v123 = &v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v121 - v28;
  v137 = a1;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v30 = *(v25 + 8);
  v30(v29, v24);
  v126 = v19;
  v31 = *(v19 + 88);
  v125 = v23;
  v32 = v23;
  v33 = v18;
  v34 = v31(v32, v18);
  if (v34 != enum case for Shelf.ContentType.productBadge(_:))
  {
    v139 = &v121;
    __chkstk_darwin(v34);
    __chkstk_darwin(v41);
    sub_762BA0();
    v42 = sub_762BB0();
    v132 = v42(v137, sub_60CC8, &v121 - 4, v134, v136, v135, v133, v141, v140, v142);
    v43 = v123;
    sub_75DAA0();
    swift_getKeyPath();
    v44 = v124;
    sub_768750();

    v30(v43, v24);
    v45 = v31(v44, v33);
    if (v45 == enum case for Shelf.ContentType.ribbonBar(_:))
    {
      v46 = v143();
      v47 = sub_CB3B4(v137, v46, v134, v136, v135, v133, v141, v140, v142);
    }

    else
    {
      v48 = v44;
      v47 = v132;
      v49 = v137;
      v50 = v142;
      v51 = v141;
      v52 = v135;
      v53 = v133;
      v54 = v136;
      v55 = v134;
      if (v45 == enum case for Shelf.ContentType.ribbonFlow(_:))
      {
        v56 = v143();
        v57 = sub_CC6F8(v49, v56, v55, v54, v52, v53, v51, v140, v50);

        v47 = v57;
      }

      else
      {
        if (v45 != enum case for Shelf.ContentType.smallContactCard(_:))
        {
          v100 = v126;
          (*(v126 + 8))(v48, v33);
          goto LABEL_30;
        }

        [v132 setOrthogonalScrollingBehavior:2];
      }
    }

    v100 = v126;
LABEL_30:
    (*(v100 + 8))(v125, v33);
    return v47;
  }

  v35 = v143();
  aBlock[0] = _swiftEmptyArrayStorage;
  v36 = *(v35 + 16);
  v126 = v35;
  v125 = v36;
  if (v36)
  {
    v37 = v35;
    sub_764860();
    v143 = v139[2];
    v38 = v37 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
    v39 = v139[9];
    v40 = (v139 + 1);
    v138 = _swiftEmptyArrayStorage;
    (v143)(v17, v38, v15);
    while (1)
    {
      sub_4E94D8(&unk_957F80, &type metadata accessor for Badge, &protocol conformance descriptor for Badge);
      sub_75C750();
      (*v40)(v17, v15);
      if (v146)
      {
        sub_769440();
        if (*(&dword_10 + (aBlock[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (aBlock[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v138 = *(&dword_10 + (aBlock[0] & 0xFFFFFFFFFFFFFF8));
          sub_7694C0();
        }

        sub_769500();
        v138 = aBlock[0];
      }

      v38 += v39;
      if (!--v36)
      {
        break;
      }

      (v143)(v17, v38, v15);
    }
  }

  else
  {
    v138 = _swiftEmptyArrayStorage;
  }

  v58 = v128;
  v59 = v127;
  (*(v128 + 104))(v127, enum case for InformationRibbon.Alignment.justified(_:), v131);
  v60 = v129;
  v61 = v137;
  sub_75DA20();
  sub_765630();
  v63 = v62;
  v65 = v64;
  v66 = v132 + 8;
  v67 = *(v132 + 1);
  v68 = v130;
  v67(v60, v130);
  sub_75DA20();
  sub_765580();
  v70 = v69;
  v67(v60, v68);
  v71 = sub_75DA30();
  v72 = type metadata accessor for SnapshotPageTraitEnvironment();
  v73 = objc_allocWithZone(v72);
  v74 = &v73[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
  *v74 = v70;
  *(v74 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v73[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v71;
  v145.receiver = v73;
  v145.super_class = v72;
  v75 = objc_msgSendSuper2(&v145, "init");
  sub_4E5A5C(v138, v59, v75, v63, v65);
  v77 = v76;

  (*(v58 + 8))(v59, v131);
  if (!*(v77 + 16))
  {

    sub_BE70(0, &unk_93FFE0, NSCollectionLayoutSection_ptr);
    v97 = sub_75DAB0();
    v98 = *(v97 - 8);
    v99 = v122;
    (*(v98 + 16))(v122, v61, v97);
    (*(v98 + 56))(v99, 0, 1, v97);
    v47 = sub_769C40();
    sub_10A2C(v99, &unk_957F70, &unk_780270);

    return v47;
  }

  sub_75DA20();
  sub_765630();
  v131 = v67;
  v67(v60, v68);
  if (qword_93D210 != -1)
  {
    swift_once();
  }

  v78 = sub_75F070();
  sub_BE38(v78, qword_99DED8);
  v79 = sub_75DA30();
  sub_75EFB0();
  v81 = v80;

  v146 = _swiftEmptyArrayStorage;
  v82 = v136;
  v143 = *(v77 + 16);
  v132 = v66;
  if (!v143)
  {
    v88 = 0.0;
LABEL_32:

    v101 = objc_opt_self();
    v102 = objc_opt_self();
    v103 = [v102 absoluteDimension:v88];
    v104 = [v102 absoluteDimension:v81];
    v105 = [objc_opt_self() sizeWithWidthDimension:v103 heightDimension:v104];

    sub_BE70(0, &qword_957F90, NSCollectionLayoutItem_ptr);
    isa = sub_769450().super.isa;

    v107 = [v101 horizontalGroupWithLayoutSize:v105 subitems:isa];

    v47 = [objc_opt_self() sectionWithGroup:v107];
    swift_getObjectType();
    sub_761E30();
    sub_BE70(0, &unk_956240, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    v108 = sub_769450().super.isa;

    [v47 setBoundarySupplementaryItems:v108];

    sub_761E20();
    sub_BE70(0, &unk_957FA0, NSCollectionLayoutDecorationItem_ptr);
    v109 = sub_769450().super.isa;

    [v47 setDecorationItems:v109];

    v110 = v129;
    sub_75DA20();
    sub_765650();
    v112 = v111;
    v114 = v113;
    v131(v110, v130);
    sub_B170(v82, v82[3]);
    sub_761DF0();
    v116 = v115;
    sub_B170(v82, v82[3]);
    sub_761E10();
    [v47 setContentInsets:{v116, v112, v117, v114}];
    [v47 setOrthogonalScrollingBehavior:1];
    sub_762B90();
    v118 = sub_769480();
    v120 = v119;

    if (v118)
    {
      aBlock[4] = v118;
      aBlock[5] = v120;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_4E4820;
      aBlock[3] = &unk_894938;
      v118 = _Block_copy(aBlock);
    }

    [v47 setVisibleItemsInvalidationHandler:v118];
    _Block_release(v118);

    return v47;
  }

  v83 = objc_opt_self();
  v138 = objc_opt_self();
  result = objc_opt_self();
  if (v125)
  {
    v85 = result;
    result = v141;
    if (v143 <= v125)
    {
      swift_getObjectType();
      v86 = 0;
      v128 = v77;
      v87 = v77 + 32;
      v88 = 0.0;
      do
      {
        v89 = *(v87 + 8 * v86);
        v90 = [v83 absoluteDimension:v89];
        v91 = [v83 absoluteDimension:v81];
        v92 = [v138 sizeWithWidthDimension:v90 heightDimension:v91];

        sub_761510();
        sub_BE70(0, &unk_956250, NSCollectionLayoutSupplementaryItem_ptr);
        v93 = v92;
        v94 = sub_769450().super.isa;

        v95 = [v85 itemWithLayoutSize:v93 supplementaryItems:v94];

        v96 = v95;
        sub_769440();
        if (*(&dword_10 + (v146 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v146 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        v86 = (v86 + 1);
        sub_769500();

        v88 = v88 + v89;
      }

      while (v143 != v86);
      v82 = v136;
      goto LABEL_32;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_4E5A5C(unint64_t a1, double *a2, void *a3, double a4, double a5)
{
  v10 = sub_75C6F0();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_72;
  }

  v16 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  if (!v16)
  {
    return;
  }

  v17 = [a3 traitCollection];
  v18 = sub_769A00();

  if (v18)
  {
    if (!v15)
    {
      v20 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
      goto LABEL_11;
    }

    v20 = sub_76A860();
    if ((v20 & 0x8000000000000000) == 0)
    {
LABEL_11:
      if (v20)
      {
        v22 = sub_7694E0();
        *(v22 + 16) = v20;
        memset_pattern16((v22 + 32), &unk_79E220, 8 * v20);
      }

      return;
    }

    __break(1u);
    goto LABEL_74;
  }

  if (v15)
  {
    v21 = sub_76A860();
  }

  else
  {
    v21 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  *&v19 = floor(a4 / v21);
  if (*&v19 <= 136.0)
  {
    if (v21 < 0)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if (!v21)
    {
      a2 = _swiftEmptyArrayStorage;
      if (a4 > 0.0)
      {
        v10 = *&_swiftEmptyArrayStorage[2];
        if (!v10)
        {
LABEL_62:

          return;
        }

        goto LABEL_45;
      }

      return;
    }

    v27 = 0;
    a2 = _swiftEmptyArrayStorage;
    v28 = 0.0;
    v11 = 0x4061000000000000;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v29 = sub_76A770();
      }

      else
      {
        v29 = *(a1 + 8 * v27 + 32);
      }

      v30 = sub_4E609C(v29, v27, 0, v21, a3, a4, a5);

      if (v30 >= 105.0)
      {
        if (v30 >= 136.0)
        {
          v31 = 136.0;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_28;
          }

LABEL_34:
          a2 = sub_7AE54(0, *(a2 + 2) + 1, 1, a2);
          goto LABEL_28;
        }

        v31 = floor(v30);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v31 = 105.0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_34;
        }
      }

LABEL_28:
      v15 = *(a2 + 2);
      v32 = *(a2 + 3);
      v10 = v15 + 1;
      if (v15 >= v32 >> 1)
      {
        a2 = sub_7AE54((v32 > 1), v15 + 1, 1, a2);
      }

      ++v27;
      *(a2 + 2) = v10;
      a2[v15 + 4] = v31;
      v28 = v28 + v31;
      if (v21 == v27)
      {
        a4 = a4 - v28;
        if (a4 <= 0.0)
        {
          return;
        }

LABEL_45:
        v14 = (a2 + 4);
        v52 = _swiftEmptyArrayStorage;
        sub_143C5C(0, v10, 0);
        v34 = 0;
        v35 = v52;
        a3 = *(v52 + 2);
        do
        {
          v36 = *&v14[8 * v34];
          v52 = v35;
          v37 = *(v35 + 3);
          if (a3 + v34 >= v37 >> 1)
          {
            sub_143C5C((v37 > 1), a3 + v34 + 1, 1);
            v35 = v52;
          }

          v38 = v34 + 1;
          *(v35 + 2) = a3 + v34 + 1;
          v35[a3 + 4 + v34] = 136.0 - v36;
          v34 = v38;
        }

        while (v10 != v38);
        v39 = a3 + v38;
        if (a3 + v38 - 1 <= 2)
        {
          v40 = 0;
          a5 = 0.0;
          goto LABEL_54;
        }

        v40 = v39 & 0x7FFFFFFFFFFFFFFCLL;
        v41 = v35 + 6;
        a5 = 0.0;
        v42 = v39 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          a5 = a5 + *(v41 - 2) + *(v41 - 1) + *v41 + v41[1];
          v41 += 4;
          v42 -= 4;
        }

        while (v42);
        if (v39 != v40)
        {
LABEL_54:
          v43 = a3 + v38 - v40;
          v44 = &v35[v40 + 4];
          do
          {
            v45 = *v44++;
            a5 = a5 + v45;
            --v43;
          }

          while (v43);
        }

        if (v10 <= v39)
        {
          a1 = 4;
          while (1)
          {
            v46 = v35[a1];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a2 = sub_45D538(a2);
            }

            if (a1 - 4 >= *(a2 + 2))
            {
              break;
            }

            a2[a1] = floor(a4 * (v46 / a5)) + a2[a1];
            ++a1;
            if (!--v10)
            {
              goto LABEL_62;
            }
          }

          __break(1u);
LABEL_72:
          v16 = sub_76A860();
          goto LABEL_3;
        }

LABEL_77:
        __break(1u);
        return;
      }
    }
  }

  v51 = v19;
  (*(v11 + 16))(v14, a2, v10);
  if ((*(v11 + 88))(v14, v10) == enum case for InformationRibbon.Alignment.justified(_:))
  {
    if (v21 < 0)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    if (!v21)
    {
      return;
    }

    v23 = sub_7694E0();
    *(v23 + 16) = v21;
    v24 = (v23 + 32);
    if (v21 < 4)
    {
      v25 = 0;
      v26 = v51;
LABEL_67:
      v50 = v21 - v25;
      do
      {
        *v24++ = v26;
        --v50;
      }

      while (v50);
      return;
    }

    v25 = v21 & 0x7FFFFFFFFFFFFFFCLL;
    v24 += v21 & 0x7FFFFFFFFFFFFFFCLL;
    v26 = v51;
    v47 = vdupq_lane_s64(v51, 0);
    v48 = (v23 + 48);
    v49 = v21 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v48[-1] = v47;
      *v48 = v47;
      v48 += 2;
      v49 -= 4;
    }

    while (v49);
    if (v21 != v25)
    {
      goto LABEL_67;
    }
  }

  else
  {
    if (v21 < 0)
    {
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    if (v21)
    {
      v33 = sub_7694E0();
      *(v33 + 16) = v21;
      memset_pattern16((v33 + 32), &unk_79E210, 8 * v21);
    }

    (*(v11 + 8))(v14, v10);
  }
}

double sub_4E6084(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_4E609C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5, double a6, double a7)
{
  v139 = a5;
  v123 = a4;
  v131 = a3;
  v120 = sub_762D10();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_75B9D0();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v13 = v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v127 = v117 - v15;
  v138 = sub_75F070();
  v132 = *(v138 - 8);
  __chkstk_darwin(v138);
  v17 = v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_BD88(&qword_945F18, &qword_79F030);
  __chkstk_darwin(v18 - 8);
  v122 = v117 - v19;
  v134 = sub_760190();
  v142 = *(v134 - 8);
  __chkstk_darwin(v134);
  v126 = v117 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v141 = v117 - v22;
  v135 = sub_7666D0();
  v121 = *(v135 - 8);
  __chkstk_darwin(v135);
  v24 = v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_759950();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_765790();
  v137 = *(v143 - 8);
  __chkstk_darwin(v143);
  v125 = v117 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v124 = v117 - v31;
  __chkstk_darwin(v32);
  v34 = v117 - v33;
  v140 = a1;
  sub_4B4884();
  v133 = a2;
  v128 = v13;
  if (v35)
  {
    if (qword_93D648 != -1)
    {
      swift_once();
    }

    sub_BE38(v135, qword_99EAD0);
    v36 = sub_7653B0();
    v147 = v36;
    v148 = sub_4E94D8(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v37 = sub_B1B4(v146);
    (*(*(v36 - 8) + 104))(v37, enum case for Feature.measurement_with_labelplaceholder(_:), v36);
    sub_765C30();
    sub_BEB8(v146);
    sub_762CB0();
  }

  sub_764800();
  v136 = *(v137 + 88);
  v38 = v136(v34, v143);
  v39 = enum case for BadgeType.rating(_:);
  if (v38 != enum case for BadgeType.rating(_:))
  {
    if (v38 == enum case for BadgeType.contentRating(_:))
    {
      v47 = sub_764840();
      v48 = sub_757820();
      v45 = v132;
      v46 = v134;
      if (!*(v47 + 16))
      {

        goto LABEL_38;
      }

      v50 = sub_3DF2F8(v48, v49);
      v52 = v51;

      if (v52)
      {
        sub_132B4(*(v47 + 56) + 32 * v50, v146);

        if (swift_dynamicCast())
        {
          v53 = sub_56E958(v144, v145, 0);

          [v53 size];
        }

        goto LABEL_38;
      }

LABEL_37:

      goto LABEL_38;
    }

    v46 = v134;
    if (v38 == enum case for BadgeType.chartPosition(_:))
    {
      LODWORD(v45) = enum case for BadgeType.rating(_:);
      v149._object = 0x80000000007E3E90;
      v149._countAndFlagsBits = 0xD000000000000020;
      v150._countAndFlagsBits = 0;
      v150._object = 0xE000000000000000;
      v117[1] = sub_75B750(v149, v150);
      if (qword_93D650 != -1)
      {
        goto LABEL_74;
      }

      goto LABEL_14;
    }

    v45 = v132;
    if (v38 == enum case for BadgeType.editorsChoice(_:))
    {
      sub_4E9520(a6, 0, v139);
      goto LABEL_38;
    }

    v66 = v139;
    v67 = v143;
    if (v38 == enum case for BadgeType.artwork(_:))
    {
      if (qword_93D210 != -1)
      {
        swift_once();
      }

      sub_BE38(v138, qword_99DED8);
      sub_75F010();
      v68 = [v66 traitCollection];
      _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

      sub_769D60();
      goto LABEL_39;
    }

    if (v38 == enum case for BadgeType.paragraph(_:))
    {
      sub_4B4A40();
      if (qword_93D640 != -1)
      {
        swift_once();
      }

      sub_BE38(v135, qword_99EAB8);
      v71 = sub_7653B0();
      v147 = v71;
      v148 = sub_4E94D8(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v72 = sub_B1B4(v146);
      (*(*(v71 - 8) + 104))(v72, enum case for Feature.measurement_with_labelplaceholder(_:), v71);
      sub_765C30();
      sub_BEB8(v146);
      sub_762CB0();
      v74 = v73;

      v75 = [v66 traitCollection];
      sub_64409C(v75, v74, a6);
    }

    else
    {
      if (v38 != enum case for BadgeType.friendsPlaying(_:))
      {
        (*(v137 + 8))(v34, v143);
        goto LABEL_39;
      }

      v76 = sub_764840();
      v77 = sub_757A40();
      if (!*(v76 + 16))
      {

        goto LABEL_39;
      }

      v79 = sub_3DF2F8(v77, v78);
      v81 = v80;

      if ((v81 & 1) == 0)
      {
        goto LABEL_37;
      }

      sub_132B4(*(v76 + 56) + 32 * v79, v146);

      sub_BE70(0, &qword_93E550, UIView_ptr);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_38;
      }

      v75 = v144;
      [v144 sizeThatFits:{a6, a7}];
    }

    goto LABEL_38;
  }

  v40 = [v139 traitCollection];
  v41 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:2];
  (*(v26 + 104))(v28, enum case for SystemImage.star(_:), v25);
  v42 = v39;
  v43 = [v41 configurationWithTraitCollection:v40];
  v44 = sub_759930();

  v39 = v42;
  (*(v26 + 8))(v28, v25);
  [v44 contentInsets];
  [v44 contentInsets];
  [v44 size];
  [v44 contentInsets];
  [v44 contentInsets];
  [v44 size];

  v45 = v132;
  v46 = v134;
  while (1)
  {
LABEL_38:
    v67 = v143;
LABEL_39:
    v82 = v124;
    sub_764800();
    if (v136(v82, v67) == v39)
    {
      v83 = sub_4B4D00();
      [v83 frame];
      CGRectGetWidth(v151);

      v84 = v139;
    }

    else
    {
      (*(v137 + 8))(v82, v67);
      if (v123 >= 4)
      {
        sub_764750();
        if (v85)
        {
          v84 = v139;
LABEL_45:
          if (qword_93D660 != -1)
          {
            swift_once();
          }

          sub_BE38(v135, qword_99EB18);
          v87 = sub_7653B0();
          v147 = v87;
          v148 = sub_4E94D8(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
          v88 = sub_B1B4(v146);
          (*(*(v87 - 8) + 104))(v88, enum case for Feature.measurement_with_labelplaceholder(_:), v87);
          sub_765C30();
          sub_BEB8(v146);
          sub_762CB0();

          v67 = v143;
          goto LABEL_48;
        }
      }

      sub_764830();
      v84 = v139;
      if (v86)
      {
        goto LABEL_45;
      }
    }

LABEL_48:
    (*(v142 + 104))(v141, enum case for BadgeCaptionCappingType.none(_:), v46);
    v89 = sub_764850();
    if (v90)
    {
      v91 = v46;
      v146[0] = v89;
      v146[1] = v90;
      v92 = v122;
      sub_757390();
      v93 = sub_7573C0();
      (*(*(v93 - 8) + 56))(v92, 0, 1, v93);
      sub_12EC40();
      sub_76A4B0();
      sub_10A2C(v92, &qword_945F18, &qword_79F030);

      if (qword_93D668 != -1)
      {
        swift_once();
      }

      sub_BE38(v135, qword_99EB30);
      v94 = sub_7653B0();
      v147 = v94;
      v148 = sub_4E94D8(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v95 = sub_B1B4(v146);
      (*(*(v94 - 8) + 104))(v95, enum case for Feature.measurement_with_labelplaceholder(_:), v94);
      sub_765C30();
      sub_BEB8(v146);
      sub_762CB0();

      v67 = v143;
      v46 = v91;
    }

    v96 = v130;
    if (qword_93D210 != -1)
    {
      swift_once();
    }

    v97 = v138;
    v98 = sub_BE38(v138, qword_99DED8);
    (*(v45 + 16))(v17, v98, v97);
    v24 = v46;
    (*(v142 + 16))(v126, v141, v46);
    sub_75F030();
    v99 = v125;
    sub_764800();
    if (v136(v99, v67) == enum case for BadgeType.chartPosition(_:))
    {
      v100 = v128;
      *v128 = 0;
      v101 = v129;
      (*(v129 + 104))(v100, enum case for BadgeViewSpacing.spacing(_:), v96);
    }

    else
    {
      v101 = v129;
      v100 = v128;
      (*(v129 + 104))(v128, enum case for BadgeViewSpacing.standard(_:), v96);
      (*(v137 + 8))(v99, v67);
    }

    v102 = v133;
    (*(v101 + 32))(v127, v100, v96);
    sub_75EFF0();
    v46 = v24;
    if (v131)
    {
      goto LABEL_69;
    }

    v103 = [v84 traitCollection];
    v104 = sub_7699F0();
    v105 = v104;
    if (!v102 && (v104 & 1) == 0)
    {
      goto LABEL_62;
    }

    if (__OFSUB__(v123, 1))
    {
      __break(1u);
      goto LABEL_73;
    }

    if (((v123 - 1 == v102) & v104) == 1)
    {
LABEL_62:
      v106 = sub_75EFC0();
      *(v107 + 8) = 0;
      v106(v146, 0);
      v108 = sub_75EFE0();
      *(v109 + 8) = 0;
      v108(v146, 0);
      v46 = v134;
    }

    if (!v102 && ((v105 ^ 1) & 1) == 0)
    {
      goto LABEL_67;
    }

    if (!__OFSUB__(v123, 1))
    {
      break;
    }

LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
LABEL_14:
    v54 = v135;
    v55 = sub_BE38(v135, qword_99EAE8);
    (*(v121 + 16))(v24, v55, v54);
    v56.super.isa = [v139 traitCollection];
    isa = v56.super.isa;
    v58 = sub_7666B0(v56).super.isa;
    v59 = [(objc_class *)v58 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

    if (v59)
    {
      v60 = [objc_opt_self() fontWithDescriptor:v59 size:0.0];

      v39 = v45;
      if (v60)
      {
        v61 = sub_7653B0();
        v147 = v61;
        v148 = sub_4E94D8(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
        v62 = sub_B1B4(v146);
        (*(*(v61 - 8) + 104))(v62, enum case for Feature.measurement_with_labelplaceholder(_:), v61);
        v63 = v60;
        sub_765C30();
        sub_BEB8(v146);
        v64 = v118;
        sub_762D00();
        sub_4E94D8(&unk_94E600, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
        v65 = v120;
        sub_7665A0();

        (*(v119 + 8))(v64, v65);
        goto LABEL_26;
      }
    }

    else
    {

      v39 = v45;
    }

    v69 = sub_7653B0();
    v147 = v69;
    v148 = sub_4E94D8(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v70 = sub_B1B4(v146);
    (*(*(v69 - 8) + 104))(v70, enum case for Feature.measurement_with_labelplaceholder(_:), v69);
    sub_765C30();
    sub_BEB8(v146);
    sub_762CB0();

LABEL_26:
    (*(v121 + 8))(v24, v135);
    v45 = v132;
  }

  if ((v123 - 1 != v102) | v105 & 1)
  {
    goto LABEL_68;
  }

LABEL_67:
  v110 = sub_75EFC0();
  *(v111 + 24) = 0;
  v110(v146, 0);
  v112 = sub_75EFE0();
  *(v113 + 24) = 0;
  v112(v146, 0);
LABEL_68:

LABEL_69:
  sub_75EF90();
  v115 = v114;
  (*(v45 + 8))(v17, v138);
  (*(v142 + 8))(v141, v46);
  return v115;
}

double sub_4E78BC(char a1, uint64_t a2, int a3, int a4, void *a5, uint64_t a6, __n128 a7)
{
  LODWORD(v111) = a3;
  v118 = a2;
  v117 = a4;
  v10 = a4;
  v11 = sub_7573C0();
  v113 = *(v11 - 8);
  v114 = v11;
  __chkstk_darwin(v11);
  v112 = v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v13 - 8);
  v109 = v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v106 - v16;
  v18 = sub_7666D0();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v115 = v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v110 = v106 - v22;
  __chkstk_darwin(v23);
  v116 = v106 - v24;
  __chkstk_darwin(v25);
  v27 = v106 - v26;
  __chkstk_darwin(v28);
  v30 = v106 - v29;
  *&v32 = __chkstk_darwin(v31).n128_u64[0];
  v108 = v106 - v33;
  v119 = a5;
  v34 = [a5 traitCollection];
  v107 = v27;
  if (v10 == 1)
  {
    v35 = v34;
    v36 = [v34 preferredContentSizeCategory];
    v37 = sub_769B20();

    if (v37)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v38 = v118;
  v39 = sub_2E0248(v118);
  v40 = sub_2E0514(v38);
  [v39 size];
  [v40 size];

LABEL_6:
  v41 = v115;
  if (a1)
  {
    goto LABEL_44;
  }

  v42._countAndFlagsBits = 0xD00000000000001ALL;
  v42._object = 0x80000000007CF720;
  if (v111)
  {
    v43 = sub_762F40(v42);
  }

  else
  {
    v123._countAndFlagsBits = 0;
    v123._object = 0xE000000000000000;
    v43 = sub_75B750(v42, v123);
  }

  v106[1] = v43;
  v45 = v44;
  v46 = [v119 traitCollection];
  v106[2] = v45;
  if (v118 <= 1u)
  {
    if (v118)
    {
      if (qword_93D7C0 != -1)
      {
        swift_once();
      }

      v47 = qword_99EF38;
    }

    else
    {
      if (qword_93D7B8 != -1)
      {
        swift_once();
      }

      v47 = qword_99EF20;
    }
  }

  else if (v118 == 2)
  {
    if (v117)
    {
      if (qword_93D7E0 != -1)
      {
        swift_once();
      }

      v47 = qword_99EF98;
    }

    else
    {
      if (qword_93D7E8 != -1)
      {
        swift_once();
      }

      v47 = qword_99EFB0;
    }
  }

  else if (v118 == 3)
  {
    if (qword_93D810 != -1)
    {
      swift_once();
    }

    v47 = qword_99F028;
  }

  else
  {
    if (qword_93D818 != -1)
    {
      swift_once();
    }

    v47 = qword_99F040;
  }

  v48 = sub_BE38(v18, v47);
  (*(v19 + 16))(v30, v48, v18);
  v49 = v112;
  sub_757390();
  sub_2E0918(v118, v17);
  (*(v113 + 8))(v49, v114);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {

    sub_10A2C(v17, &unk_93E530, &unk_77C5F0);
    v50 = v108;
    (*(v19 + 32))(v108, v30, v18);
    v41 = v115;
  }

  else
  {
    v106[0] = a6;
    v51 = *(v19 + 32);
    v52 = v107;
    v51(v107, v17, v18);
    v53.super.isa = v46;
    isa = sub_7666B0(v53).super.isa;
    [(objc_class *)isa pointSize];
    v56 = v55;
    v57.super.isa = v46;
    v58 = sub_7666B0(v57).super.isa;
    [(objc_class *)v58 pointSize];
    v60 = v59;

    v61 = *(v19 + 8);
    if (v60 >= v56)
    {
      v61(v52, v18);
      v50 = v108;
      v62 = v108;
      v63 = v30;
    }

    else
    {
      v61(v30, v18);
      v50 = v108;
      v62 = v108;
      v63 = v52;
    }

    v51(v62, v63, v18);
    v41 = v115;
  }

  v64 = v117;
  v65 = [v119 traitCollection];
  if (v64 == 1)
  {
    v66 = v65;
    v67 = [v65 preferredContentSizeCategory];
    sub_769B20();
  }

  else
  {
  }

  v68 = sub_7653B0();
  v121 = v68;
  v122 = sub_4E94D8(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v69 = sub_B1B4(v120);
  (*(*(v68 - 8) + 104))(v69, enum case for Feature.measurement_with_labelplaceholder(_:), v68);
  sub_765C30();
  sub_BEB8(v120);
  sub_762CB0();
  v71 = v70;

  (*(v19 + 8))(v50, v18);
  v72 = sub_765BF0();
  if (v117)
  {
    if ((v72 & 1) == 0)
    {
LABEL_44:
      v73._object = 0x80000000007D9F40;
      if (v111)
      {
        v73._countAndFlagsBits = 0xD000000000000017;
        v74 = sub_762F40(v73);
      }

      else
      {
        v124._countAndFlagsBits = 0xD000000000000050;
        v124._object = 0x80000000007D9F60;
        v73._countAndFlagsBits = 0xD000000000000017;
        v74 = sub_75B750(v73, v124);
      }

      v76 = v74;
      v77 = v75;
      v78 = v110;
      v79 = [v119 traitCollection];
      v110 = v76;
      v111 = v77;
      if (v118 <= 1u)
      {
        if (v118)
        {
          if (qword_93D7C0 != -1)
          {
            swift_once();
          }

          v80 = qword_99EF38;
        }

        else
        {
          if (qword_93D7B8 != -1)
          {
            swift_once();
          }

          v80 = qword_99EF20;
        }
      }

      else if (v118 == 2)
      {
        if (v117)
        {
          if (qword_93D7E0 != -1)
          {
            swift_once();
          }

          v80 = qword_99EF98;
        }

        else
        {
          if (qword_93D7E8 != -1)
          {
            swift_once();
          }

          v80 = qword_99EFB0;
        }
      }

      else if (v118 == 3)
      {
        if (qword_93D810 != -1)
        {
          swift_once();
        }

        v80 = qword_99F028;
      }

      else
      {
        if (qword_93D818 != -1)
        {
          swift_once();
        }

        v80 = qword_99F040;
      }

      v81 = sub_BE38(v18, v80);
      (*(v19 + 16))(v78, v81, v18);
      v82 = v112;
      sub_757390();
      v83 = v109;
      sub_2E0918(v118, v109);
      (*(v113 + 8))(v82, v114);
      if ((*(v19 + 48))(v83, 1, v18) == 1)
      {

        sub_10A2C(v83, &unk_93E530, &unk_77C5F0);
        (*(v19 + 32))(v116, v78, v18);
      }

      else
      {
        v84 = v78;
        v85 = *(v19 + 32);
        v85(v41, v83, v18);
        v86.super.isa = v79;
        v87 = sub_7666B0(v86).super.isa;
        [(objc_class *)v87 pointSize];
        v89 = v88;
        v90.super.isa = v79;
        v91 = sub_7666B0(v90).super.isa;
        [(objc_class *)v91 pointSize];
        v93 = v92;

        v94 = *(v19 + 8);
        if (v93 >= v89)
        {
          v94(v41, v18);
          v95 = v116;
          v96 = v84;
        }

        else
        {
          v94(v84, v18);
          v95 = v116;
          v96 = v41;
        }

        v85(v95, v96, v18);
      }

      v97 = v117;
      v98 = [v119 traitCollection];
      if (v97 == 1)
      {
        v99 = v98;
        v100 = [v98 preferredContentSizeCategory];
        sub_769B20();
      }

      else
      {
      }

      v101 = sub_7653B0();
      v121 = v101;
      v122 = sub_4E94D8(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v102 = sub_B1B4(v120);
      (*(*(v101 - 8) + 104))(v102, enum case for Feature.measurement_with_labelplaceholder(_:), v101);
      sub_765C30();
      sub_BEB8(v120);
      v103 = v116;
      sub_762CB0();
      v71 = v104;

      (*(v19 + 8))(v103, v18);
    }
  }

  return v71;
}

double sub_4E86C0(char a1, uint64_t a2, int a3, int a4, id a5, __n128 a6)
{
  LODWORD(v112) = a3;
  v120 = a2;
  v119 = a4;
  v8 = a4;
  v9 = sub_7573C0();
  v115 = *(v9 - 8);
  v116 = v9;
  __chkstk_darwin(v9);
  v114 = v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v11 - 8);
  v110 = v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v107 - v14;
  v16 = sub_7666D0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v111 = v107 - v21;
  __chkstk_darwin(v22);
  v118 = v107 - v23;
  __chkstk_darwin(v24);
  v26 = v107 - v25;
  __chkstk_darwin(v27);
  v29 = v107 - v28;
  __chkstk_darwin(v30);
  v109 = v107 - v31;
  v113 = type metadata accessor for EditorsChoiceView();
  v32 = [a5 traitCollection];
  v108 = v26;
  if (v8 == 1)
  {
    v33 = a5;
    v34 = v32;
    v35 = [v32 preferredContentSizeCategory];
    v36 = sub_769B20();

    a5 = v33;
    if (v36)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v37 = v120;
  v38 = sub_2E0248(v120);
  v39 = sub_2E0514(v37);
  [v38 size];
  [v39 size];

LABEL_6:
  v40 = v19;
  v117 = a5;
  if (a1)
  {
    goto LABEL_44;
  }

  v41._countAndFlagsBits = 0xD00000000000001ALL;
  v41._object = 0x80000000007CF720;
  if (v112)
  {
    v42 = sub_762F40(v41);
  }

  else
  {
    v124._countAndFlagsBits = 0;
    v124._object = 0xE000000000000000;
    v42 = sub_75B750(v41, v124);
  }

  v44 = v42;
  v45 = v43;
  v46 = [a5 traitCollection];
  v107[2] = v45;
  v107[1] = v44;
  if (v120 <= 1u)
  {
    if (v120)
    {
      if (qword_93D7C0 != -1)
      {
        swift_once();
      }

      v47 = qword_99EF38;
    }

    else
    {
      if (qword_93D7B8 != -1)
      {
        swift_once();
      }

      v47 = qword_99EF20;
    }
  }

  else if (v120 == 2)
  {
    if (v119)
    {
      if (qword_93D7E0 != -1)
      {
        swift_once();
      }

      v47 = qword_99EF98;
    }

    else
    {
      if (qword_93D7E8 != -1)
      {
        swift_once();
      }

      v47 = qword_99EFB0;
    }
  }

  else if (v120 == 3)
  {
    if (qword_93D810 != -1)
    {
      swift_once();
    }

    v47 = qword_99F028;
  }

  else
  {
    if (qword_93D818 != -1)
    {
      swift_once();
    }

    v47 = qword_99F040;
  }

  v48 = sub_BE38(v16, v47);
  (*(v17 + 16))(v29, v48, v16);
  v49 = v114;
  sub_757390();
  sub_2E0918(v120, v15);
  (*(v115 + 8))(v49, v116);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {

    sub_10A2C(v15, &unk_93E530, &unk_77C5F0);
    v50 = v109;
    (*(v17 + 32))(v109, v29, v16);
    a5 = v117;
  }

  else
  {
    v107[0] = v19;
    v51 = *(v17 + 32);
    v52 = v108;
    v51(v108, v15, v16);
    v53.super.isa = v46;
    isa = sub_7666B0(v53).super.isa;
    [(objc_class *)isa pointSize];
    v56 = v55;
    v57.super.isa = v46;
    v58 = sub_7666B0(v57).super.isa;
    [(objc_class *)v58 pointSize];
    v60 = v59;

    v61 = *(v17 + 8);
    if (v60 >= v56)
    {
      v61(v52, v16);
      v50 = v109;
      v62 = v109;
      v63 = v29;
    }

    else
    {
      v61(v29, v16);
      v50 = v109;
      v62 = v109;
      v63 = v52;
    }

    v51(v62, v63, v16);
    a5 = v117;
    v40 = v107[0];
  }

  v64 = v119;
  v65 = [a5 traitCollection];
  if (v64 == 1)
  {
    v66 = v65;
    v67 = [v65 preferredContentSizeCategory];
    sub_769B20();
  }

  else
  {
  }

  v68 = sub_7653B0();
  v122 = v68;
  v123 = sub_4E94D8(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v69 = sub_B1B4(v121);
  (*(*(v68 - 8) + 104))(v69, enum case for Feature.measurement_with_labelplaceholder(_:), v68);
  sub_765C30();
  sub_BEB8(v121);
  sub_762CB0();
  v71 = v70;

  (*(v17 + 8))(v50, v16);
  v72 = sub_765BF0();
  if (v119)
  {
    if ((v72 & 1) == 0)
    {
LABEL_44:
      v73._object = 0x80000000007D9F40;
      if (v112)
      {
        v73._countAndFlagsBits = 0xD000000000000017;
        v74 = sub_762F40(v73);
      }

      else
      {
        v125._countAndFlagsBits = 0xD000000000000050;
        v125._object = 0x80000000007D9F60;
        v73._countAndFlagsBits = 0xD000000000000017;
        v74 = sub_75B750(v73, v125);
      }

      v76 = v74;
      v77 = v75;
      v79 = v110;
      v78 = v111;
      v80 = [a5 traitCollection];
      v112 = v76;
      if (v120 <= 1u)
      {
        if (v120)
        {
          v81 = v80;
          if (qword_93D7C0 != -1)
          {
            swift_once();
          }

          v82 = qword_99EF38;
        }

        else
        {
          v81 = v80;
          if (qword_93D7B8 != -1)
          {
            swift_once();
          }

          v82 = qword_99EF20;
        }
      }

      else if (v120 == 2)
      {
        if (v119)
        {
          v81 = v80;
          if (qword_93D7E0 != -1)
          {
            swift_once();
          }

          v82 = qword_99EF98;
        }

        else
        {
          v81 = v80;
          if (qword_93D7E8 != -1)
          {
            swift_once();
          }

          v82 = qword_99EFB0;
        }
      }

      else if (v120 == 3)
      {
        v81 = v80;
        if (qword_93D810 != -1)
        {
          swift_once();
        }

        v82 = qword_99F028;
      }

      else
      {
        v81 = v80;
        if (qword_93D818 != -1)
        {
          swift_once();
        }

        v82 = qword_99F040;
      }

      v83 = sub_BE38(v16, v82);
      (*(v17 + 16))(v78, v83, v16);
      v84 = v114;
      sub_757390();
      sub_2E0918(v120, v79);
      (*(v115 + 8))(v84, v116);
      if ((*(v17 + 48))(v79, 1, v16) == 1)
      {

        sub_10A2C(v79, &unk_93E530, &unk_77C5F0);
        (*(v17 + 32))(v118, v78, v16);
      }

      else
      {
        v120 = v77;
        v85 = v78;
        v86 = *(v17 + 32);
        v86(v40, v79, v16);
        v87.super.isa = v81;
        v88 = sub_7666B0(v87).super.isa;
        [(objc_class *)v88 pointSize];
        v90 = v89;
        v91.super.isa = v81;
        v92 = sub_7666B0(v91).super.isa;
        [(objc_class *)v92 pointSize];
        v94 = v93;

        v95 = *(v17 + 8);
        if (v94 >= v90)
        {
          v95(v40, v16);
          v96 = v118;
          v97 = v85;
        }

        else
        {
          v95(v85, v16);
          v96 = v118;
          v97 = v40;
        }

        v86(v96, v97, v16);
      }

      v98 = v119;
      v99 = [v117 traitCollection];
      if (v98 == 1)
      {
        v100 = v99;
        v101 = [v99 preferredContentSizeCategory];
        sub_769B20();
      }

      else
      {
      }

      v102 = sub_7653B0();
      v122 = v102;
      v123 = sub_4E94D8(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v103 = sub_B1B4(v121);
      (*(*(v102 - 8) + 104))(v103, enum case for Feature.measurement_with_labelplaceholder(_:), v102);
      sub_765C30();
      sub_BEB8(v121);
      v104 = v118;
      sub_762CB0();
      v71 = v105;

      (*(v17 + 8))(v104, v16);
    }
  }

  return v71;
}

uint64_t sub_4E94D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_4E9520(double a1, uint64_t a2, void *a3)
{
  v10._object = 0x80000000007D9F40;
  v11._countAndFlagsBits = 0xD000000000000050;
  v11._object = 0x80000000007D9F60;
  v10._countAndFlagsBits = 0xD000000000000017;
  sub_75B750(v10, v11);
  v5 = sub_769350();

  v6 = v5 < 19;
  v7 = sub_2E0248(v5 < 19);
  v8 = sub_2E0514(v6);
  [v7 size];
  [v8 size];

  v9.n128_f64[0] = a1;
  sub_4E86C0(1, v6, 0, 2, a3, v9);
}

uint64_t type metadata accessor for DynamicTypeLinkedTextView(uint64_t a1)
{
  result = qword_957FD0;
  if (!qword_957FD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4E9724(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_76A860();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = sub_76A770();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

void *sub_4E9848(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_76A770();
      }

      else
      {
        if (j >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

double sub_4E995C@<D0>(uint64_t (*a1)(void *, __n128)@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v16 = a1;
  v4 = *(a2 + 16);
  if (v4)
  {
    v14 = a3;
    v5 = (a2 + 72);
    while (1)
    {
      v6 = *(v5 - 5);
      v7 = *(v5 - 4);
      v8 = *(v5 - 3);
      v9 = *(v5 - 2);
      v10 = *(v5 - 1);
      v11 = *v5;
      v15[0] = v6;
      v15[1] = v7;
      v15[2] = v8;
      v15[3] = v9;
      v15[4] = v10;
      v15[5] = v11;

      v12 = v16(v15);
      if (v3)
      {
        break;
      }

      if (v12)
      {
        goto LABEL_7;
      }

      v5 += 6;

      if (!--v4)
      {
        v6 = 0;
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
LABEL_7:
        a3 = v14;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
LABEL_9:
    *a3 = v6;
    a3[1] = v7;
    a3[2] = v8;
    a3[3] = v9;
    a3[4] = v10;
    a3[5] = v11;
  }

  return result;
}

uint64_t sub_4E9AA8(char *a1)
{
  v2 = sub_760AD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  sub_75E040();
  v9 = sub_75E050();
  v9();
  (*(v3 + 16))(v5, a1, v2);
  v10 = sub_75E050();
  v11 = v10(v5);
  (v9)(v11);
  sub_4EC138(&qword_958088, &type metadata accessor for DirectionalTextAlignment, &protocol conformance descriptor for DirectionalTextAlignment);
  v12 = sub_7691C0();
  v13 = *(v3 + 8);
  v13(v5, v2);
  if ((v12 & 1) == 0)
  {
    sub_4E9E24();
  }

  v13(a1, v2);
  return (v13)(v8, v2);
}

id sub_4E9CB0(void *a1)
{
  v3.receiver = a1;
  v3.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v3, "textColor");

  return v1;
}

void sub_4E9D08(void *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v15.receiver = a1;
  v15.super_class = ObjectType;
  v6 = a1;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v15, "textColor");
  v14.receiver = v6;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "setTextColor:", v7);
  v13.receiver = v6;
  v13.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v13, "textColor");
  if (v9)
  {
    v10 = v9;
    if (v8)
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      v11 = v8;
      v12 = sub_76A1C0();

      if (v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  else if (!v8)
  {
    goto LABEL_10;
  }

  sub_4E9E24();
  v11 = v8;
LABEL_9:

LABEL_10:
}

void sub_4E9E24()
{
  ObjectType = swift_getObjectType();
  v2 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v63 - v3;
  v5 = sub_7666D0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DFC0();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10A2C(v4, &unk_93E530, &unk_77C5F0);
    return;
  }

  (*(v6 + 32))(v8, v4, v5);
  v9 = *&v0[qword_957FC8];
  if (v9)
  {
    v67 = v6;
    v68 = v5;
    v10 = sub_BE70(0, &qword_93F900, UIFont_ptr);

    v11 = sub_75E030();
    v66 = v8;
    v12 = sub_769E10();

    v13 = *&v0[qword_957FC0];
    v87.receiver = v0;
    v87.super_class = ObjectType;
    v73 = v13;

    v14 = objc_msgSendSuper2(&v87, "textAlignment");
    v15 = sub_75DFE0();
    v69 = v0;
    v86.receiver = v0;
    v86.super_class = ObjectType;
    v72 = ObjectType;
    v16 = objc_msgSendSuper2(&v86, "textColor");
    if (v16)
    {
      v17 = v16;
      v18 = [objc_allocWithZone(NSMutableParagraphStyle) init];
      [v18 setAlignment:v14];
      [v18 setLineBreakMode:v15];
      sub_BD88(&qword_940F40, &qword_785F00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_77E280;
      *(inited + 32) = NSParagraphStyleAttributeName;
      v20 = sub_BE70(0, &unk_959BA0, NSMutableParagraphStyle_ptr);
      *(inited + 40) = v18;
      *(inited + 64) = v20;
      *(inited + 72) = NSFontAttributeName;
      *(inited + 104) = v10;
      *(inited + 80) = v12;
      v21 = NSParagraphStyleAttributeName;
      v22 = v18;
      v23 = NSFontAttributeName;
      v24 = v12;
      v25 = sub_10D028(inited);
      swift_setDeallocating();
      sub_BD88(qword_940F50, &qword_785170);
      swift_arrayDestroy();
      v80 = sub_BE70(0, &qword_93E540, UIColor_ptr);
      *&aBlock = v17;
      sub_13310(&aBlock, v84);
      v64 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83 = v25;
      sub_4592E8(v84, NSForegroundColorAttributeName, isUniquelyReferenced_nonNull_native);
      v85 = v83;

      sub_BE70(0, &qword_958080, NSMutableAttributedString_ptr);
      v71 = v24;
      v65 = v9;
      v27 = sub_758EC0();
      v28 = v85;

      v29.super.isa = v27;
      v30._rawValue = v28;
      isa = sub_769A80(v29, v30).super.isa;
      v32 = v22;
      v33 = isa;
      v34 = [(objc_class *)v33 fullRange];
      [(objc_class *)v33 addAttribute:v21 value:v32 range:v34, v35];
      v63 = v32;

      v70 = swift_allocObject();
      *(v70 + 16) = 0;
      *&v84[0] = 0;
      v36 = *(v73 + 16);
      v75 = NSLinkAttributeName;
      if (v36)
      {
        v74 = NSUnderlineStyleAttributeName;
        v37 = v73 + 72;
        do
        {
          v38 = *(v37 - 24);
          v76 = *(v37 - 8);

          v77 = v38;

          v39 = sub_4EB3B4(v84, v33);
          v40 = sub_769210();
          v41 = [v39 rangeOfString:v40 options:4];
          v43 = v42;

          if (v41 != sub_756C80())
          {
            v44 = sub_769210();
            [(objc_class *)v33 addAttribute:v75 value:v44 range:v41, v43];

            if (UIAccessibilityButtonShapesEnabled())
            {
              v45 = sub_769670().super.super.isa;
              [(objc_class *)v33 addAttribute:v74 value:v45 range:v41, v43];
            }
          }

          v37 += 48;

          --v36;
        }

        while (v36);
      }

      v46 = [(objc_class *)v33 fullRange];
      v48 = v47;
      v49 = v33;
      v50 = swift_allocObject();
      v51 = v73;
      v50[2] = v72;
      v50[3] = v51;
      v52 = v71;
      v50[4] = v70;
      v50[5] = v52;
      v50[6] = &v85;
      v50[7] = v49;
      v53 = swift_allocObject();
      *(v53 + 16) = sub_4EBBFC;
      *(v53 + 24) = v50;
      v81 = sub_12944C;
      v82 = v53;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v79 = sub_2157DC;
      v80 = &unk_894A60;
      v54 = _Block_copy(&aBlock);
      v55 = v52;

      [(objc_class *)v49 enumerateAttribute:v75 inRange:v46 options:v48 usingBlock:0, v54];
      _Block_release(v54);
      LOBYTE(v54) = swift_isEscapingClosureAtFileLocation();

      if ((v54 & 1) == 0)
      {
        v56 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v49];

        v57 = *&v84[0];

        v58 = v69;
        [v69 setAttributedText:v56];

        sub_758EB0();
        sub_769340();
        v60 = v59;
        v62 = v61;

        [v58 setTextContainerInset:{v60, 0.0, v62, 0.0}];

        (*(v67 + 8))(v66, v68);
        return;
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
  }
}

id sub_4EA738(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "textAlignment");
}

void sub_4EA778(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v10.receiver = a1;
  v10.super_class = ObjectType;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v10, "textAlignment");
  v9.receiver = v6;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "setTextAlignment:", a3);
  v8.receiver = v6;
  v8.super_class = ObjectType;
  if (objc_msgSendSuper2(&v8, "textAlignment") != v7)
  {
    sub_4E9E24();
  }
}

uint64_t sub_4EA818(__n128 a1)
{
  sub_75E040();
  v1 = sub_75E050();

  return v1();
}

void (*sub_4EA870(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_760AD0();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v4[4] = v8;
  sub_75E040();
  v9 = sub_75E050();
  v9();
  return sub_4EA99C;
}

void sub_4EA99C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_4E9AA8(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_4E9AA8(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

void sub_4EAA50(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "tintColorDidChange");
  sub_4E9E24();
}

void sub_4EAAA8(uint64_t a1, uint64_t a2)
{
  *&v2[qword_957FC8] = a1;

  v4 = qword_957FC0;
  *&v2[qword_957FC0] = a2;

  if (*(*&v2[v4] + 16))
  {
    v5 = &UIAccessibilityTraitLink;
  }

  else
  {
    v5 = &UIAccessibilityTraitStaticText;
  }

  [v2 setAccessibilityTraits:*v5];

  sub_4E9E24();
}

id sub_4EAB5C()
{
  [v0 setAttributedText:0];
  *&v0[qword_957FC8] = 0;

  v1 = qword_957FC0;
  *&v0[qword_957FC0] = _swiftEmptyArrayStorage;

  if (*(*&v0[v1] + 16))
  {
    v2 = &UIAccessibilityTraitLink;
  }

  else
  {
    v2 = &UIAccessibilityTraitStaticText;
  }

  [v0 setAccessibilityTraits:*v2];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;

  return [v0 setTextContainerInset:{UIEdgeInsetsZero.top, left, bottom, right}];
}

void sub_4EAC20(void *a1)
{
  v1 = a1;
  sub_4E9E24();
}

void sub_4EAC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + qword_957FC0);
    v9 = Strong;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  __chkstk_darwin(Strong);
  *(&v16 - 2) = a2;
  sub_4E995C(sub_4EC184, v8, &v17);

  v10 = v18;
  if (v18)
  {
    v11 = v17;
    v13 = v19;
    v12 = v20;
    v14 = sub_BD88(&unk_93F630, &unk_77E230);
    sub_768860();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v6, 1, v14) == 1)
    {
      v22 = v11;
      v23 = v10;
      sub_B2FFC(&v22);

      v24 = v21;
      sub_B2FFC(&v24);
      sub_10A2C(v6, &unk_93F980, &qword_77EDA0);
    }

    else
    {
      sub_32A6C0(v13, 1, v12, v6);
      v22 = v11;
      v23 = v10;
      sub_B2FFC(&v22);

      v24 = v21;
      sub_B2FFC(&v24);

      (*(v15 + 8))(v6, v14);
    }
  }
}

id sub_4EAED4(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a1;
  v12 = sub_4EBC74(v9, v10);

  return v12;
}

BOOL sub_4EAF68()
{
  v1 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = *(v0 + qword_957FC0);
  v5 = v4[2];
  if (v5)
  {
    v6 = v4[6];
    v7 = v4[7];
    v8 = sub_BD88(&unk_93F630, &unk_77E230);

    sub_768860();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v3, 1, v8) == 1)
    {

      sub_10A2C(v3, &unk_93F980, &qword_77EDA0);
    }

    else
    {
      sub_32A6C0(v6, 1, v7, v3);

      (*(v9 + 8))(v3, v8);
    }
  }

  return v5 != 0;
}

BOOL sub_4EB138(void *a1)
{
  v1 = a1;
  v2 = sub_4EAF68();

  return v2;
}

uint64_t sub_4EB16C()
{
  sub_764C50();
  v0 = sub_76A6A0();
  v2 = v1;
  sub_1EB60(v7);
  v3 = sub_757070();
  if (v4)
  {
    if (v0 == v3 && v4 == v2)
    {

      v5 = 1;
    }

    else
    {
      v5 = sub_76A950();
    }
  }

  else
  {

    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_4EB24C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v14 = 0x2F3A6E6F69746361;
  v15 = 0xE90000000000002FLL;

  sub_764C50();
  v16._countAndFlagsBits = sub_76A6A0();
  sub_769370(v16);

  result = sub_1EB60(v13);
  v11 = v14;
  v12 = v15;
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  a5[4] = v11;
  a5[5] = v12;
  return result;
}

id sub_4EB310(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v5 = [objc_opt_self() configurationWithFont:a2 scale:1];
    swift_beginAccess();
    v6 = *v3;
    *v3 = v5;
    v4 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v4;
}

id sub_4EB3B4(void **a1, id a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *a1;
  }

  else
  {
    v5 = [a2 string];
    if (!v5)
    {
      sub_769240();
      v5 = sub_769210();
    }

    v6 = [objc_allocWithZone(NSString) initWithString:v5];

    swift_beginAccess();
    v7 = *a1;
    *a1 = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_4EB488(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, id a10)
{
  v16 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v16 - 8);
  v18 = v48 - v17;
  v19 = sub_7570A0();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_38EE0(a1, &v56);
  if (!v59)
  {
    sub_10A2C(&v56, &unk_93FBD0, &qword_77DFA0);
    return;
  }

  v51 = a3;
  if (swift_dynamicCast())
  {
    sub_757090();

    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      sub_10A2C(v18, &unk_93FD30, qword_77F240);
      return;
    }

    v23 = (*(v20 + 32))(v22, v18, v19);
    __chkstk_darwin(v23);
    v48[-2] = v22;
    v24.n128_f64[0] = sub_4E995C(sub_4EBC54, a6, &v56);
    if (!v57)
    {
      goto LABEL_19;
    }

    v49 = a2;
    v50 = v57;
    v25 = v56;
    v26 = v58;
    v27 = v59;
    v28 = sub_764C70();
    if (v28)
    {
      v29 = v28;
      v48[0] = v25;
      v48[1] = v26;
      v48[2] = v27;

      v30 = sub_4EB310(a7, a8);
      if (sub_765190())
      {
        v31 = sub_759910();
        v32 = v49;
      }

      else
      {
        v33 = sub_765180();
        v32 = v49;
        if ((v33 & 1) == 0)
        {
          *&v53[0] = v48[0];
          *(&v53[0] + 1) = v50;
          sub_B2FFC(v53);

          v54 = v60;
          sub_B2FFC(&v54);

          goto LABEL_19;
        }

        v31 = sub_56EBA8(v29, v30);
      }

      if (v31)
      {
        v34 = v31;
        v35 = *a9;
        v61[0] = v60;
        v55 = &type metadata for String;
        v54 = v60;
        sub_13310(&v54, v53);

        sub_B2F4C(v61, &v52);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52 = v35;
        sub_4592E8(v53, NSLinkAttributeName, isUniquelyReferenced_nonNull_native);
        v37 = objc_allocWithZone(NSMutableAttributedString);
        v38 = sub_769210();
        v39 = [v37 initWithString:v38];

        v40 = [objc_opt_self() textAttachmentWithImage:v34];
        v41 = [objc_opt_self() attributedStringWithAttachment:v40];

        [v39 appendAttributedString:v41];
        type metadata accessor for Key(0);
        sub_4EC138(&qword_93EC10, type metadata accessor for Key, &unk_77D804);
        isa = sub_7690E0().super.isa;

        v43 = [v39 fullRange];
        [v39 addAttributes:isa range:{v43, v44}];

        v45 = __OFADD__(v32, v51);
        v46 = v32 + v51;
        v47 = v48[0];
        if (v45)
        {
          __break(1u);
          return;
        }

        [a10 insertAttributedString:v39 atIndex:v46];

        *&v54 = v47;
        *(&v54 + 1) = v50;
        sub_B2FFC(&v54);

        sub_B2FFC(v61);

        goto LABEL_19;
      }

      *&v53[0] = v48[0];
      *(&v53[0] + 1) = v50;
      sub_B2FFC(v53);
    }

    else
    {
      *&v53[0] = v25;
      *(&v53[0] + 1) = v50;
      sub_B2FFC(v53);
    }

    v54 = v60;
    sub_B2FFC(&v54);
LABEL_19:
    (*(v20 + 8))(v22, v19, v24);
  }
}

double sub_4EBAD0()
{

  return result;
}

double sub_4EBB10(uint64_t a1)
{

  return result;
}

uint64_t sub_4EBB74()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4EBBAC()
{

  return _swift_deallocObject(v0, 64, 7);
}

double sub_4EBC3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_4EBC74(uint64_t a1, void *a2)
{
  v22 = a2;
  ObjectType = swift_getObjectType();
  v2 = sub_769720();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7570A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  sub_769730();
  if ((*(v3 + 88))(v5, v2) == enum case for UITextItem.Content.link(_:))
  {
    (*(v3 + 96))(v5, v2);
    v21 = *(v7 + 32);
    v13 = v6;
    v21(v12, v5, v6);
    v22 = sub_BE70(0, &qword_955FA0, UIAction_ptr);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v7 + 16))(v9, v12, v13);
    v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    v21((v17 + v15), v9, v13);
    *(v17 + v16) = v14;
    *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;

    v18 = sub_76A1F0();
    (*(v7 + 8))(v12, v13);

    return v18;
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    return v22;
  }
}

uint64_t sub_4EBFB4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4EBFEC()
{
  v1 = sub_7570A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}