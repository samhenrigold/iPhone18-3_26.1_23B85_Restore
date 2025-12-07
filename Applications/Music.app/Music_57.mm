void sub_10065D76C()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_isSquareMotionSizeTransitioning) = 0;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  v2 = OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionContainerView;
  v3 = *(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionContainerView);
  if (v3)
  {
    [v3 setAlpha:1.0];
  }

  sub_10065D1CC();
  v4 = sub_100025CE0();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v4) & 1) != 0 && (v5 = [objc_opt_self() currentDevice], v6 = objc_msgSend(v5, "userInterfaceIdiom"), v5, v6 == 1))
  {
    [*(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView) setHidden:0];
    v7 = *(v1 + v2);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_100660A4C(v1);
    v7 = *(v1 + v2);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  v8 = [v7 superview];
  if (v8)
  {

    return;
  }

LABEL_10:
  sub_10065D24C();
}

void sub_10065D8E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionKeyframeView);
  if (v1)
  {
    v10 = v1;
    v2 = [v10 superview];
    if (v2)
    {

      v3 = objc_opt_self();
      v4 = swift_allocObject();
      *(v4 + 16) = v10;
      v15 = sub_1001D3178;
      v16 = v4;
      aBlock = _NSConcreteStackBlock;
      v12 = 1107296256;
      v13 = sub_10002BC98;
      v14 = &unk_1010B9340;
      v5 = _Block_copy(&aBlock);
      v6 = v10;

      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      v15 = sub_100663954;
      v16 = v7;
      aBlock = _NSConcreteStackBlock;
      v12 = 1107296256;
      v13 = sub_1005C3688;
      v14 = &unk_1010B9390;
      v8 = _Block_copy(&aBlock);
      v9 = v6;

      [v3 animateWithDuration:v5 animations:v8 completion:0.2];
      _Block_release(v8);
      _Block_release(v5);
    }

    else
    {
    }
  }
}

void sub_10065DAE0(void *a1, char a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UIView.Corner.Radius();
  v64 = *(v8 - 8);
  v65 = v8;
  __chkstk_darwin();
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101183A90, &unk_100EBE340);
  __chkstk_darwin();
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v63 - v13;
  v15 = *&v3[OBJC_IVAR____TtC5Music21NowPlayingContentView_morphingMotionSnapshot];
  v66 = OBJC_IVAR____TtC5Music21NowPlayingContentView_morphingMotionSnapshot;
  *&v3[OBJC_IVAR____TtC5Music21NowPlayingContentView_morphingMotionSnapshot] = a1;
  if (!v15)
  {
    v18 = a1;
    goto LABEL_5;
  }

  sub_100009F78(0, &qword_101181620, UIView_ptr);
  v16 = a1;
  v15 = v15;
  v17 = static NSObject.== infix(_:_:)();

  if ((v17 & 1) == 0)
  {
LABEL_5:
    [v15 removeFromSuperview];
    v16 = a1;
  }

  sub_10065FD20(a2 & 1);
  LOBYTE(aBlock) = 11;
  v19 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v19))
  {
    if ((a3 & 1) != 0 || v4[OBJC_IVAR____TtC5Music21NowPlayingContentView_nowPlayingShouldShowMotionBackground] != 1)
    {
      goto LABEL_15;
    }
  }

  else if (a3)
  {
    goto LABEL_15;
  }

  if ((a2 & 1) == 0)
  {
    v20 = [v4 layer];
    [v20 setZPosition:-1.0];
  }

  v21 = *&v4[v66];
  if (v21)
  {
    v22 = [v21 layer];
    [v22 setZPosition:-1.0];
  }

LABEL_15:
  v23 = [v4 window];
  if (v23)
  {
    v24 = v23;
    [v23 bounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    LOBYTE(aBlock) = 11;
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v19) & 1) == 0 || v4[OBJC_IVAR____TtC5Music21NowPlayingContentView_nowPlayingShouldShowMotionBackground] == 1)
    {
      [v4 setFrame:{v26, v28, v30, v32}];
    }
  }

  LOBYTE(aBlock) = 11;
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v19) & 1) == 0 || v4[OBJC_IVAR____TtC5Music21NowPlayingContentView_nowPlayingShouldShowMotionBackground] == 1)
  {
    [*&v4[OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView] setAlpha:0.0];
  }

  if ((a2 & 1) == 0)
  {
    LOBYTE(aBlock) = 11;
    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v19))
    {
      if (v4[OBJC_IVAR____TtC5Music21NowPlayingContentView_nowPlayingShouldShowMotionBackground] != 1)
      {
        goto LABEL_34;
      }

      v33 = [v4 traitCollection];
      [v33 displayCornerRadius];
      v35 = v34;

      sub_10004CF20(*&v4[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode], [v4 traitCollection], v14);
      v36 = type metadata accessor for UIView.Corner();
      v37 = *(v36 - 8);
      if ((*(v37 + 48))(v14, 1, v36) == 1)
      {
        sub_1000095E8(v14, &qword_101183A90, &unk_100EBE340);
        v38 = 0;
      }

      else
      {
        UIView.Corner.radius.getter();
        (*(v37 + 8))(v14, v36);
        [v4 bounds];
        UIView.Corner.Radius.value(in:)();
        v38 = v49;
        (*(v64 + 8))(v10, v65);
      }

      [*&v4[OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView] setClipsToBounds:1];
      v46 = objc_opt_self();
      v50 = swift_allocObject();
      *(v50 + 16) = v4;
      *(v50 + 24) = 0;
      *(v50 + 32) = v35;
      *(v50 + 40) = v38;
      v71 = sub_1005EBE9C;
      v72 = v50;
      aBlock = _NSConcreteStackBlock;
      v68 = 1107296256;
      v48 = &unk_1010B9200;
    }

    else
    {
      v39 = [v4 traitCollection];
      [v39 displayCornerRadius];
      v41 = v40;

      sub_10004CF20(*&v4[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode], [v4 traitCollection], v12);
      v42 = type metadata accessor for UIView.Corner();
      v43 = *(v42 - 8);
      if ((*(v43 + 48))(v12, 1, v42) == 1)
      {
        sub_1000095E8(v12, &qword_101183A90, &unk_100EBE340);
        v44 = 0;
      }

      else
      {
        UIView.Corner.radius.getter();
        (*(v43 + 8))(v12, v42);
        [v4 bounds];
        UIView.Corner.Radius.value(in:)();
        v44 = v45;
        (*(v64 + 8))(v10, v65);
      }

      [*&v4[OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView] setClipsToBounds:1];
      v46 = objc_opt_self();
      v47 = swift_allocObject();
      *(v47 + 16) = v4;
      *(v47 + 24) = 0;
      *(v47 + 32) = v41;
      *(v47 + 40) = v44;
      v71 = sub_1005EB1E8;
      v72 = v47;
      aBlock = _NSConcreteStackBlock;
      v68 = 1107296256;
      v48 = &unk_1010B9110;
    }

    v69 = sub_10002BC98;
    v70 = v48;
    v51 = _Block_copy(&aBlock);
    v52 = v4;

    [v46 animateWithDuration:4 delay:v51 options:0 animations:0.35 completion:0.0];
    _Block_release(v51);
LABEL_34:
    v53 = *&v4[v66];
    if (v53)
    {
      v54 = objc_opt_self();
      v55 = swift_allocObject();
      *(v55 + 16) = v4;
      *(v55 + 24) = v53;
      v71 = sub_1005EB3BC;
      v72 = v55;
      aBlock = _NSConcreteStackBlock;
      v68 = 1107296256;
      v69 = sub_10002BC98;
      v70 = &unk_1010B9160;
      v56 = _Block_copy(&aBlock);
      v57 = v53;
      v58 = v4;
      v59 = v57;

      v60 = swift_allocObject();
      *(v60 + 16) = v59;
      v71 = sub_1005EB3C4;
      v72 = v60;
      aBlock = _NSConcreteStackBlock;
      v68 = 1107296256;
      v69 = sub_1005C3688;
      v70 = &unk_1010B91B0;
      v61 = _Block_copy(&aBlock);
      v62 = v59;

      [v54 animateWithDuration:0 delay:v56 options:v61 animations:0.2 completion:0.1];

      _Block_release(v61);
      _Block_release(v56);
    }
  }
}

id sub_10065E3FC(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = (*(*a1 + 216))();
    v4 = [v3 playerViewController];

    v5 = [v4 view];
    if (v5)
    {
      if ([v5 isDescendantOfView:v2])
      {
        [v5 removeFromSuperview];
      }
    }
  }

  v6 = *&v2[OBJC_IVAR____TtC5Music21NowPlayingContentView_videoContext];
  if (v6)
  {
    v7 = *(*v6 + 216);

    v9 = v7(v8);

    v10 = [v9 playerViewController];

    v11 = [v10 view];
    if (v11)
    {
      if (([v11 isDescendantOfView:v2] & 1) == 0)
      {
        [v2 addSubview:v11];
      }
    }
  }

  sub_10004C8F4();

  return [v2 setNeedsLayout];
}

uint64_t sub_10065E5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v4[8] = v5;
  *v5 = v4;
  v5[1] = sub_10065E650;

  return static Task<>.sleep(for:)(3.0);
}

uint64_t sub_10065E650()
{

  if (v0)
  {

    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v2;
    v4 = sub_100663958;
  }

  else
  {
    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v5;
    v4 = sub_10065E7D4;
  }

  return _swift_task_switch(v4, v1, v3);
}

uint64_t sub_10065E7D4()
{

  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      *(Strong + OBJC_IVAR____TtC5Music21NowPlayingContentView_pauseArtworkUpdates) = 0;
      sub_10004C8F4();
      [v2 setNeedsLayout];
    }
  }

  v3 = *(v0 + 8);

  return v3();
}

void sub_10065E888()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionContainerView);
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;

    static Published.subscript.getter(&v11);

    v3 = v11;
    [v2 bounds];
    if (v3 != 1)
    {
      v8 = v6 * 0.135;
      CGSize.scaled(_:)();
      v6 = v9;
      v4 = v8;
      v7 = v10;
      v5 = v8;
    }

    sub_10065F994([v2 resizableSnapshotViewFromRect:0 afterScreenUpdates:v4 withCapInsets:{v5, v6, v7, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}], &OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionSnapshot);
  }
}

void sub_10065E9C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionSnapshot);
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    isa = [v3 superview];
    if (!isa)
    {
      v4 = OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView;
      v5 = *(v2 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView);
      v6 = UIView.forAutolayout.getter();
      [v5 addSubview:v6];

      v7 = objc_opt_self();
      sub_10010FC20(&qword_101183990, &qword_100EBC750);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_100EBDC10;
      v9 = [v3 topAnchor];
      v10 = [*(v2 + v4) topAnchor];
      v11 = [v9 constraintEqualToAnchor:v10];

      *(v8 + 32) = v11;
      v12 = [v3 bottomAnchor];
      v13 = [*(v2 + v4) bottomAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];

      *(v8 + 40) = v14;
      v15 = [v3 leftAnchor];
      v16 = [*(v2 + v4) leftAnchor];
      v17 = [v15 constraintEqualToAnchor:v16];

      *(v8 + 48) = v17;
      v18 = [v3 rightAnchor];
      v19 = [*(v2 + v4) rightAnchor];
      v20 = [v18 constraintEqualToAnchor:v19];

      *(v8 + 56) = v20;
      sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v7 activateConstraints:isa];
    }
  }
}

id sub_10065ECB4(int a1, char a2, id a3)
{
  if (a2)
  {
    return [a3 removeFromSuperview];
  }

  return result;
}

double sub_10065ECCC(double result)
{
  if (*(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter(&v18);

    v2 = v19;
    if (v19 == 255)
    {
LABEL_15:

      return v17;
    }

    v3 = v18;
    if (v19)
    {
LABEL_14:
      sub_10004ADFC(v3, v2);
      goto LABEL_15;
    }

    v4 = OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionKeyframeView;
    v5 = *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionKeyframeView);
    *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionKeyframeView) = 0;
    v6 = &selRef_objectAtIndexedSubscript_;
    if (v5)
    {
      [v5 removeFromSuperview];
    }

    v7 = [objc_allocWithZone(UIImageView) initWithImage:v3];
    v8 = v7;
    v9 = *(v1 + v4);
    *(v1 + v4) = v7;
    if (v9)
    {
      sub_100009F78(0, &qword_101181620, UIView_ptr);
      v10 = v8;
      v9 = v9;
      v6 = &selRef_objectAtIndexedSubscript_;
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v12 = v7;
    }

    [v9 v6[101]];
    v10 = v8;
LABEL_11:

    v13 = *(v1 + v4);
    if (v13)
    {
      [v13 setClipsToBounds:1];
      v14 = *(v1 + v4);
      if (v14)
      {
        v15 = *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView);
        v16 = v14;
        [v15 bounds];
        [v16 setFrame:?];
        sub_10004ADFC(v3, v2);

        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

  return v17;
}

void sub_10065EEBC()
{
  v1 = v0;
  sub_10010FC20(&qword_101183A90, &unk_100EBE340);
  __chkstk_darwin();
  v3 = &v34[-v2];
  v4 = *(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionKeyframeView);
  if (v4)
  {
    v5 = v4;
    [v5 setAlpha:0.0];
    v6 = OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView;
    v7 = *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView) + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
    swift_beginAccess();
    v8 = type metadata accessor for Artwork(0);
    v9 = *(v8 + 28);
    v10 = type metadata accessor for Artwork.Decoration(0);
    sub_1000089F8(v7 + v9 + *(v10 + 20), v3, &qword_101183A90, &unk_100EBE340);
    UIView.corner.setter();
    v11 = *(v1 + v6) + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
    swift_beginAccess();
    v12 = (v11 + *(v8 + 28));
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v16 = v15;
    UIView.border.setter(v13, v14, v15);
    v17 = *(v1 + v6);
    v18 = UIView.forAutolayout.getter();
    [v17 addSubview:v18];

    v19 = objc_opt_self();
    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100EBDC10;
    v21 = [v5 topAnchor];
    v22 = [*(v1 + v6) topAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];

    *(v20 + 32) = v23;
    v24 = [v5 bottomAnchor];
    v25 = [*(v1 + v6) bottomAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];

    *(v20 + 40) = v26;
    v27 = [v5 leftAnchor];
    v28 = [*(v1 + v6) leftAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];

    *(v20 + 48) = v29;
    v30 = [v5 rightAnchor];
    v31 = [*(v1 + v6) rightAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];

    *(v20 + 56) = v32;
    sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v19 activateConstraints:isa];
  }
}

id sub_10065F260(uint64_t a1)
{
  result = *(a1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionKeyframeView);
  if (result)
  {
    return [result setAlpha:1.0];
  }

  return result;
}

uint64_t sub_10065F284()
{
  sub_10010FC20(&qword_10119C158, &unk_100EDACF8);
  __chkstk_darwin();
  v2 = (&v19 - v1);
  type metadata accessor for URL();
  __chkstk_darwin();
  v3 = sub_10010FC20(&qword_10119C160, &qword_100EDAD98);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v19 - v5;
  if (*(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter(&v20);

    v7 = v21;
    if (v21 != 255)
    {
      v8 = v20;
      if ((v21 & 1) == 0)
      {
        v19 = v0;
        VideoArtwork.url.getter();
        __chkstk_darwin();
        __chkstk_darwin();
        MotionView.init(url:previewFrame:fallback:)();
        type metadata accessor for SquareMotionState(0);
        sub_1000496E4(&qword_10119C100, type metadata accessor for SquareMotionState, &unk_100EDAC70);

        v13 = ObservedObject.init(wrappedValue:)();
        v15 = v14;
        sub_10004ADFC(v8, v7);

        *v2 = v13;
        v2[1] = v15;
        v16 = sub_10010FC20(&qword_10119BDB8, &qword_100EDAB68);
        (*(v4 + 32))(v2 + *(v16 + 36), v6, v3);
        (*(*(v16 - 8) + 56))(v2, 0, 1, v16);
        v17 = OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionContainer;
        v18 = v19;
        swift_beginAccess();
        v11 = v18 + v17;
        goto LABEL_7;
      }

      sub_10004ADFC(v20, v21);
    }
  }

  v9 = sub_10010FC20(&qword_10119BDB8, &qword_100EDAB68);
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  v10 = OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionContainer;
  swift_beginAccess();
  v11 = v0 + v10;
LABEL_7:
  sub_10006B010(v2, v11, &qword_10119C158, &unk_100EDACF8);
  return swift_endAccess();
}

uint64_t sub_10065F6D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1;
  Image.init(uiImage:)();
  (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
  v9 = Image.resizable(capInsets:resizingMode:)();

  result = (*(v5 + 8))(v7, v4);
  *a2 = v9;
  return result;
}

uint64_t sub_10065F7F8()
{
  v1 = v0;
  LOBYTE(v8) = 11;
  v2 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v2))
  {
    v3 = [objc_opt_self() currentDevice];
    v4 = [v3 userInterfaceIdiom];

    if (v4 == 1)
    {
      v5 = *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData);
      if (!v5)
      {
        return v5 & 1;
      }

      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter(&v8);

      v6 = v9;
      if (v9 != 255)
      {
        sub_10004ADFC(v8, v9);
        LOBYTE(v5) = v6 ^ 1;
        return v5 & 1;
      }

      goto LABEL_10;
    }

    if (v4)
    {
      goto LABEL_10;
    }
  }

  v5 = *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData);
  if (v5)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter(&v8);

    LOBYTE(v5) = v9;
    if (v9 != 255)
    {
      sub_10004ADFC(v8, v9);
      return v5 & 1;
    }

LABEL_10:
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

void sub_10065F994(void *a1, void *a2)
{
  v3 = a1;
  v4 = *(v2 + *a2);
  *(v2 + *a2) = a1;
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    v3 = a1;
    goto LABEL_7;
  }

  if (!a1 || (sub_100009F78(0, &qword_101181620, UIView_ptr), v3 = v3, v6 = v4, v5 = static NSObject.== infix(_:_:)(), v6, (v5 & 1) == 0))
  {
LABEL_7:
    [v4 removeFromSuperview];
    v6 = v4;
  }
}

void sub_10065FA6C(uint64_t a1, char a2, double a3, double a4)
{
  v7 = *(a1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView);
  v8 = [v7 layer];
  v9 = v8;
  if (a2)
  {
    v10 = a3;
  }

  else
  {
    v10 = a4;
  }

  if (a2)
  {
    v11 = &kCACornerCurveContinuous;
  }

  else
  {
    v11 = &kCACornerCurveCircular;
  }

  [v8 setCornerRadius:v10];

  v12 = [v7 layer];
  v13 = *v11;
  [v12 setCornerCurve:v13];
}

void sub_10065FB58()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshot);
    if (v2)
    {
      v3 = v2;
      sub_10065F994(v2, &OBJC_IVAR____TtC5Music21NowPlayingContentView_morphingMotionSnapshot);
      [v3 removeFromSuperview];
      if ((*(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_windowSize + 16) & 1) == 0)
      {
        [*(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView) frame];
        [v3 frame];
        [v3 setFrame:?];
      }

      [v3 setAlpha:0.0];
      sub_10065FD20(0);
      v4 = objc_opt_self();
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      v8[4] = sub_1001D2178;
      v8[5] = v5;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 1107296256;
      v8[2] = sub_10002BC98;
      v8[3] = &unk_1010B92F0;
      v6 = _Block_copy(v8);
      v7 = v3;

      [v4 animateWithDuration:v6 animations:0.15];
      _Block_release(v6);
    }
  }
}

void sub_10065FD20(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIView.Corner.Radius();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101183A90, &unk_100EBE340);
  __chkstk_darwin();
  v9 = &v72 - v8;
  v10 = type metadata accessor for UIView.Corner();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_morphingMotionSnapshot);
  if (v14)
  {
    v78 = a1;
    v15 = v14;
    [v15 setContentMode:2];
    BYTE1(v79) = 11;
    v16 = sub_100025CE0();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v16) & 1) == 0)
    {
      v17 = *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView);
      v20 = UIView.forAutolayout.getter();
      [v17 addSubview:v20];

      v19 = (v2 + OBJC_IVAR____TtC5Music21NowPlayingContentView_windowSize);
      if ((*(v2 + OBJC_IVAR____TtC5Music21NowPlayingContentView_windowSize + 16) & 1) == 0)
      {
LABEL_7:
        v21 = v19[1] / *v19;
        v22 = objc_opt_self();
        sub_10010FC20(&qword_101183990, &qword_100EBC750);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_100EBDC10;
        v24 = [v15 topAnchor];
        v25 = [v17 topAnchor];
        v26 = [v24 constraintEqualToAnchor:v25];

        *(v23 + 32) = v26;
        v27 = [v15 leftAnchor];
        v28 = [v17 leftAnchor];
        v29 = [v27 constraintEqualToAnchor:v28];

        *(v23 + 40) = v29;
        v30 = [v15 rightAnchor];
        v31 = [v17 rightAnchor];
        v32 = [v30 constraintEqualToAnchor:v31];

        *(v23 + 48) = v32;
        v33 = [v15 heightAnchor];
        v34 = [v15 widthAnchor];
        v35 = [v33 constraintEqualToAnchor:v34 multiplier:v21];

        *(v23 + 56) = v35;
        sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v22 activateConstraints:isa];
      }

LABEL_11:

      return;
    }

    if (*(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_nowPlayingShouldShowMotionBackground) == 1)
    {
      v17 = *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView);
      v18 = UIView.forAutolayout.getter();
      [v17 addSubview:v18];

      v19 = (v2 + OBJC_IVAR____TtC5Music21NowPlayingContentView_windowSize);
      if ((*(v2 + OBJC_IVAR____TtC5Music21NowPlayingContentView_windowSize + 16) & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }

    v74 = v10;
    v75 = v13;
    v73 = v5;
    v77 = v11;
    v37 = OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView;
    v38 = *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView);
    v39 = UIView.forAutolayout.getter();
    [v38 addSubview:v39];

    v76 = objc_opt_self();
    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_100EBDC10;
    v41 = [v15 topAnchor];
    v42 = [*(v2 + v37) topAnchor];
    v43 = [v41 constraintEqualToAnchor:v42];

    *(v40 + 32) = v43;
    v44 = [v15 bottomAnchor];
    v45 = [*(v2 + v37) bottomAnchor];
    v46 = [v44 constraintEqualToAnchor:v45];

    *(v40 + 40) = v46;
    v47 = [v15 leftAnchor];
    v48 = [*(v2 + v37) leftAnchor];
    v49 = [v47 constraintEqualToAnchor:v48];

    *(v40 + 48) = v49;
    v50 = [v15 rightAnchor];
    v51 = [*(v2 + v37) rightAnchor];
    v52 = [v50 constraintEqualToAnchor:v51];

    *(v40 + 56) = v52;
    sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
    v53 = Array._bridgeToObjectiveC()().super.isa;

    [v76 activateConstraints:v53];

    v54 = [v15 layer];
    [v54 setMasksToBounds:1];

    v55 = v37;
    [*(v2 + v37) alpha];
    if (v56 < 1.0)
    {
      [*(v2 + v37) setAlpha:1.0];
    }

    v57 = v77;
    v58 = v75;
    if (v78)
    {
      goto LABEL_11;
    }

    v59 = *(v2 + v55) + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
    swift_beginAccess();
    v60 = *(type metadata accessor for Artwork(0) + 28);
    v61 = type metadata accessor for Artwork.Decoration(0);
    sub_1000089F8(v59 + v60 + *(v61 + 20), v9, &qword_101183A90, &unk_100EBE340);
    v62 = v74;
    if ((*(v57 + 48))(v9, 1, v74) == 1)
    {

      sub_1000095E8(v9, &qword_101183A90, &unk_100EBE340);
    }

    else
    {
      (*(v57 + 32))(v58, v9, v62);
      UIView.Corner.radius.getter();
      v63 = v73;
      if ((*(v73 + 88))(v7, v4) == enum case for UIView.Corner.Radius.value(_:))
      {
        (*(v63 + 96))(v7, v4);
        v64 = *v7;
        v65 = v7[8];
        v66 = [v15 layer];
        v67 = v62;
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter(&v79);

        v68 = v64 * 0.73;
        if (v79)
        {
          v68 = v64;
        }

        [v66 setCornerRadius:v68];

        v69 = [v15 layer];
        v70 = &kCACornerCurveContinuous;
        if (!v65)
        {
          v70 = &kCACornerCurveCircular;
        }

        v71 = *v70;
        [v69 setCornerCurve:v71];

        (*(v57 + 8))(v58, v67);
      }

      else
      {
        (*(v57 + 8))(v58, v62);

        (*(v63 + 8))(v7, v4);
      }
    }
  }
}

id sub_1006608B8(char *a1, void *a2)
{
  [*&a1[OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView] setAlpha:1.0];
  v4 = [a1 layer];
  [v4 setZPosition:0.0];

  return [a2 setAlpha:0.0];
}

void sub_10066094C(int a1, id a2)
{
  [a2 removeFromSuperview];
  v3 = [a2 layer];
  [v3 setZPosition:0.0];
}

void sub_1006609C4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_10004E3C8();
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    [v3 setNeedsLayout];
  }
}

id sub_100660A4C(uint64_t a1)
{
  if (!*(a1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData))
  {
    return [*(a1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView) setHidden:0];
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter(&v7);

  v2 = v8;
  if (v8 == 255)
  {
    return [*(a1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView) setHidden:0];
  }

  sub_10004ADFC(v7, v8);
  if (v2)
  {
    return [*(a1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView) setHidden:0];
  }

  v3 = *(a1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionContainerView);
  if (!v3)
  {
    return [*(a1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView) setHidden:0];
  }

  v4 = [v3 superview];
  if (!v4)
  {
    return [*(a1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView) setHidden:0];
  }

  v5 = (*(a1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_isSquareMotionSizeTransitioning) & 1) == 0 && (*(a1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_mode) & 0xC000) != 0;
  return [*(a1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView) setHidden:v5];
}

void sub_100660BAC(unsigned __int16 a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 >> 14)
  {
    if (a1 >> 14 == 1)
    {
      v5 = a1;
      v6 = [objc_opt_self() blackColor];

      v7 = 24.0;
      if ((v5 & 1) == 0)
      {
        v7 = 8.0;
      }

      v8 = 0.12;
      if (v5)
      {
        v8 = 0.45;
      }

      v9 = 12.0;
      if ((v5 & 1) == 0)
      {
        v9 = 4.0;
      }

      goto LABEL_15;
    }

    if (a1 == 0x8000)
    {
      v6 = [objc_opt_self() blackColor];

      v8 = 0.18;
      goto LABEL_14;
    }
  }

  else if (a1)
  {
    v6 = [objc_opt_self() blackColor];
    v10 = [a2 userInterfaceStyle] == 2;

    v8 = dbl_100EDAAB0[v10];
LABEL_14:
    v7 = 15.0;
    v9 = 15.0;
LABEL_15:
    UIView.Shadow.init(color:opacity:radius:offset:)(v6, &v16, v8, v7, 0.0, v9);
    v11 = v16;
    v12 = v17;
    v13 = v18;
    goto LABEL_19;
  }

  if (qword_10117FAF0 != -1)
  {
    swift_once();
  }

  v14 = unk_101219208;
  v15 = *(&xmmword_1012191F0 + 8);
  v11 = xmmword_1012191F0;

  v13 = v14;
  v12 = v15;
LABEL_19:
  *a3 = v11;
  *(a3 + 8) = v12;
  *(a3 + 24) = v13;
}

void sub_100660D74(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = *&a2[OBJC_IVAR____TtC5Music21NowPlayingContentView__internalCatalog];
  v7 = v6;
  v8 = Artwork.Content.init(catalog:background:)(v6, 0);
  v10 = v9;
  sub_10004D23C(*a1, *(a1 + 8));
  *a1 = v8;
  *(a1 + 8) = v10;
  v11 = *&a2[OBJC_IVAR____TtC5Music21NowPlayingContentView_playerPath];
  LOWORD(v10) = *&a2[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode];
  v12 = v11;
  sub_10004D27C(v10, v11, v32);
  v29 = v32[1];
  v30 = v32[0];
  v13 = v33;
  v14 = v34;

  v15 = type metadata accessor for Artwork(0);
  v16 = a1 + *(v15 + 32);
  sub_10004D5E4(*v16, *(v16 + 8), *(v16 + 16), *(v16 + 24));
  *v16 = v30;
  *(v16 + 16) = v29;
  *(v16 + 32) = v13;
  *(v16 + 40) = v14;
  v17 = (a1 + *(v15 + 28));
  v18 = type metadata accessor for Artwork.Decoration(0);
  sub_10004D63C(a3, v17 + *(v18 + 20));
  if (qword_10117FAE8 != -1)
  {
    swift_once();
  }

  v19 = qword_10119BCC0;
  v20 = byte_10119BCC8;
  v21 = qword_10119BCD0;
  v22 = v17[2];
  v23 = qword_10119BCD0;

  *v17 = v19;
  v17[1] = v20;
  v17[2] = v21;
  *(v17 + *(v18 + 28)) = 0;
  [a2 bounds];
  Width = CGRectGetWidth(v35);
  [a2 bounds];
  Height = CGRectGetHeight(v36);
  *(a1 + 40) = Width;
  *(a1 + 48) = 2;
  *(a1 + 56) = Height;
  *(a1 + 64) = 2;
  if (*&a2[OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkCachingReference])
  {

    v26 = Artwork.Caching.Reference.defaultIdentifier.unsafeMutableAddressor();
    v28 = *v26;
    v27 = v26[1];
    swift_weakInit();
    v31[0] = v28;
    v31[1] = v27;
    swift_weakAssign();

    sub_10006B010(v31, a1 + 16, &qword_101190910, &qword_100ECD530);
  }
}

void sub_100660F90(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_10010FC20(&qword_101189D60, &unk_100EDADC0);
  __chkstk_darwin();
  v6 = &v35 - v5;
  v7 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*a1 + 208))(v9);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000095E8(v6, &qword_101189D60, &unk_100EDADC0);
    return;
  }

  sub_100662D50(v6, v11);
  v12 = *&v11[*(v7 + 32)];
  if (v12)
  {
    v13 = *&v2[OBJC_IVAR____TtC5Music21NowPlayingContentView__internalCatalog];
    v14 = v13;
    v15 = v12;
    LOBYTE(v13) = Optional<A>.isArtworkVisuallyIdentical(to:)(v13, v13);

    if (v13)
    {
      sub_1006638C0(v11, type metadata accessor for NowPlaying.TrackMetadata);

      return;
    }

    v16 = OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView;
    v17 = *&v2[OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView] + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
    swift_beginAccess();
    sub_1000089F8(v17 + 16, v38, &qword_101190910, &qword_100ECD530);
    sub_1000089F8(v38, &v36, &qword_101190910, &qword_100ECD530);
    if (v37)
    {

      sub_100662DB4(&v36);
    }

    else
    {
      sub_1000095E8(&v36, &qword_101190910, &qword_100ECD530);
    }

    v18 = String._bridgeToObjectiveC()();

    sub_1000089F8(v38, &v36, &qword_101190910, &qword_100ECD530);
    if (v37)
    {
      Strong = swift_weakLoadStrong();
      sub_100662DB4(&v36);
    }

    else
    {
      sub_1000095E8(&v36, &qword_101190910, &qword_100ECD530);
      Strong = 0;
    }

    [v15 setCacheIdentifier:v18 forCacheReference:Strong];

    swift_unknownObjectRelease();
    v20 = [v2 traitCollection];
    [v20 displayScale];
    v22 = v21;

    [v15 setDestinationScale:v22];
    v23 = *&v2[v16];
    v24 = &v23[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
    swift_beginAccess();
    v25 = v24[48];
    if (v25 == 255)
    {
      [v23 bounds];
      v27 = v26;
      v29 = v28;
    }

    else
    {
      v30 = *(v24 + 7);
      v31 = *(v24 + 5);
      v32 = v24[64];
      [v23 bounds];
      v27 = Artwork.Size.computedSize(in:)(v31, v25, v30, v32, v33, v34);
    }

    [v15 setFittingSize:{v27, v29}];
    v35 = v2;
    MPArtworkCatalog.setDestination<A>(_:for:completion:)(&v35, 1, UIScreen.Dimensions.size.getter, 0, ObjectType);

    sub_1000095E8(v38, &qword_101190910, &qword_100ECD530);
  }

  sub_1006638C0(v11, type metadata accessor for NowPlaying.TrackMetadata);
}

void sub_100661448()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_videoContext);
  if (v1)
  {
    v2 = *(*v1 + 216);

    v4 = v2(v3);

    v5 = [v4 playerViewController];

    v6 = [v5 view];
    if (v6)
    {
      v7 = [v6 layer];

      if (v7)
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100661690(uint64_t a1)
{
  if (!qword_10119BDB0)
  {
    sub_1001109D0(&qword_10119BDB8, &qword_100EDAB68);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10119BDB0);
    }
  }
}

void sub_1006616F8(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for NowPlaying.TrackMetadata(0) + 32));
  v2 = v1;

  sub_100068E6C(v1);
}

void sub_100661740(uint64_t a1)
{
  v2 = (*(*a1 + 216))();
  v6 = [v2 playerViewController];

  v3 = [v6 parentViewController];
  if (v3)
  {

    [v6 willMoveToParentViewController:0];
    [v6 removeFromParentViewController];
  }

  type metadata accessor for NowPlayingContentView(0);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____TtC5Music21NowPlayingContentView_videoContext);
    *(v4 + OBJC_IVAR____TtC5Music21NowPlayingContentView_videoContext) = a1;

    sub_10065E3FC(v5);
  }

  else
  {
  }
}

double sub_100661884(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 72);
  if (v3)
  {
    v5 = *(v2 + 80);

    v3(v2, a1);
    sub_100020438(v3, v5);
  }

  if (qword_10117F228 != -1)
  {
    swift_once();
  }

  v6 = qword_101218668;
  v7 = *(qword_101218668 + 32);
  v10 = *(v7 + 16);
  v8 = v7 + 16;
  v9 = v10;
  if (v10)
  {
    v11 = (v8 + 16 * v9);
    v12 = *v11;
    v13 = v11[1];
    swift_unknownObjectRetain();
    result = sub_100662E14(v2, v6);
    if (*(v2 + 104))
    {
      if (v12)
      {
        ObjectType = swift_getObjectType();
        v16 = swift_unknownObjectRetain();
        sub_100170440(v16, v6, ObjectType, v13);
        swift_unknownObjectRelease_n();
      }

      return result;
    }
  }

  else
  {
    result = sub_100662E14(v2, qword_101218668);
    if (*(v2 + 104))
    {
      return result;
    }
  }

  swift_unknownObjectRelease();
  return result;
}

double sub_1006619C0(uint64_t a1, char a2)
{
  v3 = v2;
  v4 = *(v2 + 88);
  if (v4)
  {
    v7 = *(v3 + 96);

    v4(a2 & 1, a1);
    sub_100020438(v4, v7);
  }

  if (qword_10117F228 != -1)
  {
    swift_once();
  }

  v8 = qword_101218668;

  return sub_100663250(v3, v8);
}

uint64_t sub_100661A78()
{

  sub_100020438(*(v0 + 56), *(v0 + 64));
  sub_100020438(*(v0 + 72), *(v0 + 80));
  sub_100020438(*(v0 + 88), *(v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t sub_100661AFC()
{
  v1 = *(v0 + 32);
  type metadata accessor for NowPlayingContentView(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    return v3;
  }

  return result;
}

double sub_100661B44()
{
  v0 = [objc_opt_self() clearColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v0, v2, 0.0, 0.0, 0.0, 0.0);
  result = *v2;
  xmmword_1012191F0 = v2[0];
  unk_101219200 = v2[1];
  qword_101219210 = v3;
  return result;
}

uint64_t sub_100661BDC()
{
  v1 = OBJC_IVAR____TtC5MusicP33_F1E3C2770AD101679EE581A908D0EFAF17SquareMotionState__isExpanded;
  v2 = sub_10010FC20(&unk_101189E60, &unk_100EC0CF0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC5MusicP33_F1E3C2770AD101679EE581A908D0EFAF17SquareMotionState__isPlaying, v2);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for NowPlayingContentView.ViewMode(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3FFE)
  {
    goto LABEL_17;
  }

  if (a2 + 49154 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 49154 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 49154;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 49154;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 49154;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x3E00 | (*a1 >> 14) & 0xFFFFFE03 | (4 * (*a1 >> 1))) ^ 0x3FFF;
  if (v6 >= 0x3FFD)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for NowPlayingContentView.ViewMode(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 49154 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 49154 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x3FFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x3FFD)
  {
    v6 = ((a2 - 16382) >> 16) + 1;
    *result = a2 - 16382;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_21;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_21:
    v7 = ((-a2 >> 2) & 0xFFF) - (a2 << 12);
    *result = (4 * v7) & 0xFE00 | (2 * (v7 & 0x7F));
    return result;
  }

  if (a2)
  {
    goto LABEL_21;
  }

  return result;
}

_WORD *sub_100661E3C(_WORD *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 0x101 | (a2 << 14);
  }

  else
  {
    *result = (a2 & 1 | (((a2 >> 1) & 1) << 8)) ^ 0x8100;
  }

  return result;
}

uint64_t sub_100661EC8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SquareMotionState(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_100661F08@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v106 = a2;
  v3 = type metadata accessor for MotionCacheDownloadPolicy();
  v104 = *(v3 - 8);
  v105 = v3;
  __chkstk_darwin();
  v103 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v70[1] = a1;
  v111 = v5;
  v112 = v6;
  v7 = v5;
  v90 = v5;
  v8 = v6;
  v89 = v6;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v111 = v7;
  v112 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v111 = OpaqueTypeMetadata2;
  v112 = OpaqueTypeConformance2;
  v11 = OpaqueTypeConformance2;
  v85 = OpaqueTypeConformance2;
  v12 = swift_getOpaqueTypeMetadata2();
  v73 = v12;
  v13 = type metadata accessor for ModifiedContent();
  sub_1001109D0(&qword_1011879E8, &qword_100EE1CF0);
  v14 = type metadata accessor for ModifiedContent();
  v111 = OpaqueTypeMetadata2;
  v112 = v11;
  v93 = swift_getOpaqueTypeConformance2();
  v109 = v93;
  v110 = &protocol witness table for _ScaleEffect;
  v15 = v13;
  v78 = v13;
  WitnessTable = swift_getWitnessTable();
  v96 = WitnessTable;
  v17 = sub_1006634C0();
  v107 = WitnessTable;
  v108 = v17;
  v18 = swift_getWitnessTable();
  v111 = v14;
  v112 = v18;
  v19 = v18;
  v77 = v18;
  v20 = swift_getOpaqueTypeMetadata2();
  v21 = type metadata accessor for MCUINamespace();
  v22 = *(v21 - 8);
  v101 = v21;
  v102 = v22;
  __chkstk_darwin();
  v100 = v70 - v23;
  v24 = type metadata accessor for MotionPlaybackPolicy();
  v98 = *(v24 - 8);
  v99 = v24;
  __chkstk_darwin();
  v94 = v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v14;
  v95 = type metadata accessor for MCUINamespace();
  v97 = *(v95 - 8);
  __chkstk_darwin();
  v87 = v70 - v26;
  v71 = swift_checkMetadataState();
  v27 = *(v71 - 8);
  __chkstk_darwin();
  v29 = v70 - v28;
  v74 = *(v12 - 8);
  __chkstk_darwin();
  v31 = v70 - v30;
  v80 = *(v15 - 8);
  __chkstk_darwin();
  v72 = v70 - v32;
  v79 = *(v14 - 8);
  __chkstk_darwin();
  v75 = v70 - v33;
  v84 = v20;
  v91 = *(v20 - 8);
  __chkstk_darwin();
  v81 = v70 - v34;
  v111 = v14;
  v112 = v19;
  v83 = swift_getOpaqueTypeConformance2();
  v111 = v20;
  v112 = v83;
  v92 = swift_getOpaqueTypeMetadata2();
  v88 = *(v92 - 8);
  __chkstk_darwin();
  v82 = v70 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v86 = v70 - v36;
  v37 = Corner.large.unsafeMutableAddressor();
  View.corner(_:)(*v37, v37[1], *(v37 + 16), v90, v89);
  v38 = Border.artwork.unsafeMutableAddressor();
  v39 = *(v38 + 1);
  v40 = *v37;
  v41 = v37[1];
  LOBYTE(v37) = *(v37 + 16);
  v42 = *(v38 + 16);

  v44 = v42;
  v45 = v71;
  View.border(_:corner:)(v43, v44, v40, v41, v37, v71, v85, v39);

  (*(v27 + 8))(v29, v45);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter(&v111);

  static UnitPoint.center.getter();
  v46 = v72;
  v47 = v73;
  View.scaleEffect(_:anchor:)();
  (*(v74 + 8))(v31, v47);
  sub_100662AFC();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter(&v111);

  v48 = v75;
  v49 = v78;
  View.animation<A>(_:value:)();

  (*(v80 + 8))(v46, v49);
  v50 = v87;
  v51 = v76;
  View.mcui.getter();
  (*(v79 + 8))(v48, v51);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter(&v111);

  v52 = v94;
  *v94 = v111;
  v54 = v98;
  v53 = v99;
  (*(v98 + 104))(v52, enum case for MotionPlaybackPolicy.custom(_:), v99);
  v55 = v81;
  v56 = v95;
  MCUINamespace<A>.motionCollection(policy:)();
  (*(v54 + 8))(v52, v53);
  (*(v97 + 8))(v50, v56);
  v57 = v100;
  v58 = v84;
  View.mcui.getter();
  (*(v91 + 8))(v55, v58);
  v60 = v103;
  v59 = v104;
  v61 = v105;
  (*(v104 + 104))(v103, enum case for MotionCacheDownloadPolicy.whileVisible(_:), v105);
  v62 = v82;
  v63 = v101;
  MCUINamespace<A>.motionCacheDownload(policy:)();
  (*(v59 + 8))(v60, v61);
  (*(v102 + 8))(v57, v63);
  v64 = v88;
  v65 = *(v88 + 16);
  v66 = v86;
  v67 = v92;
  v65(v86, v62, v92);
  v68 = *(v64 + 8);
  v68(v62, v67);
  v65(v106, v66, v67);
  return (v68)(v66, v67);
}

uint64_t sub_100662AFC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter(&v1);

  return static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
}

uint64_t sub_100662C2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_10119BDB8, &qword_100EDAB68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100662C9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_10065E5A0(a1, v4, v5, v6);
}

uint64_t sub_100662D50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlaying.TrackMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_100662E14(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v7 = *(v4 + 16);
  v5 = v4 + 16;
  v6 = v7;
  if (!v7 || *(v5 + 16 * v6) != a1)
  {
    if (qword_10117F230 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000060E4(v8, qword_101181F90);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136446210;

      sub_10010FC20(&qword_101182128, &unk_100EBDF10);
      v13 = String.init<A>(describing:)();
      v15 = sub_1000105AC(v13, v14, &v22);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Become active container=%{public}s", v11, 0xCu);
      sub_10000959C(v12);
    }

    v16 = *(a2 + 32);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_100059EE8(0, v16[2] + 1, 1, v16);
    }

    v18 = v16[2];
    v17 = v16[3];
    if (v18 >= v17 >> 1)
    {
      v16 = sub_100059EE8((v17 > 1), v18 + 1, 1, v16);
    }

    v16[2] = v18 + 1;
    v19 = &v16[2 * v18];
    v19[4] = a1;
    v19[5] = &off_1010B9010;
    v20 = *(a2 + 32);
    *(a2 + 32) = v16;

    sub_100059F0C(v20);
  }

  return result;
}

double sub_100663070(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  v6 = *(v5 + 16);
  v7 = (v5 + 16 + 16 * v6);
  while (v6)
  {
    --v6;
    v8 = *v7;
    v7 -= 2;
    if (v8 == a1)
    {
      if (qword_10117F230 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_1000060E4(v9, qword_101181F90);
      v10 = a1;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v22 = v14;
        *v13 = 136446210;
        v15 = v10;
        sub_10010FC20(&qword_101182128, &unk_100EBDF10);
        v16 = String.init<A>(describing:)();
        v18 = sub_1000105AC(v16, v17, &v22);

        *(v13 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v11, v12, "Resign active container=%{public}s", v13, 0xCu);
        sub_10000959C(v14);
      }

      v21 = *(a2 + 32);

      sub_1004F3F58(v6);
      swift_unknownObjectRelease();
      v19 = *(a2 + 32);
      *(a2 + 32) = v21;
      sub_100059F0C(v19);

      return result;
    }
  }

  return result;
}

double sub_100663250(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(v3 + 16);
  v5 = (v3 + 16 + 16 * v4);
  while (v4)
  {
    --v4;
    v6 = *v5;
    v5 -= 2;
    if (v6 == a1)
    {
      if (qword_10117F230 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_1000060E4(v7, qword_101181F90);

      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 136446210;
        v18 = v11;

        sub_10010FC20(&qword_101182128, &unk_100EBDF10);
        v12 = String.init<A>(describing:)();
        v14 = sub_1000105AC(v12, v13, &v18);

        *(v10 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v8, v9, "Resign active container=%{public}s", v10, 0xCu);
        sub_10000959C(v11);
      }

      v17 = *(a2 + 32);

      sub_1004F3F58(v4);
      swift_unknownObjectRelease();
      v15 = *(a2 + 32);
      *(a2 + 32) = v17;
      sub_100059F0C(v15);

      return result;
    }
  }

  return result;
}

uint64_t sub_100663438(unsigned __int16 a1, unsigned __int16 a2)
{
  if (a1 >> 14)
  {
    if (a1 >> 14 != 1)
    {
      if (a1 == 0x8000)
      {
        if (a2 == 0x8000)
        {
          return 1;
        }
      }

      else if (a2 == 32769)
      {
        return 1;
      }

      return 0;
    }

    if ((a2 & 0xC000) != 0x4000)
    {
      return 0;
    }
  }

  else if (a2 >= 0x4000u)
  {
    return 0;
  }

  if ((a2 ^ a1))
  {
    return 0;
  }

  else
  {
    return ((a2 & 0x100) == 0) ^ ((a1 & 0x100) >> 8);
  }
}

unint64_t sub_1006634C0()
{
  result = qword_1011879E0;
  if (!qword_1011879E0)
  {
    sub_1001109D0(&qword_1011879E8, &qword_100EE1CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011879E0);
  }

  return result;
}

void sub_100663524()
{
  v1 = v0;
  type metadata accessor for Artwork(0);
  __chkstk_darwin();
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v18[-v4];
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_mode) = 1;
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_videoContext) = 0;
  v6 = (v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkDidChangeHandler);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkCachingReference) = 0;
  v7 = (v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_layoutHandler);
  *v7 = 0;
  v7[1] = 0;
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_pauseArtworkUpdates) = 0;
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_updateConfigurationTask) = 0;
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView__internalCatalog) = 0;
  v8 = OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView;
  Artwork.init()(&v18[-v4]);
  sub_1005579F0(v5, v3);
  v9 = objc_allocWithZone(type metadata accessor for Artwork.View(0));
  v10 = Artwork.View.init(configuration:)(v3);
  sub_1006638C0(v5, type metadata accessor for Artwork);
  *(v1 + v8) = v10;
  v11 = OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView;
  *(v1 + v11) = [objc_allocWithZone(UIView) init];
  v12 = (v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_lastSeenBounds);
  *v12 = 0u;
  v12[1] = 0u;
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionSnapshot) = 0;
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionKeyframeView) = 0;
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_motionAnimationDuration) = 0x3FC3333333333333;
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_isBeingDonated) = 0;
  v13 = v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_windowSize;
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  v14 = OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionContainer;
  v15 = sub_10010FC20(&qword_10119BDB8, &qword_100EDAB68);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionContainerView) = 0;
  v16 = OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionState;
  type metadata accessor for SquareMotionState(0);
  v17 = swift_allocObject();
  v18[15] = 1;
  Published.init(initialValue:)();
  v18[14] = 1;
  Published.init(initialValue:)();
  *(v1 + v16) = v17;
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_isSquareMotionSizeTransitioning) = 0;
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_nowPlayingShouldShowMotionBackground) = 0;
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData) = 0;
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_needsSquareMotionUpdate) = 0;
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_freezeSquareMotion) = 0;
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_morphingMotionSnapshot) = 0;
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_playerPath) = 0;
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_deferArtworkUpdates) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_10066386C()
{
  result = qword_10119C170;
  if (!qword_10119C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119C170);
  }

  return result;
}

uint64_t sub_1006638C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100663984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  sub_10010FC20(&unk_101197040, &unk_100EDAE40);
  __chkstk_darwin();
  v4 = &v24[-v3 - 8];
  v5 = type metadata accessor for RecentlyAddedMusicItem();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10010FC20(&unk_101189DA0, &unk_100EBF370);
  __chkstk_darwin();
  v10 = &v24[-v9 - 8];
  v11 = type metadata accessor for GenericMusicItem();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v24[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_100008FE4(a1, v32);
  sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  v15 = swift_dynamicCast();
  v16 = *(v12 + 56);
  if (v15)
  {
    v16(v10, 0, 1, v11);
    (*(v12 + 32))(v14, v10, v11);
    sub_100168400(v32);
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    v16(v10, 1, 1, v11);
    sub_1000095E8(v10, &unk_101189DA0, &unk_100EBF370);
    sub_100008FE4(a1, v32);
    v17 = swift_dynamicCast();
    v18 = *(v6 + 56);
    if (v17)
    {
      v18(v4, 0, 1, v5);
      (*(v6 + 32))(v8, v4, v5);
      sub_100169B0C(v32);
      (*(v6 + 8))(v8, v5);
    }

    else
    {
      v18(v4, 1, 1, v5);
      sub_1000095E8(v4, &unk_101197040, &unk_100EDAE40);
      sub_100008FE4(a1, v32);
    }
  }

  sub_100663E60(v32, v24);
  if (v25)
  {
    sub_10010FC20(&qword_10119C180, &qword_100EDAE58);
    if (swift_dynamicCast())
    {
      if (*(&v27 + 1))
      {
        sub_100059A8C(&v26, v29);
        v19 = v30;
        v20 = v31;
        sub_10000954C(v29, v30);
        (*(v20 + 8))(v19, v20);
        sub_1000095E8(v32, &qword_10118B990, &unk_100EBE7B0);
        return sub_10000959C(v29);
      }
    }

    else
    {
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
    }
  }

  else
  {
    sub_1000095E8(v24, &qword_10118B990, &unk_100EBE7B0);
    v26 = 0u;
    v27 = 0u;
    v28 = 0;
  }

  sub_1000095E8(v32, &qword_10118B990, &unk_100EBE7B0);
  sub_1000095E8(&v26, &qword_10119C178, &qword_100EDAE50);
  v22 = type metadata accessor for EntityIdentifier();
  return (*(*(v22 - 8) + 56))(v23, 1, 1, v22);
}

uint64_t sub_100663E60(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_10118B990, &unk_100EBE7B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100663EE4()
{
  v0 = type metadata accessor for LayoutProperties();
  sub_100006080(v0, qword_101219250);
  sub_1000060E4(v0, qword_101219250);
  LayoutProperties.init()();
  return LayoutProperties.stackOrientation.setter();
}

double sub_100663F3C(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void *a7, unsigned int (**a8)(char *, uint64_t, uint64_t), char a9)
{
  v44 = type metadata accessor for HeightConstrainedHStackLayout.Cache(0);
  v17 = *(v44 + 28);
  if (!*(*(a6 + v17) + 16) || (*(a6 + 25) & 1) != 0 || (static ProposedViewSize.== infix(_:_:)() & 1) == 0)
  {
    *a6 = a1;
    *(a6 + 8) = a2 & 1;
    *(a6 + 16) = a3;
    *(a6 + 24) = a4 & 1;
    *(a6 + 25) = 0;
    sub_1006641A4(a1, a2 & 1, a3, a4 & 1, a5, a6, a7, a8, a9 & 1);
  }

  v18 = *(a6 + v17);
  v19 = *(v18 + 16);
  v20 = 0.0;
  v21 = 0.0;
  if (v19)
  {
    if (v19 == 1)
    {
      v22 = 0;
LABEL_11:
      v27 = v19 - v22;
      v28 = (v18 + 16 * v22 + 32);
      do
      {
        v29 = *v28;
        v28 += 2;
        v21 = v21 + v29;
        --v27;
      }

      while (v27);
      goto LABEL_13;
    }

    v22 = v19 & 0x7FFFFFFFFFFFFFFELL;
    v23 = (v18 + 48);
    v24 = v19 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v25 = *(v23 - 2);
      v26 = *v23;
      v23 += 4;
      v21 = v21 + v25 + v26;
      v24 -= 2;
    }

    while (v24);
    if (v19 != v22)
    {
      goto LABEL_11;
    }
  }

LABEL_13:
  sub_100665858(a5, a7, a8, a9 & 1);
  v31 = *(v30 + 16);
  if (!v31)
  {
    goto LABEL_21;
  }

  if (v31 <= 3)
  {
    v32 = 0;
    v20 = 0.0;
LABEL_19:
    v35 = v31 - v32;
    v36 = (v30 + 8 * v32 + 32);
    do
    {
      v37 = *v36++;
      v20 = v20 + v37;
      --v35;
    }

    while (v35);
    goto LABEL_21;
  }

  v32 = v31 & 0x7FFFFFFFFFFFFFFCLL;
  v33 = (v30 + 48);
  v20 = 0.0;
  v34 = v31 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v20 = v20 + *(v33 - 2) + *(v33 - 1) + *v33 + v33[1];
    v33 += 4;
    v34 -= 4;
  }

  while (v34);
  if (v31 != v32)
  {
    goto LABEL_19;
  }

LABEL_21:

  if (*(a6 + *(v44 + 24) + 8))
  {
    v38 = *(v18 + 16);
    if (v38)
    {
      v39 = (v18 + 40);
      v40 = 0.0;
      do
      {
        v41 = *v39;
        v39 += 2;
        v42 = v41;
        if (v40 <= v41)
        {
          v40 = v42;
        }

        --v38;
      }

      while (v38);
    }
  }

  return v21 + v20;
}

void sub_1006641A4(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7, unsigned int (**a8)(char *, uint64_t, uint64_t), unsigned __int8 a9)
{
  v201 = a8;
  v200 = a7;
  v183 = a6;
  v197 = a4;
  v198 = a3;
  v180 = a2;
  v179 = a1;
  v191 = type metadata accessor for ViewSpacing();
  v175 = *(v191 - 8);
  __chkstk_darwin();
  v190 = &v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v189 = &v175 - v11;
  sub_10010FC20(&qword_10119C1B0, &qword_100EDB028);
  __chkstk_darwin();
  v13 = &v175 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v195 = &v175 - v14;
  v214 = sub_10010FC20(&qword_1011920F8, &unk_100ECF320);
  v185 = *(v214 - 8);
  __chkstk_darwin();
  v210 = (&v175 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v209 = &v175 - v16;
  __chkstk_darwin();
  v213 = (&v175 - v17);
  v177 = sub_10010FC20(&qword_10119C1A0, &qword_100EDB018);
  __chkstk_darwin();
  v186 = (&v175 - v18);
  v19 = type metadata accessor for LayoutSubviews();
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v22 = (&v175 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_10010FC20(&qword_10119C1C0, &qword_100EDB030);
  __chkstk_darwin();
  v212 = &v175 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v26 = &v175 - v25;
  v215 = type metadata accessor for LayoutSubview();
  v203 = *(v215 - 8);
  __chkstk_darwin();
  v199 = &v175 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v188 = &v175 - v28;
  __chkstk_darwin();
  v205 = &v175 - v29;
  __chkstk_darwin();
  v184 = &v175 - v30;
  __chkstk_darwin();
  v196 = &v175 - v31;
  __chkstk_darwin();
  v211 = (&v175 - v32);
  __chkstk_darwin();
  v208 = &v175 - v33;
  v34 = __chkstk_darwin();
  v176 = (&v175 - v35);
  v178 = v20;
  v36 = *(v20 + 16);
  v204 = a5;
  v193 = (v20 + 16);
  v187 = v36;
  v36(v22, a5, v19, v34);
  v37 = sub_1006673C8(&qword_10119C1B8, &protocol conformance descriptor for LayoutSubviews);
  v192 = v22;
  v181 = v37;
  dispatch thunk of Sequence.makeIterator()();
  v194 = v23;
  v38 = *(v23 + 36);
  v39 = sub_1006673C8(&qword_10119C1C8, &protocol conformance descriptor for LayoutSubviews);
  dispatch thunk of Collection.endIndex.getter();
  v40 = *&v26[v38] == v218;
  v202 = v19;
  v182 = v39;
  if (v40)
  {
LABEL_5:
    sub_1000095E8(v26, &qword_10119C1C0, &qword_100EDB030);
    v46 = 0;
    v47 = 1;
  }

  else
  {
    v41 = (v203 + 16);
    v207 = (v203 + 32);
    v206 = (v203 + 8);
    while (1)
    {
      v42 = dispatch thunk of Collection.subscript.read();
      v43 = v208;
      v44 = v215;
      (*v41)(v208);
      v42(&v218, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v45 = *v207;
      (*v207)(v211, v43, v44);
      sub_1006672FC();
      LayoutSubview.subscript.getter();
      if (v218 == 1)
      {
        break;
      }

      (*v206)(v211, v44);
      dispatch thunk of Collection.endIndex.getter();
      if (*&v26[v38] == v218)
      {
        goto LABEL_5;
      }
    }

    sub_1000095E8(v26, &qword_10119C1C0, &qword_100EDB030);
    v48 = v176;
    v45(v176, v211, v44);
    LOBYTE(v218) = v180 & 1;
    LOBYTE(v217) = v197 & 1;
    LayoutSubview.sizeThatFits(_:)();
    v50 = v49;
    (*v206)(v48, v44);
    v47 = 0;
    v46 = v50;
  }

  v198 = v46;
  v51 = type metadata accessor for HeightConstrainedHStackLayout.Cache(0);
  v52 = v183;
  v53 = v183 + v51[6];
  *v53 = v46;
  *(v53 + 8) = v47;
  v54 = v51[5];
  v55 = static LayoutSubviews.== infix(_:_:)();
  v197 = v47;
  v176 = v51;
  if ((v55 & 1) != 0 && (v56 = *(v52 + v51[8])) != 0)
  {
    v186 = sub_10018E4B4(v56);
    v57 = v204;
    v58 = v202;
    v59 = v187;
  }

  else
  {
    v60 = v186;
    v57 = v204;
    v58 = v202;
    v59 = v187;
    v187(v186, v204, v202);
    KeyPath = swift_getKeyPath();
    v211 = v54;
    v62 = KeyPath;
    v63 = sub_100667458();
    v64 = Sequence.sorted<A>(by:comparator:)(v62, sub_100666B20, 0, v177, v63, &protocol witness table for Double);

    sub_1000095E8(v60, &qword_10119C1A0, &qword_100EDB018);
    v65 = swift_getKeyPath();
    v66 = sub_100666B34(v65, v64);

    v186 = v66;
    v67 = sub_10018E5E4(v66);
    v68 = v51[8];

    *(v52 + v68) = v67;
    (*(v178 + 24))(v211 + v52, v57, v58);
  }

  LODWORD(v211) = a9;
  v59(v192, v57, v58);
  v69 = v212;
  dispatch thunk of Sequence.makeIterator()();
  v70 = *(v194 + 9);
  dispatch thunk of Collection.endIndex.getter();
  v71 = 0.0;
  v72 = 0.0;
  v73 = v196;
  if (*(v69 + v70) != v218)
  {
    v74 = (v203 + 16);
    v75 = (v203 + 8);
    v76 = v215;
    do
    {
      v77 = dispatch thunk of Collection.subscript.read();
      (*v74)(v73);
      v77(&v218, 0);
      v69 = v212;
      dispatch thunk of Collection.formIndex(after:)();
      static ProposedViewSize.zero.getter();
      LOBYTE(v218) = v78 & 1;
      LOBYTE(v217) = v79 & 1;
      LayoutSubview.sizeThatFits(_:)();
      v81 = v80;
      (*v75)(v73, v76);
      v72 = v72 + v81;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v69 + v70) != v218);
  }

  sub_1000095E8(v69, &qword_10119C1C0, &qword_100EDB030);
  sub_100665858(v204, v200, v201, v211 & 1);
  v83 = *(v82 + 16);
  v84 = v195;
  v85 = v186;
  if (!v83)
  {
    goto LABEL_22;
  }

  if (v83 > 3)
  {
    v86 = v83 & 0x7FFFFFFFFFFFFFFCLL;
    v87 = (v82 + 48);
    v71 = 0.0;
    v88 = v83 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v71 = v71 + *(v87 - 2) + *(v87 - 1) + *v87 + v87[1];
      v87 += 4;
      v88 -= 4;
    }

    while (v88);
    if (v83 == v86)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v86 = 0;
    v71 = 0.0;
  }

  v89 = v83 - v86;
  v90 = (v82 + 8 * v86 + 32);
  do
  {
    v91 = *v90++;
    v71 = v71 + v91;
    --v89;
  }

  while (v89);
LABEL_22:

  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v92 = dispatch thunk of Collection.distance(from:to:)();
  if (v92 < 0)
  {
    goto LABEL_79;
  }

  v93 = v92;
  if (v92)
  {
    type metadata accessor for CGSize(0);
    v94 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v94[2] = v93;
    v200 = v94;
    bzero(v94 + 4, 16 * v93);
  }

  else
  {
    v200 = _swiftEmptyArrayStorage;
  }

  v95 = v205;
  v96 = v85[2];
  if (!v96)
  {
LABEL_76:

    v173 = v176[7];
    v174 = v183;

    *(v174 + v173) = v200;
    return;
  }

  v97 = *&v179;
  if (v180)
  {
    v97 = 10.0;
  }

  v211 = (v203 + 32);
  v193 = (v203 + 56);
  v208 = (v203 + 16);
  v201 = (v203 + 48);
  v187 = (v175 + 8);
  v206 = (v203 + 8);
  v98 = v97 - v72 - v71;
  v196 = (v200 + 4);
  v194 = v13;
  while (1)
  {
    v99 = v85[4];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v96 - 1) > v85[3] >> 1)
    {
      v85 = sub_10049AB80(isUniquelyReferenced_nonNull_native, v96, 1, v85);
    }

    sub_1000095E8((v85 + 4), &unk_101183270, &qword_100ECF310);
    v101 = v85[2];
    memmove(v85 + 4, v85 + 5, 8 * v101 - 8);
    v85[2] = v101 - 1;
    v102 = *(v99 + 16);
    v204 = v99;
    v186 = v85;
    if (v102)
    {
      v218 = _swiftEmptyArrayStorage;
      sub_10066CE08(0, v102, 0);
      v103 = v218;
      v104 = v99 + ((*(v185 + 80) + 32) & ~*(v185 + 80));
      v207 = *(v185 + 72);
      v212 = v102;
      v105 = v102;
      v106 = v211;
      do
      {
        v107 = v213;
        sub_1000089F8(v104, v213, &qword_1011920F8, &unk_100ECF320);
        v108 = v209;
        sub_1000089F8(v107, v209, &qword_1011920F8, &unk_100ECF320);
        v109 = v215;
        v110 = *(v214 + 48);
        v111 = v210;
        *v210 = *v108;
        (*v106)(v111 + v110, &v108[v110], v109);
        static ProposedViewSize.zero.getter();
        LOBYTE(v217) = v112 & 1;
        v216 = v113 & 1;
        LayoutSubview.sizeThatFits(_:)();
        v115 = v114;
        sub_1000095E8(v111, &qword_1011920F8, &unk_100ECF320);
        sub_1000095E8(v107, &qword_1011920F8, &unk_100ECF320);
        v218 = v103;
        v117 = v103[2];
        v116 = v103[3];
        v118 = v117 + 1;
        if (v117 >= v116 >> 1)
        {
          sub_10066CE08((v116 > 1), v117 + 1, 1);
          v103 = v218;
        }

        v103[2] = v118;
        v103[v117 + 4] = v115;
        v104 += v207;
        --v105;
      }

      while (v105);
      v13 = v194;
      v84 = v195;
      v119 = v215;
      v95 = v205;
      v102 = v212;
      if (v118 <= 3)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v103 = _swiftEmptyArrayStorage;
      v118 = _swiftEmptyArrayStorage[2];
      if (!v118)
      {
        v121 = 0.0;
        v119 = v215;
        goto LABEL_49;
      }

      v119 = v215;
      if (v118 <= 3)
      {
LABEL_41:
        v120 = 0;
        v121 = 0.0;
LABEL_47:
        v124 = v118 - v120;
        v125 = 8 * v120 + 32;
        do
        {
          v121 = v121 + *(v103 + v125);
          v125 += 8;
          --v124;
        }

        while (v124);
        goto LABEL_49;
      }
    }

    v120 = v118 & 0xFFFFFFFFFFFFFFFCLL;
    v122 = (v103 + 6);
    v121 = 0.0;
    v123 = v118 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v121 = v121 + *(v122 - 2) + *(v122 - 1) + *v122 + v122[1];
      v122 += 4;
      v123 -= 4;
    }

    while (v123);
    if (v118 != v120)
    {
      goto LABEL_47;
    }

LABEL_49:

    v192 = *v193;
    v192(v84, 1, 1, v119);
    if (v102)
    {
      v218 = _swiftEmptyArrayStorage;
      sub_10066CDC4(0, v102, 0);
      v126 = v218;
      v127 = v204 + ((*(v185 + 80) + 32) & ~*(v185 + 80));
      v202 = *(v185 + 72);
      v128 = v184;
      v129 = v211;
      do
      {
        v212 = v102;
        v130 = v119;
        v131 = v213;
        sub_1000089F8(v127, v213, &qword_1011920F8, &unk_100ECF320);
        v132 = v209;
        sub_1000089F8(v131, v209, &qword_1011920F8, &unk_100ECF320);
        v133 = v129;
        v134 = *(v214 + 48);
        v135 = v210;
        *v210 = *v132;
        v207 = *v133;
        (v207)(v135 + v134, v132 + v134, v130);
        (*v208)(v128, v135 + v134, v130);
        sub_1000095E8(v135, &qword_1011920F8, &unk_100ECF320);
        sub_1000095E8(v131, &qword_1011920F8, &unk_100ECF320);
        v218 = v126;
        v137 = v126[2];
        v136 = v126[3];
        if (v137 >= v136 >> 1)
        {
          sub_10066CDC4((v136 > 1), v137 + 1, 1);
          v126 = v218;
        }

        v126[2] = v137 + 1;
        (v207)(v126 + ((*(v203 + 80) + 32) & ~*(v203 + 80)) + *(v203 + 72) * v137, v128, v130);
        v127 += v202;
        v102 = (v212 - 1);
        v119 = v130;
        v129 = v133;
      }

      while (v212 != 1);
      v13 = v194;
      v84 = v195;
      v95 = v205;
    }

    else
    {
      v126 = _swiftEmptyArrayStorage;
    }

    v138 = v126[2];
    if (v138)
    {
      v139 = *(v203 + 80);
      v207 = v126;
      v140 = v126 + ((v139 + 32) & ~v139);
      v141 = *(v203 + 72);
      v142 = *(v203 + 16);
      v143 = 0.0;
      v142(v95, v140, v119);
      while (1)
      {
        sub_1000089F8(v84, v13, &qword_10119C1B0, &qword_100EDB028);
        if ((*v201)(v13, 1, v119) == 1)
        {
          (*v206)(v95, v119);
          sub_1000095E8(v13, &qword_10119C1B0, &qword_100EDB028);
        }

        else
        {
          v212 = *v211;
          v144 = v188;
          (v212)(v188, v13, v119);
          v145 = v189;
          LayoutSubview.spacing.getter();
          v146 = v190;
          LayoutSubview.spacing.getter();
          ViewSpacing.distance(to:along:)();
          v148 = v147;
          v149 = *v187;
          v150 = v146;
          v151 = v142;
          v152 = v141;
          v153 = v194;
          v154 = v191;
          (*v187)(v150, v191);
          v155 = v145;
          v84 = v195;
          v156 = v154;
          v13 = v153;
          v141 = v152;
          v142 = v151;
          v119 = v215;
          v149(v155, v156);
          v95 = v205;
          (*v206)(v144, v119);
          sub_1000095E8(v84, &qword_10119C1B0, &qword_100EDB028);
          v143 = v143 + v148;
          (v212)(v84, v95, v119);
          v192(v84, 0, 1, v119);
        }

        v140 += v141;
        if (!--v138)
        {
          break;
        }

        v142(v95, v140, v119);
      }
    }

    else
    {

      v143 = 0.0;
    }

    v98 = v98 + v121 + v143;
    v157 = *(v204 + 16);
    if (v157)
    {
      break;
    }

LABEL_31:

    sub_1000095E8(v84, &qword_10119C1B0, &qword_100EDB028);
    v85 = v186;
    v96 = v186[2];
    if (!v96)
    {
      goto LABEL_76;
    }
  }

  v158 = 0;
  v159 = v204 + ((*(v185 + 80) + 32) & ~*(v185 + 80));
  v207 = *(v185 + 72);
  v212 = (1 - v157);
  v160 = v157 - 1;
  while (1)
  {
    v161 = v213;
    sub_1000089F8(v159, v213, &qword_1011920F8, &unk_100ECF320);
    v162 = *v161;
    v163 = v214;
    v164 = *v206;
    (*v206)((v161 + *(v214 + 48)), v215);
    sub_1000089F8(v159, v161, &qword_1011920F8, &unk_100ECF320);
    v165 = v161 + *(v163 + 48);
    v166 = v215;
    v167 = v199;
    (*v211)(v199, v165, v215);
    LOBYTE(v218) = 0;
    LOBYTE(v217) = v197;
    LayoutSubview.sizeThatFits(_:)();
    v169 = v168;
    v171 = v170;
    v164(v167, v166);
    if ((v162 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v162 >= v200[2])
    {
      goto LABEL_78;
    }

    v172 = &v196[16 * v162];
    *v172 = v169;
    *(v172 + 1) = v171;
    if (v98 - v169 >= 0.0)
    {
      v98 = v98 - v169;
    }

    else
    {
      v98 = 0.0;
    }

    if (!&v212[v158])
    {
      v13 = v194;
      v84 = v195;
      v95 = v205;
      goto LABEL_31;
    }

    ++v158;
    v159 += v207;
    --v160;
    if (v158 >= *(v204 + 16))
    {
      __break(1u);
      break;
    }
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
}

void sub_100665858(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if (a4)
  {
    type metadata accessor for LayoutSubviews();
    sub_1006673C8(&qword_10119C1C8, &protocol conformance descriptor for LayoutSubviews);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v5 = v26;
    v6 = v25 - v26;
    if (v25 >= v26)
    {
      if (!__OFSUB__(v25, v26))
      {
        v7 = __OFSUB__(v6, 1);
        v8 = v6 - 1;
        if (!v7)
        {
          v9 = sub_1006674BC(v26, v8 & ~(v8 >> 63), v25, v26, v25);
          if (v10)
          {
            v11 = v25;
          }

          else
          {
            v11 = v9;
          }

          if (v11 >= v26)
          {
            __chkstk_darwin();
            v24[2] = a1;
            sub_1001FACD0(sub_100667524, v24, v5, v12);
            return;
          }

          goto LABEL_27;
        }

LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return;
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  type metadata accessor for LayoutSubviews();
  sub_1006673C8(&qword_10119C1C8, &protocol conformance descriptor for LayoutSubviews);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v14 = dispatch thunk of Collection.distance(from:to:)();
  v15 = v14 - 1;
  if (__OFSUB__(v14, 1))
  {
    goto LABEL_23;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v14 != 1)
  {
    v16 = v14;
    v17 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v17 + 16) = v15;
    v18 = (v17 + 32);
    if (v15 < 4)
    {
      v19 = 0;
LABEL_19:
      v23 = ~v19 + v16;
      do
      {
        *v18++ = a3;
        --v23;
      }

      while (v23);
      return;
    }

    v19 = v15 & 0x7FFFFFFFFFFFFFFCLL;
    v18 += v15 & 0x7FFFFFFFFFFFFFFCLL;
    v20 = vdupq_n_s64(a3);
    v21 = (v17 + 48);
    v22 = v15 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v21[-1] = v20;
      *v21 = v20;
      v21 += 2;
      v22 -= 4;
    }

    while (v22);
    if (v15 != v19)
    {
      goto LABEL_19;
    }
  }
}

uint64_t sub_100665A74(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7, unsigned int (**a8)(char *, uint64_t, uint64_t), CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, unsigned __int8 a13)
{
  v103 = a8;
  v112 = a7;
  v128 = a6;
  v125 = a5;
  v122 = a4;
  v121 = a3;
  v120 = a2;
  v119 = a1;
  v96 = a12;
  v95 = a11;
  v101 = a13;
  v94 = type metadata accessor for ViewSpacing();
  v124 = *(v94 - 8);
  __chkstk_darwin();
  v93 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v92 = &v91 - v16;
  v129 = sub_10010FC20(&qword_1011920F8, &unk_100ECF320);
  v113 = *(v129 - 8);
  __chkstk_darwin();
  v116 = &v91 - v17;
  v18 = type metadata accessor for LayoutSubview();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v123 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v91 - v21;
  __chkstk_darwin();
  v99 = &v91 - v23;
  sub_10010FC20(&qword_10119C198, &qword_100EDB010);
  __chkstk_darwin();
  v118 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v117 = &v91 - v25;
  v26 = type metadata accessor for LayoutSubviews();
  v27 = *(v26 - 8);
  __chkstk_darwin();
  v29 = &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_10119C1A0, &qword_100EDB018);
  __chkstk_darwin();
  v31 = &v91 - v30;
  v32 = sub_10010FC20(&qword_10119C1A8, &qword_100EDB020) - 8;
  __chkstk_darwin();
  v34 = &v91 - v33;
  sub_10010FC20(&qword_10119C1B0, &qword_100EDB028);
  __chkstk_darwin();
  v111 = &v91 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin();
  v37 = *(v19 + 56);
  v126 = &v91 - v38;
  v104 = v37;
  v37(v36);
  (*(v27 + 16))(v31, v125, v26);
  v39 = v31;
  v40 = v22;
  (*(v27 + 32))(v29, v39, v26);
  sub_1006673C8(&qword_10119C1B8, &protocol conformance descriptor for LayoutSubviews);
  v127 = v26;
  dispatch thunk of Sequence.makeIterator()();
  v41 = v19 + 56;
  v42 = v123;
  v97 = *(v32 + 44);
  *&v34[v97] = 0;
  v43 = *(sub_10010FC20(&qword_10119C1C0, &qword_100EDB030) + 36);
  v44 = sub_1006673C8(&qword_10119C1C8, &protocol conformance descriptor for LayoutSubviews);
  v115 = 0;
  v98 = (v41 - 40);
  v45 = (v41 - 24);
  v114 = (v113 + 7);
  v113 += 6;
  v109 = (v41 - 8);
  v105 = v41;
  v100 = (v41 - 48);
  v46 = v103;
  v91 = (v124 + 8);
  v102 = v101 & 1;
  v47 = 0.0;
  v107 = v40;
  v106 = v34;
  v110 = (v41 - 24);
  v108 = v44;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v34[v43] == v131[0])
    {
      v49 = v40;
      v50 = 1;
      v51 = v118;
      v52 = v117;
    }

    else
    {
      v53 = dispatch thunk of Collection.subscript.read();
      v54 = v99;
      (*v98)(v99);
      v53(v131, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v55 = *(v129 + 48);
      v56 = v116;
      v57 = v115;
      *v116 = v115;
      (*v45)(&v56[v55], v54, v18);
      v58 = __OFADD__(v57, 1);
      v59 = v57 + 1;
      if (v58)
      {
        __break(1u);
        goto LABEL_40;
      }

      v49 = v40;
      v115 = v59;
      *&v34[v97] = v59;
      v51 = v118;
      sub_10003D17C(v116, v118, &qword_1011920F8, &unk_100ECF320);
      v50 = 0;
      v52 = v117;
    }

    v60 = v129;
    (*v114)(v51, v50, 1, v129);
    sub_10003D17C(v51, v52, &qword_10119C198, &qword_100EDB010);
    v61 = (*v113)(v52, 1, v60);
    v62 = v128;
    if (v61 == 1)
    {
      goto LABEL_38;
    }

    v63 = v43;
    v124 = *v52;
    v64 = v52;
    v65 = *v45;
    (*v45)(v49, &v64[*(v129 + 48)], v18);
    v66 = v111;
    sub_1000089F8(v126, v111, &qword_10119C1B0, &qword_100EDB028);
    if ((*v109)(v66, 1, v18) == 1)
    {
      sub_1000095E8(v66, &qword_10119C1B0, &qword_100EDB028);
    }

    else
    {
      v65(v42, v66, v18);
      v67 = *&v46;
      if (v101)
      {
        v68 = v18;
        v69 = v92;
        LayoutSubview.spacing.getter();
        v70 = v93;
        LayoutSubview.spacing.getter();
        ViewSpacing.distance(to:along:)();
        v67 = v71;
        v72 = *v91;
        v73 = v70;
        v74 = v94;
        (*v91)(v73, v94);
        v75 = v69;
        v18 = v68;
        v76 = v74;
        v42 = v123;
        v72(v75, v76);
        v62 = v128;
      }

      (*v100)(v42, v18);
      v47 = v47 + v67;
    }

    v77 = *(*(v62 + *(type metadata accessor for HeightConstrainedHStackLayout.Cache(0) + 28)) + 16);
    v44 = v108;
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v78 = dispatch thunk of Collection.distance(from:to:)();
    v79 = v128;
    v80 = v77 == v78;
    v81 = v112;
    v43 = v63;
    if (!v80 || (*(v128 + 25) & 1) != 0 || (LOBYTE(v131[0]) = v120 & 1, LOBYTE(v130) = v122 & 1, (static ProposedViewSize.== infix(_:_:)() & 1) == 0))
    {
      LOBYTE(v131[0]) = v120 & 1;
      LOBYTE(v130) = v122 & 1;
      sub_1006641A4(v119, v120 & 1, v121, v122 & 1, v125, v79, v81, v103, v102);
    }

    type metadata accessor for CGSize(0);
    Array.subscript.getter(v82, v131);
    v83 = v132 ? 0.0 : *v131;
    v84 = v132 ? 0.0 : *&v131[1];
    v45 = v110;
    if (v83 == 0.0 && v84 == 0.0)
    {
      break;
    }

    static VerticalAlignment.top.getter();
    if (static VerticalAlignment.== infix(_:_:)())
    {
      static UnitPoint.topLeading.getter();
      v40 = v107;
      v42 = v123;
      v34 = v106;
    }

    else
    {
      static VerticalAlignment.center.getter();
      v85 = static VerticalAlignment.== infix(_:_:)();
      v42 = v123;
      if (v85)
      {
        v133.origin.x = a9;
        v133.origin.y = a10;
        v133.size.width = v95;
        v133.size.height = v96;
        CGRectGetHeight(v133);
        static UnitPoint.leading.getter();
      }

      else
      {
        static VerticalAlignment.bottom.getter();
        if (static VerticalAlignment.== infix(_:_:)())
        {
          v134.origin.x = a9;
          v134.origin.y = a10;
          v134.size.width = v95;
          v134.size.height = v96;
          CGRectGetHeight(v134);
          static UnitPoint.bottomLeading.getter();
        }

        else
        {
          static UnitPoint.topLeading.getter();
        }
      }

      v40 = v107;
      v34 = v106;
    }

    LOBYTE(v131[0]) = 0;
    LOBYTE(v130) = 0;
    LayoutSubview.place(at:anchor:proposal:)();
    v48 = v126;
    sub_1000095E8(v126, &qword_10119C1B0, &qword_100EDB028);
    v47 = v47 + v83;
    v65(v48, v40, v18);
    (v104)(v48, 0, 1, v18);
  }

  v44 = v107;
  v34 = v106;
  if (qword_10117FC48 == -1)
  {
    goto LABEL_35;
  }

LABEL_40:
  swift_once();
LABEL_35:
  v86 = type metadata accessor for Logger();
  sub_1000060E4(v86, qword_1012193F8);
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 0;
    _os_log_impl(&_mh_execute_header, v87, v88, "Cannot place subview because cachedSize even after layout is zero", v89, 2u);
  }

  (*v100)(v44, v18);
LABEL_38:
  sub_1000095E8(v34, &qword_10119C1A8, &qword_100EDB020);
  return sub_1000095E8(v126, &qword_10119C1B0, &qword_100EDB028);
}

uint64_t sub_100666800@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v26 = a3;
  v5 = type metadata accessor for ViewSpacing();
  v24 = *(v5 - 8);
  v25 = v5;
  __chkstk_darwin();
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v23 - v8;
  v10 = type metadata accessor for LayoutSubview();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = v23 - v14;
  v16 = *a1;
  v23[1] = a2;
  LayoutSubviews.subscript.getter();
  LayoutSubview.spacing.getter();
  v17 = *(v11 + 8);
  v17(v15, v10);
  result = v16 + 1;
  if (__OFADD__(v16, 1))
  {
    __break(1u);
  }

  else
  {
    LayoutSubviews.subscript.getter();
    LayoutSubview.spacing.getter();
    v17(v13, v10);
    ViewSpacing.distance(to:along:)();
    v20 = v19;
    v21 = v25;
    v22 = *(v24 + 8);
    v22(v7, v25);
    result = (v22)(v9, v21);
    *v26 = v20;
  }

  return result;
}

double sub_100666A44()
{
  static ProposedViewSize.infinity.getter();
  LayoutSubview.sizeThatFits(_:)();
  v1 = v0;
  static ProposedViewSize.zero.getter();
  LayoutSubview.sizeThatFits(_:)();
  return v1 - v2;
}

double sub_100666AA8@<D0>(double *a1@<X8>)
{
  static ProposedViewSize.infinity.getter();
  LayoutSubview.sizeThatFits(_:)();
  v3 = v2;
  static ProposedViewSize.zero.getter();
  LayoutSubview.sizeThatFits(_:)();
  result = v3 - v4;
  *a1 = result;
  return result;
}

void *sub_100666B34(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v3 = *(sub_10010FC20(&qword_1011920F8, &unk_100ECF320) - 8);
  __chkstk_darwin();
  v38 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v35 = v31 - v5;
  __chkstk_darwin();
  v7 = v31 - v6;
  v8 = *(a2 + 16);
  if (!v8)
  {
    return _swiftEmptyArrayStorage;
  }

  v9 = sub_10010FC20(&qword_1011920F0, &qword_100ECF318);
  v10 = *(v3 + 72);
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v33 = *(v3 + 80);
  v34 = v9;
  v12 = swift_allocObject();
  v32 = xmmword_100EBC6B0;
  *(v12 + 16) = xmmword_100EBC6B0;
  sub_1000089F8(a2 + v11, v12 + v11, &qword_1011920F8, &unk_100ECF320);
  v13 = v8 - 1;
  if (v8 != 1)
  {

    v31[1] = a2;
    v16 = v10 + v11 + a2;
    v37 = _swiftEmptyArrayStorage;
    v17 = v11;
    while (1)
    {
      sub_1000089F8(v16, v7, &qword_1011920F8, &unk_100ECF320);
      if (!*(v12 + 16))
      {
        break;
      }

      v19 = v17;
      v20 = v35;
      sub_1000089F8(v12 + v17, v35, &qword_1011920F8, &unk_100ECF320);
      swift_getAtKeyPath();
      sub_1000095E8(v20, &qword_1011920F8, &unk_100ECF320);
      swift_getAtKeyPath();
      if (v40 == v39)
      {
        sub_1000089F8(v7, v38, &qword_1011920F8, &unk_100ECF320);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_10049ACD8(0, *(v12 + 16) + 1, 1, v12);
        }

        v22 = *(v12 + 16);
        v21 = *(v12 + 24);
        if (v22 >= v21 >> 1)
        {
          v12 = sub_10049ACD8((v21 > 1), v22 + 1, 1, v12);
        }

        sub_1000095E8(v7, &qword_1011920F8, &unk_100ECF320);
        *(v12 + 16) = v22 + 1;
        v18 = v12 + v19 + v22 * v10;
        v17 = v19;
        sub_10003D17C(v38, v18, &qword_1011920F8, &unk_100ECF320);
      }

      else
      {

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v23 = v37;
        }

        else
        {
          v23 = sub_10049AB80(0, v37[2] + 1, 1, v37);
        }

        v25 = v23[2];
        v24 = v23[3];
        if (v25 >= v24 >> 1)
        {
          v23 = sub_10049AB80((v24 > 1), v25 + 1, 1, v23);
        }

        v23[2] = v25 + 1;
        v37 = v23;
        v23[v25 + 4] = v12;
        v17 = v19;
        v26 = swift_allocObject();
        *(v26 + 16) = v32;
        sub_10003D17C(v7, v26 + v19, &qword_1011920F8, &unk_100ECF320);

        v12 = v26;
      }

      v16 += v10;
      if (!--v13)
      {

        v14 = v37;
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_21:

  v10 = v14;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_27:
    v27 = sub_10049AB80(0, v10[2] + 1, 1, v10);
    goto LABEL_23;
  }

  v27 = v14;
LABEL_23:
  v29 = v27[2];
  v28 = v27[3];
  if (v29 >= v28 >> 1)
  {
    v27 = sub_10049AB80((v28 > 1), v29 + 1, 1, v27);
  }

  v27[2] = v29 + 1;
  v27[v29 + 4] = v12;
  v30 = v27;

  return v30;
}

uint64_t sub_100666F78@<X0>(uint64_t a1@<X8>)
{
  if (qword_10117FAF8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LayoutProperties();
  v3 = sub_1000060E4(v2, qword_101219250);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100667020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HeightConstrainedHStackLayout.Cache(0);
  v5 = v4[5];
  v6 = type metadata accessor for LayoutSubviews();
  result = (*(*(v6 - 8) + 16))(a2 + v5, a1, v6);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 256;
  v8 = a2 + v4[6];
  *v8 = 0;
  *(v8 + 8) = 1;
  *(a2 + v4[7]) = _swiftEmptyArrayStorage;
  *(a2 + v4[8]) = 0;
  return result;
}

void (*sub_100667208(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_100260668;
}

unint64_t sub_1006672FC()
{
  result = qword_10119C188;
  if (!qword_10119C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119C188);
  }

  return result;
}

unint64_t sub_100667374()
{
  result = qword_10119C190;
  if (!qword_10119C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119C190);
  }

  return result;
}

uint64_t sub_1006673C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LayoutSubviews();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for HeightConstrainedHStackLayout.Cache(uint64_t a1)
{
  result = qword_10119C230;
  if (!qword_10119C230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100667458()
{
  result = qword_10119C1D0;
  if (!qword_10119C1D0)
  {
    sub_1001109D0(&qword_10119C1A0, &qword_100EDB018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119C1D0);
  }

  return result;
}

uint64_t sub_1006674BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (a2 >= 1)
  {
    if (v5 < 0 || v5 >= a2)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v5 <= 0 && v5 > a2)
  {
    return 0;
  }

LABEL_9:
  v6 = __OFADD__(result, a2);
  result += a2;
  if (v6)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (result < a4 || result > a5)
  {
    goto LABEL_15;
  }

  return result;
}

void sub_10066756C(uint64_t a1)
{
  sub_1000308A0(319, &qword_10119C240, &type metadata for ProposedViewSize);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LayoutSubviews();
    if (v2 <= 0x3F)
    {
      sub_1000308A0(319, &qword_101194178, &type metadata for CGFloat);
      if (v3 <= 0x3F)
      {
        sub_100667658(319);
        if (v4 <= 0x3F)
        {
          sub_1006676B0(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100667658(uint64_t a1)
{
  if (!qword_10119C248)
  {
    type metadata accessor for CGSize(255);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_10119C248);
    }
  }
}

void sub_1006676B0(uint64_t a1)
{
  if (!qword_10119C250)
  {
    sub_1001109D0(&unk_10119C258, &qword_100EDB0A8);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10119C250);
    }
  }
}

uint64_t sub_100667714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  type metadata accessor for DynamicTypeSize();
  __chkstk_darwin();
  v6 = (&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = type metadata accessor for EnvironmentValues();
  v7 = *(v33 - 8);
  __chkstk_darwin();
  v32 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  type metadata accessor for AdaptativeContainerStack._LayoutProvider(0, v9, v10, v11);
  __chkstk_darwin();
  v34 = &v31 - v12;
  v36 = v13;
  v37 = v9;
  v39[0] = v13;
  v39[1] = v9;
  v39[2] = &off_1010B9548;
  v39[3] = v10;
  v14 = type metadata accessor for LayoutProviderStack(0, v39);
  v38 = *(v14 - 8);
  __chkstk_darwin();
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v31 - v17;
  v19 = *(v3 + 48);
  if (*(v3 + 56) != 1)
  {

    v20 = static os_log_type_t.fault.getter();
    v31 = v6;
    v21 = v20;
    v22 = static Log.runtimeIssuesLog.getter();
    v6 = v31;
    os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v22, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v23 = v32;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v25 = sub_10027AC30(v19, 0, v24);
    (*(v7 + 8))(v23, v33, v25);
    LOBYTE(v19) = v39[0];
  }

  sub_10056CABC(v6);
  v26 = v34;
  v27 = v37;
  sub_100667AC0(v19, v6, v37, v10, v34);
  *(&v30 + 1) = &off_1010B9548;
  *&v30 = v27;
  LayoutProviderStack.init(layoutProvider:alignment:spacing:content:)(v26, *v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), v36, v16, v30, v10);
  swift_getWitnessTable();
  sub_100663950();
  v28 = *(v38 + 8);

  v28(v16, v14);
  sub_100663950();
  return (v28)(v18, v14);
}

uint64_t sub_100667AC0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  *a5 = a1;
  v7 = *(type metadata accessor for AdaptativeContainerStack._LayoutProvider(0, a3, a4, a4) + 36);
  v8 = type metadata accessor for DynamicTypeSize();
  v9 = *(*(v8 - 8) + 32);

  return v9(&a5[v7], a2, v8);
}

unint64_t sub_100667B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v11 = *v5;
  v12 = DynamicTypeSize.isAccessibilitySize.getter();
  if (v11 == 2 || (v11 & 1) == 0)
  {
    *(a5 + 24) = &type metadata for VStackLayout;
    result = sub_100667EEC();
  }

  else if (v12)
  {
    a1 = static VerticalAlignment.top.getter();
    *(a5 + 24) = &type metadata for HStackLayout;
    result = sub_100667F94();
  }

  else
  {
    *(a5 + 24) = &type metadata for HeightConstrainedHStackLayout;
    result = sub_100667F40();
    a1 = a2;
  }

  *(a5 + 32) = result;
  *a5 = a1;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4 & 1;
  return result;
}

uint64_t sub_100667C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = swift_getKeyPath();
  *(a9 + 56) = 0;
  v13 = *(type metadata accessor for AdaptativeContainerStack(0, a7, a8, v12) + 48);
  *(a9 + v13) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);

  return swift_storeEnumTagMultiPayload();
}

void sub_100667CCC(uint64_t a1)
{
  sub_1000308A0(319, &qword_101194178, &type metadata for CGFloat);
  if (v1 <= 0x3F)
  {
    sub_10001F7E8();
    if (v2 <= 0x3F)
    {
      sub_10028D4F4(319);
      if (v3 <= 0x3F)
      {
        sub_100117C38(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100667E30(uint64_t a1)
{
  sub_1000308A0(319, &qword_10119C398, &type metadata for AdaptativeContainerOrientation);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DynamicTypeSize();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100667EEC()
{
  result = qword_10119C3A0;
  if (!qword_10119C3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119C3A0);
  }

  return result;
}

unint64_t sub_100667F40()
{
  result = qword_10119C3A8;
  if (!qword_10119C3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119C3A8);
  }

  return result;
}

unint64_t sub_100667F94()
{
  result = qword_10119C3B0;
  if (!qword_10119C3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119C3B0);
  }

  return result;
}

void sub_100667FE8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  if (qword_10117FB08 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000060E4(v11, qword_101219280);
  swift_retain_n();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v93 = v7;
    v15 = swift_slowAlloc();
    aBlock = v15;
    *v14 = 136447234;
    v16 = sub_10066A7FC();
    v18 = sub_1000105AC(v16, v17, &aBlock);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2050;
    v19 = [*(a1 + 32) state];

    *(v14 + 14) = v19;

    *(v14 + 22) = 2048;
    v20 = [*(a1 + 40) state];

    *(v14 + 24) = v20;

    *(v14 + 32) = 2050;
    v21 = [*(a1 + 48) state];

    *(v14 + 34) = v21;

    *(v14 + 42) = 2050;
    v22 = [*(a1 + 56) state];

    *(v14 + 44) = v22;

    _os_log_impl(&_mh_execute_header, v12, v13, "Reversing %{public}s, tCVPA=%{public}ld fPOA=%ld sPOA=%{public}ld aA=%{public}ld", v14, 0x34u);
    sub_10000959C(v15);
  }

  else
  {
  }

  _s13AnimationDataC7ContextCMa();
  v23 = swift_allocObject();
  *(a1 + 80) = v23;

  v24 = &stru_101148000;
  if (*(a1 + 73) != 1)
  {
    v38 = *(a1 + 72);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    v41 = os_log_type_enabled(v39, v40);
    if (v38 != 1)
    {
      if (v41)
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "reverse path 3", v52, 2u);
      }

      v53 = *(a1 + 40);
      v54 = swift_allocObject();
      *(v54 + 16) = v23;
      *(v54 + 24) = a1;
      v102 = sub_10066B618;
      v103 = v54;
      aBlock = _NSConcreteStackBlock;
      v99 = 1107296256;
      v100 = sub_100338AB8;
      v101 = &unk_1010B9700;
      v55 = _Block_copy(&aBlock);

      v56 = v53;

      [v56 addCompletion:v55];
      _Block_release(v55);

      if ([*(a1 + 40) state] == 1)
      {
        v57 = *(a1 + 40);
        [v57 setReversed:{objc_msgSend(v57, "isReversed") ^ 1}];

        v24 = &stru_101148000;
        v31 = &selRef_setContacts_;
        goto LABEL_37;
      }

      [*(a1 + 24) setAlpha:0.0];
      v73 = *(a1 + 40);
      v74 = swift_allocObject();
      *(v74 + 16) = a1;
      *(v74 + 24) = 0;
      v102 = sub_10066B77C;
      v103 = v74;
      aBlock = _NSConcreteStackBlock;
      v99 = 1107296256;
      v100 = sub_10002BC98;
      v101 = &unk_1010B9750;
      v75 = _Block_copy(&aBlock);

      v76 = v73;

      [v76 addAnimations:v75];
      _Block_release(v75);

      [*(a1 + 40) startAnimation];
      v24 = &stru_101148000;
      goto LABEL_36;
    }

    if (v41)
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "reverse path 2 - secondPhaseStarted", v42, 2u);
    }

    if ([*(a1 + 48) state] == 1)
    {
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();
      v45 = &selRef_setContacts_;
      if (os_log_type_enabled(v43, v44))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "reverse path 2 - secondPhaseStarted - active", v46, 2u);
      }

      [*(a1 + 48) stopAnimation:0];
    }

    else
    {
      if ([*(a1 + 48) state] != 2)
      {
LABEL_31:
        v61 = *(a1 + 48);
        v62 = swift_allocObject();
        *(v62 + 16) = v8;
        *(v62 + 24) = 0;
        v102 = sub_10066B654;
        v103 = v62;
        aBlock = _NSConcreteStackBlock;
        v99 = 1107296256;
        v100 = sub_10002BC98;
        v101 = &unk_1010B9840;
        v63 = _Block_copy(&aBlock);
        v64 = v8;
        v65 = v61;

        [v65 addAnimations:v63];
        _Block_release(v63);

        v66 = *(a1 + 48);
        v67 = swift_allocObject();
        *(v67 + 16) = v23;
        *(v67 + 24) = a1;
        *(v67 + 32) = 0;
        v102 = sub_10066B6DC;
        v103 = v67;
        aBlock = _NSConcreteStackBlock;
        v99 = 1107296256;
        v24 = &stru_101148000;
        v100 = sub_100338AB8;
        v101 = &unk_1010B9890;
        v68 = _Block_copy(&aBlock);

        v69 = v66;

        [v69 addCompletion:v68];
        _Block_release(v68);

        [*(a1 + 48) startAnimation];
LABEL_36:
        v31 = &selRef_setContacts_;
        goto LABEL_37;
      }

      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();
      v45 = &selRef_setContacts_;
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v58, v59, "reverse path 2 - secondPhaseStarted - stopped", v60, 2u);
      }
    }

    [*(a1 + 48) v45[262]];
    goto LABEL_31;
  }

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "reverse path 1 - isReversed", v27, 2u);
  }

  if ([*(a1 + 48) state] == 1)
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "reverse path 1 - reversing second phase", v30, 2u);
    }

    [*(a1 + 48) stopAnimation:0];
    v31 = &selRef_setContacts_;
    [*(a1 + 48) finishAnimationAtPosition:2];
    v32 = *(a1 + 48);
    v33 = swift_allocObject();
    *(v33 + 16) = v8;
    v102 = sub_10066B778;
    v103 = v33;
    aBlock = _NSConcreteStackBlock;
    v99 = 1107296256;
    v100 = sub_10002BC98;
    v101 = &unk_1010B9958;
    v34 = _Block_copy(&aBlock);
    v35 = v32;
    v36 = v8;

    [v35 addAnimations:v34];
    _Block_release(v34);

    v37 = *(a1 + 48);
  }

  else
  {
    v47 = *(a1 + 40);
    v48 = swift_allocObject();
    v48[2] = v23;
    v48[3] = a1;
    v48[4] = v8;
    v102 = sub_10066B6E8;
    v103 = v48;
    aBlock = _NSConcreteStackBlock;
    v99 = 1107296256;
    v100 = sub_100338AB8;
    v101 = &unk_1010B98E0;
    v49 = _Block_copy(&aBlock);

    v50 = v8;
    v51 = v47;

    [v51 addCompletion:v49];
    _Block_release(v49);

    if ([*(a1 + 40) state] == 1)
    {
      [*(a1 + 48) stopAnimation:0];
    }

    else
    {
      [*(a1 + 24) setAlpha:1.0];
    }

    v31 = &selRef_setContacts_;
    v70 = *(a1 + 40);
    v102 = sub_1005EB120;
    v103 = a1;
    aBlock = _NSConcreteStackBlock;
    v99 = 1107296256;
    v100 = sub_10002BC98;
    v101 = &unk_1010B9908;
    v71 = _Block_copy(&aBlock);

    v72 = v70;

    [v72 addAnimations:v71];
    _Block_release(v71);

    v37 = *(a1 + 40);
  }

  [v37 startAnimation];
LABEL_37:
  v77 = *(a1 + 32);
  [v77 setReversed:{objc_msgSend(v77, "isReversed") ^ 1}];

  v78 = *(a1 + 56);
  v79 = swift_allocObject();
  *(v79 + 16) = a2;
  *(v79 + 24) = a3;
  v80 = v78;

  UIViewPropertyAnimator.addModifiedAnimations(with:animations:)(1, sub_100029B6C, v79);

  v81 = [*(a1 + 56) state];
  if (!v81)
  {
    v81 = [*(a1 + 56) v24[188].name];
  }

  a4(v81);
  [*(a1 + 64) stopAnimation:0];
  [*(a1 + 64) v31[262]];
  v82 = *(a1 + 64);
  v83 = swift_allocObject();
  *(v83 + 16) = v8;
  v84 = v8;
  v85 = v82;
  UIViewPropertyAnimator.addModifiedAnimations(with:animations:)(1, sub_1005EA90C, v83);

  [*(a1 + 64) v24[188].name];
  *(a1 + 73) = (*(a1 + 73) & 1) == 0;
  *(a1 + 72) = 1;
  v86 = swift_allocObject();
  v86[2] = v23;
  v86[3] = a1;
  v86[4] = a6;
  v86[5] = a7;
  v87 = swift_allocObject();
  *(v87 + 16) = sub_10066B648;
  *(v87 + 24) = v86;
  swift_beginAccess();
  v88 = *(a1 + 88);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 88) = v88;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v88 = sub_10006429C(0, v88[2] + 1, 1, v88);
    *(a1 + 88) = v88;
  }

  v91 = v88[2];
  v90 = v88[3];
  if (v91 >= v90 >> 1)
  {
    v88 = sub_10006429C((v90 > 1), v91 + 1, 1, v88);
  }

  v88[2] = v91 + 1;
  v92 = &v88[2 * v91];
  v92[4] = sub_100029B94;
  v92[5] = v87;
  *(a1 + 88) = v88;
  swift_endAccess();
}

uint64_t sub_100668E18()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101219268);
  sub_1000060E4(v0, qword_101219268);
  return static Logger.NowPlaying.category(_:)(0x697469736E617254, 0xEB00000000736E6FLL);
}

uint64_t sub_100668E84()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101219280);
  sub_1000060E4(v0, qword_101219280);
  return static Logger.NowPlaying.category(_:)(0xD000000000000013, 0x8000000100E53AF0);
}

id sub_100668EE8()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtCC5Music24NowPlayingViewController9TimeLabel____lazy_storage___dateFormatter;
  v7 = *(v1 + OBJC_IVAR____TtCC5Music24NowPlayingViewController9TimeLabel____lazy_storage___dateFormatter);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtCC5Music24NowPlayingViewController9TimeLabel____lazy_storage___dateFormatter);
  }

  else
  {
    v9 = [objc_allocWithZone(NSDateFormatter) init];
    Locale.init(identifier:)();
    isa = Locale._bridgeToObjectiveC()().super.isa;
    (*(v3 + 8))(v5, v2);
    [v9 setLocale:isa];

    v11 = String._bridgeToObjectiveC()();
    [v9 setDateFormat:v11];

    v12 = *(v1 + v6);
    *(v1 + v6) = v9;
    v8 = v9;

    v7 = 0;
  }

  v13 = v7;
  return v8;
}

void sub_10066908C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtCC5Music24NowPlayingViewController9TimeLabel_displayLink] = 0;
  *&v5[OBJC_IVAR____TtCC5Music24NowPlayingViewController9TimeLabel____lazy_storage___dateFormatter] = 0;
  v26.receiver = v5;
  v26.super_class = _s9TimeLabelCMa();
  v10 = objc_msgSendSuper2(&v26, "initWithFrame:", a2, a3, a4, a5);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 grayColor];
  [v12 setBackgroundColor:v13];

  v14 = objc_opt_self();
  v15 = v12;
  v16 = [v14 monospacedDigitSystemFontOfSize:17.0 weight:UIFontWeightRegular];
  [v15 setFont:v16];

  sub_10066B5C4();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v18 = CADisplayLink.init(handler:)(sub_10066B610, v17);
  v19 = OBJC_IVAR____TtCC5Music24NowPlayingViewController9TimeLabel_displayLink;
  v20 = *&v15[OBJC_IVAR____TtCC5Music24NowPlayingViewController9TimeLabel_displayLink];
  *&v15[OBJC_IVAR____TtCC5Music24NowPlayingViewController9TimeLabel_displayLink] = v18;
  v21 = v18;

  v27 = CAFrameRateRange.init(minimum:maximum:preferred:)(80.0, 120.0, 0x42F00000);
  [v21 setPreferredFrameRateRange:{*&v27.minimum, *&v27.maximum, *&v27.preferred}];

  v22 = *&v15[v19];
  if (v22)
  {
    v23 = objc_opt_self();
    v24 = v22;
    v25 = [v23 mainRunLoop];
    [v24 addToRunLoop:v25 forMode:NSRunLoopCommonModes];
  }

  else
  {
    __break(1u);
  }
}

void sub_1006692E4(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_100668EE8();
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v3 + 8))(v5, v2);
    v10 = [v8 stringFromDate:isa];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = String._bridgeToObjectiveC()();

    [v7 setText:v11];
  }
}

id sub_100669500(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s9TimeLabelCMa();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1006695A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 72) = 0;
  v6 = *(v3 + 16);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v16[4] = sub_10066B774;
  v16[5] = v7;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_100338AB8;
  v16[3] = &unk_1010B9688;
  v8 = _Block_copy(v16);
  v9 = v6;

  [v9 addCompletion:v8];
  _Block_release(v8);

  v10 = *(v3 + 24);

  v10(v11);

  v12 = *(v3 + 40);
  v13 = *(v3 + 48);
  v14 = *(v3 + 16);

  UIViewPropertyAnimator.addModifiedAnimations(with:animations:)(1, v12, v13);

  return [*(v3 + 16) startAnimationAfterDelay:*(v3 + 56)];
}

id sub_100669718(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 72) = 0;
  v6 = *(v3 + 16);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v16[4] = sub_10066B500;
  v16[5] = v7;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_100338AB8;
  v16[3] = &unk_1010B9638;
  v8 = _Block_copy(v16);
  v9 = v6;

  [v9 addCompletion:v8];
  _Block_release(v8);

  v10 = *(v3 + 40);

  v10(v11);

  v12 = *(v3 + 24);
  v13 = *(v3 + 32);
  v14 = *(v3 + 16);

  UIViewPropertyAnimator.addModifiedAnimations(with:animations:)(1, v12, v13);

  return [*(v3 + 16) startAnimationAfterDelay:*(v3 + 64)];
}

uint64_t sub_10066988C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1006698D4()
{
  v1 = *(v0 + 56);
  v2 = v1 >> 62;
  v3 = 0xE600000000000000;
  v4 = 0x73636972796CLL;
  if (v1 >> 62 != 1)
  {
    v4 = 0x72616C75676572;
    v3 = 0xE700000000000000;
  }

  v5 = v2 == 0;
  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6575657571;
  }

  if (v5)
  {
    v3 = 0xE500000000000000;
  }

  if ((~v1 & 0xF000000000000007) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 7104878;
  }

  if ((~v1 & 0xF000000000000007) != 0)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  _StringGuts.grow(_:)(31);
  v9._object = 0x8000000100E53C50;
  v9._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v9);
  _print_unlocked<A, B>(_:_:)();
  v10._countAndFlagsBits = 0x3D65646F6D20;
  v10._object = 0xE600000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = v7;
  v11._object = v8;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 62;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  return 0;
}

void sub_100669A1C(uint64_t a1, const char *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_10117FB00 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000060E4(v5, qword_101219268);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22[0] = v9;
      *v8 = 136446210;

      v10 = sub_1006698D4();
      v12 = v11;

      v13 = sub_1000105AC(v10, v12, v22);

      *(v8 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v6, v7, a2, v8, 0xCu);
      sub_10000959C(v9);
    }

    v14 = *(v4 + 16);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      *(v4 + 16) = v16;
      if (v16 == 2)
      {
        swift_beginAccess();
        v17 = *(v4 + 24);
        v18 = *(v17 + 16);
        if (v18)
        {

          v19 = v17 + 40;
          do
          {
            v20 = *(v19 - 8);

            v20(v21);

            v19 += 16;
            --v18;
          }

          while (v18);
        }

        *(v4 + 24) = _swiftEmptyArrayStorage;
      }

      else
      {
      }
    }
  }
}

void sub_100669C5C()
{
  v1 = v0;
  v2 = 0xD000000000000012;
  *(v0 + 48) = (*(v0 + 48) & 1) == 0;
  v3 = [*(*(v0 + 32) + 16) state];
  v4 = *(v0 + 32);
  if (v3)
  {
    v5 = *(v4 + 16);
    [v5 setReversed:{objc_msgSend(v5, "isReversed") ^ 1}];

    v6 = "<NPQVC.AnimationData ";
    v7 = 0xD000000000000013;
  }

  else if (*(v4 + 72) == 1)
  {
    v8 = *(v0 + 16);
    v9 = __OFSUB__(v8, 1);
    v10 = v8 - 1;
    if (v9)
    {
      __break(1u);
      goto LABEL_36;
    }

    *(v0 + 16) = v10;
    if (v10 == 2)
    {
      swift_beginAccess();
      v11 = *(v0 + 24);
      v12 = *(v11 + 16);
      if (v12)
      {

        v13 = v11 + 40;
        do
        {
          v14 = *(v13 - 8);

          v14(v15);

          v13 += 16;
          --v12;
        }

        while (v12);
      }

      *(v0 + 24) = _swiftEmptyArrayStorage;
    }

    v16 = *(v0 + 48);
    v17 = swift_allocObject();
    swift_weakInit();

    if (v16)
    {
      sub_100669718(sub_10066B5A0, v17);

      v6 = "Position: starting";
      v7 = 0xD00000000000001BLL;
    }

    else
    {
      sub_1006695A4(sub_10066B57C, v17);

      v6 = "ve but not complete";
      v7 = 0xD000000000000012;
    }
  }

  else
  {
    v6 = "Opacity: starting reversed";
    v7 = 0xD000000000000023;
  }

  v18 = [*(*(v1 + 40) + 16) state];
  v19 = *(v1 + 40);
  if (!v18)
  {
    if (*(v19 + 72) != 1)
    {
      v21 = "Opacity: reversing";
      v2 = 0xD000000000000022;
      goto LABEL_29;
    }

    v22 = *(v1 + 16);
    v9 = __OFSUB__(v22, 1);
    v23 = v22 - 1;
    if (!v9)
    {
      *(v1 + 16) = v23;
      if (v23 == 2)
      {
        swift_beginAccess();
        v24 = *(v1 + 24);
        v25 = *(v24 + 16);
        if (v25)
        {

          v26 = v24 + 40;
          do
          {
            v27 = *(v26 - 8);

            v27(v28);

            v26 += 16;
            --v25;
          }

          while (v25);
        }

        *(v1 + 24) = _swiftEmptyArrayStorage;
      }

      v29 = *(v1 + 48);
      v30 = swift_allocObject();
      swift_weakInit();

      if (v29)
      {
        sub_100669718(sub_10066B558, v30);

        v21 = "Opacity: starting";
        v2 = 0xD00000000000001ALL;
      }

      else
      {
        sub_1006695A4(sub_10066B534, v30);

        v21 = "e but not complete";
        v2 = 0xD000000000000011;
      }

      goto LABEL_29;
    }

LABEL_36:
    __break(1u);
    return;
  }

  v20 = *(v19 + 16);
  [v20 setReversed:{objc_msgSend(v20, "isReversed") ^ 1}];

  v21 = "Position: reversing";
LABEL_29:
  if (qword_10117FB00 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_1000060E4(v31, qword_101219268);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v34 = 136446722;
    v35 = sub_1006698D4();
    v37 = sub_1000105AC(v35, v36, &v40);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2082;
    v38 = sub_1000105AC(v7, v6 | 0x8000000000000000, &v40);

    *(v34 + 14) = v38;
    *(v34 + 22) = 2082;
    v39 = sub_1000105AC(v2, v21 | 0x8000000000000000, &v40);

    *(v34 + 24) = v39;
    _os_log_impl(&_mh_execute_header, v32, v33, "%{public}s %{public}s %{public}s", v34, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_10066A204(uint64_t a1, const char *a2)
{
  if (qword_10117FB00 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000060E4(v3, qword_101219268);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22[0] = v7;
    *v6 = 136446210;
    swift_beginAccess();
    swift_weakLoadStrong();
    sub_10010FC20(&unk_101197A20, &qword_100ED6798);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, v22);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, a2, v6, 0xCu);
    sub_10000959C(v7);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = *(Strong + 16);
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      __break(1u);
    }

    else
    {
      *(Strong + 16) = v14;
      if (v14 == 2)
      {
        v15 = Strong;
        swift_beginAccess();
        v16 = *(v15 + 24);
        v17 = *(v16 + 16);
        if (v17)
        {

          v18 = v16 + 40;
          do
          {
            v19 = *(v18 - 8);

            v19(v20);

            v18 += 16;
            --v17;
          }

          while (v17);

          v21 = v15;
        }

        else
        {
          v21 = v15;
        }

        *(v21 + 24) = _swiftEmptyArrayStorage;
      }

      else
      {
      }
    }
  }
}

uint64_t sub_10066A464()
{

  sub_1005EB32C(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  return swift_deallocClassInstance();
}

uint64_t sub_10066A52C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x657370616C6C6F63;
  }

  else
  {
    v3 = 0x72616C75676572;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (*a2)
  {
    v5 = 0x657370616C6C6F63;
  }

  else
  {
    v5 = 0x72616C75676572;
  }

  if (*a2)
  {
    v6 = 0xE900000000000064;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10066A5D8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_10066A660(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_10066A6D4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10066A758(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10109C0F0, *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_10066A7B8(uint64_t *a1@<X8>)
{
  v2 = 0x72616C75676572;
  if (*v1)
  {
    v2 = 0x657370616C6C6F63;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000064;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10066A7FC()
{
  _StringGuts.grow(_:)(32);
  v1._object = 0x8000000100E53B10;
  v1._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v1);
  _print_unlocked<A, B>(_:_:)();
  v2._countAndFlagsBits = 0x3D646E696B20;
  v2._object = 0xE600000000000000;
  String.append(_:)(v2);
  if (*(v0 + 16))
  {
    v3 = 0x657370616C6C6F63;
  }

  else
  {
    v3 = 0x72616C75676572;
  }

  if (*(v0 + 16))
  {
    v4 = 0xE900000000000064;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  v5 = v4;
  String.append(_:)(*&v3);

  v6._countAndFlagsBits = 62;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 0;
}

double sub_10066A940(uint64_t a1, uint64_t a2, const char *a3, ...)
{
  if (qword_10117FB08 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000060E4(v4, qword_101219280);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13[0] = v8;
    *v7 = 136446210;
    swift_beginAccess();
    swift_weakLoadStrong();
    sub_10010FC20(&qword_10119C9A0, &qword_100EDB3D0);
    v9 = String.init<A>(describing:)();
    v11 = sub_1000105AC(v9, v10, v13);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, a3, v7, 0xCu);
    sub_10000959C(v8);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10066AB04();
  }

  return result;
}

void sub_10066AB04()
{
  v1 = *(v0 + 96);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 96) = v3;
    if (v3 == 5)
    {
      swift_beginAccess();
      v4 = *(v0 + 88);
      v5 = *(v4 + 16);
      if (v5)
      {

        v6 = v4 + 40;
        do
        {
          v7 = *(v6 - 8);

          v7(v8);

          v6 += 16;
          --v5;
        }

        while (v5);
      }

      *(v0 + 88) = _swiftEmptyArrayStorage;
    }
  }
}

id *sub_10066ABD0()
{

  return v0;
}

uint64_t sub_10066AC28()
{
  sub_10066ABD0();

  return swift_deallocClassInstance();
}

unint64_t sub_10066ACB8()
{
  result = qword_10119C990;
  if (!qword_10119C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119C990);
  }

  return result;
}

void sub_10066AD30(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  if (*(a3 + 80) == a2)
  {
    if (qword_10117FB08 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000060E4(v6, qword_101219280);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "reverse path 1 - completion", v9, 2u);
    }

    [*(a3 + 24) setAlpha:0.0];
    v10 = *&a4[OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerView];
    if (v10)
    {
      [v10 setAlpha:0.0];
      if ([*(a3 + 48) state] == 2)
      {
        [*(a3 + 48) finishAnimationAtPosition:2];
      }

      v11 = *(a3 + 48);
      v12 = swift_allocObject();
      *(v12 + 16) = a4;
      v16[4] = sub_10066B6F4;
      v16[5] = v12;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 1107296256;
      v16[2] = sub_10002BC98;
      v16[3] = &unk_1010B99A8;
      v13 = _Block_copy(v16);
      v14 = v11;
      v15 = a4;

      [v14 addAnimations:v13];
      _Block_release(v13);

      [*(a3 + 48) startAnimation];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10066AF58(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (*(a3 + 80) == a2)
  {
    v20[12] = v4;
    v20[13] = v5;
    if (qword_10117FB08 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000060E4(v8, qword_101219280);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67240192;
      *(v11 + 4) = a4 & 1;
      _os_log_impl(&_mh_execute_header, v9, v10, "reverse path 2 - secondPhaseStarted - completion isReversed=%{BOOL,public}d", v11, 8u);
    }

    if ([*(a3 + 40) state] == 1)
    {
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "reverse path 2 - secondPhaseStarted - completion stopping first phase", v14, 2u);
      }

      [*(a3 + 40) stopAnimation:0];
      [*(a3 + 40) finishAnimationAtPosition:2];
    }

    v15 = 0.0;
    if (a4)
    {
      v15 = 1.0;
    }

    [*(a3 + 24) setAlpha:v15];
    v16 = *(a3 + 40);
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4 & 1;
    v20[4] = sub_10066B724;
    v20[5] = v17;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1107296256;
    v20[2] = sub_10002BC98;
    v20[3] = &unk_1010B99F8;
    v18 = _Block_copy(v20);
    v19 = v16;

    [v19 addAnimations:v18];
    _Block_release(v18);

    [*(a3 + 40) startAnimation];
  }
}

uint64_t sub_10066B208(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (*(a2 + 80) == result)
  {
    v14[9] = v3;
    v14[10] = v4;
    if (qword_10117FB08 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000060E4(v6, qword_101219280);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14[0] = v10;
      *v9 = 136315138;
      v11 = sub_10066A7FC();
      v13 = sub_1000105AC(v11, v12, v14);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "reverse %s completion", v9, 0xCu);
      sub_10000959C(v10);
    }

    return a3();
  }

  return result;
}

uint64_t sub_10066B388(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = _swiftEmptyArrayStorage;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0xF000000000000007;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  v3 = swift_allocObject();
  swift_weakInit();

  sub_1006695A4(sub_10066B4B8, v3);

  v4 = swift_allocObject();
  swift_weakInit();

  sub_1006695A4(sub_10066B4DC, v4);

  return v2;
}

uint64_t sub_10066B500()
{
  v1 = *(v0 + 24);
  *(*(v0 + 16) + 72) = 1;
  return v1();
}

unint64_t sub_10066B5C4()
{
  result = qword_10119C998;
  if (!qword_10119C998)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10119C998);
  }

  return result;
}

void sub_10066B618()
{
  if (*(*(v0 + 24) + 80) == *(v0 + 16))
  {
    sub_10066AB04();
  }
}

id sub_10066B654()
{
  result = *(*(v0 + 16) + OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerView);
  if (result)
  {
    v2 = 0.0;
    if (*(v0 + 24))
    {
      v2 = 1.0;
    }

    return [result setAlpha:v2];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10066B690(uint64_t a1)
{

  return swift_deallocObject();
}

id sub_10066B6F8()
{
  result = *(*(v0 + 16) + OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerView);
  if (result)
  {
    return [result setAlpha:1.0];
  }

  __break(1u);
  return result;
}

id sub_10066B724()
{
  v1 = 1.0;
  if (*(v0 + 24))
  {
    v1 = 0.0;
  }

  return [*(*(v0 + 16) + 24) setAlpha:v1];
}

void *sub_10066B7A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100015C04(0, v1, 0);
  v24 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v4 = result;
  v5 = 0;
  v23 = v1;
  while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
  {
    v8 = v4 >> 6;
    if ((*(v24 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
    {
      goto LABEL_21;
    }

    v9 = *(a1 + 36);
    result = Library.Menu.Identifier.rawValue.getter(*(*(a1 + 48) + v4));
    v12 = _swiftEmptyArrayStorage[2];
    v11 = _swiftEmptyArrayStorage[3];
    if (v12 >= v11 >> 1)
    {
      v21 = v10;
      v22 = result;
      sub_100015C04((v11 > 1), v12 + 1, 1);
      v10 = v21;
      result = v22;
    }

    _swiftEmptyArrayStorage[2] = v12 + 1;
    v13 = &_swiftEmptyArrayStorage[2 * v12];
    v13[4] = result;
    v13[5] = v10;
    v6 = 1 << *(a1 + 32);
    if (v4 >= v6)
    {
      goto LABEL_22;
    }

    v14 = *(v24 + 8 * v8);
    if ((v14 & (1 << v4)) == 0)
    {
      goto LABEL_23;
    }

    if (v9 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v4 & 0x3F));
    if (v15)
    {
      v6 = __clz(__rbit64(v15)) | v4 & 0x7FFFFFFFFFFFFFC0;
      v7 = v23;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v7 = v23;
      v18 = (a1 + 64 + 8 * v8);
      while (v17 < (v6 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_1000D8F7C(v4, v9, 0);
          v6 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_1000D8F7C(v4, v9, 0);
    }

LABEL_4:
    ++v5;
    v4 = v6;
    if (v5 == v7)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_10066B9CC(uint64_t a1)
{
  sub_1006709F8();
  v2 = 0;
  v12[2] = Set.init(minimumCapacity:)();
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v2;
LABEL_9:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v9 = (*(a1 + 48) + ((v7 << 10) | (16 * v8)));
    v10 = *v9;
    v11 = v9[1];

    sub_1003B3B90(v12, v10, v11);
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

char *sub_10066BAEC(void *a1, char a2)
{
  sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  __chkstk_darwin();
  v5 = &v33 - v4;
  v6 = _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin();
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v10 = (&v33 - v9);
  _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin();
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100217F14();
  UITraitCollection.subscript.getter();
  v13 = sub_10049CB78();

  switch(a2)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_14;
    case 3:
      goto LABEL_17;
    case 4:
      if ([a1 userInterfaceIdiom] == 3)
      {
        result = [objc_allocWithZone(MCDSongsTableViewController) initWithShowLocalContent:v13 & 1];
        if (!result)
        {
          __break(1u);
          return [objc_allocWithZone(type metadata accessor for LibraryDownloadingViewController(0)) init];
        }
      }

      else
      {
        v20 = objc_allocWithZone(type metadata accessor for LibrarySongsViewController(0));
        return sub_100522954(v13 & 1);
      }

      return result;
    case 5:
      goto LABEL_26;
    case 6:
      goto LABEL_29;
    case 7:
      goto LABEL_20;
    case 8:
      if ([a1 userInterfaceIdiom] != 3)
      {
        goto LABEL_47;
      }

      result = [objc_allocWithZone(MCDCompilationsTableViewController) initWithShowLocalContent:v13 & 1];
      if (result)
      {
        return result;
      }

      __break(1u);
      goto LABEL_34;
    case 9:
      if ([a1 userInterfaceIdiom] == 3)
      {
        result = [objc_allocWithZone(MCDComposersTableViewController) initWithShowLocalContent:v13 & 1];
        if (!result)
        {
          __break(1u);
LABEL_14:
          if ([a1 userInterfaceIdiom] == 3)
          {
            result = [objc_allocWithZone(MCDArtistsTableViewController) initWithShowLocalContent:v13 & 1];
            if (!result)
            {
              __break(1u);
LABEL_17:
              if ([a1 userInterfaceIdiom] == 3)
              {
                result = [objc_allocWithZone(MCDAlbumsTableViewController) initWithShowLocalContent:v13 & 1];
                if (!result)
                {
                  __break(1u);
LABEL_20:
                  if ([a1 userInterfaceIdiom] == 3)
                  {
                    result = [objc_allocWithZone(MCDGenresViewController) initWithShowLocalContent:v13 & 1];
                    if (!result)
                    {
                      __break(1u);
LABEL_23:
                      if ([a1 userInterfaceIdiom] == 3)
                      {
                        result = [objc_allocWithZone(MCDPlaylistsViewController) initWithShowLocalContent:v13 & 1];
                        if (!result)
                        {
                          __break(1u);
LABEL_26:
                          if ([a1 userInterfaceIdiom] == 3)
                          {
                            result = [objc_opt_self() madeForYouViewControllerWithShowLocalContent:v13 & 1];
                            if (!result)
                            {
                              __break(1u);
LABEL_29:
                              v16 = type metadata accessor for MusicVideo();
                              (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
                              v17 = objc_allocWithZone(type metadata accessor for LibraryMusicVideosViewController(0));
                              return sub_100507278(v13 & 1, v5);
                            }
                          }

                          else
                          {
                            if (qword_10117F298 != -1)
                            {
                              swift_once();
                            }

                            v29 = sub_1000060E4(v6, qword_101218730);
                            sub_100670A4C(v29, v8, _s9PlaylistsV5ScopeVMa);
                            v30 = [a1 horizontalSizeClass] != 2;
                            v31 = objc_allocWithZone(type metadata accessor for LibraryPlaylistsViewController(0));
                            return sub_10037E11C(v8, v13 & 1, v30);
                          }
                        }
                      }

                      else
                      {
                        v26 = [a1 horizontalSizeClass];
                        v27 = *(v6 + 20);
                        v28 = type metadata accessor for Playlist.Folder();
                        (*(*(v28 - 8) + 56))(v10 + v27, 1, 1, v28);
                        if (qword_10117F5D8 != -1)
                        {
                          swift_once();
                        }

                        *v10 = qword_101218AB8;
                        *(v10 + *(v6 + 24)) = 0;
                        objc_allocWithZone(type metadata accessor for LibraryPlaylistsViewController(0));

                        return sub_10037E11C(v10, v13 & 1, v26 != 2);
                      }
                    }
                  }

                  else
                  {
                    v24 = objc_allocWithZone(type metadata accessor for LibraryGenresViewController(0));
                    return sub_1003D14A8(v13 & 1);
                  }
                }
              }

              else
              {
LABEL_47:
                swift_storeEnumTagMultiPayload();
                v32 = objc_allocWithZone(type metadata accessor for LibraryAlbumsViewController(0));
                return sub_1006E7454(v12, v13 & 1);
              }
            }
          }

          else
          {
            v22 = sub_10045B524(a1);
            v23 = objc_allocWithZone(type metadata accessor for LibraryArtistsContainerViewController());
            return sub_100457798(v22 & 1, v13 & 1);
          }
        }
      }

      else
      {
        v21 = objc_allocWithZone(type metadata accessor for LibraryComposersViewController(0));
        return sub_10035F860(v13 & 1);
      }

      return result;
    case 10:
      v18 = objc_allocWithZone(type metadata accessor for LibraryTVShowsMoviesViewController(0));
      return sub_1007BB278(v13 & 1);
    case 11:
      goto LABEL_5;
    case 12:
      return [objc_allocWithZone(type metadata accessor for LibraryDownloadingViewController(0)) init];
    default:
      if ([a1 userInterfaceIdiom] == 3)
      {
        result = [objc_allocWithZone(MCDRecentlyAddedTableViewController) initWithShowLocalContent:v13 & 1];
        if (!result)
        {
          __break(1u);
LABEL_5:
          if ([a1 userInterfaceIdiom] == 3)
          {
            v15 = objc_allocWithZone(type metadata accessor for CarPlayLibraryViewController());
            return sub_1004899DC(v13 & 1);
          }

          else
          {
LABEL_34:
            v19 = objc_allocWithZone(type metadata accessor for LibraryMainViewController(0));
            return sub_100039DB0(1);
          }
        }
      }

      else
      {
        v25 = objc_allocWithZone(type metadata accessor for LibraryRecentlyAddedViewController(0));
        return sub_1007DF4E0(v13 & 1);
      }

      return result;
  }
}

void sub_10066C1EC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = a1;
  v6 = type metadata accessor for UITraitOverrides();
  (*(*(v6 - 8) + 16))(a2, v3, v6);
  if (Library.Menu.Identifier.rawValue.getter(v4) == 0xD000000000000026 && 0x8000000100E3C290 == v7)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      return;
    }
  }

  sub_10010E29C(&off_101099070);
  sub_100217F14();
  dispatch thunk of UIMutableTraits.subscript.setter();
}

void *NSUserDefaults.libraryMenuOrderedIdentifiers.getter()
{
  NSUserDefaults.libraryMenuRevision.getter();
  v1 = v0;

  v2 = *(v1 + 16);
  if (v2)
  {
    sub_100015C04(0, v2, 0);
    v3 = 32;
    v4 = "LibraryView.RecentlyAdded";
    v5 = "LibraryView.Playlists";
    v6 = "LibraryView.Artists";
    v7 = "LibraryView.Albums";
    v8 = "LibraryView.Songs";
    v9 = "LibraryView.MadeForYou";
    v10 = "LibraryView.MusicVideos";
    v11 = "LibraryView.Genres";
    v12 = "LibraryView.Compilations";
    v13 = "LibraryView.Composers";
    v14 = "LibraryView.Shows";
    v15 = "LibraryView.Downloaded";
    do
    {
      v16 = 0xD000000000000029;
      v17 = "nt";
      switch(*(v1 + v3))
      {
        case 1:
          v16 = 0xD000000000000025;
          v17 = v4;
          break;
        case 2:
          v16 = 0xD000000000000023;
          v17 = v5;
          break;
        case 3:
          v16 = 0xD000000000000022;
          v17 = v6;
          break;
        case 4:
          v16 = 0xD000000000000021;
          v17 = v7;
          break;
        case 5:
          v16 = 0xD000000000000026;
          v17 = v8;
          break;
        case 6:
          v16 = 0xD000000000000027;
          v17 = v9;
          break;
        case 7:
          v16 = 0xD000000000000022;
          v17 = v10;
          break;
        case 8:
          v16 = 0xD000000000000028;
          v17 = v11;
          break;
        case 9:
          v16 = 0xD000000000000025;
          v17 = v12;
          break;
        case 0xA:
          v16 = 0xD000000000000021;
          v17 = v13;
          break;
        case 0xB:
          v16 = 0xD000000000000026;
          v17 = v14;
          break;
        case 0xC:
          v16 = 0xD000000000000027;
          v17 = v15;
          break;
        default:
          break;
      }

      v19 = _swiftEmptyArrayStorage[2];
      v18 = _swiftEmptyArrayStorage[3];
      if (v19 >= v18 >> 1)
      {
        v26 = v11;
        v27 = v10;
        v24 = v13;
        v25 = v12;
        v32 = v5;
        v33 = v4;
        v30 = v7;
        v31 = v6;
        v28 = v9;
        v29 = v8;
        v22 = v15;
        v23 = v14;
        sub_100015C04((v18 > 1), v19 + 1, 1);
        v15 = v22;
        v14 = v23;
        v13 = v24;
        v12 = v25;
        v11 = v26;
        v10 = v27;
        v9 = v28;
        v8 = v29;
        v7 = v30;
        v6 = v31;
        v5 = v32;
        v4 = v33;
      }

      _swiftEmptyArrayStorage[2] = v19 + 1;
      v20 = &_swiftEmptyArrayStorage[2 * v19];
      v20[4] = v16;
      v20[5] = v17 | 0x8000000000000000;
      ++v3;
      --v2;
    }

    while (v2);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t NSUserDefaults.libraryMenuSelectedIdentifiers.getter()
{
  NSUserDefaults.libraryMenuRevision.getter();
  v1 = v0;

  v2 = sub_10066B7A8(v1);

  v3 = sub_10066FFD8(v2);

  return v3;
}

void *sub_10066C750(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066CF60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10066C770(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066D094(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10066C790(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066EC94(a1, a2, a3, *v3, &qword_10118D438, &qword_100EC9198, &type metadata accessor for AudioVariant);
  *v3 = result;
  return result;
}

void *sub_10066C7D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066EC94(a1, a2, a3, *v3, &qword_101193E80, &unk_100ECF120, &type metadata accessor for Track);
  *v3 = result;
  return result;
}

void *sub_10066C818(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066EC94(a1, a2, a3, *v3, &qword_10119C9D0, &qword_100EDB3F8, type metadata accessor for PlaylistCurators.Curator);
  *v3 = result;
  return result;
}

void *sub_10066C85C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066E3FC(a1, a2, a3, *v3, &qword_10119C9A8, &qword_100EDB3E0, &unk_10119EF50, &unk_100EDDF70);
  *v3 = result;
  return result;
}

char *sub_10066C89C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066D1C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10066C8BC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066EC94(a1, a2, a3, *v3, &qword_10119CA38, &qword_100EDB468, &type metadata accessor for MusicPlayActivityFields);
  *v3 = result;
  return result;
}

char *sub_10066C900(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066D2C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10066C920(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066D4D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10066C940(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066D5F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10066C960(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066EA74(a1, a2, a3, *v3, &unk_1011927C0, &unk_100ED6A50, &qword_101197BD0, &qword_100EC9700);
  *v3 = result;
  return result;
}

char *sub_10066C9A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066D740(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10066C9C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066EC94(a1, a2, a3, *v3, &qword_10119CA28, &qword_100EDB458, &type metadata accessor for Playlist.Entry.Reaction);
  *v3 = result;
  return result;
}

char *sub_10066CA04(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066D84C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10066CA24(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066D970(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10066CA44(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066E3FC(a1, a2, a3, *v3, &qword_10119CA10, &qword_100EDB440, &qword_101191960, &qword_100ECEA50);
  *v3 = result;
  return result;
}

void *sub_10066CA84(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066DA80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10066CAA4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066EC94(a1, a2, a3, *v3, &unk_101197BC0, &unk_100ECF170, &type metadata accessor for URLQueryItem);
  *v3 = result;
  return result;
}

void *sub_10066CAE8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066EA74(a1, a2, a3, *v3, &qword_10119C9E0, &qword_100EDB408, &qword_10119ED90, &unk_100ECF7A0);
  *v3 = result;
  return result;
}

char *sub_10066CB28(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066DBEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10066CB48(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066EC94(a1, a2, a3, *v3, &qword_10118AC80, &qword_100EC9020, &type metadata accessor for IndexPath);
  *v3 = result;
  return result;
}

void *sub_10066CB8C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066EA74(a1, a2, a3, *v3, &qword_1011BE680, &qword_100EBF438, &unk_1011BE660, &unk_100ECAF60);
  *v3 = result;
  return result;
}

char *sub_10066CBCC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066DE30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10066CBEC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066EC94(a1, a2, a3, *v3, &qword_101191FC0, &unk_100ED92D0, &type metadata accessor for Playlist);
  *v3 = result;
  return result;
}

void *sub_10066CC30(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066EC94(a1, a2, a3, *v3, &qword_101192910, &qword_100ECFD30, &type metadata accessor for Album);
  *v3 = result;
  return result;
}

char *sub_10066CC74(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066DF3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10066CC94(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066E048(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10066CCB4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066E17C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10066CCD4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066E2A4(a1, a2, a3, *v3, &qword_10119C9B0, &qword_100EDB3E8, &qword_1011831E0, &qword_100EBED50);
  *v3 = result;
  return result;
}

void *sub_10066CD14(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066E2A4(a1, a2, a3, *v3, &qword_1011901E0, &unk_100ECF200, &qword_101183238, &qword_100EBED70);
  *v3 = result;
  return result;
}

void *sub_10066CD54(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066E5E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10066CD74(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066EBA8(a1, a2, a3, *v3, &qword_101191F78, &unk_100ECF110);
  *v3 = result;
  return result;
}

char *sub_10066CDA4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066E86C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10066CDC4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066EC94(a1, a2, a3, *v3, &qword_10119CA48, &qword_100EDB470, &type metadata accessor for LayoutSubview);
  *v3 = result;
  return result;
}

char *sub_10066CE08(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066E970(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10066CE28(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066EA74(a1, a2, a3, *v3, &qword_10119CA60, &qword_100EDB488, &qword_101183268, &qword_100EBED98);
  *v3 = result;
  return result;
}

void *sub_10066CE68(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066EA74(a1, a2, a3, *v3, &qword_1011920E8, &qword_100ECF308, &unk_101183270, &qword_100ECF310);
  *v3 = result;
  return result;
}

char *sub_10066CEA8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066EBA8(a1, a2, a3, *v3, &qword_10119C9C8, &qword_100EDB3F0);
  *v3 = result;
  return result;
}

void *sub_10066CED8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066EC94(a1, a2, a3, *v3, &qword_101191F80, &qword_100ECF130, &type metadata accessor for Playlist.Entry);
  *v3 = result;
  return result;
}

void *sub_10066CF1C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10066EC94(a1, a2, a3, *v3, &qword_1011A0FA0, &qword_100EDB410, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
  *v3 = result;
  return result;
}

void *sub_10066CF60(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_10119C9E8, &qword_100EDB418);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10010FC20(&unk_10118FC68, &qword_100ECC468);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10066D094(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_10119CA30, &qword_100EDB460);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10066D1C0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&unk_101191400, &qword_100ED5CE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10066D2C4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_101191F60, &qword_100ECF0E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_10066D3CC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_101192088, &qword_100ECF290);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10066D4D8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_10119CA20, &qword_100EDB450);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10066D5F8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_101185210, &unk_100EC0C30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10010FC20(&qword_10119E600, &qword_100ECF0E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10066D740(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_101184900, &qword_100EC8D50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10066D84C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_101188708, &qword_100EC43C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10066D970(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10066DA80(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_10119C9F0, &qword_100EDB420);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10010FC20(&qword_10119C9F8, &qword_100EDB428);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10066DBEC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_10119C9D8, &qword_100EDB400);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_10066DCEC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&unk_10118CF40, &qword_100EC8BB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_10066DE30(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_101191F28, &qword_100ECF090);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10066DF3C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_10119CA40, &qword_100EDD530);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10066E048(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_10118F1F8, &unk_100ED76C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10066E17C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_10119CA18, &qword_100EDB448);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for Role(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10066E2A4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_10010FC20(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10010FC20(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_10066E3FC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10010FC20(a5, a6);
  v16 = *(sub_10010FC20(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_10010FC20(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_10066E5E4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_10119CA00, &qword_100EDB430);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10010FC20(&qword_10119CA08, &qword_100EDB438);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10066E72C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_10118D168, &unk_100EC8EA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10066E86C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_10119CA58, &qword_100EDB480);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10066E970(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_10119CA50, &qword_100EDB478);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_10066EA74(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_10010FC20(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10010FC20(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_10066EBA8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_10010FC20(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_10066EC94(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10010FC20(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

Swift::Int sub_10066EE70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10010FC20(&qword_101183260, &qword_100EC9190);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100009F78(0, &qword_10118D430, NSString_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1003AED60(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_10066F060(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10010FC20(&unk_101180440, &unk_100EC9180);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for AnyCancellable();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1003AF3AC(v9 + 1);
        }

        v2 = v15;
        sub_100670AB4(&unk_10118D420, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_10066F294(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10010FC20(&qword_101183248, &qword_100EBED80);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100009F78(0, &qword_1011839F0, UIScene_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1003B0ED0(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_10066F484(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10010FC20(&qword_101180240, &qword_100EBA578);
    v2 = static _SetStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for ImpressionTracker();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1003B0EE4(v10 + 1);
        }

        v2 = v16;
        Hasher.init(_seed:)();
        v3 = sub_10047E418();
        Hasher._combine(_:)(v3);
        result = Hasher._finalize()();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_10066F688(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10010FC20(&unk_101180280, &unk_100EC8BC0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1003B1138(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_10066F878(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10010FC20(&unk_101180380, &unk_100EBA660);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100009F78(0, &qword_101181F70, UITab_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1003B1524(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_10066FA68(_BYTE *a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  Hasher._finalize()();
  v4 = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v4;
  result = sub_100198C50(a1, *(a2 + 48) + 96 * v4);
  ++*(a2 + 16);
  return result;
}

unint64_t sub_10066FBF4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyCancellable();
  sub_100670AB4(&unk_10118D420, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_10066FCDC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = sub_10047E418();
  Hasher._combine(_:)(v4);
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_10066FD84(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

uint64_t sub_10066FE3C(uint64_t a1)
{
  v2 = type metadata accessor for AudioVariant();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v15 - v6;
  v8 = *(a1 + 16);
  sub_100670AB4(&qword_10118D1F0, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
  result = Set.init(minimumCapacity:)();
  v16 = result;
  if (v8)
  {
    v12 = *(v3 + 16);
    v10 = v3 + 16;
    v11 = v12;
    v13 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v14 = *(v10 + 56);
    do
    {
      v11(v5, v13, v2);
      sub_1003B2644(v7, v5);
      (*(v10 - 8))(v7, v2);
      v13 += v14;
      --v8;
    }

    while (v8);
    return v16;
  }

  return result;
}

uint64_t sub_10066FFD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1003B3170(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100670070(uint64_t a1)
{
  v2 = *(type metadata accessor for Lyrics.TextLine(0) - 8);
  __chkstk_darwin();
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v11 - v5;
  v7 = *(a1 + 16);
  sub_100670AB4(&qword_10118BD00, type metadata accessor for Lyrics.TextLine, &protocol conformance descriptor for Lyrics.TextLine);
  result = Set.init(minimumCapacity:)();
  v12 = result;
  if (v7)
  {
    v9 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    do
    {
      sub_100670A4C(v9, v4, type metadata accessor for Lyrics.TextLine);
      sub_1003B3560(v6, v4);
      sub_1003407A4(v6);
      v9 += v10;
      --v7;
    }

    while (v7);
    return v12;
  }

  return result;
}

uint64_t sub_1006701EC(uint64_t a1)
{
  v2 = type metadata accessor for Album();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v15 - v6;
  v8 = *(a1 + 16);
  sub_100670AB4(&unk_10118D190, &type metadata accessor for Album, &protocol conformance descriptor for Album);
  result = Set.init(minimumCapacity:)();
  v16 = result;
  if (v8)
  {
    v12 = *(v3 + 16);
    v10 = v3 + 16;
    v11 = v12;
    v13 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v14 = *(v10 + 56);
    do
    {
      v11(v5, v13, v2);
      sub_1003B3CE0(v7, v5);
      (*(v10 - 8))(v7, v2);
      v13 += v14;
      --v8;
    }

    while (v8);
    return v16;
  }

  return result;
}

uint64_t sub_100670388(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1006709F8();
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1003B3B90(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100670454(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v6 = *(a1 + 16);
  a2();
  result = Set.init(minimumCapacity:)();
  v11 = result;
  if (v6)
  {
    v8 = (a1 + 32);
    do
    {
      v9 = *v8++;
      a4(&v10, v9);
      --v6;
    }

    while (v6);
    return v11;
  }

  return result;
}

uint64_t sub_1006704D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1006709A4();
  result = Set.init(minimumCapacity:)();
  v10 = result;
  if (v2)
  {
    v4 = (a1 + 56);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v8 = *(v4 - 3);
      v7 = *(v4 - 2);
      sub_100198BAC(v8, v7, v6, *v4);
      sub_1003B4314(v9, v8, v7, v6, v5);
      sub_100110A18(v9[0], v9[1], v9[2], v9[3]);
      v4 += 4;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_100670590(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_47:
    _CocoaArrayWrapper.endIndex.getter();
  }

  type metadata accessor for ImpressionTracker();
  sub_100670AB4(&qword_1011831E8, type metadata accessor for ImpressionTracker, &unk_100ECEA04);
  v3 = Set.init(minimumCapacity:)();
  if (!v2)
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return v3;
    }

LABEL_6:
    v4 = 0;
    v5 = v1 & 0xC000000000000001;
    v6 = v1 & 0xFFFFFFFFFFFFFF8;
    v7 = v1 + 32;
    v30 = v1 & 0xFFFFFFFFFFFFFF8;
    v28 = v1;
    v29 = v1 + 32;
    while (1)
    {
LABEL_7:
      v1 = v3 & 0xC000000000000001;
      v8 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v3 < 0)
      {
        v8 = v3;
      }

      v31 = v8;
      while (1)
      {
        if (v5)
        {
          v9 = sub_1007E97F0(v4, v28);
          v10 = __OFADD__(v4++, 1);
          if (v10)
          {
            goto LABEL_44;
          }
        }

        else
        {
          if (v4 >= *(v6 + 16))
          {
            goto LABEL_45;
          }

          v9 = *(v7 + 8 * v4);

          v10 = __OFADD__(v4++, 1);
          if (v10)
          {
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }
        }

        if (!v1)
        {
          v12 = v2;
          Hasher.init(_seed:)();
          v13 = sub_10047E418();
          Hasher._combine(_:)(v13);
          v14 = Hasher._finalize()();
          v15 = ~(-1 << *(v3 + 32));
          for (i = v14 & v15; ((*(v3 + 56 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) != 0; i = (i + 1) & v15)
          {
            if (sub_10047E418() == *(v9 + 56))
            {

              v2 = v12;
              v7 = v29;
              v6 = v30;
              goto LABEL_21;
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v2 = *(v3 + 16);
          v1 = *(v3 + 24);

          if (v1 > v2)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1001948A4();
            }

            goto LABEL_36;
          }

          v18 = v2 + 1;
          if (isUniquelyReferenced_nonNull_native)
          {
            sub_1003B0EE4(v18);
          }

          else
          {
            sub_1003B9C68(v18);
          }

          Hasher.init(_seed:)();
          Hasher._combine(_:)(*(v9 + 56));
          v19 = Hasher._finalize()();
          v1 = v3 + 56;
          v20 = -1 << *(v3 + 32);
          i = v19 & ~v20;
          if (((*(v3 + 56 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) == 0)
          {
LABEL_36:
            *(v3 + ((i >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << i;
            *(*(v3 + 48) + 8 * i) = v9;
            v21 = *(v3 + 16);
            v10 = __OFADD__(v21, 1);
            v22 = v21 + 1;
            if (v10)
            {
              goto LABEL_46;
            }

            *(v3 + 16) = v22;

            v2 = v12;
            v7 = v29;
            v6 = v30;
            if (v4 != v2)
            {
              goto LABEL_7;
            }

            return v3;
          }

          v2 = ~v20;
          while (sub_10047E418() != *(v9 + 56))
          {
            i = (i + 1) & v2;
            if (((*(v1 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) == 0)
            {
              goto LABEL_36;
            }
          }

LABEL_49:
          result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v11 = __CocoaSet.member(for:)();

        if (!v11)
        {
          break;
        }

        swift_dynamicCast();

LABEL_21:
        if (v4 == v2)
        {
          return v3;
        }
      }

      v23 = __CocoaSet.count.getter();
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_49;
      }

      v24 = sub_10066F484(v31, v23 + 1);
      v25 = *(v24 + 16);
      if (*(v24 + 24) <= v25)
      {
        sub_1003B0EE4(v25 + 1);
      }

      sub_10066FCDC(v26, v24);

      v3 = v24;
      if (v4 == v2)
      {
        return v3;
      }
    }
  }

  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (v2)
  {
    goto LABEL_6;
  }

  return v3;
}

unint64_t sub_1006709A4()
{
  result = qword_10119C9B8;
  if (!qword_10119C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119C9B8);
  }

  return result;
}

unint64_t sub_1006709F8()
{
  result = qword_10119C9C0;
  if (!qword_10119C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119C9C0);
  }

  return result;
}

uint64_t sub_100670A4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100670AB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100670BB4()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_dimmedBackgroundColor);
}

id sub_100670C14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlayingShuffleButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100670CD8()
{
  _s14descr101092F61V16PlaylistsManagerCMa(0);
  v0 = swift_allocObject();
  sub_10010FC20(&qword_1011937C8, "\n?\n");
  Published.init(initialValue:)();
  v1 = OBJC_IVAR____TtCO5Music14ClarityUIMusic16PlaylistsManager_preferences;
  if (qword_10117FA68 != -1)
  {
    swift_once();
  }

  *(v0 + v1) = qword_101219178;
  type metadata accessor for Playlist();

  MusicLibraryRequest.init()();
  return v0;
}

uint64_t _s14descr101092F61V17RootPlaylistsViewVMa(uint64_t a1)
{
  result = qword_10119CB18;
  if (!qword_10119CB18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100670E40(uint64_t a1)
{
  sub_1004651A8(319);
  if (v1 <= 0x3F)
  {
    sub_100465200(319);
    if (v2 <= 0x3F)
    {
      sub_100670EDC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100670EDC(uint64_t a1)
{
  if (!qword_10119CB28)
  {
    _s14descr101092F61V16PlaylistsManagerCMa(255);
    sub_1006743DC(&unk_10119CB30, _s14descr101092F61V16PlaylistsManagerCMa, &unk_100ED1200);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &qword_10119CB28);
    }
  }
}

uint64_t sub_100670F8C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X8>)
{
  v15[2] = a2;
  v3 = *(_s14descr101092F61V17RootPlaylistsViewVMa(0) - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v5 = sub_10010FC20(&qword_10119CB70, &qword_100EDB530);
  v15[1] = v5;
  __chkstk_darwin();
  v7 = v15 - v6;
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = sub_10010FC20(&qword_10119CB98, &qword_100EDB578);
  sub_1006712A8(&v7[*(v8 + 44)]);
  v15[0] = _s14descr101092F61V17RootPlaylistsViewVMa;
  sub_100674080(a1, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), _s14descr101092F61V17RootPlaylistsViewVMa);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_100673E88(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  v11 = &v7[*(v5 + 36)];
  *v11 = sub_100673EEC;
  v11[1] = v10;
  v11[2] = 0;
  v11[3] = 0;
  _s14descr101092F61V16PlaylistsManagerCMa(0);
  sub_1006743DC(&unk_10119CB30, _s14descr101092F61V16PlaylistsManagerCMa, &unk_100ED1200);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v16);

  v12 = *(v16 + 16);

  v16 = v12;
  sub_100674080(a1, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15[0]);
  v13 = swift_allocObject();
  sub_100673E88(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v9);
  sub_100673B28();
  View.onChange<A>(of:initial:_:)();

  return sub_1000095E8(v7, &qword_10119CB70, &qword_100EDB530);
}

uint64_t sub_1006712A8@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v76 = _s14descr101092F61V19PlaylistDetailsViewVMa(0);
  __chkstk_darwin();
  v58 = (&v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for Playlist();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v56 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v55 - v6;
  v75 = sub_10010FC20(&qword_10119CBA0, &qword_100EDB628);
  __chkstk_darwin();
  v74 = &v55 - v7;
  v72 = sub_10010FC20(&qword_10119CBA8, &qword_100EDB630);
  __chkstk_darwin();
  v73 = &v55 - v8;
  v77 = sub_10010FC20(&qword_10119CBB0, &qword_100EDB638);
  __chkstk_darwin();
  v70 = &v55 - v9;
  v10 = type metadata accessor for MultimodalListStyle.IconStyle();
  v64 = *(v10 - 8);
  v65 = v10;
  __chkstk_darwin();
  v63 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v62 = &v55 - v12;
  sub_10010FC20(&qword_101190DF8, &qword_100EDB640);
  __chkstk_darwin();
  v59 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = (&v55 - v14);
  v69 = type metadata accessor for MultimodalListStyle();
  v61 = *(v69 - 8);
  __chkstk_darwin();
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_10010FC20(&qword_10119CBB8, &qword_100EDB648);
  v60 = *(v68 - 8);
  __chkstk_darwin();
  v19 = &v55 - v18;
  v71 = sub_10010FC20(&qword_10119CBC0, &qword_100EDB650);
  v67 = *(v71 - 8);
  __chkstk_darwin();
  v66 = &v55 - v20;
  _s14descr101092F61V17RootPlaylistsViewVMa(0);
  v21 = v1;
  _s14descr101092F61V16PlaylistsManagerCMa(0);
  sub_1006743DC(&unk_10119CB30, _s14descr101092F61V16PlaylistsManagerCMa, &unk_100ED1200);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v79);

  v22 = v79;
  v23 = *(v79 + 16);
  if (v23 < 2)
  {
    v36 = v3;
    v37 = v73;
    v38 = v76;
    if (v23)
    {
      v39 = *(v4 + 16);
      v40 = v56;
      v39(v56, v79 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v36);

      v41 = v57;
      (*(v4 + 32))(v57, v40, v36);
      v42 = v58;
      v39(v58 + v38[9], v41, v36);
      *v42 = swift_getKeyPath();
      sub_10010FC20(&unk_101193FC0, &qword_100EDB580);
      swift_storeEnumTagMultiPayload();
      v43 = v42 + v38[5];
      *v43 = sub_100462628;
      *(v43 + 1) = 0;
      v43[16] = 0;
      v44 = v42 + v38[6];
      *v44 = sub_10024F1B0;
      *(v44 + 1) = 0;
      v44[16] = 0;
      v45 = v42 + v38[7];
      *v45 = sub_100462684;
      *(v45 + 1) = 0;
      v45[16] = 0;
      v46 = v42 + v38[8];
      v83[0] = 0;
      State.init(wrappedValue:)();
      v47 = v80;
      *v46 = v79;
      *(v46 + 1) = v47;
      sub_100674080(v42, v37, _s14descr101092F61V19PlaylistDetailsViewVMa);
      swift_storeEnumTagMultiPayload();
      v48 = sub_100020674(&qword_10119CBC8, &qword_10119CBB8, &qword_100EDB648, &protocol conformance descriptor for List<A, B>);
      v79 = v68;
      v80 = v69;
      v81 = v48;
      v82 = &protocol witness table for MultimodalListStyle;
      swift_getOpaqueTypeConformance2();
      sub_1006743DC(&qword_10119CBD0, _s14descr101092F61V19PlaylistDetailsViewVMa, &unk_100ECDF14);
      v49 = v70;
      _ConditionalContent<>.init(storage:)();
      sub_10009ABAC(v49, v74);
      swift_storeEnumTagMultiPayload();
      sub_1006740E8();
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v49, &qword_10119CBB0, &qword_100EDB638);
      sub_1006744DC(v42, _s14descr101092F61V19PlaylistDetailsViewVMa);
      return (*(v4 + 8))(v41, v36);
    }

    else
    {

      v50 = v74;
      if (qword_10117F1F0 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_1000060E4(v51, qword_101218608);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&_mh_execute_header, v52, v53, "No Content", v54, 2u);
      }

      *v50 = 0;
      *(v50 + 8) = 1;
      swift_storeEnumTagMultiPayload();
      sub_1006740E8();
      return _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {
    __chkstk_darwin();
    *(&v55 - 2) = v21;
    *(&v55 - 1) = v22;
    sub_10010FC20(&qword_10119CBE0, &qword_100EDB688);
    sub_100020674(&qword_10119CBE8, &qword_10119CBE0, &qword_100EDB688, &protocol conformance descriptor for TupleView<A>);
    List<>.init(content:)();

    sub_10056CF3C(v15);
    v24 = type metadata accessor for MultimodalListStyle.Layout();
    (*(*(v24 - 8) + 56))(v15, 0, 1, v24);
    v26 = v64;
    v25 = v65;
    v27 = v62;
    (*(v64 + 104))(v62, enum case for MultimodalListStyle.IconStyle.square(_:), v65);
    sub_1000089F8(v15, v59, &qword_101190DF8, &qword_100EDB640);
    (*(v26 + 16))(v63, v27, v25);
    MultimodalListStyle.init(layout:iconStyle:)();
    (*(v26 + 8))(v27, v25);
    sub_1000095E8(v15, &qword_101190DF8, &qword_100EDB640);
    v28 = sub_100020674(&qword_10119CBC8, &qword_10119CBB8, &qword_100EDB648, &protocol conformance descriptor for List<A, B>);
    v29 = v66;
    v30 = v68;
    v31 = v69;
    View.listStyle<A>(_:)();
    (*(v61 + 8))(v17, v31);
    (*(v60 + 8))(v19, v30);
    v32 = v67;
    v33 = v71;
    (*(v67 + 16))(v73, v29, v71);
    swift_storeEnumTagMultiPayload();
    v79 = v30;
    v80 = v31;
    v81 = v28;
    v82 = &protocol witness table for MultimodalListStyle;
    swift_getOpaqueTypeConformance2();
    sub_1006743DC(&qword_10119CBD0, _s14descr101092F61V19PlaylistDetailsViewVMa, &unk_100ECDF14);
    v34 = v70;
    _ConditionalContent<>.init(storage:)();
    sub_10009ABAC(v34, v74);
    swift_storeEnumTagMultiPayload();
    sub_1006740E8();
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v34, &qword_10119CBB0, &qword_100EDB638);
    return (*(v32 + 8))(v29, v33);
  }
}