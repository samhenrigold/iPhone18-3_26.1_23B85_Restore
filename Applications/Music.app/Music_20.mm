uint64_t sub_10025F94C(uint64_t a1, uint64_t *a2)
{
  v8 = a2;
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v7 - 8);
  __chkstk_darwin();
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  v6 = sub_100027010();
  static DispatchQoS.userInteractive.getter();
  v9 = _swiftEmptyArrayStorage;
  sub_100029680(&qword_101187210, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10010FC20(&qword_101187218, &unk_100ECC430);
  sub_100029908(&qword_101187220, &qword_101187218, &unk_100ECC430);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *v8 = result;
  return result;
}

id sub_10025FBE0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10025FCD4()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101187050);
  sub_1000060E4(v0, qword_101187050);
  return static Logger.music(_:)(0xD00000000000001CLL, 0x8000000100EC29B0);
}

char *sub_10025FDD4()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR____TtC5Music30CarPlayNowPlayingIndicatorView_isPlaying] = 0;
  v0[OBJC_IVAR____TtC5Music30CarPlayNowPlayingIndicatorView_isHighlighted] = 0;
  v2 = OBJC_IVAR____TtC5Music30CarPlayNowPlayingIndicatorView_waveform;
  if (qword_10117F898 != -1)
  {
    swift_once();
  }

  v3 = qword_101219020;
  v4 = objc_allocWithZone(type metadata accessor for WaveformPlayIndicator(0));
  *&v0[v2] = WaveformPlayIndicator.init(settings:)(v3);
  v25.receiver = v0;
  v25.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v6 = OBJC_IVAR____TtC5Music30CarPlayNowPlayingIndicatorView_waveform;
  v7 = *&v5[OBJC_IVAR____TtC5Music30CarPlayNowPlayingIndicatorView_waveform];
  v8 = v5;
  v9 = v7;
  WaveformPlayIndicator.mode.setter(1);

  v10 = *&v5[v6];
  v11 = OBJC_IVAR____TtC5Music30CarPlayNowPlayingIndicatorView_isHighlighted;
  swift_beginAccess();
  v12 = v8[v11];
  v13 = objc_opt_self();
  v14 = v10;
  v15 = &selRef__carSystemFocusLabelColor;
  if (!v12)
  {
    v15 = &selRef_tintColor;
  }

  v16 = [v13 *v15];
  v17 = [v16 colorWithAlphaComponent:0.2];
  v18 = [v16 colorWithAlphaComponent:0.2];
  v19 = [v16 colorWithAlphaComponent:0.2];
  UIScreen.Dimensions.size.getter();
  WaveformPlayIndicator.colorPalette.setter(v20, v21, v22, v23);

  [v8 addSubview:*&v5[v6]];
  [v8 sizeToFit];

  return v8;
}

void sub_100260204(char a1)
{
  v3 = OBJC_IVAR____TtC5Music30CarPlayNowPlayingIndicatorView_isHighlighted;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = objc_opt_self();
  v5 = &selRef__carSystemFocusLabelColor;
  if ((a1 & 1) == 0)
  {
    v5 = &selRef_tintColor;
  }

  v6 = [v4 *v5];
  v7 = [v6 colorWithAlphaComponent:0.2];
  v8 = [v6 colorWithAlphaComponent:0.2];
  v9 = [v6 colorWithAlphaComponent:0.2];
  UIScreen.Dimensions.size.getter();
  WaveformPlayIndicator.colorPalette.setter(v10, v11, v12, v13);
}

uint64_t (*sub_100260318(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC5Music30CarPlayNowPlayingIndicatorView_isHighlighted;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1002603A0;
}

void sub_1002603A0(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[3] + v3[4]);
    v5 = objc_opt_self();
    v6 = &selRef__carSystemFocusLabelColor;
    if (!v4)
    {
      v6 = &selRef_tintColor;
    }

    v7 = [v5 *v6];
    v8 = [v7 colorWithAlphaComponent:0.2];
    v9 = [v7 colorWithAlphaComponent:0.2];
    v10 = [v7 colorWithAlphaComponent:0.2];
    UIScreen.Dimensions.size.getter();
    WaveformPlayIndicator.colorPalette.setter(v11, v12, v13, v14);
  }

  free(v3);
}

uint64_t sub_1002605B0()
{
  v1 = OBJC_IVAR____TtC5Music30CarPlayNowPlayingIndicatorView_isHighlighted;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_1002605F8(uint64_t **a1))()
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
  v2[4] = sub_100260318(v2);
  return sub_100260668;
}

void sub_100260668(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

double sub_100260800(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel, &unk_100EC2C20);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

double sub_1002608E8(uint64_t a1, uint64_t a2)
{
  v5 = (*(v2 + OBJC_IVAR____TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView_viewModel) + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__subtitle);
  v6 = v5[1];
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    swift_getKeyPath();
    __chkstk_darwin();
    sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel, &unk_100EC2C20);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return result;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;

  return result;
}

char *sub_100260A70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10010FC20(&qword_1011888C0, &qword_100EC2FA0);
  __chkstk_darwin();
  v6 = v47 - v5;
  v7 = type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.Content(0);
  __chkstk_darwin();
  v9 = (v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = &v3[OBJC_IVAR____TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView_playAction];
  type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel(0);
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = swift_allocObject();
  if (qword_10117F408 != -1)
  {
    swift_once();
  }

  v12 = sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  v13 = sub_1000060E4(v12, qword_101187268);
  sub_1000089F8(v13, v11 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__artwork, &unk_101188920, &qword_100EBCC50);
  if (qword_10117F410 != -1)
  {
    swift_once();
  }

  v14 = sub_10010FC20(&qword_101187768, &qword_100EC2C70);
  v15 = sub_1000060E4(v14, qword_101187280);
  sub_1000089F8(v15, v11 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__artworkShape, &qword_101187768, &qword_100EC2C70);
  v16 = (v11 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__title);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = (v11 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__titleAccessory);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v11 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__subtitle);
  *v18 = 0;
  v18[1] = 0;
  *(v11 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__isPlayable) = 0;
  ObservationRegistrar.init()();
  *&v3[OBJC_IVAR____TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView_viewModel] = v11;
  v9[1] = 0;
  v9[2] = 0;
  *v9 = v11;
  v19 = v7[6];
  *(v9 + v19) = swift_getKeyPath();
  sub_10010FC20(&qword_1011877B8, &qword_100EC2D78);
  swift_storeEnumTagMultiPayload();
  v20 = v9 + v7[7];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = v9 + v7[8];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  objc_allocWithZone(sub_10010FC20(&qword_101187840, &unk_100EC3008));

  *&v3[OBJC_IVAR____TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView_hostingView] = _UIHostingView.init(rootView:)();
  if (a2)
  {
    v22 = String._bridgeToObjectiveC()();
  }

  else
  {
    v22 = 0;
  }

  v23 = type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView();
  v48.receiver = v3;
  v48.super_class = v23;
  v24 = objc_msgSendSuper2(&v48, "initWithReuseIdentifier:", v22);

  v25 = v24;
  static UIBackgroundConfiguration.clear()();
  v26 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v26 - 8) + 56))(v6, 0, 1, v26);
  UITableViewHeaderFooterView.backgroundConfiguration.setter();
  v27 = [v25 contentView];
  v28 = OBJC_IVAR____TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView_hostingView;
  [v27 addSubview:*&v25[OBJC_IVAR____TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView_hostingView]];

  [*&v25[v28] setAutoresizingMask:18];
  v29 = *&v25[v28];
  v30 = [v25 contentView];
  [v30 bounds];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  [v29 setFrame:{v32, v34, v36, v38}];
  v39 = *&v25[v28];
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = v39;

  v42 = dispatch thunk of _UIHostingView.rootView.modify();
  v44 = *(v43 + 8);
  v45 = *(v43 + 16);
  *(v43 + 8) = sub_100267B80;
  *(v43 + 16) = v40;
  sub_100020438(v44, v45);
  v42(v47, 0);

  __chkstk_darwin();
  v47[-2] = v25;
  __chkstk_darwin();
  v47[-2] = v25;
  withObservationTracking<A>(_:onChange:)();

  return v25;
}

void sub_100260FF4(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView_playAction);
    v4 = *(Strong + OBJC_IVAR____TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView_playAction + 8);
    v6 = Strong;
    sub_100030444(v5, v4);

    if (v5)
    {
      v5(a1 & 1);
      sub_100020438(v5, v4);
    }
  }
}

unint64_t sub_100261270@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RoundedCornerStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101187650, &qword_100EC2BA8);
  __chkstk_darwin();
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v22 - v10;
  type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel.Shape(0);
  __chkstk_darwin();
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002676BC(v2, v13);
  v14 = sub_10010FC20(&qword_1011875B8, "^\a\v");
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    a1[3] = &type metadata for Circle;
    result = sub_100267720();
    a1[4] = result;
  }

  else
  {
    v16 = *v13;
    v17 = *(v13 + 8);
    sub_10003D17C(v13 + *(v14 + 48), v11, &unk_101187650, &qword_100EC2BA8);
    if (v17)
    {
      v16 = 5.0;
    }

    sub_1000089F8(v11, v9, &unk_101187650, &qword_100EC2BA8);
    v18 = *(v5 + 48);
    if (v18(v9, 1, v4) == 1)
    {
      if (qword_10117F418 != -1)
      {
        swift_once();
      }

      v19 = sub_1000060E4(v4, qword_101187298);
      (*(v5 + 16))(v7, v19, v4);
      if (v18(v9, 1, v4) != 1)
      {
        sub_1000095E8(v9, &unk_101187650, &qword_100EC2BA8);
      }
    }

    else
    {
      (*(v5 + 32))(v7, v9, v4);
    }

    v20 = type metadata accessor for RoundedRectangle();
    a1[3] = v20;
    a1[4] = sub_100267480(&qword_101187830, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
    v21 = sub_10001C8B8(a1);
    *v21 = v16;
    v21[1] = v16;
    (*(v5 + 32))(v21 + *(v20 + 20), v7, v4);
    return sub_1000095E8(v11, &unk_101187650, &qword_100EC2BA8);
  }

  return result;
}

uint64_t sub_10026166C(uint64_t a1)
{
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v3 = &v5 - v2;
  sub_1000089F8(a1, &v5 - v2, &unk_101188920, &qword_100EBCC50);
  return sub_100261718(v3);
}

uint64_t sub_100261718(uint64_t a1)
{
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v4 = v8 - v3;
  v5 = OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__artwork;
  swift_beginAccess();
  sub_1000089F8(v1 + v5, v4, &unk_101188920, &qword_100EBCC50);
  v6 = sub_10026782C(v4, a1);
  sub_1000095E8(v4, &unk_101188920, &qword_100EBCC50);
  if (v6)
  {
    swift_getKeyPath();
    __chkstk_darwin();
    v8[-2] = v1;
    v8[-1] = a1;
    v8[2] = v1;
    sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel, &unk_100EC2C20);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_1000089F8(a1, v4, &unk_101188920, &qword_100EBCC50);
    swift_beginAccess();
    sub_100138A94(v4, v1 + v5);
    swift_endAccess();
  }

  return sub_1000095E8(a1, &unk_101188920, &qword_100EBCC50);
}

uint64_t sub_100261944@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  v12 = v5;
  sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel, &unk_100EC2C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *a2;
  swift_beginAccess();
  return sub_1000089F8(v12 + v10, a5, a3, a4);
}

uint64_t sub_100261A48@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  swift_getKeyPath();
  sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel, &unk_100EC2C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *a3;
  swift_beginAccess();
  return sub_1000089F8(v10 + v11, a6, a4, a5);
}

uint64_t sub_100261B2C(uint64_t a1, uint64_t *a2)
{
  sub_10010FC20(&qword_101187768, &qword_100EC2C70);
  __chkstk_darwin();
  v5 = &v8[-v4];
  sub_1000089F8(a1, &v8[-v4], &qword_101187768, &qword_100EC2C70);
  v6 = *a2;
  swift_getKeyPath();
  v9 = v6;
  v10 = v5;
  v11 = v6;
  sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel, &unk_100EC2C20);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1000095E8(v5, &qword_101187768, &qword_100EC2C70);
}

uint64_t sub_100261CAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a3;
  swift_beginAccess();
  sub_1002190E0(a2, a1 + v9, a4, a5);
  return swift_endAccess();
}

uint64_t sub_100261D2C()
{
  swift_getKeyPath();
  sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel, &unk_100EC2C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__title);

  return v1;
}

uint64_t sub_100261DE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel, &unk_100EC2C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__title + 8);
  *a2 = *(v3 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__title);
  a2[1] = v4;
}

double sub_100261EA0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100261EE0(v1, v2);
}

double sub_100261EE0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__title);
  v6 = *(v2 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__title) == a1 && *(v2 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__title + 8) == a2;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel, &unk_100EC2C20);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

double sub_100262074(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel, &unk_100EC2C20);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

void sub_100262144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__titleAccessory);
  *v3 = a2;
  v3[1] = a3;
}

uint64_t sub_1002621A0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel, &unk_100EC2C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);

  return v4;
}

uint64_t sub_100262268@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel, &unk_100EC2C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = (v6 + *a3);
  v8 = v7[1];
  *a4 = *v7;
  a4[1] = v8;
}

double sub_100262324(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100262364(v1, v2);
}

double sub_100262364(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__subtitle);
  v6 = *(v2 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__subtitle + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    swift_getKeyPath();
    __chkstk_darwin();
    sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel, &unk_100EC2C20);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return result;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t sub_1002624E0()
{
  swift_getKeyPath();
  sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel, &unk_100EC2C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__isPlayable);
}

void sub_100262588(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel, &unk_100EC2C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__isPlayable);
}

void sub_100262660(char a1)
{
  if (*(v1 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__isPlayable) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__isPlayable) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel, &unk_100EC2C20);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_100262788()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101187768, &qword_100EC2C70);
  __chkstk_darwin();
  v4 = &v12 - v3;
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v7 = &v12 - v6;
  if (qword_10117F408 != -1)
  {
    v11 = v5;
    swift_once();
    v5 = v11;
  }

  v8 = sub_1000060E4(v5, qword_101187268);
  sub_1000089F8(v8, v7, &unk_101188920, &qword_100EBCC50);
  sub_100261718(v7);
  if (qword_10117F410 != -1)
  {
    swift_once();
  }

  v9 = sub_1000060E4(v2, qword_101187280);
  sub_1000089F8(v9, v4, &qword_101187768, &qword_100EC2C70);
  swift_getKeyPath();
  __chkstk_darwin();
  *(&v12 - 2) = v1;
  *(&v12 - 1) = v4;
  v13 = v1;
  sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel, &unk_100EC2C20);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_1000095E8(v4, &qword_101187768, &qword_100EC2C70);
  sub_100261EE0(0, 0xE000000000000000);
  swift_getKeyPath();
  __chkstk_darwin();
  *(&v12 - 3) = 0;
  *(&v12 - 2) = 0;
  *(&v12 - 4) = v1;
  v13 = v1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v10 = (v1 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__subtitle);
  if (*(v1 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__subtitle + 8))
  {
    swift_getKeyPath();
    __chkstk_darwin();
    *(&v12 - 3) = 0;
    *(&v12 - 2) = 0;
    *(&v12 - 4) = v1;
    v13 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *v10 = 0;
    v10[1] = 0;
  }

  if (*(v1 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__isPlayable))
  {
    swift_getKeyPath();
    __chkstk_darwin();
    *(&v12 - 2) = v1;
    *(&v12 - 8) = 0;
    v13 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__isPlayable) = 0;
  }
}

uint64_t sub_100262C20(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v7 = sub_10010FC20(a2, a3);
  sub_100006080(v7, a4);
  v8 = sub_1000060E4(v7, a4);
  v9 = a5(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v8, 1, 1, v9);
}

uint64_t sub_100262CC4()
{
  sub_1000095E8(v0 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__artwork, &unk_101188920, &qword_100EBCC50);
  sub_1000095E8(v0 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__artworkShape, &qword_101187768, &qword_100EC2C70);

  v1 = OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_100262DDC(uint64_t a1)
{
  swift_getKeyPath();
  sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel, &unk_100EC2C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double sub_100262F7C(void *a1)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v3 = &v9 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  type metadata accessor for MainActor();
  v5 = a1;
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v5;
  sub_1001F4CB8(0, 0, v3, &unk_100EC3020, v7);

  return result;
}

uint64_t sub_1002630A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10026313C, v6, v5);
}

uint64_t sub_10026313C()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView_hostingView;
  v3 = *&v1[OBJC_IVAR____TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView_hostingView];
  v4 = [v1 contentView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  [v3 sizeThatFits:{v6, v8}];
  v10 = v9;
  v12 = v11;

  [*&v1[v2] frame];
  if (v10 != v14 || v12 != v13)
  {
    [*(v0 + 16) invalidateIntrinsicContentSize];
  }

  v16 = *(v0 + 16);
  *(swift_task_alloc() + 16) = v16;
  *(swift_task_alloc() + 16) = v16;
  withObservationTracking<A>(_:onChange:)();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1002632B8@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  sub_10010FC20(&qword_101187738, &qword_100EC2C40);
  __chkstk_darwin();
  v3 = &v76 - v2;
  v78 = sub_10010FC20(&qword_101187740, &qword_100EC2C48);
  __chkstk_darwin();
  v80 = &v76 - v4;
  v79 = sub_10010FC20(&qword_101187748, &qword_100EC2C50);
  __chkstk_darwin();
  v82 = &v76 - v5;
  v81 = sub_10010FC20(&qword_101187750, &qword_100EC2C58);
  __chkstk_darwin();
  v85 = &v76 - v6;
  v83 = sub_10010FC20(&qword_101187758, &qword_100EC2C60);
  __chkstk_darwin();
  v87 = &v76 - v7;
  v86 = sub_10010FC20(&qword_101187760, &qword_100EC2C68);
  __chkstk_darwin();
  v84 = &v76 - v8;
  sub_10010FC20(&qword_101187768, &qword_100EC2C70);
  __chkstk_darwin();
  v10 = &v76 - v9;
  v11 = type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel.Shape(0);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v1;
  v15 = *v1;
  swift_getKeyPath();
  *&v90 = v15;
  sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel, &unk_100EC2C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__artworkShape;
  swift_beginAccess();
  sub_1000089F8(v15 + v16, v10, &qword_101187768, &qword_100EC2C70);
  v17 = *(v12 + 48);
  if (v17(v10, 1, v11) == 1)
  {
    v18 = sub_10010FC20(&qword_1011875B8, "^\a\v");
    v19 = *(v18 + 48);
    *v14 = 0;
    v14[8] = 1;
    v20 = type metadata accessor for RoundedCornerStyle();
    (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
    (*(*(v18 - 8) + 56))(v14, 0, 1, v18);
    if (v17(v10, 1, v11) != 1)
    {
      sub_1000095E8(v10, &qword_101187768, &qword_100EC2C70);
    }
  }

  else
  {
    sub_100268288(v10, v14, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel.Shape);
  }

  sub_100261270(v89);
  sub_1002674C8(v14, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel.Shape);
  *v3 = static VerticalAlignment.center.getter();
  *(v3 + 1) = 0;
  v3[16] = 1;
  v21 = sub_10010FC20(&qword_101187770, &qword_100EC2CA0);
  sub_100263A98(v77, v89, &v3[*(v21 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v22 = v80;
  sub_10003D17C(v3, v80, &qword_101187738, &qword_100EC2C40);
  v23 = (v22 + *(v78 + 36));
  v24 = v95;
  v23[4] = v94;
  v23[5] = v24;
  v23[6] = v96;
  v25 = v91;
  *v23 = v90;
  v23[1] = v25;
  v26 = v93;
  v23[2] = v92;
  v23[3] = v26;
  v27 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v22;
  v37 = v82;
  sub_10003D17C(v36, v82, &qword_101187740, &qword_100EC2C48);
  v38 = v37 + *(v79 + 36);
  *v38 = v27;
  *(v38 + 8) = v29;
  *(v38 + 16) = v31;
  *(v38 + 24) = v33;
  *(v38 + 32) = v35;
  *(v38 + 40) = 0;
  v39 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = v37;
  v49 = v85;
  sub_10003D17C(v48, v85, &qword_101187748, &qword_100EC2C50);
  v50 = v49 + *(v81 + 36);
  *v50 = v39;
  *(v50 + 8) = v41;
  *(v50 + 16) = v43;
  *(v50 + 24) = v45;
  *(v50 + 32) = v47;
  *(v50 + 40) = 0;
  v51 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = v49;
  v61 = v87;
  sub_10003D17C(v60, v87, &qword_101187750, &qword_100EC2C58);
  v62 = v61 + *(v83 + 36);
  *v62 = v51;
  *(v62 + 8) = v53;
  *(v62 + 16) = v55;
  *(v62 + 24) = v57;
  *(v62 + 32) = v59;
  *(v62 + 40) = 0;
  v63 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v72 = v61;
  v73 = v84;
  sub_10003D17C(v72, v84, &qword_101187758, &qword_100EC2C60);
  v74 = v73 + *(v86 + 36);
  *v74 = v63;
  *(v74 + 8) = v65;
  *(v74 + 16) = v67;
  *(v74 + 24) = v69;
  *(v74 + 32) = v71;
  *(v74 + 40) = 0;
  sub_10003D17C(v73, v88, &qword_101187760, &qword_100EC2C68);
  return sub_10000959C(v89);
}

uint64_t sub_100263A98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a2;
  v81 = a3;
  v77 = type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.Content.PlayShuffleStyle(0);
  __chkstk_darwin();
  v5 = (&v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = sub_10010FC20(&qword_101187778, &qword_100EC2CA8);
  __chkstk_darwin();
  v76 = (&v62 - v6);
  v74 = sub_10010FC20(&qword_101187780, &qword_100EC2CB0);
  __chkstk_darwin();
  v80 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v78 = &v62 - v8;
  v70 = sub_10010FC20(&qword_101187788, &qword_100EC2CB8);
  __chkstk_darwin();
  v79 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v72 = (&v62 - v10);
  v11 = sub_10010FC20(&qword_101187790, &unk_100EC2CC0);
  v68 = *(v11 - 8);
  __chkstk_darwin();
  v13 = &v62 - v12;
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v62 - v16;
  v18 = type metadata accessor for Artwork();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v67 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101187798, &qword_100EC2CD0);
  __chkstk_darwin();
  v73 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v82 = &v62 - v22;
  v71 = a1;
  v23 = *a1;
  swift_getKeyPath();
  *&v86 = v23;
  sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel, &unk_100EC2C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__artwork;
  swift_beginAccess();
  sub_1000089F8(v23 + v24, v17, &unk_101188920, &qword_100EBCC50);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1000095E8(v17, &unk_101188920, &qword_100EBCC50);
    v25 = 1;
    v26 = v82;
  }

  else
  {
    v66 = v11;
    v27 = v67;
    (*(v19 + 32))(v67, v17, v18);
    (*(v19 + 16))(v15, v27, v18);
    (*(v19 + 56))(v15, 0, 1, v18);
    ArtworkImage.init(_:)();
    v28 = &v13[*(sub_10010FC20(&unk_10118F340, &qword_100EC2E18) + 36)];
    *v28 = 0x3FF0000000000000;
    *(v28 + 4) = 0;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v29 = &v13[*(sub_10010FC20(&qword_10118F330, &qword_100EC2E20) + 36)];
    v30 = v87;
    *v29 = v86;
    *(v29 + 1) = v30;
    *(v29 + 2) = v88;
    v31 = static Edge.Set.all.getter();
    v65 = v18;
    v13[*(sub_10010FC20(&qword_1011877D8, &qword_100EC2E28) + 36)] = v31;
    if (qword_10117F420 != -1)
    {
      swift_once();
    }

    v32 = qword_1011872B0;
    v33 = &v13[*(sub_10010FC20(&qword_1011877E0, &qword_100EC2E30) + 36)];
    sub_100008FE4(v69, v33);
    v64 = static Alignment.center.getter();
    v63 = v34;
    v35 = &v13[*(sub_10010FC20(&qword_1011877E8, &qword_100EC2E38) + 36)];
    sub_10000954C(v33, *(v33 + 24));
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_10001C8B8(v83);
    dispatch thunk of InsettableShape.inset(by:)();
    sub_100267528(v83, v35);
    *(v35 + 40) = 0;
    sub_100267584(v83);
    *(v35 + 48) = v32;
    *(v35 + 56) = 256;
    v36 = v63;
    *(v35 + 64) = v64;
    *(v35 + 72) = v36;
    *(v33 + 40) = 256;

    static Color.black.getter();
    v64 = Color.opacity(_:)();

    v63 = static Alignment.center.getter();
    v38 = v37;
    v11 = v66;
    v39 = &v13[*(v66 + 36)];
    sub_100008FE4(v69, v83);
    sub_10000954C(v83, AssociatedTypeWitness);
    *(v39 + 3) = swift_getAssociatedTypeWitness();
    *(v39 + 4) = swift_getAssociatedConformanceWitness();
    sub_10001C8B8(v39);
    dispatch thunk of InsettableShape.inset(by:)();
    (*(v19 + 8))(v67, v65);
    sub_100267584(v83);
    *(v39 + 5) = v64;
    *(v39 + 3) = xmmword_100EC2AD0;
    v40 = v63;
    *(v39 + 8) = 0x3FF0000000000000;
    *(v39 + 9) = v40;
    *(v39 + 10) = v38;
    v26 = v82;
    sub_10003D17C(v13, v82, &qword_101187790, &unk_100EC2CC0);
    v25 = 0;
  }

  (*(v68 + 56))(v26, v25, 1, v11);
  v41 = static HorizontalAlignment.leading.getter();
  v42 = v72;
  *v72 = v41;
  *(v42 + 8) = 0;
  *(v42 + 16) = 1;
  v43 = sub_10010FC20(&qword_1011877A0, &qword_100EC2D00);
  v44 = v71;
  sub_10026471C(v71, v42 + *(v43 + 44));
  KeyPath = swift_getKeyPath();
  v46 = v42 + *(sub_10010FC20(&qword_1011877A8, &qword_100EC2D38) + 36);
  *v46 = KeyPath;
  *(v46 + 8) = 1;
  *(v46 + 16) = 0;
  *(v42 + *(v70 + 36)) = 0x4000000000000000;
  v47 = static VerticalAlignment.center.getter();
  v48 = v76;
  *v76 = v47;
  *(v48 + 8) = 0;
  *(v48 + 16) = 1;
  v49 = sub_10010FC20(&qword_1011877B0, &qword_100EC2D40);
  sub_1002650FC(v44, v48 + *(v49 + 44));
  *v5 = swift_getKeyPath();
  sub_10010FC20(&qword_1011877B8, &qword_100EC2D78);
  swift_storeEnumTagMultiPayload();
  v50 = v77;
  v51 = v5 + *(v77 + 20);
  *v51 = swift_getKeyPath();
  v51[8] = 0;
  v52 = v5 + *(v50 + 24);
  *v52 = swift_getKeyPath();
  v52[8] = 0;
  v53 = *(v50 + 28);
  *(v5 + v53) = swift_getKeyPath();
  sub_10010FC20(&unk_10118F250, &qword_100EC45B0);
  swift_storeEnumTagMultiPayload();
  sub_100020674(&qword_1011877C0, &qword_101187778, &qword_100EC2CA8, &protocol conformance descriptor for HStack<A>);
  sub_100267480(&qword_1011877C8, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.Content.PlayShuffleStyle, &unk_100EC309C);
  v54 = v78;
  View.buttonStyle<A>(_:)();
  sub_1002674C8(v5, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.Content.PlayShuffleStyle);
  sub_1000095E8(v48, &qword_101187778, &qword_100EC2CA8);
  *(v54 + *(v74 + 36)) = 0x3FF0000000000000;
  v55 = v73;
  sub_1000089F8(v26, v73, &qword_101187798, &qword_100EC2CD0);
  v56 = v79;
  sub_1000089F8(v42, v79, &qword_101187788, &qword_100EC2CB8);
  v57 = v80;
  sub_1000089F8(v54, v80, &qword_101187780, &qword_100EC2CB0);
  v58 = v81;
  sub_1000089F8(v55, v81, &qword_101187798, &qword_100EC2CD0);
  v59 = sub_10010FC20(&qword_1011877D0, &qword_100EC2E10);
  sub_1000089F8(v56, v58 + v59[12], &qword_101187788, &qword_100EC2CB8);
  v60 = v58 + v59[16];
  *v60 = 0;
  *(v60 + 8) = 1;
  sub_1000089F8(v57, v58 + v59[20], &qword_101187780, &qword_100EC2CB0);
  sub_1000095E8(v54, &qword_101187780, &qword_100EC2CB0);
  sub_1000095E8(v42, &qword_101187788, &qword_100EC2CB8);
  sub_1000095E8(v82, &qword_101187798, &qword_100EC2CD0);
  sub_1000095E8(v57, &qword_101187780, &qword_100EC2CB0);
  sub_1000095E8(v56, &qword_101187788, &qword_100EC2CB8);
  return sub_1000095E8(v55, &qword_101187798, &qword_100EC2CD0);
}

uint64_t sub_10026471C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = sub_10010FC20(&qword_1011888F0, &qword_100EC2E88);
  v79 = *(v3 - 8);
  v80 = v3;
  __chkstk_darwin();
  v70 = v69 - v4;
  sub_10010FC20(&qword_101187808, &qword_100EC2E90);
  __chkstk_darwin();
  v82 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v81 = v69 - v6;
  v7 = type metadata accessor for Text.Suffix();
  v71 = *(v7 - 8);
  v72 = v7;
  __chkstk_darwin();
  v9 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_10010FC20(&qword_101187810, &qword_100EC2E98);
  __chkstk_darwin();
  v78 = v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = v69 - v11;
  v13 = *a1;
  swift_getKeyPath();
  v14 = OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel___observationRegistrar;
  v84 = v13;
  v74 = sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel, &unk_100EC2C20);
  v75 = v14;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v76 = v13;
  v15 = *(v13 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__title + 8);
  v84 = *(v13 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__title);
  v85 = v15;
  v16 = sub_100009838();

  v69[1] = v16;
  v17 = Text.init<A>(_:)();
  v19 = v18;
  v84 = v17;
  v85 = v18;
  LOBYTE(v15) = v20 & 1;
  v86 = v20 & 1;
  v87 = v21;
  v22 = sub_100264EE8(a1);
  v24 = v23;
  v26 = v25;
  static Text.Suffix.alwaysVisible(_:)();
  v27 = v26 & 1;
  v28 = v12;
  sub_10011895C(v22, v24, v27);

  View.textSuffix(_:)();
  (*(v71 + 8))(v9, v72);
  sub_10011895C(v17, v19, v15);

  if (qword_10117F428 != -1)
  {
    swift_once();
  }

  v29 = qword_1011872B8;
  KeyPath = swift_getKeyPath();
  v31 = &v12[*(sub_10010FC20(&qword_101187818, &unk_100ED7870) + 36)];
  *v31 = KeyPath;
  v31[1] = v29;
  v32 = qword_10117F430;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = dword_1011872C0;
  *&v12[*(sub_10010FC20(&qword_101187820, &unk_100EC2F00) + 36)] = v33;
  v34 = &v12[*(v73 + 36)];
  v35 = *(sub_10010FC20(&qword_1011A13C0, &qword_100EC0AD0) + 28);
  v36 = enum case for Image.Scale.small(_:);
  v37 = type metadata accessor for Image.Scale();
  (*(*(v37 - 8) + 104))(v34 + v35, v36, v37);
  *v34 = swift_getKeyPath();
  swift_getKeyPath();
  v38 = v76;
  v84 = v76;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v39 = *(v38 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__subtitle + 8);
  v77 = v28;
  if (v39)
  {
    v84 = *(v38 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__subtitle);
    v85 = v39;

    v40 = Text.init<A>(_:)();
    v42 = v41;
    v44 = v43;
    if (qword_10117F438 != -1)
    {
      swift_once();
    }

    v45 = Text.font(_:)();
    v47 = v46;
    v49 = v48;
    sub_10011895C(v40, v42, v44 & 1);

    if (qword_10117F440 != -1)
    {
      swift_once();
    }

    LODWORD(v84) = dword_1011872D0;
    v50 = Text.foregroundStyle<A>(_:)();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    sub_10011895C(v45, v47, v49 & 1);

    v57 = v80;
    v58 = *(v80 + 36);
    v59 = swift_getKeyPath();
    v60 = v70;
    *&v70[v58] = v59;
    sub_10010FC20(&unk_10118F250, &qword_100EC45B0);
    swift_storeEnumTagMultiPayload();
    *v60 = v50;
    *(v60 + 8) = v52;
    *(v60 + 16) = v54 & 1;
    *(v60 + 24) = v56;
    v61 = v81;
    sub_10003D17C(v60, v81, &qword_1011888F0, &qword_100EC2E88);
    v62 = 0;
  }

  else
  {
    v62 = 1;
    v57 = v80;
    v61 = v81;
  }

  (*(v79 + 56))(v61, v62, 1, v57);
  v64 = v77;
  v63 = v78;
  sub_1000089F8(v77, v78, &qword_101187810, &qword_100EC2E98);
  v65 = v82;
  sub_1000089F8(v61, v82, &qword_101187808, &qword_100EC2E90);
  v66 = v83;
  sub_1000089F8(v63, v83, &qword_101187810, &qword_100EC2E98);
  v67 = sub_10010FC20(&qword_101187828, &qword_100EC2F68);
  sub_1000089F8(v65, v66 + *(v67 + 48), &qword_101187808, &qword_100EC2E90);
  sub_1000095E8(v61, &qword_101187808, &qword_100EC2E90);
  sub_1000095E8(v64, &qword_101187810, &qword_100EC2E98);
  sub_1000095E8(v65, &qword_101187808, &qword_100EC2E90);
  return sub_1000095E8(v63, &qword_101187810, &qword_100EC2E98);
}

uint64_t sub_100264EE8(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel, &unk_100EC2C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__titleAccessory + 8);
  if (v2)
  {

    Image.init(systemName:)();
    v3 = Text.init(_:)();
    v5 = v4;
    v7 = v6;
    v8 = static Text.+ infix(_:_:)();
    v10 = v9;
    v12 = v11;
    sub_10011895C(v3, v5, v7 & 1);

    static Font.caption2.getter();
    v13 = Text.font(_:)();
    v15 = v14;
    v17 = v16;

    sub_10011895C(v8, v10, v12 & 1);

    static HierarchicalShapeStyle.secondary.getter();
    v2 = Text.foregroundStyle<A>(_:)();
    sub_10011895C(v13, v15, v17 & 1);
  }

  return v2;
}

uint64_t sub_1002650FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10010FC20(&qword_1011877F8, &unk_100EC2E40);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v44 - v6;
  v8 = sub_10010FC20(&qword_101186968, &qword_100EC2440);
  v57 = *(v8 - 8);
  __chkstk_darwin();
  v56 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v55 = &v44 - v10;
  __chkstk_darwin();
  v54 = &v44 - v11;
  __chkstk_darwin();
  v58 = &v44 - v12;
  v13 = *a1;
  swift_getKeyPath();
  v59 = v13;
  sub_100267480(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel, &unk_100EC2C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v13 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__isPlayable) == 1 && a1[1])
  {
    v14 = a1[2];
    v15 = a1[1];

    v16 = LocalizedStringKey.init(stringLiteral:)();
    v18 = v17;
    v52 = a2;
    v20 = v19;
    v45 = v21;
    v22 = swift_allocObject();
    v48 = v15;
    v49 = v7;
    v46 = &v44;
    *(v22 + 16) = v15;
    v53 = v14;
    *(v22 + 24) = v14;
    __chkstk_darwin();
    v51 = v4;
    *(&v44 - 6) = v16;
    *(&v44 - 5) = v18;
    *(&v44 - 32) = v20 & 1;
    *(&v44 - 3) = v45;
    *(&v44 - 2) = 0x6C69662E79616C70;
    *(&v44 - 1) = 0xE90000000000006CLL;

    v50 = sub_10010FC20(&qword_101186978, &qword_100EC2450);
    v47 = sub_100020674(&qword_101186980, &qword_101186978, &qword_100EC2450, &protocol conformance descriptor for Label<A, B>);
    Button.init(action:label:)();

    v23 = LocalizedStringKey.init(stringLiteral:)();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v30 = swift_allocObject();
    *(v30 + 16) = v15;
    *(v30 + 24) = v53;
    __chkstk_darwin();
    *(&v44 - 6) = v23;
    *(&v44 - 5) = v25;
    v31 = v27 & 1;
    v4 = v51;
    *(&v44 - 32) = v31;
    *(&v44 - 3) = v29;
    *(&v44 - 2) = 0x656C6666756873;
    *(&v44 - 1) = 0xE700000000000000;

    v32 = v54;
    Button.init(action:label:)();

    v33 = v57;
    v34 = v58;
    v35 = *(v57 + 16);
    v36 = v55;
    v35(v55, v58, v8);
    v37 = v56;
    v35(v56, v32, v8);
    v50 = v5;
    v38 = v49;
    v35(v49, v36, v8);
    v39 = sub_10010FC20(&qword_101187800, &qword_100EC2E80);
    v35((v38 + *(v39 + 48)), v37, v8);
    sub_100020438(v48, v53);
    v40 = *(v33 + 8);
    v40(v32, v8);
    v40(v34, v8);
    v40(v37, v8);
    v40(v36, v8);
    v41 = v38;
    v5 = v50;
    a2 = v52;
    sub_10003D17C(v41, v52, &qword_1011877F8, &unk_100EC2E40);
    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  return (*(v5 + 56))(a2, v42, 1, v4);
}

uint64_t sub_1002656E4@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v105 = a2;
  v102 = type metadata accessor for ColorScheme();
  v112 = *(v102 - 8);
  __chkstk_darwin();
  v111 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for CPUIHorizontalSizeClass();
  v6 = *(v103 - 8);
  __chkstk_darwin();
  v8 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v101 = &v88 - v9;
  v10 = type metadata accessor for IconOnlyLabelStyle();
  v94 = *(v10 - 8);
  __chkstk_darwin();
  v91 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_10010FC20(&qword_101187918, &qword_100EC30D8);
  __chkstk_darwin();
  v13 = &v88 - v12;
  v96 = sub_10010FC20(&qword_101187920, &qword_100EC30E0);
  v95 = *(v96 - 8);
  __chkstk_darwin();
  v93 = &v88 - v14;
  v92 = sub_10010FC20(&qword_101187928, &qword_100EC30E8);
  __chkstk_darwin();
  v98 = &v88 - v15;
  v97 = sub_10010FC20(&qword_101187930, &qword_100EC30F0);
  __chkstk_darwin();
  v100 = &v88 - v16;
  v99 = sub_10010FC20(&qword_101187938, &qword_100EC30F8);
  __chkstk_darwin();
  v107 = &v88 - v17;
  v106 = sub_10010FC20(&qword_101187940, &qword_100EC3100);
  __chkstk_darwin();
  v109 = &v88 - v18;
  v108 = sub_10010FC20(&qword_101187948, &qword_100EC3108);
  __chkstk_darwin();
  v110 = &v88 - v19;
  type metadata accessor for Capsule();
  __chkstk_darwin();
  v21 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for EnvironmentValues();
  v23 = *(v22 - 8);
  __chkstk_darwin();
  v25 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = a1;
  v26 = ButtonStyleConfiguration.isPressed.getter();
  v113 = v3;
  if (v26)
  {
    LOBYTE(v27) = 1;
    goto LABEL_10;
  }

  v88 = v23;
  v89 = v10;
  v28 = type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.Content.PlayShuffleStyle(0);
  v29 = v3 + *(v28 + 20);
  v30 = *v29;
  if (*(v29 + 8) != 1)
  {

    v31 = v8;
    v32 = static os_log_type_t.fault.getter();
    v33 = v6;
    v34 = v21;
    v35 = static Log.runtimeIssuesLog.getter();
    v36 = v32;
    v8 = v31;
    os_log(_:dso:log:_:_:)(v36, &_mh_execute_header, v35, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v21 = v34;
    v6 = v33;
    v3 = v113;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v37 = sub_1000D8F20(v30, 0);
    (*(v88 + 8))(v25, v22, v37);
    if (v117)
    {
      goto LABEL_5;
    }

LABEL_7:
    v38 = v3 + *(v28 + 24);
    v27 = *v38;
    if (*(v38 + 8) != 1)
    {

      v39 = v21;
      v40 = static os_log_type_t.fault.getter();
      v41 = static Log.runtimeIssuesLog.getter();
      v42 = v40;
      v21 = v39;
      os_log(_:dso:log:_:_:)(v42, &_mh_execute_header, v41, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v43 = sub_1000D8F20(v27, 0);
      (*(v88 + 8))(v25, v22, v43);
      LOBYTE(v27) = v117;
    }

    goto LABEL_9;
  }

  if ((v30 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_5:
  LOBYTE(v27) = 1;
LABEL_9:
  v10 = v89;
LABEL_10:
  v44 = enum case for RoundedCornerStyle.continuous(_:);
  v45 = type metadata accessor for RoundedCornerStyle();
  (*(*(v45 - 8) + 104))(v21, v44, v45);
  ButtonStyleConfiguration.label.getter();
  if (qword_10117F448 != -1)
  {
    swift_once();
  }

  v104 = v21;
  v46 = qword_1011872D8;
  KeyPath = swift_getKeyPath();
  v48 = &v13[*(sub_10010FC20(&qword_101187950, &unk_100EC3110) + 36)];
  *v48 = KeyPath;
  v48[1] = v46;
  v49 = qword_10117F458;

  if (v49 != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Image.Scale();
  v51 = sub_1000060E4(v50, qword_1011872E8);
  v52 = swift_getKeyPath();
  v53 = &v13[*(v90 + 36)];
  v54 = sub_10010FC20(&qword_1011A13C0, &qword_100EC0AD0);
  (*(*(v50 - 8) + 16))(v53 + *(v54 + 28), v51, v50);
  *v53 = v52;
  v55 = v91;
  IconOnlyLabelStyle.init()();
  sub_1002680E8();
  sub_100267480(&qword_101187970, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
  v56 = v93;
  View.labelStyle<A>(_:)();
  (*(v94 + 8))(v55, v10);
  sub_1000095E8(v13, &qword_101187918, &qword_100EC30D8);
  if (v27)
  {
    v57 = v27;
    v58 = static Color.primary.getter();
    v59 = v111;
  }

  else
  {
    v59 = v111;
    if (qword_10117F450 != -1)
    {
      swift_once();
    }

    v57 = v27;
    v58 = qword_1011872E0;
  }

  v60 = v98;
  (*(v95 + 32))(v98, v56, v96);
  *(v60 + *(v92 + 36)) = v58;
  v61 = v101;
  sub_10056CCC4(v101);
  v62 = v8;
  v63 = v8;
  v64 = v103;
  (*(v6 + 104))(v62, enum case for CPUIHorizontalSizeClass.wide(_:), v103);
  static CPUIHorizontalSizeClass.== infix(_:_:)();
  v65 = *(v6 + 8);
  v65(v63, v64);
  v65(v61, v64);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v66 = v100;
  sub_10003D17C(v60, v100, &qword_101187928, &qword_100EC30E8);
  v67 = (v66 + *(v97 + 36));
  v68 = v122;
  v67[4] = v121;
  v67[5] = v68;
  v67[6] = v123;
  v69 = v118;
  *v67 = v117;
  v67[1] = v69;
  v70 = v120;
  v67[2] = v119;
  v67[3] = v70;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v71 = v107;
  sub_10003D17C(v66, v107, &qword_101187930, &qword_100EC30F0);
  v72 = (v71 + *(v99 + 36));
  v73 = v125;
  *v72 = v124;
  v72[1] = v73;
  v72[2] = v126;
  type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.Content.PlayShuffleStyle(0);
  sub_10056CEEC(v59);
  if (v57)
  {
    if (qword_10117F450 != -1)
    {
      swift_once();
    }

    v116 = &protocol witness table for Color;
    v115 = &type metadata for Color;
    v114[0] = qword_1011872E0;
  }

  else
  {
    sub_100266D08(v59, v114);
  }

  (*(v112 + 8))(v59, v102);
  sub_10000954C(v114, v115);
  v74 = __chkstk_darwin();
  (*(v76 + 16))(&v88 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0), v74);
  v77 = AnyShapeStyle.init<A>(_:)();
  v78 = static Edge.Set.all.getter();
  v79 = v109;
  sub_10003D17C(v71, v109, &qword_101187938, &qword_100EC30F8);
  v80 = v79 + *(v106 + 36);
  *v80 = v77;
  *(v80 + 8) = v78;
  sub_10000959C(v114);
  v81 = static Animation.spring(response:dampingFraction:blendDuration:)();
  v82 = v110;
  sub_10003D17C(v79, v110, &qword_101187940, &qword_100EC3100);
  v83 = v82 + *(v108 + 36);
  *v83 = v81;
  *(v83 + 8) = v57 & 1;
  v84 = sub_10010FC20(&qword_101187978, &unk_100EC3120);
  v85 = v105;
  v86 = v105 + *(v84 + 36);
  sub_100268288(v104, v86, &type metadata accessor for Capsule);
  *(v86 + *(sub_10010FC20(&qword_101187980, &qword_100EDCC10) + 36)) = 256;
  return sub_10003D17C(v82, v85, &qword_101187948, &qword_100EC3108);
}

id sub_100266568()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100266648(uint64_t a1)
{
  sub_1002667CC(319, &qword_1011A4570, &type metadata accessor for Artwork, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1002667CC(319, &unk_1011873B0, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel.Shape, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ObservationRegistrar();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1002667CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100266888(uint64_t a1)
{
  sub_1002668E0(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1002668E0(uint64_t a1)
{
  if (!qword_101187640)
  {
    sub_1001109D0(&qword_101187648, "p\a\v");
    sub_1001109D0(&unk_101187650, &qword_100EC2BA8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_101187640);
    }
  }
}

void sub_1002669B4(uint64_t a1)
{
  type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_100266B58(319, &qword_1011A11C0, &unk_10118F700, "dM\n", &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1002667CC(319, &qword_1011876E8, &type metadata accessor for CPUIHorizontalSizeClass, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_100266B08();
        if (v4 <= 0x3F)
        {
          sub_100266B58(319, &qword_1011876F0, &unk_1011876F8, qword_100EC2BC8, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100266B08()
{
  if (!qword_10118F2D0[0])
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, qword_10118F2D0);
    }
  }
}

void sub_100266B58(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1001109D0(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_100266C20(uint64_t a1)
{
  static Color.white.getter();
  v1 = Color.opacity(_:)();

  qword_1011872B0 = v1;
}

void sub_100266C64()
{
  static Font.callout.getter();
  static Font.Weight.medium.getter();
  v0 = Font.weight(_:)();

  qword_1011872B8 = v0;
}

uint64_t sub_100266CA8(uint64_t a1)
{
  result = static HierarchicalShapeStyle.primary.getter();
  dword_1011872C0 = result;
  return result;
}

void *sub_100266CC8()
{
  result = static Font.caption.getter();
  qword_1011872C8 = result;
  return result;
}

uint64_t sub_100266CE8(uint64_t a1)
{
  result = static HierarchicalShapeStyle.secondary.getter();
  dword_1011872D0 = result;
  return result;
}

uint64_t sub_100266D08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for BlendMode();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ColorScheme();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == enum case for ColorScheme.light(_:))
  {
    static Color.black.getter();
    v14 = Color.opacity(_:)();

    (*(v5 + 104))(v7, enum case for BlendMode.plusDarker(_:), v4);
    v15 = sub_10010FC20(&qword_101187988, &unk_100EC3130);
    a2[3] = v15;
    a2[4] = sub_100020674(&qword_101187990, &qword_101187988, &unk_100EC3130, &protocol conformance descriptor for _BlendModeShapeStyle<A>);
    v16 = sub_10001C8B8(a2);
    (*(v5 + 16))(v16 + *(v15 + 36), v7, v4);
    *v16 = v14;
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v18 = (v5 + 104);
    v19 = (v5 + 16);
    v20 = (v5 + 8);
    if (v13 == enum case for ColorScheme.dark(_:))
    {
      static Color.white.getter();
      v21 = Color.opacity(_:)();

      (*v18)(v7, enum case for BlendMode.plusLighter(_:), v4);
      v22 = sub_10010FC20(&qword_101187988, &unk_100EC3130);
      a2[3] = v22;
      a2[4] = sub_100020674(&qword_101187990, &qword_101187988, &unk_100EC3130, &protocol conformance descriptor for _BlendModeShapeStyle<A>);
      v23 = sub_10001C8B8(a2);
      (*v19)(v23 + *(v22 + 36), v7, v4);
      *v23 = v21;
      return (*v20)(v7, v4);
    }

    else
    {
      static Color.black.getter();
      v27 = Color.opacity(_:)();

      (*v18)(v7, enum case for BlendMode.plusDarker(_:), v4);
      v24 = sub_10010FC20(&qword_101187988, &unk_100EC3130);
      a2[3] = v24;
      a2[4] = sub_100020674(&qword_101187990, &qword_101187988, &unk_100EC3130, &protocol conformance descriptor for _BlendModeShapeStyle<A>);
      v25 = sub_10001C8B8(a2);
      (*v19)(v25 + *(v24 + 36), v7, v4);
      *v25 = v27;
      (*v20)(v7, v4);
      return (*(v9 + 8))(v12, v8);
    }
  }
}

uint64_t sub_100267160()
{
  result = static Font.callout.getter();
  qword_1011872D8 = result;
  return result;
}

uint64_t sub_100267180(uint64_t a1)
{
  result = static Color.accentColor.getter();
  qword_1011872E0 = result;
  return result;
}

uint64_t sub_1002671C8(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, unsigned int *a4)
{
  v6 = a2(0);
  sub_100006080(v6, a3);
  v7 = sub_1000060E4(v6, a3);
  v8 = *a4;
  v9 = *(*(v6 - 8) + 104);

  return v9(v7, v8, v6);
}

uint64_t sub_100267260()
{
  sub_1002675D8();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_10026729C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isFocused.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1002672CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return Label<>.init(_:systemImage:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1002673B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  v8 = __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1, v8);
  return a6(v10);
}

uint64_t sub_100267480(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002674C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1002675D8()
{
  result = qword_1011877F0;
  if (!qword_1011877F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011877F0);
  }

  return result;
}

uint64_t sub_1002676BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel.Shape(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100267720()
{
  result = qword_101187838;
  if (!qword_101187838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101187838);
  }

  return result;
}

void sub_1002677E0()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__title);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_10026782C(uint64_t a1, uint64_t a2)
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
      sub_100267480(&unk_10118D3D0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
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

double (*sub_100267B90())()
{
  v1 = *(v0 + 16);
  *(swift_allocObject() + 16) = v1;
  v2 = v1;
  return sub_100267BF4;
}

uint64_t sub_100267BFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_1002630A4(a1, v4, v5, v6);
}

void sub_100267CE8(uint64_t a1)
{
  sub_1002667CC(319, &qword_1011876E8, &type metadata accessor for CPUIHorizontalSizeClass, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100266B08();
    if (v2 <= 0x3F)
    {
      sub_1002667CC(319, &qword_1011878B0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100267DE4()
{
  result = qword_1011878E8;
  if (!qword_1011878E8)
  {
    sub_1001109D0(&qword_101187760, &qword_100EC2C68);
    sub_100267E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011878E8);
  }

  return result;
}

unint64_t sub_100267E70()
{
  result = qword_1011878F0;
  if (!qword_1011878F0)
  {
    sub_1001109D0(&qword_101187758, &qword_100EC2C60);
    sub_100267EFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011878F0);
  }

  return result;
}

unint64_t sub_100267EFC()
{
  result = qword_1011878F8;
  if (!qword_1011878F8)
  {
    sub_1001109D0(&qword_101187750, &qword_100EC2C58);
    sub_100267F88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011878F8);
  }

  return result;
}

unint64_t sub_100267F88()
{
  result = qword_101187900;
  if (!qword_101187900)
  {
    sub_1001109D0(&qword_101187748, &qword_100EC2C50);
    sub_100268014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101187900);
  }

  return result;
}

unint64_t sub_100268014()
{
  result = qword_101187908;
  if (!qword_101187908)
  {
    sub_1001109D0(&qword_101187740, &qword_100EC2C48);
    sub_100020674(&qword_101187910, &qword_101187738, &qword_100EC2C40, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101187908);
  }

  return result;
}

unint64_t sub_1002680E8()
{
  result = qword_101187958;
  if (!qword_101187958)
  {
    sub_1001109D0(&qword_101187918, &qword_100EC30D8);
    sub_1002681A0();
    sub_100020674(&qword_1011A1670, &qword_1011A13C0, &qword_100EC0AD0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101187958);
  }

  return result;
}

unint64_t sub_1002681A0()
{
  result = qword_101187960;
  if (!qword_101187960)
  {
    sub_1001109D0(&qword_101187950, &unk_100EC3110);
    sub_100267480(&qword_101187968, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    sub_100020674(&unk_1011914B0, &qword_101184D00, &qword_100EC11B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101187960);
  }

  return result;
}

uint64_t sub_100268288(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1002682F0()
{
  result = qword_101187998;
  if (!qword_101187998)
  {
    sub_1001109D0(&qword_101187978, &unk_100EC3120);
    sub_1002683A8();
    sub_100020674(&qword_1011879F0, &qword_101187980, &qword_100EDCC10, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101187998);
  }

  return result;
}

unint64_t sub_1002683A8()
{
  result = qword_1011879A0;
  if (!qword_1011879A0)
  {
    sub_1001109D0(&qword_101187948, &qword_100EC3108);
    sub_100268460();
    sub_100020674(&qword_1011879E0, &qword_1011879E8, &qword_100EE1CF0, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011879A0);
  }

  return result;
}

unint64_t sub_100268460()
{
  result = qword_1011879A8;
  if (!qword_1011879A8)
  {
    sub_1001109D0(&qword_101187940, &qword_100EC3100);
    sub_100268518();
    sub_100020674(&qword_1011879D0, &qword_1011879D8, &qword_100EC3140, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011879A8);
  }

  return result;
}

unint64_t sub_100268518()
{
  result = qword_1011879B0;
  if (!qword_1011879B0)
  {
    sub_1001109D0(&qword_101187938, &qword_100EC30F8);
    sub_1002685A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011879B0);
  }

  return result;
}

unint64_t sub_1002685A4()
{
  result = qword_1011879B8;
  if (!qword_1011879B8)
  {
    sub_1001109D0(&qword_101187930, &qword_100EC30F0);
    sub_100268630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011879B8);
  }

  return result;
}

unint64_t sub_100268630()
{
  result = qword_1011879C0;
  if (!qword_1011879C0)
  {
    sub_1001109D0(&qword_101187928, &qword_100EC30E8);
    sub_1001109D0(&qword_101187918, &qword_100EC30D8);
    type metadata accessor for IconOnlyLabelStyle();
    sub_1002680E8();
    sub_100267480(&qword_101187970, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
    swift_getOpaqueTypeConformance2();
    sub_100020674(&unk_101199EA0, &qword_1011879C8, &qword_100EE1C80, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011879C0);
  }

  return result;
}

id sub_100268B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v13 = a5;
  v76.receiver = v10;
  v76.super_class = swift_getObjectType();
  v18 = objc_msgSendSuper2(&v76, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v19 = [objc_opt_self() clearColor];
  [v18 setBackgroundColor:v19];

  v20 = sub_1002693B8(a1, a2, a3, a4, v13);

  if (a7)
  {

    v72 = sub_1002699B0(a6, a7, a8, a9, v18);
  }

  else
  {
    v72 = 0;
  }

  v21 = a6;
  v22 = [objc_allocWithZone(UILayoutGuide) init];
  v23 = v18;
  [v23 addLayoutGuide:v22];
  v24 = v20;
  [v23 addSubview:v24];

  v71 = v21;
  if (a10)
  {

    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100EBC6C0;
    v26 = [v24 centerYAnchor];

    v27 = [v23 layoutMarginsGuide];
    v28 = [v27 centerYAnchor];

    v29 = [v26 constraintEqualToAnchor:v28];
    LODWORD(v30) = 1132068864;
    v31 = [v29 withPriority:v30];

    *(v25 + 32) = v31;
  }

  else
  {
    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100EBC6D0;
    v33 = [v22 topAnchor];
    v34 = [v23 layoutMarginsGuide];
    v73 = v22;
    v35 = [v34 topAnchor];

    v36 = [v33 constraintEqualToAnchor:v35];
    *(v32 + 32) = v36;
    v37 = [v73 heightAnchor];
    v38 = [v23 layoutMarginsGuide];

    v39 = [v38 heightAnchor];
    v40 = [v37 constraintEqualToAnchor:v39 multiplier:0.15];

    *(v32 + 40) = v40;
    Array<A>.activate()(v32);

    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100EBC6D0;
    v41 = [v24 topAnchor];

    v42 = [v73 bottomAnchor];
    v43 = [v41 constraintLessThanOrEqualToAnchor:v42];

    LODWORD(v44) = 1132068864;
    v45 = [v43 withPriority:v44];

    *(v25 + 32) = v45;
    v46 = [v24 centerYAnchor];

    v47 = [v23 layoutMarginsGuide];
    v48 = [v47 centerYAnchor];

    v49 = [v46 constraintEqualToAnchor:v48];
    type metadata accessor for UILayoutPriority(0);
    sub_10026A1D0();
    static _UIKitNumericRawRepresentable.- infix(_:_:)();
    LODWORD(v50) = v75;
    v51 = [v49 withPriority:v50];

    v22 = v73;
    *(v25 + 40) = v51;
  }

  Array<A>.activate()(v25);

  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_100EBDC10;
  v53 = [v24 topAnchor];

  v54 = v23;
  v55 = [v54 layoutMarginsGuide];
  v56 = [v55 topAnchor];

  v57 = [v53 constraintGreaterThanOrEqualToAnchor:v56 constant:16.0];
  *(v52 + 32) = v57;
  v58 = [v24 bottomAnchor];

  if (v72)
  {
    v59 = [v72 topAnchor];
  }

  else
  {
    v60 = [v54 layoutMarginsGuide];
    v59 = [v60 bottomAnchor];
  }

  v61 = [v58 constraintLessThanOrEqualToAnchor:v59 constant:-16.0];

  *(v52 + 40) = v61;
  v62 = [v24 leadingAnchor];

  v63 = [v54 layoutMarginsGuide];
  v64 = [v63 leadingAnchor];

  v65 = [v62 constraintEqualToAnchor:v64 constant:12.0];
  *(v52 + 48) = v65;
  v66 = [v24 trailingAnchor];

  v67 = [v54 layoutMarginsGuide];
  v68 = [v67 trailingAnchor];

  v69 = [v66 constraintEqualToAnchor:v68 constant:-12.0];
  *(v52 + 56) = v69;
  Array<A>.activate()(v52);

  sub_10026A228(v71, a7, a8, a9);

  return v54;
}

id sub_1002693B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2)
  {
    v7 = sub_100269600();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v7 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = sub_100269700();
  if ((a5 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v9 = sub_1002698B0();
LABEL_8:
  v21[4] = v7;
  v21[5] = v8;
  v21[6] = v9;
  v10 = v9;
  v11 = v7;
  result = v8;
  v13 = result;
  v14 = 0;
LABEL_9:
  if (v14 <= 3)
  {
    v15 = 3;
  }

  else
  {
    v15 = v14;
  }

  while (1)
  {
    if (v14 == 3)
    {
      sub_10010FC20(&qword_1011839B8, &unk_100EBF420);
      swift_arrayDestroy();
      v18 = objc_allocWithZone(UIStackView);
      sub_100009F78(0, &qword_101181620, UIView_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v20 = [v18 initWithArrangedSubviews:isa];

      [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v20 setAxis:1];
      [v20 setAlignment:3];
      [v20 setBaselineRelativeArrangement:1];
      [v20 setSpacing:28.0];

      return v20;
    }

    if (v15 == v14)
    {
      break;
    }

    v16 = v21[v14++ + 4];
    if (v16)
    {
      v17 = v16;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id sub_100269600()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setText:v1];

  if (qword_10117F460 != -1)
  {
    swift_once();
  }

  [v0 setFont:qword_1011879F8];
  [v0 setTextAlignment:1];
  [v0 setNumberOfLines:0];
  LODWORD(v2) = 1148846080;
  [v0 setContentHuggingPriority:1 forAxis:v2];
  return v0;
}

id sub_100269700()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setText:v1];

  if (qword_10117F468 != -1)
  {
    swift_once();
  }

  [v0 setFont:qword_101187A00];
  if (qword_10117F470 != -1)
  {
    swift_once();
  }

  [v0 setTextColor:qword_101187A08];
  [v0 setTextAlignment:1];
  [v0 setNumberOfLines:0];
  LODWORD(v2) = 1148846080;
  [v0 setContentHuggingPriority:1 forAxis:v2];
  type metadata accessor for UILayoutPriority(0);
  [v0 contentCompressionResistancePriorityForAxis:1];
  sub_10026A1D0();
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v3) = v5;
  [v0 setContentCompressionResistancePriority:1 forAxis:v3];
  return v0;
}

id sub_1002698B0()
{
  v0 = [objc_allocWithZone(UIActivityIndicatorView) init];
  [v0 setActivityIndicatorViewStyle:21];
  v1 = [objc_opt_self() labelColor];
  [v0 setColor:v1];

  [v0 startAnimating];
  type metadata accessor for UILayoutPriority(0);
  [v0 contentCompressionResistancePriorityForAxis:1];
  sub_10026A1D0();
  static _UIKitNumericRawRepresentable.+ infix(_:_:)();
  LODWORD(v2) = v4;
  [v0 setContentCompressionResistancePriority:1 forAxis:v2];
  return v0;
}

id sub_1002699B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = [objc_allocWithZone(CPUIRoundedLabelButton) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = v10;

  v12 = String._bridgeToObjectiveC()();
  [v11 setTitle:v12 forState:0];

  sub_10010FC20(&unk_101181640, &qword_100EBD090);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100EBC6B0;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  v14 = v11;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v14 setAccessibilityUserInputLabels:isa];

  v16 = [v14 titleLabel];
  if (v16)
  {
    if (qword_10117F478 != -1)
    {
      swift_once();
    }

    [v16 setFont:qword_101187A10];
  }

  sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;

  v18 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v14 addAction:v18 forControlEvents:{64, 0, 0, 0, sub_10026A26C, v17}];

  [a5 addSubview:v14];
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100EBDC10;
  v20 = [v14 heightAnchor];
  v21 = [v20 constraintEqualToConstant:40.0];

  *(v19 + 32) = v21;
  v22 = [v14 bottomAnchor];
  v23 = [a5 layoutMarginsGuide];
  v24 = [v23 bottomAnchor];

  v25 = [v22 constraintEqualToAnchor:v24 constant:-16.0];
  *(v19 + 40) = v25;
  v26 = [v14 widthAnchor];
  v27 = [a5 layoutMarginsGuide];
  v28 = [v27 widthAnchor];

  v29 = [v26 constraintEqualToAnchor:v28 multiplier:0.765];
  *(v19 + 48) = v29;
  v30 = [v14 centerXAnchor];

  v31 = [a5 layoutMarginsGuide];
  v32 = [v31 centerXAnchor];

  v33 = [v30 constraintEqualToAnchor:v32];
  *(v19 + 56) = v33;
  Array<A>.activate()(v19);

  return v14;
}

void sub_100269E8C()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleCallout;
  v2 = [v0 preferredFontForTextStyle:v1];

  qword_101187A00 = v2;
}

id sub_100269EF8()
{
  result = [objc_opt_self() secondaryLabelColor];
  qword_101187A08 = result;
  return result;
}

void sub_100269F48(uint64_t a1, id *a2, uint64_t *a3)
{
  sub_100009F78(0, &qword_101183A00, UIFont_ptr);
  v5 = *a2;
  v6 = static UIFont.emphasizedPreferredFont(forTextStyle:)();

  *a3 = v6;
}

id sub_10026A004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = a6;
  v13 = a3;
  v15 = a1;
  v16 = a9;
  if (a7)
  {
    v26 = a9;
    v18 = a1;
    v19 = a3;
    v20 = swift_allocObject();
    *(v20 + 16) = a7;
    *(v20 + 24) = a8;
    if (v11)
    {
      v21 = swift_allocObject();
      *(v21 + 16) = sub_100029B94;
      *(v21 + 24) = v20;
      sub_100030444(a7, a8);

      v22 = sub_10026A1C8;
LABEL_9:
      v13 = v19;
      v15 = v18;
      v16 = v26;
      goto LABEL_10;
    }

    v23 = sub_100029B94;
LABEL_8:
    sub_100030444(a7, a8);
    sub_100020438(v23, v20);
    a5 = 0;
    v11 = 0;
    v22 = 0;
    v21 = 0;
    goto LABEL_9;
  }

  if (!a6)
  {
    v26 = a9;
    v18 = a1;
    v19 = a3;
    v20 = 0;
    v23 = 0;
    goto LABEL_8;
  }

  sub_100030444(0, a8);
  a5 = 0;
  v11 = 0;
  v22 = 0;
  v21 = 0;
LABEL_10:
  v24 = objc_allocWithZone(type metadata accessor for CarPlayInformationView());

  return sub_100268B8C(v15, a2, v13, a4, 0, a5, v11, v22, v21, v16 & 1);
}

unint64_t sub_10026A1D0()
{
  result = qword_101187A40;
  if (!qword_101187A40)
  {
    type metadata accessor for UILayoutPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101187A40);
  }

  return result;
}

double sub_10026A228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10026A298@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v4 = &v25 - v3;
  v5 = type metadata accessor for Playlist.Entry.InternalItem();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v25 - v9;
  Playlist.Entry.internalItem.getter();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v5, &protocol witness table for Playlist.Entry.InternalItem, v4);
  v11 = *(v6 + 8);
  v11(v10, v5);
  Playlist.Entry.internalItem.getter();
  v12 = (*(v6 + 88))(v8, v5);
  if (v12 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    goto LABEL_2;
  }

  if (v12 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
LABEL_4:
    v11(v8, v5);
    v14 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
    (*(*(v14 - 8) + 56))(v2, 5, 11, v14);
    goto LABEL_7;
  }

  if (v12 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
LABEL_6:
    v11(v8, v5);
    v15 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
    (*(*(v15 - 8) + 56))(v2, 1, 11, v15);
    goto LABEL_7;
  }

  if (v12 != enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    if (v12 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
    {
      if (v12 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
      {
        v24 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
        (*(*(v24 - 8) + 56))(v2, 1, 11, v24);
        v11(v8, v5);
        goto LABEL_7;
      }

      goto LABEL_4;
    }

    goto LABEL_6;
  }

LABEL_2:
  v11(v8, v5);
  v13 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v13 - 8) + 56))(v2, 6, 11, v13);
LABEL_7:
  v16 = sub_10026E2A4();
  v17 = Corner.small.unsafeMutableAddressor();
  v18 = *v17;
  v19 = v17[1];
  v20 = *(v17 + 16);
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0, 1, 0, 1, 0, 1, 2, v27);
  v21 = v26;
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v4, v2, v16, 0, v27, v18, v19, v20, v26);
  v22 = type metadata accessor for ArtworkImage.Info(0);
  return (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
}

uint64_t sub_10026A6F8()
{
  v0 = type metadata accessor for Playlist.Kind();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&qword_101187EF0, &unk_100EC3600);
  __chkstk_darwin();
  v6 = &v20 - v5;
  sub_10010FC20(&qword_101187EF8, &unk_100ECEED0);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v20 - v9;
  __chkstk_darwin();
  v12 = &v20 - v11;
  v13 = Playlist.isChart.getter();
  if (v13 != 2 && (v13 & 1) != 0)
  {
    goto LABEL_6;
  }

  v21 = v3;
  Playlist.kind.getter();
  (*(v1 + 104))(v10, enum case for Playlist.Kind.replay(_:), v0);
  (*(v1 + 56))(v10, 0, 1, v0);
  v14 = *(v4 + 48);
  sub_1000089F8(v12, v6, &qword_101187EF8, &unk_100ECEED0);
  sub_1000089F8(v10, &v6[v14], &qword_101187EF8, &unk_100ECEED0);
  v15 = *(v1 + 48);
  if (v15(v6, 1, v0) != 1)
  {
    sub_1000089F8(v6, v8, &qword_101187EF8, &unk_100ECEED0);
    if (v15(&v6[v14], 1, v0) != 1)
    {
      v17 = v21;
      (*(v1 + 32))(v21, &v6[v14], v0);
      sub_10026FEE8(&qword_101187F00, &type metadata accessor for Playlist.Kind, &protocol conformance descriptor for Playlist.Kind);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      v18 = *(v1 + 8);
      v18(v17, v0);
      sub_1000095E8(v10, &qword_101187EF8, &unk_100ECEED0);
      sub_1000095E8(v12, &qword_101187EF8, &unk_100ECEED0);
      v18(v8, v0);
      sub_1000095E8(v6, &qword_101187EF8, &unk_100ECEED0);
      return v16 & 1;
    }

    sub_1000095E8(v10, &qword_101187EF8, &unk_100ECEED0);
    sub_1000095E8(v12, &qword_101187EF8, &unk_100ECEED0);
    (*(v1 + 8))(v8, v0);
    goto LABEL_9;
  }

  sub_1000095E8(v10, &qword_101187EF8, &unk_100ECEED0);
  sub_1000095E8(v12, &qword_101187EF8, &unk_100ECEED0);
  if (v15(&v6[v14], 1, v0) != 1)
  {
LABEL_9:
    sub_1000095E8(v6, &qword_101187EF0, &unk_100EC3600);
    v16 = 0;
    return v16 & 1;
  }

  sub_1000095E8(v6, &qword_101187EF8, &unk_100ECEED0);
LABEL_6:
  v16 = 1;
  return v16 & 1;
}

uint64_t sub_10026AB50(uint64_t a1, uint64_t a2)
{
  v145 = a2;
  v157 = a1;
  sub_10010FC20(&unk_10118D2F0, &unk_100EBCE10);
  __chkstk_darwin();
  v143 = &v108 - v3;
  v141 = type metadata accessor for Track();
  v153 = *(v141 - 8);
  __chkstk_darwin();
  v142 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v151 = &v108 - v5;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v156 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v155 = &v108 - v7;
  v139 = sub_10010FC20(&qword_101187EB0, &qword_100EC35B0);
  v144 = *(v139 - 8);
  __chkstk_darwin();
  v138 = &v108 - v8;
  v137 = sub_10010FC20(&qword_1011A4740, &qword_100EC31F0);
  __chkstk_darwin();
  v136 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v135 = &v108 - v10;
  v134 = sub_10010FC20(&qword_101187EB8, &qword_100EC35B8);
  v132 = *(v134 - 8);
  __chkstk_darwin();
  v129 = &v108 - v11;
  v126 = sub_10010FC20(&qword_101187EC0, &qword_100EC35C0);
  v124 = *(v126 - 8);
  __chkstk_darwin();
  v123 = &v108 - v12;
  v118 = sub_10010FC20(&qword_101186E00, &qword_100EC31E0);
  __chkstk_darwin();
  v116 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v115 = &v108 - v14;
  v114 = sub_10010FC20(&qword_101187EC8, &qword_100EC35C8);
  v113 = *(v114 - 8);
  __chkstk_darwin();
  v112 = &v108 - v15;
  v154 = sub_10010FC20(&qword_101187ED0, &unk_100EC35D0);
  v152 = *(v154 - 8);
  __chkstk_darwin();
  v111 = &v108 - v16;
  v121 = sub_10010FC20(&qword_1011928F0, &unk_100F149B0);
  v117 = *(v121 - 8);
  __chkstk_darwin();
  v110 = &v108 - v17;
  v18 = sub_10010FC20(&qword_101187ED8, &qword_100EC35E0);
  v149 = *(v18 - 8);
  v150 = v18;
  __chkstk_darwin();
  v109 = &v108 - v19;
  v148 = sub_10010FC20(&qword_101180C90, &unk_100EBC730);
  __chkstk_darwin();
  v147 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = (&v108 - v21);
  v140 = sub_10010FC20(&qword_101187EE0, &qword_100EC35E8);
  v125 = *(v140 - 1);
  __chkstk_darwin();
  v108 = &v108 - v23;
  v24 = sub_10010FC20(&qword_101187EE8, &unk_100EC35F0);
  v146 = *(v24 - 8);
  __chkstk_darwin();
  v26 = &v108 - v25;
  v27 = sub_10010FC20(&unk_10119F000, &qword_100EC31D0);
  __chkstk_darwin();
  v130 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v30 = &v108 - v29;
  __chkstk_darwin();
  v32 = &v108 - v31;
  *(v2 + 16) = 0;
  v33 = v2 + OBJC_IVAR____TtC5Music17PlaylistEntryData__artworkInfo;
  v34 = type metadata accessor for ArtworkImage.Info(0);
  v35 = *(v34 - 8);
  v36 = *(v35 + 56);
  v122 = v34;
  v120 = v36;
  v119 = v35 + 56;
  (v36)(v32, 1, 1);
  sub_1000089F8(v32, v30, &unk_10119F000, &qword_100EC31D0);
  v131 = v27;
  Published.init(initialValue:)();
  v128 = v32;
  sub_1000095E8(v32, &unk_10119F000, &qword_100EC31D0);
  v37 = *(v146 + 32);
  v127 = v33;
  v133 = v24;
  v37(v33, v26, v24);
  v38 = OBJC_IVAR____TtC5Music17PlaylistEntryData__leadingNumberState;
  v160 = 0;
  LOBYTE(v161) = -2;
  sub_10010FC20(&qword_101187AF0, &qword_100EC31D8);
  v39 = v108;
  Published.init(initialValue:)();
  (*(v125 + 32))(v2 + v38, v39, v140);
  *(v2 + OBJC_IVAR____TtC5Music17PlaylistEntryData_showVideoIcon) = 0;
  v40 = v2 + OBJC_IVAR____TtC5Music17PlaylistEntryData__artist;
  v41 = type metadata accessor for AttributedString();
  (*(*(v41 - 8) + 56))(v22, 1, 1, v41);
  sub_1000089F8(v22, v147, &qword_101180C90, &unk_100EBC730);
  v42 = v109;
  Published.init(initialValue:)();
  v140 = v22;
  sub_1000095E8(v22, &qword_101180C90, &unk_100EBC730);
  v43 = *(v149 + 32);
  v125 = v40;
  v43(v40, v42, v150);
  v44 = OBJC_IVAR____TtC5Music17PlaylistEntryData__album;
  v160 = 0;
  v161 = 0;
  sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
  v45 = v110;
  Published.init(initialValue:)();
  (*(v117 + 32))(v2 + v44, v45, v121);
  v46 = v2 + OBJC_IVAR____TtC5Music17PlaylistEntryData__duration;
  v160 = 0;
  LOBYTE(v161) = 1;
  v47 = sub_10010FC20(&qword_101187648, "p\a\v");
  v48 = v111;
  v117 = v47;
  Published.init(initialValue:)();
  v49 = *(v152 + 32);
  v121 = v46;
  v49(v46, v48, v154);
  v50 = OBJC_IVAR____TtC5Music17PlaylistEntryData__previewID;
  v160 = 0;
  v161 = 0;
  sub_10010FC20(&unk_1011A49A0, &qword_100ECF970);
  v51 = v112;
  Published.init(initialValue:)();
  (*(v113 + 32))(v2 + v50, v51, v114);
  v52 = OBJC_IVAR____TtC5Music17PlaylistEntryData__socialContributor;
  v53 = type metadata accessor for SocialProfile();
  v54 = v115;
  (*(*(v53 - 8) + 56))(v115, 1, 1, v53);
  sub_1000089F8(v54, v116, &qword_101186E00, &qword_100EC31E0);
  v55 = v123;
  Published.init(initialValue:)();
  sub_1000095E8(v54, &qword_101186E00, &qword_100EC31E0);
  (*(v124 + 32))(v2 + v52, v55, v126);
  v56 = OBJC_IVAR____TtC5Music17PlaylistEntryData__contextMenuProvider;
  v160 = 0;
  v161 = 0;
  sub_10010FC20(&qword_101187B38, &qword_100EC31E8);
  v57 = v129;
  Published.init(initialValue:)();
  (*(v132 + 32))(v2 + v56, v57, v134);
  v58 = OBJC_IVAR____TtC5Music17PlaylistEntryData__reactionsConfiguration;
  v59 = type metadata accessor for Tracklist.ReactionsConfiguration(0);
  v60 = v135;
  (*(*(v59 - 8) + 56))(v135, 1, 1, v59);
  sub_1000089F8(v60, v136, &qword_1011A4740, &qword_100EC31F0);
  v61 = v138;
  Published.init(initialValue:)();
  sub_1000095E8(v60, &qword_1011A4740, &qword_100EC31F0);
  v62 = *(v144 + 32);
  v144 = v2;
  v62(v2 + v58, v61, v139);
  v63 = v157;
  Track.artworkViewModel.getter(v155);
  v64 = v153;
  v65 = *(v153 + 16);
  v66 = v151;
  v67 = v63;
  v68 = v141;
  v65(v151, v67, v141);
  v69 = *(v64 + 88);
  v70 = v68;
  v71 = v69(v66, v68);
  v72 = enum case for Track.song(_:);
  if (v71 == enum case for Track.song(_:))
  {
    v73 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
    (*(*(v73 - 8) + 56))(v156, 1, 11, v73);
    v74 = enum case for Track.musicVideo(_:);
  }

  else
  {
    v74 = v71;
    v75 = v156;
    v76 = enum case for Track.musicVideo(_:);
    v77 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
    v78 = *(*(v77 - 8) + 56);
    if (v74 == v76)
    {
      v78(v75, 5, 11, v77);
    }

    else
    {
      v78(v75, 1, 11, v77);
      v74 = v76;
    }
  }

  v79 = *(v153 + 8);
  v80 = v70;
  v79(v151, v70);
  v81 = v142;
  v65(v142, v157, v80);
  v82 = v69(v81, v80);
  v83 = v82 == v74;
  v84 = 0x3FF0000000000000;
  if (v83)
  {
    v85 = 0x3FFC71C71C71C71CLL;
  }

  else
  {
    v85 = 0x3FF0000000000000;
  }

  v86 = v80;
  v79(v81, v80);
  v87 = v79;
  if (v82 != v72)
  {
    v84 = v85;
  }

  v88 = Corner.small.unsafeMutableAddressor();
  v89 = *v88;
  v90 = v88[1];
  v91 = *(v88 + 16);
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0, 1, 0, 1, 0, 1, 2, &v160);
  v92 = v130;
  v93 = ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v155, v156, v84, 0, &v160, v89, v90, v91, v130);
  v120(v92, 0, 1, v122, v93);
  v94 = v127;
  swift_beginAccess();
  (*(v146 + 8))(v94, v133);
  sub_1000089F8(v92, v128, &unk_10119F000, &qword_100EC31D0);
  Published.init(initialValue:)();
  sub_1000095E8(v92, &unk_10119F000, &qword_100EC31D0);
  swift_endAccess();
  v95 = v157;
  v96 = Track.title.getter();
  v98 = v97;
  v99 = v144;
  swift_beginAccess();
  v158 = v96;
  v159 = v98;
  Published.init(initialValue:)();
  swift_endAccess();
  v100 = v140;
  BylineProviding.byline(with:)(&off_101099D10, v86, &protocol witness table for Track, v140);
  v101 = v125;
  swift_beginAccess();
  (*(v149 + 8))(v101, v150);
  sub_1000089F8(v100, v147, &qword_101180C90, &unk_100EBC730);
  Published.init(initialValue:)();
  sub_1000095E8(v100, &qword_101180C90, &unk_100EBC730);
  swift_endAccess();
  v102 = Track.duration.getter();
  LOBYTE(v98) = v103;
  v104 = v121;
  swift_beginAccess();
  (*(v152 + 8))(v104, v154);
  v158 = v102;
  LOBYTE(v159) = v98 & 1;
  Published.init(initialValue:)();
  swift_endAccess();
  v105 = v143;
  Track.contentRating.getter();
  LOBYTE(v102) = TextBadge.init(for:isPlayable:)(v105, 1);
  swift_beginAccess();
  LOBYTE(v158) = v102;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v158) = 0;
  Published.init(initialValue:)();
  swift_endAccess();
  v106 = type metadata accessor for Playlist();
  (*(*(v106 - 8) + 8))(v145, v106);
  v87(v95, v86);
  return v99;
}

uint64_t sub_10026BF48()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t sub_10026BFC0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t sub_10026C05C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t sub_10026C0D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t sub_10026C15C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

uint64_t (*sub_10026C1DC())()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v4);

  v0 = v4[0];
  if (!v4[0])
  {
    return 0;
  }

  v1 = v4[1];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  return sub_10026FF74;
}

double sub_10026C2A8@<D0>(void *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a3);

  return result;
}

uint64_t sub_10026C318()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void sub_10026C38C(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  v3 = v5;
  *a2 = v4;
  *(a2 + 8) = v3;
}

uint64_t sub_10026C414(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_10026C498(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v4);

  v3 = v4[1];
  *a2 = v4[0];
  a2[1] = v3;
}

uint64_t sub_10026C518(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10026C59C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  sub_10010FC20(a5, a6);
  __chkstk_darwin();
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v16 - v13;
  sub_1000089F8(a1, &v16 - v13, a5, a6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v14, v12, a5, a6);

  static Published.subscript.setter();
  return sub_1000095E8(v14, a5, a6);
}

void sub_10026C6C4(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  v3 = v5;
  *a2 = v4;
  *(a2 + 8) = v3;
}

uint64_t sub_10026C74C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_10026C7D0(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t sub_10026C850(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10026C8C4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10026C944@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  return result;
}

double sub_10026C978@<D0>(_OWORD *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t sub_10026C9F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_10026FF74;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  if (v2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
  }

  sub_100030444(v2, v3);

  return static Published.subscript.setter();
}

uint64_t sub_10026CB00(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v4 = a1;
  a2(&v3, &v4);
  return v3;
}

double sub_10026CB40@<D0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a4);

  return result;
}

void sub_10026CBB8(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t sub_10026CC38(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10026CCAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v71 = a4;
  v72 = a5;
  v70 = a3;
  v77 = a2;
  sub_10010FC20(&qword_101186E00, &qword_100EC31E0);
  __chkstk_darwin();
  v76 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v75 = &v59 - v6;
  __chkstk_darwin();
  v73 = &v59 - v7;
  __chkstk_darwin();
  v74 = &v59 - v8;
  sub_10010FC20(&qword_1011A4740, &qword_100EC31F0);
  __chkstk_darwin();
  v69 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v68 = &v59 - v10;
  v11 = type metadata accessor for Playlist.Entry.InternalItem();
  v66 = *(v11 - 8);
  v67 = v11;
  __chkstk_darwin();
  v65 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Song();
  v61 = *(v13 - 8);
  v62 = v13;
  __chkstk_darwin();
  v60 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118D2F0, &unk_100EBCE10);
  __chkstk_darwin();
  v64 = &v59 - v15;
  sub_10010FC20(&qword_101180C90, &unk_100EBC730);
  __chkstk_darwin();
  v63 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = (&v59 - v17);
  sub_10010FC20(&unk_10119F000, &qword_100EC31D0);
  __chkstk_darwin();
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v59 - v21;
  sub_10026A298(&v59 - v21);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v22, v20, &unk_10119F000, &qword_100EC31D0);

  static Published.subscript.setter();
  sub_1000095E8(v22, &unk_10119F000, &qword_100EC31D0);
  if (sub_10026A6F8())
  {
    result = Playlist.Entry.position.getter();
    v24 = (result + 1);
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v25 = 0x80;
  }

  else
  {
    v24 = 0;
    v25 = -2;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v78 = v24;
  LOBYTE(v79) = v25;

  static Published.subscript.setter();
  v26 = Playlist.Entry.title.getter();
  v28 = v27;
  swift_getKeyPath();
  swift_getKeyPath();
  v78 = v26;
  v79 = v28;

  static Published.subscript.setter();
  v29 = type metadata accessor for Playlist.Entry();
  BylineProviding.byline(with:)(&off_101099118, v29, &protocol witness table for Playlist.Entry, v18);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v18, v63, &qword_101180C90, &unk_100EBC730);

  static Published.subscript.setter();
  sub_1000095E8(v18, &qword_101180C90, &unk_100EBC730);
  v30 = 0;
  v31 = 0;
  if (sub_10026A6F8())
  {
    v30 = Playlist.Entry.albumTitle.getter();
    v31 = v32;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v78 = v30;
  v79 = v31;

  static Published.subscript.setter();
  v33 = Playlist.Entry.duration.getter();
  v35 = v34;
  swift_getKeyPath();
  swift_getKeyPath();
  v78 = v33;
  LOBYTE(v79) = v35 & 1;

  static Published.subscript.setter();
  v36 = v64;
  Playlist.Entry.contentRating.getter();
  LOBYTE(v33) = TextBadge.init(for:isPlayable:)(v36, 1);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v78) = v33;

  static Published.subscript.setter();
  v37 = v65;
  Playlist.Entry.internalItem.getter();
  v39 = v66;
  v38 = v67;
  v40 = (*(v66 + 88))(v37, v67);
  v42 = v73;
  v41 = v74;
  if (v40 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v39 + 96))(v37, v38);
    v44 = v60;
    v43 = v61;
    v45 = v37;
    v46 = v62;
    (*(v61 + 32))(v60, v45, v62);
    v47 = Song.id.getter();
    v49 = v48;
    (*(v43 + 8))(v44, v46);
  }

  else
  {
    (*(v39 + 8))(v37, v38);
    v47 = 0;
    v49 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v78 = v47;
  v79 = v49;

  static Published.subscript.setter();
  v50 = v68;
  sub_1000089F8(v70, v68, &qword_1011A4740, &qword_100EC31F0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v50, v69, &qword_1011A4740, &qword_100EC31F0);

  static Published.subscript.setter();
  sub_1000095E8(v50, &qword_1011A4740, &qword_100EC31F0);
  swift_getKeyPath();
  swift_getKeyPath();
  v51 = v71;
  if (v71)
  {
    v52 = swift_allocObject();
    v53 = v72;
    *(v52 + 16) = v51;
    *(v52 + 24) = v53;
    v54 = sub_10026FF70;
  }

  else
  {
    v54 = 0;
    v52 = 0;
    v53 = v72;
  }

  v78 = v54;
  v79 = v52;

  sub_100030444(v51, v53);
  static Published.subscript.setter();
  Playlist.Entry.contributor.getter();
  v55 = type metadata accessor for SocialProfile();
  v56 = *(v55 - 8);
  v57 = *(v56 + 48);
  if (v57(v42, 1, v55) == 1)
  {
    Playlist.contributor(for:)();
    if (v57(v42, 1, v55) != 1)
    {
      sub_1000095E8(v42, &qword_101186E00, &qword_100EC31E0);
    }
  }

  else
  {
    (*(v56 + 32))(v41, v42, v55);
    (*(v56 + 56))(v41, 0, 1, v55);
  }

  v58 = v75;
  sub_1000089F8(v41, v75, &qword_101186E00, &qword_100EC31E0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v58, v76, &qword_101186E00, &qword_100EC31E0);

  static Published.subscript.setter();
  sub_1000095E8(v58, &qword_101186E00, &qword_100EC31E0);
  return sub_1000095E8(v41, &qword_101186E00, &qword_100EC31E0);
}

uint64_t sub_10026D718()
{
  v1 = OBJC_IVAR____TtC5Music17PlaylistEntryData__artworkInfo;
  v2 = sub_10010FC20(&qword_101187EE8, &unk_100EC35F0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Music17PlaylistEntryData__leadingNumberState;
  v4 = sub_10010FC20(&qword_101187EE0, &qword_100EC35E8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC5Music17PlaylistEntryData__title;
  v6 = sub_10010FC20(&qword_101184258, &qword_100EC3610);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC5Music17PlaylistEntryData__artist;
  v8 = sub_10010FC20(&qword_101187ED8, &qword_100EC35E0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC5Music17PlaylistEntryData__album;
  v10 = sub_10010FC20(&qword_1011928F0, &unk_100F149B0);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC5Music17PlaylistEntryData__duration;
  v12 = sub_10010FC20(&qword_101187ED0, &unk_100EC35D0);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC5Music17PlaylistEntryData__explicitBadge;
  v14 = sub_10010FC20(&qword_101187F08, &qword_100EC3618);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC5Music17PlaylistEntryData__previewID;
  v16 = sub_10010FC20(&qword_101187EC8, &qword_100EC35C8);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = OBJC_IVAR____TtC5Music17PlaylistEntryData__socialContributor;
  v18 = sub_10010FC20(&qword_101187EC0, &qword_100EC35C0);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = OBJC_IVAR____TtC5Music17PlaylistEntryData__contextMenuProvider;
  v20 = sub_10010FC20(&qword_101187EB8, &qword_100EC35B8);
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  v21 = OBJC_IVAR____TtC5Music17PlaylistEntryData__reactionsConfiguration;
  v22 = sub_10010FC20(&qword_101187EB0, &qword_100EC35B0);
  (*(*(v22 - 8) + 8))(v0 + v21, v22);
  v23 = OBJC_IVAR____TtC5Music17PlaylistEntryData__isProminent;
  v24 = sub_10010FC20(&unk_101189E60, &unk_100EC0CF0);
  (*(*(v24 - 8) + 8))(v0 + v23, v24);
  return v0;
}

uint64_t sub_10026DAC8()
{
  sub_10026D718();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlaylistEntryData(uint64_t a1)
{
  result = qword_101187AD0;
  if (!qword_101187AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10026DB74(uint64_t a1)
{
  sub_1000054CC(319, &qword_101187AE0, &unk_10119F000, &qword_100EC31D0);
  if (v1 <= 0x3F)
  {
    sub_1000054CC(319, &qword_101187AE8, &qword_101187AF0, &qword_100EC31D8);
    if (v2 <= 0x3F)
    {
      sub_100005390(319, &qword_101187AF8, &type metadata for String);
      if (v3 <= 0x3F)
      {
        sub_1000054CC(319, &qword_101187B00, &qword_101180C90, &unk_100EBC730);
        if (v4 <= 0x3F)
        {
          sub_1000054CC(319, &qword_101187B08, &qword_1011815E0, &qword_100EBD050);
          if (v5 <= 0x3F)
          {
            sub_1000054CC(319, &qword_101187B10, &qword_101187648, "p\a\v");
            if (v6 <= 0x3F)
            {
              sub_100005390(319, &qword_101187B18, &type metadata for TextBadge);
              if (v7 <= 0x3F)
              {
                sub_1000054CC(319, &qword_101187B20, &unk_1011A49A0, &qword_100ECF970);
                if (v8 <= 0x3F)
                {
                  sub_1000054CC(319, &qword_101187B28, &qword_101186E00, &qword_100EC31E0);
                  if (v9 <= 0x3F)
                  {
                    sub_1000054CC(319, &qword_101187B30, &qword_101187B38, &qword_100EC31E8);
                    if (v10 <= 0x3F)
                    {
                      sub_1000054CC(319, &unk_101187B40, &qword_1011A4740, &qword_100EC31F0);
                      if (v11 <= 0x3F)
                      {
                        sub_100005390(319, &qword_10119ED80, &type metadata for Bool);
                        if (v12 <= 0x3F)
                        {
                          swift_updateClassMetadata2();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10026E010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  return v5;
}

uint64_t (*sub_10026E094())()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v4);

  v0 = v4[0];
  if (!v4[0])
  {
    return 0;
  }

  v1 = v4[1];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  return sub_10026E26C;
}

double sub_10026E160@<D0>(void *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a3);

  return result;
}

uint64_t sub_10026E1D4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PlaylistEntryData(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_10026E214(uint64_t a1)
{
  result = sub_10026FEE8(&qword_101187EA8, type metadata accessor for PlaylistEntryData, &unk_100EC31F8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10026E270@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

double sub_10026E2A4()
{
  v0 = type metadata accessor for UploadedVideo();
  v1 = *(v0 - 8);
  v28 = v0;
  v29 = v1;
  __chkstk_darwin();
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v28 - v6;
  v8 = type metadata accessor for TVEpisode();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Playlist.Entry.InternalItem();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Playlist.Entry.internalItem.getter();
  v16 = (*(v13 + 88))(v15, v12);
  if (v16 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v13 + 8))(v15, v12);
    return 0.666666667;
  }

  if (v16 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v13 + 8))(v15, v12);
    return 1.77777778;
  }

  if (v16 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    goto LABEL_7;
  }

  if (v16 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v13 + 96))(v15, v12);
    (*(v9 + 32))(v11, v15, v8);
    TVEpisode.artworkViewModel.getter(v7);
    v18 = type metadata accessor for ArtworkImage.ViewModel(0);
    if ((*(*(v18 - 8) + 48))(v7, 1, v18) == 1)
    {
      (*(v9 + 8))(v11, v8);
      sub_1000095E8(v7, &unk_10118A5E0, &unk_100EBCD90);
      return 1.77777778;
    }

    v22 = ArtworkImage.ViewModel.calculatedAspectRatio.getter();
    v24 = v23;
    (*(v9 + 8))(v11, v8);
    sub_10026E7C0(v7);
    if (v24)
    {
      return 1.77777778;
    }

    return *&v22;
  }

  else
  {
    if (v16 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) || v16 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
    {
LABEL_7:
      (*(v13 + 8))(v15, v12);
      return 1.0;
    }

    (*(v13 + 96))(v15, v12);
    v19 = v28;
    v20 = v29;
    (*(v29 + 32))(v3, v15, v28);
    ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v19, &protocol witness table for UploadedVideo, v5);
    v21 = type metadata accessor for ArtworkImage.ViewModel(0);
    if ((*(*(v21 - 8) + 48))(v5, 1, v21) == 1)
    {
      (*(v20 + 8))(v3, v19);
      sub_1000095E8(v5, &unk_10118A5E0, &unk_100EBCD90);
      return 1.77777778;
    }

    v25 = ArtworkImage.ViewModel.calculatedAspectRatio.getter();
    v27 = v26;
    (*(v20 + 8))(v3, v19);
    sub_10026E7C0(v5);
    if (v27)
    {
      return 1.77777778;
    }

    return *&v25;
  }
}

uint64_t sub_10026E7C0(uint64_t a1)
{
  v2 = type metadata accessor for ArtworkImage.ViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10026E81C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v8 = v7;
  v139 = a6;
  v138 = a5;
  v136 = a4;
  v157 = a3;
  v169 = a2;
  v156 = a1;
  v134 = type metadata accessor for Playlist.Entry.InternalItem();
  v133 = *(v134 - 8);
  __chkstk_darwin();
  v132 = v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for Song();
  v123 = *(v124 - 8);
  __chkstk_darwin();
  v122 = v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118D2F0, &unk_100EBCE10);
  __chkstk_darwin();
  v131 = v121 - v11;
  v12 = sub_10010FC20(&qword_101187EB0, &qword_100EC35B0);
  v175 = *(v12 - 8);
  v176 = v12;
  __chkstk_darwin();
  v155 = v121 - v13;
  v174 = sub_10010FC20(&qword_1011A4740, &qword_100EC31F0);
  __chkstk_darwin();
  v173 = v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v172 = v121 - v15;
  v154 = sub_10010FC20(&qword_101187EB8, &qword_100EC35B8);
  v153 = *(v154 - 8);
  __chkstk_darwin();
  v152 = v121 - v16;
  v151 = sub_10010FC20(&qword_101187EC0, &qword_100EC35C0);
  v150 = *(v151 - 8);
  __chkstk_darwin();
  v149 = v121 - v17;
  v148 = sub_10010FC20(&qword_101186E00, &qword_100EC31E0);
  __chkstk_darwin();
  v135 = v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v137 = v121 - v19;
  __chkstk_darwin();
  v177 = v121 - v20;
  __chkstk_darwin();
  v178 = v121 - v21;
  v22 = sub_10010FC20(&qword_101187EC8, &qword_100EC35C8);
  v170 = *(v22 - 8);
  v171 = v22;
  __chkstk_darwin();
  v147 = v121 - v23;
  v24 = sub_10010FC20(&qword_101187ED0, &unk_100EC35D0);
  v167 = *(v24 - 8);
  v168 = v24;
  __chkstk_darwin();
  v145 = v121 - v25;
  v26 = sub_10010FC20(&qword_1011928F0, &unk_100F149B0);
  v165 = *(v26 - 8);
  v166 = v26;
  __chkstk_darwin();
  v141 = v121 - v27;
  v164 = sub_10010FC20(&qword_101187ED8, &qword_100EC35E0);
  v163 = *(v164 - 8);
  __chkstk_darwin();
  v140 = v121 - v28;
  v162 = sub_10010FC20(&qword_101180C90, &unk_100EBC730);
  __chkstk_darwin();
  v161 = v121 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v160 = (v121 - v30);
  v159 = sub_10010FC20(&qword_101187EE0, &qword_100EC35E8);
  v158 = *(v159 - 8);
  __chkstk_darwin();
  v32 = v121 - v31;
  v179 = sub_10010FC20(&qword_101187EE8, &unk_100EC35F0);
  v143 = *(v179 - 8);
  v33 = v143;
  __chkstk_darwin();
  v35 = v121 - v34;
  v146 = sub_10010FC20(&unk_10119F000, &qword_100EC31D0);
  __chkstk_darwin();
  v37 = v121 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v39 = v121 - v38;
  *(v7 + 16) = 0;
  v40 = OBJC_IVAR____TtC5Music17PlaylistEntryData__artworkInfo;
  v41 = type metadata accessor for ArtworkImage.Info(0);
  (*(*(v41 - 8) + 56))(v39, 1, 1, v41);
  v142 = v39;
  v144 = v37;
  sub_1000089F8(v39, v37, &unk_10119F000, &qword_100EC31D0);
  Published.init(initialValue:)();
  sub_1000095E8(v39, &unk_10119F000, &qword_100EC31D0);
  v42 = v40;
  (*(v33 + 32))(v7 + v40, v35, v179);
  v43 = OBJC_IVAR____TtC5Music17PlaylistEntryData__leadingNumberState;
  v182 = 0;
  LOBYTE(v183) = -2;
  v125 = sub_10010FC20(&qword_101187AF0, &qword_100EC31D8);
  Published.init(initialValue:)();
  (*(v158 + 32))(v7 + v43, v32, v159);
  *(v7 + OBJC_IVAR____TtC5Music17PlaylistEntryData_showVideoIcon) = 0;
  v44 = OBJC_IVAR____TtC5Music17PlaylistEntryData__artist;
  v45 = type metadata accessor for AttributedString();
  v46 = v160;
  (*(*(v45 - 8) + 56))(v160, 1, 1, v45);
  v47 = v46;
  sub_1000089F8(v46, v161, &qword_101180C90, &unk_100EBC730);
  v48 = v140;
  Published.init(initialValue:)();
  sub_1000095E8(v47, &qword_101180C90, &unk_100EBC730);
  v49 = *(v163 + 32);
  v126 = v44;
  v49(v8 + v44, v48, v164);
  v50 = OBJC_IVAR____TtC5Music17PlaylistEntryData__album;
  v182 = 0;
  v183 = 0;
  v51 = sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
  v52 = v141;
  v127 = v51;
  Published.init(initialValue:)();
  v53 = *(v165 + 32);
  v129 = v50;
  v53(v8 + v50, v52, v166);
  v54 = OBJC_IVAR____TtC5Music17PlaylistEntryData__duration;
  v182 = 0;
  LOBYTE(v183) = 1;
  v55 = sub_10010FC20(&qword_101187648, "p\a\v");
  v56 = v145;
  v128 = v55;
  Published.init(initialValue:)();
  v57 = *(v167 + 32);
  v130 = v54;
  v57(v8 + v54, v56, v168);
  v58 = OBJC_IVAR____TtC5Music17PlaylistEntryData__previewID;
  v182 = 0;
  v183 = 0;
  v59 = sub_10010FC20(&unk_1011A49A0, &qword_100ECF970);
  v60 = v147;
  v140 = v59;
  Published.init(initialValue:)();
  v61 = *(v170 + 32);
  v141 = v58;
  v61(v8 + v58, v60, v171);
  v62 = OBJC_IVAR____TtC5Music17PlaylistEntryData__socialContributor;
  v63 = type metadata accessor for SocialProfile();
  v145 = *(v63 - 8);
  v64 = *(v145 + 7);
  v65 = v178;
  v147 = v63;
  v121[1] = v145 + 56;
  v121[0] = v64;
  v64(v178, 1, 1);
  sub_1000089F8(v65, v177, &qword_101186E00, &qword_100EC31E0);
  v66 = v149;
  Published.init(initialValue:)();
  sub_1000095E8(v65, &qword_101186E00, &qword_100EC31E0);
  (*(v150 + 32))(v8 + v62, v66, v151);
  v67 = OBJC_IVAR____TtC5Music17PlaylistEntryData__contextMenuProvider;
  v182 = 0;
  v183 = 0;
  sub_10010FC20(&qword_101187B38, &qword_100EC31E8);
  v68 = v152;
  Published.init(initialValue:)();
  (*(v153 + 32))(v8 + v67, v68, v154);
  v69 = OBJC_IVAR____TtC5Music17PlaylistEntryData__reactionsConfiguration;
  v70 = type metadata accessor for Tracklist.ReactionsConfiguration(0);
  v71 = v172;
  (*(*(v70 - 8) + 56))(v172, 1, 1, v70);
  sub_1000089F8(v71, v173, &qword_1011A4740, &qword_100EC31F0);
  v72 = v155;
  Published.init(initialValue:)();
  sub_1000095E8(v71, &qword_1011A4740, &qword_100EC31F0);
  v73 = *(v175 + 32);
  v154 = v69;
  v73(v8 + v69, v72, v176);
  v74 = v142;
  v75 = v156;
  sub_10026A298(v142);
  swift_beginAccess();
  (*(v143 + 8))(v8 + v42, v179);
  sub_1000089F8(v74, v144, &unk_10119F000, &qword_100EC31D0);
  Published.init(initialValue:)();
  sub_1000095E8(v74, &unk_10119F000, &qword_100EC31D0);
  swift_endAccess();
  if (sub_10026A6F8())
  {
    result = Playlist.Entry.position.getter();
    v77 = result + 1;
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v78 = 0x80;
  }

  else
  {
    v77 = 0;
    v78 = -2;
  }

  swift_beginAccess();
  (*(v158 + 8))(v8 + v43, v159);
  v180 = v77;
  LOBYTE(v181) = v78;
  Published.init(initialValue:)();
  swift_endAccess();
  v79 = Playlist.Entry.title.getter();
  v81 = v80;
  swift_beginAccess();
  v180 = v79;
  v181 = v81;
  Published.init(initialValue:)();
  swift_endAccess();
  v82 = type metadata accessor for Playlist.Entry();
  v83 = v160;
  v179 = v82;
  BylineProviding.byline(with:)(&off_101099CE8, v82, &protocol witness table for Playlist.Entry, v160);
  v84 = v126;
  swift_beginAccess();
  (*(v163 + 8))(v8 + v84, v164);
  sub_1000089F8(v83, v161, &qword_101180C90, &unk_100EBC730);
  Published.init(initialValue:)();
  sub_1000095E8(v83, &qword_101180C90, &unk_100EBC730);
  swift_endAccess();
  v85 = 0;
  v86 = 0;
  if (sub_10026A6F8())
  {
    v85 = Playlist.Entry.albumTitle.getter();
    v86 = v87;
  }

  v88 = v129;
  swift_beginAccess();
  (*(v165 + 8))(v8 + v88, v166);
  v180 = v85;
  v181 = v86;
  Published.init(initialValue:)();
  swift_endAccess();
  v89 = Playlist.Entry.duration.getter();
  v91 = v90;
  v92 = v130;
  swift_beginAccess();
  (*(v167 + 8))(v8 + v92, v168);
  v180 = v89;
  LOBYTE(v181) = v91 & 1;
  Published.init(initialValue:)();
  swift_endAccess();
  v93 = v131;
  Playlist.Entry.contentRating.getter();
  LOBYTE(v89) = TextBadge.init(for:isPlayable:)(v93, 1);
  swift_beginAccess();
  LOBYTE(v180) = v89;
  Published.init(initialValue:)();
  swift_endAccess();
  v94 = v132;
  Playlist.Entry.internalItem.getter();
  v95 = v133;
  v96 = v134;
  v97 = (*(v133 + 88))(v94, v134);
  v98 = v138;
  v99 = v135;
  if (v97 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v95 + 96))(v94, v96);
    v100 = v123;
    v101 = v122;
    v102 = v94;
    v103 = v124;
    (*(v123 + 32))(v122, v102, v124);
    v104 = Song.id.getter();
    v106 = v105;
    (*(v100 + 8))(v101, v103);
  }

  else
  {
    (*(v95 + 8))(v94, v96);
    v104 = 0;
    v106 = 0;
  }

  v107 = v157;
  v108 = v137;
  v109 = v141;
  swift_beginAccess();
  (*(v170 + 8))(&v109[v8], v171);
  v180 = v104;
  v181 = v106;
  Published.init(initialValue:)();
  swift_endAccess();
  v110 = v172;
  sub_1000089F8(v107, v172, &qword_1011A4740, &qword_100EC31F0);
  v111 = v154;
  swift_beginAccess();
  (*(v175 + 8))(v8 + v111, v176);
  sub_1000089F8(v110, v173, &qword_1011A4740, &qword_100EC31F0);
  Published.init(initialValue:)();
  sub_1000095E8(v110, &qword_1011A4740, &qword_100EC31F0);
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v180) = v136 & 1;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  if (v98)
  {
    v112 = swift_allocObject();
    v113 = v139;
    *(v112 + 16) = v98;
    *(v112 + 24) = v113;
    v114 = sub_10026FF70;
  }

  else
  {
    v114 = 0;
    v112 = 0;
    v113 = v139;
  }

  v115 = v147;
  v116 = v169;
  v182 = v114;
  v183 = v112;
  sub_100030444(v98, v113);

  static Published.subscript.setter();
  Playlist.Entry.contributor.getter();
  v117 = v145;
  v118 = *(v145 + 6);
  if (v118(v99, 1, v115) == 1)
  {
    Playlist.contributor(for:)();
    if (v118(v99, 1, v115) != 1)
    {
      sub_1000095E8(v99, &qword_101186E00, &qword_100EC31E0);
    }
  }

  else
  {
    v117[4](v108, v99, v115);
    (v121[0])(v108, 0, 1, v115);
  }

  v119 = v178;
  sub_1000089F8(v108, v178, &qword_101186E00, &qword_100EC31E0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v119, v177, &qword_101186E00, &qword_100EC31E0);

  static Published.subscript.setter();
  sub_1000095E8(v157, &qword_1011A4740, &qword_100EC31F0);
  v120 = type metadata accessor for Playlist();
  (*(*(v120 - 8) + 8))(v116, v120);
  (*(*(v179 - 8) + 8))(v75);
  sub_1000095E8(v119, &qword_101186E00, &qword_100EC31E0);
  sub_1000095E8(v108, &qword_101186E00, &qword_100EC31E0);
  return v8;
}

uint64_t sub_10026FEE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10026FF30(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

void *sub_10026FF78()
{
  v1 = sub_10010FC20(&unk_101183B10, &qword_100EBF5A8);
  v50 = *(v1 - 8);
  v51 = v1;
  __chkstk_darwin();
  v49 = v37 - v2;
  v56 = type metadata accessor for NSNotificationCenter.Publisher();
  v52 = *(v56 - 8);
  __chkstk_darwin();
  v48 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v55 = v37 - v4;
  v45 = sub_10010FC20(&unk_101189DD0, &unk_100EBF5C0);
  v43 = *(v45 - 8);
  __chkstk_darwin();
  v42 = v37 - v5;
  v6 = sub_10010FC20(&qword_101183B30, &unk_100EC5820);
  v46 = *(v6 - 1);
  v47 = v6;
  __chkstk_darwin();
  v44 = v37 - v7;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v9 = v37 - v8;
  v54 = sub_10010FC20(&unk_101183D80, &qword_100EC5830);
  v39 = *(v54 - 1);
  __chkstk_darwin();
  v11 = v37 - v10;
  v41 = sub_10010FC20(&qword_101189DE0, &qword_100EBD2B0);
  v40 = *(v41 - 8);
  __chkstk_darwin();
  v13 = v37 - v12;
  v59 = v0;
  v0[3] = &_swiftEmptySetSingleton;
  v0[2] = 0;
  v0[4] = 0;
  type metadata accessor for WaveformState.SamplingMode.ValueProvider();
  swift_allocObject();
  v0[5] = WaveformState.SamplingMode.ValueProvider.init(value:)();
  v0[6] = sub_10010BB3C(_swiftEmptyArrayStorage);
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v14 = qword_101218AC8;
  (*(*qword_101218AC8 + 456))();
  v15 = sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v16 = static OS_dispatch_queue.main.getter();
  v60 = v16;
  v57 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v17 = *(v57 - 8);
  v53 = *(v17 + 56);
  v18 = v17 + 56;
  v53(v9, 1, 1, v57);
  v38 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_100020674(&unk_1011A4650, &unk_101183D80, &qword_100EC5830, &protocol conformance descriptor for Published<A>.Publisher);
  v58 = sub_10001C070(&qword_101184920, &qword_101182960, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v19 = v54;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v9, &qword_101182140, &unk_100EBD2A0);

  (*(v39 + 8))(v11, v19);
  swift_allocObject();
  swift_weakInit();
  v54 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100020674(&unk_10118ACC0, &qword_101189DE0, &qword_100EBD2B0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v20 = v41;
  Publisher<>.sink(receiveValue:)();

  (*(v40 + 8))(v13, v20);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v22 = v42;
  (*(*v14 + 504))(v21);
  v37[1] = v15;
  v23 = static OS_dispatch_queue.main.getter();
  v60 = v23;
  v37[0] = v18;
  v24 = v53;
  v53(v9, 1, 1, v57);
  sub_100020674(&unk_101189E00, &unk_101189DD0, &unk_100EBF5C0, v38);
  v26 = v44;
  v25 = v45;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v9, &qword_101182140, &unk_100EBD2A0);

  (*(v43 + 8))(v22, v25);
  swift_allocObject();
  swift_weakInit();
  sub_100020674(&qword_101183B70, &qword_101183B30, &unk_100EC5820, v54);
  v27 = v47;
  Publisher<>.sink(receiveValue:)();

  (*(v46 + 8))(v26, v27);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v47 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();
  v28 = v48;
  NSNotificationCenter.publisher(for:object:)();
  v29 = static OS_dispatch_queue.main.getter();
  v60 = v29;
  v24(v9, 1, 1, v57);
  v46 = sub_100274D98(&qword_101183B80, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  v30 = v49;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v9, &qword_101182140, &unk_100EBD2A0);

  swift_allocObject();
  swift_weakInit();
  v54 = sub_100020674(&qword_101183B88, &unk_101183B10, &qword_100EBF5A8, v54);
  v31 = v51;
  Publisher<>.sink(receiveValue:)();

  v50 = *(v50 + 8);
  (v50)(v30, v31);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v32 = static OS_dispatch_queue.main.getter();
  v60 = v32;
  v53(v9, 1, 1, v57);
  v33 = v56;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v9, &qword_101182140, &unk_100EBD2A0);

  swift_allocObject();
  v34 = v59;
  swift_weakInit();

  Publisher<>.sink(receiveValue:)();

  (v50)(v30, v31);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v35 = *(v52 + 8);
  v35(v28, v33);
  v35(v55, v33);
  return v34;
}

void sub_100270B48(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 32);
    *(Strong + 32) = v2;
    v5 = v2;
    sub_100272438(v4);
  }
}

double sub_100270BC0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100270C18();
  }

  return result;
}

double sub_100270C18()
{
  v1 = v0;
  v2 = *(v0 + 32);
  if (v2 && (v3 = [v2 tracklist], v4 = objc_msgSend(v3, "playingItem"), v3, v4))
  {
    [v4 duration];
    v5 = v21;
  }

  else
  {
    v5 = 0;
  }

  if (qword_10117F5F8 != -1)
  {
LABEL_24:
    swift_once();
  }

  v6 = (*(*qword_101218AC8 + 360))();
  v7 = [v6 route];

  if (v7)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v8 = MPAVEndpointRoute.canReceiveAudioSamples.getter();
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 1;
  }

  swift_beginAccess();
  v9 = *(v1 + 48);
  v12 = *(v9 + 64);
  v11 = v9 + 64;
  v10 = v12;
  v13 = 1 << *(*(v1 + 48) + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  if (v15)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v18 >= v16)
    {
      break;
    }

    v15 = *(v11 + 8 * v18);
    ++v17;
    if (v15)
    {
      v17 = v18;
      do
      {
LABEL_20:
        v15 &= v15 - 1;

        sub_100272624(v19, v5, v8 & 1);
      }

      while (v15);
      continue;
    }
  }

  return result;
}

void sub_100270E5C()
{
  v1 = v0;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v3 = &v52 - v2;
  if (qword_10117F488 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v4 = type metadata accessor for Logger();
    v5 = sub_1000060E4(v4, qword_101187F18);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Updating Waveform subscription…", v8, 2u);
    }

    v9 = v1[4];
    if (v9)
    {
      if ([v9 state] == 1)
      {
        break;
      }
    }

    swift_beginAccess();
    if (!*(v1[6] + 16))
    {
      break;
    }

    v10 = [objc_opt_self() sharedApplication];
    v11 = [v10 connectedScenes];

    v12 = sub_100009F78(0, &qword_1011839F0, UIScene_ptr);
    sub_10001C070(&qword_101183DE0, &qword_1011839F0, UIScene_ptr, &protocol conformance descriptor for NSObject);
    v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v55 = v5;
    v56 = v1;
    v52 = v3;
    v54 = v13;
    v57 = v12;
    if ((v13 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v13 = v63;
      v14 = v64;
      v15 = v65;
      v3 = v66;
      v1 = v67;
    }

    else
    {
      v16 = -1 << *(v13 + 32);
      v14 = v13 + 56;
      v15 = ~v16;
      v17 = -v16;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      else
      {
        v18 = -1;
      }

      v1 = (v18 & *(v13 + 56));

      v3 = 0;
    }

    v53 = v15;
    v19 = (v15 + 64) >> 6;
    v60 = UIWindowSceneSessionRoleApplication;
    while (v13 < 0)
    {
      v25 = __CocoaSet.Iterator.next()();
      if (!v25 || (v61 = v25, swift_dynamicCast(), v24 = v62, v22 = v3, v23 = v1, !v62))
      {
LABEL_32:
        sub_10005C9F8(v13);

        v1 = v56;
        goto LABEL_33;
      }

LABEL_26:
      v58 = v3;
      v59 = v1;
      v26 = [v24 session];
      v27 = [v26 role];

      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;
      if (v28 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v30 == v31)
      {
      }

      else
      {
        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v33 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      if ([v24 activationState] != 2)
      {
        sub_10005C9F8(v13);

        v40 = v56;
        if (v56[2])
        {
          v41 = Logger.logObject.getter();
          v42 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            *v43 = 0;
            v44 = "Already observing waveform";
            goto LABEL_49;
          }
        }

        else
        {
          if (qword_10117F480 != -1)
          {
            swift_once();
          }

          v45 = qword_101187F10;
          v46 = v52;
          if (qword_10117F5F8 != -1)
          {
            swift_once();
          }

          v47 = qword_101218AC8;
          v48 = type metadata accessor for TaskPriority();
          (*(*(v48 - 8) + 56))(v46, 1, 1, v48);
          v49 = swift_allocObject();
          swift_weakInit();
          v50 = swift_allocObject();
          v50[2] = 0;
          v50[3] = 0;
          v50[4] = v47;
          v50[5] = v45;
          v50[6] = v49;

          v51 = v45;
          v40[2] = sub_1001F4CB8(0, 0, v46, &unk_100EC37A0, v50);

          v41 = Logger.logObject.getter();
          v42 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            *v43 = 0;
            v44 = "Waveform task created";
LABEL_49:
            _os_log_impl(&_mh_execute_header, v41, v42, v44, v43, 2u);
          }
        }

        return;
      }

LABEL_16:

      v3 = v22;
      v1 = v23;
    }

    v20 = v3;
    v21 = v1;
    v22 = v3;
    if (v1)
    {
LABEL_22:
      v23 = (v21 - 1) & v21;
      v24 = *(*(v13 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
      if (!v24)
      {
        goto LABEL_32;
      }

      goto LABEL_26;
    }

    while (1)
    {
      v22 = (v20 + 1);
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v19)
      {
        goto LABEL_32;
      }

      v21 = *(v14 + 8 * v22);
      ++v20;
      if (v21)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_52:
    swift_once();
  }

LABEL_33:
  if (v1[2])
  {

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Shouldn't observe waveform", v36, 2u);
    }

    Task.cancel()();
    v1[2] = 0;

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Waveform task destroyed", v39, 2u);
    }
  }
}

double sub_100271618(uint64_t a1, uint64_t a2, const char *a3)
{
  if (qword_10117F488 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000060E4(v4, qword_101187F18);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, a3, v7, 2u);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100270E5C();
  }

  return result;
}

uint64_t sub_100271734()
{
  if (*(v0 + 16))
  {

    Task.cancel()();
  }

  *(v0 + 16) = 0;

  return v0;
}

uint64_t sub_1002717C8()
{
  sub_100271734();

  return swift_deallocClassInstance();
}

id sub_1002717FC()
{
  result = sub_10027181C();
  qword_101187F10 = result;
  return result;
}

id sub_10027181C()
{
  v0 = [objc_opt_self() currentSettings];
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100EBEE70;
  sub_100009F78(0, &qword_101189A20, NSNumber_ptr);
  *(v1 + 32) = NSNumber.init(integerLiteral:)(20);
  *(v1 + 40) = NSNumber.init(integerLiteral:)(170);
  *(v1 + 48) = NSNumber.init(integerLiteral:)(527);
  *(v1 + 56) = NSNumber.init(integerLiteral:)(1500);
  *(v1 + 64) = NSNumber.init(integerLiteral:)(4500);
  *(v1 + 72) = NSNumber.init(integerLiteral:)(10000);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v0 setStops:isa];

  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100EC3620;
  *(v3 + 32) = NSNumber.init(integerLiteral:)(0);
  *(v3 + 40) = NSNumber.init(floatLiteral:)(3.840823);
  *(v3 + 48) = NSNumber.init(floatLiteral:)(-8.182433);
  *(v3 + 56) = NSNumber.init(floatLiteral:)(7.772333);
  *(v3 + 64) = NSNumber.init(floatLiteral:)(-2.430722);
  v4 = Array._bridgeToObjectiveC()().super.isa;

  [v0 setAdjustmentCoefficients:v4];

  return v0;
}

uint64_t sub_1002719D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = sub_10010FC20(&qword_1011880F0, &unk_100ED43E0);
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  v8 = sub_10010FC20(&qword_1011880F8, &qword_100EC37A8);
  v6[16] = v8;
  v6[17] = *(v8 - 8);
  v6[18] = swift_task_alloc();

  return _swift_task_switch(sub_100271B0C, 0, 0);
}

uint64_t sub_100271B0C()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = (*(**(v0 + 80) + 296))();
  (*(*v4 + 104))(v4);

  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  *v5 = v0;
  v5[1] = sub_100271C70;
  v6 = *(v0 + 128);

  return AsyncStream.Iterator.next(isolation:)(v0 + 64, 0, 0, v6);
}

uint64_t sub_100271C70()
{

  return _swift_task_switch(sub_100271D6C, 0, 0);
}

uint64_t sub_100271D6C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[8];
  if (v4)
  {
    v5 = *(v4 + 2);
    if (v5 >> 31)
    {
      __break(1u);
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1004994DC(0, v5, 0, v4);
      }

      v3[20] = v4;
      v6 = v3[11];
      v7 = objc_allocWithZone(MRUWaveformData);
      LODWORD(v8) = 1195081728;
      v9 = [v7 initWithFFTSamples:v4 + 32 count:v5 sampleRate:v6 settings:v8];
      v3[21] = v9;
      v10 = [v9 amplitudes];
      sub_100009F78(0, &qword_101189A20, NSNumber_ptr);
      v3[22] = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      swift_weakLoadStrong();
      swift_weakInit();

      type metadata accessor for MainActor();
      v3[23] = static MainActor.shared.getter();
      v11 = dispatch thunk of Actor.unownedExecutor.getter();
      v13 = v12;
      a1 = sub_100271F44;
      a2 = v11;
      a3 = v13;
    }

    return _swift_task_switch(a1, a2, a3);
  }

  else
  {
    (*(v3[17] + 8))(v3[18], v3[16], a3);

    v14 = v3[1];

    return v14();
  }
}

uint64_t sub_100271F44()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v2 = *(v0 + 176);
  if (!Strong)
  {

    swift_weakDestroy();
    v10 = sub_1002751DC;
    goto LABEL_23;
  }

  v6 = v2 & 0xC000000000000001;
  if ((v2 & 0xC000000000000001) != 0)
  {
    v7 = sub_1007E9138(0, *(v0 + 176));
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_28;
    }

    v7 = *(*(v0 + 176) + 32);
  }

  v8 = v7;
  [v7 doubleValue];

  if (v6)
  {
    v9 = sub_1007E9138(1uLL, *(v0 + 176));
    goto LABEL_10;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v9 = *(*(v0 + 176) + 40);
LABEL_10:
  v11 = v9;
  [v9 doubleValue];

  if (v6)
  {
    v12 = sub_1007E9138(2uLL, *(v0 + 176));
    goto LABEL_14;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v12 = *(*(v0 + 176) + 48);
LABEL_14:
  v13 = v12;
  [v12 doubleValue];

  if (v6)
  {
    v14 = sub_1007E9138(3uLL, *(v0 + 176));
    goto LABEL_18;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v14 = *(*(v0 + 176) + 56);
LABEL_18:
  v15 = v14;
  [v14 doubleValue];

  if (!v6)
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 5uLL)
    {
      v16 = *(*(v0 + 176) + 64);
      goto LABEL_22;
    }

LABEL_31:
    __break(1u);
    return _swift_task_switch(v3, v4, v5);
  }

  v16 = sub_1007E9138(4uLL, *(v0 + 176));
LABEL_22:

  [v16 doubleValue];

  dispatch thunk of WaveformState.SamplingMode.ValueProvider.update(to:)();

  swift_weakDestroy();
  v10 = sub_1002721E8;
LABEL_23:
  v3 = v10;
  v4 = 0;
  v5 = 0;

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1002721E8()
{
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_100271C70;
  v2 = *(v0 + 128);

  return AsyncStream.Iterator.next(isolation:)(v0 + 64, 0, 0, v2);
}

uint64_t MPAVEndpointRoute.canReceiveAudioSamples.getter()
{
  result = [v0 endpointObject];
  if (result)
  {
    v2 = result;
    v3 = [result outputDevices];

    if (!v3)
    {
      return 1;
    }

    sub_100009F78(0, &qword_101187F30, MRAVOutputDevice_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = sub_1007E9550(v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (![v7 isLocalDevice] || objc_msgSend(v8, "deviceType") == 3 || objc_msgSend(v8, "deviceSubtype") == 14)
        {

          v10 = 0;
          goto LABEL_22;
        }

        ++v6;
        if (v9 == i)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

LABEL_21:
    v10 = 1;
LABEL_22:

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_100272438(void *a1)
{
  if (a1)
  {
    v2 = [a1 tracklist];
    v3 = [v2 playingItem];

    if (v3)
    {
      v5 = [v3 contentItemIdentifier];

      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v3 = v7;

      v8 = *(v1 + 32);
      if (!v8)
      {
LABEL_10:
        v12 = 0;
        v10 = 0;
        if (v3)
        {
          goto LABEL_11;
        }

LABEL_18:
        if (!v10)
        {
          return result;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v6 = 0;
      v8 = *(v1 + 32);
      if (!v8)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v6 = 0;
    v3 = 0;
    v8 = *(v1 + 32);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  v9 = [v8 tracklist];
  v10 = [v9 playingItem];

  if (v10)
  {
    v11 = [v10 contentItemIdentifier];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v13;

    if (v3)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  v12 = 0;
  if (!v3)
  {
    goto LABEL_18;
  }

LABEL_11:
  if (!v10)
  {
LABEL_19:

    goto LABEL_20;
  }

  if (v6 == v12 && v3 == v10)
  {

    return result;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
    return result;
  }

LABEL_20:

  return sub_100270C18();
}

uint64_t sub_100272624(uint64_t a1, char a2, int a3)
{
  v4 = v3;
  v30 = a3;
  sub_10010FC20(&qword_101188100, &qword_100EC37B0);
  __chkstk_darwin();
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v10 = &v29[-v9];
  __chkstk_darwin();
  v12 = &v29[-v11];
  swift_getKeyPath();
  v13 = OBJC_IVAR____TtCC5Music14WaveformPlayer13ListenerToken___observationRegistrar;
  v34 = a1;
  v31 = sub_100274D98(&qword_101188108, type metadata accessor for WaveformPlayer.ListenerToken, &unk_100EC377C);
  v32 = v13;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = *(a1 + 48);
  v15 = *(v4 + 32);
  v16 = v15;

  v17 = v14(v15);
  LOBYTE(v14) = v18;

  if (v14)
  {
LABEL_2:
    v19 = &enum case for WaveformState.hidden(_:);
    goto LABEL_11;
  }

  if (a2)
  {
    v19 = &enum case for WaveformState.buffering(_:);
    goto LABEL_11;
  }

  if (v17 != 2)
  {
    if (v17 == 4)
    {
      v19 = &enum case for WaveformState.paused(_:);
      goto LABEL_11;
    }

    goto LABEL_2;
  }

  if (v30)
  {
    *v10 = *(v4 + 40);
    v20 = enum case for WaveformState.SamplingMode.custom(_:);
    v21 = type metadata accessor for WaveformState.SamplingMode();
    (*(*(v21 - 8) + 104))(v10, v20, v21);
    v22 = enum case for WaveformState.playing(_:);
    v23 = type metadata accessor for WaveformState();
    (*(*(v23 - 8) + 104))(v10, v22, v23);

    goto LABEL_12;
  }

  v24 = enum case for WaveformState.SamplingMode.unavailable(_:);
  v25 = type metadata accessor for WaveformState.SamplingMode();
  (*(*(v25 - 8) + 104))(v10, v24, v25);
  v19 = &enum case for WaveformState.playing(_:);
LABEL_11:
  v26 = *v19;
  v23 = type metadata accessor for WaveformState();
  (*(*(v23 - 8) + 104))(v10, v26, v23);
LABEL_12:
  type metadata accessor for WaveformState();
  (*(*(v23 - 8) + 56))(v10, 0, 1, v23);
  sub_100274EF0(v10, v12);
  swift_getKeyPath();
  v34 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v27 = OBJC_IVAR____TtCC5Music14WaveformPlayer13ListenerToken__displayState;
  swift_beginAccess();
  sub_100274F60(a1 + v27, v8);
  LOBYTE(v27) = sub_100272C40(v8);
  sub_1000095E8(v8, &qword_101188100, &qword_100EC37B0);
  if (v27)
  {
    v8 = v12;
  }

  else
  {
    sub_100274F60(v12, v8);
    swift_getKeyPath();
    __chkstk_darwin();
    *&v29[-16] = a1;
    *&v29[-8] = v8;
    v33 = a1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_1000095E8(v12, &qword_101188100, &qword_100EC37B0);
  }

  return sub_1000095E8(v8, &qword_101188100, &qword_100EC37B0);
}

uint64_t sub_100272AC8()
{
  swift_getKeyPath();
  sub_100274D98(&qword_101188108, type metadata accessor for WaveformPlayer.ListenerToken, &unk_100EC377C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_100272B78@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_100274D98(&qword_101188108, type metadata accessor for WaveformPlayer.ListenerToken, &unk_100EC377C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtCC5Music14WaveformPlayer13ListenerToken__displayState;
  swift_beginAccess();
  return sub_100274F60(v5 + v3, a1);
}

uint64_t sub_100272C40(uint64_t a1)
{
  v2 = v1;
  v30 = a1;
  v31 = sub_10010FC20(&qword_101188110, &unk_100EC3830);
  __chkstk_darwin();
  v4 = &v30 - v3;
  sub_10010FC20(&qword_101188100, &qword_100EC37B0);
  __chkstk_darwin();
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v30 - v7;
  v9 = type metadata accessor for WaveformState();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v30 - v13;
  __chkstk_darwin();
  v16 = &v30 - v15;
  sub_100274F60(v2, v8);
  v17 = *(v10 + 48);
  if (v17(v8, 1, v9) == 1)
  {
    (*(v10 + 104))(v16, enum case for WaveformState.hidden(_:), v9);
    if (v17(v8, 1, v9) != 1)
    {
      sub_1000095E8(v8, &qword_101188100, &qword_100EC37B0);
    }
  }

  else
  {
    (*(v10 + 32))(v16, v8, v9);
  }

  sub_100274F60(v30, v6);
  if (v17(v6, 1, v9) == 1)
  {
    (*(v10 + 104))(v14, enum case for WaveformState.hidden(_:), v9);
    v18 = v17(v6, 1, v9);
    v19 = v12;
    if (v18 != 1)
    {
      sub_1000095E8(v6, &qword_101188100, &qword_100EC37B0);
    }
  }

  else
  {
    (*(v10 + 32))(v14, v6, v9);
    v19 = v12;
  }

  v20 = *(v31 + 48);
  v21 = *(v10 + 32);
  v21(v4, v16, v9);
  v21(&v4[v20], v14, v9);
  v22 = *(v10 + 88);
  v23 = v22(v4, v9);
  v24 = v23;
  if (v23 == enum case for WaveformState.playing(_:))
  {
    (*(v10 + 16))(v19, v4, v9);
    v25 = *(v10 + 96);
    v25(v19, v9);
    if (v22(&v4[v20], v9) == v24)
    {
      v25(&v4[v20], v9);
      v26 = type metadata accessor for WaveformState.SamplingMode();
      v27 = *(*(v26 - 8) + 8);
      v27(&v4[v20], v26);
      v27(v19, v26);
LABEL_16:
      (*(v10 + 8))(v4, v9);
      return 1;
    }

    v29 = type metadata accessor for WaveformState.SamplingMode();
    (*(*(v29 - 8) + 8))(v19, v29);
  }

  else if ((v23 == enum case for WaveformState.hidden(_:) || v23 == enum case for WaveformState.paused(_:) || v23 == enum case for WaveformState.buffering(_:)) && v22(&v4[v20], v9) == v23)
  {
    goto LABEL_16;
  }

  sub_1000095E8(v4, &qword_101188110, &unk_100EC3830);
  return 0;
}

uint64_t sub_10027317C(uint64_t a1)
{
  v3 = *(v1 + 32);
  if (v3 && (v4 = [v3 tracklist], v5 = objc_msgSend(v4, "playingItem"), v4, v5))
  {
    [v5 duration];
    v6 = v11;
  }

  else
  {
    v6 = 0;
  }

  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v7 = (*(*qword_101218AC8 + 360))();
  v8 = [v7 route];

  if (v8)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v9 = MPAVEndpointRoute.canReceiveAudioSamples.getter();
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 1;
  }

  return sub_100272624(a1, v6, v9 & 1);
}

void sub_1002732FC()
{
  swift_beginAccess();
  v41 = v0;
  v1 = *(v0 + 48);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(*(v0 + 48) + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v37 = v9;
  for (i = v8; v7; v8 = i)
  {
LABEL_11:
    while (1)
    {
      v13 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v14 = v9;
      v15 = (*(v9 + 48) + ((v10 << 11) | (32 * v13)));
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[2];
      v19 = v15[3];
      swift_beginAccess();
      v20 = *(*(v41 + 48) + 16);

      if (!v20)
      {
        break;
      }

      sub_1006BE598(v16, v17, v18, v19);
      if ((v21 & 1) == 0)
      {
        break;
      }

      swift_endAccess();

      v9 = v14;
      v8 = i;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v39 = v18;
    v40 = v16;
    swift_endAccess();
    if (qword_10117F488 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000060E4(v22, qword_101187F18);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    v26 = v18;
    v25 = v40;
    if (os_log_type_enabled(v23, v24))
    {
      v27 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v42 = v36;
      *v27 = 136446210;

      v28 = String.init<A>(describing:)();
      v30 = sub_1000105AC(v28, v29, &v42);
      v25 = v40;

      *(v27 + 4) = v30;
      v26 = v39;
      _os_log_impl(&_mh_execute_header, v23, v24, "Removing invalid token with id=%{public}s", v27, 0xCu);
      sub_10000959C(v36);
    }

    swift_beginAccess();
    v31 = sub_1006BE598(v25, v17, v26, v19);
    v33 = v32;

    if (v33)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *(v41 + 48);
      v42 = v35;
      *(v41 + 48) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1006C8430();
        v35 = v42;
      }

      sub_1004089D0(v31, v35, v11);
      *(v41 + 48) = v35;
    }

    swift_endAccess();
    v9 = v37;
  }

LABEL_7:
  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      sub_100270E5C();
      return;
    }

    v7 = *(v3 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

double sub_1002736A8@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100274D98(&qword_101188108, type metadata accessor for WaveformPlayer.ListenerToken, &unk_100EC377C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + 48);
  v4 = *(v3 + 56);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_100275188;
  a2[1] = v6;

  return result;
}

uint64_t sub_100273780()
{
  swift_getKeyPath();
  sub_100274D98(&qword_101188108, type metadata accessor for WaveformPlayer.ListenerToken, &unk_100EC377C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 64);

  return v1;
}

double sub_100273830@<D0>(uint64_t *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100274D98(&qword_101188108, type metadata accessor for WaveformPlayer.ListenerToken, &unk_100EC377C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + 64);
  v4 = *(v3 + 72);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1002750D4;
  a2[1] = v6;

  return result;
}

double sub_100273908(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  swift_getKeyPath();
  sub_100274D98(&qword_101188108, type metadata accessor for WaveformPlayer.ListenerToken, &unk_100EC377C);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

void sub_100273A10(uint64_t a1)
{
  v2 = v1;
  sub_10010FC20(&qword_101188100, &qword_100EC37B0);
  __chkstk_darwin();
  v5 = &v27 - v4;
  swift_getKeyPath();
  v32 = v1;
  sub_100274D98(&qword_101188108, type metadata accessor for WaveformPlayer.ListenerToken, &unk_100EC377C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtCC5Music14WaveformPlayer13ListenerToken__displayState;
  swift_beginAccess();
  sub_100274F60(v1 + v6, v5);
  v7 = sub_100272C40(a1);
  sub_1000095E8(v5, &qword_101188100, &qword_100EC37B0);
  if ((v7 & 1) == 0)
  {
    v8 = sub_100273DE8();
    v10 = v9;
    swift_getKeyPath();
    v31 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_100274F60(v2 + v6, v5);
    v11 = sub_100273DE8();
    v13 = v12;
    sub_1000095E8(v5, &qword_101188100, &qword_100EC37B0);
    if (qword_10117F488 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000060E4(v14, qword_101187F18);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v28 = v8;
      v18 = v17;
      v29 = swift_slowAlloc();
      v31 = v29;
      *v18 = 136315650;
      swift_getKeyPath();
      v27 = v11;
      v30 = v2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v19 = *(v2 + 64);

      v21 = v19(v20);
      v23 = v22;

      v24 = sub_1000105AC(v21, v23, &v31);

      *(v18 + 4) = v24;
      *(v18 + 12) = 2080;
      v25 = sub_1000105AC(v28, v10, &v31);

      *(v18 + 14) = v25;
      *(v18 + 22) = 2080;
      v26 = sub_1000105AC(v27, v13, &v31);

      *(v18 + 24) = v26;
      _os_log_impl(&_mh_execute_header, v15, v16, "%s changing waveform state %s -> %s", v18, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

uint64_t sub_100273DE8()
{
  v1 = v0;
  v2 = 0x6E6564646968;
  sub_10010FC20(&qword_101188100, &qword_100EC37B0);
  __chkstk_darwin();
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v12 - v5;
  sub_100274F60(v1, &v12 - v5);
  v7 = type metadata accessor for WaveformState();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    sub_100274F60(v6, v4);
    v9 = (*(v8 + 88))(v4, v7);
    if (v9 == enum case for WaveformState.playing(_:))
    {
      (*(v8 + 96))(v4, v7);
      v10 = type metadata accessor for WaveformState.SamplingMode();
      (*(*(v10 - 8) + 8))(v4, v10);
      v2 = 0x676E6979616C70;
    }

    else if (v9 != enum case for WaveformState.hidden(_:))
    {
      if (v9 == enum case for WaveformState.paused(_:))
      {
        v2 = 0x646573756170;
      }

      else if (v9 == enum case for WaveformState.buffering(_:))
      {
        v2 = 0x6E69726566667562;
      }

      else
      {
        (*(v8 + 8))(v4, v7);
        v2 = 0x6E776F6E6B6E75;
      }
    }
  }

  sub_1000095E8(v6, &qword_101188100, &qword_100EC37B0);
  return v2;
}

uint64_t sub_100274064@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100274D98(&qword_101188108, type metadata accessor for WaveformPlayer.ListenerToken, &unk_100EC377C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtCC5Music14WaveformPlayer13ListenerToken__displayState;
  swift_beginAccess();
  return sub_100274F60(v3 + v4, a2);
}

uint64_t sub_10027412C(uint64_t a1, uint64_t *a2)
{
  sub_10010FC20(&qword_101188100, &qword_100EC37B0);
  __chkstk_darwin();
  v5 = &v8[-v4];
  sub_100274F60(a1, &v8[-v4]);
  v6 = *a2;
  swift_getKeyPath();
  v9 = v6;
  v10 = v5;
  v11 = v6;
  sub_100274D98(&qword_101188108, type metadata accessor for WaveformPlayer.ListenerToken, &unk_100EC377C);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1000095E8(v5, &qword_101188100, &qword_100EC37B0);
}

uint64_t sub_100274274(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_101188100, &qword_100EC37B0);
  __chkstk_darwin();
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v10[-v6];
  sub_100274F60(a2, &v10[-v6]);
  v8 = OBJC_IVAR____TtCC5Music14WaveformPlayer13ListenerToken__displayState;
  swift_beginAccess();
  sub_100274F60(a1 + v8, v5);
  swift_beginAccess();
  sub_100274FEC(v7, a1 + v8);
  swift_endAccess();
  sub_100273A10(v5);
  sub_1000095E8(v5, &qword_101188100, &qword_100EC37B0);
  return sub_1000095E8(v7, &qword_101188100, &qword_100EC37B0);
}

uint64_t sub_1002743BC()
{
  v1 = v0;
  sub_10010FC20(&qword_101188100, &qword_100EC37B0);
  __chkstk_darwin();
  v3 = &v21 - v2;
  v4 = type metadata accessor for WaveformState();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v21 - v8;
  swift_getKeyPath();
  v22 = v0;
  sub_100274D98(&qword_101188108, type metadata accessor for WaveformPlayer.ListenerToken, &unk_100EC377C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = OBJC_IVAR____TtCC5Music14WaveformPlayer13ListenerToken__displayState;
  swift_beginAccess();
  sub_100274F60(v1 + v10, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000095E8(v3, &qword_101188100, &qword_100EC37B0);
    return 0;
  }

  (*(v5 + 32))(v9, v3, v4);
  (*(v5 + 16))(v7, v9, v4);
  v12 = (*(v5 + 88))(v7, v4);
  if (v12 == enum case for WaveformState.playing(_:))
  {
    (*(v5 + 96))(v7, v4);
    v13 = *AccessibilityString.nowPlayingWafeformLabel.unsafeMutableAddressor();
    v14 = *(v5 + 8);

    v14(v9, v4);
    v15 = type metadata accessor for WaveformState.SamplingMode();
    (*(*(v15 - 8) + 8))(v7, v15);
    return v13;
  }

  else
  {
    if (v12 == enum case for WaveformState.hidden(_:))
    {
      (*(v5 + 8))(v9, v4);
      return 0;
    }

    if (v12 != enum case for WaveformState.paused(_:))
    {
      v18 = enum case for WaveformState.buffering(_:);
      v19 = *(v5 + 8);
      v20 = v12;
      v19(v9, v4);
      if (v20 != v18)
      {
        v19(v7, v4);
      }

      return 0;
    }

    v16 = *AccessibilityString.pausedWafeformLabel.unsafeMutableAddressor();
    v17 = *(v5 + 8);

    v17(v9, v4);
    return v16;
  }
}

Swift::Int sub_100274774()
{
  v1 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v1)
  {
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t sub_1002747E0(uint64_t a1)
{
  v2 = *(v1 + 24);
  result = String.hash(into:)();
  if (v2)
  {

    return String.hash(into:)();
  }

  return result;
}

Swift::Int sub_100274844(uint64_t a1)
{
  v2 = *(v1 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v2)
  {
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t sub_1002748C8()
{

  sub_1000095E8(v0 + OBJC_IVAR____TtCC5Music14WaveformPlayer13ListenerToken__displayState, &qword_101188100, &qword_100EC37B0);
  v1 = OBJC_IVAR____TtCC5Music14WaveformPlayer13ListenerToken___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1002749A8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return MPCPlayerResponse.playState(for:)();
  }

  return result;
}

uint64_t sub_100274A18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (result)
  {
    return a4(a2, a3);
  }

  return result;
}

uint64_t sub_100274A60()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101187F18);
  sub_1000060E4(v0, qword_101187F18);
  return static Logger.music(_:)(0xD000000000000011, 0x8000000100E42C40);
}

uint64_t type metadata accessor for WaveformPlayer.ListenerToken(uint64_t a1)
{
  result = qword_101188030;
  if (!qword_101188030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100274B3C(uint64_t a1)
{
  sub_100274C24(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100274C24(uint64_t a1)
{
  if (!qword_101188040)
  {
    type metadata accessor for WaveformState();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_101188040);
    }
  }
}

unint64_t sub_100274C90()
{
  result = qword_1011880E8;
  if (!qword_1011880E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011880E8);
  }

  return result;
}

uint64_t sub_100274CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v12 & 1) != 0))
  {
    if (a4)
    {
      if (a8 && (a3 == a7 && a4 == a8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!a8)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_100274D98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100274E28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_1002719D4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100274EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101188100, &qword_100EC37B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100274F60(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101188100, &qword_100EC37B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100274FEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101188100, &qword_100EC37B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_100275094()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 64) = v0[3];
  *(v1 + 72) = v2;
}

uint64_t sub_1002750D4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100275104(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

void sub_100275148()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 48) = v0[3];
  *(v1 + 56) = v2;
}

uint64_t sub_100275188@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t sub_1002751E0()
{
  type metadata accessor for ArtworkPrefetchingController.CacheReference();
  result = swift_allocObject();
  *(result + 16) = 0xD00000000000001ALL;
  *(result + 24) = 0x8000000100E42D30;
  *(result + 32) = 0;
  *(result + 40) = 1;
  qword_101188118 = result;
  return result;
}

uint64_t sub_100275240()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t sub_1002752B8()
{
  LOBYTE(v6) = 11;
  v0 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v0))
  {
    v1 = [objc_opt_self() currentDevice];
    v2 = [v1 userInterfaceIdiom];

    if (v2 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v6);

      v4 = v7;
      if (v7 != 255)
      {
        sub_10004ADFC(v6, v7);
        v3 = v4 ^ 1;
        return v3 & 1;
      }
    }

    else if (!v2)
    {
      goto LABEL_4;
    }

LABEL_8:
    v3 = 0;
    return v3 & 1;
  }

LABEL_4:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  v3 = v7;
  if (v7 == 255)
  {
    goto LABEL_8;
  }

  sub_10004ADFC(v6, v7);
  return v3 & 1;
}

uint64_t sub_10027541C(uint64_t a1, char *a2)
{
  v3 = v2;
  v77 = a1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v73 = &v71 - v5;
  v6 = type metadata accessor for EditorialVideoArtworkFlavor();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v71 - v10;
  v12 = sub_10010FC20(&qword_101197A00, &qword_100EC3960);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v71 - v14;
  v16 = OBJC_IVAR____TtC5Music10MotionData__keyframeData;
  v81 = 0;
  v82 = -1;
  sub_10010FC20(&unk_101188178, &qword_100EC3860);
  Published.init(initialValue:)();
  v72 = v13;
  v17 = v13;
  v18 = v12;
  v19 = v7;
  (*(v17 + 32))(v3 + v16, v15, v18);
  *(v3 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshot) = 0;
  *(v3 + OBJC_IVAR____TtC5Music10MotionData_shouldSnapshotKeyframe) = 0;
  v20 = v3 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshotSize;
  *v20 = 0;
  *(v20 + 8) = 0;
  *(v20 + 16) = 1;
  *(v3 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshotTask) = 0;
  v21 = OBJC_IVAR____TtC5Music10MotionData_videoArtwork;
  v22 = type metadata accessor for VideoArtwork();
  v74 = *(v22 - 8);
  v23 = *(v74 + 16);
  v71 = v21;
  v75 = v22;
  v23(v3 + v21, v77);
  v24 = OBJC_IVAR____TtC5Music10MotionData_videoFlavor;
  v25 = *(v19 + 16);
  v25(v3 + OBJC_IVAR____TtC5Music10MotionData_videoFlavor, a2, v6);
  v76 = a2;
  v25(v11, a2, v6);
  static EditorialVideoArtworkFlavor.motionDetailSquare.getter();
  sub_100278F14(&qword_1011882F0, &type metadata accessor for EditorialVideoArtworkFlavor, &protocol conformance descriptor for EditorialVideoArtworkFlavor);
  LOBYTE(v21) = dispatch thunk of static Equatable.== infix(_:_:)();
  v26 = *(v19 + 8);
  v26(v9, v6);
  if (v21)
  {
    v26(v11, v6);
    v27 = sub_100278D30();
    v29 = v28;
    bottom = UIEdgeInsetsZero.bottom;
    v31 = objc_opt_self();
    v32 = [v31 currentDevice];
    v33 = [v32 userInterfaceIdiom];

    sub_1001CF564(v33 == 1, 0, v78, v27, v29, bottom);
    if (v80 >= v79)
    {
      v34 = v79;
    }

    else
    {
      v34 = v80;
    }

    v35 = objc_opt_self();
    v36 = [v35 mainScreen];
    [v36 scale];
    v38 = v37;

    v39 = sub_100278D30();
    v41 = v40;
    v42 = [v31 currentDevice];
    v43 = [v42 userInterfaceIdiom];

    sub_1001CF564(v43 == 1, 0, &v81, v39, v41, bottom);
    if (v84 >= v83)
    {
      v44 = v83;
    }

    else
    {
      v44 = v84;
    }

    v45 = v34 * v38;
    goto LABEL_11;
  }

  static EditorialVideoArtworkFlavor.motionDetailTall.getter();
  v46 = dispatch thunk of static Equatable.== infix(_:_:)();
  v26(v9, v6);
  v26(v11, v6);
  if (v46)
  {
    v35 = objc_opt_self();
    v47 = [v35 mainScreen];
    [v47 bounds];
    v49 = v48;

    v50 = [v35 mainScreen];
    [v50 scale];
    v52 = v51;

    v45 = v49 * v52;
    v53 = [v35 mainScreen];
    [v53 bounds];
    v55 = v54;

    v44 = v55 * 4.0 / 3.0;
LABEL_11:
    v56 = [v35 mainScreen];
    [v56 scale];
    v58 = v57;

    v59 = (v3 + OBJC_IVAR____TtC5Music10MotionData_keyframeSize);
    *v59 = v45;
    v59[1] = v44 * v58;
    v60 = type metadata accessor for TaskPriority();
    v61 = v73;
    (*(*(v60 - 8) + 56))(v73, 1, 1, v60);
    type metadata accessor for MainActor();

    v62 = static MainActor.shared.getter();
    v63 = swift_allocObject();
    v63[2] = v62;
    v63[3] = &protocol witness table for MainActor;
    v63[4] = v3;
    sub_1001F4CB8(0, 0, v61, &unk_100EC3970, v63);

    v26(v76, v6);
    (*(v74 + 8))(v77, v75);
    return v3;
  }

  if (qword_10117F548 != -1)
  {
    swift_once();
  }

  v64 = type metadata accessor for Logger();
  sub_1000060E4(v64, static Logger.NowPlaying.motion);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&_mh_execute_header, v65, v66, "MotionData: MINP unsupported artwork flavor. Use detail square or tall.", v67, 2u);
  }

  v26(v76, v6);
  v68 = *(v74 + 8);
  v69 = v75;
  v68(v77, v75);
  v68(v3 + v71, v69);
  v26((v3 + v24), v6);
  (*(v72 + 8))(v3 + OBJC_IVAR____TtC5Music10MotionData__keyframeData, v18);

  type metadata accessor for MotionData(0);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_100275D08()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1001AB600;

  return sub_100275DB4();
}

uint64_t sub_100275DB4()
{
  v1[12] = v0;
  v2 = type metadata accessor for EditorialVideoArtworkFlavor();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  sub_10010FC20(&unk_101195200, &qword_100EBFA50);
  v1[16] = swift_task_alloc();
  sub_10010FC20(&unk_101184060, &qword_100EBDF50);
  v1[17] = swift_task_alloc();
  v3 = type metadata accessor for Artwork();
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[21] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[22] = v5;
  v1[23] = v4;

  return _swift_task_switch(sub_100275F74, v5, v4);
}

uint64_t sub_100275F74()
{
  v31 = v0;
  if (qword_10117F548 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[24] = sub_1000060E4(v1, static Logger.NowPlaying.motion);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v30 = v5;
    *v4 = 136446210;
    type metadata accessor for VideoArtwork();
    sub_100278F14(&qword_101188310, &type metadata accessor for VideoArtwork, &protocol conformance descriptor for VideoArtwork);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = sub_1000105AC(v6, v7, &v30);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching keyframe data for %{public}s", v4, 0xCu);
    sub_10000959C(v5);
  }

  v9 = v0[16];
  v10 = v0[17];
  v11 = v0[12];
  VideoArtwork.previewFrame.getter();
  v12 = *(v11 + OBJC_IVAR____TtC5Music10MotionData_keyframeSize);
  v13 = *(v11 + OBJC_IVAR____TtC5Music10MotionData_keyframeSize + 8);
  v14 = [objc_opt_self() currentTraitCollection];
  [v14 displayScale];
  v16 = v15;

  static Artwork.CropStyle.boundedBox.getter();
  v17 = type metadata accessor for Artwork.CropStyle();
  (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
  v18 = enum case for Artwork.ImageFormat.heic(_:);
  v19 = type metadata accessor for Artwork.ImageFormat();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v9, v18, v19);
  (*(v20 + 56))(v9, 0, 1, v19);
  if (qword_10117F490 != -1)
  {
    swift_once();
  }

  v21 = qword_101188118;
  v0[25] = qword_101188118;
  v22 = sub_100278F14(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference, &unk_100EC2A40);

  v23 = swift_task_alloc();
  v0[26] = v23;
  *v23 = v0;
  v23[1] = sub_100276374;
  v25 = v0[16];
  v26 = v0[17];
  v27.n128_u64[0] = v12;
  v28.n128_u64[0] = v13;

  v24.n128_f64[0] = 1.0 / v16;
  return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v26, v25, v21, v22, v27, v28, v24);
}

uint64_t sub_100276374(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *(*v2 + 152);
  v7 = *(*v2 + 144);
  v8 = *(*v2 + 136);
  v9 = *(*v2 + 128);
  *(v4 + 216) = a1;
  *(v4 + 224) = v1;

  sub_1000095E8(v9, &unk_101195200, &qword_100EBFA50);
  sub_1000095E8(v8, &unk_101184060, &qword_100EBDF50);
  (*(v6 + 8))(v5, v7);
  v10 = *(v3 + 184);
  v11 = *(v3 + 176);
  if (v1)
  {
    v12 = sub_1002767C4;
  }

  else
  {
    v12 = sub_100276598;
  }

  return _swift_task_switch(v12, v11, v10);
}

uint64_t sub_100276598()
{
  v1 = v0 + 10;

  static EditorialVideoArtworkFlavor.motionDetailSquare.getter();
  sub_100278F14(&unk_101189E50, &type metadata accessor for EditorialVideoArtworkFlavor, &protocol conformance descriptor for EditorialVideoArtworkFlavor);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  if (v0[2] == v0[4] && v0[3] == v0[5])
  {
    (*(v3 + 8))(v0[15], v0[13]);

    v5 = 0;
    v6 = 11;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    (*(v3 + 8))(v2, v4);

    v8 = (v7 & 1) == 0;
    if (v7)
    {
      v6 = 11;
    }

    else
    {
      v1 = v0 + 8;
      v6 = 9;
    }

    v5 = v8;
  }

  v9 = v0[27];
  swift_getKeyPath();
  swift_getKeyPath();
  *v1 = v9;
  LOBYTE(v0[v6]) = v5;

  v10 = v9;
  static Published.subscript.setter();
  v11 = v0[27];
  sub_100276998();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002767C4()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "MotionData: MINP keyframe image download failed with error: %{public}@.", v3, 0xCu);
    sub_1000095E8(v4, &unk_101183D70, &unk_100EC6540);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 48) = 0;
  *(v0 + 56) = -1;

  static Published.subscript.setter();

  v6 = *(v0 + 8);

  return v6();
}

void sub_100276998()
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v2 = &v36 - v1;
  v3 = *(type metadata accessor for EditorialVideoArtworkFlavor() - 8);
  __chkstk_darwin();
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v36 - v6;
  __chkstk_darwin();
  v10 = &v36 - v9;
  if (*(v0 + OBJC_IVAR____TtC5Music10MotionData_shouldSnapshotKeyframe) != 1 || (v11 = (v0 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshotSize), (*(v0 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshotSize + 16) & 1) != 0) || (v13 = *v11, v12 = v11[1], v37 = v8, swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(&v40), , , v14 = v41, v41 == 255))
  {
    v25 = OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshotTask;
    if (*(v0 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshotTask))
    {

      sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
      Task.cancel()();
    }

    *(v0 + v25) = 0;
    goto LABEL_19;
  }

  v15 = v40;
  v16 = *(v0 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshot);
  if (!v16 || (([v16 frame], v18 == v13) ? (v19 = v17 == v12) : (v19 = 0), !v19))
  {
    v36 = v0;
    LOBYTE(v40) = 11;
    v20 = sub_100025CE0();
    v21 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v20);
    v22 = [objc_opt_self() currentDevice];
    v23 = [v22 userInterfaceIdiom];

    if ((v21 & 1) == 0)
    {
      if (v23 || (v14 & 1) == 0)
      {
        goto LABEL_33;
      }

      v24 = v15;
      static EditorialVideoArtworkFlavor.motionDetailTall.getter();
      sub_100278F14(&unk_101189E50, &type metadata accessor for EditorialVideoArtworkFlavor, &protocol conformance descriptor for EditorialVideoArtworkFlavor);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v40 == v38 && v41 == v39)
      {
        (*(v3 + 8))(v5, v37);
        goto LABEL_29;
      }

      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (*(v3 + 8))(v5, v37);
      goto LABEL_35;
    }

    if (v23 != 1)
    {
      if (v23 || (v14 & 1) == 0)
      {
        goto LABEL_33;
      }

      v24 = v15;
      static EditorialVideoArtworkFlavor.motionDetailTall.getter();
      sub_100278F14(&unk_101189E50, &type metadata accessor for EditorialVideoArtworkFlavor, &protocol conformance descriptor for EditorialVideoArtworkFlavor);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v40 == v38 && v41 == v39)
      {
        (*(v3 + 8))(v10, v37);
LABEL_29:

LABEL_36:
        v28 = OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshotTask;
        v29 = v36;
        if (*(v36 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshotTask))
        {

          sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
          Task.cancel()();
        }

        v30 = type metadata accessor for TaskPriority();
        (*(*(v30 - 8) + 56))(v2, 1, 1, v30);
        type metadata accessor for MainActor();
        v31 = v24;

        v32 = v29;
        v33 = static MainActor.shared.getter();
        v34 = swift_allocObject();
        *(v34 + 16) = v33;
        *(v34 + 24) = &protocol witness table for MainActor;
        *(v34 + 32) = v31;
        *(v34 + 40) = v13;
        *(v34 + 48) = v12;
        *(v34 + 56) = v32;
        v35 = sub_10086E3AC(0, 0, v2, &unk_100EC39D0, v34);
        sub_10004ADFC(v15, v14);

        *(v32 + v28) = v35;
LABEL_19:

        return;
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (*(v3 + 8))(v10, v37);

      if (v27)
      {
        goto LABEL_36;
      }

      goto LABEL_32;
    }

    if ((v14 & 1) == 0)
    {
      v24 = v15;
      static EditorialVideoArtworkFlavor.motionDetailSquare.getter();
      sub_100278F14(&unk_101189E50, &type metadata accessor for EditorialVideoArtworkFlavor, &protocol conformance descriptor for EditorialVideoArtworkFlavor);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v40 == v38 && v41 == v39)
      {
        (*(v3 + 8))(v7, v37);
        goto LABEL_29;
      }

      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (*(v3 + 8))(v7, v37);
LABEL_35:

      if (v26)
      {
        goto LABEL_36;
      }

LABEL_32:
      sub_10004ADFC(v15, v14);
    }
  }

LABEL_33:
  sub_10004ADFC(v15, v14);
}

uint64_t sub_1002770A0(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a7;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  *(v7 + 24) = a6;
  v8 = type metadata accessor for CancellationError();
  *(v7 + 56) = v8;
  *(v7 + 64) = *(v8 - 8);
  *(v7 + 72) = swift_task_alloc();
  v9 = sub_10010FC20(&qword_1011882F8, &unk_100EC39D8);
  *(v7 + 80) = v9;
  *(v7 + 88) = *(v9 - 8);
  *(v7 + 96) = swift_task_alloc();
  type metadata accessor for NowPlayingArtworkBackgroundTreatment();
  *(v7 + 104) = swift_task_alloc();
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  *(v7 + 112) = swift_task_alloc();
  v10 = sub_10010FC20(&qword_101188300, &qword_100EC39E8);
  *(v7 + 120) = v10;
  *(v7 + 128) = *(v10 - 8);
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 144) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v7 + 152) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 160) = v12;
  *(v7 + 168) = v11;

  return _swift_task_switch(sub_1002772DC, v12, v11);
}

uint64_t sub_1002772DC()
{
  v26 = v0;
  v2 = *(v0 + 17);
  v1 = *(v0 + 18);
  v3 = *(v0 + 15);
  v4 = *(v0 + 16);
  v5 = *(v0 + 14);
  v7 = v0[4];
  v6 = v0[5];
  v8 = *(v0 + 3);
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  NowPlayingArtworkBackgroundTreatment.init(contentMode:)();
  *(swift_task_alloc() + 16) = v8;
  NowPlayingArtworkBackground.init(videoURL:namespace:treatment:staticArt:)();

  (*(v4 + 16))(v2, v1, v3);
  v10 = objc_allocWithZone(sub_10010FC20(&qword_101188308, &qword_100EC39F0));
  v11 = _UIHostingView.init(rootView:)();
  *(v0 + 22) = v11;
  [v11 setFrame:{0.0, 0.0, v7, v6}];
  if (qword_10117F548 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  *(v0 + 23) = sub_1000060E4(v12, static Logger.NowPlaying.motion);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v15 = 136446466;
    type metadata accessor for VideoArtwork();
    sub_100278F14(&qword_101188310, &type metadata accessor for VideoArtwork, &protocol conformance descriptor for VideoArtwork);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = sub_1000105AC(v16, v17, v25);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    v19 = CGSize.description.getter();
    v21 = sub_1000105AC(v19, v20, v25);

    *(v15 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "Snapshotting keyframe for %{public}s @ %{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  static Task<>.checkCancellation()();
  v22 = [v11 layer];
  CALayer.mcui.getter();

  v23 = swift_task_alloc();
  *(v0 + 24) = v23;
  *v23 = v0;
  v23[1] = sub_100277BBC;

  return MCUINamespace<A>.snapshot()();
}

uint64_t sub_100277BBC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[25] = a1;
  v4[26] = v1;

  (*(v3[11] + 8))(v3[12], v3[10]);
  v5 = v3[21];
  v6 = v3[20];
  if (v1)
  {
    v7 = sub_1002784A8;
  }

  else
  {
    v7 = sub_100277D4C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100277D4C()
{
  v56 = v0;
  v1 = *(v0 + 208);

  static Task<>.checkCancellation()();
  if (v1)
  {

    *(v0 + 16) = v1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    if (swift_dynamicCast())
    {

      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.default.getter();

      v4 = os_log_type_enabled(v2, v3);
      v5 = *(v0 + 176);
      v6 = *(v0 + 144);
      v7 = *(v0 + 120);
      v8 = *(v0 + 128);
      if (v4)
      {
        v53 = *(v0 + 144);
        v9 = swift_slowAlloc();
        v55[0] = swift_slowAlloc();
        *v9 = 136446466;
        type metadata accessor for VideoArtwork();
        sub_100278F14(&qword_101188310, &type metadata accessor for VideoArtwork, &protocol conformance descriptor for VideoArtwork);
        v10 = dispatch thunk of CustomStringConvertible.description.getter();
        v12 = sub_1000105AC(v10, v11, v55);

        *(v9 + 4) = v12;
        *(v9 + 12) = 2082;
        v13 = CGSize.description.getter();
        v15 = sub_1000105AC(v13, v14, v55);

        *(v9 + 14) = v15;
        _os_log_impl(&_mh_execute_header, v2, v3, "Cancelled snapshot for %{public}s @ %{public}s", v9, 0x16u);
        swift_arrayDestroy();

        (*(v8 + 8))(v53, v7);
      }

      else
      {

        (*(v8 + 8))(v6, v7);
      }

      (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    }

    else
    {

      swift_errorRetain();
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      v35 = os_log_type_enabled(v33, v34);
      v36 = *(v0 + 144);
      v37 = *(v0 + 120);
      v38 = *(v0 + 128);
      if (v35)
      {
        v54 = *(v0 + 176);
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v55[0] = swift_slowAlloc();
        *v39 = 136446722;
        type metadata accessor for VideoArtwork();
        v52 = v37;
        sub_100278F14(&qword_101188310, &type metadata accessor for VideoArtwork, &protocol conformance descriptor for VideoArtwork);
        v41 = dispatch thunk of CustomStringConvertible.description.getter();
        v43 = sub_1000105AC(v41, v42, v55);

        *(v39 + 4) = v43;
        *(v39 + 12) = 2082;
        v44 = CGSize.description.getter();
        v46 = sub_1000105AC(v44, v45, v55);

        *(v39 + 14) = v46;
        *(v39 + 22) = 2112;
        swift_errorRetain();
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 24) = v47;
        *v40 = v47;
        _os_log_impl(&_mh_execute_header, v33, v34, "Error with snapshot for %{public}s @ %{public}s: %@", v39, 0x20u);
        sub_1000095E8(v40, &unk_101183D70, &unk_100EC6540);

        swift_arrayDestroy();

        (*(v38 + 8))(v36, v52);
      }

      else
      {

        (*(v38 + 8))(v36, v37);
      }

      v48 = *(v0 + 48);
      v49 = *(v48 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshot);
      *(v48 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshot) = 0;
    }
  }

  else
  {

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v55[0] = swift_slowAlloc();
      *v18 = 136446466;
      type metadata accessor for VideoArtwork();
      sub_100278F14(&qword_101188310, &type metadata accessor for VideoArtwork, &protocol conformance descriptor for VideoArtwork);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = sub_1000105AC(v19, v20, v55);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2082;
      v22 = CGSize.description.getter();
      v24 = sub_1000105AC(v22, v23, v55);

      *(v18 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v16, v17, "Did snapshot keyframe for %{public}s @ %{public}s", v18, 0x16u);
      swift_arrayDestroy();
    }

    v25 = *(v0 + 200);
    v26 = *(v0 + 176);
    v27 = *(v0 + 144);
    v28 = *(v0 + 120);
    v29 = *(v0 + 128);
    v30 = *(v0 + 48);
    v31 = [objc_allocWithZone(UIImageView) initWithImage:v25];
    [v26 frame];
    [v31 setFrame:?];

    (*(v29 + 8))(v27, v28);
    v32 = *(v30 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshot);
    *(v30 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshot) = v31;
  }

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_1002784A8()
{
  v38 = v0;

  *(v0 + 16) = *(v0 + 208);
  swift_errorRetain();
  sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
  if (swift_dynamicCast())
  {

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();

    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 176);
    v5 = *(v0 + 144);
    v6 = *(v0 + 120);
    v7 = *(v0 + 128);
    if (v3)
    {
      v35 = *(v0 + 144);
      v8 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v8 = 136446466;
      type metadata accessor for VideoArtwork();
      sub_100278F14(&qword_101188310, &type metadata accessor for VideoArtwork, &protocol conformance descriptor for VideoArtwork);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = sub_1000105AC(v9, v10, &v37);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2082;
      v12 = CGSize.description.getter();
      v14 = sub_1000105AC(v12, v13, &v37);

      *(v8 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v1, v2, "Cancelled snapshot for %{public}s @ %{public}s", v8, 0x16u);
      swift_arrayDestroy();

      (*(v7 + 8))(v35, v6);
    }

    else
    {

      (*(v7 + 8))(v5, v6);
    }

    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
  }

  else
  {

    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 144);
    v19 = *(v0 + 120);
    v20 = *(v0 + 128);
    if (v17)
    {
      v36 = *(v0 + 176);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v21 = 136446722;
      type metadata accessor for VideoArtwork();
      v34 = v19;
      sub_100278F14(&qword_101188310, &type metadata accessor for VideoArtwork, &protocol conformance descriptor for VideoArtwork);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = sub_1000105AC(v23, v24, &v37);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2082;
      v26 = CGSize.description.getter();
      v28 = sub_1000105AC(v26, v27, &v37);

      *(v21 + 14) = v28;
      *(v21 + 22) = 2112;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 24) = v29;
      *v22 = v29;
      _os_log_impl(&_mh_execute_header, v15, v16, "Error with snapshot for %{public}s @ %{public}s: %@", v21, 0x20u);
      sub_1000095E8(v22, &unk_101183D70, &unk_100EC6540);

      swift_arrayDestroy();

      (*(v20 + 8))(v18, v34);
    }

    else
    {

      (*(v20 + 8))(v18, v19);
    }

    v30 = *(v0 + 48);
    v31 = *(v30 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshot);
    *(v30 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshot) = 0;
  }

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1002789F8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
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

uint64_t sub_100278B20()
{
  v1 = OBJC_IVAR____TtC5Music10MotionData_videoArtwork;
  v2 = type metadata accessor for VideoArtwork();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Music10MotionData_videoFlavor;
  v4 = type metadata accessor for EditorialVideoArtworkFlavor();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC5Music10MotionData__keyframeData;
  v6 = sub_10010FC20(&qword_101197A00, &qword_100EC3960);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_100278C7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002F3F4;

  return sub_100275D08();
}

double sub_100278D30()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 bounds];
  v3 = v2;

  v4 = [v0 mainScreen];
  [v4 bounds];
  v6 = v5;

  v7 = [v0 mainScreen];
  [v7 bounds];
  v9 = v8;
  v11 = v10;

  if (v6 >= v3)
  {
    v12 = [v0 mainScreen];
    [v12 bounds];

    return v11;
  }

  return v9;
}

uint64_t sub_100278E34(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = *(v1 + 7);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002F3F4;

  return sub_1002770A0(v7, v8, a1, v4, v5, v6, v9);
}

uint64_t sub_100278F14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100278FC4(uint64_t a1)
{
  result = type metadata accessor for BaselineSpacer.Configuration.Mode(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100279060(uint64_t a1)
{
  sub_1002790B8();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1002790B8()
{
  if (!qword_101188430)
  {
    v0 = type metadata accessor for Font.TextStyle();
    if (!v1)
    {
      atomic_store(v0, &qword_101188430);
    }
  }
}

uint64_t sub_100279114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_100279198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_100279260@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v30 = type metadata accessor for BaselineSpacer.Scaled(0);
  __chkstk_darwin();
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Font.TextStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v26 - v8;
  __chkstk_darwin();
  v26 = &v26 - v10;
  v28 = sub_10010FC20(&qword_1011884E8, &qword_100EC3A78);
  __chkstk_darwin();
  v12 = (&v26 - v11);
  type metadata accessor for BaselineSpacer.Configuration.Mode(0);
  __chkstk_darwin();
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BaselineSpacer.Configuration(0);
  __chkstk_darwin();
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v2;
  sub_1002798AC(v2, v17, type metadata accessor for BaselineSpacer.Configuration);
  sub_1002797F4(v17, v14);
  v19 = sub_10010FC20(&qword_1011883A8, &qword_100EE3200);
  if ((*(*(v19 - 8) + 48))(v14, 1, v19) == 1)
  {
    *v12 = *(v2 + *(v15 + 20));
    swift_storeEnumTagMultiPayload();
    sub_100279914();
    sub_100279968();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v21 = v26;
    (*(v5 + 32))(v26, v14, v4);
    v22 = *(v18 + *(v15 + 20));
    v23 = *(v5 + 16);
    v23(v9, v21, v4);
    v31 = v22;
    v23(v7, v9, v4);
    sub_100279858();
    v24 = v27;
    ScaledMetric.init(wrappedValue:relativeTo:)();
    v25 = *(v5 + 8);
    v25(v9, v4);
    sub_1002798AC(v24, v12, type metadata accessor for BaselineSpacer.Scaled);
    swift_storeEnumTagMultiPayload();
    sub_100279914();
    sub_100279968();
    _ConditionalContent<>.init(storage:)();
    sub_1002799C0(v24);
    return (v25)(v21, v4);
  }
}

double sub_100279684@<D0>(uint64_t a2@<X8>)
{
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  result = *&v8;
  *(a2 + 48) = v8;
  return result;
}

double sub_10027971C@<D0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_101188508, &qword_100EC3A80);
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  result = *&v7;
  *(a1 + 48) = v7;
  return result;
}

uint64_t sub_1002797F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BaselineSpacer.Configuration.Mode(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100279858()
{
  result = qword_1011884F0;
  if (!qword_1011884F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011884F0);
  }

  return result;
}

uint64_t sub_1002798AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100279914()
{
  result = qword_1011884F8;
  if (!qword_1011884F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011884F8);
  }

  return result;
}

unint64_t sub_100279968()
{
  result = qword_101188500;
  if (!qword_101188500)
  {
    type metadata accessor for BaselineSpacer.Scaled(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101188500);
  }

  return result;
}

uint64_t sub_1002799C0(uint64_t a1)
{
  v2 = type metadata accessor for BaselineSpacer.Scaled(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100279A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100279ACC(uint64_t a1)
{
  if (!qword_101188578)
  {
    sub_100279858();
    v1 = type metadata accessor for ScaledMetric();
    if (!v2)
    {
      atomic_store(v1, &qword_101188578);
    }
  }
}

unint64_t sub_100279B38()
{
  result = qword_1011885A8;
  if (!qword_1011885A8)
  {
    sub_1001109D0(&qword_1011885B0, &qword_100EC3AB0);
    sub_100279914();
    sub_100279968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011885A8);
  }

  return result;
}

unint64_t sub_100279BFC()
{
  result = qword_1011885B8;
  if (!qword_1011885B8)
  {
    sub_1001109D0(&qword_1011885C0, &qword_100EC3B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011885B8);
  }

  return result;
}

uint64_t sub_100279C80(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100279C98(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100279CB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_100279CFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100279D6C@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v56 = type metadata accessor for BlendMode();
  v2 = *(v56 - 8);
  __chkstk_darwin();
  v49 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v55 = &v48 - v4;
  __chkstk_darwin();
  v54 = &v48 - v5;
  v50 = type metadata accessor for EnvironmentValues();
  v6 = *(v50 - 8);
  __chkstk_darwin();
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10010FC20(&qword_1011885D0, &qword_100EC3D48);
  __chkstk_darwin();
  v10 = &v48 - v9;
  v53 = sub_10010FC20(&qword_1011885D8, &qword_100EC3D50);
  __chkstk_darwin();
  v52 = &v48 - v11;
  v63 = *v1;
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v61 = *(v1 + 32);
  v62 = *(v1 + 40);
  v59 = *(v1 + 48);
  v60 = *(v1 + 56);
  v14 = swift_allocObject();
  v15 = *(v1 + 16);
  v14[1] = *v1;
  v14[2] = v15;
  v14[3] = *(v1 + 32);
  *(v14 + 57) = *(v1 + 41);
  v16 = v61;
  v17 = v62;
  sub_100118E9C(&v63, v58);
  sub_100030444(v12, v13);
  sub_1000089F8(&v61, v58, &qword_1011885E0, &qword_100EC3D58);
  sub_1000089F8(&v59, v58, &qword_1011885E8, &qword_100EC3D60);
  sub_10027A374(v1, v10);
  v18 = sub_10010FC20(&qword_1011885F0, &qword_100EC3D68);
  v19 = *(v18 + 52);
  v20 = static Color.primary.getter();
  MoreLabel.init(color:)(v20, &v10[v19]);
  v21 = &v10[*(v18 + 56)];
  *v21 = sub_10027A93C;
  v21[1] = v14;
  if (v17 == 1)
  {
    v22 = v50;
  }

  else
  {

    v23 = static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000095E8(&v61, &qword_1011885E0, &qword_100EC3D58);
    v22 = v50;
    (*(v6 + 8))(v8, v50);
    v16 = v58[0];
  }

  v25 = v55;
  if (v16 == 2 || (v16 & 1) == 0)
  {
    v26 = 2;
  }

  else
  {
    v26 = 3;
  }

  v27 = v59;
  v28 = v60;
  KeyPath = swift_getKeyPath();
  v30 = &v10[*(v51 + 36)];
  *v30 = KeyPath;
  *(v30 + 1) = v26;
  v30[16] = 0;
  if ((v28 & 1) == 0)
  {

    v31 = static os_log_type_t.fault.getter();
    v32 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v32, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000095E8(&v59, &qword_1011885E8, &qword_100EC3D60);
    (*(v6 + 8))(v8, v22);
    v27 = v58[0];
  }

  v33 = v56;
  v34 = *(v2 + 104);
  if ((v27 & 0xFE) == 2)
  {
    v34(v25, enum case for BlendMode.normal(_:), v56);
    v35 = *(v2 + 32);
  }

  else
  {
    v36 = &enum case for BlendMode.plusDarker(_:);
    if ((v27 & 1) == 0)
    {
      v36 = &enum case for BlendMode.plusLighter(_:);
    }

    v37 = v49;
    v34(v49, *v36, v56);
    v35 = *(v2 + 32);
    v35(v25, v37, v33);
  }

  v38 = v54;
  v35(v54, v25, v33);
  v39 = v52;
  v40 = v53;
  v35(&v52[*(v53 + 36)], v38, v33);
  sub_10027A96C(v10, v39);
  v41 = AccessibilityIdentifier.containerDetailHeaderDescription.unsafeMutableAddressor();
  v42 = *v41;
  v43 = v41[1];
  v44 = v41[2];
  v45 = v41[3];
  v46 = sub_10027A9DC();

  View.accessibilityIdentifier(_:)(v42, v43, v44, v45, v40, v46);

  return sub_1000095E8(v39, &qword_1011885D8, &qword_100EC3D50);
}

double sub_10027A374@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10010FC20(&qword_101188610, &qword_100EC4D60);
  __chkstk_darwin();
  v5 = &v30 - v4;
  v33 = type metadata accessor for Font.TextStyle();
  v6 = *(v33 - 8);
  __chkstk_darwin();
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *a1;
  v43 = 2570;
  v44 = 0xE200000000000000;
  v41 = 10;
  v42 = 0xE100000000000000;
  sub_100009838();
  v32 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v31 = v13;
  v14 = *(a1 + 6);
  v43 = v14;
  LOBYTE(v44) = *(a1 + 56);
  if (v44 == 1)
  {
    v15 = v14;
  }

  else
  {

    v16 = static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v17, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000095E8(&v43, &qword_1011885E8, &qword_100EC3D60);
    (*(v10 + 8))(v12, v9);
    v15 = v34;
  }

  if ((v15 & 0xFE) == 2)
  {
    v18 = 1.0;
    v19 = static HierarchicalShapeStyle.secondary.getter();
  }

  else
  {
    v18 = 0.6;
    v19 = static HierarchicalShapeStyle.primary.getter();
  }

  v20 = v19;
  v21 = v33;
  (*(v6 + 104))(v8, enum case for Font.TextStyle.subheadline(_:), v33);
  v22 = type metadata accessor for Font.Design();
  (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
  v23 = static Font.system(_:design:weight:)();
  sub_1000095E8(v5, &qword_101188610, &qword_100EC4D60);
  (*(v6 + 8))(v8, v21);
  KeyPath = swift_getKeyPath();
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(a2 + 20) = v18;
  v25 = v36;
  *(a2 + 88) = v37;
  v26 = v39;
  *(a2 + 104) = v38;
  *(a2 + 120) = v26;
  *(a2 + 136) = v40;
  result = *&v34;
  v28 = v35;
  *(a2 + 40) = v34;
  *(a2 + 56) = v28;
  v29 = v31;
  *a2 = v32;
  *(a2 + 8) = v29;
  *(a2 + 16) = v20;
  *(a2 + 24) = KeyPath;
  *(a2 + 32) = v23;
  *(a2 + 72) = v25;
  return result;
}

uint64_t sub_10027A7BC(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_10027A830@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for Font.TextStyle.subheadline(_:);
  v3 = type metadata accessor for Font.TextStyle();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

unint64_t sub_10027A8A4(uint64_t a1)
{
  result = sub_10027A8CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10027A8CC()
{
  result = qword_1011885C8;
  if (!qword_1011885C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011885C8);
  }

  return result;
}

uint64_t sub_10027A93C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_10027A96C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011885D0, &qword_100EC3D48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10027A9DC()
{
  result = qword_1011885F8;
  if (!qword_1011885F8)
  {
    sub_1001109D0(&qword_1011885D8, &qword_100EC3D50);
    sub_10027AA68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011885F8);
  }

  return result;
}

unint64_t sub_10027AA68()
{
  result = qword_101188600;
  if (!qword_101188600)
  {
    sub_1001109D0(&qword_1011885D0, &qword_100EC3D48);
    sub_100020674(&qword_101188608, &qword_1011885F0, &qword_100EC3D68, &protocol conformance descriptor for HeightLimitedButtonTextView<A, B>);
    sub_100020674(&qword_1011860B8, &unk_10119A2E0, &qword_100ED53A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101188600);
  }

  return result;
}

unint64_t sub_10027AB4C()
{
  result = qword_101188618;
  if (!qword_101188618)
  {
    sub_1001109D0(&qword_101188620, &unk_100EC3DD0);
    sub_10027A9DC();
    sub_10027ABD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101188618);
  }

  return result;
}

unint64_t sub_10027ABD8()
{
  result = qword_101181038;
  if (!qword_101181038)
  {
    type metadata accessor for AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101181038);
  }

  return result;
}

unint64_t sub_10027AC3C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1701667182;
    v6 = 0x655073746E696F70;
    if (a1 != 2)
    {
      v6 = 0x6165724165666173;
    }

    if (a1)
    {
      v5 = 0x69536E6565726373;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    v2 = 0x6863746F4E736168;
    if (a1 != 7)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x615272656E726F63;
    if (a1 != 4)
    {
      v3 = 0x6D6F696469;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_10027AD7C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100109BFC(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_10027ADCC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_100109BFC(v4, v2);
  return Hasher._finalize()();
}

unint64_t sub_10027AE10@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10028252C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10027AE40@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10027AC3C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10027AE88@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10028252C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10027AEBC(uint64_t a1)
{
  v2 = sub_100282A8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10027AEF8(uint64_t a1)
{
  v2 = sub_100282A8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10027AF34(void *a1)
{
  v3 = v1;
  v5 = sub_10010FC20(&qword_1011886C8, &qword_100EC43B0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v11 - v7;
  sub_10000954C(a1, a1[3]);
  sub_100282A8C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11[0]) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11[0] = *(v3 + 16);
    v12 = 1;
    type metadata accessor for CGSize(0);
    sub_100282BF0(&qword_1011886D0, type metadata accessor for CGSize, &protocol conformance descriptor for CGSize);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v11[0] = *(v3 + 32);
    v12 = 2;
    sub_100282B9C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v9 = *(v3 + 56);
    v11[0] = *(v3 + 40);
    v11[1] = v9;
    v12 = 3;
    type metadata accessor for UIEdgeInsets(0);
    sub_100282BF0(&qword_1011886E0, type metadata accessor for UIEdgeInsets, &protocol conformance descriptor for UIEdgeInsets);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v11[0] = *(v3 + 72);
    v12 = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11[0]) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11[0]) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11[0]) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11[0]) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 sub_10027B284@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100282578(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v8;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

void sub_10027B2FC(void *a1, uint64_t a2, char *a3, uint64_t a4, void *a5, uint64_t a6, double a7)
{
  v233 = a6;
  v229 = a3;
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v232 = (&v220 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v15 = (&v220 - v14);
  __chkstk_darwin();
  v17 = (&v220 - v16);
  v18 = &v7[OBJC_IVAR____TtCC5Music31MultiDeviceTesterViewController10DeviceView_device];
  v19 = *(a2 + 80);
  *(v18 + 4) = *(a2 + 64);
  *(v18 + 5) = v19;
  *(v18 + 48) = *(a2 + 96);
  v20 = *(a2 + 16);
  *v18 = *a2;
  *(v18 + 1) = v20;
  v21 = *(a2 + 48);
  *(v18 + 2) = *(a2 + 32);
  *(v18 + 3) = v21;
  v22 = OBJC_IVAR____TtCC5Music31MultiDeviceTesterViewController10DeviceView_viewController;
  *&v7[OBJC_IVAR____TtCC5Music31MultiDeviceTesterViewController10DeviceView_viewController] = a1;
  v23 = a1;
  sub_100282B34(a2, &v240);
  v235 = v23;
  [v23 _setIgnoresWrapperViewForContentOverlayInsets:1];
  [*&v7[v22] setAdditionalSafeAreaInsets:{*(a2 + 40), *(a2 + 48), *(a2 + 56), *(a2 + 64)}];
  v24 = [*&v7[v22] view];
  if (!v24)
  {
    goto LABEL_41;
  }

  v25 = v24;
  v231 = a4;
  v228 = v15;
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];

  v26 = [*&v7[v22] view];
  if (!v26)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v27 = v26;
  v28 = [v26 layer];

  [v28 setCornerRadius:*(a2 + 72)];
  v29 = [*&v7[v22] view];
  if (!v29)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v30 = v29;
  v31 = [v29 layer];

  [v31 setCornerCurve:kCACornerCurveContinuous];
  v32 = type metadata accessor for MultiDeviceTesterViewController.DeviceView();
  v239.receiver = v7;
  v239.super_class = v32;
  v33 = objc_msgSendSuper2(&v239, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100282C9C(v235);
  if (*(a2 + 80))
  {
    v34 = a7 + -81.0;
    v35 = *(a2 + 24);
    v36 = 1.0;
    if (v34 < v35)
    {
      v36 = v34 / v35;
    }
  }

  else
  {
    v37 = [objc_opt_self() mainScreen];
    [v37 _pointsPerInch];
    v39 = v38;

    v35 = *(a2 + 24);
    v36 = v39 / *(a2 + 32);
  }

  v227 = a5;
  v40 = *(a2 + 16);
  v236 = OBJC_IVAR____TtCC5Music31MultiDeviceTesterViewController10DeviceView_viewController;
  v41 = [*&v33[OBJC_IVAR____TtCC5Music31MultiDeviceTesterViewController10DeviceView_viewController] view];
  if (!v41)
  {
    goto LABEL_44;
  }

  v42 = v41;
  v43 = v36 * v40;
  v44 = v36 * v35;
  CGAffineTransformMakeTranslation(&v240, (v40 - v36 * v40) * -0.5, (v35 - v36 * v35) * -0.5);
  CGAffineTransformScale(&v238, &v240, v36, v36);
  v240 = v238;
  [v42 setTransform:&v240];

  v45 = [objc_allocWithZone(UIView) init];
  v46 = UIView.forAutolayout.getter();

  v234 = objc_opt_self();
  v47 = [v234 tertiarySystemFillColor];
  [v46 setBackgroundColor:v47];

  v48 = [v46 layer];
  [v48 setCornerRadius:10.0];

  v49 = [v46 layer];
  [v49 setMaskedCorners:3];

  v50 = [v46 layer];
  [v50 setCornerCurve:kCACornerCurveContinuous];

  v51 = v33;
  v230 = v46;
  [v51 addSubview:v46];
  v52 = [objc_allocWithZone(UILabel) init];
  v53 = UIView.forAutolayout.getter();

  v240.a = 0.0;
  v240.b = -2.68156159e154;
  _StringGuts.grow(_:)(26);
  sub_100282B34(a2, &v240);

  *&v240.a = *a2;
  v54._countAndFlagsBits = 10;
  v54._object = 0xE100000000000000;
  String.append(_:)(v54);
  if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v40 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v40 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  *&v238.a = v40;
  v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v55);

  v56._countAndFlagsBits = 120;
  v56._object = 0xE100000000000000;
  String.append(_:)(v56);
  if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v35 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v35 >= 9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  *&v238.a = v35;
  v57._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v57);

  v58._countAndFlagsBits = 0x657265646E65520ALL;
  v58._object = 0xED00002073612064;
  String.append(_:)(v58);
  if (COERCE_UNSIGNED_INT64(fabs(v36 * v40)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v43 <= -9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v43 >= 9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  *&v238.a = v43;
  v59._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v59);

  v60._countAndFlagsBits = 120;
  v60._object = 0xE100000000000000;
  String.append(_:)(v60);
  if (COERCE_UNSIGNED_INT64(fabs(v36 * v35)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v44 <= -9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v44 >= 9.22337204e18)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v224 = kCACornerCurveContinuous;
  *&v238.a = v44;
  v61._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v61);

  v62 = String._bridgeToObjectiveC()();

  [v53 setText:v62];

  [v53 setNumberOfLines:3];
  [v53 setAdjustsFontSizeToFitWidth:1];
  [v53 setMinimumScaleFactor:0.3];
  SymbolButton.Configuration.init()(v17);

  *v17 = 0xD000000000000013;
  v17[1] = 0x8000000100E40AC0;
  v63 = SymbolButton.Background.tertiary.unsafeMutableAddressor();
  v64 = *v63;
  v65 = v63[3];
  v225 = v53;
  v66 = v17[25];
  v67 = v17[26];
  v237 = v33;
  v68 = v17[27];
  v69 = v17[28];
  v70 = *(v63 + 1);
  v17[25] = v64;
  *(v17 + 13) = v70;
  v17[28] = v65;
  v71 = v70;

  v72 = v71;
  sub_100282F24(v66, v67, v68, v69);
  v221 = v17;
  v73 = v17;
  v74 = v228;
  sub_100282F68(v73, v228);
  v75 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v76 = swift_allocObject();
  v77 = *(a2 + 32);
  *(v76 + 72) = *(a2 + 48);
  v78 = *(a2 + 80);
  *(v76 + 88) = *(a2 + 64);
  *(v76 + 104) = v78;
  v79 = *(a2 + 16);
  *(v76 + 24) = *a2;
  *(v76 + 40) = v79;
  *(v76 + 16) = v75;
  *(v76 + 120) = *(a2 + 96);
  *(v76 + 56) = v77;
  v80 = v231;
  *(v76 + 128) = v229;
  *(v76 + 136) = v80;
  v81 = type metadata accessor for SymbolButton(0);
  v82 = objc_allocWithZone(v81);
  v226 = a2;
  sub_100282B34(a2, &v240);
  v83 = v51;

  v84 = SymbolButton.init(configuration:handler:)(v74, sub_100282FCC, v76);
  v85 = v234;
  v86 = [v234 labelColor];
  v229 = v84;
  [v84 setTintColor:v86];

  v87 = v232;
  SymbolButton.Configuration.init()(v232);
  v88 = v63[3];
  v89 = v87[25];
  v90 = v87[26];
  v92 = v87[27];
  v91 = v87[28];
  v93 = *(v63 + 1);
  v87[25] = *v63;
  *(v87 + 13) = v93;
  v87[28] = v88;
  v94 = v93;

  v95 = v94;
  sub_100282F24(v89, v90, v92, v91);

  *v87 = 0xD000000000000011;
  v87[1] = 0x8000000100E42E50;
  sub_100282F68(v87, v74);
  v96 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v97 = swift_allocObject();
  v98 = v233;
  v97[2] = v227;
  v97[3] = v98;
  v97[4] = v96;
  v99 = objc_allocWithZone(v81);

  v100 = SymbolButton.init(configuration:handler:)(v74, sub_100282FDC, v97);
  v101 = [v85 labelColor];
  [v100 setTintColor:v101];

  v228 = [objc_allocWithZone(UILayoutGuide) init];
  [v83 addLayoutGuide:?];
  v227 = v225;
  [v83 addSubview:?];
  v102 = [*&v237[v236] view];
  if (!v102)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v103 = v102;
  [v83 addSubview:v102];

  v223 = sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_100EBC6D0;
  v220 = v100;
  v105 = v229;
  *(v104 + 32) = v100;
  *(v104 + 40) = v105;
  v106 = objc_allocWithZone(UIStackView);
  sub_100009F78(0, &qword_101181620, UIView_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v108 = [v106 initWithArrangedSubviews:isa];

  v109 = UIView.forAutolayout.getter();
  [v109 setAxis:1];
  [v109 setSpacing:10.0];
  v225 = v109;
  [v83 addSubview:?];
  v110 = [*&v237[v236] view];
  if (!v110)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v111 = v110;
  [v83 addSubview:v110];

  v112 = [objc_allocWithZone(UIView) init];
  v113 = UIView.forAutolayout.getter();

  v114 = v226;
  [v113 setHidden:(*(v226 + 96) & 1) == 0];
  v115 = v234;
  v116 = [v234 blackColor];
  [v113 setBackgroundColor:v116];

  v117 = [v113 layer];
  [v117 setMaskedCorners:12];

  v118 = [v113 layer];
  v119 = v224;
  [v118 setCornerCurve:v224];

  v120 = [v113 layer];
  [v120 setCornerRadius:20.0];

  v222 = v113;
  [v83 addSubview:v113];
  v121 = [objc_allocWithZone(UIView) init];
  v122 = UIView.forAutolayout.getter();

  [v122 setHidden:(*(v114 + 97) & 1) == 0];
  v123 = [v115 whiteColor];
  [v122 setBackgroundColor:v123];

  v124 = [v122 layer];
  [v124 setCornerRadius:4.0];

  v125 = [v122 layer];
  [v125 setCornerCurve:v119];

  v234 = v122;
  [v83 addSubview:v122];
  v126 = swift_allocObject();
  *(v126 + 16) = xmmword_100EC3DE0;
  v127 = v230;
  v128 = [v230 leadingAnchor];
  v129 = [v83 leadingAnchor];

  v130 = [v128 constraintEqualToAnchor:v129];
  *(v126 + 32) = v130;
  v131 = [v127 trailingAnchor];
  v132 = [v83 trailingAnchor];

  v133 = [v131 constraintEqualToAnchor:v132];
  *(v126 + 40) = v133;
  v134 = [v127 topAnchor];
  v135 = [v83 topAnchor];

  v136 = [v134 constraintEqualToAnchor:v135];
  *(v126 + 48) = v136;
  v137 = [v127 heightAnchor];
  v138 = [v83 heightAnchor];

  v139 = [v137 constraintEqualToAnchor:v138 multiplier:0.5];
  *(v126 + 56) = v139;
  v140 = v227;
  v141 = [v227 topAnchor];

  v142 = [v83 topAnchor];
  v143 = [v141 constraintEqualToAnchor:v142 constant:10.0];

  *(v126 + 64) = v143;
  v144 = [v140 leadingAnchor];

  v145 = [v83 leadingAnchor];
  v146 = [v144 constraintEqualToAnchor:v145 constant:10.0];

  *(v126 + 72) = v146;
  v147 = [v140 bottomAnchor];

  v148 = v228;
  v149 = [v228 topAnchor];
  v150 = [v147 constraintEqualToAnchor:v149 constant:-10.0];

  *(v126 + 80) = v150;
  v151 = v225;
  v152 = [v225 centerYAnchor];

  v153 = [v140 centerYAnchor];
  v154 = [v152 constraintEqualToAnchor:v153];

  *(v126 + 88) = v154;
  v155 = [v151 leadingAnchor];

  v156 = [v140 trailingAnchor];
  v157 = [v155 constraintEqualToAnchor:v156 constant:10.0];

  *(v126 + 96) = v157;
  v158 = [v151 trailingAnchor];

  v159 = [v83 trailingAnchor];
  v160 = [v158 constraintEqualToAnchor:v159 constant:-10.0];

  *(v126 + 104) = v160;
  v161 = [v148 leadingAnchor];
  v162 = [v83 leadingAnchor];

  v163 = [v161 constraintEqualToAnchor:v162];
  *(v126 + 112) = v163;
  v164 = [v148 trailingAnchor];
  v165 = [v83 trailingAnchor];

  v166 = [v164 constraintEqualToAnchor:v165];
  *(v126 + 120) = v166;
  v167 = [v148 bottomAnchor];
  v168 = [v83 bottomAnchor];

  v169 = [v167 constraintEqualToAnchor:v168];
  *(v126 + 128) = v169;
  v170 = [v148 widthAnchor];
  v171 = [v170 constraintEqualToConstant:v36 * v40];

  *(v126 + 136) = v171;
  v172 = [v148 heightAnchor];
  v173 = [v172 constraintEqualToConstant:v36 * v35];

  *(v126 + 144) = v173;
  v174 = v236;
  v175 = [*&v237[v236] view];
  if (!v175)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v176 = v175;
  v177 = [v175 leadingAnchor];

  v178 = [v148 leadingAnchor];
  v179 = [v177 constraintEqualToAnchor:v178];

  *(v126 + 152) = v179;
  v180 = [*&v237[v174] view];
  if (!v180)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v181 = v180;
  v182 = [v180 topAnchor];

  v183 = [v148 topAnchor];
  v184 = [v182 constraintEqualToAnchor:v183];

  *(v126 + 160) = v184;
  v185 = v237;
  v186 = [*&v237[v174] view];
  v187 = v174;
  v188 = v222;
  if (!v186)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v189 = v186;
  v190 = [v186 widthAnchor];

  v191 = [v190 constraintEqualToConstant:v40];
  *(v126 + 168) = v191;
  v192 = [*&v185[v187] view];
  if (!v192)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v193 = v192;
  v194 = [v192 heightAnchor];

  v195 = [v194 constraintEqualToConstant:v35];
  *(v126 + 176) = v195;
  v196 = [v188 widthAnchor];
  v197 = [v196 constraintEqualToConstant:v36 * 209.0];

  *(v126 + 184) = v197;
  v198 = [v188 heightAnchor];
  v199 = [v198 constraintEqualToConstant:v36 * 30.0];

  *(v126 + 192) = v199;
  v200 = [v188 topAnchor];
  v201 = [*&v185[v187] view];
  if (v201)
  {
    v202 = v201;
    sub_100282B6C(v226);
    v237 = objc_opt_self();
    v203 = [v202 topAnchor];

    v204 = [v200 constraintEqualToAnchor:v203];
    *(v126 + 200) = v204;
    v205 = [v188 centerXAnchor];
    v206 = [v83 centerXAnchor];

    v207 = [v205 constraintEqualToAnchor:v206];
    *(v126 + 208) = v207;
    v208 = v234;
    v209 = [v234 heightAnchor];
    v210 = [v209 constraintEqualToConstant:5.0];

    *(v126 + 216) = v210;
    v211 = [v208 widthAnchor];
    v212 = [v211 constraintEqualToConstant:148.0];

    *(v126 + 224) = v212;
    v213 = [v208 centerXAnchor];
    v214 = [v83 centerXAnchor];

    v215 = [v213 constraintEqualToAnchor:v214];
    *(v126 + 232) = v215;
    v216 = [v208 bottomAnchor];
    v217 = [v83 bottomAnchor];

    v218 = [v216 constraintEqualToAnchor:v217 constant:-8.0];
    *(v126 + 240) = v218;
    sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
    v219 = Array._bridgeToObjectiveC()().super.isa;

    [v237 activateConstraints:v219];

    sub_100282FE8(v232);
    sub_100282FE8(v221);
    return;
  }

LABEL_51:
  __break(1u);
}

void sub_10027CE00(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, id))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v7 = Strong;
  v8 = *(Strong + OBJC_IVAR____TtCC5Music31MultiDeviceTesterViewController10DeviceView_viewController);

  v9 = [v8 view];
  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [v9 transform];
  v24 = v27;
  v25 = aBlock;
  v10 = v28;
  v11 = v29;
  aBlock = 0x3FF0000000000000uLL;
  *&v27 = 0;
  *(&v27 + 1) = 0x3FF0000000000000;
  v28 = 0;
  v29 = 0;
  [v9 setTransform:&aBlock];
  v12 = [v9 layer];
  [v12 setCornerRadius:0.0];

  [v9 bounds];
  v15 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{v13, v14}];
  v16 = swift_allocObject();
  *(v16 + 16) = v9;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_100283044;
  *(v17 + 24) = v16;
  v28 = sub_1001EBE40;
  v29 = v17;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v27 = sub_10006BD7C;
  *(&v27 + 1) = &unk_1010A3010;
  v18 = _Block_copy(&aBlock);

  v19 = v9;

  v20 = [v15 imageWithActions:v18];
  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  aBlock = v25;
  v27 = v24;
  v28 = v10;
  v29 = v11;
  [v19 setTransform:&aBlock];
  v21 = [v19 layer];
  [v21 setCornerRadius:*(a3 + 72)];

  swift_beginAccess();
  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    v23 = v22;
    a4(v22, v20);

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_10027D140(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a2();
  }

  else
  {
    __break(1u);
  }
}

void sub_10027D208(void *a1, objc_method *a2, uint64_t a3)
{
  v6 = [a1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = v6;
  [v6 transform];
  v15 = v18;
  v16 = v17;
  v8 = v19;
  v9 = v20;

  v10 = [a1 view];
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = v10;
  v17 = 0x3FF0000000000000uLL;
  *&v18 = 0;
  *(&v18 + 1) = 0x3FF0000000000000;
  v19 = 0;
  v20 = 0;
  [v10 setTransform:&v17];

  Implementation = method_getImplementation(a2);
  (Implementation)(a1, a3);
  v13 = [a1 view];
  if (v13)
  {
    v14 = v13;
    v17 = v16;
    v18 = v15;
    v19 = v8;
    v20 = v9;
    [v13 setTransform:&v17];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_10027D328(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_10027D428()
{
  v1 = v0;
  v107.receiver = v0;
  v107.super_class = type metadata accessor for MultiDeviceTesterViewController();
  objc_msgSendSuper2(&v107, "viewDidLoad");
  static LifecyclePatrol.isEnabled = 0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = v2;
  v4 = [objc_opt_self() secondarySystemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = OBJC_IVAR____TtC5Music31MultiDeviceTesterViewController_scrollView;
  [*&v1[OBJC_IVAR____TtC5Music31MultiDeviceTesterViewController_scrollView] setContentInset:{0.0, 20.0, 0.0, 20.0}];
  v6 = OBJC_IVAR____TtC5Music31MultiDeviceTesterViewController_stackView;
  [*&v1[OBJC_IVAR____TtC5Music31MultiDeviceTesterViewController_stackView] setAxis:0];
  [*&v1[v6] setAlignment:1];
  [*&v1[v6] setSpacing:10.0];
  [*&v1[v5] addSubview:*&v1[v6]];
  v7 = [v1 view];
  if (!v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v7;
  v104 = v6;
  [v7 addSubview:*&v1[v5]];

  sub_100009F78(0, &qword_101183A18, UIButton_ptr);
  sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
  v108.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  isa = UIButton.init(type:primaryAction:)(UIButtonTypeSystem, v108).super.super.super.super.isa;
  v10 = UIView.forAutolayout.getter();

  [v10 setShowsMenuAsPrimaryAction:{1, 0, 0, 0, UIScreen.Dimensions.size.getter, 0}];
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  aBlock[4] = sub_1002831AC;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003D57B8;
  aBlock[3] = &unk_1010A3150;
  v12 = _Block_copy(aBlock);
  v13 = v1;

  [v10 _setMenuProvider:v12];
  _Block_release(v12);
  v14 = [v13 view];
  if (!v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = v14;
  v16 = v10;
  [v15 addSubview:v16];

  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  v18 = v13;
  v102 = v17;
  v109.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v19 = UIButton.init(type:primaryAction:)(UIButtonTypeSystem, v109).super.super.super.super.isa;
  v20 = UIView.forAutolayout.getter();

  v21 = [v18 view];
  if (!v21)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v22 = v21;
  v105 = v20;
  [v22 addSubview:?];

  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  v24 = v18;
  v103 = v23;
  v110.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v25 = UIButton.init(type:primaryAction:)(UIButtonTypeSystem, v110).super.super.super.super.isa;
  v26 = UIView.forAutolayout.getter();

  v27 = [v24 view];
  if (!v27)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v28 = v27;
  v29 = v26;
  [v28 addSubview:v29];

  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100EC3DF0;
  v31 = [v16 topAnchor];

  v32 = [v24 view];
  if (!v32)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v33 = v32;
  v34 = [v32 layoutMarginsGuide];

  v35 = [v34 topAnchor];
  v36 = [v31 constraintEqualToAnchor:v35];

  *(v30 + 32) = v36;
  v37 = [v16 leadingAnchor];

  v38 = [v24 view];
  if (!v38)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v39 = v38;
  v40 = [v38 layoutMarginsGuide];

  v41 = [v40 leadingAnchor];
  v42 = [v37 constraintEqualToAnchor:v41];

  *(v30 + 40) = v42;
  v43 = [v105 topAnchor];

  v44 = [v24 view];
  if (!v44)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v45 = v44;
  v46 = [v44 layoutMarginsGuide];

  v47 = [v46 topAnchor];
  v48 = [v43 constraintEqualToAnchor:v47];

  *(v30 + 48) = v48;
  v49 = [v105 trailingAnchor];

  v50 = [v29 leadingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50 constant:-20.0];

  *(v30 + 56) = v51;
  v52 = [v29 topAnchor];

  v53 = [v24 view];
  if (!v53)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v54 = v53;
  v55 = [v53 layoutMarginsGuide];

  v56 = [v55 topAnchor];
  v57 = [v52 constraintEqualToAnchor:v56];

  *(v30 + 64) = v57;
  v58 = [v29 trailingAnchor];

  v59 = [v24 view];
  if (!v59)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v60 = v59;
  v61 = [v59 layoutMarginsGuide];

  v62 = [v61 trailingAnchor];
  v63 = [v58 constraintEqualToAnchor:v62];

  *(v30 + 72) = v63;
  v64 = [*&v1[v104] widthAnchor];
  v65 = [*&v1[v5] widthAnchor];
  v66 = [v64 constraintEqualToAnchor:v65];

  LODWORD(v67) = 1132068864;
  v68 = [v66 withPriority:v67];

  *(v30 + 80) = v68;
  v69 = [*&v1[v104] leadingAnchor];
  v70 = [*&v1[v5] leadingAnchor];
  v71 = [v69 constraintEqualToAnchor:v70];

  *(v30 + 88) = v71;
  v72 = [*&v1[v104] trailingAnchor];
  v73 = [*&v1[v5] trailingAnchor];
  v74 = [v72 constraintEqualToAnchor:v73];

  *(v30 + 96) = v74;
  v75 = [*&v1[v104] topAnchor];
  v76 = [*&v1[v5] topAnchor];
  v77 = [v75 constraintEqualToAnchor:v76];

  *(v30 + 104) = v77;
  v78 = [*&v1[v104] bottomAnchor];
  v79 = [*&v1[v5] bottomAnchor];
  v80 = [v78 constraintEqualToAnchor:v79];

  *(v30 + 112) = v80;
  v81 = [*&v1[v5] topAnchor];
  v82 = [v16 bottomAnchor];

  v83 = [v81 constraintEqualToAnchor:v82 constant:20.0];
  *(v30 + 120) = v83;
  v84 = [*&v1[v5] leadingAnchor];
  v85 = [v24 view];
  if (!v85)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v86 = v85;
  v87 = [v85 leadingAnchor];

  v88 = [v84 constraintEqualToAnchor:v87];
  *(v30 + 128) = v88;
  v89 = [*&v1[v5] trailingAnchor];
  v90 = [v24 view];
  if (!v90)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v91 = v90;
  v92 = [v90 trailingAnchor];

  v93 = [v89 constraintEqualToAnchor:v92];
  *(v30 + 136) = v93;
  v94 = [*&v1[v5] bottomAnchor];
  v95 = [v24 view];
  if (v95)
  {
    v96 = v95;
    v97 = objc_opt_self();
    v98 = [v96 safeAreaLayoutGuide];

    v99 = [v98 bottomAnchor];
    v100 = [v94 constraintEqualToAnchor:v99];

    *(v30 + 144) = v100;
    sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
    v101 = Array._bridgeToObjectiveC()().super.isa;

    [v97 activateConstraints:v101];

    return;
  }

LABEL_27:
  __break(1u);
}

UIMenu sub_10027E1A4(uint64_t a1, uint64_t a2, char *a3)
{
  v53 = _swiftEmptyArrayStorage;
  v43 = OBJC_IVAR____TtC5Music31MultiDeviceTesterViewController_devices;
  sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
  v4 = 0;
  v42 = a3;
  do
  {
    v5 = &off_101099E30 + 2 * v4;
    v6 = v5[4];
    v7 = v5[5];
    v52 = _swiftEmptyArrayStorage;

    String._bridgeToObjectiveC()();
    v8 = swift_allocObject();
    v8[2] = a3;
    v8[3] = v6;
    v46 = v7;
    v47 = v6;
    v8[4] = v7;

    v9 = a3;
    children._rawValue = 0;
    v10 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v11 = *&a3[v43];
    if (!*(v11 + 16))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v12 = v52;
    v13 = sub_100019C10(v6, v7);
    if ((v14 & 1) == 0)
    {
      goto LABEL_33;
    }

    v15 = *(*(v11 + 56) + 8 * v13);
    v16 = *(v15 + 16);
    if (v16)
    {
      v44 = v10;
      v45 = v4;
      v18 = v6 == 0x656E6F685069 && v46 == 0xE600000000000000;

      v19 = 32;
      do
      {
        v20 = *(v15 + v19);
        v21 = *(v15 + v19 + 32);
        v55 = *(v15 + v19 + 16);
        v56 = v21;
        v54 = v20;
        v22 = *(v15 + v19 + 48);
        v23 = *(v15 + v19 + 64);
        v24 = *(v15 + v19 + 80);
        v60 = *(v15 + v19 + 96);
        v58 = v23;
        v59 = v24;
        v57 = v22;
        if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          sub_100282B34(&v54, v48);
          sub_100282B34(&v54, v48);
        }

        else
        {
          v51 = v54;
          v49 = v47;
          v50 = v46;
          sub_100282B34(&v54, v48);

          sub_100282B34(&v54, v48);
          v25._countAndFlagsBits = 32;
          v25._object = 0xE100000000000000;
          String.append(_:)(v25);
          v48[0] = v49;
          v48[1] = v50;
          v49 = 0;
          v50 = 0xE000000000000000;
          sub_100009838();
          StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

          sub_100282B6C(&v54);
        }

        sub_100282B34(&v54, v48);
        String._bridgeToObjectiveC()();
        sub_100282B6C(&v54);
        v26 = swift_allocObject();
        v27 = v56;
        *(v26 + 72) = v57;
        v28 = v59;
        *(v26 + 88) = v58;
        *(v26 + 104) = v28;
        v29 = v55;
        *(v26 + 24) = v54;
        *(v26 + 40) = v29;
        *(v26 + 16) = v9;
        *(v26 + 120) = v60;
        *(v26 + 56) = v27;
        v30 = v9;
        v31 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v19 += 104;
        --v16;
      }

      while (v16);
      v12 = v52;

      a3 = v42;
      v10 = v44;
      v4 = v45;
    }

    v32 = String._bridgeToObjectiveC()();
    if (v12 >> 62)
    {
      sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);

      preferredElementSize = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
      preferredElementSize = v12;
    }

    sub_100009F78(0, &unk_1011845F0, UIMenu_ptr);
    v34._object = v46;
    v34._countAndFlagsBits = v47;
    v61.value.super.isa = 0;
    v61.is_nil = v32;
    v35 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v34, 0, v61, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0).super.super.isa;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    ++v4;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v4 != 8);
  v36 = v53;
  swift_arrayDestroy();
  v37 = String._bridgeToObjectiveC()();
  LOBYTE(v7) = v37;
  if (!(v36 >> 62))
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
    v38 = v36;
    goto LABEL_31;
  }

LABEL_34:
  sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);

  v38 = _bridgeCocoaArray<A>(_:)();

LABEL_31:

  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  v62.value.super.isa = 0;
  v62.is_nil = v7;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v39, 0, v62, 0, 0xFFFFFFFFFFFFFFFFLL, v38, children);
}

void sub_10027E820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a2 + OBJC_IVAR____TtC5Music31MultiDeviceTesterViewController_stackView) arrangedSubviews];
  sub_100009F78(0, &qword_101181620, UIView_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  if (v9 < 1)
  {
LABEL_19:
    __break(1u);
    return;
  }

  for (i = 0; i != v9; ++i)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = sub_100062D50(i, v8);
    }

    else
    {
      v11 = *(v8 + 8 * i + 32);
    }

    v12 = v11;
    [v11 removeFromSuperview];
  }

LABEL_10:

  v13 = *(a2 + OBJC_IVAR____TtC5Music31MultiDeviceTesterViewController_devices);
  if (!*(v13 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v14 = sub_100019C10(a3, a4);
  if ((v15 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = *(*(v13 + 56) + 8 * v14);
  v17 = *(v16 + 16);
  if (v17)
  {

    v18 = 32;
    do
    {
      v19 = *(v16 + v18);
      v20 = *(v16 + v18 + 16);
      v25[2] = *(v16 + v18 + 32);
      v25[0] = v19;
      v25[1] = v20;
      v21 = *(v16 + v18 + 48);
      v22 = *(v16 + v18 + 64);
      v23 = *(v16 + v18 + 80);
      v26 = *(v16 + v18 + 96);
      v25[4] = v22;
      v25[5] = v23;
      v25[3] = v21;
      sub_100282B34(v25, v24);
      sub_10027F1B4(v25);
      sub_100282B6C(v25);
      v18 += 104;
      --v17;
    }

    while (v17);
  }

  sub_10027F7A0();
}

void sub_10027EA00(uint64_t a1, uint64_t a2)
{
  v2 = [*(a2 + OBJC_IVAR____TtC5Music31MultiDeviceTesterViewController_stackView) arrangedSubviews];
  sub_100009F78(0, &qword_101181620, UIView_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v4; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = sub_100062D50(i, v3);
    }

    else
    {
      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    [v6 removeFromSuperview];
  }

LABEL_10:
}

uint64_t sub_10027EB5C(char a1)
{
  v2 = v1;
  v18.receiver = v2;
  v18.super_class = type metadata accessor for MultiDeviceTesterViewController();
  objc_msgSendSuper2(&v18, "viewDidAppear:", a1 & 1);
  v4 = [objc_opt_self() standardUserDefaults];
  v16 = 0xD00000000000001DLL;
  v17 = 0x8000000100E42E30;
  sub_100009838();
  NSUserDefaults.subscript.getter(&v19);

  if (!*(&v20 + 1))
  {
    return sub_100011DF0(&v19);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v7 = v16;
    v6 = v17;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_10010FC20(&qword_1011886E8, &qword_100EC43B8);
    sub_1002830E0(&qword_101188718, sub_100283158, &protocol conformance descriptor for <A> [A]);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v8 = v19;
    v9 = *(v19 + 16);
    if (v9)
    {
      v10 = 32;
      do
      {
        v11 = *(v8 + v10);
        v12 = *(v8 + v10 + 32);
        v20 = *(v8 + v10 + 16);
        v21 = v12;
        v19 = v11;
        v13 = *(v8 + v10 + 48);
        v14 = *(v8 + v10 + 64);
        v15 = *(v8 + v10 + 80);
        v25 = *(v8 + v10 + 96);
        v23 = v14;
        v24 = v15;
        v22 = v13;
        sub_100282B34(&v19, &v16);
        sub_10027F1B4(&v19);
        sub_100282B6C(&v19);
        v10 += 104;
        --v9;
      }

      while (v9);
    }

    return sub_10002C064(v7, v6);
  }

  return result;
}