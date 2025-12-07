void sub_1000025B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100040864(v3, v4);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained invalidate];
    v7 = [v3 domain];
    if ([v7 isEqualToString:SBSLockScreenContentAssertionErrorDomain])
    {
      v8 = [v3 code];

      if (v8 == 4)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    [v6 delayAcquire];
  }

LABEL_9:
}

uint64_t sub_1000027EC(uint64_t a1, uint64_t a2)
{
  if (qword_100072750 != -1)
  {
    sub_1000408DC();
  }

  return byte_100072758;
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = UIApplicationMain(a1, a2, v5, v7);

  return v8;
}

id sub_100002994()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = [objc_opt_self() mru_suggestedRouteBannerTitleFont];
  [v0 setFont:v1];

  v2 = [objc_opt_self() labelColor];
  [v0 setTextColor:v2];

  LODWORD(v3) = 1144750080;
  [v0 setContentCompressionResistancePriority:0 forAxis:v3];
  LODWORD(v4) = 1148846080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v4];
  return v0;
}

double sub_100002A90()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

char *sub_100002B04(uint64_t a1)
{
  v3 = sub_100004E6C(&unk_100070140, &unk_100044310);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - v5;
  v7 = OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_titleLabel;
  *&v1[v7] = sub_100002994();
  v8 = OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_waveformPackageView;
  v9 = [objc_allocWithZone(MRUCAPackageView) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v1[v8] = v9;
  v10 = OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_leadingLayoutGuide;
  *&v1[v10] = [objc_allocWithZone(UILayoutGuide) init];
  v11 = OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_trailingLayoutGuide;
  *&v1[v11] = [objc_allocWithZone(UILayoutGuide) init];
  *&v1[OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_titleLabelPlayingTrailingConstraint] = 0;
  *&v1[OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_titleLabelNotPlayingTrailingConstraint] = 0;
  *&v1[OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_waveformPadding] = 0x4020000000000000;
  v12 = OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView__availableTitleWidth;
  *&v35[0] = 0;
  Published.init(initialValue:)();
  (*(v4 + 32))(&v1[v12], v6, v3);
  v13 = &v1[OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute];
  v14 = *(a1 + 176);
  *(v13 + 10) = *(a1 + 160);
  *(v13 + 11) = v14;
  *(v13 + 12) = *(a1 + 192);
  *(v13 + 26) = *(a1 + 208);
  v15 = *(a1 + 112);
  *(v13 + 6) = *(a1 + 96);
  *(v13 + 7) = v15;
  v16 = *(a1 + 144);
  *(v13 + 8) = *(a1 + 128);
  *(v13 + 9) = v16;
  v17 = *(a1 + 48);
  *(v13 + 2) = *(a1 + 32);
  *(v13 + 3) = v17;
  v18 = *(a1 + 80);
  *(v13 + 4) = *(a1 + 64);
  *(v13 + 5) = v18;
  v19 = *(a1 + 16);
  *v13 = *a1;
  *(v13 + 1) = v19;
  sub_100004DB8(a1, v35);
  v20 = type metadata accessor for SuggestedRouteBannerTitleView(0);
  v34.receiver = v1;
  v34.super_class = v20;
  v21 = objc_msgSendSuper2(&v34, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v22 = OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_waveformPackageView;
  v23 = *&v21[OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_waveformPackageView];
  v24 = objc_opt_self();
  v25 = v21;
  v26 = v23;
  v27 = [v24 suggestedRouteWaveformPackageName];
  if (!v27)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = String._bridgeToObjectiveC()();
  }

  v28 = [objc_allocWithZone(MRUCAPackageAsset) initWithPackageName:v27];

  [v26 setAsset:v28];
  [*&v21[v22] setScale:0.3017];
  LODWORD(v29) = 1148846080;
  [*&v21[v22] setContentCompressionResistancePriority:0 forAxis:v29];
  [v25 addLayoutGuide:*&v25[OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_leadingLayoutGuide]];
  [v25 addLayoutGuide:*&v25[OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_trailingLayoutGuide]];
  [v25 addSubview:*&v25[OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_titleLabel]];
  [v25 addSubview:*&v21[v22]];
  sub_100002EF8();
  sub_100004EB4(v32);
  v35[10] = v32[10];
  v35[11] = v32[11];
  v35[12] = v32[12];
  v36 = v33;
  v35[6] = v32[6];
  v35[7] = v32[7];
  v35[8] = v32[8];
  v35[9] = v32[9];
  v35[2] = v32[2];
  v35[3] = v32[3];
  v35[4] = v32[4];
  v35[5] = v32[5];
  v35[0] = v32[0];
  v35[1] = v32[1];
  sub_1000035BC(v35);
  sub_100004E14(a1);

  return v25;
}

void sub_100002EF8()
{
  v1 = *&v0[OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_titleLabel];
  v2 = [v1 trailingAnchor];
  v3 = *&v0[OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_trailingLayoutGuide];
  v4 = [v3 leadingAnchor];
  v5 = [v2 constraintEqualToAnchor:v4];

  v6 = *&v0[OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_titleLabelNotPlayingTrailingConstraint];
  *&v0[OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_titleLabelNotPlayingTrailingConstraint] = v5;

  v7 = [v1 trailingAnchor];
  v38 = *&v0[OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_waveformPackageView];
  v8 = [v38 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:-8.0];

  v10 = *&v0[OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_titleLabelPlayingTrailingConstraint];
  *&v0[OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_titleLabelPlayingTrailingConstraint] = v9;

  v37 = objc_opt_self();
  sub_100004E6C(&unk_100070270, qword_100045030);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100043E20;
  v12 = *&v0[OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_leadingLayoutGuide];
  v13 = [v12 leadingAnchor];
  v14 = [v0 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v11 + 32) = v15;
  v16 = [v3 trailingAnchor];
  v17 = [v0 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v11 + 40) = v18;
  v19 = [v12 widthAnchor];
  v20 = [v3 widthAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v11 + 48) = v21;
  v22 = [v1 leadingAnchor];
  v23 = [v12 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v11 + 56) = v24;
  v25 = [v1 topAnchor];
  v26 = [v0 topAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  *(v11 + 64) = v27;
  v28 = [v1 bottomAnchor];
  v29 = [v0 bottomAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  *(v11 + 72) = v30;
  v31 = [v38 centerYAnchor];
  v32 = [v0 centerYAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v11 + 80) = v33;
  v34 = [v38 trailingAnchor];
  v35 = [v3 leadingAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];

  *(v11 + 88) = v36;
  sub_100004EF4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v37 activateConstraints:isa];
}

double sub_100003418()
{
  v1 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_titleLabel);
  [v1 intrinsicContentSize];
  v3 = v2;
  [*(v0 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_waveformPackageView) intrinsicContentSize];
  v5 = v4;
  v6 = [v1 text];
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
LABEL_5:
    v12 = String._bridgeToObjectiveC()();
    [v1 setText:v12];
  }

  [v1 intrinsicContentSize];
  return v3 + 8.0 + v5;
}

id sub_1000035BC(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute];
  v5 = *&v1[OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute + 32];
  v4 = *&v1[OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute + 40];
  v6 = *(a1 + 176);
  v49 = *(a1 + 160);
  v50 = v6;
  v51 = *(a1 + 192);
  v52 = *(a1 + 208);
  v7 = *(a1 + 112);
  v45 = *(a1 + 96);
  v46 = v7;
  v8 = *(a1 + 144);
  v47 = *(a1 + 128);
  v48 = v8;
  v9 = *(a1 + 48);
  v41 = *(a1 + 32);
  v42 = v9;
  v10 = *(a1 + 80);
  v43 = *(a1 + 64);
  v44 = v10;
  v11 = *(a1 + 16);
  v40[0] = *a1;
  v40[1] = v11;
  if (sub_100004EDC(v40) != 1 && (__PAIR128__(v4, v5) == v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v14 = 1;
  }

  else
  {
    v12 = *&v1[OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_titleLabel];

    v13 = String._bridgeToObjectiveC()();

    [v12 setText:v13];

    v14 = 0;
  }

  v15 = v3[112];
  v16 = *(a1 + 176);
  v36 = *(a1 + 160);
  v37 = v16;
  v38 = *(a1 + 192);
  v39 = *(a1 + 208);
  v17 = *(a1 + 112);
  v32[6] = *(a1 + 96);
  v33 = v17;
  v18 = *(a1 + 144);
  v34 = *(a1 + 128);
  v35 = v18;
  v19 = *(a1 + 48);
  v32[2] = *(a1 + 32);
  v32[3] = v19;
  v20 = *(a1 + 80);
  v32[4] = *(a1 + 64);
  v32[5] = v20;
  v21 = *(a1 + 16);
  v32[0] = *a1;
  v32[1] = v21;
  result = sub_100004EDC(v32);
  if (result == 1 || ((v15 ^ v33) & 1) != 0)
  {
    v23 = *&v1[OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_titleLabelPlayingTrailingConstraint];
    if (v23)
    {
      v24 = *&v1[OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_titleLabelNotPlayingTrailingConstraint];
      if (v24)
      {
        v25 = v23;
        v26 = v24;
        [v25 setActive:v15];
        [v26 setActive:(v3[112] & 1) == 0];
      }
    }

    v27 = *&v1[OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_titleLabel];
    if (v3[112] == 1)
    {
      [v27 setTextAlignment:2];
      v28 = *&v1[OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_waveformPackageView];
      v29 = [objc_opt_self() suggestedRouteWaveformPackageStateOn];
      if (!v29)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = String._bridgeToObjectiveC()();
      }

      [v28 setGlyphState:v29];

      [v28 setAlpha:1.0];
    }

    else
    {
      [v27 setTextAlignment:1];
      v30 = *&v1[OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_waveformPackageView];
      v31 = [objc_opt_self() suggestedRouteWaveformPackageStateOff];
      if (!v31)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = String._bridgeToObjectiveC()();
      }

      [v30 setGlyphState:v31];

      [v30 setAlpha:0.0];
    }

    return [v1 invalidateIntrinsicContentSize];
  }

  if ((v14 & 1) == 0)
  {
    return [v1 invalidateIntrinsicContentSize];
  }

  return result;
}

id sub_100003920()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuggestedRouteBannerTitleView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

double variable initialization expression of LockScreenCoordinator.bottomBounds@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

id variable initialization expression of LockScreenCoordinator.wallpaperService()
{
  v0 = objc_allocWithZone(SBSWallpaperService);

  return [v0 init];
}

double variable initialization expression of LockScreenCoordinator.ambientLifecycleCancellable@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t type metadata accessor for SuggestedRouteBannerTitleView(uint64_t a1)
{
  result = qword_100070030;
  if (!qword_100070030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100003B84(uint64_t a1)
{
  sub_100004FB8(319, &qword_100070040, &type metadata for CGFloat, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

__n128 sub_100003C98(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100003CA8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003CC8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

__n128 sub_100003D18(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100003D24(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003D44(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_100003E60(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_100003E74(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003E94(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

double sub_100003F10@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100003F90(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

BOOL sub_10000401C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_100004078(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000040F4(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100004178@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

void *sub_100004224@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100004250@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_10000432C@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100004358@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100004D80(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100004398(uint64_t a1)
{
  v2 = sub_1000044E4(&qword_100070130, type metadata accessor for SBUISystemApertureElementIdentifier, &unk_1000440F8);
  v3 = sub_1000044E4(&qword_100070138, type metadata accessor for SBUISystemApertureElementIdentifier, &unk_1000440A0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000044E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100004530@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100004578(uint64_t a1)
{
  v2 = sub_1000044E4(&qword_1000702B0, type metadata accessor for NSKeyValueChangeKey, &unk_1000444D0);
  v3 = sub_1000044E4(&qword_1000702B8, type metadata accessor for NSKeyValueChangeKey, &unk_100044424);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

void *sub_100004634@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100004644()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100004680(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000046D4(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_100004748(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_100004938(uint64_t a1)
{
  v2 = a1;
  v3 = v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute;
  v4 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute + 176);
  v5 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute + 144);
  v62 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute + 160);
  v63 = v4;
  v6 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute + 176);
  v64 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute + 192);
  v7 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute + 112);
  v8 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute + 80);
  v58 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute + 96);
  v59 = v7;
  v9 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute + 112);
  v10 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute + 144);
  v60 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute + 128);
  v61 = v10;
  v11 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute + 48);
  v12 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute + 16);
  v54 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute + 32);
  v55 = v11;
  v13 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute + 48);
  v14 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute + 80);
  v56 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute + 64);
  v57 = v14;
  v15 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute + 16);
  v53[0] = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute);
  v53[1] = v15;
  v16 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute + 176);
  v76 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute + 160);
  v77 = v16;
  v78 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute + 192);
  v17 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute + 112);
  v72 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute + 96);
  v73 = v17;
  v18 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute + 144);
  v74 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute + 128);
  v75 = v18;
  v19 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute + 48);
  v68 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute + 32);
  v69 = v19;
  v20 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute + 80);
  v70 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute + 64);
  v71 = v20;
  v21 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute + 16);
  v66 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute);
  v67 = v21;
  v80[10] = v62;
  v80[11] = v6;
  v80[12] = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute + 192);
  v80[6] = v58;
  v80[7] = v9;
  v80[8] = v60;
  v80[9] = v5;
  v80[2] = v54;
  v80[3] = v13;
  v80[4] = v56;
  v80[5] = v8;
  v65 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute + 208);
  v79 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute + 208);
  v81 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_suggestedRoute + 208);
  v80[0] = v53[0];
  v80[1] = v12;
  v22 = *(a1 + 176);
  *(v3 + 160) = *(a1 + 160);
  *(v3 + 176) = v22;
  *(v3 + 192) = *(a1 + 192);
  *(v3 + 208) = *(a1 + 208);
  v23 = *(a1 + 112);
  *(v3 + 96) = *(a1 + 96);
  *(v3 + 112) = v23;
  v24 = *(a1 + 144);
  *(v3 + 128) = *(a1 + 128);
  *(v3 + 144) = v24;
  v25 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v25;
  v26 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v26;
  v27 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v27;
  sub_100004DB8(v53, v51);
  sub_100004DB8(v2, v51);
  sub_100004E14(v80);
  v28 = *(v3 + 176);
  v51[10] = *(v3 + 160);
  v51[11] = v28;
  v51[12] = *(v3 + 192);
  v52 = *(v3 + 208);
  v29 = *(v3 + 112);
  v51[6] = *(v3 + 96);
  v51[7] = v29;
  v30 = *(v3 + 144);
  v51[8] = *(v3 + 128);
  v51[9] = v30;
  v31 = *(v3 + 48);
  v51[2] = *(v3 + 32);
  v51[3] = v31;
  v32 = *(v3 + 80);
  v51[4] = *(v3 + 64);
  v51[5] = v32;
  v33 = *(v3 + 16);
  v51[0] = *v3;
  v51[1] = v33;
  sub_100004DB8(v51, v49);
  LOBYTE(v2) = sub_10001E874(v51, v53);
  sub_100004E14(v51);
  if ((v2 & 1) == 0)
  {
    v45 = v76;
    v46 = v77;
    v47 = v78;
    v48 = v79;
    v41 = v72;
    v42 = v73;
    v43 = v74;
    v44 = v75;
    v37 = v68;
    v38 = v69;
    v39 = v70;
    v40 = v71;
    v35 = v66;
    v36 = v67;
    nullsub_1();
    v49[10] = v45;
    v49[11] = v46;
    v49[12] = v47;
    v50 = v48;
    v49[6] = v41;
    v49[7] = v42;
    v49[8] = v43;
    v49[9] = v44;
    v49[2] = v37;
    v49[3] = v38;
    v49[4] = v39;
    v49[5] = v40;
    v49[0] = v35;
    v49[1] = v36;
    sub_1000035BC(v49);
  }

  return sub_100004E14(v53);
}

void sub_100004BA4()
{
  v1 = sub_100004E6C(&unk_100070140, &unk_100044310);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - v3;
  v5 = OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_titleLabel;
  *(v0 + v5) = sub_100002994();
  v6 = OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_waveformPackageView;
  v7 = [objc_allocWithZone(MRUCAPackageView) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v6) = v7;
  v8 = OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_leadingLayoutGuide;
  *(v0 + v8) = [objc_allocWithZone(UILayoutGuide) init];
  v9 = OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_trailingLayoutGuide;
  *(v0 + v9) = [objc_allocWithZone(UILayoutGuide) init];
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_titleLabelPlayingTrailingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_titleLabelNotPlayingTrailingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView_waveformPadding) = 0x4020000000000000;
  v10 = OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerTitleView__availableTitleWidth;
  v11[1] = 0;
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v10, v4, v1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100004D80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_100004E6C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

double sub_100004EB4(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_100004EDC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_100004EF4()
{
  result = qword_100070620;
  if (!qword_100070620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100070620);
  }

  return result;
}

void sub_100004FB8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

id sub_100005138()
{
  v1 = OBJC_IVAR____TtC13MediaRemoteUI40GroupSessionSystemApertureViewController____lazy_storage___labelStack;
  v2 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI40GroupSessionSystemApertureViewController____lazy_storage___labelStack);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI40GroupSessionSystemApertureViewController____lazy_storage___labelStack);
  }

  else
  {
    v4 = sub_10000519C(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10000519C(uint64_t a1)
{
  sub_100004E6C(&unk_100070270, qword_100045030);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100044520;
  v3 = *(a1 + OBJC_IVAR____TtC13MediaRemoteUI40GroupSessionSystemApertureViewController_titleLabel);
  v4 = *(a1 + OBJC_IVAR____TtC13MediaRemoteUI40GroupSessionSystemApertureViewController_subtitleLabel);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  v5 = objc_allocWithZone(UIStackView);
  sub_100006334(0, &qword_100071A90, UIView_ptr);
  v6 = v3;
  v7 = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = [v5 initWithArrangedSubviews:isa];

  [v9 setAxis:1];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v9;
}

unsigned __int8 *sub_1000052AC()
{
  v1 = OBJC_IVAR____TtC13MediaRemoteUI40GroupSessionSystemApertureViewController____lazy_storage___routeIcon;
  v2 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI40GroupSessionSystemApertureViewController____lazy_storage___routeIcon);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI40GroupSessionSystemApertureViewController____lazy_storage___routeIcon);
  }

  else
  {
    objc_opt_self();
    v4 = [swift_dynamicCastObjCClassUnconditional() routeType];
    v5 = objc_allocWithZone(type metadata accessor for RouteIconView());
    v6 = v0;
    v7 = sub_1000309D0(v4);
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = *(v0 + v1);
    *(v6 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_100005380()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() systemImageNamed:v0];

  v2 = [objc_allocWithZone(UIImageView) initWithImage:v1];
  [v2 setContentMode:1];
  v3 = [objc_opt_self() secondaryLabelColor];
  [v2 setTintColor:v3];

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v2;
}

id sub_100005474(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC13MediaRemoteUI40GroupSessionSystemApertureViewController_titleLabel;
  v6 = [objc_allocWithZone(UILabel) init];
  v7 = objc_opt_self();
  v8 = [v7 systemFontOfSize:14.0 weight:UIFontWeightSemibold];
  [v6 setFont:v8];

  *&v3[v5] = v6;
  v9 = OBJC_IVAR____TtC13MediaRemoteUI40GroupSessionSystemApertureViewController_subtitleLabel;
  v10 = [objc_allocWithZone(UILabel) init];
  v11 = [v7 systemFontOfSize:10.0];
  [v10 setFont:v11];

  v12 = [objc_opt_self() secondaryLabelColor];
  [v10 setTextColor:v12];

  *&v3[v9] = v10;
  *&v3[OBJC_IVAR____TtC13MediaRemoteUI40GroupSessionSystemApertureViewController____lazy_storage___labelStack] = 0;
  *&v3[OBJC_IVAR____TtC13MediaRemoteUI40GroupSessionSystemApertureViewController____lazy_storage___routeIcon] = 0;
  v13 = OBJC_IVAR____TtC13MediaRemoteUI40GroupSessionSystemApertureViewController_trailingIcon;
  *&v3[v13] = sub_100005380();
  *&v3[OBJC_IVAR____TtC13MediaRemoteUI40GroupSessionSystemApertureViewController_activeLayoutMode] = 1;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_delegate + 8] = 0;
  v14 = swift_unknownObjectWeakInit();
  v15 = &v3[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_requesterIdentifier];
  *v15 = 0xD000000000000017;
  v15[1] = 0x800000010004B7A0;
  v3[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_sendTapEventForAnyTapInsideView] = 1;
  v16 = &v3[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_idleTimerDuration];
  *v16 = 0;
  v16[8] = 1;
  *&v3[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_idleTimer] = 0;
  *&v3[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_configuration] = a1;
  *(v14 + 8) = a3;
  swift_unknownObjectWeakAssign();
  v21.receiver = v3;
  v21.super_class = type metadata accessor for BannerBaseViewController();
  v17 = a1;
  v18 = objc_msgSendSuper2(&v21, "initWithNibName:bundle:", 0, 0);
  [v18 setPreferredContentSize:{300.0, 70.0}];

  swift_unknownObjectRelease();
  return v18;
}

id sub_100005754()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC13MediaRemoteUI40GroupSessionSystemApertureViewController_titleLabel];
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  sub_100012C64();
  v3 = String._bridgeToObjectiveC()();

  [v2 setText:v3];

  v4 = *&v0[OBJC_IVAR____TtC13MediaRemoteUI40GroupSessionSystemApertureViewController_subtitleLabel];
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  sub_100012EE4();
  v5 = String._bridgeToObjectiveC()();

  [v4 setText:v5];

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  v8 = sub_100005138();
  [v7 addSubview:v8];

  result = [v1 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = result;
  v10 = sub_1000052AC();
  [v9 addSubview:v10];

  result = [v1 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = result;
  v12 = *&v1[OBJC_IVAR____TtC13MediaRemoteUI40GroupSessionSystemApertureViewController_trailingIcon];
  [result addSubview:v12];

  sub_100004E6C(&unk_100070270, qword_100045030);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100044530;
  result = [v1 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  v15 = [result SBUISA_systemApertureObstructedAreaLayoutGuide];

  v16 = [v15 bottomAnchor];
  v17 = OBJC_IVAR____TtC13MediaRemoteUI40GroupSessionSystemApertureViewController____lazy_storage___labelStack;
  v18 = [*&v1[OBJC_IVAR____TtC13MediaRemoteUI40GroupSessionSystemApertureViewController____lazy_storage___labelStack] topAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];

  *(v13 + 32) = v19;
  result = [v1 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20 = result;
  v21 = [result bottomAnchor];

  v22 = [*&v1[v17] bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:16.0];

  *(v13 + 40) = v23;
  v24 = OBJC_IVAR____TtC13MediaRemoteUI40GroupSessionSystemApertureViewController____lazy_storage___routeIcon;
  v25 = [*&v1[OBJC_IVAR____TtC13MediaRemoteUI40GroupSessionSystemApertureViewController____lazy_storage___routeIcon] trailingAnchor];
  v26 = [*&v1[v17] leadingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:-8.0];

  *(v13 + 48) = v27;
  v28 = [*&v1[v24] widthAnchor];
  v29 = [v28 constraintEqualToConstant:50.0];

  *(v13 + 56) = v29;
  v30 = [*&v1[v24] heightAnchor];
  v31 = [*&v1[v24] widthAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v13 + 64) = v32;
  v33 = [v12 leadingAnchor];
  v34 = [*&v1[v17] trailingAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v13 + 72) = v35;
  v36 = [v12 widthAnchor];
  v37 = [v36 constraintEqualToConstant:40.0];

  *(v13 + 80) = v37;
  v38 = [v12 heightAnchor];
  v39 = [v12 widthAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];

  *(v13 + 88) = v40;
  result = [v1 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v41 = result;
  v42 = [result topAnchor];

  v43 = [*&v1[v24] topAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];

  *(v13 + 96) = v44;
  result = [v1 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v45 = result;
  v46 = [result leadingAnchor];

  v47 = [*&v1[v24] leadingAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:-16.0];

  *(v13 + 104) = v48;
  result = [v1 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v49 = result;
  v50 = [result bottomAnchor];

  v51 = [*&v1[v24] bottomAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];

  *(v13 + 112) = v52;
  result = [v1 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v53 = result;
  v54 = [result topAnchor];

  v55 = [v12 topAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];

  *(v13 + 120) = v56;
  result = [v1 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v57 = result;
  v58 = [result trailingAnchor];

  v59 = [v12 trailingAnchor];
  v60 = [v58 constraintEqualToAnchor:v59 constant:16.0];

  *(v13 + 128) = v60;
  result = [v1 view];
  if (result)
  {
    v61 = result;
    v62 = objc_opt_self();
    v63 = [v61 bottomAnchor];

    v64 = [v12 bottomAnchor];
    v65 = [v63 constraintEqualToAnchor:v64];

    *(v13 + 136) = v65;
    sub_100006334(0, &qword_100070620, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v62 activateConstraints:isa];

    v67.receiver = v1;
    v67.super_class = type metadata accessor for GroupSessionSystemApertureViewController();
    return objc_msgSendSuper2(&v67, "viewDidLoad");
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1000061A8()
{
  v1 = v0 + OBJC_IVAR____TtC13MediaRemoteUI40GroupSessionSystemApertureViewController_presentableContext;

  return sub_10000630C(v1);
}

id sub_100006228()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroupSessionSystemApertureViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100006334(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_10000637C()
{
  v1 = OBJC_IVAR____TtC13MediaRemoteUI40GroupSessionSystemApertureViewController_titleLabel;
  v2 = [objc_allocWithZone(UILabel) init];
  v3 = objc_opt_self();
  v4 = [v3 systemFontOfSize:14.0 weight:UIFontWeightSemibold];
  [v2 setFont:v4];

  *(v0 + v1) = v2;
  v5 = OBJC_IVAR____TtC13MediaRemoteUI40GroupSessionSystemApertureViewController_subtitleLabel;
  v6 = [objc_allocWithZone(UILabel) init];
  v7 = [v3 systemFontOfSize:10.0];
  [v6 setFont:v7];

  v8 = [objc_opt_self() secondaryLabelColor];
  [v6 setTextColor:v8];

  *(v0 + v5) = v6;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI40GroupSessionSystemApertureViewController____lazy_storage___labelStack) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI40GroupSessionSystemApertureViewController____lazy_storage___routeIcon) = 0;
  v9 = OBJC_IVAR____TtC13MediaRemoteUI40GroupSessionSystemApertureViewController_trailingIcon;
  *(v0 + v9) = sub_100005380();
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI40GroupSessionSystemApertureViewController_activeLayoutMode) = 1;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100006558(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [*(v2 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkView) artworkImageView];
    [v5 bounds];

    [v4 bounds];
    v6 = objc_opt_self();
    v7 = [v6 currentSettings];
    [v7 lockScreenAPLRatio];

    v8 = [v6 currentSettings];
    [v8 lockScreenAPLTarget];
  }
}

void sub_100006684(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v2[OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_isTransitioningSize] == 1)
    {
      v4 = *&v2[OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_blackBackdrop];
      v6 = Strong;
      if (v2[OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_isAnimatedArtworkVisible])
      {
        [v2 insertSubview:v4 aboveSubview:Strong];
      }

      else
      {
        [v2 insertSubview:v4 belowSubview:Strong];
      }

      return;
    }
  }

  v5 = *&v2[OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_blackBackdrop];

  [v5 removeFromSuperview];
}

id sub_100006750(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkVisible;
  if (*(a1 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkVisible) != 1 || (v3 = [*(a1 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkView) layer], v4 = objc_msgSend(v3, "presentationLayer"), v3, v4) && (objc_msgSend(v4, "opacity"), v6 = v5, v4, v6 >= 1.0) || *(a1 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_isMotionDataReadyOrDue) != 1 || (v7 = 0.0, *(a1 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_previousMotionDataStateWasOverdue) == 1))
  {
    v7 = 1.0;
    if (*(a1 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_hidesRegularArtworkForMotionVisible))
    {
      v7 = 0.0;
    }
  }

  if (!*(a1 + v2))
  {
    v7 = 0.0;
  }

  [*(a1 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkView) setAlpha:v7];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = 1.0;
    if (!*(a1 + v2))
    {
      v9 = 0.0;
    }

    v10 = Strong;
    [Strong setAlpha:v9];
  }

  v11 = *(a1 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_blackBackdrop);
  v12 = 1.0;
  if (!*(a1 + v2))
  {
    v12 = 0.0;
  }

  return [v11 setAlpha:v12];
}

void sub_1000068D4(char a1)
{
  if ((a1 & 1) != 0 && (v1[OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_isMotionDataReadyOrDue] & 1) == 0)
  {
    v3 = *&v1[OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_animatedArtworkView];
    v4 = OBJC_IVAR____TtC13MediaRemoteUI19AnimatedArtworkView_hostingViewContainers;
    swift_beginAccess();
    v2 = *(*(v3 + v4) + 16) == 0;
  }

  else
  {
    v2 = 0;
  }

  v12 = &type metadata for Feature;
  v13 = sub_100007F94();
  v5 = isFeatureEnabled(_:)();
  sub_100007FE8(aBlock);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    if (v2)
    {
      v7 = objc_opt_self();
      v8 = swift_allocObject();
      *(v8 + 16) = sub_10000806C;
      *(v8 + 24) = v6;
      v13 = sub_1000080AC;
      v14 = v8;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100015D4C;
      v12 = &unk_10005DBF0;
      v9 = _Block_copy(aBlock);
      v10 = v1;

      [v7 animateWithDuration:v9 animations:0.15];

      _Block_release(v9);
    }

    else
    {
      sub_100006750(v1);
    }
  }
}

void sub_100006AA0()
{
  v15 = &type metadata for Feature;
  v16 = sub_100007F94();
  v1 = isFeatureEnabled(_:)();
  v2 = sub_100007FE8(v14);
  if (v1)
  {
    v4 = v0[OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_isDimmed];

    sub_10003580C(v4);
  }

  if (v0[OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_isDimmed] == 1)
  {
    sub_1000076B0(v2, v3);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = objc_opt_self();
      [objc_opt_self() defaultAnimationDuration];
      v9 = v8;
      v10 = swift_allocObject();
      *(v10 + 16) = v0;
      *(v10 + 24) = v6;
      v16 = sub_1000082D0;
      v17 = v10;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 1107296256;
      v14[2] = sub_100015D4C;
      v15 = &unk_10005DC90;
      v11 = _Block_copy(v14);
      v12 = v0;
      v13 = v6;

      [v7 animateWithDuration:v11 animations:v9];
      _Block_release(v11);
    }
  }
}

void sub_100006C68(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkVisible) == 1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkView);
    if ((*(v1 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_isDimmed) & 1) == 0)
    {
      *&v6.a = 0x3FF0000000000000uLL;
      v6.c = 0.0;
      v6.d = 1.0;
      *&v6.tx = 0uLL;
      [v3 setTransform:&v6];
      goto LABEL_7;
    }

    v4 = 0.98;
    v5 = 0.98;
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkView);
    v4 = 0.5;
    v5 = 0.5;
  }

  CGAffineTransformMakeScale(&v6, v4, v5);
  [v3 setTransform:&v6];
LABEL_7:
  *(v1 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_isDimmed) = a1 & 1;
  sub_100006AA0();
}

id sub_100006D48()
{
  *&v15.d = &type metadata for Feature;
  v1 = sub_100007F94();
  *&v15.tx = v1;
  v2 = isFeatureEnabled(_:)();
  sub_100007FE8(&v15);
  if ((v2 & 1) == 0)
  {
    v6 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkView);
    v9 = OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkVisible;
    if (*(v0 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkVisible))
    {
      v10 = 1.0;
    }

    else
    {
      v10 = 0.0;
    }

    [*(v0 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkView) setAlpha:v10];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      if (*(v0 + v9))
      {
        v12 = 1.0;
      }

      else
      {
        v12 = 0.0;
      }

      v13 = Strong;
      [Strong setAlpha:v12];
    }

    if (*(v0 + v9) == 1)
    {
      if (*(v0 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_isDimmed))
      {
        goto LABEL_8;
      }

LABEL_19:
      *&v15.a = 0x3FF0000000000000uLL;
      v15.c = 0.0;
      v15.d = 1.0;
      *&v15.tx = 0uLL;
      return [v6 setTransform:&v15];
    }

LABEL_21:
    v7 = 0.5;
    v8 = 0.5;
    goto LABEL_22;
  }

  *&v15.d = &type metadata for Feature;
  *&v15.tx = v1;
  v3 = isFeatureEnabled(_:)();
  sub_100007FE8(&v15);
  if (v3)
  {
    sub_100006750(v0);
  }

  v4 = OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkVisible;
  v5 = 0.0;
  if (*(v0 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkVisible))
  {
    v5 = 1.0;
  }

  [*(v0 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_animatedArtworkView) setAlpha:v5];
  if (*(v0 + v4) != 1)
  {
    v6 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkView);
    goto LABEL_21;
  }

  v6 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkView);
  if ((*(v0 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_isDimmed) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_8:
  v7 = 0.98;
  v8 = 0.98;
LABEL_22:
  CGAffineTransformMakeScale(&v15, v7, v8);
  return [v6 setTransform:&v15];
}

char *sub_100006F20(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_animatedArtworkView;
  type metadata accessor for AnimatedArtworkView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4[OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_isOnScreen] = 0;
  v10 = &v4[OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_topGap];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v4[OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_bottomGap];
  *v11 = 0;
  v11[8] = 1;
  v12 = &v4[OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_platterViewWidth];
  *v12 = 0;
  v12[8] = 1;
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_blackBackdrop;
  v14 = [objc_allocWithZone(UIView) init];
  v15 = [objc_opt_self() blackColor];
  [v14 setBackgroundColor:v15];

  *&v4[v13] = v14;
  v4[OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_isTransitioningSize] = 0;
  v4[OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_hidesRegularArtworkForMotionVisible] = 0;
  v4[OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_isTransitioningBetweenAnimatedArtworks] = 0;
  v4[OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_isContentObscured] = 0;
  v4[OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_isAnimatedArtworkVisible] = 0;
  *&v4[OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_motionDataLoaderState] = 0;
  v4[OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_previousMotionDataStateWasOverdue] = 0;
  v4[OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_isMotionDataReadyOrDue] = 0;
  v4[OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_isDimmed] = 0;
  v4[OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkVisible] = 0;
  v16 = [objc_allocWithZone(MRUArtworkView) init];
  [v16 setUseVisualEffectPlaceholder:1];
  [v16 setStyle:3];
  [v16 setShowPlaceholder:0];
  *&v4[OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkView] = v16;
  v22.receiver = v4;
  v22.super_class = type metadata accessor for CoverSheetBackgroundView();
  v17 = v16;
  v18 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  [v18 addSubview:v17];
  [v17 addObserver:v18];
  v21[3] = &type metadata for Feature;
  v21[4] = sub_100007F94();
  LOBYTE(v15) = isFeatureEnabled(_:)();
  sub_100007FE8(v21);
  if (v15)
  {
    v19 = *&v18[OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_animatedArtworkView];
    [v18 addSubview:v19];
  }

  else
  {
    v19 = v17;
    v17 = v18;
  }

  return v18;
}

id sub_10000723C(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CoverSheetBackgroundView();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [v1 bounds];
    [v3 setFrame:?];
  }

  sub_1000073A0();
  v7[3] = &type metadata for Feature;
  v7[4] = sub_100007F94();
  v4 = isFeatureEnabled(_:)();
  result = sub_100007FE8(v7);
  if (v4)
  {
    v6 = *&v1[OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_animatedArtworkView];
    [v1 bounds];
    return [v6 setFrame:?];
  }

  return result;
}

void sub_1000073A0()
{
  if (v0[OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_topGap + 8] & 1) != 0 || (v0[OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_bottomGap + 8] & 1) != 0 || (v0[OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_platterViewWidth + 8])
  {
    return;
  }

  sub_1000075EC(v0);
  [v0 bounds];
  UIRectInset();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *&v0[OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkView];
  v10 = [v9 artworkImage];
  if (v10)
  {
    v11 = v10;
    [v10 size];
    if (v12 * v13 > 0.0 && vabdd_f64(1.0, v12 / v13) >= 0.03)
    {
      v17.origin.x = v2;
      v17.origin.y = v4;
      v17.size.width = v6;
      v17.size.height = v8;
      CGRectGetWidth(v17);
      [v11 size];
      v18.origin.x = v2;
      v18.origin.y = v4;
      v18.size.width = v6;
      v18.size.height = v8;
      CGRectGetHeight(v18);
      [v11 size];
      [v11 size];
      [v11 size];

      goto LABEL_10;
    }
  }

  v15.origin.x = v2;
  v15.origin.y = v4;
  v15.size.width = v6;
  v15.size.height = v8;
  CGRectGetWidth(v15);
  v16.origin.x = v2;
  v16.origin.y = v4;
  v16.size.width = v6;
  v16.size.height = v8;
  CGRectGetHeight(v16);
LABEL_10:
  UIRectCenteredRect();

  [v9 setFrame:?];
}

void sub_1000075EC(void *a1)
{
  v3[3] = &type metadata for Feature;
  v3[4] = sub_100007F94();
  v2 = isFeatureEnabled(_:)();
  sub_100007FE8(v3);
  [a1 bounds];
  CGRectGetWidth(v4);
  if (v2)
  {
    [a1 bounds];
    CGRectGetWidth(v5);
  }
}

void sub_1000076B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong layer];
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 valueForKeyPath:v7];

    if (v8)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_1000080EC(&v38);
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
      sub_1000080EC(&v38);

      v9 = [objc_opt_self() currentSettings];
      [v9 lockScreenAPLRatio];

      sub_100006558(v10, v11);
      v12 = sub_100008154();
      v6 = [v5 layer];
      sub_100007B34(v12);
    }

    v13 = *&v3[OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkView];
    v14 = [v13 artworkImageView];
    v15 = [v14 layer];

    v16 = String._bridgeToObjectiveC()();
    v17 = [v15 valueForKeyPath:v16];

    if (v17)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_1000080EC(&v38);
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
      sub_1000080EC(&v38);

      sub_100006558(v18, v19);
      v20 = sub_100008154();
      v21 = [v13 artworkImageView];
      v22 = [v21 layer];

      sub_100007B34(v20);
    }

    v23 = *&v3[OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_animatedArtworkView];
    v24 = [v23 layer];
    v25 = String._bridgeToObjectiveC()();
    v26 = [v24 valueForKeyPath:v25];

    if (v26)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_1000080EC(&v38);
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
      sub_1000080EC(&v38);

      *(&v39 + 1) = &type metadata for Feature;
      v40 = sub_100007F94();
      v27 = isFeatureEnabled(_:)();
      sub_100007FE8(&v38);
      if (v27)
      {
        v28 = [objc_opt_self() currentSettings];
        [v28 lockScreenAPLTarget];

        v29 = sub_100008154();
        v30 = [v23 layer];
        sub_100007B34(v29);
      }
    }

    v31 = objc_opt_self();
    [objc_opt_self() defaultAnimationDuration];
    v33 = v32;
    v34 = swift_allocObject();
    *(v34 + 16) = v3;
    *(v34 + 24) = v5;
    v40 = sub_100008254;
    v41 = v34;
    *&v38 = _NSConcreteStackBlock;
    *(&v38 + 1) = 1107296256;
    *&v39 = sub_100015D4C;
    *(&v39 + 1) = &unk_10005DC40;
    v35 = _Block_copy(&v38);
    v36 = v3;
    v37 = v5;

    [v31 animateWithDuration:v35 animations:v33];
    _Block_release(v35);
  }
}

void sub_100007B34(void *a1)
{
  v3 = [v1 filters];
  if (v3)
  {
    v4 = v3;
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v11 = sub_100008274();
  *&v10 = a1;
  v6 = a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1000275A8(0, *(v5 + 2) + 1, 1, v5);
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1000275A8((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  sub_1000082C0(&v10, &v5[32 * v8 + 32]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setFilters:{isa, v10}];
}

void sub_100007C64(uint64_t a1, void *a2)
{
  if (*(a1 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkVisible) != 1)
  {
    v4 = *(a1 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkView);
    v5 = 0.5;
    v6 = 0.5;
    goto LABEL_5;
  }

  v4 = *(a1 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkView);
  if (*(a1 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_isDimmed))
  {
    v5 = 0.98;
    v6 = 0.98;
LABEL_5:
    CGAffineTransformMakeScale(&v17, v5, v6);
    [v4 setTransform:&v17];
    goto LABEL_7;
  }

  *&v17.a = 0x3FF0000000000000uLL;
  v17.c = 0.0;
  v17.d = 1.0;
  *&v17.tx = 0uLL;
  [v4 setTransform:&v17];
LABEL_7:
  v7 = [v4 artworkImageView];
  v8 = [v7 layer];

  isa = Float._bridgeToObjectiveC()().super.super.isa;
  v10 = String._bridgeToObjectiveC()();
  [v8 setValue:isa forKeyPath:v10];

  v11 = [a2 layer];
  v12 = Float._bridgeToObjectiveC()().super.super.isa;
  v13 = String._bridgeToObjectiveC()();
  [v11 setValue:v12 forKeyPath:v13];

  *&v17.d = &type metadata for Feature;
  *&v17.tx = sub_100007F94();
  LOBYTE(v11) = isFeatureEnabled(_:)();
  sub_100007FE8(&v17);
  if (v11)
  {
    v14 = [*(a1 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_animatedArtworkView) layer];
    v15 = Float._bridgeToObjectiveC()().super.super.isa;
    v16 = String._bridgeToObjectiveC()();
    [v14 setValue:v15 forKeyPath:v16];
  }
}

id sub_100007EC0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CoverSheetBackgroundView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100007F94()
{
  result = qword_100070AB0;
  if (!qword_100070AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070AB0);
  }

  return result;
}

uint64_t sub_100007FE8(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100008034()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008074()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000080D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000080EC(uint64_t a1)
{
  v2 = sub_100004E6C(&qword_100070810, &qword_1000445E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100008154()
{
  v0 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterLimitAveragePixelLuminance];
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  [v0 setValue:isa forKey:kCAFilterInputAmount];

  v2 = String._bridgeToObjectiveC()();
  [v0 setName:v2];

  return v0;
}

uint64_t sub_100008214()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100008274()
{
  result = qword_100070818;
  if (!qword_100070818)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100070818);
  }

  return result;
}

_OWORD *sub_1000082C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1000082F0(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

double sub_100008318()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

char *sub_10000838C(uint64_t a1, uint64_t a2)
{
  v79 = a2;
  v78 = sub_100004E6C(&unk_100070140, &unk_100044310);
  v4 = *(v78 - 1);
  __chkstk_darwin(v78);
  v6 = &v77 - v5;
  v7 = OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_activityRouteView;
  v8 = [objc_allocWithZone(MRUActivityRouteView) init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2[v7] = v8;
  v9 = OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_routeLabel;
  v10 = [objc_allocWithZone(UILabel) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2[v9] = v10;
  v11 = OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_waveformPackageView;
  v12 = [objc_allocWithZone(MRUCAPackageView) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2[v11] = v12;
  v13 = OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_topLabel;
  v14 = [objc_allocWithZone(UILabel) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2[v13] = v14;
  v15 = OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_bottomLabel;
  v16 = [objc_allocWithZone(UILabel) init];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2[v15] = v16;
  v17 = OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_actionButton;
  v18 = [objc_opt_self() buttonWithType:0];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2[v17] = v18;
  v19 = OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_topLabelLayoutGuide;
  *&v2[v19] = [objc_allocWithZone(UILayoutGuide) init];
  *&v2[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_topLabelPlayingTrailingConstraint] = 0;
  *&v2[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_routeLabelPlayingWidthConstraint] = 0;
  *&v2[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_routeLabelNotPlayingTrailingConstraint] = 0;
  v20 = &v2[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_waveformPackageStateNameOn];
  *v20 = 28239;
  *(v20 + 1) = 0xE200000000000000;
  v21 = &v2[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_waveformPackageStateNameOff];
  *v21 = 6710863;
  *(v21 + 1) = 0xE300000000000000;
  v22 = OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView__availableTitleWidth;
  *&v83[0] = 0;
  Published.init(initialValue:)();
  (*(v4 + 32))(&v2[v22], v6, v78);
  v23 = &v2[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute];
  v24 = *(a1 + 176);
  *(v23 + 10) = *(a1 + 160);
  *(v23 + 11) = v24;
  *(v23 + 12) = *(a1 + 192);
  *(v23 + 26) = *(a1 + 208);
  v25 = *(a1 + 112);
  *(v23 + 6) = *(a1 + 96);
  *(v23 + 7) = v25;
  v26 = *(a1 + 144);
  *(v23 + 8) = *(a1 + 128);
  *(v23 + 9) = v26;
  v27 = *(a1 + 48);
  *(v23 + 2) = *(a1 + 32);
  *(v23 + 3) = v27;
  v28 = *(a1 + 80);
  *(v23 + 4) = *(a1 + 64);
  *(v23 + 5) = v28;
  v29 = *(a1 + 16);
  *v23 = *a1;
  *(v23 + 1) = v29;
  sub_100004DB8(a1, v83);
  v30 = type metadata accessor for SuggestedRouteSystemApertureView(0);
  v82.receiver = v2;
  v82.super_class = v30;
  v31 = objc_msgSendSuper2(&v82, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v32 = *&v31[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_topLabelLayoutGuide];
  v33 = v31;
  [v33 addLayoutGuide:v32];
  [v33 addSubview:*&v33[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_activityRouteView]];
  v34 = OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_actionButton;
  [*&v33[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_actionButton] setPreferredSymbolConfiguration:*(a1 + 96) forImageInState:0];
  LODWORD(v35) = 1148846080;
  [*&v33[v34] setContentHuggingPriority:0 forAxis:v35];
  v77 = v34;
  [v33 addSubview:*&v33[v34]];
  v36 = OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_routeLabel;
  v37 = *&v33[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_routeLabel];
  v38 = objc_opt_self();
  v39 = v37;
  v40 = [v38 mru_suggestedRouteActivityTitleFont];
  [v39 setFont:v40];

  v41 = *&v33[v36];
  v42 = objc_opt_self();
  v43 = v41;
  v78 = v42;
  v44 = [v42 whiteColor];
  [v43 setTextColor:v44];

  [v33 addSubview:*&v33[v36]];
  v45 = OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_waveformPackageView;
  v46 = *&v33[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_waveformPackageView];
  v47 = objc_opt_self();
  v48 = v46;
  v49 = [v47 suggestedRouteWaveformPackageName];
  if (!v49)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = String._bridgeToObjectiveC()();
  }

  v50 = [objc_opt_self() packageNamed:v49];

  [v48 setAsset:v50];
  [*&v33[v45] setScale:0.3017];
  [v33 addSubview:*&v33[v45]];
  v51 = OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_topLabel;
  v52 = *&v33[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_topLabel];
  v53 = [v38 mru_suggestedRouteActivityTitleFont];
  [v52 setFont:v53];

  v54 = *&v33[v51];
  v55 = v78;
  v56 = [v78 secondaryLabelColor];
  [v54 setTextColor:v56];

  v57 = *&v33[v51];
  [v33 alpha];
  v59 = v58;

  [v57 setAlpha:v59];
  [v33 addSubview:*&v33[v51]];
  v60 = OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_bottomLabel;
  v61 = *&v33[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_bottomLabel];
  v62 = [v38 mru_suggestedRouteActivitySubtitleFont];
  [v61 setFont:v62];

  v63 = *&v33[v60];
  v64 = [v55 secondaryLabelColor];
  [v63 setTextColor:v64];

  [v33 addSubview:*&v33[v60]];
  v65 = objc_allocWithZone(UIColor);
  v66 = v33;
  v67 = [v65 initWithWhite:0.01 alpha:1.0];
  [v66 setBackgroundColor:v67];

  v68 = String._bridgeToObjectiveC()();
  [v66 setAccessibilityIdentifier:v68];

  objc_opt_self();
  v69 = swift_dynamicCastObjCClass();
  if (v69)
  {
    v71 = v69;
    swift_unknownObjectRetain();
    if ([v71 bannerType] == 1 || objc_msgSend(v71, "bannerType") == 4)
    {
      v72 = v77;
      v73 = *&v33[v77];
      v74 = [v55 systemCyanColor];
      v75 = [v74 colorWithAlphaComponent:0.3];

      [v73 setBackgroundColor:v75];
      [*&v33[v72] setClipsToBounds:1];
      [*&v33[v72] _setCornerRadius:25.0];
    }

    swift_unknownObjectRelease();
  }

  sub_100008D30(v70);
  sub_100004EB4(v80);
  v83[10] = v80[10];
  v83[11] = v80[11];
  v83[12] = v80[12];
  v84 = v81;
  v83[6] = v80[6];
  v83[7] = v80[7];
  v83[8] = v80[8];
  v83[9] = v80[9];
  v83[2] = v80[2];
  v83[3] = v80[3];
  v83[4] = v80[4];
  v83[5] = v80[5];
  v83[0] = v80[0];
  v83[1] = v80[1];
  sub_100009938(v83, 0);
  swift_unknownObjectRelease();
  sub_100004E14(a1);

  return v66;
}

void sub_100008D30(double a1)
{
  v2 = *&v1[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_routeLabel];
  LODWORD(a1) = 1148846080;
  [v2 setContentHuggingPriority:0 forAxis:a1];
  LODWORD(v3) = 1148846080;
  [v2 setContentHuggingPriority:1 forAxis:v3];
  v4 = v2;
  LODWORD(v5) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v5];
  v6 = *&v1[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_waveformPackageView];
  LODWORD(v7) = 1148846080;
  [v6 setContentHuggingPriority:0 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [v6 setContentCompressionResistancePriority:0 forAxis:v8];
  v98 = *&v1[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_topLabel];
  v9 = [v98 trailingAnchor];
  v10 = *&v1[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_actionButton];
  v11 = [v10 leadingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11 constant:-8.0];

  v13 = *&v1[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_topLabelPlayingTrailingConstraint];
  *&v1[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_topLabelPlayingTrailingConstraint] = v12;

  v14 = [v4 widthAnchor];
  v15 = *&v1[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_topLabelLayoutGuide];
  v16 = [v15 widthAnchor];
  v17 = [v14 constraintLessThanOrEqualToAnchor:v16 multiplier:0.5];

  v18 = *&v1[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_routeLabelPlayingWidthConstraint];
  *&v1[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_routeLabelPlayingWidthConstraint] = v17;

  v19 = [v4 trailingAnchor];
  v20 = [v10 leadingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:-8.0];

  v22 = *&v1[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_routeLabelNotPlayingTrailingConstraint];
  *&v1[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_routeLabelNotPlayingTrailingConstraint] = v21;

  sub_100004E6C(&unk_100070270, qword_100045030);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100044600;
  v24 = [v15 leadingAnchor];
  v25 = *&v1[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_activityRouteView];
  v26 = [v25 trailingAnchor];
  v27 = [v24 constraintEqualToAnchor:v26 constant:8.0];

  *(v23 + 32) = v27;
  v28 = [v15 trailingAnchor];
  v29 = [v10 leadingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:-8.0];

  *(v23 + 40) = v30;
  v31 = [v25 heightAnchor];
  v32 = [v1 heightAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 multiplier:0.707106781];

  *(v23 + 48) = v33;
  v34 = [v25 leadingAnchor];
  v35 = [v1 leadingAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:12.0];

  *(v23 + 56) = v36;
  v37 = [v25 centerYAnchor];
  v38 = [v1 centerYAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];

  *(v23 + 64) = v39;
  v40 = [v25 widthAnchor];
  v41 = [v25 heightAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];

  *(v23 + 72) = v42;
  v43 = [v10 leadingAnchor];
  v44 = [v1 SBUISA_systemApertureObstructedAreaLayoutGuide];
  v45 = [v44 trailingAnchor];

  v46 = [v43 constraintGreaterThanOrEqualToAnchor:v45 constant:8.0];
  *(v23 + 80) = v46;
  v47 = [v10 trailingAnchor];
  v48 = [v1 trailingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:-16.0];

  *(v23 + 88) = v49;
  v50 = [v10 topAnchor];
  v51 = [v1 topAnchor];
  v52 = [v50 constraintEqualToAnchor:v51 constant:17.0];

  *(v23 + 96) = v52;
  v53 = [v10 bottomAnchor];
  v54 = [v1 bottomAnchor];
  v55 = [v53 constraintEqualToAnchor:v54 constant:-17.0];

  *(v23 + 104) = v55;
  v56 = [v10 widthAnchor];
  v57 = [v10 heightAnchor];
  v58 = [v56 constraintEqualToAnchor:v57];

  *(v23 + 112) = v58;
  v59 = [v10 widthAnchor];
  v60 = [v59 constraintEqualToConstant:50.0];

  *(v23 + 120) = v60;
  v61 = [v4 _tightBoundingBoxLayoutGuide];
  v62 = [v61 topAnchor];

  v63 = [v1 SBUISA_systemApertureObstructedAreaLayoutGuide];
  v64 = [v63 bottomAnchor];

  v65 = [v62 constraintEqualToAnchor:v64];
  *(v23 + 128) = v65;
  v66 = [v4 leadingAnchor];
  v67 = [v25 trailingAnchor];
  v68 = [v66 constraintEqualToAnchor:v67 constant:8.0];

  *(v23 + 136) = v68;
  v69 = [v4 trailingAnchor];
  v70 = [v6 leadingAnchor];
  v71 = [v69 constraintEqualToAnchor:v70 constant:-8.0];

  *(v23 + 144) = v71;
  v72 = [v6 centerYAnchor];
  v73 = [v4 centerYAnchor];
  v74 = [v72 constraintEqualToAnchor:v73];

  *(v23 + 152) = v74;
  v75 = [v6 topAnchor];
  v76 = [v1 SBUISA_systemApertureObstructedAreaLayoutGuide];
  v77 = [v76 bottomAnchor];

  v78 = [v75 constraintEqualToAnchor:v77];
  *(v23 + 160) = v78;
  v79 = [v98 _tightBoundingBoxLayoutGuide];
  v80 = [v79 topAnchor];

  v81 = [v1 SBUISA_systemApertureObstructedAreaLayoutGuide];
  v82 = [v81 bottomAnchor];

  v83 = [v80 constraintEqualToAnchor:v82];
  *(v23 + 168) = v83;
  v84 = [v98 leadingAnchor];
  v85 = [v6 trailingAnchor];
  v86 = [v84 constraintEqualToAnchor:v85 constant:8.0];

  *(v23 + 176) = v86;
  v87 = *&v1[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_bottomLabel];
  v88 = [v87 leadingAnchor];
  v89 = [v25 trailingAnchor];
  v90 = [v88 constraintEqualToAnchor:v89 constant:8.0];

  *(v23 + 184) = v90;
  v91 = [v87 trailingAnchor];
  v92 = [v10 leadingAnchor];
  v93 = [v91 constraintEqualToAnchor:v92 constant:-8.0];

  *(v23 + 192) = v93;
  v94 = [v87 firstBaselineAnchor];
  v95 = [v1 bottomAnchor];
  v96 = [v94 constraintEqualToAnchor:v95 constant:-17.0];

  *(v23 + 200) = v96;
  v97 = objc_opt_self();
  sub_100004EF4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v97 activateConstraints:isa];
}

void sub_100009938(uint64_t a1, char a2)
{
  v5 = *&v2[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_topLabelPlayingTrailingConstraint];
  if (v5)
  {
    [v5 setActive:v2[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 112]];
  }

  v6 = *&v2[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_routeLabelPlayingWidthConstraint];
  if (v6)
  {
    [v6 setActive:v2[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 112]];
  }

  v7 = *&v2[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_routeLabelNotPlayingTrailingConstraint];
  if (v7)
  {
    [v7 setActive:(v2[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 112] & 1) == 0];
  }

  v8 = *&v2[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_actionButton];
  v9 = &v2[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute];
  [v8 setPreferredSymbolConfiguration:*&v2[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 96] forImageInState:0];

  v10 = String._bridgeToObjectiveC()();

  v11 = [objc_opt_self() _systemImageNamed:v10];

  [v8 setImage:v11 forState:0];
  v12 = *&v2[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_routeLabel];

  v13 = String._bridgeToObjectiveC()();

  [v12 setText:v13];

  v14 = *&v2[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_topLabel];
  if (*(v9 + 16))
  {

    v15 = String._bridgeToObjectiveC()();
  }

  else
  {
    v15 = 0;
  }

  [v14 setText:v15];

  v16 = *&v2[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_bottomLabel];
  if (*(v9 + 8))
  {

    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  [v16 setText:v17];

  v18 = v9[112];
  v19 = *(a1 + 176);
  v51 = *(a1 + 160);
  v52 = v19;
  v53 = *(a1 + 192);
  v54 = *(a1 + 208);
  v20 = *(a1 + 112);
  v47[6] = *(a1 + 96);
  v48 = v20;
  v21 = *(a1 + 144);
  v49 = *(a1 + 128);
  v50 = v21;
  v22 = *(a1 + 48);
  v47[2] = *(a1 + 32);
  v47[3] = v22;
  v23 = *(a1 + 80);
  v47[4] = *(a1 + 64);
  v47[5] = v23;
  v24 = *(a1 + 16);
  v47[0] = *a1;
  v47[1] = v24;
  if (sub_100004EDC(v47) == 1 || ((v18 ^ v48) & 1) != 0)
  {
    if (v18)
    {
      v25 = 1.0;
    }

    else
    {
      v25 = 0.0;
    }

    v26 = swift_allocObject();
    *(v26 + 16) = v2;
    *(v26 + 24) = v25;
    if (a2)
    {
      if (v18)
      {
        v27 = v9[112];
        v28 = v2;
        [v14 setMarqueeEnabled:v27];
        [v28 layoutIfNeeded];
      }

      else
      {
        v31 = v2;
      }

      v32 = objc_opt_self();
      v33 = swift_allocObject();
      *(v33 + 16) = sub_10000A678;
      *(v33 + 24) = v26;
      v45 = sub_1000080AC;
      v46 = v33;
      v41 = _NSConcreteStackBlock;
      v42 = 1107296256;
      v43 = sub_100015D4C;
      v44 = &unk_10005DD08;
      v34 = _Block_copy(&v41);

      v35 = swift_allocObject();
      *(v35 + 16) = v18;
      *(v35 + 24) = v2;
      v45 = sub_10000A76C;
      v46 = v35;
      v41 = _NSConcreteStackBlock;
      v42 = 1107296256;
      v43 = sub_10002E860;
      v44 = &unk_10005DD58;
      v36 = _Block_copy(&v41);
      v37 = v2;

      [v32 animateWithDuration:v34 animations:v36 completion:0.375];
      _Block_release(v36);
      _Block_release(v34);
      if ((v18 & 1) == 0)
      {
        v38 = swift_allocObject();
        *(v38 + 16) = v37;
        v45 = sub_10000A7DC;
        v46 = v38;
        v41 = _NSConcreteStackBlock;
        v42 = 1107296256;
        v43 = sub_100015D4C;
        v44 = &unk_10005DDA8;
        v39 = _Block_copy(&v41);
        v37 = v37;

        [v32 animateWithDuration:0 delay:v39 options:0 animations:0.25 completion:0.25];
        _Block_release(v39);
      }

      v30 = *&v37[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_waveformPackageView];
    }

    else
    {
      v29 = v2;
      [v14 setAlpha:v25];
      v30 = *&v29[OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_waveformPackageView];
      [v30 setAlpha:v25];
      [v14 setMarqueeEnabled:v9[112]];
    }

    v40 = String._bridgeToObjectiveC()();

    [v30 setGlyphState:v40];
  }
}

id sub_100009F94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuggestedRouteSystemApertureView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SuggestedRouteSystemApertureView(uint64_t a1)
{
  result = qword_1000708B8;
  if (!qword_1000708B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000A1B8(uint64_t a1)
{
  sub_10000A288();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10000A288()
{
  if (!qword_100070040)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100070040);
    }
  }
}

double sub_10000A2D8@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10000A358(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_10000A3D0(uint64_t a1)
{
  v2 = a1;
  v3 = v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute;
  v4 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 176);
  v5 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 144);
  v62 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 160);
  v63 = v4;
  v6 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 176);
  v64 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 192);
  v7 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 112);
  v8 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 80);
  v58 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 96);
  v59 = v7;
  v9 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 112);
  v10 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 144);
  v60 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 128);
  v61 = v10;
  v11 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 48);
  v12 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 16);
  v54 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 32);
  v55 = v11;
  v13 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 48);
  v14 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 80);
  v56 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 64);
  v57 = v14;
  v15 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 16);
  v53[0] = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute);
  v53[1] = v15;
  v16 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 176);
  v76 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 160);
  v77 = v16;
  v78 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 192);
  v17 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 112);
  v72 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 96);
  v73 = v17;
  v18 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 144);
  v74 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 128);
  v75 = v18;
  v19 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 48);
  v68 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 32);
  v69 = v19;
  v20 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 80);
  v70 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 64);
  v71 = v20;
  v21 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 16);
  v66 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute);
  v67 = v21;
  v80[10] = v62;
  v80[11] = v6;
  v80[12] = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 192);
  v80[6] = v58;
  v80[7] = v9;
  v80[8] = v60;
  v80[9] = v5;
  v80[2] = v54;
  v80[3] = v13;
  v80[4] = v56;
  v80[5] = v8;
  v65 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 208);
  v79 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 208);
  v81 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 208);
  v80[0] = v53[0];
  v80[1] = v12;
  v22 = *(a1 + 176);
  *(v3 + 160) = *(a1 + 160);
  *(v3 + 176) = v22;
  *(v3 + 192) = *(a1 + 192);
  *(v3 + 208) = *(a1 + 208);
  v23 = *(a1 + 112);
  *(v3 + 96) = *(a1 + 96);
  *(v3 + 112) = v23;
  v24 = *(a1 + 144);
  *(v3 + 128) = *(a1 + 128);
  *(v3 + 144) = v24;
  v25 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v25;
  v26 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v26;
  v27 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v27;
  sub_100004DB8(v53, v51);
  sub_100004DB8(v2, v51);
  sub_100004E14(v80);
  v28 = *(v3 + 176);
  v51[10] = *(v3 + 160);
  v51[11] = v28;
  v51[12] = *(v3 + 192);
  v52 = *(v3 + 208);
  v29 = *(v3 + 112);
  v51[6] = *(v3 + 96);
  v51[7] = v29;
  v30 = *(v3 + 144);
  v51[8] = *(v3 + 128);
  v51[9] = v30;
  v31 = *(v3 + 48);
  v51[2] = *(v3 + 32);
  v51[3] = v31;
  v32 = *(v3 + 80);
  v51[4] = *(v3 + 64);
  v51[5] = v32;
  v33 = *(v3 + 16);
  v51[0] = *v3;
  v51[1] = v33;
  sub_100004DB8(v51, v49);
  LOBYTE(v2) = sub_10001E874(v51, v53);
  sub_100004E14(v51);
  if ((v2 & 1) == 0)
  {
    v45 = v76;
    v46 = v77;
    v47 = v78;
    v48 = v79;
    v41 = v72;
    v42 = v73;
    v43 = v74;
    v44 = v75;
    v37 = v68;
    v38 = v69;
    v39 = v70;
    v40 = v71;
    v35 = v66;
    v36 = v67;
    nullsub_1();
    v49[10] = v45;
    v49[11] = v46;
    v49[12] = v47;
    v50 = v48;
    v49[6] = v41;
    v49[7] = v42;
    v49[8] = v43;
    v49[9] = v44;
    v49[2] = v37;
    v49[3] = v38;
    v49[4] = v39;
    v49[5] = v40;
    v49[0] = v35;
    v49[1] = v36;
    sub_100009938(v49, 1);
  }

  return sub_100004E14(v53);
}

uint64_t sub_10000A640()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10000A678()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  [*(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_topLabel) setAlpha:v2];
  v3 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_waveformPackageView);

  return [v3 setAlpha:v2];
}

uint64_t sub_10000A6E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000A71C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A734()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10000A76C()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    return [*(*(v0 + 24) + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_topLabel) setMarqueeEnabled:*(*(v0 + 24) + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_suggestedRoute + 112)];
  }

  return result;
}

uint64_t sub_10000A7A4()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10000A7F4()
{
  v1 = sub_100004E6C(&unk_100070140, &unk_100044310);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v21 - v3;
  v5 = OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_activityRouteView;
  v6 = [objc_allocWithZone(MRUActivityRouteView) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v5) = v6;
  v7 = OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_routeLabel;
  v8 = [objc_allocWithZone(UILabel) init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v7) = v8;
  v9 = OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_waveformPackageView;
  v10 = [objc_allocWithZone(MRUCAPackageView) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v9) = v10;
  v11 = OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_topLabel;
  v12 = [objc_allocWithZone(UILabel) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v11) = v12;
  v13 = OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_bottomLabel;
  v14 = [objc_allocWithZone(UILabel) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v13) = v14;
  v15 = OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_actionButton;
  v16 = [objc_opt_self() buttonWithType:0];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v15) = v16;
  v17 = OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_topLabelLayoutGuide;
  *(v0 + v17) = [objc_allocWithZone(UILayoutGuide) init];
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_topLabelPlayingTrailingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_routeLabelPlayingWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_routeLabelNotPlayingTrailingConstraint) = 0;
  v18 = (v0 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_waveformPackageStateNameOn);
  *v18 = 28239;
  v18[1] = 0xE200000000000000;
  v19 = (v0 + OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView_waveformPackageStateNameOff);
  *v19 = 6710863;
  v19[1] = 0xE300000000000000;
  v20 = OBJC_IVAR____TtC13MediaRemoteUI32SuggestedRouteSystemApertureView__availableTitleWidth;
  v21[1] = 0;
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v20, v4, v1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10000AC48()
{
  static os_log_type_t.default.getter();
  if (qword_10006FF80 != -1)
  {
    swift_once();
  }

  return os_log(_:dso:log:_:_:)();
}

id sub_10000AD8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AmbientCompactSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10000AE30(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    static os_log_type_t.default.getter();
    if (qword_10006FF80 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    if (qword_10006FF70 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      v7 = [objc_opt_self() proactiveEndpointController];
      Strong = [objc_allocWithZone(MRUNowPlayingController) initWithEndpointController:v7];

      swift_unknownObjectWeakAssign();
    }

    v8 = [objc_allocWithZone(MRUAmbientCompactNowPlayingViewController) initWithNowPlayingController:Strong];

    v9 = [objc_allocWithZone(type metadata accessor for SecureWindow()) initWithWindowScene:v4];
    [v9 setRootViewController:v8];
    [v9 makeKeyAndVisible];

    v10 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI27AmbientCompactSceneDelegate_window);
    *(v1 + OBJC_IVAR____TtC13MediaRemoteUI27AmbientCompactSceneDelegate_window) = v9;
  }
}

uint64_t sub_10000B068()
{
  v1 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI27AmbientCompactSceneDelegate_window);
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI27AmbientCompactSceneDelegate_window) = 0;

  if (qword_10006FF70 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  static os_log_type_t.default.getter();
  if (qword_10006FF80 != -1)
  {
    swift_once();
  }

  return os_log(_:dso:log:_:_:)();
}

float sub_10000B194()
{
  v0 = MGGetProductType();
  if (v0 <= 2270970152)
  {
    if (v0 <= 1429914405)
    {
      if (v0 == 502329937)
      {
        goto LABEL_17;
      }

      if (v0 != 1060988941)
      {
        goto LABEL_21;
      }

      goto LABEL_10;
    }

    if (v0 == 1429914406 || v0 == 1721691077)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v0 > 3242623366)
    {
      if (v0 == 3242623367)
      {
        goto LABEL_17;
      }

      if (v0 != 3885279870)
      {
        if (v0 != 3645319985)
        {
          goto LABEL_21;
        }

LABEL_17:
        sub_1000027EC(v0, v1);
LABEL_18:
        v2 = 1097859072;
        v3 = 15.0;
        goto LABEL_19;
      }

LABEL_10:
      sub_1000027EC(v0, v1);
LABEL_11:
      v2 = 1097859072;
      v3 = 5.0;
LABEL_19:
      v4 = 15.0;
      goto LABEL_20;
    }

    if (v0 == 2270970153 || v0 == 2311900306)
    {
      goto LABEL_17;
    }
  }

LABEL_21:
  v6 = v0;
  v7 = sub_1000027EC(v0, v1);
  if (v6 == 228444038)
  {
    goto LABEL_18;
  }

  if (v6 == 2159747553)
  {
    goto LABEL_11;
  }

  if (v7)
  {
    v2 = 1103101952;
    v4 = 48.0;
    v3 = 5.0;
  }

  else
  {
    v2 = 1101004800;
    v3 = 5.0;
    v4 = 30.0;
  }

LABEL_20:
  LODWORD(result) = CAFrameRateRange.init(minimum:maximum:preferred:)(v3, v4, v2);
  return result;
}

float sub_10000B328()
{
  v0 = MGGetProductType();
  if (v0 <= 2159747552)
  {
    if (v0 <= 1060988940)
    {
      if (v0 != 228444038 && v0 != 502329937)
      {
        return CAFrameRateRangeDefault.minimum;
      }
    }

    else
    {
      if (v0 == 1060988941)
      {
        goto LABEL_15;
      }

      if (v0 != 1429914406 && v0 != 1721691077)
      {
        return CAFrameRateRangeDefault.minimum;
      }
    }

    goto LABEL_18;
  }

  if (v0 <= 3242623366)
  {
    if (v0 != 2159747553)
    {
      if (v0 != 2270970153 && v0 != 2311900306)
      {
        return CAFrameRateRangeDefault.minimum;
      }

      goto LABEL_18;
    }

LABEL_15:
    v1 = 1114636288;
    v2 = 60.0;
    v3 = 30.0;
LABEL_19:
    LODWORD(result) = CAFrameRateRange.init(minimum:maximum:preferred:)(v3, v2, v1);
    return result;
  }

  if (v0 == 3242623367 || v0 == 3645319985)
  {
LABEL_18:
    v1 = 1106247680;
    v3 = 15.0;
    v2 = 30.0;
    goto LABEL_19;
  }

  if (v0 == 3885279870)
  {
    goto LABEL_15;
  }

  return CAFrameRateRangeDefault.minimum;
}

uint64_t sub_10000B47C()
{
  v4[3] = &type metadata for Feature;
  v4[4] = sub_100007F94();
  v1 = isFeatureEnabled(_:)();
  sub_100007FE8(v4);
  if (v1)
  {
    if (*(v0 + OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_isOnScreen) && (*(v0 + OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_isDimmed) & 1) == 0)
    {
      v2 = &OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_isObscured;
      return *(v0 + *v2);
    }
  }

  else if (*(v0 + OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_isOnScreen))
  {
    v2 = &OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_isDimmed;
    return *(v0 + *v2);
  }

  return 1;
}

id sub_10000B514(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v49[1] = a1;
  v7 = sub_100004E6C(&qword_100070980, &qword_100044798);
  __chkstk_darwin(v7 - 8);
  v9 = v49 - v8;
  v10 = sub_100004E6C(&qword_100070988, &qword_1000447A0);
  __chkstk_darwin(v10 - 8);
  v12 = v49 - v11;
  v13 = type metadata accessor for MetalContext();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v49 - v18;
  v20 = &v4[OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_preferredFrameRateRange];
  *v20 = sub_10000B194();
  *(v20 + 1) = v21;
  *(v20 + 2) = v22;
  v23 = &v4[OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_preferredTransitionFrameRateRange];
  *v23 = sub_10000B328();
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *&v4[OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_artworkTransitionTimer] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_isOnScreen] = 0;
  v4[OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_isDimmed] = 0;
  v4[OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_isObscured] = 0;
  v4[OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_shouldBlockDisplayLink] = 0;
  static MetalContext.shared.getter();
  result = (*(v14 + 48))(v12, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    (*(v14 + 16))(v17, v19, v13);
    v27 = type metadata accessor for Backdrop.ViewConfiguration();
    (*(*(v27 - 8) + 56))(v9, 1, 1, v27);
    v28 = objc_allocWithZone(type metadata accessor for Backdrop.CompositeRenderer());
    v29 = Backdrop.CompositeRenderer.init(context:configuration:)();
    v30 = [objc_opt_self() systemGrayColor];
    dispatch thunk of Backdrop.CompositeRenderer.setPlaceholderColor(_:animated:)();

    dispatch thunk of Backdrop.CompositeRenderer.isBehindLyrics.setter();
    *&v4[OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_backdropRenderer] = v29;
    v31 = objc_opt_self();
    v32 = v29;
    v33 = [v31 mainScreen];
    [v33 bounds];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;

    v42 = [objc_allocWithZone(MTKView) initWithFrame:MetalContext.device.getter() device:{v35, v37, v39, v41}];
    swift_unknownObjectRelease();
    v43 = v42;
    [v43 setAutoresizingMask:18];
    v44 = [v43 layer];

    [v44 setAllowsDisplayCompositing:0];
    [v43 setPaused:1];
    [v43 setDelegate:v32];
    *&v4[OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_metalView] = v43;
    v45 = v43;
    if (a2)
    {
      v46 = String._bridgeToObjectiveC()();
    }

    else
    {
      v46 = 0;
    }

    v47 = type metadata accessor for BackdropViewController();
    v50.receiver = v4;
    v50.super_class = v47;
    v48 = objc_msgSendSuper2(&v50, "initWithNibName:bundle:", v46, a3);

    (*(v14 + 8))(v19, v13);
    return v48;
  }

  return result;
}

void sub_10000BB3C(uint64_t a1)
{
  v2 = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for BackdropViewController();
  objc_msgSendSuper2(&v7, "viewDidDisappear:", v2 & 1);
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong invalidate];

  v4 = swift_unknownObjectWeakAssign();
  v6 = v1[OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_isOnScreen];
  v1[OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_isOnScreen] = 0;
  if (v6 == 1)
  {
    sub_10000C368(v4, v5);
  }
}

void sub_10000BCD4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_shouldBlockDisplayLink;
  if (v1[OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_shouldBlockDisplayLink] != (a1 & 1))
  {
    v3 = static os_log_type_t.default.getter();
    if (qword_10006FF80 != -1)
    {
      swift_once();
    }

    v4 = qword_1000737C8;
    v5 = os_log_type_enabled(qword_1000737C8, v3);
    if (v5)
    {
      v7 = v1;
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412546;
      *(v8 + 4) = v7;
      *v9 = v7;
      *(v8 + 12) = 1024;
      *(v8 + 14) = v1[v2];
      _os_log_impl(&_mh_execute_header, v4, v3, "%@ update shouldBlockDisplayLink:%{BOOL}d", v8, 0x12u);
      sub_10000CC78(v9);
    }

    if (v1[v2] == 1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      [Strong invalidate];

      swift_unknownObjectWeakAssign();
      v11 = [*&v1[OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_metalView] layer];
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      v13 = v12;
      if (!v12)
      {

        v12 = 0;
      }

      [v12 removeBackBuffers];
    }

    else if (v1[OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_isOnScreen] == 1)
    {

      sub_10000CA44(v5, v6);
    }
  }
}

uint64_t sub_10000BF24(uint64_t result, char a2)
{
  if (result)
  {
    v3 = v2;
    if ((sub_10000B47C() & 1) == 0)
    {
      v4 = OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_artworkTransitionTimer;
      [*(v2 + OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_artworkTransitionTimer) invalidate];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        LODWORD(v6) = *(v2 + OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_preferredTransitionFrameRateRange);
        LODWORD(v7) = *(v2 + OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_preferredTransitionFrameRateRange + 4);
        LODWORD(v8) = *(v2 + OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_preferredTransitionFrameRateRange + 8);
        v9 = Strong;
        [Strong setPreferredFrameRateRange:{v6, v7, v8}];
      }

      sub_10000CCE0();
      v10 = static OS_dispatch_queue.main.getter();
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = objc_allocWithZone(MSVTimer);
      v16[4] = sub_10000CEC0;
      v16[5] = v11;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 1107296256;
      v16[2] = sub_100015D4C;
      v16[3] = &unk_10005DE48;
      v13 = _Block_copy(v16);

      v14 = [v12 initWithInterval:0 repeats:v10 queue:v13 block:1.0];
      _Block_release(v13);

      v15 = *(v3 + v4);
      *(v3 + v4) = v14;
    }

    result = dispatch thunk of Backdrop.CompositeRenderer.setImage(_:animated:)();
    if (*(v3 + OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_isDimmed) == 1)
    {
      return sub_10000C55C();
    }
  }

  return result;
}

void sub_10000C10C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *&Strong[OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_preferredFrameRateRange];
    v3 = *&Strong[OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_preferredFrameRateRange + 4];
    v4 = *&Strong[OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_preferredFrameRateRange + 8];

    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = swift_unknownObjectWeakLoadStrong();

      LODWORD(v8) = v2;
      LODWORD(v9) = v3;
      LODWORD(v10) = v4;
      [v7 setPreferredFrameRateRange:{v8, v9, v10}];
    }
  }
}

void sub_10000C24C(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for BackdropViewController();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = objc_opt_self();
  v4 = [v1 traitCollection];
  v5 = [v3 shouldUseTimelinesForTraitCollection:v4];

  if (v5 != v1[OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_isDimmed])
  {
    v1[OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_isDimmed] = v5;
    sub_10000C368(v6, v7);
  }
}

void sub_10000C368(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong setPaused:sub_10000B47C() & 1];
  }

  if (*(v2 + OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_isOnScreen))
  {
    if (*(v2 + OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_isDimmed) == 1)
    {
      sub_10000C55C();
    }

    v15[3] = &type metadata for Feature;
    v15[4] = sub_100007F94();
    v5 = isFeatureEnabled(_:)();
    sub_100007FE8(v15);
    if (v5 & 1) != 0 && (sub_10000B47C())
    {
      v6 = [*(v2 + OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_metalView) layer];
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (!v7)
      {
      }

      [v7 removeBackBuffers];
    }
  }

  else
  {
    v8 = *(v2 + OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_metalView);
    v9 = [v8 layer];
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (!v10)
    {
    }

    [v10 discardContents];

    v11 = [v8 layer];
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    v13 = v12;
    if (!v12)
    {

      v12 = 0;
    }

    [v12 removeBackBuffers];
  }
}

uint64_t sub_10000C55C()
{
  v26 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v26 - 8);
  __chkstk_darwin(v26);
  v25 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for DispatchQoS();
  v27 = *(v2 - 8);
  v28 = v2;
  __chkstk_darwin(v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchTimeInterval();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  [*&v0[OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_metalView] draw];
  sub_10000CCE0();
  v24 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  *v8 = 1100;
  (*(v6 + 104))(v8, enum case for DispatchTimeInterval.milliseconds(_:), v5);
  + infix(_:_:)();
  (*(v6 + 8))(v8, v5);
  v16 = *(v10 + 8);
  v16(v13, v9);
  v17 = swift_allocObject();
  *(v17 + 16) = v0;
  aBlock[4] = sub_10000CD64;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015D4C;
  aBlock[3] = &unk_10005DDF8;
  v18 = _Block_copy(aBlock);
  v19 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000CD84();
  sub_100004E6C(&unk_100070B00, &qword_100044790);
  sub_10000CDDC();
  v20 = v25;
  v21 = v26;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = v24;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v18);

  (*(v29 + 8))(v20, v21);
  (*(v27 + 8))(v4, v28);
  return (v16)(v15, v9);
}

void sub_10000C99C(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_isDimmed) == 1)
  {
    v2 = [*(a1 + OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_metalView) layer];
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    v4 = v3;
    if (!v3)
    {

      v3 = 0;
    }

    [v3 removeBackBuffers];
  }
}

void sub_10000CA44(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong invalidate];

  swift_unknownObjectWeakAssign();
  if ((*(v2 + OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_shouldBlockDisplayLink) & 1) == 0)
  {
    v8 = [objc_opt_self() displayLinkWithTarget:v2 selector:"displayLinkFiredWithSender:"];
    [v8 setPaused:sub_10000B47C() & 1];
    LODWORD(v4) = *(v2 + OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_preferredFrameRateRange);
    LODWORD(v5) = *(v2 + OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_preferredFrameRateRange + 4);
    LODWORD(v6) = *(v2 + OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_preferredFrameRateRange + 8);
    [v8 setPreferredFrameRateRange:{v4, v5, v6}];
    v7 = [objc_opt_self() currentRunLoop];
    [v8 addToRunLoop:v7 forMode:NSDefaultRunLoopMode];

    swift_unknownObjectWeakAssign();
  }
}

id sub_10000CBB4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BackdropViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10000CC78(uint64_t a1)
{
  v2 = sub_100004E6C(&unk_100071C40, qword_100044AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000CCE0()
{
  result = qword_100070AF0;
  if (!qword_100070AF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100070AF0);
  }

  return result;
}

uint64_t sub_10000CD2C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CD6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000CD84()
{
  result = qword_100071B90;
  if (!qword_100071B90)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071B90);
  }

  return result;
}

unint64_t sub_10000CDDC()
{
  result = qword_100071BA0;
  if (!qword_100071BA0)
  {
    sub_10000CE40(&unk_100070B00, &qword_100044790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071BA0);
  }

  return result;
}

uint64_t sub_10000CE40(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000CE88()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10000CEC8()
{
  v1 = v0 + OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_preferredFrameRateRange;
  *v1 = sub_10000B194();
  *(v1 + 4) = v2;
  *(v1 + 8) = v3;
  v4 = v0 + OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_preferredTransitionFrameRateRange;
  *v4 = sub_10000B328();
  *(v4 + 4) = v5;
  *(v4 + 8) = v6;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_artworkTransitionTimer) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_isOnScreen) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_isDimmed) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_isObscured) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_shouldBlockDisplayLink) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10000D03C(void *a1)
{
  v19[3] = &type metadata for Feature;
  v19[4] = sub_100007F94();
  v3 = isFeatureEnabled(_:)();
  sub_100007FE8(v19);
  if ((v3 & 1) == 0)
  {
    v15 = [v1 view];
    if (v15)
    {
      v11 = v15;
      type metadata accessor for CoverSheetBackgroundView();
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = *(v16 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkView);

        v18 = *&v1[OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_artwork];
        [v17 setArtwork:v18];

        return;
      }

LABEL_13:
    }

LABEL_14:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v1[OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_didSetLatestArtworkToArtworkView] = 0;
  sub_10000D260();
  v4 = OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_artwork;
  v5 = *&v1[OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_artwork];
  v6 = v5;
  v7 = [a1 animatedCatalog];
  sub_10000D694(v5, v7);

  v8 = *&v1[v4];
  if (v8)
  {
    v9 = [v8 animatedCatalog];
    if (v9)
    {

      v10 = [v1 view];
      if (v10)
      {
        v11 = v10;
        type metadata accessor for CoverSheetBackgroundView();
        v12 = swift_dynamicCastClass();
        if (v12)
        {
          v13 = *(v12 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkView);

          v14 = [v13 artwork];
          if (v14)
          {

            return;
          }

          goto LABEL_11;
        }

        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

LABEL_11:
  sub_10000F8B4();
}

void sub_10000D260()
{
  p_name = &SuggestedRouteBannerPresenter.name;
  v2 = [v0 view];
  if (!v2)
  {
    goto LABEL_35;
  }

  v3 = v2;
  type metadata accessor for CoverSheetBackgroundView();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    goto LABEL_34;
  }

  v5 = *(v4 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkView);

  v25 = [v5 artwork];
  v6 = [v25 catalog];
  v7 = *&v0[OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_artwork];
  if (v7)
  {
    v8 = [v7 catalog];
    if (v8)
    {
      if (v6)
      {
        v24 = v8;
        v9 = [v6 isArtworkVisuallyIdenticalToCatalog:?];
        v10 = [v0 view];
        if (!v10)
        {
          goto LABEL_35;
        }

        p_name = v10;
        v11 = swift_dynamicCastClass();
        if (!v11)
        {
          while (1)
          {

LABEL_35:
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }
        }

        v12 = *(v11 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkView);

        v13 = [v12 artworkImage];
        if (v13)
        {

          v14 = *&v0[OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_motionDataLoader];
          if (v9)
          {
            if (*(v14 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_artworkImageUpToDateTimeoutTask))
            {

              sub_100004E6C(&qword_100070AC8, &unk_100044860);
              Task.cancel()();
            }

            *(v14 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_isRegularArtworkImageUpToDate) = 1;
            v15 = *(v14 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_pendingState);
            if (v15 != 4)
            {
              sub_100011484(*(v14 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_pendingState));
              sub_100039A28(v15);

              v16 = v15;
LABEL_25:

              sub_100011494(v16);
              return;
            }

            goto LABEL_30;
          }
        }

        else
        {
          v14 = *&v0[OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_motionDataLoader];
        }

        *(v14 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_isRegularArtworkImageUpToDate) = 0;
LABEL_30:

        v23 = v24;
        goto LABEL_31;
      }

LABEL_23:
      *(*&v0[OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_motionDataLoader] + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_isRegularArtworkImageUpToDate) = 0;
      return;
    }
  }

  v17 = [v0 view];
  if (!v17)
  {
    goto LABEL_35;
  }

  v3 = v17;
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
LABEL_34:

    goto LABEL_35;
  }

  v19 = *(v18 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkView);

  v20 = [v19 artworkImage];
  if (v20)
  {

    goto LABEL_23;
  }

  v21 = *&v0[OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_motionDataLoader];
  if (*(v21 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_artworkImageUpToDateTimeoutTask))
  {

    sub_100004E6C(&qword_100070AC8, &unk_100044860);
    Task.cancel()();
  }

  *(v21 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_isRegularArtworkImageUpToDate) = 1;
  v22 = *(v21 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_pendingState);
  if (v22 != 4)
  {
    sub_100011484(*(v21 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_pendingState));
    sub_100039A28(v22);

    v16 = v22;
    goto LABEL_25;
  }

  v23 = v25;
LABEL_31:
}

void sub_10000D694(void *a1, void *a2)
{
  v3 = v2;
  v61[3] = &type metadata for Feature;
  v61[4] = sub_100007F94();
  v6 = isFeatureEnabled(_:)();
  sub_100007FE8(v61);
  if ((v6 & 1) == 0)
  {
    return;
  }

  v7 = [a1 catalog];
  if (v7)
  {

    v7 = [a1 animatedCatalog];
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  sub_100010B94(v7, v8);
  v11 = v10;
  v13 = v12;
  type metadata accessor for MotionEnabledState();
  static MotionEnabledState.shared.getter();
  v14 = dispatch thunk of MotionEnabledState.isMotionEnabled.getter();

  v15 = [v3 view];
  if (!v15)
  {
    goto LABEL_61;
  }

  v16 = v15;
  type metadata accessor for CoverSheetBackgroundView();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
LABEL_60:

    goto LABEL_61;
  }

  v18 = *(v17 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_animatedArtworkView);

  v19 = *&v18[OBJC_IVAR____TtC13MediaRemoteUI19AnimatedArtworkView_motionState];

  swift_getKeyPath();
  v61[0] = v19;
  sub_100012940(&qword_100072300, type metadata accessor for MotionState, &unk_100045A14);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v19 + 16))
  {

    v20 = 0;
    goto LABEL_9;
  }

  swift_getKeyPath();
  v61[0] = v19;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v48 = *(v19 + 17);

  v20 = v48 ^ 1;
  if (v14 & 1) == 0 || (v48 & 1) != 0 || (v3[OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_isBacklightStateDeactivating])
  {
    goto LABEL_9;
  }

  v49 = [v3 view];
  if (!v49)
  {
LABEL_61:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v16 = v49;
  v50 = swift_dynamicCastClass();
  if (!v50)
  {
    goto LABEL_60;
  }

  v51 = *(v50 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_isOnScreen);

  if (v51)
  {
    v47 = 1;
    goto LABEL_47;
  }

LABEL_9:
  if (qword_10006FF90 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10001144C(v21, qword_1000737D8);
  v22 = v9;
  v23 = v3;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v59 = v25;
    v60 = v3;
    v26 = swift_slowAlloc();
    v61[0] = swift_slowAlloc();
    *v26 = 136447234;
    if (v14)
    {
      v27 = 1702195828;
    }

    else
    {
      v27 = 0x65736C6166;
    }

    if (v14)
    {
      v28 = 0xE400000000000000;
    }

    else
    {
      v28 = 0xE500000000000000;
    }

    v29 = v20;
    v30 = sub_10003F8C8(v27, v28, v61);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2082;
    if (v29)
    {
      v31 = 1702195828;
    }

    else
    {
      v31 = 0x65736C6166;
    }

    if (v29)
    {
      v32 = 0xE400000000000000;
    }

    else
    {
      v32 = 0xE500000000000000;
    }

    v33 = sub_10003F8C8(v31, v32, v61);

    *(v26 + 14) = v33;
    *(v26 + 22) = 2082;
    if (v23[OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_isBacklightStateDeactivating])
    {
      v34 = 1702195828;
    }

    else
    {
      v34 = 0x65736C6166;
    }

    if (v23[OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_isBacklightStateDeactivating])
    {
      v35 = 0xE400000000000000;
    }

    else
    {
      v35 = 0xE500000000000000;
    }

    v36 = sub_10003F8C8(v34, v35, v61);

    *(v26 + 24) = v36;
    *(v26 + 32) = 2082;
    v37 = [v23 view];
    if (!v37)
    {
      goto LABEL_61;
    }

    v16 = v37;
    v38 = swift_dynamicCastClass();
    if (v38)
    {
      v39 = *(v38 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_isOnScreen);

      if (v39)
      {
        v40 = 1702195828;
      }

      else
      {
        v40 = 0x65736C6166;
      }

      if (v39)
      {
        v41 = 0xE400000000000000;
      }

      else
      {
        v41 = 0xE500000000000000;
      }

      v42 = sub_10003F8C8(v40, v41, v61);

      *(v26 + 34) = v42;
      *(v26 + 42) = 2082;
      v43 = v22;
      sub_100004E6C(&qword_100070AC0, &qword_100044858);
      v44 = String.init<A>(describing:)();
      v46 = sub_10003F8C8(v44, v45, v61);

      *(v26 + 44) = v46;
      _os_log_impl(&_mh_execute_header, v24, v59, "[CoverSheetBackgroundViewController] updateAnimatedArtworkData will not request video. isMotionEnabled: %{public}s, canPlayMotion: %{public}s, isBacklightStateDeactivating: %{public}s, backgroundView.isOnScreen: %{public}s, catalog: %{public}s.", v26, 0x34u);
      swift_arrayDestroy();

      v47 = 0;
      v3 = v60;
      goto LABEL_47;
    }

    goto LABEL_60;
  }

  v47 = 0;
LABEL_47:
  if (v9 && a2 && *(*&v3[OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_motionDataLoader] + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_state) != 3)
  {
    v53 = v47;
    v52 = v9;
    v54 = a2;
    if ([v52 isArtworkVisuallyIdenticalToCatalog:v54])
    {
      if (qword_10006FF90 != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for Logger();
      sub_10001144C(v55, qword_1000737D8);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v56, v57, "[CoverSheetBackgroundViewController] new catalog is visually identical to comparison catalog: did not update animated artwork data.", v58, 2u);
      }
    }

    else
    {
      v52 = v52;
      sub_10003A22C(v9, v53, v11, v13);
    }
  }

  else
  {
    sub_10003A22C(v9, v47, v11, v13);
    v52 = v9;
  }
}

char *sub_10000DDA4(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_layoutMetrics];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = 1;
  v4 = &v1[OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_ambientLifecycleCancellable];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_motionDataLoader;
  type metadata accessor for MotionDataLoader(0);
  swift_allocObject();
  *&v1[v5] = sub_10003C868();
  v1[OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_isBacklightStateDeactivating] = 0;
  v1[OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_didSetLatestArtworkToArtworkView] = 0;
  *&v1[OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_artwork] = 0;
  *&v1[OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_backdropViewController] = a1;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for CoverSheetBackgroundViewController();
  v6 = a1;
  v7 = objc_msgSendSuper2(&v15, "initWithNibName:bundle:", 0, 0);
  v14[3] = &type metadata for Feature;
  v14[4] = sub_100007F94();
  v8 = isFeatureEnabled(_:)();
  sub_100007FE8(v14);
  if (v8)
  {
    v9 = [objc_opt_self() sharedBacklight];
    [v9 addObserver:v7];

    *(*&v7[OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_motionDataLoader] + 24) = &off_10005DE70;
    v10 = swift_unknownObjectWeakAssign();
    __chkstk_darwin(v10);
    v11 = withObservationTracking<A>(_:onChange:)();
    v12 = __chkstk_darwin(v11);
    __chkstk_darwin(v12);
    withObservationTracking<A>(_:onChange:)();
  }

  return v7;
}

void sub_10000E058()
{
  type metadata accessor for CoverSheetBackgroundView();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setView:v1];

  v6[3] = &type metadata for Feature;
  v6[4] = sub_100007F94();
  LOBYTE(v1) = isFeatureEnabled(_:)();
  sub_100007FE8(v6);
  if (v1)
  {
    v2 = [v0 view];
    if (v2)
    {
      v3 = v2;
      v4 = swift_dynamicCastClass();
      if (v4)
      {
        v5 = *(v4 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_animatedArtworkView);

        *&v5[OBJC_IVAR____TtC13MediaRemoteUI19AnimatedArtworkView_delegate + 8] = &off_10005DE88;
        swift_unknownObjectWeakAssign();

        return;
      }
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

id sub_10000E1E4()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for CoverSheetBackgroundViewController();
  objc_msgSendSuper2(&v9, "viewDidLoad");
  v1 = [v0 view];
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  type metadata accessor for CoverSheetBackgroundView();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = *(v3 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkView);

  [v4 addObserver:v0];
  v5 = objc_opt_self();
  v6 = [v0 traitCollection];
  LOBYTE(v5) = [v5 shouldUseTimelinesForTraitCollection:v6];

  if ((v5 & 1) == 0)
  {
    return sub_10000F500();
  }

  v7 = [v0 view];
  if (v7)
  {
    v2 = v7;
    if (swift_dynamicCastClass())
    {
      sub_100006C68(1);

      return sub_10000F500();
    }

LABEL_8:
  }

LABEL_9:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10000E3B8(char a1)
{
  v2 = v1;
  v4 = sub_100004E6C(&qword_100070C60, &qword_100044928);
  v5 = __chkstk_darwin(v4);
  __chkstk_darwin(v5);
  v6 = sub_100004E6C(&qword_100070B20, &qword_100044930);
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin(v6);
  v8 = &v37 - v7;
  v9 = sub_100004E6C(&qword_100070B28, &qword_100044938);
  v39 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v37 - v10;
  v12 = type metadata accessor for CoverSheetBackgroundViewController();
  v44.receiver = v2;
  v44.super_class = v12;
  objc_msgSendSuper2(&v44, "viewWillAppear:", a1 & 1);
  v13 = [v2 view];
  if (!v13)
  {
    goto LABEL_21;
  }

  v14 = v13;
  v40 = v9;
  type metadata accessor for CoverSheetBackgroundView();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {

    goto LABEL_21;
  }

  *(v15 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_isOnScreen) = 1;

  v42 = &type metadata for Feature;
  v43 = sub_100007F94();
  v16 = isFeatureEnabled(_:)();
  sub_100007FE8(v41);
  if (v16)
  {
    if (qword_10006FFA0 != -1)
    {
      swift_once();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_15;
    }

    v18 = Strong;
    v19 = [Strong isContentObscured];

    v20 = [v2 view];
    if (v20)
    {
      v21 = v20;
      v22 = swift_dynamicCastClass();
      if (v22)
      {
        v23 = *(v22 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_animatedArtworkView);

        sub_100035440(v19);

        if (v19)
        {
          if (qword_10006FF90 != -1)
          {
            swift_once();
          }

          v24 = type metadata accessor for Logger();
          sub_10001144C(v24, qword_1000737D8);
          v25 = Logger.logObject.getter();
          v26 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            *v27 = 0;
            _os_log_impl(&_mh_execute_header, v25, v26, "[CoverSheetBackgroundViewController] backdrop scene is obscured in viewWillAppear().", v27, 2u);
          }
        }

LABEL_15:
        v28 = *&v2[OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_artwork];
        v29 = v28;
        sub_10000D694(v28, 0);

        goto LABEL_16;
      }
    }

LABEL_21:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

LABEL_16:
  if (qword_10006FF70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100004E6C(&unk_100070B30, &qword_100044940);
  Published.projectedValue.getter();
  swift_endAccess();
  swift_beginAccess();
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100012B78(&qword_100070C90, &qword_100070C60, &qword_100044928, &protocol conformance descriptor for Published<A>.Publisher);
  Publishers.CombineLatest.init(_:_:)();
  sub_100012B78(&qword_100070B40, &qword_100070B20, &qword_100044930, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  v30 = v38;
  Publisher.map<A>(_:)();
  (*(v37 + 8))(v8, v30);
  swift_getKeyPath();
  v41[0] = *&v2[OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_backdropViewController];
  v31 = v41[0];
  sub_100012B78(&qword_100070B48, &qword_100070B28, &qword_100044938, &protocol conformance descriptor for Publishers.Map<A, B>);
  v32 = v31;
  v33 = v40;
  v34 = Publisher<>.assign<A>(to:on:)();

  (*(v39 + 8))(v11, v33);
  v42 = type metadata accessor for AnyCancellable();
  v43 = &protocol witness table for AnyCancellable;
  v41[0] = v34;
  v35 = OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_ambientLifecycleCancellable;
  swift_beginAccess();
  sub_100012AB0(v41, &v2[v35]);
  return swift_endAccess();
}

uint64_t sub_10000EAE8(uint64_t a1)
{
  v2 = a1;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CoverSheetBackgroundViewController();
  objc_msgSendSuper2(&v10, "viewDidDisappear:", v2 & 1);
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CoverSheetBackgroundView();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      *(v5 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_isOnScreen) = 0;

      v9 = 0;
      memset(v8, 0, sizeof(v8));
      v6 = OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_ambientLifecycleCancellable;
      swift_beginAccess();
      sub_100012AB0(v8, v1 + v6);
      return swift_endAccess();
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10000EC48(void *a1, double a2, double a3)
{
  v4 = v3;
  v33.receiver = v3;
  v33.super_class = type metadata accessor for CoverSheetBackgroundViewController();
  objc_msgSendSuper2(&v33, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v30 = &type metadata for Feature;
  v31 = sub_100007F94();
  v8 = isFeatureEnabled(_:)();
  sub_100007FE8(&aBlock);
  if ((v8 & 1) == 0)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = v4;
    *(v25 + 24) = a2;
    *(v25 + 32) = a3;
    v31 = sub_100012A38;
    v32 = v25;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_10000F17C;
    v30 = &unk_10005E080;
    v20 = _Block_copy(&aBlock);
    v26 = v4;

    [a1 animateAlongsideTransition:v20 completion:0];
    goto LABEL_8;
  }

  v9 = [v4 view];
  if (v9)
  {
    v10 = v9;
    type metadata accessor for CoverSheetBackgroundView();
    v11 = swift_dynamicCastClass();
    if (!v11)
    {
LABEL_9:

      goto LABEL_10;
    }

    v12 = v11;
    [v11 bounds];
    Width = CGRectGetWidth(v34);
    [v12 bounds];
    Height = CGRectGetHeight(v35);
    hypot(Width, Height);
    v15 = *&v12[OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_blackBackdrop];
    [v12 frame];
    UIRectCenteredRect();
    [v15 setFrame:?];

    v16 = [v4 view];
    if (v16)
    {
      v10 = v16;
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        *(v17 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_isTransitioningSize) = 1;
        sub_100008308(v17, v18);

        v19 = swift_allocObject();
        *(v19 + 16) = v4;
        *(v19 + 24) = a2;
        *(v19 + 32) = a3;
        v31 = sub_100012A64;
        v32 = v19;
        aBlock = _NSConcreteStackBlock;
        v28 = 1107296256;
        v29 = sub_10000F17C;
        v30 = &unk_10005E0D0;
        v20 = _Block_copy(&aBlock);
        v21 = v4;

        v22 = swift_allocObject();
        *(v22 + 16) = v21;
        v31 = sub_100012AA8;
        v32 = v22;
        aBlock = _NSConcreteStackBlock;
        v28 = 1107296256;
        v29 = sub_10000F17C;
        v30 = &unk_10005E120;
        v23 = _Block_copy(&aBlock);
        v24 = v21;

        [a1 animateAlongsideTransition:v20 completion:v23];
        _Block_release(v23);
LABEL_8:
        _Block_release(v20);
        return;
      }

      goto LABEL_9;
    }
  }

LABEL_10:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10000F02C(uint64_t a1, void *a2, double a3, double a4)
{
  sub_10000F700(a3, a4);
  v10 = [a2 view];
  if (!v10)
  {
    goto LABEL_7;
  }

  type metadata accessor for CoverSheetBackgroundView();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

LABEL_7:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 bounds];
  Width = CGRectGetWidth(v12);
  [v6 bounds];
  Height = CGRectGetHeight(v13);
  hypot(Width, Height);
  v9 = *&v6[OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_blackBackdrop];
  [v6 frame];
  UIRectCenteredRect();
  [v9 setFrame:?];
}

uint64_t sub_10000F17C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_10000F1DC(int a1, id a2)
{
  v4 = [a2 view];
  if (!v4)
  {
    goto LABEL_7;
  }

  type metadata accessor for CoverSheetBackgroundView();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {

LABEL_7:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  *(v2 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_isTransitioningSize) = 0;
  sub_100008308(v2, v3);
}

void sub_10000F328(uint64_t a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for CoverSheetBackgroundViewController();
  objc_msgSendSuper2(&v11, "traitCollectionDidChange:", a1);
  v3 = objc_opt_self();
  v4 = [v1 traitCollection];
  v5 = [v3 shouldUseTimelinesForTraitCollection:v4];

  v6 = [v1 view];
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  type metadata accessor for CoverSheetBackgroundView();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = *(v8 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_isDimmed);

  if (v5 == v9)
  {
    return;
  }

  v10 = [v1 view];
  if (!v10)
  {
LABEL_9:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v7 = v10;
  if (!swift_dynamicCastClass())
  {
LABEL_8:

    goto LABEL_9;
  }

  sub_100006C68(v5);
}

id sub_10000F500()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_backdropViewController];
  [v1 addChildViewController:v2];
  v3 = [v1 view];
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = v3;
  type metadata accessor for CoverSheetBackgroundView();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  v7 = [v2 view];
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  [Strong removeFromSuperview];
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    [v6 insertSubview:v9 atIndex:0];
  }

  v11 = [v1 view];
  if (!v11)
  {
    goto LABEL_11;
  }

  v4 = v11;
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
LABEL_10:

LABEL_11:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v13 = *(v12 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkView);

  v14 = [v13 artworkImage];
  sub_10000BF24(v14, 0);

  return [v2 didMoveToParentViewController:v1];
}

void sub_10000F700(double a1, double a2)
{
  v3 = &v2[OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_layoutMetrics];
  if (v2[OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_layoutMetrics + 32])
  {
    return;
  }

  v7 = *(v3 + 2);
  v6 = *(v3 + 3);
  v8 = *v3;
  v9 = *(v3 + 1);
  v22 = &type metadata for Feature;
  v10 = sub_100007F94();
  v23 = v10;
  v11 = isFeatureEnabled(_:)();
  sub_100007FE8(v21);
  if (((v11 & 1) == 0 || (sub_10001353C() & 1) == 0) && a1 < a2)
  {
    v8 = v9;
  }

  v12 = [v2 view];
  if (!v12)
  {
LABEL_13:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v13 = v12;
  type metadata accessor for CoverSheetBackgroundView();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {

    goto LABEL_13;
  }

  v15 = v14;
  v16 = v14 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_topGap;
  *v16 = v8;
  *(v16 + 8) = 0;
  v17 = v14 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_bottomGap;
  *v17 = v7;
  *(v17 + 8) = 0;
  v18 = v14 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_platterViewWidth;
  *v18 = v6;
  *(v18 + 8) = 0;
  sub_1000073A0();
  v22 = &type metadata for Feature;
  v23 = v10;
  v19 = isFeatureEnabled(_:)();
  sub_100007FE8(v21);
  if (v19)
  {
    v20 = *&v15[OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_animatedArtworkView];
    [v15 bounds];
    [v20 setFrame:?];
  }
}

void sub_10000F8B4()
{
  v14[3] = &type metadata for Feature;
  v14[4] = sub_100007F94();
  v1 = isFeatureEnabled(_:)();
  sub_100007FE8(v14);
  if ((v1 & 1) != 0 && (v0[OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_didSetLatestArtworkToArtworkView] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_didSetLatestArtworkToArtworkView] = 1;
    v2 = v0;
    v3 = *&v0[OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_motionDataLoader];
    v4 = [v2 view];
    if (v4)
    {
      v5 = v4;
      type metadata accessor for CoverSheetBackgroundView();
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        v7 = *(v6 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkView);

        v8 = *&v2[OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_artwork];
        [v7 setArtwork:v8];

        if ((*(v3 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_isRegularArtworkImageUpToDate) & 1) == 0)
        {
          return;
        }

        v9 = [v2 view];
        if (v9)
        {
          v10 = v9;
          v11 = swift_dynamicCastClass();
          if (v11)
          {
            v12 = *(v11 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkView);

            v13 = [v12 artworkImage];
            sub_10000BF24(v13, 1);

            return;
          }
        }
      }

      else
      {
      }
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

id sub_10000FAD4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CoverSheetBackgroundViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10000FC28(_BYTE *a1@<X8>)
{
  type metadata accessor for MotionEnabledState();
  static MotionEnabledState.shared.getter();
  v2 = dispatch thunk of MotionEnabledState.isMotionEnabled.getter();

  *a1 = v2 & 1;
}

uint64_t sub_10000FC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000FD14, v6, v5);
}

uint64_t sub_10000FD14()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    v3 = [Strong view];
    if (v3)
    {
      v4 = v3;
      type metadata accessor for CoverSheetBackgroundView();
      v5 = swift_dynamicCastClass();
      if (v5)
      {
        v6 = *(v5 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_isOnScreen);

        if (v6)
        {
          v7 = *&v2[OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_artwork];
          v8 = v7;
          sub_10000D694(v7, 0);
        }

        *(swift_task_alloc() + 16) = v2;
        withObservationTracking<A>(_:onChange:)();

        goto LABEL_7;
      }
    }

    return _assertionFailure(_:_:file:line:flags:)();
  }

LABEL_7:
  **(v0 + 40) = v2 == 0;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10000FED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100004E6C(&qword_100070AD0, &qword_1000449C0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000115DC(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100012BC0(v11, &qword_100070AD0, &qword_1000449C0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100012BC0(a3, &qword_100070AD0, &qword_1000449C0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100012BC0(a3, &qword_100070AD0, &qword_1000449C0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000101C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100004E6C(&qword_100070AD0, &qword_1000449C0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000115DC(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100012BC0(v11, &qword_100070AD0, &qword_1000449C0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_100004E6C(&qword_100070AD8, &qword_100044890);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_100012BC0(a3, &qword_100070AD0, &qword_1000449C0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100012BC0(a3, &qword_100070AD0, &qword_1000449C0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100004E6C(&qword_100070AD8, &qword_100044890);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_1000104C4()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = v2;
  type metadata accessor for CoverSheetBackgroundView();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {

    goto LABEL_14;
  }

  v5 = *(v4 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_isOnScreen);

  if ((v5 & 1) == 0)
  {
    return;
  }

  v6 = [v0 view];
  if (!v6)
  {
LABEL_14:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = swift_dynamicCastClass();
  if (!v8)
  {

    goto LABEL_14;
  }

  v9 = *(v8 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_animatedArtworkView);

  v10 = *&v9[OBJC_IVAR____TtC13MediaRemoteUI19AnimatedArtworkView_motionDataContainer];
  if (v10)
  {
    swift_getKeyPath();
    sub_100012940(&unk_100070AE0, type metadata accessor for MotionDataContainer, &unk_1000459DC);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v11 = *(v10 + 16);

    v12 = *(v11 + 40);

    if (v12)
    {
      return;
    }
  }

  else
  {
  }

  v13 = *&v1[OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_artwork];
  v14 = v13;
  sub_10000D694(v13, 0);
}

void sub_1000106BC(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [a1 view];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  type metadata accessor for CoverSheetBackgroundView();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

LABEL_8:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v6 = *(v5 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_animatedArtworkView);

  v7 = *&v6[OBJC_IVAR____TtC13MediaRemoteUI19AnimatedArtworkView_motionState];

  swift_getKeyPath();
  sub_100012940(&qword_100072300, type metadata accessor for MotionState, &unk_100045A14);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v7 + 16))
  {

    v8 = 0;
  }

  else
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = *(v7 + 17);

    v8 = v9 ^ 1;
  }

  *a2 = v8 & 1;
}

double sub_100010870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100004E6C(&qword_100070AD0, &qword_1000449C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  type metadata accessor for MainActor();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v8;

  sub_1000101C0(0, 0, v6, a3, v11);

  return result;
}

uint64_t sub_1000109E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100010A80, v6, v5);
}

uint64_t sub_100010A80()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1000104C4();
    *(swift_task_alloc() + 16) = Strong;
    *(swift_task_alloc() + 16) = Strong;
    withObservationTracking<A>(_:onChange:)();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

void sub_100010B94(uint64_t a1, uint64_t a2)
{
  if (qword_10006FFA0 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong screen];
    [v4 bounds];

    v5 = [objc_opt_self() currentDevice];
    [v5 userInterfaceIdiom];
  }

  else
  {
    if (qword_10006FF90 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10001144C(v6, qword_1000737D8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "[CoverSheetBackgroundViewController] Could not determine animated artwork fitting size.", v9, 2u);
    }
  }
}

void sub_100010E48(unint64_t a1)
{
  v2 = v1;
  v23[3] = &type metadata for Feature;
  v23[4] = sub_100007F94();
  v4 = isFeatureEnabled(_:)();
  sub_100007FE8(v23);
  if ((v4 & 1) == 0)
  {
    return;
  }

  if (a1 - 2 >= 2 && a1)
  {
    if (a1 == 1)
    {
      goto LABEL_11;
    }

    v5 = [v2 view];
    if (v5)
    {
      v6 = v5;
      type metadata accessor for CoverSheetBackgroundView();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = *(v7 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_animatedArtworkView);

        sub_10003452C(a1, v9);
        swift_getKeyPath();
        v23[0] = a1;
        sub_100012940(&qword_1000722F0, type metadata accessor for MotionData, &unk_1000459F8);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v10 = *(a1 + 16);
        v11 = v10;
        sub_10000BF24(v10, 1);

        goto LABEL_11;
      }

LABEL_18:
    }

LABEL_19:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v12 = [v2 view];
  if (!v12)
  {
    goto LABEL_19;
  }

  v6 = v12;
  type metadata accessor for CoverSheetBackgroundView();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    goto LABEL_18;
  }

  v14 = *(v13 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_animatedArtworkView);

  v15 = *&v14[OBJC_IVAR____TtC13MediaRemoteUI19AnimatedArtworkView_motionDataContainer];
  *&v14[OBJC_IVAR____TtC13MediaRemoteUI19AnimatedArtworkView_motionDataContainer] = 0;
  sub_100036898(v15, v16);

  sub_10000F8B4();
LABEL_11:
  v17 = [v2 view];
  if (!v17)
  {
    goto LABEL_19;
  }

  v18 = v17;
  type metadata accessor for CoverSheetBackgroundView();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {

    goto LABEL_19;
  }

  v20 = *(v19 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_motionDataLoaderState);
  *(v19 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_motionDataLoaderState) = a1;
  *(v19 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_previousMotionDataStateWasOverdue) = v20 == 2;
  v21 = 0x100u >> (8 * a1);
  if (a1 >= 4)
  {
    LOBYTE(v21) = 1;
  }

  v22 = *(v19 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_isMotionDataReadyOrDue);
  *(v19 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_isMotionDataReadyOrDue) = v21;
  sub_100011484(a1);
  sub_1000068D4(v22);
  sub_1000082F0(v20);
}

uint64_t sub_10001124C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100011344;

  return v6(a1);
}

uint64_t sub_100011344()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10001144C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100011484(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

unint64_t sub_100011494(unint64_t result)
{
  if (result != 4)
  {
    return sub_1000082F0(result);
  }

  return result;
}

uint64_t sub_1000114B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100011528(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100012C4C;

  return sub_1000109E8(a1, v4, v5, v6);
}

uint64_t sub_1000115DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E6C(&qword_100070AD0, &qword_1000449C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001164C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100011740;

  return v5(v2 + 32);
}

uint64_t sub_100011740()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100011854()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001188C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100012C4C;

  return sub_10001164C(a1, v4);
}

uint64_t sub_100011944(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000119FC;

  return sub_10001164C(a1, v4);
}

uint64_t sub_1000119FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double (*sub_100011AF0())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1000114EC;
}

uint64_t sub_100011B8C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100011BCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000119FC;

  return sub_10000FC7C(a1, v4, v5, v6);
}

double (*sub_100011C80())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_100011B54;
}

void sub_100011CE4(char a1)
{
  v12 = &type metadata for Feature;
  v3 = sub_100007F94();
  v13 = v3;
  v4 = isFeatureEnabled(_:)();
  sub_100007FE8(v11);
  if ((v4 & 1) == 0)
  {
    return;
  }

  v5 = [v1 view];
  if (!v5)
  {
LABEL_12:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v6 = v5;
  type metadata accessor for CoverSheetBackgroundView();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {

    goto LABEL_12;
  }

  v8 = v7;
  *(v7 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_isTransitioningBetweenAnimatedArtworks) = a1 & 1;
  if (a1)
  {
    v9 = 1;
  }

  else
  {
    v9 = *(v7 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_isAnimatedArtworkVisible);
  }

  *(v7 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_hidesRegularArtworkForMotionVisible) = v9;
  v12 = &type metadata for Feature;
  v13 = v3;
  v10 = isFeatureEnabled(_:)();
  sub_100007FE8(v11);
  if (v10)
  {
    sub_100006750(v8);
  }
}

void sub_100011E2C(char a1)
{
  v21 = &type metadata for Feature;
  v3 = sub_100007F94();
  v22 = v3;
  v4 = isFeatureEnabled(_:)();
  sub_100007FE8(v20);
  if ((v4 & 1) == 0)
  {
    return;
  }

  v5 = *&v1[OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_backdropViewController];
  v6 = OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_isObscured;
  v7 = *(v5 + OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_isObscured);
  v8 = a1 & 1;
  *(v5 + OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_isObscured) = a1 & 1;
  v21 = &type metadata for Feature;
  v22 = v3;
  v9 = isFeatureEnabled(_:)();
  v10 = sub_100007FE8(v20);
  if ((v9 & 1) != 0 && v7 != *(v5 + v6))
  {
    sub_10000C368(v10, v11);
  }

  v12 = [v1 view];
  if (!v12)
  {
LABEL_15:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v13 = v12;
  type metadata accessor for CoverSheetBackgroundView();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {

    goto LABEL_15;
  }

  v16 = v14;
  v17 = OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_isAnimatedArtworkVisible;
  *(v14 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_isAnimatedArtworkVisible) = v8;
  sub_100008308(v14, v15);
  if (*(v16 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_isTransitioningBetweenAnimatedArtworks))
  {
    v18 = 1;
  }

  else
  {
    v18 = *(v16 + v17);
  }

  *(v16 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_hidesRegularArtworkForMotionVisible) = v18;
  v21 = &type metadata for Feature;
  v22 = v3;
  v19 = isFeatureEnabled(_:)();
  sub_100007FE8(v20);
  if (v19)
  {
    sub_100006750(v16);
  }
}

uint64_t sub_100011FDC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100012C4C;

  return sub_10001124C(a1, v4);
}

void sub_100012094()
{
  v1 = v0 + OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_layoutMetrics;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 1;
  v2 = v0 + OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_ambientLifecycleCancellable;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  v3 = OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_motionDataLoader;
  type metadata accessor for MotionDataLoader(0);
  swift_allocObject();
  *(v0 + v3) = sub_10003C868();
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_isBacklightStateDeactivating) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_didSetLatestArtworkToArtworkView) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_artwork) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100012178(uint64_t a1)
{
  v7[3] = &type metadata for Feature;
  v7[4] = sub_100007F94();
  v3 = isFeatureEnabled(_:)();
  sub_100007FE8(v7);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_motionDataLoader);
    v5 = OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_pendingState;
    if (*(v4 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_state) < 4uLL || *(v4 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_pendingState) != 4)
    {
      sub_10000BF24(a1, 1);
    }

    if (*(v4 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_artworkImageUpToDateTimeoutTask))
    {

      sub_100004E6C(&qword_100070AC8, &unk_100044860);
      Task.cancel()();
    }

    *(v4 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_isRegularArtworkImageUpToDate) = 1;
    v6 = *(v4 + v5);
    if (v6 != 4)
    {
      sub_100011484(*(v4 + v5));
      sub_100039A28(v6);
      sub_100011494(v6);
    }
  }

  else
  {
    sub_10000BF24(a1, 1);
  }
}

uint64_t sub_1000122D4(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v6 = *(v14 - 8);
  __chkstk_darwin(v14);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CCE0();
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1000129C0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015D4C;
  aBlock[3] = &unk_10005E030;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100012940(&qword_100071B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004E6C(&unk_100070B00, &qword_100044790);
  sub_100012B78(&qword_100071BA0, &unk_100070B00, &qword_100044790, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v15 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v14);
}

uint64_t sub_1000125BC(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CCE0();
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1000128E8;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015D4C;
  aBlock[3] = &unk_10005DFE0;
  v11 = _Block_copy(aBlock);
  v12 = v1;
  v13 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100012940(&qword_100071B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004E6C(&unk_100070B00, &qword_100044790);
  sub_100012B78(&qword_100071BA0, &unk_100070B00, &qword_100044790, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v16 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v15);
}

uint64_t sub_1000128A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000128E8()
{
  v1 = *(v0 + 16);
  [*(v0 + 24) state];
  result = BLSBacklightStateIsActive();
  *(v1 + OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_isBacklightStateDeactivating) = result ^ 1;
  return result;
}

uint64_t sub_100012928(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100012940(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100012988()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000129C0()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_isBacklightStateDeactivating) = 0;
  if (BLSBacklightStateIsActive())
  {
    sub_1000104C4();
  }
}

uint64_t sub_100012A00()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100012A70()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012AB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E6C(&unk_100070B10, &qword_100044920);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100012B3C(char *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_shouldBlockDisplayLink);
  *(*a2 + OBJC_IVAR____TtC13MediaRemoteUI22BackdropViewController_shouldBlockDisplayLink) = v2;
  sub_10000BCD4(v3);
}

uint64_t sub_100012B78(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000CE40(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100012BC0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004E6C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100012C64()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  v4 = [v0 routeType];
  if (v4 > 0xB || ((1 << v4) & 0xB00) == 0)
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v7 = 0x800000010004C300;
    v6 = 0xD000000000000018;
  }

  else
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v6 = 0xD00000000000001BLL;
    v7 = 0x800000010004C320;
  }

  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v6);
  v8 = [v0 hostDisplayName];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v12);

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_100012EE4()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  [v0 routeType];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

void sub_10001303C()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  qword_100070B50 = v2;
}

id sub_1000130AC()
{
  if (qword_10006FF60 != -1)
  {
    swift_once();
  }

  v1 = qword_100070B50;
  if (qword_100070B50)
  {
    v2 = String._bridgeToObjectiveC()();
    [v1 removeObserver:v0 forKeyPath:v2];
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for SensitiveUIMonitor();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10001323C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  type metadata accessor for MainActor();
  v5[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000132D8, v7, v6);
}

uint64_t sub_1000132D8()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 64);
    if (v2 && *(v2 + 16) && (v3 = sub_10003793C(NSKeyValueChangeNewKey), (v4 & 1) != 0) && (sub_10001395C(*(v2 + 56) + 32 * v3, v0 + 16), swift_dynamicCast()))
    {
      v5 = *(v0 + 80);
    }

    else
    {
      v5 = 1;
    }

    sub_10003C9A0(v5);
    swift_unknownObjectRelease();
  }

  **(v0 + 48) = Strong == 0;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10001353C()
{
  if (qword_10006FF60 != -1)
  {
    swift_once();
  }

  v0 = qword_100070B50;
  if (!qword_100070B50)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    sub_1000080EC(&v6);
    return 1;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 1;
}

double sub_10001365C(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v10 = sub_100004E6C(&qword_100070AD0, &qword_1000449C0);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  if (a2 && (a1 == 0xD000000000000014 && 0x800000010004C390 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
    type metadata accessor for MainActor();

    v15 = v5;
    v16 = static MainActor.shared.getter();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = &protocol witness table for MainActor;
    v17[4] = v15;
    v17[5] = a5;
    v17[6] = ObjectType;
    sub_1000101C0(0, 0, v13, &unk_1000449D0, v17);
  }

  return result;
}

unint64_t sub_1000137F4()
{
  result = qword_1000702B0;
  if (!qword_1000702B0)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000702B0);
  }

  return result;
}

uint64_t sub_10001384C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100013894(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000119FC;

  return sub_10001323C(a1, v4, v5, v6, v7);
}

uint64_t sub_10001395C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_1000139B8()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v3 = v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v76 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100004E6C(&qword_100070C00, &unk_100044A80);
  __chkstk_darwin(v7 - 8);
  v9 = v67 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v75 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v67 - v14;
  v16 = type metadata accessor for ProximityCardViewController(0);
  v78.receiver = v0;
  v78.super_class = v16;
  result = objc_msgSendSuper2(&v78, "viewDidLoad");
  v18 = *&v0[OBJC_IVAR____TtC13MediaRemoteUI27ProximityCardViewController_deviceName + 8];
  if (v18)
  {
    v19 = *&v0[OBJC_IVAR____TtC13MediaRemoteUI27ProximityCardViewController_image];
    if (v19)
    {
      v73 = v3;
      v74 = v15;
      v71 = *&v0[OBJC_IVAR____TtC13MediaRemoteUI27ProximityCardViewController_deviceName];
      v20 = v10;
      v21 = OBJC_IVAR____TtC13MediaRemoteUI27ProximityCardViewController_url;
      swift_beginAccess();
      sub_100014A40(&v0[v21], v9);
      if ((*(v11 + 48))(v9, 1, v20) == 1)
      {
        return sub_100012BC0(v9, &qword_100070C00, &unk_100044A80);
      }

      else
      {
        v22 = *(v11 + 32);
        v67[1] = v11 + 32;
        v68 = v22;
        v72 = v11;
        v23 = v74;
        v22();

        v24 = v19;
        v70 = v24;
        [v0 setDismissalType:3];
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v25._object = 0x800000010004C4A0;
        v25._countAndFlagsBits = 0xD000000000000022;
        v26 = v0;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v25);
        v27._countAndFlagsBits = v71;
        v27._object = v18;
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v27);

        v28._countAndFlagsBits = 0;
        v28._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v28);
        String.LocalizationValue.init(stringInterpolation:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v29 = v20;
        v30 = String._bridgeToObjectiveC()();

        [v26 setTitle:v30];

        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v31 = String._bridgeToObjectiveC()();

        [v26 setSubtitle:v31];

        v32 = [objc_allocWithZone(PRXImageView) initWithStyle:0];
        [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v32 setContentMode:1];
        [v32 setImage:v24];
        v33 = [v26 contentView];
        [v33 addSubview:v32];

        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v34 = v72;
        v35 = *(v72 + 16);
        v36 = v75;
        v69 = v29;
        v35(v75, v23, v29);
        v37 = (*(v34 + 80) + 24) & ~*(v34 + 80);
        v38 = swift_allocObject();
        *(v38 + 16) = v26;
        (v68)(v38 + v37, v36, v29);
        v39 = v26;
        v40 = String._bridgeToObjectiveC()();

        aBlock[4] = sub_100014B74;
        aBlock[5] = v38;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10001439C;
        aBlock[3] = &unk_10005E198;
        v41 = _Block_copy(aBlock);
        v42 = [objc_opt_self() actionWithTitle:v40 style:0 handler:v41];

        _Block_release(v41);

        v76 = objc_opt_self();
        sub_100004E6C(&unk_100070270, qword_100045030);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_1000449E0;
        v44 = [v32 centerXAnchor];
        v45 = [v39 contentView];
        v46 = [v45 mainContentGuide];

        v47 = [v46 centerXAnchor];
        v48 = [v44 constraintEqualToAnchor:v47];

        *(v43 + 32) = v48;
        v49 = [v32 centerYAnchor];
        v50 = [v39 contentView];
        v51 = [v50 mainContentGuide];

        v52 = [v51 centerYAnchor];
        v53 = [v49 constraintEqualToAnchor:v52];

        *(v43 + 40) = v53;
        v54 = [v32 topAnchor];
        v55 = [v39 contentView];
        v56 = [v55 mainContentGuide];

        v57 = [v56 topAnchor];
        v58 = [v54 constraintGreaterThanOrEqualToAnchor:v57];

        *(v43 + 48) = v58;
        v59 = [v32 bottomAnchor];
        v60 = [v39 contentView];
        v61 = [v60 mainContentGuide];

        v62 = [v61 bottomAnchor];
        v63 = [v59 constraintLessThanOrEqualToAnchor:v62];

        *(v43 + 56) = v63;
        v64 = [v32 heightAnchor];

        v65 = [v64 constraintEqualToConstant:150.0];
        *(v43 + 64) = v65;
        sub_100004EF4();
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v76 activateConstraints:isa];

        return (*(v72 + 8))(v74, v69);
      }
    }
  }

  return result;
}

void sub_10001439C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_100014454(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = static os_log_type_t.error.getter();
    if (qword_10006FF80 != -1)
    {
      swift_once();
    }

    v3 = qword_1000737C8;
    if (os_log_type_enabled(qword_1000737C8, v2))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&_mh_execute_header, v3, v2, "Failed to open application with error: %@", v4, 0xCu);
      sub_100012BC0(v5, &unk_100071C40, qword_100044AA0);
    }
  }
}

void sub_100014598(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t type metadata accessor for ProximityCardViewController(uint64_t a1)
{
  result = qword_100070BC0;
  if (!qword_100070BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000147B0(uint64_t a1)
{
  sub_100014854(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100014854(uint64_t a1)
{
  if (!qword_100070BD0)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100070BD0);
    }
  }
}

id sub_1000149E4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100014A40(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E6C(&qword_100070C00, &unk_100044A80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100014AB0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100014B74()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_100014BEC(v2);
}

uint64_t sub_100014BD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100014BEC(uint64_t a1)
{
  v2 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
  if (v2)
  {
    v3 = v2;
    v4 = SBSCreateOpenApplicationService();
    sub_100004E6C(&qword_100070C08, &qword_100044A90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000449F0;
    aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v6;
    AnyHashable.init<A>(_:)();
    v7 = type metadata accessor for URL();
    *(inited + 96) = v7;
    v8 = sub_100014E9C((inited + 72));
    (*(*(v7 - 8) + 16))(v8, a1, v7);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    AnyHashable.init<A>(_:)();
    *(inited + 168) = &type metadata for Bool;
    *(inited + 144) = 1;
    aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v9;
    AnyHashable.init<A>(_:)();
    *(inited + 240) = &type metadata for Bool;
    *(inited + 216) = 1;
    sub_100038588(inited);
    swift_setDeallocating();
    sub_100004E6C(&qword_100072340, &qword_100044A98);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v11 = [objc_opt_self() optionsWithDictionary:isa];

    if (v4)
    {
      v17 = sub_100014454;
      v18 = 0;
      aBlock = _NSConcreteStackBlock;
      v14 = 1107296256;
      v15 = sub_100014598;
      v16 = &unk_10005E1C0;
      v12 = _Block_copy(&aBlock);
      [v4 openApplication:v3 withOptions:v11 completion:v12];

      _Block_release(v12);
      v11 = v4;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t *sub_100014E9C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

id sub_100014F70@<X0>(void *a1@<X8>)
{
  type metadata accessor for BackdropViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

uint64_t sub_100014FB0(uint64_t a1)
{
  static os_log_type_t.default.getter();
  if (qword_10006FF80 != -1)
  {
    swift_once();
  }

  return os_log(_:dso:log:_:_:)();
}

id sub_100015254()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AmbientSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100015318(void *a1)
{
  v3 = sub_100004E6C(&qword_100070C60, &qword_100044928);
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v5 = &v33 - v4;
  v43 = sub_100004E6C(&qword_100070C68, &unk_100044B30);
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v7 = &v33 - v6;
  v44 = sub_100004E6C(&qword_100070C70, &qword_100044B40);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v9 = &v33 - v8;
  v10 = sub_100004E6C(&qword_100070C78, &qword_100044B48);
  v45 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  v13 = sub_100004E6C(&unk_100070C80, &unk_100044B50);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v33 - v15;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v37 = v17;
    v38 = a1;
    static os_log_type_t.default.getter();
    if (qword_10006FF80 != -1)
    {
      swift_once();
    }

    v33 = v16;
    v34 = v10;
    v35 = v14;
    v36 = v13;
    os_log(_:dso:log:_:_:)();
    if (qword_10006FF70 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v46[0]) = 1;

    static Published.subscript.setter();
    v18 = v1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      v20 = [objc_opt_self() proactiveEndpointController];
      Strong = [objc_allocWithZone(MRUNowPlayingController) initWithEndpointController:v20];

      swift_unknownObjectWeakAssign();
    }

    v21 = [objc_allocWithZone(MRUAmbientNowPlayingViewController) initWithNowPlayingController:Strong];

    swift_beginAccess();
    sub_100004E6C(&unk_100070B30, &qword_100044940);
    Published.projectedValue.getter();
    swift_endAccess();
    sub_100012B78(&qword_100070C90, &qword_100070C60, &qword_100044928, &protocol conformance descriptor for Published<A>.Publisher);
    v22 = v40;
    Publisher.filter(_:)();
    (*(v39 + 8))(v5, v22);
    sub_100004E6C(&qword_100070C98, qword_100044B60);
    sub_100012B78(&qword_100070CA0, &qword_100070C68, &unk_100044B30, &protocol conformance descriptor for Publishers.Filter<A>);
    v23 = v43;
    Publisher.map<A>(_:)();
    (*(v41 + 8))(v7, v23);
    sub_100012B78(&qword_100070CA8, &qword_100070C70, &qword_100044B40, &protocol conformance descriptor for Publishers.Map<A, B>);
    v24 = v44;
    Publisher.first()();
    (*(v42 + 8))(v9, v24);
    sub_100012B78(&qword_100070CB0, &qword_100070C78, &qword_100044B48, &protocol conformance descriptor for Publishers.First<A>);
    v25 = v34;
    v26 = v33;
    Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();
    (*(v45 + 8))(v12, v25);
    swift_getKeyPath();
    v46[0] = v21;
    sub_100012B78(&qword_100070CB8, &unk_100070C80, &unk_100044B50, &protocol conformance descriptor for Publishers.HandleEvents<A>);
    v27 = v36;
    v28 = Publisher<>.assign<A>(to:on:)();

    (*(v35 + 8))(v26, v27);
    v46[3] = type metadata accessor for AnyCancellable();
    v46[4] = &protocol witness table for AnyCancellable;
    v46[0] = v28;
    v29 = OBJC_IVAR____TtC13MediaRemoteUI20AmbientSceneDelegate_isBackdropActiveCancellable;
    swift_beginAccess();
    sub_100012AB0(v46, v18 + v29);
    swift_endAccess();
    v30 = objc_allocWithZone(type metadata accessor for SecureWindow());
    v31 = [v30 initWithWindowScene:v37];
    [v31 setRootViewController:v21];
    [v31 makeKeyAndVisible];

    v32 = *(v18 + OBJC_IVAR____TtC13MediaRemoteUI20AmbientSceneDelegate_window);
    *(v18 + OBJC_IVAR____TtC13MediaRemoteUI20AmbientSceneDelegate_window) = v31;
  }
}

uint64_t sub_100015B20()
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v1 = OBJC_IVAR____TtC13MediaRemoteUI20AmbientSceneDelegate_isBackdropActiveCancellable;
  swift_beginAccess();
  sub_100012AB0(v4, v0 + v1);
  swift_endAccess();
  v2 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI20AmbientSceneDelegate_window);
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI20AmbientSceneDelegate_window) = 0;

  if (qword_10006FF70 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v4[0]) = 0;

  static Published.subscript.setter();
  static os_log_type_t.default.getter();
  if (qword_10006FF80 != -1)
  {
    swift_once();
  }

  return os_log(_:dso:log:_:_:)();
}

id sub_100015C94@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 backdropViewController];
  *a2 = result;
  return result;
}

uint64_t sub_100015CE4(uint64_t a1)
{
  v2 = sub_100004E6C(&unk_100070B10, &qword_100044920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_100015D4C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

char *sub_100015D90(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v34 = a5;
  v33 = a3;
  v43 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004E6C(&unk_100071760, &qword_100044C60);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - v13;
  v35 = sub_100004E6C(&unk_100070D20, &qword_100044C68);
  v38 = *(v35 - 8);
  __chkstk_darwin(v35);
  v16 = &v32 - v15;
  v40 = sub_100004E6C(&qword_100071770, &unk_100044C70);
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v18 = &v32 - v17;
  *(v5 + OBJC_IVAR____TtC13MediaRemoteUI34SuggestedRouteBannerViewController_cancellables) = &_swiftEmptySetSingleton;
  *(v5 + OBJC_IVAR____TtC13MediaRemoteUI34SuggestedRouteBannerViewController_userInterfaceStyleTraitChangeRegistration) = 0;
  *(v5 + OBJC_IVAR____TtC13MediaRemoteUI34SuggestedRouteBannerViewController_isOnScreen) = 0;
  *(v5 + OBJC_IVAR____TtC13MediaRemoteUI34SuggestedRouteBannerViewController____lazy_storage___bannerView) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + OBJC_IVAR____TtC13MediaRemoteUI34SuggestedRouteBannerViewController_providesHostedContent) = 1;
  v39 = a1;
  sub_100004DB8(a1, v44);
  v37 = a4;
  swift_unknownObjectRetain();
  v19 = a2;
  v36 = v19;
  v20 = v33;
  v21 = v19;
  v22 = v20;
  v23 = sub_100023CE8(a1, v21, v20, a4, v34);
  v24 = v22;
  v25 = [v22 configuration];
  v26 = [objc_opt_self() mru_suggestedRouteBannerTitleFont];
  [v25 setFont:v26];

  [v23 setPreferredContentSize:{430.0, 50.0}];
  swift_beginAccess();
  v27 = v23;
  sub_100004E6C(&qword_100070D30, &qword_1000452E0);
  Published.projectedValue.getter();
  swift_endAccess();

  sub_100012B78(&qword_100070D38, &unk_100071760, &qword_100044C60, &protocol conformance descriptor for Published<A>.Publisher);
  sub_1000171E0();
  Publisher<>.removeDuplicates()();
  (*(v12 + 8))(v14, v11);
  NSRunLoop.SchedulerTimeType.Stride.init(floatLiteral:)();
  v28 = [objc_opt_self() mainRunLoop];
  v44[0] = v28;
  sub_100017234();
  sub_100012B78(&qword_100070D50, &unk_100070D20, &qword_100044C68, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  sub_100017280();
  v29 = v35;
  Publisher.throttle<A>(for:scheduler:latest:)();

  (*(v42 + 8))(v10, v43);
  (*(v38 + 8))(v16, v29);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100012B78(&qword_100070D60, &qword_100071770, &unk_100044C70, &protocol conformance descriptor for Publishers.Throttle<A, B>);
  v30 = v40;
  Publisher<>.sink(receiveValue:)();

  (*(v41 + 8))(v18, v30);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  swift_unknownObjectRelease();

  sub_100004E14(v39);

  return v27;
}

double sub_100016418(__int128 *a1, uint64_t a2)
{
  v2 = a1[11];
  v36 = a1[10];
  v37 = v2;
  v38 = a1[12];
  v39 = *(a1 + 26);
  v3 = a1[7];
  v32 = a1[6];
  v33 = v3;
  v4 = a1[9];
  v34 = a1[8];
  v35 = v4;
  v5 = a1[3];
  v28 = a1[2];
  v29 = v5;
  v6 = a1[5];
  v30 = a1[4];
  v31 = v6;
  v7 = a1[1];
  v26 = *a1;
  v27 = v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_100024310();
    v11 = swift_allocObject();
    v12 = v30;
    *(v11 + 104) = v31;
    *(v11 + 88) = v12;
    v13 = v28;
    *(v11 + 72) = v29;
    *(v11 + 56) = v13;
    v14 = v34;
    *(v11 + 168) = v35;
    *(v11 + 152) = v14;
    v15 = v32;
    *(v11 + 136) = v33;
    *(v11 + 120) = v15;
    v16 = v37;
    *(v11 + 216) = v38;
    v17 = v36;
    *(v11 + 200) = v16;
    *(v11 + 184) = v17;
    v18 = v27;
    *(v11 + 24) = v26;
    *(v11 + 16) = v10;
    *(v11 + 232) = v39;
    *(v11 + 40) = v18;
    if (*(v10 + OBJC_IVAR____TtC13MediaRemoteUI34SuggestedRouteBannerViewController_isOnScreen) == 1)
    {
      v19 = objc_opt_self();
      v24[4] = sub_1000173C8;
      v24[5] = v11;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 1107296256;
      v24[2] = sub_100015D4C;
      v24[3] = &unk_10005E238;
      v20 = _Block_copy(v24);
      v21 = v10;
      sub_100004DB8(&v26, v25);

      [v19 animateWithDuration:4 delay:v20 options:0 animations:0.25 completion:0.0];

      _Block_release(v20);
    }

    else
    {
      v22 = v10;
      sub_100004DB8(&v26, v25);
      v23 = sub_1000166F4();
      sub_100004DB8(&v26, v25);
      sub_100034164(&v26);
      sub_100004E14(&v26);

      [*&v22[OBJC_IVAR____TtC13MediaRemoteUI34SuggestedRouteBannerViewController____lazy_storage___bannerView] layoutIfNeeded];
    }
  }

  return result;
}

id sub_10001667C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000166F4();
  sub_100004DB8(a2, v6);
  sub_100034164(a2);
  sub_100004E14(a2);

  return [*(a1 + OBJC_IVAR____TtC13MediaRemoteUI34SuggestedRouteBannerViewController____lazy_storage___bannerView) layoutIfNeeded];
}

char *sub_1000166F4()
{
  v1 = OBJC_IVAR____TtC13MediaRemoteUI34SuggestedRouteBannerViewController____lazy_storage___bannerView;
  v2 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI34SuggestedRouteBannerViewController____lazy_storage___bannerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI34SuggestedRouteBannerViewController____lazy_storage___bannerView);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v24[10] = v20;
    v24[11] = v21;
    v24[12] = v22;
    v25 = v23;
    v24[6] = v16;
    v24[7] = v17;
    v24[8] = v18;
    v24[9] = v19;
    v24[2] = v12;
    v24[3] = v13;
    v24[4] = v14;
    v24[5] = v15;
    v24[0] = v10;
    v24[1] = v11;
    v4 = objc_allocWithZone(type metadata accessor for SuggestedRouteBannerView());
    v5 = v0;
    v6 = sub_10003337C(v24);
    v7 = *(v0 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_100016884()
{
  v1 = v0;
  v2 = sub_100004E6C(&unk_100070D70, qword_100044CD0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - v4;
  v6 = [*&v0[OBJC_IVAR____TtC13MediaRemoteUI38SuggestedRouteBaseBannerViewController_routeTextFormatter] configuration];

  [v6 setTextBoundingWidth:178.0];
  sub_100024AC4();
  v7 = OBJC_IVAR____TtC13MediaRemoteUI34SuggestedRouteBannerViewController____lazy_storage___bannerView;
  v8 = *&v0[OBJC_IVAR____TtC13MediaRemoteUI34SuggestedRouteBannerViewController____lazy_storage___bannerView];
  v9 = sub_100033194();

  swift_beginAccess();
  sub_100004E6C(&unk_100070140, &unk_100044310);
  Published.projectedValue.getter();
  swift_endAccess();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100012B78(&unk_100070D80, &unk_100070D70, qword_100044CD0, &protocol conformance descriptor for Published<A>.Publisher);
  Publisher<>.sink(receiveValue:)();

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v10 = *(*&v1[v7] + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_activityRouteView);
  v11 = *&v1[OBJC_IVAR____TtC13MediaRemoteUI38SuggestedRouteBaseBannerViewController_activityRouteView];
  *&v1[OBJC_IVAR____TtC13MediaRemoteUI38SuggestedRouteBaseBannerViewController_activityRouteView] = v10;
  v12 = v10;

  sub_100024310();
  v13 = type metadata accessor for SuggestedRouteBannerViewController(0);
  v16.receiver = v1;
  v16.super_class = v13;
  objc_msgSendSuper2(&v16, "viewDidLoad");
  return [*(*&v1[v7] + OBJC_IVAR____TtC13MediaRemoteUI24SuggestedRouteBannerView_actionButton) addTarget:v1 action:"actionButtonTappedWithSender:" forControlEvents:64];
}

void sub_100016B6C(double *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [*(Strong + OBJC_IVAR____TtC13MediaRemoteUI38SuggestedRouteBaseBannerViewController_routeTextFormatter) configuration];
    [v5 textBoundingWidth];
    v7 = v6;

    if (v7 < v2)
    {
      sub_100024AC8(v2);
    }
  }
}

id sub_100016C5C(char a1)
{
  v2 = v1;
  v4 = sub_1000166F4();
  sub_100004E6C(&qword_100070D68, &qword_100044CC8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100044BC0;
  *(v5 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v5 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  v6 = OBJC_IVAR____TtC13MediaRemoteUI34SuggestedRouteBannerViewController____lazy_storage___bannerView;
  v7 = *&v2[OBJC_IVAR____TtC13MediaRemoteUI34SuggestedRouteBannerViewController____lazy_storage___bannerView];
  v13[3] = type metadata accessor for SuggestedRouteBannerView();
  v13[0] = v7;
  v8 = v7;
  v9 = UIView.registerForTraitChanges(_:target:action:)();

  sub_100007FE8(v13);
  *&v2[OBJC_IVAR____TtC13MediaRemoteUI34SuggestedRouteBannerViewController_userInterfaceStyleTraitChangeRegistration] = v9;
  swift_unknownObjectRelease();
  v10 = *&v2[v6];
  sub_100033EC8();

  v12.receiver = v2;
  v12.super_class = type metadata accessor for SuggestedRouteBannerViewController(0);
  return objc_msgSendSuper2(&v12, "viewWillAppear:", a1 & 1);
}

uint64_t sub_100017020()
{

  swift_unknownObjectRelease();

  v1 = v0 + OBJC_IVAR____TtC13MediaRemoteUI34SuggestedRouteBannerViewController_presentableContext;

  return sub_10000630C(v1);
}

id sub_100017080()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuggestedRouteBannerViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SuggestedRouteBannerViewController(uint64_t a1)
{
  result = qword_100070D08;
  if (!qword_100070D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000171E0()
{
  result = qword_100070D40;
  if (!qword_100070D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070D40);
  }

  return result;
}

unint64_t sub_100017234()
{
  result = qword_100070D48;
  if (!qword_100070D48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100070D48);
  }

  return result;
}

unint64_t sub_100017280()
{
  result = qword_100070D58;
  if (!qword_100070D58)
  {
    sub_100017234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070D58);
  }

  return result;
}

uint64_t sub_1000172D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100017318()
{

  return _swift_deallocObject(v0, 240, 7);
}

uint64_t sub_1000173D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000173F4()
{
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI34SuggestedRouteBannerViewController_cancellables) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI34SuggestedRouteBannerViewController_userInterfaceStyleTraitChangeRegistration) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI34SuggestedRouteBannerViewController_isOnScreen) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI34SuggestedRouteBannerViewController____lazy_storage___bannerView) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI34SuggestedRouteBannerViewController_providesHostedContent) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000174B4(void *a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v17 = a1;
  v9 = [v8 configurationIdentifier];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (v11 == 0x74696D69786F7270 && v13 == 0xEE00647261632D79)
    {
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    *(v3 + OBJC_IVAR____TtC13MediaRemoteUI24RemoteAlertSceneDelegate_underlyingSceneDelegate) = [objc_allocWithZone(type metadata accessor for ProximityCardSceneDelegate()) init];
    swift_unknownObjectRelease();
  }

LABEL_12:
  v16 = *(v3 + OBJC_IVAR____TtC13MediaRemoteUI24RemoteAlertSceneDelegate_underlyingSceneDelegate);
  if (v16 && ([v16 respondsToSelector:"scene:willConnectToSession:options:"] & 1) != 0)
  {
    [v16 scene:v17 willConnectToSession:a2 options:a3];
  }
}

char *sub_100017734(char *result, uint64_t a2, uint64_t a3, const char **a4)
{
  v4 = *&result[OBJC_IVAR____TtC13MediaRemoteUI24RemoteAlertSceneDelegate_underlyingSceneDelegate];
  if (v4)
  {
    result = [*&result[OBJC_IVAR____TtC13MediaRemoteUI24RemoteAlertSceneDelegate_underlyingSceneDelegate] respondsToSelector:*a4];
    if (result)
    {
      v7 = *a4;

      return [v4 v7];
    }
  }

  return result;
}

id sub_100017800()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteAlertSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000178C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_100004E6C(&qword_100070C00, &unk_100044A80);
  __chkstk_darwin(v13 - 8);
  v15 = &v31 - v14;
  if (a1)
  {
    type metadata accessor for ProximityCardViewController(0);
    v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v17 = a1;
    v18 = [v16 init];
    v19 = [v17 mru_imageFittingSize:{150.0, 150.0}];
    v20 = *&v18[OBJC_IVAR____TtC13MediaRemoteUI27ProximityCardViewController_image];
    *&v18[OBJC_IVAR____TtC13MediaRemoteUI27ProximityCardViewController_image] = v19;

    v21 = &v18[OBJC_IVAR____TtC13MediaRemoteUI27ProximityCardViewController_deviceName];
    *v21 = a3;
    *(v21 + 1) = a4;

    v22 = type metadata accessor for URL();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v15, a5, v22);
    (*(v23 + 56))(v15, 0, 1, v22);
    v24 = OBJC_IVAR____TtC13MediaRemoteUI27ProximityCardViewController_url;
    swift_beginAccess();
    sub_10001880C(v15, &v18[v24]);
    swift_endAccess();
    type metadata accessor for ProximityCardRootViewController();
    v25 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v26 = [objc_allocWithZone(type metadata accessor for SecureWindow()) initWithWindowScene:a6];
    [v26 setRootViewController:v25];
    [v26 makeKeyAndVisible];
    v27 = *(a7 + OBJC_IVAR____TtC13MediaRemoteUI26ProximityCardSceneDelegate_window);
    *(a7 + OBJC_IVAR____TtC13MediaRemoteUI26ProximityCardSceneDelegate_window) = v26;

    v28 = v18;
    v29 = [v25 presentProxCardFlowWithDelegate:a7 initialViewController:v28];

    v30 = *(a7 + OBJC_IVAR____TtC13MediaRemoteUI26ProximityCardSceneDelegate_navigationController);
    *(a7 + OBJC_IVAR____TtC13MediaRemoteUI26ProximityCardSceneDelegate_navigationController) = v29;
  }
}

id sub_100017D80(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ProximityCardSceneDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100017E24(void *a1)
{
  v3 = sub_100004E6C(&qword_100070C00, &unk_100044A80);
  __chkstk_darwin(v3 - 8);
  v5 = &v41 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v41 - v11;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v51 = a1;
    v15 = [v14 configurationContext];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 userInfo];

      if (v17)
      {
        v50 = v7;
        v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v53 = 0x614E656369766564;
        v54 = 0xEA0000000000656DLL;
        AnyHashable.init<A>(_:)();
        if (!*(v18 + 16) || (v19 = v1, v20 = sub_1000379D0(aBlock), (v21 & 1) == 0))
        {

LABEL_22:
          sub_10001858C(aBlock);
          return;
        }

        sub_10001395C(*(v18 + 56) + 32 * v20, v55);
        sub_10001858C(aBlock);
        if (swift_dynamicCast())
        {
          v22 = v54;
          v48 = v53;
          v53 = 0x6564496C65646F6DLL;
          v54 = 0xEF7265696669746ELL;
          AnyHashable.init<A>(_:)();
          if (!*(v18 + 16) || (v49 = v22, v23 = sub_1000379D0(aBlock), (v24 & 1) == 0))
          {

LABEL_27:

            goto LABEL_22;
          }

          sub_10001395C(*(v18 + 56) + 32 * v23, v55);
          sub_10001858C(aBlock);
          if (swift_dynamicCast())
          {
            v46 = v53;
            v47 = v54;
            v53 = 0x726F6C6F63;
            v54 = 0xE500000000000000;
            AnyHashable.init<A>(_:)();
            if (!*(v18 + 16) || (v25 = sub_1000379D0(aBlock), (v26 & 1) == 0))
            {

LABEL_31:

              goto LABEL_27;
            }

            sub_10001395C(*(v18 + 56) + 32 * v25, v55);
            sub_10001858C(aBlock);
            if (swift_dynamicCast())
            {
              v44 = v53;
              v45 = v54;
              v53 = 7107189;
              v54 = 0xE300000000000000;
              AnyHashable.init<A>(_:)();
              if (*(v18 + 16))
              {
                v27 = sub_1000379D0(aBlock);
                if (v28)
                {
                  sub_10001395C(*(v18 + 56) + 32 * v27, v55);
                  sub_10001858C(aBlock);

                  if (swift_dynamicCast())
                  {
                    URL.init(string:)();

                    v29 = v50;
                    if ((*(v50 + 48))(v5, 1, v6) == 1)
                    {

                      sub_1000185E0(v5);
                    }

                    else
                    {
                      v42 = *(v29 + 32);
                      v42(v12, v5, v6);
                      v43 = [objc_opt_self() sharedManager];
                      v46 = String._bridgeToObjectiveC()();

                      v47 = String._bridgeToObjectiveC()();

                      (*(v29 + 16))(v10, v12, v6);
                      v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
                      v32 = (v8 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
                      v33 = swift_allocObject();
                      v34 = v49;
                      *(v33 + 16) = v48;
                      *(v33 + 24) = v34;
                      v42((v33 + v31), v10, v6);
                      *(v33 + v32) = v14;
                      *(v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;
                      aBlock[4] = sub_100018738;
                      aBlock[5] = v33;
                      aBlock[0] = _NSConcreteStackBlock;
                      aBlock[1] = 1107296256;
                      aBlock[2] = sub_100014598;
                      aBlock[3] = &unk_10005E288;
                      v35 = _Block_copy(aBlock);
                      v36 = v51;
                      v37 = v19;

                      v38 = v43;
                      v39 = v46;
                      v40 = v47;
                      [v43 imageForModelIdentifier:v46 color:v47 allowFallback:1 completion:v35];
                      _Block_release(v35);

                      (*(v50 + 8))(v12, v6);
                    }
                  }

                  else
                  {
                  }

                  return;
                }
              }

              goto LABEL_31;
            }
          }

          else
          {
          }
        }

        else
        {
        }

        return;
      }
    }

    v30 = v51;
  }
}

uint64_t sub_1000185E0(uint64_t a1)
{
  v2 = sub_100004E6C(&qword_100070C00, &unk_100044A80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100018648()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

void sub_100018738(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + v7);
  v11 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1000178C0(a1, a2, v8, v9, v2 + v6, v10, v11);
}

uint64_t sub_1000187F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001880C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E6C(&qword_100070C00, &unk_100044A80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001887C()
{
  type metadata accessor for AmbientSceneDependency();
  v0 = swift_allocObject();
  result = swift_unknownObjectWeakInit();
  qword_100073720 = v0;
  return result;
}

uint64_t sub_1000188C0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t getEnumTagSinglePayload for Feature(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Feature(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100018A00()
{
  result = qword_100070F58;
  if (!qword_100070F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070F58);
  }

  return result;
}

Swift::Int sub_100018A5C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100018AC8(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100018B30()
{
  type metadata accessor for SceneMonitor(0);
  swift_allocObject();
  result = sub_100018C18();
  qword_100073728 = result;
  return result;
}

uint64_t sub_100018BAC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_100018C18()
{
  v1 = sub_100004E6C(&unk_100070B30, &qword_100044940);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-v3];
  v5 = OBJC_IVAR____TtC13MediaRemoteUI12SceneMonitor__isAmbientSceneActive;
  v10[15] = 0;
  Published.init(initialValue:)();
  v6 = *(v2 + 32);
  v6(v0 + v5, v4, v1);
  v7 = OBJC_IVAR____TtC13MediaRemoteUI12SceneMonitor__isAmbientCompactSceneActive;
  v10[14] = 0;
  Published.init(initialValue:)();
  v6(v0 + v7, v4, v1);
  v8 = OBJC_IVAR____TtC13MediaRemoteUI12SceneMonitor__isBackdropSceneActive;
  v10[13] = 0;
  Published.init(initialValue:)();
  v6(v0 + v8, v4, v1);
  return v0;
}

uint64_t sub_100018D80()
{
  v1 = OBJC_IVAR____TtC13MediaRemoteUI12SceneMonitor__isAmbientSceneActive;
  v2 = sub_100004E6C(&unk_100070B30, &qword_100044940);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC13MediaRemoteUI12SceneMonitor__isAmbientCompactSceneActive, v2);
  v3(v0 + OBJC_IVAR____TtC13MediaRemoteUI12SceneMonitor__isBackdropSceneActive, v2);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t type metadata accessor for SceneMonitor(uint64_t a1)
{
  result = qword_100070FA0;
  if (!qword_100070FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100018EC8(uint64_t a1)
{
  sub_100018F5C();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100018F5C()
{
  if (!qword_100070FB0)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100070FB0);
    }
  }
}

void sub_100018FE8(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a4 = v5;
}

uint64_t sub_100019078(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_100019220(void *a1, __n128 a2)
{
  v3 = v2;
  swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_100006334(0, &qword_1000711C8, UIScene_ptr);
    v7 = a1;
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      if (qword_10006FF90 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_10001144C(v9, qword_1000737D8);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v71 = v13;
        *v12 = 136315138;
        v14 = _typeName(_:qualified:)();
        v16 = sub_10003F8C8(v14, v15, &v71);

        *(v12 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v10, v11, "[%s] CoverSheetScene did disconnect", v12, 0xCu);
        sub_100007FE8(v13);
      }

      if (qword_10006FFA0 != -1)
      {
        swift_once();
      }

      v17 = qword_100073810;
      v18 = *(qword_100073810 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_platterContainer);
      *(qword_100073810 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_platterContainer) = 0;

      sub_10002AC44();
      v19 = *(v17 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_artwork);
      *(v17 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_artwork) = 0;

      sub_10002B204();
      v20 = OBJC_IVAR____TtC13MediaRemoteUI21ActivitySceneDelegate_coversheetWindow;
LABEL_24:
      v45 = *(v3 + v20);
      *(v3 + v20) = 0;

      return;
    }
  }

  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    sub_100006334(0, &qword_1000711C8, UIScene_ptr);
    v23 = a1;
    v24 = static NSObject.== infix(_:_:)();

    if (v24)
    {
      if (qword_10006FF90 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10001144C(v25, qword_1000737D8);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v71 = v29;
        *v28 = 136315138;
        v30 = _typeName(_:qualified:)();
        v32 = sub_10003F8C8(v30, v31, &v71);

        *(v28 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v26, v27, "[%s] RouteRecommendationScene did disconnect", v28, 0xCu);
        sub_100007FE8(v29);
      }

      v20 = OBJC_IVAR____TtC13MediaRemoteUI21ActivitySceneDelegate_routeRecommendationWindow;
      goto LABEL_24;
    }
  }

  v33 = swift_unknownObjectWeakLoadStrong();
  if (v33)
  {
    v34 = v33;
    sub_100006334(0, &qword_1000711C8, UIScene_ptr);
    v35 = a1;
    v36 = static NSObject.== infix(_:_:)();

    if (v36)
    {
      if (qword_10006FF90 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_10001144C(v37, qword_1000737D8);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v71 = v41;
        *v40 = 136315138;
        v42 = _typeName(_:qualified:)();
        v44 = sub_10003F8C8(v42, v43, &v71);

        *(v40 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v38, v39, "[%s] NowPlayingBannerScene did disconnect", v40, 0xCu);
        sub_100007FE8(v41);
      }

      v20 = OBJC_IVAR____TtC13MediaRemoteUI21ActivitySceneDelegate_nowPlayingBannerWindow;
      goto LABEL_24;
    }
  }

  v46 = swift_unknownObjectWeakLoadStrong();
  if (v46 && (v47 = v46, sub_100006334(0, &qword_1000711C8, UIScene_ptr), v48 = a1, v49 = static NSObject.== infix(_:_:)(), v47, v48, (v49 & 1) != 0))
  {
    if (qword_10006FF90 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_10001144C(v50, qword_1000737D8);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v71 = v54;
      *v53 = 136315138;
      v55 = _typeName(_:qualified:)();
      v57 = sub_10003F8C8(v55, v56, &v71);

      *(v53 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v51, v52, "[%s] NowPlayingScene did disconnect", v53, 0xCu);
      sub_100007FE8(v54);
    }

    v58 = OBJC_IVAR____TtC13MediaRemoteUI21ActivitySceneDelegate_nowPlayingElementProvider;
  }

  else
  {
    v59 = swift_unknownObjectWeakLoadStrong();
    if (!v59)
    {
      return;
    }

    v60 = v59;
    sub_100006334(0, &qword_1000711C8, UIScene_ptr);
    v61 = a1;
    v62 = static NSObject.== infix(_:_:)();

    if ((v62 & 1) == 0)
    {
      return;
    }

    if (qword_10006FF90 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_10001144C(v63, qword_1000737D8);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v71 = v67;
      *v66 = 136315138;
      v68 = _typeName(_:qualified:)();
      v70 = sub_10003F8C8(v68, v69, &v71);

      *(v66 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v64, v65, "[%s] ScreenMirroringScene did disconnect", v66, 0xCu);
      sub_100007FE8(v67);
    }

    v58 = OBJC_IVAR____TtC13MediaRemoteUI21ActivitySceneDelegate_mirroringElementProvider;
  }

  *(v3 + v58) = 0;

  swift_unknownObjectRelease();
}

void sub_100019AEC(void *a1, __n128 a2)
{
  v3 = v2;
  swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_100006334(0, &qword_1000711C8, UIScene_ptr);
    v7 = a1;
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      if (qword_10006FF90 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_10001144C(v9, qword_1000737D8);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v65 = v13;
        *v12 = 136315138;
        v14 = _typeName(_:qualified:)();
        v16 = sub_10003F8C8(v14, v15, &v65);

        *(v12 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v10, v11, "[%s] CoverSheetScene will enter foreground", v12, 0xCu);
        sub_100007FE8(v13);
      }

      v17 = OBJC_IVAR____TtC13MediaRemoteUI21ActivitySceneDelegate_coversheetWindow;
      v18 = *(v3 + OBJC_IVAR____TtC13MediaRemoteUI21ActivitySceneDelegate_coversheetWindow);
      if (v18)
      {
        v19 = [v18 rootViewController];
        if (v19)
        {
          v20 = v19;
          [v19 beginAppearanceTransition:1 animated:0];
        }
      }

LABEL_20:
      oslog = [*(v3 + v17) rootViewController];
      [oslog endAppearanceTransition];
      goto LABEL_21;
    }
  }

  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    sub_100006334(0, &qword_1000711C8, UIScene_ptr);
    v23 = a1;
    v24 = static NSObject.== infix(_:_:)();

    if (v24)
    {
      if (qword_10006FF90 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10001144C(v25, qword_1000737D8);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v65 = v29;
        *v28 = 136315138;
        v30 = _typeName(_:qualified:)();
        v32 = sub_10003F8C8(v30, v31, &v65);

        *(v28 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v26, v27, "[%s] RouteRecommendationScene will enter foreground", v28, 0xCu);
        sub_100007FE8(v29);
      }

      v17 = OBJC_IVAR____TtC13MediaRemoteUI21ActivitySceneDelegate_routeRecommendationWindow;
      v33 = *(v3 + OBJC_IVAR____TtC13MediaRemoteUI21ActivitySceneDelegate_routeRecommendationWindow);
      if (v33)
      {
        v34 = [v33 rootViewController];
        if (v34)
        {
          v35 = v34;
          [v34 beginAppearanceTransition:1 animated:0];
        }
      }

      goto LABEL_20;
    }
  }

  v36 = swift_unknownObjectWeakLoadStrong();
  if (v36)
  {
    v37 = v36;
    sub_100006334(0, &qword_1000711C8, UIScene_ptr);
    v38 = a1;
    v39 = static NSObject.== infix(_:_:)();

    if (v39)
    {
      if (qword_10006FF90 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_10001144C(v40, qword_1000737D8);
      oslog = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(oslog, v41))
      {
        goto LABEL_21;
      }

      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v65 = v43;
      *v42 = 136315138;
      v44 = _typeName(_:qualified:)();
      v46 = sub_10003F8C8(v44, v45, &v65);

      *(v42 + 4) = v46;
      v47 = "[%s] NowPlayingScene will enter foreground";
LABEL_42:
      _os_log_impl(&_mh_execute_header, oslog, v41, v47, v42, 0xCu);
      sub_100007FE8(v43);

      return;
    }
  }

  v48 = swift_unknownObjectWeakLoadStrong();
  if (v48)
  {
    v49 = v48;
    sub_100006334(0, &qword_1000711C8, UIScene_ptr);
    v50 = a1;
    v51 = static NSObject.== infix(_:_:)();

    if (v51)
    {
      if (qword_10006FF90 != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      sub_10001144C(v52, qword_1000737D8);
      oslog = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(oslog, v41))
      {
        goto LABEL_21;
      }

      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v65 = v43;
      *v42 = 136315138;
      v53 = _typeName(_:qualified:)();
      v55 = sub_10003F8C8(v53, v54, &v65);

      *(v42 + 4) = v55;
      v47 = "[%s] NowPlayingBannerScene will enter foreground";
      goto LABEL_42;
    }
  }

  v56 = swift_unknownObjectWeakLoadStrong();
  if (!v56)
  {
    return;
  }

  v57 = v56;
  sub_100006334(0, &qword_1000711C8, UIScene_ptr);
  v58 = a1;
  v59 = static NSObject.== infix(_:_:)();

  if ((v59 & 1) == 0)
  {
    return;
  }

  if (qword_10006FF90 != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  sub_10001144C(v60, qword_1000737D8);
  oslog = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v65 = v43;
    *v42 = 136315138;
    v61 = _typeName(_:qualified:)();
    v63 = sub_10003F8C8(v61, v62, &v65);

    *(v42 + 4) = v63;
    v47 = "[%s] ScreenMirroringScene will enter foreground";
    goto LABEL_42;
  }

LABEL_21:
}

void sub_10001A32C(void *a1, __n128 a2)
{
  v3 = v2;
  swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_100006334(0, &qword_1000711C8, UIScene_ptr);
    v7 = a1;
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      if (qword_10006FF90 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_10001144C(v9, qword_1000737D8);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v73 = v13;
        *v12 = 136315138;
        v14 = _typeName(_:qualified:)();
        v16 = sub_10003F8C8(v14, v15, &v73);

        *(v12 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v10, v11, "[%s] CoverSheetScene did enter background", v12, 0xCu);
        sub_100007FE8(v13);
      }

      v17 = OBJC_IVAR____TtC13MediaRemoteUI21ActivitySceneDelegate_coversheetWindow;
      v18 = *(v3 + OBJC_IVAR____TtC13MediaRemoteUI21ActivitySceneDelegate_coversheetWindow);
      if (v18)
      {
        v19 = [v18 rootViewController];
        if (v19)
        {
          v20 = v19;
          [v19 beginAppearanceTransition:0 animated:0];
        }
      }

LABEL_20:
      oslog = [*(v3 + v17) rootViewController];
      [oslog endAppearanceTransition];
      goto LABEL_21;
    }
  }

  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    sub_100006334(0, &qword_1000711C8, UIScene_ptr);
    v23 = a1;
    v24 = static NSObject.== infix(_:_:)();

    if (v24)
    {
      if (qword_10006FF90 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10001144C(v25, qword_1000737D8);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v73 = v29;
        *v28 = 136315138;
        v30 = _typeName(_:qualified:)();
        v32 = sub_10003F8C8(v30, v31, &v73);

        *(v28 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v26, v27, "[%s] RouteRecommendationScene did enter background", v28, 0xCu);
        sub_100007FE8(v29);
      }

      v17 = OBJC_IVAR____TtC13MediaRemoteUI21ActivitySceneDelegate_routeRecommendationWindow;
      v33 = *(v3 + OBJC_IVAR____TtC13MediaRemoteUI21ActivitySceneDelegate_routeRecommendationWindow);
      if (v33)
      {
        v34 = [v33 rootViewController];
        if (v34)
        {
          v35 = v34;
          [v34 beginAppearanceTransition:0 animated:0];
        }
      }

      goto LABEL_20;
    }
  }

  v36 = swift_unknownObjectWeakLoadStrong();
  if (v36)
  {
    v37 = v36;
    sub_100006334(0, &qword_1000711C8, UIScene_ptr);
    v38 = a1;
    v39 = static NSObject.== infix(_:_:)();

    if (v39)
    {
      if (qword_10006FF90 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_10001144C(v40, qword_1000737D8);
      oslog = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(oslog, v41))
      {
        goto LABEL_21;
      }

      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v73 = v43;
      *v42 = 136315138;
      v44 = _typeName(_:qualified:)();
      v46 = sub_10003F8C8(v44, v45, &v73);

      *(v42 + 4) = v46;
      v47 = "[%s] NowPlayingScene did enter background";
LABEL_48:
      _os_log_impl(&_mh_execute_header, oslog, v41, v47, v42, 0xCu);
      sub_100007FE8(v43);

      return;
    }
  }

  v48 = swift_unknownObjectWeakLoadStrong();
  if (v48)
  {
    v49 = v48;
    sub_100006334(0, &qword_1000711C8, UIScene_ptr);
    v50 = a1;
    v51 = static NSObject.== infix(_:_:)();

    if (v51)
    {
      if (qword_10006FF90 != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      sub_10001144C(v52, qword_1000737D8);
      oslog = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(oslog, v41))
      {
        goto LABEL_21;
      }

      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v73 = v43;
      *v42 = 136315138;
      v53 = _typeName(_:qualified:)();
      v55 = sub_10003F8C8(v53, v54, &v73);

      *(v42 + 4) = v55;
      v47 = "[%s] RouteRecommendationScene did enter background";
      goto LABEL_48;
    }
  }

  v56 = swift_unknownObjectWeakLoadStrong();
  if (v56)
  {
    v57 = v56;
    sub_100006334(0, &qword_1000711C8, UIScene_ptr);
    v58 = a1;
    v59 = static NSObject.== infix(_:_:)();

    if (v59)
    {
      if (qword_10006FF90 != -1)
      {
        swift_once();
      }

      v60 = type metadata accessor for Logger();
      sub_10001144C(v60, qword_1000737D8);
      oslog = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(oslog, v41))
      {
        goto LABEL_21;
      }

      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v73 = v43;
      *v42 = 136315138;
      v61 = _typeName(_:qualified:)();
      v63 = sub_10003F8C8(v61, v62, &v73);

      *(v42 + 4) = v63;
      v47 = "[%s] NowPlayingBannerScene did enter background";
      goto LABEL_48;
    }
  }

  v64 = swift_unknownObjectWeakLoadStrong();
  if (!v64)
  {
    return;
  }

  v65 = v64;
  sub_100006334(0, &qword_1000711C8, UIScene_ptr);
  v66 = a1;
  v67 = static NSObject.== infix(_:_:)();

  if ((v67 & 1) == 0)
  {
    return;
  }

  if (qword_10006FF90 != -1)
  {
    swift_once();
  }

  v68 = type metadata accessor for Logger();
  sub_10001144C(v68, qword_1000737D8);
  oslog = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v73 = v43;
    *v42 = 136315138;
    v69 = _typeName(_:qualified:)();
    v71 = sub_10003F8C8(v69, v70, &v73);

    *(v42 + 4) = v71;
    v47 = "[%s] ScreenMirroringScene did enter background";
    goto LABEL_48;
  }

LABEL_21:
}

id sub_10001AC90()
{
  *&v0[OBJC_IVAR____TtC13MediaRemoteUI21ActivitySceneDelegate_coversheetWindow] = 0;
  *&v0[OBJC_IVAR____TtC13MediaRemoteUI21ActivitySceneDelegate_routeRecommendationWindow] = 0;
  *&v0[OBJC_IVAR____TtC13MediaRemoteUI21ActivitySceneDelegate_nowPlayingElementProvider] = 0;
  *&v0[OBJC_IVAR____TtC13MediaRemoteUI21ActivitySceneDelegate_mirroringElementProvider] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC13MediaRemoteUI21ActivitySceneDelegate_nowPlayingBannerWindow] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySceneDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10001AD9C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ActivitySceneDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10001AEEC(void *a1, uint64_t a2, double a3, double a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v8 = Strong, Strong, v8 == a1))
  {
    v15 = swift_unknownObjectWeakLoadStrong();
    if (!v15)
    {
      return;
    }

    v17 = v15;
    v16 = objc_allocWithZone(type metadata accessor for ActivitySceneMetrics());
    ActivitySceneMetrics.init(size:cornerRadius:)();
    dispatch thunk of ActivityScene.resolvedMetrics.setter();
  }

  else
  {
    v9 = swift_unknownObjectWeakLoadStrong();
    if (!v9)
    {
      return;
    }

    v17 = v9;
    v10 = objc_allocWithZone(type metadata accessor for ActivitySceneMetrics());
    ActivitySceneMetrics.init(size:cornerRadius:)();
    dispatch thunk of ActivityScene.resolvedMetrics.setter();
    if (qword_10006FFA0 != -1)
    {
      swift_once();
    }

    v11 = qword_100073810;
    v12 = *(qword_100073810 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_platterContainer);
    if (v12)
    {
      v13 = v12;
      if (![v13 isShowingMediaSuggestions])
      {
        v14 = v11 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_platterContentSize;
        *v14 = a3;
        *(v14 + 8) = a4;
        *(v14 + 16) = 0;
        sub_10002D890(0, 0xD00000000000001CLL, 0x800000010004CBD0);
      }
    }
  }
}

void sub_10001B118(void *a1, unint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    if (v5 == a1)
    {
      v22 = swift_unknownObjectWeakLoadStrong();
      if (!v22)
      {
        return;
      }

      v38 = v22;
      if (!(a2 >> 62))
      {
        v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_19;
      }

LABEL_34:
      v23 = _CocoaArrayWrapper.endIndex.getter();
LABEL_19:
      if (v23)
      {
        sub_1000279D4(0, v23 & ~(v23 >> 63), 0);
        if (v23 < 0)
        {
          __break(1u);
          return;
        }

        v24 = 0;
        do
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v25 = *(a2 + 8 * v24 + 32);
          }

          v26 = v25;
          [v25 CGRectValue];
          v28 = v27;
          v30 = v29;
          v32 = v31;
          v34 = v33;

          v36 = _swiftEmptyArrayStorage[2];
          v35 = _swiftEmptyArrayStorage[3];
          if (v36 >= v35 >> 1)
          {
            sub_1000279D4((v35 > 1), v36 + 1, 1);
          }

          ++v24;
          _swiftEmptyArrayStorage[2] = v36 + 1;
          v37 = &_swiftEmptyArrayStorage[4 * v36];
          v37[4] = v28;
          v37[5] = v30;
          v37[6] = v32;
          v37[7] = v34;
        }

        while (v23 != v24);
      }

      goto LABEL_28;
    }
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
    return;
  }

  v38 = v6;
  if (a2 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v7)
  {
    goto LABEL_28;
  }

  sub_1000279D4(0, v7 & ~(v7 >> 63), 0);
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  v8 = 0;
  do
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(a2 + 8 * v8 + 32);
    }

    v10 = v9;
    [v9 CGRectValue];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v20 = _swiftEmptyArrayStorage[2];
    v19 = _swiftEmptyArrayStorage[3];
    if (v20 >= v19 >> 1)
    {
      sub_1000279D4((v19 > 1), v20 + 1, 1);
    }

    ++v8;
    _swiftEmptyArrayStorage[2] = v20 + 1;
    v21 = &_swiftEmptyArrayStorage[4 * v20];
    v21[4] = v12;
    v21[5] = v14;
    v21[6] = v16;
    v21[7] = v18;
  }

  while (v7 != v8);
LABEL_28:
  dispatch thunk of ActivityScene.activityHostTouchRestrictedRects.setter();
}

void sub_10001B484(void *a1, uint64_t a2, double a3, double a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v7 = Strong, Strong, v7 != a1))
  {
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {

      if (qword_10006FFA0 != -1)
      {
        swift_once();
      }

      sub_10002C288(a3);
    }
  }
}

void sub_10001B5BC(void *a1, __n128 a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_100004E6C(&qword_1000711D0, &qword_100044F80);
  __chkstk_darwin(v4 - 8);
  v6 = &v226 - v5;
  v7 = type metadata accessor for MediaLiveActivityAttributes();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v240 = &v226 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v241 = &v226 - v12;
  __chkstk_darwin(v11);
  v242 = &v226 - v13;
  v14 = sub_100004E6C(&qword_1000711D8, &qword_100044F88);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v226 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v226 - v18;
  v20 = type metadata accessor for ActivityDescriptor();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v226 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActivityScene();
  v24 = swift_dynamicCastClass();
  v25 = &unk_10006F000;
  if (v24)
  {
    v237 = v2;
    v238 = v8;
    v26 = v24;
    swift_getKeyPath();
    v27 = a1;
    dispatch thunk of ActivityScene.subscript.getter();

    if (*(&v248 + 1))
    {
      v239 = *(&v248 + 1);
      v233 = v248;
      swift_getKeyPath();
      v234 = v26;
      dispatch thunk of ActivityScene.subscript.getter();

      v28 = v248;
      if (!v248)
      {

        (*(v21 + 56))(v19, 1, 1, v20);
        goto LABEL_15;
      }

      v232 = v7;
      v235 = v23;
      v29 = *(v21 + 56);
      v30 = v20;
      v31 = 1;
      v29(v17, 1, 1, v30);
      sub_10001D5EC(&qword_1000711E0, &type metadata accessor for ActivityDescriptor, &protocol conformance descriptor for ActivityDescriptor);
      dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

      v236 = v21;
      v32 = *(v21 + 48);
      if (v32(v17, 1, v30) != 1)
      {
        (*(v236 + 32))(v19, v17, v30);
        v31 = 0;
      }

      v29(v19, v31, 1, v30);
      if (v32(v19, 1, v30) == 1)
      {

LABEL_15:
        sub_100012BC0(v19, &qword_1000711D8, &qword_100044F88);
        if (qword_10006FF90 != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        sub_10001144C(v41, qword_1000737D8);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          *&v248 = v45;
          *v44 = 136315138;
          v46 = _typeName(_:qualified:)();
          v48 = sub_10003F8C8(v46, v47, &v248);

          *(v44 + 4) = v48;
          _os_log_impl(&_mh_execute_header, v42, v43, "[%s] Did not receive activity scene attributes.", v44, 0xCu);
          sub_100007FE8(v45);
        }

        return;
      }

      v49 = *(v236 + 32);
      v231 = v30;
      v49(v235, v19, v30);
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      v50 = ActivityDescriptor.attributesData.getter();
      v52 = v51;
      sub_10001D5EC(&unk_1000711E8, &type metadata accessor for MediaLiveActivityAttributes, &protocol conformance descriptor for MediaLiveActivityAttributes);
      v53 = v232;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      sub_10001D598(v50, v52);

      v54 = v238;
      (*(v238 + 56))(v6, 0, 1, v53);
      v55 = v242;
      (*(v54 + 32))(v242, v6, v53);
      if (qword_10006FF90 != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      v57 = sub_10001144C(v56, qword_1000737D8);
      v58 = *(v54 + 16);
      v59 = v241;
      v228 = v54 + 16;
      v227 = v58;
      v58(v241, v55, v53);
      v230 = v57;
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v229 = swift_slowAlloc();
        *&v248 = v229;
        *v62 = 136315394;
        v63 = _typeName(_:qualified:)();
        v64 = v54;
        v66 = sub_10003F8C8(v63, v65, &v248);

        *(v62 + 4) = v66;
        *(v62 + 12) = 2080;
        sub_10001D5EC(&qword_1000711F8, &type metadata accessor for MediaLiveActivityAttributes, &protocol conformance descriptor for MediaLiveActivityAttributes);
        v67 = dispatch thunk of CustomStringConvertible.description.getter();
        v69 = v68;
        v55 = v242;
        v70 = v59;
        v71 = v53;
        v241 = *(v64 + 8);
        (v241)(v70, v53);
        v72 = sub_10003F8C8(v67, v69, &v248);

        *(v62 + 14) = v72;
        _os_log_impl(&_mh_execute_header, v60, v61, "[%s] Media live activity attributes: %s", v62, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v73 = v59;
        v71 = v53;
        v241 = *(v54 + 8);
        (v241)(v73, v53);
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v55;
      MediaLiveActivityAttributes.subscript.getter();
      if (!v247)
      {
        __break(1u);
        return;
      }

      sub_1000082C0(&v246, &v248);
      swift_dynamicCast();
      v75 = String._bridgeToObjectiveC()();

      v76 = v75;
      v77 = v239;

      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v229 = v27;
        *&v248 = v81;
        *v80 = 136315650;
        v82 = _typeName(_:qualified:)();
        v84 = sub_10003F8C8(v82, v83, &v248);

        *(v80 + 4) = v84;
        *(v80 + 12) = 2080;
        *(v80 + 14) = sub_10003F8C8(v233, v77, &v248);
        *(v80 + 22) = 2080;
        v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v87 = sub_10003F8C8(v85, v86, &v248);

        *(v80 + 24) = v87;
        v74 = v242;
        _os_log_impl(&_mh_execute_header, v78, v79, "[%s] Configuring scene for identifier: %s, context: %s.", v80, 0x20u);
        swift_arrayDestroy();
        v27 = v229;
        v88 = v241;

        v89 = v231;
      }

      else
      {

        v89 = v231;
        v88 = v241;
      }

      v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v92 = v91;
      if (v90 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v92 == v93)
      {

        goto LABEL_33;
      }

      v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v94)
      {
LABEL_33:
        if (SBUIIsSystemApertureEnabled())
        {
          v95 = v27;
          if ([v234 SBUI_isHostedBySystemAperture])
          {

            swift_unknownObjectWeakAssign();
            v96 = [objc_allocWithZone(MRUActivityNowPlayingViewController) init];
            v244 = &OBJC_PROTOCOL___SBUISystemApertureElementProviding;
            v97 = swift_dynamicCastObjCProtocolConditional();
            v98 = v76;
            if (!v97)
            {

              v97 = 0;
            }

            v99 = OBJC_IVAR____TtC13MediaRemoteUI21ActivitySceneDelegate_nowPlayingElementProvider;
LABEL_38:
            v100 = v237;
            *&v237[v99] = v97;
            swift_unknownObjectRelease();
            v101 = *&v100[v99];
            swift_unknownObjectRetain();
            [v234 setSystemApertureElementViewControllerProvider:v101];

            swift_unknownObjectRelease();
LABEL_75:
            v88(v74, v71);
            (*(v236 + 8))(v235, v89);
            return;
          }
        }

        v106 = v27;
        v107 = [v234 session];
        v108 = [v107 role];

        v109 = static UISceneSessionRole.activityBanner.getter();
        v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v112 = v111;
        if (v110 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v112 == v113)
        {

LABEL_47:
          v240 = v106;

          v115 = v76;
          v116 = v239;

          v117 = Logger.logObject.getter();
          v118 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v117, v118))
          {
            v119 = swift_slowAlloc();
            v241 = v88;
            v120 = v119;
            *&v248 = swift_slowAlloc();
            *v120 = 136315650;
            v121 = _typeName(_:qualified:)();
            v123 = sub_10003F8C8(v121, v122, &v248);

            *(v120 + 4) = v123;
            *(v120 + 12) = 2080;
            v124 = sub_10003F8C8(v233, v116, &v248);

            *(v120 + 14) = v124;
            *(v120 + 22) = 2080;
            v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v127 = v126;

            v128 = sub_10003F8C8(v125, v127, &v248);

            *(v120 + 24) = v128;
            _os_log_impl(&_mh_execute_header, v117, v118, "[%s] Populating banner scene for %s, context: %s.", v120, 0x20u);
            swift_arrayDestroy();

            v88 = v241;
          }

          else
          {
          }

          v129 = v231;
          v130 = v235;
          v131 = v232;
          v132 = v242;
          v133 = v237;
          v134 = v234;
          swift_unknownObjectWeakAssign();
          v135 = [objc_allocWithZone(MRULockscreenViewController) init];
          [v135 setDelegate:v133];
          swift_unknownObjectWeakAssign();
          v136 = objc_allocWithZone(type metadata accessor for SecureWindow());
          v137 = v135;
          v138 = [v136 initWithWindowScene:v134];
          [v138 setRootViewController:v137];

          [v138 makeKeyAndVisible];
          v88(v132, v131);
          (*(v236 + 8))(v130, v129);
          v139 = *&v133[OBJC_IVAR____TtC13MediaRemoteUI21ActivitySceneDelegate_nowPlayingBannerWindow];
          *&v133[OBJC_IVAR____TtC13MediaRemoteUI21ActivitySceneDelegate_nowPlayingBannerWindow] = v138;
          goto LABEL_51;
        }

        v114 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v114)
        {
          goto LABEL_47;
        }

        v140 = [v234 session];

        v141 = [v140 role];
        v142 = static UISceneSessionRole.activityListItem.getter();
        v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v145 = v144;
        if (v143 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v145 == v146)
        {

          v147 = v231;
        }

        else
        {
          v150 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v147 = v231;
          v151 = v232;
          if ((v150 & 1) == 0)
          {

            v185 = v242;
            v186 = v151;
LABEL_77:
            v88(v185, v186);
            (*(v236 + 8))(v235, v147);
            return;
          }
        }

        v152 = v76;
        v153 = v239;

        v154 = Logger.logObject.getter();
        v155 = static os_log_type_t.default.getter();

        v156 = os_log_type_enabled(v154, v155);
        v240 = v152;
        if (v156)
        {
          v157 = swift_slowAlloc();
          v241 = v88;
          v158 = v106;
          v159 = v157;
          *&v248 = swift_slowAlloc();
          *v159 = 136315650;
          v160 = _typeName(_:qualified:)();
          v162 = sub_10003F8C8(v160, v161, &v248);

          *(v159 + 4) = v162;
          *(v159 + 12) = 2080;
          v163 = sub_10003F8C8(v233, v153, &v248);

          *(v159 + 14) = v163;
          *(v159 + 22) = 2080;
          v164 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v166 = v165;

          v167 = sub_10003F8C8(v164, v166, &v248);

          *(v159 + 24) = v167;
          _os_log_impl(&_mh_execute_header, v154, v155, "[%s] Populating cover sheet scene for %s, context: %s.", v159, 0x20u);
          swift_arrayDestroy();

          v106 = v158;
          v147 = v231;
          v88 = v241;
        }

        else
        {
        }

        v172 = v237;
        v173 = v234;
        swift_unknownObjectWeakAssign();
        v174 = [objc_allocWithZone(MRULockscreenViewController) init];
        [v174 setDelegate:v172];
        v175 = [objc_allocWithZone(type metadata accessor for SecureWindow()) initWithWindowScene:v173];
        [v175 setRootViewController:v174];
        [v175 makeKeyAndVisible];
        v176 = *&v172[OBJC_IVAR____TtC13MediaRemoteUI21ActivitySceneDelegate_coversheetWindow];
        *&v172[OBJC_IVAR____TtC13MediaRemoteUI21ActivitySceneDelegate_coversheetWindow] = v175;

        v177 = [v174 nowPlayingController];
        if (qword_10006FFA0 != -1)
        {
          swift_once();
        }

        v178 = qword_100073810;
        [v177 addSwiftObserver:qword_100073810];
        v179 = [v177 metadataController];
        v180 = [v179 artwork];

        v181 = *(v178 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_artwork);
        *(v178 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_artwork) = v180;
        v182 = v180;

        sub_10002B204();
        v183 = *(v178 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_platterContainer);
        *(v178 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_platterContainer) = v174;
        v184 = v174;

        sub_10002AC44();
        v185 = v242;
        v186 = v232;
        goto LABEL_77;
      }

      v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v104 = v103;
      if (v102 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v104 == v105)
      {

        goto LABEL_57;
      }

      v148 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v148)
      {

LABEL_57:
        if (SBUIIsSystemApertureEnabled())
        {
          v95 = v27;
          if ([v234 SBUI_isHostedBySystemAperture])
          {
            swift_unknownObjectWeakAssign();
            v149 = [objc_allocWithZone(MRUActivityMirroringViewController) init];
            v245 = &OBJC_PROTOCOL___SBUISystemApertureElementProviding;
            v97 = swift_dynamicCastObjCProtocolConditional();
            v98 = v76;
            if (!v97)
            {

              v97 = 0;
            }

            v99 = OBJC_IVAR____TtC13MediaRemoteUI21ActivitySceneDelegate_mirroringElementProvider;
            goto LABEL_38;
          }
        }

        else
        {
          v95 = v76;
        }

        goto LABEL_75;
      }

      v168 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v170 = v169;
      if (v168 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v170 == v171)
      {
      }

      else
      {
        v187 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v187 & 1) == 0)
        {

          goto LABEL_75;
        }
      }

      v239 = v76;
      v229 = v27;
      v241 = v88;
      v188 = v237;
      swift_unknownObjectWeakAssign();
      v189 = [objc_opt_self() mainScreen];
      [v189 bounds];
      v191 = v190;
      v193 = v192;
      v195 = v194;
      v197 = v196;

      v250.origin.x = v191;
      v250.origin.y = v193;
      v250.size.width = v195;
      v250.size.height = v197;
      CGRectGetWidth(v250);
      v198 = objc_allocWithZone(type metadata accessor for ActivitySceneMetrics());
      ActivitySceneMetrics.init(size:cornerRadius:)();
      dispatch thunk of ActivityScene.resolvedMetrics.setter();
      v199 = v240;
      v227(v240, v74, v71);
      v200 = v188;
      v201 = Logger.logObject.getter();
      v202 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v201, v202))
      {
        v203 = swift_slowAlloc();
        *&v248 = swift_slowAlloc();
        *v203 = 136315650;
        v204 = _typeName(_:qualified:)();
        v205 = v199;
        v207 = sub_10003F8C8(v204, v206, &v248);

        *(v203 + 4) = v207;
        *(v203 + 12) = 2080;
        sub_10001D5EC(&qword_1000711F8, &type metadata accessor for MediaLiveActivityAttributes, &protocol conformance descriptor for MediaLiveActivityAttributes);
        v208 = dispatch thunk of CustomStringConvertible.description.getter();
        v210 = v209;
        v211 = v205;
        v212 = v241;
        (v241)(v211, v71);
        v213 = sub_10003F8C8(v208, v210, &v248);

        *(v203 + 14) = v213;
        *(v203 + 22) = 2080;
        *&v246 = v200;
        v214 = _Pointer.debugDescription.getter();
        v216 = sub_10003F8C8(v214, v215, &v248);

        *(v203 + 24) = v216;
        v217 = v202;
        v218 = v212;
        _os_log_impl(&_mh_execute_header, v201, v217, "[%s] >>+ attrs are %s (%s", v203, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        v218 = v241;
        (v241)(v199, v71);
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v219 = v242;
      MediaLiveActivityAttributes.subscript.getter();

      v220 = v231;
      v221 = v239;
      if (v249)
      {
        if (swift_dynamicCast())
        {
          v222 = String._bridgeToObjectiveC()();

LABEL_87:
          v223 = [objc_allocWithZone(MRURouteRecommendationPlatterViewController) initWithRouteIdentifier:v222];

          v224 = objc_allocWithZone(type metadata accessor for SecureWindow());
          v225 = [v224 initWithWindowScene:v234];
          [v225 setRootViewController:v223];
          [v225 makeKeyAndVisible];

          v218(v219, v71);
          (*(v236 + 8))(v235, v220);
          v139 = *&v200[OBJC_IVAR____TtC13MediaRemoteUI21ActivitySceneDelegate_routeRecommendationWindow];
          *&v200[OBJC_IVAR____TtC13MediaRemoteUI21ActivitySceneDelegate_routeRecommendationWindow] = v225;
LABEL_51:

          return;
        }
      }

      else
      {
        sub_100012BC0(&v248, &qword_100070810, &qword_1000445E0);
      }

      v222 = 0;
      goto LABEL_87;
    }

    v25 = &unk_10006F000;
  }

  if (v25[498] != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_10001144C(v33, qword_1000737D8);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&v248 = v37;
    *v36 = 136315138;
    v38 = _typeName(_:qualified:)();
    v40 = sub_10003F8C8(v38, v39, &v248);

    *(v36 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v34, v35, "[%s] Did not receive activity scene with identifier.", v36, 0xCu);
    sub_100007FE8(v37);
  }
}

uint64_t sub_10001D3AC()
{
  if (qword_10006FFA0 != -1)
  {
    swift_once();
  }

  v0 = qword_100073810;
  v1 = [objc_opt_self() currentSettings];
  v2 = [v1 supportLockScreenBackground];

  if (!v2)
  {
    return 0;
  }

  result = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_artwork);
  if (result)
  {
    result = [result catalog];
    if (result)
    {

      v4 = [objc_opt_self() currentDevice];
      v5 = [v4 userInterfaceIdiom];

      if (v5 == 1 || (v6 = [objc_opt_self() sharedApplication], v7 = objc_msgSend(v6, "activeInterfaceOrientation"), v6, result = sub_10001D540(v7), result))
      {
        v8 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_prefersExpandedState);
        result = 1;
        *(v0 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_prefersExpandedState) = 1;
        if ((v8 & 1) == 0)
        {
          MRSetPrefersExpandedLockScreenPlatter();
          sub_10002D890(0, 0xD000000000000017, 0x800000010004CBF0);
          return 1;
        }
      }
    }
  }

  return result;
}

double sub_10001D598(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_10001D5EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unsigned __int8 *sub_10001D634()
{
  v1 = OBJC_IVAR____TtC13MediaRemoteUI32GroupSessionBannerViewController____lazy_storage___routeIcon;
  v2 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI32GroupSessionBannerViewController____lazy_storage___routeIcon);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI32GroupSessionBannerViewController____lazy_storage___routeIcon);
  }

  else
  {
    objc_opt_self();
    v4 = [swift_dynamicCastObjCClassUnconditional() routeType];
    v5 = objc_allocWithZone(type metadata accessor for RouteIconView());
    v6 = v0;
    v7 = sub_1000309D0(v4);
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = *(v0 + v1);
    *(v6 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_10001D708()
{
  v1 = OBJC_IVAR____TtC13MediaRemoteUI32GroupSessionBannerViewController____lazy_storage___titleContentItem;
  v2 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI32GroupSessionBannerViewController____lazy_storage___titleContentItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI32GroupSessionBannerViewController____lazy_storage___titleContentItem);
  }

  else
  {
    objc_opt_self();
    swift_dynamicCastObjCClassUnconditional();
    v4 = v0;
    sub_100012C64();
    v5 = objc_allocWithZone(PLPillContentItem);
    v6 = String._bridgeToObjectiveC()();

    v7 = [v5 initWithText:v6];

    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_10001D7F8()
{
  v1 = OBJC_IVAR____TtC13MediaRemoteUI32GroupSessionBannerViewController____lazy_storage___pillView;
  v2 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI32GroupSessionBannerViewController____lazy_storage___pillView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI32GroupSessionBannerViewController____lazy_storage___pillView);
  }

  else
  {
    v4 = sub_10001D85C(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10001D85C(uint64_t a1)
{
  v2 = sub_10001D634();
  v3 = [objc_allocWithZone(PLPillView) initWithLeadingAccessoryView:v2 trailingAccessoryView:*(a1 + OBJC_IVAR____TtC13MediaRemoteUI32GroupSessionBannerViewController_trailingIcon)];

  LODWORD(v4) = 1144750080;
  [v3 setContentHuggingPriority:1 forAxis:v4];
  LODWORD(v5) = 1144750080;
  [v3 setContentHuggingPriority:0 forAxis:v5];
  sub_100004E6C(&unk_100070270, qword_100045030);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100044520;
  *(v6 + 32) = sub_10001D708();
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  sub_100012EE4();
  v7 = objc_allocWithZone(PLPillContentItem);
  v8 = String._bridgeToObjectiveC()();

  v9 = [v7 initWithText:v8 style:2];

  *(v6 + 40) = v9;
  [v3 setReferenceContentItemForIntrinsicContentSize:*(a1 + OBJC_IVAR____TtC13MediaRemoteUI32GroupSessionBannerViewController____lazy_storage___titleContentItem)];
  sub_10001DEA8();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 setCenterContentItems:isa animated:0];

  return v3;
}

id sub_10001DA34(void *a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC13MediaRemoteUI32GroupSessionBannerViewController____lazy_storage___routeIcon] = 0;
  v6 = OBJC_IVAR____TtC13MediaRemoteUI32GroupSessionBannerViewController_trailingIcon;
  *&v3[v6] = sub_100005380();
  *&v3[OBJC_IVAR____TtC13MediaRemoteUI32GroupSessionBannerViewController____lazy_storage___titleContentItem] = 0;
  *&v3[OBJC_IVAR____TtC13MediaRemoteUI32GroupSessionBannerViewController____lazy_storage___pillView] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_delegate + 8] = 0;
  v7 = swift_unknownObjectWeakInit();
  v8 = &v3[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_requesterIdentifier];
  *v8 = 0xD000000000000017;
  v8[1] = 0x800000010004B7A0;
  v3[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_sendTapEventForAnyTapInsideView] = 1;
  v9 = &v3[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_idleTimerDuration];
  *v9 = 0;
  v9[8] = 1;
  *&v3[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_idleTimer] = 0;
  *&v3[OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_configuration] = a1;
  *(v7 + 8) = a3;
  swift_unknownObjectWeakAssign();
  v19.receiver = v3;
  v19.super_class = type metadata accessor for BannerBaseViewController();
  v10 = a1;
  v11 = objc_msgSendSuper2(&v19, "initWithNibName:bundle:", 0, 0);
  v12 = sub_10001D7F8();
  v13 = sub_10001D708();
  [v12 sizeThatFitsContentItem:{v13, v19.receiver, v19.super_class}];
  v15 = v14;
  v17 = v16;

  [v11 setPreferredContentSize:{v15, v17}];
  swift_unknownObjectRelease();

  return v11;
}