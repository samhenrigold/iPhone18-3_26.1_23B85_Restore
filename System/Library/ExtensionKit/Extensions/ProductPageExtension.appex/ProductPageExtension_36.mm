double sub_100415F30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100415F48(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100959F50, &qword_1007A21C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100415FB8(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100959F50, &qword_1007A21C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s5StateVwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t sub_1004160FC()
{
  v0 = sub_10000A5D4(&qword_100943118, &qword_100785018);
  sub_10000DB18(v0, qword_100956B90);
  sub_10000A61C(v0, qword_100956B90);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  type metadata accessor for UIRectEdge(0);
  return sub_10075FDDC();
}

void sub_1004161A0(void *a1, void *a2, char a3)
{
  v61 = a1;
  v62 = a2;
  ObjectType = swift_getObjectType();
  v6 = sub_10076F9AC();
  v59 = *(v6 - 8);
  *&v60 = v6;
  __chkstk_darwin(v6);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&qword_1009473D0, &qword_10078B140);
  __chkstk_darwin(v9 - 8);
  v11 = &v58 - v10;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_dismissTapGestureRecognizer] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_dismissSwipeGestureRecognizer] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_transitioningViewProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_disableDismissGestures] = 0;
  v12 = &v3[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_interactiveDismissal];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_dismissCompleted] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_scrollDismissInitialTranslationY] = 0;
  v3[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_isScrollDismissActive] = 0;
  v13 = [objc_opt_self() effectWithBlurRadius:50.0];
  v14 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v13];

  *&v3[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_overlayBlurView] = v14;
  v15 = [objc_allocWithZone(UIView) init];
  *&v3[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_overlayTintView] = v15;
  sub_10075F99C();
  *&v3[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_shadowView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for TransitioningPresentedContainerView();
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_presentedContainerView;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_presentedContainerView] = v16;
  v3[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_shouldUseReducedMotionTransition] = a3;
  v18 = sub_10076C03C();
  *(&v66 + 1) = v18;
  v67 = sub_1001D7794();
  v19 = sub_10000DB7C(&v65);
  (*(*(v18 - 8) + 104))(v19, enum case for Feature.iOS.today_tab_largest_ax_support(_:), v18);
  LOBYTE(v18) = sub_10076C90C();
  sub_10000CD74(&v65);
  if ((v18 & 1) == 0)
  {
    [*&v3[v17] setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  }

  v64.receiver = v3;
  v64.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v64, "initWithPresentedViewController:presentingViewController:", v61, v62);
  v21 = objc_allocWithZone(UITapGestureRecognizer);
  v22 = v20;
  v23 = [v21 initWithTarget:v22 action:"dismissTapDidChange:"];
  v24 = *&v22[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_dismissTapGestureRecognizer];
  *&v22[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_dismissTapGestureRecognizer] = v23;
  v25 = v23;

  if (!v25)
  {
    __break(1u);
    goto LABEL_12;
  }

  v26 = *&v22[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_overlayBlurView];
  [v26 addGestureRecognizer:v25];

  v27 = OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_overlayTintView;
  [*&v22[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_overlayTintView] setUserInteractionEnabled:0];
  v28 = *&v22[v27];
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 blackColor];
  [v30 setBackgroundColor:v31];

  [*&v22[v27] setAlpha:0.0];
  v32 = [objc_allocWithZone(UIScreenEdgePanGestureRecognizer) initWithTarget:v22 action:"edgePanDidChange:"];
  v33 = OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_dismissSwipeGestureRecognizer;
  v34 = *&v22[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
  *&v22[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_dismissSwipeGestureRecognizer] = v32;
  v35 = v32;

  if (!v35)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  if (qword_100940460 != -1)
  {
    swift_once();
  }

  v36 = sub_10000A5D4(&qword_100943118, &qword_100785018);
  sub_10000A61C(v36, qword_100956B90);
  v63 = v22;
  v37 = v22;
  sub_10075FDCC();

  [v35 setEdges:v65];
  if (!*&v22[v33])
  {
    goto LABEL_13;
  }

  v38 = OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_presentedContainerView;
  [*&v37[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_presentedContainerView] addGestureRecognizer:?];
  v39 = OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_shadowView;
  v40 = qword_10093F878;
  v41 = *&v37[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_shadowView];
  if (v40 != -1)
  {
    swift_once();
  }

  v42 = sub_10076BCFC();
  v43 = sub_10000A61C(v42, qword_10099D408);
  v44 = *(v42 - 8);
  (*(v44 + 16))(v11, v43, v42);
  (*(v44 + 56))(v11, 0, 1, v42);
  sub_10075F97C();

  v45 = [*&v37[v39] layer];
  [v45 setMaskedCorners:3];

  [*&v37[v39] _setContinuousCornerRadius:20.0];
  [*&v37[v39] setAutoresizingMask:18];
  v46 = *&v37[v39];
  sub_10075F95C();

  [*&v37[v38] setClipsToBounds:0];
  v47 = *&v37[v38];
  v48 = *&v37[v39];
  [v47 bounds];
  [v48 setFrame:?];

  [*&v37[v38] addSubview:*&v37[v39]];
  v49 = *&v37[v38];
  v65 = 0u;
  v66 = 0u;
  v50 = v49;
  sub_10076F96C();
  sub_10000CFBC(&v65, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  (*(v59 + 8))(v8, v60);
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v51 = swift_allocObject();
  v60 = xmmword_100783DD0;
  *(v51 + 16) = xmmword_100783DD0;
  *(v51 + 32) = sub_10076E3EC();
  *(v51 + 40) = &protocol witness table for UITraitLayoutDirection;
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = swift_allocObject();
  *(v53 + 16) = v52;
  *(v53 + 24) = ObjectType;
  v54 = v37;
  sub_10077095C();
  swift_unknownObjectRelease();

  v55 = swift_allocObject();
  *(v55 + 16) = v60;
  *(v55 + 32) = sub_10076E59C();
  *(v55 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v57 = swift_allocObject();
  *(v57 + 16) = v56;
  *(v57 + 24) = ObjectType;
  sub_10077095C();

  swift_unknownObjectRelease();
}

void sub_100416A64(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong traitCollection];
    v7 = [v6 layoutDirection];

    if (v7 == [a2 layoutDirection])
    {
    }

    else
    {
      v8 = *&v5[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
      if (v8)
      {
        v9 = qword_100940460;
        v10 = v8;
        if (v9 != -1)
        {
          swift_once();
        }

        v11 = sub_10000A5D4(&qword_100943118, &qword_100785018);
        sub_10000A61C(v11, qword_100956B90);
        v12 = v5;
        sub_10075FDCC();

        [v10 setEdges:v13];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_100416BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1004199F8();
  }
}

void sub_100416C14(char a1)
{
  if (v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_disableDismissGestures] == (a1 & 1))
  {
    return;
  }

  v2 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_dismissTapGestureRecognizer];
  if (v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_disableDismissGestures])
  {
    if (v2)
    {
      [v2 setEnabled:0];
      v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
      if (v3)
      {
        [v3 setEnabled:0];
        v4 = &v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_interactiveDismissal];
        swift_beginAccess();
        if (*(v4 + 24))
        {
          sub_10000A570(v4, &v11);
          v5 = *(&v12 + 1);
          v6 = v13;
          sub_10000CF78(&v11, *(&v12 + 1));
          (*(v6 + 32))(v5, v6);
          sub_10000CD74(&v11);
        }

        v13 = 0;
        v11 = 0u;
        v12 = 0u;
        swift_beginAccess();
        sub_1004198A8(&v11, v4);
        swift_endAccess();
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v2)
  {
    goto LABEL_15;
  }

  [v2 setEnabled:1];
  v7 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
  if (!v7)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v10 = v7;
  v8 = [v1 traitCollection];
  v9 = [v8 horizontalSizeClass];

  [v10 setEnabled:v9 != 2];
}

void sub_100416E54()
{
  v1 = sub_10076C36C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v35 - v6;
  v8 = sub_10076C38C();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v0 containerView];
  if (!v13)
  {
    return;
  }

  v14 = v13;
  v37 = v9;
  v15 = [v0 traitCollection];
  v16 = [v15 horizontalSizeClass];

  if (v16 != 2)
  {
    [v14 bounds];

    return;
  }

  v36 = v8;
  (*(v2 + 104))(v7, enum case for PageGrid.Direction.vertical(_:), v1);
  v17 = [v0 presentingViewController];
  v18 = [v17 view];

  if (!v18)
  {
    __break(1u);
    goto LABEL_17;
  }

  [v18 bounds];
  v20 = v19;
  v22 = v21;

  v23 = [v0 presentingViewController];
  v24 = [v23 view];

  if (!v24)
  {
LABEL_17:
    __break(1u);
    return;
  }

  [v24 safeAreaInsets];

  (*(v2 + 16))(v4, v7, v1);
  v25 = v36;
  if (qword_100940280 != -1)
  {
    swift_once();
  }

  sub_10076C33C();
  (*(v2 + 8))(v7, v1);
  v26 = [v0 presentingViewController];
  v27 = [v26 traitCollection];

  sub_10076C24C();
  v29 = v28;
  LOBYTE(v26) = sub_1007706FC();

  if (v26)
  {
    if (v29 + -160.0 <= 672.0)
    {
      v29 = v29 + -160.0;
    }

    else
    {
      v29 = 672.0;
    }

    if (v29 < 533.0)
    {
      v29 = 533.0;
    }
  }

  [v14 bounds];
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;
  v34 = CGRectGetMidX(v38) + v29 * -0.5;
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  CGRectGetMinY(v39);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  CGRectGetHeight(v40);

  sub_100419BF8(v34);
  (*(v37 + 8))(v12, v25);
}

void *sub_100417368()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v1 = Strong;
      v2 = sub_1000B03DC();
      swift_unknownObjectRelease();

      return v2;
    }

    swift_unknownObjectRelease();
  }

  return _swiftEmptyArrayStorage;
}

void sub_1004173EC(void *a1, void *a2)
{
  v3 = v2;
  v18.receiver = v3;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
  v6 = *&v3[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
  if (v6)
  {
    v7 = v3[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_disableDismissGestures];
    v8 = v6;
    v9 = (v7 & 1) == 0 && [a1 horizontalSizeClass] != 2;
    [v8 setEnabled:v9];

    v10 = [v3 containerView];
    if (v10)
    {
      v11 = v10;
      v12 = swift_allocObject();
      v12[2] = v3;
      v12[3] = a1;
      v12[4] = v11;
      v17[4] = sub_100419CC0;
      v17[5] = v12;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 1107296256;
      v17[2] = sub_1006F5994;
      v17[3] = &unk_100894B98;
      v13 = _Block_copy(v17);
      v14 = v3;
      v15 = a1;
      v16 = v11;

      [a2 animateAlongsideTransition:v13 completion:0];
      _Block_release(v13);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100417590(int a1, char *a2, void *a3, void *a4)
{
  v7 = [a2 presentedViewController];
  v18 = [v7 view];

  if ([a3 horizontalSizeClass] == 2)
  {
    if (v18)
    {
      v8 = *&a2[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_shadowView];
      v9 = v18;
      [v8 _continuousCornerRadius];
      [v9 _setContinuousCornerRadius:?];
    }
  }

  else if (v18)
  {
    [v18 _setContinuousCornerRadius:0.0];
  }

  [a4 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [*&a2[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_overlayBlurView] setFrame:?];
  [*&a2[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_overlayTintView] setFrame:{v11, v13, v15, v17}];
}

void sub_10041777C(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  *(*&v3[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_presentedContainerView] + OBJC_IVAR____TtC20ProductPageExtension35TransitioningPresentedContainerView_hidesInsertedSubviews) = 1;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v10[4] = sub_100419C54;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1006F5994;
  v10[3] = &unk_100894B48;
  v8 = _Block_copy(v10);
  v9 = v3;

  [a1 animateAlongsideTransition:0 completion:v8];
  _Block_release(v8);
}

void sub_100417930()
{
  v1 = [v0 containerView];
  if (v1)
  {
    v10 = v1;
    [v1 bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    [*&v0[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_overlayBlurView] setFrame:?];
    [*&v0[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_overlayTintView] setFrame:{v3, v5, v7, v9}];
    sub_100416E54();
    [*&v0[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_presentedContainerView] setFrame:?];
  }
}

void sub_100417A78()
{
  v1 = v0;
  v2 = [v0 containerView];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = *&v0[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_overlayBlurView];
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_overlayBlurView] setFrame:?];
    v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_overlayTintView];
    [v13 setFrame:{v5, v7, v9, v11}];
    [v3 addSubview:v13];
    [v3 addSubview:v12];
    v14 = [v1 presentedViewController];
    v15 = [v14 view];

    if (v15)
    {
      v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_presentedContainerView];
      [v16 bounds];
      [v15 setFrame:?];
      [v15 setAutoresizingMask:18];
      [v16 addSubview:v15];
    }

    v17 = v13;
    v18 = v12;
    v19 = [v1 presentedViewController];
    v20 = [v19 view];

    if (v20)
    {
      v21 = &v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_transitioningViewProvider];
      Strong = swift_unknownObjectWeakLoadStrong();
      v23 = *(v21 + 1);
      v24 = [v1 traitCollection];
      v25 = v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_shouldUseReducedMotionTransition];
      type metadata accessor for TodayTransitionCompanionAnimations();
      v26 = swift_allocObject();
      *(v26 + 88) = 0;
      swift_unknownObjectWeakInit();
      *(v26 + 104) = 0;
      *(v26 + 112) = 0;
      *(v26 + 32) = v17;
      *(v26 + 40) = v18;
      *(v26 + 56) = v20;
      if (Strong)
      {
        v27 = swift_unknownObjectWeakLoadStrong();
        if (v27)
        {
          v28 = v27;
          swift_unknownObjectRetain();
          v29 = sub_1000B03DC();
          swift_unknownObjectRelease();
        }

        else
        {
          v29 = _swiftEmptyArrayStorage;
        }

        *(v26 + 64) = v29;
        v31 = swift_unknownObjectWeakLoadStrong();
        if (v31)
        {
          v32 = v31;
          v33 = [v31 collectionView];
        }

        else
        {
          v33 = 0;
        }

        *(v26 + 48) = v33;
        swift_unknownObjectRetain();
        v34 = sub_1002A0D7C();
        swift_unknownObjectRelease();
        *(v26 + 16) = v34;
        swift_unknownObjectRetain();
        v30 = sub_1002A0E00();
        swift_unknownObjectRelease();
      }

      else
      {
        v30 = 0;
        *(v26 + 64) = _swiftEmptyArrayStorage;
        *(v26 + 48) = 0;
        *(v26 + 16) = 0;
      }

      *(v26 + 24) = v30;
      *(v26 + 88) = v23;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
      *(v26 + 96) = v24;
      *(v26 + 72) = v25;
      v35 = objc_opt_self();
      v36 = swift_allocObject();
      *(v36 + 16) = sub_100419BAC;
      *(v36 + 24) = v26;
      v46 = sub_1000B9014;
      v47 = v36;
      v42 = _NSConcreteStackBlock;
      v43 = 1107296256;
      v44 = sub_1001C5148;
      v45 = &unk_100894AA8;
      v37 = _Block_copy(&v42);

      [v35 performWithoutAnimation:v37];
      _Block_release(v37);
      LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

      if ((v35 & 1) == 0)
      {
        v38 = [v1 presentedViewController];
        v39 = [v38 transitionCoordinator];

        if (v39)
        {
          v46 = sub_100419BC4;
          v47 = v26;
          v42 = _NSConcreteStackBlock;
          v43 = 1107296256;
          v44 = sub_1006F5994;
          v45 = &unk_100894AD0;
          v40 = _Block_copy(&v42);

          v46 = sub_100419BC8;
          v47 = v26;
          v42 = _NSConcreteStackBlock;
          v43 = 1107296256;
          v44 = sub_1006F5994;
          v45 = &unk_100894AF8;
          v41 = _Block_copy(&v42);

          [v39 animateAlongsideTransition:v40 completion:v41];

          _Block_release(v41);
          _Block_release(v40);
          swift_unknownObjectRelease();
        }

        else
        {
        }

        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_100418088(char a1)
{
  if (a1)
  {
    v2 = [v1 presentedViewController];
    v3 = [v2 isViewLoaded];

    if (!v3)
    {
      return;
    }

    v4 = [v1 presentedViewController];
    v7 = [v4 contentScrollView];

    sub_100419AD8(&selRef_removeTarget_action_, &selRef__removeScrollViewScrollObserver_);
    swift_unknownObjectWeakAssign();
    sub_100419AD8(&selRef_addTarget_action_, &selRef__addScrollViewScrollObserver_);
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_overlayBlurView] removeFromSuperview];
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_overlayTintView] removeFromSuperview];
    v5 = [v1 presentedViewController];
    v7 = [v5 view];

    if (!v7)
    {
      return;
    }

    [v7 setClipsToBounds:0];
    v6 = [v7 layer];
    [v6 setMaskedCorners:15];

    [v7 _setContinuousCornerRadius:0.0];
  }
}

void sub_1004182A0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_overlayBlurView];
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_overlayTintView];
  v4 = v2;
  v5 = [v1 presentedViewController];
  v6 = [v5 view];

  if (!v6)
  {
    goto LABEL_16;
  }

  v7 = &v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_transitioningViewProvider];
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 1);
  v10 = [v1 traitCollection];
  v11 = v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_shouldUseReducedMotionTransition];
  type metadata accessor for TodayTransitionCompanionAnimations();
  v12 = swift_allocObject();
  *(v12 + 88) = 0;
  swift_unknownObjectWeakInit();
  *(v12 + 104) = 0;
  *(v12 + 112) = 0;
  *(v12 + 32) = v3;
  *(v12 + 40) = v4;
  *(v12 + 56) = v6;
  if (Strong)
  {
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      swift_unknownObjectRetain();
      v15 = sub_1000B03DC();
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
    }

    *(v12 + 64) = v15;
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = [v17 collectionView];
    }

    else
    {
      v19 = 0;
    }

    *(v12 + 48) = v19;
    swift_unknownObjectRetain();
    v20 = sub_1002A0D7C();
    swift_unknownObjectRelease();
    *(v12 + 16) = v20;
    swift_unknownObjectRetain();
    v16 = sub_1002A0E00();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0;
    *(v12 + 64) = _swiftEmptyArrayStorage;
    *(v12 + 48) = 0;
    *(v12 + 16) = 0;
  }

  *(v12 + 24) = v16;
  *(v12 + 88) = v9;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v12 + 96) = v10;
  *(v12 + 72) = v11;
  v21 = objc_opt_self();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_100419960;
  *(v22 + 24) = v12;
  v34 = sub_1000349FC;
  v35 = v22;
  v30 = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_1001C5148;
  v33 = &unk_1008949E0;
  v23 = _Block_copy(&v30);

  [v21 performWithoutAnimation:v23];
  _Block_release(v23);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v24 = [v1 presentedViewController];
  v25 = [v24 transitionCoordinator];

  if (v25)
  {
    v26 = swift_allocObject();
    *(v26 + 16) = v12;
    *(v26 + 24) = v1;
    v34 = sub_1004199C0;
    v35 = v26;
    v30 = _NSConcreteStackBlock;
    v31 = 1107296256;
    v32 = sub_1006F5994;
    v33 = &unk_100894A30;
    v27 = _Block_copy(&v30);

    v28 = v1;

    v34 = sub_1004199C8;
    v35 = v12;
    v30 = _NSConcreteStackBlock;
    v31 = 1107296256;
    v32 = sub_1006F5994;
    v33 = &unk_100894A58;
    v29 = _Block_copy(&v30);

    [v25 animateAlongsideTransition:v27 completion:v29];

    _Block_release(v29);
    _Block_release(v27);
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_100418760(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 presentedViewController];
  [v3 setNeedsStatusBarAppearanceUpdate];
}

double sub_1004187CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = a3(a1);
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v6 = 0;
    while ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_10077149C();
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_13;
      }

LABEL_9:
      v9 = *(v7 + 48);
      if (v9)
      {
        v10 = *(v7 + 56);

        v9(v11);

        sub_1000167E0(v9, v10);
      }

      else
      {
      }

      ++v6;
      if (v8 == i)
      {
        goto LABEL_16;
      }
    }

    if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    v7 = *(v4 + 8 * v6 + 32);

    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return result;
}

void sub_100418A58(void *a1)
{
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_presentedContainerView] frame];
  v3 = CGRectGetWidth(v30) * 0.28;
  [a1 translationInView:0];
  v5 = fabs(v4);
  if (v5 >= v3)
  {
    v5 = v3;
  }

  v6 = v5 / v3;
  v7 = [a1 state];
  if (v7 > 2)
  {
    if ((v7 - 4) >= 2)
    {
      if (v7 != 3)
      {
        return;
      }

      if (v6 == 1.0)
      {
LABEL_16:
        v11 = [v1 presentedViewController];
        [v11 dismissViewControllerAnimated:1 completion:0];

        v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_dismissCompleted] = 1;
        return;
      }
    }

    goto LABEL_10;
  }

  switch(v7)
  {
    case 0:
LABEL_10:
      if (v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_dismissCompleted])
      {
        return;
      }

      v8 = &v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_interactiveDismissal];
      swift_beginAccess();
      if (*(v8 + 24))
      {
        sub_10000A570(v8, &v27);
        v9 = *(&v28 + 1);
        v10 = v29;
        sub_10000CF78(&v27, *(&v28 + 1));
        (v10[4])(v9, v10);
        sub_10000CD74(&v27);
      }

      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      swift_beginAccess();
      sub_1004198A8(&v27, v8);
      goto LABEL_21;
    case 1:
      sub_10000A5D4(&unk_100942870, &qword_100784460);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_100785D70;
      v13 = [v1 presentedViewController];
      v14 = [v13 view];

      if (!v14)
      {
        __break(1u);
        return;
      }

      v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_shadowView];
      *(v12 + 32) = v14;
      *(v12 + 40) = v15;
      v16 = v15;
      v17 = v1;
      v18 = sub_100417368();
      if (v18 >> 62)
      {
        sub_1000ACA5C();
        v19 = sub_10077157C();
      }

      else
      {

        sub_10077168C();
        sub_1000ACA5C();
        v19 = v18;
      }

      v20 = v17;
      v21 = [v17 traitCollection];
      *(&v28 + 1) = &type metadata for ScaleDownInteractiveDismissal;
      v29 = &off_100889240;
      v22 = swift_allocObject();
      *&v27 = v22;
      *(v22 + 16) = v12;
      *(v22 + 24) = v19;
      *(v22 + 32) = v21;
      *(v22 + 40) = 1;
      *(v22 + 48) = 0x3FEA3D70A3D70A3DLL;
      v23 = OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_interactiveDismissal;
      swift_beginAccess();
      sub_1004198A8(&v27, v20 + v23);
LABEL_21:
      swift_endAccess();
      return;
    case 2:
      if (v6 == 1.0)
      {
        goto LABEL_16;
      }

      v24 = &v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_interactiveDismissal];
      swift_beginAccess();
      if (*(v24 + 24))
      {
        sub_10000A570(v24, &v27);
        v25 = *(&v28 + 1);
        v26 = v29;
        sub_10000CF78(&v27, *(&v28 + 1));
        (v26[2])(v25, v26, v6);
        sub_10000CD74(&v27);
      }

      break;
  }
}

void sub_100418EB8(void *a1)
{
  if (v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_disableDismissGestures])
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v52 = Strong;
  v4 = OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_isScrollDismissActive;
  if (v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_isScrollDismissActive] != 1)
  {
    if ([a1 state] != 1 && objc_msgSend(a1, "state") != 2)
    {
      goto LABEL_36;
    }

    [v52 contentOffset];
    v14 = v13;
    [v52 adjustedContentInset];
    if (v14 + v15 > 0.0)
    {
      goto LABEL_36;
    }

    [a1 velocityInView:v52];
    if (v16 <= 0.0)
    {
      goto LABEL_36;
    }

    [v52 adjustedContentInset];
    [v52 contentOffset];
    [v52 setContentOffset:?];
    v17 = [v1 traitCollection];
    v18 = [v17 horizontalSizeClass];

    if (v18 == 1)
    {
      sub_10000A5D4(&unk_100942870, &qword_100784460);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_100785D70;
      v20 = [v1 presentedViewController];
      v21 = [v20 view];

      if (v21)
      {
        v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_shadowView];
        *(v19 + 32) = v21;
        *(v19 + 40) = v22;
        v23 = v22;
        v24 = sub_100417368();
        if (v24 >> 62)
        {
          sub_1000ACA5C();
          v25 = sub_10077157C();
        }

        else
        {

          sub_10077168C();
          sub_1000ACA5C();
          v25 = v24;
        }

        v26 = [v1 traitCollection];
        *(&v54 + 1) = &type metadata for ScaleDownInteractiveDismissal;
        v55 = &off_100889240;
        v27 = swift_allocObject();
        *&v53 = v27;
        *(v27 + 16) = v19;
        *(v27 + 24) = v25;
        *(v27 + 32) = v26;
        *(v27 + 40) = 1;
        *(v27 + 48) = 0x3FEA3D70A3D70A3DLL;
        v28 = OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_interactiveDismissal;
        swift_beginAccess();
        v29 = &v1[v28];
LABEL_43:
        sub_1004198A8(&v53, v29);
        swift_endAccess();
        v45 = swift_unknownObjectWeakLoadStrong();
        if (v45)
        {
          v46 = v45;
          [v45 setShowsVerticalScrollIndicator:0];
        }

        [a1 translationInView:0];
        v48 = v47;

        *&v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_scrollDismissInitialTranslationY] = v48;
        v1[v4] = 1;
        return;
      }

      __break(1u);
    }

    else
    {
      sub_10000A5D4(&unk_100942870, &qword_100784460);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_100785D70;
      v37 = [v1 presentedViewController];
      v38 = [v37 view];

      if (v38)
      {
        v39 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_shadowView];
        *(v36 + 32) = v38;
        *(v36 + 40) = v39;
        v40 = v39;
        v41 = v1;
        v42 = sub_100417368();
        if (v42 >> 62)
        {
          sub_1000ACA5C();
          v43 = sub_10077157C();
        }

        else
        {

          sub_10077168C();
          sub_1000ACA5C();
          v43 = v42;
        }

        *(&v54 + 1) = &type metadata for PullDownInteractiveDismissal;
        v55 = &off_100889268;
        *&v53 = v36;
        *(&v53 + 1) = v43;
        *&v54 = 0x3FB1EB851EB851ECLL;
        v44 = OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_interactiveDismissal;
        v1 = v41;
        swift_beginAccess();
        v29 = &v41[v44];
        goto LABEL_43;
      }
    }

    __break(1u);
    return;
  }

  [*&v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_presentedContainerView] frame];
  v5 = CGRectGetHeight(v57) * 0.18;
  [a1 translationInView:0];
  v7 = v6 - *&v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_scrollDismissInitialTranslationY];
  if (v7 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6 - *&v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_scrollDismissInitialTranslationY];
  }

  v9 = 0.0;
  if (v5 <= 0.0)
  {
    v9 = v5;
  }

  if (v7 < 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = v10 / v5;
  v12 = [a1 state];
  if (v12 > 2)
  {
    if ((v12 - 4) >= 2)
    {
      if (v12 != 3)
      {
        goto LABEL_36;
      }

      if (v11 == 1.0)
      {
LABEL_35:
        v35 = [v1 presentedViewController];
        [v35 dismissViewControllerAnimated:1 completion:0];

        v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_dismissCompleted] = 1;
        return;
      }
    }
  }

  else if (v12)
  {
    if (v12 == 2)
    {
      if (v11 == 1.0)
      {
        goto LABEL_35;
      }

      v49 = &v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_interactiveDismissal];
      swift_beginAccess();
      if (*(v49 + 24))
      {
        sub_10000A570(v49, &v53);
        v50 = *(&v54 + 1);
        v51 = v55;
        sub_10000CF78(&v53, *(&v54 + 1));
        (v51[2])(v50, v51, v11);

        sub_10000CD74(&v53);
        return;
      }

LABEL_38:

      return;
    }

LABEL_36:

    goto LABEL_38;
  }

  if (v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_dismissCompleted])
  {
    goto LABEL_36;
  }

  v30 = &v1[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_interactiveDismissal];
  swift_beginAccess();
  if (*(v30 + 24))
  {
    sub_10000A570(v30, &v53);
    v31 = *(&v54 + 1);
    v32 = v55;
    sub_10000CF78(&v53, *(&v54 + 1));
    (v32[4])(v31, v32);
    sub_10000CD74(&v53);
  }

  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  swift_beginAccess();
  sub_1004198A8(&v53, v30);
  swift_endAccess();
  v33 = swift_unknownObjectWeakLoadStrong();
  if (v33)
  {
    v34 = v33;
    [v33 setShowsVerticalScrollIndicator:1];
  }

  v1[v4] = 0;
}

void sub_100419718(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_disableDismissGestures);
    v4[OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_disableDismissGestures] = v2;
    sub_100416C14(v5);
  }
}

uint64_t sub_1004198A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943130, &qword_100785020);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100419918()
{

  return _swift_deallocObject(v0, 56, 7);
}

double sub_100419968(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100419980()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1004199F8()
{
  v1 = [v0 traitCollection];
  if ([v1 userInterfaceIdiom] == 1)
  {
    v2 = 32.0;
  }

  else
  {
    [v1 displayCornerRadius];
    v2 = v3;
  }

  v4 = [v0 presentedViewController];
  v5 = [v4 view];

  [v5 _setContinuousCornerRadius:v2];
}

void sub_100419AD8(SEL *a1, SEL *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong panGestureRecognizer];

    [v7 *a1];
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    [v8 *a2];
  }
}

uint64_t sub_100419C1C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100419C78()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100419CCC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100419D04()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100419DC8()
{
  v0 = sub_10075ED5C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v14 - v5;
  sub_10075F29C();
  sub_10041A37C(&qword_1009436A0, &type metadata accessor for AppPromotion, &protocol conformance descriptor for AppPromotion);
  sub_10076332C();
  if (!v14[1])
  {
    return 0;
  }

  sub_10075F28C();
  (*(v1 + 16))(v3, v6, v0);
  v7 = (*(v1 + 88))(v3, v0);
  if (v7 == enum case for AppPromotionType.appEvent(_:))
  {
    (*(v1 + 8))(v6, v0);

    v8 = type metadata accessor for AppEventCollectionViewCell(0);
    v9 = &unk_100956CF8;
    v10 = type metadata accessor for AppEventCollectionViewCell;
    v11 = &unk_1007B5010;
  }

  else
  {
    if (v7 != enum case for AppPromotionType.contingentOffer(_:) && v7 != enum case for AppPromotionType.offerItem(_:))
    {
      result = sub_10077166C();
      __break(1u);
      return result;
    }

    (*(v1 + 8))(v6, v0);

    v8 = type metadata accessor for AppPromotionOfferCollectionViewCell(0);
    v9 = &unk_100956CF0;
    v10 = type metadata accessor for AppPromotionOfferCollectionViewCell;
    v11 = &unk_100788F98;
  }

  sub_10041A37C(v9, v10, v11);
  return v8;
}

uint64_t sub_10041A050()
{
  v0 = sub_10076B5BC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v15 - v5;
  v7 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - v9;
  swift_getKeyPath();
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  (*(v8 + 8))(v10, v7);
  (*(v1 + 104))(v3, enum case for Shelf.ContentType.appPromotion(_:), v0);
  sub_10041A37C(&qword_10094C660, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  sub_10077018C();
  sub_10077018C();
  if (v15[2] == v15[0] && v15[3] == v15[1])
  {
    v11 = *(v1 + 8);
    v11(v3, v0);
    v11(v6, v0);

    return sub_100419DC8();
  }

  v12 = sub_10077167C();
  v13 = *(v1 + 8);
  v13(v3, v0);
  v13(v6, v0);

  if (v12)
  {
    return sub_100419DC8();
  }

  return 0;
}

uint64_t sub_10041A37C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_10041A480(uint64_t a1, uint64_t a2, __n128 a3)
{
  v95 = a2;
  v94 = sub_100765A2C();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v92 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_10076D39C();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_10076B01C();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076B6EC();
  v101 = *(v7 - 8);
  v102 = v7;
  __chkstk_darwin(v7);
  v100 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v99 = &v88 - v10;
  v11 = sub_10075FD8C();
  v104 = *(v11 - 8);
  v105 = v11;
  __chkstk_darwin(v11);
  v103 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076469C();
  v107 = *(v13 - 8);
  v108 = v13;
  __chkstk_darwin(v13);
  v106 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076428C();
  v110 = *(v15 - 8);
  v111 = v15;
  __chkstk_darwin(v15);
  v109 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10076C38C();
  v18 = *(v17 - 8);
  v113 = v17;
  v114 = v18;
  __chkstk_darwin(v17);
  v112 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000A5D4(&unk_1009568A0, &qword_100784890);
  __chkstk_darwin(v20 - 8);
  v22 = &v88 - v21;
  v23 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v88 - v25;
  v27 = sub_10076B5BC();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v88 - v32;
  swift_getKeyPath();
  v115 = a1;
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  v34 = v26;
  v35 = v28;
  (*(v24 + 8))(v34, v23);
  if ((*(v28 + 48))(v22, 1, v27) != 1)
  {
    (*(v28 + 32))(v33, v22, v27);
    (*(v28 + 16))(v30, v33, v27);
    v37 = (*(v28 + 88))(v30, v27);
    v38 = v33;
    if (v37 == enum case for Shelf.ContentType.smallLockup(_:))
    {
      swift_getKeyPath();
      v39 = v112;
      sub_10076338C();

      sub_10076C2FC();
      (*(v114 + 8))(v39, v113);
      if (qword_10093FBE0 != -1)
      {
        swift_once();
      }

      v40 = sub_100763ADC();
      sub_10000A61C(v40, qword_10099DDA0);
      sub_100630CB4();
      sub_100763AFC();
      v41 = &unk_100956D30;
      v42 = &type metadata accessor for SmallLockupLayout;
      v43 = &protocol conformance descriptor for SmallLockupLayout;
LABEL_8:
      sub_10041B6AC(v41, v42, v43);
      sub_10076DBDC();
      v36 = v44;
      swift_unknownObjectRelease();
LABEL_22:
      (*(v35 + 8))(v38, v27);
      return v36;
    }

    if (v37 == enum case for Shelf.ContentType.mediumLockup(_:))
    {
      swift_getKeyPath();
      v45 = v112;
      sub_10076338C();

      sub_10076C2FC();
      (*(v114 + 8))(v45, v113);
      type metadata accessor for MediumLockupCollectionViewCell(0);
      swift_getKeyPath();
      sub_10076338C();

      v46 = v116;
      v47 = v109;
      sub_1002AAFCC(v109);

      sub_100630CB4();
      sub_1007642AC();
      sub_10041B6AC(&qword_10094FFD0, &type metadata accessor for MediumLockupLayout, &protocol conformance descriptor for MediumLockupLayout);
      sub_10076DBDC();
      v36 = v48;
      swift_unknownObjectRelease();
      (*(v110 + 8))(v47, v111);
      goto LABEL_22;
    }

    if (v37 == enum case for Shelf.ContentType.largeLockup(_:))
    {
      swift_getKeyPath();
      v49 = v112;
      sub_10076338C();

      sub_10076C2FC();
      (*(v114 + 8))(v49, v113);
      if (qword_10093FD60 != -1)
      {
        swift_once();
      }

      v50 = sub_1007634CC();
      sub_10000A61C(v50, qword_10099E3E8);
      sub_100630CB4();
      sub_1007634EC();
      v41 = &qword_100951200;
      v42 = &type metadata accessor for LargeLockupLayout;
      v43 = &protocol conformance descriptor for LargeLockupLayout;
      goto LABEL_8;
    }

    if (v37 == enum case for Shelf.ContentType.ribbonBar(_:) || v37 == enum case for Shelf.ContentType.ribbonFlow(_:))
    {
      v60 = v106;
      sub_1007632FC();
      v36 = sub_1002A3018(v60);
      (*(v107 + 8))(v60, v108);
      goto LABEL_22;
    }

    if (v37 == enum case for Shelf.ContentType.videoCard(_:))
    {
      swift_getKeyPath();
      v51 = v112;
      sub_10076338C();

      sub_10076C2FC();
      v53 = v52;
      v55 = v54;
      (*(v114 + 8))(v51, v113);
      if (qword_10093F650 != -1)
      {
        swift_once();
      }

      v56 = sub_100630CB4();
      ObjectType = swift_getObjectType();
      v58 = type metadata accessor for VideoCardView(0);
      sub_1000C31A8(v53, v55, &qword_10099CD08, v56, v58, ObjectType);
      v36 = v59;
      swift_unknownObjectRelease();
      goto LABEL_22;
    }

    if (v37 == enum case for Shelf.ContentType.brick(_:))
    {
      swift_getKeyPath();
      v62 = v99;
      sub_10076338C();

      v63 = v100;
      sub_10076B6AC();
      sub_10041B6AC(&unk_100946780, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
      v64 = v102;
      v65 = sub_10077124C();
      v66 = *(v101 + 8);
      v66(v63, v64);
      v66(v62, v64);
      if (v65)
      {
        if (qword_100940350 != -1)
        {
          swift_once();
        }

        v67 = qword_10099F740;
      }

      else
      {
        if (qword_100940358 != -1)
        {
          swift_once();
        }

        v67 = qword_10099F758;
      }

      v71 = v105;
      v72 = sub_10000A61C(v105, v67);
      v74 = v103;
      v73 = v104;
      (*(v104 + 16))(v103, v72, v71);
      swift_getKeyPath();
      v75 = v112;
      sub_10076338C();

      sub_10076C2FC();
      (*(v114 + 8))(v75, v113);
      sub_100630CB4();
      sub_10075FDAC();
      sub_10041B6AC(&qword_1009428F8, &type metadata accessor for BrickLayout, &protocol conformance descriptor for BrickLayout);
      sub_10076DBDC();
      v36 = v76;
      swift_unknownObjectRelease();
      (*(v73 + 8))(v74, v71);
      goto LABEL_22;
    }

    if (v37 == enum case for Shelf.ContentType.categoryBrick(_:))
    {
LABEL_30:
      swift_getKeyPath();
      v68 = v112;
      sub_10076338C();

      sub_10076C2FC();
      (*(v114 + 8))(v68, v113);
      v69 = v96;
      sub_100767EBC();
      sub_100630CB4();
      sub_10076B03C();
      sub_10041B6AC(&qword_100956D28, &type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout, &protocol conformance descriptor for ChartOrCategoryBrickCollectionViewCellLayout);
      sub_10076DBDC();
      v36 = v70;
      swift_unknownObjectRelease();
      (*(v97 + 8))(v69, v98);
      goto LABEL_22;
    }

    if (v37 == enum case for Shelf.ContentType.miniTodayCard(_:))
    {
      type metadata accessor for BaseTodayCardCollectionViewCell(0);
      v77 = sub_1003DE0CC(v115, v95);
      goto LABEL_37;
    }

    if (v37 == enum case for Shelf.ContentType.appTrailerLockup(_:))
    {
      type metadata accessor for AppTrailerLockupCollectionViewCell(0);
    }

    else
    {
      if (v37 != enum case for Shelf.ContentType.screenshotsLockup(_:))
      {
        if (v37 == enum case for Shelf.ContentType.smallStoryCard(_:))
        {
          swift_getKeyPath();
          v79 = v112;
          sub_10076338C();

          sub_10076C2FC();
          (*(v114 + 8))(v79, v113);
          swift_getKeyPath();
          sub_10076338C();

          v80 = v116;
          v81 = v92;
          sub_1004CAB60(v116, v92);
          sub_1007659FC();
          v36 = v82;

          (*(v93 + 8))(v81, v94);
          goto LABEL_22;
        }

        if (v37 == enum case for Shelf.ContentType.posterLockup(_:))
        {
          v83 = v106;
          sub_1007632FC();
          v84 = v89;
          sub_10076445C();
          v85 = v112;
          sub_10076460C();
          sub_10076C30C();
          (*(v114 + 8))(v85, v113);
          sub_10076D36C();
          v36 = v86;
          (*(v90 + 8))(v84, v91);
          (*(v107 + 8))(v83, v108);
          goto LABEL_22;
        }

        if (v37 != enum case for Shelf.ContentType.appPromotion(_:))
        {
          if (v37 != enum case for Shelf.ContentType.tagBrick(_:))
          {
            v87 = *(v28 + 8);
            v87(v33, v27);
            v87(v30, v27);
            return 0.0;
          }

          goto LABEL_30;
        }

        v77 = sub_10052E3A8(v115, 1);
LABEL_37:
        v36 = v77;
        goto LABEL_22;
      }

      type metadata accessor for ScreenshotsLockupCollectionViewCell(0);
    }

    v78 = v106;
    sub_1007632FC();
    v36 = sub_1000725B0(v78);
    (*(v107 + 8))(v78, v108);
    goto LABEL_22;
  }

  sub_10041B638(v22);
  return 0.0;
}

uint64_t sub_10041B638(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_1009568A0, &qword_100784890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10041B6AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t LinkPresentationProvider.presentation(for:)(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v2 - 8);
  v4 = aBlock - v3;
  v5 = sub_10075DB7C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_100956D38, &qword_1007A24D8);
  v9 = sub_10076FCEC();
  sub_100760D9C();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1001B82AC(v4);
    sub_10041BA64();
    swift_allocError();
    *v10 = 0;
    sub_10076FCAC();
LABEL_6:

    return v9;
  }

  (*(v6 + 32))(v8, v4, v5);
  if ((sub_100760D8C() & 1) == 0)
  {
    sub_10041BA64();
    swift_allocError();
    *v19 = 1;
    sub_10076FCAC();
    (*(v6 + 8))(v8, v5);
    goto LABEL_6;
  }

  v11 = objc_opt_self();
  sub_10075DB1C(v12);
  v14 = v13;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v9;
  v16[3] = v15;
  v16[4] = a1;
  aBlock[4] = sub_10041BE74;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001FA544;
  aBlock[3] = &unk_100894C88;
  v17 = _Block_copy(aBlock);

  v18 = [v11 requestMetadataForURL:v14 completionHandler:v17];
  _Block_release(v17);

  (*(v6 + 8))(v8, v5);
  return v9;
}

unint64_t sub_10041BA64()
{
  result = qword_100956D40;
  if (!qword_100956D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100956D40);
  }

  return result;
}

uint64_t sub_10041BAB8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10041BAF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10076F08C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076F0CC();
  __chkstk_darwin(v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    sub_10076FCAC();
  }

  else
  {
    v26 = v15;
    sub_100085204();
    v25 = v11;
    v24 = sub_10077068C();
    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a4;
    v19[4] = a5;
    v19[5] = a3;
    aBlock[4] = sub_10041C1CC;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    aBlock[3] = &unk_100894DF8;
    v20 = _Block_copy(aBlock);
    v21 = a1;

    sub_10076F0AC();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10041C1D8(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
    sub_1000852B8();
    sub_1007712CC();
    v22 = v24;
    sub_10077069C();
    _Block_release(v20);

    (*(v25 + 8))(v13, v10);
    return (*(v26 + 8))(v17, v14);
  }
}

uint64_t sub_10041BE2C()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10041BE80(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = a1;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = sub_10041C220(a3, v5);

  if ((v6 & 1) == 0)
  {

LABEL_6:
    v4 = 0;
    v7 = a3;
    goto LABEL_7;
  }

  v7 = a3 | 0x8000000000000000;
  v8 = v5;
LABEL_7:
  swift_retain_n();
  sub_10076FCBC();
  sub_1000A9094(v7, v4);
  sub_1000A9094(v7, v4);
}

double sub_10041BF58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10041C010(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 16))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10041C06C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
    }
  }

  return result;
}

unint64_t sub_10041C128()
{
  result = qword_100956E00;
  if (!qword_100956E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100956E00);
  }

  return result;
}

uint64_t sub_10041C17C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10041C1D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10041C220(uint64_t a1, void *a2)
{
  v3 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v30 - v7;
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = sub_10075DB7C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100760D9C();
  v16 = *(v13 + 48);
  if (v16(v11, 1, v12) == 1)
  {
    sub_1001B82AC(v11);
    return 0;
  }

  (*(v13 + 32))(v15, v11, v12);
  if ((sub_100760D8C() & 1) == 0)
  {
LABEL_8:
    (*(v13 + 8))(v15, v12);
    return 0;
  }

  v17 = [objc_allocWithZone(LPLinkMetadataPresentationTransformer) init];
  v31 = a2;
  [v17 setMetadata:a2];
  sub_10075DB1C(v18);
  v20 = v19;
  [v17 setURL:v19];

  v21 = [v17 presentationProperties];
  if (([v21 respondsToSelector:"style"] & 1) == 0)
  {
    swift_unknownObjectRelease();

    goto LABEL_8;
  }

  v22 = [v21 style];
  swift_unknownObjectRelease();
  v23 = vdupq_n_s64(v22);
  if (vmaxvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_1008834A8, v23), vceqq_s64(unk_1008834B8, v23)), vuzp1q_s32(vceqq_s64(xmmword_1008834C8, v23), vceqq_s64(unk_1008834D8, v23))), vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_1008834E8, v23), vceqq_s64(unk_1008834F8, v23)), vuzp1q_s32(vceqq_s64(xmmword_100883508, v23), vceqq_s64(unk_100883518, v23))))))
  {
    (*(v13 + 8))(v15, v12);

    return 1;
  }

  v25 = [v31 video];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 youTubeURL];

    if (v27)
    {
      sub_10075DB3C();

      (*(v13 + 8))(v15, v12);
      v28 = 0;
    }

    else
    {
      (*(v13 + 8))(v15, v12);

      v28 = 1;
    }

    v29 = 1;
    (*(v13 + 56))(v5, v28, 1, v12);
    sub_100050DA4(v5, v8);
    if (v16(v8, 1, v12) != 1)
    {
      goto LABEL_17;
    }
  }

  else
  {

    (*(v13 + 8))(v15, v12);
    (*(v13 + 56))(v8, 1, 1, v12);
  }

  v29 = 0;
LABEL_17:
  sub_1001B82AC(v8);
  return v29;
}

uint64_t sub_10041C670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_10000A5D4(&unk_1009568A0, &qword_100784890);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_10076B5BC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v23 - v15;
  swift_getKeyPath();
  v23 = a1;
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  (*(v7 + 8))(v9, v6);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    sub_10041B638(v5);
    v17 = sub_100763FDC();
    return (*(*(v17 - 8) + 56))(v24, 1, 1, v17);
  }

  v19 = v24;
  (*(v11 + 32))(v16, v5, v10);
  (*(v11 + 16))(v13, v16, v10);
  v20 = (*(v11 + 88))(v13, v10);
  if (v20 == enum case for Shelf.ContentType.smallLockup(_:))
  {
    type metadata accessor for SmallLockupCollectionViewCell(0);
    sub_1001E5A7C(v19);
    return (*(v11 + 8))(v16, v10);
  }

  if (v20 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    type metadata accessor for MediumLockupCollectionViewCell(0);
    sub_10070821C(v19);
    return (*(v11 + 8))(v16, v10);
  }

  v21 = *(v11 + 8);
  v21(v16, v10);
  v22 = sub_100763FDC();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  return (v21)(v13, v10);
}

unint64_t sub_10041CA70()
{
  result = qword_100956E08;
  if (!qword_100956E08)
  {
    sub_1007655BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100956E08);
  }

  return result;
}

uint64_t sub_10041CAC8(uint64_t a1, uint64_t a2)
{
  v12[1] = a2;
  v3 = sub_10076F50C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076F2EC();
  __chkstk_darwin(v7 - 8);
  if (qword_1009412E8 != -1)
  {
    swift_once();
  }

  v8 = sub_10076FD4C();
  sub_10000A61C(v8, qword_1009A2600);
  sub_10000A5D4(&unk_100942A60, &unk_100784760);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783DD0;
  sub_10076F2DC();
  v14._object = 0x80000001007E4DE0;
  v14._countAndFlagsBits = 0xD000000000000018;
  sub_10076F2CC(v14);
  v9 = sub_1007618DC();
  v13[3] = v9;
  v10 = sub_10000DB7C(v13);
  (*(*(v9 - 8) + 16))(v10, a1, v9);
  sub_10076F29C();
  sub_1000258C0(v13);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_10076F2CC(v15);
  sub_10076F2FC();
  sub_10076FBCC();

  (*(v4 + 104))(v6, enum case for ActionOutcome.performed(_:), v3);
  sub_10076FCBC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10041CDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_10076F2EC();
  __chkstk_darwin(v5 - 8);
  if (qword_1009412E8 != -1)
  {
    swift_once();
  }

  v6 = sub_10076FD4C();
  sub_10000A61C(v6, qword_1009A2600);
  sub_10000A5D4(&unk_100942A60, &unk_100784760);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783DD0;
  sub_10076F2DC();
  v11._object = 0x80000001007E4DC0;
  v11._countAndFlagsBits = 0xD00000000000001BLL;
  sub_10076F2CC(v11);
  swift_getErrorValue();
  v10[3] = v9;
  v7 = sub_10000DB7C(v10);
  (*(*(v9 - 8) + 16))(v7);
  sub_10076F29C();
  sub_1000258C0(v10);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_10076F2CC(v12);
  sub_10076F2FC();
  sub_10076FBEC();

  swift_getObjectType();
  sub_10075EE5C();
  return sub_10076FCAC();
}

uint64_t sub_10041D014(uint64_t a1, uint64_t a2)
{
  v2 = sub_10076B96C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
  v9 = sub_10076FCEC();
  sub_10076559C();
  sub_1007655AC();
  sub_10076C12C();
  sub_10076F64C();
  sub_10076FC1C();
  sub_10000A5D4(&unk_10094A8C0, &qword_100784A40);
  sub_10076FC1C();
  v16 = v17;
  sub_10076C10C();
  (*(v3 + 16))(v5, v8, v2);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = v16;
  (*(v3 + 32))(v12 + v10, v5, v2);
  *(v12 + v11) = v9;
  v13 = sub_100085204();
  swift_retain_n();
  swift_unknownObjectRetain();
  v14 = sub_10077068C();
  v18 = v13;
  v19 = &protocol witness table for OS_dispatch_queue;
  *&v17 = v14;
  sub_10076FC6C();
  swift_unknownObjectRelease();

  (*(v3 + 8))(v8, v2);
  sub_10000CD74(&v17);
  return v9;
}

uint64_t sub_10041D2EC()
{
  v1 = sub_10076B96C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10041D3C4(uint64_t a1)
{
  v3 = *(sub_10076B96C() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_10041CDB0(a1, v6, v7, v1 + v4, v5);
}

uint64_t sub_10041D464@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    swift_getObjectType();
    PageTraitEnvironment.pageColumnWidth.getter();
    PageTraitEnvironment.pageColumnMargin.getter();
  }

  if (qword_100940348 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D39C();
  sub_10000A61C(v4, qword_10099F728);
  sub_10076D36C();
  sub_100766E2C();
  v5 = sub_100766E4C();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 0, 1, v5);
}

double sub_10041D584(double a1)
{
  if (qword_100940348 != -1)
  {
    swift_once();
  }

  v2 = sub_10076D39C();
  sub_10000A61C(v2, qword_10099F728);
  sub_10076D36C();
  return a1;
}

id sub_10041D6CC()
{
  v1 = v0;
  v2 = sub_10076B6EC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076B4FC();
  if (v6)
  {
    v7 = sub_10076FF6C();
  }

  else
  {
    v7 = 0;
  }

  [v1 setAccessibilityLabel:v7];

  sub_10076B6AC();
  sub_10041DC04(&unk_100946780, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v8 = sub_10077124C();
  result = (*(v3 + 8))(v5, v2);
  if (v8)
  {
    v10 = sub_10076B50C();
    v11 = &v1[OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_shortDescriptionLabelText];
    *v11 = v10;
    v11[1] = v12;

    return sub_1003CE7AC();
  }

  return result;
}

id sub_10041D868(uint64_t a1, uint64_t a2)
{
  v2 = sub_10076B6EC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v7 = v6;
  PageTraitEnvironment.pageColumnMargin.getter();
  v9 = v8;
  sub_10076B6AC();
  sub_10041DC04(&unk_100946780, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v10 = sub_10077124C();
  (*(v3 + 8))(v5, v2);
  if (v10)
  {
    if (qword_100940350 != -1)
    {
      swift_once();
    }

    v11 = qword_10099F740;
  }

  else
  {
    if (qword_100940358 != -1)
    {
      swift_once();
    }

    v11 = qword_10099F758;
  }

  v12 = ceil((v7 - v9) / 1.5);
  v13 = sub_10075FD8C();
  sub_10000A61C(v13, v11);
  sub_10075FDAC();
  sub_10041DC04(&qword_1009428F8, &type metadata accessor for BrickLayout, &protocol conformance descriptor for BrickLayout);
  sub_10076DBDC();
  v15 = v14;
  v16 = objc_opt_self();
  v17 = [v16 absoluteDimension:v12];
  v18 = [v16 absoluteDimension:v15];
  v19 = [objc_opt_self() sizeWithWidthDimension:v17 heightDimension:v18];

  v20 = [objc_opt_self() itemWithLayoutSize:v19];
  v21 = objc_opt_self();
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1007841E0;
  *(v22 + 32) = v20;
  sub_10004B9FC();
  v23 = v20;
  isa = sub_1007701AC().super.isa;

  v25 = [v21 verticalGroupWithLayoutSize:v19 subitems:isa];

  return v25;
}

uint64_t sub_10041DC04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10041DC98(void *a1, __n128 a2)
{
  v55 = sub_10076502C();
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v56 = v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076504C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_10076997C();
  v8 = *(v67 - 8);
  __chkstk_darwin(v67);
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076C38C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100760F7C();
  sub_10041E6C0(&qword_100956E68, &type metadata accessor for PrivacyHeader, &protocol conformance descriptor for PrivacyHeader);
  result = sub_10076332C();
  v57 = v77;
  if (v77)
  {
    v52 = v5;
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C2FC();
    (*(v12 + 8))(v14, v11);
    sub_10005312C();
    if (qword_100940DB0 != -1)
    {
      swift_once();
    }

    v51 = v7;
    v16 = sub_10076D3DC();
    sub_10000A61C(v16, qword_1009A1708);
    swift_getKeyPath();
    sub_10076338C();

    v17 = v77;
    v18 = sub_100770B3C();

    sub_100760F6C();
    sub_10076081C();

    v19 = sub_10075F9DC();

    v20 = sub_10076C04C();
    v78 = v20;
    v64 = sub_10041E6C0(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v79 = v64;
    v21 = sub_10000DB7C(&v77);
    v22 = *(v20 - 8);
    v23 = *(v22 + 104);
    v63 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v62 = v23;
    v61 = v22 + 104;
    v23(v21);
    v24 = v19;
    v25 = v18;
    sub_10076C90C();
    sub_10000CD74(&v77);
    v66 = v25;
    sub_10076993C();
    sub_10076994C();
    v26 = *(v8 + 8);
    v65 = v8 + 8;
    v60 = v26;
    v26(v10, v67);
    result = sub_100760F5C();
    v27 = result;
    if (result >> 62)
    {
      v49 = result;
      result = sub_10077158C();
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
          sub_10077149C();
        }

        else
        {
        }

        sub_100769C3C();
        sub_10076081C();

        v31 = v66;
        v32 = sub_10075F9DC();

        v75 = v20;
        v76 = v64;
        v33 = sub_10000DB7C(v74);
        v62(v33, v63, v20);
        v34 = v31;
        v35 = v32;
        sub_10076C90C();
        sub_10000CD74(v74);
        sub_10076993C();
        sub_10076994C();
        v60(v10, v67);
        sub_10000A570(v74, &v71);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_10049D428(0, v30[2] + 1, 1, v30);
        }

        v37 = v30[2];
        v36 = v30[3];
        if (v37 >= v36 >> 1)
        {
          v30 = sub_10049D428((v36 > 1), v37 + 1, 1, v30);
        }

        ++v29;

        sub_10000CD74(v74);
        v30[2] = v37 + 1;
        sub_10003F19C(&v71, &v30[5 * v37 + 4]);
      }

      while (v28 != v29);
    }

    else
    {
      v30 = _swiftEmptyArrayStorage;
    }

    swift_getKeyPath();
    sub_10076338C();

    v38 = v74[0];
    sub_10076E20C();

    v39 = sub_10076DDDC();
    swift_allocObject();
    v40 = sub_10076DDBC();
    if (qword_10093F7A8 != -1)
    {
      swift_once();
    }

    v41 = v55;
    v42 = sub_10000A61C(v55, qword_10099D0C8);
    (*(v54 + 16))(v56, v42, v41);
    sub_100760F4C();
    v43 = v78;
    v44 = v79;
    v45 = sub_10000CF78(&v77, v78);
    v75 = v43;
    v76 = *(v44 + 8);
    v46 = sub_10000DB7C(v74);
    (*(*(v43 - 8) + 16))(v46, v45, v43);
    sub_10016D554(v30);

    v72 = v39;
    v73 = &protocol witness table for LayoutViewPlaceholder;
    v70 = &protocol witness table for LayoutViewPlaceholder;
    *&v71 = v40;
    v69 = v39;
    v68 = v40;
    swift_retain_n();
    v47 = v51;
    sub_10076503C();
    swift_getKeyPath();
    sub_10076338C();

    sub_10041E6C0(&unk_100956E70, &type metadata accessor for PrivacyHeaderLayout, &protocol conformance descriptor for PrivacyHeaderLayout);
    v48 = v53;
    sub_10076D2AC();

    swift_unknownObjectRelease();

    (*(v52 + 8))(v47, v48);
    return sub_10000CD74(&v77);
  }

  return result;
}

uint64_t sub_10041E6C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10041E860(void *a1)
{
  v3 = sub_10076FF6C();
  v4 = [a1 dequeueReusableCellWithIdentifier:v3];

  if (!v4)
  {
    v5 = objc_allocWithZone(UITableViewCell);
    v6 = sub_10076FF6C();
    v4 = [v5 initWithStyle:0 reuseIdentifier:v6];
  }

  v7 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension33GladiatorValidationViewController_ruleNames);
  v8 = v4;
  result = sub_10075E07C();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result >= *(v7 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v10 = [v8 textLabel];

  if (v10)
  {
    v11 = sub_10076FF6C();

    [v10 setText:v11];
  }

  else
  {
  }

  return v8;
}

void sub_10041ECB4()
{
  v1 = v0;
  v2 = sub_10076191C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension33GladiatorValidationViewController_rules];
  v7 = sub_10075E07C();
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v7 >= *(v6 + 16))
  {
LABEL_8:
    __break(1u);
    return;
  }

  (*(v3 + 16))(v5, v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v7, v2);
  v8 = sub_10076C46C();
  v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33GladiatorValidationViewController_events];
  v10 = type metadata accessor for RuleResultsViewController();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC20ProductPageExtension25RuleResultsViewController_textView] = 0;
  *&v11[OBJC_IVAR____TtC20ProductPageExtension25RuleResultsViewController_rule] = v8;
  *&v11[OBJC_IVAR____TtC20ProductPageExtension25RuleResultsViewController_events] = v9;
  v15.receiver = v11;
  v15.super_class = v10;

  v12 = objc_msgSendSuper2(&v15, "initWithNibName:bundle:", 0, 0);
  v13 = [v1 navigationController];
  if (v13)
  {
    v14 = v13;
    [v13 pushViewController:v12 animated:1];

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }
}

id sub_10041EEE8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v82 = a3;
  v79 = a2;
  v70 = sub_10075E57C();
  v78 = *(v70 - 8);
  __chkstk_darwin(v70);
  v80 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v81 = &v67 - v16;
  v17 = sub_10000A5D4(&unk_100945560, qword_1007951B0);
  __chkstk_darwin(v17 - 8);
  v77 = &v67 - v18;
  v75 = sub_100768FEC();
  v71 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v73 = &v67 - v20;
  v21 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  *&v22 = __chkstk_darwin(v21 - 8).n128_u64[0];
  v24 = &v67 - v23;
  v25 = [v7 contentView];
  [v25 setLayoutMargins:{a4, a5, a6, a7}];

  v26 = a1;
  sub_10076BB6C();
  v28 = v27;
  v29 = v8;
  v30 = *&v8[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_titleLabel];
  if (v27)
  {
    v31 = sub_10076FF6C();
  }

  else
  {
    v31 = 0;
  }

  [v30 setText:v31];

  [v30 setHidden:v28 == 0];
  [v29 setNeedsLayout];
  v32 = sub_10075E63C();
  v33 = *&v29[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel];
  v34 = "inAppDescription";
  if (v32)
  {
    v34 = "chase.Subtitle.Format";
    v35._countAndFlagsBits = 0xD00000000000003ALL;
  }

  else
  {
    v35._countAndFlagsBits = 0xD00000000000002DLL;
  }

  v35._object = (v34 | 0x8000000000000000);
  v86._countAndFlagsBits = 0;
  v86._object = 0xE000000000000000;
  sub_1007622EC(v35, v86);
  v36 = sub_10076FF6C();

  [v33 setText:v36];

  sub_10075E66C();
  v37 = sub_10076BB6C();
  v39 = v38;

  if (v39)
  {
    v85._countAndFlagsBits = 0xD000000000000035;
    v85._object = 0x80000001007E22A0;
    v87._countAndFlagsBits = 0;
    v87._object = 0xE000000000000000;
    sub_1007622EC(v85, v87);
    sub_10000A5D4(&qword_100966CF0, qword_100795350);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_100783DD0;
    *(v40 + 56) = &type metadata for String;
    *(v40 + 64) = sub_1000A9040();
    *(v40 + 32) = v37;
    *(v40 + 40) = v39;
    sub_10076FFCC();

    v41 = *&v29[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel];

    v42 = sub_10076FF6C();

    [v41 setText:v42];

    [v41 setHidden:0];
  }

  else
  {
    v43 = *&v29[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel];
    [v43 setText:0];
    [v43 setHidden:1];
  }

  [v29 setNeedsLayout];
  sub_10075E64C();
  v45 = *&v29[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppDescription];
  if (v44)
  {
    v46 = sub_10076FF6C();
    [v45 setText:v46];

    [v45 setHidden:0];
  }

  else
  {
    [*&v29[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppDescription] setText:0];
    [v45 setHidden:1];
  }

  [v29 setNeedsLayout];
  v47 = sub_10076BB3C();
  v69 = v26;
  v48 = sub_10076BA2C();
  v49 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
  (*(*(v49 - 8) + 56))(v24, 1, 1, v49);
  v50 = v71;
  v51 = v75;
  (*(v71 + 104))(v72, enum case for OfferButtonSubtitlePosition.below(_:), v75);
  (*(v50 + 56))(v77, 1, 1, v51);
  sub_1002025B4(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
  v52 = v73;
  sub_10076759C();
  sub_1001F12C8(v47, v48, 0, v24, v52, v79, 0, 0);

  (*(v74 + 8))(v52, v76);
  sub_100026190(v24);
  v68 = v29;
  v53 = *&v29[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_iconView];
  v83.value.super.isa = 0;
  v83.is_nil = 0;
  sub_10075FCEC(v83, v54);
  v84.value.super.isa = 0;
  v84.is_nil = 0;
  sub_10075FCEC(v84, v55);
  sub_10075FD2C();
  sub_1002025B4(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v56 = v82;
  sub_100760BFC();
  sub_100760BFC();
  v79 = *&v29[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_bodyBackgroundColor];
  v57 = v81;
  sub_10075E65C();
  v58 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_theme;
  swift_beginAccess();
  v59 = v78;
  v60 = v70;
  (*(v78 + 24))(&v53[v58], v57, v70);
  swift_endAccess();
  v61 = *(v59 + 16);
  v62 = v80;
  v61(v80, &v53[v58], v60);
  sub_1005B84F8(v62);
  v63 = *(v59 + 8);
  v63(v62, v60);
  v63(v57, v60);
  v64 = v68;
  [v53 setBackgroundColor:v79];
  sub_1006EC184(93.0, 93.0, v69, v53, v56);
  v61(v57, &v53[v58], v60);
  sub_1005B84F8(v57);
  v63(v57, v60);
  [v53 setNeedsLayout];
  sub_1000325F0();
  v65 = sub_100770D2C();
  [v64 setBackgroundColor:v65];

  return [v64 setNeedsLayout];
}

uint64_t sub_10041F8E4()
{
  v0 = sub_10076FD2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009412D0 != -1)
  {
    swift_once();
  }

  v4 = sub_10000A61C(v0, qword_1009A25B8);
  (*(v1 + 16))(v3, v4, v0);
  qword_100956EE0 = sub_10076FD4C();
  unk_100956EE8 = &protocol witness table for OSLogger;
  sub_10000DB7C(qword_100956EC8);
  return sub_10076FD3C();
}

uint64_t sub_10041FA28(uint64_t a1, uint64_t a2)
{
  sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
  v5 = sub_10076FCEC();
  sub_100016F40(0, &qword_100944EF0, ACAccountStore_ptr);
  sub_10076F64C();
  sub_10076FC1C();
  v6 = v11[0];
  sub_10041FBC8(v11[0]);
  sub_100420A48(v2, v11);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = a1;
  sub_100420AD0(v11, (v7 + 4));
  v7[5] = a2;
  v8 = sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
  swift_retain_n();

  v9 = sub_10077068C();
  v11[3] = v8;
  v11[4] = &protocol witness table for OS_dispatch_queue;
  v11[0] = v9;
  sub_10076FC6C();

  sub_10000CD74(v11);
  return v5;
}

id sub_10041FBC8(void *a1)
{
  v2 = sub_10076F08C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076F0CC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_100956EF8, &unk_1007A2A38);
  v10 = sub_10076FCEC();
  v11 = [a1 ams_activeiTunesAccount];
  v12 = [v11 ams_DSID];
  if (v12)
  {

    LOBYTE(aBlock[0]) = 1;
    sub_10076FCBC();

    return v10;
  }

  v26 = v7;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v14 = [Strong frontmostViewController];

  result = [v14 view];
  if (result)
  {
    v16 = result;
    v17 = [result window];

    if (v17)
    {

      sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
      v25 = sub_10077068C();
      v18 = swift_allocObject();
      v18[2] = v11;
      v18[3] = v14;
      v18[4] = v10;
      aBlock[4] = sub_100420BB8;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10009AEDC;
      aBlock[3] = &unk_100894FA0;
      v19 = v14;
      v20 = _Block_copy(aBlock);
      v24 = v11;
      v21 = v19;

      sub_10076F0AC();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100420BDC(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
      sub_1000852B8();
      sub_1007712CC();
      v22 = v25;
      sub_10077069C();
      _Block_release(v20);

      (*(v3 + 8))(v5, v2);
      (*(v26 + 8))(v9, v6);
    }

    else
    {
      if (qword_100940468 != -1)
      {
        swift_once();
      }

      sub_10000CF78(qword_100956EC8, qword_100956EE0);
      sub_10000A5D4(&unk_100942A60, &unk_100784760);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100783DD0;
      sub_10076F27C();
      sub_10076FBCC();

      sub_100420B1C();
      swift_allocError();
      sub_10076FCAC();
    }

    return v10;
  }

  __break(1u);
  return result;
}

void sub_1004200F4(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a5;
  v38 = a1;
  v33 = a3;
  v39 = a2;
  v5 = sub_10076F50C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10075F65C();
  v32 = *(v35 - 8);
  __chkstk_darwin(v35);
  v36 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100765F6C();
  v30 = *(v10 - 8);
  v31 = v10;
  __chkstk_darwin(v10);
  v34 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100766EDC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10076F4FC();
  __chkstk_darwin(v16 - 8);
  v17 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v17 - 8);
  v19 = &v30 - v18;
  v20 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v20 - 8);
  v22 = &v30 - v21;
  v23 = sub_10076C15C();
  v26 = __chkstk_darwin(v23);
  if (*v38 == 1)
  {
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    (*(v25 + 104))(&v30 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.reviewSummaryReportConcern(_:));
    v27 = sub_10075DB7C();
    (*(*(v27 - 8) + 56))(v22, 1, 1, v27);
    v28 = sub_10076096C();
    (*(*(v28 - 8) + 56))(v19, 1, 1, v28);
    v41 = sub_10076A22C();
    v40 = v33;

    sub_10076F4DC();
    (*(v13 + 104))(v15, enum case for FlowPresentationContext.presentModalFormSheet(_:), v12);
    (*(v30 + 104))(v34, enum case for FlowAnimationBehavior.infer(_:), v31);
    (*(v32 + 104))(v36, enum case for FlowOrigin.inapp(_:), v35);
    sub_10076FA2C();
    sub_10075F63C();
    swift_allocObject();
    v29 = sub_10075F5EC();
    sub_100563FF8(v29, 1, v37);
    sub_10076FC4C();
  }

  else
  {
    (*(v6 + 104))(v8, enum case for ActionOutcome.performed(_:), v5, v26);
    sub_10076FCBC();
    (*(v6 + 8))(v8, v5);
  }
}

void sub_1004206B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(AMSUIAuthenticateTask) initWithAccount:a1 presentingViewController:a2 options:0];
  v5 = [v4 performAuthentication];
  v12 = sub_100420C24;
  v13 = a3;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_100177EA0;
  v11 = &unk_100894FC8;
  v6 = _Block_copy(&v8);

  [v5 addSuccessBlock:v6];
  _Block_release(v6);
  v12 = sub_100420C50;
  v13 = a3;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_100050C44;
  v11 = &unk_100894FF0;
  v7 = _Block_copy(&v8);

  [v5 addErrorBlock:v7];
  _Block_release(v7);
}

uint64_t sub_100420864(uint64_t a1)
{
  if (qword_100940468 != -1)
  {
    swift_once();
  }

  sub_10000CF78(qword_100956EC8, qword_100956EE0);
  sub_10000A5D4(&unk_100942A60, &unk_100784760);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  swift_getErrorValue();
  v4[3] = v3;
  v1 = sub_10000DB7C(v4);
  (*(*(v3 - 8) + 16))(v1);
  sub_10076F30C();
  sub_1000258C0(v4);
  sub_10076FBEC();

  LOBYTE(v4[0]) = 0;
  return sub_10076FCBC();
}

uint64_t sub_100420A80()
{

  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100420B1C()
{
  result = qword_100956F00;
  if (!qword_100956F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100956F00);
  }

  return result;
}

uint64_t sub_100420B70()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_100420BC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100420BDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100420C6C()
{
  result = qword_100956F08;
  if (!qword_100956F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100956F08);
  }

  return result;
}

uint64_t sub_100420CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v152 = a2;
  v3 = sub_10076FFEC();
  v137 = *(v3 - 8);
  v138 = v3;
  __chkstk_darwin(v3);
  v136 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&qword_100954218, &qword_10079D8E8);
  __chkstk_darwin(v5 - 8);
  v150 = &v128 - v6;
  v7 = sub_10000A5D4(&qword_100954220, &qword_10079D8F0);
  __chkstk_darwin(v7 - 8);
  v149 = &v128 - v8;
  v9 = sub_10076B96C();
  __chkstk_darwin(v9 - 8);
  v132 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v135 = &v128 - v12;
  __chkstk_darwin(v13);
  v140 = &v128 - v14;
  __chkstk_darwin(v15);
  v141 = &v128 - v16;
  v151 = sub_10075DDBC();
  v146 = *(v151 - 8);
  __chkstk_darwin(v151);
  v128 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v128 - v19;
  __chkstk_darwin(v21);
  v23 = &v128 - v22;
  __chkstk_darwin(v24);
  v145 = &v128 - v25;
  __chkstk_darwin(v26);
  v144 = &v128 - v27;
  v28 = sub_10076189C();
  v147 = *(v28 - 8);
  v148 = v28;
  __chkstk_darwin(v28);
  v129 = &v128 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v131 = &v128 - v31;
  __chkstk_darwin(v32);
  v134 = &v128 - v33;
  __chkstk_darwin(v34);
  v36 = &v128 - v35;
  v37 = sub_100761D3C();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v130 = &v128 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v133 = &v128 - v41;
  __chkstk_darwin(v42);
  v139 = &v128 - v43;
  __chkstk_darwin(v44);
  v46 = &v128 - v45;
  v48 = __chkstk_darwin(v47);
  v50 = &v128 - v49;
  v142 = *(v38 + 16);
  v143 = a1;
  v142(&v128 - v49, a1, v37, v48);
  v51 = (*(v38 + 88))(v50, v37);
  if (v51 != enum case for AdPlacementType.searchLanding(_:))
  {
    if (v51 == enum case for AdPlacementType.searchResults(_:))
    {
      goto LABEL_37;
    }

    if (v51 == enum case for AdPlacementType.today(_:))
    {
      sub_10076F73C();
      sub_10076F70C();
      if (qword_100940480 != -1)
      {
        swift_once();
      }

      v65 = sub_10000A5D4(&unk_100955860, &qword_100788520);
      sub_10000A61C(v65, qword_10099F968);
      sub_10076F41C();

      if (v153 == 2 || (v153 & 1) == 0)
      {
        goto LABEL_37;
      }

      sub_10075DDAC();
      sub_10075DD8C();
      v66 = *(v146 + 1);
      v66(v23, v151);
      sub_10076B94C();
      (v142)(v139, v143, v37);
      sub_10000A5D4(&unk_100947120, &unk_100789380);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100783DD0;
      v153 = 1953459315;
      v154 = 0xE400000000000000;
      sub_10077140C();
      *(inited + 96) = &type metadata for Int;
      *(inited + 72) = 2;
      sub_1000FCED4(inited);
      swift_setDeallocating();
      sub_1004225E8(inited + 32);
      v68 = v136;
      sub_10076FFDC();
      v69 = sub_10076FFAC();
      v71 = v70;
      (*(v137 + 8))(v68, v138);
      if (v71 >> 60 != 15)
      {
        v72 = objc_opt_self();
        isa = sub_10075DB8C().super.isa;
        v153 = 0;
        v74 = [v72 JSONObjectWithData:isa options:0 error:&v153];

        if (v74)
        {
          v75 = v153;
          sub_10077123C();
          sub_1003160EC(v69, v71);
          swift_unknownObjectRelease();
          sub_10000A5D4(&qword_100954258, &unk_10079D920);
          swift_dynamicCast();
        }

        else
        {
          v110 = v153;
          sub_10075DA4C();

          swift_willThrow();
          sub_1003160EC(v69, v71);
        }
      }

      v111 = v134;
      sub_10076187C();
      v112 = v144;
      sub_10075DDAC();
      v146 = sub_10075DD8C();
      v113 = v151;
      v66(v112, v151);
      v114 = v145;
      sub_10075DDAC();
      sub_10075DD8C();
      v66(v114, v113);
    }

    else if (v51 == enum case for AdPlacementType.productPageYMAL(_:))
    {
      sub_10076F73C();
      sub_10076F70C();
      if (qword_100940488 != -1)
      {
        swift_once();
      }

      v84 = sub_10000A5D4(&unk_100955860, &qword_100788520);
      sub_10000A61C(v84, qword_10099F980);
      sub_10076F41C();

      if (v153 == 2 || (v153 & 1) == 0)
      {
        goto LABEL_37;
      }

      sub_10075DDAC();
      sub_10075DD8C();
      v85 = *(v146 + 1);
      v85(v20, v151);
      sub_10076B94C();
      (v142)(v133, v143, v37);
      sub_10000A5D4(&unk_100947120, &unk_100789380);
      v86 = swift_initStackObject();
      *(v86 + 16) = xmmword_100783DD0;
      v153 = 1953459315;
      v154 = 0xE400000000000000;
      sub_10077140C();
      *(v86 + 96) = &type metadata for Int;
      *(v86 + 72) = 1;
      sub_1000FCED4(v86);
      swift_setDeallocating();
      sub_1004225E8(v86 + 32);
      v87 = v136;
      sub_10076FFDC();
      v88 = sub_10076FFAC();
      v90 = v89;
      (*(v137 + 8))(v87, v138);
      if (v90 >> 60 != 15)
      {
        v91 = objc_opt_self();
        v92 = sub_10075DB8C().super.isa;
        v153 = 0;
        v93 = [v91 JSONObjectWithData:v92 options:0 error:&v153];

        if (v93)
        {
          v94 = v153;
          sub_10077123C();
          sub_1003160EC(v88, v90);
          swift_unknownObjectRelease();
          sub_10000A5D4(&qword_100954258, &unk_10079D920);
          swift_dynamicCast();
        }

        else
        {
          v115 = v153;
          sub_10075DA4C();

          swift_willThrow();
          sub_1003160EC(v88, v90);
        }
      }

      v111 = v131;
      sub_10076187C();
      v116 = v144;
      sub_10075DDAC();
      v146 = sub_10075DD8C();
      v117 = v151;
      v85(v116, v151);
      v118 = v145;
      sub_10075DDAC();
      sub_10075DD8C();
      v85(v118, v117);
    }

    else
    {
      if (v51 != enum case for AdPlacementType.productPageYMALDuringDownload(_:))
      {
        v109 = sub_10076902C();
        (*(*(v109 - 8) + 56))(v152, 1, 1, v109);
        return (*(v38 + 8))(v50, v37);
      }

      sub_10076F73C();
      sub_10076F70C();
      if (qword_100940488 != -1)
      {
        swift_once();
      }

      v95 = sub_10000A5D4(&unk_100955860, &qword_100788520);
      sub_10000A61C(v95, qword_10099F980);
      sub_10076F41C();

      if (v153 == 2 || (v153 & 1) == 0)
      {
        goto LABEL_37;
      }

      v96 = v128;
      sub_10075DDAC();
      sub_10075DD8C();
      v97 = *(v146 + 1);
      v97(v96, v151);
      sub_10076B94C();
      (v142)(v130, v143, v37);
      sub_10000A5D4(&unk_100947120, &unk_100789380);
      v98 = swift_initStackObject();
      *(v98 + 16) = xmmword_100783DD0;
      v153 = 1953459315;
      v154 = 0xE400000000000000;
      sub_10077140C();
      *(v98 + 96) = &type metadata for Int;
      *(v98 + 72) = 1;
      sub_1000FCED4(v98);
      swift_setDeallocating();
      sub_1004225E8(v98 + 32);
      v99 = v136;
      sub_10076FFDC();
      v100 = sub_10076FFAC();
      v102 = v101;
      (*(v137 + 8))(v99, v138);
      if (v102 >> 60 != 15)
      {
        v103 = objc_opt_self();
        v104 = sub_10075DB8C().super.isa;
        v153 = 0;
        v105 = [v103 JSONObjectWithData:v104 options:0 error:&v153];

        if (v105)
        {
          v106 = v153;
          sub_10077123C();
          sub_1003160EC(v100, v102);
          swift_unknownObjectRelease();
          sub_10000A5D4(&qword_100954258, &unk_10079D920);
          swift_dynamicCast();
        }

        else
        {
          v119 = v153;
          sub_10075DA4C();

          swift_willThrow();
          sub_1003160EC(v100, v102);
        }
      }

      v111 = v129;
      sub_10076187C();
      v120 = v144;
      sub_10075DDAC();
      v146 = sub_10075DD8C();
      v121 = v151;
      v97(v120, v151);
      v122 = v145;
      sub_10075DDAC();
      sub_10075DD8C();
      v97(v122, v121);
    }

    v124 = v147;
    v123 = v148;
    v125 = v149;
    (*(v147 + 16))(v149, v111, v148);
    (*(v124 + 56))(v125, 0, 1, v123);
    v126 = sub_1007681AC();
    (*(*(v126 - 8) + 56))(v150, 1, 1, v126);
    v64 = v152;
    sub_10076900C();
    (*(v124 + 8))(v111, v123);
    goto LABEL_46;
  }

  sub_10076F73C();
  sub_10076F70C();
  if (qword_100940470 != -1)
  {
    swift_once();
  }

  v52 = sub_10000A5D4(&unk_100955860, &qword_100788520);
  sub_10000A61C(v52, qword_10099F938);
  sub_10076F41C();

  if (v153 == 2 || (v153 & 1) == 0)
  {
    sub_10076F70C();
    if (qword_100940478 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v52, qword_10099F950);
    sub_10076F41C();

    if (v153 != 2 && (v153 & 1) != 0)
    {
      v76 = v144;
      sub_10075DDAC();
      sub_10075DD8C();
      v77 = *(v146 + 1);
      v78 = v151;
      v77(v76, v151);
      v79 = v145;
      sub_10075DDAC();
      sub_10075DD8C();
      v77(v79, v78);
      (*(v147 + 56))(v149, 1, 1, v148);
      v80 = enum case for OnDeviceAdFetchFailReason.noAdAvailable(_:);
      v81 = sub_1007681AC();
      v82 = *(v81 - 8);
      v83 = v150;
      (*(v82 + 104))(v150, v80, v81);
      (*(v82 + 56))(v83, 0, 1, v81);
      v64 = v152;
      sub_10076900C();
      goto LABEL_46;
    }

LABEL_37:
    v107 = sub_10076902C();
    return (*(*(v107 - 8) + 56))(v152, 1, 1, v107);
  }

  v53 = v144;
  sub_10075DDAC();
  v54 = sub_10075DD8C();
  v139 = v55;
  v140 = v54;
  v56 = *(v146 + 1);
  v57 = v151;
  v56(v53, v151);
  v146 = ":SOME_CPP_VERSION_ID}}}]}";
  sub_10076B94C();
  (v142)(v46, v143, v37);
  sub_10076187C();
  sub_10075DDAC();
  v146 = sub_10075DD8C();
  v143 = v58;
  v56(v53, v57);
  v59 = v145;
  sub_10075DDAC();
  sub_10075DD8C();
  v56(v59, v57);
  v60 = v147;
  v61 = v148;
  v62 = v149;
  (*(v147 + 16))(v149, v36, v148);
  (*(v60 + 56))(v62, 0, 1, v61);
  v63 = sub_1007681AC();
  (*(*(v63 - 8) + 56))(v150, 1, 1, v63);
  v64 = v152;
  sub_10076900C();
  (*(v60 + 8))(v36, v61);
LABEL_46:
  v127 = sub_10076902C();
  return (*(*(v127 - 8) + 56))(v64, 0, 1, v127);
}

uint64_t sub_100422408()
{
  v0 = sub_10000A5D4(&unk_100955860, &qword_100788520);
  sub_10000DB18(v0, qword_10099F938);
  sub_10000A61C(v0, qword_10099F938);
  return sub_10076F54C();
}

uint64_t sub_100422480()
{
  v0 = sub_10000A5D4(&unk_100955860, &qword_100788520);
  sub_10000DB18(v0, qword_10099F950);
  sub_10000A61C(v0, qword_10099F950);
  return sub_10076F54C();
}

uint64_t sub_1004224F8()
{
  v0 = sub_10000A5D4(&unk_100955860, &qword_100788520);
  sub_10000DB18(v0, qword_10099F968);
  sub_10000A61C(v0, qword_10099F968);
  return sub_10076F54C();
}

uint64_t sub_100422570()
{
  v0 = sub_10000A5D4(&unk_100955860, &qword_100788520);
  sub_10000DB18(v0, qword_10099F980);
  sub_10000A61C(v0, qword_10099F980);
  return sub_10076F54C();
}

uint64_t sub_1004225E8(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100948B20, &qword_10078B500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10042265C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_protectionMode] = 1;
  v0[OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_isCollapsing] = 0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_mediaOverlayStyle;
  v3 = enum case for MediaOverlayStyle.matchSystem(_:);
  v4 = sub_10076361C();
  (*(*(v4 - 8) + 104))(&v0[v2], v3, v4);
  *&v0[OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_contentBasedProtectionView] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_fullProtectionView] = 0;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100422768(2);
  sub_100422768(0);
  sub_1004228CC();
  sub_100422A60();

  return v5;
}

void sub_100422768(uint64_t a1)
{
  if (a1 != 1)
  {
    if (a1 == 2)
    {
      v2 = OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_fullProtectionView;
      if (*&v1[OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_fullProtectionView])
      {
        return;
      }

      v3 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:0];
      v4 = *&v1[v2];
      *&v1[v2] = v3;

      v5 = *&v1[v2];
      if (!v5)
      {
        return;
      }

      v6 = v5;
      [v1 bounds];
      [v6 setFrame:?];

      v7 = *&v1[v2];
      if (!v7)
      {
        return;
      }

      [v7 setUserInteractionEnabled:0];
      if (!*&v1[v2])
      {
        return;
      }
    }

    else
    {
      v8 = OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_contentBasedProtectionView;
      if (*&v1[OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_contentBasedProtectionView])
      {
        return;
      }

      [v1 bounds];
      v9 = objc_allocWithZone(type metadata accessor for MediaOverlayGradientBlurView());
      v10 = sub_10046D7FC(0);
      v11 = *&v1[v8];
      *&v1[v8] = v10;

      v12 = *&v1[v8];
      if (!v12)
      {
        return;
      }

      [v12 setUserInteractionEnabled:0];
      if (!*&v1[v8])
      {
        return;
      }
    }

    [v1 insertSubview:? atIndex:?];
  }
}

void sub_1004228CC()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_protectionMode;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_protectionMode);
  sub_100423854(v2);
  sub_100422768(v2);
  sub_100423840(v2);
  v3 = *(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_contentBasedProtectionView);
  if (v3 == 2)
  {
    if (v4)
    {
      [v4 setAlpha:0.0];
    }

    v5 = OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_fullProtectionView;
    v6 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_fullProtectionView);
    if (v6)
    {
      v7 = [v6 effect];
      if (!v7)
      {
        v8 = *(v0 + v5);
        if (!v8)
        {
          return;
        }

        v9 = objc_opt_self();
        v10 = v8;
        v12 = [v9 effectWithStyle:7];
        [v10 setEffect:v12];

        v7 = v12;
      }
    }
  }

  else
  {
    if (v3 == 1)
    {
      if (v4)
      {
        [v4 setAlpha:0.0];
      }
    }

    else if (v4)
    {
      [v4 setAlpha:1.0];
    }

    v11 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_fullProtectionView);
    if (v11)
    {

      [v11 setEffect:0];
    }
  }
}

void sub_100422A60()
{
  v1 = v0;
  v2 = sub_10076361C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_mediaOverlayStyle;
  swift_beginAccess();
  v7 = *(v3 + 16);
  v7(v5, &v1[v6], v2);
  v8 = sub_1007635FC();
  v9 = *(v3 + 8);
  v9(v5, v2);
  [v1 setOverrideUserInterfaceStyle:v8];
  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_contentBasedProtectionView];
  if (v10)
  {
    v7(v5, &v1[v6], v2);
    v11 = v10;
    v12 = sub_1007635FC();
    v9(v5, v2);
    [v11 setOverrideUserInterfaceStyle:v12];
  }

  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_fullProtectionView];
  if (v13)
  {
    v7(v5, &v1[v6], v2);
    v14 = v13;
    v15 = sub_1007635FC();
    v9(v5, v2);
    [v14 setOverrideUserInterfaceStyle:v15];
  }
}

void sub_100422D68()
{
  if ((v0[OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_isCollapsing] & 1) == 0)
  {
    v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_protectionMode];
    if (v1 >= 3)
    {
      v2 = v1;
      [v2 frame];
      v4 = v3;
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v11 = [v2 superview];
      [v0 convertRect:v11 fromView:{v4, v6, v8, v10}];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;

      [v0 bounds];
      Height = CGRectGetHeight(v60);
      v61.origin.x = v13;
      v61.origin.y = v15;
      v61.size.width = v17;
      v61.size.height = v19;
      MinY = CGRectGetMinY(v61);
      v22 = OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_contentBasedProtectionView;
      v23 = *&v0[OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_contentBasedProtectionView];
      if (v23 && (v24 = Height - (Height - MinY), v25 = (v24 + -100.0) / Height, v26 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientStartY, *&v23[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientStartY] = v25, v27 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientView, v28 = *&v23[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientView], v29 = v23, v30 = [v28 layer], objc_opt_self(), objc_msgSend(swift_dynamicCastObjCClassUnconditional(), "startPoint"), v32 = v31, v30, v33 = *&v23[v26], v34 = objc_msgSend(*&v23[v27], "layer"), objc_opt_self(), objc_msgSend(swift_dynamicCastObjCClassUnconditional(), "setStartPoint:", v32, v33), v34, v35 = objc_msgSend(*&v29[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView], "layer"), objc_opt_self(), objc_msgSend(swift_dynamicCastObjCClassUnconditional(), "setStartPoint:", v32, v33), v29, v35, (v36 = *&v0[v22]) != 0) && (v37 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientStartY, *&v36[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientStartY] = v25, v38 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientMaskView, v39 = *&v36[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientMaskView], v40 = v36, v41 = objc_msgSend(v39, "layer"), objc_opt_self(), objc_msgSend(swift_dynamicCastObjCClassUnconditional(), "startPoint"), v43 = v42, v41, v44 = *&v36[v37], v45 = objc_msgSend(*&v36[v38], "layer"), objc_opt_self(), objc_msgSend(swift_dynamicCastObjCClassUnconditional(), "setStartPoint:", v43, v44), v40, v45, (v46 = *&v0[v22]) != 0) && (v47 = (v24 + 30.0) / Height, v48 = v46, sub_10046CAB0(v47), v48, (v49 = *&v0[v22]) != 0))
      {
        v50 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientEndY;
        *&v49[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientEndY] = v47;
        v51 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientMaskView;
        v52 = *&v49[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientMaskView];
        v58 = v49;
        v53 = [v52 layer];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() endPoint];
        v55 = v54;

        v56 = *&v49[v50];
        v57 = [*&v49[v51] layer];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v55, v56}];

        sub_100423840(v1);
      }

      else
      {

        sub_100423840(v1);
      }
    }
  }
}

void sub_100423244()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_contentBasedProtectionView];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 setFrame:?];
  }

  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_fullProtectionView];
  if (v3)
  {
    v4 = v3;
    [v0 bounds];
    [v4 setFrame:?];
  }

  sub_100422D68();
}

id sub_100423348(uint64_t a1, double a2, double a3)
{
  v29.receiver = v3;
  v29.super_class = swift_getObjectType();
  v7 = objc_msgSendSuper2(&v29, "hitTest:withEvent:", a1, a2, a3);
  if (v7)
  {
    v8 = *&v3[OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_protectionMode];
    if ((v8 - 1) >= 2)
    {
      if (v8)
      {
        v9 = v8;
        [v9 frame];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v18 = [v9 superview];
        [v3 convertRect:v18 fromView:{v11, v13, v15, v17}];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;

        v30.origin.x = v20;
        v30.origin.y = v22;
        v30.size.width = v24;
        v30.size.height = v26;
        MaxY = CGRectGetMaxY(v30);
        sub_100423840(v8);
        LOBYTE(v8) = MaxY < a3;
      }
    }

    else
    {
      LOBYTE(v8) = 1;
    }

    sub_100016F40(0, &qword_10094D040, NSObject_ptr);
    if ((sub_100770EEC() & 1) != 0 && (v8 & 1) == 0)
    {

      return 0;
    }
  }

  return v7;
}

uint64_t type metadata accessor for AppPromotionScrollableContentContainerView(uint64_t a1)
{
  result = qword_100956F48;
  if (!qword_100956F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100423670(uint64_t a1)
{
  result = sub_10076361C();
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

uint64_t sub_100423720(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100423750(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
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

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004237B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_100423808(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

void sub_100423840(id a1)
{
  if (a1 - 1 >= 2)
  {
  }
}

id sub_100423854(id result)
{
  if (result - 1 >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_100423868(void *a1, char *a2)
{
  if (a1 == 2)
  {
    if (a2 == 2)
    {
      return 1;
    }
  }

  else if (a1 == 1)
  {
    if (a2 == 1)
    {
      return 1;
    }
  }

  else if ((a2 - 1) >= 2)
  {
    if (a1)
    {
      if (a2)
      {
        sub_100016F40(0, &qword_1009441F0, UIView_ptr);
        sub_100423854(a2);
        sub_100423854(a1);
        v5 = sub_100770EEC();
        sub_100423840(a1);
        sub_100423840(a2);
        if (v5)
        {
          return 1;
        }
      }
    }

    else if (!a2)
    {
      return 1;
    }
  }

  return 0;
}

double sub_10042395C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v366 = a4;
  v390 = type metadata accessor for ShelfHeaderLayout(0);
  __chkstk_darwin(v390);
  v375 = &v330 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v367 = &v330 - v9;
  v10 = sub_10076DA7C();
  v386 = *(v10 - 8);
  v387 = v10;
  __chkstk_darwin(v10);
  v331 = &v330 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076D7FC();
  v346 = *(v12 - 8);
  v347 = v12;
  __chkstk_darwin(v12);
  v364 = &v330 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v333 = &v330 - v15;
  __chkstk_darwin(v16);
  v344 = &v330 - v17;
  __chkstk_darwin(v18);
  v345 = &v330 - v19;
  v343 = sub_10077164C();
  v341 = *(v343 - 8);
  __chkstk_darwin(v343);
  v340 = &v330 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v397 = sub_10076D39C();
  v385 = *(v397 - 8);
  __chkstk_darwin(v397);
  v342 = &v330 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v337 = &v330 - v23;
  v24 = sub_10000A5D4(&unk_10095B400, &unk_100783F80);
  __chkstk_darwin(v24 - 8);
  v372 = &v330 - v25;
  v26 = sub_10000A5D4(&unk_10095E850, &qword_10078B130);
  __chkstk_darwin(v26 - 8);
  v371 = &v330 - v27;
  v28 = sub_10077111C();
  v373 = *(v28 - 8);
  v374 = v28;
  __chkstk_darwin(v28);
  v370 = &v330 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v369 = &v330 - v31;
  v32 = sub_10000A5D4(&unk_10094BB80, &qword_100791CF0);
  __chkstk_darwin(v32 - 8);
  v363 = &v330 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v378 = &v330 - v35;
  __chkstk_darwin(v36);
  v335 = &v330 - v37;
  __chkstk_darwin(v38);
  v377 = &v330 - v39;
  v384 = sub_10076034C();
  v395 = *(v384 - 8);
  __chkstk_darwin(v384);
  v361 = &v330 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10000A5D4(&unk_1009570F0, &qword_1007A2D10);
  __chkstk_darwin(v41 - 8);
  v365 = &v330 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v332 = &v330 - v44;
  __chkstk_darwin(v45);
  v396 = &v330 - v46;
  v47 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v47 - 8);
  v339 = &v330 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v336 = &v330 - v50;
  __chkstk_darwin(v51);
  v388 = &v330 - v52;
  __chkstk_darwin(v53);
  v381 = (&v330 - v54);
  v55 = sub_10000A5D4(&qword_1009570E0, &qword_1007A2C80);
  __chkstk_darwin(v55);
  v383 = &v330 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v382 = &v330 - v58;
  __chkstk_darwin(v59);
  v398 = &v330 - v60;
  __chkstk_darwin(v61);
  v392 = &v330 - v62;
  __chkstk_darwin(v63);
  v391 = &v330 - v64;
  __chkstk_darwin(v65);
  v67 = &v330 - v66;
  v68 = sub_10000A5D4(&qword_100944538, &unk_100786650);
  __chkstk_darwin(v68 - 8);
  v350 = &v330 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70);
  *&v368 = &v330 - v71;
  __chkstk_darwin(v72);
  v74 = &v330 - v73;
  __chkstk_darwin(v75);
  v77 = &v330 - v76;
  v359 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  __chkstk_darwin(v359);
  v393 = &v330 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v79);
  v400 = &v330 - v80;
  v81 = sub_10076461C();
  v380 = sub_10076037C();
  sub_1007603AC();
  v356 = sub_1007602BC();
  v389 = v74;
  v394 = a1;
  sub_10076039C();
  v399 = a2;
  sub_10042E840();
  if (qword_1009404D0 != -1)
  {
    swift_once();
  }

  v82 = sub_10076D3DC();
  v83 = sub_10000A61C(v82, qword_100956F98);
  v84.super.isa = v81;
  v334 = v83;
  isa = sub_10076D3BC(v84).super.isa;
  [(objc_class *)isa pointSize];
  v87 = v86;
  v88 = objc_opt_self();
  v354 = isa;
  v355 = [v88 fontWithDescriptor:isa size:v87];
  [v355 lineHeight];
  v357 = v89;
  v90 = &v67[*(v55 + 48)];
  v91 = v67;
  v358 = v77;
  sub_100428694(v67, v90, v77);
  if (qword_1009404D8 != -1)
  {
    swift_once();
  }

  v92 = sub_10000A61C(v82, qword_100956FB0);
  v93.super.isa = v81;
  v362 = v92;
  v94 = sub_10076D3BC(v93).super.isa;
  [(objc_class *)v94 pointSize];
  v351 = v94;
  v352 = [v88 fontWithDescriptor:v94 size:?];
  [v352 lineHeight];
  v379 = v95;
  v360 = v55;
  sub_100428CF8(v391, &v391[*(v55 + 48)], v389);
  v401 = v81;
  v96 = [(objc_class *)v81 preferredContentSizeCategory];
  v97 = sub_10077085C();

  v376 = v82;
  if ((v97 & 1) == 0 || (v98 = 0.0, UIAccessibilityButtonShapesEnabled()))
  {
    v353 = v67;
    v99 = v88;
    v100 = *&v368;
    sub_100016E2C(v389, *&v368, &qword_100944538, &unk_100786650);
    v101 = sub_10076029C();
    v102 = *(v101 - 8);
    v98 = 7.0;
    if ((*(v102 + 48))(v100, 1, v101) != 1)
    {
      v103 = v350;
      sub_100016E2C(v100, v350, &qword_100944538, &unk_100786650);
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

    sub_10000CFBC(v100, &qword_100944538, &unk_100786650);
    v82 = v376;
    v88 = v99;
    v91 = v353;
  }

  v353 = *&v98;
  v368 = a3;
  if (qword_1009404E8 != -1)
  {
    swift_once();
  }

  v105 = sub_10000A61C(v82, qword_100956FE0);
  v106.super.isa = v401;
  v338 = v105;
  v107.super.isa = sub_10076D3BC(v106).super.isa;
  [(objc_class *)v107.super.isa pointSize];
  v108 = [v88 fontWithDescriptor:v107.super.isa size:?];
  [v108 lineHeight];
  v110 = v109;
  sub_1007704EC();
  v350 = v111;
  v113 = v112;
  v115 = v114;
  v117 = v116;
  sub_1007704EC();
  v119 = v118;
  v121 = v120;
  v123 = v122;
  v125 = v124;
  sub_100016E2C(v91, v392, &qword_1009570E0, &qword_1007A2C80);
  sub_100016E2C(v91, v398, &qword_1009570E0, &qword_1007A2C80);
  v126 = v389;
  if (v380)
  {
    sub_10076BEFC();
    v127 = v381;
    sub_10076D3AC();
    v128 = 0;
  }

  else
  {
    v128 = 1;
    v127 = v381;
  }

  v129 = v379 - v110;
  v130 = *(v385 + 56);
  v130(v127, v128, 1, v397);
  v131 = *&UIEdgeInsetsZero.top;
  v348 = *&UIEdgeInsetsZero.bottom;
  v349 = v131;
  v132 = v391;
  sub_100016E2C(v391, v382, &qword_1009570E0, &qword_1007A2C80);
  sub_100016E2C(v132, v383, &qword_1009570E0, &qword_1007A2C80);
  if (v356)
  {
    sub_10076BEFC();
    sub_10076D3AC();

    v133 = 0;
  }

  else
  {

    v133 = 1;
  }

  v134 = v358;

  sub_10000CFBC(v391, &qword_1009570E0, &qword_1007A2C80);
  sub_10000CFBC(v91, &qword_1009570E0, &qword_1007A2C80);
  sub_10000CFBC(v126, &qword_100944538, &unk_100786650);
  sub_10000CFBC(v134, &qword_100944538, &unk_100786650);
  v135 = v133;
  v136 = v397;
  v130(v388, v135, 1, v397);
  v137 = v359;
  v138 = *(v360 + 48);
  v139 = *(v359 + 40);
  v140 = v400;
  v130(&v400[v139], 1, 1, v136);
  v389 = v137[15];
  v130(&v140[v389], 1, 1, v136);
  *v140 = v350;
  *(v140 + 1) = v113;
  *(v140 + 2) = v115;
  *(v140 + 3) = v117;
  *(v140 + 4) = v357;
  *(v140 + 5) = v119;
  *(v140 + 6) = v121;
  *(v140 + 7) = v123;
  *(v140 + 8) = v125;
  v141 = v137[7];
  v142 = sub_10076D9AC();
  v143 = *(v142 - 8);
  v144 = *(v143 + 32);
  v358 = v141;
  v144(&v141[v140], v392, v142);
  v357 = v137[8];
  v391 = v138;
  v144(&v140[v357], &v138[v398], v142);
  *&v140[v137[9]] = 0x4008000000000000;
  v380 = v139;
  sub_10003837C(v381, &v140[v139], &unk_1009467E0, qword_10078CB50);
  *&v140[v137[11]] = v379;
  v145 = &v140[v137[12]];
  v146 = v348;
  *v145 = v349;
  *(v145 + 1) = v146;
  v360 = v137[13];
  v147 = v382;
  v144(&v140[v360], v382, v142);
  *&v379 = v137[14];
  v148 = v383;
  v144(&v140[*&v379], &v138[v383], v142);
  sub_10003837C(v388, &v140[v389], &unk_1009467E0, qword_10078CB50);
  *&v140[v137[16]] = v353;
  v149 = &v140[v137[17]];
  *v149 = v129;
  *(v149 + 2) = 0;
  *(v149 + 3) = 0;
  *(v149 + 1) = 0x4024000000000000;
  v150 = *(v143 + 8);
  v150(v148, v142);
  v151 = v391;
  v150(&v391[v147], v142);
  v150(v398, v142);
  v150(&v151[v392], v142);
  v381 = *(v386 + 56);
  v382 = v386 + 56;
  (v381)(v396, 1, 1, v387);
  v152 = v361;
  sub_10076035C();
  LOBYTE(v142) = sub_10076032C();
  v153 = *(v395 + 8);
  v154 = v384;
  v388 = v395 + 8;
  v383 = v153;
  v153(v152, v384);
  v155 = 0;
  v156 = 0;
  v157 = 0;
  v158 = v368;
  if (v142)
  {
    sub_10076E20C();
    v156 = sub_10076DDDC();
    swift_allocObject();
    v155 = sub_10076DDBC();
    v157 = &protocol witness table for LayoutViewPlaceholder;
  }

  v424[0] = v155;
  v424[1] = 0;
  v424[2] = 0;
  v424[3] = v156;
  v424[4] = v157;
  sub_1007603FC();
  v159 = v370;
  v160 = v378;
  if (!v161)
  {
    v391 = 0;
    v166 = v400;
    goto LABEL_40;
  }

  if (qword_1009404C8 != -1)
  {
    swift_once();
  }

  v162 = qword_100956F90;
  (*(v395 + 56))(v377, 1, 1, v154);
  v391 = v162;
  v163 = v162;
  v164 = sub_10076036C();
  if (v164)
  {
  }

  sub_1007710CC();
  sub_100770FCC();
  sub_100770FEC();
  v165 = v335;
  sub_100016E2C(v377, v335, &unk_10094BB80, &qword_100791CF0);
  if ((*(v395 + 48))(v165, 1, v154) == 1)
  {
    sub_10000CFBC(v165, &unk_10094BB80, &qword_100791CF0);
LABEL_31:
    if (qword_1009404F0 != -1)
    {
      swift_once();
    }

    v168 = qword_100956FF8;
    goto LABEL_34;
  }

  v167 = sub_1007602EC();
  (v383)(v165, v154);
  if (!v167)
  {
    goto LABEL_31;
  }

LABEL_34:
  v169 = v164 != 0;
  v170 = v369;
  sub_10077104C();
  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  v171 = sub_100770B3C();
  *(swift_allocObject() + 16) = v171;
  v172 = v171;
  v173 = v371;
  sub_10076E8AC();
  v174 = sub_10076E89C();
  (*(*(v174 - 8) + 56))(v173, 0, 1, v174);
  sub_10077106C();
  v175 = v372;
  v176 = v373;
  v177 = v374;
  (*(v373 + 16))(v372, v170, v374);
  (*(v176 + 56))(v175, 0, 1, v177);
  sub_10077114C();
  [v163 setUserInteractionEnabled:v169];
  [v163 _setWantsAccessibilityUnderline:v169];

  (*(v176 + 8))(v170, v177);
  sub_10000CFBC(v377, &unk_10094BB80, &qword_100791CF0);
  v178 = sub_1007603FC();
  v180 = v179;
  v181 = sub_10076461C();
  if (sub_1007603CC())
  {
    v160 = v378;
    if (qword_100940490 != -1)
    {
      swift_once();
    }

    v182 = [qword_100956F58 configurationWithTraitCollection:v181];
    v183 = sub_10076044C();
  }

  else
  {
    v183 = 0;
    v160 = v378;
  }

  v184 = sub_10042F1BC(v178, v180, v181, v183);

  [v163 setAttributedTitle:v184 forState:0];

  v166 = v400;
  v154 = v384;
LABEL_40:
  if (sub_10076037C())
  {

    v185 = v336;
    sub_100016E2C(v166 + v380, v336, &unk_1009467E0, qword_10078CB50);
    v186 = v385;
    v187 = v397;
    if ((*(v385 + 48))(v185, 1, v397) == 1)
    {
      sub_10000CFBC(v185, &unk_1009467E0, qword_10078CB50);
      v398 = 0;
    }

    else
    {
      (*(v186 + 32))(v337, v185, v187);
      v188 = v340;
      sub_10076D17C();
      sub_10076D97C();
      v189 = *(v341 + 8);
      v190 = v343;
      v189(v188, v343);
      sub_10076D17C();
      sub_10076D97C();
      v191 = v188;
      v159 = v370;
      v192 = v190;
      v160 = v378;
      v189(v191, v192);
      v193 = v337;
      sub_10076D31C();
      sub_10076DDDC();
      swift_allocObject();
      v398 = sub_10076DDBC();
      (*(v186 + 8))(v193, v187);
    }

    v154 = v384;
  }

  else
  {
    v398 = 0;
  }

  v194 = sub_1007602AC();
  if (v194)
  {
  }

  v195 = v160;
  if (qword_1009404C0 != -1)
  {
    swift_once();
  }

  v196 = qword_100956F88;
  v197 = sub_1007603DC();
  v199 = v198;
  v200 = sub_10076461C();
  v201 = sub_10042F4DC(v197, v199, v200, v194 != 0);

  v392 = v196;
  [v196 setAttributedTitle:v201 forState:0];

  v202 = v395;
  v203 = v195;
  (*(v395 + 56))(v195, 1, 1, v154);
  sub_1007710CC();
  sub_100770FCC();
  sub_100770FEC();
  v204 = v363;
  sub_100016E2C(v195, v363, &unk_10094BB80, &qword_100791CF0);
  if ((*(v202 + 48))(v204, 1, v154) == 1)
  {
    sub_10000CFBC(v204, &unk_10094BB80, &qword_100791CF0);
  }

  else
  {
    v205 = sub_1007602CC();
    (v383)(v204, v154);
    if (v205)
    {
      goto LABEL_56;
    }
  }

  if (qword_1009404F8 != -1)
  {
    swift_once();
  }

  v206 = qword_100957000;
LABEL_56:
  v207 = v194 != 0;
  sub_10077104C();
  v208 = [objc_opt_self() clearColor];
  v209 = sub_100770F5C();
  sub_10076E46C();
  v209(&v421, 0);
  v210 = sub_100770F5C();
  sub_10076E44C();
  v210(&v421, 0);
  v211 = sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  v212 = sub_100770B3C();
  *(swift_allocObject() + 16) = v212;
  v213 = v212;
  v214 = v371;
  sub_10076E8AC();
  v215 = sub_10076E89C();
  (*(*(v215 - 8) + 56))(v214, 0, 1, v215);
  sub_10077106C();
  v216 = v372;
  v217 = v373;
  v218 = v374;
  (*(v373 + 16))(v372, v159, v374);
  (*(v217 + 56))(v216, 0, 1, v218);
  v219 = v392;
  sub_10077114C();
  [v219 setNeedsUpdateConfiguration];
  [v219 setContentHorizontalAlignment:4];
  [v219 setUserInteractionEnabled:v207];
  [v219 _setWantsAccessibilityUnderline:v207];

  (*(v217 + 8))(v159, v218);
  sub_10000CFBC(v203, &unk_10094BB80, &qword_100791CF0);
  if (sub_1007602BC())
  {

    v220 = v339;
    sub_100016E2C(&v400[v389], v339, &unk_1009467E0, qword_10078CB50);
    v221 = v385;
    v222 = v397;
    v223 = (*(v385 + 48))(v220, 1, v397);
    v224 = v364;
    if (v223 == 1)
    {
      sub_10000CFBC(v220, &unk_1009467E0, qword_10078CB50);
      v225 = 0;
    }

    else
    {
      (*(v221 + 32))(v342, v220, v222);
      v226 = v340;
      sub_10076D17C();
      sub_10076D97C();
      v395 = v211;
      v227 = *(v341 + 8);
      v228 = v343;
      v227(v226, v343);
      sub_10076D17C();
      sub_10076D97C();
      v227(v226, v228);
      v229 = v342;
      sub_10076D31C();
      sub_10076DDDC();
      swift_allocObject();
      v225 = sub_10076DDBC();
      (*(v221 + 8))(v229, v397);
    }
  }

  else
  {
    v225 = 0;
    v224 = v364;
  }

  v230 = v375;
  v231 = sub_10076040C();
  v233 = v376;
  v397 = v225;
  if (v232)
  {
    v234 = HIBYTE(v232) & 0xF;
    if ((v232 & 0x2000000000000000) == 0)
    {
      v234 = v231 & 0xFFFFFFFFFFFFLL;
    }

    if (v234)
    {
      v389 = v231;
      v395 = v232;
      sub_10076D7EC();
      if (qword_1009404E0 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v233, qword_100956FC8);
      v235 = sub_10076461C();
      v236 = sub_100770B3C();

      v237 = v333;
      sub_10076D7DC();

      v238 = v224;
      v239 = v346;
      v240 = v347;
      v241 = *(v346 + 8);
      v241(v238, v347);
      v242 = v344;
      sub_10076D7AC();
      v241(v237, v240);
      v243 = v345;
      sub_10076D79C();
      v241(v242, v240);
      (*(v239 + 16))(v242, v243, v240);
      sub_10076DA5C();
      v244 = v332;
      sub_10076DA8C();
      v241(v243, v240);
      v245 = v396;
      sub_10000CFBC(v396, &unk_1009570F0, &qword_1007A2D10);
      (v381)(v244, 0, 1, v387);
      sub_100023AD0(v244, v245, &unk_1009570F0, &qword_1007A2D10);
      v230 = v375;
      v225 = v397;
    }

    else
    {
    }
  }

  v246 = sub_10076038C();
  v247 = sub_10042F6B8(v246);
  if (v249 == -1)
  {
    v420 = 0;
    v418 = 0u;
    v419 = 0u;
    v261 = v387;
  }

  else
  {
    v250 = v247;
    v251 = v248;
    if (v249)
    {
      v252 = v249;
      v253 = sub_10076461C();
      v254 = sub_100770B3C();
      v255 = [objc_opt_self() configurationWithFont:v254 scale:2];
      v256 = sub_10076FF6C();
      sub_10042F7C0(v250, v251, v252);
      v257 = [objc_opt_self() _systemImageNamed:v256 withConfiguration:v255];

      if (v257)
      {
        v258 = v257;
        [v258 size];
        v259 = sub_10076DDDC();
        swift_allocObject();
        v260 = sub_10076DDBC();
        *(&v419 + 1) = v259;
        v420 = &protocol witness table for LayoutViewPlaceholder;

        v418.n128_u64[0] = v260;
      }

      else
      {
        v420 = 0;
        v418 = 0u;
        v419 = 0u;
      }

      v230 = v375;
      v261 = v387;
    }

    else
    {
      v262 = v344;
      sub_10076D7EC();
      v263 = sub_10076461C();
      v264 = sub_100770B3C();

      sub_10076D7DC();
      (*(v346 + 8))(v262, v347);
      sub_10076DA5C();
      v265 = v331;
      sub_10076DA8C();
      sub_10076DA4C();
      v261 = v387;
      (*(v386 + 8))(v265, v387);
      v266 = *(&v422 + 1);
      v267 = v423;
      v268 = sub_10000CF78(&v421, *(&v422 + 1));
      *(&v419 + 1) = v266;
      v420 = v267[1];
      v269 = sub_10000DB7C(&v418);
      (*(*(v266 - 8) + 16))(v269, v268, v266);
      sub_10000CD74(&v421);
    }

    v225 = v397;
  }

  v421 = v418;
  v422 = v419;
  v423 = v420;
  sub_10042FA9C(v400, v393, v418);
  sub_100016E2C(v424, &v418, &unk_10094DA00, &qword_100783FA0);
  if (v391)
  {
    v270 = v391;
    if (([v270 isHidden] & 1) == 0 && objc_msgSend(v270, "hasContent"))
    {
      v271 = sub_10076313C();
      v417 = &protocol witness table for UIButton;
      *(&v416 + 1) = v271;
      *&v415 = v270;
      goto LABEL_84;
    }
  }

  v417 = 0;
  v415 = 0u;
  v416 = 0u;
LABEL_84:
  v272 = v386;
  v273 = v398;
  if (v398)
  {
    v274 = sub_10076DDDC();
    v273 = &protocol witness table for LayoutViewPlaceholder;
    v275 = v398;
  }

  else
  {
    v275 = 0;
    v274 = 0;
    v414[2] = 0;
    v414[1] = 0;
  }

  v414[0] = v275;
  v414[3] = v274;
  v414[4] = v273;
  v276 = sub_10076313C();
  v413[4] = &protocol witness table for UIButton;
  v413[3] = v276;
  v413[0] = v392;
  if (v225)
  {
    v277 = sub_10076DDDC();
    v278 = &protocol witness table for LayoutViewPlaceholder;
    v279 = v225;
  }

  else
  {
    v279 = 0;
    v277 = 0;
    v278 = 0;
    v412[2] = 0;
    v412[1] = 0;
  }

  v280 = v365;
  v412[0] = v279;
  v412[3] = v277;
  v412[4] = v278;
  sub_100016E2C(v396, v365, &unk_1009570F0, &qword_1007A2D10);
  if ((*(v272 + 48))(v280, 1, v261) == 1)
  {

    v281 = v392;
    sub_10000CFBC(v280, &unk_1009570F0, &qword_1007A2D10);
    v409 = 0u;
    v410 = 0u;
    v411 = 0;
  }

  else
  {
    *(&v410 + 1) = v261;
    v411 = &protocol witness table for LabelPlaceholder;
    v282 = sub_10000DB7C(&v409);
    (*(v272 + 32))(v282, v280, v261);

    v283 = v392;
  }

  sub_100016E2C(&v421, v408, &unk_10094DA00, &qword_100783FA0);
  sub_10042FA9C(v393, v230, v284);
  sub_100016E2C(&v418, v402, &unk_10094DA00, &qword_100783FA0);
  v285 = v403;
  if (v403)
  {
    v286 = v404;
    sub_10000CF78(v402, v403);
    v287 = sub_1007711AC();
    v288 = *(v287 - 8);
    __chkstk_darwin(v287);
    v290 = &v330 - v289;
    sub_10076D21C();
    v291 = *(v285 - 8);
    if ((*(v291 + 48))(v290, 1, v285) == 1)
    {
      (*(v288 + 8))(v290, v287);
      v407 = 0;
      v405 = 0u;
      v406 = 0u;
    }

    else
    {
      *(&v406 + 1) = v285;
      v407 = v286;
      v293 = sub_10000DB7C(&v405);
      (*(v291 + 32))(v293, v290, v285);
    }

    v292 = v390;
    sub_10000CD74(v402);
  }

  else
  {
    sub_10000CFBC(v402, &unk_10094DA00, &qword_100783FA0);
    v405 = 0u;
    v406 = 0u;
    v407 = 0;
    v292 = v390;
  }

  v294 = v230 + v292[5];
  v295 = v406;
  *v294 = v405;
  *(v294 + 16) = v295;
  *(v294 + 32) = v407;
  sub_100016E2C(&v415, v230 + v292[6], &unk_10094B230, &qword_100791150);
  sub_100016E2C(v414, v402, &unk_10094DA00, &qword_100783FA0);
  v296 = v403;
  if (v403)
  {
    v297 = v404;
    sub_10000CF78(v402, v403);
    v298 = sub_1007711AC();
    v299 = *(v298 - 8);
    __chkstk_darwin(v298);
    v301 = &v330 - v300;
    sub_10076D21C();
    v302 = *(v296 - 8);
    if ((*(v302 + 48))(v301, 1, v296) == 1)
    {
      (*(v299 + 8))(v301, v298);
      v407 = 0;
      v405 = 0u;
      v406 = 0u;
    }

    else
    {
      *(&v406 + 1) = v296;
      v407 = v297;
      v303 = sub_10000DB7C(&v405);
      (*(v302 + 32))(v303, v301, v296);
    }

    sub_10000CD74(v402);
    v292 = v390;
  }

  else
  {
    sub_10000CFBC(v402, &unk_10094DA00, &qword_100783FA0);
    v405 = 0u;
    v406 = 0u;
    v407 = 0;
  }

  v304 = v230 + v292[7];
  v305 = v406;
  *v304 = v405;
  *(v304 + 16) = v305;
  *(v304 + 32) = v407;
  sub_10000A570(v413, v230 + v292[8]);
  sub_100016E2C(v412, v402, &unk_10094DA00, &qword_100783FA0);
  v306 = v403;
  if (v403)
  {
    v307 = v404;
    sub_10000CF78(v402, v403);
    v308 = sub_1007711AC();
    v309 = *(v308 - 8);
    __chkstk_darwin(v308);
    v311 = &v330 - v310;
    sub_10076D21C();
    v312 = *(v306 - 8);
    if ((*(v312 + 48))(v311, 1, v306) == 1)
    {
      (*(v309 + 8))(v311, v308);
      v407 = 0;
      v405 = 0u;
      v406 = 0u;
    }

    else
    {
      *(&v406 + 1) = v306;
      v407 = v307;
      v313 = sub_10000DB7C(&v405);
      (*(v312 + 32))(v313, v311, v306);
    }

    sub_10000CD74(v402);
    v292 = v390;
  }

  else
  {
    sub_10000CFBC(v402, &unk_10094DA00, &qword_100783FA0);
    v405 = 0u;
    v406 = 0u;
    v407 = 0;
  }

  v314 = v230 + v292[9];
  v315 = v406;
  *v314 = v405;
  *(v314 + 16) = v315;
  *(v314 + 32) = v407;
  sub_100016E2C(&v409, v230 + v292[10], &unk_10094B230, &qword_100791150);
  sub_100016E2C(v408, v402, &unk_10094DA00, &qword_100783FA0);
  v316 = v403;
  if (v403)
  {
    v317 = v230;
    v318 = v404;
    sub_10000CF78(v402, v403);
    v319 = sub_1007711AC();
    v320 = *(v319 - 8);
    __chkstk_darwin(v319);
    v322 = &v330 - v321;
    sub_10076D21C();
    v323 = *(v316 - 8);
    if ((*(v323 + 48))(v322, 1, v316) == 1)
    {
      sub_10000CFBC(v408, &unk_10094DA00, &qword_100783FA0);
      sub_10000CFBC(&v418, &unk_10094DA00, &qword_100783FA0);
      sub_10042FB00(v393, type metadata accessor for ShelfHeaderLayout.Metrics);
      sub_10000CFBC(&v409, &unk_10094B230, &qword_100791150);
      sub_10000CFBC(v412, &unk_10094DA00, &qword_100783FA0);
      sub_10000CD74(v413);
      sub_10000CFBC(v414, &unk_10094DA00, &qword_100783FA0);
      sub_10000CFBC(&v415, &unk_10094B230, &qword_100791150);
      (*(v320 + 8))(v322, v319);
      v407 = 0;
      v405 = 0u;
      v406 = 0u;
    }

    else
    {
      *(&v406 + 1) = v316;
      v407 = v318;
      v324 = sub_10000DB7C(&v405);
      (*(v323 + 32))(v324, v322, v316);
      sub_10000CFBC(v408, &unk_10094DA00, &qword_100783FA0);
      sub_10000CFBC(&v418, &unk_10094DA00, &qword_100783FA0);
      sub_10042FB00(v393, type metadata accessor for ShelfHeaderLayout.Metrics);
      sub_10000CFBC(&v409, &unk_10094B230, &qword_100791150);
      sub_10000CFBC(v412, &unk_10094DA00, &qword_100783FA0);
      sub_10000CD74(v413);
      sub_10000CFBC(v414, &unk_10094DA00, &qword_100783FA0);
      sub_10000CFBC(&v415, &unk_10094B230, &qword_100791150);
    }

    sub_10000CD74(v402);
    v292 = v390;
    v230 = v317;
  }

  else
  {
    sub_10000CFBC(v408, &unk_10094DA00, &qword_100783FA0);
    sub_10000CFBC(&v418, &unk_10094DA00, &qword_100783FA0);
    sub_10042FB00(v393, type metadata accessor for ShelfHeaderLayout.Metrics);
    sub_10000CFBC(&v409, &unk_10094B230, &qword_100791150);
    sub_10000CFBC(v412, &unk_10094DA00, &qword_100783FA0);
    sub_10000CD74(v413);
    sub_10000CFBC(v414, &unk_10094DA00, &qword_100783FA0);
    sub_10000CFBC(&v415, &unk_10094B230, &qword_100791150);
    sub_10000CFBC(v402, &unk_10094DA00, &qword_100783FA0);
    v405 = 0u;
    v406 = 0u;
    v407 = 0;
  }

  v325 = v230 + v292[11];
  v326 = v406;
  *v325 = v405;
  *(v325 + 16) = v326;
  *(v325 + 32) = v407;
  v327 = v367;
  sub_100430314(v230, v367, type metadata accessor for ShelfHeaderLayout);
  v328 = sub_10076461C();
  ShelfHeaderLayout.measure(toFit:with:)(v328, v158, v366);

  sub_10042FB00(v327, type metadata accessor for ShelfHeaderLayout);
  sub_10000CFBC(&v421, &unk_10094DA00, &qword_100783FA0);
  sub_10000CFBC(v424, &unk_10094DA00, &qword_100783FA0);
  sub_10000CFBC(v396, &unk_1009570F0, &qword_1007A2D10);
  sub_10042FB00(v400, type metadata accessor for ShelfHeaderLayout.Metrics);
  return v158;
}

uint64_t sub_1004267C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v220 = a5;
  v233 = *&a3;
  v234 = a2;
  ObjectType = swift_getObjectType();
  v228 = sub_10076F9AC();
  v227 = *(v228 - 8);
  __chkstk_darwin(v228);
  v226 = &v206 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v224 = &v206 - v11;
  __chkstk_darwin(v12);
  v225 = &v206 - v13;
  v223 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v222 = *(v223 - 8);
  __chkstk_darwin(v223);
  v221 = &v206 - v14;
  v15 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v15 - 8);
  v242 = &v206 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v238 = &v206 - v18;
  v237 = sub_10000A5D4(&qword_1009570E0, &qword_1007A2C80);
  __chkstk_darwin(v237);
  v241 = &v206 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v240 = &v206 - v21;
  __chkstk_darwin(v22);
  v239 = &v206 - v23;
  __chkstk_darwin(v24);
  v247 = &v206 - v25;
  __chkstk_darwin(v26);
  v246 = &v206 - v27;
  __chkstk_darwin(v28);
  v245 = &v206 - v29;
  v215 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  __chkstk_darwin(v215);
  v216 = &v206 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10000A5D4(&unk_10094BB80, &qword_100791CF0);
  __chkstk_darwin(v31 - 8);
  v213 = &v206 - v32;
  v232 = sub_10076469C();
  v33 = *(v232 - 1);
  __chkstk_darwin(v232);
  v229 = v34;
  v230 = &v206 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10000A5D4(&qword_100944538, &unk_100786650);
  __chkstk_darwin(v35 - 8);
  *&v207 = &v206 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v208 = &v206 - v38;
  __chkstk_darwin(v39);
  v236 = &v206 - v40;
  __chkstk_darwin(v41);
  v235 = &v206 - v42;
  __chkstk_darwin(v43);
  v45 = &v206 - v44;
  v46 = sub_10076037C();
  sub_1007603AC();
  sub_10042D190(v46, v45, &OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowArtwork, &OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowArtworkView, &OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowArtworkType);

  sub_10000CFBC(v45, &qword_100944538, &unk_100786650);
  v243 = *&v5[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowButton];
  v47 = sub_1007603FC();
  v49 = v48;
  v244 = a4;
  v50 = sub_10076461C();
  v51 = sub_1007603CC();
  v231 = a1;
  if (v51)
  {
    if (qword_100940490 != -1)
    {
      swift_once();
    }

    v52 = [qword_100956F58 configurationWithTraitCollection:v50];
    v53 = sub_10076044C();
  }

  else
  {
    v53 = 0;
  }

  v54 = sub_10042F1BC(v47, v49, v50, v53);

  [v243 setAttributedTitle:v54 forState:0];

  v55 = sub_1007602BC();
  sub_10076039C();
  sub_10042D190(v55, v45, &OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleArtwork, &OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleArtworkView, &OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleArtworkType);

  sub_10000CFBC(v45, &qword_100944538, &unk_100786650);
  v56 = *&v5[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleButton];
  v57 = sub_1007603DC();
  v59 = v58;
  v60 = v244;
  v61 = sub_10076461C();
  v62 = sub_1007602AC();
  if (v62)
  {
  }

  v63 = sub_10042F4DC(v57, v59, v61, v62 != 0);

  v218 = v56;
  [v56 setAttributedTitle:v63 forState:0];

  v64 = *&v6[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_subtitleLabel];
  sub_10076040C();
  if (v65)
  {
    v66 = sub_10076FF6C();
  }

  else
  {
    v66 = 0;
  }

  v219 = v64;
  [v64 setText:v66];

  v67 = sub_10076038C();
  v68 = sub_10042F6B8(v67);
  if (v70 == -1)
  {
    v82 = *&v6[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_accessoryButton];
    [v82 setTitle:0 forState:0];
    v217 = v82;
    [v82 setImage:0 forState:0];
  }

  else
  {
    v71 = v70;
    v72 = *&v6[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_accessoryButton];
    v217 = v72;
    if (v70)
    {
      v73 = v68;
      v74 = v69;
      [v72 setTitle:0 forState:0];
      v75 = v72;
      v76 = sub_10076461C();
      sub_100016F40(0, &qword_100942F00, UIFont_ptr);
      if (qword_1009404E8 != -1)
      {
        swift_once();
      }

      v77 = sub_10076D3DC();
      sub_10000A61C(v77, qword_100956FE0);
      v78 = sub_100770B3C();
      v79 = [objc_opt_self() configurationWithFont:v78 scale:2];
      v80 = sub_10076FF6C();
      sub_10042F7C0(v73, v74, v71);
      v81 = [objc_opt_self() _systemImageNamed:v80 withConfiguration:v79];

      [v75 setImage:v81 forState:0];
      v60 = v244;
    }

    else
    {
      v83 = v72;
      v84 = v68;
      v85 = v69;
      v86 = sub_10076FF6C();
      [v83 setTitle:v86 forState:{0, sub_10042F7C0(v84, v85, v71)}];

      [v83 setImage:0 forState:0];
    }
  }

  v87 = sub_1007602AC();
  if (v87)
  {
    v88 = swift_allocObject();
    *(v88 + 24) = v233;
    swift_unknownObjectWeakInit();
    v89 = v230;
    v90 = v232;
    (*(v33 + 16))(v230, v60, v232);
    v91 = (*(v33 + 80) + 24) & ~*(v33 + 80);
    v92 = swift_allocObject();
    *(v92 + 16) = v88;
    (*(v33 + 32))(v92 + v91, v89, v90);

    v87 = swift_allocObject();
    *(v87 + 16) = sub_10042FA2C;
    *(v87 + 24) = v92;
    v93 = sub_10043045C;
  }

  else
  {
    v93 = 0;
  }

  v94 = &v6[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleAction];
  v96 = *&v6[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleAction];
  v95 = *&v6[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleAction + 8];
  *v94 = v93;
  v94[1] = v87;
  sub_1000167E0(v96, v95);
  v97 = sub_10076038C();
  if (v97)
  {
    v98 = swift_allocObject();
    *(v98 + 24) = v233;
    swift_unknownObjectWeakInit();
    v99 = v230;
    v100 = v232;
    (*(v33 + 16))(v230, v60, v232);
    v101 = (*(v33 + 80) + 24) & ~*(v33 + 80);
    v102 = swift_allocObject();
    *(v102 + 16) = v98;
    (*(v33 + 32))(v102 + v101, v99, v100);

    v97 = swift_allocObject();
    *(v97 + 16) = sub_10042F99C;
    *(v97 + 24) = v102;
    v103 = sub_10043045C;
  }

  else
  {
    v103 = 0;
  }

  v104 = &v6[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_accessoryAction];
  v106 = *&v6[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_accessoryAction];
  v105 = *&v6[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_accessoryAction + 8];
  *v104 = v103;
  v104[1] = v97;
  sub_1000167E0(v106, v105);
  v107 = sub_10076036C();
  if (v107)
  {
    v108 = swift_allocObject();
    *(v108 + 24) = v233;
    swift_unknownObjectWeakInit();
    v109 = v230;
    v110 = v232;
    (*(v33 + 16))(v230, v60, v232);
    v111 = (*(v33 + 80) + 24) & ~*(v33 + 80);
    v112 = swift_allocObject();
    *(v112 + 16) = v108;
    (*(v33 + 32))(v112 + v111, v109, v110);

    v107 = swift_allocObject();
    *(v107 + 16) = sub_10042F94C;
    *(v107 + 24) = v112;
    v113 = sub_100098284;
  }

  else
  {
    v113 = 0;
  }

  v114 = &v6[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowAction];
  v116 = *&v6[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowAction];
  v115 = *&v6[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowAction + 8];
  *v114 = v113;
  v114[1] = v107;
  sub_1000167E0(v116, v115);
  v117 = v213;
  sub_10076035C();
  v118 = sub_10076034C();
  (*(*(v118 - 8) + 56))(v117, 0, 1, v118);
  v119 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_configuration;
  swift_beginAccess();
  sub_10042F7E0(v117, &v6[v119]);
  swift_endAccess();
  sub_10042AFC4();
  sub_10000CFBC(v117, &unk_10094BB80, &qword_100791CF0);
  v120 = *&v6[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowArtwork];
  v121 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowArtworkType;
  swift_beginAccess();
  v122 = v235;
  sub_100016E2C(&v6[v121], v235, &qword_100944538, &unk_100786650);
  v123 = *&v6[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleArtwork];
  v124 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleArtworkType;
  swift_beginAccess();
  v125 = v236;
  sub_100016E2C(&v6[v124], v236, &qword_100944538, &unk_100786650);
  v229 = v123;

  v234 = v120;

  sub_10042E840();
  v230 = v6;
  v126 = [v6 traitCollection];
  if (qword_1009404D0 != -1)
  {
    swift_once();
  }

  v127 = sub_10076D3DC();
  sub_10000A61C(v127, qword_100956F98);
  v128.super.isa = v126;
  isa = sub_10076D3BC(v128).super.isa;
  [(objc_class *)isa pointSize];
  v131 = v130;
  v132 = objc_opt_self();
  v211 = isa;
  v212 = [v132 fontWithDescriptor:isa size:v131];
  [v212 lineHeight];
  v213 = v133;
  v134 = v237;
  sub_100428694(v245, v245 + *(v237 + 48), v122);
  if (qword_1009404D8 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v127, qword_100956FB0);
  v135.super.isa = v126;
  v136 = sub_10076D3BC(v135).super.isa;
  [(objc_class *)v136 pointSize];
  v209 = v136;
  v210 = [v132 fontWithDescriptor:v136 size:?];
  [v210 lineHeight];
  v233 = v137;
  sub_100428CF8(v246, v246 + *(v134 + 48), v125);
  v232 = v126;
  v138 = [(objc_class *)v126 preferredContentSizeCategory];
  v139 = sub_10077085C();

  if ((v139 & 1) == 0 || (v140 = 0.0, UIAccessibilityButtonShapesEnabled()))
  {
    v141 = v208;
    sub_100016E2C(v125, v208, &qword_100944538, &unk_100786650);
    v142 = sub_10076029C();
    v143 = *(v142 - 8);
    v140 = 7.0;
    if ((*(v143 + 48))(v141, 1, v142) != 1)
    {
      v144 = v207;
      sub_100016E2C(v141, v207, &qword_100944538, &unk_100786650);
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

    sub_10000CFBC(v141, &qword_100944538, &unk_100786650);
  }

  ObjectType = *&v140;
  if (qword_1009404E8 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v127, qword_100956FE0);
  v146.super.isa = v232;
  v147.super.isa = sub_10076D3BC(v146).super.isa;
  [(objc_class *)v147.super.isa pointSize];
  v148 = [v132 fontWithDescriptor:v147.super.isa size:?];
  [v148 lineHeight];
  v150 = v149;
  sub_1007704EC();
  v208 = v151;
  v153 = v152;
  v155 = v154;
  v157 = v156;
  sub_1007704EC();
  v159 = v158;
  v161 = v160;
  v163 = v162;
  v165 = v164;
  v166 = v245;
  sub_100016E2C(v245, v247, &qword_1009570E0, &qword_1007A2C80);
  sub_100016E2C(v166, v239, &qword_1009570E0, &qword_1007A2C80);
  if (v234)
  {
    sub_10076BEFC();
    v167 = v238;
    sub_10076D3AC();
    v168 = 0;
  }

  else
  {
    v168 = 1;
    v167 = v238;
  }

  v169 = v233 - v150;
  v170 = sub_10076D39C();
  v171 = *(*(v170 - 8) + 56);
  v171(v167, v168, 1, v170);
  v172 = *&UIEdgeInsetsZero.top;
  v206 = *&UIEdgeInsetsZero.bottom;
  v207 = v172;
  v173 = v246;
  sub_100016E2C(v246, v240, &qword_1009570E0, &qword_1007A2C80);
  sub_100016E2C(v173, v241, &qword_1009570E0, &qword_1007A2C80);
  if (v229)
  {
    sub_10076BEFC();
    v174 = v242;
    sub_10076D3AC();

    v175 = 0;
  }

  else
  {

    v175 = 1;
    v174 = v242;
  }

  v176 = v235;

  sub_10000CFBC(v246, &qword_1009570E0, &qword_1007A2C80);
  sub_10000CFBC(v245, &qword_1009570E0, &qword_1007A2C80);
  sub_10000CFBC(v236, &qword_100944538, &unk_100786650);
  sub_10000CFBC(v176, &qword_100944538, &unk_100786650);
  v171(v174, v175, 1, v170);
  v177 = *(v237 + 48);
  v178 = v215;
  v179 = *(v215 + 40);
  v180 = v216;
  v171(&v216[v179], 1, 1, v170);
  v246 = v178[15];
  v171(&v180[v246], 1, 1, v170);
  *v180 = v208;
  *(v180 + 1) = v153;
  *(v180 + 2) = v155;
  *(v180 + 3) = v157;
  *(v180 + 4) = v213;
  *(v180 + 5) = v159;
  *(v180 + 6) = v161;
  *(v180 + 7) = v163;
  *(v180 + 8) = v165;
  v181 = v178[7];
  v182 = sub_10076D9AC();
  v183 = *(v182 - 8);
  v184 = *(v183 + 32);
  v184(&v180[v181], v247, v182);
  v185 = v239;
  v184(&v180[v178[8]], v239 + v177, v182);
  *&v180[v178[9]] = 0x4008000000000000;
  sub_10003837C(v238, &v180[v179], &unk_1009467E0, qword_10078CB50);
  *&v180[v178[11]] = v233;
  v186 = &v180[v178[12]];
  v187 = v206;
  *v186 = v207;
  *(v186 + 1) = v187;
  v188 = v240;
  v184(&v180[v178[13]], v240, v182);
  v189 = v241;
  v184(&v180[v178[14]], v241 + v177, v182);
  sub_10003837C(v242, &v180[v246], &unk_1009467E0, qword_10078CB50);
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
  v191(v247 + v177, v182);
  v192 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_metrics;
  v193 = v230;
  swift_beginAccess();
  sub_10042F850(v180, &v193[v192], v194);
  swift_endAccess();
  sub_100760C4C();
  sub_10076F64C();
  sub_10076FC1C();
  sub_10042D630();

  if (sub_1007602AC())
  {

    v195 = sub_10076036C();
    v196 = v224;
    if (v195 || sub_10076038C())
    {

      v197 = 0;
    }

    else
    {
      v197 = 1;
    }
  }

  else
  {
    v197 = 0;
    v196 = v224;
  }

  v193[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_shouldHighlightEntireView] = v197;
  [*&v193[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_containerView] setUserInteractionEnabled:v197 ^ 1u];
  v198 = v221;
  sub_10076468C();
  swift_getKeyPath();
  v199 = v223;
  sub_10076F49C();

  (*(v222 + 8))(v198, v199);
  v251 = 0u;
  v250 = 0u;
  v249 = &type metadata for AnyHashable;
  v248 = swift_allocObject();
  sub_10008C3EC(&v252, v248 + 16);
  sub_10076F97C();
  sub_10000CFBC(&v250, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v248, &unk_1009434C0, &qword_100783F60);
  v200 = sub_1007602AC();
  if (v200)
  {
  }

  *(&v251 + 1) = &type metadata for Bool;
  LOBYTE(v250) = v200 != 0;
  v201 = v225;
  sub_10076F98C();
  v202 = *(v227 + 8);
  v203 = v228;
  v202(v196, v228);
  sub_10000CFBC(&v250, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();
  v202(v201, v203);
  v251 = 0u;
  v250 = 0u;
  v249 = &type metadata for AnyHashable;
  v248 = swift_allocObject();
  sub_10008C3EC(&v252, v248 + 16);
  v204 = v226;
  sub_10076F97C();
  sub_10000CFBC(&v250, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v248, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();
  v202(v204, v203);
  v251 = 0u;
  v250 = 0u;
  v249 = &type metadata for AnyHashable;
  v248 = swift_allocObject();
  sub_10008C3EC(&v252, v248 + 16);
  sub_10076F97C();
  sub_10000CFBC(&v250, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v248, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();
  v202(v204, v203);
  v251 = 0u;
  v250 = 0u;
  v249 = &type metadata for AnyHashable;
  v248 = swift_allocObject();
  sub_10008C3EC(&v252, v248 + 16);
  sub_10076F97C();
  sub_10000CFBC(&v250, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v248, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();
  v202(v204, v203);
  v251 = 0u;
  v250 = 0u;
  v249 = &type metadata for AnyHashable;
  v248 = swift_allocObject();
  sub_10008C3EC(&v252, v248 + 16);
  sub_10076F97C();
  sub_10000CFBC(&v250, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v248, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();
  v202(v204, v203);
  v251 = 0u;
  v250 = 0u;
  v249 = &type metadata for AnyHashable;
  v248 = swift_allocObject();
  sub_10008C3EC(&v252, v248 + 16);
  sub_10076F97C();
  sub_10000CFBC(&v250, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v248, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();
  v202(v204, v203);
  [v193 setNeedsLayout];
  return sub_100016C74(&v252);
}

uint64_t sub_100428694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10076D1AC();
  v52 = *(v6 - 8);
  __chkstk_darwin(v6);
  v51 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&qword_100944538, &unk_100786650);
  __chkstk_darwin(v8 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  v14 = sub_10000A5D4(&qword_1009570E0, &qword_1007A2C80);
  __chkstk_darwin(v14);
  v16 = &v45 - v15;
  sub_100016E2C(a3, v13, &qword_100944538, &unk_100786650);
  v17 = sub_10076029C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v55 = v13;
  v20 = v19(v13, 1, v17);
  v53 = a1;
  v54 = a2;
  if (v20 != 1)
  {
    sub_100016E2C(v55, v10, &qword_100944538, &unk_100786650);
    if ((*(v18 + 88))(v10, v17) == enum case for ShelfHeader.ArtworkType.category(_:))
    {
      v21 = v14;
      v50 = *(v14 + 48);
      if (qword_1009404D0 != -1)
      {
        swift_once();
      }

      v22 = sub_10076D3DC();
      v48 = sub_10000A61C(v22, qword_100956F98);
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
      v26 = sub_10000DB7C(v56);
      v27 = *(v25 + 16);
      v27(v26, v24, v6);
      sub_10076D9BC();
      v28 = *(v25 + 8);
      v28(v24, v6);
      v47(v24, v48, v22);
      (v45)(v24, v46, v6);
      v57 = v6;
      v58 = &protocol witness table for FontSource;
      v29 = sub_10000DB7C(v56);
      v27(v29, v24, v6);
      sub_10076D9BC();
      v28(v24, v6);
      v31 = v53;
      v30 = v54;
      goto LABEL_10;
    }

    (*(v18 + 8))(v10, v17);
  }

  v49 = *(v14 + 48);
  v50 = v14;
  if (qword_1009404D0 != -1)
  {
    swift_once();
  }

  v32 = sub_10076D3DC();
  v47 = sub_10000A61C(v32, qword_100956F98);
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
  v37 = sub_10000DB7C(v56);
  v38 = *(v36 + 16);
  v38(v37, v34, v6);
  sub_10076D9BC();
  v39 = *(v36 + 8);
  v39(v34, v6);
  v46(v34, v47, v32);
  (v45)(v34, v35, v6);
  v57 = v6;
  v58 = &protocol witness table for FontSource;
  v40 = sub_10000DB7C(v56);
  v38(v40, v34, v6);
  sub_10076D9BC();
  v39(v34, v6);
  v31 = v53;
  v30 = v54;
  v21 = v50;
LABEL_10:
  sub_10000CFBC(v55, &qword_100944538, &unk_100786650);
  v41 = *(v21 + 48);
  v42 = sub_10076D9AC();
  v43 = *(*(v42 - 8) + 32);
  v43(v31, v16, v42);
  return (v43)(v30, &v16[v41], v42);
}

uint64_t sub_100428CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10076D1AC();
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&qword_100944538, &unk_100786650);
  __chkstk_darwin(v9 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v47 - v13;
  v15 = sub_10000A5D4(&qword_1009570E0, &qword_1007A2C80);
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  sub_100016E2C(a3, v14, &qword_100944538, &unk_100786650);
  v18 = sub_10076029C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v57 = v14;
  v21 = v20(v14, 1, v18);
  v55 = a1;
  v56 = a2;
  if (v21 != 1)
  {
    sub_100016E2C(v57, v11, &qword_100944538, &unk_100786650);
    if ((*(v19 + 88))(v11, v18) == enum case for ShelfHeader.ArtworkType.category(_:))
    {
      v22 = v17;
      v23 = v15;
      v52 = *(v15 + 48);
      if (qword_1009404D8 != -1)
      {
        swift_once();
      }

      v24 = sub_10076D3DC();
      v50 = sub_10000A61C(v24, qword_100956FB0);
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
      v28 = sub_10000DB7C(v58);
      v29 = *(v27 + 16);
      v29(v28, v8, v26);
      sub_10076D9BC();
      v30 = *(v27 + 8);
      v30(v8, v26);
      v49(v8, v50, v24);
      (v47)(v8, v48, v26);
      v59 = v26;
      v60 = &protocol witness table for FontSource;
      v31 = sub_10000DB7C(v58);
      v29(v31, v8, v26);
      sub_10076D9BC();
      v30(v8, v26);
      v33 = v55;
      v32 = v56;
      goto LABEL_10;
    }

    (*(v19 + 8))(v11, v18);
  }

  v51 = *(v15 + 48);
  v52 = v15;
  if (qword_1009404D8 != -1)
  {
    swift_once();
  }

  v34 = sub_10076D3DC();
  v49 = sub_10000A61C(v34, qword_100956FB0);
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
  v39 = sub_10000DB7C(v58);
  v40 = *(v37 + 16);
  v40(v39, v8, v38);
  sub_10076D9BC();
  v41 = *(v37 + 8);
  v41(v8, v38);
  v48(v8, v49, v34);
  (v47)(v8, v36, v38);
  v59 = v38;
  v60 = &protocol witness table for FontSource;
  v42 = sub_10000DB7C(v58);
  v40(v42, v8, v38);
  sub_10076D9BC();
  v41(v8, v38);
  v22 = v17;
  v33 = v55;
  v32 = v56;
  v23 = v52;
LABEL_10:
  sub_10000CFBC(v57, &qword_100944538, &unk_100786650);
  v43 = *(v23 + 48);
  v44 = sub_10076D9AC();
  v45 = *(*(v44 - 8) + 32);
  v45(v33, v22, v44);
  return (v45)(v32, &v22[v43], v44);
}

id sub_10042934C()
{
  result = [objc_opt_self() configurationWithScale:1];
  qword_100956F58 = result;
  return result;
}

void sub_100429400(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = objc_allocWithZone(NSAttributedString);
  v6 = sub_10076FF6C();
  v7 = [v5 initWithString:v6];

  *a4 = v7;
}

uint64_t sub_1004294C8(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v8 = sub_10076D3DC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076313C();
  if (*a2 != -1)
  {
    swift_once();
  }

  v12 = sub_10000A61C(v8, a3);
  (*(v9 + 16))(v11, v12, v8);
  result = sub_10076312C();
  *a4 = result;
  return result;
}

id sub_100429648(uint64_t a1, uint64_t *a2, id *a3, int a4)
{
  v7 = sub_10076D3DC();
  sub_10000DB18(v7, a2);
  v8 = sub_10000A61C(v7, a2);
  v10 = *a3;
  *v8 = *a3;
  *(v8 + 8) = a4;
  (*(*(v7 - 8) + 104))();

  return v10;
}

id sub_100429738(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

char *sub_10042977C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v182 = a4;
  v181 = a3;
  v180 = a2;
  v179 = a1;
  ObjectType = swift_getObjectType();
  v6 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v6 - 8);
  v189 = &v161 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v186 = &v161 - v9;
  v185 = sub_10000A5D4(&qword_1009570E0, &qword_1007A2C80);
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
  v21 = sub_10000A5D4(&qword_100944538, &unk_100786650);
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
  top = COERCE_DOUBLE(sub_10076771C());
  v173 = *(*&top - 8);
  __chkstk_darwin(*&top);
  *&v175 = &v161 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v31 - 8);
  v172 = &v161 - v32;
  v33 = sub_10076D3DC();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v191 = &v161 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10076E1EC();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v161 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10076E21C();
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v43 = &v161 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_containerView;
  *&v5[v44] = [objc_allocWithZone(UIView) init];
  v183 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_separatorView;
  (*(v37 + 104))(v39, enum case for Separator.Position.top(_:), v36);
  v199 = sub_10076D67C();
  v200 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v198);
  sub_10076D66C();
  sub_10076E1FC();
  v45 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v46 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
  swift_beginAccess();
  v47 = *(v41 + 40);
  v48 = v45;
  v47(&v45[v46], v43, v40);
  swift_endAccess();

  *(v183 + v5) = v48;
  v49 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowButton;
  sub_10076313C();
  if (qword_1009404D0 != -1)
  {
    swift_once();
  }

  v50 = sub_10000A61C(v33, qword_100956F98);
  v171 = v34;
  v51 = *(v34 + 16);
  v169 = *&v50;
  v183 = v51;
  (v51)(v191);
  *&v5[v49] = sub_10076312C();
  v167 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowArtwork;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowArtwork] = 0;
  v52 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowArtworkType;
  v53 = sub_10076029C();
  v164 = *(v53 - 8);
  v54 = *(v164 + 56);
  v168 = v52;
  v54(&v52[v5], 1, 1, v53);
  v55 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowArtworkView;
  sub_10075FD2C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v5[v55] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v57 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleButton;
  if (qword_1009404D8 != -1)
  {
    swift_once();
  }

  v166 = sub_10000A61C(v33, qword_100956FB0);
  (v183)(v191);
  *&v5[v57] = sub_10076312C();
  v165 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleArtwork;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleArtwork] = 0;
  v58 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleArtworkType;
  v162 = v53;
  v54(&v5[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleArtworkType], 1, 1, v53);
  v59 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleArtworkView;
  *&v5[v59] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v60 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_accessoryButton;
  if (qword_1009404E8 != -1)
  {
    swift_once();
  }

  v170 = sub_10000A61C(v33, qword_100956FE0);
  v61 = v183;
  (v183)(v191);
  *&v5[v60] = sub_10076312C();
  v62 = &v5[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleAction];
  *v62 = 0;
  *(v62 + 1) = 0;
  v63 = &v5[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_accessoryAction];
  *v63 = 0;
  *(v63 + 1) = 0;
  v64 = &v5[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowAction];
  *v64 = 0;
  *(v64 + 1) = 0;
  v65 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_subtitleLabel;
  v66 = v185;
  v67 = v171;
  v68 = v61;
  if (qword_1009404E0 != -1)
  {
    swift_once();
  }

  v69 = sub_10000A61C(v33, qword_100956FC8);
  v70 = v172;
  (v68)(v172, v69, v33);
  (*(v67 + 56))(v70, 0, 1, v33);
  (*(*&v173 + 104))(COERCE_CGFLOAT(*&v175), enum case for DirectionalTextAlignment.none(_:), COERCE_CGFLOAT(*&top));
  v71 = objc_allocWithZone(sub_1007626BC());
  *&v5[v65] = sub_1007626AC();
  v72 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_configuration;
  v73 = sub_10076034C();
  (*(*(v73 - 8) + 56))(&v5[v72], 1, 1, v73);
  v5[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_shouldHighlightEntireView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_currentTouch] = 0;
  v74 = *&v167[v5];
  v75 = v168;
  swift_beginAccess();
  v76 = v184;
  sub_100016E2C(v75 + v5, v184, &qword_100944538, &unk_100786650);
  v77 = *&v165[v5];
  swift_beginAccess();
  sub_100016E2C(&v5[v58], v196, &qword_100944538, &unk_100786650);
  v78 = objc_opt_self();
  v171 = v77;

  v191 = v74;

  v79.super.isa = [v78 currentTraitCollection];
  isa = v79.super.isa;
  bottom = UIEdgeInsetsZero.bottom;
  v82 = sub_10076D3BC(v79).super.isa;
  [(objc_class *)v82 pointSize];
  v84 = v83;
  v85 = objc_opt_self();
  v167 = v82;
  v168 = [v85 fontWithDescriptor:v82 size:v84];
  [v168 lineHeight];
  v172 = v86;
  sub_100428694(v192, v192 + *(v66 + 48), v76);
  v87.super.isa = isa;
  v88 = sub_10076D3BC(v87).super.isa;
  [(objc_class *)v88 pointSize];
  v165 = v88;
  v166 = [v85 fontWithDescriptor:v88 size:?];
  [v166 lineHeight];
  v173 = v89;
  sub_100428CF8(v193, v193 + *(v66 + 48), v196);
  v183 = isa;
  v90 = [(objc_class *)isa preferredContentSizeCategory];
  LOBYTE(v76) = sub_10077085C();

  if ((v76 & 1) == 0 || (v91 = 0.0, UIAccessibilityButtonShapesEnabled()))
  {
    v92 = v163;
    sub_100016E2C(v196, v163, &qword_100944538, &unk_100786650);
    v93 = v164;
    v94 = v162;
    v91 = 7.0;
    if ((*(v164 + 48))(v92, 1, v162) != 1)
    {
      v95 = v161;
      sub_100016E2C(v92, v161, &qword_100944538, &unk_100786650);
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

    sub_10000CFBC(v92, &qword_100944538, &unk_100786650);
  }

  v169 = v91;
  v97.super.isa = v183;
  v98.super.isa = sub_10076D3BC(v97).super.isa;
  [(objc_class *)v98.super.isa pointSize];
  v99 = [v85 fontWithDescriptor:v98.super.isa size:?];
  [v99 lineHeight];
  v101 = v100;
  top = UIEdgeInsetsZero.top;
  sub_1007704EC();
  v170 = v102;
  v164 = v103;
  v163 = v104;
  v162 = v105;
  sub_1007704EC();
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v113 = v112;
  v114 = v192;
  sub_100016E2C(v192, v194, &qword_1009570E0, &qword_1007A2C80);
  sub_100016E2C(v114, v195, &qword_1009570E0, &qword_1007A2C80);
  v175 = bottom;
  if (v191)
  {
    sub_10076BEFC();
    v115 = v186;
    sub_10076D3AC();
    v116 = 0;
  }

  else
  {
    v116 = 1;
    v115 = v186;
  }

  v117 = sub_10076D39C();
  v118 = *(*(v117 - 8) + 56);
  v118(v115, v116, 1, v117);
  left = UIEdgeInsetsZero.left;
  right = UIEdgeInsetsZero.right;
  v121 = v193;
  sub_100016E2C(v193, v187, &qword_1009570E0, &qword_1007A2C80);
  sub_100016E2C(v121, v188, &qword_1009570E0, &qword_1007A2C80);
  v178 = v5;
  if (v171)
  {
    sub_10076BEFC();
    v122 = v189;
    sub_10076D3AC();

    v123 = 0;
  }

  else
  {

    v123 = 1;
    v122 = v189;
  }

  v124 = v185;

  sub_10000CFBC(v193, &qword_1009570E0, &qword_1007A2C80);
  sub_10000CFBC(v192, &qword_1009570E0, &qword_1007A2C80);
  sub_10000CFBC(v196, &qword_100944538, &unk_100786650);
  sub_10000CFBC(v184, &qword_100944538, &unk_100786650);
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
  v134 = sub_10076D9AC();
  v135 = *(v134 - 8);
  v136 = *(v135 + 32);
  v136(v130 + v133, v194, v134);
  v136(v130 + v128[8], v195 + v127, v134);
  *(v130 + v128[9]) = 0x4008000000000000;
  sub_10003837C(v186, v130 + v129, &unk_1009467E0, qword_10078CB50);
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
  sub_10003837C(v189, v130 + v196, &unk_1009467E0, qword_10078CB50);
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
  sub_100430314(v130, &v178[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_metrics], type metadata accessor for ShelfHeaderLayout.Metrics);
  v143 = ObjectType;
  v197.receiver = v142;
  v197.super_class = ObjectType;
  v144 = objc_msgSendSuper2(&v197, "initWithFrame:", v179, v180, v181, v182);
  v145 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleButton;
  v146 = *&v144[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleButton];
  sub_100016F40(0, &qword_1009641D0, UIAction_ptr);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v147 = v144;
  v148 = v146;
  v149 = sub_100770F1C();
  [v148 addAction:v149 forControlEvents:0x2000];

  v150 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_accessoryButton;
  v151 = *&v147[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_accessoryButton];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v152 = v151;
  v153 = sub_100770F1C();
  [v152 addAction:v153 forControlEvents:0x2000];

  v154 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowButton;
  v155 = *&v147[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowButton];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v156 = v155;
  v157 = sub_100770F1C();
  [v156 addAction:v157 forControlEvents:0x2000];

  v158 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_containerView;
  [*&v147[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_containerView] addSubview:*&v147[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_separatorView]];
  [*&v147[v158] addSubview:*&v147[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowArtworkView]];
  [*&v147[v158] addSubview:*&v147[v154]];
  [*&v147[v158] addSubview:*&v147[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleArtworkView]];
  [*&v147[v158] addSubview:*&v144[v145]];
  [*&v147[v158] addSubview:*&v147[v150]];
  [*&v147[v158] addSubview:*&v147[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_subtitleLabel]];
  [v147 addSubview:*&v147[v158]];
  sub_10042AFC4();
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v159 = swift_allocObject();
  *(v159 + 16) = xmmword_100784500;
  *(v159 + 32) = sub_10076E88C();
  *(v159 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v159 + 48) = sub_10076E3FC();
  *(v159 + 56) = &protocol witness table for UITraitLegibilityWeight;
  v199 = v143;
  v198 = v147;
  sub_100770C5C();
  swift_unknownObjectRelease();

  sub_10000CD74(&v198);
  return v147;
}

void sub_10042AF2C(uint64_t a1, uint64_t a2, void *a3)
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
      sub_10001CE50(*v6, v8);

      v7();
      sub_1000167E0(v7, v8);
    }

    else
    {
    }
  }
}

uint64_t sub_10042AFC4()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_10095B400, &unk_100783F80);
  __chkstk_darwin(v2 - 8);
  v118 = &v96 - v3;
  v4 = sub_10000A5D4(&unk_10095E850, &qword_10078B130);
  __chkstk_darwin(v4 - 8);
  v117 = &v96 - v5;
  v115 = sub_10077111C();
  v119 = *(v115 - 8);
  __chkstk_darwin(v115);
  v101 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v112 = &v96 - v8;
  __chkstk_darwin(v9);
  v11 = &v96 - v10;
  v12 = sub_10000A5D4(&unk_10094BB80, &qword_100791CF0);
  __chkstk_darwin(v12 - 8);
  v99 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v113 = &v96 - v15;
  __chkstk_darwin(v16);
  v18 = &v96 - v17;
  __chkstk_darwin(v19);
  v102 = &v96 - v20;
  v21 = sub_10076034C();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_separatorView];
  v26 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_configuration;
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
    v33 = sub_10076032C();
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
    sub_10076033C();
    (*(v36 + 8))(v24, v21);
  }

  sub_10075FBBC();
  v37 = *&v1[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowButton];
  v114 = v26;
  v38 = &v1[v26];
  v39 = v102;
  sub_100016E2C(v38, v102, &unk_10094BB80, &qword_100791CF0);
  v40 = *&v1[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowAction];
  v98 = [v1 traitCollection];
  sub_1007710CC();
  sub_100770FCC();
  sub_100770FEC();
  sub_100016E2C(v39, v18, &unk_10094BB80, &qword_100791CF0);
  v41 = v21;
  if (v121(v18, 1, v21) == 1)
  {
    sub_10000CFBC(v18, &unk_10094BB80, &qword_100791CF0);
    v42 = v112;
  }

  else
  {
    v43 = sub_1007602EC();
    (*(v116 + 8))(v18, v21);
    v42 = v112;
    if (v43)
    {
      goto LABEL_11;
    }
  }

  if (qword_1009404F0 != -1)
  {
    swift_once();
  }

  v44 = qword_100956FF8;
LABEL_11:
  v97 = v41;
  sub_10077104C();
  v45 = sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_1009404D0 != -1)
  {
    swift_once();
  }

  v46 = v40 != 0;
  v103 = sub_10076D3DC();
  sub_10000A61C(v103, qword_100956F98);
  v47 = v98;
  v111 = v45;
  v48 = sub_100770B3C();
  *(swift_allocObject() + 16) = v48;
  v49 = v48;
  v50 = v117;
  sub_10076E8AC();
  v51 = sub_10076E89C();
  v52 = *(v51 - 8);
  v53 = *(v52 + 56);
  v110 = v51;
  v109 = v53;
  v108 = v52 + 56;
  (v53)(v50, 0, 1);
  sub_10077106C();
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
  sub_10077114C();
  [v37 setUserInteractionEnabled:v46];
  [v37 _setWantsAccessibilityUnderline:v46];

  v59 = *(v55 + 8);
  v119 = v55 + 8;
  v112 = v59;
  (v59)(v11, v57);
  sub_10000CFBC(v102, &unk_10094BB80, &qword_100791CF0);
  v60 = *&v1[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleButton];
  v61 = v113;
  sub_100016E2C(&v1[v114], v113, &unk_10094BB80, &qword_100791CF0);
  v62 = *&v1[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleAction];
  v63 = [v1 traitCollection];
  sub_1007710CC();
  sub_100770FCC();
  sub_100770FEC();
  v64 = v61;
  v65 = v99;
  sub_100016E2C(v64, v99, &unk_10094BB80, &qword_100791CF0);
  v66 = v97;
  if (v121(v65, 1, v97) == 1)
  {
    sub_10000CFBC(v65, &unk_10094BB80, &qword_100791CF0);
  }

  else
  {
    v67 = sub_1007602CC();
    (*(v116 + 8))(v65, v66);
    if (v67)
    {
      goto LABEL_19;
    }
  }

  if (qword_1009404F8 != -1)
  {
    swift_once();
  }

  v68 = qword_100957000;
LABEL_19:
  sub_10077104C();
  v102 = objc_opt_self();
  v69 = [v102 clearColor];
  v70 = sub_100770F5C();
  sub_10076E46C();
  v70(v122, 0);
  v71 = sub_100770F5C();
  sub_10076E44C();
  v71(v122, 0);
  if (qword_1009404D8 != -1)
  {
    swift_once();
  }

  v72 = v62 != 0;
  sub_10000A61C(v103, qword_100956FB0);
  v73 = sub_100770B3C();
  *(swift_allocObject() + 16) = v73;
  v74 = v73;
  v75 = v117;
  sub_10076E8AC();
  v109(v75, 0, 1, v110);
  sub_10077106C();
  v76 = v118;
  v77 = v115;
  v106(v118, v42, v115);
  v104(v76, 0, 1, v77);
  sub_10077114C();
  [v60 setNeedsUpdateConfiguration];
  [v60 setContentHorizontalAlignment:4];
  [v60 setUserInteractionEnabled:v72];
  [v60 _setWantsAccessibilityUnderline:v72];

  (v112)(v42, v77);
  sub_10000CFBC(v113, &unk_10094BB80, &qword_100791CF0);
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
    sub_10076031C();
    (*(v82 + 8))(v81, v66);
  }

  sub_10075FBBC();
  sub_1007710CC();
  sub_100770FCC();
  sub_100770FEC();
  if (v121(&v1[v78], 1, v66) || (v84 = v116, (*(v116 + 16))(v81, &v1[v78], v66), v85 = sub_10076030C(), (*(v84 + 8))(v81, v66), !v85))
  {
    v83 = [v102 systemBlueColor];
  }

  sub_10077104C();
  if (qword_1009404E8 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v103, qword_100956FE0);
  v86 = [v1 traitCollection];
  v87 = sub_100770B3C();

  *(swift_allocObject() + 16) = v87;
  v88 = v87;
  v89 = v117;
  sub_10076E8AC();
  v109(v89, 0, 1, v110);
  sub_10077106C();
  v90 = v118;
  v106(v118, v80, v77);
  v104(v90, 0, 1, v77);
  sub_10077114C();
  v91 = *&v1[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_subtitleLabel];
  if (v121(&v1[v78], 1, v66) || (v93 = v78, v94 = v116, (*(v116 + 16))(v81, &v1[v93], v66), v92 = sub_1007602FC(), (*(v94 + 8))(v81, v66), !v92))
  {
    if (qword_100940500 != -1)
    {
      swift_once();
    }

    v92 = qword_100957008;
  }

  [v91 setTextColor:v92];

  [v1 setNeedsLayout];
  return (v112)(v80, v77);
}

uint64_t sub_10042BF88()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10000A5D4(&unk_10094BB80, &qword_100791CF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = sub_10000A5D4(&qword_100944538, &unk_100786650);
  *&v6 = __chkstk_darwin(v5 - 8).n128_u64[0];
  v8 = &v25 - v7;
  v26.receiver = v0;
  v26.super_class = ObjectType;
  objc_msgSendSuper2(&v26, "prepareForReuse", v6);
  v9 = &v0[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowAction];
  v10 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowAction];
  v11 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowAction + 8];
  *v9 = 0;
  *(v9 + 1) = 0;
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowButton] setAttributedTitle:0 forState:{0, sub_1000167E0(v10, v11)}];
  *&v0[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowArtwork] = 0;

  [*&v0[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowArtworkView] setHidden:1];
  v12 = sub_10076029C();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowArtworkType;
  swift_beginAccess();
  sub_10003837C(v8, &v0[v13], &qword_100944538, &unk_100786650);
  swift_endAccess();
  v14 = &v0[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_accessoryAction];
  v15 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_accessoryAction];
  v16 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_accessoryAction + 8];
  *v14 = 0;
  *(v14 + 1) = 0;
  v17 = sub_1000167E0(v15, v16);
  v18 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_accessoryButton];
  [v18 setTitle:0 forState:{0, v17}];
  [v18 setImage:0 forState:0];
  v19 = &v0[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleAction];
  v20 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleAction];
  v21 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleAction + 8];
  *v19 = 0;
  *(v19 + 1) = 0;
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleButton] setAttributedTitle:0 forState:{0, sub_1000167E0(v20, v21)}];
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_subtitleLabel] setText:0];
  v22 = sub_10076034C();
  (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
  v23 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_configuration;
  swift_beginAccess();
  sub_10042F7E0(v4, &v0[v23]);
  swift_endAccess();
  sub_10042AFC4();
  return sub_10000CFBC(v4, &unk_10094BB80, &qword_100791CF0);
}

double sub_10042C2E4@<D0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v71 = a1;
  v4 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_metrics;
  swift_beginAccess();
  v72 = v6;
  sub_10042FA9C(v3 + v7, v6, v8);
  v9 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_separatorView);
  v89[3] = type metadata accessor for SeparatorView(0);
  v89[4] = &protocol witness table for UIView;
  v89[0] = v9;
  v10 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowButton);
  v11 = v9;
  if (([v10 isHidden] & 1) != 0 || !objc_msgSend(v10, "hasContent"))
  {
    v88 = 0;
    v86 = 0u;
    v87 = 0u;
  }

  else
  {
    *(&v87 + 1) = sub_10076313C();
    v88 = &protocol witness table for UIButton;
    *&v86 = v10;
    v12 = v10;
  }

  v13 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowArtworkView);
  v14 = sub_10075FD2C();
  v85[3] = v14;
  v85[4] = &protocol witness table for UIView;
  v85[0] = v13;
  v15 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleButton);
  v16 = sub_10076313C();
  v84[3] = v16;
  v84[4] = &protocol witness table for UIButton;
  v83[4] = &protocol witness table for UIView;
  v84[0] = v15;
  v17 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleArtworkView);
  v83[3] = v14;
  v83[0] = v17;
  v18 = v13;
  v19 = v15;
  v20 = v17;
  v21 = sub_10042D078();
  v22 = v21;
  if (v21)
  {
    v21 = sub_1007626BC();
    v23 = &protocol witness table for UILabel;
  }

  else
  {
    v23 = 0;
    v82[1] = 0;
    v82[2] = 0;
  }

  v82[0] = v22;
  v82[3] = v21;
  v82[4] = v23;
  v24 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_accessoryButton);
  if (([v24 isHidden] & 1) != 0 || !objc_msgSend(v24, "hasContent"))
  {
    v81 = 0;
    v26 = 0uLL;
    v79 = 0u;
    v80 = 0u;
  }

  else
  {
    *(&v80 + 1) = v16;
    v81 = &protocol witness table for UIView;
    *&v79 = v24;
    v25 = v24;
  }

  v27 = v71;
  sub_10042FA9C(v72, v71, v26);
  sub_100016E2C(v89, v73, &unk_10094DA00, &qword_100783FA0);
  v28 = v74;
  if (v74)
  {
    v29 = v75;
    sub_10000CF78(v73, v74);
    v30 = sub_1007711AC();
    v31 = *(v30 - 8);
    __chkstk_darwin(v30);
    v33 = &v70 - v32;
    sub_10076D21C();
    v34 = *(v28 - 8);
    if ((*(v34 + 48))(v33, 1, v28) == 1)
    {
      (*(v31 + 8))(v33, v30);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v28;
      v78 = v29;
      v35 = sub_10000DB7C(&v76);
      (*(v34 + 32))(v35, v33, v28);
    }

    sub_10000CD74(v73);
  }

  else
  {
    sub_10000CFBC(v73, &unk_10094DA00, &qword_100783FA0);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  v36 = type metadata accessor for ShelfHeaderLayout(0);
  v37 = v27 + v36[5];
  v38 = v77;
  *v37 = v76;
  *(v37 + 16) = v38;
  *(v37 + 32) = v78;
  sub_100016E2C(&v86, v27 + v36[6], &unk_10094B230, &qword_100791150);
  sub_100016E2C(v85, v73, &unk_10094DA00, &qword_100783FA0);
  v39 = v74;
  if (v74)
  {
    v40 = v75;
    sub_10000CF78(v73, v74);
    v41 = sub_1007711AC();
    v42 = *(v41 - 8);
    __chkstk_darwin(v41);
    v44 = &v70 - v43;
    sub_10076D21C();
    v45 = *(v39 - 8);
    if ((*(v45 + 48))(v44, 1, v39) == 1)
    {
      (*(v42 + 8))(v44, v41);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v39;
      v78 = v40;
      v46 = sub_10000DB7C(&v76);
      (*(v45 + 32))(v46, v44, v39);
    }

    sub_10000CD74(v73);
  }

  else
  {
    sub_10000CFBC(v73, &unk_10094DA00, &qword_100783FA0);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  v47 = v27 + v36[7];
  v48 = v77;
  *v47 = v76;
  *(v47 + 16) = v48;
  *(v47 + 32) = v78;
  sub_10000A570(v84, v27 + v36[8]);
  sub_100016E2C(v83, v73, &unk_10094DA00, &qword_100783FA0);
  v49 = v74;
  if (v74)
  {
    v50 = v75;
    sub_10000CF78(v73, v74);
    v51 = sub_1007711AC();
    v52 = *(v51 - 8);
    __chkstk_darwin(v51);
    v54 = &v70 - v53;
    sub_10076D21C();
    v55 = *(v49 - 8);
    if ((*(v55 + 48))(v54, 1, v49) == 1)
    {
      (*(v52 + 8))(v54, v51);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v49;
      v78 = v50;
      v56 = sub_10000DB7C(&v76);
      (*(v55 + 32))(v56, v54, v49);
    }

    sub_10000CD74(v73);
  }

  else
  {
    sub_10000CFBC(v73, &unk_10094DA00, &qword_100783FA0);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  v57 = v27 + v36[9];
  v58 = v77;
  *v57 = v76;
  *(v57 + 16) = v58;
  *(v57 + 32) = v78;
  sub_100016E2C(v82, v27 + v36[10], &unk_10094B230, &qword_100791150);
  sub_100016E2C(&v79, v73, &unk_10094DA00, &qword_100783FA0);
  v59 = v74;
  if (v74)
  {
    v60 = v75;
    sub_10000CF78(v73, v74);
    v61 = sub_1007711AC();
    v70 = &v70;
    v62 = *(v61 - 8);
    __chkstk_darwin(v61);
    v64 = &v70 - v63;
    sub_10076D21C();
    v65 = *(v59 - 8);
    if ((*(v65 + 48))(v64, 1, v59) == 1)
    {
      sub_10042FB00(v72, type metadata accessor for ShelfHeaderLayout.Metrics);
      sub_10000CFBC(&v79, &unk_10094DA00, &qword_100783FA0);
      sub_10000CFBC(v82, &unk_10094B230, &qword_100791150);
      sub_10000CFBC(v83, &unk_10094DA00, &qword_100783FA0);
      sub_10000CD74(v84);
      sub_10000CFBC(v85, &unk_10094DA00, &qword_100783FA0);
      sub_10000CFBC(&v86, &unk_10094B230, &qword_100791150);
      sub_10000CFBC(v89, &unk_10094DA00, &qword_100783FA0);
      (*(v62 + 8))(v64, v61);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v59;
      v78 = v60;
      v66 = sub_10000DB7C(&v76);
      (*(v65 + 32))(v66, v64, v59);
      sub_10042FB00(v72, type metadata accessor for ShelfHeaderLayout.Metrics);
      sub_10000CFBC(&v79, &unk_10094DA00, &qword_100783FA0);
      sub_10000CFBC(v82, &unk_10094B230, &qword_100791150);
      sub_10000CFBC(v83, &unk_10094DA00, &qword_100783FA0);
      sub_10000CD74(v84);
      sub_10000CFBC(v85, &unk_10094DA00, &qword_100783FA0);
      sub_10000CFBC(&v86, &unk_10094B230, &qword_100791150);
      sub_10000CFBC(v89, &unk_10094DA00, &qword_100783FA0);
    }

    sub_10000CD74(v73);
  }

  else
  {
    sub_10042FB00(v72, type metadata accessor for ShelfHeaderLayout.Metrics);
    sub_10000CFBC(&v79, &unk_10094DA00, &qword_100783FA0);
    sub_10000CFBC(v82, &unk_10094B230, &qword_100791150);
    sub_10000CFBC(v83, &unk_10094DA00, &qword_100783FA0);
    sub_10000CD74(v84);
    sub_10000CFBC(v85, &unk_10094DA00, &qword_100783FA0);
    sub_10000CFBC(&v86, &unk_10094B230, &qword_100791150);
    sub_10000CFBC(v89, &unk_10094DA00, &qword_100783FA0);
    sub_10000CFBC(v73, &unk_10094DA00, &qword_100783FA0);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  v67 = v27 + v36[11];
  result = *&v76;
  v69 = v77;
  *v67 = v76;
  *(v67 + 16) = v69;
  *(v67 + 32) = v78;
  return result;
}

void *sub_10042D078()
{
  if ([v0 isHidden])
  {
    return 0;
  }

  v1 = [v0 text];
  if (v1)
  {
    v2 = v1;
    v3 = sub_10076FF9C();
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

uint64_t sub_10042D190(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5)
{
  v29 = a4;
  v30 = a5;
  v9 = sub_10076BF6C();
  __chkstk_darwin(v9 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&qword_100944538, &unk_100786650);
  __chkstk_darwin(v12 - 8);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v27 - v16;
  v18 = sub_10076029C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_100016E2C(a2, v17, &qword_100944538, &unk_100786650);
    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      v24 = *(v19 + 32);
      v27[1] = v11;
      v28 = v24;
      v24(v21, v17, v18);
      *(v5 + *a3) = a1;
      swift_retain_n();

      [*(v5 + *v29) setHidden:0];
      sub_10076BF7C();
      sub_10075FCCC();

      v28(v14, v21, v18);
      (*(v19 + 56))(v14, 0, 1, v18);
      v25 = *v30;
      swift_beginAccess();
      v23 = v5 + v25;
      goto LABEL_6;
    }

    sub_10000CFBC(v17, &qword_100944538, &unk_100786650);
  }

  *(v5 + *a3) = 0;

  [*(v5 + *v29) setHidden:1];
  (*(v19 + 56))(v14, 1, 1, v18);
  v22 = *v30;
  swift_beginAccess();
  v23 = v5 + v22;
LABEL_6:
  sub_10003837C(v14, v23, &qword_100944538, &unk_100786650);
  return swift_endAccess();
}

uint64_t sub_10042D4F8(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t))
{
  v5 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    sub_10076468C();
    a3(v8, ObjectType, v10);
    swift_unknownObjectRelease();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

void sub_10042D630()
{
  v1 = sub_10076BEDC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowArtwork))
  {

    sub_10076BEFC();
    sub_10076BEEC();
    sub_10076BE9C();
    (*(v2 + 8))(v4, v1);
    sub_10076BFCC();
    sub_10075FD2C();
    sub_10000D7F8();
    sub_100760B8C();
  }

  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleArtwork))
  {

    sub_10076BEFC();
    sub_10076BEEC();
    sub_10076BE9C();
    (*(v2 + 8))(v4, v1);
    sub_10076BFCC();
    sub_10075FD2C();
    sub_10000D7F8();
    sub_100760B8C();
  }
}

void sub_10042D86C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (v2[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_shouldHighlightEntireView] == 1)
  {
    v6 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_currentTouch;
    v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_currentTouch];
    if (!v7 || [v7 phase] == 3 || (v8 = *&v2[v6]) != 0 && objc_msgSend(v8, "phase") == 4)
    {
      v9 = sub_1005EBD8C(a1);
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
          aBlock[4] = sub_10043046C;
          aBlock[5] = v15;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10009AEDC;
          aBlock[3] = &unk_100895458;
          v16 = _Block_copy(aBlock);
          v17 = v2;

          [v14 animateWithDuration:4 delay:v16 options:0 animations:0.2 completion:0.0];

          _Block_release(v16);
        }

        sub_100016F40(0, &qword_10094F760, UITouch_ptr);
        sub_10027D9C8();
        v13.super.isa = sub_10077038C().super.isa;
        objc_msgSendSuper2(&v19, "touchesBegan:withEvent:", v13.super.isa, a2, v18.receiver, v18.super_class, v2, ObjectType);
      }

      else
      {
        sub_100016F40(0, &qword_10094F760, UITouch_ptr);
        sub_10027D9C8();
        v13.super.isa = sub_10077038C().super.isa;
        v21.receiver = v2;
        v21.super_class = ObjectType;
        objc_msgSendSuper2(&v21, "touchesBegan:withEvent:", v13.super.isa, a2, v18.receiver, v18.super_class, v19.receiver, v19.super_class);
      }
    }

    else
    {
      sub_100016F40(0, &qword_10094F760, UITouch_ptr);
      sub_10027D9C8();
      v13.super.isa = sub_10077038C().super.isa;
      objc_msgSendSuper2(&v18, "touchesBegan:withEvent:", v13.super.isa, a2, v2, ObjectType, v19.receiver, v19.super_class);
    }
  }

  else
  {
    sub_100016F40(0, &qword_10094F760, UITouch_ptr);
    sub_10027D9C8();
    v13.super.isa = sub_10077038C().super.isa;
    v22.receiver = v2;
    v22.super_class = ObjectType;
    objc_msgSendSuper2(&v22, "touchesBegan:withEvent:", v13.super.isa, a2, v18.receiver, v18.super_class, v19.receiver, v19.super_class);
  }
}

void sub_10042DB64(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (v2[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_shouldHighlightEntireView] != 1)
  {
    sub_100016F40(0, &qword_10094F760, UITouch_ptr);
    sub_10027D9C8();
    v14.super.isa = sub_10077038C().super.isa;
    v22.receiver = v2;
    v22.super_class = ObjectType;
    objc_msgSendSuper2(&v22, "touchesMoved:withEvent:", v14.super.isa, a2, v19.receiver, v19.super_class);
    goto LABEL_14;
  }

  v6 = *&v2[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_currentTouch];
  if (!v6)
  {
LABEL_11:
    sub_100016F40(0, &qword_10094F760, UITouch_ptr);
    sub_10027D9C8();
    v14.super.isa = sub_10077038C().super.isa;
    v21.receiver = v2;
    v21.super_class = ObjectType;
    objc_msgSendSuper2(&v21, "touchesMoved:withEvent:", v14.super.isa, a2, v19.receiver, v19.super_class);
    goto LABEL_14;
  }

  v7 = v6;
  if ((sub_1006937A4(v7, a1) & 1) == 0)
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
    aBlock[4] = sub_10043046C;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    aBlock[3] = &unk_100895408;
    v17 = _Block_copy(aBlock);
    v18 = v2;

    [v15 animateWithDuration:4 delay:v17 options:0 animations:0.2 completion:0.0];

    _Block_release(v17);
  }

  sub_100016F40(0, &qword_10094F760, UITouch_ptr);
  sub_10027D9C8();
  v14.super.isa = sub_10077038C().super.isa;
  objc_msgSendSuper2(&v19, "touchesMoved:withEvent:", v14.super.isa, a2, v2, ObjectType);
LABEL_14:
}

double sub_10042DE30(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_100016F40(0, &qword_10094F760, UITouch_ptr);
  sub_10027D9C8();
  v8 = sub_10077039C();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);

  return result;
}

void sub_10042DEE0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (v2[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_shouldHighlightEntireView] != 1)
  {
    sub_100016F40(0, &qword_10094F760, UITouch_ptr);
    sub_10027D9C8();
    v11.super.isa = sub_10077038C().super.isa;
    v19.receiver = v2;
    v19.super_class = ObjectType;
    objc_msgSendSuper2(&v19, "touchesCancelled:withEvent:", v11.super.isa, a2, v16.receiver, v16.super_class);
    goto LABEL_11;
  }

  v6 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_currentTouch;
  v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_currentTouch];
  if (!v7)
  {
LABEL_8:
    sub_100016F40(0, &qword_10094F760, UITouch_ptr);
    sub_10027D9C8();
    v11.super.isa = sub_10077038C().super.isa;
    v18.receiver = v2;
    v18.super_class = ObjectType;
    objc_msgSendSuper2(&v18, "touchesCancelled:withEvent:", v11.super.isa, a2, v16.receiver, v16.super_class);
    goto LABEL_11;
  }

  v8 = v7;
  if ((sub_1006937A4(v8, a1) & 1) == 0)
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
    aBlock[4] = sub_10043046C;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    aBlock[3] = &unk_1008953B8;
    v14 = _Block_copy(aBlock);
    v15 = v2;

    [v12 animateWithDuration:4 delay:v14 options:0 animations:0.2 completion:0.0];

    _Block_release(v14);
  }

  sub_100016F40(0, &qword_10094F760, UITouch_ptr);
  sub_10027D9C8();
  v11.super.isa = sub_10077038C().super.isa;
  objc_msgSendSuper2(&v16, "touchesCancelled:withEvent:", v11.super.isa, a2, v2, ObjectType);
LABEL_11:
}

void sub_10042E16C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (v2[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_shouldHighlightEntireView] != 1)
  {
    sub_100016F40(0, &qword_10094F760, UITouch_ptr);
    sub_10027D9C8();
    v23.super.isa = sub_10077038C().super.isa;
    v27.receiver = v3;
    v27.super_class = ObjectType;
    objc_msgSendSuper2(&v27, "touchesEnded:withEvent:", v23.super.isa, a2, v24.receiver, v24.super_class);
    goto LABEL_13;
  }

  v7 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_currentTouch;
  v8 = *&v3[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_currentTouch];
  if (!v8)
  {
LABEL_12:
    sub_100016F40(0, &qword_10094F760, UITouch_ptr);
    sub_10027D9C8();
    v23.super.isa = sub_10077038C().super.isa;
    v26.receiver = v3;
    v26.super_class = ObjectType;
    objc_msgSendSuper2(&v26, "touchesEnded:withEvent:", v23.super.isa, a2, v24.receiver, v24.super_class);
    goto LABEL_13;
  }

  v9 = v8;
  if ((sub_1006937A4(v9, a1) & 1) == 0)
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
    aBlock[4] = sub_1000B7BEC;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    aBlock[3] = &unk_100895368;
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
    v20 = *&v3[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleAction];
    if (v20)
    {
      v21 = *&v3[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleAction + 8];

      v20(v22);
      sub_1000167E0(v20, v21);
    }
  }

  sub_100016F40(0, &qword_10094F760, UITouch_ptr);
  sub_10027D9C8();
  v23.super.isa = sub_10077038C().super.isa;
  objc_msgSendSuper2(&v24, "touchesEnded:withEvent:", v23.super.isa, a2, v3, ObjectType);
LABEL_13:
}

uint64_t type metadata accessor for ShelfHeaderView(uint64_t a1)
{
  result = qword_1009570C0;
  if (!qword_1009570C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10042E664(uint64_t a1, __n128 a2)
{
  type metadata accessor for ShelfHeaderLayout.Metrics(319);
  if (v2 <= 0x3F)
  {
    sub_10042E7EC(319, &qword_1009570D0, &type metadata accessor for ShelfHeader.ArtworkType);
    if (v3 <= 0x3F)
    {
      sub_10042E7EC(319, &qword_1009570D8, &type metadata accessor for ShelfHeader.Configuration);
      if (v4 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10042E7EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1007711AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10042E840()
{
  v65 = sub_10000A5D4(&qword_1009570E8, &qword_1007A2CC0);
  __chkstk_darwin(v65);
  v68 = (&v61 - v0);
  v1 = sub_10000A5D4(&qword_1009499A0, &qword_1007848B0);
  __chkstk_darwin(v1 - 8);
  v62 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v61 - v4;
  __chkstk_darwin(v6);
  v8 = &v61 - v7;
  v9 = sub_10000A5D4(&qword_10094E090, &unk_100795D70);
  __chkstk_darwin(v9 - 8);
  v61 = (&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v64 = &v61 - v12;
  v13 = sub_1007621EC();
  v66 = *(v13 - 8);
  v67 = v13;
  __chkstk_darwin(v13);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v61 - v18;
  sub_10076468C();
  swift_getKeyPath();
  v63 = v15;
  sub_10076F49C();

  v20 = *(v17 + 8);
  v20(v19, v16);
  v21 = v62;
  sub_10076463C();
  sub_10000CFBC(v21, &qword_1009499A0, &qword_1007848B0);
  sub_100023AD0(v5, v8, &qword_1009499A0, &qword_1007848B0);
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    sub_10000CFBC(v8, &qword_1009499A0, &qword_1007848B0);
    v22 = 1;
    v23 = v64;
  }

  else
  {
    swift_getKeyPath();
    v23 = v64;
    sub_10076F49C();

    v20(v8, v16);
    v22 = 0;
  }

  v25 = v66;
  v24 = v67;
  (*(v66 + 56))(v23, v22, 1, v67);
  v26 = *(v65 + 48);
  v27 = v68;
  (*(v25 + 32))(v68, v63, v24);
  sub_100023AD0(v23, v27 + v26, &qword_10094E090, &unk_100795D70);
  v28 = *(v25 + 88);
  v29 = v28(v27, v24);
  v30 = enum case for ShelfBackground.color(_:);
  if (v29 == enum case for ShelfBackground.color(_:))
  {
    (*(v25 + 96))(v27, v24);

    v31 = *(sub_10000A5D4(&unk_100950670, qword_100791450) + 48);
    v32 = sub_1007659CC();
    (*(*(v32 - 8) + 8))(v27 + v31, v32);
LABEL_8:
    sub_10000CFBC(v27 + v26, &qword_10094E090, &unk_100795D70);
LABEL_9:
    sub_1007704EC();
    return;
  }

  v33 = enum case for ShelfBackground.gradient(_:);
  if (v29 == enum case for ShelfBackground.gradient(_:))
  {
    (*(v25 + 96))(v27, v24);

    v34 = sub_10000A5D4(&qword_10094B500, &qword_10079E1D0);
    v35 = v34[12];
    v36 = v34[16];
    v37 = v34[20];
    v38 = sub_1007659CC();
    (*(*(v38 - 8) + 8))(v27 + v37, v38);
    v39 = sub_10076A05C();
    v40 = *(*(v39 - 8) + 8);
    v40(v27 + v36, v39);
    v40(v27 + v35, v39);
    goto LABEL_8;
  }

  v41 = enum case for ShelfBackground.materialGradient(_:);
  if (v29 == enum case for ShelfBackground.materialGradient(_:))
  {
    (*(v25 + 96))(v27, v24);
    v42 = *(sub_10000A5D4(qword_10094ADC0, &unk_1007A2D00) + 48);
    v43 = sub_1007659CC();
    (*(*(v43 - 8) + 8))(v27 + v42, v43);
    v44 = sub_10076AA6C();
    (*(*(v44 - 8) + 8))(v27, v44);
    goto LABEL_8;
  }

  if ((*(v25 + 48))(v27 + v26, 1, v24) != 1)
  {
    v45 = v61;
    sub_100016E2C(v27 + v26, v61, &qword_10094E090, &unk_100795D70);
    v46 = v28(v45, v24);
    if (v46 == v30)
    {
      (*(v25 + 96))(v45, v24);

      v47 = *(sub_10000A5D4(&unk_100950670, qword_100791450) + 48);
      v48 = sub_1007659CC();
      (*(*(v48 - 8) + 8))(v45 + v47, v48);
    }

    else if (v46 == v33)
    {
      v49 = v61;
      (*(v25 + 96))(v61, v24);

      v50 = sub_10000A5D4(&qword_10094B500, &qword_10079E1D0);
      v51 = v50[12];
      v52 = v50[16];
      v53 = v50[20];
      v54 = sub_1007659CC();
      (*(*(v54 - 8) + 8))(v49 + v53, v54);
      v55 = sub_10076A05C();
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
      v58 = *(sub_10000A5D4(qword_10094ADC0, &unk_1007A2D00) + 48);
      v59 = sub_1007659CC();
      (*(*(v59 - 8) + 8))(v57 + v58, v59);
      v60 = sub_10076AA6C();
      (*(*(v60 - 8) + 8))(v57, v60);
    }

    sub_10000CFBC(v27 + v26, &qword_10094E090, &unk_100795D70);
    (*(v25 + 8))(v27, v24);
    goto LABEL_9;
  }

LABEL_13:
  sub_10000CFBC(v27, &qword_1009570E8, &qword_1007A2CC0);
}

id sub_10042F1BC(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v8 = objc_allocWithZone(NSAttributedString);

  v9 = sub_10076FF6C();

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
        if (qword_1009404A0 != -1)
        {
          swift_once();
        }

        v17 = &qword_100956F68;
      }

      else
      {
        if (qword_100940498 != -1)
        {
          swift_once();
        }

        v17 = &qword_100956F60;
      }

      [v16 appendAttributedString:*v17];
      if (qword_1009404A8 != -1)
      {
        swift_once();
      }

      [v16 appendAttributedString:qword_100956F70];
      [v16 appendAttributedString:v10];
      if (qword_1009404B0 != -1)
      {
        swift_once();
      }

      v18 = qword_100956F78;
      [v16 appendAttributedString:qword_100956F78];
      if (qword_1009404B8 != -1)
      {
        swift_once();
      }

      [v16 appendAttributedString:qword_100956F80];
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

id sub_10042F4DC(uint64_t a1, unint64_t a2, void *a3, char a4)
{
  v8 = sub_10076048C();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  if (a4)
  {
    (*(v9 + 104))(v12, enum case for SystemImage.chevronForward(_:), v8, v10);
    if (qword_100940490 != -1)
    {
      swift_once();
    }

    v14 = [qword_100956F58 configurationWithTraitCollection:a3];
    v15 = sub_10076046C();

    (*(v9 + 8))(v12, v8);
    v16 = [objc_opt_self() secondaryLabelColor];
    v13 = [v15 imageWithTintColor:v16];
  }

  v17 = sub_10042F1BC(a1, a2, a3, v13);

  return v17;
}

uint64_t sub_10042F6B8(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = sub_10076B8EC();
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

  v5 = sub_10076B8FC();

  if (!v5)
  {

    return 0;
  }

  v1 = sub_10076BE2C();
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

double sub_10042F7C0(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_10042F7D8(result, a2);
  }

  return v3;
}

uint64_t sub_10042F7E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_10094BB80, &qword_100791CF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10042F850(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_10042F8D8()
{
  sub_10000CD74((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10042F910()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10042F964()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10042FA48()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10042FA9C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10042FB00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10042FB60()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_10042FB98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_10042FBB0()
{
  v1 = v0;
  v2 = sub_10076771C();
  v45 = *(v2 - 8);
  v46 = v2;
  __chkstk_darwin(v2);
  v47 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v4 - 8);
  v44 = &v43 - v5;
  v6 = sub_10076D3DC();
  v48 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076E1EC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076E21C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_containerView;
  *(v1 + v17) = [objc_allocWithZone(UIView) init];
  v49 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_separatorView;
  (*(v10 + 104))(v12, enum case for Separator.Position.top(_:), v9);
  v50[3] = sub_10076D67C();
  v50[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v50);
  sub_10076D66C();
  sub_10076E1FC();
  v18 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
  swift_beginAccess();
  v20 = *(v14 + 40);
  v21 = v18;
  v20(&v18[v19], v16, v13);
  swift_endAccess();

  *(v49 + v1) = v21;
  v22 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowButton;
  sub_10076313C();
  if (qword_1009404D0 != -1)
  {
    swift_once();
  }

  v23 = sub_10000A61C(v6, qword_100956F98);
  v49 = *(v48 + 16);
  v49(v8, v23, v6);
  *(v1 + v22) = sub_10076312C();
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowArtwork) = 0;
  v24 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowArtworkType;
  v25 = sub_10076029C();
  v26 = *(*(v25 - 8) + 56);
  v26(v1 + v24, 1, 1, v25);
  v27 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowArtworkView;
  sub_10075FD2C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v27) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v29 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleButton;
  if (qword_1009404D8 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A61C(v6, qword_100956FB0);
  v49(v8, v30, v6);
  *(v1 + v29) = sub_10076312C();
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleArtwork) = 0;
  v26(v1 + OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleArtworkType, 1, 1, v25);
  v31 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleArtworkView;
  *(v1 + v31) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v32 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_accessoryButton;
  if (qword_1009404E8 != -1)
  {
    swift_once();
  }

  v33 = sub_10000A61C(v6, qword_100956FE0);
  v49(v8, v33, v6);
  *(v1 + v32) = sub_10076312C();
  v34 = (v1 + OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleAction);
  *v34 = 0;
  v34[1] = 0;
  v35 = (v1 + OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_accessoryAction);
  *v35 = 0;
  v35[1] = 0;
  v36 = (v1 + OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowAction);
  *v36 = 0;
  v36[1] = 0;
  v37 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_subtitleLabel;
  if (qword_1009404E0 != -1)
  {
    swift_once();
  }

  v38 = sub_10000A61C(v6, qword_100956FC8);
  v39 = v44;
  v49(v44, v38, v6);
  (*(v48 + 56))(v39, 0, 1, v6);
  (*(v45 + 104))(v47, enum case for DirectionalTextAlignment.none(_:), v46);
  v40 = objc_allocWithZone(sub_1007626BC());
  *(v1 + v37) = sub_1007626AC();
  v41 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_configuration;
  v42 = sub_10076034C();
  (*(*(v42 - 8) + 56))(v1 + v41, 1, 1, v42);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_shouldHighlightEntireView) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_currentTouch) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_100430314(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10043037C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void *CondensedInAppPurchaseContentView.applyData(from:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v91 = a2;
  v4 = sub_10075E77C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10075E57C();
  v94 = *(v8 - 8);
  __chkstk_darwin(v8);
  v92 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v93 = &v77 - v11;
  v12 = sub_10000A5D4(&unk_100945560, qword_1007951B0);
  __chkstk_darwin(v12 - 8);
  v90 = &v77 - v13;
  v89 = sub_100768FEC();
  v84 = *(v89 - 1);
  __chkstk_darwin(v89);
  v85 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v87 = *(v15 - 8);
  v88 = v15;
  __chkstk_darwin(v15);
  v86 = &v77 - v16;
  v17 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v17 - 8);
  v83 = &v77 - v18;
  v19 = sub_10000A5D4(&unk_100962490, qword_10079E5A0);
  __chkstk_darwin(v19 - 8);
  v82 = &v77 - v20;
  v21 = sub_10000A5D4(&unk_100949290, &unk_10078BBF0);
  __chkstk_darwin(v21 - 8);
  v23 = &v77 - v22;
  v24 = sub_10000A5D4(&unk_1009492A0, &unk_10078BC00);
  __chkstk_darwin(v24 - 8);
  v26 = &v77 - v25;
  v27 = sub_10000A5D4(&unk_10094D210, &qword_10078DE20);
  __chkstk_darwin(v27 - 8);
  v29 = &v77 - v28;
  sub_10075E7FC();
  sub_100434604(&qword_1009486F8, &type metadata accessor for InAppPurchaseSearchResult, &protocol conformance descriptor for SearchResult);
  result = sub_10076332C();
  if (*&v95[0])
  {
    v78 = v8;
    v79 = v7;
    v80 = v5;
    v81 = v4;
    v31 = sub_10075E7EC();

    v32 = sub_10075E63C();
    v33 = *&v2[OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_headerLabel];
    v34 = "inAppDescription";
    if (v32)
    {
      v34 = "chase.Subtitle.Format";
      v35._countAndFlagsBits = 0xD00000000000003ALL;
    }

    else
    {
      v35._countAndFlagsBits = 0xD00000000000002DLL;
    }

    v35._object = (v34 | 0x8000000000000000);
    v98._countAndFlagsBits = 0;
    v98._object = 0xE000000000000000;
    sub_1007622EC(v35, v98);
    v36 = sub_10076FF6C();

    [v33 setText:v36];

    v37 = *&v2[OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_titleLabel];

    sub_10076BB6C();
    if (v38)
    {
      v39 = sub_10076FF6C();
    }

    else
    {
      v39 = 0;
    }

    [v37 setText:v39];

    v40 = *&v3[OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_subtitleLabel];
    sub_10075E64C();
    if (v41)
    {
      v42 = sub_10076FF6C();
    }

    else
    {
      v42 = 0;
    }

    [v40 setText:v42];

    v43 = v3;
    sub_1000F0578();
    if (sub_10076BB3C())
    {
      v44 = enum case for OfferStyle.white(_:);
      v45 = sub_10075F78C();
      v46 = *(v45 - 8);
      (*(v46 + 104))(v29, v44, v45);
      (*(v46 + 56))(v29, 0, 1, v45);
      v43 = v3;
      v47 = sub_1007628DC();
      (*(*(v47 - 8) + 56))(v26, 1, 1, v47);
      v48 = sub_10076C54C();
      (*(*(v48 - 8) + 56))(v23, 1, 1, v48);
      v49 = sub_10076201C();
      v50 = v82;
      (*(*(v49 - 8) + 56))(v82, 1, 1, v49);
      memset(v95, 0, 32);
      v51 = sub_100766A5C();

      sub_10000CFBC(v95, &unk_1009434C0, &qword_100783F60);
      sub_10000CFBC(v50, &unk_100962490, qword_10079E5A0);
      sub_10000CFBC(v23, &unk_100949290, &unk_10078BBF0);
      sub_10000CFBC(v26, &unk_1009492A0, &unk_10078BC00);
      sub_10000CFBC(v29, &unk_10094D210, &qword_10078DE20);
    }

    else
    {
      v51 = 0;
    }

    v82 = v51;
    v77 = v43;
    v52 = *&v43[OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_offerButton];
    v53 = sub_10076BA2C();

    v54 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
    v55 = v83;
    (*(*(v54 - 8) + 56))(v83, 1, 1, v54);
    v56 = v84;
    v57 = v89;
    (*(v84 + 104))(v85, enum case for OfferButtonSubtitlePosition.right(_:), v89);
    (*(v56 + 56))(v90, 1, 1, v57);
    sub_100434604(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
    v58 = v86;
    sub_10076759C();
    sub_1001F12C8(v51, v53, 0, v55, v58, v91, 0, 0);

    (*(v87 + 8))(v58, v88);
    sub_10000CFBC(v55, &unk_100946760, &unk_100787A20);
    [v52 setHidden:0];
    sub_100760C4C();
    sub_10076F64C();
    sub_10076FC1C();
    v59 = *&v43[OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_inAppPurchaseView];
    v60 = *&v95[0];
    v96.value.super.isa = 0;
    v96.is_nil = 0;
    sub_10075FCEC(v96, v61);
    v97.value.super.isa = 0;
    v97.is_nil = 0;
    sub_10075FCEC(v97, v62);
    sub_10075FD2C();
    sub_100434604(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_100760BFC();
    v91 = v60;
    sub_100760BFC();
    if (qword_10093F768 != -1)
    {
      swift_once();
    }

    v90 = qword_10099CFB8;
    v63 = v93;
    sub_10075E65C();
    v64 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_theme;
    swift_beginAccess();
    v65 = v94;
    v66 = v78;
    (*(v94 + 24))(&v59[v64], v63, v78);
    swift_endAccess();
    v89 = *(v65 + 16);
    v67 = v92;
    (v89)(v92, &v59[v64], v66);
    sub_1005B84F8(v67);
    v68 = *(v65 + 8);
    v68(v67, v66);
    v68(v63, v66);
    [v59 setBackgroundColor:v90];
    sub_1006EC184(93.0, 93.0, v31, v59, v91);
    (v89)(v63, &v59[v64], v66);
    sub_1005B84F8(v63);
    v68(v63, v66);
    [v59 setNeedsLayout];
    [v59 setHidden:0];
    v69 = v80;
    v70 = &v59[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_metrics];
    v71 = v79;
    v72 = v81;
    (*(v80 + 16))(v79, v70, v81);
    sub_10075E72C();
    v74 = v73;
    sub_10075E76C();
    v76 = v77;
    *&v77[OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_tileOffset] = v74 + v75;
    [v76 setNeedsLayout];

    return (*(v69 + 8))(v71, v72);
  }

  return result;
}

double CondensedInAppPurchaseContentView.fetch(for:in:on:asPartOf:)(uint64_t a1, uint64_t a2)
{
  sub_10000A570(a1, v6);
  sub_10000A5D4(&unk_100942830, &qword_100782680);
  sub_10075E7FC();
  if (swift_dynamicCast())
  {
    v5 = sub_10075E7EC();

    sub_1006EC184(93.0, 93.0, v5, *(v2 + OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_inAppPurchaseView), a2);
  }

  return result;
}

uint64_t CondensedInAppPurchaseContentView.cancelArtworkFetches(on:asPartOf:deprioritizingFetches:)(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v5.value.super.isa = 0;
  v5.is_nil = 0;
  sub_10075FCEC(v5, a3);
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  sub_10075FCEC(v6, v3);
  sub_10075FD2C();
  sub_100434604(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  sub_100760BFC();
  return sub_100760BFC();
}

double static CondensedInAppPurchaseContentView.prefetchArtwork(for:with:asPartOf:)()
{
  sub_10075E7FC();
  sub_100434604(&qword_1009486F8, &type metadata accessor for InAppPurchaseSearchResult, &protocol conformance descriptor for SearchResult);
  sub_10076332C();
  if (v3)
  {
    sub_10075E7EC();
    v1 = sub_1006EC764(93.0, 93.0);

    v2._rawValue = v1;
    sub_100760BAC(v2);
  }

  return result;
}

double sub_10043142C(uint64_t a1, uint64_t a2, objc_class *a3, double a4, double a5)
{
  v139 = a3;
  v154 = a1;
  v138 = sub_10076DB6C();
  v158 = *(v138 - 8);
  __chkstk_darwin(v138);
  v124 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_10076DB5C();
  v157 = *(v123 - 8);
  __chkstk_darwin(v123);
  v122 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_10076DB0C();
  v156 = *(v137 - 8);
  __chkstk_darwin(v137);
  v121 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076DBAC();
  v126 = *(v9 - 8);
  v127 = v9;
  __chkstk_darwin(v9);
  v125 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076443C();
  v132 = *(v11 - 8);
  v133 = v11;
  __chkstk_darwin(v11);
  v140 = (&v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v131 = &v112 - v14;
  v153 = sub_10076997C();
  v155 = *(v153 - 8);
  __chkstk_darwin(v153);
  v146 = (&v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_10076D1AC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10075E77C();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E6FC();
  sub_10075E73C();
  (*(v21 + 8))(v23, v20);
  v136 = sub_10076DDDC();
  swift_allocObject();
  v130 = sub_10076DDBC();
  v159 = a2;
  sub_10075E3CC();
  LODWORD(v152) = enum case for FontSource.useCase(_:);
  v24 = *(v17 + 104);
  v150 = v17 + 104;
  v151 = v24;
  v142 = v16;
  v24(v19);
  v25 = v139;
  v26.super.isa = v139;
  v27.super.isa = sub_10076D19C(v26).super.isa;
  v28 = *(v17 + 8);
  v148 = v17 + 8;
  v149 = v28;
  v28(v19, v16);
  v29 = sub_10075E63C();
  v30 = "inAppDescription";
  if (v29)
  {
    v30 = "chase.Subtitle.Format";
    v31._countAndFlagsBits = 0xD00000000000003ALL;
  }

  else
  {
    v31._countAndFlagsBits = 0xD00000000000002DLL;
  }

  v31._object = (v30 | 0x8000000000000000);
  v179._countAndFlagsBits = 0;
  v179._object = 0xE000000000000000;
  sub_1007622EC(v31, v179);
  v141 = v32;
  v33 = v27.super.isa;
  sub_10075E44C();
  v34 = sub_10076C04C();
  v177 = v34;
  v147 = sub_100434604(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v178 = v147;
  v35 = sub_10000DB7C(v176);
  LODWORD(v144) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v36 = *(v34 - 8);
  v143 = *(v36 + 104);
  v145 = (v36 + 104);
  v143(v35);
  sub_10076C90C();
  sub_10000CD74(v176);
  v37 = v146;
  v120 = v33;
  sub_10076996C();
  sub_10076994C();
  v141 = *(v155 + 8);
  v155 += 8;
  v38 = v37;
  v39 = v153;
  (v141)(v38, v153);
  sub_10075E4AC();
  v40 = v142;
  v151(v19, v152, v142);
  v41.super.isa = v25;
  isa = sub_10076D19C(v41).super.isa;
  v149(v19, v40);
  sub_10076BB6C();
  v43 = isa;
  sub_10075E43C();
  v174 = v34;
  v175 = v147;
  v44 = sub_10000DB7C(v173);
  (v143)(v44, v144, v34);
  sub_10076C90C();
  sub_10000CD74(v173);
  v45 = v146;
  v119 = v43;
  sub_10076996C();
  sub_10076994C();
  (v141)(v45, v39);
  sub_10075E3EC();
  v46 = v142;
  v151(v19, v152, v142);
  v47 = v139;
  v48.super.isa = v139;
  v49 = sub_10076D19C(v48).super.isa;
  v149(v19, v46);
  sub_10075E64C();
  v50 = v49;
  v51.super.isa = v47;
  sub_10075E49C(v51);
  v171 = v34;
  v172 = v147;
  v52 = sub_10000DB7C(v170);
  (v143)(v52, v144, v34);
  sub_10076C90C();
  sub_10000CD74(v170);
  v118 = v50;
  sub_10076996C();
  sub_10076994C();
  (v141)(v45, v153);
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v53 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v53 = qword_100944CA0;
  }

  v54 = v133;
  v55 = sub_10000A61C(v133, v53);
  v56 = v132;
  v57 = v140;
  (*(v132 + 16))(v140, v55, v54);
  (*(v56 + 32))(v131, v57, v54);
  sub_1007643EC();
  sub_10076441C();
  v58 = v136;
  swift_allocObject();
  v59 = sub_10076DDBC();
  v169[4] = &protocol witness table for LayoutViewPlaceholder;
  v169[3] = v58;
  v169[0] = v130;
  v168[4] = &protocol witness table for LayoutViewPlaceholder;
  v168[3] = v58;
  v168[0] = v59;
  v117 = v59;
  sub_10000A5D4(&qword_1009426C0, qword_100784180);
  v60 = *(sub_10076DB9C() - 8);
  v129 = *(v60 + 72);
  v61 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v115 = 4 * v129;
  v62 = swift_allocObject();
  v116 = v62;
  *(v62 + 16) = xmmword_100785C70;
  v63 = v62 + v61;

  sub_10075E3BC();
  v166 = &type metadata for CGFloat;
  v167 = &protocol witness table for CGFloat;
  v165[0] = v64;
  sub_10075E47C();
  v114 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v65 = v156;
  v66 = *(v156 + 104);
  v136 = v156 + 104;
  v140 = v66;
  v67 = v121;
  v66();
  v68 = sub_10000A5D4(&unk_100963750, &unk_10078AFA0);
  v69 = *(v157 + 72);
  v141 = *(v157 + 80);
  v142 = v68;
  v70 = v157;
  v134 = (v141 + 32) & ~v141;
  v154 = 2 * v69;
  v155 = 3 * v69;
  v153 = v69;
  v71 = swift_allocObject();
  v152 = xmmword_100783C60;
  *(v71 + 16) = xmmword_100783C60;
  sub_10076DB4C();
  sub_10076DB2C();
  sub_10076DB3C();
  *&v161 = v71;
  v150 = sub_100434604(&qword_1009426B0, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
  v149 = sub_10000A5D4(&unk_100963760, &unk_100784170);
  v151 = sub_100016EDC();
  v73 = v122;
  v72 = v123;
  sub_1007712CC();
  LODWORD(v148) = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v74 = v158;
  v146 = *(v158 + 104);
  v147 = v158 + 104;
  v75 = v124;
  v76 = v138;
  v146(v124);
  v135 = v63;
  sub_10076DB8C();
  v77 = *(v74 + 8);
  v158 = v74 + 8;
  v145 = v77;
  v77(v75, v76);
  v78 = *(v70 + 8);
  v157 = v70 + 8;
  v144 = v78;
  v78(v73, v72);
  v79 = *(v65 + 8);
  v156 = v65 + 8;
  v143 = v79;
  (v79)(v67, v137);
  sub_10000CFBC(v164, &unk_100943240, &qword_10078AFB0);
  sub_10000CD74(v165);
  v80 = v177;
  v81 = v178;
  v82 = sub_10000CF78(v176, v177);
  v166 = v80;
  v167 = *(v81 + 8);
  v83 = sub_10000DB7C(v165);
  (*(*(v80 - 8) + 16))(v83, v82, v80);
  sub_10075E41C();
  v163 = 0;
  v161 = 0u;
  v162 = 0u;
  v128 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  (v140)(v67);
  v84 = swift_allocObject();
  *(v84 + 16) = v152;
  sub_10076DB4C();
  sub_10076DB2C();
  sub_10076DB3C();
  v160 = v84;
  sub_1007712CC();
  v85 = v138;
  (v146)(v75, v148, v138);
  v86 = v129;
  sub_10076DB8C();
  v87 = v85;
  v145(v75, v85);
  v144(v73, v72);
  v88 = v137;
  (v143)(v67, v137);
  sub_10000CFBC(&v161, &unk_100943240, &qword_10078AFB0);
  sub_10000CD74(v164);
  sub_10000CD74(v165);
  v113 = 2 * v86;
  v89 = v174;
  v90 = v175;
  v91 = sub_10000CF78(v173, v174);
  v166 = v89;
  v167 = *(v90 + 8);
  v92 = sub_10000DB7C(v165);
  (*(*(v89 - 8) + 16))(v92, v91, v89);
  sub_10075E40C();
  v163 = 0;
  v161 = 0u;
  v162 = 0u;
  (v140)(v67, v128, v88);
  v93 = swift_allocObject();
  *(v93 + 16) = v152;
  sub_10076DB4C();
  sub_10076DB2C();
  sub_10076DB3C();
  v160 = v93;
  sub_1007712CC();
  (v146)(v75, v148, v87);
  v94 = v113;
  sub_10076DB8C();
  v145(v75, v87);
  v144(v73, v72);
  v95 = v88;
  (v143)(v67, v88);
  sub_10000CFBC(&v161, &unk_100943240, &qword_10078AFB0);
  sub_10000CD74(v164);
  sub_10000CD74(v165);
  v129 += v94;
  v96 = v171;
  v97 = v172;
  v98 = sub_10000CF78(v170, v171);
  v166 = v96;
  v167 = *(v97 + 8);
  v99 = sub_10000DB7C(v165);
  (*(*(v96 - 8) + 16))(v99, v98, v96);
  sub_10075E42C();
  v163 = 0;
  v161 = 0u;
  v162 = 0u;
  (v140)(v67, v128, v88);
  v100 = swift_allocObject();
  *(v100 + 16) = v152;
  sub_10076DB4C();
  sub_10076DB2C();
  sub_10076DB3C();
  v160 = v100;
  sub_1007712CC();
  v101 = v138;
  (v146)(v75, v148, v138);
  sub_10076DB8C();
  v145(v75, v101);
  v144(v73, v72);
  (v143)(v67, v95);
  sub_10000CFBC(&v161, &unk_100943240, &qword_10078AFB0);
  sub_10000CD74(v164);
  sub_10000CD74(v165);
  sub_10075E47C();
  memset(v164, 0, sizeof(v164));
  (v140)(v67, v114, v95);
  v102 = swift_allocObject();
  *(v102 + 16) = v152;
  sub_10076DB4C();
  sub_10076DB2C();
  sub_10076DB3C();
  *&v161 = v102;
  sub_1007712CC();
  (v146)(v75, v148, v101);
  sub_10076DB8C();
  v145(v75, v101);
  v144(v73, v72);
  (v143)(v67, v95);
  sub_10000CFBC(v164, &unk_100943240, &qword_10078AFB0);
  sub_10000CD74(v165);
  v103 = v125;
  sub_10076DB7C();
  sub_10000CD74(v168);
  sub_10000CD74(v169);
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_1007841E0;
  v105 = v139;
  *(v104 + 32) = v139;
  v106 = v105;
  v107 = sub_10076DEEC();
  v108 = v127;
  sub_10076D2AC();
  v110 = v109;

  (*(v126 + 8))(v103, v108);
  (*(v132 + 8))(v131, v133);
  sub_10000CD74(v170);
  sub_10000CD74(v173);
  sub_10000CD74(v176);
  return v110;
}

double sub_100432954(uint64_t a1, uint64_t a2, objc_class *a3, double a4, double a5)
{
  v172 = a3;
  v176 = a1;
  v148 = sub_10076DDFC();
  v146 = *(v148 - 8);
  __chkstk_darwin(v148);
  v147 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v144 = &v128 - v9;
  v145 = sub_10076DBAC();
  v143 = *(v145 - 8);
  __chkstk_darwin(v145);
  v160 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_10076DB6C();
  v183 = *(v181 - 8);
  __chkstk_darwin(v181);
  v138 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_10076DB5C();
  v184 = *(v137 - 8);
  __chkstk_darwin(v137);
  v136 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_10076DB0C();
  v182 = *(v178 - 8);
  __chkstk_darwin(v178);
  v135 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076DE2C();
  v141 = *(v14 - 8);
  v142 = v14;
  __chkstk_darwin(v14);
  v140 = &v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10076443C();
  v158 = *(v16 - 8);
  v159 = v16;
  __chkstk_darwin(v16);
  v163 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v157 = &v128 - v19;
  v177 = sub_10076997C();
  *&v180 = *(v177 - 8);
  __chkstk_darwin(v177);
  v21 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10076D1AC();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10075E77C();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v128 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E6FC();
  sub_10075E73C();
  (*(v27 + 8))(v29, v26);
  v155 = sub_10076DDDC();
  swift_allocObject();
  v156 = sub_10076DDBC();
  sub_10075E3CC();
  LODWORD(v175) = enum case for FontSource.useCase(_:);
  v30 = *(v23 + 104);
  v173 = v23 + 104;
  *&v174 = v30;
  v164 = v22;
  v30(v25);
  v31.super.isa = a3;
  v32.super.isa = sub_10076D19C(v31).super.isa;
  v33 = *(v23 + 8);
  v170 = v23 + 8;
  v171 = v33;
  v33(v25, v22);
  v34 = sub_10075E63C();
  v35 = "inAppDescription";
  if (v34)
  {
    v35 = "chase.Subtitle.Format";
    v36._countAndFlagsBits = 0xD00000000000003ALL;
  }

  else
  {
    v36._countAndFlagsBits = 0xD00000000000002DLL;
  }

  v36._object = (v35 | 0x8000000000000000);
  v211._countAndFlagsBits = 0;
  v211._object = 0xE000000000000000;
  v165 = sub_1007622EC(v36, v211);
  v37 = v32.super.isa;
  sub_10075E44C();
  v38 = sub_10076C04C();
  v209 = v38;
  v169 = sub_100434604(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v210 = v169;
  v39 = sub_10000DB7C(v208);
  LODWORD(v167) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v40 = *(v38 - 8);
  v166 = *(v40 + 104);
  v168 = v40 + 104;
  v166(v39);
  sub_10076C90C();
  sub_10000CD74(v208);
  v162 = v21;
  v139 = v37;
  sub_10076996C();
  sub_10076994C();
  v41 = *(v180 + 8);
  *&v180 = v180 + 8;
  v165 = v41;
  v42 = v21;
  v43 = v177;
  v41(v42, v177);
  v179 = a2;
  sub_10075E4AC();
  v44 = v164;
  (v174)(v25, v175, v164);
  v45.super.isa = v172;
  isa = sub_10076D19C(v45).super.isa;
  v171(v25, v44);
  sub_10076BB6C();
  v47 = isa;
  sub_10075E43C();
  v206 = v38;
  v207 = v169;
  v48 = sub_10000DB7C(v205);
  (v166)(v48, v167, v38);
  sub_10076C90C();
  sub_10000CD74(v205);
  v49 = v162;
  v134 = v47;
  sub_10076996C();
  sub_10076994C();
  v165(v49, v43);
  sub_10075E3EC();
  v50 = v164;
  (v174)(v25, v175, v164);
  v51 = v172;
  v52.super.isa = v172;
  v53 = sub_10076D19C(v52).super.isa;
  v171(v25, v50);
  sub_10075E64C();
  v54 = v53;
  v55.super.isa = v51;
  sub_10075E49C(v55);
  v203 = v38;
  v204 = v169;
  v56 = sub_10000DB7C(v202);
  (v166)(v56, v167, v38);
  sub_10076C90C();
  sub_10000CD74(v202);
  v133 = v54;
  sub_10076996C();
  sub_10076994C();
  v165(v49, v177);
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v57 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v57 = qword_100944CA0;
  }

  v58 = v159;
  v59 = sub_10000A61C(v159, v57);
  v60 = v158;
  v61 = v163;
  (*(v158 + 16))(v163, v59, v58);
  (*(v60 + 32))(v157, v61, v58);
  sub_1007643EC();
  sub_10076441C();
  v62 = v155;
  swift_allocObject();
  v132 = sub_10076DDBC();
  v201[5] = v156;
  v201[4] = &protocol witness table for LayoutViewPlaceholder;
  v201[3] = v62;
  v201[0] = v132;

  sub_10075E3FC();
  sub_10000CF78(v198, v199);
  sub_10076D41C();
  sub_10075E3BC();
  v153 = sub_10076DEDC();
  v154 = sub_10000A5D4(&unk_100942870, &qword_100784460);
  v63 = swift_allocObject();
  v180 = xmmword_1007841E0;
  *(v63 + 16) = xmmword_1007841E0;
  *(v63 + 32) = v51;
  v131 = v51;
  v64 = sub_10076DEEC();
  sub_10076C8FC();

  sub_10000CD74(v198);
  sub_10000A5D4(&qword_1009426C0, qword_100784180);
  v65 = *(sub_10076DB9C() - 8);
  v151 = *(v65 + 72);
  v66 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v67 = swift_allocObject();
  v130 = v67;
  *(v67 + 16) = xmmword_100788B20;
  v166 = (v67 + v66);
  sub_10000CF78(v208, v209);
  sub_10076D26C();
  sub_10075E41C();
  v194 = 0;
  v193 = 0u;
  v192 = 0u;
  LODWORD(v152) = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  v68 = v182;
  v69 = *(v182 + 104);
  v150 = v182 + 104;
  v161 = v69;
  v70 = v135;
  v69(v135);
  v71 = sub_10000A5D4(&unk_100963750, &unk_10078AFA0);
  v72 = *(v184 + 72);
  v162 = *(v184 + 80);
  v163 = v71;
  v149 = (v162 + 32) & ~v162;
  v176 = 2 * v72;
  v177 = 3 * v72;
  v175 = v72;
  v73 = swift_allocObject();
  v174 = xmmword_100783C60;
  *(v73 + 16) = xmmword_100783C60;
  sub_10076DB4C();
  sub_10076DB2C();
  sub_10076DB3C();
  v189 = v73;
  v172 = sub_100434604(&qword_1009426B0, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
  v171 = sub_10000A5D4(&unk_100963760, &unk_100784170);
  v173 = sub_100016EDC();
  v74 = v136;
  v75 = v137;
  sub_1007712CC();
  LODWORD(v170) = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v76 = v183;
  v77 = *(v183 + 104);
  v168 = v183 + 104;
  v169 = v77;
  v78 = v138;
  v79 = v181;
  v77(v138);
  sub_10076DB8C();
  v80 = *(v76 + 8);
  v183 = v76 + 8;
  v167 = v80;
  v80(v78, v79);
  v81 = *(v184 + 8);
  v184 += 8;
  v165 = v81;
  v81(v74, v75);
  v82 = *(v68 + 8);
  v182 = v68 + 8;
  v164 = v82;
  v83 = v178;
  v82(v70, v178);
  sub_10000CFBC(&v192, &unk_100943240, &qword_10078AFB0);
  sub_10000CD74(v195);
  sub_10000CD74(v198);
  v84 = v206;
  v85 = v207;
  v86 = sub_10000CF78(v205, v206);
  v199 = v84;
  v200 = v85[1];
  v87 = sub_10000DB7C(v198);
  (*(*(v84 - 8) + 16))(v87, v86, v84);
  sub_10075E40C();
  v194 = 0;
  v193 = 0u;
  v192 = 0u;
  v161(v70, v152, v83);
  v88 = swift_allocObject();
  *(v88 + 16) = v174;
  sub_10076DB4C();
  sub_10076DB2C();
  sub_10076DB3C();
  v189 = v88;
  sub_1007712CC();
  v89 = v181;
  v169(v78, v170, v181);
  v90 = v151;
  sub_10076DB8C();
  v167(v78, v89);
  v165(v74, v75);
  v91 = v70;
  v164(v70, v83);
  sub_10000CFBC(&v192, &unk_100943240, &qword_10078AFB0);
  sub_10000CD74(v195);
  sub_10000CD74(v198);
  v129 = 2 * v90;
  v92 = v203;
  v93 = v204;
  v94 = sub_10000CF78(v202, v203);
  v199 = v92;
  v200 = v93[1];
  v95 = sub_10000DB7C(v198);
  (*(*(v92 - 8) + 16))(v95, v94, v92);
  sub_10075E42C();
  v194 = 0;
  v193 = 0u;
  v192 = 0u;
  v161(v70, v152, v83);
  v96 = swift_allocObject();
  *(v96 + 16) = v174;
  sub_10076DB4C();
  sub_10076DB2C();
  sub_10076DB3C();
  v189 = v96;
  sub_1007712CC();
  v97 = v181;
  v169(v78, v170, v181);
  v98 = v129;
  sub_10076DB8C();
  v167(v78, v97);
  v165(v74, v75);
  v99 = v178;
  v164(v91, v178);
  sub_10000CFBC(&v192, &unk_100943240, &qword_10078AFB0);
  sub_10000CD74(v195);
  sub_10000CD74(v198);
  v152 = v98 + v151;
  sub_10075E45C();
  sub_10075E3BC();
  v196 = &type metadata for CGFloat;
  v197 = &protocol witness table for CGFloat;
  v195[0] = v100;
  v161(v91, enum case for VerticalFlowLayout.VerticalPlacement.top(_:), v99);
  v101 = swift_allocObject();
  *(v101 + 16) = v174;
  sub_10076DB4C();
  sub_10076DB2C();
  sub_10076DB3C();
  *&v192 = v101;
  sub_1007712CC();
  v102 = v181;
  v169(v78, v170, v181);
  sub_10076DB8C();
  v167(v78, v102);
  v165(v74, v75);
  v164(v91, v99);
  sub_10000CD74(v198);
  sub_10000CFBC(v195, &unk_100943240, &qword_10078AFB0);
  v103 = v160;
  sub_10076DB7C();
  sub_10075E3BC();
  v104 = swift_allocObject();
  *(v104 + 16) = v180;
  v105 = v131;
  *(v104 + 32) = v131;
  v106 = v105;
  v107 = sub_10076DEEC();
  sub_10076C8FC();

  sub_10075E3BC();
  v108 = swift_allocObject();
  *(v108 + 16) = v180;
  *(v108 + 32) = v106;
  v109 = v106;
  v110 = sub_10076DEEC();
  sub_10076C8FC();

  sub_10075E3BC();
  v111 = swift_allocObject();
  *(v111 + 16) = v180;
  *(v111 + 32) = v109;
  v112 = v109;
  v113 = sub_10076DEEC();
  sub_10076C8FC();

  sub_10075E48C();
  sub_10000CF78(v198, v199);
  sub_10076D41C();
  sub_10000CD74(v198);
  sub_10076D26C();
  v114 = v145;
  v196 = v145;
  v197 = &protocol witness table for VerticalFlowLayout;
  v115 = sub_10000DB7C(v195);
  v116 = v143;
  (*(v143 + 16))(v115, v103, v114);
  sub_10000A570(v198, &v192);
  v191 = &protocol witness table for Double;
  v190 = &type metadata for Double;
  v189 = 0;
  v188 = 0;
  v186 = 0u;
  v187 = 0u;
  v117 = enum case for FlankedHorizontalLayout.ViewAlignment.center(_:);
  v118 = *(v146 + 104);
  v119 = v148;
  v118(v144, enum case for FlankedHorizontalLayout.ViewAlignment.center(_:), v148);
  v185[3] = sub_10076D67C();
  v185[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v185);
  sub_10076D66C();
  v118(v147, v117, v119);
  v120 = v140;
  sub_10076DE1C();
  sub_10000CD74(v198);
  (*(v116 + 8))(v160, v114);

  sub_10000CD74(v201);
  v121 = swift_allocObject();
  *(v121 + 16) = v180;
  *(v121 + 32) = v112;
  v122 = v112;
  v123 = sub_10076DEEC();
  sub_100434604(&qword_100955A60, &type metadata accessor for FlankedHorizontalLayout, &protocol conformance descriptor for FlankedHorizontalLayout);
  v124 = v142;
  sub_10076D2AC();
  v126 = v125;

  (*(v141 + 8))(v120, v124);
  (*(v158 + 8))(v157, v159);
  sub_10000CD74(v202);
  sub_10000CD74(v205);
  sub_10000CD74(v208);
  return v126;
}

double _s20ProductPageExtension33CondensedInAppPurchaseContentViewC6height2in8asPartOf12CoreGraphics7CGFloatV0F8StoreKit17ItemLayoutContextV_9JetEngine15BaseObjectGraphCtFZ_0()
{
  v0 = sub_10075E77C();
  v26 = *(v0 - 8);
  v27 = v0;
  __chkstk_darwin(v0);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10075E4BC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = sub_10076469C();
  __chkstk_darwin(v10 - 8);
  v28 = sub_10076C38C();
  v11 = *(v28 - 8);
  __chkstk_darwin(v28);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E7FC();
  sub_100434604(&qword_1009486F8, &type metadata accessor for InAppPurchaseSearchResult, &protocol conformance descriptor for SearchResult);
  sub_10076332C();
  if (!v29)
  {
    return 0.0;
  }

  v25 = v3;
  v14 = sub_10075E7EC();

  sub_1007632FC();
  if (qword_100940540 != -1)
  {
    swift_once();
  }

  sub_10076C32C();
  _s20ProductPageExtension33CondensedInAppPurchaseContentViewC7metrics0F8StoreKit0d6SearchefG10CardLayoutV7MetricsVvpfi_0();
  swift_getKeyPath();
  sub_10076338C();

  v15 = v29;
  sub_10076C2FC();
  v17 = v16;
  v19 = v18;
  if (sub_10077071C())
  {
    sub_10075E6FC();
    sub_10075E72C();
    sub_10075E76C();
    sub_10075E46C();
    v20 = sub_10043142C(v14, v6, v15, v17, v19);

    v21 = *(v4 + 8);
    v22 = v25;
    v21(v6, v25);
    (*(v26 + 8))(v2, v27);
    v21(v9, v22);
  }

  else
  {
    v20 = sub_100432954(v14, v9, v15, v17, v19);

    (*(v4 + 8))(v9, v25);
  }

  (*(v11 + 8))(v13, v28);
  return v20;
}

uint64_t sub_100434604(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10043464C(void *a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_hideAllButton;
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_hideAllButton];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_hideAllButton] = a1;
  v6 = a1;

  if (!*&v1[v2])
  {
    v4 = [v1 navigationItem];
    v5 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_doneButtonItem];
    [v4 setRightBarButtonItem:v5];
  }
}

void sub_1004346FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_purchasesCollectionViewDataSource) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_purchasesCollectionViewDelegate) = 0;
  v6 = OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_collectionViewTableLayout;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_collectionViewTableLayout) = 0;
  v7 = OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_navigationBarPalettePresenter;
  type metadata accessor for NavigationBarPalettePresenter();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v8 + 50) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 24) = 0u;
  *(v3 + v7) = v8;
  *(v3 + OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_hideAllButton) = 0;
  *(v3 + OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_doneButtonItem) = 0;
  *(v3 + OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_emptyStateView) = 0;
  *(v3 + OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_flowPreviewing) = 0;
  *(v3 + OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_presenter) = a1;
  sub_100760C4C();
  sub_10076F64C();

  sub_10076FC1C();
  *(v3 + OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_artworkLoader) = v25;
  sub_10000A5D4(&qword_100957268, &qword_1007A2E58);
  swift_allocObject();

  *(v3 + OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_shelfDataSource) = sub_10049303C();
  *(v3 + OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_segmentedControlView) = [objc_allocWithZone(type metadata accessor for SegmentedControlView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v3 + OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_searchBar) = [objc_allocWithZone(type metadata accessor for SearchBar()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v9 = [objc_allocWithZone(type metadata accessor for CollectionViewTableLayout()) init];
  v10 = *(v3 + v6);
  *(v3 + v6) = v9;
  v11 = v9;

  if (v11)
  {

    v12 = sub_10007689C(v11, a2);

    swift_unknownObjectWeakAssign();
    sub_100439208(&qword_100957270, v13, type metadata accessor for PurchasesViewController, &unk_1007A2E10);
    v14 = v12;
    sub_1007682CC();
    v15 = v14;
    sub_1007682EC();
    v16 = sub_10076FF6C();

    [v15 setTitle:v16];

    *(v15 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_prefersLargeTitle) = 0;
    v17 = [v15 navigationItem];
    [v17 setLargeTitleDisplayMode:2];

    v18 = sub_100439208(&qword_100957278, 255, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = a1;
    v20[4] = v18;

    v21 = v15;
    v23 = sub_100438F7C(a1, v21, sub_1002C15B8, v20, a2, v22);

    v24 = *&v21[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_flowPreviewing];
    *&v21[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_flowPreviewing] = v23;
  }

  else
  {
    __break(1u);
  }
}