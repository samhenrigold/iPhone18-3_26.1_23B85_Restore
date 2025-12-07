void *sub_1005E6F34(uint64_t a1)
{
  v1 = sub_1005E59A0() & 1;
  type metadata accessor for MorphingMotionArtwork(0);
  sub_10010FC20(&unk_101197960, &qword_100EC0DA0);
  result = State.wrappedValue.getter();
  if (v1 != v3)
  {
    return State.wrappedValue.setter();
  }

  return result;
}

void *sub_1005E6FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1005E59A0() & 1;
  type metadata accessor for MorphingMotionArtwork(0);
  sub_10010FC20(&unk_101197960, &qword_100EC0DA0);
  result = State.wrappedValue.getter();
  if (v3 != v5)
  {
    static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
    __chkstk_darwin();

    withAnimation<A>(_:_:)();
  }

  return result;
}

void sub_1005E7120(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = sub_1005E59A0() & 1;
  type metadata accessor for MorphingMotionArtwork(0);
  sub_10010FC20(&unk_101197960, &qword_100EC0DA0);
  State.wrappedValue.getter();
  if (v3 != v4)
  {
    [objc_opt_self() inheritedAnimationDuration];
    static Animation.easeInOut(duration:)();
    Animation.delay(_:)();

    __chkstk_darwin();
    withAnimation<A>(_:_:)();
  }
}

uint64_t sub_1005E7274(uint64_t a1, char a2)
{
  type metadata accessor for MorphingMotionArtwork(0);
  sub_10010FC20(&unk_101197960, &qword_100EC0DA0);
  return State.wrappedValue.setter();
}

uint64_t sub_1005E72F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + *(type metadata accessor for MorphingMotionArtwork(0) + 20));
  Image.init(uiImage:)();
  (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
  v9 = Image.resizable(capInsets:resizingMode:)();

  result = (*(v5 + 8))(v7, v4);
  *a2 = v9;
  return result;
}

void sub_1005E7434()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  v2 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v2))
  {
    if ([v0 frame], v5 = OBJC_IVAR____TtC5MusicP33_E38AC92F7F664DD94CDA81A33FE0509F30MorphingMotionArtworkContainer_state, (v6 = *&v0[OBJC_IVAR____TtC5MusicP33_E38AC92F7F664DD94CDA81A33FE0509F30MorphingMotionArtworkContainer_state]) == 0) || (v7 = v3, v8 = v4, swift_getKeyPath(), sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState, &unk_100ED64C0), , ObservationRegistrar.access<A, B>(_:keyPath:)(), , v9 = *(v6 + 48), v10 = *(v6 + 56), v11 = *(v6 + 64), , (v11) || (v7 == v9 ? (v12 = v8 == v10) : (v12 = 0), !v12))
    {
      v13 = objc_opt_self();
      if ([v13 _isInAnimationBlockWithAnimationsEnabled])
      {
        [v13 inheritedAnimationDuration];
        static Animation.easeInOut(duration:)();
        __chkstk_darwin();
        sub_10010FC20(&qword_101184430, &unk_100ED67A0);
        withAnimation<A>(_:_:)();
      }

      else if (*&v1[v5])
      {

        [v1 bounds];
        sub_1005E56D8(v14, v15, 0);
      }
    }
  }
}

void sub_1005E7664(char *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *&a1[OBJC_IVAR____TtC5MusicP33_E38AC92F7F664DD94CDA81A33FE0509F30MorphingMotionArtworkContainer_state];
  if (v3)
  {

    [a1 bounds];
    sub_1005E56D8(v5, v6, 0);
  }

  *a2 = v3 == 0;
}

unint64_t sub_1005E7860(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1005E787C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 56))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1005E78D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0u;
      *(result + 24) = 0u;
      *(result + 40) = 0u;
    }
  }

  return result;
}

uint64_t sub_1005E7958(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

void sub_1005E79CC(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_100009F78(319, &qword_101183B40, UIImage_ptr);
    if (v2 <= 0x3F)
    {
      sub_1005E4A10(319, &qword_101197840, type metadata accessor for CGSize);
      if (v3 <= 0x3F)
      {
        sub_1005E4A10(319, &qword_101197848, type metadata accessor for MorphingMotionArtworkState);
        if (v4 <= 0x3F)
        {
          sub_1004653BC();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1005E7B04()
{
  result = qword_101197890;
  if (!qword_101197890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101197890);
  }

  return result;
}

unint64_t sub_1005E7B5C()
{
  result = qword_101197898;
  if (!qword_101197898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101197898);
  }

  return result;
}

void sub_1005E7BCC(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  v3 = v5;
  *a2 = v4;
  *(a2 + 8) = v3;
}

uint64_t sub_1005E7C54(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10004ADE8(v2, v3);
  return static Published.subscript.setter();
}

BOOL sub_1005E7D18(void *a1, double a2, double a3)
{
  v6 = sub_100025CE0();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v6) & 1) == 0)
  {
    return [a1 userInterfaceIdiom] == 0;
  }

  if ([a1 accessibilityContrast] == 1 || UIAccessibilityIsInvertColorsEnabled())
  {
    return 0;
  }

  v7 = [a1 userInterfaceIdiom];
  if (!v7)
  {
    return 1;
  }

  if (v7 != 1 || a2 <= 0.0)
  {
    return 0;
  }

  v8 = 1.3;
  if (a3 <= 1000.0)
  {
    v8 = 1.4;
  }

  if (v8 > a3 / a2)
  {
    return 0;
  }

  return a3 / a2 <= 1.75;
}

void sub_1005E7E24(char a1)
{
  if (a1 && a1 != 3)
  {
    sub_1005C4C78();
    sub_1005C6A74(1);
    v2 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer);
    if (v2)
    {
      [v2 removeFromSuperview];
    }

    sub_1005D90E0(0);
    v3 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
      if (v4)
      {
        v5 = v4;
        sub_10065CE7C(0, 0);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1005E7EF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2 == 1 && a1 != 2)
  {
    sub_1005C4F50(4.0);
    v6 = [objc_opt_self() standardUserDefaults];
    v24 = &type metadata for Bool;
    v23[0] = 1;
    v22 = 2;
    v7 = sub_1002B8234();
    v8 = sub_100009838();
    NSUserDefaults.subscript.setter(v23, &v22, &type metadata for NowPlayingViewController.DefaultsKey, v7, v8);
  }

  else
  {
    sub_1005E010C(v2);
  }

  v9 = sub_1005C405C();
  v10 = *&v9[OBJC_IVAR___MusicLyricsBackgroundView_renderer];
  v11 = v10;

  if (v10)
  {
    dispatch thunk of Backdrop.CompositeRenderer.isBehindLyrics.setter();
  }

  v12 = v3 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode;
  v13 = *(v3 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
  if (v13 >> 62 == 1)
  {
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = (v13 & 0x3FFFFFFFFFFFFFFFLL);
    v17 = OBJC_IVAR____TtC5Music24NowPlayingViewController_presentLyricsTimer;
    v18 = *(v3 + OBJC_IVAR____TtC5Music24NowPlayingViewController_presentLyricsTimer);
    v19 = (v13 & 0x3FFFFFFFFFFFFFFFLL);
    v20 = v14;

    if (v18)
    {
      [v18 invalidate];
      v21 = *(v3 + v17);
    }

    else
    {
      v21 = 0;
    }

    *(v3 + v17) = 0;

    sub_1005DF4E0(a1, a2, v16, v14, v15);
  }
}

uint64_t sub_1005E80C0(void *a1, double a2, double a3)
{
  if ([a1 userInterfaceIdiom] != 1 || objc_msgSend(a1, "horizontalSizeClass") != 2)
  {
    return 0;
  }

  if (a3 < a2)
  {
    if (qword_10117F928 != -1)
    {
      swift_once();
    }

    if (*&qword_1012190C0 <= a2)
    {
      return 2;
    }
  }

  return 1;
}

id sub_1005E8180()
{
  v1 = OBJC_IVAR____TtC5Music24NowPlayingViewController_presentLyricsTimer;
  v2 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_presentLyricsTimer);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  v4 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
  v5 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 8);
  v6 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 16);
  v7 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 24);
  v9 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 32);
  v8 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 40);
  v10 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 48);
  if (v4 >> 62)
  {
    sub_10012BAC0(*(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode), *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 8), *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 16), *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 24), *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 32), *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 40), *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 48));
    goto LABEL_9;
  }

  *&v41 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
  *(&v41 + 1) = v5;
  v42 = v6;
  v43 = v7;
  v44 = v9;
  v45 = v8;
  v46 = v10;
  v11 = v4;
  v39 = v5;
  v12 = v5;
  v38 = v6;
  v13 = v6;
  v14 = v7;
  v15 = v13;
  v37 = v14;
  v16 = v14;
  v17 = v9;
  swift_bridgeObjectRetain_n();
  v40 = v10;
  swift_bridgeObjectRetain_n();
  v18 = v11;
  v19 = v12;
  v20 = v15;
  v21 = v16;
  v22 = v17;
  [v19 frame];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [v19 setTranslatesAutoresizingMaskIntoConstraints:1];
  [v19 setFrame:{v24, v26, v28, v30}];
  result = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  result = [result view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v32 = result;
  v33 = sub_1005C405C();
  [v32 insertSubview:v19 aboveSubview:v33];

  v34 = objc_opt_self();
  sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v34 deactivateConstraints:isa];

  sub_1005DBD58(&v41, 1);
  v6 = v38;
  v5 = v39;
  v7 = v37;
  v10 = v40;
  sub_10012BB6C(v4, v39, v38, v37, v9, v8, v40);
LABEL_9:
  sub_1005E15A8(0, 1);
  sub_1005D31C8(1, v36);

  return sub_10012BB6C(v4, v5, v6, v7, v9, v8, v10);
}

void sub_1005E8440()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Music24NowPlayingViewController_presentLyricsTimer;
  v3 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_presentLyricsTimer);
  if (v3)
  {
    [v3 invalidate];
    v4 = *(v1 + v2);
  }

  else
  {
    v4 = 0;
  }

  *(v1 + v2) = 0;

  sub_1005DAD10(0);
  v5 = v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode;
  v7 = v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 8;
  v6 = *v7;
  v8 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
  v9 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 16);
  v10 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 24);
  v11 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 32);
  v12 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 40);
  v51 = v12;
  v52 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 48);
  v44 = v11;
  v46 = v8 >> 62;
  if (*(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType) && *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType) != 1)
  {
    sub_10012BAC0(v8, v6, v9, v10, v11, v12, v52);

    if (v8 >> 62 != 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_10012BAC0(v8, v6, v9, v10, v11, v12, v52);

    if ((v13 & 1) == 0 || (v8 & 0xC000000000000000) != 0x4000000000000000)
    {
      goto LABEL_13;
    }
  }

  v14 = (v8 & 0x3FFFFFFFFFFFFFFFLL);
  v15 = v6;

  [v15 frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [v15 setTranslatesAutoresizingMaskIntoConstraints:1];
  [v15 setFrame:{v17, v19, v21, v23}];
  v24 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
  if (!v24)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v49 = v14;
  v25 = [v24 view];
  if (!v25)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v26 = v25;
  v27 = sub_1005C405C();
  [v26 insertSubview:v15 aboveSubview:v27];

  v28 = objc_opt_self();
  sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v28 deactivateConstraints:isa];

LABEL_13:
  v47 = v10;
  v48 = v8;
  v50 = v9;
  v45 = v6;
  sub_1005E15A8(1, 1);
  v30 = *(v5 + 16);
  v54[0] = *v5;
  v54[1] = v30;
  v54[2] = *(v5 + 32);
  v32 = *(v5 + 40);
  v55 = *(v5 + 48);
  v31 = v55;
  v33 = *v5;
  v34 = *(v5 + 8);
  v35 = *(v5 + 16);
  v36 = *(v5 + 24);
  v37 = *(v5 + 32);
  *v5 = 0x8000000000000000;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *v7 = 0u;
  sub_1005EB280(v54, v53);
  sub_10012BB6C(v33, v34, v35, v36, v37, v32, v31);
  sub_1005D7D3C(v54);
  sub_1005EB2B8(v54);
  v38 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
  v39 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
  if (!v39)
  {
    __break(1u);
    goto LABEL_20;
  }

  v40 = v39;
  sub_1001B6A0C(0, 1);

  v41 = *(v1 + v38);
  if (!v41)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v42 = *&v41[OBJC_IVAR___MusicNowPlayingControlsViewController_lyricsButton];
  if (!v42)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v43 = v41;
  [v42 setSelected:0];
  sub_1001C3DB8();

  if (v46 == 1)
  {
    sub_1005DB5C0((v48 & 0x3FFFFFFFFFFFFFFFLL), v45, v50, 1);
  }

  else
  {
    sub_10012BB6C(v48, v45, v50, v47, v44, v51, v52);
  }
}

id sub_1005E8898()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
  v2 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 8);
  v3 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 16);
  v4 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 24);
  v5 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 32);
  v6 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 40);
  v7 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 48);
  if (v1 >> 62 != 1)
  {
    sub_10012BAC0(*(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode), *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 8), *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 16), *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 24), *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 32), *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 40), *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 48));
    goto LABEL_6;
  }

  v8 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
  v9 = v2;
  swift_bridgeObjectRetain_n();
  v25 = v8;
  v10 = v9;
  [v10 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v10 setTranslatesAutoresizingMaskIntoConstraints:1];
  [v10 setFrame:{v12, v14, v16, v18}];
  result = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v24 = v4;
  result = [result view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v20 = result;
  v21 = sub_1005C405C();
  [v20 insertSubview:v10 aboveSubview:v21];

  v22 = objc_opt_self();
  sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v22 deactivateConstraints:isa];

  sub_1005DB5C0(v25, v10, v3, 1);

  v4 = v24;
LABEL_6:
  sub_1005E15A8(2, 1);
  sub_1005D1674(1, 0);

  return sub_10012BB6C(v1, v2, v3, v4, v5, v6, v7);
}

void sub_1005E8AD8()
{
  v1 = v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode;
  v2 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 8);
  v45 = (v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 8);
  v3 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
  v4 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 16);
  v5 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 24);
  v6 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 32);
  v47 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 48);
  v48 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 40);
  sub_10012BAC0(v3, v2, v4, v5, v6, v48, v47);
  sub_1005DAD10(0);
  v41 = v3 >> 62;
  v46 = v6;
  if (!(v3 >> 62))
  {
    v7 = v3;
    v8 = v2;
    v9 = v4;
    v10 = v5;
    v11 = v6;

    [v8 frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [v8 setTranslatesAutoresizingMaskIntoConstraints:1];
    [v8 setFrame:{v13, v15, v17, v19}];
    v20 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
    if (!v20)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v21 = [v20 view];
    if (!v21)
    {
LABEL_15:
      __break(1u);
      return;
    }

    v22 = v21;
    v23 = sub_1005C405C();
    [v22 insertSubview:v8 aboveSubview:v23];

    v24 = objc_opt_self();
    sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v24 deactivateConstraints:isa];

    sub_10012BB6C(v3, v2, v4, v5, v46, v48, v47);
  }

  v42 = v5;
  v43 = v4;
  v44 = v3;
  v26 = v0;
  sub_1005E15A8(3, 1);
  v27 = *(v1 + 16);
  v55[0] = *v1;
  v55[1] = v27;
  v55[2] = *(v1 + 32);
  v29 = *(v1 + 40);
  v56 = *(v1 + 48);
  v28 = v56;
  v30 = *v1;
  v31 = *(v1 + 8);
  v32 = *(v1 + 16);
  v33 = *(v1 + 24);
  v34 = *(v1 + 32);
  *v1 = 0x8000000000000000;
  v45[1] = 0u;
  v45[2] = 0u;
  *v45 = 0u;
  sub_1005EB280(v55, &v49);
  sub_10012BB6C(v30, v31, v32, v33, v34, v29, v28);
  sub_1005D7D3C(v55);
  sub_1005EB2B8(v55);
  v35 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
  v36 = *(v26 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
  if (!v36)
  {
    __break(1u);
    goto LABEL_12;
  }

  v37 = v36;
  sub_1001B6A0C(0, 1);

  v38 = *(v26 + v35);
  if (!v38)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v39 = *&v38[OBJC_IVAR___MusicNowPlayingControlsViewController_queueButton];
  if (!v39)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v40 = v38;
  [v39 setSelected:0];
  sub_1001C30CC();
  sub_1001C36E8();

  if (!v41)
  {
    *&v49 = v44;
    *(&v49 + 1) = v2;
    v50 = v43;
    v51 = v42;
    v52 = v46;
    v53 = v48;
    v54 = v47;
    sub_1005DBD58(&v49, 1);
  }

  sub_10012BB6C(v44, v2, v43, v42, v46, v48, v47);
}

uint64_t sub_1005E8E30(unsigned __int8 a1)
{
  v2 = a1;
  v3 = (v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
  v4 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
  v5 = v4 >> 62;
  if (v2 > 1)
  {
    if (!v5)
    {
      return 3;
    }

    if (v5 != 1)
    {
      return 0;
    }

    v17 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_playingItem);
    if (!v17)
    {
      return 0;
    }

    v18 = [v17 metadataObject];
    if (!v18)
    {
      return 0;
    }

    v19 = v18;
    v20 = [v18 innermostModelObject];

    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (!v21)
    {

      return 0;
    }

    v22 = v21;
    type metadata accessor for LyricsLoader();
    LOBYTE(v22) = static LyricsLoader.supportsLyrics(for:)(v22);

    if (v22)
    {
      return 3;
    }
  }

  else
  {
    if (!v5)
    {
      return 2;
    }

    if (v5 == 1)
    {
      v6 = v3[5];
      v7 = v3[6];
      v8 = v3[3];
      v9 = v3[4];
      v11 = v3[1];
      v10 = v3[2];
      v12 = (v4 & 0x3FFFFFFFFFFFFFFFLL);
      v13 = (v4 & 0x3FFFFFFFFFFFFFFFLL) + OBJC_IVAR___MusicNowPlayingLyricsViewController_state;
      v14 = *v13;
      v15 = *(v13 + 8);
      sub_10012BAC0(v4, v11, v10, v8, v9, v6, v7);
      sub_1002AC9FC(v14, v15);

      if (v15)
      {
        sub_1002AC8A4(v14, v15);
        return 1;
      }

      sub_1002AC8A4(v14, 0);
    }
  }

  return 0;
}

void sub_1005E8FAC()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldIgnoreFullscreenTimer);
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldIgnoreFullscreenTimer) = 1;
  if (v1 != 1)
  {
    v2 = OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer;
    v3 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer);
    if (v3)
    {
      [v3 invalidate];
      v3 = *(v0 + v2);
    }

    *(v0 + v2) = 0;
  }
}

void sub_1005E9024(char *a1)
{
  v2 = v1;
  sub_10010FC20(&qword_1011978A8, &qword_100ED6578);
  __chkstk_darwin();
  v111 = &v109 - v4;
  v5 = type metadata accessor for UIView.Corner.Radius();
  v109 = *(v5 - 8);
  v110 = v5;
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = a1;
  v9 = [a1 isReversed];
  v10 = [v2 presentationController];
  if (v10)
  {
    v11 = v10;
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (!v12)
    {
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = [v2 presentingViewController];
  if (v13)
  {
    v14 = v13;
    type metadata accessor for TabBarController(0);
    v15 = swift_dynamicCastClass();
    if (!v15)
    {
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_allocWithZone(_UIViewGlass) initWithVariant:0 smoothness:6.0];
  if (v15)
  {
    v17 = v15;
    v18 = [v17 tabBar];
    v19 = [v18 traitCollection];

    v20 = [v19 userInterfaceStyle];
    [v16 setAdaptiveStyle:v20];
  }

  if (v12)
  {
    [v12 _setLargeBackground:v16];
    [v12 _setNonLargeBackground:v16];
  }

  v115 = v16;
  v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_isAnimatingDismissal] = v9;
  if (v9)
  {
    v21 = sub_1005CD758();
    [v21 setHidden:1];

    sub_1005C4C78();
  }

  if ((*&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode] & 0x8000000000000000) != 0 && (v22 = [v2 traitCollection], v23 = objc_msgSend(v22, "horizontalSizeClass"), v22, v23 == 1))
  {
    v24 = *&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
    if (!v24)
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v25 = *(v24 + OBJC_IVAR___MusicNowPlayingControlsViewController_mainContainerView);
    v26 = [v25 layer];
    [v26 setAllowsGroupOpacity:0];

    if (v9)
    {
      v27 = 1.0;
    }

    else
    {
      v27 = 0.0;
    }

    [v25 setAlpha:v27];

    if (!sub_1005DA588())
    {
      v28 = sub_1005C405C();
      [v28 setAlpha:v27];
    }

    v114 = v15;
    if (!v9)
    {
LABEL_24:
      v29 = sub_1005D01F0();
LABEL_33:
      v39 = 0.0;
      goto LABEL_34;
    }
  }

  else
  {
    v30 = OBJC_IVAR____TtC5Music24NowPlayingViewController_containerView;
    v31 = *&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_containerView];
    if (!v31)
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v32 = [v31 layer];
    [v32 setAllowsGroupOpacity:0];

    v33 = *&v2[v30];
    if (!v33)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v34 = 0.0;
    if (v9)
    {
      v34 = 1.0;
    }

    [v33 setAlpha:v34];
    v114 = v15;
    if (!v9)
    {
      goto LABEL_24;
    }
  }

  v35 = *&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
  if (!v35)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v36 = [v35 view];
  if (!v36)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v37 = v36;
  [v36 setAutoresizingMask:0];

  v29 = sub_1005D01F0();
  v38 = sub_1005DA588();
  v39 = 1.0;
  if (!v38)
  {
    goto LABEL_33;
  }

LABEL_34:
  [v29 setAlpha:v39];

  v40 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
  v41 = *&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
  if (!v41)
  {
    __break(1u);
    goto LABEL_71;
  }

  v42 = *(v41 + OBJC_IVAR___MusicNowPlayingControlsViewController_grabberView);
  if (!v42)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v113 = v12;
  v43 = 0.0;
  if (v9)
  {
    v43 = 1.0;
  }

  [v42 setAlpha:v43];
  v44 = OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData;
  if (*&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData])
  {

    v45 = sub_1002752B8();

    if (v45)
    {
      v46 = *&v2[v40];
      if (!v46)
      {
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      if (*(v46 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode) == 3 || !*(v46 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode))
      {
        if (v9)
        {
          v47 = *(v46 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
          if (v47)
          {
            v48 = v47;
            v49 = [v2 traitCollection];
            [v49 displayCornerRadius];
            v51 = v50;

            v52 = *&v48[OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView];
            v53 = &v52[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
            swift_beginAccess();
            v54 = *(type metadata accessor for Artwork(0) + 28);
            v55 = v54 + *(type metadata accessor for Artwork.Decoration(0) + 20);
            v56 = type metadata accessor for UIView.Corner();
            if ((*(*(v56 - 8) + 48))(&v53[v55], 1, v56))
            {
              swift_endAccess();
              v57 = 0;
            }

            else
            {
              v58 = v52;
              UIView.Corner.radius.getter();
              swift_endAccess();

              [*&v48[OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView] bounds];
              UIView.Corner.Radius.value(in:)();
              v57 = v59;
              (*(v109 + 8))(v8, v110);
            }

            v60 = v48;
            sub_1005DDEFC(1, 0);
            sub_1005C6A74(1);
            v61 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer;
            v62 = *&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer];
            if (v62)
            {
              [v62 removeFromSuperview];
            }

            sub_1005D90E0(0);
            v63 = type metadata accessor for MorphingMotionArtwork(0);
            v64 = v111;
            (*(*(v63 - 8) + 56))(v111, 1, 1, v63);
            v65 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtwork;
            swift_beginAccess();
            sub_10006B010(v64, &v2[v65], &qword_1011978A8, &qword_100ED6578);
            swift_endAccess();
            v66 = *&v2[v61];
            *&v2[v61] = 0;

            v67 = OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView;
            v68 = [*&v48[OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView] layer];
            [v68 setCornerCurve:kCACornerCurveContinuous];

            v69 = [*&v48[v67] layer];
            [v69 setCornerRadius:v51];

            v70 = swift_allocObject();
            *(v70 + 16) = v60;
            *(v70 + 24) = v57;
            v71 = OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_basicAnimator;
            v72 = v60;
            v73 = v112;
            v74 = *&v112[OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_basicAnimator];
            v75 = swift_allocObject();
            v75[2] = sub_1005EA660;
            v75[3] = v70;
            v75[4] = v74;
            v76 = v74;
            v77 = v72;
            v78 = v76;

            UIViewPropertyAnimator.addModifiedAnimations(with:animations:)(0, sub_1005EBEAC, v75);

            v79 = swift_allocObject();
            *(v79 + 16) = v77;
            v80 = *&v73[v71];
            v81 = swift_allocObject();
            v81[2] = sub_1005EA66C;
            v81[3] = v79;
            v81[4] = v80;
            v82 = v80;
            v83 = v77;
            v84 = v82;

            UIViewPropertyAnimator.addModifiedAnimations(with:animations:)(0, sub_1005EBEAC, v81);
          }
        }
      }
    }
  }

  v85 = objc_opt_self();
  v86 = [v85 currentDevice];
  v87 = [v86 userInterfaceIdiom];

  if (v87 == 1)
  {
    goto LABEL_64;
  }

  if (!*&v2[v44])
  {
    goto LABEL_64;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter(&v116);

  v88 = v117;
  if (v117 == 255)
  {
    goto LABEL_64;
  }

  sub_10004ADFC(v116, v117);
  if (v88)
  {
    goto LABEL_64;
  }

  v89 = *&v2[v40];
  if (v89)
  {
    if (*(v89 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode) == 3 || !*(v89 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode))
    {
      if (v9)
      {
        v90 = *(v89 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
        if (v90)
        {
          LOBYTE(v116) = 11;
          v91 = sub_100025CE0();
          v92 = v90;
          if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v91) & 1) == 0 || (v93 = [v85 currentDevice], v94 = objc_msgSend(v93, "userInterfaceIdiom"), v93, v94 != 1))
          {
            sub_10065E888();
            sub_10065E9C0();
          }

          v95 = swift_allocObject();
          *(v95 + 16) = v92;
          v96 = *&v112[OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_basicAnimator];
          v97 = swift_allocObject();
          v97[2] = sub_1005EA658;
          v97[3] = v95;
          v97[4] = v96;
          v98 = v96;
          v99 = v92;
          v100 = v98;

          UIViewPropertyAnimator.addModifiedAnimations(with:animations:)(0, sub_1005EBEAC, v97);
        }
      }
    }

LABEL_64:
    v101 = *&v2[v40];
    if (v101)
    {
      v102 = *(v101 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
      v103 = v113;
      v104 = v114;
      v105 = v115;
      if (!v102 || !v9)
      {
        goto LABEL_69;
      }

      v106 = v102;
      v107 = [v2 view];
      if (v107)
      {
        v108 = v107;
        [v107 addSubview:v106];

LABEL_69:
        return;
      }

      goto LABEL_78;
    }

    goto LABEL_72;
  }

LABEL_80:
  __break(1u);
}

void sub_1005E9BF8(char *a1)
{
  v3 = [a1 isReversed];
  v4 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
  if (v4 >> 62 == 1)
  {
    v5 = (v4 & 0x3FFFFFFFFFFFFFFFLL);
    v6 = (v4 & 0x3FFFFFFFFFFFFFFFLL);
  }

  else
  {
    v5 = 0;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v1;
  *(v7 + 32) = v5;
  v8 = *&a1[OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_basicAnimator];
  v9 = swift_allocObject();
  v9[2] = sub_1005EA60C;
  v9[3] = v7;
  v9[4] = v8;
  v10 = v8;
  v11 = v1;

  UIViewPropertyAnimator.addModifiedAnimations(with:animations:)(0, sub_1005EA618, v9);

  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v3;
  v13 = *&a1[OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_easingAnimator];
  v14 = swift_allocObject();
  v14[2] = sub_1005EA624;
  v14[3] = v12;
  v14[4] = v13;
  v15 = v13;
  v16 = v11;
  v17 = v15;

  UIViewPropertyAnimator.addModifiedAnimations(with:animations:)(0, sub_1005EBEAC, v14);

  v18 = [v16 presentationController];
  if (v18)
  {
    v19 = v18;
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (!v20)
    {
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = swift_allocObject();
  *(v21 + 16) = v3;
  *(v21 + 24) = v20;
  *(v21 + 32) = v16;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1005EA630;
  *(v22 + 24) = v21;
  v23 = OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_completionBlocks;
  swift_beginAccess();
  v24 = *&a1[v23];
  v25 = v20;

  v26 = v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&a1[v23] = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_10049974C(0, v24[2] + 1, 1, v24);
    *&a1[v23] = v24;
  }

  v29 = v24[2];
  v28 = v24[3];
  if (v29 >= v28 >> 1)
  {
    v24 = sub_10049974C((v28 > 1), v29 + 1, 1, v24);
  }

  v24[2] = v29 + 1;
  v30 = &v24[2 * v29];
  v30[4] = sub_100547098;
  v30[5] = v22;
  *&a1[v23] = v24;
  swift_endAccess();
}

unint64_t sub_1005E9F44(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10109BD00, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void sub_1005E9F90()
{
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_initialArtworkImage) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_animationData) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_isAnimatingDismissal) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkViewMask) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowSmartTransition) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_isInTransition) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_needsUpdateArtworkTransitionData) = 0;
  v1 = v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkTransitionData;
  *(v1 + 2) = 0;
  *v1 = 512;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_didReceiveDonatedArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_outgoingArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer) = 0;
  v2 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtwork;
  v3 = type metadata accessor for MorphingMotionArtwork(0);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkState) = 0;
  v4 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionLayoutGuide;
  *(v0 + v4) = [objc_allocWithZone(UILayoutGuide) init];
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_motionArtworkManager) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_videoArtworksObserver) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_motionKeyframeObserver) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData) = 0;
  v5 = OBJC_IVAR____TtC5Music24NowPlayingViewController_previousMotionVideoArtwork;
  v6 = type metadata accessor for VideoArtwork();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_previousMotionBackgroundDataWasReady) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_fullScreenMorphingMotionConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_regularMorphingMotionConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_invertColorsStatusDidChangeObserver) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowMotionBackground) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionDynamicConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionFullScreenConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_viewSupportsMotionBackground) = 1;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_didViewAppear) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_isViewTransitioning) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_viewTransitionCompletions) = _swiftEmptyArrayStorage;
  v7 = v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode;
  *v7 = 0x8000000000000000;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 0u;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType) = 0;
  v8 = v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_finalSize;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_playingItem) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___backgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___animatedBackgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___backdropView) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_containerView) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlayingSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_windowEventNotificationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldIgnoreFullscreenTimer) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_presentLyricsTimer) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_backgroundObserver) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_didActivateObserver) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_screenTraitCollectionObserver) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_dismissalObserver) = 0;
  v9 = OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkCachingReference;
  type metadata accessor for Artwork.Caching.Reference();
  *(v0 + v9) = swift_allocObject();
  v10 = (v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_previousFrame);
  *v10 = 0u;
  v10[1] = 0u;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_timeLabel) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1005EA348()
{
  v1 = (v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
  v2 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
  if (v2 >> 62 == 1)
  {
    v12 = (v2 & 0x3FFFFFFFFFFFFFFFLL);
    v3 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController);
    if (v3)
    {
      v4 = v1[1];
      v5 = v1[2];
      v6 = v1[3];
      v7 = v1[4];
      v8 = v1[5];
      v9 = v1[6];
      v10 = *((swift_isaMask & *v3) + 0x190);
      sub_10012BAC0(v2, v4, v5, v6, v7, v8, v9);
      sub_10012BAC0(v2, v4, v5, v6, v7, v8, v9);
      v11 = v3;
      LOBYTE(v6) = v10();

      if (v6)
      {
        [v4 layoutIfNeeded];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1005EA4C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_1005E09AC(a1, v4, v5, v7, v6);
}

double sub_1005EA588(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (BYTE1(a4) != 255)
  {
    return sub_1005EA59C(a1, a2, a3, a4, SBYTE1(a4));
  }

  return result;
}

double sub_1005EA59C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 3 || a5 == 2)
  {
  }

  else if (a5 == 1)
  {
    sub_1005EA5C8(a1, a2, a3);
  }

  return result;
}

id sub_1005EA5C8(id result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;

    return v3;
  }

  return result;
}

id sub_1005EA6C8()
{
  v1 = *(v0 + 16);
  [*(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView) setAlpha:1.0];
  result = *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_morphingMotionSnapshot);
  if (result)
  {

    return [result setAlpha:0.0];
  }

  return result;
}

id sub_1005EA7FC()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  (*(v0 + 16))();
  v3 = *(v2 + 32);

  return [v3 convertRect:v1 fromCoordinateSpace:?];
}

uint64_t sub_1005EA878(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_1005EA8C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  result = *(v0 + 24);
  *(v1 + 24) = result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t sub_1005EA91C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MorphingMotionArtwork(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005EA980(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005EA9E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MorphingMotionArtwork(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1005EAA44()
{
  v1 = 0.0;
  if ((*(v0 + 24) & 1) == 0)
  {
    v1 = 1.0;
    if (*(*(v0 + 32) + OBJC_IVAR____TtC5Music24NowPlayingViewController_isViewTransitioning))
    {
      v1 = 0.0;
    }
  }

  return [*(v0 + 16) setAlpha:v1];
}

uint64_t sub_1005EAAC4()
{

  return swift_deallocObject();
}

unint64_t sub_1005EAB38()
{
  result = qword_101197938;
  if (!qword_101197938)
  {
    sub_1001109D0(&qword_101197920, &qword_100ED66D0);
    sub_1005EABC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101197938);
  }

  return result;
}

unint64_t sub_1005EABC4()
{
  result = qword_101197940;
  if (!qword_101197940)
  {
    sub_1001109D0(&qword_101197918, &qword_100ED66C8);
    sub_1005EAC50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101197940);
  }

  return result;
}

unint64_t sub_1005EAC50()
{
  result = qword_101197948;
  if (!qword_101197948)
  {
    sub_1001109D0(&qword_101197910, &qword_100ED66C0);
    sub_1005EACDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101197948);
  }

  return result;
}

unint64_t sub_1005EACDC()
{
  result = qword_101197950;
  if (!qword_101197950)
  {
    sub_1001109D0(&qword_101197908, &qword_100ED66B8);
    sub_1001109D0(&qword_1011978F8, &qword_100ED66A8);
    sub_1001109D0(&qword_1011978F0, &qword_100ED66A0);
    sub_1001109D0(&qword_101188300, &qword_100EC39E8);
    sub_100020674(&qword_101197958, &qword_101188300, &qword_100EC39E8, &protocol conformance descriptor for NowPlayingArtworkBackground<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101197950);
  }

  return result;
}

void *sub_1005EAE58()
{
  v1 = *(type metadata accessor for MorphingMotionArtwork(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1005E6F34(v2);
}

uint64_t sub_1005EAEB8()
{
  v1 = (type metadata accessor for MorphingMotionArtwork(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1005EAFEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for MorphingMotionArtwork(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_1005EB0D8()
{

  return swift_deallocObject();
}

uint64_t sub_1005EB13C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return sub_1005DFF54(a1);
}

unint64_t sub_1005EB32C(unint64_t result, void *a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_10012BB6C(result, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

unint64_t sub_1005EB340(unint64_t result, void *a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_10012BAC0(result, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_1005EB354()
{

  return swift_deallocObject();
}

id sub_1005EB3E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v4[0] = *(v0 + 24);
  v4[1] = v2;
  v4[2] = *(v0 + 56);
  return [v1 setTransform:v4];
}

id sub_1005EB424()
{
  v1 = *(v0 + 16);
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform:v3];
}

__n128 sub_1005EB4A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  result = *(v0 + 24);
  v1[3] = result;
  v1[4].n128_u8[0] = v2;
  return result;
}

unint64_t sub_1005EB4B8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10109BD68, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1005EB504()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v1 - 8);
  __chkstk_darwin();
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v4 = *(v12 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v7 = static OS_dispatch_queue.main.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_1005EB7F8;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010B6E68;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1005EA878(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_101182970, &qword_100EBD250);
  sub_100020674(&qword_101183F70, &qword_101182970, &qword_100EBD250, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

void sub_1005EB7F8()
{
  if ([*(v0 + 16) isViewLoaded])
  {
    sub_1005C6A74(0);
  }
}

id sub_1005EB860(void *a1)
{
  result = *(*(v1 + 16) + *a1);
  if (result)
  {
    return [result setAlpha:?];
  }

  return result;
}

uint64_t sub_1005EB8E0(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_1005D0848(a1, v4);
}

double sub_1005EB9A4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  static Date.timeIntervalSinceReferenceDate.getter();
  v7 = v4 + (v6 - v2) * v5;
  if (v7 >= v3)
  {
    v7 = v3;
  }

  return fmax(v7, 0.0);
}

uint64_t sub_1005EBA14(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1005EBA5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1005EBAB8()
{
  result = qword_101197A40;
  if (!qword_101197A40)
  {
    sub_1001109D0(&qword_101197A48, "ȿ\n");
    sub_1001109D0(&qword_101197928, &qword_100ED66D8);
    sub_1001109D0(&qword_101197920, &qword_100ED66D0);
    sub_1005EAB38();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_101197958, &qword_101188300, &qword_100EC39E8, &protocol conformance descriptor for NowPlayingArtworkBackground<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101197A40);
  }

  return result;
}

unint64_t sub_1005EBC08()
{
  result = qword_101197A50;
  if (!qword_101197A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101197A50);
  }

  return result;
}

void sub_1005EBF0C()
{
  v18.receiver = v0;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, "viewDidLoad");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  [v1 setAutoresizingMask:18];

  v3 = [v0 view];
  if (!v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  v5 = [v3 layer];

  [v5 setAllowsGroupBlending:0];
  v6 = [v0 view];
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v6 layer];

  [v8 setAllowsGroupOpacity:0];
  v9 = [v0 view];
  if (v9)
  {
    v10 = v9;
    v11 = OBJC_IVAR____TtC5Music27RatingControlViewController_ratingControl;
    [v9 addSubview:*&v0[OBJC_IVAR____TtC5Music27RatingControlViewController_ratingControl]];

    v12 = *&v0[v11];
    static CGSize.greatestFiniteSize.getter();
    [v12 sizeThatFits:?];
    v14 = v13;
    v16 = v15;

    [v0 setPreferredContentSize:{v14, v16}];
    sub_10010FC20(&unk_101182D80, "ʫ\n");
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_100EBC6B0;
    *(v17 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
    *(v17 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
    UIViewController.registerForTraitChanges<A>(_:handler:)();
    swift_unknownObjectRelease();

    return;
  }

LABEL_9:
  __break(1u);
}

id sub_1005EC180()
{
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, "viewDidLayoutSubviews");
  v1 = OBJC_IVAR____TtC5Music27RatingControlViewController_ratingControl;
  v2 = *&v0[OBJC_IVAR____TtC5Music27RatingControlViewController_ratingControl];
  static CGSize.greatestFiniteSize.getter();
  [v2 sizeThatFits:?];
  v4 = v3;
  v6 = v5;

  [v0 preferredContentSize];
  if (v4 != v8 || v6 != v7)
  {
    [v0 setPreferredContentSize:{v4, v6}];
  }

  result = [v0 view];
  if (result)
  {
    v11 = result;
    v12 = CGRect.centeringAlong(axes:in:)(0.0, 0.0, v4, v6);
    v14 = v13;
    v16 = v15;
    v18 = v17;

    [*&v0[v1] frame];
    v25.origin.x = v19;
    v25.origin.y = v20;
    v25.size.width = v21;
    v25.size.height = v22;
    v24.origin.x = v12;
    v24.origin.y = v14;
    v24.size.width = v16;
    v24.size.height = v18;
    result = CGRectEqualToRect(v24, v25);
    if ((result & 1) == 0)
    {
      return [*&v0[v1] setFrame:{v12, v14, v16, v18}];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1005EC334(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_starButtons] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_starCount] = a1;
  *&v2[OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_rating] = a2;
  v3 = [objc_allocWithZone(UIPanGestureRecognizer) init];
  *&v2[OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_panGestureRecognizer] = v3;
  v4 = [objc_allocWithZone(UITapGestureRecognizer) init];
  *&v2[OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_tapGestureRecognizer] = v4;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for RatingControlViewController.RatingControl();
  v5 = objc_msgSendSuper2(&v9, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v5 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
  sub_1005EC82C();
  v6 = OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_panGestureRecognizer;
  [v5 addGestureRecognizer:*&v5[OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_panGestureRecognizer]];
  [*&v5[v6] addTarget:v5 action:"panGestureRecognized:"];
  v7 = OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_tapGestureRecognizer;
  [v5 addGestureRecognizer:*&v5[OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_tapGestureRecognizer]];
  [*&v5[v7] addTarget:v5 action:"tapGestureRecognized:"];

  return v5;
}

void sub_1005EC4FC()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for RatingControlViewController.RatingControl();
  objc_msgSendSuper2(&v14, "layoutSubviews");
  v1 = OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_starButtons;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {

    v3 = sub_1007E9C28(0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_22;
    }

    v3 = *(v2 + 32);
  }

  [v3 intrinsicContentSize];
  v5 = v4;
  v7 = v6;
  v8 = *&v0[v1];
  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_8;
    }

LABEL_19:

    return;
  }

  v9 = _CocoaArrayWrapper.endIndex.getter();
  if (!v9)
  {
    goto LABEL_19;
  }

LABEL_8:
  if (v9 < 1)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v10 = 0;
  v11 = 0.0;
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v12 = sub_1007E9C28(v10, v8);
    }

    else
    {
      v12 = *(v8 + 8 * v10 + 32);
    }

    v13 = v12;
    ++v10;
    [v12 setFrame:{v11, 0.0, v5, v7}];

    v11 = v5 + 10.0 + v11;
  }

  while (v9 != v10);
}

uint64_t sub_1005EC82C()
{
  v1 = v0;
  v22 = type metadata accessor for UIButton.Configuration();
  v18 = *(v22 - 8);
  __chkstk_darwin();
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v17 - v4;
  static UIButton.Configuration.plain()();
  v6 = [objc_opt_self() clearColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  v7 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.visualEffect.setter();
  v7(aBlock, 0);
  v21 = v5;
  result = UIButton.Configuration.contentInsets.setter();
  v9 = *&v0[OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_starCount];
  if (v9 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v9)
    {
      v10 = sub_100009F78(0, &qword_101183A18, UIButton_ptr);
      v11 = 0;
      v19 = OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_rating;
      v20 = v10;
      v12 = OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_starButtons;
      v13 = *(v18 + 16);
      do
      {
        v13(v3, v21, v22);
        v14 = UIButton.init(configuration:primaryAction:)();
        [v14 setUserInteractionEnabled:0];
        aBlock[4] = sub_1005ECB74;
        aBlock[5] = 0;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10027D328;
        aBlock[3] = &unk_1010B7348;
        v15 = _Block_copy(aBlock);
        [v14 setConfigurationUpdateHandler:v15];
        _Block_release(v15);
        if (v11 < *&v1[v19])
        {
          [v14 setSelected:1];
        }

        [v1 addSubview:v14];
        swift_beginAccess();
        v16 = v14;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*&v1[v12] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v12] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v17 = *((*&v1[v12] & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        ++v11;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }

      while (v9 != v11);
    }

    return (*(v18 + 8))(v21, v22);
  }

  return result;
}

void sub_1005ECB74(void *a1)
{
  sub_10010FC20(&unk_101183AB0, &qword_100EBF4D0);
  __chkstk_darwin();
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v14 - v5;
  if ([a1 state] == 4)
  {
    if (qword_10117F948 != -1)
    {
      swift_once();
    }

    v7 = &qword_101197A68;
  }

  else
  {
    if (qword_10117F940 != -1)
    {
      swift_once();
    }

    v7 = &qword_101197A60;
  }

  v8 = *v7;
  UIButton.configuration.getter();
  v9 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v9 - 8) + 48))(v6, 1, v9))
  {

    sub_1005ED588(v6, v3);
    UIButton.configuration.setter();

    sub_1005ED5F8(v6);
  }

  else
  {
    if (qword_10117F950 != -1)
    {
      swift_once();
    }

    v10 = qword_101197A70;
    v11 = String._bridgeToObjectiveC()();

    v12 = [objc_opt_self() systemImageNamed:v11 withConfiguration:v10];

    if (v12)
    {
      v13 = [v12 imageWithTintColor:v8 renderingMode:1];
    }

    UIButton.Configuration.image.setter();
    UIButton.configuration.setter();
  }
}

void sub_1005ECE34(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = a1;
  if ([v4 state] == 3)
  {
    [v4 locationInView:v6];
    sub_1005ECEB8(v5);
  }
}

void sub_1005ECEB8(CGFloat a1)
{
  v5 = OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_starButtons;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
    goto LABEL_59;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

LABEL_3:
  if ((v6 & 0xC000000000000001) != 0)
  {

    v7 = sub_1007E9C28(0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v7 = *(v6 + 32);
  }

  [v7 frame];
  if (CGRectGetMinX(v25) > a1)
  {
    v3 = OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_rating;
    v8 = *(v2 + OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_rating);
    *(v2 + OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_rating) = 0;
    if (!v8)
    {

      return;
    }

    v24 = v7;
    v6 = *(v2 + v5);
    v1 = v2;
    if (!(v6 >> 62))
    {
      v5 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:

      if (v5)
      {
        v9 = 0;
        do
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v10 = sub_1007E9C28(v9, v6);
          }

          else
          {
            if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_56;
            }

            v10 = *(v6 + 8 * v9 + 32);
          }

          v11 = v10;
          v2 = (v9 + 1);
          if (__OFADD__(v9, 1))
          {
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

          [v10 setSelected:v9 < *(v1 + v3)];

          ++v9;
        }

        while (v2 != v5);
      }

      return;
    }

LABEL_65:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_10;
  }

LABEL_20:
  while (1)
  {
    v12 = Int.seconds.getter(0x7FFFFFFFFFFFFFFFLL);
    v1 = *(v2 + v5);
    v6 = v1 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v6)
    {
      break;
    }

    v23 = v5;
    v24 = v2;
    v5 = 0;
    v3 = 0;
    v13 = 1;
    v2 = &selRef_setContacts_;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v14 = sub_1007E9C28(v5, v1);
      }

      else
      {
        if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        v14 = *(v1 + 8 * v5 + 32);
      }

      v15 = v14;
      v16 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      [v14 center];
      CGPoint.distance(to:)();
      v18 = v17;

      if (v18 < v12)
      {
        v3 = v5;
      }

      v13 &= v18 >= v12;
      if (v18 < v12)
      {
        v12 = v18;
      }

      ++v5;
    }

    while (v16 != v6);

    if (v13)
    {
      return;
    }

    v19 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_64;
    }

    v3 = OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_rating;
    v20 = *(v24 + OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_rating);
    *(v24 + OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_rating) = v19;
    if (v20 == v19)
    {
      return;
    }

    v1 = *(v24 + v23);
    v6 = v1 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v6)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v21 = sub_1007E9C28(v5, v1);
      }

      else
      {
        if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v21 = *(v1 + 8 * v5 + 32);
      }

      v22 = v21;
      v2 = (v5 + 1);
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v21 setSelected:v5 < *(v24 + v3)];

      ++v5;
      if (v2 == v6)
      {
        goto LABEL_49;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

LABEL_49:
}

void sub_1005ED28C()
{
  sub_100009F78(0, &qword_101180C98, UIColor_ptr);
  v0 = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(229, 229, 234, 1.0);
  v1 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.2];
  v2 = [v0 _colorBlendedWithColor:v1 compositingFilter:kCAFilterPlusD];

  if (v2)
  {

    qword_101197A60 = v2;
  }

  else
  {
    __break(1u);
  }
}

id sub_1005ED350()
{
  v0 = *UIColor.MusicTint.normal.unsafeMutableAddressor();
  qword_101197A68 = v0;

  return v0;
}

void sub_1005ED384()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleTitle3;
  v2 = [v0 configurationWithTextStyle:v1 scale:-1];

  qword_101197A70 = v2;
}

void sub_1005ED3F4()
{
  UIEdgeInsets.init(value:)();
  qword_101197A78 = v0;
  unk_101197A80 = v1;
  qword_101197A88 = v2;
  unk_101197A90 = v3;
}

id sub_1005ED450()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RatingControlViewController.RatingControl();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005ED588(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101183AB0, &qword_100EBF4D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005ED5F8(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101183AB0, &qword_100EBF4D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1005ED660(void *a1)
{
  v2 = [a1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 invalidateIntrinsicContentSize];

  v4 = [a1 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 setNeedsLayout];
}

void sub_1005ED700()
{
  v1 = OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_starButtons;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {

    v3 = sub_1007E9C28(0, v2);

    goto LABEL_6;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v2 + 32);
LABEL_6:
    [v3 intrinsicContentSize];

    Int.seconds.getter(*(v0 + OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_starCount));
    return;
  }

  __break(1u);
}

void *sub_1005ED818(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for MusicAppDestination.SharePageDescriptor.Source();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicAppDestination.SharePageDescriptor();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC5Music23ShareAssetStoryActivity_itemDescriptor;
  swift_beginAccess();
  (*(v8 + 16))(v10, &v2[v11], v7);
  MusicAppDestination.SharePageDescriptor.source.getter();
  (*(v8 + 8))(v10, v7);
  v12 = (*(v4 + 88))(v6, v3);
  if (v12 == enum case for MusicAppDestination.SharePageDescriptor.Source.data(_:))
  {
    (*(v4 + 96))(v6, v3);
    return *v6;
  }

  if (v12 != enum case for MusicAppDestination.SharePageDescriptor.Source.itemSource(_:))
  {
    (*(v4 + 8))(v6, v3);
    return 0;
  }

  (*(v4 + 96))(v6, v3);
  v14 = *v6;
  v15 = objc_allocWithZone(UIActivityViewController);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v17 = [v15 initWithActivityItems:isa applicationActivities:0];

  v18 = [v2 activityType];
  v19 = [v14 activityViewController:v17 itemForActivityType:v18];

  if (!v19)
  {
LABEL_10:
    swift_unknownObjectRelease();
    return 0;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100016270(v25, v26);
  sub_10000DD18(v26, v25);
  sub_1005F049C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_10000959C(v26);
    goto LABEL_10;
  }

  v20 = v24;
  v21 = UIImagePNGRepresentation(v24);
  if (v21)
  {
    v22 = v21;
    v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    swift_unknownObjectRelease();
    sub_10000959C(v26);
    return v23;
  }

  sub_10000959C(v26);
  swift_unknownObjectRelease();

  return 0;
}

id sub_1005EDBA4(unsigned __int8 a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = v4;
  v9 = type metadata accessor for MusicAppDestination.SharePageDescriptor.Kind();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v26 - v13;
  if ((sub_10044BC7C(a1) & 1) == 0)
  {
    goto LABEL_8;
  }

  v26 = a3;
  v27 = a2;
  MusicAppDestination.SharePageDescriptor.kind.getter();
  (*(v10 + 104))(v12, enum case for MusicAppDestination.SharePageDescriptor.Kind.video(_:), v9);
  sub_1005F04E8(&unk_101197BB0, &type metadata accessor for MusicAppDestination.SharePageDescriptor.Kind, &protocol conformance descriptor for MusicAppDestination.SharePageDescriptor.Kind);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v31 != v29 || v32 != v30)
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v17 = *(v10 + 8);
    v17(v12, v9);
    v17(v14, v9);

    a3 = v26;
    a2 = v27;
    if ((v16 & 1) == 0 || a1 <= 2u)
    {
      goto LABEL_9;
    }

LABEL_8:
    sub_10012BA6C(a3);
    v18 = type metadata accessor for MusicAppDestination.SharePageDescriptor();
    (*(*(v18 - 8) + 8))(a2, v18);
    type metadata accessor for ShareAssetStoryActivity(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v15 = *(v10 + 8);
  v15(v12, v9);
  v15(v14, v9);

  a3 = v26;
  a2 = v27;
  if (a1 > 2u)
  {
    goto LABEL_8;
  }

LABEL_9:
  v5[OBJC_IVAR____TtC5Music23ShareAssetStoryActivity_socialNetwork] = a1;
  v20 = OBJC_IVAR____TtC5Music23ShareAssetStoryActivity_itemDescriptor;
  v21 = a3;
  v22 = type metadata accessor for MusicAppDestination.SharePageDescriptor();
  v23 = *(v22 - 8);
  (*(v23 + 16))(&v5[v20], a2, v22);
  sub_10012B7A8(v21, &v5[OBJC_IVAR____TtC5Music23ShareAssetStoryActivity_presentationSource]);
  v24 = type metadata accessor for ShareAssetStoryActivity(0);
  v28.receiver = v5;
  v28.super_class = v24;
  v25 = objc_msgSendSuper2(&v28, "init");
  sub_10012BA6C(v21);
  (*(v23 + 8))(a2, v22);
  return v25;
}

uint64_t sub_1005EE220@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for URLQueryItem();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v34 - v7;
  __chkstk_darwin();
  v39 = &v34 - v9;
  sub_10010FC20(&qword_101194980, &qword_100ECA390);
  __chkstk_darwin();
  v11 = &v34 - v10;
  v12 = type metadata accessor for URLComponents();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v38 = v13;
  v16 = *(v13 + 48);
  v40 = v12;
  if (v16(v11, 1, v12) == 1)
  {
    sub_1000095E8(v11, &qword_101194980, &qword_100ECA390);
    v17 = type metadata accessor for URL();
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }

  else
  {
    v34 = v3;
    v36 = a2;
    (*(v38 + 32))(v15, v11, v40);
    URLQueryItem.init(name:value:)();
    v35 = v8;
    URLQueryItem.init(name:value:)();
    URLQueryItem.init(name:value:)();

    v19 = URLComponents.queryItems.getter();
    v20 = _swiftEmptyArrayStorage;
    if (v19)
    {
      v20 = v19;
    }

    v41 = v20;
    sub_10010FC20(&unk_101197BC0, &unk_100ECF170);
    v21 = *(v4 + 72);
    v22 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v37 = v6;
    v23 = 2 * v21;
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_100EBE260;
    v25 = v24 + v22;
    v26 = *(v4 + 16);
    v27 = v39;
    v28 = v34;
    v26(v25, v39, v34);
    v29 = v25 + v21;
    v30 = v35;
    v26(v29, v35, v28);
    v31 = v25 + v23;
    v32 = v37;
    v26(v31, v37, v28);
    sub_1001259EC(v24);
    URLComponents.queryItems.setter();
    URLComponents.url.getter();
    v33 = *(v4 + 8);
    v33(v32, v28);
    v33(v30, v28);
    v33(v27, v28);
    return (*(v38 + 8))(v15, v40);
  }
}

uint64_t sub_1005EE7A8(uint64_t a1)
{
  result = type metadata accessor for MusicAppDestination.SharePageDescriptor();
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

uint64_t sub_1005EE84C(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for MusicAppDestination.SharePageDescriptor.Kind();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin();
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v2, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == enum case for MusicAppDestination.SharePageDescriptor.Kind.image(_:))
  {
    return 0x6A2E63696C627570;
  }

  if (v8 == enum case for MusicAppDestination.SharePageDescriptor.Kind.video(_:))
  {
    return 0x6D2E63696C627570;
  }

  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(17);
  v10._countAndFlagsBits = 0x656C646E61686E55;
  v10._object = 0xEF20646E696B2064;
  String.append(_:)(v10);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_1005EEC10(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1005EECF8(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for MusicAppDestination.SharePageDescriptor.Kind();
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

uint64_t sub_1005EED94()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedApplication];
  v7 = OBJC_IVAR____TtC5Music23ShareAssetStoryActivity_socialNetwork;
  sub_10044B664(*(v1 + OBJC_IVAR____TtC5Music23ShareAssetStoryActivity_socialNetwork), v5);
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  (*(v3 + 8))(v5, v2);
  LODWORD(v5) = [v6 canOpenURL:v10];

  if (v5)
  {
    v11 = sub_10044BC7C(*(v1 + v7));
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1005EEED8()
{
  v1 = v0;
  v112 = type metadata accessor for Date();
  v111 = *(v112 - 8);
  __chkstk_darwin();
  v109 = &v95 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for MusicAppDestination.SharePageDescriptor.Kind();
  v107 = *(v108 - 8);
  __chkstk_darwin();
  v96 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v105 = &v95 - v4;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v99 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v102 = &v95 - v6;
  __chkstk_darwin();
  v103 = &v95 - v7;
  __chkstk_darwin();
  v9 = &v95 - v8;
  v10 = type metadata accessor for MusicAppDestination.SharePageDescriptor();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v95 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v104 = &v95 - v13;
  __chkstk_darwin();
  v101 = &v95 - v14;
  __chkstk_darwin();
  v16 = &v95 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  __chkstk_darwin();
  v97 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v98 = &v95 - v20;
  v21 = __chkstk_darwin();
  v120 = &v95 - v22;
  v100 = OBJC_IVAR____TtC5Music23ShareAssetStoryActivity_socialNetwork;
  v23 = v0[OBJC_IVAR____TtC5Music23ShareAssetStoryActivity_socialNetwork];
  v110 = sub_1005ED818(v21);
  v114 = v24;
  v25 = OBJC_IVAR____TtC5Music23ShareAssetStoryActivity_itemDescriptor;
  swift_beginAccess();
  v26 = *(v11 + 16);
  v118 = v11 + 16;
  v117 = v26;
  v26(v16, &v0[v25], v10);
  MusicAppDestination.SharePageDescriptor.url.getter();
  v27 = *(v11 + 8);
  v106 = v10;
  *&v119 = v11 + 8;
  v116 = v27;
  v27(v16, v10);
  v113 = v18;
  v28 = *(v18 + 48);
  v121 = v17;
  v29 = v28(v9, 1, v17);
  v30 = v9;
  v31 = v1;
  sub_1000095E8(v30, &qword_101183A20, &unk_100EBCF80);
  v115 = v23;
  if (v29 == 1)
  {
    if (v23 > 2)
    {

      LOBYTE(v23) = v115;
    }

    else
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v31 = v1;
      LOBYTE(v23) = v115;
      if ((v32 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    URL.init(string:)();
    swift_beginAccess();
    MusicAppDestination.SharePageDescriptor.url.setter();
    swift_endAccess();
  }

LABEL_7:
  v126 = sub_10044B4CC(v23);
  v103 = v25;
  v33 = v101;
  v34 = v106;
  v117(v101, &v31[v25], v106);
  v35 = v102;
  MusicAppDestination.SharePageDescriptor.url.getter();
  v116(v33, v34);
  v36 = v121;
  if (v28(v35, 1, v121) == 1)
  {
    v37 = v113;
LABEL_11:
    v42 = v115;
    sub_1000095E8(v35, &qword_101183A20, &unk_100EBCF80);
    sub_10044B664(v42, v120);
    v43 = v108;
    v44 = v107;
    goto LABEL_24;
  }

  v38 = v113;
  v39 = v31;
  v40 = *(v113 + 32);
  v41 = v98;
  v40(v98, v35, v36);
  v35 = v99;
  v102 = v39;
  sub_1005EE220(v99);
  if (v28(v35, 1, v36) == 1)
  {
    (*(v38 + 8))(v41, v36);
    v31 = v102;
    v37 = v38;
    goto LABEL_11;
  }

  v40(v97, v35, v36);
  v42 = v115;
  v45 = v41;
  if (v115 <= 1)
  {
    if (v115)
    {
      v46 = 0xD000000000000025;
    }

    else
    {
      v46 = 0xD000000000000026;
    }

    if (v115)
    {
      v47 = "aredSticker.contentURL";
    }

    else
    {
      v47 = "ativekit.attachmentURL";
    }

    v31 = v102;
    v44 = v107;
    v48 = v97;
    goto LABEL_22;
  }

  v31 = v102;
  v44 = v107;
  v48 = v97;
  if (v115 == 2)
  {
    v47 = "redSticker.backgroundVideo";
    v46 = 0xD000000000000026;
LABEL_22:
    v49 = URL.absoluteString.getter();
    v125 = &type metadata for String;
    *&v124 = v49;
    *(&v124 + 1) = v50;
    sub_100016270(&v124, &v123);
    v51 = v126;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v122 = v51;
    sub_1006C5E68(&v123, v46, v47 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);

    v126 = v122;
    v42 = v115;
  }

  sub_10044C294(v48, 0x65723A656C707061, 0xED00003A79616C70, v42, v120);
  v53 = v48;
  v37 = v38;
  v54 = *(v38 + 8);
  v55 = v121;
  v54(v53, v121);
  v54(v45, v55);
  v43 = v108;
LABEL_24:
  v56 = v104;
  v117(v104, &v103[v31], v34);
  v57 = v105;
  MusicAppDestination.SharePageDescriptor.kind.getter();
  v116(v56, v34);
  v58 = (*(v44 + 88))(v57, v43);
  if (v58 == enum case for MusicAppDestination.SharePageDescriptor.Kind.image(_:))
  {
    if (v31[v100] > 1u)
    {
      v59 = v110;
      v60 = v114;
      v61 = v37;
      if (v31[v100] != 2)
      {

        v68 = v121;
        goto LABEL_38;
      }
    }

    else
    {
      v59 = v110;
      v60 = v114;
      v61 = v37;
    }

    v68 = v121;
    v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v65 & 1) == 0)
    {
      v66 = sub_10044BA2C(v42);
      goto LABEL_39;
    }

LABEL_38:
    v66 = sub_10044BAA0(v42);
LABEL_39:
    v69 = v67;
    if (v60 >> 60 == 15)
    {
      sub_10040824C(v66, v67, &v123);

      sub_1000095E8(&v123, &unk_101183F30, qword_100EBF960);
      if (v42 != 3)
      {
        goto LABEL_50;
      }

      goto LABEL_43;
    }

    v125 = &type metadata for Data;
    *&v124 = v59;
    *(&v124 + 1) = v60;
    v70 = v66;
    sub_100016270(&v124, &v123);
    sub_10002BC44(v59, v60);
    v71 = v126;
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v71;
    v73 = v70;
    LODWORD(v70) = v115;
    sub_1006C5E68(&v123, v73, v69, v72);

    v126 = v122;
    if (v70 == 3)
    {
LABEL_43:
      v125 = &type metadata for String;
      *&v124 = 0x656772616CLL;
      *(&v124 + 1) = 0xE500000000000000;
      sub_100016270(&v124, &v123);
      v74 = v126;
      v75 = swift_isUniquelyReferenced_nonNull_native();
      v122 = v74;
      sub_1006C5E68(&v123, 0xD000000000000039, 0x8000000100E52060, v75);
LABEL_49:
      v126 = v122;
      goto LABEL_50;
    }

    goto LABEL_50;
  }

  if (v58 == enum case for MusicAppDestination.SharePageDescriptor.Kind.video(_:))
  {
    v61 = v37;
    if (v42 > 1)
    {
      v59 = v110;
      v68 = v121;
      if (v42 != 2)
      {
        goto LABEL_43;
      }

      v63 = "wluco1oowhb7pga.imageSize";
      v64 = 0xD000000000000028;
      v62 = v114;
    }

    else
    {
      v59 = v110;
      v62 = v114;
      if (v42)
      {
        v64 = 0xD00000000000002ALL;
        v63 = "aredSticker.backgroundVideo";
      }

      else
      {
        v63 = "ativekit.backgroundVideo";
        v64 = 0xD00000000000002BLL;
      }

      v68 = v121;
    }

    if (v62 >> 60 != 15)
    {
      v125 = &type metadata for Data;
      *&v124 = v59;
      *(&v124 + 1) = v62;
      sub_100016270(&v124, &v123);
      sub_10002BC44(v59, v62);
      v76 = v126;
      v77 = swift_isUniquelyReferenced_nonNull_native();
      v122 = v76;
      sub_1006C5E68(&v123, v64, v63 | 0x8000000000000000, v77);

      goto LABEL_49;
    }

    sub_10040824C(v64, v63 | 0x8000000000000000, &v123);

    sub_1000095E8(&v123, &unk_101183F30, qword_100EBF960);
LABEL_50:
    v78 = [objc_opt_self() generalPasteboard];
    sub_10010FC20(&unk_1011927C0, &unk_100ED6A50);
    v79 = swift_allocObject();
    v119 = xmmword_100EBC6B0;
    *(v79 + 16) = xmmword_100EBC6B0;
    *(v79 + 32) = v126;
    sub_10010FC20(&qword_101197BD0, &qword_100EC9700);
    isa = Array._bridgeToObjectiveC()().super.isa;

    sub_10010FC20(&qword_101197BD8, &unk_100ED6A60);
    inited = swift_initStackObject();
    *(inited + 16) = v119;
    *(inited + 32) = UIPasteboardOptionExpirationDate;
    v82 = UIPasteboardOptionExpirationDate;
    v83 = v109;
    Date.init()();
    v84 = v112;
    *(inited + 64) = v112;
    sub_10001C8B8((inited + 40));
    Date.addingTimeInterval(_:)();
    (*(v111 + 8))(v83, v84);
    sub_10010D62C(inited);
    swift_setDeallocating();
    sub_1000095E8(inited + 32, &unk_101180460, &qword_100EDFDA0);
    type metadata accessor for OptionsKey(0);
    sub_1005F04E8(&qword_1011808E8, type metadata accessor for OptionsKey, &unk_100EBC3E4);
    v85 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v78 setItems:isa options:v85];

    v86 = [objc_opt_self() sharedApplication];
    v87 = v120;
    URL._bridgeToObjectiveC()(&var18);
    v89 = v88;
    sub_10010CD7C(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_1005F04E8(&qword_10118A3E0, type metadata accessor for OpenExternalURLOptionsKey, &unk_100EBC3A0);
    v90 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v86 openURL:v89 options:v90 completionHandler:0];

    [v31 activityDidFinish:1];
    sub_100029CA4(v59, v114);
    (*(v61 + 8))(v87, v68);
    return 1;
  }

  *&v124 = 0;
  *(&v124 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(33);
  v92._object = 0x8000000100E52040;
  v92._countAndFlagsBits = 0xD00000000000001FLL;
  String.append(_:)(v92);
  v93 = v95;
  v117(v95, &v103[v31], v34);
  v94 = v96;
  MusicAppDestination.SharePageDescriptor.kind.getter();
  v116(v93, v34);
  _print_unlocked<A, B>(_:_:)();
  (*(v44 + 8))(v94, v43);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_1005F0000(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for MusicAppDestination.SharePageDescriptor.Kind();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = OBJC_IVAR____TtC5Music30ShareAssetActivityItemProvider_kind;
  sub_1005EE84C(v9);
  v10 = objc_allocWithZone(NSItemProvider);
  v11 = String._bridgeToObjectiveC()();

  v12 = [v10 initWithItem:isa typeIdentifier:v11];

  v13 = [objc_allocWithZone(LPLinkMetadata) init];
  (*(v4 + 16))(v6, &v2[v8], v3);
  v14 = (*(v4 + 88))(v6, v3);
  if (v14 == enum case for MusicAppDestination.SharePageDescriptor.Kind.image(_:))
  {
    v15 = &selRef_setImageProvider_;
LABEL_5:
    [v13 *v15];

    return v13;
  }

  if (v14 == enum case for MusicAppDestination.SharePageDescriptor.Kind.video(_:))
  {
    v15 = &selRef_setVideoProvider_;
    goto LABEL_5;
  }

  v22[0] = 0;
  v22[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v17 = [v2 description];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21._countAndFlagsBits = v18;
  v21._object = v20;
  String.append(_:)(v21);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1005F02A4(__n128 a1)
{
  v2 = type metadata accessor for MusicAppDestination.SharePageDescriptor.Kind();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC5Music30ShareAssetActivityItemProvider_kind, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for MusicAppDestination.SharePageDescriptor.Kind.image(_:))
  {
    return 0x6A2E63696C627570;
  }

  if (v7 == enum case for MusicAppDestination.SharePageDescriptor.Kind.video(_:))
  {
    return 0x6D2E63696C627570;
  }

  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(17);
  v9._countAndFlagsBits = 0x656C646E61686E55;
  v9._object = 0xEF20646E696B2064;
  String.append(_:)(v9);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t sub_1005F049C()
{
  result = qword_101183B40;
  if (!qword_101183B40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101183B40);
  }

  return result;
}

uint64_t sub_1005F04E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1005F0598(uint64_t a1)
{
  v17.receiver = v1;
  v17.super_class = type metadata accessor for LyricsSharingTransitionView();
  objc_msgSendSuper2(&v17, "layoutSubviews");
  v2 = OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_shadowView;
  v3 = [*&v1[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_shadowView] layer];
  [*&v1[v2] bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [*&v1[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_containerView] layer];
  [v12 cornerRadius];
  v14 = v13;

  v15 = [objc_opt_self() bezierPathWithRoundedRect:v5 cornerRadius:{v7, v9, v11, v14}];
  v16 = [v15 CGPath];

  [v3 setShadowPath:v16];
}

id sub_1005F0754(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LyricsSharingTransitionView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1005F0848(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v5 = v4;
  type metadata accessor for UITraitOverrides();
  __chkstk_darwin();
  *&v4[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_finalLabelTopConstraint] = 0;
  v9 = [objc_allocWithZone(UIView) init];
  v10 = UIView.forAutolayout.getter();

  *&v5[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_highlightView] = v10;
  [v10 setBackgroundColor:*(a3 + 568)];
  v11 = [objc_allocWithZone(UIView) init];
  v12 = UIView.forAutolayout.getter();

  *&v5[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_shadowView] = v12;
  [v12 setAlpha:0.0];
  v13 = [objc_allocWithZone(UIView) init];
  v14 = UIView.forAutolayout.getter();

  v15 = OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_containerView;
  *&v5[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_containerView] = v14;
  v16 = [v14 layer];
  [v16 setCornerCurve:kCACornerCurveContinuous];

  v17 = [*&v5[v15] layer];
  [v17 setCornerRadius:*(a3 + 576)];

  v18 = [*&v5[v15] layer];
  [v18 setMasksToBounds:1];

  v19 = objc_allocWithZone(type metadata accessor for BackdropView());
  v20 = sub_100453A34();
  v21 = UIView.forAutolayout.getter();

  *&v5[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_backgroundView] = v21;
  [v21 setHidden:1];
  v22 = [objc_allocWithZone(UILabel) init];
  v23 = UIView.forAutolayout.getter();

  v24 = OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_finalLabel;
  *&v5[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_finalLabel] = v23;
  [v23 setNumberOfLines:0];
  v25 = qword_10117FDA8;
  v26 = *&v5[v24];
  if (v25 != -1)
  {
    swift_once();
  }

  [v26 setFont:qword_101219640];

  v27 = qword_10117FDB0;
  v28 = *&v5[v24];
  if (v27 != -1)
  {
    swift_once();
  }

  [v28 setTextColor:qword_101219648];

  v29 = *&v5[v24];
  v30 = *(a1 + *(type metadata accessor for Lyrics.TextLine(0) + 64));
  v31 = v29;
  v30();
  v32 = String._bridgeToObjectiveC()();

  [v31 setText:v32];

  [*&v5[v24] setAlpha:0.0];
  *&v5[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_initialView] = a2;
  v33 = type metadata accessor for LyricsSharingTransitionView();
  v136.receiver = v5;
  v136.super_class = v33;
  v34 = a2;
  v35 = objc_msgSendSuper2(&v136, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  UIView.traitOverrides.getter();
  sub_100050078();
  dispatch thunk of UIMutableTraits.subscript.setter();
  UIView.traitOverrides.setter();
  v36 = [objc_opt_self() currentTraitCollection];
  v37 = [v36 userInterfaceStyle];

  v38 = *&v35[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_shadowView];
  if (v37 == 2)
  {
    v39 = qword_10117FE08;
    v40 = v38;
    if (v39 != -1)
    {
      swift_once();
    }

    v137 = xmmword_101219728;
    v138 = *algn_101219738;
    v139 = qword_101219748;
    v41 = xmmword_101219728;
    UIView.shadow.setter(&v137);

    v42 = [*&v35[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_backgroundView] layer];
    if (qword_10117FE10 != -1)
    {
      swift_once();
    }

    sub_10018DC74(qword_101219750);
    v43.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v42 setFilters:v43.super.isa];
  }

  else
  {
    v44 = qword_10117FDF8;
    v43.super.isa = v38;
    if (v44 != -1)
    {
      swift_once();
    }

    v137 = xmmword_1012196D8;
    v138 = *algn_1012196E8;
    v139 = qword_1012196F8;
    v45 = xmmword_1012196D8;
    UIView.shadow.setter(&v137);
  }

  v46 = [v35 layer];
  [v46 setAnchorPoint:{0.0, 0.5}];

  v47 = OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_shadowView;
  [v35 addSubview:*&v35[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_shadowView]];
  v48 = OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_containerView;
  [v35 addSubview:*&v35[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_containerView]];
  v132 = OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_backgroundView;
  [*&v35[v48] addSubview:*&v35[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_backgroundView]];
  v49 = OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_highlightView;
  [*&v35[v48] addSubview:*&v35[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_highlightView]];
  v133 = OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_initialView;
  v50 = *&v35[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_initialView];
  v51 = *&v35[v48];
  v52 = v50;
  v53 = UIView.forAutolayout.getter();

  [v51 addSubview:v53];
  v54 = OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_finalLabel;
  [*&v35[v48] addSubview:*&v35[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_finalLabel]];
  v131 = v54;
  v55 = [*&v35[v54] topAnchor];
  v56 = [*&v35[v48] topAnchor];
  v57 = *(a3 + 584);
  v58 = [v55 constraintEqualToAnchor:v56 constant:v57];

  v134 = OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_finalLabelTopConstraint;
  v59 = *&v35[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_finalLabelTopConstraint];
  *&v35[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_finalLabelTopConstraint] = v58;

  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_100ED6A70;
  v61 = [*&v35[v48] leadingAnchor];
  v62 = [v35 leadingAnchor];
  v63 = [v61 constraintEqualToAnchor:v62];

  *(v60 + 32) = v63;
  v64 = [*&v35[v48] trailingAnchor];
  v65 = [v35 trailingAnchor];
  v66 = [v64 constraintEqualToAnchor:v65];

  *(v60 + 40) = v66;
  v67 = [*&v35[v48] topAnchor];
  v68 = [v35 topAnchor];
  v69 = [v67 constraintEqualToAnchor:v68];

  *(v60 + 48) = v69;
  v70 = [*&v35[v48] bottomAnchor];
  v71 = [v35 bottomAnchor];
  v72 = [v70 constraintEqualToAnchor:v71];

  *(v60 + 56) = v72;
  v73 = [*&v35[v47] leadingAnchor];
  v74 = [v35 leadingAnchor];
  v75 = [v73 constraintEqualToAnchor:v74];

  *(v60 + 64) = v75;
  v76 = [*&v35[v47] trailingAnchor];
  v77 = [v35 trailingAnchor];
  v78 = [v76 constraintEqualToAnchor:v77];

  *(v60 + 72) = v78;
  v79 = [*&v35[v47] topAnchor];
  v80 = [v35 topAnchor];
  v81 = [v79 constraintEqualToAnchor:v80];

  *(v60 + 80) = v81;
  v82 = [*&v35[v47] bottomAnchor];
  v83 = [v35 bottomAnchor];

  v84 = [v82 constraintEqualToAnchor:v83];
  *(v60 + 88) = v84;
  v85 = [*&v35[v49] leadingAnchor];
  v86 = [*&v35[v48] leadingAnchor];
  v87 = [v85 constraintEqualToAnchor:v86];

  *(v60 + 96) = v87;
  v88 = [*&v35[v49] trailingAnchor];
  v89 = [*&v35[v48] trailingAnchor];
  v90 = [v88 constraintEqualToAnchor:v89];

  *(v60 + 104) = v90;
  v91 = [*&v35[v49] topAnchor];
  v92 = [*&v35[v48] topAnchor];
  v93 = [v91 constraintEqualToAnchor:v92];

  *(v60 + 112) = v93;
  v94 = [*&v35[v49] bottomAnchor];
  v95 = [*&v35[v48] bottomAnchor];
  v96 = [v94 constraintEqualToAnchor:v95];

  *(v60 + 120) = v96;
  v97 = [*&v35[v132] leadingAnchor];
  v98 = [*&v35[v48] leadingAnchor];
  v99 = [v97 constraintEqualToAnchor:v98];

  *(v60 + 128) = v99;
  v100 = [*&v35[v132] trailingAnchor];
  v101 = [*&v35[v48] trailingAnchor];
  v102 = [v100 constraintEqualToAnchor:v101];

  *(v60 + 136) = v102;
  v103 = [*&v35[v132] topAnchor];
  v104 = [*&v35[v48] topAnchor];
  v105 = [v103 constraintEqualToAnchor:v104];

  *(v60 + 144) = v105;
  v106 = [*&v35[v132] bottomAnchor];
  v107 = [*&v35[v48] bottomAnchor];
  v108 = [v106 constraintEqualToAnchor:v107];

  *(v60 + 152) = v108;
  v109 = [*&v35[v133] leadingAnchor];
  v110 = [*&v35[v48] leadingAnchor];
  v111 = [v109 constraintEqualToAnchor:v110 constant:v57];

  *(v60 + 160) = v111;
  v112 = [*&v35[v133] trailingAnchor];
  v113 = [*&v35[v48] trailingAnchor];
  v114 = [v112 constraintEqualToAnchor:v113 constant:-v57];

  *(v60 + 168) = v114;
  v115 = [*&v35[v133] topAnchor];
  v116 = [*&v35[v48] topAnchor];
  v117 = [v115 constraintEqualToAnchor:v116 constant:v57];

  *(v60 + 176) = v117;
  v118 = [*&v35[v133] bottomAnchor];
  v119 = [*&v35[v48] bottomAnchor];
  v120 = [v118 constraintEqualToAnchor:v119 constant:-v57];

  *(v60 + 184) = v120;
  v121 = *&v35[v134];
  if (v121)
  {
    v122 = objc_opt_self();
    *(v60 + 192) = v121;
    v123 = *&v35[v131];
    v124 = v121;
    v125 = [v123 leadingAnchor];
    v126 = [*&v35[v48] leadingAnchor];
    v127 = [v125 constraintEqualToAnchor:v126 constant:v57];

    *(v60 + 200) = v127;
    v128 = [*&v35[v131] widthAnchor];
    v129 = [v128 constraintEqualToConstant:a4 + -64.0 + -32.0 - v57];

    *(v60 + 208) = v129;
    sub_100294F58();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v122 activateConstraints:isa];

    sub_1003407A4(a1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1005F1854(double a1)
{
  *(v2 + 32) = v1;
  *(v2 + 24) = a1;
  sub_10010FC20(&unk_101195200, &qword_100EBFA50);
  *(v2 + 40) = swift_task_alloc();
  sub_10010FC20(&unk_101184060, &qword_100EBDF50);
  *(v2 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_1005F192C, 0, 0);
}

uint64_t sub_1005F192C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = [objc_opt_self() currentTraitCollection];
  [v3 displayScale];
  v5 = v4;

  static Artwork.CropStyle.squareCenterCrop.getter();
  v6 = type metadata accessor for Artwork.CropStyle();
  (*(*(v6 - 8) + 56))(v1, 0, 1, v6);
  v7 = enum case for Artwork.ImageFormat.jpeg(_:);
  v8 = type metadata accessor for Artwork.ImageFormat();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v2, v7, v8);
  (*(v9 + 56))(v2, 0, 1, v8);
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_1005F1AF8;
  v12 = v0[5];
  v13 = v0[6];
  v14.n128_u64[0] = v0[3];
  v15.n128_u64[0] = v14.n128_u64[0];

  v11.n128_f64[0] = 1.0 / v5;
  return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v13, v12, 0, 0, v14, v15, v11);
}

uint64_t sub_1005F1AF8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[8] = v1;

  v6 = v4[6];
  sub_1000095E8(v4[5], &unk_101195200, &qword_100EBFA50);
  sub_1000095E8(v6, &unk_101184060, &qword_100EBDF50);
  if (v1)
  {

    return _swift_task_switch(sub_1005F1CB4, 0, 0);
  }

  else
  {

    v7 = v5[1];

    return v7(a1);
  }
}

uint64_t sub_1005F1CB4()
{
  v14 = v0;
  if (qword_10117F960 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101197C40);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[8];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[2] = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to retrieve image from artwork with error: %{public}s", v6, 0xCu);
    sub_10000959C(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_1005F1E98()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101197C40);
  sub_1000060E4(v0, qword_101197C40);
  return static Logger.music(_:)(0xD000000000000014, 0x8000000100E522B0);
}

void *sub_1005F1EFC(uint64_t a1)
{
  v31 = type metadata accessor for AudioVariant();
  v3 = *(v31 - 8);
  __chkstk_darwin();
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v29[1] = v1;
  v40 = _swiftEmptyArrayStorage;
  sub_10066C790(0, v6, 0);
  v7 = v40;
  v39 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v9 = result;
  v10 = 0;
  v34 = v3 + 32;
  v35 = v3 + 16;
  v30 = a1 + 64;
  v11 = v31;
  v32 = v6;
  v33 = a1;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    v13 = v9 >> 6;
    if ((*(v39 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_22;
    }

    v36 = v10;
    v38 = *(a1 + 36);
    v14 = *(v3 + 72);
    (*(v3 + 16))(v5, *(a1 + 48) + v14 * v9, v11);
    v40 = v7;
    v15 = v11;
    v17 = v7[2];
    v16 = v7[3];
    v18 = (v17 + 1);
    if (v17 >= v16 >> 1)
    {
      v37 = (v17 + 1);
      sub_10066C790((v16 > 1), v17 + 1, 1);
      v18 = v37;
      v7 = v40;
    }

    v7[2] = v18;
    v19 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v37 = v7;
    v20 = v7 + v19 + v17 * v14;
    v21 = v3;
    result = (*(v3 + 32))(v20, v5, v15);
    v12 = 1 << *(v33 + 32);
    if (v9 >= v12)
    {
      goto LABEL_23;
    }

    v22 = *(v39 + 8 * v13);
    if ((v22 & (1 << v9)) == 0)
    {
      goto LABEL_24;
    }

    v11 = v15;
    a1 = v33;
    if (v38 != *(v33 + 36))
    {
      goto LABEL_25;
    }

    v23 = v22 & (-2 << (v9 & 0x3F));
    if (v23)
    {
      v12 = __clz(__rbit64(v23)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v13 << 6;
      v25 = v13 + 1;
      v26 = (v30 + 8 * v13);
      while (v25 < (v12 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_1000D8F7C(v9, v38, 0);
          v12 = __clz(__rbit64(v27)) + v24;
          goto LABEL_19;
        }
      }

      result = sub_1000D8F7C(v9, v38, 0);
LABEL_19:
      v11 = v31;
    }

    v10 = v36 + 1;
    v9 = v12;
    v3 = v21;
    v7 = v37;
    if (v36 + 1 == v32)
    {
      return v7;
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
  return result;
}

uint64_t sub_1005F2220()
{
  sub_10028F250();
  EnvironmentValues.subscript.getter();
  return v1;
}

double sub_1005F225C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v80 = a3;
  v77 = a2;
  sub_10010FC20(&unk_1011A4760, &qword_100ED6BD8);
  __chkstk_darwin();
  v83 = v76 - v6;
  sub_10010FC20(&qword_1011831D0, &unk_100EC4CD0);
  __chkstk_darwin();
  v78 = v76 - v7;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v76[1] = v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v76[0] = v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v84 = v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v82 = v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v81 = v76 - v12;
  __chkstk_darwin();
  v79 = v76 - v13;
  __chkstk_darwin();
  v15 = v76 - v14;
  __chkstk_darwin();
  v17 = v76 - v16;
  __chkstk_darwin();
  v19 = v76 - v18;
  __chkstk_darwin();
  v21 = v76 - v20;
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v23 = v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = v76 - v24;
  sub_10010FC20(&unk_10119F000, &qword_100EC31D0);
  __chkstk_darwin();
  v27 = v76 - v26;
  v86 = a1;
  sub_1000089F8(a1, v21, &unk_101184730, &unk_100ECB920);
  v28 = type metadata accessor for Album();
  v29 = *(v28 - 8);
  v87 = *(v29 + 48);
  v88 = v29 + 48;
  v30 = v87(v21, 1, v28);
  v85 = v29;
  if (v30 == 1)
  {
    sub_1000095E8(v21, &unk_101184730, &unk_100ECB920);
    v31 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v31 - 8) + 56))(v25, 1, 1, v31);
  }

  else
  {
    ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v28, &protocol witness table for Album, v25);
    (*(v29 + 8))(v21, v28);
  }

  v32 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v32 - 8) + 56))(v84, 1, 11, v32);
  sub_1000089F8(v86, v19, &unk_101184730, &unk_100ECB920);
  if (v87(v19, 1, v28) == 1)
  {
    sub_1000095E8(v19, &unk_101184730, &unk_100ECB920);
  }

  else
  {
    ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v28, &protocol witness table for Album, v23);
    (*(v85 + 8))(v19, v28);
    v33 = type metadata accessor for ArtworkImage.ViewModel(0);
    if ((*(*(v33 - 8) + 48))(v23, 1, v33) == 1)
    {
      sub_1000095E8(v23, &unk_10118A5E0, &unk_100EBCD90);
    }

    else
    {
      v34 = ArtworkImage.ViewModel.calculatedAspectRatio.getter();
      v36 = v35;
      sub_1005F92F8(v23, type metadata accessor for ArtworkImage.ViewModel);
      if ((v36 & 1) == 0)
      {
        goto LABEL_10;
      }
    }
  }

  v34 = 0x3FF0000000000000;
LABEL_10:
  v37 = Corner.large.unsafeMutableAddressor();
  v38 = *v37;
  v39 = v37[1];
  v40 = *(v37 + 16);
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0, 1, 0, 1, 0, 1, 2, v90);
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v25, v84, v34, 0, v90, v38, v39, v40, v27);
  v41 = type metadata accessor for ArtworkImage.Info(0);
  (*(*(v41 - 8) + 56))(v27, 0, 1, v41);
  sub_1005F3AFC(v27);
  v42 = v86;
  sub_1000089F8(v86, v17, &unk_101184730, &unk_100ECB920);
  if (v87(v17, 1, v28) == 1)
  {
    sub_1000095E8(v17, &unk_101184730, &unk_100ECB920);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v43 = String.init(localized:table:bundle:locale:comment:)();
    v45 = v85;
  }

  else
  {
    v46 = Album.title.getter();
    v48 = v47;
    v45 = v85;
    (*(v85 + 8))(v17, v28);
    v44 = v48;
    v43 = v46;
  }

  v49 = v78;
  sub_1005F42E0(v43, v44);
  sub_1000089F8(v42, v15, &unk_101184730, &unk_100ECB920);
  v50 = v87(v15, 1, v28);
  v51 = v79;
  if (v50 == 1)
  {
    sub_1000095E8(v15, &unk_101184730, &unk_100ECB920);
    v52 = 1;
  }

  else
  {
    Album.favoriteStatus.getter();
    (*(v45 + 8))(v15, v28);
    v52 = 0;
  }

  v53 = type metadata accessor for MusicFavoriteStatus();
  (*(*(v53 - 8) + 56))(v49, v52, 1, v53);
  sub_1005F4470(v49);
  v54 = v80 & 1;
  if (*(v4 + OBJC_IVAR____TtCV5Music6Header13Configuration__disableAttribution) == (v80 & 1))
  {
    *(v4 + OBJC_IVAR____TtCV5Music6Header13Configuration__disableAttribution) = v54;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    v76[-2] = v4;
    LOBYTE(v76[-1]) = v54;
    v89 = v4;
    sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v55 = v81;
  sub_1000089F8(v42, v51, &unk_101184730, &unk_100ECB920);
  if (v87(v51, 1, v28) == 1)
  {
    sub_1000095E8(v51, &unk_101184730, &unk_100ECB920);
    v56 = 0;
    v57 = 0;
    v58 = 255;
  }

  else
  {
    v59 = Album.artistName.getter();
    v61 = v60;
    (*(v45 + 8))(v51, v28);
    v57 = v61;
    v56 = v59;
    v58 = 1;
  }

  v62 = v83;
  sub_1005F4744(v56, v57, v58);
  sub_1000089F8(v42, v55, &unk_101184730, &unk_100ECB920);
  if (v87(v55, 1, v28) == 1)
  {
    sub_1000095E8(v55, &unk_101184730, &unk_100ECB920);
    v63 = 1;
  }

  else
  {
    sub_1005F5C30(v77, v62);
    (*(v45 + 8))(v55, v28);
    v63 = 0;
  }

  v64 = _s8MetadataV13ConfigurationOMa(0);
  (*(*(v64 - 8) + 56))(v62, v63, 1, v64);
  swift_getKeyPath();
  __chkstk_darwin();
  v76[-2] = v4;
  v76[-1] = v62;
  v89 = v4;
  sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_1000095E8(v62, &unk_1011A4760, &qword_100ED6BD8);
  v65 = v82;
  sub_1000089F8(v86, v82, &unk_101184730, &unk_100ECB920);
  if (v87(v65, 1, v28) == 1)
  {
    sub_1000095E8(v65, &unk_101184730, &unk_100ECB920);
  }

  else
  {
    v66 = sub_1005F606C();
    v68 = v67;
    (*(v85 + 8))(v65, v28);
    if (v68)
    {
      goto LABEL_29;
    }
  }

  v66 = 0;
  v68 = 0xE000000000000000;
LABEL_29:
  swift_getKeyPath();
  v89 = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v69 = *(v4 + OBJC_IVAR____TtCV5Music6Header13Configuration__description);
  v70 = *(v4 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 8);
  v71 = *(v4 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 16);
  v72 = *(v4 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 24);
  if (v70)
  {
    sub_100030444(*(v4 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 16), *(v4 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 24));
    v73 = v71;
    v74 = v72;
  }

  else
  {
    v73 = 0;
    v74 = 0;
  }

  sub_1004E5E44(v69, v70, v71, v72);
  sub_1004E5E90(v69, v70, v71, v72);
  return sub_1005F4CC8(v66, v68, v73, v74);
}

uint64_t sub_1005F2FA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v7 = v15 - v6;
  sub_10010FC20(&unk_1011A4760, &qword_100ED6BD8);
  __chkstk_darwin();
  v9 = (v15 - v8);
  sub_1000089F8(a1, v7, &unk_101184730, &unk_100ECB920);
  v10 = type metadata accessor for Album();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {
    sub_1000095E8(v7, &unk_101184730, &unk_100ECB920);
    v12 = 1;
  }

  else
  {
    sub_1005F5C30(a2, v9);
    (*(v11 + 8))(v7, v10);
    v12 = 0;
  }

  v13 = _s8MetadataV13ConfigurationOMa(0);
  (*(*(v13 - 8) + 56))(v9, v12, 1, v13);
  swift_getKeyPath();
  __chkstk_darwin();
  v15[-2] = v3;
  v15[-1] = v9;
  v15[1] = v3;
  sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1000095E8(v9, &unk_1011A4760, &qword_100ED6BD8);
}

double sub_1005F325C()
{
  swift_getKeyPath();
  sub_1005FAAD4(&qword_101192A00, _s7MetricsCMa, &unk_100ED6BA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

void sub_1005F32FC(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_1005FAAD4(&qword_101192A00, _s7MetricsCMa, &unk_100ED6BA0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

double sub_1005F341C()
{
  swift_getKeyPath();
  sub_1005FAAD4(&qword_101192A00, _s7MetricsCMa, &unk_100ED6BA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 24);
}

void sub_1005F34BC(double a1)
{
  if (*(v1 + 24) == a1)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_1005FAAD4(&qword_101192A00, _s7MetricsCMa, &unk_100ED6BA0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

double sub_1005F35DC()
{
  swift_getKeyPath();
  sub_1005FAAD4(&qword_101192A00, _s7MetricsCMa, &unk_100ED6BA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 32);
}

void sub_1005F367C(double a1)
{
  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_1005FAAD4(&qword_101192A00, _s7MetricsCMa, &unk_100ED6BA0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1005F379C()
{
  v1 = OBJC_IVAR____TtCV5Music6Header7Metrics___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1005F3860(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_1005F3904()
{
  swift_getKeyPath();
  sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

double sub_1005F39A4(unsigned __int8 a1)
{
  v2 = *(v1 + 16);
  if (v2 != 2)
  {
    if (a1 == 2 || ((v2 ^ a1) & 1) != 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v1 + 16) = a1;
    return result;
  }

  if (a1 == 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  swift_getKeyPath();
  __chkstk_darwin();
  sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_1005F3AFC(uint64_t a1)
{
  sub_10010FC20(&unk_10119F000, &qword_100EC31D0);
  __chkstk_darwin();
  v4 = v8 - v3;
  v5 = OBJC_IVAR____TtCV5Music6Header13Configuration__artworkInfo;
  swift_beginAccess();
  sub_1000089F8(v1 + v5, v4, &unk_10119F000, &qword_100EC31D0);
  v6 = sub_1005FA4B0(v4, a1);
  sub_1000095E8(v4, &unk_10119F000, &qword_100EC31D0);
  if (v6)
  {
    swift_getKeyPath();
    __chkstk_darwin();
    v8[-2] = v1;
    v8[-1] = a1;
    v8[2] = v1;
    sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_1000089F8(a1, v4, &unk_10119F000, &qword_100EC31D0);
    swift_beginAccess();
    sub_10006B010(v4, v1 + v5, &unk_10119F000, &qword_100EC31D0);
    swift_endAccess();
  }

  return sub_1000095E8(a1, &unk_10119F000, &qword_100EC31D0);
}

uint64_t sub_1005F3D28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtCV5Music6Header13Configuration__tallArtwork;
  swift_beginAccess();
  return sub_1000089F8(v3 + v4, a2, &unk_101188920, &qword_100EBCC50);
}

uint64_t sub_1005F3E00(uint64_t a1)
{
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v3 = &v5 - v2;
  sub_1000089F8(a1, &v5 - v2, &unk_101188920, &qword_100EBCC50);
  return sub_1005F3EAC(v3);
}

uint64_t sub_1005F3EAC(uint64_t a1)
{
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v4 = v8 - v3;
  v5 = OBJC_IVAR____TtCV5Music6Header13Configuration__tallArtwork;
  swift_beginAccess();
  sub_1000089F8(v1 + v5, v4, &unk_101188920, &qword_100EBCC50);
  v6 = sub_1005FABCC(v4, a1);
  sub_1000095E8(v4, &unk_101188920, &qword_100EBCC50);
  if (v6)
  {
    swift_getKeyPath();
    __chkstk_darwin();
    v8[-2] = v1;
    v8[-1] = a1;
    v8[2] = v1;
    sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_1000089F8(a1, v4, &unk_101188920, &qword_100EBCC50);
    swift_beginAccess();
    sub_10006B010(v4, v1 + v5, &unk_101188920, &qword_100EBCC50);
    swift_endAccess();
  }

  return sub_1000095E8(a1, &unk_101188920, &qword_100EBCC50);
}

double sub_1005F40C8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV5Music6Header13Configuration__videoArtworks;

  sub_10025B374(v4, a1);
  v6 = v5;

  if (v6)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1005F4224()
{
  swift_getKeyPath();
  sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__title);

  return v1;
}

double sub_1005F42E0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCV5Music6Header13Configuration__title);
  v6 = *(v2 + OBJC_IVAR____TtCV5Music6Header13Configuration__title) == a1 && *(v2 + OBJC_IVAR____TtCV5Music6Header13Configuration__title + 8) == a2;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1005F4470(uint64_t a1)
{
  sub_10010FC20(&qword_1011831D0, &unk_100EC4CD0);
  __chkstk_darwin();
  v4 = v8 - v3;
  v5 = OBJC_IVAR____TtCV5Music6Header13Configuration__favoriteStatus;
  swift_beginAccess();
  sub_1000089F8(v1 + v5, v4, &qword_1011831D0, &unk_100EC4CD0);
  v6 = sub_1005FA780(v4, a1);
  sub_1000095E8(v4, &qword_1011831D0, &unk_100EC4CD0);
  if (v6)
  {
    swift_getKeyPath();
    __chkstk_darwin();
    v8[-2] = v1;
    v8[-1] = a1;
    v8[2] = v1;
    sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_1000089F8(a1, v4, &qword_1011831D0, &unk_100EC4CD0);
    swift_beginAccess();
    sub_10006B010(v4, v1 + v5, &qword_1011831D0, &unk_100EC4CD0);
    swift_endAccess();
  }

  return sub_1000095E8(a1, &qword_1011831D0, &unk_100EC4CD0);
}

uint64_t sub_1005F4678()
{
  swift_getKeyPath();
  sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__attribution);
  sub_1005F94C0(v1, *(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__attribution + 8), *(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__attribution + 16));
  return v1;
}

double sub_1005F4744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__attribution;
  v8 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__attribution + 16);
  if (v8 == 255)
  {
    if (a3 == 0xFF)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  if (a3 == 0xFF)
  {
    goto LABEL_18;
  }

  v9 = *v7;
  v10 = *(v7 + 8);
  if ((v8 & 1) == 0)
  {
    if ((a3 & 1) == 0)
    {
      sub_1005F94B4(*v7, *(v7 + 8), 0);
      v12 = sub_10047BD40(v9, a1);
      sub_1005F9490(v9, v10, v8);
      if (v12)
      {
        goto LABEL_15;
      }
    }

LABEL_18:
    swift_getKeyPath();
    __chkstk_darwin();
    sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    sub_1005F9490(a1, a2, v4);

    return result;
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_18;
  }

  v11 = v9 == a1 && v10 == a2;
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_15:
  v13 = *v7;
  v14 = *(v7 + 8);
  *v7 = a1;
  *(v7 + 8) = a2;
  v15 = *(v7 + 16);
  *(v7 + 16) = v4;

  return sub_1005F9490(v13, v14, v15);
}

uint64_t sub_1005F494C()
{
  swift_getKeyPath();
  sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__attributionAction);

  return v1;
}

void sub_1005F4A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtCV5Music6Header13Configuration__attributionAction);
  *v3 = a2;
  v3[1] = a3;
}

uint64_t sub_1005F4AE4@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  v12 = v5;
  sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *a2;
  swift_beginAccess();
  return sub_1000089F8(v12 + v10, a5, a3, a4);
}

uint64_t sub_1005F4BF4()
{
  swift_getKeyPath();
  sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__description);
  sub_1004E5E44(v1, *(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 8), *(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 16), *(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 24));
  return v1;
}

double sub_1005F4CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + OBJC_IVAR____TtCV5Music6Header13Configuration__description);
  v10 = *(v4 + OBJC_IVAR____TtCV5Music6Header13Configuration__description);
  v11 = *(v4 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 8);
  v12 = *(v4 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 16);
  v13 = *(v4 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 24);
  if (v11)
  {
    if (a2)
    {
      v14 = v10 == a1 && v11 == a2;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    swift_getKeyPath();
    __chkstk_darwin();
    sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    sub_1004E5E90(a1, a2, a3, a4);

    return result;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;

  sub_1004E5E90(v10, v11, v12, v13);
  return result;
}

void sub_1005F4E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + OBJC_IVAR____TtCV5Music6Header13Configuration__description);
  v6 = *(a1 + OBJC_IVAR____TtCV5Music6Header13Configuration__description);
  v7 = *(a1 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 8);
  v8 = *(a1 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 16);
  v9 = *(a1 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 24);
  *v5 = a2;
  v5[1] = a3;
  v5[2] = a4;
  v5[3] = a5;
  sub_1004E5E44(a2, a3, a4, a5);
  sub_1004E5E90(v6, v7, v8, v9);
}

double sub_1005F4F14(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double sub_1005F4FB8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV5Music6Header13Configuration__playIntentButtonIntents;
  if (sub_100190304(*(v1 + OBJC_IVAR____TtCV5Music6Header13Configuration__playIntentButtonIntents), a1))
  {
    *(v1 + v3) = a1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1005F5128(uint64_t a1, void *a2, void (*a3)(void, void, __n128))
{
  swift_getKeyPath();
  sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = (v3 + *a2);
  v7 = *v6;
  (a3)(*v6, v6[1]);
  return v7;
}

uint64_t sub_1005F5238(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  v7 = (a1 + *a4);
  v8 = *v7;
  v9 = v7[1];
  *v7 = a2;
  v7[1] = a3;
  a5(a2, a3);
  return a6(v8, v9);
}

double sub_1005F5298()
{
  swift_getKeyPath();
  sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double sub_1005F5344(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtCV5Music6Header13Configuration__metrics) == a1)
  {
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1005F5578(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

void sub_1005F5640(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (a1 & 1))
  {
    *(v4 + *a2) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1005F5754()
{
  sub_1000095E8(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__artworkInfo, &unk_10119F000, &qword_100EC31D0);
  sub_1000095E8(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__tallArtwork, &unk_101188920, &qword_100EBCC50);

  sub_1000095E8(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__favoriteStatus, &qword_1011831D0, &unk_100EC4CD0);
  sub_1005F9490(*(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__attribution), *(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__attribution + 8), *(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__attribution + 16));

  sub_100020438(*(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__artworkAction), *(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__artworkAction + 8));
  sub_1000095E8(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__metadata, &unk_1011A4760, &qword_100ED6BD8);
  sub_1004E5E90(*(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__description), *(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 8), *(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 16), *(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 24));

  sub_100020438(*(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__playbackIntentProvider), *(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__playbackIntentProvider + 8));

  v1 = OBJC_IVAR____TtCV5Music6Header13Configuration___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1005F58E4()
{
  sub_1005F5754();

  return swift_deallocClassInstance();
}

void sub_1005F5964(uint64_t a1)
{
  sub_1005F5BCC(319, &qword_101195CF0, type metadata accessor for ArtworkImage.Info);
  if (v1 <= 0x3F)
  {
    sub_1005F5BCC(319, &qword_1011A4570, &type metadata accessor for Artwork);
    if (v2 <= 0x3F)
    {
      sub_1005F5BCC(319, &qword_1011891E8, &type metadata accessor for MusicFavoriteStatus);
      if (v3 <= 0x3F)
      {
        sub_1005F5BCC(319, &unk_101197EB8, _s8MetadataV13ConfigurationOMa);
        if (v4 <= 0x3F)
        {
          type metadata accessor for ObservationRegistrar();
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1005F5BCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1005F5C30@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_10010FC20(&unk_1011842D0, &qword_100ECBF00);
  __chkstk_darwin();
  v5 = &v26 - v4;
  v6 = type metadata accessor for Date.FormatStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v11 = &v26 - v10;
  v12 = Album.isPreorder.getter();
  if (v12 != 2 && (v12 & 1) != 0)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 1;
    goto LABEL_15;
  }

  v27 = a1;
  Album.releaseDate.getter();
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v11, 1, v17) == 1)
  {
    sub_1000095E8(v11, &qword_101188C20, &qword_100EC2030);
    v14 = Album.releaseYearString.getter();
    v15 = v19;
  }

  else
  {
    static FormatStyle<>.musicReleaseYear.getter();
    sub_1005FAAD4(&unk_1011A3900, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
    Date.formatted<A>(_:)();
    (*(v7 + 8))(v9, v6);
    (*(v18 + 8))(v11, v17);
    v14 = v28;
    v15 = v29;
  }

  v20 = Album.genreNames.getter();
  a1 = v27;
  if (v20[2])
  {
    v13 = v20[4];
    v16 = v20[5];

    if (!v15)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v13 = 0;
    v16 = 0;

    if (!v15)
    {
      goto LABEL_15;
    }
  }

  if (v14 == 48 && v15 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v14 = 0;
    v15 = 0;
  }

LABEL_15:
  sub_1000089F8(a1, v5, &unk_1011842D0, &qword_100ECBF00);
  v21 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v5, 1, v21) == 1)
  {
    sub_1000095E8(v5, &unk_1011842D0, &qword_100ECBF00);
  }

  else
  {
    sub_1005F627C();
    v24 = v23;
    (*(v22 + 8))(v5, v21);
    if (v24)
    {
      goto LABEL_20;
    }
  }

  v24 = Album.audioVariants.getter();

  if (!v24)
  {
    v24 = _swiftEmptyArrayStorage;
  }

LABEL_20:
  *a2 = v13;
  a2[1] = v16;
  a2[2] = v14;
  a2[3] = v15;
  a2[4] = v24;
  _s8MetadataV13ConfigurationOMa(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1005F606C()
{
  sub_10010FC20(&qword_1011866A0, &unk_100EC2040);
  __chkstk_darwin();
  v1 = &v13 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v3 = &v13 - v2;
  Album.editorialNotes.getter();
  v4 = type metadata accessor for EditorialNotes();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (v6(v3, 1, v4) == 1)
  {
    sub_1000095E8(v3, &qword_1011866A0, &unk_100EC2040);
  }

  else
  {
    EditorialNotes.standard.getter();
    v8 = v7;
    (*(v5 + 8))(v3, v4);
    if (v8)
    {
      goto LABEL_7;
    }
  }

  Album.editorialNotes.getter();
  if (v6(v1, 1, v4) != 1)
  {
    EditorialNotes.short.getter();
    v10 = v9;
    (*(v5 + 8))(v1, v4);
    if (!v10)
    {
      return 0;
    }

LABEL_7:
    countAndFlagsBits = String.trim()()._countAndFlagsBits;

    return countAndFlagsBits;
  }

  sub_1000095E8(v1, &qword_1011866A0, &unk_100EC2040);
  return 0;
}

void sub_1005F627C()
{
  v1 = type metadata accessor for AudioVariant();
  v97 = *(v1 - 8);
  __chkstk_darwin();
  v3 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v77 - v4;
  v93 = type metadata accessor for Song();
  v77 = *(v93 - 8);
  __chkstk_darwin();
  v92 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v113 = *(v85 - 8);
  __chkstk_darwin();
  v84 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v83 = &v77 - v8;
  v108 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v94 = *(v108 - 8);
  __chkstk_darwin();
  v91 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v90 = &v77 - v10;
  v11 = type metadata accessor for Track();
  v109 = *(v11 - 8);
  __chkstk_darwin();
  v96 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v114 = &v77 - v13;
  __chkstk_darwin();
  v95 = &v77 - v14;
  __chkstk_darwin();
  v107 = &v77 - v15;
  __chkstk_darwin();
  v115 = (&v77 - v16);
  v17 = sub_10010FC20(&unk_10118C0B0, &qword_100ECFA00) - 8;
  __chkstk_darwin();
  v19 = &v77 - v18;
  v20 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v21 = __chkstk_darwin();
  (*(v23 + 16))(&v77 - v22, v0, v20, v21);
  sub_1005FAF84(&unk_10118C0A0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Sequence.makeIterator()();
  v24 = *(v17 + 44);
  v25 = sub_1005FAF84(&qword_1011913B0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.endIndex.getter();
  v26 = *&v19[v24];
  v111 = _swiftEmptyArrayStorage;
  v112 = v11;
  if (v26 != v116)
  {
    v101 = (v109 + 16);
    v99 = (v109 + 88);
    LODWORD(v98) = enum case for Track.musicVideo(_:);
    v110 = (v109 + 8);
    v89 = (v94 + 2);
    v88 = (v94 + 11);
    v87 = enum case for MusicPlayer.PlayabilityStatus.unplayable(_:);
    v86 = (v94 + 1);
    v82 = (v94 + 12);
    v81 = (v113 + 32);
    v80 = enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.contentUnavailable(_:);
    v79 = (v113 + 104);
    v78 = (v113 + 8);
    v94 = (v109 + 32);
    v111 = _swiftEmptyArrayStorage;
    v105 = v20;
    v106 = v19;
    v103 = v25;
    v104 = v24;
    v100 = v3;
    do
    {
      v113 = dispatch thunk of Collection.subscript.read();
      v53 = *v101;
      v54 = v115;
      v55 = v112;
      (*v101)(v115);
      (v113)(&v116, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v56 = v107;
      (v53)(v107, v54, v55);
      v57 = (*v99)(v56, v55);
      v58 = *v110;
      (*v110)(v56, v55);
      if (v57 != v98)
      {
        if (qword_10117F5F8 != -1)
        {
          swift_once();
        }

        v59 = *Player.state<A>(for:)(v115, v55, &protocol witness table for Track);
        v60 = v90;
        (*(v59 + 256))();

        v61 = v91;
        v62 = v108;
        (*v89)(v91, v60, v108);
        v63 = (*v88)(v61, v62);
        if (v63 != v87)
        {
          v68 = *v86;
          v69 = v61;
          v70 = v108;
          (*v86)(v60, v108);
          v68(v69, v70);
LABEL_27:
          v71 = *v94;
          (*v94)(v95, v115, v55);
          v72 = v111;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v117 = v72;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10066C7D4(0, v72[2] + 1, 1);
            v72 = v117;
          }

          v19 = v106;
          v52 = v104;
          v3 = v100;
          v75 = v72[2];
          v74 = v72[3];
          if (v75 >= v74 >> 1)
          {
            sub_10066C7D4((v74 > 1), v75 + 1, 1);
            v72 = v117;
          }

          v72[2] = v75 + 1;
          v76 = (*(v109 + 80) + 32) & ~*(v109 + 80);
          v111 = v72;
          v71(v72 + v76 + *(v109 + 72) * v75, v95, v112);
          goto LABEL_19;
        }

        (*v82)(v61, v108);
        v64 = v83;
        v65 = v85;
        (*v81)(v83, v61, v85);
        v66 = v84;
        (*v79)(v84, v80, v65);
        LODWORD(v113) = static MusicPlayer.PlayabilityStatus.UnplayableReason.== infix(_:_:)();
        v67 = *v78;
        (*v78)(v66, v65);
        v67(v64, v65);
        (*v86)(v60, v108);
        if ((v113 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v58(v115, v55);
      v19 = v106;
      v52 = v104;
      v3 = v100;
LABEL_19:
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*&v19[v52] != v116);
  }

  sub_1000095E8(v19, &unk_10118C0B0, &qword_100ECFA00);
  v107 = v111[2];
  if (v107)
  {
    v27 = static AudioVariant.allCases.getter();
    v28 = sub_10066FE3C(v27);
    v29 = v111;

    v30 = 0;
    v106 = v29 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
    v104 = v109 + 88;
    v105 = v109 + 16;
    LODWORD(v103) = enum case for Track.song(_:);
    v110 = (v109 + 8);
    v101 = (v109 + 96);
    v99 = (v77 + 32);
    v98 = (v77 + 8);
    v31 = (v97 + 8);
    v32 = v96;
    v33 = v112;
    v111 = v29;
    v102 = v1;
    while (v30 < v29[2])
    {
      v115 = v28;
      v36 = v109;
      v37 = *(v109 + 72);
      v113 = v30;
      v38 = *(v109 + 16);
      v39 = v114;
      v38(v114, &v106[v37 * v30], v33);
      v38(v32, v39, v33);
      v40 = (*(v36 + 88))(v32, v33);
      if (v40 == v103)
      {
        (*v101)(v32, v33);
        v41 = v92;
        v42 = v93;
        (*v99)(v92, v32, v93);
        v43 = Song.audioVariants.getter();
        (*v98)(v41, v42);
        if (v43)
        {
          v44 = v43;
        }

        else
        {
          v44 = _swiftEmptyArrayStorage;
        }
      }

      else
      {
        (*v110)(v32, v33);
        v44 = _swiftEmptyArrayStorage;
      }

      v45 = v102;
      sub_1005FAAD4(&qword_10118D1F0, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
      v46 = Set.init(minimumCapacity:)();
      v116 = v46;
      v47 = v44[2];
      if (v47)
      {
        v48 = (*(v97 + 80) + 32) & ~*(v97 + 80);
        v108 = v44;
        v49 = v44 + v48;
        v50 = *(v97 + 72);
        v51 = *(v97 + 16);
        do
        {
          v51(v5, v49, v45);
          sub_1003B2644(v3, v5);
          (*v31)(v3, v45);
          v49 += v50;
          --v47;
        }

        while (v47);

        v34 = v116;
        v33 = v112;
        v32 = v96;
      }

      else
      {
        v34 = v46;
      }

      v35 = (v113 + 1);
      v28 = sub_1005F8A4C(v34, v115);

      (*v110)(v114, v33);
      v30 = v35;
      v29 = v111;
      if (v35 == v107)
      {

        sub_1005F1EFC(v28);

        return;
      }
    }

    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_1005F7078()
{
  sub_10010FC20(&qword_1011866A0, &unk_100EC2040);
  __chkstk_darwin();
  v1 = &v15 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v3 = &v15 - v2;
  result = Playlist.standardDescription.getter();
  if (!v5)
  {
    result = Playlist.shortDescription.getter();
    if (!v6)
    {
      Playlist.editorialNotes.getter();
      v7 = type metadata accessor for EditorialNotes();
      v8 = *(v7 - 8);
      v9 = *(v8 + 48);
      if (v9(v3, 1, v7) == 1)
      {
        sub_1000095E8(v3, &qword_1011866A0, &unk_100EC2040);
      }

      else
      {
        EditorialNotes.standard.getter();
        v11 = v10;
        (*(v8 + 8))(v3, v7);
        if (v11)
        {
          goto LABEL_9;
        }
      }

      Playlist.editorialNotes.getter();
      if (v9(v1, 1, v7) == 1)
      {
        sub_1000095E8(v1, &qword_1011866A0, &unk_100EC2040);
        return 0;
      }

      EditorialNotes.short.getter();
      v13 = v12;
      (*(v8 + 8))(v1, v7);
      if (!v13)
      {
        return 0;
      }

LABEL_9:
      countAndFlagsBits = String.trim()()._countAndFlagsBits;

      return countAndFlagsBits;
    }
  }

  return result;
}

uint64_t sub_1005F72A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v8 = v7;
  v143 = a7;
  v136 = a6;
  v133 = a5;
  v135 = a4;
  v134 = a3;
  v144 = a2;
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v141 = &v119 - v10;
  v140 = type metadata accessor for Date();
  v139 = *(v140 - 8);
  __chkstk_darwin();
  v120 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011A4760, &qword_100ED6BD8);
  __chkstk_darwin();
  v142 = &v119 - v12;
  sub_10010FC20(&qword_1011831D0, &unk_100EC4CD0);
  __chkstk_darwin();
  v132 = &v119 - v13;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v124 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v123 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_10010FC20(&qword_101198358, &qword_100ED6BE0);
  __chkstk_darwin();
  v128 = &v119 - v16;
  sub_10010FC20(&unk_10119F000, &qword_100EC31D0);
  __chkstk_darwin();
  v126 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v122 = &v119 - v18;
  __chkstk_darwin();
  v129 = &v119 - v19;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v21 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v125 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v138 = &v119 - v23;
  __chkstk_darwin();
  v137 = &v119 - v24;
  __chkstk_darwin();
  v121 = &v119 - v25;
  __chkstk_darwin();
  v131 = &v119 - v26;
  __chkstk_darwin();
  v130 = &v119 - v27;
  __chkstk_darwin();
  v29 = &v119 - v28;
  __chkstk_darwin();
  v31 = &v119 - v30;
  __chkstk_darwin();
  v33 = &v119 - v32;
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v35 = &v119 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v37 = &v119 - v36;
  v145 = type metadata accessor for ArtworkImage.Info(0);
  v38 = *(v145 - 8);
  __chkstk_darwin();
  v119 = &v119 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v148 = &v119 - v40;
  v153 = a1;
  sub_1000089F8(a1, v33, &unk_1011814D0, &qword_100EC12A0);
  v41 = type metadata accessor for Playlist();
  v42 = *(v41 - 8);
  v151 = *(v42 + 48);
  v152 = v42 + 48;
  v43 = v151(v33, 1, v41);
  v149 = v42;
  if (v43 == 1)
  {
    sub_1000095E8(v33, &unk_1011814D0, &qword_100EC12A0);
    v44 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v44 - 8) + 56))(v37, 1, 1, v44);
  }

  else
  {
    Playlist.artworkViewModel.getter(v37);
    (*(v42 + 8))(v33, v41);
  }

  sub_1000089F8(v153, v31, &unk_1011814D0, &qword_100EC12A0);
  if (v151(v31, 1, v41) == 1)
  {
    sub_1000095E8(v31, &unk_1011814D0, &qword_100EC12A0);
    v45 = type metadata accessor for Playlist.Variant();
    (*(*(v45 - 8) + 56))(v21, 1, 1, v45);
  }

  else
  {
    Playlist.variant.getter();
    (*(v149 + 8))(v31, v41);
  }

  v46 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v46 - 8) + 56))(v21, 0, 11, v46);
  sub_1000089F8(v153, v29, &unk_1011814D0, &qword_100EC12A0);
  v47 = v151(v29, 1, v41);
  v150 = v41;
  if (v47 == 1)
  {
    sub_1000095E8(v29, &unk_1011814D0, &qword_100EC12A0);
  }

  else
  {
    Playlist.artworkViewModel.getter(v35);
    (*(v149 + 8))(v29, v41);
    v48 = type metadata accessor for ArtworkImage.ViewModel(0);
    if ((*(*(v48 - 8) + 48))(v35, 1, v48) == 1)
    {
      sub_1000095E8(v35, &unk_10118A5E0, &unk_100EBCD90);
    }

    else
    {
      v49 = ArtworkImage.ViewModel.calculatedAspectRatio.getter();
      v51 = v50;
      sub_1005F92F8(v35, type metadata accessor for ArtworkImage.ViewModel);
      if ((v51 & 1) == 0)
      {
        goto LABEL_13;
      }
    }
  }

  v49 = 0x3FF0000000000000;
LABEL_13:
  v52 = Corner.large.unsafeMutableAddressor();
  v53 = *v52;
  v54 = v52[1];
  v55 = *(v52 + 16);
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0, 1, 0, 1, 0, 1, 2, &v156);
  v56 = v148;
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v37, v21, v49, 0, &v156, v53, v54, v55, v148);
  swift_getKeyPath();
  v57 = OBJC_IVAR____TtCV5Music6Header13Configuration___observationRegistrar;
  v155 = v8;
  v146 = sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  v147 = v57;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v58 = OBJC_IVAR____TtCV5Music6Header13Configuration__artworkInfo;
  swift_beginAccess();
  v59 = v129;
  sub_1005F8850(v56, v129);
  v60 = *(v38 + 56);
  v61 = v145;
  v60(v59, 0, 1, v145);
  v62 = *(v127 + 48);
  v63 = v8 + v58;
  v64 = v128;
  sub_1000089F8(v63, v128, &unk_10119F000, &qword_100EC31D0);
  sub_1000089F8(v59, v64 + v62, &unk_10119F000, &qword_100EC31D0);
  v65 = *(v38 + 48);
  if (v65(v64, 1, v61) == 1)
  {
    sub_1000095E8(v59, &unk_10119F000, &qword_100EC31D0);
    if (v65(v64 + v62, 1, v61) == 1)
    {
      sub_1000095E8(v64, &unk_10119F000, &qword_100EC31D0);
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v66 = v61;
  v67 = v122;
  sub_1000089F8(v64, v122, &unk_10119F000, &qword_100EC31D0);
  if (v65(v64 + v62, 1, v66) == 1)
  {
    sub_1000095E8(v59, &unk_10119F000, &qword_100EC31D0);
    sub_1005F92F8(v67, type metadata accessor for ArtworkImage.Info);
    v61 = v145;
LABEL_18:
    sub_1000095E8(v64, &qword_101198358, &qword_100ED6BE0);
LABEL_19:
    v68 = v126;
    sub_1005F8850(v148, v126);
    v60(v68, 0, 1, v61);
    sub_1005F3AFC(v68);
    goto LABEL_20;
  }

  v86 = v64 + v62;
  v87 = v119;
  sub_1002D8E5C(v86, v119);
  v88 = static ArtworkImage.Info.__derived_struct_equals(_:_:)(v67, v87);
  sub_1005F92F8(v87, type metadata accessor for ArtworkImage.Info);
  sub_1000095E8(v59, &unk_10119F000, &qword_100EC31D0);
  sub_1005F92F8(v67, type metadata accessor for ArtworkImage.Info);
  sub_1000095E8(v64, &unk_10119F000, &qword_100EC31D0);
  v61 = v145;
  if ((v88 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_20:
  v69 = v130;
  sub_1000089F8(v153, v130, &unk_1011814D0, &qword_100EC12A0);
  v70 = v150;
  if (v151(v69, 1, v150) == 1)
  {
    sub_1000095E8(v69, &unk_1011814D0, &qword_100EC12A0);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v71 = String.init(localized:table:bundle:locale:comment:)();
  }

  else
  {
    v73 = Playlist.name.getter();
    v75 = v74;
    (*(v149 + 8))(v69, v70);
    v72 = v75;
    v71 = v73;
  }

  v76 = v131;
  sub_1005F42E0(v71, v72);
  v77 = v132;
  sub_1000089F8(v133, v132, &qword_1011831D0, &unk_100EC4CD0);
  sub_1005F4470(v77);
  swift_getKeyPath();
  __chkstk_darwin();
  v78 = v134;
  *(&v119 - 4) = v8;
  *(&v119 - 3) = v78;
  *(&v119 - 2) = v135;
  v154 = v8;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v79 = v136 & 1;
  if (*(v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__disableAttribution) == (v136 & 1))
  {
    *(v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__disableAttribution) = v79;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    *(&v119 - 2) = v8;
    *(&v119 - 8) = v79;
    v154 = v8;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v80 = v149;
  v81 = v139;
  if (!v144)
  {
    sub_1000089F8(v153, v76, &unk_1011814D0, &qword_100EC12A0);
    v85 = v150;
    if (v151(v76, 1, v150) == 1)
    {
      sub_1000095E8(v76, &unk_1011814D0, &qword_100EC12A0);
    }

    else
    {
      v84 = Playlist.curatorName.getter();
      v82 = v89;
      (*(v80 + 8))(v76, v85);
      if (v82)
      {
        goto LABEL_36;
      }
    }

    v90 = v121;
    sub_1000089F8(v153, v121, &unk_1011814D0, &qword_100EC12A0);
    v91 = v150;
    if (v151(v90, 1, v150) == 1)
    {
      sub_1000095E8(v90, &unk_1011814D0, &qword_100EC12A0);

      v84 = 0;
      v82 = 0;
LABEL_38:
      v83 = 255;
      goto LABEL_39;
    }

    v84 = sub_10034E2C4();
    v82 = v92;
    (*(v80 + 8))(v90, v91);

    if (!v82)
    {
      v84 = 0;
      goto LABEL_38;
    }

LABEL_36:
    v93 = v142;
    v83 = 1;
    goto LABEL_40;
  }

  v82 = 0;
  v83 = 0;
  v84 = v144;
LABEL_39:
  v93 = v142;
LABEL_40:

  sub_1005F4744(v84, v82, v83);
  v94 = v137;
  sub_1000089F8(v153, v137, &unk_1011814D0, &qword_100EC12A0);
  v95 = v150;
  if (v151(v94, 1, v150) == 1)
  {
    sub_1000095E8(v94, &unk_1011814D0, &qword_100EC12A0);
    v96 = v141;
    (*(v81 + 56))(v141, 1, 1, v140);
LABEL_43:
    sub_1000095E8(v96, &qword_101188C20, &qword_100EC2030);
    v98 = _s8MetadataV13ConfigurationOMa(0);
    (*(*(v98 - 8) + 56))(v93, 1, 1, v98);
    goto LABEL_45;
  }

  v96 = v141;
  Playlist.lastModifiedDate.getter();
  (*(v80 + 8))(v94, v95);
  v97 = v140;
  if ((*(v81 + 48))(v96, 1, v140) == 1)
  {
    goto LABEL_43;
  }

  v99 = *(v81 + 32);
  v100 = v120;
  v99(v120, v96, v97);
  v101 = v100;
  v80 = v149;
  v99(v93, v101, v97);
  v102 = _s8MetadataV13ConfigurationOMa(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v102 - 8) + 56))(v93, 0, 1, v102);
LABEL_45:
  swift_getKeyPath();
  __chkstk_darwin();
  *(&v119 - 2) = v8;
  *(&v119 - 1) = v93;
  v154 = v8;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_1000095E8(v93, &unk_1011A4760, &qword_100ED6BD8);
  v103 = v138;
  sub_1000089F8(v153, v138, &unk_1011814D0, &qword_100EC12A0);
  v104 = v150;
  if (v151(v103, 1, v150) == 1)
  {
    sub_1000095E8(v103, &unk_1011814D0, &qword_100EC12A0);
  }

  else
  {
    v105 = sub_1005F7078();
    v107 = v106;
    (*(v80 + 8))(v103, v104);
    if (v107)
    {
      goto LABEL_49;
    }
  }

  v105 = 0;
  v107 = 0xE000000000000000;
LABEL_49:
  swift_getKeyPath();
  v154 = v8;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v108 = *(v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__description);
  v109 = *(v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 8);
  v110 = *(v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 16);
  v111 = *(v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 24);
  if (v109)
  {
    sub_100030444(*(v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 16), *(v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 24));
    v112 = v110;
    v113 = v111;
  }

  else
  {
    v112 = 0;
    v113 = 0;
  }

  sub_1004E5E44(v108, v109, v110, v111);
  sub_1004E5E90(v108, v109, v110, v111);
  sub_1005F4CC8(v105, v107, v112, v113);
  if ((v143 & 1) == 0)
  {
    goto LABEL_58;
  }

  v114 = v125;
  sub_1000089F8(v153, v125, &unk_1011814D0, &qword_100EC12A0);
  if (v151(v114, 1, v104) == 1)
  {
    sub_1000095E8(v114, &unk_1011814D0, &qword_100EC12A0);
LABEL_58:
    v116 = &off_1010993C8;
    goto LABEL_59;
  }

  v115 = Playlist.supportsSing.getter();
  (*(v149 + 8))(v114, v104);
  if (v115 == 2 || (v115 & 1) == 0)
  {
    goto LABEL_58;
  }

  v116 = &off_1010993A0;
LABEL_59:
  v117 = sub_10010E594(v116);
  sub_1005F4FB8(v117);
  return sub_1005F92F8(v148, type metadata accessor for ArtworkImage.Info);
}

uint64_t sub_1005F8850(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.Info(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005F88B4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtCV5Music6Header13Configuration__artworkAction);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_100030444(v1, v2);
  return sub_100020438(v4, v5);
}

uint64_t sub_1005F8958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1005FB05C();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

void *sub_1005F89BC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    sub_1005F8C10(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_1005F8A4C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (swift_stdlib_isStackAllocationSafe() & 1) != 0)
  {
    __chkstk_darwin();
    bzero(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    sub_1005F8C10((&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
    v9 = v8;
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_1005F89BC(v11, v6, a2, a1);
  }

  return v9;
}

void sub_1005F8C10(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a2;
  v63 = a1;
  v6 = type metadata accessor for AudioVariant();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v72 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v58 - v9;
  __chkstk_darwin();
  v73 = (v58 - v11);
  v12 = __chkstk_darwin();
  v62 = v58 - v13;
  v14 = *(a3 + 16);
  v15 = *(a4 + 16);
  v74 = v7 + 16;
  v70 = a4;
  v71 = a3;
  v66 = v7;
  if (v15 >= v14)
  {
    v39 = 0;
    v40 = *(a3 + 56);
    v61 = a3 + 56;
    v41 = 1 << *(a3 + 32);
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    else
    {
      v42 = -1;
    }

    v43 = v42 & v40;
    v44 = (v41 + 63) >> 6;
    v69 = a4 + 56;
    v73 = (v7 + 8);
    j = v44;
    v65 = 0;
    if (v43)
    {
      goto LABEL_30;
    }

LABEL_31:
    v46 = v39;
    while (1)
    {
      v39 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (v39 >= v44)
      {
LABEL_44:

        sub_1003B1B78(v63, v59, v65, a3);
        return;
      }

      v47 = *(v61 + 8 * v39);
      ++v46;
      if (v47)
      {
        v45 = __clz(__rbit64(v47));
        for (i = ((v47 - 1) & v47); ; i = ((v43 - 1) & v43))
        {
          v48 = v45 | (v39 << 6);
          v49 = *(a3 + 48);
          v50 = *(v7 + 72);
          v67 = v48;
          v51 = *(v7 + 16);
          v51(v72, v49 + v50 * v48, v6, v12);
          sub_1005FAAD4(&qword_10118D1F0, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
          v52 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v53 = -1 << *(a4 + 32);
          v54 = v52 & ~v53;
          if ((*(v69 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54))
          {
            v62 = (v73 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v55 = ~v53;
            while (1)
            {
              (v51)(v10, *(v70 + 48) + v54 * v50, v6);
              sub_1005FAAD4(&qword_10118D1F8, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
              v56 = dispatch thunk of static Equatable.== infix(_:_:)();
              v57 = *v73;
              (*v73)(v10, v6);
              if (v56)
              {
                break;
              }

              v54 = (v54 + 1) & v55;
              if (((*(v69 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
              {
                a4 = v70;
                goto LABEL_42;
              }
            }

            v57(v72, v6);
            v7 = v66;
            *(v63 + ((v67 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v67;
            v44 = j;
            v24 = __OFADD__(v65++, 1);
            a4 = v70;
            a3 = v71;
            v43 = i;
            if (v24)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v57 = *v73;
LABEL_42:
            v57(v72, v6);
            a3 = v71;
            v7 = v66;
            v44 = j;
            v43 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v45 = __clz(__rbit64(v43));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v65 = 0;
    v16 = a4;
    v17 = 0;
    v19 = v16 + 56;
    v18 = *(v16 + 56);
    v58[0] = v19;
    v20 = 1 << *(v19 - 24);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & v18;
    v23 = (v20 + 63) >> 6;
    v60 = v7 + 32;
    v61 = v23;
    v67 = a3 + 56;
    v72 = (v7 + 8);
    if (v22)
    {
      goto LABEL_9;
    }

LABEL_10:
    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v17 >= v23)
      {
        goto LABEL_44;
      }

      v27 = *(v58[0] + 8 * v17);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        for (j = (v27 - 1) & v27; ; j = (v22 - 1) & v22)
        {
          v28 = *(v7 + 72);
          v29 = *(v70 + 48) + v28 * (v25 | (v17 << 6));
          v30 = v62;
          i = *(v7 + 16);
          v69 = v28;
          i(v62, v29, v6, v12);
          (*(v7 + 32))(v73, v30, v6);
          sub_1005FAAD4(&qword_10118D1F0, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
          v31 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v32 = -1 << *(a3 + 32);
          v33 = v31 & ~v32;
          v34 = v33 >> 6;
          v35 = 1 << v33;
          if (((1 << v33) & *(v67 + 8 * (v33 >> 6))) != 0)
          {
            v58[1] = v72 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v36 = ~v32;
            while (1)
            {
              (i)(v10, *(v71 + 48) + v33 * v69, v6);
              sub_1005FAAD4(&qword_10118D1F8, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
              v37 = dispatch thunk of static Equatable.== infix(_:_:)();
              v38 = *v72;
              (*v72)(v10, v6);
              if (v37)
              {
                break;
              }

              v33 = (v33 + 1) & v36;
              v34 = v33 >> 6;
              v35 = 1 << v33;
              if (((1 << v33) & *(v67 + 8 * (v33 >> 6))) == 0)
              {
                a3 = v71;
                goto LABEL_21;
              }
            }

            v38(v73, v6);
            v22 = j;
            v63[v34] |= v35;
            v7 = v66;
            v24 = __OFADD__(v65++, 1);
            a3 = v71;
            v23 = v61;
            if (v24)
            {
              goto LABEL_48;
            }

            if (!v22)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v38 = *v72;
LABEL_21:
            v38(v73, v6);
            v7 = v66;
            v23 = v61;
            v22 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v25 = __clz(__rbit64(v22));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t sub_1005F92F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1005F93A0()
{
  *(*(v0 + 16) + OBJC_IVAR____TtCV5Music6Header13Configuration__metrics) = *(v0 + 24);
}

double sub_1005F9428()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16) + OBJC_IVAR____TtCV5Music6Header13Configuration__attribution;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v0 + 40);
  *v3 = v1;
  *(v3 + 8) = v2;
  v7 = *(v3 + 16);
  *(v3 + 16) = v6;
  sub_1005F94C0(v1, v2, v6);
  return sub_1005F9490(v4, v5, v7);
}

double sub_1005F9490(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1005F94A8(result, a2, a3 & 1);
  }

  return v3;
}

double sub_1005F94C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1005F94B4(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1005F94D8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9)
{
  v117 = a4;
  v118 = a8;
  v115 = a3;
  v116 = a7;
  v113 = a5;
  v114 = a6;
  v112 = a2;
  sub_10010FC20(&unk_1011842D0, &qword_100ECBF00);
  __chkstk_darwin();
  v96 = &v95 - v10;
  sub_10010FC20(&unk_1011A4760, &qword_100ED6BD8);
  __chkstk_darwin();
  v124 = (&v95 - v11);
  sub_10010FC20(&qword_1011831D0, &unk_100EC4CD0);
  __chkstk_darwin();
  v122 = &v95 - v12;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v103 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v101 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v121 = &v95 - v15;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v17 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v111 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v95 - v19;
  __chkstk_darwin();
  v104 = &v95 - v21;
  __chkstk_darwin();
  v102 = &v95 - v22;
  __chkstk_darwin();
  v105 = &v95 - v23;
  __chkstk_darwin();
  v25 = &v95 - v24;
  __chkstk_darwin();
  v27 = &v95 - v26;
  __chkstk_darwin();
  v29 = &v95 - v28;
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v31 = &v95 - v30;
  sub_10010FC20(&unk_10119F000, &qword_100EC31D0);
  __chkstk_darwin();
  v120 = &v95 - v32;
  v123 = a1;
  sub_1000089F8(a1, v29, &unk_101184730, &unk_100ECB920);
  v33 = type metadata accessor for Album();
  v34 = *(v33 - 8);
  v119 = *(v34 + 48);
  v35 = v119(v29, 1, v33);
  v110 = v20;
  v109 = v34;
  if (v35 == 1)
  {
    sub_1000095E8(v29, &unk_101184730, &unk_100ECB920);
    v36 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v36 - 8) + 56))(v31, 1, 1, v36);
  }

  else
  {
    ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v33, &protocol witness table for Album, v31);
    (*(v34 + 8))(v29, v33);
  }

  v37 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v37 - 8) + 56))(v17, 1, 11, v37);
  v38 = Corner.large.unsafeMutableAddressor();
  v39 = *v38;
  v40 = v38[1];
  v41 = *(v38 + 16);
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0, 1, 0, 1, 0, 1, 2, v125);
  v42 = v120;
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v31, v17, 0, 1, v125, v39, v40, v41, v120);
  v43 = type metadata accessor for ArtworkImage.Info(0);
  v44 = *(v43 - 8);
  v45 = *(v44 + 56);
  v108 = v43;
  v107 = v45;
  v106 = v44 + 56;
  (v45)(v42, 0, 1);
  v46 = v123;
  sub_1000089F8(v123, v27, &unk_101184730, &unk_100ECB920);
  v47 = v119;
  if (v119(v27, 1, v33) == 1)
  {
    sub_1000095E8(v27, &unk_101184730, &unk_100ECB920);
    v48 = type metadata accessor for Artwork();
    (*(*(v48 - 8) + 56))(v121, 1, 1, v48);
    v49 = v122;
    v50 = v109;
  }

  else
  {
    Album.staticDetailTallArtwork.getter();
    v50 = v109;
    (*(v109 + 8))(v27, v33);
    v49 = v122;
  }

  sub_1000089F8(v46, v25, &unk_101184730, &unk_100ECB920);
  v51 = v47(v25, 1, v33);
  v52 = v124;
  v53 = v110;
  if (v51 == 1)
  {
    sub_1000095E8(v25, &unk_101184730, &unk_100ECB920);
  }

  else
  {
    v54 = EditorialVideoArtworkVending.editorialVideoArtworks.getter();
    (*(v50 + 8))(v25, v33);
    if (v54)
    {
      goto LABEL_11;
    }
  }

  v54 = sub_10010BDB8(_swiftEmptyArrayStorage);

LABEL_11:
  v55 = v105;
  sub_1000089F8(v46, v105, &unk_101184730, &unk_100ECB920);
  v56 = v47(v55, 1, v33);
  v105 = v54;
  if (v56 == 1)
  {
    sub_1000095E8(v55, &unk_101184730, &unk_100ECB920);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v103 = String.init(localized:table:bundle:locale:comment:)();
    v101 = v57;
  }

  else
  {
    v103 = Album.title.getter();
    v101 = v58;
    (*(v50 + 8))(v55, v33);
  }

  v59 = v102;
  sub_1000089F8(v46, v102, &unk_101184730, &unk_100ECB920);
  if (v47(v59, 1, v33) == 1)
  {
    sub_1000095E8(v59, &unk_101184730, &unk_100ECB920);
    v60 = 1;
  }

  else
  {
    Album.favoriteStatus.getter();
    (*(v50 + 8))(v59, v33);
    v60 = 0;
  }

  v61 = type metadata accessor for MusicFavoriteStatus();
  v62 = *(v61 - 8);
  v63 = *(v62 + 56);
  v99 = v61;
  v98 = v63;
  v97 = v62 + 56;
  (v63)(v49, v60, 1);
  v64 = v104;
  sub_1000089F8(v46, v104, &unk_101184730, &unk_100ECB920);
  if (v47(v64, 1, v33) == 1)
  {
    sub_1000095E8(v64, &unk_101184730, &unk_100ECB920);
    v102 = 0;
    v100 = 0;
    v65 = 255;
  }

  else
  {
    v102 = Album.artistName.getter();
    v100 = v66;
    (*(v50 + 8))(v64, v33);
    v65 = 1;
  }

  LODWORD(v104) = v65;
  sub_1000089F8(v46, v53, &unk_101184730, &unk_100ECB920);
  if (v47(v53, 1, v33) == 1)
  {
    sub_1000095E8(v53, &unk_101184730, &unk_100ECB920);
    v67 = 1;
  }

  else
  {
    v68 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
    v69 = v96;
    (*(*(v68 - 8) + 56))(v96, 1, 1, v68);
    sub_1005F5C30(v69, v52);
    sub_1000095E8(v69, &unk_1011842D0, &qword_100ECBF00);
    (*(v50 + 8))(v53, v33);
    v67 = 0;
  }

  v110 = a9;
  v70 = _s8MetadataV13ConfigurationOMa(0);
  v71 = *(*(v70 - 8) + 56);
  v71(v52, v67, 1, v70);
  v72 = v111;
  sub_1000089F8(v46, v111, &unk_101184730, &unk_100ECB920);
  if (v119(v72, 1, v33) == 1)
  {
    sub_1000095E8(v72, &unk_101184730, &unk_100ECB920);
LABEL_27:

    v111 = 0;
    v119 = 0xE000000000000000;
    goto LABEL_28;
  }

  v73 = sub_1005F606C();
  v75 = v74;
  (*(v50 + 8))(v72, v33);
  v119 = v75;
  if (!v75)
  {
    goto LABEL_27;
  }

  v111 = v73;
LABEL_28:
  v109 = sub_10010E594(&off_101099300);
  _s13ConfigurationCMa(0);
  v76 = swift_allocObject();
  v77 = OBJC_IVAR____TtCV5Music6Header13Configuration__artworkInfo;
  v107(v76 + OBJC_IVAR____TtCV5Music6Header13Configuration__artworkInfo, 1, 1, v108);
  v78 = OBJC_IVAR____TtCV5Music6Header13Configuration__tallArtwork;
  v79 = type metadata accessor for Artwork();
  (*(*(v79 - 8) + 56))(v76 + v78, 1, 1, v79);
  v80 = OBJC_IVAR____TtCV5Music6Header13Configuration__favoriteStatus;
  v98(v76 + OBJC_IVAR____TtCV5Music6Header13Configuration__favoriteStatus, 1, 1, v99);
  v81 = v76 + OBJC_IVAR____TtCV5Music6Header13Configuration__attribution;
  v82 = (v76 + OBJC_IVAR____TtCV5Music6Header13Configuration__artworkAction);
  v83 = OBJC_IVAR____TtCV5Music6Header13Configuration__metadata;
  v71((v76 + OBJC_IVAR____TtCV5Music6Header13Configuration__metadata), 1, 1, v70);
  v84 = (v76 + OBJC_IVAR____TtCV5Music6Header13Configuration__description);
  v108 = (v76 + OBJC_IVAR____TtCV5Music6Header13Configuration__playbackIntentProvider);
  *(v76 + OBJC_IVAR____TtCV5Music6Header13Configuration__shouldIncludeFloatingArtwork) = 0;
  *(v76 + OBJC_IVAR____TtCV5Music6Header13Configuration__hidePlaybackControls) = 0;
  *(v76 + OBJC_IVAR____TtCV5Music6Header13Configuration__disableAttribution) = 0;
  *(v76 + OBJC_IVAR____TtCV5Music6Header13Configuration__hideTitleContainer) = 0;
  ObservationRegistrar.init()();
  sub_1000095E8(v123, &unk_101184730, &unk_100ECB920);
  *(v76 + 16) = v112;
  sub_1000095E8(v76 + v77, &unk_10119F000, &qword_100EC31D0);
  sub_10003D17C(v120, v76 + v77, &unk_10119F000, &qword_100EC31D0);
  sub_1000095E8(v76 + v78, &unk_101188920, &qword_100EBCC50);
  sub_10003D17C(v121, v76 + v78, &unk_101188920, &qword_100EBCC50);
  *(v76 + OBJC_IVAR____TtCV5Music6Header13Configuration__videoArtworks) = v105;
  v85 = (v76 + OBJC_IVAR____TtCV5Music6Header13Configuration__title);
  v86 = v101;
  *v85 = v103;
  v85[1] = v86;
  sub_1000095E8(v76 + v80, &qword_1011831D0, &unk_100EC4CD0);
  sub_10003D17C(v122, v76 + v80, &qword_1011831D0, &unk_100EC4CD0);
  v87 = v100;
  *v81 = v102;
  *(v81 + 8) = v87;
  *(v81 + 16) = v104;
  v88 = (v76 + OBJC_IVAR____TtCV5Music6Header13Configuration__attributionAction);
  v89 = v114;
  *v88 = v113;
  v88[1] = v89;
  *v82 = 0;
  v82[1] = 0;
  sub_1000095E8(v76 + v83, &unk_1011A4760, &qword_100ED6BD8);
  sub_10003D17C(v124, v76 + v83, &unk_1011A4760, &qword_100ED6BD8);
  v90 = v119;
  *v84 = v111;
  v84[1] = v90;
  v91 = v118;
  v84[2] = v116;
  v84[3] = v91;
  v92 = v108;
  v93 = v117;
  *v108 = v115;
  v92[1] = v93;
  *(v76 + OBJC_IVAR____TtCV5Music6Header13Configuration__playIntentButtonIntents) = v109;
  *(v76 + OBJC_IVAR____TtCV5Music6Header13Configuration__metrics) = v110;
  return v76;
}

uint64_t sub_1005FA4B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.Info(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10119F000, &qword_100EC31D0);
  __chkstk_darwin();
  v9 = &v18 - v8;
  sub_10010FC20(&qword_101198358, &qword_100ED6BE0);
  __chkstk_darwin();
  v11 = &v18 - v10;
  v13 = *(v12 + 56);
  sub_1000089F8(a1, &v18 - v10, &unk_10119F000, &qword_100EC31D0);
  sub_1000089F8(a2, &v11[v13], &unk_10119F000, &qword_100EC31D0);
  v14 = *(v5 + 48);
  if (v14(v11, 1, v4) != 1)
  {
    sub_1000089F8(v11, v9, &unk_10119F000, &qword_100EC31D0);
    if (v14(&v11[v13], 1, v4) != 1)
    {
      sub_1002D8E5C(&v11[v13], v7);
      v16 = static ArtworkImage.Info.__derived_struct_equals(_:_:)(v9, v7);
      sub_1005F92F8(v7, type metadata accessor for ArtworkImage.Info);
      sub_1005F92F8(v9, type metadata accessor for ArtworkImage.Info);
      sub_1000095E8(v11, &unk_10119F000, &qword_100EC31D0);
      v15 = v16 ^ 1;
      return v15 & 1;
    }

    sub_1005F92F8(v9, type metadata accessor for ArtworkImage.Info);
    goto LABEL_6;
  }

  if (v14(&v11[v13], 1, v4) != 1)
  {
LABEL_6:
    sub_1000095E8(v11, &qword_101198358, &qword_100ED6BE0);
    v15 = 1;
    return v15 & 1;
  }

  sub_1000095E8(v11, &unk_10119F000, &qword_100EC31D0);
  v15 = 0;
  return v15 & 1;
}

uint64_t sub_1005FA780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicFavoriteStatus();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011831D0, &unk_100EC4CD0);
  __chkstk_darwin();
  v9 = &v19 - v8;
  sub_10010FC20(&qword_101198360, &qword_100ED6E18);
  __chkstk_darwin();
  v11 = &v19 - v10;
  v13 = *(v12 + 56);
  sub_1000089F8(a1, &v19 - v10, &qword_1011831D0, &unk_100EC4CD0);
  sub_1000089F8(a2, &v11[v13], &qword_1011831D0, &unk_100EC4CD0);
  v14 = *(v5 + 48);
  if (v14(v11, 1, v4) != 1)
  {
    sub_1000089F8(v11, v9, &qword_1011831D0, &unk_100EC4CD0);
    if (v14(&v11[v13], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v11[v13], v4);
      sub_1005FAAD4(&qword_101198368, &type metadata accessor for MusicFavoriteStatus, &protocol conformance descriptor for MusicFavoriteStatus);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      v17 = *(v5 + 8);
      v17(v7, v4);
      v17(v9, v4);
      sub_1000095E8(v11, &qword_1011831D0, &unk_100EC4CD0);
      v15 = v16 ^ 1;
      return v15 & 1;
    }

    (*(v5 + 8))(v9, v4);
    goto LABEL_6;
  }

  if (v14(&v11[v13], 1, v4) != 1)
  {
LABEL_6:
    sub_1000095E8(v11, &qword_101198360, &qword_100ED6E18);
    v15 = 1;
    return v15 & 1;
  }

  sub_1000095E8(v11, &qword_1011831D0, &unk_100EC4CD0);
  v15 = 0;
  return v15 & 1;
}

uint64_t sub_1005FAAD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1005FAB1C()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtCV5Music6Header13Configuration__title);
  *v2 = v0[3];
  v2[1] = v1;
}

void sub_1005FAB88(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t sub_1005FABCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v9 = &v19 - v8;
  sub_10010FC20(&unk_101191420, &unk_100EC9120);
  __chkstk_darwin();
  v11 = &v19 - v10;
  v13 = *(v12 + 56);
  sub_1000089F8(a1, &v19 - v10, &unk_101188920, &qword_100EBCC50);
  sub_1000089F8(a2, &v11[v13], &unk_101188920, &qword_100EBCC50);
  v14 = *(v5 + 48);
  if (v14(v11, 1, v4) != 1)
  {
    sub_1000089F8(v11, v9, &unk_101188920, &qword_100EBCC50);
    if (v14(&v11[v13], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v11[v13], v4);
      sub_1005FAAD4(&unk_10118D3D0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      v17 = *(v5 + 8);
      v17(v7, v4);
      v17(v9, v4);
      sub_1000095E8(v11, &unk_101188920, &qword_100EBCC50);
      v15 = v16 ^ 1;
      return v15 & 1;
    }

    (*(v5 + 8))(v9, v4);
    goto LABEL_6;
  }

  if (v14(&v11[v13], 1, v4) != 1)
  {
LABEL_6:
    sub_1000095E8(v11, &unk_101191420, &unk_100EC9120);
    v15 = 1;
    return v15 & 1;
  }

  sub_1000095E8(v11, &unk_101188920, &qword_100EBCC50);
  v15 = 0;
  return v15 & 1;
}

double sub_1005FAF54()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 32) = result;
  return result;
}

double sub_1005FAF64()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 24) = result;
  return result;
}

double sub_1005FAF74()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

uint64_t sub_1005FAF84(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(&unk_1011841D0, &qword_100EC5DB0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1005FB008()
{
  result = qword_101198370;
  if (!qword_101198370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198370);
  }

  return result;
}

unint64_t sub_1005FB05C()
{
  result = qword_101198378;
  if (!qword_101198378)
  {
    sub_1001109D0(&qword_10118E380, qword_100ECA620);
    sub_1005FB0E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198378);
  }

  return result;
}

unint64_t sub_1005FB0E0()
{
  result = qword_101198380;
  if (!qword_101198380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198380);
  }

  return result;
}

void sub_1005FB1CC(uint64_t a1)
{
  _s8MetadataV13ConfigurationOMa(319);
  if (v1 <= 0x3F)
  {
    sub_1005FB298(319, &qword_1011891F0, &unk_1011891F8, qword_100EDB130);
    if (v2 <= 0x3F)
    {
      sub_1005FB298(319, &qword_10118E378, &qword_10118E380, qword_100ECA620);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1005FB298(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1001109D0(a3, a4);
    v5 = type metadata accessor for Environment();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1005FB2EC(uint64_t a1)
{
  sub_1005FB360(319);
  if (v1 <= 0x3F)
  {
    sub_1005FB3D8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1005FB360(uint64_t a1)
{
  if (!qword_1011984B0)
  {
    sub_1001109D0(&qword_1011984B8, &qword_100ED7018);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1011984B0);
    }
  }
}

void sub_1005FB3D8()
{
  if (!qword_1011984C0)
  {
    v0 = type metadata accessor for Date();
    if (!v1)
    {
      atomic_store(v0, &qword_1011984C0);
    }
  }
}

uint64_t sub_1005FB420(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t sub_1005FB444(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 32))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005FB4A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1005FB500(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

void *sub_1005FB540@<X0>(_BYTE *a1@<X8>)
{
  sub_1005FF400();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1005FB5DC@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v3 = type metadata accessor for EnvironmentValues();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin();
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101188610, &qword_100EC4D60);
  __chkstk_darwin();
  v6 = &v38 - v5;
  v7 = type metadata accessor for Font.TextStyle();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&qword_1011984F8, &qword_100ED70E8) - 8;
  __chkstk_darwin();
  v13 = &v38 - v12;
  v14 = sub_10010FC20(&qword_101198500, &qword_100ED70F0);
  __chkstk_darwin();
  v16 = &v38 - v15;
  sub_1005FBA40(v2, v13);
  v17 = sub_10010FC20(&qword_101198508, &qword_100ED70F8);
  sub_1005FBEE8(&v13[*(v17 + 36)]);
  sub_1005FC4A4(v10);
  v18 = type metadata accessor for Font.Design();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  static Font.Weight.semibold.getter();
  v19 = static Font.system(_:design:weight:)();
  sub_1000095E8(v6, &qword_101188610, &qword_100EC4D60);
  (*(v8 + 8))(v10, v7);
  KeyPath = swift_getKeyPath();
  v21 = &v13[*(v11 + 44)];
  *v21 = KeyPath;
  v21[1] = v19;
  v22 = v2 + *(_s8MetadataVMa(0) + 20);
  v23 = *v22;
  if (*(v22 + 8) != 1)
  {

    v24 = static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v25, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v26 = v39;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v27 = sub_1000D8F20(v23, 0);
    (*(v40 + 8))(v26, v41, v27);
    LOBYTE(v23) = v43;
  }

  v28 = v23 == 2 || (v23 & 1) == 0;
  v29 = swift_getKeyPath();
  sub_1005FEEFC(v13, v16);
  v30 = &v16[*(v14 + 36)];
  *v30 = v29;
  v30[8] = v28;
  v31 = AccessibilityIdentifier.containerDetailHeaderMetadata.unsafeMutableAddressor();
  v32 = *v31;
  v33 = v31[1];
  v34 = v31[2];
  v35 = v31[3];
  v36 = sub_1005FEF6C();

  View.accessibilityIdentifier(_:)(v32, v33, v34, v35, v14, v36);

  return sub_1000095E8(v16, &qword_101198500, &qword_100ED70F0);
}

uint64_t sub_1005FBA40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v32 = a2;
  v2 = type metadata accessor for Font.TextStyle();
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin();
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s8MetadataV13AlbumMetadataVMa(0);
  __chkstk_darwin();
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101198568, &qword_100ED7180);
  __chkstk_darwin();
  v9 = (&v29 - v8);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s8MetadataV13ConfigurationOMa(0);
  __chkstk_darwin();
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005FF33C(v31, v15, _s8MetadataV13ConfigurationOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = v5;
    (*(v11 + 32))(v13, v15, v10);
    v16 = Date.lastUpdatedDateString.getter();
    if (v17)
    {
      v33 = v16;
      v34 = v17;
      sub_100009838();
      v18 = Text.init<A>(_:)();
      v20 = v19;
      v22 = v21;
      v24 = v23 & 1;
      sub_10021D0C0(v18, v19, v23 & 1);
    }

    else
    {
      v18 = 0;
      v20 = 0;
      v24 = 0;
      v22 = 0;
    }

    *v9 = v18;
    v9[1] = v20;
    v9[2] = v24;
    v9[3] = v22;
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&qword_101186800, &unk_100EC2218);
    sub_10024E988();
    sub_1005FF2D4(&qword_101198548, _s8MetadataV13AlbumMetadataVMa, &unk_100ED71B8);
    _ConditionalContent<>.init(storage:)();
    v28 = sub_10024EA04(v18, v20, v24, v22);
    return (*(v11 + 8))(v13, v10, v28);
  }

  else
  {
    v25 = *(v15 + 4);
    v26 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v26;
    *(v7 + 4) = v25;
    *(v7 + 5) = swift_getKeyPath();
    v7[48] = 0;
    v33 = 0x4032000000000000;
    (*(v29 + 104))(v4, enum case for Font.TextStyle.caption2(_:), v30);
    sub_100363C0C();
    ScaledMetric.init(wrappedValue:relativeTo:)();
    sub_1005FF33C(v7, v9, _s8MetadataV13AlbumMetadataVMa);
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&qword_101186800, &unk_100EC2218);
    sub_10024E988();
    sub_1005FF2D4(&qword_101198548, _s8MetadataV13AlbumMetadataVMa, &unk_100ED71B8);
    _ConditionalContent<>.init(storage:)();
    return sub_1005FF3A4(v7);
  }
}

uint64_t sub_1005FBEE8@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = type metadata accessor for BlendMode();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v44 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v43 - v5;
  __chkstk_darwin();
  v45 = &v43 - v7;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v1 + *(_s8MetadataVMa(0) + 24);
  v13 = *v12;
  v14 = *(v12 + 8);
  if (v14 == 1)
  {
    v15 = *v12;
  }

  else
  {

    v16 = static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v17, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v18 = sub_1000D8F20(v13, 0);
    (*(v9 + 8))(v11, v8, v18);
    LOBYTE(v15) = v50;
  }

  if ((v15 & 0xFE) == 2)
  {
    v19 = static HierarchicalShapeStyle.secondary.getter();
    v48 = &type metadata for HierarchicalShapeStyle;
    v49 = &protocol witness table for HierarchicalShapeStyle;
    LODWORD(v47) = v19;
  }

  else
  {
    if (v15)
    {
      v20 = static Color.black.getter();
    }

    else
    {
      v20 = static Color.white.getter();
    }

    v51 = &type metadata for Color;
    v52 = &protocol witness table for Color;
    *&v50 = v20;
    sub_100188D80(&v50, &v47);
  }

  sub_100188D80(&v47, &v50);
  if (v14)
  {
    v21 = 0.6;
    if (v13)
    {
      v21 = 0.45;
    }

    if ((v13 & 0xFE) == 2)
    {
      v22 = 1.0;
    }

    else
    {
      v22 = v21;
    }
  }

  else
  {

    v23 = static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v25 = sub_1000D8F20(v13, 0);
    v26 = *(v9 + 8);
    v26(v11, v8, v25);
    v27 = 0.6;
    if (v47)
    {
      v27 = 0.45;
    }

    if ((v47 & 0xFE) == 2)
    {
      v22 = 1.0;
    }

    else
    {
      v22 = v27;
    }

    v28 = static os_log_type_t.fault.getter();
    v29 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, v29, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v30 = sub_1000D8F20(v13, 0);
    v26(v11, v8, v30);
    LOBYTE(v13) = v47;
  }

  v31 = *(v3 + 104);
  if ((v13 & 0xFE) == 2)
  {
    v31(v6, enum case for BlendMode.normal(_:), v2);
    v32 = *(v3 + 32);
  }

  else
  {
    v33 = &enum case for BlendMode.plusDarker(_:);
    if ((v13 & 1) == 0)
    {
      v33 = &enum case for BlendMode.plusLighter(_:);
    }

    v34 = v44;
    v31(v44, *v33, v2);
    v32 = *(v3 + 32);
    v32(v6, v34, v2);
  }

  v35 = v45;
  v32(v45, v6, v2);
  sub_10000954C(&v50, v51);
  v36 = __chkstk_darwin();
  (*(v38 + 16))(&v43 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0), v36);
  v39 = AnyShapeStyle.init<A>(_:)();
  v40 = sub_10010FC20(&qword_101198560, &qword_100ED7178);
  v41 = v46;
  v32((v46 + *(v40 + 36)), v35, v2);
  *v41 = v39;
  *(v41 + 8) = v22;
  return sub_10000959C(&v50);
}

uint64_t sub_1005FC4A4@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v2 + *(_s8MetadataVMa(0) + 20);
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {

    v11 = static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v13 = sub_1000D8F20(v9, 0);
    (*(v5 + 8))(v7, v4, v13);
    if (v17[15])
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = &enum case for Font.TextStyle.caption2(_:);
    goto LABEL_6;
  }

  if ((v9 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = &enum case for Font.TextStyle.footnote(_:);
LABEL_6:
  v14 = *v10;
  v15 = type metadata accessor for Font.TextStyle();
  return (*(*(v15 - 8) + 104))(a1, v14, v15);
}

uint64_t sub_1005FC668(uint64_t a1)
{
  result = sub_1005FF2D4(&qword_1011984F0, _s8MetadataVMa, &unk_100ED7094);
  *(a1 + 8) = result;
  return result;
}

void sub_1005FC6DC()
{
  v0 = String.nonBreakingSpace.unsafeMutableAddressor();
  v2 = *v0;
  v3 = v0[1];

  v1._countAndFlagsBits = 2144194;
  v1._object = 0xA300000000000000;
  String.append(_:)(v1);
  qword_101198388 = v2;
  unk_101198390 = v3;
}

double sub_1005FC734@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin();
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001104F0(&off_10109BE20);
  v10 = sub_1005FCB08(v8, v9);

  if (qword_10117F968 != -1)
  {
    swift_once();
  }

  v36 = qword_101198388;
  v37 = unk_101198390;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);

  if (v12 != 1)
  {
    sub_1005FF6B8(v11, 0);
    v14 = static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    v33 = v10;
    v16 = v15;
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v10 = v33;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v17 = sub_1000D8F20(v11, 0);
    (*(v34 + 8))(v7, v35, v17);
    if ((v49 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_7:
    v13 = static HorizontalAlignment.leading.getter();
    goto LABEL_8;
  }

  if (v11)
  {
    goto LABEL_7;
  }

LABEL_5:
  v13 = static HorizontalAlignment.center.getter();
LABEL_8:
  v18 = v13;
  v53 = 1;
  sub_1005FD420(&v49);
  v43 = *&v50[48];
  v44 = *&v50[64];
  v39 = v49;
  v40 = *v50;
  v41 = *&v50[16];
  v42 = *&v50[32];
  v45 = *&v50[80];
  v46[0] = v49;
  v46[1] = *v50;
  v46[2] = *&v50[16];
  v46[3] = *&v50[32];
  v46[4] = *&v50[48];
  v46[5] = *&v50[64];
  v46[6] = *&v50[80];
  sub_1000089F8(&v39, &v47, &qword_101198630, &qword_100ED7210);
  sub_1000095E8(v46, &qword_101198630, &qword_100ED7210);
  *&v52[71] = v43;
  *&v52[55] = v42;
  *&v52[87] = v44;
  *&v52[103] = v45;
  *&v52[7] = v39;
  *&v52[23] = v40;
  *&v52[39] = v41;
  v19 = v53;
  v47 = v18;
  v48[0] = v53;
  v20 = *&v52[48];
  *&v48[65] = *&v52[64];
  v21 = *&v52[64];
  *&v48[81] = *&v52[80];
  v22 = *&v52[80];
  *&v48[97] = *&v52[96];
  *&v48[1] = *v52;
  v23 = *v52;
  v24 = *&v52[16];
  *&v48[17] = *&v52[16];
  *&v48[33] = *&v52[32];
  v25 = *&v52[32];
  *&v48[49] = *&v52[48];
  v26 = *v48;
  *(a2 + 24) = v18;
  v27 = *&v48[64];
  *(a2 + 88) = *&v48[48];
  v28 = *&v48[16];
  *(a2 + 72) = *&v48[32];
  *(a2 + 56) = v28;
  *(a2 + 40) = v26;
  v29 = *&v48[80];
  *(a2 + 136) = *&v48[96];
  *(a2 + 120) = v29;
  *(a2 + 104) = v27;
  *&v50[65] = v21;
  *&v50[81] = v22;
  *v51 = *&v52[96];
  *&v48[112] = *&v52[111];
  v30 = v36;
  v31 = v37;
  *a2 = v10;
  *(a2 + 8) = v30;
  *(a2 + 16) = v31;
  *(a2 + 152) = *&v48[112];
  v49 = v18;
  v50[0] = v19;
  *&v51[15] = *&v52[111];
  *&v50[1] = v23;
  *&v50[17] = v24;
  *&v50[33] = v25;
  *&v50[49] = v20;

  sub_1000089F8(&v47, &v38, &qword_101198638, &qword_100ED7218);
  sub_1000095E8(&v49, &qword_101198638, &qword_100ED7218);

  return result;
}

char *sub_1005FCB08(uint64_t a1, __n128 a2)
{
  type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin();
  v72[2] = v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AudioVariant();
  v78 = *(v5 - 8);
  __chkstk_darwin();
  v7 = v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  if (!*(a1 + 16))
  {
    return _swiftEmptyArrayStorage;
  }

  v77 = v7;
  v8 = *v2;
  v9 = v2[1];
  v10 = v2[2];
  v11 = v2[3];
  v12 = sub_100042A50();
  if (v9 != 1)
  {
    if (v12)
    {
      if (v9)
      {

        TextArray.Element.init(_:)(v8, v9, v82);
        v79 = sub_10049AA60(0, 1, 1, _swiftEmptyArrayStorage);
        v22 = *(v79 + 2);
        v21 = *(v79 + 3);
        if (v22 >= v21 >> 1)
        {
          v79 = sub_10049AA60((v21 > 1), v22 + 1, 1, v79);
        }

        v19 = v77;
        v23 = v79;
        *(v79 + 2) = v22 + 1;
        v24 = &v23[48 * v22];
        v25 = v82[1];
        *(v24 + 2) = v82[0];
        *(v24 + 3) = v25;
        *(v24 + 4) = v82[2];
        if (!v11)
        {
          goto LABEL_21;
        }
      }

      else
      {

        v79 = _swiftEmptyArrayStorage;
        v19 = v77;
        if (!v11)
        {
          goto LABEL_21;
        }
      }

      TextArray.Element.init(_:)(v10, v11, v83);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = sub_10049AA60(0, *(v79 + 2) + 1, 1, v79);
      }

      v17 = *(v79 + 2);
      v26 = *(v79 + 3);
      v18 = v17 + 1;
      if (v17 >= v26 >> 1)
      {
        v79 = sub_10049AA60((v26 > 1), v17 + 1, 1, v79);
      }

      v14 = v83;
      goto LABEL_20;
    }

LABEL_13:
    v79 = _swiftEmptyArrayStorage;
    v19 = v77;
    goto LABEL_21;
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_13;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v13 = String.init(localized:table:bundle:locale:comment:)();
  v14 = v83;
  TextArray.Element.init(_:)(v13, v15, v83);
  v79 = sub_10049AA60(0, 1, 1, _swiftEmptyArrayStorage);
  v17 = *(v79 + 2);
  v16 = *(v79 + 3);
  v18 = v17 + 1;
  if (v17 >= v16 >> 1)
  {
    goto LABEL_55;
  }

  while (1)
  {
    v19 = v77;
LABEL_20:
    v27 = v79;
    *(v79 + 2) = v18;
    v28 = &v27[48 * v17];
    v29 = *v14;
    v30 = v14[2];
    *(v28 + 3) = v14[1];
    *(v28 + 4) = v30;
    *(v28 + 2) = v29;
LABEL_21:
    if ((sub_100042A50() & 1) == 0)
    {
      return v79;
    }

    v18 = Array<A>.removingEquivalents()(v2[4]);
    v31 = *(v18 + 16);
    v73 = v5;
    if (!v31)
    {
      break;
    }

    v2 = sub_1003AE06C(v31, 0);
    sub_10019802C(&v84, v2 + ((*(v78 + 80) + 32) & ~*(v78 + 80)), v31, v18);
    v17 = v32;
    v14 = v84;
    v5 = *(&v85 + 1);

    sub_10005C9F8(v14);
    if (v17 == v31)
    {

      v5 = v73;
      v19 = v77;
      goto LABEL_26;
    }

    __break(1u);
LABEL_55:
    v79 = sub_10049AA60((v16 > 1), v18, 1, v79);
  }

  v2 = _swiftEmptyArrayStorage;
LABEL_26:
  *&v84 = v2;
  sub_1005FDB28(&v84);
  v33 = *(v84 + 16);
  if (v33)
  {
    v76 = *(v78 + 16);
    v34 = (*(v78 + 80) + 32) & ~*(v78 + 80);
    v72[1] = v84;
    v35 = v84 + v34;
    v75 = (v78 + 8);
    v78 += 16;
    v74 = *(v78 + 56);
    v36 = v79;
    v76(v19, v84 + v34, v5);
    while (1)
    {
      AudioVariant.symbolString.getter();
      if (v39)
      {
        v40 = qword_10117F878;

        if (v40 != -1)
        {
          swift_once();
        }

        v41 = qword_101218F90;
        v42 = Image.init(_:bundle:)();
      }

      else
      {
        v42 = 0;
      }

      v43 = AudioVariant.badgeText.getter();
      v45 = v44;
      v46 = AudioVariant.accessibilityLabel.getter();
      v48 = v47;
      if (!v42)
      {
        break;
      }

      v79 = v33;
      if (!v45)
      {

        v60 = Text.init(_:)();
LABEL_42:
        v53 = v60;
        v55 = v61;
        v57 = v62;
        v59 = v63;
        goto LABEL_43;
      }

      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v49._countAndFlagsBits = 0;
      v49._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v49);
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
      v50._countAndFlagsBits = 41154;
      v50._object = 0xA200000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v50);
      v51._countAndFlagsBits = v43;
      v51._object = v45;
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v51);

      v52._countAndFlagsBits = 0;
      v52._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v52);
      LocalizedStringKey.init(stringInterpolation:)();
      v53 = Text.init(_:tableName:bundle:comment:)();
      v55 = v54;
      v57 = v56;
      v59 = v58;

LABEL_43:
      v64 = v57 & 1;
      if (v48)
      {
        v65 = v46;
      }

      else
      {
        v65 = 0;
      }

      TextArray.Element.init(text:accessibilityLabel:)(v53, v55, v57 & 1, v59, v65, v48, &v84);
      sub_10024EA48(v53, v55, v57 & 1, v59);
      sub_10021D0C0(v53, v55, v57 & 1);

      v66 = v36;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_10049AA60(0, *(v36 + 2) + 1, 1, v36);
      }

      v38 = v77;
      v68 = *(v66 + 2);
      v67 = *(v66 + 3);
      v36 = v66;
      if (v68 >= v67 >> 1)
      {
        v36 = sub_10049AA60((v67 > 1), v68 + 1, 1, v66);
      }

      sub_10011895C(v53, v55, v64);

      sub_10024EA04(v53, v55, v64, v59);

      v5 = v73;
      (*v75)(v38, v73);
      *(v36 + 2) = v68 + 1;
      v69 = &v36[48 * v68];
      v70 = v84;
      v71 = v86;
      *(v69 + 3) = v85;
      *(v69 + 4) = v71;
      *(v69 + 2) = v70;
      v33 = v79;
LABEL_29:
      v35 += v74;
      if (!--v33)
      {

        return v36;
      }

      v76(v38, v35, v5);
    }

    if (!v45)
    {
      v37 = v77;
      (*v75)(v77, v5);
      v38 = v37;

      goto LABEL_29;
    }

    v79 = v33;
    v80 = v43;
    v81 = v45;
    sub_100009838();
    v60 = Text.init<A>(_:)();
    goto LABEL_42;
  }

  return v79;
}

double sub_1005FD420@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1001104F0(&off_10109BDD0);
  v4 = sub_1005FCB08(v2, v3);

  if (qword_10117F968 != -1)
  {
    swift_once();
  }

  v5 = unk_101198390;
  v10 = qword_101198388;
  _s8MetadataV13AlbumMetadataVMa(0);
  swift_bridgeObjectRetain_n();
  sub_10010FC20(&qword_10119A070, "@R\n");
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v6 = sub_1001104F0(&off_10109BDF8);
  v8 = sub_1005FCB08(v6, v7);

  *a1 = v4;
  *(a1 + 8) = v10;
  *(a1 + 16) = v5;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = v11;
  *(a1 + 48) = v12;
  *(a1 + 56) = v13;
  *(a1 + 64) = v14;
  *(a1 + 72) = v15;
  *(a1 + 80) = v16;
  *(a1 + 88) = v8;
  *(a1 + 96) = v10;
  *(a1 + 104) = v5;

  return result;
}

double sub_1005FD5BC@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = static Axis.Set.horizontal.getter();
  sub_1005FC734(v2, &v12);
  v29 = v18;
  v30 = v19;
  v31 = v20;
  v32 = v21;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v28 = v17;
  v23 = v12;
  v24 = v13;
  v33[6] = v18;
  v33[7] = v19;
  v33[8] = v20;
  v33[9] = v21;
  v33[2] = v14;
  v33[3] = v15;
  v33[4] = v16;
  v33[5] = v17;
  v33[0] = v12;
  v33[1] = v13;
  sub_1000089F8(&v23, &v11, &qword_101198628, &qword_100ED7208);
  sub_1000095E8(v33, &qword_101198628, &qword_100ED7208);
  *&v22[55] = v26;
  *&v22[39] = v25;
  *&v22[103] = v29;
  *&v22[119] = v30;
  *&v22[135] = v31;
  *&v22[151] = v32;
  *&v22[71] = v27;
  *&v22[87] = v28;
  *&v22[7] = v23;
  *&v22[23] = v24;
  v5 = *&v22[96];
  *(a1 + 113) = *&v22[112];
  v6 = *&v22[144];
  *(a1 + 129) = *&v22[128];
  *(a1 + 145) = v6;
  v7 = *&v22[32];
  *(a1 + 49) = *&v22[48];
  v8 = *&v22[80];
  *(a1 + 65) = *&v22[64];
  *(a1 + 81) = v8;
  *(a1 + 97) = v5;
  result = *v22;
  v10 = *&v22[16];
  *(a1 + 1) = *v22;
  *(a1 + 17) = v10;
  *a1 = v4;
  *(a1 + 160) = *&v22[159];
  *(a1 + 33) = v7;
  return result;
}

uint64_t sub_1005FD7A8()
{
  v1 = v0;
  v2 = type metadata accessor for AudioVariant();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s8MetadataV13ConfigurationOMa(0);
  __chkstk_darwin();
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1005FF33C(v1, v11, _s8MetadataV13ConfigurationOMa);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    (*(v7 + 32))(v9, v11, v6);
    Date.lastUpdatedDateString.getter();
    v14 = v13;
    (*(v7 + 8))(v9, v6);
    if (!v14)
    {
      return 0;
    }

    goto LABEL_6;
  }

  v15 = *v11;
  v16 = v11[1];
  v17 = v11[2];
  v18 = v11[3];
  v19 = v11[4];
  if (v16)
  {
    if (v16 == 1)
    {
LABEL_6:

      return 1;
    }

    v20 = v15;
    v21 = v16;
LABEL_11:
    v22 = v17;
    v23 = v18;
LABEL_12:
    sub_1005FF454(v20, v21, v22, v23);
    return 1;
  }

  if (v18)
  {

    v20 = v15;
    v21 = 0;
    goto LABEL_11;
  }

  v32 = v11[2];
  v24 = 0;
  v25 = *(v19 + 16);
  v26 = (v3 + 8);
  while (1)
  {
    if (v25 == v24)
    {

      sub_1005FF454(v15, 0, v32, 0);
      return 0;
    }

    if (v24 >= *(v19 + 16))
    {
      break;
    }

    (*(v3 + 16))(v5, v19 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v24, v2);
    AudioVariant.symbolString.getter();
    if (v27)
    {

      v30 = sub_1005FF454(v15, 0, v32, 0);
      (*v26)(v5, v2, v30);
      return 1;
    }

    ++v24;
    AudioVariant.badgeText.getter();
    v29 = v28;
    result = (*v26)(v5, v2);
    if (v29)
    {

      v20 = v15;
      v21 = 0;
      v22 = v32;
      v23 = 0;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_1005FDB28(uint64_t *a1)
{
  v2 = *(type metadata accessor for AudioVariant() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10059F094(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1005FDBD0(v5);
  *a1 = v3;
}

void sub_1005FDBD0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for AudioVariant();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for AudioVariant() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1005FDF80(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1005FDCFC(0, v2, 1, a1);
  }
}

void sub_1005FDCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for AudioVariant();
  __chkstk_darwin();
  v38 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v42 = &v28 - v10;
  v12 = __chkstk_darwin();
  v41 = &v28 - v13;
  v30 = a2;
  if (a3 != a2)
  {
    v14 = *a4;
    v39 = *(v11 + 16);
    v40 = v11 + 16;
    v15 = *(v11 + 72);
    v16 = (v11 + 8);
    v17 = (v14 + v15 * (a3 - 1));
    v35 = -v15;
    v36 = (v11 + 32);
    v18 = a1 - a3;
    v37 = v14;
    v29 = v15;
    v19 = v14 + v15 * a3;
LABEL_5:
    v33 = v17;
    v34 = a3;
    v31 = v19;
    v32 = v18;
    while (1)
    {
      v20 = v41;
      v21 = v39;
      (v39)(v41, v19, v8, v12);
      v22 = v42;
      v21(v42, v17, v8);
      v23 = static AudioVariant.< infix(_:_:)(v20, v22);
      v24 = *v16;
      (*v16)(v22, v8);
      v24(v20, v8);
      if ((v23 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v17 = &v33[v29];
        v18 = v32 - 1;
        v19 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v25 = *v36;
      v26 = v38;
      (*v36)(v38, v19, v8);
      swift_arrayInitWithTakeFrontToBack();
      v25(v17, v26, v8);
      v17 += v35;
      v19 += v35;
      if (__CFADD__(v18++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1005FDF80(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v119 = a1;
  v9 = type metadata accessor for AudioVariant();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v122 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v130 = &v115 - v12;
  __chkstk_darwin();
  v136 = &v115 - v13;
  v14 = __chkstk_darwin();
  v135 = &v115 - v15;
  v16 = a3[1];
  if (v16 < 1)
  {
    v18 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v119;
    if (!*v119)
    {
      goto LABEL_136;
    }

    a4 = v18;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v109 = a4;
    }

    else
    {
LABEL_130:
      v109 = sub_10059F01C(a4);
    }

    v110 = v6;
    v138 = v109;
    a4 = *(v109 + 2);
    if (a4 >= 2)
    {
      v111 = v10;
      v10 = a3;
      a3 = v111;
      while (*v10)
      {
        v112 = *&v109[16 * a4];
        v113 = v109;
        v6 = *&v109[16 * a4 + 24];
        sub_1005FE96C(*v10 + a3[9] * v112, (*v10 + a3[9] * *&v109[16 * a4 + 16]), *v10 + a3[9] * v6, v5);
        if (v110)
        {
          goto LABEL_107;
        }

        if (v6 < v112)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v113 = sub_10059F01C(v113);
        }

        if (a4 - 2 >= *(v113 + 2))
        {
          goto LABEL_124;
        }

        v114 = &v113[16 * a4];
        *v114 = v112;
        *(v114 + 1) = v6;
        v138 = v113;
        sub_10059EF90(a4 - 1);
        v109 = v138;
        a4 = *(v138 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_134;
    }

LABEL_107:

    return;
  }

  v17 = 0;
  v133 = (v10 + 1);
  v134 = v10 + 2;
  v132 = (v10 + 4);
  v18 = _swiftEmptyArrayStorage;
  v120 = a3;
  v118 = a4;
  v137 = v9;
  while (1)
  {
    v19 = v17;
    v123 = v18;
    if (v17 + 1 >= v16)
    {
      v30 = v17 + 1;
    }

    else
    {
      v128 = v16;
      v117 = v6;
      v125 = *a3;
      v20 = v125;
      v21 = v10[9];
      v5 = v125 + v21 * (v17 + 1);
      v22 = v10[2];
      v23 = v135;
      v22(v135, v5, v9, v14);
      v24 = v20 + v21 * v19;
      v25 = v136;
      v127 = v22;
      (v22)(v136, v24, v9);
      LODWORD(v129) = static AudioVariant.< infix(_:_:)(v23, v25);
      v26 = v9;
      v27 = v10[1];
      v27(v25, v26);
      v126 = v27;
      v27(v23, v26);
      v116 = v19;
      v28 = v19 + 2;
      v131 = v21;
      v29 = v125 + v21 * (v19 + 2);
      while (1)
      {
        v30 = v128;
        if (v128 == v28)
        {
          break;
        }

        v31 = v10;
        v32 = v135;
        v33 = v137;
        v34 = v127;
        (v127)(v135, v29, v137);
        v35 = v136;
        v34(v136, v5, v33);
        v36 = static AudioVariant.< infix(_:_:)(v32, v35) & 1;
        v37 = v126;
        (v126)(v35, v33);
        v38 = v32;
        v10 = v31;
        v37(v38, v33);
        ++v28;
        v29 += v131;
        v5 += v131;
        if ((v129 & 1) != v36)
        {
          v30 = v28 - 1;
          break;
        }
      }

      a3 = v120;
      v18 = v123;
      v6 = v117;
      a4 = v118;
      v9 = v137;
      v19 = v116;
      if (v129)
      {
        if (v30 < v116)
        {
          goto LABEL_127;
        }

        if (v116 < v30)
        {
          v115 = v10;
          v39 = v131 * (v30 - 1);
          v40 = v30 * v131;
          v41 = v30;
          v42 = v116;
          v43 = v116 * v131;
          do
          {
            if (v42 != --v41)
            {
              v45 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v46 = v30;
              v5 = &v45[v43];
              v129 = *v132;
              (v129)(v122, &v45[v43], v137, v18);
              if (v43 < v39 || v5 >= &v45[v40])
              {
                v44 = v137;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v44 = v137;
                if (v43 != v39)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v129(&v45[v39], v122, v44);
              a3 = v120;
              v18 = v123;
              v30 = v46;
            }

            ++v42;
            v39 -= v131;
            v40 -= v131;
            v43 += v131;
          }

          while (v42 < v41);
          v6 = v117;
          a4 = v118;
          v10 = v115;
          v9 = v137;
          v19 = v116;
        }
      }
    }

    v47 = a3[1];
    if (v30 < v47)
    {
      if (__OFSUB__(v30, v19))
      {
        goto LABEL_126;
      }

      if (v30 - v19 < a4)
      {
        if (__OFADD__(v19, a4))
        {
          goto LABEL_128;
        }

        if ((v19 + a4) >= v47)
        {
          v48 = a3[1];
        }

        else
        {
          v48 = v19 + a4;
        }

        if (v48 < v19)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v30 != v48)
        {
          break;
        }
      }
    }

    v49 = v30;
    if (v30 < v19)
    {
      goto LABEL_125;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v18 = v123;
    }

    else
    {
      v18 = sub_100498FCC(0, *(v123 + 2) + 1, 1, v123);
    }

    a4 = *(v18 + 2);
    v50 = *(v18 + 3);
    v5 = a4 + 1;
    if (a4 >= v50 >> 1)
    {
      v18 = sub_100498FCC((v50 > 1), a4 + 1, 1, v18);
    }

    *(v18 + 2) = v5;
    v51 = &v18[16 * a4];
    *(v51 + 4) = v19;
    *(v51 + 5) = v49;
    v52 = *v119;
    if (!*v119)
    {
      goto LABEL_135;
    }

    v124 = v49;
    if (a4)
    {
      while (1)
      {
        v53 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v54 = *(v18 + 4);
          v55 = *(v18 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_52:
          if (v57)
          {
            goto LABEL_114;
          }

          v70 = &v18[16 * v5];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_117;
          }

          v76 = &v18[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_121;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v80 = &v18[16 * v5];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_66:
        if (v75)
        {
          goto LABEL_116;
        }

        v83 = &v18[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_119;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v53 - 1;
        if (v53 - 1 >= v5)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v91 = v18;
        v92 = *&v18[16 * a4 + 32];
        v5 = *&v18[16 * v53 + 40];
        sub_1005FE96C(*a3 + v10[9] * v92, (*a3 + v10[9] * *&v18[16 * v53 + 32]), *a3 + v10[9] * v5, v52);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v92)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = sub_10059F01C(v91);
        }

        if (a4 >= *(v91 + 2))
        {
          goto LABEL_111;
        }

        v93 = &v91[16 * a4];
        *(v93 + 4) = v92;
        *(v93 + 5) = v5;
        v138 = v91;
        sub_10059EF90(v53);
        v18 = v138;
        v5 = *(v138 + 2);
        v9 = v137;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v18[16 * v5 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_112;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_113;
      }

      v65 = &v18[16 * v5];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_115;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_118;
      }

      if (v69 >= v61)
      {
        v87 = &v18[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_122;
        }

        if (v56 < v90)
        {
          v53 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v16 = a3[1];
    v17 = v124;
    a4 = v118;
    if (v124 >= v16)
    {
      goto LABEL_95;
    }
  }

  v117 = v6;
  v94 = *a3;
  v95 = v10[9];
  v115 = v10;
  v131 = v10[2];
  v96 = v94 + v95 * (v30 - 1);
  v97 = -v95;
  v116 = v19;
  v98 = (v19 - v30);
  v129 = v94;
  v121 = v95;
  v5 = v94 + v30 * v95;
  v124 = v48;
LABEL_85:
  v127 = v96;
  v128 = v30;
  v125 = v5;
  v126 = v98;
  v99 = v96;
  while (1)
  {
    v100 = v135;
    v101 = v131;
    (v131)(v135, v5, v9, v18);
    v102 = v136;
    v101(v136, v99, v137);
    v103 = static AudioVariant.< infix(_:_:)(v100, v102);
    a4 = v133;
    v104 = *v133;
    v105 = v102;
    v9 = v137;
    (*v133)(v105, v137);
    v104(v100, v9);
    if ((v103 & 1) == 0)
    {
LABEL_84:
      v30 = v128 + 1;
      v96 = &v127[v121];
      v98 = v126 - 1;
      v5 = v125 + v121;
      v49 = v124;
      if (v128 + 1 != v124)
      {
        goto LABEL_85;
      }

      v6 = v117;
      a3 = v120;
      v10 = v115;
      v19 = v116;
      if (v124 < v116)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v129)
    {
      break;
    }

    a4 = v132;
    v106 = *v132;
    v107 = v130;
    (*v132)(v130, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    v106(v99, v107, v9);
    v99 += v97;
    v5 += v97;
    if (__CFADD__(v98++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

void sub_1005FE96C(unint64_t a1, char *a2, unint64_t a3, char *a4)
{
  v55 = type metadata accessor for AudioVariant();
  v8 = *(v55 - 8);
  __chkstk_darwin();
  v53 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v52 = &v43 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (&a2[-a1] == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v54 = a3;
  v14 = &a2[-a1] / v12;
  v58 = a1;
  v57 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || &a2[v16] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = &a4[v16];
    if (v16 < 1)
    {
      v31 = &a4[v16];
    }

    else
    {
      v28 = -v12;
      v47 = (v8 + 8);
      v48 = (v8 + 16);
      v29 = &a4[v16];
      v30 = v54;
      v31 = v27;
      v45 = a1;
      v46 = a4;
      v49 = -v12;
      do
      {
        v43 = v31;
        v32 = a2;
        v33 = &a2[v28];
        v50 = v32;
        v51 = v33;
        while (1)
        {
          if (v32 <= a1)
          {
            v58 = v32;
            v56 = v43;
            goto LABEL_59;
          }

          v35 = v30;
          v44 = v31;
          v54 = v30 + v28;
          v36 = &v29[v28];
          v37 = *v48;
          v38 = v52;
          v39 = v55;
          v40 = v29;
          (*v48)(v52, v36, v55);
          v41 = v53;
          (v37)(v53, v33, v39);
          LOBYTE(v37) = static AudioVariant.< infix(_:_:)(v38, v41);
          v42 = *v47;
          (*v47)(v41, v39);
          v42(v38, v39);
          if (v37)
          {
            break;
          }

          v31 = v36;
          v30 = v54;
          if (v35 < v40 || v54 >= v40)
          {
            swift_arrayInitWithTakeFrontToBack();
            v33 = v51;
            a1 = v45;
          }

          else
          {
            v33 = v51;
            a1 = v45;
            if (v35 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v29 = v36;
          v34 = v36 > v46;
          v28 = v49;
          v32 = v50;
          if (!v34)
          {
            a2 = v50;
            goto LABEL_58;
          }
        }

        v43 = v40;
        v30 = v54;
        if (v35 < v50 || v54 >= v50)
        {
          a2 = v51;
          swift_arrayInitWithTakeFrontToBack();
          v31 = v44;
          a1 = v45;
          v28 = v49;
        }

        else
        {
          a2 = v51;
          v31 = v44;
          a1 = v45;
          v28 = v49;
          if (v35 != v50)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v29 = v43;
      }

      while (v43 > v46);
    }

LABEL_58:
    v58 = a2;
    v56 = v31;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v51 = &a4[v15];
    v56 = &a4[v15];
    if (v15 >= 1 && a2 < v54)
    {
      v49 = *(v8 + 16);
      v50 = (v8 + 16);
      v47 = v12;
      v48 = (v8 + 8);
      do
      {
        v18 = v52;
        v19 = v55;
        v20 = v49;
        (v49)(v52, a2, v55);
        v21 = a2;
        v22 = v53;
        v20(v53, a4, v19);
        v23 = static AudioVariant.< infix(_:_:)(v18, v22);
        v24 = *v48;
        (*v48)(v22, v19);
        v24(v18, v19);
        if (v23)
        {
          v25 = v47;
          a2 = &v47[v21];
          if (a1 < v21 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v25 = v47;
          v26 = &v47[a4];
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v21;
          }

          else
          {
            a2 = v21;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v57 = v26;
          a4 = &v25[a4];
        }

        a1 += v25;
        v58 = a1;
      }

      while (a4 < v51 && a2 < v54);
    }
  }

LABEL_59:
  sub_10085E2A4(&v58, &v57, &v56);
}

uint64_t sub_1005FEEFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011984F8, &qword_100ED70E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1005FEF6C()
{
  result = qword_101198510;
  if (!qword_101198510)
  {
    sub_1001109D0(&qword_101198500, &qword_100ED70F0);
    sub_1005FF024();
    sub_100020674(&unk_10118A590, &qword_10119A2F0, &unk_100EC4E40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198510);
  }

  return result;
}

unint64_t sub_1005FF024()
{
  result = qword_101198518;
  if (!qword_101198518)
  {
    sub_1001109D0(&qword_1011984F8, &qword_100ED70E8);
    sub_1005FF0DC();
    sub_100020674(&unk_1011914B0, &qword_101184D00, &qword_100EC11B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198518);
  }

  return result;
}

unint64_t sub_1005FF0DC()
{
  result = qword_101198520;
  if (!qword_101198520)
  {
    sub_1001109D0(&qword_101198508, &qword_100ED70F8);
    sub_1005FF194();
    sub_100020674(&qword_101198550, &qword_101198558, &qword_100ED7170, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198520);
  }

  return result;
}

unint64_t sub_1005FF194()
{
  result = qword_101198528;
  if (!qword_101198528)
  {
    sub_1001109D0(&qword_101198530, &qword_100ED7160);
    sub_1005FF218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198528);
  }

  return result;
}

unint64_t sub_1005FF218()
{
  result = qword_101198538;
  if (!qword_101198538)
  {
    sub_1001109D0(&qword_101198540, &qword_100ED7168);
    sub_10024E988();
    sub_1005FF2D4(&qword_101198548, _s8MetadataV13AlbumMetadataVMa, &unk_100ED71B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198538);
  }

  return result;
}

uint64_t sub_1005FF2D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005FF33C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005FF3A4(uint64_t a1)
{
  v2 = _s8MetadataV13AlbumMetadataVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1005FF400()
{
  result = qword_101198570;
  if (!qword_101198570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198570);
  }

  return result;
}

double sub_1005FF454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }

  return result;
}

void sub_1005FF4C4(uint64_t a1)
{
  sub_1005FF588(319);
  if (v1 <= 0x3F)
  {
    sub_1005FB298(319, &qword_1011891F0, &unk_1011891F8, qword_100EDB130);
    if (v2 <= 0x3F)
    {
      sub_100402A50(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1005FF588(uint64_t a1)
{
  if (!qword_1011985E0)
  {
    type metadata accessor for AudioVariant();
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_1011985E0);
    }
  }
}

unint64_t sub_1005FF5E0()
{
  result = qword_101198618;
  if (!qword_101198618)
  {
    sub_1001109D0(&qword_101198620, &qword_100ED71B0);
    sub_1005FEF6C();
    sub_1005FF2D4(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198618);
  }

  return result;
}

double sub_1005FF6B8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1005FF6D8()
{
  result = qword_101198650;
  if (!qword_101198650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198650);
  }

  return result;
}

id sub_1005FF72C()
{
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v1 = [v5 cellForItemAtIndexPath:isa];

  if (v1)
  {
    v2 = v1;
    v3 = UIView.findPresentationSourceView<A>(id:)();

    if (v3)
    {
      return v3;
    }
  }

  return v5;
}

uint64_t sub_1005FF7FC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_10010FC20(&qword_1011987C0, &qword_100ED7420);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v11 = &v19[-v10];
  __chkstk_darwin();
  v13 = &v19[-v12];
  __chkstk_darwin();
  v15 = &v19[-v14];
  v16 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v16 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v19[16] = v16 == 0;
  v20 = a1;
  v21 = a2;
  sub_10010FC20(&qword_1011987C8, &qword_100ED7428);
  sub_1006145B8();
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.horizontal.getter();
  UIHostingConfiguration.margins(_:_:)();
  v17 = *(v7 + 8);
  v17(v9, v6);
  static Edge.Set.bottom.getter();
  UIHostingConfiguration.margins(_:_:)();
  v17(v11, v6);
  static Edge.Set.top.getter();
  UIHostingConfiguration.margins(_:_:)();
  v17(v13, v6);
  v22 = static Color.clear.getter();
  a3[3] = sub_10010FC20(&qword_1011987E8, &unk_100ED7440);
  a3[4] = sub_100020674(&qword_1011987F0, &qword_1011987E8, &unk_100ED7440, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
  sub_10001C8B8(a3);
  UIHostingConfiguration.background<A>(_:)();

  return (v17)(v15, v6);
}

uint64_t sub_1005FFADC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v3 = type metadata accessor for AccessibilityTraits();
  v62 = *(v3 - 8);
  v63 = v3;
  __chkstk_darwin();
  v61 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v58 = *(v5 - 8);
  v59 = v5;
  __chkstk_darwin();
  v57 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DynamicTypeSize();
  v51 = *(v52 - 8);
  __chkstk_darwin();
  v8 = (&v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_101198AD8, &qword_100ED7628);
  __chkstk_darwin();
  v10 = &v50 - v9;
  v11 = sub_10010FC20(&qword_101198AE0, &qword_100ED7630) - 8;
  __chkstk_darwin();
  v13 = &v50 - v12;
  v14 = sub_10010FC20(&qword_101198AE8, &qword_100ED7638);
  __chkstk_darwin();
  v16 = &v50 - v15;
  v17 = sub_10010FC20(&qword_101198AF0, &qword_100ED7640);
  v18 = *(v17 - 8);
  v54 = v17;
  v55 = v18;
  __chkstk_darwin();
  v20 = &v50 - v19;
  v56 = sub_10010FC20(&qword_101198AF8, &qword_100ED7648);
  __chkstk_darwin();
  v22 = &v50 - v21;
  v60 = sub_10010FC20(&qword_101198B00, &qword_100ED7650);
  __chkstk_darwin();
  v50 = &v50 - v23;
  *v10 = static HorizontalAlignment.leading.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v24 = sub_10010FC20(&qword_101198B08, &qword_100ED7658);
  sub_1006001F0(v1, &v10[*(v24 + 44)]);
  v53 = _s8GridCellVMa(0);
  sub_10056CABC(v8);
  v25 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v51 + 8))(v8, v52);
  if (v25)
  {
    v26 = 2;
  }

  else
  {
    v26 = 1;
  }

  KeyPath = swift_getKeyPath();
  sub_10003D17C(v10, v13, &qword_101198AD8, &qword_100ED7628);
  v28 = &v13[*(v11 + 44)];
  *v28 = KeyPath;
  *(v28 + 1) = v26;
  v28[16] = 0;
  v29 = static Font.footnote.getter();
  v30 = swift_getKeyPath();
  sub_10003D17C(v13, v16, &qword_101198AE0, &qword_100ED7630);
  v31 = &v16[*(v14 + 36)];
  *v31 = v30;
  v31[1] = v29;
  v32 = v57;
  static AccessibilityChildBehavior.combine.getter();
  v33 = sub_10061528C();
  View.accessibilityElement(children:)();
  (*(v58 + 8))(v32, v59);
  sub_1000095E8(v16, &qword_101198AE8, &qword_100ED7638);
  v34 = v61;
  static AccessibilityTraits.isButton.getter();
  v65 = v14;
  v66 = v33;
  swift_getOpaqueTypeConformance2();
  v35 = v54;
  View.accessibilityAddTraits(_:)();
  (*(v62 + 8))(v34, v63);
  (*(v55 + 8))(v20, v35);
  v36 = AccessibilityIdentifier.libraryGridCell.unsafeMutableAddressor();
  v37 = *v36;
  v38 = v36[1];
  v39 = v36[2];
  v40 = v36[3];
  v41 = sub_100615428();

  v42 = v50;
  View.accessibilityIdentifier(_:)(v37, v38, v39, v40, v56, v41);

  sub_1000095E8(v22, &qword_101198AF8, &qword_100ED7648);
  sub_10010FC20(&qword_10118F1F8, &unk_100ED76C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBDC20;
  v44 = v53;
  v45 = (v2 + *(v53 + 28));
  v46 = v45[1];
  *(inited + 32) = *v45;
  *(inited + 40) = v46;
  v47 = (v2 + *(v44 + 32));
  v48 = v47[1];
  *(inited + 48) = *v47;
  *(inited + 56) = v48;

  static Text.compact(_:)(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
  swift_arrayDestroy();
  sub_100615520();
  View.accessibilityInputLabels(_:)();

  return sub_1000095E8(v42, &qword_101198B00, &qword_100ED7650);
}

uint64_t sub_1006001F0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v249 = a2;
  v214 = sub_10010FC20(&qword_101184C80, &qword_100EC0810);
  __chkstk_darwin();
  v213 = &v209 - v3;
  sub_10010FC20(&qword_101198B38, &qword_100ED76D0);
  __chkstk_darwin();
  v212 = &v209 - v4;
  v246 = sub_10010FC20(&qword_101198B40, &qword_100ED76D8);
  v245 = *(v246 - 8);
  __chkstk_darwin();
  v211 = &v209 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v210 = &v209 - v6;
  sub_10010FC20(&qword_101198B48, &unk_100ED76E0);
  __chkstk_darwin();
  v248 = &v209 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v209 - v8;
  sub_10010FC20(&qword_1011831D0, &unk_100EC4CD0);
  __chkstk_darwin();
  v228 = &v209 - v10;
  sub_10010FC20(&unk_10118D2F0, &unk_100EBCE10);
  __chkstk_darwin();
  v227 = &v209 - v11;
  v238 = type metadata accessor for Text.Suffix();
  v236 = *(v238 - 8);
  __chkstk_darwin();
  v233 = &v209 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = sub_10010FC20(&qword_101189260, &qword_100EC4DB0);
  v234 = *(v237 - 8);
  __chkstk_darwin();
  v232 = &v209 - v13;
  v229 = sub_10010FC20(&qword_101198B50, &qword_100EDE3F0);
  __chkstk_darwin();
  v231 = &v209 - v14;
  v230 = sub_10010FC20(&qword_101198B58, &qword_100ED76F0);
  __chkstk_darwin();
  v235 = &v209 - v15;
  v239 = sub_10010FC20(&qword_101198B60, &qword_100ED76F8);
  __chkstk_darwin();
  v240 = &v209 - v16;
  sub_10010FC20(&qword_101198B68, &qword_100ED7700);
  __chkstk_darwin();
  v244 = &v209 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v253 = &v209 - v18;
  v19 = sub_10010FC20(&qword_101198B70, &qword_100ED7708);
  __chkstk_darwin();
  v21 = &v209 - v20;
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v23 = &v209 - v22;
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v25 = &v209 - v24;
  v26 = sub_10010FC20(&qword_101198B78, &qword_100ED7710);
  __chkstk_darwin();
  v28 = &v209 - v27;
  v224 = sub_10010FC20(&qword_101198B80, &qword_100ED7718);
  v221 = *(v224 - 8);
  __chkstk_darwin();
  v220 = &v209 - v29;
  v252 = sub_10010FC20(&qword_101198B88, &qword_100ED7720);
  v223 = *(v252 - 8);
  __chkstk_darwin();
  v222 = &v209 - v30;
  v226 = sub_10010FC20(&qword_101198B90, &qword_100ED7728);
  v225 = *(v226 - 8);
  __chkstk_darwin();
  v251 = &v209 - v31;
  v243 = sub_10010FC20(&qword_101198B98, &qword_100ED7730);
  v242 = *(v243 - 8);
  __chkstk_darwin();
  v241 = &v209 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v254 = &v209 - v33;
  v255 = a1;
  sub_1000089F8(a1, v23, &unk_10118A5E0, &unk_100EBCD90);
  v34 = type metadata accessor for ArtworkImage.ViewModel(0);
  v35 = (*(*(v34 - 8) + 48))(v23, 1, v34);
  v247 = v9;
  if (v35 == 1)
  {
    sub_1000095E8(v23, &unk_10118A5E0, &unk_100EBCD90);
    v36 = type metadata accessor for Artwork();
    (*(*(v36 - 8) + 56))(v25, 1, 1, v36);
  }

  else
  {
    v37 = type metadata accessor for Artwork();
    v38 = *(v37 - 8);
    (*(v38 + 16))(v25, v23, v37);
    sub_100615BE4(v23, type metadata accessor for ArtworkImage.ViewModel);
    (*(v38 + 56))(v25, 0, 1, v37);
  }

  v39 = sub_100615604(v25);
  sub_1000095E8(v25, &unk_101188920, &qword_100EBCC50);
  v40 = objc_opt_self();
  v41 = &selRef_systemFillColor;
  if ((v39 & 1) == 0)
  {
    v41 = &selRef_clearColor;
  }

  v42 = [v40 *v41];
  v218 = Color.init(_:)();
  v43 = _s8GridCellVMa(0);
  v44 = *(v43 + 24);
  v45 = v43;
  v250 = v43;
  v46 = v255;
  v217 = *(v255 + v44);
  v216 = static Alignment.center.getter();
  v215 = v47;
  v48 = &v28[*(v26 + 36)];
  v49 = (v46 + *(v45 + 20));
  v219 = v26;
  v50 = *v49;
  v51 = v49[1];
  v52 = v49[2];
  v53 = v28;
  v54 = type metadata accessor for ArtworkImage.Info(0);
  v55 = v54[5];
  v56 = (v46 + v54[7]);
  v57 = *v56;
  *v264 = v56[1];
  *&v264[10] = *(v56 + 26);
  v263 = v57;
  static ArtworkImage.with(_:gridPreviewViewModel:gridPreviewVariant:placeholder:size:)(v46, v50, v51, v52, 1, v46 + v55, &v263, v21);
  v58 = v46 + v54[6];
  v59 = *v58;
  LOBYTE(v58) = *(v58 + 8);
  v60 = &v21[*(v19 + 36)];
  *v60 = v59;
  *(v60 + 4) = v58;
  v61 = AccessibilityIdentifier.libraryGridCellArtwork.unsafeMutableAddressor();
  v62 = *v61;
  v63 = v61[1];
  v65 = v61[2];
  v64 = v61[3];
  v66 = sub_100615888();

  View.accessibilityIdentifier(_:)(v62, v63, v65, v64, v19, v66);

  sub_1000095E8(v21, &qword_101198B70, &qword_100ED7708);
  v67 = &v48[*(sub_10010FC20(&qword_101198BA8, &qword_100ED7738) + 36)];
  v68 = v215;
  *v67 = v216;
  v67[1] = v68;
  v69 = v217;
  *v53 = v218;
  *(v53 + 8) = v69;
  *(v53 + 16) = 0;
  v70 = v255;
  v71 = v255 + v54[8];
  v73 = *v71;
  v72 = *(v71 + 8);
  v74 = *(v71 + 16);
  v75 = sub_10061592C();
  v76 = v220;
  v77 = v219;
  View.corner(_:)(v73, v72, v74, v219, v75);
  sub_1000095E8(v53, &qword_101198B78, &qword_100ED7710);
  v78 = Border.artwork.unsafeMutableAddressor();
  v79 = *v78;
  v80 = *(v78 + 1);
  v81 = *(v78 + 16);

  *&v260 = v77;
  *(&v260 + 1) = v75;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v83 = v222;
  v84 = v224;
  View.border(_:corner:)(v79, v81, v73, v72, v74, v224, OpaqueTypeConformance2, v80);

  (*(v221 + 8))(v76, v84);
  *&v260 = 0xD000000000000019;
  *(&v260 + 1) = 0x8000000100E52630;
  v256 = v84;
  v257 = OpaqueTypeConformance2;
  v85 = swift_getOpaqueTypeConformance2();
  v86 = v252;
  View.presentationSource<A>(id:)();
  (*(v223 + 8))(v83, v86);
  v87 = v250;
  if (*(v70 + *(v250 + 44)) == 1)
  {
    static Color.accentColor.getter();
  }

  else
  {
    static Color.clear.getter();
  }

  UIScreen.Dimensions.size.getter();
  v89 = v88;
  v91 = v90;
  v93 = v92;
  *&v260 = v252;
  *(&v260 + 1) = &type metadata for String;
  *&v261 = v85;
  *(&v261 + 1) = &protocol witness table for String;
  v94 = swift_getOpaqueTypeConformance2();
  v95 = v93;
  v96 = v72;
  v97 = v226;
  v98 = v251;
  View.border(_:corner:)(v89, v95, v73, v96, v74, v226, v94, v91);

  (*(v225 + 8))(v98, v97);
  v99 = v87;
  v100 = (v255 + *(v87 + 28));
  v101 = v255;
  v102 = v100[1];
  *&v260 = *v100;
  *(&v260 + 1) = v102;
  v103 = sub_100009838();

  v223 = v103;
  v104 = Text.init<A>(_:)();
  v106 = v105;
  v108 = v107;
  static Font.Weight.medium.getter();
  v109 = Text.fontWeight(_:)();
  v251 = v109;
  v111 = v110;
  v226 = v110;
  v113 = v112;
  v115 = v114;
  v252 = v114;
  sub_10011895C(v104, v106, v108 & 1);

  *&v260 = v109;
  *(&v260 + 1) = v111;
  LODWORD(v225) = v113 & 1;
  LOBYTE(v261) = v113 & 1;
  *(&v261 + 1) = v115;
  v116 = v227;
  sub_1000089F8(v101 + *(v99 + 40), v227, &unk_10118D2F0, &unk_100EBCE10);
  v117 = TextBadge.init(for:isPlayable:)(v116, 1);
  v118 = TextBadge.view.getter(v117);
  v120 = v119;
  LODWORD(v227) = v121;
  v224 = v122;
  LODWORD(v106) = *(v101 + *(v99 + 36));
  v123 = type metadata accessor for MusicFavoriteStatus();
  v124 = *(v123 - 8);
  v125 = &enum case for MusicFavoriteStatus.favorited(_:);
  if (!v106)
  {
    v125 = &enum case for MusicFavoriteStatus.neutral(_:);
  }

  v126 = v228;
  (*(*(v123 - 8) + 104))(v228, *v125, v123);
  (*(v124 + 56))(v126, 0, 1, v123);
  v127 = TextBadge.init(for:)(v126);
  v128 = TextBadge.view.getter(v127);
  v130 = v129;
  v132 = v131;
  v133 = static Text.+ infix(_:_:)();
  v135 = v134;
  LOBYTE(v126) = v136;
  sub_10011895C(v128, v130, v132 & 1);

  sub_10011895C(v118, v120, v227 & 1);

  v137 = v233;
  static Text.Suffix.alwaysVisible(_:)();
  sub_10011895C(v133, v135, v126 & 1);

  v138 = v232;
  View.textSuffix(_:)();
  (*(v236 + 8))(v137, v238);
  sub_10011895C(v251, v226, v225);

  LODWORD(v137) = static HierarchicalShapeStyle.primary.getter();
  v139 = v231;
  (*(v234 + 32))(v231, v138, v237);
  *&v139[*(v229 + 36)] = v137;
  LOBYTE(v137) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v141 = v140;
  v143 = v142;
  v145 = v144;
  v147 = v146;
  v148 = v139;
  v149 = v235;
  sub_10003D17C(v148, v235, &qword_101198B50, &qword_100EDE3F0);
  v150 = v149 + *(v230 + 36);
  *v150 = v137;
  *(v150 + 8) = v141;
  *(v150 + 16) = v143;
  *(v150 + 24) = v145;
  *(v150 + 32) = v147;
  *(v150 + 40) = 0;
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v151 = v240;
  sub_10003D17C(v149, v240, &qword_101198B58, &qword_100ED76F0);
  v152 = v239;
  v153 = (v151 + *(v239 + 36));
  v154 = v261;
  *v153 = v260;
  v153[1] = v154;
  v153[2] = v262;
  v155 = AccessibilityIdentifier.libraryGridCellTitle.unsafeMutableAddressor();
  v156 = *v155;
  v157 = v155[1];
  v158 = v155[2];
  v159 = v155[3];
  v160 = sub_1006159E4();

  View.accessibilityIdentifier(_:)(v156, v157, v158, v159, v152, v160);

  sub_1000095E8(v151, &qword_101198B60, &qword_100ED76F8);
  v161 = (v255 + *(v250 + 32));
  v162 = v161[1];
  if (v162)
  {
    v255 = *v161;
    v256 = v255;
    v257 = v162;

    v163 = Text.init<A>(_:)();
    v165 = v164;
    v167 = v166;
    LODWORD(v256) = static HierarchicalShapeStyle.secondary.getter();
    v168 = Text.foregroundStyle<A>(_:)();
    v170 = v169;
    v172 = v171;
    v174 = v173;
    v252 = v173;
    sub_10011895C(v163, v165, v167 & 1);

    v256 = v168;
    v257 = v170;
    LOBYTE(v165) = v172 & 1;
    v258 = v172 & 1;
    v259 = v174;
    v175 = AccessibilityIdentifier.libraryGridCellSubtitle.unsafeMutableAddressor();
    v176 = *v175;
    v177 = v175[1];
    v178 = v175[2];
    v179 = v175[3];

    v180 = v213;
    View.accessibilityIdentifier(_:)(v176, v177, v178, v179, &type metadata for Text, &protocol witness table for Text);

    sub_10011895C(v168, v170, v165);

    sub_100617E28(&qword_1011860C0, &qword_101184C80, &qword_100EC0810);
    v181 = v212;
    View.accessibilityHidden(_:)();
    sub_1000095E8(v180, &qword_101184C80, &qword_100EC0810);
    v182 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v184 = v183;
    v186 = v185;
    v188 = v187;
    v190 = v189;
    v191 = v211;
    sub_10003D17C(v181, v211, &qword_101198B38, &qword_100ED76D0);
    v192 = v246;
    v193 = v191 + *(v246 + 36);
    *v193 = v182;
    *(v193 + 8) = v184;
    *(v193 + 16) = v186;
    *(v193 + 24) = v188;
    *(v193 + 32) = v190;
    *(v193 + 40) = 0;
    v194 = v191;
    v195 = v210;
    sub_10003D17C(v194, v210, &qword_101198B40, &qword_100ED76D8);
    v196 = v247;
    sub_10003D17C(v195, v247, &qword_101198B40, &qword_100ED76D8);
    v197 = 0;
  }

  else
  {
    v196 = v247;
    v192 = v246;
    v197 = 1;
  }

  (*(v245 + 56))(v196, v197, 1, v192);
  v198 = v242;
  v199 = *(v242 + 16);
  v200 = v241;
  v201 = v243;
  v199(v241, v254, v243);
  v202 = v253;
  v203 = v244;
  sub_1000089F8(v253, v244, &qword_101198B68, &qword_100ED7700);
  v204 = v248;
  sub_1000089F8(v196, v248, &qword_101198B48, &unk_100ED76E0);
  v205 = v249;
  v199(v249, v200, v201);
  v206 = sub_10010FC20(&qword_101198BD8, &unk_100ED7750);
  sub_1000089F8(v203, &v205[*(v206 + 48)], &qword_101198B68, &qword_100ED7700);
  sub_1000089F8(v204, &v205[*(v206 + 64)], &qword_101198B48, &unk_100ED76E0);
  sub_1000095E8(v196, &qword_101198B48, &unk_100ED76E0);
  sub_1000095E8(v202, &qword_101198B68, &qword_100ED7700);
  v207 = *(v198 + 8);
  v207(v254, v201);
  sub_1000095E8(v204, &qword_101198B48, &unk_100ED76E0);
  sub_1000095E8(v203, &qword_101198B68, &qword_100ED7700);
  return (v207)(v200, v201);
}