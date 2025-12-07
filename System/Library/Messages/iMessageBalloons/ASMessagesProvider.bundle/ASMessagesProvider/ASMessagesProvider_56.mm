void sub_64BA58(void *a1)
{
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_disableDismissGestures])
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v52 = Strong;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_isScrollDismissActive;
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_isScrollDismissActive] != 1)
  {
    if ([a1 state] != &dword_0 + 1 && objc_msgSend(a1, "state") != &dword_0 + 2)
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

    if (v18 == &dword_0 + 1)
    {
      sub_BD88(&unk_93F5C0, &unk_77C600);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_77B6C0;
      v20 = [v1 presentedViewController];
      v21 = [v20 view];

      if (v21)
      {
        v22 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_shadowView];
        *(v19 + 32) = v21;
        *(v19 + 40) = v22;
        v23 = v22;
        v24 = sub_649F08();
        if (v24 >> 62)
        {
          sub_2630C();
          v25 = sub_76A850();
        }

        else
        {

          sub_76A960();
          sub_2630C();
          v25 = v24;
        }

        v26 = [v1 traitCollection];
        *(&v54 + 1) = &type metadata for ScaleDownInteractiveDismissal;
        v55 = &off_894678;
        v27 = swift_allocObject();
        *&v53 = v27;
        *(v27 + 16) = v19;
        *(v27 + 24) = v25;
        *(v27 + 32) = v26;
        *(v27 + 40) = 1;
        *(v27 + 48) = 0x3FEA3D70A3D70A3DLL;
        v28 = OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_interactiveDismissal;
        swift_beginAccess();
        v29 = &v1[v28];
LABEL_43:
        sub_48D354(&v53, v29);
        swift_endAccess();
        v45 = swift_unknownObjectWeakLoadStrong();
        if (v45)
        {
          v46 = v45;
          [v45 setShowsVerticalScrollIndicator:0];
        }

        [a1 translationInView:0];
        v48 = v47;

        *&v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_scrollDismissInitialTranslationY] = v48;
        v1[v4] = 1;
        return;
      }

      __break(1u);
    }

    else
    {
      sub_BD88(&unk_93F5C0, &unk_77C600);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_77B6C0;
      v37 = [v1 presentedViewController];
      v38 = [v37 view];

      if (v38)
      {
        v39 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_shadowView];
        *(v36 + 32) = v38;
        *(v36 + 40) = v39;
        v40 = v39;
        v41 = v1;
        v42 = sub_649F08();
        if (v42 >> 62)
        {
          sub_2630C();
          v43 = sub_76A850();
        }

        else
        {

          sub_76A960();
          sub_2630C();
          v43 = v42;
        }

        *(&v54 + 1) = &type metadata for PullDownInteractiveDismissal;
        v55 = &off_8946A0;
        *&v53 = v36;
        *(&v53 + 1) = v43;
        *&v54 = 0x3FB1EB851EB851ECLL;
        v44 = OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_interactiveDismissal;
        v1 = v41;
        swift_beginAccess();
        v29 = &v41[v44];
        goto LABEL_43;
      }
    }

    __break(1u);
    return;
  }

  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_presentedContainerView] frame];
  v5 = CGRectGetHeight(v57) * 0.18;
  [a1 translationInView:0];
  v7 = v6 - *&v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_scrollDismissInitialTranslationY];
  if (v7 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6 - *&v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_scrollDismissInitialTranslationY];
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
      if (v12 != &dword_0 + 3)
      {
        goto LABEL_36;
      }

      if (v11 == 1.0)
      {
LABEL_35:
        v35 = [v1 presentedViewController];
        [v35 dismissViewControllerAnimated:1 completion:0];

        v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_dismissCompleted] = 1;
        return;
      }
    }
  }

  else if (v12)
  {
    if (v12 == &dword_0 + 2)
    {
      if (v11 == 1.0)
      {
        goto LABEL_35;
      }

      v49 = &v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_interactiveDismissal];
      swift_beginAccess();
      if (*(v49 + 24))
      {
        sub_134D8(v49, &v53);
        v50 = *(&v54 + 1);
        v51 = v55;
        sub_B170(&v53, *(&v54 + 1));
        (v51[2])(v50, v51, v11);

        sub_BEB8(&v53);
        return;
      }

LABEL_38:

      return;
    }

LABEL_36:

    goto LABEL_38;
  }

  if (v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_dismissCompleted])
  {
    goto LABEL_36;
  }

  v30 = &v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_interactiveDismissal];
  swift_beginAccess();
  if (*(v30 + 24))
  {
    sub_134D8(v30, &v53);
    v31 = *(&v54 + 1);
    v32 = v55;
    sub_B170(&v53, *(&v54 + 1));
    (v32[4])(v31, v32);
    sub_BEB8(&v53);
  }

  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  swift_beginAccess();
  sub_48D354(&v53, v30);
  swift_endAccess();
  v33 = swift_unknownObjectWeakLoadStrong();
  if (v33)
  {
    v34 = v33;
    [v33 setShowsVerticalScrollIndicator:1];
  }

  v1[v4] = 0;
}

void sub_64C2B8(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_disableDismissGestures);
    v4[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_disableDismissGestures] = v2;
    sub_6497B4(v5);
  }
}

uint64_t sub_64C448()
{

  return _swift_deallocObject(v0, 56, 7);
}

double sub_64C498(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_64C4B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_64C528()
{
  v1 = [v0 traitCollection];
  if ([v1 userInterfaceIdiom] == &dword_0 + 1)
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

void sub_64C608(SEL *a1, SEL *a2)
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

uint64_t sub_64C74C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_64C7A8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_64C7FC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_64C834()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_64C8BC()
{
  sub_BD88(&unk_95D700, qword_7A95B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_780120;
  *(inited + 32) = UIActivityTypeAirDrop;
  *(inited + 40) = UIActivityTypeCopyToPasteboard;
  *(inited + 48) = UIActivityTypeMessage;
  *(inited + 56) = UIActivityTypePostToFacebook;
  *(inited + 64) = UIActivityTypePostToTwitter;
  *(inited + 72) = UIActivityTypePostToWeibo;
  v1 = UIActivityTypeAirDrop;
  v2 = UIActivityTypeCopyToPasteboard;
  v3 = UIActivityTypeMessage;
  v4 = UIActivityTypePostToFacebook;
  v5 = UIActivityTypePostToTwitter;
  v6 = UIActivityTypePostToWeibo;
  sub_1A210C(inited);
  v8 = v7;
  swift_setDeallocating();
  type metadata accessor for ActivityType(0);
  result = swift_arrayDestroy();
  qword_95FC10 = v8;
  return result;
}

double sub_64C9CC@<D0>(void *a1@<X1>, _OWORD *a2@<X8>)
{
  if (a1 && (v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider27ArtworkActivityItemProvider_excludedActivityTypes), v5 = a1, LOBYTE(v4) = sub_6672F8(v5, v4), v5, (v4 & 1) != 0) || (, sub_BD88(&qword_95FC70, &qword_7AB530), sub_764050(), , !v7))
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  else
  {
    v9 = sub_BE70(0, &qword_947630, UIImage_ptr);
    *&v8 = v7;
    sub_13310(&v8, a2);
  }

  return result;
}

id sub_64CABC@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_64CC98(void *a1@<X8>)
{
  v4 = sub_7683E0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v23 - v10;
  v12 = [v2 activityType];
  if (!v12)
  {
    goto LABEL_4;
  }

  v13 = v12;
  if (sub_6672F8(v12, *&v2[OBJC_IVAR____TtC18ASMessagesProvider27ArtworkActivityItemProvider_excludedActivityTypes]))
  {

LABEL_4:
    v14 = [objc_allocWithZone(UIImage) init];
    a1[3] = sub_BE70(0, &qword_947630, UIImage_ptr);
    *a1 = v14;
    return;
  }

  v15 = dispatch_semaphore_create(0);
  v23 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider27ArtworkActivityItemProvider_artworkLoader];
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v24 = a1;
  *(v17 + 16) = v15;
  *(v17 + 24) = v16;
  v18 = v15;

  sub_75A040();

  sub_160090(v25);

  sub_7683D0();
  sub_768450();
  v19 = *(v5 + 8);
  v19(v7, v4);
  sub_769B00();
  v19(v11, v4);
  v20 = v24;

  sub_BD88(&qword_95FC70, &qword_7AB530);
  sub_764050();

  v21 = *&v25[0];
  v20[3] = sub_BE70(0, &qword_947630, UIImage_ptr);
  if (v21)
  {

    *v20 = v21;
  }

  else
  {
    v22 = [objc_allocWithZone(UIImage) init];

    *v20 = v22;
  }
}

void sub_64CFC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a5;
  v7 = sub_7652D0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v38 - v12;
  v14 = sub_766690();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v19 = Strong;
  if (!a1)
  {

LABEL_9:
    sub_769B10();
    return;
  }

  v40 = OBJC_IVAR____TtC18ASMessagesProvider27ArtworkActivityItemProvider_artworkConfig;
  v39 = a1;

  sub_75DEF0();
  v21 = v20;
  v23 = v22;

  v41 = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, v21, v23}];
  [v41 setOpaque:0];
  sub_7666A0();
  v24 = sub_766680();
  (*(v15 + 8))(v17, v14);
  if (v24)
  {
    if (v19[OBJC_IVAR____TtC18ASMessagesProvider27ArtworkActivityItemProvider_enablePrerenderedIconArtwork])
    {
      v25 = &enum case for Artwork.Style.roundedRectPrerendered(_:);
    }

    else
    {
      v25 = &enum case for Artwork.Style.roundedRect(_:);
    }

    (*(v8 + 104))(v13, *v25, v7);
  }

  else
  {
    (*(v8 + 104))(v10, enum case for Artwork.Style.unadorned(_:), v7);
  }

  v26 = v41;
  sub_7591B0();
  v27 = v39;
  sub_759190();
  sub_BE70(0, &qword_95FC78, UIGraphicsImageRendererFormat_ptr);
  v28 = [swift_getObjCClassFromMetadata() defaultFormat];
  sub_75DF00();
  [v28 setScale:?];
  [v28 setOpaque:0];
  [v27 size];
  v31 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v28 format:{v29, v30}];
  v32 = swift_allocObject();
  *(v32 + 16) = v26;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_64D6D4;
  *(v33 + 24) = v32;
  aBlock[4] = sub_64D734;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_523AE0;
  aBlock[3] = &unk_89B7B0;
  v34 = _Block_copy(aBlock);
  v35 = v26;

  v36 = [v31 imageWithActions:v34];
  _Block_release(v34);
  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  if (v34)
  {
    __break(1u);
  }

  else
  {
    __chkstk_darwin(v37);
    *(&v38 - 2) = v36;

    sub_764070();

    sub_769B10();
  }
}

id sub_64D548()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkActivityItemProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_64D61C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_64D654()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_64D69C()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_64D6D4()
{
  v1 = *(v0 + 16);
  [v1 bounds];

  return [v1 drawViewHierarchyInRect:1 afterScreenUpdates:?];
}

double sub_64D73C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_64D754(id *a1)
{
  v4 = *(v1 + 16);

  *a1 = v4;

  return v4;
}

uint64_t sub_64D7B8(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (qword_93C7E8 != -1)
  {
    swift_once();
  }

  swift_getObjectType();
  v10 = sub_7422BC(&xmmword_99BD40, a7, a1, a2);
  v11 = [objc_opt_self() absoluteDimension:v10];
  v12 = sub_75F970();

  return v12;
}

uint64_t sub_64D91C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_64D964()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider39LargeGameCenterPlayerCollectionViewCell_artworkView);
  v11.value.super.isa = 0;
  v11.is_nil = 0;
  sub_7591D0(v11, v3);

  v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider39LargeGameCenterPlayerCollectionViewCell_displayName);
  sub_75BB50();
  if (v5)
  {
    v6 = sub_769210();
  }

  else
  {
    v6 = 0;
  }

  [v4 setText:v6];

  v7 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider39LargeGameCenterPlayerCollectionViewCell_alias);
  sub_75BB60();
  if (v8)
  {
    v9 = sub_769210();
  }

  else
  {
    v9 = 0;
  }

  [v7 setText:v9];
}

double sub_64DA74(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v111 = a2;
  v7 = sub_768940();
  v122 = *(v7 - 8);
  v123 = v7;
  __chkstk_darwin(v7);
  v121 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v9 - 8);
  v120 = &v106 - v10;
  v11 = sub_BD88(&unk_9457D0, &unk_785630);
  __chkstk_darwin(v11 - 8);
  v116 = &v106 - v12;
  v13 = sub_BD88(&unk_944DF0, &unk_783130);
  __chkstk_darwin(v13 - 8);
  v115 = &v106 - v14;
  v114 = sub_7623A0();
  v112 = *(v114 - 8);
  __chkstk_darwin(v114);
  v113 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_BD88(&unk_94AC40, qword_78D7F0);
  __chkstk_darwin(v16 - 8);
  v119 = &v106 - v17;
  v18 = sub_BD88(&unk_9457E0, &qword_785640);
  __chkstk_darwin(v18 - 8);
  v110 = &v106 - v19;
  v20 = sub_BD88(&unk_94A780, &unk_788DC0);
  __chkstk_darwin(v20 - 8);
  v109 = &v106 - v21;
  v22 = sub_BD88(&unk_944E00, &unk_784910);
  __chkstk_darwin(v22 - 8);
  v108 = &v106 - v23;
  v24 = sub_763750();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v107 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_BD88(&unk_948730, &qword_788DD0);
  __chkstk_darwin(v27 - 8);
  v126 = &v106 - v28;
  v29 = sub_758660();
  v30 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_formattedDateView];
  [v3 setNeedsLayout];
  v31 = sub_7586B0();
  sub_6D4A48(v31, v32);
  v33 = sub_7586C0();
  sub_6D4A54(v33, v34);
  v35 = sub_7586D0();
  sub_6D4A60(v35, v36);
  v37 = sub_758640();
  sub_6D4A6C(v37, v38);
  type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
  v124 = a3;
  sub_7688F0();
  v39 = v128;
  v40 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
  v41 = *(v30 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator);
  v42 = v41;
  sub_26CAC0(v39);
  v43 = *(v30 + v40);
  *(v30 + v40) = v39;
  v44 = v39;

  sub_26CC24(v41);
  sub_7586E0();
  v45 = sub_764F20();

  sub_6D4F1C(v45, v46);
  v117 = v4;
  v118 = a1;
  v47 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupView];
  v125 = sub_7586E0();
  v48 = *(v25 + 104);
  v48(v107, enum case for OfferButtonPresenterViewAlignment.right(_:), v24);
  v49 = v108;
  v48(v108, enum case for OfferButtonPresenterViewAlignment.left(_:), v24);
  (*(v25 + 56))(v49, 0, 1, v24);
  sub_64EEB8(&unk_944E10, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
  v50 = v126;
  sub_760940();
  v51 = sub_BD88(&unk_948740, &unk_784920);
  (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
  if (v111)
  {
    v52 = enum case for OfferStyle.infer(_:);
    v53 = sub_758C70();
    v54 = *(v53 - 8);
    v55 = v109;
    (*(v54 + 104))(v109, v52, v53);
    (*(v54 + 56))(v55, 0, 1, v53);
    v56 = enum case for OfferEnvironment.light(_:);
    v57 = sub_75BD30();
    v58 = *(v57 - 8);
    v59 = v110;
    (*(v58 + 104))(v110, v56, v57);
    (*(v58 + 56))(v59, 0, 1, v57);
  }

  else
  {
    v60 = sub_758C70();
    v55 = v109;
    (*(*(v60 - 8) + 56))(v109, 1, 1, v60);
    v61 = sub_75BD30();
    v59 = v110;
    (*(*(v61 - 8) + 56))(v110, 1, 1, v61);
  }

  v62 = v112;
  v63 = v114;
  (*(v112 + 104))(v113, enum case for OfferButtonSubtitlePosition.below(_:), v114);
  (*(v62 + 56))(v115, 1, 1, v63);
  sub_64EEB8(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
  v64 = v119;
  sub_760940();
  v65 = sub_BD88(&unk_9457F0, qword_783FD0);
  (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
  v66 = sub_765870();
  v67 = v116;
  (*(*(v66 - 8) + 56))(v116, 1, 1, v66);
  v68 = v124;
  sub_4A18A4(v125, v47, v126, v124, 0, 0, v55, v59, v67, v64);
  sub_10A2C(v67, &unk_9457D0, &unk_785630);
  v47[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 1;
  sub_1FD89C();
  [v47 setNeedsLayout];
  v69 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel;
  v70 = *&v47[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel];
  v71 = v120;
  if (v70)
  {
    [v70 setHidden:1];
    v72 = *&v47[v69];
    if (v72)
    {
      [v72 setText:0];
    }
  }

  v73 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel;
  v74 = *&v47[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel];
  if (v74)
  {
    if (([v74 isHidden] & 1) == 0)
    {
      v75 = *&v47[v73];
      if (v75)
      {
        if ([v75 hasContent])
        {
          v76 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel;
          [*&v47[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel] setHidden:1];
          [*&v47[v76] setText:0];
        }
      }
    }
  }

  v77 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel;
  if ([*&v47[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel] isHidden] & 1) == 0 && (objc_msgSend(*&v47[v77], "hasContent"))
  {
    v78 = *&v47[v73];
    if (v78)
    {
      [v78 setHidden:1];
      v79 = *&v47[v73];
      if (v79)
      {
        [v79 setText:0];
      }
    }

    v80 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel;
    [*&v47[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel] setHidden:1];
    [*&v47[v80] setText:0];
  }

  sub_10A2C(v64, &unk_94AC40, qword_78D7F0);
  sub_10A2C(v59, &unk_9457E0, &qword_785640);
  sub_10A2C(v55, &unk_94A780, &unk_788DC0);
  sub_10A2C(v126, &unk_948730, &qword_788DD0);
  v81 = *&v47[v73];
  if (v81)
  {
    v82 = qword_93D588;
    v83 = v81;
    if (v82 != -1)
    {
      swift_once();
    }

    v84 = sub_7666D0();
    v85 = sub_BE38(v84, qword_99E8A8);
    v86 = *(v84 - 8);
    (*(v86 + 16))(v71, v85, v84);
    (*(v86 + 56))(v71, 0, 1, v84);
    sub_75BA40();
  }

  v87 = *&v47[v69];
  if (v87)
  {
    v88 = qword_93D5A0;
    v89 = v87;
    if (v88 != -1)
    {
      swift_once();
    }

    v90 = sub_7666D0();
    v91 = sub_BE38(v90, qword_99E8F0);
    v92 = *(v90 - 8);
    (*(v92 + 16))(v71, v91, v90);
    (*(v92 + 56))(v71, 0, 1, v90);
    sub_75BA40();
  }

  sub_761060();
  sub_768900();
  sub_768ED0();
  v93 = v128;

  v94 = sub_758680();
  type metadata accessor for NotifyMeButtonPresenter(0);
  v95 = swift_allocObject();
  v96 = v95 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_view;
  *(v95 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v95 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_displayTimeReachedTimer) = 0;
  *(v95 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  swift_beginAccess();
  *(v96 + 8) = &off_89D708;
  swift_unknownObjectWeakAssign();
  *(v95 + 16) = v93;
  *(v95 + 24) = v94;

  v97 = v121;
  v98 = v123;
  sub_768ED0();
  (*(v122 + 32))(v95 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_metricsPipeline, v97, v98);
  *(v95 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_objectGraph) = v68;
  sub_75A920();

  v99 = sub_768ED0();
  *(v95 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_bag) = v127;
  sub_E929C(v99, v100);
  sub_E9C30(v101, v102);
  v103 = [objc_opt_self() defaultCenter];

  v104 = sub_760FD0();
  [v103 addObserver:v95 selector:"userNotificationsDidChangeNotification:" name:v104 object:0];

  sub_6D5058(v95);

  return result;
}

uint64_t sub_64E9AC(uint64_t a1, uint64_t a2)
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

void sub_64EAF0(uint64_t a1, uint64_t a2)
{
  v5 = sub_7652D0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_765240();
  v22 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75CF00();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && a2)
  {
    v13 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupView);
    v14 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
    swift_beginAccess();
    (*(v10 + 16))(v12, v13 + v14, v9);
    v21[1] = a2;

    sub_75CDD0();
    (*(v10 + 8))(v12, v9);
    sub_765250();
    sub_765210();
    v22 = *(v22 + 8);
    (v22)(v8, v6);
    sub_765330();
    v15 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
    v16 = *(v13 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
    sub_7652E0();
    sub_7591B0();
    [v16 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_396E8();
      sub_76A030();
    }

    sub_759070();

    v17 = *(v13 + v15);
    sub_765250();
    v18 = sub_765210();
    (v22)(v8, v6);
    [v17 setContentMode:v18];

    v19 = *(v13 + v15);
    sub_759210();
    sub_64EEB8(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v20 = v19;
    sub_75A050();
  }
}

uint64_t sub_64EEB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_64EF00@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_75D3C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_75C7B0();

  v6 = v11[1];
  v7 = sub_7699E0();

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
    sub_75D3D0();
    v8 = 0;
  }

  v9 = sub_75D400();
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

double sub_64F0D8()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_764D70();
  sub_64F344(&qword_95FCD0, &type metadata accessor for Banner, &protocol conformance descriptor for Banner);
  sub_75C750();
  v4 = v17;
  if (!v17)
  {
    return 0.0;
  }

  if (sub_764D20())
  {

    v5 = 15.0;
  }

  else
  {
    v5 = 22.0;
  }

  sub_764D10();
  sub_BD88(&unk_954000, qword_786BA0);
  v7 = sub_769490();

  v8 = 15.0;
  if ((v7 & 1) == 0)
  {
    v8 = v5;
  }

  v9 = 9.0;
  if (v7)
  {
    v9 = 12.0;
  }

  *&v17 = v9;
  *(&v17 + 1) = 0x402E000000000000;
  v18 = v9;
  v19 = xmmword_7AB5C0;
  v20 = v5;
  v21 = 0x4022000000000000;
  v22 = v8;
  v23 = xmmword_786B00;
  v24 = xmmword_786B10;
  v10 = sub_527DE4();
  swift_getKeyPath();
  sub_75C7B0();

  sub_765630();
  v12 = v11;
  v14 = v13;
  (*(v1 + 8))(v3, v0);
  sub_13C170(v4, &v17, v10, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, v12, v14);
  v6 = v15;
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_64F344(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_64F390(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC18ASMessagesProvider20BrickPlaceholderView_artworkPlaceholder;
  sub_759210();
  v11 = sub_759030();
  sub_75CD10();

  *&v5[v10] = v11;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider20BrickPlaceholderView_supplementaryTextPlaceholder;
  sub_7595E0();
  v13 = sub_7595D0();
  v15 = sub_48A70C(v13, v14, UIFontTextStyleSubheadline);

  *&v5[v12] = v15;
  v5[OBJC_IVAR____TtC18ASMessagesProvider20BrickPlaceholderView_wantsSupplementaryTextPlaceholder] = 0;
  v18.receiver = v5;
  v18.super_class = type metadata accessor for BrickPlaceholderView();
  v16 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  [v16 addSubview:*&v16[OBJC_IVAR____TtC18ASMessagesProvider20BrickPlaceholderView_artworkPlaceholder]];
  return v16;
}

uint64_t sub_64F4F0()
{
  v1 = sub_7664F0();
  v23 = *(v1 - 8);
  v24 = v1;
  __chkstk_darwin(v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_759270();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_759290();
  v8 = *(v22 - 8);
  __chkstk_darwin(v22);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BrickPlaceholderView();
  v33.receiver = v0;
  v33.super_class = v11;
  objc_msgSendSuper2(&v33, "layoutSubviews");
  v12 = OBJC_IVAR____TtC18ASMessagesProvider20BrickPlaceholderView_wantsSupplementaryTextPlaceholder;
  v13 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider20BrickPlaceholderView_supplementaryTextPlaceholder];
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider20BrickPlaceholderView_wantsSupplementaryTextPlaceholder] == 1)
  {
    [v0 addSubview:*&v0[OBJC_IVAR____TtC18ASMessagesProvider20BrickPlaceholderView_supplementaryTextPlaceholder]];
  }

  else
  {
    [*&v0[OBJC_IVAR____TtC18ASMessagesProvider20BrickPlaceholderView_supplementaryTextPlaceholder] removeFromSuperview];
  }

  if (qword_93CD68 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v4, qword_99D350);
  (*(v5 + 16))(v7, v14, v4);
  v15 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider20BrickPlaceholderView_artworkPlaceholder];
  v31 = sub_759210();
  v32 = &protocol witness table for UIView;
  v30 = v15;
  if (v0[v12] == 1)
  {
    v16 = sub_438F84();
    v17 = v13;
    v18 = &protocol witness table for UILabel;
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v13 = 0;
    v26 = 0;
    v27 = 0;
  }

  v28 = v16;
  v29 = v18;
  v25 = v13;
  v19 = v15;
  sub_759280();
  sub_75D650();
  sub_759250();
  (*(v23 + 8))(v3, v24);
  return (*(v8 + 8))(v10, v22);
}

id sub_64F864(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BrickPlaceholderView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_64F908()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider20BrickPlaceholderView_artworkPlaceholder;
  sub_759210();
  v3 = sub_759030();
  sub_75CD10();

  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider20BrickPlaceholderView_supplementaryTextPlaceholder;
  sub_7595E0();
  v5 = sub_7595D0();
  v7 = sub_48A70C(v5, v6, UIFontTextStyleSubheadline);

  *(v1 + v4) = v7;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider20BrickPlaceholderView_wantsSupplementaryTextPlaceholder) = 0;
  sub_76A840();
  __break(1u);
}

char *sub_64F9E8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_768C60();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = qword_95FD18;
  type metadata accessor for CondensedAdLockupWithIconBackgroundView();
  *&v4[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  v16 = [v15 contentView];
  [v16 setClipsToBounds:1];

  v17 = qword_95FD18;
  [*&v15[qword_95FD18] setClipsToBounds:1];
  v18 = [v15 contentView];

  [v18 addSubview:*&v15[v17]];
  memset(v21, 0, sizeof(v21));
  memset(v20, 0, sizeof(v20));
  sub_768C10();
  sub_10A2C(v20, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(v21, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();

  (*(v11 + 8))(v13, v10);
  return v15;
}

id sub_64FC48()
{
  v1 = *&v0[qword_95FD18];
  [v0 bounds];

  return [v1 setFrame:?];
}

void sub_64FC9C(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_759190();
}

double sub_64FD34()
{
  sub_763B80();
  sub_6508C8(&unk_93F7A0, &type metadata accessor for CondensedAdLockupWithIconBackground, &protocol conformance descriptor for CondensedAdLockupWithIconBackground);
  sub_75C750();
  if (v1)
  {
    sub_763B70();
  }

  return result;
}

double sub_64FDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  sub_740668(a5);
  sub_765B20();
  sub_761E80();
  if (swift_dynamicCastClass())
  {
    v8 = sub_761E70();
    sub_5D3E7C(v8, a3, a4);

    sub_740668(v9);
    [v5 setNeedsLayout];
  }

  return result;
}

uint64_t sub_64FEB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = sub_7656C0();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_73D33C(a1, a2, a3, v12);
  v15 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_5FC64(v3 + v15, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_10A2C(v9, &unk_955AA0, &qword_783ED0);
  }

  (*(v11 + 32))(v14, v9, v10);
  v17 = sub_5D56D0(a1, v14);
  return (*(v11 + 8))(v14, v10, v17);
}

void sub_650094(uint64_t a1, uint64_t a2, char a3)
{
  if (*(v3 + qword_99DC98))
  {
    v5 = *(v3 + qword_99DC98 + 8);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 128);
    swift_unknownObjectRetain();
    v7(a1, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  v8 = *(v3 + qword_95FD18);
  sub_759190();
  sub_759210();
  sub_6508C8(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  sub_75A0C0();
  v9 = OBJC_IVAR____TtC18ASMessagesProvider39CondensedAdLockupWithIconBackgroundView_lockupView;
  v10 = *(*(v8 + OBJC_IVAR____TtC18ASMessagesProvider39CondensedAdLockupWithIconBackgroundView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  sub_759190();

  v11 = *(*(v8 + v9) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  sub_75A0C0();
}

void (*sub_650228(uint64_t a1, uint64_t a2))()
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  swift_weakInit();
  sub_134D8(a1, v7);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  sub_10914(v7, v5 + 32);
  return sub_6508BC;
}

void sub_6502F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5 - 8];
  v7 = sub_768AB0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_134D8(a3, v14);
      sub_BD88(&unk_944DA0, &unk_77EB70);
      sub_765B70();
      if (swift_dynamicCast())
      {
        sub_765B20();

        sub_75B070();
        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {

          sub_10A2C(v6, &unk_93FF30, &unk_77DB10);
        }

        else
        {
          (*(v8 + 32))(v10, v6, v7);
          [v12 bounds];
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
}

Class sub_650584(uint64_t a1)
{
  sub_BD88(&qword_941C10, &qword_781230);
  v2 = swift_allocObject();
  v3 = *(a1 + qword_95FD18);
  *(v2 + 16) = xmmword_77B6D0;
  v4 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider39CondensedAdLockupWithIconBackgroundView_lockupView);
  *(v2 + 56) = type metadata accessor for TodayCardLockupView();
  *(v2 + 32) = v4;
  v5 = v4;
  v6.super.isa = sub_769450().super.isa;

  return v6.super.isa;
}

void sub_650638(void *a1, uint64_t a2, Class a3)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_769460();
    v6 = a1;
    a3 = sub_769450().super.isa;
  }

  else
  {
    v7 = a1;
  }

  v8.receiver = a1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "setAccessibilityElements:", a3);
}

uint64_t type metadata accessor for CondensedAdLockupWithIconBackgroundViewTodayCardCollectionViewCell(uint64_t a1)
{
  result = qword_95FD48;
  if (!qword_95FD48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_650804()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_65083C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_650874()
{

  sub_BEB8((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_6508C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_650910(uint64_t *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = *a1;
  ObjectType = swift_getObjectType();

  return sub_650A20(a2, a3, v13, a8, a6, v8, ObjectType);
}

double sub_650A20(double a1, double a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int *a7)
{
  v12 = sub_7586C0();
  v14 = v13;
  v15 = sub_7586B0();
  v17 = v16;
  v18 = sub_7586F0();
  v20 = v19;
  v21 = sub_370728(a5);
  if (qword_93C808 != -1)
  {
    swift_once();
  }

  sub_53DA04(&unk_99BE98, a4, a1, a2);
  v22 = type metadata accessor for AppEventCardView();
  sub_524F90(v12, v14, v15, v17, v18, v20, v21 & 1, a4, a1, a2, v22, a7);

  return a1;
}

double *sub_650B68(uint64_t a1, void *a2, double a3, double a4)
{
  v5 = a3;
  if (qword_93C808 != -1)
  {
    v9 = a4;
    swift_once();
    a4 = v9;
    v5 = a3;
  }

  sub_53DA04(&unk_99BE98, a2, v5, a4);
  type metadata accessor for AppEventCardView();

  return sub_5271CC(v5, a1, a2);
}

double sub_650C28(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8, double a9, double a10, uint64_t a11, int *a12)
{
  if (qword_93C808 != -1)
  {
    swift_once();
  }

  sub_53DA04(&unk_99BE98, a8, a9, a10);
  v22 = type metadata accessor for AppEventCardView();
  sub_524F90(a1, a2, a3, a4, a5, a6, a7 & 1, a8, a9, a10, v22, a12);
  return a9;
}

void sub_650D38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_BD88(&qword_94EC40, &unk_793120);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_758660();
  v10 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_formattedDateView];
  [v2 setNeedsLayout];
  v11 = sub_758780();
  if (v11)
  {
    v22 = v11;
    sub_764C80();
    sub_768900();
    sub_650FCC(&qword_951430, &type metadata accessor for Action, &protocol conformance descriptor for Action);
    sub_768820();

    v12 = sub_BD88(&unk_950960, &qword_793110);
    (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
  }

  else
  {
    v13 = sub_BD88(&unk_950960, &qword_793110);
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  }

  v14 = OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_clickAction;
  swift_beginAccess();
  sub_278AC(v8, &v3[v14]);
  swift_endAccess();
  sub_525B90(a1, a2);
  type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
  sub_7688F0();
  v15 = v22;
  v16 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
  v17 = *(v10 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator);
  v18 = v17;
  sub_26CAC0(v15);
  v19 = *(v10 + v16);
  *(v10 + v16) = v15;
  v20 = v15;

  sub_26CC24(v17);
}

uint64_t sub_650FCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_651014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v11 = *(a4 - 8);
  v12 = __chkstk_darwin(a1);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v12);
  sub_5276AC(v14, a2, *(a3 + OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView), a4, a5, a6);
  return (*(v11 + 8))(v14, a4);
}

uint64_t sub_65112C()
{
  v0 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  __chkstk_darwin(v0);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ShelfFooterView.Style(0);
  sub_161DC(v3, qword_9A0648);
  v4 = sub_BE38(v3, qword_9A0648);
  if (qword_93D3F0 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_99E410);
  sub_5498C4(v5, v2);
  v6 = [objc_opt_self() whiteColor];
  v7 = [v6 colorWithAlphaComponent:0.2];

  result = sub_549AA8(v2, v4);
  *(v4 + *(v3 + 20)) = v7;
  return result;
}

id sub_651278()
{
  type metadata accessor for ShelfFooterSeparator();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  qword_960120 = result;
  return result;
}

char *sub_6512B0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_768C60();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v4[OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_layoutMetrics];
  *(v14 + 3) = &type metadata for Double;
  *(v14 + 4) = &protocol witness table for Double;
  *v14 = 0x4038000000000000;
  v14[40] = 0;
  v15 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_separator;
  *&v4[v15] = [objc_allocWithZone(type metadata accessor for ShelfFooterSeparator()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_titleButton;
  type metadata accessor for ShelfFooterTitleButton(0);
  *&v4[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = &v4[OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_footerAction];
  *v17 = 0;
  *(v17 + 1) = 0;
  v30.receiver = v4;
  v30.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v22 = v18;
  [v22 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v23 = [v22 layer];
  [v23 setAllowsGroupOpacity:0];

  [v22 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v24 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_titleButton;
  [*&v22[OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_titleButton] addTarget:v22 action:"didTapWithTitleButton:" forControlEvents:64];
  v25 = *&v22[v24];
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  v26 = v25;
  sub_768C30();
  sub_10A2C(v28, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(v29, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();

  (*(v11 + 8))(v13, v10);
  [v22 addSubview:*&v22[OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_separator]];
  [v22 addSubview:*&v22[v24]];

  return v22;
}

double sub_651608(__n128 a1, double a2)
{
  v3 = sub_766950();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_layoutMetrics;
  swift_beginAccess();
  sub_102FD8(&v2[v7], &v26);
  v8 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_titleButton];
  v9 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_separator];
  v24 = type metadata accessor for ShelfFooterTitleButton(0);
  v25 = &protocol witness table for UIButton;
  *&v23 = v8;
  v21 = type metadata accessor for ShelfFooterSeparator();
  v22 = sub_652A1C();
  *&v20 = v9;
  type metadata accessor for ShelfFooterViewLayout();
  v10 = swift_allocObject();
  v11 = v27[0];
  v10[1] = v26;
  v10[2] = v11;
  *(v10 + 41) = *(v27 + 9);
  sub_10914(&v23, (v10 + 4));
  sub_10914(&v20, v10 + 104);
  v12 = v8;
  v13 = v9;
  v14 = [v2 traitCollection];
  sub_1029D0(v15);
  sub_7673F0();
  v17 = v16;

  (*(v4 + 8))(v6, v3);
  return v17;
}

uint64_t sub_651858()
{
  ObjectType = swift_getObjectType();
  v2 = sub_766950();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26.receiver = v0;
  v26.super_class = ObjectType;
  objc_msgSendSuper2(&v26, "layoutSubviews", v4);
  v7 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_layoutMetrics;
  swift_beginAccess();
  sub_102FD8(&v0[v7], &v24);
  v8 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_titleButton];
  v9 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_separator];
  v22 = type metadata accessor for ShelfFooterTitleButton(0);
  v23 = &protocol witness table for UIButton;
  *&v21 = v8;
  v19 = type metadata accessor for ShelfFooterSeparator();
  v20 = sub_652A1C();
  *&v18 = v9;
  type metadata accessor for ShelfFooterViewLayout();
  v10 = swift_allocObject();
  v11 = v25[0];
  v10[1] = v24;
  v10[2] = v11;
  *(v10 + 41) = *(v25 + 9);
  sub_10914(&v21, (v10 + 4));
  sub_10914(&v18, v10 + 104);
  v12 = v8;
  v13 = v9;
  sub_75D650();
  v14 = [v0 traitCollection];
  sub_1029D0(v15);
  sub_7673E0();

  return (*(v3 + 8))(v6, v2);
}

void *sub_651BB4(void *result)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_footerAction);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_footerAction + 8);
    v6[3] = sub_BE70(0, &unk_948000, UIControl_ptr);
    v6[0] = v3;
    sub_F714(v2, v4);
    v5 = v3;
    v2(v6);
    sub_F704(v2, v4);
    return sub_10A2C(v6, &unk_93FBD0, &qword_77DFA0);
  }

  return result;
}

double sub_651D58(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, __n128 a5, double a6)
{
  v106 = a3;
  v107 = 0x6C6F686563616C50;
  v95 = sub_766950();
  v105 = *(v95 - 8);
  __chkstk_darwin(v95);
  v104 = v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_7672E0();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v98 = v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v97 = v89 - v12;
  __chkstk_darwin(v13);
  v94 = v89 - v14;
  __chkstk_darwin(v15);
  v93 = v89 - v16;
  v17 = sub_766AF0();
  __chkstk_darwin(v17 - 8);
  v89[1] = v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_7672F0();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_7676A0();
  __chkstk_darwin(v92);
  v91 = v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_BD88(&qword_94AFE0, &unk_7ADCD0);
  __chkstk_darwin(v21 - 8);
  v23 = (v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v26 = v89 - v25;
  __chkstk_darwin(v27);
  v29 = v89 - v28;
  __chkstk_darwin(v30);
  v32 = v89 - v31;
  v89[0] = type metadata accessor for ShelfFooterTitleButton.Style(0);
  __chkstk_darwin(v89[0]);
  v90 = v89 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v108 = v89 - v35;
  if (!a2)
  {
    goto LABEL_6;
  }

  v36 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v36 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v36)
  {

    v107 = a1;
    v96 = a2;
  }

  else
  {
LABEL_6:
    v96 = 0xEB00000000726564;
  }

  sub_652948(a4, v32);
  v37 = sub_75C220();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  if (v39(v32, 1, v37) == 1)
  {
    v40 = 0;
    v41 = 24.0;
  }

  else
  {
    sub_652948(v32, v29);
    v42 = (*(v38 + 88))(v29, v37);
    v43 = v29;
    v44 = a4;
    v45 = v26;
    v46 = v42;
    v47 = enum case for ShelfFooterStyle.games(_:);
    (*(v38 + 8))(v43, v37);
    v48 = v46 == v47;
    v26 = v45;
    a4 = v44;
    v40 = v48;
    v41 = 24.0;
    if (v48)
    {
      v41 = 16.0;
    }
  }

  v117[3] = &type metadata for Double;
  v117[4] = &protocol witness table for Double;
  *v117 = v41;
  v118 = v40;
  sub_10A2C(v32, &qword_94AFE0, &unk_7ADCD0);
  sub_652948(a4, v26);
  v49 = v39(v26, 1, v37);
  v50 = v108;
  if (v49 != 1)
  {
    sub_652948(v26, v23);
    if ((*(v38 + 88))(v23, v37) == enum case for ShelfFooterStyle.games(_:))
    {
      (*(v38 + 96))(v23, v37);
      v51 = *v23;
      if (qword_93D3F8 != -1)
      {
        swift_once();
      }

      v52 = sub_BE38(v89[0], qword_99E428);
      sub_5498C4(v52, v50);
      v53 = v106;
      if ([v106 horizontalSizeClass] == &dword_0 + 1 && (v54 = objc_msgSend(v53, "preferredContentSizeCategory"), v55 = sub_769B20(), v54, (v55 & 1) != 0))
      {

        v56 = 0;
        v57 = 0;
      }

      else
      {
        [v51 size];
        v57 = v88;

        v56 = 1;
      }

      goto LABEL_25;
    }

    (*(v38 + 8))(v23, v37);
  }

  if (qword_93D3F0 != -1)
  {
    swift_once();
  }

  v58 = sub_BE38(v89[0], qword_99E410);
  sub_5498C4(v58, v50);
  v56 = 0;
  v57 = 0;
  v53 = v106;
LABEL_25:
  v59 = v101;
  sub_10A2C(v26, &qword_94AFE0, &unk_7ADCD0);
  if (qword_93D400 != -1)
  {
    swift_once();
  }

  v60 = qword_95A740;
  *(qword_95A740 + OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_hasLeadingIcon) = v56;
  *&v60[OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_leadingIconHeight] = v57;
  v61 = sub_769210();
  [v60 setTitle:v61 forState:0];

  v62 = v90;
  sub_5498C4(v50, v90);
  v63 = OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_style;
  swift_beginAccess();
  sub_6529B8(v62, &v60[v63]);
  swift_endAccess();
  sub_54838C();
  sub_549928(v62);
  v64 = [v53 preferredContentSizeCategory];
  sub_769EE0();
  sub_767670();
  sub_769EF0();
  [v60 updateTraitsIfNeeded];
  sub_76A200();
  v66 = v65;
  v68 = v67;
  sub_766AE0();
  sub_766D50();
  *&v116[8] = sub_766D70();
  *&v116[16] = &protocol witness table for LabelPlaceholder;
  sub_B1B4(&v115);
  sub_766D80();
  v69 = v93;
  *(v93 + 3) = &type metadata for CGFloat;
  *(v69 + 4) = &protocol witness table for CGFloat;
  *v69 = v66;
  v70 = enum case for Resize.Rule.replaced(_:);
  v71 = *(v99 + 104);
  v72 = v100;
  v71(v69, enum case for Resize.Rule.replaced(_:), v100);
  v73 = v94;
  *(v94 + 3) = &type metadata for CGFloat;
  *(v73 + 4) = &protocol witness table for CGFloat;
  *v73 = v68;
  v71(v73, v70, v72);
  v74 = enum case for Resize.Rule.unchanged(_:);
  v71(v97, enum case for Resize.Rule.unchanged(_:), v72);
  v71(v98, v74, v72);
  sub_767300();
  sub_102FD8(v117, &v115);
  if (qword_93DFD8 != -1)
  {
    swift_once();
  }

  v75 = qword_960120;
  v76 = v103;
  v113 = v103;
  v114 = &protocol witness table for Resize;
  v77 = sub_B1B4(&v112);
  v78 = v102;
  (*(v102 + 16))(v77, v59, v76);
  v110 = type metadata accessor for ShelfFooterSeparator();
  v111 = sub_652A1C();
  *&v109 = v75;
  type metadata accessor for ShelfFooterViewLayout();
  v79 = swift_allocObject();
  v80 = *v116;
  v79[1] = v115;
  v79[2] = v80;
  *(v79 + 41) = *&v116[9];
  sub_10914(&v112, (v79 + 4));
  sub_10914(&v109, v79 + 104);
  v81 = v75;
  v82 = v104;
  sub_1029D0(v83);
  v84 = v95;
  sub_7673F0();
  v86 = v85;

  (*(v105 + 8))(v82, v84);
  (*(v78 + 8))(v59, v76);
  sub_103044(v117);
  sub_549928(v108);
  return v86;
}

uint64_t sub_652948(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_94AFE0, &unk_7ADCD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6529B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_652A1C()
{
  result = qword_960170;
  if (!qword_960170)
  {
    type metadata accessor for ShelfFooterSeparator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_960170);
  }

  return result;
}

void sub_652A74(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v57 = a5;
  v63 = a3;
  v61 = a2;
  v59 = a1;
  v56 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  __chkstk_darwin(v56);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&qword_94AFE0, &unk_7ADCD0);
  __chkstk_darwin(v10 - 8);
  v60 = (&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v64 = &v56 - v13;
  __chkstk_darwin(v14);
  v16 = &v56 - v15;
  __chkstk_darwin(v17);
  v19 = &v56 - v18;
  v62 = a4;
  sub_652948(a4, &v56 - v18);
  v20 = sub_75C220();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v23 = v22(v19, 1, v20);
  v58 = v21;
  if (v23 == 1)
  {
    v24 = 0;
    v25 = 24.0;
  }

  else
  {
    sub_652948(v19, v16);
    v26 = (*(v21 + 88))(v16, v20);
    v27 = enum case for ShelfFooterStyle.games(_:);
    (*(v21 + 8))(v16, v20);
    v24 = v26 == v27;
    v25 = 24.0;
    if (v26 == v27)
    {
      v25 = 16.0;
    }
  }

  v65[3] = &type metadata for Double;
  v65[4] = &protocol witness table for Double;
  *v65 = v25;
  v66 = v24;
  sub_10A2C(v19, &qword_94AFE0, &unk_7ADCD0);
  v28 = &v6[OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_layoutMetrics];
  swift_beginAccess();
  sub_653254(v65, v28);
  swift_endAccess();
  v29 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_separator];
  [v29 setHidden:*(v28 + 40)];
  [v29 setBackgroundColor:*(v63 + *(type metadata accessor for ShelfFooterView.Style(0) + 20))];
  v30 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_titleButton];
  v31 = v61;
  if (v61)
  {
    v32 = v59;
    v33 = sub_769210();
    [v30 setTitle:v33 forState:{0, v56, v57}];

    v34 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v34 = v32 & 0xFFFFFFFFFFFFLL;
    }

    v35 = v34 == 0;
  }

  else
  {
    [*&v6[OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_titleButton] setTitle:0 forState:{0, v56, v57}];
    v35 = 1;
  }

  [v30 setHidden:v35];
  v36 = v64;
  sub_652948(v62, v64);
  if (v22(v36, 1, v20) == 1)
  {
    goto LABEL_18;
  }

  v37 = v60;
  sub_652948(v64, v60);
  v38 = v58;
  if ((*(v58 + 88))(v37, v20) != enum case for ShelfFooterStyle.games(_:))
  {
    (*(v38 + 8))(v60, v20);
LABEL_18:
    sub_5498C4(v63, v9);
    v47 = OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_style;
    swift_beginAccess();
    sub_6529B8(v9, &v30[v47]);
    swift_endAccess();
    sub_54838C();
    sub_549928(v9);
    goto LABEL_19;
  }

  v39 = v9;
  v40 = v60;
  (*(v38 + 96))(v60, v20);
  v41 = *v40;
  if (qword_93D3F8 != -1)
  {
    swift_once();
  }

  v42 = sub_BE38(v56, qword_99E428);
  sub_5498C4(v42, v39);
  v43 = OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_style;
  swift_beginAccess();
  sub_6529B8(v39, &v30[v43]);
  swift_endAccess();
  sub_54838C();
  sub_549928(v39);
  v44 = sub_75DA30();
  if ([v44 horizontalSizeClass] != &dword_0 + 1)
  {

    goto LABEL_22;
  }

  v45 = [v44 preferredContentSizeCategory];
  v46 = sub_769B20();

  if ((v46 & 1) == 0)
  {
LABEL_22:
    v51 = v41;
    sub_10A2C(v64, &qword_94AFE0, &unk_7ADCD0);
    v30[OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_hasLeadingIcon] = 1;
    [v51 size];
    *&v30[OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_leadingIconHeight] = v52;
    v53 = *&v30[OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_leadingIconView];
    v54 = v51;
    v48 = v53;
    v55 = [v48 layer];
    [v55 removeAllAnimations];

    v50 = v54;
    [v48 setImage:v50];

    goto LABEL_20;
  }

LABEL_19:
  sub_10A2C(v64, &qword_94AFE0, &unk_7ADCD0);
  v30[OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_hasLeadingIcon] = 0;
  *&v30[OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_leadingIconHeight] = 0;
  v48 = *&v30[OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_leadingIconView];
  v49 = [v48 layer];
  [v49 removeAllAnimations];

  [v48 setImage:0];
  v50 = 0;
LABEL_20:

  [v6 setNeedsLayout];
}

void sub_65315C()
{
  v1 = v0 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_layoutMetrics;
  *(v1 + 24) = &type metadata for Double;
  *(v1 + 32) = &protocol witness table for Double;
  *v1 = 0x4038000000000000;
  *(v1 + 40) = 0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_separator;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for ShelfFooterSeparator()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_titleButton;
  type metadata accessor for ShelfFooterTitleButton(0);
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_footerAction);
  *v4 = 0;
  v4[1] = 0;
  sub_76A840();
  __break(1u);
}

uint64_t type metadata accessor for ShelfFooterView.Style(uint64_t a1)
{
  result = qword_9601D0;
  if (!qword_9601D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_653310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_6533E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ShelfFooterTitleButton.Style(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_653498(uint64_t a1)
{
  result = type metadata accessor for ShelfFooterTitleButton.Style(319);
  if (v2 <= 0x3F)
  {
    result = sub_BE70(319, &qword_93E540, UIColor_ptr);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_653570(uint64_t a1)
{
  v2 = v1;
  v4 = sub_766690();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  if (*&v2[OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_pageTraits])
  {
    v11 = a1 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    swift_unknownObjectRetain();

    [v2 frame];
    swift_unknownObjectRetain();
    if (JUScreenClassGetMain() == 1)
    {
      if (qword_93DFE8 != -1)
      {
        swift_once();
      }

      v12 = qword_960220;
    }

    else
    {
      if (qword_93DFE0 != -1)
      {
        swift_once();
      }

      v12 = qword_960208;
    }

    v13 = sub_BE38(v4, v12);
    (*(v5 + 16))(v7, v13, v4);
    (*(v5 + 32))(v10, v7, v4);
    sub_766660();
    (*(v5 + 8))(v10, v4);
    swift_unknownObjectRelease();
    sub_765320();
    sub_7651A0();
    sub_759070();
    sub_759210();
    sub_65476C(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_75A050();
    swift_unknownObjectRelease();
  }
}

double sub_653834(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = sub_76A920();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_766690();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v23 - v17;
  if (JUScreenClassGetMain() == 1)
  {
    if (qword_93DFE8 != -1)
    {
      swift_once();
    }

    v19 = qword_960220;
  }

  else
  {
    if (qword_93DFE0 != -1)
    {
      swift_once();
    }

    v19 = qword_960208;
  }

  v20 = sub_BE38(v12, v19);
  (*(v13 + 16))(v15, v20, v12);
  (*(v13 + 32))(v18, v15, v12);
  sub_766660();
  (*(v13 + 8))(v18, v12);
  if (qword_93DCF0 != -1)
  {
    swift_once();
  }

  v21 = sub_766CA0();
  sub_BE38(v21, qword_99FE18);
  sub_766470();
  sub_766700();
  (*(v9 + 8))(v11, v8);
  return a1;
}

uint64_t sub_653B2C()
{
  result = sub_75D410();
  if (result)
  {

    return 3;
  }

  return result;
}

uint64_t sub_653B6C(uint64_t a1, uint64_t a2)
{
  sub_759210();
  sub_65476C(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  return sub_75A0C0();
}

uint64_t sub_653C00(uint64_t a1)
{
  result = sub_65476C(&qword_960238, type metadata accessor for EditorialStoryCardCollectionViewCell, &unk_7AB7A0);
  *(a1 + 8) = result;
  return result;
}

void sub_653CE8(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v9 = sub_75B660();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = [a6 snapshotPageTraitEnvironment];
  *&v6[OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_pageTraits] = v14;
  swift_unknownObjectRelease();
  v15 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_headingLabel];
  sub_75D450();
  if (v16)
  {
    v17 = sub_769210();
  }

  else
  {
    v17 = 0;
  }

  [v15 setText:v17];

  v18 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_titleLabel];
  sub_75D440();
  v19 = sub_769210();

  v42 = v18;
  [v18 setText:v19];

  v20 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider36EditorialStoryCardCollectionViewCell_descriptionLabel];
  sub_75D420();
  v41 = v15;
  if (v21)
  {
    v22 = sub_769210();
  }

  else
  {
    v22 = 0;
  }

  [v20 setText:{v22, v41}];

  sub_75D430();
  v23 = (*(v10 + 88))(v13, v9);
  if (v23 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v10 + 96))(v13, v9);
    v24 = *(sub_BD88(&qword_94B9A8, &qword_78EB00) + 48);
    v25 = sub_7651A0();

    v26 = sub_75EDA0();
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
      if (qword_93C890 != -1)
      {
        swift_once();
      }

      v34 = qword_99C4F8;
      v25 = 0;
      goto LABEL_24;
    }

    (*(v10 + 96))(v13, v9);
    v25 = *v13;
    v29 = *(sub_BD88(&unk_959640, qword_78DD60) + 48);
    v30 = sub_75EDA0();
    v31 = *(*(v30 - 8) + 8);
    v28 = v25;
    v31(v13 + v29, v30);
  }

  v32 = v28;
  if (sub_76A0D0())
  {
    if (qword_93C890 != -1)
    {
      swift_once();
    }

    v33 = qword_99C4F8;
  }

  else
  {
    if (qword_93C880 != -1)
    {
      swift_once();
    }

    v33 = qword_99C4E8;
  }

  v34 = v33;

LABEL_24:
  [v41 setTextColor:v34];

  if (v25)
  {
    v35 = v25;
    if (sub_76A0D0())
    {
      if (qword_93C898 != -1)
      {
        swift_once();
      }

      v36 = qword_99C500;
    }

    else
    {
      if (qword_93C888 != -1)
      {
        swift_once();
      }

      v36 = qword_99C4F0;
    }

    v37 = v36;
  }

  else
  {
    if (qword_93C898 != -1)
    {
      swift_once();
    }

    v37 = qword_99C500;
  }

  [v42 setTextColor:v37];

  if (v25)
  {
    v38 = v25;
    if (sub_76A0D0())
    {
      if (qword_93C898 != -1)
      {
        swift_once();
      }

      v39 = qword_99C500;
    }

    else
    {
      if (qword_93C888 != -1)
      {
        swift_once();
      }

      v39 = qword_99C4F0;
    }

    v40 = v39;
  }

  else
  {
    if (qword_93C898 != -1)
    {
      swift_once();
    }

    v40 = qword_99C500;
    v38 = 0;
  }

  [v20 setTextColor:v40];

  [v7 setNeedsLayout];
}

id sub_654334(uint64_t a1, uint64_t a2)
{
  v2 = sub_76A920();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_766690();
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
    if (qword_93DFE8 != -1)
    {
      swift_once();
    }

    v15 = qword_960220;
  }

  else
  {
    if (qword_93DFE0 != -1)
    {
      swift_once();
    }

    v15 = qword_960208;
  }

  v16 = sub_BE38(v6, v15);
  (*(v7 + 16))(v9, v16, v6);
  (*(v7 + 32))(v12, v9, v6);
  sub_766660();
  v18 = v17;
  (*(v7 + 8))(v12, v6);
  v19 = objc_opt_self();
  v20 = [v19 absoluteDimension:v14];
  if (qword_93DCF0 != -1)
  {
    swift_once();
  }

  v21 = sub_766CA0();
  sub_BE38(v21, qword_99FE18);
  sub_766470();
  sub_766700();
  v23 = v22;
  (*(v3 + 8))(v5, v2);
  v24 = [v19 absoluteDimension:round(v18) + v23];
  v25 = [objc_opt_self() sizeWithWidthDimension:v20 heightDimension:v24];

  v26 = [objc_opt_self() itemWithLayoutSize:v25];
  v27 = objc_opt_self();
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_77D9F0;
  *(v28 + 32) = v26;
  sub_4FB2C();
  v29 = v26;
  isa = sub_769450().super.isa;

  v31 = [v27 verticalGroupWithLayoutSize:v25 subitems:isa];

  return v31;
}

uint64_t sub_65476C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_6547B4()
{
  v1 = sub_75DAB0();
  v33 = *(v1 - 8);
  __chkstk_darwin(v1);
  *&v32 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_7656C0();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7656A0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v34 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v30 - v10;
  v12 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v12 - 8);
  v14 = v30 - v13;
  ObjectType = swift_getObjectType();
  top = 20.0;
  bottom = 20.0;
  if ((*(v0 + OBJC_IVAR____TtC18ASMessagesProvider40ProductPageReviewsOverflowViewController_useCardStyling) & 1) == 0)
  {
    top = UIEdgeInsetsZero.top;
    bottom = UIEdgeInsetsZero.bottom;
  }

  sub_769DA0();
  v19 = v18;
  v21 = v20;
  type metadata accessor for GenericProductReviewCollectionViewCell(0);
  if (swift_dynamicCastMetatype())
  {
    v30[1] = v19;
    v30[2] = v21;
    v32 = bottom;
    v33 = top;
    v22 = OBJC_IVAR____TtC18ASMessagesProvider40ProductPageReviewsOverflowViewController_itemLayoutContext;
    (*(v7 + 104))(v11, enum case for PageGrid.Direction.vertical(_:), v6);
    swift_getKeyPath();
    v31 = v22;
    sub_75C7B0();

    sub_765590();
    v23 = v35;
    (*(v3 + 8))(v5, v35);
    (*(v7 + 16))(v34, v11, v6);
    if (qword_93CF58 != -1)
    {
      swift_once();
    }

    sub_765670();
    (*(v7 + 8))(v11, v6);
    (*(v3 + 56))(v14, 0, 1, v23);
    sub_EDA68(v0 + v31, v14);
    v25 = v24;
    sub_10A2C(v14, &unk_955AA0, &qword_783ED0);
    bottom = v32;
    top = v33;
  }

  else if (swift_conformsToProtocol2() && ObjectType)
  {
    sub_75EAF0();
    v25 = v26;
  }

  else
  {
    v25 = 0.0;
    if (swift_conformsToProtocol2() && ObjectType)
    {
      v27 = v32;
      sub_75C720();
      sub_760B30();
      v25 = v28;
      (*(*&v33 + 8))(COERCE_DOUBLE(*&v27), v1);
    }
  }

  return bottom + top + v25;
}

void sub_654D20()
{
  sub_396E8();
  v0 = objc_opt_self();
  v1 = [v0 systemBackgroundColor];
  v2.super.isa = [v0 secondarySystemBackgroundColor];
  v3.super.isa = v1;
  qword_960290 = sub_76A0C0(v3, v2).super.isa;
}

id sub_654E00()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_BD88(&unk_959540, &qword_784830);
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v24 - v6;
  v28.receiver = v1;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, "viewDidLoad", v5);
  v8 = v1[OBJC_IVAR____TtC18ASMessagesProvider40ProductPageReviewsOverflowViewController_useCardStyling];
  v25 = v7;
  if (v8 == 1)
  {
    result = [v1 view];
    if (!result)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v10 = result;
    v11 = [result layer];

    [v11 setCornerRadius:18.0];
    result = [v1 view];
    if (!result)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v12 = result;
    if (qword_93DFF0 != -1)
    {
      swift_once();
    }

    [v12 setBackgroundColor:qword_960290];
LABEL_12:
    v17 = v4;

    result = [v1 view];
    if (result)
    {
      v18 = result;
      v19 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider40ProductPageReviewsOverflowViewController_scrollView];
      [result addSubview:v19];

      [v19 setDelegate:v1];
      [v19 setAlwaysBounceVertical:1];
      v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider40ProductPageReviewsOverflowViewController_componentView];
      v21 = swift_getObjectType();
      sub_75D9F0();
      v22 = v25;
      sub_75C7E0();
      sub_768760();
      (*(v17 + 8))(v22, v3);
      v26[3] = v21;
      v26[0] = v20;
      sub_75A110();
      sub_768900();
      v23 = v20;
      sub_768ED0();
      sub_758EF0();

      sub_10A2C(v27, &unk_963040, &qword_77F400);
      sub_BEB8(v26);
      return [v19 addSubview:v23];
    }

    __break(1u);
    goto LABEL_15;
  }

  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider40ProductPageReviewsOverflowViewController_componentView];
  v14 = [v13 backgroundView];
  result = [v1 view];
  v12 = result;
  if (v14)
  {
    if (!result)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v15 = [v14 backgroundColor];
    [v12 setBackgroundColor:v15];

    goto LABEL_12;
  }

  if (result)
  {
    v16 = [v13 backgroundColor];
    [v12 setBackgroundColor:v16];

    goto LABEL_12;
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_655254()
{
  v57.receiver = v0;
  v57.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v57, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider40ProductPageReviewsOverflowViewController_scrollView];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v3 = result;
  [result bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v1 setFrame:{v5, v7, v9, v11}];
  top = 20.0;
  left = 20.0;
  if ((v0[OBJC_IVAR____TtC18ASMessagesProvider40ProductPageReviewsOverflowViewController_useCardStyling] & 1) == 0)
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
  }

  result = [v0 view];
  if (!result)
  {
    goto LABEL_13;
  }

  v14 = result;
  [result bounds];

  v15 = sub_6547B4();
  result = [v0 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = result;
  [result bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v58.origin.x = v18;
  v58.origin.y = v20;
  v58.size.width = v22;
  v58.size.height = v24;
  MinX = CGRectGetMinX(v58);
  result = [v0 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25 = result;
  v26 = left;
  [result bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v59.origin.x = v28;
  v59.origin.y = v30;
  v59.size.width = v32;
  v59.size.height = v34;
  MinY = CGRectGetMinY(v59);
  result = [v0 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v36 = result;
  [result bounds];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  v60.origin.x = v38;
  v60.origin.y = v40;
  v60.size.width = v42;
  v60.size.height = v44;
  Width = CGRectGetWidth(v60);
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider40ProductPageReviewsOverflowViewController_componentView] setFrame:{sub_705B8(MinX, MinY, Width, v15, top, v26)}];
  [v1 setContentSize:{Width, v15}];
  [v1 frame];
  Height = CGRectGetHeight(v61);
  result = [v0 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v47 = result;
  if (Height < v15)
  {
    v15 = Height;
  }

  [result bounds];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;

  v62.origin.x = v49;
  v62.origin.y = v51;
  v62.size.width = v53;
  v62.size.height = v55;
  return [v0 setPreferredContentSize:{CGRectGetWidth(v62), v15}];
}

uint64_t type metadata accessor for ProductPageReviewsOverflowViewController(uint64_t a1)
{
  result = qword_9602E8;
  if (!qword_9602E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_655770(uint64_t a1)
{
  result = sub_75C840();
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

double sub_655830()
{
  swift_getObjectType();
  sub_75D9F0();
  return result;
}

void sub_65589C(void *a1, id a2)
{
  if ([a2 horizontalSizeClass] == &dword_0 + 2)
  {
    v3 = [a1 traitCollection];
    v4 = [v3 horizontalSizeClass];

    if (v4 == &dword_0 + 1)
    {

      [a1 dismissViewControllerAnimated:0 completion:0];
    }
  }
}

id sub_655948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  *&v8[OBJC_IVAR____TtC18ASMessagesProvider40ProductPageReviewsOverflowViewController_objectGraph] = a6;
  v14 = OBJC_IVAR____TtC18ASMessagesProvider40ProductPageReviewsOverflowViewController_itemLayoutContext;
  v15 = sub_75C840();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v8[v14], a1, v15);
  v17 = objc_allocWithZone(UIScrollView);

  v18 = [v17 init];
  *&v8[OBJC_IVAR____TtC18ASMessagesProvider40ProductPageReviewsOverflowViewController_scrollView] = v18;
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v20 = &v8[OBJC_IVAR____TtC18ASMessagesProvider40ProductPageReviewsOverflowViewController_componentView];
  *v20 = v19;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  v8[OBJC_IVAR____TtC18ASMessagesProvider40ProductPageReviewsOverflowViewController_useCardStyling] = a7;
  v27.receiver = v8;
  v27.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v27, "initWithNibName:bundle:", 0, 0);
  sub_BD88(&qword_9477F0, qword_780200);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_77B6D0;
  *(v22 + 32) = sub_767890();
  *(v22 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v23 = v21;
  sub_769900();

  swift_unknownObjectRelease();

  (*(v16 + 8))(a1, v15);
  return v23;
}

id sub_655B6C(__n128 a1)
{
  v2 = v1;
  v3 = sub_75B240();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v2, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == enum case for BreakoutDetails.BackgroundStyle.material(_:))
  {
    v9 = [objc_opt_self() whiteColor];
    v10 = [v9 colorWithAlphaComponent:0.8];
LABEL_5:
    v11 = v10;

    return v11;
  }

  if (v8 == enum case for BreakoutDetails.BackgroundStyle.dark(_:))
  {
    v9 = [objc_opt_self() whiteColor];
    v10 = [v9 colorWithAlphaComponent:0.6];
    goto LABEL_5;
  }

  v13 = enum case for BreakoutDetails.BackgroundStyle.light(_:);
  v14 = v8;
  v15 = [objc_opt_self() blackColor];
  v16 = [v15 colorWithAlphaComponent:0.6];

  if (v14 != v13)
  {
    (*(v4 + 8))(v7, v3);
  }

  return v16;
}

id sub_655D9C(char a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_75B240();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v3, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for BreakoutDetails.BackgroundStyle.material(_:) || v10 == enum case for BreakoutDetails.BackgroundStyle.dark(_:))
  {
    v12 = [objc_opt_self() whiteColor];
    v13 = v12;
    v14 = 0.7;
    if (a1)
    {
      v14 = 1.0;
    }

    v15 = [v12 colorWithAlphaComponent:v14];
  }

  else
  {
    v16 = v10;
    v17 = enum case for BreakoutDetails.BackgroundStyle.light(_:);
    v18 = [objc_opt_self() blackColor];
    v19 = v18;
    v20 = 0.7;
    if (a1)
    {
      v20 = 1.0;
    }

    v15 = [v18 colorWithAlphaComponent:v20];

    if (v16 != v17)
    {
      (*(v6 + 8))(v9, v5);
    }
  }

  return v15;
}

id sub_655F9C(__n128 a1)
{
  v2 = v1;
  v3 = sub_75B240();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v2, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == enum case for BreakoutDetails.BackgroundStyle.material(_:) || v8 == enum case for BreakoutDetails.BackgroundStyle.dark(_:))
  {
    v10 = [objc_opt_self() whiteColor];
    v11 = [v10 colorWithAlphaComponent:0.75];

    return v11;
  }

  else
  {
    v13 = v8;
    v14 = enum case for BreakoutDetails.BackgroundStyle.light(_:);
    v15 = [objc_opt_self() blackColor];
    v16 = [v15 colorWithAlphaComponent:0.75];

    if (v13 != v14)
    {
      (*(v4 + 8))(v7, v3);
    }

    return v16;
  }
}

double sub_656174(uint64_t a1, __n128 a2, double a3)
{
  v4 = v3;
  v5 = sub_75E580();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75E5A0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DFF8 != -1)
  {
    swift_once();
  }

  v13 = sub_BE38(v5, qword_9A0660);
  (*(v6 + 16))(v8, v13, v5);
  v19[11] = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_bodyLabel);
  type metadata accessor for ExpandableTextView();
  sub_7665D0();
  v14 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitleLabel);
  v19[4] = sub_75BB20();
  v19[5] = &protocol witness table for UILabel;
  v19[1] = v14;
  v15 = v14;
  sub_75E590();
  sub_658810(&qword_9603D0, &type metadata accessor for ReviewSummaryLayout, &protocol conformance descriptor for ReviewSummaryLayout);
  sub_7673F0();
  v17 = v16;
  (*(v10 + 8))(v12, v9);
  return v17;
}

uint64_t sub_65640C(__n128 a1)
{
  v1 = sub_75E580();
  sub_161DC(v1, qword_9A0660);
  sub_BE38(v1, qword_9A0660);
  v3[3] = sub_BD88(&unk_93F5A0, &unk_77E570);
  v3[4] = sub_16194(&qword_93F5D0, &unk_93F5A0, &unk_77E570, &protocol conformance descriptor for <> Conditional<A, B>);
  sub_B1B4(v3);
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  sub_7592D0();
  return sub_75E570();
}

uint64_t sub_656514()
{
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  result = sub_769FF0();
  qword_960300 = result;
  return result;
}

char *sub_656558(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v63 - v13;
  v15 = sub_7666D0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_backgroundView;
  *&v4[v19] = [objc_allocWithZone(UIView) init];
  v64 = v4;
  v65 = OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_bodyLabel;
  if (qword_93D608 != -1)
  {
    swift_once();
  }

  v20 = sub_BE38(v15, qword_99EA10);
  v21 = *(v16 + 16);
  v21(v18, v20, v15);
  v66 = objc_opt_self();
  v22 = [v66 systemBackgroundColor];
  v23 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  v24 = v22;
  v25 = sub_1A4998(v24, 0.0, 0.0, 0.0, 0.0);
  v21(v14, v18, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  sub_1ED18(v14, v11, &unk_93E530, &unk_77C5F0);
  v26 = v25;
  sub_75BA40();

  sub_10A2C(v14, &unk_93E530, &unk_77C5F0);
  v27 = *(v16 + 8);
  v67 = v15;
  v27(v18, v15);

  v28 = v64;
  *&v64[v65] = v26;
  v29 = OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitleLabel;
  sub_75BB20();
  *&v28[v29] = sub_75BB00();
  v30 = &v28[OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitle];
  *v30 = 0;
  *(v30 + 1) = 0;
  *&v28[OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitleArtwork] = 0;
  v31 = OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitleArtworkAlignment;
  v32 = sub_75A480();
  (*(*(v32 - 8) + 56))(&v28[v31], 1, 1, v32);
  v33 = OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_previewContainer;
  *&v28[v33] = [objc_allocWithZone(UIView) init];
  v69.receiver = v28;
  v69.super_class = ObjectType;
  v34 = objc_msgSendSuper2(&v69, "initWithFrame:", a1, a2, a3, a4);
  [v34 setClipsToBounds:1];
  [v34 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v35 = OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_previewContainer;
  v36 = [*&v34[OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_previewContainer] layer];
  [v36 setCornerRadius:16.0];

  [v34 addSubview:*&v34[v35]];
  v37 = OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_backgroundView;
  v38 = *&v34[OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_backgroundView];
  v39 = [v66 systemBackgroundColor];
  [v38 setBackgroundColor:v39];

  [*&v34[v37] setAlpha:0.0];
  v40 = OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_bodyLabel;
  [*(*&v34[OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_bodyLabel] + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel) setAdjustsFontForContentSizeCategory:1];
  v41 = *&v34[v40];
  v42 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines;
  v43 = *&v41[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines];
  *&v41[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines] = 10;
  v44 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed;
  if (v41[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed] == 1)
  {
    v45 = *&v41[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel];
    v46 = v41;
    [v45 setNumberOfLines:10];
    if (*&v41[v42] == v43)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v47 = v41;
    if (v43 == 10)
    {
      goto LABEL_9;
    }
  }

  if (v41[v44])
  {
    sub_1A5974();
  }

LABEL_9:

  v48 = *&v34[v40];
  v49 = &v48[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreTapHandler];
  v50 = *&v48[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreTapHandler];
  v51 = *&v48[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreTapHandler + 8];
  *v49 = 0;
  *(v49 + 1) = 0;
  v52 = v48;
  sub_F704(v50, v51);
  [*&v52[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreButton] setUserInteractionEnabled:0];

  v53 = OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitleLabel;
  v54 = qword_93E000;
  v55 = *&v34[OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitleLabel];
  if (v54 != -1)
  {
    swift_once();
  }

  [v55 setTextColor:qword_960300];

  v56 = *&v34[v53];
  sub_BE70(0, &qword_93F900, UIFont_ptr);
  v57 = qword_93D7B0;
  v58 = v56;
  if (v57 != -1)
  {
    swift_once();
  }

  sub_BE38(v67, qword_99EF08);
  v59 = [v34 traitCollection];

  v60 = sub_769E10();
  [v58 setFont:v60];

  [*&v34[v53] setNumberOfLines:0];
  [*&v34[v35] addSubview:*&v34[v37]];
  [*&v34[v35] addSubview:*&v34[v40]];
  [*&v34[v35] addSubview:*&v34[v53]];
  sub_BD88(&qword_9477F0, qword_780200);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_77B6D0;
  *(v61 + 32) = sub_767B80();
  *(v61 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_769F40();

  swift_unknownObjectRelease();

  return v34;
}

void sub_656D08()
{
  v1 = sub_BD88(&qword_947688, qword_7ABA10);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_75A480();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitleLabel];
  v9 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitle + 8];
  v18 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitle];
  v19 = v8;
  v10 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitleArtwork];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitleArtworkAlignment;
  swift_beginAccess();
  sub_1ED18(&v0[v11], v3, &qword_947688, qword_7ABA10);
  v12 = *(v5 + 48);
  if (v12(v3, 1, v4) == 1)
  {
    (*(v5 + 104))(v7, enum case for ReviewSummary.SubtitleArtworkAlignment.trailing(_:), v4);
    v13 = v12(v3, 1, v4);

    if (v13 != 1)
    {
      sub_10A2C(v3, &qword_947688, qword_7ABA10);
    }
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
  }

  v14 = [v0 traitCollection];
  v16 = sub_658400(v18, v9, v10, v7, v15);

  (*(v5 + 8))(v7, v4);
  [v19 setAttributedText:v16];
}

uint64_t sub_657008()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_75E580();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = sub_75E5A0();
  v31 = *(v10 - 8);
  v32 = v10;
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37.receiver = v0;
  v37.super_class = ObjectType;
  objc_msgSendSuper2(&v37, "layoutSubviews", v11);
  v14 = [v0 traitCollection];
  v15 = sub_7699D0();

  if (v15)
  {
    v16 = 8.0;
  }

  else
  {
    v16 = 16.0;
  }

  v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_previewContainer];
  sub_75D650();
  [v17 setFrame:{sub_705B8(v18, v19, v20, v21, -v16, -v16)}];
  if (qword_93DFF8 != -1)
  {
    swift_once();
  }

  v22 = sub_BE38(v3, qword_9A0660);
  v23 = *(v4 + 16);
  v23(v9, v22, v3);
  sub_75E560();
  v23(v6, v9, v3);
  v36 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_bodyLabel];
  type metadata accessor for ExpandableTextView();
  sub_7665D0();
  v24 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitleLabel];
  v34 = sub_75BB20();
  v35 = &protocol witness table for UILabel;
  v33 = v24;
  v25 = v24;
  sub_75E590();
  (*(v4 + 8))(v9, v3);
  [v17 bounds];
  v26 = [v1 traitCollection];
  sub_658810(&qword_9603D0, &type metadata accessor for ReviewSummaryLayout, &protocol conformance descriptor for ReviewSummaryLayout);
  v27 = v32;
  sub_7673E0();

  [v17 bounds];
  v28 = [v1 traitCollection];
  sub_7673F0();

  [v17 frame];
  [v17 setFrame:?];
  v29 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_backgroundView];
  [v17 bounds];
  [v29 setFrame:?];
  return (*(v31 + 8))(v13, v27);
}

uint64_t type metadata accessor for ReviewSummaryView(uint64_t a1)
{
  result = qword_960358;
  if (!qword_960358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_6575E0(uint64_t a1, __n128 a2)
{
  sub_657698(319, a2);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_657698(uint64_t a1, __n128 a2)
{
  if (!qword_960368)
  {
    sub_75A480();
    v2 = sub_76A480();
    if (!v3)
    {
      atomic_store(v2, &qword_960368);
    }
  }
}

uint64_t sub_657738(uint64_t a1, int a2, uint64_t a3)
{
  v73 = a3;
  LODWORD(v74) = a2;
  v54 = sub_BD88(&qword_960378, &unk_7AB990);
  __chkstk_darwin(v54);
  v78 = &v54 - v3;
  v72 = sub_BD88(&qword_960380, &unk_79F040);
  __chkstk_darwin(v72);
  v79 = &v54 - v4;
  v76 = sub_756E80();
  v5 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_756E60();
  v7 = *(v71 - 8);
  __chkstk_darwin(v71);
  v67 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_756E90();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&qword_960388, &qword_7AB9A0);
  __chkstk_darwin(v13);
  v15 = &v54 - v14;
  v16 = sub_7666D0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v66 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v63 = &v54 - v20;
  v21 = sub_756EB0();
  __chkstk_darwin(v21);
  v57 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v23);
  v58 = v25;
  v26 = *(v25 + 16);
  v77 = &v54 - v27;
  v59 = v28;
  v56 = v25 + 16;
  v55 = v26;
  v26(v24);
  v61 = v16;
  v60 = v17;
  if (v74)
  {
    if (qword_93D7A0 != -1)
    {
      swift_once();
    }

    v29 = sub_BE38(v16, qword_99EED8);
    v30 = *(v17 + 16);
    v30(v63, v29, v16);
    if (qword_93D7A8 != -1)
    {
      swift_once();
    }

    v31 = qword_99EEF0;
  }

  else
  {
    if (qword_93D790 != -1)
    {
      swift_once();
    }

    v32 = sub_BE38(v16, qword_99EEA8);
    v30 = *(v17 + 16);
    v30(v63, v32, v16);
    if (qword_93D798 != -1)
    {
      swift_once();
    }

    v31 = qword_99EEC0;
  }

  v33 = sub_BE38(v16, v31);
  v30(v66, v33, v16);
  sub_756EA0();
  (*(v10 + 16))(v15, v12, v9);
  sub_658810(&qword_960390, &type metadata accessor for AttributedString.Runs, &protocol conformance descriptor for AttributedString.Runs);
  sub_7696C0();
  (*(v10 + 8))(v12, v9);
  v74 = (v5 + 8);
  v68 = (v7 + 8);
  v69 = (v7 + 16);
  v64 = enum case for JetFontAttribute.Value.reviewSummaryTitle(_:);
  v62 = enum case for JetFontAttribute.Value.reviewSummaryText(_:);
  v70 = v9;
  v65 = v15;
  while (1)
  {
    while (1)
    {
      v36 = v75;
      sub_7696F0();
      sub_658810(&qword_960398, &type metadata accessor for AttributedString.Runs.Index, &protocol conformance descriptor for AttributedString.Runs.Index);
      v37 = v76;
      v38 = sub_7691C0();
      (*v74)(v36, v37);
      if (v38)
      {
        sub_10A2C(v15, &qword_960388, &qword_7AB9A0);
        sub_BE70(0, &qword_9562D0, NSAttributedString_ptr);
        v48 = v77;
        v49 = v59;
        (v55)(v57, v77, v59);
        v50 = sub_769A50();
        v51 = *(v60 + 8);
        v52 = v61;
        v51(v66, v61);
        v51(v63, v52);
        (*(v58 + 8))(v48, v49);
        return v50;
      }

      v39 = sub_769710();
      v40 = v67;
      v41 = v71;
      (*v69)(v67);
      v39(v82, 0);
      sub_769700();
      sub_756E50();
      sub_75BC30();
      sub_658810(&unk_9603A0, &type metadata accessor for JetFontAttribute, &protocol conformance descriptor for JetFontAttribute);
      v42 = v78;
      sub_756E70();
      (*v68)(v40, v41);
      v43 = sub_75BC20();
      v44 = *(v43 - 8);
      if ((*(v44 + 48))(v42, 1, v43) != 1)
      {
        break;
      }

LABEL_14:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_BE70(0, &qword_93F900, UIFont_ptr);
      v81 = sub_769E10();
      sub_16194(&qword_9603B0, &qword_960380, &unk_79F040, &protocol conformance descriptor for Range<A>);
      v34 = sub_756EE0();
      sub_756E30();
      sub_658810(&qword_9603B8, &type metadata accessor for AttributeScopes.UIKitAttributes, &protocol conformance descriptor for AttributeScopes.UIKitAttributes);
      v35 = sub_756F40();
      sub_BD88(&unk_9603C0, &qword_7ABA08);
      sub_1EABC();
      sub_756FD0();
      v35(v80, 0);

      v34(v82, 0);
      v15 = v65;
      sub_10A2C(v79, &qword_960380, &unk_79F040);
    }

    v45 = (*(v44 + 88))(v78, v43);
    if (v45 != v64)
    {
      break;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_BE70(0, &qword_93F900, UIFont_ptr);
    v81 = sub_769E10();
    sub_16194(&qword_9603B0, &qword_960380, &unk_79F040, &protocol conformance descriptor for Range<A>);
    v46 = sub_756EE0();
    sub_756E30();
    sub_658810(&qword_9603B8, &type metadata accessor for AttributeScopes.UIKitAttributes, &protocol conformance descriptor for AttributeScopes.UIKitAttributes);
    v47 = sub_756F40();
    sub_BD88(&unk_9603C0, &qword_7ABA08);
    sub_1EABC();
    sub_756FD0();
    v47(v80, 0);

    v46(v82, 0);
    sub_10A2C(v79, &qword_960380, &unk_79F040);
  }

  if (v45 == v62)
  {
    goto LABEL_14;
  }

  result = sub_76A940();
  __break(1u);
  return result;
}

id sub_658400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v8 = sub_75A480();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 0;
  }

  v12 = objc_allocWithZone(NSMutableAttributedString);
  v13 = sub_769210();
  v14 = [v12 initWithString:v13];

  if (!a3)
  {
    return v14;
  }

  sub_BE70(0, &qword_95A810, UIImageSymbolConfiguration_ptr);

  v15 = sub_769C60();
  if (sub_765190())
  {
    v16 = sub_759910();
  }

  else
  {
    if ((sub_765180() & 1) == 0)
    {
LABEL_14:

      goto LABEL_15;
    }

    v16 = sub_56EBA8(a3, v15);
  }

  v17 = v16;

  if (!v17)
  {
LABEL_15:

    return v14;
  }

  v15 = [objc_allocWithZone(NSTextAttachment) init];
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v18 = sub_769FF0();
  v19 = [v17 imageWithTintColor:v18];

  [v15 setImage:v19];
  (*(v9 + 16))(v11, a4, v8);
  v20 = (*(v9 + 88))(v11, v8);
  if (v20 == enum case for ReviewSummary.SubtitleArtworkAlignment.leading(_:))
  {
    v21 = objc_allocWithZone(NSAttributedString);
    v22 = sub_769210();
    v23 = [v21 initWithString:v22];

    [v14 insertAttributedString:v23 atIndex:0];
    v24 = [objc_opt_self() attributedStringWithAttachment:v15];
    [v14 insertAttributedString:v24 atIndex:0];
LABEL_13:

    goto LABEL_14;
  }

  if (v20 == enum case for ReviewSummary.SubtitleArtworkAlignment.trailing(_:))
  {
    v25 = objc_allocWithZone(NSAttributedString);
    v26 = sub_769210();
    v27 = [v25 initWithString:v26];

    [v14 appendAttributedString:v27];
    v24 = [objc_opt_self() attributedStringWithAttachment:v15];
    [v14 appendAttributedString:v24];
    goto LABEL_13;
  }

  result = sub_76A940();
  __break(1u);
  return result;
}

uint64_t sub_6587C4@<X0>(uint64_t *a1@<X8>)
{
  sub_756E40();
  result = sub_756E30();
  *a1 = result;
  return result;
}

uint64_t sub_658810(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_658858()
{
  v1 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v25 - v5;
  v7 = sub_7666D0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_backgroundView;
  *(v0 + v11) = [objc_allocWithZone(UIView) init];
  v25 = OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_bodyLabel;
  v26 = v0;
  if (qword_93D608 != -1)
  {
    swift_once();
  }

  v12 = sub_BE38(v7, qword_99EA10);
  v13 = *(v8 + 16);
  v13(v10, v12, v7);
  v14 = [objc_opt_self() systemBackgroundColor];
  v15 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  v16 = v14;
  v17 = sub_1A4998(v16, 0.0, 0.0, 0.0, 0.0);
  v13(v6, v10, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_1ED18(v6, v3, &unk_93E530, &unk_77C5F0);
  v18 = v17;
  sub_75BA40();

  sub_10A2C(v6, &unk_93E530, &unk_77C5F0);
  (*(v8 + 8))(v10, v7);

  v19 = v26;
  *(v26 + v25) = v18;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitleLabel;
  sub_75BB20();
  *(v19 + v20) = sub_75BB00();
  v21 = (v19 + OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitle);
  *v21 = 0;
  v21[1] = 0;
  *(v19 + OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitleArtwork) = 0;
  v22 = OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitleArtworkAlignment;
  v23 = sub_75A480();
  (*(*(v23 - 8) + 56))(v19 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_previewContainer;
  *(v19 + v24) = [objc_allocWithZone(UIView) init];
  sub_76A840();
  __break(1u);
}

double sub_658C08(char a1)
{
  v2 = *(v1 + 25);
  *(v1 + 25) = a1;
  if (v2 != (a1 & 1) && swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(a1 & 1, ObjectType, v5);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_658CA0()
{
  sub_13238(v0 + 32);

  return swift_deallocClassInstance();
}

double sub_658D2C(void *a1)
{
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = *(v1 + 16);
    [a1 _systemContentInset];
    v5 = v4;
    [a1 contentInset];
    v7 = v5 + v6;
    [a1 contentOffset];

    return sub_658C08(v7 + v8 <= v2);
  }

  return result;
}

void sub_658DC0(void *a1, uint64_t a2, void *a3)
{
  type metadata accessor for ProductLockupCollectionViewCell(0);
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bannerView);
    if (v7)
    {
      sub_2630C();
      v15 = a1;
      v8 = v7;
      sub_769C90();

      if ((v17 & 1) == 0)
      {
        MaxY = CGRectGetMaxY(v16);
        *(v3 + 16) = MaxY;
        *(v3 + 24) = 0;
        [a3 _systemContentInset];
        v11 = v10;
        [a3 contentInset];
        v13 = v11 + v12;
        [a3 contentOffset];
        sub_658C08(v13 + v14 <= MaxY);
      }
    }
  }
}

uint64_t sub_658F04@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1799C(v1 + v3, a1);
}

uint64_t sub_658F60(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_65902C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void *sub_6590B0(__n128 a1)
{
  v2 = sub_7649E0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_94F1F0, &qword_782290);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - v8;
  v10 = sub_75ECD0();
  v19 = *(v10 - 8);
  v20 = v10;
  __chkstk_darwin(v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75BEC0();
  sub_6593F8(v13);
  result = sub_75C750();
  if (v21)
  {
    v18 = v1;
    swift_getKeyPath();
    sub_75C7B0();

    swift_getKeyPath();
    sub_768750();

    (*(v7 + 8))(v9, v6);
    if ((*(v3 + 88))(v5, v2) == enum case for Shelf.ContentsMetadata.productMedia(_:))
    {
      (*(v3 + 96))(v5, v2);
      v15 = v19;
      v16 = v5;
      v17 = v20;
      (*(v19 + 32))(v12, v16, v20);
      *(*(v18 + OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_platform) = sub_75ECC0();

      sub_4FD578();

      return (*(v15 + 8))(v12, v17);
    }

    else
    {

      return (*(v3 + 8))(v5, v2);
    }
  }

  return result;
}

unint64_t sub_6593F8(__n128 a1)
{
  result = qword_940008;
  if (!qword_940008)
  {
    sub_75BEC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_940008);
  }

  return result;
}

id sub_659480(uint64_t a1, uint64_t a2)
{
  sub_75A110();
  sub_768900();
  sub_768ED0();
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider21GalleryViewController_artworkLoader] = v13;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider21GalleryViewController_artwork] = a1;
  v4 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  [v4 setSectionInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v4 setMinimumInteritemSpacing:0.0];
  [v4 setMinimumLineSpacing:0.0];
  [v4 setScrollDirection:1];
  v12.receiver = v2;
  v12.super_class = type metadata accessor for GalleryViewController();
  v5 = objc_msgSendSuper2(&v12, "initWithCollectionViewLayout:", v4);
  v6 = [v5 collectionView];
  if (v6)
  {
    v7 = v6;
    [v6 setContentInsetAdjustmentBehavior:2];
  }

  v8 = v5;
  v9 = [v8 navigationItem];
  v10 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v8 action:"dismissFrom:"];

  [v9 setRightBarButtonItem:v10];

  return v8;
}

id sub_6596B0()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 barHideOnTapGestureRecognizer];

    [v3 removeTarget:v0 action:0];
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for GalleryViewController();
  return objc_msgSendSuper2(&v5, "dealloc");
}

void sub_659868(void *a1, uint64_t a2, uint64_t a3, const char **a4, uint64_t a5)
{
  v9.receiver = a1;
  v9.super_class = type metadata accessor for GalleryViewController();
  v7 = *a4;
  v8 = v9.receiver;
  objc_msgSendSuper2(&v9, v7, a3);
  sub_75A0A0();
}

void sub_6598F0(void *a1, uint64_t a2, const char **a3, uint64_t a4)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for GalleryViewController();
  v5 = *a3;
  v6 = v7.receiver;
  objc_msgSendSuper2(&v7, v5);
  sub_75A0A0();
}

void sub_659960(uint64_t a1)
{
  v25.receiver = v1;
  v25.super_class = type metadata accessor for GalleryViewController();
  objc_msgSendSuper2(&v25, "viewDidLoad");
  v2 = [v1 navigationController];
  if (v2)
  {
    v3 = v2;
    [v2 setHidesBarsOnTap:1];
  }

  v4 = [v1 navigationController];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 barHideOnTapGestureRecognizer];

    [v6 addTarget:v1 action:"tapStateChangedOn:"];
  }

  v7 = [objc_allocWithZone(UISwipeGestureRecognizer) initWithTarget:v1 action:"swipeStateChangedOn:"];
  [v7 setDirection:8];
  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    [v8 addGestureRecognizer:v7];

    v10 = [v1 collectionView];
    if (v10)
    {
      if (qword_93E008 != -1)
      {
        v24 = v10;
        swift_once();
        v10 = v24;
      }

      v11 = v10;
      [v10 setBackgroundColor:qword_960490];
    }

    v12 = [v1 collectionView];
    if (v12)
    {
      v13 = v12;
      [v12 setAllowsSelection:0];
    }

    v14 = [v1 collectionView];
    if (v14)
    {
      v15 = v14;
      [v14 setAlwaysBounceHorizontal:1];
    }

    v16 = [v1 collectionView];
    if (v16)
    {
      v17 = v16;
      [v16 setShowsHorizontalScrollIndicator:0];
    }

    v18 = [v1 collectionView];
    if (v18)
    {
      v19 = v18;
      [v18 setPagingEnabled:1];
    }

    v20 = [v1 collectionView];
    if (v20)
    {
      v21 = v20;
      type metadata accessor for ArtworkCollectionViewCell(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_769BD0();
      v23 = sub_769210();

      [v21 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v23];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_659C94(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for GalleryViewController();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 collectionViewLayout];

    [v5 invalidateLayout];
  }

  v6 = [v1 collectionView];
  if (v6)
  {
    v7 = v6;
    [v6 setNeedsLayout];
  }
}

char *sub_659E30(void *a1)
{
  result = [a1 state];
  if (result == &dword_0 + 3)
  {
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v7[4] = sub_65AB8C;
    v7[5] = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_23F0CC;
    v7[3] = &unk_89BA50;
    v5 = _Block_copy(v7);
    v6 = v1;

    [v3 animateWithDuration:v5 animations:UINavigationControllerHideShowBarDuration];
    _Block_release(v5);
    return [v6 setNeedsStatusBarAppearanceUpdate];
  }

  return result;
}

void sub_659F54(void *a1)
{
  v2 = [a1 navigationController];
  if (!v2)
  {
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = [v2 isNavigationBarHidden];

  v5 = [a1 collectionView];
  if (v4)
  {
    if (!v5)
    {
      return;
    }

    if (qword_93E010 != -1)
    {
      v8 = v5;
      swift_once();
      v5 = v8;
    }

    v6 = &qword_960498;
  }

  else
  {
    if (!v5)
    {
      return;
    }

    if (qword_93E008 != -1)
    {
      v9 = v5;
      swift_once();
      v5 = v9;
    }

    v6 = &qword_960490;
  }

  v7 = v5;
  [v5 setBackgroundColor:*v6];
}

void sub_65A104()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 isNavigationBarHidden];

    if ((v3 & 1) == 0)
    {
      v4 = objc_opt_self();
      v5 = swift_allocObject();
      *(v5 + 16) = v0;
      v10[4] = sub_65AB6C;
      v10[5] = v5;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 1107296256;
      v10[2] = sub_23F0CC;
      v10[3] = &unk_89BA00;
      v6 = _Block_copy(v10);
      v7 = v0;

      [v4 animateWithDuration:v6 animations:UINavigationControllerHideShowBarDuration];
      _Block_release(v6);
      v8 = [v7 navigationController];
      if (v8)
      {
        v9 = v8;
        [v8 setNavigationBarHidden:1 animated:1];
      }

      [v7 setNeedsStatusBarAppearanceUpdate];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_65A28C(void *a1)
{
  v1 = [a1 collectionView];
  if (v1)
  {
    v2 = v1;
    if (qword_93E010 != -1)
    {
      swift_once();
      v1 = v2;
    }

    [v1 setBackgroundColor:qword_960498];
  }
}

unint64_t sub_65A3F0(void *a1)
{
  v2 = v1;
  v4 = sub_7652D0();
  __chkstk_darwin(v4 - 8);
  type metadata accessor for ArtworkCollectionViewCell(0);
  sub_769BD0();
  v5 = sub_769210();

  isa = sub_757550().super.isa;
  v7 = [a1 dequeueReusableCellWithReuseIdentifier:v5 forIndexPath:isa];

  v8 = swift_dynamicCastClassUnconditional();
  v9 = OBJC_IVAR____TtC18ASMessagesProvider25ArtworkCollectionViewCell_artworkView;
  [*&v8[OBJC_IVAR____TtC18ASMessagesProvider25ArtworkCollectionViewCell_artworkView] setContentMode:1];
  v10 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider21GalleryViewController_artwork);
  result = sub_7575C0();
  if ((v10 & 0xC000000000000001) != 0)
  {
    sub_76A770();
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result >= *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_10:
    __break(1u);
    return result;
  }

LABEL_5:
  v12 = v7;
  [v8 frame];
  CGRectGetWidth(v24);
  [v8 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v25.origin.x = v14;
  v25.origin.y = v16;
  v25.size.width = v18;
  v25.size.height = v20;
  CGRectGetHeight(v25);
  sub_765260();
  sub_765260();
  sub_765260();
  [*&v8[v9] contentMode];
  sub_765330();
  v21 = *&v8[v9];
  sub_7652E0();
  sub_7591B0();
  [v21 setContentMode:sub_765140()];
  sub_75DEF0();
  sub_7591F0();
  if (!sub_7651A0())
  {
    sub_396E8();
    sub_76A030();
  }

  sub_759070();

  v22 = *&v8[v9];
  sub_759210();
  sub_14FA38();
  v23 = v22;
  sub_75A050();

  return v8;
}

uint64_t sub_65AB34()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_65AB74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_65ABA0(uint64_t a1)
{
  v2 = sub_BD88(&qword_940A60, &unk_7A18E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v45 - v3;
  v58 = sub_765610();
  v62 = *(v58 - 8);
  __chkstk_darwin(v58);
  v6 = (&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_BD88(&qword_940A68, &qword_79AB60);
  __chkstk_darwin(v7 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v45 - v11;
  __chkstk_darwin(v13);
  v15 = &v45 - v14;
  __chkstk_darwin(v16);
  v61 = &v45 - v17;
  sub_BD88(&qword_940A70, &unk_7A18F0);
  v18 = *(sub_765540() - 8);
  v59 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v51 = v20;
  *(v20 + 16) = xmmword_780120;
  v21 = v20 + v19;
  v22 = a1;
  v63 = a1;
  sub_62634();
  sub_7655D0();
  v63 = 15.0;
  sub_7655D0();
  v63 = 0.0;
  sub_7655D0();
  __asm { FMOV            V0.2D, #16.0 }

  *v6 = _Q0;
  v56 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v28 = *(v62 + 104);
  v62 += 104;
  v57 = v28;
  v29 = v58;
  (v28)(v6);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  LOBYTE(v63) = 0;
  sub_7655D0();
  v63 = 0.0;
  sub_7655D0();
  v60 = v15;
  v54 = v12;
  sub_765500();
  v63 = a1;
  sub_7655D0();
  v63 = 15.0;
  sub_7655D0();
  v63 = 0.0;
  sub_7655D0();
  __asm { FMOV            V0.2D, #20.0 }

  *v6 = _Q0;
  v33 = v56;
  v57(v6, v56, v29);
  LOBYTE(v63) = 0;
  v52 = v4;
  sub_7655D0();
  v63 = 0.0;
  v55 = v9;
  sub_7655D0();
  v34 = v59;
  v53 = v21;
  top = UIEdgeInsetsZero.top;
  v49 = left;
  v50 = bottom;
  sub_765500();
  v46 = 2 * v34;
  v63 = v22;
  sub_7655D0();
  v63 = 20.0;
  sub_7655D0();
  v63 = 0.0;
  sub_7655D0();
  v47 = vdupq_n_s64(0x4041000000000000uLL);
  v35 = v6;
  *v6 = v47;
  v36 = v33;
  v37 = v33;
  v38 = v57;
  v39 = v58;
  v57(v6, v37, v58);
  LOBYTE(v63) = 0;
  sub_7655D0();
  v63 = 0.0;
  sub_7655D0();
  v40 = v46;
  v41 = v35;
  sub_765500();
  v42 = v59;
  v46 = v40 + v59;
  v63 = v22;
  sub_7655D0();
  v63 = 20.0;
  sub_7655D0();
  v63 = 0.0;
  sub_7655D0();
  *v41 = v47;
  v38(v41, v36, v39);
  sub_7697A0();
  LOBYTE(v63) = 0;
  sub_7655D0();
  v63 = 0.0;
  sub_7655D0();
  sub_765500();
  v46 = 4 * v42;
  v63 = v22;
  sub_7655D0();
  v63 = 24.0;
  sub_7655D0();
  v63 = 0.0;
  sub_7655D0();
  v47 = vdupq_n_s64(0x404A000000000000uLL);
  *v41 = v47;
  v43 = v58;
  v38(v41, v56, v58);
  LOBYTE(v63) = 0;
  sub_7655D0();
  v63 = 0.0;
  sub_7655D0();
  sub_765500();
  v63 = v22;
  sub_7655D0();
  v63 = 24.0;
  sub_7655D0();
  v63 = 0.0;
  sub_7655D0();
  *v41 = v47;
  v57(v41, v56, v43);
  LOBYTE(v63) = 0;
  sub_7655D0();
  v63 = 0.0;
  sub_7655D0();
  sub_765500();
  return v51;
}

id sub_65B598(uint64_t a1)
{
  v1 = sub_7656C0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchResultBackgroundView();
  result = swift_dynamicCastClass();
  if (result)
  {
    v6 = result;
    swift_getKeyPath();
    sub_75C7B0();

    sub_765550();
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

char *sub_65B730(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC18ASMessagesProvider27SeparatorSpacerReusableView_separatorInsets];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  *v10 = UIEdgeInsetsZero.top;
  v10[1] = left;
  v10[2] = bottom;
  v10[3] = right;
  v14 = OBJC_IVAR____TtC18ASMessagesProvider27SeparatorSpacerReusableView_lineView;
  *&v4[v14] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  [v15 setUserInteractionEnabled:0];
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v16 = OBJC_IVAR____TtC18ASMessagesProvider27SeparatorSpacerReusableView_lineView;
  v17 = *&v15[OBJC_IVAR____TtC18ASMessagesProvider27SeparatorSpacerReusableView_lineView];
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 separatorColor];
  [v19 setBackgroundColor:v20];

  [v15 addSubview:*&v15[v16]];
  return v15;
}

void sub_65B9A0()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "layoutSubviews");
  sub_75D650();
  sub_769D10();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 traitCollection];
  sub_767500();

  v12.origin.x = v2;
  v12.origin.y = v4;
  v12.size.width = v6;
  v12.size.height = v8;
  CGRectGetMinX(v12);
  v13.origin.x = v2;
  v13.origin.y = v4;
  v13.size.width = v6;
  v13.size.height = v8;
  CGRectGetMidY(v13);
  v14.origin.x = v2;
  v14.origin.y = v4;
  v14.size.width = v6;
  v14.size.height = v8;
  CGRectGetWidth(v14);
  v10 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider27SeparatorSpacerReusableView_lineView];
  sub_75D650();
  sub_769D20();
  [v10 setFrame:?];
}

id sub_65BB80()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for PlayerViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_65BD1C(uint64_t a1, uint64_t a2)
{
  v10.receiver = v2;
  v10.super_class = type metadata accessor for PlayerViewController();
  objc_msgSendSuper2(&v10, "viewDidLoad");
  v3 = [objc_opt_self() defaultCenter];
  v4 = sub_769210();
  v5 = [v2 player];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 currentItem];

    if (v7)
    {
      v9 = v7;
      sub_65C474();
      v7 = sub_76A930();
    }
  }

  else
  {
    v7 = 0;
  }

  [v3 addObserver:v2 selector:"playerItemDidPlayToEndWithNotification:" name:v4 object:v7];

  swift_unknownObjectRelease();
  return result;
}

id sub_65C2C4(uint64_t a1)
{
  v2 = sub_7570A0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = objc_allocWithZone(AVPlayer);
  sub_757040(v8);
  v10 = v9;
  v11 = [v7 initWithURL:v9];

  v12 = [objc_allocWithZone(type metadata accessor for PlayerViewController()) initWithNibName:0 bundle:0];
  [v12 setPlayer:v11];

  (*(v3 + 8))(v6, v2);
  *(v12 + OBJC_IVAR____TtC18ASMessagesProvider20PlayerViewController_autoplay) = 1;

  [v12 setAllowsPictureInPicturePlayback:0];
  [v12 setUpdatesNowPlayingInfoCenter:0];
  [v12 setAllowsVideoFrameAnalysis:0];

  return v12;
}

unint64_t sub_65C474()
{
  result = qword_9605E8;
  if (!qword_9605E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_9605E8);
  }

  return result;
}

unint64_t sub_65C4C4()
{
  result = qword_9413D8;
  if (!qword_9413D8)
  {
    type metadata accessor for BadgeCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9413D8);
  }

  return result;
}

double sub_65C51C()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DA20();
  sub_765630();
  (*(v1 + 8))(v3, v0);
  if (qword_93D210 != -1)
  {
    swift_once();
  }

  v4 = sub_75F070();
  sub_BE38(v4, qword_99DED8);
  v5 = sub_75DA30();
  sub_75EFB0();
  v7 = v6;

  return v7;
}

uint64_t sub_65C67C(char a1)
{
  v2 = v1;
  v4 = sub_BD88(&qword_94F1A8, &qword_793A58);
  __chkstk_darwin(v4 - 8);
  v5 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v5 - 8);
  v6 = sub_764CF0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_760770();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v37 - v12;
  if ((a1 & 1) != 0 && (sub_75BCC0(), v14 = *(v8 + 104), v39 = enum case for ScreenshotsDisplayStyle.noScreenshots(_:), v40 = v8 + 104, v38 = v14, v15.n128_f64[0] = v14(v10), sub_65CB0C(v15), v16 = sub_7691C0(), v17 = *(v8 + 8), v17(v10, v7), v17(v13, v7), (v16 & 1) == 0))
  {
    sub_764F00();
    sub_764F50();
    v37[25] = v18;
    v37[24] = sub_764EE0();
    v19 = sub_764F30();
    v37[22] = v20;
    v37[23] = v19;
    v21 = sub_764EF0();
    v37[20] = v22;
    v37[21] = v21;
    v23 = sub_764F70();
    v37[18] = v24;
    v37[19] = v23;
    v25 = sub_764E20();
    v37[16] = v26;
    v37[17] = v25;
    v27 = sub_764E30();
    v37[14] = v28;
    v37[15] = v27;
    v29 = sub_764EA0();
    v37[12] = v30;
    v37[13] = v29;
    v31 = sub_764ED0();
    v37[10] = v32;
    v37[11] = v31;
    v33 = sub_764F40();
    v37[8] = v34;
    v37[9] = v33;
    v37[7] = sub_764F10();
    v37[6] = sub_764DA0();
    v37[5] = v35;
    v37[4] = sub_764DB0();
    v37[3] = sub_764EC0();
    v37[2] = sub_764D80();
    v37[1] = sub_764DF0();
    sub_764E50();
    sub_75BC50();
    sub_75BCF0();
    sub_75BC70();
    v38(v13, v39, v7);
    sub_75BCD0();
    sub_75BC40();
    sub_75BD00();
    swift_allocObject();
    return sub_75BCE0();
  }

  else
  {
  }

  return v2;
}

unint64_t sub_65CB0C(__n128 a1)
{
  result = qword_954EE8;
  if (!qword_954EE8)
  {
    sub_760770();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_954EE8);
  }

  return result;
}

unint64_t sub_65CB64(uint64_t a1)
{
  v1 = sub_75BC70();
  if (v1 >> 62)
  {
    v4 = sub_76A860();

    if (v4)
    {
      return 1;
    }
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));

    if (v2)
    {
      return 1;
    }
  }

  result = sub_75BCF0();
  if (!(result >> 62))
  {
    if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_7;
    }

LABEL_14:

    return 0;
  }

  v7 = result;
  v8 = sub_76A860();
  result = v7;
  if (!v8)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }
  }

  v5 = sub_765750();

  if (v5 >> 62)
  {
    v6 = sub_76A860();
  }

  else
  {
    v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  }

  return v6 != 0;
}

void sub_65CCB8(uint64_t a1, int a2, void *a3, uint64_t a4, double a5, double a6, double a7)
{
  v8 = v7;
  v15 = sub_7674E0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_767510();
  v73 = *(v74 - 8);
  *&v19 = __chkstk_darwin(v74).n128_u64[0];
  v72 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [v8 contentView];
  [a3 pageMarginInsets];
  v23 = v22;
  [a3 pageMarginInsets];
  [v21 setLayoutMargins:{a5, v23, a7}];

  v24 = *&v8[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_messageTextView];
  v75 = a1;
  sub_764D30();
  v25 = sub_759CE0();
  v26 = sub_759CF0();
  v77 = a4;
  v27 = v24;
  sub_5F0FC8(v26, sub_5F0FC0);
  v29 = v28;

  sub_4EAAA8(v25, v29);

  v76 = a2;
  if (a2)
  {
    (*(v16 + 104))(v18, enum case for Separator.Position.bottom(_:), v15);
    v81[3] = sub_766970();
    v81[4] = &protocol witness table for ZeroDimension;
    sub_B1B4(v81);
    sub_766960();
    v30 = v72;
    sub_7674F0();
    v31 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v32 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator;
    swift_beginAccess();
    v33 = *(v73 + 40);
    v34 = v31;
    v33(&v31[v32], v30, v74);
    swift_endAccess();

    v35 = OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_bottomSeparatorView;
    v36 = *&v8[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_bottomSeparatorView];
    if (v36)
    {
      [v36 removeFromSuperview];
      v37 = *&v8[v35];
    }

    else
    {
      v37 = 0;
    }

    *&v8[v35] = v34;
    v41 = v34;

    v42 = [v8 contentView];
    [v42 addSubview:v41];

    [*&v8[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_roundedBackgroundView] setHidden:1];
    sub_396E8();
    v43 = sub_769FD0();
    v44 = type metadata accessor for DynamicTypeLinkedTextView(0);
    v80.receiver = v27;
    v80.super_class = v44;
    v45 = objc_msgSendSuper2(&v80, "textColor");
    v79.receiver = v27;
    v79.super_class = v44;
    objc_msgSendSuper2(&v79, "setTextColor:", v43);
    v78.receiver = v27;
    v78.super_class = v44;
    v46 = objc_msgSendSuper2(&v78, "textColor");
    if (v46)
    {
      goto LABEL_8;
    }

LABEL_14:
    if (!v45)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v38 = OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_bottomSeparatorView;
  v39 = *&v8[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_bottomSeparatorView];
  if (v39)
  {
    [v39 removeFromSuperview];
    v40 = *&v8[v38];
  }

  else
  {
    v40 = 0;
  }

  *&v8[v38] = 0;

  [*&v8[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_roundedBackgroundView] setHidden:0];
  sub_396E8();
  v43 = sub_769FF0();
  v50 = type metadata accessor for DynamicTypeLinkedTextView(0);
  v84.receiver = v27;
  v84.super_class = v50;
  v45 = objc_msgSendSuper2(&v84, "textColor");
  v83.receiver = v27;
  v83.super_class = v50;
  objc_msgSendSuper2(&v83, "setTextColor:", v43);
  v82.receiver = v27;
  v82.super_class = v50;
  v46 = objc_msgSendSuper2(&v82, "textColor");
  if (!v46)
  {
    goto LABEL_14;
  }

LABEL_8:
  v47 = v46;
  if (!v45)
  {

    goto LABEL_15;
  }

  v48 = v45;
  v49 = sub_76A1C0();

  if ((v49 & 1) == 0)
  {
LABEL_15:
    sub_4E9E24();
    goto LABEL_16;
  }

  v45 = v48;
LABEL_16:

  v43 = v45;
LABEL_17:

  sub_396E8();
  v51 = sub_76A0F0();
  [v27 setTintColor:v51];

  v52 = sub_764D20();
  sub_13CC68(v52);

  v53 = sub_764D40();
  sub_13AFEC(v53);
  v54 = sub_764D50();
  v55 = *&v8[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtworkSymbolConfiguration];
  *&v8[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtworkSymbolConfiguration] = v54;
  v56 = v54;

  sub_13B27C();
  v57 = *(sub_764D10() + 16);

  v58 = OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_buttonRow;
  v59 = *&v8[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_buttonRow];
  if (v57)
  {
    v60 = v77;
    if (v59)
    {
      v61 = *&v8[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_buttonRow];
    }

    else
    {
      type metadata accessor for BannerButtonRow(0);
      v61 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    }

    v63 = v59;
    v64 = sub_764D10();
    sub_3605A0(v64, v60);

    v65 = *&v8[v58];
    if (v65)
    {
      type metadata accessor for BannerButtonRow(0);
      v66 = v61;
      v59 = v65;
      v67 = sub_76A1C0();

      if ((v67 & 1) == 0)
      {
        [v59 removeFromSuperview];
      }
    }

    else
    {
      v68 = v61;
      v59 = 0;
    }

    v69 = *&v8[v58];
    *&v8[v58] = v61;
    v70 = v61;

    sub_13B074(v65);
  }

  else
  {
    if (v59)
    {
      [v59 removeFromSuperview];
      v62 = *&v8[v58];
    }

    else
    {
      v62 = 0;
    }

    *&v8[v58] = 0;

    sub_13B074(v59);
  }

  v8[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_shouldUseArcadeMetrics] = v76 & 1;
  [v8 setNeedsLayout];
  sub_75A110();
  sub_768900();
  sub_768ED0();
  [v8 setNeedsLayout];
}

double sub_65D4AC()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtwork];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtworkView];
    if (v2)
    {
      swift_retain_n();
      v7 = v2;
      v3 = [v0 traitCollection];
      sub_13C02C(v1);
      v5 = v4;

      if (v5)
      {
      }

      else
      {
        sub_765320();
        sub_75A110();
        sub_759210();
        sub_75A090();
        swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_75A040();

        sub_10A2C(v8, &unk_9443A0, &unk_77E240);
      }
    }
  }

  return result;
}

void sub_65D674(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_BD88(&qword_944448, qword_798CC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_765120();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  __chkstk_darwin(v17);
  v19 = &v31 - v18;
  sub_35FDF4(a3, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10A2C(v9, &qword_944448, qword_798CC0);
  }

  else
  {
    v32 = a1;
    v20 = *(v11 + 32);
    v20(v19, v9, v10);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v22 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtwork), v23 = Strong, , v23, v22))
    {
      sub_765380();

      v20(v16, v13, v10);
      sub_65DBD4(&qword_947B80, &type metadata accessor for Artwork.URLTemplate, &protocol conformance descriptor for Artwork.URLTemplate);
      v24 = sub_7691C0();
      v25 = *(v11 + 8);
      v25(v16, v10);
      v25(v19, v10);
      a1 = v32;
      if ((v24 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      (*(v11 + 8))(v19, v10);
      a1 = v32;
    }
  }

  if (a1)
  {
    a1 = [a1 imageWithRenderingMode:2];
  }

  swift_beginAccess();
  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = *(v26 + OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtworkView);
    v28 = v26;
    v29 = v27;

    if (v27)
    {
      v33.value.super.isa = a1;
      v33.is_nil = 0;
      sub_7591D0(v33, v30);
    }
  }
}

void sub_65D9C8(uint64_t *a1, __n128 a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = a2.n128_f64[0];
  v11 = *a1;
  if (sub_764D20())
  {

    v12 = 15.0;
  }

  else
  {
    v12 = 22.0;
  }

  sub_764D10();
  sub_BD88(&unk_954000, qword_786BA0);
  v13 = sub_769490();

  v14 = 15.0;
  if ((v13 & 1) == 0)
  {
    v14 = v12;
  }

  v15 = 9.0;
  if (v13)
  {
    v15 = 12.0;
  }

  *&v16 = v15;
  *(&v16 + 1) = 0x402E000000000000;
  v17 = v15;
  v18 = xmmword_7AB5C0;
  v19 = v12;
  v20 = 0x4022000000000000;
  v21 = v14;
  v22 = xmmword_786B00;
  v23 = xmmword_786B10;
  sub_13C170(v11, &v16, a8, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, v10, a3);
}

uint64_t sub_65DB94()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_65DBD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_65DC1C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for HttpTemplateController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_65DD94(uint64_t a1, __n128 a2)
{
  v94 = a1;
  v76 = sub_758B40();
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v77 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_75F340();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v75 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_760280();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v73 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7687B0();
  __chkstk_darwin(v6 - 8);
  v70 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_944FF0, &unk_783C00);
  __chkstk_darwin(v8 - 8);
  v69 = &v63 - v9;
  v10 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v10 - 8);
  v66 = &v63 - v11;
  v64 = sub_765490();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v65 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_75F450();
  v96 = *(v13 - 8);
  __chkstk_darwin(v13);
  v90 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v14;
  __chkstk_darwin(v15);
  v17 = &v63 - v16;
  v18 = sub_BD88(&qword_960698, &qword_7ABF10);
  v91 = *(v18 - 8);
  __chkstk_darwin(v18);
  v80 = (&v63 - v19);
  v20 = sub_BD88(&unk_9606A0, qword_7ABF18);
  __chkstk_darwin(v20 - 8);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = (&v63 - v24);
  v95 = v2;
  sub_764C60();
  v27 = v26;
  sub_75D5C0();
  v29 = v28;
  if (!v27)
  {
    v30 = 0;
    if (v28)
    {
      goto LABEL_3;
    }

LABEL_5:
    v31 = 0;
    goto LABEL_6;
  }

  v30 = sub_769210();

  if (!v29)
  {
    goto LABEL_5;
  }

LABEL_3:
  v31 = sub_769210();

LABEL_6:
  v32 = [objc_opt_self() alertControllerWithTitle:v30 message:v31 preferredStyle:1];

  v93 = v32;
  sub_65F67C(v32, v94);
  result = sub_75D5A0();
  v34 = result;
  v35 = 0;
  v36 = *(result + 16);
  v79 = OBJC_IVAR____TtC18ASMessagesProvider22HttpTemplateController_hasRequiredParameters;
  v94 = v96 + 16;
  v92 = (v91 + 7);
  v78 = OBJC_IVAR____TtC18ASMessagesProvider22HttpTemplateController_okAction;
  v91 += 6;
  v85 = v96 + 32;
  v83 += 7;
  v82 = &v98;
  v81 = (v96 + 8);
  v89 = v22;
  v88 = v18;
  v87 = result;
  v86 = v36;
  v84 = v25;
  while (1)
  {
    if (v35 == v36)
    {
      v37 = 1;
      v35 = v36;
      goto LABEL_13;
    }

    if ((v35 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v35 >= *(v34 + 16))
    {
      goto LABEL_19;
    }

    v38 = v96;
    v39 = v34 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v35;
    v40 = *(v18 + 48);
    v41 = v80;
    *v80 = v35;
    (*(v38 + 16))(v41 + v40, v39, v13);
    sub_109C4(v41, v22, &qword_960698, &qword_7ABF10);
    v37 = 0;
    ++v35;
LABEL_13:
    (*v92)(v22, v37, 1, v18);
    sub_109C4(v22, v25, &unk_9606A0, qword_7ABF18);
    if ((*v91)(v25, 1, v18) == 1)
    {

      v99 = 0;
      aBlock = 0u;
      v98 = 0u;
      (*(v63 + 104))(v65, enum case for FlowPage.viewController(_:), v64);
      v59 = sub_7570A0();
      (*(*(v59 - 8) + 56))(v66, 1, 1, v59);
      v60 = sub_759E30();
      (*(*(v60 - 8) + 56))(v69, 1, 1, v60);
      v102 = sub_4373D8();
      v101 = v93;
      v61 = v93;
      sub_768790();
      (*(v67 + 104))(v73, enum case for FlowPresentationContext.presentModal(_:), v68);
      (*(v71 + 104))(v75, enum case for FlowAnimationBehavior.infer(_:), v72);
      (*(v74 + 104))(v77, enum case for FlowOrigin.inapp(_:), v76);
      sub_768CE0();
      sub_758B20();
      swift_allocObject();
      v62 = sub_758AD0();

      return v62;
    }

    v42 = *v25;
    v43 = *(v18 + 48);
    v44 = v96;
    v45 = *(v96 + 32);
    v45(v17, v25 + v43, v13);
    v46 = v13;
    v47 = v90;
    (*(v44 + 16))(v90, v17, v46);
    v48 = *(v44 + 80);
    v49 = v17;
    v50 = (v48 + 24) & ~v48;
    v51 = (v83 + v50) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    *(v52 + 16) = v42;
    v53 = v47;
    v13 = v46;
    v45((v52 + v50), v53, v46);
    v54 = v95;
    *(v52 + v51) = v95;
    v99 = sub_660120;
    v100 = v52;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v98 = sub_6B0344;
    *(&v98 + 1) = &unk_89BB90;
    v55 = _Block_copy(&aBlock);
    v56 = v54;
    v17 = v49;

    [v93 addTextFieldWithConfigurationHandler:v55];
    _Block_release(v55);
    if (sub_75F3F0())
    {
      v57 = v95;
      v95[v79] = 1;
      v58 = *&v57[v78];
      if (v58)
      {
        [v58 setEnabled:0];
      }
    }

    result = (*v81)(v49, v46);
    v18 = v88;
    v22 = v89;
    v25 = v84;
    v34 = v87;
    v36 = v86;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_65E908(uint64_t a1)
{
  v56 = a1;
  v2 = sub_BD88(&unk_955F90, qword_79E810);
  v54 = *(v2 - 8);
  __chkstk_darwin(v2);
  v53 = v50 - v3;
  v4 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v4 - 8);
  v55 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v52 = v50 - v7;
  v59 = sub_7687B0();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75F450();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v62 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_7614C0();
  v60 = *(v12 - 8);
  v61 = v12;
  __chkstk_darwin(v12);
  v14 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10DD04(_swiftEmptyArrayStorage);
  sub_10DD04(_swiftEmptyArrayStorage);
  sub_3DF774(_swiftEmptyArrayStorage);
  sub_10DD04(_swiftEmptyArrayStorage);
  v63 = v14;
  v15 = v1;
  sub_7614B0();
  v16 = OBJC_IVAR____TtC18ASMessagesProvider22HttpTemplateController_textFields;
  swift_beginAccess();
  v17 = *(v15 + v16);
  if (v17 >> 62)
  {
    goto LABEL_27;
  }

  v18 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
  v19 = &unk_960000;
  if (v18)
  {
    while (v18 >= 1)
    {
      v51 = v2;
      v20 = v19[200];
      v50[1] = v15;
      v21 = *(v15 + v20);
      v65 = v17 & 0xC000000000000001;
      v66 = v21;
      v64 = v10 + 16;
      v22 = (v10 + 8);

      v15 = 0;
      v2 = v62;
      while (1)
      {
        v23 = v65 ? sub_76A770() : *(v17 + 8 * v15 + 32);
        v24 = v23;
        v25 = sub_75D5A0();
        v26 = [v24 tag];
        if ((v26 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v26 >= *(v25 + 16))
        {
          goto LABEL_26;
        }

        (*(v10 + 16))(v2, v25 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v26, v9);

        v27 = [v24 text];
        if (v27)
        {
          v28 = v27;
          sub_769240();

          v2 = v62;
          sub_7614A0();

          (*v22)(v2, v9);
        }

        else
        {
          (*v22)(v2, v9);
        }

        if (v18 == ++v15)
        {

          v2 = v51;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      v18 = sub_76A860();
      v19 = &unk_960000;
      if (!v18)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    swift_once();
    v30 = sub_768FF0();
    sub_BE38(v30, qword_9A0430);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77E280;
    sub_768540();
    swift_getErrorValue();
    v31 = v70;
    v32 = v71;
    v68 = v71;
    v33 = sub_B1B4(v67);
    (*(*(v32 - 8) + 16))(v33, v31, v32);
    sub_7685E0();
    sub_10A2C(v67, &unk_93FBD0, &qword_77DFA0);
    sub_768EA0();

    v34 = sub_75D590();
    if (v34)
    {
      v35 = v34;
      v36 = sub_BD88(&unk_93F630, &unk_77E230);
      v37 = v55;
      sub_768860();
      v38 = *(v36 - 8);
      if ((*(v38 + 48))(v37, 1, v36) == 1)
      {
        (*(v60 + 8))(v63, v61);

        v39 = v37;
        return sub_10A2C(v39, &unk_93F980, &qword_77EDA0);
      }

      v68 = sub_764C80();
      v69 = sub_660030(&qword_95AB70, &type metadata accessor for Action);
      v67[0] = v35;
      v46 = v54;
      v47 = v53;
      (*(v54 + 104))(v53, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v2);

      sub_768980();

      (*(v46 + 8))(v47, v2);
      (*(v60 + 8))(v63, v61);
      sub_BEB8(v67);
      return (*(v38 + 8))(v37, v36);
    }

    else
    {
      (*(v60 + 8))(v63, v61);
    }
  }

  else
  {
LABEL_15:
    v29 = v57;
    sub_768790();
    v40 = sub_75D580();
    (*(v58 + 8))(v29, v59);
    v41 = sub_BD88(&unk_93F630, &unk_77E230);
    v42 = v52;
    sub_768860();
    v43 = *(v41 - 8);
    v44 = (*(v43 + 48))(v42, 1, v41);
    if (v44 == 1)
    {
      (*(v60 + 8))(v63, v61);

      v39 = v42;
      return sub_10A2C(v39, &unk_93F980, &qword_77EDA0);
    }

    v68 = sub_758C00();
    v69 = sub_660030(&unk_95AB50, &type metadata accessor for HttpAction);
    v67[0] = v40;
    v48 = v54;
    v49 = v53;
    (*(v54 + 104))(v53, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v2);

    sub_768980();

    (*(v48 + 8))(v49, v2);
    (*(v60 + 8))(v63, v61);
    sub_BEB8(v67);
    return (*(v43 + 8))(v42, v41);
  }
}

uint64_t sub_65F3CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_75F430();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 setTag:{a2, v9}];
  sub_75F420();
  if (v12)
  {
    v13 = sub_769210();
  }

  else
  {
    v13 = 0;
  }

  [a1 setPlaceholder:v13];

  sub_75F440();
  v14 = (*(v8 + 88))(v11, v7);
  if (v14 == enum case for HttpTemplateParameter.InputType.text(_:))
  {
    goto LABEL_5;
  }

  if (v14 == enum case for HttpTemplateParameter.InputType.email(_:))
  {
    v15 = 7;
  }

  else if (v14 == enum case for HttpTemplateParameter.InputType.phoneNumber(_:))
  {
    v15 = 5;
  }

  else
  {
    if (v14 != enum case for HttpTemplateParameter.InputType.decimalPad(_:))
    {
      (*(v8 + 8))(v11, v7);
LABEL_5:
      v15 = 0;
      goto LABEL_12;
    }

    v15 = 8;
  }

LABEL_12:
  [a1 setKeyboardType:v15];
  [a1 setDelegate:a4];
  v16 = [objc_opt_self() defaultCenter];
  [v16 addObserver:a4 selector:"textFieldDidChange:" name:UITextFieldTextDidChangeNotification object:a1];

  v17 = OBJC_IVAR____TtC18ASMessagesProvider22HttpTemplateController_textFields;
  swift_beginAccess();
  v18 = a1;
  sub_769440();
  if (*(&dword_10 + (*(a4 + v17) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(a4 + v17) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();
  return swift_endAccess();
}

void sub_65F67C(void *a1, uint64_t a2)
{
  v15._countAndFlagsBits = 0x432E6E6F69746341;
  v15._object = 0xED00006C65636E61;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_75B750(v15, v17);
  v5 = sub_769210();

  v6 = objc_opt_self();
  v7 = [v6 actionWithTitle:v5 style:0 handler:0];

  [a1 addAction:v7];
  v16._countAndFlagsBits = 0x4F2E6E6F69746341;
  v16._object = 0xE90000000000004BLL;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_75B750(v16, v18);
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = a2;
  v9 = v2;

  v10 = sub_769210();

  v14[4] = sub_65FFF0;
  v14[5] = v8;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_6B0344;
  v14[3] = &unk_89BB40;
  v11 = _Block_copy(v14);

  v12 = [v6 actionWithTitle:v10 style:0 handler:v11];
  _Block_release(v11);

  [a1 addAction:v12];
  [a1 setPreferredAction:v12];
  v13 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider22HttpTemplateController_okAction];
  *&v9[OBJC_IVAR____TtC18ASMessagesProvider22HttpTemplateController_okAction] = v12;
}

id sub_65F89C(__n128 a1)
{
  v33 = sub_75F450();
  v2 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC18ASMessagesProvider22HttpTemplateController_textFields;
  swift_beginAccess();
  v31 = *(v1 + v4);
  if (!(v31 >> 62))
  {
    v30 = *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8));
    if (v30)
    {
      goto LABEL_3;
    }

LABEL_21:
    result = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22HttpTemplateController_okAction);
    if (result)
    {
      return [result setEnabled:1];
    }

    return result;
  }

LABEL_28:
  v30 = sub_76A860();
  if (!v30)
  {
    goto LABEL_21;
  }

LABEL_3:
  v5 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22HttpTemplateController_templateAction);
  v6 = v31 & 0xC000000000000001;
  v25 = v1;
  v26 = v31 & 0xFFFFFFFFFFFFFF8;
  v28 = (v2 + 8);
  v29 = v5;

  v7 = 0;
  v8 = &selRef_setInterGroupSpacing_;
  v27 = v2;
  while (1)
  {
    if (v6)
    {
      v9 = sub_76A770();
    }

    else
    {
      if (v7 >= *(v26 + 16))
      {
        goto LABEL_27;
      }

      v9 = *(v31 + 8 * v7 + 32);
    }

    v10 = v9;
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v1 = sub_75D5A0();
    v12 = [v10 v8[248]];
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_25;
    }

    if (v12 >= v1[2])
    {
      goto LABEL_26;
    }

    v13 = v32;
    (*(v2 + 16))(v32, v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v12, v33);

    v1 = v13;
    v14 = v10;
    if (sub_75F3F0())
    {
      v15 = [v10 text];
      if (!v15)
      {
        break;
      }

      v1 = v15;
      v16 = sub_769240();
      v17 = v8;
      v19 = v18;

      v20 = HIBYTE(v19) & 0xF;
      v21 = v16 & 0xFFFFFFFFFFFFLL;
      v2 = v27;
      v22 = (v19 & 0x2000000000000000) == 0;
      v8 = v17;
      v14 = v10;
      if (v22)
      {
        v20 = v21;
      }

      if (!v20)
      {
        break;
      }
    }

    (*v28)(v32, v33);
    ++v7;
    if (v11 == v30)
    {

      v1 = v25;
      goto LABEL_21;
    }
  }

  v23 = *(v25 + OBJC_IVAR____TtC18ASMessagesProvider22HttpTemplateController_okAction);
  if (v23)
  {
    [v23 setEnabled:0];
  }

  return (*v28)(v32, v33);
}

void sub_65FBC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v9 = sub_75F450();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_75D5A0();
  v14 = [a1 tag];
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v14 >= *(v13 + 16))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  (*(v10 + 16))(v12, v13 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v14, v9);

  sub_75F400();
  if ((v15 & 1) == 0)
  {
    v16 = [a1 text];
    if (v16)
    {
      v17 = v16;
      v18 = sub_769210();
      v19 = [v17 stringByReplacingCharactersInRange:a2 withString:{a3, v18}];

      if (v19)
      {
        [v19 length];

        (*(v10 + 8))(v12, v9);
        return;
      }

      goto LABEL_11;
    }
  }

  (*(v10 + 8))(v12, v9);
}

uint64_t sub_65FFB0()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_660018(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_660030(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t sub_660084(__n128 a1)
{
  v2 = sub_75F450();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v6 + 8, v4 | 7);
}

uint64_t sub_660120(void *a1, __n128 a2)
{
  v4 = *(sub_75F450() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_65F3CC(a1, v6, v2 + v5, v7);
}

double sub_660204()
{
  v0 = sub_BD88(&qword_960788, &unk_7ABFC0);
  sub_161DC(v0, qword_9606F8);
  sub_BE38(v0, qword_9606F8);
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  sub_7592D0();
  return result;
}

char *sub_6602B8()
{
  ObjectType = swift_getObjectType();
  v26 = sub_768C60();
  v2 = *(v26 - 8);
  __chkstk_darwin(v26);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider27ProductRatingsHistogramView_starViews] = _swiftEmptyArrayStorage;
  *&v31 = _swiftEmptyArrayStorage;
  sub_76A7C0();
  v8 = type metadata accessor for ProductRatingsHistogramProgressBar();
  [objc_allocWithZone(v8) init];
  sub_76A7A0();
  sub_76A7D0();
  sub_76A7E0();
  sub_76A7B0();
  [objc_allocWithZone(v8) init];
  sub_76A7A0();
  sub_76A7D0();
  sub_76A7E0();
  sub_76A7B0();
  [objc_allocWithZone(v8) init];
  sub_76A7A0();
  sub_76A7D0();
  sub_76A7E0();
  sub_76A7B0();
  [objc_allocWithZone(v8) init];
  sub_76A7A0();
  sub_76A7D0();
  sub_76A7E0();
  sub_76A7B0();
  [objc_allocWithZone(v8) init];
  sub_76A7A0();
  sub_76A7D0();
  sub_76A7E0();
  sub_76A7B0();
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider27ProductRatingsHistogramView_barViews] = v31;
  v33.receiver = v0;
  v33.super_class = ObjectType;
  v24 = ObjectType;
  v9 = objc_msgSendSuper2(&v33, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider27ProductRatingsHistogramView_barViews];
  if (v10 >> 62)
  {
    goto LABEL_19;
  }

  v11 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
  while (1)
  {
    v28 = v9;
    v25 = v10;

    if (!v11)
    {
      break;
    }

    v12 = 0;
    v13 = v26;
    v29 = v25 & 0xC000000000000001;
    v27 = v25 & 0xFFFFFFFFFFFFFF8;
    v14 = v25 + 32;
    v15 = (v2 + 8);
    while (!__OFSUB__(v11--, 1))
    {
      if (v29)
      {
        v9 = sub_76A770();
      }

      else
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_16;
        }

        if (v11 >= *(v27 + 16))
        {
          goto LABEL_18;
        }

        v9 = *&v14[8 * v11];
      }

      v2 = v9;
      v10 = (v12 + 1);
      if (__OFADD__(v12, 1))
      {
        goto LABEL_17;
      }

      v31 = 0u;
      v32 = 0u;
      memset(v30, 0, sizeof(v30));
      sub_768C10();
      sub_BDD0(v30);
      sub_BDD0(&v31);
      *&v31 = v12 + 1;
      v17 = sub_76A910();
      *(&v32 + 1) = &type metadata for String;
      *&v31 = v17;
      *(&v31 + 1) = v18;
      sub_768C40();
      v19 = *v15;
      (*v15)(v4, v13);
      sub_BDD0(&v31);
      v10 = v2;
      sub_769E70();
      v19(v7, v13);
      [v28 addSubview:v2];

      ++v12;
      if (!v11)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v23 = v9;
    v11 = sub_76A860();
    v9 = v23;
  }

LABEL_14:

  v20 = v28;
  sub_660798();
  sub_BD88(&qword_9477F0, qword_780200);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_77B6D0;
  *(v21 + 32) = sub_767890();
  *(v21 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(swift_allocObject() + 16) = v24;
  sub_769F40();

  swift_unknownObjectRelease();

  return v20;
}

id sub_660798()
{
  sub_76A7C0();
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  if (qword_93E030 != -1)
  {
    swift_once();
  }

  v0 = 0;
  do
  {
    v69 = v0;
    v3 = *(&off_87F390 + v0 + 32);
    v4 = sub_BD88(&qword_960788, &unk_7ABFC0);
    sub_BE38(v4, qword_9606F8);
    v71 = v67;
    v5 = v67;
    sub_7592B0();
    v65 = v5;

    v6 = v72;
    v7 = type metadata accessor for RatingView();
    v8 = objc_allocWithZone(v7);
    *&v8[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_rating] = 0;
    *&v8[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarColor] = 0;
    v9 = &v8[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starPadding];
    *v9 = 0;
    v9[8] = 1;
    *&v8[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_maxNumberOfStars] = v3;
    if (qword_93D100 != -1)
    {
      swift_once();
    }

    v10 = qword_9552A8;
    *&v8[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starColor] = qword_9552A8;
    v8[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starSize] = v6;
    *v9 = 0;
    v9[8] = 1;
    v8[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_useCase] = 1;
    objc_allocWithZone(type metadata accessor for StarRow());
    v11 = v10;
    *&v8[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_filledStarRowView] = sub_43DC44(v3, 1, v6, 0, 1, 0, 1);
    v8[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_fillEmptyStars] = 0;
    *&v8[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarRowView] = 0;
    v70.receiver = v8;
    v70.super_class = v7;
    v12 = objc_msgSendSuper2(&v70, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    v13 = v12;
    v14 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarRowView];
    v68 = OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarRowView;
    if (!v14)
    {
      v17 = v12;
      goto LABEL_19;
    }

    v15 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarColor];
    if (v15)
    {
      v16 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarColor];
    }

    else
    {
      v16 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starColor];
    }

    v18 = *(v14 + OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starColor);
    *(v14 + OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starColor) = v16;
    if (!v18)
    {
      v24 = v15;
      v25 = v16;
      v26 = v13;
      v21 = 0;
LABEL_17:
      sub_43CE14();

      goto LABEL_18;
    }

    v19 = v15;
    v20 = v16;
    v21 = v18;
    v22 = v13;
    v23 = sub_76A1C0();

    if ((v23 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_18:
LABEL_19:
    v27 = OBJC_IVAR____TtC18ASMessagesProvider10RatingView_filledStarRowView;
    v28 = *&v13[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_filledStarRowView];
    v29 = OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starColor;
    v30 = *&v13[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starColor];
    v31 = *(v28 + OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starColor);
    *(v28 + OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starColor) = v30;
    if (!v31)
    {
      v35 = v30;
      v33 = 0;
LABEL_23:
      sub_43CE14();
      v32 = v30;
      goto LABEL_24;
    }

    v32 = v30;
    v33 = v31;
    v34 = sub_76A1C0();

    if ((v34 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_24:

    v36 = *&v13[v27];
    v37 = OBJC_IVAR____TtC18ASMessagesProvider10RatingView_rating;
    v38 = *&v36[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_currentRating];
    *&v36[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_currentRating] = *&v13[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_rating];
    v39 = v36;
    sub_43C36C(v38);

    if (*&v13[v68])
    {
      [v13 addSubview:?];
    }

    [v13 addSubview:{*&v13[v27], v65}];

    v40 = v3;
    v41 = *&v13[v37];
    *&v13[v37] = v3;
    if (v41 != v3)
    {
      if (v3 < 0)
      {
        v42 = 0.0;
      }

      else
      {
        v42 = *&v13[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_maxNumberOfStars];
        if (v42 >= v40)
        {
          goto LABEL_32;
        }
      }

      *&v13[v37] = v42;
      v40 = v42;
LABEL_32:
      v43 = *&v13[v27];
      v44 = *(v43 + OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_currentRating);
      *(v43 + OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_currentRating) = v40;
      sub_43C36C(v44);
    }

    v45 = sub_769FD0();
    v46 = *&v13[v29];
    *&v13[v29] = v45;
    v2 = v45;
    if (sub_76A1C0())
    {
      v1 = v2;
      v2 = v46;
      goto LABEL_5;
    }

    v47 = *&v13[v68];
    if (v47)
    {
      v48 = *&v13[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarColor];
      if (v48)
      {
        v49 = *&v13[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarColor];
      }

      else
      {
        v49 = *&v13[v29];
      }

      v50 = *(v47 + OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starColor);
      *(v47 + OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starColor) = v49;
      if (v50)
      {
        v51 = v48;
        v52 = v49;
        v50 = v50;
        v53 = sub_76A1C0();

        if (v53)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v54 = v48;
        v55 = v49;
      }

      sub_43CE14();
      v52 = v49;
LABEL_43:
    }

    v56 = *&v13[v27];
    v57 = *&v13[v29];
    v58 = *(v56 + OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starColor);
    *(v56 + OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starColor) = v57;
    if (v58)
    {
      v59 = v57;
      v1 = v58;
      v60 = sub_76A1C0();

      if (v60)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v61 = v57;
      v1 = 0;
    }

    sub_43CE14();
    v59 = v57;
LABEL_49:

LABEL_5:
    sub_76A7A0();
    sub_76A7D0();
    sub_76A7E0();
    sub_76A7B0();
    v0 = v69 + 8;
  }

  while (v69 != 32);
  v62 = OBJC_IVAR____TtC18ASMessagesProvider27ProductRatingsHistogramView_starViews;
  swift_beginAccess();
  v63 = *&v66[v62];
  *&v66[v62] = _swiftEmptyArrayStorage;
  sub_660EC8(v63);

  return [v66 setNeedsLayout];
}

void sub_660DDC(void *a1, __n128 a2)
{
  v3 = sub_7699D0() & 1;
  v4 = [a1 traitCollection];
  v5 = sub_7699D0() & 1;

  if (v3 != v5)
  {
    sub_660798();
  }
}

void sub_660EC8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_76A860();
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    goto LABEL_25;
  }

  for (i = 0; i != v2; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = sub_76A770();
    }

    else
    {
      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    [v4 removeFromSuperview];
  }

LABEL_10:
  v6 = OBJC_IVAR____TtC18ASMessagesProvider27ProductRatingsHistogramView_starViews;
  swift_beginAccess();
  v7 = *&v13[v6];
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
LABEL_25:
    __break(1u);
    return;
  }

  v9 = 0;
  do
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = sub_76A770();
    }

    else
    {
      v10 = *(v7 + 8 * v9 + 32);
    }

    v11 = v10;
    if (qword_93E038 != -1)
    {
      swift_once();
    }

    ++v9;
    v12 = qword_960710;
    [v11 setMinimumContentSizeCategory:qword_960710];
    [v11 setMaximumContentSizeCategory:v12];
    [v13 addSubview:v11];
  }

  while (v8 != v9);
}

void *sub_6610BC(void *a1, double a2, double a3)
{
  v7 = OBJC_IVAR____TtC18ASMessagesProvider27ProductRatingsHistogramView_starViews;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (v8 >> 62)
  {
    result = sub_76A860();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
      return result;
    }
  }

  if ((v8 & 0xC000000000000001) != 0)
  {

    v10 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v10 = *(v8 + 32);
  }

  sub_7671D0();
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_77D9F0;
  *(v11 + 32) = a1;
  v12 = a1;
  v13 = sub_7671E0();
  [v10 measurementsWithFitting:v13 in:{a2, a3}];

  if (qword_93E018 != -1)
  {
    swift_once();
  }

  v14 = sub_BD88(&qword_940AD0, &unk_78F910);
  sub_BE38(v14, qword_9606B0);
  sub_7592A0();
  if (qword_93E020 != -1)
  {
    swift_once();
  }

  sub_BE38(v14, qword_9606C8);
  return sub_7592A0();
}

void sub_661308(id a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v10 = OBJC_IVAR____TtC18ASMessagesProvider27ProductRatingsHistogramView_starViews;
  swift_beginAccess();
  v11 = *&v6[v10];
  if (v11 >> 62)
  {
LABEL_24:
    if (sub_76A860())
    {
LABEL_3:
      if ((v11 & 0xC000000000000001) != 0)
      {

        v12 = sub_76A770();
      }

      else
      {
        if (!*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
LABEL_28:
          __break(1u);
          return;
        }

        v12 = *(v11 + 32);
      }

      sub_7671D0();
      sub_BD88(&unk_93F5C0, &unk_77C600);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_77D9F0;
      *(v13 + 32) = a1;
      v14 = a1;
      v15 = sub_7671E0();
      [v12 measurementsWithFitting:v15 in:{a4, a5}];
      v17 = v16;

      [v6 setFrame:{a2, a3, a4, a5}];
      if (qword_93E018 != -1)
      {
        swift_once();
      }

      v18 = sub_BD88(&qword_940AD0, &unk_78F910);
      sub_BE38(v18, qword_9606B0);
      sub_7592A0();
      if (qword_93E020 != -1)
      {
        swift_once();
      }

      sub_BE38(v18, qword_9606C8);
      sub_7592A0();
      if (qword_93E028 != -1)
      {
        swift_once();
      }

      a1 = sub_BE38(v18, qword_9606E0);
      sub_7592A0();
      v19 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider27ProductRatingsHistogramView_barViews];
      if ((v19 & 0xC000000000000001) != 0 || *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)) >= 5uLL)
      {
        v20 = v17 - v33;
        v21 = v33 + v33;
        v11 = 4;
        v22 = 0.0;
        while (1)
        {
          swift_beginAccess();
          v25 = *&v6[v10];
          if ((v25 & 0xC000000000000001) != 0)
          {
            v26 = sub_76A770();
          }

          else
          {
            if (v11 - 4 >= *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)))
            {
              __break(1u);
              goto LABEL_24;
            }

            v26 = *(v25 + 8 * v11);
          }

          v27 = v26;
          swift_endAccess();
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_77D9F0;
          *(v28 + 32) = v14;
          v29 = v14;
          v30 = sub_7671E0();
          [v27 measurementsWithFitting:v30 in:{a4, a5}];

          a1 = v27;
          [v6 bounds];
          sub_769CA0();
          [a1 setFrame:?];

          if ((v19 & 0xC000000000000001) != 0)
          {
            v23 = sub_76A770();
          }

          else
          {
            v23 = *(v19 + 8 * v11);
          }

          v22 = v21 + v22;
          v24 = v23;
          v34.origin.x = a2;
          v34.origin.y = a3;
          v34.size.width = a4;
          v34.size.height = a5;
          CGRectGetWidth(v34);
          [v6 bounds];
          sub_769CA0();
          [v24 setFrame:?];

          v20 = v21 + v20;
          if (++v11 == 9)
          {
            return;
          }
        }
      }

      goto LABEL_28;
    }
  }

  else if (*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }
}

char *sub_6619BC()
{
  *&v0[OBJC_IVAR____TtC18ASMessagesProviderP33_8AD2951FE1FA321B357D83437061CC0F34ProductRatingsHistogramProgressBar_progress] = 0;
  v1 = [objc_allocWithZone(UIView) init];
  *&v0[OBJC_IVAR____TtC18ASMessagesProviderP33_8AD2951FE1FA321B357D83437061CC0F34ProductRatingsHistogramProgressBar_progressView] = v1;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for ProductRatingsHistogramProgressBar();
  v2 = objc_msgSendSuper2(&v9, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v2 setClipsToBounds:1];
  v3 = [objc_opt_self() systemGray5Color];
  [v2 setBackgroundColor:v3];

  v4 = OBJC_IVAR____TtC18ASMessagesProviderP33_8AD2951FE1FA321B357D83437061CC0F34ProductRatingsHistogramProgressBar_progressView;
  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProviderP33_8AD2951FE1FA321B357D83437061CC0F34ProductRatingsHistogramProgressBar_progressView];
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v6 = v5;
  v7 = sub_769FD0();
  [v6 setBackgroundColor:v7];

  [v2 addSubview:*&v2[v4]];
  return v2;
}

void sub_661BA0()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for ProductRatingsHistogramProgressBar();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProviderP33_8AD2951FE1FA321B357D83437061CC0F34ProductRatingsHistogramProgressBar_progressView];
  [v0 bounds];
  [v0 bounds];
  [v0 bounds];
  [v0 bounds];
  v2 = [v0 traitCollection];
  [v0 bounds];
  sub_769CA0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [v1 setFrame:{v4, v6, v8, v10}];
  v11 = [v0 layer];
  [v0 bounds];
  [v11 setCornerRadius:CGRectGetHeight(v14) * 0.5];

  v12 = [v1 layer];
  [v0 bounds];
  [v12 setCornerRadius:CGRectGetHeight(v15) * 0.5];
}

id sub_661DD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductRatingsHistogramProgressBar();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_661E3C(uint64_t a1)
{
  if (qword_93E038 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_960710;
  sub_10974(a1, *(a1 + 24));
  v2 = v1;
  return sub_767670();
}

double sub_661EC8(uint64_t a1, double a2)
{
  v4 = sub_759950();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93E030 != -1)
  {
    swift_once();
  }

  v8 = sub_BD88(&qword_960788, &unk_7ABFC0);
  sub_BE38(v8, qword_9606F8);
  sub_7592A0();
  v9 = v28;
  v10 = sub_769A20();
  v26[1] = a1;
  if (v9 <= 1)
  {
    if (v9)
    {
      v12 = &UIFontTextStyleCaption2;
    }

    else
    {
      v12 = &UIFontTextStyleHeadline;
    }

    v11 = [objc_opt_self() configurationWithTextStyle:*v12 scale:2];
  }

  else if (v9 == 2)
  {
    v11 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  }

  else if (v9 == 3)
  {
    v11 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:10.0];
  }

  else
  {
    v11 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:6.0];
  }

  v13 = v11;
  v27 = *(v5 + 104);
  v27(v7, enum case for SystemImage.star(_:), v4);
  v26[0] = v10;
  v14 = [v13 configurationWithTraitCollection:v10];
  v15 = sub_759930();

  v16 = *(v5 + 8);
  v16(v7, v4);
  [v15 contentInsets];
  [v15 contentInsets];
  [v15 size];
  [v15 contentInsets];
  [v15 contentInsets];
  [v15 size];

  if (v9 <= 1)
  {
    if (v9)
    {
      v18 = &UIFontTextStyleCaption2;
    }

    else
    {
      v18 = &UIFontTextStyleHeadline;
    }

    v17 = [objc_opt_self() configurationWithTextStyle:*v18 scale:2];
  }

  else if (v9 == 2)
  {
    v17 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  }

  else if (v9 == 3)
  {
    v17 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:10.0];
  }

  else
  {
    v17 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:6.0];
  }

  v19 = v27;
  v20 = v17;
  v19(v7, enum case for SystemImage.starFill(_:), v4);
  v21 = v26[0];
  v22 = [v20 configurationWithTraitCollection:v26[0]];
  v23 = sub_759930();

  v16(v7, v4);
  sub_76A130();
  [v23 contentInsets];

  if (qword_93E018 != -1)
  {
    swift_once();
  }

  v24 = sub_BD88(&qword_940AD0, &unk_78F910);
  sub_BE38(v24, qword_9606B0);
  sub_7592A0();
  if (qword_93E020 != -1)
  {
    swift_once();
  }

  sub_BE38(v24, qword_9606C8);
  sub_7592A0();
  return a2;
}

uint64_t sub_662468()
{
  result = JUScreenClassHasRoundedCorners();
  v1 = 8.0;
  if (result)
  {
    v1 = 27.0;
  }

  qword_960790 = *&v1;
  return result;
}

BOOL sub_662498()
{
  v1 = *(v0 + 16);
  [v1 frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v1 superview];
  if (v10)
  {
    v65 = v9;
    v66 = v7;
    v68 = v5;
    v70 = v3;
    v11 = v10;
    [v10 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    [v1 frame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v72.origin.x = v13;
    v72.origin.y = v15;
    v72.size.width = v17;
    v72.size.height = v19;
    Height = CGRectGetHeight(v72);
    v73.origin.x = v21;
    v73.origin.y = v23;
    v73.size.width = v25;
    v73.size.height = v27;
    v29 = Height - CGRectGetHeight(v73);
    if (qword_93E040 != -1)
    {
      swift_once();
    }

    v30 = v29 - *&qword_960790;
    v5 = v68;
    v3 = v70;
    v9 = v65;
    v7 = v66;
  }

  else
  {
    v21 = 0.0;
    v30 = 0.0;
    v25 = 0.0;
    v27 = 0.0;
  }

  v74.origin.x = v3;
  v74.origin.y = v5;
  v74.size.width = v7;
  v74.size.height = v9;
  v31 = v21;
  v32 = v25;
  v33 = v27;
  if (CGRectEqualToRect(v74, *(&v30 - 1)))
  {
    return 0;
  }

  [v1 frame];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = [v1 superview];
  if (v43)
  {
    v67 = v40;
    v69 = v38;
    v71 = v36;
    v44 = v43;
    [v43 bounds];
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;

    [v1 frame];
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v75.origin.x = v46;
    v75.origin.y = v48;
    v75.size.width = v50;
    v75.size.height = v52;
    v59 = CGRectGetHeight(v75);
    if (qword_93E040 != -1)
    {
      v64 = v59;
      swift_once();
      v59 = v64;
    }

    v60 = v59 + *&qword_960790;
    v38 = v69;
    v36 = v71;
    v40 = v67;
  }

  else
  {
    v54 = 0;
    v60 = 0.0;
    v56 = 0;
    v58 = 0;
  }

  v76.origin.x = v36;
  v76.origin.y = v38;
  v76.size.width = v40;
  v76.size.height = v42;
  v61 = v54;
  v62 = v56;
  v63 = v58;
  return !CGRectEqualToRect(v76, *(&v60 - 1));
}

void sub_662730(char a1, char a2)
{
  if (*(v2 + 72) == (a1 & 1) && !sub_662498())
  {
    return;
  }

  v5 = *(v2 + 16);
  v6 = [v5 superview];
  if (a1)
  {
    if (v6)
    {
      v7 = v6;
      [v6 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      [v5 frame];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v48.origin.x = v9;
      v48.origin.y = v11;
      v48.size.width = v13;
      v48.size.height = v15;
      Height = CGRectGetHeight(v48);
      v49.origin.x = v17;
      v49.origin.y = v19;
      v49.size.width = v21;
      v49.size.height = v23;
      v25 = Height - CGRectGetHeight(v49);
      if (qword_93E040 != -1)
      {
        swift_once();
      }

      v26 = v25 - *&qword_960790;
      goto LABEL_13;
    }
  }

  else if (v6)
  {
    v27 = v6;
    [v6 bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    [v5 frame];
    v17 = v36;
    v21 = v37;
    v23 = v38;
    v50.origin.x = v29;
    v50.origin.y = v31;
    v50.size.width = v33;
    v50.size.height = v35;
    v39 = CGRectGetHeight(v50);
    if (qword_93E040 != -1)
    {
      v46 = v39;
      swift_once();
      v39 = v46;
    }

    v26 = v39 + *&qword_960790;
    goto LABEL_13;
  }

  v17 = 0.0;
  v26 = 0.0;
  v21 = 0.0;
  v23 = 0.0;
LABEL_13:
  v40 = swift_allocObject();
  *(v40 + 16) = v2;
  *(v40 + 24) = v17;
  *(v40 + 32) = v26;
  *(v40 + 40) = v21;
  *(v40 + 48) = v23;
  if (a2)
  {
    v41 = objc_opt_self();
    v47[4] = sub_662C80;
    v47[5] = v40;
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 1107296256;
    v47[2] = sub_23F0CC;
    v47[3] = &unk_89BC08;
    v42 = _Block_copy(v47);

    [v41 _animateUsingSpringWithTension:1 friction:v42 interactive:0 animations:120.0 completion:12.0];
    _Block_release(v42);
  }

  else
  {

    [v5 setFrame:{v17, v26, v21, v23}];
  }

  v43 = a1 & 1;
  *(v2 + 72) = a1 & 1;
  v44 = *(v2 + 32);
  if (v44)
  {
    v45 = *(v2 + 40);

    v44(v43);

    sub_47160(v44, v45);
  }

  else
  {
  }
}

void sub_662A8C(char a1)
{
  v3 = *(v1 + 24);
  v4 = [v3 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  LOBYTE(v4) = sub_769B20();
  if (v4 & 1) != 0 || ([v3 contentSize], v9 = v8, objc_msgSend(v3, "bounds"), v10 = v9 - CGRectGetHeight(v15) - *(v1 + 48), objc_msgSend(v3, "bounds"), v10 < CGRectGetHeight(v16)) && (sub_75F3E0(), v11 = sub_75F3D0(), v12 = sub_75F3C0(), v11, (v12))
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    [v3 contentOffset];
    v6 = v10 > v13 && v13 > 0.0;
    v7 = a1 & 1;
  }

  sub_662730(v6, v7);
}

uint64_t sub_662BD0()
{
  sub_47160(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_662C48()
{

  return _swift_deallocObject(v0, 56, 7);
}

double sub_662C9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t Badge.enrich(objectGraph:)(uint64_t a1)
{
  v57 = a1;
  v1 = sub_75A5C0();
  v55 = *(v1 - 8);
  v56 = v1;
  __chkstk_darwin(v1);
  v3 = v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v4 - 8);
  v6 = v51 - v5;
  v7 = sub_7570A0();
  v58 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_765790();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&qword_9608E0, &qword_7AC0A8);
  v14 = sub_768F90();
  sub_764800();
  if ((*(v11 + 88))(v13, v10) == enum case for BadgeType.friendsPlaying(_:))
  {
    v15 = sub_764840();
    v16 = sub_763F70();
    if (*(v15 + 16))
    {
      v18 = sub_3DF2F8(v16, v17);
      v20 = v19;

      if ((v20 & 1) == 0)
      {
        goto LABEL_15;
      }

      sub_132B4(*(v15 + 56) + 32 * v18, &v59);

      sub_BE70(0, &qword_945820, NSNumber_ptr);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_16;
      }

      v21 = v63;
      v22 = [v63 integerValue];

      v23 = sub_764840();
      v24 = sub_7644A0();
      if (*(v23 + 16))
      {
        v53 = v22;
        v54 = sub_3DF2F8(v24, v25);
        v27 = v26;

        if (v27)
        {
          sub_132B4(*(v23 + 56) + 32 * v54, &v59);

          if (swift_dynamicCast())
          {
            v28 = v63;
            v29 = [v63 integerValue];

            v30 = sub_764840();
            v31 = sub_75EF70();
            if (*(v30 + 16))
            {
              v54 = v29;
              v33 = sub_3DF2F8(v31, v32);
              v35 = v34;

              if (v35)
              {
                sub_132B4(*(v30 + 56) + 32 * v33, &v59);

                if (swift_dynamicCast())
                {
                  v36 = v63;
                  v37 = v64;
                  v59 = 0;
                  v60 = 0xE000000000000000;
                  sub_76A730(91);
                  v65._countAndFlagsBits = 0xD000000000000059;
                  v65._object = 0x80000000007EFE70;
                  sub_769370(v65);
                  v66._countAndFlagsBits = v36;
                  v66._object = v37;
                  sub_769370(v66);

                  sub_757090();

                  v38 = v58;
                  if ((*(v58 + 48))(v6, 1, v7) != 1)
                  {
                    (*(v38 + 32))(v9, v6, v7);
                    sub_75A110();
                    v51[1] = sub_768900();
                    sub_768ED0();
                    v52 = v59;
                    sub_BD88(&qword_9608E8, &qword_7AC0B0);
                    v40 = (sub_BD88(&qword_945570, &qword_785350) - 8);
                    v41 = (*(*v40 + 80) + 32) & ~*(*v40 + 80);
                    v42 = swift_allocObject();
                    *(v42 + 16) = xmmword_77B6D0;
                    v43 = v42 + v41;
                    v44 = v40[14];
                    v59 = 0xD000000000000015;
                    v60 = 0x80000000007EFED0;
                    sub_76A6E0();
                    (*(v38 + 16))(v43 + v44, v9, v7);
                    sub_10DE18(v42);
                    swift_setDeallocating();
                    sub_10A2C(v43, &qword_945570, &qword_785350);
                    swift_deallocClassInstance();
                    sub_75A5B0();
                    sub_75D640();
                    sub_768ED0();
                    sub_6651F4(&qword_9608F0, &type metadata accessor for ShelvesIntent, &protocol conformance descriptor for ShelvesIntent);
                    v45 = v56;
                    sub_75D630();
                    v46 = swift_allocObject();
                    swift_weakInit();
                    v47 = swift_allocObject();
                    v47[2] = v46;
                    v47[3] = 0xD000000000000015;
                    v47[4] = 0x80000000007EFED0;
                    v47[5] = v14;
                    v48 = v52;
                    v47[6] = v53;
                    v47[7] = v48;
                    v47[8] = v54;
                    v49 = sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);

                    v50 = sub_769970();
                    v61 = v49;
                    v62 = &protocol witness table for OS_dispatch_queue;
                    v59 = v50;
                    sub_768F10();

                    (*(v55 + 8))(v3, v45);
                    (*(v58 + 8))(v9, v7);
                    sub_BEB8(&v59);
                    return v14;
                  }

                  sub_10A2C(v6, &unk_93FD30, qword_77F240);
                }

                goto LABEL_16;
              }

              goto LABEL_15;
            }

            goto LABEL_14;
          }

LABEL_16:
          v59 = 0;
          sub_768F60();
          return v14;
        }

LABEL_15:

        goto LABEL_16;
      }
    }

LABEL_14:

    goto LABEL_15;
  }

  v59 = 0;
  sub_768F60();
  (*(v11 + 8))(v13, v10);
  return v14;
}

double sub_663534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v51 = a8;
  v50 = a7;
  v12 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v12 - 8);
  v54 = v44 - v13;
  v14 = sub_758A20();
  __chkstk_darwin(v14 - 8);
  v53 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_75C430();
  __chkstk_darwin(v16 - 8);
  v52 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_BD88(&qword_960948, &qword_7AC0B8);
  __chkstk_darwin(v18 - 8);
  v55 = v44 - v19;
  v20 = sub_765790();
  __chkstk_darwin(v20 - 8);
  v21 = sub_7636D0();
  __chkstk_darwin(v21 - 8);
  v23 = v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v25 = sub_758E90();
    v56 = a3;
    v57 = a4;

    sub_76A6E0();
    if (*(v25 + 16) && (sub_663E34(v58, v26), (v27 & 1) != 0))
    {

      sub_1EB60(v58);

      v28 = sub_764AD0();

      v29 = sub_315F24(v28);

      if (v29)
      {
        v30 = v29 >> 62;
        if (v29 >> 62)
        {
LABEL_34:
          v31 = sub_76A860();
          if (v31 >= 1)
          {
LABEL_7:
            v45 = v31;
            if (v31 < a6)
            {
              a6 = v31;
            }

            sub_7636C0();
            v47 = type metadata accessor for AvatarShowcaseView(0);
            v32 = objc_allocWithZone(v47);
            v46 = sub_4F983C(a6, v23);
            v58[0] = _swiftEmptyArrayStorage;
            v48 = a5;
            if (v30)
            {
              v30 = v29 & 0xFFFFFFFFFFFFFF8;
              a6 = sub_76A860();
            }

            else
            {
              v30 = v29 & 0xFFFFFFFFFFFFFF8;
              a6 = *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8));
            }

            v33 = 0;
            a5 = v29 & 0xC000000000000001;
            v49 = _swiftEmptyArrayStorage;
            while (a6 != v33)
            {
              if (a5)
              {
                sub_76A770();
                v34 = v33 + 1;
                if (__OFADD__(v33, 1))
                {
                  goto LABEL_32;
                }
              }

              else
              {
                if (v33 >= *(v30 + 16))
                {
                  goto LABEL_33;
                }

                v34 = v33 + 1;
                if (__OFADD__(v33, 1))
                {
LABEL_32:
                  __break(1u);
LABEL_33:
                  __break(1u);
                  goto LABEL_34;
                }
              }

              v23 = sub_75BB80();

              ++v33;
              if (v23)
              {
                sub_769440();
                if (*(&dword_10 + (v58[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v58[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
                {
                  sub_7694C0();
                }

                sub_769500();
                v49 = v58[0];
                v33 = v34;
              }
            }

            v35 = v46;
            sub_4F9BAC(v49, v50);

            v36 = v51;
            if (v45 <= v51)
            {
              v37._object = 0x80000000007EFF20;
              v37._countAndFlagsBits = 0xD00000000000001DLL;
              v36 = v45;
            }

            else
            {
              v37._countAndFlagsBits = 0xD000000000000021;
              v37._object = 0x80000000007EFF40;
            }

            v59._countAndFlagsBits = 0;
            v59._object = 0xE000000000000000;
            v51 = sub_761130(v37, v36, v59);
            v50 = v38;
            sub_7647E0();
            sub_764800();
            sub_7647F0();
            v49 = sub_764850();
            v45 = v39;
            v44[3] = sub_764750();
            v44[2] = v40;
            sub_BD88(&unk_94F470, qword_794290);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_77B6D0;
            *(inited + 32) = sub_757A40();
            *(inited + 72) = v47;
            *(inited + 40) = v42;
            *(inited + 48) = v35;
            v47 = v35;
            v46 = sub_10E8CC(inited);
            swift_setDeallocating();
            sub_10A2C(inited + 32, &unk_9453B0, &unk_7851F8);
            sub_764770();
            sub_764810();
            v44[1] = sub_7647A0();
            v44[0] = v43;
            sub_7647B0();
            sub_764740();
            sub_764820();
            sub_764790();
            sub_764860();
            swift_allocObject();
            v58[0] = sub_7647D0();

            sub_768F60();

            goto LABEL_13;
          }
        }

        else
        {
          v31 = *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8));
          if (v31 >= 1)
          {
            goto LABEL_7;
          }
        }
      }
    }

    else
    {

      sub_1EB60(v58);
    }

    v58[0] = 0;
    sub_768F60();
LABEL_13:
  }

  return result;
}

double sub_663C8C(uint64_t a1)
{
  sub_BD88(&qword_941C10, &qword_781230);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_77B6D0;
  swift_getErrorValue();
  *(v1 + 56) = v4;
  v2 = sub_B1B4((v1 + 32));
  (*(*(v4 - 8) + 16))(v2);
  sub_76AA10();

  return result;
}

unint64_t sub_663D5C(uint64_t a1)
{
  v2 = sub_76AA20();

  return sub_664990(a1, v2);
}

unint64_t sub_663DA4(uint64_t a1)
{
  sub_769240();
  sub_76AA30();
  sub_769330();
  v2 = sub_76AA80();

  return sub_665054(a1, v2);
}

unint64_t sub_663E34(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_76A6B0(*(v3 + 40));

  return sub_6649FC(a1, v5);
}

unint64_t sub_663E78(uint64_t a1)
{
  v1 = a1;
  sub_76AA30();
  if ((v1 - 4) >= 3u)
  {
    sub_76AA40(2uLL);
    v2 = v1;
  }

  else
  {
    v2 = qword_7AC0C0[(v1 - 4)];
  }

  sub_76AA40(v2);
  v3 = sub_76AA80();

  return sub_664AC4(v1, v3);
}

unint64_t sub_663F14(double *a1)
{
  sub_76AA30();
  sub_4E1F8C(v4);
  v2 = sub_76AA80();

  return sub_664B7C(a1, v2);
}

unint64_t sub_663F80(uint64_t a1)
{
  sub_764CF0();
  sub_6651F4(&qword_948180, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
  v2 = sub_769150();
  return sub_664CB4(a1, v2, &type metadata accessor for AdamId, &qword_945868, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
}

unint64_t sub_664054(uint64_t a1)
{
  sub_75BB40();
  sub_6651F4(&qword_942C50, &type metadata accessor for EditorialPageKey, &protocol conformance descriptor for EditorialPageKey);
  v2 = sub_769150();
  return sub_664CB4(a1, v2, &type metadata accessor for EditorialPageKey, &qword_942C58, &type metadata accessor for EditorialPageKey, &protocol conformance descriptor for EditorialPageKey);
}

unint64_t sub_664128(Swift::UInt a1, Swift::UInt a2, double a3)
{
  sub_76AA30();
  sub_76AA40(a1);
  sub_76AA40(a2);
  v6 = 0.0;
  if (a3 != 0.0)
  {
    v6 = a3;
  }

  sub_76AA60(*&v6);
  v7 = sub_76AA80();

  return sub_664E54(a1, a2, v7, a3);
}

unint64_t sub_6641D0(double a1, double a2)
{
  sub_76AA30();
  sub_3B7884(a1, a2);
  v4 = sub_76AA80();

  return sub_664EE0(v4, a1, a2);
}

unint64_t sub_664244(uint64_t a1, __n128 a2)
{
  sub_765390();
  sub_6651F4(&qword_955908, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v3 = sub_769150();
  return sub_664F58(a1, v3, v4);
}

unint64_t sub_6642F0(uint64_t a1)
{
  sub_765790();
  sub_6651F4(&unk_9558D0, &type metadata accessor for BadgeType, &protocol conformance descriptor for BadgeType);
  v2 = sub_769150();
  return sub_664CB4(a1, v2, &type metadata accessor for BadgeType, &qword_9608F8, &type metadata accessor for BadgeType, &protocol conformance descriptor for BadgeType);
}

unint64_t sub_6643C4(uint64_t a1)
{
  sub_75AD00();
  sub_6651F4(&qword_960900, &type metadata accessor for OfferTitleType, &protocol conformance descriptor for OfferTitleType);
  v2 = sub_769150();
  return sub_664CB4(a1, v2, &type metadata accessor for OfferTitleType, &qword_960908, &type metadata accessor for OfferTitleType, &protocol conformance descriptor for OfferTitleType);
}

unint64_t sub_664498(uint64_t a1, uint64_t a2)
{
  sub_757640();
  sub_6651F4(&unk_952080, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v3 = sub_769150();
  return sub_664CB4(a1, v3, &type metadata accessor for IndexPath, &qword_944B50, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
}

unint64_t sub_66456C(uint64_t a1)
{
  sub_758DC0();
  sub_6651F4(&qword_960928, &type metadata accessor for PageFacets.Facet, &protocol conformance descriptor for PageFacets.Facet);
  v2 = sub_769150();
  return sub_664CB4(a1, v2, &type metadata accessor for PageFacets.Facet, &qword_960930, &type metadata accessor for PageFacets.Facet, &protocol conformance descriptor for PageFacets.Facet);
}

unint64_t sub_664640(uint64_t a1)
{
  sub_768DD0();
  sub_6651F4(&qword_960938, &type metadata accessor for MetricsFieldExclusionRequest, &protocol conformance descriptor for MetricsFieldExclusionRequest);
  v2 = sub_769150();
  return sub_664CB4(a1, v2, &type metadata accessor for MetricsFieldExclusionRequest, &qword_960940, &type metadata accessor for MetricsFieldExclusionRequest, &protocol conformance descriptor for MetricsFieldExclusionRequest);
}

unint64_t sub_664714(uint64_t a1)
{
  sub_768E20();
  sub_6651F4(&qword_948110, &type metadata accessor for MetricsFieldInclusionRequest, &protocol conformance descriptor for MetricsFieldInclusionRequest);
  v2 = sub_769150();
  return sub_664CB4(a1, v2, &type metadata accessor for MetricsFieldInclusionRequest, &qword_948118, &type metadata accessor for MetricsFieldInclusionRequest, &protocol conformance descriptor for MetricsFieldInclusionRequest);
}

unint64_t sub_6647E8(uint64_t a1, __n128 a2)
{
  sub_75E5F0();
  sub_6651F4(&qword_960910, &type metadata accessor for SearchAdOpportunity.LifecycleEventType, &protocol conformance descriptor for SearchAdOpportunity.LifecycleEventType);
  v3 = sub_769150();
  return sub_664CB4(a1, v3, &type metadata accessor for SearchAdOpportunity.LifecycleEventType, &qword_960918, &type metadata accessor for SearchAdOpportunity.LifecycleEventType, &protocol conformance descriptor for SearchAdOpportunity.LifecycleEventType);
}

unint64_t sub_6648BC(uint64_t a1)
{
  sub_75B1D0();
  sub_6651F4(&qword_955918, &type metadata accessor for AdPlacementType, &protocol conformance descriptor for AdPlacementType);
  v2 = sub_769150();
  return sub_664CB4(a1, v2, &type metadata accessor for AdPlacementType, &qword_960920, &type metadata accessor for AdPlacementType, &protocol conformance descriptor for AdPlacementType);
}

unint64_t sub_664990(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_6649FC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_59C2C(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_76A6C0();
      sub_1EB60(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_664AC4(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(v2 + 48) + result);
      switch(v7)
      {
        case 6:
          if (a1 == 6)
          {
            return result;
          }

          break;
        case 5:
          if (a1 == 5)
          {
            return result;
          }

          break;
        case 4:
          if (a1 == 4)
          {
            return result;
          }

          break;
        default:
          if (a1 - 7 <= 0xFFFFFFFC && v7 == a1)
          {
            return result;
          }

          break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_664B7C(double *a1, uint64_t a2)
{
  v5 = type metadata accessor for Accessory(0) - 8;
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_45DEEC(*(v2 + 48) + v12 * v10, v8);
      v13 = sub_4E32FC(v8, a1);
      sub_30984(v8);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_664CB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_6651F4(v24, v25, v26);
      v20 = sub_7691C0();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_664E54(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = -1 << *(v4 + 32);
  result = a3 & ~v6;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    do
    {
      v9 = *(v4 + 48) + 24 * result;
      v10 = *(v9 + 16);
      v12 = *v9 == a1 && *(v9 + 8) == a2;
      if (v10 != a4)
      {
        v12 = 0;
      }

      if (v12)
      {
        break;
      }

      result = (result + 1) & v8;
    }

    while (((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_664EE0(uint64_t a1, double a2, double a3)
{
  v4 = -1 << *(v3 + 32);
  result = a1 & ~v4;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v3 + 48) + 16 * result);
      v8 = v7[1];
      v9 = *v7 == a2;
      if (v8 == a3 && v9)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_664F58(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_765390();
    sub_6651F4(&qword_947FE0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    do
    {
      if (sub_7691C0())
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_665054(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_769240();
      v8 = v7;
      if (v6 == sub_769240() && v8 == v9)
      {
        break;
      }

      v11 = sub_76A950();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_665158()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_665190()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_6651F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_6652B0(uint64_t a1)
{
  v42.receiver = v1;
  v42.super_class = type metadata accessor for AlertActionHeaderViewController();
  objc_msgSendSuper2(&v42, "viewDidLoad");
  v2 = sub_769210();
  v3 = [objc_opt_self() systemImageNamed:v2];

  if (v3)
  {
    v4 = [objc_allocWithZone(UIImageView) initWithImage:v3];
    v5 = [v1 view];
    if (v5)
    {
      v6 = v5;
      v7 = v4;
      [v6 addSubview:v7];

      v8 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AlertActionHeaderViewController_imageView];
      *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AlertActionHeaderViewController_imageView] = v7;
      v9 = v7;

      sub_BD88(&unk_93F5C0, &unk_77C600);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_77B6C0;
      v11 = objc_opt_self();
      *(v10 + 32) = [v11 secondaryLabelColor];
      *(v10 + 40) = [v11 clearColor];
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      isa = sub_769450().super.isa;

      v13 = [objc_opt_self() configurationWithPaletteColors:isa];

      [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v9 setPreferredSymbolConfiguration:v13];
      [v9 setContentMode:1];

      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_794070;
      v15 = [v1 view];
      if (v15)
      {
        v16 = v15;
        v17 = [v15 heightAnchor];

        v18 = [v17 constraintEqualToConstant:80.0];
        *(v14 + 32) = v18;
        v19 = [v9 topAnchor];

        v20 = [v1 view];
        if (v20)
        {
          v21 = v20;
          v41 = v13;
          v22 = [v20 topAnchor];

          v23 = [v19 constraintEqualToAnchor:v22 constant:20.0];
          *(v14 + 40) = v23;
          v24 = [v9 bottomAnchor];

          v25 = [v1 view];
          if (v25)
          {
            v26 = v25;
            v27 = [v25 bottomAnchor];

            v28 = [v24 constraintEqualToAnchor:v27];
            *(v14 + 48) = v28;
            v29 = [v9 leadingAnchor];

            v30 = [v1 view];
            if (v30)
            {
              v31 = v30;
              v32 = [v30 leadingAnchor];

              v33 = [v29 constraintEqualToAnchor:v32];
              *(v14 + 56) = v33;
              v34 = [v9 trailingAnchor];

              v35 = [v1 view];
              if (v35)
              {
                v36 = v35;
                v37 = objc_opt_self();
                v38 = [v36 trailingAnchor];

                v39 = [v34 constraintEqualToAnchor:v38];
                *(v14 + 64) = v39;
                sub_BE70(0, &qword_942270, NSLayoutConstraint_ptr);
                v40 = sub_769450().super.isa;

                [v37 activateConstraints:v40];

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

id sub_66587C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AlertActionHeaderViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *sub_665924(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_760AD0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v14 - 8);
  v16 = &v34 - v15;
  v17 = OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_icon;
  sub_759210();
  *&v4[v17] = sub_759020();
  v18 = OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_titleLabel;
  if (qword_93DA78 != -1)
  {
    swift_once();
  }

  v19 = sub_7666D0();
  v20 = sub_BE38(v19, qword_99F760);
  v21 = *(v19 - 8);
  (*(v21 + 16))(v16, v20, v19);
  (*(v21 + 56))(v16, 0, 1, v19);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v22 = objc_allocWithZone(sub_75BB20());
  *&v5[v18] = sub_75BB10();
  v5[OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_titleStyle] = 0;
  v23 = type metadata accessor for BundleChildView();
  v34.receiver = v5;
  v34.super_class = v23;
  v24 = objc_msgSendSuper2(&v34, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v28 = v24;
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v29 = OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_titleLabel;
  [*&v28[OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_titleLabel] setTextAlignment:1];
  v30 = *&v28[v29];
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v31 = v30;
  v32 = sub_769FF0();
  [v31 setTextColor:v32];

  [v28 addSubview:*&v28[OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_icon]];
  [v28 addSubview:*&v28[v29]];

  return v28;
}

id sub_665CCC()
{
  v1 = v0;
  v2 = sub_7652D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v39[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v39[-1] - v7;
  __chkstk_darwin(v9);
  v11 = &v39[-1] - v10;
  v12 = type metadata accessor for BundleChildView();
  v40.receiver = v0;
  v40.super_class = v12;
  objc_msgSendSuper2(&v40, "layoutSubviews");
  v13 = [v0 traitCollection];
  v14 = sub_7653B0();
  v39[3] = v14;
  v39[4] = sub_9BA34();
  v15 = sub_B1B4(v39);
  (*(*(v14 - 8) + 104))(v15, enum case for Feature.voyager_bundles_2025A(_:), v14);
  LOBYTE(v14) = sub_765C30();
  sub_BEB8(v39);
  if (v14)
  {
    v16 = sub_7699D0();

    if (v16)
    {
      v17 = 32.0;
    }

    else
    {
      v17 = 62.0;
    }
  }

  else
  {

    v17 = 62.0;
  }

  sub_7591A0();
  (*(v3 + 104))(v5, enum case for Artwork.Style.roundedRect(_:), v2);
  sub_765290();
  v18 = *(v3 + 8);
  v18(v5, v2);
  v18(v8, v2);
  sub_765280();
  v20 = v19;
  v18(v11, v2);
  sub_75D650();
  MinX = CGRectGetMinX(v41);
  sub_75D650();
  MinY = CGRectGetMinY(v42);
  sub_759170();
  v23 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_titleLabel];
  [v23 firstBaselineFromTop];
  v25 = v1[OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_titleStyle];
  if (v25 == 2)
  {
    return [v23 setFrame:{0.0, 0.0, 0.0, 0.0}];
  }

  v27 = 18.0 - v24;
  sub_75D650();
  [v23 sizeThatFits:{v28, v29}];
  if (v25)
  {
    v32 = v30;
    v43.origin.x = MinX;
    v43.origin.y = MinY;
    v43.size.width = v17;
    v43.size.height = v20;
    MaxX = CGRectGetMaxX(v43);
    v44.origin.x = MinX;
    v44.origin.y = MinY;
    v44.size.width = v17;
    v44.size.height = v20;
    v34 = CGRectGetMinY(v44);
    if (v32 > 80.0)
    {
      v32 = 80.0;
    }

    v45.origin.x = MinX;
    v45.origin.y = MinY;
    v45.size.width = v17;
    v45.size.height = v20;
    return [v23 setFrame:{v27 + MaxX, v34, v32, CGRectGetHeight(v45)}];
  }

  else
  {
    v35 = v31;
    sub_75D650();
    v36 = CGRectGetMinX(v46);
    v47.origin.x = MinX;
    v47.origin.y = MinY;
    v47.size.width = v17;
    v47.size.height = v20;
    v37 = v27 + CGRectGetMaxY(v47);
    v48.origin.x = MinX;
    v48.origin.y = MinY;
    v48.size.width = v17;
    v48.size.height = v20;
    return [v23 setFrame:{v36, v37, CGRectGetWidth(v48), v35}];
  }
}

id sub_666190(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BundleChildView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_666248()
{
  result = qword_9609C8;
  if (!qword_9609C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9609C8);
  }

  return result;
}

void sub_66629C(uint64_t a1, char a2, uint64_t a3)
{
  v4 = sub_7653B0();
  v8[3] = v4;
  v8[4] = sub_9BA34();
  v5 = sub_B1B4(v8);
  (*(*(v4 - 8) + 104))(v5, enum case for Feature.voyager_bundles_2025A(_:), v4);
  LOBYTE(v4) = sub_765C30();
  sub_BEB8(v8);
  if (v4)
  {
    sub_7699D0();
  }

  if (a2 == 2 || (a2 & 1) != 0)
  {
    sub_765280();
  }

  else
  {
    sub_765280();
    sub_BE70(0, &qword_93F900, UIFont_ptr);
    if (qword_93DA78 != -1)
    {
      swift_once();
    }

    v6 = sub_7666D0();
    sub_BE38(v6, qword_99F760);
    v7 = sub_769E10();
    [v7 descender];
  }
}

void sub_666428()
{
  v1 = v0;
  v2 = sub_760AD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_icon;
  sub_759210();
  *(v0 + v9) = sub_759020();
  v10 = OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_titleLabel;
  if (qword_93DA78 != -1)
  {
    swift_once();
  }

  v11 = sub_7666D0();
  v12 = sub_BE38(v11, qword_99F760);
  v13 = *(v11 - 8);
  (*(v13 + 16))(v8, v12, v11);
  (*(v13 + 56))(v8, 0, 1, v11);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v14 = objc_allocWithZone(sub_75BB20());
  *(v1 + v10) = sub_75BB10();
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_titleStyle) = 0;
  sub_76A840();
  __break(1u);
}

double sub_666698()
{
  v1 = v0;
  v2 = sub_7652D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v29[-1] - v7;
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = &v29[-1] - v11;
  v13 = [v0 traitCollection];
  v14 = sub_7653B0();
  v29[3] = v14;
  v29[4] = sub_9BA34();
  v15 = sub_B1B4(v29);
  (*(*(v14 - 8) + 104))(v15, enum case for Feature.voyager_bundles_2025A(_:), v14);
  LOBYTE(v14) = sub_765C30();
  sub_BEB8(v29);
  if (v14)
  {
    v16 = sub_7699D0();

    if (v16)
    {
      v17 = 32.0;
    }

    else
    {
      v17 = 62.0;
    }
  }

  else
  {

    v17 = 62.0;
  }

  sub_7591A0();
  (*(v3 + 104))(v5, enum case for Artwork.Style.roundedRect(_:), v2);
  sub_765290();
  v18 = *(v3 + 8);
  v18(v5, v2);
  v18(v8, v2);
  v19 = OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_titleStyle;
  v20 = v1[OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_titleStyle];
  v21 = [v1 traitCollection];
  sub_66629C(v12, v20, v21);

  v18(v12, v2);
  v22 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_titleLabel];
  type metadata accessor for BundleChildView();
  sub_75D650();
  [v22 sizeThatFits:{v23, v24}];
  v26 = fmin(v25, 80.0);
  if ((v1[v19] & 1) == 0)
  {
    v26 = -0.0;
  }

  return v17 + v26;
}

uint64_t sub_666980(uint64_t a1, uint64_t a2)
{
  v3 = sub_75DF60();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_66D6E4(&qword_960A78, &type metadata accessor for ComponentDecoration, &protocol conformance descriptor for ComponentDecoration), v7 = sub_769150(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_66D6E4(&qword_960A80, &type metadata accessor for ComponentDecoration, &protocol conformance descriptor for ComponentDecoration);
      v15 = sub_7691C0();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_666B98(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_76A670();
  }

  else if (*(a2 + 16) && (sub_BE70(0, &qword_963060, UITouch_ptr), v5 = sub_76A1B0(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_76A1C0();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_666CB0(uint64_t a1, uint64_t a2)
{
  v3 = sub_764930();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_66D6E4(&qword_948138, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType), v7 = sub_769150(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_66D6E4(&qword_944DC0, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
      v15 = sub_7691C0();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_666EC8(uint64_t a1, uint64_t a2)
{
  v3 = sub_757640();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_66D6E4(&unk_952080, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath), v7 = sub_769150(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_66D6E4(&qword_944B50, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v15 = sub_7691C0();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_6670E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_758DA0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_66D6E4(&qword_956018, &type metadata accessor for PageFacets.Facet.Option, &protocol conformance descriptor for PageFacets.Facet.Option), v7 = sub_769150(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_66D6E4(&qword_956020, &type metadata accessor for PageFacets.Facet.Option, &protocol conformance descriptor for PageFacets.Facet.Option);
      v15 = sub_7691C0();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_6672F8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_769240(), sub_76AA30(), sub_769330(), v3 = sub_76AA80(), , v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = sub_769240();
      v9 = v8;
      if (v7 == sub_769240() && v9 == v10)
      {
        break;
      }

      v12 = sub_76A950();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

double sub_66744C(__n128 a1, double a2)
{
  v3 = sub_7581D0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7585B0();
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_7585D0();
  v44 = *(v10 - 8);
  v45 = v10;
  __chkstk_darwin(v10);
  v43 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_type;
  swift_beginAccess();
  (*(v4 + 16))(v6, &v2[v12], v3);
  v13 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerDisplayProperties];

  v42 = v9;
  sub_66A1B4(v6, v13, v2, v9);

  (*(v4 + 8))(v6, v3);
  v14 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_iconView];
  v70 = sub_759210();
  v71 = &protocol witness table for UIView;
  v41 = v14;
  v69 = v14;
  v15 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_wordmarkView;
  swift_beginAccess();
  v16 = *&v2[v15];
  if (v16)
  {
    v17 = sub_75A030();
    v18 = &protocol witness table for UIView;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v65 = 0;
    v66 = 0;
  }

  v64 = v16;
  v67 = v17;
  v68 = v18;
  v40 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_titleLabel];
  v19 = v40;
  v20 = sub_75BB20();
  v62 = v20;
  v63 = &protocol witness table for UILabel;
  v60 = &protocol witness table for UILabel;
  v61 = v19;
  v21 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_descriptionLabel];
  v59 = v20;
  v58 = v21;
  v22 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerButton];
  v56 = type metadata accessor for OfferButton();
  v57 = &protocol witness table for UIView;
  v23 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerLabel];
  v54 = &protocol witness table for UILabel;
  v55 = v22;
  v53 = v20;
  v51 = &protocol witness table for UILabel;
  v52 = v23;
  v24 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkTitleLabel];
  v50 = v20;
  v48 = &protocol witness table for UILabel;
  v49 = v24;
  v25 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkSubtitleLabel];
  v47 = v20;
  v46 = v25;
  v26 = v41;
  v27 = v16;
  v28 = v40;
  v29 = v21;
  v30 = v22;
  v31 = v23;
  v32 = v24;
  v33 = v25;
  v34 = v43;
  sub_7585C0();
  sub_66D6E4(&qword_960A70, &type metadata accessor for AppShowcaseLockupViewLayout, &protocol conformance descriptor for AppShowcaseLockupViewLayout);
  v35 = v45;
  sub_7665A0();
  v37 = v36;
  (*(v44 + 8))(v34, v35);
  return v37;
}

double sub_667848(uint64_t a1, void *a2, __n128 a3, double a4)
{
  v142 = a2;
  v5 = sub_7585B0();
  __chkstk_darwin(v5 - 8);
  v127 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7585D0();
  v129 = *(v7 - 8);
  v130 = v7;
  __chkstk_darwin(v7);
  v128 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75B490();
  v111 = *(v9 - 8);
  v112 = v9;
  __chkstk_darwin(v9);
  v110 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v109 = &v109 - v12;
  v13 = sub_75D850();
  v140 = *(v13 - 8);
  v141 = v13;
  __chkstk_darwin(v13);
  v122 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v139 = &v109 - v16;
  v138 = sub_7666D0();
  v135 = *(v138 - 8);
  __chkstk_darwin(v138);
  v136 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_762D10();
  v18 = *(v143 - 8);
  __chkstk_darwin(v143);
  v123 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v121 = &v109 - v21;
  __chkstk_darwin(v22);
  v132 = &v109 - v23;
  v24 = sub_7581D0();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v126 = &v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v120 = &v109 - v28;
  __chkstk_darwin(v29);
  v119 = &v109 - v30;
  __chkstk_darwin(v31);
  v33 = &v109 - v32;
  __chkstk_darwin(v34);
  v36 = &v109 - v35;
  __chkstk_darwin(v37);
  v39 = &v109 - v38;
  __chkstk_darwin(v40);
  v42 = &v109 - v41;
  v145 = a1;
  sub_758740();
  v117 = *(v25 + 32);
  v118 = v25 + 32;
  v117(v39, v42, v24);
  v146 = v25;
  v44 = v25 + 88;
  v43 = *(v25 + 88);
  v45 = v43(v39, v24);
  v137 = enum case for AppShowcaseType.large(_:);
  if (v45 == enum case for AppShowcaseType.large(_:) || v45 == enum case for AppShowcaseType.small(_:))
  {
    v46 = v18;
  }

  else
  {
    v46 = v18;
    if (v45 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      (*(v146 + 8))(v39, v24);
    }
  }

  v47 = sub_7670D0();
  swift_allocObject();
  v125 = sub_7670B0();
  v144 = v24;
  sub_758760();
  v124 = sub_764EF0();
  v115 = v48;

  v49 = v144;
  sub_758740();
  (*(v146 + 16))(v33, v36, v49);
  v50 = v43(v33, v49);
  v51 = v138;
  v116 = v43;
  v114 = v44;
  if (v50 == v137)
  {
    v52 = v136;
    if (qword_93DA28 != -1)
    {
      swift_once();
    }

    v53 = qword_99F670;
LABEL_18:
    v58 = sub_BE38(v51, v53);
    v57 = v135;
    (*(v135 + 16))(v52, v58, v51);
    v131 = *(v146 + 8);
    v131(v36, v49);
    goto LABEL_19;
  }

  v52 = v136;
  if (v50 == enum case for AppShowcaseType.small(_:) || v50 == enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    if (qword_93DA30 != -1)
    {
      swift_once();
    }

    v53 = qword_99F688;
    goto LABEL_18;
  }

  if (qword_93DA30 != -1)
  {
    swift_once();
  }

  v54 = sub_BE38(v51, qword_99F688);
  v55 = v135;
  (*(v135 + 16))(v52, v54, v51);
  v56 = *(v146 + 8);
  v56(v36, v49);
  v131 = v56;
  v56(v33, v49);
  v52 = v136;
  v57 = v55;
LABEL_19:
  v59 = sub_BE70(0, &qword_93F900, UIFont_ptr);
  v60 = v142;
  v61 = [v142 traitCollection];
  sub_769E10();

  (*(v57 + 8))(v52, v51);
  v62 = sub_7653B0();
  v160[3] = v62;
  v136 = sub_66D6E4(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v160[4] = v136;
  v63 = sub_B1B4(v160);
  v64 = *(v62 - 8);
  v65 = *(v64 + 104);
  LODWORD(v135) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v133 = v64 + 104;
  v134 = v65;
  v65(v63);
  sub_765C30();
  sub_BEB8(v160);
  v66 = v132;
  sub_762D00();
  sub_762CE0();
  v67 = *(v46 + 8);
  v124 = v46 + 8;
  v132 = v67;
  (v67)(v66, v143);
  v113 = sub_758730();
  v68 = v51;
  if (qword_93DA30 != -1)
  {
    swift_once();
    v68 = v51;
  }

  sub_BE38(v68, qword_99F688);
  v69 = [v60 traitCollection];
  v115 = v59;
  sub_769E10();

  v70 = v119;
  sub_758740();
  v71 = v120;
  v72 = v70;
  v73 = v144;
  v117(v120, v72, v144);
  v74 = v116(v71, v73);
  if (v74 == v137 || v74 == enum case for AppShowcaseType.small(_:))
  {
    v75 = v142;
  }

  else
  {
    v75 = v142;
    if (v74 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      v131(v71, v73);
    }
  }

  v159[3] = v62;
  v159[4] = v136;
  v76 = sub_B1B4(v159);
  v134(v76, v135, v62);
  sub_765C30();
  sub_BEB8(v159);
  v77 = v121;
  sub_762D00();
  sub_762CE0();
  (v132)(v77, v143);
  v78 = [v75 traitCollection];
  if (sub_769A00())
  {
    v79 = v138;
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v80 = qword_946920;
  }

  else
  {
    v79 = v138;
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v80 = qword_946938;
  }

  v81 = v141;
  v82 = sub_BE38(v141, v80);
  v83 = v140;
  v84 = v122;
  (*(v140 + 16))(v122, v82, v81);

  (*(v83 + 32))(v139, v84, v81);
  sub_75D800();
  sub_75D830();
  swift_allocObject();
  v142 = sub_7670B0();
  if (qword_93D518 != -1)
  {
    swift_once();
  }

  sub_BE38(v79, qword_99E758);
  v85 = [v75 traitCollection];
  sub_769E10();

  v157 = v62;
  v158 = v136;
  v86 = sub_B1B4(v156);
  v134(v86, v135, v62);
  sub_765C30();
  sub_BEB8(v156);
  v87 = v123;
  sub_762D00();
  sub_762CE0();
  (v132)(v87, v143);
  v88 = v145;
  sub_758760();
  v89 = sub_764EC0();

  if (v89)
  {
    v143 = v47;
    v90 = v75;
    v91 = v109;
    sub_75FE40();
    v92 = v110;
    v93 = v111;
    v94 = v112;
    (*(v111 + 104))(v110, enum case for OfferLabelStyle.preorder(_:), v112);
    v95 = sub_75B480();
    v96 = *(v93 + 8);
    v96(v92, v94);
    v96(v91, v94);
    if (v95)
    {
      sub_B170(v156, v157);
      v88 = v145;
      sub_766550();

      v75 = v90;
      v47 = v143;
      goto LABEL_40;
    }

    v75 = v90;
    v47 = v143;
  }

  sub_B170(v156, v157);
  sub_766550();
LABEL_40:
  v97 = sub_66CD30(v88);
  v98 = v144;
  if (v97)
  {
    swift_allocObject();
    v99 = sub_7670B0();
  }

  else
  {
    v99 = 0;
  }

  v100 = v126;
  sub_758740();
  sub_758760();
  v101 = sub_764EC0();

  sub_66A1B4(v100, v101, v75, v127);

  v131(v100, v98);
  v155[14] = &protocol witness table for LayoutViewPlaceholder;
  v155[13] = v47;
  v155[10] = v125;
  if (v99)
  {
    v102 = &protocol witness table for LayoutViewPlaceholder;
    v103 = v47;
  }

  else
  {
    v103 = 0;
    v102 = 0;
    v155[7] = 0;
    v155[6] = 0;
  }

  v155[5] = v99;
  v155[8] = v103;
  v155[9] = v102;
  sub_134D8(v160, v155);
  sub_134D8(v159, &v154);
  v153[8] = v47;
  v153[9] = &protocol witness table for LayoutViewPlaceholder;
  v153[5] = v142;
  sub_134D8(v156, v153);
  v152 = 0;
  v150 = 0u;
  v151 = 0u;
  v149 = 0;
  v147 = 0u;
  v148 = 0u;

  v104 = v128;
  sub_7585C0();
  sub_66D6E4(&qword_960A70, &type metadata accessor for AppShowcaseLockupViewLayout, &protocol conformance descriptor for AppShowcaseLockupViewLayout);
  v105 = v130;
  sub_7665A0();
  v107 = v106;

  (*(v129 + 8))(v104, v105);
  (*(v140 + 8))(v139, v141);
  sub_BEB8(v159);
  sub_BEB8(v160);
  sub_BEB8(v156);
  return v107;
}

id sub_668944(uint64_t a1, uint64_t a2, __n128 a3)
{
  v46 = a2;
  v43 = sub_75A010();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v45 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7664A0();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = sub_766CA0();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&qword_95F810, &unk_780110);
  __chkstk_darwin(v11 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  v17 = sub_765770();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_66D0D8(a1, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_10A2C(v16, &qword_95F810, &unk_780110);
    v21 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_wordmarkView;
    swift_beginAccess();
    result = *&v3[v21];
    if (result)
    {
      return [result setHidden:1];
    }
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    v23 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_wordmarkView;
    swift_beginAccess();
    v24 = *&v3[v23];
    if (v24 || ((*(v18 + 56))(v13, 1, 1, v17), v39 = UIFontTextStyleFootnote, *v8 = UIFontTextStyleFootnote, v25 = v40, (*(v40 + 104))(v8, enum case for FontSource.textStyle(_:), v6), v48 = v6, v49 = &protocol witness table for FontSource, v26 = sub_B1B4(v47), (*(v25 + 16))(v26, v8, v6), v27 = v39, sub_766CB0(), (*(v25 + 8))(v8, v6), (*(v41 + 104))(v45, enum case for WordmarkView.Alignment.center(_:), v43), v28 = v44, v48 = v44, v49 = &protocol witness table for StaticDimension, v29 = sub_B1B4(v47), v30 = v42, (*(v42 + 16))(v29, v10, v28), v31 = objc_allocWithZone(sub_75A030()), v32 = v3, v33 = sub_75A000(), (*(v30 + 8))(v10, v28), v34 = v33, v3 = v32, sub_669788(v34), (v24 = *&v32[v23]) != 0))
    {
      [v24 setTintColor:v46];
      v35 = *&v3[v23];
      if (v35)
      {
        [v35 setHidden:0];
      }
    }

    swift_beginAccess();
    v36 = *&v3[v23];
    if (v36)
    {
      swift_endAccess();
      v37 = v36;
      v38 = [v3 traitCollection];
      sub_759FF0();

      return (*(v18 + 8))(v20, v17);
    }

    else
    {
      (*(v18 + 8))(v20, v17);
      return swift_endAccess();
    }
  }

  return result;
}

char *sub_668F00(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_760AD0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v14 - 8);
  v16 = v66 - v15;
  v17 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_iconView;
  sub_759210();
  *&v4[v17] = sub_759020();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_wordmarkView] = 0;
  v18 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_titleLabel;
  v73 = sub_75BB20();
  *&v5[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v69 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_descriptionLabel;
  if (qword_93DA30 != -1)
  {
    swift_once();
  }

  v19 = sub_7666D0();
  v20 = sub_BE38(v19, qword_99F688);
  v21 = *(v19 - 8);
  v70 = *(v21 + 16);
  v70(v16, v20, v19);
  v23 = *(v21 + 56);
  v22 = v21 + 56;
  v72 = v23;
  v23(v16, 0, 1, v19);
  v24 = enum case for DirectionalTextAlignment.none(_:);
  v26 = *(v11 + 104);
  v25 = v11 + 104;
  v71 = v26;
  v26(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v27 = objc_allocWithZone(v73);
  *&v5[v69] = sub_75BB10();
  v69 = v10;
  v28 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerButton;
  v29 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[v28] = sub_1DD00C(0);
  v30 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerLabel;
  if (qword_93D518 != -1)
  {
    swift_once();
  }

  v31 = sub_BE38(v19, qword_99E758);
  v70(v16, v31, v19);
  v72(v16, 0, 1, v19);
  v71(v13, v24, v69);
  v32 = objc_allocWithZone(v73);
  *&v5[v30] = sub_75BB10();
  v33 = &v5[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerLabelPresenter];
  *v33 = 0u;
  *(v33 + 1) = 0u;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerDisplayProperties] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkPresenter] = 0;
  v67 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkTitleLabel;
  v34 = v25;
  v35 = v24;
  if (qword_93DA40 != -1)
  {
    swift_once();
  }

  v36 = sub_BE38(v19, qword_99F6B8);
  v70(v16, v36, v19);
  v37 = v72;
  v72(v16, 0, 1, v19);
  v66[2] = v22;
  v38 = v69;
  v39 = v71;
  v71(v13, v35, v69);
  v40 = v73;
  v41 = objc_allocWithZone(v73);
  v66[1] = v34;
  *&v5[v67] = sub_75BB10();
  v70 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkSubtitleLabel;
  v37(v16, 1, 1, v19);
  v39(v13, v35, v38);
  v42 = objc_allocWithZone(v40);
  *(v70 + v5) = sub_75BB10();
  v43 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_type;
  v44 = enum case for AppShowcaseType.large(_:);
  v45 = sub_7581D0();
  (*(*(v45 - 8) + 104))(&v5[v43], v44, v45);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView____lazy_storage___lockupViews] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView____lazy_storage___crossLinkViews] = 0;
  v74.receiver = v5;
  v74.super_class = ObjectType;
  v46 = objc_msgSendSuper2(&v74, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v50 = v46;
  [v50 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v51 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_titleLabel;
  [*&v50[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_titleLabel] setNumberOfLines:1];
  v52 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_descriptionLabel;
  v53 = *&v50[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_descriptionLabel];
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v54 = v53;
  v55 = sub_769FF0();
  [v54 setTextColor:v55];

  [v50 addSubview:*&v50[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_iconView]];
  [v50 addSubview:*&v50[v51]];
  [v50 addSubview:*&v50[v52]];
  v56 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkTitleLabel;
  v57 = *&v50[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkTitleLabel];
  v58 = objc_opt_self();
  v59 = v57;
  v60 = [v58 secondaryLabelColor];
  [v59 setTextColor:v60];

  [*&v50[v56] setHidden:1];
  [*&v50[v56] setAlpha:0.0];
  [v50 addSubview:*&v50[v56]];
  v61 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkSubtitleLabel;
  v62 = *&v50[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkSubtitleLabel];
  v63 = [v58 labelColor];
  [v62 setTextColor:v63];

  [*&v50[v61] setHidden:1];
  [*&v50[v61] setAlpha:0.0];
  [v50 addSubview:*&v50[v61]];
  [v50 addSubview:*&v50[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerButton]];
  v64 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerLabel;
  [*&v50[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerLabel] _setTextColorFollowsTintColor:1];
  [*&v50[v64] setText:0];
  [*&v50[v64] setHidden:1];
  [v50 addSubview:*&v50[v64]];

  return v50;
}

void sub_669788(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_wordmarkView;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  if (!v4)
  {
    v8 = a1;
    v6 = a1;
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = a1;
  [v4 removeFromSuperview];
  v6 = *&v1[v3];
  if (v6)
  {
LABEL_3:
    v7 = v6;
    [v1 addSubview:v7];
  }

LABEL_4:
}

id sub_669834()
{
  v1 = v0;
  v2 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v2 - 8);
  v63 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v61 = &v54 - v5;
  v6 = sub_7581D0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v65 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v62 = &v54 - v10;
  __chkstk_darwin(v11);
  v60 = &v54 - v12;
  __chkstk_darwin(v13);
  v58 = &v54 - v14;
  __chkstk_darwin(v15);
  v55 = &v54 - v16;
  __chkstk_darwin(v17);
  v57 = &v54 - v18;
  __chkstk_darwin(v19);
  v21 = &v54 - v20;
  __chkstk_darwin(v22);
  v24 = &v54 - v23;
  v25 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_type;
  swift_beginAccess();
  v26 = v7[2];
  v72 = v25;
  v73 = v7 + 2;
  v71 = v26;
  v26(v24, &v1[v25], v6);
  v27 = v7[13];
  v64 = enum case for AppShowcaseType.smallAlignedLeft(_:);
  v27(v21);
  sub_66D6E4(&qword_954FB8, &type metadata accessor for AppShowcaseType, &protocol conformance descriptor for AppShowcaseType);
  sub_769430();
  sub_769430();
  if (v76 != v74 || (v28 = 0, v77 != v75))
  {
    v28 = (sub_76A950() & 1) == 0;
  }

  v29 = v7[1];
  v29(v21, v6);
  v70 = v29;
  v29(v24, v6);
  v30 = v7;

  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_titleLabel] setTextAlignment:v28];
  v56 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_descriptionLabel];
  [v56 setTextAlignment:v28];
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerLabel] setTextAlignment:v28];
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkTitleLabel] setTextAlignment:v28];
  v59 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkSubtitleLabel];
  [v59 setTextAlignment:v28];
  v31 = v57;
  v32 = v71;
  v71(v57, &v1[v72], v6);
  v33 = v55;
  v32(v55, v31, v6);
  v67 = v7[11];
  v68 = v7 + 11;
  v34 = v67(v33, v6);
  v66 = enum case for AppShowcaseType.large(_:);
  if (v34 == enum case for AppShowcaseType.large(_:))
  {
    if (qword_93DA28 != -1)
    {
      swift_once();
    }

    v35 = sub_7666D0();
    v36 = sub_BE38(v35, qword_99F670);
    v37 = v61;
    (*(*(v35 - 8) + 16))(v61, v36, v35);
  }

  else if (v34 == enum case for AppShowcaseType.small(_:) || v34 == v64)
  {
    v37 = v61;
    if (qword_93DA30 != -1)
    {
      swift_once();
    }

    v35 = sub_7666D0();
    v39 = sub_BE38(v35, qword_99F688);
    (*(*(v35 - 8) + 16))(v37, v39, v35);
  }

  else
  {
    v37 = v61;
    if (qword_93DA30 != -1)
    {
      swift_once();
    }

    v35 = sub_7666D0();
    v38 = sub_BE38(v35, qword_99F688);
    (*(*(v35 - 8) + 16))(v37, v38, v35);
    v70(v31, v6);
    v31 = v33;
  }

  v70(v31, v6);
  sub_7666D0();
  v40 = *(v35 - 8);
  v61 = *(v40 + 56);
  (v61)(v37, 0, 1, v35);
  sub_75BA40();
  v41 = v58;
  v71(v58, &v1[v72], v6);
  v42 = v60;
  (v30[4])(v60, v41, v6);
  v43 = v67(v42, v6);
  v69 = v1;
  if (v43 == v66)
  {
    v44 = 2;
    v46 = v62;
    v45 = v63;
  }

  else
  {
    v44 = 1;
    v46 = v62;
    v45 = v63;
    if (v43 != enum case for AppShowcaseType.small(_:) && v43 != v64)
    {
      (v70)(v42, v6, 1);
      v44 = 1;
    }
  }

  [v56 setNumberOfLines:v44];
  v47 = v71;
  v71(v46, &v69[v72], v6);
  v48 = v65;
  v47(v65, v46, v6);
  v49 = v67(v48, v6);
  if (v49 == v66)
  {
    if (qword_93DA48 != -1)
    {
      swift_once();
    }

    v50 = qword_99F6D0;
LABEL_33:
    v52 = sub_BE38(v35, v50);
    (*(v40 + 16))(v45, v52, v35);
    goto LABEL_34;
  }

  if (v49 == enum case for AppShowcaseType.small(_:) || v49 == v64)
  {
    if (qword_93DA30 != -1)
    {
      swift_once();
    }

    v50 = qword_99F688;
    goto LABEL_33;
  }

  if (qword_93DA30 != -1)
  {
    swift_once();
  }

  v51 = sub_BE38(v35, qword_99F688);
  (*(v40 + 16))(v45, v51, v35);
  v70(v46, v6);
  v46 = v65;
LABEL_34:
  v70(v46, v6);
  (v61)(v45, 0, 1, v35);
  sub_75BA40();
  return [v69 setNeedsLayout];
}