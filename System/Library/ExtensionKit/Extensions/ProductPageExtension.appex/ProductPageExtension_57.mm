double sub_100666B40(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = sub_10077164C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076D39C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v23 - v17;
  if (JUScreenClassGetMain() == 1)
  {
    if (qword_100941470 != -1)
    {
      swift_once();
    }

    v19 = qword_100962AF0;
  }

  else
  {
    if (qword_100941468 != -1)
    {
      swift_once();
    }

    v19 = qword_100962AD8;
  }

  v20 = sub_10000A61C(v12, v19);
  (*(v13 + 16))(v15, v20, v12);
  (*(v13 + 32))(v18, v15, v12);
  sub_10076D36C();
  (*(v13 + 8))(v18, v12);
  if (qword_100941200 != -1)
  {
    swift_once();
  }

  v21 = sub_10076D9AC();
  sub_10000A61C(v21, qword_1009A2380);
  sub_10076D17C();
  sub_10076D40C();
  (*(v9 + 8))(v11, v8);
  return a1;
}

uint64_t sub_100666E38()
{
  result = sub_100763FEC();
  if (result)
  {

    return 3;
  }

  return result;
}

uint64_t sub_100666E78(uint64_t a1, uint64_t a2)
{
  sub_10075FD2C();
  sub_100667A78(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  return sub_100760BFC();
}

uint64_t sub_100666F0C(uint64_t a1)
{
  result = sub_100667A78(&qword_100962B08, type metadata accessor for EditorialStoryCardCollectionViewCell, &unk_1007B1F98);
  *(a1 + 8) = result;
  return result;
}

void sub_100666FF4(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v9 = sub_1007621EC();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = [a6 snapshotPageTraitEnvironment];
  *&v6[OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_pageTraits] = v14;
  swift_unknownObjectRelease();
  v15 = *&v6[OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_headingLabel];
  sub_10076402C();
  if (v16)
  {
    v17 = sub_10076FF6C();
  }

  else
  {
    v17 = 0;
  }

  [v15 setText:v17];

  v18 = *&v6[OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_titleLabel];
  sub_10076401C();
  v19 = sub_10076FF6C();

  v42 = v18;
  [v18 setText:v19];

  v20 = *&v6[OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_descriptionLabel];
  sub_100763FFC();
  v41 = v15;
  if (v21)
  {
    v22 = sub_10076FF6C();
  }

  else
  {
    v22 = 0;
  }

  [v20 setText:{v22, v41}];

  sub_10076400C();
  v23 = (*(v10 + 88))(v13, v9);
  if (v23 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v10 + 96))(v13, v9);
    v24 = *(sub_10000A5D4(&qword_10094E098, qword_100795D80) + 48);
    v25 = sub_10076BE1C();

    v26 = sub_1007659CC();
    v27 = *(*(v26 - 8) + 8);
    v28 = v25;
    v27(v13 + v24, v26);
    if (!v25)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v23 != enum case for ShelfBackground.color(_:))
    {
      (*(v10 + 8))(v13, v9);
LABEL_21:
      if (qword_10093FB40 != -1)
      {
        swift_once();
      }

      v34 = qword_10099DC38;
      v25 = 0;
      goto LABEL_24;
    }

    (*(v10 + 96))(v13, v9);
    v25 = *v13;
    v29 = *(sub_10000A5D4(&unk_100950670, qword_100791450) + 48);
    v30 = sub_1007659CC();
    v31 = *(*(v30 - 8) + 8);
    v28 = v25;
    v31(v13 + v29, v30);
  }

  v32 = v28;
  if (sub_100770DFC())
  {
    if (qword_10093FB40 != -1)
    {
      swift_once();
    }

    v33 = qword_10099DC38;
  }

  else
  {
    if (qword_10093FB30 != -1)
    {
      swift_once();
    }

    v33 = qword_10099DC28;
  }

  v34 = v33;

LABEL_24:
  [v41 setTextColor:v34];

  if (v25)
  {
    v35 = v25;
    if (sub_100770DFC())
    {
      if (qword_10093FB48 != -1)
      {
        swift_once();
      }

      v36 = qword_10099DC40;
    }

    else
    {
      if (qword_10093FB38 != -1)
      {
        swift_once();
      }

      v36 = qword_10099DC30;
    }

    v37 = v36;
  }

  else
  {
    if (qword_10093FB48 != -1)
    {
      swift_once();
    }

    v37 = qword_10099DC40;
  }

  [v42 setTextColor:v37];

  if (v25)
  {
    v38 = v25;
    if (sub_100770DFC())
    {
      if (qword_10093FB48 != -1)
      {
        swift_once();
      }

      v39 = qword_10099DC40;
    }

    else
    {
      if (qword_10093FB38 != -1)
      {
        swift_once();
      }

      v39 = qword_10099DC30;
    }

    v40 = v39;
  }

  else
  {
    if (qword_10093FB48 != -1)
    {
      swift_once();
    }

    v40 = qword_10099DC40;
    v38 = 0;
  }

  [v20 setTextColor:v40];

  [v7 setNeedsLayout];
}

id sub_100667640(uint64_t a1, uint64_t a2)
{
  v2 = sub_10077164C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076D39C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v14 = v13;
  if (JUScreenClassGetMain() == 1)
  {
    if (qword_100941470 != -1)
    {
      swift_once();
    }

    v15 = qword_100962AF0;
  }

  else
  {
    if (qword_100941468 != -1)
    {
      swift_once();
    }

    v15 = qword_100962AD8;
  }

  v16 = sub_10000A61C(v6, v15);
  (*(v7 + 16))(v9, v16, v6);
  (*(v7 + 32))(v12, v9, v6);
  sub_10076D36C();
  v18 = v17;
  (*(v7 + 8))(v12, v6);
  v19 = objc_opt_self();
  v20 = [v19 absoluteDimension:v14];
  if (qword_100941200 != -1)
  {
    swift_once();
  }

  v21 = sub_10076D9AC();
  sub_10000A61C(v21, qword_1009A2380);
  sub_10076D17C();
  sub_10076D40C();
  v23 = v22;
  (*(v3 + 8))(v5, v2);
  v24 = [v19 absoluteDimension:round(v18) + v23];
  v25 = [objc_opt_self() sizeWithWidthDimension:v20 heightDimension:v24];

  v26 = [objc_opt_self() itemWithLayoutSize:v25];
  v27 = objc_opt_self();
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1007841E0;
  *(v28 + 32) = v26;
  sub_10004B9FC();
  v29 = v26;
  isa = sub_1007701AC().super.isa;

  v31 = [v27 verticalGroupWithLayoutSize:v25 subitems:isa];

  return v31;
}

uint64_t sub_100667A78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100667AC0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_isCollapsing] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_objectGraph] = a2;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_presenter] = a1;
  sub_100760C4C();
  sub_10076F64C();

  sub_10076FC1C();
  *&v3[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_artworkLoader] = v24;

  sub_100760C5C();

  sub_100760C0C();

  v9 = &v3[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver];
  *(v9 + 3) = sub_10075F07C();
  *(v9 + 4) = &protocol witness table for BasePresenter;
  *v9 = a1;
  v10 = objc_allocWithZone(type metadata accessor for AppEventDetailPageView(0));

  v11 = [v10 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_pageView] = v11;
  v12 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageTransitioningDelegate(0));
  v13 = a3;
  v14 = sub_100215438(a3);

  *&v4[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_containerTransitioningDelegate] = v14;
  v23.receiver = v4;
  v23.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v23, "initWithNibName:bundle:", 0, 0);
  sub_100767D5C();
  v16 = v15;
  sub_10076FC1C();
  v17 = v24;
  v18 = v16;
  sub_100767D2C();

  sub_10066B6D0(&qword_100962BC8, v19, type metadata accessor for AppEventDetailPageViewController, &unk_1007B209C);
  sub_10075F06C();
  v20 = [v18 view];

  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v21 = [v18 view];
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  [v21 setClipsToBounds:0];

  v22 = [v18 view];
  if (v22)
  {
    [v22 addSubview:*&v18[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_pageView]];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_100667FC4(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10075F2AC();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v2;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewWillAppear:", a1 & 1, v7);
  sub_10000CF78(&v2[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.willAppear(_:), v5);
  sub_10075F2BC();
  (*(v6 + 8))(v9, v5);
  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v10 = v12[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_10066B6D0(&qword_100942810, 255, type metadata accessor for VideoView, &unk_1007AF120);
  }

  sub_10066B6D0(&qword_100952AE0, 255, type metadata accessor for AppEventDetailPageView, &unk_10079BBEC);
  sub_100767D3C();
}

void sub_10066827C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10075DD7C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10075F2AC();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = v2;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, "viewDidAppear:", a1 & 1, v11);
  sub_10000CF78(&v2[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v9);
  sub_10075F2BC();
  (*(v10 + 8))(v13, v9);
  if (sub_100760C6C())
  {
    sub_10075DD6C();
    sub_10075DD4C();
    (*(v6 + 8))(v8, v5);
    sub_10076367C();
  }

  sub_100760BDC();
  sub_100761FAC();
  sub_100761F8C();
  sub_100760CAC();
  sub_100761F6C();

  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v14 = v15[1];
  sub_100767CDC();
  sub_10032A86C();
}

void sub_1006685BC(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10075DD7C();
  v18 = *(v5 - 8);
  v19 = v5;
  __chkstk_darwin(v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076FAAC();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10000A5D4(&unk_100946A10, &qword_100789280);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_10075F2AC();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.receiver = v2;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, "viewWillDisappear:", a1 & 1, v14);
  sub_10000CF78(&v2[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver + 24]);
  sub_10076FA9C();
  (*(v13 + 104))(v16, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v12);
  sub_10075F2BC();
  (*(v13 + 8))(v16, v12);
  if (sub_100760C6C())
  {
    sub_10076FA9C();
    sub_10075DD6C();
    sub_10075DD4C();
    (*(v18 + 8))(v7, v19);
    sub_10076369C();
    v17 = sub_1007636AC();
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
    sub_10076368C();
  }

  sub_100760BDC();
  sub_100761FAC();
  sub_100761F8C();
  sub_100761F6C();

  sub_100761F8C();
  sub_100761F0C();
}

void sub_10066898C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10075F2AC();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v2;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "viewDidDisappear:", a1 & 1, v7);
  sub_10000CF78(&v2[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v5);
  sub_10075F2BC();
  (*(v6 + 8))(v9, v5);
  v10 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_pageView];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    type metadata accessor for VideoView(0);
    sub_10066B6D0(&unk_100942840, 255, type metadata accessor for VideoView, &unk_1007B40F8);
    sub_100760BFC();
  }

  else
  {
    sub_100016F40(0, &qword_10094A280, UIImageView_ptr);
    sub_10032E104();
    sub_100760BFC();
  }

  v13 = *(*(v10 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  sub_10075FD2C();
  sub_10066B6D0(&qword_100941820, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v14 = v13;
  sub_100760BFC();

  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v15 = v17[1];
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    sub_10066B6D0(&qword_100942810, 255, type metadata accessor for VideoView, &unk_1007AF120);
  }

  sub_10066B6D0(&qword_100952AE0, 255, type metadata accessor for AppEventDetailPageView, &unk_10079BBEC);
  sub_100767CFC();
}

double sub_100668E20()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10075F2AC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "as_viewDidBecomeFullyVisible", v5);
  sub_10000CF78(&v1[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v3);
  sub_10075F2BC();
  (*(v4 + 8))(v7, v3);
  sub_100760BDC();
  sub_100761FAC();
  sub_100761F8C();
  sub_100760CAC();
  sub_100761F6C();

  sub_100761F8C();
  sub_100761F0C();

  return result;
}

double sub_100669020()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10075F2AC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "as_viewWillBecomePartiallyVisible", v5);
  sub_10000CF78(&v1[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver + 24]);
  sub_10076FA9C();
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v3);
  sub_10075F2BC();
  (*(v4 + 8))(v7, v3);
  sub_100760BDC();
  sub_100761FAC();
  sub_100761F8C();
  sub_100761F6C();

  sub_100761F8C();
  sub_100761F0C();

  return result;
}

void sub_10066923C(SEL *a1, unsigned int *a2, void (*a3)(uint64_t))
{
  v7 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_10075F2AC();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v7;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, *a1, v11);
  sub_10000CF78(&v7[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver], *&v7[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, *a2, v9);
  sub_10075F2BC();
  (*(v10 + 8))(v13, v9);
  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v15 = v16[1];
  a3(v14);
}

id sub_100669454()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_pageView];
  result = [v0 view];
  if (result)
  {
    v3 = result;
    [result bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v1 setFrame:{v5, v7, v9, v11}];
    v12 = sub_1005A5D54();
    v13 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_defaultPageMargin;
    *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_defaultPageMargin] = v12;
    v14 = [v1 traitCollection];
    LOBYTE(v3) = sub_10077070C();

    if (v3)
    {
      v15 = -*&v1[v13];
    }

    else
    {
      v15 = 0.0;
    }

    return [*&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_cardScrollView] setScrollIndicatorInsets:{0.0, v15}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1006695D8(void *a1)
{
  v2 = v1;
  v17.receiver = v1;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v4 = sub_10077071C() & 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [v1 traitCollection];
  v6 = sub_10077071C();

  if (v4 == 2 || ((v6 ^ v4) & 1) != 0)
  {
    goto LABEL_12;
  }

  v7 = [v2 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_12:
    sub_10075F05C();
    goto LABEL_13;
  }

  v9 = [a1 preferredContentSizeCategory];
  v10 = sub_10076FF9C();
  v12 = v11;
  if (v10 == sub_10076FF9C() && v12 == v13)
  {

    goto LABEL_13;
  }

  v14 = sub_10077167C();

  if ((v14 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  v15 = [v2 view];
  if (v15)
  {
    v16 = v15;
    [v15 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

void sub_10066987C()
{
  v1 = sub_10075F2AC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CF78((v0 + OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver), *(v0 + OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_lifecycleObserver + 24));
  (*(v2 + 104))(v4, enum case for StoreViewControllerLifecycleEvent.appEnteredWhileAppeared(_:), v1);
  sub_10075F2BC();
  (*(v2 + 8))(v4, v1);
  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v5 = v6[1];
  sub_100767CBC();
}

uint64_t sub_100669B74(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10075F2AC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v9 = a1;
    swift_unknownObjectRetain();
    sub_10077123C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v10 = a1;
  }

  (*(v6 + 104))(v8, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v5);
  sub_10075F07C();
  sub_10066B6D0(&qword_100962BD0, 255, &type metadata accessor for AppEventDetailPagePresenter, &protocol conformance descriptor for BasePresenter);
  sub_1007657FC();
  (*(v6 + 8))(v8, v5);
  [a1 dismissViewControllerAnimated:1 completion:0];

  return sub_10000CFBC(v12, &unk_1009434C0, &qword_100783F60);
}

void sub_100669D2C()
{
  v1 = v0;
  v2 = sub_10075F2AC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v2, v4);
  sub_10075F07C();
  sub_10066B6D0(&qword_100962BD0, 255, &type metadata accessor for AppEventDetailPagePresenter, &protocol conformance descriptor for BasePresenter);
  sub_1007657FC();
  (*(v3 + 8))(v6, v2);
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  aBlock[4] = sub_10066B820;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_10089EA40;
  v8 = _Block_copy(aBlock);
  v9 = v1;

  [v9 dismissViewControllerAnimated:1 completion:v8];
  _Block_release(v8);
}

uint64_t sub_100669F2C(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  result = sub_10075F04C();
  if (result)
  {
    v6 = result;
    v7 = OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_objectGraph;
    v8 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);

    sub_10076F5AC();

    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v4, 1, v8) == 1)
    {

      return sub_10000CFBC(v4, &unk_100943200, &unk_100785840);
    }

    else
    {
      v10 = *(a1 + v7);

      sub_100263BF0(v6, 1, v10, v4);

      return (*(v9 + 8))(v4, v8);
    }
  }

  return result;
}

void sub_10066A154(uint64_t a1)
{
  v2 = v1;
  v86 = a1;
  v82 = sub_10076361C();
  v78 = *(v82 - 8);
  __chkstk_darwin(v82);
  v81 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v80 = &v71 - v5;
  __chkstk_darwin(v6);
  v79 = &v71 - v7;
  v8 = sub_10000A5D4(&unk_10094C030, &unk_10078D680);
  __chkstk_darwin(v8 - 8);
  v77 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v76 = &v71 - v11;
  v12 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v12 - 8);
  v73 = &v71 - v13;
  v14 = sub_1007611EC();
  __chkstk_darwin(v14 - 8);
  v71 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v17 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v17 - 8);
  v19 = &v71 - v18;
  v20 = sub_10076121C();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_10076481C();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v84 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v83 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_pageView];
  v26 = [v1 traitCollection];
  if (sub_10077071C())
  {
    v27 = sub_1007706EC();
  }

  else
  {
    v27 = 0;
  }

  v28 = [v2 view];
  if (v28)
  {
    v29 = v28;
    [v28 bounds];

    v30 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_artworkLoader];
    v31 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_objectGraph];
    *(v25 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkLoader) = v30;

    v32 = sub_10075ED8C();
    v87 = v31;
    sub_10049ACC0(v32, v27 & 1, v31);

    if (sub_10075EDCC())
    {
      v33 = sub_10076B84C();
    }

    else
    {
      v33 = sub_10075EDDC();
    }

    *(v25 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mainArtwork) = v33;

    if (sub_10075EDCC())
    {
      (*(v21 + 104))(v23, enum case for VideoFillMode.scaleAspectFill(_:), v20);
      sub_10076B84C();
      sub_10076BEFC();
      sub_10076D3AC();

      v34 = sub_10076D39C();
      (*(*(v34 - 8) + 56))(v19, 0, 1, v34);
      sub_10076B7EC();
      sub_10076B82C();
      sub_10076B7FC();
      sub_10076B7DC();
      sub_10076B83C();
      v35 = v72;
      sub_1007647FC();
      sub_100762F0C();
      sub_10076F5CC();
      sub_10076B7CC();
      v36 = v73;
      sub_10076B85C();
      v37 = sub_10075DB7C();
      (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
      v38 = v76;
      sub_10076B81C();
      v39 = v77;
      sub_10076B80C();
      type metadata accessor for VideoView(0);
      sub_10066B6D0(&qword_100942810, 255, type metadata accessor for VideoView, &unk_1007AF120);
      v40 = sub_100762EEC();
      sub_10000CFBC(v39, &unk_10094C030, &unk_10078D680);
      sub_10000CFBC(v38, &unk_10094C030, &unk_10078D680);
      sub_10000CFBC(v36, &unk_1009435D0, &qword_100785850);
      sub_10000CFBC(v88, &qword_100943310, &unk_100784150);
      sub_10032DD5C();
      swift_unknownObjectWeakAssign();
      sub_100328388();

      sub_10076B84C();
      v41 = sub_10076BE1C();

      sub_100327EFC(v41);

      (*(v74 + 8))(v35, v75);
    }

    else
    {
      sub_10032DD5C();
      swift_unknownObjectWeakAssign();
      sub_100328388();
    }

    v42 = (v25 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_closeButtonActionBlock);
    v43 = *(v25 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_closeButtonActionBlock);
    v44 = *(v25 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_closeButtonActionBlock + 8);
    v45 = v85;
    *v42 = sub_10066B828;
    v42[1] = v45;
    swift_retain_n();
    sub_1000167E0(v43, v44);

    [*(v25 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_closeButton) addTarget:v25 action:"didTapCloseButton:" forControlEvents:64];

    v46 = (v25 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_dismissTapGestureActionBlock);
    v47 = *(v25 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_dismissTapGestureActionBlock);
    v48 = *(v25 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_dismissTapGestureActionBlock + 8);
    v49 = v84;
    *v46 = sub_10066B750;
    v46[1] = v49;

    sub_1000167E0(v47, v48);
    sub_100327714();
    v50 = sub_10075ED9C();
    if (v50)
    {
      v51 = v50;
      v52 = swift_allocObject();
      *(v52 + 16) = v87;
      *(v52 + 24) = v51;

      sub_10032DA50(sub_10066B7B4, v52);
    }

    else
    {
      sub_10032DA50(0, 0);
    }

    v53 = (v25 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupTapGestureActionBlock);
    v54 = *(v25 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupTapGestureActionBlock);
    v55 = *(v25 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupTapGestureActionBlock + 8);
    v56 = v83;
    *v53 = sub_10066B76C;
    v53[1] = v56;

    sub_1000167E0(v54, v55);
    sub_1003278B4();
    v57 = v79;
    sub_10075EDAC();
    v58 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaOverlayStyle;
    swift_beginAccess();
    v59 = v78;
    v60 = v80;
    v61 = v82;
    (*(v78 + 16))(v80, v25 + v58, v82);
    swift_beginAccess();
    (*(v59 + 24))(v25 + v58, v57, v61);
    swift_endAccess();
    sub_1003280A4(v60);
    v62 = *(v59 + 8);
    v62(v60, v61);
    v62(v57, v61);
    v63 = v81;
    sub_10075EDAC();
    v64 = sub_1007635FC();
    v62(v63, v61);
    v65 = *(*(v25 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton);
    if (v64 == 2)
    {
      v66 = objc_opt_self();
      v67 = v65;
      v68 = [v66 whiteColor];
    }

    else
    {
      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      v69 = v65;
      v68 = sub_100770E1C();
    }

    v70 = v68;
    [v65 setTintColor:v68];

    *(v25 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_includeBorderInDarkMode) = sub_10075EDBC() & 1;
    sub_100326E58();
  }

  else
  {
    __break(1u);
  }
}

void sub_10066AD0C(uint64_t a1, uint64_t a2)
{
  v2 = sub_10075F2AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    (*(v3 + 104))(v5, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v2);
    sub_10075F07C();
    sub_10066B6D0(&qword_100962BD0, 255, &type metadata accessor for AppEventDetailPagePresenter, &protocol conformance descriptor for BasePresenter);
    sub_1007657FC();
    (*(v3 + 8))(v5, v2);
    [v7 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_10066AE9C(uint64_t a1, uint64_t a2)
{
  v2 = sub_10075F2AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    (*(v3 + 104))(v5, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v2);
    sub_10075F07C();
    sub_10066B6D0(&qword_100962BD0, 255, &type metadata accessor for AppEventDetailPagePresenter, &protocol conformance descriptor for BasePresenter);
    sub_1007657FC();
    (*(v3 + 8))(v5, v2);
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    aBlock[4] = sub_10066B7BC;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    aBlock[3] = &unk_10089E9F0;
    v9 = _Block_copy(aBlock);
    v10 = v7;

    [v10 dismissViewControllerAnimated:1 completion:v9];
    _Block_release(v9);
  }
}

uint64_t sub_10066B0C4(uint64_t a1)
{
  v3 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_objectGraph;
  v7 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);

  sub_10076F5AC();

  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10000CFBC(v5, &unk_100943200, &unk_100785840);
  }

  v10 = *(v1 + v6);

  sub_100263BF0(a1, 1, v10, v5);

  return (*(v8 + 8))(v5, v7);
}

CGFloat sub_10066B520()
{
  v1 = *(*v0 + OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_pageView);
  [v1 bounds];
  v2 = CGRectGetWidth(v4) * 0.5;
  [v1 bounds];
  CGRectGetHeight(v5);
  return v2;
}

void *sub_10066B588()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_pageView) + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_closeButton);
  v2 = v1;
  return v1;
}

id sub_10066B5C8(char a1)
{
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_isCollapsing) = a1;
  *(*(v1 + OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_pageView) + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_isCollapsing) = a1;
  return sub_100327F98();
}

double sub_10066B610(__n128 a1)
{
  sub_100761FAC();
  sub_100761F8C();
  sub_100760CAC();
  sub_100761F6C();

  return result;
}

uint64_t sub_10066B6D0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_10066B718()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10066B774()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_10066B7C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10066B7DC()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10066B858(uint64_t a1)
{
  v1 = sub_10076C38C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchResultBackgroundView();
  result = swift_dynamicCastClass();
  if (result)
  {
    v6 = result;
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C21C();
    v8 = v7;
    (*(v2 + 8))(v4, v1);
    v9 = 0.0;
    if (v8 > 1.0)
    {
      v9 = 16.0;
    }

    return [v6 _setCornerRadius:v9];
  }

  return result;
}

uint64_t sub_10066B9F0()
{
  sub_10000A5D4(&qword_100949720, qword_1007A2E70);
  v0 = sub_10076B5BC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100783C60;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for Shelf.ContentType.productTopLockup(_:), v0);
  v6(v5 + v2, enum case for Shelf.ContentType.preorderDisclaimer(_:), v0);
  v6(v5 + 2 * v2, enum case for Shelf.ContentType.productBadge(_:), v0);
  v7 = sub_10017A63C(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1009A31A8 = v7;
  return result;
}

void *sub_10066BB64(void *a1, int *a2)
{
  v5 = sub_100382B5C(a1, a2);
  v6 = _swiftEmptyArrayStorage;
  v20 = _swiftEmptyArrayStorage;
  v8 = sub_100670320(a1, a2, v7);
  if (v8)
  {
    v10 = v8;
    sub_10077019C();
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();

    v6 = v20;
  }

  v11 = sub_10066E1CC(a1, v9);
  if (v11)
  {
    v12 = v11;
    sub_10077019C();
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();

    v6 = v20;
  }

  v13 = sub_100671728(a1);
  if (v13)
  {
    v14 = v13;
    sub_10077019C();
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();

    v6 = v20;
  }

  sub_100016F40(0, &qword_100948C70, NSCollectionLayoutBoundarySupplementaryItem_ptr);

  v15 = sub_10077020C();
  v18[2] = v2;
  v18[3] = a1;
  v18[4] = __chkstk_darwin(v15).n128_u64[0];
  v16 = sub_100672E9C(sub_100671CEC, v18, v5);

  v19 = v16;
  sub_1000F9964(v6);
  return v19;
}

void sub_10066BD98(void **a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>, double a4@<D0>)
{
  v6 = *a1;
  if (sub_100671D0C(*a1, a2))
  {
    if ([v6 alignment] == 1 && a4 > 0.0)
    {
      v7 = [v6 layoutSize];
      v8 = [v6 elementKind];
      if (!v8)
      {
        sub_10076FF9C();
        v8 = sub_10076FF6C();
      }

      v9 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v7 elementKind:v8 alignment:objc_msgSend(v6 absoluteOffset:{"alignment"), 0.0, -a4}];

      *a3 = v9;
    }

    else
    {
      *a3 = v6;
      v10 = v6;
    }
  }

  else
  {
    *a3 = 0;
  }
}

double sub_10066BED8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v35 = a4;
  v9 = sub_10076469C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SeparatorSupplementaryView(0);
  if (sub_1007708EC() == a1 && v13 == a2)
  {

LABEL_5:
    a5[3] = sub_10000A5D4(&qword_100942C18, &unk_10078C540);
    a5[4] = sub_100071820(&qword_100949980, &qword_100942C18, &unk_10078C540, &protocol conformance descriptor for ReusableSupplementaryRegistration<A>);
    sub_10000DB7C(a5);

    sub_1007708FC();
LABEL_13:
    sub_10076A3BC();
    return result;
  }

  v34 = a3;
  v14 = sub_10077167C();

  if (v14)
  {
    goto LABEL_5;
  }

  if (a1 == 0xD000000000000023 && 0x80000001007F4550 == a2 || (sub_10077167C() & 1) != 0 || a1 == 0xD000000000000026 && 0x80000001007F4580 == a2 || (sub_10077167C() & 1) != 0)
  {
    a5[3] = sub_10000A5D4(&qword_100962E58, &unk_1007B2270);
    a5[4] = sub_100071820(&qword_100962E60, &qword_100962E58, &unk_1007B2270, &protocol conformance descriptor for ReusableSupplementaryRegistration<A>);
    v36 = sub_10000DB7C(a5);
    type metadata accessor for PlatformSelectorView();

    sub_1007708FC();
    (*(v10 + 16))(&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v9);
    v15 = v9;
    v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v17 = swift_allocObject();
    (*(v10 + 32))(v17 + v16, v12, v15);
    goto LABEL_13;
  }

  type metadata accessor for InteractiveProductReviewsShelfHeaderView();
  if (sub_1007708EC() == a1 && v19 == a2)
  {

LABEL_18:
    a5[3] = sub_10000A5D4(&qword_100962E48, &qword_1007B2268);
    a5[4] = sub_100071820(&qword_100962E50, &qword_100962E48, &qword_1007B2268, &protocol conformance descriptor for ReusableSupplementaryRegistration<A>);
    v36 = sub_10000DB7C(a5);

    sub_1007708FC();
    (*(v10 + 16))(&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v9);
    v21 = v9;
    v22 = v10;
    v23 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v24 = swift_allocObject();
    (*(v22 + 32))(v24 + v23, v12, v21);
    goto LABEL_13;
  }

  v20 = sub_10077167C();

  if (v20)
  {
    goto LABEL_18;
  }

  type metadata accessor for ProductReviewsShelfHeaderView();
  if (sub_1007708EC() == a1 && v25 == a2)
  {

LABEL_23:
    a5[3] = sub_10000A5D4(&qword_100949968, &qword_1007B2260);
    a5[4] = sub_100071820(&unk_100949970, &qword_100949968, &qword_1007B2260, &protocol conformance descriptor for ReusableSupplementaryRegistration<A>);
    v36 = sub_10000DB7C(a5);

    sub_1007708FC();
    (*(v10 + 16))(&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v9);
    v27 = v9;
    v28 = v10;
    v29 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v30 = swift_allocObject();
    (*(v28 + 32))(v30 + v29, v12, v27);
    goto LABEL_13;
  }

  v26 = sub_10077167C();

  if (v26)
  {
    goto LABEL_23;
  }

  v31 = v34;
  v32 = v35;

  return sub_10037E460(a1, a2, v31, v32, a5);
}

void *sub_10066C4D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v5 = sub_10076469C();
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin(v5);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076B66C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - v13;
  v15 = sub_100766B9C();
  v36 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a2;
  v37 = sub_100383578(a1, a2, v38, v16);
  v31 = a1;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v12 + 8))(v14, v11);
  if ((*(v8 + 88))(v10, v7) != enum case for Shelf.ContentsMetadata.productReviews(_:))
  {
    (*(v8 + 8))(v10, v7);
    return v37;
  }

  (*(v8 + 96))(v10, v7);
  v19 = v36;
  (*(v36 + 32))(v18, v10, v15);
  if ((sub_100766B7C() & 1) == 0)
  {
    (*(v19 + 8))(v18, v15);
    return v37;
  }

  v21 = v32;
  v20 = v33;
  v22 = v34;
  (*(v33 + 16))(v32, v31, v34);
  type metadata accessor for InteractiveProductReviewsShelfScrollObserver(0);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = v23 + OBJC_IVAR____TtC20ProductPageExtension44InteractiveProductReviewsShelfScrollObserver_currentState;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  *(v24 + 40) = 1;
  (*(v20 + 32))(v23 + OBJC_IVAR____TtC20ProductPageExtension44InteractiveProductReviewsShelfScrollObserver_shelfLayoutContext, v21, v22);
  swift_unknownObjectWeakAssign();
  *(v23 + OBJC_IVAR____TtC20ProductPageExtension44InteractiveProductReviewsShelfScrollObserver_objectGraph) = v38;

  v25 = v37;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_10049E6FC(0, v25[2] + 1, 1, v25);
  }

  v27 = v25[2];
  v26 = v25[3];
  if (v27 >= v26 >> 1)
  {
    v25 = sub_10049E6FC((v26 > 1), v27 + 1, 1, v25);
  }

  (*(v19 + 8))(v18, v15);
  v28 = sub_1006722B0(&qword_100962E40, type metadata accessor for InteractiveProductReviewsShelfScrollObserver, &unk_10078AD40);
  v25[2] = v27 + 1;
  v29 = &v25[2 * v27];
  v29[4] = v23;
  v29[5] = v28;
  return v25;
}

uint64_t sub_10066C9A0(uint64_t a1)
{
  v2 = sub_100763F9C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100763FDC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v17 - v12;
  (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.top(_:), v2, v11);
  sub_100763FAC();
  (*(v7 + 16))(v9, v13, v6);
  v14 = OBJC_IVAR____TtC20ProductPageExtension26SeparatorSupplementaryView_separator;
  swift_beginAccess();
  (*(v7 + 24))(a1 + v14, v9, v6);
  swift_endAccess();
  sub_1006359A8();
  v15 = *(v7 + 8);
  v15(v9, v6);
  return (v15)(v13, v6);
}

uint64_t sub_10066CBC0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v160 = a1;
  v144 = sub_10076F9AC();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v140 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v141 = &v126 - v8;
  __chkstk_darwin(v9);
  v142 = &v126 - v10;
  v147 = sub_10076C38C();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v145 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_10076B5BC();
  v159 = *(v152 - 8);
  __chkstk_darwin(v152);
  v136 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_10000A5D4(&qword_100942C28, &unk_1007898E0);
  __chkstk_darwin(v151);
  v155 = &v126 - v13;
  v14 = sub_10000A5D4(&qword_1009499A0, &qword_1007848B0);
  __chkstk_darwin(v14 - 8);
  v150 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v148 = &v126 - v17;
  __chkstk_darwin(v18);
  v157 = &v126 - v19;
  v20 = sub_10000A5D4(&unk_1009568A0, &qword_100784890);
  __chkstk_darwin(v20 - 8);
  v138 = &v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v153 = &v126 - v23;
  __chkstk_darwin(v24);
  v154 = &v126 - v25;
  v26 = sub_10076B66C();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v126 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v149 = &v126 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v126 - v34;
  v36 = sub_1007658FC();
  v156 = *(v36 - 8);
  __chkstk_darwin(v36);
  v38 = &v126 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = a5;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v39 = *(v31 + 8);
  v39(v35, v30);
  if ((*(v27 + 88))(v29, v26) != enum case for Shelf.ContentsMetadata.productMedia(_:))
  {
    return (*(v27 + 8))(v29, v26);
  }

  v137 = v39;
  (*(v27 + 96))(v29, v26);
  (*(v156 + 32))(v38, v29, v36);
  v40 = sub_1007658EC();
  v41 = sub_1007658AC();
  v42 = sub_1007658BC();
  v44 = v43;
  v132 = sub_1007658DC();
  v131 = v45;
  v127 = sub_10000A5D4(&unk_100942870, &qword_100784460);
  v46 = swift_allocObject();
  v126 = xmmword_1007841E0;
  *(v46 + 16) = xmmword_1007841E0;
  *(v46 + 32) = v40;
  v139 = v40;

  v135 = v41;
  v128 = sub_1000CD2A0(v41, v46);

  v47 = v148;
  v48 = v150;
  sub_10076463C();
  sub_10000CFBC(v47, &qword_1009499A0, &qword_1007848B0);
  v49 = v48;
  v50 = v157;
  sub_10002AB4C(v49, v157);
  v51 = (*(v31 + 48))(v50, 1, v30);
  v130 = v36;
  v129 = v38;
  v134 = v42;
  v133 = v44;
  if (v51 == 1)
  {
    sub_10000CFBC(v157, &qword_1009499A0, &qword_1007848B0);
    v52 = 1;
    v53 = v154;
  }

  else
  {
    swift_getKeyPath();
    v53 = v154;
    v55 = v157;
    sub_10076F49C();

    v137(v55, v30);
    v52 = 0;
  }

  v56 = *(v159 + 7);
  v57 = v152;
  v56(v53, v52, 1, v152);
  v58 = v149;
  sub_10076468C();
  swift_getKeyPath();
  v59 = v153;
  sub_10076F49C();
  v60 = v59;

  v61 = v30;
  v62 = v57;
  v137(v58, v61);
  v56(v59, 0, 1, v57);
  v63 = *(v151 + 48);
  v64 = v155;
  sub_10002ABBC(v53, v155);
  sub_10002ABBC(v59, v64 + v63);
  v65 = *(v159 + 6);
  v66 = v65(v64, 1, v62);
  v67 = v135;
  v68 = v135 >> 62;
  if (v66 == 1)
  {
    sub_10000CFBC(v60, &unk_1009568A0, &qword_100784890);
    v69 = v155;
    sub_10000CFBC(v53, &unk_1009568A0, &qword_100784890);
    v70 = v65(v69 + v63, 1, v62);
    v71 = v139;
    if (v70 == 1)
    {
      sub_10000CFBC(v69, &unk_1009568A0, &qword_100784890);
LABEL_22:
      LODWORD(v77) = 0;
      v76 = v147;
      goto LABEL_27;
    }

    goto LABEL_11;
  }

  v72 = v138;
  sub_10002ABBC(v64, v138);
  if (v65(v64 + v63, 1, v62) == 1)
  {
    sub_10000CFBC(v153, &unk_1009568A0, &qword_100784890);
    v69 = v155;
    sub_10000CFBC(v154, &unk_1009568A0, &qword_100784890);
    (*(v159 + 1))(v72, v62);
    v71 = v139;
LABEL_11:
    sub_10000CFBC(v69, &qword_100942C28, &unk_1007898E0);
    goto LABEL_12;
  }

  v78 = v159;
  v79 = v64 + v63;
  v80 = v136;
  (*(v159 + 4))(v136, v79, v62);
  sub_1006722B0(&qword_100942C48, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  v81 = v64;
  v82 = sub_10076FF1C();
  v83 = *(v78 + 1);
  v83(v80, v62);
  sub_10000CFBC(v153, &unk_1009568A0, &qword_100784890);
  sub_10000CFBC(v154, &unk_1009568A0, &qword_100784890);
  v83(v72, v62);
  sub_10000CFBC(v81, &unk_1009568A0, &qword_100784890);
  v71 = v139;
  if (v82)
  {
    goto LABEL_22;
  }

LABEL_12:
  if (!v68)
  {
    result = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_14;
    }

LABEL_24:

    goto LABEL_25;
  }

  result = sub_10077158C();
  if (!result)
  {
    goto LABEL_24;
  }

LABEL_14:
  v73 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else if ((v67 & 0xC000000000000001) == 0)
  {
    if ((v73 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v73 < *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v74 = *(v67 + 8 * v73 + 32);

      *&v162 = v71;
      if (v74)
      {
        goto LABEL_19;
      }

LABEL_25:

      v76 = v147;
      goto LABEL_26;
    }

    __break(1u);
    return result;
  }

  v74 = sub_10077149C();
  *&v162 = v71;
  if (!v74)
  {
    goto LABEL_25;
  }

LABEL_19:
  *&v161[0] = v74;
  sub_100760E9C();
  sub_1006722B0(&qword_100947630, &type metadata accessor for MediaPlatform, &protocol conformance descriptor for MediaPlatform);
  v75 = sub_10076FF1C();

  v76 = v147;
  if ((v75 & 1) == 0)
  {
LABEL_26:
    LODWORD(v77) = v128 ^ 1;
    goto LABEL_27;
  }

  LODWORD(v77) = 0;
LABEL_27:
  v84 = v145;
  sub_10076460C();
  sub_10076C24C();
  v86 = v85;
  (*(v146 + 8))(v84, v76);
  v87 = sub_10076461C();
  v88 = type metadata accessor for SnapshotPageTraitEnvironment();
  v89 = objc_allocWithZone(v88);
  v90 = &v89[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v90 = v86;
  *(v90 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v89[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v87;
  v164.receiver = v89;
  v164.super_class = v88;
  v91 = objc_msgSendSuper2(&v164, "init");
  if (v77)
  {
    v92 = 0;
    v93 = v134;
    v94 = v133;
  }

  else
  {
    v94 = v133;
    if (v68)
    {
      v95 = sub_10077158C();
    }

    else
    {
      v95 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v93 = v134;
    if (v95 <= 1)
    {
      v92 = 0;
    }

    else
    {

      v67 = swift_allocObject();
      *(v67 + 16) = v126;
      *(v67 + 32) = v71;

      v92 = 1;
    }
  }

  v96 = sub_10050A204(v67);

  v97 = v92 == 0;
  if (v92)
  {
    v98 = v93;
  }

  else
  {
    v98 = v132;
  }

  if (v97)
  {
    v99 = v131;
  }

  else
  {
    v99 = v94;
  }

  v100 = &v160[OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_text];
  *v100 = v98;
  *(v100 + 1) = v99;

  *&v162 = _swiftEmptyArrayStorage;
  v101 = *(v96 + 2);
  if (v101)
  {
    v102 = 0;
    v103 = (v96 + 56);
    v154 = v101 - 1;
    v158 = v91;
    v159 = _swiftEmptyArrayStorage;
    LODWORD(v157) = v77;
    v155 = v96 + 56;
    while (1)
    {
      v91 = (v103 + 32 * v102);
      v77 = v102;
      while (1)
      {
        if (v77 >= *(v96 + 2))
        {
          __break(1u);
          goto LABEL_68;
        }

        v104 = sub_10076FF6C();
        v105 = [objc_opt_self() _systemImageNamed:v104];

        if (v105)
        {
          break;
        }

LABEL_44:
        ++v77;
        v91 += 32;
        if (v101 == v77)
        {
          v91 = v158;
          LOBYTE(v77) = v157;
          goto LABEL_57;
        }
      }

      if (qword_100940758 != -1)
      {
        swift_once();
      }

      v106 = [v105 imageWithTintColor:qword_1009A0618];

      if (!v106)
      {
        goto LABEL_44;
      }

      sub_10077019C();
      if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v162 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      v102 = v77 + 1;
      sub_10077025C();
      v159 = v162;
      v103 = v155;
      v97 = v154 == v77;
      v91 = v158;
      LOBYTE(v77) = v157;
      if (v97)
      {
        goto LABEL_57;
      }
    }
  }

  v159 = _swiftEmptyArrayStorage;
LABEL_57:
  v107 = OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_images;
  v108 = v160;
  *&v160[OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_images] = v159;

  v109 = *&v108[OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_accessoryImageView];
  if (v77)
  {
    if (qword_100940760 != -1)
    {
      swift_once();
    }

    v110 = qword_10095B420;
  }

  else
  {
    v110 = 0;
  }

  [v109 setImage:v110];

  v111 = *&v160[v107];
  if (v111)
  {
    if (v111 >> 62)
    {
LABEL_68:
      v112 = sub_10077158C();
    }

    else
    {
      v112 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v112 = 0;
  }

  v113 = v160;
  *&v160[OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_numberOfBadges] = v112;
  *&v113[OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_pageTraits] = v91;
  swift_unknownObjectRelease();
  v159 = v91;
  sub_100508D8C();
  [v113 setNeedsLayout];
  v162 = 0u;
  v163 = 0u;
  memset(v161, 0, sizeof(v161));
  v114 = v140;
  sub_10076F91C();
  sub_10000CFBC(v161, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v162, &unk_1009434C0, &qword_100783F60);
  *&v162 = v96;
  *(&v162 + 1) = sub_100509AE4;
  *&v163 = 0;

  sub_10000A5D4(&qword_100947748, qword_100789CC8);
  sub_1000D06A0();
  v115 = sub_10076FEFC();
  v117 = v116;

  *(&v163 + 1) = &type metadata for String;
  *&v162 = v115;
  *(&v162 + 1) = v117;
  v118 = v141;
  sub_10076F98C();
  v119 = *(v143 + 8);
  v120 = v114;
  v121 = v144;
  v119(v120, v144);
  sub_10000CFBC(&v162, &unk_1009434C0, &qword_100783F60);
  *&v162 = v96;
  *(&v162 + 1) = sub_100509AF0;
  *&v163 = 0;
  v122 = sub_10076FEFC();
  v124 = v123;

  *(&v163 + 1) = &type metadata for String;
  *&v162 = v122;
  *(&v162 + 1) = v124;
  v125 = v142;
  sub_10076F98C();
  v119(v118, v121);
  sub_10000CFBC(&v162, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v119(v125, v121);
  return (*(v156 + 8))(v129, v130);
}

uint64_t sub_10066DED0(uint64_t a1, void *a2)
{
  v3 = sub_10077164C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_100940B88 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  sub_10000A61C(v8, qword_1009A1090);
  v9 = [a2 traitCollection];
  v10 = sub_100770B3C();

  v18[1] = sub_100016F40(0, &qword_1009544A0, NSAttributedString_ptr);

  v18[0] = [a2 traitCollection];
  if (qword_100940768 != -1)
  {
    swift_once();
  }

  v11 = sub_10076892C();
  sub_10000A61C(v11, qword_10095B428);
  sub_10076891C();
  v12 = v20;
  sub_10000CF78(v19, v20);
  sub_1000FF02C(v12);
  sub_10076D40C();
  (*(v4 + 8))(v6, v3);
  sub_10000A5D4(&unk_10094E7E0, qword_100785360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783DD0;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = v7;
  *(inited + 40) = v10;
  v14 = NSFontAttributeName;
  v15 = v10;
  sub_1000FC5F4(inited);
  swift_setDeallocating();
  sub_10000CFBC(inited + 32, &unk_100948B10, &unk_10078B4F0);
  v16 = sub_10077078C();

  sub_10000CD74(v19);
  return v16;
}

id sub_10066E1CC(void *a1, __n128 a2)
{
  v217 = sub_10076892C();
  v189 = *(v217 - 8);
  __chkstk_darwin(v217);
  v202 = v174 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_10076894C();
  v206 = *(v207 - 8);
  __chkstk_darwin(v207);
  v205 = v174 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_10076771C();
  v200 = *(v187 - 8);
  __chkstk_darwin(v187);
  v188 = v174 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v6 - 8);
  v199 = v174 - v7;
  v204 = sub_100762FFC();
  v203 = *(v204 - 8);
  __chkstk_darwin(v204);
  v198 = v174 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v201 = v174 - v10;
  __chkstk_darwin(v11);
  v197 = v174 - v12;
  v196 = sub_10077164C();
  v195 = *(v196 - 8);
  __chkstk_darwin(v196);
  v194 = v174 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_10076C38C();
  v192 = *(v193 - 8);
  __chkstk_darwin(v193);
  v191 = v174 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_1007608DC();
  v218 = *(v220 - 8);
  __chkstk_darwin(v220);
  v190 = v174 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v219 = v174 - v17;
  v216 = sub_10076B5BC();
  v224 = *(v216 - 1);
  __chkstk_darwin(v216);
  v180 = v174 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = sub_10000A5D4(&qword_100942C28, &unk_1007898E0);
  __chkstk_darwin(v212);
  v215 = v174 - v19;
  v20 = sub_10000A5D4(&qword_1009499A0, &qword_1007848B0);
  __chkstk_darwin(v20 - 8);
  v210 = v174 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v208 = v174 - v23;
  __chkstk_darwin(v24);
  v211 = v174 - v25;
  v26 = sub_10000A5D4(&unk_1009568A0, &qword_100784890);
  __chkstk_darwin(v26 - 8);
  v182 = v174 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v213 = v174 - v29;
  __chkstk_darwin(v30);
  v214 = v174 - v31;
  v32 = sub_10076B66C();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = v174 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v209 = v174 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v41 = v174 - v40;
  v222 = sub_1007658FC();
  v221 = *(v222 - 8);
  __chkstk_darwin(v222);
  v43 = v174 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = a1;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v44 = *(v37 + 8);
  v44(v41, v36);
  if ((*(v33 + 88))(v35, v32) != enum case for Shelf.ContentsMetadata.productMedia(_:))
  {
    (*(v33 + 8))(v35, v32);
    return 0;
  }

  v181 = v44;
  (*(v33 + 96))(v35, v32);
  (*(v221 + 32))(v43, v35, v222);
  v45 = sub_1007658EC();
  v46 = sub_1007658AC();
  v184 = v46;
  v176 = sub_1007658BC();
  v179 = v47;
  v186 = v43;
  v178 = sub_1007658DC();
  v183 = v48;
  v174[1] = sub_10000A5D4(&unk_100942870, &qword_100784460);
  v49 = swift_allocObject();
  v175 = xmmword_1007841E0;
  *(v49 + 16) = xmmword_1007841E0;
  *(v49 + 32) = v45;
  v185 = v45;

  v177 = sub_1000CD2A0(v46, v49);

  v50 = v208;
  v51 = v210;
  sub_10076463C();
  sub_10000CFBC(v50, &qword_1009499A0, &qword_1007848B0);
  v52 = v211;
  sub_10002AB4C(v51, v211);
  if ((*(v37 + 48))(v52, 1, v36) == 1)
  {
    sub_10000CFBC(v52, &qword_1009499A0, &qword_1007848B0);
    v53 = 1;
    v54 = v214;
  }

  else
  {
    swift_getKeyPath();
    v54 = v214;
    sub_10076F49C();

    v181(v52, v36);
    v53 = 0;
  }

  v56 = v224[7];
  v57 = v216;
  v56(v54, v53, 1, v216);
  v58 = v209;
  sub_10076468C();
  swift_getKeyPath();
  v59 = v213;
  sub_10076F49C();

  v60 = v36;
  v61 = v59;
  v181(v58, v60);
  v56(v59, 0, 1, v57);
  v62 = *(v212 + 48);
  v63 = v215;
  sub_10002ABBC(v54, v215);
  sub_10002ABBC(v59, v63 + v62);
  v64 = v224[6];
  if (v64(v63, 1, v57) == 1)
  {
    sub_10000CFBC(v61, &unk_1009568A0, &qword_100784890);
    sub_10000CFBC(v54, &unk_1009568A0, &qword_100784890);
    if (v64(v63 + v62, 1, v57) == 1)
    {
      sub_10000CFBC(v63, &unk_1009568A0, &qword_100784890);
LABEL_23:
      v77 = 0;
      goto LABEL_27;
    }

    goto LABEL_11;
  }

  v65 = v182;
  sub_10002ABBC(v63, v182);
  if (v64(v63 + v62, 1, v57) == 1)
  {
    sub_10000CFBC(v61, &unk_1009568A0, &qword_100784890);
    sub_10000CFBC(v54, &unk_1009568A0, &qword_100784890);
    (v224[1])(v65, v57);
LABEL_11:
    sub_10000CFBC(v63, &qword_100942C28, &unk_1007898E0);
    v66 = v184;
    goto LABEL_12;
  }

  v72 = v224;
  v73 = v63 + v62;
  v74 = v180;
  (v224[4])(v180, v73, v57);
  sub_1006722B0(&qword_100942C48, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  v75 = sub_10076FF1C();
  v76 = v72[1];
  v76(v74, v57);
  sub_10000CFBC(v61, &unk_1009568A0, &qword_100784890);
  sub_10000CFBC(v54, &unk_1009568A0, &qword_100784890);
  v76(v65, v57);
  sub_10000CFBC(v63, &unk_1009568A0, &qword_100784890);
  v66 = v184;
  if (v75)
  {
    goto LABEL_23;
  }

LABEL_12:
  if (v66 >> 62)
  {
    v67 = sub_10077158C();
  }

  else
  {
    v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v68 = v185;
  if (!v67)
  {

    v229[0] = v68;
    goto LABEL_25;
  }

  v69 = v67 - 1;
  if (__OFSUB__(v67, 1))
  {
    __break(1u);
  }

  else if ((v66 & 0xC000000000000001) == 0)
  {
    if ((v69 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v69 < *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v70 = *(v66 + 8 * v69 + 32);

      v229[0] = v68;
      if (v70)
      {
        goto LABEL_20;
      }

LABEL_25:

      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_71;
  }

  v70 = sub_10077149C();
  v229[0] = v68;
  if (!v70)
  {
    goto LABEL_25;
  }

LABEL_20:
  v226 = v70;
  sub_100760E9C();
  sub_1006722B0(&qword_100947630, &type metadata accessor for MediaPlatform, &protocol conformance descriptor for MediaPlatform);
  v71 = sub_10076FF1C();

  if (v71)
  {
    goto LABEL_23;
  }

LABEL_26:
  v77 = v177 ^ 1;
LABEL_27:
  v78 = v219;
  sub_1007658CC();
  v79 = v218;
  v80 = v190;
  v81 = v78;
  v82 = v220;
  (*(v218 + 16))(v190, v81, v220);
  v83 = (*(v79 + 88))(v80, v82);
  if (v83 == enum case for ProductMedia.DescriptionPlacement.top(_:))
  {
    v84 = v191;
    sub_10076460C();
    sub_10076C24C();
    v86 = v85;
    v87 = *(v192 + 8);
    v88 = v193;
    v87(v84, v193);
    v89 = sub_10076461C();
    v90 = type metadata accessor for SnapshotPageTraitEnvironment();
    v91 = objc_allocWithZone(v90);
    v92 = &v91[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
    *v92 = v86;
    *(v92 + 1) = 0x7FEFFFFFFFFFFFFFLL;
    *&v91[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v89;
    v225.receiver = v91;
    v225.super_class = v90;
    v224 = objc_msgSendSuper2(&v225, "init");
    sub_10076464C();
    sub_10076C8BC();
    sub_10076C2FC();
    v87(v84, v88);
    if ((v77 & 1) == 0)
    {
      v69 = v188;
      if (v184 >> 62)
      {
        v104 = sub_10077158C();
      }

      else
      {
        v104 = *((v184 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v104 > 1)
      {

        sub_100760E9C();
        v105 = swift_allocObject();
        *(v105 + 16) = v175;
        *(v105 + 32) = v185;

        v106 = sub_100760E5C();
        v178 = v176;
LABEL_41:

        if (qword_100940768 != -1)
        {
          swift_once();
        }

        v107 = sub_10000A61C(v217, qword_10095B428);
        sub_10076891C();
        v108 = v230;
        sub_10000CF78(v229, v230);
        v109 = v194;
        sub_1000FF02C(v108);
        sub_10076D40C();
        v111 = v110;
        (*(v195 + 8))(v109, v196);
        sub_10050A104(v106, v111);
        sub_10000CD74(v229);
        if (v106 >> 62)
        {
          sub_10077158C();
        }

        v112 = v189;
        v113 = v187;

        v114 = v224;
        sub_100762FEC();
        v115 = sub_10066DED0(v106, v114);

        v223 = v115;
        v116 = sub_1007688DC();
        if (qword_100940B88 != -1)
        {
          swift_once();
        }

        v117 = sub_10076D3DC();
        v118 = sub_10000A61C(v117, qword_1009A1090);
        v119 = *(v117 - 8);
        v120 = v199;
        (*(v119 + 16))(v199, v118, v117);
        (*(v119 + 56))(v120, 0, 1, v117);
        (*(v200 + 104))(v69, enum case for DirectionalTextAlignment.none(_:), v113);
        v121 = sub_1007626BC();
        v122 = objc_allocWithZone(v121);
        v123 = sub_1007626AC();
        [v123 setAttributedText:v116];
        v216 = v116;
        if (qword_100940760 != -1)
        {
          swift_once();
        }

        [qword_10095B420 size];
        v124 = sub_10076DDDC();
        swift_allocObject();
        v125 = sub_10076DDBC();
        (*(v112 + 16))(v202, v107, v217);
        v126 = v203;
        v127 = v197;
        v128 = v204;
        (*(v203 + 16))(v201, v197, v204);
        v230 = v121;
        v231 = &protocol witness table for UILabel;
        v229[0] = v123;
        v227 = v124;
        v228 = &protocol witness table for LayoutViewPlaceholder;
        v226 = v125;
        v129 = v123;

        v130 = v205;
        sub_10076893C();
        v131 = v224;
        [v224 pageMarginInsets];
        sub_100770ACC();
        sub_1006722B0(&qword_100947740, &type metadata accessor for PlatformSelectorViewLayout, &protocol conformance descriptor for PlatformSelectorViewLayout);
        v132 = v207;
        sub_10076D2AC();
        sub_100770AEC();
        v134 = v133;

        (*(v206 + 8))(v130, v132);
        (*(v126 + 8))(v127, v128);

        v135 = objc_opt_self();
        v136 = [v135 fractionalWidthDimension:1.0];
        v137 = [v135 absoluteDimension:v134];
        v138 = [objc_opt_self() sizeWithWidthDimension:v136 heightDimension:v137];

        v139 = sub_10076FF6C();
        v140 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v138 elementKind:v139 alignment:1];
LABEL_64:
        v173 = v140;

        (*(v218 + 8))(v219, v220);
        (*(v221 + 8))(v186, v222);
        return v173;
      }

LABEL_40:
      sub_100760E9C();
      v106 = sub_100760E5C();
      goto LABEL_41;
    }

    v69 = v188;
    if (qword_100940760 == -1)
    {
LABEL_30:
      [qword_10095B420 size];
      goto LABEL_40;
    }

LABEL_71:
    swift_once();
    goto LABEL_30;
  }

  if (v83 == enum case for ProductMedia.DescriptionPlacement.bottom(_:))
  {
    v93 = v191;
    sub_10076460C();
    sub_10076C24C();
    v95 = v94;
    v96 = *(v192 + 8);
    v97 = v193;
    v96(v93, v193);
    v98 = sub_10076461C();
    v99 = type metadata accessor for SnapshotPageTraitEnvironment();
    v100 = objc_allocWithZone(v99);
    v101 = &v100[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
    *v101 = v95;
    *(v101 + 1) = 0x7FEFFFFFFFFFFFFFLL;
    *&v100[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v98;
    v232.receiver = v100;
    v232.super_class = v99;
    v102 = objc_msgSendSuper2(&v232, "init");
    sub_10076464C();
    sub_10076C8BC();
    sub_10076C2FC();
    v96(v93, v97);
    if (v77)
    {
      v103 = v188;
      if (qword_100940760 != -1)
      {
        swift_once();
      }

      [qword_10095B420 size];
    }

    else
    {
      v103 = v188;
      if (v184 >> 62)
      {
        v141 = sub_10077158C();
      }

      else
      {
        v141 = *((v184 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v141 > 1)
      {

        sub_100760E9C();
        v142 = swift_allocObject();
        *(v142 + 16) = v175;
        *(v142 + 32) = v185;

        v143 = sub_100760E5C();
        v178 = v176;
LABEL_55:

        if (qword_100940768 != -1)
        {
          swift_once();
        }

        v144 = sub_10000A61C(v217, qword_10095B428);
        sub_10076891C();
        v145 = v230;
        sub_10000CF78(v229, v230);
        v146 = v194;
        sub_1000FF02C(v145);
        sub_10076D40C();
        v148 = v147;
        (*(v195 + 8))(v146, v196);
        sub_10050A104(v143, v148);
        sub_10000CD74(v229);
        if (v143 >> 62)
        {
          sub_10077158C();
        }

        v149 = v189;
        v150 = v187;

        sub_100762FEC();
        v151 = sub_10066DED0(v143, v102);

        v216 = v151;
        v224 = sub_1007688DC();
        if (qword_100940B88 != -1)
        {
          swift_once();
        }

        v223 = v102;
        v152 = sub_10076D3DC();
        v153 = sub_10000A61C(v152, qword_1009A1090);
        v154 = *(v152 - 8);
        v155 = v199;
        (*(v154 + 16))(v199, v153, v152);
        (*(v154 + 56))(v155, 0, 1, v152);
        (*(v200 + 104))(v103, enum case for DirectionalTextAlignment.none(_:), v150);
        v156 = sub_1007626BC();
        v157 = objc_allocWithZone(v156);
        v158 = sub_1007626AC();
        [v158 setAttributedText:v224];
        if (qword_100940760 != -1)
        {
          swift_once();
        }

        [qword_10095B420 size];
        v159 = sub_10076DDDC();
        swift_allocObject();
        v160 = sub_10076DDBC();
        (*(v149 + 16))(v202, v144, v217);
        v161 = v203;
        v162 = v198;
        v163 = v204;
        (*(v203 + 16))(v201, v198, v204);
        v230 = v156;
        v231 = &protocol witness table for UILabel;
        v229[0] = v158;
        v227 = v159;
        v228 = &protocol witness table for LayoutViewPlaceholder;
        v226 = v160;
        v164 = v158;

        v165 = v205;
        sub_10076893C();
        v166 = v223;
        [v223 pageMarginInsets];
        sub_100770ACC();
        sub_1006722B0(&qword_100947740, &type metadata accessor for PlatformSelectorViewLayout, &protocol conformance descriptor for PlatformSelectorViewLayout);
        v167 = v207;
        sub_10076D2AC();
        sub_100770AEC();
        v169 = v168;

        (*(v206 + 8))(v165, v167);
        (*(v161 + 8))(v162, v163);

        v170 = objc_opt_self();
        v171 = [v170 fractionalWidthDimension:1.0];
        v172 = [v170 absoluteDimension:v169];
        v138 = [objc_opt_self() sizeWithWidthDimension:v171 heightDimension:v172];

        v139 = sub_10076FF6C();
        v140 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v138 elementKind:v139 alignment:5];
        goto LABEL_64;
      }
    }

    sub_100760E9C();
    v143 = sub_100760E5C();
    goto LABEL_55;
  }

  v229[0] = 0;
  v229[1] = 0xE000000000000000;
  sub_10077145C(25);
  v233._object = 0x80000001007F4600;
  v233._countAndFlagsBits = 0xD000000000000016;
  sub_1007700CC(v233);
  sub_10077151C();
  v234._countAndFlagsBits = 46;
  v234._object = 0xE100000000000000;
  sub_1007700CC(v234);
  result = sub_10077156C();
  __break(1u);
  return result;
}

id sub_100670320(void *a1, void *a2, __n128 a3)
{
  v109 = a2;
  v4 = sub_1007621EC();
  v115 = *(v4 - 8);
  v116 = v4;
  __chkstk_darwin(v4);
  v114 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v113 = &v108 - v7;
  v121 = sub_10000A5D4(&qword_100942F28, &unk_10079ACB0);
  __chkstk_darwin(v121);
  v124 = &v108 - v8;
  v9 = sub_10000A5D4(&qword_1009499A0, &qword_1007848B0);
  __chkstk_darwin(v9 - 8);
  v118 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v117 = &v108 - v12;
  __chkstk_darwin(v13);
  v15 = &v108 - v14;
  v16 = sub_10000A5D4(&unk_1009568A0, &qword_100784890);
  __chkstk_darwin(v16 - 8);
  v112 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v111 = &v108 - v19;
  __chkstk_darwin(v20);
  v128 = &v108 - v21;
  v22 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v119 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v108 - v26;
  v28 = sub_10076B5BC();
  v126 = *(v28 - 8);
  v127 = v28;
  __chkstk_darwin(v28);
  v120 = &v108 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v110 = &v108 - v31;
  __chkstk_darwin(v32);
  v34 = &v108 - v33;
  v35 = objc_opt_self();
  v36 = [v35 fractionalWidthDimension:1.0];
  v37 = sub_10076461C();
  sub_100763FCC();
  v39 = v38;

  v40 = [v35 absoluteDimension:v39];
  v122 = [objc_opt_self() sizeWithWidthDimension:v36 heightDimension:v40];

  sub_10076468C();
  swift_getKeyPath();
  v125 = v34;
  sub_10076F49C();

  v41 = *(v23 + 8);
  v41(v27, v22);
  v43 = v117;
  v42 = v118;
  v123 = a1;
  sub_10076463C();
  sub_10000CFBC(v42, &qword_1009499A0, &qword_1007848B0);
  sub_10002AB4C(v43, v15);
  if ((*(v23 + 48))(v15, 1, v22) == 1)
  {
    sub_10000CFBC(v15, &qword_1009499A0, &qword_1007848B0);
    v44 = 1;
    v45 = v128;
  }

  else
  {
    swift_getKeyPath();
    v46 = v128;
    sub_10076F49C();

    v41(v15, v22);
    v44 = 0;
    v45 = v46;
  }

  v47 = v126;
  (*(v126 + 56))(v45, v44, 1, v127);
  v48 = v119;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v41(v48, v22);
  v49 = v130;
  v50 = v120;
  if (v130)
  {
    v51 = v129;

    v52 = HIBYTE(v49) & 0xF;
    if ((v49 & 0x2000000000000000) == 0)
    {
      v52 = v51 & 0xFFFFFFFFFFFFLL;
    }

    LODWORD(v119) = v52 != 0;
  }

  else
  {
    LODWORD(v119) = 0;
  }

  v53 = *(v121 + 48);
  v54 = v124;
  v55 = v127;
  (*(v47 + 16))(v124, v125, v127);
  sub_10002ABBC(v128, v54 + v53);
  v56 = *(v47 + 88);
  v57 = v56(v54, v55);
  if (v57 == enum case for Shelf.ContentType.editorsChoice(_:))
  {
    sub_10076468C();
    swift_getKeyPath();
    v58 = v53;
    v59 = v113;
    sub_10076F49C();
    v54 = v124;

    v41(v27, v22);
    v61 = v114;
    v60 = v115;
    v62 = v116;
    (*(v115 + 104))(v114, enum case for ShelfBackground.editorsChoice(_:), v116);
    v63 = sub_1007621DC();
    v64 = *(v60 + 8);
    v64(v61, v62);
    v65 = v59;
    v53 = v58;
    v64(v65, v62);
    if (v63)
    {

      sub_10000CFBC(v128, &unk_1009568A0, &qword_100784890);
      v66 = *(v126 + 8);
      v67 = v127;
      v66(v125, v127);
      sub_10000CFBC(v54 + v58, &unk_1009568A0, &qword_100784890);
      v66(v54, v67);
      return 0;
    }

LABEL_15:
    v74 = v126;
    v75 = v127;
    if ((*(v126 + 48))(v54 + v53, 1, v127) == 1)
    {

      sub_10000CFBC(v128, &unk_1009568A0, &qword_100784890);
      (*(v74 + 8))(v125, v75);
    }

    else
    {
      v76 = v112;
      sub_10002ABBC(v54 + v53, v112);
      if (v56(v76, v75) == enum case for Shelf.ContentType.productMediaItem(_:))
      {
        v77 = v126;
        if ((v119 & 1) == 0)
        {
          type metadata accessor for SeparatorSupplementaryView(0);
          sub_1007708EC();
          sub_10000CF78(v109, v109[3]);
          sub_100768A3C();
          v83 = v82 * 0.5;
          v84 = sub_10076FF6C();

          v85 = objc_opt_self();
          v86 = v122;
          v87 = [v85 boundarySupplementaryItemWithLayoutSize:v122 elementKind:v84 alignment:1 absoluteOffset:{0.0, v83}];

          sub_10000CFBC(v128, &unk_1009568A0, &qword_100784890);
          v88 = *(v77 + 8);
          v88(v125, v75);
          sub_10000CFBC(v54 + v53, &unk_1009568A0, &qword_100784890);
          v88(v54, v75);
          return v87;
        }

        sub_10000CFBC(v128, &unk_1009568A0, &qword_100784890);
        (*(v77 + 8))(v125, v75);
      }

      else
      {

        sub_10000CFBC(v128, &unk_1009568A0, &qword_100784890);
        v81 = *(v126 + 8);
        v81(v125, v75);
        v81(v76, v75);
      }
    }

    sub_10000CFBC(v54, &qword_100942F28, &unk_10079ACB0);
    return 0;
  }

  if (v57 != enum case for Shelf.ContentType.productMediaItem(_:))
  {
    goto LABEL_15;
  }

  v68 = v57;
  v69 = v128;
  v70 = v111;
  sub_10002ABBC(v128, v111);
  v72 = v126;
  v71 = v127;
  if ((*(v126 + 48))(v70, 1, v127) == 1)
  {

    sub_10000CFBC(v69, &unk_1009568A0, &qword_100784890);
    v73 = *(v72 + 8);
    v73(v125, v71);
    sub_10000CFBC(v70, &unk_1009568A0, &qword_100784890);
LABEL_27:
    sub_10000CFBC(v54 + v53, &unk_1009568A0, &qword_100784890);
    v73(v54, v71);
    return 0;
  }

  v78 = v71;
  v79 = v110;
  (*(v72 + 32))(v110, v70, v78);
  v121 = *(v72 + 104);
  (v121)(v50, v68, v78);
  sub_1006722B0(&qword_100942C48, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  v80 = sub_10076FF1C();
  v73 = *(v72 + 8);
  v73(v50, v78);
  if (v80 & 1) != 0 || ((v121)(v50, enum case for Shelf.ContentType.productBadge(_:), v78), v90 = sub_10076FF1C(), v73(v50, v78), v91 = v79, (v90))
  {

    v73(v79, v78);
    sub_10000CFBC(v128, &unk_1009568A0, &qword_100784890);
    v73(v125, v78);
    v54 = v124;
    v71 = v78;
    goto LABEL_27;
  }

  v54 = v124;
  if (qword_100941478 != -1)
  {
    swift_once();
  }

  v92 = sub_10069358C(v79, qword_1009A31A8);
  v71 = v78;
  if ((v92 & 1) == 0)
  {

    v73(v91, v78);
    sub_10000CFBC(v128, &unk_1009568A0, &qword_100784890);
    v73(v125, v78);
    goto LABEL_27;
  }

  v94 = v109;
  v95 = sub_10066E1CC(v123, v93);
  if (v95)
  {
    v96 = v95;
    v97 = 0.0;
    if ([v95 alignment] == 1)
    {
      v98 = [v96 layoutSize];
      v99 = [v98 heightDimension];

      [v99 dimension];
      v97 = v100;
    }
  }

  else
  {
    v97 = 0.0;
  }

  type metadata accessor for SeparatorSupplementaryView(0);
  sub_1007708EC();
  sub_10000CF78(v94, v94[3]);
  sub_100768A3C();
  v102 = -(v97 + v101);
  v103 = sub_10076FF6C();

  v104 = objc_opt_self();
  v105 = v122;
  v106 = [v104 boundarySupplementaryItemWithLayoutSize:v122 elementKind:v103 alignment:1 absoluteOffset:{0.0, v102}];

  v73(v91, v71);
  sub_10000CFBC(v128, &unk_1009568A0, &qword_100784890);
  v73(v125, v71);
  v107 = v124;
  sub_10000CFBC(&v124[v53], &unk_1009568A0, &qword_100784890);
  v73(v107, v71);
  return v106;
}

uint64_t sub_1006711FC(uint64_t a1, __n128 a2)
{
  v31 = sub_100760F8C();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076B5BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  v11 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v34 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v30 - v15;
  __chkstk_darwin(v17);
  v19 = &v30 - v18;
  v37 = a1;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v35 = *(v12 + 8);
  v36 = v12 + 8;
  v35(v19, v11);
  (*(v5 + 104))(v7, enum case for Shelf.ContentType.productReview(_:), v4);
  sub_1006722B0(&qword_10094C660, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  sub_10077018C();
  sub_10077018C();
  if (v38 == v39)
  {
    v20 = *(v5 + 8);
    v20(v7, v4);
    v20(v10, v4);
  }

  else
  {
    v21 = sub_10077167C();
    v22 = *(v5 + 8);
    v22(v7, v4);
    v22(v10, v4);

    result = 0;
    if ((v21 & 1) == 0)
    {
      return result;
    }
  }

  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v24 = v35;
  v35(v16, v11);
  result = *(&v38 + 1);
  if (*(&v38 + 1))
  {

    v25 = v34;
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    v24(v25, v11);
    if (*(v39 + 16))
    {
      sub_10000A570(v39 + 32, &v38);

      sub_10000A5D4(&qword_1009575A0, &unk_100784980);
      sub_100760FAC();
      if (swift_dynamicCast())
      {
        v26 = v32;
        sub_100760F9C();

        v27 = v33;
        v28 = v31;
        v29 = (*(v33 + 88))(v26, v31) != enum case for ProductReview.ReviewSource.editorsChoice(_:);
        (*(v27 + 8))(v26, v28);
        return v29;
      }
    }

    else
    {
    }

    return 1;
  }

  return result;
}

id sub_100671728(uint64_t a1)
{
  v2 = sub_10076B66C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v10 = sub_100766B9C();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1006711FC(a1, v12);
  result = 0;
  if (v15)
  {
    v24 = v11;
    v25 = v10;
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    (*(v7 + 8))(v9, v6);
    if ((*(v3 + 88))(v5, v2) == enum case for Shelf.ContentsMetadata.productReviews(_:))
    {
      (*(v3 + 96))(v5, v2);
      v18 = v24;
      v17 = v25;
      (*(v24 + 32))(v14, v5, v25);
      if (sub_100766B7C())
      {
        type metadata accessor for InteractiveProductReviewsShelfHeaderView();
        v19 = sub_10021950C(v14);
        sub_1007708EC();
        v20 = sub_10076FF6C();

        v21 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v19 elementKind:v20 alignment:1];

        (*(v18 + 8))(v14, v17);
        return v21;
      }

      (*(v18 + 8))(v14, v17);
    }

    else
    {
      (*(v3 + 8))(v5, v2);
    }

    type metadata accessor for ProductReviewsShelfHeaderView();
    v22 = sub_1005DC9F0(a1, 0, 0);
    sub_1007708EC();
    v23 = sub_10076FF6C();

    v21 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v22 elementKind:v23 alignment:1];

    return v21;
  }

  return result;
}

uint64_t sub_100671BC8()
{
  v1 = sub_10076469C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100671C50(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_10076469C() - 8);
  v10 = (v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80)));

  return sub_10066CBC0(a1, a2, a3, a4, v10);
}

uint64_t sub_100671D0C(void *a1, uint64_t a2)
{
  v56 = a1;
  v3 = sub_10000A5D4(&qword_1009499A0, &qword_1007848B0);
  __chkstk_darwin(v3 - 8);
  v55 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v54 = &v46 - v6;
  __chkstk_darwin(v7);
  v9 = &v46 - v8;
  v10 = sub_10076B5BC();
  v57 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v46 - v14;
  __chkstk_darwin(v16);
  v18 = &v46 - v17;
  __chkstk_darwin(v19);
  v21 = &v46 - v20;
  v22 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = &v46 - v25;
  if (sub_1006711FC(a2, v24))
  {
    v27 = 0;
    return v27 & 1;
  }

  v49 = v12;
  v50 = v15;
  v53 = v9;
  v51 = a2;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v28 = *(v23 + 8);
  v52 = v22;
  v48 = v28;
  v28(v26, v22);
  v29 = v57;
  (*(v57 + 104))(v18, enum case for Shelf.ContentType.productMediaItem(_:), v10);
  sub_1006722B0(&qword_10094C660, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  sub_10077018C();
  sub_10077018C();
  if (v60 == v58 && v61 == v59)
  {
    v30 = 1;
  }

  else
  {
    v30 = sub_10077167C();
  }

  v31 = *(v29 + 8);
  v31(v18, v10);
  v47 = v31;
  v31(v21, v10);

  if ((v30 & 1) == 0)
  {
    goto LABEL_14;
  }

  v32 = [v56 elementKind];
  v33 = sub_10076FF9C();
  v35 = v34;

  if (v33 == sub_10076FF9C() && v35 == v36)
  {

    v38 = v52;
    v37 = v53;
    goto LABEL_12;
  }

  v39 = sub_10077167C();

  v38 = v52;
  v37 = v53;
  if ((v39 & 1) == 0)
  {
LABEL_14:
    v27 = 1;
    return v27 & 1;
  }

LABEL_12:
  v41 = v54;
  v40 = v55;
  sub_10076463C();
  sub_10000CFBC(v40, &qword_1009499A0, &qword_1007848B0);
  sub_10002AB4C(v41, v37);
  if ((*(v23 + 48))(v37, 1, v38) == 1)
  {
    sub_10000CFBC(v37, &qword_1009499A0, &qword_1007848B0);
    goto LABEL_14;
  }

  swift_getKeyPath();
  v43 = v49;
  sub_10076F49C();

  v48(v37, v38);
  v44 = v50;
  (*(v57 + 32))(v50, v43, v10);
  if (qword_100941478 != -1)
  {
    swift_once();
  }

  v45 = sub_10069358C(v44, qword_1009A31A8);
  v47(v44, v10);
  v27 = v45 ^ 1;
  return v27 & 1;
}

uint64_t sub_1006722B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100672304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v10 = sub_10000A5D4(&unk_100953D78, &qword_10079D3B8);
  *&v11 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v13 = v63 - v12;
  [a6 pageMarginInsets];
  [v6 setLayoutMargins:?];
  if (qword_10093FF90 != -1)
  {
    swift_once();
  }

  v14 = sub_100763E2C();
  v15 = sub_10000A61C(v14, qword_100953B80);
  __chkstk_darwin(v15);
  v63[-2] = a6;
  sub_10076C13C();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  v16 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_metrics;
  swift_beginAccess();
  sub_100672DB8(v13, &v7[v16]);
  swift_endAccess();
  [v7 setNeedsLayout];
  sub_10000CFBC(v13, &unk_100953D78, &qword_10079D3B8);
  if (sub_1007606EC())
  {
    v17 = *&v7[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteView];
    v18 = sub_10076C18C();
    v19 = v17[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_hasChevron];
    v17[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_hasChevron] = (v18 & 2) != 0;
    sub_100133E3C(v19);
    v17[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLightensOnHighlight] = (sub_10076C18C() & 4) != 0;
    v20 = *&v17[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLabel];
    sub_10076C19C();
    v21 = sub_10076FF6C();

    [v20 setText:v21];

    [v17 setNeedsLayout];
    v22 = sub_10076C16C();
    if (v22)
    {
      v23 = v22;
      sub_10076C17C();
      v24 = swift_allocObject();
      *(v24 + 16) = a3;
      *(v24 + 24) = v23;
      v25 = &v7[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteActionBlock];
      v26 = *&v7[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteActionBlock];
      v27 = *&v7[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteActionBlock + 8];
      *v25 = sub_100672E94;
      *(v25 + 1) = v24;
      swift_retain_n();

      sub_1000167E0(v26, v27);
      v28 = *&v7[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer];

      [v28 setEnabled:1];

      sub_10000CFBC(v63, &unk_1009434C0, &qword_100783F60);
    }

    else
    {
    }
  }

  else
  {
    v29 = &v7[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteActionBlock];
    v30 = *&v7[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteActionBlock];
    v31 = *&v7[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteActionBlock + 8];
    *v29 = 0;
    *(v29 + 1) = 0;
    [*&v7[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer] setEnabled:{0, sub_1000167E0(v30, v31)}];
  }

  v32 = sub_1007606BC();
  if (v32)
  {
    v33 = v32;
    v34 = *&v7[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_buttonView];
    sub_10076B8EC();
    if (v35)
    {
      v36 = sub_10076FF6C();
    }

    else
    {
      v36 = 0;
    }

    [v34 setTitle:v36 forState:0];

    v37 = swift_allocObject();
    *(v37 + 16) = a3;
    *(v37 + 24) = v33;
    v38 = &v7[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_buttonActionBlock];
    v39 = *&v7[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_buttonActionBlock];
    v40 = *&v7[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_buttonActionBlock + 8];
    *v38 = sub_100672E2C;
    v38[1] = v37;
    swift_retain_n();

    sub_1000167E0(v39, v40);

    [v34 addTarget:v7 action:"buttonTapped" forControlEvents:64];
  }

  sub_100760C4C();
  sub_10076F64C();
  sub_10076FC1C();
  v41 = v63[0];
  sub_10035CAD4(a6, v42);
  v43 = sub_1007606DC();
  if (!v43)
  {
    goto LABEL_27;
  }

  v44 = v43;
  v45 = v43 >> 62;
  if (v43 >> 62)
  {
    if (sub_10077158C())
    {
      goto LABEL_16;
    }

    goto LABEL_26;
  }

  if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_26:

LABEL_27:
    v57 = *&v7[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_riverView];
    if (!v57)
    {
      goto LABEL_30;
    }

    v58 = v57;
    v59 = sub_10076C63C();

    *(v59 + 48) = 1;
    goto LABEL_29;
  }

LABEL_16:
  v46 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_riverView;
  v47 = *&v7[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_riverView];
  if (v47 && (v48 = v47, v49 = sub_10076C63C(), v48, *(v49 + 40) = v44, , , , (v50 = *&v7[v46]) != 0))
  {
    v51 = v50;
    v52 = sub_10076C63C();

    if (v45)
    {
      v53 = sub_10077158C();
    }

    else
    {
      v53 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v52 + 48) = v53;

    v54 = *&v7[v46];
    if (v54)
    {
      goto LABEL_24;
    }
  }

  else
  {

    v54 = *&v7[v46];
    if (v54)
    {
LABEL_24:
      v55 = v54;
      v56 = sub_10076C63C();

      *(v56 + 56) = v41;

LABEL_29:
    }
  }

LABEL_30:
  v60 = sub_1007606CC();
  if (v60)
  {

    v61 = [objc_opt_self() whiteColor];
  }

  else
  {
    sub_1000325F0();
    v61 = sub_100770DBC();
  }

  v62 = v61;
  [*&v7[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_buttonView] _setBackgroundColor:v61];
  [v7 setNeedsLayout];
}

uint64_t sub_1006729FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  sub_10076F5AC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10000CFBC(v6, &unk_100943200, &unk_100785840);
  }

  sub_100263BF0(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

double sub_100672B40(__n128 a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = sub_100763E2C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10093FF90 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v9, qword_100953B80);
  __chkstk_darwin(v13);
  *(&v17 - 2) = a8;
  sub_10076C13C();
  sub_100763E4C();
  sub_100672E48(&qword_100962EB8, &type metadata accessor for ArcadeFooterLayout, &protocol conformance descriptor for ArcadeFooterLayout);
  sub_10076DBDC();
  v15 = v14;
  (*(v10 + 8))(v12, v9);
  return v15;
}

uint64_t sub_100672DB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100953D78, &qword_10079D3B8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100672E48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_100672E9C(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v15 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v6 = 0;
    v11 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_10077149C();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v14 = v7;
      a1(&v13, &v14);
      if (v3)
      {

        return v11;
      }

      if (v13)
      {
        sub_10077019C();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();
        v11 = v15;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

char *sub_100673048(char *result, __n128 a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = result;
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  do
  {
    for (i = v8; ; ++i)
    {
      if (i >= v5)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v11 = sub_10075F8BC();
      v13 = *(v11 - 8);
      result = (v11 - 8);
      v12 = v13;
      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = (v7)(&v20, a4 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * i);
      if (v4)
      {

        return v9;
      }

      v14 = v21;
      if (v21)
      {
        break;
      }

      if (v8 == v5)
      {
        return v9;
      }
    }

    v15 = v20;
    result = swift_isUniquelyReferenced_nonNull_native();
    v22 = v15;
    if ((result & 1) == 0)
    {
      result = sub_10049D954(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v17 = *(v9 + 2);
    v16 = *(v9 + 3);
    v18 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      result = sub_10049D954((v16 > 1), v17 + 1, 1, v9);
      v18 = v17 + 1;
      v9 = result;
    }

    *(v9 + 2) = v18;
    v19 = &v9[16 * v17];
    *(v19 + 4) = v22;
    *(v19 + 5) = v14;
  }

  while (v8 != v5);
  return v9;
}

uint64_t sub_1006731E4(uint64_t a1, __n128 a2)
{
  v3 = sub_10075F8BC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10075F8DC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PageFacetsViewController.Item(0);
  __chkstk_darwin(v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100679D40(v2, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *(sub_10000A5D4(&qword_100962FF8, &qword_1007B24E0) + 48);
    (*(v8 + 32))(v10, v13, v7);
    (*(v4 + 32))(v6, &v13[v14], v3);
    sub_10077176C(1uLL);
    sub_100679DA4(&qword_100961000, &type metadata accessor for PageFacets.Facet, &protocol conformance descriptor for PageFacets.Facet);
    sub_10076FEBC();
    sub_100679DA4(&qword_100946840, &type metadata accessor for PageFacets.Facet.Option, &protocol conformance descriptor for PageFacets.Facet.Option);
    sub_10076FEBC();
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    (*(v8 + 32))(v10, v13, v7);
    sub_10077176C(0);
    sub_100679DA4(&qword_100961000, &type metadata accessor for PageFacets.Facet, &protocol conformance descriptor for PageFacets.Facet);
    sub_10076FEBC();
  }

  return (*(v8 + 8))(v10, v7);
}

Swift::Int sub_100673520()
{
  sub_10077175C();
  sub_1006731E4(v2, v0);
  return sub_1007717AC();
}

Swift::Int sub_100673564(uint64_t a1)
{
  sub_10077175C();
  sub_1006731E4(v3, v1);
  return sub_1007717AC();
}

void sub_1006735A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(v3, ObjectType, v5);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_100673678(uint64_t a1, __n128 a2)
{
  v4 = sub_10075F8EC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_10094F4C0, &qword_100798310);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_10000A5D4(&qword_100963050, &unk_1007B2548);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v20 - v13;
  v15 = OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_pageFacets;
  swift_beginAccess();
  v16 = *(v12 + 56);
  sub_10067B2D4(v2 + v15, v14);
  sub_10067B2D4(a1, &v14[v16]);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) == 1)
  {
    if (v17(&v14[v16], 1, v4) == 1)
    {
      sub_10000CFBC(v14, &unk_10094F4C0, &qword_100798310);
      return;
    }

    goto LABEL_6;
  }

  sub_10067B2D4(v14, v10);
  if (v17(&v14[v16], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_10000CFBC(v14, &qword_100963050, &unk_1007B2548);
LABEL_7:
    sub_100673994();
    return;
  }

  (*(v5 + 32))(v7, &v14[v16], v4);
  sub_100679DA4(&qword_100963058, &type metadata accessor for PageFacets, &protocol conformance descriptor for PageFacets);
  v18 = sub_10076FF1C();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_10000CFBC(v14, &unk_10094F4C0, &qword_100798310);
  if ((v18 & 1) == 0)
  {
    goto LABEL_7;
  }
}

void sub_100673994()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_100963018, &qword_1007B2500);
  __chkstk_darwin(v2 - 8);
  v82 = &v67 - v3;
  v4 = type metadata accessor for PageFacetsViewController.Item(0);
  v100 = *(v4 - 8);
  v101 = v4;
  __chkstk_darwin(v4);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v98 = &v67 - v8;
  v9 = sub_10075F8DC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10075F7BC();
  v86 = *(v13 - 8);
  __chkstk_darwin(v13);
  v83 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_10094F4C0, &qword_100798310);
  __chkstk_darwin(v15 - 8);
  v17 = &v67 - v16;
  v18 = sub_10075F8EC();
  v71 = *(v18 - 8);
  __chkstk_darwin(v18);
  v70 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_10000A5D4(&qword_100963020, &qword_1007B2508);
  v69 = *(v88 - 8);
  __chkstk_darwin(v88);
  v21 = &v67 - v20;
  sub_100679DA4(&qword_100963028, &type metadata accessor for PageFacets.FacetGroup, &protocol conformance descriptor for PageFacets.FacetGroup);
  sub_100679DA4(&qword_100963030, type metadata accessor for PageFacetsViewController.Item, &unk_1007B2490);
  v87 = v21;
  v85 = v13;
  sub_10076E62C();
  v22 = OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_pageFacets;
  swift_beginAccess();
  v23 = v1 + v22;
  v24 = v71;
  sub_10067B2D4(v23, v17);
  if ((*(v24 + 48))(v17, 1, v18) == 1)
  {
    sub_10000CFBC(v17, &unk_10094F4C0, &qword_100798310);
    v25 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_diffableDataSource);
    if (v25)
    {
      v26 = v25;
      v27 = v87;
      sub_10076E76C();

      (*(v69 + 8))(v27, v88);
      return;
    }

    goto LABEL_33;
  }

  v28 = *(v24 + 32);
  v68 = v18;
  v28(v70, v17, v18);
  v29 = sub_10075F7CC();
  v81 = *(v29 + 16);
  if (v81)
  {
    v30 = 0;
    v80 = *(v86 + 80);
    v79 = (v80 + 32) & ~v80;
    v78 = v29 + v79;
    v77 = v86 + 16;
    v76 = v86 + 8;
    v99 = v10 + 16;
    v91 = (v10 + 8);
    v72 = (v86 + 56);
    v75 = xmmword_100783DD0;
    v74 = v1;
    v89 = v10;
    v90 = v6;
    v97 = v12;
    v73 = v29;
    while (v30 < *(v29 + 16))
    {
      v33 = v85;
      v34 = *(v86 + 72);
      v84 = v30;
      v96 = *(v86 + 16);
      v35 = v83;
      v96(v83, v78 + v34 * v30, v85);
      sub_10000A5D4(&qword_100963038, &unk_1007B2510);
      v36 = v79;
      v37 = swift_allocObject();
      *(v37 + 1) = v75;
      v96(&v37[v36], v35, v33);
      v38._rawValue = v37;
      sub_10076E5CC(v38);

      v39 = sub_10075F7AC();
      (*(v86 + 8))(v35, v33);
      v95 = *(v39 + 16);
      if (v95)
      {
        v40 = 0;
        v93 = v39 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
        v41 = _swiftEmptyArrayStorage;
        v42 = v91;
        v94 = v39;
        while (v40 < *(v39 + 16))
        {
          v43 = *(v10 + 72);
          v96 = v40;
          v44 = *(v10 + 16);
          v44(v12, v93 + v43 * v40, v9);
          if (sub_10075F81C())
          {
            v45 = sub_10075F8CC();
            v46 = *(v45 + 16);
            if (v46)
            {
              v47 = v9;
              v48 = sub_10075F8BC();
              v49 = *(v48 - 8);
              v50 = *(v49 + 80);
              v92 = v45;
              v51 = v45 + ((v50 + 32) & ~v50);
              v52 = *(v49 + 72);
              v53 = (v49 + 16);
              v54 = v98;
              do
              {
                v55 = *(sub_10000A5D4(&qword_100962FF8, &qword_1007B24E0) + 48);
                v44(v54, v97, v47);
                (*v53)(v54 + v55, v51, v48);
                swift_storeEnumTagMultiPayload();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v41 = sub_10049EB3C(0, v41[2] + 1, 1, v41);
                }

                v57 = v41[2];
                v56 = v41[3];
                if (v57 >= v56 >> 1)
                {
                  v41 = sub_10049EB3C((v56 > 1), v57 + 1, 1, v41);
                }

                v41[2] = v57 + 1;
                v58 = v41 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v57;
                v54 = v98;
                sub_10067B18C(v98, v58);
                v51 += v52;
                --v46;
              }

              while (v46);

              v9 = v47;
              v10 = v89;
              v6 = v90;
              v12 = v97;
              v42 = v91;
            }

            else
            {
            }

            (*v42)(v12, v9);
          }

          else
          {
            v44(v6, v12, v9);
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v41 = sub_10049EB3C(0, v41[2] + 1, 1, v41);
            }

            v60 = v41[2];
            v59 = v41[3];
            if (v60 >= v59 >> 1)
            {
              v41 = sub_10049EB3C((v59 > 1), v60 + 1, 1, v41);
            }

            (*v42)(v12, v9);
            v41[2] = v60 + 1;
            sub_10067B18C(v6, v41 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v60);
          }

          v39 = v94;
          v40 = v96 + 1;
          if (v96 + 1 == v95)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        break;
      }

LABEL_6:

      v31 = v84 + 1;
      v32 = v82;
      (*v72)(v82, 1, 1, v85);
      sub_10076E5AC();
      v30 = v31;

      sub_10000CFBC(v32, &qword_100963018, &qword_1007B2500);
      v1 = v74;
      v29 = v73;
      if (v31 == v81)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_29:

  v61 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_diffableDataSource);
  v62 = v68;
  v63 = v71;
  v64 = v70;
  if (v61)
  {
    v65 = v61;
    v66 = v87;
    sub_10076E76C();

    (*(v63 + 8))(v64, v62);
    (*(v69 + 8))(v66, v88);
    return;
  }

LABEL_34:
  __break(1u);
}

void sub_100674470(__n128 a1)
{
  v2 = v1;
  v3 = sub_10075F7BC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&qword_100963020, &qword_1007B2508);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - v9;
  v11 = OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_diffableDataSource;
  v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_diffableDataSource];
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = v12;
  sub_10076E79C();

  v14 = sub_10076E61C();
  v15 = *(v14 + 16);
  if (!v15)
  {

    v27 = *&v2[v11];
    if (v27)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v35 = v11;
  v36 = v2;
  v37 = v8;
  v38 = v14;
  v16 = v3;
  v18 = *(v4 + 16);
  v17 = v4 + 16;
  v39 = v18;
  v19 = v10;
  v20 = v14 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
  v21 = *(v17 + 56);
  v22 = v7;
  v23 = (v17 - 8);
  do
  {
    v39(v6, v20, v16);
    v24 = v17;
    v25 = sub_10076E5DC();
    (*v23)(v6, v16);
    v26._rawValue = v25;
    sub_10076E5BC(v26);
    v17 = v24;

    v20 += v21;
    --v15;
  }

  while (v15);

  v7 = v22;
  v2 = v36;
  v8 = v37;
  v10 = v19;
  v27 = *&v36[v35];
  if (!v27)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_6:
  v28 = v27;
  sub_10076E76C();

  v29 = &v2[OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_preselectionContentOffset];
  if (v2[OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_preselectionContentOffset + 16])
  {
    (*(v8 + 8))(v10, v7);
    return;
  }

  v31 = *v29;
  v30 = v29[1];
  v32 = [v2 collectionView];
  if (v32)
  {
    v33 = v32;
    [v32 setContentOffset:{v31, v30}];

    (*(v8 + 8))(v10, v7);
    *v29 = 0.0;
    v29[1] = 0.0;
    *(v29 + 16) = 1;
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_100674778()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "viewDidLoad");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = v1;
  v3 = objc_opt_self();
  v4 = [v3 systemBackgroundColor];
  [v2 setBackgroundColor:v4];

  v5 = [v0 collectionView];
  if (!v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5;
  v7 = [v3 systemBackgroundColor];
  [v6 setBackgroundColor:v7];

  v8 = sub_1006749B4();
  v9 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_diffableDataSource];
  *&v0[OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_diffableDataSource] = v8;

  v10 = [v0 collectionView];
  if (v10)
  {
    v11 = v10;
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = objc_allocWithZone(UICollectionViewCompositionalLayout);
    v16[4] = sub_10067B2CC;
    v16[5] = v12;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_1002BAFEC;
    v16[3] = &unk_10089EC30;
    v14 = _Block_copy(v16);

    v15 = [v13 initWithSectionProvider:v14];
    _Block_release(v14);

    [v11 setCollectionViewLayout:v15];

    sub_100674DC8();
    sub_100673994();
    return;
  }

LABEL_7:
  __break(1u);
}

id sub_1006749B4()
{
  v27 = sub_10000A5D4(&qword_100963060, &qword_1007B2558);
  v1 = *(v27 - 8);
  __chkstk_darwin(v27);
  v23[1] = v2;
  v24 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = v23 - v4;
  v25 = sub_10000A5D4(&qword_100963068, &qword_1007B2560);
  v6 = *(v25 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v25);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v23 - v10;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100016F40(0, &qword_100945920, UICollectionViewListCell_ptr);
  type metadata accessor for PageFacetsViewController.Item(0);
  sub_10077058C();
  sub_10076FF9C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100016F40(0, &qword_10094D1D0, UICollectionViewCell_ptr);
  v26 = v5;
  sub_10077059C();
  result = [v0 collectionView];
  if (result)
  {
    v13 = v25;
    (*(v6 + 16))(v8, v11, v25);
    v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v15 = swift_allocObject();
    (*(v6 + 32))(v15 + v14, v8, v13);
    v16 = objc_allocWithZone(sub_10000A5D4(&qword_100963070, qword_1007B2568));
    v17 = sub_10076E72C();
    v18 = v24;
    v19 = v26;
    v20 = v27;
    (*(v1 + 16))(v24, v26, v27);
    v21 = (*(v1 + 80) + 16) & ~*(v1 + 80);
    v22 = swift_allocObject();
    (*(v1 + 32))(v22 + v21, v18, v20);
    sub_10076E73C();
    (*(v1 + 8))(v19, v20);
    (*(v6 + 8))(v11, v13);
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100674DC8()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10000A5D4(&unk_10094F490, &unk_100798300);
  v19 = *(v1 - 8);
  v20 = v1;
  __chkstk_darwin(v1);
  v18 = v15 - v2;
  v3 = sub_10000A5D4(&qword_100964180, &unk_1007B2520);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - v5;
  sub_100764EDC();
  v7 = sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
  v8 = sub_10077068C();
  v22 = v7;
  v23 = &protocol witness table for OS_dispatch_queue;
  v21[0] = v8;
  v15[1] = sub_10000A5D4(&unk_10094F4A0, &qword_1007972C0);
  sub_100071820(&unk_1009641B0, &unk_10094F4A0, &qword_1007972C0, &protocol conformance descriptor for AsyncEvent<A>);
  v16 = v0;
  sub_10076F46C();

  v9 = v4 + 8;
  v10 = *(v4 + 8);
  v15[0] = v9;
  v10(v6, v3);
  sub_10000CD74(v21);
  sub_100764EEC();
  v11 = sub_10077068C();
  v22 = v7;
  v23 = &protocol witness table for OS_dispatch_queue;
  v21[0] = v11;
  sub_10076F46C();

  v10(v6, v3);
  sub_10000CD74(v21);
  sub_100764E8C();
  v12 = sub_10077068C();
  v22 = v7;
  v23 = &protocol witness table for OS_dispatch_queue;
  v21[0] = v12;
  sub_10000A5D4(&unk_10094F4B0, &qword_1007B2530);
  sub_100071820(&qword_1009641C0, &unk_10094F4B0, &qword_1007B2530, &protocol conformance descriptor for SyncEvent<A>);
  v13 = v18;
  sub_10076F46C();

  (*(v19 + 8))(v13, v20);
  return sub_10000CD74(v21);
}

void sub_1006751C4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a2;
  v51 = a1;
  v3 = sub_10000A5D4(&qword_100963020, &qword_1007B2508);
  v49 = *(v3 - 8);
  v50 = v3;
  __chkstk_darwin(v3);
  v5 = &v46 - v4;
  v6 = sub_10075F7BC();
  v47 = *(v6 - 8);
  v48 = v6;
  __chkstk_darwin(v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v46 = &v46 - v10;
  v11 = sub_10076E83C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076E81C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10076E87C();
  v52 = *(v19 - 8);
  v53 = v19;
  v20 = __chkstk_darwin(v19);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v18, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v15, v20);
  sub_10076E84C();
  (*(v12 + 104))(v14, enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:), v11);
  sub_10076E86C();
  sub_100016F40(0, &unk_1009632E0, NSCollectionLayoutSection_ptr);
  v23 = sub_10077097C();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_11:
    (*(v52 + 8))(v22, v53);
    return;
  }

  v25 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_diffableDataSource);
  v26 = Strong;
  v27 = v25;

  if (v25)
  {
    sub_10076E79C();

    v28 = v50;
    v29 = sub_10076E61C();
    (*(v49 + 8))(v5, v28);
    if ((v51 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v29 + 16) > v51)
    {
      v31 = v47;
      v30 = v48;
      (*(v47 + 16))(v8, v29 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v51, v48);

      v32 = v46;
      (*(v31 + 32))(v46, v8, v30);
      v33 = sub_10075F79C();
      if (v34)
      {
        v35 = v33;
        v36 = v34;

        v37 = HIBYTE(v36) & 0xF;
        if ((v36 & 0x2000000000000000) == 0)
        {
          v37 = v35 & 0xFFFFFFFFFFFFLL;
        }

        if (v37)
        {
          v38 = objc_opt_self();
          v39 = [v38 fractionalWidthDimension:1.0];
          v40 = [v38 estimatedDimension:44.0];
          v41 = [objc_opt_self() sizeWithWidthDimension:v39 heightDimension:v40];

          v42 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v41 elementKind:UICollectionElementKindSectionHeader alignment:1];
          sub_10000A5D4(&unk_100942870, &qword_100784460);
          v43 = swift_allocObject();
          *(v43 + 16) = xmmword_1007841E0;
          *(v43 + 32) = v42;
          sub_100016F40(0, &qword_100948C70, NSCollectionLayoutBoundarySupplementaryItem_ptr);
          v44 = v42;
          isa = sub_1007701AC().super.isa;

          [v23 setBoundarySupplementaryItems:isa];
        }
      }

      (*(v31 + 8))(v32, v30);
      goto LABEL_11;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1006757D4(void *a1, uint64_t a2, char *a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_10067584C(a1, v8, a2, a3);
  }
}

uint64_t sub_10067584C(void *a1, __n128 a2, uint64_t a3, char *a4)
{
  v170 = a4;
  v174 = a1;
  v146 = sub_10076E2FC();
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v144 = &v137 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_10076E30C();
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v152 = &v137 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_10076E2AC();
  v153 = *(v154 - 8);
  __chkstk_darwin(v154);
  v151 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_10075F7DC();
  v175 = *(v160 - 8);
  __chkstk_darwin(v160);
  v141 = &v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v142 = &v137 - v9;
  __chkstk_darwin(v10);
  v148 = &v137 - v11;
  __chkstk_darwin(v12);
  v161 = &v137 - v13;
  __chkstk_darwin(v14);
  v159 = &v137 - v15;
  __chkstk_darwin(v16);
  v158 = &v137 - v17;
  v18 = sub_10000A5D4(&qword_100945928, &qword_100787C70);
  __chkstk_darwin(v18 - 8);
  v163 = &v137 - v19;
  v140 = sub_10076E26C();
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v138 = (&v137 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v166 = sub_10076E23C();
  v162 = *(v166 - 8);
  __chkstk_darwin(v166);
  v155 = &v137 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_10075F8BC();
  v157 = *(v168 - 8);
  __chkstk_darwin(v168);
  v23 = &v137 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10075F8DC();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v156 = (&v137 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v27);
  v147 = &v137 - v28;
  __chkstk_darwin(v29);
  v31 = &v137 - v30;
  __chkstk_darwin(v32);
  v169 = &v137 - v33;
  v34 = type metadata accessor for PageFacetsViewController.Item(0);
  __chkstk_darwin(v34);
  v36 = &v137 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &v137 - v38;
  __chkstk_darwin(v40);
  v42 = &v137 - v41;
  v43 = sub_10076E58C();
  v172 = *(v43 - 8);
  v173 = v43;
  __chkstk_darwin(v43);
  v143 = &v137 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v47 = &v137 - v46;
  sub_10076E55C();
  sub_100679D40(v170, v42);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v171 = v25;
  if (EnumCaseMultiPayload != 1)
  {
    v165 = v47;
    v169 = v42;
    sub_100679D40(v42, v36);
    v71 = *(v25 + 16);
    v168 = v36;
    v164 = v24;
    v138 = v71;
    v71(v31, v36, v24);
    v72 = v158;
    sub_10075F7EC();
    v73 = v175;
    v74 = v159;
    v75 = v160;
    v139 = *(v175 + 13);
    v157 = v175 + 104;
    (v139)(v159, enum case for PageFacets.Facet.DisplayType.toggle(_:), v160);
    v76 = sub_100679DA4(&qword_100946820, &type metadata accessor for PageFacets.Facet.DisplayType, &protocol conformance descriptor for PageFacets.Facet.DisplayType);
    sub_10077018C();
    v140 = v76;
    sub_10077018C();
    v170 = v31;
    if (v178 == v176 && v179 == v177)
    {
      v77 = 1;
    }

    else
    {
      v77 = sub_10077167C();
    }

    v78 = *(v73 + 8);
    v78(v74, v75);
    v175 = (v73 + 8);
    v159 = v78;
    v78(v72, v75);

    if (v77)
    {
      sub_10075F86C();
      sub_10076E56C();
      sub_100016F40(0, &qword_1009641D0, UIAction_ptr);
      v79 = swift_allocObject();
      v80 = v167;
      swift_unknownObjectWeakInit();
      v81 = v147;
      v82 = v164;
      v138(v147, v170, v164);
      v83 = v171;
      v84 = (*(v171 + 80) + 24) & ~*(v171 + 80);
      v85 = swift_allocObject();
      *(v85 + 16) = v79;
      v86 = v170;
      (*(v83 + 32))(v85 + v84, v81, v82);
      v87 = sub_100770F1C();
      v88 = [objc_allocWithZone(UISwitch) initWithFrame:v87 primaryAction:{0.0, 0.0, 0.0, 0.0}];

      v89 = OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_selectedFacetOptions;
      swift_beginAccess();
      v90 = *(v80 + v89);
      v62 = v172;
      if (*(v90 + 16) && (v91 = sub_100610638(v86), (v92 & 1) != 0))
      {
        v93 = *(*(v90 + 56) + 8 * v91);
        swift_endAccess();
        v94 = *(v93 + 16) != 0;
      }

      else
      {
        swift_endAccess();
        v94 = 0;
      }

      v102 = v174;
      [v88 setOn:v94];
      sub_10000A5D4(&qword_100945930, &qword_100787C78);
      sub_10076E32C();
      *(swift_allocObject() + 16) = xmmword_100783DD0;
      v103 = sub_10000A5D4(&qword_100945940, qword_100787C90);
      v104 = v152;
      v105 = &v152[*(v103 + 48)];
      (*(v162 + 104))(v152, enum case for UICellAccessory.DisplayedState.always(_:), v166);
      *v105 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v105[1] = 0;
      (*(v149 + 104))(v104, enum case for UICellAccessory.Placement.trailing(_:), v150);
      v106 = sub_10076E24C();
      (*(*(v106 - 8) + 56))(v163, 1, 1, v106);
      v107 = v88;
      v108 = v151;
      sub_10076E29C();
      sub_10076E22C();
      (*(v153 + 8))(v108, v154);
      sub_10077093C();
      v178 = 0x2D7465636166;
      v179 = 0xE600000000000000;
      v109 = v170;
      v182._countAndFlagsBits = sub_10075F85C();
      sub_1007700CC(v182);

      v110 = sub_10076FF6C();

      [v102 setAccessibilityIdentifier:v110];

      v111 = *(v83 + 8);
      v111(v109, v82);
      v111(v168, v82);
      v61 = v173;
      goto LABEL_25;
    }

    v95 = v170;
    v96 = v171;
    v97 = v164;
    v170 = *(v171 + 8);
    (v170)(v95, v164);
    v98 = v156;
    (*(v96 + 32))(v156, v168, v97);
    sub_10075F7EC();
    v99 = v148;
    v100 = v139;
    (v139)(v148, enum case for PageFacets.Facet.DisplayType.singleSelection(_:), v75);
    sub_10077018C();
    sub_10077018C();
    v62 = v172;
    if (v178 == v176 && v179 == v177)
    {
      v101 = v159;
      (v159)(v99, v75);
      v101(v161, v75);
    }

    else
    {
      v112 = sub_10077167C();
      v113 = v159;
      (v159)(v99, v75);
      v113(v161, v75);

      if (v112)
      {
        goto LABEL_22;
      }

      sub_10075F7EC();
      v100(v141, enum case for PageFacets.Facet.DisplayType.multipleSelection(_:), v75);
      sub_10077018C();
      sub_10077018C();
      if (v178 != v176 || v179 != v177)
      {
        v135 = sub_10077167C();
        v136 = v159;
        (v159)(v141, v75);
        v136(v142, v75);

        if ((v135 & 1) == 0)
        {
          (v170)(v98, v164);
          sub_10077093C();
          v61 = v173;
LABEL_25:
          v42 = v169;
          v47 = v165;
          goto LABEL_30;
        }

LABEL_22:
        v114 = v143;
        sub_10076E57C();
        v115 = v165;
        v61 = v173;
        (*(v62 + 8))(v165, v173);
        (*(v62 + 32))(v115, v114, v61);
        sub_10075F86C();
        sub_10076E56C();
        v116 = OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_selectedFacetOptions;
        v117 = v167;
        swift_beginAccess();
        v118 = *(v117 + v116);

        sub_1006775B4(v98, v118, v119);

        sub_10076E4FC();
        sub_10000A5D4(&qword_100945930, &qword_100787C78);
        sub_10076E32C();
        *(swift_allocObject() + 16) = xmmword_100783DD0;
        v120 = v162;
        v121 = v155;
        v122 = v166;
        (*(v162 + 104))(v155, enum case for UICellAccessory.DisplayedState.always(_:), v166);
        v123 = sub_10076E24C();
        (*(*(v123 - 8) + 56))(v163, 1, 1, v123);
        v124 = v144;
        sub_10076E2EC();
        sub_10076E28C();
        v125 = v156;
        (*(v145 + 8))(v124, v146);
        (*(v120 + 8))(v121, v122);
        v126 = v174;
        sub_10077093C();
        v127._countAndFlagsBits = sub_10075F82C();
        if (v127._object)
        {
          v178 = 0x2D7465636166;
          v179 = 0xE600000000000000;
          sub_1007700CC(v127);

          v128 = sub_10076FF6C();

          [v126 setAccessibilityIdentifier:v128];
        }

        (v170)(v125, v164);
        goto LABEL_25;
      }

      v134 = v159;
      (v159)(v141, v75);
      v134(v142, v75);
    }

    goto LABEL_22;
  }

  v49 = v174;
  sub_100679D40(v42, v39);
  v50 = *(sub_10000A5D4(&qword_100962FF8, &qword_1007B24E0) + 48);
  v51 = v169;
  (*(v25 + 32))(v169, v39, v24);
  v52 = v157;
  (*(v157 + 4))(v23, &v39[v50], v168);
  v175 = v23;
  sub_10075F8AC();
  sub_10076E56C();
  v53 = OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_selectedFacetOptions;
  v54 = v167;
  swift_beginAccess();
  v55 = *(v54 + v53);
  if (*(v55 + 16) && (v56 = sub_100610638(v51), (v57 & 1) != 0))
  {
    v164 = v24;
    v58 = *(*(v55 + 56) + 8 * v56);
    swift_endAccess();

    v60 = sub_10069315C(v175, v58, v59);

    v62 = v172;
    v61 = v173;
    v63 = v49;
    if (v60)
    {
      sub_10000A5D4(&qword_100945930, &qword_100787C78);
      v64 = *(sub_10076E32C() - 8);
      v170 = ((*(v64 + 80) + 32) & ~*(v64 + 80));
      *(swift_allocObject() + 16) = xmmword_100783DD0;
      v65 = v162;
      v66 = *(v162 + 104);
      v165 = v47;
      v67 = v155;
      v66(v155, enum case for UICellAccessory.DisplayedState.always(_:), v166);
      v68 = sub_10076E24C();
      (*(*(v68 - 8) + 56))(v163, 1, 1, v68);
      v69 = v138;
      sub_10076E25C();
      sub_10076E31C();
      (*(v139 + 8))(v69, v140);
      v70 = v67;
      v47 = v165;
      (*(v65 + 8))(v70, v166);
    }

    v24 = v164;
  }

  else
  {
    swift_endAccess();
    v62 = v172;
    v61 = v173;
    v63 = v49;
  }

  sub_10077093C();
  v129 = v175;
  v130._countAndFlagsBits = sub_10075F87C();
  if (v130._object)
  {
    v178 = 0x2D7465636166;
    v179 = 0xE600000000000000;
    sub_1007700CC(v130);

    v131 = sub_10076FF6C();

    [v63 setAccessibilityIdentifier:v131];
  }

  (*(v52 + 1))(v129, v168);
  (*(v171 + 8))(v169, v24);
LABEL_30:
  sub_10067A7A8(v42);
  v180 = v61;
  v181 = &protocol witness table for UIListContentConfiguration;
  v132 = sub_10000DB7C(&v178);
  (*(v62 + 16))(v132, v47, v61);
  sub_1007707FC();
  return (*(v62 + 8))(v47, v61);
}

unint64_t sub_100676EB8(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a1;
  v28 = a5;
  v6 = sub_10076E58C();
  v26 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&qword_100963020, &qword_1007B2508);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - v11;
  v13 = sub_10075F7BC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    v25 = v6;
    v19 = *(result + OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_diffableDataSource);
    if (v19)
    {
      v20 = v19;
      sub_10076E79C();

      v21 = sub_10076E61C();
      (*(v10 + 8))(v12, v9);
      result = sub_10075E12C();
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *(v21 + 16))
      {
        (*(v14 + 16))(v16, v21 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * result, v13);

        sub_10076E4EC();
        sub_10075F79C();
        sub_10076E56C();
        v22 = v25;
        v29[3] = v25;
        v29[4] = &protocol witness table for UIListContentConfiguration;
        v23 = sub_10000DB7C(v29);
        v24 = v26;
        (*(v26 + 16))(v23, v8, v22);
        sub_1007707FC();

        (*(v24 + 8))(v8, v22);
        return (*(v14 + 8))(v16, v13);
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1006771DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10000A5D4(&qword_100963008, &qword_1007B24F8);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  sub_100679D40(a3, &v11 - v6);
  v8 = type metadata accessor for PageFacetsViewController.Item(0);
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  sub_100016F40(0, &qword_100945920, UICollectionViewListCell_ptr);
  v9 = sub_1007705AC();
  sub_10000CFBC(v7, &qword_100963008, &qword_1007B24F8);
  return v9;
}

void sub_100677310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_10000A5D4(&qword_100946838, &qword_1007890E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    v9 = v8;
    if (v8)
    {
      v10 = [v8 collectionView];

      if (!v10)
      {
        __break(1u);
        return;
      }

      [v10 contentOffset];
      v22 = v11;
      v23 = v12;

      *&v13 = v22;
      *(&v13 + 1) = v23;
    }

    else
    {
      v13 = 0uLL;
    }

    v14 = &v7[OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_preselectionContentOffset];
    *v14 = v13;
    v14[16] = v9 == 0;
  }

  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;

    v17 = sub_10075F8CC();
    if (*(v17 + 16))
    {
      v18 = v17;
      v19 = sub_10075F8BC();
      v20 = *(v19 - 8);
      (*(v20 + 16))(v5, v18 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v19);

      (*(v20 + 56))(v5, 0, 1, v19);
    }

    else
    {

      v21 = sub_10075F8BC();
      (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
    }

    sub_100764F0C();

    sub_10000CFBC(v5, &qword_100946838, &qword_1007890E0);
  }
}

uint64_t sub_1006775B4(void (**a1)(char *, char *, uint64_t), uint64_t a2, __n128 a3)
{
  v5 = sub_10075F8BC();
  v59 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v53 - v9;
  __chkstk_darwin(v11);
  v13 = &v53 - v12;
  v14 = sub_10075F83C();
  result = 0;
  if (v14)
  {
    if (*(a2 + 16) && (v16 = sub_100610638(a1), (v17 & 1) != 0))
    {
      v18 = *(*(a2 + 56) + 8 * v16);
      v19 = *(v18 + 16);

      v20 = *(sub_10075F8CC() + 16);

      if (v19 == v20)
      {

        v64._countAndFlagsBits = 0xD000000000000025;
        v64._object = 0x80000001007F4700;
        v67._countAndFlagsBits = 0;
        v67._object = 0xE000000000000000;
        return sub_1007622EC(v64, v67);
      }

      else
      {
        v62 = v18;
        result = sub_10075F8CC();
        v57 = *(result + 16);
        if (v57)
        {
          v54 = v7;
          v25 = 0;
          v26 = v62;
          v60 = (v62 + 56);
          v61 = v59 + 16;
          v27 = (v59 + 8);
          v55 = _swiftEmptyArrayStorage;
          v56 = result;
          v53 = (v59 + 32);
          while (v25 < *(result + 16))
          {
            v58 = (*(v59 + 80) + 32) & ~*(v59 + 80);
            v28 = *(v59 + 72);
            v29 = *(v59 + 16);
            v29(v13, result + v58 + v28 * v25, v5);
            if (*(v26 + 16) && (sub_100679DA4(&qword_100946840, &type metadata accessor for PageFacets.Facet.Option, &protocol conformance descriptor for PageFacets.Facet.Option), v30 = sub_10076FEAC(), v26 = v62, v31 = -1 << *(v62 + 32), v32 = v30 & ~v31, ((*(v60 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
            {
              v33 = ~v31;
              while (1)
              {
                v29(v10, *(v26 + 48) + v32 * v28, v5);
                sub_100679DA4(&qword_100946848, &type metadata accessor for PageFacets.Facet.Option, &protocol conformance descriptor for PageFacets.Facet.Option);
                v34 = sub_10076FF1C();
                (*v27)(v10, v5);
                if (v34)
                {
                  break;
                }

                v32 = (v32 + 1) & v33;
                v26 = v62;
                if (((*(v60 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
                {
                  goto LABEL_11;
                }
              }

              v35 = *v53;
              (*v53)(v54, v13, v5);
              v36 = v55;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v38 = v36;
              v63 = v36;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1004BBD8C(0, *(v36 + 2) + 1, 1);
                v38 = v63;
              }

              v26 = v62;
              v40 = *(v38 + 2);
              v39 = *(v38 + 3);
              if (v40 >= v39 >> 1)
              {
                sub_1004BBD8C((v39 > 1), v40 + 1, 1);
                v26 = v62;
                v38 = v63;
              }

              *(v38 + 2) = v40 + 1;
              v55 = v38;
              v35(&v38[v58 + v40 * v28], v54, v5);
            }

            else
            {
LABEL_11:
              (*v27)(v13, v5);
            }

            ++v25;
            result = v56;
            if (v25 == v57)
            {
              goto LABEL_26;
            }
          }

          __break(1u);
        }

        else
        {
          v55 = _swiftEmptyArrayStorage;
LABEL_26:

          v41 = *(v55 + 2);
          if (v41)
          {
            v63 = _swiftEmptyArrayStorage;
            v42 = v55;
            sub_1004BBB24(0, v41, 0);
            v43 = v63;
            v44 = *(v59 + 16);
            v45 = v42 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
            v61 = *(v59 + 72);
            v62 = v44;
            v59 += 16;
            v60 = (v59 - 8);
            do
            {
              (v62)(v10, v45, v5);
              v46 = sub_10075F8AC();
              v48 = v47;
              (*v60)(v10, v5);
              v63 = v43;
              v50 = *(v43 + 2);
              v49 = *(v43 + 3);
              if (v50 >= v49 >> 1)
              {
                sub_1004BBB24((v49 > 1), v50 + 1, 1);
                v43 = v63;
              }

              *(v43 + 2) = v50 + 1;
              v51 = &v43[16 * v50];
              *(v51 + 4) = v46;
              *(v51 + 5) = v48;
              v45 += v61;
              --v41;
            }

            while (v41);
          }

          else
          {

            v43 = _swiftEmptyArrayStorage;
          }

          v63 = v43;
          v66._object = 0x80000001007F46E0;
          v66._countAndFlagsBits = 0xD00000000000001DLL;
          v69._countAndFlagsBits = 0;
          v69._object = 0xE000000000000000;
          sub_1007622EC(v66, v69);
          sub_10000A5D4(&unk_10094BB60, &unk_100785530);
          sub_100071820(&qword_100943480, &unk_10094BB60, &unk_100785530, &protocol conformance descriptor for [A]);
          v52 = sub_10076FEFC();

          return v52;
        }
      }
    }

    else
    {
      v21 = sub_10075F8CC();
      v22 = __chkstk_darwin(v21);
      *(&v53 - 2) = a1;
      v23 = sub_100673048(sub_10067B7D0, v22, (&v53 - 4), v21);

      if (*(v23 + 2))
      {
        v63 = v23;
        v65._object = 0x80000001007F46E0;
        v65._countAndFlagsBits = 0xD00000000000001DLL;
        v68._countAndFlagsBits = 0;
        v68._object = 0xE000000000000000;
        sub_1007622EC(v65, v68);
        sub_10000A5D4(&unk_10094BB60, &unk_100785530);
        sub_100071820(&qword_100943480, &unk_10094BB60, &unk_100785530, &protocol conformance descriptor for [A]);
        v24 = sub_10076FEFC();

        return v24;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100677D10(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&unk_10094F4C0, &qword_100798310);
  __chkstk_darwin(v3 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v12[-v7];
  sub_100764EAC();
  v9 = OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_pageFacets;
  swift_beginAccess();
  sub_10067B2D4(a2 + v9, v5);
  swift_beginAccess();
  sub_10067B43C(v8, a2 + v9);
  swift_endAccess();
  sub_100673678(v5, v10);
  sub_10000CFBC(v5, &unk_10094F4C0, &qword_100798310);
  return sub_10000CFBC(v8, &unk_10094F4C0, &qword_100798310);
}

uint64_t (*sub_100677E48(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10067B434;
}

void (*sub_100677EAC(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10067B3BC;
}

void sub_100677F10(uint64_t a1, uint64_t a2)
{
  v3 = sub_100764E9C();
  v4 = OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_selectedFacetOptions;
  swift_beginAccess();
  v5 = *(a2 + v4);
  *(a2 + v4) = v3;

  sub_100679E68(v6, v5);
  LOBYTE(v4) = v7;

  if ((v4 & 1) == 0)
  {
    sub_100674470(v8);
  }
}

uint64_t sub_100677FA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_objectGraph);
  v8 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  sub_10076F5AC();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    return sub_10000CFBC(v6, &unk_100943200, &unk_100785840);
  }

  sub_100263BF0(a1, 1, v7, v6);

  return (*(v9 + 8))(v6, v8);
}

uint64_t (*sub_1006780F0(void *a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10067B37C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1002759EC;
}

void sub_100678180(void *a1, uint64_t a2)
{
  v164 = a2;
  v155 = a1;
  v148 = sub_10076F08C();
  v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v145 = &v125 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_10076F0CC();
  v144 = *(v146 - 8);
  __chkstk_darwin(v146);
  v143 = &v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_10075E11C();
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v137 = v5;
  v138 = &v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_10076F0EC();
  v142 = *(v151 - 8);
  __chkstk_darwin(v151);
  v136 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v141 = &v125 - v8;
  v9 = sub_10000A5D4(&qword_100945928, &qword_100787C70);
  __chkstk_darwin(v9 - 8);
  v129 = &v125 - v10;
  v131 = sub_10076E26C();
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v127 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_10076E23C();
  v126 = *(v128 - 8);
  __chkstk_darwin(v128);
  v125 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&qword_100946838, &qword_1007890E0);
  __chkstk_darwin(v13 - 8);
  v135 = &v125 - v14;
  v158 = sub_10075F7DC();
  v165 = *(v158 - 8);
  __chkstk_darwin(v158);
  v149 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v133 = &v125 - v17;
  __chkstk_darwin(v18);
  v20 = &v125 - v19;
  __chkstk_darwin(v21);
  v23 = &v125 - v22;
  __chkstk_darwin(v24);
  v132 = &v125 - v25;
  __chkstk_darwin(v26);
  v28 = &v125 - v27;
  __chkstk_darwin(v29);
  v153 = &v125 - v30;
  __chkstk_darwin(v31);
  v154 = &v125 - v32;
  __chkstk_darwin(v33);
  v35 = &v125 - v34;
  __chkstk_darwin(v36);
  v38 = &v125 - v37;
  v39 = sub_10075F8BC();
  v156 = *(v39 - 8);
  v157 = v39;
  __chkstk_darwin(v39);
  v159 = &v125 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10075F8DC();
  v42 = *(v41 - 8);
  v162 = v41;
  v163 = v42;
  __chkstk_darwin(v41);
  v134 = &v125 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v152 = &v125 - v45;
  __chkstk_darwin(v46);
  v160 = &v125 - v47;
  v48 = sub_10000A5D4(&qword_100963008, &qword_1007B24F8);
  __chkstk_darwin(v48 - 8);
  v50 = &v125 - v49;
  v51 = type metadata accessor for PageFacetsViewController.Item(0);
  v52 = *(v51 - 8);
  __chkstk_darwin(v51);
  v54 = &v125 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v161 = &v125 - v56;
  v150 = v2;
  v57 = *&v2[OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_diffableDataSource];
  if (!v57)
  {
    __break(1u);
    return;
  }

  v58 = v57;
  sub_10076E74C();

  if ((*(v52 + 48))(v50, 1, v51) == 1)
  {
    sub_10000CFBC(v50, &qword_100963008, &qword_1007B24F8);
    return;
  }

  v59 = v161;
  sub_10067B18C(v50, v161);
  sub_100679D40(v59, v54);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v163 + 32))(v152, v54, v162);
    sub_10075F7EC();
    v64 = *(v165 + 104);
    v64(v20, enum case for PageFacets.Facet.DisplayType.singleSelection(_:), v158);
    sub_100679DA4(&qword_100946820, &type metadata accessor for PageFacets.Facet.DisplayType, &protocol conformance descriptor for PageFacets.Facet.DisplayType);
    sub_10077018C();
    sub_10077018C();
    if (aBlock == v172 && v167 == v173)
    {
      v65 = 1;
    }

    else
    {
      v65 = sub_10077167C();
    }

    v78 = *(v165 + 8);
    v79 = v20;
    v80 = v158;
    v78(v79, v158);
    v78(v23, v80);

    v77 = v152;
    if ((v65 & 1) == 0)
    {
      v81 = v133;
      sub_10075F7EC();
      v64(v149, enum case for PageFacets.Facet.DisplayType.multipleSelection(_:), v80);
      sub_10077018C();
      sub_10077018C();
      if (aBlock == v172 && v167 == v173)
      {
        v78(v149, v80);
        v78(v81, v80);
      }

      else
      {
        v93 = sub_10077167C();
        v78(v149, v80);
        v78(v81, v80);

        if ((v93 & 1) == 0)
        {
          goto LABEL_43;
        }
      }
    }

    v94 = v162;
    v95 = v134;
    (*(v163 + 16))(v134, v77, v162);
    v96 = v150;
    v97 = *&v150[OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_facetsPresenter];
    v98 = v150[OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_showDoneButton];
    v99 = objc_allocWithZone(type metadata accessor for PageFacetOptionsViewController(0));

    v100 = sub_1002551BC(v95, v97, v98);

    *&v100[OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_delegate + 8] = &off_10089EBA8;
    swift_unknownObjectWeakAssign();
    v101 = [v96 navigationController];
    if (v101)
    {
      v102 = v101;
      [v101 pushViewController:v100 animated:1];

      v100 = v102;
    }

    (*(v163 + 8))(v77, v94);
    goto LABEL_48;
  }

  v149 = v28;
  v60 = *(sub_10000A5D4(&qword_100962FF8, &qword_1007B24E0) + 48);
  (*(v163 + 32))(v160, v54, v162);
  (*(v156 + 32))(v159, &v54[v60], v157);
  sub_10075F7EC();
  v61 = enum case for PageFacets.Facet.DisplayType.multipleSelection(_:);
  v62 = v158;
  v152 = *(v165 + 104);
  (v152)(v35, enum case for PageFacets.Facet.DisplayType.multipleSelection(_:), v158);
  sub_100679DA4(&qword_100946820, &type metadata accessor for PageFacets.Facet.DisplayType, &protocol conformance descriptor for PageFacets.Facet.DisplayType);
  sub_10077018C();
  sub_10077018C();
  LODWORD(v134) = v61;
  if (aBlock == v172 && v167 == v173)
  {
    v63 = 1;
  }

  else
  {
    v63 = sub_10077167C();
  }

  v66 = v165 + 8;
  v67 = *(v165 + 8);
  v67(v35, v62);
  v165 = v66;
  v67(v38, v62);

  v68 = v150;
  if ((v63 & 1) == 0)
  {
    v69 = OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_selectedFacetOptions;
    swift_beginAccess();
    v70 = *&v68[v69];
    if (*(v70 + 16) && (v71 = sub_100610638(v160), (v72 & 1) != 0))
    {
      v73 = *(*(v70 + 56) + 8 * v71);
      swift_endAccess();

      v75 = sub_10069315C(v159, v73, v74);

      if (v75)
      {
        v76 = 0;
        v77 = v160;
        goto LABEL_24;
      }
    }

    else
    {
      swift_endAccess();
    }
  }

  [v155 contentOffset];
  v82 = &v68[OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_preselectionContentOffset];
  *v82 = v83;
  *(v82 + 1) = v84;
  v82[16] = 0;
  v86 = v156;
  v85 = v157;
  v87 = v135;
  (*(v156 + 16))(v135, v159, v157);
  v76 = 1;
  (*(v86 + 56))(v87, 0, 1, v85);
  v77 = v160;
  sub_100764F0C();
  sub_10000CFBC(v87, &qword_100946838, &qword_1007890E0);
LABEL_24:
  sub_10075F7EC();
  (v152)(v153, enum case for PageFacets.Facet.DisplayType.singleSelection(_:), v62);
  sub_10077018C();
  sub_10077018C();
  if (aBlock == v172 && v167 == v173)
  {
    v67(v153, v62);
    v67(v154, v62);

LABEL_27:

    goto LABEL_29;
  }

  v88 = sub_10077167C();
  v67(v153, v62);
  v67(v154, v62);

  if (v88)
  {
    goto LABEL_29;
  }

  sub_10075F7EC();
  v103 = v132;
  (v152)(v132, v134, v62);
  sub_10077018C();
  sub_10077018C();
  if (aBlock == v172 && v167 == v173)
  {
    v67(v103, v62);
    v67(v149, v62);

    goto LABEL_27;
  }

  v104 = sub_10077167C();
  v67(v103, v62);
  v67(v149, v62);

  if (v104)
  {
LABEL_29:
    v89 = v164;
    if (v76)
    {
      isa = sub_10075E02C().super.isa;
      v91 = [v155 cellForItemAtIndexPath:isa];

      if (v91)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v92 = *(sub_10077092C() + 16);

          if (!v92)
          {
            sub_10000A5D4(&qword_100945930, &qword_100787C78);
            sub_10076E32C();
            *(swift_allocObject() + 16) = xmmword_100783DD0;
            v105 = v126;
            v106 = v125;
            v107 = v128;
            (*(v126 + 104))(v125, enum case for UICellAccessory.DisplayedState.always(_:), v128);
            v108 = sub_10076E24C();
            (*(*(v108 - 8) + 56))(v129, 1, 1, v108);
            v109 = v127;
            sub_10076E25C();
            sub_10076E31C();
            (*(v130 + 8))(v109, v131);
            (*(v105 + 8))(v106, v107);
          }

          sub_10077093C();
        }
      }
    }

    sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
    v110 = sub_10077068C();
    v111 = v136;
    sub_10076F0DC();
    v112 = v141;
    sub_10076F15C();
    v165 = *(v142 + 8);
    (v165)(v111, v151);
    v113 = v139;
    v114 = v138;
    v115 = v89;
    v116 = v140;
    (*(v139 + 16))(v138, v115, v140);
    v117 = (*(v113 + 80) + 24) & ~*(v113 + 80);
    v118 = swift_allocObject();
    v119 = v155;
    *(v118 + 16) = v155;
    (*(v113 + 32))(v118 + v117, v114, v116);
    v170 = sub_1002557CC;
    v171 = v118;
    aBlock = _NSConcreteStackBlock;
    v167 = 1107296256;
    v168 = sub_10009AEDC;
    v169 = &unk_10089EC08;
    v120 = _Block_copy(&aBlock);
    v121 = v119;

    v122 = v143;
    sub_10076F0AC();
    aBlock = _swiftEmptyArrayStorage;
    sub_100679DA4(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
    sub_100071820(&qword_100945170, &unk_10094E1C0, &qword_100785D50, &protocol conformance descriptor for [A]);
    v123 = v145;
    v124 = v148;
    sub_1007712CC();
    sub_10077064C();
    _Block_release(v120);

    (*(v147 + 8))(v123, v124);
    (*(v144 + 8))(v122, v146);
    (v165)(v112, v151);
    (*(v156 + 8))(v159, v157);
    (*(v163 + 8))(v160, v162);
    goto LABEL_48;
  }

  (*(v156 + 8))(v159, v157);
LABEL_43:
  (*(v163 + 8))(v77, v162);
LABEL_48:
  sub_10067A7A8(v161);
}

uint64_t sub_1006798A0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_10075E11C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  v10 = a3;
  v11 = a1;
  sub_10067AD3C(v9, v12);
  LOBYTE(a1) = v13;

  (*(v7 + 8))(v9, v6);
  return a1 & 1;
}

void sub_100679AC4(uint64_t a1, __n128 a2)
{
  sub_100679B98(319, a2);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100679B98(uint64_t a1, __n128 a2)
{
  if (!qword_100962F38)
  {
    sub_10075F8EC();
    v2 = sub_1007711AC();
    if (!v3)
    {
      atomic_store(v2, &qword_100962F38);
    }
  }
}

void sub_100679C10(uint64_t a1)
{
  sub_10075F8DC();
  if (v1 <= 0x3F)
  {
    sub_100679C84(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100679C84(uint64_t a1)
{
  if (!qword_100962FC0)
  {
    sub_10075F8DC();
    sub_10075F8BC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100962FC0);
    }
  }
}

uint64_t sub_100679D40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageFacetsViewController.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100679DA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100679DEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10075F7FC();
  v6 = sub_10069315C(a1, v4, v5);

  if (v6)
  {
    result = sub_10075F8AC();
  }

  else
  {
    result = 0;
    v8 = 0;
  }

  *a2 = result;
  a2[1] = v8;
  return result;
}

void sub_100679E68(uint64_t a1, uint64_t a2)
{
  v56 = sub_10075F8DC();
  v51 = *(v56 - 8);
  __chkstk_darwin(v56);
  v52 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v50 = v46 - v6;
  v7 = sub_10000A5D4(&qword_100963040, &qword_1007B2538);
  __chkstk_darwin(v7 - 8);
  v53 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v49 = v46 - v10;
    v12 = 0;
    v47 = a1;
    v15 = *(a1 + 64);
    v14 = a1 + 64;
    v13 = v15;
    v16 = 1 << *(v14 - 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v13;
    v19 = (v16 + 63) >> 6;
    v46[0] = v14;
    v46[1] = v51 + 16;
    v54 = (v51 + 32);
    v48 = (v51 + 8);
    while (v18)
    {
      v55 = (v18 - 1) & v18;
      v20 = __clz(__rbit64(v18)) | (v12 << 6);
LABEL_16:
      v25 = v47;
      v26 = v50;
      v27 = v51;
      v28 = v56;
      (*(v51 + 16))(v50, *(v47 + 48) + *(v51 + 72) * v20, v56, v11);
      v29 = *(*(v25 + 56) + 8 * v20);
      v30 = sub_10000A5D4(&qword_100963048, &qword_1007B2540);
      v31 = *(v30 + 48);
      v32 = *(v27 + 32);
      v33 = v53;
      v32(v53, v26, v28);
      *(v33 + v31) = v29;
      (*(*(v30 - 8) + 56))(v33, 0, 1, v30);

LABEL_17:
      v34 = v49;
      sub_10067B3C4(v33, v49);
      v35 = sub_10000A5D4(&qword_100963048, &qword_1007B2540);
      if ((*(*(v35 - 8) + 48))(v34, 1, v35) == 1)
      {
        return;
      }

      v36 = *(v35 + 48);
      v37 = v52;
      v38 = v56;
      (*v54)(v52, v34, v56);
      v39 = *(v34 + v36);
      sub_100610638(v37);
      LOBYTE(v36) = v40;
      (*v48)(v37, v38);
      if ((v36 & 1) == 0)
      {

        return;
      }

      sub_100254E0C(v41, v39, v42);
      v44 = v43;

      v18 = v55;
      if ((v44 & 1) == 0)
      {
        return;
      }
    }

    if (v19 <= v12 + 1)
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = v19;
    }

    v22 = v21 - 1;
    while (1)
    {
      v23 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v23 >= v19)
      {
        v45 = sub_10000A5D4(&qword_100963048, &qword_1007B2540);
        v33 = v53;
        (*(*(v45 - 8) + 56))(v53, 1, 1, v45);
        v55 = 0;
        v12 = v22;
        goto LABEL_17;
      }

      v24 = *(v46[0] + 8 * v23);
      ++v12;
      if (v24)
      {
        v55 = (v24 - 1) & v24;
        v20 = __clz(__rbit64(v24)) | (v23 << 6);
        v12 = v23;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10067A2E4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_10075F8BC();
  v48 = *(v5 - 8);
  v49 = v5;
  __chkstk_darwin(v5);
  v45 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v47 = &v44 - v8;
  v9 = sub_10075F8DC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v46 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v44 - v13;
  v15 = type metadata accessor for PageFacetsViewController.Item(0);
  __chkstk_darwin(v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v44 - v19;
  v21 = sub_10000A5D4(&qword_100963000, &unk_1007B24E8);
  __chkstk_darwin(v21 - 8);
  v23 = &v44 - v22;
  v25 = &v44 + *(v24 + 56) - v22;
  sub_100679D40(a1, &v44 - v22);
  sub_100679D40(a2, v25);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100679D40(v23, v20);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v10 + 32))(v14, v25, v9);
      v36 = sub_10075F84C();
      v40 = *(v10 + 8);
      v40(v14, v9);
      v40(v20, v9);
      goto LABEL_11;
    }

    v17 = v20;
    goto LABEL_8;
  }

  sub_100679D40(v23, v17);
  v26 = *(sub_10000A5D4(&qword_100962FF8, &qword_1007B24E0) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v48 + 8))(&v17[v26], v49);
LABEL_8:
    (*(v10 + 8))(v17, v9);
    sub_10000CFBC(v23, &qword_100963000, &unk_1007B24E8);
    goto LABEL_9;
  }

  (*(v10 + 32))(v46, v25, v9);
  v27 = v48;
  v28 = *(v48 + 32);
  v29 = v49;
  v28(v47, &v17[v26], v49);
  v30 = &v25[v26];
  v31 = v45;
  v28(v45, v30, v29);
  v32 = v46;
  v33 = sub_10075F84C();
  v34 = *(v10 + 8);
  v34(v17, v9);
  if (v33)
  {
    v35 = v47;
    v36 = sub_10075F89C();
    v37 = *(v27 + 8);
    v38 = v31;
    v39 = v49;
    v37(v38, v49);
    v37(v35, v39);
    v34(v32, v9);
LABEL_11:
    sub_10067A7A8(v23);
    return v36 & 1;
  }

  v42 = *(v27 + 8);
  v43 = v49;
  v42(v31, v49);
  v42(v47, v43);
  v34(v32, v9);
  sub_10067A7A8(v23);
LABEL_9:
  v36 = 0;
  return v36 & 1;
}

uint64_t sub_10067A7A8(uint64_t a1)
{
  v2 = type metadata accessor for PageFacetsViewController.Item(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10067A804(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_10000A5D4(&unk_10094F4C0, &qword_100798310);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_pageFacets;
  v13 = sub_10075F8EC();
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_selectedFacetOptions;
  *&v4[v14] = sub_1000FDF0C(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_diffableDataSource] = 0;
  v15 = &v4[OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_preselectionContentOffset];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_facetsPresenter] = a1;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_objectGraph] = a3;

  sub_100764E6C();
  swift_beginAccess();
  sub_10067AB8C(v11, &v4[v12]);
  swift_endAccess();

  v16 = sub_100764ECC();

  swift_beginAccess();
  *&v4[v14] = v16;

  v4[OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_showDoneButton] = a2;
  v17 = [objc_allocWithZone(UICollectionViewLayout) init];
  v25.receiver = v4;
  v25.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v25, "initWithCollectionViewLayout:", v17);

  if (a2)
  {
    v19 = [v18 navigationItem];
    sub_100016F40(0, &qword_100958FF0, UIBarButtonItem_ptr);
    sub_100016F40(0, &qword_1009641D0, UIAction_ptr);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v26.value.super.super.isa = sub_100770F1C();
    v26.is_nil = 0;
    isa = sub_10077054C(UIBarButtonSystemItemDone, v26, v27).super.super.isa;
    [v19 setRightBarButtonItem:isa];
  }

  v21 = [v18 navigationItem];
  v28._object = 0x80000001007F4690;
  v28._countAndFlagsBits = 0xD000000000000019;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_1007622EC(v28, v29);
  v22 = sub_10076FF6C();

  [v21 setTitle:v22];

  return v18;
}

uint64_t sub_10067AB8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_10094F4C0, &qword_100798310);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10067ABFC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10067AC3C()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_pageFacets;
  v2 = sub_10075F8EC();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_selectedFacetOptions;
  *(v0 + v3) = sub_1000FDF0C(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_diffableDataSource) = 0;
  v4 = v0 + OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_preselectionContentOffset;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  sub_10077156C();
  __break(1u);
}

void sub_10067AD3C(uint64_t a1, __n128 a2)
{
  v3 = sub_10075F7DC();
  v32 = *(v3 - 8);
  __chkstk_darwin(v3);
  v31 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v31 - v6;
  v8 = sub_10075F8DC();
  v33 = *(v8 - 8);
  v34 = v8;
  __chkstk_darwin(v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&qword_100963008, &qword_1007B24F8);
  __chkstk_darwin(v11 - 8);
  v13 = &v31 - v12;
  v14 = type metadata accessor for PageFacetsViewController.Item(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v31 - v19;
  v21 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_diffableDataSource);
  if (v21)
  {
    v22 = v21;
    sub_10076E74C();

    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_10000CFBC(v13, &qword_100963008, &qword_1007B24F8);
    }

    else
    {
      sub_10067B18C(v13, v20);
      sub_100679D40(v20, v17);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v24 = v33;
      v25 = (v33 + 8);
      if (EnumCaseMultiPayload == 1)
      {
        sub_10067A7A8(v20);
        v26 = *(sub_10000A5D4(&qword_100962FF8, &qword_1007B24E0) + 48);
        v27 = sub_10075F8BC();
        (*(*(v27 - 8) + 8))(&v17[v26], v27);
        (*v25)(v17, v34);
      }

      else
      {
        (*(v33 + 32))(v10, v17, v34);
        sub_10075F7EC();
        v29 = v31;
        v28 = v32;
        (*(v32 + 104))(v31, enum case for PageFacets.Facet.DisplayType.toggle(_:), v3);
        sub_100679DA4(&qword_100963010, &type metadata accessor for PageFacets.Facet.DisplayType, &protocol conformance descriptor for PageFacets.Facet.DisplayType);
        sub_10076FF1C();
        v30 = *(v28 + 8);
        v30(v29, v3);
        v30(v7, v3);
        (*(v24 + 8))(v10, v34);
        sub_10067A7A8(v20);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10067B18C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageFacetsViewController.Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10067B1F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10075E11C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

double sub_10067B2B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10067B2D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_10094F4C0, &qword_100798310);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10067B344()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10067B384()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10067B3C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100963040, &qword_1007B2538);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10067B43C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_10094F4C0, &qword_100798310);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10067B4D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_10000A5D4(&qword_100963068, &qword_1007B2560) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_1006771DC(a1, a2, a3, v8);
}

uint64_t sub_10067B578(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10000A5D4(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_10067B5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10000A5D4(&qword_100963060, &qword_1007B2558);
  sub_100016F40(0, &qword_10094D1D0, UICollectionViewCell_ptr);
  return sub_1007705BC();
}

uint64_t sub_10067B698()
{
  v1 = sub_10075F8DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10067B75C(uint64_t a1)
{
  v3 = *(sub_10075F8DC() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_100677310(a1, v4, v5);
}

unint64_t sub_10067B804(uint64_t a1)
{
  v1 = sub_10076280C();
  if (v1 >> 62)
  {
    v4 = sub_10077158C();

    if (v4)
    {
      return 1;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v2)
    {
      return 1;
    }
  }

  result = sub_10076288C();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_14:

    return 0;
  }

  v7 = result;
  v8 = sub_10077158C();
  result = v7;
  if (!v8)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_10077149C();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v5 = sub_10076C41C();

  if (v5 >> 62)
  {
    v6 = sub_10077158C();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v6 != 0;
}

uint64_t sub_10067B958(char a1)
{
  v2 = v1;
  v4 = sub_10000A5D4(&qword_100952188, &qword_10079B0E0);
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v5 - 8);
  v6 = sub_10076B96C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1007673CC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v37 - v12;
  if ((a1 & 1) != 0 && (sub_10076285C(), v14 = *(v8 + 104), v39 = enum case for ScreenshotsDisplayStyle.noScreenshots(_:), v40 = v8 + 104, v38 = v14, v15.n128_f64[0] = v14(v10), sub_10067BDE8(v15), v16 = sub_10076FF1C(), v17 = *(v8 + 8), v17(v10, v7), v17(v13, v7), (v16 & 1) == 0))
  {
    sub_10076BB7C();
    sub_10076BBCC();
    v37[25] = v18;
    v37[24] = sub_10076BB5C();
    v19 = sub_10076BBAC();
    v37[22] = v20;
    v37[23] = v19;
    v21 = sub_10076BB6C();
    v37[20] = v22;
    v37[21] = v21;
    v23 = sub_10076BBEC();
    v37[18] = v24;
    v37[19] = v23;
    v25 = sub_10076BA9C();
    v37[16] = v26;
    v37[17] = v25;
    v27 = sub_10076BAAC();
    v37[14] = v28;
    v37[15] = v27;
    v29 = sub_10076BB1C();
    v37[12] = v30;
    v37[13] = v29;
    v31 = sub_10076BB4C();
    v37[10] = v32;
    v37[11] = v31;
    v33 = sub_10076BBBC();
    v37[8] = v34;
    v37[9] = v33;
    v37[7] = sub_10076BB8C();
    v37[6] = sub_10076BA1C();
    v37[5] = v35;
    v37[4] = sub_10076BA2C();
    v37[3] = sub_10076BB3C();
    v37[2] = sub_10076B9FC();
    v37[1] = sub_10076BA6C();
    sub_10076BACC();
    sub_1007627EC();
    sub_10076288C();
    sub_10076280C();
    v38(v13, v39, v7);
    sub_10076286C();
    sub_1007627DC();
    sub_10076289C();
    swift_allocObject();
    return sub_10076287C();
  }

  else
  {
  }

  return v2;
}

unint64_t sub_10067BDE8(__n128 a1)
{
  result = qword_10094FC90;
  if (!qword_10094FC90)
  {
    sub_1007673CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094FC90);
  }

  return result;
}

char *sub_10067BE40(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsCell_productReviewActionsView;
  type metadata accessor for ProductReviewActionsView(0);
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsCell_separatorView;
  type metadata accessor for SeparatorView(0);
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20.receiver = v4;
  v20.super_class = type metadata accessor for ProductReviewActionsCell();
  v11 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v12 = [v11 contentView];
  [v12 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v13 = OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsCell_separatorView;
  v14 = *&v11[OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsCell_separatorView];
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v15 = v14;
  v16 = sub_100770CDC();
  [v15 setBackgroundColor:v16];

  [*&v11[v13] setHidden:1];
  v17 = [v11 contentView];
  [v17 addSubview:*&v11[v13]];

  v18 = [v11 contentView];
  [v18 addSubview:*&v11[OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsCell_productReviewActionsView]];

  return v11;
}

id sub_10067C0F4()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for ProductReviewActionsCell();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v2 = [v0 contentView];
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  sub_10076422C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [*&v1[OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsCell_productReviewActionsView] setFrame:{v4, v6, v8, v10}];
  v14.origin.x = v4;
  v14.origin.y = v6;
  v14.size.width = v8;
  v14.size.height = v10;
  CGRectGetMinX(v14);
  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  CGRectGetMinY(v15);
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  CGRectGetWidth(v16);
  if (qword_100940940 != -1)
  {
    swift_once();
  }

  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsCell_separatorView];
  sub_100770A4C();
  return [v11 setFrame:?];
}

id sub_10067C2EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductReviewActionsCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10067C4CC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = sub_10077164C();
  v11 = *(v10 - 8);
  v112 = v10;
  v113 = v11;
  __chkstk_darwin(v10);
  v13 = v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076048C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for StarRatingControl();
  v114.receiver = v4;
  v114.super_class = v18;
  objc_msgSendSuper2(&v114, "drawRect:", a1, a2, a3, a4);
  v19 = UIGraphicsGetCurrentContext();
  v20 = [v4 tintColor];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 CGColor];

    if (v19)
    {
      CGContextSetFillColorWithColor(v19, v22);
    }

    v104 = v13;
    v105 = v22;
    v106 = v19;
    [v5 bounds];
    CGRectGetMidY(v120);
    v24 = [v5 traitCollection];
    v109 = v5;
    if (qword_100941480 != -1)
    {
      swift_once();
    }

    v115.is_nil = qword_1009630B0;
    v103 = qword_1009630B0;
    v115.value._rawValue = 0;
    isa = sub_1007706DC(v115, v23).super.isa;
    v102[1] = sub_100016F40(0, &qword_1009560B0, UIImageSymbolConfiguration_ptr);
    v111 = UIFontTextStyleTitle2;
    v26 = sub_10077098C();
    v27 = enum case for SystemImage.starFill(_:);
    v28 = *(v15 + 104);
    v108 = v15 + 104;
    v28(v17, enum case for SystemImage.starFill(_:), v14);
    v29 = [v26 configurationWithTraitCollection:{isa, v28}];
    v30 = v14;
    v107 = v14;
    v31 = v29;
    v32 = sub_10076046C();

    v110 = *(v15 + 8);
    v110(v17, v30);
    v33 = [v32 imageWithRenderingMode:2];

    [v33 size];
    v34 = [v109 traitCollection];
    v116.value._rawValue = 0;
    LOBYTE(v33) = v103;
    v116.is_nil = v103;
    v35 = sub_1007706DC(v116, v118).super.isa;
    v36 = sub_10077098C();
    v37 = v27;
    v38 = v107;
    v28(v17, v37, v107);
    v39 = [v36 configurationWithTraitCollection:v35];
    v40 = sub_10076046C();

    v110(v17, v38);
    v41 = [v40 imageWithRenderingMode:2];

    v42 = [v109 traitCollection];
    v117.value._rawValue = 0;
    v117.is_nil = v33;
    v43 = sub_1007706DC(v117, v119).super.isa;
    v44 = sub_10077098C();
    v45 = v107;
    (v102[0])(v17, enum case for SystemImage.star(_:), v107);
    v46 = [v44 configurationWithTraitCollection:v43];
    v47 = sub_10076046C();

    v110(v17, v45);
    v110 = [v47 imageWithRenderingMode:2];

    v111 = v41;
    v48 = v41;
    v49 = v109;
    [(NSString *)v48 size];
    v51 = v50;
    v52 = [v49 traitCollection];
    LOBYTE(v42) = sub_10077070C();

    if (v42)
    {
      v121.origin.x = a1;
      v121.origin.y = a2;
      v121.size.width = a3;
      v121.size.height = a4;
      v53.n128_f64[0] = CGRectGetMaxX(v121);
    }

    else
    {
      v53.n128_f64[0] = v51 + 12.0;
      v54.n128_u64[0] = 0;
    }

    v55 = v104;
    v56 = enum case for FloatingPointRoundingRule.down(_:);
    v57 = v112;
    v58 = v113;
    v59 = *(v113 + 104);
    (v59)(v104, enum case for FloatingPointRoundingRule.down(_:), v112, v53, v54);
    sub_100770CAC();
    v61 = v60;
    v63 = v62;
    v64 = *(v58 + 8);
    v113 = v58 + 8;
    v64(v55, v57);
    v65 = OBJC_IVAR____TtC20ProductPageExtension17StarRatingControl_rating;
    if (*&v49[OBJC_IVAR____TtC20ProductPageExtension17StarRatingControl_rating])
    {
      v66 = v111;
    }

    else
    {
      v66 = v110;
    }

    [(NSString *)v66 drawAtPoint:v61, v63];
    v67 = [v49 traitCollection];
    v68 = sub_10077070C();

    if (v68)
    {
      v122.origin.x = a1;
      v122.origin.y = a2;
      v122.size.width = a3;
      v122.size.height = a4;
      CGRectGetMaxX(v122);
    }

    v69 = v112;
    v59(v55, v56, v112);
    sub_100770CAC();
    v71 = v70;
    v73 = v72;
    v64(v55, v69);
    if (*&v49[v65] <= 1uLL)
    {
      v74 = v110;
    }

    else
    {
      v74 = v111;
    }

    [(NSString *)v74 drawAtPoint:v71, v73];
    v75 = [v49 traitCollection];
    v76 = sub_10077070C();

    if (v76)
    {
      v123.origin.x = a1;
      v123.origin.y = a2;
      v123.size.width = a3;
      v123.size.height = a4;
      CGRectGetMaxX(v123);
    }

    v77 = v112;
    v59(v55, v56, v112);
    sub_100770CAC();
    v79 = v78;
    v81 = v80;
    v64(v55, v77);
    if (*&v49[v65] <= 2uLL)
    {
      v82 = v110;
    }

    else
    {
      v82 = v111;
    }

    [(NSString *)v82 drawAtPoint:v79, v81];
    v83 = [v49 traitCollection];
    v84 = sub_10077070C();

    if (v84)
    {
      v124.origin.x = a1;
      v124.origin.y = a2;
      v124.size.width = a3;
      v124.size.height = a4;
      CGRectGetMaxX(v124);
    }

    v85 = v112;
    v59(v55, v56, v112);
    sub_100770CAC();
    v87 = v86;
    v89 = v88;
    v64(v55, v85);
    if (*&v49[v65] <= 3uLL)
    {
      v90 = v110;
    }

    else
    {
      v90 = v111;
    }

    [(NSString *)v90 drawAtPoint:v87, v89];
    v91 = [v49 traitCollection];
    v92 = sub_10077070C();

    if (v92)
    {
      v125.origin.x = a1;
      v125.origin.y = a2;
      v125.size.width = a3;
      v125.size.height = a4;
      CGRectGetMaxX(v125);
    }

    v93 = v112;
    v59(v55, v56, v112);
    sub_100770CAC();
    v95 = v94;
    v97 = v96;
    v64(v55, v93);
    v98 = *&v49[v65];
    v100 = v110;
    v99 = v111;
    if (v98 <= 4)
    {
      v101 = v110;
    }

    else
    {
      v101 = v111;
    }

    [(NSString *)v101 drawAtPoint:v95, v97];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10067CF44(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  [v4 locationInView:v5];
  sub_10067D0D0(v6);
  v7 = *&v5[OBJC_IVAR____TtC20ProductPageExtension17StarRatingControl_rating];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension17StarRatingControl_rating] = v8;
  if (v7 != v8)
  {
    [v5 setNeedsDisplay];
  }

  return 1;
}

void sub_10067D0D0(double a1)
{
  v2 = v1;
  v4 = sub_10076048C();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v1 traitCollection];
  if (qword_100941480 != -1)
  {
    swift_once();
  }

  v26.is_nil = qword_1009630B0;
  v26.value._rawValue = 0;
  isa = sub_1007706DC(v26, v9).super.isa;
  sub_100016F40(0, &qword_1009560B0, UIImageSymbolConfiguration_ptr);
  v12 = sub_10077098C();
  (*(v5 + 104))(v8, enum case for SystemImage.starFill(_:), v4);
  v13 = [v12 configurationWithTraitCollection:isa];
  v14 = sub_10076046C();

  (*(v5 + 8))(v8, v4);
  v15 = [v14 imageWithRenderingMode:2];

  [v15 size];
  v17 = v16;

  v18 = (v17 + 12.0) * 5.0;
  v19 = [v2 traitCollection];
  LOBYTE(v15) = sub_10077070C();

  [v2 bounds];
  MidX = CGRectGetMidX(v27);
  v21 = a1 - (MidX - v18 * 0.5);
  v22 = v18 * 0.5 + MidX - a1;
  if ((v15 & 1) == 0)
  {
    v22 = v21;
  }

  v23 = v22 / (v18 / 5.0);
  if (v23 > 5.0)
  {
    v23 = 5.0;
  }

  if (v23 <= 1.0)
  {
    v23 = 1.0;
  }

  v24 = ceil(v23);
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v24 <= -1.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v24 >= 1.84467441e19)
  {
LABEL_15:
    __break(1u);
  }
}

void sub_10067D634(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a3)
  {
    sub_10076FF9C();
    v6 = a1;
    v7 = sub_10076FF6C();
  }

  else
  {
    v8 = a1;
    v7 = 0;
  }

  v9.receiver = a1;
  v9.super_class = type metadata accessor for StarRatingControl();
  objc_msgSendSuper2(&v9, *a4, v7);
}

void *sub_10067D744()
{
  v1 = v0;
  v2 = 0;
  v3 = _swiftEmptyArrayStorage;
  v21 = _swiftEmptyArrayStorage;
  do
  {
    if (v2 >= 5)
    {
      v4 = &selRef_accessibilitySetStarRatingFive;
      if (v2 != 5)
      {
        v22._object = 0x80000001007F4930;
        v22._countAndFlagsBits = 0xD00000000000001ALL;
        v24._countAndFlagsBits = 0;
        v24._object = 0xE000000000000000;
        sub_100767D6C(v22, v2, v24);
LABEL_2:

        goto LABEL_3;
      }
    }

    else
    {
      v4 = off_10089EDC0[v2];
    }

    v5 = *v4;
    v23._object = 0x80000001007F4930;
    v23._countAndFlagsBits = 0xD00000000000001ALL;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    sub_100767D6C(v23, v2, v25);
    if (!v5)
    {
      goto LABEL_2;
    }

    v20 = type metadata accessor for StarRatingControl();
    v19[0] = v1;
    v6 = v1;
    v7 = sub_10076FF6C();

    v8 = v20;
    if (v20)
    {
      v9 = sub_10000CF78(v19, v20);
      v10 = *(v8 - 8);
      v11 = __chkstk_darwin(v9);
      v13 = &v19[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v13, v11);
      v14 = sub_10077165C();
      (*(v10 + 8))(v13, v8);
      sub_10000CD74(v19);
    }

    else
    {
      v14 = 0;
    }

    v15 = [objc_allocWithZone(UIAccessibilityCustomAction) initWithName:v7 target:v14 selector:v5];

    swift_unknownObjectRelease();
    v16 = v15;
    sub_10077019C();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();

    v3 = v21;
LABEL_3:
    ++v2;
  }

  while (v2 != 6);
  return v3;
}

uint64_t sub_10067DA78(uint64_t a1)
{
  v3 = sub_10076F08C();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076F0CC();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076F0EC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v33 - v14;
  v16 = OBJC_IVAR____TtC20ProductPageExtension17StarRatingControl_rating;
  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17StarRatingControl_rating];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension17StarRatingControl_rating] = a1;
  if (v17 != a1)
  {
    [v1 setNeedsDisplay];
    a1 = *&v1[v16];
  }

  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17StarRatingControl_lastSentRating];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension17StarRatingControl_lastSentRating] = a1;
  if (v18 != a1)
  {
    [v1 sendActionsForControlEvents:4096];
  }

  v45._object = 0x80000001007F48C0;
  v45._countAndFlagsBits = 0xD000000000000017;
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  v19 = sub_1007622EC(v45, v48);
  v21 = v20;
  v46._countAndFlagsBits = 0xD00000000000001DLL;
  v46._object = 0x80000001007F48E0;
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  v22 = sub_1007622EC(v46, v49);
  v24 = v23;
  aBlock = v19;
  v40 = v21;

  v47._countAndFlagsBits = v22;
  v47._object = v24;
  sub_1007700CC(v47);

  v26 = aBlock;
  v25 = v40;
  sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
  v27 = sub_10077068C();
  sub_10076F0DC();
  sub_10076F15C();
  v33 = *(v9 + 8);
  v33(v11, v8);
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v28 + 24) = v25;
  v43 = sub_10067E1DC;
  v44 = v28;
  aBlock = _NSConcreteStackBlock;
  v40 = 1107296256;
  v41 = sub_10009AEDC;
  v42 = &unk_10089ED98;
  v29 = _Block_copy(&aBlock);

  sub_10076F0AC();
  aBlock = _swiftEmptyArrayStorage;
  sub_1000717C8();
  sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
  sub_1000852B8();
  v30 = v34;
  v31 = v38;
  sub_1007712CC();
  sub_10077064C();
  _Block_release(v29);

  (*(v37 + 8))(v30, v31);
  (*(v35 + 8))(v7, v36);
  return (v33)(v15, v8);
}

void sub_10067DEE0(uint64_t a1, uint64_t a2)
{
  v2 = UIAccessibilityAnnouncementNotification;
  v3 = sub_10076FF6C();
  UIAccessibilityPostNotification(v2, v3);
}

id sub_10067E148(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for StarRatingControl();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10067E1A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_10067E1E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_10067E1FC(char a1)
{
  v2 = sub_10076048C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100941480 != -1)
  {
    swift_once();
  }

  v15.is_nil = qword_1009630B0;
  v15.value._rawValue = 0;
  v7.super.isa = sub_1007706DC(v15, v4).super.isa;
  sub_100016F40(0, &qword_1009560B0, UIImageSymbolConfiguration_ptr);
  v8 = sub_10077098C();
  v9 = &enum case for SystemImage.starFill(_:);
  if ((a1 & 1) == 0)
  {
    v9 = &enum case for SystemImage.star(_:);
  }

  (*(v3 + 104))(v6, *v9, v2);
  v10 = [v8 configurationWithTraitCollection:v7.super.isa];
  v11 = sub_10076046C();

  (*(v3 + 8))(v6, v2);
  v12 = [v11 imageWithRenderingMode:2];

  return v12;
}

void sub_10067E3EC(void *a1)
{
  if (a1)
  {
    [a1 locationInView:v1];
    sub_10067D0D0(v2);
    v4 = OBJC_IVAR____TtC20ProductPageExtension17StarRatingControl_rating;
    v5 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17StarRatingControl_rating];
    *&v1[OBJC_IVAR____TtC20ProductPageExtension17StarRatingControl_rating] = v3;
    if (v5 != v3)
    {
      [v1 setNeedsDisplay];
      v3 = *&v1[v4];
    }

    v6 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17StarRatingControl_lastSentRating];
    *&v1[OBJC_IVAR____TtC20ProductPageExtension17StarRatingControl_lastSentRating] = v3;
    if (v6 != v3)
    {

      [v1 sendActionsForControlEvents:4096];
    }
  }
}

char *sub_10067E4A0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCollectionViewCell_itemLayoutContext;
  v11 = sub_10076341C();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCollectionViewCell_cardView;
  type metadata accessor for ArcadeDownloadPackGamesCardView(0);
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCollectionViewCell_impressionsCalculator] = 0;
  v13 = &v4[OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCollectionViewCell_impressionsUpdateBlock];
  *v13 = 0;
  *(v13 + 1) = 0;
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v19 = [v18 contentView];
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v20 = [v18 contentView];
  [v20 addSubview:*&v18[OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCollectionViewCell_cardView]];

  return v18;
}

void sub_10067E734(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v2 - 8);
  v62 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v51 - v5;
  v7 = sub_10076F7FC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v63 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v11 = Strong;
  swift_beginAccess();
  v12 = swift_weakLoadStrong();
  if (!v12)
  {

    return;
  }

  v13 = v12;
  v14 = [v11 superview];
  if (!v14)
  {

LABEL_21:

    return;
  }

  v15 = v14;
  v16 = OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCollectionViewCell_cardView;
  v17 = *&v11[OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCollectionViewCell_cardView];

  v18 = v15;
  v19 = v17;
  sub_10054D6D8(v19, v13, v18);

  v20 = [objc_opt_self() standardUserDefaults];
  LOBYTE(v17) = sub_10072F66C(v21);

  if ((v17 & 1) == 0)
  {

    goto LABEL_21;
  }

  v22 = [v11 viewWithTag:58236912];
  [v22 removeFromSuperview];

  v23 = *&v11[v16];
  v24 = qword_10095D030;
  swift_beginAccess();
  v61 = v23;
  v25 = *&v23[v24];
  v55 = v11;
  v54 = v13;
  v53 = v18;
  if (v25 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
  {
    v27 = qword_10095D018;
    v28 = v61;
    v52 = v61;

    v67 = v27;
    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v29 = 0;
    v65 = v25 & 0xFFFFFFFFFFFFFF8;
    v66 = v25 & 0xC000000000000001;
    v64 = (v8 + 48);
    v60 = (v8 + 32);
    v59 = (v8 + 16);
    v58 = (v8 + 56);
    v57 = (v8 + 8);
    v30 = 32;
    v56 = v6;
    while (1)
    {
      if (v66)
      {
        v8 = sub_10077149C();
      }

      else
      {
        if (v29 >= *(v65 + 16))
        {
          goto LABEL_25;
        }

        v8 = *(v25 + 8 * v29 + 32);
      }

      v31 = *&v28[v67];
      if (v29 >= *(v31 + 16))
      {
        break;
      }

      v32 = *(v31 + v30);
      sub_10076BACC();
      if ((*v64)(v6, 1, v7) == 1)
      {

        sub_10000CFBC(v6, &qword_1009492E0, &qword_1007893A0);
      }

      else
      {
        v33 = v63;
        (*v60)(v63, v6, v7);
        v34 = v32;
        [v34 bounds];
        v36 = v35;
        v38 = v37;
        v40 = v39;
        v42 = v41;
        v43 = [objc_opt_self() blueColor];
        v44 = objc_allocWithZone(type metadata accessor for ImpressionMetricsDebugOverlay());
        v45 = sub_100116430(v43, v36, v38, v40, v42);
        v46 = i;
        v47 = v25;
        v48 = v62;
        (*v59)(v62, v33, v7);
        (*v58)(v48, 0, 1, v7);
        sub_100116730(v48);
        sub_10000CFBC(v48, &qword_1009492E0, &qword_1007893A0);
        v49 = [v34 viewWithTag:58236912];
        [v49 removeFromSuperview];

        v25 = v47;
        i = v46;
        v6 = v56;
        [v34 addSubview:v45];

        v50 = v33;
        v28 = v61;
        (*v57)(v50, v7);
      }

      ++v29;

      v30 += 16;
      if (i == v29)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_22:
}

uint64_t type metadata accessor for ArcadeDownloadPackCollectionViewCell(uint64_t a1)
{
  result = qword_100963128;
  if (!qword_100963128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10067EE40(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_10067EEF0()
{
  swift_beginAccess();

  return result;
}

double sub_10067EF38(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_10067EFF0()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1, v1[1]);
  return v2;
}

double sub_10067F04C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6, v7);
}

void (*sub_10067F10C())()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  return sub_10067F25C;
}

uint64_t sub_10067F1AC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10067F1E4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10067F21C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10067F264()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCollectionViewCell_itemLayoutContext;
  v2 = sub_10076341C();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCollectionViewCell_cardView;
  type metadata accessor for ArcadeDownloadPackGamesCardView(0);
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCollectionViewCell_impressionsCalculator) = 0;
  v4 = (v0 + OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCollectionViewCell_impressionsUpdateBlock);
  *v4 = 0;
  v4[1] = 0;
  sub_10077156C();
  __break(1u);
}

void sub_10067F350(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_100689B40, v8);
}

uint64_t sub_10067F424()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_100963140);
  sub_10000A61C(v4, qword_100963140);
  *v3 = UIFontTextStyleBody;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_10000DB7C(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleBody;
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10067F590()
{
  v0 = sub_10076FD2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076FD4C();
  sub_10000DB18(v4, qword_100963158);
  sub_10000A61C(v4, qword_100963158);
  if (qword_1009412D0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_1009A25B8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_10076FD3C();
}

char *sub_10067F6E4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_diffableDataSource) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_allowBatchUpdates) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_flowPreviewing) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_isPresentingForgotSignInDetails) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_pendingRefresh) = 0;
  v5 = OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_compoundScrollObserver;
  v6 = objc_allocWithZone(sub_1007666AC());
  *(v2 + v5) = sub_10076669C();
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_authenticating) = 0;
  v7 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_activityIndicator) = v7;
  v8 = [objc_allocWithZone(UIRefreshControl) init];
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_refreshControl) = v8;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_presenter) = a1;
  sub_10076615C();

  sub_10076F63C();
  sub_10076813C();
  swift_allocObject();
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_impressionsCoordinator) = sub_10076814C();
  v9 = [objc_allocWithZone(UICollectionViewLayout) init];

  v10 = sub_10007689C(v9, a2);

  v34[3] = sub_10076252C();
  v34[4] = &protocol witness table for BasePresenter;
  v34[0] = a1;
  v11 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  v12 = v10;
  sub_1004924A0(v34, v10 + v11);
  swift_endAccess();
  v12[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_prefersLargeTitle] = 0;
  v13 = &selRef_initWithTabBarSystemItem_tag_;
  v14 = [v12 navigationItem];
  [v14 setLargeTitleDisplayMode:2];

  sub_100689970(&qword_100963208, v15, type metadata accessor for AccountViewController, &unk_1007B2768);
  v16 = v12;
  sub_1007624AC();
  v17 = [v16 navigationItem];
  sub_1007624BC();
  if (v18)
  {
    v19 = sub_10076FF6C();
    v13 = &selRef_initWithTabBarSystemItem_tag_;
  }

  else
  {
    v19 = 0;
  }

  [v17 setTitle:v19];

  v20 = [v16 v13[159]];
  v21 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:*&v16[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_activityIndicator]];
  [v20 setLeftBarButtonItem:v21];

  v22 = [v16 v13[159]];
  v23 = [v22 leftBarButtonItem];

  if (v23)
  {
    v24 = OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_authenticating;
    swift_beginAccess();
    [v23 setHidden:(v16[v24] & 1) == 0];
  }

  v25 = *&v16[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_refreshControl];
  v26 = v16;
  [v25 addTarget:v26 action:"refreshControlValueChanged" forControlEvents:4096];
  v27 = sub_100689970(&qword_100963210, 255, &type metadata accessor for AccountPresenter, &protocol conformance descriptor for AccountPresenter);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = a1;
  v29[4] = v27;

  v30 = sub_1006885AC(a1, v26, sub_1002C15B8, v29, a2);

  v31 = *&v26[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_flowPreviewing];
  *&v26[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_flowPreviewing] = v30;

  v32 = *&v26[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_compoundScrollObserver];

  sub_10076668C();

  return v26;
}

void sub_10067FC3C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v38 = sub_10000A5D4(&qword_1009632C8, &qword_1007B28E8);
  v2 = *(v38 - 8);
  __chkstk_darwin(v38);
  v4 = &ObjectType - v3;
  v5 = type metadata accessor for AccountViewController();
  v43.receiver = v0;
  v43.super_class = v5;
  objc_msgSendSuper2(&v43, "viewDidLoad");
  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = v6;
  v8 = objc_opt_self();
  v9 = [v8 systemBackgroundColor];
  [v7 setBackgroundColor:v9];

  v10 = [v1 collectionView];
  if (!v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = v10;
  v12 = [v8 systemBackgroundColor];
  [v11 setBackgroundColor:v12];

  v13 = [v1 collectionView];
  if (!v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = v13;
  [v13 setAlwaysBounceVertical:1];

  v15 = [v1 collectionView];
  if (!v15)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = v15;
  [v15 setRefreshControl:*&v1[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_refreshControl]];

  v17 = [v1 collectionView];
  if (!v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18 = v17;
  [v17 setDelegate:v1];

  v19 = sub_100680F18();
  v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_diffableDataSource];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_diffableDataSource] = v19;

  v21 = [v1 collectionView];
  if (!v21)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v22 = v21;
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v25 = ObjectType;
  *(v24 + 16) = v23;
  *(v24 + 24) = v25;
  v26 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v41 = sub_1006899F0;
  v42 = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002BAFEC;
  v40 = &unk_10089F298;
  v27 = _Block_copy(aBlock);

  v28 = [v26 initWithSectionProvider:v27];
  _Block_release(v27);

  [v22 setCollectionViewLayout:v28];

  sub_10076242C();
  v29 = sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
  v30 = sub_10077068C();
  v40 = v29;
  v41 = &protocol witness table for OS_dispatch_queue;
  aBlock[0] = v30;
  sub_10000A5D4(&qword_1009632D0, qword_1007B28F0);
  sub_1006899F8();
  sub_10076F46C();

  (*(v2 + 8))(v4, v38);
  sub_10000CD74(aBlock);
  sub_100760C9C();
  v31 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_flowPreviewing];
  if (!v31)
  {
    return;
  }

  v32 = objc_allocWithZone(UIContextMenuInteraction);
  v33 = v31;
  v34 = [v32 initWithDelegate:v33];
  v35 = [v1 collectionView];
  if (!v35)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v36 = v35;
  [v35 addInteraction:v34];
}

void *sub_1006803BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v47 = a1;
  v3 = sub_10076E82C();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v44 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076E83C();
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&qword_100963278, &qword_1007B2820);
  __chkstk_darwin(v7 - 8);
  v9 = &v40 - v8;
  v10 = sub_10000A5D4(&qword_100963280, &qword_1007B2828);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40 - v12;
  v14 = sub_10076E81C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_10076E87C();
  v18 = *(v48 - 8);
  v19 = __chkstk_darwin(v48);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v17, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v14, v19);
  sub_10076E84C();
  v22 = sub_10076E80C();
  sub_10076E63C();
  v22(v52, 0);
  v23 = sub_10076E80C();
  sub_10076E64C();
  v23(v52, 0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v25 = Strong, v26 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_diffableDataSource), v27 = v26, v25, !v26))
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    goto LABEL_10;
  }

  sub_1007699BC();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
LABEL_10:
    sub_10000CFBC(v9, &qword_100963278, &qword_1007B2820);
    goto LABEL_11;
  }

  (*(v11 + 32))(v13, v9, v10);
  swift_getKeyPath();
  sub_10076F49C();

  v28 = v51;
  if (!v51)
  {
    goto LABEL_12;
  }

  v29 = v50;

  v30 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v30 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (v30)
  {
    v31 = &enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:);
  }

  else
  {
LABEL_12:
    v31 = &enum case for UICollectionLayoutListConfiguration.HeaderMode.none(_:);
  }

  (*(v42 + 104))(v41, *v31, v43);
  sub_10076E86C();
  swift_getKeyPath();
  sub_10076F49C();

  v36 = v51;
  if (!v51)
  {
    goto LABEL_18;
  }

  v37 = v50;

  v38 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v38 = v37 & 0xFFFFFFFFFFFFLL;
  }

  if (v38)
  {
    v39 = &enum case for UICollectionLayoutListConfiguration.FooterMode.supplementary(_:);
  }

  else
  {
LABEL_18:
    v39 = &enum case for UICollectionLayoutListConfiguration.FooterMode.none(_:);
  }

  (*(v45 + 104))(v44, *v39, v46);
  sub_10076E85C();

  sub_10076E7FC();
  (*(v11 + 8))(v13, v10);
LABEL_11:
  sub_100016F40(0, &unk_1009632E0, NSCollectionLayoutSection_ptr);
  v32 = sub_10077097C();
  [v32 contentInsets];
  v34 = v33;
  [v32 contentInsets];
  [v32 setContentInsets:{v34, 16.0}];
  (*(v18 + 8))(v21, v48);
  return v32;
}

id sub_100680A1C(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000A5D4(&qword_100950548, &unk_1007AAAE0);
  __chkstk_darwin(v2 - 8);
  v4 = &aBlock[-1] - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_diffableDataSource);
    v7 = Strong;
    v8 = v6;

    if (v6)
    {
      sub_10076999C();

      v9 = sub_10000A5D4(&unk_100946710, &unk_10079A020);
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(v4, 1, v9) == 1)
      {
        sub_10000CFBC(v4, &qword_100950548, &unk_1007AAAE0);
      }

      else
      {
        sub_10076F4AC();
        (*(v10 + 8))(v4, v9);
        sub_10000A5D4(&qword_1009575A0, &unk_100784980);
        sub_10076247C();
        if (swift_dynamicCast())
        {
          v11 = aBlock[9];
          swift_beginAccess();
          v12 = swift_unknownObjectWeakLoadStrong();
          if (v12)
          {
            v13 = v12;

            LOBYTE(v13) = sub_1007623EC();

            if (v13)
            {
              v27._object = 0x80000001007F4BF0;
              v27._countAndFlagsBits = 0xD000000000000015;
              v28._countAndFlagsBits = 0;
              v28._object = 0xE000000000000000;
              sub_1007622EC(v27, v28);
              v14 = swift_allocObject();
              swift_beginAccess();
              v15 = swift_unknownObjectWeakLoadStrong();
              swift_unknownObjectWeakInit();

              v16 = swift_allocObject();
              *(v16 + 16) = v14;
              *(v16 + 24) = v11;

              v17 = sub_10076FF6C();

              aBlock[4] = sub_100689B00;
              aBlock[5] = v16;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_10067F350;
              aBlock[3] = &unk_10089F310;
              v18 = _Block_copy(aBlock);
              v19 = [objc_opt_self() contextualActionWithStyle:1 title:v17 handler:v18];

              _Block_release(v18);

              sub_10000A5D4(&unk_100942870, &qword_100784460);
              v20 = swift_allocObject();
              *(v20 + 16) = xmmword_1007841E0;
              *(v20 + 32) = v19;
              sub_100016F40(0, &unk_1009632F0, UIContextualAction_ptr);
              v21 = v19;
              isa = sub_1007701AC().super.isa;

              v23 = [objc_opt_self() configurationWithActions:isa];

              [v23 setPerformsFirstActionWithFullSwipe:0];

              return v23;
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_100680E74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, __n128), uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;

    sub_10076251C();
  }

  return (a3)(0);
}

id sub_100680F18()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_10000A5D4(&qword_100963250, &qword_1007B2800);
  v84 = *(v2 - 8);
  v85 = v2;
  __chkstk_darwin(v2);
  v69 = v3;
  v70 = v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v87 = v64 - v5;
  v6 = sub_10000A5D4(&qword_100963258, &qword_1007B2808);
  v82 = *(v6 - 8);
  v83 = v6;
  __chkstk_darwin(v6);
  v67 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v7;
  __chkstk_darwin(v8);
  v86 = v64 - v9;
  v81 = sub_10000A5D4(&unk_100963260, &qword_1007B2810);
  v73 = *(v81 - 8);
  __chkstk_darwin(v81);
  v76 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v10;
  __chkstk_darwin(v11);
  v13 = v64 - v12;
  v80 = sub_10000A5D4(&qword_100963060, &qword_1007B2558);
  v72 = *(v80 - 8);
  __chkstk_darwin(v80);
  v75 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v68 = v64 - v16;
  __chkstk_darwin(v17);
  v19 = v64 - v18;
  v65 = v20;
  __chkstk_darwin(v21);
  v23 = v64 - v22;
  sub_10076FF9C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100016F40(0, &qword_10094D1D0, UICollectionViewCell_ptr);
  v77 = v23;
  sub_10077059C();
  sub_10076FF9C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v78 = v19;
  sub_10077059C();
  sub_10076FF9C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for AccountActionSectionFooterView();
  v79 = v13;
  sub_10077059C();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  v26 = ObjectType;
  *(v25 + 16) = v24;
  *(v25 + 24) = v26;
  type metadata accessor for AccountDetailCollectionViewCell(0);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  v27 = v86;
  sub_10077058C();
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = v26;
  type metadata accessor for UpdatesLockupCollectionViewCell(0);
  v30 = v87;
  sub_10077058C();
  result = [v1 collectionView];
  ObjectType = result;
  if (result)
  {
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = v82;
    v34 = *(v82 + 16);
    v35 = v67;
    v64[1] = v1;
    v36 = v83;
    v34(v67, v27);
    v37 = v84;
    v38 = v85;
    v39 = v70;
    (*(v84 + 16))(v70, v30, v85);
    v40 = v33;
    v41 = (*(v33 + 80) + 24) & ~*(v33 + 80);
    v42 = (v66 + *(v37 + 80) + v41) & ~*(v37 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = v32;
    (*(v40 + 32))(v43 + v41, v35, v36);
    (*(v37 + 32))(v43 + v42, v39, v38);
    v44 = objc_allocWithZone(sub_10000A5D4(&qword_100963270, &qword_1007B2818));
    ObjectType = sub_1007699EC();
    v70 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v45 = v72;
    v46 = *(v72 + 16);
    v47 = v68;
    v48 = v80;
    v46(v68, v77, v80);
    v49 = v73;
    (*(v73 + 16))(v76, v79, v81);
    v46(v75, v78, v48);
    v50 = *(v45 + 80);
    v51 = (v50 + 16) & ~v50;
    v52 = (v65 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = (*(v49 + 80) + v52 + 8) & ~*(v49 + 80);
    v54 = (v71 + v50 + v53) & ~v50;
    v55 = swift_allocObject();
    v56 = *(v45 + 32);
    v57 = v47;
    v58 = v80;
    v56(v55 + v51, v57, v80);
    *(v55 + v52) = v70;
    v59 = v55 + v53;
    v60 = v81;
    (*(v49 + 32))(v59, v76, v81);
    v61 = v58;
    v56(v55 + v54, v75, v58);
    v62 = ObjectType;

    sub_10076E73C();

    (*(v84 + 8))(v87, v85);
    (*(v82 + 8))(v86, v83);
    (*(v49 + 8))(v79, v60);
    v63 = *(v45 + 8);
    v63(v78, v61);
    v63(v77, v61);

    return v62;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100681840(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_10000A5D4(&qword_100963278, &qword_1007B2820);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  v12 = sub_10076E58C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    sub_10076E4EC();
    v18 = *&v17[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_diffableDataSource];
    v26 = a1;
    if (v18)
    {
      v19 = v18;
      sub_10075E0AC();
      sub_1007699BC();
    }

    else
    {
      v20 = sub_10000A5D4(&qword_100963280, &qword_1007B2828);
      (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
    }

    sub_100016E2C(v11, v8, &qword_100963278, &qword_1007B2820);
    v21 = sub_10000A5D4(&qword_100963280, &qword_1007B2828);
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v8, 1, v21) == 1)
    {
      sub_10000CFBC(v8, &qword_100963278, &qword_1007B2820);
    }

    else
    {
      swift_getKeyPath();
      sub_10076F49C();

      (*(v22 + 8))(v8, v21);
    }

    sub_10076E56C();
    v27[3] = v12;
    v27[4] = &protocol witness table for UIListContentConfiguration;
    v23 = sub_10000DB7C(v27);
    (*(v13 + 16))(v23, v15, v12);
    v24 = v26;
    sub_1007707FC();
    [v17 pageMarginInsets];
    [v24 setLayoutMargins:?];

    sub_10000CFBC(v11, &qword_100963278, &qword_1007B2820);
    return (*(v13 + 8))(v15, v12);
  }

  return result;
}

char *sub_100681BB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_10076E50C();
  v45 = *(v6 - 8);
  v46 = v6;
  __chkstk_darwin(v6);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_1009632A0, &qword_1007B28B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  v14 = sub_10000A5D4(&qword_100963278, &qword_1007B2820);
  __chkstk_darwin(v14 - 8);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v43 - v18;
  __chkstk_darwin(v20);
  v22 = &v43 - v21;
  v23 = sub_10076E58C();
  v50 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v27 = result;
    v48 = v23;
    sub_10076E4DC();
    v28 = *&v27[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_diffableDataSource];
    v49 = a1;
    v47 = v27;
    if (v28)
    {
      v29 = v28;
      sub_10075E0AC();
      sub_1007699BC();
    }

    else
    {
      v30 = sub_10000A5D4(&qword_100963280, &qword_1007B2828);
      (*(*(v30 - 8) + 56))(v22, 1, 1, v30);
    }

    sub_100016E2C(v22, v19, &qword_100963278, &qword_1007B2820);
    v31 = sub_10000A5D4(&qword_100963280, &qword_1007B2828);
    v32 = *(v31 - 8);
    v33 = *(v32 + 48);
    if (v33(v19, 1, v31) == 1)
    {
      sub_10000CFBC(v19, &qword_100963278, &qword_1007B2820);
      v34 = sub_1007624CC();
      (*(*(v34 - 8) + 56))(v13, 1, 1, v34);
      sub_10000CFBC(v13, &unk_1009632A0, &qword_1007B28B0);
    }

    else
    {
      v43 = v33;
      sub_10076F4AC();
      (*(v32 + 8))(v19, v31);
      sub_1007624FC();

      v35 = sub_1007624CC();
      v36 = *(v35 - 8);
      (*(v36 + 56))(v13, 0, 1, v35);
      sub_100688D54(v13, v10);
      if ((*(v36 + 88))(v10, v35) == enum case for AccountPresenter.Section.Identifier.userInfo(_:))
      {
        (*(v45 + 104))(v44, enum case for UIListContentConfiguration.TextProperties.TextAlignment.center(_:), v46);
        v37 = sub_10076E53C();
        sub_10076E52C();
        v37(v51, 0);
      }

      else
      {
        (*(v36 + 8))(v10, v35);
      }

      v33 = v43;
    }

    sub_100016E2C(v22, v16, &qword_100963278, &qword_1007B2820);
    if (v33(v16, 1, v31) == 1)
    {
      sub_10000CFBC(v16, &qword_100963278, &qword_1007B2820);
    }

    else
    {
      swift_getKeyPath();
      sub_10076F49C();

      (*(v32 + 8))(v16, v31);
    }

    v38 = v49;
    sub_10076E56C();
    v39 = v48;
    v51[3] = v48;
    v51[4] = &protocol witness table for UIListContentConfiguration;
    v40 = sub_10000DB7C(v51);
    v41 = v50;
    (*(v50 + 16))(v40, v25, v39);
    sub_1007707FC();
    v42 = v47;
    [v47 pageMarginInsets];
    [v38 setLayoutMargins:?];

    sub_10000CFBC(v22, &qword_100963278, &qword_1007B2820);
    return (*(v41 + 8))(v25, v39);
  }

  return result;
}

char *sub_100682244(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_10000A5D4(&qword_100963278, &qword_1007B2820);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v17 = *&result[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_diffableDataSource];
    if (v17)
    {
      v18 = v17;
      sub_10075E0AC();
      sub_1007699BC();
    }

    else
    {
      v19 = sub_10000A5D4(&qword_100963280, &qword_1007B2828);
      (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
    }

    sub_100016E2C(v14, v11, &qword_100963278, &qword_1007B2820);
    v20 = sub_10000A5D4(&qword_100963280, &qword_1007B2828);
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);
    if (v22(v11, 1, v20) == 1)
    {
      sub_10000CFBC(v11, &qword_100963278, &qword_1007B2820);
      v23 = 0uLL;
    }

    else
    {
      swift_getKeyPath();
      v32 = v8;
      sub_10076F49C();
      v8 = v32;

      v31 = v33;
      (*(v21 + 8))(v11, v20);
      v23 = v31;
    }

    *&a1[OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_text] = v23;

    sub_100700518();
    sub_100016E2C(v14, v8, &qword_100963278, &qword_1007B2820);
    if (v22(v8, 1, v20) == 1)
    {
      sub_10000CFBC(v8, &qword_100963278, &qword_1007B2820);
      v24 = 0;
      v25 = 0;
    }

    else
    {
      swift_getKeyPath();
      sub_10076F49C();

      v26 = v33;
      if (v33)
      {
        v27 = *(&v33 + 1);
        v25 = swift_allocObject();
        *(v25 + 16) = v26;
        *(v25 + 24) = v27;
        v24 = sub_100098284;
      }

      else
      {
        v24 = 0;
        v25 = 0;
      }

      (*(v21 + 8))(v8, v20);
    }

    v28 = &a1[OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_buttonAction];
    v29 = *&a1[OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_buttonAction];
    v30 = *&a1[OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_buttonAction + 8];
    *v28 = v24;
    *(v28 + 1) = v25;
    [v16 pageMarginInsets];
    [a1 setLayoutMargins:?];
    a1[OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_isCentered] = 1;
    sub_100700518();

    return sub_10000CFBC(v14, &qword_100963278, &qword_1007B2820);
  }

  return result;
}

uint64_t sub_100682660@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_10076250C();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_100071910;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_1006826D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_10000A5D4(&qword_100950548, &unk_1007AAAE0);
  __chkstk_darwin(v6 - 8);
  v8 = v19 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v10 = Strong;
  v11 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_diffableDataSource);
  v12 = v11;

  if (!v11)
  {
    goto LABEL_10;
  }

  sub_1007699AC();

  v13 = sub_10000A5D4(&unk_100946710, &unk_10079A020);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_10000CFBC(v8, &qword_100950548, &unk_1007AAAE0);
    goto LABEL_10;
  }

  sub_10076F4AC();
  (*(v14 + 8))(v8, v13);
  sub_100012498(v21, v22);
  sub_10000A570(v22, v21);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_1007623CC();
  if (!swift_dynamicCast())
  {
    sub_10076247C();
    if (swift_dynamicCast())
    {

      sub_10000A570(v22, v20);
      type metadata accessor for UpdatesLockupCollectionViewCell(0);
      v16 = sub_1007705AC();
      sub_10000CFBC(v20, &unk_10094F720, &unk_100785540);
      goto LABEL_8;
    }

    while (1)
    {
LABEL_10:
      sub_10077156C();
      __break(1u);
    }
  }

  sub_10000A570(v22, v20);
  type metadata accessor for AccountDetailCollectionViewCell(0);
  v15 = sub_1007705AC();
  sub_10000CFBC(v20, &unk_10094F720, &unk_100785540);
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  v16 = v15;
  sub_10077145C(19);

  v19[1] = 0xD000000000000011;
  v19[2] = 0x80000001007F4B80;
  sub_10000CF78(v22, v22[3]);
  sub_10076F57C();
  v23._countAndFlagsBits = sub_1007713CC();
  sub_1007700CC(v23);

  sub_100016C74(v20);
  v17 = sub_10076FF6C();

  [v16 setAccessibilityIdentifier:v17];

LABEL_8:
  sub_10000CD74(v21);
  sub_10000CD74(v22);
  return v16;
}

uint64_t sub_100682ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30[2] = a7;
  v32 = a1;
  v11 = sub_10000A5D4(&qword_100963278, &qword_1007B2820);
  __chkstk_darwin(v11 - 8);
  v13 = v30 - v12;
  v14 = sub_10000A5D4(&qword_100963280, &qword_1007B2828);
  v31 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v30 - v15;
  if (sub_10076FF9C() == a2 && v17 == a3)
  {

    goto LABEL_13;
  }

  v30[1] = a8;
  v19 = sub_10077167C();

  if (v19)
  {
LABEL_13:
    sub_100016F40(0, &qword_10094D1D0, UICollectionViewCell_ptr);
    return sub_1007705BC();
  }

  if (sub_10076FF9C() == a2 && v20 == a3)
  {
  }

  else
  {
    v22 = sub_10077167C();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v25 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_diffableDataSource), v26 = Strong, v27 = v25, v26, !v25))
  {
    (*(v31 + 56))(v13, 1, 1, v14);
    goto LABEL_21;
  }

  sub_10075E0AC();
  sub_1007699BC();

  v28 = v31;
  if ((*(v31 + 48))(v13, 1, v14) == 1)
  {
LABEL_21:
    sub_10000CFBC(v13, &qword_100963278, &qword_1007B2820);
    goto LABEL_13;
  }

  (*(v28 + 32))(v16, v13, v14);
  swift_getKeyPath();
  sub_10076F49C();

  if (!v33)
  {
    (*(v28 + 8))(v16, v14);
    goto LABEL_13;
  }

  sub_1000167E0(v33, v34);
  type metadata accessor for AccountActionSectionFooterView();
  v29 = sub_1007705BC();
  (*(v28 + 8))(v16, v14);
  return v29;
}

void sub_100682E70(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v174 = sub_1007623AC();
  v171 = *(v174 - 8);
  __chkstk_darwin(v174);
  v155 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v154 = &v147 - v8;
  v9 = sub_10000A5D4(&unk_100963288, &unk_1007B2868);
  __chkstk_darwin(v9 - 8);
  v11 = &v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v162 = &v147 - v13;
  __chkstk_darwin(v14);
  v165 = &v147 - v15;
  __chkstk_darwin(v16);
  v161 = &v147 - v17;
  __chkstk_darwin(v18);
  v170 = &v147 - v19;
  __chkstk_darwin(v20);
  v164 = &v147 - v21;
  v22 = sub_10000A5D4(&qword_10094BB50, &qword_1007851D0);
  __chkstk_darwin(v22 - 8);
  v173 = (&v147 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v26 = (&v147 - v25);
  __chkstk_darwin(v27);
  v172 = (&v147 - v28);
  __chkstk_darwin(v29);
  v169 = &v147 - v30;
  v31 = sub_1007622FC();
  v167 = *(v31 - 8);
  v168 = v31;
  __chkstk_darwin(v31);
  v166 = &v147 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_10076048C();
  v153 = *(v156 - 8);
  __chkstk_darwin(v156);
  v152 = &v147 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_10076BF6C();
  v159 = *(v160 - 8);
  __chkstk_darwin(v160);
  v158 = &v147 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10000A5D4(&qword_100963298, &qword_1007B2878);
  __chkstk_darwin(v35 - 8);
  v37 = &v147 - v36;
  v38 = sub_10076232C();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = &v147 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v163 = &v147 - v43;
  sub_10000A570(a3, v177);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_1007623CC();
  if (swift_dynamicCast())
  {
    v151 = v26;
    v44 = v176;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_69;
    }

    v150 = v38;
    v157 = Strong;
    [Strong pageMarginInsets];
    [a1 setLayoutMargins:?];
    v46 = sub_10076231C();
    v47 = &a1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryMargin];
    *v47 = v46;
    v47[8] = v48 & 1;
    v49 = sub_10076238C();
    v50 = a1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_disabled];
    a1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_disabled] = v49 & 1;
    v148 = v11;
    v175 = v44;
    if ((v49 & 1) != v50)
    {
      v51 = v49;
      [*&a1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_titleLabel] setEnabled:(v49 & 1) == 0];
      [*&a1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_subtitleLabel] setEnabled:(v51 & 1) == 0];
      [a1 setUserInteractionEnabled:(v51 & 1) == 0];
      [a1 setNeedsDisplay];
    }

    sub_10076236C();
    v52 = *&a1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_titleLabel];
    if (v53)
    {
      v54 = sub_10076FF6C();
    }

    else
    {
      v54 = 0;
    }

    v149 = v52;
    [v52 setText:v54];

    [a1 setNeedsLayout];
    sub_10076239C();
    v55 = *&a1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_subtitleLabel];
    if (v56)
    {
      v57 = sub_10076FF6C();
    }

    else
    {
      v57 = 0;
    }

    v58 = v39;
    v59 = v150;
    [v55 setText:v57];

    if (sub_1003D3078())
    {
      [a1 setNeedsLayout];
    }

    sub_10076237C();
    v60 = *&a1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_detailLabel];
    if (v61)
    {
      v62 = sub_10076FF6C();
    }

    else
    {
      v62 = 0;
    }

    [v60 setText:v62];

    v63 = sub_10076234C();
    v64 = a1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_shouldShowFullTitle];
    a1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_shouldShowFullTitle] = v63 & 1;
    if ((v63 & 1) != v64)
    {
      [a1 setNeedsLayout];
    }

    sub_10076235C();
    v65 = (*(v39 + 48))(v37, 1, v59);
    v66 = v171;
    v67 = v169;
    if (v65 == 1)
    {
      sub_10000CFBC(v37, &qword_100963298, &qword_1007B2878);
    }

    else
    {
      v68 = v163;
      (*(v39 + 32))();
      (*(v39 + 16))(v41, v68, v59);
      v69 = (*(v39 + 88))(v41, v59);
      if (v69 == enum case for AccountPresenter.AccountDetailItem.ImageConfiguration.image(_:))
      {
        (*(v39 + 96))(v41, v59);
        v70 = *v41;
        v71 = *(v41 + 3);
        v72 = v70;
        sub_10075FCAC();
        [a1 setNeedsLayout];
        sub_10075FD0C();
        sub_10075FBEC();
        a1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_shouldResizeImage] = 1;
        v73 = &a1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_imageMarginRight];
        *v73 = v71;
        v73[8] = 0;
        (*(v159 + 104))(v158, enum case for Artwork.Style.unadorned(_:), v160);
        sub_10075FCCC();
        sub_1007638EC();
        v74 = [objc_opt_self() clearColor];
        sub_1007638DC();

        (*(v39 + 8))(v68, v59);
      }

      else if (v69 == enum case for AccountPresenter.AccountDetailItem.ImageConfiguration.profileImage(_:))
      {
        (*(v39 + 96))(v41, v59);
        v75 = *v41;
        v178.width = 56.0;
        v178.height = 56.0;
        UIGraphicsBeginImageContextWithOptions(v178, 0, 0.0);
        [v75 drawInRect:{0.0, 0.0, 56.0, 56.0}];
        v76 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        v77 = v39;
        v78 = v76;
        sub_10075FCAC();
        [a1 setNeedsLayout];

        sub_10075FBEC();
        a1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_shouldResizeImage] = 0;
        v79 = &a1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_imageMarginRight];
        *v79 = 0x4030000000000000;
        v79[8] = 0;
        (*(v159 + 104))(v158, enum case for Artwork.Style.round(_:), v160);
        sub_10075FCCC();
        v80 = [a1 traitCollection];
        sub_10076E20C();

        sub_1007638EC();
        v81 = [objc_opt_self() separatorColor];
        sub_1007638DC();

        (*(v77 + 8))(v163, v59);
      }

      else
      {
        if (v69 != enum case for AccountPresenter.AccountDetailItem.ImageConfiguration.systemImage(_:))
        {
LABEL_73:
          sub_10077166C();
          __break(1u);
          return;
        }

        (*(v39 + 96))(v41, v59);
        v82 = v153;
        v83 = v152;
        (*(v153 + 32))();
        sub_10075FBEC();
        a1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_shouldResizeImage] = 0;
        v84 = &a1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_imageMarginRight];
        *v84 = 0x4026000000000000;
        v84[8] = 0;
        sub_1007638EC();
        v85 = [objc_opt_self() clearColor];
        sub_1007638DC();
        v86 = [objc_opt_self() configurationWithPointSize:48.0];
        v87 = v83;
        v88 = sub_10076046C();

        v89 = v88;
        sub_10075FCAC();
        [a1 setNeedsLayout];

        (*(v82 + 8))(v87, v156);
        (*(v58 + 8))(v163, v59);
      }
    }

    v90 = v166;
    sub_10076230C();
    v91 = (*(v167 + 88))(v90, v168);
    v92 = v174;
    v93 = v170;
    if (v91 == enum case for AccountPresenter.AccountDetailItem.TitleStyle.action(_:))
    {
      v94 = [v157 collectionView];
      if (v94)
      {
        v95 = v94;
        v96 = [v94 tintColor];

        goto LABEL_35;
      }

      __break(1u);
      goto LABEL_72;
    }

    if (v91 == enum case for AccountPresenter.AccountDetailItem.TitleStyle.primary(_:))
    {
      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      v97 = sub_100770CFC();
    }

    else
    {
      if (v91 != enum case for AccountPresenter.AccountDetailItem.TitleStyle.secondary(_:))
      {
LABEL_72:
        sub_10077156C();
        __break(1u);
        goto LABEL_73;
      }

      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      v97 = sub_100770D1C();
    }

    v96 = v97;
LABEL_35:
    [v149 setTextColor:v96];

    v98 = v164;
    sub_1007623BC();
    v99 = (v66 + 48);
    v100 = *(v66 + 48);
    if (v100(v98, 1, v92) == 1)
    {
      sub_10000CFBC(v98, &unk_100963288, &unk_1007B2868);
      v101 = type metadata accessor for Accessory(0);
      (*(*(v101 - 8) + 56))(v67, 1, 1, v101);
    }

    else
    {
      sub_100684480(v67);
      (*(v66 + 8))(v98, v92);
    }

    v102 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph;
    v103 = v157;
    v104 = *&v157[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph];

    v168 = v103;
    sub_1003D3450(v67, v104);

    sub_10000CFBC(v67, &qword_10094BB50, &qword_1007851D0);
    v105 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryView;
    v106 = *&a1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryView];
    if (!v106)
    {
      goto LABEL_52;
    }

    v107 = v106;
    sub_1007623BC();
    if (v100(v93, 1, v92) == 1)
    {
      sub_10000CFBC(v93, &unk_100963288, &unk_1007B2868);
      v108 = type metadata accessor for Accessory(0);
      (*(*(v108 - 8) + 56))(v172, 1, 1, v108);
    }

    else
    {
      v109 = v93;
      v110 = v172;
      sub_100684480(v172);
      (*(v66 + 8))(v109, v92);
      v111 = type metadata accessor for Accessory(0);
      if ((*(*(v111 - 8) + 48))(v110, 1, v111) != 1)
      {
        v112 = 0;
LABEL_44:
        sub_10000CFBC(v172, &qword_10094BB50, &qword_1007851D0);
        [v107 setHidden:v112];

        v113 = *&a1[v105];
        if (v113)
        {
          v114 = v113;
          v115 = v161;
          sub_1007623BC();
          if (v100(v115, 1, v92) == 1)
          {
            sub_10000CFBC(v115, &unk_100963288, &unk_1007B2868);
            v116 = 0;
          }

          else
          {
            v117 = v154;
            (*(v66 + 16))(v154, v115, v92);
            if ((*(v66 + 88))(v117, v92) == enum case for AccountPresenter.AccountDetailItem.Accessory.artwork(_:))
            {
              (*(v66 + 96))(v117, v92);
              v116 = *(v117 + 3);

              v118 = v66;
              v119 = v92;
              (*(v118 + 8))(v161, v92);
            }

            else
            {
              v120 = *(v66 + 8);
              v119 = v92;
              v120(v117, v92);
              v116 = 0;
              v120(v161, v92);
            }

            v92 = v119;
            v66 = v171;
          }

          [v114 setTintColor:v116];
        }

LABEL_52:
        v121 = v165;
        sub_10076233C();
        if (v100(v121, 1, v92) == 1)
        {
          sub_10000CFBC(v121, &unk_100963288, &unk_1007B2868);
          v122 = type metadata accessor for Accessory(0);
          v123 = v151;
          (*(*(v122 - 8) + 56))(v151, 1, 1, v122);
        }

        else
        {
          v124 = v151;
          sub_100684480(v151);
          v123 = v124;
          (*(v66 + 8))(v121, v92);
        }

        v125 = v168;
        v126 = *&v157[v102];

        sub_1003D3880(v123, v126);

        sub_10000CFBC(v123, &qword_10094BB50, &qword_1007851D0);
        v127 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_secondaryAccessoryView;
        v128 = *&a1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_secondaryAccessoryView];
        if (!v128)
        {
LABEL_68:

LABEL_69:

          return;
        }

        v129 = v100;
        v130 = v66;
        v131 = v128;
        v132 = v162;
        sub_10076233C();
        v172 = v99;
        if (v129(v132, 1, v92) == 1)
        {
          sub_10000CFBC(v132, &unk_100963288, &unk_1007B2868);
          v133 = type metadata accessor for Accessory(0);
          (*(*(v133 - 8) + 56))(v173, 1, 1, v133);
          v134 = v130;
        }

        else
        {
          v135 = v132;
          v136 = v173;
          sub_100684480(v173);
          v134 = v130;
          (*(v130 + 8))(v135, v92);
          v137 = type metadata accessor for Accessory(0);
          v138 = v136;
          v125 = v168;
          if ((*(*(v137 - 8) + 48))(v138, 1, v137) != 1)
          {
            v139 = 0;
LABEL_61:
            sub_10000CFBC(v173, &qword_10094BB50, &qword_1007851D0);
            [v131 setHidden:v139];

            v140 = *&a1[v127];
            v141 = v174;
            if (v140)
            {
              v142 = v140;
              v143 = v148;
              sub_10076233C();
              if (v129(v143, 1, v141) == 1)
              {
                sub_10000CFBC(v143, &unk_100963288, &unk_1007B2868);
                v144 = 0;
              }

              else
              {
                v145 = v155;
                (*(v134 + 16))(v155, v143, v141);
                if ((*(v134 + 88))(v145, v141) == enum case for AccountPresenter.AccountDetailItem.Accessory.artwork(_:))
                {
                  (*(v134 + 96))(v145, v141);
                  v144 = *(v145 + 3);

                  (*(v134 + 8))(v143, v141);
                }

                else
                {
                  v146 = *(v134 + 8);
                  v146(v145, v141);
                  v144 = 0;
                  v146(v143, v141);
                }
              }

              [v142 setTintColor:v144];
            }

            goto LABEL_68;
          }
        }

        v139 = 1;
        goto LABEL_61;
      }
    }

    v112 = 1;
    goto LABEL_44;
  }
}

uint64_t sub_100684480@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1007623AC();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for AccountPresenter.AccountDetailItem.Accessory.badge(_:) || v9 == enum case for AccountPresenter.AccountDetailItem.Accessory.label(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = v8[1];
    *a1 = *v8;
    a1[1] = v10;
    v11 = type metadata accessor for Accessory(0);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }

  if (v9 == enum case for AccountPresenter.AccountDetailItem.Accessory.artwork(_:))
  {
    (*(v5 + 96))(v8, v4);
    v12 = *v8;
    v13 = v8[3];
    v19 = *(v8 + 1);

    *a1 = v12;
    *(a1 + 1) = v19;
    v11 = type metadata accessor for Accessory(0);
    goto LABEL_6;
  }

  v15 = enum case for AccountPresenter.AccountDetailItem.Accessory.chevron(_:);
  v16 = v9;
  v17 = type metadata accessor for Accessory(0);
  v18 = v17;
  if (v16 == v15)
  {
    swift_storeEnumTagMultiPayload();
    return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
  }

  else
  {
    (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
    return (*(v5 + 8))(v8, v4);
  }
}

void sub_100684770(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10077164C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A570(a3, v45);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076247C();
  if (swift_dynamicCast())
  {
    v10 = v44;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v43 = a1;
      if (qword_100941488 != -1)
      {
        swift_once();
      }

      v13 = sub_10076D9AC();
      sub_10000A61C(v13, qword_100963140);
      v14 = v12;
      sub_10076D17C();
      sub_10076D40C();
      v16 = v15;

      v17 = *(v7 + 8);
      v17(v9, v6);
      [v14 pageMarginInsets];
      v19 = v18;
      v20 = v14;
      sub_10076D17C();
      sub_10076D40C();
      v22 = v21;

      v17(v9, v6);
      [v20 pageMarginInsets];
      v24 = v23;
      v25 = sub_10076246C();
      v26 = *&v20[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph];
      v27 = v20;

      v28 = [v27 traitCollection];
      v29 = [v28 horizontalSizeClass];

      if (v29 == 1)
      {
        v30 = sub_10076244C();
      }

      else
      {
        v30 = 1;
      }

      v31 = v43;
      v32 = [v27 snapshotPageTraitEnvironment];

      v33.n128_u64[0] = v16;
      sub_1004C09F0(v25, v26, v30 & 1, 0, v32, v33, v19, v22, v24);

      swift_unknownObjectRelease();
      v34 = *&v31[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_expandableTextView];
      v35 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v36 = swift_allocObject();
      *(v36 + 16) = v10;
      *(v36 + 24) = v35;
      v37 = (v34 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler);
      v38 = *(v34 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler);
      v39 = *(v34 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler + 8);
      *v37 = sub_100688CE8;
      v37[1] = v36;
      swift_retain_n();

      sub_1000167E0(v38, v39);
      v40 = *(v34 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreButton);

      [v40 setUserInteractionEnabled:1];

      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      v41 = sub_100770D7C();
      [v31 setBackgroundColor:v41];
    }

    else
    {
    }
  }
}

double sub_100684BC0(uint64_t a1, uint64_t a2)
{
  v2 = sub_10076245C();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong traitCollection];
    v6 = [v5 horizontalSizeClass];

    v7 = v6 == 1;
  }

  else
  {
    v7 = 1;
  }

  v2(v7);

  return result;
}

void sub_100684C7C(void *a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100950548, &unk_1007AAAE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_diffableDataSource);
  if (v7)
  {
    v8 = v7;
    sub_10076999C();

    v9 = sub_10000A5D4(&unk_100946710, &unk_10079A020);
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v6, 1, v9) == 1)
    {
      sub_10000CFBC(v6, &qword_100950548, &unk_1007AAAE0);
    }

    else
    {
      sub_10076F4AC();
      (*(v10 + 8))(v6, v9);
      sub_10000A5D4(&qword_1009575A0, &unk_100784980);
      sub_10076249C();
      if (swift_dynamicCast())
      {
        sub_1007623FC();
        isa = sub_10075E02C().super.isa;
        [a1 deselectItemAtIndexPath:isa animated:1];
      }
    }
  }
}

uint64_t sub_100684F94(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, char *))
{
  v10 = sub_10075E11C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  a6(v15, v13);

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1006850B0(void *a1, uint64_t a2)
{
  v61 = a1;
  v4 = sub_10076F7CC();
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&qword_100950548, &unk_1007AAAE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v49 - v7;
  v9 = sub_10076F7FC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v56 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v55 = &v49 - v13;
  __chkstk_darwin(v14);
  v16 = &v49 - v15;
  v17 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v17 - 8);
  v54 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v58 = &v49 - v20;
  __chkstk_darwin(v21);
  v23 = &v49 - v22;
  __chkstk_darwin(v24);
  v25 = v2;
  v26 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_presenter);
  v60 = a2;
  v28 = &v49 - v27;
  sub_10076248C();
  sub_100016E2C(v28, v23, &qword_1009492E0, &qword_1007893A0);
  v29 = *(v10 + 48);
  v30 = v29(v23, 1, v9);
  v57 = v10;
  v59 = v9;
  v53 = v26;
  if (v30 == 1)
  {
    sub_10000CFBC(v23, &qword_1009492E0, &qword_1007893A0);
    v31 = v61;
  }

  else
  {
    (*(v10 + 32))(v16, v23, v9);
    sub_100760C8C();
    v31 = v61;
    [v61 frame];
    sub_10076613C();

    (*(v10 + 8))(v16, v9);
  }

  v32 = *(v25 + OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_diffableDataSource);
  if (!v32)
  {
    return sub_10000CFBC(v28, &qword_1009492E0, &qword_1007893A0);
  }

  v33 = v29;
  v34 = v32;
  sub_10076999C();

  v35 = sub_10000A5D4(&unk_100946710, &unk_10079A020);
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v8, 1, v35) == 1)
  {
    sub_10000CFBC(v8, &qword_100950548, &unk_1007AAAE0);
    return sub_10000CFBC(v28, &qword_1009492E0, &qword_1007893A0);
  }

  v38 = v28;
  sub_10076F4AC();
  (*(v36 + 8))(v8, v35);
  sub_100012498(&v62, v63);
  sub_10000CF78(v63, v63[3]);
  v39 = v58;
  sub_10076FE2C();
  v40 = v59;
  v41 = v33;
  if (v33(v39, 1, v59) == 1)
  {
    sub_10000CFBC(v38, &qword_1009492E0, &qword_1007893A0);
    v42 = v39;
  }

  else
  {
    v43 = v57;
    v44 = v55;
    (*(v57 + 32))(v55, v39, v40);
    sub_100760C8C();
    v45 = v54;
    sub_100016E2C(v38, v54, &qword_1009492E0, &qword_1007893A0);
    if (v41(v45, 1, v40) == 1)
    {
      sub_10000CFBC(v45, &qword_1009492E0, &qword_1007893A0);
    }

    else
    {
      v46 = v50;
      sub_10076F7DC();
      (*(v43 + 8))(v45, v40);
      sub_10076F7BC();
      (*(v51 + 8))(v46, v52);
    }

    v47 = v56;
    sub_10076F78C();

    [v31 frame];
    sub_1007660EC();

    v48 = *(v43 + 8);
    v48(v47, v40);
    v48(v44, v40);
    v42 = v38;
  }

  sub_10000CFBC(v42, &qword_1009492E0, &qword_1007893A0);
  return sub_10000CD74(v63);
}

void (*sub_100685734(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100689A5C;
}

void sub_100685798()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_100963238, &qword_1007B27E8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - v4;
  if ((sub_10076243C() & 1) == 0)
  {
    [*&v0[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_refreshControl] endRefreshing];
  }

  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_diffableDataSource];
  if (v6)
  {
    v7 = v6;
    sub_10000A5D4(&unk_100963240, &unk_1007B27F0);
    sub_100761B9C();
    sub_100761BBC();
    sub_1007699FC();

    (*(v3 + 8))(v5, v2);
  }

  v8 = [v0 collectionView];
  if (!v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8;
  v10 = [v8 window];

  if (!v10)
  {
    return;
  }

  v11 = [v1 collectionView];
  if (!v11)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v12 = v11;
  sub_10076666C();
}

void sub_100685DD4()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_authenticating;
  swift_beginAccess();
  if (v0[v1] == 1)
  {
    [*&v0[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_activityIndicator] startAnimating];
    v2 = [v0 navigationItem];
    v3 = [v2 leftBarButtonItem];

    if (v3)
    {
      [v3 setHidden:0];
    }
  }

  else
  {
    v4 = [v0 navigationItem];
    v5 = [v4 leftBarButtonItem];

    if (v5)
    {
      [v5 setHidden:1];
    }

    [*&v0[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_activityIndicator] stopAnimating];
  }
}

void sub_100685F04(void *a1)
{
  if ((v1[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_isPresentingForgotSignInDetails] & 1) == 0)
  {
    v1[OBJC_IVAR____TtC20ProductPageExtension21AccountViewController_isPresentingForgotSignInDetails] = 1;
    [a1 setPresentingViewController:v1];
    v3 = [objc_allocWithZone(AKAppleIDAuthenticationController) init];
    if (v3)
    {
      v4 = v3;
      v5 = swift_allocObject();
      *(v5 + 16) = v1;
      v9[4] = sub_100688740;
      v9[5] = v5;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 1107296256;
      v9[2] = sub_100686040;
      v9[3] = &unk_10089EF50;
      v6 = _Block_copy(v9);
      v7 = v4;
      v8 = v1;

      [v7 authenticateWithContext:a1 completion:v6];

      _Block_release(v6);
    }
  }
}

double sub_100686040(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_10000A5D4(&qword_100963230, &qword_1007B27E0);
    v4 = sub_10076FE4C();
  }

  v6 = a3;
  v5(v4, a3);

  return result;
}

void sub_1006860F0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [objc_allocWithZone(AAUISignInController) init];
  [v3 setServiceType:AIDAServiceTypeStore];
  [v3 setDelegate:v0];
  if (qword_100941490 != -1)
  {
    swift_once();
  }

  v4 = sub_10076FD4C();
  sub_10000A61C(v4, qword_100963158);
  sub_10000A5D4(&unk_100942A60, &unk_100784760);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F31C();
  sub_10076F27C();
  sub_10076FBCC();

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = ObjectType;
  v9[4] = sub_10068871C;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1005F04D8;
  v9[3] = &unk_10089EF00;
  v7 = _Block_copy(v9);
  v8 = v3;

  [v8 prepareInViewController:v1 completion:v7];
  _Block_release(v7);
}

void sub_100686388(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a3;
  v7 = sub_10076FD4C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076253C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076F4FC();
  __chkstk_darwin(v15 - 8);
  if (a1)
  {
    if (qword_100941490 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v7, qword_100963158);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBCC();

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      [Strong presentViewController:a4 animated:1 completion:0];
    }

    return;
  }

  if (!a2)
  {
    goto LABEL_21;
  }

  v40 = v12;
  v41 = sub_10075DA3C();
  v18 = [v41 domain];
  v19 = sub_10076FF9C();
  v21 = v20;

  if (v19 == sub_10076FF9C() && v21 == v22)
  {
  }

  else
  {
    v24 = sub_10077167C();

    if ((v24 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if ([v41 code] != -7005)
  {
LABEL_20:

LABEL_21:
    if (qword_100941490 != -1)
    {
      swift_once();
    }

    v31 = sub_10000A61C(v7, qword_100963158);
    (*(v8 + 16))(v10, v31, v7);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100784500;
    sub_10076F27C();
    if (a2)
    {
      swift_getErrorValue();
      v32 = v43;
      v33 = v44;
      *(&v46 + 1) = v44;
      v34 = sub_10000DB7C(&v45);
      (*(*(v33 - 8) + 16))(v34, v32, v33);
    }

    else
    {
      v45 = 0u;
      v46 = 0u;
    }

    sub_10076F30C();
    sub_10000CFBC(&v45, &unk_1009434C0, &qword_100783F60);
    sub_10076FBEC();

    (*(v8 + 8))(v10, v7);
    swift_beginAccess();
    v35 = swift_unknownObjectWeakLoadStrong();
    if (v35)
    {
      v36 = v35;

      sub_10076241C();
    }

    return;
  }

  if (qword_100941490 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v7, qword_100963158);
  sub_10000A5D4(&unk_100942A60, &unk_100784760);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  *(&v46 + 1) = sub_100016F40(0, &unk_10094FA10, NSError_ptr);
  *&v45 = v41;
  v25 = v41;
  sub_10076F30C();
  sub_10000CFBC(&v45, &unk_1009434C0, &qword_100783F60);
  sub_10076FBEC();

  v47._object = 0x80000001007D0620;
  v47._countAndFlagsBits = 0xD000000000000017;
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  sub_1007622EC(v47, v49);
  v48._countAndFlagsBits = 0xD00000000000002ALL;
  v48._object = 0x80000001007D0640;
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  sub_1007622EC(v48, v50);
  sub_10076F4DC();
  (*(v40 + 104))(v14, enum case for AlertActionStyle.normal(_:), v11);
  sub_10075FAAC();
  swift_allocObject();
  v26 = sub_10075FA7C();
  swift_beginAccess();
  v27 = swift_unknownObjectWeakLoadStrong();
  if (v27)
  {
    v28 = v27;
    swift_beginAccess();
    v29 = swift_unknownObjectWeakLoadStrong();
    v30 = v29;
    if (v29)
    {
      v29 = type metadata accessor for AccountViewController();
    }

    else
    {
      *(&v45 + 1) = 0;
      *&v46 = 0;
    }

    *&v45 = v30;
    *(&v46 + 1) = v29;
    sub_100687198(v26, &v45);

    sub_10000CFBC(&v45, &unk_1009434C0, &qword_100783F60);
  }

  swift_beginAccess();
  v37 = swift_unknownObjectWeakLoadStrong();
  if (v37)
  {
    v38 = v37;

    sub_10076241C();
  }
}