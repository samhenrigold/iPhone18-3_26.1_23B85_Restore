uint64_t sub_1003C9368(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003C93B0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10002D1A8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1003C9414(char a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ScreenshotsGalleryViewController();
  v15.receiver = v1;
  v15.super_class = v7;
  result = objc_msgSendSuper2(&v15, "viewWillAppear:", a1 & 1);
  v9 = *&v1[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_selectedIndex];
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = *&v1[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_artworks];
    if (v10 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (v9 >= result)
      {
        return result;
      }
    }

    else
    {
      result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 >= result)
      {
        return result;
      }
    }

    result = [v1 view];
    if (result)
    {
      v11 = result;
      [result layoutIfNeeded];

      IndexPath.init(item:section:)();
      v12 = [v1 collectionView];
      if (v12)
      {
        v13 = v12;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v13 scrollToItemAtIndexPath:isa atScrollPosition:16 animated:0];
      }

      return (*(v4 + 8))(v6, v3);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1003C9630(__n128 a1)
{
  v2 = v1;
  v45.receiver = v1;
  v45.super_class = type metadata accessor for ScreenshotsGalleryViewController();
  objc_msgSendSuper2(&v45, "viewDidLoad");
  v3 = [objc_allocWithZone(UISwipeGestureRecognizer) initWithTarget:v1 action:"swipeStateChangedOn:"];
  [v3 setDirection:8];
  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    [v4 addGestureRecognizer:v3];

    v6 = [v1 collectionView];
    if (v6)
    {
      v7 = v6;
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      v8 = static UIColor.defaultBackground.getter();
      [v7 setBackgroundColor:v8];
    }

    v9 = [v2 collectionView];
    if (v9)
    {
      v10 = v9;
      [v9 setAlwaysBounceHorizontal:1];
    }

    v11 = [v2 collectionView];
    if (v11)
    {
      v12 = v11;
      [v11 setShowsHorizontalScrollIndicator:0];
    }

    v13 = [v2 collectionView];
    if (v13)
    {
      v14 = v13;
      [v13 setDecelerationRate:UIScrollViewDecelerationRateFast];
    }

    v15 = [v2 collectionView];
    if (v15)
    {
      v16 = v15;
      [v15 setRemembersLastFocusedIndexPath:1];
    }

    v17 = [v2 collectionView];
    if (v17)
    {
      v18 = v17;
      [v17 setContentInsetAdjustmentBehavior:2];
    }

    v19 = [v2 collectionView];
    if (v19)
    {
      v20 = v19;
      type metadata accessor for ScreenshotGalleryCollectionViewCell(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      static UICollectionReusableView.defaultReuseIdentifier.getter();
      v22 = String._bridgeToObjectiveC()();

      [v20 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v22];
    }

    v23 = [v2 collectionView];
    if (!v23)
    {

      return;
    }

    v38 = v23;
    [v23 bounds];
    sub_1003CAB88(v24, v25);
    v27 = v26;
    v42 = MediaPlatform.isPhonePlatform.getter() & 1;
    v28 = sub_100262514(v27, v42);
    v29 = v28;
    v41 = *(v27 + 16);
    if (!v41)
    {
LABEL_30:

      return;
    }

    v30 = 0;
    v31 = (v27 + 48);
    v39 = v28 & 0xC000000000000001;
    v40 = v28 >> 62;
    while (v30 < *(v27 + 16))
    {
      v32 = *(v31 - 2);
      v33 = *(v31 - 1);
      v34 = *v31;
      if (v40)
      {
        v35 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v35 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v30 == v35)
      {
        goto LABEL_30;
      }

      if (v39)
      {

        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v30 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }
      }

      v44 = 0;
      memset(v43, 0, sizeof(v43));
      v36 = swift_allocObject();
      swift_weakInit();
      v37 = swift_allocObject();
      *(v37 + 16) = v42;
      *(v37 + 24) = v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v33;
      *(v37 + 48) = v34;
      *(v37 + 56) = v30;

      ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

      sub_10002B894(v43, &qword_10096FB90, &qword_1007B2A50);

      v31 += 3;
      if (v41 == ++v30)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  __break(1u);
}

void sub_1003C9B60(uint64_t a1, __n128 a2)
{
  v9.receiver = v2;
  v9.super_class = type metadata accessor for ScreenshotsGalleryViewController();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v4 = [v2 collectionView];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 collectionViewLayout];

    [v6 invalidateLayout];
  }

  v7 = [v2 collectionView];
  if (v7)
  {
    v8 = v7;
    [v7 setNeedsLayout];
  }
}

void sub_1003C9C94(void *a1, __n128 a2, double a3)
{
  v6 = a2.n128_f64[0];
  v15.receiver = v3;
  v15.super_class = type metadata accessor for ScreenshotsGalleryViewController();
  objc_msgSendSuper2(&v15, "viewWillTransitionToSize:withTransitionCoordinator:", a1, v6, a3);
  v7 = [v3 collectionView];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 collectionViewLayout];

    [v9 invalidateLayout];
  }

  v10 = [v3 collectionView];
  if (v10)
  {
    v11 = v10;
    [v10 setNeedsLayout];
  }

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14[4] = sub_1003CC140;
  v14[5] = v12;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1006D1458;
  v14[3] = &unk_1008C0DD8;
  v13 = _Block_copy(v14);

  [a1 animateAlongsideTransition:v13 completion:0];
  _Block_release(v13);
}

void sub_1003C9E2C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *&Strong[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_selectedIndex];

    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v10 = [v8 collectionView];

      if (v10)
      {
        sub_10002849C(&qword_100980550, &qword_1007B1290);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_1007B1890;
        *(v11 + 32) = 0;
        *(v11 + 40) = v7;
        IndexPath.init(arrayLiteral:)();
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        (*(v3 + 8))(v5, v2);
        [v10 scrollToItemAtIndexPath:isa atScrollPosition:16 animated:1];
      }
    }
  }
}

uint64_t sub_1003CA110(void *a1)
{
  v2 = v1;
  type metadata accessor for ScreenshotGalleryCollectionViewCell(0);
  static UICollectionReusableView.defaultReuseIdentifier.getter();
  v4 = String._bridgeToObjectiveC()();

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v6 = [a1 dequeueReusableCellWithReuseIdentifier:v4 forIndexPath:isa];

  v7 = swift_dynamicCastClassUnconditional();
  *(*(v7 + OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_platform) = *(v2 + OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_platform);
  swift_retain_n();
  v8 = v6;

  sub_100617504(v9);

  return v7;
}

double sub_1003CA784(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, SEL *a6)
{
  v8 = a4;
  v9 = a1;
  v10 = [v9 traitCollection];
  v11 = UITraitCollection.isSizeClassRegular.getter();

  if (v11)
  {
    v12 = 30.0;
  }

  else
  {
    v12 = 15.0;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v15 = v8;
    [v14 *a6];
  }

  return v12;
}

uint64_t sub_1003CA84C(void *a1)
{
  v2 = v1;
  v4 = sub_10002849C(&unk_10097DAE0, &qword_1007B5CA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 contentOffset];
  v16 = v15;
  [a1 bounds];
  Width = CGRectGetWidth(v25);
  [a1 bounds];
  Height = CGRectGetHeight(v26);
  v19 = [v2 collectionView];
  if (!v19)
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    return sub_10002B894(v9, &unk_10097DAE0, &qword_1007B5CA0);
  }

  v20 = v19;
  v21 = [v19 indexPathForItemAtPoint:{v16 + Width * 0.5, Height * 0.5}];

  if (v21)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v11 + 56))(v6, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v6, 1, 1, v10);
  }

  sub_1003CB070(v6, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_10002B894(v9, &unk_10097DAE0, &qword_1007B5CA0);
  }

  (*(v11 + 32))(v14, v9, v10);
  v23 = IndexPath.item.getter();
  result = (*(v11 + 8))(v14, v10);
  *&v2[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_selectedIndex] = v23;
  return result;
}

void sub_1003CAB88(double a1, double a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_artworks);
  if (v3 >> 62)
  {
    v29 = a2;
    v30 = a1;
    v31 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v30;
    a2 = v29;
    v4 = v31;
    if (!v31)
    {
      return;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    if (a1 > a2)
    {
      v6 = a1;
    }

    else
    {
      v6 = a2;
    }

    v7 = _swiftEmptyArrayStorage;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v3 + 8 * v5 + 32);
      }

      v9 = dispatch thunk of Artwork.isLandscape.getter();
      Artwork.size.getter();
      v11 = v10;
      v13 = v12;
      Artwork.size.getter();
      v15 = v14;
      v17 = v16;
      Artwork.size.getter();
      if (v11 >= v6)
      {
        v20 = v6;
      }

      else
      {
        v20 = v11;
      }

      v21 = v17 * v20 / v18;
      if (v13 >= v6)
      {
        v22 = v6;
      }

      else
      {
        v22 = v13;
      }

      v23 = v15 * v22 / v19;
      if (v9)
      {
        v24 = v22;
      }

      else
      {
        v24 = v21;
      }

      if (v9)
      {
        v25 = v23;
      }

      else
      {
        v25 = v20;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1000337F0(0, v7[2] + 1, 1, v7);
      }

      v27 = v7[2];
      v26 = v7[3];
      if (v27 >= v26 >> 1)
      {
        v7 = sub_1000337F0((v26 > 1), v27 + 1, 1, v7);
      }

      v7[2] = v27 + 1;
      v28 = &v7[3 * v27];
      *(v28 + 4) = v8;
      ++v5;
      v28[5] = v25;
      v28[6] = v24;
    }

    while (v4 != v5);
  }
}

void sub_1003CAD4C()
{

  v1 = *(v0 + OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_galleryLayout);
}

id sub_1003CADCC(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ScreenshotsGalleryViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1003CAEBC(objc_class *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v3 collectionView];
  if (v11)
  {
    v12 = v11;
    sub_10002849C(&qword_100980550, &qword_1007B1290);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1007B1890;
    *(v13 + 32) = 0;
    *(v13 + 40) = a2;
    IndexPath.init(arrayLiteral:)();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(v10, v6);
    v15 = [v12 cellForItemAtIndexPath:isa];

    if (v15)
    {
      type metadata accessor for ScreenshotGalleryCollectionViewCell(0);
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = *(*(v16 + OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView);
        v20.value.super.isa = a1;
        v20.is_nil = 0;
        ArtworkView.setImage(image:animated:)(v20, v18);

        v15 = v17;
      }
    }
  }
}

uint64_t sub_1003CB070(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_10097DAE0, &qword_1007B5CA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1003CB0E0(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for AppPlatform();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AspectRatio();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ScreenshotGalleryCollectionViewCell(0);
  v11 = swift_dynamicCastClassUnconditional();
  v12 = *&v1[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_artworks];
  v13 = IndexPath.item.getter();
  v54 = v3;
  v55 = v7;
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_5:
    v53 = OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView;
    v15 = *&v11[OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView] + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_displayConfiguration;
    swift_beginAccess();
    v16 = *(v15 + 64);
    v17 = *(v15 + 80);
    type metadata accessor for BorderedScreenshotView(0);
    LayoutMarginsAware<>.layoutFrame.getter();
    Width = CGRectGetWidth(v56);
    v19 = v16 + v17;
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetHeight(v57);
    v20 = [v1 traitCollection];
    v21 = UITraitCollection.isSizeClassRegular.getter();

    if (MediaPlatform.isPhonePlatform.getter())
    {
      dispatch thunk of Artwork.isLandscape.getter();
    }

    Artwork.size.getter();
    Artwork.size.getter();
    AspectRatio.init(_:_:)();
    v22 = Width - v19;

    MediaPlatform.appPlatform.getter();

    v23 = v54;
    if ((*(v4 + 88))(v6, v54) != enum case for AppPlatform.watch(_:))
    {
      (*(v4 + 8))(v6, v23, 0.0);
    }

    AspectRatio.width(fromHeight:)();
    v25 = v24;
    v26 = (v22 - v24) * 0.5;
    if (v21)
    {
      v27 = v53;
      v28 = v55;
      if (v26 >= 60.0)
      {
        goto LABEL_15;
      }

      v29 = 120.0;
    }

    else
    {
      v27 = v53;
      v28 = v55;
      if (v26 >= 30.0)
      {
        goto LABEL_15;
      }

      v29 = 60.0;
    }

    v25 = v22 - v29;
LABEL_15:
    Artwork.size.getter();
    if (v30 < v25)
    {
      v25 = v30;
    }

    AspectRatio.height(fromWidth:)();
    v32 = v31;
    (*(v8 + 8))(v10, v28);
    v33 = &v11[OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_artworkDisplaySize];
    *v33 = v25;
    *(v33 + 1) = v32;
    v33[16] = 0;
    [v11 setNeedsLayout];
    v34 = *&v2[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_fullScreenshotFetcher];
    swift_beginAccess();
    v35 = *(v34 + 16);

    v36 = sub_10057A264(v14, v35);

    if (v36)
    {
      v37 = *(*&v11[v27] + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView);
      v38 = v36;
      v39 = v37;
      v40 = ArtworkView.image.getter();

      if (v40)
      {
        sub_100005744(0, &qword_1009744B0, UIImage_ptr);
        v42 = v38;
        v43 = static NSObject.== infix(_:_:)();

        v44 = v43 ^ 1;
      }

      else
      {
        v44 = 1;
      }

      v50.is_nil = v44 & 1;
      v50.value.super.isa = v36;
    }

    else
    {
      v45 = sub_10057A264(v14, *&v2[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_placeholderImages]);
      if (!v45)
      {
LABEL_30:

        return;
      }

      v38 = v45;
      v46 = *(*&v11[v27] + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView);
      v47 = ArtworkView.image.getter();

      if (v47)
      {
        sub_100005744(0, &qword_1009744B0, UIImage_ptr);
        v48 = v38;
        v49 = static NSObject.== infix(_:_:)();

        if (v49)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v51 = v38;
      }

      v39 = *(*&v11[v27] + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView);
      v50.value.super.isa = v38;
      v50.is_nil = 1;
    }

    ArtworkView.setImage(image:animated:)(v50, v41);

    v48 = v38;
LABEL_29:

    goto LABEL_30;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v12 + 8 * v13 + 32);

    goto LABEL_5;
  }

  __break(1u);
}

void sub_1003CB69C(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for AppPlatform();
  v77 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v71[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v71[-v10];
  v76 = type metadata accessor for AspectRatio();
  __chkstk_darwin(v76);
  v13 = &v71[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v17 = &v71[-v16];
  v18 = *&v2[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_artworks];
  v19 = v18 >> 62;
  if (v18 >> 62)
  {
    v78 = v15;
    v70 = _CocoaArrayWrapper.endIndex.getter();
    v15 = v78;
    if (!v70)
    {
      return;
    }
  }

  else if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v75 = a2;
  v78 = v15;
  if ((v18 & 0xC000000000000001) != 0)
  {
    v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v20 = v18 & 0xFFFFFFFFFFFFFF8;
    if (!v19)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_67;
    }

    v79 = *(v18 + 32);

    v20 = v18 & 0xFFFFFFFFFFFFFF8;
    if (!v19)
    {
LABEL_6:
      v21 = *(v20 + 16);
      if (v21)
      {
        goto LABEL_7;
      }

LABEL_64:

      return;
    }
  }

  v21 = _CocoaArrayWrapper.endIndex.getter();
  if (!v21)
  {
    goto LABEL_64;
  }

LABEL_7:
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if ((v18 & 0xC000000000000001) != 0)
  {
    v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_13;
  }

  if ((v23 & 0x8000000000000000) != 0)
  {
    goto LABEL_68;
  }

  if (v23 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_69:
    __break(1u);
    return;
  }

  v74 = *(v18 + 8 * v23 + 32);

LABEL_13:
  [a1 bounds];
  v25 = v24;
  v27 = v26;
  v28 = [v3 traitCollection];
  v29 = UITraitCollection.isSizeClassRegular.getter();

  if (MediaPlatform.isPhonePlatform.getter())
  {
    dispatch thunk of Artwork.isLandscape.getter();
  }

  Artwork.size.getter();
  Artwork.size.getter();
  AspectRatio.init(_:_:)();
  if (v29)
  {
    v30 = 123.0;
  }

  else
  {
    v30 = 101.0;
  }

  MediaPlatform.appPlatform.getter();

  v73 = *(v77 + 88);
  v31 = v73(v11, v6);
  v72 = enum case for AppPlatform.watch(_:);
  if (v31 != enum case for AppPlatform.watch(_:))
  {
    (*(v77 + 8))(v11, v6, 0.0);
  }

  v32 = v27 - v30;
  AspectRatio.width(fromHeight:)();
  v34 = v33;
  v35 = (v25 - v33) * 0.5;
  if (v29)
  {
    v36 = &selRef_setRequiresColorStatistics_;
    if (v35 >= 60.0)
    {
      goto LABEL_26;
    }

    v37 = 120.0;
  }

  else
  {
    v36 = &selRef_setRequiresColorStatistics_;
    if (v35 >= 30.0)
    {
      goto LABEL_26;
    }

    v37 = 60.0;
  }

  v34 = v25 - v37;
LABEL_26:
  Artwork.size.getter();
  if (v38 < v34)
  {
    v34 = v38;
  }

  AspectRatio.height(fromWidth:)();
  v40 = v39;
  v41 = *(v78 + 8);
  v42 = v17;
  v43 = v76;
  v78 += 8;
  v41(v42, v76);
  v44 = v27 - (v40 + 71.0);
  if (v44 <= 71.0)
  {
    v45 = v27 - (v40 + 71.0);
  }

  else
  {
    v45 = (v32 - v40) * 0.5;
  }

  if (v44 <= 71.0)
  {
    v46 = 71.0;
  }

  else
  {
    v46 = (v32 - v40) * 0.5;
  }

  v47 = [v3 v36[35]];
  v48 = UITraitCollection.isSizeClassRegular.getter();

  if (MediaPlatform.isPhonePlatform.getter())
  {
    dispatch thunk of Artwork.isLandscape.getter();
  }

  Artwork.size.getter();
  Artwork.size.getter();
  AspectRatio.init(_:_:)();
  if (v48)
  {
    v49 = 123.0;
  }

  else
  {
    v49 = 101.0;
  }

  MediaPlatform.appPlatform.getter();

  v50 = v73(v8, v6);
  if (v50 != v72)
  {
    (*(v77 + 8))(v8, v6, 0.0);
  }

  v51 = v25 - v34;
  v52 = v27 - v49;
  AspectRatio.width(fromHeight:)();
  v54 = v53;
  v55 = (v25 - v53) * 0.5;
  if (v48)
  {
    v56 = v75;
    if (v55 < 60.0)
    {
      v57 = 120.0;
LABEL_46:
      v54 = v25 - v57;
    }
  }

  else
  {
    v56 = v75;
    if (v55 < 30.0)
    {
      v57 = 60.0;
      goto LABEL_46;
    }
  }

  v58 = v51 * 0.5;
  Artwork.size.getter();
  if (v59 < v54)
  {
    v54 = v59;
  }

  AspectRatio.height(fromWidth:)();
  v61 = v60;
  v41(v13, v43);
  v62 = 71.0;
  v63 = v27 - (v61 + 71.0);
  if (v63 > 71.0)
  {
    v63 = (v52 - v61) * 0.5;
    v62 = v63;
  }

  v64 = (v25 - v54) * 0.5;
  if (v62 >= v46)
  {
    v65 = v46;
  }

  else
  {
    v65 = v62;
  }

  if (v63 >= v45)
  {
    v66 = v45;
  }

  else
  {
    v66 = v63;
  }

  objc_opt_self();
  v67 = swift_dynamicCastObjCClass();
  if (v67)
  {
    v68 = v67;
    v69 = v56;
    [v68 setSectionInset:{v65, v58, v66, v64}];
  }
}

void sub_1003CBD88(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for AppPlatform();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AspectRatio();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 bounds];
  v13 = *&v1[OBJC_IVAR____TtC8AppStore32ScreenshotsGalleryViewController_artworks];
  v14 = IndexPath.item.getter();
  v19 = v8;
  if ((v13 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v14 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:
    __break(1u);
    return;
  }

LABEL_5:
  v15 = [v1 traitCollection];
  UITraitCollection.isSizeClassRegular.getter();

  if (MediaPlatform.isPhonePlatform.getter())
  {
    dispatch thunk of Artwork.isLandscape.getter();
  }

  Artwork.size.getter();
  Artwork.size.getter();
  AspectRatio.init(_:_:)();

  MediaPlatform.appPlatform.getter();

  if ((*(v5 + 88))(v7, v4) != enum case for AppPlatform.watch(_:))
  {
    (*(v5 + 8))(v7, v4, 0.0);
  }

  AspectRatio.width(fromHeight:)();
  v16 = v19;
  Artwork.size.getter();
  AspectRatio.height(fromWidth:)();

  (*(v9 + 8))(v12, v16);
  v17 = [v2 traitCollection];
  UITraitCollection.isSizeClassRegular.getter();
}

uint64_t sub_1003CC15C()
{
  v1 = &v0[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay];
  swift_unknownObjectRetain();
  sub_1006865EC();
  [v0 setNeedsLayout];
  swift_unknownObjectRelease();
  if (swift_weakLoadStrong())
  {
    v2 = *(v1 + 1);
    v3 = *&v0[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayKind];
    v4 = v0[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayKind + 8];
    v5 = swift_unknownObjectRetain();
    sub_100473080(v5, v2, v3, v4);

    swift_unknownObjectRelease();
  }

  v6 = &v0[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayKind];
  *v6 = 0;
  v6[8] = 1;
  *v1 = 0;
  *(v1 + 1) = 0;
  swift_unknownObjectRelease();

  return swift_weakAssign();
}

uint64_t sub_1003CC278()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlay);
  if (*(v0 + OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlay))
  {
    v2 = v1[1];
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 16);
    swift_unknownObjectRetain();
    v5 = v4(ObjectType, v2);
    [v5 removeFromSuperview];
    swift_unknownObjectRelease();
  }

  if (swift_weakLoadStrong())
  {
    v6 = v1[1];
    v7 = *(v0 + OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlayKind);
    v8 = *(v0 + OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlayKind + 8);
    v9 = swift_unknownObjectRetain();
    sub_100473080(v9, v6, v7, v8);

    swift_unknownObjectRelease();
  }

  v10 = v0 + OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlayKind;
  *v10 = 0;
  *(v10 + 8) = 1;
  *v1 = 0;
  v1[1] = 0;
  swift_unknownObjectRelease();

  return swift_weakAssign();
}

char *sub_1003CC3AC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlayKind];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v4[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlay];
  *v11 = 0;
  *(v11 + 1) = 0;
  swift_weakInit();
  *&v4[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_artworks] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_multiAppIconView] = [objc_allocWithZone(type metadata accessor for MultiAppFallbackIconView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_gradientView] = [objc_allocWithZone(type metadata accessor for MultiAppFallbackGradientView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v25[0] = sub_100113508;
  v25[1] = 0;
  v25[2] = sub_1005AB608;
  v25[3] = 0;
  v25[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v25[5] = 0;
  v25[6] = sub_100113508;
  v25[7] = 0;
  v25[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v25[9] = 0;
  v25[10] = sub_100287668;
  v25[11] = 0;
  v26 = 0x4000000000000000uLL;
  v27 = 0;
  v28 = 0x4018000000000000;
  v29 = 0;
  v30 = 1;
  v12 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView(0));
  *&v4[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView] = sub_100550DDC(v25, &v26);
  type metadata accessor for InfoLayerOverlayContainerView();
  *&v4[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v24.receiver = v4;
  v24.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_gradientView;
  v15 = *&v13[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_gradientView];
  v16 = v13;
  v17 = v15;
  [v17 frame];
  [v17 setFrame:?];

  [*&v13[v14] setClipsToBounds:1];
  [*&v13[v14] _setContinuousCornerRadius:20.0];
  [v16 _setContinuousCornerRadius:20.0];
  v18 = [v16 contentView];
  [v18 addSubview:*&v13[v14]];

  v19 = [v16 contentView];
  [v19 addSubview:*&v16[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_multiAppIconView]];

  v20 = [v16 contentView];
  [v20 addSubview:*&v16[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView]];

  v21 = [v16 contentView];
  [v21 addSubview:*&v16[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer]];

  v22 = [v16 contentView];
  [v22 setClipsToBounds:1];

  sub_100005744(0, &qword_100972780, UITraitCollection_ptr);
  static UITraitCollection.systemTraitsAffectingColorAppearance.getter();
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  sub_1004EAE8C();

  return v16;
}

id sub_1003CC7B0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isTransitioning);
  *(*(v1 + OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView) + qword_10098B800) = v2 & 1;
  sub_100551D80();
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer);
  v4 = OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_isTransitioning;
  v3[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_isTransitioning] = v2 & 1;
  [v3 setHidden:(v3[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_sizeCategory] == 4) & (v2 ^ 1u)];
  v3[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_isLayoutRequired] = (v3[v4] & 1) == 0;

  return [v3 setNeedsLayout];
}

uint64_t sub_1003CC8A0()
{
  v1 = [v0 traitCollection];
  v2 = v1;
  v3 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
  if (v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v4 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v4 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  sub_1000A805C(v1, v0[*v4], &v31);
  v5 = v34;

  v6 = *&v0[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView];
  v7 = *&v0[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer];
  v8 = *&v0[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlayKind];
  v9 = v0[v3];
  v10 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v9)
  {
    v10 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v11 = v0[v10];
  v12 = v0[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlayKind + 8];
  v13 = v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory];
  v26 = v31;
  v27 = v32;
  v28 = v33;
  *&v29 = v5;
  *(&v29 + 1) = v6;
  *v30 = v7;
  *&v30[8] = v8;
  v30[16] = v12;
  v30[17] = v11;
  v30[18] = v13;
  v30[19] = v9;
  v30[20] = 0;
  v35 = v31;
  v36 = v32;
  *&v39[13] = *&v30[13];
  v38 = v29;
  *v39 = *v30;
  v37 = v33;
  v14 = v6;
  v15 = v7;
  [v0 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [v0 traitCollection];
  sub_1006D05F8(v24, v17, v19, v21, v23);

  return sub_1000A8C48(&v26);
}

void sub_1003CCA44()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v2 - 8);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = &v61 - v7;
  v9 = *&v0[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_multiAppIconView];
  v10 = *&v9[OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_configuration];
  if (v10)
  {
    v11 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
    v12 = *(v10 + 24);
    if (v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
    {
      v13 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v13 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    if (v0[*v13] == 6 && (v14 = [v0 traitCollection], v15 = UITraitCollection.prefersAccessibilityLayouts.getter(), v14, (v15 & 1) == 0))
    {
      [v1 bounds];
      sub_1003CD040(v12, v37, v38);
      [v1 bounds];
      CGRectGetMidX(v68);
      [v1 bounds];
      CGRectGetMinY(v69);
      [v1 bounds];
      CGRectGetWidth(v70);
      [v1 bounds];
      CGRectGetHeight(v71);
      v39 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
      swift_beginAccess();
      sub_1000A833C(&v1[v39], v8);
      if (v1[v11])
      {
        v40 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v40 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v41 = v1[*v40];
      v42 = [v1 traitCollection];
      sub_1004EE9F4(v8, v41, v42);

      sub_10002B894(v8, &qword_10097DBD0, &qword_1007BC750);
      sub_1000A833C(&v1[v39], v4);
      if (v1[v11])
      {
        v43 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v43 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v44 = v1[*v43];
      v45 = [v1 traitCollection];
      sub_1004EE9F4(v4, v44, v45);

      sub_10002B894(v4, &qword_10097DBD0, &qword_1007BC750);
      CGRect.subtracting(insets:)();
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v53 = v52;
      v54 = [v9 traitCollection];
      sub_10017CBC4(v54, v51, v53);

      v72.origin.x = v47;
      v72.origin.y = v49;
      v72.size.width = v51;
      v72.size.height = v53;
      CGRectGetMidX(v72);
      v73.origin.x = v47;
      v73.origin.y = v49;
      v73.size.width = v51;
      v73.size.height = v53;
      CGRectGetMinY(v73);
      v55 = [v1 traitCollection];
      [v1 bounds];
      CGRect.withLayoutDirection(using:relativeTo:)();
      v57 = v56;
      MinY = v58;
      v27 = v59;
      v29 = v60;

      v36 = v57;
    }

    else
    {
      [v1 bounds];
      sub_1003CD040(v12, v16, v17);
      MinY = v18;
      [v1 bounds];
      CGRectGetMinX(v62);
      [v1 bounds];
      CGRectGetMinY(v63);
      [v1 bounds];
      CGRectGetWidth(v64);
      [*&v1[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView] frame];
      CGRectGetMinY(v65);
      CGRect.subtracting(insets:)();
      x = v66.origin.x;
      y = v66.origin.y;
      width = v66.size.width;
      height = v66.size.height;
      v24 = CGRectGetHeight(v66);
      v25 = [v9 traitCollection];
      sub_10017CBC4(v25, 1.79769313e308, v24);
      v27 = v26;
      v29 = v28;

      if (v1[v11])
      {
        v30 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v30 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v31 = x;
      v32 = y;
      v33 = width;
      v34 = height;
      if (v1[*v30] == 4)
      {
        MinY = CGRectGetMinY(*&v31);
      }

      else
      {
        v35 = CGRectGetMidY(*&v31) + v29 * -0.5;
        if (v35 > MinY)
        {
          MinY = v35;
        }
      }

      [v1 bounds];
      v36 = floor(CGRectGetMidX(v67) + v27 * -0.5);
    }

    [v9 setFrame:{v36, MinY, v27, v29}];
  }
}

void sub_1003CD040(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v6 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v6 - 8);
  v62 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v61 - v9;
  __chkstk_darwin(v11);
  v13 = &v61 - v12;
  __chkstk_darwin(v14);
  v16 = &v61 - v15;
  __chkstk_darwin(v17);
  v19 = &v61 - v18;
  *&v21 = __chkstk_darwin(v20).n128_u64[0];
  v23 = &v61 - v22;
  v24 = [v3 traitCollection];
  v63 = UITraitCollection.prefersAccessibilityLayouts.getter();

  v25 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
  if (v4[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded] != 1)
  {
    if (a1 == 3)
    {
      goto LABEL_13;
    }

    if (a1 != 2)
    {
      if (a1 != 1)
      {
        goto LABEL_41;
      }

      goto LABEL_23;
    }

LABEL_18:
    v31 = v4[v25];
    if (v4[v25])
    {
      v32 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v32 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v33 = v4[*v32];
    if (v33 != 4)
    {
      if ((v33 != 6) | v63 & 1)
      {
        goto LABEL_39;
      }

      v37 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
      swift_beginAccess();
      sub_1000A833C(&v4[v37], v19);
      if (v31)
      {
        v38 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v38 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v39 = v4[*v38];
      v40 = [v4 traitCollection];
      sub_1004EE9F4(v19, v39, v40);

      v41 = v19;
      goto LABEL_57;
    }

    goto LABEL_52;
  }

  if ((v4[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32] & 1) != 0 || (v26 = [v4 traitCollection], v27 = UITraitCollection.isSizeClassCompact.getter(), v26, (v27 & 1) == 0))
  {
    if (a1 == 1)
    {
LABEL_23:
      v34 = v4[v25];
      if (v4[v25])
      {
        v35 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v35 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v36 = v4[*v35];
      if (v36 == 4)
      {
        goto LABEL_52;
      }

      if ((v36 != 6) | v63 & 1)
      {
LABEL_39:
        if (v4[v25] == 1)
        {
          v46 = [v4 traitCollection];
          UITraitCollection.prefersRightToLeftLayouts.getter();

          v47 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
          swift_beginAccess();
          sub_1000A833C(&v4[v47], v13);
          v48 = [v4 traitCollection];
          sub_1004EDF34(v13, v48);
          goto LABEL_50;
        }

LABEL_41:
        v49 = [v4 traitCollection];
        v50 = UITraitCollection.prefersRightToLeftLayouts.getter();

        v51 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
        if (v50)
        {
          swift_beginAccess();
          sub_1000A833C(&v4[v51], v10);
          if (v4[v25])
          {
            v52 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
          }

          else
          {
            v52 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
          }

          v53 = v4[*v52];
          v54 = [v4 traitCollection];
          sub_1004EE9F4(v10, v53, v54);

          v13 = v10;
          goto LABEL_51;
        }

        swift_beginAccess();
        v13 = v62;
        sub_1000A833C(&v4[v51], v62);
        if (v4[v25])
        {
          v55 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
        }

        else
        {
          v55 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
        }

        v56 = v4[*v55];
        v48 = [v4 traitCollection];
        sub_1004EE9F4(v13, v56, v48);
LABEL_50:

LABEL_51:
        sub_10002B894(v13, &qword_10097DBD0, &qword_1007BC750);
        goto LABEL_52;
      }

      v57 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
      swift_beginAccess();
      sub_1000A833C(&v4[v57], v23);
      if (v34)
      {
        v58 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v58 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v59 = v4[*v58];
      v60 = [v4 traitCollection];
      sub_1004EE9F4(v23, v59, v60);

      v41 = v23;
LABEL_57:
      sub_10002B894(v41, &qword_10097DBD0, &qword_1007BC750);
      goto LABEL_52;
    }
  }

  else if (a1 == 1)
  {
    goto LABEL_23;
  }

  if (a1 == 2)
  {
    goto LABEL_18;
  }

  if (a1 != 3)
  {
    goto LABEL_39;
  }

LABEL_13:
  v28 = v4[v25];
  if (v4[v25])
  {
    v29 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v29 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v30 = v4[*v29];
  if (v30 != 4)
  {
    if ((v30 != 6) | v63 & 1)
    {
      goto LABEL_39;
    }

    v42 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_1000A833C(&v4[v42], v16);
    if (v28)
    {
      v43 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v43 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v44 = v4[*v43];
    v45 = [v4 traitCollection];
    sub_1004EE9F4(v16, v44, v45);

    v41 = v16;
    goto LABEL_57;
  }

LABEL_52:
  static UIEdgeInsets.vertical(top:bottom:)();
}

double sub_1003CD73C()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_multiAppIconView];
  v2 = OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_configuration;
  if (*(v1 + OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_configuration))
  {
    swift_unknownObjectWeakAssign();

    sub_10017BCA4();
  }

  *(v1 + v2) = 0;

  sub_1003CC278();
  sub_100086248(_swiftEmptyArrayStorage);
  *&v0[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_artworks] = _swiftEmptyArrayStorage;

  return result;
}

void sub_1003CD85C(__n128 a1)
{
  sub_1004EE4C4();
  v2 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
  if (v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 20.0;
  }

  [v1 _setContinuousCornerRadius:v3];
  [*&v1[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_gradientView] _setContinuousCornerRadius:v3];
  if (*&v1[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlay])
  {
    v4 = *&v1[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlay + 8];
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 16);
    swift_unknownObjectRetain();
    v7 = v6(ObjectType, v4);
    swift_unknownObjectRelease();
    [v7 _setContinuousCornerRadius:v3];
  }

  *(*&v1[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView] + qword_10098B7F8) = v1[v2];
  sub_100551950();
  *(*&v1[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer] + OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_isExpanded) = v1[v2];

  sub_1004EAE8C();
}

id sub_1003CD9A8()
{
  result = [v0 setNeedsLayout];
  if (v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v2 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v3 = v0[*v2];
  if (v3 != 7)
  {
    *(*&v0[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView] + qword_10098B7B8) = v3;
    sub_10055189C();
    v4 = *&v0[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer];
    v4[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_sizeCategory] = v3;
    if (v3 == 4)
    {
      v5 = v4[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_isTransitioning] ^ 1;
    }

    else
    {
      v5 = 0;
    }

    [v4 setHidden:v5 & 1];
    v6 = *&v0[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_multiAppIconView];
    v6[OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_sizeCategory] = v3;
    [v6 setNeedsLayout];

    return [v0 setNeedsLayout];
  }

  return result;
}

void sub_1003CDAD8(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  if ((a3 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 112))(ObjectType, a2);
    v12 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_1000A83AC(v10, &v4[v12]);
    swift_endAccess();
    v4[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory] = (*(a2 + 160))(ObjectType, a2);
    sub_1003D0D48();
    v13 = (*(a2 + 136))(ObjectType, a2);
    sub_1004EAB3C(v13);
  }

  v14 = swift_dynamicCastClass();
  if (v14)
  {
    if ((a3 & 1) == 0)
    {
      v15 = *(v14 + OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView);
      v16 = v14;
      v17 = a1;
      v18 = v15;
      sub_1005533F0(v18);

      [v4 setOverrideUserInterfaceStyle:{objc_msgSend(v16, "overrideUserInterfaceStyle")}];

      sub_10017C594(v19);

      sub_100086248(v20);
      *&v4[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_artworks] = *&v16[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_artworks];

      [v4 setNeedsLayout];
    }
  }
}

void sub_1003CDD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v167 = a4;
  v7 = a2;
  v9 = type metadata accessor for EditorialDisplayOptions();
  v164 = *(v9 - 8);
  __chkstk_darwin(v9);
  v177 = &v150 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TodayCard.Style();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v165 = &v150 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v174 = &v150 - v15;
  __chkstk_darwin(v16);
  v173 = &v150 - v17;
  v163 = type metadata accessor for StringCharacteristics();
  v162 = *(v163 - 8);
  __chkstk_darwin(v163);
  v172 = &v150 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v19 - 8);
  v21 = &v150 - v20;
  v22 = type metadata accessor for PageGrid();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v21, a3, v22);
  (*(v23 + 56))(v21, 0, 1, v22);
  v24 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_1000A83AC(v21, &v5[v24]);
  swift_endAccess();
  sub_1004EAB3C(v7);
  v25 = [v5 backgroundView];
  if (v25)
  {
    v26 = v25;
    v27 = TodayCard.backgroundColor.getter();
    if (!v27)
    {
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      v27 = static UIColor.todayCardDefaultBackground.getter();
    }

    v28 = v27;
    [v26 setBackgroundColor:v27];
  }

  TodayCard.media.getter();
  v29 = type metadata accessor for TodayCardMediaMultiAppFallback();
  v30 = swift_dynamicCastClass();

  if (!v30)
  {
    TodayCard.media.getter();
    type metadata accessor for TodayCardMediaRiver();
    v31 = swift_dynamicCastClass();

    if (!v31)
    {
      TodayCard.media.getter();
      type metadata accessor for TodayCardMediaAppIcon();
      v32 = swift_dynamicCastClass();

      if (!v32)
      {
        TodayCard.media.getter();
        type metadata accessor for TodayCardMediaList();
        v33 = swift_dynamicCastClass();

        if (!v33)
        {
          return;
        }
      }
    }
  }

  v159 = v9;
  v170 = v5;
  v34 = *&v5[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView];
  v35 = TodayCard.heading.getter();
  v171 = v36;
  v176 = TodayCard.title.getter();
  v168 = v37;
  v152 = TodayCard.shortTitle.getter();
  v169 = v38;
  TodayCard.titleCharacteristics.getter();
  v39 = TodayCard.inlineDescription.getter();
  v178 = v40;
  v161 = a3;
  v166 = v11;
  v160 = v12;
  v158 = v29;
  v153 = v39;
  if (v7 == 4)
  {
    (*(v12 + 104))(v173, enum case for TodayCard.Style.dark(_:), v11);
    v157 = sub_1000DB5A0;
    v41 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v156 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v155 = sub_100287668;
    v154 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  }

  else
  {
    TodayCard.style.getter();
    v157 = sub_1000DB5A0;
    v154 = sub_1005AB29C;
    v41 = sub_1005AB458;
    v156 = sub_1005AB484;
    v155 = sub_1005AB2C8;
  }

  v175 = v7;
  v42 = v7;
  TodayCard.editorialDisplayOptions.getter();
  v34[qword_10098B7E8] = 0;
  v43 = *&v34[qword_10098B7D0];
  *(v43 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v44 = *&v34[qword_10098B7C8];
  sub_10006E7C4(v35, v171);
  v45 = EditorialDisplayOptions.showBadgeInSmallCards.getter();
  v46 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
  v47 = *&v44[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
  if (v42 == 4 && (v45 & 1) == 0)
  {
    if (([v47 isHidden] & 1) != 0 || (v44[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v44[v46] setHidden:1];
      goto LABEL_27;
    }

    [*&v44[v46] setHidden:1];
    v44[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    goto LABEL_25;
  }

  v48 = [v47 text];
  if (v48)
  {
    v49 = v48;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v50 = static String.isNilOrEmpty(_:)();
  v51 = v50 & 1;

  if (v51 != [*&v44[v46] isHidden] && (v44[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning] & 1) != 0)
  {
    if ((v50 & 1) == 0)
    {
      [*&v44[v46] setAlpha:0.0];
      v151 = objc_opt_self();
      [v151 inheritedAnimationDuration];
      v53 = v52;
      v54 = swift_allocObject();
      *(v54 + 16) = v44;
      v183 = sub_1000A9214;
      v184 = v54;
      aBlock = _NSConcreteStackBlock;
      v180 = 1107296256;
      v181 = sub_100007A08;
      v182 = &unk_1008C0F78;
      v150 = _Block_copy(&aBlock);
      v55 = v44;

      v56 = swift_allocObject();
      *(v56 + 16) = v55;
      v183 = sub_1000A9220;
      v184 = v56;
      aBlock = _NSConcreteStackBlock;
      v180 = 1107296256;
      v181 = sub_100504C5C;
      v182 = &unk_1008C0FC8;
      v57 = _Block_copy(&aBlock);
      v58 = v55;

      v59 = v150;
      [v151 animateWithDuration:0 delay:v150 options:v57 animations:v53 completion:0.0];
      _Block_release(v57);
      _Block_release(v59);
    }

    [*&v44[v46] setHidden:v50 & 1];
    v44[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
LABEL_25:
    [v44 setNeedsLayout];
    goto LABEL_27;
  }

  [*&v44[v46] setHidden:v51];
LABEL_27:
  v60 = &v34[qword_10098B7F0];
  *v60 = v157;
  v60[1] = 0;
  v60[2] = v154;
  v60[3] = 0;
  v60[4] = v41;
  v60[5] = 0;
  v60[6] = v156;
  v60[7] = 0;
  v60[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v60[9] = 0;
  v60[10] = v155;
  v60[11] = 0;

  sub_100551950();
  LODWORD(v61) = v175;
  v62 = v178;
  if (v168)
  {
    if (v175 == 4)
    {
      sub_1005531F8();
    }

    else
    {
      sub_10055321C();
    }

    v63 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
    v64 = *(v43 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
    v65 = objc_allocWithZone(NSAttributedString);
    v66 = v64;
    v67 = String._bridgeToObjectiveC()();
    type metadata accessor for Key(0);
    sub_1003D0E4C(&qword_100976620, type metadata accessor for Key, &unk_1007B0934);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v69 = [v65 initWithString:v67 attributes:isa];

    [v66 setAttributedText:v69];
    [*(v43 + v63) setAdjustsFontSizeToFitWidth:0];
    [*(v43 + v63) setMinimumScaleFactor:0.0];
    [*(v43 + v63) setAttributedText:0];
    if (v169 && v34[qword_10098B7C0] == 4)
    {
      v62 = v178;
      if (v61 == 4)
      {
        v70 = v176;
        v73 = v169;
        v71 = v168;
        v72 = v152;
      }

      else
      {
        v70 = v152;
        v71 = v169;
        v72 = v176;
        v73 = v168;
      }

      sub_10006E8BC(v70, v71, v72, v73);
    }

    else
    {
      sub_10006E7C4(v176, v168);
      v62 = v178;
    }
  }

  v74 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
  v75 = *(v43 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v76 = [v75 text];
  if (v76 || (v76 = [*(v43 + v74) attributedText]) != 0)
  {
    v77 = v166;

    v78 = 0;
  }

  else
  {
    v78 = 1;
    v77 = v166;
  }

  [v75 setHidden:v78];

  [v34 setNeedsLayout];
  v79 = *&v34[qword_10098B7D8];
  [v79 setImage:0];
  [v79 setHidden:1];
  if (v61 != 4 && (EditorialDisplayOptions.suppressTagline.getter() & 1) == 0 && v62)
  {
    v80 = a1;
    v81 = v61;
    v82 = HIBYTE(v62) & 0xF;
    if ((v62 & 0x2000000000000000) == 0)
    {
      v82 = v153 & 0xFFFFFFFFFFFFLL;
    }

    LODWORD(v176) = v82 == 0;
    v83 = *&v34[qword_10098B7E0];
    v84 = &v83[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
    v85 = *&v83[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
    goto LABEL_49;
  }

  v83 = *&v34[qword_10098B7E0];
  v84 = &v83[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
  v85 = *&v83[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
  if (v62)
  {
    v80 = a1;
    v81 = v61;
    LODWORD(v176) = 1;
LABEL_49:
    v86 = v85;
    v62 = String._bridgeToObjectiveC()();
    LODWORD(v61) = v81;
    a1 = v80;
    goto LABEL_51;
  }

  v86 = v85;
  LODWORD(v176) = 1;
LABEL_51:
  [v86 setText:v62];

  v87 = [*v84 isHidden];
  if (v176 == v87 || (v83[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*v84 setHidden:v176];
  }

  else
  {
    if ((v176 & 1) == 0)
    {
      [*v84 setAlpha:0.0];
      v88 = objc_opt_self();
      [v88 inheritedAnimationDuration];
      v90 = v89;
      v91 = swift_allocObject();
      *(v91 + 16) = v83;
      v183 = sub_1000A8B90;
      v184 = v91;
      aBlock = _NSConcreteStackBlock;
      v180 = 1107296256;
      v181 = sub_100007A08;
      v182 = &unk_1008C0ED8;
      v92 = _Block_copy(&aBlock);
      v93 = v83;

      v94 = swift_allocObject();
      *(v94 + 16) = v93;
      v183 = sub_1000A8B98;
      v184 = v94;
      aBlock = _NSConcreteStackBlock;
      v180 = 1107296256;
      v181 = sub_100504C5C;
      v182 = &unk_1008C0F28;
      v95 = _Block_copy(&aBlock);
      v96 = v93;
      v77 = v166;
      LODWORD(v61) = v175;

      [v88 animateWithDuration:0 delay:v92 options:v95 animations:v90 completion:0.0];
      _Block_release(v95);
      _Block_release(v92);
    }

    [*v84 setHidden:v176];
    v83[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v83 setNeedsLayout];
  }

  v97 = v159;
  v98 = 1;
  v99 = v173;
  sub_100550798(v173, 1);
  [v34 setNeedsLayout];

  (*(v164 + 8))(v177, v97);
  v100 = v160;
  v101 = *(v160 + 8);
  v101(v99, v77);
  (*(v162 + 8))(v172, v163);
  TodayCard.style.getter();
  v102 = v165;
  (*(v100 + 104))(v165, enum case for TodayCard.Style.white(_:), v77);
  sub_1003D0E4C(&qword_100972DC0, &type metadata accessor for TodayCard.Style, &protocol conformance descriptor for TodayCard.Style);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (aBlock != v185 || v180 != v186)
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v98 = 1;
    }

    else
    {
      v98 = 2;
    }
  }

  v101(v102, v77);
  v101(v174, v77);

  v103 = v170;
  [v170 setOverrideUserInterfaceStyle:v98];
  sub_1005D6114(a1, v161, v61, v167);
  TodayCard.media.getter();
  v104 = swift_dynamicCastClass();
  if (v104)
  {
    p_aBlock = v104;
    v106 = TodayCardMediaMultiAppFallback.lockups.getter();
    v107 = v106;
    aBlock = _swiftEmptyArrayStorage;
    v108 = v106 & 0xFFFFFFFFFFFFFF8;
    if (v106 >> 62)
    {
      goto LABEL_184;
    }

    v109 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_65;
  }

  type metadata accessor for TodayCardMediaRiver();
  v116 = swift_dynamicCastClass();
  if (v116)
  {
    p_aBlock = v116;
    v117 = TodayCardMediaRiver.lockups.getter();
    v107 = v117;
    aBlock = _swiftEmptyArrayStorage;
    v108 = v117 & 0xFFFFFFFFFFFFFF8;
    if (v117 >> 62)
    {
      v118 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v118 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v119 = 0;
    v120 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v118 == v119)
      {
        goto LABEL_112;
      }

      if ((v107 & 0xC000000000000001) == 0)
      {
        break;
      }

      p_aBlock = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v61 = v119 + 1;
      if (__OFADD__(v119, 1))
      {
        goto LABEL_180;
      }

LABEL_95:

      v121 = dispatch thunk of Lockup.artwork.getter();

      ++v119;
      if (v121)
      {
        p_aBlock = &aBlock;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v120 = aBlock;
        v119 = v61;
      }
    }

    if (v119 >= *(v108 + 16))
    {
      goto LABEL_181;
    }

    p_aBlock = *(v107 + 8 * v119 + 32);

    v61 = v119 + 1;
    if (!__OFADD__(v119, 1))
    {
      goto LABEL_95;
    }

LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    v109 = _CocoaArrayWrapper.endIndex.getter();
LABEL_65:
    v110 = 0;
    v111 = _swiftEmptyArrayStorage;
    while (v109 != v110)
    {
      if ((v107 & 0xC000000000000001) != 0)
      {
        p_aBlock = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v61 = v110 + 1;
        if (__OFADD__(v110, 1))
        {
          goto LABEL_178;
        }
      }

      else
      {
        if (v110 >= *(v108 + 16))
        {
          goto LABEL_179;
        }

        p_aBlock = *(v107 + 8 * v110 + 32);

        v61 = v110 + 1;
        if (__OFADD__(v110, 1))
        {
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
          goto LABEL_180;
        }
      }

      v112 = dispatch thunk of Lockup.artwork.getter();

      ++v110;
      if (v112)
      {
        p_aBlock = &aBlock;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v111 = aBlock;
        v110 = v61;
      }
    }

    v113 = v111 >> 62;
    if (!(v111 >> 62))
    {
      v114 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v114 >= 3)
      {
        v115 = 3;
      }

      else
      {
        v115 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      while (1)
      {
        LOBYTE(v61) = v175;
        if (v114 < v115)
        {
          goto LABEL_190;
        }

        if ((v111 & 0xC000000000000001) != 0 && v115)
        {
          type metadata accessor for Artwork();

          _ArrayBuffer._typeCheckSlowPath(_:)(0);
          if (v115 != 1)
          {
            _ArrayBuffer._typeCheckSlowPath(_:)(1);
            if (v115 != 2)
            {
              _ArrayBuffer._typeCheckSlowPath(_:)(2);
            }
          }
        }

        else
        {
        }

        if (v113)
        {
          p_aBlock = _CocoaArrayWrapper.subscript.getter();
          v110 = v122;
          v113 = v123;
          v115 = v124;

          if ((v115 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        else
        {
          p_aBlock = (v111 & 0xFFFFFFFFFFFFFF8);
          v110 = (v111 & 0xFFFFFFFFFFFFFF8) + 32;
          v115 = (2 * v115) | 1;
          if ((v115 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        v120 = type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v125 = swift_dynamicCastClass();
        if (!v125)
        {
          swift_unknownObjectRelease();
          v125 = _swiftEmptyArrayStorage;
        }

        v126 = v125[2];

        v127 = (v115 >> 1) - v113;
        if (!__OFSUB__(v115 >> 1, v113))
        {
          goto LABEL_169;
        }

        __break(1u);
LABEL_112:

        v113 = v120 >> 62;
        if (v120 >> 62)
        {
          if (v120 < 0)
          {
            p_aBlock = v120;
          }

          else
          {
            p_aBlock = (v120 & 0xFFFFFFFFFFFFFF8);
          }

          v107 = _CocoaArrayWrapper.endIndex.getter();
          if (_CocoaArrayWrapper.endIndex.getter() < 0)
          {
            __break(1u);
LABEL_198:
            __break(1u);
LABEL_199:
            v131 = _CocoaArrayWrapper.endIndex.getter();
LABEL_126:
            v110 = 0;
            v111 = _swiftEmptyArrayStorage;
            while (v131 != v110)
            {
              if ((v107 & 0xC000000000000001) != 0)
              {
                p_aBlock = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v61 = v110 + 1;
                if (__OFADD__(v110, 1))
                {
                  goto LABEL_182;
                }
              }

              else
              {
                if (v110 >= *(v108 + 16))
                {
                  goto LABEL_183;
                }

                p_aBlock = *(v107 + 8 * v110 + 32);

                v61 = v110 + 1;
                if (__OFADD__(v110, 1))
                {
                  goto LABEL_182;
                }
              }

              v132 = dispatch thunk of Lockup.artwork.getter();

              ++v110;
              if (v132)
              {
                p_aBlock = &aBlock;
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v111 = aBlock;
                v110 = v61;
              }
            }

            goto LABEL_148;
          }

          if (v107 >= 3)
          {
            v148 = 3;
          }

          else
          {
            v148 = v107;
          }

          if (v107 >= 0)
          {
            v107 = v148;
          }

          else
          {
            v107 = 3;
          }

          v128 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v128 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v128 >= 3)
          {
            v107 = 3;
          }

          else
          {
            v107 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }
        }

        LOBYTE(v61) = v175;
        if (v128 < v107)
        {
          goto LABEL_198;
        }

        if ((v120 & 0xC000000000000001) != 0 && v107)
        {
          type metadata accessor for Artwork();

          _ArrayBuffer._typeCheckSlowPath(_:)(0);
          if (v107 != 1)
          {
            _ArrayBuffer._typeCheckSlowPath(_:)(1);
            if (v107 != 2)
            {
              _ArrayBuffer._typeCheckSlowPath(_:)(2);
            }
          }
        }

        else
        {
        }

        if (v113)
        {
          p_aBlock = _CocoaArrayWrapper.subscript.getter();
          v110 = v133;
          v113 = v134;
          v115 = v135;

          if ((v115 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        else
        {
          p_aBlock = (v120 & 0xFFFFFFFFFFFFFF8);
          v110 = (v120 & 0xFFFFFFFFFFFFFF8) + 32;
          v115 = (2 * v107) | 1;
          if ((v115 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        v111 = type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v136 = swift_dynamicCastClass();
        if (!v136)
        {
          swift_unknownObjectRelease();
          v136 = _swiftEmptyArrayStorage;
        }

        v126 = v136[2];

        v127 = (v115 >> 1) - v113;
        if (!__OFSUB__(v115 >> 1, v113))
        {
          goto LABEL_169;
        }

        __break(1u);
LABEL_148:

        v113 = v111 >> 62;
        if (v111 >> 62)
        {
          if (v111 < 0)
          {
            p_aBlock = v111;
          }

          else
          {
            p_aBlock = (v111 & 0xFFFFFFFFFFFFFF8);
          }

          v115 = _CocoaArrayWrapper.endIndex.getter();
          if (_CocoaArrayWrapper.endIndex.getter() < 0)
          {
            __break(1u);
LABEL_205:
            __break(1u);
            goto LABEL_206;
          }

          if (v115 >= 3)
          {
            v149 = 3;
          }

          else
          {
            v149 = v115;
          }

          if ((v115 & 0x8000000000000000) == 0)
          {
            v115 = v149;
          }

          else
          {
            v115 = 3;
          }

          v137 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v137 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v137 >= 3)
          {
            v115 = 3;
          }

          else
          {
            v115 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }
        }

        LOBYTE(v61) = v175;
        if (v137 < v115)
        {
          goto LABEL_205;
        }

        if ((v111 & 0xC000000000000001) != 0 && v115)
        {
          type metadata accessor for Artwork();

          _ArrayBuffer._typeCheckSlowPath(_:)(0);
          if (v115 != 1)
          {
            _ArrayBuffer._typeCheckSlowPath(_:)(1);
            if (v115 != 2)
            {
              _ArrayBuffer._typeCheckSlowPath(_:)(2);
            }
          }
        }

        else
        {
        }

        if (v113)
        {
          p_aBlock = _CocoaArrayWrapper.subscript.getter();
          v110 = v139;
          v113 = v140;
          v115 = v141;

          if ((v115 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        else
        {
          p_aBlock = (v111 & 0xFFFFFFFFFFFFFF8);
          v110 = (v111 & 0xFFFFFFFFFFFFFF8) + 32;
          v115 = (2 * v115) | 1;
          if ((v115 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        v111 = type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v143 = swift_dynamicCastClass();
        if (!v143)
        {
          swift_unknownObjectRelease();
          v143 = _swiftEmptyArrayStorage;
        }

        v126 = v143[2];

        v127 = (v115 >> 1) - v113;
        if (!__OFSUB__(v115 >> 1, v113))
        {
LABEL_169:
          if (v126 != v127)
          {
            goto LABEL_191;
          }

          v138 = swift_dynamicCastClass();

          swift_unknownObjectRelease_n();
          if (!v138)
          {
            swift_unknownObjectRelease();
            v138 = _swiftEmptyArrayStorage;
          }

          goto LABEL_172;
        }

LABEL_206:
        __break(1u);
LABEL_207:
        if (v115 >= 3)
        {
          v147 = 3;
        }

        else
        {
          v147 = v115;
        }

        if ((v115 & 0x8000000000000000) == 0)
        {
          v115 = v147;
        }

        else
        {
          v115 = 3;
        }

        v114 = _CocoaArrayWrapper.endIndex.getter();
      }
    }

    if (v111 < 0)
    {
      p_aBlock = v111;
    }

    else
    {
      p_aBlock = (v111 & 0xFFFFFFFFFFFFFF8);
    }

    v115 = _CocoaArrayWrapper.endIndex.getter();
    if ((_CocoaArrayWrapper.endIndex.getter() & 0x8000000000000000) == 0)
    {
      goto LABEL_207;
    }

    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    swift_unknownObjectRelease_n();
LABEL_165:
    sub_1005E7A8C(p_aBlock, v110, v113, v115);
    v138 = v142;
    swift_unknownObjectRelease();

LABEL_172:
    v103 = v170;
  }

  else
  {
    type metadata accessor for TodayCardMediaList();
    v129 = swift_dynamicCastClass();
    if (v129)
    {
      p_aBlock = v129;
      v130 = TodayCardMediaList.lockups.getter();
      v107 = v130;
      aBlock = _swiftEmptyArrayStorage;
      v108 = v130 & 0xFFFFFFFFFFFFFF8;
      if (!(v130 >> 62))
      {
        v131 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_126;
      }

      goto LABEL_199;
    }

    type metadata accessor for TodayCardMediaAppIcon();
    if (swift_dynamicCastClass())
    {
      sub_10002849C(&qword_100973210, qword_1007B0BB0);
      v138 = swift_allocObject();
      *(v138 + 1) = xmmword_1007B0B70;
      v138[4] = TodayCardMediaAppIcon.icon.getter();
    }

    else
    {

      v138 = _swiftEmptyArrayStorage;
    }
  }

  v144 = OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_artworks;
  v145 = *&v103[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_artworks];

  v146 = sub_1006E1E74(v138, v145);

  if (v146)
  {
  }

  else
  {
    *&v103[v144] = v138;

    [v103 setNeedsLayout];
  }
}

double sub_1003CF7FC(uint64_t a1, char a2)
{
  type metadata accessor for ASKBagContract();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v21 = OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_artworks;
  v22 = v2;
  v3 = *(v2 + OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_artworks);
  if (v3 >> 62)
  {
LABEL_38:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = ASKBagContract.enablePrerenderedIconArtwork.getter();
  type metadata accessor for MultiAppFallbackIconView.Configuration();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v6 + 40) = sub_1003975F0(_swiftEmptyArrayStorage);
  v7 = 3;
  if (v4 < 3)
  {
    v7 = v4;
  }

  *(v6 + 24) = v7;
  *(v6 + 32) = v5 & 1;

  sub_10017C594(v8);
  v9 = *(v22 + v21);
  *&v23[0] = _swiftEmptyArrayStorage;
  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = 0;
  v12 = _swiftEmptyArrayStorage;
  while (v10 != v11)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    v14 = Artwork.backgroundColor.getter();

    ++v11;
    if (v14)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v23[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v23[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v12 = *&v23[0];
      v11 = v13;
    }
  }

  sub_100086248(v12);
  type metadata accessor for ArtworkLoader();
  inject<A, B>(_:from:)();
  v15 = *(v22 + v21);
  if (v15 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v16)
  {
    v17 = 0;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_36;
        }
      }

      if (*(v22 + v21) >> 62)
      {
        _CocoaArrayWrapper.endIndex.getter();
      }

      Artwork.config(_:mode:prefersLayeredImage:)();
      v24 = 0;
      memset(v23, 0, sizeof(v23));
      v18 = swift_allocObject();
      *(v18 + 16) = v6;
      *(v18 + 24) = v17;

      ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

      sub_10002B894(v23, &qword_10096FB90, &qword_1007B2A50);
      ++v17;
    }

    while (v19 != v16);
  }

  return result;
}

void sub_1003CFC90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 && (a6 & 0x8000000000000000) == 0 && *(a5 + 24) > a6)
  {
    swift_beginAccess();
    v9 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(a5 + 40);
    *(a5 + 40) = 0x8000000000000000;
    sub_100051C98(v9, a6, isUniquelyReferenced_nonNull_native);
    *(a5 + 40) = v13;
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      sub_10017BE94(a1, a6);
    }
  }
}

void sub_1003CFD60()
{
  type metadata accessor for TodayCard();
  sub_1003D0E4C(&qword_100977390, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  ItemLayoutContext.typedModel<A>(as:)();
  if (v20)
  {
    TodayCard.media.getter();

    type metadata accessor for TodayCardMediaMultiAppFallback();
    if (swift_dynamicCastClass())
    {

      if (TodayCardMediaMultiAppFallback.lockups.getter() >> 62)
      {
LABEL_73:
        _CocoaArrayWrapper.endIndex.getter();
      }

      v0 = TodayCardMediaMultiAppFallback.lockups.getter();
      v1 = v0;
      v2 = v0 & 0xFFFFFFFFFFFFFF8;
      if (v0 >> 62)
      {
        v3 = _CocoaArrayWrapper.endIndex.getter();
        if (v3)
        {
LABEL_11:
          v4 = 0;
          do
          {
            v5 = v4;
            while (1)
            {
              if ((v1 & 0xC000000000000001) != 0)
              {
                specialized _ArrayBuffer._getElementSlowPath(_:)();
                v4 = v5 + 1;
                if (__OFADD__(v5, 1))
                {
                  goto LABEL_67;
                }
              }

              else
              {
                if (v5 >= *(v2 + 16))
                {
                  goto LABEL_68;
                }

                v4 = v5 + 1;
                if (__OFADD__(v5, 1))
                {
LABEL_67:
                  __break(1u);
LABEL_68:
                  __break(1u);
                  goto LABEL_69;
                }
              }

              if (Lockup.icon.getter())
              {
                break;
              }

              ++v5;
              if (v4 == v3)
              {
                goto LABEL_79;
              }
            }

            Artwork.config(_:mode:prefersLayeredImage:)();

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }

          while (v4 != v3);
        }
      }

      else
      {
        v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v3)
        {
          goto LABEL_11;
        }
      }

LABEL_79:

      ArtworkLoader.prefetchArtwork(using:)(_swiftEmptyArrayStorage);

LABEL_80:

      return;
    }

    type metadata accessor for TodayCardMediaRiver();
    if (!swift_dynamicCastClass())
    {
      type metadata accessor for TodayCardMediaList();
      if (!swift_dynamicCastClass())
      {
        type metadata accessor for TodayCardMediaAppIcon();
        if (!swift_dynamicCastClass())
        {

          return;
        }

        sub_10002849C(&qword_100973210, qword_1007B0BB0);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_1007B0B70;

        TodayCardMediaAppIcon.icon.getter();
        v13 = Artwork.config(_:mode:prefersLayeredImage:)();

        *(v12 + 32) = v13;
        ArtworkLoader.prefetchArtwork(using:)(v12);

        goto LABEL_80;
      }

      if (TodayCardMediaList.lockups.getter() >> 62)
      {
        _CocoaArrayWrapper.endIndex.getter();
      }

      v14 = TodayCardMediaList.lockups.getter();
      v15 = v14;
      v16 = v14 & 0xFFFFFFFFFFFFFF8;
      if (v14 >> 62)
      {
        v17 = _CocoaArrayWrapper.endIndex.getter();
        if (!v17)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v17)
        {
          goto LABEL_79;
        }
      }

      v18 = 0;
      do
      {
        v19 = v18;
        while (1)
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            v18 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              goto LABEL_71;
            }
          }

          else
          {
            if (v19 >= *(v16 + 16))
            {
              goto LABEL_72;
            }

            v18 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
LABEL_71:
              __break(1u);
LABEL_72:
              __break(1u);
              goto LABEL_73;
            }
          }

          if (Lockup.icon.getter())
          {
            break;
          }

          ++v19;
          if (v18 == v17)
          {
            goto LABEL_79;
          }
        }

        Artwork.config(_:mode:prefersLayeredImage:)();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      while (v18 != v17);
      goto LABEL_79;
    }

    if (TodayCardMediaRiver.lockups.getter() >> 62)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }

    v6 = TodayCardMediaRiver.lockups.getter();
    v7 = v6;
    v8 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v6 >> 62)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
      if (!v9)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v9)
      {
        goto LABEL_79;
      }
    }

    v10 = 0;
    do
    {
      v11 = v10;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v10 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (v11 >= *(v8 + 16))
          {
            goto LABEL_70;
          }

          v10 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
            goto LABEL_71;
          }
        }

        if (Lockup.icon.getter())
        {
          break;
        }

        ++v11;
        if (v10 == v9)
        {
          goto LABEL_79;
        }
      }

      Artwork.config(_:mode:prefersLayeredImage:)();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v10 != v9);
    goto LABEL_79;
  }
}

void sub_1003D04C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a3)
  {
    ObjectType = swift_getObjectType();
    v10 = (*(a4 + 16))(ObjectType, a4);
    [v10 removeFromSuperview];
  }

  if (a1)
  {
    v11 = swift_getObjectType();
    v12 = *(a2 + 16);
    swift_unknownObjectRetain();
    v13 = v12(v11, a2);
    v14 = *&v5[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer];
    v15 = OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_overlayView;
    v16 = *&v14[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_overlayView];
    *&v14[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_overlayView] = v13;
    v17 = v13;

    [v17 setAnchorPoint:{0.0, 1.0}];
    v18 = *&v14[v15];
    if (v18)
    {
      v20[0] = 0x3FF0000000000000;
      v20[1] = 0;
      v20[2] = 0;
      v20[3] = 0x3FF0000000000000;
      v20[4] = 0;
      v20[5] = 0;
      [v18 setTransform:v20];
    }

    [v14 addSubview:v17];
    [v17 setOverrideUserInterfaceStyle:{objc_msgSend(v5, "overrideUserInterfaceStyle")}];
    [v5 _continuousCornerRadius];
    [v17 _setContinuousCornerRadius:?];
    v19 = [v17 layer];
    [v19 setMaskedCorners:12];
    swift_unknownObjectRelease();
  }
}

void sub_1003D0680(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  swift_weakAssign();
  v3 = (v2 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_10001F63C(v4, v5);
  if (*(v2 + OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlay))
  {
    v6 = *(v2 + OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlay + 8);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 16);
    swift_unknownObjectRetain();
    v9 = v8(ObjectType, v6);
    swift_unknownObjectRelease();
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      swift_getObjectType();
      dispatch thunk of NestedModelImpressionsRecording.startRecordingNestedImpressions(for:using:)();
    }
  }
}

void sub_1003D07C8(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    ImpressionsCalculator.removeAllElements()();
  }

  swift_weakAssign();
  v3 = (v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_10001F63C(v4, v5);
  if (*(v2 + OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlay))
  {
    v6 = *(v2 + OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlay + 8);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 16);
    swift_unknownObjectRetain();
    v9 = v8(ObjectType, v6);
    swift_unknownObjectRelease();
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      swift_getObjectType();
      dispatch thunk of NestedModelImpressionsRecording.stopRecordingNestedImpressions(using:)();
    }
  }
}

double sub_1003D0A70()
{
  swift_unknownObjectRelease();
  swift_weakDestroy();

  return result;
}

uint64_t type metadata accessor for MultiAppFallbackCardCollectionViewCell(uint64_t a1)
{
  result = qword_100983970;
  if (!qword_100983970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003D0C80(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlayKind;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

double sub_1003D0CD0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlay);
  *v3 = a1;
  v3[1] = a2;
  swift_unknownObjectRelease();
  return result;
}

double sub_1003D0CFC(uint64_t a1)
{
  swift_weakAssign();

  return result;
}

id sub_1003D0D48()
{
  v1 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  if (v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4)
  {
    v2 = [v0 contentView];
    [v2 setClipsToBounds:1];
  }

  result = [v0 setNeedsLayout];
  v4 = v0[v1];
  if (v4 != 7)
  {
    v5 = *&v0[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView];
    *(v5 + qword_10098B7C0) = v4;
    *(*(v5 + qword_10098B7C8) + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_originalSizeCategory) = v4;
    *(*(v5 + qword_10098B7D0) + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_originalSizeCategory) = v4;
    *(*(v5 + qword_10098B7E0) + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_originalSizeCategory) = v4;
    *(*&v0[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer] + OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_originalSizeCategory) = v4;
  }

  return result;
}

uint64_t sub_1003D0E4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003D0EB4@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = type metadata accessor for FloatingPointRoundingRule();
  v18 = *(v1 - 8);
  v19 = v1;
  __chkstk_darwin(v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&unk_100970EA0, &unk_1007B2210);
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v17 - v5;
  v7 = type metadata accessor for ComponentSeparator.Position();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Action();
  sub_1003D1370(&qword_100992FB0, &type metadata accessor for Action);
  ItemLayoutContext.typedModel<A>(as:)();
  if (v21[0])
  {
    type metadata accessor for SearchAdAction();
    sub_1003D1370(&unk_100983980, &type metadata accessor for SearchAdAction);
    ItemLayoutContext.typedModel<A>(as:)();
    v11 = v21[0];
    if (v21[0])
    {
    }

    if (Action.artwork.getter() && (, !v11))
    {
      (*(v8 + 104))(v10, enum case for ComponentSeparator.Position.bottom(_:), v7);
      if (qword_10096EB38 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for ActionLayout.Metrics();
      sub_1000056A8(v14, qword_1009D2F68);
      ActionLayout.Metrics.artworkSize.getter();
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v21[5] = v21[0];
      Conditional.evaluate(with:)();
      swift_unknownObjectRelease();
      (*(v17 + 8))(v6, v4);
      ActionLayout.Metrics.artworkMargin.getter();
      sub_10002A400(v21, v21[3]);
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      swift_unknownObjectRelease();
      (*(v18 + 8))(v3, v19);
      sub_100007000(v21);
      v12 = v20;
    }

    else
    {
      (*(v8 + 104))(v10, enum case for ComponentSeparator.Position.bottom(_:), v7);
      v12 = v20;
    }

    ComponentSeparator.init(position:leadingInset:trailingInset:color:)();

    v13 = 0;
  }

  else
  {
    v13 = 1;
    v12 = v20;
  }

  v15 = type metadata accessor for ComponentSeparator();
  return (*(*(v15 - 8) + 56))(v12, v13, 1, v15);
}

uint64_t sub_1003D1370(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t sub_1003D13C4()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSLogger();
  sub_100005644(v4, qword_100983990);
  sub_1000056A8(v4, qword_100983990);
  if (qword_10096D108 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009CE1D0);
  (*(v1 + 16))(v3, v5, v0);
  return OSLogger.init(subsystem:category:)();
}

uint64_t sub_1003D1518()
{
  v0 = sub_10002849C(&qword_1009839C0, &unk_1007CB150);
  sub_100005644(v0, qword_1009839A8);
  sub_1000056A8(v0, qword_1009839A8);
  return PreferenceKey.init(_:)();
}

uint64_t sub_1003D1590()
{
  if (static ResilientDeepLinkController.hasResilientDeepLinks(bag:)())
  {
    if (qword_10096DB50 == -1)
    {
LABEL_3:
      v0 = type metadata accessor for OSLogger();
      sub_1000056A8(v0, qword_100983990);
      sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.init(stringLiteral:)();
      Logger.info(_:)();
LABEL_21:

LABEL_22:
      v4 = 0;
      return v4 & 1;
    }

LABEL_37:
    swift_once();
    goto LABEL_3;
  }

  type metadata accessor for LocalPreferences();
  static LocalPreferences.currentApplication.getter();
  if (qword_10096DB58 != -1)
  {
    swift_once();
  }

  v1 = sub_10002849C(&qword_1009839C0, &unk_1007CB150);
  sub_1000056A8(v1, qword_1009839A8);
  Preferences.subscript.getter();

  if (v11 != 1 && v10 > 0 || (ASKBagContract.enableLocationPrivacyNotice.getter() & 1) == 0)
  {
    if (qword_10096DB50 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for OSLogger();
    sub_1000056A8(v5, qword_100983990);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1890;
    LogMessage.init(stringLiteral:)();
    static LocalPreferences.currentApplication.getter();
    Preferences.subscript.getter();

    v6 = v10;
    if (v11)
    {
      v6 = 0;
    }

    v12 = &type metadata for Int;
    v10 = v6;
    static LogMessage.safe(_:)();
    sub_10003D444(&v10);
    Logger.info(_:)();
    goto LABEL_21;
  }

  if (([objc_opt_self() locationServicesEnabled] & 1) == 0)
  {
    if (qword_10096DB50 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_37;
  }

  v2 = [objc_allocWithZone(CLLocationManager) init];
  v3 = [v2 authorizationStatus];

  v4 = 0;
  if (v3 > 2)
  {
    if ((v3 - 3) < 2)
    {
      if (qword_10096DB50 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for OSLogger();
      sub_1000056A8(v8, qword_100983990);
      sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B1890;
      LogMessage.init(stringLiteral:)();
      v12 = &type metadata for Bool;
      LOBYTE(v10) = ASKBagContract.isSponsoredAdsEnabled.getter() & 1;
      static LogMessage.safe(_:)();
      sub_10003D444(&v10);
      Logger.info(_:)();

      v4 = ASKBagContract.isSponsoredAdsEnabled.getter();
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        if (qword_10096DB50 == -1)
        {
LABEL_31:
          v9 = type metadata accessor for OSLogger();
          sub_1000056A8(v9, qword_100983990);
          sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
          type metadata accessor for LogMessage();
          *(swift_allocObject() + 16) = xmmword_1007B10D0;
          LogMessage.init(stringLiteral:)();
          Logger.info(_:)();

          sub_1003D1F0C();
          goto LABEL_22;
        }

LABEL_36:
        swift_once();
        goto LABEL_31;
      case 1:
        if (qword_10096DB50 == -1)
        {
          goto LABEL_3;
        }

        goto LABEL_37;
      case 2:
        if (qword_10096DB50 == -1)
        {
          goto LABEL_31;
        }

        goto LABEL_36;
    }
  }

  return v4 & 1;
}

double sub_1003D1F0C()
{
  v0 = sub_10002849C(&qword_1009839C0, &unk_1007CB150);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  type metadata accessor for LocalPreferences();
  static LocalPreferences.currentApplication.getter();
  if (qword_10096DB58 != -1)
  {
    swift_once();
  }

  v4 = sub_1000056A8(v0, qword_1009839A8);
  (*(v1 + 16))(v3, v4, v0);
  v8 = 1;
  v9 = 0;
  Preferences.subscript.setter();

  if (qword_10096DB50 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for OSLogger();
  sub_1000056A8(v5, qword_100983990);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  static LocalPreferences.currentApplication.getter();
  Preferences.subscript.getter();

  v6 = v8;
  if (v9)
  {
    v6 = 0;
  }

  v10 = &type metadata for Int;
  v8 = v6;
  static LogMessage.safe(_:)();
  sub_10003D444(&v8);
  Logger.info(_:)();

  return result;
}

uint64_t sub_1003D21F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1003D2240(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_1003D22C4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1003D231C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001C85F0();

  return OnboardingStep.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1003D2368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1003D23BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001C85F0();

  return static OnboardingStep.== infix(_:_:)(a1, a2, a3, v6);
}

unint64_t sub_1003D2414()
{
  result = qword_1009839C8;
  if (!qword_1009839C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009839C8);
  }

  return result;
}

unint64_t sub_1003D246C()
{
  result = qword_1009839D0;
  if (!qword_1009839D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009839D0);
  }

  return result;
}

uint64_t MetadataRibbonBarViewLayout.Metrics.standard.unsafeMutableAddressor()
{
  if (qword_10096DB60 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for MetadataRibbonBarViewLayout.Metrics();

  return sub_1000056A8(v0, static MetadataRibbonBarViewLayout.Metrics.standard);
}

char *sub_1003D2524(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for MetadataRibbonBarViewLayout.Metrics();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v42[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_metrics;
  if (qword_10096DB60 != -1)
  {
    swift_once();
  }

  v16 = sub_1000056A8(v11, static MetadataRibbonBarViewLayout.Metrics.standard);
  v17 = *(v12 + 16);
  v17(&v5[v15], v16, v11);
  v18 = &v5[OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_id];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 4) = 0;
  v19 = OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_itemType;
  v20 = type metadata accessor for MetadataRibbonItemType();
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  v21 = &v5[OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_labelMaxWidth];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v5[OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_truncationLegibilityThreshold];
  *v22 = 0;
  v22[8] = 1;
  v5[OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_allowsTruncation] = 2;
  type metadata accessor for DynamicTypeLabel();
  *&v5[OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_dividerLabel] = DynamicTypeLabel.__allocating_init(frame:)();
  v43.receiver = v5;
  v43.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v43, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_dividerLabel;
  v29 = *&v27[OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_dividerLabel];
  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 separatorColor];
  [v31 setTextColor:v32];

  v33 = *&v27[v28];
  v17(v14, &v27[OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_metrics], v11);
  v34 = v33;
  v35 = MetadataRibbonBarViewLayout.Metrics.maximumNumberofLinesForDescriptionLabel.getter();
  (*(v12 + 8))(v14, v11);
  [v34 setNumberOfLines:v35];

  v36 = *&v27[v28];
  static CustomTextStyle<>.metadataRibbon.getter();
  if (qword_10096EE50 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for MetadataRibbonTextStyle();
  v38 = sub_1000056A8(v37, qword_1009D36F8);
  v42[3] = v37;
  v42[4] = sub_100032098();
  v39 = sub_1000056E0(v42);
  (*(*(v37 - 8) + 16))(v39, v38, v37);
  dispatch thunk of DynamicTypeLabel.customTextStyle.setter();

  [v27 addSubview:*&v27[v28]];
  return v27;
}

uint64_t sub_1003D296C()
{
  ObjectType = swift_getObjectType();
  v18 = type metadata accessor for LayoutRect();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MetadataRibbonBarViewLayout.Metrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MetadataRibbonBarViewLayout();
  v9 = *(v17 - 8);
  *&v10 = __chkstk_darwin(v17).n128_u64[0];
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v0;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "layoutSubviews", v10);
  v13 = *&v0[OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_dividerLabel];
  v20 = type metadata accessor for DynamicTypeLabel();
  v21 = &protocol witness table for UILabel;
  v19 = v13;
  (*(v6 + 16))(v8, &v0[OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_metrics], v5);
  v14 = v13;
  MetadataRibbonBarViewLayout.init(descriptionLabelTextView:metrics:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  MetadataRibbonBarViewLayout.placeChildren(relativeTo:in:)();
  (*(v2 + 8))(v4, v18);
  return (*(v9 + 8))(v12, v17);
}

double sub_1003D2F00(uint64_t a1)
{
  MetadataRibbonItem.labelText.getter();
  v2 = *&v1[OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_dividerLabel];
  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  [v2 setText:v4];

  [v1 setNeedsLayout];

  return result;
}

uint64_t sub_1003D2F94@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_itemType;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &qword_10096FB98, &unk_1007B10B0);
}

uint64_t sub_1003D2FFC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_itemType;
  swift_beginAccess();
  sub_1000315F8(a1, v1 + v3, &qword_10096FB98, &unk_1007B10B0);
  return swift_endAccess();
}

void sub_1003D30D8(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_labelMaxWidth;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

void sub_1003D31A4(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_truncationLegibilityThreshold;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t sub_1003D3264()
{
  v1 = OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1003D32A8(char a1)
{
  v3 = OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_allowsTruncation;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1003D3358@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_id;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &qword_10096FB90, &qword_1007B2A50);
}

uint64_t sub_1003D33C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_id;
  swift_beginAccess();
  sub_1000315F8(a1, v1 + v3, &qword_10096FB90, &qword_1007B2A50);
  return swift_endAccess();
}

uint64_t sub_1003D3490()
{
  v0 = sub_10002849C(&unk_10096FC10, &unk_1007B10C0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - v2;
  v4 = type metadata accessor for MetadataRibbonBarViewLayout.Metrics();
  sub_100005644(v4, static MetadataRibbonBarViewLayout.Metrics.standard);
  sub_1000056A8(v4, static MetadataRibbonBarViewLayout.Metrics.standard);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  Conditional.init(_:)();
  MetadataRibbonBarViewLayout.Metrics.init(maximumNumberofLinesForDescriptionLabel:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t static MetadataRibbonBarViewLayout.Metrics.standard.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10096DB60 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MetadataRibbonBarViewLayout.Metrics();
  v3 = sub_1000056A8(v2, static MetadataRibbonBarViewLayout.Metrics.standard);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t type metadata accessor for MetadataRibbonBarView(uint64_t a1)
{
  result = qword_100983A18;
  if (!qword_100983A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003D36CC(uint64_t a1)
{
  type metadata accessor for MetadataRibbonBarViewLayout.Metrics();
  if (v1 <= 0x3F)
  {
    sub_1000315A0(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

double sub_1003D37C0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v39 = a2;
  v33 = a1;
  v4 = type metadata accessor for MetadataRibbonBarViewLayout.Metrics();
  v36 = *(v4 - 8);
  __chkstk_darwin(v4);
  v35 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MetadataRibbonBarViewLayout();
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin(v6);
  v34 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for LabelPlaceholder();
  v31 = *(v32 - 8);
  __chkstk_darwin(v32);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DynamicTextAppearance();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  __chkstk_darwin(v17);
  v19 = &v29 - v18;
  if (qword_10096DB60 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v4, static MetadataRibbonBarViewLayout.Metrics.standard);
  DynamicTextAppearance.init()();
  static CustomTextStyle<>.metadataRibbon.getter();
  v30 = v4;
  if (qword_10096EE50 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for MetadataRibbonTextStyle();
  v22 = sub_1000056A8(v21, qword_1009D36F8);
  v41[3] = v21;
  v41[4] = sub_100032098();
  v23 = sub_1000056E0(v41);
  (*(*(v21 - 8) + 16))(v23, v22, v21);
  DynamicTextAppearance.withCustomTextStyle(_:)();
  v24 = *(v11 + 8);
  v24(v13, v10);
  sub_100007000(v41);
  MetadataRibbonBarViewLayout.Metrics.maximumNumberofLinesForDescriptionLabel.getter();
  DynamicTextAppearance.withNumberOfLines(_:)();
  v24(v16, v10);
  MetadataRibbonItem.labelText.getter();
  (*(v11 + 16))(v16, v19, v10);
  LabelPlaceholder.Options.init(rawValue:)();
  LabelPlaceholder.init(_:with:where:)();
  LabelPlaceholder.layoutTextView.getter();
  (*(v31 + 8))(v9, v32);
  sub_10002C0AC(v41, v40);
  (*(v36 + 16))(v35, v20, v30);
  v25 = v34;
  MetadataRibbonBarViewLayout.init(descriptionLabelTextView:metrics:)();
  MetadataRibbonBarViewLayout.measurements(fitting:in:)();
  v27 = v26;
  (*(v37 + 8))(v25, v38);
  sub_100007000(v41);
  v24(v19, v10);
  return v27;
}

void sub_1003D3CB4()
{
  v1 = OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_metrics;
  if (qword_10096DB60 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MetadataRibbonBarViewLayout.Metrics();
  v3 = sub_1000056A8(v2, static MetadataRibbonBarViewLayout.Metrics.standard);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  v4 = v0 + OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_id;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  v5 = OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_itemType;
  v6 = type metadata accessor for MetadataRibbonItemType();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = v0 + OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_labelMaxWidth;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v0 + OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_truncationLegibilityThreshold;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore21MetadataRibbonBarView_allowsTruncation) = 2;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1003D3E34()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = &type metadata for Double;
  v40 = &protocol witness table for Double;
  *&v38 = 0x4044000000000000;
  if (qword_10096DE40 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FontUseCase();
  v5 = sub_1000056A8(v4, qword_1009D0A40);
  v6 = *(v4 - 8);
  v25 = *(v6 + 16);
  v26 = v6 + 16;
  v21 = v5;
  v22 = v4;
  v25(v3, v5, v4);
  v7 = enum case for FontSource.useCase(_:);
  v24 = v1[13];
  v20 = enum case for FontSource.useCase(_:);
  v24(v3, enum case for FontSource.useCase(_:), v0);
  v27 = type metadata accessor for StaticDimension();
  v36 = v27;
  v37 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v35);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v8 = sub_1000056E0(&v32);
  v23 = v1[2];
  v23(v8, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v19 = v1[1];
  v19(v3, v0);
  v9 = v4;
  v10 = v25;
  v25(v3, v5, v9);
  v11 = v7;
  v12 = v24;
  v24(v3, v11, v0);
  v33 = v27;
  v34 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v32);
  v30 = v0;
  v31 = &protocol witness table for FontSource;
  v13 = sub_1000056E0(v29);
  v14 = v23;
  v23(v13, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v15 = v19;
  v19(v3, v0);
  v10(v3, v21, v22);
  v12(v3, v20, v0);
  v30 = v27;
  v31 = &protocol witness table for StaticDimension;
  sub_1000056E0(v29);
  v28[3] = v0;
  v28[4] = &protocol witness table for FontSource;
  v16 = sub_1000056E0(v28);
  v14(v16, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v15(v3, v0);
  *algn_100983AB0 = 0u;
  qword_100983AC0 = 0;
  xmmword_100983AA0 = 0u;
  sub_100005A38(&v38, &unk_100983A28);
  sub_100005A38(&v35, &unk_100983A50);
  sub_100005A38(&v32, &unk_100983A78);
  return sub_1002F7EF0(v29, &xmmword_100983AA0);
}

char *sub_1003D4244(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for DividerView.Style(0);
  __chkstk_darwin(v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FontUseCase();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC8AppStore18LinkableHeaderView_label;
  if (qword_10096DE40 != -1)
  {
    swift_once();
  }

  v19 = sub_1000056A8(v14, qword_1009D0A40);
  (*(v15 + 16))(v17, v19, v14);
  v20 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel(0));
  *&v5[v18] = sub_1002F5B8C(v17, 0, 0, 1);
  v21 = OBJC_IVAR____TtC8AppStore18LinkableHeaderView_topDivider;
  v22 = type metadata accessor for DividerView(0);
  *&v5[v21] = [objc_allocWithZone(v22) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = OBJC_IVAR____TtC8AppStore18LinkableHeaderView_bottomDivider;
  *&v5[v23] = [objc_allocWithZone(v22) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v45.receiver = v5;
  v45.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v45, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v28 = v24;
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v29 = OBJC_IVAR____TtC8AppStore18LinkableHeaderView_topDivider;
  v30 = qword_10096EE48;
  v31 = *&v28[OBJC_IVAR____TtC8AppStore18LinkableHeaderView_topDivider];
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = sub_1000056A8(v11, qword_1009D36D8);
  sub_1002BB2D0(v32, v13);
  v33 = &v31[OBJC_IVAR____TtC8AppStore11DividerView_style];
  swift_beginAccess();
  sub_1002BB334(v13, v33);
  swift_endAccess();
  v34 = &v31[OBJC_IVAR____TtC8AppStore11DividerView_separatorInset];
  v35 = *(v33 + 1);
  *v34 = *v33;
  *(v34 + 1) = v35;
  [v31 setNeedsLayout];
  [v31 setNeedsLayout];

  sub_1002BB398(v13);
  v36 = OBJC_IVAR____TtC8AppStore18LinkableHeaderView_bottomDivider;
  v37 = *&v28[OBJC_IVAR____TtC8AppStore18LinkableHeaderView_bottomDivider];
  sub_1002BB2D0(v32, v13);
  v38 = &v37[OBJC_IVAR____TtC8AppStore11DividerView_style];
  swift_beginAccess();
  v39 = v37;
  sub_1002BB334(v13, v38);
  swift_endAccess();
  v40 = &v39[OBJC_IVAR____TtC8AppStore11DividerView_separatorInset];
  v41 = *(v38 + 1);
  *v40 = *v38;
  *(v40 + 1) = v41;
  [v39 setNeedsLayout];
  [v39 setNeedsLayout];

  sub_1002BB398(v13);
  v42 = OBJC_IVAR____TtC8AppStore18LinkableHeaderView_label;
  [*&v28[OBJC_IVAR____TtC8AppStore18LinkableHeaderView_label] setTextAlignment:1];
  [v28 addSubview:*&v28[v29]];
  [v28 addSubview:*&v28[v36]];
  [v28 addSubview:*&v28[v42]];

  return v28;
}

uint64_t sub_1003D46BC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v20 = type metadata accessor for LayoutRect();
  v3 = *(v20 - 8);
  *&v4 = __chkstk_darwin(v20).n128_u64[0];
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v1;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "layoutSubviews", v4);
  if (qword_10096DB68 != -1)
  {
    swift_once();
  }

  sub_1002020EC(&unk_100983A28, v21);
  v7 = *&v1[OBJC_IVAR____TtC8AppStore18LinkableHeaderView_topDivider];
  v8 = type metadata accessor for DividerView(0);
  v21[23] = v8;
  v21[24] = &protocol witness table for UIView;
  v21[20] = v7;
  v9 = *&v1[OBJC_IVAR____TtC8AppStore18LinkableHeaderView_label];
  v21[28] = type metadata accessor for DynamicTypeLinkedLabel(0);
  v21[29] = &protocol witness table for UILabel;
  v21[25] = v9;
  v10 = *&v1[OBJC_IVAR____TtC8AppStore18LinkableHeaderView_bottomDivider];
  v21[33] = v8;
  v21[34] = &protocol witness table for UIView;
  v21[30] = v10;
  v11 = v7;
  v12 = v9;
  v13 = v10;
  LayoutMarginsAware<>.layoutFrame.getter();
  LinkableHeaderViewLayout.placeChildren(relativeTo:in:)(v1, v14, v15, v16, v17);
  (*(v3 + 8))(v6, v20);
  return sub_100202148(v21);
}

double sub_1003D48D0(uint64_t a1, double a2, double a3)
{
  if (qword_10096DB68 != -1)
  {
    swift_once();
  }

  sub_1002020EC(&unk_100983A28, v16);
  v7 = *(v3 + OBJC_IVAR____TtC8AppStore18LinkableHeaderView_topDivider);
  v8 = type metadata accessor for DividerView(0);
  v16[23] = v8;
  v16[24] = &protocol witness table for UIView;
  v16[20] = v7;
  v9 = *(v3 + OBJC_IVAR____TtC8AppStore18LinkableHeaderView_label);
  v16[28] = type metadata accessor for DynamicTypeLinkedLabel(0);
  v16[29] = &protocol witness table for UILabel;
  v16[25] = v9;
  v10 = *(v3 + OBJC_IVAR____TtC8AppStore18LinkableHeaderView_bottomDivider);
  v16[33] = v8;
  v16[34] = &protocol witness table for UIView;
  v16[30] = v10;
  swift_getObjectType();
  v11 = v7;
  v12 = v9;
  v13 = v10;
  v14 = sub_1002F83D4(a1, v16, a2, a3);
  sub_100202148(v16);
  return v14;
}

double sub_1003D4AA8(uint64_t a1, double a2)
{
  type metadata accessor for DividerView(0);
  if (qword_10096EE48 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DividerView.Style(0);
  v5 = sub_1000056A8(v4, qword_1009D36D8);
  swift_getObjectType();
  sub_1006DA268(v5, a1);
  return a2;
}

void sub_1003D4BDC()
{
  v1 = v0;
  v2 = type metadata accessor for FontUseCase();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8AppStore18LinkableHeaderView_label;
  if (qword_10096DE40 != -1)
  {
    swift_once();
  }

  v7 = sub_1000056A8(v2, qword_1009D0A40);
  (*(v3 + 16))(v5, v7, v2);
  v8 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel(0));
  *(v1 + v6) = sub_1002F5B8C(v5, 0, 0, 1);
  v9 = OBJC_IVAR____TtC8AppStore18LinkableHeaderView_topDivider;
  v10 = type metadata accessor for DividerView(0);
  *(v1 + v9) = [objc_allocWithZone(v10) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = OBJC_IVAR____TtC8AppStore18LinkableHeaderView_bottomDivider;
  *(v1 + v11) = [objc_allocWithZone(v10) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

char *sub_1003D4DB0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_artworkPlaceholder;
  type metadata accessor for ArtworkView();
  v11 = static ArtworkView.brickArtworkView.getter();
  dispatch thunk of RoundedCornerView.borderWidth.setter();

  *&v5[v10] = v11;
  v12 = OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_smallLockupPlaceholder;
  type metadata accessor for LockupPlaceholderView(0);
  *&v5[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_supplementaryTextPlaceholder;
  type metadata accessor for Placeholder();
  v14 = static Placeholder.titleText.getter();
  v16 = sub_10025084C(v14, v15, UIFontTextStyleSubheadline);

  *&v5[v13] = v16;
  v17 = OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_contentType;
  v18 = enum case for Shelf.ContentType.appTrailerLockup(_:);
  v19 = type metadata accessor for Shelf.ContentType();
  (*(*(v19 - 8) + 104))(&v5[v17], v18, v19);
  v5[OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_wantsSupplementaryTextPlaceholder] = 0;
  v24.receiver = v5;
  v24.super_class = type metadata accessor for MixedMediaLockupPlaceholderView(0);
  v20 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  v21 = *&v20[OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_artworkPlaceholder];
  v22 = v20;
  [v22 addSubview:v21];
  [v22 addSubview:*&v22[OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_smallLockupPlaceholder]];
  [v22 addSubview:*&v22[OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_supplementaryTextPlaceholder]];

  return v22;
}

uint64_t sub_1003D4FCC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v76 = a1;
  v73 = type metadata accessor for MixedMediaLockupLayout.LockupPosition();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v70 = v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v77 = v68 - v5;
  __chkstk_darwin(v6);
  v75 = v68 - v7;
  __chkstk_darwin(v8);
  v69 = v68 - v9;
  __chkstk_darwin(v10);
  v71 = v68 - v11;
  v12 = sub_10002849C(&unk_100973CA0, qword_1007B3BB8);
  __chkstk_darwin(v12 - 8);
  v14 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v74 = v68 - v16;
  __chkstk_darwin(v17);
  v19 = v68 - v18;
  __chkstk_darwin(v20);
  v22 = v68 - v21;
  v23 = type metadata accessor for Shelf.ContentType();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v68[0] = v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = v68 - v27;
  v29 = OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_contentType;
  swift_beginAccess();
  v30 = *(v24 + 16);
  v30(v28, &v2[v29], v23);
  v31 = (*(v24 + 88))(v28, v23);
  if (v31 == enum case for Shelf.ContentType.appTrailerLockup(_:))
  {
    v32 = v72;
    v33 = v73;
    (*(v72 + 56))(v22, 1, 1, v73);
    sub_10009AD60(v22, v19);
    v34 = *(v32 + 48);
    v35 = v34(v19, 1, v33);
    v68[1] = v22;
    if (v35 == 1)
    {
      v36 = v71;
      (*(v32 + 104))(v71, enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:), v33);
      v37 = v34(v19, 1, v33);
      v38 = v75;
      if (v37 != 1)
      {
        sub_10009ADD0(v19);
      }
    }

    else
    {
      v36 = v71;
      (*(v32 + 32))(v71, v19, v33);
      v38 = v75;
    }

    v48 = *(v32 + 16);
    v49 = v69;
    v48(v69, v36, v33);
    v50 = (*(v32 + 88))(v49, v33);
    if (v50 == enum case for MixedMediaLockupLayout.LockupPosition.top(_:))
    {
      if (qword_10096CFE8 != -1)
      {
        swift_once();
      }

      sub_10002C0AC(qword_1009CDDC0, v82);
    }

    else if (v50 == enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:))
    {
      if (qword_10096CFE0 != -1)
      {
        swift_once();
      }

      sub_10002C0AC(qword_1009CDD98, v82);
    }

    else
    {
      if (qword_10096CFE8 != -1)
      {
        swift_once();
      }

      sub_10002C0AC(qword_1009CDDC0, v82);
      (*(v32 + 8))(v49, v33);
    }

    v48(v38, v36, v33);
    sub_10002C0AC(v82, v81);
    sub_100005744(0, &qword_1009730E0, UIFont_ptr);
    if (qword_10096E290 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for FontUseCase();
    sub_1000056A8(v54, qword_1009D1730);
    v55 = [v2 traitCollection];
    static UIFont.preferredFont(forUseWith:compatibleWith:)();

    if (qword_10096E6B0 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for StaticDimension();
    v57 = sub_1000056A8(v56, qword_1009D2430);
    v79 = v56;
    v80 = &protocol witness table for StaticDimension;
    v58 = sub_1000056E0(v78);
    (*(*(v56 - 8) + 16))(v58, v57, v56);
    MixedMediaLockupLayout.Metrics.init(lockupPosition:taglineNumberOfLines:taglineSpace:taglineFont:alwaysIncludeTaglineSpace:verticalSpacing:layoutMargins:)();
    sub_100007000(v82);
    (*(v32 + 8))(v36, v33);
    v59 = &v83;
    return sub_10009ADD0(*(v59 - 32));
  }

  v39 = v2;
  v40 = v73;
  if (v31 == enum case for Shelf.ContentType.screenshotsLockup(_:))
  {
    v41 = v39;
    v42 = v72;
    v43 = v74;
    (*(v72 + 56))(v74, 1, 1, v73);
    sub_10009AD60(v43, v14);
    v44 = *(v42 + 48);
    if (v44(v14, 1, v40) == 1)
    {
      v45 = enum case for MixedMediaLockupLayout.LockupPosition.top(_:);
      (*(v42 + 104))(v77, enum case for MixedMediaLockupLayout.LockupPosition.top(_:), v40);
      if (v44(v14, 1, v40) != 1)
      {
        sub_10009ADD0(v14);
      }

      v46 = v75;
      v47 = v77;
    }

    else
    {
      v47 = v77;
      (*(v42 + 32))(v77, v14, v40);
      v45 = enum case for MixedMediaLockupLayout.LockupPosition.top(_:);
      v46 = v75;
    }

    v51 = *(v42 + 16);
    v52 = v70;
    v51(v70, v47, v40);
    v53 = (*(v42 + 88))(v52, v40);
    if (v53 == v45)
    {
      if (qword_10096CFE8 != -1)
      {
        swift_once();
      }

      sub_10002C0AC(qword_1009CDDC0, v82);
    }

    else if (v53 == enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:))
    {
      if (qword_10096CFE0 != -1)
      {
        swift_once();
      }

      sub_10002C0AC(qword_1009CDD98, v82);
    }

    else
    {
      if (qword_10096CFE8 != -1)
      {
        swift_once();
      }

      sub_10002C0AC(qword_1009CDDC0, v82);
      (*(v42 + 8))(v52, v40);
    }

    v51(v46, v77, v40);
    sub_10002C0AC(v82, v81);
    sub_100005744(0, &qword_1009730E0, UIFont_ptr);
    if (qword_10096E290 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for FontUseCase();
    sub_1000056A8(v60, qword_1009D1730);
    v61 = [v41 traitCollection];
    static UIFont.preferredFont(forUseWith:compatibleWith:)();

    if (qword_10096E6B0 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for StaticDimension();
    v63 = sub_1000056A8(v62, qword_1009D2430);
    v79 = v62;
    v80 = &protocol witness table for StaticDimension;
    v64 = sub_1000056E0(v78);
    (*(*(v62 - 8) + 16))(v64, v63, v62);
    MixedMediaLockupLayout.Metrics.init(lockupPosition:taglineNumberOfLines:taglineSpace:taglineFont:alwaysIncludeTaglineSpace:verticalSpacing:layoutMargins:)();
    sub_100007000(v82);
    (*(v42 + 8))(v77, v40);
    v59 = &v84;
    return sub_10009ADD0(*(v59 - 32));
  }

  v82[0] = 0;
  v82[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(44);
  v66 = v68[0];
  v30(v68[0], &v39[v29], v23);
  _print_unlocked<A, B>(_:_:)();
  (*(v24 + 8))(v66, v23);
  v67._object = 0x80000001007FAAB0;
  v67._countAndFlagsBits = 0xD00000000000002ALL;
  String.append(_:)(v67);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1003D5C1C()
{
  v1 = type metadata accessor for Shelf.ContentType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v13 - v6;
  v8 = OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_contentType;
  swift_beginAccess();
  v9 = *(v2 + 16);
  v9(v7, v0 + v8, v1);
  v10 = (*(v2 + 88))(v7, v1);
  if (v10 == enum case for Shelf.ContentType.appTrailerLockup(_:))
  {
    type metadata accessor for AppTrailerLockupCollectionViewCell(0);
LABEL_5:
    v11 = ASKDeviceTypeGetCurrent();
    sub_1000DCAC8(v11);

    return;
  }

  if (v10 == enum case for Shelf.ContentType.screenshotsLockup(_:))
  {
    type metadata accessor for ScreenshotsLockupCollectionViewCell(0);
    goto LABEL_5;
  }

  v13[1] = 0;
  v13[2] = 0xE000000000000000;
  _StringGuts.grow(_:)(44);
  v9(v4, v0 + v8, v1);
  _print_unlocked<A, B>(_:_:)();
  (*(v2 + 8))(v4, v1);
  v12._object = 0x80000001007FAAB0;
  v12._countAndFlagsBits = 0xD00000000000002ALL;
  String.append(_:)(v12);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1003D5E80()
{
  v1 = v0;
  v2 = type metadata accessor for LayoutRect();
  v42 = *(v2 - 8);
  v43 = v2;
  __chkstk_darwin(v2);
  v40 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for MixedMediaLockupLayout();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v37 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for AspectRatio();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MixedMediaLockupLayout.Metrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  v14 = type metadata accessor for MixedMediaLockupPlaceholderView(0);
  v53.receiver = v0;
  v53.super_class = v14;
  objc_msgSendSuper2(&v53, "layoutSubviews");
  sub_1003D4FCC(v13);
  sub_1003D5C1C();
  LayoutMarginsAware<>.layoutFrame.getter();
  v34 = v6;
  AspectRatio.maxSize(fitting:)();
  v16 = v15;
  v18 = v17;
  v19 = *&v0[OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_artworkPlaceholder];
  v20 = ArtworkView.frame.modify();
  *(v21 + 16) = v16;
  *(v21 + 24) = v18;
  v20(v52, 0);
  v22 = OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_wantsSupplementaryTextPlaceholder;
  v23 = *&v1[OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_supplementaryTextPlaceholder];
  if (v1[OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_wantsSupplementaryTextPlaceholder] == 1)
  {
    [v1 addSubview:*&v1[OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_supplementaryTextPlaceholder]];
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_supplementaryTextPlaceholder] removeFromSuperview];
  }

  v24 = *(v8 + 16);
  v35 = v7;
  v24(v10, v13, v7);
  v25 = *&v1[OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_smallLockupPlaceholder];
  v52[3] = type metadata accessor for LockupPlaceholderView(0);
  v52[4] = &protocol witness table for UIView;
  v52[0] = v25;
  v50 = type metadata accessor for ArtworkView();
  v51 = &protocol witness table for UIView;
  v49 = v19;
  if (v1[v22] == 1)
  {
    v26 = sub_100005744(0, &qword_100986BF0, UILabel_ptr);
    v27 = v23;
    v28 = &protocol witness table for UILabel;
  }

  else
  {
    v26 = 0;
    v28 = 0;
    v23 = 0;
    v45 = 0;
    v46 = 0;
  }

  v47 = v26;
  v48 = v28;
  v44 = v23;
  v29 = v25;
  v30 = v19;
  v31 = v37;
  MixedMediaLockupLayout.init(metrics:lockupView:media:tagline:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  v32 = v40;
  MixedMediaLockupLayout.placeChildren(relativeTo:in:)();
  (*(v42 + 8))(v32, v43);
  (*(v39 + 8))(v31, v41);
  (*(v36 + 8))(v34, v38);
  return (*(v8 + 8))(v13, v35);
}

id sub_1003D6380()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MixedMediaLockupPlaceholderView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MixedMediaLockupPlaceholderView(uint64_t a1)
{
  result = qword_100983B48;
  if (!qword_100983B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003D64A8(uint64_t a1)
{
  result = type metadata accessor for Shelf.ContentType();
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

void sub_1003D6554()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_artworkPlaceholder;
  type metadata accessor for ArtworkView();
  v3 = static ArtworkView.brickArtworkView.getter();
  dispatch thunk of RoundedCornerView.borderWidth.setter();

  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_smallLockupPlaceholder;
  type metadata accessor for LockupPlaceholderView(0);
  *(v1 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_supplementaryTextPlaceholder;
  type metadata accessor for Placeholder();
  v6 = static Placeholder.titleText.getter();
  v8 = sub_10025084C(v6, v7, UIFontTextStyleSubheadline);

  *(v1 + v5) = v8;
  v9 = OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_contentType;
  v10 = enum case for Shelf.ContentType.appTrailerLockup(_:);
  v11 = type metadata accessor for Shelf.ContentType();
  (*(*(v11 - 8) + 104))(v1 + v9, v10, v11);
  *(v1 + OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_wantsSupplementaryTextPlaceholder) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1003D66B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656461637261;
  v6 = 0xE600000000000000;
  v7 = 0x686372616573;
  if (a1 != 4)
  {
    v7 = 0x73657461647075;
    v6 = 0xE700000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE500000000000000;
  v9 = 0x73656D6167;
  if (a1 != 1)
  {
    v9 = 1936748641;
    v8 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x7961646F74;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656461637261)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x686372616573)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x73657461647075)
      {
LABEL_34:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x73656D6167)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1936748641)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x7961646F74)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

Swift::Int sub_1003D686C(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t AppStoreTodayCardTriggerBuilder.__allocating_init(bag:purchaseHistory:watchPairingStatusProvider:pencilPairingStatusProvider:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 96) = a1;
  sub_100005A38(a2, v8 + 104);
  v9 = *(a3 + 16);
  *(v8 + 16) = *a3;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(a3 + 32);
  v10 = *(a4 + 16);
  *(v8 + 56) = *a4;
  *(v8 + 72) = v10;
  *(v8 + 88) = *(a4 + 32);
  return v8;
}

uint64_t AppStoreTodayCardTriggerBuilder.init(bag:purchaseHistory:watchPairingStatusProvider:pencilPairingStatusProvider:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 96) = a1;
  sub_100005A38(a2, v4 + 104);
  v7 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v7;
  *(v4 + 48) = *(a3 + 32);
  v8 = *(a4 + 16);
  *(v4 + 56) = *a4;
  *(v4 + 72) = v8;
  *(v4 + 88) = *(a4 + 32);
  return v4;
}

uint64_t AppStoreTodayCardTriggerBuilder.trigger(for:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v54 = a2;
  v6 = type metadata accessor for TodayCardTriggerIdentifier();
  v56 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for AdamId();
  v9 = *(v60 - 8);
  __chkstk_darwin(v60);
  v53 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v51 - v12;
  v55 = v3;
  v14 = ASKBagContract.onboardingCardsMap.getter();
  if (!v14)
  {
    v28 = type metadata accessor for TriggerBuilderError();
    sub_1003D8A84(&qword_100976EC0, &type metadata accessor for TriggerBuilderError, &protocol conformance descriptor for TriggerBuilderError);
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, enum case for TriggerBuilderError.missingCardMap(_:), v28);
    return swift_willThrow();
  }

  v15 = v14;
  v52 = v9;
  v16 = TodayCardTriggerIdentifier.bagKey.getter();
  if (!*(v15 + 16))
  {

    goto LABEL_8;
  }

  v51 = v4;
  sub_1000072B8(v16, v17);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_8:

    v30 = type metadata accessor for TriggerBuilderError();
    sub_1003D8A84(&qword_100976EC0, &type metadata accessor for TriggerBuilderError, &protocol conformance descriptor for TriggerBuilderError);
    swift_allocError();
    v32 = v31;
    *v31 = TodayCardTriggerIdentifier.bagKey.getter();
    v32[1] = v33;
    (*(*(v30 - 8) + 104))(v32, enum case for TriggerBuilderError.missingAdamId(_:), v30);
    return swift_willThrow();
  }

  AdamId.init(value:)();
  v20 = v56;
  (*(v56 + 16))(v8, a1, v6);
  v21 = (*(v20 + 88))(v8, v6);
  if (v21 == enum case for TodayCardTriggerIdentifier.newToAppStore(_:))
  {
    ASKBagContract.numberOfPurchasesThreshold.getter();
    v22 = v52;
    v23 = v60;
    (*(v52 + 16))(v53, v13, v60);
    sub_10002C0AC(v55 + 104, v59);
    v24 = type metadata accessor for NewToAppStoreCardTrigger();
    swift_allocObject();
    v25 = NewToAppStoreCardTrigger.init(adamId:numberOfPurchasesThreshold:purchaseHistory:)();
    v26 = v54;
    v54[3] = v24;
    v26[4] = &protocol witness table for NewToAppStoreCardTrigger;
    *v26 = v25;
    return (*(v22 + 8))(v13, v23);
  }

  if (v21 == enum case for TodayCardTriggerIdentifier.newPencilPairing(_:))
  {
    sub_100031660(v55 + 56, &v57, &qword_100983B60, &qword_1007CB428);
    v34 = v52;
    if (v58)
    {
      sub_100005A38(&v57, v59);
      v35 = v60;
      (*(v34 + 16))(v53, v13, v60);
      sub_10002C0AC(v59, &v57);
      v36 = v34;
      v37 = type metadata accessor for NewPencilPairingCardTrigger();
      swift_allocObject();
      v38 = NewPencilPairingCardTrigger.init(adamId:pairingStatusProvider:)();
      v39 = &protocol witness table for NewPencilPairingCardTrigger;
LABEL_16:
      v41 = v54;
      v54[3] = v37;
      v41[4] = v39;
      *v41 = v38;
      sub_100007000(v59);
      return (*(v36 + 8))(v13, v35);
    }

    sub_10002B894(&v57, &qword_100983B60, &qword_1007CB428);
    v45 = type metadata accessor for TriggerBuilderError();
    sub_1003D8A84(&qword_100976EC0, &type metadata accessor for TriggerBuilderError, &protocol conformance descriptor for TriggerBuilderError);
    swift_allocError();
    v47 = v46;
    v48 = 0x80000001008113A0;
    v49 = 0xD00000000000001BLL;
LABEL_23:
    *v46 = v49;
    v46[1] = v48;
    (*(*(v45 - 8) + 104))(v47, enum case for TriggerBuilderError.missingDependency(_:), v45);
    swift_willThrow();
    return (*(v34 + 8))(v13, v60);
  }

  v40 = v52;
  if (v21 == enum case for TodayCardTriggerIdentifier.newWatchPairing(_:))
  {
    sub_100031660(v55 + 16, &v57, &qword_100983B58, &qword_1007CB420);
    if (v58)
    {
      sub_100005A38(&v57, v59);
      v35 = v60;
      (*(v40 + 16))(v53, v13, v60);
      sub_10002C0AC(v59, &v57);
      v36 = v40;
      v37 = type metadata accessor for NewWatchPairingCardTrigger();
      swift_allocObject();
      v38 = NewWatchPairingCardTrigger.init(adamId:pairingStatusProvider:)();
      v39 = &protocol witness table for NewWatchPairingCardTrigger;
      goto LABEL_16;
    }

    sub_10002B894(&v57, &qword_100983B58, &qword_1007CB420);
    v34 = v40;
    v45 = type metadata accessor for TriggerBuilderError();
    sub_1003D8A84(&qword_100976EC0, &type metadata accessor for TriggerBuilderError, &protocol conformance descriptor for TriggerBuilderError);
    swift_allocError();
    v47 = v46;
    v48 = 0x8000000100811380;
    v49 = 0xD00000000000001ALL;
    goto LABEL_23;
  }

  if (v21 == enum case for TodayCardTriggerIdentifier.newToMajorOSVersion(_:))
  {
    v35 = v60;
    (*(v52 + 16))(v53, v13, v60);
    v36 = v40;
    v42 = type metadata accessor for NewToMajorOSVersionCardTrigger();
    swift_allocObject();
    v43 = NewToMajorOSVersionCardTrigger.init(adamId:)();
    v44 = v54;
    v54[3] = v42;
    v44[4] = &protocol witness table for NewToMajorOSVersionCardTrigger;
    *v44 = v43;
    return (*(v36 + 8))(v13, v35);
  }

  (*(v52 + 8))(v13, v60);
  v50 = v54;
  v54[4] = 0;
  *v50 = 0u;
  *(v50 + 1) = 0u;
  return (*(v20 + 8))(v8, v6);
}

uint64_t AppStoreTodayCardTriggerBuilder.deinit()
{
  sub_10002B894(v0 + 16, &qword_100983B58, &qword_1007CB420);
  sub_10002B894(v0 + 56, &qword_100983B60, &qword_1007CB428);

  sub_100007000((v0 + 104));
  return v0;
}

uint64_t AppStoreTodayCardTriggerBuilder.__deallocating_deinit()
{
  sub_10002B894(v0 + 16, &qword_100983B58, &qword_1007CB420);
  sub_10002B894(v0 + 56, &qword_100983B60, &qword_1007CB428);

  sub_100007000((v0 + 104));

  return swift_deallocClassInstance();
}

unint64_t sub_1003D7340(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_1003D80A8(a1, v2);
}

unint64_t sub_1003D7384(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1003D876C(a1, v2);
}

unint64_t sub_1003D7438(uint64_t a1)
{
  type metadata accessor for AdamId();
  sub_1003D8A84(&qword_100970CD8, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003D8258(a1, v2, &type metadata accessor for AdamId, &qword_100972728, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
}

unint64_t sub_1003D750C(Swift::UInt a1, Swift::UInt a2, double a3)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2);
  v6 = 0.0;
  if (a3 != 0.0)
  {
    v6 = a3;
  }

  Hasher._combine(_:)(*&v6);
  v7 = Hasher._finalize()();

  return sub_1003D8114(a1, a2, v7, a3);
}

unint64_t sub_1003D75B4(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  if ((v1 - 4) >= 3u)
  {
    Hasher._combine(_:)(2uLL);
    v2 = v1;
  }

  else
  {
    v2 = qword_1007CB4B8[(v1 - 4)];
  }

  Hasher._combine(_:)(v2);
  v3 = Hasher._finalize()();

  return sub_1003D81A0(v1, v3);
}

unint64_t sub_1003D7650(uint64_t a1)
{
  type metadata accessor for OfferTitleType();
  sub_1003D8A84(&qword_100983C28, &type metadata accessor for OfferTitleType, &protocol conformance descriptor for OfferTitleType);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003D8258(a1, v2, &type metadata accessor for OfferTitleType, &qword_100983C30, &type metadata accessor for OfferTitleType, &protocol conformance descriptor for OfferTitleType);
}

unint64_t sub_1003D7724(double a1, double a2)
{
  Hasher.init(_seed:)();
  sub_100246E48(a1, a2);
  v4 = Hasher._finalize()();

  return sub_1003D83F8(v4, a1, a2);
}

unint64_t sub_1003D7798(uint64_t a1)
{
  type metadata accessor for EditorialPageKey();
  sub_1003D8A84(&qword_100983C58, &type metadata accessor for EditorialPageKey, &protocol conformance descriptor for EditorialPageKey);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003D8258(a1, v2, &type metadata accessor for EditorialPageKey, &qword_100983C60, &type metadata accessor for EditorialPageKey, &protocol conformance descriptor for EditorialPageKey);
}

unint64_t sub_1003D786C(double *a1)
{
  Hasher.init(_seed:)();
  sub_1000C3AEC(v4);
  v2 = Hasher._finalize()();

  return sub_1003D8470(a1, v2);
}

unint64_t sub_1003D78D8(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1003D85A8(a1, v4);
}

unint64_t sub_1003D791C(uint64_t a1)
{
  type metadata accessor for Artwork();
  sub_1003D8A84(&qword_100970D08, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003D8670(a1, v2);
}

unint64_t sub_1003D79C8(uint64_t a1)
{
  type metadata accessor for BadgeType();
  sub_1003D8A84(&qword_100970CF8, &type metadata accessor for BadgeType, &protocol conformance descriptor for BadgeType);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003D8258(a1, v2, &type metadata accessor for BadgeType, &qword_100983C50, &type metadata accessor for BadgeType, &protocol conformance descriptor for BadgeType);
}

unint64_t sub_1003D7A9C(uint64_t a1)
{
  type metadata accessor for PageFacets.Facet();
  sub_1003D8A84(&qword_100972C68, &type metadata accessor for PageFacets.Facet, &protocol conformance descriptor for PageFacets.Facet);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003D8258(a1, v2, &type metadata accessor for PageFacets.Facet, &qword_100983C78, &type metadata accessor for PageFacets.Facet, &protocol conformance descriptor for PageFacets.Facet);
}

unint64_t sub_1003D7B70(uint64_t a1)
{
  type metadata accessor for SearchAdOpportunity.LifecycleEventType();
  sub_1003D8A84(&qword_100983C38, &type metadata accessor for SearchAdOpportunity.LifecycleEventType, &protocol conformance descriptor for SearchAdOpportunity.LifecycleEventType);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003D8258(a1, v2, &type metadata accessor for SearchAdOpportunity.LifecycleEventType, &qword_100983C40, &type metadata accessor for SearchAdOpportunity.LifecycleEventType, &protocol conformance descriptor for SearchAdOpportunity.LifecycleEventType);
}

unint64_t sub_1003D7C44(uint64_t a1)
{
  type metadata accessor for AdPlacementType();
  sub_1003D8A84(&qword_100970CB8, &type metadata accessor for AdPlacementType, &protocol conformance descriptor for AdPlacementType);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003D8258(a1, v2, &type metadata accessor for AdPlacementType, &qword_100983C48, &type metadata accessor for AdPlacementType, &protocol conformance descriptor for AdPlacementType);
}

unint64_t sub_1003D7D18(uint64_t a1)
{
  type metadata accessor for IndexPath();
  sub_1003D8A84(&qword_100970D38, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003D8258(a1, v2, &type metadata accessor for IndexPath, &qword_10098B750, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
}

unint64_t sub_1003D7DEC(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1003D8870(v1, v2);
}

unint64_t sub_1003D7F00(uint64_t a1)
{
  type metadata accessor for MetricsFieldExclusionRequest();
  sub_1003D8A84(&qword_100983C68, &type metadata accessor for MetricsFieldExclusionRequest, &protocol conformance descriptor for MetricsFieldExclusionRequest);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003D8258(a1, v2, &type metadata accessor for MetricsFieldExclusionRequest, &qword_100983C70, &type metadata accessor for MetricsFieldExclusionRequest, &protocol conformance descriptor for MetricsFieldExclusionRequest);
}

unint64_t sub_1003D7FD4(uint64_t a1)
{
  type metadata accessor for MetricsFieldInclusionRequest();
  sub_1003D8A84(&qword_1009726B8, &type metadata accessor for MetricsFieldInclusionRequest, &protocol conformance descriptor for MetricsFieldInclusionRequest);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003D8258(a1, v2, &type metadata accessor for MetricsFieldInclusionRequest, &qword_1009726C0, &type metadata accessor for MetricsFieldInclusionRequest, &protocol conformance descriptor for MetricsFieldInclusionRequest);
}

unint64_t sub_1003D80A8(uint64_t a1, uint64_t a2)
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

unint64_t sub_1003D8114(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
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

unint64_t sub_1003D81A0(unsigned __int8 a1, uint64_t a2)
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

unint64_t sub_1003D8258(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
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
      sub_1003D8A84(v24, v25, v26);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
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

unint64_t sub_1003D83F8(uint64_t a1, double a2, double a3)
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

unint64_t sub_1003D8470(double *a1, uint64_t a2)
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
      sub_100056174(*(v2 + 48) + v12 * v10, v8);
      v13 = sub_1000C6830(v8, a1);
      sub_1000C7C80(v8);
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

unint64_t sub_1003D85A8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10003D4AC(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10003D614(v8);
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

unint64_t sub_1003D8670(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for Artwork();
    sub_1003D8A84(&unk_1009811F0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    do
    {
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1003D876C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

unint64_t sub_1003D8870(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v9 = 0xE600000000000000;
          v8 = 0x656461637261;
        }

        else
        {
          if (v7 == 4)
          {
            v8 = 0x686372616573;
          }

          else
          {
            v8 = 0x73657461647075;
          }

          if (v7 == 4)
          {
            v9 = 0xE600000000000000;
          }

          else
          {
            v9 = 0xE700000000000000;
          }
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v7 == 1)
        {
          v8 = 0x73656D6167;
        }

        else
        {
          v8 = 1936748641;
        }

        if (v7 == 1)
        {
          v9 = 0xE500000000000000;
        }

        else
        {
          v9 = 0xE400000000000000;
        }
      }

      else
      {
        v9 = 0xE500000000000000;
        v8 = 0x7961646F74;
      }

      v10 = 0x73657461647075;
      if (v6 == 4)
      {
        v10 = 0x686372616573;
      }

      v11 = 0xE700000000000000;
      if (v6 == 4)
      {
        v11 = 0xE600000000000000;
      }

      if (v6 == 3)
      {
        v10 = 0x656461637261;
        v11 = 0xE600000000000000;
      }

      v12 = 0x73656D6167;
      if (v6 != 1)
      {
        v12 = 1936748641;
      }

      v13 = 0xE400000000000000;
      if (v6 == 1)
      {
        v13 = 0xE500000000000000;
      }

      if (!v6)
      {
        v12 = 0x7961646F74;
        v13 = 0xE500000000000000;
      }

      v14 = v6 <= 2 ? v12 : v10;
      v15 = v6 <= 2 ? v13 : v11;
      if (v8 == v14 && v9 == v15)
      {
        break;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
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

uint64_t sub_1003D8A84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003D8AD0()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_1009D00B8);
  sub_1000056A8(v4, qword_1009D00B8);
  if (qword_10096DC58 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D04A0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

char *sub_1003D8D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v81 = a4;
  v74[2] = a3;
  v78 = a2;
  v74[1] = a1;
  v79 = type metadata accessor for DividerView.Style(0);
  __chkstk_darwin(v79);
  v80 = v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for DirectionalTextAlignment();
  v6 = *(v83 - 8);
  __chkstk_darwin(v83);
  v82 = v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v8 - 8);
  v10 = v74 - v9;
  v11 = type metadata accessor for FontSource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = OBJC_IVAR____TtC8AppStore14EmptyStateView_divider;
  *&v4[v15] = [objc_allocWithZone(type metadata accessor for DividerView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *v14 = UIFontTextStyleBody;
  (*(v12 + 104))(v14, enum case for FontSource.textStyle(_:), v11);
  v86[3] = v11;
  v86[4] = &protocol witness table for FontSource;
  v16 = sub_1000056E0(v86);
  (*(v12 + 16))(v16, v14, v11);
  v17 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  (*(v12 + 8))(v14, v11);
  v84 = v4;
  v18 = &v4[OBJC_IVAR____TtC8AppStore14EmptyStateView_title];
  *v18 = 0;
  v18[1] = 0;
  v77 = OBJC_IVAR____TtC8AppStore14EmptyStateView_titleLabel;
  if (qword_10096DC58 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for FontUseCase();
  v20 = sub_1000056A8(v19, qword_1009D04A0);
  v21 = *(v19 - 8);
  v76 = *(v21 + 16);
  v76(v10, v20, v19);
  v75 = *(v21 + 56);
  v75(v10, 0, 1, v19);
  v22 = enum case for DirectionalTextAlignment.none(_:);
  v23 = *(v6 + 104);
  v23(v82, enum case for DirectionalTextAlignment.none(_:), v83);
  v24 = type metadata accessor for DynamicTypeLabel();
  v25 = objc_allocWithZone(v24);
  v26 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v27 = v84;
  *&v84[v77] = v26;
  v28 = &v27[OBJC_IVAR____TtC8AppStore14EmptyStateView_descriptionText];
  *v28 = 0;
  v28[1] = 0;
  v29 = OBJC_IVAR____TtC8AppStore14EmptyStateView_descriptionLabel;
  if (qword_10096E138 != -1)
  {
    swift_once();
  }

  v30 = sub_1000056A8(v19, qword_1009D1328);
  v76(v10, v30, v19);
  v75(v10, 0, 1, v19);
  v23(v82, v22, v83);
  v31 = objc_allocWithZone(v24);
  v32 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v33 = v84;
  *&v84[v29] = v32;
  v33[OBJC_IVAR____TtC8AppStore14EmptyStateView_hasDivider] = 0;
  v34 = type metadata accessor for EmptyStateView(0);
  v85.receiver = v33;
  v85.super_class = v34;
  v35 = objc_msgSendSuper2(&v85, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v36 = sub_100005744(0, &qword_100970180, UIColor_ptr);
  v37 = v35;
  v38 = static UIColor.defaultBackground.getter();
  [v37 setBackgroundColor:v38];

  if (v78)
  {
    v39 = *&v37[OBJC_IVAR____TtC8AppStore14EmptyStateView_titleLabel];
    sub_10002849C(&unk_100973960, &unk_1007B4930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007B10D0;
    *(inited + 32) = NSParagraphStyleAttributeName;
    v41 = qword_10096E8A0;
    v42 = v39;
    v43 = NSParagraphStyleAttributeName;
    if (v41 != -1)
    {
      swift_once();
    }

    v44 = qword_1009D2978;
    *(inited + 64) = sub_100005744(0, &unk_100993000, NSParagraphStyle_ptr);
    *(inited + 40) = v44;
    v45 = v44;
    sub_100397150(inited);
    swift_setDeallocating();
    sub_10005DC58(inited + 32);
    v46 = objc_allocWithZone(NSAttributedString);
    v47 = String._bridgeToObjectiveC()();

    type metadata accessor for Key(0);
    sub_10006F0F0();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v49 = [v46 initWithString:v47 attributes:isa];

    [v42 setAttributedText:v49];
  }

  [v37 addSubview:*&v37[OBJC_IVAR____TtC8AppStore14EmptyStateView_titleLabel]];
  v50 = OBJC_IVAR____TtC8AppStore14EmptyStateView_descriptionLabel;
  [*&v37[OBJC_IVAR____TtC8AppStore14EmptyStateView_descriptionLabel] setNumberOfLines:0];
  if (v81)
  {
    v51 = *&v37[v50];
    sub_10002849C(&unk_100973960, &unk_1007B4930);
    v52 = swift_initStackObject();
    *(v52 + 16) = xmmword_1007B1890;
    *(v52 + 32) = NSParagraphStyleAttributeName;
    v53 = qword_10096E8A0;
    v54 = v51;
    v55 = NSParagraphStyleAttributeName;
    if (v53 != -1)
    {
      swift_once();
    }

    v56 = qword_1009D2978;
    v57 = sub_100005744(0, &unk_100993000, NSParagraphStyle_ptr);
    *(v52 + 40) = v56;
    *(v52 + 64) = v57;
    *(v52 + 72) = NSForegroundColorAttributeName;
    v58 = v56;
    v59 = NSForegroundColorAttributeName;
    v60 = static UIColor.secondaryText.getter();
    *(v52 + 104) = v36;
    *(v52 + 80) = v60;
    sub_100397150(v52);
    swift_setDeallocating();
    sub_10002849C(&unk_100970EC0, &unk_1007B2BF0);
    swift_arrayDestroy();
    v61 = objc_allocWithZone(NSAttributedString);
    v62 = String._bridgeToObjectiveC()();

    type metadata accessor for Key(0);
    sub_10006F0F0();
    v63 = Dictionary._bridgeToObjectiveC()().super.isa;

    v64 = [v61 initWithString:v62 attributes:v63];

    [v54 setAttributedText:v64];
  }

  [v37 addSubview:*&v37[v50]];
  v65 = OBJC_IVAR____TtC8AppStore14EmptyStateView_divider;
  [*&v37[OBJC_IVAR____TtC8AppStore14EmptyStateView_divider] setHidden:(v37[OBJC_IVAR____TtC8AppStore14EmptyStateView_hasDivider] & 1) == 0];
  v66 = qword_10096EE48;
  v67 = *&v37[v65];
  if (v66 != -1)
  {
    swift_once();
  }

  v68 = sub_1000056A8(v79, qword_1009D36D8);
  v69 = v80;
  sub_1002BB2D0(v68, v80);
  v70 = &v67[OBJC_IVAR____TtC8AppStore11DividerView_style];
  swift_beginAccess();
  sub_1002BB334(v69, v70);
  swift_endAccess();
  v71 = &v67[OBJC_IVAR____TtC8AppStore11DividerView_separatorInset];
  v72 = *(v70 + 1);
  *v71 = *v70;
  *(v71 + 1) = v72;
  [v67 setNeedsLayout];
  [v67 setNeedsLayout];

  sub_1002BB398(v69);
  [v37 addSubview:*&v37[v65]];

  return v37;
}

void sub_1003D97BC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EmptyStateView(0);
  v21.receiver = v0;
  v21.super_class = v7;
  objc_msgSendSuper2(&v21, "layoutSubviews");
  v8 = *&v0[OBJC_IVAR____TtC8AppStore14EmptyStateView_divider];
  [v0 frame];
  Width = CGRectGetWidth(v22);
  if (qword_10096EE48 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for DividerView.Style(0);
  sub_1000056A8(v10, qword_1009D36D8);
  if (qword_10096EE38 != -1)
  {
    swift_once();
  }

  v11 = floor(*&qword_1009D36B8);
  static Dimensions.defaultRoundingRule.getter();
  type metadata accessor for StaticDimension();
  AnyDimension.value(in:rounded:)();
  v13 = v12;
  (*(v4 + 8))(v6, v3);
  [v8 setFrame:{0.0, 0.0, Width, v11 + v13}];
  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  *(v15 + 24) = ObjectType;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1003D9FC0;
  *(v16 + 24) = v15;
  aBlock[4] = sub_10006F094;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000489A8;
  aBlock[3] = &unk_1008C10E8;
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

id sub_1003D9AF0(char *a1)
{
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&a1[OBJC_IVAR____TtC8AppStore14EmptyStateView_titleLabel];
  [a1 bounds];
  [v7 sizeThatFits:{v8, v9}];
  v11 = v10;
  v13 = v12;
  v14 = *&a1[OBJC_IVAR____TtC8AppStore14EmptyStateView_descriptionLabel];
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
  if (qword_10096DB70 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for StaticDimension();
  sub_1000056A8(v26, qword_1009D00B8);
  v27 = [a1 traitCollection];
  static Dimensions.defaultRoundingRule.getter();
  StaticDimension.value(compatibleWith:rounded:)();
  v29 = v28;

  (*(v3 + 8))(v6, v2);
  return [v14 setFrame:{(Width - v18) * 0.5, v25 + v29, v18, v20}];
}

id sub_1003D9DB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmptyStateView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for EmptyStateView(uint64_t a1)
{
  result = qword_100983CC8;
  if (!qword_100983CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003D9F08(uint64_t a1)
{
  result = type metadata accessor for StaticDimension();
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

void sub_1003D9FC8()
{
  v1 = type metadata accessor for DirectionalTextAlignment();
  v35 = *(v1 - 8);
  __chkstk_darwin(v1);
  v33 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = type metadata accessor for FontSource();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = OBJC_IVAR____TtC8AppStore14EmptyStateView_divider;
  *(v0 + v10) = [objc_allocWithZone(type metadata accessor for DividerView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *v9 = UIFontTextStyleBody;
  (*(v7 + 104))(v9, enum case for FontSource.textStyle(_:), v6);
  v36[3] = v6;
  v36[4] = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v36);
  (*(v7 + 16))(v11, v9, v6);
  v12 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  (*(v7 + 8))(v9, v6);
  v34 = v0;
  v13 = (v0 + OBJC_IVAR____TtC8AppStore14EmptyStateView_title);
  *v13 = 0;
  v13[1] = 0;
  v31 = OBJC_IVAR____TtC8AppStore14EmptyStateView_titleLabel;
  if (qword_10096DC58 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for FontUseCase();
  v15 = sub_1000056A8(v14, qword_1009D04A0);
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
  v20 = type metadata accessor for DynamicTypeLabel();
  v21 = objc_allocWithZone(v20);
  v22 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v23 = v34;
  *(v34 + v31) = v22;
  v24 = (v23 + OBJC_IVAR____TtC8AppStore14EmptyStateView_descriptionText);
  *v24 = 0;
  v24[1] = 0;
  v31 = OBJC_IVAR____TtC8AppStore14EmptyStateView_descriptionLabel;
  if (qword_10096E138 != -1)
  {
    swift_once();
  }

  v25 = sub_1000056A8(v14, qword_1009D1328);
  v30(v5, v25, v14);
  v17(v5, 0, 1, v14);
  v19(v33, v18, v32);
  v26 = objc_allocWithZone(v20);
  v27 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v28 = v34;
  *(v34 + v31) = v27;
  *(v28 + OBJC_IVAR____TtC8AppStore14EmptyStateView_hasDivider) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for ProductEditorsChoiceView(uint64_t a1)
{
  result = qword_100983CF8;
  if (!qword_100983CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003DA53C@<X0>(char a3@<W2>, uint64_t *a4@<X8>)
{
  v7 = type metadata accessor for VerticalStack();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  VerticalStack.init(with:)();
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = v4;
  VerticalStack.adding(_:with:)();

  v15 = *(v8 + 8);
  v15(v10, v7);
  a4[3] = v7;
  a4[4] = &protocol witness table for VerticalStack;
  sub_1000056E0(a4);
  VerticalStack.adding(_:with:)();
  return (v15)(v13, v7);
}

char *sub_1003DA6EC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for FontUseCase();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v56 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DirectionalTextAlignment();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v53 - v17;
  v19 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v19 - 8);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v53 - v23;
  v4[qword_100983CF0] = 0;
  v25 = objc_allocWithZone(type metadata accessor for EditorsChoiceView());
  v26 = sub_10029CDF8(3, 0, 0, 0, 1u);
  v58 = v4;
  *&v4[qword_100983CD8] = v26;
  if (qword_10096DF00 != -1)
  {
    swift_once();
  }

  v27 = sub_1000056A8(v9, qword_1009D0C80);
  v54 = *(v10 + 16);
  v55 = v27;
  v54(v24, v27, v9);
  (*(v10 + 56))(v24, 0, 1, v9);
  (*(v13 + 104))(v18, enum case for DirectionalTextAlignment.none(_:), v12);
  v28 = objc_allocWithZone(type metadata accessor for FadeOutDynamicTypeLabel(0));
  v29 = qword_100985958;
  *&v28[v29] = [objc_allocWithZone(type metadata accessor for InvertedGradientLayer()) init];
  v30 = &v28[qword_100985960];
  *v30 = 0;
  v30[8] = 1;
  sub_1003DB684(v24, v21);
  (*(v13 + 16))(v15, v18, v12);
  v31 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  (*(v13 + 8))(v18, v12);
  sub_10025BAF0(v24);
  v32 = v58;
  *&v58[qword_100983CE0] = v31;
  v33 = [objc_opt_self() clearColor];
  type metadata accessor for FadeInDynamicTypeButton(0);
  v34 = v56;
  v54(v56, v55, v9);
  v35 = v33;
  v36 = sub_10075332C(v34, v35);

  v37 = v36;
  v38._countAndFlagsBits = 0x4D5F4E4F49544341;
  v38._object = 0xEB0000000045524FLL;
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  localizedString(_:comment:)(v38, v39);
  v40 = String._bridgeToObjectiveC()();

  [v37 setTitle:v40 forState:0];

  [v37 setContentEdgeInsets:{COERCE_DOUBLE(1), 0.0, 0.0, 0.0}];
  [v37 setAdjustsImageWhenHighlighted:0];

  *&v32[qword_100983CE8] = v37;
  v59.receiver = v32;
  v59.super_class = ObjectType;
  v41 = objc_msgSendSuper2(&v59, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v45 = v41;
  [v45 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v46 = qword_100983CD8;
  v47 = *&v45[qword_100983CD8];
  sub_100028BB8();
  v48 = v47;
  v49 = static UIColor.primaryText.getter();
  [v48 setTintColor:v49];

  [v45 addSubview:*&v45[v46]];
  v50 = qword_100983CE0;
  [*&v45[qword_100983CE0] setLineBreakMode:0];
  [v45 addSubview:*&v45[v50]];
  v51 = qword_100983CE8;
  [*&v45[qword_100983CE8] setUserInteractionEnabled:0];
  [v45 addSubview:*&v45[v51]];

  return v45;
}

void sub_1003DACFC(uint64_t a1)
{
  *(a1 + qword_100983CF0) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1003DAD64@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  v8 = *(v1 + qword_100983CD8);
  type metadata accessor for EditorsChoiceView();
  Measurable.placeable.getter();
  v3 = *(v1 + qword_100983CE0);
  v6[3] = type metadata accessor for FadeOutDynamicTypeLabel(0);
  v6[4] = &protocol witness table for UILabel;
  v6[0] = v3;
  v4 = v3;
  sub_1003DA53C([v8 isHidden], a1);
  sub_100007000(v7);
  return sub_100007000(v6);
}

id sub_1003DAE38()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for FontSource();
  v61 = *(v2 - 8);
  v62 = v2;
  __chkstk_darwin(v2);
  v4 = (&v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for StaticDimension();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v63 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DynamicTextAppearance();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v13 = type metadata accessor for LabelPlaceholder();
  v64 = *(v13 - 8);
  v65 = v13;
  __chkstk_darwin(v13);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CustomLayoutView();
  v16 = method lookup function for CustomLayoutView();
  v16();
  if (v0[qword_100983CF0] == 1)
  {
    v17 = *&v0[qword_100983CE8];

    return [v17 setHidden:1];
  }

  else
  {
    v58 = v6;
    v59 = v5;
    v60 = *&v0[qword_100983CE0];
    v19 = [v60 text];
    if (v19)
    {
      v20 = v19;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    DynamicTextAppearance.init()();
    if (qword_10096DF00 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for FontUseCase();
    sub_1000056A8(v21, qword_1009D0C80);
    DynamicTextAppearance.withFontUseCase(_:)();
    (*(v9 + 8))(v11, v8);
    LabelPlaceholder.Options.init(rawValue:)();
    v22 = v15;
    LabelPlaceholder.init(_:with:where:)();
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetWidth(v69);
    v23 = [v1 traitCollection];
    LabelPlaceholder.measure(toFit:with:)();
    v25 = v24;

    v26 = v60;
    [v60 frame];
    Height = CGRectGetHeight(v70);
    v28 = *&v1[qword_100983CE8];
    if (Height >= v25)
    {
      [*&v1[qword_100983CE8] setHidden:1];
    }

    else
    {
      [*&v1[qword_100983CE8] setHidden:0];
      LayoutMarginsAware<>.layoutFrame.getter();
      [v28 sizeThatFits:{v29, v30}];
      v32 = v31;
      *v4 = UIFontTextStyleBody;
      v34 = v61;
      v33 = v62;
      (*(v61 + 104))(v4, enum case for FontSource.textStyle(_:), v62);
      v67[3] = v33;
      v67[4] = &protocol witness table for FontSource;
      v35 = sub_1000056E0(v67);
      (*(v34 + 16))(v35, v4, v33);
      v36 = UIFontTextStyleBody;
      v37 = v63;
      StaticDimension.init(_:scaledLike:)();
      (*(v34 + 8))(v4, v33);
      LayoutMarginsAware<>.layoutFrame.getter();
      Width = CGRectGetWidth(v71);
      [v26 frame];
      v39 = v32 - (Width - CGRectGetWidth(v72));
      v40 = [v1 traitCollection];
      type metadata accessor for TraitEnvironmentPlaceholder();
      v41 = v26;
      sub_10002849C(&qword_100973210, qword_1007B0BB0);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1007B0B70;
      *(v42 + 32) = v40;
      v15 = v22;
      v43 = v40;
      v44 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
      v45 = v59;
      dispatch thunk of AnyDimension.rawValue(in:)();
      v47 = v46;

      v48 = &v41[qword_100985960];
      *v48 = v39 + v47;
      *(v48 + 8) = 0;
      [v41 setNeedsLayout];
      LayoutMarginsAware<>.layoutFrame.getter();
      CGRectGetMaxX(v73);
      [v41 frame];
      CGRectGetMaxY(v74);
      v49 = [v1 traitCollection];
      LayoutMarginsAware<>.layoutFrame.getter();
      CGRect.withLayoutDirection(using:relativeTo:)();
      v51 = v50;
      v53 = v52;
      v55 = v54;
      v57 = v56;

      [v28 setFrame:{v51, v53, v55, v57}];
      (*(v58 + 8))(v37, v45);
    }

    return (*(v64 + 8))(v15, v65);
  }
}

void sub_1003DB56C()
{
  v1 = *(v0 + qword_100983CE8);
}

void sub_1003DB5BC(uint64_t a1)
{
  v2 = *(a1 + qword_100983CE8);
}

uint64_t sub_1003DB684(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1003DB6F4()
{
  [v0 removeMenuForIdentifier:UIMenuFind];
  [v0 removeMenuForIdentifier:UIMenuView];
  [v0 removeMenuForIdentifier:UIMenuFormat];
  v4[4] = sub_1003DBA14;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_1003DBA18;
  v4[3] = &unk_1008C1138;
  v1 = _Block_copy(v4);

  [v0 replaceChildrenOfMenuForIdentifier:UIMenuStandardEdit fromChildrenBlock:v1];
  _Block_release(v1);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    v2 = [v0 menuForIdentifier:UIMenuClose];
    if (v2)
    {
      v3 = v2;
      [v0 removeMenuForIdentifier:UIMenuFile];
      [v0 insertChildMenu:v3 atEndOfMenuForIdentifier:UIMenuWindow];
    }
  }
}

void *sub_1003DB894(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v8 = v7;
        v9 = v5;
        if ([v8 action])
        {
          v10 = static Selector.== infix(_:_:)();

          if (v10)
          {

            goto LABEL_6;
          }
        }

        else
        {
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_6:
      if (v6 == i)
      {
        return _swiftEmptyArrayStorage;
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

Class sub_1003DBA18(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1003DBAA0();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v2();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

unint64_t sub_1003DBAA0()
{
  result = qword_1009818C0;
  if (!qword_1009818C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009818C0);
  }

  return result;
}

uint64_t sub_1003DBAEC()
{
  v0 = sub_10002849C(&qword_100970EE0, &unk_1007DF4C0);
  __chkstk_darwin(v0 - 8);
  v41 = &v34 - v1;
  v44 = type metadata accessor for PageGrid.HorizontalMargins();
  v50 = *(v44 - 8);
  __chkstk_darwin(v44);
  v3 = (&v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10002849C(&qword_100970EE8, &qword_1007CF5F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v34 - v8;
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  sub_10002849C(&qword_100970EF0, qword_1007DF4D0);
  v15 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v49 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v39 = v17;
  *(v17 + 16) = xmmword_1007B23A0;
  v18 = v17 + v16;
  v51 = 0x3FF0000000000000;
  v52 = 0x3FF8000000000000;
  sub_10005E808();
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v51 = 0x4030000000000000;
  v52 = 0x4020000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  __asm { FMOV            V0.2D, #16.0 }

  *v3 = _Q0;
  v48 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v24 = *(v50 + 104);
  v50 += 104;
  v25 = v44;
  v24(v3);
  v42 = v24;
  left = UIEdgeInsetsZero.left;
  LOBYTE(v52) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v52 = 0;
  v47 = v6;
  PageGrid.DirectionalValue.init(_:)();
  v43 = v18;
  v45 = v14;
  v46 = v11;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v51 = 0x3FF0000000000000;
  v52 = 0x3FF8000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v51 = 0x4034000000000000;
  v52 = 0x4024000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  __asm { FMOV            V0.2D, #20.0 }

  *v3 = _Q0;
  (v24)(v3, v48, v25);
  LOBYTE(v52) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v52 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v28 = v49;
  top = UIEdgeInsetsZero.top;
  v38 = left;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v51 = 0x4000000000000000;
  v52 = 0x3FF8000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v52 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v36 = vdupq_n_s64(0x4041000000000000uLL);
  *v3 = v36;
  v29 = v44;
  v30 = v42;
  (v42)(v3, v48, v44);
  LOBYTE(v52) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v52 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v35 = 2 * v28 + v49;
  v51 = 0x4000000000000000;
  v52 = 0x3FF8000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v52 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  *v3 = v36;
  (v30)(v3, v48, v29);
  static UIEdgeInsets.horizontal(left:right:)();
  LOBYTE(v52) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v52 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v35 = 4 * v49;
  v51 = 0x4000000000000000;
  v52 = 0x3FF8000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v52 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v36 = vdupq_n_s64(0x404A000000000000uLL);
  *v3 = v36;
  v31 = v48;
  v32 = v44;
  (v42)(v3, v48, v44);
  LOBYTE(v52) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v52 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v51 = 0x4000000000000000;
  v52 = 0x3FF8000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v52 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  *v3 = v36;
  (v42)(v3, v31, v32);
  LOBYTE(v52) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v52 = 0;
  PageGrid.DirectionalValue.init(_:)();
  result = PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  qword_100983D48 = v39;
  return result;
}

uint64_t sub_1003DC520()
{
  v0 = sub_10002849C(&qword_100970EE0, &unk_1007DF4C0);
  __chkstk_darwin(v0 - 8);
  v40 = &v34 - v1;
  v42 = type metadata accessor for PageGrid.HorizontalMargins();
  v49 = *(v42 - 8);
  __chkstk_darwin(v42);
  v3 = (&v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10002849C(&qword_100970EE8, &qword_1007CF5F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  sub_10002849C(&qword_100970EF0, qword_1007DF4D0);
  v16 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v48 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v39 = v18;
  *(v18 + 16) = xmmword_1007B23A0;
  v46 = v18 + v17;
  v51 = 0x4000000000000000;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v50 = 0x4030000000000000;
  v51 = 0x4020000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
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
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0;
  v43 = v6;
  PageGrid.DirectionalValue.init(_:)();
  v41 = v15;
  v44 = v12;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v51 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v50 = 0x4034000000000000;
  v51 = 0x4024000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  __asm { FMOV            V0.2D, #20.0 }

  *v3 = _Q0;
  v47(v3, v45, v25);
  LOBYTE(v51) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v28 = v48;
  top = UIEdgeInsetsZero.top;
  v38 = left;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v51 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v36 = vdupq_n_s64(0x4041000000000000uLL);
  *v3 = v36;
  v29 = v42;
  v30 = v47;
  v47(v3, v45, v42);
  LOBYTE(v51) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v35 = 2 * v28 + v48;
  v51 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  *v3 = v36;
  v30(v3, v45, v29);
  static UIEdgeInsets.horizontal(left:right:)();
  LOBYTE(v51) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v34 = v9;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v35 = 4 * v48;
  v51 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v36 = vdupq_n_s64(0x404A000000000000uLL);
  *v3 = v36;
  v31 = v45;
  v32 = v42;
  v47(v3, v45, v42);
  LOBYTE(v51) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v51 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  *v3 = v36;
  v47(v3, v31, v32);
  LOBYTE(v51) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0;
  PageGrid.DirectionalValue.init(_:)();
  result = PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  qword_100983D50 = v39;
  return result;
}

double sub_1003DCF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    __chkstk_darwin(v5);
    Box.write(with:)();
  }

  return result;
}

double sub_1003DCFF4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);

  return result;
}

double sub_1003DD08C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

uint64_t sub_1003DD098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_10002849C(&qword_100983E40, &unk_1007CB668);
  v10 = Promise.__allocating_init()();

  sub_1003DED84(sub_1003DF118, v4);

  v11 = [objc_allocWithZone(ADSearchCriteria) init];
  v12 = String._bridgeToObjectiveC()();
  [v11 setLanguageLocale:v12];

  v13 = String._bridgeToObjectiveC()();
  [v11 setSearchTerm:v13];

  v14 = *(v5 + 40);
  v15 = swift_allocObject();
  v15[2] = v10;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  v15[6] = a4;
  v18[4] = sub_1003DF128;
  v18[5] = v15;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_1003DD5E8;
  v18[3] = &unk_1008C1228;
  v16 = _Block_copy(v18);
  swift_unknownObjectRetain();

  [v14 searchObjectForCriteria:v11 withCompletionHandler:v16];
  _Block_release(v16);
  sub_1003DD674(v10, 1.0);

  return v10;
}

void sub_1003DD280(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v42 = a7;
  v43 = a4;
  v10 = type metadata accessor for SponsoredSearchRequestData();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  if (Promise.isResolved.getter())
  {
    return;
  }

  if (a2)
  {
    Promise.reject(_:)();
    return;
  }

  v17 = [a1 sponsoredSearchRequestData];
  if (v17)
  {
    v18 = v17;
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = [a1 routingInfoData];
    if (v21)
    {
      v22 = v21;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v24;
      v39 = v23;

      v25 = [a1 userTargetingID];
      v40 = v20;
      if (v25)
      {
        v26 = v25;
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v28;
        v37 = v27;
      }

      else
      {
        v36 = 0;
        v37 = 0;
      }

      v30 = [a1 deviceRequestID];
      if (v30)
      {
        v31 = v30;
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      SponsoredSearchRequestData.init(iAdId:sponsoredSearchRequestData:routingInfo:canaryId:)();
      (*(v11 + 16))(v13, v16, v10);
      v32 = type metadata accessor for SearchAdsAdvertPipeline();
      swift_allocObject();
      swift_unknownObjectRetain();

      v33 = a1;
      v34 = sub_10024796C(v33, a6, v42);
      v45 = v32;
      v46 = sub_1003DF194(&qword_100983E50, type metadata accessor for SearchAdsAdvertPipeline, &unk_1007C28F8);
      v44 = v34;
      type metadata accessor for SponsoredSearchSession();
      swift_allocObject();
      v44 = SponsoredSearchSession.init(term:requestData:advertPipeline:)();
      Promise.resolve(_:)();
      (*(v11 + 8))(v16, v10);

      return;
    }
  }

  sub_1003DF140();
  swift_allocError();
  *v29 = 0;
  Promise.reject(_:)();
}

void sub_1003DD5E8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

void sub_1003DD674(uint64_t a1, double a2)
{
  v28 = a1;
  v29 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v29 - 8);
  __chkstk_darwin(v29);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v27 = v7;
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000076C0();
  (*(v15 + 104))(v17, enum case for DispatchQoS.QoSClass.userInteractive(_:), v14);
  v26 = static OS_dispatch_queue.global(qos:)();
  (*(v15 + 8))(v17, v14);
  static DispatchTime.now()();
  + infix(_:_:)();
  v18 = *(v8 + 8);
  v18(v10, v7);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v21 = v28;
  *(v20 + 16) = v19;
  *(v20 + 24) = v21;
  aBlock[4] = sub_1003DF138;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008C12A0;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_1003DF194(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_1000079A4();
  v23 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v26;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v22);

  (*(v32 + 8))(v3, v23);
  (*(v30 + 8))(v6, v31);
  v18(v13, v27);
}

double sub_1003DDB14(uint64_t a1)
{
  v2 = type metadata accessor for SponsoredSearchRequestData();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    SponsoredSearchSession.requestData.getter();
    v7 = SponsoredSearchRequestData.iAdId.getter();
    v9 = v8;
    v4 = (*(v3 + 8))(v6, v2);
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  __chkstk_darwin(v4);
  *(&v19 - 2) = v7;
  *(&v19 - 1) = v9;
  Box.write(with:)();

  if (a1)
  {
    SponsoredSearchSession.requestData.getter();
    SponsoredSearchRequestData.canaryId.getter();
    v10 = *(v3 + 8);
    v10(v6, v2);
    static GlobalEventCanary.value.setter();
    SponsoredSearchSession.requestData.getter();
    v11 = SponsoredSearchRequestData.canaryId.getter();
    v13 = v12;
    v14 = (v10)(v6, v2);
  }

  else
  {
    v14 = static GlobalEventCanary.value.setter();
    v11 = 0;
    v13 = 0;
  }

  __chkstk_darwin(v14);
  *(&v19 - 2) = v11;
  *(&v19 - 1) = v13;
  Box.write(with:)();

  if (a1)
  {
    SponsoredSearchSession.requestData.getter();
    v16 = SponsoredSearchRequestData.routingInfo.getter();
    a1 = v17;
    v15 = (*(v3 + 8))(v6, v2);
  }

  else
  {
    v16 = 0;
  }

  __chkstk_darwin(v15);
  *(&v19 - 2) = v16;
  *(&v19 - 1) = a1;
  Box.write(with:)();

  return result;
}

uint64_t sub_1003DDDDC(uint64_t a1, uint64_t a2)
{
  sub_10002849C(&qword_100983E58, &qword_1007CB678);
  Box.read<A>(with:)();
  if (!v10)
  {
    return 0;
  }

  v4 = SponsoredSearchSession.term.getter();
  v6 = v5;

  if (v4 == a1 && v6 == a2)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  Box.read<A>(with:)();
  return v10;
}

void sub_1003DDEF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_allocWithZone(CLLocationManager) init];
  if ([objc_opt_self() locationServicesEnabled] && objc_msgSend(v17, "authorizationStatus") == 4)
  {
    sub_1000076C0();
    v12 = static OS_dispatch_queue.main.getter();
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    aBlock[4] = sub_100055FCC;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008C11D8;
    v14 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1003DF194(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
    sub_1000079A4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v14);
    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v15 = v17;
  }
}

double sub_1003DE238(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LogMessageLevel();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MetricsLogger.Configuration();
  v33 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Logger();
  v10 = *(v32 - 8);
  __chkstk_darwin(v32);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v26 = v7;
    v27 = v9;
    v28 = v6;
    v29 = v4;
    v30 = v3;
    v31 = a2;
    if (qword_10096D130 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for OSLogger();
    sub_1000056A8(v16, qword_1009CE248);
    v17 = sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    v25 = v17;
    *(swift_allocObject() + 16) = xmmword_1007B1890;

    static LogMessage.identity(_:)();

    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    Logger.init()();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "SponsoredSearchSession promise timeout", v20, 2u);
    }

    (*(v10 + 8))(v12, v32);
    (*(v33 + 16))(v27, v15 + OBJC_IVAR____TtC8AppStore38SearchAdsSponsoredSearchSessionManager_metricsLoggerConfiguration, v26);
    type metadata accessor for MetricsLogger();
    swift_allocObject();
    MetricsLogger.init(loggerName:configuration:)();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    v22 = v28;
    v21 = v29;
    v23 = v30;
    (*(v29 + 104))(v28, enum case for LogMessageLevel.error(_:), v30);
    MetricsLogger.log(contentsOf:withLevel:)();

    (*(v21 + 8))(v22, v23);
    sub_1003DF140();
    swift_allocError();
    *v24 = 1;
    Promise.invalidate(_:)();
  }

  return result;
}

uint64_t sub_1003DE71C()
{

  v1 = OBJC_IVAR____TtC8AppStore38SearchAdsSponsoredSearchSessionManager_metricsLoggerConfiguration;
  v2 = type metadata accessor for MetricsLogger.Configuration();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchAdsSponsoredSearchSessionManager(uint64_t a1)
{
  result = qword_100983D88;
  if (!qword_100983D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003DE834(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for MetricsLogger.Configuration();
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

double sub_1003DE8F4(uint64_t a1, __n128 a2)
{
  Box.write(with:)();

  sub_1003DED84(sub_1003DEA60, v2);

  return sub_1003DDB14(a1);
}

double sub_1003DEA1C(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;

  return result;
}

char *sub_1003DEA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  aBlock[0] = 0;
  sub_10002849C(&unk_100983E60, &qword_1007CB680);
  swift_allocObject();
  *(v6 + 4) = Box.init(value:)();
  *(v6 + 7) = [objc_allocWithZone(ASKGreenTeaLogger) init];
  v11 = objc_opt_self();
  v12 = [v11 mainBundle];
  v13 = [v12 bundleIdentifier];

  if (v13)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v14 = [v11 mainBundle];
  sub_1005A4778();

  v15 = String._bridgeToObjectiveC()();

  v16 = String._bridgeToObjectiveC()();

  if (a2)
  {
    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  v18 = [objc_allocWithZone(ADSearchSession) initWithAppID:v15 appVersion:v16 appsRank:1 storeFront:v17];

  *(v7 + 5) = v18;
  *(v7 + 6) = a5;
  *(v7 + 2) = v26;
  *(v7 + 3) = v28;
  v19 = OBJC_IVAR____TtC8AppStore38SearchAdsSponsoredSearchSessionManager_metricsLoggerConfiguration;
  v20 = type metadata accessor for MetricsLogger.Configuration();
  v21 = *(v20 - 8);
  (*(v21 + 16))(&v7[v19], a6, v20);
  v22 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1003DF1DC;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003DCFF4;
  aBlock[3] = &unk_1008C12C8;
  v23 = _Block_copy(aBlock);

  [v18 requestUserTargetingIdentifier:v23];
  _Block_release(v23);
  (*(v21 + 8))(a6, v20);
  return v7;
}

double sub_1003DED84(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v6 = *(v18 - 8);
  __chkstk_darwin(v18);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000076C0();
  (*(v10 + 104))(v12, enum case for DispatchQoS.QoSClass.utility(_:), v9);
  v13 = static OS_dispatch_queue.global(qos:)();
  (*(v10 + 8))(v12, v9);
  v14 = swift_allocObject();
  *(v14 + 16) = v17;
  *(v14 + 24) = a2;
  aBlock[4] = sub_1003DF110;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008C1188;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_1003DF194(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_1000079A4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v19 + 8))(v5, v3);
  (*(v6 + 8))(v8, v18);

  return result;
}

unint64_t sub_1003DF140()
{
  result = qword_100983E48;
  if (!qword_100983E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983E48);
  }

  return result;
}

uint64_t sub_1003DF194(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1003DF20C(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v9 = type metadata accessor for SmallLockupLayout.Metrics();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (GameCenterReengagement.lockup.getter())
  {
    v13 = [a5 traitCollection];
    v14 = [v13 userInterfaceIdiom];

    if (v14 == 2)
    {
    }

    else
    {
      type metadata accessor for SmallLockupView(0);
      sub_1003DF3C4(v12);
      swift_getObjectType();
      a2 = sub_10070B598(v12, a1, a2, a3);

      (*(v10 + 8))(v12, v9);
    }
  }

  return a2;
}

uint64_t sub_1003DF3C4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FontSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for SmallLockupLayout.Metrics();
  v7 = sub_1000056A8(v6, qword_1009D3798);
  (*(*(v6 - 8) + 16))(a1, v7, v6);
  Lockup.subtitle.getter();
  if (v8)
  {
  }

  else
  {
    if (qword_10096DD00 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for FontUseCase();
    v10 = sub_1000056A8(v9, qword_1009D0698);
    (*(*(v9 - 8) + 16))(v5, v10, v9);
    (*(v3 + 104))(v5, enum case for FontSource.useCase(_:), v2);
    v15 = type metadata accessor for StaticDimension();
    v16 = &protocol witness table for StaticDimension;
    sub_1000056E0(v14);
    v13[3] = v2;
    v13[4] = &protocol witness table for FontSource;
    v11 = sub_1000056E0(v13);
    (*(v3 + 16))(v11, v5, v2);
    StaticDimension.init(_:scaledLike:)();
    (*(v3 + 8))(v5, v2);
    SmallLockupLayout.Metrics.headingSpace.setter();
  }

  v15 = &type metadata for Double;
  v16 = &protocol witness table for Double;
  v14[0] = 0;
  SmallLockupLayout.Metrics.bottomSpace.setter();
  SmallLockupLayout.Metrics.artworkSize.setter();
  return SmallLockupLayout.Metrics.artworkMargin.setter();
}

void sub_1003DF66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v97 = a2;
  v8 = type metadata accessor for Artwork.Crop();
  v87 = *(v8 - 8);
  v88 = v8;
  __chkstk_darwin(v8);
  v86 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&unk_100973AD0, &unk_1007B17C0);
  __chkstk_darwin(v10 - 8);
  v93 = &v82 - v11;
  v12 = sub_10002849C(&unk_100970150, &unk_1007BDDD0);
  __chkstk_darwin(v12 - 8);
  v92 = &v82 - v13;
  v14 = sub_10002849C(&unk_100970160, &unk_1007BDDE0);
  __chkstk_darwin(v14 - 8);
  v91 = &v82 - v15;
  v16 = sub_10002849C(&qword_100973AE0, &unk_1007B17D0);
  __chkstk_darwin(v16 - 8);
  v90 = &v82 - v17;
  v18 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  __chkstk_darwin(v18 - 8);
  v89 = &v82 - v19;
  v20 = type metadata accessor for SmallLockupLayout.Metrics();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v94 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v23 - 8);
  v96 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10002849C(&qword_100983ED0, &qword_1007CB6B8);
  *&v26 = __chkstk_darwin(v25 - 8).n128_u64[0];
  v28 = &v82 - v27;
  v29 = [a5 snapshotPageTraitEnvironment];
  *&v6[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_pageTraits] = v29;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v6 setNeedsLayout];
  swift_unknownObjectRelease();
  v30 = GameCenterReengagement.backgroundColor.getter();
  [v6 setBackgroundColor:v30];

  GameCenterReengagement.badgeGlyph.getter();
  if (v31)
  {
    v32 = String._bridgeToObjectiveC()();
  }

  else
  {
    v32 = 0;
  }

  v33 = [objc_opt_self() _systemImageNamed:v32];

  v34 = *&v6[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_badgeGlyph];
  if (v33)
  {
    [v34 setImage:v33];
  }

  else
  {
    [v34 setImage:0];
  }

  v95 = v20;
  v35 = *&v6[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_badge];
  GameCenterReengagement.badge.getter();
  if (v36)
  {
    v37 = String._bridgeToObjectiveC()();
  }

  else
  {
    v37 = 0;
  }

  [v35 setText:v37];

  v38 = *&v6[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_title];
  GameCenterReengagement.title.getter();
  v39 = String._bridgeToObjectiveC()();

  [v38 setText:v39];

  v40 = *&v6[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_subtitle];
  GameCenterReengagement.subtitle.getter();
  if (v41)
  {
    v42 = String._bridgeToObjectiveC()();
  }

  else
  {
    v42 = 0;
  }

  [v40 setText:v42];

  v43 = *&v6[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_heroContent];
  GameCenterReengagement.achievement.getter();
  v44 = type metadata accessor for Achievement();
  (*(*(v44 - 8) + 56))(v28, 0, 1, v44);
  AchievementCard.model.setter();
  v45 = dispatch thunk of GameCenterReengagement.clickAction.getter();
  if (v45)
  {
    v46 = v45;
    v47 = *&v6[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_button];
    v48 = swift_allocObject();
    *(v48 + 16) = v97;
    *(v48 + 24) = v46;

    dispatch thunk of ImageAlignedButton.primaryActionHandler.setter();
    Action.title.getter();
    if (v49)
    {
      v50 = String._bridgeToObjectiveC()();
    }

    else
    {
      v50 = 0;
    }

    [v47 setTitle:v50 forState:0];
  }

  else
  {
    [*&v6[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_button] setHidden:1];
  }

  [v43 removeAllGestureRecognizers];
  v51 = dispatch thunk of GameCenterReengagement.heroAction.getter();
  if (v51)
  {
    v52 = v51;
    v53 = type metadata accessor for TapActionGestureRecognizer();
    v54 = objc_allocWithZone(v53);
    *&v54[OBJC_IVAR____TtC8AppStore26TapActionGestureRecognizer_action] = v52;
    *&v54[OBJC_IVAR____TtC8AppStore26TapActionGestureRecognizer_objectGraph] = v97;
    v98.receiver = v54;
    v98.super_class = v53;

    v55 = objc_msgSendSuper2(&v98, "initWithTarget:action:", 0, 0);
    [v55 addTarget:v55 action:"execute"];
    [v43 addGestureRecognizer:v55];
  }

  if (GameCenterReengagement.backgroundArtwork.getter())
  {
    v56 = *&v6[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_backgroundImage];
    [v56 setHidden:0];
    [v6 frame];
    [v6 frame];
    Artwork.config(using:)();
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v56 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();
    type metadata accessor for ArtworkLoader();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    type metadata accessor for ArtworkView();
    sub_1003E0E44(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }

  else
  {
    [*&v6[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_backgroundImage] setHidden:1];
  }

  v57 = GameCenterReengagement.lockup.getter();
  v58 = v94;
  if (v57)
  {
    v85 = v6;
    v59 = *&v6[OBJC_IVAR____TtC8AppStore40GameCenterReengagementCollectionViewCell_lockup];
    v60 = v57;
    sub_1003DF3C4(v94);
    v61 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
    swift_beginAccess();
    v62 = v21;
    v63 = *(v21 + 24);
    v84 = v61;
    v64 = &v59[v61];
    v65 = v95;
    v63(v64, v58, v95);
    swift_endAccess();
    [v59 setNeedsLayout];
    v83 = *(v21 + 8);
    v83(v58, v65);
    v66 = sub_10002849C(&unk_100973240, qword_1007B2220);
    v67 = v89;
    (*(*(v66 - 8) + 56))(v89, 1, 1, v66);
    v68 = type metadata accessor for OfferStyle();
    v69 = v90;
    (*(*(v68 - 8) + 56))(v90, 1, 1, v68);
    v70 = type metadata accessor for OfferEnvironment();
    v71 = v91;
    (*(*(v70 - 8) + 56))(v91, 1, 1, v70);
    v72 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
    v73 = v92;
    (*(*(v72 - 8) + 56))(v92, 1, 1, v72);
    v74 = type metadata accessor for OfferTint();
    v75 = v93;
    (*(*(v74 - 8) + 56))(v93, 1, 1, v74);
    sub_1004F3190(v60, v59, v67, v97, 0, 0, v69, v71, v75, v73);
    sub_10002B894(v75, &unk_100973AD0, &unk_1007B17C0);
    v59[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    [v59 setNeedsLayout];
    sub_10002B894(v73, &unk_100970150, &unk_1007BDDD0);
    sub_10002B894(v71, &unk_100970160, &unk_1007BDDE0);
    sub_10002B894(v69, &qword_100973AE0, &unk_1007B17D0);
    sub_10002B894(v67, &unk_100973230, &unk_1007B17E0);
    v93 = v60;
    if (Lockup.icon.getter())
    {
      v76 = v95;
      (*(v62 + 16))(v58, &v59[v84], v95);
      SmallLockupLayout.Metrics.artworkSize.getter();
      v83(v58, v76);
      v77 = v86;
      Artwork.crop.getter();
      Artwork.Crop.preferredContentMode.getter();
      (*(v87 + 8))(v77, v88);
      Artwork.config(_:mode:prefersLayeredImage:)();
      v78 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
      v79 = *&v59[OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView];
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v79 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180, UIColor_ptr);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();

      [v59 setContentMode:{objc_msgSend(v85, "contentMode")}];
      type metadata accessor for ArtworkLoader();
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      v80 = *&v59[v78];
      type metadata accessor for ArtworkView();
      sub_1003E0E44(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      v81 = v80;
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }
  }
}

uint64_t sub_1003E0478(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10002B894(v6, &unk_100972A00, &unk_1007B3130);
  }

  sub_1005F9AF4(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

double sub_1003E0680(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = type metadata accessor for GameCenterReengagementLayout.Metrics();
  __chkstk_darwin(v8 - 8);
  v38 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GameCenterReengagementLayout();
  v40 = *(v10 - 8);
  v41 = v10;
  __chkstk_darwin(v10);
  v39 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LabelPlaceholderCompatibility();
  v48 = *(v12 - 8);
  v49 = v12;
  __chkstk_darwin(v12);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  GameCenterReengagement.badge.getter();
  v15 = sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096E380 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for FontUseCase();
  sub_1000056A8(v47, qword_1009D1A00);
  v16 = [a6 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v17 = type metadata accessor for Feature();
  v66[3] = v17;
  v46 = sub_1003E0E44(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v66[4] = v46;
  v18 = sub_1000056E0(v66);
  v19 = *(v17 - 8);
  v20 = *(v19 + 104);
  v45 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v43 = v19 + 104;
  v44 = v20;
  v20(v18);
  isFeatureEnabled(_:)();
  sub_100007000(v66);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v42 = v15;
  v21 = *(v48 + 8);
  v21(v14, v49);
  GameCenterReengagement.title.getter();
  v48 = a1;
  if (qword_10096E388 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v47, qword_1009D1A18);
  v22 = [a6 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v65[3] = v17;
  v65[4] = v46;
  v23 = sub_1000056E0(v65);
  v44(v23, v45, v17);
  isFeatureEnabled(_:)();
  sub_100007000(v65);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v21(v14, v49);
  GameCenterReengagement.subtitle.getter();
  if (qword_10096E390 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v47, qword_1009D1A30);
  v24 = [a6 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v64[3] = v17;
  v64[4] = v46;
  v25 = sub_1000056E0(v64);
  v44(v25, v45, v17);
  isFeatureEnabled(_:)();
  sub_100007000(v64);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v21(v14, v49);
  v26 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v27 = LayoutViewPlaceholder.init(measurements:)();
  v28 = swift_allocObject();
  v28[2] = v48;
  v28[3] = a6;
  v28[4] = v37[1];
  swift_allocObject();

  swift_unknownObjectRetain();
  v29 = LayoutViewPlaceholder.init(measureWith:)();
  sub_10041DBC0(a6, v38);
  v63 = 0;
  *&v61[40] = 0u;
  v62 = 0u;
  sub_10002C0AC(v66, v61);
  sub_10002C0AC(v65, &v60);
  sub_10002C0AC(v64, &v59);
  v57 = v26;
  v58 = &protocol witness table for LayoutViewPlaceholder;
  v56 = v27;

  v30 = [a6 traitCollection];
  static Separator.thickness(compatibleWith:)();

  swift_allocObject();
  v31 = LayoutViewPlaceholder.init(representing:)();
  v54 = v26;
  v55 = &protocol witness table for LayoutViewPlaceholder;
  v52 = &protocol witness table for LayoutViewPlaceholder;
  v53 = v31;
  v51 = v26;
  v50 = v29;

  v32 = v39;
  GameCenterReengagementLayout.init(metrics:badgeGlyph:badgeLabel:titleLabel:subtitleLabel:heroContent:separator:footer:)();
  sub_1003E0E44(&unk_100993010, &type metadata accessor for GameCenterReengagementLayout, &protocol conformance descriptor for GameCenterReengagementLayout);
  v33 = v41;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v35 = v34;

  (*(v40 + 8))(v32, v33);
  sub_100007000(v64);
  sub_100007000(v65);
  sub_100007000(v66);
  return v35;
}

uint64_t sub_1003E0E44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1003E0E8C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v19 = a3;
  v17 = type metadata accessor for Artwork.Crop();
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

        Artwork.crop.getter();
        Artwork.Crop.preferredContentMode.getter();
        (*(v6 + 8))(v8, v17);
        Artwork.config(_:mode:prefersLayeredImage:)();
        v21 = 0;
        memset(v20, 0, sizeof(v20));
        v14 = swift_allocObject();
        *(v14 + 16) = a2;
        *(v14 + 24) = v11;
        v15 = a2;
        ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

        sub_10002B894(v20, &qword_10096FB90, &qword_1007B2A50);
      }

      v10 += 2;
      --v9;
    }

    while (v9);
  }
}

id sub_1003E10AC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7, double a8, double a9, double a10)
{
  v223 = a5;
  v224 = a4;
  v216 = a3;
  v228 = a2;
  v232 = a1;
  v15 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v15 - 8);
  v198 = &v194 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = type metadata accessor for Artwork.Crop();
  v196 = *(v197 - 8);
  __chkstk_darwin(v197);
  v195 = &v194 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&unk_100973A50, &unk_1007B4FD0);
  __chkstk_darwin(v18 - 8);
  v213 = &v194 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v212 = &v194 - v21;
  v22 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v22 - 8);
  v211 = &v194 - v23;
  v24 = type metadata accessor for VideoControls();
  __chkstk_darwin(v24 - 8);
  v210 = &v194 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v209 = &v194 - v27;
  v28 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v28 - 8);
  v208 = &v194 - v29;
  v206 = type metadata accessor for VideoFillMode();
  v205 = *(v206 - 8);
  __chkstk_darwin(v206);
  v207 = &v194 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = type metadata accessor for VideoConfiguration();
  v214 = *(v215 - 8);
  __chkstk_darwin(v215);
  v219 = &v194 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = type metadata accessor for AdamId();
  v230 = *(v234 - 8);
  __chkstk_darwin(v234);
  v233 = &v194 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = type metadata accessor for MediaOverlayStyle();
  v200 = *(v201 - 8);
  __chkstk_darwin(v201);
  v199 = &v194 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10002849C(&qword_100983ED8, &qword_1007D11B0);
  __chkstk_darwin(v34 - 8);
  v218 = &v194 - v35;
  v221 = type metadata accessor for ArtworkGridType();
  v220 = *(v221 - 8);
  __chkstk_darwin(v221);
  v204 = &v194 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v217 = &v194 - v38;
  v231 = type metadata accessor for EditorialSearchResultType();
  v227 = *(v231 - 8);
  __chkstk_darwin(v231);
  v229 = &v194 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v226 = &v194 - v41;
  __chkstk_darwin(v42);
  v44 = &v194 - v43;
  v45 = type metadata accessor for AspectRatio();
  v225 = *(v45 - 8);
  __chkstk_darwin(v45);
  v47 = &v194 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for AspectFitMeasurable();
  v49 = *(v48 - 8);
  *&v50 = __chkstk_darwin(v48).n128_u64[0];
  v52 = &v194 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = [a6 contentView];
  [v53 setLayoutMargins:{a7, a8, a9, a10}];

  v235[0] = a6;
  v54 = type metadata accessor for EditorialSearchResultCollectionViewCell();
  v55 = sub_1003E38A8(&qword_100983EE0, type metadata accessor for EditorialSearchResultCollectionViewCell, &protocol conformance descriptor for NSObject);
  v56 = a6;
  v202 = v55;
  AnyHashable.init<A>(_:)();
  dispatch thunk of ArtworkIconFetcher.forgetFetches(for:)();
  sub_10003D614(v236);
  v203 = v54;
  LayoutMarginsAware<>.layoutFrame.getter();
  if (qword_10096EFF8 != -1)
  {
    goto LABEL_97;
  }

  while (1)
  {
    v57 = sub_1000056A8(v45, qword_1009D4348);
    v58 = v225;
    (*(v225 + 16))(v47, v57, v45);
    v194 = v47;
    AspectFitMeasurable.init(_:)();
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v60 = v59;
    v62 = v61;
    (*(v49 + 8))(v52, v48);
    EditorialSearchResult.type.getter();
    v63 = v227;
    v64 = v231;
    v65 = (*(v227 + 88))(v44, v231);
    v66 = v45;
    v222 = enum case for EditorialSearchResultType.appEventStory(_:);
    if (v65 == enum case for EditorialSearchResultType.category(_:) || v65 == enum case for EditorialSearchResultType.collection(_:) || v65 == enum case for EditorialSearchResultType.story(_:) || v65 == enum case for EditorialSearchResultType.appEventStory(_:))
    {
      v56[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_showEditorialIcon] = 1;
      [*&v56[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_editorialIcon] setHidden:0];
      [v56 setNeedsLayout];
    }

    else
    {
      v56[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_showEditorialIcon] = 0;
      [*&v56[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_editorialIcon] setHidden:1];
      [v56 setNeedsLayout];
      (*(v63 + 8))(v44, v64);
    }

    v67 = dispatch thunk of EditorialSearchResult.typeDisplayText.getter();
    sub_1007821C0(v67, v68);
    EditorialSearchResult.title.getter();
    v70 = v69;
    v71 = *&v56[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_titleLabel];
    v72 = v69 ? String._bridgeToObjectiveC()() : 0;
    [v71 setText:v72];

    [v71 setHidden:v70 == 0];
    [v56 setNeedsLayout];
    EditorialSearchResult.subtitle.getter();
    v74 = v73;
    v75 = *&v56[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_subtitleLabel];
    v76 = v73 ? String._bridgeToObjectiveC()() : 0;
    [v75 setText:v76];

    [v75 setHidden:v74 == 0];
    [v56 setNeedsLayout];
    v52 = v232;
    v77 = EditorialSearchResult.collectionAdamIds.getter();
    v78 = v63;
    v79 = v226;
    if (!v77)
    {
      break;
    }

    v80 = v77;
    v81 = v218;
    EditorialSearchResult.artworkGridType.getter();
    v82 = v220;
    v83 = v221;
    if ((*(v220 + 48))(v81, 1, v221) == 1)
    {

      sub_10002B894(v81, &qword_100983ED8, &qword_1007D11B0);
      break;
    }

    v96 = v217;
    (*(v82 + 32))(v217, v81, v83);
    v97 = v204;
    (*(v82 + 16))(v204, v96, v83);
    v98 = (*(v82 + 88))(v97, v83);
    if (v98 == enum case for ArtworkGridType.small(_:))
    {
      goto LABEL_23;
    }

    if (v98 == enum case for ArtworkGridType.large(_:))
    {
      v99 = 1;
    }

    else if (v98 == enum case for ArtworkGridType.extraLarge(_:))
    {
      v99 = 2;
    }

    else
    {
      if (v98 != enum case for ArtworkGridType.mixed(_:))
      {
        (*(v82 + 8))(v97, v83);
LABEL_23:
        v99 = 0;
        goto LABEL_41;
      }

      v99 = 3;
    }

LABEL_41:
    v114 = objc_allocWithZone(type metadata accessor for ArtworkGrid());
    v115 = sub_1006B52EC(v99, 0.0, 0.0, 0.0, 0.0);
    sub_1006AD188();
    v116 = v115[OBJC_IVAR____TtC8AppStore11ArtworkGrid_gridType];
    v117.f64[0] = v60;
    v118 = sub_1006B4CD4(v116, v117, v62);
    v49 = *(v80 + 2);
    if (v118 < v49)
    {
      v119.f64[0] = v60;
      v120 = sub_1006B4CD4(v116, v119, v62);
      if ((v120 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v49 >= v120)
      {
        if (v49 == v120)
        {
LABEL_58:
          v123 = v80;
        }

        else
        {
          v218 = v115;
          v219 = v56;
          v121 = &v80[(*(v230 + 80) + 32) & ~*(v230 + 80)];
          v228 = v80;
          sub_1005E7D94(v80, v121, 0, (2 * v120) | 1);
          v123 = v122;
LABEL_46:

          v56 = v219;
          v78 = v227;
          v79 = v226;
          v115 = v218;
        }

        *&v115[OBJC_IVAR____TtC8AppStore11ArtworkGrid_expectedNumberOfArtworkImages] = *(v123 + 2);
        sub_1006B5128();
        v127 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v128 = swift_allocObject();
        v128[2] = v115;
        v128[3] = v127;
        v129 = v223;
        v128[4] = v223;
        v130 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v131 = swift_allocObject();
        v131[2] = v115;
        v131[3] = v130;
        v131[4] = v129;
        v236[0] = v56;
        v132 = v115;
        swift_retain_n();
        v133 = v56;
        v134 = v132;
        AnyHashable.init<A>(_:)();
        dispatch thunk of ArtworkIconFetcher.fetchArtworkIcons(for:partialCompletion:completion:handlerKey:)();

        sub_10002B894(v235, &qword_10096FB90, &qword_1007B2A50);
        sub_10003D614(v236);
        v135 = OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_artworkGrid;
        v136 = *&v133[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_artworkGrid];
        v137 = v134;
        if (v136)
        {
          [v136 removeFromSuperview];
          v138 = *&v133[v135];
        }

        else
        {
          v138 = 0;
        }

        v139 = v221;
        *&v133[v135] = v134;
        v140 = v134;

        sub_100782714();
        (*(v220 + 8))(v217, v139);
        goto LABEL_63;
      }

      __break(1u);
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    if (v118 <= v49)
    {
      goto LABEL_58;
    }

    v225 = v118 - v49;
    if (v118 - v49 < 0)
    {
      goto LABEL_101;
    }

    if (v49)
    {
      v218 = v115;
      v219 = v56;

      v123 = v80;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_51;
      }

      goto LABEL_103;
    }

LABEL_102:
    __break(1u);
LABEL_103:
    v123 = sub_100034724(0, v49 + 1, 1, v80);
LABEL_51:
    v48 = 0;
    v45 = (*(v230 + 80) + 32) & ~*(v230 + 80);
    v228 = v80;
    v47 = &v80[v45];
    v56 = (v230 + 16);
    v44 = (v230 + 32);
    while (1)
    {
      v124 = v48 % v49;
      if (v48 % v49 < 0)
      {
        break;
      }

      if (v124 >= *(v228 + 16))
      {
        goto LABEL_96;
      }

      v52 = *(v230 + 72);
      (*(v230 + 16))(v233, &v47[v52 * v124], v234);
      v126 = *(v123 + 2);
      v125 = *(v123 + 3);
      if (v126 >= v125 >> 1)
      {
        v123 = sub_100034724((v125 > 1), v126 + 1, 1, v123);
      }

      ++v48;
      *(v123 + 2) = v126 + 1;
      (*v44)(&v123[v45 + v126 * v52], v233, v234);
      if (v225 == v48)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    swift_once();
  }

  if (EditorialSearchResult.editorialVideo.getter())
  {
    (*(v205 + 104))(v207, enum case for VideoFillMode.scaleAspectFill(_:), v206);
    Video.preview.getter();
    Artwork.size.getter();
    v84 = v208;
    AspectRatio.init(_:_:)();

    (*(v58 + 56))(v84, 0, 1, v66);
    Video.playbackControls.getter();
    Video.autoPlayPlaybackControls.getter();
    Video.canPlayFullScreen.getter();
    Video.allowsAutoPlay.getter();
    Video.looping.getter();
    VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
    type metadata accessor for VideoViewManager();
    BaseObjectGraph.inject<A>(_:)();
    v85 = v236[0];
    Video.playbackId.getter();
    v86 = v211;
    Video.videoUrl.getter();
    v87 = type metadata accessor for URL();
    (*(*(v87 - 8) + 56))(v86, 0, 1, v87);
    v88 = v212;
    Video.templateMediaEvent.getter();
    v89 = v213;
    Video.templateClickEvent.getter();
    type metadata accessor for VideoView(0);
    sub_1003E38A8(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
    v234 = v85;
    v90 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
    sub_10002B894(v89, &unk_100973A50, &unk_1007B4FD0);
    sub_10002B894(v88, &unk_100973A50, &unk_1007B4FD0);
    sub_10002B894(v86, &qword_100982460, &unk_1007B5C90);
    sub_10002B894(v236, &qword_10096FB90, &qword_1007B2A50);
    sub_1007845C4();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v92 = Strong;
      v93 = [v56 contentView];
      [v93 addSubview:v92];
    }

    [v56 setNeedsLayout];

    v94 = swift_unknownObjectWeakLoadStrong();
    v79 = v226;
    v78 = v227;
    if (v94)
    {
      v95 = v94;
      Video.preview.getter();
      Artwork.config(_:mode:prefersLayeredImage:)();

      sub_1003E38A8(&unk_1009840E0, type metadata accessor for VideoView, &unk_1007DDE78);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

      (*(v214 + 8))(v219, v215);
    }

    else
    {
      (*(v214 + 8))(v219, v215);
    }
  }

  else if (EditorialSearchResult.editorialArtwork.getter())
  {
    type metadata accessor for ArtworkView();
    v100 = static ArtworkView.cardArtworkView.getter();
    [v100 setContentMode:2];
    Artwork.config(using:)();
    sub_1003E38A8(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    v101 = OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_editorialArtworkView;
    v102 = *&v56[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_editorialArtworkView];
    v103 = v100;
    if (v102)
    {
      [v102 removeFromSuperview];
      v104 = v56;
      v105 = *&v56[v101];
    }

    else
    {
      v104 = v56;
      v105 = 0;
    }

    *&v104[v101] = v100;
    v112 = v100;

    v113 = [v104 contentView];
    [v113 addSubview:v112];

    [v104 setNeedsLayout];

    v56 = v104;
  }

  else if (EditorialSearchResult.iconArtwork.getter())
  {
    v106 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    Artwork.size.getter();
    v107 = v194;
    AspectRatio.init(_:_:)();
    AspectRatio.maxSize(fitting:)();
    (*(v58 + 8))(v107, v66);
    v108 = v195;
    Artwork.crop.getter();
    Artwork.Crop.preferredContentMode.getter();
    (*(v196 + 8))(v108, v197);
    Artwork.config(_:mode:prefersLayeredImage:)();
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v106 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();
    sub_1003E38A8(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    v109 = OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_iconArtworkView;
    v110 = *&v56[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_iconArtworkView];
    v111 = v106;
    if (v110)
    {
      [v110 removeFromSuperview];
      v110 = *&v56[v109];
    }

    *&v56[v109] = v106;
    v193 = v106;

    sub_100782424();
  }

LABEL_63:
  EditorialSearchResult.type.getter();
  (*(v78 + 104))(v229, v222, v231);
  sub_1003E38A8(&qword_100983EE8, &type metadata accessor for EditorialSearchResultType, &protocol conformance descriptor for EditorialSearchResultType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v141 = &selRef__setDefaultAttributes_;
  if (v236[0] == v235[0] && v236[1] == v235[1])
  {
    v142 = *(v78 + 8);
    v143 = v231;
    v142(v229, v231);
    v142(v79, v143);

LABEL_67:
    v147 = EditorialSearchResult.appEventFormattedDates.getter();
    if (v147 >> 62)
    {
      v148 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v148 = *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v148)
    {
      v149 = OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView;
      v150 = *&v56[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView];
      if (v150)
      {
        goto LABEL_71;
      }

      v165 = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v166 = *&v56[v149];
      if (v166)
      {
        [v166 removeFromSuperview];
        v167 = *&v56[v149];
      }

      else
      {
        v167 = 0;
      }

      *&v56[v149] = v165;
      v180 = v165;

      if (v180)
      {
        v181 = v180[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style];
        v180[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style] = 6;
        sub_1002C3F30(v181);
        v182 = [v56 contentView];
        [v182 addSubview:v180];
      }

      [v56 setNeedsLayout];

      v183 = *&v56[v149];
      if (v183)
      {
        type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
        v184 = v183;
        BaseObjectGraph.optional<A>(_:)();
        v185 = v236[0];
        v186 = v56;
        v187 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
        v188 = *&v184[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
        v189 = v188;
        sub_1002C55E4(v185);
        v190 = *&v184[v187];
        *&v184[v187] = v185;
        v56 = v186;
        v141 = &selRef__setDefaultAttributes_;
        v191 = v185;

        sub_1002C5748(v188);
        v192 = *&v56[v149];
        if (v192)
        {
          *(v192 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_delegate + 8) = &off_1008D1D30;
          swift_unknownObjectWeakAssign();
          v150 = *&v56[v149];
          if (v150)
          {
LABEL_71:
            v151 = v150;
            v152 = [v56 contentView];
            [v152 bringSubviewToFront:v151];

            v153 = EditorialSearchResult.appEventFormattedDates.getter();
            type metadata accessor for AppEventFormattedDatePresenter(0);
            swift_allocObject();
            v154 = v151;
            v155 = sub_1006E6CE8(v153, v150, &off_1008BC738);

            v156 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
            swift_beginAccess();
            *&v154[v156] = v155;
          }
        }
      }
    }

    v157 = OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView;
    v158 = *&v56[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView];
    if (v158)
    {
      v159 = v158;
      v160 = EditorialSearchResult.tintColor.getter();
      v161 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_backgroundView;
      swift_beginAccess();
      v162 = *&v159[v161];
      if (v162)
      {
        v163 = v141[469];
        v164 = v162;
        [v164 v163];
      }

      else
      {

        v159 = v160;
      }

      v168 = *&v56[v157];
      if (v168)
      {
        v169 = v168;
        v170 = v199;
        EditorialSearchResult.mediaOverlayStyle.getter();
        v171 = MediaOverlayStyle.userInterfaceStyle.getter();
        (*(v200 + 8))(v170, v201);
        [v169 setOverrideUserInterfaceStyle:v171];
      }
    }

    v172 = OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_editorialArtworkView;
    v173 = *&v56[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_editorialArtworkView];
    if (v173)
    {
      v174 = v173;
      dispatch thunk of RoundedCornerView.borderWidth.setter();

      v175 = *&v56[v172];
      if (v175)
      {
        v176 = v175;
        if (!EditorialSearchResult.tintColor.getter())
        {
          v177 = [objc_opt_self() clearColor];
        }

        dispatch thunk of RoundedCornerView.borderColor.setter();
      }
    }
  }

  else
  {
    v144 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v145 = *(v78 + 8);
    v146 = v231;
    v145(v229, v231);
    v145(v79, v146);

    if (v144)
    {
      goto LABEL_67;
    }
  }

  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v178 = static UIColor.defaultBackground.getter();
  [v56 v141[469]];

  return [v56 setNeedsLayout];
}

double sub_1003E2F10(double a1, double a2, double a3, double a4, double a5, double a6, uint64_t a7, void *a8)
{
  v10 = type metadata accessor for FloatingPointRoundingRule();
  v47 = *(v10 - 8);
  v48 = v10;
  __chkstk_darwin(v10);
  v46 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StaticDimension();
  v45 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FontUseCase();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v51 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44[3] = dispatch thunk of EditorialSearchResult.typeDisplayText.getter();
  v19 = v18;
  v44[1] = EditorialSearchResult.title.getter();
  v21 = v20;
  v44[2] = EditorialSearchResult.subtitle.getter();
  v52 = v22;
  v49 = a1;
  CGSize.subtracting(insets:)();
  if (qword_10096F018 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v15, qword_1009D4388);
  if (qword_10096F030 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v12, qword_1009D43D0);
  v50 = v21;
  if (v21)
  {
    v23 = v19;
    v24 = a8;
    v25 = type metadata accessor for Feature();
    v54 = v25;
    v55 = sub_1003E38A8(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v26 = sub_1000056E0(v53);
    (*(*(v25 - 8) + 104))(v26, enum case for Feature.measurement_with_labelplaceholder(_:), v25);
    isFeatureEnabled(_:)();
    sub_100007000(v53);
    a8 = v24;
    v19 = v23;
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
    AnyDimension.topMargin(from:in:)();
  }

  v27 = v52;
  v28 = v14;
  if (qword_10096F020 != -1)
  {
    swift_once();
  }

  v29 = sub_1000056A8(v15, qword_1009D43A0);
  (*(v16 + 16))(v51, v29, v15);
  v30 = v45;
  if (qword_10096F038 != -1)
  {
    swift_once();
  }

  v31 = sub_1000056A8(v12, qword_1009D43E8);
  (*(v30 + 16))(v28, v31, v12);
  if (v27)
  {
    v32 = type metadata accessor for Feature();
    v54 = v32;
    v55 = sub_1003E38A8(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v33 = sub_1000056E0(v53);
    (*(*(v32 - 8) + 104))(v33, enum case for Feature.measurement_with_labelplaceholder(_:), v32);
    isFeatureEnabled(_:)();
    sub_100007000(v53);
    v34 = v51;
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
    AnyDimension.topMargin(from:in:)();
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
  if (qword_10096F010 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v15, qword_1009D4370);
  if (qword_10096F028 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v12, qword_1009D43B8);
  if (v19)
  {
    v37 = type metadata accessor for Feature();
    v54 = v37;
    v55 = sub_1003E38A8(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v38 = sub_1000056E0(v53);
    (*(*(v37 - 8) + 104))(v38, enum case for Feature.measurement_with_labelplaceholder(_:), v37);
    isFeatureEnabled(_:)();
    sub_100007000(v53);
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
    AnyDimension.topMargin(from:in:)();
  }

  v39 = [a8 traitCollection];
  static Dimensions.defaultRoundingRule.getter();
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  v40 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  StaticDimension.value(compatibleWith:rounded:)();
  UIFont.estimatedFirstBaseline.getter();

  v41 = *(v47 + 8);
  v41(v36, v35);
  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v12, qword_1009D2430);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v41(v36, v35);
  if (qword_10096EFF8 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for AspectRatio();
  sub_1000056A8(v42, qword_1009D4348);
  AspectRatio.width(fromHeight:)();
  AspectRatio.height(fromWidth:)();

  return v49;
}

uint64_t sub_1003E38A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003E3900(uint64_t a1, uint64_t a2, objc_class *a3, char a4)
{
  v42 = a1;
  v43 = type metadata accessor for FontSource();
  v7 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10002849C(&qword_100975048, "b,\b");
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41.super.isa = a3;
  if (a4)
  {
    static UIButton.Configuration.gray()();
  }

  else
  {
    static UIButton.Configuration.plain()();
    v17 = [(objc_class *)a3 userInterfaceStyle];
    v18 = objc_opt_self();
    v19 = &selRef_systemGray3Color;
    if (v17 != 2)
    {
      v19 = &selRef_systemGray5Color;
    }

    v20 = [v18 *v19];
    v21 = UIButton.Configuration.background.modify();
    v39 = v13;
    v22 = v7;
    v23 = a3;
    v24 = v21;
    UIBackgroundConfiguration.strokeColor.setter();
    v24(v44, 0);
    v25 = v23;
    v7 = v22;
    v13 = v39;
    [(objc_class *)v25 displayScale];
    v26 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.strokeWidth.setter();
    v26(v44, 0);
  }

  (*(v14 + 104))(v16, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v13);
  UIButton.Configuration.cornerStyle.setter();
  UIButton.Configuration.titleLineBreakMode.setter();
  if (a2)
  {
    sub_10002849C(&unk_100973960, &unk_1007B4930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007B10D0;
    *(inited + 32) = NSFontAttributeName;
    v28 = qword_10096E1A0;

    v29 = NSFontAttributeName;
    if (v28 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for FontUseCase();
    v31 = sub_1000056A8(v30, qword_1009D1460);
    v32 = v40;
    (*(*(v30 - 8) + 16))(v40, v31, v30);
    v33 = v43;
    (*(v7 + 104))(v32, enum case for FontSource.useCase(_:), v43);
    isa = FontSource.font(compatibleWith:)(v41).super.isa;
    (*(v7 + 8))(v32, v33);
    *(inited + 64) = sub_100005744(0, &qword_1009730E0, UIFont_ptr);
    *(inited + 40) = isa;
    sub_100397150(inited);
    swift_setDeallocating();
    sub_10002B894(inited + 32, &unk_100970EC0, &unk_1007B2BF0);
    AttributeContainer.init(_:)();
    AttributedString.init(_:attributes:)();
    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  v36 = type metadata accessor for AttributedString();
  (*(*(v36 - 8) + 56))(v12, v35, 1, v36);
  return UIButton.Configuration.attributedTitle.setter();
}

NSString sub_1003E3E1C()
{
  result = String._bridgeToObjectiveC()();
  qword_100983EF0 = result;
  return result;
}

double sub_1003E3E5C()
{
  v0 = sub_10002849C(&qword_100975C10, &qword_1007CB840);
  __chkstk_darwin(v0);
  v1 = sub_10002849C(&qword_100975C20, "Xd\b");
  sub_100005644(v1, qword_100983EF8);
  sub_1000056A8(v1, qword_100983EF8);
  sub_100005744(0, &qword_1009811E0, UIButton_ptr);
  ViewRecycler.init()();
  sub_100097060(&qword_100975C18, &qword_100975C10, &qword_1007CB840, &protocol conformance descriptor for ViewRecycler<A>);
  ReusePool.init(recycler:limit:)();
  return result;
}

uint64_t sub_1003E3F80()
{
  v0 = type metadata accessor for OSLogger();
  sub_100005644(v0, qword_100983F10);
  v1 = sub_1000056A8(v0, qword_100983F10);
  if (qword_10096D128 != -1)
  {
    swift_once();
  }

  v2 = sub_1000056A8(v0, qword_1009CE230);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_1003E4048(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = GuidedSearchToken.clickAction.getter();
    sub_1005D0214(v5, 1, v4);
  }

  return result;
}

void sub_1003E40D0(__n128 a1, uint64_t a2, char a3, uint64_t a4, objc_class *a5)
{
  v7 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v7);
  v8 = sub_10002849C(&qword_10097CC90, &unk_1007BB2A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = GuidedSearchToken.displayName.getter();
  sub_1003E3900(v11, v12, a5, a3 & 1);

  v13 = type metadata accessor for UIButton.Configuration();
  (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  UIButton.configuration.setter();
  v14 = [(objc_class *)a5 preferredContentSizeCategory];
  v15 = sub_100459B00(v14);
  v16 = v15;

  if (v15)
  {
    v17 = v16;
    UIView.traitOverrides.getter();
    UIMutableTraits.preferredContentSizeCategory.setter();
    UIView.traitOverrides.setter();
  }

  else
  {
    type metadata accessor for UITraitPreferredContentSizeCategory();
    UIView.traitOverrides.getter();
    UITraitOverrides.remove(_:)();
    UIView.traitOverrides.setter();
  }
}

char *sub_1003E42C8(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v9 = OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_topSeparator;
  v10 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = objc_opt_self();
  v12 = [v11 separatorColor];
  [v10 setBackgroundColor:v12];

  *&v4[v9] = v10;
  v13 = OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_title;
  *&v4[v13] = [objc_allocWithZone(UILabel) init];
  *&v4[OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_pills] = _swiftEmptyArrayStorage;
  v14 = OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_bottomSeparator;
  v15 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = [v11 separatorColor];
  [v15 setBackgroundColor:v16];

  *&v4[v14] = v15;
  *&v4[OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_guidedSearchResult] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_impressionsCalculator] = 0;
  v17 = &v4[OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_impressionsUpdateBlock];
  v18 = type metadata accessor for GuidedSearchResultContentView();
  *v17 = 0;
  *(v17 + 1) = 0;
  v29.receiver = v4;
  v29.super_class = v18;
  v19 = objc_msgSendSuper2(&v29, "initWithFrame:", a1, a2, a3, a4);
  v20 = *&v19[OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_topSeparator];
  v21 = v19;
  [v21 addSubview:v20];
  v22 = OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_title;
  [v21 addSubview:*&v21[OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_title]];
  [v21 addSubview:*&v21[OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_bottomSeparator]];
  v23 = *&v21[v22];
  v24 = objc_opt_self();
  v25 = v23;
  result = [v24 _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:1024];
  if (result)
  {
    v27 = result;
    [v25 setFont:result];

    [*&v21[v22] setNumberOfLines:0];
    sub_10002849C(&qword_10097B110, &unk_1007B27C0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1007B1890;
    *(v28 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
    *(v28 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
    *(v28 + 48) = type metadata accessor for UITraitLegibilityWeight();
    *(v28 + 56) = &protocol witness table for UITraitLegibilityWeight;
    UIView.registerForTraitChanges<A>(_:handler:)();

    swift_unknownObjectRelease();

    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1003E4644()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v20 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_pills;
  swift_beginAccess();
  *(v9 + 16) = *&v1[v10];
  v11 = objc_opt_self();

  if ([v11 isMainThread])
  {
    swift_beginAccess();
    sub_1003E7B28((v9 + 16), 0x74696E696564, 0xE600000000000000);
    swift_endAccess();
  }

  else
  {
    sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
    v19 = static OS_dispatch_queue.main.getter();
    aBlock[4] = sub_1003E823C;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008C15E8;
    v18 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1003E8244(&qword_100976F50, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v17 = v6;
    sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
    sub_100097060(&qword_100976F60, &unk_1009729F0, &unk_1007B3D80, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v13 = v18;
    v12 = v19;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);

    (*(v3 + 8))(v5, v2);
    (*(v20 + 8))(v8, v17);
  }

  v14 = type metadata accessor for GuidedSearchResultContentView();
  v21.receiver = v1;
  v21.super_class = v14;
  return objc_msgSendSuper2(&v21, "dealloc");
}

uint64_t sub_1003E4A0C(uint64_t a1)
{
  swift_beginAccess();
  sub_1003E7B28((a1 + 16), 0x74696E696564, 0xE600000000000000);
  return swift_endAccess();
}

void sub_1003E4B30(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v56 = type metadata accessor for DispatchPredicate();
  v3 = *(v56 - 8);
  __chkstk_darwin(v56);
  v5 = (v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for GuidedSearchResult();
  sub_1003E8244(&qword_100983FB8, 255, &type metadata accessor for GuidedSearchResult, &protocol conformance descriptor for SearchResult);
  ItemLayoutContext.typedModel<A>(as:)();
  v6 = aBlock[0];
  if (aBlock[0])
  {
    v46 = v3;
    *&v2[OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_guidedSearchResult] = aBlock[0];

    v7 = *&v2[OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_title];
    GuidedSearchResult.title.getter();
    v57 = v2;
    if (v8)
    {
      v9 = String._bridgeToObjectiveC()();
    }

    else
    {
      v9 = 0;
    }

    [v7 setText:v9];

    v10 = GuidedSearchResult.tokens.getter();
    v44 = byte_1009932C8;
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v54 = v65;
    v11 = OBJC_IVAR____TtC8AppStore29GuidedSearchResultContentView_pills;
    v12 = v57;
    swift_beginAccess();
    v42 = v11;
    sub_1003E7B28(&v12[v11], 0xD000000000000017, 0x8000000100811750);
    if (qword_10096DB98 != -1)
    {
      goto LABEL_32;
    }

    while (1)
    {
      v13 = type metadata accessor for OSLogger();
      sub_1000056A8(v13, qword_100983F10);
      sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B5360;
      v60 = sub_10002849C(&qword_100983FB0, &qword_1007CB838);
      aBlock[0] = &type metadata for GuidedSearchTokenPill;
      static LogMessage.safe(_:)();
      sub_10002B894(aBlock, &unk_1009711D0, &unk_1007B1A10);
      LogMessage.init(stringLiteral:)();
      if (v10 >> 62)
      {
        v14 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v60 = &type metadata for Int;
      aBlock[0] = v14;
      static LogMessage.safe(_:)();
      sub_10002B894(aBlock, &unk_1009711D0, &unk_1007B1A10);
      LogMessage.init(stringLiteral:)();
      if (qword_10096DB90 != -1)
      {
        swift_once();
      }

      v15 = sub_10002849C(&qword_100975C20, "Xd\b");
      v16 = sub_1000056A8(v15, qword_100983EF8);
      swift_beginAccess();
      v60 = v15;
      v17 = sub_1000056E0(aBlock);
      v18 = *(*(v15 - 8) + 16);
      v51 = v16;
      v52 = v15;
      v18(v17, v16, v15);
      static LogMessage.safe(_:)();
      sub_10002B894(aBlock, &unk_1009711D0, &unk_1007B1A10);
      Logger.info(_:)();

      if (!v14)
      {
        break;
      }

      v19 = v14;
      v64 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v14 < 0)
      {
        __break(1u);
        return;
      }

      v41[1] = v6;
      v50 = sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
      v45 = sub_100005744(0, &qword_10097CD40, UIAction_ptr);
      v20 = 0;
      v53 = v10;
      v49 = v10 & 0xC000000000000001;
      v48 = enum case for DispatchPredicate.onQueue(_:);
      v47 = (v46 + 13);
      ++v46;
      v44 &= 1u;
      v43 = &v59;
      while (1)
      {
        if (v49)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v21 = *(v53 + 8 * v20 + 32);
        }

        *v5 = static OS_dispatch_queue.main.getter();
        v22 = v56;
        (*v47)(v5, v48, v56);
        v23 = _dispatchPreconditionTest(_:)();
        (*v46)(v5, v22);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v10 = v19;
        if (qword_10096DB88 != -1)
        {
          swift_once();
        }

        v24 = qword_100983EF0;
        v25 = swift_allocObject();
        swift_weakInit();
        v26 = swift_allocObject();
        *(v26 + 16) = v25;
        *(v26 + 24) = v21;
        v27 = v24;

        v6 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        swift_beginAccess();
        ReusePool.dequeue()();
        swift_endAccess();
        v28 = v63;
        if (v63)
        {
          [v63 removeActionForIdentifier:v27 forControlEvents:0x2000];
          [v28 addAction:v6 forControlEvents:0x2000];
          v29 = v28;
        }

        else
        {
          sub_100005744(0, &qword_1009811E0, UIButton_ptr);
          v30 = v6;
          v66.value.super.super.isa = v6;
          v29 = UIButton.init(type:primaryAction:)(UIButtonTypeSystem, v66).super.super.super.super.isa;
          v28 = 0;
        }

        v31 = swift_allocObject();
        *(v31 + 16) = v44;
        v32 = v54;
        *(v31 + 24) = v21;
        *(v31 + 32) = v32;
        v61 = sub_1003E808C;
        v62 = v31;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v59 = sub_100080D48;
        v60 = &unk_1008C1598;
        v33 = _Block_copy(aBlock);

        v34 = v32;
        v35 = v28;

        [(objc_class *)v29 setConfigurationUpdateHandler:v33];

        _Block_release(v33);
        v36 = [(objc_class *)v29 superview];
        v37 = v57;
        if (!v36 || (v6 = v36, sub_100005744(0, &qword_100972EB0, UIView_ptr), v38 = v37, v39 = static NSObject.== infix(_:_:)(), v6, v38, (v39 & 1) == 0))
        {
          [v37 addSubview:v29];
        }

        ++v20;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v19 = v10;
        if (v10 == v20)
        {

          v40 = v64;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_32:
      swift_once();
    }

    v40 = _swiftEmptyArrayStorage;
    v37 = v57;
LABEL_29:
    *&v37[v42] = v40;
    swift_endAccess();

    [v37 setNeedsLayout];
  }
}