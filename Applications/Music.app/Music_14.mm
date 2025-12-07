void sub_1001B5A0C(uint64_t a1)
{
  v2 = OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuide;
  v3 = *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuide);
  if (!v3)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = [v3 topAnchor];
  v5 = *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkPlaceholderLayoutGuide);
  if (!v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = [v5 bottomAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];

  v8 = *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideMotionBackgroundTopConstraint);
  *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideMotionBackgroundTopConstraint) = v7;

  v9 = *(a1 + v2);
  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = [v9 topAnchor];
  v11 = *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuide);
  if (!v11)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v12 = [v11 topAnchor];
  if (qword_10117F2B0 != -1)
  {
    swift_once();
  }

  v13 = [v10 constraintEqualToAnchor:v12 constant:*&qword_101218750];

  v14 = *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideMotionBackgroundCollapsedTopConstraint);
  *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideMotionBackgroundCollapsedTopConstraint) = v13;
}

void sub_1001B5B98(char *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5Music21NowPlayingContentView_mode;
  if ((*&a1[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode] & 0xC000) == 0)
  {
    v5 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView];
    if (!v5 || ([v5 alpha], v6 != 1.0))
    {
      v7 = objc_opt_self();
      v8 = swift_allocObject();
      *(v8 + 16) = v2;
      v60 = sub_1001D207C;
      v61 = v8;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_10002BC98;
      v59 = &unk_10109F678;
      v9 = _Block_copy(&aBlock);
      v10 = v2;

      [v7 animateWithDuration:v9 animations:0.15];
      _Block_release(v9);
    }

    sub_10065CE7C(0, 0);
  }

  if (v2[OBJC_IVAR___MusicNowPlayingControlsViewController_deferArtworkModeUpdates])
  {
    return;
  }

  v53 = v4;
  v11 = *&v2[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuideRegularConstraints];
  swift_beginAccess();
  aBlock = v11;

  sub_100124054(v12);
  v13 = aBlock;
  v52 = a1;
  if (aBlock >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_30:

    if (v2[OBJC_IVAR___MusicNowPlayingControlsViewController_mode] - 1 <= 1)
    {
      v27 = v52;
      v28 = *&v52[v4];
      *&v52[v4] = 0x8000;
      if (v28 == -32768)
      {
        return;
      }

      goto LABEL_51;
    }

    v29 = OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying;
    v30 = *&v2[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying];
    v27 = v52;
    v31 = v53;
    if (v30)
    {
      if ([v30 state] == 2)
      {
        v32 = 1;
        goto LABEL_40;
      }

      if (*&v2[v29])
      {
        goto LABEL_39;
      }
    }

    v33 = *&v2[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlayingPath];
    if (!v33)
    {
LABEL_39:
      v32 = 0;
    }

    else
    {
      v32 = [v33 isSystemMusicPath] ^ 1;
    }

LABEL_40:
    v34 = sub_1001BDD38();
    if (v34)
    {
      v35 = 256;
    }

    else
    {
      v35 = 0;
    }

    v36 = v35 | v32 | 0x4000;
    v37 = *&v52[v53];
    if ((v37 & 0xC000) != 0x4000)
    {
      *&v52[v53] = v36;
      goto LABEL_51;
    }

    v38 = v34 ^ ((v37 & 0x100) >> 8);
    if (((v32 ^ v37) & 1) == 0 && (v38 & 1) == 0)
    {
      return;
    }

    if (((v32 ^ v37) & 1) == 0)
    {
      if (v38)
      {
        *&v52[v53] = v36;
        v43 = v34;
        sub_10004C8F4();
        [v52 setNeedsLayout];
        [v52 setNeedsLayout];
        v34 = v43;
      }

LABEL_59:
      v49 = *&v52[v31];
      *&v52[v31] = v36;
      if ((v49 & 0xC000) == 0x4000 && ((v32 ^ v49) & 1) == 0 && ((v34 ^ ((v49 & 0x100) >> 8)) & 1) == 0)
      {
        return;
      }

LABEL_51:
      sub_10004C8F4();
      [v27 setNeedsLayout];
      return;
    }

    v39 = v34;
    v40 = [objc_allocWithZone(MPCubicSpringTimingParameters) initWithMass:2.0 stiffness:500.0 damping:1000.0 initialVelocity:{0.0, 0.0}];
    v41 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.1878 controlPoint2:{0.0023, 0.5399, 0.9629}];
    if (v37)
    {
      if ((v32 & 1) == 0)
      {
        v42 = [objc_allocWithZone(MPCubicSpringTimingParameters) initWithMass:5.0 stiffness:500.0 damping:1000.0 initialVelocity:{0.0, 0.0}];

        [v42 setSpringCubicTimingParameters:v41];
LABEL_57:
        v40 = v42;
      }
    }

    else if (v32)
    {
      v42 = [objc_allocWithZone(MPCubicSpringTimingParameters) initWithMass:2.0 stiffness:300.0 damping:28.0 initialVelocity:{0.0, 0.0}];

      goto LABEL_57;
    }

    v44 = [objc_allocWithZone(MPCubicSpringAnimator) initWithDuration:v40 timingParameters:0.0];
    v45 = swift_allocObject();
    *(v45 + 16) = v52;
    *(v45 + 24) = v36;
    v60 = sub_1001D2070;
    v61 = v45;
    aBlock = _NSConcreteStackBlock;
    v57 = 1107296256;
    v58 = sub_10002BC98;
    v59 = &unk_10109F628;
    v46 = _Block_copy(&aBlock);
    v47 = v44;
    v48 = v52;

    [v47 addAnimations:v46];
    _Block_release(v46);
    [v47 setInterruptible:0];

    [v47 startAnimation];
    v34 = v39;
    v31 = v53;
    goto LABEL_59;
  }

  v14 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_30;
  }

LABEL_9:
  if (v14 >= 1)
  {
    v15 = 0;
    v51 = &v2[OBJC_IVAR___MusicNowPlayingControlsViewController_metrics + 24];
    v54 = &v2[OBJC_IVAR___MusicNowPlayingControlsViewController_metrics + 32];
    v55 = OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v17 = sub_1007E91C0(v15, v13);
      }

      else
      {
        v17 = *(v13 + 8 * v15 + 32);
      }

      v18 = v17;
      if ([v17 firstAttribute] != 7 || objc_msgSend(v18, "relation"))
      {
        goto LABEL_13;
      }

      v19 = v2;
      v20 = *&v2[v55];
      if (v20)
      {
        v21 = [v20 tracklist];
        v22 = [v21 playingItem];

        if (v22)
        {
          v23 = [v22 metadataObject];

          if (v23)
          {
            v24 = [v23 innermostModelObject];
            objc_opt_self();
            v25 = swift_dynamicCastObjCClass();
            if (v25)
            {
              v50 = [v25 hasVideo];

              v16 = v51;
              if (v50)
              {
                goto LABEL_12;
              }
            }

            else
            {

              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {

                v16 = v51;
                goto LABEL_12;
              }

              objc_opt_self();
              v26 = swift_dynamicCastObjCClass();

              v16 = v51;
              if (v26)
              {
                goto LABEL_12;
              }
            }
          }
        }
      }

      v16 = v54;
LABEL_12:
      [v18 setConstant:*v16];
      v2 = v19;
LABEL_13:
      ++v15;

      if (v14 == v15)
      {
        goto LABEL_30;
      }
    }
  }

  __break(1u);
}

id sub_1001B62EC(char *a1, int a2)
{
  v3 = *&a1[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode];
  *&a1[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode] = a2;
  if (a2 >> 14)
  {
    if (a2 >> 14 == 1)
    {
      if ((v3 & 0xC000) != 0x4000)
      {
        goto LABEL_15;
      }

      v4 = v3 ^ a2;
      if (v4 & 0x100) != 0 || (v4)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (a2 != 0x8000)
      {
        if (v3 == 32769)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      if (v3 != 0x8000)
      {
LABEL_15:
        sub_10004C8F4();
        [a1 setNeedsLayout];
      }
    }
  }

  else
  {
    if (v3 >= 0x4000)
    {
      goto LABEL_15;
    }

    v5 = v3 ^ a2;
    if (v5 & 1) != 0 || ((v5 >> 8))
    {
      goto LABEL_15;
    }
  }

LABEL_16:

  return [a1 layoutIfNeeded];
}

void sub_1001B63BC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (*(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode) == 2)
  {
    v7 = Strong;
    if (*(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_animationData))
    {
      v2 = v0;
      if (qword_10117FB08 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_1000060E4(v3, qword_101219280);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "Currently animating, defering top views move", v6, 2u);
      }

      *(v2 + OBJC_IVAR___MusicNowPlayingControlsViewController_needsTopViewsUpdate) = 1;
      return;
    }

    sub_1001C8848(Strong, 4u);
    Strong = v7;
  }
}

void sub_1001B6524()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v3 = [v0 view];
    if (!v3)
    {
      __break(1u);
      return;
    }

    v4 = v3;
    v5 = [v17 isDescendantOfView:v3];

    if (v5)
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
        _os_log_impl(&_mh_execute_header, v7, v8, "updateTopViewsIfNeeded: contentView is descendant of view controller's view, not reparenting", v9, 2u);
      }

      goto LABEL_19;
    }

    if (qword_10117FB08 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000060E4(v13, qword_101219280);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "updateTopViewsIfNeeded: contentView is NOT descendant of view controller's view,  reparenting", v16, 2u);
    }
  }

  else
  {
    if (qword_10117FB08 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000060E4(v10, qword_101219280);
    v17 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v17, v11, "updateTopViewsIfNeeded: contentView is nil, reparenting top views", v12, 2u);
    }
  }

  v17 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_mainContainerView];
  sub_1001C8848(v17, 4u);
LABEL_19:
}

void sub_1001B6800()
{
  if (qword_10117F2B0 != -1)
  {
    swift_once();
  }

  v1 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuide];
  if (!v1)
  {
    __break(1u);
    goto LABEL_14;
  }

  v2 = OBJC_IVAR___MusicNowPlayingControlsViewController_currentLayoutType;
  v3 = dbl_100EBF630[v0[OBJC_IVAR___MusicNowPlayingControlsViewController_currentLayoutType]];
  v4 = *&qword_101218750;
  [v1 layoutFrame];
  Height = CGRectGetHeight(v11);
  v6 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkYConstraint];
  if (!v6)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v7 = -v4 - v3;
  if (v7 <= *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkTopOffset])
  {
    v7 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkTopOffset];
  }

  if (Height >= v7)
  {
    Height = v7;
  }

  [v6 setConstant:Height + dbl_100EBF630[v0[v2]]];
  v8 = [v0 view];
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = v8;
  [v8 setNeedsLayout];
}

double sub_1001B693C(uint64_t a1)
{
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_animationData) = a1;

  v2 = OBJC_IVAR___MusicNowPlayingControlsViewController_needsTopViewsUpdate;
  if (*(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_needsTopViewsUpdate) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = [Strong superview];
      if (v5)
      {

        sub_1001C8848(v4, 4u);

        *(v1 + v2) = 0;
        return result;
      }
    }
  }

  return result;
}

void sub_1001B6A0C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = a1;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR___MusicNowPlayingControlsViewController_mode;
  if (v3[OBJC_IVAR___MusicNowPlayingControlsViewController_mode] == v5)
  {
    return;
  }

  v8 = ObjectType;
  v9 = [v3 view];
  if (!v9)
  {
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v10 = v9;
  v11 = [v9 window];

  if (!v11 || (v12 = [v11 windowScene], v11, !v12))
  {
    if ((a2 & 1) == 0)
    {
      v14 = 0;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v13 = [v12 activationState];

  v14 = 0;
  if ((a2 & 1) != 0 && v13 != 2)
  {
LABEL_10:
    v14 = v3[OBJC_IVAR___MusicNowPlayingControlsViewController_isInTakeoverMode] ^ 1;
  }

LABEL_12:
  v15 = v3[v7];
  v3[v7] = v5;
  if (v15 != v5 && swift_unknownObjectWeakLoadStrong())
  {
    sub_1005E7E24(v5);
    swift_unknownObjectRelease();
  }

  if (v15 <= 1)
  {
    if (!v15)
    {
      if (v5 <= 1u)
      {
        if (!v5)
        {
          return;
        }

        v16 = v14 & 1;
        v17 = 0;
        goto LABEL_48;
      }

      if (v5 == 2)
      {
        v16 = v14 & 1;
        v17 = 1;
LABEL_48:

        sub_1001B70F0(v17, v16, v3);
        return;
      }

      v28 = [v3 view];
      if (v28)
      {
        v29 = v28;
        [v28 layoutIfNeeded];

        goto LABEL_53;
      }

      goto LABEL_56;
    }

    if (v5 <= 1u)
    {
      if (v5)
      {
        return;
      }

      goto LABEL_29;
    }

    if (v5 != 2)
    {
LABEL_40:
      sub_1001B860C(0, v3, v15, v8);
      goto LABEL_53;
    }

    goto LABEL_44;
  }

  if (v15 != 2)
  {
    if (v5 > 1u)
    {
      if (v5 != 2)
      {
        return;
      }

      v20 = objc_opt_self();
      sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v20 deactivateConstraints:isa];

      v22 = Array._bridgeToObjectiveC()().super.isa;

      [v20 activateConstraints:v22];

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v24 = Strong;
        sub_1001C8848(Strong, 4u);
      }

LABEL_44:
      v17 = 1;
LABEL_47:
      v16 = 0;
      goto LABEL_48;
    }

    if (!v5)
    {
LABEL_53:
      v30 = objc_opt_self();
      sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);

      v31 = Array._bridgeToObjectiveC()().super.isa;

      [v30 deactivateConstraints:v31];

      v32 = Array._bridgeToObjectiveC()().super.isa;

      [v30 activateConstraints:v32];

      if ((v14 & 1) == 0)
      {
        return;
      }

      goto LABEL_54;
    }

    v25 = objc_opt_self();
    sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);

    v26 = Array._bridgeToObjectiveC()().super.isa;

    [v25 deactivateConstraints:v26];

    v27 = Array._bridgeToObjectiveC()().super.isa;

    [v25 activateConstraints:v27];

LABEL_46:
    v17 = 0;
    goto LABEL_47;
  }

  if (v5 > 1u)
  {
    if (v5 == 2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (v5)
  {
    v18 = *&v3[OBJC_IVAR___MusicNowPlayingControlsViewController_mainContainerView];
    sub_1001C8848(v18, 4u);

    if (*&v3[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkTopOffset] != 0.0)
    {
      v19 = *&v3[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkYConstraint];
      if (v19)
      {
        [v19 setConstant:dbl_100EBF630[v3[OBJC_IVAR___MusicNowPlayingControlsViewController_currentLayoutType]]];
        sub_1001B70F0(0, 0, v3);
        if ((v14 & 1) == 0)
        {
          return;
        }

LABEL_54:
        v33 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:450.0 damping:45.0 initialVelocity:{0.0, 0.0}];
        v34 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v33 timingParameters:0.0];

        v35 = swift_allocObject();
        *(v35 + 16) = v3;
        v38[4] = sub_1001D31B4;
        v38[5] = v35;
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 1107296256;
        v38[2] = sub_10002BC98;
        v38[3] = &unk_10109EFC0;
        v36 = _Block_copy(v38);
        v37 = v3;

        [v34 addAnimations:v36];
        _Block_release(v36);
        [v34 startAnimation];

        return;
      }

LABEL_57:
      __break(1u);
      return;
    }

    goto LABEL_46;
  }

LABEL_29:

  sub_1001B860C(v14 & 1, v3, v15, v8);
}

void sub_1001B70F0(char a1, char a2, char *a3)
{
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100EBC6C0;
  if (a1)
  {
    v135 = xmmword_100EBC6C0;
    v7 = *&a3[OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideTopConstraint];
    if (v7)
    {
      v8 = objc_opt_self();
      *(v6 + 32) = v7;
      sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
      v9 = v7;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v8 deactivateConstraints:isa];

      v11 = swift_allocObject();
      *(v11 + 16) = v135;
      v12 = *&a3[OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideBottomConstraint];
      if (v12)
      {
        *(v11 + 32) = v12;
        v13 = v12;
        v14 = Array._bridgeToObjectiveC()().super.isa;

        [v8 activateConstraints:v14];

        LOBYTE(aBlock.a) = 11;
        v15 = sub_100025CE0();
        if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v15))
        {
          goto LABEL_18;
        }

        v16 = swift_allocObject();
        *(v16 + 16) = v135;
        v17 = *&a3[OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideExtendedTopConstraint];
        if (v17)
        {
          *(v16 + 32) = v17;
          v18 = v17;
          v19.super.isa = Array._bridgeToObjectiveC()().super.isa;

          [v8 activateConstraints:v19.super.isa];
LABEL_15:

          goto LABEL_18;
        }

LABEL_40:
        __break(1u);
LABEL_41:
        v121 = a3;
        __break(1u);
        goto LABEL_42;
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v20 = *&a3[OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideExtendedTopConstraint];
  if (!v20)
  {
    goto LABEL_38;
  }

  v21 = objc_opt_self();
  *(v6 + 32) = v20;
  sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
  v22 = v20;
  v23 = Array._bridgeToObjectiveC()().super.isa;

  [v21 deactivateConstraints:v23];

  LOBYTE(aBlock.a) = 11;
  v24 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v24))
  {
    v25 = *&a3[OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideBottomConstraint];
    if (v25)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  v26 = [objc_opt_self() currentDevice];
  v27 = [v26 userInterfaceIdiom];

  if (v27)
  {
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100EBC6D0;
    v29 = *&a3[OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideTopConstraint];
    if (!v29)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    *(v28 + 32) = v29;
    v30 = *&a3[OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideBottomConstraint];
    if (!v30)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    *(v28 + 40) = v30;
    v31 = v29;
    v32 = v30;
    v19.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v21 activateConstraints:v19.super.isa];
    goto LABEL_15;
  }

  v25 = *&a3[OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideBottomConstraint];
  if (v25)
  {
LABEL_17:
    [v25 setActive:1];
LABEL_18:
    v33 = swift_allocObject();
    *(v33 + 16) = a1 & 1;
    *(v33 + 24) = a3;
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    if ((a2 & 1) == 0)
    {
      v41 = a3;

      sub_1001BA620(a1 & 1, v41);
      sub_1001BA784(v34);

      sub_1001BA980(v35);

      sub_1001BABB0(v36);

      return;
    }

    v37 = *&a3[OBJC_IVAR___MusicNowPlayingControlsViewController_animationData];
    if (v37)
    {
      v38 = a3;

      swift_unknownObjectWeakInit();
      *&v135 = &v123;
      __chkstk_darwin();
      v122[2] = &aBlock;
      v122[3] = sub_1001D1F14;
      v122[4] = v33;
      v39 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v40 = swift_allocObject();
      v40[2] = v39;
      v40[3] = sub_1001D1F20;
      v40[4] = v34;
      v40[5] = sub_1001D1F28;
      v40[6] = v35;

      sub_100667FE8(v37, sub_1001D1F30, v36, sub_1001D1FEC, v122, sub_1001D2040, v40);

      swift_unknownObjectWeakDestroy();
      return;
    }

    *&v135 = v33;
    v42 = OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerView;
    v43 = *&a3[OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerView];
    if (v43)
    {
      v44 = a3;

      v45 = [v43 snapshotViewAfterScreenUpdates:0];
      if (!v45)
      {

        sub_1001B70F0(a1 & 1, 0, v44);

LABEL_36:

        return;
      }

      v46 = v45;
      v47 = [v44 traitCollection];
      sub_100050078();
      v48 = UITraitCollection.subscript.getter();

      v134 = v36;
      if (v48)
      {
        v49 = [v46 layer];
        [v49 setCompositingFilter:kCAFilterPlusL];

        v50 = [v46 layer];
        [v50 setAllowsGroupBlending:0];

        v51 = [v46 layer];
        [v51 setAllowsGroupOpacity:0];
      }

      v52 = *&a3[v42];
      if (v52)
      {
        [v52 frame];
        [v46 setFrame:?];
        [*&v44[OBJC_IVAR___MusicNowPlayingControlsViewController_mainContainerView] insertSubview:v46 atIndex:0];
        sub_1001BA784(v34);

        sub_1001BA980(v35);

        v53 = [v44 view];
        if (v53)
        {
          v54 = v53;
          v131 = v35;
          [v53 layoutIfNeeded];

          sub_1001BA620(a1 & 1, v44);
          v55 = *&a3[v42];
          if (v55)
          {
            v130 = v34;
            CGAffineTransformMakeTranslation(&aBlock, 0.0, 130.0);
            [v55 setTransform:&aBlock];
            v56 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:350.0 damping:40.0 initialVelocity:{0.0, 0.0}];
            v57 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v56 timingParameters:0.0];

            v58 = swift_allocObject();
            *(v58 + 16) = v46;
            *(v58 + 24) = v44;
            v59 = v44;
            v133 = v46;
            UIViewPropertyAnimator.addModifiedAnimations(with:animations:)(1, sub_1001D1F38, v58);

            v60 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&aBlock.tx = sub_1001D1F60;
            *&aBlock.ty = v60;
            *&aBlock.a = _NSConcreteStackBlock;
            *&aBlock.b = 1107296256;
            *&aBlock.c = sub_100338AB8;
            *&aBlock.d = &unk_10109F308;
            v61 = _Block_copy(&aBlock);

            v132 = v57;
            [v57 addCompletion:v61];
            _Block_release(v61);
            v62 = *&a3[v42];
            if (v62)
            {
              [v62 setAlpha:0.0];
              v63 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.18 controlPoint2:0.42 animations:{0.0, 0.58, 1.0}];
              v129 = v63;
              v64 = swift_allocObject();
              *(v64 + 16) = v59;
              *&aBlock.tx = sub_1001D3168;
              *&aBlock.ty = v64;
              *&aBlock.a = _NSConcreteStackBlock;
              *&aBlock.b = 1107296256;
              *&aBlock.c = sub_10002BC98;
              *&aBlock.d = &unk_10109F358;
              v65 = _Block_copy(&aBlock);
              v66 = v59;

              [v63 addAnimations:v65];
              _Block_release(v65);
              v67 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.18 controlPoint2:0.42 animations:{0.0, 0.58, 1.0}];
              v127 = v67;
              v68 = swift_allocObject();
              v69 = v133;
              *(v68 + 16) = v133;
              *(v68 + 24) = v66;
              *&aBlock.tx = sub_1001D1F68;
              *&aBlock.ty = v68;
              *&aBlock.a = _NSConcreteStackBlock;
              *&aBlock.b = 1107296256;
              *&aBlock.c = sub_10002BC98;
              *&aBlock.d = &unk_10109F3A8;
              v70 = _Block_copy(&aBlock);
              v71 = v66;
              v128 = v69;

              [v67 addAnimations:v70];
              _Block_release(v70);
              _s13AnimationDataC7ContextCMa();
              v133 = swift_allocObject();
              v72 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:450.0 damping:45.0 initialVelocity:{0.0, 0.0}];
              v73 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v72 timingParameters:0.0];

              v74 = swift_allocObject();
              v75 = v134;
              *(v74 + 16) = sub_1001D1F30;
              *(v74 + 24) = v75;
              *&aBlock.tx = sub_1001D3174;
              *&aBlock.ty = v74;
              *&aBlock.a = _NSConcreteStackBlock;
              *&aBlock.b = 1107296256;
              *&aBlock.c = sub_10002BC98;
              *&aBlock.d = &unk_10109F3F8;
              v76 = _Block_copy(&aBlock);

              [v73 addAnimations:v76];
              _Block_release(v76);
              v77 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:450.0 damping:45.0 initialVelocity:{0.0, 0.0}];
              v78 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v77 timingParameters:0.0];

              v79 = swift_allocObject();
              *(v79 + 16) = v71;
              *&aBlock.tx = sub_1001D31B4;
              *&aBlock.ty = v79;
              *&aBlock.a = _NSConcreteStackBlock;
              *&aBlock.b = 1107296256;
              *&aBlock.c = sub_10002BC98;
              *&aBlock.d = &unk_10109F448;
              v80 = _Block_copy(&aBlock);
              v125 = v71;

              v81 = v78;
              v123 = v78;
              [v78 addAnimations:v80];
              _Block_release(v80);
              _s13AnimationDataCMa();
              v82 = swift_allocObject();
              *(v82 + 72) = 0;
              *(v82 + 80) = swift_allocObject();
              *(v82 + 88) = _swiftEmptyArrayStorage;
              v124 = (v82 + 88);
              *(v82 + 96) = 0;
              *(v82 + 16) = 1;
              v84 = v127;
              v83 = v128;
              v85 = v132;
              *(v82 + 24) = v128;
              *(v82 + 32) = v85;
              v86 = v129;
              *(v82 + 40) = v84;
              *(v82 + 48) = v86;
              *(v82 + 56) = v73;
              *(v82 + 64) = v81;
              v87 = swift_allocObject();
              swift_weakInit();
              *&aBlock.tx = sub_1001D323C;
              *&aBlock.ty = v87;
              *&aBlock.a = _NSConcreteStackBlock;
              *&aBlock.b = 1107296256;
              *&aBlock.c = sub_100338AB8;
              *&aBlock.d = &unk_10109F470;
              v88 = _Block_copy(&aBlock);
              v89 = v83;
              v90 = v85;
              v91 = v84;
              v92 = v86;
              v93 = v73;
              v94 = v123;
              v123 = v89;
              v132 = v90;
              v95 = v91;
              v96 = v92;
              v97 = v93;
              v98 = v94;

              [v132 addCompletion:v88];
              _Block_release(v88);
              v99 = swift_allocObject();
              swift_weakInit();
              *&aBlock.tx = sub_1001D3240;
              *&aBlock.ty = v99;
              *&aBlock.a = _NSConcreteStackBlock;
              *&aBlock.b = 1107296256;
              *&aBlock.c = sub_100338AB8;
              *&aBlock.d = &unk_10109F498;
              v100 = _Block_copy(&aBlock);

              [v95 addCompletion:v100];
              _Block_release(v100);
              v101 = swift_allocObject();
              swift_weakInit();
              *&aBlock.tx = sub_1001D3244;
              *&aBlock.ty = v101;
              *&aBlock.a = _NSConcreteStackBlock;
              *&aBlock.b = 1107296256;
              *&aBlock.c = sub_100338AB8;
              *&aBlock.d = &unk_10109F4C0;
              v102 = _Block_copy(&aBlock);

              [v96 addCompletion:v102];
              _Block_release(v102);
              v103 = swift_allocObject();
              swift_weakInit();
              *&aBlock.tx = sub_1001D3248;
              *&aBlock.ty = v103;
              *&aBlock.a = _NSConcreteStackBlock;
              *&aBlock.b = 1107296256;
              *&aBlock.c = sub_100338AB8;
              *&aBlock.d = &unk_10109F4E8;
              v104 = _Block_copy(&aBlock);

              [v97 addCompletion:v104];
              _Block_release(v104);
              v105 = swift_allocObject();
              swift_weakInit();
              *&aBlock.tx = sub_1001D324C;
              *&aBlock.ty = v105;
              *&aBlock.a = _NSConcreteStackBlock;
              *&aBlock.b = 1107296256;
              *&aBlock.c = sub_100338AB8;
              *&aBlock.d = &unk_10109F510;
              v106 = _Block_copy(&aBlock);

              [v98 addCompletion:v106];
              _Block_release(v106);
              v107 = v123;

              v129 = v95;
              v126 = v96;

              v128 = v97;
              v127 = v98;

              *(v82 + 80) = v133;

              v108 = v124;

              v109 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v110 = swift_allocObject();
              *(v110 + 16) = v109;
              *(v110 + 24) = v107;
              v111 = swift_allocObject();
              *(v111 + 16) = sub_1001D1F70;
              *(v111 + 24) = v110;
              swift_beginAccess();
              v112 = *v108;
              v123 = v107;

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *v108 = v112;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v112 = sub_10006429C(0, v112[2] + 1, 1, v112);
                *v108 = v112;
              }

              v115 = v112[2];
              v114 = v112[3];
              if (v115 >= v114 >> 1)
              {
                v112 = sub_10006429C((v114 > 1), v115 + 1, 1, v112);
              }

              v112[2] = v115 + 1;
              v116 = &v112[2 * v115];
              v116[4] = sub_10018A020;
              v116[5] = v111;
              *(v82 + 88) = v112;
              swift_endAccess();

              sub_1001B693C(v82);
              v117 = swift_allocObject();
              v117[2] = v133;
              v117[3] = v82;
              v118 = v126;
              v117[4] = v126;
              *&aBlock.tx = sub_1001D3250;
              *&aBlock.ty = v117;
              *&aBlock.a = _NSConcreteStackBlock;
              *&aBlock.b = 1107296256;
              *&aBlock.c = sub_100338AB8;
              *&aBlock.d = &unk_10109F5B0;
              v119 = _Block_copy(&aBlock);
              v120 = v118;

              [v129 addCompletion:v119];
              _Block_release(v119);
              [v129 startAnimation];
              [v128 startAnimation];
              [v127 startAnimation];
              [v132 startAnimation];

              goto LABEL_36;
            }

            goto LABEL_47;
          }

LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

LABEL_44:

      __break(1u);
      goto LABEL_45;
    }

    goto LABEL_41;
  }

LABEL_48:
  __break(1u);
}

void sub_1001B860C(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100EBC6C0;
  v9 = *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideExtendedTopConstraint);
  if (!v9)
  {
    __break(1u);
    goto LABEL_53;
  }

  v10 = v8;
  v11 = objc_opt_self();
  *(v10 + 32) = v9;
  sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
  v12 = v9;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 deactivateConstraints:isa];

  LOBYTE(aBlock.a) = 11;
  v14 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v14))
  {
    v15 = *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideMotionBackgroundCollapsedTopConstraint);
    if (v15)
    {
LABEL_7:
      [v15 setActive:0];
      goto LABEL_8;
    }

    __break(1u);
  }

  v16 = [objc_opt_self() currentDevice];
  v17 = [v16 userInterfaceIdiom];

  if (!v17)
  {
    v15 = *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideMotionBackgroundCollapsedTopConstraint);
    if (!v15)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    goto LABEL_7;
  }

LABEL_8:
  if (!*(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_currentLayoutType) || *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_currentLayoutType) == 1)
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v18)
    {
      goto LABEL_15;
    }

    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100EBC6D0;
    v20 = *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideTopConstraint);
    if (v20)
    {
      *(v19 + 32) = v20;
      v21 = *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideBottomConstraint);
      if (v21)
      {
        *(v19 + 40) = v21;
        v22 = v20;
        v23 = v21;
        v24 = Array._bridgeToObjectiveC()().super.isa;

        [v11 activateConstraints:v24];

        goto LABEL_15;
      }

      goto LABEL_54;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

LABEL_15:
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if ((a1 & 1) == 0)
  {

    sub_1001BA030(v27);

    sub_1001C90B0();
    sub_1001B9E10(v26);

    sub_1001B9C04(v25);

    sub_1001BA138(v28);

    v32 = *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_mainContainerView);
    sub_1001C8848(v32, 4u);

    [a2 setControlsHidden:0 animated:0];

LABEL_19:

    return;
  }

  v29 = *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_animationData);
  if (v29)
  {

    swift_unknownObjectWeakInit();
    v153 = &ty;
    __chkstk_darwin();
    v139[2] = &aBlock;
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = swift_allocObject();
    v31[2] = v30;
    v31[3] = sub_1001D1E10;
    v31[4] = v25;
    v31[5] = sub_1001D1E18;
    v31[6] = v26;

    sub_100667FE8(v29, sub_1001D1E20, v27, sub_1001D1EF4, v139, sub_1001D1EFC, v31);

    swift_unknownObjectWeakDestroy();
    return;
  }

  v33 = OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerView;
  v34 = *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerView);
  if (!v34)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v153 = [v34 snapshotViewAfterScreenUpdates:0];
  if (!v153)
  {

    sub_1001B860C(0, a2, a3, a4);

    goto LABEL_19;
  }

  v35 = [a2 traitCollection];
  sub_100050078();
  v36 = UITraitCollection.subscript.getter();

  v152 = v33;
  if (v36)
  {
    v37 = [(CGFloat *)v153 layer];
    [v37 setCompositingFilter:kCAFilterPlusL];

    v38 = [(CGFloat *)v153 layer];
    [v38 setAllowsGroupBlending:0];

    v33 = v152;
    v39 = [(CGFloat *)v153 layer];
    [v39 setAllowsGroupOpacity:0];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v151 = v27;
  if (!Strong)
  {
    goto LABEL_37;
  }

  v41 = Strong;
  v42 = *&v33[a2];
  if (!v42)
  {
LABEL_61:

    __break(1u);
    goto LABEL_62;
  }

  v43 = [v42 superview];
  v44 = swift_unknownObjectWeakLoadStrong();
  v45 = v44;
  if (!v43)
  {
    if (!v44)
    {
      goto LABEL_32;
    }

LABEL_35:

LABEL_36:
LABEL_37:
    v59 = *&v33[a2];
    v58 = v153;
    if (!v59)
    {
LABEL_60:

      __break(1u);
      goto LABEL_61;
    }

    [v59 frame];
    [(CGFloat *)v153 setFrame:?];
LABEL_39:
    v150 = v28;
    v60 = OBJC_IVAR___MusicNowPlayingControlsViewController_mainContainerView;
    [*(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_mainContainerView) insertSubview:v58 atIndex:0];
    v61 = *(a2 + v60);
    sub_1001C8848(v61, a3);

    v62 = [a2 view];
    if (v62)
    {
      v63 = v62;
      [v62 layoutIfNeeded];

      v64 = sub_1001AFCCC();
      v65 = (*((swift_isaMask & *v64) + 0xE8))(&aBlock);
      *(v66 + 24) = 0;
      v65(&aBlock, 0);

      v67 = *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___titlesStackView);
      v68 = *((swift_isaMask & *v67) + 0x100);
      v69 = v67;
      v70 = v68(&aBlock);
      *(v71 + 24) = 0;
      v70(&aBlock, 0);

      sub_1001B9C04(v25);

      sub_1001B9E10(v26);

      v72 = OBJC_IVAR___MusicNowPlayingControlsViewController_artworkTopOffset;
      if (*(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkTopOffset) == 0.0)
      {
        v73 = [a2 view];
        if (!v73)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v74 = v73;
        [v73 layoutIfNeeded];
      }

      v149 = v25;
      sub_1001C90B0();
      [(CGFloat *)v58 setHidden:*(a2 + v72) != 0.0];
      v75 = *&v152[a2];
      if (v75)
      {
        v148 = v26;
        v76 = 50.0;
        if (*(a2 + v72) <= 0.0)
        {
          v76 = -300.0;
        }

        CGAffineTransformMakeTranslation(&aBlock, 0.0, v76);
        [v75 setTransform:&aBlock];
        v77 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:450.0 damping:45.0 initialVelocity:{0.0, 0.0}];
        v78 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v77 timingParameters:0.0];

        v79 = swift_allocObject();
        *(v79 + 16) = a2;
        v80 = a2;
        v146 = v78;
        UIViewPropertyAnimator.addModifiedAnimations(with:animations:)(1, sub_1001D1E30, v79);

        v81 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:450.0 damping:45.0 initialVelocity:{0.0, 0.0}];
        v82 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v81 timingParameters:0.0];

        v83 = swift_allocObject();
        *(v83 + 16) = sub_1001D1E20;
        *(v83 + 24) = v151;

        v145 = v82;
        UIViewPropertyAnimator.addModifiedAnimations(with:animations:)(1, sub_100029B6C, v83);

        v84 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:450.0 damping:45.0 initialVelocity:{0.0, 0.0}];
        v85 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v84 timingParameters:0.0];

        v86 = swift_allocObject();
        *(v86 + 16) = v58;
        *(v86 + 24) = v80;
        v87 = v80;
        v88 = v58;
        v144 = v85;
        UIViewPropertyAnimator.addModifiedAnimations(with:animations:)(1, sub_1001D1E4C, v86);

        v89 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.18 controlPoint2:0.42 animations:{0.0, 0.58, 1.0}];
        v90 = swift_allocObject();
        *(v90 + 16) = v87;
        *&aBlock.tx = sub_1001D1E74;
        *&aBlock.ty = v90;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_10002BC98;
        *&aBlock.d = &unk_10109F088;
        v91 = _Block_copy(&aBlock);
        v153 = v87;

        v92 = v89;
        [v89 addAnimations:v91];
        _Block_release(v91);
        _s13AnimationDataC7ContextCMa();
        v147 = swift_allocObject();
        v93 = *&v152[a2];
        if (v93)
        {
          [v93 setAlpha:0.0];
          v94 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.1 controlPoint2:0.42 animations:{0.0, 0.58, 1.0}];
          v95 = swift_allocObject();
          v95[2] = v88;
          v95[3] = sub_1001D1E28;
          v95[4] = v150;
          *&aBlock.tx = sub_1001D1E84;
          *&aBlock.ty = v95;
          *&aBlock.a = _NSConcreteStackBlock;
          *&aBlock.b = 1107296256;
          *&aBlock.c = sub_10002BC98;
          *&aBlock.d = &unk_10109F0D8;
          v96 = _Block_copy(&aBlock);
          v97 = v88;

          [v94 addAnimations:v96];
          _Block_release(v96);
          [(CGFloat *)v153 setControlsHidden:0 animated:1];
          _s13AnimationDataCMa();
          v98 = swift_allocObject();
          *(v98 + 72) = 0;
          *(v98 + 80) = swift_allocObject();
          *(v98 + 88) = _swiftEmptyArrayStorage;
          v143 = (v98 + 88);
          *(v98 + 96) = 0;
          *(v98 + 16) = 0;
          v100 = v144;
          v99 = v145;
          *(v98 + 24) = v97;
          *(v98 + 32) = v100;
          *(v98 + 40) = v94;
          *(v98 + 48) = v89;
          v101 = v146;
          *(v98 + 56) = v99;
          *(v98 + 64) = v101;
          v102 = swift_allocObject();
          swift_weakInit();
          *&aBlock.tx = sub_1001D1EC0;
          *&aBlock.ty = v102;
          *&aBlock.a = _NSConcreteStackBlock;
          *&aBlock.b = 1107296256;
          *&aBlock.c = sub_100338AB8;
          *&aBlock.d = &unk_10109F128;
          v103 = _Block_copy(&aBlock);
          ty = aBlock.ty;
          v104 = v97;
          v105 = v100;
          v106 = v94;
          v107 = v92;
          v108 = v99;
          v109 = v101;
          v142 = v104;
          v152 = v105;
          v110 = v106;
          v111 = v107;
          v141 = v108;
          v112 = v109;

          [v152 addCompletion:{v103, *&ty}];
          _Block_release(v103);
          v113 = swift_allocObject();
          swift_weakInit();
          *&aBlock.tx = sub_1001D1EC8;
          *&aBlock.ty = v113;
          *&aBlock.a = _NSConcreteStackBlock;
          *&aBlock.b = 1107296256;
          *&aBlock.c = sub_100338AB8;
          *&aBlock.d = &unk_10109F150;
          v114 = _Block_copy(&aBlock);

          [v110 addCompletion:v114];
          _Block_release(v114);
          v115 = swift_allocObject();
          swift_weakInit();
          *&aBlock.tx = sub_1001D1ED0;
          *&aBlock.ty = v115;
          *&aBlock.a = _NSConcreteStackBlock;
          *&aBlock.b = 1107296256;
          *&aBlock.c = sub_100338AB8;
          *&aBlock.d = &unk_10109F178;
          v116 = _Block_copy(&aBlock);

          [v111 addCompletion:v116];
          _Block_release(v116);
          v117 = swift_allocObject();
          swift_weakInit();
          *&aBlock.tx = sub_1001D1ED8;
          *&aBlock.ty = v117;
          *&aBlock.a = _NSConcreteStackBlock;
          *&aBlock.b = 1107296256;
          *&aBlock.c = sub_100338AB8;
          *&aBlock.d = &unk_10109F1A0;
          v118 = _Block_copy(&aBlock);

          v119 = v141;
          [v141 addCompletion:v118];
          _Block_release(v118);
          v120 = swift_allocObject();
          swift_weakInit();
          *&aBlock.tx = sub_1001D1EE0;
          *&aBlock.ty = v120;
          *&aBlock.a = _NSConcreteStackBlock;
          *&aBlock.b = 1107296256;
          *&aBlock.c = sub_100338AB8;
          *&aBlock.d = &unk_10109F1C8;
          v121 = _Block_copy(&aBlock);

          [v112 addCompletion:v121];
          _Block_release(v121);
          v122 = v142;

          v146 = v110;
          v144 = v111;

          v145 = v112;
          v123 = v147;
          *(v98 + 80) = v147;

          v124 = v143;

          v125 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v126 = swift_allocObject();
          *(v126 + 16) = v125;
          *(v126 + 24) = v122;
          v127 = swift_allocObject();
          *(v127 + 16) = sub_1001D1EE8;
          *(v127 + 24) = v126;
          swift_beginAccess();
          v128 = *v124;
          v129 = v122;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v124 = v128;
          v142 = v129;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v128 = sub_10006429C(0, v128[2] + 1, 1, v128);
            *v124 = v128;
          }

          v132 = v128[2];
          v131 = v128[3];
          if (v132 >= v131 >> 1)
          {
            v128 = sub_10006429C((v131 > 1), v132 + 1, 1, v128);
          }

          v128[2] = v132 + 1;
          v133 = &v128[2 * v132];
          v133[4] = sub_100029B94;
          v133[5] = v127;
          *(v98 + 88) = v128;
          swift_endAccess();

          sub_1001B693C(v98);
          v134 = swift_allocObject();
          v134[2] = v123;
          v134[3] = v98;
          v135 = v144;
          v134[4] = v144;
          *&aBlock.tx = sub_1001D1EF0;
          *&aBlock.ty = v134;
          *&aBlock.a = _NSConcreteStackBlock;
          *&aBlock.b = 1107296256;
          *&aBlock.c = sub_100338AB8;
          *&aBlock.d = &unk_10109F268;
          v136 = _Block_copy(&aBlock);
          v137 = v135;

          [v146 addCompletion:v136];
          _Block_release(v136);
          [v145 startAnimation];
          [v152 startAnimation];
          [v146 startAnimation];
          [v119 startAnimation];

          goto LABEL_19;
        }

        goto LABEL_59;
      }

LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

LABEL_57:

    __break(1u);
    goto LABEL_58;
  }

  if (!v44)
  {
    v45 = v43;
    goto LABEL_35;
  }

  sub_100009F78(0, &qword_101181620, UIView_ptr);
  v46 = static NSObject.== infix(_:_:)();

  if ((v46 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_32:
  v47 = *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_mainContainerView);
  v48 = *&v33[a2];
  if (v48)
  {
    v49 = v47;
    [v48 frame];
    [v49 convertRect:v41 fromCoordinateSpace:?];
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;

    v58 = v153;
    [(CGFloat *)v153 setFrame:v51, v53, v55, v57];

    goto LABEL_39;
  }

LABEL_63:
  v138 = v47;

  __break(1u);
}

void sub_1001B9C04(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = objc_opt_self();
    sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v3 deactivateConstraints:isa];

    v5 = *&v2[OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerCenterYConstraint];
    if (v5)
    {
      v6 = OBJC_IVAR___MusicNowPlayingControlsViewController_attributionContainerView;
      v7 = *&v2[OBJC_IVAR___MusicNowPlayingControlsViewController_attributionContainerView];
      v8 = v5;
      v9 = ([v7 isHidden] & 1) == 0 && v2[OBJC_IVAR___MusicNowPlayingControlsViewController_mode] - 3 < 0xFFFFFFFE;
      [v8 setActive:v9];

      v15 = *&v2[OBJC_IVAR___MusicNowPlayingControlsViewController__metadataStackViewRegularConstraints];
      v10 = *&v2[v6];

      if ([v10 isHidden])
      {
        goto LABEL_10;
      }

      v11 = v2;
      v12 = sub_1001CFE60(&v15, v11);

      if (v15 >> 62)
      {
        v13 = _CocoaArrayWrapper.endIndex.getter();
        if (v13 >= v12)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v13 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v13 >= v12)
        {
LABEL_9:
          sub_1003BB630(v12, v13);
LABEL_10:
          v14 = Array._bridgeToObjectiveC()().super.isa;

          [v3 activateConstraints:v14];

          return;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_1001B9E10(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_1001AFCCC();
    v4 = (*((swift_isaMask & *v3) + 0xE8))(v15);
    *(v5 + 40) = xmmword_100EBEF10;
    *(v5 + 56) = xmmword_100EBEF10;
    v4(v15, 0);

    v6 = *&v2[OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___titlesStackView];
    v7 = *((swift_isaMask & *v6) + 0x100);
    v8 = v6;
    v9 = v7(v15);
    *(v10 + 40) = xmmword_100EBEF10;
    *(v10 + 56) = xmmword_100EBEF10;
    v9(v15, 0);

    sub_1001A6F20();
    sub_1001D01A8();
    if (qword_10117F938 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000060E4(v11, qword_1012190C8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "[NowPlayingControlsViewController] setting regular mode, updating metrics", v14, 2u);
    }

    sub_1001C0A54();
  }
}

void sub_1001BA030(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying);
    if (v3)
    {
      v4 = [v3 state] == 2;
    }

    else
    {
      v4 = 0;
    }

    v5 = sub_1001BDD38();
    v6 = *&v2[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView];
    if (v6)
    {
      if (v5)
      {
        v7 = 256;
      }

      else
      {
        v7 = 0;
      }

      v8 = v7 | v4 | 0x4000;
      v9 = *&v6[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode];
      *&v6[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode] = v8;
      if (v9 & 0xC000) != 0x4000 || ((v4 ^ v9) & 1) != 0 || ((v5 ^ ((v9 & 0x100) >> 8)))
      {
        v10 = v6;
        sub_10004C8F4();
        [v10 setNeedsLayout];

        v2 = v10;
      }
    }
  }
}

void sub_1001BA138(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v2 = Strong;
  v3 = OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton;
  v4 = *(Strong + OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton);
  if (!v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  [v4 setHidden:0];
  v5 = *&v2[OBJC_IVAR___MusicNowPlayingControlsViewController_timeControl];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [v5 setAlpha:1.0];
  v6 = *&v2[v3];
  if (!v6)
  {
LABEL_11:
    __break(1u);
    return;
  }

  [v6 setAlpha:1.0];
  v7 = *&v2[OBJC_IVAR___MusicNowPlayingControlsViewController_singIndicatorView];
  if (v7)
  {
    v8 = v7;
    [v8 setHidden:0];
  }
}

void sub_1001BA218(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1001C90B0();
  }
}

void sub_1001BA268(uint64_t a1, uint64_t (*a2)(id), uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR___MusicNowPlayingControlsViewController_mainContainerView);
    sub_1001C8848(v8, 4u);

    v9 = OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerView;
    v10 = *&v7[OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerView];
    if (v10)
    {
      [v10 setAlpha:1.0];
      v11 = *&v7[v9];
      if (v11)
      {
        v15[0] = 0x3FF0000000000000;
        v15[1] = 0;
        v15[2] = 0;
        v15[3] = 0x3FF0000000000000;
        v15[4] = 0;
        v15[5] = 0;
        v12 = a2([v11 setTransform:v15]);
        a4(v12);
        if (*&v7[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkTopOffset] != 0.0)
        {
LABEL_7:

          return;
        }

        v13 = [v7 view];
        if (v13)
        {
          v14 = v13;
          [v13 layoutIfNeeded];

          goto LABEL_7;
        }

LABEL_11:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1001BA3B4(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_10117FB08 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000060E4(v5, qword_101219280);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Completion initial setRegularMode", v8, 2u);
    }

    v9 = *&v4[OBJC_IVAR___MusicNowPlayingControlsViewController_mainContainerView];
    sub_1001C8848(v9, 4u);

    [a2 removeFromSuperview];
    v10 = sub_1001AFCCC();
    v11 = (*((swift_isaMask & *v10) + 0xE8))(v20);
    *(v12 + 24) = 1;
    v11(v20, 0);

    v13 = *&v4[OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___titlesStackView];
    v14 = *((swift_isaMask & *v13) + 0x100);
    v15 = v13;
    v16 = v14(v20);
    *(v17 + 24) = 1;
    v16(v20, 0);

    v18 = [v4 view];
    if (v18)
    {
      v19 = v18;
      [v18 layoutIfNeeded];

      sub_1001B693C(0);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1001BA620(char a1, uint64_t a2)
{
  v3 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v3))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1001C8E3C();
    goto LABEL_7;
  }

  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5)
  {
    goto LABEL_7;
  }

  if ((a1 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1001C8E50();
LABEL_7:
  v6 = objc_opt_self();
  sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 deactivateConstraints:isa];

  v8 = Array._bridgeToObjectiveC()().super.isa;

  [v6 activateConstraints:v8];
}

void sub_1001BA784(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR___MusicNowPlayingControlsViewController__metadataStackViewRegularConstraints);
    v15 = v3;
    v4 = *(Strong + OBJC_IVAR___MusicNowPlayingControlsViewController_attributionContainerView);

    if ([v4 isHidden])
    {
      goto LABEL_6;
    }

    v5 = v2;
    v6 = sub_1001CFE60(&v15, v5);

    if (v15 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
      if (v7 >= v6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v7 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7 >= v6)
      {
LABEL_5:
        sub_1003BB630(v6, v7);
        v3 = v15;
LABEL_6:
        sub_10010FC20(&qword_101183990, &qword_100EBC750);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100EBC6C0;
        v9 = *&v2[OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerCenterYConstraint];
        if (v9)
        {
          v10 = inited;
          v11 = objc_opt_self();
          *(v10 + 32) = v9;
          v15 = v3;
          v12 = v9;
          sub_100124054(v10);
          sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v11 deactivateConstraints:isa];

          v14 = Array._bridgeToObjectiveC()().super.isa;

          [v11 activateConstraints:v14];

          return;
        }

LABEL_11:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1001BA980(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_1001AFCCC();
    v4 = (*((swift_isaMask & *v3) + 0xE8))(v13);
    v5 = NowPlaying.TrackTitleStackView.Label.Attributes.update(_:)(sub_1001BAB2C);
    v4(v13, 0, v5);

    v6 = *&v2[OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___titlesStackView];
    v7 = *((swift_isaMask & *v6) + 0x100);
    v8 = v6;
    v9 = v7(v13);
    v10 = NowPlaying.TrackTitleStackView.Label.Attributes.update(_:)(sub_1001BAB38);
    v9(v13, 0, v10);

    v11 = *&v2[OBJC_IVAR___MusicNowPlayingControlsViewController_reactionButton];
    if (v11)
    {
      v12 = v11;
      [v12 setHidden:1];
    }
  }
}

void sub_1001BAB44(uint64_t a1, void *a2)
{
  *(a1 + 24) = 0;
  *(a1 + 40) = xmmword_100EBEF20;
  *(a1 + 56) = xmmword_100EBEF20;
  v3 = [objc_opt_self() preferredFontForTextStyle:*a2];

  *a1 = v3;
}

void sub_1001BABB0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
    v3 = Strong;
    v4 = v2;

    if (v2)
    {
      v5 = *&v4[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode];
      *&v4[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode] = 0x8000;
      if (v5 != -32768)
      {
        sub_10004C8F4();
        [v4 setNeedsLayout];
      }
    }
  }
}

uint64_t sub_1001BAC58(uint64_t a1, uint64_t (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1001B6800();
  }

  return a2();
}

void sub_1001BACC4(uint64_t a1, uint64_t (*a2)(id), uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerView;
    v9 = *(Strong + OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerView);
    if (v9)
    {
      [v9 setAlpha:1.0];
      v10 = *&v7[v8];
      if (v10)
      {
        v14[0] = 0x3FF0000000000000;
        v14[1] = 0;
        v14[2] = 0;
        v14[3] = 0x3FF0000000000000;
        v14[4] = 0;
        v14[5] = 0;
        v11 = a2([v10 setTransform:v14]);
        a4(v11);
        v12 = [v7 view];
        if (v12)
        {
          v13 = v12;
          [v12 layoutIfNeeded];

          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }
}

id sub_1001BADCC(void *a1, uint64_t a2, CGFloat a3)
{
  CGAffineTransformMakeTranslation(&v6, 0.0, a3);
  [a1 setTransform:&v6];
  result = *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerView);
  if (result)
  {
    *&v6.a = 0x3FF0000000000000uLL;
    v6.c = 0.0;
    v6.d = 1.0;
    *&v6.tx = 0uLL;
    return [result setTransform:&v6];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001BAE64(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (!a1)
    {
      v4 = Strong;
      v5 = sub_1001AFCCC();
      v6 = (*((swift_isaMask & *v5) + 0xE8))(v13);
      *(v7 + 24) = 1;
      v6(v13, 0);

      v8 = *&v4[OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___titlesStackView];
      v9 = *((swift_isaMask & *v8) + 0x100);
      v10 = v8;
      v11 = v9(v13);
      *(v12 + 24) = 1;
      v11(v13, 0);

      Strong = v10;
    }
  }
}

void sub_1001BAFB4(void *a1, uint64_t a2)
{
  [a1 setAlpha:0.0];
  v3 = *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_reactionEffectInteraction);
  if (v3)
  {
    v4 = v3;
    dispatch thunk of ReactionEffectInteraction.clearReactions()();
  }
}

void sub_1001BB030(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

void sub_1001BB08C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_10117FB08 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000060E4(v5, qword_101219280);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Completion initial setCollapsedMode", v8, 2u);
    }

    [a2 removeFromSuperview];
    v9 = sub_1001AFCCC();
    v10 = (*((swift_isaMask & *v9) + 0xE8))(v17);
    *(v11 + 24) = 1;
    v10(v17, 0);

    v12 = *&v4[OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___titlesStackView];
    v13 = *((swift_isaMask & *v12) + 0x100);
    v14 = v12;
    v15 = v13(v17);
    *(v16 + 24) = 1;
    v15(v17, 0);
  }
}

void sub_1001BB2A0(char a1, char a2)
{
  v5 = a1 & 1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v7 = &v72 - v6;
  if (v2[OBJC_IVAR___MusicNowPlayingControlsViewController_areControlsHidden] == v5 || (v2[OBJC_IVAR___MusicNowPlayingControlsViewController_isInTakeoverMode] & 1) != 0)
  {
    return;
  }

  v8 = a1 & 1;
  v2[OBJC_IVAR___MusicNowPlayingControlsViewController_areControlsHidden] = a1 & 1;
  if (a1)
  {
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    type metadata accessor for MainActor();
    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = &protocol witness table for MainActor;
    sub_1001F4CB8(0, 0, v7, &unk_100EBF578, v11);
  }

  v12 = OBJC_IVAR___MusicNowPlayingControlsViewController_currentLayoutType;
  if (v2[OBJC_IVAR___MusicNowPlayingControlsViewController_currentLayoutType] && v2[OBJC_IVAR___MusicNowPlayingControlsViewController_currentLayoutType] != 1)
  {

LABEL_13:
    v25 = v2[v12];
    if (v2[v12])
    {
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    goto LABEL_13;
  }

  v14 = sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v15 = swift_allocObject();
  v74 = xmmword_100EBC6C0;
  *(v15 + 16) = xmmword_100EBC6C0;
  if (a1)
  {
    v73 = v14;
    v16 = *&v2[OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideBottomConstraint];
    if (!v16)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v17 = objc_opt_self();
    *(v15 + 32) = v16;
    sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
    v18 = v16;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v20 = v17;

    [v17 deactivateConstraints:isa];

    v21 = swift_allocObject();
    *(v21 + 16) = v74;
    v22 = *&v2[OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideSplitViewBottomConstraint];
    if (!v22)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    *(v21 + 32) = v22;
    v23 = v22;
    v24 = Array._bridgeToObjectiveC()().super.isa;

    [v20 activateConstraints:v24];
  }

  else
  {
    LODWORD(v73) = a1 & 1;
    v26 = *&v2[OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideSplitViewBottomConstraint];
    if (!v26)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v27 = objc_opt_self();
    *(v15 + 32) = v26;
    sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
    v28 = v26;
    v29 = Array._bridgeToObjectiveC()().super.isa;

    [v27 deactivateConstraints:v29];

    v30 = swift_allocObject();
    *(v30 + 16) = v74;
    v31 = *&v2[OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideBottomConstraint];
    if (!v31)
    {
LABEL_39:
      __break(1u);
      return;
    }

    *(v30 + 32) = v31;
    v32 = v31;
    v33 = Array._bridgeToObjectiveC()().super.isa;

    [v27 activateConstraints:v33];

    v8 = v73;
  }

  v25 = v2[v12];
  if (v2[v12])
  {
LABEL_19:
    if (v25 != 1)
    {

      if (a1)
      {
        return;
      }

      goto LABEL_24;
    }
  }

LABEL_20:
  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v34 & 1) == 0 || (a1 & 1) == 0)
  {
LABEL_24:
    v35 = swift_allocObject();
    *(v35 + 16) = v8;
    *(v35 + 24) = v2;
    v36 = *&v2[OBJC_IVAR___MusicNowPlayingControlsViewController_mainContainerView];
    v37 = v2;
    v38 = [v36 safeAreaLayoutGuide];
    [v38 layoutFrame];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;

    v81.origin.x = v40;
    v81.origin.y = v42;
    v81.size.width = v44;
    v81.size.height = v46;
    MaxY = CGRectGetMaxY(v81);
    v48 = *&v37[OBJC_IVAR___MusicNowPlayingControlsViewController_timeControl];
    if (v48)
    {
      v49 = MaxY;
      [v48 frame];
      v50 = v49 - CGRectGetMaxY(v82);
      v51 = swift_allocObject();
      *(v51 + 16) = v37;
      *(v51 + 24) = v8;
      *(v51 + 32) = v50;
      v52 = objc_opt_self();
      sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
      v53 = v37;

      v54 = Array._bridgeToObjectiveC()().super.isa;

      [v52 deactivateConstraints:v54];

      v55 = Array._bridgeToObjectiveC()().super.isa;

      [v52 activateConstraints:v55];

      if (a2)
      {
        v56 = 0.0;
        v57 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:300.0 damping:40.0 initialVelocity:{0.0, 0.0}];
        v58 = v57;
        if (a1)
        {
          v59 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:986.0 damping:62.0 initialVelocity:{0.0, 0.0}];
          v56 = 0.1;
        }

        else
        {
          v59 = v57;
        }

        sub_100009F78(0, &unk_101183AE0, UIViewPropertyAnimator_ptr);
        v62 = UIViewPropertyAnimator.init(springTimingParameters:)(v59).super.isa;
        *&v74 = v62;
        v79 = sub_1001D28E8;
        v80 = v35;
        aBlock = _NSConcreteStackBlock;
        v76 = 1107296256;
        v77 = sub_10002BC98;
        v78 = &unk_10109FD58;
        v63 = _Block_copy(&aBlock);

        [(objc_class *)v62 addAnimations:v63];
        _Block_release(v63);
        v64 = v58;
        v65 = UIViewPropertyAnimator.init(springTimingParameters:)(v64).super.isa;
        v79 = sub_1001D28F4;
        v80 = v51;
        aBlock = _NSConcreteStackBlock;
        v76 = 1107296256;
        v77 = sub_10002BC98;
        v78 = &unk_10109FD80;
        v66 = _Block_copy(&aBlock);

        [(objc_class *)v65 addAnimations:v66];
        _Block_release(v66);
        v67 = v64;
        v61 = UIViewPropertyAnimator.init(springTimingParameters:)(v67).super.isa;
        v68 = swift_allocObject();
        *(v68 + 16) = v53;
        v79 = sub_1001D2904;
        v80 = v68;
        aBlock = _NSConcreteStackBlock;
        v76 = 1107296256;
        v77 = sub_10002BC98;
        v78 = &unk_10109FDD0;
        v69 = _Block_copy(&aBlock);
        v70 = v53;

        [(objc_class *)v61 addAnimations:v69];
        _Block_release(v69);
        v71 = v74;
        [v74 startAnimation];
        [(objc_class *)v65 startAnimation];
        [(objc_class *)v61 startAnimationAfterDelay:v56];

        goto LABEL_32;
      }

      sub_1001BBD5C(a1 & 1, v53);
      sub_1001BC028(v53, a1 & 1, v50);
      v60 = [v53 view];
      if (v60)
      {
        v61 = v60;
        [(objc_class *)v60 setNeedsLayout];
LABEL_32:

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_36;
  }
}

uint64_t sub_1001BBC14()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001BBCA8, v2, v1);
}

uint64_t sub_1001BBCA8()
{

  if (qword_10117F8A8 != -1)
  {
    swift_once();
  }

  sub_10058BB38(2, 0);

  v1 = *(v0 + 8);

  return v1();
}

id sub_1001BBD5C(char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = OBJC_IVAR___MusicNowPlayingControlsViewController_bottomContainerView;
  result = *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_bottomContainerView);
  if (!result)
  {
    __break(1u);
    goto LABEL_38;
  }

  result = [result setAlpha:v3];
  v7 = *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_timeControl);
  if (!v7)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v8 = *(a2 + v4);
  if (!v8)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v9 = v7;
  [v8 alpha];
  [v9 setAlpha:?];

  [*(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_routeSharePlayTogetherControl) setAlpha:v3];
  result = *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_bottomButtonsStackView);
  if (!result)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    return result;
  }

  [result setAlpha:v3];
  v10 = *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_reactionButton);
  if (!v10)
  {
    goto LABEL_24;
  }

  v11 = *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode);
  if (v11 != 3 && v11 != 0)
  {
    v19 = v10;
    goto LABEL_22;
  }

  v13 = qword_10117F600;
  v19 = v10;
  if (v13 != -1)
  {
    swift_once();
  }

  v14 = GroupActivitiesManager.hasJoined.getter();
  v15 = sub_1001BF760();
  if (v15)
  {
    v16 = v15;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v17 = MPModelPlaylist.hasJoinedCollaboration.getter();

      v18 = v3;
      if ((v14 | v17))
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  v18 = v3;
  if ((v14 & 1) == 0)
  {
LABEL_22:
    v18 = 0.0;
  }

LABEL_23:
  [v19 setAlpha:v18];

LABEL_24:
  v20 = sub_1001AB0B4();
  v21 = sub_1001BDE70();
  v22 = 0.0;
  if (v21)
  {
    v22 = 1.0;
  }

  [v20 setAlpha:v22];

  result = *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton);
  if (!result)
  {
    goto LABEL_41;
  }

  [result setAlpha:v3];
  v23 = *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_smartTransitionIndicatorView);
  if (v23)
  {
    v24 = 1.0;
    if (*(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_areControlsHidden))
    {
      v24 = 0.0;
    }

    [v23 setAlpha:v24];
  }

  result = *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_volumeSlider);
  if (!result)
  {
    goto LABEL_42;
  }

  [result setAlpha:v3];
  result = *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_singIndicatorView);
  if (result)
  {

    return [result setHidden:a1 & 1];
  }

  return result;
}

void sub_1001BC028(uint64_t a1, char a2, CGFloat a3)
{
  v3 = OBJC_IVAR___MusicNowPlayingControlsViewController_timeControl;
  v4 = *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_timeControl);
  if (!v4)
  {
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (a2)
  {
    CGAffineTransformMakeTranslation(&v41, 0.0, a3);
    v9 = *&v41.a;
    v8 = *&v41.c;
    v10 = *&v41.tx;
  }

  else
  {
    v8 = xmmword_100EBEF30;
    v9 = xmmword_100EBEF40;
    v10 = 0uLL;
  }

  *&v41.a = v9;
  *&v41.c = v8;
  *&v41.tx = v10;
  [v4 setTransform:&v41];
  v11 = *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton);
  if (!v11)
  {
    goto LABEL_32;
  }

  v12 = *(a1 + v3);
  if (!v12)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v13 = v11;
  [v12 transform];
  [v13 setTransform:&v41];

  v14 = *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_singIndicatorView);
  if (v14)
  {
    v15 = *(a1 + v3);
    if (!v15)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v16 = v14;
    [v15 transform];
    [v16 setTransform:&v41];
  }

  v17 = *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_smartTransitionIndicatorView);
  if (!v17)
  {
LABEL_13:
    v20 = *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_transportControlsStackView);
    if (v20)
    {
      if (a2)
      {
        CGAffineTransformMakeTranslation(&v41, 0.0, a3 * 0.6);
        v22 = *&v41.a;
        v21 = *&v41.c;
        v23 = *&v41.tx;
      }

      else
      {
        v21 = xmmword_100EBEF30;
        v22 = xmmword_100EBEF40;
        v23 = 0uLL;
      }

      *&v41.a = v22;
      *&v41.c = v21;
      *&v41.tx = v23;
      [v20 setTransform:&v41];
      v24 = *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_volumeSlider);
      if (v24)
      {
        if (a2)
        {
          CGAffineTransformMakeTranslation(&v41, 0.0, a3 * 0.4);
          v26 = *&v41.a;
          v25 = *&v41.c;
          v27 = *&v41.tx;
        }

        else
        {
          v25 = xmmword_100EBEF30;
          v26 = xmmword_100EBEF40;
          v27 = 0uLL;
        }

        *&v41.a = v26;
        *&v41.c = v25;
        *&v41.tx = v27;
        [v24 setTransform:&v41];
        v28 = OBJC_IVAR___MusicNowPlayingControlsViewController_bottomContainerView;
        v29 = *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_bottomContainerView);
        if (v29)
        {
          if (a2)
          {
            CGAffineTransformMakeTranslation(&v41, 0.0, a3 * 0.2);
            v31 = *&v41.a;
            v30 = *&v41.c;
            v32 = *&v41.tx;
          }

          else
          {
            v30 = xmmword_100EBEF30;
            v31 = xmmword_100EBEF40;
            v32 = 0uLL;
          }

          *&v41.a = v31;
          *&v41.c = v30;
          *&v41.tx = v32;
          [v29 setTransform:&v41];
          v33 = *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_lyricsButton);
          if (v33)
          {
            v34 = *(a1 + v28);
            if (v34)
            {
              v35 = v33;
              [v34 transform];
              [v35 setTransform:&v41];

              v36 = *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_queueButton);
              if (v36)
              {
                v37 = *(a1 + v28);
                if (v37)
                {
                  v38 = v36;
                  [v37 transform];
                  [v38 setTransform:&v41];

                  v39 = *(a1 + v28);
                  if (v39)
                  {
                    v40 = *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_routeSharePlayTogetherControl);
                    [v39 transform];
                    [v40 setTransform:&v41];

                    return;
                  }

                  goto LABEL_41;
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

LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v18 = *(a1 + v3);
  if (v18)
  {
    v19 = v17;
    [v18 transform];
    [v19 setTransform:&v41];

    goto LABEL_13;
  }

LABEL_43:
  __break(1u);
}

void sub_1001BC424(char *a1)
{
  v1 = *&a1[OBJC_IVAR___MusicNowPlayingControlsViewController_smartTransitionIndicatorView];
  if (v1)
  {
    v5[0] = 0x3FF0000000000000;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = 0x3FF0000000000000;
    v5[4] = 0;
    v5[5] = 0;
    v2 = a1;
    [v1 setTransform:v5];
    a1 = v2;
  }

  v3 = [a1 view];
  if (v3)
  {
    v4 = v3;
    [v3 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

void sub_1001BC510()
{
  swift_unknownObjectWeakInit();
  v1 = [objc_opt_self() shared];
  v2 = [v1 activeUserState];

  v3 = [v2 music];
  v4 = [v3 userProfile];

  v5 = *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_sharePlayTogetherSession);
  if (v5)
  {
    swift_unknownObjectWeakInit();
    v6 = v5;
    if (v4 && [v4 collaborationAllowed])
    {
      sub_1001BD6E4(&v7, v6);
    }

    else
    {
      sub_1001BC6D4(v8);
    }

    swift_unknownObjectWeakDestroy();
    goto LABEL_7;
  }

  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  if ((*(*qword_101218AC8 + 624))())
  {
    if (v4)
    {
      if ([v4 displayNameAccepted])
      {
        goto LABEL_13;
      }

      sub_1001BC6D4(v8);
    }

LABEL_7:
    swift_unknownObjectWeakDestroy();
    return;
  }

LABEL_13:
  swift_unknownObjectWeakDestroy();
}

void sub_1001BC6D4(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong view];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 window];

      if (v9 && (v10 = [v9 windowScene], v9, v10))
      {
        v11 = Logger.sharePlayTogether.unsafeMutableAddressor();
        (*(v2 + 16))(v4, v11, v1);
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v12, v13, "[NowPlayingControlsViewController] [TermsAckFlow] user tapped session button, displaying ack flow", v14, 2u);
        }

        (*(v2 + 8))(v4, v1);
        v15 = *&v6[OBJC_IVAR___MusicNowPlayingControlsViewController_sharePlayTogetherSession];
        v16 = !v15 || (*(v15 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isHost) & 1) == 0;
        v17 = swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_100761BE4(v10, v16, sub_1001D1DA0, v17, 0, 0);
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1001BC960(void *a1, uint64_t a2)
{
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v4 = v40 - v3;
  v5 = sub_10010FC20(&qword_101183A40, &qword_100EBF468);
  v44 = *(v5 - 8);
  v45 = v5;
  __chkstk_darwin();
  v7 = v40 - v6;
  v8 = sub_10010FC20(&qword_101183A48, &qword_100EBF470);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v46 = v40 - v10;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v42 = v8;
    v43 = a1;
    v17 = Logger.sharePlayTogether.unsafeMutableAddressor();
    (*(v12 + 16))(v14, v17, v11);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "[NowPlayingControlsViewController] [TermsAckFlow] profile updated, waiting for session", v20, 2u);
    }

    v41 = v9;

    (*(v12 + 8))(v14, v11);
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    v40[1] = v21 + 16;
    if (qword_10117F5F8 != -1)
    {
      swift_once();
    }

    (*(*qword_101218AC8 + 552))();
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    v22 = static OS_dispatch_queue.main.getter();
    aBlock[0] = v22;
    v23 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v23 - 8) + 56))(v4, 1, 1, v23);
    sub_100020674(&unk_101183A50, &qword_101183A40, &qword_100EBF468, &protocol conformance descriptor for Published<A>.Publisher);
    sub_10001C070(&qword_101184920, &qword_101182960, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
    v24 = v45;
    v25 = v46;
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v4, &qword_101182140, &unk_100EBD2A0);

    (*(v44 + 8))(v7, v24);
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    v28 = v43;
    v27[2] = v43;
    v27[3] = v26;
    v27[4] = v21;
    sub_100020674(&qword_101183A60, &qword_101183A48, &qword_100EBF470, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v29 = v16;
    v30 = v28;

    v31 = v42;
    v32 = Publisher<>.sink(receiveValue:)();

    (*(v41 + 8))(v25, v31);
    swift_beginAccess();
    *(v21 + 16) = v32;

    swift_beginAccess();

    sub_1003B32C0(&v48, v32);
    swift_endAccess();

    v33 = objc_opt_self();
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v35 = swift_allocObject();
    v35[2] = v30;
    v35[3] = v34;
    v35[4] = v21;
    aBlock[4] = sub_1001D1DFC;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10027D328;
    aBlock[3] = &unk_10109EF20;
    v36 = _Block_copy(aBlock);
    v37 = v30;

    v38 = [v33 scheduledTimerWithTimeInterval:0 repeats:v36 block:5.0];
    _Block_release(v36);
    v39 = *&v29[OBJC_IVAR___MusicNowPlayingControlsViewController_sessionWaitTimer];
    *&v29[OBJC_IVAR___MusicNowPlayingControlsViewController_sessionWaitTimer] = v38;
  }
}

void sub_1001BD070(void **a1, void *a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = Logger.sharePlayTogether.unsafeMutableAddressor();
  (*(v8 + 16))(v10, v12, v7);
  v13 = v11;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v25 = a4;
    v26 = a2;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136315138;
    if (v11)
    {
      v18 = *&v13[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier];
      v19 = *&v13[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier + 8];
    }

    else
    {
      v19 = 0xE300000000000000;
      v18 = 7104878;
    }

    v20 = sub_1000105AC(v18, v19, aBlock);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "[NowPlayingControlsViewController] [TermsAckFlow] got session %s", v16, 0xCu);
    sub_10000959C(v17);

    (*(v8 + 8))(v10, v7);
    a4 = v25;
    a2 = v26;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  else
  {

    (*(v8 + 8))(v10, v7);
    if (v11)
    {
LABEL_8:
      v21 = swift_allocObject();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v23 = swift_allocObject();
      *(v23 + 16) = v21;
      *(v23 + 24) = a4;
      aBlock[4] = sub_1001D1E08;
      aBlock[5] = v23;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002BC98;
      aBlock[3] = &unk_10109EF70;
      v24 = _Block_copy(aBlock);

      [a2 dismissViewControllerAnimated:1 completion:v24];
      _Block_release(v24);
    }
  }
}

void sub_1001BD3A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR___MusicNowPlayingControlsViewController_sessionWaitTimer;
    [*(Strong + OBJC_IVAR___MusicNowPlayingControlsViewController_sessionWaitTimer) invalidate];
    v6 = *&v4[v5];
    *&v4[v5] = 0;

    swift_beginAccess();
    if (*(a2 + 16))
    {
      swift_beginAccess();

      sub_1001955F0(v7);
      swift_endAccess();

      sub_1001BC510();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1001BD494(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = Logger.sharePlayTogether.unsafeMutableAddressor();
  (*(v7 + 16))(v9, v10, v6);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "[NowPlayingControlsViewController] [TermsAckFlow] timed out waiting for session, dismissing", v13, 2u);
  }

  (*(v7 + 8))(v9, v6);
  [a2 dismissViewControllerAnimated:1 completion:0];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = *&Strong[OBJC_IVAR___MusicNowPlayingControlsViewController_sessionWaitTimer];
    *&Strong[OBJC_IVAR___MusicNowPlayingControlsViewController_sessionWaitTimer] = 0;
  }

  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    swift_beginAccess();
    if (*(a4 + 16))
    {
      swift_beginAccess();

      sub_1001955F0(v18);
      swift_endAccess();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1001BD6E4(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = objc_allocWithZone(type metadata accessor for SharePlayTogetherSessionManagementViewController(0));
    v6 = sub_10074B30C(a2);
    v7 = v6;
    v8 = OBJC_IVAR___MusicNowPlayingControlsViewController_routeSharePlayTogetherControl;
    v9 = *(*&v4[OBJC_IVAR___MusicNowPlayingControlsViewController_routeSharePlayTogetherControl] + OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_sharePlayTogetherButton);
    v10 = *&v4[OBJC_IVAR___MusicNowPlayingControlsViewController_metrics + 24];
    if (v10 <= *&v4[OBJC_IVAR___MusicNowPlayingControlsViewController_metrics + 40])
    {
      v10 = *&v4[OBJC_IVAR___MusicNowPlayingControlsViewController_metrics + 40];
    }

    if (v10 > 414.0)
    {
      v10 = 414.0;
    }

    v11 = &v6[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_preferredWidth];
    *v11 = v10;
    *(v11 + 8) = 0;
    v12 = v9;
    v13 = v7;
    [v13 setModalPresentationStyle:7];
    v14 = [v13 popoverPresentationController];
    if (v14)
    {
      v15 = v14;
      [v14 setDelegate:v4];
    }

    v16 = [v13 popoverPresentationController];
    if (v16)
    {
      v17 = v16;
      [v16 setSourceView:v12];
    }

    v18 = [v13 popoverPresentationController];

    if (v18)
    {
      v19 = *&v4[v8];
      [v12 bounds];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      [v19 frame];
      v27 = v26;
      v29 = v28;
      v30 = [v19 superview];
      [v12 convertPoint:v30 fromView:{v27, v29}];
      v32 = v31;

      if (qword_10117F780 != -1)
      {
        swift_once();
      }

      v33 = *&qword_101190C90;

      [v18 setSourceRect:{v21, v32 - v33, v23, v25}];
    }

    v34 = swift_allocObject();
    *(v34 + 16) = v4;
    v35 = &v13[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_onDismiss];
    v36 = *&v13[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_onDismiss];
    v37 = *&v13[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_onDismiss + 8];
    *v35 = sub_1001D1D90;
    v35[1] = v34;
    v38 = v4;
    sub_100020438(v36, v37);
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    aBlock[4] = sub_1001D1D98;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_10109EE80;
    v40 = _Block_copy(aBlock);
    v41 = v38;

    [v41 presentViewController:v13 animated:1 completion:v40];
    _Block_release(v40);
  }
}

double sub_1001BDA70(uint64_t a1)
{
  *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_isPresentingSharePlayTogetherSessionManagement) = 0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1005C4F50(4.0);

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_1001BDAD8(uint64_t a1)
{
  *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_isPresentingSharePlayTogetherSessionManagement) = 1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer;
    if (*(Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer))
    {
      v3 = Strong;
      [*(Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer) invalidate];
      Strong = v3;
      v4 = *(v3 + v2);
    }

    else
    {
      v4 = 0;
    }

    *(Strong + v2) = 0;
    swift_unknownObjectRelease();
  }
}

BOOL sub_1001BDB84(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkTapGestureRecognizer);
  if (!v4 || (sub_100009F78(0, &unk_101183A30, UIGestureRecognizer_ptr), v5 = v4, v6 = a1, v7 = static NSObject.== infix(_:_:)(), v5, v6, (v7 & 1) == 0))
  {
    v8 = *(v2 + OBJC_IVAR___MusicNowPlayingControlsViewController_videoPinchGestureRecognizer);
    if (!v8)
    {
      return 1;
    }

    sub_100009F78(0, &unk_101183A30, UIGestureRecognizer_ptr);
    v9 = a1;
    v10 = v8;
    v11 = static NSObject.== infix(_:_:)();

    if ((v11 & 1) == 0)
    {
      return 1;
    }
  }

  v12 = *(v2 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
  if (!v12)
  {
    return 0;
  }

  v13 = *(v12 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView);
  [a1 locationInView:v13];
  v15 = v14;
  v17 = v16;
  [v13 bounds];
  v20.x = v15;
  v20.y = v17;
  v18 = CGRectContainsPoint(v21, v20);

  return v18;
}

void *sub_1001BDD38()
{
  result = *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying);
  if (result)
  {
    v2 = [result tracklist];
    v3 = [v2 playingItem];

    if (v3 && (v4 = [v3 metadataObject], v3, v4))
    {
      v5 = [v4 innermostModelObject];
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v7 = [v6 hasVideo];
      }

      else
      {

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v7 = 1;
        }

        else
        {
          objc_opt_self();
          v7 = swift_dynamicCastObjCClass() != 0;
        }
      }

      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_1001BDE70()
{
  v1 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v2 tracklist];
  v4 = [v3 playingItem];

  if (!v4)
  {
    goto LABEL_18;
  }

  v5 = [v4 metadataObject];

  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = [v5 innermostModelObject];

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7 || (v8 = v7, !static Player.FavoriteCommand.isAvailable(in:)(v2)) || (type metadata accessor for MusicLibrary(), v9 = [v0 traitCollection], sub_100137E8C(), UITraitCollection.subscript.getter(), v9, static MusicLibrary.shared.getter(), LOBYTE(v9) = static MusicLibrary.== infix(_:_:)(), , , (v9 & 1) == 0))
  {

    return 0;
  }

  v10 = [v8 identifiers];
  v11 = [v10 library];

  if (!v11)
  {
LABEL_16:
    sub_100009F78(0, &qword_101183A28, MPModelSong_ptr);
    v23 = LibraryAddable.isUserLibraryAddable.getter();

    return v23;
  }

  v12 = [v11 databaseID];
  swift_unknownObjectRelease();
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  result = [objc_opt_self() deviceMediaLibrary];
  if (result)
  {
    v17 = result;
    v18 = [result uniqueIdentifier];

    if (v18)
    {
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      if (v13 == v19 && v15 == v21)
      {

        goto LABEL_16;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

LABEL_18:
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001BE170@<X0>(char *a1@<X8>)
{
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  *&v3 = __chkstk_darwin().n128_u64[0];
  v5 = &v16 - v4;
  v6 = *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying);
  if (!v6 || (v7 = [v6 tracklist], v8 = objc_msgSend(v7, "playingItem"), v7, !v8) || (v9 = objc_msgSend(v8, "metadataObject"), v8, !v9) || (v10 = objc_msgSend(v9, "innermostModelObject"), v9, v11 = MPModelObject.bestIdentifier(for:)(0, 2u), v13 = v12, v10, !v13))
  {

    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  return MetricsPageProperties.init(pageIdentifier:pageType:pageURL:pageDetails:extRefUrl:)(v11, v13, 0x6979616C50776F4ELL, 0xEA0000000000676ELL, v5, 0, 0, 0, a1);
}

BOOL sub_1001BE3B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_1001CF480(v11, v13);
}

uint64_t sub_1001BE420()
{
  v0 = type metadata accessor for UIView.Corner();
  sub_100006080(v0, qword_101183288);
  sub_1000060E4(v0, qword_101183288);
  return static UIView.Corner.rounded.getter();
}

id sub_1001BE46C()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:40.0 damping:12.0 initialVelocity:{0.0, 0.0}];
  qword_1011832A0 = result;
  return result;
}

id sub_1001BE4B8()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:300.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  qword_1011832A8 = result;
  return result;
}

CGFloat sub_1001BE50C()
{
  CGAffineTransformMakeScale(&v1, 0.9, 0.9);
  result = v1.a;
  *byte_1011832B0 = v1;
  return result;
}

id sub_1001BE554()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 0.75;
  LODWORD(v2) = 0.25;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_1011832E0 = result;
  return result;
}

id sub_1001BE598()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1.0;
  result = [v0 initWithControlPoints:0.0 :0.0 :0.0 :v1];
  qword_1011832E8 = result;
  return result;
}

id sub_1001BE5DC()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 0.75;
  LODWORD(v2) = 0.25;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_1011832F0 = result;
  return result;
}

void sub_1001BE68C(unsigned __int8 a1)
{
  v3 = OBJC_IVAR___MusicNowPlayingControlsViewController_currentLayoutType;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x72616C75676572;
    }

    else
    {
      v5 = 0x4572616C75676572;
    }

    if (v4 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEF6465646E657478;
    }

    if (*(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_currentLayoutType))
    {
LABEL_9:
      if (*(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_currentLayoutType) == 1)
      {
        v7 = 0xE700000000000000;
        if (v5 != 0x72616C75676572)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v7 = 0xEF6465646E657478;
        if (v5 != 0x4572616C75676572)
        {
          goto LABEL_20;
        }
      }

      goto LABEL_16;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
    v5 = 0x746361706D6F63;
    if (*(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_currentLayoutType))
    {
      goto LABEL_9;
    }
  }

  v7 = 0xE700000000000000;
  if (v5 != 0x746361706D6F63)
  {
LABEL_20:
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      return;
    }

    v9 = *(v1 + v3);
    if (a1)
    {
      if (a1 == 1)
      {
        if (*(v1 + v3))
        {
          if (v9 == 1)
          {
            goto LABEL_38;
          }

          swift_beginAccess();
          sub_10010FC20(&qword_101183990, &qword_100EBC750);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_100EBC6C0;
          v11 = v1;
          v12 = *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideSplitViewBottomConstraint);
          if (v12)
          {
            v13 = inited;
            v14 = objc_opt_self();
            *(v13 + 32) = v12;

            v15 = v12;
            sub_100124054(v13);
            sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v14 deactivateConstraints:isa];

            v1 = v11;
LABEL_35:

            v26 = Array._bridgeToObjectiveC()().super.isa;

            [v14 activateConstraints:v26];

            goto LABEL_38;
          }

          __break(1u);
LABEL_42:
          __break(1u);
          return;
        }
      }

      else
      {
        if (*(v1 + v3))
        {
          if (v9 != 1)
          {
            goto LABEL_38;
          }

          v14 = objc_opt_self();
          sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);

          v25 = Array._bridgeToObjectiveC()().super.isa;

          [v14 deactivateConstraints:v25];

          swift_beginAccess();
          goto LABEL_35;
        }

        v27 = objc_opt_self();
        sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);

        v28 = Array._bridgeToObjectiveC()().super.isa;

        [v27 deactivateConstraints:v28];

        swift_beginAccess();

        v29 = Array._bridgeToObjectiveC()().super.isa;

        [v27 activateConstraints:v29];
      }

      sub_1001C3B38();
LABEL_38:
      if (swift_unknownObjectWeakLoadStrong())
      {
        v30 = sub_1005E8E30(*(v1 + v3));
        swift_unknownObjectRelease();
        sub_1001B6A0C(v30, 0);
      }

      return;
    }

    if (!*(v1 + v3))
    {
      goto LABEL_38;
    }

    if (v9 != 1)
    {
      swift_beginAccess();
      sub_10010FC20(&qword_101183990, &qword_100EBC750);
      v17 = swift_initStackObject();
      *(v17 + 16) = xmmword_100EBC6C0;
      v18 = v1;
      v19 = *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideSplitViewBottomConstraint);
      if (!v19)
      {
        goto LABEL_42;
      }

      v20 = v17;
      v21 = objc_opt_self();
      *(v20 + 32) = v19;

      v22 = v19;
      sub_100124054(v20);
      sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
      v23 = Array._bridgeToObjectiveC()().super.isa;

      [v21 deactivateConstraints:v23];

      v1 = v18;

      v24 = Array._bridgeToObjectiveC()().super.isa;

      [v21 activateConstraints:v24];
    }

    sub_1001C3C74();
    goto LABEL_38;
  }

LABEL_16:
  if (v6 != v7)
  {
    goto LABEL_20;
  }
}

void sub_1001BEC34()
{
  v1 = v0;
  v2 = NowPlaying.TrackTitleStackView.Label.Attributes.Action.init(primary:menu:disabledColor:)(0, 0, 0);
  v4 = v3;
  v6 = v5;
  v7 = v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemNavigationStyle;
  v8 = *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemNavigationStyle + 16);
  if (v8 == 255)
  {
    v15 = *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_goToMenu);
    *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_goToMenu) = 0;

    type metadata accessor for ApplicationMainMenu();
    v16 = sub_100314AEC();
    if (v16)
    {
      v17 = v16;
      sub_100059768();
    }
  }

  else
  {
    v9 = *v7;
    v10 = *(v7 + 8);
    if (v8)
    {
      v11 = v9;

      v12 = *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_goToMenu);
      *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_goToMenu) = v9;
      sub_1001D26D8(v9, v10, 1);
      sub_1001D26D8(v9, v10, 1);

      type metadata accessor for ApplicationMainMenu();
      v13 = sub_100314AEC();
      if (v13)
      {
        v14 = v13;
        sub_100059768();
        sub_1001D2688(v9, v10, v8);
      }

      else
      {
        sub_1001D2688(v9, v10, v8);
      }

      v4 = v9;
    }

    else
    {
      sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
      v18 = swift_allocObject();
      *(v18 + 16) = v9;
      *(v18 + 24) = v10;
      sub_1001D26D8(v9, v10, 0);
      sub_1001D26D8(v9, v10, 0);
      v19 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

      v20 = *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_goToMenu);
      *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_goToMenu) = 0;

      type metadata accessor for ApplicationMainMenu();
      v21 = sub_100314AEC();
      if (v21)
      {
        v22 = v21;
        sub_100059768();
        sub_1001D2688(v9, v10, v8);
      }

      else
      {
        sub_1001D2688(v9, v10, v8);
      }

      v2 = v19;
    }
  }

  v23 = sub_1001AFCCC();
  v24 = *((swift_isaMask & *v23) + 0x100);
  v25 = v6;
  v26 = v2;
  v27 = v4;
  v28 = v24(v33);
  v30 = v29[9];
  v31 = v29[10];
  v32 = v29[11];
  v29[9] = v2;
  v29[10] = v4;
  v29[11] = v6;
  sub_1001D2894(v30, v31, v32);
  v28(v33, 0);
}

id sub_1001BEF20()
{
  v1 = OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___mediaControls;
  v2 = *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___mediaControls);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___mediaControls);
  }

  else
  {
    v4 = [objc_allocWithZone(MPMediaControls) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1001BEFB4(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1001BF018(void *a1)
{
  v2 = [objc_opt_self() buttonWithType:0];
  v3 = [objc_opt_self() configurationWithPointSize:20.0];
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v3];

  if (qword_10117F8E0 != -1)
  {
    swift_once();
  }

  [v2 setTintColor:qword_101219078];
  [v2 setImage:v5 forState:0];
  v6 = v2;
  [v6 setExclusiveTouch:1];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = String._bridgeToObjectiveC()();
  [v6 _setLayoutDebuggingIdentifier:v7];

  v8 = sub_100009F78(0, &qword_101183A18, UIButton_ptr);
  ControlEventHandling<>.on(_:handler:)(64, sub_1001BF23C, 0, v8);
  result = [a1 view];
  if (result)
  {
    v10 = result;
    [result addSubview:v6];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1001BF270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, char *, uint64_t, uint64_t))
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = &protocol witness table for MainActor;
  a4(0, 0, v7, a3, v10);

  return result;
}

uint64_t sub_1001BF388(uint64_t a1)
{
  v1[12] = a1;
  type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v3;
  v1[15] = v2;

  return _swift_task_switch(sub_1001BF420, v3, v2);
}

uint64_t sub_1001BF420()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = &type metadata for Player.LeaveSessionCommand;
  *(v0 + 48) = &protocol witness table for Player.LeaveSessionCommand;
  *(v0 + 80) = &_s18NowPlayingUISourceON;
  *(v0 + 88) = &off_10109D788;
  *(v0 + 56) = 0;
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_1001BF52C;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

uint64_t sub_1001BF52C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_1001BF6DC;
  }

  else
  {
    v4[18] = a1;
    sub_1000095E8((v4 + 7), &unk_101183910, &unk_100EBDD00);
    sub_10000959C(v4 + 2);
    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_1001BF670;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1001BF670()
{
  v1 = v0[18];
  v2 = v0[12];

  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_1001BF6DC()
{

  sub_1000095E8(v0 + 56, &unk_101183910, &unk_100EBDD00);
  sub_10000959C((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

id sub_1001BF760()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5 = __chkstk_darwin().n128_u64[0];
  v7 = &v18 - v6;
  result = *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying);
  if (result)
  {
    result = [result tracklist];
    if (result)
    {
      v9 = result;
      v10 = [result playingItemIndexPath];
      if (v10)
      {
        v11 = v10;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v2 + 32))(v7, v4, v1);
        v12 = [v9 items];
        v13 = [v12 sectionAtIndex:IndexPath.section.getter()];

        v14 = [v13 metadataObject];
        if (v14)
        {
          v15 = [v14 flattenedGenericObject];
          if (v15)
          {
            v16 = v15;
            v17 = [v15 anyObject];

            (*(v2 + 8))(v7, v1);
            return v17;
          }

          (*(v2 + 8))(v7, v1);
        }

        else
        {
          (*(v2 + 8))(v7, v1);
        }
      }

      return 0;
    }
  }

  return result;
}

void sub_1001BF9B4()
{
  v1 = sub_1001BF760();
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();

    if (v3)
    {
      v11 = 0;
      v4 = objc_opt_self();
      v5 = swift_allocObject();
      *(v5 + 16) = &v11;
      *(v5 + 24) = v0;
      v6 = swift_allocObject();
      *(v6 + 16) = sub_1001D1CDC;
      *(v6 + 24) = v5;
      aBlock[4] = sub_10018A020;
      aBlock[5] = v6;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100029B9C;
      aBlock[3] = &unk_10109EDE0;
      v7 = _Block_copy(aBlock);
      v8 = v0;

      [v4 performWithoutEnforcement:v7];
      _Block_release(v7);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else
      {
      }
    }
  }
}

void sub_1001BFB5C(void **a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying);
  if (v3)
  {
    v4 = [v3 tracklist];
    v5 = [v4 playingItem];

    v6 = [v5 metadataObject];
    v7 = [v6 playlistEntry];
  }

  else
  {
    v7 = 0;
  }

  v8 = *a1;
  *a1 = v7;
}

double sub_1001BFC28(uint64_t a1)
{
  v18 = type metadata accessor for DispatchTimeInterval();
  v3 = *(v18 - 8);
  __chkstk_darwin();
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for DispatchTime();
  v6 = *(v19 - 8);
  __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v18 - v9;
  v11 = OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitWatchdog;
  v12 = *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitWatchdog);
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitWatchdog) = a1;
  if (v12)
  {

    dispatch thunk of DispatchWorkItem.cancel()();
    if (*(v1 + v11))
    {
LABEL_3:
      sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);

      v13 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      *v5 = 250;
      v14 = v18;
      (*(v3 + 104))(v5, enum case for DispatchTimeInterval.milliseconds(_:), v18);
      + infix(_:_:)();
      (*(v3 + 8))(v5, v14);
      v15 = *(v6 + 8);
      v16 = v19;
      v15(v8, v19);
      OS_dispatch_queue.asyncAfter(deadline:execute:)();

      v15(v10, v16);
      return result;
    }
  }

  else
  {

    if (a1)
    {
      goto LABEL_3;
    }
  }

  return result;
}

void sub_1001BFEE0()
{
  v1 = v0;
  if (![v0 isViewLoaded])
  {
    return;
  }

  v2 = [v0 view];
  if (!v2)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v3 = v2;
  v4 = OBJC_IVAR___MusicNowPlayingControlsViewController_currentLayoutType;
  [v2 setLayoutMargins:{0.0, dbl_100EBF630[v1[OBJC_IVAR___MusicNowPlayingControlsViewController_currentLayoutType]], 0.0, dbl_100EBF630[v1[OBJC_IVAR___MusicNowPlayingControlsViewController_currentLayoutType]]}];

  v5 = objc_opt_self();
  v6 = &v1[OBJC_IVAR___MusicNowPlayingControlsViewController_metrics];
  v98 = [v5 systemFontOfSize:*&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_metrics] weight:UIFontWeightSemibold];
  v96 = OBJC_IVAR___MusicNowPlayingControlsViewController_mode;
  if (v1[OBJC_IVAR___MusicNowPlayingControlsViewController_mode] - 1 >= 2)
  {
    v7 = sub_1001AFCCC();
    v8 = *((swift_isaMask & *v7) + 0xE8);
    v9 = v98;
    v10 = v8(v101);
    v12 = *v11;
    *v11 = v9;

    v10(v101, 0);
    v13 = *v6;
    v14 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___titlesStackView];
    v15 = [v5 systemFontOfSize:v13 weight:UIFontWeightRegular];
    v16 = (*((swift_isaMask & *v14) + 0x100))(v101);
    v18 = *v17;
    *v17 = v15;

    v16(v101, 0);
  }

  v19 = OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerLayoutGuideHeightConstraint;
  v20 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerLayoutGuideHeightConstraint];
  if (!v20)
  {
    goto LABEL_91;
  }

  [v20 setConstant:v6[6]];
  v21 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerMinYConstraint];
  if (!v21)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v22 = *&v1[v19];
  if (!v22)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v23 = v21;
  [v22 constant];
  v25 = v24 * 0.5;
  [v98 ascender];
  v27 = v26;
  [v98 descender];
  [v23 setConstant:v25 - (v27 + fabs(v28))];

  v29 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_leftButtonWidthConstraint];
  if (!v29)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  [v29 setConstant:v6[9]];
  v30 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_transportControlsStackView];
  if (!v30)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  [v30 setSpacing:v6[10]];
  v31 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_bottomButtonsLayoutGuideHeightConstraint];
  if (!v31)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  [v31 setConstant:v6[12]];
  v32 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_volumeSlideBottomConstraint];
  if (!v32)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  [v32 setConstant:-v6[11]];
  if (v1[v4])
  {
    if (v1[v4] == 1)
    {
      v33 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_routeButtonRegularLeadingConstraint];
      if (!v33)
      {
LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

      v34 = v33;
      v35 = [v1 view];
      if (!v35)
      {
LABEL_113:
        __break(1u);
        goto LABEL_114;
      }

      v36 = v35;
      [v35 directionalLayoutMargins];
      v38 = v37;

      [v34 setConstant:v38];
    }

    else
    {
      v39 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_grabberView];
      if (!v39)
      {
LABEL_112:
        __break(1u);
        goto LABEL_113;
      }

      [v39 frame];
      MinX = CGRectGetMinX(v102);
      v41 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_routeButtonRegularLeadingConstraint];
      if (!v41)
      {
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

      [v41 setConstant:(MinX - v6[5]) * 0.5];
    }
  }

  v42 = OBJC_IVAR___MusicNowPlayingControlsViewController_transportControlsLayoutGuideHeightConstraint;
  v43 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_transportControlsLayoutGuideHeightConstraint];
  if (v6[8])
  {
    if (!v43)
    {
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    if (![v43 isActive])
    {
      goto LABEL_31;
    }

    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_100EBC6C0;
    v45 = *&v1[v42];
    if (!v45)
    {
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    v46 = v44;
    v47 = &selRef_deactivateConstraints_;
  }

  else
  {
    if (!v43)
    {
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    [v43 setConstant:v6[7]];
    v48 = *&v1[v42];
    if (!v48)
    {
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    if ([v48 isActive])
    {
      goto LABEL_31;
    }

    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_100EBC6C0;
    v45 = *&v1[v42];
    if (!v45)
    {
LABEL_116:
      __break(1u);
      return;
    }

    v46 = v49;
    v47 = &selRef_activateConstraints_;
  }

  v50 = objc_opt_self();
  *(v46 + 32) = v45;
  sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
  v51 = v45;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v50 *v47];

LABEL_31:
  v53 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_timeControlWidthConstraint];
  if (!v53)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  [v53 setConstant:v6[5]];
  v54 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_leftButton];
  if (!v54)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v55 = v6[9] + 8.0;
  *&v54[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_highlightIndicatorWidth] = v55;
  v56 = *&v54[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_highlightIndicatorWidthConstraint];
  if (!v56)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v57 = v54;
  [v56 setConstant:v55];
  [v57 invalidateIntrinsicContentSize];

  v58 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_playPauseStopButton];
  if (!v58)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v59 = v6[9] + 8.0;
  *&v58[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_highlightIndicatorWidth] = v59;
  v60 = *&v58[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_highlightIndicatorWidthConstraint];
  if (!v60)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v61 = v58;
  [v60 setConstant:v59];
  [v61 invalidateIntrinsicContentSize];

  v62 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_rightButton];
  if (!v62)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v63 = v6[9] + 8.0;
  *&v62[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_highlightIndicatorWidth] = v63;
  v64 = *&v62[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_highlightIndicatorWidthConstraint];
  if (!v64)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v65 = v62;
  [v64 setConstant:v63];
  [v65 invalidateIntrinsicContentSize];

  v66 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_grabberYConstraint];
  if (!v66)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  [v66 setConstant:v6[1]];
  v67 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideExtendedTopConstraint];
  if (!v67)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  [v67 setConstant:dbl_100EBF630[v1[v4]]];
  v68 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideTopConstraint];
  if (!v68)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v69 = qword_10117F2B0;
  v70 = v68;
  if (v69 != -1)
  {
    swift_once();
  }

  [v70 setConstant:*&qword_101218750 + dbl_100EBF630[v1[v4]]];

  v71 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuideRegularConstraints];
  swift_beginAccess();

  sub_100124054(v72);
  v100 = v1;
  v97 = v4;
  if (v71 >> 62)
  {
    v73 = _CocoaArrayWrapper.endIndex.getter();
    if (v73)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v73 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v73)
    {
LABEL_45:
      if (v73 >= 1)
      {
        v74 = 0;
        v99 = OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying;
        v75 = v6 + 2;
        v76 = v6 + 4;
        v95 = v6 + 3;
        while (1)
        {
          if ((v71 & 0xC000000000000001) != 0)
          {
            v78 = sub_1007E91C0(v74, v71);
          }

          else
          {
            v78 = *(v71 + 8 * v74 + 32);
          }

          v79 = v78;
          if ([v78 firstAttribute] != 7 || objc_msgSend(v79, "relation"))
          {
            if ([v79 firstAttribute] != 8 || (v80 = objc_msgSend(v79, "relation"), v77 = v76, v80))
            {
              v81 = [v79 firstAttribute];
              v77 = v75;
              if (v81 != 3)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_49;
          }

          v82 = *&v100[v99];
          v77 = v76;
          if (v82)
          {
            v83 = [v82 tracklist];
            v84 = [v83 playingItem];

            v77 = v76;
            if (v84)
            {
              v85 = [v84 metadataObject];

              v77 = v76;
              if (v85)
              {
                v86 = [v85 innermostModelObject];
                objc_opt_self();
                v87 = swift_dynamicCastObjCClass();
                if (v87)
                {
                  v94 = [v87 hasVideo];

                  v77 = v95;
                  if ((v94 & 1) == 0)
                  {
                    goto LABEL_65;
                  }
                }

                else
                {

                  objc_opt_self();
                  if (!swift_dynamicCastObjCClass())
                  {
                    objc_opt_self();
                    v88 = swift_dynamicCastObjCClass();

                    v77 = v95;
                    if (v88)
                    {
                      goto LABEL_49;
                    }

LABEL_65:
                    v77 = v76;
                    goto LABEL_49;
                  }

                  v77 = v95;
                }
              }
            }
          }

LABEL_49:
          [v79 setConstant:*v77];
LABEL_50:
          ++v74;

          if (v73 == v74)
          {
            goto LABEL_69;
          }
        }
      }

      __break(1u);
      goto LABEL_89;
    }
  }

LABEL_69:

  v89 = *&v100[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuideCollapsedConstraints];
  if (v89 >> 62)
  {
    v90 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v90 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v90)
  {
    if (v90 < 1)
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    for (i = 0; i != v90; ++i)
    {
      if ((v89 & 0xC000000000000001) != 0)
      {
        v92 = sub_1007E91C0(i, v89);
      }

      else
      {
        v92 = *(v89 + 8 * i + 32);
      }

      v93 = v92;
      if ([v92 firstAttribute] == 5 || objc_msgSend(v93, "firstAttribute") == 3)
      {
        [v93 setConstant:dbl_100EBF630[v100[v97]]];
      }
    }
  }

  if (v100[v96] == 2)
  {
    sub_1001B6800();
  }
}

void sub_1001C0A54()
{
  v2 = v0;
  if ([v0 isViewLoaded])
  {
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      v6 = v5;
      v8 = v7;

      v9 = [v2 view];
      if (v9)
      {
        v10 = v9;
        [v9 safeAreaInsets];
        v12 = v11;

        LOBYTE(v10) = v2[OBJC_IVAR___MusicNowPlayingControlsViewController_currentLayoutType];
        v13 = [v2 traitCollection];
        sub_1001CF564(v10, v13, v38, v6, v8, v12);

        v14 = &v2[OBJC_IVAR___MusicNowPlayingControlsViewController_metrics];
        v15 = v38[3];
        v16 = v38[5];
        *(v14 + 4) = v38[4];
        *(v14 + 5) = v16;
        v17 = v38[1];
        v18 = v38[2];
        *v14 = v38[0];
        *(v14 + 1) = v17;
        *(v14 + 12) = v39;
        *(v14 + 2) = v18;
        *(v14 + 3) = v15;
        sub_1001BFEE0();
        if (qword_10117F938 != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        sub_1000060E4(v19, qword_1012190C8);
        v1 = v2;
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v20, v21))
        {

          goto LABEL_11;
        }

        v22 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v22 = 136446978;
        v23 = String.init<A>(describing:)();
        v25 = sub_1000105AC(v23, v24, &v37);

        *(v22 + 4) = v25;
        *(v22 + 12) = 2082;
        v26 = [v1 view];

        if (v26)
        {
          [v26 bounds];

          v27 = CGSize.description.getter();
          v29 = sub_1000105AC(v27, v28, &v37);

          *(v22 + 14) = v29;
          *(v22 + 22) = 2082;
          v30 = [v1 view];

          if (v30)
          {
            [v30 safeAreaInsets];

            type metadata accessor for UIEdgeInsets(0);
            v31 = String.init<A>(describing:)();
            v33 = sub_1000105AC(v31, v32, &v37);

            *(v22 + 24) = v33;
            *(v22 + 32) = 2082;
            v34 = String.init<A>(describing:)();
            v36 = sub_1000105AC(v34, v35, &v37);

            *(v22 + 34) = v36;
            _os_log_impl(&_mh_execute_header, v20, v21, "[NowPlayingControlsViewController] updated metrics=%{public}s with size=%{public}s safeAreaInsets=%{public}s layoutType=%{public}s", v22, 0x2Au);
            swift_arrayDestroy();

LABEL_11:

            sub_1001C250C();
            return;
          }

LABEL_16:
          __break(1u);
          return;
        }

LABEL_15:

        __break(1u);
        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }
}

void sub_1001C0E68(void *a1)
{
  v2 = v1;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v5 = &v28 - v4;
  v6 = sub_10010FC20(&unk_101183B90, &unk_100EBD478);
  __chkstk_darwin();
  v9 = &v28 - v8;
  v10 = OBJC_IVAR___MusicNowPlayingControlsViewController_sharePlayTogetherSession;
  v11 = *(v2 + OBJC_IVAR___MusicNowPlayingControlsViewController_sharePlayTogetherSession);
  if (v11)
  {
    v31 = v7;
    if (!a1)
    {
      goto LABEL_5;
    }

    type metadata accessor for SharePlayTogetherSession(0);
    v12 = v11;
    v13 = a1;
    v14 = static NSObject.== infix(_:_:)();

    if (v14)
    {
      return;
    }

    v11 = *(v2 + v10);
    if (v11)
    {
LABEL_5:
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      *(v16 + 24) = v11;
      v30 = v15;
      type metadata accessor for SharePlayTogetherSession(0);
      sub_1001CF0F0(&unk_101189E70, type metadata accessor for SharePlayTogetherSession, &protocol conformance descriptor for SharePlayTogetherSession);
      v17 = v11;

      v33 = ObservableObject<>.objectWillChange.getter();
      sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
      v18 = static OS_dispatch_queue.main.getter();
      v29 = v6;
      v19 = v18;
      v32 = v18;
      v20 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
      type metadata accessor for ObservableObjectPublisher();
      sub_10001C070(&qword_101184920, &qword_101182960, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
      Publisher.receive<A>(on:options:)();
      sub_1000095E8(v5, &qword_101182140, &unk_100EBD2A0);

      v21 = swift_allocObject();
      v21[2] = v17;
      v21[3] = sub_1001D2E6C;
      v21[4] = v16;
      sub_100020674(&qword_101183BA0, &unk_101183B90, &unk_100EBD478, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
      v22 = v17;

      v23 = v29;
      v24 = Publisher<>.sink(receiveValue:)();

      (*(v31 + 8))(v9, v23);
      *(v2 + OBJC_IVAR___MusicNowPlayingControlsViewController_sharePlayTogetherParticipantsSubscription) = v24;

      sub_1001C131C(v30, v22);

      sub_1001C16E0();

      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  *(v2 + OBJC_IVAR___MusicNowPlayingControlsViewController_sharePlayTogetherParticipantsSubscription) = 0;

  v25 = *(v2 + OBJC_IVAR___MusicNowPlayingControlsViewController_routeSharePlayTogetherControl);
  v26 = &v25[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_style];
  *v26 = 0;
  v26[8] = 1;
  v27 = v25;
  sub_1004604BC();

  sub_1001C6E7C();

  sub_1001C2200();
}

void sub_1001C131C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = (*((swift_isaMask & *a2) + 0x268))();
    v6 = *&v4[OBJC_IVAR___MusicNowPlayingControlsViewController_routeSharePlayTogetherControl];
    if (v5)
    {
      v7 = *((swift_isaMask & *a2) + 0x1B0);
      v8 = v6;
      v9 = v7();
      v10 = &v8[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_style];
      *v10 = v9;
      v10[8] = 0;
    }

    else
    {
      v11 = &v6[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_style];
      *v11 = 1;
      v11[8] = 1;
      v12 = v6;
    }

    sub_1004604BC();

    v13 = *((swift_isaMask & *a2) + 0x1E0);
    v14 = *&v4[OBJC_IVAR___MusicNowPlayingControlsViewController_routeSharePlayTogetherControl];
    v15 = v13() > 0;
    v14[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_isBadgeVisible] = v15;
    sub_100461F54();

    sub_1001C2200();
    sub_1001C6E7C();
  }
}

uint64_t sub_1001C14EC(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = Logger.sharePlayTogether.unsafeMutableAddressor();
  (*(v6 + 16))(v8, v9, v5);
  v10 = a2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134349056;
    v14 = *((*((swift_isaMask & v10->isa) + 0x180))() + 16);

    *(v13 + 4) = v14;

    _os_log_impl(&_mh_execute_header, v11, v12, "[NowPlayingControlsViewController] session.objectWillChange participant count: %{public}ld", v13, 0xCu);
  }

  else
  {

    v11 = v10;
  }

  v15 = (*(v6 + 8))(v8, v5);
  return a3(v15);
}

uint64_t sub_1001C16E0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  __chkstk_darwin();
  v66 = &v61 - v4;
  __chkstk_darwin();
  v65 = &v61 - v5;
  __chkstk_darwin();
  v7 = &v61 - v6;
  __chkstk_darwin();
  v9 = &v61 - v8;
  __chkstk_darwin();
  v11 = &v61 - v10;
  v12 = *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_sharePlayTogetherSession);
  v69 = v13;
  if (v12)
  {
    v14 = *((swift_isaMask & *v12) + 0x138);
    v15 = v12;
    v68 = v14() != 1 && v14() != 2;
    v23 = Logger.sharePlayTogether.unsafeMutableAddressor();
    v67 = *(v3 + 16);
    v67(v11, v23, v2);
    v24 = v15;
    v25 = Logger.logObject.getter();
    v26 = v3;
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v27))
    {
      v28 = swift_slowAlloc();
      v64 = v2;
      v29 = v28;
      v30 = swift_slowAlloc();
      v63 = v1;
      v31 = v30;
      v71 = v30;
      *v29 = 136446210;
      v62 = v26;
      LOBYTE(v77) = v14();
      type metadata accessor for MRGroupSessionRouteType(0);
      v32 = String.init<A>(describing:)();
      v34 = sub_1000105AC(v32, v33, &v71);

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v25, v27, "[NowPlayingControlsViewController] showSharePlayTogetherTooltipIfNeeded session.routeType=%{public}s", v29, 0xCu);
      sub_10000959C(v31);
      v1 = v63;

      v2 = v64;

      v3 = v62;
      v22 = *(v62 + 8);
      v22(v11, v2);
    }

    else
    {

      v22 = *(v26 + 8);
      v22(v11, v2);
      v3 = v26;
    }

    if (v68)
    {
LABEL_17:
      if (*(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_isPresentingRoutePicker))
      {
        *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_needsSharePlayTogetherTooltipPresentation) = 1;
        v35 = Logger.sharePlayTogether.unsafeMutableAddressor();
        v36 = v66;
        v67(v66, v35, v2);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&_mh_execute_header, v37, v38, "[NowPlayingControlsViewController] showSharePlayTogetherTooltipIfNeeded deferring, picker is being presented", v39, 2u);
        }

        return (v22)(v36, v2);
      }

      else
      {
        v40 = v1;
        v41 = Logger.sharePlayTogether.unsafeMutableAddressor();
        v42 = v65;
        v67(v65, v41, v2);
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&_mh_execute_header, v43, v44, "[NowPlayingControlsViewController] showSharePlayTogetherTooltipIfNeeded requesting tooltip", v45, 2u);
        }

        v22(v42, v2);
        v46 = *(*(v40 + OBJC_IVAR___MusicNowPlayingControlsViewController_routeSharePlayTogetherControl) + OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_sharePlayTogetherButton);
        v47 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v48 = swift_allocObject();
        *(v48 + 16) = v47;
        *(v48 + 24) = v46;
        *&v77 = sub_1001D1CD4;
        *(&v77 + 1) = v48;
        LOWORD(v78) = 257;
        *(&v78 + 1) = 15;
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v49 = qword_10117F8A8;
        v50 = v46;
        if (v49 != -1)
        {
          swift_once();
        }

        v73 = v78;
        v74 = v79;
        v75 = v80;
        v76 = v81;
        LOBYTE(v71) = 2;
        v72 = v77;
        swift_unknownObjectWeakInit();

        sub_1001D1980(&v77, &v70);
        sub_10058B0DC(&v71);

        sub_1001D19DC(&v77);

        return sub_100198CAC(&v71);
      }
    }
  }

  else
  {
    if (qword_10117F5F8 != -1)
    {
      swift_once();
    }

    if ((*(*qword_101218AC8 + 624))())
    {
      v16 = *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_routeSharePlayTogetherControl) + OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_style;
      if (*(v16 + 8) != 1 || *v16)
      {
        v17 = v0;
        v18 = Logger.sharePlayTogether.unsafeMutableAddressor();
        v67 = *(v3 + 16);
        v67(v7, v18, v2);
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v19, v20, "[NowPlayingControlsViewController] showSharePlayTogetherTooltipIfNeeded isEligibleForHostingSharePlayTogetherSession=true, control style is NOT .routeOnly", v21, 2u);
        }

        v22 = *(v3 + 8);
        v22(v7, v2);
        v1 = v17;
        goto LABEL_17;
      }

      v52 = Logger.sharePlayTogether.unsafeMutableAddressor();
      (*(v3 + 16))(v9, v52, v2);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "[NowPlayingControlsViewController] showSharePlayTogetherTooltipIfNeeded isEligibleForHostingSharePlayTogetherSession=true, control style is .routeOnly", v55, 2u);
      }

      (*(v3 + 8))(v9, v2);
    }
  }

  v56 = Logger.sharePlayTogether.unsafeMutableAddressor();
  v57 = v69;
  (*(v3 + 16))(v69, v56, v2);
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&_mh_execute_header, v58, v59, "[NowPlayingControlsViewController] showSharePlayTogetherTooltipIfNeeded NOT requesting tooltip", v60, 2u);
  }

  return (*(v3 + 8))(v57, v2);
}

void sub_1001C2034(void *a2@<X2>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  if (Strong[OBJC_IVAR___MusicNowPlayingControlsViewController_isInTakeoverMode])
  {

LABEL_4:
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 64) = 1;
    *(a3 + 72) = 0;
    *(a3 + 80) = 0;
    *(a3 + 88) = 0;
    return;
  }

  v6 = *&Strong[OBJC_IVAR___MusicNowPlayingControlsViewController_routeSharePlayTogetherControl];
  v7 = Strong;
  v8 = v6;
  [a2 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [v8 frame];
  v16 = v15;
  v18 = v17;
  v19 = [v8 superview];
  [a2 convertPoint:v19 fromView:{v16, v18}];
  v21 = v20;

  if (qword_10117F780 != -1)
  {
    swift_once();
  }

  v22 = *&qword_101190C90;

  v32[0] = a2;
  v32[1] = v10;
  *&v32[2] = v21 - v22;
  v32[3] = v12;
  v32[4] = v14;
  v33 = 0;
  PresentationSource.Position.init(source:permittedArrowDirections:)(v32, 15, v24);
  v28[0] = v24[0];
  v28[1] = v24[1];
  v29 = v25;
  v30 = v26;
  v31 = v27;
  v23 = a2;
  PresentationSource.init(viewController:position:)(v7, v28, a3);
}

id sub_1001C2200()
{
  v1 = v0;
  type metadata accessor for Artwork(0);
  *&v2 = __chkstk_darwin().n128_u64[0];
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying;
  v6 = *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying);
  if (v6 && (v7 = [v6 tracklist], v8 = objc_msgSend(v7, "playingItem"), v7, v8))
  {
    v9 = [*(v1 + v5) attributionMetadataFor:v8];
    v10 = v9;
    v11 = OBJC_IVAR___MusicNowPlayingControlsViewController_attributionView;
    v12 = *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_attributionView);
    v13 = v9 != 0;
    if (v9)
    {
      v14 = *&v9[OBJC_IVAR___MusicAttributionMetadata_displayName];
      v15 = *&v9[OBJC_IVAR___MusicAttributionMetadata_displayName + 8];

      v16 = v12;
      sub_100453CF4(v14, v15, v17);

      v18 = *&v10[OBJC_IVAR___MusicAttributionMetadata_artworkCatalog];
      v19 = v18;
    }

    else
    {
      v20 = v12;
      sub_100453CF4(0, 0, v21);

      v18 = 0;
    }

    v22 = *(v1 + v11);
    v23 = *&v22[OBJC_IVAR____TtC5Music25NowPlayingAttributionView_artwork];
    *&v22[OBJC_IVAR____TtC5Music25NowPlayingAttributionView_artwork] = v18;
    v24 = v22;
    v25 = v18;

    v26 = sub_100454100();
    __chkstk_darwin();
    *(&v32 - 2) = v24;
    static Artwork.with(_:)(sub_1001D1CCC, v4);
    Artwork.View.typedConfiguration.setter(v4);
  }

  else
  {
    v13 = 0;
  }

  [*(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_attributionContainerView) setHidden:{!v13, v2}];
  result = *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerView);
  if (!result)
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v28 = [result superview];
  if (!v28)
  {
    v29 = *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_mainContainerView);
    sub_1001C8848(v29, 4u);
    v28 = v29;
  }

  result = *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerCenterYConstraint);
  if (!result)
  {
    goto LABEL_21;
  }

  v30 = v13 && *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode) - 3 < 0xFFFFFFFE;
  [result setActive:v30];
  result = *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerMinYConstraint);
  if (!result)
  {
    goto LABEL_22;
  }

  v31 = !v13 && *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode) - 3 < 0xFFFFFFFE;
  return [result setActive:v31];
}

void sub_1001C250C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlayingPath];
  if (!v2 || (v3 = [v2 route]) == 0)
  {
LABEL_13:
    sub_100009F78(0, &qword_101183A00, UIFont_ptr);
    v22 = static UIFont.preferredFont(forTextStyle:weight:)();
    v23 = [v1 traitCollection];
    v24 = [v23 preferredContentSizeCategory];

    if (static UIContentSizeCategory.< infix(_:_:)())
    {
      v25 = UIContentSizeCategoryAccessibilityLarge;

      v24 = v25;
    }

    v26 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v24];

    v27 = [v22 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v26];
    if (v27)
    {
      v28 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_routeLabel];
      if (v28)
      {
        [v28 setFont:v27];
        [*(*&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_routeSharePlayTogetherControl] + OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButton) setFont:v27];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }

  v4 = v3;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {

    goto LABEL_13;
  }

  v6 = v5;
  v7 = OBJC_IVAR___MusicNowPlayingControlsViewController_routeSharePlayTogetherControl;
  v8 = *(*&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_routeSharePlayTogetherControl] + OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButton);
  v9 = v4;
  [v8 setRoute:v6];
  v10 = OBJC_IVAR___MusicNowPlayingControlsViewController_routeLabel;
  v11 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_routeLabel];
  if (v11)
  {
    [v11 setRoute:v6];
    v12 = [v1 traitCollection];
    sub_1001D1C24();
    sub_1001D1C78();
    UITraitCollection.subscript.getter();

    if (sub_1005C3564(v29))
    {
      v13 = *&v1[v7] + OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_style;
      v14 = *v13;
      v15 = *(v13 + 8);
      if (v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = v15;
      }
    }

    else
    {
      v16 = 0;
    }

    v17 = *&v1[v10];
    if (!v17)
    {
      goto LABEL_21;
    }

    v18 = v17;
    v19 = [v6 isRoutingToWirelessDevice];

    [v18 setHidden:v16 & 1 | ((v19 & 1) == 0)];
    v20 = *(*&v1[v7] + OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButton);
    v21 = [v6 isRoutingToWirelessDevice];

    [v20 setRouteLabelHidden:v21 & v16 ^ 1];
    goto LABEL_13;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1001C2854()
{
  v1 = v0;
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 window];

    if (v4)
    {

      v5 = OBJC_IVAR___MusicNowPlayingControlsViewController_presentingVideo;
      if ((v1[OBJC_IVAR___MusicNowPlayingControlsViewController_presentingVideo] & 1) == 0)
      {
        v6 = [objc_opt_self() sharedApplication];
        sub_1001C2A8C();
        v8 = v7;

        if ((v8 & 1) == 0)
        {
          v9 = OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying;
          v10 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying];
          if (v10)
          {
            v11 = v10;
            v12 = MPCPlayerResponse.videoContext.getter();

            if (v12)
            {
              v1[v5] = 1;
              v13 = [*&v1[v9] videoOutput];
              *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_videoOutput] = v13;
              v14 = swift_unknownObjectRelease();
              v15 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView];
              if (v15)
              {
                v16 = *&v15[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode];
                *&v15[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode] = -32767;
                if (v16 != 32769)
                {
                  v17 = v15;
                  sub_10004C8F4();
                  [v17 setNeedsLayout];
                }
              }

              v1[OBJC_IVAR___MusicNowPlayingControlsViewController_deferArtworkModeUpdates] = 1;
              v18 = (*(*v12 + 216))(v14);
              v20[4] = UIScreen.Dimensions.size.getter;
              v20[5] = 0;
              v20[0] = _NSConcreteStackBlock;
              v20[1] = 1107296256;
              v20[2] = sub_10002BC98;
              v20[3] = &unk_10109ED40;
              v19 = _Block_copy(v20);
              [v18 enterFullScreenWithCompletion:v19];
              _Block_release(v19);
            }
          }
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1001C2A8C()
{
  v1 = [v0 connectedScenes];
  sub_100009F78(0, &qword_1011839F0, UIScene_ptr);
  sub_10001C070(&qword_101183DE0, &qword_1011839F0, UIScene_ptr, &protocol conformance descriptor for NSObject);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v2 = v25;
    v3 = v26;
    v4 = v27;
    v5 = v28;
    v6 = v29;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v2 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (v2 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (v6)
  {
LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (v15)
    {
      while (1)
      {
        v16 = [v15 session];
        v17 = [v16 role];

        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
        {
          break;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {
          goto LABEL_25;
        }

        v5 = v13;
        v6 = v14;
        if ((v2 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          swift_dynamicCast();
          v15 = v24;
          v13 = v5;
          v14 = v6;
          if (v24)
          {
            continue;
          }
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_10005C9F8(v2);
    }

    else
    {
LABEL_23:
      sub_10005C9F8(v2);
    }
  }

  else
  {
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        goto LABEL_23;
      }

      v12 = *(v3 + 8 * v13);
      ++v11;
      if (v12)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void *sub_1001C2D9C(char a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    v18 = static OS_dispatch_queue.main.getter();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = a1 & 1;
    aBlock[4] = sub_1001D1A30;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_10109E9D0;
    v14 = _Block_copy(aBlock);
    v17 = v12;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1001CF0F0(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v16 = v7;
    sub_10010FC20(&qword_101182970, &qword_100EBD250);
    sub_100020674(&qword_101183F70, &qword_101182970, &qword_100EBD250, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v15 = v18;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v10, v16);
  }

  return result;
}

void sub_1001C30CC()
{
  v1 = *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying);
  if (!v1)
  {
    return;
  }

  v2 = [v1 tracklist];
  if (!v2)
  {
    return;
  }

  v36 = v2;
  v3 = [v2 playingItem];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1005C3564(*(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_currentLayoutType));
    v6 = [objc_opt_self() configurationWithPointSize:7 weight:10.0];
    if ([v4 isAutoPlay] && objc_msgSend(v36, "actionAtQueueEnd") == 3 && (v7 = v6, v8 = String._bridgeToObjectiveC()(), v9 = objc_msgSend(objc_opt_self(), "systemImageNamed:withConfiguration:", v8, v7), v8, v7, v9))
    {
      v5 = 0;
    }

    else
    {
      if ([v36 repeatType] != 1 && !objc_msgSend(v36, "shuffleType") && objc_msgSend(v36, "repeatType") != 2)
      {
        v31 = OBJC_IVAR___MusicNowPlayingControlsViewController_queueModeBadgeView;
        v32 = *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_queueModeBadgeView);
        if (v32)
        {
          [v32 setImage:0];
          v33 = *(v0 + v31);
          if (v33)
          {
            [v33 setHidden:1];
            v34 = *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_queueButton);
            if (v34)
            {
              v35 = [v34 layer];
              [v35 setMask:0];
              v30 = v4;
              v4 = v35;
LABEL_34:

              goto LABEL_35;
            }

LABEL_52:
            __break(1u);
            return;
          }

LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v10 = String._bridgeToObjectiveC()();
      v9 = [objc_opt_self() systemImageNamed:v10];

      if (!v9)
      {
        v11 = 0;
        goto LABEL_19;
      }
    }

    v11 = v9;
    if ([v11 isSymbolImage])
    {
      v12 = OBJC_IVAR___MusicNowPlayingControlsViewController_queueModeBadgeView;
      v13 = *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_queueModeBadgeView);
      if (!v13)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v14 = v13;
      v15 = [v11 imageWithSymbolConfiguration:v6];
      [v14 setImage:v15];

      v16 = *(v0 + v12);
      if (!v16)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      [v16 setContentMode:4];

      goto LABEL_22;
    }

LABEL_19:
    v17 = OBJC_IVAR___MusicNowPlayingControlsViewController_queueModeBadgeView;
    v18 = *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_queueModeBadgeView);
    if (!v18)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    [v18 setImage:v11];
    v19 = *(v0 + v17);
    if (!v19)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    [v19 setContentMode:1];
LABEL_22:
    v20 = OBJC_IVAR___MusicNowPlayingControlsViewController_queueModeBadgeView;
    v21 = *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_queueModeBadgeView);
    if (v21)
    {
      if (v5)
      {
        v22 = v21;
        v23 = 1;
      }

      else
      {
        v24 = *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_queueButton);
        if (!v24)
        {
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        v25 = v21;
        v23 = [v24 isSelected];
      }

      [v21 setHidden:v23];

      v26 = *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_queueButton);
      if (v26)
      {
        v27 = [v26 layer];
        v28 = *(v0 + v20);
        if (v28)
        {
          if (([v28 isHidden] & 1) != 0 || (v29 = *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_queueModeBadgeMaskLayer)) == 0)
          {
            v30 = 0;
          }

          else
          {
            v30 = v29;
          }

          [v27 setMask:v30];

          goto LABEL_34;
        }

        goto LABEL_44;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_35:
}

void sub_1001C355C()
{
  v1 = v0;
  v2 = [objc_allocWithZone(CAShapeLayer) init];
  Mutable = CGPathCreateMutable();
  v3 = [v0 traitCollection];
  v4 = [v3 layoutDirection];

  if (v4 == 1)
  {
    v5 = -7.0;
  }

  else
  {
    v5 = 25.0;
  }

  CGMutablePathRef.addEllipse(in:transform:)();
  v10.origin.y = -7.0;
  v10.size.width = 20.0;
  v10.size.height = 20.0;
  v10.origin.x = v5;
  CGRectGetMinY(v10);
  v11.origin.y = -7.0;
  v11.size.width = 20.0;
  v11.size.height = 20.0;
  v11.origin.x = v5;
  CGRectGetMinY(v11);
  CGMutablePathRef.addRect(_:transform:)();
  [v2 setPath:Mutable];
  [v2 setFillRule:kCAFillRuleEvenOdd];
  v6 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_queueModeBadgeMaskLayer];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_queueModeBadgeMaskLayer] = v2;
  v7 = v2;

  sub_1001C30CC();
}

void sub_1001C36E8()
{
  v1 = v0;
  if (sub_1005C3564(v0[OBJC_IVAR___MusicNowPlayingControlsViewController_currentLayoutType]))
  {
    v2 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying];
    if (v2)
    {
      v3 = [v2 tracklist];
      if (v3)
      {
        v4 = v3;
        v5 = OBJC_IVAR___MusicNowPlayingControlsViewController_shuffleButton;
        v6 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_shuffleButton];
        v7 = [v4 shuffleType];
        v8 = *&v6[OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_shuffleType];
        *&v6[OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_shuffleType] = v7;
        if (v7 != v8)
        {
          sub_10004FD5C();
        }

        v9 = OBJC_IVAR___MusicNowPlayingControlsViewController_repeatButton;
        v10 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_repeatButton];
        v11 = [v4 repeatType];
        v12 = *&v10[OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_repeatType];
        *&v10[OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_repeatType] = v11;
        if (v11 != v12)
        {
          sub_100050478();
        }

        v13 = *&v1[v5];
        v14 = [v4 shuffleCommand];
        if (v14)
        {
          swift_unknownObjectRelease();
        }

        [v13 setHidden:v14 == 0];

        v15 = *&v1[v9];
        v16 = [v4 repeatCommand];
        if (v16)
        {
          swift_unknownObjectRelease();
        }

        [v15 setHidden:v16 == 0];
      }
    }
  }

  else
  {
    [*&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_shuffleButton] setHidden:1];
    [*&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_repeatButton] setHidden:1];
  }

  v17 = [v1 traitCollection];
  sub_100050078();
  v18 = UITraitCollection.subscript.getter();

  v19 = OBJC_IVAR___MusicNowPlayingControlsViewController_queueButton;
  v20 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_queueButton];
  if (!v20)
  {
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v21 = [v20 isSelected];
  v22 = v21;
  v23 = *&v1[v19];
  if (v18)
  {
    if (v23)
    {
      if (v21)
      {
        v24 = objc_opt_self();
        v25 = v23;
        v26 = [v24 blackColor];
      }

      else
      {
        v30 = qword_10117F900;
        v31 = v23;
        if (v30 != -1)
        {
          swift_once();
        }

        v26 = qword_101219098;
      }

      v32 = v26;
      [v23 setTintColor:v26];

      v33 = *&v1[v19];
      if (v33)
      {
        if (v22)
        {
          v34 = qword_10117F900;
          v35 = v33;
          if (v34 != -1)
          {
            swift_once();
          }

          v36 = qword_101219098;
          goto LABEL_37;
        }

        v40 = objc_opt_self();
        v41 = v33;
        v42 = [v40 blackColor];
        goto LABEL_36;
      }

      goto LABEL_43;
    }

    goto LABEL_41;
  }

  if (!v23)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    return;
  }

  if (v21)
  {
    v27 = objc_opt_self();
    v28 = v23;
    v29 = [v27 systemBackgroundColor];
  }

  else
  {
    v37 = v23;
    v29 = *UIColor.MusicTint.normal.unsafeMutableAddressor();
  }

  v38 = v29;
  [v23 setTintColor:v29];

  v33 = *&v1[v19];
  if (!v33)
  {
    goto LABEL_44;
  }

  if (!v22)
  {
    v43 = objc_opt_self();
    v44 = v33;
    v42 = [v43 clearColor];
LABEL_36:
    v36 = v42;
    goto LABEL_37;
  }

  v39 = v33;
  v36 = *UIColor.MusicTint.normal.unsafeMutableAddressor();
LABEL_37:
  v45 = v36;
  [v33 setBackgroundColor:?];
}

void sub_1001C3B38()
{
  v1 = OBJC_IVAR___MusicNowPlayingControlsViewController_bottomButtonsStackView;
  v2 = *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_bottomButtonsStackView);
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  [v2 insertArrangedSubview:*(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_routeSharePlayTogetherControl) atIndex:1];
  v3 = *(v0 + v1);
  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  [v3 setSpacing:20.0];
  v4 = objc_opt_self();
  sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 deactivateConstraints:isa];

  v6 = Array._bridgeToObjectiveC()().super.isa;

  [v4 activateConstraints:v6];
}

void sub_1001C3C74()
{
  v1 = *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_bottomContainerView);
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  [v1 addSubview:*(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_routeSharePlayTogetherControl)];
  v2 = *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_bottomButtonsStackView);
  if (!v2)
  {
LABEL_7:
    __break(1u);
    return;
  }

  [v2 setSpacing:40.0];
  v3 = objc_opt_self();
  sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 deactivateConstraints:isa];

  v5 = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:v5];
}

void sub_1001C3DB8()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying];
  if (v2)
  {
    v3 = [v2 tracklist];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v0 traitCollection];
  sub_100050078();
  v5 = UITraitCollection.subscript.getter();

  v6 = OBJC_IVAR___MusicNowPlayingControlsViewController_lyricsButton;
  v7 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_lyricsButton];
  if (!v7)
  {
    __break(1u);
    goto LABEL_61;
  }

  v8 = [v7 isSelected];
  if (!v3)
  {
    goto LABEL_13;
  }

  v9 = [v3 playingItem];
  if (v9 && (v10 = v9, v11 = MPCPlayerResponseItem.supportsLyrics.getter(), v10, (v11 & 1) != 0))
  {
    v12 = 1;
    v13 = *&v1[v6];
    if (v13)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v14 = [v3 vocalsControlCommand];
    if (!v14)
    {
      goto LABEL_13;
    }

    v12 = [v14 isActive];
    swift_unknownObjectRelease();
    v13 = *&v1[v6];
    if (v13)
    {
      goto LABEL_14;
    }
  }

  do
  {
    __break(1u);
LABEL_13:
    v12 = 0;
    v13 = *&v1[v6];
  }

  while (!v13);
LABEL_14:
  v15 = 1.0;
  if (!v8)
  {
    v15 = 0.0;
  }

  CGAffineTransformMakeTranslation(&v63, 0.0, v15);
  [v13 setTransform:&v63];
  v16 = v8 | v12;
  v17 = *&v1[v6];
  if ((v16 & 1) == 0)
  {
    if (v17)
    {
      if (v5)
      {
        v22 = qword_10117F8F0;
        v23 = v17;
        if (v22 != -1)
        {
          swift_once();
        }

        v24 = qword_101219088;
      }

      else
      {
        v28 = objc_opt_self();
        v29 = v17;
        v24 = [v28 quaternaryLabelColor];
      }

      v30 = v24;
      [v17 setTintColor:v24];

      v31 = *&v1[v6];
      if (v31)
      {
        v32 = objc_opt_self();
        v33 = v31;
        v34 = &selRef_blackColor;
        if ((v5 & 1) == 0)
        {
          v34 = &selRef_clearColor;
        }

        v35 = [v32 *v34];
        [v33 setBackgroundColor:v35];

        v36 = *&v1[v6];
        if (v36)
        {
          [v36 setEnabled:0];
          if (qword_10117F938 != -1)
          {
            swift_once();
          }

          v37 = type metadata accessor for Logger();
          sub_1000060E4(v37, qword_1012190C8);
          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v38, v39))
          {
            goto LABEL_59;
          }

          v40 = swift_slowAlloc();
          *v40 = 67240192;
          v41 = [objc_opt_self() sharedMonitor];
          v42 = [v41 isRemoteServerLikelyReachable];

          *(v40 + 4) = v42;
          v43 = "[NowPlayingControlsViewController] updateLyricsButton disabling lyrics button isRemoteServerLikelyReachable=%{BOOL,public}d";
          goto LABEL_58;
        }

        goto LABEL_64;
      }

LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (!v17)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  [*&v1[v6] setEnabled:1];
  v18 = *&v1[v6];
  if (v5)
  {
    if (v18)
    {
      if (v8)
      {
        v19 = objc_opt_self();
        v20 = v18;
        v21 = [v19 blackColor];
      }

      else
      {
        v44 = qword_10117F900;
        v45 = v18;
        if (v44 != -1)
        {
          swift_once();
        }

        v21 = qword_101219098;
      }

      v46 = v21;
      [v18 setTintColor:v21];

      v47 = *&v1[v6];
      if (v47)
      {
        if (v8)
        {
          v48 = qword_10117F900;
          v49 = v47;
          if (v48 != -1)
          {
            swift_once();
          }

          v50 = qword_101219098;
          goto LABEL_54;
        }

        v54 = objc_opt_self();
        v55 = v47;
        v56 = [v54 blackColor];
        goto LABEL_53;
      }

      goto LABEL_67;
    }

    goto LABEL_65;
  }

  if (!v18)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v8)
  {
    v25 = objc_opt_self();
    v26 = v18;
    v27 = [v25 systemBackgroundColor];
  }

  else
  {
    v51 = v18;
    v27 = *UIColor.MusicTint.normal.unsafeMutableAddressor();
  }

  v52 = v27;
  [v18 setTintColor:v27];

  v47 = *&v1[v6];
  if (v47)
  {
    if (v8)
    {
      v53 = v47;
      v50 = *UIColor.MusicTint.normal.unsafeMutableAddressor();
LABEL_54:
      v59 = v50;
      [v47 setBackgroundColor:v50];

      if (qword_10117F938 != -1)
      {
        swift_once();
      }

      v60 = type metadata accessor for Logger();
      sub_1000060E4(v60, qword_1012190C8);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v38, v39))
      {
        goto LABEL_59;
      }

      v40 = swift_slowAlloc();
      *v40 = 67240192;
      v61 = [objc_opt_self() sharedMonitor];
      v62 = [v61 isRemoteServerLikelyReachable];

      *(v40 + 4) = v62;
      v43 = "[NowPlayingControlsViewController] updateLyricsButton enabling lyrics button; isRemoteServerLikelyReachable=%{BOOL,public}d";
LABEL_58:
      _os_log_impl(&_mh_execute_header, v38, v39, v43, v40, 8u);

LABEL_59:

      return;
    }

    v57 = objc_opt_self();
    v58 = v47;
    v56 = [v57 clearColor];
LABEL_53:
    v50 = v56;
    goto LABEL_54;
  }

LABEL_68:
  __break(1u);
}

void sub_1001C4474(uint64_t a1)
{
  v2 = a1;
  v3 = a1;
  v4 = sub_1001A8B04();
  if (v3 == 9)
  {
    if (v4 == 9)
    {
      return;
    }
  }

  else if (v4 != 9 && sub_10065CB24(v2, v4))
  {
    return;
  }

  v5 = sub_1001A8B04();
  if ((v5 - 3) > 6u)
  {
    return;
  }

  if (v2 == 9)
  {
    v6 = [v1 updatePlayingItemAudioTraitButton];

    sub_1001C4B54(v6);
    return;
  }

  if (v5 == 9)
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_retain_n();
    sub_1001C527C();
    v8 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton];
    if (v8)
    {
      [v8 alpha];
      if (v9 == 0.0)
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v11 = Strong;
          [Strong updatePlayingItemAudioTraitButton];

          return;
        }

        goto LABEL_37;
      }

      sub_100009F78(0, &qword_101181620, UIView_ptr);
      if (qword_10117F2D8 != -1)
      {
        swift_once();
      }

      v12 = qword_1011832A8;
      v13 = swift_allocObject();
      *(v13 + 16) = v1;
      v14 = v1;
      static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(v12, 0, sub_1001D3198, v13, 0, 0, 0.0);

      if (qword_10117F2E8 != -1)
      {
        swift_once();
      }

      v15 = qword_1011832E0;
      v16 = swift_allocObject();
      *(v16 + 16) = v14;
      v17 = swift_allocObject();
      *(v17 + 16) = sub_1001D1C1C;
      *(v17 + 24) = v7;
      v18 = v14;

      v19 = sub_1001D3164;
      v20 = sub_1001D3238;
      goto LABEL_36;
    }

    __break(1u);
    goto LABEL_40;
  }

  if (v2 != 5)
  {
    if (v2 == 6 && v5 == 5)
    {
      goto LABEL_19;
    }

LABEL_28:
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_retain_n();
    sub_1001C527C();
    v22 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton];
    if (v22)
    {
      [v22 alpha];
      if (v23 == 0.0)
      {
        sub_1001C4A2C(v21);
LABEL_37:

        return;
      }

      sub_100009F78(0, &qword_101181620, UIView_ptr);
      if (qword_10117F2D8 != -1)
      {
        swift_once();
      }

      v24 = qword_1011832A8;
      v25 = swift_allocObject();
      *(v25 + 16) = v1;
      v26 = v1;
      static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(v24, 0, sub_1001D1C00, v25, 0, 0, 0.0);

      if (qword_10117F2E8 != -1)
      {
        swift_once();
      }

      v15 = qword_1011832E0;
      v16 = swift_allocObject();
      *(v16 + 16) = v26;
      v17 = swift_allocObject();
      *(v17 + 16) = sub_1001D1BF8;
      *(v17 + 24) = v21;
      v27 = v26;

      v19 = sub_1001D1C08;
      v20 = sub_1001D1C18;
LABEL_36:
      static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v15, 0, v19, v16, v20, v17, 0.25, 0.0);

      goto LABEL_37;
    }

LABEL_40:

    __break(1u);
    return;
  }

  if (v5 != 6)
  {
    goto LABEL_28;
  }

LABEL_19:

  [v1 updatePlayingItemAudioTraitButton];
}

void sub_1001C49D0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong updatePlayingItemAudioTraitButton];
  }
}

void sub_1001C4A2C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong updatePlayingItemAudioTraitButton];
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    sub_1001C4B54(v3);
  }
}

void sub_1001C4AB4(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton);
  if (v1)
  {
    v2 = qword_10117F2E0;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4[0] = *byte_1011832B0;
    v4[1] = *&byte_1011832B0[16];
    v4[2] = *&byte_1011832B0[32];
    [v3 setTransform:v4];
  }

  else
  {
    __break(1u);
  }
}

void sub_1001C4B54(uint64_t a1)
{
  sub_1001C527C();
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = swift_allocObject();
  v4[2] = sub_1001D1B74;
  v4[3] = v3;
  *&v27 = sub_10018A020;
  *(&v27 + 1) = v4;
  *&v25 = _NSConcreteStackBlock;
  *(&v25 + 1) = 1107296256;
  *&v26 = sub_100029B9C;
  *(&v26 + 1) = &unk_10109EB10;
  v5 = _Block_copy(&v25);
  v6 = v1;

  [v2 performWithoutAnimation:v5];
  _Block_release(v5);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v6[OBJC_IVAR___MusicNowPlayingControlsViewController_areControlsHidden])
  {
LABEL_16:

    return;
  }

  v7 = OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton;
  v8 = *&v6[OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton];
  if (v8)
  {
    [v8 setAlpha:0.0];
    v9 = *&v6[v7];
    if (v9)
    {
      v10 = qword_10117F2E0;
      v4 = v9;
      if (v10 == -1)
      {
LABEL_6:
        v25 = *byte_1011832B0;
        v26 = *&byte_1011832B0[16];
        v27 = *&byte_1011832B0[32];
        [v4 setTransform:&v25];

        sub_100009F78(0, &qword_101181620, UIView_ptr);
        if (qword_10117F2D0 != -1)
        {
          swift_once();
        }

        v11 = qword_1011832A0;
        v12 = swift_allocObject();
        *(v12 + 16) = v6;
        v13 = v6;
        static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(v11, 0, sub_1001D1B90, v12, 0, 0, 0.0);

        v14 = sub_1001A8B04();
        if (v14 != 9)
        {
          if (qword_10117FAE0 != -1)
          {
            v24 = v14;
            swift_once();
            v14 = v24;
          }

          if (sub_10048BFB0(v14, qword_1012191E8))
          {
            if (qword_10117F2F0 != -1)
            {
              swift_once();
            }

            v15 = qword_1011832E8;
            v16 = swift_allocObject();
            *(v16 + 16) = v13;
            v17 = swift_allocObject();
            *(v17 + 16) = v13;
            v18 = v13;
            static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v15, 0, sub_1001D1BA8, v16, sub_1001D1BC8, v17, 1.0, 0.25);

            v19 = swift_allocObject();
            *(v19 + 16) = v18;
            v20 = v18;
            static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v15, 0, sub_1001D1BD0, v19, 0, 0, 3.0, 0.0);
          }
        }

        v21 = swift_allocObject();
        *(v21 + 16) = v13;
        *&v27 = sub_1001D1B98;
        *(&v27 + 1) = v21;
        *&v25 = _NSConcreteStackBlock;
        *(&v25 + 1) = 1107296256;
        *&v26 = sub_10002BC98;
        *(&v26 + 1) = &unk_10109EB88;
        v22 = _Block_copy(&v25);
        v23 = v13;

        [v2 animateWithDuration:v22 animations:1.0];
        _Block_release(v22);
        goto LABEL_16;
      }

LABEL_18:
      swift_once();
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1001C5064(uint64_t a1)
{
  result = *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton);
  if (result)
  {
    v2[0] = 0x3FF0000000000000;
    v2[1] = 0;
    v2[2] = 0;
    v2[3] = 0x3FF0000000000000;
    v2[4] = 0;
    v2[5] = 0;
    return [result setTransform:v2];
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1001C50B4(uint64_t a1, void *a2)
{
  sub_100009F78(0, &qword_101181620, UIView_ptr);
  if (qword_10117F2F8 != -1)
  {
    swift_once();
  }

  v3 = qword_1011832F0;
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = a2;
  static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v3, 0, sub_1001D1BD8, v4, 0, 0, 2.0, 0.0);

  return result;
}

void sub_1001C5198(uint64_t a1, float a2)
{
  v2 = *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton);
  if (v2)
  {
    v5 = [v2 layer];
    *&v4 = a2;
    [v5 setShadowOpacity:v4];
  }

  else
  {
    __break(1u);
  }
}

void sub_1001C5210(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton);
  if (v1)
  {
    v2 = [v1 layer];
    [v2 setShadowRadius:10.0];
  }

  else
  {
    __break(1u);
  }
}

void sub_1001C527C()
{
  v1 = OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton;
  v2 = *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton);
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = [v2 layer];
  [v3 removeAllAnimations];

  v4 = *(v0 + v1);
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = [v4 layer];
  [v5 setShadowOpacity:0.0];

  v6 = *(v0 + v1);
  if (!v6)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v7 = [v6 layer];
  [v7 setShadowRadius:0.0];
}

id sub_1001C535C(void *a1)
{
  if (qword_10117F2E0 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  v3[0] = *byte_1011832B0;
  v3[1] = *&byte_1011832B0[16];
  v3[2] = *&byte_1011832B0[32];
  return [a1 setTransform:v3];
}

void sub_1001C53E4(int a1, id a2, uint64_t a3, void (*a4)(void))
{
  v7 = [a2 layer];
  [v7 removeAllAnimations];

  v8 = sub_10035B7EC();
  v9 = [v8 layer];

  [v9 removeAllAnimations];
  [a2 removeFromSuperview];
  v10 = *(a3 + OBJC_IVAR___MusicNowPlayingControlsViewController_singIndicatorView);
  *(a3 + OBJC_IVAR___MusicNowPlayingControlsViewController_singIndicatorView) = 0;

  if (a4)
  {
    a4();
  }
}

void sub_1001C54B8()
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  *&v1 = __chkstk_darwin().n128_u64[0];
  v3 = &v37 - v2;
  v4 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying];
  if (v4)
  {
    v5 = [v4 tracklist];
    v6 = [v5 vocalsControlCommand];

    v7 = OBJC_IVAR___MusicNowPlayingControlsViewController_singIndicatorView;
    if (!*&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_singIndicatorView])
    {
      if (!v6)
      {
        return;
      }

      if ([v6 isActive])
      {
        v8 = [objc_allocWithZone(type metadata accessor for SingIndicatorView()) init];
        v9 = [v8 layer];
        [v9 setOpacity:0.0];

        [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
        [*&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_mainContainerView] addSubview:v8];
        v10 = *&v0[v7];
        *&v0[v7] = v8;
        v11 = v8;

        sub_10010FC20(&qword_101183990, &qword_100EBC750);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_100EBC6D0;
        v13 = OBJC_IVAR____TtC5Music17SingIndicatorView_singIndicatorLabel;
        v14 = [*&v11[OBJC_IVAR____TtC5Music17SingIndicatorView_singIndicatorLabel] centerYAnchor];
        v15 = OBJC_IVAR___MusicNowPlayingControlsViewController_timeControl;
        v16 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_timeControl];
        if (v16)
        {
          v17 = v14;
          v18 = [*(v16 + OBJC_IVAR____TtC5Music17PlayerTimeControl_elapsedTimeLabel) centerYAnchor];
          v19 = [v17 constraintEqualToAnchor:v18];

          *(v12 + 32) = v19;
          v38 = v11;
          v20 = [*&v11[v13] centerXAnchor];
          v21 = *&v0[v15];
          if (!v21)
          {
LABEL_16:
            __break(1u);
            return;
          }

          v22 = v20;
          v23 = objc_opt_self();
          v24 = [v21 centerXAnchor];
          v25 = [v22 constraintEqualToAnchor:v24];

          *(v12 + 40) = v25;
          sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v23 activateConstraints:isa];

          v27 = objc_opt_self();
          v28 = swift_allocObject();
          *(v28 + 16) = v0;
          v29 = swift_allocObject();
          *(v29 + 16) = sub_1001D3170;
          *(v29 + 24) = v28;
          aBlock[4] = sub_100029B94;
          aBlock[5] = v29;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100029B9C;
          aBlock[3] = &unk_10109EA70;
          v30 = _Block_copy(aBlock);
          v31 = v0;

          [v27 performWithoutAnimation:v30];
          _Block_release(v30);
          LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

          if ((v27 & 1) == 0)
          {
            v32 = v38;
            [v38 setHidden:v31[OBJC_IVAR___MusicNowPlayingControlsViewController_areControlsHidden]];

            v33 = type metadata accessor for TaskPriority();
            (*(*(v33 - 8) + 56))(v3, 1, 1, v33);
            type metadata accessor for MainActor();
            v34 = v32;
            v35 = static MainActor.shared.getter();
            v36 = swift_allocObject();
            v36[2] = v35;
            v36[3] = &protocol witness table for MainActor;
            v36[4] = v34;
            sub_1001F4CB8(0, 0, v3, &unk_100EBF450, v36);

            swift_unknownObjectRelease();

            return;
          }

          __break(1u);
        }

        __break(1u);
        goto LABEL_16;
      }
    }
  }

  else if (!*&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_singIndicatorView])
  {
    return;
  }

  swift_unknownObjectRelease();
}

void sub_1001C5A2C()
{
  v1 = OBJC_IVAR___MusicNowPlayingControlsViewController_timeControl;
  v2 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_timeControl];
  if (!v2)
  {
    __break(1u);
    goto LABEL_21;
  }

  v3 = v0;
  v4 = *(v2 + OBJC_IVAR____TtC5Music17PlayerTimeControl_slider);
  v5 = *((swift_isaMask & *v4) + 0x2F0);
  v6 = v4;
  v5();

  if ((v3[OBJC_IVAR___MusicNowPlayingControlsViewController_areControlsHidden] & 1) == 0)
  {
    v7 = OBJC_IVAR___MusicNowPlayingControlsViewController_smartTransitionIndicatorView;
    if (!*&v3[OBJC_IVAR___MusicNowPlayingControlsViewController_smartTransitionIndicatorView])
    {
      v8 = *&v3[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying];
      if (v8)
      {
        v9 = [v8 tracklist];
        v10 = [v9 playingItem];
      }

      else
      {
        v10 = 0;
      }

      v11 = objc_allocWithZone(type metadata accessor for SmartTransitionIndicatorView());
      v53 = v10;
      v12 = sub_100629300(v10);
      v13 = UIView.forAutolayout.getter();

      [*&v13[OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView_smartTransitionLabel] setAlpha:0.0];
      v14 = v13;
      v15 = [v14 layer];
      v16 = [v3 traitCollection];
      sub_100050078();
      v17 = UITraitCollection.subscript.getter();

      v18 = 0;
      if (v17)
      {
        v18 = kCAFilterPlusL;
      }

      [v15 setCompositingFilter:v18];

      swift_unknownObjectRelease();
      v19 = String._bridgeToObjectiveC()();
      [v14 _setLayoutDebuggingIdentifier:v19];

      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = &v14[OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView_didCompleteOneCycleHandler];
      v22 = *&v14[OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView_didCompleteOneCycleHandler];
      v23 = *&v14[OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView_didCompleteOneCycleHandler + 8];
      *v21 = sub_1001D1AB8;
      v21[1] = v20;

      sub_100020438(v22, v23);

      v52 = OBJC_IVAR___MusicNowPlayingControlsViewController_mainContainerView;
      [*&v3[OBJC_IVAR___MusicNowPlayingControlsViewController_mainContainerView] addSubview:v14];
      v24 = *&v3[v7];
      *&v3[v7] = v14;
      if (v24)
      {
        v25 = v14;
        if (v14 != v24)
        {
          v26 = v25;
          v27 = [v24 layer];
          [v27 removeAllAnimations];

          v28 = sub_10062781C();
          v29 = [v28 layer];

          [v29 removeAllAnimations];
          [v24 removeFromSuperview];
        }
      }

      else
      {
        v30 = v14;
      }

      sub_10010FC20(&qword_101183990, &qword_100EBC750);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_100EBC6D0;
      v32 = [v14 centerXAnchor];
      v33 = *&v3[v1];
      if (v33)
      {
        v34 = [v33 centerXAnchor];
        v35 = [v32 constraintEqualToAnchor:v34];

        *(v31 + 32) = v35;
        v36 = [v14 centerYAnchor];
        v37 = *&v3[v1];
        if (v37)
        {
          v38 = v36;
          v39 = [*(v37 + OBJC_IVAR____TtC5Music17PlayerTimeControl_elapsedTimeLabel) centerYAnchor];
          v40 = [v38 constraintEqualToAnchor:v39];

          *(v31 + 40) = v40;
          *&v3[OBJC_IVAR___MusicNowPlayingControlsViewController_smartTransitionLabelTransportControlsConstraints] = v31;

          v41 = swift_allocObject();
          *(v41 + 16) = xmmword_100EBC6D0;
          v42 = [v14 centerXAnchor];
          v43 = [*&v3[v52] safeAreaLayoutGuide];
          v44 = [v43 centerXAnchor];

          v45 = [v42 constraintEqualToAnchor:v44];
          *(v41 + 32) = v45;
          v46 = [v14 bottomAnchor];

          v47 = [*&v3[v52] safeAreaLayoutGuide];
          v48 = [v47 bottomAnchor];

          v49 = [v46 constraintEqualToAnchor:v48];
          *(v41 + 40) = v49;
          *&v3[OBJC_IVAR___MusicNowPlayingControlsViewController_smartTransitionLabelFullScreenLyricsConstraints] = v41;

          v50 = objc_opt_self();
          sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);

          isa = Array._bridgeToObjectiveC()().super.isa;

          [v50 activateConstraints:isa];

          sub_1006285BC();
          goto LABEL_17;
        }

LABEL_22:
        __break(1u);
        return;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }
  }

LABEL_17:

  sub_1001AF140(1);
}

void sub_1001C6080(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying);
    v4 = v3;
    sub_100198E90(v3);
  }
}

void sub_1001C60F8(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_smartTransitionIndicatorView);
  *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_smartTransitionIndicatorView) = 0;
  if (v4)
  {
    v5 = [v4 layer];
    [v5 removeAllAnimations];

    v6 = sub_10062781C();
    v7 = [v6 layer];

    [v7 removeAllAnimations];
    [v4 removeFromSuperview];
  }

  *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_smartTransitionLabelTransportControlsConstraints) = _swiftEmptyArrayStorage;

  *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_smartTransitionLabelFullScreenLyricsConstraints) = _swiftEmptyArrayStorage;

  if (a2)
  {
    a2(1, 1);
  }
}

void sub_1001C6204()
{
  if (v0[OBJC_IVAR___MusicNowPlayingControlsViewController_shouldAnimateArtworkChange] != 1)
  {
    return;
  }

  v1 = OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView;
  v2 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView];
  if (!v2)
  {
    return;
  }

  v3 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying];
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = [v5 tracklist];
    v7 = [v6 playingItem];

    if (v7 && (v8 = [v7 metadataObject], v7, v8))
    {
      v9 = [v8 innermostModelObject];

      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        v11 = v10;
        v12 = *&v4[OBJC_IVAR____TtC5Music21NowPlayingContentView__internalCatalog];
        v13 = v12;
        v9 = v9;
        v14 = [v11 artworkCatalog];
        LOBYTE(v12) = Optional<A>.isArtworkVisuallyIdentical(to:)(v14, v12);

        if ((v12 & 1) == 0)
        {
          v19 = v0;
          if (qword_10117F5C8 != -1)
          {
            swift_once();
          }

          v20 = type metadata accessor for Logger();
          sub_1000060E4(v20, qword_101218A98);
          v21 = Logger.logObject.getter();
          v22 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            *v23 = 0;
            _os_log_impl(&_mh_execute_header, v21, v22, "| 🫥😐 – Animating square artwork change", v23, 2u);
          }

          v24 = [objc_allocWithZone(type metadata accessor for NowPlayingContentView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
          v25 = [v19 view];
          if (!v25)
          {
            __break(1u);
            return;
          }

          v26 = v25;
          v27 = v4;
          v28 = v24;
          [v26 insertSubview:v28 aboveSubview:v27];

          v29 = *&v19[OBJC_IVAR___MusicNowPlayingControlsViewController_outgoingArtwork];
          *&v19[OBJC_IVAR___MusicNowPlayingControlsViewController_outgoingArtwork] = v2;

          _s4MaskCMa();
          swift_allocObject();
          v30 = sub_1007CDF70(0);
          if (v30)
          {
            v31 = v30;
            v32 = v30[2];
            [v27 frame];
            v34 = v33;
            v36 = v35;

            [v32 setFrame:{0.0, 0.0, v34, v36}];
            v37 = swift_allocObject();
            v38 = v19;
            swift_unknownObjectWeakInit();
            v39 = swift_allocObject();
            *(v39 + 16) = v37;
            *(v39 + 24) = v27;
            v40 = v31[5];
            v41 = v31[6];
            v31[5] = sub_1001D1AB0;
            v31[6] = v39;
            v42 = v27;

            sub_100020438(v40, v41);

            *&v38[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkViewMask] = v31;

            [v28 setMaskView:v31[2]];
          }

          else
          {

            v38 = v19;
          }

          oslog = *&v38[v1];
          *&v38[v1] = v28;
          v43 = v28;
          sub_10019B83C(oslog);

          goto LABEL_19;
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
    v15 = v2;
  }

  if (qword_10117F5C8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000060E4(v16, qword_101218A98);
  oslog = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v17, "| 🫥😐 – Not animating square artwork change: artworks are visually identical", v18, 2u);
  }

LABEL_19:
}

double sub_1001C6758(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [a2 removeFromSuperview];
    v6 = *&v5[OBJC_IVAR___MusicNowPlayingControlsViewController_outgoingArtwork];
    *&v5[OBJC_IVAR___MusicNowPlayingControlsViewController_outgoingArtwork] = 0;

    *&v5[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkViewMask] = 0;
  }

  return result;
}

void sub_1001C67E8(uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  if (*(Strong + OBJC_IVAR___MusicNowPlayingControlsViewController_isInTakeoverMode))
  {

LABEL_4:
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 64) = 1;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    return;
  }

  v4 = Strong;
  v5 = sub_1001AB0B4();
  [*&v4[OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___favoriteSystemButton] bounds];
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

uint64_t sub_1001C68E4()
{
  sub_10010FC20(&unk_1011839D0, &qword_100EBF430);
  __chkstk_darwin();
  v1 = v16 - v0;
  v2 = *MetricsReportingController.shared.unsafeMutableAddressor();
  sub_10010FC20(&qword_1011BE680, &qword_100EBF438);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100EBC6B0;
  sub_10010FC20(&unk_1011839E0, &unk_100EBF440);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBEF50;
  v16[0] = 25705;
  v16[1] = 0xE200000000000000;
  v5 = v2;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = 0xD000000000000016;
  *(inited + 80) = 0x8000000100E3FBB0;
  strcpy(v16, "impressionType");
  HIBYTE(v16[1]) = -18;
  AnyHashable.init<A>(_:)();
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = 0x6954656C62627562;
  *(inited + 152) = 0xE900000000000070;
  v16[0] = 1701667182;
  v16[1] = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  *(inited + 240) = &type metadata for String;
  *(inited + 216) = 0xD000000000000016;
  *(inited + 224) = 0x8000000100E3FBB0;
  v16[0] = 0x6973736572706D69;
  v16[1] = 0xEF7865646E496E6FLL;
  AnyHashable.init<A>(_:)();
  *(inited + 312) = &type metadata for Int;
  *(inited + 288) = -1;
  v6 = sub_100060CB0(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011801C8, &unk_100EBA510);
  swift_arrayDestroy();
  *(v3 + 32) = v6;
  v7 = type metadata accessor for MetricsPageProperties(0);
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  v8 = sub_10053771C();
  v10 = v9;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v11 = qword_101218AD0;
  v12 = GroupActivitiesManager.hasJoined.getter();
  v13 = GroupActivitiesManager.participantsCount.getter();
  v14 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v5) + 0xA8))(v3, v1, v8, v10, v12 & 1, v13, *(v11 + v14));

  return sub_1000095E8(v1, &unk_1011839D0, &qword_100EBF430);
}

void sub_1001C6C64(void *a2@<X8>)
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

id sub_1001C6D2C(char a1)
{
  v3 = [v1 traitCollection];
  sub_100050078();
  v4 = UITraitCollection.subscript.getter();

  if (a1)
  {
    if (v4)
    {
      if (qword_10117F900 != -1)
      {
        swift_once();
      }

      v5 = qword_101219098;
LABEL_10:

      return v5;
    }

    v7 = [objc_opt_self() systemGrayColor];
  }

  else
  {
    if (v4)
    {
      if (qword_10117F8E8 != -1)
      {
        swift_once();
      }

      v5 = qword_101219080;
      goto LABEL_10;
    }

    v7 = [objc_opt_self() labelColor];
  }

  return v7;
}

void sub_1001C6E7C()
{
  v1 = v0;
  v287[15] = sub_1001AFCCC();
  v2 = sub_1001AA510();
  v282 = OBJC_IVAR___MusicNowPlayingControlsViewController_timeControl;
  v3 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_timeControl];
  v4 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_smartTransitionIndicatorView];
  v279 = OBJC_IVAR___MusicNowPlayingControlsViewController_shuffleButton;
  v5 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_shuffleButton];
  v280 = OBJC_IVAR___MusicNowPlayingControlsViewController_repeatButton;
  v6 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_repeatButton];
  v281 = OBJC_IVAR___MusicNowPlayingControlsViewController_volumeSlider;
  v7 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_volumeSlider];
  v287[16] = v2;
  v287[17] = v3;
  v285 = v3;
  v8 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_lyricsButton];
  v287[18] = v4;
  v287[19] = v5;
  v277 = OBJC_IVAR___MusicNowPlayingControlsViewController_queueModeBadgeView;
  v9 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_queueModeBadgeView];
  v287[20] = v6;
  v287[21] = v7;
  v278 = OBJC_IVAR___MusicNowPlayingControlsViewController_queueButton;
  v10 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_queueButton];
  v287[22] = v8;
  v287[23] = v9;
  v287[24] = v10;
  v283 = OBJC_IVAR___MusicNowPlayingControlsViewController_routeLabel;
  v11 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_routeLabel];
  if (!v11)
  {
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v12 = v10;
  v13 = v285;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = [v11 titleLabel];
  v21 = OBJC_IVAR___MusicNowPlayingControlsViewController_routeSharePlayTogetherControl;
  v22 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_routeSharePlayTogetherControl];
  v287[25] = v20;
  v288 = *(v22 + OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_containerView);
  v23 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_attributionView];
  v24 = v288;
  v25 = v23;
  v26 = sub_100453DF0();

  v289 = v26;
  v284 = v1;
  v27 = 0;
  v290 = sub_1001AB0B4();
  v28 = _swiftEmptyArrayStorage;
  v287[0] = _swiftEmptyArrayStorage;
  v29 = _swiftEmptyArrayStorage;
LABEL_3:
  if (v27 <= 0xE)
  {
    v30 = 14;
  }

  else
  {
    v30 = v27;
  }

  while (v27 != 14)
  {
    if (v30 == v27)
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        sub_100009F78(0, &qword_101181620, UIView_ptr);

        v59 = _bridgeCocoaArray<A>(_:)();

LABEL_43:

        v287[0] = v29;

        sub_10012406C(v59);
        v60 = v29;
        if (v29 >> 62)
        {
          v61 = _CocoaArrayWrapper.endIndex.getter();
          if (!v61)
          {
LABEL_76:

            v76 = *&v284[OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton];
            if (v76)
            {
              v77 = [v76 layer];
              [v77 setCompositingFilter:kCAFilterPlusL];

              v78 = qword_10117F900;
              v79 = *&v284[OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___titlesStackView];
              if (v78 != -1)
              {
                swift_once();
              }

              v80 = *((swift_isaMask & *v79) + 0x100);
              v81 = qword_101219098;
              v82 = v80(v287);
              v84 = *(v83 + 8);
              *(v83 + 8) = v81;
              v85 = v81;

              v82(v287, 0);
              v86 = *&v284[v282];
              if (v86)
              {
                v87 = qword_10117F8E8;
                v88 = v86;
                if (v87 != -1)
                {
                  swift_once();
                }

                v89 = qword_101219080;
                v90 = *&v88[OBJC_IVAR____TtC5Music17PlayerTimeControl_liveLabelTextColor];
                *&v88[OBJC_IVAR____TtC5Music17PlayerTimeControl_liveLabelTextColor] = qword_101219080;
                v91 = v89;

                [*&v88[OBJC_IVAR____TtC5Music17PlayerTimeControl_liveLabel] setTextColor:v91];
                v92 = *&v284[v282];
                if (v92)
                {
                  v93 = *&v92[OBJC_IVAR____TtC5Music17PlayerTimeControl_elapsedTrackColor];
                  *&v92[OBJC_IVAR____TtC5Music17PlayerTimeControl_elapsedTrackColor] = v85;
                  v94 = v85;
                  v95 = v92;

                  v96 = *&v95[OBJC_IVAR____TtC5Music17PlayerTimeControl_slider];
                  v97 = *((swift_isaMask & *v96) + 0x1F8);
                  v98 = v96;
                  v97(v94);

                  v99 = *&v284[v282];
                  if (v99)
                  {
                    v100 = qword_10117F908;
                    v101 = v99;
                    if (v100 != -1)
                    {
                      swift_once();
                    }

                    v273 = v91;
                    v102 = qword_1012190A0;
                    sub_1003115E8(v102);

                    v103 = *&v284[v282];
                    if (v103)
                    {
                      v104 = objc_opt_self();
                      v105 = v103;
                      v275 = v104;
                      v106 = [v104 whiteColor];
                      v107 = *&v105[OBJC_IVAR____TtC5Music17PlayerTimeControl_trackingTintColor];
                      *&v105[OBJC_IVAR____TtC5Music17PlayerTimeControl_trackingTintColor] = v106;
                      v108 = v106;

                      v109 = *&v105[OBJC_IVAR____TtC5Music17PlayerTimeControl_slider];
                      v110 = *((swift_isaMask & *v109) + 0x228);
                      v111 = v108;
                      v112 = v109;
                      v110(v111);

                      sub_10030FBC0();
                      v113 = *&v284[v282];
                      if (v113)
                      {
                        v114 = qword_10117F910;
                        v115 = v113;
                        if (v114 != -1)
                        {
                          swift_once();
                        }

                        v116 = qword_1012190A8;
                        v117 = *&v115[OBJC_IVAR____TtC5Music17PlayerTimeControl_timeLabelTextColor];
                        *&v115[OBJC_IVAR____TtC5Music17PlayerTimeControl_timeLabelTextColor] = qword_1012190A8;
                        v118 = v116;

                        sub_10030FBC0();
                        v119 = *&v284[v281];
                        if (v119)
                        {
                          v120 = *&v119[OBJC_IVAR____TtC5Music12VolumeSlider_elapsedTrackColor];
                          *&v119[OBJC_IVAR____TtC5Music12VolumeSlider_elapsedTrackColor] = v94;
                          v121 = v94;
                          v122 = v119;

                          sub_10072751C();
                          v123 = *&v284[v281];
                          if (v123)
                          {
                            v124 = *&v123[OBJC_IVAR____TtC5Music12VolumeSlider_remainingTrackColor];
                            *&v123[OBJC_IVAR____TtC5Music12VolumeSlider_remainingTrackColor] = v102;
                            v125 = v102;
                            v126 = v123;

                            sub_10072751C();
                            v127 = *&v284[v281];
                            if (v127)
                            {
                              v128 = v284;
                              v129 = v127;
                              v130 = [v275 whiteColor];
                              v131 = *&v129[OBJC_IVAR____TtC5Music12VolumeSlider_trackingColor];
                              *&v129[OBJC_IVAR____TtC5Music12VolumeSlider_trackingColor] = v130;
                              v132 = v130;

                              sub_10072751C();
                              v133 = *&v284[v281];
                              if (v133)
                              {
                                [v133 setTintColor:v121];
                                v134 = *&v284[v278];
                                if (v134)
                                {
                                  [v134 setTintColor:v121];
                                  v135 = *&v284[v277];
                                  if (v135)
                                  {
                                    v136 = qword_10117F8F0;
                                    v137 = v135;
                                    v139 = v279;
                                    v138 = v280;
                                    if (v136 != -1)
                                    {
                                      swift_once();
                                    }

                                    [v137 setBackgroundColor:{qword_101219088, v273}];

                                    v140 = *&v284[v277];
                                    if (v140)
                                    {
                                      [v140 setTintColor:v274];
                                      v141 = *&v284[v279];
                                      v142 = [v275 whiteColor];
                                      v143 = *&v141[OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_selectedColor];
                                      *&v141[OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_selectedColor] = v142;
                                      v144 = v142;

                                      sub_10004FD5C();
                                      v145 = *&v284[v280];
                                      v146 = [v275 whiteColor];
                                      v147 = *&v145[OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_selectedColor];
                                      *&v145[OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_selectedColor] = v146;
                                      v148 = v146;

                                      sub_100050478();
                                      v149 = *&v284[v279];
                                      v150 = v149;
                                      v151 = &selRef_objectAtIndexedSubscript_;
                                      goto LABEL_124;
                                    }

LABEL_176:
                                    __break(1u);
LABEL_177:
                                    __break(1u);
                                    goto LABEL_178;
                                  }

LABEL_174:
                                  __break(1u);
LABEL_175:
                                  __break(1u);
                                  goto LABEL_176;
                                }

LABEL_172:
                                __break(1u);
LABEL_173:
                                __break(1u);
                                goto LABEL_174;
                              }

LABEL_170:
                              __break(1u);
LABEL_171:
                              __break(1u);
                              goto LABEL_172;
                            }

LABEL_168:
                            __break(1u);
LABEL_169:
                            __break(1u);
                            goto LABEL_170;
                          }

LABEL_166:
                          __break(1u);
LABEL_167:
                          __break(1u);
                          goto LABEL_168;
                        }

LABEL_164:
                        __break(1u);
LABEL_165:
                        __break(1u);
                        goto LABEL_166;
                      }

LABEL_162:
                      __break(1u);
LABEL_163:
                      __break(1u);
                      goto LABEL_164;
                    }

LABEL_160:
                    __break(1u);
LABEL_161:
                    __break(1u);
                    goto LABEL_162;
                  }

LABEL_158:
                  __break(1u);
LABEL_159:
                  __break(1u);
                  goto LABEL_160;
                }

LABEL_156:
                __break(1u);
LABEL_157:
                __break(1u);
                goto LABEL_158;
              }

LABEL_154:
              __break(1u);
LABEL_155:
              __break(1u);
              goto LABEL_156;
            }

LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
            goto LABEL_154;
          }
        }

        else
        {
          v61 = *((v287[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v61)
          {
            goto LABEL_76;
          }
        }

        v62 = 0;
        v29 &= 0xFFFFFFFFFFFFFF8uLL;
        v63 = kCAFilterPlusL;
        while (1)
        {
          if ((v60 & 0xC000000000000001) != 0)
          {
            v64 = sub_100062D50(v62, v60);
          }

          else
          {
            if (v62 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_72;
            }

            v64 = *(v60 + 8 * v62 + 32);
          }

          v65 = v64;
          v66 = v62 + 1;
          if (__OFADD__(v62, 1))
          {
            break;
          }

          v67 = [v64 layer];
          [v67 setCompositingFilter:v63];

          ++v62;
          if (v66 == v61)
          {
            goto LABEL_76;
          }
        }
      }
    }

    v31 = v287[v27++ + 15];
    if (v31)
    {
      v32 = v31;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v287[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v287[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v29 = v287[0];
      goto LABEL_3;
    }
  }

  sub_10010FC20(&qword_1011839B8, &unk_100EBF420);
  swift_arrayDestroy();
  v33 = *&v284[v283];
  if (!v33)
  {
    goto LABEL_145;
  }

  v34 = [v33 titleLabel];
  v35 = [v34 superview];

  if (v35)
  {
    v36 = [v35 layer];

    [v36 setAllowsGroupBlending:0];
  }

  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBE270;
  v38 = *&v284[OBJC_IVAR___MusicNowPlayingControlsViewController_leftButton];
  if (!v38)
  {
    goto LABEL_146;
  }

  v39 = inited;
  *(inited + 32) = v38;
  v40 = *&v284[OBJC_IVAR___MusicNowPlayingControlsViewController_playPauseStopButton];
  if (!v40)
  {
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  v276 = v21;
  *(inited + 40) = v40;
  v41 = *&v284[OBJC_IVAR___MusicNowPlayingControlsViewController_rightButton];
  if (!v41)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  *(inited + 48) = v41;
  v42 = v38;
  v43 = v40;
  v44 = v41;
  v45 = [v284 traitCollection];
  sub_100050078();
  v46 = UITraitCollection.subscript.getter();

  v47 = v39 & 0xC000000000000001;
  v286 = v39;
  v48 = v39 & 0xFFFFFFFFFFFFFF8;
  v49 = 0;
  if (v46)
  {
    v287[0] = _swiftEmptyArrayStorage;
    v50 = v39;
    while (1)
    {
      if (v49 == 3)
      {
        if (v28 >> 62)
        {
          goto LABEL_74;
        }

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        sub_100009F78(0, &qword_101181620, UIView_ptr);
        v59 = v28;
        goto LABEL_43;
      }

      if (v47)
      {
        v51 = sub_1007E91D4(v49, v50);
      }

      else
      {
        if (v49 >= *(v48 + 16))
        {
          goto LABEL_68;
        }

        v51 = *(v50 + 8 * v49 + 32);
      }

      v52 = v51;
      v53 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        goto LABEL_66;
      }

      v54 = [v51 imageView];

      ++v49;
      if (v54)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v287[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v287[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v50 = v286;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v28 = v287[0];
        v49 = v53;
      }
    }
  }

  v287[0] = _swiftEmptyArrayStorage;
  while (v49 != 3)
  {
    if (v47)
    {
      v55 = sub_1007E91D4(v49, v286);
    }

    else
    {
      if (v49 >= *(v48 + 16))
      {
        goto LABEL_69;
      }

      v55 = *(v286 + 8 * v49 + 32);
    }

    v56 = v55;
    v57 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      goto LABEL_67;
    }

    v58 = [v55 imageView];

    ++v49;
    if (v58)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v287[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v287[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v28 = v287[0];
      v49 = v57;
    }
  }

  if (v28 >> 62)
  {
    sub_100009F78(0, &qword_101181620, UIView_ptr);

    v68 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100009F78(0, &qword_101181620, UIView_ptr);
    v68 = v28;
  }

  v287[0] = v29;

  sub_10012406C(v68);
  v69 = v29;
  if (v29 >> 62)
  {
    v70 = _CocoaArrayWrapper.endIndex.getter();
    if (!v70)
    {
      goto LABEL_102;
    }
  }

  else
  {
    v70 = *((v287[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v70)
    {
      goto LABEL_102;
    }
  }

  v71 = 0;
  v29 &= 0xC000000000000001;
  do
  {
    if (v29)
    {
      v72 = sub_100062D50(v71, v69);
    }

    else
    {
      if (v71 >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_73;
      }

      v72 = *(v69 + 8 * v71 + 32);
    }

    v73 = v72;
    v74 = v71 + 1;
    if (__OFADD__(v71, 1))
    {
      goto LABEL_71;
    }

    v75 = [v72 layer];
    [v75 setCompositingFilter:0];

    ++v71;
  }

  while (v74 != v70);
LABEL_102:

  v152 = *&v284[OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton];
  if (!v152)
  {
    goto LABEL_153;
  }

  v153 = [v152 layer];
  [v153 setCompositingFilter:0];

  v154 = *&v284[OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___titlesStackView];
  v155 = objc_opt_self();
  v156 = v154;
  v157 = [v155 tintColor];
  v158 = (*((swift_isaMask & *v156) + 0x100))(v287);
  v160 = *(v159 + 8);
  *(v159 + 8) = v157;

  v158(v287, 0);
  v161 = *&v284[v282];
  if (!v161)
  {
    goto LABEL_155;
  }

  v162 = v161;
  v163 = [v155 systemGrayColor];
  v164 = *&v162[OBJC_IVAR____TtC5Music17PlayerTimeControl_liveLabelTextColor];
  *&v162[OBJC_IVAR____TtC5Music17PlayerTimeControl_liveLabelTextColor] = v163;
  v165 = v163;

  [*&v162[OBJC_IVAR____TtC5Music17PlayerTimeControl_liveLabel] setTextColor:v165];
  v166 = *&v284[v282];
  if (!v166)
  {
    goto LABEL_157;
  }

  v167 = v166;
  v168 = [v155 systemGrayColor];
  v169 = *&v167[OBJC_IVAR____TtC5Music17PlayerTimeControl_elapsedTrackColor];
  *&v167[OBJC_IVAR____TtC5Music17PlayerTimeControl_elapsedTrackColor] = v168;
  v170 = v168;

  v171 = *&v167[OBJC_IVAR____TtC5Music17PlayerTimeControl_slider];
  v172 = *((swift_isaMask & *v171) + 0x1F8);
  v173 = v171;
  v172(v170);

  v174 = *&v284[v282];
  if (!v174)
  {
    goto LABEL_159;
  }

  v175 = v174;
  v176 = [v155 systemFillColor];
  sub_1003115E8(v176);

  v177 = *&v284[v282];
  if (!v177)
  {
    goto LABEL_161;
  }

  v178 = v177;
  v179 = [v155 labelColor];
  v180 = *&v178[OBJC_IVAR____TtC5Music17PlayerTimeControl_trackingTintColor];
  *&v178[OBJC_IVAR____TtC5Music17PlayerTimeControl_trackingTintColor] = v179;
  v181 = v179;

  v182 = *&v178[OBJC_IVAR____TtC5Music17PlayerTimeControl_slider];
  v183 = *((swift_isaMask & *v182) + 0x228);
  v184 = v181;
  v185 = v182;
  v183(v184);

  sub_10030FBC0();
  v186 = *&v284[v282];
  if (!v186)
  {
    goto LABEL_163;
  }

  v128 = v284;
  v187 = v186;
  v188 = [v155 systemGrayColor];
  v189 = *&v187[OBJC_IVAR____TtC5Music17PlayerTimeControl_timeLabelTextColor];
  *&v187[OBJC_IVAR____TtC5Music17PlayerTimeControl_timeLabelTextColor] = v188;
  v190 = v188;

  sub_10030FBC0();
  v138 = v280;
  v191 = *&v284[v281];
  v139 = v279;
  v151 = &selRef_objectAtIndexedSubscript_;
  if (!v191)
  {
    goto LABEL_165;
  }

  v192 = v191;
  v193 = [v155 systemGrayColor];
  v194 = *&v192[OBJC_IVAR____TtC5Music12VolumeSlider_elapsedTrackColor];
  *&v192[OBJC_IVAR____TtC5Music12VolumeSlider_elapsedTrackColor] = v193;
  v195 = v193;

  sub_10072751C();
  v196 = *&v284[v281];
  if (!v196)
  {
    goto LABEL_167;
  }

  v197 = v196;
  v198 = [v155 systemFillColor];
  v199 = *&v197[OBJC_IVAR____TtC5Music12VolumeSlider_remainingTrackColor];
  *&v197[OBJC_IVAR____TtC5Music12VolumeSlider_remainingTrackColor] = v198;
  v200 = v198;

  sub_10072751C();
  v201 = *&v284[v281];
  if (!v201)
  {
    goto LABEL_169;
  }

  v202 = v201;
  v203 = [v155 labelColor];
  v204 = *&v202[OBJC_IVAR____TtC5Music12VolumeSlider_trackingColor];
  *&v202[OBJC_IVAR____TtC5Music12VolumeSlider_trackingColor] = v203;
  v205 = v203;

  sub_10072751C();
  v206 = *&v284[v281];
  if (!v206)
  {
    goto LABEL_171;
  }

  v207 = v206;
  v208 = [v155 systemGrayColor];
  [v207 setTintColor:v208];

  v209 = *&v284[v278];
  if (!v209)
  {
    goto LABEL_173;
  }

  v210 = v209;
  v211 = [v284 view];
  if (!v211)
  {
    goto LABEL_175;
  }

  v212 = v211;
  v213 = [v211 tintColor];

  [v210 setTintColor:v213];
  v214 = *&v284[v277];
  if (!v214)
  {
    goto LABEL_177;
  }

  v215 = qword_10117F8F8;
  v216 = v214;
  if (v215 != -1)
  {
    swift_once();
  }

  [v216 setBackgroundColor:qword_101219090];

  v217 = *&v284[v277];
  if (!v217)
  {
LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  v218 = v217;
  v219 = [v284 view];
  if (!v219)
  {
LABEL_179:
    __break(1u);
    goto LABEL_180;
  }

  v220 = v219;
  v221 = [v219 tintColor];

  [v218 setTintColor:v221];
  v222 = *&v284[v279];
  v223 = [v284 view];
  if (!v223)
  {
LABEL_180:
    __break(1u);
    goto LABEL_181;
  }

  v224 = v223;
  v225 = [v223 tintColor];

  v226 = *&v222[OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_selectedColor];
  *&v222[OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_selectedColor] = v225;
  v227 = v225;

  sub_10004FD5C();
  v228 = *&v284[v280];
  v229 = [v284 view];
  if (v229)
  {
    v230 = v229;
    v231 = [v229 tintColor];

    v232 = *&v228[OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_selectedColor];
    *&v228[OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_selectedColor] = v231;
    v233 = v231;

    sub_100050478();
    v234 = qword_10117F900;
    v149 = *&v284[v279];
    if (v234 != -1)
    {
      swift_once();
    }

    v125 = qword_101219098;
    v150 = qword_101219098;
LABEL_124:
    v235 = *&v149[OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_defaultColor];
    *&v149[OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_defaultColor] = v125;
    v236 = v125;
    v237 = v150;

    sub_10004FD5C();
    v238 = *&v128[v138];
    v239 = *&v238[OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_defaultColor];
    *&v238[OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_defaultColor] = v125;
    v240 = v236;
    v241 = v238;

    sub_100050478();
    v242 = *&v128[OBJC_IVAR___MusicNowPlayingControlsViewController_reactionButton];
    if (v242)
    {
      v243 = v242;
      v244 = [v128 traitCollection];
      v245 = UITraitCollection.subscript.getter();

      v246.n128_f64[0] = Reactions.StackView.model.getter();
      (*(*v247 + 328))(v245 & 1, v246);
    }

    sub_1001A6F20();
    [*&v128[OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___contextSystemButton] setNeedsUpdateConfiguration];
    [*&v128[OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___favoriteSystemButton] setNeedsUpdateConfiguration];
    sub_1001D01A8();
    sub_1001C3DB8();
    sub_1001C36E8();
    v248 = *&v128[v276];
    v249 = *(v248 + OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButton);
    if (*(v248 + OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_style + 8))
    {
      v250 = qword_10117F770;
      v251 = v249;
      if (v250 != -1)
      {
        swift_once();
      }

      v252 = &qword_101218D80;
    }

    else
    {
      v253 = qword_10117F778;
      v254 = v249;
      if (v253 != -1)
      {
        swift_once();
      }

      v252 = &qword_101218D88;
    }

    [v249 setTintColor:*v252];

    v255 = *&v128[v283];
    if (v255)
    {
      if (*(*&v128[v276] + OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_style + 8))
      {
        v256 = qword_10117F770;
        v257 = v255;
        if (v256 != -1)
        {
          swift_once();
        }

        v258 = &qword_101218D80;
      }

      else
      {
        v259 = qword_10117F778;
        v260 = v255;
        if (v259 != -1)
        {
          swift_once();
        }

        v258 = &qword_101218D88;
      }

      [v255 setTextColor:*v258];

      v261 = *&v128[v139];
      v262 = [v128 view];
      if (v262)
      {
        v263 = v262;
        v264 = [v262 v151[504]];

        v265 = *&v261[OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_selectedBackgroundColor];
        *&v261[OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_selectedBackgroundColor] = v264;
        v266 = v264;

        sub_10004FD5C();
        v267 = *&v128[v138];
        v268 = [v128 view];
        if (v268)
        {
          v269 = v268;

          swift_setDeallocating();
          swift_arrayDestroy();
          v270 = [v269 v151[504]];

          v271 = *&v267[OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_selectedBackgroundColor];
          *&v267[OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_selectedBackgroundColor] = v270;
          v272 = v270;

          sub_100050478();
          [v128 updatePlayingItemAudioTraitButton];
          return;
        }

LABEL_151:
        __break(1u);
        goto LABEL_152;
      }

LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

LABEL_181:
  __break(1u);
}

void sub_1001C8848(void *a1, unsigned __int8 a2)
{
  v3 = v2;
  v6 = [v3 parentViewController];
  if (!v6 || (v7 = v6, v8 = [v6 isBeingDismissed], v7, (v8 & 1) == 0))
  {
    v9 = a2;
    if (a2 == 4)
    {
      v9 = v3[OBJC_IVAR___MusicNowPlayingControlsViewController_mode];
    }

    v54 = _swiftEmptyArrayStorage;
    v10 = OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerView;
    v11 = *&v3[OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerView];
    if (!v11)
    {
      __break(1u);
      goto LABEL_36;
    }

    v12 = [v11 superview];
    if (v12)
    {
      v13 = v12;
      sub_100009F78(0, &qword_101181620, UIView_ptr);
      v14 = a1;
      v15 = static NSObject.== infix(_:_:)();

      if (v15)
      {
        goto LABEL_20;
      }
    }

    if ((v9 - 1) <= 1)
    {
      v16 = *&v3[OBJC_IVAR___MusicNowPlayingControlsViewController_metadataStackViewCollapsedConstraints];

      goto LABEL_14;
    }

    v16 = *&v3[OBJC_IVAR___MusicNowPlayingControlsViewController__metadataStackViewRegularConstraints];
    v53 = v16;
    v17 = *&v3[OBJC_IVAR___MusicNowPlayingControlsViewController_attributionContainerView];

    if ([v17 isHidden])
    {
LABEL_14:
      sub_100124054(v16);
      if (*&v3[v10])
      {
        [a1 addSubview:?];
        sub_1001C2200();
        if (([*&v3[OBJC_IVAR___MusicNowPlayingControlsViewController_attributionContainerView] isHidden] & 1) == 0 && v3[OBJC_IVAR___MusicNowPlayingControlsViewController_mode] - 1 >= 2)
        {
          v21 = *&v3[OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerCenterYConstraint];
          if (!v21)
          {
LABEL_41:
            __break(1u);
            return;
          }

          v22 = v21;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_19;
          }

          goto LABEL_34;
        }

LABEL_20:
        v23 = *&v3[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView];
        if (!v23)
        {
LABEL_30:
          v51 = objc_opt_self();
          sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v51 activateConstraints:isa];

          return;
        }

        v24 = v23;
        v25 = [v24 superview];
        if (v25)
        {
          v26 = v25;
          sub_100009F78(0, &qword_101181620, UIView_ptr);
          v27 = a1;
          v28 = static NSObject.== infix(_:_:)();

          if (v28)
          {

LABEL_29:
            goto LABEL_30;
          }
        }

        v29 = objc_opt_self();
        v30 = OBJC_IVAR___MusicNowPlayingControlsViewController_artworkViewConstraints;
        sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);

        v31 = Array._bridgeToObjectiveC()().super.isa;

        [v29 deactivateConstraints:v31];

        sub_10010FC20(&qword_101183990, &qword_100EBC750);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_100EBDC10;
        v33 = [v24 centerXAnchor];
        v34 = OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuide;
        v35 = *&v3[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuide];
        if (v35)
        {
          v36 = [v35 centerXAnchor];
          v37 = [v33 constraintEqualToAnchor:v36];

          *(v32 + 32) = v37;
          v38 = [v24 centerYAnchor];
          v39 = *&v3[v34];
          if (v39)
          {
            v40 = [v39 centerYAnchor];
            v41 = [v38 constraintEqualToAnchor:v40];

            *(v32 + 40) = v41;
            v42 = [v24 widthAnchor];
            v43 = *&v3[v34];
            if (v43)
            {
              v44 = [v43 widthAnchor];
              v45 = [v42 constraintEqualToAnchor:v44];

              *(v32 + 48) = v45;
              v46 = [v24 heightAnchor];

              v47 = *&v3[v34];
              if (v47)
              {
                v48 = [v47 heightAnchor];
                v49 = [v46 constraintEqualToAnchor:v48];

                *(v32 + 56) = v49;
                *&v3[v30] = v32;

                sub_100124054(v50);
                [a1 addSubview:v24];
                goto LABEL_29;
              }

              goto LABEL_40;
            }

LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v18 = v3;
    v19 = sub_1001CFE60(&v53, v18);

    if (v53 >> 62)
    {
      v20 = _CocoaArrayWrapper.endIndex.getter();
      if (v20 >= v19)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v20 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20 >= v19)
      {
LABEL_13:
        sub_1003BB630(v19, v20);
        v16 = v53;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_34:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_19:
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    goto LABEL_20;
  }
}

void sub_1001C8E64(void *a1, void *a2)
{
  v16 = *(v2 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuideRegularConstraints);

  sub_100124054(v5);
  v6 = *(v2 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideTopConstraint);
  if (!v6)
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  v7 = v6;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v8 = *(v2 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideMotionBackgroundTopConstraint);
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = v8;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v10 = *(v2 + *a1);
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = v10;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v12 = objc_opt_self();
  sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v12 deactivateConstraints:isa];

  v14 = *(v2 + *a2);
  if (!v14)
  {
    goto LABEL_17;
  }

  v15 = v14;

  [v15 setActive:1];
}

void sub_1001C90B0()
{
  v1 = v0;
  v2 = sub_100025CE0();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v2) & 1) != 0 || (v3 = [objc_opt_self() currentDevice], v4 = objc_msgSend(v3, "userInterfaceIdiom"), v3, !v4))
  {
    sub_1001C9200(v1);
  }

  else
  {
    v5 = objc_opt_self();
    sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v5 deactivateConstraints:isa];

    v7 = Array._bridgeToObjectiveC()().super.isa;

    [v5 activateConstraints:v7];
  }
}

void sub_1001C9200(uint64_t a1)
{
  v14 = *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuideCollapsedConstraints);
  v2 = *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideMotionBackgroundCollapsedTopConstraint);
  if (!v2)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v3 = v2;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v13 = *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuideFullBleedConstraints);
  v4 = *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideMotionBackgroundTopConstraint);
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = v4;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v12 = *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuideRegularConstraints);
  v6 = *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideTopConstraint);
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = v6;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (*(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlayingShouldShowMotionBackground))
  {
    v8 = v12;
  }

  else
  {
    v8 = v13;
  }

  sub_100124054(v8);
  v9 = objc_opt_self();
  sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 deactivateConstraints:isa];

  v11 = Array._bridgeToObjectiveC()().super.isa;

  [v9 activateConstraints:v11];
}

void sub_1001C9480()
{
  v1 = v0;
  v2 = sub_100025CE0();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v2) & 1) != 0 || (v3 = [objc_opt_self() currentDevice], v4 = objc_msgSend(v3, "userInterfaceIdiom"), v3, !v4))
  {
    if (*(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode) <= 1u)
    {
      if (*(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode))
      {
        sub_1001C8E3C();
        return;
      }

LABEL_9:
      sub_1001C90B0();
      return;
    }

    if (*(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode) == 2)
    {
      sub_1001C8E50();
      return;
    }

    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v2))
    {
      goto LABEL_9;
    }
  }
}

id sub_1001C9574(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10010FC20(&unk_1011838E0, &unk_100EC1670);
  __chkstk_darwin();
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v61 - v8;
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  __chkstk_darwin();
  v75 = (&v61 - v10);
  sub_10010FC20(&unk_10118AB20, &unk_100EBF390);
  __chkstk_darwin();
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v61 - v13;
  *&v15 = __chkstk_darwin().n128_u64[0];
  v17 = &v61 - v16;
  result = *&v3[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying];
  if (!result)
  {
    return result;
  }

  v70 = v7;
  v71 = v9;
  v68 = a1;
  v66 = OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying;
  v73 = [result tracklist];
  v19 = type metadata accessor for Actions.PlaybackContext(0);
  v20 = *(v19 - 8);
  v69 = *(v20 + 56);
  v69(v17, 1, 1, v19);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v21 = v75;
    sub_1005E0230(v75);
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = type metadata accessor for MetricsEvent.Page(0);
    v21 = v75;
    (*(*(v22 - 8) + 56))(v75, 1, 1, v22);
  }

  v23 = swift_allocObject();
  v74 = v3;
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  v25 = *(a2 + 16);
  *(v24 + 24) = *a2;
  *(v24 + 40) = v25;
  *(v24 + 56) = *(a2 + 32);
  *(v24 + 72) = *(a2 + 48);
  sub_1000089F8(v17, v12, &unk_10118AB20, &unk_100EBF390);
  v67 = *(v20 + 48);
  v26 = v67(v12, 1, v19);
  v72 = v23;
  if (v26 == 1)
  {
    v27 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
    v28 = v71;
    (*(*(v27 - 8) + 56))(v71, 1, 1, v27);
    *&v87 = 0;
    v85 = 0u;
    v86 = 0u;

    sub_1000089F8(a2, &v82, &qword_101183998, &qword_100EBF408);
    if (qword_10117F608 != -1)
    {
      swift_once();
    }

    v29 = qword_101218AD8;
    sub_1000089F8(v28, v70, &unk_1011838E0, &unk_100EC1670);
    v65 = v29;
    v30 = v74;
    v64 = UIViewController.playActivityInformation.getter();
    v63 = v31;
    v62 = v32;
    v61 = v33;
    sub_1000089F8(&v85, &v80, &unk_101183910, &unk_100EBDD00);
    if (v81)
    {
      sub_100059A8C(&v80, &v82);
      v21 = v75;
    }

    else
    {
      v79 = v30;
      sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
      v34 = v30;
      sub_10010FC20(&unk_101183920, &unk_100EC0330);
      v35 = swift_dynamicCast();
      v21 = v75;
      if (v35)
      {
        sub_100059A8C(&v76, &v82);
      }

      else
      {
        v78 = 0;
        v77 = 0u;
        v76 = 0u;
        *&v82 = v34;
        v36 = v34;
        v37 = String.init<A>(reflecting:)();
        *(&v83 + 1) = &type metadata for Player.CommandIssuerIdentity;
        *&v84 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v82 = v37;
        *(&v82 + 1) = v38;
        if (*(&v77 + 1))
        {
          sub_1000095E8(&v76, &unk_101183910, &unk_100EBDD00);
        }
      }

      if (v81)
      {
        sub_1000095E8(&v80, &unk_101183910, &unk_100EBDD00);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v65, v70, v64, v63, v62, v61, &v82, v14);
    sub_1000095E8(&v85, &unk_101183910, &unk_100EBDD00);
    sub_1000095E8(v71, &unk_1011838E0, &unk_100EC1670);
    if (v67(v12, 1, v19) != 1)
    {
      sub_1000095E8(v12, &unk_10118AB20, &unk_100EBF390);
    }
  }

  else
  {
    sub_1001D24B0(v12, v14, type metadata accessor for Actions.PlaybackContext);

    sub_1000089F8(a2, &v82, &qword_101183998, &qword_100EBF408);
  }

  v69(v14, 0, 1, v19);
  v39 = v73;
  sub_1001CCD5C(v74, v14, v21, sub_1001D1840, v24, &v85);
  sub_1000095E8(v14, &unk_10118AB20, &unk_100EBF390);
  if (!*(&v85 + 1))
  {

    sub_1000095E8(v21, &unk_1011838F0, &qword_100EC1070);
    sub_1000095E8(v17, &unk_10118AB20, &unk_100EBF390);

    return 0;
  }

  v82 = v85;
  v83 = v86;
  v84 = v87;
  *&v80 = &off_101099670;

  sub_100124084(v40);
  v41 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(v80, 0);

  v76 = v82;
  sub_100015BB0(&v76);
  v80 = v83;
  sub_100015BB0(&v80);

  sub_1000095E8(v21, &unk_1011838F0, &qword_100EC1070);
  sub_1000095E8(v17, &unk_10118AB20, &unk_100EBF390);

  if (!v41)
  {
    return 0;
  }

  v42 = v41;
  v43 = v74;
  v44 = v66;
  v45 = *&v74[v66];
  if (v45 && (v46 = [v45 tracklist], v47 = objc_msgSend(v46, "transitionsActive"), v46, v47) && (v48 = *&v43[v44]) != 0)
  {
    v49 = [v48 tracklist];
    v50 = [v49 transitionStyle];

    v51 = v50 != 1;
  }

  else
  {
    v51 = 1;
  }

  if (*DeviceCapabilities.isInternalInstall.unsafeMutableAddressor() != 1 || v51)
  {
    return v42;
  }

  sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
  v52 = String._bridgeToObjectiveC()();
  v53 = [objc_opt_self() imageNamed:v52];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v55 = [v42 children];
  sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
  v56 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6C0;
  *(inited + 32) = v54;
  v79 = v56;
  v58 = v54;
  sub_10012409C(inited);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v60 = [v42 menuByReplacingChildren:isa];

  return v60;
}