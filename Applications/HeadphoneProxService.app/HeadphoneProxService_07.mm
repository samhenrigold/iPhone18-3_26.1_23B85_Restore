id sub_1000B0E50(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HeadhponeHeartRateTutorial1ViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000B0F04()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011FCF8);
  v1 = sub_10000A570(v0, qword_10011FCF8);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1000B0FCC()
{
  v1 = OBJC_IVAR____TtC20HeadphoneProxService35USBHeadphoneLossLessAudioController____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService35USBHeadphoneLossLessAudioController____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService35USBHeadphoneLossLessAudioController____lazy_storage___imageView);
  }

  else
  {
    v4 = sub_1000B1030(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1000B1030(uint64_t a1)
{
  swift_getObjectType();
  v1 = type metadata accessor for HeadphoneModel(0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v32[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v32[-v5];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    sub_1000145EC(v8 + 16, &v33);
    swift_unknownObjectRelease();
    v9 = v35;
    if (v35)
    {
      v10 = sub_10000E7E4(&v33, v35);
      v11 = *(v9 - 8);
      __chkstk_darwin(v10);
      v13 = &v32[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v11 + 16))(v13);
      sub_10000E950(&v33, &qword_10011FBC0, &unk_1000D5EF0);
      v14 = *v13;
      v15 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_10000E390(v14 + v15, v4);
      (*(v11 + 8))(v13, v9);
      sub_10000E828(v4, v6);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v33 = 0;
      v34 = 0xE000000000000000;
      _StringGuts.grow(_:)(19);

      v33 = 0xD000000000000011;
      v34 = 0x80000001000E2240;
      v18 = v6[160];
      v32[7] = v6[160];
      v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v19);

      v20 = v17;
      v21 = String._bridgeToObjectiveC()();

      v22 = objc_opt_self();
      v23 = [v22 imageNamed:v21 inBundle:v20];

      if (!v23)
      {
        v24 = String._bridgeToObjectiveC()();
        v23 = [v22 imageNamed:v24 inBundle:v20];
      }

      v25 = [objc_allocWithZone(UIImageView) initWithImage:v23];
      [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
      if ((v18 - 18) >= 5)
      {
        v26 = 5;
      }

      else
      {
        v26 = v18 - 18;
      }

      sub_1000B14CC(v25, v26);

      sub_10000E8F4(v6);
      return v25;
    }

    sub_10000E950(&v33, &qword_10011FBC0, &unk_1000D5EF0);
  }

  if (qword_10011C768 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_10000A570(v28, qword_10011FCF8);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Headphone Model is nil, exiting", v31, 2u);
  }

  return [objc_allocWithZone(UIImageView) init];
}

void sub_1000B14CC(void *a1, char a2)
{
  if (a2 == 5)
  {
    if (qword_10011C768 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A570(v3, qword_10011FCF8);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v27 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_100078978(0xD000000000000022, 0x80000001000E2280, v27);
      _os_log_impl(&_mh_execute_header, oslog, v4, "%s nil tint color early exit", v5, 0xCu);
      sub_10000EA94(v6);
    }

    else
    {
    }
  }

  else
  {
    v9 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorMatrix];
    v10 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterBias];
    v11 = [v2 traitCollection];
    v12 = [v11 userInterfaceStyle];

    if (v12 == 1)
    {
      v13 = &unk_1000DA04C;
    }

    else
    {
      v13 = "fff?";
    }

    v14 = *&v13[4 * a2];
    v15 = objc_opt_self();
    *v27 = v14;
    *&v27[4] = *(&CAColorMatrixIdentity + 4);
    v28 = *(&CAColorMatrixIdentity + 5);
    v29 = v14;
    v30 = *(&CAColorMatrixIdentity + 28);
    v31 = *(&CAColorMatrixIdentity + 11);
    v32 = v14;
    *v33 = *(&CAColorMatrixIdentity + 52);
    *&v33[12] = *(&CAColorMatrixIdentity + 4);
    v16 = [v15 valueWithCAColorMatrix:v27];
    v17 = String._bridgeToObjectiveC()();
    [v9 setValue:v16 forKey:v17];

    isa = Float._bridgeToObjectiveC()().super.super.isa;
    v19 = String._bridgeToObjectiveC()();
    [v10 setValue:isa forKey:v19];

    v20 = [a1 layer];
    sub_100008438(&unk_10011DC30, &unk_1000D7D30);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1000D66A0;
    v22 = sub_1000084D4(0, &qword_10011FA58, CAFilter_ptr);
    *(v21 + 32) = v9;
    *(v21 + 88) = v22;
    *(v21 + 56) = v22;
    *(v21 + 64) = v10;
    v23 = v9;
    v24 = v10;
    v25 = Array._bridgeToObjectiveC()().super.isa;

    [v20 setFilters:v25];
  }
}

void sub_1000B18E4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v53 - v4;
  v6 = type metadata accessor for HeadphoneModel(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v53 - v11;
  v60.receiver = v1;
  v60.super_class = ObjectType;
  objc_msgSendSuper2(&v60, "viewDidLoad");
  [v1 setDismissalType:1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    swift_beginAccess();
    sub_1000145EC(v14 + 16, v58);
    swift_unknownObjectRelease();
    v15 = v59;
    if (v59)
    {
      v16 = sub_10000E7E4(v58, v59);
      v56 = &v53;
      v17 = *(v15 - 8);
      __chkstk_darwin(v16);
      v57 = v7;
      v19 = (&v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v19);
      sub_10000E950(v58, &qword_10011FBC0, &unk_1000D5EF0);
      v20 = *v19;
      v21 = v6;
      v55 = v6;
      v22 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_10000E390(v20 + v22, v10);
      (*(v17 + 8))(v19, v15);
      sub_10000E828(v10, v12);
      v54 = v12;
      sub_10000E390(v12, v5);
      (*(v57 + 56))(v5, 0, 1, v21);
      v23 = &v1[OBJC_IVAR____TtC20HeadphoneProxService35USBHeadphoneLossLessAudioController_model];
      swift_beginAccess();
      sub_100013144(v5, v23);
      swift_endAccess();
      v24 = [v1 contentView];
      v25 = v1;
      v26 = sub_1000B0FCC();
      [v24 addSubview:v26];

      v56 = objc_opt_self();
      sub_100008438(&unk_10011D960, &qword_1000D5CF0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1000D5C90;
      v28 = OBJC_IVAR____TtC20HeadphoneProxService35USBHeadphoneLossLessAudioController____lazy_storage___imageView;
      v29 = [*&v1[OBJC_IVAR____TtC20HeadphoneProxService35USBHeadphoneLossLessAudioController____lazy_storage___imageView] centerXAnchor];
      v30 = [v25 contentView];
      v31 = [v30 mainContentGuide];

      v32 = [v31 centerXAnchor];
      v33 = [v29 constraintEqualToAnchor:v32];

      *(v27 + 32) = v33;
      v34 = [*&v25[v28] topAnchor];
      v35 = [v25 contentView];
      v36 = [v35 mainContentGuide];

      v37 = [v36 topAnchor];
      v38 = [v34 constraintEqualToAnchor:v37];

      *(v27 + 40) = v38;
      v39 = [*&v25[v28] bottomAnchor];
      v40 = [v25 contentView];
      v41 = [v40 mainContentGuide];

      v42 = [v41 bottomAnchor];
      v43 = [v39 constraintEqualToAnchor:v42];

      *(v27 + 48) = v43;
      sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v56 activateConstraints:isa];

      if ((*(v57 + 48))(v23, 1, v55) == 1)
      {
        __break(1u);
      }

      else
      {
        sub_100008438(&unk_1001200F0, &unk_1000D5F10);
        v45 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
        v46 = *(v45 - 8);
        v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_1000D5250;
        (*(v46 + 104))(v48 + v47, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.usbLosslessAudio(_:), v45);

        dispatch thunk of HeadphoneProxFeatureManager.setProxCardShowedFeatures(deviceAddress:showedFeatures:)();

        sub_10000E8F4(v54);
      }

      return;
    }

    sub_10000E950(v58, &qword_10011FBC0, &unk_1000D5EF0);
  }

  if (qword_10011C768 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_10000A570(v49, qword_10011FCF8);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v50, v51, "USB Lossless Audio: Headphone Model is nil, exiting", v52, 2u);
  }
}

void sub_1000B2188()
{
  v1 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  __chkstk_darwin(v1 - 8);
  v42 = &v40 - v2;
  v3 = type metadata accessor for HeadphoneModel(0);
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = __chkstk_darwin(v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v43 = &v40 - v7;
  v8 = objc_opt_self();
  v9 = [v8 mainBundle];
  v10._countAndFlagsBits = 0xD000000000000018;
  v48._object = 0xE000000000000000;
  v10._object = 0x80000001000E21E0;
  v11.value._object = 0x80000001000E2200;
  v11.value._countAndFlagsBits = 0xD00000000000001ALL;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v48._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v48);

  v13 = String._bridgeToObjectiveC()();

  [v0 setTitle:v13];

  v14 = [v8 mainBundle];
  v49._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0xD00000000000001BLL;
  v15._object = 0x80000001000E2220;
  v16.value._object = 0x80000001000E2200;
  v16.value._countAndFlagsBits = 0xD00000000000001ALL;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v49._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v49);

  v18 = String._bridgeToObjectiveC()();

  [v0 setSubtitle:v18];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    swift_beginAccess();
    sub_1000145EC(v20 + 16, aBlock);
    swift_unknownObjectRelease();
    v21 = v45;
    if (v45)
    {
      v22 = sub_10000E7E4(aBlock, v45);
      v23 = *(v21 - 1);
      __chkstk_darwin(v22);
      v25 = (&v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v23 + 16))(v25);
      sub_10000E950(aBlock, &qword_10011FBC0, &unk_1000D5EF0);
      v26 = *v25;
      v27 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_10000E390(v26 + v27, v6);
      (*(v23 + 8))(v25, v21);
      v28 = v43;
      sub_10000E828(v6, v43);
      v29 = v42;
      sub_10000E390(v28, v42);
      (*(v40 + 56))(v29, 0, 1, v41);
      v30 = OBJC_IVAR____TtC20HeadphoneProxService35USBHeadphoneLossLessAudioController_model;
      swift_beginAccess();
      sub_100013144(v29, v0 + v30);
      swift_endAccess();
      sub_100033A5C(0);
      v31 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v32 = String._bridgeToObjectiveC()();

      v46 = sub_1000B2B14;
      v47 = v31;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000C034;
      v45 = &unk_1001084D0;
      v33 = _Block_copy(aBlock);
      v34 = [objc_opt_self() actionWithTitle:v32 style:0 handler:v33];

      _Block_release(v33);

      v35 = [v0 addAction:v34];

      sub_10000E8F4(v28);
      return;
    }

    sub_10000E950(aBlock, &qword_10011FBC0, &unk_1000D5EF0);
  }

  if (qword_10011C768 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_10000A570(v36, qword_10011FCF8);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "Hearing Protection: Headphone Model is nil, exiting", v39, 2u);
  }
}

void sub_1000B27BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      sub_1000B5D54(0);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t type metadata accessor for USBHeadphoneLossLessAudioController(uint64_t a1)
{
  result = qword_10011FD48;
  if (!qword_10011FD48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000B2A10(uint64_t a1)
{
  sub_10000E064(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000B2ADC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B2B1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000B2B34()
{
  v1 = v0;
  v35.receiver = v0;
  v35.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v35, "viewDidLoad");
  [v0 setDismissalType:1];
  v2 = objc_opt_self();
  v3 = String._bridgeToObjectiveC()();
  v34 = [v2 imageNamed:v3];

  v4 = [objc_allocWithZone(UIImageView) initWithImage:v34];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [v1 contentView];
  [v5 addSubview:v4];

  v33 = objc_opt_self();
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000D5240;
  v7 = [v4 topAnchor];
  v8 = [v1 contentView];
  v9 = [v8 mainContentGuide];

  v10 = [v9 topAnchor];
  v11 = [v7 constraintEqualToAnchor:v10];

  *(v6 + 32) = v11;
  v12 = [v4 centerXAnchor];
  v13 = [v1 contentView];
  v14 = [v13 mainContentGuide];

  v15 = [v14 centerXAnchor];
  v16 = [v12 constraintEqualToAnchor:v15];

  *(v6 + 40) = v16;
  v17 = [v4 leadingAnchor];
  v18 = [v1 contentView];
  v19 = [v18 mainContentGuide];

  v20 = [v19 leadingAnchor];
  v21 = [v17 constraintGreaterThanOrEqualToAnchor:v20];

  *(v6 + 48) = v21;
  v22 = [v4 trailingAnchor];
  v23 = [v1 contentView];
  v24 = [v23 mainContentGuide];

  v25 = [v24 trailingAnchor];
  v26 = [v22 constraintLessThanOrEqualToAnchor:v25];

  *(v6 + 56) = v26;
  v27 = [v4 bottomAnchor];

  v28 = [v1 contentView];
  v29 = [v28 mainContentGuide];

  v30 = [v29 bottomAnchor];
  v31 = [v27 constraintLessThanOrEqualToAnchor:v30];

  *(v6 + 64) = v31;
  sub_10000F5A0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v33 activateConstraints:isa];
}

void sub_1000B3024()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 setTitle:v1];

  v2 = String._bridgeToObjectiveC()();
  [v0 setSubtitle:v2];

  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v4 = String._bridgeToObjectiveC()();
  v17 = sub_1000B3458;
  v18 = v3;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10000C034;
  v16 = &unk_100108560;
  v5 = _Block_copy(&v13);
  v6 = objc_opt_self();
  v7 = [v6 actionWithTitle:v4 style:0 handler:v5];

  _Block_release(v5);

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v9 = String._bridgeToObjectiveC()();
  v17 = sub_1000B34A0;
  v18 = v8;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10000C034;
  v16 = &unk_100108588;
  v10 = _Block_copy(&v13);
  v11 = [v6 actionWithTitle:v9 style:1 handler:v10];

  _Block_release(v10);

  v12 = [v0 addAction:v11];
}

void sub_1000B32DC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      a3();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1000B3420()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B3488(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000B34D8(uint64_t a1)
{
  v2 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  __chkstk_darwin(v2 - 8);
  v4 = v55 - v3;
  v5 = sub_100008438(&qword_10011CCF0, qword_1000D61B0);
  __chkstk_darwin(v5 - 8);
  v7 = v55 - v6;
  v8 = type metadata accessor for HeadphoneAssets(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HeadphoneViewModel(0);
  sub_10000E88C(a1 + *(v12 + 44), v7, &qword_10011CCF0, qword_1000D61B0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000E950(v7, &qword_10011CCF0, qword_1000D61B0);
  }

  else
  {
    sub_1000A9BF0(v7, v11);
    v13 = (a1 + *(v12 + 56));
    v14 = v13[11];
    v15 = v13[13];
    v69 = v13[12];
    v70 = v15;
    v16 = v13[7];
    v17 = v13[9];
    v65 = v13[8];
    v66 = v17;
    v18 = v13[9];
    v19 = v13[11];
    v67 = v13[10];
    v68 = v19;
    v20 = v13[3];
    v21 = v13[5];
    v61 = v13[4];
    v62 = v21;
    v22 = v13[5];
    v23 = v13[7];
    v63 = v13[6];
    v64 = v23;
    v24 = v13[1];
    v57 = *v13;
    v58 = v24;
    v25 = v13[3];
    v27 = *v13;
    v26 = v13[1];
    v59 = v13[2];
    v60 = v25;
    v83 = v14;
    v84 = v69;
    v28 = v13[14];
    v85 = v13[13];
    v86 = v28;
    v79 = v16;
    v80 = v65;
    v81 = v18;
    v82 = v67;
    v75 = v20;
    v76 = v61;
    v77 = v22;
    v78 = v63;
    v71 = v28;
    v72 = v27;
    v73 = v26;
    v74 = v59;
    v29 = v11;
    if (sub_100026134(&v72) == 1)
    {
      sub_1000A55F8(v11);
    }

    else
    {
      v92[11] = v83;
      v92[12] = v84;
      v92[13] = v85;
      v92[14] = v86;
      v92[7] = v79;
      v92[8] = v80;
      v92[9] = v81;
      v92[10] = v82;
      v92[3] = v75;
      v92[4] = v76;
      v92[5] = v77;
      v92[6] = v78;
      v92[0] = v72;
      v92[1] = v73;
      v92[2] = v74;
      v56[11] = v68;
      v56[12] = v69;
      v56[13] = v70;
      v56[14] = v71;
      v56[7] = v64;
      v56[8] = v65;
      v56[9] = v66;
      v56[10] = v67;
      v56[4] = v61;
      v56[5] = v62;
      v56[6] = v63;
      v56[0] = v57;
      v56[1] = v58;
      v56[2] = v59;
      v56[3] = v60;
      sub_1000944B8(a1, v4);
      (*(*(v12 - 8) + 56))(v4, 0, 1, v12);
      v30 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneNotYoursViewController_viewModel;
      v31 = v55[0];
      swift_beginAccess();
      sub_10000A304(v56, &v87);
      sub_10004D3E8(v4, &v31[v30]);
      swift_endAccess();
      v32 = String._bridgeToObjectiveC()();
      [v31 setTitle:v32];

      v33 = String._bridgeToObjectiveC()();
      [v31 setSubtitle:v33];

      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v35 = String._bridgeToObjectiveC()();
      v90 = sub_1000B43C8;
      v91 = v34;
      v87.n128_u64[0] = _NSConcreteStackBlock;
      v87.n128_u64[1] = 1107296256;
      v88 = sub_10000C034;
      v89 = &unk_100108618;
      v36 = _Block_copy(&v87);
      v37 = [objc_opt_self() actionWithTitle:v35 style:1 handler:v36];

      _Block_release(v36);

      v38 = *&v31[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneNotYoursViewController_secondaryAction];
      *&v31[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneNotYoursViewController_secondaryAction] = v37;
      v39 = v37;

      if (v39)
      {
        v40 = [v31 addAction:v39];
      }

      v41 = objc_allocWithZone(SFMediaPlayerItem);
      URL._bridgeToObjectiveC()(v42);
      v44 = v43;
      v45 = [v41 initWithURL:v43];

      [v45 setShouldLoop:1];
      v46 = [objc_allocWithZone(SFMediaPlayerView) init];
      [v46 addMovieItem:v45];
      v47 = v46;
      v48 = [v31 contentView];
      v49 = v87.n128_u64[0];
      [v87.n128_u64[0] setTranslatesAutoresizingMaskIntoConstraints:0];
      [v48 addLayoutGuide:v87.n128_u64[1]];
      [v48 addSubview:v49];
      [v48 sendSubviewToBack:v49];

      v50 = objc_opt_self();
      v51 = [v31 contentView];
      v52 = [v51 mainContentGuide];

      sub_1000ABDA8(v52);
      sub_10000F5A0();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v50 activateConstraints:isa];

      sub_10000A3B4(&v87);
      sub_1000A55F8(v29);
      v54 = *&v31[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneNotYoursViewController_movieView];
      *&v31[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneNotYoursViewController_movieView] = v47;
    }
  }
}

id sub_1000B3C28(char a1)
{
  v3 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_100008438(&qword_10011CCF0, qword_1000D61B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for HeadphoneAssets(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HeadphoneNotYoursViewController(0);
  v26.receiver = v1;
  v26.super_class = v13;
  objc_msgSendSuper2(&v26, "viewWillAppear:", a1 & 1);
  v14 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneNotYoursViewController_viewModel;
  swift_beginAccess();
  sub_10000E88C(&v1[v14], v5, &qword_10011F2E0, &unk_1000D8580);
  v15 = type metadata accessor for HeadphoneViewModel(0);
  if ((*(*(v15 - 8) + 48))(v5, 1, v15))
  {
    sub_10000E950(v5, &qword_10011F2E0, &unk_1000D8580);
    (*(v10 + 56))(v8, 1, 1, v9);
LABEL_4:
    sub_10000E950(v8, &qword_10011CCF0, qword_1000D61B0);
    return [*&v1[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneNotYoursViewController_movieView] play];
  }

  sub_10000E88C(&v5[*(v15 + 44)], v8, &qword_10011CCF0, qword_1000D61B0);
  sub_10000E950(v5, &qword_10011F2E0, &unk_1000D8580);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    goto LABEL_4;
  }

  sub_1000A9BF0(v8, v12);
  v17 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneNotYoursViewController_movieView];
  if (v17)
  {
    v18 = objc_opt_self();
    v19 = v17;
    v20 = [v18 currentTraitCollection];
    v21 = [v20 userInterfaceStyle];

    if (v21 == 2)
    {
      v22 = 1;
    }

    else
    {
      v22 = 2;
    }

    URL._bridgeToObjectiveC()(1);
    v24 = v23;
    [v19 updateViewForAssetType:v22 adjustmentsURL:v23];
  }

  sub_1000A55F8(v12);
  return [*&v1[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneNotYoursViewController_movieView] play];
}

void sub_1000B4074(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      sub_1000B90EC(0);
      swift_unknownObjectRelease();
    }
  }
}

id sub_1000B41C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeadphoneNotYoursViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HeadphoneNotYoursViewController(uint64_t a1)
{
  result = qword_10011FDC8;
  if (!qword_10011FDC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000B42D0(uint64_t a1)
{
  sub_100025E40(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000B4390()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B43D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000B43E8(uint64_t a1)
{
  v1 = a1;
  v2 = objc_opt_self();
  v3 = [v2 airPodsMax];
  v4 = [v3 productID];

  if (v4 == v1 || (v5 = [v2 airPodsMax], v6 = objc_msgSend(v5, "altProductID"), v5, v6 == v1) || (v7 = objc_msgSend(v2, "airPods"), v8 = objc_msgSend(v7, "productID"), v7, v8 == v1) || (v9 = objc_msgSend(v2, "airPodsSecondGeneration"), v10 = objc_msgSend(v9, "productID"), v9, v10 == v1) || sub_1000B4564(v1) || (v11 = objc_msgSend(v2, "b688"), v12 = objc_msgSend(v11, "productID"), v11, v12 == v1))
  {
    LOBYTE(v13) = 1;
  }

  else if ((v1 - 8217) > 7)
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    v13 = 0xA5u >> (v1 - 25);
  }

  return v13 & 1;
}

BOOL sub_1000B4564(int a1)
{
  v2 = objc_opt_self();
  v3 = [v2 airPodsPro];
  v4 = [v3 productID];

  if (v4 == a1)
  {
    return 1;
  }

  v5 = [v2 b698];
  v6 = [v5 productID];

  if (v6 == a1)
  {
    return 1;
  }

  v7 = [v2 b698];
  v8 = [v7 altProductID];

  if (v8 == a1)
  {
    return 1;
  }

  v9 = [v2 b788];
  v10 = [v9 productID];

  if (v10 == a1)
  {
    return 1;
  }

  v12 = [v2 b788];
  v13 = [v12 altProductID];

  return v13 == a1;
}

void *sub_1000B46B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000CD5C4(0, v1, 0);
    v3 = a1 + 56;
    do
    {

      sub_100008438(&unk_100120020, &qword_1000D7C38);
      sub_100008438(&unk_10011D078, &qword_1000DA4F0);
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_1000CD5C4((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      v6 = &_swiftEmptyArrayStorage[4 * v5];
      v6[4] = v8;
      v6[5] = v9;
      v6[6] = v10;
      v6[7] = v11;
      v3 += 32;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1000B47F0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v17 = _swiftEmptyArrayStorage;
  result = sub_1000CD664(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_1000CD664((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_1000084D4(0, &qword_100120100, UNNotificationSource_ptr);
        v16 = &off_100108CB8;
        *&v14 = v6;
        v3[2] = v8 + 1;
        sub_10000E9B0(&v14, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = v3[2];
        v11 = v3[3];
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_1000CD664((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_1000084D4(0, &qword_100120100, UNNotificationSource_ptr);
        v16 = &off_100108CB8;
        *&v14 = v13;
        v3[2] = v12 + 1;
        sub_10000E9B0(&v14, &v3[5 * v12 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B49F8()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011FDE0);
  v1 = sub_10000A570(v0, qword_10011FDE0);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_1000B4D04@<D0>(void *a1@<X8>)
{
  *a1 = off_10011FDF8;

  return result;
}

uint64_t sub_1000B4D14()
{
  v0 = type metadata accessor for HeadphoneViewModel(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000084D4(0, &qword_10011D240, OS_dispatch_queue_ptr);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v7 = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v9 = result + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_currentView;
      Strong = swift_unknownObjectWeakLoadStrong();
      v11 = *(v9 + 8);
      result = swift_unknownObjectRelease();
      if (Strong)
      {
        ObjectType = swift_getObjectType();
        v13 = (*(v11 + 32))(ObjectType, v11);
        sub_1000BB69C(v13, v2);
        (*(v11 + 48))(v2, ObjectType, v11);
        swift_unknownObjectRelease();
        return sub_1000CE1E0(v2, type metadata accessor for HeadphoneViewModel);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1000B4F34()
{
  v1 = v0 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  v2 = type metadata accessor for HeadphoneModel(0);
  v3 = *(v1 + *(v2 + 136));
  if (v3 == 8217 || v3 == 8222)
  {
    return 0;
  }

  v6 = v2;
  v7 = objc_opt_self();
  v8 = [v7 b688];
  v9 = [v8 productID];

  if (v3 == v9)
  {
    return 0;
  }

  v10 = *(v1 + *(v6 + 136));
  v11 = [v7 b487];
  v12 = [v11 productID];

  return v10 != v12;
}

uint64_t sub_1000B5040(uint64_t a1)
{
  *(v1 + 64) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 80) = 256;
  *(v1 + 88) = 0;
  *(v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_useMovieForNextBatteryView) = 1;
  *(v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_batteryDebounceTime) = 0;
  *(v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_temporarilyPair) = 0;
  v3 = OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_postPairStep;
  *(v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_postPairStep) = 16;
  *(v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_hasAutoDismissed) = 0;
  *(v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_spatialProfileEnrollmentViewController) = 0;
  v4 = (v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_batteryVideoView);
  *v4 = 0;
  v4[1] = 0;
  sub_1000CE178(a1, v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model, type metadata accessor for HeadphoneModel);
  v5 = *(a1 + 136);
  sub_1000CE1E0(a1, type metadata accessor for HeadphoneModel);
  v6 = *(v1 + v3);
  *(v1 + v3) = qword_1000DA658[v5];
  sub_1000CC0E4(v6);
  type metadata accessor for HeadphoneAnalyticsController(0);
  v7 = swift_allocObject();
  sub_10004D5F8((v7 + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics));
  *(v1 + 72) = v7;
  v8 = (v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_unlockDevice);
  *v8 = sub_1000B519C;
  v8[1] = 0;
  return v1;
}

void sub_1000B519C(uint64_t a1, uint64_t a2)
{
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A570(v4, qword_10011FDE0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Requesting device unlock", v7, 2u);
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v10[4] = sub_1000CE784;
  v10[5] = v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000B5470;
  v10[3] = &unk_100108C00;
  v9 = _Block_copy(v10);

  SBSRequestPasscodeUnlockUI();
  _Block_release(v9);
}

uint64_t sub_1000B532C(char a1, uint64_t (*a2)(void))
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000084D4(0, &qword_10011D240, OS_dispatch_queue_ptr);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    return a2(a1 & 1);
  }

  __break(1u);
  return result;
}

double sub_1000B5470(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = a2 != 0;

  v2(v3);

  return result;
}

int *sub_1000B54C8()
{
  v1 = *(v0 + 72);
  v2 = v0 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  v3 = type metadata accessor for HeadphoneModel(0);
  v4 = *(v2 + *(v3 + 136));
  v5 = (v1 + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics);
  result = type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0);
  v7 = &v5[result[6]];
  *v7 = v4;
  v7[8] = 0;
  v8 = *(v2 + 136);
  if (v8 <= 8)
  {
    if (*(v2 + 136) > 6u)
    {
      if (v8 != 7)
      {
        if (v8 != 8)
        {
          return result;
        }

        *v5 = 5;
        v10 = result[32];
        goto LABEL_24;
      }

LABEL_16:
      *v5 = 3;
      return result;
    }

    if (v8 - 3 < 2 || v8 == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (*(v2 + 136) > 0xAu)
    {
      if (v8 - 11 >= 2)
      {
        if (v8 != 13)
        {
          if (v8 == 14)
          {
            *v5 = 4;
          }

          return result;
        }

        *v5 = 0;
        v10 = result[29];
LABEL_24:
        v5[v10] = 2;
        return result;
      }

      goto LABEL_16;
    }

    if (v8 == 9)
    {
      if (*(v2 + *(v3 + 84)) == 1)
      {
        *v5 = 2;
        v5[result[10]] = 2;
        return result;
      }

      v10 = result[43];
      goto LABEL_24;
    }

    if (v8 == 10)
    {
      *v5 = 1;
    }
  }

  return result;
}

uint64_t sub_1000B562C(uint64_t result)
{
  if (result <= 0x1Cu && ((1 << result) & 0x1FFD0FFF) != 0)
  {
    return sub_10004D458(result, 2);
  }

  return result;
}

void sub_1000B5678()
{
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A570(v1, qword_10011FDE0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Requested announce continue, turning on all supported apps", v4, 2u);
  }

  v5 = v0[9] + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v5 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 68)) = 0;
  v6 = objc_opt_self();
  [v6 setHasUserSeenAnnounceCallsOptOutScreen:1];
  [v6 setHasUserSeenAnnounceNotificationsOptOutScreen:1];
  v7 = v0 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  if (v7[*(type metadata accessor for HeadphoneModel(0) + 104)] != 1)
  {
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Siri is not allowed on lock screen, not enabling apps", v20, 2u);
    }

    goto LABEL_13;
  }

  swift_beginAccess();
  v8 = v0[5];
  if (!v8 || (v9 = (*sub_10000E7E4(v0 + 2, v8) + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_notificationSettingsCenter), v10 = v9[3], v11 = v9[4], sub_10000E7E4(v9, v10), (*(v11 + 8))(1, v10, v11), !v0[5]))
  {
LABEL_13:
    sub_1000B5D54(0);
    return;
  }

  sub_10000E9C8((v0 + 2), v22);
  v12 = sub_10000E7E4(v22, v22[3]);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = *(*v12 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_workingQueue);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1000CE388;
  *(v15 + 24) = v13;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1000CE8C4;
  *(v16 + 24) = v15;
  aBlock[4] = sub_100064F5C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B49D0;
  aBlock[3] = &unk_100108B10;
  v17 = _Block_copy(aBlock);
  swift_retain_n();

  dispatch_sync(v14, v17);
  _Block_release(v17);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if ((v14 & 1) == 0)
  {
    sub_10000EA94(v22);
    goto LABEL_13;
  }

  __break(1u);
}

double sub_1000B5A70(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  p_cache = &OBJC_METACLASS____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController.cache;
  if (Strong)
  {
    v3 = Strong + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
    swift_beginAccess();
    if (*(v3 + 8))
    {
      v4 = *(v3 + 96);

      v5 = *(v4 + 16);
      if (v5)
      {
        swift_beginAccess();
        v6 = (v4 + 72);
        do
        {
          if (*(v6 - 8) == 1)
          {
            v8 = *(v6 - 5);
            v7 = *(v6 - 4);
            v9 = *v6;
            v10 = swift_weakLoadStrong();
            if (v10)
            {
              v11 = v10;
              swift_beginAccess();
              if (*(v11 + 40))
              {
                sub_10000E9C8(v11 + 16, v21);
                v12 = v9;

                sub_10000E7E4(v21, v22);
                sub_10006CB3C(1, v8, v7);

                sub_10000EA94(v21);
              }

              else
              {
              }
            }
          }

          v6 += 6;
          --v5;
        }

        while (v5);

        p_cache = (&OBJC_METACLASS____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController + 16);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  swift_beginAccess();
  v13 = swift_weakLoadStrong();
  if (v13)
  {
    v15 = p_cache[448] + v13;
    swift_beginAccess();
    v16 = *(v15 + 1);
    if (v16)
    {
      v17 = *v15;
      v18 = *(v15 + 5);

      swift_beginAccess();
      v19 = swift_weakLoadStrong();
      if (v19)
      {
        v20 = v19;
        swift_beginAccess();
        if (*(v20 + 40))
        {
          sub_10000E9C8(v20 + 16, v21);

          sub_10000E7E4(v21, v22);
          sub_10006CB3C(1, v17, v16);

          sub_10000EA94(v21);
          return result;
        }
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_1000B5D54(char a1)
{
  v2 = v1;
  if ((a1 & 1) == 0)
  {
    v3 = OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_postPairStep;
    v4 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_postPairStep);
    sub_1000CC0C4(v4);
    v5 = sub_1000BDCA4(v4);
    sub_1000CC0E4(v4);
    v6 = *(v2 + v3);
    *(v2 + v3) = v5;
    sub_1000CC0E4(v6);
  }

  v7 = OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_postPairStep;
  while (1)
  {
    v8 = *(v2 + v7);
    sub_1000CC0C4(v8);
    v9 = sub_1000BE260(v8);
    sub_1000CC0E4(v8);
    if (v9)
    {
      switch(*(v2 + v7))
      {
        case 0:
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          sub_1000493C4();
          break;
        case 1:
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          sub_100049220();
          break;
        case 2:
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          sub_10004AF14();
          break;
        case 3:
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          sub_100047E70();
          break;
        case 4:
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          sub_10004B25C();
          break;
        case 5:
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          sub_10004A884();
          break;
        case 6:
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          sub_10004AA28();
          break;
        case 7:
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          sub_1000498B0();
          break;
        case 8:
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          sub_100049BF8();
          break;
        case 9:
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          sub_10004B400();
          break;
        case 0xALL:
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          sub_100049D9C();
          break;
        case 0xBLL:
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          sub_100049F40();
          break;
        case 0xCLL:
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          sub_1000481B8();
          break;
        case 0xDLL:
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          sub_10004835C();
          break;
        case 0xELL:
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          sub_1000486A4();
          break;
        case 0xFLL:
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          sub_100048500();
          break;
        case 0x10:
          goto LABEL_10;
        default:
          v17 = *(v2 + v7);
          if (swift_unknownObjectWeakLoadStrong())
          {
            sub_1000CC0D4(v17);
            sub_10004A42C(v17);
            swift_unknownObjectRelease();

            sub_1000CC0E4(v17);
          }

          return;
      }

      goto LABEL_16;
    }

    v10 = *(v2 + v7);
    if (v10 == 16)
    {
      break;
    }

    sub_1000CC0D4(*(v2 + v7));
    v11 = sub_1000BDCA4(v10);
    sub_1000CC0E4(v10);
    v12 = *(v2 + v7);
    *(v2 + v7) = v11;
    sub_1000CC0E4(v12);
  }

LABEL_10:
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000A570(v13, qword_10011FDE0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Nothing else to display after pairing, dismissing", v16, 2u);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100047C68();
LABEL_16:

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1000B615C()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested battery status finished", v5, 2u);
  }

  v6 = *(v1 + 72) + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v6 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 116)) = 0;

  return sub_1000B5D54(0);
}

void sub_1000B626C()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested device connect", v5, 2u);
  }

  v6 = *(v0 + 72) + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v6 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 40)) = 0;
  if (*(v0 + 80) == 1)
  {
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Already connecting", v8, 2u);
    }
  }

  else
  {
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = v0 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
    swift_beginAccess();
    if (*(v10 + *(type metadata accessor for HeadphoneModel(0) + 116)) == 1)
    {
      v11 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_unlockDevice);
      v12 = swift_allocObject();
      swift_weakInit();
      v13 = swift_allocObject();
      v13[2] = sub_1000CE674;
      v13[3] = v9;
      v13[4] = v12;

      v11(sub_1000CE680, v13);
    }

    else
    {

      sub_1000B654C(v14);
    }
  }
}

double sub_1000B654C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 88))
    {

      v2 = sub_100040EB4();

      if (v2)
      {
        return result;
      }
    }

    else
    {
    }
  }

  swift_beginAccess();
  v4 = swift_weakLoadStrong();
  if (v4)
  {
    *(v4 + 80) = 1;
    sub_1000B4D14();
  }

  swift_beginAccess();
  v5 = swift_weakLoadStrong();
  if (v5)
  {
    v6 = v5;
    swift_beginAccess();
    if (*(v6 + 40))
    {
      sub_10000E9C8(v6 + 16, v7);

      sub_10000E7E4(v7, v7[3]);
      sub_10006B6A4();
      sub_10000EA94(v7);
    }

    else
    {
    }
  }

  return result;
}

void sub_1000B6688()
{
  v1 = v0 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  v2 = type metadata accessor for HeadphoneModel(0);
  if (*(v1 + *(v2 + 136)) == 8223 && *(v1 + *(v2 + 188)) == 1)
  {
    sub_1000B626C();
  }

  else
  {
    sub_1000B626C();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100048ED8();
      swift_unknownObjectRelease();
    }
  }
}

void sub_1000B6720()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested control center training finished", v5, 2u);
  }

  v6 = *(v1 + 72) + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v6 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 60)) = 0;

  sub_1000B5D54(0);
}

void sub_1000B6840()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested customize announce notifications", v5, 2u);
  }

  v6 = v1[9] + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v6 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 68)) = 1;
  v7 = objc_opt_self();
  [v7 setHasUserSeenAnnounceCallsOptOutScreen:1];
  [v7 setHasUserSeenAnnounceNotificationsOptOutScreen:1];
  swift_beginAccess();
  v8 = v1[5];
  if (v8)
  {
    v9 = (*sub_10000E7E4(v1 + 2, v8) + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_notificationSettingsCenter);
    v10 = v9[3];
    v11 = v9[4];
    sub_10000E7E4(v9, v10);
    (*(v11 + 8))(1, v10, v11);
    if (v1[5])
    {
      sub_10000E9C8((v1 + 2), v19);
      v12 = sub_10000E7E4(v19, v19[3]);
      v13 = swift_allocObject();
      swift_weakInit();
      v14 = *(*v12 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_workingQueue);
      v15 = swift_allocObject();
      *(v15 + 16) = sub_1000CE350;
      *(v15 + 24) = v13;
      v16 = swift_allocObject();
      *(v16 + 16) = sub_1000CE358;
      *(v16 + 24) = v15;
      v18[4] = sub_10006278C;
      v18[5] = v16;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 1107296256;
      v18[2] = sub_1000B49D0;
      v18[3] = &unk_100108A98;
      v17 = _Block_copy(v18);
      swift_retain_n();

      dispatch_sync(v14, v17);
      _Block_release(v17);
      LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

      if (v14)
      {
        __break(1u);
      }

      else
      {
        sub_10000EA94(v19);
      }
    }
  }
}

void sub_1000B6B80(uint64_t a1)
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000084D4(0, &qword_10011D240, OS_dispatch_queue_ptr);
  *v4 = static OS_dispatch_queue.main.getter();
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v5 = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
    return;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  p_cache = &OBJC_METACLASS____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController.cache;
  if (Strong)
  {
    v8 = Strong + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
    swift_beginAccess();
    if (*(v8 + 8))
    {
      v9 = *(v8 + 96);

      v10 = *(v9 + 16);
      if (v10)
      {
        swift_beginAccess();
        v11 = (v9 + 72);
        do
        {
          if (*(v11 - 8) == 1)
          {
            v13 = *(v11 - 5);
            v12 = *(v11 - 4);
            v14 = *v11;
            v15 = swift_weakLoadStrong();
            if (v15)
            {
              v16 = v15;
              swift_beginAccess();
              if (*(v16 + 40))
              {
                sub_10000E9C8(v16 + 16, v27);
                v17 = v14;

                sub_10000E7E4(v27, v28);
                sub_10006CB3C(1, v13, v12);

                sub_10000EA94(v27);
              }

              else
              {
              }
            }
          }

          v11 += 6;
          --v10;
        }

        while (v10);

        p_cache = (&OBJC_METACLASS____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController + 16);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  swift_beginAccess();
  v18 = swift_weakLoadStrong();
  if (v18)
  {
    v19 = p_cache[448] + v18;
    swift_beginAccess();
    v20 = *(v19 + 1);
    if (v20)
    {
      v21 = *v19;
      v22 = *(v19 + 5);

      swift_beginAccess();
      v23 = swift_weakLoadStrong();
      if (v23)
      {
        v24 = v23;
        swift_beginAccess();
        if (*(v24 + 40))
        {
          sub_10000E9C8(v24 + 16, v27);

          sub_10000E7E4(v27, v28);
          sub_10006CB3C(1, v21, v20);

          sub_10000EA94(v27);
          goto LABEL_23;
        }
      }
    }

    else
    {
    }
  }

LABEL_23:
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v25 = swift_unknownObjectWeakLoadStrong();

    if (v25)
    {
      sub_100048014();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1000B6FA4()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested customize announce notifications finished", v5, 2u);
  }

  v6 = *(v1 + 72) + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v6 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 72)) = 0;

  return sub_1000B5D54(0);
}

uint64_t sub_1000B70E4(uint64_t (*a1)(void))
{
  v3 = v1;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A570(v4, qword_10011FDE0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Requested disconnect", v7, 2u);
  }

  *(v3 + 80) = 3;
  sub_1000B4D14();
  result = swift_beginAccess();
  v9 = *(v3 + 40);
  if (v9)
  {
    sub_10000E7E4((v3 + 16), v9);
    return a1();
  }

  return result;
}

uint64_t sub_1000B7234()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested launch of bluetooth settings", v5, 2u);
  }

  v6 = *(v1 + 72) + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v6 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 124)) = 1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10004CEC4();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000B736C()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested marketing upsell finished", v5, 2u);
  }

  v6 = *(v1 + 72) + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v6 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 112)) = 0;

  sub_1000B5D54(0);
}

uint64_t sub_1000B747C()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested non genuine don't connect", v5, 2u);
  }

  v6 = *(v1 + 72) + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v6 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 124)) = 0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100047C68();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000B75F0(const char *a1, void (*a2)(void))
{
  v5 = v2;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A570(v6, qword_10011FDE0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 2u);
  }

  swift_beginAccess();
  v10 = *(v5 + 40);
  if (v10)
  {
    sub_10000E7E4((v5 + 16), v10);
    a2();
  }

  return sub_1000B5D54(0);
}

uint64_t sub_1000B771C()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested Skip Config for Mute Call", v5, 2u);
  }

  result = swift_beginAccess();
  v7 = *(v1 + 40);
  if (v7)
  {
    sub_10000E7E4((v1 + 16), v7);
    result = sub_10006D940();
    if ((result & 1) == 0)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      sub_100047C68();
      return swift_unknownObjectRelease();
    }

    v8 = *(v1 + 40);
    if (v8)
    {
      sub_10000E7E4((v1 + 16), v8);
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        sub_100049568();
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void sub_1000B7878()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested Skip Config for Adaptive Controls", v5, 2u);
  }

  v6 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  if ((*(v6 + 136) & 0xFE) == 2)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100047C68();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1000B5D54(0);
  }
}

uint64_t sub_1000B79D8(const char *a1, void (*a2)(void))
{
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A570(v4, qword_10011FDE0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, a1, v7, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a2();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000B7B00(char a1)
{
  v2 = v1;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A570(v4, qword_10011FDE0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13[0] = v8;
    *v7 = 136315138;
    if (a1)
    {
      v9 = 0x6E4F206E727554;
    }

    else
    {
      v9 = 0x776F4E20746F4ELL;
    }

    v10 = sub_100078978(v9, 0xE700000000000000, v13);

    *(v7 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "Requested %s For Adaptive Controls - Adaptive Mode", v7, 0xCu);
    sub_10000EA94(v8);
  }

  if (a1)
  {
    swift_beginAccess();
    v11 = *(v2 + 40);
    if (v11)
    {
      sub_10000E7E4((v2 + 16), v11);
      sub_10006DDDC(1);
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000498B0();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000B7CC0(char a1)
{
  v2 = v1;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A570(v4, qword_10011FDE0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19[0] = v8;
    *v7 = 136315138;
    if (a1)
    {
      v9 = 0x6E4F206E727554;
    }

    else
    {
      v9 = 0x776F4E20746F4ELL;
    }

    v10 = sub_100078978(v9, 0xE700000000000000, v19);

    *(v7 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "Requested %s For Adaptive Controls - PersonalizedVolume", v7, 0xCu);
    sub_10000EA94(v8);
  }

  v11 = v2[9] + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  v12 = *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 104);
  if (a1)
  {
    *(v11 + v12) = 0;
    swift_beginAccess();
    v13 = v2[5];
    if (v13)
    {
      sub_10000E7E4(v2 + 2, v13);
      sub_10006DF68(1);
    }
  }

  else
  {
    *(v11 + v12) = 1;
  }

  v14 = v2 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  v15 = *&v14[*(type metadata accessor for HeadphoneModel(0) + 136)];
  v16 = [objc_opt_self() b768e];
  v17 = [v16 productID];

  if (v17 == v15)
  {
    return sub_1000B5D54(0);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100049A54();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000B7F2C(char a1)
{
  v2 = v1;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A570(v4, qword_10011FDE0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16[0] = v8;
    *v7 = 136315138;
    if (a1)
    {
      v9 = 0x6E4F206E727554;
    }

    else
    {
      v9 = 0x776F4E20746F4ELL;
    }

    v10 = sub_100078978(v9, 0xE700000000000000, v16);

    *(v7 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "Requested %s For Adaptive Controls - Conversation Awareness", v7, 0xCu);
    sub_10000EA94(v8);
  }

  v11 = v2[9] + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  v12 = *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 108);
  if (a1)
  {
    *(v11 + v12) = 0;
    swift_beginAccess();
    v13 = v2[5];
    if (v13)
    {
      sub_10000E7E4(v2 + 2, v13);
      sub_10006E28C(1);
    }
  }

  else
  {
    *(v11 + v12) = 1;
  }

  v14 = v2 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  if ((v14[136] & 0xFE) != 2)
  {
    return sub_1000B5D54(0);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100047C68();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000B8158()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested Continue for Whats New", v5, 2u);
  }

  v6 = v1[9] + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v6 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 168)) = 0;
  v7 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  if (v7[136] != 4)
  {
    sub_1000B5D54(0);
    return;
  }

  swift_beginAccess();
  v8 = v1[5];
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = *sub_10000E7E4(v1 + 2, v8) + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  v11 = *(v9 + 144);
  v10 = *(v9 + 152);

  v12.value._countAndFlagsBits = v11;
  v12.value._object = v10;
  LOBYTE(v11) = HeadphoneProxFeatureManager.shouldShowPauseMediaOnSleepCard(deviceAddress:)(v12);

  v13 = v1[5];
  if (v11)
  {
    if (v13)
    {
      sub_10000E7E4(v1 + 2, v13);
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_100048D34();
LABEL_22:
        swift_unknownObjectRelease();
        return;
      }
    }

    return;
  }

  if (!v13)
  {
LABEL_20:
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

    sub_100047C68();
    goto LABEL_22;
  }

  v14 = *sub_10000E7E4(v1 + 2, v13) + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  v16 = *(v14 + 144);
  v15 = *(v14 + 152);

  v17.value._countAndFlagsBits = v16;
  v17.value._object = v15;
  LOBYTE(v16) = HeadphoneProxFeatureManager.shouldShowHeadGesturesCard(deviceAddress:)(v17);

  v18 = v1[5];
  if ((v16 & 1) == 0)
  {
    if (v18)
    {
      v19 = *sub_10000E7E4(v1 + 2, v18) + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      v21 = *(v19 + 144);
      v20 = *(v19 + 152);

      v22.value._countAndFlagsBits = v21;
      v22.value._object = v20;
      LOBYTE(v21) = HeadphoneProxFeatureManager.shouldShowYodelCard(deviceAddress:)(v22);

      if (v21)
      {
        sub_1000B8488();
        return;
      }
    }

    goto LABEL_20;
  }

  if (v18)
  {
    sub_10000E7E4(v1 + 2, v18);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100049D9C();
      goto LABEL_22;
    }
  }
}

uint64_t sub_1000B8488()
{
  swift_beginAccess();

  v1 = sub_1000220A4();

  if (v1)
  {
    result = swift_beginAccess();
    v3 = *(v0 + 40);
    if (v3)
    {
      sub_10000E7E4((v0 + 16), v3);
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        sub_100048848();
        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    if (qword_10011C608 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A570(v4, qword_100122FF0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "showing showHearingProtection false", v7, 2u);
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_100047C68();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1000B8610()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested Turn On for Head Gestures", v5, 2u);
  }

  v6 = v1[9] + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v6 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 164)) = 0;
  swift_beginAccess();
  v7 = v1[5];
  if (v7)
  {
    v8 = *sub_10000E7E4(v1 + 2, v7) + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
    swift_beginAccess();
    v10 = *(v8 + 144);
    v9 = *(v8 + 152);

    v11.value._countAndFlagsBits = v10;
    v11.value._object = v9;
    HeadphoneProxFeatureManager.setHeadGesturesConfig(deviceAddress:enabled:)(v11, 1);
  }

  v12 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  if ((v12[136] & 0xFE) != 4)
  {
    return sub_1000B5D54(0);
  }

  v13 = v1[5];
  if (v13)
  {
    v14 = *sub_10000E7E4(v1 + 2, v13) + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
    swift_beginAccess();
    v16 = *(v14 + 144);
    v15 = *(v14 + 152);

    v17.value._countAndFlagsBits = v16;
    v17.value._object = v15;
    LOBYTE(v16) = HeadphoneProxFeatureManager.shouldShowYodelCard(deviceAddress:)(v17);

    if (v16)
    {
      return sub_1000B8488();
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100047C68();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000B8884()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested Not Now for Head Gestures", v5, 2u);
  }

  v6 = v1[9] + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v6 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 164)) = 1;
  v7 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  if ((v7[136] & 0xFE) != 4)
  {
    return sub_1000B5D54(0);
  }

  swift_beginAccess();
  v8 = v1[5];
  if (v8)
  {
    v9 = *sub_10000E7E4(v1 + 2, v8) + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
    swift_beginAccess();
    v11 = *(v9 + 144);
    v10 = *(v9 + 152);

    v12.value._countAndFlagsBits = v11;
    v12.value._object = v10;
    LOBYTE(v11) = HeadphoneProxFeatureManager.shouldShowYodelCard(deviceAddress:)(v12);

    if (v11)
    {
      return sub_1000B8488();
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100047C68();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000B8A84()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested Set Up for Live Translation", v5, 2u);
  }

  result = swift_beginAccess();
  v7 = *(v1 + 40);
  if (v7)
  {
    sub_10000E7E4((v1 + 16), v7);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_10004A0E4();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1000B8BBC(uint64_t a1, char a2)
{
  v3 = v2;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A570(v6, qword_10011FDE0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Requested Not Now for Live Translation", v9, 2u);
  }

  swift_beginAccess();
  v10 = *(v3 + 40);
  if (v10)
  {
    sub_10000E7E4((v3 + 16), v10);
    sub_100077448(a1, a2 & 1);
  }

  return sub_1000B5D54(0);
}

void sub_1000B8CF0()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested Turn On for Pause Media on Sleep", v5, 2u);
  }

  swift_beginAccess();
  v6 = *(v1 + 40);
  if (v6)
  {
    v7 = *sub_10000E7E4((v1 + 16), v6) + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
    swift_beginAccess();
    v9 = *(v7 + 144);
    v8 = *(v7 + 152);

    v10.value._countAndFlagsBits = v9;
    v10.value._object = v8;
    HeadphoneProxFeatureManager.setPauseMediaOnSleepConfig(deviceAddress:enabled:)(v10, 1);
  }

  sub_1000B8E68();
}

void sub_1000B8E68()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  if (!v1)
  {
LABEL_9:
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

    sub_100047C68();
    goto LABEL_11;
  }

  v2 = *sub_10000E7E4((v0 + 16), v1) + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  v4 = *(v2 + 144);
  v3 = *(v2 + 152);

  v5.value._countAndFlagsBits = v4;
  v5.value._object = v3;
  LOBYTE(v4) = HeadphoneProxFeatureManager.shouldShowHeadGesturesCard(deviceAddress:)(v5);

  v6 = *(v0 + 40);
  if ((v4 & 1) == 0)
  {
    if (v6)
    {
      v7 = *sub_10000E7E4((v0 + 16), v6) + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      v9 = *(v7 + 144);
      v8 = *(v7 + 152);

      v10.value._countAndFlagsBits = v9;
      v10.value._object = v8;
      LOBYTE(v9) = HeadphoneProxFeatureManager.shouldShowYodelCard(deviceAddress:)(v10);

      if (v9)
      {
        sub_1000B8488();
        return;
      }
    }

    goto LABEL_9;
  }

  if (v6)
  {
    sub_10000E7E4((v0 + 16), v6);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100049D9C();
LABEL_11:
      swift_unknownObjectRelease();
    }
  }
}

void sub_1000B8FF0()
{
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A570(v0, qword_10011FDE0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Requested Not Now for Pause Media on Sleep", v3, 2u);
  }

  sub_1000B8E68();
}

double sub_1000B90EC(char a1)
{
  v2 = v1;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A570(v4, qword_10011FDE0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Requested repair instructions", v7, 2u);
  }

  v8 = v2[9] + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v8 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 132)) = 0;
  v9 = a1 & 1;
  *(v2 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_temporarilyPair) = a1 & 1;
  swift_beginAccess();
  v10 = v2[5];
  if (v10)
  {
    v11 = v2[6];
    sub_1000A06AC((v2 + 2), v2[5]);
    (*(v11 + 104))(v9, v10, v11);
  }

  swift_endAccess();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = v2 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  if (v13[*(type metadata accessor for HeadphoneModel(0) + 116)] == 1)
  {
    v14 = *(v2 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_unlockDevice);
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    v16[2] = sub_1000CE6FC;
    v16[3] = v12;
    v16[4] = v15;

    v14(sub_1000CE8C8, v16);
  }

  else
  {

    sub_1000B9394(v17);
  }

  return result;
}

double sub_1000B9394(uint64_t a1)
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v1 - 8);
  __chkstk_darwin(v1);
  v36 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v35 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchTime();
  v34 = *(v37 - 8);
  v6 = __chkstk_darwin(v37);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v29 - v9;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      sub_10004AD70();
      swift_unknownObjectRelease();
    }
  }

  swift_beginAccess();
  v12 = swift_weakLoadStrong();
  if (v12)
  {
    v13 = v12;
    swift_beginAccess();
    v14 = *(v13 + 40);
    if (v14)
    {
      v15 = v5;
      v16 = *(v13 + 48);
      sub_1000A06AC(v13 + 16, *(v13 + 40));
      v17 = *(v16 + 80);
      v18 = v16;
      v5 = v15;
      v17(1, v14, v18);
    }

    swift_endAccess();
  }

  swift_beginAccess();
  v19 = swift_weakLoadStrong();
  if (!v19 || (v20 = v19 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model, swift_beginAccess(), v21 = *(v20 + *(type metadata accessor for HeadphoneModel(0) + 132)), , v21))
  {
    sub_1000084D4(0, &qword_10011D240, OS_dispatch_queue_ptr);
    v31 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    v30 = v10;
    + infix(_:_:)();
    v23 = v33;
    v32 = v3;
    v34 = *(v34 + 8);
    (v34)(v8, v37);
    v24 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    aBlock[4] = sub_1000CE744;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019340;
    aBlock[3] = &unk_100108BB0;
    v25 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v38 = _swiftEmptyArrayStorage;
    sub_10001C380();
    sub_100008438(&unk_100120090, &unk_1000D78C0);
    sub_10001C3D8(&qword_10011F680, &unk_100120090, &unk_1000D78C0, &protocol conformance descriptor for [A]);
    v26 = v36;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v27 = v30;
    v28 = v31;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v25);

    (*(v23 + 8))(v26, v1);
    (*(v35 + 8))(v5, v32);
    (v34)(v27, v37);
  }

  return result;
}

double sub_1000B9924(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000B997C();
  }

  return result;
}

void sub_1000B997C()
{
  if (!*(v0 + 80))
  {
    sub_1000B626C();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v2 = Strong + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_currentView, v3 = swift_unknownObjectWeakLoadStrong(), v4 = *(v2 + 8), swift_unknownObjectRelease(), !v3) || (ObjectType = swift_getObjectType(), v6 = (*(v4 + 32))(ObjectType, v4), swift_unknownObjectRelease(), v6 != 3))
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_100048ED8();

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1000B9A58(char a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    a2();
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        sub_100047C68();
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1000B9ADC()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested skip features", v5, 2u);
  }

  swift_beginAccess();
  v6 = *(v1 + 40);
  if (v6)
  {
    v7 = *sub_10000E7E4((v1 + 16), v6);
    if (qword_10011C750 != -1)
    {
      swift_once();
    }

    v8 = qword_1001231E0;
    v9 = v7 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
    swift_beginAccess();
    v10 = type metadata accessor for HeadphoneModel(0);
    sub_1000A594C(*(v9 + *(v10 + 136)), v8);
  }

  return sub_1000BB0FC("Requested post pairing view", 1);
}

void sub_1000B9C90(const char *a1, char a2)
{
  v5 = v2;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A570(v6, qword_10011FDE0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 2u);
  }

  v10 = *(v5 + 72) + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v10 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 148)) = a2;

  sub_1000B5D54(0);
}

uint64_t sub_1000B9DAC()
{
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A570(v0, qword_10011FDE0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Requested Hey Siri enrollment privacy", v3, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    result = swift_unknownObjectRelease();
    if (Strong)
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v7 = v6;
        v8 = String._bridgeToObjectiveC()();
        v9 = [objc_opt_self() presenterForPrivacySplashWithIdentifier:v8];

        if (v9)
        {
          [v9 setPresentingViewController:v7];
        }

        [v9 present];
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1000B9F78()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested skip Find My install", v5, 2u);
  }

  v6 = *(v1 + 72) + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v6 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 88)) = 1;

  return sub_1000B5D54(0);
}

uint64_t sub_1000BA08C()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested to install Find My", v5, 2u);
  }

  v6 = *(v1 + 72) + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v6 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 88)) = 0;
  swift_beginAccess();
  if (*(v1 + 40))
  {
    sub_10007C1A0();
  }

  return sub_1000B5D54(0);
}

uint64_t sub_1000BA1BC()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested to continue from Linking", v5, 2u);
  }

  v6 = *(v1 + 72) + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v6 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 92)) = 0;

  return sub_1000B5D54(0);
}

void sub_1000BA2CC()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested spatial audio profile create", v5, 2u);
  }

  v6 = *(v1 + 72) + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v6 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 80)) = 0;
  v7 = [objc_opt_self() profileEnrollmentViewController];
  v8 = swift_allocObject();
  swift_weakInit();
  v11[4] = sub_1000CE390;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100019340;
  v11[3] = &unk_100108B38;
  v9 = _Block_copy(v11);

  [v7 setDismissalHandler:v9];
  _Block_release(v9);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = v7;
    sub_10004B5A4(v10);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

double sub_1000BA4D8(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000BA54C("Spatial profile enrollment dismissed", 3);
  }

  return result;
}

uint64_t sub_1000BA54C(const char *a1, char a2)
{
  v5 = v2;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A570(v6, qword_10011FDE0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 2u);
  }

  v10 = *(v5 + 72) + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v10 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 80)) = a2;

  return sub_1000B5D54(0);
}

id sub_1000BA668(uint64_t a1, char a2)
{
  v3 = v2;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A570(v6, qword_10011FDE0);
  v7 = *a1;
  v8 = *(a1 + 8);
  v17 = *(a1 + 16);
  v16 = *(a1 + 40);

  sub_1000CE78C(&v17, v15);
  sub_10000E88C(&v16, v15, &unk_100120010, &unk_1000DA4E0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  sub_1000CE7E8(&v17);
  sub_10000E950(&v16, &unk_100120010, &unk_1000DA4E0);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_100078978(v7, v8, v15);
    *(v11 + 12) = 1024;
    *(v11 + 14) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v9, v10, "Requested toggle announce for %s, enabled: %{BOOL}d", v11, 0x12u);
    sub_10000EA94(v12);
  }

  result = swift_beginAccess();
  v14 = *(v3 + 40);
  if (v14)
  {
    sub_10000E7E4((v3 + 16), v14);
    return sub_10006CB3C(a2 & 1, v7, v8);
  }

  return result;
}

uint64_t sub_1000BA864()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested turn off announce", v5, 2u);
  }

  v6 = v1[9] + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v6 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 72)) = 1;
  v7 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  if (v7[136] != 11)
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_25;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Turning off Announce Notifications";
    goto LABEL_24;
  }

  v8 = v7[*(type metadata accessor for HeadphoneModel(0) + 168)];
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  if (v8 == 1)
  {
    if (v11)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Announce Messages enabled, turning off everything but Messages", v12, 2u);
    }

    if (*(v7 + 1))
    {
      v13 = *(v7 + 12);
      v14 = *(v13 + 16);
      if (v14)
      {
        v33 = v7;

        swift_beginAccess();
        v15 = (v13 + 40);
        do
        {
          v17 = *(v15 - 1);
          v16 = *v15;
          if (v17 != 0xD000000000000013 || 0x80000001000E0CC0 != v16)
          {
            v19 = v15[4];
            if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v20 = v1[5];
              if (v20)
              {
                sub_10000E7E4(v1 + 2, v20);
                v21 = v19;

                sub_10006CB3C(0, v17, v16);
              }
            }
          }

          v15 += 6;
          --v14;
        }

        while (v14);

        v7 = v33;
      }
    }

    goto LABEL_27;
  }

  if (v11)
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Announce Messages not enabled, turning off Announce Notifications";
LABEL_24:
    _os_log_impl(&_mh_execute_header, v9, v10, v23, v22, 2u);
  }

LABEL_25:

  swift_beginAccess();
  v24 = v1[5];
  if (v24)
  {
    v25 = (*sub_10000E7E4(v1 + 2, v24) + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_notificationSettingsCenter);
    v26 = v25[3];
    v27 = v25[4];
    sub_10000E7E4(v25, v26);
    (*(v27 + 8))(0, v26, v27);
  }

LABEL_27:
  if (!*&v7[*(type metadata accessor for HeadphoneModel(0) + 164)])
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Announce Calls not originally enabled, turning off", v30, 2u);
    }

    swift_beginAccess();
    v31 = v1[5];
    if (v31)
    {
      sub_10000E7E4(v1 + 2, v31);
      sub_10006CB3C(0, 0xD000000000000015, 0x80000001000E0A10);
    }
  }

  return sub_1000B5D54(0);
}

double sub_1000BAD18()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested turn off optimized battery charging", v5, 2u);
  }

  swift_beginAccess();
  v7 = *(v1 + 40);
  if (v7)
  {
    sub_10000E7E4((v1 + 16), v7);
    return sub_10006E5B0();
  }

  return result;
}

uint64_t sub_1000BAE28()
{
  v1 = v0 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  v3 = *(v1 + 144);
  v2 = *(v1 + 152);

  LOBYTE(v3) = sub_1000216CC(v3, v2);

  if (v3)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    sub_100048B90();
    return swift_unknownObjectRelease();
  }

  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000A570(v5, qword_10011FDE0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "showHearingTest denied, flase.", v8, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100047C68();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000BAF88()
{
  v1 = v0 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  if (*(v1 + 152))
  {
    v2 = *(v1 + 144);
    v3 = *(v1 + 152);
  }

  else
  {
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  v4 = sub_100021CB0(v2, v3);

  if ((v4 & 1) == 0)
  {
    return sub_1000BAE28();
  }

  if (qword_10011C608 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000A570(v5, qword_100122FF0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "showing showYodelHearingSwitchListeningModeUpsellCard", v8, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000489EC();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000BB0FC(const char *a1, char a2)
{
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A570(v4, qword_10011FDE0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, a1, v7, 2u);
  }

  sub_1000B5D54(a2 & 1);
}

void sub_1000BB1F8(unsigned __int8 a1)
{
  if (a1 > 7u)
  {
    if (a1 > 0x12u)
    {
      if (a1 == 25)
      {
        swift_beginAccess();
        v23 = objc_opt_self();

        v24 = String._bridgeToObjectiveC()();

        [v23 setProxCardShowed:1 forDevice:v24];
      }

      else if (a1 == 19 && *(v1 + 80))
      {
        v8 = v1;
        if (qword_10011C770 != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        sub_10000A570(v9, qword_10011FDE0);
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&_mh_execute_header, v10, v11, "Non genuine card appeared, unpairing device", v12, 2u);
        }

        sub_1000B70E4(sub_10006C500);
        v13 = objc_allocWithZone(NSUserDefaults);
        v14 = String._bridgeToObjectiveC()();
        v15 = [v13 initWithSuiteName:v14];

        if (v15)
        {
          sub_1000A3538(&off_100102A90);
          sub_100008438(&unk_1001200A0, &unk_1000DA540);
          swift_arrayDestroy();
          v16.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v17 = v8 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
          swift_beginAccess();
          if (*(v17 + 152))
          {
            String.uppercased()();
          }

          else
          {
            type metadata accessor for HeadphoneModel(0);
          }

          v25 = String._bridgeToObjectiveC()();

          [v15 setObject:v16.super.isa forKey:v25];
        }
      }
    }

    else if (a1 == 8)
    {
      swift_beginAccess();
      v20 = *(v1 + 40);
      if (v20)
      {
        sub_10000E7E4((v1 + 16), v20);
        sub_10006D940();
        v21 = *(v1 + 40);
        if (v21)
        {
          sub_10000E7E4((v1 + 16), v21);
          sub_10006DC58();
        }
      }
    }

    else if (a1 == 13)
    {
      swift_beginAccess();
      v2 = *(v1 + 40);
      if (v2)
      {
        v3 = *sub_10000E7E4((v1 + 16), v2) + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
        swift_beginAccess();
        v5 = *(v3 + 144);
        v4 = *(v3 + 152);

        v6.value._countAndFlagsBits = v5;
        v6.value._object = v4;
        HeadphoneProxFeatureManager.shouldShowHeadGesturesCard(deviceAddress:)(v6);
      }
    }

    return;
  }

  switch(a1)
  {
    case 5u:
      swift_beginAccess();
      v18 = *(v1 + 40);
      if (!v18)
      {
        return;
      }

      v19 = (v1 + 16);
      goto LABEL_31;
    case 6u:
      swift_beginAccess();
      v22 = *(v1 + 40);
      if (!v22)
      {
        return;
      }

      sub_10000E7E4((v1 + 16), v22);
      sub_10006CE54();
      v18 = *(v1 + 40);
      if (!v18)
      {
        return;
      }

      v19 = (v1 + 16);
LABEL_31:
      sub_10000E7E4(v19, v18);
      sub_10006D350();
      return;
    case 7u:
      swift_beginAccess();
      v7 = *(v1 + 40);
      if (v7)
      {
        sub_10000E7E4((v1 + 16), v7);
        sub_10006D4D4();
      }

      break;
  }
}

uint64_t sub_1000BB69C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100008438(&qword_10011CCF0, qword_1000D61B0);
  v5 = __chkstk_darwin(v4 - 8);
  v283 = &v281 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v281 - v7;
  v9 = type metadata accessor for HeadphoneViewModel(0);
  v10 = __chkstk_darwin(v9);
  v12 = &v281 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v281 - v13;
  v15 = type metadata accessor for HeadphoneModel(0);
  v16 = __chkstk_darwin(v15);
  v18 = &v281 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v281 - v19;
  v284 = a1;
  switch(a1)
  {
    case 1:
      v51 = v285;
      sub_1000C0FB8(a2);
      break;
    case 2:
      v51 = v285;
      sub_1000C476C(a2);
      break;
    case 3:
      v51 = v285;
      sub_1000C1340(a2);
      break;
    case 4:
      v51 = v285;
      sub_1000C1894(a2);
      break;
    case 5:
    case 6:
      *(a2 + 96) = 0;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      v34 = v9[11];
      v35 = type metadata accessor for HeadphoneAssets(0);
      (*(*(v35 - 8) + 56))(a2 + v34, 1, 1, v35);
      type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
      swift_storeEnumTagMultiPayload();
      v36 = (a2 + v9[13]);
      *v36 = 0u;
      v36[1] = 0u;
      v37 = (a2 + v9[14]);
      sub_10001309C(&v286);
      v38 = v299;
      v37[12] = v298;
      v37[13] = v38;
      v37[14] = v300;
      v39 = v295;
      v37[8] = v294;
      v37[9] = v39;
      v40 = v297;
      v37[10] = v296;
      v37[11] = v40;
      v41 = v291;
      v37[4] = v290;
      v37[5] = v41;
      v42 = v293;
      v37[6] = v292;
      v37[7] = v42;
      v43 = v287;
      *v37 = v286;
      v37[1] = v43;
      v44 = v289;
      v37[2] = v288;
      v37[3] = v44;
      *(a2 + v9[15]) = 0;
      *(a2 + v9[16]) = 0;
      *(a2 + v9[17]) = _swiftEmptyArrayStorage;
      *(a2 + v9[18]) = _swiftEmptyArrayStorage;
      v45 = (a2 + v9[19]);
      v45[5] = 0u;
      v45[6] = 0u;
      v45[3] = 0u;
      v45[4] = 0u;
      v45[1] = 0u;
      v45[2] = 0u;
      *v45 = 0u;
      v46 = (a2 + v9[20]);
      *v46 = 0;
      v46[1] = 0;
      *(a2 + v9[22]) = 0;
      *(a2 + v9[23]) = 0;
      *(a2 + v9[24]) = 0;
      *a2 = sub_100033A5C(56);
      *(a2 + 8) = v47;
      *(a2 + 16) = sub_100033A5C(57);
      *(a2 + 24) = v48;
      *(a2 + 32) = sub_100033A5C(59);
      *(a2 + 40) = v49;
      v50 = 58;
      goto LABEL_46;
    case 7:
      v51 = v285;
      sub_1000C1B38(a2);
      break;
    case 8:
      *(a2 + 16) = 0;
      *(a2 + 24) = 0xE000000000000000;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0;
      v211 = v9[11];
      v212 = type metadata accessor for HeadphoneAssets(0);
      (*(*(v212 - 8) + 56))(a2 + v211, 1, 1, v212);
      type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
      swift_storeEnumTagMultiPayload();
      v213 = (a2 + v9[13]);
      *v213 = 0u;
      v213[1] = 0u;
      v214 = (a2 + v9[14]);
      sub_10001309C(&v286);
      v215 = v299;
      v214[12] = v298;
      v214[13] = v215;
      v214[14] = v300;
      v216 = v295;
      v214[8] = v294;
      v214[9] = v216;
      v217 = v297;
      v214[10] = v296;
      v214[11] = v217;
      v218 = v291;
      v214[4] = v290;
      v214[5] = v218;
      v219 = v293;
      v214[6] = v292;
      v214[7] = v219;
      v220 = v287;
      *v214 = v286;
      v214[1] = v220;
      v221 = v289;
      v214[2] = v288;
      v214[3] = v221;
      *(a2 + v9[15]) = 0;
      *(a2 + v9[16]) = 0;
      *(a2 + v9[17]) = _swiftEmptyArrayStorage;
      *(a2 + v9[18]) = _swiftEmptyArrayStorage;
      v222 = (a2 + v9[19]);
      v222[5] = 0u;
      v222[6] = 0u;
      v222[3] = 0u;
      v222[4] = 0u;
      v222[1] = 0u;
      v222[2] = 0u;
      *v222 = 0u;
      v223 = (a2 + v9[20]);
      *v223 = 0;
      v223[1] = 0;
      *(a2 + v9[22]) = 0;
      *(a2 + v9[23]) = 0;
      *(a2 + v9[24]) = 0;
      *a2 = sub_100033A5C(69);
      *(a2 + 8) = v224;
      v101 = 70;
      goto LABEL_34;
    case 9:
      *(a2 + 96) = 0;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      v86 = v9[11];
      v87 = type metadata accessor for HeadphoneAssets(0);
      (*(*(v87 - 8) + 56))(a2 + v86, 1, 1, v87);
      type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
      swift_storeEnumTagMultiPayload();
      v88 = (a2 + v9[13]);
      *v88 = 0u;
      v88[1] = 0u;
      v89 = (a2 + v9[14]);
      sub_10001309C(&v286);
      v90 = v299;
      v89[12] = v298;
      v89[13] = v90;
      v89[14] = v300;
      v91 = v295;
      v89[8] = v294;
      v89[9] = v91;
      v92 = v297;
      v89[10] = v296;
      v89[11] = v92;
      v93 = v291;
      v89[4] = v290;
      v89[5] = v93;
      v94 = v293;
      v89[6] = v292;
      v89[7] = v94;
      v95 = v287;
      *v89 = v286;
      v89[1] = v95;
      v96 = v289;
      v89[2] = v288;
      v89[3] = v96;
      *(a2 + v9[15]) = 0;
      *(a2 + v9[16]) = 0;
      *(a2 + v9[17]) = _swiftEmptyArrayStorage;
      *(a2 + v9[18]) = _swiftEmptyArrayStorage;
      v97 = (a2 + v9[19]);
      v97[5] = 0u;
      v97[6] = 0u;
      v97[3] = 0u;
      v97[4] = 0u;
      v97[1] = 0u;
      v97[2] = 0u;
      *v97 = 0u;
      v98 = (a2 + v9[20]);
      *v98 = 0;
      v98[1] = 0;
      *(a2 + v9[22]) = 0;
      *(a2 + v9[23]) = 0;
      *(a2 + v9[24]) = 0;
      *a2 = sub_100033A5C(78);
      *(a2 + 8) = v99;
      *(a2 + 16) = sub_100033A5C(79);
      *(a2 + 24) = v100;
      v101 = 80;
      goto LABEL_34;
    case 10:
      *(a2 + 96) = 0;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      v196 = v9[11];
      v197 = type metadata accessor for HeadphoneAssets(0);
      (*(*(v197 - 8) + 56))(a2 + v196, 1, 1, v197);
      type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
      swift_storeEnumTagMultiPayload();
      v198 = (a2 + v9[13]);
      *v198 = 0u;
      v198[1] = 0u;
      v199 = (a2 + v9[14]);
      sub_10001309C(&v286);
      v200 = v299;
      v199[12] = v298;
      v199[13] = v200;
      v199[14] = v300;
      v201 = v295;
      v199[8] = v294;
      v199[9] = v201;
      v202 = v297;
      v199[10] = v296;
      v199[11] = v202;
      v203 = v291;
      v199[4] = v290;
      v199[5] = v203;
      v204 = v293;
      v199[6] = v292;
      v199[7] = v204;
      v205 = v287;
      *v199 = v286;
      v199[1] = v205;
      v206 = v289;
      v199[2] = v288;
      v199[3] = v206;
      *(a2 + v9[15]) = 0;
      *(a2 + v9[16]) = 0;
      *(a2 + v9[17]) = _swiftEmptyArrayStorage;
      *(a2 + v9[18]) = _swiftEmptyArrayStorage;
      v207 = (a2 + v9[19]);
      v207[5] = 0u;
      v207[6] = 0u;
      v207[3] = 0u;
      v207[4] = 0u;
      v207[1] = 0u;
      v207[2] = 0u;
      *v207 = 0u;
      v208 = (a2 + v9[20]);
      *v208 = 0;
      v208[1] = 0;
      *(a2 + v9[22]) = 0;
      *(a2 + v9[23]) = 0;
      *(a2 + v9[24]) = 0;
      *a2 = sub_100033A5C(81);
      *(a2 + 8) = v209;
      *(a2 + 16) = sub_100033A5C(82);
      *(a2 + 24) = v210;
      v101 = 83;
LABEL_34:
      *(a2 + 32) = sub_100033A5C(v101);
      *(a2 + 40) = v225;
      v50 = 71;
      goto LABEL_46;
    case 11:
      v51 = v285;
      sub_1000C1ECC(a2);
      break;
    case 12:
      v51 = v285;
      sub_1000C21E8(a2);
      break;
    case 13:
      v51 = v285;
      sub_1000C24AC(a2);
      break;
    case 14:
      *(a2 + 96) = 0;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      v70 = v9[11];
      v71 = type metadata accessor for HeadphoneAssets(0);
      (*(*(v71 - 8) + 56))(a2 + v70, 1, 1, v71);
      type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
      swift_storeEnumTagMultiPayload();
      v72 = (a2 + v9[13]);
      *v72 = 0u;
      v72[1] = 0u;
      v73 = (a2 + v9[14]);
      sub_10001309C(&v286);
      v74 = v299;
      v73[12] = v298;
      v73[13] = v74;
      v73[14] = v300;
      v75 = v295;
      v73[8] = v294;
      v73[9] = v75;
      v76 = v297;
      v73[10] = v296;
      v73[11] = v76;
      v77 = v291;
      v73[4] = v290;
      v73[5] = v77;
      v78 = v293;
      v73[6] = v292;
      v73[7] = v78;
      v79 = v287;
      *v73 = v286;
      v73[1] = v79;
      v80 = v289;
      v73[2] = v288;
      v73[3] = v80;
      *(a2 + v9[15]) = 0;
      *(a2 + v9[16]) = 0;
      *(a2 + v9[17]) = _swiftEmptyArrayStorage;
      *(a2 + v9[18]) = _swiftEmptyArrayStorage;
      v81 = (a2 + v9[19]);
      v81[5] = 0u;
      v81[6] = 0u;
      v81[3] = 0u;
      v81[4] = 0u;
      v81[1] = 0u;
      v81[2] = 0u;
      *v81 = 0u;
      v82 = (a2 + v9[20]);
      *v82 = 0;
      v82[1] = 0;
      *(a2 + v9[22]) = 0;
      *(a2 + v9[23]) = 0;
      *(a2 + v9[24]) = 0;
      *a2 = sub_100033A5C(96);
      *(a2 + 8) = v83;
      *(a2 + 16) = sub_100033A5C(97);
      *(a2 + 24) = v84;
      *(a2 + 32) = sub_100033A5C(98);
      *(a2 + 40) = v85;
      v50 = 99;
      goto LABEL_46;
    case 15:
      v131 = OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
      v51 = v285;
      swift_beginAccess();
      v282 = type metadata accessor for HeadphoneModel;
      sub_1000CE178(v51 + v131, v20, type metadata accessor for HeadphoneModel);
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0;
      v132 = v9[11];
      v133 = type metadata accessor for HeadphoneAssets(0);
      (*(*(v133 - 8) + 56))(a2 + v132, 1, 1, v133);
      type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
      swift_storeEnumTagMultiPayload();
      v134 = (a2 + v9[13]);
      *v134 = 0u;
      v134[1] = 0u;
      v135 = (a2 + v9[14]);
      sub_10001309C(&v286);
      v136 = v299;
      v135[12] = v298;
      v135[13] = v136;
      v135[14] = v300;
      v137 = v295;
      v135[8] = v294;
      v135[9] = v137;
      v138 = v297;
      v135[10] = v296;
      v135[11] = v138;
      v139 = v291;
      v135[4] = v290;
      v135[5] = v139;
      v140 = v293;
      v135[6] = v292;
      v135[7] = v140;
      v141 = v287;
      *v135 = v286;
      v135[1] = v141;
      v142 = v289;
      v135[2] = v288;
      v135[3] = v142;
      *(a2 + v9[15]) = 0;
      *(a2 + v9[16]) = 0;
      *(a2 + v9[17]) = _swiftEmptyArrayStorage;
      *(a2 + v9[18]) = _swiftEmptyArrayStorage;
      v143 = (a2 + v9[19]);
      v143[5] = 0u;
      v143[6] = 0u;
      v143[3] = 0u;
      v143[4] = 0u;
      v143[1] = 0u;
      v143[2] = 0u;
      *v143 = 0u;
      v144 = (a2 + v9[20]);
      *(a2 + v9[22]) = 0;
      *(a2 + v9[23]) = 0;
      *(a2 + v9[24]) = 0;
      *a2 = sub_100033A5C(106);
      *(a2 + 8) = v145;
      *(a2 + 16) = sub_100033A5C(107);
      *(a2 + 24) = v146;
      *(a2 + 32) = sub_100033A5C(108);
      *(a2 + 40) = v147;
      *(a2 + 48) = sub_100033A5C(109);
      *(a2 + 56) = v148;
      v149 = *(v20 + 14);
      v150 = *(v20 + 15);
      sub_10007C0D4(v149, v150);
      sub_1000CE1E0(v20, v282);
      *v144 = v149;
      v144[1] = v150;
      break;
    case 16:
      *(a2 + 16) = 0;
      *(a2 + 24) = 0xE000000000000000;
      *(a2 + 48) = 0;
      *(a2 + 56) = 0xE000000000000000;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0;
      v55 = v9[11];
      v56 = type metadata accessor for HeadphoneAssets(0);
      (*(*(v56 - 8) + 56))(a2 + v55, 1, 1, v56);
      type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
      swift_storeEnumTagMultiPayload();
      v57 = (a2 + v9[13]);
      *v57 = 0u;
      v57[1] = 0u;
      v58 = (a2 + v9[14]);
      sub_10001309C(&v286);
      v59 = v299;
      v58[12] = v298;
      v58[13] = v59;
      v58[14] = v300;
      v60 = v295;
      v58[8] = v294;
      v58[9] = v60;
      v61 = v297;
      v58[10] = v296;
      v58[11] = v61;
      v62 = v291;
      v58[4] = v290;
      v58[5] = v62;
      v63 = v293;
      v58[6] = v292;
      v58[7] = v63;
      v64 = v287;
      *v58 = v286;
      v58[1] = v64;
      v65 = v289;
      v58[2] = v288;
      v58[3] = v65;
      *(a2 + v9[15]) = 0;
      *(a2 + v9[16]) = 0;
      *(a2 + v9[17]) = _swiftEmptyArrayStorage;
      *(a2 + v9[18]) = _swiftEmptyArrayStorage;
      v66 = (a2 + v9[19]);
      v66[5] = 0u;
      v66[6] = 0u;
      v66[3] = 0u;
      v66[4] = 0u;
      v66[1] = 0u;
      v66[2] = 0u;
      *v66 = 0u;
      v67 = (a2 + v9[20]);
      *v67 = 0;
      v67[1] = 0;
      *(a2 + v9[22]) = 0;
      *(a2 + v9[23]) = 0;
      *(a2 + v9[24]) = 0;
      *a2 = sub_100033A5C(48);
      *(a2 + 8) = v68;
      v69 = 5;
      goto LABEL_39;
    case 17:
    case 36:
    case 37:
    case 39:
      *a2 = 0;
      *(a2 + 8) = 0xE000000000000000;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0xE000000000000000;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0xE000000000000000;
      *(a2 + 48) = 0;
      *(a2 + 56) = 0xE000000000000000;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0;
      v21 = v9[11];
      v22 = type metadata accessor for HeadphoneAssets(0);
      (*(*(v22 - 8) + 56))(a2 + v21, 1, 1, v22);
      type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
      swift_storeEnumTagMultiPayload();
      v23 = (a2 + v9[13]);
      *v23 = 0u;
      v23[1] = 0u;
      v24 = (a2 + v9[14]);
      sub_10001309C(&v286);
      v25 = v299;
      v24[12] = v298;
      v24[13] = v25;
      v24[14] = v300;
      v26 = v295;
      v24[8] = v294;
      v24[9] = v26;
      v27 = v297;
      v24[10] = v296;
      v24[11] = v27;
      v28 = v291;
      v24[4] = v290;
      v24[5] = v28;
      v29 = v293;
      v24[6] = v292;
      v24[7] = v29;
      v30 = v287;
      *v24 = v286;
      v24[1] = v30;
      v31 = v289;
      v24[2] = v288;
      v24[3] = v31;
      *(a2 + v9[15]) = 0;
      *(a2 + v9[16]) = 0;
      *(a2 + v9[17]) = _swiftEmptyArrayStorage;
      *(a2 + v9[18]) = _swiftEmptyArrayStorage;
      v32 = (a2 + v9[19]);
      v32[5] = 0u;
      v32[6] = 0u;
      v32[3] = 0u;
      v32[4] = 0u;
      v32[1] = 0u;
      v32[2] = 0u;
      *v32 = 0u;
      v33 = (a2 + v9[20]);
      *v33 = 0;
      v33[1] = 0;
      *(a2 + v9[21]) = 0;
      goto LABEL_3;
    case 18:
      v51 = v285;
      sub_1000C2774(a2);
      break;
    case 19:
      *(v14 + 6) = 0;
      v175 = (v14 + 48);
      *(v14 + 7) = 0xE000000000000000;
      v282 = (v14 + 32);
      *(v14 + 4) = 0u;
      *(v14 + 5) = 0u;
      *(v14 + 12) = 0;
      v176 = v9[11];
      v177 = type metadata accessor for HeadphoneAssets(0);
      (*(*(v177 - 8) + 56))(&v14[v176], 1, 1, v177);
      type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
      swift_storeEnumTagMultiPayload();
      v178 = &v14[v9[13]];
      *v178 = 0u;
      *(v178 + 1) = 0u;
      v179 = &v14[v9[14]];
      sub_10001309C(&v286);
      v180 = v299;
      *(v179 + 12) = v298;
      *(v179 + 13) = v180;
      *(v179 + 14) = v300;
      v181 = v295;
      *(v179 + 8) = v294;
      *(v179 + 9) = v181;
      v182 = v297;
      *(v179 + 10) = v296;
      *(v179 + 11) = v182;
      v183 = v291;
      *(v179 + 4) = v290;
      *(v179 + 5) = v183;
      v184 = v293;
      *(v179 + 6) = v292;
      *(v179 + 7) = v184;
      v185 = v287;
      *v179 = v286;
      *(v179 + 1) = v185;
      v186 = v289;
      *(v179 + 2) = v288;
      *(v179 + 3) = v186;
      v14[v9[15]] = 0;
      v14[v9[16]] = 0;
      *&v14[v9[17]] = _swiftEmptyArrayStorage;
      *&v14[v9[18]] = _swiftEmptyArrayStorage;
      v187 = &v14[v9[19]];
      *(v187 + 5) = 0u;
      *(v187 + 6) = 0u;
      *(v187 + 3) = 0u;
      *(v187 + 4) = 0u;
      *(v187 + 1) = 0u;
      *(v187 + 2) = 0u;
      *v187 = 0u;
      v188 = &v14[v9[20]];
      *v188 = 0;
      *(v188 + 1) = 0;
      *&v14[v9[21]] = 0;
      *&v14[v9[22]] = 0;
      v14[v9[23]] = 0;
      v14[v9[24]] = 0;
      *v14 = sub_100033A5C(115);
      *(v14 + 1) = v189;
      *(v14 + 2) = sub_100033A5C(116);
      *(v14 + 3) = v190;
      v51 = v285;
      v191 = v285 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
      swift_beginAccess();
      v192 = *(v191 + 136);
      v193 = v14 + 40;
      if (v192)
      {
        *v282 = sub_100033A5C(120);
        *v193 = v194;
        v195 = 121;
        v193 = v14 + 56;
      }

      else
      {
        v195 = 2;
        v175 = v282;
      }

      *v175 = sub_100033A5C(v195);
      *v193 = v280;
      v174 = v14;
      goto LABEL_53;
    case 20:
      v51 = v285;
      sub_1000C38E0(a2);
      break;
    case 21:
      v51 = v285;
      sub_1000C3C3C(a2);
      break;
    case 22:
      v51 = v285;
      sub_1000C40F8(a2);
      break;
    case 23:
      *(a2 + 48) = 0;
      *(a2 + 56) = 0xE000000000000000;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0;
      v228 = v9[11];
      v229 = type metadata accessor for HeadphoneAssets(0);
      (*(*(v229 - 8) + 56))(a2 + v228, 1, 1, v229);
      type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
      swift_storeEnumTagMultiPayload();
      v230 = (a2 + v9[13]);
      *v230 = 0u;
      v230[1] = 0u;
      v231 = (a2 + v9[14]);
      sub_10001309C(&v286);
      v232 = v299;
      v231[12] = v298;
      v231[13] = v232;
      v231[14] = v300;
      v233 = v295;
      v231[8] = v294;
      v231[9] = v233;
      v234 = v297;
      v231[10] = v296;
      v231[11] = v234;
      v235 = v291;
      v231[4] = v290;
      v231[5] = v235;
      v236 = v293;
      v231[6] = v292;
      v231[7] = v236;
      v237 = v287;
      *v231 = v286;
      v231[1] = v237;
      v238 = v289;
      v231[2] = v288;
      v231[3] = v238;
      *(a2 + v9[15]) = 0;
      *(a2 + v9[16]) = 0;
      *(a2 + v9[17]) = _swiftEmptyArrayStorage;
      *(a2 + v9[18]) = _swiftEmptyArrayStorage;
      v239 = (a2 + v9[19]);
      v239[5] = 0u;
      v239[6] = 0u;
      v239[3] = 0u;
      v239[4] = 0u;
      v239[1] = 0u;
      v239[2] = 0u;
      *v239 = 0u;
      v240 = (a2 + v9[20]);
      *v240 = 0;
      v240[1] = 0;
      *(a2 + v9[22]) = 0;
      *(a2 + v9[23]) = 0;
      *(a2 + v9[24]) = 0;
      *a2 = sub_100033A5C(36);
      *(a2 + 8) = v241;
      *(a2 + 16) = sub_100033A5C(37);
      *(a2 + 24) = v242;
      v69 = 2;
LABEL_39:
      *(a2 + 32) = sub_100033A5C(v69);
      *(a2 + 40) = v243;
      goto LABEL_47;
    case 24:
      *a2 = 0;
      *(a2 + 8) = 0xE000000000000000;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0xE000000000000000;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0xE000000000000000;
      *(a2 + 48) = 0;
      *(a2 + 56) = 0xE000000000000000;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0;
      v244 = v9[11];
      v245 = type metadata accessor for HeadphoneAssets(0);
      (*(*(v245 - 8) + 56))(a2 + v244, 1, 1, v245);
      type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
      swift_storeEnumTagMultiPayload();
      v246 = (a2 + v9[13]);
      *v246 = 0u;
      v246[1] = 0u;
      v247 = (a2 + v9[14]);
      sub_10001309C(&v286);
      v248 = v299;
      v247[12] = v298;
      v247[13] = v248;
      v247[14] = v300;
      v249 = v295;
      v247[8] = v294;
      v247[9] = v249;
      v250 = v297;
      v247[10] = v296;
      v247[11] = v250;
      v251 = v291;
      v247[4] = v290;
      v247[5] = v251;
      v252 = v293;
      v247[6] = v292;
      v247[7] = v252;
      v253 = v287;
      *v247 = v286;
      v247[1] = v253;
      v254 = v289;
      v247[2] = v288;
      v247[3] = v254;
      *(a2 + v9[15]) = 0;
      *(a2 + v9[16]) = 0;
      *(a2 + v9[17]) = _swiftEmptyArrayStorage;
      *(a2 + v9[18]) = _swiftEmptyArrayStorage;
      v255 = (a2 + v9[19]);
      v255[5] = 0u;
      v255[6] = 0u;
      v255[3] = 0u;
      v255[4] = 0u;
      v255[1] = 0u;
      v255[2] = 0u;
      *v255 = 0u;
      v256 = (a2 + v9[20]);
      *v256 = 0;
      v256[1] = 0;
LABEL_3:
      *(a2 + v9[22]) = 0;
      *(a2 + v9[23]) = 0;
      *(a2 + v9[24]) = 0;
      goto LABEL_47;
    case 25:
      *a2 = 0;
      *(a2 + 8) = 0xE000000000000000;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0xE000000000000000;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0xE000000000000000;
      *(a2 + 48) = 0;
      *(a2 + 56) = 0xE000000000000000;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0;
      v115 = v9[11];
      v116 = type metadata accessor for HeadphoneAssets(0);
      (*(*(v116 - 8) + 56))(a2 + v115, 1, 1, v116);
      type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
      swift_storeEnumTagMultiPayload();
      v117 = (a2 + v9[13]);
      *v117 = 0u;
      v117[1] = 0u;
      v118 = (a2 + v9[14]);
      sub_10001309C(&v286);
      v119 = v299;
      v118[12] = v298;
      v118[13] = v119;
      v118[14] = v300;
      v120 = v295;
      v118[8] = v294;
      v118[9] = v120;
      v121 = v297;
      v118[10] = v296;
      v118[11] = v121;
      v122 = v291;
      v118[4] = v290;
      v118[5] = v122;
      v123 = v293;
      v118[6] = v292;
      v118[7] = v123;
      v124 = v287;
      *v118 = v286;
      v118[1] = v124;
      v125 = v289;
      v118[2] = v288;
      v118[3] = v125;
      *(a2 + v9[15]) = 0;
      *(a2 + v9[16]) = 0;
      *(a2 + v9[17]) = _swiftEmptyArrayStorage;
      *(a2 + v9[18]) = _swiftEmptyArrayStorage;
      v126 = (a2 + v9[19]);
      v126[5] = 0u;
      v126[6] = 0u;
      v126[3] = 0u;
      v126[4] = 0u;
      v126[1] = 0u;
      v126[2] = 0u;
      *v126 = 0u;
      v127 = (a2 + v9[20]);
      *v127 = 0;
      v127[1] = 0;
      *(a2 + v9[21]) = 0;
      *(a2 + v9[22]) = 0;
      *(a2 + v9[23]) = 0;
      *(a2 + v9[24]) = 0;
      *a2 = sub_100033A5C(53);
      *(a2 + 8) = v128;
      *(a2 + 16) = sub_100033A5C(54);
      *(a2 + 24) = v129;
      *(a2 + 32) = sub_100033A5C(55);
      *(a2 + 40) = v130;
      v50 = 1;
      goto LABEL_46;
    case 26:
      *a2 = 0;
      *(a2 + 8) = 0xE000000000000000;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0xE000000000000000;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0xE000000000000000;
      *(a2 + 48) = 0;
      *(a2 + 56) = 0xE000000000000000;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0;
      v102 = v9[11];
      v103 = type metadata accessor for HeadphoneAssets(0);
      (*(*(v103 - 8) + 56))(a2 + v102, 1, 1, v103);
      type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
      swift_storeEnumTagMultiPayload();
      v104 = (a2 + v9[13]);
      *v104 = 0u;
      v104[1] = 0u;
      v105 = (a2 + v9[14]);
      sub_10001309C(&v286);
      v106 = v299;
      v105[12] = v298;
      v105[13] = v106;
      v105[14] = v300;
      v107 = v295;
      v105[8] = v294;
      v105[9] = v107;
      v108 = v297;
      v105[10] = v296;
      v105[11] = v108;
      v109 = v291;
      v105[4] = v290;
      v105[5] = v109;
      v110 = v293;
      v105[6] = v292;
      v105[7] = v110;
      v111 = v287;
      *v105 = v286;
      v105[1] = v111;
      v112 = v289;
      v105[2] = v288;
      v105[3] = v112;
      *(a2 + v9[15]) = 0;
      *(a2 + v9[16]) = 0;
      *(a2 + v9[17]) = _swiftEmptyArrayStorage;
      *(a2 + v9[18]) = _swiftEmptyArrayStorage;
      v113 = (a2 + v9[19]);
      v113[5] = 0u;
      v113[6] = 0u;
      v113[3] = 0u;
      v113[4] = 0u;
      v113[1] = 0u;
      v113[2] = 0u;
      *v113 = 0u;
      v114 = (a2 + v9[20]);
      *v114 = 0;
      v114[1] = 0;
      *(a2 + v9[21]) = 0;
      *(a2 + v9[22]) = 0;
      *(a2 + v9[23]) = 0;
      *(a2 + v9[24]) = 0;
      v50 = 34;
      goto LABEL_46;
    case 27:
      *(a2 + 48) = 0;
      *(a2 + 56) = 0xE000000000000000;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0;
      v257 = v9[11];
      v258 = type metadata accessor for HeadphoneAssets(0);
      (*(*(v258 - 8) + 56))(a2 + v257, 1, 1, v258);
      type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
      swift_storeEnumTagMultiPayload();
      v259 = (a2 + v9[13]);
      *v259 = 0u;
      v259[1] = 0u;
      v260 = (a2 + v9[14]);
      sub_10001309C(&v286);
      v261 = v299;
      v260[12] = v298;
      v260[13] = v261;
      v260[14] = v300;
      v262 = v295;
      v260[8] = v294;
      v260[9] = v262;
      v263 = v297;
      v260[10] = v296;
      v260[11] = v263;
      v264 = v291;
      v260[4] = v290;
      v260[5] = v264;
      v265 = v293;
      v260[6] = v292;
      v260[7] = v265;
      v266 = v287;
      *v260 = v286;
      v260[1] = v266;
      v267 = v289;
      v260[2] = v288;
      v260[3] = v267;
      *(a2 + v9[15]) = 0;
      *(a2 + v9[16]) = 0;
      *(a2 + v9[17]) = _swiftEmptyArrayStorage;
      *(a2 + v9[18]) = _swiftEmptyArrayStorage;
      v268 = (a2 + v9[19]);
      v268[5] = 0u;
      v268[6] = 0u;
      v268[3] = 0u;
      v268[4] = 0u;
      v268[1] = 0u;
      v268[2] = 0u;
      *v268 = 0u;
      v269 = (a2 + v9[20]);
      *v269 = 0;
      v269[1] = 0;
      *(a2 + v9[21]) = 0;
      *(a2 + v9[22]) = 0;
      *(a2 + v9[23]) = 0;
      *(a2 + v9[24]) = 0;
      *a2 = sub_100033A5C(122);
      *(a2 + 8) = v270;
      *(a2 + 16) = sub_100033A5C(123);
      *(a2 + 24) = v271;
      *(a2 + 32) = sub_100033A5C(124);
      *(a2 + 40) = v272;
      v50 = 3;
LABEL_46:
      *(a2 + 48) = sub_100033A5C(v50);
      *(a2 + 56) = v273;
LABEL_47:
      v51 = v285;
      break;
    case 28:
      v51 = v285;
      sub_1000C457C(a2);
      break;
    case 29:
      v226 = a2;
      v227 = 29;
      goto LABEL_44;
    case 30:
      v226 = a2;
      v227 = 30;
      goto LABEL_44;
    case 31:
      v226 = a2;
      v227 = 31;
LABEL_44:
      v51 = v285;
      sub_1000C4E28(v227, v226);
      break;
    case 32:
      v151 = OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
      v51 = v285;
      swift_beginAccess();
      sub_1000CE178(v51 + v151, v18, type metadata accessor for HeadphoneModel);
      *(v12 + 4) = 0u;
      *(v12 + 5) = 0u;
      *(v12 + 12) = 0;
      v152 = v9[11];
      v153 = type metadata accessor for HeadphoneAssets(0);
      (*(*(v153 - 8) + 56))(&v12[v152], 1, 1, v153);
      type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
      swift_storeEnumTagMultiPayload();
      v154 = &v12[v9[13]];
      *v154 = 0u;
      *(v154 + 1) = 0u;
      v155 = &v12[v9[14]];
      sub_10001309C(&v286);
      v156 = v299;
      *(v155 + 12) = v298;
      *(v155 + 13) = v156;
      *(v155 + 14) = v300;
      v157 = v295;
      *(v155 + 8) = v294;
      *(v155 + 9) = v157;
      v158 = v297;
      *(v155 + 10) = v296;
      *(v155 + 11) = v158;
      v159 = v291;
      *(v155 + 4) = v290;
      *(v155 + 5) = v159;
      v160 = v293;
      *(v155 + 6) = v292;
      *(v155 + 7) = v160;
      v161 = v287;
      *v155 = v286;
      *(v155 + 1) = v161;
      v162 = v289;
      *(v155 + 2) = v288;
      *(v155 + 3) = v162;
      v12[v9[15]] = 0;
      v12[v9[16]] = 0;
      *&v12[v9[17]] = _swiftEmptyArrayStorage;
      *&v12[v9[18]] = _swiftEmptyArrayStorage;
      v163 = &v12[v9[19]];
      *(v163 + 5) = 0u;
      *(v163 + 6) = 0u;
      *(v163 + 3) = 0u;
      *(v163 + 4) = 0u;
      *(v163 + 1) = 0u;
      *(v163 + 2) = 0u;
      *v163 = 0u;
      v164 = &v12[v9[20]];
      *v164 = 0;
      *(v164 + 1) = 0;
      *&v12[v9[21]] = 0;
      *&v12[v9[22]] = 0;
      v12[v9[23]] = 0;
      v12[v9[24]] = 0;
      *v12 = sub_100033A5C(110);
      *(v12 + 1) = v165;
      *(v12 + 2) = sub_100033A5C(111);
      *(v12 + 3) = v166;
      if (sub_10001E474(*&v18[*(v15 + 136)]))
      {
        v167 = sub_100033A5C(112);
        v282 = v168;

        v169 = v282;
        *(v12 + 2) = v167;
        *(v12 + 3) = v169;
      }

      *(v12 + 4) = sub_100033A5C(113);
      *(v12 + 5) = v170;
      v171 = sub_100033A5C(114);
      v173 = v172;
      sub_1000CE1E0(v18, type metadata accessor for HeadphoneModel);
      *(v12 + 6) = v171;
      *(v12 + 7) = v173;
      v174 = v12;
LABEL_53:
      sub_1000CE240(v174, a2, type metadata accessor for HeadphoneViewModel);
      break;
    case 33:
      v53 = a2;
      v54 = 33;
      goto LABEL_37;
    case 34:
      v53 = a2;
      v54 = 34;
      goto LABEL_37;
    case 35:
      v53 = a2;
      v54 = 35;
LABEL_37:
      v51 = v285;
      sub_1000C5130(v54, v53);
      break;
    case 38:
      type metadata accessor for HeadphoneTrackWorkoutViewController();
      v51 = v285;
      v52 = v285 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
      swift_beginAccess();
      sub_10002FD54(*(v52 + *(v15 + 136)), a2);
      break;
    default:
      v51 = v285;
      sub_1000C0C94(a2);
      break;
  }

  v274 = v9[11];
  sub_10000E88C(a2 + v274, v8, &qword_10011CCF0, qword_1000D61B0);
  v275 = type metadata accessor for HeadphoneAssets(0);
  v276 = (*(*(v275 - 8) + 48))(v8, 1, v275);
  sub_10000E950(v8, &qword_10011CCF0, qword_1000D61B0);
  if (v276 == 1)
  {
    v277 = v283;
    sub_1000C53FC(v284, v283);
    sub_10000EA2C(v277, a2 + v274, &qword_10011CCF0, qword_1000D61B0);
  }

  v278 = v51 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  sub_10002C508(*(v278 + *(v15 + 136)), &v286);
  result = sub_10000EA2C(&v286, a2 + v9[14], &unk_10011FF80, &qword_1000D8590);
  *(a2 + v9[21]) = *(v278 + *(v15 + 136));
  return result;
}

void sub_1000BD484(char a1)
{
  v2 = v1;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A570(v4, qword_10011FDE0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Device did finish connecting", v7, 2u);
  }

  if (a1)
  {
    v8 = 2;
  }

  else
  {
    v8 = 4;
  }

  *(v2 + 80) = v8;
  sub_1000B4D14();
  if (*(v2 + 88))
  {

    sub_100041A64(a1 & 1);
  }

  if ((a1 & 1) == 0)
  {
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

    sub_10004A288();
    goto LABEL_16;
  }

  if (*(v2 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_temporarilyPair) == 1)
  {
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

    sub_10004B0B8();
LABEL_16:

    swift_unknownObjectRelease();
    return;
  }

  v9 = v2 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  if (*(v9 + *(type metadata accessor for HeadphoneModel(0) + 172)) == 1)
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "User has already seen tutorials for this product, skipping cards", v12, 2u);
    }

    sub_1000B5D54(1);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_currentView;
      v15 = swift_unknownObjectWeakLoadStrong();
      v16 = *(v14 + 8);
      swift_unknownObjectRelease();
      if (v15)
      {
        ObjectType = swift_getObjectType();
        (*(v16 + 56))(ObjectType, v16);
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1000BD740()
{
  v1 = v0;
  v2 = type metadata accessor for HeadphoneModel(0);
  __chkstk_darwin(v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_hasAutoDismissed;
  if (*(v0 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_hasAutoDismissed))
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_currentView;
    v8 = swift_unknownObjectWeakLoadStrong();
    v9 = *(v7 + 8);
    swift_unknownObjectRelease();
    if (v8)
    {
      ObjectType = swift_getObjectType();
      v11 = (*(v9 + 32))(ObjectType, v9);
      swift_unknownObjectRelease();
      if (v11 == 17)
      {
        return;
      }
    }
  }

  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_currentView;
    v14 = swift_unknownObjectWeakLoadStrong();
    v15 = *(v13 + 8);
    swift_unknownObjectRelease();
    if (v14)
    {
      v16 = swift_getObjectType();
      v17 = (*(v15 + 32))(v16, v15);
      swift_unknownObjectRelease();
      if (v17 == 19)
      {
        return;
      }
    }
  }

  v18 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  v19 = *(v18 + 136);
  sub_1000CE178(v18, v4, type metadata accessor for HeadphoneModel);
  v20 = [objc_allocWithZone(SFHeadphoneProduct) initWithProductID:*&v4[v2[34]]];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 hasLid];
  }

  else
  {
    v22 = 0;
  }

  v23 = 0x4601u >> v19;
  sub_1000CE1E0(v4, type metadata accessor for HeadphoneModel);
  if (*(v18 + v2[25]) != 1)
  {
    if (((v23 | ((*(v18 + v2[31]) & 0x400u) >> 10) | v22) & 1) != 0 || *(v18 + v2[33]))
    {
      return;
    }

    if (qword_10011C770 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000A570(v28, qword_10011FDE0);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_31;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = "Dismissing because device does not want status";
    goto LABEL_30;
  }

  if (*(v18 + v2[44]) & 1) == 0 && (v23)
  {
    if (qword_10011C770 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000A570(v24, qword_10011FDE0);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Skipping auto dismiss while waiting for genuine check", v27, 2u);
    }

    return;
  }

  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_10000A570(v33, qword_10011FDE0);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = "Auto dismissing on lid close";
LABEL_30:
    _os_log_impl(&_mh_execute_header, v29, v30, v32, v31, 2u);
  }

LABEL_31:

  *(v1 + v5) = 1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100047C68();
    swift_unknownObjectRelease();
  }
}

void sub_1000BDBCC()
{
  v1 = v0 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  v2 = v1 + *(type metadata accessor for HeadphoneModel(0) + 180);
  v3 = *(v2 + 8);
  if (v3 != 255)
  {
    v4 = *v2;
    if (v3)
    {
      sub_100008438(&unk_10011D970, &unk_1000D6500);
      swift_willThrowTypedImpl();
    }

    else if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10001C2A0(v4, 0);
      sub_10004A700(v4);
      swift_unknownObjectRelease();
      sub_10007BF80(v4, v3);
    }
  }
}

uint64_t sub_1000BDCA4(void *a1)
{
  v2 = a1;
  v3 = 13;
  switch(a1)
  {
    case 0uLL:
      v4 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
      swift_beginAccess();
      if (*(v4 + 136) != 1)
      {
        v3 = 1;
        goto LABEL_39;
      }

      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_10000A570(v5, qword_10011FDE0);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = "End Call upsell finished";
        goto LABEL_26;
      }

      goto LABEL_27;
    case 1uLL:
      goto LABEL_39;
    case 2uLL:
      v3 = 3;
      goto LABEL_39;
    case 3uLL:
      v10 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
      swift_beginAccess();
      if (*(v10 + 136) != 11)
      {
        goto LABEL_15;
      }

      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_10000A570(v11, qword_10011FDE0);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_27;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "Announce notifications upsell finished";
      goto LABEL_26;
    case 4uLL:
      v12 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
      swift_beginAccess();
      if (*(v12 + 136) == 12)
      {
        if (qword_10011C770 != -1)
        {
          swift_once();
        }

        v13 = type metadata accessor for Logger();
        sub_10000A570(v13, qword_10011FDE0);
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          v9 = "Spatial audio profile upsell finished";
LABEL_26:
          _os_log_impl(&_mh_execute_header, v6, v7, v9, v8, 2u);
        }

LABEL_27:

LABEL_28:
        v3 = 16;
      }

      else
      {
        v3 = 7;
      }

      goto LABEL_39;
    case 5uLL:
      v3 = 6;
      goto LABEL_39;
    case 6uLL:
      v3 = 2;
      goto LABEL_39;
    case 7uLL:
      v3 = 5;
      goto LABEL_39;
    case 8uLL:
LABEL_15:
      v3 = 10;
      goto LABEL_39;
    case 9uLL:
      v3 = 11;
      goto LABEL_39;
    case 0xAuLL:
      v3 = 9;
      goto LABEL_39;
    case 0xBuLL:
      v3 = 14;
      goto LABEL_39;
    case 0xCuLL:
      v14 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
      swift_beginAccess();
      v15 = v14 + *(type metadata accessor for HeadphoneModel(0) + 180);
      v16 = *(v15 + 8);
      if (v16 == 255)
      {
        return 16;
      }

      v3 = *v15;
      if (v16)
      {
        v28 = *v15;
        sub_100008438(&unk_10011D970, &unk_1000D6500);
        swift_willThrowTypedImpl();
        return 16;
      }

      else
      {
        sub_1000CE65C(*v15, v16);
        sub_10001C2A0(v3, 0);
LABEL_39:
        if (qword_10011C770 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_10000A570(v17, qword_10011FDE0);
        sub_1000CC0C4(v2);
        sub_1000CC0C4(v3);
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.default.getter();
        sub_1000CC0E4(v3);
        sub_1000CC0E4(v2);
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *v20 = 136315394;
          sub_100008438(&unk_100120080, &qword_1000DA538);
          v21 = String.init<A>(reflecting:)();
          v23 = sub_100078978(v21, v22, &v28);

          *(v20 + 4) = v23;
          *(v20 + 12) = 2080;
          v24 = sub_1000B4AC0();
          v26 = sub_100078978(v24, v25, &v28);

          *(v20 + 14) = v26;
          _os_log_impl(&_mh_execute_header, v18, v19, "Prox Card: Getting Next Step: %s For: %s", v20, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          sub_1000CC0E4(v3);
        }

        sub_1000CC0E4(v2);
        return v3;
      }

    case 0xDuLL:
      v3 = 4;
      goto LABEL_39;
    case 0xEuLL:
      v3 = 15;
      goto LABEL_39;
    case 0xFuLL:
      v3 = 12;
      goto LABEL_39;
    case 0x10uLL:
      return v2;
    default:
      sub_1000CC0D4(a1);
      goto LABEL_28;
  }
}

uint64_t sub_1000BE260(void *a1)
{
  v3 = type metadata accessor for HeadphoneModel(0);
  v4 = __chkstk_darwin(v3);
  v6 = v210 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  __chkstk_darwin(v4);
  v8 = v210 - v7 + 24;
  if (a1 == 16)
  {
LABEL_2:
    LOBYTE(v9) = 0;
    return v9 & 1;
  }

  v212[3] = &type metadata for AudioAccessoryFeatures;
  v212[4] = sub_10009B230();
  LOBYTE(v212[0]) = 0;
  sub_1000CC0D4(a1);
  v11 = isFeatureEnabled(_:)();
  sub_10000EA94(v212);
  if (v11)
  {
    swift_beginAccess();
    v12 = *(v1 + 40);
    if (v12)
    {
      if ([*(*sub_10000E7E4((v1 + 16) v12) + OBJC:"isTemporaryPairingConnectionAllowed" IVAR:? :? :? :? TtC20HeadphoneProxService19HeadphoneInteractor:?deviceManager)])
      {
        if (sub_1000B4AC0() == 0x79726574746142 && v13 == 0xE700000000000000)
        {
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v14 & 1) == 0)
          {
            if (qword_10011C770 != -1)
            {
              swift_once();
            }

            v130 = type metadata accessor for Logger();
            sub_10000A570(v130, qword_10011FDE0);
            sub_1000CC0D4(a1);
            v131 = Logger.logObject.getter();
            v132 = static os_log_type_t.default.getter();
            sub_1000CC0E4(a1);
            if (os_log_type_enabled(v131, v132))
            {
              v133 = swift_slowAlloc();
              v134 = swift_slowAlloc();
              v212[0] = v134;
              *v133 = 136315138;
              v135 = sub_1000B4AC0();
              v137 = sub_100078978(v135, v136, v212);

              *(v133 + 4) = v137;
              _os_log_impl(&_mh_execute_header, v131, v132, "Skip showing %s as the device is managed.", v133, 0xCu);
              sub_10000EA94(v134);

              sub_1000CC0E4(a1);
            }

            else
            {

LABEL_184:
              v168 = a1;
LABEL_185:
              sub_1000CC0E4(v168);
            }

            goto LABEL_2;
          }
        }
      }
    }
  }

  switch(a1)
  {
    case 0uLL:
      v15 = objc_allocWithZone(NSUserDefaults);
      v16 = String._bridgeToObjectiveC()();
      v17 = [v15 initWithSuiteName:v16];

      if (v17)
      {
        v18 = String._bridgeToObjectiveC()();
        v19 = [v17 BOOLForKey:v18];

        if (v19)
        {
          if (qword_10011C770 != -1)
          {
            swift_once();
          }

          v20 = type metadata accessor for Logger();
          sub_10000A570(v20, qword_10011FDE0);
          sub_1000CC0D4(0);
          v21 = Logger.logObject.getter();
          v22 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            v24 = swift_slowAlloc();
            v212[0] = v24;
            *v23 = 136315138;
            v25 = sub_1000B4AC0();
            v27 = sub_100078978(v25, v26, v212);

            *(v23 + 4) = v27;
            _os_log_impl(&_mh_execute_header, v21, v22, "Should show %s? overridingEndCall prox", v23, 0xCu);
            sub_10000EA94(v24);
          }

          v28 = 0;
          goto LABEL_187;
        }
      }

      swift_beginAccess();
      v186 = *(v1 + 40);
      if (!v186)
      {
        if (qword_10011C770 != -1)
        {
          swift_once();
        }

        v192 = type metadata accessor for Logger();
        sub_10000A570(v192, qword_10011FDE0);
        v193 = Logger.logObject.getter();
        v194 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v193, v194))
        {
          v195 = swift_slowAlloc();
          *v195 = 0;
          _os_log_impl(&_mh_execute_header, v193, v194, "Should show endCall status is nil", v195, 2u);
        }

        v168 = 0;
        goto LABEL_185;
      }

      sub_10000E7E4((v1 + 16), v186);
      v187 = sub_10006CE54();
      v188 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
      swift_beginAccess();
      v189 = [objc_allocWithZone(SFHeadphoneProduct) initWithProductID:*(v188 + v3[34])];
      if (v189)
      {
        v190 = v189;
        v191 = [v189 supportsEndCallProx];
      }

      else
      {
        v191 = 0;
      }

      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v196 = type metadata accessor for Logger();
      sub_10000A570(v196, qword_10011FDE0);
      sub_1000CC0D4(0);
      v197 = Logger.logObject.getter();
      v198 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v197, v198))
      {
        v199 = swift_slowAlloc();
        v211 = swift_slowAlloc();
        *v199 = 136315906;
        v200 = sub_1000B4AC0();
        v202 = sub_100078978(v200, v201, &v211);

        *(v199 + 4) = v202;
        *(v199 + 12) = 2080;
        LOBYTE(v9) = v191 & v187;
        if ((v191 & v187) != 0)
        {
          v203 = 5457241;
        }

        else
        {
          v203 = 20302;
        }

        if ((v191 & v187) != 0)
        {
          v204 = 0xE300000000000000;
        }

        else
        {
          v204 = 0xE200000000000000;
        }

        v205 = sub_100078978(v203, v204, &v211);

        *(v199 + 14) = v205;
        *(v199 + 22) = 1024;
        *(v199 + 24) = v191;
        *(v199 + 28) = 1024;
        *(v199 + 30) = v187 & 1;
        _os_log_impl(&_mh_execute_header, v197, v198, "Should show %s? %s \n supportsEndCallProx:%{BOOL}d, endCallStatus:%{BOOL}d ", v199, 0x22u);
        swift_arrayDestroy();

        sub_1000CC0E4(0);
      }

      else
      {

        sub_1000CC0E4(0);
        LOBYTE(v9) = v191 & v187;
      }

      return v9 & 1;
    case 1uLL:
      if (sub_1000B4F34())
      {
        if (qword_10011C750 != -1)
        {
          swift_once();
        }

        v9 = qword_1001231E0;
        v87 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
        swift_beginAccess();
        LOBYTE(v9) = sub_1000A566C(*(v87 + v3[34]), v9) ^ 1;
      }

      else
      {
        LOBYTE(v9) = 0;
      }

      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v138 = type metadata accessor for Logger();
      sub_10000A570(v138, qword_10011FDE0);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v34, v35))
      {
        goto LABEL_76;
      }

      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v210[0] = v72;
      *v71 = 136315394;
      v139 = sub_1000B4AC0();
      v141 = sub_100078978(v139, v140, v210);

      *(v71 + 4) = v141;
      *(v71 + 12) = 1024;
      *(v71 + 14) = v9 & 1;
      v103 = "Should show %s? %{BOOL}d";
      goto LABEL_75;
    case 2uLL:
      v54 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
      swift_beginAccess();
      v55 = *(v54 + v3[28]);
      v56 = (v54 + v3[26]);
      v57 = v56[1];
      v58 = v56[2];
      v59 = v56[3];
      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v60 = type metadata accessor for Logger();
      sub_10000A570(v60, qword_10011FDE0);
      v9 = Logger.logObject.getter();
      v61 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v210[0] = v63;
        *v62 = 136316162;
        v64 = sub_1000B4AC0();
        v66 = sub_100078978(v64, v65, v210);

        *(v62 + 4) = v66;
        *(v62 + 12) = 1024;
        *(v62 + 14) = v55 ^ 1;
        *(v62 + 18) = 1024;
        *(v62 + 20) = v57 ^ 1;
        *(v62 + 24) = 1024;
        *(v62 + 26) = v58;
        *(v62 + 30) = 1024;
        *(v62 + 32) = v59;
        _os_log_impl(&_mh_execute_header, v9, v61, "Should show %s? not temporarily paired = %{BOOL}d, HS not enabled = %{BOOL}d, locale supported = %{BOOL}d, accessory supported = %{BOOL}d", v62, 0x24u);
        sub_10000EA94(v63);
      }

      LOBYTE(v9) = ((v55 | v57) ^ 1) & v58 & v59;
      return v9 & 1;
    case 3uLL:
      v76 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
      swift_beginAccess();
      v77 = *(v76 + v3[28]);
      v78 = *(v76 + v3[35]);
      LODWORD(v9) = *(v76 + v3[40]);
      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v79 = type metadata accessor for Logger();
      sub_10000A570(v79, qword_10011FDE0);
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v209 = swift_slowAlloc();
        v210[0] = v209;
        *v82 = 136315906;
        v83 = sub_1000B4AC0();
        v85 = sub_100078978(v83, v84, v210);

        *(v82 + 4) = v85;
        *(v82 + 12) = 1024;
        *(v82 + 14) = v77 ^ 1;
        *(v82 + 18) = 1024;
        *(v82 + 20) = v78;
        *(v82 + 24) = 1024;
        *(v82 + 26) = v9;
        _os_log_impl(&_mh_execute_header, v80, v81, "Should show %s? not temporarily paired = %{BOOL}d, has software volume = %{BOOL}d, needs announce = %{BOOL}d", v82, 0x1Eu);
        sub_10000EA94(v209);
      }

      if ((v77 & 1) != 0 || !*(v76 + v3[33]) && (v78 & 1) == 0)
      {
        goto LABEL_2;
      }

      return v9 & 1;
    case 4uLL:
      v41 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
      swift_beginAccess();
      v145 = *(v41 + v3[28]);
      v9 = objc_opt_self();

      v146 = String._bridgeToObjectiveC()();

      LODWORD(v9) = [v9 isProxCardEnrollmentSupportedForDevice:v146];

      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v147 = type metadata accessor for Logger();
      sub_10000A570(v147, qword_10011FDE0);
      v148 = Logger.logObject.getter();
      v149 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v148, v149))
      {
        v150 = swift_slowAlloc();
        v151 = swift_slowAlloc();
        v210[0] = v151;
        *v150 = 136315650;
        v152 = sub_1000B4AC0();
        v154 = sub_100078978(v152, v153, v210);

        *(v150 + 4) = v154;
        *(v150 + 12) = 1024;
        *(v150 + 14) = v145 ^ 1;
        *(v150 + 18) = 1024;
        *(v150 + 20) = v9;
        _os_log_impl(&_mh_execute_header, v148, v149, "Should show %s? not temporarily paired = %{BOOL}d, needs spatial profile setup = %{BOOL}d", v150, 0x18u);
        sub_10000EA94(v151);
      }

      LOBYTE(v9) = (v145 ^ 1) & v9;
      return v9 & 1;
    case 5uLL:
      v88 = v1;
      v89 = objc_allocWithZone(LSApplicationRecord);
      v156 = sub_1000CBF9C(0xD000000000000010, 0x80000001000DBF50, 0);
      v157 = OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
      swift_beginAccess();
      sub_1000CE178(v88 + v157, v8, type metadata accessor for HeadphoneModel);
      v158 = [objc_allocWithZone(SFHeadphoneProduct) initWithProductID:*&v8[v3[34]]];
      if (v158)
      {
        v159 = v158;
        v160 = [v158 supportsFindMyNetwork];

        sub_1000CE1E0(v8, type metadata accessor for HeadphoneModel);
        if (!v156 && v160)
        {
          if (qword_10011C770 != -1)
          {
            swift_once();
          }

          v161 = type metadata accessor for Logger();
          sub_10000A570(v161, qword_10011FDE0);
          v9 = Logger.logObject.getter();
          v162 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v9, v162))
          {
            v163 = swift_slowAlloc();
            *v163 = 0;
            _os_log_impl(&_mh_execute_header, v9, v162, "FindMy not installed and device supports Find My, will show Install Find My view", v163, 2u);

            v28 = 5;
            goto LABEL_187;
          }

          goto LABEL_140;
        }
      }

      else
      {
        sub_1000CE1E0(v8, type metadata accessor for HeadphoneModel);
      }

      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v164 = type metadata accessor for Logger();
      sub_10000A570(v164, qword_10011FDE0);
      v165 = Logger.logObject.getter();
      v166 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v165, v166))
      {
        v167 = swift_slowAlloc();
        *v167 = 0;
        _os_log_impl(&_mh_execute_header, v165, v166, "FindMy is installed, won't show Install Find My view", v167, 2u);

        v168 = 5;
        goto LABEL_185;
      }

      goto LABEL_146;
    case 6uLL:
      v95 = v1;
      v96 = objc_allocWithZone(LSApplicationRecord);
      v156 = sub_1000CBF9C(0xD000000000000010, 0x80000001000DBF50, 0);
      v170 = OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
      swift_beginAccess();
      sub_1000CE178(v95 + v170, v6, type metadata accessor for HeadphoneModel);
      v171 = [objc_allocWithZone(SFHeadphoneProduct) initWithProductID:*&v6[v3[34]]];
      if (v171)
      {
        v172 = v171;
        v173 = [v171 supportsFindMyNetwork];

        sub_1000CE1E0(v6, type metadata accessor for HeadphoneModel);
        if (!v156 && v173)
        {
          if (qword_10011C770 != -1)
          {
            swift_once();
          }

          v174 = type metadata accessor for Logger();
          sub_10000A570(v174, qword_10011FDE0);
          v9 = Logger.logObject.getter();
          v175 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v9, v175))
          {
            v176 = swift_slowAlloc();
            *v176 = 0;
            _os_log_impl(&_mh_execute_header, v9, v175, "FindMy not installed and device supports Find My, will show AirPods Linking view", v176, 2u);

            v28 = 6;
            goto LABEL_187;
          }

LABEL_140:

          LOBYTE(v9) = 1;
          return v9 & 1;
        }
      }

      else
      {
        sub_1000CE1E0(v6, type metadata accessor for HeadphoneModel);
      }

      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v177 = type metadata accessor for Logger();
      sub_10000A570(v177, qword_10011FDE0);
      v165 = Logger.logObject.getter();
      v178 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v165, v178))
      {
        v179 = swift_slowAlloc();
        *v179 = 0;
        _os_log_impl(&_mh_execute_header, v165, v178, "FindMy is installed, won't show AirPods Linking view", v179, 2u);

        v168 = 6;
        goto LABEL_185;
      }

LABEL_146:

      goto LABEL_156;
    case 7uLL:
      swift_beginAccess();
      v86 = *(v1 + 40);
      if (!v86)
      {
        goto LABEL_2;
      }

      sub_10000E7E4((v1 + 16), v86);
      LOBYTE(v9) = sub_10006D940();
      return v9 & 1;
    case 8uLL:
      swift_beginAccess();
      if (*(v1 + 40))
      {
        if (qword_10011C770 != -1)
        {
          swift_once();
        }

        v104 = type metadata accessor for Logger();
        sub_10000A570(v104, qword_10011FDE0);
        v156 = Logger.logObject.getter();
        v105 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v156, v105))
        {
          v106 = swift_slowAlloc();
          v107 = swift_slowAlloc();
          v210[0] = v107;
          *v106 = 136315394;
          v108 = sub_1000B4AC0();
          v110 = sub_100078978(v108, v109, v210);

          *(v106 + 4) = v110;
          *(v106 + 12) = 1024;
          *(v106 + 14) = 0;
          v111 = "Prox Card: Should Show %s: %{BOOL}d";
          v112 = v105;
          v113 = v156;
          v114 = v106;
          v115 = 18;
          goto LABEL_155;
        }

        goto LABEL_156;
      }

      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v181 = type metadata accessor for Logger();
      sub_10000A570(v181, qword_10011FDE0);
      v156 = Logger.logObject.getter();
      v143 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v156, v143))
      {
        goto LABEL_156;
      }

      goto LABEL_154;
    case 9uLL:
      swift_beginAccess();
      v49 = *(v1 + 40);
      if (v49)
      {
        v9 = *sub_10000E7E4((v1 + 16), v49) + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
        swift_beginAccess();
        v50 = *(v9 + 144);
        v51 = *(v9 + 152);

        v52.value._countAndFlagsBits = v50;
        v52.value._object = v51;
        LOBYTE(v9) = HeadphoneProxFeatureManager.shouldShowTrackWorkoutCard(deviceAddress:)(v52);

        if (qword_10011C770 != -1)
        {
          swift_once();
        }

        v53 = type metadata accessor for Logger();
        sub_10000A570(v53, qword_10011FDE0);
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v34, v35))
        {
          goto LABEL_76;
        }

        goto LABEL_73;
      }

      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v155 = type metadata accessor for Logger();
      sub_10000A570(v155, qword_10011FDE0);
      v156 = Logger.logObject.getter();
      v143 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v156, v143))
      {
        goto LABEL_156;
      }

      goto LABEL_154;
    case 0xAuLL:
      swift_beginAccess();
      v97 = *(v1 + 40);
      if (v97)
      {
        v9 = *sub_10000E7E4((v1 + 16), v97) + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
        swift_beginAccess();
        v98 = *(v9 + 144);
        v99 = *(v9 + 152);

        v100.value._countAndFlagsBits = v98;
        v100.value._object = v99;
        LOBYTE(v9) = HeadphoneProxFeatureManager.shouldShowHeadGesturesCard(deviceAddress:)(v100);

        if (qword_10011C770 != -1)
        {
          swift_once();
        }

        v101 = type metadata accessor for Logger();
        sub_10000A570(v101, qword_10011FDE0);
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v34, v35))
        {
          goto LABEL_76;
        }

        goto LABEL_73;
      }

      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v180 = type metadata accessor for Logger();
      sub_10000A570(v180, qword_10011FDE0);
      v156 = Logger.logObject.getter();
      v143 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v156, v143))
      {
        goto LABEL_156;
      }

      goto LABEL_154;
    case 0xBuLL:
      swift_beginAccess();
      v36 = *(v1 + 40);
      if (v36)
      {
        v9 = *sub_10000E7E4((v1 + 16), v36) + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
        swift_beginAccess();
        v37 = *(v9 + 144);
        v38 = *(v9 + 152);

        v39.value._countAndFlagsBits = v37;
        v39.value._object = v38;
        LOBYTE(v9) = HeadphoneProxFeatureManager.shouldShowLiveTranslationCard(deviceAddress:)(v39);

        if (qword_10011C770 != -1)
        {
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        sub_10000A570(v40, qword_10011FDE0);
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v34, v35))
        {
          goto LABEL_76;
        }

        goto LABEL_73;
      }

      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v144 = type metadata accessor for Logger();
      sub_10000A570(v144, qword_10011FDE0);
      v156 = Logger.logObject.getter();
      v143 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v156, v143))
      {
        goto LABEL_156;
      }

      goto LABEL_154;
    case 0xCuLL:
      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_10000A570(v42, qword_10011FDE0);
      v9 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v212[0] = v45;
        *v44 = 136315138;
        v46 = sub_1000B4AC0();
        v48 = sub_100078978(v46, v47, v212);

        *(v44 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v9, v43, "Prox Card: Should Show %s: true", v44, 0xCu);
        sub_10000EA94(v45);
      }

      goto LABEL_140;
    case 0xDuLL:
      swift_beginAccess();
      v90 = *(v1 + 40);
      if (v90)
      {
        v9 = *sub_10000E7E4((v1 + 16), v90) + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
        swift_beginAccess();
        v91 = *(v9 + 144);
        v92 = *(v9 + 152);

        v93.value._countAndFlagsBits = v91;
        v93.value._object = v92;
        LOBYTE(v9) = HeadphoneProxFeatureManager.shouldShowHeartRateMonitor(deviceAddress:)(v93);

        if (qword_10011C770 != -1)
        {
          swift_once();
        }

        v94 = type metadata accessor for Logger();
        sub_10000A570(v94, qword_10011FDE0);
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v34, v35))
        {
          goto LABEL_76;
        }

        goto LABEL_73;
      }

      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v169 = type metadata accessor for Logger();
      sub_10000A570(v169, qword_10011FDE0);
      v156 = Logger.logObject.getter();
      v143 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v156, v143))
      {
        goto LABEL_156;
      }

      goto LABEL_154;
    case 0xEuLL:
      swift_beginAccess();
      v29 = *(v1 + 40);
      if (v29)
      {
        v9 = *sub_10000E7E4((v1 + 16), v29) + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
        swift_beginAccess();
        v30 = *(v9 + 144);
        v31 = *(v9 + 152);

        v32.value._countAndFlagsBits = v30;
        v32.value._object = v31;
        LOBYTE(v9) = HeadphoneProxFeatureManager.shouldShowYodelCard(deviceAddress:)(v32);

        if (qword_10011C770 != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        sub_10000A570(v33, qword_10011FDE0);
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v34, v35))
        {
LABEL_73:
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v211 = v72;
          *v71 = 136315394;
          v73 = sub_1000B4AC0();
          v75 = &v211;
LABEL_74:
          v102 = sub_100078978(v73, v74, v75);

          *(v71 + 4) = v102;
          *(v71 + 12) = 1024;
          *(v71 + 14) = v9 & 1;
          v103 = "Prox Card: Should Show %s: %{BOOL}d";
LABEL_75:
          _os_log_impl(&_mh_execute_header, v34, v35, v103, v71, 0x12u);
          sub_10000EA94(v72);
        }

LABEL_76:

        return v9 & 1;
      }

      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v142 = type metadata accessor for Logger();
      sub_10000A570(v142, qword_10011FDE0);
      v156 = Logger.logObject.getter();
      v143 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v156, v143))
      {
LABEL_154:
        v182 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v210[0] = v107;
        *v182 = 136315138;
        v183 = sub_1000B4AC0();
        v185 = sub_100078978(v183, v184, v210);

        *(v182 + 4) = v185;
        v111 = "Prox Card: %s status check failed";
        v112 = v143;
        v113 = v156;
        v114 = v182;
        v115 = 12;
LABEL_155:
        _os_log_impl(&_mh_execute_header, v113, v112, v111, v114, v115);
        sub_10000EA94(v107);
      }

LABEL_156:

      goto LABEL_2;
    case 0xFuLL:
      type metadata accessor for HeadphoneProxFeatureManager();
      static HeadphoneProxFeatureManager.shared.getter();
      v9 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
      swift_beginAccess();
      v67 = *(v9 + 144);
      v68 = *(v9 + 152);

      v69.value._countAndFlagsBits = v67;
      v69.value._object = v68;
      LOBYTE(v9) = HeadphoneProxFeatureManager.shouldShowUSBLosslessAudio(deviceAddress:)(v69);

      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v70 = type metadata accessor for Logger();
      sub_10000A570(v70, qword_10011FDE0);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v34, v35))
      {
        goto LABEL_76;
      }

      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v210[0] = v72;
      *v71 = 136315394;
      v73 = sub_1000B4AC0();
      v75 = v210;
      goto LABEL_74;
    default:
      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v116 = type metadata accessor for Logger();
      sub_10000A570(v116, qword_10011FDE0);

      sub_1000CC0C4(a1);
      v117 = v1;

      v118 = Logger.logObject.getter();
      v119 = static os_log_type_t.default.getter();
      sub_1000CC0E4(a1);
      if (!os_log_type_enabled(v118, v119))
      {

        v125 = v117;

        goto LABEL_181;
      }

      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v212[0] = v121;
      *v120 = 136315394;
      v122 = sub_1000B4AC0();
      v124 = sub_100078978(v122, v123, v212);

      *(v120 + 4) = v124;
      *(v120 + 12) = 1024;
      v125 = v117;
      v126 = v117 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
      swift_beginAccess();
      v127 = v126 + v3[45];
      v128 = *(v127 + 8);
      if (v128 == 255)
      {
        goto LABEL_88;
      }

      if (v128)
      {
        v211 = *v127;
        sub_100008438(&unk_10011D970, &unk_1000D6500);
        swift_willThrowTypedImpl();
LABEL_88:

        v129 = 0;
      }

      else
      {

        v129 = 1;
      }

      *(v120 + 14) = v129;

      _os_log_impl(&_mh_execute_header, v118, v119, "Prox Card: Should Show %s: %{BOOL}d", v120, 0x12u);
      sub_10000EA94(v121);

LABEL_181:
      v206 = v125 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
      swift_beginAccess();
      v207 = v206 + v3[45];
      v208 = *(v207 + 8);
      if (v208 == 255)
      {
        goto LABEL_184;
      }

      if (v208)
      {
        v211 = *v207;
        sub_100008438(&unk_10011D970, &unk_1000D6500);
        swift_willThrowTypedImpl();
        goto LABEL_184;
      }

      v28 = a1;
LABEL_187:
      sub_1000CC0E4(v28);
      LOBYTE(v9) = 1;
      break;
  }

  return v9 & 1;
}

uint64_t sub_1000C05F0()
{
  sub_10000E950(v0 + 16, &qword_10011FBC0, &unk_1000D5EF0);
  sub_100042298(v0 + 56);

  sub_1000CE1E0(v0 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model, type metadata accessor for HeadphoneModel);
  sub_1000CC0E4(*(v0 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_postPairStep));

  return v0;
}

uint64_t sub_1000C06A0()
{
  sub_1000C05F0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HeadphonePresenter(uint64_t a1)
{
  result = qword_10011FE68;
  if (!qword_10011FE68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C074C(uint64_t a1)
{
  result = type metadata accessor for HeadphoneModel(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1000C0858(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000C087C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF0 && *(a1 + 8))
  {
    return (*a1 + 2147483632);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 15;
  if (v4 >= 0x11)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000C08D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFEF)
  {
    *result = 0;
    *result = a2 - 2147483632;
    if (a3 >= 0x7FFFFFF0)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF0)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 15;
    }
  }

  return result;
}

void *sub_1000C092C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_1000C0970()
{
  result = qword_10011FF60;
  if (!qword_10011FF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FF60);
  }

  return result;
}

void sub_1000C0A08()
{

  v0 = String._bridgeToObjectiveC()();

  sub_10004D7D4();
  sub_1000084D4(0, &qword_10011E0A0, NSObject_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  AnalyticsSendEvent();
}

void sub_1000C0AEC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  sub_10007BF98(a1, v1 + v3);
  swift_endAccess();
  sub_1000BD740();
  sub_1000B4D14();
  sub_1000BDBCC();
}

uint64_t sub_1000C0B58()
{
  if (qword_10011C720 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A570(v0, qword_1001231C0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Requested launch of bluetooth settings", v3, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10004CEC4();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000C0C94@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for HeadphoneModel(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  *(a1 + 6) = 0;
  *(a1 + 7) = 0xE000000000000000;
  *(a1 + 12) = 0;
  v7 = type metadata accessor for HeadphoneViewModel(0);
  *(a1 + 8) = 0;
  *(a1 + 9) = 0;
  v8 = v7[11];
  v9 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v9 - 8) + 56))(&a1[v8], 1, 1, v9);
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v10 = &a1[v7[13]];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v11 = &a1[v7[14]];
  sub_10001309C(v39);
  v12 = v39[11];
  v13 = v39[13];
  v14 = v39[14];
  *(v11 + 12) = v39[12];
  *(v11 + 13) = v13;
  *(v11 + 14) = v14;
  v15 = v39[7];
  v16 = v39[9];
  v17 = v39[10];
  *(v11 + 8) = v39[8];
  *(v11 + 9) = v16;
  *(v11 + 10) = v17;
  *(v11 + 11) = v12;
  v18 = v39[5];
  *(v11 + 4) = v39[4];
  *(v11 + 5) = v18;
  *(v11 + 6) = v39[6];
  *(v11 + 7) = v15;
  v19 = v39[1];
  *v11 = v39[0];
  *(v11 + 1) = v19;
  v20 = v39[3];
  *(v11 + 2) = v39[2];
  *(v11 + 3) = v20;
  a1[v7[15]] = 0;
  a1[v7[16]] = 0;
  *&a1[v7[17]] = _swiftEmptyArrayStorage;
  *&a1[v7[18]] = _swiftEmptyArrayStorage;
  v21 = &a1[v7[19]];
  *(v21 + 5) = 0u;
  *(v21 + 6) = 0u;
  *(v21 + 3) = 0u;
  *(v21 + 4) = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 2) = 0u;
  *v21 = 0u;
  v22 = &a1[v7[20]];
  *v22 = 0;
  *(v22 + 1) = 0;
  *&a1[v7[21]] = 0;
  *&a1[v7[22]] = 0;
  a1[v7[23]] = 0;
  a1[v7[24]] = 0;
  *a1 = sub_100033A5C(13);
  *(a1 + 1) = v23;
  *(a1 + 10) = sub_100033A5C(16);
  *(a1 + 11) = v24;
  v25 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  if (*(v25 + *(v4 + 112)) == 1)
  {
    sub_100008438(&qword_10011EA80, &unk_1000DA490);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1000D5250;
    sub_1000CE178(v25, v6, type metadata accessor for HeadphoneModel);
    v27 = sub_100050E28(0x5F544355444F5250, 0xEC000000454D414ELL, v6);
    v29 = v28;
    sub_1000CE1E0(v6, type metadata accessor for HeadphoneModel);
    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = sub_1000CDFF8();
    *(v26 + 32) = v27;
    *(v26 + 40) = v29;
    v30 = sub_1000364D8(v26, 14);
    v32 = v31;

    *(a1 + 2) = v30;
    *(a1 + 3) = v32;
    *(a1 + 4) = sub_100033A5C(17);
    *(a1 + 5) = v33;
    result = sub_100033A5C(18);
    *(a1 + 6) = result;
    *(a1 + 7) = v35;
  }

  else
  {
    *(a1 + 2) = sub_100033A5C(15);
    *(a1 + 3) = v36;
    result = sub_100033A5C(4);
    *(a1 + 4) = result;
    *(a1 + 5) = v37;
  }

  return result;
}

uint64_t sub_1000C0FB8@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for HeadphoneModel(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + 12) = 0;
  v6 = type metadata accessor for HeadphoneViewModel(0);
  *(a1 + 8) = 0;
  *(a1 + 9) = 0;
  v7 = v6[11];
  v8 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v8 - 8) + 56))(&a1[v7], 1, 1, v8);
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v9 = &a1[v6[13]];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v10 = &a1[v6[14]];
  sub_10001309C(v46);
  v11 = v46[13];
  *(v10 + 12) = v46[12];
  *(v10 + 13) = v11;
  *(v10 + 14) = v46[14];
  v12 = v46[9];
  *(v10 + 8) = v46[8];
  *(v10 + 9) = v12;
  v13 = v46[11];
  *(v10 + 10) = v46[10];
  *(v10 + 11) = v13;
  v14 = v46[5];
  *(v10 + 4) = v46[4];
  *(v10 + 5) = v14;
  v15 = v46[7];
  *(v10 + 6) = v46[6];
  *(v10 + 7) = v15;
  v16 = v46[1];
  *v10 = v46[0];
  *(v10 + 1) = v16;
  v17 = v46[3];
  *(v10 + 2) = v46[2];
  *(v10 + 3) = v17;
  a1[v6[15]] = 0;
  a1[v6[16]] = 0;
  *&a1[v6[17]] = _swiftEmptyArrayStorage;
  *&a1[v6[18]] = _swiftEmptyArrayStorage;
  v18 = &a1[v6[19]];
  *(v18 + 5) = 0u;
  *(v18 + 6) = 0u;
  *(v18 + 3) = 0u;
  *(v18 + 4) = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 2) = 0u;
  *v18 = 0u;
  v19 = &a1[v6[20]];
  *v19 = 0;
  *(v19 + 1) = 0;
  *&a1[v6[21]] = 0;
  *&a1[v6[22]] = 0;
  a1[v6[23]] = 0;
  a1[v6[24]] = 0;
  *a1 = sub_100033A5C(13);
  *(a1 + 1) = v20;
  sub_100008438(&qword_10011EA80, &unk_1000DA490);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1000D5250;
  v22 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  sub_1000CE178(v22, v5, type metadata accessor for HeadphoneModel);
  v23 = sub_100050E28(0x5F544355444F5250, 0xEC000000454D414ELL, v5);
  v25 = v24;
  sub_1000CE1E0(v5, type metadata accessor for HeadphoneModel);
  *(v21 + 56) = &type metadata for String;
  *(v21 + 64) = sub_1000CDFF8();
  *(v21 + 32) = v23;
  *(v21 + 40) = v25;
  v26 = sub_1000364D8(v21, 14);
  v28 = v27;

  *(a1 + 2) = v26;
  *(a1 + 3) = v28;
  *(a1 + 6) = sub_100033A5C(1);
  *(a1 + 7) = v29;
  v30 = *(v22 + 80);
  v51 = *(v22 + 64);
  v52 = v30;
  v31 = *(v22 + 16);
  v47 = *v22;
  v48 = v31;
  v32 = *(v22 + 48);
  v49 = *(v22 + 32);
  v50 = v32;
  v33 = *(v18 + 6);
  v35 = *(v18 + 3);
  v34 = *(v18 + 4);
  v54[5] = *(v18 + 5);
  v54[6] = v33;
  v36 = *v18;
  v37 = *(v18 + 2);
  v54[1] = *(v18 + 1);
  v54[2] = v37;
  v53 = *(v22 + 96);
  v54[0] = v36;
  v54[3] = v35;
  v54[4] = v34;
  sub_10000E88C(&v47, &v45, &qword_10011EB18, &qword_1000D8960);
  sub_10000E950(v54, &qword_10011EB18, &qword_1000D8960);
  v38 = v52;
  *(v18 + 4) = v51;
  *(v18 + 5) = v38;
  *(v18 + 6) = v53;
  v39 = v48;
  *v18 = v47;
  *(v18 + 1) = v39;
  v40 = v50;
  *(v18 + 2) = v49;
  *(v18 + 3) = v40;
  *(a1 + 10) = sub_100033A5C(16);
  *(a1 + 11) = v41;
  result = sub_100033A5C(2 * (*(v22 + 136) == 11));
  *(a1 + 4) = result;
  *(a1 + 5) = v43;
  return result;
}

void sub_1000C1340(uint64_t a1@<X8>)
{
  v3 = sub_100008438(&qword_10011FFA0, &qword_1000DA4A0);
  __chkstk_darwin(v3 - 8);
  v52 = &v50 - v4;
  v5 = type metadata accessor for HeadphoneModel(0);
  v6 = __chkstk_darwin(v5);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v50 - v9;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  v11 = type metadata accessor for HeadphoneViewModel(0);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  v12 = v11[11];
  v13 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v14 = (a1 + v11[13]);
  *v14 = 0u;
  v14[1] = 0u;
  v15 = (a1 + v11[14]);
  sub_10001309C(v54);
  v16 = v54[11];
  v17 = v54[13];
  v18 = v54[14];
  v15[12] = v54[12];
  v15[13] = v17;
  v15[14] = v18;
  v19 = v54[7];
  v20 = v54[9];
  v21 = v54[10];
  v15[8] = v54[8];
  v15[9] = v20;
  v15[10] = v21;
  v15[11] = v16;
  v22 = v54[5];
  v15[4] = v54[4];
  v15[5] = v22;
  v15[6] = v54[6];
  v15[7] = v19;
  v23 = v54[1];
  *v15 = v54[0];
  v15[1] = v23;
  v24 = v54[3];
  v15[2] = v54[2];
  v15[3] = v24;
  *(a1 + v11[15]) = 0;
  *(a1 + v11[16]) = 0;
  *(a1 + v11[17]) = _swiftEmptyArrayStorage;
  *(a1 + v11[18]) = _swiftEmptyArrayStorage;
  v25 = (a1 + v11[19]);
  v25[5] = 0u;
  v25[6] = 0u;
  v25[3] = 0u;
  v25[4] = 0u;
  v25[1] = 0u;
  v25[2] = 0u;
  *v25 = 0u;
  v26 = (a1 + v11[20]);
  *v26 = 0;
  v26[1] = 0;
  *(a1 + v11[21]) = 0;
  *(a1 + v11[22]) = 0;
  v51 = v11[23];
  *(a1 + v51) = 0;
  *(a1 + v11[24]) = 0;
  v53 = v1;
  v27 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  v28 = (v27 + v5[15]);
  v29 = *v28;
  v30 = v28[1];
  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (v31)
  {
  }

  else if (*(v27 + v5[21]) == 1)
  {
    sub_1000CE178(v27, v10, type metadata accessor for HeadphoneModel);
    v29 = sub_100050E28(0x5F544355444F5250, 0xEC000000454D414ELL, v10);
    v30 = v32;
    sub_1000CE1E0(v10, type metadata accessor for HeadphoneModel);
  }

  else
  {
    v29 = sub_100033A5C(33);
    v30 = v33;
  }

  *a1 = v29;
  *(a1 + 8) = v30;
  if (*(v27 + v5[29]))
  {
    v34 = 10;
  }

  else
  {
    v34 = 8;
  }

  if (*(v27 + v5[29]))
  {
    v35 = 11;
  }

  else
  {
    v35 = 9;
  }

  if (*(v27 + v5[30]))
  {
    v36 = v35;
  }

  else
  {
    v36 = v34;
  }

  *(a1 + 32) = sub_100033A5C(v36);
  *(a1 + 40) = v37;
  *(a1 + 48) = sub_100033A5C(3);
  *(a1 + 56) = v38;
  sub_1000CE178(v27, v8, type metadata accessor for HeadphoneModel);
  v39 = *&v8[v5[34]];
  v40 = [objc_allocWithZone(SFHeadphoneProduct) initWithProductID:v39];
  if (v40)
  {
    v41 = v40;
    v42 = [v40 isAirPods];
  }

  else
  {
    v42 = 0;
  }

  v43 = v52;
  v44 = sub_1000130C4(v39);
  sub_1000CE1E0(v8, type metadata accessor for HeadphoneModel);
  if ((v42 & 1) != 0 || v44)
  {
    *(a1 + 80) = sub_100033A5C(41);
    *(a1 + 88) = v45;
  }

  if (!*(v27 + v5[37]))
  {
    v47 = type metadata accessor for PersonalizationAssetManager.Asset();
    (*(*(v47 - 8) + 56))(v43, 1, 1, v47);
    goto LABEL_27;
  }

  dispatch thunk of HeadphonePairing2.Assets.personalizationAsset.getter();

  v46 = type metadata accessor for PersonalizationAssetManager.Asset();
  if ((*(*(v46 - 8) + 48))(v43, 1, v46) == 1)
  {
LABEL_27:
    sub_10000E950(v43, &qword_10011FFA0, &qword_1000DA4A0);
    goto LABEL_28;
  }

  sub_10000E950(v43, &qword_10011FFA0, &qword_1000DA4A0);
  *(a1 + v51) = 1;
LABEL_28:
  if (*(v53 + 80) == 1 || *(v53 + 88) && (, v48 = sub_100040AC0(), , (v48 & 1) != 0))
  {
    *(a1 + 64) = sub_100033A5C(40);
    *(a1 + 72) = v49;
  }
}

uint64_t sub_1000C1894@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  v3 = type metadata accessor for HeadphoneViewModel(0);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  v4 = v3[11];
  v5 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v6 = (a1 + v3[13]);
  *v6 = 0u;
  v6[1] = 0u;
  v7 = (a1 + v3[14]);
  sub_10001309C(v33);
  v8 = v33[11];
  v9 = v33[13];
  v10 = v33[14];
  v7[12] = v33[12];
  v7[13] = v9;
  v7[14] = v10;
  v11 = v33[7];
  v12 = v33[9];
  v13 = v33[10];
  v7[8] = v33[8];
  v7[9] = v12;
  v7[10] = v13;
  v7[11] = v8;
  v14 = v33[5];
  v7[4] = v33[4];
  v7[5] = v14;
  v7[6] = v33[6];
  v7[7] = v11;
  v15 = v33[1];
  *v7 = v33[0];
  v7[1] = v15;
  v16 = v33[3];
  v7[2] = v33[2];
  v7[3] = v16;
  *(a1 + v3[15]) = 0;
  *(a1 + v3[16]) = 0;
  *(a1 + v3[17]) = _swiftEmptyArrayStorage;
  *(a1 + v3[18]) = _swiftEmptyArrayStorage;
  v17 = (a1 + v3[19]);
  v17[5] = 0u;
  v17[6] = 0u;
  v17[3] = 0u;
  v17[4] = 0u;
  v17[1] = 0u;
  v17[2] = 0u;
  *v17 = 0u;
  v18 = (a1 + v3[20]);
  *v18 = 0;
  v18[1] = 0;
  *(a1 + v3[21]) = 0;
  *(a1 + v3[22]) = 0;
  *(a1 + v3[23]) = 0;
  *(a1 + v3[24]) = 0;
  *a1 = sub_100033A5C(44);
  *(a1 + 8) = v19;
  v20 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  v21 = *(v20 + *(type metadata accessor for HeadphoneModel(0) + 136));
  v22 = objc_opt_self();
  v23 = [v22 b465];
  v24 = [v23 productID];

  if (v24 != v21)
  {
    v26 = [v22 b463];
    v27 = [v26 productID];

    if (v27 == v21)
    {
      v25 = 47;
      goto LABEL_7;
    }

    v28 = [v22 b498];
    v29 = [v28 productID];

    if (v29 != v21)
    {
      v25 = 45;
      goto LABEL_7;
    }
  }

  v25 = 46;
LABEL_7:
  *(a1 + 16) = sub_100033A5C(v25);
  *(a1 + 24) = v30;
  result = sub_100033A5C(3);
  *(a1 + 48) = result;
  *(a1 + 56) = v32;
  return result;
}

uint64_t sub_1000C1B38@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  v3 = type metadata accessor for HeadphoneViewModel(0);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  v4 = v3[11];
  v5 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v6 = (a1 + v3[13]);
  *v6 = 0u;
  v6[1] = 0u;
  v7 = (a1 + v3[14]);
  sub_10001309C(v41);
  v8 = v41[11];
  v9 = v41[13];
  v10 = v41[14];
  v7[12] = v41[12];
  v7[13] = v9;
  v7[14] = v10;
  v11 = v41[7];
  v12 = v41[9];
  v13 = v41[10];
  v7[8] = v41[8];
  v7[9] = v12;
  v7[10] = v13;
  v7[11] = v8;
  v14 = v41[5];
  v7[4] = v41[4];
  v7[5] = v14;
  v7[6] = v41[6];
  v7[7] = v11;
  v15 = v41[1];
  *v7 = v41[0];
  v7[1] = v15;
  v16 = v41[3];
  v7[2] = v41[2];
  v7[3] = v16;
  *(a1 + v3[15]) = 0;
  *(a1 + v3[16]) = 0;
  *(a1 + v3[17]) = _swiftEmptyArrayStorage;
  *(a1 + v3[18]) = _swiftEmptyArrayStorage;
  v17 = (a1 + v3[19]);
  v17[5] = 0u;
  v17[6] = 0u;
  v17[3] = 0u;
  v17[4] = 0u;
  v17[1] = 0u;
  v17[2] = 0u;
  *v17 = 0u;
  v18 = (a1 + v3[20]);
  *v18 = 0;
  v18[1] = 0;
  *(a1 + v3[21]) = 0;
  v19 = v3[22];
  *(a1 + v19) = 0;
  *(a1 + v3[23]) = 0;
  *(a1 + v3[24]) = 0;
  *a1 = sub_100033A5C(60);
  *(a1 + 8) = v20;
  v21 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  v22 = *(v21 + *(type metadata accessor for HeadphoneModel(0) + 136));
  v23 = objc_opt_self();
  v24 = [v23 airPodsMax];
  LODWORD(v7) = [v24 productID];

  if (v7 == v22 || (v25 = [v23 airPodsMax], v26 = objc_msgSend(v25, "altProductID"), v25, v26 == v22))
  {
    v27 = 62;
  }

  else
  {
    v28 = [v23 b688];
    v29 = [v28 productID];

    if (v29 != v22 && v22 != 8219 && v22 != 8217)
    {
      v33 = [v23 powerBeatsPro];
      v34 = [v33 productID];

      if (v34 == v22 || v22 == 8221)
      {
        v35 = 64;
      }

      else
      {
        v37 = [v23 b494];
        v38 = [v37 productID];

        if (v38 == v22)
        {
          v35 = 65;
        }

        else
        {
          v39 = [v23 b465];
          v40 = [v39 productID];

          if (v40 != v22)
          {
            v27 = 61;
            goto LABEL_8;
          }

          v35 = 66;
        }
      }

      *(a1 + 16) = sub_100033A5C(v35);
      *(a1 + 24) = v36;
      *(a1 + v19) = sub_1000C8DBC();
      goto LABEL_9;
    }

    v27 = 63;
  }

LABEL_8:
  *(a1 + 16) = sub_100033A5C(v27);
  *(a1 + 24) = v30;
LABEL_9:
  result = sub_100033A5C(67);
  *(a1 + 32) = result;
  *(a1 + 40) = v32;
  return result;
}

uint64_t sub_1000C1ECC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HeadphoneViewModel(0);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  v4 = v3[11];
  v5 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v6 = (a1 + v3[13]);
  *v6 = 0u;
  v6[1] = 0u;
  v7 = (a1 + v3[14]);
  sub_10001309C(v42);
  v8 = v42[11];
  v9 = v42[13];
  v10 = v42[14];
  v7[12] = v42[12];
  v7[13] = v9;
  v7[14] = v10;
  v11 = v42[7];
  v12 = v42[9];
  v13 = v42[10];
  v7[8] = v42[8];
  v7[9] = v12;
  v7[10] = v13;
  v7[11] = v8;
  v14 = v42[5];
  v7[4] = v42[4];
  v7[5] = v14;
  v7[6] = v42[6];
  v7[7] = v11;
  v15 = v42[1];
  *v7 = v42[0];
  v7[1] = v15;
  v16 = v42[3];
  v7[2] = v42[2];
  v7[3] = v16;
  *(a1 + v3[15]) = 0;
  *(a1 + v3[16]) = 0;
  *(a1 + v3[17]) = _swiftEmptyArrayStorage;
  *(a1 + v3[18]) = _swiftEmptyArrayStorage;
  v17 = (a1 + v3[19]);
  v17[5] = 0u;
  v17[6] = 0u;
  v17[3] = 0u;
  v17[4] = 0u;
  v17[1] = 0u;
  v17[2] = 0u;
  *v17 = 0u;
  v18 = (a1 + v3[20]);
  *v18 = 0;
  v18[1] = 0;
  *(a1 + v3[21]) = 0;
  *(a1 + v3[22]) = 0;
  *(a1 + v3[23]) = 0;
  *(a1 + v3[24]) = 0;
  *a1 = sub_100033A5C(84);
  *(a1 + 8) = v19;
  *(a1 + 16) = sub_100033A5C(85);
  *(a1 + 24) = v20;
  v21 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  v22 = type metadata accessor for HeadphoneModel(0);
  v23 = *(v21 + *(v22 + 136));
  v24 = objc_opt_self();
  v25 = [v24 b768e];
  v26 = [v25 productID];

  if (v23 == v26 || (v27 = *(v21 + *(v22 + 136)), v28 = [v24 b768m], v29 = objc_msgSend(v28, "productID"), v28, v27 == v29) || (v30 = *(v21 + *(v22 + 136)), v31 = objc_msgSend(v24, "b768e"), v32 = objc_msgSend(v31, "altProductID"), v31, v30 == v32) || (v33 = *(v21 + *(v22 + 136)), v34 = objc_msgSend(v24, "b768m"), v35 = objc_msgSend(v34, "altProductID"), v34, v33 == v35))
  {
    v36 = sub_100033A5C(86);
    v38 = v37;

    *(a1 + 16) = v36;
    *(a1 + 24) = v38;
  }

  *(a1 + 32) = sub_100033A5C(87);
  *(a1 + 40) = v39;
  result = sub_100033A5C(71);
  *(a1 + 48) = result;
  *(a1 + 56) = v41;
  return result;
}

uint64_t sub_1000C21E8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HeadphoneModel(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  v7 = type metadata accessor for HeadphoneViewModel(0);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  v8 = v7[11];
  v9 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v9 - 8) + 56))(a1 + v8, 1, 1, v9);
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v10 = (a1 + v7[13]);
  *v10 = 0u;
  v10[1] = 0u;
  v11 = (a1 + v7[14]);
  sub_10001309C(v34);
  v12 = v34[11];
  v13 = v34[13];
  v14 = v34[14];
  v11[12] = v34[12];
  v11[13] = v13;
  v11[14] = v14;
  v15 = v34[7];
  v16 = v34[9];
  v17 = v34[10];
  v11[8] = v34[8];
  v11[9] = v16;
  v11[10] = v17;
  v11[11] = v12;
  v18 = v34[5];
  v11[4] = v34[4];
  v11[5] = v18;
  v11[6] = v34[6];
  v11[7] = v15;
  v19 = v34[1];
  *v11 = v34[0];
  v11[1] = v19;
  v20 = v34[3];
  v11[2] = v34[2];
  v11[3] = v20;
  *(a1 + v7[15]) = 0;
  *(a1 + v7[16]) = 0;
  *(a1 + v7[17]) = _swiftEmptyArrayStorage;
  *(a1 + v7[18]) = _swiftEmptyArrayStorage;
  v21 = (a1 + v7[19]);
  v21[5] = 0u;
  v21[6] = 0u;
  v21[3] = 0u;
  v21[4] = 0u;
  v21[1] = 0u;
  v21[2] = 0u;
  *v21 = 0u;
  v22 = (a1 + v7[20]);
  *v22 = 0;
  v22[1] = 0;
  *(a1 + v7[21]) = 0;
  *(a1 + v7[22]) = 0;
  *(a1 + v7[23]) = 0;
  *(a1 + v7[24]) = 0;
  *a1 = sub_100033A5C(88);
  *(a1 + 8) = v23;
  *(a1 + 32) = sub_100033A5C(89);
  *(a1 + 40) = v24;
  v25 = OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  sub_1000CE178(v1 + v25, v6, type metadata accessor for HeadphoneModel);
  v26 = *&v6[*(v4 + 144)];
  v27 = [objc_allocWithZone(SFHeadphoneProduct) initWithProductID:v26];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 isAirPods];
  }

  else
  {
    v29 = 0;
  }

  v30 = sub_1000130C4(v26);
  result = sub_1000CE1E0(v6, type metadata accessor for HeadphoneModel);
  if ((v29 & 1) != 0 || v30)
  {
    result = sub_100033A5C(90);
    *(a1 + 80) = result;
    *(a1 + 88) = v32;
  }

  return result;
}

uint64_t sub_1000C24AC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HeadphoneModel(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v7 = type metadata accessor for HeadphoneViewModel(0);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  v8 = v7[11];
  v9 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v9 - 8) + 56))(a1 + v8, 1, 1, v9);
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v10 = (a1 + v7[13]);
  *v10 = 0u;
  v10[1] = 0u;
  v11 = (a1 + v7[14]);
  sub_10001309C(v36);
  v12 = v36[11];
  v13 = v36[13];
  v14 = v36[14];
  v11[12] = v36[12];
  v11[13] = v13;
  v11[14] = v14;
  v15 = v36[7];
  v16 = v36[9];
  v17 = v36[10];
  v11[8] = v36[8];
  v11[9] = v16;
  v11[10] = v17;
  v11[11] = v12;
  v18 = v36[5];
  v11[4] = v36[4];
  v11[5] = v18;
  v11[6] = v36[6];
  v11[7] = v15;
  v19 = v36[1];
  *v11 = v36[0];
  v11[1] = v19;
  v20 = v36[3];
  v11[2] = v36[2];
  v11[3] = v20;
  *(a1 + v7[15]) = 0;
  *(a1 + v7[16]) = 0;
  *(a1 + v7[17]) = _swiftEmptyArrayStorage;
  *(a1 + v7[18]) = _swiftEmptyArrayStorage;
  v21 = (a1 + v7[19]);
  v21[5] = 0u;
  v21[6] = 0u;
  v21[3] = 0u;
  v21[4] = 0u;
  v21[1] = 0u;
  v21[2] = 0u;
  *v21 = 0u;
  v22 = (a1 + v7[20]);
  *v22 = 0;
  v22[1] = 0;
  *(a1 + v7[21]) = 0;
  *(a1 + v7[22]) = 0;
  *(a1 + v7[23]) = 0;
  *(a1 + v7[24]) = 0;
  v23 = OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  sub_1000CE178(v1 + v23, v6, type metadata accessor for HeadphoneModel);
  v24 = *&v6[*(v4 + 144)];
  v25 = [objc_allocWithZone(SFHeadphoneProduct) initWithProductID:v24];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 isAirPods];
  }

  else
  {
    v27 = 0;
  }

  v28 = sub_1000130C4(v24);
  sub_1000CE1E0(v6, type metadata accessor for HeadphoneModel);
  if (v27 | v28)
  {
    v29 = 91;
  }

  else
  {
    v29 = 92;
  }

  *a1 = sub_100033A5C(v29);
  *(a1 + 8) = v30;
  *(a1 + 16) = sub_100033A5C(93);
  *(a1 + 24) = v31;
  *(a1 + 32) = sub_100033A5C(94);
  *(a1 + 40) = v32;
  result = sub_100033A5C(95);
  *(a1 + 48) = result;
  *(a1 + 56) = v34;
  return result;
}

void sub_1000C2774(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HeadphoneAssets(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v173 = &v168 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for URL();
  v170 = *(v174 - 8);
  __chkstk_darwin(v174);
  v169 = &v168 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  v7 = type metadata accessor for HeadphoneViewModel(0);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  v8 = *(v4 + 56);
  v171 = v7[11];
  v8(a1 + v171, 1, 1, v3);
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v9 = (a1 + v7[13]);
  *v9 = 0u;
  v9[1] = 0u;
  v10 = (a1 + v7[14]);
  sub_10001309C(v189);
  v11 = v189[13];
  v10[12] = v189[12];
  v10[13] = v11;
  v10[14] = v189[14];
  v12 = v189[9];
  v10[8] = v189[8];
  v10[9] = v12;
  v13 = v189[11];
  v10[10] = v189[10];
  v10[11] = v13;
  v14 = v189[5];
  v10[4] = v189[4];
  v10[5] = v14;
  v15 = v189[7];
  v10[6] = v189[6];
  v10[7] = v15;
  v16 = v189[1];
  *v10 = v189[0];
  v10[1] = v16;
  v17 = v189[3];
  v10[2] = v189[2];
  v10[3] = v17;
  *(a1 + v7[15]) = 0;
  *(a1 + v7[16]) = 0;
  *(a1 + v7[18]) = _swiftEmptyArrayStorage;
  v18 = (a1 + v7[19]);
  v18[5] = 0u;
  v18[6] = 0u;
  v18[3] = 0u;
  v18[4] = 0u;
  v18[1] = 0u;
  v18[2] = 0u;
  *v18 = 0u;
  v19 = (a1 + v7[20]);
  *v19 = 0;
  v19[1] = 0;
  *(a1 + v7[21]) = 0;
  *(a1 + v7[22]) = 0;
  *(a1 + v7[23]) = 0;
  *(a1 + v7[24]) = 0;
  v20 = sub_100033A5C(27);
  v22 = v21;
  *(a1 + 16) = v20;
  *(a1 + 24) = v21;
  v185 = a1;
  v181 = v1;
  v23 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  v24 = type metadata accessor for HeadphoneModel(0);
  v25 = *(v23 + v24[31]);
  v26 = *(v23 + v24[34]);
  v175 = v4 + 56;
  v182 = v7;
  v172 = v8;
  LODWORD(v180) = v25;
  v186 = v22;
  if ((v26 - 8217) <= 7 && ((1 << (v26 - 25)) & 0xA5) != 0)
  {
    sub_1000B4564(v26);
    LODWORD(v187) = 1;
    goto LABEL_4;
  }

  if (sub_1000B4564(v26))
  {
    LODWORD(v187) = 0;
LABEL_4:
    v27 = *(v23 + v24[34]);
    v28 = *(v23 + v24[32]);
    v29 = objc_opt_self();
    v30 = [v29 b698];
    v31 = [v30 productID];

    v168 = v3;
    v177 = v29;
    if (v27 == v31)
    {
      if (v27 != v28 && *(v23 + 162) != 3)
      {
LABEL_7:
        if (v187)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }
    }

    else if (v27 != v28)
    {
      goto LABEL_7;
    }

    v32 = *(v23 + v24[34]);
    v33 = [v29 airPodsPro];
    v34 = [v33 productID];

    if (v32 != v34 || *(v23 + 162) != 3)
    {
      v35 = *(v23 + v24[34]);
      v36 = [v29 b698];
      v37 = [v36 productID];

      if (v35 != v37 || *(v23 + 162) != 2)
      {
LABEL_18:
        v43 = [v29 b698];
        v44 = [v43 productID];

        v45 = sub_100050BE8(0x52554F595F544F4ELL, 0xE900000000000053, v44);
        v188 = v46;
        v47 = *(v23 + v24[18]);
        v179 = v45;
        if (v47 == 1)
        {
          v48 = v45;
          v49 = objc_opt_self();
          v50 = v188;

          v51 = [v49 systemRedColor];

          v183 = v51;
          v52 = v51;
          v53 = [v29 b698];
          v54 = [v53 productID];

          v55 = sub_100050BE8(0xD00000000000001CLL, 0x80000001000E26F0, v54);
          v57 = v56;

          LODWORD(v178) = 0;
          v58 = v185;
          v185[2] = v55;
          v58[3] = v57;
          LODWORD(v186) = 2;
          v184 = v48;
          v59 = v50;
          v60 = v187;
          goto LABEL_48;
        }

        v61 = [v29 b698];
        v62 = [v61 productID];

        v63 = sub_100050BE8(0xD00000000000001CLL, 0x80000001000E2670, v62);
        v65 = v64;

        v66 = v185;
        v185[2] = v63;
        v66[3] = v65;
        v67 = *(v23 + 152);
        if (v67)
        {
          v68 = *(v23 + 144);
          v69 = v181;
          swift_beginAccess();
          v70 = *(v69 + 40);
          v60 = v187;
          if (v70)
          {

            v184 = sub_10007B1A8(v68, v67);
            v59 = v71;

            if (v59)
            {

              v183 = 0;
              LODWORD(v178) = 0;
              LODWORD(v186) = 2;
              goto LABEL_48;
            }

            v184 = 0;
          }

          else
          {
            v184 = 0;
            v59 = 0;
          }

          v183 = 0;
          LODWORD(v186) = 255;
          LODWORD(v178) = 1;
        }

        else
        {
          v183 = 0;
          v184 = 0;
          v59 = 0;
          LODWORD(v186) = 255;
          LODWORD(v178) = 1;
          v60 = v187;
        }

LABEL_48:
        v116 = *(v23 + 152);
        LODWORD(v187) = v60;
        if (v116)
        {
          v117 = v59;
          v118 = *(v23 + 144);
          v119 = v181;
          swift_beginAccess();
          if (*(v119 + 40))
          {

            v120 = sub_10007B1A8(v118, v116);
            v77 = v121;

            if (v77)
            {
              v122 = v120;
            }

            else
            {
              v122 = 0;
            }
          }

          else
          {
            v122 = 0;
            v77 = 0;
          }

          v59 = v117;
        }

        else
        {
          v122 = 0;
          v77 = 0;
        }

        v123 = (v23 + v24[19]);
        v124 = v123[1];
        v125 = v179;
        if (v124 && (v126 = *v123, v127 = v181, swift_beginAccess(), *(v127 + 40)))
        {

          v128 = sub_10007B1A8(v126, v124);
          v130 = v129;

          if (!v130)
          {
            v128 = 0;
          }
        }

        else
        {
          v128 = 0;
          v130 = 0;
        }

        v75 = v122;
        if ((v180 & 0x80) == 0)
        {
          if (v77)
          {
            v87 = 0;
            if (v130)
            {
LABEL_65:

              v78 = v75;
              v188 = v77;
              v75 = v128;
              v77 = v130;
              v88 = 0;
              goto LABEL_73;
            }
          }

          else
          {
            v132 = objc_opt_self();
            v77 = v188;

            v87 = [v132 systemRedColor];
            v75 = v125;
            if (v130)
            {
              goto LABEL_65;
            }
          }

          v88 = [objc_opt_self() systemRedColor];
          v133 = v188;
          v78 = v75;
          v188 = v77;
          v75 = v125;
          v77 = v133;
LABEL_73:
          v135 = 0xD000000000000012;
          v89 = v187;
          if (!v187)
          {
            v135 = 0xD000000000000030;
          }

          v176 = v135;
          if (v178)
          {
LABEL_76:
            v181 = v59;
            sub_100008438(&unk_10011FFA8, &unk_1000DA4A8);
            v136 = swift_allocObject();
            *(v136 + 16) = xmmword_1000D66A0;
            *(v136 + 32) = v75;
            *(v136 + 40) = v77;
            *(v136 + 48) = v88;
            *(v136 + 56) = 0;
            v137 = v188;
            *(v136 + 64) = v78;
            *(v136 + 72) = v137;
            *(v136 + 80) = v87;
            v179 = v136;
            *(v136 + 88) = 1;
            LODWORD(v186) = 255;
            if (v89)
            {
LABEL_77:
              v138 = "MISMATCH_AIRPODS_SUBTITLE";
              v187 = v88;
              sub_1000CE04C(v75, v77, v88, 0);
              v180 = v78;
              v178 = v87;
              v139 = sub_1000CE04C(v78, v188, v87, 1u);
              v140 = [v177 airPods];
              v141 = [v140 productID];

              v142 = 0xD000000000000016;
LABEL_80:
              v148 = sub_100050BE8(v142, (v138 | 0x8000000000000000), v141);
              v101 = v185;
              *v185 = v148;
              v101[1] = v149;
              v150 = String._bridgeToObjectiveC()();

              v151 = [objc_opt_self() imageNamed:v150];

              if (v151)
              {
                v177 = v77;
                v152 = v169;
                URL.init(fileURLWithPath:)();
                v153 = v170;
                v154 = *(v170 + 16);
                v155 = v173;
                v176 = v75;
                v156 = v174;
                v154(v173, v152, v174);
                v157 = v168;
                v154((v155 + v168[5]), v152, v156);
                (*(v153 + 56))(v155 + v157[6], 1, 1, v156);
                v158 = v157[7];
                v159 = type metadata accessor for HeadphoneAssets.Feature(0);
                (*(*(v159 - 8) + 56))(v155 + v158, 1, 1, v159);
                v160 = v157[8];
                *(v155 + v157[9]) = 0;
                v161 = (v155 + v157[10]);
                *v161 = 0;
                v161[1] = 0;
                sub_100008438(&unk_10011D960, &qword_1000D5CF0);
                v162 = swift_allocObject();
                *(v162 + 16) = xmmword_1000D78E0;
                *(v162 + 32) = v151;
                v163 = v151;
                sub_1000CE094(v184, v181, v183, v186);
                sub_1000261AC(v180, v188, v178, 1u);
                sub_1000261AC(v176, v177, v187, 0);

                (*(v153 + 8))(v152, v156);
                *(v155 + v160) = v162;
                v164 = v171;
                sub_10000E950(v101 + v171, &qword_10011CCF0, qword_1000D61B0);
                sub_1000CE178(v155, v101 + v164, type metadata accessor for HeadphoneAssets);
                v172(v101 + v164, 0, 1, v157);
                sub_1000CE1E0(v155, type metadata accessor for HeadphoneAssets);
              }

              else
              {
                sub_1000CE094(v184, v181, v183, v186);
                sub_1000261AC(v180, v188, v178, 1u);
                sub_1000261AC(v75, v77, v187, 0);
              }

              v7 = v182;
              v98 = v179;
              goto LABEL_84;
            }

LABEL_79:
            v138 = "ightBud-1_case-1";
            v187 = v88;
            sub_1000CE04C(v75, v77, v88, 0);
            v180 = v78;
            v178 = v87;
            v146 = sub_1000CE04C(v78, v188, v87, 1u);
            v147 = [v177 b698];
            v141 = [v147 productID];

            v142 = 0xD000000000000014;
            goto LABEL_80;
          }

          goto LABEL_78;
        }

        if (v77)
        {
          v131 = 0;
          if (v130)
          {
LABEL_68:

            v87 = 0;
            v188 = v130;
            v88 = v131;
            v78 = v128;
            goto LABEL_73;
          }
        }

        else
        {
          v134 = objc_opt_self();
          v77 = v188;

          v131 = [v134 systemRedColor];
          v75 = v125;
          if (v130)
          {
            goto LABEL_68;
          }
        }

        v87 = [objc_opt_self() systemRedColor];
        v88 = v131;
        v78 = v125;
        goto LABEL_73;
      }
    }

LABEL_14:
    if (v27 != v28)
    {
      if ((v180 & 0x80) != 0 && (v72 = *(v23 + v24[34]), v73 = [v29 airPodsPro], v74 = objc_msgSend(v73, "productID"), v73, v72 == v74))
      {
        v75 = sub_100033A5C(31);
        v77 = v76;
        v78 = sub_100033A5C(32);
        v188 = v79;
        v184 = 0;
        v59 = 0;
      }

      else
      {
        v75 = sub_100033A5C(32);
        v77 = v90;
        v78 = sub_100033A5C(31);
        v188 = v91;
        v184 = 0;
        v59 = 0;
      }

      v183 = 0;
      v87 = 0;
      v88 = 0;
      v176 = 0xD000000000000030;
      LOBYTE(v89) = v187;
      goto LABEL_76;
    }

    v38 = *(v23 + v24[34]);
    v39 = [v29 airPodsPro];
    v40 = [v39 productID];

    if (v38 == v40 && *(v23 + 162) == 3)
    {
      v41 = 32;
      v42 = 31;
    }

    else
    {
      v41 = 31;
      v42 = 32;
    }

    v80 = v187;
    v81 = sub_100033A5C(v42);
    v83 = v82;
    v84 = v42;
    v75 = v81;
    v78 = sub_100033A5C(v84);
    v188 = v85;
    v184 = sub_100033A5C(v41);
    v59 = v86;

    v183 = 0;
    v87 = 0;
    v88 = 0;
    LODWORD(v186) = 2;
    v176 = 0xD000000000000030;
    v77 = v83;
    v89 = v80;
LABEL_78:
    sub_100008438(&unk_10011FFA8, &unk_1000DA4A8);
    v143 = swift_allocObject();
    *(v143 + 16) = xmmword_1000D8C40;
    *(v143 + 32) = v75;
    *(v143 + 40) = v77;
    *(v143 + 48) = v88;
    *(v143 + 56) = 0;
    v144 = v188;
    *(v143 + 64) = v78;
    *(v143 + 72) = v144;
    *(v143 + 80) = v87;
    *(v143 + 88) = 1;
    v145 = v183;
    *(v143 + 96) = v184;
    *(v143 + 104) = v59;
    v181 = v59;
    *(v143 + 112) = v145;
    v179 = v143;
    *(v143 + 120) = v186;
    if (v89)
    {
      goto LABEL_77;
    }

    goto LABEL_79;
  }

  if ((v25 & 0x80) != 0 && (v92 = *(v23 + v24[34]), v93 = [objc_opt_self() airPods], v94 = objc_msgSend(v93, "productID"), v93, v92 == v94))
  {
    v95 = sub_100033A5C(31);
    v97 = v96;
    v98 = sub_1000CC210(0, 1, 1, _swiftEmptyArrayStorage);
    v100 = *(v98 + 2);
    v99 = *(v98 + 3);
    v101 = v185;
    if (v100 >= v99 >> 1)
    {
      v98 = sub_1000CC210((v99 > 1), v100 + 1, 1, v98);
    }

    *(v98 + 2) = v100 + 1;
    v102 = &v98[32 * v100];
    *(v102 + 4) = v95;
    *(v102 + 5) = v97;
    *(v102 + 6) = 0;
    v102[56] = 0;
    v103 = 32;
  }

  else
  {
    v104 = sub_100033A5C(32);
    v106 = v105;
    v98 = sub_1000CC210(0, 1, 1, _swiftEmptyArrayStorage);
    v108 = *(v98 + 2);
    v107 = *(v98 + 3);
    v101 = v185;
    if (v108 >= v107 >> 1)
    {
      v98 = sub_1000CC210((v107 > 1), v108 + 1, 1, v98);
    }

    *(v98 + 2) = v108 + 1;
    v109 = &v98[32 * v108];
    *(v109 + 4) = v104;
    *(v109 + 5) = v106;
    *(v109 + 6) = 0;
    v109[56] = 0;
    v103 = 31;
  }

  v110 = sub_100033A5C(v103);
  v113 = *(v98 + 2);
  v112 = *(v98 + 3);
  if (v113 >= v112 >> 1)
  {
    v165 = v110;
    v166 = v111;
    v167 = sub_1000CC210((v112 > 1), v113 + 1, 1, v98);
    v111 = v166;
    v98 = v167;
    v110 = v165;
  }

  *(v98 + 2) = v113 + 1;
  v114 = &v98[32 * v113];
  *(v114 + 4) = v110;
  *(v114 + 5) = v111;
  *(v114 + 6) = 0;
  v114[56] = 1;
  *v101 = sub_100033A5C(26);
  v101[1] = v115;
LABEL_84:
  *(v101 + v7[17]) = v98;
}

uint64_t sub_1000C38E0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HeadphoneModel(0);
  v4 = (v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  v7 = type metadata accessor for HeadphoneViewModel(0);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  v8 = v7[11];
  v9 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v9 - 8) + 56))(a1 + v8, 1, 1, v9);
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v10 = (a1 + v7[13]);
  *v10 = 0u;
  v10[1] = 0u;
  v11 = (a1 + v7[14]);
  sub_10001309C(v43);
  v12 = v43[13];
  v11[12] = v43[12];
  v11[13] = v12;
  v11[14] = v43[14];
  v13 = v43[9];
  v11[8] = v43[8];
  v11[9] = v13;
  v14 = v43[11];
  v11[10] = v43[10];
  v11[11] = v14;
  v15 = v43[5];
  v11[4] = v43[4];
  v11[5] = v15;
  v16 = v43[7];
  v11[6] = v43[6];
  v11[7] = v16;
  v17 = v43[1];
  *v11 = v43[0];
  v11[1] = v17;
  v18 = v43[3];
  v11[2] = v43[2];
  v11[3] = v18;
  *(a1 + v7[15]) = 0;
  *(a1 + v7[16]) = 0;
  *(a1 + v7[17]) = _swiftEmptyArrayStorage;
  *(a1 + v7[18]) = _swiftEmptyArrayStorage;
  v19 = (a1 + v7[19]);
  v19[5] = 0u;
  v19[6] = 0u;
  v19[3] = 0u;
  v19[4] = 0u;
  v19[1] = 0u;
  v19[2] = 0u;
  *v19 = 0u;
  v20 = (a1 + v7[20]);
  *v20 = 0;
  v20[1] = 0;
  *(a1 + v7[21]) = 0;
  *(a1 + v7[22]) = 0;
  *(a1 + v7[23]) = 0;
  *(a1 + v7[24]) = 0;
  v21 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  sub_1000CE178(v21, v6, type metadata accessor for HeadphoneModel);
  v22 = sub_100050E28(0x52554F595F544F4ELL, 0xE800000000000000, v6);
  v24 = v23;
  sub_1000CE1E0(v6, type metadata accessor for HeadphoneModel);
  *a1 = v22;
  *(a1 + 8) = v24;
  if (*(v21 + v4[31]))
  {
    v25 = 10;
  }

  else
  {
    v25 = 8;
  }

  if (*(v21 + v4[31]))
  {
    v26 = 11;
  }

  else
  {
    v26 = 9;
  }

  if (*(v21 + v4[32]))
  {
    v27 = v26;
  }

  else
  {
    v27 = v25;
  }

  *(a1 + 48) = sub_100033A5C(v27);
  *(a1 + 56) = v28;
  sub_1000CE178(v21, v6, type metadata accessor for HeadphoneModel);
  v29 = sub_100050A94(0x52554F595F544F4ELL, 0xE800000000000000, v6);
  v31 = v30;
  sub_1000CE1E0(v6, type metadata accessor for HeadphoneModel);
  v41 = v29;
  v42 = v31;

  v32._countAndFlagsBits = 0x4F464E495FLL;
  v32._object = 0xE500000000000000;
  String.append(_:)(v32);

  v33 = sub_1000363D4(v41, v42);
  v35 = v34;

  sub_1000CE178(v21, v6, type metadata accessor for HeadphoneModel);
  v36 = sub_100050BE8(v33, v35, *&v6[v4[36]]);
  v38 = v37;

  result = sub_1000CE1E0(v6, type metadata accessor for HeadphoneModel);
  *(a1 + 16) = v36;
  *(a1 + 24) = v38;
  return result;
}

uint64_t sub_1000C3C3C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HeadphoneModel(0);
  v4 = __chkstk_darwin(v3);
  v51 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v50 - v7;
  __chkstk_darwin(v6);
  v10 = &v50 - v9;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  v11 = type metadata accessor for HeadphoneViewModel(0);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  v12 = v11[11];
  v13 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v14 = (a1 + v11[13]);
  *v14 = 0u;
  v14[1] = 0u;
  v15 = (a1 + v11[14]);
  sub_10001309C(v52);
  v16 = v52[11];
  v17 = v52[13];
  v18 = v52[14];
  v15[12] = v52[12];
  v15[13] = v17;
  v15[14] = v18;
  v19 = v52[7];
  v20 = v52[9];
  v21 = v52[10];
  v15[8] = v52[8];
  v15[9] = v20;
  v15[10] = v21;
  v15[11] = v16;
  v22 = v52[5];
  v15[4] = v52[4];
  v15[5] = v22;
  v15[6] = v52[6];
  v15[7] = v19;
  v23 = v52[1];
  *v15 = v52[0];
  v15[1] = v23;
  v24 = v52[3];
  v15[2] = v52[2];
  v15[3] = v24;
  *(a1 + v11[15]) = 0;
  *(a1 + v11[16]) = 0;
  *(a1 + v11[17]) = _swiftEmptyArrayStorage;
  *(a1 + v11[18]) = _swiftEmptyArrayStorage;
  v25 = (a1 + v11[19]);
  v25[5] = 0u;
  v25[6] = 0u;
  v25[3] = 0u;
  v25[4] = 0u;
  v25[1] = 0u;
  v25[2] = 0u;
  *v25 = 0u;
  v26 = (a1 + v11[20]);
  *v26 = 0;
  v26[1] = 0;
  v27 = v11[21];
  *(a1 + v11[22]) = 0;
  *(a1 + v11[23]) = 0;
  *(a1 + v11[24]) = 0;
  v28 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  v29 = *(v28 + *(v3 + 136));
  *(a1 + v27) = v29;
  if ((v29 - 8217) <= 7 && ((1 << (v29 - 25)) & 0xA5) != 0 || (v34 = objc_opt_self(), v35 = [v34 b788], v36 = objc_msgSend(v35, "productID"), v35, v29 == v36) || (v37 = objc_msgSend(v34, "b788"), v38 = objc_msgSend(v37, "altProductID"), v37, v29 == v38))
  {
    *a1 = sub_100033A5C(7);
    *(a1 + 8) = v30;
    v31 = 51;
  }

  else
  {
    *a1 = sub_100033A5C(6);
    *(a1 + 8) = v39;
    sub_1000CE178(v28, v10, type metadata accessor for HeadphoneModel);
    v40 = [objc_allocWithZone(SFHeadphoneProduct) initWithProductID:*&v10[*(v3 + 136)]];
    if (v40)
    {
      v41 = v40;
      v42 = [v40 buttonLocation];

      sub_1000CE1E0(v10, type metadata accessor for HeadphoneModel);
      if (!v42)
      {
        v31 = 52;
        goto LABEL_4;
      }
    }

    else
    {
      sub_1000CE1E0(v10, type metadata accessor for HeadphoneModel);
    }

    sub_1000CE178(v28, v8, type metadata accessor for HeadphoneModel);
    v43 = sub_1000CE0A8(*&v8[*(v3 + 136)]);
    sub_1000CE1E0(v8, type metadata accessor for HeadphoneModel);
    if (v43)
    {
      v31 = 49;
    }

    else
    {
      v44 = v51;
      sub_1000CE178(v28, v51, type metadata accessor for HeadphoneModel);
      v45 = *(v44 + *(v3 + 136));
      v46 = [objc_allocWithZone(SFHeadphoneProduct) initWithProductID:v45];
      if (v46)
      {
        v47 = v46;
        v48 = [v46 isAirPods];
      }

      else
      {
        v48 = 0;
      }

      v49 = sub_1000130C4(v45);
      sub_1000CE1E0(v44, type metadata accessor for HeadphoneModel);
      if (v48 | v49)
      {
        v31 = 50;
      }

      else
      {
        v31 = 49;
      }
    }
  }

LABEL_4:
  result = sub_100033A5C(v31);
  *(a1 + 16) = result;
  *(a1 + 24) = v33;
  return result;
}

uint64_t sub_1000C40F8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HeadphoneModel(0);
  __chkstk_darwin(v3);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  v6 = type metadata accessor for HeadphoneViewModel(0);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  v7 = v6[11];
  v8 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v9 = (a1 + v6[13]);
  *v9 = 0u;
  v9[1] = 0u;
  v10 = (a1 + v6[14]);
  sub_10001309C(v51);
  v11 = v51[11];
  v12 = v51[13];
  v13 = v51[14];
  v10[12] = v51[12];
  v10[13] = v12;
  v10[14] = v13;
  v14 = v51[7];
  v15 = v51[9];
  v16 = v51[10];
  v10[8] = v51[8];
  v10[9] = v15;
  v10[10] = v16;
  v10[11] = v11;
  v17 = v51[5];
  v10[4] = v51[4];
  v10[5] = v17;
  v10[6] = v51[6];
  v10[7] = v14;
  v18 = v51[1];
  *v10 = v51[0];
  v10[1] = v18;
  v19 = v51[3];
  v10[2] = v51[2];
  v10[3] = v19;
  *(a1 + v6[15]) = 0;
  v20 = v6[16];
  *(a1 + v20) = 0;
  *(a1 + v6[17]) = _swiftEmptyArrayStorage;
  *(a1 + v6[18]) = _swiftEmptyArrayStorage;
  v21 = (a1 + v6[19]);
  v21[5] = 0u;
  v21[6] = 0u;
  v21[3] = 0u;
  v21[4] = 0u;
  v21[1] = 0u;
  v21[2] = 0u;
  *v21 = 0u;
  v22 = (a1 + v6[20]);
  *v22 = 0;
  v22[1] = 0;
  *(a1 + v6[21]) = 0;
  *(a1 + v6[22]) = 0;
  *(a1 + v6[23]) = 0;
  *(a1 + v6[24]) = 0;
  v50 = v1;
  v23 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  sub_1000CE178(v23, v5, type metadata accessor for HeadphoneModel);
  v24 = sub_100050E28(0x5F544355444F5250, 0xEC000000454D414ELL, v5);
  v26 = v25;
  sub_1000CE1E0(v5, type metadata accessor for HeadphoneModel);
  *a1 = v24;
  *(a1 + 8) = v26;
  v49 = v3;
  LODWORD(v24) = *(v23 + *(v3 + 112));
  sub_1000CE178(v23, v5, type metadata accessor for HeadphoneModel);
  if (v24 == 1)
  {
    v27 = sub_100050A94(0xD000000000000010, 0x80000001000E2730, v5);
    v29 = v28;
    sub_1000CE1E0(v5, type metadata accessor for HeadphoneModel);
    *(a1 + 32) = sub_100033A5C(38);
    *(a1 + 40) = v30;
    *(a1 + v20) = 1;
  }

  else
  {
    v31 = sub_100050A94(0xD000000000000010, 0x80000001000E2710, v5);
    v33 = v32;
    sub_1000CE1E0(v5, type metadata accessor for HeadphoneModel);
    v27 = sub_1000363D4(v31, v33);
    v29 = v34;

    *(a1 + 32) = sub_100033A5C(35);
    *(a1 + 40) = v35;
    v36 = sub_1000363D4(0x5F5443454E4E4F43, 0xEA00000000004F54);
    v38 = v37;
    v39 = [objc_opt_self() mainBundle];
    v52._object = 0xE000000000000000;
    v40.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v40.value._object = 0xEB00000000656C62;
    v41._countAndFlagsBits = v36;
    v41._object = v38;
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    v52._countAndFlagsBits = 0;
    v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(v41, v40, v39, v42, v52);

    *(a1 + 48) = v43;
  }

  sub_1000CE178(v23, v5, type metadata accessor for HeadphoneModel);
  v44 = sub_100050BE8(v27, v29, *&v5[*(v49 + 136)]);
  v46 = v45;

  result = sub_1000CE1E0(v5, type metadata accessor for HeadphoneModel);
  *(a1 + 16) = v44;
  *(a1 + 24) = v46;
  if (*(v50 + 80) == 3)
  {
    result = sub_100033A5C(39);
    *(a1 + 64) = result;
    *(a1 + 72) = v48;
  }

  return result;
}

uint64_t sub_1000C457C@<X0>(char *a1@<X8>)
{
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  *(a1 + 6) = 0;
  *(a1 + 7) = 0xE000000000000000;
  *(a1 + 12) = 0;
  v2 = type metadata accessor for HeadphoneViewModel(0);
  *(a1 + 8) = 0;
  *(a1 + 9) = 0;
  v3 = v2[11];
  v4 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v5 = &a1[v2[13]];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v6 = &a1[v2[14]];
  sub_10001309C(v24);
  v7 = v24[13];
  *(v6 + 12) = v24[12];
  *(v6 + 13) = v7;
  *(v6 + 14) = v24[14];
  v8 = v24[9];
  *(v6 + 8) = v24[8];
  *(v6 + 9) = v8;
  v9 = v24[11];
  *(v6 + 10) = v24[10];
  *(v6 + 11) = v9;
  v10 = v24[5];
  *(v6 + 4) = v24[4];
  *(v6 + 5) = v10;
  v11 = v24[7];
  *(v6 + 6) = v24[6];
  *(v6 + 7) = v11;
  v12 = v24[1];
  *v6 = v24[0];
  *(v6 + 1) = v12;
  v13 = v24[3];
  *(v6 + 2) = v24[2];
  *(v6 + 3) = v13;
  a1[v2[15]] = 0;
  a1[v2[16]] = 0;
  *&a1[v2[17]] = _swiftEmptyArrayStorage;
  *&a1[v2[18]] = _swiftEmptyArrayStorage;
  v14 = &a1[v2[19]];
  *(v14 + 5) = 0u;
  *(v14 + 6) = 0u;
  *(v14 + 3) = 0u;
  *(v14 + 4) = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 2) = 0u;
  *v14 = 0u;
  v15 = &a1[v2[20]];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&a1[v2[21]] = 0;
  *&a1[v2[22]] = 0;
  a1[v2[23]] = 0;
  a1[v2[24]] = 0;
  v23[3] = &type metadata for HeadphonePresenter.AppleAccountFeatureFlags;
  v23[4] = sub_1000CE0C0();
  v16 = isFeatureEnabled(_:)();
  sub_10000EA94(v23);
  if (v16)
  {
    v17 = 127;
  }

  else
  {
    v17 = 125;
  }

  if (v16)
  {
    v18 = 0x80;
  }

  else
  {
    v18 = 126;
  }

  *a1 = sub_100033A5C(v17);
  *(a1 + 1) = v19;
  *(a1 + 10) = sub_100033A5C(v18);
  *(a1 + 11) = v20;
  result = sub_100033A5C(0);
  *(a1 + 4) = result;
  *(a1 + 5) = v22;
  return result;
}

uint64_t sub_1000C476C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v69 = a1;
  v3 = type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  __chkstk_darwin(v3);
  v68 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HeadphoneModel(0);
  __chkstk_darwin(v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HeadphoneViewModel(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v11 + 2) = 0;
  *(v11 + 3) = 0xE000000000000000;
  *(v11 + 4) = 0;
  *(v11 + 5) = 0xE000000000000000;
  *(v11 + 6) = 0;
  *(v11 + 7) = 0xE000000000000000;
  *(v11 + 4) = 0u;
  *(v11 + 5) = 0u;
  *(v11 + 12) = 0;
  v12 = *(v9 + 44);
  v13 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
  v67 = v8[12];
  swift_storeEnumTagMultiPayload();
  v14 = &v11[v8[13]];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v15 = &v11[v8[14]];
  sub_10001309C(v71);
  v16 = v71[11];
  v17 = v71[13];
  v18 = v71[14];
  *(v15 + 12) = v71[12];
  *(v15 + 13) = v17;
  *(v15 + 14) = v18;
  v19 = v71[7];
  v20 = v71[9];
  v21 = v71[10];
  *(v15 + 8) = v71[8];
  *(v15 + 9) = v20;
  *(v15 + 10) = v21;
  *(v15 + 11) = v16;
  v22 = v71[5];
  v23 = v71[6];
  *(v15 + 4) = v71[4];
  *(v15 + 5) = v22;
  *(v15 + 6) = v23;
  *(v15 + 7) = v19;
  v24 = v71[1];
  *v15 = v71[0];
  *(v15 + 1) = v24;
  v25 = v71[3];
  *(v15 + 2) = v71[2];
  *(v15 + 3) = v25;
  v11[v8[16]] = 0;
  *&v11[v8[17]] = _swiftEmptyArrayStorage;
  *&v11[v8[18]] = _swiftEmptyArrayStorage;
  v26 = &v11[v8[19]];
  *(v26 + 5) = 0u;
  *(v26 + 6) = 0u;
  *(v26 + 3) = 0u;
  *(v26 + 4) = 0u;
  *(v26 + 1) = 0u;
  *(v26 + 2) = 0u;
  *v26 = 0u;
  v27 = &v11[v8[20]];
  *v27 = 0;
  *(v27 + 1) = 0;
  *&v11[v8[21]] = 0;
  *&v11[v8[22]] = 0;
  v11[v8[23]] = 0;
  v11[v8[24]] = 0;
  v28 = v2 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  v29 = (v28 + v5[14]);
  v31 = *v29;
  v30 = v29[1];
  v32 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v32 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (v32)
  {
  }

  else if (*(v28 + v5[21]) == 1)
  {
    sub_1000CE178(v28, v7, type metadata accessor for HeadphoneModel);
    v31 = sub_100050E28(0x5F544355444F5250, 0xEC000000454D414ELL, v7);
    v30 = v33;
    sub_1000CE1E0(v7, type metadata accessor for HeadphoneModel);
  }

  else
  {
    v31 = sub_100033A5C(33);
    v30 = v34;
  }

  *v11 = v31;
  *(v11 + 1) = v30;
  if (*(v28 + 136) != 13)
  {
    v35 = (v28 + v5[14]);
    v37 = *v35;
    v36 = v35[1];
    sub_100008438(&qword_10011EA80, &unk_1000DA490);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1000D5250;
    *(v38 + 56) = &type metadata for String;
    *(v38 + 64) = sub_1000CDFF8();
    *(v38 + 32) = v37;
    *(v38 + 40) = v36;

    v39 = sub_1000364D8(v38, 42);
    v41 = v40;

    *(v11 + 2) = v39;
    *(v11 + 3) = v41;
    v42 = *(v28 + v5[45] + 8);
    if (v42)
    {
      v43 = 2;
    }

    else
    {
      v43 = 0;
    }

    if (v42 == 255)
    {
      v44 = 0;
    }

    else
    {
      v44 = v43;
    }

    *(v11 + 4) = sub_100033A5C(v44);
    *(v11 + 5) = v45;
  }

  v46 = v8[15];
  swift_beginAccess();
  v47 = *(v2 + 40);
  if (v47)
  {
    v48 = sub_10000E7E4((v2 + 16), *(v2 + 40));
    v66 = v46;
    v49 = *(v47 - 8);
    __chkstk_darwin(v48);
    v51 = &v66 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v49 + 16))(v51);
    type metadata accessor for HeadphoneInteractor(0);
    v52 = sub_100078158();
    v53.n128_f64[0] = (*(v49 + 8))(v51, v47);
    v54 = sub_1000CAAE4(v52, v2, v53);
    v70[0] = v54;
    v55 = sub_1000CB184(v52, v70);

    v70[0] = v55;
    v56 = v55;
    v57 = sub_1000CB388(v2, v70);
    *(v11 + 12) = v55;
    *(v11 + 6) = v57;
    *(v11 + 7) = v58;
    v59 = v68;
    sub_1000C9424(v68);

    sub_1000CE114(v59, &v11[v67]);
    v11[v66] = *(v2 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_useMovieForNextBatteryView);
  }

  else
  {
    v60 = v68;
    sub_1000C9424(v68);
    sub_1000CE114(v60, &v11[v67]);
    v11[v46] = *(v2 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_useMovieForNextBatteryView);
    if (qword_10011C770 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_10000A570(v61, qword_10011FDE0);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "skipping OBC due to missing battery info !", v64, 2u);
    }
  }

  sub_1000CE178(v11, v69, type metadata accessor for HeadphoneViewModel);
  return sub_1000CE1E0(v11, type metadata accessor for HeadphoneViewModel);
}

uint64_t sub_1000C4E28@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for HeadphoneViewModel(0);
  v4 = (v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 2) = 0;
  v7 = (v6 + 16);
  *(v6 + 3) = 0xE000000000000000;
  v8 = v6 + 24;
  *(v6 + 4) = 0;
  v9 = (v6 + 32);
  *(v6 + 5) = 0xE000000000000000;
  v10 = v6 + 40;
  *(v6 + 6) = 0;
  *(v6 + 7) = 0xE000000000000000;
  *v6 = 0;
  *(v6 + 1) = 0xE000000000000000;
  *(v6 + 4) = 0u;
  *(v6 + 5) = 0u;
  *(v6 + 12) = 0;
  v11 = v4[13];
  v12 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v12 - 8) + 56))(&v6[v11], 1, 1, v12);
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v13 = &v6[v4[15]];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v14 = &v6[v4[16]];
  sub_10001309C(v35);
  v15 = v35[13];
  *(v14 + 12) = v35[12];
  *(v14 + 13) = v15;
  *(v14 + 14) = v35[14];
  v16 = v35[9];
  *(v14 + 8) = v35[8];
  *(v14 + 9) = v16;
  v17 = v35[11];
  *(v14 + 10) = v35[10];
  *(v14 + 11) = v17;
  v18 = v35[5];
  *(v14 + 4) = v35[4];
  *(v14 + 5) = v18;
  v19 = v35[7];
  *(v14 + 6) = v35[6];
  *(v14 + 7) = v19;
  v20 = v35[1];
  *v14 = v35[0];
  *(v14 + 1) = v20;
  v21 = v35[3];
  *(v14 + 2) = v35[2];
  *(v14 + 3) = v21;
  v6[v4[17]] = 0;
  v6[v4[18]] = 0;
  *&v6[v4[19]] = _swiftEmptyArrayStorage;
  *&v6[v4[20]] = _swiftEmptyArrayStorage;
  v22 = &v6[v4[21]];
  *(v22 + 5) = 0u;
  *(v22 + 6) = 0u;
  *(v22 + 3) = 0u;
  *(v22 + 4) = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  *v22 = 0u;
  v23 = &v6[v4[22]];
  *v23 = 0;
  *(v23 + 1) = 0;
  *&v6[v4[23]] = 0;
  *&v6[v4[24]] = 0;
  v6[v4[25]] = 0;
  v6[v4[26]] = 0;
  switch(a1)
  {
    case 31:
      *v6 = sub_100033A5C(137);
      *(v6 + 1) = v30;
      v29 = sub_100033A5C(138);
      v25 = -116;
      v26 = -117;
      goto LABEL_7;
    case 30:
      *v6 = sub_100033A5C(133);
      *(v6 + 1) = v27;
      v29 = sub_100033A5C(134);
      v25 = -120;
      v26 = -121;
LABEL_7:
      *(v6 + 2) = v29;
      *(v6 + 3) = v28;
      v7 = (v6 + 32);
      v8 = v6 + 40;
      v9 = (v6 + 48);
      v10 = v6 + 56;
      goto LABEL_8;
    case 29:
      *v6 = sub_100033A5C(129);
      *(v6 + 1) = v24;
      v25 = -124;
      v26 = -126;
LABEL_8:
      *v7 = sub_100033A5C(v26);
      *v8 = v31;
      *v9 = sub_100033A5C(v25);
      *v10 = v32;
      break;
  }

  return sub_1000CE240(v6, v34, type metadata accessor for HeadphoneViewModel);
}

uint64_t sub_1000C5130@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HeadphoneViewModel(0);
  v5 = (v4 - 8);
  __chkstk_darwin(v4);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = 0;
  *(v7 + 1) = 0xE000000000000000;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0xE000000000000000;
  *(v7 + 4) = 0;
  *(v7 + 5) = 0xE000000000000000;
  *(v7 + 6) = 0;
  *(v7 + 7) = 0xE000000000000000;
  *(v7 + 4) = 0u;
  *(v7 + 5) = 0u;
  *(v7 + 12) = 0;
  v8 = v5[13];
  v9 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v9 - 8) + 56))(&v7[v8], 1, 1, v9);
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v10 = &v7[v5[15]];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v11 = &v7[v5[16]];
  sub_10001309C(v34);
  v12 = v34[13];
  *(v11 + 12) = v34[12];
  *(v11 + 13) = v12;
  *(v11 + 14) = v34[14];
  v13 = v34[9];
  *(v11 + 8) = v34[8];
  *(v11 + 9) = v13;
  v14 = v34[11];
  *(v11 + 10) = v34[10];
  *(v11 + 11) = v14;
  v15 = v34[5];
  *(v11 + 4) = v34[4];
  *(v11 + 5) = v15;
  v16 = v34[7];
  *(v11 + 6) = v34[6];
  *(v11 + 7) = v16;
  v17 = v34[1];
  *v11 = v34[0];
  *(v11 + 1) = v17;
  v18 = v34[3];
  *(v11 + 2) = v34[2];
  *(v11 + 3) = v18;
  v7[v5[17]] = 0;
  v7[v5[18]] = 0;
  *&v7[v5[19]] = _swiftEmptyArrayStorage;
  *&v7[v5[20]] = _swiftEmptyArrayStorage;
  v19 = &v7[v5[21]];
  *(v19 + 5) = 0u;
  *(v19 + 6) = 0u;
  *(v19 + 3) = 0u;
  *(v19 + 4) = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 2) = 0u;
  *v19 = 0u;
  v20 = &v7[v5[22]];
  *v20 = 0;
  *(v20 + 1) = 0;
  *&v7[v5[23]] = 0;
  *&v7[v5[24]] = 0;
  v7[v5[25]] = 0;
  v7[v5[26]] = 0;
  switch(a1)
  {
    case '#':
      *v7 = sub_100033A5C(166);
      *(v7 + 1) = v26;
      v27 = [objc_opt_self() currentDevice];
      v28 = [v27 userInterfaceIdiom];

      if (v28)
      {
        v29 = -88;
      }

      else
      {
        v29 = -89;
      }

      *(v7 + 2) = sub_100033A5C(v29);
      *(v7 + 3) = v30;
      v22 = -86;
      v23 = -87;
      goto LABEL_10;
    case '""':
      *v7 = sub_100033A5C(155);
      *(v7 + 1) = v24;
      *(v7 + 2) = sub_100033A5C(156);
      *(v7 + 3) = v25;
      v22 = -95;
      v23 = -97;
      goto LABEL_10;
    case '!':
      *v7 = sub_100033A5C(145);
      *(v7 + 1) = v21;
      v22 = -102;
      v23 = -103;
LABEL_10:
      *(v7 + 4) = sub_100033A5C(v23);
      *(v7 + 5) = v31;
      *(v7 + 6) = sub_100033A5C(v22);
      *(v7 + 7) = v32;
      break;
  }

  return sub_1000CE240(v7, a2, type metadata accessor for HeadphoneViewModel);
}

uint64_t sub_1000C53FC@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  LODWORD(v430) = a1;
  v429 = a2;
  v406 = type metadata accessor for HeadphonePairing2.Assets.ViewIdentifier();
  v405 = *(v406 - 8);
  __chkstk_darwin(v406);
  v404 = &v365 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v415 = type metadata accessor for HeadphonePairing2.Assets.AdjustedImageIdentifier();
  v414 = *(v415 - 8);
  v4 = __chkstk_darwin(v415);
  v398 = &v365 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v413 = &v365 - v6;
  v392 = type metadata accessor for HeadphonePairing2.Assets.VideoViewIdentifier();
  v391 = *(v392 - 8);
  v7 = __chkstk_darwin(v392);
  v385 = &v365 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v379 = &v365 - v9;
  v423 = type metadata accessor for HeadphoneAssets(0);
  v422 = *(v423 - 8);
  v10 = __chkstk_darwin(v423);
  v410._reserved = &v365 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v410._clients = &v365 - v13;
  __chkstk_darwin(v12);
  v388 = &v365 - v14;
  v15 = type metadata accessor for HeadphoneModel(0);
  __chkstk_darwin(v15);
  v386 = &v365 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v384 = type metadata accessor for HeadphonePairing2.Assets.FileIdentifier();
  v382 = *(v384 - 8);
  __chkstk_darwin(v384);
  v381 = &v365 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100008438(&unk_100120000, &qword_1000D62D0);
  v19 = __chkstk_darwin(v18 - 8);
  v387 = &v365 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v390 = &v365 - v21;
  v417 = type metadata accessor for GenericAsset();
  v418 = *(v417 - 8);
  v22 = __chkstk_darwin(v417);
  v380 = &v365 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v416 = &v365 - v24;
  v25 = sub_100008438(&qword_10011CF08, &unk_1000D7310);
  v410.super.isa = *(v25 - 8);
  v26 = __chkstk_darwin(v25 - 8);
  v435 = &v365 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v434 = &v365 - v29;
  v30 = __chkstk_darwin(v28);
  v410._urlString = (&v365 - v31);
  v32 = __chkstk_darwin(v30);
  v396 = &v365 - v33;
  v34 = __chkstk_darwin(v32);
  v407 = &v365 - v35;
  v36 = __chkstk_darwin(v34);
  v377 = &v365 - v37;
  v38 = __chkstk_darwin(v36);
  v383 = &v365 - v39;
  v40 = __chkstk_darwin(v38);
  v395 = &v365 - v41;
  v42 = __chkstk_darwin(v40);
  v409 = &v365 - v43;
  v44 = __chkstk_darwin(v42);
  v411 = &v365 - v45;
  __chkstk_darwin(v44);
  v408 = &v365 - v46;
  v421 = type metadata accessor for HeadphonePairing2.Assets.VideoIdentifier();
  v425 = *(v421 - 8);
  __chkstk_darwin(v421);
  v420 = &v365 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v419 = type metadata accessor for AdjustedAsset();
  v428 = *(v419 - 8);
  v48 = __chkstk_darwin(v419);
  v397 = &v365 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v48);
  v402 = &v365 - v51;
  v52 = __chkstk_darwin(v50);
  v393 = &v365 - v53;
  v54 = __chkstk_darwin(v52);
  v399 = &v365 - v55;
  v56 = __chkstk_darwin(v54);
  v58 = &v365 - v57;
  v59 = __chkstk_darwin(v56);
  v389 = &v365 - v60;
  v61 = __chkstk_darwin(v59);
  v401 = &v365 - v62;
  v63 = __chkstk_darwin(v61);
  v65 = &v365 - v64;
  v66 = __chkstk_darwin(v63);
  v400 = &v365 - v67;
  __chkstk_darwin(v66);
  v69 = &v365 - v68;
  v432 = type metadata accessor for URL();
  v431 = *(v432 - 8);
  v70 = __chkstk_darwin(v432);
  v412 = &v365 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __chkstk_darwin(v70);
  v433 = &v365 - v73;
  v74 = __chkstk_darwin(v72);
  v403 = &v365 - v75;
  v76 = __chkstk_darwin(v74);
  v410._baseURL = (&v365 - v77);
  v78 = __chkstk_darwin(v76);
  v376 = &v365 - v79;
  v80 = __chkstk_darwin(v78);
  v378 = &v365 - v81;
  v82 = __chkstk_darwin(v80);
  v394 = &v365 - v83;
  v84 = __chkstk_darwin(v82);
  v86 = &v365 - v85;
  v87 = __chkstk_darwin(v84);
  v89 = &v365 - v88;
  v90 = __chkstk_darwin(v87);
  v92 = &v365 - v91;
  v93 = __chkstk_darwin(v90);
  v95 = &v365 - v94;
  __chkstk_darwin(v93);
  v424 = &v365 - v96;
  v97 = &v2[OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model];
  swift_beginAccess();
  if (*(v97 + *(v15 + 84)) != 1)
  {
    return sub_1000CB8E0(v430, v429);
  }

  v371 = v58;
  v98 = v430;
  v372 = v2;
  if (!*(v97 + *(v15 + 148)))
  {
    return (*(v422 + 56))(v429, 1, 1, v423);
  }

  v366 = v86;
  v375 = v97;
  v374 = v15;
  v99 = v425;
  v100 = *(v425 + 13);
  v101 = v420;
  v367 = enum case for HeadphonePairing2.Assets.VideoIdentifier.connectLoop(_:);
  v102 = v421;
  v369 = v425 + 104;
  v368 = v100;
  v100(v420);

  dispatch thunk of HeadphonePairing2.Assets.video(_:)();

  v103 = *(v99 + 1);
  v425 = (v99 + 8);
  v370 = v103;
  v103(v101, v102);
  AdjustedAsset.adjustmentURL.getter();
  v104 = *(v428 + 8);
  v105 = v419;
  v428 += 8;
  v373 = v104;
  v104(v69, v419);
  v106 = *(v431 + 32);
  v107 = v424;
  v427 = v431 + 32;
  v426 = v106;
  v106(v424, v95, v432);
  if (v98 > 0x13u)
  {
    if (v98 == 20 || v98 == 22)
    {
      v137 = v375;
      swift_beginAccess();
      v138 = *(v137 + *(v374 + 148));
      v139 = v423;
      v140 = v431;
      if (v138)
      {
        swift_endAccess();
        v141 = v420;
        v142 = v421;
        v368(v420, v367, v421);

        dispatch thunk of HeadphonePairing2.Assets.video(_:)();

        v370(v141, v142);
        v143 = v416;
        AdjustedAsset.asset.getter();
        v373(v65, v105);
        v144 = v411;
        GenericAsset.fileURL.getter();
        (*(v418 + 8))(v143, v417);
        v145 = v432;
        if ((*(v140 + 48))(v144, 1, v432) != 1)
        {
          v166 = v426;
          v426(v89, v144, v145);
          v167 = v429;
          v166(v429, v424, v145);
          v166(v167 + v139[5], v89, v145);
          (*(v140 + 56))(v167 + v139[6], 1, 1, v145);
          v168 = v139[7];
          v169 = type metadata accessor for HeadphoneAssets.Feature(0);
          (*(*(v169 - 8) + 56))(v167 + v168, 1, 1, v169);
          *(v167 + v139[8]) = _swiftEmptyArrayStorage;
          *(v167 + v139[9]) = 0;
          v170 = (v167 + v139[10]);
          *v170 = 0;
          v170[1] = 0;
          return (*(v422 + 56))(v167, 0, 1, v139);
        }

        (*(v140 + 8))(v424, v145);
      }

      else
      {
        v164 = v432;
        (*(v431 + 8))(v424, v432);
        swift_endAccess();
        v144 = v411;
        (*(v140 + 56))(v411, 1, 1, v164);
      }

      v165 = v429;
      sub_10000E950(v144, &qword_10011CF08, &unk_1000D7310);
      return (*(v422 + 56))(v165, 1, 1, v139);
    }

    v110 = v423;
    v108 = v431;
    v109 = v432;
    if (v98 == 21)
    {
      v131 = v375;
      swift_beginAccess();
      if (*(v131 + *(v374 + 148)))
      {
        swift_endAccess();
        v132 = v420;
        v133 = v421;
        v368(v420, enum case for HeadphonePairing2.Assets.VideoIdentifier.repairLoop(_:), v421);

        v134 = v400;
        dispatch thunk of HeadphonePairing2.Assets.video(_:)();

        v370(v132, v133);
        v135 = v416;
        AdjustedAsset.asset.getter();
        v373(v134, v419);
        v136 = v408;
        GenericAsset.fileURL.getter();
        (*(v418 + 8))(v135, v417);
        if ((v108[6])(v136, 1, v109) != 1)
        {
          v179 = v136;
          v180 = v426;
          v426(v92, v179, v109);
          v181 = v429;
          v180(v429, v107, v109);
          v180(v181 + v110[5], v92, v109);
          v108[7](v181 + v110[6], 1, 1, v109);
          v182 = v110[7];
          v183 = type metadata accessor for HeadphoneAssets.Feature(0);
          (*(*(v183 - 8) + 56))(v181 + v182, 1, 1, v183);
          *(v181 + v110[8]) = _swiftEmptyArrayStorage;
          *(v181 + v110[9]) = 0;
          v184 = (v181 + v110[10]);
          *v184 = 0;
          v184[1] = 0;
          return (*(v422 + 56))(v181, 0, 1, v110);
        }

        (v108[1])(v107, v109);
      }

      else
      {
        (v108[1])(v107, v109);
        swift_endAccess();
        v136 = v408;
        v108[7](v408, 1, 1, v109);
      }

      v171 = v429;
      sub_10000E950(v136, &qword_10011CF08, &unk_1000D7310);
      v154 = *(v422 + 56);
      v155 = v171;
      return v154(v155, 1, 1, v110);
    }

LABEL_24:
    (v108[1])(v107, v109);
    v154 = *(v422 + 56);
    v155 = v429;
    return v154(v155, 1, 1, v110);
  }

  if (v98 == 2)
  {
    v146 = *(v375 + 161);
    v147 = v431;
    v109 = v432;
    if (v146 == 4 || v146 == 2)
    {
      v148 = v414;
      if (*(v375 + *(v374 + 148)))
      {
        v149 = v420;
        v150 = v421;
        v368(v420, enum case for HeadphonePairing2.Assets.VideoIdentifier.loopCharging(_:), v421);

        v151 = v399;
        dispatch thunk of HeadphonePairing2.Assets.video(_:)();

        v370(v149, v150);
        v152 = v416;
        AdjustedAsset.asset.getter();
        v373(v151, v105);
        v153 = v407;
        GenericAsset.fileURL.getter();
        (*(v418 + 8))(v152, v417);
      }

      else
      {
        v153 = v407;
        (*(v431 + 56))(v407, 1, 1, v432);
      }

      v193 = sub_1000CC7D4(0, 1, 1, _swiftEmptyArrayStorage, &qword_100120048, &unk_1000DA510, &qword_10011CF08, &unk_1000D7310);
      v195 = v193[2];
      v194 = v193[3];
      if (v195 >= v194 >> 1)
      {
        v193 = sub_1000CC7D4((v194 > 1), v195 + 1, 1, v193, &qword_100120048, &unk_1000DA510, &qword_10011CF08, &unk_1000D7310);
      }

      isa = v410.super.isa;
      v193[2] = v195 + 1;
      v197 = *(isa + 80);
      v198 = *(isa + 9);
      sub_10000A450(v153, v193 + ((v197 + 32) & ~v197) + v198 * v195, &qword_10011CF08, &unk_1000D7310);
      v411 = *(v148 + 104);
      (v411)(v413, enum case for HeadphonePairing2.Assets.AdjustedImageIdentifier.caseClosedCharging(_:), v415);
      v199 = v374;
      v200 = v375;
      v201 = *(v375 + *(v374 + 148));
      v410._reserved = &enum case for HeadphonePairing2.Assets.VideoViewIdentifier.loopCharging(_:);
      if (v201)
      {
        v202 = &enum case for HeadphonePairing2.Assets.ViewIdentifier.caseClosedCharging(_:);
LABEL_58:
        v213 = v405;
        v214 = v404;
        v215 = v406;
        (*(v405 + 104))(v404, *v202, v406);

        v412 = dispatch thunk of HeadphonePairing2.Assets.view(_:)();

        (*(v213 + 8))(v214, v215);
        v199 = v374;
        v200 = v375;
LABEL_60:
        urlString = v410._urlString;
        if (*(v200 + *(v199 + 148)))
        {
          v217 = v420;
          v218 = v421;
          v368(v420, v367, v421);

          v430 = v197;
          v197 = urlString;
          v219 = v105;
          v220 = v402;
          dispatch thunk of HeadphonePairing2.Assets.video(_:)();

          v370(v217, v218);
          v221 = v416;
          AdjustedAsset.asset.getter();
          v222 = v219;
          urlString = v197;
          LODWORD(v197) = v430;
          v373(v220, v222);
          GenericAsset.fileURL.getter();
          (*(v418 + 8))(v221, v417);
        }

        else
        {
          (*(v147 + 56))(v410._urlString, 1, 1, v109);
        }

        v224 = v193[2];
        v223 = v193[3];
        v225 = v224 + 1;
        if (v224 >= v223 >> 1)
        {
          v193 = sub_1000CC7D4((v223 > 1), v224 + 1, 1, v193, &qword_100120048, &unk_1000DA510, &qword_10011CF08, &unk_1000D7310);
        }

        v193[2] = v225;
        v430 = v193;
        v226 = v193 + ((v197 + 32) & ~v197);
        sub_10000A450(urlString, v226 + v198 * v224, &qword_10011CF08, &unk_1000D7310);
        v227 = (v147 + 48);
        v228 = _swiftEmptyArrayStorage;
        do
        {
          v229 = v434;
          sub_10000E88C(v226, v434, &qword_10011CF08, &unk_1000D7310);
          v230 = v229;
          v231 = v435;
          sub_10000A450(v230, v435, &qword_10011CF08, &unk_1000D7310);
          if ((*v227)(v231, 1, v109) == 1)
          {
            sub_10000E950(v231, &qword_10011CF08, &unk_1000D7310);
          }

          else
          {
            v426(v433, v231, v109);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v228 = sub_1000CCD74(0, *(v228 + 2) + 1, 1, v228, &qword_100120040, &qword_1000DA508, &type metadata accessor for URL);
            }

            v233 = *(v228 + 2);
            v232 = *(v228 + 3);
            if (v233 >= v232 >> 1)
            {
              v228 = sub_1000CCD74((v232 > 1), v233 + 1, 1, v228, &qword_100120040, &qword_1000DA508, &type metadata accessor for URL);
            }

            *(v228 + 2) = v233 + 1;
            v147 = v431;
            v234 = &v228[((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v233];
            v109 = v432;
            v426(v234, v433, v432);
          }

          v226 += v198;
          --v225;
        }

        while (v225);
        if (!*(v228 + 2))
        {

          (*(v414 + 8))(v413, v415);
          (*(v147 + 8))(v424, v109);

          return (*(v422 + 56))(v429, 1, 1, v423);
        }

        v235 = *(v147 + 16);
        v236 = v403;
        v235(v403, &v228[(*(v147 + 80) + 32) & ~*(v147 + 80)], v109);

        baseURL = v410._baseURL;
        v426(v410._baseURL, v236, v109);
        clients = v410._clients;
        v239 = v424;
        v235(v410._clients, v424, v109);
        v240 = v423;
        v235(&clients[*(v423 + 20)], baseURL, v109);
        (*(v147 + 56))(&clients[v240[6]], 1, 1, v109);
        v241 = v240[7];
        v242 = type metadata accessor for HeadphoneAssets.Feature(0);
        (*(*(v242 - 8) + 56))(&clients[v241], 1, 1, v242);
        v243 = &clients[v240[10]];
        *v243 = 0;
        *(v243 + 1) = 0;
        v244 = *(v375 + *(v374 + 148));
        v245 = _swiftEmptyArrayStorage;
        if (!v244)
        {
          v271 = v372;
LABEL_90:

          v275 = &v271[OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_batteryVideoView];
          v276 = *&v271[OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_batteryVideoView];
          if (v276)
          {
            v277 = *(v275 + 1);
            v278 = *(v147 + 8);
            v279 = v276;
            v278(v410._baseURL, v109);
            (*(v414 + 8))(v413, v415);
            v278(v239, v109);
            *v243 = v276;
            *(v243 + 1) = v277;
          }

          else if (*(v375 + *(v374 + 148)))
          {
            v435 = v245;
            v280 = v391;
            v281 = *(v391 + 104);
            v282 = *v410._reserved;
            v434 = v243;
            v283 = v385;
            v284 = v392;
            v281(v385, v282, v392);

            v285 = dispatch thunk of HeadphonePairing2.Assets.videoView(_:)();
            v287 = v286;

            (*(v280 + 8))(v283, v284);
            v245 = v435;
            v288 = *(v147 + 8);
            v288(v410._baseURL, v109);
            (*(v414 + 8))(v413, v415);
            v288(v424, v109);
            v289 = v434;
            *v434 = v285;
            *(v289 + 1) = v287;
            v290 = *v275;
            *v275 = v285;
            *(v275 + 1) = v287;
            v291 = v285;
          }

          else
          {
            v307 = *(v147 + 8);
            v307(v410._baseURL, v109);
            (*(v414 + 8))(v413, v415);
            v307(v239, v109);
          }

          v308 = v240[9];
          v207 = v410._clients;
          *(v410._clients + v240[8]) = v245;
          *&v207[v308] = v412;
          v309 = v429;
          sub_1000CE178(v207, v429, type metadata accessor for HeadphoneAssets);
          (*(v422 + 56))(v309, 0, 1, v240);
          return sub_1000CE1E0(v207, type metadata accessor for HeadphoneAssets);
        }

        v434 = v243;
        v246 = v414;
        v433 = (v414 + 104);
        v247 = v398;
        v248 = v415;
        (v411)(v398, enum case for HeadphonePairing2.Assets.AdjustedImageIdentifier.leftBud(_:), v415);

        v249 = v397;
        dispatch thunk of HeadphonePairing2.Assets.adjustedImage(_:)();
        v250 = *(v246 + 8);
        v426 = (v246 + 8);
        v427 = v250;
        v250(v247, v248);
        v251 = objc_opt_self();
        v252 = v416;
        AdjustedAsset.asset.getter();
        GenericAsset.fileName.getter();
        v253 = *(v418 + 8);
        v254 = v417;
        v253(v252, v417);
        v425 = v253;
        v255 = String._bridgeToObjectiveC()();
        v435 = v244;
        v256 = v255;

        AdjustedAsset.asset.getter();
        v257 = GenericAsset.bundle.getter();
        v253(v252, v254);
        v258 = v251;
        v259 = [v251 imageNamed:v256 inBundle:v257];

        v373(v249, v419);
        v440[0] = v259;
        v260 = v415;
        (v411)(v247, enum case for HeadphonePairing2.Assets.AdjustedImageIdentifier.rightBud(_:), v415);
        v109 = v432;
        dispatch thunk of HeadphonePairing2.Assets.adjustedImage(_:)();
        (v427)(v247, v260);
        AdjustedAsset.asset.getter();
        GenericAsset.fileName.getter();
        v261 = v417;
        v262 = v425;
        v425(v252, v417);
        v263 = String._bridgeToObjectiveC()();

        AdjustedAsset.asset.getter();
        v264 = GenericAsset.bundle.getter();
        v262(v252, v261);
        v265 = [v258 imageNamed:v263 inBundle:v264];

        v373(v249, v419);
        v440[1] = v265;
        dispatch thunk of HeadphonePairing2.Assets.adjustedImage(_:)();
        AdjustedAsset.asset.getter();
        GenericAsset.fileName.getter();
        v262(v252, v261);
        v266 = String._bridgeToObjectiveC()();

        AdjustedAsset.asset.getter();
        v267 = GenericAsset.bundle.getter();
        v262(v252, v261);
        v108 = &v439;
        v240 = v423;
        v268 = [v258 imageNamed:v266 inBundle:v267];

        v269 = v249;
        v245 = _swiftEmptyArrayStorage;
        v373(v269, v419);
        v270 = 0;
        v440[2] = v268;
        v437 = _swiftEmptyArrayStorage;
        v271 = v372;
LABEL_77:
        if (v270 <= 3)
        {
          v272 = 3;
        }

        else
        {
          v272 = v270;
        }

        v239 = v424;
        while (1)
        {
          if (v270 == 3)
          {

            sub_100008438(&unk_100120010, &unk_1000DA4E0);
            swift_arrayDestroy();
            v147 = v431;
            v243 = v434;
            goto LABEL_90;
          }

          if (v272 == v270)
          {
            break;
          }

          v273 = v440[v270++];
          if (v273)
          {
            v274 = v273;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v437 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v437 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v245 = v437;
            goto LABEL_77;
          }
        }

        __break(1u);
LABEL_133:
        v337 = _swiftEmptyArrayStorage;
LABEL_134:
        v359 = v376;
        (v108[2])(v271, v376, v109);
        v360 = v271;
        v361 = sub_1000B46B4(v337);

        v362 = v108[1];
        (v362)(v359, v109);
        (v362)(v378, v109);
        v363 = v390;
        sub_10000E950(v390, &unk_100120000, &qword_1000D62D0);
        v364 = v433;
        *(v360 + *(v433 + 5)) = v426;
        *(v360 + *(v364 + 6)) = v361;
        v430(v360, 0, 1);
        sub_10000A450(v360, v363, &unk_100120000, &qword_1000D62D0);
        goto LABEL_108;
      }
    }

    else
    {
      v173 = v414;
      if (*(v375 + *(v374 + 148)))
      {
        v174 = v420;
        v175 = v421;
        v368(v420, enum case for HeadphonePairing2.Assets.VideoIdentifier.loopCharged(_:), v421);

        v176 = v393;
        dispatch thunk of HeadphonePairing2.Assets.video(_:)();

        v370(v174, v175);
        v177 = v416;
        AdjustedAsset.asset.getter();
        v373(v176, v105);
        v178 = v396;
        GenericAsset.fileURL.getter();
        (*(v418 + 8))(v177, v417);
      }

      else
      {
        v178 = v396;
        (*(v431 + 56))(v396, 1, 1, v432);
      }

      v193 = sub_1000CC7D4(0, 1, 1, _swiftEmptyArrayStorage, &qword_100120048, &unk_1000DA510, &qword_10011CF08, &unk_1000D7310);
      v210 = v193[2];
      v209 = v193[3];
      if (v210 >= v209 >> 1)
      {
        v193 = sub_1000CC7D4((v209 > 1), v210 + 1, 1, v193, &qword_100120048, &unk_1000DA510, &qword_10011CF08, &unk_1000D7310);
      }

      v211 = v410.super.isa;
      v193[2] = v210 + 1;
      v197 = *(v211 + 80);
      v198 = *(v211 + 9);
      sub_10000A450(v178, v193 + ((v197 + 32) & ~v197) + v198 * v210, &qword_10011CF08, &unk_1000D7310);
      v411 = *(v173 + 104);
      (v411)(v413, enum case for HeadphonePairing2.Assets.AdjustedImageIdentifier.caseClosedCharged(_:), v415);
      v199 = v374;
      v200 = v375;
      v212 = *(v375 + *(v374 + 148));
      v410._reserved = &enum case for HeadphonePairing2.Assets.VideoViewIdentifier.loopCharged(_:);
      if (v212)
      {
        v202 = &enum case for HeadphonePairing2.Assets.ViewIdentifier.caseClosedCharged(_:);
        goto LABEL_58;
      }
    }

    v412 = 0;
    goto LABEL_60;
  }

  v108 = v431;
  v109 = v432;
  if (v98 != 3)
  {
    v110 = v423;
    if (v98 == 18)
    {
      v111 = v412;
      URL.init(fileURLWithPath:)();
      v112 = v108[2];
      reserved = v410._reserved;
      (v112)(v410._reserved, v107, v109);
      (v112)(&reserved[v110[5]], v111, v109);
      v108[7](&reserved[v110[6]], 1, 1, v109);
      v114 = v110[7];
      v115 = type metadata accessor for HeadphoneAssets.Feature(0);
      (*(*(v115 - 8) + 56))(&reserved[v114], 1, 1, v115);
      v116 = v110[9];
      v435 = v110[8];
      *&reserved[v116] = 0;
      v117 = &reserved[v110[10]];
      *v117 = 0;
      *(v117 + 1) = 0;
      v118 = v374;
      v119 = v375;
      v120 = *(v375 + *(v374 + 136));
      v121 = objc_opt_self();
      v122 = [v121 airPods];
      v123 = [v122 productID];

      if (v120 == v123 || (v124 = *(v119 + *(v118 + 136)), v125 = [v121 airPodsSecondGeneration], v126 = objc_msgSend(v125, "productID"), v125, v124 == v126))
      {
        v127 = &v441;
        v128 = String._bridgeToObjectiveC()();
        v129 = [objc_opt_self() imageNamed:v128];

        v442 = v129;
      }

      else
      {
        v127 = &v443;
        v203 = String._bridgeToObjectiveC()();
        v129 = [objc_opt_self() imageNamed:v203];

        v444 = v129;
      }

      v204 = _swiftEmptyArrayStorage;
      v437 = _swiftEmptyArrayStorage;
      if (v129)
      {
        v205 = v129;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v437 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v437 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v204 = v437;
      }

      sub_10000E950((v127 + 32), &unk_100120010, &unk_1000DA4E0);
      v206 = v108[1];
      (v206)(v412, v109);
      (v206)(v424, v109);
      v207 = v410._reserved;
      *(v410._reserved + v435) = v204;
      v208 = v429;
      sub_1000CE178(v207, v429, type metadata accessor for HeadphoneAssets);
      (*(v422 + 56))(v208, 0, 1, v110);
      return sub_1000CE1E0(v207, type metadata accessor for HeadphoneAssets);
    }

    goto LABEL_24;
  }

  v156 = v375;
  swift_beginAccess();
  if (!*(v156 + *(v374 + 148)))
  {
    (v108[1])(v107, v109);
    swift_endAccess();
    v161 = v409;
    v108[7](v409, 1, 1, v109);
    goto LABEL_35;
  }

  swift_endAccess();
  v157 = v420;
  v158 = v421;
  v368(v420, enum case for HeadphonePairing2.Assets.VideoIdentifier.connectEngage(_:), v421);

  v159 = v401;
  dispatch thunk of HeadphonePairing2.Assets.video(_:)();

  v370(v157, v158);
  v160 = v416;
  AdjustedAsset.asset.getter();
  v373(v159, v105);
  v161 = v409;
  GenericAsset.fileURL.getter();
  v162 = *(v418 + 8);
  v418 += 8;
  v162(v160, v417);
  v163 = v108[6];
  if ((v163)(v161, 1, v109) == 1)
  {
    (v108[1])(v424, v109);
LABEL_35:
    v172 = v161;
LABEL_96:
    sub_10000E950(v172, &qword_10011CF08, &unk_1000D7310);
    return (*(v422 + 56))(v429, 1, 1, v423);
  }

  v185 = v366;
  v426(v366, v161, v109);
  v186 = v375;
  swift_beginAccess();
  if (!*(v186 + *(v374 + 148)))
  {
    v292 = v108[1];
    (v292)(v185, v109);
    (v292)(v424, v109);
    swift_endAccess();
    v191 = v395;
    v108[7](v395, 1, 1, v109);
    goto LABEL_95;
  }

  swift_endAccess();
  v187 = v420;
  v188 = v421;
  v368(v420, v367, v421);

  v189 = v389;
  dispatch thunk of HeadphonePairing2.Assets.video(_:)();

  v370(v187, v188);
  v190 = v416;
  AdjustedAsset.asset.getter();
  v373(v189, v105);
  v191 = v395;
  GenericAsset.fileURL.getter();
  v162(v190, v417);
  if ((v163)(v191, 1, v109) == 1)
  {
    v192 = v108[1];
    (v192)(v366, v109);
    (v192)(v424, v109);
LABEL_95:
    v172 = v191;
    goto LABEL_96;
  }

  v426(v394, v191, v109);
  v293 = type metadata accessor for HeadphoneAssets.Feature(0);
  v294 = *(v293 - 8);
  v295 = *(v294 + 56);
  v433 = v293;
  v430 = v295;
  v415 = v294 + 56;
  v295(v390, 1, 1);
  if (*(v375 + *(v374 + 148)))
  {
    v296 = v382;
    v297 = v381;
    (*(v382 + 104))(v381, enum case for HeadphonePairing2.Assets.FileIdentifier.featureTimings(_:), v384);

    v298 = v380;
    dispatch thunk of HeadphonePairing2.Assets.file(_:)();

    (*(v296 + 8))(v297, v384);
    v299 = v383;
    GenericAsset.fileURL.getter();
    v162(v298, v417);
    if ((v163)(v299, 1, v109) != 1)
    {
      v300 = v378;
      v426(v378, v299, v109);
      v301 = v375;
      swift_beginAccess();
      if (!*(v301 + *(v374 + 148)))
      {
        (v108[1])(v300, v109);
        swift_endAccess();
        v306 = v377;
        v108[7](v377, 1, 1, v109);
        goto LABEL_110;
      }

      swift_endAccess();
      v302 = v420;
      v303 = v421;
      v368(v420, enum case for HeadphonePairing2.Assets.VideoIdentifier.features(_:), v421);

      v304 = v371;
      dispatch thunk of HeadphonePairing2.Assets.video(_:)();

      v370(v302, v303);
      v305 = v416;
      AdjustedAsset.asset.getter();
      v373(v304, v105);
      v306 = v377;
      GenericAsset.fileURL.getter();
      v162(v305, v417);
      if ((v163)(v306, 1, v109) == 1)
      {
        (v108[1])(v378, v109);
LABEL_110:
        v310 = v424;
        sub_10000E950(v306, &qword_10011CF08, &unk_1000D7310);
        goto LABEL_111;
      }

      v426(v376, v306, v109);
      URL._bridgeToObjectiveC()(&v410);
      v332 = v331;
      v333 = SFPlaybackTimeRangesFromFeaturesTimeURL();

      sub_1000084D4(0, &qword_10011D068, NSValue_ptr);
      v334 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v334 >> 62)
      {
        goto LABEL_137;
      }

      v335 = *((v334 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_117:
      v271 = v387;
      v426 = v334;
      if (v335)
      {
        v336 = 0;
        v428 = v334 & 0xC000000000000001;
        v427 = v334 & 0xFFFFFFFFFFFFFF8;
        v337 = _swiftEmptyArrayStorage;
        v338 = v375;
        while (1)
        {
          if (v428)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            swift_unknownObjectRelease();
            v339 = v336 + 1;
            if (__OFADD__(v336, 1))
            {
              goto LABEL_135;
            }
          }

          else
          {
            if (v336 >= *(v427 + 16))
            {
              goto LABEL_136;
            }

            v339 = v336 + 1;
            if (__OFADD__(v336, 1))
            {
LABEL_135:
              __break(1u);
LABEL_136:
              __break(1u);
LABEL_137:
              v335 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_117;
            }
          }

          v340 = v335;
          v437 = 0;
          v438 = 0xE000000000000000;
          _StringGuts.grow(_:)(16);

          v437 = 0x5F45525554414546;
          v438 = 0xE800000000000000;
          v436 = v336;
          v341._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v341);

          v342._countAndFlagsBits = 0x454C5449545FLL;
          v342._object = 0xE600000000000000;
          String.append(_:)(v342);
          v343 = v437;
          v344 = v438;
          v345 = v386;
          sub_1000CE178(v338, v386, type metadata accessor for HeadphoneModel);
          v435 = sub_100050E28(v343, v344, v345);
          v434 = v346;

          sub_1000CE1E0(v345, type metadata accessor for HeadphoneModel);
          v437 = 0;
          v438 = 0xE000000000000000;
          _StringGuts.grow(_:)(22);

          v437 = 0x5F45525554414546;
          v438 = 0xE800000000000000;
          v436 = v336;
          v347._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v347);

          v348._countAndFlagsBits = 0x504952435345445FLL;
          v348._object = 0xEC0000004E4F4954;
          String.append(_:)(v348);
          v349 = v437;
          v350 = v438;
          sub_1000CE178(v338, v345, type metadata accessor for HeadphoneModel);
          v351 = sub_100050E28(v349, v350, v345);
          v353 = v352;

          sub_1000CE1E0(v345, type metadata accessor for HeadphoneModel);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v337 = sub_1000CC31C(0, v337[2] + 1, 1, v337);
          }

          v355 = v337[2];
          v354 = v337[3];
          v334 = v355 + 1;
          if (v355 >= v354 >> 1)
          {
            v337 = sub_1000CC31C((v354 > 1), v355 + 1, 1, v337);
          }

          v337[2] = v334;
          v356 = &v337[4 * v355];
          v357 = v434;
          v356[4] = v435;
          v356[5] = v357;
          v356[6] = v351;
          v356[7] = v353;
          ++v336;
          v335 = v340;
          v358 = v339 == v340;
          v108 = v431;
          v109 = v432;
          v271 = v387;
          if (v358)
          {
            goto LABEL_134;
          }
        }
      }

      goto LABEL_133;
    }
  }

  else
  {
    v299 = v383;
    v108[7](v383, 1, 1, v109);
  }

  sub_10000E950(v299, &qword_10011CF08, &unk_1000D7310);
LABEL_108:
  v310 = v424;
LABEL_111:
  v311 = v108[2];
  v312 = v388;
  (v311)(v388, v310, v109);
  v313 = v423;
  v314 = v366;
  (v311)(v312 + *(v423 + 20), v366, v109);
  v315 = v313[6];
  v316 = v394;
  (v311)(v312 + v315, v394, v109);
  v108[7](v312 + v315, 0, 1, v109);
  v317 = v313[7];
  (v430)(v312 + v317, 1, 1, v433);
  *(v312 + v313[8]) = _swiftEmptyArrayStorage;
  *(v312 + v313[9]) = 0;
  v318 = (v312 + v313[10]);
  *v318 = 0;
  v318[1] = 0;
  v319 = v390;
  sub_1000CE2A8(v390, v312 + v317);
  v320 = v375;
  swift_beginAccess();
  if (*(v320 + *(v374 + 148)))
  {
    swift_endAccess();
    v321 = v314;
    v322 = v391;
    v323 = v379;
    v324 = v392;
    (*(v391 + 104))(v379, enum case for HeadphonePairing2.Assets.VideoViewIdentifier.intro(_:), v392);

    v325 = dispatch thunk of HeadphonePairing2.Assets.videoView(_:)();
    v435 = v326;

    (*(v322 + 8))(v323, v324);
    sub_10000E950(v319, &unk_100120000, &qword_1000D62D0);
    v327 = v108[1];
    (v327)(v394, v109);
    (v327)(v321, v109);
    (v327)(v424, v109);
    v328 = v435;
    *v318 = v325;
    v318[1] = v328;
  }

  else
  {
    sub_10000E950(v319, &unk_100120000, &qword_1000D62D0);
    v329 = v108[1];
    (v329)(v316, v109);
    (v329)(v314, v109);
    (v329)(v310, v109);
    swift_endAccess();
  }

  v207 = v388;
  v330 = v429;
  sub_1000CE178(v388, v429, type metadata accessor for HeadphoneAssets);
  (*(v422 + 56))(v330, 0, 1, v423);
  return sub_1000CE1E0(v207, type metadata accessor for HeadphoneAssets);
}