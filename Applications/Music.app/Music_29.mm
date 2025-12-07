uint64_t sub_10035C184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10035C22C, v6, v5);
}

uint64_t sub_10035C22C()
{

  sub_100009F78(0, &qword_101181620, UIView_ptr);
  if (qword_10117F5E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = qword_10118C2C0;
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = v1;
  static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(v2, 0, sub_10035D284, v3, 0, 0, 0.0);

  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_10035C37C;

  return sub_10035B8EC();
}

uint64_t sub_10035C37C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v2;
  v3[1] = sub_10035C4BC;

  return sub_10035BD38();
}

uint64_t sub_10035C4BC()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100222A34, v1, v0);
}

char *sub_10035C728()
{
  v1 = v0;
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  *&v0[OBJC_IVAR____TtC5Music17SingIndicatorView____lazy_storage___gradientView] = 0;
  v2 = OBJC_IVAR____TtC5Music17SingIndicatorView_singIndicatorLabel;
  v3 = [objc_allocWithZone(UILabel) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_100009F78(0, &qword_101183A00, UIFont_ptr);
  v4 = static UIFont.preferredFont(forTextStyle:weight:)();
  [v3 setFont:v4];

  [v3 setAdjustsFontForContentSizeCategory:1];
  *&v1[v2] = v3;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for SingIndicatorView();
  v5 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v6 = OBJC_IVAR____TtC5Music17SingIndicatorView_singIndicatorLabel;
  v7 = *&v5[OBJC_IVAR____TtC5Music17SingIndicatorView_singIndicatorLabel];
  v8 = v5;
  v9 = v7;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v10 = String._bridgeToObjectiveC()();

  [v9 setText:v10];

  [v8 addSubview:*&v5[v6]];
  if (qword_10117F8E0 != -1)
  {
    swift_once();
  }

  [v8 setBackgroundColor:qword_101219078];
  [v8 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
  v11 = [v8 traitCollection];

  v12 = [v11 accessibilityContrast];
  if (v12 != 1)
  {
    v13 = [v8 layer];
    [v13 setCompositingFilter:kCAFilterPlusL];
  }

  return v8;
}

void sub_10035CA90(uint64_t a1)
{
  v30.receiver = v1;
  v30.super_class = type metadata accessor for SingIndicatorView();
  objc_msgSendSuper2(&v30, "layoutSubviews");
  v2 = sub_10035B7EC();
  [v1 addSubview:v2];

  [v1 bounds];
  v3 = CGRectGetWidth(v31) + 24.0 + -5.0;
  v4 = OBJC_IVAR____TtC5Music17SingIndicatorView____lazy_storage___gradientView;
  v5 = *&v1[OBJC_IVAR____TtC5Music17SingIndicatorView____lazy_storage___gradientView];
  v6 = CGPoint.topLeft.unsafeMutableAddressor();
  swift_beginAccess();
  [v5 setAnchorPoint:{*v6, v6[1]}];
  v7 = *&v1[v4];
  [v1 bounds];
  [v7 setFrame:{-v3, 0.0, v3, CGRectGetHeight(v32)}];

  v8 = *&v1[OBJC_IVAR____TtC5Music17SingIndicatorView_singIndicatorLabel];
  v9 = [v8 layer];
  [v9 setShadowOffset:{0.0, 0.0}];

  v10 = [v8 layer];
  LODWORD(v11) = 1058642330;
  [v10 setShadowOpacity:v11];

  v12 = [v8 layer];
  [v12 setShadowRadius:3.0];

  v13 = objc_opt_self();
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100EBDC10;
  v15 = [v1 leadingAnchor];
  v16 = [v8 leadingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:-5.0];

  *(v14 + 32) = v17;
  v18 = [v1 trailingAnchor];
  v19 = [v8 trailingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:5.0];

  *(v14 + 40) = v20;
  v21 = [v1 topAnchor];
  v22 = [v8 topAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:-5.0];

  *(v14 + 48) = v23;
  v24 = [v1 bottomAnchor];
  v25 = [v8 bottomAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:5.0];

  *(v14 + 56) = v26;
  sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 activateConstraints:isa];

  v28 = [v1 layer];
  v29 = [v8 layer];
  [v28 setMask:v29];
}

double sub_10035CEF4(void *a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for SingIndicatorView();
  objc_msgSendSuper2(&v11, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v3 = [a1 accessibilityContrast];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 traitCollection];
  v5 = [v4 accessibilityContrast];

  if (!a1 || v3 != v5)
  {
    v7 = [v1 traitCollection];
    v8 = [v7 accessibilityContrast];

    v9 = [v1 layer];
    if (v8 == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = kCAFilterPlusL;
    }

    [v9 setCompositingFilter:v10];

    swift_unknownObjectRelease();
  }

  return result;
}

id sub_10035D0CC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SingIndicatorView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10035D170()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC5Music17SingIndicatorView____lazy_storage___gradientView) = 0;
  v2 = OBJC_IVAR____TtC5Music17SingIndicatorView_singIndicatorLabel;
  v3 = [objc_allocWithZone(UILabel) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_100009F78(0, &qword_101183A00, UIFont_ptr);
  v4 = static UIFont.preferredFont(forTextStyle:weight:)();
  [v3 setFont:v4];

  [v3 setAdjustsFontForContentSizeCategory:1];
  *(v1 + v2) = v3;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10035D284()
{
  v1 = *(v0 + 16);
  [v1 setAlpha:1.0];
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform:v3];
}

void sub_10035D2E4(uint64_t a1)
{
  v2 = MetricsReportingController.shared.unsafeMutableAddressor();
  v3 = *((swift_isaMask & **v2) + 0x98);
  v4 = *v2;
  v3(a1);
}

uint64_t sub_10035D688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10035D728, v6, v5);
}

uint64_t sub_10035D728()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v0[8] = _Block_copy(v1);
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v0[9] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10035D7E8, v9, v8);
}

uint64_t sub_10035D7E8()
{
  v1 = v0[8];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v1[2](v1, 24);
  _Block_release(v1);
  v5 = v0[1];

  return v5();
}

id sub_10035D8C4()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 sharedApplication];
  v4 = [v3 connectedScenes];
  sub_100009F78(0, &qword_1011839F0, UIScene_ptr);
  sub_100061F5C();
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100061FC4(v5);
  v7 = v6;

  if (v7 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_14:

    goto LABEL_15;
  }

  result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_3:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = sub_1007E90D4(0, v7);
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v9 = *(v7 + 32);
  }

  v10 = v9;

  v11 = [v2 sharedApplication];
  v12 = sub_10049DE94();

  if (v12)
  {
    v13 = UIWindowScene.mainWindow.getter();
    if (v13)
    {
      v14 = v13;
      v15 = [v13 isKeyWindow];

      if (v15)
      {
        v16 = *&v12[OBJC_IVAR____TtC5Music17MainSceneDelegate_responder];
        v17 = v16;

        return v16;
      }
    }

    else
    {
    }
  }

  else
  {
  }

LABEL_15:
  v18.receiver = v1;
  v18.super_class = type metadata accessor for ApplicationDelegate();
  return objc_msgSendSuper2(&v18, "nextResponder");
}

id sub_10035DB0C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Music19ApplicationDelegate_remoteRadioController;
  *&v1[v2] = [objc_allocWithZone(MPRemoteRadioController) init];
  v3 = OBJC_IVAR____TtC5Music19ApplicationDelegate_carMetricsObserver;
  _s8ObserverCMa();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = MPCPlayActivityUtilitiesPlayEndNotification;
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v6 = v5;

  *(v4 + 16) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v6, 0, 1, 1, sub_10035DC94, v4);

  *&v1[v3] = v4;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ApplicationDelegate();
  return objc_msgSendSuper2(&v8, "init");
}

id sub_10035DC14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ApplicationDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10035DC9C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100008F30;

  return sub_10035D688(v2, v3, v5, v4);
}

uint64_t sub_10035DD5C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100008F30;

  return v6();
}

uint64_t sub_10035DE44()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100008F30;

  return sub_10035DD5C(v2, v3, v4);
}

uint64_t sub_10035DF04(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10002F3F4;

  return v7();
}

uint64_t sub_10035DFEC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10035E02C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_10035DF04(a1, v4, v5, v6);
}

uint64_t sub_10035E0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v10 = v22 - v9;
  sub_10002086C(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000095E8(v10, &unk_101181520, &qword_100EBCC60);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v12 + 8))(v10, v11);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v15 = v14;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v16 = String.utf8CString.getter() + 32;
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;

    if (v15 | v13)
    {
      v23[0] = 0;
      v23[1] = 0;
      v18 = v23;
      v23[2] = v13;
      v23[3] = v15;
    }

    else
    {
      v18 = 0;
    }

    v22[1] = 7;
    v22[2] = v18;
    v22[3] = v16;
    v20 = swift_task_create();

    sub_1000095E8(a3, &unk_101181520, &qword_100EBCC60);

    return v20;
  }

LABEL_8:
  sub_1000095E8(a3, &unk_101181520, &qword_100EBCC60);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_10035E3E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_100009648(a1, v4);
}

uint64_t sub_10035E49C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F3F4;

  return sub_100009648(a1, v4);
}

uint64_t sub_10035E554(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin().n128_u64[0];
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 connectedScenes];
  sub_100009F78(0, &qword_1011839F0, UIScene_ptr);
  sub_100061F5C();
  v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100061FC4(v12);
  v14 = v13;

  if (!(v14 >> 62))
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v20 = 0;
    return v20 & 1;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v16 = sub_1007E90D4(0, v14);
    goto LABEL_6;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v14 + 32);
LABEL_6:
    v17 = v16;

    (*(v7 + 16))(v10, a2, v6);
    v18 = sub_100364518(a3);
    type metadata accessor for LaunchOptions(0);
    swift_allocObject();
    v19 = v17;
    sub_1002B8D68(v10, v18, v19);
    v20 = sub_1002C5A04();

    return v20 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10035EAC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10035EB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_1000089F8(a3, v24 - v9, &unk_101181520, &qword_100EBCC60);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000095E8(v10, &unk_101181520, &qword_100EBCC60);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10035EDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_1000089F8(a3, v24 - v9, &unk_101181520, &qword_100EBCC60);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000095E8(v10, &unk_101181520, &qword_100EBCC60);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      sub_10010FC20(&qword_101184430, &unk_100ED67A0);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      return v21;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  sub_10010FC20(&qword_101184430, &unk_100ED67A0);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void sub_10035F0A4(char a1, uint64_t a2)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v4 = &v10 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a1)
    {
    }

    else
    {
      v6 = Strong;
      if ((*((swift_isaMask & *Strong) + 0x268))())
      {
        v7 = type metadata accessor for TaskPriority();
        (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
        type metadata accessor for MainActor();
        v8 = static MainActor.shared.getter();
        v9 = swift_allocObject();
        *(v9 + 16) = v8;
        *(v9 + 24) = &protocol witness table for MainActor;
        sub_1001F4F78(0, 0, v4, &unk_100EC7C30, v9);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_10035F24C(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for Notice.Variant(0);
  v1[4] = swift_task_alloc();
  type metadata accessor for Notice(0);
  v1[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10035F340, v3, v2);
}

uint64_t sub_10035F340()
{

  v1 = sub_10035F6E4();
  if (v1)
  {
    v3 = *(v0 + 32);
    v2 = *(v0 + 40);
    swift_storeEnumTagMultiPayload();
    static Notice.variant(_:)(v3, v2);
    sub_1001DF158(v3, type metadata accessor for Notice.Variant);
    (*(*v1 + 200))(v2, 0);

    sub_1001DF158(v2, type metadata accessor for Notice);
  }

  **(v0 + 16) = v1 == 0;

  v4 = *(v0 + 8);

  return v4();
}

Swift::String_optional __swiftcall Application._extendLaunchTest()()
{
  v0 = 0x8000000100E47B90;
  v1 = 0xD000000000000013;
  result.value._object = v0;
  result.value._countAndFlagsBits = v1;
  return result;
}

id Application.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Application();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10035F578(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F3F4;

  return sub_1001F91D8(a1, v4);
}

uint64_t sub_10035F638(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002F3F4;

  return sub_10035F24C(a1);
}

uint64_t sub_10035F6E4()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];
  sub_100009F78(0, &qword_1011839F0, UIScene_ptr);
  sub_10001C070(&qword_101183DE0, &qword_1011839F0, UIScene_ptr, &protocol conformance descriptor for NSObject);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100061FC4(v2);
  v4 = v3;

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = sub_1007E90D4(0, v4);
    goto LABEL_6;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
LABEL_6:
    v7 = v6;

    v8 = UIWindowScene.noticePresenter.getter();

    return v8;
  }

  __break(1u);
  return result;
}

id sub_10035F860(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v5 = OBJC_IVAR____TtC5Music30LibraryComposersViewController____lazy_storage___headerRegistration;
  v6 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  (*(*(v6 - 8) + 56))(&v2[v5], 1, 1, v6);
  v7 = OBJC_IVAR____TtC5Music30LibraryComposersViewController____lazy_storage___listCellRegistration;
  v8 = sub_10010FC20(&qword_10118C4B8, &qword_100EC7C88);
  (*(*(v8 - 8) + 56))(&v2[v7], 1, 1, v8);
  *&v2[OBJC_IVAR____TtC5Music30LibraryComposersViewController____lazy_storage___collectionView] = 0;
  *&v2[OBJC_IVAR____TtC5Music30LibraryComposersViewController____lazy_storage___searchController] = 0;
  type metadata accessor for MusicLibrary();
  v22[0] = 2;
  *&v22[8] = static MusicLibrary.shared.getter();
  v22[16] = a1;
  v23 = 0;
  v24 = 0xE000000000000000;
  v25 = 260;
  v26 = 0;
  v27 = 0xE000000000000000;
  v28 = _swiftEmptyArrayStorage;
  v29 = &_swiftEmptySetSingleton;
  v30 = 0;
  v31 = 0xE000000000000000;
  v32 = _swiftEmptyArrayStorage;
  sub_10010FC20(&unk_10118C4C0, &qword_100EC7CB8);
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC5Music30LibraryComposersViewController_responseController] = sub_1003A2630(v22);
  v21.receiver = v2;
  v21.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v21, "initWithNibName:bundle:", 0, 0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v10 = String._bridgeToObjectiveC()();

  [v9 setTitle:v10];

  UIViewController.playActivityFeatureIdentifier.setter(4);
  v11 = [v9 traitCollection];

  v12 = UITraitCollection.preferredLargeTitleDisplayMode.getter();
  v14 = v13;

  if ((v14 & 1) == 0)
  {
    v15 = [v9 navigationItem];
    [v15 setLargeTitleDisplayMode:v12];
  }

  sub_10010FC20(&unk_101182D80, "ʫ\n");
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100EBC6B0;
  v17 = sub_100217F14();
  *(v16 + 32) = &type metadata for LibraryFilterTrait;
  *(v16 + 40) = v17;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100EBC6B0;
  v19 = sub_100137E8C();
  *(v18 + 32) = &type metadata for MusicLibraryTrait;
  *(v18 + 40) = v19;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  return v9;
}

uint64_t sub_10035FC68()
{
  v26.receiver = v0;
  v26.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v26, "viewDidLoad");
  v1 = sub_10035FFA4();
  v2 = *&v0[OBJC_IVAR____TtC5Music30LibraryComposersViewController____lazy_storage___collectionView];
  v3 = objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration);
  v4 = v2;
  v5 = [v3 init];
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 72) = static MPCPlayerCommandRequest.isAvailable(in:);
  *(v8 + 80) = 0;
  *(v8 + 88) = v6;
  v9 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  aBlock[4] = sub_1002193FC;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005A63A8;
  aBlock[3] = &unk_1010A84F8;
  v10 = _Block_copy(aBlock);

  v11 = [v9 initWithSectionProvider:v10 configuration:v5];

  _Block_release(v10);

  [v1 setCollectionViewLayout:v11];

  v12 = *&v0[OBJC_IVAR____TtC5Music30LibraryComposersViewController_responseController];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = *(v12 + 32);
  v15 = *(v12 + 40);
  *(v12 + 32) = sub_100363D28;
  *(v12 + 40) = v13;

  sub_100020438(v14, v15);

  v16 = sub_1003607E4();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = *(v16 + 88);
  v19 = *(v16 + 96);
  *(v16 + 88) = sub_100363D30;
  *(v16 + 96) = v17;

  sub_100020438(v18, v19);

  v23[3] = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v20 = sub_10001C8B8(v23);
  sub_1003609BC(v20);
  v24[3] = sub_10010FC20(&qword_10118C4B8, &qword_100EC7C88);
  v21 = sub_10001C8B8(v24);
  sub_100360C44(v21);
  return swift_arrayDestroy();
}

id sub_10035FFA4()
{
  v1 = v0;
  v2 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC5Music30LibraryComposersViewController____lazy_storage___collectionView;
  v11 = *&v1[OBJC_IVAR____TtC5Music30LibraryComposersViewController____lazy_storage___collectionView];
  if (v11)
  {
    v12 = *&v1[OBJC_IVAR____TtC5Music30LibraryComposersViewController____lazy_storage___collectionView];
LABEL_6:
    v45 = v11;
    return v12;
  }

  sub_100009F78(0, &qword_101184600, UICollectionViewCompositionalLayout_ptr);
  (*(v3 + 104))(v5, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v2);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v13 = static UICollectionViewCompositionalLayout.list(using:)();
  (*(v7 + 8))(v9, v6);
  v14 = type metadata accessor for HIMetricsCollectionView();
  objc_allocWithZone(v14);
  v15 = v13;
  v16 = sub_100188F30(v15, 1, 0);
  result = [v1 view];
  if (result)
  {
    v18 = result;
    [result bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v47.receiver = v16;
    v47.super_class = v14;
    v27 = v16;
    objc_msgSendSuper2(&v47, "frame");
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v46.receiver = v27;
    v46.super_class = v14;
    objc_msgSendSuper2(&v46, "setFrame:", v20, v22, v24, v26);
    sub_1001891B4(v29, v31, v33, v35);
    [v27 setAutoresizingMask:18];

    result = [v1 view];
    if (result)
    {
      v36 = result;
      [result addSubview:v27];

      v37 = v27;
      [v37 _setShouldPrefetchCellsWhenPerformingReloadData:1];
      [v37 setDataSource:v1];
      [v37 setDelegate:v1];
      [v37 setKeyboardDismissMode:1];
      [v37 setAllowsFocus:1];
      [v37 setRemembersLastFocusedIndexPath:1];

      v38 = AccessibilityIdentifier.libraryComposersView.unsafeMutableAddressor();
      v39 = *v38;
      v40 = v38[1];
      v41 = v38[2];
      v42 = v38[3];

      v43 = UIView.withAccessibilityIdentifier(_:)(v39, v40, v41, v42);

      v44 = *&v1[v10];
      *&v1[v10] = v43;
      v12 = v43;

      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_10036039C(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_10118C4D0, &unk_100EC9150);
  __chkstk_darwin();
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v39 - v5;
  v7 = sub_10010FC20(&unk_10118D400, &unk_100EC7CC0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v39 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v40 = v8;
    v41 = a1;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v6);

    v16 = sub_10010FC20(&unk_10118C4E0, &unk_100EC9160);
    v17 = *(v16 - 8);
    v18 = *(v17 + 48);
    v19 = v17 + 48;
    if (v18(v6, 1, v16) == 1)
    {
      sub_1000095E8(v6, &unk_10118C4D0, &unk_100EC9150);
      v20 = 1;
    }

    else
    {
      v39 = v19;
      v21 = v18;
      v22 = v10;
      v23 = v40;
      (*(v40 + 16))(v12, v6, v7);
      sub_1000095E8(v6, &unk_10118C4E0, &unk_100EC9160);
      v24 = MusicLibrarySectionedResponse.isEmpty.getter(v7);
      v25 = v23;
      v10 = v22;
      v18 = v21;
      (*(v25 + 8))(v12, v7);
      v20 = !v24;
    }

    [v15 setNeedsUpdateContentUnavailableConfiguration];
    v26 = sub_10035FFA4();
    [v26 setBouncesVertically:v20 & 1];

    v27 = OBJC_IVAR____TtC5Music30LibraryComposersViewController____lazy_storage___collectionView;
    [*&v15[OBJC_IVAR____TtC5Music30LibraryComposersViewController____lazy_storage___collectionView] setAlwaysBounceVertical:v20 & 1];
    [*&v15[v27] reloadData];
    v28 = sub_1003607E4();
    RequestResponse.Revision.content.getter(v4);
    if (v18(v4, 1, v16) == 1)
    {
      sub_1000095E8(v4, &unk_10118C4D0, &unk_100EC9150);
    }

    else
    {
      v29 = v40;
      (*(v40 + 16))(v10, v4, v7);
      sub_1000095E8(v4, &unk_10118C4E0, &unk_100EC9160);
      v30 = MusicLibrarySectionedResponse.isEmpty.getter(v7);
      (*(v29 + 8))(v10, v7);
      if (!v30)
      {
        v38 = *(v28 + 64);
        *(v28 + 64) = 1;
        if (v38)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    v31 = (*(*&v15[OBJC_IVAR____TtC5Music30LibraryComposersViewController____lazy_storage___searchController] + 120) + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
    v32 = v31[1];
    if (v32)
    {
      v33 = *v31 & 0xFFFFFFFFFFFFLL;
      if ((v32 & 0x2000000000000000) != 0)
      {
        v34 = HIBYTE(v32) & 0xF;
      }

      else
      {
        v34 = v33;
      }

      v35 = v34 != 0;
      v36 = *(v28 + 64);
      *(v28 + 64) = v35;
      if (v36 == v35)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v37 = *(v28 + 64);
      *(v28 + 64) = 0;
      if ((v37 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

LABEL_13:
    sub_10043EAB8();
LABEL_14:
  }

  return result;
}

uint64_t sub_1003607E4()
{
  v1 = OBJC_IVAR____TtC5Music30LibraryComposersViewController____lazy_storage___searchController;
  if (*&v0[OBJC_IVAR____TtC5Music30LibraryComposersViewController____lazy_storage___searchController])
  {
    v2 = *&v0[OBJC_IVAR____TtC5Music30LibraryComposersViewController____lazy_storage___searchController];
  }

  else
  {
    type metadata accessor for LibrarySearchController();
    swift_allocObject();
    v3 = v0;
    v2 = sub_10043F158(0, 0, v3);

    *&v0[v1] = v2;
  }

  return v2;
}

double sub_100360888(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC5Music30LibraryComposersViewController_responseController);
    v8 = Strong;

    if (a2)
    {
      v9 = a1;
    }

    else
    {
      v9 = 0;
    }

    if (a2)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0xE000000000000000;
    }

    v11 = *(v7 + 48);
    swift_beginAccess();
    v12 = *(v11 + 16);
    v13 = *(v11 + 32);
    v14 = *(v11 + 48);
    v15 = *(v11 + 64);
    v16 = *(v11 + 96);
    v22[4] = *(v11 + 80);
    v22[5] = v16;
    v23 = *(v11 + 112);
    v22[2] = v14;
    v22[3] = v15;
    v22[0] = v12;
    v22[1] = v13;
    v17 = *(v11 + 16);
    v25 = *(v11 + 32);
    v24 = v17;
    v18 = *(v11 + 56);
    v19 = *(v11 + 72);
    v20 = *(v11 + 88);
    v31 = *(v11 + 104);
    v30 = v20;
    v29 = v19;
    v28 = v18;

    sub_100363198(v22, &v21);

    v26 = v9;
    v27 = v10;
    sub_100378EFC(&v24);
  }

  return result;
}

uint64_t sub_1003609BC@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_10118C540, &qword_100EC0500);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music30LibraryComposersViewController____lazy_storage___headerRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &unk_10118C540, &qword_100EC0500);
  v8 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &unk_10118C540, &qword_100EC0500);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &unk_10118C540, &qword_100EC0500);
  return swift_endAccess();
}

uint64_t sub_100360C44@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_10118C510, &qword_100EC7CD8);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music30LibraryComposersViewController____lazy_storage___listCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &unk_10118C510, &qword_100EC7CD8);
  v8 = sub_10010FC20(&qword_10118C4B8, &qword_100EC7C88);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &unk_10118C510, &qword_100EC7CD8);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
  type metadata accessor for Composer();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &unk_10118C510, &qword_100EC7CD8);
  return swift_endAccess();
}

uint64_t sub_100360FB8(char a1)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for MetricsEvent.Page(0);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v1;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "viewDidAppear:", a1 & 1, v4);
  v7 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v8 = MetricsEvent.Page.libraryComposersList.unsafeMutableAddressor();
  sub_100363C68(v8, v6);
  v9 = sub_10053771C();
  v11 = v10;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v12 = qword_101218AD0;
  v13 = GroupActivitiesManager.hasJoined.getter();
  v14 = GroupActivitiesManager.participantsCount.getter();
  v15 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v7) + 0xA0))(v6, v9, v11, v13 & 1, v14, *(v12 + v15));

  return sub_100363CCC(v6);
}

void sub_100361220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[0] = a1;
  v22[1] = a4;
  sub_10010FC20(&unk_10118C4D0, &unk_100EC9150);
  __chkstk_darwin();
  v6 = v22 - v5;
  v7 = sub_10010FC20(&unk_10118D400, &unk_100EC7CC0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v22 - v9;
  v11 = sub_10010FC20(&unk_10118D3F0, &qword_100EC7D18);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = v22 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v6);

    v19 = sub_10010FC20(&unk_10118C4E0, &unk_100EC9160);
    if ((*(*(v19 - 8) + 48))(v6, 1, v19) == 1)
    {
      sub_1000095E8(v6, &unk_10118C4D0, &unk_100EC9150);

      return;
    }

    (*(v8 + 16))(v10, v6, v7);
    sub_1000095E8(v6, &unk_10118C4E0, &unk_100EC9160);
    v20 = MusicLibrarySectionedResponse.sections.getter();
    (*(v8 + 8))(v10, v7);
    v21 = IndexPath.section.getter();
    if ((v21 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v21 < *(v20 + 16))
    {
      (*(v12 + 16))(v14, v20 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v21, v11);

      (*(v12 + 32))(v16, v14, v11);
      swift_getKeyPath();
      MusicLibrarySection.subscript.getter();

      sub_1005FF7FC(v22[2], v22[3], v23);

      UICollectionViewCell.contentConfiguration.setter();

      (*(v12 + 8))(v16, v11);
      return;
    }

    __break(1u);
  }
}

void sub_1003615DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10010FC20(&unk_10118C520, &qword_100EC7CE0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v14 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    __chkstk_darwin();
    v14[-2] = a3;
    _s8TextCellVMa(0);
    sub_100363BC4(&qword_10118DE90, _s8TextCellVMa, &unk_100ED7538);
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.horizontal.getter();

    UIHostingConfiguration.margins(_:_:)();
    v13 = *(v6 + 8);
    v13(v8, v5);
    static Edge.Set.vertical.getter();
    v14[3] = v5;
    v14[4] = sub_100020674(&unk_10118C530, &unk_10118C520, &qword_100EC7CE0, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10001C8B8(v14);
    UIHostingConfiguration.margins(_:_:)();
    v13(v10, v5);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_10036186C@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for Font.TextStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Composer.name.getter();
  v8 = v7;
  v9 = _s8TextCellVMa(0);
  v10 = UIFontTextStyleBody;
  static SymbolRenderingMode.monochrome.getter();
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v6;
  a1[3] = v8;
  a1[4] = v10;
  v15 = 0x4040000000000000;
  v11 = *(v3 + 104);
  v11(v5, enum case for Font.TextStyle.title(_:), v2);
  sub_100363C0C();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v15 = 0x402E000000000000;
  v11(v5, enum case for Font.TextStyle.body(_:), v2);
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v12 = *(v9 + 40);
  *(a1 + v12) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100361D48(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v16 - v8;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v10 == a3)
  {
    goto LABEL_7;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v12 & 1) == 0)
  {
    strcpy(v16, "Unknown kind=");
    v16[7] = -4864;
    v13._countAndFlagsBits = a2;
    v13._object = a3;
    String.append(_:)(v13);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_7:
  }

  sub_1003609BC(v9);
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  v14 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
  (*(v7 + 8))(v9, v6);
  return v14;
}

void *sub_10036206C(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  sub_10010FC20(&unk_10118ABC0, &unk_100EC03E0);
  __chkstk_darwin();
  v33 = &v29 - v4;
  v5 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin();
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for UICellAccessory.DisplayedState();
  v8 = *(v31 - 8);
  __chkstk_darwin();
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&qword_10118C4B8, &qword_100EC7C88);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v29 - v13;
  sub_10010FC20(&unk_10118C4F0, &qword_100ECB9A0);
  __chkstk_darwin();
  v36 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v29 - v16;
  v30 = v2;
  sub_10037A404(a2, &v29 - v16);
  sub_100360C44(v14);
  v18 = sub_1007F8F08(v14, a2, v17);
  (*(v12 + 8))(v14, v11);
  sub_10010FC20(&unk_101184740, &qword_100ED5D60);
  type metadata accessor for UICellAccessory();
  *(swift_allocObject() + 16) = xmmword_100EBC6B0;
  v19 = v31;
  (*(v8 + 104))(v10, enum case for UICellAccessory.DisplayedState.always(_:), v31);
  v20 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v20 - 8) + 56))(v33, 1, 1, v20);
  UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
  static UICellAccessory.disclosureIndicator(displayed:options:)();
  (*(v34 + 8))(v7, v35);
  (*(v8 + 8))(v10, v19);
  UICollectionViewListCell.accessories.setter();
  v21 = [v30 traitCollection];
  v22 = [v21 userInterfaceIdiom];

  if (v22 != 6)
  {
    v23 = v18;

    [v23 directionalLayoutMargins];
    [v23 setDirectionalLayoutMargins:?];
  }

  v24 = v36;
  sub_1000089F8(v17, v36, &unk_10118C4F0, &qword_100ECB9A0);
  v25 = type metadata accessor for Composer();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_1000095E8(v24, &unk_10118C4F0, &qword_100ECB9A0);
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
  }

  else
  {
    *(&v38 + 1) = v25;
    v39 = sub_100363BC4(&unk_10118C500, &type metadata accessor for Composer, &protocol conformance descriptor for Composer);
    v27 = sub_10001C8B8(&v37);
    (*(v26 + 32))(v27, v24, v25);
  }

  sub_1000095E8(v17, &unk_10118C4F0, &qword_100ECB9A0);
  sub_1000095E8(&v37, &qword_1011A3DD0, &unk_100EC03F0);
  return v18;
}

uint64_t sub_100362880()
{
  sub_10010FC20(&unk_10118C4D0, &unk_100EC9150);
  __chkstk_darwin();
  v1 = &v11 - v0;
  v2 = sub_10010FC20(&unk_10118D400, &unk_100EC7CC0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v11 - v6;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v1);

  v8 = sub_10010FC20(&unk_10118C4E0, &unk_100EC9160);
  if ((*(*(v8 - 8) + 48))(v1, 1, v8) == 1)
  {
    sub_1000095E8(v1, &unk_10118C4D0, &unk_100EC9150);
  }

  else
  {
    (*(v3 + 16))(v5, v1, v2);
    sub_1000095E8(v1, &unk_10118C4E0, &unk_100EC9160);
    (*(v3 + 32))(v7, v5, v2);
    if (MusicLibrarySectionedResponse.isEmpty.getter(v2))
    {
      *(&v12 + 1) = type metadata accessor for UIContentUnavailableConfiguration();
      v13 = &protocol witness table for UIContentUnavailableConfiguration;
      v9 = sub_10001C8B8(&v11);
      sub_1007D8EE8(v9);
      UIViewController.contentUnavailableConfiguration.setter();
      return (*(v3 + 8))(v7, v2);
    }

    (*(v3 + 8))(v7, v2);
  }

  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  return UIViewController.contentUnavailableConfiguration.setter();
}

uint64_t type metadata accessor for LibraryComposersViewController(uint64_t a1)
{
  result = qword_10118C4A0;
  if (!qword_10118C4A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100362E54(uint64_t a1)
{
  sub_10003920C(319, &unk_101184560, &unk_10118A650, &qword_100EC02B0);
  if (v1 <= 0x3F)
  {
    sub_10003920C(319, &qword_10118C4B0, &qword_10118C4B8, &qword_100EC7C88);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100362F6C(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC5Music30LibraryComposersViewController_responseController];
  v2 = [a1 traitCollection];
  sub_100217F14();
  UITraitCollection.subscript.getter();

  v3 = sub_10049CB78();

  v4 = *(v1 + 48);
  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = *(v4 + 32);
  v7 = *(v4 + 48);
  v8 = *(v4 + 64);
  v9 = *(v4 + 96);
  v23[4] = *(v4 + 80);
  v23[5] = v9;
  v24 = *(v4 + 112);
  v23[2] = v7;
  v23[3] = v8;
  v23[0] = v5;
  v23[1] = v6;
  v16 = *(v4 + 16);
  v17 = v3 & 1;
  v10 = *(v4 + 33);
  v19 = *(v4 + 49);
  v18 = v10;
  v11 = *(v4 + 65);
  v12 = *(v4 + 81);
  v13 = *(v4 + 97);
  *&v22[15] = *(v4 + 112);
  *v22 = v13;
  v21 = v12;
  v20 = v11;
  sub_100363198(v23, &v15);
  return sub_100378EFC(&v16);
}

uint64_t sub_100363090(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC5Music30LibraryComposersViewController_responseController];
  v2 = [a1 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v3 = *&v24[0];
  v4 = *(v1 + 48);
  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = *(v4 + 32);
  v7 = *(v4 + 48);
  v8 = *(v4 + 64);
  v9 = *(v4 + 96);
  v24[4] = *(v4 + 80);
  v24[5] = v9;
  v25 = *(v4 + 112);
  v24[2] = v7;
  v24[3] = v8;
  v24[0] = v5;
  v24[1] = v6;
  v10 = v5;
  v11 = *(v4 + 32);
  v19 = *(v4 + 48);
  v18 = v11;
  v12 = *(v4 + 64);
  v13 = *(v4 + 80);
  v14 = *(v4 + 96);
  v23 = *(v4 + 112);
  v22 = v14;
  v21 = v13;
  v20 = v12;
  sub_100363198(v24, v16);

  v17[0] = v10;
  v17[1] = v3;
  return sub_100378EFC(v17);
}

uint64_t sub_1003631F4()
{
  sub_10010FC20(&unk_10118C4D0, &unk_100EC9150);
  __chkstk_darwin();
  v1 = &v10 - v0;
  v2 = sub_10010FC20(&unk_10118D400, &unk_100EC7CC0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - v4;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v1);

  v6 = sub_10010FC20(&unk_10118C4E0, &unk_100EC9160);
  if ((*(*(v6 - 8) + 48))(v1, 1, v6) == 1)
  {
    sub_1000095E8(v1, &unk_10118C4D0, &unk_100EC9150);
    return 0;
  }

  else
  {
    (*(v3 + 16))(v5, v1, v2);
    sub_1000095E8(v1, &unk_10118C4E0, &unk_100EC9160);
    v8 = MusicLibrarySectionedResponse.sections.getter();
    (*(v3 + 8))(v5, v2);
    v7 = *(v8 + 16);
  }

  return v7;
}

uint64_t sub_1003633F8(unint64_t a1)
{
  v19 = a1;
  v1 = sub_10010FC20(&qword_10118C550, &qword_100EBD5B0);
  v18 = *(v1 - 8);
  __chkstk_darwin();
  v3 = &v18 - v2;
  v4 = sub_10010FC20(&unk_10118D3F0, &qword_100EC7D18);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18 - v6;
  sub_10010FC20(&unk_10118C4D0, &unk_100EC9150);
  __chkstk_darwin();
  v9 = &v18 - v8;
  v10 = sub_10010FC20(&unk_10118D400, &unk_100EC7CC0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v18 - v12;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v9);

  v14 = sub_10010FC20(&unk_10118C4E0, &unk_100EC9160);
  if ((*(*(v14 - 8) + 48))(v9, 1, v14) == 1)
  {
    sub_1000095E8(v9, &unk_10118C4D0, &unk_100EC9150);
    return 0;
  }

  (*(v11 + 16))(v13, v9, v10);
  sub_1000095E8(v9, &unk_10118C4E0, &unk_100EC9160);
  v16 = MusicLibrarySectionedResponse.sections.getter();
  result = (*(v11 + 8))(v13, v10);
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(v16 + 16) <= v19)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  (*(v5 + 16))(v7, v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19, v4);

  MusicLibrarySection.items.getter();
  (*(v5 + 8))(v7, v4);
  sub_100020674(&unk_10118C230, &qword_10118C550, &qword_100EBD5B0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v17 = dispatch thunk of Collection.distance(from:to:)();
  (*(v18 + 8))(v3, v1);
  return v17;
}

void sub_100363814(uint64_t a1)
{
  v2 = v1;
  sub_10010FC20(&unk_10119F3A0, &qword_100EC7CD0);
  __chkstk_darwin();
  v5 = &v21 - v4;
  _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118C4F0, &qword_100ECB9A0);
  __chkstk_darwin();
  v9 = &v21 - v8;
  v10 = type metadata accessor for Composer();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10037A404(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000095E8(v9, &unk_10118C4F0, &qword_100ECB9A0);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    (*(v11 + 16))(v7, v13, v10);
    swift_storeEnumTagMultiPayload();
    v14 = [v1 traitCollection];
    sub_100217F14();
    UITraitCollection.subscript.getter();

    v15 = sub_10049CB78();

    v16 = objc_allocWithZone(type metadata accessor for LibraryAlbumsViewController(0));
    v17 = sub_1006E7454(v7, v15 & 1);
    v18 = [v2 navigationController];
    if (v18)
    {
      v19 = v18;
      UIViewController.traitOverrides.getter();
      v20 = type metadata accessor for UITraitOverrides();
      (*(*(v20 - 8) + 56))(v5, 0, 1, v20);
      UINavigationController.push(_:traitOverrides:animated:)(v17, v5, 1);

      sub_1000095E8(v5, &unk_10119F3A0, &qword_100EC7CD0);
      (*(v11 + 8))(v13, v10);
    }

    else
    {
      (*(v11 + 8))(v13, v10);
    }
  }
}

uint64_t sub_100363BC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100363C0C()
{
  result = qword_10118DEA0;
  if (!qword_10118DEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118DEA0);
  }

  return result;
}

uint64_t sub_100363C68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100363CCC(uint64_t a1)
{
  v2 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100363D38(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10010FC20(&unk_101180220, &unk_100F10E60);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        sub_1000160F8(*(a1 + 56) + 40 * v14, &v29);
        v27 = v17;
        v28 = v16;

        swift_dynamicCast();
        sub_100016270(&v23, v25);
        sub_100016270(v25, v26);
        sub_100016270(v26, &v24);
        result = sub_100019C10(v17, v16);
        if (v18)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v17;
          v9[1] = v16;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_10000959C(v11);
          result = sub_100016270(&v24, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v19 = (v2[6] + 16 * result);
          *v19 = v17;
          v19[1] = v16;
          result = sub_100016270(&v24, (v2[7] + 32 * result));
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v2[2] = v22;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_100363FA8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10010FC20(&qword_1011801C0, &qword_100EDD960);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100016270(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100016270(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v7[v16 >> 6]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = v7[v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~v7[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_100016270(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_100364270(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10010FC20(&qword_101180418, &unk_100EBA6D0);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = _swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 8;

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v10 = (v7 << 9) | (8 * __clz(__rbit64(v4)));
    v11 = *(*(a1 + 48) + v10);
    v23 = *(*(a1 + 56) + v10);
    v12 = v11;
    swift_unknownObjectRetain();
    swift_dynamicCast();
    sub_100016270((v24 + 8), v22);
    sub_100016270(v22, v24);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v13 = Hasher._finalize()();

    v14 = -1 << *(v1 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~v6[v15 >> 6]) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = v6[v16];
        if (v20 != -1)
        {
          v8 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v15) & ~v6[v15 >> 6])) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
    v4 &= v4 - 1;
    *(v1[6] + 8 * v8) = v12;
    sub_100016270(v24, (v1[7] + 32 * v8));
    ++v1[2];
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_100364518(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10010FC20(&qword_1011801C0, &qword_100EDD960);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    sub_10000DD18(*(a1 + 56) + 32 * v13, v34 + 8);
    *&v34[0] = v14;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v33 = v35;
    *&v31[0] = v14;
    type metadata accessor for OpenURLOptionsKey(0);
    v15 = v14;
    swift_dynamicCast();
    sub_100016270((v32 + 8), v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_100016270(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_100016270(v30, v31);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~v7[v17 >> 6]) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = v7[v18];
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~v7[v17 >> 6])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v23;
    *(v11 + 16) = v24;
    *(v11 + 32) = v25;
    result = sub_100016270(v31, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1003647E0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10010FC20(&qword_1011801C0, &qword_100EDD960);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000DD18(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100016270(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100016270(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100016270(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v7[v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100016270(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100364AF0(uint64_t a1, uint64_t (*a2)(uint64_t), void *a3, void *a4)
{
  v6 = a2(a1);
  v8 = *v6;
  v7 = v6[1];
  *a3 = v8;
  *a4 = v7;
}

uint64_t *sub_100364B38()
{
  type metadata accessor for MLI.Observer(0);
  swift_allocObject();
  result = sub_100364B78();
  qword_101218B28 = result;
  return result;
}

uint64_t *sub_100364B78()
{
  v1 = v0;
  v59 = *v0;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v57 = &v56 - v2;
  v61 = sub_10010FC20(&qword_10118CA88, &unk_100EDDA20);
  v3 = *(v61 - 1);
  __chkstk_darwin();
  v5 = &v56 - v4;
  sub_10010FC20(&unk_1011A4B90, &unk_100ED2800);
  __chkstk_darwin();
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v56 - v8;
  *(v0 + 128) = 0;
  *(v0 + 6) = 0u;
  *(v0 + 7) = 0u;
  *(v0 + 4) = 0u;
  *(v0 + 5) = 0u;
  *(v0 + 2) = 0u;
  *(v0 + 3) = 0u;
  *(v0 + 1) = 0u;
  v0[17] = 0;
  v0[18] = 0;
  v60 = OBJC_IVAR____TtCO5Music3MLI8Observer__viewModel;
  v56 = type metadata accessor for LibraryImport.ViewModel(0);
  v10 = *(*(v56 - 8) + 56);
  v10(v9, 1, 1, v56);
  sub_1000089F8(v9, v7, &unk_1011A4B90, &unk_100ED2800);
  Published.init(initialValue:)();
  sub_1000095E8(v9, &unk_1011A4B90, &unk_100ED2800);
  (*(v3 + 32))(v0 + v60, v5, v61);
  v11 = (v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_sessionID);
  *v11 = 0;
  v11[1] = 0;
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_shouldMakeRequests) = 0;
  v12 = OBJC_IVAR____TtCO5Music3MLI8Observer_sessionIDBinding;
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_sessionIDBinding) = 0;
  v13 = OBJC_IVAR____TtCO5Music3MLI8Observer_networkConnectivityBinding;
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_networkConnectivityBinding) = 0;
  v58 = OBJC_IVAR____TtCO5Music3MLI8Observer_accountDidChangeObserver;
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_accountDidChangeObserver) = 0;
  v60 = OBJC_IVAR____TtCO5Music3MLI8Observer_foregroundObserver;
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_foregroundObserver) = 0;
  v14 = v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_stateHandler;
  *v14 = 0;
  v61 = v14;
  *(v14 + 8) = 1;
  v15 = OBJC_IVAR____TtCO5Music3MLI8Observer_mliReviewURL;
  v16 = type metadata accessor for URL();
  (*(*(v16 - 8) + 56))(v0 + v15, 1, 1, v16);
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_retryCount) = 0;
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_currentRetryDelay) = 2;
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_currentTask) = 0;
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_isInProgress) = 0;
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_hasNetworkConnectivity) = 0;
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_didReceiveError) = 0;
  v10(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_queuedViewModel, 1, 1, v56);
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_canUpdateViewModel) = 1;
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_bagObserver) = 0;
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_urlBagObserver) = 0;
  v17 = objc_opt_self();
  v18 = [v17 standardUserDefaults];
  strcpy(v67, "mliDidDismiss");
  v67[7] = -4864;
  sub_100009838();
  NSUserDefaults.subscript.getter(&aBlock);

  if (v64)
  {
    if (swift_dynamicCast())
    {
      v19 = v67[0];
      goto LABEL_6;
    }
  }

  else
  {
    sub_1000095E8(&aBlock, &unk_101183F30, qword_100EBF960);
  }

  v19 = 0;
LABEL_6:
  *(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_didDismissBanner) = v19;
  v20 = [v17 standardUserDefaults];
  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 stringForKey:v21];

  if (v22)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = v57;
  URL.init(string:)(v24, v57);
  swift_beginAccess();
  sub_10006B010(v25, v1 + v15, &qword_101183A20, &unk_100EBCF80);
  swift_endAccess();
  type metadata accessor for Whitetail.Binding();
  if (qword_10117F620 != -1)
  {
    swift_once();
  }

  UIScreen.Dimensions.size.getter();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v64 = &type metadata for UserDefaultsKeyValueTrigger;
  v65 = &protocol witness table for UserDefaultsKeyValueTrigger;
  v34 = swift_allocObject();
  *&aBlock = v34;
  v34[2] = v27;
  v34[3] = v29;
  v34[4] = v31;
  v34[5] = v33;
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = swift_allocObject();
  v37 = v59;
  *(v36 + 16) = v35;
  *(v36 + 24) = v37;

  *(v1 + v12) = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(&aBlock, 0, sub_10036ECA4, v36);

  v38 = *ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange.unsafeMutableAddressor();
  ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
  UIScreen.Dimensions.size.getter();
  v64 = &type metadata for NotificationTrigger;
  v65 = &protocol witness table for NotificationTrigger;
  *&aBlock = v39;
  *(&aBlock + 1) = v40;
  v41 = swift_allocObject();
  swift_weakInit();

  *(v1 + v13) = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(&aBlock, 1, sub_10036ECAC, v41);

  v42 = ICActiveUserIdentityDidChangeNotification;
  v43 = objc_opt_self();
  v44 = v42;
  v45 = [v43 defaultIdentityStore];
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v46 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v44, v45, 1, 1, sub_1003723AC, 0);
  *(v1 + v58) = v46;

  v47 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  v48 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillEnterForegroundNotification, 0, 1, 1, sub_100372520, v47);
  *(v1 + v60) = v48;

  sub_100027010();
  v49 = static OS_dispatch_queue.main.getter();
  v50 = String._bridgeToObjectiveC()();
  v51 = swift_allocObject();
  swift_weakInit();

  v65 = sub_100372528;
  v66 = v51;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v63 = sub_100366178;
  v64 = &unk_1010A8740;
  v52 = _Block_copy(&aBlock);

  v53 = MSVLogAddStateHandler();
  _Block_release(v52);

  v54 = v61;
  *v61 = v53;
  *(v54 + 8) = 0;
  sub_100366288();
  sub_100368FA0();
  sub_100369E70(0);
  return v1;
}

double sub_1003654C4(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v4 = &v11 - v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    type metadata accessor for MainActor();

    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = &protocol witness table for MainActor;
    v10[4] = v7;
    v10[5] = a2;
    sub_1001F4CB8(0, 0, v4, &unk_100EC7F78, v10);
  }

  return result;
}

uint64_t sub_10036561C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_10010FC20(&unk_1011A4B90, &unk_100ED2800);
  v4[3] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100365748, v7, v6);
}

uint64_t sub_100365748()
{
  v29 = v0;

  sub_10036CFF0();
  sub_100368FA0();
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  if (qword_10117F620 != -1)
  {
    swift_once();
  }

  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 stringForKey:v3];

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = [v1 standardUserDefaults];
  v9.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
  if (qword_10117F628 != -1)
  {
    swift_once();
  }

  v10 = String._bridgeToObjectiveC()();
  [v8 setValue:v9.super.super.isa forKey:v10];

  v11 = [v1 standardUserDefaults];
  if (v7)
  {
    v13 = v0[5];
    v12 = v0[6];
    v14 = v0[4];
    Date.init()();
    Date.timeIntervalSinceReferenceDate.getter();
    (*(v13 + 8))(v12, v14);
    v15.super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;
  }

  else
  {
    v15.super.super.isa = 0;
  }

  v16 = String._bridgeToObjectiveC()();
  [v11 setValue:v15.super.super.isa forKey:v16];

  swift_unknownObjectRelease();
  if (qword_10117F658 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000060E4(v17, qword_101218B30);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v28 = v21;
    *v20 = 136446210;
    if (v7)
    {
      v22 = v7;
    }

    else
    {
      v5 = 7104878;
      v22 = 0xE300000000000000;
    }

    v23 = sub_1000105AC(v5, v22, &v28);

    *(v20 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v18, v19, "sessionID: %{public}s", v20, 0xCu);
    sub_10000959C(v21);
  }

  if (v7)
  {

    sub_1003685AC();
  }

  else
  {
    v24 = v0[3];
    v25 = type metadata accessor for LibraryImport.ViewModel(0);
    (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
    sub_100369A78(v24);
    sub_1000095E8(v24, &unk_1011A4B90, &unk_100ED2800);
  }

  v26 = v0[1];

  return v26();
}

double sub_100365B88(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static ApplicationCapabilities.shared.getter(v2);
    sub_100014984(v2);
    sub_100369564(v2[1]);
  }

  return result;
}

double sub_100365BF4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100369E70(1);
  }

  return result;
}

uint64_t sub_100365C50(char a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1 & 1) != 0 && (static ApplicationCapabilities.shared.getter(v12), v7 = v13, , sub_100014984(v12), v8 = sub_10048BBDC(10, v7), , (v8))
    {
      v9 = sub_100365D48();
      v10 = sub_1003647E0(v9);

      v11 = a2(v10);

      return v11;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

unint64_t sub_100365D48()
{
  v17[1] = *v0;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v2 = v17 - v1;
  sub_10010FC20(&unk_1011972C0, &qword_100ECF9B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EC7D50;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000044;
  v4 = *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_sessionID + 8);
  v17[2] = *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_sessionID);
  v17[3] = v4;

  sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
  *(inited + 48) = String.init<A>(describing:)();
  *(inited + 56) = v5;
  *(inited + 72) = &type metadata for String;
  strcpy((inited + 80), "isInProgress");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_isInProgress);
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0xD000000000000014;
  *(inited + 136) = 0x8000000100E47F00;
  *(inited + 144) = sub_100366EA8() & 1;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0xD000000000000012;
  *(inited + 184) = 0x8000000100E47D80;
  *(inited + 192) = *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_shouldMakeRequests);
  *(inited + 216) = &type metadata for Bool;
  *(inited + 224) = 0x6965636552646964;
  *(inited + 232) = 0xEF726F7272456576;
  *(inited + 240) = *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_didReceiveError);
  *(inited + 264) = &type metadata for Bool;
  *(inited + 272) = 0xD000000000000010;
  *(inited + 280) = 0x8000000100E47DA0;
  *(inited + 288) = *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_didDismissBanner);
  *(inited + 312) = &type metadata for Bool;
  *(inited + 320) = 0x5255776569766572;
  *(inited + 328) = 0xE90000000000004CLL;
  v6 = OBJC_IVAR____TtCO5Music3MLI8Observer_mliReviewURL;
  swift_beginAccess();
  sub_1000089F8(v0 + v6, v2, &qword_101183A20, &unk_100EBCF80);
  *(inited + 336) = String.init<A>(describing:)();
  *(inited + 344) = v7;
  *(inited + 360) = &type metadata for String;
  *(inited + 368) = 0xD000000000000013;
  *(inited + 376) = 0x8000000100E47F20;
  v8 = [objc_opt_self() standardUserDefaults];
  if (qword_10117F628 != -1)
  {
    swift_once();
  }

  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 stringForKey:v9];

  if (!v10)
  {
    v14 = (inited + 384);
    *(inited + 408) = &type metadata for String;
    goto LABEL_7;
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = (inited + 384);
  *(inited + 408) = &type metadata for String;
  if (!v13)
  {
LABEL_7:
    *v14 = 7104878;
    v13 = 0xE300000000000000;
    goto LABEL_8;
  }

  *v14 = v11;
LABEL_8:
  *(inited + 392) = v13;
  *(inited + 416) = 0xD000000000000010;
  *(inited + 424) = 0x8000000100E47F40;
  sub_1003718A8((inited + 432));
  *(inited + 464) = 0x65646F4D77656976;
  *(inited + 472) = 0xE90000000000006CLL;
  sub_100371A90((inited + 480));
  v15 = sub_10010BC60(inited);
  swift_setDeallocating();
  sub_10010FC20(&unk_1011927D0, &unk_100EBA560);
  swift_arrayDestroy();
  return v15;
}

uint64_t sub_100366178(uint64_t a1, char a2, void *aBlock)
{
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;

  v7 = v4(a2 & 1, sub_100372530, v6);

  return v7;
}

uint64_t sub_100366218(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  v4 = (*(a2 + 16))(a2, v3.super.isa);

  return v4;
}

void sub_100366288()
{
  v1 = v0;
  BagProvider.shared.unsafeMutableAddressor();

  v2 = BagProvider.bag.getter();

  if (v2)
  {
    v3 = [v2 dictionaryForBagKey:ICURLBagKeyMusicSubscription];
    if (v3)
    {
      v4 = v3;
      v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v6 = sub_10005476C(v5);

      if (v6)
      {
        if (*(v6 + 16) && (v7 = sub_100019C10(6909037, 0xE300000000000000), (v8 & 1) != 0))
        {
          sub_10000DD18(*(v6 + 56) + 32 * v7, v58);

          sub_10010FC20(&qword_101197BD0, &qword_100EC9700);
          if (swift_dynamicCast())
          {
            v9 = v59;
            v10 = *(v59 + 16);
            if (v10)
            {
              v11 = sub_100019C10(0x72676F7250696C6DLL, 0xEF74786554737365);
              if (v12)
              {
                sub_10000DD18(*(v9 + 56) + 32 * v11, v58);
                v13 = swift_dynamicCast();
                v10 = v59;
                v14 = v60;
                if (!v13)
                {
                  v10 = 0;
                  v14 = 0;
                }

LABEL_26:
                *(v1 + 16) = v10;
                *(v1 + 24) = v14;

                if (*(v9 + 16) && (v25 = sub_100019C10(0xD000000000000010, 0x8000000100E47FF0), (v26 & 1) != 0))
                {
                  sub_10000DD18(*(v9 + 56) + 32 * v25, v58);
                  v27 = swift_dynamicCast();
                  if (v27)
                  {
                    v28 = v59;
                  }

                  else
                  {
                    v28 = 0;
                  }

                  if (v27)
                  {
                    v29 = v60;
                  }

                  else
                  {
                    v29 = 0;
                  }
                }

                else
                {
                  v28 = 0;
                  v29 = 0;
                }

                v30 = *(v9 + 16);
                if (v30)
                {
                  v31 = sub_100019C10(0xD000000000000016, 0x8000000100E48010);
                  if (v32)
                  {
                    sub_10000DD18(*(v9 + 56) + 32 * v31, v58);
                    v33 = swift_dynamicCast();
                    v30 = v59;
                    v34 = v60;
                    if (!v33)
                    {
                      v30 = 0;
                      v34 = 0;
                    }

                    goto LABEL_41;
                  }

                  v30 = 0;
                }

                v34 = 0;
LABEL_41:
                *(v1 + 32) = v28;
                *(v1 + 40) = v29;
                *(v1 + 48) = v30;
                *(v1 + 56) = v34;

                if (*(v9 + 16) && (v35 = sub_100019C10(0xD000000000000018, 0x8000000100E48030), (v36 & 1) != 0))
                {
                  sub_10000DD18(*(v9 + 56) + 32 * v35, v58);
                  v37 = swift_dynamicCast();
                  v38 = v59;
                  if (!v37)
                  {
                    v38 = 0;
                  }

                  v57 = v38;
                  if (v37)
                  {
                    v39 = v60;
                  }

                  else
                  {
                    v39 = 0;
                  }
                }

                else
                {
                  v57 = 0;
                  v39 = 0;
                }

                if (*(v9 + 16) && (v40 = sub_100019C10(0xD000000000000017, 0x8000000100E48050), (v41 & 1) != 0))
                {
                  sub_10000DD18(*(v9 + 56) + 32 * v40, v58);
                  v42 = swift_dynamicCast();
                  if (v42)
                  {
                    v43 = v59;
                  }

                  else
                  {
                    v43 = 0;
                  }

                  if (v42)
                  {
                    v44 = v60;
                  }

                  else
                  {
                    v44 = 0;
                  }
                }

                else
                {
                  v43 = 0;
                  v44 = 0;
                }

                if (*(v9 + 16) && (v45 = sub_100019C10(0xD00000000000001ALL, 0x8000000100E48070), (v46 & 1) != 0))
                {
                  sub_10000DD18(*(v9 + 56) + 32 * v45, v58);
                  v47 = swift_dynamicCast();
                  if (v47)
                  {
                    v48 = v59;
                  }

                  else
                  {
                    v48 = 0;
                  }

                  if (v47)
                  {
                    v49 = v60;
                  }

                  else
                  {
                    v49 = 0;
                  }
                }

                else
                {
                  v48 = 0;
                  v49 = 0;
                }

                if (*(v9 + 16) && (v50 = sub_100019C10(0xD00000000000001BLL, 0x8000000100E48090), (v51 & 1) != 0))
                {
                  sub_10000DD18(*(v9 + 56) + 32 * v50, &v59);

                  v52 = swift_dynamicCast();
                  v54 = *(&v58[0] + 1);
                  v53 = *&v58[0];
                  if (!v52)
                  {
                    v53 = 0;
                    v54 = 0;
                  }
                }

                else
                {

                  v53 = 0;
                  v54 = 0;
                }

                v55 = *(v1 + 80);
                v58[0] = *(v1 + 64);
                v58[1] = v55;
                v56 = *(v1 + 112);
                v58[2] = *(v1 + 96);
                v58[3] = v56;
                *(v1 + 64) = v57;
                *(v1 + 72) = v39;
                *(v1 + 80) = v43;
                *(v1 + 88) = v44;
                *(v1 + 96) = v48;
                *(v1 + 104) = v49;
                *(v1 + 112) = v53;
                *(v1 + 120) = v54;
                sub_100373974(v58);
                return;
              }

              v10 = 0;
            }

            v14 = 0;
            goto LABEL_26;
          }
        }

        else
        {
        }
      }
    }

    if (qword_10117F658 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000060E4(v21, qword_101218B30);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Unable to find mli key from bag", v24, 2u);
    }
  }

  else
  {
    if (qword_10117F658 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000060E4(v15, qword_101218B30);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to receive, creating bag observer", v18, 2u);
    }

    v19 = swift_allocObject();
    swift_weakInit();

    v20 = BagProvider.createObserver(handler:)(sub_10037396C, v19);

    *(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_bagObserver) = v20;
  }
}

double sub_10036697C(uint64_t a1, uint64_t a2)
{
  if (qword_10117F658 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, qword_101218B30);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received bag, retrying", v5, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtCO5Music3MLI8Observer_bagObserver) = 0;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100366288();
  }

  return result;
}

uint64_t sub_100366ACC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64657472617473;
  if (v2 != 1)
  {
    v5 = 0x6465776569766572;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x64657472617473;
  if (*a2 != 1)
  {
    v8 = 0x6465776569766572;
    v3 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100366BCC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100366C70(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_100366D00(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100366DA0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100372BA8(*a1);
  *a2 = result;
  return result;
}

void sub_100366DD0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64657472617473;
  if (v2 != 1)
  {
    v5 = 0x6465776569766572;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

double sub_100366E30@<D0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1);

  return result;
}

uint64_t sub_100366EA8()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_sessionID + 8))
  {
    v2 = *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_didDismissBanner) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  if (qword_10117F658 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000060E4(v3, qword_101218B30);
  swift_retain_n();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 67240706;
    *(v6 + 4) = v2 & 1;
    *(v6 + 8) = 2082;

    sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, &v13);

    *(v6 + 10) = v10;
    *(v6 + 18) = 1026;
    v11 = *(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_didDismissBanner);

    *(v6 + 20) = v11;

    _os_log_impl(&_mh_execute_header, v4, v5, "shouldShowMLIBannerView = %{BOOL,public}d\nsessionID: %{public}s\ndidDismissBanner: %{BOOL,public}d", v6, 0x18u);
    sub_10000959C(v7);
  }

  else
  {
  }

  return v2 & 1;
}

double sub_1003670A4(uint64_t a1)
{
  v2 = v1;
  v17 = *v2;
  v4 = type metadata accessor for LibraryImportStatus();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v5 + 16))(v7, a1, v4);
  type metadata accessor for MainActor();

  v11 = static MainActor.shared.getter();
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = (v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = &protocol witness table for MainActor;
  (*(v5 + 32))(v14 + v12, v7, v4);
  *(v14 + v13) = v2;
  *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = v17;
  sub_1001F4CB8(0, 0, v9, &unk_100EC8000, v14);

  return result;
}

uint64_t sub_1003672F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for LibraryImportStatus();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003673E4, v8, v7);
}

uint64_t sub_1003673E4()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];

  (*(v3 + 16))(v1, v4, v2);
  v5 = (*(v3 + 88))(v1, v2);
  if (v5 == enum case for LibraryImportStatus.initialized(_:))
  {
    v6 = v0[6];
    (*(v0[5] + 96))(v6, v0[4]);
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v9 = [objc_opt_self() standardUserDefaults];
    v10 = String._bridgeToObjectiveC()();

    if (qword_10117F620 != -1)
    {
      swift_once();
    }

    v11 = v0[3];
    v12 = String._bridgeToObjectiveC()();
    [v9 setValue:v10 forKey:v12];

    *(v11 + 136) = v7;
    *(v11 + 144) = v8;
    *(v11 + 128) = 1;

    sub_10036E140();
  }

  else if (v5 == enum case for LibraryImportStatus.userDismissedWebView(_:))
  {
    if (!*(v0[3] + OBJC_IVAR____TtCO5Music3MLI8Observer_sessionID + 8))
    {
      sub_10036E140();
    }
  }

  else if (v5 == enum case for LibraryImportStatus.dismissedReview(_:))
  {
    sub_100368C10();
  }

  else
  {
    (*(v0[5] + 8))(v0[6], v0[4]);
  }

  v13 = v0[1];

  return v13();
}

void sub_100367604(char a1)
{
  v3 = a1 & 1;
  sub_10010FC20(&unk_1011A4B90, &unk_100ED2800);
  __chkstk_darwin();
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtCO5Music3MLI8Observer_didDismissBanner;
  LODWORD(v4) = *(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_didDismissBanner);
  *(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_didDismissBanner) = a1;
  if (v4 != v3)
  {
    v7 = [objc_opt_self() standardUserDefaults];
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v9 = String._bridgeToObjectiveC()();
    [v7 setValue:isa forKey:v9];

    if (*(v1 + v6))
    {
      v10 = type metadata accessor for LibraryImport.ViewModel(0);
      (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
      sub_100369A78(v5);
      sub_1000095E8(v5, &unk_1011A4B90, &unk_100ED2800);
    }
  }
}

void sub_100367784()
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v50 = &v43 - v1;
  v2 = type metadata accessor for MusicDataRequest();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v47 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v49 = &v43 - v5;
  v52 = type metadata accessor for URLRequest();
  isa = v52[-1].isa;
  __chkstk_darwin();
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v51 = &v43 - v8;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v10 = &v43 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_sessionID + 8);
  if (v16)
  {
    v43 = v3;
    v44 = v2;
    v45 = *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_sessionID);
    v46 = &v43 - v15;
    v17 = objc_opt_self();

    v18 = [v17 standardUserDefaults];
    if (qword_10117F620 != -1)
    {
      swift_once();
    }

    v19 = String._bridgeToObjectiveC()();
    [v18 removeObjectForKey:v19];

    v20 = sub_10036DCC4();
    if (v21)
    {
      v53 = 0x2F2F3A7370747468;
      v54 = 0xE800000000000000;
      String.append(_:)(*&v20);

      v22._countAndFlagsBits = 47;
      v22._object = 0xE100000000000000;
      String.append(_:)(v22);
      v23._countAndFlagsBits = v45;
      v23._object = v16;
      String.append(_:)(v23);

      URL.init(string:)();

      if ((*(v12 + 48))(v10, 1, v11) != 1)
      {
        v32 = v46;
        (*(v12 + 32))(v46, v10, v11);
        (*(v12 + 16))(v14, v32, v11);
        v33 = v51;
        URLRequest.init(url:cachePolicy:timeoutInterval:)();
        v45 = v12;
        URLRequest.httpMethod.setter();
        v34 = isa;
        (*(isa + 2))(v7, v33, v52);
        v35 = v49;
        MusicDataRequest.init(urlRequest:)();
        v36 = type metadata accessor for TaskPriority();
        v37 = v50;
        (*(*(v36 - 8) + 56))(v50, 1, 1, v36);
        v39 = v43;
        v38 = v44;
        v40 = v47;
        (*(v43 + 16))(v47, v35, v44);
        v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
        v42 = swift_allocObject();
        *(v42 + 16) = 0;
        *(v42 + 24) = 0;
        (*(v39 + 32))(v42 + v41, v40, v38);
        sub_1001F5AC8(0, 0, v37, &unk_100EC7FF0, v42);

        (*(v39 + 8))(v35, v38);
        (*(v34 + 1))(v51, v52);
        (*(v45 + 8))(v46, v11);
        return;
      }

      sub_1000095E8(v10, &qword_101183A20, &unk_100EBCF80);
    }

    else
    {
    }

    if (qword_10117F658 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000060E4(v28, qword_101218B30);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Unable to create a url to delete the session", v31, 2u);
    }
  }

  else
  {
    if (qword_10117F658 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000060E4(v24, qword_101218B30);
    v52 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v52, v25, "Attempting to delete the session without a sessionID", v26, 2u);
    }

    v27 = v52;
  }
}

void sub_100367F14()
{
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v2 = &v15 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 41))
  {
    if (*(v0 + 16) | *(v0 + 8) | *v0 | *(v0 + 24) | *(v0 + 32))
    {
      v7 = 0;
    }

    else
    {
      v7 = *(v0 + 40) == 0;
    }

    if (v7)
    {
      if (qword_10117F630 != -1)
      {
        swift_once();
      }

      sub_100367784();

      sub_10036F49C();
    }

    else
    {
      v8 = [objc_opt_self() standardUserDefaults];
      if (qword_10117F620 != -1)
      {
        swift_once();
      }

      v16 = String._bridgeToObjectiveC()();
      [v8 removeObjectForKey:v16];

      v9 = v16;
    }
  }

  else
  {
    sub_10036ECB4(v2);
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {
      sub_1000095E8(v2, &qword_101183A20, &unk_100EBCF80);
    }

    else
    {
      (*(v4 + 32))(v6, v2, v3);
      v10 = [objc_opt_self() sharedApplication];
      URL._bridgeToObjectiveC()(v11);
      v13 = v12;
      sub_10010CD7C(_swiftEmptyArrayStorage);
      type metadata accessor for OpenExternalURLOptionsKey(0);
      sub_100373174(&qword_10118A3E0, type metadata accessor for OpenExternalURLOptionsKey, &unk_100EBC3A0);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v10 openURL:v13 options:isa completionHandler:0];

      (*(v4 + 8))(v6, v3);
    }
  }
}

uint64_t sub_1003682B8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_10036835C;

  return MusicDataRequest.response()(a1);
}

uint64_t sub_10036835C()
{

  if (v0)
  {

    v1 = sub_100368510;
  }

  else
  {
    v1 = sub_100368474;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100368474()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for MusicDataResponse();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100368510()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for MusicDataResponse();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

double sub_1003685AC()
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v2 = &v13 - v1;
  sub_10010FC20(&unk_1011A4B90, &unk_100ED2800);
  __chkstk_darwin();
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v13 - v5;
  if (qword_10117F648 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for LibraryImport.ViewModel(0);
  v8 = sub_1000060E4(v7, qword_10118C580);
  sub_100372A44(v8, v6, type metadata accessor for LibraryImport.ViewModel);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v6, v4, &unk_1011A4B90, &unk_100ED2800);

  static Published.subscript.setter();
  sub_1000095E8(v6, &unk_1011A4B90, &unk_100ED2800);
  v9 = *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_shouldMakeRequests);
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_shouldMakeRequests) = 1;
  if (v9 != 1)
  {
    sub_100369E70(0);
  }

  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v0;

  sub_1001F4CB8(0, 0, v2, &unk_100EC7FE0, v11);

  return result;
}

uint64_t sub_10036886C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_10036892C, 0, 0);
}

uint64_t sub_10036892C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtCO5Music3MLI8Observer_canUpdateViewModel) = 0;
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_100368A08;

  return sub_10062A46C(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_100368A08()
{
  v2 = *v1;

  v3 = v2[5];
  v4 = v2[4];
  v5 = v2[3];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_1003754EC;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_100368BA0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100368BA0()
{
  sub_100369820(1);

  v1 = *(v0 + 8);

  return v1();
}

void sub_100368C10()
{
  sub_10010FC20(&unk_1011A4B90, &unk_100ED2800);
  __chkstk_darwin();
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v17 - v3;
  sub_100367604(0);
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_isInProgress) = 1;
  *(v0 + 128) = 2;
  if (qword_10117F630 != -1)
  {
    swift_once();
  }

  v5 = *(qword_101218B28 + 24);
  if (v5)
  {
    v6 = *(qword_101218B28 + 16);
    v7 = _s16ActionButtonViewV5ModelVMa(0);
    v8 = *(v7 + 48);
    v9 = _s12ClickMetricsVMa(0);
    v10 = *(*(v9 - 8) + 56);
    v10(&v2[v8], 1, 1, v9);
    v10(&v2[*(v7 + 52)], 1, 1, v9);
    *v2 = 0;
    *(v2 + 1) = 0;
    *(v2 + 2) = v6;
    *(v2 + 3) = v5;
    v11 = type metadata accessor for LibraryImport.ViewModel(0);
    *(v2 + 2) = 0u;
    *(v2 + 3) = 0u;
    *(v2 + 4) = 0u;
    *(v2 + 5) = 0u;
    *(v2 + 6) = 0u;
    *(v2 + 7) = 0u;
    *(v2 + 8) = 0u;
    v2[144] = 0;
    swift_storeEnumTagMultiPayload();
    v12 = *(*(v11 - 8) + 56);
    v12(v2, 0, 1, v11);
    sub_1003731BC(v2, v4, type metadata accessor for LibraryImport.ViewModel);
    v12(v4, 0, 1, v11);
  }

  else
  {
    v13 = type metadata accessor for LibraryImport.ViewModel(0);
    v14 = *(v13 - 8);
    v15 = *(v14 + 56);
    v15(v2, 1, 1, v13);
    if (qword_10117F640 != -1)
    {
      swift_once();
    }

    v16 = sub_1000060E4(v13, qword_10118C568);
    sub_100372A44(v16, v4, type metadata accessor for LibraryImport.ViewModel);
    v15(v4, 0, 1, v13);
    if ((*(v14 + 48))(v2, 1, v13) != 1)
    {
      sub_1000095E8(v2, &unk_1011A4B90, &unk_100ED2800);
    }
  }

  sub_100369A78(v4);
  sub_1000095E8(v4, &unk_1011A4B90, &unk_100ED2800);
  sub_100369E70(0);
}

void sub_100368FA0()
{
  v1 = [objc_opt_self() standardUserDefaults];
  if (qword_10117F620 != -1)
  {
    swift_once();
  }

  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 valueForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (!*(&v11 + 1))
  {
    sub_1000095E8(v12, &unk_101183F30, qword_100EBF960);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v4 = 0;
    v5 = 0;
    goto LABEL_11;
  }

  v4 = v8;
  v5 = v9;
LABEL_11:
  v6 = (v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_sessionID);
  v7 = v5 != 0;
  *v6 = v4;
  v6[1] = v5;

  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_isInProgress) = v7;
}

void sub_10036910C(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v31 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v7 = &v28[-v6];
  v8 = sub_10010FC20(&qword_10118CA90, &unk_100ECA330) - 8;
  __chkstk_darwin();
  v10 = &v28[-v9];
  v11 = OBJC_IVAR____TtCO5Music3MLI8Observer_mliReviewURL;
  swift_beginAccess();
  v12 = *(v8 + 56);
  sub_1000089F8(a1, v10, &qword_101183A20, &unk_100EBCF80);
  sub_1000089F8(v1 + v11, &v10[v12], &qword_101183A20, &unk_100EBCF80);
  v13 = *(v4 + 48);
  if (v13(v10, 1, v3) == 1)
  {
    if (v13(&v10[v12], 1, v3) == 1)
    {
      sub_1000095E8(v10, &qword_101183A20, &unk_100EBCF80);
      return;
    }
  }

  else
  {
    sub_1000089F8(v10, v7, &qword_101183A20, &unk_100EBCF80);
    if (v13(&v10[v12], 1, v3) != 1)
    {
      v16 = *(v4 + 32);
      v17 = &v10[v12];
      v18 = v4;
      v19 = v31;
      v16(v31, v17, v3);
      sub_100373174(&qword_101199D20, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      v30 = v18;
      v20 = *(v18 + 8);
      v20(v19, v3);
      v20(v7, v3);
      sub_1000095E8(v10, &qword_101183A20, &unk_100EBCF80);
      if (v29)
      {
        return;
      }

      goto LABEL_7;
    }

    (*(v4 + 8))(v7, v3);
  }

  v30 = v4;
  sub_1000095E8(v10, &qword_10118CA90, &unk_100ECA330);
LABEL_7:
  v14 = [objc_opt_self() standardUserDefaults];
  if (v13((v1 + v11), 1, v3))
  {
    v15 = 0;
  }

  else
  {
    v21 = v30;
    v22 = v1 + v11;
    v23 = v31;
    (*(v30 + 16))(v31, v22, v3);
    v24 = URL.absoluteString.getter();
    v26 = v25;
    (*(v21 + 8))(v23, v3);
    v32[0] = v24;
    v32[1] = v26;
    v15 = _bridgeAnythingToObjectiveC<A>(_:)();
    sub_100015BB0(v32);
  }

  v27 = String._bridgeToObjectiveC()();
  [v14 setObject:v15 forKey:v27];

  swift_unknownObjectRelease();
}

void sub_100369564(char a1)
{
  v3 = a1 & 1;
  sub_10010FC20(&unk_1011A4B90, &unk_100ED2800);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = (&v15 - v6);
  v8 = OBJC_IVAR____TtCO5Music3MLI8Observer_hasNetworkConnectivity;
  v9 = *(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_hasNetworkConnectivity);
  *(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_hasNetworkConnectivity) = a1;
  if (v9 == v3)
  {
    return;
  }

  if (*(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_currentTask))
  {

    Task.cancel()();

    if (*(v1 + v8))
    {
LABEL_4:

      sub_100369E70(0);
      return;
    }
  }

  else if (a1)
  {
    goto LABEL_4;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v7);

  v10 = type metadata accessor for LibraryImport.ViewModel(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {
    v12 = v7;
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_10003CC78(v7, type metadata accessor for LibraryImport.ViewModel);
    if (EnumCaseMultiPayload)
    {
      return;
    }

    if (qword_10117F650 != -1)
    {
      swift_once();
    }

    v14 = sub_1000060E4(v10, qword_10118C598);
    sub_100372A44(v14, v5, type metadata accessor for LibraryImport.ViewModel);
    (*(v11 + 56))(v5, 0, 1, v10);
    sub_100369A78(v5);
    v12 = v5;
  }

  sub_1000095E8(v12, &unk_1011A4B90, &unk_100ED2800);
}

void sub_100369820(char a1)
{
  sub_10010FC20(&unk_1011A4B90, &unk_100ED2800);
  __chkstk_darwin();
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v13 - v5;
  v7 = type metadata accessor for LibraryImport.ViewModel(0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_canUpdateViewModel);
  *(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_canUpdateViewModel) = a1;
  if (v11 & 1) == 0 && (a1)
  {
    v12 = OBJC_IVAR____TtCO5Music3MLI8Observer_queuedViewModel;
    swift_beginAccess();
    sub_1000089F8(v1 + v12, v6, &unk_1011A4B90, &unk_100ED2800);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1000095E8(v6, &unk_1011A4B90, &unk_100ED2800);
    }

    else
    {
      sub_1003731BC(v6, v10, type metadata accessor for LibraryImport.ViewModel);
      sub_100372A44(v10, v4, type metadata accessor for LibraryImport.ViewModel);
      (*(v8 + 56))(v4, 0, 1, v7);
      sub_100369A78(v4);
      sub_1000095E8(v4, &unk_1011A4B90, &unk_100ED2800);
      sub_10003CC78(v10, type metadata accessor for LibraryImport.ViewModel);
    }
  }
}

uint64_t sub_100369A78(uint64_t a1)
{
  sub_10010FC20(&unk_1011A4B90, &unk_100ED2800);
  __chkstk_darwin();
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v20 - v5;
  __chkstk_darwin();
  v8 = &v20 - v7;
  v9 = type metadata accessor for LibraryImport.ViewModel(0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a1, v8, &unk_1011A4B90, &unk_100ED2800);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000095E8(v8, &unk_1011A4B90, &unk_100ED2800);
    v13 = *(v10 + 56);
    v13(v6, 1, 1, v9);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000089F8(v6, v4, &unk_1011A4B90, &unk_100ED2800);

    static Published.subscript.setter();
    sub_1000095E8(v6, &unk_1011A4B90, &unk_100ED2800);
    v13(v6, 1, 1, v9);
    v14 = OBJC_IVAR____TtCO5Music3MLI8Observer_queuedViewModel;
    swift_beginAccess();
    v15 = v1 + v14;
    v16 = v6;
  }

  else
  {
    sub_1003731BC(v8, v12, type metadata accessor for LibraryImport.ViewModel);
    v17 = (v10 + 56);
    if (*(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_canUpdateViewModel) == 1)
    {
      sub_100372A44(v12, v6, type metadata accessor for LibraryImport.ViewModel);
      (*v17)(v6, 0, 1, v9);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000089F8(v6, v4, &unk_1011A4B90, &unk_100ED2800);

      static Published.subscript.setter();
      sub_1000095E8(v6, &unk_1011A4B90, &unk_100ED2800);
      return sub_10003CC78(v12, type metadata accessor for LibraryImport.ViewModel);
    }

    sub_1003731BC(v12, v6, type metadata accessor for LibraryImport.ViewModel);
    (*v17)(v6, 0, 1, v9);
    v19 = OBJC_IVAR____TtCO5Music3MLI8Observer_queuedViewModel;
    swift_beginAccess();
    v15 = v1 + v19;
    v16 = v6;
  }

  sub_10006B010(v16, v15, &unk_1011A4B90, &unk_100ED2800);
  return swift_endAccess();
}

void sub_100369E70(int a1)
{
  LODWORD(v35) = a1;
  v2 = *v1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v34 = &v28 - v3;
  v4 = type metadata accessor for MusicDataRequest();
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  __chkstk_darwin();
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v28 - v7;
  sub_10010FC20(&qword_10118CAA8, &qword_100EC7FA0);
  __chkstk_darwin();
  v10 = &v28 - v9;
  type metadata accessor for URLRequest();
  __chkstk_darwin();
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v28 - v15;
  v17 = *(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_sessionID + 8);
  if (v17)
  {
    if (*(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_hasNetworkConnectivity) == 1)
    {
      v18 = *(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_sessionID);
      if (*(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_isInProgress) & 1) != 0 || (v35)
      {
        v31 = v8;
        v35 = v2;
        v19 = v13;
        v20 = v14;

        sub_10036D248(v18, v17, v10);

        if ((*(v20 + 48))(v10, 1, v19) == 1)
        {
          sub_1000095E8(v10, &qword_10118CAA8, &qword_100EC7FA0);
        }

        else
        {
          v29 = v19;
          v30 = v20;
          (*(v20 + 32))(v16, v10, v19);
          (*(v20 + 16))(v12, v16, v19);
          v21 = v31;
          MusicDataRequest.init(urlRequest:)();
          v22 = type metadata accessor for TaskPriority();
          (*(*(v22 - 8) + 56))(v34, 1, 1, v22);
          v23 = v32;
          v24 = v33;
          (*(v32 + 16))(v6, v21, v33);
          v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
          v26 = (v5 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
          v27 = swift_allocObject();
          *(v27 + 16) = 0;
          *(v27 + 24) = 0;
          (*(v23 + 32))(v27 + v25, v6, v24);
          *(v27 + v26) = v1;
          *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = v35;

          sub_1001F4CB8(0, 0, v34, &unk_100EC7FB0, v27);

          (*(v23 + 8))(v21, v24);
          (*(v30 + 8))(v16, v29);
        }
      }
    }
  }
}

uint64_t sub_10036A2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[55] = a5;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v5[56] = swift_task_alloc();
  v6 = type metadata accessor for MusicDataResponse();
  v5[57] = v6;
  v5[58] = *(v6 - 8);
  v7 = swift_task_alloc();
  v5[59] = v7;
  v8 = swift_task_alloc();
  v5[60] = v8;
  *v8 = v5;
  v8[1] = sub_10036A41C;

  return MusicDataRequest.response()(v7);
}

uint64_t sub_10036A41C()
{
  *(*v1 + 488) = v0;

  if (v0)
  {
    v2 = sub_10036AF00;
  }

  else
  {
    v2 = sub_10036A530;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10036A530()
{
  v1 = *(v0 + 488);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v2 = MusicDataResponse.data.getter();
  v4 = v3;
  sub_100373410();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (!v1)
  {
    sub_10002C064(v2, v4);

    v19 = *(v0 + 352);
    *(v0 + 144) = *(v0 + 336);
    *(v0 + 160) = v19;
    v20 = *(v0 + 384);
    *(v0 + 176) = *(v0 + 368);
    *(v0 + 192) = v20;
    v21 = *(v0 + 288);
    *(v0 + 80) = *(v0 + 272);
    *(v0 + 96) = v21;
    v22 = *(v0 + 320);
    *(v0 + 112) = *(v0 + 304);
    *(v0 + 128) = v22;
    v23 = *(v0 + 224);
    *(v0 + 16) = *(v0 + 208);
    *(v0 + 32) = v23;
    v24 = *(v0 + 256);
    *(v0 + 48) = *(v0 + 240);
    *(v0 + 64) = v24;
    type metadata accessor for MainActor();
    *(v0 + 496) = static MainActor.shared.getter();
    v25 = dispatch thunk of Actor.unownedExecutor.getter();
    v27 = v26;
    v28 = sub_10036AB98;
    goto LABEL_24;
  }

  (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
  sub_10002C064(v2, v4);

  *(v0 + 504) = v1;
  v5 = _convertErrorToNSError(_:)();
  v6 = [v5 userInfo];

  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v7 + 16))
  {
    v10 = sub_100019C10(v8, v9);
    v12 = v11;

    if (v12)
    {
      sub_10000DD18(*(v7 + 56) + 32 * v10, v0 + 400);

      if ((swift_dynamicCast() & 1) != 0 && *(v0 + 432) == 404)
      {
        v13 = [objc_opt_self() standardUserDefaults];
        if (qword_10117F620 != -1)
        {
          swift_once();
        }

        v14 = String._bridgeToObjectiveC()();
        [v13 removeObjectForKey:v14];

        if (qword_10117F658 != -1)
        {
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        sub_1000060E4(v15, qword_101218B30);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v16, v17, "[PB] closing session", v18, 2u);
        }

        goto LABEL_28;
      }

      goto LABEL_16;
    }
  }

  else
  {
  }

LABEL_16:
  v29 = *(v0 + 440);
  v30 = OBJC_IVAR____TtCO5Music3MLI8Observer_retryCount;
  *(v0 + 512) = OBJC_IVAR____TtCO5Music3MLI8Observer_retryCount;
  if (*(v29 + v30) <= 2)
  {
    v31 = *(v0 + 448);
    v32 = type metadata accessor for TaskPriority();
    (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v29;

    v34 = sub_1001F4CB8(0, 0, v31, &unk_100EC7FC0, v33);
    v35 = *(v29 + OBJC_IVAR____TtCO5Music3MLI8Observer_currentTask);
    *(v29 + OBJC_IVAR____TtCO5Music3MLI8Observer_currentTask) = v34;
    if (v35)
    {

      Task.cancel()();
    }

    else
    {
    }

LABEL_28:

    v43 = *(v0 + 8);

    return v43();
  }

  if (qword_10117F658 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_1000060E4(v36, qword_101218B30);
  swift_errorRetain();
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v39 = 138543362;
    swift_errorRetain();
    v41 = _swift_stdlib_bridgeErrorToNSError();
    *(v39 + 4) = v41;
    *v40 = v41;
    _os_log_impl(&_mh_execute_header, v37, v38, "[PB] Request failed with error: %{public}@", v39, 0xCu);
    sub_1000095E8(v40, &unk_101183D70, &unk_100EC6540);
  }

  type metadata accessor for MainActor();
  *(v0 + 520) = static MainActor.shared.getter();
  v25 = dispatch thunk of Actor.unownedExecutor.getter();
  v27 = v42;
  v28 = sub_10036ADF8;
LABEL_24:

  return _swift_task_switch(v28, v25, v27);
}

uint64_t sub_10036AB98()
{

  sub_10036BD38(v0 + 16);

  return _swift_task_switch(sub_10036AC0C, 0, 0);
}

uint64_t sub_10036AC0C()
{
  if (*(*(v0 + 440) + OBJC_IVAR____TtCO5Music3MLI8Observer_shouldMakeRequests) == 1)
  {
    sub_100373464(v0 + 16);
    if (*(v0 + 40))
    {
      (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
    }

    else
    {
      v1 = *(v0 + 440);
      v2 = *(v0 + 448);
      v3 = *(v0 + 32);
      v4 = type metadata accessor for TaskPriority();
      (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
      v5 = swift_allocObject();
      v5[2] = 0;
      v5[3] = 0;
      v5[4] = v3;
      v5[5] = v1;

      v6 = sub_1001F4CB8(0, 0, v2, &unk_100EC7FD0, v5);
      v7 = *(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_currentTask);
      *(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_currentTask) = v6;
      v9 = *(v0 + 464);
      v8 = *(v0 + 472);
      v10 = *(v0 + 456);
      if (v7)
      {

        Task.cancel()();
      }

      (*(v9 + 8))(v8, v10);
    }
  }

  else
  {
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
    sub_100373464(v0 + 16);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10036ADF8()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 440);

  *(v2 + v1) = 0;
  *(v2 + OBJC_IVAR____TtCO5Music3MLI8Observer_currentRetryDelay) = 2;
  *(v2 + OBJC_IVAR____TtCO5Music3MLI8Observer_didReceiveError) = 1;

  return _swift_task_switch(sub_10036AE8C, 0, 0);
}

uint64_t sub_10036AE8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10036AF00()
{
  v0[63] = v0[61];
  v1 = _convertErrorToNSError(_:)();
  v2 = [v1 userInfo];

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v3 + 16))
  {

    goto LABEL_13;
  }

  v6 = sub_100019C10(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_13:

    goto LABEL_14;
  }

  sub_10000DD18(*(v3 + 56) + 32 * v6, (v0 + 50));

  if ((swift_dynamicCast() & 1) != 0 && v0[54] == 404)
  {
    v9 = [objc_opt_self() standardUserDefaults];
    if (qword_10117F620 != -1)
    {
      swift_once();
    }

    v10 = String._bridgeToObjectiveC()();
    [v9 removeObjectForKey:v10];

    if (qword_10117F658 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000060E4(v11, qword_101218B30);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "[PB] closing session", v14, 2u);
    }

    goto LABEL_25;
  }

LABEL_14:
  v15 = v0[55];
  v16 = OBJC_IVAR____TtCO5Music3MLI8Observer_retryCount;
  v0[64] = OBJC_IVAR____TtCO5Music3MLI8Observer_retryCount;
  if (*(v15 + v16) <= 2)
  {
    v17 = v0[56];
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v15;

    v20 = sub_1001F4CB8(0, 0, v17, &unk_100EC7FC0, v19);
    v21 = *(v15 + OBJC_IVAR____TtCO5Music3MLI8Observer_currentTask);
    *(v15 + OBJC_IVAR____TtCO5Music3MLI8Observer_currentTask) = v20;
    if (v21)
    {

      Task.cancel()();
    }

    else
    {
    }

LABEL_25:

    v30 = v0[1];

    return v30();
  }

  if (qword_10117F658 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000060E4(v22, qword_101218B30);
  swift_errorRetain();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138543362;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 4) = v27;
    *v26 = v27;
    _os_log_impl(&_mh_execute_header, v23, v24, "[PB] Request failed with error: %{public}@", v25, 0xCu);
    sub_1000095E8(v26, &unk_101183D70, &unk_100EC6540);
  }

  type metadata accessor for MainActor();
  v0[65] = static MainActor.shared.getter();
  v29 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10036ADF8, v29, v28);
}

uint64_t sub_10036B448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for ContinuousClock();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_10036B508, 0, 0);
}

uint64_t sub_10036B508()
{
  v1 = *(v0 + 16);
  v2 = 1000000000000000000 * v1;
  v3 = (v1 * 0xDE0B6B3A7640000uLL) >> 64;
  v4 = (v1 >> 63) & 0xF21F494C589C0000;
  static Clock<>.continuous.getter();
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_10036B5FC;

  return sub_10062A46C(v2, v4 + v3, 0, 0, 1);
}

uint64_t sub_10036B5FC()
{
  v2 = *v1;

  v3 = v2[6];
  v4 = v2[5];
  v5 = v2[4];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_1003754CC;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_10036B794;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10036B794(__n128 a1)
{
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    sub_100369E70(0);
  }

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_10036B808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_10036B8C8, 0, 0);
}

uint64_t sub_10036B8C8()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtCO5Music3MLI8Observer_currentRetryDelay;
  v0[6] = OBJC_IVAR____TtCO5Music3MLI8Observer_currentRetryDelay;
  v3 = *(v1 + v2);
  v4 = 1000000000000000000 * v3;
  v5 = (v3 * 0xDE0B6B3A7640000uLL) >> 64;
  v6 = (v3 >> 63) & 0xF21F494C589C0000;
  static Clock<>.continuous.getter();
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_10036B9CC;

  return sub_10062A46C(v4, v6 + v5, 0, 0, 1);
}

uint64_t sub_10036B9CC()
{
  v2 = *v1;

  v3 = v2[5];
  v4 = v2[4];
  v5 = v2[3];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_1003754C8;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_10036BB64;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10036BB64(__n128 a1)
{
  v2 = v1[2];
  v3 = static Task<>.isCancelled.getter();
  v4 = OBJC_IVAR____TtCO5Music3MLI8Observer_retryCount;
  if ((v3 & 1) == 0)
  {
    v7 = *(v2 + OBJC_IVAR____TtCO5Music3MLI8Observer_retryCount);
    v8 = __OFADD__(v7, 1);
    v9 = v7 + 1;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      v10 = v1[6];
      v11 = v1[2];
      *(v2 + OBJC_IVAR____TtCO5Music3MLI8Observer_retryCount) = v9;
      v12 = *(v11 + v10);
      if (v12 + 0x4000000000000000 >= 0)
      {
        *(v1[2] + v1[6]) = 2 * v12;
        if (qword_10117F658 == -1)
        {
LABEL_6:
          v13 = type metadata accessor for Logger();
          sub_1000060E4(v13, qword_101218B30);

          v14 = Logger.logObject.getter();
          v15 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            *v16 = 134349056;
            *(v16 + 4) = *(v2 + v4);

            _os_log_impl(&_mh_execute_header, v14, v15, "[PB] Retrying request (attempt #%{public}ld)", v16, 0xCu);
          }

          else
          {
          }

          sub_100369E70(0);
          goto LABEL_10;
        }

LABEL_15:
        swift_once();
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  v5 = v1[6];
  v6 = v1[2];
  *(v2 + OBJC_IVAR____TtCO5Music3MLI8Observer_retryCount) = 0;
  *(v6 + v5) = 2;
LABEL_10:

  v17 = v1[1];

  return v17();
}

uint64_t sub_10036BD38(uint64_t a1)
{
  v2 = v1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v45 = &v42[-v4];
  v5 = sub_10010FC20(&qword_10118CA98, &qword_100EC7F80) - 8;
  __chkstk_darwin();
  v7 = &v42[-v6];
  sub_10010FC20(&unk_1011A4B90, &unk_100ED2800);
  __chkstk_darwin();
  v49 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v51 = &v42[-v9];
  __chkstk_darwin();
  v11 = &v42[-v10];
  __chkstk_darwin();
  v13 = &v42[-v12];
  __chkstk_darwin();
  v15 = &v42[-v14];
  v16 = type metadata accessor for LibraryImport.ViewModel(0);
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v46 = &v42[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = v18;
  __chkstk_darwin();
  v20 = &v42[-v19];
  v50 = a1;
  sub_10036C510(&v42[-v19]);
  v53 = v20;
  sub_100372A44(v20, v15, type metadata accessor for LibraryImport.ViewModel);
  v47 = *(v17 + 56);
  v48 = v17 + 56;
  v47(v15, 0, 1, v16);
  swift_getKeyPath();
  swift_getKeyPath();
  v52 = v2;
  static Published.subscript.getter(v13);

  v21 = *(v5 + 56);
  sub_1000089F8(v15, v7, &unk_1011A4B90, &unk_100ED2800);
  sub_1000089F8(v13, v7 + v21, &unk_1011A4B90, &unk_100ED2800);
  v22 = v17;
  v23 = *(v17 + 48);
  if (v23(v7, 1, v16) == 1)
  {
    sub_1000095E8(v13, &unk_1011A4B90, &unk_100ED2800);
    sub_1000095E8(v15, &unk_1011A4B90, &unk_100ED2800);
    if (v23((v7 + v21), 1, v16) == 1)
    {
      sub_1000095E8(v7, &unk_1011A4B90, &unk_100ED2800);
      v24 = v53;
      return sub_10003CC78(v24, type metadata accessor for LibraryImport.ViewModel);
    }
  }

  else
  {
    sub_1000089F8(v7, v11, &unk_1011A4B90, &unk_100ED2800);
    if (v23((v7 + v21), 1, v16) != 1)
    {
      v28 = v46;
      sub_1003731BC(v7 + v21, v46, type metadata accessor for LibraryImport.ViewModel);
      v43 = sub_10054EB74(v11, v28);
      sub_10003CC78(v28, type metadata accessor for LibraryImport.ViewModel);
      sub_1000095E8(v13, &unk_1011A4B90, &unk_100ED2800);
      sub_1000095E8(v15, &unk_1011A4B90, &unk_100ED2800);
      sub_10003CC78(v11, type metadata accessor for LibraryImport.ViewModel);
      sub_1000095E8(v7, &unk_1011A4B90, &unk_100ED2800);
      v24 = v53;
      if (v43)
      {
        return sub_10003CC78(v24, type metadata accessor for LibraryImport.ViewModel);
      }

      goto LABEL_7;
    }

    sub_1000095E8(v13, &unk_1011A4B90, &unk_100ED2800);
    sub_1000095E8(v15, &unk_1011A4B90, &unk_100ED2800);
    sub_10003CC78(v11, type metadata accessor for LibraryImport.ViewModel);
  }

  sub_1000095E8(v7, &qword_10118CA98, &qword_100EC7F80);
  v24 = v53;
LABEL_7:
  v25 = OBJC_IVAR____TtCO5Music3MLI8Observer_isInProgress;
  v26 = v52;
  *(v52 + OBJC_IVAR____TtCO5Music3MLI8Observer_isInProgress) = (*(v50 + 24) & 1) == 0;
  swift_getKeyPath();
  swift_getKeyPath();
  v27 = v51;
  static Published.subscript.getter(v51);

  if (v23(v27, 1, v16) == 1)
  {
    sub_1000095E8(v27, &unk_1011A4B90, &unk_100ED2800);
  }

  else if (swift_getEnumCaseMultiPayload())
  {
    sub_10003CC78(v27, type metadata accessor for LibraryImport.ViewModel);
  }

  else
  {
    v29 = *(v27 + 1);
    v30 = *(v27 + 3);
    if (v27[4] < 1.0 && (*(v26 + v25) & 1) == 0)
    {
      v33 = *v27;
      v51 = *(v27 + 2);
      v34 = v29;
      v35 = type metadata accessor for TaskPriority();
      v36 = v45;
      (*(*(v35 - 8) + 56))(v45, 1, 1, v35);
      v37 = v46;
      sub_100372A44(v53, v46, type metadata accessor for LibraryImport.ViewModel);
      type metadata accessor for MainActor();

      v38 = static MainActor.shared.getter();
      v39 = (*(v22 + 80) + 80) & ~*(v22 + 80);
      v40 = swift_allocObject();
      *(v40 + 2) = v38;
      *(v40 + 3) = &protocol witness table for MainActor;
      *(v40 + 4) = v26;
      v40[5] = v33;
      v41 = v51;
      *(v40 + 6) = v34;
      *(v40 + 7) = v41;
      v24 = v53;
      *(v40 + 8) = v30;
      v40[9] = 1.0;
      sub_1003731BC(v37, v40 + v39, type metadata accessor for LibraryImport.ViewModel);
      sub_1001F4CB8(0, 0, v36, &unk_100EC7F90, v40);

      return sub_10003CC78(v24, type metadata accessor for LibraryImport.ViewModel);
    }
  }

  v31 = v49;
  sub_100372A44(v24, v49, type metadata accessor for LibraryImport.ViewModel);
  v47(v31, 0, 1, v16);
  sub_100369A78(v31);
  sub_1000095E8(v31, &unk_1011A4B90, &unk_100ED2800);
  return sub_10003CC78(v24, type metadata accessor for LibraryImport.ViewModel);
}

uint64_t sub_10036C510@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_101199B50, &qword_100ED8540);
  __chkstk_darwin();
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v39 - v5;
  if (*(v1 + 8))
  {
    v8 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7 || *(v1 + 56) || *(v1 + 88))
    {
      v48 = *(v1 + 32);
      v9 = *(v1 + 48);
      v65 = *(v1 + 64);
      v66 = v9;
      v10 = *(v1 + 80);
      v11 = *(v1 + 88);
      v12 = *(v1 + 144);
      v63 = *(v1 + 128);
      v64[0] = v12;
      *(v64 + 10) = *(v1 + 154);
      swift_bridgeObjectRetain_n();
      *&v49 = v7;

      sub_1000089F8(&v66, v59, &qword_1011815E0, &qword_100EBD050);
      sub_1000089F8(&v65, v59, &qword_1011815E0, &qword_100EBD050);
      sub_100372BF4(v10, v11, &v63, &v50);
      v47 = v52;
      if (v52)
      {
        v40 = 0;
        v41 = 0;
      }

      else
      {
        v16 = swift_allocObject();
        v17 = *v51;
        v16[1] = v50;
        v16[2] = v17;
        *(v16 + 42) = *&v51[10];
        v40 = sub_100373150;
        v41 = v16;
      }

      sub_100372BF4(v10, v11, &v63, &v53);
      v18 = v55;
      if (v55)
      {
        v39 = 0;
        v19 = 0;
      }

      else
      {
        v19 = swift_allocObject();
        v20 = *v54;
        v19[1] = v53;
        v19[2] = v20;
        *(v19 + 42) = *&v54[10];
        v39 = sub_100373148;
      }

      sub_100372BF4(v10, v11, &v63, v56);
      if (v58 & 1) != 0 || (v57)
      {
        v45 = 0;
        v46 = 0;
        v43 = 0;
        v44 = 0;
        v42 = 0;
      }

      else
      {
        v21 = *(v1 + 104);
        v46 = *(v1 + 96);
        v22 = *(v1 + 112);
        v43 = *(v1 + 120);
        v44 = v22;

        v45 = v21;

        v42 = sub_100371240;
      }

      sub_100372BF4(v10, v11, &v63, v59);
      if (v62)
      {
        v23 = 0;
      }

      else if (v61)
      {
        if (v59[1] | v59[0] | v59[2] | v59[3] | v59[4])
        {
          v24 = 0;
        }

        else
        {
          v24 = v60 == 0;
        }

        v23 = !v24;
      }

      else
      {
        v23 = 1;
      }

      sub_10036FE40(v1, v6);
      sub_100370228(v1, v4);
      v25 = v49;
      *a1 = v48;
      *(a1 + 8) = v25;
      v26 = v65;
      *(a1 + 16) = v66;
      *(a1 + 32) = v26;
      *(a1 + 48) = v10;
      *(a1 + 56) = v11;
      if (v47)
      {
        *(a1 + 64) = 0;
        *(a1 + 72) = 0;
        if ((v18 & 1) == 0)
        {
LABEL_35:
          v27 = swift_allocObject();
          *(v27 + 16) = v39;
          *(v27 + 24) = v19;
          v28 = sub_100029B94;
LABEL_38:
          *(a1 + 80) = v28;
          *(a1 + 88) = v27;
          v31 = v45;
          *(a1 + 96) = v46;
          *(a1 + 104) = v31;
          v32 = v43;
          *(a1 + 112) = v44;
          *(a1 + 120) = v32;
          *(a1 + 128) = v42;
          *(a1 + 136) = 0;
          *(a1 + 144) = v23;
          v33 = _s16ActionButtonViewV5ModelVMa(0);
          sub_10003D17C(v6, a1 + *(v33 + 48), &qword_101199B50, &qword_100ED8540);
          sub_10003D17C(v4, a1 + *(v33 + 52), &qword_101199B50, &qword_100ED8540);
          type metadata accessor for LibraryImport.ViewModel(0);
          return swift_storeEnumTagMultiPayload();
        }
      }

      else
      {
        v29 = swift_allocObject();
        v30 = v41;
        *(v29 + 16) = v40;
        *(v29 + 24) = v30;
        *(a1 + 64) = sub_10018A020;
        *(a1 + 72) = v29;
        if ((v18 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      v28 = 0;
      v27 = 0;
      goto LABEL_38;
    }

    v34 = *(v1 + 80);
    v35 = _s16ActionButtonViewV5ModelVMa(0);
    v36 = *(v35 + 48);
    v37 = _s12ClickMetricsVMa(0);
    v38 = *(*(v37 - 8) + 56);
    v38(a1 + v36, 1, 1, v37);
    v38(a1 + *(v35 + 52), 1, 1, v37);
    *a1 = v34;
    *(a1 + 8) = 0;
    *(a1 + 16) = v8;
    *(a1 + 24) = v7;
    *(a1 + 32) = v34;
    *(a1 + 40) = 0;
    *(a1 + 48) = v34;
    type metadata accessor for LibraryImport.ViewModel(0);
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 129) = 0u;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v13 = *v1;
    if (*v1 < 0.0)
    {
      v13 = 0.0;
    }

    if (v13 > 1.0)
    {
      v13 = 1.0;
    }

    v14 = *(v1 + 56);
    *a1 = *(v1 + 32);
    v49 = *(v1 + 40);
    *(a1 + 8) = v49;
    *(a1 + 24) = v14;
    *(a1 + 32) = v13;
    type metadata accessor for LibraryImport.ViewModel(0);
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_10036CA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = type metadata accessor for ContinuousClock();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  sub_10010FC20(&unk_1011A4B90, &unk_100ED2800);
  v6[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[17] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[18] = v9;
  v6[19] = v8;

  return _swift_task_switch(sub_10036CBA8, v9, v8);
}

uint64_t sub_10036CBA8()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  *(v0 + 16) = *v2;
  *(v0 + 32) = v2[1];
  v3 = *v2;
  v4 = v2[1];
  *(v1 + 32) = *(v2 + 4);
  *v1 = v3;
  *(v1 + 16) = v4;
  v5 = type metadata accessor for LibraryImport.ViewModel(0);
  *(v0 + 160) = v5;
  swift_storeEnumTagMultiPayload();
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  *(v0 + 168) = v7;
  *(v0 + 176) = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v7(v1, 0, 1, v5);
  sub_1000089F8(v0 + 16, v0 + 48, &qword_1011815E0, &qword_100EBD050);
  sub_1000089F8(v0 + 32, v0 + 64, &qword_1011815E0, &qword_100EBD050);
  sub_100369A78(v1);
  sub_1000095E8(v1, &unk_1011A4B90, &unk_100ED2800);
  v8 = static Duration.seconds(_:)();
  v10 = v9;
  static Clock<>.continuous.getter();
  v11 = swift_task_alloc();
  *(v0 + 184) = v11;
  *v11 = v0;
  v11[1] = sub_10036CD6C;

  return sub_10062A46C(v8, v10, 0, 0, 1);
}

uint64_t sub_10036CD6C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[15];
  v5 = v2[14];
  v6 = v2[13];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[18];
    v8 = v3[19];
    v9 = sub_1003754D0;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[18];
    v8 = v3[19];
    v9 = sub_10036CF00;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_10036CF00()
{
  v1 = v0[21];
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[12];

  sub_100372A44(v4, v3, type metadata accessor for LibraryImport.ViewModel);
  v1(v3, 0, 1, v2);
  sub_100369A78(v3);
  sub_1000095E8(v3, &unk_1011A4B90, &unk_100ED2800);

  v5 = v0[1];

  return v5();
}

void sub_10036CFF0()
{
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v4 = &v9[-v3];
  v5 = *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_shouldMakeRequests);
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_shouldMakeRequests) = 0;
  if ((v5 & 1) != 0 && *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_currentTask))
  {

    Task.cancel()();
  }

  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_isInProgress) = 0;
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_didReceiveError) = 0;
  sub_100367604(0);
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = OBJC_IVAR____TtCO5Music3MLI8Observer_mliReviewURL;
  swift_beginAccess();
  sub_1000089F8(v0 + v7, v2, &qword_101183A20, &unk_100EBCF80);
  swift_beginAccess();
  sub_1001EBCE4(v4, v0 + v7);
  swift_endAccess();
  sub_10036910C(v2);
  sub_1000095E8(v2, &qword_101183A20, &unk_100EBCF80);
  sub_1000095E8(v4, &qword_101183A20, &unk_100EBCF80);
  v8 = *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_currentTask);
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_currentTask) = 0;
  if (v8)
  {
    Task.cancel()();
  }

  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;

  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_retryCount) = 0;
  *(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_currentRetryDelay) = 2;
}

uint64_t sub_10036D248@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a1;
  v6 = type metadata accessor for URLComponents();
  v57 = *(v6 - 8);
  __chkstk_darwin();
  v51 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v9 = &v48 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v49 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v50 = &v48 - v13;
  sub_10010FC20(&qword_101194980, &qword_100ECA390);
  __chkstk_darwin();
  v15 = &v48 - v14;
  v16 = sub_10036DCC4();
  if (v17)
  {
    v18 = v16;
    v19 = v17;
    v54 = v10;
    v55 = a3;
    v20 = sub_10036D9E0();
    if (v20 && (v21 = v20, v22 = [v20 stringForBagKey:ICURLBagKeyLanguageTag], v21, v22))
    {
      v23 = a2;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v24;
    }

    else
    {
      v23 = a2;
      v53 = 0;
    }

    v25 = [objc_opt_self() currentDeviceInfo];
    v26 = [v25 isIPad];

    v27 = 0xE600000000000000;
    if (v26)
    {
      v27 = 0xE400000000000000;
    }

    v52 = v27;
    v58 = 0;
    v59 = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    v58 = 0x2F2F3A7370747468;
    v59 = 0xE800000000000000;
    v28._countAndFlagsBits = v18;
    v28._object = v19;
    String.append(_:)(v28);

    v29._countAndFlagsBits = 47;
    v29._object = 0xE100000000000000;
    String.append(_:)(v29);
    v30._countAndFlagsBits = v56;
    v30._object = v23;
    String.append(_:)(v30);
    v31._countAndFlagsBits = 0x736572676F72702FLL;
    v31._object = 0xE900000000000073;
    String.append(_:)(v31);
    URLComponents.init(string:)();

    v32 = *(v57 + 48);
    if (v32(v15, 1, v6))
    {
    }

    else
    {
      v36 = 1684107369;
      if (!v26)
      {
        v36 = 0x656E6F687069;
      }

      v56 = v36;
      sub_10010FC20(&unk_101197BC0, &unk_100ECF170);
      type metadata accessor for URLQueryItem();
      *(swift_allocObject() + 16) = xmmword_100EBDC20;
      URLQueryItem.init(name:value:)();

      URLQueryItem.init(name:value:)();

      URLComponents.queryItems.setter();
    }

    v38 = v54;
    v37 = v55;
    if (v32(v15, 1, v6))
    {
      (*(v11 + 56))(v9, 1, 1, v38);
    }

    else
    {
      v39 = v57;
      v40 = v51;
      (*(v57 + 16))(v51, v15, v6);
      URLComponents.url.getter();
      (*(v39 + 8))(v40, v6);
      if ((*(v11 + 48))(v9, 1, v38) != 1)
      {
        v46 = v50;
        (*(v11 + 32))(v50, v9, v38);
        (*(v11 + 16))(v49, v46, v38);
        URLRequest.init(url:cachePolicy:timeoutInterval:)();
        (*(v11 + 8))(v46, v38);
        v47 = type metadata accessor for URLRequest();
        (*(*(v47 - 8) + 56))(v37, 0, 1, v47);
        return sub_1000095E8(v15, &qword_101194980, &qword_100ECA390);
      }
    }

    sub_1000095E8(v9, &qword_101183A20, &unk_100EBCF80);
    if (qword_10117F658 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_1000060E4(v41, qword_101218B30);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Unable to create a urlRequest", v44, 2u);
    }

    v45 = type metadata accessor for URLRequest();
    (*(*(v45 - 8) + 56))(v37, 1, 1, v45);
    return sub_1000095E8(v15, &qword_101194980, &qword_100ECA390);
  }

  v33 = type metadata accessor for URLRequest();
  v34 = *(*(v33 - 8) + 56);

  return v34(a3, 1, 1, v33);
}

uint64_t sub_10036D9E0()
{
  v1 = v0;
  BagProvider.shared.unsafeMutableAddressor();

  v2 = BagProvider.bag.getter();

  if (!v2)
  {
    if (qword_10117F658 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000060E4(v3, qword_101218B30);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Bag is nil, creating url bag observer", v6, 2u);
    }

    v7 = swift_allocObject();
    swift_weakInit();

    v8 = BagProvider.createObserver(handler:)(sub_100372A3C, v7);

    *(v1 + OBJC_IVAR____TtCO5Music3MLI8Observer_urlBagObserver) = v8;
  }

  return v2;
}

double sub_10036DB70(uint64_t a1, uint64_t a2)
{
  if (qword_10117F658 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, qword_101218B30);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received bag, retrying", v5, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtCO5Music3MLI8Observer_urlBagObserver) = 0;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100369E70(0);
  }

  return result;
}

uint64_t sub_10036DCC4()
{
  v0 = sub_10036D9E0();
  if (!v0)
  {
    goto LABEL_23;
  }

  v1 = v0;
  v2 = [v0 dictionaryForBagKey:ICURLBagKeyMusicCommon];

  if (!v2)
  {
    goto LABEL_23;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = sub_10005476C(v3);

  if (!v4)
  {
    goto LABEL_23;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v4 + 16))
  {

    goto LABEL_22;
  }

  v7 = sub_100019C10(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_10000DD18(*(v4 + 56) + 32 * v7, v30);

  sub_10010FC20(&qword_101197BD0, &qword_100EC9700);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:
    if (qword_10117F658 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000060E4(v23, qword_101218B30);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_28;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "Unable to get the domain";
    goto LABEL_27;
  }

  if (!*(v29._countAndFlagsBits + 16) || (v10 = sub_100019C10(0x746C7561666564, 0xE700000000000000), (v11 & 1) == 0))
  {
LABEL_22:

    goto LABEL_23;
  }

  sub_10000DD18(*(v29._countAndFlagsBits + 56) + 32 * v10, v30);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v12 = sub_10036D9E0();
  if (v12)
  {
    v13 = v12;
    v14 = [v12 dictionaryForBagKey:ICURLBagKeyMusicSubscription];

    if (v14)
    {
      v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v16 = sub_10005476C(v15);

      if (v16)
      {
        if (!*(v16 + 16) || (v17 = sub_100019C10(6909037, 0xE300000000000000), (v18 & 1) == 0))
        {
LABEL_29:

          goto LABEL_30;
        }

        sub_10000DD18(*(v16 + 56) + 32 * v17, v30);

        if (swift_dynamicCast())
        {
          if (*(v29._countAndFlagsBits + 16))
          {
            v19 = sub_100019C10(0x6150495041696C6DLL, 0xEA00000000006874);
            if (v20)
            {
              sub_10000DD18(*(v29._countAndFlagsBits + 56) + 32 * v19, v30);

              if (swift_dynamicCast())
              {
                v30[0] = v29;
                v21._countAndFlagsBits = 3241519;
                v21._object = 0xE300000000000000;
                String.append(_:)(v21);
                String.append(_:)(v29);

                return *&v30[0];
              }

              goto LABEL_30;
            }
          }

          goto LABEL_29;
        }
      }
    }
  }

LABEL_30:

  if (qword_10117F658 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_1000060E4(v28, qword_101218B30);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v24, v25))
  {
    goto LABEL_28;
  }

  v26 = swift_slowAlloc();
  *v26 = 0;
  v27 = "Unable to get the path";
LABEL_27:
  _os_log_impl(&_mh_execute_header, v24, v25, v27, v26, 2u);

LABEL_28:

  return 0;
}

uint64_t sub_10036E140()
{
  v1 = v0;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v3 = &v35 - v2;
  type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin();
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v35 - v6;
  type metadata accessor for MetricsPageProperties(0);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MetricsEvent.Page.libraryLanding.unsafeMutableAddressor();
  sub_100372A44(v10, v7, type metadata accessor for MetricsEvent.Page);
  MetricsEvent.Page.metricsPageProperties.getter(v9);
  sub_10003CC78(v7, type metadata accessor for MetricsEvent.Page);
  v12 = *v9;
  v11 = *(v9 + 1);
  v13 = *(v9 + 2);
  v14 = *(v9 + 3);
  v15 = type metadata accessor for URL();
  v16 = *(*(v15 - 8) + 56);
  v37 = v3;
  v16(v3, 1, 1, v15);
  sub_10010FC20(&qword_101190BE0, &qword_100EC1580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = 0x6C61727265666572;
  v18 = inited + 32;
  *(inited + 40) = 0xEE00737574617453;
  v19 = *(v1 + 128);
  v36 = v13;
  v20 = v5;
  if (v19)
  {
    if (v19 == 1)
    {
      v21 = 0xE700000000000000;
      v22 = 0x64657472617473;
    }

    else
    {
      v21 = 0xE800000000000000;
      v22 = 0x6465776569766572;
    }
  }

  else
  {
    v21 = 0xE700000000000000;
    v22 = 0x6E776F6E6B6E75;
  }

  *(inited + 48) = v22;
  *(inited + 56) = v21;
  v23 = inited;

  v24 = sub_10010C578(v23);
  swift_setDeallocating();
  sub_1000095E8(v18, &qword_101183AA0, &unk_100ECAF50);
  v25 = v20;
  MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(v12, v11, v36, v14, v37, v24, 0, 0, v20, 1, *(v1 + 136), *(v1 + 144), 2);

  v26 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v27 = sub_10053771C();
  v29 = v28;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v30 = qword_101218AD0;
  v31 = GroupActivitiesManager.hasJoined.getter();
  v32 = GroupActivitiesManager.participantsCount.getter();
  v33 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v26) + 0xA0))(v25, v27, v29, v31 & 1, v32, *(v30 + v33));

  sub_10003CC78(v25, type metadata accessor for MetricsEvent.Page);
  return sub_10003CC78(v9, type metadata accessor for MetricsPageProperties);
}

char *sub_10036E568()
{

  v1 = OBJC_IVAR____TtCO5Music3MLI8Observer__viewModel;
  v2 = sub_10010FC20(&qword_10118CA88, &unk_100EDDA20);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1000095E8(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_mliReviewURL, &qword_101183A20, &unk_100EBCF80);

  sub_1000095E8(v0 + OBJC_IVAR____TtCO5Music3MLI8Observer_queuedViewModel, &unk_1011A4B90, &unk_100ED2800);

  return v0;
}

uint64_t sub_10036E6F0()
{
  sub_10036E568();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MLI.Observer(uint64_t a1)
{
  result = qword_10118C658;
  if (!qword_10118C658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10036E79C(uint64_t a1)
{
  sub_10036E94C(319);
  if (v1 <= 0x3F)
  {
    sub_10036E9B0(319, &qword_1011814C0, &type metadata accessor for URL);
    if (v2 <= 0x3F)
    {
      sub_10036E9B0(319, &qword_10118C670, type metadata accessor for LibraryImport.ViewModel);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10036E94C(uint64_t a1)
{
  if (!qword_10118C668)
  {
    sub_1001109D0(&unk_1011A4B90, &unk_100ED2800);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_10118C668);
    }
  }
}

void sub_10036E9B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_10036EA04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10036EA60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_10036EAC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t sub_10036EB20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10036EBA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t sub_10036EC00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10036EC64@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MLI.Observer(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

void sub_10036ECB4(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101194980, &qword_100ECA390);
  __chkstk_darwin();
  v9 = v48 - v8;
  v11 = *v2;
  v10 = v2[1];
  v13 = v2[2];
  v12 = v2[3];
  v14 = v2[4];
  v15 = *(v2 + 40);
  if (*(v2 + 41))
  {
    if (v13 | v10 | v11 | v12 | v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15 == 0;
    }

    if (!v16)
    {
      goto LABEL_33;
    }

    if (qword_10117F630 != -1)
    {
      swift_once();
    }

    v17 = *(qword_101218B28 + 40);
    if (v17)
    {
      v18 = *(qword_101218B28 + 32);
      v56 = 0x2F2F3A636973756DLL;
      v57 = 0xE800000000000000;

      v19._countAndFlagsBits = v18;
      v19._object = v17;
      String.append(_:)(v19);

      URL.init(string:)();

      return;
    }

    if (qword_10117F658 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000060E4(v31, qword_101218B30);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v26, v27))
    {
LABEL_32:

LABEL_33:
      v32 = type metadata accessor for URL();
      v33 = *(*(v32 - 8) + 56);

      v33(a1, 1, 1, v32);
      return;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "No deep link";
LABEL_31:
    _os_log_impl(&_mh_execute_header, v26, v27, v29, v28, 2u);

    goto LABEL_32;
  }

  v54 = v7;
  v58 = v12;
  if (qword_10117F630 != -1)
  {
    v47 = v13;
    swift_once();
    v13 = v47;
  }

  if (!*(qword_101218B28 + OBJC_IVAR____TtCO5Music3MLI8Observer_sessionID + 8))
  {
    if (qword_10117F658 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000060E4(v25, qword_101218B30);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_32;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "Trying to open url with no sessionID";
    goto LABEL_31;
  }

  v53 = v5;
  v20 = *(qword_101218B28 + 56);
  if (!v20)
  {
    if (qword_10117F658 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000060E4(v30, qword_101218B30);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_32;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "No review deep link";
    goto LABEL_31;
  }

  v52 = a1;
  v21 = *(qword_101218B28 + OBJC_IVAR____TtCO5Music3MLI8Observer_sessionID);
  v50 = v13;
  v51 = v21;
  v22 = *(qword_101218B28 + 48);
  v56 = 0x2F2F3A636973756DLL;
  v57 = 0xE800000000000000;

  v23._countAndFlagsBits = v22;
  v23._object = v20;
  String.append(_:)(v23);

  URLComponents.init(string:)();

  v24 = *(v53 + 48);
  if (v24(v9, 1, v4))
  {
  }

  else
  {
    v49 = v24;
    sub_10010FC20(&unk_101197BC0, &unk_100ECF170);
    v48[0] = *(*(type metadata accessor for URLQueryItem() - 8) + 72);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_100EBE260;
    v48[1] = v34;
    URLQueryItem.init(name:value:)();

    v56 = 0;
    v57 = 0xE000000000000000;
    if (v10)
    {
      v35 = 0;
    }

    else
    {
      v35 = v11;
    }

    if (v15)
    {
      v36 = 0;
    }

    else
    {
      v36 = v14;
    }

    v37 = __OFADD__(v35, v36);
    v38 = v35 + v36;
    if (v37)
    {
      __break(1u);
      return;
    }

    v55 = v38;
    v39._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v39);

    URLQueryItem.init(name:value:)();

    v56 = 0;
    v57 = 0xE000000000000000;
    v40 = v50;
    if (v58)
    {
      v40 = 0;
    }

    v55 = v40;
    v41._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v41);

    URLQueryItem.init(name:value:)();

    URLComponents.queryItems.setter();
    v24 = v49;
  }

  v42 = v24(v9, 1, v4);
  v43 = v52;
  v44 = v54;
  if (v42)
  {
    v45 = type metadata accessor for URL();
    (*(*(v45 - 8) + 56))(v43, 1, 1, v45);
  }

  else
  {
    v46 = v53;
    (*(v53 + 16))(v54, v9, v4);
    URLComponents.url.getter();
    (*(v46 + 8))(v44, v4);
  }

  sub_1000095E8(v9, &qword_101194980, &qword_100ECA390);
}

uint64_t sub_10036F49C()
{
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v1 = &v12 - v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10036ECB4(v1);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    return sub_1000095E8(v1, &qword_101183A20, &unk_100EBCF80);
  }

  (*(v3 + 32))(v5, v1, v2);
  v7 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  sub_10010CD7C(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_100373174(&qword_10118A3E0, type metadata accessor for OpenExternalURLOptionsKey, &unk_100EBC3A0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v7 openURL:v10 options:isa completionHandler:0];

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10036F6EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x736D75626C61;
  if (v2 != 1)
  {
    v4 = 0x69762D636973756DLL;
    v3 = 0xEC000000736F6564;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x73676E6F73;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x736D75626C61;
  if (*a2 != 1)
  {
    v8 = 0x69762D636973756DLL;
    v7 = 0xEC000000736F6564;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x73676E6F73;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10036F7F4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_10036F898(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_10036F928(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10036F9C8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100373C20(*a1);
  *a2 = result;
  return result;
}

void sub_10036F9F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x736D75626C61;
  if (v2 != 1)
  {
    v5 = 0x69762D636973756DLL;
    v4 = 0xEC000000736F6564;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x73676E6F73;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10036FA58()
{
  v1 = 0x736D75626C61;
  if (*v0 != 1)
  {
    v1 = 0x69762D636973756DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73676E6F73;
  }
}

unint64_t sub_10036FAB4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100373C20(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10036FADC(uint64_t a1)
{
  v2 = sub_100375348();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10036FB18(uint64_t a1)
{
  v2 = sub_100375348();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10036FB54(void *a1)
{
  v3 = sub_10010FC20(&qword_10118CB90, &qword_100EC8720);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v8[-v5];
  sub_10000954C(a1, a1[3]);
  sub_100375348();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

double sub_10036FD00@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100373C6C(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 9);
    *(a1 + 25) = *(v7 + 9);
  }

  return result;
}

BOOL sub_10036FD5C(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_100372538(&v5, &v7);
}

void sub_10036FDA8(uint64_t a1)
{
  if (*(a1 + 41))
  {
    if (*(a1 + 16) | *(a1 + 8) | *a1 | *(a1 + 24) | *(a1 + 32))
    {
      v1 = 0;
    }

    else
    {
      v1 = *(a1 + 40) == 0;
    }

    if (v1)
    {
      if (qword_10117F630 != -1)
      {
        swift_once();
      }

      sub_100367784();
    }

    else
    {
      sub_100367F14();
    }
  }
}

uint64_t sub_10036FE40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s12ClickMetricsVMa(0);
  v28 = *(v4 - 1);
  __chkstk_darwin();
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v8 = &v27 - v7;
  v10 = *(a1 + 80);
  v9 = *(a1 + 88);
  v11 = *(a1 + 144);
  v41 = *(a1 + 128);
  v42[0] = v11;
  *(v42 + 10) = *(a1 + 154);
  swift_bridgeObjectRetain_n();
  sub_100372BF4(v10, v9, &v41, v30);
  if (v33)
  {

LABEL_13:

    v15 = *(v28 + 56);

    return v15(a2, 1, 1, v4);
  }

  if (v31)
  {
    v12 = 0;
  }

  else
  {
    v12 = (v30[1] | v30[0] | v30[2] | v30[3] | v30[4]) == 0;
  }

  if (v12)
  {
    v13 = 28;
  }

  else
  {
    v13 = 19;
  }

  if (v32)
  {
    v14 = v13;
  }

  else
  {
    v14 = 28;
  }

  sub_100372BF4(v10, v9, &v41, v34);
  if (v37)
  {
    goto LABEL_13;
  }

  if (v36)
  {
    v17 = (v34[1] | v34[0] | v34[2] | v34[3] | v34[4]) == 0;
    v18 = v35 == 0;
    if (v17 && v18)
    {
      v19 = 0x7972746552;
    }

    else
    {
      v19 = 19279;
    }

    if (v17 && v18)
    {
      v20 = 0xE500000000000000;
    }

    else
    {
      v20 = 0xE200000000000000;
    }
  }

  else
  {
    v20 = 0xE900000000000077;
    v19 = 0x6F4E776569766552;
  }

  sub_100372BF4(v10, v9, &v41, v38);
  if (v39)
  {
    v21 = type metadata accessor for URL();
    (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  }

  else
  {
    sub_10036ECB4(v8);
  }

  v40 = *(a1 + 176);
  v22 = v40;
  v6[v4[8]] = 4;
  *v6 = v14;
  sub_10003D17C(v8, &v6[v4[5]], &qword_101183A20, &unk_100EBCF80);
  v23 = &v6[v4[6]];
  *v23 = v19;
  v23[1] = v20;
  v24 = &v6[v4[7]];
  if (*(&v22 + 1) >= 2uLL)
  {
    v25 = v22;
  }

  else
  {
    v25 = 0;
  }

  v26 = 12;
  if (*(&v22 + 1) >= 2uLL)
  {
    v26 = *(&v22 + 1);
  }

  *v24 = v25;
  *(v24 + 1) = v26;
  sub_1003731BC(v6, a2, _s12ClickMetricsVMa);
  (*(v28 + 56))(a2, 0, 1, v4);
  return sub_1000089F8(&v40, v29, &qword_10118CAA0, &qword_100EC7F98);
}

uint64_t sub_100370228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s12ClickMetricsVMa(0);
  v5 = *(v4 - 1);
  __chkstk_darwin();
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v9 = &v17[-v8];
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v18 = *(a1 + 176);
  v11 = v18;
  v7[v4[8]] = 4;
  *v7 = 19;
  sub_10003D17C(v9, &v7[v4[5]], &qword_101183A20, &unk_100EBCF80);
  v12 = &v7[v4[6]];
  *v12 = 0x65736F6C43;
  v12[1] = 0xE500000000000000;
  v13 = &v7[v4[7]];
  if (*(&v11 + 1) >= 2uLL)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  v15 = 12;
  if (*(&v11 + 1) >= 2uLL)
  {
    v15 = *(&v11 + 1);
  }

  *v13 = v14;
  v13[1] = v15;
  sub_1003731BC(v7, a2, _s12ClickMetricsVMa);
  (*(v5 + 56))(a2, 0, 1, v4);
  return sub_1000089F8(&v18, v17, &qword_10118CAA0, &qword_100EC7F98);
}

unint64_t sub_10037044C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x537373696D736964;
    v6 = 0x526F54736D657469;
    if (a1 != 8)
    {
      v6 = 0x7363697274656DLL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6E6F69746361;
    if (a1 != 5)
    {
      v7 = 0x547373696D736964;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x73736572676F7270;
    v2 = 0x656C746974;
    v3 = 0x656C746974627573;
    if (a1 != 3)
    {
      v3 = 0x74536E6F69746361;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1003705AC(void *a1)
{
  v3 = v1;
  v5 = sub_10010FC20(&qword_10118CAF8, &qword_100EC8330);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v12[-v7 - 16];
  sub_10000954C(a1, a1[3]);
  sub_100374B88();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v11 = *v3;
  BYTE8(v11) = *(v3 + 8);
  v13 = 0;
  sub_100282B9C();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = *(v3 + 144);
    v11 = *(v3 + 128);
    *v12 = v9;
    *&v12[10] = *(v3 + 154);
    v13 = 8;
    sub_100374CBC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11 = *(v3 + 176);
    v13 = 9;
    sub_100374D10();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1003708B8(void *a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_10118CB10, &qword_100EC8338);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v15 - v6;
  sub_10000954C(a1, a1[3]);
  sub_100374AE0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v2[9];
  v24 = v2[8];
  v25 = v8;
  v9 = v2[11];
  v26 = v2[10];
  v27 = v9;
  v10 = v2[5];
  v20 = v2[4];
  v21 = v10;
  v11 = v2[7];
  v22 = v2[6];
  v23 = v11;
  v12 = v2[1];
  v16 = *v2;
  v17 = v12;
  v13 = v2[3];
  v18 = v2[2];
  v19 = v13;
  sub_100374D64(v2, v15);
  sub_100374D9C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v15[8] = v24;
  v15[9] = v25;
  v15[10] = v26;
  v15[11] = v27;
  v15[4] = v20;
  v15[5] = v21;
  v15[6] = v22;
  v15[7] = v23;
  v15[0] = v16;
  v15[1] = v17;
  v15[2] = v18;
  v15[3] = v19;
  sub_100373464(v15);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100370A88@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100373E74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100370ABC(uint64_t a1)
{
  v2 = sub_100374B88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100370AF8(uint64_t a1)
{
  v2 = sub_100374B88();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100370B34@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1003741B8(a2, v11);
  if (!v2)
  {
    v5 = v19;
    a1[8] = v18;
    a1[9] = v5;
    v6 = v21;
    a1[10] = v20;
    a1[11] = v6;
    v7 = v15;
    a1[4] = v14;
    a1[5] = v7;
    v8 = v17;
    a1[6] = v16;
    a1[7] = v8;
    v9 = v11[1];
    *a1 = v11[0];
    a1[1] = v9;
    result = *&v12;
    v10 = v13;
    a1[2] = v12;
    a1[3] = v10;
  }

  return result;
}

uint64_t sub_100370BB0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v15[8] = a1[8];
  v15[9] = v2;
  v3 = a1[11];
  v15[10] = a1[10];
  v15[11] = v3;
  v4 = a1[5];
  v15[4] = a1[4];
  v15[5] = v4;
  v5 = a1[7];
  v15[6] = a1[6];
  v15[7] = v5;
  v6 = a1[1];
  v15[0] = *a1;
  v15[1] = v6;
  v7 = a1[3];
  v15[2] = a1[2];
  v15[3] = v7;
  v8 = a2[9];
  v16[8] = a2[8];
  v16[9] = v8;
  v9 = a2[11];
  v16[10] = a2[10];
  v16[11] = v9;
  v10 = a2[5];
  v16[4] = a2[4];
  v16[5] = v10;
  v11 = a2[7];
  v16[6] = a2[6];
  v16[7] = v11;
  v12 = a2[1];
  v16[0] = *a2;
  v16[1] = v12;
  v13 = a2[3];
  v16[2] = a2[2];
  v16[3] = v13;
  return sub_1003725BC(v15, v16) & 1;
}

void sub_100370C58(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_100370CDC(uint64_t a1)
{
  v2 = sub_100374DF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100370D18(uint64_t a1)
{
  v2 = sub_100374DF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100370D54@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10010FC20(&qword_10118CB20, &qword_100EC8340);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v13 - v7;
  sub_10000954C(a1, a1[3]);
  sub_100374DF0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000959C(a1);
  }

  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_10000959C(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_100370ED0(void *a1)
{
  v2 = sub_10010FC20(&qword_10118CB30, &qword_100EC8348);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v7 - v4;
  sub_10000954C(a1, a1[3]);
  sub_100374DF0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10037100C(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

void sub_100371080(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_100371108(uint64_t a1)
{
  v2 = sub_100374AE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100371144(uint64_t a1)
{
  v2 = sub_100374AE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100371180@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1003748B4(a2, v11);
  if (!v2)
  {
    v5 = v19;
    a1[8] = v18;
    a1[9] = v5;
    v6 = v21;
    a1[10] = v20;
    a1[11] = v6;
    v7 = v15;
    a1[4] = v14;
    a1[5] = v7;
    v8 = v17;
    a1[6] = v16;
    a1[7] = v8;
    v9 = v11[1];
    *a1 = v11[0];
    a1[1] = v9;
    result = *&v12;
    v10 = v13;
    a1[2] = v12;
    a1[3] = v10;
  }

  return result;
}

void sub_100371240()
{
  sub_10010FC20(&unk_1011A4B90, &unk_100ED2800);
  __chkstk_darwin();
  v1 = &v9 - v0;
  if (qword_10117F630 != -1)
  {
    swift_once();
  }

  v2 = qword_101218B28;
  v3 = OBJC_IVAR____TtCO5Music3MLI8Observer_didDismissBanner;
  v4 = *(qword_101218B28 + OBJC_IVAR____TtCO5Music3MLI8Observer_didDismissBanner);
  *(qword_101218B28 + OBJC_IVAR____TtCO5Music3MLI8Observer_didDismissBanner) = 1;
  if ((v4 & 1) == 0)
  {
    v5 = [objc_opt_self() standardUserDefaults];
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v7 = String._bridgeToObjectiveC()();
    [v5 setValue:isa forKey:v7];

    if (*(v2 + v3))
    {
      v8 = type metadata accessor for LibraryImport.ViewModel(0);
      (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
      sub_100369A78(v1);
      sub_1000095E8(v1, &unk_1011A4B90, &unk_100ED2800);
    }
  }
}

uint64_t sub_1003713F0()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10118C558 = result;
  unk_10118C560 = v1;
  return result;
}

uint64_t sub_1003714F0()
{
  v0 = type metadata accessor for LibraryImport.ViewModel(0);
  sub_100006080(v0, qword_10118C568);
  v1 = sub_1000060E4(v0, qword_10118C568);
  if (qword_10117F638 != -1)
  {
    swift_once();
  }

  v3 = qword_10118C558;
  v2 = unk_10118C560;
  v4 = _s16ActionButtonViewV5ModelVMa(0);
  v5 = *(v4 + 48);
  v6 = _s12ClickMetricsVMa(0);
  v7 = *(*(v6 - 8) + 56);
  v7(v1 + v5, 1, 1, v6);
  v7(v1 + *(v4 + 52), 1, 1, v6);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = v3;
  *(v1 + 24) = v2;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0;
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_10037164C()
{
  v0 = type metadata accessor for LibraryImport.ViewModel(0);
  sub_100006080(v0, qword_10118C580);
  v1 = sub_1000060E4(v0, qword_10118C580);
  if (qword_10117F638 != -1)
  {
    v4 = v1;
    swift_once();
    v1 = v4;
  }

  v2 = unk_10118C560;
  *v1 = qword_10118C558;
  v1[1] = v2;
  v1[3] = 0;
  v1[4] = 0;
  v1[2] = 0;
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_100371704()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v0 = type metadata accessor for LibraryImport.ViewModel(0);
  sub_100006080(v0, qword_10118C598);
  v1 = sub_1000060E4(v0, qword_10118C598);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v2 = String.init(localized:table:bundle:locale:comment:)();
  v4 = v3;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v5 = String.init(localized:table:bundle:locale:comment:)();
  *v1 = v2;
  v1[1] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v1[4] = 0;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1003718A8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 valueForKey:v7];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (!*(&v15 + 1))
  {
    result = sub_1000095E8(v16, &unk_101183F30, qword_100EBF960);
    goto LABEL_8;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    v12 = 0xE300000000000000;
    v10 = 7104878;
    goto LABEL_9;
  }

  Date.init(timeIntervalSinceReferenceDate:)();
  v10 = Date.description.getter();
  v12 = v11;
  result = (*(v3 + 8))(v5, v2);
LABEL_9:
  a1[3] = &type metadata for String;
  *a1 = v10;
  a1[1] = v12;
  return result;
}

uint64_t sub_100371A90@<X0>(unint64_t *a2@<X8>)
{
  _s16ActionButtonViewV5ModelVMa(0);
  __chkstk_darwin();
  v4 = &v34[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&unk_1011A4B90, &unk_100ED2800);
  __chkstk_darwin();
  v6 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v34[-v7];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v8);

  v9 = type metadata accessor for LibraryImport.ViewModel(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    goto LABEL_28;
  }

  sub_1000089F8(v8, v6, &unk_1011A4B90, &unk_100ED2800);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1003731BC(v6, v4, _s16ActionButtonViewV5ModelVMa);
      sub_10010FC20(&unk_1011972C0, &qword_100ECF9B0);
      inited = swift_initStackObject();
      v12 = inited;
      *(inited + 16) = xmmword_100EBCED0;
      *(inited + 32) = 1701869940;
      *(inited + 40) = 0xE400000000000000;
      strcpy((inited + 48), "actionButton");
      *(inited + 61) = 0;
      *(inited + 62) = -5120;
      *(inited + 72) = &type metadata for String;
      *(inited + 80) = 0x656C746974;
      v13 = *v4;
      if (v4[1])
      {
        v14 = v4[1];
      }

      else
      {
        v13 = 7104878;
        v14 = 0xE300000000000000;
      }

      *(inited + 88) = 0xE500000000000000;
      *(inited + 96) = v13;
      *(inited + 104) = v14;
      *(inited + 120) = &type metadata for String;
      *(inited + 128) = 0x656C746974627573;
      v15 = v4[2];
      if (v4[3])
      {
        v16 = v4[3];
      }

      else
      {
        v15 = 7104878;
        v16 = 0xE300000000000000;
      }

      *(inited + 136) = 0xE800000000000000;
      *(inited + 144) = v15;
      *(inited + 152) = v16;
      *(inited + 168) = &type metadata for String;
      *(inited + 176) = 0x614C6E6F69746361;
      v17 = v4[4];
      if (v4[5])
      {
        v18 = v4[5];
      }

      else
      {
        v17 = 7104878;
        v18 = 0xE300000000000000;
      }

      *(inited + 184) = 0xEB000000006C6562;
      *(inited + 192) = v17;
      *(inited + 200) = v18;
      *(inited + 216) = &type metadata for String;
      *(inited + 224) = 0x6E6F69746361;
      v19 = v4[6];
      if (v4[7])
      {
        v20 = v4[7];
      }

      else
      {
        v19 = 7104878;
        v20 = 0xE300000000000000;
      }

      *(inited + 232) = 0xE600000000000000;
      *(inited + 240) = v19;
      *(inited + 248) = v20;
      *(inited + 264) = &type metadata for String;
      *(inited + 272) = 0xD000000000000011;
      *(inited + 280) = 0x8000000100E47F60;

      sub_100372010(v4, (v12 + 288));
      v21 = sub_10010BC60(v12);
      swift_setDeallocating();
      sub_10010FC20(&unk_1011927D0, &unk_100EBA560);
      swift_arrayDestroy();
      a2[3] = sub_10010FC20(&qword_101197BD0, &qword_100EC9700);
      *a2 = v21;
      sub_10003CC78(v4, _s16ActionButtonViewV5ModelVMa);
      return sub_1000095E8(v8, &unk_1011A4B90, &unk_100ED2800);
    }

    sub_10003CC78(v6, type metadata accessor for LibraryImport.ViewModel);
LABEL_28:
    a2[3] = &type metadata for String;
    *a2 = 7104878;
    a2[1] = 0xE300000000000000;
    return sub_1000095E8(v8, &unk_1011A4B90, &unk_100ED2800);
  }

  v22 = *v6;
  v23 = v6[1];
  v24 = v6[2];
  v25 = v6[3];
  v26 = v6[4];
  sub_10010FC20(&unk_1011972C0, &qword_100ECF9B0);
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_100EBEF50;
  *(v27 + 32) = 1701869940;
  *(v27 + 40) = 0xE400000000000000;
  *(v27 + 48) = 0x6572676F72506E69;
  *(v27 + 56) = 0xEA00000000007373;
  *(v27 + 72) = &type metadata for String;
  *(v27 + 80) = 0x656C746974;
  v28 = 7104878;
  if (v23)
  {
    v29 = v22;
  }

  else
  {
    v29 = 7104878;
  }

  if (v23)
  {
    v30 = v23;
  }

  else
  {
    v30 = 0xE300000000000000;
  }

  *(v27 + 88) = 0xE500000000000000;
  *(v27 + 96) = v29;
  *(v27 + 104) = v30;
  *(v27 + 120) = &type metadata for String;
  *(v27 + 128) = 0x656C746974627573;
  if (v25)
  {
    v28 = v24;
    v31 = v25;
  }

  else
  {
    v31 = 0xE300000000000000;
  }

  *(v27 + 136) = 0xE800000000000000;
  *(v27 + 144) = v28;
  *(v27 + 152) = v31;
  *(v27 + 168) = &type metadata for String;
  *(v27 + 176) = 0x73736572676F7270;
  *(v27 + 184) = 0xE800000000000000;
  *(v27 + 216) = &type metadata for CGFloat;
  *(v27 + 192) = v26;
  v32 = sub_10010BC60(v27);
  swift_setDeallocating();
  sub_10010FC20(&unk_1011927D0, &unk_100EBA560);
  swift_arrayDestroy();
  a2[3] = sub_10010FC20(&qword_101197BD0, &qword_100EC9700);
  *a2 = v32;
  return sub_1000095E8(v8, &unk_1011A4B90, &unk_100ED2800);
}

void sub_100372010(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = a1[16];
  if (v3)
  {
    v4 = a1[17];
    v6 = a1[14];
    v5 = a1[15];
    v8 = a1[12];
    v7 = a1[13];
    sub_10010FC20(&qword_101190BE0, &qword_100EC1580);
    inited = swift_initStackObject();
    v10 = inited;
    *(inited + 32) = 0x656C746974;
    *(inited + 16) = xmmword_100EBDC20;
    if (v7)
    {
      v11 = v8;
    }

    else
    {
      v11 = 7104878;
    }

    v12 = 0xE300000000000000;
    if (v7)
    {
      v13 = v7;
    }

    else
    {
      v13 = 0xE300000000000000;
    }

    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = v11;
    *(inited + 56) = v13;
    *(inited + 64) = 0x656C746974627573;
    if (v5)
    {
      v14 = v6;
    }

    else
    {
      v14 = 7104878;
    }

    if (v5)
    {
      v12 = v5;
    }

    *(inited + 72) = 0xE800000000000000;
    *(inited + 80) = v14;
    *(inited + 88) = v12;

    sub_10037292C(v8, v7, v6, v5, v3, v4);

    v15 = sub_10010C578(v10);
    swift_setDeallocating();
    sub_10010FC20(&qword_101183AA0, &unk_100ECAF50);
    swift_arrayDestroy();
    a2[3] = sub_10010FC20(&unk_10118A3F0, &qword_100ECDA70);

    *a2 = v15;
  }

  else
  {
    a2[3] = &type metadata for String;
    *a2 = 7104878;
    a2[1] = 0xE300000000000000;
  }
}

uint64_t sub_1003721A8()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101218B30);
  sub_1000060E4(v0, qword_101218B30);
  return static Logger.music(_:)(6909037, 0xE300000000000000);
}

double sub_100372200@<D0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a2);

  return result;
}

uint64_t sub_10037227C(uint64_t a1, uint64_t *a2)
{
  sub_10010FC20(&unk_1011A4B90, &unk_100ED2800);
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v8 - v5;
  sub_1000089F8(a1, &v8 - v5, &unk_1011A4B90, &unk_100ED2800);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v6, v4, &unk_1011A4B90, &unk_100ED2800);

  static Published.subscript.setter();
  return sub_1000095E8(v6, &unk_1011A4B90, &unk_100ED2800);
}

void sub_1003723AC()
{
  if (qword_10117F658 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000060E4(v0, qword_101218B30);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Active user changed, reset user defaults", v3, 2u);
  }

  v4 = [objc_opt_self() standardUserDefaults];
  if (qword_10117F620 != -1)
  {
    swift_once();
  }

  v5 = String._bridgeToObjectiveC()();
  [v4 removeObjectForKey:v5];
}

BOOL sub_100372538(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v4 = *(a2 + 40);
  if ((*(a1 + 40) & 1) == 0)
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v4 = 1;
    }

    return (v4 & 1) == 0;
  }

  return (*(a2 + 40) & 1) != 0;
}

uint64_t sub_1003725BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return v2;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      LOBYTE(v2) = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v2 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return v2;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      LOBYTE(v2) = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a1 + 40);
  v4 = *(a2 + 40);
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    if (*(a1 + 32) != *(a2 + 32) || v3 != v4)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v4)
  {
    return 0;
  }

  v9 = *(a1 + 56);
  v10 = *(a2 + 56);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (*(a1 + 48) != *(a2 + 48) || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = *(a1 + 72);
  v16 = *(a2 + 72);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    if (*(a1 + 64) != *(a2 + 64) || v15 != v16)
    {
      v17 = a1;
      v18 = a2;
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v18;
      v20 = v19;
      a1 = v17;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  v21 = *(a1 + 88);
  v22 = *(a2 + 88);
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    if (*(a1 + 80) != *(a2 + 80) || v21 != v22)
    {
      v23 = a1;
      v24 = a2;
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v24;
      v26 = v25;
      a1 = v23;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  v27 = *(a1 + 104);
  v28 = *(a2 + 104);
  if (v27)
  {
    if (!v28)
    {
      return 0;
    }

    if (*(a1 + 96) != *(a2 + 96) || v27 != v28)
    {
      v29 = a1;
      v30 = a2;
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v30;
      v32 = v31;
      a1 = v29;
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v28)
  {
    return 0;
  }

  v33 = *(a1 + 120);
  v34 = *(a2 + 120);
  if (v33)
  {
    if (!v34)
    {
      return 0;
    }

    if (*(a1 + 112) != *(a2 + 112) || v33 != v34)
    {
      v35 = a1;
      v36 = a2;
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v36;
      v38 = v37;
      a1 = v35;
      if ((v38 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v34)
  {
    return 0;
  }

  if (*(a1 + 169))
  {
    if ((*(a2 + 169) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_57;
  }

  if (*(a2 + 169))
  {
    return 0;
  }

  v41 = *(a2 + 136);
  v42 = *(a2 + 152);
  if (*(a1 + 136))
  {
    if ((v41 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v41 & 1 | (*(a1 + 128) != *(a2 + 128)))
  {
    return 0;
  }

  if (*(a1 + 152))
  {
    if ((v42 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v42 & 1 | (*(a1 + 144) != *(a2 + 144)))
  {
    return 0;
  }

  if (*(a1 + 168))
  {
    if ((*(a2 + 168) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_57;
  }

  v2 = 0;
  if ((*(a2 + 168) & 1) == 0 && *(a1 + 160) == *(a2 + 160))
  {
LABEL_57:
    v39 = *(a1 + 184);
    v40 = *(a2 + 184);
    if (v39 == 1)
    {
      if (v40 == 1)
      {
        return 1;
      }
    }

    else if (v40 != 1)
    {
      if (v39)
      {
        if (v40 && (*(a1 + 176) == *(a2 + 176) && v39 == v40 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v40)
      {
        return 1;
      }
    }

    return 0;
  }

  return v2;
}

void sub_10037292C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
  }
}

uint64_t sub_10037297C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_10036561C(a1, v4, v5, v6);
}

uint64_t sub_100372A44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100372AAC(uint64_t a1)
{
  v4 = *(type metadata accessor for LibraryImport.ViewModel(0) - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_10036CA78(a1, v6, v7, v8, (v1 + 5), v1 + v5);
}

unint64_t sub_100372BA8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10109A858, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void sub_100372BF4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a3;
  v9 = *(a3 + 8);
  v10 = *(a3 + 24);
  v38 = *(a3 + 16);
  v39 = v8;
  v11 = *(a3 + 32);
  v12 = *(a3 + 40);
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v38 - v15;
  if (!a2)
  {
    goto LABEL_28;
  }

  if (a1 == 0x7472617473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v17 = 1;
LABEL_6:

    goto LABEL_7;
  }

  if (a1 == 0x776569766572 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    if (*(a3 + 41))
    {
      v21 = 0;
      v23 = 0;
      v11 = 0;
      v32 = 1;
      v24 = 1;
      v12 = 1;
    }

    else
    {
      v32 = v9 & 1;
      v24 = v10 & 1;
      v23 = v38;
      v21 = v39;
    }

    v40 = v21;
    v41 = v32;
    v39 = v32;
    v42 = v23;
    v43 = v24;
    v44 = v11;
    LODWORD(v38) = v12 & 1;
    v45 = v12 & 1;
    v46 = 0;
    if (qword_10117F630 != -1)
    {
      swift_once();
    }

    v33 = qword_101218B28;
    sub_10036ECB4(v16);
    v34 = OBJC_IVAR____TtCO5Music3MLI8Observer_mliReviewURL;
    swift_beginAccess();
    sub_1000089F8(v33 + v34, v14, &qword_101183A20, &unk_100EBCF80);
    swift_beginAccess();
    sub_1001EBCE4(v16, v33 + v34);
    swift_endAccess();
    sub_10036910C(v14);
    sub_1000095E8(v14, &qword_101183A20, &unk_100EBCF80);
    sub_1000095E8(v16, &qword_101183A20, &unk_100EBCF80);
    v31 = 0;
    v22 = v39;
    v30 = v38;
    goto LABEL_23;
  }

  if (a1 == 0x65736F6C63 && a2 == 0xE500000000000000)
  {
    v17 = 0;
    goto LABEL_6;
  }

  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v17 = 0;
  if ((v37 & 1) == 0)
  {
LABEL_28:
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v11 = 0;
    v26 = 0;
    v25 = 1;
    goto LABEL_29;
  }

LABEL_7:
  if (qword_10117F630 != -1)
  {
    swift_once();
  }

  v18 = qword_101218B28;
  v19 = type metadata accessor for URL();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = OBJC_IVAR____TtCO5Music3MLI8Observer_mliReviewURL;
  swift_beginAccess();
  sub_1000089F8(v18 + v20, v14, &qword_101183A20, &unk_100EBCF80);
  swift_beginAccess();
  sub_1001EBCE4(v16, v18 + v20);
  swift_endAccess();
  sub_10036910C(v14);
  sub_1000095E8(v14, &qword_101183A20, &unk_100EBCF80);
  sub_1000095E8(v16, &qword_101183A20, &unk_100EBCF80);
  if ((v17 & 1) == 0)
  {
    v27 = [objc_opt_self() standardUserDefaults];
    v28.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
    if (qword_10117F628 != -1)
    {
      swift_once();
    }

    v29 = String._bridgeToObjectiveC()();
    [v27 setValue:v28.super.super.isa forKey:v29];

    v22 = 0;
    v23 = 0;
    v24 = 0;
    v11 = 0;
    v30 = 0;
    v31 = 256;
    v21 = 1;
LABEL_23:
    v35 = [objc_opt_self() defaultCenter];
    v36 = static NSNotificationName.libraryImportCompleted.getter();
    [v35 postNotificationName:v36 object:0];

    v25 = 0;
    v26 = v31 | v30;
    goto LABEL_29;
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v11 = 0;
  v25 = 0;
  v26 = 256;
LABEL_29:
  *a4 = v21;
  *(a4 + 8) = v22;
  *(a4 + 16) = v23;
  *(a4 + 24) = v24;
  *(a4 + 32) = v11;
  *(a4 + 40) = v26;
  *(a4 + 42) = v25;
}

uint64_t sub_100373174(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003731BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100373224(uint64_t a1)
{
  v4 = *(type metadata accessor for MusicDataRequest() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_10036A2E4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10037335C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_10036B808(a1, v4, v5, v6);
}

unint64_t sub_100373410()
{
  result = qword_10118CAB0;
  if (!qword_10118CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CAB0);
  }

  return result;
}

uint64_t sub_100373494(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_10036B448(a1, v4, v5, v7, v6);
}

uint64_t sub_100373554(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1003735A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_10036886C(a1, v4, v5, v6);
}

uint64_t sub_100373654(uint64_t a1)
{
  type metadata accessor for MusicDataRequest();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002F3F4;

  return sub_1003682B8(a1);
}

uint64_t sub_100373744(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_100373834(uint64_t a1)
{
  v4 = *(type metadata accessor for LibraryImportStatus() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1003672F0(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1003739A4(uint64_t a1)
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

__n128 sub_1003739C8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_100373A0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 192))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100373A68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_100373AFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t sub_100373B58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_100373BCC()
{
  result = qword_10118CAB8;
  if (!qword_10118CAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CAB8);
  }

  return result;
}

unint64_t sub_100373C20(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10109A8C0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100373C6C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10010FC20(&qword_10118CB80, &qword_100EC8718);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v20 - v7;
  sub_10000954C(a1, a1[3]);
  sub_100375348();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000959C(a1);
  }

  v25 = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v10;
  v12 = v9;
  v24 = 1;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v22 = v14;
  v21 = v13;
  v23 = 2;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = v8;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = sub_10000959C(a1);
  *a2 = v12;
  *(a2 + 8) = v11 & 1;
  *(a2 + 16) = v21;
  *(a2 + 24) = v22 & 1;
  *(a2 + 32) = v15;
  *(a2 + 40) = v18 & 1;
  return result;
}

uint64_t sub_100373E74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736572676F7270 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100E480B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74536E6F69746361 && a2 == 0xEC000000676E6972 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x547373696D736964 && a2 == 0xEC000000656C7469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x537373696D736964 && a2 == 0xEF656C7469746275 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x526F54736D657469 && a2 == 0xED00007765697665 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

void sub_1003741B8(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v54 = sub_10010FC20(&qword_10118CAD8, &qword_100EC8328);
  v5 = *(v54 - 8);
  __chkstk_darwin();
  v7 = &v29 - v6;
  sub_10000954C(a1, a1[3]);
  sub_100374B88();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000959C(a1);
  }

  else
  {
    LOBYTE(v55) = 0;
    sub_100282AE0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v8 = v67;
    v98 = v68;
    LOBYTE(v67) = 1;
    v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v53 = v8;
    v97 = v9 & 1;
    LOBYTE(v67) = 2;
    v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v51 = v11;
    LOBYTE(v67) = 3;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v50 = v13;
    v44 = v12;
    LOBYTE(v67) = 4;
    v49 = 0;
    v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v48 = v14;
    LOBYTE(v67) = 5;
    v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v47 = v15;
    LOBYTE(v67) = 6;
    v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v46 = v16;
    LOBYTE(v67) = 7;
    v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v45 = v17;
    LOBYTE(v55) = 8;
    sub_100374BDC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v34 = v10;
    v49 = v67;
    v38 = v69;
    v39 = v68;
    v36 = v71;
    v37 = v70;
    v35 = v72;
    v100 = BYTE1(v72);
    v99 = 9;
    sub_100374C30();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v5 + 8))(v7, v54);
    v33 = *(&v94 + 1);
    v54 = v94;
    *&v55 = v53;
    v32 = v98;
    BYTE8(v55) = v98;
    v18 = v51;
    *&v56 = v52;
    v31 = v97;
    BYTE8(v56) = v97;
    v19 = v34;
    *&v57 = v34;
    *(&v57 + 1) = v51;
    v20 = v50;
    *&v58 = v44;
    *(&v58 + 1) = v50;
    v22 = v47;
    v21 = v48;
    *&v59 = v43;
    *(&v59 + 1) = v48;
    *&v60 = v42;
    *(&v60 + 1) = v47;
    *&v61 = v41;
    *(&v61 + 1) = v46;
    *&v62 = v40;
    *(&v62 + 1) = v45;
    *&v63 = v49;
    *(&v63 + 1) = v39;
    *&v64 = v38;
    *(&v64 + 1) = v37;
    *&v65 = v36;
    BYTE8(v65) = v35;
    v30 = v100;
    BYTE9(v65) = v100;
    v66 = v94;
    sub_100374C84(&v55, &v67);
    sub_10000959C(a1);
    v67 = v53;
    LOBYTE(v68) = v32;
    v69 = v52;
    LOBYTE(v70) = v31;
    v71 = v19;
    v72 = v18;
    v73 = v44;
    v74 = v20;
    v75 = v43;
    v76 = v21;
    v77 = v42;
    v78 = v22;
    v79 = v41;
    v80 = v46;
    v81 = v40;
    v82 = v45;
    v83 = v49;
    v84 = v39;
    v85 = v38;
    v86 = v37;
    v87 = v36;
    v88 = v35;
    v89 = v30;
    v90 = v95;
    v91 = v96;
    v92 = v54;
    v93 = v33;
    sub_100373464(&v67);
    v23 = v64;
    a2[8] = v63;
    a2[9] = v23;
    v24 = v66;
    a2[10] = v65;
    a2[11] = v24;
    v25 = v60;
    a2[4] = v59;
    a2[5] = v25;
    v26 = v62;
    a2[6] = v61;
    a2[7] = v26;
    v27 = v56;
    *a2 = v55;
    a2[1] = v27;
    v28 = v58;
    a2[2] = v57;
    a2[3] = v28;
  }
}

uint64_t sub_1003748B4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v40 = a2;
  v4 = sub_10010FC20(&qword_10118CAC0, &qword_100EC8320);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v16 - v6;
  sub_10000954C(a1, a1[3]);
  sub_100374AE0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000959C(a1);
  }

  v8 = v40;
  sub_100374B34();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v5 + 8))(v7, v4);
  v24 = v36;
  v25 = v37;
  v26 = v38;
  v27 = v39;
  v20 = v32;
  v21 = v33;
  v22 = v34;
  v23 = v35;
  v16 = v28;
  v17 = v29;
  v18 = v30;
  v19 = v31;
  result = sub_10000959C(a1);
  v10 = v25;
  v8[8] = v24;
  v8[9] = v10;
  v11 = v27;
  v8[10] = v26;
  v8[11] = v11;
  v12 = v21;
  v8[4] = v20;
  v8[5] = v12;
  v13 = v23;
  v8[6] = v22;
  v8[7] = v13;
  v14 = v17;
  *v8 = v16;
  v8[1] = v14;
  v15 = v19;
  v8[2] = v18;
  v8[3] = v15;
  return result;
}

unint64_t sub_100374AE0()
{
  result = qword_10118CAC8;
  if (!qword_10118CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CAC8);
  }

  return result;
}

unint64_t sub_100374B34()
{
  result = qword_10118CAD0;
  if (!qword_10118CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CAD0);
  }

  return result;
}

unint64_t sub_100374B88()
{
  result = qword_10118CAE0;
  if (!qword_10118CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CAE0);
  }

  return result;
}

unint64_t sub_100374BDC()
{
  result = qword_10118CAE8;
  if (!qword_10118CAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CAE8);
  }

  return result;
}

unint64_t sub_100374C30()
{
  result = qword_10118CAF0;
  if (!qword_10118CAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CAF0);
  }

  return result;
}

unint64_t sub_100374CBC()
{
  result = qword_10118CB00;
  if (!qword_10118CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CB00);
  }

  return result;
}

unint64_t sub_100374D10()
{
  result = qword_10118CB08;
  if (!qword_10118CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CB08);
  }

  return result;
}

unint64_t sub_100374D9C()
{
  result = qword_10118CB18;
  if (!qword_10118CB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CB18);
  }

  return result;
}

unint64_t sub_100374DF0()
{
  result = qword_10118CB28;
  if (!qword_10118CB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CB28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LyricsOptionsManager.Option(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LyricsOptionsManager.Option(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100374FB4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100374FC8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100374FE8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 41) = v3;
  return result;
}

unint64_t sub_100375034()
{
  result = qword_10118CB38;
  if (!qword_10118CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CB38);
  }

  return result;
}

unint64_t sub_10037508C()
{
  result = qword_10118CB40;
  if (!qword_10118CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CB40);
  }

  return result;
}

unint64_t sub_1003750E4()
{
  result = qword_10118CB48;
  if (!qword_10118CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CB48);
  }

  return result;
}

unint64_t sub_10037513C()
{
  result = qword_10118CB50;
  if (!qword_10118CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CB50);
  }

  return result;
}

unint64_t sub_100375194()
{
  result = qword_10118CB58;
  if (!qword_10118CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CB58);
  }

  return result;
}

unint64_t sub_1003751EC()
{
  result = qword_10118CB60;
  if (!qword_10118CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CB60);
  }

  return result;
}

unint64_t sub_100375244()
{
  result = qword_10118CB68;
  if (!qword_10118CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CB68);
  }

  return result;
}

unint64_t sub_10037529C()
{
  result = qword_10118CB70;
  if (!qword_10118CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CB70);
  }

  return result;
}

unint64_t sub_1003752F4()
{
  result = qword_10118CB78;
  if (!qword_10118CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CB78);
  }

  return result;
}

unint64_t sub_100375348()
{
  result = qword_10118CB88;
  if (!qword_10118CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CB88);
  }

  return result;
}