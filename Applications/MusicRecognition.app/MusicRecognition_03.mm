uint64_t sub_10005DA98(__n128 a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_10005DB30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreamingService(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005DB94(uint64_t a1)
{
  v2 = type metadata accessor for StreamingService(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005DBF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreamingService(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005DC54(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_10005DC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002D44(&qword_100144658, &unk_1000F87E0);
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

uint64_t sub_10005DD50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002D44(&qword_100144658, &unk_1000F87E0);
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

uint64_t type metadata accessor for StreamingServicesProvider(uint64_t a1)
{
  result = qword_1001446B8;
  if (!qword_1001446B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005DE60(uint64_t a1)
{
  sub_10005DF1C(319, &qword_1001446C8, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10005DF1C(319, &unk_1001446D0, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10005DF1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for StreamingService(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_10005DF90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10005E050(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for StreamingService(uint64_t a1)
{
  result = qword_100144758;
  if (!qword_100144758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005E140(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10005E1C8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_10005E1D8(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v5 = type metadata accessor for StreamingService(0), (static URL.== infix(_:_:)()) && ((v6 = v5[6], v7 = *(a1 + v6), v8 = *(a1 + v6 + 8), v9 = (a2 + v6), v7 == *v9) ? (v10 = v8 == v9[1]) : (v10 = 0), (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((v11 = v5[7], v12 = *(a1 + v11), v13 = *(a1 + v11 + 8), v14 = (a2 + v11), v12 == *v14) ? (v15 = v13 == v14[1]) : (v15 = 0), v15 || (_stringCompareWithSmolCheck(_:_:expecting:)())))
  {
    v16 = *(a1 + v5[8]) ^ *(a2 + v5[8]) ^ 1;
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

char *sub_10005E2C0()
{
  v1 = *&v0[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView____lazy_storage___ambientSceneAnimator];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView____lazy_storage___ambientSceneAnimator];
  }

  else
  {
    *&v0[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView____lazy_storage___ambientSceneAnimator] = v0;
    v2 = v0;
    v1 = 0;
  }

  v3 = v1;
  return v2;
}

id sub_10005E310(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_retryHandler];
  *v10 = nullsub_1;
  v10[1] = 0;
  v11 = &v4[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_cancellationHandler];
  *v11 = nullsub_1;
  v11[1] = 0;
  v12 = &v4[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_appleMusicURLHandler];
  *v12 = nullsub_1;
  v12[1] = 0;
  v13 = &v4[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_displayMatchedMediaItemHandler];
  *v13 = nullsub_1;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_listeningView;
  *&v4[v14] = [objc_allocWithZone(type metadata accessor for AmbientListeningView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15 = OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_matchView;
  *&v4[v15] = [objc_allocWithZone(type metadata accessor for AmbientMatchView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_noMatchView;
  *&v4[v16] = [objc_allocWithZone(type metadata accessor for AmbientNoMatchView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView____lazy_storage___ambientSceneAnimator] = 0;
  *&v4[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_matchedMediaItem] = 0;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  sub_10005E4CC();

  return v17;
}

void sub_10005E4CC()
{
  [v0 setLayoutMargins:{-26.0, 0.0, 0.0, 0.0}];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = *&v0[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_listeningView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v1];
  v2 = *&v0[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_matchView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v2];
  v3 = *&v0[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_noMatchView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v3];
  [v1 setHidden:1];
  [v2 setHidden:1];
  [v3 setHidden:1];
  v4 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"displayMatchedMediaItemAction"];
  [v2 addGestureRecognizer:v4];

  [*&v3[OBJC_IVAR____TtC16MusicRecognition18AmbientNoMatchView_retryButton] addTarget:v0 action:"retryAction" forControlEvents:64];
  [*&v1[OBJC_IVAR____TtC16MusicRecognition20AmbientListeningView_cancelButton] addTarget:v0 action:"cancelAction" forControlEvents:64];
  v54 = objc_opt_self();
  sub_100002D44(&qword_100142810, &qword_1000F65A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000F88A0;
  v6 = [v1 topAnchor];
  v7 = [v0 layoutMarginsGuide];
  v8 = [v7 topAnchor];

  v9 = [v6 constraintEqualToAnchor:v8];
  *(v5 + 32) = v9;
  v10 = [v1 bottomAnchor];
  v11 = [v0 layoutMarginsGuide];
  v12 = [v11 bottomAnchor];

  v13 = [v10 constraintEqualToAnchor:v12];
  *(v5 + 40) = v13;
  v14 = [v1 leadingAnchor];
  v15 = [v0 layoutMarginsGuide];
  v16 = [v15 leadingAnchor];

  v17 = [v14 constraintEqualToAnchor:v16 constant:54.0];
  *(v5 + 48) = v17;
  v18 = [v1 trailingAnchor];
  v19 = [v0 layoutMarginsGuide];
  v20 = [v19 trailingAnchor];

  v21 = [v18 constraintEqualToAnchor:v20];
  *(v5 + 56) = v21;
  v22 = [v2 topAnchor];
  v23 = [v0 layoutMarginsGuide];
  v24 = [v23 topAnchor];

  v25 = [v22 constraintEqualToAnchor:v24];
  *(v5 + 64) = v25;
  v26 = [v2 bottomAnchor];
  v27 = [v0 layoutMarginsGuide];
  v28 = [v27 bottomAnchor];

  v29 = [v26 constraintEqualToAnchor:v28];
  *(v5 + 72) = v29;
  v30 = [v2 leadingAnchor];
  v31 = [v0 layoutMarginsGuide];
  v32 = [v31 leadingAnchor];

  v33 = [v30 constraintEqualToAnchor:v32];
  *(v5 + 80) = v33;
  v34 = [v2 trailingAnchor];
  v35 = [v0 layoutMarginsGuide];
  v36 = [v35 trailingAnchor];

  v37 = [v34 constraintEqualToAnchor:v36];
  *(v5 + 88) = v37;
  v38 = [v3 topAnchor];
  v39 = [v0 layoutMarginsGuide];
  v40 = [v39 topAnchor];

  v41 = [v38 constraintEqualToAnchor:v40];
  *(v5 + 96) = v41;
  v42 = [v3 bottomAnchor];
  v43 = [v0 layoutMarginsGuide];
  v44 = [v43 bottomAnchor];

  v45 = [v42 constraintEqualToAnchor:v44];
  *(v5 + 104) = v45;
  v46 = [v3 leadingAnchor];
  v47 = [v0 layoutMarginsGuide];
  v48 = [v47 leadingAnchor];

  v49 = [v46 constraintEqualToAnchor:v48];
  *(v5 + 112) = v49;
  v50 = [v3 trailingAnchor];
  v51 = [v0 layoutMarginsGuide];
  v52 = [v51 trailingAnchor];

  v53 = [v50 constraintEqualToAnchor:v52];
  *(v5 + 120) = v53;
  sub_100025014();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v54 activateConstraints:isa];
}

id sub_10005ECC8(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_retryHandler];
  *v4 = nullsub_1;
  v4[1] = 0;
  v5 = &v1[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_cancellationHandler];
  *v5 = nullsub_1;
  v5[1] = 0;
  v6 = &v1[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_appleMusicURLHandler];
  *v6 = nullsub_1;
  v6[1] = 0;
  v7 = &v1[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_displayMatchedMediaItemHandler];
  *v7 = nullsub_1;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_listeningView;
  *&v1[v8] = [objc_allocWithZone(type metadata accessor for AmbientListeningView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v9 = OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_matchView;
  *&v1[v9] = [objc_allocWithZone(type metadata accessor for AmbientMatchView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_noMatchView;
  *&v1[v10] = [objc_allocWithZone(type metadata accessor for AmbientNoMatchView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView____lazy_storage___ambientSceneAnimator] = 0;
  *&v1[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_matchedMediaItem] = 0;
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v15, "initWithCoder:", a1);
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    sub_10005E4CC();
  }

  return v12;
}

id sub_10005EE98(void *a1)
{
  v57 = type metadata accessor for Locale();
  v51 = *(v57 - 8);
  __chkstk_darwin(v57);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002D44(&qword_100141F90, &qword_1000F4E98);
  v56 = *(v5 - 8);
  __chkstk_darwin(v5);
  v54 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v55 = &v49 - v8;
  v9 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v9 - 8);
  v50 = &v49 - v10;
  v11 = sub_100002D44(&qword_100142818, &qword_1000F5860);
  __chkstk_darwin(v11 - 8);
  v13 = &v49 - v12;
  v14 = *&v1[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_matchedMediaItem];
  *&v1[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_matchedMediaItem] = a1;

  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  type metadata accessor for MainActor();
  v16 = a1;
  v17 = v1;
  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = &protocol witness table for MainActor;
  v19[4] = v17;
  v19[5] = v16;
  sub_1000C8AF8(0, 0, v13, &unk_1000F88E8, v19);

  v20 = *&v17[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_matchView];
  v53 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_titleLabel;
  v21 = *&v20[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_titleLabel];
  v22 = [v16 title];
  [v21 setText:v22];

  v52 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_artistLabel;
  v23 = *&v20[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_artistLabel];
  v24 = v16;
  v25 = [v16 artist];
  [v23 setText:v25];

  v26 = [objc_allocWithZone(LSApplicationWorkspace) init];
  v27 = objc_opt_self();
  v28 = String._bridgeToObjectiveC()();
  v29 = [v27 applicationWithBundleIdentifier:v28];

  v30 = 1;
  v31 = String._bridgeToObjectiveC()();
  LODWORD(v28) = [v26 applicationIsInstalled:v31];

  if (v28)
  {
    v32 = [v24 appleMusicURL];
    v30 = v32 == 0;
    if (v32)
    {
      v33 = v50;
      v34 = v32;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v35 = 0;
    }

    else
    {
      v35 = 1;
      v33 = v50;
    }

    v36 = type metadata accessor for URL();
    (*(*(v36 - 8) + 56))(v33, v35, 1, v36);
    sub_10001719C(v33);
  }

  v37 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_appleMusicButton;
  [*&v20[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_appleMusicButton] setHidden:{v30, OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_appleMusicButton}];
  [*&v20[v37] addTarget:v17 action:"appleMusicButtonAction" forControlEvents:64];
  v50 = v17;
  v38 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_shazamCountLabel;
  v39 = *&v20[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_shazamCountLabel];
  v58 = [v24 shazamCount];
  v40 = static Locale.autoupdatingCurrent.getter();
  sub_1000045BC(v40, v41, v42);
  v43 = v54;
  IntegerFormatStyle.init(locale:)();
  static Locale.current.getter();
  v44 = v55;
  IntegerFormatStyle.locale(_:)();
  (*(v51 + 8))(v4, v57);
  v45 = *(v56 + 8);
  v45(v43, v5);
  sub_1000602CC();
  BinaryInteger.formatted<A>(_:)();
  v45(v44, v5);
  v46 = String._bridgeToObjectiveC()();

  [v39 setText:v46];

  v47 = *&v20[v38];
  [v47 setHidden:{objc_msgSend(v24, "shazamCount") == 0}];

  [*&v20[v49] setAlpha:0.0];
  [*&v20[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_shazamCountStackView] setAlpha:0.0];
  [*&v20[v53] setAlpha:0.0];
  [*&v20[v52] setAlpha:0.0];
  [*&v50[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_noMatchView] setHidden:1];
  return [v20 setHidden:0];
}

uint64_t sub_10005F5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_10005F638, v7, v6);
}

uint64_t sub_10005F638()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_10005F6DC;
  v2 = *(v0 + 24);

  return sub_1000EC918(v2);
}

uint64_t sub_10005F6DC()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_10005F7FC, v3, v2);
}

uint64_t sub_10005F7FC()
{

  v1 = sub_10005E2C0();
  sub_1000A93DC(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10005F870()
{
  v1 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v17 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_matchedMediaItem);
  if (!v12)
  {
    (*(v8 + 56))(v6, 1, 1, v7, v9);
    return sub_10001719C(v6);
  }

  v13 = [v12 appleMusicURL];
  if (v13)
  {
    v14 = v13;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v8 + 56))(v3, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(v3, 1, 1, v7);
  }

  sub_100007F6C(v3, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10001719C(v6);
  }

  (*(v8 + 32))(v11, v6, v7);
  v16 = *(v0 + OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_appleMusicURLHandler);

  v16(v11);

  return (*(v8 + 8))(v11, v7);
}

void sub_10005FB78()
{
  v0 = objc_opt_self();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = sub_100060368;
  v10 = v1;
  v5 = _NSConcreteStackBlock;
  v6 = 1107296256;
  v7 = sub_1000C1C84;
  v8 = &unk_1001371E8;
  v2 = _Block_copy(&v5);

  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = sub_100060388;
  v10 = v3;
  v5 = _NSConcreteStackBlock;
  v6 = 1107296256;
  v7 = sub_1000A956C;
  v8 = &unk_100137210;
  v4 = _Block_copy(&v5);

  [v0 animateWithDuration:v2 animations:v4 completion:0.3];
  _Block_release(v4);
  _Block_release(v2);
}

void sub_10005FD08(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_noMatchView);

    [v3 setAlpha:0.0];
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = *(v4 + OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_listeningView);

    [v6 setAlpha:1.0];
  }
}

double sub_10005FDDC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_retryHandler);
    v5 = Strong;

    v4();
  }

  return result;
}

id sub_10005FF48(uint64_t a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  v8 = *&v3[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_listeningView];
  v9 = OBJC_IVAR____TtC16MusicRecognition20AmbientListeningView_cancelButton;
  [*(v8 + OBJC_IVAR____TtC16MusicRecognition20AmbientListeningView_cancelButton) convertPoint:v3 fromCoordinateSpace:{a2, a3}];
  v11 = v10;
  v13 = v12;
  [*(v8 + v9) bounds];
  v18.x = v11;
  v18.y = v13;
  if (CGRectContainsPoint(v19, v18))
  {
    v14 = [*(v8 + v9) hitTest:a1 withEvent:{v11, v13}];
  }

  else
  {
    v16.receiver = v3;
    v16.super_class = ObjectType;
    v14 = objc_msgSendSuper2(&v16, "hitTest:withEvent:", a1, a2, a3);
  }

  return v14;
}

uint64_t sub_1000601C4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006020C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000789C;

  return sub_10005F5A0(a1, v4, v5, v7, v6);
}

unint64_t sub_1000602CC()
{
  result = qword_100141FA0;
  if (!qword_100141FA0)
  {
    sub_100004370(&qword_100141F90, &qword_1000F4E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100141FA0);
  }

  return result;
}

uint64_t sub_100060330()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100060370(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000603C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  sub_100002D44(a1, a2);
  sub_100004610(a3, a1, a2, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v17[4] == v17[0])
  {
    v10 = a4(0);
    return (*(*(v10 - 8) + 56))(a5, 1, 1, v10);
  }

  else
  {
    v12 = dispatch thunk of Collection.subscript.read();
    v14 = v13;
    v15 = a4(0);
    v16 = *(v15 - 8);
    (*(v16 + 16))(a5, v14, v15);
    v12(v17, 0);
    return (*(v16 + 56))(a5, 0, 1, v15);
  }
}

uint64_t sub_1000605FC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Song();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for MusicLibrary();
  *(v1 + 24) = static MusicLibrary.shared.getter();
  *(v1 + OBJC_IVAR____TtC16MusicRecognition20MusicKitMusicLibrary_songAddStatusCancellable) = 0;
  v8 = OBJC_IVAR____TtC16MusicRecognition20MusicKitMusicLibrary_playlistsByID;
  *(v2 + v8) = sub_1000D58A4(_swiftEmptyArrayStorage);
  v9 = OBJC_IVAR____TtC16MusicRecognition20MusicKitMusicLibrary_mostRecentEditedPlaylist;
  v10 = type metadata accessor for Playlist();
  (*(*(v10 - 8) + 56))(v2 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC16MusicRecognition20MusicKitMusicLibrary_song;
  v12 = *(v5 + 16);
  v12(v2 + OBJC_IVAR____TtC16MusicRecognition20MusicKitMusicLibrary_song, a1, v4);
  v17[15] = 0;
  sub_100002D44(&qword_100144978, &qword_1000F8A70);
  swift_allocObject();
  *(v2 + 16) = CurrentValueSubject.init(_:)();
  static MusicLibrary.shared.getter();
  v12(v7, v2 + v11, v4);
  v13 = MusicLibrary.state<A>(for:)();

  v14 = *(v5 + 8);
  (v14)(v7, v4);
  *(v2 + 32) = v13;
  v15 = sub_100060820();
  v14(a1, v4, v15);
  return v2;
}

double sub_100060820()
{
  v1 = v0;
  sub_100002D44(&qword_100144980, &qword_1000F8A78);
  sub_100004610(&qword_100144988, &qword_100144980, &qword_1000F8A78, &protocol conformance descriptor for MusicLibrary.ItemState<A>);
  ObservableObject<>.objectWillChange.getter();
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100064538;
  *(v3 + 24) = v2;
  type metadata accessor for ObservableObjectPublisher();
  v4 = Publisher<>.sink(receiveValue:)();

  *(v1 + OBJC_IVAR____TtC16MusicRecognition20MusicKitMusicLibrary_songAddStatusCancellable) = v4;

  return result;
}

double sub_100060964(uint64_t a1)
{
  v1 = type metadata accessor for MusicLibrary.AddStatus();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
    (*(v2 + 104))(v4, enum case for MusicLibrary.AddStatus.added(_:), v1);
    v9 = static MusicLibrary.AddStatus.== infix(_:_:)() & 1;
    v10 = *(v2 + 8);
    v10(v4, v1);
    v10(v7, v1);

    CurrentValueSubject.value.getter();

    if (v9 != v12)
    {
      v12 = v9;

      CurrentValueSubject.send(_:)();
    }
  }

  return result;
}

uint64_t sub_100060B50(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  sub_100002D44(&qword_100144918, &qword_1000F8988);
  v2[7] = swift_task_alloc();
  sub_100002D44(&qword_100144920, &qword_1000F8990);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v3 = type metadata accessor for Playlist();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = sub_100002D44(&qword_100144928, &qword_1000F8998);
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100060CF4, 0, 0);
}

uint64_t sub_100060CF4()
{
  swift_getKeyPath();
  MusicLibraryRequest.init()();
  MusicLibraryRequest<>.sort<A>(by:ascending:)();
  swift_getKeyPath();
  *(v0 + 136) = 1;
  MusicLibraryRequest<>.filter<A>(matching:equalTo:)();

  MusicLibraryRequest.limit.setter();

  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_100060E34;
  v2 = *(v0 + 56);

  return sub_10006122C(v2);
}

uint64_t sub_100060E34()
{

  return _swift_task_switch(sub_100060F30, 0, 0);
}

uint64_t sub_100060F30()
{
  v1 = v0[7];
  v2 = sub_100002D44(&qword_100144930, &qword_1000F89F8);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];
  v8 = v0[10];
  v9 = v0[11];
  v10 = v0[9];
  if (v4 == 1)
  {
    (*(v6 + 8))(v0[15], v0[13]);
    sub_100007E14(v1, &qword_100144918, &qword_1000F8988);
    (*(v9 + 56))(v10, 1, 1, v8);
LABEL_4:
    v11 = v0[5];
    sub_100007E14(v0[9], &qword_100144920, &qword_1000F8990);
    *v11 = 0u;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0;
    goto LABEL_6;
  }

  sub_1000603C8(&qword_100144930, &qword_1000F89F8, &qword_100144938, &type metadata accessor for Playlist, v0[9]);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v1, v2);
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    goto LABEL_4;
  }

  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[10];
  v15 = v0[8];
  v16 = v0[5];
  v17 = v0[6];
  v18 = *(v13 + 32);
  v18(v12, v0[9], v14);
  (*(v13 + 16))(v15, v12, v14);
  (*(v13 + 56))(v15, 0, 1, v14);
  v19 = OBJC_IVAR____TtC16MusicRecognition20MusicKitMusicLibrary_mostRecentEditedPlaylist;
  swift_beginAccess();
  sub_100062F30(v15, v17 + v19);
  swift_endAccess();
  v16[3] = type metadata accessor for MusicKitPlaylist(0);
  v16[4] = &off_1001361D0;
  v20 = sub_100023284(v16);
  v18(v20, v12, v14);
LABEL_6:

  v21 = v0[1];

  return v21();
}

uint64_t sub_10006122C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_100002D44(&qword_100144940, &unk_1000F8A00);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v3 = swift_task_alloc();
  v1[5] = v3;
  v4 = swift_task_alloc();
  v1[6] = v4;
  v5 = sub_100002D44(&qword_100144928, &qword_1000F8998);
  *v4 = v1;
  v4[1] = sub_100061358;

  return MusicLibraryRequest.response()(v3, v5);
}

uint64_t sub_100061358()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100061550;
  }

  else
  {
    v2 = sub_10006146C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006146C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  MusicLibraryResponse.items.getter();
  (*(v2 + 8))(v1, v3);
  v4 = v0[2];
  v5 = sub_100002D44(&qword_100144930, &qword_1000F89F8);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100061550()
{
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BEC4(v1, qword_10014FEA0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error retrieving playlists from user's music library: %@", v4, 0xCu);
    sub_100007E14(v5, &unk_100142880, &unk_1000F5950);
  }

  else
  {
  }

  v7 = *(v0 + 16);
  v8 = sub_100002D44(&qword_100144930, &qword_1000F89F8);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100061750()
{
  v1[12] = v0;
  sub_100002D44(&qword_100144918, &qword_1000F8988);
  v1[13] = swift_task_alloc();
  v2 = sub_100002D44(&qword_100144930, &qword_1000F89F8);
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v3 = sub_100002D44(&qword_100144928, &qword_1000F8998);
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();

  return _swift_task_switch(sub_1000618C8, 0, 0);
}

uint64_t sub_1000618C8()
{
  swift_getKeyPath();
  *(v0 + 168) = type metadata accessor for Playlist();
  MusicLibraryRequest.init()();
  MusicLibraryRequest.sort<A>(by:ascending:)();
  swift_getKeyPath();
  *(v0 + 184) = 1;
  MusicLibraryRequest<>.filter<A>(matching:equalTo:)();

  MusicLibraryRequest.limit.setter();

  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_100061A04;
  v2 = *(v0 + 104);

  return sub_10006122C(v2);
}

uint64_t sub_100061A04()
{

  return _swift_task_switch(sub_100061B00, 0, 0);
}

void *sub_100061B00()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
    sub_100007E14(v3, &qword_100144918, &qword_1000F8988);
    v4 = 0;
  }

  else
  {
    v5 = *(v0 + 128);
    v6 = *(v0 + 136);
    (*(v2 + 32))(v6, v3, v1);
    (*(v2 + 16))(v5, v6, v1);
    sub_100004610(&qword_100144948, &qword_100144930, &qword_1000F89F8, &protocol conformance descriptor for MusicItemCollection<A>);
    v7 = dispatch thunk of Sequence._copyToContiguousArray()();
    sub_100061EAC(v7);

    sub_100004610(&qword_100144938, &qword_100144930, &qword_1000F89F8, &protocol conformance descriptor for MusicItemCollection<A>);
    v8 = dispatch thunk of Collection.count.getter();
    if (v8)
    {
      v9 = v8;
      sub_100063008(0, v8 & ~(v8 >> 63), 0);
      v4 = _swiftEmptyArrayStorage;
      result = dispatch thunk of Collection.startIndex.getter();
      if (v9 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = *(v0 + 168) - 8;
      do
      {
        v12 = *(v0 + 168);
        v13 = dispatch thunk of Collection.subscript.read();
        v15 = v14;
        *(v0 + 40) = type metadata accessor for MusicKitPlaylist(0);
        *(v0 + 48) = &off_1001361D0;
        v16 = sub_100023284((v0 + 16));
        (*(*v11 + 16))(v16, v15, v12);
        v13(v0 + 56, 0);
        v18 = _swiftEmptyArrayStorage[2];
        v17 = _swiftEmptyArrayStorage[3];
        if (v18 >= v17 >> 1)
        {
          sub_100063008((v17 > 1), v18 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v18 + 1;
        v19 = &_swiftEmptyArrayStorage[5 * v18];
        v20 = *(v0 + 16);
        v21 = *(v0 + 32);
        v19[8] = *(v0 + 48);
        *(v19 + 2) = v20;
        *(v19 + 3) = v21;
        dispatch thunk of Collection.formIndex(after:)();
        --v9;
      }

      while (v9);
      v23 = *(v0 + 152);
      v22 = *(v0 + 160);
      v24 = *(v0 + 144);
      (*(*(v0 + 120) + 8))(*(v0 + 136), *(v0 + 112));
      (*(v23 + 8))(v22, v24);
    }

    else
    {
      v26 = *(v0 + 152);
      v25 = *(v0 + 160);
      v27 = *(v0 + 144);
      (*(*(v0 + 120) + 8))(*(v0 + 136), *(v0 + 112));
      (*(v26 + 8))(v25, v27);
      v4 = _swiftEmptyArrayStorage;
    }
  }

  v28 = *(v0 + 8);

  return v28(v4);
}

uint64_t sub_100061EAC(uint64_t a1)
{
  v2 = v1;
  v23 = sub_100002D44(&qword_100144958, &qword_1000F8A48);
  v4 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = (&v20 - v5);
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v20 = v1;
    v24 = _swiftEmptyArrayStorage;
    sub_100062FE8(0, v7, 0);
    v8 = v24;
    v22 = type metadata accessor for Playlist();
    v9 = *(v22 - 8);
    v21 = *(v9 + 16);
    v10 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    do
    {
      v21(v6 + *(v23 + 48), v10, v22);
      *v6 = Playlist.id.getter();
      v6[1] = v12;
      v24 = v8;
      v14 = v8[2];
      v13 = v8[3];
      if (v14 >= v13 >> 1)
      {
        sub_100062FE8((v13 > 1), v14 + 1, 1);
        v8 = v24;
      }

      v8[2] = v14 + 1;
      sub_1000633B8(v6, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14);
      v10 += v11;
      --v7;
    }

    while (v7);
    v2 = v20;
  }

  if (v8[2])
  {
    sub_100002D44(&qword_100144960, &unk_1000F8A50);
    v15 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v15 = &_swiftEmptyDictionarySingleton;
  }

  v24 = v15;

  sub_100063944(v16, 1, &v24);

  v17 = v24;
  v18 = OBJC_IVAR____TtC16MusicRecognition20MusicKitMusicLibrary_playlistsByID;
  swift_beginAccess();
  *(v2 + v18) = v17;
}

uint64_t sub_10006212C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for Playlist();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_100062208, 0, 0);
}

uint64_t sub_100062208()
{
  v27 = v0;
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC16MusicRecognition20MusicKitMusicLibrary_playlistsByID;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16) && (v4 = sub_1000B8EA0(v0[5], v0[6]), (v5 & 1) != 0))
  {
    v7 = v0[11];
    v6 = v0[12];
    v8 = v0[8];
    v9 = v0[9];
    v10 = v0[7];
    (*(v9 + 16))(v7, *(v3 + 56) + *(v9 + 72) * v4, v8);
    (*(v9 + 32))(v6, v7, v8);
    swift_endAccess();
    v11 = OBJC_IVAR____TtC16MusicRecognition20MusicKitMusicLibrary_song;
    v25 = (&async function pointer to dispatch thunk of MusicLibrary.add<A>(_:to:) + async function pointer to dispatch thunk of MusicLibrary.add<A>(_:to:));
    v12 = swift_task_alloc();
    v0[13] = v12;
    v13 = type metadata accessor for Song();
    *v12 = v0;
    v12[1] = sub_1000624F8;
    v14 = v0[12];
    v15 = v0[10];

    return v25(v15, v10 + v11, v14, v13, &protocol witness table for Song);
  }

  else
  {
    swift_endAccess();
    if (qword_100141A70 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000BEC4(v17, qword_10014FEA0);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v21 = v0[5];
      v20 = v0[6];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v26 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_1000BA1EC(v21, v20, &v26);
      _os_log_impl(&_mh_execute_header, v18, v19, "No playlist found with identifier %s", v22, 0xCu);
      sub_100007E74(v23);
    }

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_1000624F8()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1000626B8;
  }

  else
  {
    v5 = v2[9];
    v4 = v2[10];
    v6 = v2[8];
    v7 = *(v5 + 8);
    v2[15] = v7;
    v2[16] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v6);
    v3 = sub_100062630;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100062630()
{
  (*(v0 + 120))(*(v0 + 96), *(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000626B8()
{
  (*(v0[9] + 8))(v0[12], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100062754()
{

  v1 = OBJC_IVAR____TtC16MusicRecognition20MusicKitMusicLibrary_song;
  v2 = type metadata accessor for Song();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100007E14(v0 + OBJC_IVAR____TtC16MusicRecognition20MusicKitMusicLibrary_mostRecentEditedPlaylist, &qword_100144920, &qword_1000F8990);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for MusicKitMusicLibrary(uint64_t a1)
{
  result = qword_100144858;
  if (!qword_100144858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006289C(uint64_t a1)
{
  type metadata accessor for Song();
  if (v1 <= 0x3F)
  {
    sub_100062994(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100062994(uint64_t a1)
{
  if (!qword_100144868)
  {
    type metadata accessor for Playlist();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100144868);
    }
  }
}

uint64_t sub_100062A10()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC16MusicRecognition20MusicKitMusicLibrary_song;
  v6 = (&async function pointer to dispatch thunk of MusicLibrary.add<A>(_:) + async function pointer to dispatch thunk of MusicLibrary.add<A>(_:));
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  v4 = type metadata accessor for Song();
  *v3 = v0;
  v3[1] = sub_10000DCC4;

  return v6(v1 + v2, v4, &protocol witness table for Song);
}

uint64_t sub_100062B0C()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC16MusicRecognition20MusicKitMusicLibrary_song;
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  v4 = type metadata accessor for Song();
  *v3 = v0;
  v3[1] = sub_10000D4B0;

  return MusicLibrary.remove<A>(_:)(v1 + v2, v4, &protocol witness table for Song);
}

uint64_t sub_100062BD0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100062C60;

  return sub_100061750();
}

uint64_t sub_100062C60(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_100062D5C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000789C;

  return sub_100060B50(a1);
}

uint64_t sub_100062DF8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000789C;

  return sub_10006212C(a1, a2);
}

uint64_t sub_100062EE8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_10000DC80(a1, a1[3]);
  result = dispatch thunk of LibraryPlaylistInternalFilter.isEditable.getter();
  *a2 = result;
  return result;
}

uint64_t sub_100062F30(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100144920, &qword_1000F8990);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100062FA0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000DC80(a1, a1[3]);
  result = dispatch thunk of LibraryPlaylistSortProperties.name.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void *sub_100062FE8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000630A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100063008(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100063298(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100063028(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100063428(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100063048(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10006352C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100063068(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100063660(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100063088(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10006376C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000630A8(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100002D44(&qword_100144968, &qword_1000F8A60);
  v10 = *(sub_100002D44(&qword_100144958, &qword_1000F8A48) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100002D44(&qword_100144958, &qword_1000F8A48) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100063298(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002D44(&qword_100144950, &qword_1000F8A40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000633B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100144958, &qword_1000F8A48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_100063428(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002D44(&qword_100144970, &qword_1000F8A68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_10006352C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100002D44(&qword_1001449D0, &qword_1000F8AA8);
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
    sub_100002D44(&qword_100142FC8, &qword_1000F8AB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100063660(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002D44(qword_1001449D8, &qword_1000F8AB8);
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

void *sub_10006376C(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100002D44(&qword_100144990, &qword_1000F8A80);
  v10 = *(type metadata accessor for StreamingService(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for StreamingService(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100063944(uint64_t a1, char a2, void *a3)
{
  v61 = type metadata accessor for Playlist();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002D44(&qword_100144958, &qword_1000F8A48);
  v58 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v52 - v10);
  v56 = *(a1 + 16);
  if (!v56)
  {
  }

  v52 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v9 + 48);
  v13 = *(v58 + 80);
  v57 = a1;
  v14 = (v59 + 32);
  v54 = a1 + ((v13 + 32) & ~v13);
  sub_100063E90(v54, v11);
  v15 = v11[1];
  v64 = *v11;
  v16 = v64;
  v65 = v15;
  v17 = *v14;
  v55 = v12;
  v53 = v17;
  v17(v60, v11 + v12, v61);
  v18 = *a3;
  v20 = sub_1000B8EA0(v16, v15);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v19;
  if (v18[3] >= v23)
  {
    if (a2)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_100063F00();
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_100064180(v23, a2 & 1);
  v25 = sub_1000B8EA0(v16, v15);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if ((v24 & 1) == 0)
    {
LABEL_14:
      v29 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v30 = (v29[6] + 16 * v20);
      *v30 = v16;
      v30[1] = v15;
      v53((v29[7] + *(v59 + 72) * v20), v60, v61);
      v31 = v29[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v29[2] = v33;
      if (v56 != 1)
      {
        v34 = 1;
        while (v34 < *(v57 + 16))
        {
          sub_100063E90(v54 + *(v58 + 72) * v34, v11);
          v35 = v11[1];
          v64 = *v11;
          v36 = v64;
          v65 = v35;
          v37 = *v14;
          (*v14)(v60, v11 + v55, v61);
          v38 = *a3;
          v39 = sub_1000B8EA0(v36, v35);
          v41 = v38[2];
          v42 = (v40 & 1) == 0;
          v32 = __OFADD__(v41, v42);
          v43 = v41 + v42;
          if (v32)
          {
            goto LABEL_26;
          }

          v44 = v40;
          if (v38[3] < v43)
          {
            sub_100064180(v43, 1);
            v39 = sub_1000B8EA0(v36, v35);
            if ((v44 & 1) != (v45 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v44)
          {
            goto LABEL_11;
          }

          v46 = *a3;
          *(*a3 + 8 * (v39 >> 6) + 64) |= 1 << v39;
          v47 = (v46[6] + 16 * v39);
          *v47 = v36;
          v47[1] = v35;
          v37((v46[7] + *(v59 + 72) * v39), v60, v61);
          v48 = v46[2];
          v32 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v32)
          {
            goto LABEL_27;
          }

          ++v34;
          v46[2] = v49;
          if (v56 == v34)
          {
          }
        }

        goto LABEL_25;
      }
    }

LABEL_11:
    v27 = swift_allocError();
    swift_willThrow();
    v66 = v27;
    swift_errorRetain();
    sub_100002D44(&qword_100142F78, &unk_1000FACE0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v59 + 8))(v60, v61);
    }

    goto LABEL_29;
  }

LABEL_28:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_29:
  v62 = 0;
  v63 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v50._object = 0x8000000100100E90;
  v50._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v50);
  _print_unlocked<A, B>(_:_:)();
  v51._countAndFlagsBits = 39;
  v51._object = 0xE100000000000000;
  String.append(_:)(v51);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100063E90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100144958, &qword_1000F8A48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100063F00()
{
  v1 = v0;
  v35 = type metadata accessor for Playlist();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002D44(&qword_100144960, &unk_1000F8A50);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_100064180(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v46 = type metadata accessor for Playlist();
  v5 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100002D44(&qword_100144960, &unk_1000F8A50);
  v43 = v4;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v39 = v2;
    v40 = (v5 + 16);
    v41 = v7;
    v42 = v5;
    v44 = (v5 + 32);
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v42 + 72);
      v28 = v23 + v27 * v22;
      if (v43)
      {
        (*v44)(v45, v28, v46);
      }

      else
      {
        (*v40)(v45, v28, v46);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v29 = Hasher._finalize()();
      v30 = -1 << *(v9 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      (*v44)((*(v9 + 56) + v27 * v17), v45, v46);
      ++*(v9 + 16);
      v7 = v41;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

uint64_t sub_100064500()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100064540()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000645A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100064608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 - 8);
  __chkstk_darwin(a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v15 - v10;
  v12(v9);
  sub_1000B03E4();
  v13 = *(v5 + 8);
  v13(v7, a3);
  sub_1000B03E4();
  return (v13)(v11, a3);
}

uint64_t sub_10006474C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_10006601C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel__state;
  swift_beginAccess();
  return sub_10002CEB0(v5 + v3, a1);
}

uint64_t sub_1000647E4()
{
  v1[28] = v0;
  type metadata accessor for MainActor();
  v1[29] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[30] = v3;
  v1[31] = v2;

  return _swift_task_switch(sub_10006487C, v3, v2);
}

uint64_t sub_10006487C()
{
  v0[32] = [objc_allocWithZone(LSApplicationWorkspace) init];
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 applicationWithBundleIdentifier:v2];
  v0[33] = v3;

  v4 = swift_task_alloc();
  v0[34] = v4;
  *v4 = v0;
  v4[1] = sub_1000649A0;

  return sub_1000897A8(v3);
}

uint64_t sub_1000649A0(char a1)
{
  v4 = *v2;
  *(v4 + 280) = v1;

  v5 = *(v4 + 264);
  v6 = *(v4 + 256);
  if (v1)
  {

    v7 = *(v4 + 240);
    v8 = *(v4 + 248);
    v9 = sub_100064CB8;
  }

  else
  {

    *(v4 + 344) = a1 & 1;
    v7 = *(v4 + 240);
    v8 = *(v4 + 248);
    v9 = sub_100064B10;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100064B10()
{
  if (*(v0 + 344) == 1)
  {
    v1 = *(v0 + 280);
    v2 = *(v0 + 224);
    *(v0 + 16) = 1;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0;
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = v0 + 16;
    *(v0 + 288) = OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel___observationRegistrar;
    *(v0 + 200) = v2;
    *(v0 + 296) = sub_10006601C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    *(v0 + 304) = v1;

    sub_10002EC08(v0 + 16);
    *(v0 + 312) = *(v2 + OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel_libraryController);

    return _swift_task_switch(sub_100064D34, 0, 0);
  }

  else
  {

    (*(*(v0 + 224) + OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel_onDismissHandler))(v4);
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100064CB8()
{

  (*(*(v0 + 224) + OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel_onDismissHandler))(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100064D34()
{
  v1 = *(v0 + 312);
  v2 = v1[6];
  v3 = v1[7];
  sub_10000DC80(v1 + 3, v2);
  v6 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  *(v0 + 320) = v4;
  *v4 = v0;
  v4[1] = sub_100064E5C;

  return v6(v2, v3);
}

uint64_t sub_100064E5C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 328) = a1;

  v3 = *(v2 + 248);
  v4 = *(v2 + 240);

  return _swift_task_switch(sub_100064F84, v4, v3);
}

uint64_t sub_100064F84()
{
  v1 = *(v0 + 328);
  if (v1)
  {
    if (*(v1 + 16))
    {

      return _swift_task_switch(sub_1000650E0, 0, 0);
    }
  }

  v2 = *(v0 + 224);

  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 64) = 0u;
  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v0 + 64;
  *(v0 + 208) = v2;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10002EC08(v0 + 64);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000650E0()
{
  v1 = *(v0 + 312);
  v2 = v1[6];
  v3 = v1[7];
  sub_10000DC80(v1 + 3, v2);
  v6 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  *(v0 + 336) = v4;
  *v4 = v0;
  v4[1] = sub_100065210;

  return v6(v0 + 160, v2, v3);
}

uint64_t sub_100065210()
{
  v1 = *v0;

  v2 = *(v1 + 248);
  v3 = *(v1 + 240);

  return _swift_task_switch(sub_100065330, v3, v2);
}

uint64_t sub_100065330()
{
  v1 = v0[41];
  v2 = v0[28];

  v0[14] = v1;
  sub_100066074((v0 + 20), (v0 + 15));
  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v0 + 14;
  v0[27] = v2;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_100007E14((v0 + 20), &qword_100143538, &qword_1000F6CB0);

  sub_10002EC08((v0 + 14));
  v4 = v0[1];

  return v4();
}

uint64_t sub_10006545C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100065480, 0, 0);
}

uint64_t sub_100065480()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel_libraryController);
  v2 = v1[6];
  v3 = v1[7];
  sub_10000DC80(v1 + 3, v2);
  v8 = (*(v3 + 48) + **(v3 + 48));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1000655BC;
  v6 = v0[2];
  v5 = v0[3];

  return v8(v6, v5, v2, v3);
}

uint64_t sub_1000655BC()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1000658F0;
  }

  else
  {
    v2 = sub_1000656D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000656D0()
{
  *(v0 + 56) = type metadata accessor for MainActor();
  *(v0 + 64) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100065768, v2, v1);
}

uint64_t sub_100065768()
{

  *(v0 + 72) = [objc_allocWithZone(UINotificationFeedbackGenerator) init];

  return _swift_task_switch(sub_1000657EC, 0, 0);
}

uint64_t sub_1000657EC(uint64_t a1)
{
  *(v1 + 80) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100065878, v3, v2);
}

uint64_t sub_100065878()
{
  v1 = *(v0 + 72);

  [v1 notificationOccurred:0];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000658F0()
{
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BEC4(v1, qword_10014FEA0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Adding song to playlist failed: %@", v4, 0xCu);
    sub_100007E14(v5, &unk_100142880, &unk_1000F5950);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100065A94(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel__state;
  swift_beginAccess();
  sub_1000660E4(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_100065B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  URL.init(string:)();
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  result = (*(v11 + 48))(v9, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v3 + OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel_appleMusicBaseURL, v9, v10);
    v13 = v3 + OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel__state;
    *v13 = 1;
    *(v13 + 8) = 0u;
    *(v13 + 24) = 0u;
    *(v13 + 40) = 0;
    ObservationRegistrar.init()();
    *(v3 + OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel_libraryController) = a1;
    v14 = (v3 + OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel_onDismissHandler);
    *v14 = a2;
    v14[1] = a3;
    return v3;
  }

  return result;
}

uint64_t sub_100065C88()
{
  v1 = OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel_appleMusicBaseURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_10002EC08(v0 + OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel__state);

  v3 = OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t type metadata accessor for AddToPlaylistViewModel(uint64_t a1)
{
  result = qword_100144AA0;
  if (!qword_100144AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100065DEC(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100065EDC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100065EF4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100065F0C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100065F20(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 48))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100065F74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100065FD8(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_10006601C()
{
  result = qword_100143450;
  if (!qword_100143450)
  {
    type metadata accessor for AddToPlaylistViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143450);
  }

  return result;
}

uint64_t sub_100066074(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100143538, &qword_1000F6CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100066134()
{
  v1[5] = v0;
  v2 = type metadata accessor for IntentSystemContext.Source();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = sub_100002D44(&qword_100144598, &qword_1000F8668);
  v1[10] = swift_task_alloc();
  sub_100002D44(&qword_100142878, &qword_1000F68E0);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v3 = type metadata accessor for ActivityPresentationOptions();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  sub_100002D44(&qword_100142FE0, &unk_1000F8EC0);
  v1[16] = swift_task_alloc();
  v4 = sub_100002D44(&qword_100144C50, &qword_1000F8EA0);
  v1[17] = v4;
  v1[18] = *(v4 - 8);
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_100066370, 0, 0);
}

uint64_t sub_100066370()
{
  v73 = v0;
  v1 = *(v0[5] + 24);
  if (v1)
  {
    [v1 invalidate];
  }

  if (qword_100141A70 != -1)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    sub_10000BEC4(v2, qword_10014FEA0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Requesting MusicRecognitionActivity", v5, 2u);
    }

    v6 = [objc_opt_self() mainBundle];
    v7 = [v6 bundleIdentifier];

    if (v7)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      if (v9)
      {
        break;
      }
    }

    __break(1u);
LABEL_9:
    swift_once();
  }

  v10 = v0[16];
  v11 = type metadata accessor for Date();
  v12 = (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v15 = sub_100068770(v12, v13, v14);
  v18 = sub_1000687C8(v15, v16, v17);
  sub_100068820(v18, v19, v20);
  ActivityContent.init(state:staleDate:relevanceScore:)();
  sub_1000689D4();
  v21 = SBSIsSystemApertureAvailable();
  sub_100002D44(&qword_100144C68, &qword_1000F8EF0);
  v22 = type metadata accessor for ActivityPresentationOptions.ActivityPresentationDestination();
  v23 = *(v22 - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v26 = (v23 + 104);
  v27 = swift_allocObject();
  if (v21)
  {
    *(v27 + 16) = xmmword_1000F7970;
    v28 = v27 + v25;
    v29 = *v26;
    (*v26)(v28, enum case for ActivityPresentationOptions.ActivityPresentationDestination.systemAperture(_:), v22);
    v30 = enum case for ActivityPresentationOptions.ActivityPresentationDestination.ambient(_:);
    v31 = v28 + v24;
  }

  else
  {
    *(v27 + 16) = xmmword_1000F6160;
    v32 = v27 + v25;
    v29 = *v26;
    (*v26)(v32, enum case for ActivityPresentationOptions.ActivityPresentationDestination.banner(_:), v22);
    v29(v32 + v24, enum case for ActivityPresentationOptions.ActivityPresentationDestination.lockscreen(_:), v22);
    v30 = enum case for ActivityPresentationOptions.ActivityPresentationDestination.ambient(_:);
    v31 = v32 + 2 * v24;
  }

  v29(v31, v30, v22);

  ActivityPresentationOptions.init(destinations:)();
  ActivityPresentationOptions.shouldSuppressAlertContentOnLockScreen.setter();
  if (qword_100141B48 != -1)
  {
    swift_once();
  }

  v33 = v0[12];
  v35 = v0[9];
  v34 = v0[10];
  v36 = v0[6];
  v37 = v0[7];
  v38 = qword_10014FF28;
  v39 = OBJC_IVAR____TtC16MusicRecognition15MusicRecognizer_origin;
  swift_beginAccess();
  (*(v37 + 104))(v33, enum case for IntentSystemContext.Source.actionButton(_:), v36);
  (*(v37 + 56))(v33, 0, 1, v36);
  v40 = *(v35 + 48);
  sub_100012CAC(v38 + v39, v34);
  sub_100012CAC(v33, v34 + v40);
  v41 = *(v37 + 48);
  if (v41(v34, 1, v36) == 1)
  {
    v42 = v0[6];
    sub_100007E14(v0[12], &qword_100142878, &qword_1000F68E0);
    if (v41(v34 + v40, 1, v42) == 1)
    {
      sub_100007E14(v0[10], &qword_100142878, &qword_1000F68E0);
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v43 = v0[6];
  sub_100012CAC(v0[10], v0[11]);
  v44 = v41(v34 + v40, 1, v43);
  v45 = v0[11];
  v46 = v0[12];
  if (v44 == 1)
  {
    v47 = v0[6];
    v48 = v0[7];
    sub_100007E14(v0[12], &qword_100142878, &qword_1000F68E0);
    (*(v48 + 8))(v45, v47);
LABEL_20:
    sub_100007E14(v0[10], &qword_100144598, &qword_1000F8668);
    goto LABEL_22;
  }

  v67 = v0[10];
  v49 = v0[7];
  v50 = v0[8];
  v51 = v0[6];
  (*(v49 + 32))(v50, v34 + v40, v51);
  sub_10006941C();
  dispatch thunk of static Equatable.== infix(_:_:)();
  v52 = *(v49 + 8);
  v52(v50, v51);
  sub_100007E14(v46, &qword_100142878, &qword_1000F68E0);
  v52(v45, v51);
  sub_100007E14(v67, &qword_100142878, &qword_1000F68E0);
LABEL_22:
  ActivityPresentationOptions.isActionButtonInitiated.setter();

  sub_100002D44(&qword_100144C58, &qword_1000F8EA8);
  v53 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:)();
  v54 = v0[5];

  *(v54 + 16) = v53;
  swift_retain_n();

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.debug.getter();

  v57 = os_log_type_enabled(v55, v56);
  v58 = v0[18];
  v70 = v0[17];
  v71 = v0[19];
  v59 = v0[14];
  v68 = v0[13];
  v69 = v0[15];
  if (v57)
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v72 = v61;
    *v60 = 136315138;
    v62 = Activity.id.getter();
    v64 = sub_1000BA1EC(v62, v63, &v72);

    *(v60 + 4) = v64;
    _os_log_impl(&_mh_execute_header, v55, v56, "Successfully requested activity with id %s", v60, 0xCu);
    sub_100007E74(v61);
  }

  (*(v59 + 8))(v69, v68);
  (*(v58 + 8))(v71, v70);

  v65 = v0[1];

  return v65();
}

uint64_t sub_100066CC8()
{
  v1[3] = v0;
  v2 = type metadata accessor for ActivityUIDismissalPolicy();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  sub_100002D44(&qword_100144C48, &qword_1000F8E98);
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_100066DC0, 0, 0);
}

uint64_t sub_100066DC0()
{
  v23 = v0;
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BEC4(v1, qword_10014FEA0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Calling end activity", v4, 2u);
  }

  v5 = v0[3];

  v6 = *(v5 + 16);
  v0[8] = v6;
  if (v6)
  {
    swift_retain_n();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v22 = v10;
      *v9 = 136315138;
      v0[2] = v6;

      sub_100002D44(&qword_100144C58, &qword_1000F8EA8);
      v11 = String.init<A>(describing:)();
      v13 = sub_1000BA1EC(v11, v12, &v22);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Ending activity %s", v9, 0xCu);
      sub_100007E74(v10);
    }

    v14 = v0[7];
    dispatch thunk of Activity.content.getter();
    v15 = sub_100002D44(&qword_100144C50, &qword_1000F8EA0);
    (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
    static ActivityUIDismissalPolicy.immediate.getter();
    v21 = (&async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:) + async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:));
    v16 = swift_task_alloc();
    v0[9] = v16;
    *v16 = v0;
    v16[1] = sub_1000670F0;
    v17 = v0[6];
    v18 = v0[7];

    return v21(v18, v17);
  }

  else
  {

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_1000670F0()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);

  (*(v3 + 8))(v2, v4);
  sub_100007E14(v1, &qword_100144C48, &qword_1000F8E98);

  return _swift_task_switch(sub_100067274, 0, 0);
}

uint64_t sub_100067274()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000672E4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 72) = a2;
  *(v4 + 80) = v3;
  *(v4 + 168) = a3;
  *(v4 + 64) = a1;
  sub_100002D44(&qword_100144C60, &qword_1000F8EB8);
  *(v4 + 88) = swift_task_alloc();
  sub_100002D44(&qword_100142FE0, &unk_1000F8EC0);
  *(v4 + 96) = swift_task_alloc();
  v5 = sub_100002D44(&qword_100144C50, &qword_1000F8EA0);
  *(v4 + 104) = v5;
  *(v4 + 112) = *(v5 - 8);
  *(v4 + 120) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v4 + 128) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 136) = v7;
  *(v4 + 144) = v6;

  return _swift_task_switch(sub_10006745C, v7, v6);
}

uint64_t sub_10006745C()
{
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BEC4(v1, qword_10014FEA0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Calling update activity", v4, 2u);
  }

  v5 = *(v0 + 80);

  v6 = *(v5 + 24);
  if (v6)
  {
    [v6 invalidate];
  }

  if (*(v0 + 168) || ((v8 = [*(v0 + 64) mediaItems], sub_100023398(), v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v8, v9 >> 62) ? (v10 = _CocoaArrayWrapper.endIndex.getter()) : (v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v10))
  {
    v7 = 5.0;
  }

  else
  {
    v7 = 180.0;
  }

  v11 = *(v0 + 80);
  v12 = objc_opt_self();
  *(v0 + 48) = sub_100068974;
  *(v0 + 56) = v11;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_100068414;
  *(v0 + 40) = &unk_1001373C8;
  v13 = _Block_copy((v0 + 16));

  v14 = [v12 scheduledTimerWithTimeInterval:0 repeats:v13 block:v7];
  _Block_release(v13);
  v15 = *(v5 + 24);
  *(v5 + 24) = v14;

  if (SHSession.Result.wasCancelled.getter())
  {

LABEL_22:

    v21 = *(v0 + 8);

    return v21();
  }

  if (!*(*(v0 + 80) + 16))
  {

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "No activity identifier found, unable to assert", v20, 2u);
    }

    goto LABEL_22;
  }

  v16 = *(v0 + 168);

  Activity.id.getter();

  if (!v16)
  {
    v17 = 1;
    goto LABEL_26;
  }

  if (v16 == 1)
  {
    v17 = 0;
LABEL_26:
    sub_100068FD0(v17);
  }

  if (SBUIIsSystemApertureEnabled())
  {
    v23 = *(v0 + 80);
    swift_allocObject();
    swift_weakInit();
    objc_allocWithZone(type metadata accessor for ProminentPresentationAssertion());
    v24 = ProminentPresentationAssertion.init(explanation:activityIdentifier:duration:invalidationHandler:)();
    v25 = *(v23 + 32);
    *(v23 + 32) = v24;
  }

  else
  {
  }

  return _swift_task_switch(sub_1000678D8, 0, 0);
}

uint64_t sub_1000678D8(double a1)
{
  v2 = *(*(v1 + 80) + 16);
  *(v1 + 152) = v2;
  if (v2)
  {
    v3 = *(v1 + 88);
    v4 = *(v1 + 96);
    v5 = *(v1 + 64);
    v6 = *(v1 + 168);
    v7 = type metadata accessor for Date();
    v8 = (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v11 = sub_100068770(v8, v9, v10);
    v14 = sub_1000687C8(v11, v12, v13);
    sub_100068820(v14, v15, v16);

    ActivityContent.init(state:staleDate:relevanceScore:)();
    sub_10006C320(v5, v6, v3);
    v17 = type metadata accessor for AlertConfiguration();
    (*(*(v17 - 8) + 56))(v3, 0, 1, v17);
    v24 = (&async function pointer to dispatch thunk of Activity.update(_:alertConfiguration:) + async function pointer to dispatch thunk of Activity.update(_:alertConfiguration:));
    v18 = swift_task_alloc();
    *(v1 + 160) = v18;
    *v18 = v1;
    v18[1] = sub_100067AE4;
    v19 = *(v1 + 120);
    v20 = *(v1 + 88);

    return v24(v19, v20);
  }

  else
  {
    v22 = *(v1 + 136);
    v23 = *(v1 + 144);

    return _swift_task_switch(sub_100067C98, v22, v23);
  }
}

uint64_t sub_100067AE4()
{
  v1 = *(*v0 + 88);

  sub_100007E14(v1, &qword_100144C60, &qword_1000F8EB8);

  return _swift_task_switch(sub_100067C0C, 0, 0);
}

uint64_t sub_100067C0C()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];

  (*(v2 + 8))(v1, v3);
  v4 = v0[17];
  v5 = v0[18];

  return _swift_task_switch(sub_100067C98, v4, v5);
}

uint64_t sub_100067C98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100067D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000688CC(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_100067D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000688CC(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_100067E84@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_100067EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100068920(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_100067EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100068920(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_100067F7C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = sub_100002D44(a4, a5);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  sub_10000DC80(a1, a1[3]);
  a6();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v10 + 8))(v12, v9);
}

double sub_10006809C(uint64_t a1, uint64_t a2)
{
  v2 = sub_100002D44(&qword_100142818, &qword_1000F5860);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  sub_1000C8DF8(0, 0, v4, &unk_1000F8ED8, v7);

  return result;
}

uint64_t sub_1000681C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return _swift_task_switch(sub_1000681E0, 0, 0);
}

uint64_t sub_1000681E0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_1000682D4;

    return sub_100066CC8();
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1000682D4()
{

  return _swift_task_switch(sub_1000683EC, 0, 0);
}

void sub_100068414(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_10006847C(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000BEC4(v4, qword_10014FEA0);
  v5 = a1;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v5;
    *v9 = v5;
    *(v8 + 12) = 2112;
    v10 = v5;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    v9[1] = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "Presented prominent assertion %@ error %@", v8, 0x16u);
    sub_100002D44(&unk_100142880, &unk_1000F5950);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = *(Strong + 32);
    *(Strong + 32) = 0;
  }
}

uint64_t sub_100068640()
{

  return _swift_deallocClassInstance(v0, 40, 7);
}

unint64_t sub_1000686C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100144BF8;
  if (!qword_100144BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144BF8);
  }

  return result;
}

unint64_t sub_100068718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100144C00;
  if (!qword_100144C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144C00);
  }

  return result;
}

unint64_t sub_100068770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100144C08;
  if (!qword_100144C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144C08);
  }

  return result;
}

unint64_t sub_1000687C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100144C10;
  if (!qword_100144C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144C10);
  }

  return result;
}

unint64_t sub_100068820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100144C18;
  if (!qword_100144C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144C18);
  }

  return result;
}

unint64_t sub_100068878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100144C20;
  if (!qword_100144C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144C20);
  }

  return result;
}

unint64_t sub_1000688CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100144C30;
  if (!qword_100144C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144C30);
  }

  return result;
}

unint64_t sub_100068920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100144C40;
  if (!qword_100144C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144C40);
  }

  return result;
}

uint64_t sub_10006897C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100068994()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000689D4()
{
  v0 = type metadata accessor for ActivityDescriptor();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v38 - v5;
  v7 = type metadata accessor for ActivityPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActivityCenter();
  static ActivityCenter.shared.getter();
  static ActivityPredicate.allAuthorizedForRequester.getter();
  v39 = dispatch thunk of ActivityCenter.descriptors(matching:)();
  v49 = v3;
  (*(v8 + 8))(v10, v7);

  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_10000BEC4(v12, qword_10014FEA0);
  v14 = v39;

  v48 = v13;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = v49;
  if (v17)
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = *(v14 + 16);

    _os_log_impl(&_mh_execute_header, v15, v16, "Found %ld existing activities", v19, 0xCu);

    v21 = *(v14 + 16);
    if (!v21)
    {
    }
  }

  else
  {

    v21 = *(v14 + 16);
    if (!v21)
    {
    }
  }

  v23 = *(v1 + 16);
  v22 = v1 + 16;
  v45 = v23;
  v46 = v11;
  v24 = v14 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
  v44 = *(v22 + 56);
  *&v20 = 136315138;
  v40 = v20;
  v43 = (v22 - 8);
  v41 = v22;
  v42 = (v22 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v47 = v6;
  do
  {
    v34 = v45;
    v45(v6, v24, v0);
    v34(v18, v6, v0);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v25 = v0;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v50 = v27;
      *v26 = v40;
      v28 = ActivityDescriptor.id.getter();
      v29 = v18;
      v31 = v30;
      v32 = *v43;
      (*v43)(v29, v25);
      v33 = sub_1000BA1EC(v28, v31, &v50);

      *(v26 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v35, v36, "Ending existing activity with id %s", v26, 0xCu);
      sub_100007E74(v27);

      v0 = v25;
    }

    else
    {

      v32 = *v43;
      (*v43)(v18, v0);
    }

    static ActivityCenter.shared.getter();
    v6 = v47;
    ActivityDescriptor.id.getter();
    dispatch thunk of ActivityCenter.endActivity(_:)();

    v32(v6, v0);
    v24 += v44;
    --v21;
    v18 = v49;
  }

  while (v21);
}

uint64_t sub_100068FD0(unsigned __int8 a1)
{
  v2 = type metadata accessor for IntentSystemContext.Source();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002D44(&qword_100142878, &qword_1000F68E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  if (qword_100141B48 != -1)
  {
    swift_once();
  }

  v9 = qword_10014FF28;
  v10 = OBJC_IVAR____TtC16MusicRecognition15MusicRecognizer_origin;
  swift_beginAccess();
  sub_100012CAC(v9 + v10, v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return sub_100007E14(v8, &qword_100142878, &qword_1000F68E0);
  }

  (*(v3 + 16))(v5, v8, v2);
  v12 = (*(v3 + 88))(v5, v2);
  if (v12 == enum case for IntentSystemContext.Source.app(_:) || v12 == enum case for IntentSystemContext.Source.CLI(_:))
  {
    return (*(v3 + 8))(v8, v2);
  }

  if (v12 == enum case for IntentSystemContext.Source.siri(_:))
  {
LABEL_12:
    v14 = 2;
LABEL_15:
    (*(v3 + 8))(v8, v2);
    return sub_1000C3C14(a1 & 1u | (v14 << 8), 0xD000000000000028, 0x8000000100101010);
  }

  if (v12 == enum case for IntentSystemContext.Source.shortcuts(_:))
  {
    v14 = 3;
    goto LABEL_15;
  }

  if (v12 == enum case for IntentSystemContext.Source.testing(_:))
  {
    return (*(v3 + 8))(v8, v2);
  }

  if (v12 == enum case for IntentSystemContext.Source.actionButton(_:))
  {
    v14 = 1;
    goto LABEL_15;
  }

  if (v12 == enum case for IntentSystemContext.Source.spotlight(_:))
  {
    v14 = 6;
    goto LABEL_15;
  }

  if (v12 == enum case for IntentSystemContext.Source.controlCenter(_:))
  {
    v14 = 4;
    goto LABEL_15;
  }

  if (v12 == enum case for IntentSystemContext.Source.widget(_:))
  {
    return (*(v3 + 8))(v8, v2);
  }

  if (v12 == enum case for IntentSystemContext.Source.assistant(_:))
  {
    goto LABEL_12;
  }

  v15 = *(v3 + 8);
  v15(v5, v2);
  return (v15)(v8, v2);
}

uint64_t sub_100069328()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100069368(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000789C;

  return sub_1000681C0(a1, v4, v5, v6);
}

unint64_t sub_10006941C()
{
  result = qword_1001445A0;
  if (!qword_1001445A0)
  {
    type metadata accessor for IntentSystemContext.Source();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001445A0);
  }

  return result;
}

unint64_t sub_1000694A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100144C70;
  if (!qword_100144C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144C70);
  }

  return result;
}

unint64_t sub_100069500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100144C78;
  if (!qword_100144C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144C78);
  }

  return result;
}

unint64_t sub_100069558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100144C80;
  if (!qword_100144C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144C80);
  }

  return result;
}

unint64_t sub_1000695B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100144C88;
  if (!qword_100144C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144C88);
  }

  return result;
}

uint64_t sub_100069630(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100069678(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1000696F4()
{
  v0 = [objc_opt_self() labelColor];
  v1 = [v0 colorWithAlphaComponent:0.15];

  v2 = Color.init(uiColor:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v3 = v13[0];
  v4 = v13[1];
  v5 = v13[0] * 0.5;
  v6 = v13[2];
  v7 = v13[3];
  v8 = v13[4];
  sub_100069D7C(v13, &v12);

  v9 = static Alignment.center.getter();
  v11 = v10;
  sub_100069DD8(v13);
  *&xmmword_100144C90 = v5;
  *(&xmmword_100144C90 + 1) = v3;
  qword_100144CA0 = *&v4;
  unk_100144CA8 = *&v6;
  *&xmmword_100144CB0 = v7;
  *(&xmmword_100144CB0 + 1) = v8;
  qword_100144CC0 = v2;
  word_100144CC8 = 256;
  *&xmmword_100144CD0 = v9;
  *(&xmmword_100144CD0 + 1) = v11;
}

__n128 sub_100069824@<Q0>(uint64_t a1@<X8>)
{
  v4 = v1;
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100002D44(&qword_100144CE0, &qword_1000F9138);
  State.wrappedValue.getter();
  v10 = *v1;
  v11 = *(v4 + 8);
  if (v11 == 1)
  {
    v12 = *v4;
  }

  else
  {

    v4 = static os_log_type_t.fault.getter();
    v2 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v13 = sub_100069CB4(v10, 0);
    (*(v7 + 8))(v9, v6, v13);
    v12 = *v40;
  }

  v14 = v12 * 64.0;
  if (COERCE__INT64(fabs(v12 * 64.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v11)
  {
    v43 = *&v10;
    v15 = *&v10;
  }

  else
  {

    v4 = static os_log_type_t.fault.getter();
    v2 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v16 = sub_100069CB4(v10, 0);
    v17 = *(v7 + 8);
    v7 += 8;
    v17(v9, v6, v16);
    v15 = v43;
  }

  v18 = v15 * 64.0;
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_18;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v2 = v49;
  v6 = v18;
  v9 = v45;
  v19 = v46;
  sub_10000DC80(v44, v45);
  *&v10 = COERCE_DOUBLE((*(v19 + 48))(v14, v6, v9, v19));
  sub_100069CC0(v44);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v4 = *&v49[102];
  LOBYTE(v6) = v50;
  v7 = v51;
  LOBYTE(v9) = v52;
  v11 = v53;
  v3 = v54;
  v48 = v50;
  v47 = v52;
  if (qword_100141B50 != -1)
  {
LABEL_21:
    swift_once();
  }

  v32 = xmmword_100144CB0;
  v33 = *&qword_100144CC0;
  v34 = xmmword_100144CD0;
  v30 = xmmword_100144C90;
  v31 = *&qword_100144CA0;
  v20 = static Alignment.center.getter();
  v40[2] = v32;
  v40[3] = v33;
  v40[4] = v34;
  v40[0] = v30;
  v40[1] = v31;
  v36 = v32;
  v37 = v33;
  v38 = v34;
  v35[0] = v30;
  v35[1] = v31;
  v39.n128_u64[0] = v20;
  v39.n128_u64[1] = v21;
  v22 = v30;
  *(v2 + 22) = v31;
  *(v2 + 6) = v22;
  v23 = v38;
  *(v2 + 86) = v39;
  *(v2 + 70) = v23;
  v24 = v36;
  *(v2 + 54) = v37;
  *(v2 + 38) = v24;
  v41 = v20;
  v42 = v21;
  sub_100007FDC(&v30, v29, &qword_100144CE8, &qword_1000F9140);
  sub_100007FDC(v35, v29, &qword_100144CF0, &unk_1000F9148);
  sub_100069D14(v40);
  v25 = v2[2];
  *(a1 + 106) = v2[3];
  v26 = v2[5];
  *(a1 + 122) = v2[4];
  *(a1 + 138) = v26;
  result = *v2;
  v28 = v2[1];
  *(a1 + 58) = *v2;
  *(a1 + 74) = v28;
  *a1 = *&v10;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 48) = v3;
  *(a1 + 56) = 256;
  *(a1 + 152) = *(&v2[5].n128_u64[1] + 6);
  *(a1 + 90) = v25;
  return result;
}

double sub_100069CB4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100069D14(uint64_t a1)
{
  v2 = sub_100002D44(&qword_100144CF0, &unk_1000F9148);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100069E30()
{
  result = qword_100144CF8;
  if (!qword_100144CF8)
  {
    sub_100004370(&qword_100144D00, &qword_1000F9158);
    sub_100069EE8();
    sub_100004610(&qword_100144D28, &qword_100144CF0, &unk_1000F9148, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144CF8);
  }

  return result;
}

unint64_t sub_100069EE8()
{
  result = qword_100144D08;
  if (!qword_100144D08)
  {
    sub_100004370(&qword_100144D10, &qword_1000F9160);
    sub_100069FA0();
    sub_100004610(&qword_100144368, &qword_100144370, &unk_1000F9170, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144D08);
  }

  return result;
}

unint64_t sub_100069FA0()
{
  result = qword_100144D18;
  if (!qword_100144D18)
  {
    sub_100004370(&qword_100144D20, &qword_1000F9168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144D18);
  }

  return result;
}

unint64_t sub_10006A024(unint64_t *a1)
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

uint64_t sub_10006A04C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
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

uint64_t sub_10006A0A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_10006A108(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

void sub_10006A144(uint64_t a1)
{
  sub_10006A3AC();
  if (v1 <= 0x3F)
  {
    sub_10006A3FC();
    if (v2 <= 0x3F)
    {
      sub_10006A44C(319);
      if (v3 <= 0x3F)
      {
        sub_10006A4A4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10006A214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100002D44(qword_100144D30, &qword_1000F9208);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10006A2E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_100002D44(qword_100144D30, &qword_1000F9208);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10006A3AC()
{
  if (!qword_100144DB8)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100144DB8);
    }
  }
}

unint64_t sub_10006A3FC()
{
  result = qword_100144DC0;
  if (!qword_100144DC0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100144DC0);
  }

  return result;
}

void sub_10006A44C(uint64_t a1)
{
  if (!qword_100144DC8)
  {
    type metadata accessor for URLRequest();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100144DC8);
    }
  }
}

unint64_t sub_10006A4A4()
{
  result = qword_100144DD0;
  if (!qword_100144DD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100144DD0);
  }

  return result;
}

uint64_t sub_10006A534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v55 = a2;
  v5 = type metadata accessor for TaskPriority();
  v53 = *(v5 - 8);
  v54 = v5;
  __chkstk_darwin(v5);
  v51 = a1;
  v52 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 - 8);
  a1 -= 8;
  v42 = v7;
  __chkstk_darwin(v8);
  v46 = v9;
  v49 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002D44(qword_100144D30, &qword_1000F9208);
  __chkstk_darwin(v10 - 8);
  v12 = &v41 - v11;
  v45 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v45);
  v48 = &v41 - v13;
  v14 = *(a1 + 24);
  v47 = *(v14 - 8);
  __chkstk_darwin(v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004370(&qword_100144DD8, &qword_1000F9290);
  v18 = type metadata accessor for ModifiedContent();
  v50 = *(v18 - 8);
  __chkstk_darwin(v18);
  v41 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v44 = &v41 - v21;
  v22 = *(v2 + 2);
  v59 = *v2;
  sub_100002D44(&qword_100144DE0, &qword_1000F9298);
  State.wrappedValue.getter();
  v23 = v58;
  v43 = v17;
  v22(v58);
  sub_10006B3EC(v23);
  sub_10006B40C(v2 + *(a1 + 52), v12);
  v24 = type metadata accessor for URLRequest();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v12, 1, v24) == 1)
  {
    sub_100007E14(v12, qword_100144D30, &qword_1000F9208);
    v26 = type metadata accessor for URL();
    v27 = v48;
    (*(*(v26 - 8) + 56))(v48, 1, 1, v26);
  }

  else
  {
    v27 = v48;
    URLRequest.url.getter();
    (*(v25 + 8))(v12, v24);
  }

  v28 = v42;
  v29 = v49;
  v30 = v51;
  (*(v42 + 16))(v49, v3, v51);
  v31 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v32 = swift_allocObject();
  v33 = *(v30 + 24);
  *(v32 + 16) = v14;
  *(v32 + 24) = v33;
  (*(v28 + 32))(v32 + v31, v29, v30);
  sub_10006B6C0();
  v34 = v52;
  static TaskPriority.userInitiated.getter();
  v35 = v41;
  v36 = v43;
  View.task<A>(id:priority:_:)();

  (*(v53 + 8))(v34, v54);
  sub_100007E14(v27, &unk_100144630, &qword_1000F5180);
  (*(v47 + 8))(v36, v14);
  v37 = sub_10006B79C();
  v56 = v33;
  v57 = v37;
  swift_getWitnessTable();
  v38 = v44;
  sub_1000B03E4();
  v39 = *(v50 + 8);
  v39(v35, v18);
  sub_1000B03E4();
  return (v39)(v38, v18);
}

uint64_t sub_10006AB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  sub_100002D44(qword_100144D30, &qword_1000F9208);
  v3[14] = swift_task_alloc();
  v4 = type metadata accessor for URLRequest();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[18] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[19] = v6;
  v3[20] = v5;

  return _swift_task_switch(sub_10006AC58, v6, v5);
}

uint64_t sub_10006AC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 120);
  v6 = *(v4 + 128);
  v7 = *(v4 + 112);
  v8 = *(v4 + 88);
  v9 = type metadata accessor for CachedAsyncImage(0, *(v4 + 96), *(v4 + 104), a4);
  sub_10006B40C(v8 + *(v9 + 44), v7);
  v10 = (*(v6 + 48))(v7, 1, v5);
  v11 = *(v4 + 112);
  v12 = *(v4 + 88);
  if (v10 == 1)
  {

    sub_100007E14(v11, qword_100144D30, &qword_1000F9208);
    *(v4 + 16) = *v12;
    *(v4 + 64) = 0x8000000000000008;
    sub_100002D44(&qword_100144DE0, &qword_1000F9298);
    State.wrappedValue.setter();

    v13 = *(v4 + 8);

    return v13();
  }

  else
  {
    (*(*(v4 + 128) + 32))(*(v4 + 136), *(v4 + 112), *(v4 + 120));
    *(v4 + 168) = *(v12 + *(v9 + 48));
    v15 = swift_task_alloc();
    *(v4 + 176) = v15;
    *v15 = v4;
    v15[1] = sub_10006AE28;
    v16 = *(v4 + 136);

    return NSURLSession.data(for:delegate:)(v16, 0);
  }
}

uint64_t sub_10006AE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[23] = a1;
  v6[24] = a2;
  v6[25] = a3;
  v6[26] = v3;

  v7 = v5[20];
  v8 = v5[19];
  if (v3)
  {
    v9 = sub_10006B2A4;
  }

  else
  {
    v9 = sub_10006AF70;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_10006AF70()
{

  v1 = objc_allocWithZone(UIImage);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v3 = [v1 initWithData:isa];

  if (v3)
  {
    v4 = *(v0 + 168);
    v5 = *(v0 + 88);
    v31 = *(v0 + 96);
    v6 = Image.init(uiImage:)();
    Transaction.animation.getter();
    v7 = swift_task_alloc();
    *(v7 + 16) = v31;
    *(v7 + 32) = v5;
    *(v7 + 40) = v6;
    withAnimation<A>(_:_:)();

    v8 = [v4 configuration];
    v9 = [v8 URLCache];

    v10 = *(v0 + 192);
    v11 = *(v0 + 200);
    v12 = *(v0 + 184);
    v14 = *(v0 + 128);
    v13 = *(v0 + 136);
    v15 = *(v0 + 120);
    if (v9)
    {
      v32 = *(v0 + 120);
      v16 = objc_allocWithZone(NSCachedURLResponse);
      v17 = v11;
      sub_10006B840(v12, v10);
      v18 = Data._bridgeToObjectiveC()().super.isa;
      v19 = [v16 initWithResponse:v17 data:v18];

      sub_10005B7AC(v12, v10);
      v20 = URLRequest._bridgeToObjectiveC()().super.isa;
      [v9 storeCachedResponse:v19 forRequest:v20];

      sub_10005B7AC(v12, v10);
      (*(v14 + 8))(v13, v32);
    }

    else
    {
      sub_10005B7AC(*(v0 + 184), *(v0 + 192));

      (*(v14 + 8))(v13, v15);
    }
  }

  else
  {
    v21 = *(v0 + 88);
    v22 = *v21;
    v23 = v21[1];
    *(v0 + 48) = *v21;
    v24 = *(v0 + 192);
    v25 = *(v0 + 200);
    v26 = *(v0 + 184);
    v27 = *(v0 + 128);
    v33 = *(v0 + 136);
    v28 = *(v0 + 120);
    *(v0 + 56) = v23;
    *(v0 + 80) = 0x8000000000000008;
    sub_10006B800(v22);

    sub_100002D44(&qword_100144DE0, &qword_1000F9298);
    State.wrappedValue.setter();
    sub_10005B7AC(v26, v24);

    sub_10006B3EC(v22);

    (*(v27 + 8))(v33, v28);
  }

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_10006B2A4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 88);

  *(v0 + 32) = *v5;
  *(v0 + 72) = v1 | 0x4000000000000000;
  sub_100002D44(&qword_100144DE0, &qword_1000F9298);
  State.wrappedValue.setter();
  (*(v4 + 8))(v2, v3);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10006B384(__int128 *a1, uint64_t a2)
{

  sub_100002D44(&qword_100144DE0, &qword_1000F9298);
  return State.wrappedValue.setter();
}

void sub_10006B3EC(unint64_t a1)
{
  if (a1 >> 62 == 1)
  {
  }

  else if (!(a1 >> 62))
  {
  }
}

uint64_t sub_10006B40C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(qword_100144D30, &qword_1000F9208);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006B47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CachedAsyncImage(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*(v5 - 8) + 64);
  v9 = v4 + v7;
  sub_10006B3EC(*(v4 + v7));

  v10 = *(v5 + 44);
  v11 = type metadata accessor for URLRequest();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v4 + v7 + v10, 1, v11))
  {
    (*(v12 + 8))(v9 + v10, v11);
  }

  return _swift_deallocObject(v4, v7 + v8, v6 | 7);
}

uint64_t sub_10006B5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for CachedAsyncImage(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_10000789C;

  return sub_10006AB28(v4 + v9, v6, v7);
}

unint64_t sub_10006B6C0()
{
  result = qword_100144DE8;
  if (!qword_100144DE8)
  {
    sub_100004370(&unk_100144630, &qword_1000F5180);
    sub_10006B744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144DE8);
  }

  return result;
}

unint64_t sub_10006B744()
{
  result = qword_100144DF0;
  if (!qword_100144DF0)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144DF0);
  }

  return result;
}

unint64_t sub_10006B79C()
{
  result = qword_100144DF8;
  if (!qword_100144DF8)
  {
    sub_100004370(&qword_100144DD8, &qword_1000F9290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144DF8);
  }

  return result;
}

unint64_t sub_10006B800(unint64_t result)
{
  if (result >> 62 == 1)
  {
    return swift_errorRetain();
  }

  if (!(result >> 62))
  {
  }

  return result;
}

uint64_t sub_10006B840(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10006B894(uint64_t *a1)
{
  sub_100004370(&qword_100144DD8, &qword_1000F9290);
  type metadata accessor for ModifiedContent();
  sub_10006B79C();
  return swift_getWitnessTable();
}

uint64_t value<A>(iOS:iPadOS:)(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(void))
{
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 1)
  {
    return a3();
  }

  else
  {
    return a1();
  }
}

uint64_t sub_10006B9C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Album();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10006BA44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Album();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for MusicKitAlbum(uint64_t a1)
{
  result = qword_100144E58;
  if (!qword_100144E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006BB00(uint64_t a1)
{
  result = type metadata accessor for Album();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10006BB6C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for EditorialVideoArtworkFlavor();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VideoArtwork();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Album();
  v10 = EditorialVideoArtworkVending.editorialVideoArtworks.getter();
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = v10;
  static EditorialVideoArtworkFlavor.motionDetailSquare.getter();
  if (!*(v11 + 16) || (v12 = sub_1000B8F18(v5), (v13 & 1) == 0))
  {

    (*(v3 + 8))(v5, v2);
LABEL_6:
    v14 = 1;
    goto LABEL_7;
  }

  (*(v7 + 16))(v9, *(v11 + 56) + *(v7 + 72) * v12, v6);
  (*(v3 + 8))(v5, v2);

  VideoArtwork.url.getter();
  (*(v7 + 8))(v9, v6);
  v14 = 0;
LABEL_7:
  v15 = type metadata accessor for URL();
  return (*(*(v15 - 8) + 56))(a1, v14, 1, v15);
}

uint64_t sub_10006BDA8(uint64_t (*a1)(void))
{
  v2 = sub_100002D44(&qword_100142D60, &qword_1000F6080);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  Album.artwork.getter();
  v5 = type metadata accessor for Artwork();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10006C2B8(v4);
  }

  else
  {
    v7 = a1();
    (*(v6 + 8))(v4, v5);
    if (v7)
    {
      [objc_allocWithZone(UIColor) initWithCGColor:v7];
      v8 = Color.init(uiColor:)();

      return v8;
    }
  }

  return 0;
}

uint64_t sub_10006BEF8()
{
  v0 = type metadata accessor for ArtworkUnavailableView();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ArtworkUnavailableView.init(placeholderImage:widthRatio:heightRatio:)();
  sub_100018120(&qword_100142D98, &type metadata accessor for ArtworkUnavailableView, &protocol conformance descriptor for ArtworkUnavailableView);
  View.accessibilityIdentifier(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10006C0B8()
{
  v0 = sub_100002D44(&qword_100142D60, &qword_1000F6080);
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for ArtworkImage();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002D44(&qword_100144E90, &qword_1000F92D8);
  __chkstk_darwin(v5);
  Album.artwork.getter();
  ArtworkImage.init(_:)();
  v6 = sub_100002D44(&qword_100142D90, &unk_1000F92E0);
  v7 = sub_100018034();
  ArtworkImage.artworkPlaceholder<A>(_:)();
  (*(v2 + 8))(v4, v1);
  v9[0] = v6;
  v9[1] = v7;
  swift_getOpaqueTypeConformance2();
  return AnyView.init<A>(_:)();
}

uint64_t sub_10006C2B8(uint64_t a1)
{
  v2 = sub_100002D44(&qword_100142D60, &qword_1000F6080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10006C320(void *a1@<X0>, char a2@<W2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AlertConfiguration.AlertSound();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100002D44(&qword_100142CC8, &unk_1000F6030);
  __chkstk_darwin(v7 - 8);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v51 - v11;
  v13 = type metadata accessor for LocalizedStringResource();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v51 - v18;
  __chkstk_darwin(v20);
  v24 = __chkstk_darwin(v21);
  if (a2)
  {
    if (a2 != 1)
    {
      v58 = a1;
      swift_errorRetain();
      sub_100002D44(&qword_100142F78, &unk_1000FACE0);
      sub_1000123E4(0, &qword_100144E98, NSError_ptr);
      if (swift_dynamicCast())
      {
        v25 = v57;
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;
        v29 = sub_10006CA70(&off_100134E20);
        sub_1000CD1A0(v26, v28, v29);
        v31 = v30;

        if (v31)
        {

          LocalizedStringResource.init(stringLiteral:)();
          LocalizedStringResource.init(stringLiteral:)();
          static AlertConfiguration.AlertSound.default.getter();
          AlertConfiguration.init(title:body:sound:)();

          return;
        }
      }

      else
      {
      }
    }

    goto LABEL_25;
  }

  v55 = &v51 - v22;
  v56 = a3;
  v52 = v23;
  v53 = v9;
  v32 = [a1 mediaItems];
  sub_1000123E4(0, &qword_100143088, SHMatchedMediaItem_ptr);
  v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v33 >> 62)
  {
    v34 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v34)
  {
LABEL_25:
    LocalizedStringResource.init(stringLiteral:)();
    LocalizedStringResource.init(stringLiteral:)();
    static AlertConfiguration.AlertSound.default.getter();
    AlertConfiguration.init(title:body:sound:)();
    return;
  }

  v35 = [a1 mediaItems];
  v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;
  if (!(v36 >> 62))
  {
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

LABEL_29:

    __break(1u);
    goto LABEL_30;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_29;
  }

LABEL_11:

  if ((v37 & 0xC000000000000001) == 0)
  {
    if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v38 = *(v37 + 32);
    goto LABEL_14;
  }

LABEL_30:
  v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_14:
  v39 = v38;

  v54 = v39;
  v40 = [v54 title];
  if (v40)
  {
    v41 = v40;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    LocalizedStringResource.init(stringLiteral:)();
    v42 = *(v14 + 56);
    v42(v12, 0, 1, v13);
    (*(v14 + 32))(v55, v12, v13);
  }

  else
  {
    v42 = *(v14 + 56);
    v42(v12, 1, 1, v13);
    LocalizedStringResource.init(stringLiteral:)();
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      sub_10006CB88(v12);
    }
  }

  v43 = v54;
  v44 = [v54 artist];

  if (v44)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v45 = v53;
    LocalizedStringResource.init(stringLiteral:)();
    v42(v45, 0, 1, v13);
    v46 = v52;
    (*(v14 + 32))(v52, v45, v13);
  }

  else
  {
    v47 = v53;
    v42(v53, 1, 1, v13);
    v46 = v52;
    LocalizedStringResource.init(stringLiteral:)();
    if ((*(v14 + 48))(v47, 1, v13) != 1)
    {
      sub_10006CB88(v47);
    }
  }

  v48 = *(v14 + 16);
  v49 = v55;
  v48(v19, v55, v13);
  v48(v16, v46, v13);
  static AlertConfiguration.AlertSound.default.getter();
  AlertConfiguration.init(title:body:sound:)();

  v50 = *(v14 + 8);
  v50(v46, v13);
  v50(v49, v13);
}

uint64_t sub_10006CA70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002D44(&qword_100144EA0, &qword_1000F9300);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = *(v6 + 8 * v4);
      result = static Hasher._hash(seed:_:)();
      v13 = result & v7;
      v14 = (result & v7) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v7);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v11)
        {
          v13 = (v13 + 1) & v7;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10006CB88(uint64_t a1)
{
  v2 = sub_100002D44(&qword_100142CC8, &unk_1000F6030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10006CBF0(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_100002D44(&qword_100144EB0, &unk_1000F9310);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = a1 & 0xC000000000000001;
  v19 = a1 + 32;
  v20 = a1 & 0xFFFFFFFFFFFFFF8;
  while (v21)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    type metadata accessor for AnyCancellable();
    sub_10006CF98(&qword_1001445A8, &protocol conformance descriptor for AnyCancellable);
    v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v11 = -1 << v3[32];
    v12 = v10 & ~v11;
    v13 = v12 >> 6;
    v14 = *&v7[8 * (v12 >> 6)];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_10006CF98(&qword_100144EB8, &protocol conformance descriptor for AnyCancellable);
      while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *&v7[8 * (v12 >> 6)];
        v15 = 1 << v12;
        if (((1 << v12) & v14) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v13] = v15 | v14;
      *(*(v3 + 6) + 8 * v12) = v8;
      v17 = *(v3 + 2);
      v9 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v18;
    }

    if (v6 == v5)
    {
      return;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

Swift::Int sub_10006CE5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002D44(&qword_100144EA8, &qword_1000F9308);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10006CF98(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnyCancellable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10006CFDC()
{
  v1 = *(v0 + 32);
  v16 = *(v0 + 48);
  v17 = v1;
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = type metadata accessor for AppStoreComponent.AppStoreCoordinator();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtCV16MusicRecognition17AppStoreComponent19AppStoreCoordinator_subtitle] = *(v0 + 32);
  sub_100002D44(&qword_100144F88, &qword_1000F9500);
  v8 = swift_allocObject();
  *(v8 + 32) = 0;
  *(v8 + 16) = v16;
  *&v7[OBJC_IVAR____TtCV16MusicRecognition17AppStoreComponent19AppStoreCoordinator_metricsQuery] = v8;
  if (v2)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v2;
    *(v9 + 24) = v3;
    v10 = sub_10006ECFC;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  sub_100002D44(&qword_100144F90, &qword_1000F9508);
  v11 = swift_allocObject();
  *(v11 + 32) = 0;
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  *&v7[OBJC_IVAR____TtCV16MusicRecognition17AppStoreComponent19AppStoreCoordinator_onOpen] = v11;
  v12 = &v7[OBJC_IVAR____TtCV16MusicRecognition17AppStoreComponent19AppStoreCoordinator_onStateChange];
  *v12 = v5;
  v12[1] = v4;
  sub_10006EBB4(&v17, v15);
  sub_10006EBB4(&v16, v15);
  sub_10002F7D4(v2, v3);
  sub_10002F7D4(v5, v4);
  v14.receiver = v7;
  v14.super_class = v6;
  return objc_msgSendSuper2(&v14, "init");
}

id sub_10006D150()
{
  v1 = v0;
  v2 = [objc_allocWithZone(ASCLockupView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  [v4 setBackgroundColor:v5];

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_100002D44(&qword_100144FA0, &qword_1000F9518);
  UIViewRepresentableContext.coordinator.getter();
  [v4 setDelegate:v14];

  v6 = objc_allocWithZone(ASCAdamID);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithStringValue:v7];

  v9 = ASCLockupKindApp;
  v10 = ASCLockupContextStandard;
  if (*(v1 + 24))
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_opt_self() _requestWithID:v8 kind:v9 context:v10 productVariantID:v11];

  [v4 setRequest:v12];
  return v4;
}

void sub_10006D320()
{
  v1 = *(v0 + OBJC_IVAR____TtCV16MusicRecognition17AppStoreComponent19AppStoreCoordinator_metricsQuery);
  os_unfair_lock_lock((v1 + 32));
  sub_10006EC24((v1 + 16));
  os_unfair_lock_unlock((v1 + 32));
  v2 = *(v0 + OBJC_IVAR____TtCV16MusicRecognition17AppStoreComponent19AppStoreCoordinator_onOpen);
  os_unfair_lock_lock((v2 + 32));
  sub_10006EC6C((v2 + 16));
  os_unfair_lock_unlock((v2 + 32));
}

uint64_t sub_10006D3BC(uint64_t (**a1)(), uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (v6)
  {
    sub_10006E8E4(v6, a1[1]);
  }

  if (a2)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a3;
    v8 = sub_10006ECFC;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a1 = v8;
  a1[1] = v7;
  return sub_10002F7D4(a2, a3);
}

void sub_10006D494(void *a1, void *a2)
{
  v44 = a1;
  v4 = sub_100002D44(&qword_100142818, &qword_1000F5860);
  __chkstk_darwin(v4 - 8);
  v6 = v42 - v5;
  v7 = type metadata accessor for TaskPriority();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v42[1] = v8 + 56;
  v43 = v9;
  v9(v6, 1, 1, v7);
  type metadata accessor for MainActor();
  v10 = v2;
  v11 = a2;
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v10;
  v13[5] = v11;
  sub_1000C8DF8(0, 0, v6, &unk_1000F9408, v13);

  v14 = *&v10[OBJC_IVAR____TtCV16MusicRecognition17AppStoreComponent19AppStoreCoordinator_onOpen];
  os_unfair_lock_lock((v14 + 32));
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = *(v14 + 24);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_10006ECF0;
    *(v18 + 24) = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_10006ECF0;
    *(v19 + 24) = v17;
    *(v14 + 16) = sub_10006ECFC;
    *(v14 + 24) = v19;

    os_unfair_lock_unlock((v14 + 32));
    v20 = swift_allocObject();
    *(v20 + 16) = sub_100064578;
    *(v20 + 24) = v18;
    v21 = sub_10006EA50;
  }

  else
  {
    os_unfair_lock_unlock((v14 + 32));
    v21 = 0;
    v20 = 0;
  }

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
  if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
  {
    goto LABEL_6;
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v26 & 1) == 0)
  {
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;
    if (v37 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v39 == v40)
    {
LABEL_6:

      goto LABEL_8;
    }

    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v41 & 1) == 0)
    {
      sub_10006E8E4(v21, v20);
      return;
    }
  }

LABEL_8:
  if (v15)
  {
    v27 = [objc_opt_self() mainBundle];
    v45._object = 0xE000000000000000;
    v28._object = 0x80000001001011D0;
    v28._countAndFlagsBits = 0xD000000000000026;
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    v45._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, v27, v29, v45);

    v30 = objc_opt_self();
    v31 = String._bridgeToObjectiveC()();

    v32 = [v30 textMetadataWithTitle:v31 subtitle:0];

    v43(v6, 1, 1, v7);
    v33 = v32;
    sub_10002F7D4(v21, v20);
    v34 = v44;
    v35 = static MainActor.shared.getter();
    v36 = swift_allocObject();
    v36[2] = v35;
    v36[3] = &protocol witness table for MainActor;
    v36[4] = v33;
    v36[5] = v21;
    v36[6] = v20;
    v36[7] = v34;
    sub_1000C8AF8(0, 0, v6, &unk_1000F9418, v36);

    sub_10006E8E4(v21, v20);
  }
}

uint64_t sub_10006D958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006D9F4, v7, v6);
}

uint64_t sub_10006D9F4()
{
  v1 = *(v0 + 24);

  v2 = *(v1 + OBJC_IVAR____TtCV16MusicRecognition17AppStoreComponent19AppStoreCoordinator_onStateChange);
  if (v2)
  {
    v2(*(v0 + 32));
  }

  **(v0 + 16) = v2 == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10006DA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  type metadata accessor for MainActor();
  v7[12] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006DB28, v9, v8);
}

uint64_t sub_10006DB28()
{
  v1 = v0[11];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];

  v5 = objc_allocWithZone(ASCLocalOffer);
  v0[6] = v3;
  v0[7] = v2;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000C1C84;
  v0[5] = &unk_100137790;
  v6 = _Block_copy(v0 + 2);

  v7 = [v5 initWithMetadata:v4 action:v6];
  _Block_release(v6);
  v8 = [v1 lockup];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 lockupWithOffer:v7];
  }

  else
  {
    v10 = 0;
  }

  [v0[11] setLockup:v10];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10006DD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006DDB8, v8, v7);
}

uint64_t sub_10006DDB8()
{
  v1 = v0;
  v2 = *(v0 + 16);

  v3 = [v2 lockup];
  if (v3)
  {
    v4 = v3;
    v29 = [v3 id];
    v28 = [v4 kind];
    v27 = [v4 metrics];
    v26 = [v4 icon];
    v5 = [v4 heading];
    if (v5)
    {
      v6 = v5;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = [v4 title];
    if (v9)
    {
      v10 = v9;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = [v4 ageRating];
    if (v13)
    {
      v14 = v13;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v1 = v0;
    }

    else
    {
      v16 = 0;
    }

    v17 = [v4 offer];
    if (v8)
    {
      v25 = String._bridgeToObjectiveC()();

      if (v12)
      {
LABEL_13:
        v24 = String._bridgeToObjectiveC()();

LABEL_16:
        v18 = String._bridgeToObjectiveC()();
        if (v16)
        {
          v19 = String._bridgeToObjectiveC()();
        }

        else
        {
          v19 = 0;
        }

        v23 = *(v1 + 16);
        v20 = [objc_allocWithZone(ASCLockup) initWithID:v29 kind:v28 metrics:v27 icon:v26 heading:v25 title:v24 subtitle:v18 ageRating:v19 offer:v17];
        swift_unknownObjectRelease();

        [v23 setLockup:v20];
        goto LABEL_20;
      }
    }

    else
    {
      v25 = 0;
      if (v12)
      {
        goto LABEL_13;
      }
    }

    v24 = 0;
    goto LABEL_16;
  }

LABEL_20:
  v21 = *(v1 + 8);

  return v21();
}

void sub_10006E23C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  if (v3)
  {
    v4 = *a1;
    sub_100002D44(&qword_100144F68, &qword_1000F93D8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000F57C0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v6;
    *(inited + 48) = v4;
    *(inited + 56) = v3;

    sub_1000D5660(inited);
    swift_setDeallocating();
    sub_10006E664(inited + 32);
    v7 = objc_allocWithZone(ASCMetricsActivity);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v9 = [v7 initWithFields:isa];
  }

  else
  {
    v9 = [objc_allocWithZone(ASCMetricsActivity) init];
  }

  *a2 = v9;
}

uint64_t sub_10006E4B4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_10006E4D0()
{
  sub_100002D44(&qword_100144FA0, &qword_1000F9518);
  UIViewRepresentableContext.coordinator.getter();
  sub_10006D320();
}

id sub_10006E54C@<X0>(void *a1@<X8>)
{
  result = sub_10006CFDC();
  *a1 = result;
  return result;
}

uint64_t sub_10006E574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10006EC88(a1, a2, a3);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10006E5D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10006EC88(a1, a2, a3);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10006E63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10006EC88(a1, a2, a3);
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_10006E664(uint64_t a1)
{
  v2 = sub_100002D44(&unk_100144F70, &unk_1000F93E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006E6CC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10006E714(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100012EC8;

  return sub_10006DD1C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10006E7DC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006E824(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000789C;

  return sub_10006D958(a1, v4, v5, v7, v6);
}

double sub_10006E8E4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_10006E8F4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10006E944(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100012EC8;

  return sub_10006DA8C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10006EA18()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006EA78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_10006EA90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_10006EAAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_10006EAF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10006EB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100144F80;
  if (!qword_100144F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144F80);
  }

  return result;
}

uint64_t sub_10006EBB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100144F98, &qword_1000F9510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006EC24(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  *a1 = v4;
  a1[1] = v3;
}

unint64_t sub_10006EC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100144FA8;
  if (!qword_100144FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100144FA8);
  }

  return result;
}

uint64_t sub_10006ED14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ShazamUpsellViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_100002D44(&qword_1001421C0, &unk_1000F5330);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_10006EE64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ShazamUpsellViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    v11 = sub_100002D44(&qword_1001421C0, &unk_1000F5330);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for ShazamUpsellView(uint64_t a1)
{
  result = qword_100145098;
  if (!qword_100145098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006EFE0(uint64_t a1)
{
  type metadata accessor for ShazamUpsellViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_100008ADC(319);
    if (v2 <= 0x3F)
    {
      sub_10006F07C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10006F07C(uint64_t a1)
{
  if (!qword_100142248)
  {
    type metadata accessor for OpenURLAction();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_100142248);
    }
  }
}

uint64_t sub_10006F0F0(uint64_t a1)
{
  result = static Font.footnote.getter();
  qword_100145010 = result;
  return result;
}

uint64_t sub_10006F130()
{
  result = static Color.secondary.getter();
  qword_100145020 = result;
  return result;
}

uint64_t sub_10006F150()
{
  result = static Color.secondary.getter();
  qword_100145028 = result;
  return result;
}

uint64_t sub_10006F170(uint64_t a1)
{
  result = static Font.subheadline.getter();
  qword_100145030 = result;
  return result;
}

uint64_t sub_10006F1B0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v149 = a2;
  v3 = type metadata accessor for ShazamUpsellView(0);
  v146 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v147 = v4;
  v148 = &v133 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v145 = &v133 - v6;
  v150 = sub_100002D44(&qword_100143CA0, &unk_1000F7850);
  __chkstk_darwin(v150);
  v168 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v167 = &v133 - v9;
  v152 = type metadata accessor for ShazamUpsellViewModel(0);
  v10 = *(v152 + 28);
  v169 = a1;
  v11 = (a1 + v10);
  v12 = v11[1];
  v194 = *v11;
  v195 = v12;
  sub_10000B730(v152, v13, v14);

  v15 = Text.init<A>(_:)();
  v17 = v16;
  v19 = v18;
  if (qword_100141B58 != -1)
  {
    swift_once();
  }

  v20 = Text.font(_:)();
  v22 = v21;
  v24 = v23;
  sub_10000BFBC(v15, v17, v19 & 1);

  if (qword_100141B68 != -1)
  {
    swift_once();
  }

  v194 = qword_100145020;

  v25 = Text.foregroundStyle<A>(_:)();
  v27 = v26;
  v29 = v28;
  sub_10000BFBC(v20, v22, v24 & 1);

  if (qword_100141B60 != -1)
  {
    swift_once();
  }

  v30 = Text.fontWeight(_:)();
  v164 = v31;
  v165 = v30;
  v33 = v32;
  v166 = v34;
  sub_10000BFBC(v25, v27, v29 & 1);

  v163 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v161 = v36;
  v162 = v35;
  v159 = v38;
  v160 = v37;
  v158 = v33 & 1;
  LOBYTE(v194) = v33 & 1;
  LOBYTE(v188) = 0;

  v39 = Text.init(_:tableName:bundle:comment:)();
  v41 = v40;
  v43 = v42;
  static Font.title2.getter();
  v44 = Text.font(_:)();
  v46 = v45;
  v48 = v47;

  sub_10000BFBC(v39, v41, v43 & 1);

  v194 = static Color.primary.getter();
  v49 = Text.foregroundStyle<A>(_:)();
  v51 = v50;
  v53 = v52;
  sub_10000BFBC(v44, v46, v48 & 1);

  static Font.Weight.bold.getter();
  v54 = Text.fontWeight(_:)();
  v155 = v55;
  v156 = v54;
  LOBYTE(v39) = v56;
  v157 = v57;
  sub_10000BFBC(v49, v51, v53 & 1);

  v154 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v143 = v59;
  v144 = v58;
  v141 = v61;
  v142 = v60;
  v153 = v39 & 1;
  LOBYTE(v194) = v39 & 1;
  LOBYTE(v188) = 0;

  v62 = Text.init(_:tableName:bundle:comment:)();
  v64 = v63;
  v66 = v65;
  if (qword_100141B78 != -1)
  {
    swift_once();
  }

  v67 = Text.font(_:)();
  v69 = v68;
  v71 = v70;
  sub_10000BFBC(v62, v64, v66 & 1);

  if (qword_100141B80 != -1)
  {
    swift_once();
  }

  v72 = Text.fontWeight(_:)();
  v74 = v73;
  v76 = v75;
  sub_10000BFBC(v67, v69, v71 & 1);

  if (qword_100141B70 != -1)
  {
    swift_once();
  }

  v194 = qword_100145028;

  v77 = Text.foregroundStyle<A>(_:)();
  v136 = v77;
  v151 = v78;
  v152 = v79;
  v81 = v80;
  sub_10000BFBC(v72, v74, v76 & 1);

  v82 = static Edge.Set.bottom.getter();
  v83 = v82;
  v135 = v82;
  EdgeInsets.init(_all:)();
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v137 = v90;
  v91 = v81 & 1;
  LOBYTE(v194) = v81 & 1;
  v134 = v81 & 1;
  LOBYTE(v188) = 0;
  v92 = v167;
  Divider.init()();
  v93 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v94 = v92 + *(v150 + 36);
  *v94 = v93;
  *(v94 + 8) = v95;
  *(v94 + 16) = v96;
  *(v94 + 24) = v97;
  *(v94 + 32) = v98;
  *(v94 + 40) = 0;
  v99 = v169;
  v100 = *v169;
  v150 = v169[1];
  v101 = v169[3];
  v139 = v169[2];
  v140 = v100;
  v138 = v101;
  v102 = v145;
  sub_1000704E4(v169, v145);
  v103 = (*(v146 + 80) + 16) & ~*(v146 + 80);
  v146 = swift_allocObject();
  sub_10007054C(v102, v146 + v103);
  v104 = v99;
  v105 = v148;
  sub_1000704E4(v104, v148);
  v169 = swift_allocObject();
  sub_10007054C(v105, v169 + v103);
  v106 = v92;
  v107 = v168;
  sub_100007FDC(v106, v168, &qword_100143CA0, &unk_1000F7850);
  *&v176 = v165;
  *(&v176 + 1) = v164;
  LOBYTE(v177) = v158;
  *(&v177 + 1) = *v175;
  DWORD1(v177) = *&v175[3];
  *(&v177 + 1) = v166;
  LOBYTE(v178) = v163;
  *(&v178 + 1) = *v174;
  DWORD1(v178) = *&v174[3];
  *(&v178 + 1) = v162;
  *&v179[0] = v161;
  *(&v179[0] + 1) = v160;
  *&v179[1] = v159;
  BYTE8(v179[1]) = 0;
  v108 = v176;
  v109 = v177;
  v110 = v149;
  *(v149 + 57) = *(v179 + 9);
  v111 = v179[0];
  v110[2] = v178;
  v110[3] = v111;
  *v110 = v108;
  v110[1] = v109;
  *&v180 = v156;
  *(&v180 + 1) = v155;
  LOBYTE(v181) = v153;
  DWORD1(v181) = *(v173 + 3);
  *(&v181 + 1) = v173[0];
  *(&v181 + 1) = v157;
  LOBYTE(v182) = v154;
  DWORD1(v182) = *&v172[3];
  *(&v182 + 1) = *v172;
  v113 = v143;
  v112 = v144;
  *(&v182 + 1) = v144;
  *&v183[0] = v143;
  v115 = v141;
  v114 = v142;
  *(&v183[0] + 1) = v142;
  *&v183[1] = v141;
  BYTE8(v183[1]) = 0;
  v116 = v180;
  v117 = v181;
  *(v110 + 137) = *(v183 + 9);
  v118 = v183[0];
  v110[7] = v182;
  v110[8] = v118;
  v110[5] = v116;
  v110[6] = v117;
  *&v184 = v77;
  *(&v184 + 1) = v151;
  LOBYTE(v185) = v91;
  DWORD1(v185) = *(v171 + 3);
  *(&v185 + 1) = v171[0];
  *(&v185 + 1) = v152;
  LOBYTE(v186) = v83;
  DWORD1(v186) = *&v170[3];
  *(&v186 + 1) = *v170;
  *(&v186 + 1) = v85;
  *&v187[0] = v87;
  *(&v187[0] + 1) = v89;
  v119 = v137;
  *&v187[1] = v137;
  BYTE8(v187[1]) = 0;
  v120 = v184;
  v121 = v185;
  *(v110 + 217) = *(v187 + 9);
  v122 = v187[0];
  v110[12] = v186;
  v110[13] = v122;
  v110[10] = v120;
  v110[11] = v121;
  v123 = sub_100002D44(&qword_100145100, &qword_1000F95B0);
  sub_100007FDC(v107, v110 + *(v123 + 80), &qword_100143CA0, &unk_1000F7850);
  v124 = (v110 + *(v123 + 96));
  v125 = v139;
  v126 = v140;
  *&v188 = v140;
  *(&v188 + 1) = v150;
  *&v189 = v139;
  v127 = v138;
  *(&v189 + 1) = v138;
  v190 = 0u;
  v191 = 0u;
  *&v192 = sub_1000705B0;
  v128 = v146;
  *(&v192 + 1) = v146;
  *&v193 = sub_100070868;
  v129 = v169;
  *(&v193 + 1) = v169;
  v124[2] = 0u;
  v124[3] = 0u;
  v130 = v193;
  v124[4] = v192;
  v124[5] = v130;
  v131 = v189;
  *v124 = v188;
  v124[1] = v131;

  sub_100007FDC(&v176, &v194, &qword_1001435C8, &qword_1000F6D70);
  sub_100007FDC(&v180, &v194, &qword_1001435C8, &qword_1000F6D70);
  sub_100007FDC(&v184, &v194, &qword_1001435C8, &qword_1000F6D70);
  sub_1000708D8(&v188, &v194);
  sub_100007E14(v167, &qword_100143CA0, &unk_1000F7850);
  v194 = v126;
  v195 = v150;
  v196 = v125;
  v197 = v127;
  v198 = 0u;
  v199 = 0u;
  v200 = sub_1000705B0;
  v201 = v128;
  v202 = sub_100070868;
  v203 = v129;
  sub_100070934(&v194);
  sub_100007E14(v168, &qword_100143CA0, &unk_1000F7850);
  v204[0] = v136;
  v204[1] = v151;
  v205 = v134;
  *v206 = v171[0];
  *&v206[3] = *(v171 + 3);
  v207 = v152;
  v208 = v135;
  *v209 = *v170;
  *&v209[3] = *&v170[3];
  v210 = v85;
  v211 = v87;
  v212 = v89;
  v213 = v119;
  v214 = 0;
  sub_100007E14(v204, &qword_1001435C8, &qword_1000F6D70);
  v215[0] = v156;
  v215[1] = v155;
  v216 = v153;
  *v217 = v173[0];
  *&v217[3] = *(v173 + 3);
  v218 = v157;
  v219 = v154;
  *v220 = *v172;
  *&v220[3] = *&v172[3];
  v221 = v112;
  v222 = v113;
  v223 = v114;
  v224 = v115;
  v225 = 0;
  sub_100007E14(v215, &qword_1001435C8, &qword_1000F6D70);
  v226[0] = v165;
  v226[1] = v164;
  v227 = v158;
  *v228 = *v175;
  *&v228[3] = *&v175[3];
  v229 = v166;
  v230 = v163;
  *v231 = *v174;
  *&v231[3] = *&v174[3];
  v232 = v162;
  v233 = v161;
  v234 = v160;
  v235 = v159;
  v236 = 0;
  return sub_100007E14(v226, &qword_1001435C8, &qword_1000F6D70);
}

void sub_10006FEF8(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ShazamUpsellViewModel(0);
  sub_100007FDC(a1 + *(v13 + 40), v8, &unk_100144630, &qword_1000F5180);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100007E14(v8, &unk_100144630, &qword_1000F5180);
    if (qword_100141A70 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000BEC4(v14, qword_10014FEA0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Could not open shazam app from appstore component", v17, 2u);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    type metadata accessor for ShazamUpsellView(0);
    sub_100041144(v5);
    OpenURLAction.callAsFunction(_:)();
    (*(v3 + 8))(v5, v2);
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_10007020C(uint64_t a1, uint64_t a2)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      return result;
    }
  }

  result = type metadata accessor for ShazamUpsellView(0);
  v10 = (a2 + *(result + 20));
  if (*v10)
  {
    return (*v10)();
  }

  return result;
}

uint64_t sub_1000702CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100002D44(&qword_1001450D8, &qword_1000F9590);
  __chkstk_darwin(v3);
  v5 = &v28 - v4;
  *v5 = static HorizontalAlignment.leading.getter();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = sub_100002D44(&qword_1001450E0, &qword_1000F9598);
  sub_10006F1B0(v1, &v5[*(v6 + 44)]);
  sub_100070480();
  View.accessibilityIdentifier(_:)();
  sub_100007E14(v5, &qword_1001450D8, &qword_1000F9590);
  v7 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = a1 + *(sub_100002D44(&qword_1001450F0, &qword_1000F95A0) + 36);
  *v16 = v7;
  *(v16 + 8) = v9;
  *(v16 + 16) = v11;
  *(v16 + 24) = v13;
  *(v16 + 32) = v15;
  *(v16 + 40) = 0;
  v17 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  result = sub_100002D44(&qword_1001450F8, &qword_1000F95A8);
  v27 = a1 + *(result + 36);
  *v27 = v17;
  *(v27 + 8) = v19;
  *(v27 + 16) = v21;
  *(v27 + 24) = v23;
  *(v27 + 32) = v25;
  *(v27 + 40) = 0;
  return result;
}

unint64_t sub_100070480()
{
  result = qword_1001450E8;
  if (!qword_1001450E8)
  {
    sub_100004370(&qword_1001450D8, &qword_1000F9590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001450E8);
  }

  return result;
}

uint64_t sub_1000704E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShazamUpsellView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007054C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShazamUpsellView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000705B0()
{
  v1 = *(type metadata accessor for ShazamUpsellView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_10006FEF8(v2);
}

uint64_t sub_100070610()
{
  v1 = type metadata accessor for ShazamUpsellView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v14 = *(*(v1 - 8) + 64);
  v15 = v0;
  v4 = v0 + v3;

  v5 = type metadata accessor for ShazamUpsellViewModel(0);
  v6 = *(v5 + 24);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v10 = *(v5 + 40);
  if (!v9(v4 + v10, 1, v7))
  {
    (*(v8 + 8))(v4 + v10, v7);
  }

  if (*(v4 + *(v1 + 20)))
  {
  }

  v11 = *(v1 + 24);
  sub_100002D44(&qword_1001422A0, &unk_1000F53E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for OpenURLAction();
    (*(*(v12 - 8) + 8))(v4 + v11, v12);
  }

  else
  {
  }

  return _swift_deallocObject(v15, v3 + v14, v2 | 7);
}

uint64_t sub_100070868(uint64_t a1)
{
  v3 = *(type metadata accessor for ShazamUpsellView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10007020C(a1, v4);
}

uint64_t sub_1000709FC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100004370(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100070A80()
{
  result = qword_100145118;
  if (!qword_100145118)
  {
    sub_100004370(qword_100145120, &qword_1000F95B8);
    sub_100070480();
    sub_100058CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145118);
  }

  return result;
}

uint64_t sub_100070B10(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100070BEC@<X0>(uint64_t a1@<X8>)
{
  v8 = *(*v1 + 80);
  KeyPath = swift_getKeyPath();
  sub_100070CC8(KeyPath, v4, v5);

  v6 = *(*v1 + 96);
  swift_beginAccess();
  return (*(*(v8 - 8) + 16))(a1, v1 + v6);
}

uint64_t sub_100070D68(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 96);
  swift_beginAccess();
  (*(*(*(v4 + 80) - 8) + 24))(&a1[v5], a2);
  return swift_endAccess();
}

uint64_t sub_100070EFC()
{
  sub_1000714B0();
}

double sub_100070F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + *(*v4 + 104));
  v7 = type metadata accessor for LibraryListViewModel(0, *(*v4 + 80), *(*v4 + 88), a4);
  if (v6 == a1)
  {
  }

  else
  {
    __chkstk_darwin(v7);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v11[2] = v4;
    v11[3] = a1;
    sub_100070E24(v9, sub_1000718F8, v11, &type metadata for () + 8);
  }

  return result;
}

uint64_t sub_100071084(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v9 - v5;
  sub_100070BEC(&v9 - v5);
  v7 = (*(*(v2 + 88) + 16))(v3);
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t sub_1000711B0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v8 - v5;
  sub_100070BEC(&v8 - v5);
  LOBYTE(v2) = (*(*(v2 + 88) + 32))(v3);
  (*(v4 + 8))(v6, v3);
  return v2 & 1;
}

uint64_t sub_1000712B8()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  v1 = *(*v0 + 112);
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_100071398()
{
  sub_1000712B8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

double sub_100071408(uint64_t a1)
{
  v8 = *(*v1 + 80);
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_100070E24(KeyPath, sub_100071868, &v5, &type metadata for () + 8);

  return result;
}

uint64_t sub_1000714B0()
{
  KeyPath = swift_getKeyPath();
  sub_100070CC8(KeyPath, v2, v3);

  return *(v0 + *(*v0 + 104));
}

uint64_t sub_100071538(unsigned __int8 a1, unsigned __int8 a2)
{
  v4 = type metadata accessor for MusicSubscription();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002D44(&qword_100142FA0, &qword_1000F9620);
  __chkstk_darwin(v8 - 8);
  v10 = v16 - v9;
  if (qword_100141D20 != -1)
  {
    swift_once();
  }

  v11 = qword_10014FF90;
  swift_getKeyPath();
  v16[1] = v11;
  sub_10005B1D0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = OBJC_IVAR____TtC16MusicRecognition33MusicSubscriptionStatusController__musicSubscription;
  swift_beginAccess();
  sub_10005B228(v11 + v12, v10);
  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_1000717A0(v10);
    v13 = 0;
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_1000717A0(v10);
    v14 = MusicSubscription.canPlayCatalogContent.getter();
    (*(v5 + 8))(v7, v4);
    if (v14)
    {
      v13 = 0x10000;
    }

    else
    {
      v13 = 0;
    }
  }

  return sub_1000C3900(v13 | a1 | (a2 << 8), 0xD000000000000028, 0x80000001000FF5D0);
}

uint64_t sub_1000717A0(uint64_t a1)
{
  v2 = sub_100002D44(&qword_100142FA0, &qword_1000F9620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_10007185C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_100071884@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1000714B0();
}

void sub_1000718F8()
{
  *(*(v0 + 16) + *(**(v0 + 16) + 104)) = *(v0 + 24);
}

uint64_t sub_10007194C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100071994(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100071A00()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_1001451A8 = result;
  unk_1001451B0 = v1;
  byte_1001451B8 = v2 & 1;
  qword_1001451C0 = v3;
  return result;
}

uint64_t sub_100071A48(double a1)
{
  result = static Solarium.isEnabled.getter();
  v2 = 10.0;
  if (result)
  {
    v2 = 16.0;
  }

  qword_1001451C8 = *&v2;
  return result;
}

uint64_t sub_100071A78()
{
  v0 = [objc_opt_self() secondarySystemBackgroundColor];
  result = Color.init(uiColor:)();
  qword_1001451D0 = result;
  return result;
}

uint64_t sub_100071AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = a4;
  v56 = a5;
  v8 = sub_100002D44(&qword_1001451E0, &qword_1000F9770);
  __chkstk_darwin(v8 - 8);
  v10 = &v50 - v9;
  v11 = sub_100002D44(&qword_1001451E8, &qword_1000F9778);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v50 - v13;
  v53 = sub_100002D44(&qword_1001451F0, &qword_1000F9780);
  __chkstk_darwin(v53);
  v16 = &v50 - v15;
  v54 = sub_100002D44(&qword_1001451F8, &qword_1000F9788);
  __chkstk_darwin(v54);
  v55 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v50 - v19;
  __chkstk_darwin(v21);
  v52 = &v50 - v22;
  v23 = sub_100002D44(&qword_100143B50, &qword_1000F9790);
  __chkstk_darwin(v23 - 8);
  v51 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v50 - v26;
  v28 = a3;
  v29 = v50;
  sub_100072060(&v50 - v26);
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v30 = sub_100002D44(&qword_100145200, &qword_1000F9798);
  sub_100072350(a1, a2, v28, v29, &v10[*(v30 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10002F250(v10, v14, &qword_1001451E0, &qword_1000F9770);
  v31 = &v14[*(v12 + 44)];
  v32 = v62;
  *(v31 + 4) = v61;
  *(v31 + 5) = v32;
  *(v31 + 6) = v63;
  v33 = v58;
  *v31 = v57;
  *(v31 + 1) = v33;
  v34 = v60;
  *(v31 + 2) = v59;
  *(v31 + 3) = v34;
  if (qword_100141B98 != -1)
  {
    swift_once();
  }

  v35 = qword_1001451D0;
  v36 = static Edge.Set.all.getter();
  sub_10002F250(v14, v16, &qword_1001451E8, &qword_1000F9778);
  v37 = &v16[*(v53 + 36)];
  *v37 = v35;
  v37[8] = v36;
  v38 = qword_100141B90;

  if (v38 != -1)
  {
    swift_once();
  }

  v39 = qword_1001451C8;
  v40 = &v20[*(v54 + 36)];
  v41 = *(type metadata accessor for RoundedRectangle() + 20);
  v42 = enum case for RoundedCornerStyle.continuous(_:);
  v43 = type metadata accessor for RoundedCornerStyle();
  (*(*(v43 - 8) + 104))(v40 + v41, v42, v43);
  *v40 = v39;
  v40[1] = v39;
  *(v40 + *(sub_100002D44(&qword_100143758, &qword_1000F97A0) + 36)) = 256;
  sub_10002F250(v16, v20, &qword_1001451F0, &qword_1000F9780);
  v44 = v52;
  sub_10002F250(v20, v52, &qword_1001451F8, &qword_1000F9788);
  v45 = v51;
  sub_100007FDC(v27, v51, &qword_100143B50, &qword_1000F9790);
  v46 = v55;
  sub_100007FDC(v44, v55, &qword_1001451F8, &qword_1000F9788);
  v47 = v56;
  sub_100007FDC(v45, v56, &qword_100143B50, &qword_1000F9790);
  v48 = sub_100002D44(&qword_100145208, &qword_1000F97A8);
  sub_100007FDC(v46, v47 + *(v48 + 48), &qword_1001451F8, &qword_1000F9788);
  sub_100007E14(v44, &qword_1001451F8, &qword_1000F9788);
  sub_100007E14(v27, &qword_100143B50, &qword_1000F9790);
  sub_100007E14(v46, &qword_1001451F8, &qword_1000F9788);
  return sub_100007E14(v45, &qword_100143B50, &qword_1000F9790);
}

uint64_t sub_100072060@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = type metadata accessor for AccessibilityTraits();
  v26 = *(v1 - 8);
  v27 = v1;
  __chkstk_darwin(v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100002D44(&qword_100143B50, &qword_1000F9790);
  __chkstk_darwin(v25);
  v24 = &v23 - v4;
  if (qword_100141B88 != -1)
  {
    swift_once();
  }

  v5 = Text.init(_:tableName:bundle:comment:)();
  v7 = v6;
  v9 = v8;
  static Font.title2.getter();
  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;

  sub_10000BFBC(v5, v7, v9 & 1);

  static Font.Weight.bold.getter();
  v15 = Text.fontWeight(_:)();
  v17 = v16;
  LOBYTE(v5) = v18;
  v20 = v19;
  sub_10000BFBC(v10, v12, v14 & 1);

  v29 = v15;
  v30 = v17;
  v31 = v5 & 1;
  v32 = v20;
  static AccessibilityTraits.isHeader.getter();
  v21 = v24;
  View.accessibilityAddTraits(_:)();
  (*(v26 + 8))(v3, v27);
  sub_10000BFBC(v15, v17, v5 & 1);

  ModifiedContent<>.accessibilityIdentifier(_:)();
  return sub_100007E14(v21, &qword_100143B50, &qword_1000F9790);
}

uint64_t sub_100072350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a5;
  v9 = sub_100002D44(&qword_100145210, &qword_1000F97B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v45[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v45[-v13];
  v49 = &v45[-v13];
  sub_100072754(a1, a2, a3, a4, &v45[-v13]);
  v76 = a3;
  v77 = a4;
  sub_100002D44(&qword_100145218, &qword_1000F97B8);
  State.wrappedValue.getter();
  v15 = LocationViewModel.address.getter();
  v53 = v16;
  v54 = v15;

  v76 = a1;
  v77 = a2;
  sub_100002D44(&qword_100145220, &qword_1000F97C0);
  State.wrappedValue.getter();
  v17 = *(v63 + 56);
  v47 = *(v63 + 48);
  v18 = v47;
  v51 = v17;

  v76 = a1;
  v77 = a2;
  State.wrappedValue.getter();
  v19 = *(v63 + 32);
  v50 = *(v63 + 24);
  v20 = v19;
  v48 = v19;

  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = a3;
  v21[5] = a4;

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v22 = static Edge.Set.all.getter();
  LOBYTE(a4) = v22;
  v46 = v22;
  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v97 = 0;
  v52 = v11;
  sub_100007FDC(v14, v11, &qword_100145210, &qword_1000F97B0);
  v31 = v11;
  v32 = v55;
  sub_100007FDC(v31, v55, &qword_100145210, &qword_1000F97B0);
  v33 = (v32 + *(sub_100002D44(&qword_100145228, &qword_1000F97C8) + 48));
  v35 = v50;
  v34 = v51;
  *&v63 = v18;
  *(&v63 + 1) = v51;
  *&v64 = v50;
  *(&v64 + 1) = v20;
  v37 = v53;
  v36 = v54;
  *&v65 = v54;
  *(&v65 + 1) = v53;
  *&v66 = sub_100072CC0;
  *(&v66 + 1) = v21;
  v71 = v60;
  v72 = v61;
  v73 = v62;
  v67 = v56;
  v68 = v57;
  v69 = v58;
  v70 = v59;
  LOBYTE(v74) = a4;
  *(&v74 + 1) = v24;
  *&v75[0] = v26;
  *(&v75[0] + 1) = v28;
  *&v75[1] = v30;
  BYTE8(v75[1]) = 0;
  v38 = v57;
  v33[4] = v56;
  v33[5] = v38;
  v39 = v66;
  v33[2] = v65;
  v33[3] = v39;
  v40 = v72;
  v33[8] = v71;
  v33[9] = v40;
  v41 = v70;
  v33[6] = v69;
  v33[7] = v41;
  v42 = v64;
  *v33 = v63;
  v33[1] = v42;
  *(v33 + 201) = *(v75 + 9);
  v43 = v75[0];
  v33[11] = v74;
  v33[12] = v43;
  v33[10] = v73;
  sub_100007FDC(&v63, &v76, &qword_100145230, &qword_1000F97D0);
  sub_100007E14(v49, &qword_100145210, &qword_1000F97B0);
  v76 = v47;
  v77 = v34;
  v78 = v35;
  v79 = v48;
  v80 = v36;
  v81 = v37;
  v82 = sub_100072CC0;
  v83 = v21;
  v88 = v60;
  v89 = v61;
  v90 = v62;
  v84 = v56;
  v85 = v57;
  v86 = v58;
  v87 = v59;
  v91 = v46;
  v92 = v24;
  v93 = v26;
  v94 = v28;
  v95 = v30;
  v96 = 0;
  sub_100007E14(&v76, &qword_100145230, &qword_1000F97D0);
  return sub_100007E14(v52, &qword_100145210, &qword_1000F97B0);
}

uint64_t sub_100072754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a2;
  v29 = a5;
  v8 = type metadata accessor for AccessibilityChildBehavior();
  v27 = *(v8 - 8);
  v28 = v8;
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002D44(&qword_100145238, &qword_1000F97D8);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v14 = sub_100002D44(&qword_100145240, &qword_1000F97E0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v24 - v16;
  v26 = sub_100002D44(&qword_100145210, &qword_1000F97B0);
  __chkstk_darwin(v26);
  v19 = &v24 - v18;
  *&v32 = a3;
  *(&v32 + 1) = a4;
  sub_100002D44(&qword_100145218, &qword_1000F97B8);
  State.wrappedValue.getter();
  *&v32 = a1;
  *(&v32 + 1) = v25;
  sub_100002D44(&qword_100145220, &qword_1000F97C0);
  State.wrappedValue.getter();

  LocationView.init(viewModel:strokeColor:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v20 = &v13[*(v11 + 36)];
  v21 = v33;
  *v20 = v32;
  *(v20 + 1) = v21;
  *(v20 + 2) = v34;
  static AccessibilityChildBehavior.combine.getter();
  v22 = sub_100072CCC();
  View.accessibilityElement(children:)();
  (*(v27 + 8))(v10, v28);
  sub_100007E14(v13, &qword_100145238, &qword_1000F97D8);
  v30 = v11;
  v31 = v22;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();
  (*(v15 + 8))(v17, v14);
  ModifiedContent<>.accessibilityHidden(_:)();
  return sub_100007E14(v19, &qword_100145210, &qword_1000F97B0);
}

uint64_t sub_100072AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100002D44(&qword_100145220, &qword_1000F97C0);
  State.wrappedValue.getter();
  sub_100002D44(&qword_100145218, &qword_1000F97B8);
  State.wrappedValue.getter();
  v4 = LocationViewModel.location.getter();

  [v4 coordinate];
  v6 = v5;
  v8 = v7;

  State.wrappedValue.getter();
  v9 = LocationViewModel.address.getter();
  v11 = v10;

  sub_1000B2AEC(v6, v8, v9, v11);
}

uint64_t sub_100072BF8@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v8 = sub_100002D44(&qword_1001451D8, &qword_1000F9768);
  return sub_100071AB8(v4, v5, v7, v6, a2 + *(v8 + 44));
}

uint64_t sub_100072C70()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100072CCC()
{
  result = qword_100145248;
  if (!qword_100145248)
  {
    sub_100004370(&qword_100145238, &qword_1000F97D8);
    sub_100072D58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145248);
  }

  return result;
}

unint64_t sub_100072D58()
{
  result = qword_100145250;
  if (!qword_100145250)
  {
    type metadata accessor for LocationView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145250);
  }

  return result;
}

unint64_t sub_100072DB4()
{
  result = qword_100145258;
  if (!qword_100145258)
  {
    sub_100004370(&qword_100145260, &qword_1000F97E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145258);
  }

  return result;
}

uint64_t sub_100072E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100072F0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002D44(&unk_100144630, &qword_1000F5180);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for AnyArtist(uint64_t a1)
{
  result = qword_1001452C0;
  if (!qword_1001452C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100073020(uint64_t a1)
{
  sub_1000085D0(319);
  if (v1 <= 0x3F)
  {
    sub_1000730A4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1000730A4()
{
  result = qword_1001452D0;
  if (!qword_1001452D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1001452D0);
  }

  return result;
}

uint64_t sub_100073108(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  return (*(v4 + 16))(v3, v4);
}

uint64_t sub_100073160(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  return (*(v4 + 24))(v3, v4);
}

uint64_t sub_1000731B8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  return (*(v4 + 32))(v3, v4);
}

uint64_t sub_100073218(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  return (*(v4 + 40))(v3, v4);
}

uint64_t sub_100073270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 20));
  v7 = v6[3];
  v8 = v6[4];
  sub_10000DC80(v6, v7);
  return (*(v8 + 48))(a1, a2, v7, v8);
}

uint64_t sub_1000732E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 20));
  v7 = v6[3];
  v8 = v6[4];
  sub_10000DC80(v6, v7);
  return (*(v8 + 56))(a1, a2, v7, v8);
}

void sub_100073358()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v2 < 0.0 || v2 > 1.0)
  {
    v1 = sub_100073500();
    swift_getKeyPath();
    swift_getKeyPath();
    if (v1)
    {
      static Published.subscript.getter();

      if (v2 <= 1.0)
      {
        return;
      }

      swift_getKeyPath();
      swift_getKeyPath();
    }

    static Published.subscript.setter();
    sub_100073358();
  }
}

double sub_10007348C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

BOOL sub_100073500()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v1 < 0.0)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return (~*&v1 & 0x7FF0000000000000) != 0 || (*&v1 & 0xFFFFFFFFFFFFFLL) == 0;
}

uint64_t sub_1000735E4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_100073658(double a1, double a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  sub_100073358();
}

uint64_t sub_100073720()
{
  v1 = OBJC_IVAR____TtC16MusicRecognition27SongPreviewStatusController__progress;
  v2 = sub_100002D44(&qword_1001453E0, &qword_1000F9980);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MusicRecognition27SongPreviewStatusController__playbackStatus;
  v4 = sub_100002D44(&qword_1001453E8, &qword_1000F9988);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t type metadata accessor for SongPreviewStatusController(uint64_t a1)
{
  result = qword_100145338;
  if (!qword_100145338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100073868(uint64_t a1)
{
  sub_100073950(319, &qword_100145348, &type metadata for Double);
  if (v1 <= 0x3F)
  {
    sub_100073950(319, &unk_100145350, &type metadata for SongPreviewStatusController.PlaybackStatus);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100073950(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1000739B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001453D8;
  if (!qword_1001453D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001453D8);
  }

  return result;
}

uint64_t sub_100073A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100002D44(&qword_1001421C0, &unk_1000F5330);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100073AF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_100002D44(&qword_1001421C0, &unk_1000F5330);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ContextMenuForSubscribedUserView(uint64_t a1)
{
  result = qword_100145458;
  if (!qword_100145458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100073BF4(uint64_t a1)
{
  sub_100008ADC(319);
  if (v1 <= 0x3F)
  {
    sub_100073CF0(319, &unk_100145468, type metadata accessor for ContextMenuForSubscribedUserViewModel, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      sub_100073CF0(319, &qword_100142248, &type metadata accessor for OpenURLAction, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100073CF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100073D70()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0xE000000000000000;
  v1._object = 0x8000000100101320;
  v1._countAndFlagsBits = 0xD000000000000016;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_1001453F0 = v3;
}

uint64_t sub_100073E14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v89 = a1;
  v82 = type metadata accessor for URL();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v79 = v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ContextMenuForSubscribedUserView(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v73 = v6;
  v7 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_100002D44(&qword_1001454A0, &qword_1000F9A10);
  v75 = *(v74 - 8);
  __chkstk_darwin(v74);
  v68 = v62 - v8;
  v94 = sub_100002D44(&qword_1001454A8, &qword_1000F9A18);
  v76 = *(v94 - 8);
  __chkstk_darwin(v94);
  v93 = v62 - v9;
  v77 = sub_100002D44(&qword_1001454B0, &qword_1000F9A20);
  v78 = *(v77 - 8);
  __chkstk_darwin(v77);
  v95 = v62 - v10;
  v80 = sub_100002D44(&qword_1001454B8, &qword_1000F9A28);
  v85 = *(v80 - 8);
  __chkstk_darwin(v80);
  v96 = v62 - v11;
  v86 = sub_100002D44(&qword_1001454C0, &qword_1000F9A30);
  v87 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = v62 - v12;
  v88 = sub_100002D44(&qword_1001454C8, &qword_1000F9A38);
  __chkstk_darwin(v88);
  v83 = v62 - v13;
  v70 = v7;
  v69 = type metadata accessor for ContextMenuForSubscribedUserView;
  sub_100079C54(v1, v7, type metadata accessor for ContextMenuForSubscribedUserView);
  v72 = *(v5 + 80);
  v14 = (v72 + 16) & ~v72;
  v71 = v14;
  v15 = swift_allocObject();
  sub_100079BEC(v7, v15 + v14, type metadata accessor for ContextMenuForSubscribedUserView);
  v98 = v2;
  sub_100002D44(&qword_1001422A8, &unk_1000FCA20);
  sub_100002D44(&qword_1001454D0, &unk_1000F9A40);
  v16 = sub_100004370(&qword_1001422B8, &qword_1000F53F8);
  *&v99 = &type metadata for Image;
  *(&v99 + 1) = &protocol witness table for Image;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v99 = v16;
  *(&v99 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_100004610(&qword_1001454D8, &qword_1001454D0, &unk_1000F9A40, &protocol conformance descriptor for TupleView<A>);
  Menu.init(onPresentationChanged:content:label:)();
  v63 = LocalizedStringKey.init(_:)();
  v62[3] = v18;
  v92 = *(v2 + 16);
  v91 = *(v2 + 24);
  v65 = v2;
  *&v107 = v92;
  *(&v107 + 1) = v91;
  v90 = sub_100002D44(&qword_1001454E0, &qword_1000F9A50);
  State.projectedValue.getter();
  v19 = v99;
  v20 = v100;
  swift_getKeyPath();
  v99 = v19;
  v100 = v20;
  v67 = sub_100002D44(&qword_1001454E8, &qword_1000F9A80);
  Binding.subscript.getter();

  v97 = v2;
  v64 = sub_100002D44(&qword_1001454F0, &qword_1000F9A88);
  v66 = sub_100004610(&qword_1001454F8, &qword_1001454A0, &qword_1000F9A10, &protocol conformance descriptor for Menu<A, B>);
  v21 = sub_1000794B0();
  v22 = v74;
  v23 = v68;
  View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:message:)();

  (*(v75 + 8))(v23, v22);
  *&v107 = v92;
  *(&v107 + 1) = v91;
  State.projectedValue.getter();
  v24 = v99;
  v25 = v100;
  swift_getKeyPath();
  v107 = v24;
  v108 = v25;
  Binding.subscript.getter();

  v26 = v70;
  v27 = v69;
  sub_100079C54(v65, v70, v69);
  v28 = v71;
  v29 = swift_allocObject();
  sub_100079BEC(v26, v29 + v28, v27);
  v73 = sub_100002D44(&qword_100145518, &qword_1000F9AC0);
  *&v99 = v22;
  *(&v99 + 1) = v64;
  v100 = &type metadata for Text;
  v101 = v66;
  v102 = v21;
  v103 = &protocol witness table for Text;
  v74 = swift_getOpaqueTypeConformance2();
  v75 = sub_100004610(&qword_100145520, &qword_100145518, &qword_1000F9AC0, &protocol conformance descriptor for NavigationView<A>);
  v30 = v94;
  v31 = v93;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v76 + 8))(v31, v30);
  v32 = v92;
  v33 = v91;
  *&v107 = v92;
  *(&v107 + 1) = v91;
  State.projectedValue.getter();
  v34 = v99;
  v35 = v100;
  swift_getKeyPath();
  v107 = v34;
  v108 = v35;
  Binding.subscript.getter();

  *&v99 = v32;
  *(&v99 + 1) = v33;
  State.wrappedValue.getter();
  v36 = v81;
  v37 = v79;
  v38 = v82;
  (*(v81 + 16))(v79, v106 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_shazamURL, v82);

  *&v99 = v94;
  *(&v99 + 1) = v73;
  v100 = v74;
  v101 = v75;
  v61 = swift_getOpaqueTypeConformance2();
  v39 = v77;
  v40 = v95;
  View.sharingPicker(isPresented:item:subject:message:)();

  (*(v36 + 8))(v37, v38);
  v41 = v40;
  v42 = v39;
  (*(v78 + 8))(v41, v39);
  Solarium.init()();
  v43 = sub_100002D44(&qword_100145528, &qword_1000F9AF0);
  v44 = sub_100002D44(&qword_100145530, &qword_1000F9AF8);
  *&v99 = v42;
  *(&v99 + 1) = v61;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = type metadata accessor for PlainButtonStyle();
  v47 = sub_1000796DC(&qword_1001422F0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v48 = v80;
  *&v99 = v80;
  *(&v99 + 1) = v46;
  v100 = v45;
  v101 = v47;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = type metadata accessor for NavigationBarButtonStyle(255);
  v51 = sub_1000796DC(&qword_1001422F8, type metadata accessor for NavigationBarButtonStyle, &unk_1000F6A9C);
  *&v99 = v48;
  *(&v99 + 1) = v50;
  v100 = v45;
  v101 = v51;
  v60 = swift_getOpaqueTypeConformance2();
  v52 = v84;
  v53 = v96;
  View.staticIf<A, B, C>(_:then:else:)();
  (*(v85 + 8))(v53, v48);
  *&v99 = v48;
  *(&v99 + 1) = &type metadata for Solarium;
  v100 = v43;
  v101 = v44;
  v54 = v83;
  v102 = v45;
  v103 = &protocol witness table for Solarium;
  v104 = v49;
  v105 = v60;
  swift_getOpaqueTypeConformance2();
  v55 = v86;
  View.accessibilityIdentifier(_:)();
  v56 = (*(v87 + 8))(v52, v55);
  if (qword_100141BA0 != -1)
  {
    v56 = swift_once();
  }

  v99 = xmmword_1001453F0;
  sub_10000B730(v56, v57, v58);
  ModifiedContent<>.accessibilityLabel<A>(_:)();
  return sub_100007E14(v54, &qword_1001454C8, &qword_1000F9A38);
}

uint64_t sub_100074D7C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v37 = a2;
  v36 = sub_100002D44(&qword_100142320, &qword_1000F9BA0);
  v41 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v34 = &v30 - v5;
  __chkstk_darwin(v6);
  v40 = &v30 - v7;
  __chkstk_darwin(v8);
  v39 = &v30 - v9;
  v10 = sub_100002D44(&qword_100145548, &qword_1000F9BA8);
  v32 = *(v10 - 8);
  v11 = v32;
  v33 = v10;
  __chkstk_darwin(v10);
  v38 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  LocalizedStringKey.init(_:)();
  v44 = a1;
  sub_100002D44(&qword_100145550, &unk_1000F9BB0);
  sub_100004610(&qword_100145558, &qword_100145550, &unk_1000F9BB0, &protocol conformance descriptor for TupleView<A>);
  v31 = v15;
  Section<>.init(_:content:)();
  v43 = a1;
  sub_100002D44(&qword_100142328, &unk_1000F54C0);
  sub_10000B804();
  v16 = v39;
  Section<>.init(content:)();
  v42 = a1;
  v17 = v40;
  Section<>.init(content:)();
  v18 = *(v11 + 16);
  v19 = v38;
  v20 = v33;
  v18(v38, v15, v33);
  v21 = *(v41 + 16);
  v22 = v34;
  v23 = v36;
  v21(v34, v16, v36);
  v24 = v35;
  v21(v35, v17, v23);
  v25 = v37;
  v18(v37, v19, v20);
  v26 = sub_100002D44(&qword_100145560, &unk_1000F9BC8);
  v21(&v25[*(v26 + 48)], v22, v23);
  v21(&v25[*(v26 + 64)], v24, v23);
  v27 = *(v41 + 8);
  v27(v40, v23);
  v27(v39, v23);
  v28 = *(v32 + 8);
  v28(v31, v20);
  v27(v24, v23);
  v27(v22, v23);
  return (v28)(v38, v20);
}

uint64_t sub_100075200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = sub_100002D44(&qword_100145568, &qword_1000F9BD8);
  v75 = *(v3 - 8);
  v76 = v3;
  __chkstk_darwin(v3);
  v74 = &v70 - v4;
  v5 = sub_100002D44(&qword_100145570, &unk_1000F9BE0);
  __chkstk_darwin(v5 - 8);
  v80 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v89 = &v70 - v8;
  v9 = type metadata accessor for ContextMenuForSubscribedUserView(0);
  v82 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v90 = v10;
  v84 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002D44(&qword_100142340, &qword_1000F9BC0);
  v86 = *(v11 - 8);
  v87 = v11;
  __chkstk_darwin(v11);
  v85 = &v70 - v12;
  v72 = sub_100002D44(&qword_100142328, &unk_1000F54C0);
  v13 = *(v72 - 8);
  __chkstk_darwin(v72);
  v79 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v78 = &v70 - v16;
  __chkstk_darwin(v17);
  v77 = &v70 - v18;
  __chkstk_darwin(v19);
  v88 = &v70 - v20;
  v21 = sub_100002D44(&qword_100144658, &unk_1000F87E0);
  __chkstk_darwin(v21 - 8);
  v23 = &v70 - v22;
  v24 = type metadata accessor for StreamingService(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v27 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v70 - v29;
  v31 = sub_100002D44(&qword_100145578, &unk_1000F9BF0);
  __chkstk_darwin(v31 - 8);
  v73 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v91 = &v70 - v34;
  v35 = *(a1 + 16);
  v36 = *(a1 + 24);
  v83 = a1;
  v93 = v35;
  v94 = v36;
  sub_100002D44(&qword_1001454E0, &qword_1000F9A50);
  State.wrappedValue.getter();
  sub_100007FDC(v92 + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel_classicalProvider, v23, &qword_100144658, &unk_1000F87E0);

  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_100007E14(v23, &qword_100144658, &unk_1000F87E0);
    v37 = 1;
    v38 = v91;
  }

  else
  {
    v39 = v30;
    sub_100079BEC(v23, v30, type metadata accessor for StreamingService);
    v40 = v83;
    v71 = v13;
    v41 = v84;
    sub_100079C54(v83, v84, type metadata accessor for ContextMenuForSubscribedUserView);
    sub_100079C54(v39, v27, type metadata accessor for StreamingService);
    v42 = (v82[80] + 16) & ~v82[80];
    v43 = (v90 + *(v25 + 80) + v42) & ~*(v25 + 80);
    v44 = swift_allocObject();
    v13 = v71;
    sub_100079BEC(v41, v44 + v42, type metadata accessor for ContextMenuForSubscribedUserView);
    v45 = sub_100079BEC(v27, v44 + v43, type metadata accessor for StreamingService);
    __chkstk_darwin(v45);
    *(&v70 - 2) = v40;
    *(&v70 - 1) = v39;
    sub_100002D44(&qword_100141F68, &unk_1000F4E80);
    sub_100004610(&qword_100141F60, &qword_100141F68, &unk_1000F4E80, &protocol conformance descriptor for Label<A, B>);
    v46 = v85;
    Button.init(action:label:)();
    sub_100004610(&qword_100142338, &qword_100142340, &qword_1000F9BC0, &protocol conformance descriptor for Button<A>);
    v48 = v87;
    v47 = v88;
    View.accessibilityIdentifier(_:)();
    (*(v86 + 8))(v46, v48);
    sub_10000BEFC(v39, type metadata accessor for StreamingService);
    v49 = v91;
    sub_10007A05C(v47, v91);
    v37 = 0;
    v38 = v49;
  }

  (*(v13 + 56))(v38, v37, 1, v72);
  v50 = v83;
  v51 = v84;
  sub_100079C54(v83, v84, type metadata accessor for ContextMenuForSubscribedUserView);
  v52 = (v82[80] + 16) & ~v82[80];
  v53 = swift_allocObject();
  sub_100079BEC(v51, v53 + v52, type metadata accessor for ContextMenuForSubscribedUserView);
  sub_100002D44(&qword_100143A78, &qword_1000F7450);
  v82 = &protocol conformance descriptor for Label<A, B>;
  sub_100004610(&qword_100143A98, &qword_100143A78, &qword_1000F7450, &protocol conformance descriptor for Label<A, B>);
  v54 = v74;
  Button.init(action:label:)();
  sub_100004610(&qword_100145580, &qword_100145568, &qword_1000F9BD8, &protocol conformance descriptor for Button<A>);
  v55 = v89;
  v56 = v76;
  View.accessibilityIdentifier(_:)();
  (*(v75 + 8))(v54, v56);
  v57 = v88;
  sub_100075DD8(v88);
  sub_100079C54(v50, v51, type metadata accessor for ContextMenuForSubscribedUserView);
  v58 = swift_allocObject();
  sub_100079BEC(v51, v58 + v52, type metadata accessor for ContextMenuForSubscribedUserView);
  sub_100002D44(&qword_100141F68, &unk_1000F4E80);
  sub_100004610(&qword_100141F60, &qword_100141F68, &unk_1000F4E80, v82);
  v59 = v85;
  Button.init(action:label:)();
  sub_100004610(&qword_100142338, &qword_100142340, &qword_1000F9BC0, &protocol conformance descriptor for Button<A>);
  v60 = v77;
  v61 = v87;
  View.accessibilityIdentifier(_:)();
  (*(v86 + 8))(v59, v61);
  v62 = v73;
  sub_100007FDC(v91, v73, &qword_100145578, &unk_1000F9BF0);
  v63 = v55;
  v64 = v80;
  sub_100079B7C(v63, v80);
  v65 = v78;
  sub_100007FDC(v57, v78, &qword_100142328, &unk_1000F54C0);
  v66 = v79;
  sub_100007FDC(v60, v79, &qword_100142328, &unk_1000F54C0);
  v67 = v81;
  sub_100007FDC(v62, v81, &qword_100145578, &unk_1000F9BF0);
  v68 = sub_100002D44(&qword_100145588, &qword_1000F9C00);
  sub_100079B7C(v64, v67 + v68[12]);
  sub_100007FDC(v65, v67 + v68[16], &qword_100142328, &unk_1000F54C0);
  sub_100007FDC(v66, v67 + v68[20], &qword_100142328, &unk_1000F54C0);
  sub_100007E14(v60, &qword_100142328, &unk_1000F54C0);
  sub_100007E14(v57, &qword_100142328, &unk_1000F54C0);
  sub_100007E14(v89, &qword_100145570, &unk_1000F9BE0);
  sub_100007E14(v91, &qword_100145578, &unk_1000F9BF0);
  sub_100007E14(v66, &qword_100142328, &unk_1000F54C0);
  sub_100007E14(v65, &qword_100142328, &unk_1000F54C0);
  sub_100007E14(v64, &qword_100145570, &unk_1000F9BE0);
  return sub_100007E14(v62, &qword_100145578, &unk_1000F9BF0);
}

uint64_t sub_100075DD8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v3 = type metadata accessor for ContextMenuForSubscribedUserView(0);
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_100002D44(&qword_100143C20, &qword_1000F7680);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_100002D44(&qword_100142340, &qword_1000F9BC0);
  v25 = *(v8 - 8);
  v26 = v8;
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = *(v1 + 16);
  v23 = *(v1 + 24);
  v24 = v11;
  v29 = v11;
  v30 = v23;
  sub_100002D44(&qword_1001454E0, &qword_1000F9A50);
  State.wrappedValue.getter();
  v12 = v28;
  swift_getKeyPath();
  v29 = v12;
  sub_1000796DC(&qword_100145540, type metadata accessor for ContextMenuForSubscribedUserViewModel, &unk_1000FEB10);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v12 + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel__isSongInLibrary);

  if (v13 == 1)
  {
    static ButtonRole.destructive.getter();
  }

  else
  {
    static ButtonRole.cancel.getter();
  }

  v14 = type metadata accessor for ButtonRole();
  (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  sub_100079C54(v2, &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContextMenuForSubscribedUserView);
  v15 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v16 = swift_allocObject();
  v17 = sub_100079BEC(&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for ContextMenuForSubscribedUserView);
  __chkstk_darwin(v17);
  *(&v21 - 2) = v2;
  sub_100002D44(&qword_100141F68, &unk_1000F4E80);
  sub_100004610(&qword_100141F60, &qword_100141F68, &unk_1000F4E80, &protocol conformance descriptor for Label<A, B>);
  Button.init(role:action:label:)();
  v29 = v24;
  v30 = v23;
  State.wrappedValue.getter();
  v18 = v28;
  swift_getKeyPath();
  v29 = v18;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100004610(&qword_100142338, &qword_100142340, &qword_1000F9BC0, &protocol conformance descriptor for Button<A>);
  v19 = v26;
  View.accessibilityIdentifier(_:)();

  return (*(v25 + 8))(v10, v19);
}

uint64_t sub_100076288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for ContextMenuForSubscribedUserView(0);
  v26 = *(v3 - 8);
  v25 = *(v26 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002D44(&qword_100142340, &qword_1000F9BC0);
  v7 = *(v6 - 8);
  v28 = v6;
  v29 = v7;
  __chkstk_darwin(v6);
  v27 = &v24 - v8;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v24 - v14;
  v16 = *(a1 + 24);
  v32 = *(a1 + 16);
  v33 = v16;
  sub_100002D44(&qword_1001454E0, &qword_1000F9A50);
  State.wrappedValue.getter();
  v17 = *(v10 + 16);
  v17(v15, v31 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_shazamAppStoreURL, v9);

  sub_100079C54(a1, v5, type metadata accessor for ContextMenuForSubscribedUserView);
  v17(v12, v15, v9);
  v18 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v19 = (v25 + *(v10 + 80) + v18) & ~*(v10 + 80);
  v20 = swift_allocObject();
  sub_100079BEC(v5, v20 + v18, type metadata accessor for ContextMenuForSubscribedUserView);
  (*(v10 + 32))(v20 + v19, v12, v9);
  sub_100002D44(&qword_100141F68, &unk_1000F4E80);
  sub_100004610(&qword_100141F60, &qword_100141F68, &unk_1000F4E80, &protocol conformance descriptor for Label<A, B>);
  v21 = v27;
  Button.init(action:label:)();
  sub_100004610(&qword_100142338, &qword_100142340, &qword_1000F9BC0, &protocol conformance descriptor for Button<A>);
  v22 = v28;
  View.accessibilityIdentifier(_:)();
  (*(v29 + 8))(v21, v22);
  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_10007668C@<X0>(uint64_t a1@<X8>)
{
  v19[0] = a1;
  v2 = type metadata accessor for ContextMenuForSubscribedUserView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_100002D44(&qword_100142340, &qword_1000F9BC0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - v7;
  v9 = sub_100002D44(&qword_100142328, &unk_1000F54C0);
  __chkstk_darwin(v9);
  v11 = v19 - v10;
  sub_100079C54(v1, v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContextMenuForSubscribedUserView);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_100079BEC(v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for ContextMenuForSubscribedUserView);
  sub_100002D44(&qword_100141F68, &unk_1000F4E80);
  sub_100004610(&qword_100141F60, &qword_100141F68, &unk_1000F4E80, &protocol conformance descriptor for Label<A, B>);
  Button.init(action:label:)();
  sub_100004610(&qword_100142338, &qword_100142340, &qword_1000F9BC0, &protocol conformance descriptor for Button<A>);
  View.accessibilityIdentifier(_:)();
  (*(v6 + 8))(v8, v5);
  LocalizedStringKey.init(_:)();
  v14 = Text.init(_:tableName:bundle:comment:)();
  v16 = v15;
  LOBYTE(v4) = v17;
  ModifiedContent<>.accessibilityLabel(_:)();
  sub_10000BFBC(v14, v16, v4 & 1);

  return sub_100007E14(v11, &qword_100142328, &unk_1000F54C0);
}

uint64_t sub_100076A0C@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = type metadata accessor for SymbolVariants();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v13 - v6;
  v8 = sub_100002D44(&qword_1001422B8, &qword_1000F53F8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v13 - v10;
  v14 = Image.init(systemName:)();
  if (static Solarium.isEnabled.getter())
  {
    static SymbolVariants.none.getter();
  }

  else
  {
    static SymbolVariants.circle.getter();
    SymbolVariants.fill.getter();
    (*(v2 + 8))(v4, v1);
  }

  View.symbolVariant(_:)();
  (*(v2 + 8))(v7, v1);

  static Font.Weight.regular.getter();
  v14 = &type metadata for Image;
  v15 = &protocol witness table for Image;
  swift_getOpaqueTypeConformance2();
  View.fontWeight(_:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100076CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for ContextMenuForSubscribedUserView(0);
  v19 = *(v3 - 8);
  v4 = *(v19 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_100002D44(&qword_100143C20, &qword_1000F7680);
  __chkstk_darwin(v5 - 8);
  v7 = v18 - v6;
  v8 = sub_100002D44(&qword_100145510, &qword_1000F9A90);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - v10;
  v12 = LocalizedStringKey.init(_:)();
  v18[0] = v13;
  v18[1] = v12;
  static ButtonRole.destructive.getter();
  v14 = type metadata accessor for ButtonRole();
  (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  sub_100079C54(a1, v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContextMenuForSubscribedUserView);
  v15 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v16 = swift_allocObject();
  sub_100079BEC(v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for ContextMenuForSubscribedUserView);
  Button<>.init(_:role:action:)();
  sub_100004610(&qword_100145508, &qword_100145510, &qword_1000F9A90, &protocol conformance descriptor for Button<A>);
  View.accessibilityIdentifier(_:)();
  return (*(v9 + 8))(v11, v8);
}

double sub_100076FAC(uint64_t a1)
{
  v2 = type metadata accessor for ContextMenuForSubscribedUserView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002D44(&qword_100142818, &qword_1000F5860);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_100079C54(a1, v5, type metadata accessor for ContextMenuForSubscribedUserView);
  type metadata accessor for MainActor();
  v10 = static MainActor.shared.getter();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_100079BEC(v5, v12 + v11, type metadata accessor for ContextMenuForSubscribedUserView);
  sub_1000C8AF8(0, 0, v8, &unk_1000F9B98, v12);

  return result;
}

uint64_t sub_100077180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_100077218, v6, v5);
}

uint64_t sub_100077218()
{
  v1 = v0[5];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v0[2] = v3;
  v0[3] = v2;
  sub_100002D44(&qword_1001454E0, &qword_1000F9A50);
  State.wrappedValue.getter();
  v0[9] = v0[4];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1000772DC;

  return sub_1000CB5DC();
}

uint64_t sub_1000772DC()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_10007A850, v3, v2);
}

uint64_t sub_100077420@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(_:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

void sub_1000774AC(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1000796DC(&qword_100145540, type metadata accessor for ContextMenuForSubscribedUserViewModel, &unk_1000FEB10);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a4 = *(v6 + *a3);
}

uint64_t sub_100077588(uint64_t a1)
{
  type metadata accessor for AddToPlaylistView(0);
  sub_1000796DC(&qword_100145538, type metadata accessor for AddToPlaylistView, &unk_1000F6B94);
  return NavigationView.init(content:)();
}

void sub_10007761C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for ContextMenuForSubscribedUserView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = *(a1 + 24);
  v15 = *(a1 + 16);
  v16 = v7;
  sub_100002D44(&qword_1001454E0, &qword_1000F9A50);
  State.wrappedValue.getter();
  v8 = *(v14 + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel_musicLibraryController);

  sub_100079C54(a1, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContextMenuForSubscribedUserView);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_100079BEC(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for ContextMenuForSubscribedUserView);
  v11 = *(type metadata accessor for AddToPlaylistView(0) + 20);
  *(a2 + v11) = swift_getKeyPath();
  sub_100002D44(&qword_1001422A0, &unk_1000F53E0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AddToPlaylistViewModel(0);
  swift_allocObject();

  v14 = sub_100065B00(v8, sub_10007969C, v10);
  State.init(wrappedValue:)();

  v12 = v16;
  *a2 = v15;
  a2[1] = v12;
}

double sub_10007782C(uint64_t a1)
{
  sub_100002D44(&qword_1001454E0, &qword_1000F9A50);
  State.wrappedValue.getter();
  if (*(v3 + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel__addToPlaylistSheetPresented) == 1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000796DC(&qword_100145540, type metadata accessor for ContextMenuForSubscribedUserViewModel, &unk_1000FEB10);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel__addToPlaylistSheetPresented) = 0;
  }

  return result;
}

void sub_10007797C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000796DC(&qword_100142308, type metadata accessor for ContextMenuViewModel, &unk_1000FEB10);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel__shareSheetFromOverflow);
}

uint64_t sub_100077A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[2] = a2;
  v16[3] = a1;
  v2 = type metadata accessor for PlainButtonStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  PlainButtonStyle.init()();
  v16[1] = sub_100002D44(&qword_1001454B8, &qword_1000F9A28);
  v16[0] = sub_100004370(&qword_1001454B0, &qword_1000F9A20);
  v6 = sub_100004370(&qword_1001454A8, &qword_1000F9A18);
  v7 = sub_100004370(&qword_100145518, &qword_1000F9AC0);
  v8 = sub_100004370(&qword_1001454A0, &qword_1000F9A10);
  v9 = sub_100004370(&qword_1001454F0, &qword_1000F9A88);
  v10 = sub_100004610(&qword_1001454F8, &qword_1001454A0, &qword_1000F9A10, &protocol conformance descriptor for Menu<A, B>);
  v11 = sub_1000794B0();
  v17 = v8;
  v18 = v9;
  v19 = &type metadata for Text;
  v20 = v10;
  v21 = v11;
  v22 = &protocol witness table for Text;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = sub_100004610(&qword_100145520, &qword_100145518, &qword_1000F9AC0, &protocol conformance descriptor for NavigationView<A>);
  v17 = v6;
  v18 = v7;
  v19 = OpaqueTypeConformance2;
  v20 = v13;
  v14 = swift_getOpaqueTypeConformance2();
  v17 = v16[0];
  v18 = v14;
  swift_getOpaqueTypeConformance2();
  sub_1000796DC(&qword_1001422F0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  View.buttonStyle<A>(_:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100077CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v18 = a1;
  v16 = type metadata accessor for NavigationBarButtonStyle(0);
  __chkstk_darwin(v16);
  v3 = (&v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v3 = swift_getKeyPath();
  sub_100002D44(&qword_1001420C8, &qword_1000F7A10);
  swift_storeEnumTagMultiPayload();
  v15 = sub_100002D44(&qword_1001454B8, &qword_1000F9A28);
  v4 = sub_100004370(&qword_1001454B0, &qword_1000F9A20);
  v5 = sub_100004370(&qword_1001454A8, &qword_1000F9A18);
  v6 = sub_100004370(&qword_100145518, &qword_1000F9AC0);
  v7 = sub_100004370(&qword_1001454A0, &qword_1000F9A10);
  v8 = sub_100004370(&qword_1001454F0, &qword_1000F9A88);
  v9 = sub_100004610(&qword_1001454F8, &qword_1001454A0, &qword_1000F9A10, &protocol conformance descriptor for Menu<A, B>);
  v10 = sub_1000794B0();
  v19 = v7;
  v20 = v8;
  v21 = &type metadata for Text;
  v22 = v9;
  v23 = v10;
  v24 = &protocol witness table for Text;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = sub_100004610(&qword_100145520, &qword_100145518, &qword_1000F9AC0, &protocol conformance descriptor for NavigationView<A>);
  v19 = v5;
  v20 = v6;
  v21 = OpaqueTypeConformance2;
  v22 = v12;
  v13 = swift_getOpaqueTypeConformance2();
  v19 = v4;
  v20 = v13;
  swift_getOpaqueTypeConformance2();
  sub_1000796DC(&qword_1001422F8, type metadata accessor for NavigationBarButtonStyle, &unk_1000F6A9C);
  View.buttonStyle<A>(_:)();
  return sub_10000BEFC(v3, type metadata accessor for NavigationBarButtonStyle);
}

double sub_100077FA4(uint64_t a1)
{
  v16 = type metadata accessor for URL();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OpenURLAction();
  v5 = *(v15 - 8);
  __chkstk_darwin(v15);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 24);
  v18 = *(a1 + 16);
  v9 = v18;
  v19 = v8;
  sub_100002D44(&qword_1001454E0, &qword_1000F9A50);
  State.wrappedValue.getter();
  v10 = v17;
  type metadata accessor for ContextMenuForSubscribedUserView(0);
  sub_100041144(v7);
  v18 = v9;
  v19 = v8;
  State.wrappedValue.getter();
  v11 = v16;
  (*(v2 + 16))(v4, v17 + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel_songCampaignURL, v16);

  OpenURLAction.callAsFunction(_:)();
  (*(v2 + 8))(v4, v11);
  (*(v5 + 8))(v7, v15);
  if (*(v10 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_member))
  {
    v12 = 66305;
  }

  else
  {
    v12 = 769;
  }

  sub_1000C3900(v12, 0xD000000000000028, 0x80000001000FF5D0);

  return result;
}

uint64_t sub_1000781F0()
{
  sub_100002D44(&qword_1001422B8, &qword_1000F53F8);
  swift_getOpaqueTypeConformance2();
  return Label.init(title:icon:)();
}

uint64_t sub_1000782B4@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(_:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

double sub_10007832C()
{
  v0 = type metadata accessor for SymbolVariants();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v9 - v5;
  v9[1] = Image.init(_internalSystemName:)();
  static SymbolVariants.square.getter();
  SymbolVariants.fill.getter();
  v7 = *(v1 + 8);
  v7(v6, v0);
  View.symbolVariant(_:)();
  v7(v3, v0);

  return result;
}

double sub_100078484(uint64_t a1)
{
  v2 = type metadata accessor for ContextMenuForSubscribedUserView(0);
  v19 = *(v2 - 8);
  v3 = *(v19 + 64);
  __chkstk_darwin(v2 - 8);
  v20 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002D44(&qword_100142818, &qword_1000F5860);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v22 = v8;
  v23 = v7;
  sub_100002D44(&qword_1001454E0, &qword_1000F9A50);
  State.wrappedValue.getter();
  v9 = v21;
  swift_getKeyPath();
  v22 = v9;
  sub_1000796DC(&qword_100145540, type metadata accessor for ContextMenuForSubscribedUserViewModel, &unk_1000FEB10);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v9 + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel__isSongInLibrary);

  if (v10 != 1)
  {
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    v13 = v20;
    sub_100079C54(a1, v20, type metadata accessor for ContextMenuForSubscribedUserView);
    type metadata accessor for MainActor();
    v14 = static MainActor.shared.getter();
    v15 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = &protocol witness table for MainActor;
    sub_100079BEC(v13, v16 + v15, type metadata accessor for ContextMenuForSubscribedUserView);
    sub_1000C8AF8(0, 0, v6, &unk_1000F9C38, v16);
    goto LABEL_5;
  }

  v22 = v8;
  v23 = v7;
  State.wrappedValue.getter();
  v11 = v21;
  if (*(v21 + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel__confirmationDialogPresented) == 1)
  {
    *(v21 + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel__confirmationDialogPresented) = 1;
LABEL_5:

    return result;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  *(&v19 - 2) = v11;
  *(&v19 - 8) = 1;
  v22 = v11;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_100078808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_1000788A0, v6, v5);
}

uint64_t sub_1000788A0()
{
  v1 = v0[5];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v0[2] = v3;
  v0[3] = v2;
  sub_100002D44(&qword_1001454E0, &qword_1000F9A50);
  State.wrappedValue.getter();
  v0[9] = v0[4];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_100027BF8;

  return sub_1000CBD48();
}

uint64_t sub_100078964(uint64_t a1)
{
  sub_100002D44(&qword_1001454E0, &qword_1000F9A50);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_1000796DC(&qword_100145540, type metadata accessor for ContextMenuForSubscribedUserViewModel, &unk_1000FEB10);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LocalizedStringKey.init(stringLiteral:)();

  State.wrappedValue.getter();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return Label<>.init(_:systemImage:)();
}

uint64_t sub_100078BB4@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(_:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

double sub_100078C2C(uint64_t a1, void (*a2)(void *))
{
  sub_100002D44(&qword_1001454E0, &qword_1000F9A50);
  v3 = State.wrappedValue.getter();
  a2(v3);

  return result;
}

uint64_t sub_100078CE4@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(_:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_100078D5C@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

double sub_100078DA4(uint64_t a1, uint64_t a2)
{
  sub_100002D44(&qword_1001454E0, &qword_1000F9A50);
  State.wrappedValue.getter();
  sub_1000E7B74(sub_100079B44);

  return result;
}

uint64_t sub_100078E2C(uint64_t a1, uint64_t a2)
{
  v16[1] = a2;
  v16[0] = type metadata accessor for EnvironmentValues();
  v3 = *(v16[0] - 8);
  __chkstk_darwin(v16[0]);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002D44(&qword_1001422A0, &unk_1000F53E0);
  __chkstk_darwin(v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for OpenURLAction();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ContextMenuForSubscribedUserView(0);
  sub_100007FDC(a1 + *(v13 + 24), v8, &qword_1001422A0, &unk_1000F53E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v16[0]);
  }

  OpenURLAction.callAsFunction(_:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_100079110@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(_:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

double sub_100079188(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for OpenURLAction();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 24);
  v11[2] = *(a1 + 16);
  v11[3] = v7;
  sub_100002D44(&qword_1001454E0, &qword_1000F9A50);
  State.wrappedValue.getter();
  v8 = v11[1];
  type metadata accessor for ContextMenuForSubscribedUserView(0);
  sub_100041144(v6);
  type metadata accessor for StreamingService(0);
  OpenURLAction.callAsFunction(_:)();
  (*(v4 + 8))(v6, v3);
  if (*(v8 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_member))
  {
    v9 = 66313;
  }

  else
  {
    v9 = 777;
  }

  sub_1000C3900(v9, 0xD000000000000028, 0x80000001000FF5D0);

  return result;
}

uint64_t sub_1000792FC@<X0>(uint64_t a2@<X8>)
{
  sub_100002D44(&qword_1001454E0, &qword_1000F9A50);
  State.wrappedValue.getter();

  result = Text.init(_:tableName:bundle:comment:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1000793DC(char a1)
{
  v3 = type metadata accessor for ContextMenuForSubscribedUserView(0);
  v6 = *(v3 - 8);
  result = v3 - 8;
  v5 = v6;
  if (a1)
  {
    v7 = (v1 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));
    if (*v7)
    {
      return (*v7)();
    }
  }

  return result;
}

unint64_t sub_1000794B0()
{
  result = qword_100145500;
  if (!qword_100145500)
  {
    sub_100004370(&qword_1001454F0, &qword_1000F9A88);
    sub_100004610(&qword_100145508, &qword_100145510, &qword_1000F9A90, &protocol conformance descriptor for Button<A>);
    sub_1000796DC(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145500);
  }

  return result;
}

uint64_t sub_1000795E8()
{
  v1 = *(type metadata accessor for ContextMenuForSubscribedUserView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100077588(v2);
}

uint64_t sub_1000796DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10007973C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ContextMenuForSubscribedUserView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1000797B4(uint64_t a1)
{
  v4 = *(type metadata accessor for ContextMenuForSubscribedUserView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100012EC8;

  return sub_100077180(a1, v6, v7, v1 + v5);
}

uint64_t sub_100079954()
{
  v1 = type metadata accessor for ContextMenuForSubscribedUserView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  if (*(v0 + v3))
  {
  }

  v9 = *(v1 + 24);
  sub_100002D44(&qword_1001422A0, &unk_1000F53E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for OpenURLAction();
    (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  }

  else
  {
  }

  v11 = v2 | v7;
  v12 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v12, v5);

  return _swift_deallocObject(v0, v12 + v8, v11 | 7);
}

uint64_t sub_100079B7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100145570, &unk_1000F9BE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100079BEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100079C54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100079CBC()
{
  v1 = type metadata accessor for ContextMenuForSubscribedUserView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for StreamingService(0);
  v6 = *(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  if (*(v0 + v3))
  {
  }

  v8 = *(v1 + 24);
  sub_100002D44(&qword_1001422A0, &unk_1000F53E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for OpenURLAction();
    (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  }

  else
  {
  }

  v10 = v2 | v6;
  v11 = (v3 + v4 + v6) & ~v6;

  v12 = *(v5 + 20);
  v13 = type metadata accessor for URL();
  (*(*(v13 - 8) + 8))(v0 + v11 + v12, v13);

  return _swift_deallocObject(v0, v11 + v7, v10 | 7);
}

uint64_t sub_100079EF8(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ContextMenuForSubscribedUserView(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(a1(0) - 8);
  v8 = v2 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return a2(v2 + v5, v8);
}

uint64_t sub_10007A05C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100142328, &unk_1000F54C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007A0DC()
{
  v1 = type metadata accessor for ContextMenuForSubscribedUserView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  if (*(v0 + v3))
  {
  }

  v5 = *(v1 + 24);
  sub_100002D44(&qword_1001422A0, &unk_1000F53E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for OpenURLAction();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10007A234()
{
  v1 = type metadata accessor for ContextMenuForSubscribedUserView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  if (*(v0 + v3))
  {
  }

  v5 = *(v1 + 24);
  sub_100002D44(&qword_1001422A0, &unk_1000F53E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for OpenURLAction();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10007A374(uint64_t a1)
{
  v4 = *(type metadata accessor for ContextMenuForSubscribedUserView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000789C;

  return sub_100078808(a1, v6, v7, v1 + v5);
}

unint64_t sub_10007A488()
{
  result = qword_100145590;
  if (!qword_100145590)
  {
    sub_100004370(&qword_1001454C8, &qword_1000F9A38);
    sub_100004370(&qword_1001454B8, &qword_1000F9A28);
    sub_100004370(&qword_100145528, &qword_1000F9AF0);
    sub_100004370(&qword_100145530, &qword_1000F9AF8);
    sub_100004370(&qword_1001454B0, &qword_1000F9A20);
    sub_100004370(&qword_1001454A8, &qword_1000F9A18);
    sub_100004370(&qword_100145518, &qword_1000F9AC0);
    sub_100004370(&qword_1001454A0, &qword_1000F9A10);
    sub_100004370(&qword_1001454F0, &qword_1000F9A88);
    sub_100004610(&qword_1001454F8, &qword_1001454A0, &qword_1000F9A10, &protocol conformance descriptor for Menu<A, B>);
    sub_1000794B0();
    swift_getOpaqueTypeConformance2();
    sub_100004610(&qword_100145520, &qword_100145518, &qword_1000F9AC0, &protocol conformance descriptor for NavigationView<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for PlainButtonStyle();
    sub_1000796DC(&qword_1001422F0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for NavigationBarButtonStyle(255);
    sub_1000796DC(&qword_1001422F8, type metadata accessor for NavigationBarButtonStyle, &unk_1000F6A9C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000796DC(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145590);
  }

  return result;
}

void sub_10007A9BC(void *a1)
{
  v2 = v1;
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000BEC4(v4, qword_10014FEA0);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Ambient compact scene will connect %@", v8, 0xCu);
    sub_1000157BC(v9);
  }

  type metadata accessor for ActivityScene();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    v13 = objc_allocWithZone(UIWindow);
    oslog = v5;
    v14 = [v13 initWithWindowScene:v12];
    v15 = OBJC_IVAR____TtC16MusicRecognition43MusicRecognitionAmbientCompactSceneDelegate_window;
    v16 = *(v2 + OBJC_IVAR____TtC16MusicRecognition43MusicRecognitionAmbientCompactSceneDelegate_window);
    *(v2 + OBJC_IVAR____TtC16MusicRecognition43MusicRecognitionAmbientCompactSceneDelegate_window) = v14;

    v17 = *(v2 + v15);
    if (v17)
    {
      type metadata accessor for MusicRecognitionAmbientCompactViewController();
      v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v19 = v17;
      v20 = [v18 init];
      [v19 setRootViewController:v20];

      v21 = *(v2 + v15);
      if (v21)
      {
        v22 = v21;
        [v22 makeKeyAndVisible];
      }
    }
  }

  else
  {
    oslog = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v23, "Unable to connect to ActivityScene", v24, 2u);
    }
  }
}

uint64_t sub_10007AC4C(void (*a1)(uint64_t *__return_ptr, char *), double a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002D44(&qword_100142FE0, &unk_1000F8EC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v13 - v10;
  sub_10007C388(v2, &v13 - v10);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    return 0;
  }

  (*(v6 + 32))(v8, v11, v5);
  a1(&v13, v8);
  if (v3)
  {
    result = (*(v6 + 8))(v8, v5);
    __break(1u);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    return v13;
  }

  return result;
}

uint64_t sub_10007AE14@<X0>(int a1@<W0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v112 = a3;
  v113 = a4;
  v111 = a2;
  v110 = a1;
  v109 = a5;
  v5 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v107 = *(v5 - 8);
  v108 = v5;
  __chkstk_darwin(v5);
  v106 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date.FormatStyle.Symbol.Minute();
  v104 = *(v7 - 8);
  v105 = v7;
  __chkstk_darwin(v7);
  v103 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for Date.FormatStyle.Symbol.Hour.AMPMStyle();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v98 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for Date.FormatStyle.Symbol.Hour();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v97 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v14 = *(v13 - 8);
  v120 = v13;
  v121 = v14;
  __chkstk_darwin(v13);
  v118 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FormatStyleCapitalizationContext();
  __chkstk_darwin(v16 - 8);
  v117 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TimeZone();
  __chkstk_darwin(v18 - 8);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Calendar();
  __chkstk_darwin(v21 - 8);
  v115 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for Locale();
  v122 = *(v119 - 8);
  __chkstk_darwin(v119);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100002D44(&qword_100145688, &qword_1000F9DA0);
  __chkstk_darwin(v25 - 8);
  v27 = &v76 - v26;
  v28 = sub_100002D44(&qword_100145690, &qword_1000F9DA8);
  __chkstk_darwin(v28 - 8);
  v30 = &v76 - v29;
  v114 = type metadata accessor for Date.FormatStyle();
  v31 = *(v114 - 8);
  __chkstk_darwin(v114);
  v33 = &v76 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v76 - v35;
  __chkstk_darwin(v37);
  v76 = &v76 - v38;
  __chkstk_darwin(v39);
  v77 = &v76 - v40;
  __chkstk_darwin(v41);
  v43 = &v76 - v42;
  __chkstk_darwin(v44);
  v80 = &v76 - v45;
  __chkstk_darwin(v46);
  v116 = &v76 - v47;
  v90 = type metadata accessor for SongMetadataRowViewModel(0);
  v86 = *(v90 + 28);
  v88 = type metadata accessor for Date.FormatStyle.DateStyle();
  v48 = *(v88 - 8);
  v87 = *(v48 + 56);
  v89 = v48 + 56;
  v78 = v30;
  v87(v30, 1, 1, v88);
  v84 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v49 = *(v84 - 8);
  v83 = *(v49 + 56);
  v85 = v49 + 56;
  v79 = v27;
  v83(v27, 1, 1, v84);
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  v81 = v20;
  static TimeZone.autoupdatingCurrent.getter();
  static FormatStyleCapitalizationContext.unknown.getter();
  Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
  v50 = v118;
  static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
  Date.FormatStyle.year(_:)();
  v51 = *(v121 + 8);
  v121 += 8;
  v82 = v51;
  v51(v50, v120);
  v52 = *(v31 + 8);
  v53 = v114;
  v52(v33, v114);
  v54 = v91;
  static Date.FormatStyle.Symbol.Month.abbreviated.getter();
  v55 = v76;
  Date.FormatStyle.month(_:)();
  (*(v92 + 8))(v54, v93);
  v52(v36, v53);
  v56 = v94;
  static Date.FormatStyle.Symbol.Day.twoDigits.getter();
  v57 = v77;
  Date.FormatStyle.day(_:)();
  (*(v95 + 8))(v56, v96);
  v52(v55, v53);
  v58 = v98;
  static Date.FormatStyle.Symbol.Hour.AMPMStyle.abbreviated.getter();
  v59 = v97;
  static Date.FormatStyle.Symbol.Hour.defaultDigits(amPM:)();
  (*(v101 + 8))(v58, v102);
  Date.FormatStyle.hour(_:)();
  (*(v99 + 8))(v59, v100);
  v52(v57, v53);
  v60 = v103;
  static Date.FormatStyle.Symbol.Minute.twoDigits.getter();
  v61 = v80;
  Date.FormatStyle.minute(_:)();
  (*(v104 + 8))(v60, v105);
  v52(v43, v53);
  v62 = v106;
  static Date.FormatStyle.Symbol.Weekday.abbreviated.getter();
  v63 = v116;
  Date.FormatStyle.weekday(_:)();
  (*(v107 + 8))(v62, v108);
  v64 = v61;
  v65 = v61;
  v66 = v53;
  v52(v64, v53);
  static Locale.autoupdatingCurrent.getter();
  v67 = v109;
  Date.FormatStyle.locale(_:)();
  v68 = *(v122 + 8);
  v122 += 8;
  v108 = v68;
  v69 = v24;
  v68(v24, v119);
  v52(v63, v66);
  v107 = *(v90 + 32);
  v87(v78, 1, 1, v88);
  v83(v79, 1, 1, v84);
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static FormatStyleCapitalizationContext.unknown.getter();
  Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
  v70 = v118;
  static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
  v71 = v116;
  Date.FormatStyle.year(_:)();
  v82(v70, v120);
  v72 = v65;
  v73 = v114;
  v52(v72, v114);
  static Locale.autoupdatingCurrent.getter();
  Date.FormatStyle.locale(_:)();
  v108(v69, v119);
  v52(v71, v73);
  *v67 = v110;
  result = sub_1000518E8(v111, v67 + 8);
  v75 = v113;
  *(v67 + 48) = v112;
  *(v67 + 56) = v75;
  return result;
}