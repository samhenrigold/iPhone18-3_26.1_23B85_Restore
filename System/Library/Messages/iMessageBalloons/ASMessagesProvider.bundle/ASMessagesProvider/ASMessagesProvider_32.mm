id sub_3A59C0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for QuoteView(uint64_t a1)
{
  result = qword_951C78;
  if (!qword_951C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3A5B00(uint64_t a1)
{
  sub_3A5BC4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_3A5BC4(uint64_t a1)
{
  if (!qword_951C88)
  {
    sub_766690();
    v1 = sub_76A480();
    if (!v2)
    {
      atomic_store(v1, &qword_951C88);
    }
  }
}

uint64_t sub_3A5C1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_3A5C64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_3A5CC8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_87D810;
  v6._object = a2;
  v4 = sub_76A8E0(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

UIImage *sub_3A5D14(uint64_t a1)
{
  v2 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_BD88(&qword_940F40, &qword_785F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77E280;
  *(inited + 32) = NSFontAttributeName;
  v4 = qword_93CE78;
  v5 = NSFontAttributeName;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_951BF0;
  v7 = sub_BE70(0, &qword_93F900, UIFont_ptr);
  *(inited + 40) = v6;
  *(inited + 64) = v7;
  *(inited + 72) = NSForegroundColorAttributeName;
  v8 = qword_93CE80;
  v9 = v6;
  v10 = NSForegroundColorAttributeName;
  if (v8 != -1)
  {
    swift_once();
  }

  v11 = qword_951BF8;
  *(inited + 104) = sub_BE70(0, &qword_93E540, UIColor_ptr);
  *(inited + 80) = v11;
  v12 = v11;
  sub_10D028(inited);
  swift_setDeallocating();
  sub_BD88(qword_940F50, &qword_785170);
  swift_arrayDestroy();
  v13 = *(a1 + 32);
  v14 = objc_allocWithZone(NSAttributedString);
  v15 = sub_769210();
  type metadata accessor for Key(0);
  sub_206144();
  isa = sub_7690E0().super.isa;

  v17 = [v14 initWithString:v15 attributes:isa];

  [v2 setAttributedText:v17];
  v18 = v2;
  [v18 sizeToFit];
  [v18 frame];
  v19 = CGRectGetWidth(v32) + *(a1 + 64);
  if (v13 == 1)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = *(a1 + 64);
  }

  [v18 frame];
  Height = CGRectGetHeight(v33);
  v22 = [objc_opt_self() mainScreen];
  [v22 scale];
  v24 = v23;

  v31.width = v19;
  v31.height = Height;
  UIGraphicsBeginImageContextWithOptions(v31, 0, v24);
  [v18 frame];
  v26 = v25;
  v28 = v27;

  [v18 drawTextInRect:{v20, 0.0, v26, v28}];
  v29 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v29;
}

id sub_3A6174()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for VisualEffectContainerView();
  objc_msgSendSuper2(&v9, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider25VisualEffectContainerView_embeddedView];
  [v0 bounds];
  [v1 sizeThatFits:{CGRectGetWidth(v10), 1.79769313e308}];
  v3 = v2;
  v5 = v4;
  [v0 bounds];
  Width = CGRectGetWidth(v11);
  if (Width < v3)
  {
    v3 = Width;
  }

  [v0 bounds];
  v7 = CGRectGetMidX(v12) - v3 * 0.5;
  [v0 bounds];
  return [v1 setFrame:{v7, CGRectGetMidY(v13) - v5 * 0.5, v3, v5}];
}

id sub_3A6300()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisualEffectContainerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_3A6368(void *a1, __n128 a2, double a3)
{
  v6 = a2.n128_f64[0];
  v7 = *(*v3 + OBJC_IVAR____TtC18ASMessagesProvider25VisualEffectContainerView_embeddedView);
  sub_7671D0();
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_77D9F0;
  *(v8 + 32) = a1;
  v9 = a1;
  v10 = sub_7671E0();
  [v7 measurementsWithFitting:v10 in:{v6, a3}];
  v12 = v11;

  return v12;
}

uint64_t sub_3A6484()
{
  v0 = sub_758260();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v14 - v5;
  sub_7587A0();
  sub_3A6A38(&qword_93F6D8, &type metadata accessor for AppPromotion, &protocol conformance descriptor for AppPromotion);
  sub_75C750();
  if (!v14[1])
  {
    return 0;
  }

  sub_758790();
  (*(v1 + 16))(v3, v6, v0);
  v7 = (*(v1 + 88))(v3, v0);
  if (v7 == enum case for AppPromotionType.appEvent(_:))
  {
    (*(v1 + 8))(v6, v0);

    v8 = type metadata accessor for AppEventCollectionViewCell(0);
    v9 = &unk_951D78;
    v10 = type metadata accessor for AppEventCollectionViewCell;
    v11 = &unk_784800;
  }

  else
  {
    if (v7 != enum case for AppPromotionType.contingentOffer(_:) && v7 != enum case for AppPromotionType.offerItem(_:))
    {
      result = sub_76A940();
      __break(1u);
      return result;
    }

    (*(v1 + 8))(v6, v0);

    v8 = type metadata accessor for AppPromotionOfferCollectionViewCell(0);
    v9 = &unk_951D70;
    v10 = type metadata accessor for AppPromotionOfferCollectionViewCell;
    v11 = &unk_78F828;
  }

  sub_3A6A38(v9, v10, v11);
  return v8;
}

uint64_t sub_3A670C()
{
  v0 = sub_764930();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v15 - v5;
  v7 = sub_BD88(&unk_94F1F0, &qword_782290);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - v9;
  swift_getKeyPath();
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();

  (*(v8 + 8))(v10, v7);
  (*(v1 + 104))(v3, enum case for Shelf.ContentType.appPromotion(_:), v0);
  sub_3A6A38(&qword_942D68, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  sub_769430();
  sub_769430();
  if (v15[2] == v15[0] && v15[3] == v15[1])
  {
    v11 = *(v1 + 8);
    v11(v3, v0);
    v11(v6, v0);

    return sub_3A6484();
  }

  v12 = sub_76A950();
  v13 = *(v1 + 8);
  v13(v3, v0);
  v13(v6, v0);

  if (v12)
  {
    return sub_3A6484();
  }

  return 0;
}

uint64_t sub_3A6A38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_3A6A80(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_isCollapsing] = 0;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_objectGraph] = a2;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_presenter] = a1;
  sub_75A110();
  sub_768900();

  sub_768ED0();
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_artworkLoader] = v24;

  sub_75A120();

  sub_75A0D0();

  v9 = &v3[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_lifecycleObserver];
  *(v9 + 3) = sub_758580();
  *(v9 + 4) = &protocol witness table for BasePresenter;
  *v9 = a1;
  v10 = objc_allocWithZone(type metadata accessor for AppEventDetailPageView(0));

  v11 = [v10 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_pageView] = v11;
  v12 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageTransitioningDelegate(0));
  v13 = a3;
  v14 = sub_2F8AE8(a3);

  *&v4[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_containerTransitioningDelegate] = v14;
  v23.receiver = v4;
  v23.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v23, "initWithNibName:bundle:", 0, 0);
  sub_761120();
  v16 = v15;
  sub_768ED0();
  v17 = v24;
  v18 = v16;
  sub_7610F0();

  sub_3AA734(&qword_951DF0, v19, type metadata accessor for AppEventDetailPageViewController, &unk_799DEC);
  sub_758570();
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
    [v22 addSubview:*&v18[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_pageView]];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_3A6F84(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_7587B0();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v2;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewWillAppear:", a1 & 1, v7);
  sub_B170(&v2[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.willAppear(_:), v5);
  sub_7587C0();
  (*(v6 + 8))(v9, v5);
  sub_761120();
  sub_768900();

  sub_768ED0();

  v10 = v12[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_3AA734(&qword_93F500, 255, type metadata accessor for VideoView, &unk_77FEB0);
  }

  sub_3AA734(&qword_962970, 255, type metadata accessor for AppEventDetailPageView, &unk_7AE58C);
  sub_761100();
}

void sub_3A723C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_7572A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7587B0();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = v2;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, "viewDidAppear:", a1 & 1, v11);
  sub_B170(&v2[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v9);
  sub_7587C0();
  (*(v10 + 8))(v13, v9);
  if (sub_75A130())
  {
    sub_757290();
    sub_757270();
    (*(v6 + 8))(v8, v5);
    sub_75CAA0();
  }

  sub_75A0A0();
  sub_75B430();
  sub_75B410();
  sub_75A170();
  sub_75B3F0();

  sub_761120();
  sub_768900();

  sub_768ED0();

  v14 = v15[1];
  sub_7610A0();
  sub_6D48E0();
}

void sub_3A757C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_7572A0();
  v18 = *(v5 - 8);
  v19 = v5;
  __chkstk_darwin(v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_768D60();
  __chkstk_darwin(v8 - 8);
  v9 = sub_BD88(&qword_940CB0, "ޥ\a");
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_7587B0();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.receiver = v2;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, "viewWillDisappear:", a1 & 1, v14);
  sub_B170(&v2[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_lifecycleObserver + 24]);
  sub_768D50();
  (*(v13 + 104))(v16, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v12);
  sub_7587C0();
  (*(v13 + 8))(v16, v12);
  if (sub_75A130())
  {
    sub_768D50();
    sub_757290();
    sub_757270();
    (*(v18 + 8))(v7, v19);
    sub_75CAC0();
    v17 = sub_75CAD0();
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
    sub_75CAB0();
  }

  sub_75A0A0();
  sub_75B430();
  sub_75B410();
  sub_75B3F0();

  sub_75B410();
  sub_75B390();
}

void sub_3A794C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_7587B0();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v2;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "viewDidDisappear:", a1 & 1, v7);
  sub_B170(&v2[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v5);
  sub_7587C0();
  (*(v6 + 8))(v9, v5);
  v10 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_pageView];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    type metadata accessor for VideoView(0);
    sub_3AA734(&unk_93F530, 255, type metadata accessor for VideoView, &unk_7AD180);
    sub_75A0C0();
  }

  else
  {
    sub_BE70(0, &qword_949D90, UIImageView_ptr);
    sub_1EE5B8();
    sub_75A0C0();
  }

  v13 = *(*(v10 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  sub_759210();
  sub_3AA734(&qword_945810, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v14 = v13;
  sub_75A0C0();

  sub_761120();
  sub_768900();

  sub_768ED0();

  v15 = v17[1];
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    sub_3AA734(&qword_93F500, 255, type metadata accessor for VideoView, &unk_77FEB0);
  }

  sub_3AA734(&qword_962970, 255, type metadata accessor for AppEventDetailPageView, &unk_7AE58C);
  sub_7610C0();
}

double sub_3A7DE0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7587B0();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "as_viewDidBecomeFullyVisible", v5);
  sub_B170(&v1[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v3);
  sub_7587C0();
  (*(v4 + 8))(v7, v3);
  sub_75A0A0();
  sub_75B430();
  sub_75B410();
  sub_75A170();
  sub_75B3F0();

  sub_75B410();
  sub_75B390();

  return result;
}

double sub_3A7FE0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7587B0();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "as_viewWillBecomePartiallyVisible", v5);
  sub_B170(&v1[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_lifecycleObserver + 24]);
  sub_768D50();
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v3);
  sub_7587C0();
  (*(v4 + 8))(v7, v3);
  sub_75A0A0();
  sub_75B430();
  sub_75B410();
  sub_75B3F0();

  sub_75B410();
  sub_75B390();

  return result;
}

void sub_3A81FC(SEL *a1, unsigned int *a2, void (*a3)(uint64_t))
{
  v7 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_7587B0();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v7;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, *a1, v11);
  sub_B170(&v7[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_lifecycleObserver], *&v7[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, *a2, v9);
  sub_7587C0();
  (*(v10 + 8))(v13, v9);
  sub_761120();
  sub_768900();

  sub_768ED0();

  v15 = v16[1];
  a3(v14);
}

id sub_3A8414()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_pageView];
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
    v12 = sub_4FF230();
    v13 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_defaultPageMargin;
    *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_defaultPageMargin] = v12;
    v14 = [v1 traitCollection];
    LOBYTE(v3) = sub_7699F0();

    if (v3)
    {
      v15 = -*&v1[v13];
    }

    else
    {
      v15 = 0.0;
    }

    return [*&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_cardScrollView] setScrollIndicatorInsets:{0.0, v15}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_3A8598(void *a1)
{
  v2 = v1;
  v17.receiver = v1;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v4 = sub_769A00() & 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [v1 traitCollection];
  v6 = sub_769A00();

  if (v4 == 2 || ((v6 ^ v4) & 1) != 0)
  {
    goto LABEL_12;
  }

  v7 = [v2 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_12:
    sub_758560();
    goto LABEL_13;
  }

  v9 = [a1 preferredContentSizeCategory];
  v10 = sub_769240();
  v12 = v11;
  if (v10 == sub_769240() && v12 == v13)
  {

    goto LABEL_13;
  }

  v14 = sub_76A950();

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

void sub_3A883C()
{
  v1 = sub_7587B0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B170((v0 + OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_lifecycleObserver), *(v0 + OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_lifecycleObserver + 24));
  (*(v2 + 104))(v4, enum case for StoreViewControllerLifecycleEvent.appEnteredWhileAppeared(_:), v1);
  sub_7587C0();
  (*(v2 + 8))(v4, v1);
  sub_761120();
  sub_768900();

  sub_768ED0();

  v5 = v6[1];
  sub_761080();
}

uint64_t sub_3A8B34(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_7587B0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v9 = a1;
    swift_unknownObjectRetain();
    sub_76A510();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v10 = a1;
  }

  (*(v6 + 104))(v8, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v5);
  sub_758580();
  sub_3AA734(&qword_951DE8, 255, &type metadata accessor for AppEventDetailPagePresenter, &protocol conformance descriptor for BasePresenter);
  sub_75EBD0();
  (*(v6 + 8))(v8, v5);
  [a1 dismissViewControllerAnimated:1 completion:0];

  return sub_10A2C(v12, &unk_93FBD0, &qword_77DFA0);
}

void sub_3A8CEC()
{
  v1 = v0;
  v2 = sub_7587B0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v2, v4);
  sub_758580();
  sub_3AA734(&qword_951DE8, 255, &type metadata accessor for AppEventDetailPagePresenter, &protocol conformance descriptor for BasePresenter);
  sub_75EBD0();
  (*(v3 + 8))(v6, v2);
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  aBlock[4] = sub_3AA7E0;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_88F350;
  v8 = _Block_copy(aBlock);
  v9 = v1;

  [v9 dismissViewControllerAnimated:1 completion:v8];
  _Block_release(v8);
}

uint64_t sub_3A8EEC(uint64_t a1)
{
  v2 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  result = sub_758550();
  if (result)
  {
    v6 = result;
    v7 = OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_objectGraph;
    v8 = sub_BD88(&unk_93F630, &unk_77E230);

    sub_768860();

    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v4, 1, v8) == 1)
    {

      return sub_10A2C(v4, &unk_93F980, &qword_77EDA0);
    }

    else
    {
      v10 = *(a1 + v7);

      sub_32A6C0(v6, 1, v10, v4);

      return (*(v9 + 8))(v4, v8);
    }
  }

  return result;
}

void sub_3A9114(uint64_t a1)
{
  v2 = v1;
  v86 = a1;
  v82 = sub_75CA40();
  v78 = *(v82 - 8);
  __chkstk_darwin(v82);
  v81 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v80 = &v71 - v5;
  __chkstk_darwin(v6);
  v79 = &v71 - v7;
  v8 = sub_BD88(&unk_948710, &qword_77FF90);
  __chkstk_darwin(v8 - 8);
  v77 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v76 = &v71 - v11;
  v12 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v12 - 8);
  v73 = &v71 - v13;
  v14 = sub_75A6B0();
  __chkstk_darwin(v14 - 8);
  v71 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v17 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v17 - 8);
  v19 = &v71 - v18;
  v20 = sub_75A6E0();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_75DC30();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v84 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v83 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_pageView];
  v26 = [v1 traitCollection];
  if (sub_769A00())
  {
    v27 = sub_7699D0();
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

    v30 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_artworkLoader];
    v31 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_objectGraph];
    *(v25 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_artworkLoader) = v30;

    v32 = sub_758290();
    v87 = v31;
    sub_64DA74(v32, v27 & 1, v31);

    if (sub_7582D0())
    {
      v33 = sub_764BC0();
    }

    else
    {
      v33 = sub_7582E0();
    }

    *(v25 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mainArtwork) = v33;

    if (sub_7582D0())
    {
      (*(v21 + 104))(v23, enum case for VideoFillMode.scaleAspectFill(_:), v20);
      sub_764BC0();
      sub_765260();
      sub_7666A0();

      v34 = sub_766690();
      (*(*(v34 - 8) + 56))(v19, 0, 1, v34);
      sub_764B60();
      sub_764BA0();
      sub_764B70();
      sub_764B50();
      sub_764BB0();
      v35 = v72;
      sub_75DC10();
      sub_75C360();
      sub_768880();
      sub_764B40();
      v36 = v73;
      sub_764BD0();
      v37 = sub_7570A0();
      (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
      v38 = v76;
      sub_764B90();
      v39 = v77;
      sub_764B80();
      type metadata accessor for VideoView(0);
      sub_3AA734(&qword_93F500, 255, type metadata accessor for VideoView, &unk_77FEB0);
      v40 = sub_75C340();
      sub_10A2C(v39, &unk_948710, &qword_77FF90);
      sub_10A2C(v38, &unk_948710, &qword_77FF90);
      sub_10A2C(v36, &unk_93FD30, qword_77F240);
      sub_10A2C(v88, &unk_9443A0, &unk_77E240);
      sub_6DDACC();
      swift_unknownObjectWeakAssign();
      sub_6D96AC();

      sub_764BC0();
      v41 = sub_7651A0();

      sub_6D49AC(v41);

      (*(v74 + 8))(v35, v75);
    }

    else
    {
      sub_6DDACC();
      swift_unknownObjectWeakAssign();
      sub_6D96AC();
    }

    v42 = (v25 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_closeButtonActionBlock);
    v43 = *(v25 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_closeButtonActionBlock);
    v44 = *(v25 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_closeButtonActionBlock + 8);
    v45 = v85;
    *v42 = sub_3AA7E8;
    v42[1] = v45;
    swift_retain_n();
    sub_F704(v43, v44);

    [*(v25 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_closeButton) addTarget:v25 action:"didTapCloseButton:" forControlEvents:64];

    v46 = (v25 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_dismissTapGestureActionBlock);
    v47 = *(v25 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_dismissTapGestureActionBlock);
    v48 = *(v25 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_dismissTapGestureActionBlock + 8);
    v49 = v84;
    *v46 = sub_3AA6C8;
    v46[1] = v49;

    sub_F704(v47, v48);
    sub_6D8C10();
    v50 = sub_7582A0();
    if (v50)
    {
      v51 = v50;
      v52 = swift_allocObject();
      *(v52 + 16) = v87;
      *(v52 + 24) = v51;

      sub_6DDCC0(sub_3AA72C, v52);
    }

    else
    {
      sub_6DDCC0(0, 0);
    }

    v53 = (v25 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupTapGestureActionBlock);
    v54 = *(v25 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupTapGestureActionBlock);
    v55 = *(v25 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupTapGestureActionBlock + 8);
    v56 = v83;
    *v53 = sub_3AA6E4;
    v53[1] = v56;

    sub_F704(v54, v55);
    sub_6D8DB0();
    v57 = v79;
    sub_7582B0();
    v58 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaOverlayStyle;
    swift_beginAccess();
    v59 = v78;
    v60 = v80;
    v61 = v82;
    (*(v78 + 16))(v80, v25 + v58, v82);
    swift_beginAccess();
    (*(v59 + 24))(v25 + v58, v57, v61);
    swift_endAccess();
    sub_6D93C8(v60);
    v62 = *(v59 + 8);
    v62(v60, v61);
    v62(v57, v61);
    v63 = v81;
    sub_7582B0();
    v64 = sub_75CA20();
    v62(v63, v61);
    v65 = *(*(v25 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton);
    if (v64 == 2)
    {
      v66 = objc_opt_self();
      v67 = v65;
      v68 = [v66 whiteColor];
    }

    else
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      v69 = v65;
      v68 = sub_76A0F0();
    }

    v70 = v68;
    [v65 setTintColor:v68];

    *(v25 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_includeBorderInDarkMode) = sub_7582C0() & 1;
    sub_6D8828();
  }

  else
  {
    __break(1u);
  }
}

void sub_3A9CCC(uint64_t a1, uint64_t a2)
{
  v2 = sub_7587B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    (*(v3 + 104))(v5, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v2);
    sub_758580();
    sub_3AA734(&qword_951DE8, 255, &type metadata accessor for AppEventDetailPagePresenter, &protocol conformance descriptor for BasePresenter);
    sub_75EBD0();
    (*(v3 + 8))(v5, v2);
    [v7 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_3A9E5C(uint64_t a1, uint64_t a2)
{
  v2 = sub_7587B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    (*(v3 + 104))(v5, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v2);
    sub_758580();
    sub_3AA734(&qword_951DE8, 255, &type metadata accessor for AppEventDetailPagePresenter, &protocol conformance descriptor for BasePresenter);
    sub_75EBD0();
    (*(v3 + 8))(v5, v2);
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    aBlock[4] = sub_3AA77C;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    aBlock[3] = &unk_88F300;
    v9 = _Block_copy(aBlock);
    v10 = v7;

    [v10 dismissViewControllerAnimated:1 completion:v9];
    _Block_release(v9);
  }
}

uint64_t sub_3AA084(uint64_t a1)
{
  v3 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_objectGraph;
  v7 = sub_BD88(&unk_93F630, &unk_77E230);

  sub_768860();

  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10A2C(v5, &unk_93F980, &qword_77EDA0);
  }

  v10 = *(v1 + v6);

  sub_32A6C0(a1, 1, v10, v5);

  return (*(v8 + 8))(v5, v7);
}

CGFloat sub_3AA4E0()
{
  v1 = *(*v0 + OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_pageView);
  [v1 bounds];
  v2 = CGRectGetWidth(v4) * 0.5;
  [v1 bounds];
  CGRectGetHeight(v5);
  return v2;
}

void *sub_3AA548()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_pageView) + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_closeButton);
  v2 = v1;
  return v1;
}

id sub_3AA588(char a1)
{
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_isCollapsing) = a1;
  *(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_pageView) + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_isCollapsing) = a1;
  return sub_6D92BC();
}

double sub_3AA5D0(__n128 a1)
{
  sub_75B430();
  sub_75B410();
  sub_75A170();
  sub_75B3F0();

  return result;
}

uint64_t sub_3AA690()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3AA6EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3AA734(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double sub_3AA784(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_3AA79C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3AA7F4@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v77 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v77);
  v2 = &v59 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_75CFE0();
  v72 = *(v3 - 8);
  v73 = v3;
  __chkstk_darwin(v3);
  v71 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&qword_9439D8, &qword_799160);
  __chkstk_darwin(v5 - 8);
  v78 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v76 = &v59 - v8;
  v9 = sub_BD88(&qword_9439E0, &unk_787AB0);
  __chkstk_darwin(v9 - 8);
  v69 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v65 = &v59 - v12;
  v13 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v62 = *(v13 - 8);
  v63 = v13;
  __chkstk_darwin(v13);
  v66 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v64 = &v59 - v16;
  __chkstk_darwin(v17);
  v75 = &v59 - v18;
  v19 = sub_BD88(&unk_948010, qword_789590);
  __chkstk_darwin(v19 - 8);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v74 = &v59 - v23;
  v24 = sub_764930();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_BD88(&unk_94F1F0, &qword_782290);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v59 - v30;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v29 + 8))(v31, v28);
  v67 = v27;
  v68 = v25;
  v32 = *(v25 + 88);
  v70 = v24;
  v33 = v32(v27, v24);
  if (v33 == enum case for Shelf.ContentType.paragraph(_:) || v33 == enum case for Shelf.ContentType.titledParagraph(_:))
  {
    if (qword_93CDB8 != -1)
    {
      swift_once();
    }

    v39 = sub_BE38(v77, qword_99D468);
    return sub_19CE28(v39, v79, type metadata accessor for TitleHeaderView.Style);
  }

  else
  {
    v34 = sub_759810();
    v35 = *(v34 - 8);
    v36 = v74;
    (*(v35 + 56))(v74, 1, 1, v34);
    v37 = sub_75CFD0();
    v59 = *(v37 - 8);
    v60 = v37;
    (*(v59 + 56))(v76, 1, 1);
    sub_1ED18(v36, v21, &unk_948010, qword_789590);
    if ((*(v35 + 48))(v21, 1, v34) == 1)
    {
      sub_10A2C(v21, &unk_948010, qword_789590);
      v38 = 0;
    }

    else
    {
      v38 = sub_7597B0();
      (*(v35 + 8))(v21, v34);
    }

    v41 = v75;
    v61 = v2;
    sub_5E740C(v38, v75);

    if (qword_93DE38 != -1)
    {
      swift_once();
    }

    v42 = v63;
    v43 = sub_BE38(v63, qword_9A01C0);
    v44 = v65;
    (*(v62 + 56))(v65, 1, 1, v42);
    v45 = v64;
    sub_19CE28(v41, v64, type metadata accessor for TitleHeaderView.TextConfiguration);
    v46 = v66;
    sub_19CE28(v43, v66, type metadata accessor for TitleHeaderView.TextConfiguration);
    v47 = v69;
    sub_1ED18(v44, v69, &qword_9439E0, &unk_787AB0);
    v48 = v76;
    sub_1ED18(v76, v78, &qword_9439D8, &qword_799160);
    v49 = v71;
    v50 = v72;
    v51 = v73;
    (*(v72 + 104))(v71, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v73);
    sub_396E8();
    v63 = sub_769FB0();
    sub_10A2C(v48, &qword_9439D8, &qword_799160);
    sub_10A2C(v44, &qword_9439E0, &unk_787AB0);
    sub_C1DBC(v75, v52);
    sub_10A2C(v74, &unk_948010, qword_789590);
    v53 = v77;
    v54 = v77[8];
    v55 = v61;
    sub_C1E18(v45, v61, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_C1E18(v46, v55 + v53[5], type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_15CF04(v47, v55 + v53[6]);
    *(v55 + v53[7]) = 0;
    *(v55 + v54) = 0;
    *(v55 + v53[9]) = 0;
    *(v55 + v53[14]) = 0x4030000000000000;
    *(v55 + v53[12]) = 0;
    *(v55 + v53[13]) = v63;
    v56 = v78;
    (*(v50 + 32))(v55 + v53[11], v49, v51);
    v58 = v59;
    v57 = v60;
    if ((*(v59 + 48))(v56, 1, v60) == 1)
    {
      sub_10A2C(v56, &qword_9439D8, &qword_799160);
      (*(v58 + 104))(v55 + v53[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v57);
    }

    else
    {
      (*(v58 + 32))(v55 + v53[10], v56, v57);
    }

    sub_C1E18(v55, v79, type metadata accessor for TitleHeaderView.Style);
    return (*(v68 + 8))(v67, v70);
  }
}

id sub_3AB180()
{
  v0[OBJC_IVAR____TtC18ASMessagesProvider11ChevronView_shouldAnimate] = 0;
  v0[OBJC_IVAR____TtC18ASMessagesProvider11ChevronView_isAnimating] = 0;
  v1 = OBJC_IVAR____TtC18ASMessagesProvider11ChevronView_chevronImageView;
  v2 = sub_56E958(0xD000000000000013, 0x80000000007DEC30, 0);
  v3 = [v2 imageWithRenderingMode:2];

  v4 = [objc_allocWithZone(UIImageView) initWithImage:v3];
  *&v0[v1] = v4;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for ChevronView();
  v5 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_3AB500();

  return v5;
}

id sub_3AB29C(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC18ASMessagesProvider11ChevronView_shouldAnimate] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider11ChevronView_isAnimating] = 0;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider11ChevronView_chevronImageView;
  v10 = sub_56E958(0xD000000000000013, 0x80000000007DEC30, 0);
  v11 = [v10 imageWithRenderingMode:2];

  v12 = [objc_allocWithZone(UIImageView) initWithImage:v11];
  *&v4[v9] = v12;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for ChevronView();
  v13 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  sub_3AB500();

  return v13;
}

id sub_3AB3D8(void *a1)
{
  v1[OBJC_IVAR____TtC18ASMessagesProvider11ChevronView_shouldAnimate] = 0;
  v1[OBJC_IVAR____TtC18ASMessagesProvider11ChevronView_isAnimating] = 0;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider11ChevronView_chevronImageView;
  v4 = sub_56E958(0xD000000000000013, 0x80000000007DEC30, 0);
  v5 = [v4 imageWithRenderingMode:2];

  v6 = [objc_allocWithZone(UIImageView) initWithImage:v5];
  *&v1[v3] = v6;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for ChevronView();
  v7 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    sub_3AB500();
  }

  return v8;
}

id sub_3AB500()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider11ChevronView_chevronImageView];
  if (qword_93CB48 != -1)
  {
    swift_once();
  }

  [v1 setTintColor:qword_99CCB8];
  v2 = [v1 layer];
  v3 = [v0 traitCollection];
  [v3 userInterfaceStyle];

  sub_769240();
  v4 = sub_769210();

  [v2 setCompositingFilter:v4];

  [v1 setContentMode:1];
  [v1 setAlpha:0.0];
  [v0 addSubview:v1];
  [v1 frame];

  return [v0 setFrame:{0.0, 0.0}];
}

void sub_3AB6E4()
{
  v1 = sub_7599A0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = &aBlock - v7;
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider11ChevronView_shouldAnimate) == 1)
  {
    v9 = OBJC_IVAR____TtC18ASMessagesProvider11ChevronView_isAnimating;
    if ((*(v0 + OBJC_IVAR____TtC18ASMessagesProvider11ChevronView_isAnimating) & 1) == 0)
    {
      v10 = [v0 window];
      if (v10)
      {

        *(v0 + v9) = 1;
        sub_759960();
        v11 = v0;
        sub_759980();
        v13 = v12;
        v15 = v14;
        v16 = *(v2 + 8);
        v16(v8, v1);
        sub_759960();
        sub_759990();
        v18 = v17;
        v20 = v19;
        v16(v4, v1);
        v21 = swift_allocObject();
        *(v21 + 16) = v0;
        v22 = objc_allocWithZone(UIViewPropertyAnimator);
        v48 = sub_3AC148;
        v49 = v21;
        aBlock = _NSConcreteStackBlock;
        v45 = 1107296256;
        v46 = sub_23F0CC;
        v47 = &unk_88F3A0;
        v23 = _Block_copy(&aBlock);
        v24 = v11;

        v25 = [v22 initWithDuration:v23 controlPoint1:1.06 controlPoint2:v13 animations:{v15, v18, v20}];
        _Block_release(v23);
        sub_759970();
        sub_759980();
        v27 = v26;
        v29 = v28;
        v16(v8, v1);
        sub_759970();
        sub_759990();
        v31 = v30;
        v33 = v32;
        v16(v4, v1);
        v34 = swift_allocObject();
        *(v34 + 16) = v24;
        v35 = objc_allocWithZone(UIViewPropertyAnimator);
        v48 = sub_3AC184;
        v49 = v34;
        aBlock = _NSConcreteStackBlock;
        v45 = 1107296256;
        v46 = sub_23F0CC;
        v47 = &unk_88F3F0;
        v36 = _Block_copy(&aBlock);
        v37 = v24;

        v38 = [v35 initWithDuration:v36 controlPoint1:0.66 controlPoint2:v27 animations:{v29, v31, v33}];
        _Block_release(v36);
        v39 = swift_allocObject();
        *(v39 + 16) = v38;
        v48 = sub_3AC1A8;
        v49 = v39;
        aBlock = _NSConcreteStackBlock;
        v45 = 1107296256;
        v46 = sub_19EE34;
        v47 = &unk_88F440;
        v40 = _Block_copy(&aBlock);
        v41 = v38;

        [v25 addCompletion:v40];
        _Block_release(v40);
        v42 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v48 = sub_3AC1F0;
        v49 = v42;
        aBlock = _NSConcreteStackBlock;
        v45 = 1107296256;
        v46 = sub_19EE34;
        v47 = &unk_88F490;
        v43 = _Block_copy(&aBlock);

        [v41 addCompletion:v43];
        _Block_release(v43);
        [v25 startAnimation];
      }
    }
  }
}

id sub_3ABBD8(uint64_t a1, CGFloat a2, double a3)
{
  v4 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider11ChevronView_chevronImageView);
  CGAffineTransformMakeTranslation(&v6, 0.0, a2);
  [v4 setTransform:&v6];
  return [v4 setAlpha:a3];
}

uint64_t sub_3ABC5C(uint64_t a1, uint64_t a2)
{
  v23 = sub_768380();
  v26 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7683C0();
  v24 = *(v5 - 8);
  v25 = v5;
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7683E0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider11ChevronView_chevronImageView);

    aBlock = 0x3FF0000000000000;
    v28 = 0;
    v29 = 0;
    v30 = 0x3FF0000000000000;
    v31 = 0;
    v32 = 0;
    [v17 setTransform:&aBlock];
  }

  sub_12EA98();
  v18 = sub_769970();
  sub_7683D0();
  sub_768450();
  v22 = *(v9 + 8);
  v22(v11, v8);
  v31 = sub_3AC1F8;
  v32 = a2;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_23F0CC;
  v30 = &unk_88F4B8;
  v19 = _Block_copy(&aBlock);

  sub_7683A0();
  aBlock = _swiftEmptyArrayStorage;
  sub_4C81C();
  sub_BD88(&qword_940350, &unk_77F850);
  sub_4C874();
  v20 = v23;
  sub_76A5A0();
  sub_769930();
  _Block_release(v19);

  (*(v26 + 8))(v4, v20);
  (*(v24 + 8))(v7, v25);
  return (v22)(v14, v8);
}

void sub_3AC024(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC18ASMessagesProvider11ChevronView_isAnimating] = 0;
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    sub_3AB6E4();
  }
}

id sub_3AC0A8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ChevronView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_3AC110()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_3AC16C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_3AC1B8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

char *sub_3AC228(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18ASMessagesProvider20SegmentedControlView_segmentDidChangeHandler];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = [objc_allocWithZone(UISegmentedControl) initWithFrame:{a1, a2, a3, a4}];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider20SegmentedControlView_segmentedControl] = v10;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for SegmentedControlView();
  v11 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v12 = *&v11[OBJC_IVAR____TtC18ASMessagesProvider20SegmentedControlView_segmentedControl];
  v13 = v11;
  [v13 addSubview:v12];
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  return v13;
}

id sub_3AC5E0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SegmentedControlView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_3AC688()
{
  v1 = v0;
  v2 = sub_764930();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for Shelf.ContentType.smallLockup(_:))
  {
    return type metadata accessor for SmallLockupCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.purchasesLockup(_:))
  {
    return type metadata accessor for SmallLockupCollectionViewTableCell();
  }

  if (v7 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    return type metadata accessor for MediumLockupCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.largeLockup(_:))
  {
    return type metadata accessor for LargeLockupCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:))
  {
    return type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:))
  {
    return type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.action(_:))
  {
    return type metadata accessor for ActionCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.artwork(_:))
  {
    return type metadata accessor for ArtworkCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.paragraph(_:))
  {
    return type metadata accessor for ParagraphCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.annotation(_:))
  {
    return type metadata accessor for AnnotationCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.footnote(_:))
  {
    return type metadata accessor for FootnoteCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.titledParagraph(_:))
  {
    return type metadata accessor for TitledParagraphCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.editorialCard(_:))
  {
    return type metadata accessor for EditorialCardCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.videoCard(_:))
  {
    return type metadata accessor for VideoCardCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.brick(_:))
  {
    return type metadata accessor for BrickCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.productCapability(_:))
  {
    return type metadata accessor for ProductCapabilityCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.reviews(_:) || v7 == enum case for Shelf.ContentType.reviewsContainer(_:))
  {
    return type metadata accessor for ProductReviewCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.editorialLink(_:))
  {
    return type metadata accessor for LinkCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.quote(_:))
  {
    return type metadata accessor for QuoteCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.horizontalRule(_:))
  {
    return type metadata accessor for HorizontalRuleCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.framedArtwork(_:))
  {
    return type metadata accessor for FramedArtworkCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.screenshots(_:))
  {
    return type metadata accessor for ScreenshotShelfCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.appShowcase(_:))
  {
    return type metadata accessor for AppShowcaseCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.inAppPurchaseShowcase(_:))
  {
    return type metadata accessor for InAppPurchaseShowcaseCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.appTrailerLockup(_:))
  {
    return type metadata accessor for AppTrailerLockupCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.productPageLink(_:))
  {
    return type metadata accessor for ProductPageLinkCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.framedVideo(_:))
  {
    return type metadata accessor for FramedVideoCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.productDescription(_:))
  {
    return type metadata accessor for ProductDescriptionCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.banner(_:))
  {
    return type metadata accessor for BannerCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.screenshotsLockup(_:))
  {
    return type metadata accessor for ScreenshotsLockupCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.roundedButton(_:))
  {
    return type metadata accessor for RoundedButtonCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.titledButtonStack(_:))
  {
    return type metadata accessor for TitledButtonStackCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.largeHeroBreakout(_:))
  {
    return type metadata accessor for LargeHeroBreakoutCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.upsellBreakout(_:))
  {
    return type metadata accessor for UpsellBreakoutCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.smallBreakout(_:))
  {
    return type metadata accessor for SmallBreakoutCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.editorialStoryCard(_:))
  {
    return type metadata accessor for EditorialStoryCardCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.mixedMediaLockup(_:))
  {
    return type metadata accessor for MixedMediaLockupCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.arcadeFooter(_:))
  {
    return type metadata accessor for ArcadeFooterCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.editorialQuote(_:))
  {
    return type metadata accessor for EditorialQuoteCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.arcadeShowcase(_:))
  {
    return type metadata accessor for ArcadeShowcaseCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:))
  {
    return type metadata accessor for GameCenterActivityFeedCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.arcadeDownloadPackCard(_:))
  {
    return type metadata accessor for ArcadeDownloadPackCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.gameCenterReengagement(_:))
  {
    return type metadata accessor for GameCenterReengagementCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.smallGameCenterPlayer(_:))
  {
    return type metadata accessor for SmallGameCenterPlayerCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:))
  {
    return type metadata accessor for LargeGameCenterPlayerCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:))
  {
    return type metadata accessor for AchievementSummaryCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.posterLockup(_:))
  {
    return type metadata accessor for PosterLockupCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
    return type metadata accessor for SmallContactCardCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.preorderDisclaimer(_:))
  {
    return type metadata accessor for PreorderDisclaimerCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.privacyHeader(_:))
  {
    return type metadata accessor for PrivacyHeaderCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.privacyFooter(_:))
  {
    return type metadata accessor for PrivacyFooterCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.privacyType(_:))
  {
    return type metadata accessor for PrivacyTypeCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.privacyCategory(_:))
  {
    return type metadata accessor for PrivacyCategoryCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.privacyDefinition(_:))
  {
    return type metadata accessor for PrivacyDefinitionCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.appPromotion(_:))
  {
    return type metadata accessor for AppEventCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.heroCarousel(_:))
  {
    return type metadata accessor for HeroCarouselCollectionViewCell(0);
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t Shelf.ContentType.layoutManagedMultiColumnMargin.getter()
{
  v1 = v0;
  v2 = sub_764930();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for Shelf.ContentType.annotation(_:) || v7 == enum case for Shelf.ContentType.productCapability(_:) || v7 == enum case for Shelf.ContentType.productPageLink(_:) || v7 == enum case for Shelf.ContentType.privacyType(_:))
  {
    return 0x403E000000000000;
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t sub_3AD19C(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = a2;
  v5 = sub_764930();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v29 - v11;
  v13 = v6[2];
  v13(&v29 - v11, a3, v5, v10);
  v14 = v6[11];
  v15 = v14(v12, v5);
  result = 1;
  if (v15 != enum case for Shelf.ContentType.artwork(_:) && v15 != enum case for Shelf.ContentType.ribbonBar(_:) && v15 != enum case for Shelf.ContentType.ribbonFlow(_:) && v15 != enum case for Shelf.ContentType.paragraph(_:) && v15 != enum case for Shelf.ContentType.footnote(_:) && v15 != enum case for Shelf.ContentType.titledParagraph(_:) && v15 != enum case for Shelf.ContentType.reviewsContainer(_:) && v15 != enum case for Shelf.ContentType.reviewSummary(_:) && v15 != enum case for Shelf.ContentType.editorialLink(_:) && v15 != enum case for Shelf.ContentType.quote(_:) && v15 != enum case for Shelf.ContentType.framedArtwork(_:) && v15 != enum case for Shelf.ContentType.screenshots(_:) && v15 != enum case for Shelf.ContentType.appShowcase(_:) && v15 != enum case for Shelf.ContentType.inAppPurchaseShowcase(_:) && v15 != enum case for Shelf.ContentType.linkableText(_:) && v15 != enum case for Shelf.ContentType.framedVideo(_:) && v15 != enum case for Shelf.ContentType.productDescription(_:) && v15 != enum case for Shelf.ContentType.banner(_:) && v15 != enum case for Shelf.ContentType.roundedButton(_:) && v15 != enum case for Shelf.ContentType.titledButtonStack(_:) && v15 != enum case for Shelf.ContentType.smallStoryCard(_:) && v15 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v15 != enum case for Shelf.ContentType.largeHeroBreakout(_:) && v15 != enum case for Shelf.ContentType.upsellBreakout(_:) && v15 != enum case for Shelf.ContentType.smallBreakout(_:) && v15 != enum case for Shelf.ContentType.arcadeFooter(_:) && v15 != enum case for Shelf.ContentType.editorialQuote(_:) && v15 != enum case for Shelf.ContentType.gameCenterReengagement(_:) && v15 != enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:) && v15 != enum case for Shelf.ContentType.preorderDisclaimer(_:) && v15 != enum case for Shelf.ContentType.privacyHeader(_:) && v15 != enum case for Shelf.ContentType.privacyFooter(_:) && v15 != enum case for Shelf.ContentType.privacyCategory(_:) && v15 != enum case for Shelf.ContentType.privacyDefinition(_:) && v15 != enum case for Shelf.ContentType.heroCarousel(_:) && v15 != enum case for Shelf.ContentType.unifiedMessage(_:))
  {
    v29 = a1;
    v17 = v6[1];
    v17(v12, v5);
    (v13)(v8, a3, v5);
    v18 = v14(v8, v5);
    if (v18 != enum case for Shelf.ContentType.annotation(_:) && v18 != enum case for Shelf.ContentType.productCapability(_:) && v18 != enum case for Shelf.ContentType.productPageLink(_:))
    {
      if (v18 == enum case for Shelf.ContentType.privacyType(_:))
      {
        v19 = v30;
        [v30 pageContainerSize];
        v21 = v20;
        JUScreenClassGetPortraitWidth();
        if (v21 >= v22)
        {
          [v19 pageContainerSize];
          v24 = v23;
          [v19 pageContainerSize];
          if (v24 >= v25)
          {
            if (v29 <= 2)
            {
              return 2;
            }

            else
            {
              return 3;
            }
          }
        }
      }

      else
      {
        v17(v8, v5);
      }

      return 2;
    }

    [v30 pageContainerSize];
    v27 = v26;
    JUScreenClassGetPortraitWidth();
    if (v28 > v27)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

uint64_t sub_3AD738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_768380();
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_7683C0();
  v9 = *(v16 - 8);
  __chkstk_darwin(v16);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12EA98();
  v12 = sub_769970();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = a3;
  aBlock[4] = sub_3ADDD4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_88F578;
  v14 = _Block_copy(aBlock);

  swift_errorRetain();

  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_3ADDE0(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_BD88(&qword_940350, &unk_77F850);
  sub_4C874();
  sub_76A5A0();
  sub_769980();
  _Block_release(v14);

  (*(v17 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v16);
}

uint64_t sub_3ADA10(uint64_t a1, uint64_t a2)
{
  v3 = sub_7687C0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75E170();
  v7(a2);

  if (a2)
  {
    swift_errorRetain();
    sub_768F50();
  }

  else
  {
    (*(v4 + 104))(v6, enum case for ActionOutcome.performed(_:), v3);
    sub_768F60();
    return (*(v4 + 8))(v6, v3);
  }
}

void sub_3ADB74(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_3ADBE8(uint64_t a1)
{
  sub_BD88(&qword_94DDC0, qword_77DE00);
  v2 = sub_768F90();
  v3 = objc_opt_self();
  sub_75E180();
  v4 = sub_769210();

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v2;
  v8[4] = sub_3ADD6C;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_3ADB74;
  v8[3] = &unk_88F528;
  v6 = _Block_copy(v8);

  [v3 localApproveRequestWithItemIdentifier:v4 completion:v6];
  _Block_release(v6);

  return v2;
}

uint64_t sub_3ADD2C()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_3ADD74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_3ADD8C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_3ADDE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_3ADE30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 16))(a3, a1, a2);

  return v3;
}

void *sub_3ADE74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_757640();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v3 collectionView];
  if (v9)
  {
    v10 = v9;
    [v9 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v12 = 0.0;
    v14 = 0.0;
    v16 = 0.0;
    v18 = 0.0;
  }

  v19 = [v3 layoutAttributesForElementsInRect:{v12, v14, v16, v18}];
  if (v19)
  {
    v20 = v19;
    sub_E59C4();
    v21 = sub_769460();

    if (v21 >> 62)
    {
LABEL_26:
      v22 = sub_76A860();
      if (v22)
      {
LABEL_7:
        v34 = v4;
        v4 = 0;
        v33 = (v5 + 1);
        v5 = _swiftEmptyArrayStorage;
        do
        {
          v23 = v4;
          while (1)
          {
            if ((v21 & 0xC000000000000001) != 0)
            {
              v24 = sub_76A770();
            }

            else
            {
              if (v23 >= *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_25;
              }

              v24 = *(v21 + 8 * v23 + 32);
            }

            v25 = v24;
            v4 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              __break(1u);
LABEL_25:
              __break(1u);
              goto LABEL_26;
            }

            if (![v24 representedElementCategory])
            {
              break;
            }

            ++v23;
            if (v4 == v22)
            {
              goto LABEL_28;
            }
          }

          v26 = [v25 indexPath];
          sub_757590();

          v32 = sub_7575D0();
          (*v33)(v8, v34);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_7BC8C(0, *(v5 + 2) + 1, 1, v5);
          }

          v28 = *(v5 + 2);
          v27 = *(v5 + 3);
          if (v28 >= v27 >> 1)
          {
            v5 = sub_7BC8C((v27 > 1), v28 + 1, 1, v5);
          }

          *(v5 + 2) = v28 + 1;
          *&v5[v28 + 4] = v32;
        }

        while (v4 != v22);
        goto LABEL_28;
      }
    }

    else
    {
      v22 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
      if (v22)
      {
        goto LABEL_7;
      }
    }

    v5 = _swiftEmptyArrayStorage;
LABEL_28:

    v29 = sub_68D2D0(v5);

    return v29;
  }

  return _swiftEmptySetSingleton;
}

char *sub_3AE18C(void *a1, uint64_t a2)
{
  v25 = a1;
  v3 = sub_757640();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding];

  v8 = [v25 indexPath];
  sub_757590();

  LOBYTE(v8) = sub_666EC8(v6, v7);

  (*(v4 + 8))(v6, v3);
  if (v8)
  {
    v9 = [v2 collectionView];
    if (v9)
    {
      v10 = v9;
      type metadata accessor for BaseCollectionViewLayoutAttributes();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = v11;
        v13 = v25;
        v14 = v10;
        [v14 contentOffset];
        v16 = v15;
        v17 = -v15;
        if (v15 > 0.0)
        {
          v17 = 0.0;
        }

        *&v12[OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_rubberbandingDistance] = v17;
        v18 = v13;
        [v12 frame];
        [v12 setFrame:?];
        [v12 frame];
        [v12 setFrame:?];
        v12[OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_isRubberbanding] = v16 < 0.0;
        if (v16 <= 0.0)
        {

          *&v12[OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_parallaxY] = 0;
        }

        else
        {
          [v14 contentOffset];
          v20 = v19;

          v21 = v20 * 0.28;
          if (v20 * 0.28 < 0.0)
          {
            v21 = 0.0;
          }

          *&v12[OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_parallaxY] = v21;
        }

        return v12;
      }
    }
  }

  v22 = v25;

  return v22;
}

_OWORD *sub_3AE42C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for BaseCollectionViewLayoutAttributes();
  v9.receiver = v2;
  v9.super_class = v5;
  objc_msgSendSuper2(&v9, "copyWithZone:", a1);
  sub_76A510();
  swift_unknownObjectRelease();
  sub_132B4(v10, v8);
  if (!swift_dynamicCast())
  {
    return sub_13310(v10, a2);
  }

  *(v7 + OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_parallaxY) = *&v2[OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_parallaxY];
  *(v7 + OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_rubberbandingDistance) = *&v2[OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_rubberbandingDistance];
  *(v7 + OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_isRubberbanding) = v2[OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_isRubberbanding];
  *(a2 + 24) = v5;
  *a2 = v7;
  return sub_BEB8(v10);
}

BOOL sub_3AE580(uint64_t a1)
{
  sub_38EE0(a1, v18);
  v3 = v19;
  if (v19)
  {
    v4 = sub_B170(v18, v19);
    v5 = *(v3 - 8);
    v6 = __chkstk_darwin(v4);
    v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_76A930();
    (*(v5 + 8))(v8, v3);
    sub_BEB8(v18);
  }

  else
  {
    v9 = 0;
  }

  v10 = type metadata accessor for BaseCollectionViewLayoutAttributes();
  v17.receiver = v1;
  v17.super_class = v10;
  v11 = objc_msgSendSuper2(&v17, "isEqual:", v9);
  swift_unknownObjectRelease();
  if (!v11)
  {
    return 0;
  }

  sub_38EE0(a1, v18);
  if (!v19)
  {
    sub_BDD0(v18);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_parallaxY] != *&v16[OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_parallaxY] || v1[OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_isRubberbanding] != v16[OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_isRubberbanding])
  {

    return 0;
  }

  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_rubberbandingDistance];
  v14 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_rubberbandingDistance];

  return v13 == v14;
}

id sub_3AE8C0(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding] = _swiftEmptySetSingleton;
  v5 = &v3[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
  *v5 = 0;
  *(v5 + 1) = 0;
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_507AD4;
  aBlock[3] = &unk_88F5C8;
  v6 = _Block_copy(aBlock);

  v39.receiver = v3;
  v39.super_class = type metadata accessor for BaseCollectionCompositionalLayout();
  v7 = objc_msgSendSuper2(&v39, "initWithSectionProvider:configuration:", v6, a3);
  _Block_release(v6);
  type metadata accessor for GradientSectionBackgroundView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = v7;
  sub_769BC0();
  v10 = sub_769210();

  [v9 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v10];

  type metadata accessor for MaterialGradientSectionBackgroundView();
  v11 = swift_getObjCClassFromMetadata();
  sub_769BC0();
  v12 = sub_769210();

  [v9 registerClass:v11 forDecorationViewOfKind:v12];

  type metadata accessor for ArtworkSectionBackgroundView();
  v13 = swift_getObjCClassFromMetadata();
  sub_769BC0();
  v14 = sub_769210();

  [v9 registerClass:v13 forDecorationViewOfKind:v14];

  type metadata accessor for InteractiveSectionBackgroundView(0);
  v15 = swift_getObjCClassFromMetadata();
  sub_769BC0();
  v16 = sub_769210();

  [v9 registerClass:v15 forDecorationViewOfKind:v16];

  type metadata accessor for EditorsChoiceBackgroundView();
  v17 = swift_getObjCClassFromMetadata();
  sub_769BC0();
  v18 = sub_769210();

  [v9 registerClass:v17 forDecorationViewOfKind:v18];

  v19 = ASKBuildTypeGetCurrent();
  v20 = sub_769240();
  v22 = v21;
  if (v20 == sub_769240() && v22 == v23)
  {
    goto LABEL_3;
  }

  v24 = sub_76A950();

  if (v24)
  {
    goto LABEL_5;
  }

  v28 = sub_769240();
  v30 = v29;
  if (v28 == sub_769240() && v30 == v31)
  {
LABEL_3:

    goto LABEL_6;
  }

  v32 = sub_76A950();

  if (v32)
  {
LABEL_5:

    goto LABEL_6;
  }

  v33 = sub_769240();
  v35 = v34;
  if (v33 == sub_769240() && v35 == v36)
  {
  }

  else
  {
    v37 = sub_76A950();

    if ((v37 & 1) == 0)
    {

      goto LABEL_8;
    }
  }

  sub_7689F0();
  sub_7689E0();
  if (qword_93E0D8 != -1)
  {
    swift_once();
  }

  v38 = sub_BD88(&unk_945000, &qword_781830);
  sub_BE38(v38, qword_9A07A8);
  sub_7686D0();

  if (LOBYTE(aBlock[0]) == 2 || (aBlock[0] & 1) == 0)
  {

    goto LABEL_7;
  }

LABEL_6:
  type metadata accessor for TodayDebugSectionBackgroundView();
  v25 = swift_getObjCClassFromMetadata();
  sub_769BC0();
  v26 = sub_769210();

  [v9 registerClass:v25 forDecorationViewOfKind:v26];

LABEL_7:

LABEL_8:

  return v9;
}

double *sub_3AEE98(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v20.receiver = v5;
  v20.super_class = type metadata accessor for BaseCollectionCompositionalLayout();
  result = objc_msgSendSuper2(&v20, "layoutAttributesForElementsInRect:", a2, a3, a4, a5);
  if (result)
  {
    v11 = result;
    sub_E59C4();
    v12 = sub_769460();

    if (v12 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
    {
      v19 = _swiftEmptyArrayStorage;
      v14 = v5;
      v5 = &v19;
      result = sub_76A7C0();
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v15 = 0;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v16 = sub_76A770();
          goto LABEL_7;
        }

        if ((v15 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v15 >= *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_14;
        }

        v16 = *(v12 + 8 * v15 + 32);
LABEL_7:
        v18 = v16;
        ++v15;
        sub_3AE18C(v16, v17);

        sub_76A7A0();
        sub_76A7D0();
        sub_76A7E0();
        v5 = &v19;
        sub_76A7B0();
        if (i == v15)
        {

          return v19;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

    return _swiftEmptyArrayStorage;
  }

  return result;
}

char *sub_3AF270(void *a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  v8 = sub_757640();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  v12 = a3;
  v13 = a1;
  isa = sub_757550().super.isa;
  v15 = type metadata accessor for BaseCollectionCompositionalLayout();
  v20.receiver = v13;
  v20.super_class = v15;
  v16 = objc_msgSendSuper2(&v20, *a5, v12, isa);

  if (v16)
  {
    v18 = sub_3AE18C(v16, v17);

    v13 = v16;
  }

  else
  {
    v18 = 0;
  }

  (*(v9 + 8))(v11, v8);

  return v18;
}

id sub_3AF488(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = [v4 collectionView];
  if (!v10)
  {
    v30.receiver = v4;
    v30.super_class = type metadata accessor for BaseCollectionCompositionalLayout();
    return objc_msgSendSuper2(&v30, "shouldInvalidateLayoutForBoundsChange:", a1, a2, a3, a4);
  }

  v11 = v10;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding] = _swiftEmptySetSingleton;

  if ([v11 delegate])
  {
    ObjectType = swift_getObjectType();
    v14 = swift_conformsToProtocol2();
    if (v14)
    {
      v15 = (*(v14 + 8))(v11, ObjectType, v14);
      v16 = v11;
      v17 = sub_3B04C8(v15, v16);
      swift_unknownObjectRelease();

      *&v4[v12] = v17;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v19 = [v4 collectionView];
  if (v19)
  {
    v20 = v19;
    [v19 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;

    if (v24 != a3)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v22 = 0.0;
    v26 = 0.0;
    if (a3 != 0.0)
    {
      goto LABEL_18;
    }
  }

  if (v26 == a4 && (!*(*&v5[v12] + 16) || v22 == a2))
  {
    v29.receiver = v5;
    v29.super_class = type metadata accessor for BaseCollectionCompositionalLayout();
    v28 = objc_msgSendSuper2(&v29, "shouldInvalidateLayoutForBoundsChange:", a1, a2, a3, a4);

    return v28;
  }

LABEL_18:

  return &dword_0 + 1;
}

id sub_3AF720(double a1, double a2, double a3, double a4)
{
  v9 = [v4 collectionView];
  if (v9)
  {
    v10 = v9;
    [v9 bounds];
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v12 = 0.0;
    v14 = 0.0;
  }

  if (v12 == a3 && v14 == a4)
  {
    v16 = OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding;
    if (*(*(v4 + OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding) + 16))
    {
      v17 = [objc_allocWithZone(UICollectionViewLayoutInvalidationContext) init];
      v18 = *(v4 + v16);
      v19 = *(v18 + 16);
      if (!v19 || (v4 = sub_7CC78(*(v18 + 16), 0), v20 = *(sub_757640() - 8), sub_618C2C(&v28, v4 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v19, v18), v22 = v21, v23 = v28, , sub_1A01E0(v23), v22 == v19))
      {
        sub_757640();
        isa = sub_769450().super.isa;

        [v17 invalidateItemsAtIndexPaths:isa];

        return v17;
      }

      __break(1u);
    }
  }

  v24 = type metadata accessor for BaseCollectionCompositionalLayout();
  v29.receiver = v4;
  v29.super_class = v24;
  v25 = objc_msgSendSuper2(&v29, "invalidationContextForBoundsChange:", a1, a2, a3, a4);

  return v25;
}

id sub_3AFAB0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t *sub_3AFB5C(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    sub_3B0244(v7, a2, a3, v8);
    v10 = v9;

    return v10;
  }

  return result;
}

uint64_t sub_3AFBF4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_757640();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return _swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_BD88(&qword_948178, qword_789730);
  result = sub_76A720();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_3B0900(&unk_952080, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    result = sub_769150();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_3AFF1C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_764CF0();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return _swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_BD88(&qword_9520F0, &unk_78EF50);
  result = sub_76A720();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_3B0900(&qword_948180, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
    result = sub_769150();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_3B0244(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v29 = a2;
  v30 = a1;
  v6 = sub_757640();
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0;
  v11 = 0;
  v12 = a3 + 56;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a3 + 56);
  v16 = (v13 + 63) >> 6;
  v36 = v7;
  v34 = (v7 + 8);
  v35 = v7 + 16;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_12:
    v20 = v17 | (v11 << 6);
    v21 = *(a3 + 48);
    v22 = *(v36 + 72);
    v33 = v20;
    (*(v36 + 16))(v10, v21 + v22 * v20, v6, v8);
    v23 = [a4 numberOfSections];
    if (sub_7575D0() >= v23)
    {
      (*v34)(v10, v6);
    }

    else
    {
      v32 = [a4 numberOfItemsInSection:sub_7575D0()];
      v24 = a4;
      v25 = a3;
      v26 = sub_7575C0();
      (*v34)(v10, v6);
      v27 = v26 < v32;
      a3 = v25;
      a4 = v24;
      if (v27)
      {
        *(v30 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
LABEL_18:

          sub_3AFBF4(v30, v29, v31, a3);
          return;
        }
      }
    }
  }

  v18 = v11;
  while (1)
  {
    v11 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v11 >= v16)
    {
      goto LABEL_18;
    }

    v19 = *(v12 + 8 * v11);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_3B04C8(uint64_t a1, void *a2)
{
  v3 = v2;
  v38 = sub_757640();
  v6 = *(v38 - 8);
  __chkstk_darwin(v38);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  LOBYTE(v7) = *(a1 + 32);
  LODWORD(a1) = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = a2;
  if (a1 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v37 = v11;
    v30 = v9;
    v31 = v3;
    v29 = &v29;
    __chkstk_darwin(v11);
    v32 = &v29 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v10);
    v10 = 0;
    v12 = v38;
    v3 = v39 + 56;
    v13 = 1 << *(v39 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v39 + 56);
    v9 = (v13 + 63) >> 6;
    v35 = v6 + 16;
    v36 = v6;
    v33 = 0;
    v34 = (v6 + 8);
    while (v15)
    {
      v16 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_13:
      v6 = v16 | (v10 << 6);
      (*(v36 + 16))(v8, *(v39 + 48) + *(v36 + 72) * v6, v12);
      v19 = v37;
      v20 = [v37 numberOfSections];
      if (sub_7575D0() >= v20)
      {
        v11 = (*v34)(v8, v12);
      }

      else
      {
        v21 = [v19 numberOfItemsInSection:sub_7575D0()];
        v22 = sub_7575C0();
        v11 = (*v34)(v8, v38);
        v12 = v38;
        if (v22 < v21)
        {
          *&v32[(v6 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v6;
          if (__OFADD__(v33++, 1))
          {
            __break(1u);
LABEL_18:
            v24 = sub_3AFBF4(v32, v30, v33, v39);

            return v24;
          }
        }
      }
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        goto LABEL_18;
      }

      v18 = *(v3 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v15 = (v18 - 1) & v18;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_21:
    v26 = v11;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v11 = v26;
  }

  v27 = swift_slowAlloc();
  v28 = v26;
  v24 = sub_3AFB5C(v27, v9, v39, v28);

  return v24;
}

uint64_t sub_3B0870()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id sub_3B08A8()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

double sub_3B08E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_3B0900(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_3B0948()
{
  if (qword_93DCE8 != -1)
  {
    swift_once();
  }

  v0 = sub_766CA0();
  v1 = sub_BE38(v0, qword_99FE00);
  qword_952110 = v0;
  unk_952118 = &protocol witness table for StaticDimension;
  v2 = sub_B1B4(qword_9520F8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

uint64_t sub_3B0A04()
{
  if (qword_93DCF0 != -1)
  {
    swift_once();
  }

  v0 = sub_766CA0();
  v1 = sub_BE38(v0, qword_99FE18);
  qword_952138 = v0;
  unk_952140 = &protocol witness table for StaticDimension;
  v2 = sub_B1B4(qword_952120);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

uint64_t sub_3B0AE0(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_7664A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_766CA0();
  sub_161DC(v8, a3);
  sub_BE38(v8, a3);
  if (qword_93D620 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  v10 = sub_BE38(v9, qword_99EA58);
  (*(*(v9 - 8) + 16))(v7, v10, v9);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v14[3] = v4;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_B1B4(v14);
  (*(v5 + 16))(v11, v7, v4);
  sub_766CB0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_3B0CC8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = v2 == 2;
  v4 = *a2;
  if (v4 != 2)
  {
    v3 = 0;
  }

  v5 = v2 == 2 || v4 == 2;
  v6 = v4 ^ v2 ^ 1;
  if (v5)
  {
    v6 = v3;
  }

  return v6 & 1;
}

uint64_t sub_3B0D28()
{
  sub_BD88(&qword_950670, &qword_798050);
  sub_280A0();
  sub_768AF0();
  return 3;
}

unint64_t sub_3B0DA4()
{
  result = qword_93F738;
  if (!qword_93F738)
  {
    sub_765940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93F738);
  }

  return result;
}

unint64_t sub_3B0E04()
{
  result = qword_9521C0;
  if (!qword_9521C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9521C0);
  }

  return result;
}

unint64_t sub_3B0E5C()
{
  result = qword_9521C8;
  if (!qword_9521C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9521C8);
  }

  return result;
}

BOOL sub_3B0EB0(void *a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v16 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v16 - 8);
  v18 = &v46 - v17;
  v19 = fabs(a7);
  if (a7 > 1.79769313e308)
  {
    v19 = 1.79769313e308;
  }

  v20 = 0.0;
  if (v19 != 0.0)
  {
    v21 = a1;
    v22 = [a2 traitCollection];
    v23 = type metadata accessor for ExpandableTextView.MeasurementsCacheKey();
    v24 = objc_allocWithZone(v23);
    v25 = &v24[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_layoutMargins];
    *v25 = a3;
    v25[1] = a4;
    v25[2] = a5;
    v25[3] = a6;
    *&v24[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_numberOfLines] = 4;
    v26 = &v24[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_fittingSize];
    *v26 = a7;
    *(v26 + 1) = 0x7FEFFFFFFFFFFFFFLL;
    *&v24[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_traitCollection] = v22;
    *&v24[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_attributedText] = v21;
    v47.receiver = v24;
    v47.super_class = v23;
    v27 = objc_msgSendSuper2(&v47, "init");
    if (qword_93C5F0 != -1)
    {
      swift_once();
    }

    v28 = qword_9482F8;
    v29 = [qword_9482F8 objectForKey:v27];
    if (v29)
    {
      v30 = v29;

      v20 = *&v30[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642910CacheValue_measurements + 8];
    }

    else
    {
      v31 = qword_93C5E8;
      v30 = v21;
      if (v31 != -1)
      {
        swift_once();
      }

      v32 = sub_7666D0();
      v33 = sub_BE38(v32, qword_9482E0);
      v34 = *(v32 - 8);
      (*(v34 + 16))(v18, v33, v32);
      (*(v34 + 56))(v18, 0, 1, v32);
      sub_766B00();
      sub_766B20();
      sub_766B10();
      v36 = v35;
      v38 = v37;
      v40 = v39;

      sub_10A2C(v18, &unk_93E530, &unk_77C5F0);
      v20 = a3 + a5 + v36;
      v41 = type metadata accessor for ExpandableTextView.CacheValue();
      v42 = objc_allocWithZone(v41);
      v43 = &v42[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642910CacheValue_measurements];
      *v43 = a7;
      v43[1] = v20;
      *(v43 + 2) = v38;
      *(v43 + 3) = v40;
      v46.receiver = v42;
      v46.super_class = v41;
      v44 = objc_msgSendSuper2(&v46, "init");
      [v28 setObject:v44 forKey:v27];
    }
  }

  return v20 > a8;
}

double sub_3B1248(uint64_t a1, void *a2)
{
  v3 = sub_76A920();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_765900();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 pageMarginInsets];
  v13 = v12;
  if (sub_7658B0())
  {
    return v13;
  }

  sub_765910();
  v14 = (*(v8 + 88))(v11, v7);
  if (v14 == enum case for Paragraph.Style.standard(_:))
  {
    goto LABEL_3;
  }

  if (v14 != enum case for Paragraph.Style.article(_:))
  {
    if (v14 != enum case for Paragraph.Style.caption(_:) && v14 != enum case for Paragraph.Style.todayCardOverlay(_:) && v14 != enum case for Paragraph.Style.privacyDefinitions(_:))
    {
      (*(v8 + 8))(v11, v7);
      return v13;
    }

LABEL_3:
    if (qword_93CEC0 != -1)
    {
      swift_once();
    }

    v15 = qword_952110;
    sub_B170(qword_9520F8, qword_952110);
    sub_33964(v15);
    sub_766700();
    v13 = v16;
    v17 = *(v4 + 8);
    v17(v6, v3);
    if (qword_93CEC8 != -1)
    {
      swift_once();
    }

    v18 = qword_952138;
    sub_B170(qword_952120, qword_952138);
    sub_33964(v18);
    sub_766700();
    v17(v6, v3);
    return v13;
  }

  if (qword_93CED0 != -1)
  {
    swift_once();
  }

  v34 = sub_766CA0();
  sub_BE38(v34, qword_952148);
  if (qword_93D620 != -1)
  {
    swift_once();
  }

  v19 = sub_7666D0();
  sub_BE38(v19, qword_99EA58);
  v20 = [a2 traitCollection];
  sub_766470();
  sub_BE70(0, &qword_93F900, UIFont_ptr);
  v21 = sub_769E10();
  sub_766C70();
  v23 = v22;
  sub_769E20();
  v25 = v24;

  v26 = *(v4 + 8);
  v26(v6, v3);
  v27 = v23 - v25;
  if (qword_93CED8 != -1)
  {
    swift_once();
  }

  v13 = ceil(v27);
  sub_BE38(v34, qword_952160);
  v28 = [a2 traitCollection];
  sub_766470();
  v29 = sub_769E10();
  sub_766C70();
  [v29 descender];

  v26(v6, v3);
  return v13;
}

void sub_3B1780(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_BD88(&qword_93F730, &qword_799640);
  sub_280A0();
  sub_769030();
  if (LOBYTE(aBlock[0]) == 2)
  {
    v24 = sub_765890();
  }

  else
  {
    v24 = aBlock[0];
  }

  v10 = sub_7658D0();
  swift_getObjectType();
  v11 = [a6 traitCollection];
  v12 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v10];
  v13 = [v10 length];
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = v11;
  *(v14 + 32) = v12;
  *(v14 + 40) = 1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_266A8;
  *(v15 + 24) = v14;
  aBlock[4] = sub_26694;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10C1C;
  aBlock[3] = &unk_88F798;
  v16 = _Block_copy(aBlock);
  v17 = v11;
  v18 = v12;

  [v10 enumerateAttributesInRange:0 options:v13 usingBlock:{0x100000, v16}];

  _Block_release(v16);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    v19 = v18;
    [a6 pageMarginInsets];
    sub_334D4C(v18, v24 & 1, a6, v20, v21, v22, v23, a2, a3);

    sub_3B1248(a1, a6);
  }
}

void sub_3B1A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v117 = a2;
  ObjectType = swift_getObjectType();
  v8 = sub_765920();
  v122 = *(v8 - 8);
  v123 = v8;
  __chkstk_darwin(v8);
  v108 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v109 = &v106 - v11;
  __chkstk_darwin(v12);
  v106 = &v106 - v13;
  __chkstk_darwin(v14);
  v107 = &v106 - v15;
  v16 = sub_BD88(&qword_952410, &qword_79A0E0);
  __chkstk_darwin(v16 - 8);
  v112 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v118 = &v106 - v19;
  __chkstk_darwin(v20);
  v110 = &v106 - v21;
  __chkstk_darwin(v22);
  v111 = &v106 - v23;
  v116 = sub_765900();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v26 = __chkstk_darwin(v25).n128_u64[0];
  v28 = &v106 - v27;
  v124 = v5;
  v29 = [v5 contentView];
  [v29 setLayoutMargins:{sub_3B1248(a1, a5)}];

  v121 = a1;
  v30 = sub_7658D0();
  v113 = swift_getObjectType();
  v31 = [a5 traitCollection];
  v32 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v30];
  v33 = [v30 length];
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = v31;
  *(v34 + 32) = v32;
  *(v34 + 40) = 1;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_119AC;
  *(v35 + 24) = v34;
  v129 = sub_2636C;
  v130 = v35;
  aBlock = _NSConcreteStackBlock;
  v126 = 1107296256;
  v127 = sub_10C1C;
  v128 = &unk_88F6A8;
  v36 = _Block_copy(&aBlock);
  v37 = v31;
  v38 = v32;

  [v30 enumerateAttributesInRange:0 options:v33 usingBlock:{0x100000, v36}];

  _Block_release(v36);
  LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

  if (v30)
  {
    __break(1u);
    goto LABEL_51;
  }

  [a5 pageMarginInsets];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v124;
  v48 = [v124 contentView];
  sub_BE70(0, &qword_93E550, UIView_ptr);
  sub_75D650();
  v50 = v49;
  v52 = v51;

  v120 = v38;
  LODWORD(v113) = sub_3B0EB0(v38, a5, v40, v42, v44, v46, v50, v52);
  v53 = *&v47[OBJC_IVAR____TtC18ASMessagesProvider27ParagraphCollectionViewCell_expandableTextView];
  sub_765910();
  v54 = v115;
  v55 = v114;
  v56 = v116;
  (*(v115 + 16))(v114, v28, v116);
  v57 = v55;
  v58 = v55;
  v59 = v56;
  v60 = (*(v54 + 88))(v58, v56);
  v61 = v122;
  v62 = v123;
  if (v60 == enum case for Paragraph.Style.standard(_:))
  {
    goto LABEL_3;
  }

  if (v60 == enum case for Paragraph.Style.article(_:))
  {
    v63 = a5;
    sub_BE70(0, &qword_93E540, UIColor_ptr);
    v64 = sub_769FF0();
    goto LABEL_6;
  }

  if (v60 == enum case for Paragraph.Style.caption(_:) || v60 == enum case for Paragraph.Style.todayCardOverlay(_:) || v60 == enum case for Paragraph.Style.privacyDefinitions(_:))
  {
LABEL_3:
    v63 = a5;
    sub_BE70(0, &qword_93E540, UIColor_ptr);
    v64 = sub_769FD0();
LABEL_6:
    v65 = v64;
    (*(v54 + 8))(v28, v59);
    goto LABEL_7;
  }

  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v65 = sub_769FD0();
  ObjectType = a5;
  v97 = *(v54 + 8);
  v97(v28, v59);
  v97(v57, v59);
  v63 = ObjectType;
LABEL_7:
  ObjectType = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel;
  [*(v53 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel) setTextColor:v65];

  sub_BD88(&qword_950670, &qword_798050);
  sub_280A0();
  sub_768B00();
  v66 = aBlock;
  v67 = v118;
  v68 = v61;
  if (aBlock == 2)
  {
    v66 = sub_765890();
  }

  if ((v66 & v113 & 1) == 0)
  {
    v90 = v120;
    sub_765930();
    (*(v61 + 56))(v67, 0, 1, v62);
    v91 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed;
    v92 = *(v53 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed);
    *(v53 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed) = 0;
    v93 = *&ObjectType[v53];
    v94 = v90;
    [v93 setNumberOfLines:0];
    if (v92 != *(v53 + v91))
    {
      sub_1A5974();
    }

    v86 = v94;
    sub_1A532C(v94);
    *(v53 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed) = 0;
    v95 = v112;
    sub_3B28D4(v67, v112);
    v96 = (*(v68 + 48))(v95, 1, v62);
    v89 = v124;
    if (v96 == 1)
    {
      sub_10A2C(v95, &qword_952410, &qword_79A0E0);
LABEL_42:
      [v53 setNeedsLayout];
LABEL_47:

      sub_10A2C(v67, &qword_952410, &qword_79A0E0);
      [v89 setNeedsLayout];

      return;
    }

    v98 = v109;
    (*(v68 + 32))(v109, v95, v62);
    v99 = v108;
    (*(v68 + 16))(v108, v98, v62);
    v100 = (*(v68 + 88))(v99, v62);
    if (v100 != enum case for Paragraph.Alignment.left(_:))
    {
      if (v100 == enum case for Paragraph.Alignment.center(_:))
      {
        v101 = 1;
        goto LABEL_41;
      }

      if (v100 == enum case for Paragraph.Alignment.right(_:))
      {
        v101 = 2;
        goto LABEL_41;
      }

      if (v100 == enum case for Paragraph.Alignment.justified(_:))
      {
        v101 = 3;
        goto LABEL_41;
      }

      if (v100 == enum case for Paragraph.Alignment.localized(_:))
      {
        v101 = 4;
        goto LABEL_41;
      }

      (*(v68 + 8))(v99, v62);
    }

    v101 = 0;
LABEL_41:
    [*&ObjectType[v53] setTextAlignment:v101];
    (*(v68 + 8))(v98, v62);
    goto LABEL_42;
  }

  v69 = sub_7658A0();
  v70 = [v63 traitCollection];
  v71 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v69];
  v72 = [v69 length];
  v73 = swift_allocObject();
  *(v73 + 16) = 0;
  *(v73 + 24) = v70;
  *(v73 + 32) = v71;
  *(v73 + 40) = 1;
  v74 = swift_allocObject();
  *(v74 + 16) = sub_266A8;
  *(v74 + 24) = v73;
  v129 = sub_26694;
  v130 = v74;
  aBlock = _NSConcreteStackBlock;
  v126 = 1107296256;
  v127 = sub_10C1C;
  v128 = &unk_88F720;
  v75 = _Block_copy(&aBlock);
  v76 = v70;
  v77 = v71;

  [v69 enumerateAttributesInRange:0 options:v72 usingBlock:{0x100000, v75}];

  _Block_release(v75);
  LOBYTE(v69) = swift_isEscapingClosureAtFileLocation();

  if ((v69 & 1) == 0)
  {
    v78 = v77;
    v67 = v111;
    sub_765930();
    v80 = v122;
    v79 = v123;
    (*(v122 + 56))(v67, 0, 1, v123);
    v81 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed;
    v82 = *(v53 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed);
    *(v53 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed) = 1;
    v83 = *(v53 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines);
    v84 = *&ObjectType[v53];
    v85 = v78;
    [v84 setNumberOfLines:v83];
    if (v82 != *(v53 + v81))
    {
      sub_1A5974();
    }

    v86 = v85;
    sub_1A532C(v85);
    *(v53 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed) = 0;
    v87 = v110;
    sub_3B28D4(v67, v110);
    v88 = (*(v80 + 48))(v87, 1, v79);
    v89 = v124;
    if (v88 == 1)
    {
      sub_10A2C(v87, &qword_952410, &qword_79A0E0);
LABEL_46:
      [v53 setNeedsLayout];

      goto LABEL_47;
    }

    v102 = v107;
    (*(v80 + 32))(v107, v87, v79);
    v103 = v106;
    (*(v80 + 16))(v106, v102, v79);
    v104 = (*(v80 + 88))(v103, v79);
    if (v104 != enum case for Paragraph.Alignment.left(_:))
    {
      if (v104 == enum case for Paragraph.Alignment.center(_:))
      {
        v105 = 1;
        goto LABEL_45;
      }

      if (v104 == enum case for Paragraph.Alignment.right(_:))
      {
        v105 = 2;
        goto LABEL_45;
      }

      if (v104 == enum case for Paragraph.Alignment.justified(_:))
      {
        v105 = 3;
        goto LABEL_45;
      }

      if (v104 == enum case for Paragraph.Alignment.localized(_:))
      {
        v105 = 4;
        goto LABEL_45;
      }

      (*(v80 + 8))(v103, v79);
    }

    v105 = 0;
LABEL_45:
    [v84 setTextAlignment:v105];
    (*(v80 + 8))(v102, v79);
    goto LABEL_46;
  }

LABEL_51:
  __break(1u);
}

double sub_3B28BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_3B28D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_952410, &qword_79A0E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s5StateVwet_2(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_3B2A20()
{
  v1 = sub_BD88(&unk_944FF0, &unk_783C00);
  __chkstk_darwin(v1 - 8);
  v59 = v48 - v2;
  v3 = sub_BD88(&qword_945010, &unk_784B10);
  __chkstk_darwin(v3 - 8);
  v5 = v48 - v4;
  v6 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v6 - 8);
  v8 = v48 - v7;
  v9 = sub_768A10();
  __chkstk_darwin(v9 - 8);
  v56 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7687B0();
  v60 = *(v11 - 8);
  v61 = v11;
  __chkstk_darwin(v11);
  v58 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v62 = v48 - v14;
  v15 = sub_759F30();
  v63 = *(v15 - 8);
  __chkstk_darwin(v15);
  v57 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v64 = v48 - v18;
  v19 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_textField);
  swift_getObjectType();
  v20 = swift_conformsToProtocol2();
  v21 = 0xE600000000000000;
  v22 = 0x74696D627573;
  v23 = &enum case for SearchOrigin.userText(_:);
  if (v20 && v19)
  {
    v24 = v20;
    ObjectType = swift_getObjectType();
    v26 = v19;
    if (sub_129C40(ObjectType, v24))
    {
      (*(v24 + 32))(ObjectType, v24);
      v21 = 0xE900000000000074;
      v22 = 0x6E694874736F6867;
      v23 = &enum case for SearchOrigin.ghostHint(_:);
    }

    else
    {
      v23 = &enum case for SearchOrigin.userText(_:);
    }
  }

  v27 = v64;
  (*(v63 + 104))(v64, *v23, v15);
  v28 = [v19 text];
  if (v28)
  {
    v29 = v28;
    v30 = sub_769240();
    v32 = v31;

    v33 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v33 = v30 & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {
      v51 = sub_BD88(&unk_94F470, qword_794290);
      inited = swift_initStackObject();
      v53 = v5;
      v35 = inited;
      v50 = xmmword_782440;
      *(inited + 16) = xmmword_782440;
      v54 = v8;
      v55 = v15;
      *(inited + 32) = 0x79546E6F69746361;
      *(inited + 40) = 0xEA00000000006570;
      *(inited + 48) = v22;
      v49 = v22;
      *(inited + 56) = v21;
      *(inited + 72) = &type metadata for String;
      *(inited + 80) = 0x6570795465676170;
      *(inited + 88) = 0xE800000000000000;
      *(inited + 96) = 0x686372616553;
      *(inited + 104) = 0xE600000000000000;
      *(inited + 120) = &type metadata for String;
      *(inited + 128) = 0x6554686372616573;
      *(inited + 136) = 0xEA00000000006D72;
      *(inited + 144) = v30;
      *(inited + 152) = v32;
      *(inited + 168) = &type metadata for String;
      *(inited + 176) = 0x72556E6F69746361;
      *(inited + 216) = &type metadata for String;
      *(inited + 184) = 0xE90000000000006CLL;
      *(inited + 192) = 0;
      *(inited + 200) = 0xE000000000000000;

      sub_10E8CC(v35);
      swift_setDeallocating();
      v48[2] = sub_BD88(&unk_9453B0, &unk_7851F8);
      swift_arrayDestroy();
      sub_BD88(&qword_9522E8, &unk_79A190);
      sub_768E20();
      v52 = v30;
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_77DC20;
      sub_768DE0();
      sub_768E10();
      sub_768DF0();
      sub_1A2D10(v36);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_75C480();
      swift_allocObject();
      v48[1] = sub_75C470();
      v37 = swift_initStackObject();
      *(v37 + 16) = v50;
      *(v37 + 32) = 0x79546E6F69746361;
      v38 = v49;
      *(v37 + 40) = 0xEA00000000006570;
      *(v37 + 48) = v38;
      *(v37 + 56) = v21;
      *(v37 + 72) = &type metadata for String;
      *(v37 + 80) = 0x6570795465676170;
      *(v37 + 88) = 0xE800000000000000;
      *(v37 + 96) = 0x686372616553;
      *(v37 + 104) = 0xE600000000000000;
      *(v37 + 120) = &type metadata for String;
      *(v37 + 128) = 1836213620;
      *(v37 + 136) = 0xE400000000000000;
      *(v37 + 144) = v30;
      *(v37 + 152) = v32;
      *(v37 + 168) = &type metadata for String;
      *(v37 + 176) = 0x7954746567726174;
      *(v37 + 216) = &type metadata for String;
      *(v37 + 184) = 0xEA00000000006570;
      *(v37 + 192) = 0x6E6F74747562;
      *(v37 + 200) = 0xE600000000000000;

      sub_10E8CC(v37);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_75D9B0();
      swift_allocObject();
      v51 = sub_75D9A0();
      sub_BD88(&unk_940730, &qword_77FFB8);
      sub_768670();
      *(swift_allocObject() + 16) = xmmword_77E280;
      sub_759D10();
      sub_759D10();
      sub_768A00();
      v39 = v62;
      sub_7687A0();
      v40 = sub_7570A0();
      (*(*(v40 - 8) + 56))(v54, 1, 1, v40);
      v41 = v63;
      (*(v63 + 16))(v57, v64, v55);
      v42 = sub_759F20();
      (*(*(v42 - 8) + 56))(v53, 1, 1, v42);
      v44 = v60;
      v43 = v61;
      (*(v60 + 16))(v58, v39, v61);
      v45 = sub_759E30();
      (*(*(v45 - 8) + 56))(v59, 1, 1, v45);
      sub_759F10();
      swift_allocObject();

      v46 = sub_759ED0();

      (*(v44 + 8))(v62, v43);
      (*(v41 + 8))(v64, v55);
      return v46;
    }

    (*(v63 + 8))(v64, v15);
  }

  else
  {
    (*(v63 + 8))(v27, v15);
  }

  return 0;
}

char *sub_3B346C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_768C60();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_scribbleInteraction] = 0;
  v8 = OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_onSnapshotDidUpdate;
  sub_BD88(&unk_9522F0, &qword_79A1A0);
  swift_allocObject();
  *&v1[v8] = sub_7690B0();
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_textField] = a1;
  v1[OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_isTextExpansionDisabled] = 0;
  v1[OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_isPerformingUpdate] = 0;
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v9 = a1;
  v10 = objc_msgSendSuper2(&v15, "init");
  [v9 setDelegate:v10];
  [v9 addTarget:v10 action:"textFieldDidEdit:" forControlEvents:983040];
  v11 = [objc_allocWithZone(UIScribbleInteraction) initWithDelegate:v10];
  v12 = *&v10[OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_scribbleInteraction];
  *&v10[OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_scribbleInteraction] = v11;
  v13 = v11;

  [v9 addInteraction:v13];
  sub_768BE0();
  sub_769E70();

  (*(v5 + 8))(v7, v4);
  return v10;
}

void sub_3B3680(uint64_t a1)
{
  v2 = sub_75D9D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_isPerformingUpdate;
  if ((*(a1 + OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_isPerformingUpdate) & 1) == 0)
  {
    *(a1 + OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_isPerformingUpdate) = 1;
    v7 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_textField);
    swift_getObjectType();
    v8 = swift_conformsToProtocol2();
    if (v8)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = v8;
      v36 = v5;
      ObjectType = swift_getObjectType();
      v13 = v10 + 8;
      v12 = *(v10 + 8);
      v14 = v7;
      v15 = v10;
      v16 = v14;
      v34 = ObjectType;
      v35 = v13;
      v32 = v15;
      v33 = v12;
      (v12)(ObjectType);
      if (v17)
      {
        v30 = v3;
        v31 = v2;
        v29 = v16;
        v18 = [v16 text];
        if (v18)
        {
          v19 = v18;
          v20 = sub_769240();
          v22 = v21;
        }

        else
        {
          v20 = 0;
          v22 = 0;
        }

        v5 = v36;
        v37.value._countAndFlagsBits = v20;
        v37.value._object = v22;
        v23 = sub_7692F0(v37);

        v3 = v30;
        if (v23)
        {
          v24 = v29;
          v33(v34, v32);
        }

        else
        {
        }

        v2 = v31;
      }

      else
      {

        v5 = v36;
      }
    }

    *(a1 + v6) = 0;
    v25 = [v7 text];
    if (v25)
    {
      v26 = v3;
      v27 = v25;
      sub_769240();

      v3 = v26;
    }

    v28 = [v7 markedTextRange];
    if (v28)
    {
    }

    sub_75D9C0();
    sub_7690A0();
    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_3B39A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = [a1 selectedTextRange];
  if (!v9)
  {
    v15 = 1;
    return v15 & 1;
  }

  v10 = v9;
  sub_3B3ECC();
  v11 = [v10 end];
  v12 = [a1 endOfDocument];
  v13 = sub_76A1C0();

  v14 = a3 < 1 || sub_769350() != 0;
  v16 = [a1 markedTextRange];
  if (v16)
  {
  }

  else if (!v14 && (v13 & 1) != 0)
  {
    v17 = 1;
    goto LABEL_10;
  }

  v17 = 0;
LABEL_10:
  v18 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_scribbleInteraction);
  v19 = v17;
  if (v18)
  {
    v19 = v17 | [v18 isHandlingWriting];
  }

  *(v6 + OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_isTextExpansionDisabled) = v19 & 1;
  swift_getObjectType();
  v20 = swift_conformsToProtocol2();
  if (v20)
  {
    v21 = a1 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v17;
  }

  if (v22 == 1)
  {
    v23 = v20;
    ObjectType = swift_getObjectType();
    v25 = a1;
    v26 = sub_129C40(ObjectType, v23);
    if (v26)
    {
      (*(v23 + 16))(0, 0, ObjectType, v23);
    }

    v15 = !v26;
  }

  else
  {
    v15 = 1;
  }

  return v15 & 1;
}

uint64_t sub_3B3DBC(uint64_t a1, uint64_t a2)
{
  if (*(*v2 + OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_isTextExpansionDisabled))
  {
    return 0;
  }

  v5 = *(*v2 + OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_textField);
  swift_getObjectType();
  v6 = swift_conformsToProtocol2();
  if (!v6 || v5 == 0)
  {
    return 0;
  }

  v8 = v6;
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 40);
  v11 = v5;
  v12 = v10(a1, a2, ObjectType, v8);

  return v12 & 1;
}

unint64_t sub_3B3ECC()
{
  result = qword_94AB00;
  if (!qword_94AB00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_94AB00);
  }

  return result;
}

void sub_3B3F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_75D9D0();
  __chkstk_darwin(v9);
  v13 = OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_isPerformingUpdate;
  if ((*(a1 + OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_isPerformingUpdate) & 1) == 0)
  {
    v38 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = v12;
    v40 = v10;
    *(a1 + OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_isPerformingUpdate) = 1;
    ObjectType = swift_getObjectType();
    v15 = *(a3 + 16);

    v15(a4, a5, ObjectType, a3);
    v16 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_textField);
    swift_getObjectType();
    v17 = swift_conformsToProtocol2();
    if (v17)
    {
      v18 = v16 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      v19 = v17;
      v20 = swift_getObjectType();
      v21 = *(v19 + 8);
      v22 = v16;
      v37 = v21;
      v21(v20, v19);
      if (v23)
      {
        v35 = v20;
        v36 = v22;
        v24 = [v22 text];
        if (v24)
        {
          v25 = v24;
          v26 = sub_769240();
          v28 = v27;
        }

        else
        {
          v26 = 0;
          v28 = 0;
        }

        v41.value._countAndFlagsBits = v26;
        v41.value._object = v28;
        v29 = sub_7692F0(v41);

        v30 = v36;
        if (v29)
        {
          v37(v35, v19);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    *(a1 + v13) = 0;
    v31 = [v16 text];
    if (v31)
    {
      v32 = v31;
      sub_769240();
    }

    v33 = [v16 markedTextRange];
    if (v33)
    {
    }

    v34 = v38;
    sub_75D9C0();
    sub_7690A0();
    (*(v39 + 8))(v34, v40);
  }
}

uint64_t sub_3B4228@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    swift_getObjectType();
    PageTraitEnvironment.pageColumnWidth.getter();
    PageTraitEnvironment.pageColumnMargin.getter();
  }

  if (qword_93CD60 != -1)
  {
    swift_once();
  }

  v4 = sub_766690();
  sub_BE38(v4, qword_99D338);
  sub_766660();
  sub_7601D0();
  v5 = sub_7601F0();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 0, 1, v5);
}

double sub_3B4348(double a1)
{
  if (qword_93CD60 != -1)
  {
    swift_once();
  }

  v2 = sub_766690();
  sub_BE38(v2, qword_99D338);
  sub_766660();
  return a1;
}

id sub_3B4490()
{
  v1 = v0;
  v2 = sub_764A60();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_764870();
  if (v6)
  {
    v7 = sub_769210();
  }

  else
  {
    v7 = 0;
  }

  [v1 setAccessibilityLabel:v7];

  sub_764A20();
  sub_3B49C8(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v8 = sub_76A520();
  result = (*(v3 + 8))(v5, v2);
  if (v8)
  {
    v10 = sub_764880();
    v11 = &v1[OBJC_IVAR____TtC18ASMessagesProvider23BrickCollectionViewCell_shortDescriptionLabelText];
    *v11 = v10;
    v11[1] = v12;

    return sub_359B6C();
  }

  return result;
}

id sub_3B462C(uint64_t a1, uint64_t a2)
{
  v2 = sub_764A60();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v7 = v6;
  PageTraitEnvironment.pageColumnMargin.getter();
  v9 = v8;
  sub_764A20();
  sub_3B49C8(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v10 = sub_76A520();
  (*(v3 + 8))(v5, v2);
  if (v10)
  {
    if (qword_93CD68 != -1)
    {
      swift_once();
    }

    v11 = qword_99D350;
  }

  else
  {
    if (qword_93CD70 != -1)
    {
      swift_once();
    }

    v11 = qword_99D368;
  }

  v12 = ceil((v7 - v9) / 1.5);
  v13 = sub_759270();
  sub_BE38(v13, v11);
  sub_759290();
  sub_3B49C8(&qword_94AD50, &type metadata accessor for BrickLayout, &protocol conformance descriptor for BrickLayout);
  sub_766ED0();
  v15 = v14;
  v16 = objc_opt_self();
  v17 = [v16 absoluteDimension:v12];
  v18 = [v16 absoluteDimension:v15];
  v19 = [objc_opt_self() sizeWithWidthDimension:v17 heightDimension:v18];

  v20 = [objc_opt_self() itemWithLayoutSize:v19];
  v21 = objc_opt_self();
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_77D9F0;
  *(v22 + 32) = v20;
  sub_4FB2C();
  v23 = v20;
  isa = sub_769450().super.isa;

  v25 = [v21 verticalGroupWithLayoutSize:v19 subitems:isa];

  return v25;
}

uint64_t sub_3B49C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_3B4A10()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_763C40();
  sub_161DC(v4, qword_99D7C8);
  sub_BE38(v4, qword_99D7C8);
  if (qword_93D9F8 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99F5E0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = sub_766CA0();
  v10[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v10);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v9);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  (*(v1 + 8))(v3, v0);
  return sub_763C30();
}

id sub_3B4D34()
{
  v1 = v0;
  v2 = sub_BD88(&unk_944E70, &unk_784960);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_BD88(&unk_944E80, &unk_799630);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-v7];
  v9 = OBJC_IVAR____TtC18ASMessagesProvider30LinkableTextCollectionViewCell_bodyText;
  swift_beginAccess();
  sub_3B5494(&v1[v9], v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10A2C(v4, &unk_944E70, &unk_784960);
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider30LinkableTextCollectionViewCell_bodyLabel] setAttributedText:0];
    return [v1 setNeedsLayout];
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_75B470();
    sub_75B460();
    v11 = sub_759CF0();
    sub_22A974(v11, sub_30AE4);
    v13 = v12;

    v14 = sub_759CE0();
    sub_4ED3B8(v14, 0, v13);

    [v1 setNeedsLayout];
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_3B4FC8()
{
  ObjectType = swift_getObjectType();
  v2 = sub_763C40();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_763C60();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v0;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "layoutSubviews", v8);
  if (qword_93CEE0 != -1)
  {
    swift_once();
  }

  v11 = sub_BE38(v2, qword_99D7C8);
  (*(v3 + 16))(v5, v11, v2);
  v12 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30LinkableTextCollectionViewCell_bodyLabel];
  v17[4] = type metadata accessor for DynamicTypeLinkedLabel(0);
  v17[5] = &protocol witness table for UILabel;
  v17[1] = v12;
  v13 = v12;
  sub_763C50();
  [v0 bounds];
  v14 = [v0 traitCollection];
  sub_3B5504(v15);
  sub_7673E0();

  return (*(v7 + 8))(v10, v6);
}

uint64_t type metadata accessor for LinkableTextCollectionViewCell(uint64_t a1)
{
  result = qword_952380;
  if (!qword_952380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3B5354(uint64_t a1)
{
  sub_1EA64(319);
  if (v1 <= 0x3F)
  {
    sub_3B5430(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_3B5430(uint64_t a1)
{
  if (!qword_952390)
  {
    sub_133D8(&unk_944E80, &unk_799630);
    v1 = sub_76A480();
    if (!v2)
    {
      atomic_store(v1, &qword_952390);
    }
  }
}

uint64_t sub_3B5494(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_944E70, &unk_784960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_3B5504(__n128 a1)
{
  result = qword_952398;
  if (!qword_952398)
  {
    sub_763C60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_952398);
  }

  return result;
}

char *sub_3B555C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v35 = sub_760AD0();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_768C60();
  v6 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7666D0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC18ASMessagesProvider30LinkableTextCollectionViewCell_itemLayoutContext;
  v14 = sub_75C840();
  (*(*(v14 - 8) + 56))(&v1[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC18ASMessagesProvider30LinkableTextCollectionViewCell_bodyText;
  v16 = sub_BD88(&unk_944E80, &unk_799630);
  (*(*(v16 - 8) + 56))(&v1[v15], 1, 1, v16);
  if (qword_93D9F8 != -1)
  {
    swift_once();
  }

  v17 = sub_BE38(v9, qword_99F5E0);
  (*(v10 + 16))(v12, v17, v9);
  v18 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel(0));
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider30LinkableTextCollectionViewCell_bodyLabel] = sub_4ECF40(v12, 0, 0, 1);
  v38.receiver = v1;
  v38.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v38, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20 = [v19 contentView];
  [v20 setClipsToBounds:0];

  v21 = [v19 contentView];
  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v22 = OBJC_IVAR____TtC18ASMessagesProvider30LinkableTextCollectionViewCell_bodyLabel;
  v23 = *&v19[OBJC_IVAR____TtC18ASMessagesProvider30LinkableTextCollectionViewCell_bodyLabel];
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  v24 = v23;
  sub_768C10();
  sub_10A2C(v36, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(v37, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();

  (*(v6 + 8))(v8, v34);
  v25 = *&v19[v22];
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.leading(_:), v35);
  v26 = v25;
  sub_75BA90();

  v27 = *&v19[v22];
  sub_396E8();
  v28 = v27;
  v29 = sub_769FF0();
  v30 = *&v28[qword_9580B0];
  *&v28[qword_9580B0] = v29;
  v31 = v29;
  if ((sub_76A1C0() & 1) == 0)
  {
    sub_4ED788();
  }

  v32 = [v19 contentView];
  [v32 addSubview:*&v19[v22]];

  return v19;
}

void sub_3B5A44(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v99 = a4;
  v10 = sub_765920();
  v101 = *(v10 - 8);
  __chkstk_darwin(v10);
  v93 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v93 - v13;
  __chkstk_darwin(v15);
  v95 = &v93 - v16;
  __chkstk_darwin(v17);
  v94 = &v93 - v18;
  v19 = sub_BD88(&qword_952410, &qword_79A0E0);
  __chkstk_darwin(v19 - 8);
  v21 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v96 = &v93 - v23;
  __chkstk_darwin(v24);
  v26 = &v93 - v25;
  *&v28 = __chkstk_darwin(v27).n128_u64[0];
  v30 = &v93 - v29;
  v102 = v7;
  [v7 bounds];
  sub_631BE8(v31, a1, a7);
  v33 = v32;
  v98 = a1;
  v34 = sub_75D940();
  sub_BD88(&qword_950678, &qword_798058);
  sub_34903C();
  sub_768B00();
  v35 = aBlock;
  if (aBlock == 2)
  {
    v35 = sub_765890();
  }

  v97 = v10;
  v100 = v34;
  if ((v35 & v33 & 1) == 0)
  {
    v95 = v14;
    v55 = sub_7658D0();
    v56 = [a7 traitCollection];
    v57 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v55];
    v58 = [v55 length];
    v59 = swift_allocObject();
    *(v59 + 16) = 0;
    *(v59 + 24) = v56;
    *(v59 + 32) = v57;
    *(v59 + 40) = 1;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_119AC;
    *(v60 + 24) = v59;
    v107 = sub_2636C;
    v108 = v60;
    aBlock = _NSConcreteStackBlock;
    v104 = 1107296256;
    v105 = sub_10C1C;
    v106 = &unk_88F960;
    v61 = _Block_copy(&aBlock);
    v62 = v56;
    v63 = v57;

    [v55 enumerateAttributesInRange:0 options:v58 usingBlock:{0x100000, v61}];

    _Block_release(v61);
    LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

    if ((v55 & 1) == 0)
    {
      v30 = v96;
      v44 = *&v102[OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_bodyTextView];
      v64 = v63;
      sub_765930();
      v65 = v97;
      (*(v101 + 56))(v30, 0, 1, v97);
      v66 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed;
      v67 = v44[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed];
      v44[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed] = 0;
      v68 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel;
      v69 = *&v44[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel];
      v70 = v64;
      [v69 setNumberOfLines:0];
      if (v67 != v44[v66])
      {
        sub_1A5974();
      }

      v52 = v70;
      sub_1A532C(v70);
      v44[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
      sub_3B28D4(v30, v21);
      v71 = v101;
      if ((*(v101 + 48))(v21, 1, v65) != 1)
      {
        v77 = v95;
        (*(v71 + 32))(v95, v21, v65);
        v78 = v93;
        (*(v71 + 16))(v93, v77, v65);
        v79 = (*(v71 + 88))(v78, v65);
        if (v79 == enum case for Paragraph.Alignment.left(_:))
        {
          v80 = 0;
          v72 = v102;
        }

        else
        {
          v72 = v102;
          if (v79 == enum case for Paragraph.Alignment.center(_:))
          {
            v80 = 1;
          }

          else if (v79 == enum case for Paragraph.Alignment.right(_:))
          {
            v80 = 2;
          }

          else if (v79 == enum case for Paragraph.Alignment.justified(_:))
          {
            v80 = 3;
          }

          else if (v79 == enum case for Paragraph.Alignment.localized(_:))
          {
            v80 = 4;
          }

          else
          {
            (*(v71 + 8))(v78, v65);
            v80 = 0;
          }
        }

        [*&v44[v68] setTextAlignment:v80];
        (*(v71 + 8))(v95, v65);
        goto LABEL_39;
      }

      v54 = v21;
      goto LABEL_14;
    }

LABEL_45:
    __break(1u);
    return;
  }

  v36 = sub_7658A0();
  v37 = [a7 traitCollection];
  v38 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v36];
  v96 = [v36 length];
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = v37;
  *(v39 + 32) = v38;
  *(v39 + 40) = 1;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_266A8;
  *(v40 + 24) = v39;
  v107 = sub_26694;
  v108 = v40;
  aBlock = _NSConcreteStackBlock;
  v104 = 1107296256;
  v105 = sub_10C1C;
  v106 = &unk_88FA00;
  v41 = _Block_copy(&aBlock);
  v42 = v37;
  v43 = v38;

  [v36 enumerateAttributesInRange:0 options:v96 usingBlock:{0x100000, v41}];

  _Block_release(v41);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
    goto LABEL_45;
  }

  v44 = *&v102[OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_bodyTextView];
  v45 = v43;
  sub_765930();
  v46 = v97;
  (*(v101 + 56))(v30, 0, 1, v97);
  v47 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed;
  v48 = v44[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed];
  v44[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed] = 1;
  v49 = *&v44[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines];
  v50 = *&v44[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel];
  v51 = v45;
  [v50 setNumberOfLines:v49];
  if (v48 != v44[v47])
  {
    sub_1A5974();
  }

  v52 = v51;
  sub_1A532C(v51);
  v44[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
  sub_3B28D4(v30, v26);
  v53 = v101;
  if ((*(v101 + 48))(v26, 1, v46) != 1)
  {
    v73 = v94;
    (*(v53 + 32))(v94, v26, v46);
    v74 = v95;
    (*(v53 + 16))(v95, v73, v46);
    v75 = (*(v53 + 88))(v74, v46);
    if (v75 == enum case for Paragraph.Alignment.left(_:))
    {
      v76 = 0;
      v72 = v102;
    }

    else
    {
      v72 = v102;
      if (v75 == enum case for Paragraph.Alignment.center(_:))
      {
        v76 = 1;
      }

      else if (v75 == enum case for Paragraph.Alignment.right(_:))
      {
        v76 = 2;
      }

      else if (v75 == enum case for Paragraph.Alignment.justified(_:))
      {
        v76 = 3;
      }

      else if (v75 == enum case for Paragraph.Alignment.localized(_:))
      {
        v76 = 4;
      }

      else
      {
        (*(v53 + 8))(v95, v46);
        v76 = 0;
      }
    }

    [v50 setTextAlignment:v76];
    (*(v53 + 8))(v73, v46);
    goto LABEL_39;
  }

  v54 = v26;
LABEL_14:
  sub_10A2C(v54, &qword_952410, &qword_79A0E0);
  v72 = v102;
LABEL_39:
  [v44 setNeedsLayout];

  sub_10A2C(v30, &qword_952410, &qword_79A0E0);
  sub_75D930();
  sub_75A530();
  v81 = sub_769490();

  v82 = v99;
  if (v81)
  {
    v83 = sub_75D930();
    v84 = sub_75D920();
    v85 = sub_75D910();
    sub_31AEAC(v83, v84, v85, v82);
  }

  v86 = sub_75D900();
  if (v86)
  {
    v87 = *&v72[OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_developerLinkView];
    v88 = v86;
    sub_764C60();
    v89 = swift_allocObject();
    *(v89 + 16) = v82;
    *(v89 + 24) = v88;

    sub_75BA70();

    v90 = &v87[OBJC_IVAR____TtC18ASMessagesProvider17DeveloperLinkView_tapHandler];
    v91 = *&v87[OBJC_IVAR____TtC18ASMessagesProvider17DeveloperLinkView_tapHandler];
    v92 = *&v87[OBJC_IVAR____TtC18ASMessagesProvider17DeveloperLinkView_tapHandler + 8];
    *v90 = sub_3B7104;
    v90[1] = v89;
    sub_F704(v91, v92);
    [v87 setNeedsLayout];
  }

  [v72 setNeedsLayout];
}

uint64_t sub_3B6648(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_BD88(&unk_93F630, &unk_77E230);
  sub_768860();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10A2C(v6, &unk_93F980, &qword_77EDA0);
  }

  sub_32A6C0(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

uint64_t sub_3B67A8()
{
  sub_BD88(&qword_950678, &qword_798058);
  sub_34903C();
  sub_768AF0();
  return 3;
}

uint64_t sub_3B6820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_76A920();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DCF0 != -1)
  {
    swift_once();
  }

  v7 = sub_766CA0();
  sub_BE38(v7, qword_99FE18);
  sub_766470();
  sub_766700();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  return v9;
}

unint64_t sub_3B69B8()
{
  result = qword_9523F8;
  if (!qword_9523F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9523F8);
  }

  return result;
}

unint64_t sub_3B6A10()
{
  result = qword_952400;
  if (!qword_952400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_952400);
  }

  return result;
}

void sub_3B6A64(double a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_760F00();
  __chkstk_darwin(v6 - 8);
  v44 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_760F20();
  v46 = *(v8 - 8);
  v47 = v8;
  __chkstk_darwin(v8);
  v45 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&qword_952418, &qword_79A2C8);
  sub_34903C();
  sub_769030();
  v10 = aBlock[0];
  if (LOBYTE(aBlock[0]) == 2)
  {
    sub_75D940();
    v10 = sub_765890();
  }

  v43 = sub_75D940();
  if (v10)
  {
    v11 = sub_7658A0();
    v41 = 3;
  }

  else
  {
    v11 = sub_7658D0();
    v41 = 0;
  }

  v48 = a5;
  v12 = [a5 traitCollection];
  v13 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v11];
  v49 = [v11 length];
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = v12;
  *(v14 + 32) = v13;
  *(v14 + 40) = 1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_266A8;
  *(v15 + 24) = v14;
  v59 = sub_26694;
  v60 = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10C1C;
  v58 = &unk_88FA78;
  v16 = _Block_copy(aBlock);
  v17 = v12;
  v18 = v13;

  v42 = v11;
  [v11 enumerateAttributesInRange:0 options:v49 usingBlock:{0x100000, v16}];

  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v20 = v18;
    v21 = sub_75D930();
    v22 = sub_75D920();
    v23 = sub_75D910();
    if (sub_75D900())
    {
      v49 = sub_764C60();
      v25 = v24;
    }

    else
    {
      v49 = 0;
      v25 = 0;
    }

    v26 = swift_allocObject();
    v27 = v41;
    *(v26 + 16) = v20;
    *(v26 + 24) = v27;
    v28 = sub_7670D0();
    swift_allocObject();
    v29 = v20;
    v30 = sub_767090();
    v58 = v28;
    v59 = &protocol witness table for LayoutViewPlaceholder;
    aBlock[0] = v30;
    v31 = swift_allocObject();
    v31[2] = v21;
    v31[3] = v22;
    v32 = v48;
    v31[4] = v23;
    v31[5] = v32;
    swift_allocObject();

    swift_unknownObjectRetain();
    v33 = sub_767090();
    v56[3] = v28;
    v56[4] = &protocol witness table for LayoutViewPlaceholder;
    v56[0] = v33;
    v34 = type metadata accessor for DeveloperLinkView();
    v35 = swift_allocObject();
    v36 = v49;
    v35[2] = v34;
    v35[3] = v36;
    v35[4] = v25;
    swift_allocObject();
    v37 = sub_767090();
    v55[3] = v28;
    v55[4] = &protocol witness table for LayoutViewPlaceholder;
    v55[0] = v37;
    sub_75A530();
    LOBYTE(v34) = sub_769490();

    if (v34)
    {
      sub_134D8(v56, v53);
    }

    else
    {
      v54 = 0;
      memset(v53, 0, sizeof(v53));
    }

    sub_630128(v44);
    sub_134D8(aBlock, &v52);
    sub_134D8(v56, &v51);
    sub_134D8(v55, &v50);
    v38 = v45;
    sub_760F10();
    sub_3B71EC(&qword_952420, &type metadata accessor for ProductDescriptionLayout, &protocol conformance descriptor for ProductDescriptionLayout);
    v39 = v47;
    sub_7665A0();

    (*(v46 + 8))(v38, v39);
    sub_10A2C(v53, &unk_943B10, &qword_77E080);
    sub_BEB8(v55);
    sub_BEB8(v56);
    sub_BEB8(aBlock);
  }
}

double sub_3B70AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_3B70C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3B711C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3B715C()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3B71A8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_3B71EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_3B7278()
{
  result = qword_952428;
  if (!qword_952428)
  {
    sub_758010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_952428);
  }

  return result;
}

uint64_t sub_3B72D8(uint64_t a1)
{
  v1 = sub_7687C0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7638F0();
  sub_768900();
  sub_768ED0();
  v5 = v10;
  sub_7638E0();
  sub_758960();
  sub_768ED0();
  v6 = v10;
  sub_758950();
  sub_BD88(&qword_94DDC0, qword_77DE00);
  (*(v2 + 104))(v4, enum case for ActionOutcome.performed(_:), v1);
  v7 = sub_768F30();

  return v7;
}

void sub_3B7448(uint64_t a1, char a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ((sub_71DFF0() & 1) == 0)
    {
      goto LABEL_10;
    }

    v7 = [v6 view];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for InsetCollectionViewControllerContentView();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = *(v9 + OBJC_IVAR____TtC18ASMessagesProviderP33_617AA862DC90C0016FFBABB70104B8F240InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

        if (v10 & 1) == 0 && (a2)
        {

          if ((a3 & 1) != 0 || (v11 = *&v6[qword_99A4B0]) == 0)
          {
            v12 = 1;
          }

          else
          {
            [*(v11 + OBJC_IVAR____TtC18ASMessagesProvider19ArcadePageTitleView_lockupView) setAlpha:1.0];
            v12 = 1;
          }

LABEL_24:
          sub_3B76B0(v12);
LABEL_25:

          return;
        }

LABEL_10:
        v13 = *&v6[qword_99A4B8];
        if (v13)
        {
          v14 = *&v6[qword_99A4B0];

          if (v14 || (v15 = [v6 traitCollection], v16 = sub_7699B0(), v15, (v16 & 1) != 0))
          {
            v17 = [v6 collectionView];

            if (v17)
            {
              [v17 _systemContentInset];
              v19 = v18;
              [v17 contentOffset];
              v21 = v20;
              v22 = [v17 contentInset];
              v23.n128_f64[0] = fmin((v19 + v21 + v23.n128_f64[0] - *(v13 + 32)) / *(v13 + 40), 1.0);
              if (v23.n128_f64[0] < 0.0)
              {
                v23.n128_f64[0] = 0.0;
              }

              (*(v13 + 16))(v22, v23);

              goto LABEL_25;
            }

LABEL_29:
            __break(1u);
            return;
          }
        }

        v24 = *&v6[qword_99A4B0];
        if (v24)
        {
          v25 = 0.0;
          if (a2)
          {
            v25 = 1.0;
          }

          [*(v24 + OBJC_IVAR____TtC18ASMessagesProvider19ArcadePageTitleView_lockupView) setAlpha:v25];
        }

        v12 = a2 & 1;
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_29;
  }
}

void sub_3B76B0(char a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = sub_7699B0();

  if (v5)
  {
    if (a1)
    {
      sub_396E8();
      v6 = sub_76A0F0();
    }

    else
    {
      v6 = [objc_opt_self() whiteColor];
    }

    v12 = v6;
    v10 = [v2 navigationItem];
    v11 = [v10 rightBarButtonItem];

    if (!v11)
    {
      goto LABEL_13;
    }

    v9 = [v11 customView];

    if (!v9)
    {
      goto LABEL_13;
    }

    [v9 setTintColor:v12];
  }

  else
  {
    v7 = [v2 navigationItem];
    v8 = [v7 rightBarButtonItem];

    if (!v8)
    {
      return;
    }

    v9 = [v8 customView];

    if (!v9)
    {
      return;
    }

    v12 = [objc_opt_self() whiteColor];
    [v9 setTintColor:v12];
  }

LABEL_13:
}

void sub_3B7884(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  sub_76AA60(*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  sub_76AA60(*&v3);
}

Swift::Int sub_3B78D4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_76AA30();
  sub_3B7884(v1, v2);
  return sub_76AA80();
}

Swift::Int sub_3B7930(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_76AA30();
  sub_3B7884(v2, v3);
  return sub_76AA80();
}

id sub_3B79AC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = sub_3B7ED0(1u, 1u);
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_3B7A0C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = sub_3B7ED0(0, 1u);
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_3B7A6C()
{
  sub_BD88(&qword_9524E0, &qword_79A888);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_79A420;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = xmmword_79A430;
  *(v0 + 96) = xmmword_79A430;
  *(v0 + 112) = xmmword_79A430;
  *(v0 + 128) = xmmword_79A440;
  *(v0 + 144) = xmmword_79A440;
  *(v0 + 160) = xmmword_79A440;
  *(v0 + 176) = xmmword_79A450;
  *(v0 + 192) = xmmword_79A450;
  *(v0 + 208) = xmmword_79A450;
  *(v0 + 224) = xmmword_79A460;
  *(v0 + 240) = xmmword_79A460;
  *(v0 + 256) = xmmword_79A470;
  *(v0 + 272) = xmmword_792930;
  *(v0 + 288) = xmmword_792930;
  *(v0 + 304) = 0x3FF0000000000000;
  *(v0 + 312) = 0;
  *(v0 + 320) = 0;
  *(v0 + 328) = 0x3FC999999999999ALL;
  *(v0 + 336) = xmmword_79A480;
  *(v0 + 352) = xmmword_79A490;
  *(v0 + 368) = vdupq_n_s64(0x3FC999999999999AuLL);
  *(v0 + 384) = xmmword_79A4A0;
  *(v0 + 400) = xmmword_79A4B0;
  *(v0 + 416) = xmmword_79A4C0;
  *(v0 + 432) = xmmword_79A4D0;
  *(v0 + 448) = xmmword_79A4E0;
  *(v0 + 464) = xmmword_79A4F0;
  *(v0 + 480) = xmmword_79A4C0;
  *(v0 + 496) = xmmword_79A4F0;
  *(v0 + 512) = xmmword_79A500;
  *(v0 + 528) = xmmword_79A510;
  *(v0 + 544) = xmmword_79A520;
  *(v0 + 560) = xmmword_79A530;
  *(v0 + 576) = xmmword_79A530;
  *(v0 + 592) = xmmword_79A530;
  *(v0 + 608) = xmmword_79A540;
  *(v0 + 624) = xmmword_79A550;
  *(v0 + 640) = xmmword_79A560;
  *(v0 + 656) = xmmword_79A570;
  *(v0 + 672) = xmmword_79A580;
  *(v0 + 688) = xmmword_79A590;
  *(v0 + 704) = vdupq_n_s64(0x3FD999999999999AuLL);
  *(v0 + 720) = xmmword_79A5A0;
  *(v0 + 736) = xmmword_79A5B0;
  *(v0 + 752) = xmmword_79A5C0;
  *(v0 + 768) = xmmword_79A5C0;
  *(v0 + 784) = xmmword_79A5D0;
  *(v0 + 800) = xmmword_79A5E0;
  *(v0 + 816) = xmmword_79A5F0;
  *(v0 + 832) = xmmword_79A600;
  *(v0 + 848) = xmmword_79A610;
  *(v0 + 864) = xmmword_79A610;
  *(v0 + 880) = xmmword_79A610;
  *(v0 + 896) = xmmword_79A620;
  *(v0 + 912) = xmmword_79A620;
  *(v0 + 928) = xmmword_79A620;
  *(v0 + 944) = xmmword_79A630;
  *(v0 + 960) = xmmword_79A630;
  *(v0 + 976) = xmmword_79A640;
  *(v0 + 992) = xmmword_79A650;
  *(v0 + 1008) = xmmword_79A660;
  *(v0 + 1024) = xmmword_79A660;
  *(v0 + 1040) = vdupq_n_s64(0x3FE3333333333333uLL);
  *(v0 + 1056) = xmmword_79A670;
  *(v0 + 1072) = xmmword_79A680;
  *(v0 + 1088) = xmmword_79A690;
  *(v0 + 1104) = xmmword_79A6A0;
  *(v0 + 1120) = xmmword_79A6B0;
  *(v0 + 1136) = xmmword_79A6C0;
  *(v0 + 1152) = xmmword_79A6C0;
  *(v0 + 1168) = xmmword_79A6C0;
  *(v0 + 1184) = xmmword_79A6D0;
  *(v0 + 1200) = xmmword_79A6E0;
  *(v0 + 1216) = xmmword_79A6D0;
  *(v0 + 1232) = xmmword_79A6F0;
  *(v0 + 1248) = xmmword_79A700;
  *(v0 + 1264) = xmmword_79A710;
  *(v0 + 1280) = xmmword_79A720;
  *(v0 + 1296) = xmmword_79A730;
  *(v0 + 1312) = xmmword_79A740;
  *(v0 + 1328) = xmmword_79A750;
  *(v0 + 1344) = xmmword_79A760;
  *(v0 + 1360) = xmmword_79A770;
  v1 = vdupq_n_s64(0x3FE999999999999AuLL);
  *(v0 + 1376) = v1;
  *(v0 + 1392) = v1;
  *(v0 + 1408) = v1;
  *(v0 + 1424) = xmmword_79A780;
  *(v0 + 1440) = xmmword_79A780;
  *(v0 + 1456) = xmmword_79A780;
  *(v0 + 1472) = xmmword_792920;
  *(v0 + 1488) = xmmword_792920;
  *(v0 + 1504) = xmmword_792920;
  *(v0 + 1520) = xmmword_79A790;
  *(v0 + 1536) = xmmword_79A7A0;
  *(v0 + 1552) = xmmword_79A7B0;
  *(v0 + 1568) = xmmword_79A7C0;
  *(v0 + 1584) = xmmword_79A7D0;
  *(v0 + 1600) = xmmword_79A7C0;
  *(v0 + 1616) = xmmword_79A7E0;
  *(v0 + 1632) = xmmword_79A7F0;
  *(v0 + 1648) = xmmword_79A800;
  *(v0 + 1664) = xmmword_79A7F0;
  *(v0 + 1680) = xmmword_79A810;
  *(v0 + 1696) = xmmword_79A820;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 1712) = _Q0;
  *(v0 + 1728) = _Q0;
  *(v0 + 1744) = _Q0;
  v7 = sub_10DAFC(v0);
  swift_setDeallocating();
  result = swift_deallocClassInstance();
  off_952430 = v7;
  return result;
}

uint64_t sub_3B7E6C()
{

  return swift_deallocClassInstance();
}

id sub_3B7ED0(unsigned int a1, unsigned int a2)
{
  v4 = [objc_allocWithZone(CAMutableMeshTransform) init];
  [v4 setDepthNormalization:kCADepthNormalizationMax];
  if (qword_93CEE8 != -1)
  {
    swift_once();
  }

  v5 = 0;
  v6 = vdup_n_s32(a2);
  v7 = off_952430;
  v8 = vdup_n_s32(a1);
  v9.i64[0] = v8.u32[0];
  v9.i64[1] = v8.u32[1];
  __asm { FMOV            V1.2D, #1.0 }

  v38 = _Q1;
  v39 = vcltzq_s64(vshlq_n_s64(v9, 0x3FuLL));
  v9.i64[0] = v6.u32[0];
  v9.i64[1] = v6.u32[1];
  v37 = vcltzq_s64(vshlq_n_s64(v9, 0x3FuLL));
  if (*(&dword_10 + off_952430))
  {
LABEL_4:
    v15 = *(&off_87DB40 + v5 + 32);
    v16 = sub_6641D0(0.0, v15);
    if (v17)
    {
      v18 = vbslq_s8(v39, *(*&stru_20.segname[v7 + 16] + 32 * v16), *(*&stru_20.segname[v7 + 16] + 32 * v16 + 16));
      v41 = 0;
      v42 = v15;
      v43 = vbslq_s8(v37, vsubq_f64(v38, v18), v18);
      v44 = 0;
      [v4 addVertex:&v41];
    }

    if (*(&dword_10 + v7))
    {
      v19 = sub_6641D0(0.2, v15);
      if (v20)
      {
        v21 = vbslq_s8(v39, *(*&stru_20.segname[v7 + 16] + 32 * v19), *(*&stru_20.segname[v7 + 16] + 32 * v19 + 16));
        v41 = 0x3FC999999999999ALL;
        v42 = v15;
        v43 = vbslq_s8(v37, vsubq_f64(v38, v21), v21);
        v44 = 0;
        [v4 addVertex:&v41];
      }

      if (*(&dword_10 + v7))
      {
        v22 = sub_6641D0(0.4, v15);
        if (v23)
        {
          v24 = vbslq_s8(v39, *(*&stru_20.segname[v7 + 16] + 32 * v22), *(*&stru_20.segname[v7 + 16] + 32 * v22 + 16));
          v41 = 0x3FD999999999999ALL;
          v42 = v15;
          v43 = vbslq_s8(v37, vsubq_f64(v38, v24), v24);
          v44 = 0;
          [v4 addVertex:&v41];
        }

        if (*(&dword_10 + v7))
        {
          v25 = sub_6641D0(0.6, v15);
          if (v26)
          {
            v27 = vbslq_s8(v39, *(*&stru_20.segname[v7 + 16] + 32 * v25), *(*&stru_20.segname[v7 + 16] + 32 * v25 + 16));
            v41 = 0x3FE3333333333333;
            v42 = v15;
            v43 = vbslq_s8(v37, vsubq_f64(v38, v27), v27);
            v44 = 0;
            [v4 addVertex:&v41];
          }

          if (*(&dword_10 + v7))
          {
            v28 = sub_6641D0(0.8, v15);
            if (v29)
            {
              v30 = vbslq_s8(v39, *(*&stru_20.segname[v7 + 16] + 32 * v28), *(*&stru_20.segname[v7 + 16] + 32 * v28 + 16));
              v41 = 0x3FE999999999999ALL;
              v42 = v15;
              v43 = vbslq_s8(v37, vsubq_f64(v38, v30), v30);
              v44 = 0;
              [v4 addVertex:&v41];
            }

            if (*(&dword_10 + v7))
            {
              v31 = sub_6641D0(1.0, v15);
              if (v32)
              {
                v33 = vbslq_s8(v39, *(*&stru_20.segname[v7 + 16] + 32 * v31), *(*&stru_20.segname[v7 + 16] + 32 * v31 + 16));
                v41 = 0x3FF0000000000000;
                v42 = v15;
                v43 = vbslq_s8(v37, vsubq_f64(v38, v33), v33);
                v44 = 0;
                [v4 addVertex:&v41];
              }
            }
          }
        }
      }
    }
  }

  while (v5 != 40)
  {
    v5 += 8;
    if (*(&dword_10 + v7))
    {
      goto LABEL_4;
    }
  }

  v45 = 0uLL;
  for (i = -24; ; i += 6)
  {
    v43 = 0uLL;
    LODWORD(v41) = i + 24;
    HIDWORD(v41) = i + 25;
    v35 = vadd_s32(vdup_n_s32(i + 24), 0x600000007);
    v40 = v35.i32[0];
    v42 = *&v35;
    [v4 addFace:{&v41, *&v37, *&v38}];
    v43 = 0uLL;
    LODWORD(v41) = i + 25;
    HIDWORD(v41) = i + 26;
    LODWORD(v42) = i + 32;
    HIDWORD(v42) = v40;
    [v4 addFace:&v41];
    v43 = 0uLL;
    LODWORD(v41) = i + 26;
    HIDWORD(v41) = i + 27;
    LODWORD(v42) = i + 33;
    HIDWORD(v42) = i + 32;
    [v4 addFace:&v41];
    v43 = 0uLL;
    LODWORD(v41) = i + 27;
    HIDWORD(v41) = i + 28;
    LODWORD(v42) = i + 34;
    HIDWORD(v42) = i + 33;
    [v4 addFace:&v41];
    v43 = v45;
    LODWORD(v41) = i + 28;
    HIDWORD(v41) = i + 29;
    LODWORD(v42) = i + 35;
    HIDWORD(v42) = i + 34;
    [v4 addFace:&v41];
    if (!i)
    {
      break;
    }
  }

  return v4;
}

unint64_t sub_3B8354()
{
  result = qword_9524E8;
  if (!qword_9524E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9524E8);
  }

  return result;
}

uint64_t sub_3B83A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v86 = a6;
  v72 = a4;
  v83 = a1;
  v84 = a3;
  v6 = sub_BD88(&unk_9457D0, &unk_785630);
  __chkstk_darwin(v6 - 8);
  v82 = &v70 - v7;
  v8 = sub_BD88(&unk_94AC40, qword_78D7F0);
  __chkstk_darwin(v8 - 8);
  v81 = &v70 - v9;
  v10 = sub_BD88(&unk_9457E0, &qword_785640);
  __chkstk_darwin(v10 - 8);
  v80 = &v70 - v11;
  v12 = sub_BD88(&unk_94A780, &unk_788DC0);
  __chkstk_darwin(v12 - 8);
  v79 = &v70 - v13;
  v14 = sub_BD88(&unk_948730, &qword_788DD0);
  __chkstk_darwin(v14 - 8);
  v78 = &v70 - v15;
  v16 = sub_BD88(&qword_94C3F0, qword_781390);
  __chkstk_darwin(v16 - 8);
  v71 = &v70 - v17;
  v18 = sub_75FA00();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_7664A0();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = (&v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_7674E0();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_767510();
  v73 = *(v75 - 8);
  *&v30 = __chkstk_darwin(v75).n128_u64[0];
  v32 = &v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = [v86 traitCollection];
  (*(v27 + 104))(v29, enum case for Separator.Position.bottom(_:), v26);
  *v25 = UIFontTextStyleBody;
  (*(v23 + 104))(v25, enum case for FontSource.textStyle(_:), v22);
  v89 = sub_766CA0();
  v90 = &protocol witness table for StaticDimension;
  sub_B1B4(v88);
  v87[3] = v22;
  v87[4] = &protocol witness table for FontSource;
  v33 = sub_B1B4(v87);
  (*(v23 + 16))(v33, v25, v22);
  v34 = UIFontTextStyleBody;
  sub_766CB0();
  (*(v23 + 8))(v25, v22);
  v86 = v32;
  sub_7674F0();
  sub_75F9B0();
  sub_3B9020(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  LOBYTE(v27) = sub_76A520();
  v35 = *(v19 + 8);
  v74 = v18;
  v76 = v19 + 8;
  v35(v21, v18);
  if (v27)
  {
    v36 = v73;
    v37 = v71;
    v38 = v75;
    (*(v73 + 56))(v71, 1, 1, v75);
    v39 = OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_separator;
    v40 = v77;
    swift_beginAccess();
    sub_84734(v37, &v40[v39]);
    swift_endAccess();
    sub_276DA8();
    sub_10A2C(v37, &qword_94C3F0, qword_781390);
    sub_75F9C0();
    v41 = v74;
    v42 = sub_76A520();
    v35(v21, v41);
    v43 = [v40 contentView];
    v44 = v43;
    v45 = v40;
    v46 = v38;
    if (v42)
    {
      [v43 layoutMargins];
      [v44 setLayoutMargins:?];
    }

    else
    {
      sub_7674A0();
      sub_B170(v88, v89);
      sub_766710();
      [v44 layoutMargins];
      [v44 setLayoutMargins:?];

      sub_BEB8(v88);
    }
  }

  else
  {
    v47 = v73;
    v48 = v71;
    v49 = v75;
    (*(v73 + 16))(v71, v86, v75);
    (*(v47 + 56))(v48, 0, 1, v49);
    v50 = OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_separator;
    v51 = v77;
    swift_beginAccess();
    sub_84734(v48, &v51[v50]);
    swift_endAccess();
    sub_276DA8();
    sub_10A2C(v48, &qword_94C3F0, qword_781390);
    v52 = [v51 contentView];
    [v52 layoutMargins];
    [v52 setLayoutMargins:?];

    sub_75F990();
    v53 = v74;
    v54 = sub_76A520();
    v35(v21, v53);
    v55 = v51[OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout];
    v51[OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout] = v54 & 1;
    v45 = v51;
    v46 = v49;
    v36 = v47;
    if ((v54 & 1) != v55)
    {
      v56 = *&v45[OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_separatorView];
      if (v56)
      {
        v57 = 1.0;
        if (v54)
        {
          v57 = 0.0;
        }

        [v56 setAlpha:v57];
      }
    }
  }

  v58 = *&v45[OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_lockupView];
  v59 = sub_BD88(&unk_948740, &unk_784920);
  v60 = v78;
  (*(*(v59 - 8) + 56))(v78, 1, 1, v59);
  v61 = sub_758C70();
  v62 = v79;
  (*(*(v61 - 8) + 56))(v79, 1, 1, v61);
  v63 = sub_75BD30();
  v64 = v80;
  (*(*(v63 - 8) + 56))(v80, 1, 1, v63);
  v65 = sub_BD88(&unk_9457F0, qword_783FD0);
  v66 = v81;
  (*(*(v65 - 8) + 56))(v81, 1, 1, v65);
  v67 = sub_765870();
  v68 = v82;
  (*(*(v67 - 8) + 56))(v82, 1, 1, v67);
  sub_4A18A4(v83, v58, v60, v84, 0, 0, v62, v64, v68, v66);
  sub_10A2C(v68, &unk_9457D0, &unk_785630);
  v58[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_1FD89C();
  [v58 setNeedsLayout];
  sub_10A2C(v66, &unk_94AC40, qword_78D7F0);
  sub_10A2C(v64, &unk_9457E0, &qword_785640);
  sub_10A2C(v62, &unk_94A780, &unk_788DC0);
  sub_10A2C(v60, &unk_948730, &qword_788DD0);
  [v45 setNeedsLayout];

  return (*(v36 + 8))(v86, v46);
}

uint64_t sub_3B9020(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_3B9068(double a1, uint64_t a2, uint64_t a3, void *a4)
{
  v37 = a4;
  v5 = sub_76A920();
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7664A0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_7674E0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_767510();
  v35 = *(v15 - 8);
  v36 = v15;
  __chkstk_darwin(v15);
  v34 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_75FA00();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75F9B0();
  sub_3B9020(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v21 = sub_76A520();
  (*(v18 + 8))(v20, v17);
  (*(v12 + 104))(v14, enum case for Separator.Position.bottom(_:), v11);
  *v10 = UIFontTextStyleBody;
  (*(v8 + 104))(v10, enum case for FontSource.textStyle(_:), v7);
  v40 = sub_766CA0();
  v41 = &protocol witness table for StaticDimension;
  sub_B1B4(v39);
  v38[3] = v7;
  v38[4] = &protocol witness table for FontSource;
  v22 = sub_B1B4(v38);
  (*(v8 + 16))(v22, v10, v7);
  v23 = UIFontTextStyleBody;
  sub_766CB0();
  (*(v8 + 8))(v10, v7);
  if (v21)
  {
    v24 = v34;
    sub_7674F0();
    sub_7674A0();
    (*(v35 + 8))(v24, v36);
    v25 = v40;
    sub_B170(v39, v40);
    v26 = v31;
    sub_33964(v25);
    v27 = v37;
    sub_766700();
    (*(v32 + 8))(v26, v33);
    sub_BEB8(v39);
  }

  else
  {
    v28 = v34;
    sub_7674F0();
    v27 = v37;
    sub_7674D0();
    (*(v35 + 8))(v28, v36);
  }

  swift_getObjectType();
  sub_277BF8(v27);
  return a1;
}

uint64_t sub_3B9614(uint64_t a1, uint64_t a2, void *a3)
{
  v23[1] = a1;
  v4 = sub_7664A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_7674E0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_767510();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, enum case for Separator.Position.bottom(_:), v8, v14);
  *v7 = UIFontTextStyleBody;
  (*(v5 + 104))(v7, enum case for FontSource.textStyle(_:), v4);
  v25[3] = sub_766CA0();
  v25[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v25);
  v24[3] = v4;
  v24[4] = &protocol witness table for FontSource;
  v17 = sub_B1B4(v24);
  (*(v5 + 16))(v17, v7, v4);
  v18 = UIFontTextStyleBody;
  sub_766CB0();
  (*(v5 + 8))(v7, v4);
  sub_7674F0();
  swift_getObjectType();
  sub_7674D0();
  (*(v13 + 8))(v16, v12);
  sub_277BF8(a3);
  v19 = objc_opt_self();
  PageTraitEnvironment.pageColumnWidth.getter();
  v20 = [v19 absoluteDimension:?];
  v21 = sub_75F970();

  return v21;
}

uint64_t sub_3B9960@<X0>(uint64_t a2@<X8>)
{
  if (sub_7699D0())
  {
    v4 = sub_766690();
    v5 = *(*(v4 - 8) + 56);
    v6 = v4;
    v7 = a2;
    v8 = 1;
    goto LABEL_19;
  }

  v9 = sub_769240();
  v11 = v10;
  if (v9 == sub_769240() && v11 == v12)
  {

    goto LABEL_15;
  }

  v14 = sub_76A950();

  if (v14)
  {
LABEL_15:
    if (qword_93CEF0 != -1)
    {
      swift_once();
    }

    v22 = sub_766690();
    v23 = v22;
    v24 = qword_99D7F0;
    goto LABEL_18;
  }

  v15 = sub_769240();
  v17 = v16;
  if (v15 == sub_769240() && v17 == v18)
  {
  }

  else
  {
    v20 = sub_76A950();

    if ((v20 & 1) == 0)
    {
      sub_766670();
      v21 = sub_766690();
      v5 = *(*(v21 - 8) + 56);
      v6 = v21;
      v7 = a2;
      v8 = 0;
      goto LABEL_19;
    }
  }

  if (qword_93CEF8 != -1)
  {
    swift_once();
  }

  v22 = sub_766690();
  v23 = v22;
  v24 = qword_99D808;
LABEL_18:
  v25 = sub_BE38(v22, v24);
  v27 = *(v23 - 8);
  (*(v27 + 16))(a2, v25, v23);
  v5 = *(v27 + 56);
  v7 = a2;
  v8 = 0;
  v6 = v23;
LABEL_19:

  return v5(v7, v8, 1, v6);
}

void sub_3B9C04(uint64_t a1, uint64_t (*a2)(char *, void, uint64_t, __n128), uint64_t a3, char *a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = v9;
  v253 = a3;
  v252 = a2;
  v18 = sub_BD88(&qword_946D98, &qword_787F68);
  __chkstk_darwin(v18 - 8);
  v224 = &v217 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v217 - v21;
  v23 = sub_BD88(&unk_948710, &qword_77FF90);
  __chkstk_darwin(v23 - 8);
  v240 = &v217 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v241 = &v217 - v26;
  v27 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v27 - 8);
  v239 = &v217 - v28;
  v29 = sub_75A6B0();
  __chkstk_darwin(v29 - 8);
  v223 = &v217 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v228 = &v217 - v32;
  __chkstk_darwin(v33);
  v234 = &v217 - v34;
  __chkstk_darwin(v35);
  v233 = &v217 - v36;
  v238 = sub_75A6E0();
  v237 = *(v238 - 8);
  __chkstk_darwin(v238);
  v227 = &v217 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v232 = &v217 - v39;
  v243 = sub_75DC30();
  v242 = *(v243 - 8);
  __chkstk_darwin(v243);
  v229 = &v217 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v254 = &v217 - v42;
  v222 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  v221 = *(v222 - 8);
  __chkstk_darwin(v222);
  v44 = &v217 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_BD88(&unk_94DF00, &unk_792100);
  __chkstk_darwin(v45 - 8);
  v225 = &v217 - v46;
  v236 = sub_766690();
  v235 = *(v236 - 8);
  __chkstk_darwin(v236);
  v251 = &v217 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = sub_75C9A0();
  v248 = *(v249 - 8);
  __chkstk_darwin(v249);
  v247 = &v217 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = sub_760770();
  v263 = *(v267 - 8);
  __chkstk_darwin(v267);
  v250 = &v217 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v266 = &v217 - v51;
  __chkstk_darwin(v52);
  v258 = &v217 - v53;
  v268 = sub_75C930();
  v54 = *(v268 - 8);
  __chkstk_darwin(v268);
  v219 = &v217 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v226 = &v217 - v57;
  __chkstk_darwin(v58);
  v255 = &v217 - v59;
  __chkstk_darwin(v60);
  v231 = &v217 - v61;
  __chkstk_darwin(v62);
  v261 = &v217 - v63;
  v64 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v64 - 8);
  v220 = &v217 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v66);
  v257 = &v217 - v67;
  __chkstk_darwin(v68);
  v265 = &v217 - v69;
  v70 = &unk_77E220;
  v71 = sub_BD88(&unk_93F620, &unk_77E220);
  __chkstk_darwin(v71 - 8);
  v73 = &v217 - v72;
  [v9 setLayoutMargins:{a6, a7, a8, a9}];
  v74 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupView];
  *&v74[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_regularWidthColumnSpacing] = a5;
  [v74 setNeedsLayout];
  v75 = sub_75C840();
  (*(*(v75 - 8) + 56))(v73, 1, 1, v75);
  v246 = v74;
  sub_223E1C(a1, v73, a4);
  sub_10A2C(v73, &unk_93F620, &unk_77E220);
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v76 = sub_76A000();
  [v10 setBackgroundColor:v76];

  v269 = a1;
  v77 = sub_75BC70();
  if (v77 >> 62)
  {
    v76 = v77;
    v78 = sub_76A860();
    v77 = v76;
  }

  else
  {
    v78 = *(&dword_10 + (v77 & 0xFFFFFFFFFFFFFF8));
  }

  v79 = v258;
  if (v78)
  {
    if ((v77 & 0xC000000000000001) != 0)
    {
      v76 = v77;
      v260 = sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (v77 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_78;
      }

      v76 = v77;
      v260 = *(v77 + 32);
    }
  }

  else
  {

    v260 = 0;
  }

  v245 = v10;
  v73 = *(v10 + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupMediaView);
  v259 = sub_75BCA0();
  v10 = sub_75BC80();
  v80 = sub_75BCF0();
  if (v80 >> 62)
  {
    v76 = v80;
    v81 = sub_76A860();
    v80 = v76;
  }

  else
  {
    v81 = *(&dword_10 + (v80 & 0xFFFFFFFFFFFFFF8));
  }

  v256 = a4;
  v264 = v54;
  if (v81)
  {
    if ((v80 & 0xC000000000000001) != 0)
    {
      v262 = sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (v80 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_80;
      }

      v262 = *(v80 + 32);
    }
  }

  else
  {

    v262 = 0;
  }

  sub_3B9960(v265);
  v70 = sub_75BCA0();
  v54 = sub_75BC80();
  v82 = sub_75BC70();
  if (v82 >> 62)
  {
    v83 = v82;
    v84 = sub_76A860();
    v82 = v83;
    if (v84)
    {
LABEL_19:
      if ((v82 & 0xC000000000000001) == 0)
      {
        if (!*(&dword_10 + (v82 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_82;
        }

        v76 = *(v82 + 32);

        goto LABEL_22;
      }

LABEL_78:
      v76 = sub_76A770();
LABEL_22:

      goto LABEL_27;
    }
  }

  else if (*(&dword_10 + (v82 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_19;
  }

  v76 = 0;
LABEL_27:
  v82 = sub_75BCF0();
  if (!(v82 >> 62))
  {
    if (*(&dword_10 + (v82 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_29;
    }

LABEL_34:

    v85 = 0;
    goto LABEL_35;
  }

  v86 = v82;
  v87 = sub_76A860();
  v82 = v86;
  if (!v87)
  {
    goto LABEL_34;
  }

LABEL_29:
  if ((v82 & 0xC000000000000001) != 0)
  {
LABEL_80:
    v85 = sub_76A770();
    goto LABEL_32;
  }

  if (!*(&dword_10 + (v82 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v85 = *(v82 + 32);

LABEL_32:

LABEL_35:
  v230 = v22;
  sub_75BCC0();
  v88 = sub_760760();
  v244 = v44;
  if ((v88 & 1) == 0)
  {

    v258 = *(v263 + 8);
    (v258)(v79, v267);
    v94 = v264;
    v76 = v261;
    (*(v264 + 104))(v261, enum case for LockupMediaLayout.DisplayType.none(_:), v268);
    v70 = 9490432;
    v44 = v260;
    goto LABEL_66;
  }

  v90 = v255;
  if (v54 | v70)
  {
    v95 = v231;
    sub_7666A0();

    v258 = *(v263 + 8);
    (v258)(v79, v267);
    v94 = v264;
    v96 = v268;
    (*(v264 + 104))(v95, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v268);
    v76 = v261;
    (*(v94 + 32))(v261, v95, v96);
    v70 = 9490432;
    v44 = v260;
    v54 = v251;
    goto LABEL_67;
  }

  v91 = sub_55BABC(v76, v85, 0, 1, v89);
  v54 = v91;
  v70 = v91 >> 62;
  if (v91 >> 62)
  {
    goto LABEL_130;
  }

  for (i = *(&dword_10 + (v91 & 0xFFFFFFFFFFFFFF8)); ; i = sub_76A860())
  {
    v253 = i;
    if (v76)
    {
      v93 = sub_759690();
    }

    else
    {
      v93 = 0;
    }

    v97 = sub_55BE04(v93);

    v218 = v10;
    LODWORD(v217) = v97;
    if (v76)
    {
      v98 = sub_759690();
    }

    else
    {
      v98 = 0;
    }

    v99 = v263;
    v100 = v225;
    v101 = v267;
    (*(v263 + 16))(v225, v258, v267);
    v102.n128_f64[0] = (*(v99 + 56))(v100, 0, 1, v101);
    HIDWORD(v217) = sub_55C32C(v98, v100, v102);

    sub_10A2C(v100, &unk_94DF00, &unk_792100);
    if (v70)
    {
      v103 = sub_76A860();
    }

    else
    {
      v103 = *(&dword_10 + (v54 & 0xFFFFFFFFFFFFFF8));
    }

    v10 = v218;
    v104 = v226;
    if (!v103)
    {

LABEL_57:
      v108 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
      v109 = v264;
      v110 = v268;
      v252 = *(v264 + 104);
      (v252)(v104, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v268);
      v111 = sub_75C920();
      v112 = *(v109 + 8);
      v112(v104, v110);
      if (((v253 >= v111) & BYTE4(v217)) != 0 || (v108 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), v113 = v268, (v252)(v104, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v268), v114 = sub_75C920(), v112(v104, v113), ((v253 >= v114) & v217) != 0) || (v108 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), v115 = v268, (v252)(v104, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v268), v116 = sub_75C920(), v112(v104, v115), v253 >= v116))
      {

        v122 = v258;
        v258 = *(v263 + 8);
        (v258)(v122, v267);
      }

      else
      {
        v108 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
        v117 = v268;
        (v252)(v104, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v268);
        v118 = sub_75C920();

        v112(v104, v117);
        v119 = v258;
        v258 = *(v263 + 8);
        (v258)(v119, v267);
        if (v253 != v118)
        {
          v120 = enum case for LockupMediaLayout.DisplayType.none(_:);
          v107 = v231;
          v121 = v231;
LABEL_64:
          (v252)(v121, v120, v268);
          v94 = v264;
          v70 = &unk_90D000;
          v76 = v261;
          v44 = v260;
          v10 = v218;
          goto LABEL_65;
        }
      }

      v107 = v231;
      v121 = v231;
      v120 = v108;
      goto LABEL_64;
    }

    if ((v54 & 0xC000000000000001) != 0)
    {
      sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (v54 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_152;
      }
    }

    v105 = sub_765150();

    if ((v105 & 1) == 0)
    {
      goto LABEL_57;
    }

    v106 = v258;
    v258 = *(v263 + 8);
    (v258)(v106, v267);
    v94 = v264;
    v107 = v231;
    (*(v264 + 104))(v231, enum case for LockupMediaLayout.DisplayType.landscape(_:), v268);
    v70 = 9490432;
    v76 = v261;
    v44 = v260;
LABEL_65:
    (*(v94 + 32))(v76, v107, v268);
LABEL_66:
    v54 = v251;
    v90 = v255;
LABEL_67:
    sub_75BCC0();
    v271[3] = &type metadata for CGFloat;
    v271[4] = &protocol witness table for CGFloat;
    v271[0] = 0x4021000000000000;
    sub_134D8(v271, v270);
    v123 = *(v94 + 16);
    v123(v90, v76, v268);
    v255 = v123;
    if (v10 | v259)
    {
      goto LABEL_85;
    }

    v82 = sub_55BABC(v44, v262, 0, 1, v124);
    if (v82 >> 62)
    {
      break;
    }

    if (!*(&dword_10 + (v82 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_84;
    }

LABEL_70:
    if ((v82 & 0xC000000000000001) != 0)
    {
      sub_76A770();
      goto LABEL_73;
    }

    if (*(&dword_10 + (v82 & 0xFFFFFFFFFFFFFF8)))
    {

LABEL_73:

      sub_765260();
      sub_7666A0();

      goto LABEL_86;
    }

    __break(1u);
LABEL_130:
    ;
  }

LABEL_83:
  v76 = v82;
  v125 = sub_76A860();
  v82 = v76;
  if (v125)
  {
    goto LABEL_70;
  }

LABEL_84:

LABEL_85:
  sub_7666A0();
LABEL_86:
  sub_1ED18(v265, v257, &unk_948720, &unk_784970);
  v126 = v247;
  sub_75C970();
  sub_BEB8(v271);
  v127 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_metrics;
  swift_beginAccess();
  v128 = v248;
  v129 = &v73[v127];
  v130 = v249;
  (*(v248 + 24))(v129, v126, v249);
  swift_endAccess();
  [v73 *(v70 + 3704)];
  (*(v128 + 8))(v126, v130);
  if (v44)
  {
    v131 = sub_759690();
  }

  else
  {
    v131 = 0;
  }

  sub_7596B0();
  v132 = v244;
  sub_6C14C(v131, v244);

  v133 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayConfiguration;
  swift_beginAccess();
  sub_163BAC(v132, &v73[v133]);
  swift_endAccess();
  sub_559BA0();
  sub_161D14(v132);
  if (v44)
  {
    v44 = sub_759690();
  }

  *&v73[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_platform] = v44;

  sub_559DA4();

  v134 = v263;
  v135 = v250;
  v136 = v267;
  (*(v263 + 16))(v250, v266, v267);
  v137 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (*(v134 + 24))(&v73[v137], v135, v136);
  swift_endAccess();
  [v73 setNeedsLayout];
  (v258)(v135, v136);
  if (v10)
  {
    v263 = v134 + 8;
    (*(v237 + 104))(v232, enum case for VideoFillMode.scaleAspectFill(_:), v238);

    sub_764BC0();
    sub_765260();
    v138 = v257;
    sub_7666A0();

    (*(v235 + 56))(v138, 0, 1, v236);
    sub_764B60();
    sub_764BA0();
    sub_764B70();
    sub_764B50();
    sub_764BB0();
    sub_75DC10();
    sub_75C360();
    v139 = v256;
    sub_768880();
    sub_764B40();
    v140 = v239;
    sub_764BD0();
    v141 = sub_7570A0();
    (*(*(v141 - 8) + 56))(v140, 0, 1, v141);
    v142 = v241;
    sub_764B90();
    v143 = v240;
    sub_764B80();
    type metadata accessor for VideoView(0);
    sub_3BFB7C(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
    v144 = v139;
    v145 = sub_75C340();
    sub_10A2C(v143, &unk_948710, &qword_77FF90);
    sub_10A2C(v142, &unk_948710, &qword_77FF90);
    sub_10A2C(v140, &unk_93FD30, qword_77F240);
    sub_10A2C(v271, &unk_9443A0, &unk_77E240);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v147 = Strong;
      v148 = [Strong superview];
      if (!v148)
      {
        goto LABEL_97;
      }

      v149 = v148;
      sub_BE70(0, &qword_93E550, UIView_ptr);
      v150 = v73;
      v151 = sub_76A1C0();

      v144 = v256;
      if (v151)
      {
        v152 = swift_unknownObjectWeakLoadStrong();
        if (v152)
        {
          v147 = v152;
          [v152 removeFromSuperview];
LABEL_97:
        }
      }
    }

    swift_unknownObjectWeakAssign();
    v153 = swift_unknownObjectWeakLoadStrong();
    if (v153)
    {
      v154 = v153;
      [v73 addSubview:v153];
    }

    sub_55A7A8();
    [v73 setNeedsLayout];

    v155 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView;
    v156 = *&v73[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView];
    v157 = v266;
    v158 = v144;
    if (v156)
    {
      [v156 removeFromSuperview];
      v159 = *&v73[v155];
    }

    else
    {
      v159 = 0;
    }

    v169 = v243;
    *&v73[v155] = 0;

    [v73 setNeedsLayout];

    (*(v242 + 8))(v254, v169);
    goto LABEL_145;
  }

  if (!v262)
  {
    goto LABEL_133;
  }

  v160 = sub_765750();
  if (v160 >> 62)
  {
    v199 = v160;
    v200 = sub_76A860();
    v160 = v199;
    if (!v200)
    {
      goto LABEL_132;
    }

LABEL_105:
    v218 = 0;
    v263 = v134 + 8;
    if ((v160 & 0xC000000000000001) == 0)
    {
      v161 = v261;
      if (!*(&dword_10 + (v160 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        return;
      }

LABEL_108:

      v162 = v219;
      v163 = v268;
      (v255)(v219, v161, v268);
      v164 = v264;
      v165 = (*(v264 + 88))(v162, v163);
      v166 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
      (*(v164 + 8))(v162, v163);
      if (v165 == v166)
      {
        v167 = 1;
        v168 = v230;
      }

      else
      {
        v170 = sub_765740();
        v168 = v230;
        sub_6C14C(v170, v230);

        v167 = 0;
      }

      v171 = v224;
      v172 = v222;
      v173 = v238;
      v174 = v237;
      v175 = v220;
      v176 = v221;
      (*(v221 + 56))(v168, v167, 1, v222);
      (*(v174 + 104))(v227, enum case for VideoFillMode.scaleAspectFill(_:), v173);
      sub_764BC0();
      sub_765260();
      sub_7666A0();

      (*(v235 + 56))(v175, 0, 1, v236);
      sub_764B60();
      sub_764BA0();
      LODWORD(v257) = sub_764B70();
      sub_764B50();
      sub_764BB0();
      sub_1ED18(v168, v171, &qword_946D98, &qword_787F68);
      if ((*(v176 + 48))(v171, 1, v172) == 1)
      {
        sub_10A2C(v171, &qword_946D98, &qword_787F68);
      }

      else
      {
        sub_161D14(v171);
      }

      sub_75DC10();
      sub_75C360();
      sub_768880();
      v177 = v271[0];
      sub_764B40();
      v178 = v239;
      sub_764BD0();
      v179 = sub_7570A0();
      (*(*(v179 - 8) + 56))(v178, 0, 1, v179);
      v180 = v241;
      sub_764B90();
      v181 = v240;
      sub_764B80();
      type metadata accessor for VideoView(0);
      sub_3BFB7C(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
      v257 = v177;
      v182 = sub_75C340();
      sub_10A2C(v181, &unk_948710, &qword_77FF90);
      sub_10A2C(v180, &unk_948710, &qword_77FF90);
      sub_10A2C(v178, &unk_93FD30, qword_77F240);
      sub_10A2C(v271, &unk_9443A0, &unk_77E240);
      v183 = swift_unknownObjectWeakLoadStrong();
      v184 = v266;
      v185 = v230;
      if (!v183)
      {
        goto LABEL_122;
      }

      v186 = v183;
      v187 = v266;
      v188 = [v183 superview];
      if (v188)
      {
        v189 = v188;
        sub_BE70(0, &qword_93E550, UIView_ptr);
        v190 = v73;
        v191 = sub_76A1C0();

        v185 = v230;
        v184 = v187;
        if ((v191 & 1) == 0)
        {
          goto LABEL_122;
        }

        v192 = swift_unknownObjectWeakLoadStrong();
        if (!v192)
        {
          goto LABEL_122;
        }

        v186 = v192;
        [v192 removeFromSuperview];
      }

LABEL_122:
      swift_unknownObjectWeakAssign();
      v193 = swift_unknownObjectWeakLoadStrong();
      if (v193)
      {
        v194 = v193;
        [v73 addSubview:v193];
      }

      sub_55A7A8();
      [v73 setNeedsLayout];

      v195 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView;
      v196 = *&v73[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView];
      v197 = v243;
      v157 = v184;
      if (v196)
      {
        [v196 removeFromSuperview];
        v198 = *&v73[v195];
      }

      else
      {
        v198 = 0;
      }

      *&v73[v195] = 0;

      [v73 setNeedsLayout];

      (*(v242 + 8))(v229, v197);
      sub_10A2C(v185, &qword_946D98, &qword_787F68);
      v158 = v256;
      goto LABEL_145;
    }

LABEL_152:
    sub_76A770();
    v161 = v261;
    goto LABEL_108;
  }

  if (*(&dword_10 + (v160 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_105;
  }

LABEL_132:

LABEL_133:
  v201 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView;
  v202 = *&v73[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView];
  if (v202)
  {
    [v202 removeFromSuperview];
    v203 = *&v73[v201];
  }

  else
  {
    v203 = 0;
  }

  v158 = v256;
  v204 = v266;
  *&v73[v201] = 0;

  [v73 setNeedsLayout];
  v205 = swift_unknownObjectWeakLoadStrong();
  if (v205)
  {
    v206 = v205;
    sub_3BFB7C(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
    v207 = [v206 superview];
    if (!v207)
    {
      goto LABEL_141;
    }

    v208 = v207;
    sub_BE70(0, &qword_93E550, UIView_ptr);
    v209 = v73;
    v210 = sub_76A1C0();

    if (v210)
    {
      v211 = swift_unknownObjectWeakLoadStrong();
      if (v211)
      {
        v206 = v211;
        [v211 removeFromSuperview];
LABEL_141:
      }
    }
  }

  swift_unknownObjectWeakAssign();
  v212 = swift_unknownObjectWeakLoadStrong();
  if (v212)
  {
    v213 = v212;
    [v73 addSubview:v212];
  }

  sub_55A7A8();
  [v73 setNeedsLayout];
  v157 = v204;
LABEL_145:
  [v73 setNeedsLayout];

  (v258)(v157, v267);
  (*(v264 + 8))(v261, v268);
  sub_10A2C(v265, &unk_948720, &unk_784970);
  if (sub_764E90())
  {
    v214 = sub_75E5C0();

    v215 = v245;
    if (v214)
    {
      v216 = [objc_opt_self() clearColor];
      [v215 setBackgroundColor:v216];
    }
  }

  else
  {
    v214 = 0;
    v215 = v245;
  }

  [v215 setNeedsLayout];

  [v215 setNeedsLayout];
}

void sub_3BBFF4(uint64_t a1, uint64_t a2, void *a3, void *a4, __n128 a5)
{
  v6 = v5;
  v183 = a4;
  v10 = sub_760770();
  v165 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v140[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_BD88(&unk_93F5A0, &unk_77E570);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v140[-v15];
  v17 = sub_760840();
  v172 = *(v17 - 8);
  v173 = v17;
  __chkstk_darwin(v17);
  v171 = &v140[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_760D90();
  v176 = *(v19 - 8);
  *&v177 = v19;
  __chkstk_darwin(v19);
  v159 = &v140[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_762D10();
  v168 = *(v21 - 8);
  v169 = v21;
  __chkstk_darwin(v21);
  v167 = &v140[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_75D850();
  v180 = *(v23 - 8);
  v181 = v23;
  __chkstk_darwin(v23);
  v166 = &v140[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v25);
  v179 = &v140[-v26];
  v185 = sub_760820();
  v178 = *(v185 - 8);
  __chkstk_darwin(v185);
  v170 = &v140[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v184 = &v140[-v29];
  v30 = sub_BD88(&unk_94AE30, qword_7864D0);
  __chkstk_darwin(v30 - 8);
  v160 = &v140[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v32);
  v182 = &v140[-v33];
  v34 = sub_7652D0();
  __chkstk_darwin(v34 - 8);
  if (*(a2 + 32))
  {
    return;
  }

  v164 = &v140[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v156 = v16;
  v157 = v14;
  v158 = v13;
  v142 = v12;
  v143 = v10;
  v36 = *(a2 + 16);
  v37 = *(a2 + 24);
  v175 = v6;
  v38 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupMediaView);
  v39 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_imageViews;
  swift_beginAccess();
  v162 = v38;
  v40 = *(v38 + v39);
  if (v40 >> 62)
  {
    v41 = sub_76A860();
  }

  else
  {
    v41 = *(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8));
  }

  v174 = a1;
  v42 = v175;
  if (v41)
  {
    if (v41 < 1)
    {
      __break(1u);
      goto LABEL_62;
    }

    v43 = a3;

    v44 = 0;
    do
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        v45 = sub_76A770();
      }

      else
      {
        v45 = *(v40 + v44 + 4);
      }

      v46 = v45;
      ++v44;
      v221[0] = v45;
      type metadata accessor for BorderedScreenshotView(0);
      sub_3BFB7C(&qword_946D80, type metadata accessor for BorderedScreenshotView, &protocol conformance descriptor for NSObject);
      v47 = v46;
      sub_76A6E0();
      sub_75A0B0();
      sub_1EB60(v222);
      v48 = *&v47[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView];
      v223.value.super.isa = 0;
      v223.is_nil = 0;
      sub_7591D0(v223, v49);
    }

    while (v41 != v44);

    a3 = v43;
    v42 = v175;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v51 = Strong;
    [*(Strong + qword_940590) setImage:0];
    v221[0] = v51;
    type metadata accessor for VideoView(0);
    sub_3BFB7C(&qword_952550, type metadata accessor for VideoView, &protocol conformance descriptor for NSObject);
    v52 = v51;
    sub_76A6E0();
    sub_75A0B0();
    v42 = v175;

    sub_1EB60(v222);
  }

  v6 = *(v42 + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupView);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
  v53 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  v224.value.super.isa = 0;
  v224.is_nil = 0;
  sub_7591D0(v224, v54);

  v55 = *(v6 + v14);
  sub_759210();
  sub_3BFB7C(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v56 = v55;
  v161 = a3;
  sub_75A0C0();

  if (sub_764EE0())
  {
    v57 = qword_93C668;
    v40 = *(v6 + v14);
    if (v57 == -1)
    {
LABEL_16:
      v58 = sub_75CF00();
      sub_BE38(v58, qword_99B898);
      sub_75CDD0();
      [v40 contentMode];
      sub_765330();
      sub_7652E0();
      sub_7591B0();
      [v40 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540, UIColor_ptr);
        sub_76A030();
      }

      sub_759070();
      v59 = *(v6 + v14);
      sub_75A050();

      goto LABEL_19;
    }

LABEL_62:
    swift_once();
    goto LABEL_16;
  }

LABEL_19:
  v60 = sub_764EF0();
  v147 = v61;
  v148 = v60;
  v62 = sub_764F70();
  v64 = v63;
  v65 = sub_764E90();
  v150 = v62;
  if (v65)
  {
    v66 = sub_75E5C0();

    v67 = v183;
    v68 = v184;
    v70 = v176;
    v69 = v177;
    v71 = v166;
    if (v66)
    {
      v72 = sub_765720();
      v151 = v73;
      v152 = v72;
    }

    else
    {
      v151 = 0;
      v152 = 0;
    }
  }

  else
  {
    v151 = 0;
    v152 = 0;
    v67 = v183;
    v68 = v184;
    v70 = v176;
    v69 = v177;
    v71 = v166;
  }

  v175 = sub_75BC90();
  v166 = sub_75BCB0();
  v74 = sub_75BCD0();
  (*(v70 + 56))(v182, 1, 1, v69);
  if (qword_93C3F8 != -1)
  {
    swift_once();
  }

  v75 = v185;
  v76 = sub_BE38(v185, qword_99B150);
  v77 = v178 + 16;
  v78 = *(v178 + 16);
  v78(v68, v76, v75);
  v79 = sub_769A00();
  v154 = v78;
  v155 = v77;
  v141 = v74;
  v149 = v64;
  if ((v79 & 1) == 0)
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v80 = qword_946938;
    goto LABEL_32;
  }

  if (qword_93C440 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v80 = qword_946920;
LABEL_32:
    v81 = v181;
    v82 = sub_BE38(v181, v80);
    v83 = v180;
    (*(v180 + 16))(v71, v82, v81);
    (*(v83 + 32))(v179, v71, v81);
    v84 = [v67 preferredContentSizeCategory];
    sub_769B20();

    sub_75D800();
    sub_75D830();
    sub_760810();
    sub_760800();
    v153 = sub_7670D0();
    swift_allocObject();
    v164 = sub_7670B0();
    v85 = objc_opt_self();
    v145 = v85;
    v86 = [v85 preferredFontForTextStyle:UIFontTextStyleBody];
    v87 = sub_7653B0();
    v222[3] = v87;
    v163 = sub_3BFB7C(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v222[4] = v163;
    v88 = sub_B1B4(v222);
    v89 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v146 = *(*(v87 - 8) + 104);
    v144 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v146(v88, enum case for Feature.measurement_with_labelplaceholder(_:), v87);
    sub_765C30();
    sub_BEB8(v222);
    v90 = v167;
    sub_762D00();
    sub_762CE0();
    v91 = v169;
    v168 = *(v168 + 8);
    (v168)(v90, v169);
    v92 = [v85 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v221[3] = v87;
    v221[4] = v163;
    v93 = sub_B1B4(v221);
    v94 = v89;
    v95 = v146;
    v146(v93, v94, v87);
    sub_765C30();
    sub_BEB8(v221);
    sub_762D00();
    sub_762CE0();
    v96 = v168;
    (v168)(v90, v91);
    v97 = [v145 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v220[3] = v87;
    v220[4] = v163;
    v98 = sub_B1B4(v220);
    v95(v98, v144, v87);
    sub_765C30();
    sub_BEB8(v220);
    sub_762D00();
    sub_762CE0();
    v96(v90, v91);
    v99 = v175;
    LODWORD(v169) = sub_246DC() & (v99 != 0);
    if (v169 == 1)
    {
      v100 = objc_allocWithZone(sub_7671D0());
      v101 = v183;
      v102 = sub_7671C0();
      v103 = v160;
      sub_1ED18(v182, v160, &unk_94AE30, qword_7864D0);
      v105 = v176;
      v104 = v177;
      v106 = *(v176 + 48);
      if (v106(v103, 1, v177) == 1)
      {
        v107 = v159;
        _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
        v108 = v106(v103, 1, v104);
        v109 = v166;
        if (v108 != 1)
        {
          sub_10A2C(v103, &unk_94AE30, qword_7864D0);
        }
      }

      else
      {
        v107 = v159;
        (*(v105 + 32))(v159, v103, v104);
        v109 = v166;
      }

      v112 = v102;
      sub_2185C(v175, v107, v112, v36, v37);

      (*(v105 + 8))(v107, v104);
      v110 = v153;
      swift_allocObject();
      v111 = sub_7670A0();
    }

    else
    {
      v110 = v153;
      swift_allocObject();
      v111 = sub_7670B0();
      v109 = v166;
    }

    if ((sub_246DC() & (v109 != 0)) == 1)
    {
      v113 = v183;
      sub_F7FC(v109, v141 & 1, v36, v37);
      swift_allocObject();
      v114 = sub_7670A0();
    }

    else
    {
      swift_allocObject();
      v114 = sub_7670B0();
      v113 = v183;
    }

    v154(v170, v184, v185);
    v219 = &protocol witness table for LayoutViewPlaceholder;
    v218 = v110;
    v217 = v164;
    v216 = 0;
    *&v214[40] = 0u;
    v215 = 0u;
    sub_134D8(v222, v214);
    sub_134D8(v221, &v213);
    v212 = 0;
    v210 = 0u;
    v211 = 0u;
    v209 = 0;
    v207 = 0u;
    v208 = 0u;

    v115 = sub_7670C0();
    v206 = &protocol witness table for LayoutViewPlaceholder;
    v205 = v110;
    v204 = v115;
    v203 = 0;
    v201 = 0u;
    v202 = 0u;
    v200 = 0;
    v198 = 0u;
    v199 = 0u;
    v197 = 0;
    v195 = 0u;
    v196 = 0u;
    v194 = 0;
    v193 = 0u;
    *&v192[40] = 0u;
    sub_134D8(v220, v192);
    v190 = v110;
    v191 = &protocol witness table for LayoutViewPlaceholder;
    v188 = &protocol witness table for LayoutViewPlaceholder;
    v189 = v111;
    v187 = v110;
    v186 = v114;
    v116 = v171;
    sub_760830();
    sub_7671D0();
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v117 = swift_allocObject();
    v177 = xmmword_77D9F0;
    *(v117 + 16) = xmmword_77D9F0;
    *(v117 + 32) = v113;
    v118 = v113;
    v119 = sub_7671E0();
    sub_3BFB7C(&qword_945FA0, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
    v120 = v173;
    sub_7665A0();
    v122 = v121;

    (*(v172 + 8))(v116, v120);
    sub_BEB8(v220);
    sub_BEB8(v221);
    sub_BEB8(v222);
    (*(v180 + 8))(v179, v181);
    (*(v178 + 8))(v184, v185);
    sub_10A2C(v182, &unk_94AE30, qword_7864D0);
    v123 = v156;
    sub_763F60();
    v124 = swift_allocObject();
    *(v124 + 16) = v177;
    *(v124 + 32) = v118;
    v125 = v118;
    v126 = sub_7671E0();
    sub_16194(&qword_93F5D0, &unk_93F5A0, &unk_77E570, &protocol conformance descriptor for <> Conditional<A, B>);
    v127 = v158;
    sub_7666E0();
    v129 = v128;

    (*(v157 + 8))(v123, v127);
    v130 = sub_75BCA0();
    v71 = sub_75BC80();
    v131 = sub_75BC70();
    if (v131 >> 62)
    {
      v133 = v131;
      v134 = sub_76A860();
      v131 = v133;
      v67 = v161;
      if (!v134)
      {
LABEL_50:

        v132 = 0;
        goto LABEL_51;
      }
    }

    else
    {
      v67 = v161;
      if (!*(&dword_10 + (v131 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_50;
      }
    }

    if ((v131 & 0xC000000000000001) != 0)
    {
      v132 = sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (v131 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_66;
      }

      v132 = *(v131 + 32);
    }

LABEL_51:
    v135 = sub_75BCF0();
    if (!(v135 >> 62))
    {
      if (!*(&dword_10 + (v135 & 0xFFFFFFFFFFFFFF8)))
      {
        break;
      }

      goto LABEL_53;
    }

    v137 = v135;
    v138 = sub_76A860();
    v135 = v137;
    if (!v138)
    {
      break;
    }

LABEL_53:
    if ((v135 & 0xC000000000000001) != 0)
    {
      v136 = sub_76A770();
      goto LABEL_56;
    }

    if (*(&dword_10 + (v135 & 0xFFFFFFFFFFFFFF8)))
    {
      v136 = *(v135 + 32);

LABEL_56:

      goto LABEL_59;
    }

LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  v136 = 0;
LABEL_59:
  v139 = v142;
  sub_75BCC0();
  sub_1600F8(v130, v71, v132, v136, v125, v67, v139, v36, v37 - v122 - v129);

  (*(v165 + 8))(v139, v143);
}

void sub_3BD5E8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_766690();
  sub_161DC(v3, a2);
  sub_BE38(v3, a2);
  sub_7666A0();
}

id sub_3BD644(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v4 = a1;
    v5 = a2;
    v6 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor:v6];

    a1 = v4;
    a2 = v5;
  }

  v7 = sub_2257B4(a1, a2);

  return [v3 setNeedsLayout];
}

id sub_3BD714(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider36AdvertSearchResultCollectionViewCell_advertsContentView];
  if (a1)
  {
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 clearColor];
    [v7 setBackgroundColor:v8];
  }

  else
  {
    v9 = v5;
  }

  [v5 setNeedsLayout];

  return [v2 setNeedsLayout];
}

uint64_t sub_3BD804(uint64_t a1, uint64_t (*a2)(char *, void, uint64_t, __n128), uint64_t a3, void *a4, char *a5, int a6)
{
  v7 = v6;
  v79 = a5;
  v72 = a4;
  v70 = a3;
  v71 = a2;
  v10 = sub_768380();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v77 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_7683C0();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v75 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = COERCE_DOUBLE(sub_768370());
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = sub_7683E0();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v63 - v21;
  sub_134D8(a1, aBlock);
  sub_BD88(&unk_952540, &qword_7918A0);
  sub_75BD00();
  result = swift_dynamicCast();
  if (result)
  {
    v69 = v10;
    v24 = OBJC_IVAR____TtC18ASMessagesProvider36AdvertSearchResultCollectionViewCell_advertsContentView;
    v25 = *(*&v7[OBJC_IVAR____TtC18ASMessagesProvider36AdvertSearchResultCollectionViewCell_advertsContentView] + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupView);
    v66 = a6;
    v26 = v81[0];
    v64 = *(v25 + OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_regularWidthColumnSpacing);
    [v7 layoutMargins];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    [v7 setUserInteractionEnabled:0];
    v35 = *&v7[v24];
    v68 = v11;
    [v35 frame];
    v40 = [objc_allocWithZone(type metadata accessor for AdvertsSearchResultContentView()) initWithFrame:{v36, v37, v38, v39}];
    v67 = v26;
    v41 = v64;
    v64 = *&v14;
    v42 = v71;
    v65 = v22;
    sub_3B9C04(v26, v71, v70, v79, v41, v28, v30, v32, v34);
    [v40 layoutIfNeeded];
    [*&v7[v24] frame];
    v81[0] = v43.n128_u64[0];
    v81[1] = v44;
    v81[2] = v45;
    v81[3] = v46;
    v82 = 0;
    sub_3BBFF4(v26, v81, v72, v42, v43);
    v47 = (*&v7[v24] + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_disableAdvertRotation);
    swift_beginAccess();
    v49 = *v47;
    v48 = v47[1];
    sub_F714(*v47, v48);
    sub_23481C(v49, v48);
    sub_F704(v49, v48);
    sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
    v72 = sub_769970();
    sub_7683D0();
    v50 = 333;
    if ((v66 & 1) == 0)
    {
      v50 = 0;
    }

    *v17 = v50;
    v51 = v64;
    (*(v15 + 104))(v17, enum case for DispatchTimeInterval.milliseconds(_:), COERCE_DOUBLE(*&v64));
    sub_768440();
    (*(v15 + 8))(v17, COERCE_DOUBLE(*&v51));
    v52 = *(v73 + 8);
    v53 = v74;
    v52(v19, v74);
    v54 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v55 = swift_allocObject();
    v55[2] = v54;
    v55[3] = v40;
    v55[4] = v79;
    aBlock[4] = sub_3BFB04;
    aBlock[5] = v55;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    aBlock[3] = &unk_88FCF0;
    v56 = _Block_copy(aBlock);
    v57 = v40;

    v58 = v75;
    sub_7683A0();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_3BFB7C(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_BD88(&qword_940350, &unk_77F850);
    sub_16194(&qword_9406F0, &qword_940350, &unk_77F850, &protocol conformance descriptor for [A]);
    v59 = v77;
    v60 = v69;
    sub_76A5A0();
    v61 = v65;
    v62 = v72;
    sub_769930();
    _Block_release(v56);

    (*(v68 + 8))(v59, v60);
    (*(v76 + 8))(v58, v78);
    return (v52)(v61, v53);
  }

  return result;
}

void sub_3BDFB8(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = objc_opt_self();
    v8 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider36AdvertSearchResultCollectionViewCell_advertsContentView];
    v9 = swift_allocObject();
    v9[2] = a3;
    v9[3] = v6;
    v9[4] = a2;
    aBlock[4] = sub_3BFB70;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_3D6D80;
    aBlock[3] = &unk_88FD40;
    v10 = _Block_copy(aBlock);
    v11 = v8;

    v12 = v6;
    v13 = a2;

    [v7 transitionFromView:v11 toView:v13 duration:5242880 options:v10 completion:0.666];
    _Block_release(v10);
  }
}

void sub_3BE128(uint64_t a1, uint64_t a2, char *a3, char *a4)
{
  sub_761120();
  sub_768900();
  sub_768ED0();
  v6 = OBJC_IVAR____TtC18ASMessagesProvider36AdvertSearchResultCollectionViewCell_advertsContentView;
  v7 = *&a3[OBJC_IVAR____TtC18ASMessagesProvider36AdvertSearchResultCollectionViewCell_advertsContentView];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_3BFB7C(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
  }

  sub_3BFB7C(&unk_9566C0, type metadata accessor for AdvertsSearchResultContentView, &unk_78D020);
  v9 = v7;
  sub_7610C0();

  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    sub_3BFB7C(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
  }

  sub_761100();

  v11 = *&a3[v6];
  *&a3[v6] = a4;
  v12 = a4;

  [a3 setUserInteractionEnabled:1];
}

uint64_t sub_3BE390(uint64_t a1, void *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for AdvertsSearchResultContentView();

  return sub_3BE438(a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_3BE438(uint64_t a1, void *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11)
{
  v150 = a11;
  v151 = a3;
  v183 = a2;
  v12 = sub_BD88(&unk_94DF00, &unk_792100);
  __chkstk_darwin(v12 - 8);
  v146 = &v145 - v13;
  v148 = sub_75C930();
  v155 = *(v148 - 8);
  __chkstk_darwin(v148);
  v15 = &v145 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v145 - v17;
  __chkstk_darwin(v19);
  v149 = &v145 - v20;
  v21 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v21 - 8);
  v156 = &v145 - v22;
  v23 = sub_76A920();
  v153 = *(v23 - 8);
  v154 = v23;
  __chkstk_darwin(v23);
  v152 = &v145 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_760770();
  v179 = *(v25 - 8);
  v180 = v25;
  __chkstk_darwin(v25);
  v27 = &v145 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_760840();
  v177 = *(v28 - 8);
  v178 = v28;
  __chkstk_darwin(v28);
  v176 = &v145 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_762D10();
  v173 = *(v30 - 8);
  v174 = v30;
  __chkstk_darwin(v30);
  v172 = &v145 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_75D850();
  v188 = *(v32 - 8);
  __chkstk_darwin(v32);
  v34 = &v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v186 = &v145 - v36;
  v189 = sub_760820();
  v187 = *(v189 - 1);
  __chkstk_darwin(v189);
  v175 = &v145 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v145 - v39;
  sub_769DA0();
  v42 = v41;
  v44 = v43;
  v45 = sub_764EF0();
  v162 = v46;
  v163 = v45;
  v47 = sub_764F70();
  v164 = v48;
  v165 = v47;
  if (sub_764E90() && (v49 = sub_75E5C0(), , v49))
  {
    v50 = sub_765720();
    v169 = v51;
    v170 = v50;
  }

  else
  {
    v169 = 0;
    v170 = 0;
  }

  sub_75BCD0();
  v52 = [v183 traitCollection];
  if (qword_93C3F8 != -1)
  {
    swift_once();
  }

  v53 = v189;
  v54 = sub_BE38(v189, qword_99B150);
  v166 = *(v187 + 16);
  v167 = v187 + 16;
  v166(v40, v54, v53);
  v55 = sub_769A00();
  v181 = v27;
  v182 = a1;
  v147 = v18;
  v145 = v15;
  if (v55)
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v56 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v56 = qword_946938;
  }

  v57 = sub_BE38(v32, v56);
  v58 = v188;
  (*(v188 + 16))(v34, v57, v32);
  (*(v58 + 32))();
  v59 = [v52 preferredContentSizeCategory];
  sub_769B20();
  v171 = v52;

  sub_75D800();
  sub_75D830();
  v185 = v40;
  sub_760810();
  sub_760800();
  v60 = sub_7670D0();
  swift_allocObject();
  v161 = sub_7670B0();
  v61 = objc_opt_self();
  v159 = v61;
  v62 = [v61 preferredFontForTextStyle:UIFontTextStyleBody];
  v63 = sub_7653B0();
  v226[3] = v63;
  v184 = sub_3BFB7C(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v226[4] = v184;
  v64 = sub_B1B4(v226);
  v65 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v66 = *(v63 - 8);
  v168 = v32;
  v160 = *(v66 + 104);
  v67 = v66 + 104;
  v157 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v160(v64, enum case for Feature.measurement_with_labelplaceholder(_:), v63);
  v158 = v67;
  sub_765C30();
  sub_BEB8(v226);
  v68 = v172;
  sub_762D00();
  sub_762CE0();
  v69 = v174;
  v173 = *(v173 + 8);
  (v173)(v68, v174);
  v70 = [v61 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v225[3] = v63;
  v225[4] = v184;
  v71 = sub_B1B4(v225);
  v72 = v65;
  v73 = v160;
  v160(v71, v72, v63);
  sub_765C30();
  sub_BEB8(v225);
  sub_762D00();
  sub_762CE0();
  v74 = v173;
  (v173)(v68, v69);
  v75 = [v159 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v224[3] = v63;
  v224[4] = v184;
  v76 = sub_B1B4(v224);
  v73(v76, v157, v63);
  sub_765C30();
  sub_BEB8(v224);
  sub_762D00();
  sub_762CE0();
  v74(v68, v69);
  sub_246DC();
  swift_allocObject();
  v77 = sub_7670B0();

  sub_246DC();
  swift_allocObject();
  v78 = sub_7670B0();
  v166(v175, v185, v189);
  v223 = &protocol witness table for LayoutViewPlaceholder;
  v222 = v60;
  v79 = v161;
  v221 = v161;
  v220 = 0;
  *&v218[40] = 0u;
  v219 = 0u;
  sub_134D8(v226, v218);
  sub_134D8(v225, &v217);
  v216 = 0;
  v214 = 0u;
  v215 = 0u;
  v213 = 0;
  v211 = 0u;
  v212 = 0u;

  v80 = sub_7670C0();
  v210 = &protocol witness table for LayoutViewPlaceholder;
  v209 = v60;
  v208 = v80;
  v207 = 0;
  v205 = 0u;
  v206 = 0u;
  v204 = 0;
  v202 = 0u;
  v203 = 0u;
  v201 = 0;
  v199 = 0u;
  v200 = 0u;
  v198 = 0;
  v197 = 0u;
  *&v196[40] = 0u;
  sub_134D8(v224, v196);
  v194 = v60;
  v195 = &protocol witness table for LayoutViewPlaceholder;
  v192 = &protocol witness table for LayoutViewPlaceholder;
  v193 = v77;
  v191 = v60;
  v190 = v78;
  v81 = v176;
  sub_760830();
  sub_7671D0();
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_77D9F0;
  v83 = v171;
  *(v82 + 32) = v171;
  v84 = v83;
  v85 = sub_7671E0();
  sub_3BFB7C(&qword_945FA0, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v86 = v178;
  sub_7665A0();

  (*(v177 + 8))(v81, v86);
  sub_BEB8(v224);
  sub_BEB8(v225);
  sub_BEB8(v226);
  (*(v188 + 8))(v186, v168);
  (*(v187 + 8))(v185, v189);
  v88 = v181;
  v87 = v182;
  sub_75BCC0();
  v89 = sub_760760();
  if ((v89 & 1) == 0 || (sub_65CB64(v89) & 1) == 0)
  {
    return (*(v179 + 8))(v88, v180);
  }

  if (qword_93DCE8 != -1)
  {
    swift_once();
  }

  v90 = sub_766CA0();
  sub_BE38(v90, qword_99FE00);
  v91 = v152;
  sub_766470();
  v92 = v183;
  sub_766700();
  (*(v153 + 8))(v91, v154);
  v93 = sub_75BCA0();
  v94 = sub_75BC80();
  v95 = sub_75BC70();
  if (v95 >> 62)
  {
    v97 = v95;
    v98 = sub_76A860();
    v95 = v97;
    if (v98)
    {
      goto LABEL_20;
    }

LABEL_26:

    v79 = 0;
    goto LABEL_27;
  }

  if (!*(&dword_10 + (v95 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_26;
  }

LABEL_20:
  if ((v95 & 0xC000000000000001) != 0)
  {
    v79 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v95 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_61;
    }

    v79 = *(v95 + 32);
  }

LABEL_27:
  v99 = sub_75BCF0();
  if (v99 >> 62)
  {
    v101 = v99;
    v102 = sub_76A860();
    v99 = v101;
    if (v102)
    {
      goto LABEL_29;
    }

LABEL_34:

    v189 = 0;
    goto LABEL_35;
  }

  if (!*(&dword_10 + (v99 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_34;
  }

LABEL_29:
  if ((v99 & 0xC000000000000001) != 0)
  {
    v100 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v99 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_63;
    }
  }

  v189 = v100;

LABEL_35:
  v103 = [v92 traitCollection];
  sub_3B9960(v156);

  v77 = sub_75BCA0();
  v78 = sub_75BC80();
  v104 = sub_75BC70();
  if (v104 >> 62)
  {
    v105 = v104;
    v106 = sub_76A860();
    v104 = v105;
    if (v106)
    {
LABEL_37:
      if ((v104 & 0xC000000000000001) == 0)
      {
        if (!*(&dword_10 + (v104 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_65;
        }

        v87 = *(v104 + 32);

        goto LABEL_40;
      }

LABEL_61:
      v87 = sub_76A770();
LABEL_40:

      goto LABEL_43;
    }
  }

  else if (*(&dword_10 + (v104 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_37;
  }

  v87 = 0;
LABEL_43:
  v107 = sub_75BCF0();
  if (v107 >> 62)
  {
    v110 = v107;
    v111 = sub_76A860();
    v107 = v110;
    v188 = v79;
    if (v111)
    {
LABEL_45:
      if ((v107 & 0xC000000000000001) == 0)
      {
        if (*(&dword_10 + (v107 & 0xFFFFFFFFFFFFFF8)))
        {
          v109 = *(v107 + 32);

LABEL_48:

          goto LABEL_51;
        }

LABEL_65:
        __break(1u);
LABEL_66:
        v185 = sub_76A860();
        if (v87)
        {
          goto LABEL_55;
        }

        goto LABEL_67;
      }

LABEL_63:
      v109 = sub_76A770();
      goto LABEL_48;
    }
  }

  else
  {
    v108 = *(&dword_10 + (v107 & 0xFFFFFFFFFFFFFF8));
    v188 = v79;
    if (v108)
    {
      goto LABEL_45;
    }
  }

  v109 = 0;
LABEL_51:
  v112 = sub_760760();
  v187 = v94;
  if ((v112 & 1) == 0)
  {

    v116 = v155;
    v118 = v148;
    v117 = v149;
    (*(v155 + 104))(v149, enum case for LockupMediaLayout.DisplayType.none(_:), v148);
LABEL_88:
    v141 = v189;
    type metadata accessor for LockupMediaView(0);
    v142 = v156;
    v143 = v92;
    v144 = v181;
    sub_161888(v93, v187, v188, v141, v156, v117, v143, v181, v42, v44);

    (*(v116 + 8))(v117, v118);
    sub_10A2C(v142, &unk_948720, &unk_784970);
    return (*(v179 + 8))(v144, v180);
  }

  if (v78 | v77)
  {
    v119 = v147;
    sub_7666A0();

    v116 = v155;
    v118 = v148;
    (*(v155 + 104))(v119, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v148);
    v117 = v149;
    (*(v116 + 32))(v149, v119, v118);
    goto LABEL_88;
  }

  v114 = sub_55BABC(v87, v109, 0, 1, v113);
  v78 = v114;
  v94 = v114 >> 62;
  if (v114 >> 62)
  {
    goto LABEL_66;
  }

  v185 = *(&dword_10 + (v114 & 0xFFFFFFFFFFFFFF8));
  if (v87)
  {
LABEL_55:
    v115 = sub_759690();
    goto LABEL_68;
  }

LABEL_67:
  v115 = 0;
LABEL_68:
  LODWORD(v182) = sub_55BE04(v115);

  v186 = v93;
  if (v87)
  {
    v120 = sub_759690();
  }

  else
  {
    v120 = 0;
  }

  v121 = v179;
  v122 = v146;
  v123 = v88;
  v124 = v180;
  (*(v179 + 16))(v146, v123, v180);
  v125.n128_f64[0] = (*(v121 + 56))(v122, 0, 1, v124);
  v126 = sub_55C32C(v120, v122, v125);

  sub_10A2C(v122, &unk_94DF00, &unk_792100);
  if (!v94)
  {
    result = *(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8));
    v93 = v186;
    if (result)
    {
      goto LABEL_73;
    }

LABEL_79:

    goto LABEL_80;
  }

  result = sub_76A860();
  v93 = v186;
  if (!result)
  {
    goto LABEL_79;
  }

LABEL_73:
  if ((v78 & 0xC000000000000001) != 0)
  {
    sub_76A770();
LABEL_76:

    v127 = sub_765150();

    if (v127)
    {

      v116 = v155;
      v128 = v147;
      v118 = v148;
      (*(v155 + 104))(v147, enum case for LockupMediaLayout.DisplayType.landscape(_:), v148);
      v117 = v149;
LABEL_87:
      (*(v116 + 32))(v117, v128, v118);
      goto LABEL_88;
    }

LABEL_80:
    v129 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v130 = v155;
    v131 = v145;
    v132 = v148;
    v184 = *(v155 + 104);
    v184(v145, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v148);
    v133 = sub_75C920();
    v178 = *(v130 + 8);
    v178(v131, v132);
    if (((v185 >= v133) & v126) != 0 || (v129 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), v184(v131, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v132), v134 = sub_75C920(), v135 = v178, v178(v131, v132), ((v185 >= v134) & v182) != 0) || (v129 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), v184(v131, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v132), v136 = sub_75C920(), v135(v131, v132), v185 >= v136))
    {

      v128 = v147;
      v184(v147, v129, v132);
      v92 = v183;
      v118 = v132;
    }

    else
    {
      v137 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
      v184(v131, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v132);
      v138 = sub_75C920();

      v135(v131, v132);
      v118 = v132;
      if (v185 == v138)
      {
        v128 = v147;
        v139 = v147;
        v140 = v137;
      }

      else
      {
        v140 = enum case for LockupMediaLayout.DisplayType.none(_:);
        v128 = v147;
        v139 = v147;
      }

      v184(v139, v140, v132);
      v92 = v183;
    }

    v116 = v155;
    v117 = v149;
    v93 = v186;
    goto LABEL_87;
  }

  if (*(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8)))
  {

    goto LABEL_76;
  }

  __break(1u);
  return result;
}

uint64_t sub_3BFA84()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3BFABC()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_3BFB10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_3BFB28()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_3BFB7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_3BFBDC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a13@<D6>, double a14@<D7>, double a15, double a16)
{
  v109 = a5;
  v110 = a4;
  v121 = a3;
  v122 = a2;
  v117 = a13;
  v118 = a14;
  v115 = a1;
  v116 = a6;
  v106 = sub_758720();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v104 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_7649E0();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_75ECD0();
  v103 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_767D60();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_75A430();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_BD88(&qword_940A68, &qword_79AB60);
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v98 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v97 = &v91 - v23;
  v24 = sub_764930();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_7656A0();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v114 = &v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v91 - v32;
  v34 = sub_BD88(&qword_9438F8, &unk_787C30);
  __chkstk_darwin(v34);
  v108 = &v91 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v91 - v37;
  sub_1ED18(v122, &v91 - v37, &qword_963790, qword_77EBC0);
  v107 = v34;
  v39 = *(v34 + 48);
  v122 = v38;
  sub_1ED18(v121, &v38[v39], &qword_963790, qword_77EBC0);
  swift_getKeyPath();
  sub_BD88(&unk_94F1F0, &qword_782290);
  sub_768750();

  v121 = v29;
  v40 = *(v29 + 104);
  v41 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v124)
  {
    v41 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v42 = *v41;
  v119 = v33;
  v120 = v28;
  v40(v33, v42, v28);
  swift_getKeyPath();
  sub_768750();

  v43 = v25;
  v44 = (*(v25 + 88))(v27, v24);
  if (v44 != enum case for Shelf.ContentType.productMediaItem(_:))
  {
    if (v44 == enum case for Shelf.ContentType.productReview(_:))
    {
      swift_getKeyPath();
      sub_768750();

      if (*(v123 + 16))
      {
        sub_134D8(v123 + 32, &v124);

        sub_BD88(&unk_944DA0, &unk_77EB70);
        sub_75A450();
        v57 = swift_dynamicCast();
        v53 = v119;
        if (v57)
        {
          v58 = v94;
          sub_75A440();
          v59 = v95;
          v60 = v96;
          v61 = (*(v95 + 88))(v58, v96);
          if (v61 == enum case for ProductReview.ReviewSource.editorsChoice(_:))
          {
            (*(v59 + 8))(v58, v60);
            v56 = v120;
            v55 = v121;
            (*(v121 + 16))(v114, v53, v120);
            if (qword_93CF58 != -1)
            {
              swift_once();
            }

            sub_765670();
          }

          else
          {
            v56 = v120;
            v55 = v121;
            v85 = v114;
            if (v61 != enum case for ProductReview.ReviewSource.reviewSummary(_:))
            {
              v87 = v91;
              sub_75B4A0();
              (*(v55 + 16))(v85, v53, v56);
              sub_435850(v87, 0);
              sub_765670();

              (*(v92 + 8))(v87, v93);
              (*(v55 + 8))(v53, v56);
              sub_10A2C(v122, &qword_9438F8, &unk_787C30);
              return (*(v59 + 8))(v58, v60);
            }

            (*(v59 + 8))(v58, v60);
            v86 = v91;
            sub_75B4A0();
            (*(v55 + 16))(v85, v53, v56);
            sub_435850(v86, 1);
            sub_765670();

            (*(v92 + 8))(v86, v93);
          }

          goto LABEL_36;
        }
      }

      else
      {

        v53 = v119;
      }

      v124 = v109;
      v77 = v122;
      v78 = v108;
      sub_1ED18(v122, v108, &qword_9438F8, &unk_787C30);
      v79 = *(v107 + 48);
      sub_B7A24();
      sub_75B530();
      (*(v121 + 8))(v53, v120);
      sub_10A2C(v77, &qword_9438F8, &unk_787C30);
      sub_10A2C(v78 + v79, &qword_963790, qword_77EBC0);
      v80 = v78;
      v81 = &qword_963790;
      v82 = qword_77EBC0;
      return sub_10A2C(v80, v81, v82);
    }

    if (v44 != enum case for Shelf.ContentType.productBadge(_:))
    {
      v124 = v109;
      v73 = v122;
      v74 = v108;
      sub_1ED18(v122, v108, &qword_9438F8, &unk_787C30);
      v75 = *(v107 + 48);
      sub_B7A24();
      sub_75B530();
      (*(v121 + 8))(v119, v120);
      sub_10A2C(v73, &qword_9438F8, &unk_787C30);
      sub_10A2C(v74 + v75, &qword_963790, qword_77EBC0);
      sub_10A2C(v74, &qword_963790, qword_77EBC0);
      return (*(v43 + 8))(v27, v24);
    }

    v65 = v97;
    sub_7655C0();
    v66 = v98;
    sub_7655C0();
    v63 = v120;
    v62 = v121;
    v64 = v119;
    (*(v121 + 16))(v114, v119, v120);
    sub_620A70(v65, v66);
    sub_765670();
    v67 = *(v99 + 8);
    v68 = v66;
    v69 = v100;
    v67(v68, v100);
    v67(v65, v69);
LABEL_22:
    (*(v62 + 8))(v64, v63);
LABEL_45:
    v81 = &qword_9438F8;
    v82 = &unk_787C30;
    v80 = v122;
    return sub_10A2C(v80, v81, v82);
  }

  swift_getKeyPath();
  v45 = v111;
  sub_768750();

  v46 = v112;
  v47 = v113;
  if ((*(v112 + 88))(v45, v113) != enum case for Shelf.ContentsMetadata.productMedia(_:))
  {
    (*(v46 + 8))(v45, v47);
    v63 = v120;
    v62 = v121;
    v64 = v119;
    (*(v121 + 16))(v114, v119, v120);
    if (qword_93C6E0 != -1)
    {
      swift_once();
    }

    sub_765670();
    goto LABEL_22;
  }

  (*(v46 + 96))(v45, v47);
  v48 = v103;
  v49 = v101;
  v50 = v102;
  (*(v103 + 32))(v101, v45, v102);
  sub_75ECC0();
  v51 = v104;
  sub_75A300();

  v52 = (*(v105 + 88))(v51, v106);
  v53 = v119;
  v54 = v114;
  if (v52 == enum case for AppPlatform.phone(_:))
  {
    goto LABEL_6;
  }

  if (v52 == enum case for AppPlatform.pad(_:))
  {
    v70 = sub_75EC60();
    v72 = v120;
    v71 = v121;
    (*(v121 + 16))(v54, v53, v120);
    if (v70)
    {
      if (qword_93C230 == -1)
      {
        goto LABEL_38;
      }
    }

    else if (qword_93C6E0 == -1)
    {
LABEL_38:

      sub_765670();
      (*(v48 + 8))(v49, v50);
      (*(v71 + 8))(v53, v72);
      goto LABEL_45;
    }

    swift_once();
    goto LABEL_38;
  }

  if (v52 == enum case for AppPlatform.messages(_:))
  {
LABEL_6:
    if (sub_75EC60())
    {
      v56 = v120;
      v55 = v121;
      (*(v121 + 16))(v54, v53, v120);
      if (qword_93D3B8 != -1)
      {
        swift_once();
      }

      sub_765670();
      (*(v48 + 8))(v49, v50);
LABEL_36:
      (*(v55 + 8))(v53, v56);
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (v52 == enum case for AppPlatform.watch(_:))
  {
    v84 = v120;
    v83 = v121;
    (*(v121 + 16))(v114, v119, v120);
    if (qword_93CA40 == -1)
    {
      goto LABEL_44;
    }

    goto LABEL_48;
  }

  if (v52 == enum case for AppPlatform.tv(_:) || v52 == enum case for AppPlatform.mac(_:) || v52 == enum case for AppPlatform.vision(_:))
  {
LABEL_43:
    v84 = v120;
    v83 = v121;
    (*(v121 + 16))(v54, v53, v120);
    if (qword_93C6E0 == -1)
    {
LABEL_44:

      sub_765670();
      (*(v48 + 8))(v49, v50);
      (*(v83 + 8))(v53, v84);
      goto LABEL_45;
    }

LABEL_48:
    swift_once();
    goto LABEL_44;
  }

  v124 = v109;
  v88 = v122;
  v89 = v108;
  sub_1ED18(v122, v108, &qword_9438F8, &unk_787C30);
  v90 = *(v107 + 48);
  sub_B7A24();
  sub_75B530();
  (*(v48 + 8))(v49, v50);
  (*(v121 + 8))(v53, v120);
  sub_10A2C(v88, &qword_9438F8, &unk_787C30);
  sub_10A2C(v89 + v90, &qword_963790, qword_77EBC0);
  sub_10A2C(v89, &qword_963790, qword_77EBC0);
  return (*(v105 + 8))(v104, v106);
}

uint64_t sub_3C11E4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a14@<D6>, double a15@<D7>, double a16, double a17)
{
  v32 = a6;
  v33 = a3;
  v34 = a5;
  v35 = a7;
  v38 = a4;
  v36 = a14;
  v37 = a15;
  v18 = sub_764930();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_BD88(&qword_9438F8, &unk_787C30);
  __chkstk_darwin(v22);
  v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v31 - v26;
  sub_1ED18(a2, &v31 - v26, &qword_963790, qword_77EBC0);
  sub_1ED18(v33, &v27[*(v22 + 48)], &qword_963790, qword_77EBC0);
  swift_getKeyPath();
  sub_BD88(&unk_94F1F0, &qword_782290);
  sub_768750();

  v33 = v19;
  if ((*(v19 + 88))(v21, v18) == enum case for Shelf.ContentType.productBadge(_:))
  {
    v39 = v34;
    v40 = v32;
    sub_1ED18(v27, v24, &qword_9438F8, &unk_787C30);
    v28 = *(v22 + 48);
    sub_3C17F4();
    sub_75B530();
    sub_10A2C(v27, &qword_9438F8, &unk_787C30);
    sub_10A2C(&v24[v28], &qword_963790, qword_77EBC0);
    return sub_10A2C(v24, &qword_963790, qword_77EBC0);
  }

  else
  {
    v39 = v34;
    sub_1ED18(v27, v24, &qword_9438F8, &unk_787C30);
    v30 = *(v22 + 48);
    sub_B7A24();
    sub_75B520();
    sub_10A2C(v27, &qword_9438F8, &unk_787C30);
    sub_10A2C(&v24[v30], &qword_963790, qword_77EBC0);
    sub_10A2C(v24, &qword_963790, qword_77EBC0);
    return (*(v33 + 8))(v21, v18);
  }
}

uint64_t sub_3C15C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_3C17F4();

  return sub_75B530();
}

uint64_t sub_3C16A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_3C17F4();

  return sub_75B520();
}

uint64_t sub_3C1788(uint64_t a1, uint64_t a2)
{
  v4 = sub_3C1858();

  return PageGridCaching<>.invalidateCache()(a1, v4, a2);
}

unint64_t sub_3C17F4()
{
  result = qword_952558;
  if (!qword_952558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_952558);
  }

  return result;
}

unint64_t sub_3C1858()
{
  result = qword_952560;
  if (!qword_952560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_952560);
  }

  return result;
}

uint64_t sub_3C1984@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_BD88(&qword_9464F8, &qword_786F30);
  __chkstk_darwin(v3);
  v4 = sub_BD88(&qword_9525C8, &unk_79AC90);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider32CarouselItemLockupCollectionView____lazy_storage___artworkViewPool;
  swift_beginAccess();
  sub_3C2D0C(v1 + v10, v9);
  v11 = sub_BD88(&qword_94F910, "$&\a");
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_3C2D7C(v9);
  sub_759210();
  sub_7667C0();
  sub_31D0F0();
  sub_767480();
  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  sub_3C2C9C(v6, v1 + v10);
  return swift_endAccess();
}

unint64_t sub_3C1BDC()
{
  v1 = v0;
  v2 = sub_BD88(&qword_9525C8, &unk_79AC90);
  __chkstk_darwin(v2 - 8);
  v4 = v23 - v3;
  v5 = sub_BD88(&qword_94F910, "$&\a");
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v23 - v7;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider32CarouselItemLockupCollectionView_artworkViews;
  v24 = OBJC_IVAR____TtC18ASMessagesProvider32CarouselItemLockupCollectionView_numberOfArtworks;
  v10 = OBJC_IVAR____TtC18ASMessagesProvider32CarouselItemLockupCollectionView____lazy_storage___artworkViewPool;
  swift_beginAccess();
  v11 = (v6 + 32);
  v12 = (v6 + 56);
  while (1)
  {
    v13 = *&v1[v9];
    result = v13 >> 62 ? sub_76A860() : *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
    v15 = *&v1[v24];
    if (result == v15)
    {
      return result;
    }

    v16 = *&v1[v9];
    if (!(v16 >> 62))
    {
      if (*(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)) < v15)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    if (sub_76A860() < *&v1[v24])
    {
LABEL_8:
      sub_3C1984(v8);
      sub_767450();
      (*v11)(v4, v8, v5);
      (*v12)(v4, 0, 1, v5);
      swift_beginAccess();
      sub_3C2C9C(v4, &v1[v10]);
      swift_endAccess();
      v17 = v25;
      swift_beginAccess();
      v18 = v17;
      sub_769440();
      if (*(&dword_10 + (*&v1[v9] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v1[v9] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v23[1] = *(&dword_10 + (*&v1[v9] & 0xFFFFFFFFFFFFFF8));
        sub_7694C0();
      }

      sub_769500();
      swift_endAccess();
      [v1 addSubview:v18];
    }

    else
    {
LABEL_13:
      swift_beginAccess();
      v19 = *&v1[v9];
      if (v19 >> 62)
      {
        if (sub_76A860())
        {
          goto LABEL_15;
        }

LABEL_2:
        swift_endAccess();
      }

      else
      {
        if (!*(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_2;
        }

LABEL_15:
        result = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *&v1[v9] = v19;
        if (v19 >> 62 || (result & 1) == 0)
        {
          result = sub_45EDF0();
          v19 = result;
        }

        v20 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
        if (!v20)
        {
          __break(1u);
          return result;
        }

        v21 = v20 - 1;
        v22 = *(&stru_20.cmd + 8 * v21 + (v19 & 0xFFFFFFFFFFFFFF8));
        *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)) = v21;
        *&v1[v9] = v19;
        swift_endAccess();
        v25 = v22;
        sub_3C1984(v8);
        sub_767470();
        (*v11)(v4, v8, v5);
        (*v12)(v4, 0, 1, v5);
        swift_beginAccess();
        sub_3C2C9C(v4, &v1[v10]);
        swift_endAccess();
      }
    }
  }
}

uint64_t sub_3C1FEC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_766BD0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_766BA0();
  v9 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider32CarouselItemLockupCollectionView_numberOfArtworks);
  if (v9 < 2)
  {
    a1[3] = v5;
    a1[4] = &protocol witness table for HorizontalStack;
    v10 = sub_B1B4(a1);
    (*(v6 + 16))(v10, v8, v5);
    return (*(v6 + 8))(v8, v5);
  }

  v11 = OBJC_IVAR____TtC18ASMessagesProvider32CarouselItemLockupCollectionView_artworkViews;
  swift_beginAccess();
  v12 = *(v2 + v11);
  v13 = v12 >> 62;
  if (v12 >> 62)
  {
    goto LABEL_30;
  }

  result = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
  if (result >= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
  }

  if (result < v15)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return result;
  }

  while (1)
  {
    if ((v12 & 0xC000000000000001) == 0 || v15 == 0)
    {
      swift_bridgeObjectRetain_n();
    }

    else
    {
      sub_759210();
      swift_bridgeObjectRetain_n();
      v17 = 0;
      do
      {
        v18 = v17 + 1;
        sub_76A750(v17);
        v17 = v18;
      }

      while (v15 != v18);
    }

    if (v13)
    {
      break;
    }

    v33 = v12 & 0xFFFFFFFFFFFFFF8;
    v19 = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
    v21 = v15;
    v20 = v15 <= 0;
    if (!v15)
    {
      goto LABEL_26;
    }

LABEL_19:
    v12 = 0;
    if (v20)
    {
      v27 = v13;
    }

    else
    {
      v27 = v15;
    }

    v9 = v27 - v13;
    v13 = v19 + 8 * v13;
    while (v9 != v12)
    {
      if (__OFADD__(v12, 1))
      {
        goto LABEL_29;
      }

      v28 = *(v13 + 8 * v12);
      sub_3C242C(v12, v28, v8, ObjectType);

      if (v21 == ++v12)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v30 = sub_76A860();
    result = sub_76A860();
    if (result < 0)
    {
      goto LABEL_39;
    }

    if (v30 >= v9)
    {
      v31 = v9;
    }

    else
    {
      v31 = v30;
    }

    if (v30 >= 0)
    {
      v15 = v31;
    }

    else
    {
      v15 = v9;
    }

    result = sub_76A860();
    if (result < v15)
    {
      goto LABEL_38;
    }
  }

  v33 = sub_76A870();
  v23 = v22;
  v13 = v24;
  v26 = v25;

  v19 = v23;
  v15 = v26 >> 1;
  v21 = v15 - v13;
  v20 = v15 <= v13;
  if (v15 != v13)
  {
    goto LABEL_19;
  }

LABEL_26:
  swift_unknownObjectRelease();
  v34[3] = v5;
  v34[4] = &protocol witness table for HorizontalStack;
  v29 = sub_B1B4(v34);
  (*(v6 + 16))(v29, v8, v5);
  a1[3] = sub_767340();
  a1[4] = &protocol witness table for Margins;
  sub_B1B4(a1);
  sub_767330();
  return (*(v6 + 8))(v8, v5);
}