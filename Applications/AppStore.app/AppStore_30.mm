void sub_100354E34(uint64_t a1, void *a2)
{
  v4 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButtonPresenter);
  if (v6)
  {
    v7 = OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v8 = *(v6 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer);

    if (v8)
    {
      [v8 invalidate];
      v8 = *(v6 + v7);
    }

    *(v6 + v7) = 0;
  }

  sub_1002C17B4();
  v9 = v4 + *a2;
  v10 = *v9;
  if (*v9)
  {
    v11 = *(v9 + 8);

    v10(a1);

    sub_10001F63C(v10, v11);
  }
}

uint64_t sub_100354F34(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unknownObjectRetain();
  v6 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100354E34(v8, a4);

  return sub_100007000(v8);
}

uint64_t sub_100354FAC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = (v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  [a1 bounds];
  LOBYTE(v44[0]) = 1;
  *&v26 = a1;
  *(&v26 + 1) = v9;
  *&v27 = v10;
  *(&v27 + 1) = v11;
  *&v28 = v12;
  BYTE8(v28) = 1;
  __asm { FMOV            V0.2D, #10.0 }

  v29 = _Q0;
  v30 = _Q0;
  v31 = 15;
  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  v18 = a1;
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (a1)
  {
    v34 = xmmword_100975F50;
    v35 = xmmword_100975F60;
    v36 = xmmword_100975F70;
    v32 = xmmword_100975F30;
    v33 = xmmword_100975F40;
    v40 = v28;
    v41 = v29;
    v42 = v30;
    v38 = v26;
    v39 = v27;
    v44[0] = xmmword_100975F30;
    v44[1] = xmmword_100975F40;
    v44[3] = xmmword_100975F60;
    v44[4] = xmmword_100975F70;
    v37 = qword_100975F80;
    v43 = v31;
    v45 = qword_100975F80;
    v44[2] = xmmword_100975F50;
    sub_100357ED0(&v32, v24);
    xmmword_100975F50 = v40;
    xmmword_100975F60 = v41;
    xmmword_100975F70 = v42;
    qword_100975F80 = v43;
    xmmword_100975F30 = v38;
    xmmword_100975F40 = v39;
    sub_100357F40(v44);
    v20 = v2 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shareButtonActionBlock;
    v21 = *(v2 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shareButtonActionBlock);
    if (v21)
    {
      v22 = *(v20 + 8);
      sub_10019DADC(&v26, v24);
      v23 = sub_10000827C(v21, v22);
      v21(v23);
      sub_10001F63C(v21, v22);
    }

    else
    {
      sub_10019DADC(&v26, v24);
    }

    v24[2] = xmmword_100975F50;
    v24[3] = xmmword_100975F60;
    v24[4] = xmmword_100975F70;
    v25 = qword_100975F80;
    v24[0] = xmmword_100975F30;
    v24[1] = xmmword_100975F40;
    xmmword_100975F30 = v32;
    xmmword_100975F40 = v33;
    xmmword_100975F50 = v34;
    xmmword_100975F60 = v35;
    xmmword_100975F70 = v36;
    qword_100975F80 = v37;
    sub_100357F40(v24);
    return sub_10019DB38(&v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003552DC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *&Strong[qword_100988CE8];
    if (v2)
    {
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v6[4] = sub_1000D0740;
      v6[5] = v3;
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 1107296256;
      v6[2] = sub_100235C48;
      v6[3] = &unk_1008BF1C8;
      v4 = _Block_copy(v6);
      v5 = v2;

      [v5 enterFullScreenAnimated:1 completionHandler:v4];

      _Block_release(v4);
    }

    else
    {
    }
  }

  sub_100355414(0, 0);
}

void sub_100355414(char a1, char a2)
{
  v3 = v2;
  v6 = [v2 traitCollection];
  v7 = UITraitCollection.isSizeClassRegular.getter();

  if ((v7 & 1) == 0)
  {
    if (a1)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 0.0;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = *&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_videoBackgroundColor];
      [v10 setBackgroundColor:v11];

      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = v8;
      v14 = sub_100357DC8;
      if (a2)
      {
LABEL_7:
        v15 = v14;
        v16 = objc_opt_self();
        v23[4] = v15;
        v23[5] = v13;
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 1107296256;
        v23[2] = sub_100007A08;
        v23[3] = &unk_1008BF0B0;
        v17 = _Block_copy(v23);

        [v16 animateWithDuration:4 delay:v17 options:0 animations:0.3 completion:0.0];

        _Block_release(v17);
        return;
      }
    }

    else
    {
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v18;
      *(v13 + 24) = v8;
      v14 = sub_1003590B8;
      if (a2)
      {
        goto LABEL_7;
      }
    }

    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = *(v19 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_overlayContentContainerView);
      v21 = v19;

      [v20 setAlpha:v8];
      v22 = *&v21[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_closeButton];
      [v22 setAlpha:v8];
    }
  }
}

void sub_100355870()
{
  v1 = type metadata accessor for MediaOverlayStyle();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_contentBackgroundBlurView;
  v7 = *&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_contentBackgroundBlurView];
  if (v7)
  {
    goto LABEL_8;
  }

  v8 = [objc_opt_self() effectWithStyle:7];
  v9 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v8];
  v10 = *&v0[v6];
  if (v10)
  {
    [v10 removeFromSuperview];
    v11 = *&v0[v6];
  }

  else
  {
    v11 = 0;
  }

  *&v0[v6] = v9;
  v12 = v9;

  if (v12)
  {
    [*&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_contentContainerView] insertSubview:v12 belowSubview:*&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_overlayContentContainerView]];
  }

  [v0 setNeedsLayout];

  v7 = *&v0[v6];
  if (v7)
  {
LABEL_8:
    [v7 setHidden:{0, v3}];
    v13 = *&v0[v6];
    if (v13)
    {
      v14 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaOverlayStyle;
      swift_beginAccess();
      (*(v2 + 16))(v5, &v0[v14], v1);
      v15 = v13;
      v16 = MediaOverlayStyle.userInterfaceStyle.getter();
      (*(v2 + 8))(v5, v1);
      [v15 setOverrideUserInterfaceStyle:v16];
    }
  }
}

void sub_100355A98()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + qword_100988CE8);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      [v3 setShowsPlaybackControls:1];
    }
  }
}

void sub_100355B2C(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [*(Strong + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_overlayContentContainerView) setAlpha:a2];
    [*&v4[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_closeButton] setAlpha:a2];
  }
}

void sub_100355BC0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButtonPresenter);
  *(v1 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButtonPresenter) = a1;
  if (v2)
  {
    v3 = OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v4 = *(v2 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer);
    if (v4)
    {
      [v4 invalidate];
      v5 = *(v2 + v3);
    }

    else
    {
      v5 = 0;
    }

    *(v2 + v3) = 0;
  }
}

uint64_t (*sub_100355C54(void *a1))()
{
  v2 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButtonPresenter;
  a1[2] = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButtonPresenter;
  *a1 = *(v1 + v2);
  a1[1] = v1;

  return sub_100355CAC;
}

double sub_100355CAC(void *a1, char a2)
{
  if (a2)
  {

    sub_100355BC0(v2);
  }

  else
  {
    v4 = a1[1];
    v3 = a1[2];
    v5 = *(v4 + v3);
    *(v4 + v3) = *a1;
    if (!v5)
    {
      return result;
    }

    v6 = OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v7 = *(v5 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer);
    if (v7)
    {
      [v7 invalidate];
      v8 = *(v5 + v6);
    }

    else
    {
      v8 = 0;
    }

    *(v5 + v6) = 0;
  }

  return result;
}

void sub_100355D54(char a1, char a2)
{
  if (a2)
  {
    if ((a1 & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButton];
      if ([v4 isHidden])
      {
        [v4 setAlpha:0.0];
        [v4 setHidden:0];
      }
    }

    v5 = objc_opt_self();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v8 = a1 & 1;
    *(v7 + 24) = a1 & 1;
    v19 = sub_100357DD4;
    v20 = v7;
    v15 = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = sub_100007A08;
    v18 = &unk_1008BF128;
    v9 = _Block_copy(&v15);

    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v8;
    v19 = sub_100357DE0;
    v20 = v11;
    v15 = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = sub_100504C5C;
    v18 = &unk_1008BF178;
    v12 = _Block_copy(&v15);

    [v5 animateWithDuration:v9 animations:v12 completion:0.3];
    _Block_release(v12);
    _Block_release(v9);
  }

  else
  {
    v13 = *&v2[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButton];
    if (a1)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = 1.0;
    }

    [*&v2[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButton] setHidden:a1 & 1];
    [v13 setAlpha:v14];

    [v2 setNeedsLayout];
  }
}

void sub_100355FF8(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButton);

    v6 = 1.0;
    if (a2)
    {
      v6 = 0.0;
    }

    [v5 setAlpha:v6];
  }
}

void sub_10035608C(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButton);

    [v6 setHidden:a3 & 1];
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    [v7 setNeedsLayout];
  }
}

BOOL sub_100356148(void *a1, void *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupTapGestureRecognizer);
  if (v4)
  {
    sub_100005744(0, &unk_100993110, UIGestureRecognizer_ptr);
    v6 = a1;
    v7 = v4;
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      v9 = *(v2 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_videoTapGestureRecognizer);
      if (v9)
      {
        v10 = a2;
        v11 = v9;
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          return 0;
        }
      }
    }
  }

  objc_opt_self();
  return swift_dynamicCastObjCClass() == 0;
}

BOOL sub_1003562A0(void *a1, id a2)
{
  v3 = v2;
  [a2 locationInView:v2];
  v7 = v6;
  v9 = v8;
  v10 = [v2 hitTest:0 withEvent:?];
  v11 = *&v2[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_dismissTapGestureRecognizer];
  if (v11)
  {
    sub_100005744(0, &unk_100993110, UIGestureRecognizer_ptr);
    v12 = a1;
    v13 = v11;
    v14 = static NSObject.== infix(_:_:)();

    if (v14)
    {
      [v3 bounds];
      v62.x = v7;
      v62.y = v9;
      if (CGRectContainsPoint(v65, v62))
      {
        if (v10)
        {
          sub_100005744(0, &qword_100972EB0, UIView_ptr);
          v15 = v10;
          v3 = v3;
          v16 = static NSObject.== infix(_:_:)();

          if (v16)
          {
            v17 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_dismissTapGestureActionBlock;
            return *&v3[v17] != 0;
          }
        }

        return 0;
      }

      goto LABEL_27;
    }
  }

  v18 = *&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_videoTapGestureRecognizer];
  if (!v18 || (sub_100005744(0, &unk_100993110, UIGestureRecognizer_ptr), v19 = a1, v20 = v18, v21 = static NSObject.== infix(_:_:)(), v20, v19, (v21 & 1) == 0))
  {
    v41 = *&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupTapGestureRecognizer];
    if (!v41 || (sub_100005744(0, &unk_100993110, UIGestureRecognizer_ptr), v42 = a1, v43 = v41, v44 = static NSObject.== infix(_:_:)(), v43, v42, (v44 & 1) == 0))
    {

      return 1;
    }

    v45 = *&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupView];
    [a2 locationInView:v45];
    v47 = v46;
    v49 = v48;
    [v45 bounds];
    v64.x = v47;
    v64.y = v49;
    if (CGRectContainsPoint(v67, v64))
    {
      if (!v10 || (objc_opt_self(), v50 = swift_dynamicCastObjCClass(), v10, !v50))
      {
        v17 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupTapGestureActionBlock;
        return *&v3[v17] != 0;
      }

      return 0;
    }

    goto LABEL_27;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_27;
  }

  v23 = Strong;
  [Strong frame];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v66.origin.x = v25;
  v66.origin.y = v27;
  v66.size.width = v29;
  v66.size.height = v31;
  v63.x = v7;
  v63.y = v9;
  if (!CGRectContainsPoint(v66, v63))
  {
    goto LABEL_27;
  }

  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
    goto LABEL_27;
  }

  v33 = v32;
  v34 = *&v32[qword_100988CE0];
  if (!v34)
  {

    goto LABEL_27;
  }

  v35 = v34;
  v36 = dispatch thunk of VideoPlayer.isPlaying.getter();

  if ((v36 & 1) == 0)
  {
    goto LABEL_27;
  }

  v37 = *&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shareButton];
  if (!v10)
  {
    if (!v37)
    {
      v60 = 0;
      return 0;
    }

    return 1;
  }

  if (v37)
  {
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    v38 = v10;
    v39 = v37;
    v40 = static NSObject.== infix(_:_:)();

    if (v40)
    {

      return 0;
    }

    v52 = *&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_closeButton];
  }

  else
  {
    v52 = *&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_closeButton];
    v53 = 0;
  }

  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v10 = v10;
  v54 = v52;
  v55 = static NSObject.== infix(_:_:)();

  if (v55)
  {
LABEL_27:

    return 0;
  }

  v56 = *&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupView];
  v57 = v10;
  v58 = v56;
  v59 = static NSObject.== infix(_:_:)();

  if (v59)
  {

    return 0;
  }

  objc_opt_self();
  v61 = swift_dynamicCastObjCClass() == 0;

  return v61;
}

id sub_10035679C(void *a1)
{
  v2 = v1;
  v26.receiver = v1;
  v26.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v26, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v4 = UITraitCollection.isSizeClassRegular.getter() & 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [v1 traitCollection];
  v6 = UITraitCollection.isSizeClassRegular.getter();

  if (v4 == 2 || ((v6 ^ v4) & 1) != 0)
  {
    sub_1003510D4();
    if (a1)
    {
      goto LABEL_7;
    }

LABEL_9:
    v7 = 2;
    goto LABEL_10;
  }

  if (!a1)
  {
    goto LABEL_9;
  }

LABEL_7:
  v7 = UITraitCollection.prefersAccessibilityLayouts.getter() & 1;
LABEL_10:
  v8 = [v2 traitCollection];
  v9 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v7 == 2 || ((v9 ^ v7) & 1) != 0)
  {
    goto LABEL_18;
  }

  v10 = [v2 traitCollection];
  v11 = [v10 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_18;
  }

  v12 = [a1 preferredContentSizeCategory];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (v13 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v15 != v16)
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_19;
    }

LABEL_18:
    sub_1003517F4();
    goto LABEL_19;
  }

LABEL_19:
  v18 = [v2 traitCollection];
  v19 = [v18 userInterfaceStyle];

  if (!a1 || v19 != [a1 userInterfaceStyle])
  {
    sub_100351E5C();
  }

  v20 = [v2 traitCollection];
  v21 = [v20 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v21 != result))
  {
    v23 = [v2 traitCollection];
    v24 = UITraitCollection.prefersRightToLeftLayouts.getter();

    if (v24)
    {
      v25 = -*&v2[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_defaultPageMargin];
    }

    else
    {
      v25 = 0.0;
    }

    return [*&v2[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_cardScrollView] setScrollIndicatorInsets:{0.0, v25}];
  }

  return result;
}

uint64_t type metadata accessor for AppEventDetailPageView(uint64_t a1)
{
  result = qword_100981198;
  if (!qword_100981198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100356EA0(uint64_t a1)
{
  result = type metadata accessor for MediaOverlayStyle();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_100356FD4(void *a1)
{
  sub_1003578C8();
  swift_unknownObjectWeakAssign();
  sub_10035338C();
}

uint64_t (*sub_100357024(uint64_t **a1))()
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
  v2[4] = sub_100353A78(v2);
  return sub_1000B4CAC;
}

uint64_t (*sub_1003570B8(void *a1))()
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
  v2[4] = sub_100355C54(v2);
  return sub_1000C2700;
}

id sub_100357128(char a1, uint64_t a2)
{
  v3 = a2;
  *(*&v2[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButton] + OBJC_IVAR____TtC8AppStore14NotifyMeButton_isActive) = a1;
  sub_1004ACDC0();
  sub_1004ACEC4(v3);

  return [v2 setNeedsLayout];
}

CGFloat sub_1003571D8()
{
  v1 = *v0;
  [*v0 bounds];
  v2 = CGRectGetWidth(v4) * 0.5;
  [v1 bounds];
  CGRectGetHeight(v5);
  return v2;
}

uint64_t sub_100357234()
{
  ObjectType = swift_getObjectType();
  v1 = sub_100357838(&unk_100981200, type metadata accessor for AppEventDetailPageView, &unk_1007C8B0C);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1003572A8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_100357838(&unk_100981200, type metadata accessor for AppEventDetailPageView, &unk_1007C8B0C);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_100357334(uint64_t *a1))()
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
  sub_100357838(&unk_100981200, type metadata accessor for AppEventDetailPageView, &unk_1007C8B0C);
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_1003573F0(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 superview];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaContainerView);
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  return v6 & 1;
}

uint64_t sub_100357488(uint64_t a1, double a2, double a3)
{
  v6 = [v3 subviews];
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v9 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (([v10 isHidden] & 1) != 0 || !objc_msgSend(v11, "isUserInteractionEnabled"))
      {
      }

      else
      {
        [v17 convertPoint:v11 toCoordinateSpace:{a2, a3}];
        v13 = [v11 pointInside:a1 withEvent:?];

        if (v13)
        {
          v14 = 1;
          goto LABEL_19;
        }
      }

      ++v9;
      if (v12 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:
  v14 = 0;
LABEL_19:

  return v14;
}

uint64_t sub_100357838(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1003578C8()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_100357838(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
    v2 = [Strong superview];
    if (v2)
    {
      v3 = v2;
      v4 = *&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaContainerView];
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      v5 = v4;
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {
        v7 = swift_unknownObjectWeakLoadStrong();
        if (v7)
        {
          v8 = v7;
          [v7 removeFromSuperview];
        }

        [*&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkView] setHidden:0];
        v9 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_videoTapGestureRecognizer;
        if (*&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_videoTapGestureRecognizer])
        {
          [v5 removeGestureRecognizer:?];
          v10 = *&v1[v9];
        }

        else
        {
          v10 = 0;
        }

        *&v1[v9] = 0;

        v11 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaReplicationView;
        v12 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaReplicationView];
        if (v12)
        {
          [v12 removeFromSuperview];
          v13 = *&v1[v11];
        }

        else
        {
          v13 = 0;
        }

        *&v1[v11] = 0;

        [v1 setNeedsLayout];
      }
    }

    else
    {
    }
  }
}

id sub_100357ABC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UIButton.Configuration();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shareButtonActionBlock];
  v12 = *&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shareButtonActionBlock];
  if (!v12)
  {
    v13 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shareButton;
    v14 = *&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shareButton];
    if (v14)
    {
      [v14 removeFromSuperview];
      v15 = *&v3[v13];
    }

    else
    {
      v15 = 0;
    }

    *&v3[v13] = 0;

    [v3 setNeedsLayout];
    v12 = *v11;
  }

  v16 = v11[1];
  *v11 = a1;
  v11[1] = a2;
  sub_10000827C(a1, a2);
  result = sub_10001F63C(v12, v16);
  if (*v11)
  {
    v18 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shareButton;
    if (!*&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shareButton])
    {
      sub_100005744(0, &qword_1009811E0, UIButton_ptr);
      if (qword_10096D9C8 != -1)
      {
        swift_once();
      }

      v19 = sub_1000056A8(v6, qword_100981040);
      swift_beginAccess();
      (*(v7 + 16))(v10, v19, v6);
      v20 = UIButton.init(configuration:primaryAction:)();
      v21 = *&v3[v18];
      if (v21)
      {
        [v21 removeFromSuperview];
        v22 = *&v3[v18];
      }

      else
      {
        v22 = 0;
      }

      *&v3[v18] = v20;
      v23 = v20;

      sub_100005744(0, &qword_100970180, UIColor_ptr);
      v24 = static UIColor.primaryText.getter();
      v25 = [v24 colorWithAlphaComponent:0.7];

      [v23 setTintColor:v25];
      [v23 setHitTestInsets:{-10.0, -10.0, -10.0, -10.0}];
      [*&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_overlayContentContainerView] addSubview:v23];
      sub_100351E5C();

      [v3 setNeedsLayout];
      result = *&v3[v18];
      if (result)
      {
        return [result addTarget:v3 action:"didTapShareButton:" forControlEvents:64];
      }
    }
  }

  return result;
}

id sub_100357DEC(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_gradientBlurView;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_gradientBlurView];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v8 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaContainerView];
    if (Strong)
    {
      [v8 insertSubview:v6 aboveSubview:Strong];
    }

    else
    {
      [v8 insertSubview:v6 aboveSubview:*&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkView]];
    }
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_100357ED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_10097F520, &unk_1007BA430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100357F40(uint64_t a1)
{
  v2 = sub_10002849C(&unk_10097F520, &unk_1007BA430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100357FA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10035800C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100358070(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1003580D0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_10002849C(&unk_100981210, &qword_1007C2310);
  __chkstk_darwin(v2 - 8);
  v102 = &v95[-v3];
  v4 = type metadata accessor for DirectionalTextAlignment();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v95[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v95[-v9];
  *&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_gradientBlurView] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_contentBackgroundBlurView] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaReplicationView] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_requirementsLabel] = 0;
  v11 = &v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_closeButtonActionBlock];
  *v11 = 0;
  v11[1] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_dismissTapGestureRecognizer] = 0;
  v12 = &v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_dismissTapGestureActionBlock];
  *v12 = 0;
  v12[1] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_videoTapGestureRecognizer] = 0;
  v13 = &v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shareButtonActionBlock];
  *v13 = 0;
  v13[1] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shareButton] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupTapGestureRecognizer] = 0;
  v14 = &v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupTapGestureActionBlock];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkViewSize];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  *&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mainArtwork] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupArtwork] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkLoader] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_videoBackgroundColor] = 0;
  v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_haveFlashedScrollIndicators] = 0;
  v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_isCollapsing] = 0;
  v16 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaOverlayStyle;
  v17 = enum case for MediaOverlayStyle.matchSystem(_:);
  v18 = type metadata accessor for MediaOverlayStyle();
  (*(*(v18 - 8) + 104))(&v1[v16], v17, v18);
  v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_includeBorderInDarkMode] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_defaultPageMargin] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButtonPresenter] = 0;
  v19 = [objc_allocWithZone(UIScrollView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_cardScrollView] = v19;
  *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shadowView] = [objc_allocWithZone(type metadata accessor for ShadowView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  type metadata accessor for RoundedCornerView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_cardContentView] = v20;
  v21 = [objc_allocWithZone(UIView) init];
  *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_contentContainerView] = v21;
  v22 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaContainerView] = v22;
  *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_overlayContentContainerView] = [objc_allocWithZone(type metadata accessor for OverlayContentContainerView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkView] = v23;
  *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_formattedDateView] = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = type metadata accessor for FontUseCase();
  v103 = *(v24 - 8);
  v25 = v103 + 56;
  v26 = *(v103 + 56);
  v26(v10, 1, 1, v24);
  v27 = *(v5 + 104);
  v100 = (v5 + 104);
  v106 = v27;
  v28 = enum case for DirectionalTextAlignment.none(_:);
  v96 = enum case for DirectionalTextAlignment.none(_:);
  v97 = v4;
  (v27)(v7);
  v29 = type metadata accessor for DynamicTypeLabel();
  v30 = objc_allocWithZone(v29);
  *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_kindLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v26(v10, 1, 1, v24);
  v106(v7, v28, v4);
  v31 = objc_allocWithZone(v29);
  *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v101 = v24;
  v104 = v26;
  v105 = v25;
  v26(v10, 1, 1, v24);
  v106(v7, v96, v97);
  v32 = objc_allocWithZone(v29);
  v100 = v10;
  *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_detailLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButton] = [objc_allocWithZone(type metadata accessor for NotifyMeButton()) init];
  v33 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_separatorView] = v33;
  type metadata accessor for SmallLockupView(0);
  *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v34 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_borderView] = v34;
  v35 = sub_10035F010();
  *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_closeButton] = v35;
  v107.receiver = v1;
  v107.super_class = ObjectType;
  v36 = v35;
  v37 = objc_msgSendSuper2(&v107, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v41 = v37;
  [v41 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v41 setClipsToBounds:0];
  v42 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_cardScrollView;
  [*(v41 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_cardScrollView) setClipsToBounds:0];
  [*(v41 + v42) setContentInsetAdjustmentBehavior:2];
  [v41 addSubview:*(v41 + v42)];
  v43 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shadowView;
  v44 = qword_10096DA90;
  v45 = *(v41 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shadowView);
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Shadow();
  v47 = sub_1000056A8(v46, qword_1009CFE10);
  v48 = *(v46 - 8);
  v49 = v102;
  (*(v48 + 16))(v102, v47, v46);
  (*(v48 + 56))(v49, 0, 1, v46);
  dispatch thunk of ShadowView.shadow.setter();

  v50 = *(v41 + v43);
  dispatch thunk of ShadowView.shouldAnimateBoundsChange.setter();

  [*(v41 + v42) addSubview:*(v41 + v43)];
  v102 = v42;
  v51 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_cardContentView;
  [*(v41 + v42) addSubview:*(v41 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_cardContentView)];
  v52 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_contentContainerView;
  [*(v41 + v51) addSubview:*(v41 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_contentContainerView)];
  v53 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaContainerView;
  [*(v41 + v52) addSubview:*(v41 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaContainerView)];
  v54 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkView;
  [*(v41 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkView) setContentMode:2];
  [*(v41 + v54) setClipsToBounds:1];
  [*(v41 + v54) setAccessibilityIgnoresInvertColors:1];
  [*(v41 + v53) addSubview:*(v41 + v54)];
  v55 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_overlayContentContainerView;
  [*(v41 + v52) addSubview:*(v41 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_overlayContentContainerView)];
  v56 = *(v41 + v51);
  v106 = v36;
  [v56 addSubview:v36];
  v57 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_formattedDateView;
  v58 = *(v41 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_formattedDateView);
  LOBYTE(v51) = v58[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style];
  v58[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style] = 1;
  v59 = v58;
  sub_1002C3F30(v51);

  *(*(v41 + v57) + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_delegate + 8) = &off_1008BF008;
  swift_unknownObjectWeakAssign();
  [*(v41 + v55) addSubview:*(v41 + v57)];
  v60 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_kindLabel;
  v61 = *(v41 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_kindLabel);
  v62 = sub_100005744(0, &qword_100970180, UIColor_ptr);
  v63 = v61;
  v64 = static UIColor.primaryText.getter();
  v65 = [v64 colorWithAlphaComponent:0.7];

  [v63 setTextColor:v65];
  [*(v41 + v55) addSubview:*(v41 + v60)];
  v66 = *(v41 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_titleLabel);
  v67 = static UIColor.primaryText.getter();
  [v66 setTextColor:v67];

  v68 = *(v41 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButton);
  [v68 addTarget:v41 action:"notifyMeButtonTapped:" forControlEvents:64];

  v69 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_separatorView;
  v70 = *(v41 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_separatorView);
  ObjectType = v62;
  v71 = static UIColor.primaryText.getter();
  v72 = [v71 colorWithAlphaComponent:0.5];

  [v70 setBackgroundColor:v72];
  [*(v41 + v52) addSubview:*(v41 + v69)];
  v73 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupView;
  v74 = qword_10096DDA0;
  v75 = *(*(v41 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel);
  if (v74 != -1)
  {
    swift_once();
  }

  v76 = v101;
  v77 = sub_1000056A8(v101, qword_1009D0878);
  v78 = *(v103 + 16);
  v79 = v100;
  v78(v100, v77, v76);
  v80 = v104;
  v104(v79, 0, 1, v76);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v81 = qword_10096DDA8;
  v82 = *(*(v41 + v73) + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
  if (v81 != -1)
  {
    swift_once();
  }

  v83 = sub_1000056A8(v76, qword_1009D0890);
  v78(v79, v83, v76);
  v80(v79, 0, 1, v76);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v84 = *(*(v41 + v73) + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
  v85 = static UIColor.primaryText.getter();
  v86 = [v85 colorWithAlphaComponent:0.7];

  [v84 setTextColor:v86];
  v87 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_borderView;
  v88 = *(v41 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_borderView);
  v89 = objc_opt_self();
  v90 = v88;
  v91 = [v89 whiteColor];
  v92 = [v91 colorWithAlphaComponent:0.2];

  dispatch thunk of RoundedCornerView.borderColor.setter();
  v93 = *(v41 + v87);
  dispatch thunk of RoundedCornerView.borderWidth.setter();

  [*(v41 + v87) setUserInteractionEnabled:0];
  [*(v41 + v87) setHidden:1];
  [*&v102[v41] addSubview:*(v41 + v87)];
  sub_1003510D4();
  sub_1003517F4();
  sub_100351E5C();

  return v41;
}

void sub_100358EC0()
{
  *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_gradientBlurView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_contentBackgroundBlurView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaReplicationView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_requirementsLabel) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_closeButtonActionBlock);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_dismissTapGestureRecognizer) = 0;
  v2 = (v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_dismissTapGestureActionBlock);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_videoTapGestureRecognizer) = 0;
  v3 = (v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shareButtonActionBlock);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shareButton) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupTapGestureRecognizer) = 0;
  v4 = (v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupTapGestureActionBlock);
  *v4 = 0;
  v4[1] = 0;
  v5 = v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkViewSize;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mainArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkLoader) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_videoBackgroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_haveFlashedScrollIndicators) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_isCollapsing) = 0;
  v6 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaOverlayStyle;
  v7 = enum case for MediaOverlayStyle.matchSystem(_:);
  v8 = type metadata accessor for MediaOverlayStyle();
  (*(*(v8 - 8) + 104))(v0 + v6, v7, v8);
  *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_includeBorderInDarkMode) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_defaultPageMargin) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButtonPresenter) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1003590DC@<X0>(void (*a1)(uint64_t, uint64_t, __n128)@<X0>, void *a2@<X8>)
{
  v141 = a2;
  v124 = sub_10002849C(&qword_100981220, &qword_1007C8C38);
  __chkstk_darwin(v124);
  v125 = &v119 - v3;
  v4 = sub_10002849C(&qword_100981228, &unk_1007C8C40);
  __chkstk_darwin(v4 - 8);
  v120 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v128 = &v119 - v7;
  __chkstk_darwin(v8);
  v131 = &v119 - v9;
  v10 = type metadata accessor for ShelfBackground();
  v11 = *(v10 - 8);
  v137 = v10;
  v138 = v11;
  __chkstk_darwin(v10);
  v133 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v135 = &v119 - v14;
  v140 = sub_10002849C(&qword_100972A48, &unk_1007BF080);
  __chkstk_darwin(v140);
  v144 = &v119 - v15;
  v16 = sub_10002849C(&unk_100992460, &qword_1007B6BF0);
  __chkstk_darwin(v16 - 8);
  v130 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v121 = &v119 - v19;
  __chkstk_darwin(v20);
  v129 = &v119 - v21;
  __chkstk_darwin(v22);
  v126 = &v119 - v23;
  __chkstk_darwin(v24);
  v145 = &v119 - v25;
  v26 = sub_10002849C(&unk_10098FFB0, qword_1007B3890);
  __chkstk_darwin(v26 - 8);
  v123 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v139 = (&v119 - v29);
  __chkstk_darwin(v30);
  v32 = &v119 - v31;
  __chkstk_darwin(v33);
  v35 = &v119 - v34;
  v36 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v119 - v38;
  v40 = type metadata accessor for Shelf.ContentType();
  v41 = *(v40 - 8);
  v146 = v40;
  v147 = v41;
  __chkstk_darwin(v40);
  v127 = &v119 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v45 = &v119 - v44;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v143 = v45;
  ReadOnlyLens.subscript.getter();

  v46 = *(v37 + 8);
  v132 = v39;
  v47 = v39;
  v48 = v139;
  (v46)(v47, v36);
  v49 = a1;
  v50 = v36;
  v134 = v49;
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v32, &unk_10098FFB0, qword_1007B3890);
  v142 = v35;
  sub_100031660(v35, v48, &unk_10098FFB0, qword_1007B3890);
  v51 = *(v37 + 48);
  v122 = v37 + 48;
  v52 = v51(v48, 1, v50);
  v136 = v37 + 8;
  if (v52 == 1)
  {
    sub_10002B894(v48, &unk_10098FFB0, qword_1007B3890);
    v53 = 1;
    v54 = v145;
  }

  else
  {
    swift_getKeyPath();
    v54 = v145;
    ReadOnlyLens.subscript.getter();

    (v46)(v48, v50);
    v53 = 0;
  }

  v55 = v146;
  v56 = v147;
  (*(v147 + 56))(v54, v53, 1, v146);
  v57 = *(v140 + 48);
  v58 = v144;
  (*(v56 + 16))(v144, v143, v55);
  v59 = v57;
  sub_100031660(v54, &v58[v57], &unk_100992460, &qword_1007B6BF0);
  v60 = *(v56 + 88);
  v61 = v60(v58, v55);
  if (v61 == enum case for Shelf.ContentType.editorsChoice(_:))
  {
    LODWORD(v140) = enum case for Shelf.ContentType.editorsChoice(_:);
    v139 = v51;
    v62 = v132;
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    v63 = v135;
    ReadOnlyLens.subscript.getter();

    v134 = v46;
    (v46)(v62, v50);
    v64 = v138;
    v65 = v133;
    v66 = v60;
    v67 = v137;
    (*(v138 + 104))(v133, enum case for ShelfBackground.editorsChoice(_:), v137);
    v68 = static ShelfBackground.== infix(_:_:)();
    v69 = *(v64 + 8);
    v69(v65, v67);
    v70 = v67;
    v60 = v66;
    v69(v63, v70);
    v71 = v144;
    if (v68)
    {
      v72 = v141;
      v141[3] = &type metadata for CGFloat;
      v72[4] = &protocol witness table for CGFloat;
      *v72 = 0x403C000000000000;
LABEL_7:
      sub_10002B894(v145, &unk_100992460, &qword_1007B6BF0);
      sub_10002B894(v142, &unk_10098FFB0, qword_1007B3890);
      v73 = v146;
      v74 = *(v147 + 8);
      v74(v143, v146);
LABEL_8:
      sub_10002B894(v71 + v59, &unk_100992460, &qword_1007B6BF0);
      return (v74)(v71, v73);
    }

LABEL_17:
    v83 = v146;
    v82 = v147;
    if ((*(v147 + 48))(v71 + v59, 1, v146) != 1)
    {
      v84 = v130;
      sub_100031660(v71 + v59, v130, &unk_100992460, &qword_1007B6BF0);
      v85 = v60(v84, v83);
      if (v85 == v140)
      {
        v86 = v123;
        sub_100031660(v142, v123, &unk_10098FFB0, qword_1007B3890);
        if (v139(v86, 1, v50) == 1)
        {
          sub_10002B894(v86, &unk_10098FFB0, qword_1007B3890);
          v87 = 1;
          v88 = v137;
          v89 = v131;
        }

        else
        {
          swift_getKeyPath();
          v89 = v131;
          ReadOnlyLens.subscript.getter();

          (v134)(v86, v50);
          v87 = 0;
          v88 = v137;
        }

        v97 = v128;
        v98 = v138;
        v99 = *(v138 + 56);
        v99(v89, v87, 1, v88);
        (*(v98 + 104))(v97, enum case for ShelfBackground.editorsChoice(_:), v88);
        v99(v97, 0, 1, v88);
        v100 = *(v124 + 48);
        v101 = v89;
        v102 = v125;
        sub_100031660(v101, v125, &qword_100981228, &unk_1007C8C40);
        sub_100031660(v97, v102 + v100, &qword_100981228, &unk_1007C8C40);
        v103 = *(v98 + 48);
        if (v103(v102, 1, v88) == 1)
        {
          sub_10002B894(v97, &qword_100981228, &unk_1007C8C40);
          sub_10002B894(v131, &qword_100981228, &unk_1007C8C40);
          if (v103(v102 + v100, 1, v88) == 1)
          {
            sub_10002B894(v102, &qword_100981228, &unk_1007C8C40);
LABEL_44:
            if (qword_10096E6E0 != -1)
            {
              swift_once();
            }

            v115 = type metadata accessor for StaticDimension();
            v116 = sub_1000056A8(v115, qword_1009D24C0);
            v117 = v141;
            v141[3] = v115;
            v117[4] = &protocol witness table for StaticDimension;
            v118 = sub_1000056E0(v117);
            (*(*(v115 - 8) + 16))(v118, v116, v115);
            goto LABEL_7;
          }
        }

        else
        {
          v104 = v131;
          v105 = v120;
          sub_100031660(v102, v120, &qword_100981228, &unk_1007C8C40);
          if (v103(v102 + v100, 1, v88) != 1)
          {
            v111 = v138;
            v112 = v102 + v100;
            v113 = v135;
            (*(v138 + 32))(v135, v112, v88);
            sub_10035CE6C(&qword_100981230, &type metadata accessor for ShelfBackground, &protocol conformance descriptor for ShelfBackground);
            LODWORD(v144) = dispatch thunk of static Equatable.== infix(_:_:)();
            v114 = *(v111 + 8);
            v114(v113, v88);
            sub_10002B894(v128, &qword_100981228, &unk_1007C8C40);
            sub_10002B894(v104, &qword_100981228, &unk_1007C8C40);
            v114(v105, v88);
            sub_10002B894(v102, &qword_100981228, &unk_1007C8C40);
            v83 = v146;
            v82 = v147;
            if (v144)
            {
              goto LABEL_44;
            }

            goto LABEL_38;
          }

          sub_10002B894(v128, &qword_100981228, &unk_1007C8C40);
          sub_10002B894(v104, &qword_100981228, &unk_1007C8C40);
          (*(v138 + 8))(v105, v88);
        }

        sub_10002B894(v102, &qword_100981220, &qword_1007C8C38);
        v83 = v146;
        v82 = v147;
      }

      else
      {
        v82 = v147;
        (*(v147 + 8))(v84, v83);
      }
    }

LABEL_38:
    v106 = v141;
    v141[3] = &type metadata for Double;
    v106[4] = &protocol witness table for Double;
    *v106 = 0;
    sub_10002B894(v145, &unk_100992460, &qword_1007B6BF0);
    sub_10002B894(v142, &unk_10098FFB0, qword_1007B3890);
    (*(v82 + 8))(v143, v83);
    return sub_10002B894(v71, &qword_100972A48, &unk_1007BF080);
  }

  if (v61 == enum case for Shelf.ContentType.productMediaItem(_:))
  {
    v73 = v146;
    v76 = v147;
    v77 = *(v147 + 48);
    v71 = v144;
    if (v77(&v144[v59], 1, v146) != 1)
    {
      v78 = v126;
      sub_100031660(v71 + v59, v126, &unk_100992460, &qword_1007B6BF0);
      if (v60(v78, v73) == enum case for Shelf.ContentType.smallLockup(_:))
      {
        v79 = v141;
        v141[3] = &type metadata for Double;
        v79[4] = &protocol witness table for Double;
        *v79 = 0;
        sub_10002B894(v145, &unk_100992460, &qword_1007B6BF0);
        sub_10002B894(v142, &unk_10098FFB0, qword_1007B3890);
        v74 = *(v76 + 8);
        v74(v143, v73);
        goto LABEL_8;
      }

      (*(v76 + 8))(v78, v73);
    }

    v90 = v145;
    v91 = v129;
    sub_100031660(v145, v129, &unk_100992460, &qword_1007B6BF0);
    if (v77(v91, 1, v73) == 1)
    {
      sub_10002B894(v91, &unk_100992460, &qword_1007B6BF0);
      v81 = v73;
    }

    else
    {
      v92 = v127;
      (*(v76 + 32))(v127, v91, v73);
      v81 = v73;
      if (qword_10096E560 != -1)
      {
        swift_once();
      }

      if (sub_100295E2C(v92, qword_1009D1F68))
      {
        if (qword_10096E6C8 != -1)
        {
          swift_once();
        }

        v93 = type metadata accessor for StaticDimension();
        v94 = sub_1000056A8(v93, qword_1009D2478);
        v95 = v141;
        v141[3] = v93;
        v95[4] = &protocol witness table for StaticDimension;
        v96 = sub_1000056E0(v95);
        (*(*(v93 - 8) + 16))(v96, v94, v93);
        v74 = *(v76 + 8);
        v73 = v146;
        v74(v127, v146);
        sub_10002B894(v90, &unk_100992460, &qword_1007B6BF0);
        sub_10002B894(v142, &unk_10098FFB0, qword_1007B3890);
        v74(v143, v73);
        goto LABEL_8;
      }

      (*(v76 + 8))(v92, v73);
    }
  }

  else
  {
    LODWORD(v140) = enum case for Shelf.ContentType.editorsChoice(_:);
    v139 = v51;
    v134 = v46;
    v71 = v144;
    if (v61 != enum case for Shelf.ContentType.productPageLink(_:) || (*(v147 + 48))(&v144[v57], 1, v146) == 1)
    {
      goto LABEL_17;
    }

    v80 = v121;
    sub_100031660(v71 + v57, v121, &unk_100992460, &qword_1007B6BF0);
    v81 = v146;
    if (v60(v80, v146) != enum case for Shelf.ContentType.annotation(_:))
    {
      (*(v147 + 8))(v80, v81);
      goto LABEL_17;
    }
  }

  sub_10002B894(v71 + v59, &unk_100992460, &qword_1007B6BF0);
  v107 = *(v147 + 8);
  v107(v71, v81);
  if (qword_10096E6D0 != -1)
  {
    swift_once();
  }

  v108 = type metadata accessor for StaticDimension();
  sub_1000056A8(v108, qword_1009D2490);
  StaticDimension.constant.getter();
  v109 = v141;
  v141[3] = &type metadata for CGFloat;
  v109[4] = &protocol witness table for CGFloat;
  *v109 = v110;
  sub_10002B894(v145, &unk_100992460, &qword_1007B6BF0);
  sub_10002B894(v142, &unk_10098FFB0, qword_1007B3890);
  return (v107)(v143, v81);
}

uint64_t sub_10035A2E4@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v164 = a2;
  v3 = type metadata accessor for ShelfBackground();
  v156 = *(v3 - 8);
  v157 = v3;
  __chkstk_darwin(v3);
  v155 = &v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v159 = &v142 - v6;
  v7 = type metadata accessor for PageGrid();
  v150 = *(v7 - 8);
  v151 = v7;
  __chkstk_darwin(v7);
  v149 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_10002849C(&qword_100972A48, &unk_1007BF080);
  __chkstk_darwin(v163);
  v167 = &v142 - v9;
  v10 = type metadata accessor for Shelf.ContentType();
  v11 = *(v10 - 8);
  v165 = v10;
  v166 = v11;
  __chkstk_darwin(v10);
  v162 = &v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v154 = &v142 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v142 - v17;
  v19 = sub_10002849C(&unk_10098FFB0, qword_1007B3890);
  __chkstk_darwin(v19 - 8);
  v21 = &v142 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v142 - v23;
  __chkstk_darwin(v25);
  v27 = &v142 - v26;
  v28 = sub_10002849C(&unk_100992460, &qword_1007B6BF0);
  __chkstk_darwin(v28 - 8);
  v143 = &v142 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v142 = &v142 - v31;
  __chkstk_darwin(v32);
  v145 = &v142 - v33;
  __chkstk_darwin(v34);
  v148 = &v142 - v35;
  __chkstk_darwin(v36);
  v152 = &v142 - v37;
  __chkstk_darwin(v38);
  v161 = &v142 - v39;
  __chkstk_darwin(v40);
  v160 = &v142 - v41;
  __chkstk_darwin(v42);
  v158 = &v142 - v43;
  __chkstk_darwin(v44);
  v153 = &v142 - v45;
  __chkstk_darwin(v46);
  v147 = &v142 - v47;
  __chkstk_darwin(v48);
  v146 = &v142 - v49;
  __chkstk_darwin(v50);
  v144 = &v142 - v51;
  __chkstk_darwin(v52);
  v54 = &v142 - v53;
  v168 = a1;
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v24, &unk_10098FFB0, qword_1007B3890);
  sub_100094E74(v21, v27);
  if ((*(v14 + 48))(v27, 1, v13) == 1)
  {
    sub_10002B894(v27, &unk_10098FFB0, qword_1007B3890);
    v55 = 1;
  }

  else
  {
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    (*(v14 + 8))(v27, v13);
    v55 = 0;
  }

  v56 = v166;
  v57 = v54;
  v58 = v54;
  v59 = v165;
  (*(v166 + 56))(v57, v55, 1, v165);
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v60 = v162;
  ReadOnlyLens.subscript.getter();

  v61 = *(v14 + 8);
  v61(v18, v13);
  v62 = v167;
  v63 = v60;
  v64 = *(v163 + 48);
  (*(v56 + 32))(v167, v63, v59);
  v163 = v58;
  sub_100031660(v58, &v62[v64], &unk_100992460, &qword_1007B6BF0);
  v65 = *(v56 + 88);
  v66 = v65(v62, v59);
  if (v66 == enum case for Shelf.ContentType.productTopLockup(_:))
  {
    goto LABEL_5;
  }

  if (v66 == enum case for Shelf.ContentType.annotation(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) != 1)
    {
      v71 = v160;
      sub_100031660(&v62[v64], v160, &unk_100992460, &qword_1007B6BF0);
      v72 = v65(v71, v59);
      v161 = v71;
      if (v72 == enum case for Shelf.ContentType.productPageLink(_:))
      {
        if (qword_10096E6D0 != -1)
        {
          swift_once();
        }

        v73 = type metadata accessor for StaticDimension();
        sub_1000056A8(v73, qword_1009D2490);
        StaticDimension.constant.getter();
        v74 = v164;
        *(v164 + 3) = &type metadata for CGFloat;
        *(v74 + 4) = &protocol witness table for CGFloat;
        *v74 = v75;
        goto LABEL_22;
      }

      goto LABEL_84;
    }

LABEL_85:
    if (qword_10096E6E0 != -1)
    {
      swift_once();
    }

    v138 = type metadata accessor for StaticDimension();
    v139 = sub_1000056A8(v138, qword_1009D24C0);
    v140 = v164;
    *(v164 + 3) = v138;
    v140[4] = &protocol witness table for StaticDimension;
    v141 = sub_1000056E0(v140);
    (*(*(v138 - 8) + 16))(v141, v139, v138);
    sub_10002B894(v163, &unk_100992460, &qword_1007B6BF0);
    v69 = &qword_100972A48;
    v70 = &unk_1007BF080;
    v68 = v62;
    return sub_10002B894(v68, v69, v70);
  }

  if (v66 == enum case for Shelf.ContentType.titledParagraph(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v76 = v158;
    sub_100031660(&v62[v64], v158, &unk_100992460, &qword_1007B6BF0);
    v77 = v65(v76, v59);
    v161 = v76;
    if (v77 == enum case for Shelf.ContentType.productMediaItem(_:))
    {
      goto LABEL_16;
    }

LABEL_84:
    (*(v56 + 8))(v161, v59);
    goto LABEL_85;
  }

  if (v66 == enum case for Shelf.ContentType.reviewSummary(_:))
  {
    goto LABEL_21;
  }

  v87 = enum case for Shelf.ContentType.editorsChoice(_:);
  if (v66 == enum case for Shelf.ContentType.editorsChoice(_:))
  {
    v88 = v154;
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v61(v88, v13);
    v90 = v155;
    v89 = v156;
    v91 = v157;
    (*(v156 + 104))(v155, enum case for ShelfBackground.editorsChoice(_:), v157);
    v92 = v159;
    v93 = static ShelfBackground.== infix(_:_:)();
    v94 = *(v89 + 8);
    v94(v90, v91);
    v94(v92, v91);
    if ((v93 & 1) == 0)
    {
      goto LABEL_85;
    }

    v95 = v164;
    *(v164 + 3) = &type metadata for CGFloat;
    *(v95 + 4) = &protocol witness table for CGFloat;
    *v95 = 30.0;
    goto LABEL_22;
  }

  if (v66 == enum case for Shelf.ContentType.productMediaItem(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) != 1)
    {
      v96 = v153;
      sub_100031660(&v62[v64], v153, &unk_100992460, &qword_1007B6BF0);
      v97 = v65(v96, v59);
      if (v97 == enum case for Shelf.ContentType.ribbonFlow(_:) || v97 == enum case for Shelf.ContentType.productRatings(_:))
      {
        sub_10002B894(&v62[v64], &unk_100992460, &qword_1007B6BF0);
        (*(v56 + 8))(v62, v59);
        if (qword_10096E6E0 != -1)
        {
          swift_once();
        }

        v78 = type metadata accessor for StaticDimension();
        v79 = v78;
        v80 = qword_1009D24C0;
        goto LABEL_19;
      }

      (*(v56 + 8))(v96, v59);
    }

LABEL_16:
    sub_10002B894(&v62[v64], &unk_100992460, &qword_1007B6BF0);
    (*(v56 + 8))(v62, v59);
    if (qword_10096E6C8 != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for StaticDimension();
    v79 = v78;
    v80 = qword_1009D2478;
LABEL_19:
    v81 = sub_1000056A8(v78, v80);
    v82 = v164;
    *(v164 + 3) = v79;
    v82[4] = &protocol witness table for StaticDimension;
    v83 = sub_1000056E0(v82);
    (*(*(v79 - 8) + 16))(v83, v81, v79);
    v69 = &unk_100992460;
    v70 = &qword_1007B6BF0;
    v68 = v163;
    return sub_10002B894(v68, v69, v70);
  }

  if (v66 == enum case for Shelf.ContentType.productRatings(_:))
  {
LABEL_21:
    v84 = type metadata accessor for SpacerDimension();
    v85 = v164;
    *(v164 + 3) = v84;
    v85[4] = sub_10035CE6C(&qword_10097A038, &type metadata accessor for SpacerDimension, &protocol conformance descriptor for SpacerDimension);
    sub_1000056E0(v85);
    SpacerDimension.init(constant:)();
    goto LABEL_22;
  }

  v98 = enum case for Shelf.ContentType.productReview(_:);
  if (v66 == enum case for Shelf.ContentType.productReview(_:))
  {
    v99 = v66;
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v100 = v152;
    sub_100031660(&v62[v64], v152, &unk_100992460, &qword_1007B6BF0);
    v101 = v65(v100, v59);
    if (v101 == v99)
    {
      v102 = v149;
      ShelfLayoutContext.contentPageGrid.getter();
      PageGrid.interColumnSpace.getter();
      v104 = v103;
      (*(v150 + 8))(v102, v151);
      v105 = v164;
      *(v164 + 3) = &type metadata for CGFloat;
      *(v105 + 4) = &protocol witness table for CGFloat;
      *v105 = v104;
      goto LABEL_22;
    }

    if (v101 == enum case for Shelf.ContentType.productReviewAction(_:))
    {
      goto LABEL_21;
    }

    v161 = v100;
    if (v101 != enum case for Shelf.ContentType.linkableText(_:))
    {
      goto LABEL_84;
    }

    v116 = v164;
    *(v164 + 3) = &type metadata for Double;
    *(v116 + 4) = &protocol witness table for Double;
    *v116 = 0.0;
LABEL_22:
    sub_10002B894(v163, &unk_100992460, &qword_1007B6BF0);
    sub_10002B894(&v62[v64], &unk_100992460, &qword_1007B6BF0);
    return (*(v56 + 8))(v62, v59);
  }

  v106 = enum case for Shelf.ContentType.productReviewAction(_:);
  if (v66 == enum case for Shelf.ContentType.productReviewAction(_:))
  {
    v106 = v66;
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v107 = v161;
    sub_100031660(&v62[v64], v161, &unk_100992460, &qword_1007B6BF0);
    v108 = v65(v107, v59);
    if (v108 == v98)
    {
      if (qword_10096E6D0 != -1)
      {
        swift_once();
      }

      v109 = type metadata accessor for StaticDimension();
      v110 = v109;
      v111 = qword_1009D2490;
LABEL_53:
      v113 = sub_1000056A8(v109, v111);
      v114 = v164;
      *(v164 + 3) = v110;
      v114[4] = &protocol witness table for StaticDimension;
      v115 = sub_1000056E0(v114);
      (*(*(v110 - 8) + 16))(v115, v113, v110);
      goto LABEL_22;
    }

    goto LABEL_49;
  }

  if (v66 == enum case for Shelf.ContentType.linkableText(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v112 = v148;
    sub_100031660(&v62[v64], v148, &unk_100992460, &qword_1007B6BF0);
    v108 = v65(v112, v59);
    v161 = v112;
LABEL_49:
    if (v108 != v106)
    {
      goto LABEL_84;
    }

LABEL_50:
    if (qword_10096E6D8 != -1)
    {
      swift_once();
    }

    v109 = type metadata accessor for StaticDimension();
    v110 = v109;
    v111 = qword_1009D24A8;
    goto LABEL_53;
  }

  if (v66 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    goto LABEL_5;
  }

  if (v66 == enum case for Shelf.ContentType.privacyHeader(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v117 = v147;
    sub_100031660(&v62[v64], v147, &unk_100992460, &qword_1007B6BF0);
    v118 = v65(v117, v59);
    v161 = v117;
    if (v118 != enum case for Shelf.ContentType.privacyType(_:))
    {
      goto LABEL_84;
    }

    goto LABEL_50;
  }

  if (v66 == enum case for Shelf.ContentType.privacyType(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v119 = v146;
    sub_100031660(&v62[v64], v146, &unk_100992460, &qword_1007B6BF0);
    v120 = v65(v119, v59);
    v161 = v119;
    if (v120 != enum case for Shelf.ContentType.privacyFooter(_:))
    {
      goto LABEL_84;
    }

    goto LABEL_5;
  }

  if (v66 == enum case for Shelf.ContentType.appPromotion(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v121 = v145;
    sub_100031660(&v62[v64], v145, &unk_100992460, &qword_1007B6BF0);
    v122 = v65(v121, v59);
    v161 = v121;
    if (v122 != v87)
    {
      goto LABEL_84;
    }

    goto LABEL_21;
  }

  v123 = v64;
  if (v66 != enum case for Shelf.ContentType.productBadge(_:))
  {
    v130 = v66;
    v131 = enum case for Shelf.ContentType.accessibilityFeatures(_:);
    if (v66 == enum case for Shelf.ContentType.accessibilityFeatures(_:))
    {
      v56 = v166;
      v62 = v167;
      v59 = v165;
      if ((*(v166 + 48))(&v167[v64], 1, v165) == 1)
      {
        goto LABEL_85;
      }

      v132 = v143;
      sub_100031660(&v62[v64], v143, &unk_100992460, &qword_1007B6BF0);
      v133 = v65(v132, v59);
      v161 = v132;
      if (v133 != enum case for Shelf.ContentType.accessibilityParagraph(_:))
      {
        goto LABEL_84;
      }
    }

    else
    {
      v56 = v166;
      v62 = v167;
      v59 = v165;
      if (v66 != enum case for Shelf.ContentType.accessibilityParagraph(_:) || (*(v166 + 48))(&v167[v64], 1, v165) == 1)
      {
        goto LABEL_85;
      }

      v136 = v142;
      sub_100031660(&v62[v64], v142, &unk_100992460, &qword_1007B6BF0);
      v137 = v65(v136, v59);
      if (v137 != v131)
      {
        v161 = v142;
        if (v137 != v130)
        {
          goto LABEL_84;
        }
      }
    }

    sub_10002B894(&v62[v64], &unk_100992460, &qword_1007B6BF0);
    (*(v56 + 8))(v62, v59);
    v134 = type metadata accessor for SpacerDimension();
    v135 = v164;
    *(v164 + 3) = v134;
    v135[4] = sub_10035CE6C(&qword_10097A038, &type metadata accessor for SpacerDimension, &protocol conformance descriptor for SpacerDimension);
    sub_1000056E0(v135);
    SpacerDimension.init(constant:)();
    goto LABEL_6;
  }

  v56 = v166;
  v62 = v167;
  v59 = v165;
  if ((*(v166 + 48))(&v167[v64], 1, v165) == 1)
  {
LABEL_5:
    sub_10002B894(&v62[v64], &unk_100992460, &qword_1007B6BF0);
    (*(v56 + 8))(v62, v59);
    v67 = v164;
    *(v164 + 3) = &type metadata for Double;
    *(v67 + 4) = &protocol witness table for Double;
    *v67 = 0.0;
LABEL_6:
    v68 = v163;
    v69 = &unk_100992460;
    v70 = &qword_1007B6BF0;
    return sub_10002B894(v68, v69, v70);
  }

  v124 = v144;
  sub_100031660(&v62[v123], v144, &unk_100992460, &qword_1007B6BF0);
  if (v65(v124, v59) != enum case for Shelf.ContentType.smallLockup(_:))
  {
    v59 = v165;
    v56 = v166;
    (*(v166 + 8))(v144, v165);
    v62 = v167;
    v64 = v123;
    goto LABEL_5;
  }

  if (qword_10096E6D0 != -1)
  {
    swift_once();
  }

  v125 = type metadata accessor for StaticDimension();
  v126 = sub_1000056A8(v125, qword_1009D2490);
  v127 = v164;
  *(v164 + 3) = v125;
  v127[4] = &protocol witness table for StaticDimension;
  v128 = sub_1000056E0(v127);
  (*(*(v125 - 8) + 16))(v128, v126, v125);
  sub_10002B894(v163, &unk_100992460, &qword_1007B6BF0);
  v129 = v167;
  sub_10002B894(&v167[v123], &unk_100992460, &qword_1007B6BF0);
  return (*(v166 + 8))(v129, v165);
}

uint64_t sub_10035B994@<X0>(uint64_t *a1@<X8>)
{
  v148 = a1;
  v1 = type metadata accessor for ShelfBackground();
  v142 = *(v1 - 8);
  v143 = v1;
  __chkstk_darwin(v1);
  v141 = &v131 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v140 = &v131 - v4;
  v147 = sub_10002849C(&qword_100972A48, &unk_1007BF080);
  __chkstk_darwin(v147);
  v151 = &v131 - v5;
  v6 = type metadata accessor for Shelf.ContentType();
  v7 = *(v6 - 8);
  v149 = v6;
  v150 = v7;
  __chkstk_darwin(v6);
  v9 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v145 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v131 - v14;
  v16 = sub_10002849C(&unk_10098FFB0, qword_1007B3890);
  __chkstk_darwin(v16 - 8);
  v18 = &v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v131 - v20;
  __chkstk_darwin(v22);
  v24 = &v131 - v23;
  v25 = sub_10002849C(&unk_100992460, &qword_1007B6BF0);
  __chkstk_darwin(v25 - 8);
  v132 = &v131 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v131 = &v131 - v28;
  __chkstk_darwin(v29);
  v139 = &v131 - v30;
  __chkstk_darwin(v31);
  v136 = &v131 - v32;
  __chkstk_darwin(v33);
  v146 = &v131 - v34;
  __chkstk_darwin(v35);
  v137 = &v131 - v36;
  __chkstk_darwin(v37);
  v144 = &v131 - v38;
  __chkstk_darwin(v39);
  v138 = &v131 - v40;
  __chkstk_darwin(v41);
  v135 = &v131 - v42;
  __chkstk_darwin(v43);
  v134 = &v131 - v44;
  __chkstk_darwin(v45);
  v133 = &v131 - v46;
  __chkstk_darwin(v47);
  v49 = &v131 - v48;
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v21, &unk_10098FFB0, qword_1007B3890);
  sub_100094E74(v18, v24);
  if ((*(v11 + 48))(v24, 1, v10) == 1)
  {
    sub_10002B894(v24, &unk_10098FFB0, qword_1007B3890);
    v50 = 1;
  }

  else
  {
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    (*(v11 + 8))(v24, v10);
    v50 = 0;
  }

  v51 = v149;
  v52 = v150;
  (*(v150 + 56))(v49, v50, 1, v149);
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v53 = v49;
  v54 = *(v11 + 8);
  v55 = v15;
  v56 = v51;
  v54(v55, v10);
  v57 = *(v52 + 32);
  v58 = v151;
  v59 = v9;
  v60 = v52;
  v61 = *(v147 + 48);
  v57(v151, v59, v56);
  v147 = v53;
  sub_100031660(v53, &v58[v61], &unk_100992460, &qword_1007B6BF0);
  v62 = *(v60 + 88);
  v63 = v62(v58, v56);
  if (v63 == enum case for Shelf.ContentType.productTopLockup(_:))
  {
LABEL_5:
    sub_10002B894(&v58[v61], &unk_100992460, &qword_1007B6BF0);
    (*(v60 + 8))(v58, v56);
    if (qword_10096E6C8 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for StaticDimension();
    v65 = v64;
    v66 = qword_1009D2478;
LABEL_12:
    v67 = sub_1000056A8(v64, v66);
    v68 = v148;
    v148[3] = v65;
    v68[4] = &protocol witness table for StaticDimension;
    v69 = sub_1000056E0(v68);
    (*(*(v65 - 8) + 16))(v69, v67, v65);
    v70 = &unk_100992460;
    v71 = &qword_1007B6BF0;
    v72 = v147;
    return sub_10002B894(v72, v70, v71);
  }

  if (v63 == enum case for Shelf.ContentType.annotation(_:))
  {
LABEL_9:
    sub_10002B894(&v58[v61], &unk_100992460, &qword_1007B6BF0);
    (*(v60 + 8))(v58, v56);
    if (qword_10096E6D0 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for StaticDimension();
    v65 = v64;
    v66 = qword_1009D2490;
    goto LABEL_12;
  }

  if (v63 == enum case for Shelf.ContentType.titledParagraph(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) != 1)
    {
      v74 = v144;
      sub_100031660(&v58[v61], v144, &unk_100992460, &qword_1007B6BF0);
      v75 = v62(v74, v56);
      v146 = v74;
      if (v75 == enum case for Shelf.ContentType.productMediaItem(_:))
      {
        goto LABEL_5;
      }

      goto LABEL_52;
    }

LABEL_53:
    if (qword_10096E6E0 != -1)
    {
      swift_once();
    }

    v107 = type metadata accessor for StaticDimension();
    v108 = sub_1000056A8(v107, qword_1009D24C0);
    v109 = v148;
    v148[3] = v107;
    v109[4] = &protocol witness table for StaticDimension;
    v110 = sub_1000056E0(v109);
    (*(*(v107 - 8) + 16))(v110, v108, v107);
    sub_10002B894(v147, &unk_100992460, &qword_1007B6BF0);
    v70 = &qword_100972A48;
    v71 = &unk_1007BF080;
    v72 = v58;
    return sub_10002B894(v72, v70, v71);
  }

  if (v63 == enum case for Shelf.ContentType.reviewSummary(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
    {
      goto LABEL_53;
    }

    v76 = v139;
    sub_100031660(&v58[v61], v139, &unk_100992460, &qword_1007B6BF0);
    v77 = v62(v76, v56);
    v146 = v76;
    if (v77 == enum case for Shelf.ContentType.productReview(_:))
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

  if (v63 == enum case for Shelf.ContentType.editorsChoice(_:))
  {
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    v79 = v61;
    v80 = v140;
    v81 = v145;
    ReadOnlyLens.subscript.getter();

    v54(v81, v10);
    v83 = v141;
    v82 = v142;
    v84 = v143;
    (*(v142 + 104))(v141, enum case for ShelfBackground.editorsChoice(_:), v143);
    v85 = static ShelfBackground.== infix(_:_:)();
    v86 = *(v82 + 8);
    v86(v83, v84);
    v86(v80, v84);
    if ((v85 & 1) == 0)
    {
      goto LABEL_53;
    }

    v87 = v147;
    v88 = v148;
    v148[3] = &type metadata for CGFloat;
    v88[4] = &protocol witness table for CGFloat;
    *v88 = 0x403E000000000000;
    sub_10002B894(v87, &unk_100992460, &qword_1007B6BF0);
    v89 = &v58[v79];
    goto LABEL_35;
  }

  if (v63 == enum case for Shelf.ContentType.productMediaItem(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
    {
      goto LABEL_5;
    }

    v90 = v138;
    sub_100031660(&v58[v61], v138, &unk_100992460, &qword_1007B6BF0);
    if (v62(v90, v56) != enum case for Shelf.ContentType.productRatings(_:))
    {
      (*(v60 + 8))(v90, v56);
      goto LABEL_5;
    }

    if (qword_10096E6E0 != -1)
    {
      swift_once();
    }

    v91 = type metadata accessor for StaticDimension();
    v92 = v91;
    v93 = qword_1009D24C0;
    goto LABEL_31;
  }

  if (v63 == enum case for Shelf.ContentType.productRatings(_:))
  {
LABEL_33:
    v97 = type metadata accessor for SpacerDimension();
    v98 = v148;
    v148[3] = v97;
    v98[4] = sub_10035CE6C(&qword_10097A038, &type metadata accessor for SpacerDimension, &protocol conformance descriptor for SpacerDimension);
    sub_1000056E0(v98);
    SpacerDimension.init(constant:)();
    goto LABEL_34;
  }

  v99 = enum case for Shelf.ContentType.productReview(_:);
  if (v63 == enum case for Shelf.ContentType.productReview(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
    {
      goto LABEL_53;
    }

    v100 = v146;
    sub_100031660(&v58[v61], v146, &unk_100992460, &qword_1007B6BF0);
    v101 = v62(v100, v56);
    if (v101 != enum case for Shelf.ContentType.productReviewAction(_:))
    {
      if (v101 == enum case for Shelf.ContentType.linkableText(_:))
      {
LABEL_21:
        v78 = v148;
        v148[3] = &type metadata for Double;
        v78[4] = &protocol witness table for Double;
        *v78 = 0;
LABEL_34:
        sub_10002B894(v147, &unk_100992460, &qword_1007B6BF0);
        v89 = &v58[v61];
LABEL_35:
        sub_10002B894(v89, &unk_100992460, &qword_1007B6BF0);
        return (*(v60 + 8))(v58, v56);
      }

LABEL_52:
      (*(v60 + 8))(v146, v56);
      goto LABEL_53;
    }

    goto LABEL_33;
  }

  v102 = enum case for Shelf.ContentType.productReviewAction(_:);
  if (v63 == enum case for Shelf.ContentType.productReviewAction(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) != 1)
    {
      v103 = v137;
      sub_100031660(&v58[v61], v137, &unk_100992460, &qword_1007B6BF0);
      v104 = v62(v103, v56);
      v146 = v103;
      if (v104 == v99)
      {
        goto LABEL_9;
      }

      goto LABEL_52;
    }

    goto LABEL_53;
  }

  if (v63 == enum case for Shelf.ContentType.linkableText(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
    {
      goto LABEL_53;
    }

    v105 = v136;
    sub_100031660(&v58[v61], v136, &unk_100992460, &qword_1007B6BF0);
    v106 = v62(v105, v56);
    v146 = v105;
    if (v106 != v102)
    {
      goto LABEL_52;
    }

    goto LABEL_48;
  }

  if (v63 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    goto LABEL_57;
  }

  if (v63 == enum case for Shelf.ContentType.privacyHeader(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
    {
      goto LABEL_53;
    }

    v112 = v135;
    sub_100031660(&v58[v61], v135, &unk_100992460, &qword_1007B6BF0);
    v113 = v62(v112, v56);
    v146 = v112;
    if (v113 != enum case for Shelf.ContentType.privacyType(_:))
    {
      goto LABEL_52;
    }

LABEL_48:
    if (qword_10096E6D8 != -1)
    {
      swift_once();
    }

    v91 = type metadata accessor for StaticDimension();
    v92 = v91;
    v93 = qword_1009D24A8;
LABEL_31:
    v94 = sub_1000056A8(v91, v93);
    v95 = v148;
    v148[3] = v92;
    v95[4] = &protocol witness table for StaticDimension;
    v96 = sub_1000056E0(v95);
    (*(*(v92 - 8) + 16))(v96, v94, v92);
    goto LABEL_34;
  }

  if (v63 == enum case for Shelf.ContentType.privacyType(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
    {
      goto LABEL_53;
    }

    v114 = v134;
    sub_100031660(&v58[v61], v134, &unk_100992460, &qword_1007B6BF0);
    v115 = v62(v114, v56);
    v146 = v114;
    if (v115 != enum case for Shelf.ContentType.privacyFooter(_:))
    {
      goto LABEL_52;
    }

    goto LABEL_57;
  }

  if (v63 != enum case for Shelf.ContentType.productBadge(_:))
  {
    v123 = enum case for Shelf.ContentType.accessibilityFeatures(_:);
    if (v63 == enum case for Shelf.ContentType.accessibilityFeatures(_:))
    {
      if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
      {
        goto LABEL_53;
      }

      v124 = v132;
      sub_100031660(&v58[v61], v132, &unk_100992460, &qword_1007B6BF0);
      v125 = v62(v124, v56);
      v146 = v124;
      if (v125 != enum case for Shelf.ContentType.accessibilityParagraph(_:))
      {
        goto LABEL_52;
      }
    }

    else
    {
      v128 = v63;
      if (v63 != enum case for Shelf.ContentType.accessibilityParagraph(_:) || (*(v60 + 48))(&v58[v61], 1, v56) == 1)
      {
        goto LABEL_53;
      }

      v129 = v131;
      sub_100031660(&v58[v61], v131, &unk_100992460, &qword_1007B6BF0);
      v130 = v62(v129, v56);
      if (v130 != v123)
      {
        v146 = v131;
        if (v130 != v128)
        {
          goto LABEL_52;
        }
      }
    }

    sub_10002B894(&v58[v61], &unk_100992460, &qword_1007B6BF0);
    (*(v60 + 8))(v58, v56);
    v126 = type metadata accessor for SpacerDimension();
    v127 = v148;
    v148[3] = v126;
    v127[4] = sub_10035CE6C(&qword_10097A038, &type metadata accessor for SpacerDimension, &protocol conformance descriptor for SpacerDimension);
    sub_1000056E0(v127);
    SpacerDimension.init(constant:)();
LABEL_58:
    v72 = v147;
    v70 = &unk_100992460;
    v71 = &qword_1007B6BF0;
    return sub_10002B894(v72, v70, v71);
  }

  if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
  {
LABEL_57:
    sub_10002B894(&v58[v61], &unk_100992460, &qword_1007B6BF0);
    (*(v60 + 8))(v58, v56);
    v111 = v148;
    v148[3] = &type metadata for Double;
    v111[4] = &protocol witness table for Double;
    *v111 = 0;
    goto LABEL_58;
  }

  v116 = &v58[v61];
  v117 = v133;
  sub_100031660(v116, v133, &unk_100992460, &qword_1007B6BF0);
  if (v62(v117, v56) != enum case for Shelf.ContentType.smallLockup(_:))
  {
    v56 = v149;
    v60 = v150;
    (*(v150 + 8))(v133, v149);
    v58 = v151;
    goto LABEL_57;
  }

  if (qword_10096E6D0 != -1)
  {
    swift_once();
  }

  v118 = type metadata accessor for StaticDimension();
  v119 = sub_1000056A8(v118, qword_1009D2490);
  v120 = v148;
  v148[3] = v118;
  v120[4] = &protocol witness table for StaticDimension;
  v121 = sub_1000056E0(v120);
  (*(*(v118 - 8) + 16))(v121, v119, v118);
  sub_10002B894(v147, &unk_100992460, &qword_1007B6BF0);
  v122 = v151;
  sub_10002B894(&v151[v61], &unk_100992460, &qword_1007B6BF0);
  return (*(v150 + 8))(v122, v149);
}

uint64_t sub_10035CDA0@<X0>(void (*a1)(uint64_t, uint64_t, __n128)@<X0>, void *a2@<X8>)
{
  v4 = ShelfLayoutContext.traitCollection.getter();
  UITraitCollection.isSizeClassCompact.getter();

  return sub_1003590DC(a1, a2);
}

uint64_t sub_10035CDEC@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v4 = ShelfLayoutContext.traitCollection.getter();
  v5 = UITraitCollection.isSizeClassCompact.getter();

  if (v5)
  {

    return sub_10035A2E4(a1, a2);
  }

  else
  {

    return sub_10035B994(a2);
  }
}

uint64_t sub_10035CE6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_10035CF28(void *a1)
{
  v236 = a1;
  v1 = type metadata accessor for TitleHeaderLayout.AccessoryHorizontalAlignment();
  v206 = *(v1 - 8);
  v207 = v1;
  __chkstk_darwin(v1);
  v205 = &v184 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
  v202 = *(v3 - 8);
  v203 = v3;
  __chkstk_darwin(v3);
  v204 = &v184 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
  v199 = *(v5 - 8);
  v200 = v5;
  __chkstk_darwin(v5);
  v201 = &v184 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = type metadata accessor for TitleHeaderLayout();
  v208 = *(v194 - 8);
  __chkstk_darwin(v194);
  v193 = &v184 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LabelPlaceholderCompatibility();
  v196 = *(v8 - 8);
  v197 = v8;
  __chkstk_darwin(v8);
  v195 = &v184 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TitleHeaderLayout.Child();
  v11 = *(v10 - 8);
  v234 = v10;
  v235 = v11;
  __chkstk_darwin(v10);
  v188 = &v184 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v233 = &v184 - v14;
  __chkstk_darwin(v15);
  v232 = &v184 - v16;
  __chkstk_darwin(v17);
  v222 = &v184 - v18;
  v19 = type metadata accessor for CharacterSet();
  v213 = *(v19 - 8);
  __chkstk_darwin(v19);
  v212 = (&v184 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v221 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v221);
  v22 = &v184 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_10002849C(&unk_100984360, &unk_1007D54C0);
  v198 = *(v192 - 8);
  __chkstk_darwin(v192);
  v187 = &v184 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v231 = &v184 - v25;
  __chkstk_darwin(v26);
  v228 = &v184 - v27;
  __chkstk_darwin(v28);
  v191 = &v184 - v29;
  __chkstk_darwin(v30);
  v230 = &v184 - v31;
  __chkstk_darwin(v32);
  v229 = &v184 - v33;
  __chkstk_darwin(v34);
  v220 = &v184 - v35;
  __chkstk_darwin(v36);
  v223 = &v184 - v37;
  v38 = type metadata accessor for PageGrid.Direction();
  v210 = *(v38 - 8);
  v211 = v38;
  __chkstk_darwin(v38);
  v209 = &v184 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v217 = &v184 - v41;
  v42 = type metadata accessor for Uber.Style();
  v215 = *(v42 - 8);
  v216 = v42;
  __chkstk_darwin(v42);
  v214 = &v184 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  __chkstk_darwin(v44 - 8);
  v219 = sub_10002849C(&qword_1009812D8, &qword_1007C8CB8);
  v45 = *(v219 - 8);
  __chkstk_darwin(v219);
  v227 = &v184 - v46;
  v226 = type metadata accessor for PageGrid();
  v47 = *(v226 - 8);
  __chkstk_darwin(v226);
  v224 = &v184 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v51 = &v184 - v50;
  __chkstk_darwin(v52);
  v54 = &v184 - v53;
  type metadata accessor for Uber();
  sub_10035EFC8(&qword_1009812E0, &type metadata accessor for Uber, &protocol conformance descriptor for Uber);
  ItemLayoutContext.typedModel<A>(as:)();
  v55 = v266[0];
  if (!v266[0])
  {
    return 0.0;
  }

  v186 = v19;
  v189 = v45;
  v218 = v22;
  swift_getKeyPath();
  v225 = v55;
  ItemLayoutContext.subscript.getter();

  PageGrid.containerHeight.getter();
  v57 = v56;
  v60 = *(v47 + 8);
  v58 = v47 + 8;
  v59 = v60;
  v61 = v226;
  (v60)(v54, v226);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.safeAreaInsets.getter();
  v63 = v62;
  (v60)(v51, v61);
  *&v64 = v57 - v63;
  ItemLayoutContext.state.getter();
  StateLens.init(_:)();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v190 = v266[0];
  v65 = v214;
  Uber.style.getter();
  swift_getKeyPath();
  sub_1001F1774();
  v66 = v219;
  StateLens<A>.subscript.getter();

  LOBYTE(v61) = v264[0];
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.containerWidth.getter();
  v68 = v67;
  v69 = v226;
  (v60)(v54, v226);
  v70 = v190;
  sub_1001158BC(v190, v65, (v61 & 1) == 0, v68, v64, 0);
  v72 = v71;

  (*(v215 + 8))(v65, v216);
  v74 = Uber.title.getter();
  if (v73)
  {
    v75 = v69;
    v215 = v73;
    v190 = v74;
    v77 = v210;
    v76 = v211;
    v210[13](v217, enum case for PageGrid.Direction.vertical(_:), v211);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.componentMeasuringSize(spanning:)();
    (v59)(v54, v75);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.safeAreaInsets.getter();
    (v59)(v54, v75);
    v78 = v217;
    (v77)[2](v209, v217, v76);
    sub_10069F96C(0.0);
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    (v77[1])(v78, v76);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.componentMeasuringSize(spanning:)();
    v210 = v59;
    v211 = v58;
    (v59)(v54, v75);
    if (qword_10096D398 != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for TitleHeaderView.Style(0);
    v80 = sub_1000056A8(v79, qword_1009CE818);
    PageGrid.horizontalMargins.getter();
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v214 = v267[0];
    v81 = [v267[0] traitCollection];
    v82 = v234;
    v83 = (v235 + 56);
    v84 = *(v235 + 56);
    v84(v223, 1, 1, v234);
    v236 = v83;
    v185 = v84;
    v84(v220, 1, 1, v82);
    memset(v266, 0, sizeof(v266));
    v265 = 0;
    memset(v264, 0, sizeof(v264));
    v216 = v79;
    v217 = v80;
    v184 = *(v79 + 20);
    v85 = v218;
    sub_1001EFDF0(v80 + v184, v218);
    sub_1000367E8();
    v86 = v221;
    v209 = v81;
    v87 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
    *&v261 = v190;
    v88 = v215;
    *(&v261 + 1) = v215;

    v89 = v212;
    static CharacterSet.excessiveLeading.getter();
    sub_10007FED4();
    StringProtocol.rangeOfCharacter(from:options:range:)();
    v91 = v90;
    v213[1](v89, v186);

    v92 = 0uLL;
    v93 = 0;
    if (v91)
    {
      goto LABEL_10;
    }

    [v87 lineHeight];
    v95 = ceil(v94 * 1.3);
    if ((*&v95 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v95 > -9.22337204e18)
    {
      if (v95 >= 9.22337204e18)
      {
        __break(1u);
        goto LABEL_69;
      }

      v85 = v218;
      v92 = 0uLL;
LABEL_10:
      v263 = 0;
      v261 = v92;
      v262 = v92;
      v96 = type metadata accessor for Feature();
      v259 = v96;
      v260 = sub_10035EFC8(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v97 = sub_1000056E0(&v257);
      (*(*(v96 - 8) + 104))(v97, enum case for Feature.measurement_with_labelplaceholder(_:), v96);
      v98 = v87;
      isFeatureEnabled(_:)();
      sub_100007000(&v257);
      v99 = v195;
      v213 = v98;
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      (*(v196 + 8))(v99, v197);
      sub_100031660(&v261, v256, &qword_100975610, &qword_1007B5690);
      v100 = v259;
      v101 = v260;
      v102 = sub_10002A400(&v257, v259);
      v255[3] = v100;
      v255[4] = *(v101 + 8);
      v103 = sub_1000056E0(v255);
      (*(*(v100 - 8) + 16))(v103, v102, v100);
      v104 = *(v85 + *(v86 + 32));
      v253 = &type metadata for Float;
      v254 = &protocol witness table for Float;
      v252[0] = v104;
      v105 = *(v86 + 36);
      v106 = type metadata accessor for StaticDimension();
      v251[3] = v106;
      v251[4] = &protocol witness table for StaticDimension;
      v107 = sub_1000056E0(v251);
      v108 = v86;
      v109 = *(*(v106 - 8) + 16);
      v109(v107, v85 + v105, v106);
      v110 = *(v108 + 40);
      v250[3] = v106;
      v250[4] = &protocol witness table for StaticDimension;
      v111 = sub_1000056E0(v250);
      v109(v111, v85 + v110, v106);
      sub_100031660(v266, &v244, &unk_10097E890, qword_1007B4270);
      v112 = *(&v245 + 1);
      if (*(&v245 + 1))
      {
        v113 = v246;
        v114 = sub_10002A400(&v244, *(&v245 + 1));
        *(&v248 + 1) = v112;
        v249 = *(v113 + 8);
        v115 = sub_1000056E0(&v247);
        (*(*(v112 - 8) + 16))(v115, v114, v112);
        sub_100007000(&v244);
      }

      else
      {
        sub_10002B894(&v244, &unk_10097E890, qword_1007B4270);
        v247 = 0u;
        v248 = 0u;
        v249 = 0;
      }

      sub_100031660(v264, v241, &unk_10097E890, qword_1007B4270);
      v116 = v242;
      v117 = v221;
      if (v242)
      {
        v118 = v243;
        v119 = sub_10002A400(v241, v242);
        *(&v245 + 1) = v116;
        v246 = *(v118 + 8);
        v120 = sub_1000056E0(&v244);
        (*(*(v116 - 8) + 16))(v120, v119, v116);
        sub_100007000(v241);
      }

      else
      {
        sub_10002B894(v241, &unk_10097E890, qword_1007B4270);
        v244 = 0u;
        v245 = 0u;
        v246 = 0;
      }

      v121 = v228;
      v122 = v218;
      sub_10002C0AC(&v218[*(v117 + 48)], v241);
      sub_10002C0AC(v122 + *(v117 + 52), &v240);
      v238 = &type metadata for Double;
      v239 = &protocol witness table for Double;
      v237 = 0x4020000000000000;
      TitleHeaderLayout.Child.init(decorationView:contentView:decorationViewMargin:firstLineSpace:bottomSpace:trailingView:shortTrailingView:trailingViewMargin:trailingFirstLineSpace:trailingBottomSpace:)();
      sub_100007000(&v257);
      sub_10002B894(&v261, &qword_100975610, &qword_1007B5690);
      v123 = v217[v216[9]];
      sub_10002849C(&qword_1009812E8, &qword_1007C9B00);
      v124 = *(v198 + 72);
      v125 = (*(v198 + 80) + 32) & ~*(v198 + 80);
      if (v123)
      {
        if (v123 == 1)
        {
          v215 = swift_allocObject();
          v126 = v215 + v125;
          sub_100031660(v223, v215 + v125, &unk_100984360, &unk_1007D54C0);
          v127 = v235 + 16;
          (*(v235 + 16))(v126 + v124, v222, v82);
          v128 = v82;
          v185(v126 + v124, 0, 1, v82);
          sub_100031660(v220, v126 + 2 * v124, &unk_100984360, &unk_1007D54C0);
          v129 = (v127 + 32);
          v232 = (v127 + 16);
          v236 = _swiftEmptyArrayStorage;
          v130 = 3;
          v229 = v126;
          do
          {
            v131 = v124;
            v132 = v230;
            sub_100031660(v126, v230, &unk_100984360, &unk_1007D54C0);
            v133 = v132;
            v134 = v231;
            sub_10035EF58(v133, v231);
            if ((*v129)(v134, 1, v128) == 1)
            {
              sub_10002B894(v134, &unk_100984360, &unk_1007D54C0);
            }

            else
            {
              v135 = v134;
              v136 = *v232;
              (*v232)(v233, v135, v128);
              v137 = v236;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v137 = sub_100033A68(0, v137[2] + 1, 1, v137);
              }

              v139 = v137[2];
              v138 = v137[3];
              if (v139 >= v138 >> 1)
              {
                v137 = sub_100033A68((v138 > 1), v139 + 1, 1, v137);
              }

              v137[2] = v139 + 1;
              v140 = (*(v235 + 80) + 32) & ~*(v235 + 80);
              v236 = v137;
              v128 = v234;
              v136(v137 + v140 + *(v235 + 72) * v139, v233);
            }

            v124 = v131;
            v126 += v131;
            --v130;
          }

          while (v130);
          swift_setDeallocating();
          swift_arrayDestroy();
          v88 = v193;
          v87 = v194;
          v82 = v128;
        }

        else
        {
          v215 = swift_allocObject();
          v153 = v215 + v125;
          sub_100031660(v223, v153, &unk_100984360, &unk_1007D54C0);
          v154 = v235;
          (*(v235 + 16))(v153 + v124, v222, v82);
          v185(v153 + v124, 0, 1, v82);
          v155 = v191;
          sub_100031660(v153, v191, &unk_100984360, &unk_1007D54C0);
          v156 = v187;
          sub_10035EF58(v155, v187);
          v157 = *(v154 + 48);
          v158 = (v154 + 32);
          if (v157(v156, 1, v82) == 1)
          {
            sub_10002B894(v156, &unk_100984360, &unk_1007D54C0);
            v159 = _swiftEmptyArrayStorage;
          }

          else
          {
            v160 = *v158;
            (*v158)(v188, v156, v82);
            v161 = _swiftEmptyArrayStorage;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v161 = sub_100033A68(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
            }

            v163 = *(v161 + 2);
            v162 = *(v161 + 3);
            v159 = v161;
            if (v163 >= v162 >> 1)
            {
              v159 = sub_100033A68((v162 > 1), v163 + 1, 1, v161);
            }

            *(v159 + 2) = v163 + 1;
            v164 = &v159[((*(v235 + 80) + 32) & ~*(v235 + 80)) + *(v235 + 72) * v163];
            v82 = v234;
            v160(v164, v188, v234);
            v156 = v187;
          }

          v165 = v153 + v124;
          v166 = v191;
          sub_100031660(v165, v191, &unk_100984360, &unk_1007D54C0);
          sub_10035EF58(v166, v156);
          if (v157(v156, 1, v82) == 1)
          {
            sub_10002B894(v156, &unk_100984360, &unk_1007D54C0);
          }

          else
          {
            v167 = *v158;
            v168 = v188;
            (*v158)(v188, v156, v82);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v159 = sub_100033A68(0, *(v159 + 2) + 1, 1, v159);
            }

            v170 = *(v159 + 2);
            v169 = *(v159 + 3);
            v171 = v159;
            if (v170 >= v169 >> 1)
            {
              v171 = sub_100033A68((v169 > 1), v170 + 1, 1, v159);
            }

            *(v171 + 2) = v170 + 1;
            v167(&v171[((*(v235 + 80) + 32) & ~*(v235 + 80)) + *(v235 + 72) * v170], v168, v82);
          }

          v88 = v193;
          v87 = v194;
          swift_setDeallocating();
          swift_arrayDestroy();
        }
      }

      else
      {
        v215 = swift_allocObject();
        v141 = v215 + v125;
        sub_100031660(v223, v215 + v125, &unk_100984360, &unk_1007D54C0);
        sub_100031660(v220, v141 + v124, &unk_100984360, &unk_1007D54C0);
        v142 = v235 + 16;
        (*(v235 + 16))(v141 + 2 * v124, v222, v82);
        v143 = v82;
        v185(v141 + 2 * v124, 0, 1, v82);
        v144 = (v142 + 32);
        v233 = (v142 + 16);
        v236 = _swiftEmptyArrayStorage;
        v145 = 3;
        v231 = v141;
        do
        {
          v146 = v229;
          sub_100031660(v141, v229, &unk_100984360, &unk_1007D54C0);
          sub_10035EF58(v146, v121);
          if ((*v144)(v121, 1, v143) == 1)
          {
            sub_10002B894(v121, &unk_100984360, &unk_1007D54C0);
          }

          else
          {
            v147 = *v233;
            (*v233)(v232, v121, v143);
            v148 = v236;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v148 = sub_100033A68(0, v148[2] + 1, 1, v148);
            }

            v150 = v148[2];
            v149 = v148[3];
            if (v150 >= v149 >> 1)
            {
              v148 = sub_100033A68((v149 > 1), v150 + 1, 1, v148);
            }

            v148[2] = v150 + 1;
            v151 = (*(v235 + 80) + 32) & ~*(v235 + 80);
            v236 = v148;
            v152 = v148 + v151 + *(v235 + 72) * v150;
            v143 = v234;
            v147(v152, v232);
            v121 = v228;
          }

          v141 += v124;
          --v145;
        }

        while (v145);
        swift_setDeallocating();
        swift_arrayDestroy();
        v88 = v193;
        v87 = v194;
        v82 = v143;
      }

      swift_deallocClassInstance();
      v263 = 0;
      v261 = 0u;
      v262 = 0u;
      sub_100031660(&v261, &v257, &qword_100975610, &qword_1007B5690);
      v173 = v216;
      v172 = v217;
      v174 = *&v217[v216[14]];
      v256[3] = &type metadata for CGFloat;
      v256[4] = &protocol witness table for CGFloat;
      v256[0] = v174;
      (*(v199 + 16))(v201, &v217[v216[10]], v200);
      (*(v202 + 16))(v204, &v172[v173[11]], v203);
      (*(v206 + 104))(v205, enum case for TitleHeaderLayout.AccessoryHorizontalAlignment.rightJustified(_:), v207);
      TitleHeaderLayout.init(accessoryView:accessoryMargin:accessoryVerticalAlignment:accessoryHorizontalAlignment:children:childrenHorizontalAlignment:allowsAccessibilityLayouts:)();
      CGSize.subtracting(insets:)();
      sub_10035EFC8(&unk_1009812F0, &type metadata accessor for TitleHeaderLayout, &protocol conformance descriptor for TitleHeaderLayout);
      dispatch thunk of Measurable.measurements(fitting:in:)();
      v257 = v175;
      v258 = v176;
      CGSize.add(outsets:)();
      Main = JUScreenClassGetMain();
      v89 = v208;
      if (Main != 1)
      {

        swift_unknownObjectRelease();

        v89[1](v88, v87);
        (*(v235 + 8))(v222, v82);
        sub_1001EFF9C(v218);
        sub_10002B894(v264, &unk_10097E890, qword_1007B4270);
        sub_10002B894(v266, &unk_10097E890, qword_1007B4270);
        sub_10002B894(v220, &unk_100984360, &unk_1007D54C0);
        sub_10002B894(v223, &unk_100984360, &unk_1007D54C0);
        (v210)(v224, v226);
        (*(v189 + 8))(v227, v219);
        v179 = 0.0;
        goto LABEL_63;
      }

      v91 = v218;
      v85 = v189;
      v86 = v226;
      if (qword_10096E760 == -1)
      {
LABEL_57:
        v178 = sub_1000056A8(v221, qword_1009D2688);
        v93 = v184;
        if (sub_1003FA6EC(&v217[v184], v178))
        {

          swift_unknownObjectRelease();

          v89[1](v88, v87);
          (*(v235 + 8))(v222, v82);
          sub_1001EFF9C(v91);
          sub_10002B894(v264, &unk_10097E890, qword_1007B4270);
          sub_10002B894(v266, &unk_10097E890, qword_1007B4270);
          sub_10002B894(v220, &unk_100984360, &unk_1007D54C0);
          sub_10002B894(v223, &unk_100984360, &unk_1007D54C0);
          (v210)(v224, v86);
          (*(v85 + 8))(v227, v219);
          v179 = 5.0;
LABEL_63:
          v182 = v258 - v179;
          sub_10002B894(&v261, &qword_100975610, &qword_1007B5690);
          return v72 + v182;
        }

        if (qword_10096E768 == -1)
        {
LABEL_61:
          v180 = sub_1000056A8(v221, qword_1009D26A0);
          v181 = sub_1003FA6EC(&v217[v93], v180);

          swift_unknownObjectRelease();

          v89[1](v88, v87);
          (*(v235 + 8))(v222, v82);
          sub_1001EFF9C(v91);
          sub_10002B894(v264, &unk_10097E890, qword_1007B4270);
          sub_10002B894(v266, &unk_10097E890, qword_1007B4270);
          sub_10002B894(v220, &unk_100984360, &unk_1007D54C0);
          sub_10002B894(v223, &unk_100984360, &unk_1007D54C0);
          (v210)(v224, v86);
          (*(v85 + 8))(v227, v219);
          v179 = 0.0;
          if (v181)
          {
            v179 = 5.0;
          }

          goto LABEL_63;
        }

LABEL_69:
        swift_once();
        goto LABEL_61;
      }

LABEL_67:
      swift_once();
      goto LABEL_57;
    }

    __break(1u);
    goto LABEL_67;
  }

  (*(v189 + 8))(v227, v66);

  return v72;
}

uint64_t sub_10035EF58(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100984360, &unk_1007D54C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10035EFC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10035F010()
{
  v0 = type metadata accessor for SystemImage();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_10097CC90, &unk_1007BB2A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  v10 = [objc_opt_self() buttonWithType:7];
  static UIButton.Configuration.glass()();
  v11 = type metadata accessor for UIButton.Configuration();
  v12 = *(v11 - 8);
  (*(v12 + 56))(v9, 0, 1, v11);
  UIButton.configuration.setter();
  UIButton.configuration.getter();
  if ((*(v12 + 48))(v6, 1, v11))
  {
    sub_100146A44(v6, v9);
    UIButton.configuration.setter();
    sub_1001AF7BC(v6);
  }

  else
  {
    v13 = [objc_opt_self() configurationWithWeight:5];
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    UIButton.configuration.setter();
  }

  v14 = v10;
  [v14 setMinimumContentSizeCategory:UIContentSizeCategoryLarge];
  [v14 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraLarge];
  v15 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
  [v14 addInteraction:v15];

  [v14 setShowsLargeContentViewer:1];
  [v14 setScalesLargeContentImage:1];
  (*(v1 + 104))(v3, enum case for SystemImage.xmark(_:), v0);
  v16 = static SystemImage.load(_:with:)();
  (*(v1 + 8))(v3, v0);
  [v14 setLargeContentImage:v16];

  v17._object = 0x800000010080E740;
  v17._countAndFlagsBits = 0xD00000000000001DLL;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  localizedString(_:comment:)(v17, v18);
  v19 = String._bridgeToObjectiveC()();

  [v14 setLargeContentTitle:v19];

  return v14;
}

uint64_t sub_10035F3AC(char a1)
{
  v2 = sub_10002849C(&qword_100970EE0, &unk_1007DF4C0);
  __chkstk_darwin(v2 - 8);
  v58 = &v45 - v3;
  v56 = type metadata accessor for PageGrid.HorizontalMargins();
  v4 = *(v56 - 8);
  __chkstk_darwin(v56);
  v6 = (&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10002849C(&qword_100970EE8, &qword_1007CF5F0);
  __chkstk_darwin(v7 - 8);
  v52 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49.i64[0] = &v45 - v10;
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  __chkstk_darwin(v14);
  v61 = &v45 - v15;
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  __chkstk_darwin(v19);
  sub_10002849C(&qword_100970EF0, qword_1007DF4D0);
  v20 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v57 = *(v20 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v50 = v22;
  *(v22 + 16) = xmmword_1007B23A0;
  v54 = v22 + v21;
  if (a1)
  {
    v23 = 1.5;
  }

  else
  {
    v23 = 2.0;
  }

  v63 = *&v23;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v62 = 0x4030000000000000;
  v63 = 0x4020000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v63 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #16.0 }

  *v6 = _Q0;
  v60 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v29 = *(v4 + 104);
  v59 = v4 + 104;
  v55 = v29;
  v30 = v56;
  (v29)(v6);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v63) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0;
  v45 = v13;
  PageGrid.DirectionalValue.init(_:)();
  v53 = v18;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v63 = *&v23;
  PageGrid.DirectionalValue.init(_:)();
  v62 = 0x4034000000000000;
  v63 = 0x4024000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v63 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #20.0 }

  *v6 = _Q0;
  v33 = v60;
  v34 = v55;
  v55(v6, v60, v30);
  LOBYTE(v63) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v35 = v57;
  top = UIEdgeInsetsZero.top;
  v48 = left;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v46 = 2 * v35;
  v63 = 0x4008000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = vdupq_n_s64(0x4041000000000000uLL);
  v51 = v6;
  *v6 = v49;
  v36 = v56;
  v34(v6, v33, v56);
  LOBYTE(v63) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v37 = v46;
  v38 = v51;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v39 = v57;
  v46 = v37 + v57;
  v63 = 0x4010000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  *v38 = v49;
  v40 = v36;
  v41 = v55;
  v55(v38, v60, v40);
  static UIEdgeInsets.horizontal(left:right:)();
  LOBYTE(v63) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v42 = v51;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v46 = 4 * v39;
  v63 = 0x4014000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = vdupq_n_s64(0x404A000000000000uLL);
  *v42 = v49;
  v43 = v56;
  v41(v42, v60, v56);
  LOBYTE(v63) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v63 = 0x4018000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  *v42 = v49;
  v55(v42, v60, v43);
  LOBYTE(v63) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  return v50;
}

uint64_t sub_10035FDE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *, uint64_t, uint64_t)@<X2>, void (*a4)(void, void, void)@<X8>)
{
  v56 = a3;
  v49 = a2;
  v48 = type metadata accessor for PrivacyTypeLayout.Metrics.HorizontalAlignment();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v46 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PrivacyTypeStyle();
  v50 = *(v7 - 8);
  v51 = v7;
  __chkstk_darwin(v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FloatingPointRoundingRule();
  v54 = *(v10 - 8);
  v55 = v10;
  __chkstk_darwin(v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FontSource();
  v52 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = (&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for StaticDimension();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096D9E8 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for PrivacyTypeLayout.Metrics();
  v21 = sub_1000056A8(v20, qword_1009CFBF8);
  v22 = *(*(v20 - 8) + 16);
  v53 = a4;
  v22(a4, v21, v20);
  if (!a1)
  {
    goto LABEL_14;
  }

  if (dispatch thunk of Artwork.isLocalImage.getter())
  {
    if (qword_10096D9D8 != -1)
    {
      swift_once();
    }

    v23 = qword_100981308;
    if (dispatch thunk of Artwork.isSystemImage.getter())
    {
      v24 = static SystemImage.load(artwork:with:includePrivateImages:)();
      if (!v24)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if ((dispatch thunk of Artwork.isBundleImage.getter() & 1) == 0)
      {
        goto LABEL_13;
      }

      v24 = sub_100330100(a1, v23);
      if (!v24)
      {
        goto LABEL_13;
      }
    }

    [v24 size];
    v25 = v53;
    PrivacyTypeLayout.Metrics.iconSize.setter();
    UIImage.baselineOffsetFromBottom.getter();
    PrivacyTypeLayout.Metrics.iconBaseline.setter();
    v26 = v25;

    v27 = v52;
    goto LABEL_17;
  }

LABEL_13:

LABEL_14:
  if (qword_10096E080 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for FontUseCase();
  v29 = sub_1000056A8(v28, qword_1009D1100);
  (*(*(v28 - 8) + 16))(v15, v29, v28);
  v27 = v52;
  v52[13](v15, enum case for FontSource.useCase(_:), v13);
  v61 = v13;
  v62 = &protocol witness table for FontSource;
  v30 = sub_1000056E0(v60);
  (v27)[2](v30, v15, v13);
  StaticDimension.init(_:scaledLike:)();
  (v27[1])(v15, v13);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v54[1](v12, v55);
  v26 = v53;
  PrivacyTypeLayout.Metrics.iconSize.setter();
  (*(v17 + 8))(v19, v16);
LABEL_17:
  v31 = v50;
  v32 = v51;
  (*(v50 + 16))(v9, v49, v51);
  v33 = (*(v31 + 88))(v9, v32);
  if (v33 == enum case for PrivacyTypeStyle.productPage(_:))
  {
    return sub_1003637BC(v26, v56);
  }

  if (v33 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v33 == enum case for PrivacyTypeStyle.detailPage(_:))
  {
    v61 = &type metadata for Double;
    v62 = &protocol witness table for Double;
    v60[0] = 0;
    PrivacyTypeLayout.Metrics.compactBottomMargin.setter();
    if (qword_10096E6B8 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v16, qword_1009D2448);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v36 = v35;
    v54[1](v12, v55);
    v61 = &type metadata for CGFloat;
    v62 = &protocol witness table for CGFloat;
    v60[0] = v36;
    PrivacyTypeLayout.Metrics.regularBottomMargin.setter();
    (*(v47 + 104))(v46, enum case for PrivacyTypeLayout.Metrics.HorizontalAlignment.leading(_:), v48);
    PrivacyTypeLayout.Metrics.horizontalAlignment.setter();
    if (qword_10096D9D0 != -1)
    {
      swift_once();
    }

    v37 = qword_100981300;
    *v15 = qword_100981300;
    v56 = v27[13];
    (v56)(v15, enum case for FontSource.textStyle(_:), v13);
    v61 = v16;
    v62 = &protocol witness table for StaticDimension;
    sub_1000056E0(v60);
    v58 = v13;
    v59 = &protocol witness table for FontSource;
    v38 = sub_1000056E0(v57);
    v55 = v27[2];
    v55(v38, v15, v13);
    v39 = v37;
    StaticDimension.init(_:scaledLike:)();
    v54 = v27[1];
    (v54)(v15, v13);
    PrivacyTypeLayout.Metrics.iconTopSpace.setter();
    if (qword_10096E090 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for FontUseCase();
    v41 = sub_1000056A8(v40, qword_1009D1130);
    v53 = *(*(v40 - 8) + 16);
    v53(v15, v41, v40);
    v42 = enum case for FontSource.useCase(_:);
    (v56)(v15, enum case for FontSource.useCase(_:), v13);
    v61 = v16;
    v62 = &protocol witness table for StaticDimension;
    sub_1000056E0(v60);
    v52 = v16;
    v58 = v13;
    v59 = &protocol witness table for FontSource;
    v43 = sub_1000056E0(v57);
    v55(v43, v15, v13);
    StaticDimension.init(_:scaledLike:)();
    (v54)(v15, v13);
    PrivacyTypeLayout.Metrics.titleTopSpace.setter();
    if (qword_10096E098 != -1)
    {
      swift_once();
    }

    v44 = sub_1000056A8(v40, qword_1009D1148);
    v53(v15, v44, v40);
    (v56)(v15, v42, v13);
    v61 = v52;
    v62 = &protocol witness table for StaticDimension;
    sub_1000056E0(v60);
    v58 = v13;
    v59 = &protocol witness table for FontSource;
    v45 = sub_1000056E0(v57);
    v55(v45, v15, v13);
    StaticDimension.init(_:scaledLike:)();
    (v54)(v15, v13);
    return PrivacyTypeLayout.Metrics.detailTopSpace.setter();
  }

  else
  {
    sub_1003637BC(v26, v56);
    return (*(v31 + 8))(v9, v32);
  }
}

void sub_100360884()
{
  if (qword_10096D9D0 != -1)
  {
    swift_once();
  }

  v0 = qword_100981300;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithTextStyle:v2];

  qword_100981308 = v3;
}

UIColor sub_10036091C()
{
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v0 = objc_opt_self();
  result.super.isa = UIColor.init(light:dark:)([v0 systemBackgroundColor], objc_msgSend(v0, "secondarySystemBackgroundColor")).super.isa;
  qword_100981310 = result.super.isa;
  return result;
}

uint64_t sub_1003609B0()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for PrivacyTypeLayout.Metrics.HorizontalAlignment();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PrivacyTypeLayout.Metrics();
  sub_100005644(v8, qword_1009CFBF8);
  v33 = sub_1000056A8(v8, qword_1009CFBF8);
  v9 = *(v5 + 104);
  v34 = v7;
  v9(v7, enum case for PrivacyTypeLayout.Metrics.HorizontalAlignment.center(_:), v4);
  if (qword_10096D9D0 != -1)
  {
    swift_once();
  }

  v10 = qword_100981300;
  *v3 = qword_100981300;
  v11 = v1[13];
  v32 = enum case for FontSource.textStyle(_:);
  v11(v3);
  v38 = type metadata accessor for StaticDimension();
  v67[3] = v38;
  v67[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v67);
  v65 = v0;
  v66 = &protocol witness table for FontSource;
  v12 = sub_1000056E0(v64);
  v13 = v1 + 2;
  v37 = v1[2];
  v37(v12, v3, v0);
  v14 = v10;
  StaticDimension.init(_:scaledLike:)();
  v15 = v1[1];
  v35 = v1 + 1;
  v36 = v15;
  v15(v3, v0);
  if (qword_10096E088 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for FontUseCase();
  v17 = sub_1000056A8(v16, qword_1009D1118);
  v18 = *(*(v16 - 8) + 16);
  v18(v3, v17, v16);
  v19 = enum case for FontSource.useCase(_:);
  (v11)(v3, enum case for FontSource.useCase(_:), v0);
  v65 = v38;
  v66 = &protocol witness table for StaticDimension;
  sub_1000056E0(v64);
  v31 = v11;
  v62 = v0;
  v63 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(v61);
  v37(v20, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v36(v3, v0);
  if (qword_10096E098 != -1)
  {
    swift_once();
  }

  v21 = sub_1000056A8(v16, qword_1009D1148);
  v18(v3, v21, v16);
  v22 = v31;
  (v31)(v3, v19, v0);
  v23 = v38;
  v62 = v38;
  v63 = &protocol witness table for StaticDimension;
  sub_1000056E0(v61);
  *(&v59 + 1) = v0;
  v60 = &protocol witness table for FontSource;
  v24 = sub_1000056E0(&v58);
  v25 = v37;
  v37(v24, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v30 = v13;
  v26 = v36;
  v36(v3, v0);
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  *v3 = UIFontTextStyleBody;
  (v22)(v3, v32, v0);
  v57[3] = v23;
  v57[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v0;
  v56 = &protocol witness table for FontSource;
  v27 = sub_1000056E0(v54);
  v25(v27, v3, v0);
  v28 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  v26(v3, v0);
  v55 = &type metadata for Double;
  v56 = &protocol witness table for Double;
  v53 = &protocol witness table for Double;
  v54[0] = 0x402A000000000000;
  v52 = &type metadata for Double;
  v50 = &protocol witness table for Double;
  v51 = 0x4034000000000000;
  v49 = &type metadata for Double;
  v47 = &protocol witness table for Double;
  v48 = 0x4034000000000000;
  v46 = &type metadata for Double;
  v44 = &protocol witness table for Double;
  v45 = 0x4034000000000000;
  v43 = &type metadata for Double;
  v41 = &protocol witness table for Double;
  v42 = 0x4024000000000000;
  v40 = &type metadata for Double;
  v39 = 0x403E000000000000;
  return PrivacyTypeLayout.Metrics.init(horizontalAlignment:iconTopSpace:iconSize:iconBaseline:titleTopSpace:detailTopSpace:maxTextWidth:minimumCategoriesColumnWidth:categoriesTopSpace:categoriesHorizontalPadding:categoriesBottomSpace:horizontalMargin:compactBottomMargin:regularBottomMargin:)();
}

id sub_100360F94()
{
  v1 = v0;
  v24 = type metadata accessor for DirectionalTextAlignment();
  v2 = *(v24 - 8);
  __chkstk_darwin(v24);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for PrivacyTypeStyle();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = &v22[-v11];
  v13 = [v0 traitCollection];
  v14 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if ((v14 & 1) == 0)
  {
    v15 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_style;
    swift_beginAccess();
    (*(v6 + 16))(v12, &v1[v15], v5);
    (*(v6 + 104))(v8, enum case for PrivacyTypeStyle.detailPage(_:), v5);
    sub_100364070();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v27 == v25 && v28 == v26)
    {
      v16 = *(v6 + 8);
      v16(v8, v5);
      v16(v12, v5);
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v17 = *(v6 + 8);
      v17(v8, v5);
      v17(v12, v5);

      if ((v23 & 1) == 0)
      {
        [*&v1[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_titleLabel] setTextAlignment:1];
        [*&v1[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_detailLabel] setTextAlignment:1];
        return [v1 setNeedsLayout];
      }
    }
  }

  v18 = enum case for DirectionalTextAlignment.leading(_:);
  v19 = *(v2 + 104);
  v20 = v24;
  v19(v4, enum case for DirectionalTextAlignment.leading(_:), v24);
  dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();
  v19(v4, v18, v20);
  dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();
  return [v1 setNeedsLayout];
}

id sub_10036135C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CornerStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_100981210, &qword_1007C2310);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v20 - v10;
  if (a1)
  {
    [a1 removeFromSuperview];
  }

  v12 = *&v2[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_shadowView];
  if (v12)
  {
    v13 = qword_10096DA68;
    v14 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Shadow();
    v16 = sub_1000056A8(v15, qword_1009CFD98);
    v17 = *(v15 - 8);
    (*(v17 + 16))(v11, v16, v15);
    (*(v17 + 56))(v11, 0, 1, v15);
    dispatch thunk of ShadowView.shadow.setter();
    (*(v5 + 104))(v7, enum case for CornerStyle.continuous(_:), v4);
    dispatch thunk of ShadowView.setCorner(radius:style:)();
    (*(v5 + 8))(v7, v4);
    v18 = [v2 contentView];
    [v18 insertSubview:v14 atIndex:0];
  }

  return [v2 setNeedsLayout];
}

id sub_1003615DC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CornerStyle();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    [a1 removeFromSuperview];
  }

  v9 = *&v2[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_roundedCornerView];
  if (v9)
  {
    v10 = qword_10096D9E0;
    v11 = v9;
    if (v10 != -1)
    {
      swift_once();
    }

    [v11 setBackgroundColor:qword_100981310];
    (*(v5 + 104))(v8, enum case for CornerStyle.continuous(_:), v4);
    dispatch thunk of RoundedCornerView.setCorner(radius:style:)();
    (*(v5 + 8))(v8, v4);
    v12 = *&v2[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_shadowView];
    if (v12)
    {
      v13 = v12;
      v14 = [v2 contentView];
      [v14 insertSubview:v11 aboveSubview:v13];
    }

    else
    {
      v14 = [v2 contentView];
      [v14 insertSubview:v11 atIndex:0];
    }
  }

  return [v2 setNeedsLayout];
}

void sub_1003617FC()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_categories];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_12:
    [v0 setNeedsLayout];
    return;
  }

  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (!v2)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_categoryViews;
    v8 = v1 & 0xC000000000000001;
    v9 = *&v0[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_contentContainerView];

    v4 = 0;
    do
    {
      if (v8)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      swift_beginAccess();
      sub_10002849C(&qword_1009813A0, &unk_1007C8DD0);
      ReusePool.dequeue(or:)();
      swift_endAccess();
      *&v10[OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_category] = v5;
      swift_retain_n();

      sub_100378DCC(v6);

      [v9 addSubview:v10];
      swift_beginAccess();
      v7 = v10;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v0[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v0[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v4;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
    }

    while (v2 != v4);

    goto LABEL_12;
  }

  __break(1u);
}

id sub_100361A2C@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for PrivacyCategoryView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *a1 = result;
  return result;
}

id sub_100361A78()
{
  v1 = v0;
  v2 = type metadata accessor for Separator.Position();
  v50 = *(v2 - 8);
  v51 = v2;
  __chkstk_darwin(v2);
  v52 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v4 - 8);
  v57 = &v50 - v5;
  v6 = sub_10002849C(&unk_100970E10, &qword_1007B46A0);
  __chkstk_darwin(v6 - 8);
  v53 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v55 = &v50 - v9;
  v10 = type metadata accessor for PrivacyTypeStyle();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v56 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v50 - v14;
  v16 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_style;
  swift_beginAccess();
  v17 = *(v11 + 16);
  v17(v15, &v1[v16], v10);
  v54 = v11;
  v18 = *(v11 + 88);
  v19 = v18(v15, v10);
  v20 = enum case for PrivacyTypeStyle.productPage(_:);
  if (v19 == enum case for PrivacyTypeStyle.productPage(_:))
  {
    sub_100363CCC(v1);
    v21 = v1;
  }

  else if (v19 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v19 == enum case for PrivacyTypeStyle.detailPage(_:))
  {
    v21 = v1;
    sub_100362294(v1);
  }

  else
  {
    sub_100363CCC(v1);
    v23 = v15;
    v21 = v1;
    (*(v54 + 8))(v23, v10);
  }

  v24 = v56;
  v17(v56, &v21[v16], v10);
  v25 = v18(v24, v10);
  if (v25 == v20)
  {
    v26 = type metadata accessor for Separator();
    v27 = v55;
    (*(*(v26 - 8) + 56))(v55, 1, 1, v26);
    v28 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_separator;
    swift_beginAccess();
    sub_10005A354(v27, &v21[v28]);
    swift_endAccess();
    sub_100362358();
    sub_10002B894(v27, &unk_100970E10, &qword_1007B46A0);
    if (qword_10096E088 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for FontUseCase();
    v30 = v29;
    v31 = qword_1009D1118;
LABEL_23:
    v46 = sub_1000056A8(v29, v31);
    v47 = *(v30 - 8);
    v48 = v57;
    (*(v47 + 16))(v57, v46, v30);
    (*(v47 + 56))(v48, 0, 1, v30);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
    goto LABEL_24;
  }

  if (v25 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v25 == enum case for PrivacyTypeStyle.detailPage(_:))
  {
    v39 = v21;
    v40 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_separator;
    swift_beginAccess();
    v41 = v53;
    sub_10005A3C4(&v39[v40], v53);
    v42 = type metadata accessor for Separator();
    v43 = *(v42 - 8);
    v44 = (*(v43 + 48))(v41, 1, v42);
    sub_10002B894(v41, &unk_100970E10, &qword_1007B46A0);
    if (v44 == 1)
    {
      (*(v50 + 104))(v52, enum case for Separator.Position.top(_:), v51);
      v58[3] = type metadata accessor for ZeroDimension();
      v58[4] = &protocol witness table for ZeroDimension;
      sub_1000056E0(v58);
      static ZeroDimension.zero.getter();
      v45 = v55;
      Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
      (*(v43 + 56))(v45, 0, 1, v42);
      swift_beginAccess();
      sub_10005A354(v45, &v39[v40]);
      swift_endAccess();
      sub_100362358();
      sub_10002B894(v45, &unk_100970E10, &qword_1007B46A0);
    }

    v21 = v39;
    if (qword_10096E090 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for FontUseCase();
    v30 = v29;
    v31 = qword_1009D1130;
    goto LABEL_23;
  }

  v32 = type metadata accessor for Separator();
  v33 = v55;
  (*(*(v32 - 8) + 56))(v55, 1, 1, v32);
  v34 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_separator;
  swift_beginAccess();
  sub_10005A354(v33, &v21[v34]);
  swift_endAccess();
  sub_100362358();
  sub_10002B894(v33, &unk_100970E10, &qword_1007B46A0);
  if (qword_10096E088 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for FontUseCase();
  v36 = sub_1000056A8(v35, qword_1009D1118);
  v37 = *(v35 - 8);
  v38 = v57;
  (*(v37 + 16))(v57, v36, v35);
  (*(v37 + 56))(v38, 0, 1, v35);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  (*(v54 + 8))(v24, v10);
LABEL_24:
  sub_100360F94();
  return [v21 setNeedsLayout];
}

id sub_100362294(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_shadowView);
  *(a1 + OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_shadowView) = 0;
  sub_10036135C(v2);

  v3 = *(a1 + OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_roundedCornerView);
  if (v3)
  {
    [v3 setHidden:1];
  }

  v4 = *(a1 + OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_contentContainerView);
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v5 = static UIColor.defaultBackground.getter();
  [v4 setBackgroundColor:v5];

  return [v4 _setContinuousCornerRadius:0.0];
}

id sub_100362358()
{
  v1 = sub_10002849C(&unk_100970E10, &qword_1007B46A0);
  __chkstk_darwin(v1 - 8);
  v3 = &v28 - v2;
  v4 = type metadata accessor for Separator();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  v11 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_separator;
  swift_beginAccess();
  sub_10005A3C4(&v0[v11], v3);
  v12 = &StringUserDefaultsDebugSetting;
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10002B894(v3, &unk_100970E10, &qword_1007B46A0);
    v13 = *&v0[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_separatorView];
    if (v13)
    {
      [v13 setHidden:1];
    }
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    v14 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_separatorView;
    v15 = *&v0[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_separatorView];
    if (v15)
    {
      (*(v5 + 16))(v7, v10, v4);
      v16 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
      swift_beginAccess();
      v17 = *(v5 + 24);
      v18 = v15;
      v17(&v15[v16], v7, v4);
      swift_endAccess();
      v19 = v18;
      v12 = &StringUserDefaultsDebugSetting;
      [v19 setNeedsLayout];
      v20 = *(v5 + 8);
      v20(v7, v4);
      [v19 setHidden:0];

      v20(v10, v4);
    }

    else
    {
      (*(v5 + 16))(v7, v10, v4);
      v21 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v22 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
      swift_beginAccess();
      v29 = *(v5 + 40);
      v23 = v21;
      v29(&v21[v22], v7, v4);
      swift_endAccess();

      v24 = *&v0[v14];
      if (v24)
      {
        [v24 removeFromSuperview];
        v25 = *&v0[v14];
      }

      else
      {
        v25 = 0;
      }

      *&v0[v14] = v23;
      v26 = v23;

      [*&v0[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_contentContainerView] addSubview:v26];
      v12 = &StringUserDefaultsDebugSetting;
      [v0 setNeedsLayout];

      (*(v5 + 8))(v10, v4);
    }
  }

  return [v0 v12[41].base_meths];
}

uint64_t sub_100362738()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LayoutRect();
  v57 = *(v3 - 8);
  v58 = v3;
  __chkstk_darwin(v3);
  v56 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PrivacyTypeStyle();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PrivacyTypeLayout.Metrics();
  __chkstk_darwin(v9 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for PrivacyTypeLayout();
  v53 = *(v55 - 8);
  *&v12 = __chkstk_darwin(v55).n128_u64[0];
  v51 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86.receiver = v1;
  v86.super_class = ObjectType;
  objc_msgSendSuper2(&v86, "layoutSubviews", v12);
  v14 = [v1 contentView];
  v15 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
  LayoutMarginsAware<>.layoutFrame.getter();

  v16 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_style;
  swift_beginAccess();
  v17 = *(v6 + 16);
  v49 = v6 + 16;
  v50 = v16;
  v48 = v17;
  v17(v8, &v1[v16], v5);

  v52 = v11;
  sub_10035FDE8(v18, v8, v1, v11);

  v19 = *(v6 + 8);
  v54 = v5;
  v19(v8, v5);
  v20 = *&v1[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_shadowView];
  v47 = v20;
  if (v20)
  {
    v21 = type metadata accessor for ShadowView();
    v22 = &protocol witness table for UIView;
    v23 = v20;
  }

  else
  {
    v23 = 0;
    v21 = 0;
    v22 = 0;
    v82 = 0;
    v83 = 0;
  }

  v81 = v23;
  v84 = v21;
  v85 = v22;
  v24 = *&v1[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_roundedCornerView];
  if (v24)
  {
    v25 = type metadata accessor for RoundedCornerView();
    v26 = &protocol witness table for UIView;
    v27 = v24;
  }

  else
  {
    v27 = 0;
    v25 = 0;
    v26 = 0;
    v77 = 0;
    v78 = 0;
  }

  v76 = v27;
  v79 = v25;
  v80 = v26;
  v28 = *&v1[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_contentContainerView];
  v74 = v15;
  v75 = &protocol witness table for UIView;
  v73 = v28;
  v29 = *&v1[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_separatorView];
  if (v29)
  {
    v30 = type metadata accessor for SeparatorView(0);
    v31 = &protocol witness table for UIView;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v69 = 0;
    v70 = 0;
  }

  v68 = v29;
  v71 = v30;
  v72 = v31;
  v32 = *&v1[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_iconView];
  v66 = type metadata accessor for ArtworkView();
  v67 = &protocol witness table for UIView;
  v65 = v32;
  v33 = *&v1[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_titleLabel];
  v63 = type metadata accessor for DynamicTypeLabel();
  v64 = &protocol witness table for UILabel;
  v34 = *&v1[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_detailLabel];
  v61 = &protocol witness table for UILabel;
  v62 = v33;
  v60 = v63;
  v59 = v34;
  v35 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_categoryViews;
  swift_beginAccess();
  v36 = *&v1[v35];
  v37 = v24;
  v38 = v28;
  v39 = v29;
  v40 = v32;
  v41 = v33;
  v42 = v34;

  v43 = v47;
  sub_1002A5F04(v36);

  v48(v8, &v1[v50], v54);
  v44 = v51;
  PrivacyTypeLayout.init(metrics:shadowView:roundedCornerView:contentContainerView:separatorView:iconView:titleLabel:detailLabel:categoryViews:style:)();
  v45 = v56;
  PrivacyTypeLayout.placeChildren(relativeTo:in:)();
  (*(v57 + 8))(v45, v58);
  return (*(v53 + 8))(v44, v55);
}

id sub_100362E98(uint64_t a1, double a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_roundedCornerView);
  if (v4)
  {
    [v4 setAlpha:a2];
  }

  result = *(a1 + OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_shadowView);
  if (result)
  {

    return [result setAlpha:a2];
  }

  return result;
}

uint64_t type metadata accessor for PrivacyTypeCollectionViewCell(uint64_t a1)
{
  result = qword_100981378;
  if (!qword_100981378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003631A0(uint64_t a1)
{
  sub_10005A300(319, &qword_100973090, &type metadata accessor for ItemLayoutContext);
  if (v1 <= 0x3F)
  {
    sub_100363348(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PrivacyTypeStyle();
      if (v3 <= 0x3F)
      {
        sub_10005A300(319, &unk_100970DF0, &type metadata accessor for Separator);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_100363348(uint64_t a1)
{
  if (!qword_100981388)
  {
    sub_10002D1A8(&qword_100981390, &qword_1007C8DB8);
    sub_1003633B8();
    v1 = type metadata accessor for ReusePool();
    if (!v2)
    {
      atomic_store(v1, &qword_100981388);
    }
  }
}

unint64_t sub_1003633B8()
{
  result = qword_100981398;
  if (!qword_100981398)
  {
    sub_10002D1A8(&qword_100981390, &qword_1007C8DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981398);
  }

  return result;
}

void sub_10036341C()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_1003640E8;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100007A08;
  v5[3] = &unk_1008BF2B8;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 animateWithDuration:v3 animations:0.5];
  _Block_release(v3);
}

void sub_100363504()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_1003640C8;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100007A08;
  v5[3] = &unk_1008BF268;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 animateWithDuration:v3 animations:0.4];
  _Block_release(v3);
}

void *sub_1003635F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_contentContainerView);
  v2 = v1;
  return v1;
}

id sub_100363620(char *a1)
{
  v2 = type metadata accessor for PrivacyTypeStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_style;
  swift_beginAccess();
  (*(v3 + 16))(v5, &a1[v6], v2);
  v7 = (*(v3 + 88))(v5, v2);
  if (v7 == enum case for PrivacyTypeStyle.productPage(_:))
  {
    return sub_100363CCC(a1);
  }

  if (v7 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v7 == enum case for PrivacyTypeStyle.detailPage(_:))
  {
    return sub_100362294(a1);
  }

  sub_100363CCC(a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1003637BC(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for FontSource();
  v31 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PrivacyTypeLayout.Metrics.HorizontalAlignment();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = &type metadata for Double;
  v37 = &protocol witness table for Double;
  v35[0] = 0x4024000000000000;
  PrivacyTypeLayout.Metrics.compactBottomMargin.setter();
  v36 = &type metadata for Double;
  v37 = &protocol witness table for Double;
  v35[0] = 0x402E000000000000;
  PrivacyTypeLayout.Metrics.regularBottomMargin.setter();
  v11 = [a2 traitCollection];
  LOBYTE(a2) = UITraitCollection.prefersAccessibilityLayouts.getter();

  v12 = &enum case for PrivacyTypeLayout.Metrics.HorizontalAlignment.leading(_:);
  if ((a2 & 1) == 0)
  {
    v12 = &enum case for PrivacyTypeLayout.Metrics.HorizontalAlignment.center(_:);
  }

  (*(v8 + 104))(v10, *v12, v7);
  PrivacyTypeLayout.Metrics.horizontalAlignment.setter();
  if (qword_10096D9D0 != -1)
  {
    swift_once();
  }

  v13 = qword_100981300;
  *v6 = qword_100981300;
  v14 = v31;
  v30 = *(v31 + 104);
  v30(v6, enum case for FontSource.textStyle(_:), v4);
  v29 = type metadata accessor for StaticDimension();
  v36 = v29;
  v37 = &protocol witness table for StaticDimension;
  sub_1000056E0(v35);
  v33 = v4;
  v34 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(v32);
  v28 = *(v14 + 16);
  v28(v15, v6, v4);
  v16 = v13;
  StaticDimension.init(_:scaledLike:)();
  v17 = *(v14 + 8);
  v31 = v14 + 8;
  v27 = v17;
  v17(v6, v4);
  PrivacyTypeLayout.Metrics.iconTopSpace.setter();
  v26 = a1;
  if (qword_10096E088 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for FontUseCase();
  v19 = sub_1000056A8(v18, qword_1009D1118);
  v20 = *(*(v18 - 8) + 16);
  v20(v6, v19, v18);
  v21 = enum case for FontSource.useCase(_:);
  v30(v6, enum case for FontSource.useCase(_:), v4);
  v36 = v29;
  v37 = &protocol witness table for StaticDimension;
  sub_1000056E0(v35);
  v33 = v4;
  v34 = &protocol witness table for FontSource;
  v22 = sub_1000056E0(v32);
  v28(v22, v6, v4);
  StaticDimension.init(_:scaledLike:)();
  v27(v6, v4);
  PrivacyTypeLayout.Metrics.titleTopSpace.setter();
  if (qword_10096E098 != -1)
  {
    swift_once();
  }

  v23 = sub_1000056A8(v18, qword_1009D1148);
  v20(v6, v23, v18);
  v30(v6, v21, v4);
  v36 = v29;
  v37 = &protocol witness table for StaticDimension;
  sub_1000056E0(v35);
  v33 = v4;
  v34 = &protocol witness table for FontSource;
  v24 = sub_1000056E0(v32);
  v28(v24, v6, v4);
  StaticDimension.init(_:scaledLike:)();
  v27(v6, v4);
  return PrivacyTypeLayout.Metrics.detailTopSpace.setter();
}

id sub_100363CCC(char *a1)
{
  v2 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_shadowView;
  v3 = *&a1[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_shadowView];
  if (v3)
  {
    goto LABEL_2;
  }

  v7 = [a1 traitCollection];
  v8 = [v7 userInterfaceStyle];

  if (v8 != 2)
  {
    type metadata accessor for ShadowView();
    v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v4 = *&a1[v2];
    *&a1[v2] = v9;
    v10 = v9;
    sub_10036135C(v4);

    goto LABEL_7;
  }

  v3 = *&a1[v2];
  if (v3)
  {
LABEL_2:
    v4 = v3;
    v5 = [a1 traitCollection];
    v6 = [v5 userInterfaceStyle];

    [v4 setHidden:v6 == 2];
LABEL_7:
  }

  v11 = *&a1[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_contentContainerView];
  if (qword_10096D9E0 != -1)
  {
    swift_once();
  }

  [v11 setBackgroundColor:qword_100981310];
  [v11 _setContinuousCornerRadius:20.0];
  v12 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_roundedCornerView;
  result = *&a1[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_roundedCornerView];
  if (result || (type metadata accessor for RoundedCornerView(), v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init], v15 = *&a1[v12], *&a1[v12] = v14, v16 = v14, sub_1003615DC(v15), v16, v15, (result = *&a1[v12]) != 0))
  {

    return [result setHidden:0];
  }

  return result;
}

void sub_100363EC8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_categoryViews;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    *(v1 + v2) = _swiftEmptyArrayStorage;

    return;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= 1)
  {

    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      swift_beginAccess();
      sub_10002849C(&qword_1009813A0, &unk_1007C8DD0);
      ReusePool.recycle(_:)();
      swift_endAccess();
      *&v7[OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_category] = 0;

      sub_100378DCC(v8);
      v10.value.super.isa = 0;
      v10.is_nil = 0;
      ArtworkView.setImage(image:animated:)(v10, v9);
      [v7 removeFromSuperview];
    }

    while (v4 != v5);

    goto LABEL_10;
  }

  __break(1u);
}

unint64_t sub_100364070()
{
  result = qword_1009813A8;
  if (!qword_1009813A8)
  {
    type metadata accessor for PrivacyTypeStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009813A8);
  }

  return result;
}

char *sub_100364108()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  *&v59 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v53 - v6;
  v8 = sub_10002849C(&qword_100981390, &qword_1007C8DB8);
  __chkstk_darwin(v8);
  v9 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_contentContainerView;
  *&v0[v9] = [objc_allocWithZone(UIView) init];
  v10 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_itemLayoutContext;
  v11 = type metadata accessor for ItemLayoutContext();
  (*(*(v11 - 8) + 56))(&v0[v10], 1, 1, v11);
  *&v0[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_shadowView] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_roundedCornerView] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_artwork] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_categories] = _swiftEmptyArrayStorage;
  type metadata accessor for PrivacyCategoryView();
  ViewRecycler.init()();
  sub_1003633B8();
  ReusePool.init(recycler:limit:)();
  v12 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_style;
  v13 = enum case for PrivacyTypeStyle.productPage(_:);
  v14 = type metadata accessor for PrivacyTypeStyle();
  (*(*(v14 - 8) + 104))(&v1[v12], v13, v14);
  *&v1[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_separatorView] = 0;
  v15 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_separator;
  v16 = type metadata accessor for Separator();
  (*(*(v16 - 8) + 56))(&v1[v15], 1, 1, v16);
  *&v1[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_iconView] = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_10096E088 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for FontUseCase();
  v18 = sub_1000056A8(v17, qword_1009D1118);
  v19 = *(v17 - 8);
  v57 = *(v19 + 16);
  v57(v7, v18, v17);
  v56 = *(v19 + 56);
  v56(v7, 0, 1, v17);
  v20 = enum case for DirectionalTextAlignment.none(_:);
  v55 = *(v3 + 104);
  v55(v59, enum case for DirectionalTextAlignment.none(_:), v2);
  v21 = type metadata accessor for DynamicTypeLabel();
  v54 = v2;
  v22 = v21;
  v23 = objc_allocWithZone(v21);
  *&v1[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096E098 != -1)
  {
    swift_once();
  }

  v24 = sub_1000056A8(v17, qword_1009D1148);
  v57(v7, v24, v17);
  v56(v7, 0, 1, v17);
  v55(v59, v20, v54);
  v25 = objc_allocWithZone(v22);
  *&v1[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_detailLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *&v1[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_categoryViews] = _swiftEmptyArrayStorage;
  v60.receiver = v1;
  v60.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v60, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v27 = [v26 contentView];
  [v27 setClipsToBounds:0];

  v28 = [v26 contentView];
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v29 = [v26 contentView];
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v30 = static UIColor.defaultBackground.getter();
  [v29 setBackgroundColor:v30];

  v31 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_contentContainerView;
  v32 = *&v26[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_contentContainerView];
  v33 = static UIColor.defaultBackground.getter();
  [v32 setBackgroundColor:v33];

  v34 = [v26 contentView];
  [v34 addSubview:*&v26[v31]];

  v35 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_iconView;
  v36 = *&v26[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_iconView];
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 clearColor];
  ArtworkView.backgroundColor.setter();

  v40 = qword_10096D9D8;
  v41 = *&v26[v35];
  if (v40 != -1)
  {
    swift_once();
  }

  v42 = qword_100981308;
  ArtworkView.preferredSymbolConfiguration.setter();

  [*&v26[v31] addSubview:*&v26[v35]];
  v43 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_titleLabel;
  v44 = *&v26[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_titleLabel];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  [*&v26[v31] addSubview:*&v26[v43]];
  v45 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_detailLabel;
  v46 = *&v26[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_detailLabel];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  v47 = *&v26[v45];
  v48 = static UIColor.secondaryText.getter();
  [v47 setTextColor:v48];

  [*&v26[v31] addSubview:*&v26[v45]];
  sub_100360F94();
  v49 = [objc_opt_self() defaultCenter];
  [v49 addObserver:v26 selector:"lowMemoryWarning:" name:UIApplicationDidReceiveMemoryWarningNotification object:0];

  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v50 = swift_allocObject();
  v59 = xmmword_1007B10D0;
  *(v50 + 16) = xmmword_1007B10D0;
  *(v50 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v50 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v51 = swift_allocObject();
  *(v51 + 16) = v59;
  *(v51 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v51 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v26;
}

void sub_100364A24()
{
  v1 = sub_10002849C(&qword_100981390, &qword_1007C8DB8);
  __chkstk_darwin(v1);
  v2 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_contentContainerView;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_itemLayoutContext;
  v4 = type metadata accessor for ItemLayoutContext();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_shadowView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_roundedCornerView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_artwork) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_categories) = _swiftEmptyArrayStorage;
  type metadata accessor for PrivacyCategoryView();
  ViewRecycler.init()();
  sub_1003633B8();
  ReusePool.init(recycler:limit:)();
  v5 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_style;
  v6 = enum case for PrivacyTypeStyle.productPage(_:);
  v7 = type metadata accessor for PrivacyTypeStyle();
  (*(*(v7 - 8) + 104))(v0 + v5, v6, v7);
  *(v0 + OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_separatorView) = 0;
  v8 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_separator;
  v9 = type metadata accessor for Separator();
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100364C8C(__n128 a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_10002849C(&unk_100973220, &unk_1007B4670);
  sub_100005644(v4, a3);
  sub_1000056A8(v4, a3);
  __asm { FMOV            V0.2D, #16.0 }

  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  type metadata accessor for UIEdgeInsets(0);
  return Conditional<>.init(regularValue:compactValue:)();
}

uint64_t sub_100364D38()
{
  v0 = sub_10002849C(&qword_1009755B0, &unk_1007B7850);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10002849C(&unk_100973220, &unk_1007B4670);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v8 - v3;
  v5 = type metadata accessor for AchievementSummaryLayout.Metrics();
  sub_100005644(v5, qword_1009CFC78);
  sub_1000056A8(v5, qword_1009CFC78);
  if (qword_10096D9F0 != -1)
  {
    swift_once();
  }

  v6 = sub_1000056A8(v1, qword_1009CFC48);
  (*(v2 + 16))(v4, v6, v1);
  v8[24] = &type metadata for Double;
  v8[25] = &protocol witness table for Double;
  v8[20] = &protocol witness table for Double;
  v8[21] = 0x4000000000000000;
  v8[19] = &type metadata for Double;
  v8[15] = &protocol witness table for Double;
  v8[16] = 0x4028000000000000;
  v8[14] = &type metadata for Double;
  v8[10] = &protocol witness table for Double;
  v8[11] = 0x4028000000000000;
  v8[9] = &type metadata for Double;
  v8[5] = &protocol witness table for Double;
  v8[6] = 0x406B800000000000;
  v8[4] = &type metadata for Double;
  v8[1] = 0x4066800000000000;
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  sub_10002849C(&qword_1009755B8, qword_1007C8E60);
  Conditional<>.init(regularValue:compactValue:)();
  return AchievementSummaryLayout.Metrics.init(achievementStackInsets:outOfTotalLeadingMargin:chevronLeadingMargin:chevronTrailingMargin:componentHeight:)();
}

char *sub_100364F7C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10002849C(&unk_100981210, &qword_1007C2310);
  __chkstk_darwin(v10 - 8);
  v71 = &v68 - v11;
  v12 = type metadata accessor for DirectionalTextAlignment();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v16 - 8);
  v18 = &v68 - v17;
  v19 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_itemLayoutContext;
  v20 = type metadata accessor for ItemLayoutContext();
  (*(*(v20 - 8) + 56))(&v4[v19], 1, 1, v20);
  v21 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_shadowView;
  type metadata accessor for ShadowView();
  *&v4[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_containerView;
  *&v4[v22] = [objc_allocWithZone(UIView) init];
  *&v4[OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_achievementGroupView] = 0;
  v69 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_numberCompletedLabel;
  if (qword_10096E040 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for FontUseCase();
  v24 = sub_1000056A8(v23, qword_1009D1040);
  v25 = *(v23 - 8);
  v75 = *(v25 + 16);
  v75(v18, v24, v23);
  v74 = *(v25 + 56);
  v74(v18, 0, 1, v23);
  v26 = enum case for DirectionalTextAlignment.leading(_:);
  v73 = *(v13 + 104);
  v73(v15, enum case for DirectionalTextAlignment.leading(_:), v12);
  v27 = type metadata accessor for DynamicTypeLabel();
  v72 = v12;
  v28 = v27;
  v29 = objc_allocWithZone(v27);
  *&v4[v69] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v69 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_outOfTotalLabel;
  if (qword_10096E048 != -1)
  {
    swift_once();
  }

  v30 = sub_1000056A8(v23, qword_1009D1058);
  v75(v18, v30, v23);
  v74(v18, 0, 1, v23);
  v73(v15, v26, v72);
  v31 = objc_allocWithZone(v28);
  *&v4[v69] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v69 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_completedLabel;
  if (qword_10096E050 != -1)
  {
    swift_once();
  }

  v32 = sub_1000056A8(v23, qword_1009D1070);
  v75(v18, v32, v23);
  v74(v18, 0, 1, v23);
  v73(v15, v26, v72);
  v33 = objc_allocWithZone(v28);
  *&v4[v69] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096DA00 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for AchievementSummaryLayout.Metrics();
  v35 = sub_1000056A8(v34, qword_1009CFC78);
  (*(*(v34 - 8) + 16))(v5 + OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_metrics, v35, v34);
  v76.receiver = v5;
  v76.super_class = ObjectType;
  v36 = objc_msgSendSuper2(&v76, "initWithFrame:", a1, a2, a3, a4);
  v37 = [v36 contentView];
  [v37 _setContinuousCornerRadius:20.0];

  v38 = [v36 contentView];
  [v38 setClipsToBounds:0];

  v39 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_shadowView;
  v40 = qword_10096DAC8;
  v41 = *&v36[OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_shadowView];
  if (v40 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Shadow();
  v43 = sub_1000056A8(v42, qword_1009CFEB8);
  v44 = *(v42 - 8);
  v45 = v71;
  (*(v44 + 16))(v71, v43, v42);
  (*(v44 + 56))(v45, 0, 1, v42);
  dispatch thunk of ShadowView.shadow.setter();

  [*&v36[v39] _setContinuousCornerRadius:20.0];
  v46 = [v36 contentView];
  [v46 addSubview:*&v36[v39]];

  v47 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_containerView;
  [*&v36[OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_containerView] setClipsToBounds:1];
  v48 = [v36 contentView];
  [v48 addSubview:*&v36[v47]];

  v49 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_numberCompletedLabel;
  v50 = *&v36[OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_numberCompletedLabel];
  sub_100028BB8();
  v51 = v50;
  v52 = static UIColor.primaryText.getter();
  [v51 setTextColor:v52];

  v53 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_outOfTotalLabel;
  v54 = *&v36[OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_outOfTotalLabel];
  v55 = static UIColor.primaryText.getter();
  [v54 setTextColor:v55];

  v56 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_completedLabel;
  v57 = *&v36[OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_completedLabel];
  v58 = static UIColor.primaryText.getter();
  [v57 setTextColor:v58];

  [*&v36[v49] setAdjustsFontSizeToFitWidth:1];
  [*&v36[v56] setAdjustsFontSizeToFitWidth:1];
  [*&v36[v53] setAdjustsFontSizeToFitWidth:1];
  [*&v36[v49] _setMinimumFontSize:20.0];
  [*&v36[v56] _setMinimumFontSize:11.0];
  [*&v36[v53] _setMinimumFontSize:11.0];
  v59 = [v36 contentView];
  [v59 addSubview:*&v36[v53]];

  v60 = [v36 contentView];
  [v60 addSubview:*&v36[v49]];

  v61 = [v36 contentView];
  [v61 addSubview:*&v36[v56]];

  v62 = [v36 traitCollection];
  v63 = [v62 userInterfaceStyle];

  if (v63 == 2)
  {
    v64 = static UIColor.placeholderBackground.getter();
  }

  else
  {
    v64 = static UIColor.defaultBackground.getter();
  }

  v65 = v64;
  [*&v36[v39] setBackgroundColor:v64];

  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1007B10D0;
  *(v66 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v66 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges(_:action:)();

  swift_unknownObjectRelease();

  return v36;
}

void sub_10036595C()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceStyle];

  sub_100028BB8();
  if (v3 == 2)
  {
    v4 = static UIColor.placeholderBackground.getter();
  }

  else
  {
    v4 = static UIColor.defaultBackground.getter();
  }

  v5 = v4;
  [*&v1[OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_shadowView] setBackgroundColor:?];
}

id sub_100365A5C()
{
  ObjectType = swift_getObjectType();
  v25 = type metadata accessor for LayoutRect();
  v2 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AchievementSummaryLayout.Metrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for AchievementSummaryLayout();
  v26 = *(v27 - 8);
  *&v9 = __chkstk_darwin(v27).n128_u64[0];
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43.receiver = v0;
  v43.super_class = ObjectType;
  objc_msgSendSuper2(&v43, "layoutSubviews", v9);
  v12 = *&v0[OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_shadowView];
  [v0 bounds];
  [v12 setFrame:?];
  v13 = *&v0[OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_containerView];
  [v0 bounds];
  result = [v13 setFrame:?];
  v15 = *&v0[OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_achievementGroupView];
  if (v15)
  {
    v16 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_metrics;
    swift_beginAccess();
    (*(v6 + 16))(v8, &v0[v16], v5);
    v41 = type metadata accessor for AchievementGroupView();
    v42 = &protocol witness table for UIView;
    v40 = v15;
    v17 = *&v0[OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_numberCompletedLabel];
    v38 = type metadata accessor for DynamicTypeLabel();
    v39 = &protocol witness table for UILabel;
    v36 = &protocol witness table for UILabel;
    v37 = v17;
    v18 = *&v0[OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_outOfTotalLabel];
    v35 = v38;
    v33 = &protocol witness table for UILabel;
    v34 = v18;
    v19 = *&v0[OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_completedLabel];
    v32 = v38;
    v31 = v19;
    v30 = 0;
    v29 = 0u;
    v28 = 0u;
    v20 = v15;
    v21 = v17;
    v22 = v18;
    v23 = v19;
    AchievementSummaryLayout.init(metrics:achievementGroupView:numberCompletedLabel:outOfTotalLabel:completedLabel:chevronView:)();
    [v0 bounds];
    AchievementSummaryLayout.placeChildren(relativeTo:in:)();

    (*(v2 + 8))(v4, v25);
    return (*(v26 + 8))(v11, v27);
  }

  return result;
}

uint64_t type metadata accessor for AchievementSummaryCollectionViewCell(uint64_t a1)
{
  result = qword_1009813E8;
  if (!qword_1009813E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100365FB0(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AchievementSummaryLayout.Metrics();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10036609C()
{
  v29 = type metadata accessor for DirectionalTextAlignment();
  v1 = *(v29 - 8);
  __chkstk_darwin(v29);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_itemLayoutContext;
  v8 = type metadata accessor for ItemLayoutContext();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_shadowView;
  type metadata accessor for ShadowView();
  *(v0 + v9) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_containerView;
  *(v0 + v10) = [objc_allocWithZone(UIView) init];
  v30 = v0;
  *(v0 + OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_achievementGroupView) = 0;
  v11 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_numberCompletedLabel;
  if (qword_10096E040 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for FontUseCase();
  v13 = sub_1000056A8(v12, qword_1009D1040);
  v14 = *(v12 - 8);
  v27 = *(v14 + 16);
  v27(v6, v13, v12);
  v26 = *(v14 + 56);
  v26(v6, 0, 1, v12);
  v15 = enum case for DirectionalTextAlignment.leading(_:);
  v16 = *(v1 + 104);
  v28 = v1 + 104;
  v16(v3, enum case for DirectionalTextAlignment.leading(_:), v29);
  v17 = type metadata accessor for DynamicTypeLabel();
  v18 = objc_allocWithZone(v17);
  *(v30 + v11) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v19 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_outOfTotalLabel;
  if (qword_10096E048 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v12, qword_1009D1058);
  v27(v6, v20, v12);
  v26(v6, 0, 1, v12);
  v16(v3, v15, v29);
  v21 = objc_allocWithZone(v17);
  *(v30 + v19) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v22 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_completedLabel;
  if (qword_10096E050 != -1)
  {
    swift_once();
  }

  v23 = sub_1000056A8(v12, qword_1009D1070);
  v27(v6, v23, v12);
  v26(v6, 0, 1, v12);
  v16(v3, v15, v29);
  v24 = objc_allocWithZone(v17);
  *(v30 + v22) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1003668A0()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F8CardView_tintView];
  [v1 _setCornerRadius:20.0];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v1];
  v2 = objc_opt_self();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1007BB060;
  v4 = [v1 topAnchor];
  v5 = [v0 topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v3 + 32) = v6;
  v7 = [v1 leftAnchor];
  v8 = [v0 leftAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v3 + 40) = v9;
  v10 = [v1 bottomAnchor];
  v11 = [v0 bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v3 + 48) = v12;
  v13 = [v1 rightAnchor];
  v14 = [v0 rightAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v3 + 56) = v15;
  sub_100005744(0, &qword_1009766E0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:isa];

  [v0 _setCornerRadius:20.0];
  [v0 setLayoutMargins:{8.0, 16.0, 8.0, 16.0}];
  [v0 setClipsToBounds:1];
  v17 = [objc_opt_self() whiteColor];
  [v0 setBackgroundColor:v17];

  v18 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"didTapFrom:"];
  [v0 addGestureRecognizer:v18];
}

id sub_100366CF0(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F8CardView_tintView;
  *&v1[v4] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F8CardView_viewConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F8CardView_view] = 0;
  v5 = &v1[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F8CardView_tapAction];
  *v5 = 0;
  *(v5 + 1) = 0;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_1003668A0();
  }

  return v7;
}

void sub_100366DF0(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F8CardView_viewConstraints;
  sub_100005744(0, &qword_1009766E0, NSLayoutConstraint_ptr);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 deactivateConstraints:isa];

  *(v1 + v4) = a1;

  v6 = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:v6];
}

id sub_100366EF0()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F8CardView_view];
  if (v1)
  {
    v2 = v1;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v0 addSubview:v2];
    v3 = [v2 bottomAnchor];
    v4 = [v0 layoutMarginsGuide];
    v5 = [v4 bottomAnchor];

    v6 = [v3 constraintEqualToAnchor:v5];
    LODWORD(v7) = 1140457472;
    [v6 setPriority:v7];
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1007BB060;
    v9 = [v2 topAnchor];
    v10 = [v0 layoutMarginsGuide];
    v11 = [v10 topAnchor];

    v12 = [v9 constraintEqualToAnchor:v11];
    *(v8 + 32) = v12;
    v13 = [v2 leftAnchor];
    v14 = [v0 layoutMarginsGuide];
    v15 = [v14 leftAnchor];

    v16 = [v13 constraintEqualToAnchor:v15];
    *(v8 + 40) = v16;
    *(v8 + 48) = v6;
    v17 = v6;
    v18 = [v2 rightAnchor];
    v19 = [v0 layoutMarginsGuide];
    v20 = [v19 rightAnchor];

    v21 = [v18 constraintEqualToAnchor:v20];
    *(v8 + 56) = v21;
    sub_100366DF0(v8);
  }

  else
  {
    sub_100366DF0(_swiftEmptyArrayStorage);
  }

  return [v0 invalidateIntrinsicContentSize];
}

void sub_100367330()
{
  v39.receiver = v0;
  v39.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v39, "viewDidLoad");
  v1 = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController_cardStackView;
  v3 = *&v0[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController_cardStackView];
  *&v0[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController_cardStackView] = v1;
  v4 = v1;

  if (!v4)
  {
    __break(1u);
    goto LABEL_18;
  }

  [v4 setAxis:1];

  v5 = *&v0[v2];
  if (!v5)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v5 setAlignment:0];
  v6 = *&v0[v2];
  if (!v6)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v6 setDistribution:3];
  v7 = *&v0[v2];
  if (!v7)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v7 setSpacing:16.0];
  v8 = *&v0[v2];
  if (!v8)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!*&v0[v2])
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v10 = v9;
  [v9 addSubview:?];

  v11 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = *&v0[v2];
  if (!v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v12 addArrangedSubview:v11];
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1007B48F0;
  v14 = *&v0[v2];
  if (!v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = [v14 topAnchor];
  v16 = [v0 view];
  if (!v16)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = v16;
  v18 = [v16 layoutMarginsGuide];

  v19 = [v18 topAnchor];
  v20 = [v15 constraintEqualToAnchor:v19];

  *(v13 + 32) = v20;
  v21 = *&v0[v2];
  if (!v21)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v22 = [v21 leftAnchor];
  v23 = [v0 view];
  if (!v23)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v24 = v23;
  v25 = [v23 layoutMarginsGuide];

  v26 = [v25 leftAnchor];
  v27 = [v22 constraintEqualToAnchor:v26];

  *(v13 + 40) = v27;
  v28 = *&v0[v2];
  if (!v28)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v29 = [v28 rightAnchor];
  v30 = [v0 view];
  if (!v30)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v31 = v30;
  v32 = objc_opt_self();
  v33 = [v31 layoutMarginsGuide];

  v34 = [v33 rightAnchor];
  v35 = [v29 constraintEqualToAnchor:v34];

  *(v13 + 48) = v35;
  sub_100005744(0, &qword_1009766E0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v32 activateConstraints:isa];

  v37 = [v0 view];
  if (v37)
  {
    v38 = v37;
    [v37 layoutIfNeeded];

    return;
  }

LABEL_31:
  __break(1u);
}

void sub_100367878(void *a1)
{
  [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v1 selector:"popWithCard:" object:a1];
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v15 = sub_1003692B0;
  v16 = v4;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100007A08;
  v14 = &unk_1008BF488;
  v5 = _Block_copy(&v11);
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v1;
  v15 = sub_1003692CC;
  v16 = v7;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100504C5C;
  v14 = &unk_1008BF4D8;
  v8 = _Block_copy(&v11);
  v9 = v6;
  v10 = v1;

  [v3 animateWithDuration:v5 animations:v8 completion:0.3];
  _Block_release(v8);
  _Block_release(v5);
}

void sub_100367A3C(int a1, id a2, uint64_t a3)
{
  [a2 removeFromSuperview];
  v4 = *(a3 + OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController_cardStackView);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = [v4 arrangedSubviews];
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v7, 1))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  if (v7 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = *(Strong + 16);
      if (v9)
      {
        v10 = v9;
        [v10 setHidden:1];
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_100367BD4()
{
  v30 = OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController_cardStackView;
  v2 = *&v1[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController_cardStackView];
  if (!v2)
  {
    goto LABEL_32;
  }

  v3 = [v2 arrangedSubviews];
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
LABEL_25:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v5, 1))
  {
    __break(1u);
    goto LABEL_27;
  }

  v0 = OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController_maximumNumberOfCards;
  if (*&v1[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController_maximumNumberOfCards] < v5 - 1)
  {
    v6 = *&v1[v30];
    if (!v6)
    {
LABEL_33:
      __break(1u);
      return;
    }

    v7 = [v6 arrangedSubviews];
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v8 >> 62))
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_9;
    }

LABEL_27:
    v9 = _CocoaArrayWrapper.endIndex.getter();
LABEL_9:

    v10 = v9 - 1;
    if (__OFSUB__(v9, 1))
    {
      __break(1u);
    }

    else
    {
      v11 = *&v1[v0];
      v12 = __OFSUB__(v10, v11);
      v13 = v10 - v11;
      if (!v12)
      {
        if (v13 >= 1)
        {
          v29 = v11 - v9 + 2;
          v14 = 5;
          while (1)
          {
            v15 = *&v1[v30];
            if (!v15)
            {
              goto LABEL_31;
            }

            v16 = v14 - 4;
            v17 = [v15 arrangedSubviews];
            v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            if ((v18 & 0xC000000000000001) != 0)
            {
              v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v16 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
LABEL_24:
                __break(1u);
                goto LABEL_25;
              }

              v19 = *(v18 + 8 * v14);
            }

            v20 = v19;
            v0 = v29 + v14;

            [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v1 selector:"popWithCard:" object:v20];
            v21 = objc_opt_self();
            v22 = swift_allocObject();
            *(v22 + 16) = v20;
            v35 = sub_100369170;
            v36 = v22;
            aBlock = _NSConcreteStackBlock;
            v32 = 1107296256;
            v33 = sub_100007A08;
            v34 = &unk_1008BF3E8;
            v23 = _Block_copy(&aBlock);
            v24 = v20;

            v25 = swift_allocObject();
            *(v25 + 16) = v24;
            *(v25 + 24) = v1;
            v35 = sub_100369184;
            v36 = v25;
            aBlock = _NSConcreteStackBlock;
            v32 = 1107296256;
            v33 = sub_100504C5C;
            v34 = &unk_1008BF438;
            v26 = _Block_copy(&aBlock);
            v27 = v24;
            v28 = v1;

            [v21 animateWithDuration:v23 animations:v26 completion:0.3];
            _Block_release(v26);
            _Block_release(v23);

            if (v29 + v14 == 5)
            {
              return;
            }

            ++v14;
            if (__OFADD__(v16, 1))
            {
              goto LABEL_24;
            }
          }
        }

LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    __break(1u);
    goto LABEL_30;
  }
}

char *sub_100367F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for CardView();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [*&v8[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F8CardView_tintView] setBackgroundColor:a3];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 2) = v10;
  *(v11 + 3) = v9;
  *(v11 + 4) = a4;
  *(v11 + 5) = a5;
  v12 = &v8[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F8CardView_tapAction];
  v13 = *&v8[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F8CardView_tapAction];
  v14 = *&v8[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F8CardView_tapAction + 8];
  *v12 = sub_10036918C;
  v12[1] = v11;

  sub_10000827C(a4, a5);
  sub_10001F63C(v13, v14);

  v15 = [objc_allocWithZone(UILabel) init];
  v16 = objc_opt_self();
  sub_100005744(0, &qword_100972780, UITraitCollection_ptr);
  v17 = static UITraitCollection.withSystemPreferredContentSizeCategory.getter();
  v18 = [v16 preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v17];

  [v15 setFont:v18];
  [v15 setNumberOfLines:5];
  [v15 setLineBreakMode:0];
  v19 = String._bridgeToObjectiveC()();
  [v15 setText:v19];

  v20 = OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F8CardView_view;
  v21 = *&v8[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F8CardView_view];
  v22 = v15;
  if (v21)
  {
    [v21 removeFromSuperview];
    v21 = *&v8[v20];
  }

  *&v8[v20] = v15;
  v23 = v15;

  sub_100366EF0();
  return v8;
}

void sub_100368224(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      sub_100367878(v5);
    }

    if (a3)
    {
      a3();
    }
  }
}

void sub_1003682C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v8 = OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController_cardStackView;
  v9 = *&v6[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController_cardStackView];
  if (!v9)
  {
    goto LABEL_14;
  }

  v15 = [v9 arrangedSubviews];
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v16 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v17, 1))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v17 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = *(Strong + 16);
      if (v19)
      {
        v20 = v19;
        [v20 setHidden:0];
      }

      swift_unknownObjectRelease();
    }
  }

  v21 = sub_100367F98(a1, a2, a3, a4, a5);
  [v21 setHidden:1];
  v22 = *&v6[v8];
  if (v22)
  {
    [v22 addArrangedSubview:v21];
    sub_100367BD4();
    v23 = objc_opt_self();
    v24 = swift_allocObject();
    *(v24 + 16) = v21;
    v35 = sub_100369134;
    v36 = v24;
    v31 = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_100007A08;
    v34 = &unk_1008BF348;
    v25 = _Block_copy(&v31);
    v26 = v21;

    v27 = swift_allocObject();
    *(v27 + 16) = a6;
    *(v27 + 24) = v6;
    *(v27 + 32) = v26;
    v35 = sub_100369148;
    v36 = v27;
    v31 = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_100504C5C;
    v34 = &unk_1008BF398;
    v28 = _Block_copy(&v31);
    v29 = v26;
    v30 = v6;

    [v23 animateWithDuration:v25 animations:v28 completion:0.3];
    _Block_release(v28);
    _Block_release(v25);

    return;
  }

LABEL_15:
  __break(1u);
}

id sub_1003685B0(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController_cardStackView] = 0;
  *&v3[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController_maximumNumberOfCards] = 3;
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id sub_1003686E0(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController_cardStackView] = 0;
  *&v1[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController_maximumNumberOfCards] = 3;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

void sub_10036881C()
{
  if (!*(v0 + 16))
  {
    v1 = [objc_opt_self() mainScreen];
    [v1 bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;

    v10 = [objc_allocWithZone(type metadata accessor for StatusBarOverlayWindow()) initWithFrame:{v3, v5, v7, v9}];
    v11 = *(v0 + 16);
    *(v0 + 16) = v10;

    type metadata accessor for CardStackViewController();
    v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v13 = *(v0 + 24);
    *(v0 + 24) = v12;

    v14 = *(v0 + 16);
    if (v14)
    {
      [v14 setRootViewController:*(v0 + 24)];
      v15 = *(v0 + 16);
      if (v15)
      {
        v16 = *(v0 + 24);
        if (v16)
        {
          v17 = v15;
          v18 = v16;
          [v18 loadViewIfNeeded];
          v19 = *&v18[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController_cardStackView];
          if (!v19)
          {
            __break(1u);
            return;
          }

          v20 = v19;
        }

        else
        {
          v17 = v15;
          v19 = 0;
        }

        v21 = *&v17[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F22StatusBarOverlayWindow_interactionView];
        *&v17[OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F22StatusBarOverlayWindow_interactionView] = v19;
      }
    }

    v22 = *(v0 + 24);
    if (v22)
    {
      *(v22 + OBJC_IVAR____TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController_delegate + 8) = &off_1008BF2E0;

      swift_unknownObjectWeakAssign();
    }
  }
}

double sub_1003689F4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for JSIncident();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = JSIncident.problemSummary.getter();
  v10 = v9;
  (*(v5 + 16))(v7, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v7, v4);
  v13 = [objc_opt_self() standardUserDefaults];
  LOBYTE(v4) = sub_100737B84();

  if (v4)
  {
    v14 = [objc_opt_self() sharedApplication];
    v15 = [v14 launchedToTest];

    if ((v15 & 1) == 0)
    {
      sub_10036881C();
      v16 = *(v2 + 24);
      if (v16)
      {
        sub_100005744(0, &qword_100970180, UIColor_ptr);
        v17 = v16;
        isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 0.58431, 0.0, 0.5).super.isa;
        sub_1003682C8(v8, v10, isa, sub_1003690D4, v12, 3.0);
      }
    }
  }

  return result;
}

double sub_100368C24(uint64_t a1)
{
  v2 = type metadata accessor for JSIncident();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  if (qword_10096D518 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v6 = *(Strong + OBJC_IVAR____TtC8AppStore11AppDelegate_window), v7 = [v6 rootViewController], v6, swift_unknownObjectRelease(), v7))
  {
    JSIncident.contextSummary.getter();
    JSIncident.problemSummary.getter();
    v8 = String._bridgeToObjectiveC()();

    v9 = String._bridgeToObjectiveC()();

    v10 = [objc_opt_self() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

    (*(v3 + 16))(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
    v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v12 = swift_allocObject();
    (*(v3 + 32))(v12 + v11, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
    v13 = String._bridgeToObjectiveC()();
    aBlock[4] = sub_100369228;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100768994;
    aBlock[3] = &unk_1008BF5A0;
    v14 = _Block_copy(aBlock);

    v15 = objc_opt_self();
    v16 = [v15 actionWithTitle:v13 style:0 handler:v14];
    _Block_release(v14);

    [v10 addAction:v16];
    v17 = String._bridgeToObjectiveC()();
    v18 = [v15 actionWithTitle:v17 style:0 handler:0];

    [v10 addAction:v18];
    [v7 presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    if (qword_10096D110 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for OSLogger();
    sub_1000056A8(v20, qword_1009CE1E8);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.debug(_:)();
  }

  return result;
}

double sub_1003690D4()
{
  v1 = *(type metadata accessor for JSIncident() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100368C24(v2);
}

id sub_100369148()
{
  if (*(v0 + 16) >= 0.0)
  {
    return [*(v0 + 24) performSelector:"popWithCard:" withObject:*(v0 + 32) afterDelay:?];
  }

  return result;
}

void sub_100369198()
{
  v0 = [objc_opt_self() generalPasteboard];
  JSIncident.description.getter();
  v1 = String._bridgeToObjectiveC()();

  [v0 setString:v1];
}

void sub_100369228()
{
  type metadata accessor for JSIncident();

  sub_100369198();
}

void sub_1003692D0(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for OfferButtonMetrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  if (a1 >= 1)
  {
    __chkstk_darwin(v10);
    *(&v20 - 2) = v2;
    *(&v20 - 1) = a2;
    v21 = UITraitCollection.modifyingTraits(_:)();
    if (qword_10096EFE0 != -1)
    {
      swift_once();
    }

    if (qword_10096EFE8 != -1)
    {
      swift_once();
    }

    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      v13 = &xmmword_1009D4040;
    }

    else
    {
      v13 = &xmmword_1009D3ED0;
    }

    sub_10003B8E8(v13, v22);
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      if (qword_10096ECB8 != -1)
      {
        swift_once();
      }

      v14 = qword_100991010;
    }

    else
    {
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v14 = qword_100991028;
    }

    v15 = sub_1000056A8(v5, v14);
    (*(v6 + 16))(v8, v15, v5);
    (*(v6 + 32))(v12, v8, v5);
    if ((v25 & 1) == 0 && v23 == 0.0 && v24 == 0.0)
    {
      OfferButtonMetrics.minimumSize.getter();
      v17 = v16;
      OfferButtonMetrics.minimumSize.getter();
      v23 = v17;
      v24 = v18;
      v25 = 0;
    }

    v19 = _s8AppStore21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v22, a2, 0.0);
    (*(v6 + 8))(v12, v5, v19);
    sub_10003B944(v22);
  }
}

uint64_t sub_10036961C(void *a1)
{
  v2 = type metadata accessor for OfferButtonMetrics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v6);
  v8 = &v19[-v7 - 8];
  if (qword_10096EFE0 != -1)
  {
    swift_once();
  }

  if (qword_10096EFE8 != -1)
  {
    swift_once();
  }

  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    v9 = &xmmword_1009D4040;
  }

  else
  {
    v9 = &xmmword_1009D3ED0;
  }

  sub_10003B8E8(v9, v19);
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v10 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v10 = qword_100991028;
  }

  v11 = sub_1000056A8(v2, v10);
  (*(v3 + 16))(v5, v11, v2);
  (*(v3 + 32))(v8, v5, v2);
  if ((v22 & 1) == 0 && v20 == 0.0 && v21 == 0.0)
  {
    OfferButtonMetrics.minimumSize.getter();
    v13 = v12;
    OfferButtonMetrics.minimumSize.getter();
    v20 = v13;
    v21 = v14;
    v22 = 0;
  }

  v15 = _s8AppStore21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v19, a1, 0.0);
  (*(v3 + 8))(v8, v2, v15);
  sub_10003B944(v19);
  sub_10036DA1C(a1);
  v16 = [a1 preferredContentSizeCategory];
  static UIContentSizeCategory.> infix(_:_:)();

  static UIEdgeInsets.vertical(top:bottom:)();
  return VerticalFlexStackLayout.Metrics.init(fixedChildHeight:minInterChildSpacing:maxInterChildSpacing:layoutMargins:)();
}

id sub_100369968(double a1, double a2, double a3, double a4)
{
  swift_weakInit();
  swift_weakInit();
  v4[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isExpanded] = 0;
  swift_weakInit();
  v9 = &v4[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_impressionsUpdateBlock];
  *v9 = 0;
  v9[1] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_lockups] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_limit] = 0;
  v4[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isListLayoutInvalid] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_lastContentWidth] = 0;
  v10 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_listCells;
  *&v4[v10] = sub_10039910C(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_prefetchedLockupImages] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_currentTouch] = 0;
  v4[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isDragging] = 0;
  v11 = &v4[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_indexForHighlightedLockup];
  *v11 = 0;
  v11[8] = 1;
  v12 = type metadata accessor for TodayListCardLockupContainer();
  v21.receiver = v4;
  v21.super_class = v12;
  v13 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  sub_10036A868();
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1007B10D0;
  *(v18 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v18 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v20[3] = v12;
  v20[0] = v17;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100007000(v20);
  return v17;
}

void sub_100369C9C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = type metadata accessor for TodayListCardLockupContainer();
  v22.receiver = v5;
  v22.super_class = v10;
  objc_msgSendSuper2(&v22, "frame");
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v21.receiver = v5;
  v21.super_class = v10;
  objc_msgSendSuper2(&v21, "setFrame:", a2, a3, a4, a5);
  [v5 frame];
  Height = CGRectGetHeight(v23);
  v24.origin.x = v12;
  v24.origin.y = v14;
  v24.size.width = v16;
  v24.size.height = v18;
  if (Height != CGRectGetHeight(v24))
  {
    v20 = *(v5 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isListLayoutInvalid);
    *(v5 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isListLayoutInvalid) = 1;
    sub_100369D90(v20);
  }
}

void sub_100369D90(char a1)
{
  if (v1[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isListLayoutInvalid] == 1 && (a1 & 1) == 0)
  {
    v2 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_listCells;
    swift_beginAccess();
    v3 = *&v1[v2];
    v4 = 1 << *(v3 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v3 + 64);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    while (v6)
    {
      v9 = v8;
LABEL_11:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      [*(*(*(v3 + 56) + ((v9 << 9) | (8 * v10))) + OBJC_IVAR____TtC8AppStore38TodayCardSmallLockupCollectionViewCell_lockupView) setNeedsLayout];
    }

    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        [v1 setNeedsLayout];
        return;
      }

      v6 = *(v3 + 64 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_100369ECC()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for VerticalFlexStackLayout.Metrics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TodayListCardLockupContainer();
  v19.receiver = v0;
  v19.super_class = v6;
  objc_msgSendSuper2(&v19, "layoutSubviews");
  v7 = *&v0[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_lockups];
  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v0[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isExpanded];
  LayoutMarginsAware<>.layoutFrame.getter();
  v10 = [v0 traitCollection];
  if (v9 == 1)
  {
  }

  else
  {
    v11 = v10;
    sub_10036961C(v10);
    v12 = static VerticalFlexStackLayout.estimatedChildFitCount(in:metrics:)();
    v14 = v13;

    (*(v3 + 8))(v5, v2);
    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = v12;
    }

    if (v8 >= v15)
    {
      v8 = v15;
    }
  }

  v16 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_lastContentWidth;
  v17 = *&v1[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_lastContentWidth];
  LayoutMarginsAware<>.layoutFrame.getter();
  if (v17 != CGRectGetWidth(v20) || *&v1[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_limit] != v8)
  {
    v18 = v1[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isListLayoutInvalid];
    v1[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isListLayoutInvalid] = 1;
    sub_100369D90(v18);
  }

  if (v1[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isListLayoutInvalid] == 1)
  {
    if (swift_weakLoadStrong())
    {

      *&v1[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_limit] = v8;
      sub_10036AC74(v8);
      sub_10036A17C();
      LayoutMarginsAware<>.layoutFrame.getter();
      *&v1[v16] = CGRectGetWidth(v21);
    }
  }
}

void sub_10036A17C()
{
  v2 = v0;
  swift_getObjectType();
  v3 = type metadata accessor for VerticalFlexStackLayout.Metrics();
  __chkstk_darwin(v3 - 8);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VerticalFlexStackLayout();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  __chkstk_darwin(v9);
  v11 = &v44 - v10;
  if (!swift_weakLoadStrong())
  {
    return;
  }

  if (v2[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isListLayoutInvalid] != 1)
  {
    return;
  }

  v12 = *&v2[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_limit];
  if ((v12 & 0x8000000000000000) == 0)
  {
    v52 = v7;
    v53 = v5;
    v48 = v8;
    v49 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v47 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isListLayoutInvalid;
    v51 = v11;
    v8 = _swiftEmptyArrayStorage;
    *&aBlock = _swiftEmptyArrayStorage;
    v1 = v2;
    v13 = 0;
    v5 = _swiftEmptyArrayStorage;
    while (v12 != v13)
    {
      if (v13 >= v12)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_24;
      }

      if (sub_10036AE04(v13++))
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v5 = aBlock;
        v13 = v14;
      }
    }

    v16 = [v1 traitCollection];
    sub_10036961C(v16);

    swift_getKeyPath();
    v45 = v2;
    v46 = v5 >> 62;
    v50 = v6;
    if (v5 >> 62)
    {
      goto LABEL_26;
    }

    v17 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_14;
    }

LABEL_27:

    goto LABEL_28;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  v17 = _CocoaArrayWrapper.endIndex.getter();
  if (!v17)
  {
    goto LABEL_27;
  }

LABEL_14:
  v60 = v8;
  sub_100144490(0, v17 & ~(v17 >> 63), 0);
  if (v17 < 0)
  {
LABEL_48:
    __break(1u);
    return;
  }

  v18 = 0;
  v19 = v60;
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v20 = *(v5 + 8 * v18 + 32);
    }

    v59 = v20;
    v21 = v20;
    swift_getAtKeyPath();

    v60 = v19;
    v23 = v19[2];
    v22 = v19[3];
    if (v23 >= v22 >> 1)
    {
      sub_100144490((v22 > 1), v23 + 1, 1);
      v19 = v60;
    }

    ++v18;
    v19[2] = v23 + 1;
    sub_100005A38(&aBlock, &v19[5 * v23 + 4]);
  }

  while (v17 != v18);

  v6 = v50;
LABEL_28:
  v24 = v51;
  VerticalFlexStackLayout.init(metrics:children:)();
  v25 = objc_opt_self();
  v26 = v52;
  v27 = v49;
  (*(v52 + 16))(v49, v24, v6);
  v28 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v29 = (v48 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v26 + 32))(v30 + v28, v27, v6);
  *(v30 + v29) = v1;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_10036E21C;
  *(v31 + 24) = v30;
  v57 = sub_10006F094;
  v58 = v31;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v55 = sub_1000489A8;
  v56 = &unk_1008BF690;
  v32 = _Block_copy(&aBlock);
  v33 = v1;

  [v25 performWithoutAnimation:v32];
  _Block_release(v32);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (!v46)
  {
    v34 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v34)
    {
      goto LABEL_41;
    }

    goto LABEL_33;
  }

  v34 = _CocoaArrayWrapper.endIndex.getter();
  if (v34)
  {
LABEL_33:
    v35 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v35 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v36 = *(v5 + 8 * v35 + 32);
      }

      v37 = v36;
      v38 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      sub_10036C718(v36, v35);

      ++v35;
      if (v38 == v34)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_41:

  v39 = &v33[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_impressionsUpdateBlock];
  swift_beginAccess();
  v40 = *v39;
  if (*v39)
  {
    v41 = *(v39 + 1);

    v40(v42);
    sub_10001F63C(v40, v41);
  }

  v43 = v45[v47];
  v45[v47] = 0;
  sub_100369D90(v43);
  (*(v52 + 8))(v51, v50);
}

void sub_10036A7C8(int a1, id a2)
{
  [a2 bounds];
  v3 = [a2 traitCollection];
  VerticalFlexStackLayout.place(at:with:)();
}

uint64_t sub_10036A868()
{
  v1 = [v0 traitCollection];
  v2 = [(NSString *)v1 preferredContentSizeCategory];
  v3 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v4 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  result = static UIContentSizeCategory.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (static UIContentSizeCategory.>= infix(_:_:)())
  {
    v6 = static UIContentSizeCategory.<= infix(_:_:)();

    if (v6)
    {
      v7 = v3;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v8 = [(NSString *)v1 preferredContentSizeCategory];
  v9 = UIContentSizeCategoryAccessibilityMedium;
  v10 = UIContentSizeCategoryAccessibilityExtraLarge;
  result = static UIContentSizeCategory.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (static UIContentSizeCategory.>= infix(_:_:)())
  {
    v11 = static UIContentSizeCategory.<= infix(_:_:)();

    if (v11)
    {
      v7 = UIContentSizeCategoryAccessibilityLarge;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {

    v7 = 0;
    v1 = v9;
  }

LABEL_12:

  [v0 setMaximumContentSizeCategory:v7];
  v12 = *(v0 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isListLayoutInvalid);
  *(v0 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isListLayoutInvalid) = 1;
  sub_100369D90(v12);

  return [v0 setNeedsLayout];
}

void sub_10036AAA4()
{
  if (!swift_weakLoadStrong())
  {
    goto LABEL_15;
  }

  if (!swift_weakLoadStrong())
  {
LABEL_14:

LABEL_15:
    *(v0 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_lockups) = _swiftEmptyArrayStorage;

    *(v0 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_prefetchedLockupImages) = 0;

    swift_weakAssign();
    v12 = *(v0 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isListLayoutInvalid);
    *(v0 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isListLayoutInvalid) = 1;
    sub_100369D90(v12);
    return;
  }

  v1 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_listCells;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_11:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(v2 + 56) + ((v8 << 9) | (8 * v9)));
    v13[3] = type metadata accessor for TodayCardSmallLockupCollectionViewCell();
    v13[0] = v10;
    v11 = v10;
    tryToCancelArtworkFetch(into:on:asPartOf:deprioritizingFetches:)();

    sub_100007000(v13);
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      goto LABEL_14;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_11;
    }
  }

  __break(1u);
}

double sub_10036AC74(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_listCells;
  swift_beginAccess();
  v6 = *(*(v1 + v4) + 16);
  if (v6 > a1 && swift_weakLoadStrong())
  {
    if (swift_weakLoadStrong())
    {
      do
      {
        swift_beginAccess();
        v7 = sub_1003D7340(a1);
        if (v8)
        {
          v9 = v7;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v11 = *(v2 + v4);
          v15 = v11;
          *(v2 + v4) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_100054F8C();
            v11 = v15;
          }

          v12 = *(*(v11 + 56) + 8 * v9);
          sub_100056290();
          *(v2 + v4) = v11;
          swift_endAccess();
          v14[3] = type metadata accessor for TodayCardSmallLockupCollectionViewCell();
          v14[0] = v12;
          v13 = v12;
          tryToCancelArtworkFetch(into:on:asPartOf:deprioritizingFetches:)();
          sub_100007000(v14);
          [v13 removeFromSuperview];
        }

        else
        {
          swift_endAccess();
        }

        ++a1;
      }

      while (v6 != a1);
    }
  }

  return result;
}

char *sub_10036AE04(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10002849C(&unk_100970150, &unk_1007BDDD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v47 - v5;
  v7 = sub_10002849C(&unk_100973AD0, &unk_1007B17C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v47 - v8;
  v10 = sub_10002849C(&unk_100970160, &unk_1007BDDE0);
  __chkstk_darwin(v10 - 8);
  v12 = &v47 - v11;
  v13 = sub_10002849C(&qword_100973AE0, &unk_1007B17D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v47 - v14;
  v16 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  __chkstk_darwin(v16 - 8);
  v18 = &v47 - v17;
  v19 = type metadata accessor for ComponentLayoutOptions();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_lockups;
  v24 = *&v2[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_lockups];
  if (!(v24 >> 62))
  {
    result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result > a1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v52 = v20;
  v46 = v22;
  result = _CocoaArrayWrapper.endIndex.getter();
  v22 = v46;
  v20 = v52;
  if (result <= a1)
  {
    return 0;
  }

LABEL_3:
  v51 = v12;
  v26 = *&v2[v23];
  v53 = v22;
  if ((v26 & 0xC000000000000001) != 0)
  {

    v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_7:
    v50 = v9;
    v27 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_listCells;
    swift_beginAccess();
    v28 = *&v2[v27];
    if (*(v28 + 16) && (v29 = sub_1003D7340(a1), (v30 & 1) != 0))
    {
      v31 = *(*(v28 + 56) + 8 * v29);
    }

    else
    {
      v32 = sub_10036DEE0();
      [v32 setAutoresizingMask:2];
      [v2 addSubview:v32];
      swift_beginAccess();
      v31 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = *&v2[v27];
      *&v2[v27] = 0x8000000000000000;
      sub_10005250C(v31, a1, isUniquelyReferenced_nonNull_native);
      *&v2[v27] = v54;
      swift_endAccess();
    }

    v34 = [v31 contentView];
    [v34 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v49 = Strong;
      sub_10002849C(&qword_10097DB08, &qword_1007C8FC0);
      v36 = v6;
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1007B1890;
      static ComponentLayoutOptions.separatorHidden.getter();
      static ComponentLayoutOptions.fixedHeightContainer.getter();
      v55 = v37;
      sub_10036E170(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
      sub_10002849C(&qword_10097DB18, &unk_1007C5230);
      sub_10036E1B8();
      dispatch thunk of SetAlgebra.init<A>(_:)();

      v38 = *&v31[OBJC_IVAR____TtC8AppStore38TodayCardSmallLockupCollectionViewCell_lockupView];
      v39 = sub_10002849C(&unk_100973240, qword_1007B2220);
      (*(*(v39 - 8) + 56))(v18, 1, 1, v39);
      v40 = type metadata accessor for OfferStyle();
      (*(*(v40 - 8) + 56))(v15, 1, 1, v40);
      v41 = type metadata accessor for OfferEnvironment();
      v42 = v51;
      (*(*(v41 - 8) + 56))(v51, 1, 1, v41);
      v43 = type metadata accessor for OfferTint();
      v44 = v50;
      (*(*(v43 - 8) + 56))(v50, 1, 1, v43);
      v45 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
      (*(*(v45 - 8) + 56))(v36, 1, 1, v45);
      v48 = v19;
      sub_1004F3190(v52, v38, v18, v49, 0, 0, v15, v42, v44, v36);
      v38[OBJC_IVAR____TtC8AppStore19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] = 0;
      sub_100776DD8();
      [v38 setNeedsLayout];
      sub_100776DD8();
      sub_10002B894(v36, &unk_100970150, &unk_1007BDDD0);
      sub_10002B894(v44, &unk_100973AD0, &unk_1007B17C0);
      sub_10002B894(v42, &unk_100970160, &unk_1007BDDE0);
      sub_10002B894(v15, &qword_100973AE0, &unk_1007B17D0);
      sub_10002B894(v18, &unk_100973230, &unk_1007B17E0);
      [v31 setNeedsLayout];

      (*(v20 + 8))(v53, v48);
    }

    else
    {
    }

    return v31;
  }

  if (a1 < 0)
  {
    __break(1u);
  }

  else if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v52 = *(v26 + 8 * a1 + 32);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_10036B5A0()
{
  if ((*(v0 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isExpanded) & 1) == 0 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0 && (Strong, (v2 = [v0 window]) != 0))
  {
    v3 = v2;
    [v0 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = v3;
    [v12 convertRect:v0 fromCoordinateSpace:{v5, v7, v9, v11}];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [v12 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v33.origin.x = v22;
    v33.origin.y = v24;
    v33.size.width = v26;
    v33.size.height = v28;
    v35.origin.x = v14;
    v35.origin.y = v16;
    v35.size.width = v18;
    v35.size.height = v20;
    v34 = CGRectIntersection(v33, v35);
    x = v34.origin.x;
    y = v34.origin.y;
    width = v34.size.width;
    height = v34.size.height;
    if (!CGRectIsEmpty(v34))
    {
      [v12 convertRect:v0 toCoordinateSpace:{x, y, width, height}];
    }
  }

  else
  {
    [v0 bounds];
  }
}

void sub_10036B760(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong _removeScrollViewScrollObserver:v1];
  }

  swift_unknownObjectWeakAssign();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    [v4 _addScrollViewScrollObserver:v1];
  }
}

void sub_10036B800(uint64_t a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for TodayListCardLockupContainer();
  objc_msgSendSuper2(&v13, "didMoveToSuperview");
  v2 = [v1 superview];
  if (v2)
  {
    v3 = v2;
    while (1)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        break;
      }

      v5 = [v3 superview];

      v3 = v5;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v8 = v4;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      sub_100005744(0, &qword_100978E50, UICollectionView_ptr);
      v11 = v3;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {

        return;
      }
    }

    v7 = v8;
  }

  else
  {
LABEL_5:
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      return;
    }

    v7 = 0;
  }

  sub_10036B760(v7);
}

void sub_10036B9E8(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_indexForHighlightedLockup;
  if ((*(v2 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_indexForHighlightedLockup + 8) & 1) == 0)
  {
    v6 = *v5;
    v7 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_listCells;
    swift_beginAccess();
    v8 = *(v2 + v7);
    if (*(v8 + 16))
    {
      v9 = sub_1003D7340(v6);
      if (v10)
      {
        [*(*(v8 + 56) + 8 * v9) setHighlighted:0];
      }
    }
  }

  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  if ((a2 & 1) == 0)
  {
    v11 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_listCells;
    swift_beginAccess();
    v12 = *(v2 + v11);
    if (*(v12 + 16))
    {
      v13 = sub_1003D7340(a1);
      if (v14)
      {
        [*(*(v12 + 56) + 8 * v13) setHighlighted:1];
      }
    }
  }
}

void sub_10036BAF4(uint64_t a1, double a2, double a3)
{
  v7 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_listCells;
  swift_beginAccess();
  v8 = *(v3 + v7);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  while (v11)
  {
    v14 = v13;
LABEL_10:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = *(*(v8 + 56) + ((v14 << 9) | (8 * v15)));
    [v16 convertPoint:v3 fromCoordinateSpace:{a2, a3}];
    v17 = [v16 pointInside:a1 withEvent:?];

    if (v17)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {
      goto LABEL_11;
    }

    v11 = *(v8 + 64 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_10036BC5C(unint64_t a1)
{
  v2 = v1;
  v4 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(v2 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_lockups);
  if ((v7 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {

      goto LABEL_5;
    }

    __break(1u);
    return;
  }

  specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_5:
  v8 = Lockup.clickAction.getter();
  if (v8)
  {
    v9 = v8;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(v6, 1, v12) == 1)
      {

        sub_10002B894(v6, &unk_100972A00, &unk_1007B3130);
      }

      else
      {
        sub_1005F9AF4(v9, 1, v11, v6);

        (*(v13 + 8))(v6, v12);
      }

      return;
    }
  }
}

void sub_10036BEA4(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isExpanded) == 1)
  {
    v5 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_currentTouch;
    v6 = *(v2 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_currentTouch);
    if (!v6 || [v6 phase] == 3 || (v7 = *(v2 + v5)) != 0 && objc_msgSend(v7, "phase") == 4)
    {
      v8 = sub_10066D4C4(a1);
      if (v8)
      {
        v9 = v8;
        [v8 locationInView:v2];
        sub_10036BAF4(a2, v10, v11);
        sub_10036B9E8(v13, v12 & 1);
        v14 = *(v2 + v5);
        *(v2 + v5) = v9;

        sub_100005744(0, &qword_100981660, UITouch_ptr);
        sub_10008DB40();
        v15.super.isa = Set._bridgeToObjectiveC()().super.isa;
        v17.super_class = type metadata accessor for TodayListCardLockupContainer();
        objc_msgSendSuper2(&v17, "touchesBegan:withEvent:", v15.super.isa, a2, v16.receiver, v16.super_class, v2, v17.super_class, v18.receiver, v18.super_class, v19.receiver, v19.super_class);
      }

      else
      {
        sub_100005744(0, &qword_100981660, UITouch_ptr);
        sub_10008DB40();
        v15.super.isa = Set._bridgeToObjectiveC()().super.isa;
        v18.super_class = type metadata accessor for TodayListCardLockupContainer();
        objc_msgSendSuper2(&v18, "touchesBegan:withEvent:", v15.super.isa, a2, v16.receiver, v16.super_class, v17.receiver, v17.super_class, v2, v18.super_class, v19.receiver, v19.super_class);
      }
    }

    else
    {
      sub_100005744(0, &qword_100981660, UITouch_ptr);
      sub_10008DB40();
      v15.super.isa = Set._bridgeToObjectiveC()().super.isa;
      v16.super_class = type metadata accessor for TodayListCardLockupContainer();
      objc_msgSendSuper2(&v16, "touchesBegan:withEvent:", v15.super.isa, a2, v2, v16.super_class, v17.receiver, v17.super_class, v18.receiver, v18.super_class, v19.receiver, v19.super_class);
    }
  }

  else
  {
    sub_100005744(0, &qword_100981660, UITouch_ptr);
    sub_10008DB40();
    v15.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v19.super_class = type metadata accessor for TodayListCardLockupContainer();
    objc_msgSendSuper2(&v19, "touchesBegan:withEvent:", v15.super.isa, a2, v16.receiver, v16.super_class, v17.receiver, v17.super_class, v18.receiver, v18.super_class, v2, v19.super_class);
  }
}

void sub_10036C0BC(uint64_t a1, uint64_t a2)
{
  if (v2[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isExpanded] != 1)
  {
    sub_100005744(0, &qword_100981660, UITouch_ptr);
    sub_10008DB40();
    v15.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v18.receiver = v2;
    v18.super_class = type metadata accessor for TodayListCardLockupContainer();
    objc_msgSendSuper2(&v18, "touchesEnded:withEvent:", v15.super.isa, a2);
    goto LABEL_15;
  }

  v5 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_currentTouch;
  v6 = *&v2[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_currentTouch];
  if (!v6)
  {
LABEL_14:
    sub_100005744(0, &qword_100981660, UITouch_ptr);
    sub_10008DB40();
    v15.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v17.receiver = v2;
    v17.super_class = type metadata accessor for TodayListCardLockupContainer();
    objc_msgSendSuper2(&v17, "touchesEnded:withEvent:", v15.super.isa, a2);
    goto LABEL_15;
  }

  v7 = v6;
  if ((sub_100296044(v7, a1) & 1) == 0)
  {

    goto LABEL_14;
  }

  v8 = *&v2[v5];
  *&v2[v5] = 0;

  v9 = &v2[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_indexForHighlightedLockup];
  if ((v2[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_indexForHighlightedLockup + 8] & 1) == 0)
  {
    v10 = *v9;
    if (v2[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isDragging])
    {
LABEL_8:
      v11 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_listCells;
      swift_beginAccess();
      v12 = *&v2[v11];
      if (*(v12 + 16))
      {
        v13 = sub_1003D7340(v10);
        if (v14)
        {
          [*(*(v12 + 56) + 8 * v13) setHighlighted:0];
        }
      }

      goto LABEL_11;
    }

    sub_10036BC5C(*v9);
    if ((v9[8] & 1) == 0)
    {
      v10 = *v9;
      goto LABEL_8;
    }
  }

LABEL_11:
  *v9 = 0;
  v9[8] = 1;

  sub_100005744(0, &qword_100981660, UITouch_ptr);
  sub_10008DB40();
  v15.super.isa = Set._bridgeToObjectiveC()().super.isa;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for TodayListCardLockupContainer();
  objc_msgSendSuper2(&v16, "touchesEnded:withEvent:", v15.super.isa, a2);
LABEL_15:
}

double sub_10036C2F4(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_100005744(0, &qword_100981660, UITouch_ptr);
  sub_10008DB40();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);

  return result;
}

void sub_10036C3A4(uint64_t a1, uint64_t a2)
{
  if (v2[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isExpanded] == 1)
  {
    v4 = *&v2[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_currentTouch];
    *&v2[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_currentTouch] = 0;

    v5 = &v2[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_indexForHighlightedLockup];
    if ((v2[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_indexForHighlightedLockup + 8] & 1) == 0)
    {
      v6 = *v5;
      v7 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_listCells;
      swift_beginAccess();
      v8 = *&v2[v7];
      if (*(v8 + 16))
      {
        v9 = sub_1003D7340(v6);
        if (v10)
        {
          [*(*(v8 + 56) + 8 * v9) setHighlighted:0];
        }
      }
    }

    *v5 = 0;
    v5[8] = 1;
    sub_100005744(0, &qword_100981660, UITouch_ptr);
    sub_10008DB40();
    v11.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v12.receiver = v2;
    v12.super_class = type metadata accessor for TodayListCardLockupContainer();
    objc_msgSendSuper2(&v12, "touchesCancelled:withEvent:", v11.super.isa, a2);
  }

  else
  {
    sub_100005744(0, &qword_100981660, UITouch_ptr);
    sub_10008DB40();
    v11.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v13.receiver = v2;
    v13.super_class = type metadata accessor for TodayListCardLockupContainer();
    objc_msgSendSuper2(&v13, "touchesCancelled:withEvent:", v11.super.isa, a2);
  }
}

void sub_10036C540(uint64_t a1, int a2, id a3)
{
  v5 = [a3 preferredContentSizeCategory];
  v6 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v7 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  if ((static UIContentSizeCategory.<= infix(_:_:)() & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (static UIContentSizeCategory.>= infix(_:_:)())
  {
    v8 = static UIContentSizeCategory.<= infix(_:_:)();

    if (v8)
    {
LABEL_10:
      v12 = v6;
      sub_100047650(a1, *(a1 + 24));
      UIMutableTraits.preferredContentSizeCategory.setter();
      return;
    }
  }

  else
  {
  }

  v9 = [a3 preferredContentSizeCategory];
  v13 = UIContentSizeCategoryAccessibilityMedium;
  v10 = UIContentSizeCategoryAccessibilityExtraLarge;
  if ((static UIContentSizeCategory.<= infix(_:_:)() & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return;
  }

  if (static UIContentSizeCategory.>= infix(_:_:)())
  {
    v11 = static UIContentSizeCategory.<= infix(_:_:)();

    if ((v11 & 1) == 0)
    {
      return;
    }

    v6 = UIContentSizeCategoryAccessibilityLarge;
    goto LABEL_10;
  }
}

void sub_10036C718(char *a1, unint64_t a2)
{
  v5 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for Artwork.Crop();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!swift_weakLoadStrong())
  {
    return;
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(v2 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_lockups);
    v25 = Strong;
    if ((v11 & 0xC000000000000001) == 0)
    {
      if ((a2 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
      {
        v12 = *(v11 + 8 * a2 + 32);

LABEL_7:
        v13 = *(v2 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_prefetchedLockupImages);
        if (v13)
        {
          if (*(v13 + 16))
          {
            v14 = sub_1003D7340(a2);
            if (v15)
            {
              v16 = *(*(v13 + 56) + 8 * v14);
              if (dispatch thunk of Lockup.artwork.getter())
              {
                Artwork.crop.getter();
                v17 = Artwork.Crop.preferredContentMode.getter();
                v18 = v9;
                v19 = v17;
                (*(v7 + 8))(v18, v6);
                v20 = *&a1[OBJC_IVAR____TtC8AppStore38TodayCardSmallLockupCollectionViewCell_lockupView];
                swift_beginAccess();
                Artwork.config(_:mode:prefersLayeredImage:)();
                v21 = *(v20 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
                Artwork.style.getter();
                ArtworkView.style.setter();
                [v21 setContentMode:{Artwork.contentMode.getter(), v25}];
                ArtworkLoaderConfig.size.getter();
                ArtworkView.imageSize.setter();
                if (!Artwork.backgroundColor.getter())
                {
                  sub_100005744(0, &qword_100970180, UIColor_ptr);
                  static UIColor.placeholderBackground.getter();
                }

                ArtworkView.backgroundColor.setter();
                [v21 setContentMode:v19];
                v22 = v16;
                v29.value.super.isa = v16;
                v29.is_nil = 0;
                ArtworkView.setImage(image:animated:)(v29, v23);

                return;
              }
            }
          }
        }

        v27[3] = type metadata accessor for Lockup();
        v27[4] = sub_10036E170(&qword_100974480, &type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
        v27[0] = v12;
        v26[3] = type metadata accessor for TodayCardSmallLockupCollectionViewCell();
        v26[0] = a1;

        v24 = a1;
        tryToFetch(artworkFor:into:on:asPartOf:)();

        sub_100007000(v26);
        sub_10002B894(v27, &unk_10097DBE0, &unk_1007BCA00);
        return;
      }

      __break(1u);
      return;
    }

    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_7;
  }
}

id sub_10036CB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_lockups] = a1;

  swift_weakAssign();
  swift_weakAssign();
  *&v3[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_limit] = 0;
  v4 = v3[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isListLayoutInvalid];
  v3[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isListLayoutInvalid] = 1;
  sub_100369D90(v4);

  return [v3 setNeedsLayout];
}

id sub_10036CBF8(char *a1)
{
  v2 = v1;
  v4 = [a1 maximumContentSizeCategory];
  [v2 setMaximumContentSizeCategory:v4];

  *&v2[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_lockups] = *&a1[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_lockups];

  swift_weakLoadStrong();
  swift_weakAssign();

  swift_weakLoadStrong();
  swift_weakAssign();

  *&v2[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_limit] = 0;
  v5 = v2[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isListLayoutInvalid];
  v2[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isListLayoutInvalid] = 1;
  sub_100369D90(v5);
  v6 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_listCells;
  swift_beginAccess();
  v7 = *&a1[v6];
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v38 = _swiftEmptyDictionarySingleton;
  while (1)
  {
    v13 = v12;
    if (!v10)
    {
      break;
    }

LABEL_8:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = (v12 << 9) | (8 * v14);
    v16 = *(*(v7 + 48) + v15);
    v17 = *(*(v7 + 56) + v15);
    v18 = *(*&v17[OBJC_IVAR____TtC8AppStore38TodayCardSmallLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
    v19 = v17;
    v20 = v18;
    v21 = ArtworkView.image.getter();

    if (v21)
    {
      v37 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v38;
      v23 = sub_1003D7340(v16);
      v25 = v38[2];
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      if (v38[3] >= v28)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v40 = v23;
          v35 = v24;
          sub_100054834();
          v24 = v35;
          v23 = v40;
        }
      }

      else
      {
        v39 = v24;
        sub_10004E848(v28, isUniquelyReferenced_nonNull_native);
        v23 = sub_1003D7340(v16);
        v30 = v29 & 1;
        v24 = v39;
        if ((v39 & 1) != v30)
        {
          goto LABEL_26;
        }
      }

      v38 = v41;
      if (v24)
      {
        v31 = v41[7];
        v32 = *(v31 + 8 * v23);
        *(v31 + 8 * v23) = v37;
      }

      else
      {
        v41[(v23 >> 6) + 8] |= 1 << v23;
        *(v41[6] + 8 * v23) = v16;
        *(v41[7] + 8 * v23) = v37;

        v33 = v41[2];
        v27 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v27)
        {
          goto LABEL_25;
        }

        v41[2] = v34;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v12 >= v11)
    {
      break;
    }

    v10 = *(v7 + 64 + 8 * v12);
    ++v13;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  if (v38[2])
  {
    *&v2[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_prefetchedLockupImages] = v38;
  }

  return [v2 setNeedsLayout];
}

void sub_10036CF80(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v3 - 8);
  v43 = &v34 - v4;
  v5 = type metadata accessor for ImpressionMetrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v37 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v10 = *&v9[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_limit];
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_34;
      }

      v42 = v5;
      v2 = _swiftEmptyArrayStorage;
      v44 = _swiftEmptyArrayStorage;
      v9 = v9;
      v11 = 0;
      while (1)
      {
        if (v10 == v11)
        {

          if (v2 >> 62)
          {
            goto LABEL_35;
          }

          v14 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v14)
          {
            goto LABEL_14;
          }

          goto LABEL_36;
        }

        if (v11 >= v10)
        {
          break;
        }

        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_30;
        }

        if (sub_10036AE04(v11++))
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v2 = v44;
          v11 = v12;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        v14 = _CocoaArrayWrapper.endIndex.getter();
        if (!v14)
        {
          break;
        }

LABEL_14:
        v38 = v2;
        v39 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_lockups;
        v40 = v2 & 0xFFFFFFFFFFFFFF8;
        v41 = v2 & 0xC000000000000001;
        v15 = (v6 + 48);
        v34 = (v6 + 8);
        v35 = (v6 + 32);
        v16 = 4;
        while (1)
        {
          v17 = v16 - 4;
          if (v41)
          {
            v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v17 >= *(v40 + 16))
            {
              goto LABEL_32;
            }

            v18 = *(v2 + 8 * v16);
          }

          v6 = v18;
          v19 = v16 - 3;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          v20 = *&v9[v39];
          if ((v20 & 0xC000000000000001) != 0)
          {

            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v17 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_33;
            }
          }

          v21 = v43;
          Lockup.impressionMetrics.getter();
          v22 = v42;
          if ((*v15)(v21, 1, v42) == 1)
          {

            sub_10002B894(v21, &qword_100973D30, &unk_1007B1DC0);
          }

          else
          {
            v23 = v21;
            v24 = v37;
            (*v35)(v37, v23, v22);
            [v6 frame];
            v26 = v25;
            v28 = v27;
            v30 = v29;
            v32 = v31;
            v33 = [v9 superview];
            [v9 convertRect:v33 toView:{v26, v28, v30, v32}];

            ImpressionsCalculator.addElement(_:at:)();

            (*v34)(v24, v22);
          }

          ++v16;
          v2 = v38;
          if (v19 == v14)
          {
            goto LABEL_36;
          }
        }
      }

LABEL_36:
    }

    else
    {
    }
  }
}

id sub_10036D40C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TodayListCardLockupContainer();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_10036D56C(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();

  return result;
}

void (*sub_10036D5CC(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100078E88;
}

uint64_t sub_10036D664()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1, v1[1]);
  return v2;
}

uint64_t sub_10036D6C0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6, v7);
}

void (*sub_10036D780(uint64_t a1, uint64_t a2))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return sub_10036D828;
}

double sub_10036D830(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_22:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_23;
    }
  }

  v4 = 0;
  do
  {
    v5 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v4 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v5 >= *(v2 + 16))
        {
          goto LABEL_21;
        }

        v4 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      if (Lockup.icon.getter())
      {
        break;
      }

      ++v5;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    if (qword_10096EFE8 != -1)
    {
      swift_once();
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
LABEL_23:
  ArtworkLoader.prefetchArtwork(using:)(_swiftEmptyArrayStorage);

  return result;
}

double sub_10036DA1C(void *a1)
{
  v1 = [a1 preferredContentSizeCategory];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    goto LABEL_15;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
LABEL_6:

    return 20.0;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
  {
LABEL_15:

    return 20.0;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    goto LABEL_6;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {
LABEL_14:

    return 0.0;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    goto LABEL_18;
  }

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
  {
    goto LABEL_14;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
    goto LABEL_18;
  }

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
  {

    return 8.0;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {

    return 8.0;
  }

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;
  if (v30 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v32 == v33)
  {
    goto LABEL_14;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v34)
  {
LABEL_18:

    return 0.0;
  }

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;
  if (v35 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v37 == v38)
  {
    goto LABEL_14;
  }

  v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 8.0;
  if (v39)
  {
    return 0.0;
  }

  return result;
}

void sub_10036DD90()
{
  swift_weakInit();
  swift_weakInit();
  *(v0 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isExpanded) = 0;
  swift_weakInit();
  v1 = (v0 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_impressionsUpdateBlock);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_lockups) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_limit) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isListLayoutInvalid) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_lastContentWidth) = 0;
  v2 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_listCells;
  *(v0 + v2) = sub_10039910C(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_prefetchedLockupImages) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_currentTouch) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isDragging) = 0;
  v3 = v0 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_indexForHighlightedLockup;
  *v3 = 0;
  *(v3 + 8) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

char *sub_10036DEE0()
{
  v0 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v0 - 8);
  v2 = &v20 - v1;
  v3 = [objc_allocWithZone(type metadata accessor for TodayCardSmallLockupCollectionViewCell()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v7 = *&v3[OBJC_IVAR____TtC8AppStore38TodayCardSmallLockupCollectionViewCell_lockupView];
  [v7 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v8 = *&v7[OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel];
  v9 = qword_10096DD10;
  v10 = v7;
  v11 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for FontUseCase();
  v13 = sub_1000056A8(v12, qword_1009D06C8);
  v14 = *(v12 - 8);
  v15 = *(v14 + 16);
  v15(v2, v13, v12);
  v16 = *(v14 + 56);
  v16(v2, 0, 1, v12);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v17 = *&v10[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel];
  if (qword_10096DD38 != -1)
  {
    swift_once();
  }

  v18 = sub_1000056A8(v12, qword_1009D0740);
  v15(v2, v18, v12);
  v16(v2, 0, 1, v12);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  return v3;
}

uint64_t sub_10036E170(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10036E1B8()
{
  result = qword_10097DB20;
  if (!qword_10097DB20)
  {
    sub_10002D1A8(&qword_10097DB18, &unk_1007C5230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DB20);
  }

  return result;
}

void sub_10036E21C()
{
  v1 = *(type metadata accessor for VerticalFlexStackLayout() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10036A7C8(v0 + v2, v3);
}

void sub_10036E2A8()
{
  v1 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_listCells;
  swift_beginAccess();
  if (*(*(v0 + v1) + 16) < *(v0 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_limit))
  {
    sub_10036B5A0();
    if (CGRectGetHeight(v2) > COERCE_DOUBLE(1))
    {
      sub_10036A17C();
    }
  }
}

char *sub_10036E328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC8AppStore24OnboardingViewController_navController;
  *&v4[v9] = [objc_allocWithZone(UINavigationController) init];
  *&v4[OBJC_IVAR____TtC8AppStore24OnboardingViewController_presenter] = a1;
  v10 = &v4[OBJC_IVAR____TtC8AppStore24OnboardingViewController_completionCallback];
  *v10 = a2;
  *(v10 + 1) = a3;
  v16.receiver = v4;
  v16.super_class = ObjectType;

  v11 = objc_msgSendSuper2(&v16, "initWithNibName:bundle:", 0, 0);
  if (*(a1 + 16) > 1u)
  {
    if (*(a1 + 16) != 2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_6;
    }
  }

  v12 = 2;
LABEL_6:
  v13 = v11;
  [v13 setModalPresentationStyle:v12];
  if (*(a1 + 16) <= 1u)
  {
    if (*(a1 + 16))
    {
      v14 = 0;
LABEL_11:
      [*&v13[OBJC_IVAR____TtC8AppStore24OnboardingViewController_navController] setModalPresentationStyle:v14];
      [v13 setModalInPresentation:1];

      return v13;
    }

LABEL_10:
    v14 = 2;
    goto LABEL_11;
  }

  if (*(a1 + 16) == 2)
  {
    goto LABEL_10;
  }

LABEL_12:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10036E570()
{
  v21.receiver = v0;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, "viewDidLoad");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v1;
  v3 = [objc_opt_self() systemBlueColor];
  [v2 setTintColor:v3];

  v4 = *&v0[OBJC_IVAR____TtC8AppStore24OnboardingViewController_navController];
  [v4 setNavigationBarHidden:1 animated:0];
  [v0 addChildViewController:v4];
  v5 = [v4 view];
  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  v7 = [v0 view];
  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7;
  [v7 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [v6 setFrame:{v10, v12, v14, v16}];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v18 = v17;
  v19 = [v4 view];
  if (v19)
  {
    v20 = v19;
    [v18 addSubview:v19];

    [v4 didMoveToParentViewController:v0];
    sub_10036E764();
    return;
  }

LABEL_11:
  __break(1u);
}

void sub_10036E764()
{
  v1 = v0;
  v2 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  v3 = *&v0[OBJC_IVAR____TtC8AppStore24OnboardingViewController_presenter];
  swift_beginAccess();
  v4 = *(v3 + 32);
  if (*(v4 + 16))
  {
    sub_10002C0AC(v4 + 32, v19);
    v6 = sub_10036EF54(v19, v5);
    if (v6)
    {
      v7 = v6;
      if (qword_10096D138 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for OSLogger();
      sub_1000056A8(v8, qword_1009CE260);
      sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v9._countAndFlagsBits = 0x69746E6573657250;
      v9._object = 0xEB0000000020676ELL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v9);
      v18 = sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
      v17[0] = v7;
      v10 = v7;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002B894(v17, &unk_1009711D0, &unk_1007B1A10);
      v11._countAndFlagsBits = 0x65747320726F6620;
      v11._object = 0xEA00000000002070;
      LogMessage.StringInterpolation.appendLiteral(_:)(v11);
      v12 = v20;
      v13 = sub_10002A400(v19, v20);
      v18 = v12;
      v14 = sub_1000056E0(v17);
      (*(*(v12 - 8) + 16))(v14, v13, v12);
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002B894(v17, &unk_1009711D0, &unk_1007B1A10);
      v15._countAndFlagsBits = 0;
      v15._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v15);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      [v10 preferredContentSize];
      [v1 setPreferredContentSize:?];
      [*&v1[OBJC_IVAR____TtC8AppStore24OnboardingViewController_navController] showViewController:v10 sender:v1];
    }

    else
    {
      sub_1004D32CC(v19, 0xD00000000000002ALL, 0x800000010080EDD0);
      sub_10036E764();
    }

    sub_100007000(v19);
  }

  else
  {
    if (qword_10096D138 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for OSLogger();
    sub_1000056A8(v16, qword_1009CE260);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    (*&v0[OBJC_IVAR____TtC8AppStore24OnboardingViewController_completionCallback])(v0);
    if (qword_10096DA08 != -1)
    {
      swift_once();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10044089C();
      swift_unknownObjectRelease();
    }
  }
}

double sub_10036ECA8(char a1)
{
  v2 = v1;
  v10.receiver = v2;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "viewWillAppear:", a1 & 1);
  v4 = *&v2[OBJC_IVAR____TtC8AppStore24OnboardingViewController_presenter];
  swift_beginAccess();
  v5 = *(v4 + 32);
  if (*(v5 + 16))
  {
    sub_10002C0AC(v5 + 32, v8);
    sub_10002B894(v8, &qword_1009816A8, qword_1007C9050);
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_10002B894(v8, &qword_1009816A8, qword_1007C9050);
    if (qword_10096D138 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for OSLogger();
    sub_1000056A8(v7, qword_1009CE260);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    (*&v2[OBJC_IVAR____TtC8AppStore24OnboardingViewController_completionCallback])(v2);
    if (qword_10096DA08 != -1)
    {
      swift_once();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10044089C();
      swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_10036EF54(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = type metadata accessor for WelcomeOnboardingStep();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v38 - v10;
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  sub_10002C0AC(a1, v42);
  sub_10002849C(&unk_10097A950, &qword_1007B1320);
  if (swift_dynamicCast())
  {
    v18 = *(v6 + 16);
    v18(v14, v17, v5);
    if (*(*&v3[OBJC_IVAR____TtC8AppStore24OnboardingViewController_presenter] + 16) == 2)
    {
      v19 = sub_10036F524();
      v20 = *(v6 + 8);
      v20(v14, v5);
      v20(v17, v5);
      goto LABEL_8;
    }

    v38 = v8;
    v39 = v3;
    v21 = *(v6 + 8);
    v21(v14, v5);
    (*(v6 + 32))(v11, v17, v5);
    v22 = v38;
    v18(v38, v11, v5);
    v23 = ASKBagContract.isArcadeSupported.getter();
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    objc_allocWithZone(type metadata accessor for OnboardingWelcomeViewController(0));

    v19 = sub_100137718(v22, v23 & 1, sub_100370368, v24);

    v21(v11, v5);
    v3 = v39;
LABEL_7:

    goto LABEL_8;
  }

  type metadata accessor for AdPrivacyOnboardingStep();
  if (swift_dynamicCast())
  {
    v19 = sub_10036F8D4();
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    sub_1003702DC(aBlock);
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = objc_allocWithZone(type metadata accessor for OnboardingLocationPrivacyViewController());
    v19 = sub_1005FA8E8(sub_100370330, v31, sub_100370360, v32);
  }

  else
  {
    type metadata accessor for JourneyDrivenOnboardingStep();
    if (!swift_dynamicCast())
    {
      goto LABEL_20;
    }

    v34 = v40;
    v19 = *&v40[OBJC_IVAR____TtC8AppStore27JourneyDrivenOnboardingStep_engagementViewController];
    if (!v19)
    {

      sub_100007000(v42);
      return v19;
    }

    v35 = [v19 startEngagement];
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1003702D4;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100182E7C;
    aBlock[3] = &unk_1008BF6E0;
    v37 = _Block_copy(aBlock);

    [v35 addFinishBlock:v37];
    _Block_release(v37);
  }

LABEL_8:
  sub_100007000(v42);
  v25 = [v19 view];
  if (v25)
  {
    v26 = v25;
    v27 = [v3 view];
    if (v27)
    {
      v28 = v27;
      v29 = [v27 tintColor];

      [v26 setTintColor:v29];
      return v19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_10036F524()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  WelcomeOnboardingStep.privacyIdentifiers.getter();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = [v6 linkWithBundleIdentifiers:isa];

  if (v8)
  {
    v9 = v8;
    [v9 setModalPresentationStyle:{objc_msgSend(v1, "modalPresentationStyle")}];

    v10 = v9;
    static Locale.storefront.getter();
    Locale.identifier.getter();
    (*(v3 + 8))(v5, v2);
    v11 = String._bridgeToObjectiveC()();

    [v10 setDisplayLanguage:v11];
  }

  v12 = sub_10032FEB0(0xD000000000000017, 0x800000010080EEE0, 0);
  v13._countAndFlagsBits = 0xD00000000000001FLL;
  v13._object = 0x800000010080EF00;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  localizedString(_:comment:)(v13, v14);
  v15._countAndFlagsBits = 0xD000000000000025;
  v15._object = 0x800000010080EF20;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  localizedString(_:comment:)(v15, v16);
  v28[1] = v1;
  v17._object = 0x800000010080EF50;
  v17._countAndFlagsBits = 0xD000000000000013;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  localizedString(_:comment:)(v17, v18);
  v19 = objc_allocWithZone(AMSUIOnboardingViewController);
  v20 = v8;
  v21 = String._bridgeToObjectiveC()();

  v22 = String._bridgeToObjectiveC()();

  v23 = String._bridgeToObjectiveC()();

  v24 = [v19 initWithHeaderImage:v12 titleText:v21 descriptionText:v22 primaryButtonText:v23 privacyLinkController:v20];

  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1003703B8;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080D48;
  aBlock[3] = &unk_1008BF708;
  v26 = _Block_copy(aBlock);

  [v24 setPrimaryButtonCallback:v26];

  _Block_release(v26);
  return v24;
}

id sub_10036F8D4()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10003C660();
  static Locale.current.getter();
  v5 = Locale.identifier.getter();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  v8 = ASKBagContract.personalizedAdsScrollRequiredDisabledRegionCodes.getter();
  v15[0] = v5;
  v15[1] = v7;
  v14 = v15;
  v9 = sub_10003C224(sub_1001835EC, v13, v8);

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = objc_allocWithZone(type metadata accessor for OnboardingAdPrivacyViewController());
  return sub_10039C500(v4, (v9 & 1) == 0, sub_100370398, v10);
}

void sub_10036FA84(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_7;
    }

    v4 = Strong;

    sub_1004D37D0();
  }

  else
  {
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (!v5)
    {
      goto LABEL_7;
    }

    v6 = v5;

    sub_1004D37D8();
  }

LABEL_7:
  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    sub_10036E764();
  }
}

void sub_10036FB6C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    a3();
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    sub_10036E764();
  }
}

void sub_10036FC18(uint64_t a1, uint64_t a2)
{
  v2 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v2 - 8);
  v4 = &v18[-v3];
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;

    sub_1004D38BC();
  }

  URL.init(string:)();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10002B894(v4, &qword_100982460, &unk_1007B5C90);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v11 = [objc_opt_self() defaultWorkspace];
    if (!v11)
    {
      __break(1u);
      return;
    }

    v13 = v11;
    URL._bridgeToObjectiveC()(v12);
    v15 = v14;
    [v13 openSensitiveURL:v14 withOptions:0];

    (*(v6 + 8))(v8, v5);
  }

  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    sub_10036E764();
  }
}

uint64_t sub_10036FE84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1003703A0;
  aBlock[5] = a3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008BF730;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002D150();
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_1000079A4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}