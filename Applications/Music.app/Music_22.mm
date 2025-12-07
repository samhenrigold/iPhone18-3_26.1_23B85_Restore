uint64_t sub_100299F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a1;
  v4[14] = a4;
  type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[16] = v6;
  v4[17] = v5;

  return _swift_task_switch(sub_100299FE4, v6, v5);
}

uint64_t sub_100299FE4()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v0[5] = &type metadata for Player.VocalsCommand.Prepare;
  v0[6] = &protocol witness table for Player.VocalsCommand.Prepare;
  v0[12] = v1;
  v2 = v1;
  v3 = String.init<A>(reflecting:)();
  v0[10] = &type metadata for Player.CommandIssuerIdentity;
  v0[11] = &protocol witness table for Player.CommandIssuerIdentity;
  v0[7] = v3;
  v0[8] = v4;
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_10029A118;

  return PlaybackController.perform(_:route:intent:issuer:)((v0 + 2), 0, 0, (v0 + 7));
}

uint64_t sub_10029A118(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = v4[16];
    v6 = v4[17];
    v7 = sub_10029A2CC;
  }

  else
  {
    v4[20] = a1;
    sub_1000095E8((v4 + 7), &unk_101183910, &unk_100EBDD00);
    sub_10000959C(v4 + 2);
    v5 = v4[16];
    v6 = v4[17];
    v7 = sub_10029A25C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10029A25C()
{
  v1 = v0[20];
  v2 = v0[13];

  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_10029A2CC()
{

  sub_1000095E8(v0 + 56, &unk_101183910, &unk_100EBDD00);
  sub_10000959C((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

double sub_10029A350(char a1)
{
  v2 = OBJC_IVAR___MusicNowPlayingLyricsViewController_layout;
  if (*(v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_layout) == (a1 & 1))
  {
    return result;
  }

  v3 = v1;
  v21 = *(v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationSliderConstraints);

  sub_100124054(v4);

  sub_100124054(v5);
  v6 = v21;
  v20 = *(v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationSliderSplitViewConstraints);

  sub_100124054(v7);
  v8 = *(v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying);
  if (v8)
  {
    v9 = v8;
    v10 = [v9 tracklist];
    v11 = [v10 playingItem];

    if (v11)
    {
      v12 = [v9 tracklist];
      v13 = [v12 vocalsControlCommand];

      if (v13)
      {
        swift_unknownObjectRelease();
        MPCPlayerResponseItem.hasStoreLyrics.getter();

        goto LABEL_9;
      }
    }
  }

LABEL_9:

  sub_100124054(v14);
  v15 = OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationToggleSlider;
  v16 = *(v3 + OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationToggleSlider);
  if (*(v3 + v2) == 1)
  {
    if (v16)
    {
      v17 = v16;
      VerticalToggleSlider.growAnchorPoint.setter(2);

      if (*(v3 + v15))
      {
        VerticalToggleSlider.interactionScaleFactor.setter(0x3FF8000000000000, 0);
      }
    }

    Array<A>.deactivate()(v21);

    v6 = v20;
  }

  else
  {
    if (v16)
    {
      v18 = v16;
      VerticalToggleSlider.growAnchorPoint.setter(8);

      if (*(v3 + v15))
      {
        VerticalToggleSlider.interactionScaleFactor.setter(0, 1);
      }
    }

    Array<A>.deactivate()(v20);
  }

  Array<A>.activate()(v6);

  return result;
}

uint64_t sub_10029A5CC(uint64_t a1)
{
  v3 = OBJC_IVAR___MusicNowPlayingLyricsViewController_lyricsCompositingFilter;
  swift_beginAccess();
  sub_1002AD930(a1, v1 + v3);
  swift_endAccess();
  v4 = *(v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_container);
  if (v4)
  {
    v5 = [v4 layer];
    sub_1000089F8(v1 + v3, v13, &unk_101183F30, qword_100EBF960);
    v6 = v14;
    if (v14)
    {
      sub_10000954C(v13, v14);
      v7 = *(v6 - 8);
      v8 = __chkstk_darwin();
      v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v7 + 16))(v10, v8);
      v11 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v7 + 8))(v10, v6);
      sub_10000959C(v13);
    }

    else
    {
      v11 = 0;
    }

    [v5 setCompositingFilter:v11];

    swift_unknownObjectRelease();
  }

  return sub_1000095E8(a1, &unk_101183F30, qword_100EBF960);
}

BOOL sub_10029A798(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

BOOL sub_10029A7D8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    v3 = *a2;
    if (*(a1 + 8) == 1)
    {
      if (v2 == 1)
      {
        v4 = *a2;
        if (*a1 == 2)
        {
          if (v4 == 2)
          {
            return 1;
          }
        }

        else
        {
          v7 = (*a1 ^ v3) & 1;
          if (v4 != 2 && v7 == 0)
          {
            return 1;
          }
        }
      }
    }

    else if (v2 == 2 && v3 == 0)
    {
      return 1;
    }

    return 0;
  }

  return !*(a2 + 8);
}

uint64_t sub_10029A850()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v8[4] = sub_1002AC9F4;
  v8[5] = v2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10002BC98;
  v8[3] = &unk_1010A3970;
  v3 = _Block_copy(v8);
  v4 = v0;

  [v1 animateWithDuration:v3 animations:0.25];
  _Block_release(v3);
  sub_1002A24D0();
  sub_10029F54C();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *&v4[OBJC_IVAR___MusicNowPlayingLyricsViewController_state];
    v7 = v4[OBJC_IVAR___MusicNowPlayingLyricsViewController_state + 8];
    sub_1002AC9FC(v6, v4[OBJC_IVAR___MusicNowPlayingLyricsViewController_state + 8]);
    sub_1005E7EF0(v6, v7);
    swift_unknownObjectRelease();
    return sub_1002AC8A4(v6, v7);
  }

  return result;
}

void sub_10029A9A0(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_staticLyricsViewController);
  if (!v2)
  {
    __break(1u);
    goto LABEL_21;
  }

  v3 = [v2 view];
  if (!v3)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v4 = v3;
  v5 = (a1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_state);
  if (*(a1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_state + 8) != 1 || (v6 = 1.0, *v5 != 2))
  {
    v6 = 0.0;
  }

  [v3 setAlpha:v6];

  v7 = *(a1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController);
  if (v5[8] == 1 && *v5 != 2)
  {
    if (v7)
    {
      v9 = [v7 view];
      if (v9)
      {
        v10 = 1.0;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
      return;
    }

    goto LABEL_23;
  }

  if (!v7)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = [v7 view];
  if (!v9)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v10 = 0.0;
LABEL_17:
  v11 = v9;
  [v9 setAlpha:v10];
}

void sub_10029AB40()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  sub_1001D1C24();
  sub_1001D1C78();
  UITraitCollection.subscript.getter();

  v3 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController];
  if (v7 > 1u)
  {
    if (v3)
    {
      v4 = 0.0;
      goto LABEL_6;
    }
  }

  else
  {
    if (v3)
    {
      v4 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_cardHeight];
LABEL_6:
      v5 = *((swift_isaMask & *v3) + 0x1C8);
      v6 = v3;
      v5(v4);

      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_10029AC48(char a1, char a2)
{
  v2[OBJC_IVAR___MusicNowPlayingLyricsViewController_areControlsHidden] = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v2;
  if (a2)
  {
    v6 = objc_allocWithZone(UISpringTimingParameters);
    v7 = v2;
    v8 = 0.0;
    v9 = [v6 initWithMass:1.0 stiffness:300.0 damping:40.0 initialVelocity:{0.0, 0.0}];
    v10 = v9;
    if (a1)
    {
      v11 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:986.0 damping:62.0 initialVelocity:{0.0, 0.0}];
    }

    else
    {
      v11 = v9;
      v8 = 0.15;
    }

    sub_100009F78(0, &unk_101183AE0, UIViewPropertyAnimator_ptr);
    isa = UIViewPropertyAnimator.init(springTimingParameters:)(v11).super.isa;
    v19[4] = sub_1002AD924;
    v19[5] = v5;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 1107296256;
    v19[2] = sub_10002BC98;
    v19[3] = &unk_1010A3DA8;
    v16 = _Block_copy(v19);

    [(objc_class *)isa addAnimations:v16];
    _Block_release(v16);
    [(objc_class *)isa startAnimationAfterDelay:v8];
  }

  else
  {
    if (a1)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 1.0;
    }

    v13 = *&v2[OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationToggleSlider];
    v14 = v2;
    if (v13)
    {
      [v13 setAlpha:v12];
    }

    v17 = *&v2[OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton];
    if (v17)
    {
      [v17 setAlpha:v12];
    }

    v18 = *&v2[OBJC_IVAR___MusicNowPlayingLyricsViewController_tapToRadarButton];
    if (v18)
    {
      [v18 setAlpha:v12];
    }
  }

  sub_1002A51EC();
}

id sub_10029AECC(char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = *(a2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationToggleSlider);
  if (v4)
  {
    [v4 setAlpha:v3];
  }

  v5 = *(a2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton);
  if (v5)
  {
    [v5 setAlpha:v3];
  }

  result = *(a2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_tapToRadarButton);
  if (result)
  {

    return [result setAlpha:v3];
  }

  return result;
}

id sub_10029AF78()
{
  v1 = [objc_opt_self() sharedMonitor];
  [v1 unregisterObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for NowPlayingLyricsViewController(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10029B2D8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v181.receiver = v0;
  v181.super_class = type metadata accessor for NowPlayingLyricsViewController(0);
  objc_msgSendSuper2(&v181, "viewDidLoad");
  LOBYTE(v179[0]) = 6;
  v3 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v3))
  {
    v4 = *LyricsOptionsManager.shared.unsafeMutableAddressor();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = *(*v4 + 224);

    v7 = v6(sub_1002AD9E8, v5);

    *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_optionsObserver] = v7;
  }

  v8 = [v1 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_63;
  }

  v9 = v8;
  v10 = [v8 layer];

  [v10 setAllowsGroupBlending:0];
  [v1 setViewRespectsSystemMinimumLayoutMargins:0];
  v11 = [objc_allocWithZone(UIActivityIndicatorView) init];
  v12 = OBJC_IVAR___MusicNowPlayingLyricsViewController_activityIndicator;
  v13 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_activityIndicator];
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_activityIndicator] = v11;
  v14 = v11;

  if (!v14)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = *&v1[v12];
  if (!v15)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v16 = qword_10117F900;
  v17 = v15;
  if (v16 != -1)
  {
    swift_once();
  }

  [v17 setColor:qword_101219098];

  v18 = *&v1[v12];
  if (!v18)
  {
    goto LABEL_65;
  }

  [v18 setHidesWhenStopped:1];
  v19 = [v1 view];
  if (!v19)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (!*&v1[v12])
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v20 = v19;
  [v19 addSubview:?];

  v21 = [v1 view];
  if (!v21)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v22 = v21;
  [v21 bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31 = [objc_allocWithZone(UIView) initWithFrame:{v24, v26, v28, v30}];
  v32 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_container];
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_container] = v31;
  v33 = v31;

  v34 = [v1 view];
  if (!v34)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v35 = v34;
  v178 = v3;
  UIView.addSubviewAnchoredToBounds(_:useLayoutMarginsGuide:padding:)(v33, 0);

  [v33 setPreservesSuperviewLayoutMargins:1];
  v36 = [v33 layer];
  v37 = OBJC_IVAR___MusicNowPlayingLyricsViewController_lyricsCompositingFilter;
  swift_beginAccess();
  sub_1000089F8(&v1[v37], v179, &unk_101183F30, qword_100EBF960);
  v38 = v180;
  if (v180)
  {
    sub_10000954C(v179, v180);
    v39 = *(v38 - 8);
    v40 = __chkstk_darwin();
    v42 = &v176 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v39 + 16))(v42, v40);
    v43 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v39 + 8))(v42, v38);
    sub_10000959C(v179);
  }

  else
  {
    v43 = 0;
  }

  [v36 setCompositingFilter:v43];

  swift_unknownObjectRelease();
  type metadata accessor for SyncedLyricsViewController(0);
  v44 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v45 = [v44 view];
  if (!v45)
  {
    goto LABEL_70;
  }

  v46 = v45;
  [v45 setMaximumContentSizeCategory:UIContentSizeCategoryLarge];

  v47 = [v44 view];
  if (!v47)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  [v47 setMinimumContentSizeCategory:UIContentSizeCategoryLarge];

  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = *((swift_isaMask & *v44) + 0x270);

  v49(sub_1002AD9A0, v48);

  v50 = OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController;
  v51 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController];
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController] = v44;
  v52 = v44;

  v53 = [v52 view];
  if (!v53)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  [v53 setAlpha:0.0];

  v54 = *&v1[v50];
  if (!v54)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v55 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying];
  if (v55)
  {
    v56 = v54;
    v57 = [v55 tracklist];
    v58 = [v57 playingItem];

    if (v58)
    {
      v59 = [v58 nowPlayingAudioFormat];

      if (v59)
      {
        v60 = [v59 isSpatialized];

        v61 = v60;
        goto LABEL_26;
      }
    }
  }

  else
  {
    v62 = v54;
  }

  v61 = 0;
LABEL_26:
  (*((swift_isaMask & *v54) + 0x180))(v61);

  v63 = *&v1[v50];
  if (!v63)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v64 = [v63 view];
  if (!v64)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v65 = v64;
  UIView.addSubviewAnchoredToBounds(_:useLayoutMarginsGuide:padding:)(v64, 0);

  if (!*&v1[v50])
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  [v1 addChildViewController:?];
  v66 = *&v1[v50];
  if (!v66)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v177 = v52;
  [v66 didMoveToParentViewController:v1];
  v67 = *&v1[v50];
  if (!v67)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v68 = v33;
  v69 = [v67 view];
  if (!v69)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v70 = v69;
  v71 = AccessibilityIdentifier.lyricsSyncedView.unsafeMutableAddressor();
  v72 = *v71;
  v73 = v71[1];
  v74 = v71[2];
  v75 = v71[3];
  sub_100009F78(0, &qword_101181620, UIView_ptr);

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v72, v73, v74, v75);

  type metadata accessor for StaticLyricsContentViewController(0);
  v76 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v77 = OBJC_IVAR___MusicNowPlayingLyricsViewController_staticLyricsViewController;
  v78 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_staticLyricsViewController];
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_staticLyricsViewController] = v76;
  v79 = v76;

  v80 = [v79 view];
  if (!v80)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  [v80 setAlpha:0.0];

  v81 = *&v1[v77];
  if (!v81)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v82 = [v81 view];
  if (!v82)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v83 = v82;
  [v82 setPreservesSuperviewLayoutMargins:1];

  v84 = *&v1[v77];
  if (!v84)
  {
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v85 = v84;
  v86 = [v1 traitCollection];
  v87 = sub_100050078();
  v88 = UITraitCollection.subscript.getter();

  if (v88)
  {
    if (qword_10117F8E8 != -1)
    {
      swift_once();
    }

    v89 = qword_101219080;
  }

  else
  {
    v89 = [objc_opt_self() labelColor];
  }

  v90 = *&v85[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_textColor];
  *&v85[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_textColor] = v89;
  v91 = v89;

  sub_100781F6C();
  v92 = *&v1[v77];
  if (!v92)
  {
    goto LABEL_84;
  }

  v93 = [v92 view];
  if (!v93)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v94 = v93;
  UIView.addSubviewAnchoredToBounds(_:useLayoutMarginsGuide:padding:)(v93, 0);

  if (!*&v1[v77])
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  [v1 addChildViewController:?];
  v95 = *&v1[v77];
  if (!v95)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  [v95 didMoveToParentViewController:v1];
  v96 = *&v1[v77];
  if (!v96)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v97 = [v96 view];
  if (!v97)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v98 = v97;
  v99 = AccessibilityIdentifier.lyricsStaticView.unsafeMutableAddressor();
  v100 = *v99;
  v101 = v99[1];
  v103 = v99[2];
  v102 = v99[3];

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v100, v101, v103, v102);

  v104 = sub_1002A664C();
  v105 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationToggleSlider];
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationToggleSlider] = v104;
  v106 = v104;

  v107 = [v1 view];
  if (!v107)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v108 = v107;
  [v107 addSubview:v106];

  LOBYTE(v179[0]) = 6;
  v109 = v68;
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v178) & 1) == 0)
  {
    goto LABEL_56;
  }

  v110 = v106;
  v111 = [objc_allocWithZone(type metadata accessor for NowPlayingLyricsTranslationButton()) init];
  v112 = UIView.forAutolayout.getter();

  v113 = OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton;
  v114 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton];
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton] = v112;
  v115 = v112;

  v116 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v117 = &v115[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_translationToggleBlock];
  v118 = *&v115[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_translationToggleBlock];
  v119 = *&v115[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_translationToggleBlock + 8];
  *v117 = sub_1002AD9C8;
  v117[1] = v116;

  sub_100020438(v118, v119);

  v120 = *&v1[v113];
  if (!v120)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v121 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v122 = &v120[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_transliterationToggleBlock];
  v123 = *&v120[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_transliterationToggleBlock];
  v124 = *&v120[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_transliterationToggleBlock + 8];
  *v122 = sub_1002AD9D0;
  v122[1] = v121;

  v125 = v120;
  sub_100020438(v123, v124);

  v126 = *&v1[v113];
  if (!v126)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v127 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v128 = &v126[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_menuOpenedBlock];
  v129 = *&v126[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_menuOpenedBlock];
  v130 = *&v126[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_menuOpenedBlock + 8];
  *v128 = sub_1002AD9D8;
  v128[1] = v127;

  v131 = v126;
  sub_100020438(v129, v130);

  v132 = *&v1[v113];
  if (!v132)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v133 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v134 = &v132[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_menuClosedBlock];
  v135 = *&v132[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_menuClosedBlock];
  v136 = *&v132[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_menuClosedBlock + 8];
  *v134 = sub_1002AD9E0;
  v134[1] = v133;

  v137 = v132;
  sub_100020438(v135, v136);

  v138 = *&v1[v113];
  if (!v138)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  [v138 setHidden:1];
  v139 = [v1 view];
  if (!v139)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v106 = v110;
  v140 = *&v1[v113];
  if (v140)
  {
    v141 = v139;
    [v139 insertSubview:v140 belowSubview:v110];

LABEL_56:
    if (*DeviceCapabilities.isInternalInstall.unsafeMutableAddressor() == 1)
    {
      v142 = sub_1002A8BA8();
      v143 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_tapToRadarButton];
      *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_tapToRadarButton] = v142;
      v144 = v142;

      sub_1002AA8E0();
      v145 = [v1 view];
      if (!v145)
      {
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      v146 = v145;
      [v145 addSubview:v144];
    }

    v147 = objc_opt_self();
    v148 = [v147 clearColor];
    v149 = [v148 cgColor];
    v150 = v148;
    if (v149)
    {
      v178 = v106;
      v151 = v149;
      v152 = [v147 whiteColor];
      v153 = [v152 cgColor];
      v154 = v152;
      if (v153)
      {
        v155 = v153;
        v156 = [objc_allocWithZone(CAGradientLayer) init];
        [v109 bounds];
        [v156 setFrame:?];
        sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
        v157 = swift_allocObject();
        *(v157 + 16) = xmmword_100EBEF50;
        type metadata accessor for CGColor(0);
        *(v157 + 32) = v151;
        *(v157 + 56) = v158;
        *(v157 + 64) = v155;
        *(v157 + 88) = v158;
        *(v157 + 96) = v155;
        *(v157 + 152) = v158;
        *(v157 + 120) = v158;
        *(v157 + 128) = v151;
        v159 = v151;
        v160 = v155;
        v161 = v159;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v156 setColors:isa];

        v163 = [v109 layer];
        [v163 setMask:v156];

        v164 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_gradientMaskLayer];
        *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_gradientMaskLayer] = v156;
        v165 = v156;

        sub_10029ECCC();
        sub_10029F940();
        sub_10010FC20(&unk_101182D80, "ʫ\n");
        v166 = swift_allocObject();
        *(v166 + 16) = xmmword_100EBC6B0;
        *(v166 + 32) = &type metadata for HasAnimatedBackgroundTrait;
        *(v166 + 40) = v87;
        UIViewController.registerForTraitChanges<A>(_:handler:)();
        swift_unknownObjectRelease();

        v167 = swift_allocObject();
        *(v167 + 16) = xmmword_100EBDC20;
        v168 = sub_1001D1C24();
        *(v167 + 32) = &type metadata for NowPlayingLayoutTypeTrait;
        *(v167 + 40) = v168;
        *(v167 + 48) = type metadata accessor for UITraitUserInterfaceIdiom();
        *(v167 + 56) = &protocol witness table for UITraitUserInterfaceIdiom;
        UIViewController.registerForTraitChanges<A>(_:handler:)();
        swift_unknownObjectRelease();

        v169 = swift_allocObject();
        swift_unknownObjectWeakInit();
        type metadata accessor for NotificationObserver();
        swift_allocObject();
        *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_backgroundObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneWillDeactivateNotification, 0, 1, 1, sub_1002AD9A8, v169);

        v170 = swift_allocObject();
        swift_unknownObjectWeakInit();
        swift_allocObject();
        *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_didActivateObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneDidActivateNotification, 0, 1, 1, sub_1002AD9B0, v170);

        v171 = UIPresentationControllerPresentationTransitionDidEndNotification;
        v172 = swift_allocObject();
        swift_unknownObjectWeakInit();
        swift_allocObject();
        *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_presentationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v171, 0, 1, 1, sub_1002AD9B8, v172);

        v173 = UIPresentationControllerDismissalTransitionDidEndNotification;
        v174 = swift_allocObject();
        swift_unknownObjectWeakInit();
        swift_allocObject();
        *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_dismissalObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v173, 0, 1, 1, sub_1002AD9C0, v174);

        v175 = [objc_opt_self() sharedMonitor];
        [v175 registerObserver:v1];

        return;
      }

      goto LABEL_92;
    }

LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

LABEL_99:
  __break(1u);
}

void sub_10029C654(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_101189A18, &unk_100EE1DA0);
  __chkstk_darwin();
  v4 = &v31 - v3;
  sub_10010FC20(&unk_101189A00, &unk_100EC5500);
  __chkstk_darwin();
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v31 - v7;
  __chkstk_darwin();
  v10 = &v31 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *&Strong[OBJC_IVAR___MusicNowPlayingLyricsViewController_lyrics];
    if (!v13)
    {

      return;
    }

    v14 = *(*v13 + 312);
    v15 = *v13 + 312;

    v34 = v15;
    v14(v16);
    v17 = type metadata accessor for Lyrics.Transliteration(0);
    v33 = *(v17 - 8);
    v35 = *(v33 + 48);
    if (v35(v10, 1, v17) == 1)
    {

      sub_1000095E8(v10, &unk_101189A00, &unk_100EC5500);
      return;
    }

    v31 = v14;
    v32 = v17;
    sub_1000095E8(v10, &unk_101189A00, &unk_100EC5500);
    v18 = sub_10048C4E4(3, a1);
    v19 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

    v20 = v19(3) & 1;

    if (v18 == v20)
    {
      goto LABEL_13;
    }

    (*(*v13 + 440))(v21);
    v22 = OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController;
    v23 = *&v12[OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController];
    if (v23)
    {
      v24 = *((swift_isaMask & *v23) + 0x3B8);
      v25 = v23;
      v24();

      v26 = v35(v8, 1, v32);
      sub_1000095E8(v8, &unk_101189A00, &unk_100EC5500);
      v27 = *&v12[v22];
      if (v27)
      {
        v28 = *((swift_isaMask & *v27) + 0x3A0);

        v29 = v27;
        v30 = v28();
        if (v26 == 1)
        {
          (*(v33 + 56))(v6, 1, 1, v32);
        }

        else
        {
          v31(v30);
        }

        (*((swift_isaMask & *v29) + 0x4C8))(v13, v4, v6);

        sub_1000095E8(v6, &unk_101189A00, &unk_100EC5500);
        sub_1000095E8(v4, &qword_101189A18, &unk_100EE1DA0);
        sub_1002A24D0();
LABEL_13:

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_10029CB04(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1002A2FDC(a1);
  }
}

void sub_10029CB60(uint64_t a1)
{
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  __chkstk_darwin();
  v2 = (&v41 - v1);
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v4 = &v41 - v3;
  type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin();
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101189A18, &unk_100EE1DA0);
  __chkstk_darwin();
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v41 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v12 = Strong;
  v13 = *(Strong + OBJC_IVAR___MusicNowPlayingLyricsViewController_lyrics);
  if (!v13)
  {

    return;
  }

  v42 = v13;

  v14 = LyricsOptionsManager.shared.unsafeMutableAddressor();
  v15 = OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController;
  v16 = *&v12[OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController];
  if (!v16)
  {
    __break(1u);
    goto LABEL_18;
  }

  v17 = *((swift_isaMask & *v16) + 0x3A0);
  v41 = *v14;

  v18 = v16;
  v17();

  v19 = type metadata accessor for Lyrics.Translation(0);
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v10, 1, v19);
  sub_1000095E8(v10, &qword_101189A18, &unk_100EE1DA0);
  v22 = *&v12[v15];
  if (v21 != 1)
  {
    if (v22)
    {
      (*(v20 + 56))(v8, 1, 1, v19);
      v26 = *((swift_isaMask & *v22) + 0x3A8);
      v27 = v22;
      v26(v8);

      (*(*v41 + 240))(0);
      v25 = 1701079368;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return;
  }

  if (!v22)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v23 = *(*v42 + 288);
  v24 = v22;
  v23();
  (*((swift_isaMask & *v24) + 0x3A8))(v8);

  (*(*v41 + 232))(0);
  v25 = 2003789907;
LABEL_10:
  v28 = v25 | 0x6E61725400000000;
  sub_1002A24D0();
  v29 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v30 = type metadata accessor for URL();
  (*(*(v30 - 8) + 56))(v4, 1, 1, v30);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v31 = v29;
    sub_1005E0230(v2);
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = type metadata accessor for MetricsEvent.Page(0);
    (*(*(v32 - 8) + 56))(v2, 1, 1, v32);
    v33 = v29;
  }

  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:page:snapshotImpressions:)(v28, 0xEF6E6F6974616C73, 5, 55, v4, 0, 0, 6, v6, 0, 0, 0xFF00u, v2, 0);
  v34 = sub_10053771C();
  v36 = v35;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v37 = qword_101218AD0;
  v38 = GroupActivitiesManager.hasJoined.getter();
  v39 = GroupActivitiesManager.participantsCount.getter();
  v40 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v29) + 0xB8))(v6, v34, v36, v38 & 1, v39, *(v37 + v40));

  sub_1002AD498(v6, type metadata accessor for MetricsEvent.Click);
}

void sub_10029D1C4(uint64_t a1)
{
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  __chkstk_darwin();
  v2 = &v44 - v1;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v4 = &v44 - v3;
  type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin();
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101189A00, &unk_100EC5500);
  __chkstk_darwin();
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v44 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v12 = Strong;
  v13 = *(Strong + OBJC_IVAR___MusicNowPlayingLyricsViewController_lyrics);
  if (!v13)
  {

    return;
  }

  v45 = v6;
  v46 = v2;
  v47 = v13;

  v14 = LyricsOptionsManager.shared.unsafeMutableAddressor();
  v15 = OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController;
  v16 = *&v12[OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController];
  if (!v16)
  {
    __break(1u);
    goto LABEL_18;
  }

  v17 = *v14;
  v18 = *((swift_isaMask & *v16) + 0x3B8);

  v19 = v16;
  v18();

  v20 = type metadata accessor for Lyrics.Transliteration(0);
  v21 = *(v20 - 8);
  LODWORD(v18) = (*(v21 + 48))(v10, 1, v20);
  sub_1000095E8(v10, &unk_101189A00, &unk_100EC5500);
  v22 = *&v12[v15];
  if (v18 != 1)
  {
    if (v22)
    {
      (*(v21 + 56))(v8, 1, 1, v20);
      v27 = *((swift_isaMask & *v22) + 0x3C0);
      v28 = v22;
      v27(v8);

      (*(*v17 + 240))(1);
      v25 = "ShowPronunciation";
      v26 = 2;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return;
  }

  if (!v22)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v23 = *(*v47 + 312);
  v24 = v22;
  v23();
  (*((swift_isaMask & *v24) + 0x3C0))(v8);

  v25 = "translationButtonTempAction";
  v26 = 1;
LABEL_10:
  (*(*v17 + 232))(v26);
  sub_1002A24D0();
  v29 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v30 = type metadata accessor for URL();
  (*(*(v30 - 8) + 56))(v4, 1, 1, v30);
  v31 = swift_unknownObjectWeakLoadStrong();
  v32 = v46;
  if (v31)
  {
    v33 = v29;
    sub_1005E0230(v32);
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = type metadata accessor for MetricsEvent.Page(0);
    (*(*(v34 - 8) + 56))(v32, 1, 1, v34);
    v35 = v29;
  }

  v36 = v45;
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:page:snapshotImpressions:)(0xD000000000000011, v25 | 0x8000000000000000, 5, 55, v4, 0, 0, 6, v45, 0, 0, 0xFF00u, v32, 0);
  v37 = sub_10053771C();
  v39 = v38;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v40 = qword_101218AD0;
  v41 = GroupActivitiesManager.hasJoined.getter();
  v42 = GroupActivitiesManager.participantsCount.getter();
  v43 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v29) + 0xB8))(v36, v37, v39, v41 & 1, v42, *(v40 + v43));

  sub_1002AD498(v36, type metadata accessor for MetricsEvent.Click);
}

void sub_10029D830(uint64_t a1)
{
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  __chkstk_darwin();
  v2 = &v22[-v1];
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v4 = &v22[-v3];
  type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin();
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = v9;
      sub_1005E0230(v2);
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = type metadata accessor for MetricsEvent.Page(0);
      (*(*(v12 - 8) + 56))(v2, 1, 1, v12);
      v13 = v9;
    }

    MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:page:snapshotImpressions:)(0x6F4373636972794CLL, 0xEE00736C6F72746ELL, 5, 1, v4, 0, 0, 6, v6, 0, 0, 0xFF00u, v2, 0);
    v14 = sub_10053771C();
    v16 = v15;
    if (qword_10117F600 != -1)
    {
      swift_once();
    }

    v17 = qword_101218AD0;
    v18 = GroupActivitiesManager.hasJoined.getter();
    v19 = GroupActivitiesManager.participantsCount.getter();
    v20 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    (*((swift_isaMask & *v9) + 0xB8))(v6, v14, v16, v18 & 1, v19, *(v17 + v20));

    sub_1002AD498(v6, type metadata accessor for MetricsEvent.Click);
    v21 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 232);

    v21(4);

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1005E8FAC();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_10029DBDC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldIgnoreFullscreenTimer);
      *(v3 + OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldIgnoreFullscreenTimer) = 0;
      if (v4 == 1)
      {
        sub_1005C4F50(4.0);
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_10029DC74(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v7 = Strong;
  Notification.object.getter();
  if (!v21)
  {

    sub_1000095E8(v20, &unk_101183F30, qword_100EBF960);
    return;
  }

  sub_100009F78(0, &qword_101189A30, UIWindowScene_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:

    return;
  }

  v8 = v19;
  v9 = [v7 view];
  if (!v9)
  {
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = [v9 window];

  v12 = [v11 windowScene];
  if (!v12)
  {

    goto LABEL_13;
  }

  v13 = v8;
  v14 = static NSObject.== infix(_:_:)();

  if (v14)
  {
    v15 = Logger.lyrics.unsafeMutableAddressor();
    (*(v3 + 16))(v5, v15, v2);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "UI got backgrounded", v18, 2u);
    }

    (*(v3 + 8))(v5, v2);
    *(v7 + OBJC_IVAR___MusicNowPlayingLyricsViewController_isBackgrounded) = 1;
    sub_1002AAA18();
  }
}

void sub_10029DF2C(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v3 = &v61 - v2;
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v5 = &v61 - v4;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v61 - v10;
  __chkstk_darwin();
  v13 = &v61 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v15 = Strong;
  Notification.object.getter();
  if (!v73)
  {

    sub_1000095E8(v72, &unk_101183F30, qword_100EBF960);
    return;
  }

  sub_100009F78(0, &qword_101189A30, UIWindowScene_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  v68 = v3;
  v69 = v6;
  v70 = v7;
  v16 = v71;
  v17 = [v15 view];
  if (!v17)
  {
    __break(1u);
    return;
  }

  v18 = v17;
  v19 = [v17 window];

  v20 = [v19 windowScene];
  if (!v20)
  {

    return;
  }

  v21 = v16;
  v22 = static NSObject.== infix(_:_:)();

  if ((v22 & 1) == 0)
  {

LABEL_17:
    return;
  }

  v67 = v21;
  v23 = Logger.lyrics.unsafeMutableAddressor();
  v24 = v69;
  v25 = v70;
  v26 = *(v70 + 16);
  v65 = v23;
  v66 = v26;
  (v26)(v13);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "UI got foregrounded", v29, 2u);
    v25 = v70;
  }

  v32 = *(v25 + 8);
  v30 = v25 + 8;
  v31 = v32;
  v32(v13, v24);
  v15[OBJC_IVAR___MusicNowPlayingLyricsViewController_isBackgrounded] = 0;
  Date.init()();
  v33 = type metadata accessor for Date();
  (*(*(v33 - 8) + 56))(v5, 0, 1, v33);
  v34 = OBJC_IVAR___MusicNowPlayingLyricsViewController_lyricsVisibilityStart;
  swift_beginAccess();
  sub_10006B010(v5, &v15[v34], &qword_101188C20, &qword_100EC2030);
  swift_endAccess();
  v35 = *&v15[OBJC_IVAR___MusicNowPlayingLyricsViewController_song];
  if (!v35 || !v15[OBJC_IVAR___MusicNowPlayingLyricsViewController_state + 8] || v15[OBJC_IVAR___MusicNowPlayingLyricsViewController_state + 8] == 1)
  {

    return;
  }

  v36 = &v15[OBJC_IVAR___MusicNowPlayingLyricsViewController_currentLyricsTask];
  v37 = *&v15[OBJC_IVAR___MusicNowPlayingLyricsViewController_currentLyricsTask];
  if (!v37)
  {
    v47 = v35;
    v48 = v69;
LABEL_25:
    v66(v9, v65, v48);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "Making new lyrics request", v53, 2u);
    }

    v31(v9, v48);
    v54 = type metadata accessor for TaskPriority();
    v55 = v68;
    (*(*(v54 - 8) + 56))(v68, 1, 1, v54);
    type metadata accessor for MainActor();
    v21 = v15;
    v56 = static MainActor.shared.getter();
    v57 = swift_allocObject();
    v57[2] = v56;
    v57[3] = &protocol witness table for MainActor;
    v57[4] = v21;
    v58 = sub_1001F4CB8(0, 0, v55, &unk_100EC55E8, v57);

    v59 = *v36;
    v60 = v36[1];
    *v36 = v58;
    v36[1] = v35;
    sub_1002AC974(v59, v60);
    goto LABEL_17;
  }

  v64 = v31;
  v70 = v30;
  v62 = &v15[OBJC_IVAR___MusicNowPlayingLyricsViewController_currentLyricsTask];
  v38 = v36[1];
  v39 = v35;
  sub_1002AC9B4(v37, v38);
  v63 = v37;
  v40 = [v38 identifiers];
  v61 = v39;
  v41 = [v39 identifiers];
  v42 = [v40 intersectsSet:v41];

  if ((v42 & 1) == 0)
  {
    Task.cancel()();

    v36 = v62;
    v49 = *v62;
    v50 = v62[1];
    *v62 = 0;
    v36[1] = 0;
    sub_1002AC974(v49, v50);
    v48 = v69;
    v31 = v64;
    goto LABEL_25;
  }

  v43 = v69;
  v66(v11, v65, v69);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "Lyrics request for this song already in progress", v46, 2u);
  }

  else
  {
  }

  v64(v11, v43);
}

uint64_t sub_10029E6EC()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1001AB600;

  return sub_1002A0D18();
}

void sub_10029E798(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    Notification.object.getter();
    if (v10)
    {
      sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
      if (swift_dynamicCast())
      {
        v4 = v8;
        v5 = [v3 parentViewController];
        if (v5)
        {
          v6 = v5;
          v7 = static NSObject.== infix(_:_:)();

          if (v7)
          {

            return;
          }
        }

        else
        {
        }

        sub_1002AAA18();
      }

      else
      {
      }
    }

    else
    {

      sub_1000095E8(v9, &unk_101183F30, qword_100EBF960);
    }
  }
}

void sub_10029E8D0(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v3 = v8 - v2;
  Notification.object.getter();
  if (v10)
  {
    type metadata accessor for NowPlayingViewController(0);
    if (swift_dynamicCast())
    {

      return;
    }
  }

  else
  {
    sub_1000095E8(v9, &unk_101183F30, qword_100EBF960);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    Date.init()();
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
    v7 = OBJC_IVAR___MusicNowPlayingLyricsViewController_lyricsVisibilityStart;
    swift_beginAccess();
    sub_10006B010(v3, v5 + v7, &qword_101188C20, &qword_100EC2030);
    swift_endAccess();
  }
}

void sub_10029ECCC()
{
  v1 = *&v0[OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController];
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    v4 = [v0 traitCollection];
    sub_1001D1C24();
    sub_1001D1C78();
    UITraitCollection.subscript.getter();

    v5 = [v2 traitCollection];
    v6 = [v5 userInterfaceIdiom];

    if (LOBYTE(__dst[0]))
    {
      v7 = SyncedLyricsViewController.Specs.iPad.unsafeMutableAddressor();
      if (LOBYTE(__dst[0]) == 1)
      {
        memcpy(__dst, v7, sizeof(__dst));
        v73 = *(&__dst[41] + 1);
        v71 = *(&__dst[42] + 1);
        v72 = *&__dst[42];
        v70 = BYTE3(__dst[41]);
        v69 = BYTE2(__dst[41]);
        v68 = BYTE1(__dst[41]);
        v67 = __dst[41];
        v66 = __dst[40];
        v65 = *(&__dst[39] + 1);
        v63 = *(&__dst[37] + 8);
        v64 = *(&__dst[38] + 8);
        v62 = *&__dst[37];
        v61 = __dst[36];
        v60 = *(&__dst[35] + 1);
        v58 = *(&__dst[33] + 8);
        v59 = *(&__dst[34] + 8);
        v56 = *(&__dst[31] + 8);
        v57 = *(&__dst[32] + 8);
        v55 = *&__dst[31];
        v54 = __dst[30];
        v53 = __dst[29];
        v52 = __dst[28];
        v50 = __dst[25];
        v51 = __dst[26];
        v48 = *(&__dst[27] + 1);
        v49 = *&__dst[27];
        v46 = __dst[23];
        v47 = __dst[24];
        v45 = __dst[22];
        v44 = __dst[21];
        v43 = __dst[20];
        v41 = *(&__dst[18] + 1);
        v42 = __dst[19];
        v40 = __dst[17];
        v38 = *(&__dst[16] + 1);
        v39 = *&__dst[18];
        v8 = *(&__dst[15] + 1);
        v9 = *&__dst[16];
        v36 = *&__dst[13];
        v37 = *&__dst[15];
        v34 = BYTE8(__dst[13]);
        v35 = __dst[12];
        v10 = *&__dst[6];
        v11 = BYTE8(__dst[6]);
        v12 = *&__dst[5];
        v13 = BYTE8(__dst[5]);
        v14 = __dst[0];
        v15 = *(&__dst[11] + 1);
        v16 = *&__dst[11];
        v32 = __dst[10];
        v33 = __dst[14];
        v30 = __dst[8];
        v31 = __dst[9];
        v29 = __dst[7];
        v17 = *(&__dst[4] + 1);
        v18 = *&__dst[4];
        v19 = *(&__dst[3] + 1);
        v20 = *(&__dst[0] + 1);
        sub_1002AD8C8(__dst, v74);
        v21 = 0;
        v22 = xmmword_100EC40A0;
        v23 = 0uLL;
      }

      else
      {
        memcpy(__dst, v7, sizeof(__dst));
        v73 = *(&__dst[41] + 1);
        v71 = *(&__dst[42] + 1);
        v72 = *&__dst[42];
        v70 = BYTE3(__dst[41]);
        v69 = BYTE2(__dst[41]);
        v68 = BYTE1(__dst[41]);
        v67 = __dst[41];
        v66 = __dst[40];
        v65 = *(&__dst[39] + 1);
        v63 = *(&__dst[37] + 8);
        v64 = *(&__dst[38] + 8);
        v62 = *&__dst[37];
        v61 = __dst[36];
        v60 = *(&__dst[35] + 1);
        v58 = *(&__dst[33] + 8);
        v59 = *(&__dst[34] + 8);
        v56 = *(&__dst[31] + 8);
        v57 = *(&__dst[32] + 8);
        v55 = *&__dst[31];
        v54 = __dst[30];
        v53 = __dst[29];
        v52 = __dst[28];
        v50 = __dst[25];
        v51 = __dst[26];
        v48 = *(&__dst[27] + 1);
        v49 = *&__dst[27];
        v46 = __dst[23];
        v47 = __dst[24];
        v45 = __dst[22];
        v44 = __dst[21];
        v43 = __dst[20];
        v41 = *(&__dst[18] + 1);
        v42 = __dst[19];
        v40 = __dst[17];
        v38 = *(&__dst[16] + 1);
        v39 = *&__dst[18];
        v8 = *(&__dst[15] + 1);
        v9 = *&__dst[16];
        v36 = *&__dst[13];
        v37 = *&__dst[15];
        v34 = BYTE8(__dst[13]);
        v35 = __dst[12];
        v10 = *&__dst[6];
        v11 = BYTE8(__dst[6]);
        v12 = *&__dst[5];
        v13 = BYTE8(__dst[5]);
        v14 = __dst[0];
        v15 = *(&__dst[11] + 1);
        v16 = *&__dst[11];
        v32 = __dst[10];
        v33 = __dst[14];
        v30 = __dst[8];
        v31 = __dst[9];
        v17 = *(&__dst[4] + 1);
        v18 = *&__dst[4];
        v19 = *(&__dst[3] + 1);
        v20 = *(&__dst[0] + 1);
        v27 = *&v2[OBJC_IVAR___MusicNowPlayingLyricsViewController_artworkFrame + 16];
        v29 = __dst[7];
        v25 = *&v2[OBJC_IVAR___MusicNowPlayingLyricsViewController_artworkFrame];
        sub_1002AD8C8(__dst, v74);
        v22 = v25;
        v23 = v27;
        v21 = 0x80;
      }
    }

    else
    {
      if (v6 > 1)
      {
        v24 = SyncedLyricsViewController.Specs.alternative.unsafeMutableAddressor();
      }

      else
      {
        v24 = SyncedLyricsViewController.Specs.default.unsafeMutableAddressor();
      }

      memcpy(__dst, v24, sizeof(__dst));
      v73 = *(&__dst[41] + 1);
      v71 = *(&__dst[42] + 1);
      v72 = *&__dst[42];
      v70 = BYTE3(__dst[41]);
      v69 = BYTE2(__dst[41]);
      v68 = BYTE1(__dst[41]);
      v67 = __dst[41];
      v66 = __dst[40];
      v65 = *(&__dst[39] + 1);
      v63 = *(&__dst[37] + 8);
      v64 = *(&__dst[38] + 8);
      v62 = *&__dst[37];
      v61 = __dst[36];
      v60 = *(&__dst[35] + 1);
      v58 = *(&__dst[33] + 8);
      v59 = *(&__dst[34] + 8);
      v56 = *(&__dst[31] + 8);
      v57 = *(&__dst[32] + 8);
      v55 = *&__dst[31];
      v54 = __dst[30];
      v53 = __dst[29];
      v52 = __dst[28];
      v50 = __dst[25];
      v51 = __dst[26];
      v48 = *(&__dst[27] + 1);
      v49 = *&__dst[27];
      v46 = __dst[23];
      v47 = __dst[24];
      v45 = __dst[22];
      v44 = __dst[21];
      v43 = __dst[20];
      v41 = *(&__dst[18] + 1);
      v42 = __dst[19];
      v40 = __dst[17];
      v38 = *(&__dst[16] + 1);
      v39 = *&__dst[18];
      v8 = *(&__dst[15] + 1);
      v9 = *&__dst[16];
      v36 = *&__dst[13];
      v37 = *&__dst[15];
      v34 = BYTE8(__dst[13]);
      v35 = __dst[12];
      v10 = *&__dst[6];
      v11 = BYTE8(__dst[6]);
      v12 = *&__dst[5];
      v13 = BYTE8(__dst[5]);
      v21 = __dst[3];
      v14 = __dst[0];
      v15 = *(&__dst[11] + 1);
      v16 = *&__dst[11];
      v32 = __dst[10];
      v33 = __dst[14];
      v30 = __dst[8];
      v31 = __dst[9];
      v17 = *(&__dst[4] + 1);
      v18 = *&__dst[4];
      v19 = *(&__dst[3] + 1);
      v28 = __dst[2];
      v29 = __dst[7];
      v26 = __dst[1];
      v20 = *(&__dst[0] + 1);
      sub_1002AD8C8(__dst, v74);
      v22 = v26;
      v23 = v28;
    }

    v77 = v20;
    v78 = v22;
    v79 = v23;
    v81 = v19;
    v82 = v18;
    v83 = v17;
    v88 = v29;
    v89 = v30;
    v90 = v31;
    v91 = v32;
    v92 = v16;
    v93 = v15;
    v97 = v33;
    LOBYTE(__dst[0]) = v13;
    v74[0] = v11;
    v76[0] = v14;
    v80 = v21;
    v84 = v12;
    v85 = v13;
    v86 = v10;
    v87 = v11;
    v94 = v35;
    v95 = v36;
    v96 = v34;
    v98 = v37;
    v99 = v8;
    v100 = v9;
    v102 = v40;
    v101 = v38;
    v103 = v39;
    v104 = v41;
    v105 = v42;
    v106 = v43;
    v107 = v44;
    v108 = v45;
    v109 = v46;
    v110 = v47;
    v111 = v50;
    v112 = v51;
    v113 = v49;
    v114 = v48;
    v115 = v52;
    v116 = v53;
    v117 = v54;
    v118 = v55;
    v120 = v57;
    v119 = v56;
    v122 = v59;
    v121 = v58;
    v123 = v60;
    v124 = v61;
    v125 = v62;
    v127 = v64;
    v126 = v63;
    v128 = v65;
    v129 = v66;
    v130 = v67;
    v131 = v68;
    v132 = v69;
    v133 = v70;
    v134 = v73;
    v135 = v72;
    v136 = v71;
    (*((swift_isaMask & *v3) + 0x1E0))(v76);
  }

  else
  {
    __break(1u);
  }
}

void sub_10029F54C()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  [v2 userInterfaceIdiom];

  if (v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_state + 8] != 1 || v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_state] == 2)
  {
    v4 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_staticLyricsViewController];
    if (!v4)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v5 = v4;
    v6 = sub_100783210();

    [v6 textContainerInset];
  }

  else
  {
    v7 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController];
    if (!v7)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v8 = *((swift_isaMask & *v7) + 0x208);
    v9 = v7;
    v8();
  }

  v10 = OBJC_IVAR___MusicNowPlayingLyricsViewController_gradientMaskLayer;
  v11 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_gradientMaskLayer];
  if (!v11)
  {
    __break(1u);
    goto LABEL_23;
  }

  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100EBDC10;
  v13 = v11;
  *(v12 + 32) = CGFloat._bridgeToObjectiveC()();
  v14 = [v1 view];
  if (!v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v15 = v14;
  [v14 bounds];

  *(v12 + 40) = CGFloat._bridgeToObjectiveC()();
  v16 = [v1 view];
  if (!v16)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v17 = v16;
  [v16 bounds];

  *(v12 + 48) = CGFloat._bridgeToObjectiveC()();
  *(v12 + 56) = CGFloat._bridgeToObjectiveC()();
  sub_100009F78(0, &qword_101189A20, NSNumber_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 setLocations:isa];

  v19 = *&v1[v10];
  if (!v19)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v20 = v19;
  v21 = [v1 view];
  if (!v21)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v22 = v21;
  [v21 bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  [v20 setFrame:{v24, v26, v28, v30}];
  v31 = sub_100025CE0();
  v32 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v31);
  v33 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_staticLyricsViewController];
  if ((v32 & 1) == 0)
  {
    if (v33)
    {
      v36 = v33;
      v35 = sub_100783210();

      [v35 textContainerInset];
      [v35 setTextContainerInset:?];
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (!v33)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v34 = [v33 view];
  if (v34)
  {
    v35 = v34;
    [v34 layoutMargins];
    [v35 setLayoutMargins:?];
LABEL_21:

    return;
  }

LABEL_31:
  __break(1u);
}

void sub_10029F940()
{
  v1 = v0;
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6D0;
  v3 = OBJC_IVAR___MusicNowPlayingLyricsViewController_activityIndicator;
  v4 = *&v0[OBJC_IVAR___MusicNowPlayingLyricsViewController_activityIndicator];
  if (!v4)
  {
    __break(1u);
    goto LABEL_35;
  }

  v5 = [v4 centerXAnchor];
  v6 = [v1 view];
  if (!v6)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v7 = v6;
  v8 = [v6 centerXAnchor];

  v9 = [v5 constraintEqualToAnchor:v8];
  *(inited + 32) = v9;
  v10 = *&v1[v3];
  if (!v10)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v11 = [v10 centerYAnchor];
  v12 = [v1 view];
  if (!v12)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v13 = v12;
  v14 = [v12 centerYAnchor];

  v15 = [v11 constraintEqualToAnchor:v14];
  *(inited + 40) = v15;
  sub_100124054(inited);
  v16 = sub_100025CE0();
  v17 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v16);
  v18 = &stru_101148000;
  p_cache = (&OBJC_METACLASS____TtC5Music26PresentationDonationTarget + 16);
  v20 = &stru_101148000;
  v21 = &stru_101148000;
  if ((v17 & 1) == 0)
  {
    goto LABEL_21;
  }

  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100EBC6D0;
  v23 = OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton;
  v24 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton];
  if (!v24)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v25 = [v24 leadingAnchor];
  v26 = [v1 view];
  if (!v26)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v27 = v26;
  v28 = [v26 layoutMarginsGuide];

  v29 = [v28 leadingAnchor];
  v30 = [v25 constraintEqualToAnchor:v29];

  *(v22 + 32) = v30;
  v31 = *&v1[v23];
  if (!v31)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v32 = [v31 bottomAnchor];
  v33 = OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationToggleSlider;
  v34 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationToggleSlider];
  if (!v34)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v35 = [v34 bottomAnchor];
  v36 = [v32 constraintEqualToAnchor:v35];

  *(v22 + 40) = v36;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButtonConstraints] = v22;

  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100EBC6D0;
  v38 = *&v1[v23];
  if (!v38)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v39 = [v38 trailingAnchor];
  v40 = *&v1[v33];
  if (!v40)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v41 = [v40 trailingAnchor];
  v42 = [v39 constraintEqualToAnchor:v41];

  *(v37 + 32) = v42;
  v43 = *&v1[v23];
  if (!v43)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v44 = [v43 topAnchor];
  v45 = *&v1[v33];
  if (!v45)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v46 = [v45 bottomAnchor];
  v47 = [v44 constraintEqualToAnchor:v46 constant:12.0];

  *(v37 + 40) = v47;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButtonToVocalAttenuationSplitViewConstraints] = v37;

  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_100EBC6D0;
  v49 = *&v1[v23];
  if (!v49)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v50 = [v49 topAnchor];
  v51 = [v1 view];
  if (!v51)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v52 = v51;
  v53 = [v51 topAnchor];

  v54 = [v50 constraintEqualToAnchor:v53 constant:18.0];
  *(v48 + 32) = v54;
  v55 = *&v1[v23];
  if (!v55)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v56 = [v55 trailingAnchor];
  v57 = [v1 view];
  if (!v57)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v58 = v57;
  v59 = [v57 layoutMarginsGuide];

  v60 = [v59 trailingAnchor];
  v61 = [v56 constraintEqualToAnchor:v60];

  *(v48 + 40) = v61;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButtonSplitViewConstraints] = v48;

  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_100EBC6D0;
  v63 = *&v1[v23];
  if (!v63)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v64 = [v63 heightAnchor];
  v65 = [v64 constraintEqualToConstant:38.0];

  *(v62 + 32) = v65;
  v66 = *&v1[v23];
  if (v66)
  {
    v67 = objc_opt_self();
    v68 = [v66 widthAnchor];
    v69 = [v68 constraintEqualToConstant:38.0];

    *(v62 + 40) = v69;

    sub_100124054(v70);
    sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v67 activateConstraints:isa];

    v20 = &stru_101148000;
    v18 = &stru_101148000;
    v21 = &stru_101148000;
    p_cache = &OBJC_METACLASS____TtC5Music26PresentationDonationTarget.cache;
LABEL_21:
    v72 = *(p_cache[305] + v1);
    if (!v72)
    {
LABEL_27:
      v100 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_tapToRadarButton];
      if (!v100)
      {
LABEL_33:
        Array<A>.activate()(_swiftEmptyArrayStorage);

        return;
      }

      v101 = swift_allocObject();
      *(v101 + 16) = xmmword_100EBC6D0;
      v102 = v100;
      v103 = [v102 v21[93].attr];
      v104 = [v1 view];
      if (v104)
      {
        v105 = v104;
        v106 = [v104 v21[93].attr];

        v107 = [v103 constraintEqualToAnchor:v106];
        *(v101 + 32) = v107;
        v108 = [v102 v20[95].attr];
        v109 = [v1 view];
        if (v109)
        {
          v110 = v109;
          v111 = [v109 layoutMarginsGuide];

          v112 = [v111 v20[95].attr];
          v113 = [v108 constraintEqualToAnchor:v112];

          *(v101 + 40) = v113;
          *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_tapToRadarButtonConstraints] = v101;

          v114 = swift_allocObject();
          *(v114 + 16) = xmmword_100EBC6D0;
          v115 = [v102 bottomAnchor];
          v116 = [v1 view];
          if (v116)
          {
            v117 = v116;
            v118 = [v116 bottomAnchor];

            v119 = [v115 constraintEqualToAnchor:v118];
            *(v114 + 32) = v119;
            v120 = [v102 v20[95].attr];

            v121 = [v1 view];
            if (v121)
            {
              v122 = v121;
              v123 = [v121 layoutMarginsGuide];

              v124 = [v123 v20[95].attr];
              v125 = [v120 constraintEqualToAnchor:v124];

              *(v114 + 40) = v125;
              *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_tapToRadarButtonSplitViewConstraints] = v114;

              sub_100124054(v126);

              goto LABEL_33;
            }

            goto LABEL_45;
          }

LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_100EBC6D0;
    v74 = v72;
    v75 = [v74 v18[94].attr];
    v76 = [v1 view];
    if (v76)
    {
      v77 = v18;
      v78 = v76;
      v79 = [v76 v77[94].attr];

      v80 = [v75 constraintEqualToAnchor:v79 constant:-32.0];
      *(v73 + 32) = v80;
      v81 = [v74 v20[95].attr];
      v82 = [v1 view];
      if (v82)
      {
        v83 = v82;
        v84 = [v82 layoutMarginsGuide];

        v85 = [v84 v20[95].attr];
        v86 = [v81 constraintEqualToAnchor:v85];

        *(v73 + 40) = v86;
        *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationSliderConstraints] = v73;

        v87 = swift_allocObject();
        *(v87 + 16) = xmmword_100EBC6D0;
        v88 = [v74 topAnchor];
        v89 = [v1 view];
        if (v89)
        {
          v90 = v89;
          v91 = [v89 topAnchor];

          v92 = [v88 constraintEqualToAnchor:v91 constant:18.0];
          *(v87 + 32) = v92;
          v93 = [v74 v20[95].attr];

          v94 = [v1 view];
          if (!v94)
          {
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

          v95 = v94;
          v96 = [v94 layoutMarginsGuide];

          v97 = [v96 v20[95].attr];
          v98 = [v93 constraintEqualToAnchor:v97];

          *(v87 + 40) = v98;
          *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationSliderSplitViewConstraints] = v87;

          sub_100124054(v99);

          v21 = &stru_101148000;
          goto LABEL_27;
        }

LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_59:
  __break(1u);
}

void sub_1002A05E0(void *a1)
{
  v2 = v1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v5 = &v36 - v4;
  v6 = *(v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_song);
  if (v6)
  {
    v37 = *(v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_song);
    if (a1)
    {
      v36 = v6;
      v7 = a1;
      v8 = [v7 identifiers];
      v9 = [v36 identifiers];
      v10 = [v8 intersectsSet:v9];

      if (v10)
      {
        type metadata accessor for LyricsLoader();
        v11 = static LyricsLoader.supportsLyrics(for:)(v7);
        v12 = static LyricsLoader.supportsLyrics(for:)(v36);

        if (((v11 ^ v12) & 1) == 0)
        {
          v13 = v36;
LABEL_17:

          return;
        }
      }

      else
      {
      }
    }

    else
    {
      v17 = v6;
    }

    v18 = (v2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_currentLyricsTask);
    if (*(v2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_currentLyricsTask))
    {
      v19 = v18[1];

      v20 = v19;
      Task.cancel()();

      v21 = *v18;
      v22 = v18[1];
      *v18 = 0;
      v18[1] = 0;
      sub_1002AC974(v21, v22);
    }

    sub_1002AAC80(a1);
    *(v2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_lyrics) = 0;

    type metadata accessor for LyricsLoader();
    if (static LyricsLoader.supportsLyrics(for:)(v37))
    {
      v23 = type metadata accessor for TaskPriority();
      (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for MainActor();
      v25 = v37;

      v26 = static MainActor.shared.getter();
      v27 = swift_allocObject();
      v27[2] = v26;
      v27[3] = &protocol witness table for MainActor;
      v27[4] = v24;
      v27[5] = v25;

      v28 = sub_1001F4CB8(0, 0, v5, &unk_100EC5530, v27);
      v30 = *v18;
      v29 = v18[1];
      *v18 = v28;
      v18[1] = v37;
      sub_1002AC974(v30, v29);
      return;
    }

    v31 = v2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_state;
    v32 = *(v2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_state);
    *v31 = 0;
    v33 = *(v31 + 8);
    *(v31 + 8) = 0;
    sub_1002AC8A4(v32, v33);
    sub_10029A850();
    v34 = *(v2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_activityIndicator);
    if (!v34)
    {
      __break(1u);
      return;
    }

    v35 = v34;
    [v35 stopAnimating];

    v13 = v37;
    goto LABEL_17;
  }

  v14 = v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_state;
  v15 = *(v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_state);
  *v14 = 0;
  v16 = *(v14 + 8);
  *(v14 + 8) = 0;
  sub_1002AC8A4(v15, v16);

  sub_10029A850();
}

uint64_t sub_1002A0998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_1002A0A30, v7, v6);
}

uint64_t sub_1002A0A30()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_1002A0B20;

    return sub_1002A0D18();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1002A0B20()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_1002A0C40, v3, v2);
}

uint64_t sub_1002A0C40()
{
  v1 = v0[10];

  v2 = (v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_currentLyricsTask);
  v3 = *(v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_currentLyricsTask);
  if (v3)
  {
    v4 = v0[6];
    v5 = v2[1];
    sub_1002AC9B4(v3, v5);
    v6 = v5;
    sub_1002AC974(v3, v5);

    v7 = v0[10];
    if (v4 == v6)
    {
      v8 = *v2;
      v9 = v2[1];
      *v2 = 0;
      v2[1] = 0;
      sub_1002AC974(v8, v9);
    }
  }

  else
  {
    v7 = v0[10];
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002A0D18()
{
  v1[5] = v0;
  v2 = type metadata accessor for Logger();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  v1[9] = swift_task_alloc();
  sub_10010FC20(&unk_101189A00, &unk_100EC5500);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  sub_10010FC20(&qword_101189A18, &unk_100EE1DA0);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[16] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[17] = v4;
  v1[18] = v3;

  return _swift_task_switch(sub_1002A0EE4, v4, v3);
}

uint64_t sub_1002A0EE4(__n128 a1)
{
  v2 = *(v1 + 40);
  v3 = OBJC_IVAR___MusicNowPlayingLyricsViewController_song;
  *(v1 + 152) = OBJC_IVAR___MusicNowPlayingLyricsViewController_song;
  v4 = *(v2 + v3);
  *(v1 + 160) = v4;
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 sharedMonitor];
  v8 = [v7 isRemoteServerLikelyReachable];

  if ((v8 & 1) == 0)
  {
    v14 = [v6 lyrics];
    if (!v14)
    {
      goto LABEL_14;
    }

    v15 = v14;
    v16 = [v14 text];

    if (!v16)
    {
      goto LABEL_14;
    }

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v20 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (!v20)
    {
LABEL_14:

      v2 = *(v1 + 40);
LABEL_15:
      v21 = v2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_state;
      v22 = *(v2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_state);
      *v21 = 0;
      v23 = *(v21 + 8);
      *(v21 + 8) = 0;
      sub_1002AC8A4(v22, v23);
      result = sub_10029A850();
      v25 = *(v2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_activityIndicator);
      if (!v25)
      {
        __break(1u);
        return result;
      }

      v26 = v25;

      [v26 stopAnimating];

      goto LABEL_33;
    }
  }

  v9 = *(v1 + 40);
  v10 = OBJC_IVAR___MusicNowPlayingLyricsViewController_state;
  *(v1 + 168) = OBJC_IVAR___MusicNowPlayingLyricsViewController_state;
  v11 = v9 + v10;
  v12 = *(v9 + v10);
  *(v1 + 176) = v12;
  v13 = *(v9 + v10 + 8);
  *(v1 + 226) = v13;
  *v11 = 0;
  *(v11 + 8) = 2;
  sub_10029A850();
  if (!*(v11 + 8))
  {
    if (!v13)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (*(v11 + 8) == 1)
  {
    if (v13 != 1)
    {
      goto LABEL_18;
    }

    if (*v11 == 2)
    {
      if (v12 == 2)
      {
        goto LABEL_19;
      }

LABEL_18:
      v27 = *(v1 + 40);
      sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
      v28 = static OS_dispatch_queue.main.getter();
      v29 = swift_allocObject();
      *(v29 + 16) = v27;
      v30 = v27;
      OS_dispatch_queue.asyncAfter(_:block:)(sub_1002AD8C0, v29, 2.0);

      goto LABEL_19;
    }

    if (v12 == 2 || ((*v11 ^ v12) & 1) != 0)
    {
      goto LABEL_18;
    }
  }

  else if (v13 != 2 || v12 != 0)
  {
    goto LABEL_18;
  }

LABEL_19:
  v31 = *(v1 + 40);
  if (*(v31 + OBJC_IVAR___MusicNowPlayingLyricsViewController_isBackgrounded))
  {
    v33 = *(v1 + 56);
    v32 = *(v1 + 64);
    v34 = *(v1 + 48);

    v35 = Logger.lyrics.unsafeMutableAddressor();
    (*(v33 + 16))(v32, v35, v34);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    v38 = os_log_type_enabled(v36, v37);
    v40 = *(v1 + 56);
    v39 = *(v1 + 64);
    v41 = *(v1 + 48);
    if (v38)
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "NowPlayingLyricsViewController: app is backgrounded, not making lyrics request", v42, 2u);

      sub_1002AC8A4(v12, v13);
    }

    else
    {

      sub_1002AC8A4(v12, v13);
    }

    (*(v40 + 8))(v39, v41);
LABEL_33:

    v47 = *(v1 + 8);

    return v47();
  }

  v43 = *(v31 + OBJC_IVAR___MusicNowPlayingLyricsViewController_lyricsLoader);
  *(v1 + 184) = v43;
  v44 = *((swift_isaMask & *v43) + 0x78);
  v43;
  v49 = (v44 + *v44);
  v45 = swift_task_alloc();
  *(v1 + 192) = v45;
  *v45 = v1;
  v45[1] = sub_1002A1414;

  return v49(v6);
}

uint64_t sub_1002A1414(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  *(v5 + 200) = a1;
  *(v5 + 208) = a2;
  *(v5 + 227) = a3;
  *(v5 + 216) = v3;

  if (v3)
  {
    v6 = *(v5 + 136);
    v7 = *(v5 + 144);
    v8 = sub_1002A2348;
  }

  else
  {

    v6 = *(v5 + 136);
    v7 = *(v5 + 144);
    v8 = sub_1002A1538;
  }

  return _swift_task_switch(v8, v6, v7);
}

void sub_1002A1538(__n128 a1)
{
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    v8 = *(v1 + 40);
    v9 = v8 + *(v1 + 168);
    v10 = *(v9 + 8) == 2 && *v9 == 0;
    if (!v10 || (v11 = *(v8 + *(v1 + 152))) == 0)
    {
      v38 = *(v1 + 200);
      v39 = *(v1 + 208);
      v40 = *(v1 + 176);
      v41 = *(v1 + 226);
      v42 = *(v1 + 227);

      sub_1002AC8A4(v40, v41);

      v43 = v42 & 1;
      v44 = v38;
      v45 = v39;
LABEL_23:
      sub_10011895C(v44, v45, v43);
      goto LABEL_24;
    }

    v12 = *(v1 + 160);
    v13 = v11;
    v14 = [v12 identifiers];
    v15 = [v13 identifiers];
    v16 = [v14 intersectsSet:v15];

    if ((v16 & 1) == 0)
    {
      v48 = *(v1 + 200);
      v47 = *(v1 + 208);
      v49 = *(v1 + 176);
      v50 = *(v1 + 226);
      v51 = *(v1 + 227);

      sub_1002AC8A4(v49, v50);

      sub_10011895C(v48, v47, v51 & 1);

      goto LABEL_24;
    }

    v17 = *(*(v1 + 40) + OBJC_IVAR___MusicNowPlayingLyricsViewController_activityIndicator);
    if (v17)
    {
      v18 = *(v1 + 227);
      [v17 stopAnimating];
      if (v18)
      {
        v19 = *(v1 + 200);
        v20 = *(v1 + 40);
        *(v20 + OBJC_IVAR___MusicNowPlayingLyricsViewController_lyrics) = v19;

        v21 = OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying;
        v22 = *(v20 + OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying);
        if (v22)
        {
          v23 = v19[56];
          v24 = v22;
          v25 = v24;
          if (!v23 || (v26 = [v24 tracklist], v27 = MPCPlayerResponseTracklist.playingItemSupportsTimeSyncedLyrics.getter(), v26, (v27 & 1) == 0))
          {
            v129 = v25;
            v69 = *(v1 + 40);
            v70 = v69 + *(v1 + 168);
            v71 = *v70;
            *v70 = 2;
            v72 = *(v70 + 8);
            *(v70 + 8) = 1;
            sub_1002AC8A4(v71, v72);
            sub_10029A850();
            v73 = *(v69 + OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController);
            if (!v73)
            {
LABEL_66:
              __break(1u);
              goto LABEL_67;
            }

            v74 = *(v1 + 120);
            v75 = *(v1 + 96);
            v130 = *(v1 + 40);
            v76 = type metadata accessor for Lyrics.Translation(0);
            v77 = *(*(v76 - 8) + 56);
            v77(v74, 1, 1, v76);
            v78 = type metadata accessor for Lyrics.Transliteration(0);
            (*(*(v78 - 8) + 56))(v75, 1, 1, v78);
            v79 = *((swift_isaMask & *v73) + 0x4C8);
            v80 = v73;
            v79(0, v74, v75);

            sub_1000095E8(v75, &unk_101189A00, &unk_100EC5500);
            sub_1000095E8(v74, &qword_101189A18, &unk_100EE1DA0);
            v81 = *(v130 + OBJC_IVAR___MusicNowPlayingLyricsViewController_staticLyricsViewController);
            if (!v81)
            {
LABEL_67:
              __break(1u);
              goto LABEL_68;
            }

            v82 = *(v1 + 200);
            v83 = *(v1 + 120);
            v77(v83, 1, 1, v76);
            v84 = v81;
            sub_100782D34(v82, v83);

            v85 = v83;
            goto LABEL_36;
          }
        }

        v28 = *(v1 + 40) + *(v1 + 168);
        v29 = *v28;
        *v28 = v19[56] == 2;
        v30 = *(v28 + 8);
        *(v28 + 8) = 1;
        sub_1002AC8A4(v29, v30);
        sub_10029A850();
        *(v1 + 224) = 6;
        v31 = sub_100025CE0();
        if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v31) & 1) == 0)
        {
          v86 = *(*(v1 + 40) + OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController);
          if (!v86)
          {
LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

          v87 = *(v1 + 200);
          v88 = *(v1 + 120);
          v89 = *(v1 + 96);
          v90 = type metadata accessor for Lyrics.Translation(0);
          (*(*(v90 - 8) + 56))(v88, 1, 1, v90);
          v91 = type metadata accessor for Lyrics.Transliteration(0);
          (*(*(v91 - 8) + 56))(v89, 1, 1, v91);
          v92 = *((swift_isaMask & *v86) + 0x4C8);
          v93 = v86;
          v92(v87, v88, v89);

          sub_1000095E8(v89, &unk_101189A00, &unk_100EC5500);
          v85 = v88;
          goto LABEL_36;
        }

        v32 = *LyricsOptionsManager.shared.unsafeMutableAddressor();
        v33 = *(v20 + v21);
        if (v33)
        {

          v34 = [v33 tracklist];
          v35 = [v34 vocalsControlCommand];

          if (v35)
          {
            v36 = [v35 isActive];
            swift_unknownObjectRelease();
            if (v36)
            {
              if (((*(*v32 + 248))(2) & 1) == 0)
              {
                v37 = 1;
                goto LABEL_39;
              }
            }
          }
        }

        else
        {
        }

        v37 = (*(*v32 + 248))(1);
LABEL_39:
        v94 = *(*(v1 + 40) + OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController);
        if (!v94)
        {
LABEL_69:
          __break(1u);
          return;
        }

        v95 = *(*v32 + 248);
        v96 = v94;
        v131 = v95;
        if (v95(0))
        {
          v97 = (*(*v19 + 288))();
        }

        else
        {
          v98 = *(v1 + 112);
          v99 = type metadata accessor for Lyrics.Translation(0);
          v97 = (*(*(v99 - 8) + 56))(v98, 1, 1, v99);
        }

        if (v37)
        {
          (*(*v19 + 312))(v97);
        }

        else
        {
          v100 = *(v1 + 88);
          v101 = type metadata accessor for Lyrics.Transliteration(0);
          (*(*(v101 - 8) + 56))(v100, 1, 1, v101);
        }

        v102 = *(v1 + 112);
        v103 = *(v1 + 88);
        (*((swift_isaMask & *v96) + 0x4C8))(*(v1 + 200), v102, v103);

        sub_1000095E8(v103, &unk_101189A00, &unk_100EC5500);
        sub_1000095E8(v102, &qword_101189A18, &unk_100EE1DA0);
        if ((v131(5) & 1) != 0 && (v131(4) & 1) == 0)
        {
          v104 = *(v1 + 80);
          (*(*v19 + 312))();
          v105 = type metadata accessor for Lyrics.Transliteration(0);
          v106 = (*(*(v105 - 8) + 48))(v104, 1, v105);
          v107 = sub_1000095E8(v104, &unk_101189A00, &unk_100EC5500);
          if (v106 == 1)
          {
            v108 = *(v1 + 104);
            (*(*v19 + 288))(v107);
            v109 = type metadata accessor for Lyrics.Translation(0);
            v110 = (*(*(v109 - 8) + 48))(v108, 1, v109);
            v111 = *(v1 + 104);
            if (v110 == 1)
            {

              v85 = v111;
LABEL_36:
              sub_1000095E8(v85, &qword_101189A18, &unk_100EE1DA0);
              goto LABEL_54;
            }

            sub_1000095E8(*(v1 + 104), &qword_101189A18, &unk_100EE1DA0);
          }

          sub_1002A5A68(8);
        }

LABEL_54:
        v112 = [*(v1 + 40) view];
        if (v112)
        {
          v113 = v112;

          v114 = [v113 window];

          if (v114)
          {

            v115 = [objc_opt_self() sharedApplication];
            v116 = [v115 applicationState];

            if (!v116)
            {
              v117 = *(v1 + 72);
              v118 = *(v1 + 40);
              Date.init()();
              v119 = type metadata accessor for Date();
              (*(*(v119 - 8) + 56))(v117, 0, 1, v119);
              v120 = OBJC_IVAR___MusicNowPlayingLyricsViewController_lyricsVisibilityStart;
              swift_beginAccess();
              sub_10006B010(v117, v118 + v120, &qword_101188C20, &qword_100EC2030);
              swift_endAccess();
              *(v118 + OBJC_IVAR___MusicNowPlayingLyricsViewController_visibleDuration) = 0;
            }
          }

          goto LABEL_58;
        }

        goto LABEL_65;
      }

      v52 = *(v1 + 40);
      v53 = v52 + *(v1 + 168);
      v54 = *v53;
      *v53 = 2;
      v55 = *(v53 + 8);
      *(v53 + 8) = 1;

      sub_1002AC8A4(v54, v55);
      sub_10029A850();
      *(v52 + OBJC_IVAR___MusicNowPlayingLyricsViewController_lyrics) = 0;

      v56 = *(v52 + OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController);
      if (v56)
      {
        v57 = *(v1 + 120);
        v58 = *(v1 + 96);
        v59 = *(v1 + 40);
        v60 = type metadata accessor for Lyrics.Translation(0);
        (*(*(v60 - 8) + 56))(v57, 1, 1, v60);
        v61 = type metadata accessor for Lyrics.Transliteration(0);
        (*(*(v61 - 8) + 56))(v58, 1, 1, v61);
        v62 = *((swift_isaMask & *v56) + 0x4C8);
        v63 = v56;
        v62(0, v57, v58);

        sub_1000095E8(v58, &unk_101189A00, &unk_100EC5500);
        sub_1000095E8(v57, &qword_101189A18, &unk_100EE1DA0);
        v64 = *(v59 + OBJC_IVAR___MusicNowPlayingLyricsViewController_staticLyricsViewController);
        if (v64)
        {
          v66 = *(v1 + 200);
          v65 = *(v1 + 208);
          v67 = v64;

          v68 = &v67[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsText];
          *v68 = v66;
          *(v68 + 1) = v65;

          sub_100781890();

LABEL_58:
          *(v1 + 225) = 6;
          v121 = sub_100025CE0();
          v122 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v121);
          v123 = *(v1 + 227);
          v125 = *(v1 + 200);
          v124 = *(v1 + 208);
          v126 = *(v1 + 226);
          v127 = *(v1 + 176);
          v128 = *(v1 + 160);
          if (v122)
          {
            sub_1002A24D0();
          }

          else
          {
          }

          sub_1002AC8A4(v127, v126);
          v43 = v123 & 1;
          v44 = v125;
          v45 = v124;
          goto LABEL_23;
        }

        goto LABEL_64;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v2 = *(v1 + 200);
  v3 = *(v1 + 208);
  v4 = *(v1 + 176);
  v5 = *(v1 + 160);
  v6 = *(v1 + 227);
  v7 = *(v1 + 226);

  sub_10011895C(v2, v3, v6 & 1);
  sub_1002AC8A4(v4, v7);

LABEL_24:

  v46 = *(v1 + 8);

  v46();
}

uint64_t sub_1002A2348()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 40);
  v7 = *(v0 + 226);

  v8 = v6 + v4;
  *(v6 + OBJC_IVAR___MusicNowPlayingLyricsViewController_lyrics) = 0;

  v9 = *(v6 + v4);
  *v8 = v1;
  LOBYTE(v4) = *(v6 + v4 + 8);
  *(v8 + 8) = 0;
  swift_errorRetain();
  swift_errorRetain();
  sub_1002AC8A4(v9, v4);
  sub_10029A850();

  sub_1002AC8A4(v2, v7);

  v10 = *(v0 + 8);

  return v10();
}

char *sub_1002A248C(char *result)
{
  if (result[OBJC_IVAR___MusicNowPlayingLyricsViewController_state + 8] == 2 && *&result[OBJC_IVAR___MusicNowPlayingLyricsViewController_state] == 0)
  {
    result = *&result[OBJC_IVAR___MusicNowPlayingLyricsViewController_activityIndicator];
    if (result)
    {
      return [result startAnimating];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1002A24D0()
{
  v1 = v0;
  sub_10010FC20(&unk_101189A00, &unk_100EC5500);
  __chkstk_darwin();
  v3 = &v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = (&v85 - v4);
  __chkstk_darwin();
  v7 = &v85 - v6;
  sub_10010FC20(&qword_101189A18, &unk_100EE1DA0);
  __chkstk_darwin();
  v9 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v85 - v10;
  __chkstk_darwin();
  v13 = &v85 - v12;
  LOBYTE(v90[0]) = 6;
  v14 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v14))
  {
    if (*(v0 + OBJC_IVAR___MusicNowPlayingLyricsViewController_state + 8) != 2 || *(v0 + OBJC_IVAR___MusicNowPlayingLyricsViewController_state) != 0)
    {
      goto LABEL_9;
    }

    v16 = OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton;
    v17 = *(v0 + OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton);
    if (!v17)
    {
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    if ([v17 isHidden])
    {
LABEL_9:
      v18 = *(v0 + OBJC_IVAR___MusicNowPlayingLyricsViewController_lyrics);
      if (v18)
      {
        v86 = v9;
        v87 = v5;
        v85 = v3;
        v88 = v1;
        v5 = *(*v18 + 288);

        v5(v19);
        v9 = type metadata accessor for Lyrics.Translation(0);
        v20 = *(v9 - 1);
        v16 = *(v20 + 48);
        v1 = v20 + 48;
        v21 = v16(v13, 1, v9);
        v22 = sub_1000095E8(v13, &qword_101189A18, &unk_100EE1DA0);
        v13 = v18;
        if (v21 != 1)
        {
          goto LABEL_22;
        }

        (*(*v18 + 312))(v22);
        v23 = type metadata accessor for Lyrics.Transliteration(0);
        if ((*(*(v23 - 8) + 48))(v7, 1, v23) != 1)
        {
LABEL_21:
          v22 = sub_1000095E8(v7, &unk_101189A00, &unk_100EC5500);
LABEL_22:
          v5(v22);
          v33 = v16(v11, 1, v9);
          sub_1000095E8(v11, &qword_101189A18, &unk_100EE1DA0);
          v34 = &_swiftEmptySetSingleton;
          if (v33 != 1)
          {
            v35 = *(v88 + OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController);
            if (!v35)
            {
LABEL_87:
              __break(1u);
              goto LABEL_88;
            }

            v36 = v1;
            v37 = *((swift_isaMask & *v35) + 0x3A0);
            v38 = v35;
            v39 = v86;
            v37();

            v40 = v16(v39, 1, v9);
            v41 = v40 != 1;
            sub_1000095E8(v39, &qword_101189A18, &unk_100EE1DA0);
            Hasher.init(_seed:)();
            Hasher._combine(_:)(0);
            Hasher._combine(_:)(v40 != 1);
            v42 = Hasher._finalize()();
            v43 = -1 << *(&_swiftEmptySetSingleton + 32);
            v44 = v42 & ~v43;
            if (((*(&_swiftEmptySetSingleton + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v44) & 1) == 0)
            {
LABEL_30:
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v89 = &_swiftEmptySetSingleton;
              v48 = *(&_swiftEmptySetSingleton + 2);
              if (*(&_swiftEmptySetSingleton + 3) <= v48)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  sub_1003AEEF0(v48 + 1);
                }

                else
                {
                  sub_1003B80D4(v48 + 1);
                }

                v34 = v89;
                Hasher.init(_seed:)();
                Hasher._combine(_:)(0);
                Hasher._combine(_:)(v41);
                v49 = Hasher._finalize()();
                v50 = -1 << v34[32];
                v44 = v49 & ~v50;
                if ((*&v34[((v44 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v44))
                {
                  v51 = ~v50;
                  do
                  {
                    v52 = *(*(v34 + 6) + v44);
                    if ((v52 & 0x80000000) == 0 && (((v40 != 1) ^ v52) & 1) == 0)
                    {
                      goto LABEL_67;
                    }

                    v44 = (v44 + 1) & v51;
                  }

                  while (((*&v34[((v44 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v44) & 1) != 0);
                }
              }

              else if (isUniquelyReferenced_nonNull_native)
              {
                v34 = &_swiftEmptySetSingleton;
              }

              else
              {
                sub_1001938AC();
                v34 = v89;
              }

              v40 = v88;
              *&v34[((v44 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] |= 1 << v44;
              *(*(v34 + 6) + v44) = v41;
              v53 = *(v34 + 2);
              v54 = __OFADD__(v53, 1);
              v55 = v53 + 1;
              if (v54)
              {
                __break(1u);
LABEL_77:
                __break(1u);
                goto LABEL_78;
              }

              *(v34 + 2) = v55;
LABEL_45:
              v56 = v87;
              (*(*v13 + 312))();
              v57 = type metadata accessor for Lyrics.Transliteration(0);
              v58 = *(*(v57 - 8) + 48);
              v59 = v58(v56, 1, v57);
              sub_1000095E8(v56, &unk_101189A00, &unk_100EC5500);
              if (v59 == 1)
              {
                goto LABEL_70;
              }

              v60 = *(v40 + OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController);
              if (!v60)
              {
LABEL_88:
                __break(1u);
                return;
              }

              v61 = *((swift_isaMask & *v60) + 0x3B8);
              v62 = v60;
              v63 = v85;
              v61();

              v64 = v58(v63, 1, v57);
              sub_1000095E8(v63, &unk_101189A00, &unk_100EC5500);
              if (v64 == 1)
              {
                LOBYTE(v44) = 0x80;
              }

              else
              {
                LOBYTE(v44) = -127;
              }

              Hasher.init(_seed:)();
              Hasher._combine(_:)(1uLL);
              Hasher._combine(_:)(v64 != 1);
              v65 = Hasher._finalize()();
              v66 = -1 << v34[32];
              v36 = v65 & ~v66;
              if ((*&v34[((v36 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v36))
              {
                v67 = ~v66;
                while (1)
                {
                  v68 = *(*(v34 + 6) + v36);
                  if (v68 < 0 && (((v64 != 1) ^ v68) & 1) == 0)
                  {
                    break;
                  }

                  v36 = (v36 + 1) & v67;
                  if (((*&v34[((v36 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v36) & 1) == 0)
                  {
                    goto LABEL_56;
                  }
                }

LABEL_70:
                v77 = OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton;
                v78 = *(v40 + OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton);
                if (v78)
                {
                  *&v78[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_availableOptions] = v34;

                  v79 = v78;

                  sub_100656E20();

                  v80 = *(v40 + v77);
                  if (v80)
                  {
                    [v80 setHidden:0];
                    v81 = *(v40 + v77);
                    if (v81)
                    {
                      v82 = v81;

                      [v82 setEnabled:1];

                      v83 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 232);

                      v83(5);

                      v25 = *(v40 + v77);
                      if (v25)
                      {
                        goto LABEL_74;
                      }

                      goto LABEL_83;
                    }

LABEL_82:
                    __break(1u);
LABEL_83:
                    __break(1u);
                    goto LABEL_84;
                  }

LABEL_81:
                  __break(1u);
                  goto LABEL_82;
                }

LABEL_80:
                __break(1u);
                goto LABEL_81;
              }

LABEL_56:
              v69 = swift_isUniquelyReferenced_nonNull_native();
              v89 = v34;
              v70 = *(v34 + 2);
              if (*(v34 + 3) > v70)
              {
                if ((v69 & 1) == 0)
                {
                  sub_1001938AC();
                  v34 = v89;
                }

                goto LABEL_68;
              }

              if (v69)
              {
                sub_1003AEEF0(v70 + 1);
              }

              else
              {
                sub_1003B80D4(v70 + 1);
              }

              v34 = v89;
              Hasher.init(_seed:)();
              Hasher._combine(_:)(1uLL);
              Hasher._combine(_:)(v64 != 1);
              v71 = Hasher._finalize()();
              v72 = -1 << v34[32];
              v36 = v71 & ~v72;
              if (((*&v34[((v36 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v36) & 1) == 0)
              {
LABEL_68:
                *&v34[((v36 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] |= 1 << v36;
                *(*(v34 + 6) + v36) = v44;
                v75 = *(v34 + 2);
                v54 = __OFADD__(v75, 1);
                v76 = v75 + 1;
                if (!v54)
                {
                  *(v34 + 2) = v76;
                  goto LABEL_70;
                }

                goto LABEL_77;
              }

              v73 = ~v72;
              while (1)
              {
                v74 = *(*(v34 + 6) + v36);
                if (v74 < 0 && (((v64 != 1) ^ v74) & 1) == 0)
                {
                  break;
                }

                v36 = (v36 + 1) & v73;
                if (((*&v34[((v36 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v36) & 1) == 0)
                {
                  goto LABEL_68;
                }
              }

LABEL_67:
              ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              goto LABEL_68;
            }

            v45 = ~v43;
            while (1)
            {
              v46 = *(*(&_swiftEmptySetSingleton + 6) + v44);
              if ((v46 & 0x80000000) == 0 && (((v40 != 1) ^ v46) & 1) == 0)
              {
                break;
              }

              v44 = (v44 + 1) & v45;
              if (((*(&_swiftEmptySetSingleton + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v44) & 1) == 0)
              {
                goto LABEL_30;
              }
            }
          }

          v40 = v88;
          goto LABEL_45;
        }

        sub_1000095E8(v7, &unk_101189A00, &unk_100EC5500);
        v1 = v88;
      }

      v16 = OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton;
      v24 = *(v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton);
      if (!v24)
      {
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      [v24 setHidden:1];
      v25 = *(v16 + v1);
      if (v25)
      {
LABEL_74:
        v84 = [v25 contextMenuInteraction];
        [v84 dismissMenu];

        return;
      }

      __break(1u);
    }

    v26 = *(v16 + v1);
    if (!v26)
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    *&v26[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_availableOptions] = &_swiftEmptySetSingleton;
    v27 = v26;

    sub_100656E20();

    v28 = *(v16 + v1);
    if (!v28)
    {
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v29 = objc_opt_self();
    v30 = v28;
    v31 = [v29 tertiaryLabelColor];
    [v30 setTintColor:v31];

    v32 = *(v16 + v1);
    if (!v32)
    {
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    [v32 setEnabled:0];
    v25 = *(v16 + v1);
    if (!v25)
    {
      __break(1u);
      goto LABEL_21;
    }

    goto LABEL_74;
  }
}

void sub_1002A2FDC(void *a1)
{
  v217 = a1;
  v208 = type metadata accessor for Logger();
  v213 = *(v208 - 8);
  __chkstk_darwin();
  v212 = v183 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184010, &qword_100EBF9E8);
  __chkstk_darwin();
  v192 = v183 - v3;
  sub_10010FC20(&qword_101189A10, &unk_100EBF9F0);
  __chkstk_darwin();
  v191 = v183 - v4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v201 = *(v5 - 8);
  __chkstk_darwin();
  v199 = v183 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = type metadata accessor for DispatchQoS();
  v198 = *(v200 - 8);
  __chkstk_darwin();
  v197 = v183 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for SyncedLyricsSharingTransitionInfo(0);
  v202 = *(v209 - 8);
  __chkstk_darwin();
  v203 = v8;
  v9 = v183 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for DispatchTime();
  v210 = *(v207 - 8);
  __chkstk_darwin();
  v196 = v183 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v206 = v183 - v11;
  v205 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin();
  v204 = v183 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101184020, &unk_100EC76D0);
  __chkstk_darwin();
  v194 = v183 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = v183 - v14;
  v16 = type metadata accessor for Lyrics.TextLine(0);
  v17 = *(v16 - 8);
  v215 = v16;
  v216 = v17;
  v18 = *(v17 + 64);
  __chkstk_darwin();
  v211 = (v183 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v20 = v183 - v19;
  __chkstk_darwin();
  v195 = v183 - v21;
  __chkstk_darwin();
  v193 = v183 - v22;
  __chkstk_darwin();
  v24 = v183 - v23;
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  __chkstk_darwin();
  v26 = v183 - v25;
  v27 = type metadata accessor for Song();
  v28 = *(v27 - 8);
  v218 = v27;
  v219 = v28;
  __chkstk_darwin();
  __chkstk_darwin();
  v31 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController];
  if (!v31)
  {
    __break(1u);
    goto LABEL_46;
  }

  v32 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_song];
  if (!v32)
  {
    return;
  }

  v188 = v1;
  v189 = v30;
  v186 = v5;
  v187 = v9;
  v214 = v183 - v29;
  v190 = v24;
  v33 = v32;
  v34 = v31;
  v35 = v218;
  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
  v36 = v219;
  if ((*(v219 + 48))(v26, 1, v35) == 1)
  {

    sub_1000095E8(v26, &unk_101183960, &unk_100EBCF90);
    return;
  }

  v185 = v33;
  v37 = v214;
  v38 = (*(v36 + 32))(v214, v26, v35);
  v183[1] = v31;
  v39 = (*((swift_isaMask & *v34) + 0x220))(v38);
  if (!v39)
  {
    (*(v36 + 8))(v37, v35);

    return;
  }

  v40 = v39;
  v184 = v34;
  (*(*v39 + 416))(v217);
  v41 = v215;
  if ((*(v216 + 48))(v15, 1, v215) == 1)
  {
    (*(v219 + 8))(v214, v35);

    sub_1000095E8(v15, &qword_101184020, &unk_100EC76D0);
    return;
  }

  v183[0] = v40;
  v42 = v190;
  v43 = sub_1002AD430(v15, v190, type metadata accessor for Lyrics.TextLine);
  (*(v42 + v41[16]))(v43);
  v44 = String.count.getter();

  v45 = sub_1001EBB88();
  v46 = v184;
  if (v47)
  {
    v49 = v212;
    v48 = v213;
    v50 = v211;
    if (v44 <= 150)
    {
      goto LABEL_11;
    }

LABEL_16:
    v59 = Logger.lyrics.unsafeMutableAddressor();
    v60 = v208;
    (v48)[2](v49, v59, v208);
    v61 = v190;
    sub_1002AD3C8(v190, v20, type metadata accessor for Lyrics.TextLine);
    sub_1002AD3C8(v61, v50, type metadata accessor for Lyrics.TextLine);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v217 = swift_slowAlloc();
      v228[0] = v217;
      *v64 = 136446722;
      v65 = (*&v20[v41[16]])();
      v66 = v41;
      v68 = v67;
      sub_1002AD498(v20, type metadata accessor for Lyrics.TextLine);
      v69 = sub_1000105AC(v65, v68, v228);

      *(v64 + 4) = v69;
      *(v64 + 12) = 2050;
      (*(v50 + v66[16]))(v70);
      v71 = String.count.getter();

      sub_1002AD498(v50, type metadata accessor for Lyrics.TextLine);
      *(v64 + 14) = v71;
      *(v64 + 22) = 2050;
      v72 = sub_1001EBB88();
      v74 = 150;
      if ((v73 & 1) == 0)
      {
        v74 = v72;
      }

      *(v64 + 24) = v74;
      _os_log_impl(&_mh_execute_header, v62, v63, "Trying to share a line that is too long to be shared (text=%{public}s, length=%{public}ld, maxCharacterCount=%{public}ld)", v64, 0x20u);
      sub_10000959C(v217);

      (*(v213 + 1))(v49, v208);
      (*(v219 + 8))(v214, v218);
      v75 = v190;
    }

    else
    {
      sub_1002AD498(v50, type metadata accessor for Lyrics.TextLine);

      (v48[1])(v49, v60);
      (*(v219 + 8))(v214, v218);
      sub_1002AD498(v20, type metadata accessor for Lyrics.TextLine);
      v75 = v190;
    }

    goto LABEL_43;
  }

  v49 = v212;
  v48 = v213;
  v50 = v211;
  if (v45 < v44)
  {
    goto LABEL_16;
  }

LABEL_11:
  if ((*((swift_isaMask & *v184) + 0x1F0))(v45))
  {
    v52 = v51;
    ObjectType = swift_getObjectType();
    (*(v52 + 48))(v46, ObjectType, v52);
    swift_unknownObjectRelease();
  }

  v54 = *(v219 + 16);
  v54(v189, v214, v218);
  v55 = v188;
  v56 = *&v188[OBJC_IVAR___MusicNowPlayingLyricsViewController_lyrics];
  if (v56)
  {
    v57 = *(v56 + 24);
    v212 = *(v56 + 16);
    v58 = v57;

    v55 = v188;
  }

  else
  {
    v212 = 0;
    v58 = 0;
  }

  memset(v232, 0, sizeof(v232));
  v233 = 0;
  v234 = xmmword_100EBCEF0;
  v213 = v55;
  PresentationSource.init(viewController:position:)(v213, v232, v228);
  SyncedLyricsViewController.reportConcernData.getter(v224);
  v211 = type metadata accessor for LyricsSharingActivityViewController(0);
  v76 = objc_allocWithZone(v211);
  v77 = &v76[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsID];
  *v77 = 0;
  v77[1] = 0;
  *&v76[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_selectionManager] = 0;
  *&v76[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsLoader] = 0;
  v78 = &v76[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_reportConcernData];
  v78[1] = 0u;
  v78[2] = 0u;
  *v78 = xmmword_100EBCEE0;
  *&v76[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_windowBackgroundView] = 0;
  *&v76[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_leadingSilence] = 0;
  v76[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_needsLyricsReporting] = 0;
  *&v76[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_visibleDuration] = 0;
  v79 = OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsVisibilityStart;
  v80 = type metadata accessor for Date();
  (*(*(v80 - 8) + 56))(&v76[v79], 1, 1, v80);
  v76[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_isVisible] = 0;
  *&v76[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_backgroundObserver] = 0;
  *&v76[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_foregroundObserver] = 0;
  *&v76[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_presentationObserver] = 0;
  *&v76[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_dismissalObserver] = 0;
  v54(&v76[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_song], v189, v218);
  *v77 = v212;
  v77[1] = v58;
  sub_10012B7A8(v228, &v76[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_presentationSource]);
  v81 = v224[1];
  *v78 = v224[0];
  v78[1] = v81;
  v78[2] = v224[2];
  type metadata accessor for LyricsSelectionViewController(0);
  *&v76[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_selectionViewController] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v82 = [objc_allocWithZone(LPLinkMetadata) init];
  v83 = OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_headerMetadata;
  *&v76[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_headerMetadata] = v82;
  v84 = sub_100564124();
  v85 = [v84 specialization];

  if (v85)
  {
    objc_opt_self();
    v86 = swift_dynamicCastObjCClass();
    if (!v86)
    {
    }
  }

  else
  {
    v86 = 0;
  }

  v87 = *&v76[v83];
  v88 = [v86 artwork];
  [v87 setImage:v88];

  isa = Array._bridgeToObjectiveC()().super.isa;
  v223.receiver = v76;
  v223.super_class = v211;
  v90 = objc_msgSendSuper2(&v223, "initWithActivityItems:applicationActivities:", isa, 0);

  v91 = v90;
  UIViewController.traitOverrides.getter();
  sub_100050078();
  dispatch thunk of UIMutableTraits.subscript.setter();
  UIViewController.traitOverrides.setter();
  sub_1001E0BC4(0);

  sub_10012BA6C(v228);
  v92 = *(v219 + 8);
  v219 += 8;
  v92(v189, v218);
  v93 = v213;
  v94 = [v213 traitCollection];
  sub_1001D1C24();
  sub_1001D1C78();
  UITraitCollection.subscript.getter();

  if (!LOBYTE(v228[0]))
  {

    v96 = v190;
    v95 = v209;
    goto LABEL_30;
  }

  v95 = v209;
  v97 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v96 = v190;
  if (v97)
  {
LABEL_30:
    v212 = v91;
    v215 = v92;
    v98 = v193;
    sub_1002AD3C8(v96, v193, type metadata accessor for Lyrics.TextLine);
    v99 = v217;
    v100 = *(v217 + *(v95 + 20));
    v101 = *((swift_isaMask & *v46) + 0x1D8);
    v102 = v100;
    v101(v225);
    v103 = [v93 view];
    if (v103)
    {
      v104 = v103;
      [v103 frame];
      v106 = v105;
      v108 = v107;
      v110 = v109;
      v112 = v111;

      v235.origin.x = v106;
      v235.origin.y = v108;
      v235.size.width = v110;
      v235.size.height = v112;
      Width = CGRectGetWidth(v235);
      v114 = objc_allocWithZone(type metadata accessor for LyricsSharingTransitionView());
      sub_1005F0848(v98, v102, v225, Width);
      v116 = v115;
      sub_1002AD4F8(v225);

      v117 = v209;
      v118 = (v99 + *(v209 + 28));
      v119 = *v118;
      v120 = v118[1];
      v121 = v118[2];
      v122 = v118[3];
      v123 = v116;
      v101(v226);
      v124 = sub_1002AD4F8(v226);
      v125 = -*&v226[73];
      (v101)(v227, v124);
      sub_1002AD4F8(v227);
      v236.origin.x = v119;
      v236.origin.y = v120;
      v236.size.width = v121;
      v236.size.height = v122;
      v237 = CGRectInset(v236, v125, -*&v227[73]);
      [v123 setFrame:{v237.origin.x, v237.origin.y, v237.size.width, v237.size.height}];
      [*&v123[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_finalLabel] setTextAlignment:*(v99 + v117[6])];
      v126 = *&v123[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_containerView];
      v101(v228);
      sub_1002AD4F8(v228);
      v220 = v229;
      v221 = v230;
      v222 = v231;
      [v126 setTransform:&v220];

      v127 = (v99 + v117[9]);
      v128 = v127[1];
      v220 = *v127;
      v221 = v128;
      v222 = v127[2];
      [v123 setTransform:&v220];

      (*(v99 + v117[10]))();
      v129 = v213;
      v130 = [v213 view];
      if (v130)
      {
        v131 = v130;
        [v130 addSubview:v123];

        v132 = *&v129[OBJC_IVAR___MusicNowPlayingLyricsViewController_sharingTransitionView];
        *&v129[OBJC_IVAR___MusicNowPlayingLyricsViewController_sharingTransitionView] = v123;
        v133 = v123;

        v134 = v187;
        if (qword_10117F5A0 != -1)
        {
          swift_once();
        }

        v135 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_101218A70 timingParameters:0.0];
        v136 = swift_allocObject();
        *(v136 + 16) = v133;
        *&v222 = sub_1002AD54C;
        *(&v222 + 1) = v136;
        *&v220 = _NSConcreteStackBlock;
        *(&v220 + 1) = 1107296256;
        v205 = &v221;
        *&v221 = sub_10002BC98;
        *(&v221 + 1) = &unk_1010A3BF0;
        v137 = _Block_copy(&v220);
        v138 = v133;

        v211 = v135;
        [(objc_class *)v135 addAnimations:v137];
        _Block_release(v137);
        [(objc_class *)v135 startAnimation];
        sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
        v208 = static OS_dispatch_queue.main.getter();
        v139 = v196;
        static DispatchTime.now()();
        + infix(_:_:)();
        v209 = *(v210 + 8);
        v210 += 8;
        (v209)(v139, v207);
        v140 = v195;
        sub_1002AD3C8(v190, v195, type metadata accessor for Lyrics.TextLine);
        sub_1002AD3C8(v217, v134, type metadata accessor for SyncedLyricsSharingTransitionInfo);
        v141 = (*(v216 + 80) + 40) & ~*(v216 + 80);
        v142 = (v18 + v141 + 7) & 0xFFFFFFFFFFFFFFF8;
        v143 = v134;
        v144 = (*(v202 + 80) + v142 + 8) & ~*(v202 + 80);
        v145 = swift_allocObject();
        v146 = v212;
        v145[2] = v138;
        v145[3] = v146;
        v145[4] = v183[0];
        sub_1002AD430(v140, v145 + v141, type metadata accessor for Lyrics.TextLine);
        v147 = v213;
        *(v145 + v142) = v213;
        sub_1002AD430(v143, v145 + v144, type metadata accessor for SyncedLyricsSharingTransitionInfo);
        *&v222 = sub_1002AD554;
        *(&v222 + 1) = v145;
        *&v220 = _NSConcreteStackBlock;
        *(&v220 + 1) = 1107296256;
        *&v221 = sub_10002BC98;
        *(&v221 + 1) = &unk_1010A3C40;
        v148 = _Block_copy(&v220);
        v149 = v147;
        v150 = v146;
        v151 = v138;

        v152 = v197;
        static DispatchQoS.unspecified.getter();
        *&v220 = _swiftEmptyArrayStorage;
        sub_10002473C();
        sub_10010FC20(&qword_101182970, &qword_100EBD250);
        sub_10002489C();
        v153 = v199;
        v154 = v186;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v155 = v206;
        v156 = v208;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();

        _Block_release(v148);

        (*(v201 + 8))(v153, v154);
        (*(v198 + 8))(v152, v200);
        (v209)(v155, v207);
        (v215)(v214, v218);
        goto LABEL_42;
      }

LABEL_47:
      __break(1u);
      return;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v157 = v183[0];
  v158 = *(v183[0] + 48);
  v159 = v194;
  sub_1002AD3C8(v190, v194, type metadata accessor for Lyrics.TextLine);
  v160 = (*(v216 + 56))(v159, 0, 1, v215);
  v161 = v192;
  (*(*v157 + 232))(v160);
  v162 = type metadata accessor for Locale.Language();
  v163 = *(v162 - 8);
  if ((*(v163 + 48))(v161, 1, v162) == 1)
  {
    v164 = &unk_101184010;
    v165 = &qword_100EBF9E8;
    v166 = v161;
  }

  else
  {
    v167 = v161;
    v168 = v191;
    Locale.Language.languageCode.getter();
    (*(v163 + 8))(v167, v162);
    v169 = v168;
    v170 = type metadata accessor for Locale.LanguageCode();
    v171 = *(v170 - 8);
    if ((*(v171 + 48))(v169, 1, v170) != 1)
    {
      v174 = Locale.LanguageCode.identifier.getter();
      v175 = v169;
      v173 = v176;
      (*(v171 + 8))(v175, v170);
      v172 = v174;
      goto LABEL_41;
    }

    v164 = &qword_101189A10;
    v165 = &unk_100EBF9F0;
    v166 = v169;
  }

  sub_1000095E8(v166, v164, v165);
  v172 = 0;
  v173 = 0;
LABEL_41:
  v177 = v158;
  v178 = v194;
  sub_1001E3574(v177, v194, v172, v173, *(v183[0] + OBJC_IVAR____TtC7LyricsX6Lyrics_leadingSilence));

  sub_1000095E8(v178, &qword_101184020, &unk_100EC76D0);
  v179 = v187;
  sub_1002AD3C8(v217, v187, type metadata accessor for SyncedLyricsSharingTransitionInfo);
  v180 = (*(v202 + 80) + 16) & ~*(v202 + 80);
  v181 = swift_allocObject();
  sub_1002AD430(v179, v181 + v180, type metadata accessor for SyncedLyricsSharingTransitionInfo);
  v228[4] = sub_1002ADCB0;
  v228[5] = v181;
  v228[0] = _NSConcreteStackBlock;
  v228[1] = 1107296256;
  v228[2] = sub_10002BC98;
  v228[3] = &unk_1010A3BA0;
  v182 = _Block_copy(v228);

  [v213 presentViewController:v91 animated:1 completion:v182];

  _Block_release(v182);

  v92(v214, v218);
LABEL_42:
  v75 = v190;
LABEL_43:
  sub_1002AD498(v75, type metadata accessor for Lyrics.TextLine);
}

id sub_1002A4A64(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_highlightView);
  v5 = 0x3FF0000000000000;
  v6 = 0;
  v7 = 0;
  v8 = 0x3FF0000000000000;
  v9 = 0;
  v10 = 0;
  [v2 setTransform:&v5];
  v3 = *(a1 + OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_containerView);
  v5 = 0x3FF0000000000000;
  v6 = 0;
  v7 = 0;
  v8 = 0x3FF0000000000000;
  v9 = 0;
  v10 = 0;
  return [v3 setTransform:&v5];
}

void sub_1002A4AEC(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v50 = a6;
  v51 = a2;
  v52 = a5;
  v45 = a4;
  v46 = a3;
  v47 = *(type metadata accessor for SyncedLyricsSharingTransitionInfo(0) - 8);
  __chkstk_darwin();
  v48 = v7;
  v49 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184010, &qword_100EBF9E8);
  __chkstk_darwin();
  v9 = &v43 - v8;
  sub_10010FC20(&qword_101189A10, &unk_100EBF9F0);
  __chkstk_darwin();
  v44 = &v43 - v10;
  sub_10010FC20(&qword_101184020, &unk_100EC76D0);
  __chkstk_darwin();
  v12 = &v43 - v11;
  if (qword_10117F5A8 != -1)
  {
    swift_once();
  }

  v13 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_101218A78 timingParameters:0.0];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  v57 = sub_1002AD638;
  v58 = v14;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_10002BC98;
  v56 = &unk_1010A3C90;
  v15 = _Block_copy(&aBlock);
  v16 = a1;

  [v13 addAnimations:v15];
  _Block_release(v15);
  if (qword_10117F5B0 != -1)
  {
    swift_once();
  }

  v17 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_101218A80 timingParameters:0.0];
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  v57 = sub_1002AD65C;
  v58 = v18;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_10002BC98;
  v56 = &unk_1010A3CE0;
  v19 = _Block_copy(&aBlock);
  v20 = v16;

  [v17 addAnimations:v19];
  _Block_release(v19);
  [v13 startAnimation];
  [v17 startAnimation];
  v21 = v46;
  v22 = *(v46 + 48);
  sub_1002AD3C8(v45, v12, type metadata accessor for Lyrics.TextLine);
  v23 = type metadata accessor for Lyrics.TextLine(0);
  v24 = (*(*(v23 - 8) + 56))(v12, 0, 1, v23);
  (*(*v21 + 232))(v24);
  v25 = type metadata accessor for Locale.Language();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v9, 1, v25) == 1)
  {
    v27 = &unk_101184010;
    v28 = &qword_100EBF9E8;
    v29 = v9;
  }

  else
  {
    v30 = v44;
    Locale.Language.languageCode.getter();
    (*(v26 + 8))(v9, v25);
    v31 = type metadata accessor for Locale.LanguageCode();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v30, 1, v31) != 1)
    {
      v35 = Locale.LanguageCode.identifier.getter();
      v34 = v36;
      (*(v32 + 8))(v30, v31);
      v33 = v35;
      goto LABEL_11;
    }

    v27 = &qword_101189A10;
    v28 = &unk_100EBF9F0;
    v29 = v30;
  }

  sub_1000095E8(v29, v27, v28);
  v33 = 0;
  v34 = 0;
LABEL_11:
  v37 = v51;
  sub_1001E3574(v22, v12, v33, v34, *(v21 + OBJC_IVAR____TtC7LyricsX6Lyrics_leadingSilence));

  sub_1000095E8(v12, &qword_101184020, &unk_100EC76D0);
  v38 = v52;
  [v37 setTransitioningDelegate:v52];
  v39 = v49;
  sub_1002AD3C8(v50, v49, type metadata accessor for SyncedLyricsSharingTransitionInfo);
  v40 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v41 = swift_allocObject();
  sub_1002AD430(v39, v41 + v40, type metadata accessor for SyncedLyricsSharingTransitionInfo);
  v57 = sub_1002AD850;
  v58 = v41;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_10002BC98;
  v56 = &unk_1010A3D30;
  v42 = _Block_copy(&aBlock);

  [v38 presentViewController:v37 animated:1 completion:v42];
  _Block_release(v42);
}

double sub_1002A51EC()
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  *&v1 = __chkstk_darwin().n128_u64[0];
  v3 = &v24 - v2;
  v4 = OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying;
  v5 = *&v0[OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying];
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = [v5 tracklist];
  v7 = [v6 vocalsControlCommand];

  if (!v7)
  {
    goto LABEL_13;
  }

  if (([v7 isDisabled] & 1) != 0 || (v0[OBJC_IVAR___MusicNowPlayingLyricsViewController_areControlsHidden] & 1) != 0 || (v8 = *&v0[v4]) == 0)
  {
LABEL_12:
    swift_unknownObjectRelease();
LABEL_13:
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v3, 1, 1, v20);
    type metadata accessor for MainActor();
    v21 = static MainActor.shared.getter();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = &protocol witness table for MainActor;
    sub_1001F4CB8(0, 0, v3, &unk_100EC55C0, v22);
    goto LABEL_14;
  }

  v9 = v8;
  v10 = [v9 tracklist];
  v11 = [v10 playingItem];

  if (!v11)
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [v9 tracklist];
  v13 = [v12 vocalsControlCommand];

  if (!v13)
  {

    goto LABEL_11;
  }

  swift_unknownObjectRelease();
  v14 = v0;
  v15 = MPCPlayerResponseItem.hasStoreLyrics.getter();

  if ((v15 & 1) == 0)
  {
    goto LABEL_12;
  }

  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
  type metadata accessor for MainActor();
  v17 = v14;
  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = &protocol witness table for MainActor;
  v19[4] = v17;
  sub_1001F4CB8(0, 0, v3, &unk_100EC55D0, v19);
  swift_unknownObjectRelease();
LABEL_14:

  return result;
}

uint64_t sub_1002A54E4()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002A5578, v2, v1);
}

uint64_t sub_1002A5578()
{

  if (qword_10117F8A8 != -1)
  {
    swift_once();
  }

  sub_10058BB38(1, 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002A562C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 272) = a4;
  type metadata accessor for MainActor();
  *(v4 + 280) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002A56C4, v6, v5);
}

uint64_t sub_1002A56C4()
{

  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 112) = sub_1002AD3B8;
  *(v0 + 120) = v1;
  *(v0 + 128) = 1;
  *(v0 + 136) = 3;
  *(v0 + 144) = sub_1002ADCD4;
  *(v0 + 152) = v2;
  *(v0 + 160) = sub_1002AD3C0;
  *(v0 + 168) = v3;
  *(v0 + 176) = sub_1002ADCD0;
  *(v0 + 184) = v4;
  if (qword_10117F8A8 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = 1;
  v5 = *(v0 + 112);
  *(v0 + 40) = *(v0 + 128);
  v6 = *(v0 + 160);
  *(v0 + 56) = *(v0 + 144);
  *(v0 + 72) = v6;
  *(v0 + 88) = *(v0 + 176);
  *(v0 + 24) = v5;
  swift_unknownObjectWeakInit();

  sub_1001D1980(v0 + 112, v0 + 192);
  sub_10058B0DC((v0 + 16));

  sub_1001D19DC(v0 + 112);
  sub_100198CAC(v0 + 16);
  v7 = *(v0 + 8);

  return v7();
}

double sub_1002A58C8@<D0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *&Strong[OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationToggleSlider];
    if (v5)
    {
      v6 = v5;
      v7 = v4;
      [v6 bounds];
      v21[0] = v5;
      v21[1] = v8;
      v21[2] = v9;
      v21[3] = v10;
      v21[4] = v11;
      v22 = 0;
      PresentationSource.Position.init(source:permittedArrowDirections:)(v21, 15, v13);
      v17[0] = v13[0];
      v17[1] = v13[1];
      v18 = v14;
      v19 = v15;
      v20 = v16;
      PresentationSource.init(viewController:position:)(v7, v17, a2);

      return result;
    }
  }

  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 64) = 1;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  return result;
}

void sub_1002A59D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = *(v4 + OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldIgnoreFullscreenTimer);
      *(v4 + OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldIgnoreFullscreenTimer) = 0;
      if (v5 == 1)
      {
        sub_1005C4F50(4.0);
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1002A5A68(uint64_t a1)
{
  sub_10010FC20(&qword_101189A18, &unk_100EE1DA0);
  __chkstk_darwin();
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v44 - v5;
  sub_10010FC20(&unk_101189A00, &unk_100EC5500);
  __chkstk_darwin();
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v44 - v9;
  v11 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_lyrics];
  if (v11)
  {
    if (a1 == 8)
    {
      v46 = v1;
      v12 = *(*v11 + 312);
      v13 = *v11 + 312;

      v44 = v13;
      v45 = v12;
      v12(v14);
      v15 = type metadata accessor for Lyrics.Transliteration(0);
      v16 = *(*(v15 - 8) + 48);
      v17 = v16(v10, 1, v15);
      v18 = sub_1000095E8(v10, &unk_101189A00, &unk_100EC5500);
      if (v17 == 1 || ((*(*v11 + 288))(v18), v19 = type metadata accessor for Lyrics.Translation(0), v20 = (*(*(v19 - 8) + 48))(v6, 1, v19), v18 = sub_1000095E8(v6, &qword_101189A18, &unk_100EE1DA0), v20 == 1))
      {
        v45(v18);
        v21 = v16(v8, 1, v15);
        v22 = sub_1000095E8(v8, &unk_101189A00, &unk_100EC5500);
        if (v21 == 1)
        {
          (*(*v11 + 288))(v22);
          v23 = type metadata accessor for Lyrics.Translation(0);
          v24 = (*(*(v23 - 8) + 48))(v4, 1, v23);
          v1 = v46;
          if (v24 == 1)
          {

            sub_1000095E8(v4, &qword_101189A18, &unk_100EE1DA0);
            return;
          }

          sub_1000095E8(v4, &qword_101189A18, &unk_100EE1DA0);
          a1 = 3;
        }

        else
        {
          a1 = 4;
          v1 = v46;
        }
      }

      else
      {
        a1 = 6;
        v1 = v46;
      }
    }

    else
    {
    }

    if (sub_1005875D0(a1))
    {
      goto LABEL_18;
    }

    v25 = String._bridgeToObjectiveC()();
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    v27 = OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton;
    v28 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton];
    if (v28)
    {
      [v28 setShowsMenuAsPrimaryAction:0];
      v29 = *&v1[v27];
      if (v29)
      {
        sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
        v30 = swift_allocObject();
        *(v30 + 16) = v26;
        *(v30 + 24) = a1;
        v31 = v29;
        v32 = v26;
        v33 = v31;
        v46 = v25;

        v34 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        [v33 addAction:v34 forControlEvents:64];

        v35 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v36 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v37 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v38 = swift_allocObject();
        v38[2] = v37;
        v39 = v32;
        v40 = v46;
        v38[3] = v46;
        v38[4] = v39;
        v41 = swift_allocObject();
        swift_unknownObjectWeakInit();
        *&v54 = sub_1002AD20C;
        *(&v54 + 1) = v35;
        LOWORD(v55) = 257;
        *(&v55 + 1) = 3;
        *&v56 = sub_1002AD214;
        *(&v56 + 1) = v36;
        *&v57 = sub_1002AD230;
        *(&v57 + 1) = v38;
        *&v58 = sub_1002AD23C;
        *(&v58 + 1) = v41;
        v42 = qword_10117F8A8;
        v43 = v40;

        if (v42 != -1)
        {
          swift_once();
        }

        v48[0] = a1;
        v50 = v55;
        v51 = v56;
        v52 = v57;
        v53 = v58;
        v49 = v54;
        swift_unknownObjectWeakInit();

        sub_1001D1980(&v54, &v47);
        sub_10058B0DC(v48);

        sub_1001D19DC(&v54);

        sub_100198CAC(v48);
LABEL_18:

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

double sub_1002A6144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a2 + 16) = 1;
  if (qword_10117F8A8 != -1)
  {
    swift_once();
  }

  sub_10058BB38(a3, 0);

  return result;
}

void sub_1002A61E8(uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton);
    if (v5)
    {
      [v5 bounds];
      v18[0] = v5;
      v18[1] = v6;
      v18[2] = v7;
      v18[3] = v8;
      v18[4] = v9;
      v19 = 0;
      PresentationSource.Position.init(source:permittedArrowDirections:)(v18, 15, v10);
      v14[0] = v10[0];
      v14[1] = v10[1];
      v15 = v11;
      v16 = v12;
      v17 = v13;
      PresentationSource.init(viewController:position:)(v4, v14, a2);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 64) = 1;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
  }
}

void sub_1002A62CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1005E8FAC();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1002A6348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v7 = Strong;
  v8 = OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton;
  v9 = *(Strong + OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton);
  if (!v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  [v9 removeActionForIdentifier:a3 forControlEvents:64];
  v10 = *&v7[v8];
  if (!v10)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v10 setShowsMenuAsPrimaryAction:1];
  swift_beginAccess();
  if (*(a4 + 16) != 1)
  {
    goto LABEL_7;
  }

  v11 = *&v7[v8];
  if (!v11)
  {
LABEL_15:
    __break(1u);
    return;
  }

  [v11 performPrimaryAction];
LABEL_7:
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = *(v12 + OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldIgnoreFullscreenTimer);
    *(v12 + OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldIgnoreFullscreenTimer) = 0;
    if (v13 == 1)
    {
      sub_1005C4F50(4.0);
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1002A646C(void *a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v4 = Strong, v5 = swift_unknownObjectWeakLoadStrong(), v4, v5))
  {
    sub_1005E0230(a2);
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = type metadata accessor for MetricsEvent.Page(0);
    (*(*(v6 - 8) + 56))(a2, 1, 1, v6);
  }
}

id MPCPlayerResponseItem.hasStoreLyrics.getter()
{
  v1 = [v0 metadataObject];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 innermostModelObject];

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4 && (v5 = [v4 lyrics]) != 0)
  {
    v6 = v5;
    v7 = [v5 hasStoreLyrics];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t type metadata accessor for NowPlayingLyricsViewController(uint64_t a1)
{
  result = qword_1011899E0;
  if (!qword_1011899E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1002A664C()
{
  v0 = type metadata accessor for VocalsAttenuationSlider();
  v1 = [objc_allocWithZone(v0) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  ControlEventHandling<>.on(_:handler:)(64, sub_1002AD1E0, v2, v0);

  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  ControlEventHandling<>.on(_:handler:)(0x10000, sub_1002AD1E8, v3, v0);

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  ControlEventHandling<>.on(_:handler:)(4096, sub_1002AD1F0, v4, v0);

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  ControlEventHandling<>.on(_:handler:)(0x40000, sub_1002AD1F8, v5, v0);

  return v1;
}

double sub_1002A67F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying);
    if (v5)
    {
      v6 = [v5 tracklist];
      v7 = [v6 vocalsControlCommand];

      if (v7)
      {
        if ([v7 isDisabled])
        {
          sub_1002A88BC([v7 disabledReason]);
          swift_unknownObjectRelease();

          return result;
        }

        swift_unknownObjectRelease();
      }
    }

    if (qword_10117F8A8 != -1)
    {
      swift_once();
    }

    sub_10058BB38(1, 2);
  }

  return result;
}

void sub_1002A6930(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = [v4 tracklist];
    v6 = [v5 vocalsControlCommand];

    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = [v6 isDisabled];
    swift_unknownObjectRelease();
    if (v7)
    {
      goto LABEL_9;
    }

    if (qword_10117F8A8 != -1)
    {
      swift_once();
    }

    sub_10058BB38(1, 2);

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1005E8FAC();

      swift_unknownObjectRelease();
    }

    else
    {
LABEL_9:
    }
  }
}

void sub_1002A6A70(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1002A745C(0);
  }
}

void sub_1002A6AC8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying);
    if (v4)
    {
      v5 = [v4 tracklist];
      v6 = [v5 vocalsControlCommand];

      if (v6)
      {
        v7 = [v6 isDisabled];
        swift_unknownObjectRelease();
        if ((v7 & 1) == 0)
        {
          v8 = swift_unknownObjectWeakLoadStrong();
          if (v8)
          {
            v9 = *(v8 + OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldIgnoreFullscreenTimer);
            *(v8 + OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldIgnoreFullscreenTimer) = 0;
            if (v9 == 1)
            {
              sub_1005C4F50(4.0);
            }

            swift_unknownObjectRelease();
          }

          sub_1002A745C(1);
        }
      }
    }
  }
}

void sub_1002A6BD4()
{
  v1 = v0;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v3 = &v39[-v2];
  v4 = *&v0[OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationToggleSlider];
  if (!v4)
  {
    return;
  }

  v5 = OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying;
  v6 = *&v0[OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying];
  if (!v6)
  {
    v18 = v4;
    goto LABEL_8;
  }

  v7 = v4;
  v8 = [v6 tracklist];
  v6 = [v8 vocalsControlCommand];

  v9 = *&v1[v5];
  if (!v9)
  {
LABEL_8:
    v19 = v4;
LABEL_11:
    v17 = 1;
    goto LABEL_12;
  }

  v10 = v7;
  v11 = v9;
  v12 = [v11 tracklist];
  v13 = [v12 playingItem];

  if (!v13)
  {
LABEL_10:

    goto LABEL_11;
  }

  v14 = [v11 tracklist];
  v15 = [v14 vocalsControlCommand];

  if (!v15)
  {

    goto LABEL_10;
  }

  swift_unknownObjectRelease();
  v16 = MPCPlayerResponseItem.hasStoreLyrics.getter();

  v17 = v16 ^ 1;
LABEL_12:
  [v4 setHidden:v17 & 1];
  v20 = v4;
  if (v6)
  {
    v21 = [v6 isContinuous];
  }

  else
  {
    v21 = 0;
  }

  v22 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous;
  swift_beginAccess();
  *(v4 + v22) = v21;
  if (v6)
  {
    v23 = [v6 isDisabled] ^ 1;
    v24 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled;
    swift_beginAccess();
    *(v4 + v24) = v23;
    if ([v6 isDisabled])
    {
      v25 = 0;
    }

    else
    {
      v25 = 2;
    }

    VerticalToggleSlider.longPressMode.setter(v25);
    VerticalToggleSlider.isVisuallyDisabled.setter([v6 isDisabled]);
    sub_1002A51EC();
    [swift_unknownObjectRetain() minLevel];
    v27 = v26;
    [v6 maxLevel];
    if (v27 > v28)
    {
      __break(1u);
      return;
    }

    VerticalToggleSlider.valueRange.setter(v27, v28);
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled;
    swift_beginAccess();
    *(v4 + v29) = 0;
    VerticalToggleSlider.longPressMode.setter(2u);
    VerticalToggleSlider.isVisuallyDisabled.setter(0);
    sub_1002A51EC();
  }

  v30 = type metadata accessor for TaskPriority();
  (*(*(v30 - 8) + 56))(v3, 1, 1, v30);
  type metadata accessor for MainActor();
  v31 = v4;
  v32 = v1;
  v33 = static MainActor.shared.getter();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = &protocol witness table for MainActor;
  v34[4] = v31;
  v34[5] = v32;
  sub_1001F4CB8(0, 0, v3, &unk_100EC55B0, v34);

  v39[15] = 6;
  v35 = sub_100025CE0();
  v36 = v31;
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v35))
  {
    v36 = v31;
    if (v32[OBJC_IVAR___MusicNowPlayingLyricsViewController_layout] == 1)
    {
      [(objc_class *)v31 isHidden];

      v37 = objc_opt_self();
      sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v37 deactivateConstraints:isa];

      v36 = Array._bridgeToObjectiveC()().super.isa;

      [v37 activateConstraints:v36];
    }
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1002A70C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_1002A715C, v7, v6);
}

uint64_t sub_1002A715C()
{
  if (VerticalToggleSlider.isBeingInteractedWith.getter())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = *(v0[3] + OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalCommandsFilter);
    v0[7] = v3;
    v4 = (*v3 + 120) & 0xFFFFFFFFFFFFLL | 0xA5A6000000000000;
    v0[8] = *(*v3 + 120);
    v0[9] = v4;

    return _swift_task_switch(sub_1002A723C, v3, 0);
  }
}

uint64_t sub_1002A723C()
{
  *(v0 + 80) = (*(v0 + 64))();

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_1002A72B0, v1, v2);
}

uint64_t sub_1002A72B0()
{
  v1 = v0[3];

  v2 = OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying;
  v3 = *(v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying);
  v4 = 0.0;
  if (v3)
  {
    v5 = [v3 tracklist];
    v6 = [v5 vocalsControlCommand];

    if (v6)
    {
      [v6 level];
      v4 = v7;
      swift_unknownObjectRelease();
      v8 = 0;
      v9 = v0[10];
      if ((v9 & 0x1000000000000) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      if ((v9 & 0x10000000000) != 0)
      {
        VerticalToggleSlider.isOn.setter(0);
        goto LABEL_17;
      }

      if ((v9 & 0x100000000) != 0)
      {
        VerticalToggleSlider.isOn.setter(1);
        if (v8)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v4 = *&v9;
        VerticalToggleSlider.isOn.setter(1);
      }

LABEL_16:
      VerticalToggleSlider.value.setter(v4);
      goto LABEL_17;
    }
  }

  v8 = 1;
  v9 = v0[10];
  if ((v9 & 0x1000000000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v10 = *(v1 + v2);
  if (v10)
  {
    v11 = [v10 tracklist];
    v12 = [v11 vocalsControlCommand];

    if (v12)
    {
      v13 = [v12 isActive];
      swift_unknownObjectRelease();
      LOBYTE(v10) = v13;
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  VerticalToggleSlider.isOn.setter(v10);
  if ((v8 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_17:
  v14 = v0[1];

  return v14();
}

void sub_1002A745C(int a1)
{
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  __chkstk_darwin();
  v97 = (&v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v5 = (&v90 - v4);
  __chkstk_darwin();
  v96 = (&v90 - v6);
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v8 = (&v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v10 = &v90 - v9;
  __chkstk_darwin();
  v98 = &v90 - v11;
  type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin();
  v13 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v90 - v14;
  __chkstk_darwin();
  v17 = &v90 - v16;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v19 = &v90 - v18;
  v20 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationToggleSlider];
  if (!v20)
  {
    goto LABEL_11;
  }

  v21 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying];
  if (!v21)
  {
    goto LABEL_11;
  }

  v92 = a1;
  v90 = v17;
  v91 = v13;
  v22 = v21;
  v23 = v20;
  v24 = [v22 tracklist];
  v25 = [v24 vocalsControlCommand];

  if (!v25)
  {

LABEL_11:

    sub_1002A6BD4();
    return;
  }

  v94 = v22;
  v26 = v1;
  v27 = VerticalToggleSlider.isOn.getter();
  v95 = v23;
  v93 = v25;
  v28 = v27 ^ [v25 isActive];
  v29 = VerticalToggleSlider.isOn.getter();
  if (v28)
  {
    if (v29)
    {
      v30 = v93;
      v31 = [v93 isDisabled];
      v32 = v94;
      if (v31)
      {

        sub_1002A88BC([v30 disabledReason]);

        swift_unknownObjectRelease();
        return;
      }

      v45 = VerticalToggleSlider.isBeingInteractedWith.getter();

      v46 = type metadata accessor for TaskPriority();
      (*(*(v46 - 8) + 56))(v19, 1, 1, v46);
      type metadata accessor for MainActor();
      if (v45)
      {
        v47 = v95;
        v48 = v26;
        v49 = static MainActor.shared.getter();
        v50 = swift_allocObject();
        v50[2] = v49;
        v50[3] = &protocol witness table for MainActor;
        v50[4] = v48;
        v50[5] = v47;
        v51 = &unk_100EC5590;
      }

      else
      {
        v61 = v26;
        v62 = static MainActor.shared.getter();
        v50 = swift_allocObject();
        v50[2] = v62;
        v50[3] = &protocol witness table for MainActor;
        v50[4] = v61;
        v51 = &unk_100EC5580;
      }

      sub_1001F4CB8(0, 0, v19, v51, v50);

      if (v92)
      {
        v63 = *MetricsReportingController.shared.unsafeMutableAddressor();
        v64 = type metadata accessor for URL();
        (*(*(v64 - 8) + 56))(v98, 1, 1, v64);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v65 = v63;
          v66 = v96;
          sub_1005E0230(v96);
          swift_unknownObjectRelease();
        }

        else
        {
          v81 = type metadata accessor for MetricsEvent.Page(0);
          v66 = v96;
          (*(*(v81 - 8) + 56))(v96, 1, 1, v81);
          v82 = v63;
        }

        v15 = v90;
        MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:page:snapshotImpressions:)(0xD000000000000016, 0x8000000100E448F0, 5, 55, v98, 0, 0, 10, v90, 0, 0, 0xFF00u, v66, 0);
        v83 = sub_10053771C();
        v85 = v84;
        if (qword_10117F600 != -1)
        {
          swift_once();
        }

        v86 = qword_101218AD0;
        v87 = GroupActivitiesManager.hasJoined.getter();
        v88 = GroupActivitiesManager.participantsCount.getter();
        v89 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
        swift_beginAccess();
        (*((swift_isaMask & *v63) + 0xB8))(v15, v83, v85, v87 & 1, v88, *(v86 + v89));

        swift_unknownObjectRelease();
        goto LABEL_47;
      }

      swift_unknownObjectRelease();

LABEL_36:
      return;
    }

    v38 = type metadata accessor for TaskPriority();
    (*(*(v38 - 8) + 56))(v19, 1, 1, v38);
    type metadata accessor for MainActor();
    v39 = v26;
    v40 = static MainActor.shared.getter();
    v41 = swift_allocObject();
    v41[2] = v40;
    v41[3] = &protocol witness table for MainActor;
    v41[4] = v39;
    sub_1001F4CB8(0, 0, v19, &unk_100EC5570, v41);

    v22 = v94;
    if ((v92 & 1) == 0)
    {
      swift_unknownObjectRelease();

      goto LABEL_36;
    }

    v8 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v42 = type metadata accessor for URL();
    (*(*(v42 - 8) + 56))(v10, 1, 1, v42);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v43 = v8;
      sub_1005E0230(v5);
      swift_unknownObjectRelease();
    }

    else
    {
      v67 = type metadata accessor for MetricsEvent.Page(0);
      (*(*(v67 - 8) + 56))(v5, 1, 1, v67);
      v68 = v8;
    }

    MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:page:snapshotImpressions:)(0xD000000000000017, 0x8000000100E448D0, 5, 55, v10, 0, 0, 10, v15, 0, 0, 0xFF00u, v5, 0);
    v54 = sub_10053771C();
    v34 = v69;
    if (qword_10117F600 == -1)
    {
LABEL_39:
      v70 = qword_101218AD0;
      v71 = GroupActivitiesManager.hasJoined.getter();
      v72 = GroupActivitiesManager.participantsCount.getter();
      v73 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
      swift_beginAccess();
      (*((swift_isaMask & *v8) + 0xB8))(v15, v54, v34, v71 & 1, v72, *(v70 + v73));

      swift_unknownObjectRelease();
LABEL_47:

      v80 = v15;
      goto LABEL_48;
    }

LABEL_50:
    swift_once();
    goto LABEL_39;
  }

  if (v29)
  {
    v33 = type metadata accessor for TaskPriority();
    (*(*(v33 - 8) + 56))(v19, 1, 1, v33);
    type metadata accessor for MainActor();
    v34 = v95;
    v35 = v26;
    v36 = static MainActor.shared.getter();
    v37 = swift_allocObject();
    v37[2] = v36;
    v37[3] = &protocol witness table for MainActor;
    v37[4] = v35;
    v37[5] = v34;
    sub_1001F4CB8(0, 0, v19, &unk_100EC55A0, v37);

    if (VerticalToggleSlider.isBeingInteractedWith.getter())
    {
      swift_unknownObjectRelease();

      return;
    }

    v52 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v53 = VerticalToggleSlider.value.getter();
    v54 = v52;

    if ((LODWORD(v53) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
      goto LABEL_50;
    }

    v55 = v91;
    if (v53 <= -9.2234e18)
    {
      __break(1u);
    }

    else if (v53 < 9.2234e18)
    {
      v99 = v53;
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      v59 = type metadata accessor for URL();
      (*(*(v59 - 8) + 56))(v8, 1, 1, v59);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v60 = v97;
        sub_1005E0230(v97);
        swift_unknownObjectRelease();
      }

      else
      {
        v74 = type metadata accessor for MetricsEvent.Page(0);
        v60 = v97;
        (*(*(v74 - 8) + 56))(v97, 1, 1, v74);
      }

      MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:page:snapshotImpressions:)(v56, v58, 20, 7, v8, 0, 0, 10, v55, 0, 0, 0xFF00u, v60, 0);
      v19 = sub_10053771C();
      v8 = v75;
      if (qword_10117F600 == -1)
      {
        goto LABEL_42;
      }

      goto LABEL_53;
    }

    __break(1u);
LABEL_53:
    swift_once();
LABEL_42:
    v76 = qword_101218AD0;
    v77 = GroupActivitiesManager.hasJoined.getter();
    v78 = GroupActivitiesManager.participantsCount.getter();
    v79 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    (*((swift_isaMask & *v54) + 0xB8))(v55, v19, v8, v77 & 1, v78, *(v76 + v79));

    swift_unknownObjectRelease();

    v80 = v55;
LABEL_48:
    sub_1002AD498(v80, type metadata accessor for MetricsEvent.Click);
    return;
  }

  swift_unknownObjectRelease();

  v44 = v95;
}

uint64_t sub_1002A81DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_1002A8274, v7, v6);
}

uint64_t sub_1002A8274()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalCommandsFilter);
  *(v0 + 56) = v1;
  *(v0 + 80) = VerticalToggleSlider.value.getter();
  v2 = (*v1 + 144) & 0xFFFFFFFFFFFFLL | 0x8A67000000000000;
  *(v0 + 64) = *(*v1 + 144);
  *(v0 + 72) = v2;

  return _swift_task_switch(sub_1002A8318, v1, 0);
}

uint64_t sub_1002A8318()
{
  (*(v0 + 64))(*(v0 + 80));

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_1002ADCDC, v1, v2);
}

uint64_t sub_1002A8398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1002A8430, v6, v5);
}

uint64_t sub_1002A8430()
{
  v1 = *(v0[2] + OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalCommandsFilter);
  v0[6] = v1;
  v2 = (*v1 + 144) & 0xFFFFFFFFFFFFLL | 0x8A67000000000000;
  v0[7] = *(*v1 + 144);
  v0[8] = v2;

  return _swift_task_switch(sub_1002A84CC, v1, 0);
}

uint64_t sub_1002A84CC()
{
  (*(v0 + 56))(&_mh_execute_header);

  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return _swift_task_switch(sub_1002ADCD8, v1, v2);
}

uint64_t sub_1002A854C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1002A85E4, v6, v5);
}

uint64_t sub_1002A85E4()
{
  v1 = *(v0[2] + OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalCommandsFilter);
  v0[6] = v1;
  v2 = (*v1 + 144) & 0xFFFFFFFFFFFFLL | 0x8A67000000000000;
  v0[7] = *(*v1 + 144);
  v0[8] = v2;

  return _swift_task_switch(sub_1002A8680, v1, 0);
}

uint64_t sub_1002A8680()
{
  (*(v0 + 56))(0x10000000000);

  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return _swift_task_switch(sub_1002ADCD8, v1, v2);
}

uint64_t sub_1002A8700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_1002A8798, v7, v6);
}

uint64_t sub_1002A8798()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalCommandsFilter);
  *(v0 + 56) = v1;
  *(v0 + 80) = VerticalToggleSlider.value.getter();
  v2 = (*v1 + 144) & 0xFFFFFFFFFFFFLL | 0x8A67000000000000;
  *(v0 + 64) = *(*v1 + 144);
  *(v0 + 72) = v2;

  return _swift_task_switch(sub_1002A883C, v1, 0);
}

uint64_t sub_1002A883C()
{
  (*(v0 + 64))(*(v0 + 80));

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_100222A34, v1, v2);
}

void sub_1002A88BC(uint64_t a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  static Player.VocalsCommand.localizedDisablementMessage(for:)(a1);
  v3 = String._bridgeToObjectiveC()();

  v4 = [objc_opt_self() alertControllerWithTitle:0 message:v3 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v5 = String._bridgeToObjectiveC()();

  v6 = [objc_opt_self() actionWithTitle:v5 style:0 handler:0];

  [v4 addAction:v6];
  [v1 presentViewController:v4 animated:1 completion:0];
  if (qword_10117F938 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000060E4(v7, qword_1012190C8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136446210;
    type metadata accessor for MPRemoteCommandDisabledReason(0);
    v12 = String.init<A>(describing:)();
    v14 = sub_1000105AC(v12, v13, &v15);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Presenting VA Disablement Message for reason=%{public}s", v10, 0xCu);
    sub_10000959C(v11);
  }
}

void *sub_1002A8BA8()
{
  sub_10010FC20(&qword_101183A90, &unk_100EBE340);
  __chkstk_darwin();
  v1 = &v25 - v0;
  v2 = type metadata accessor for SymbolButton.Configuration(0) - 8;
  __chkstk_darwin();
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  SymbolButton.Configuration.init()(v4);
  variable initialization expression of SymbolButton.Configuration.symbol(v26);
  v37 = v26[0];
  sub_1000095E8(&v37, &qword_1011815E0, &qword_100EBD050);
  LOBYTE(v38[0]) = 0;
  v5 = *(v4 + 5);
  v38[4] = *(v4 + 4);
  v38[5] = v5;
  v38[6] = *(v4 + 6);
  v39 = *(v4 + 14);
  v6 = *(v4 + 1);
  v38[0] = *v4;
  v38[1] = v6;
  v7 = *(v4 + 3);
  v38[2] = *(v4 + 2);
  v38[3] = v7;
  sub_1001D223C(v38);
  v8 = v26[1];
  *v4 = xmmword_100EBEE60;
  *(v4 + 1) = v8;
  *(v4 + 4) = 0x4034000000000000;
  v4[40] = 0;
  *(v4 + 41) = v27[0];
  *(v4 + 11) = *(v27 + 3);
  *(v4 + 6) = 6;
  v9 = v29;
  *(v4 + 56) = v28;
  *(v4 + 72) = v9;
  v10 = v31;
  *(v4 + 88) = v30;
  *(v4 + 104) = v10;
  static SymbolButton.Material.with(_:)(sub_1002A8FCC, &v32);
  v25 = v32;
  v11 = v33;
  v12 = v34;
  v14 = v35;
  v13 = v36;
  sub_1002ACCD0(*(v4 + 29), *(v4 + 30), *(v4 + 31), *(v4 + 32), *(v4 + 33), *(v4 + 34));
  *(v4 + 232) = v25;
  *(v4 + 31) = v11;
  *(v4 + 32) = v12;
  *(v4 + 33) = v14;
  *(v4 + 34) = v13;
  static UIView.Corner.rounded.getter();
  v15 = type metadata accessor for UIView.Corner();
  (*(*(v15 - 8) + 56))(v1, 0, 1, v15);
  sub_10006B010(v1, &v4[*(v2 + 44)], &qword_101183A90, &unk_100EBE340);
  *&v4[*(v2 + 60)] = vdupq_n_s64(0x4042000000000000uLL);
  v16 = type metadata accessor for SymbolButton(0);
  v17 = objc_allocWithZone(v16);
  v18 = SymbolButton.init(configuration:handler:)(v4, 0, 0);
  v19 = SymbolButton.withProvider(_:)(sub_1002A9020, 0);

  v20 = (*((swift_isaMask & *v19) + 0x108))(0x542073636972794CLL, 0xEA00000000005254);
  (*((swift_isaMask & *v19) + 0x228))(v20, 52.0, 52.0);
  v21 = v19;
  [v21 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = String._bridgeToObjectiveC()();
  [v21 _setLayoutDebuggingIdentifier:v22];

  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  ControlEventHandling<>.on(_:handler:)(64, sub_1002ACD2C, v23, v16);

  return v21;
}

void sub_1002A8FCC(id *a1)
{
  v2 = [objc_opt_self() effectWithBlurRadius:10.0];

  *a1 = v2;
}

void sub_1002A9020(uint64_t a1, uint64_t a2)
{
  v3 = static SymbolButton.Background.with(_:)(sub_1002ACDE8);
  v5 = v4;
  v6 = v3;
  v8 = v7;
  v10 = v9;
  sub_100282F24(*(a2 + 200), *(a2 + 208), *(a2 + 216), *(a2 + 224));
  *(a2 + 200) = v5;
  *(a2 + 208) = v6;
  *(a2 + 216) = v8;
  *(a2 + 224) = v10;
  v11 = UIViewConfigurationState.traitCollection.getter();
  sub_100050078();
  LOBYTE(v6) = UITraitCollection.subscript.getter();

  if (v6)
  {
    v12 = [objc_opt_self() whiteColor];
  }

  else
  {
    v12 = 0;
  }

  *(a2 + 112) = v12;
}

void sub_1002A9110(uint64_t a1, double a2)
{
  v3 = UIViewConfigurationState.traitCollection.getter();
  sub_100050078();
  v4 = UITraitCollection.subscript.getter();

  if (v4)
  {
    v5 = [objc_opt_self() whiteColor];
    v6 = [v5 colorWithAlphaComponent:0.18];

    *(a1 + 8) = v6;
  }

  else
  {
    if (qword_10117F8F8 != -1)
    {
      swift_once();
    }

    v7 = qword_101219090;
    v8 = *(a1 + 8);
    v9 = qword_101219090;

    *(a1 + 8) = v7;
  }
}

double sub_1002A9208(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = a2;
  sub_1001F4CB8(0, 0, v4, &unk_100EC5558, v7);

  return result;
}

uint64_t sub_1002A932C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[42] = a4;
  v5 = type metadata accessor for Lyrics.Transliteration(0);
  v4[43] = v5;
  v4[44] = *(v5 - 8);
  v4[45] = swift_task_alloc();
  sub_10010FC20(&unk_101189A00, &unk_100EC5500);
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v6 = type metadata accessor for Locale.Language();
  v4[48] = v6;
  v4[49] = *(v6 - 8);
  v4[50] = swift_task_alloc();
  v7 = type metadata accessor for Lyrics.Translation(0);
  v4[51] = v7;
  v4[52] = *(v7 - 8);
  v4[53] = swift_task_alloc();
  sub_10010FC20(&qword_101189A18, &unk_100EE1DA0);
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  sub_10010FC20(&unk_101184010, &qword_100EBF9E8);
  v4[56] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[57] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[58] = v9;
  v4[59] = v8;

  return _swift_task_switch(sub_1002A9598, v9, v8);
}

uint64_t sub_1002A9598()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 480) = Strong;
  if (!Strong)
  {

    goto LABEL_77;
  }

  v2 = Strong;
  v3 = [objc_allocWithZone(AVTimeFormatter) init];
  *(v0 + 488) = v3;
  [v3 setStyle:1];
  v4 = OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying;
  v5 = *&v2[OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying];
  if (!v5)
  {
    v166 = 0;
    v12 = 0;
LABEL_24:
    v21 = [v3 stringFromSeconds:NAN];
    v165._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v165._object = v22;
    goto LABEL_25;
  }

  v6 = [v5 tracklist];
  v7 = [v6 playingItem];

  if (!v7)
  {
    v10 = 0;
    goto LABEL_11;
  }

  v8 = [v7 metadataObject];

  if (!v8)
  {
    v10 = 0;
    v11 = *&v2[v4];
    if (v11)
    {
      goto LABEL_12;
    }

LABEL_16:
    v166 = 0;
LABEL_23:
    v12 = v10;
    goto LABEL_24;
  }

  v9 = [v8 innermostModelObject];

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
LABEL_11:
    v11 = *&v2[v4];
    if (v11)
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  v11 = *&v2[v4];
  if (!v11)
  {
    goto LABEL_16;
  }

LABEL_12:
  v13 = [v11 tracklist];
  v14 = [v13 vocalsControlCommand];

  if (v14)
  {
    v166 = [v14 isActive];
    swift_unknownObjectRelease();
    v15 = *&v2[v4];
    if (!v15)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v166 = 0;
    v15 = *&v2[v4];
    if (!v15)
    {
      goto LABEL_23;
    }
  }

  v16 = [v15 tracklist];
  v17 = [v16 playingItem];

  if (!v17)
  {
    goto LABEL_23;
  }

  [v17 duration];
  static Date.timeIntervalSinceReferenceDate.getter();
  v19 = v171 + (v18 - v169) * v172;
  if (v19 >= v170)
  {
    v19 = v170;
  }

  v12 = v10;
  if (v19 <= 0.0)
  {
    v20 = [v3 stringFromSeconds:NAN];
  }

  else
  {
    v20 = [v3 stringFromSeconds:?];
  }

  v21 = v20;
  v165._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v165._object = v155;

LABEL_25:
  v167._object = 0xE90000000000005DLL;
  v167._countAndFlagsBits = 0x6E776F6E6B6E755BLL;

  *(v0 + 496) = v12;
  BagProvider.shared.unsafeMutableAddressor();

  v23 = BagProvider.bag.getter();
  *(v0 + 504) = v23;

  if (v23)
  {
    v24 = [v23 stringForBagKey:ICURLBagKeyCountryCode];
    if (v24)
    {
      v25 = v24;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = [v23 stringForBagKey:ICURLBagKeyStoreFrontID];
      if (v29)
      {
        v30 = v29;
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        v34._countAndFlagsBits = 10272;
        v34._object = 0xE200000000000000;
        String.append(_:)(v34);
        v35._countAndFlagsBits = v31;
        v35._object = v33;
        String.append(_:)(v35);

        v36._countAndFlagsBits = 41;
        v36._object = 0xE100000000000000;
        String.append(_:)(v36);
        v167._countAndFlagsBits = v26;
        v167._object = v28;
      }

      else
      {
      }
    }
  }

  *(v0 + 536) = 6;
  v37 = sub_100025CE0();
  v38 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v37);
  v161 = v23;
  if ((v38 & 1) == 0)
  {
    v47 = 0;
    v48 = _swiftEmptyArrayStorage;
    v49 = 0xE000000000000000;
    goto LABEL_56;
  }

  v41 = *&v2[OBJC_IVAR___MusicNowPlayingLyricsViewController_lyrics];
  if (v41)
  {
    v42 = *(v0 + 448);
    v43 = *(v0 + 384);
    v44 = *(v0 + 392);
    sub_1000089F8(v41 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalLanguage, v42, &unk_101184010, &qword_100EBF9E8);
    v45 = (*(v44 + 48))(v42, 1, v43);
    v46 = *(v0 + 448);
    if (v45 != 1)
    {
      v50 = *(v0 + 384);
      v51 = *(v0 + 392);
      v160 = Locale.Language.maximalIdentifier.getter();
      v163 = v52;
      v38 = (*(v51 + 8))(v46, v50);
      goto LABEL_37;
    }

    v38 = sub_1000095E8(*(v0 + 448), &unk_101184010, &qword_100EBF9E8);
  }

  v163 = 0xE300000000000000;
  v160 = 7104878;
LABEL_37:
  v158 = v12;
  v164 = OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController;
  v53 = *&v2[OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController];
  if (!v53)
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v54 = *(v0 + 440);
  v55 = *(v0 + 408);
  v56 = *(v0 + 416);
  v57 = *((swift_isaMask & *v53) + 0x3A0);
  v58 = v53;
  v57();

  v157 = *(v56 + 48);
  v59 = v157(v54, 1, v55);
  v60 = *(v0 + 440);
  if (v59)
  {
    v38 = sub_1000095E8(v60, &qword_101189A18, &unk_100EE1DA0);
    v162 = 0xE300000000000000;
    v159 = 7104878;
  }

  else
  {
    v61 = *(v0 + 424);
    v63 = *(v0 + 392);
    v62 = *(v0 + 400);
    v64 = *(v0 + 384);
    v65 = *(v0 + 440);
    sub_1002AD3C8(v60, v61, type metadata accessor for Lyrics.Translation);
    sub_1000095E8(v65, &qword_101189A18, &unk_100EE1DA0);
    (*(v63 + 16))(v62, v61, v64);
    sub_1002AD498(v61, type metadata accessor for Lyrics.Translation);
    v159 = Locale.Language.maximalIdentifier.getter();
    v162 = v66;
    v38 = (*(v63 + 8))(v62, v64);
  }

  v67 = *&v2[v164];
  if (!v67)
  {
    goto LABEL_87;
  }

  v68 = *(v0 + 376);
  v70 = *(v0 + 344);
  v69 = *(v0 + 352);
  v71 = *((swift_isaMask & *v67) + 0x3B8);
  v72 = v67;
  v71();

  v156 = *(v69 + 48);
  if (v156(v68, 1, v70))
  {
    sub_1000095E8(*(v0 + 376), &unk_101189A00, &unk_100EC5500);
    v73 = 0xE300000000000000;
    v74 = 7104878;
  }

  else
  {
    v76 = *(v0 + 392);
    v75 = *(v0 + 400);
    v78 = *(v0 + 376);
    v77 = *(v0 + 384);
    v79 = *(v0 + 360);
    sub_1002AD3C8(v78, v79, type metadata accessor for Lyrics.Transliteration);
    sub_1000095E8(v78, &unk_101189A00, &unk_100EC5500);
    (*(v76 + 16))(v75, v79, v77);
    sub_1002AD498(v79, type metadata accessor for Lyrics.Transliteration);
    v74 = Locale.Language.maximalIdentifier.getter();
    v73 = v80;
    (*(v76 + 8))(v75, v77);
  }

  _StringGuts.grow(_:)(129);
  *(v0 + 320) = 0;
  *(v0 + 328) = 0xE000000000000000;
  v81._countAndFlagsBits = 0x6172662077656956;
  v81._object = 0xEC000000203A656DLL;
  String.append(_:)(v81);
  v82 = v2;
  v38 = [v82 view];
  if (!v38)
  {
    goto LABEL_88;
  }

  v83 = v38;
  [v38 frame];
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v91 = v90;

  *(v0 + 200) = v85;
  *(v0 + 208) = v87;
  *(v0 + 216) = v89;
  *(v0 + 224) = v91;
  type metadata accessor for CGRect(0);
  _print_unlocked<A, B>(_:_:)();
  v92._countAndFlagsBits = 0xD000000000000011;
  v92._object = 0x8000000100E44830;
  String.append(_:)(v92);
  v93 = [v82 view];

  if (!v93)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  [v93 layoutMargins];
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v101 = v100;

  *(v0 + 232) = v95;
  *(v0 + 240) = v97;
  *(v0 + 248) = v99;
  *(v0 + 256) = v101;
  type metadata accessor for UIEdgeInsets(0);
  _print_unlocked<A, B>(_:_:)();
  v102._object = 0x8000000100E44850;
  v102._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v102);
  v103._countAndFlagsBits = v160;
  v103._object = v163;
  String.append(_:)(v103);
  v104._countAndFlagsBits = 0xD000000000000016;
  v104._object = 0x8000000100E44870;
  String.append(_:)(v104);
  v105._countAndFlagsBits = v159;
  v105._object = v162;
  String.append(_:)(v105);
  v106._countAndFlagsBits = 0xD00000000000001ALL;
  v106._object = 0x8000000100E44890;
  String.append(_:)(v106);
  v107._countAndFlagsBits = v74;
  v107._object = v73;
  String.append(_:)(v107);
  v108._object = 0x8000000100E448B0;
  v108._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v108);
  static Locale.preferredLanguages.getter();
  v109 = Array.description.getter();
  v111 = v110;

  v112._countAndFlagsBits = v109;
  v112._object = v111;
  String.append(_:)(v112);

  v113 = *&v2[v164];
  if (!v113)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v47 = *(v0 + 320);
  v49 = *(v0 + 328);
  v114 = *(v0 + 432);
  v115 = *(v0 + 408);
  v116 = *((swift_isaMask & *v113) + 0x3A0);
  v117 = v113;
  v116();

  v118 = v157(v114, 1, v115);
  v119 = *(v0 + 432);
  if (v118 == 1)
  {
    v38 = sub_1000095E8(*(v0 + 432), &qword_101189A18, &unk_100EE1DA0);
    v120 = *&v2[v164];
    if (!v120)
    {
LABEL_91:
      __break(1u);
      return _swift_task_switch(v38, v39, v40);
    }

    v121 = *(v0 + 368);
    v122 = *(v0 + 344);
    v123 = v120;

    (*((swift_isaMask & *v123) + 0x3B8))(v124);

    LODWORD(v123) = v156(v121, 1, v122);
    sub_1000095E8(v121, &unk_101189A00, &unk_100EC5500);
    if (v123 == 1)
    {
      v48 = _swiftEmptyArrayStorage;
      v12 = v158;
      goto LABEL_56;
    }
  }

  else
  {

    sub_1000095E8(v119, &qword_101189A18, &unk_100EE1DA0);
  }

  v48 = sub_100499710(0, 1, 1, _swiftEmptyArrayStorage);
  v126 = *(v48 + 2);
  v125 = *(v48 + 3);
  if (v126 >= v125 >> 1)
  {
    v48 = sub_100499710((v125 > 1), v126 + 1, 1, v48);
  }

  v12 = v158;
  *(v48 + 2) = v126 + 1;
  v48[v126 + 32] = 3;
LABEL_56:
  _StringGuts.grow(_:)(171);
  v127._countAndFlagsBits = 0x61644120676E6F53;
  v127._object = 0xED0000203A44496DLL;
  String.append(_:)(v127);
  if (!v12 || (v128 = [v12 identifiers], v129 = MPIdentifierSet.bestStoreIdentifier.getter(), v131 = v130, v128, !v131))
  {

    v131 = 0x8000000100E44760;
    v129 = 0xD000000000000018;
  }

  v132._countAndFlagsBits = v129;
  v132._object = v131;
  String.append(_:)(v132);

  v133._countAndFlagsBits = 0x726665726F74530ALL;
  v133._object = 0xED0000203A746E6FLL;
  String.append(_:)(v133);
  String.append(_:)(v167);

  v134._countAndFlagsBits = 0xD000000000000010;
  v134._object = 0x8000000100E44780;
  String.append(_:)(v134);
  String.append(_:)(v165);

  v135._object = 0x8000000100E447A0;
  v135._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v135);
  if (v166)
  {
    v136 = 28239;
  }

  else
  {
    v136 = 6710863;
  }

  if (v166)
  {
    v137 = 0xE200000000000000;
  }

  else
  {
    v137 = 0xE300000000000000;
  }

  v138 = v137;
  String.append(_:)(*&v136);

  v139._countAndFlagsBits = 10;
  v139._object = 0xE100000000000000;
  String.append(_:)(v139);
  v140._countAndFlagsBits = v47;
  v140._object = v49;
  String.append(_:)(v140);
  v141._countAndFlagsBits = 0xD000000000000062;
  v141._object = 0x8000000100E447C0;
  String.append(_:)(v141);
  v142 = [v2 parentViewController];
  if (!v142)
  {

    goto LABEL_70;
  }

  v143 = v142;
  v144 = [v142 view];

  if (!v144)
  {
    __break(1u);
    goto LABEL_86;
  }

  v145 = UIView.screenshot.getter();

  if (!v145)
  {
LABEL_70:
    v146 = _swiftEmptyArrayStorage;
    goto LABEL_71;
  }

  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v146 = swift_allocObject();
  *(v146 + 1) = xmmword_100EBC6C0;
  v146[4] = v145;
LABEL_71:
  v147 = sub_1006E1288(_swiftEmptyArrayStorage);
  static Alert.Action.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)(0, 0, 0, 0xE000000000000000, v146, v147, _swiftEmptyArrayStorage, v48, v0 + 144, 0);

  v148 = *(v0 + 152);
  if (v148)
  {
    *(v0 + 88) = *(v0 + 144);
    *(v0 + 96) = v148;
    v149 = *(v0 + 160);
    *(v0 + 120) = *(v0 + 176);
    *(v0 + 104) = v149;
    v150 = *(v0 + 192);
    *(v0 + 136) = v150;
    v151 = *(v0 + 128);
    *(v0 + 512) = v151;
    *(v0 + 520) = v150;
    if (v151)
    {
      *(v0 + 80) = 0;
      *(v0 + 48) = 0u;
      *(v0 + 64) = 0u;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      v168 = (v151 + *v151);
      v152 = swift_task_alloc();
      *(v0 + 528) = v152;
      *v152 = v0;
      v152[1] = sub_1002AA6A8;

      return v168(v0 + 88, v0 + 16);
    }

    v39 = *(v0 + 464);
    v40 = *(v0 + 472);
    v38 = sub_1002AA7C8;

    return _swift_task_switch(v38, v39, v40);
  }

LABEL_77:

  v154 = *(v0 + 8);

  return v154();
}

uint64_t sub_1002AA6A8()
{
  v1 = *v0;

  v2 = *(v1 + 472);
  v3 = *(v1 + 464);

  return _swift_task_switch(sub_1002AA7C8, v3, v2);
}

uint64_t sub_1002AA7C8()
{
  v1 = *(v0 + 520);
  v3 = *(v0 + 504);
  v2 = *(v0 + 512);
  v4 = *(v0 + 496);
  v5 = *(v0 + 480);

  *(v0 + 304) = *(v0 + 88);
  sub_100015BB0(v0 + 304);
  *(v0 + 288) = *(v0 + 104);
  sub_100015BB0(v0 + 288);
  sub_100020438(v2, v1);

  v6 = *(v0 + 8);

  return v6();
}

void sub_1002AA8E0()
{
  v1 = *(v0 + OBJC_IVAR___MusicNowPlayingLyricsViewController_tapToRadarButton);
  if (!v1)
  {
    return;
  }

  v2 = v0;
  v3 = objc_opt_self();
  v11 = v1;
  v4 = [v3 standardUserDefaults];
  v5 = sub_1002991D8();

  if ((v5 & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *(v2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = [v6 tracklist];
  v8 = [v7 playingItem];

  if (!v8)
  {
    goto LABEL_9;
  }

  if ((MPCPlayerResponseItem.hasStoreLyrics.getter() & 1) == 0)
  {

LABEL_9:
    v10 = 1;
    goto LABEL_10;
  }

  v9 = MPCPlayerResponseItem.supportsLyrics.getter();

  v10 = v9 ^ 1;
LABEL_10:
  [v11 setHidden:v10 & 1];
}

uint64_t sub_1002AAA18()
{
  v1 = v0;
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v3 = &v14[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v14[-v4];
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR___MusicNowPlayingLyricsViewController_lyricsVisibilityStart;
  swift_beginAccess();
  sub_1000089F8(v1 + v10, v5, &qword_101188C20, &qword_100EC2030);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1000095E8(v5, &qword_101188C20, &qword_100EC2030);
  }

  (*(v7 + 32))(v9, v5, v6);
  Date.timeIntervalSinceNow.getter();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  *(v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_visibleDuration) = *(v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_visibleDuration) - v13;
  (*(v7 + 56))(v3, 1, 1, v6);
  swift_beginAccess();
  sub_10006B010(v3, v1 + v10, &qword_101188C20, &qword_100EC2030);
  return swift_endAccess();
}

void sub_1002AAC80(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v79 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184010, &qword_100EBF9E8);
  __chkstk_darwin();
  v8 = &v73 - v7;
  sub_10010FC20(&qword_101189A10, &unk_100EBF9F0);
  __chkstk_darwin();
  v10 = &v73 - v9;
  sub_10010FC20(&unk_101189A00, &unk_100EC5500);
  __chkstk_darwin();
  v12 = &v73 - v11;
  sub_10010FC20(&qword_101189A18, &unk_100EE1DA0);
  __chkstk_darwin();
  v14 = &v73 - v13;
  if (!a1)
  {
    return;
  }

  v15 = OBJC_IVAR___MusicNowPlayingLyricsViewController_lyrics;
  v16 = *(v2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_lyrics);
  if (!v16 || *(v2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_state + 8) != 1)
  {
    return;
  }

  v77 = *(v2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_state);
  v78 = v5;
  v17 = a1;

  sub_1002AAA18();
  v18 = *(v2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_visibleDuration);
  if (v18 > 0.0)
  {
    v76 = v16;
    *(v2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_visibleDuration) = 0;
    v19 = [objc_allocWithZone(MPCReportingLyricsViewEvent) init];
    [v19 setModelSong:v17];
    v20 = *(v2 + v15);
    v74 = v17;
    v75 = v4;
    if (v20 && *(v20 + 24))
    {

      v21 = String._bridgeToObjectiveC()();
    }

    else
    {
      v21 = 0;
    }

    [v19 setLyricsID:v21];

    [v19 setModelPlayEvent:*(v2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_modelPlayEvent)];
    [v19 setVisibleDuration:v18];
    v22 = OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController;
    v23 = *(v2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController);
    if (v23)
    {
      v24 = *((swift_isaMask & *v23) + 0x3A0);
      v25 = v23;
      v24();

      v26 = type metadata accessor for Lyrics.Translation(0);
      v27 = (*(*(v26 - 8) + 48))(v14, 1, v26) != 1;
      sub_1000095E8(v14, &qword_101189A18, &unk_100EE1DA0);
      [v19 setDisplayTranslationEnabled:v27];
      v28 = *(v2 + v22);
      if (v28)
      {
        v29 = *((swift_isaMask & *v28) + 0x3B8);
        v30 = v28;
        v29();

        v31 = type metadata accessor for Lyrics.Transliteration(0);
        v32 = (*(*(v31 - 8) + 48))(v12, 1, v31) != 1;
        sub_1000095E8(v12, &unk_101189A00, &unk_100EC5500);
        v33 = v19;
        v34 = [v19 setDisplayTransliterationEnabled:v32];
        (*(*v76 + 232))(v34);
        v35 = type metadata accessor for Locale.Language();
        v36 = *(v35 - 8);
        v37 = (*(v36 + 48))(v8, 1, v35);
        v38 = v78;
        if (v37 == 1)
        {
          v39 = &unk_101184010;
          v40 = &qword_100EBF9E8;
          v41 = v8;
        }

        else
        {
          Locale.Language.languageCode.getter();
          (*(v36 + 8))(v8, v35);
          v42 = type metadata accessor for Locale.LanguageCode();
          v43 = *(v42 - 8);
          if ((*(v43 + 48))(v10, 1, v42) != 1)
          {
            Locale.LanguageCode.identifier.getter();
            (*(v43 + 8))(v10, v42);
            v44 = String._bridgeToObjectiveC()();

            goto LABEL_20;
          }

          v39 = &qword_101189A10;
          v40 = &unk_100EBF9F0;
          v41 = v10;
        }

        sub_1000095E8(v41, v39, v40);
        v44 = 0;
LABEL_20:
        [v33 setLanguage:v44];

        v45 = 1;
        if (v77)
        {
          v45 = 2;
        }

        if (v77 == 2)
        {
          v46 = 0;
        }

        else
        {
          v46 = v45;
        }

        [v33 setDisplayType:v46];
        v47 = String._bridgeToObjectiveC()();
        [v33 setFeatureName:v47];

        [v33 setUserPreferenceSyllable:2];
        [*(v2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_reportingController) recordLyricsViewEvent:v33];
        v48 = Logger.lyrics.unsafeMutableAddressor();
        v49 = v79;
        v50 = v75;
        (*(v38 + 16))(v79, v48, v75);
        v51 = v74;
        v52 = v76;

        v53 = v33;
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          LODWORD(v74) = v55;
          v57 = v56;
          v77 = swift_slowAlloc();
          v82 = v77;
          *v57 = 136446978;
          v80 = [v53 displayType];
          type metadata accessor for MPCReportingLyricsViewEventDisplayType(0);
          v58 = String.init<A>(describing:)();
          v60 = sub_1000105AC(v58, v59, &v82);

          *(v57 + 4) = v60;
          *(v57 + 12) = 2082;
          v61 = *(v52 + 24);
          v80 = *(v52 + 16);
          v81 = v61;

          sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
          v62 = String.init<A>(describing:)();
          v64 = sub_1000105AC(v62, v63, &v82);

          *(v57 + 14) = v64;
          *(v57 + 22) = 2082;
          v65 = Double.description.getter();
          v67 = sub_1000105AC(v65, v66, &v82);

          *(v57 + 24) = v67;
          *(v57 + 32) = 2082;
          v68 = [v51 humanDescription];
          v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v71 = v70;

          v72 = sub_1000105AC(v69, v71, &v82);

          *(v57 + 34) = v72;
          _os_log_impl(&_mh_execute_header, v54, v74, "Recorded PAF Event of type=%{public}s; id=%{public}s; duration=%{public}ss; song=%{public}s", v57, 0x2Au);
          swift_arrayDestroy();

          (*(v38 + 8))(v79, v75);
        }

        else
        {

          (*(v38 + 8))(v49, v50);
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }
}

id sub_1002AB634()
{
  if (*(v0 + OBJC_IVAR___MusicNowPlayingLyricsViewController_state + 8) != 1)
  {
    return 0;
  }

  if (*(v0 + OBJC_IVAR___MusicNowPlayingLyricsViewController_state) == 2)
  {
    result = *(v0 + OBJC_IVAR___MusicNowPlayingLyricsViewController_staticLyricsViewController);
    if (!result)
    {
      __break(1u);
      return 0;
    }

    return [result contentScrollView];
  }

  result = *(v0 + OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController);
  if (result)
  {
    return [result contentScrollView];
  }

  __break(1u);
  return result;
}

id sub_1002AB6F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying] = 0;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_layout] = 0;
  v7 = &v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_lyricsCompositingFilter];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v8 = &v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_state];
  *v8 = 0;
  v8[8] = 0;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_cardHeight] = 0;
  v9 = &v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_artworkFrame];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_container] = 0;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController] = 0;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_staticLyricsViewController] = 0;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_activityIndicator] = 0;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_gradientMaskLayer] = 0;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton] = 0;
  v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_areControlsHidden] = 0;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationSliderConstraints] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationSliderSplitViewConstraints] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButtonConstraints] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButtonToVocalAttenuationSplitViewConstraints] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButtonSplitViewConstraints] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_tapToRadarButtonConstraints] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_tapToRadarButtonSplitViewConstraints] = _swiftEmptyArrayStorage;
  v10 = &v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_currentLyricsTask];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_song] = 0;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_modelPlayEvent] = 0;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_backgroundObserver] = 0;
  v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_isBackgrounded] = 0;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_didActivateObserver] = 0;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_presentationObserver] = 0;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_dismissalObserver] = 0;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_optionsObserver] = 0;
  v11 = OBJC_IVAR___MusicNowPlayingLyricsViewController_lyricsLoader;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for LyricsLoader()) init];
  *&v4[OBJC_IVAR___MusicNowPlayingLyricsViewController_lyrics] = 0;
  *&v4[OBJC_IVAR___MusicNowPlayingLyricsViewController_sharingTransitionView] = 0;
  *&v4[OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationToggleSlider] = 0;
  v12 = OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalCommandsFilter;
  type metadata accessor for SequentialVocalCommandsFilter();
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  *&v4[v12] = SequentialVocalCommandsFilter.__allocating_init(playbackController:)(qword_101218AD8);
  *&v4[OBJC_IVAR___MusicNowPlayingLyricsViewController_tapToRadarButton] = 0;
  v13 = OBJC_IVAR___MusicNowPlayingLyricsViewController_reportingController;
  *&v4[v13] = [objc_allocWithZone(MPCLyricsReportingController) init];
  *&v4[OBJC_IVAR___MusicNowPlayingLyricsViewController_visibleDuration] = 0;
  v14 = OBJC_IVAR___MusicNowPlayingLyricsViewController_lyricsVisibilityStart;
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  if (a2)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  v19.receiver = v4;
  v19.super_class = type metadata accessor for NowPlayingLyricsViewController(0);
  v17 = objc_msgSendSuper2(&v19, "initWithNibName:bundle:", v16, a3);

  return v17;
}

id sub_1002ABAB0(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_layout] = 0;
  v4 = &v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_lyricsCompositingFilter];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v5 = &v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_state];
  *v5 = 0;
  v5[8] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_cardHeight] = 0;
  v6 = &v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_artworkFrame];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_container] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_staticLyricsViewController] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_activityIndicator] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_gradientMaskLayer] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton] = 0;
  v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_areControlsHidden] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationSliderConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationSliderSplitViewConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButtonConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButtonToVocalAttenuationSplitViewConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButtonSplitViewConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_tapToRadarButtonConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_tapToRadarButtonSplitViewConstraints] = _swiftEmptyArrayStorage;
  v7 = &v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_currentLyricsTask];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_song] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_modelPlayEvent] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_backgroundObserver] = 0;
  v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_isBackgrounded] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_didActivateObserver] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_presentationObserver] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_dismissalObserver] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_optionsObserver] = 0;
  v8 = OBJC_IVAR___MusicNowPlayingLyricsViewController_lyricsLoader;
  *&v2[v8] = [objc_allocWithZone(type metadata accessor for LyricsLoader()) init];
  *&v2[OBJC_IVAR___MusicNowPlayingLyricsViewController_lyrics] = 0;
  *&v2[OBJC_IVAR___MusicNowPlayingLyricsViewController_sharingTransitionView] = 0;
  *&v2[OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationToggleSlider] = 0;
  v9 = OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalCommandsFilter;
  type metadata accessor for SequentialVocalCommandsFilter();
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  *&v2[v9] = SequentialVocalCommandsFilter.__allocating_init(playbackController:)(qword_101218AD8);
  *&v2[OBJC_IVAR___MusicNowPlayingLyricsViewController_tapToRadarButton] = 0;
  v10 = OBJC_IVAR___MusicNowPlayingLyricsViewController_reportingController;
  *&v2[v10] = [objc_allocWithZone(MPCLyricsReportingController) init];
  *&v2[OBJC_IVAR___MusicNowPlayingLyricsViewController_visibleDuration] = 0;
  v11 = OBJC_IVAR___MusicNowPlayingLyricsViewController_lyricsVisibilityStart;
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 56))(&v2[v11], 1, 1, v12);
  v15.receiver = v2;
  v15.super_class = type metadata accessor for NowPlayingLyricsViewController(0);
  v13 = objc_msgSendSuper2(&v15, "initWithCoder:", a1);

  if (v13)
  {
  }

  return v13;
}

void sub_1002ABE04(uint64_t a1)
{
  sub_1001E8510(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002ABF44(void *a1)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v4 = &v15 - v3;
  v5 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_song];
  if (!v5)
  {
    return;
  }

  v16 = v5;
  if (![a1 isRemoteServerLikelyReachable])
  {
    goto LABEL_8;
  }

  v6 = v16;
  if (!v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_state + 8])
  {
    v7 = &v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_currentLyricsTask];
    if (!*&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_currentLyricsTask])
    {
      type metadata accessor for LyricsLoader();
      if (static LyricsLoader.supportsLyrics(for:)(v16))
      {
        v8 = type metadata accessor for TaskPriority();
        (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
        type metadata accessor for MainActor();
        v9 = v1;
        v10 = static MainActor.shared.getter();
        v11 = swift_allocObject();
        v11[2] = v10;
        v11[3] = &protocol witness table for MainActor;
        v11[4] = v9;
        v12 = sub_1001F4CB8(0, 0, v4, &unk_100EC5540, v11);
        v14 = *v7;
        v13 = v7[1];
        *v7 = v12;
        v7[1] = v5;
        sub_1002AC974(v14, v13);
        return;
      }

LABEL_8:
      v6 = v16;
    }
  }
}

uint64_t sub_1002AC120()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1002AC1CC;

  return sub_1002A0D18();
}

uint64_t sub_1002AC1CC()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002ADCD8, v1, v0);
}

id sub_1002AC370(int a1, int a2, char *a3, void *a4)
{
  v13[0] = 0x3FF0000000000000;
  v13[1] = 0;
  v13[2] = 0;
  v13[3] = 0x3FF0000000000000;
  v13[4] = 0;
  v13[5] = 0;
  [a3 setTransform:v13];
  [*&a3[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_backgroundView] setHidden:0];
  v6 = OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_containerView;
  v7 = *&a3[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_containerView];
  v8 = [a4 traitCollection];
  v9 = [v8 accessibilityContrast];

  v10 = 0;
  if (v9 == 1)
  {
    v10 = *UIColor.MusicTint.normal.unsafeMutableAddressor();
  }

  [v7 setBackgroundColor:v10];

  [*&a3[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_shadowView] setAlpha:1.0];
  [*&a3[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_highlightView] setAlpha:0.0];
  v11 = [*&a3[v6] layer];
  [v11 setCornerRadius:16.0];

  result = *&a3[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_finalLabelTopConstraint];
  if (result)
  {
    [result setConstant:12.0];
    return [a3 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002AC59C(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t getEnumTagSinglePayload for Artwork.Size.Dimension(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Artwork.Size.Dimension(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1002AC668()
{
  result = qword_1011899F8;
  if (!qword_1011899F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011899F8);
  }

  return result;
}

uint64_t sub_1002AC6E4()
{
  v1 = *&v0[OBJC_IVAR___MusicNowPlayingLyricsViewController_sharingTransitionView];
  if (v1)
  {
    type metadata accessor for PresentationDonationItem();
    v2 = swift_allocObject();
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
    *(v2 + 16) = 0x4C6C616974696E49;
    *(v2 + 24) = 0xEB00000000656E69;
    *(v2 + 32) = v1;
    *(v2 + 40) = 0;
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v0;
    *(v2 + 72) = sub_1002AC7D0;
    *(v2 + 80) = v3;
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    *(v2 + 88) = sub_1002AC7D8;
    *(v2 + 96) = v4;
    v5 = v0;
  }

  else
  {
    v2 = 0;
  }

  v6 = v1;
  return v2;
}

void sub_1002AC7D8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_sharingTransitionView);
  *(v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_sharingTransitionView) = 0;
}

uint64_t sub_1002AC7F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_100299F4C(a1, v4, v5, v6);
}

uint64_t sub_1002AC8A4(uint64_t result, char a2)
{
  if (!a2)
  {
  }

  return v2;
}

uint64_t sub_1002AC8B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1002A0998(a1, v4, v5, v7, v6);
}

void sub_1002AC974(uint64_t a1, void *a2)
{
  if (a1)
  {
  }
}

id sub_1002AC9B4(id result, void *a2)
{
  if (result)
  {

    return a2;
  }

  return result;
}

uint64_t sub_1002AC9FC(uint64_t result, char a2)
{
  if (!a2)
  {
    return swift_errorRetain();
  }

  return v2;
}

void sub_1002ACA0C(char *a1)
{
  v1 = *&a1[OBJC_IVAR___MusicNowPlayingLyricsViewController_staticLyricsViewController];
  if (v1)
  {
    v3 = v1;
    v4 = [a1 traitCollection];
    sub_100050078();
    v5 = UITraitCollection.subscript.getter();

    if (v5)
    {
      if (qword_10117F8E8 != -1)
      {
        swift_once();
      }

      v6 = qword_101219080;
    }

    else
    {
      v6 = [objc_opt_self() labelColor];
    }

    v7 = *&v3[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_textColor];
    *&v3[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_textColor] = v6;
    v8 = v6;

    sub_100781F6C();
  }

  else
  {
    __break(1u);
  }
}

id sub_1002ACB38()
{
  v1 = type metadata accessor for LyricsSharingAnimationController();
  v2 = objc_allocWithZone(v1);
  v2[OBJC_IVAR____TtC5Music32LyricsSharingAnimationController_didPrepareAnimations] = 0;
  if (qword_10117F5B8 != -1)
  {
    swift_once();
  }

  v3 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_101218A88 timingParameters:0.0];
  *&v2[OBJC_IVAR____TtC5Music32LyricsSharingAnimationController_stampAnimator] = v3;
  v4 = &v2[OBJC_IVAR____TtC5Music32LyricsSharingAnimationController_sourceViewController];
  *v4 = v0;
  v4[1] = &off_1010A3840;
  v7.receiver = v2;
  v7.super_class = v1;
  v5 = v0;
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t sub_1002ACC1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_1002AC120();
}

double sub_1002ACCD0(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 != 1)
  {
  }

  return result;
}

uint64_t sub_1002ACD34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1002A932C(a1, v4, v5, v6);
}

uint64_t sub_1002ACDF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1002A854C(a1, v4, v5, v6);
}

uint64_t sub_1002ACEA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1002A8398(a1, v4, v5, v6);
}

uint64_t sub_1002ACF58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1002A81DC(a1, v4, v5, v7, v6);
}

uint64_t sub_1002AD018(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1002A8700(a1, v4, v5, v7, v6);
}

uint64_t sub_1002AD0D8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1002AD120(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1002A70C4(a1, v4, v5, v7, v6);
}

uint64_t sub_1002AD258()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_1002A54E4();
}

uint64_t sub_1002AD304(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1002A562C(a1, v4, v5, v6);
}

uint64_t sub_1002AD3C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002AD430(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002AD498(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1002AD554()
{
  v1 = *(type metadata accessor for Lyrics.TextLine(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for SyncedLyricsSharingTransitionInfo(0) - 8);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = *(v0 + v3);
  v9 = v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80));

  sub_1002A4AEC(v5, v6, v7, v0 + v2, v8, v9);
}

uint64_t sub_1002AD680()
{
  v1 = type metadata accessor for SyncedLyricsSharingTransitionInfo(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(type metadata accessor for Lyrics.TextLine(0) + 28);
  v4 = type metadata accessor for Locale.Language();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1002AD930(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101183F30, qword_100EBF960);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002AD9F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002F3F4;

  return sub_10029E6EC();
}

uint64_t getEnumTagSinglePayload for NowPlayingLyricsViewController.State.LyricsType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NowPlayingLyricsViewController.State.LyricsType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
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
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1002ADBF8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1002ADC0C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_1002ADC40()
{
  result = qword_101189A38;
  if (!qword_101189A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101189A38);
  }

  return result;
}

void sub_1002ADD7C()
{
  v0 = objc_allocWithZone(UIColor);
  v3[4] = sub_1002ADE44;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_10003640C;
  v3[3] = &unk_1010A41C8;
  v1 = _Block_copy(v3);
  v2 = [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  qword_1012189B0 = v2;
}

id sub_1002ADE44(void *a1)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    sub_100009F78(0, &qword_101180C98, UIColor_ptr);
    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(25, 25, 28, 0.2);
  }

  else
  {
    v2 = objc_allocWithZone(UIColor);

    return [v2 initWithWhite:0.75 alpha:0.2];
  }
}

id sub_1002ADF78()
{
  type metadata accessor for NowPlaying.TrackMetadata(0);
  __chkstk_darwin();
  v2 = &v20[-1] - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = OBJC_IVAR____TtC5Music26BottomPlayerViewController____lazy_storage___glissCoordinator;
  v4 = *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController____lazy_storage___glissCoordinator];
  if (v4)
  {
    v5 = *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController____lazy_storage___glissCoordinator];
LABEL_5:
    v18 = v4;
    return v5;
  }

  v6 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();
  sub_1002B709C(v6, v2);
  v7 = *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_glissandoDataSource];

  result = [v0 view];
  if (result)
  {
    v9 = result;
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    _s19GlissandoDataSourceCMa();
    sub_1002B7108(&unk_101183970, _s19GlissandoDataSourceCMa, &unk_100EE3CD8);
    Gliss.Coordinator.GestureConfiguration.init(hostingView:hitRect:simultaneousGestureRecognizerAllowance:)(v9, sub_1002B7100, v10, 0, 0, v20);
    sub_10010FC20(&unk_101189D80, &qword_100EBF3F0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100EBC6B0;
    v12 = v0;
    v13 = sub_1002AE644();
    v14 = sub_1002B7108(&unk_101183980, type metadata accessor for NowPlaying.TrackTitleStackView, &protocol conformance descriptor for NowPlaying.TrackTitleStackView);
    *(v11 + 32) = v13;
    *(v11 + 40) = v14;
    v15 = objc_allocWithZone(sub_10010FC20(&unk_101189D90, &unk_100EBF3F8));
    v16 = Gliss.Coordinator.init(item:dataSource:gestureConfiguration:coordinatedViews:)(v2, v7, v20, v11);
    v17 = *&v12[v3];
    *&v12[v3] = v16;
    v5 = v16;

    v4 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_1002AE1B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_mediaControls;
    v6 = *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_mediaControls);
    if (v6)
    {
      [v6 setSourceView:a1];
      v7 = *&v4[v5];
      if (v7)
      {
        [v7 startPrewarming];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1002AE248(uint64_t a1, uint64_t a2, SEL *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_mediaControls);
    v6 = Strong;
    v7 = v5;

    if (v5)
    {
      [v7 *a3];
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_1002AE2D0@<D0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v4 = *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlaying), v5 = Strong, v6 = v4, v5, v4))
  {
    *(a2 + 24) = &type metadata for DragDropToQueue.Destination;
    *(a2 + 32) = sub_1002B8664();
    *a2 = v6;
    *(a2 + 8) = 4;
    *(a2 + 16) = 1;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_1002AE378(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  *&result = __chkstk_darwin().n128_u64[0];
  v5 = &v9 - v4;
  if (a2 == 3)
  {
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    type metadata accessor for MainActor();
    v7 = static MainActor.shared.getter();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = &protocol witness table for MainActor;
    sub_1001F524C(0, 0, v5, &unk_100EC5930, v8);
  }

  return result;
}

uint64_t sub_1002AE490(uint64_t a1)
{
  v1[12] = a1;
  type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v3;
  v1[15] = v2;

  return _swift_task_switch(sub_1002AE528, v3, v2);
}

uint64_t sub_1002AE528()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = 0;
  *(v0 + 40) = &type metadata for Player.ClearCommand;
  *(v0 + 48) = &protocol witness table for Player.ClearCommand;
  *(v0 + 80) = &_s18NowPlayingUISourceON;
  *(v0 + 88) = &off_10109D788;
  *(v0 + 56) = 2;
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_1001A2D48;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

char *sub_1002AE644()
{
  v1 = OBJC_IVAR____TtC5Music26BottomPlayerViewController____lazy_storage___nowPlayingItemStackView;
  v2 = *(v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController____lazy_storage___nowPlayingItemStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController____lazy_storage___nowPlayingItemStackView);
  }

  else
  {
    v4 = v0;
    if (qword_10117F4E0 != -1)
    {
      swift_once();
    }

    v5 = qword_101218970;
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 labelColor];
    NowPlaying.TrackTitleStackView.Label.Attributes.Marquee.init(isEnabled:contentGap:fadeInsets:)(1, v14, 32.0, 0.0, 8.0, 0.0, 40.0);
    NowPlaying.TrackTitleStackView.Label.Attributes.init(font:color:isHidden:marquee:action:)(v7, v8, 0, v14, 1, 0, 0, v15);
    if (qword_10117F4E8 != -1)
    {
      swift_once();
    }

    NowPlaying.TrackTitleStackView.Label.Attributes.init(font:color:isHidden:marquee:action:)(qword_101218978, [v6 labelColor], 0, v14, 1, 0, 0, v16);
    v9 = objc_allocWithZone(type metadata accessor for NowPlaying.TrackTitleStackView(0));
    v10 = NowPlaying.TrackTitleStackView.init(titleAttributes:subtitleAttributes:)(v15, v16);
    v11 = *(v4 + v1);
    *(v4 + v1) = v10;
    v3 = v10;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

uint64_t sub_1002AE828(uint64_t a1)
{
  v1[12] = a1;
  type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v3;
  v1[15] = v2;

  return _swift_task_switch(sub_1002AE8C0, v3, v2);
}

uint64_t sub_1002AE8C0()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = 0;
  *(v0 + 40) = &type metadata for Player.ShuffleCommand;
  *(v0 + 48) = &protocol witness table for Player.ShuffleCommand;
  *(v0 + 80) = &_s18NowPlayingUISourceON;
  *(v0 + 88) = &off_10109D788;
  *(v0 + 56) = 2;
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_1001A2A1C;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

double sub_1002AE9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  sub_1001F524C(0, 0, v5, a3, v8);

  return result;
}

uint64_t sub_1002AEB04(uint64_t a1)
{
  v1[12] = a1;
  type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v3;
  v1[15] = v2;

  return _swift_task_switch(sub_1002AEB9C, v3, v2);
}

uint64_t sub_1002AEB9C()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = 0;
  *(v0 + 40) = &type metadata for Player.RepeatCommand;
  *(v0 + 48) = &protocol witness table for Player.RepeatCommand;
  *(v0 + 80) = &_s18NowPlayingUISourceON;
  *(v0 + 88) = &off_10109D788;
  *(v0 + 56) = 2;
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_1001A2A1C;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

void sub_1002AECB8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_reverseButtonConfiguration + 16);
    if (v5)
    {
      if (*(v5 + 16))
      {
        v6 = sub_1006CCC5C();
        if (v7)
        {
          v8 = *(*(v5 + 56) + 16 * v6);
          v14 = a1;

          v8(&v14);
        }
      }
    }

    v9 = *&v4[OBJC_IVAR____TtC5Music26BottomPlayerViewController_reverseButton];
    if (v9)
    {
      v10 = *&v9[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView];
      if (v10)
      {
        v11 = *((swift_isaMask & *v10) + 0x110);
        v12 = v9;
        v13 = v10;
        v11(v13);

        v4 = v12;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1002AEDEC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *&Strong[OBJC_IVAR____TtC5Music26BottomPlayerViewController_playPauseButtonConfiguration + 16];
    if (v4 && *(v4 + 16))
    {
      v5 = Strong;
      v6 = sub_1006CCC5C();
      if (v7)
      {
        v8 = *(*(v4 + 56) + 16 * v6);
        v9 = a1;

        v8(&v9);
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

void sub_1002AEEAC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_skipButton;
    v6 = *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_skipButton);
    if (v6)
    {
      if ([v6 isHolding])
      {
LABEL_11:

        return;
      }

      v7 = *&v4[OBJC_IVAR____TtC5Music26BottomPlayerViewController_skipButtonConfiguration + 16];
      if (v7)
      {
        if (*(v7 + 16))
        {
          v8 = sub_1006CCC5C();
          if (v9)
          {
            v10 = *(*(v7 + 56) + 16 * v8);
            v16 = a1;

            v10(&v16);
          }
        }
      }

      v11 = *&v4[v5];
      if (v11)
      {
        v12 = *&v11[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView];
        if (v12)
        {
          v13 = *((swift_isaMask & *v12) + 0x110);
          v14 = v11;
          v15 = v12;
          v13(v15);

          v4 = v14;
        }

        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1002AEFFC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *&Strong[*a3 + 16];
    if (v8 && *(v8 + 16))
    {
      v9 = Strong;
      v10 = sub_1006CCC5C();
      if (v11)
      {
        v12 = *(*(v8 + 56) + 16 * v10);
        v18 = a1;

        v12(&v18);

        v13 = *&v9[*a4];
        if (!v13)
        {
          __break(1u);
          return;
        }

        Strong = v9;
        v14 = *&v13[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView];
        if (v14)
        {
          v15 = *((swift_isaMask & *v14) + 0x130);
          v16 = v13;
          v17 = v14;
          v15(0.5);

          Strong = v16;
        }
      }

      else
      {
        Strong = v9;
      }
    }
  }
}

void sub_1002AF144(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + *a3 + 16);
    if (v9)
    {
      if (*(v9 + 16))
      {
        v10 = sub_1006CCC5C();
        if (v11)
        {
          v12 = *(*(v9 + 56) + 16 * v10);
          v18 = a1;

          v12(&v18);
        }
      }
    }

    v13 = *&v8[*a4];
    if (v13)
    {
      v14 = *&v13[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView];
      if (v14)
      {
        v15 = *((swift_isaMask & *v14) + 0x138);
        v16 = v13;
        v17 = v14;
        v15(v17);

        v8 = v16;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1002AF278(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1000511A4();
  }
}

void sub_1002AF2CC()
{
  v1 = v0;
  sub_10010FC20(&unk_101183AB0, &qword_100EBF4D0);
  __chkstk_darwin();
  v3 = &v164 - v2;
  v4 = type metadata accessor for UIButton.Configuration();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v164 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v164 - v8;
  __chkstk_darwin();
  v11 = &v164 - v10;
  __chkstk_darwin();
  v13 = &v164 - v12;
  v14 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_trailingButtonsStackView];
  if (!v14)
  {
    v168 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_trailingButtonsStackView;
    sub_100009F78(0, &qword_101183A00, UIFont_ptr);
    v176 = v7;
    v18 = static UIFont.preferredFont(forTextStyle:weight:)();
    v19 = [objc_opt_self() configurationWithFont:v18 scale:3];

    static UIButton.Configuration.plain()();
    v174 = objc_opt_self();
    v20 = [v174 labelColor];
    UIButton.Configuration.baseForegroundColor.setter();
    v21 = String._bridgeToObjectiveC()();
    v181 = objc_opt_self();
    v22 = [v181 systemImageNamed:v21];

    UIButton.Configuration.image.setter();
    v180 = v19;
    v164 = v19;
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    v23 = type metadata accessor for HitMyRectButton();
    v24 = *(v5 + 16);
    v178 = (v5 + 16);
    v179 = v24;
    v165 = v13;
    v24(v11, v13, v4);
    v25 = v23;
    v26 = UIButton.init(configuration:primaryAction:)();
    sub_100009F78(0, &unk_101189DF0, UIPointerStyle_ptr);
    v173 = static UIPointerStyle.capsule(in:)(0);
    v177 = v27;
    swift_retain_n();
    v28 = v26;
    UIButton.pointerStyleProvider.setter();
    v29 = v28;
    [v29 setContextMenuInteractionEnabled:1];
    [v29 setShowsMenuAsPrimaryAction:1];
    v30 = v29;
    v31 = [v30 layer];
    [v31 setAllowsGroupBlending:0];

    sub_100009F78(0, &unk_1011845F0, UIMenu_ptr);
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v33.value = 0;
    isa = static UIMenu.lazy(title:image:options:cached:childrenProvider:)(0, 0, 0, v33, 0, sub_1002B81EC, v32).super.super.isa;

    [v30 setMenu:isa];

    [v30 setShowsMenuFromSource:0];
    v35 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_contextMenuButton];
    *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_contextMenuButton] = v30;
    v175 = v30;

    v36 = v25;
    v169 = v25;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v37 = [objc_allocWithZone(ObjCClassFromMetadata) init];
    v38 = UIView.forAutolayout.getter();

    static UIButton.Configuration.plain()();
    v39 = v174;
    v40 = [v174 labelColor];
    UIButton.Configuration.baseForegroundColor.setter();
    v41 = String._bridgeToObjectiveC()();
    v42 = [v181 systemImageNamed:v41];
    v43 = v4;

    UIButton.Configuration.image.setter();
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    v166 = v9;
    v179(v3, v9, v4);
    v167 = v5;
    v170 = *(v5 + 56);
    v170(v3, 0, 1, v4);
    v44 = v38;
    UIButton.configuration.setter();
    UIButton.pointerStyleProvider.setter();

    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    ControlEventHandling<>.on(_:handler:)(64, sub_1002B81F4, v45, v36);

    v46 = v44;
    v47 = [v46 layer];
    [v47 setAllowsGroupBlending:0];

    v48 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_lyricsButton;
    swift_beginAccess();
    v49 = *&v1[v48];
    *&v1[v48] = v46;
    v172 = v46;

    v50 = [objc_allocWithZone(ObjCClassFromMetadata) init];
    v51 = UIView.forAutolayout.getter();

    v52 = v176;
    static UIButton.Configuration.plain()();
    v53 = [v39 labelColor];
    UIButton.Configuration.baseForegroundColor.setter();
    v54 = String._bridgeToObjectiveC()();
    v55 = [v181 systemImageNamed:v54];

    UIButton.Configuration.image.setter();
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    v179(v3, v52, v43);
    v174 = v43;
    v170(v3, 0, 1, v43);
    v56 = v51;
    UIButton.configuration.setter();
    UIButton.pointerStyleProvider.setter();

    v57 = swift_allocObject();
    swift_unknownObjectWeakInit();
    ControlEventHandling<>.on(_:handler:)(64, sub_1002B8214, v57, v169);

    v58 = v56;
    v59 = [v58 layer];
    [v59 setAllowsGroupBlending:0];

    v60 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_queueButton];
    *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_queueButton] = v58;
    v61 = v58;

    type metadata accessor for HitMyRectStackView();
    v62 = sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_100EBE270;
    v64 = v175;
    v65 = v172;
    *(v63 + 32) = v175;
    *(v63 + 40) = v65;
    *(v63 + 48) = v61;
    v66 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_100009F78(0, &qword_101181620, UIView_ptr);
    v67 = v64;
    v68 = v65;
    v69 = v61;
    v70 = Array._bridgeToObjectiveC()().super.isa;

    v71 = [v66 initWithArrangedSubviews:v70];

    v72 = UIView.forAutolayout.getter();
    v73 = v72;
    [v73 setAxis:0];
    [v73 setSpacing:6.0];

    v74 = [v1 view];
    if (v74)
    {
      v75 = v74;
      v76 = v73;
      [v75 addSubview:v76];

      v77 = *&v1[v168];
      *&v1[v168] = v76;
      v181 = v76;

      v180 = objc_opt_self();
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_100EBEE70;
      v79 = [v69 widthAnchor];
      v80 = [v79 constraintEqualToConstant:48.0];

      *(v78 + 32) = v80;
      v81 = [v69 heightAnchor];
      v82 = [v69 widthAnchor];
      v179 = v62;
      v83 = v69;
      v84 = [v81 constraintEqualToAnchor:v82];

      *(v78 + 40) = v84;
      v85 = [v68 widthAnchor];
      v86 = [v83 widthAnchor];
      v87 = [v85 constraintEqualToAnchor:v86];

      *(v78 + 48) = v87;
      v88 = [v68 heightAnchor];
      v89 = [v68 widthAnchor];
      v178 = v68;

      v90 = [v88 constraintEqualToAnchor:v89];
      *(v78 + 56) = v90;
      v91 = [v67 widthAnchor];
      v92 = [v83 widthAnchor];
      v177 = v83;

      v93 = [v91 constraintEqualToAnchor:v92];
      *(v78 + 64) = v93;
      v94 = [v67 heightAnchor];
      v95 = [v67 widthAnchor];
      v96 = v67;

      v97 = [v94 constraintEqualToAnchor:v95];
      *(v78 + 72) = v97;
      sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
      v98 = Array._bridgeToObjectiveC()().super.isa;

      [v180 activateConstraints:v98];

      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_100EC56C0;
      v100 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_transportControlsStack;
      v101 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_transportControlsStack];
      if (v101)
      {
        v102 = [v101 leadingAnchor];
        v103 = [v1 view];
        if (v103)
        {
          v104 = v103;
          v105 = [v103 layoutMarginsGuide];

          v106 = [v105 leadingAnchor];
          v107 = [v102 constraintEqualToAnchor:v106];

          *(v99 + 32) = v107;
          v108 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_artworkLayoutGuide];
          if (v108)
          {
            v109 = [v108 leadingAnchor];
            v110 = *&v1[v100];
            if (v110)
            {
              v111 = [v110 trailingAnchor];
              v112 = [v109 constraintEqualToAnchor:v111 constant:10.0];

              *(v99 + 40) = v112;
              v113 = v181;
              v114 = [v181 trailingAnchor];

              v115 = [v1 view];
              if (v115)
              {
                v116 = v115;
                v117 = [v115 layoutMarginsGuide];

                v118 = [v117 trailingAnchor];
                v119 = [v114 constraintEqualToAnchor:v118];

                *(v99 + 48) = v119;
                v120 = [v113 centerYAnchor];

                v121 = [v1 view];
                if (v121)
                {
                  v122 = v121;
                  v180 = v96;
                  v123 = [v121 centerYAnchor];

                  v124 = [v120 constraintEqualToAnchor:v123];
                  *(v99 + 56) = v124;
                  v125 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_shuffleButton;
                  v126 = [*&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_shuffleButton] widthAnchor];
                  if (qword_10117F528 != -1)
                  {
                    swift_once();
                  }

                  v127 = *&qword_1012189B8;
                  v128 = [v126 constraintEqualToConstant:*&qword_1012189B8];

                  *(v99 + 64) = v128;
                  v129 = [*&v1[v125] heightAnchor];
                  v130 = [*&v1[v125] widthAnchor];
                  v131 = [v129 constraintEqualToAnchor:v130];

                  *(v99 + 72) = v131;
                  v132 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_repeatButton;
                  v133 = [*&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_repeatButton] widthAnchor];
                  v134 = [v133 constraintEqualToConstant:v127];

                  *(v99 + 80) = v134;
                  v135 = [*&v1[v132] heightAnchor];
                  v136 = [*&v1[v132] widthAnchor];
                  v137 = [v135 constraintEqualToAnchor:v136];

                  *(v99 + 88) = v137;
                  v138 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_playPauseButton;
                  v139 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_playPauseButton];
                  if (v139)
                  {
                    v140 = [v139 widthAnchor];
                    v141 = [v140 constraintEqualToConstant:v127];

                    *(v99 + 96) = v141;
                    v142 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_reverseButton;
                    v143 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_reverseButton];
                    if (v143)
                    {
                      v144 = [v143 widthAnchor];
                      v145 = [v144 constraintEqualToConstant:v127];

                      *(v99 + 104) = v145;
                      v146 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_skipButton;
                      v147 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_skipButton];
                      if (v147)
                      {
                        v148 = [v147 widthAnchor];
                        v149 = [v148 constraintEqualToConstant:v127];

                        *(v99 + 112) = v149;
                        v150 = *&v1[v138];
                        if (v150)
                        {
                          v151 = [v150 heightAnchor];
                          v152 = [v151 constraintEqualToConstant:v127];

                          *(v99 + 120) = v152;
                          v153 = *&v1[v142];
                          v155 = v166;
                          v154 = v167;
                          v156 = v178;
                          if (v153)
                          {
                            v157 = [v153 heightAnchor];
                            v158 = [v157 constraintEqualToConstant:v127];

                            *(v99 + 128) = v158;
                            v159 = *&v1[v146];
                            if (v159)
                            {
                              v160 = [v159 heightAnchor];
                              v161 = [v160 constraintEqualToConstant:v127];

                              *(v99 + 136) = v161;
                              v162 = *(v154 + 8);
                              v163 = v174;
                              v162(v176, v174);
                              v162(v155, v163);
                              v162(v165, v163);
                              *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_newRegularLayoutConstraints] = v99;

                              return;
                            }

                            goto LABEL_35;
                          }

LABEL_34:
                          __break(1u);
LABEL_35:
                          __break(1u);
                          return;
                        }

LABEL_33:
                        __break(1u);
                        goto LABEL_34;
                      }

LABEL_32:
                      __break(1u);
                      goto LABEL_33;
                    }

LABEL_31:
                    __break(1u);
                    goto LABEL_32;
                  }

LABEL_30:
                  __break(1u);
                  goto LABEL_31;
                }

LABEL_29:
                __break(1u);
                goto LABEL_30;
              }

LABEL_28:
              __break(1u);
              goto LABEL_29;
            }

LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v15 = v14;
  v16 = [v1 view];
  if (!v16)
  {
    __break(1u);
    goto LABEL_23;
  }

  v181 = v16;
  [v16 addSubview:v15];

  v17 = v181;
}

void sub_1002B0570(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlaying);
    *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlaying) = v2;
    v6 = v2;
    sub_100068948(v5);
  }
}

void sub_1002B05EC(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlayingPath);
    *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlayingPath) = v2;
    v6 = v2;

    sub_1002B2290(0, 1);
  }
}

void sub_1002B066C(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharePlayTogetherSession);
    *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharePlayTogetherSession) = v2;
    v6 = v2;

    sub_10006A6D8();
  }
}

void sub_1002B06E4()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 == 2)
  {
    v4 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlaying];
    if (v4)
    {
      v5 = [v4 tracklist];
      if (v5)
      {
        v6 = v5;
        v7 = [v1 view];
        if (!v7)
        {
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v8 = v7;
        [v7 bounds];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;

        v39.origin.x = v10;
        v39.origin.y = v12;
        v39.size.width = v14;
        v39.size.height = v16;
        Width = CGRectGetWidth(v39);
        if (qword_10117F538 != -1)
        {
          swift_once();
        }

        v18 = *&qword_1012189C8;
        v19 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_shuffleButton;
        v20 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_shuffleButton];
        v21 = [v6 shuffleType];
        v22 = *&v20[OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_shuffleType];
        *&v20[OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_shuffleType] = v21;
        if (v21 != v22)
        {
          sub_10004FD5C();
        }

        v23 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_repeatButton;
        v24 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_repeatButton];
        v25 = [v6 repeatType];
        v26 = *&v24[OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_repeatType];
        *&v24[OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_repeatType] = v25;
        if (v25 != v26)
        {
          sub_100050478();
        }

        [*&v1[v19] setHidden:v18 >= Width];
        [*&v1[v23] setHidden:v18 >= Width];
        v27 = *&v1[v19];
        v28 = [v6 shuffleCommand];
        if (v28)
        {
          swift_unknownObjectRelease();
        }

        [v27 setEnabled:v28 != 0];

        v29 = *&v1[v23];
        v30 = [v6 repeatCommand];
        if (v30)
        {
          swift_unknownObjectRelease();
        }

        [v29 setEnabled:v30 != 0];
      }
    }
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_shuffleButton] setHidden:1];
    [*&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_repeatButton] setHidden:1];
  }

  v31 = sub_1000483AC();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaRemote, v31) & 1) == 0)
  {
    return;
  }

  v32 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_routeButton;
  v33 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_routeButton];
  if (!v33)
  {
    __break(1u);
    goto LABEL_31;
  }

  v34 = [v33 superview];
  if (v34)
  {

    return;
  }

  v36 = *&v1[v32];
  if (!v36)
  {
    goto LABEL_32;
  }

  LODWORD(v35) = 1148846080;
  [v36 setContentHuggingPriority:0 forAxis:v35];
  v37 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_transportControlsStack];
  if (!v37)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!*&v1[v32])
  {
LABEL_34:
    __break(1u);
    return;
  }

  [v37 addArrangedSubview:?];
}

double sub_1002B0A98()
{
  v1 = [v0 traitCollection];
  [v1 userInterfaceStyle];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = [*&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_shuffleButton] imageView];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 layer];

    v5 = String._bridgeToObjectiveC()();
    [v4 setCompositingFilter:v5];
  }

  v6 = [*&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_repeatButton] imageView];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 layer];

    v9 = String._bridgeToObjectiveC()();
    [v8 setCompositingFilter:v9];
  }

  v10 = *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_queueButton];
  if (v10)
  {
    v11 = [v10 imageView];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 layer];

      v14 = String._bridgeToObjectiveC()();
      [v13 setCompositingFilter:v14];
    }
  }

  v15 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_lyricsButton;
  swift_beginAccess();
  v16 = *&v0[v15];
  if (v16)
  {
    v17 = [v16 imageView];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 layer];

      v20 = String._bridgeToObjectiveC()();
      [v19 setCompositingFilter:v20];
    }
  }

  v21 = *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_contextMenuButton];
  if (v21 && (v22 = [v21 imageView]) != 0)
  {
    v23 = v22;
    v24 = [v22 layer];

    v25 = String._bridgeToObjectiveC()();

    [v24 setCompositingFilter:v25];
  }

  else
  {
  }

  return result;
}

void sub_1002B0D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong view];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 traitCollection];

      v8 = [v7 tabAccessoryEnvironment];
      if (v8 > 1)
      {
        v9 = &v4[OBJC_IVAR____TtC5Music26BottomPlayerViewController_lastSpecifiedTabAccessoryEnvironment];
        *v9 = v8;
        v9[8] = 0;
      }

      sub_1000511A4();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1002B0E30(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharedListeningParticipantsCount);
    *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharedListeningParticipantsCount) = v2;
    if (v2 != v5)
    {
      sub_10004F27C();
    }
  }
}

void sub_1002B0EA8(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_isSharedListeningLoading);
    *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_isSharedListeningLoading) = v2;
    if (v2 != v5)
    {
      sub_1002B2290(0, 1);
      sub_1000511A4();
    }
  }
}