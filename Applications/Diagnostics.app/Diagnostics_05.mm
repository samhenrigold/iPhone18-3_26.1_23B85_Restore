uint64_t sub_1000A3264(void *a1, uint64_t a2)
{
  (*((swift_isaMask & *a1) + 0x170))(a2);
  v4 = *(a2 + 40);
  v5 = [v4 suiteName];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  (*((swift_isaMask & *a1) + 0x198))(v7, v9);
  v9, v10, v11, v12, v13, v14, v15, v16;
  (*((swift_isaMask & *a1) + 0x178))(a2);
  (*((swift_isaMask & *a1) + 0x180))(*(a2 + 24));
  v17 = [v4 progress];
  (*((swift_isaMask & *a1) + 0x188))();

  v18 = [v4 durationRemaining];
  (*((swift_isaMask & *a1) + 0x190))(v18);
  v19 = [v4 sessionSettings];
  (*((swift_isaMask & *a1) + 0x1A0))();

  sub_1000A4104(*(a2 + 32));
  result = (*((swift_isaMask & *a1) + 0x1A8))(v4);
  *(a1 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_pauseStateAnimation) = 0;
  return result;
}

id sub_1000A3554()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackViewContainer);
  v2 = [objc_opt_self() secondarySystemBackgroundColor];
  [v1 setBackgroundColor:v2];

  v3 = [v1 layer];
  if (qword_1001FC750 != -1)
  {
    swift_once();
  }

  [v3 setCornerRadius:*&qword_10020A3D8];

  [v1 setClipsToBounds:0];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = *(v0 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackView);
  [v4 setAxis:1];
  [v4 setDistribution:0];
  [v4 setAlignment:0];

  return [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
}

void sub_1000A36B4()
{
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackViewContainer];
  [v1 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackView]];
  v2 = [v0 contentView];
  [v2 addSubview:v1];
}

void sub_1000A3744()
{
  v1 = v0;
  v40 = *&v0[OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackView];
  v2 = [v40 bottomAnchor];
  v3 = *&v1[OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackViewContainer];
  v4 = [v3 bottomAnchor];
  v5 = [v2 constraintEqualToAnchor:v4];

  LODWORD(v6) = 1148829696;
  [v5 setPriority:v6];
  v39 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100180E60;
  v8 = [v3 centerXAnchor];
  v9 = [v1 contentView];
  v10 = [v9 centerXAnchor];

  v11 = [v8 constraintEqualToAnchor:v10];
  *(v7 + 32) = v11;
  v12 = [v3 topAnchor];
  v13 = [v1 contentView];
  v14 = [v13 topAnchor];

  v15 = [v12 constraintEqualToAnchor:v14];
  *(v7 + 40) = v15;
  v16 = [v3 bottomAnchor];
  v17 = [v1 contentView];
  v18 = [v17 bottomAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 constant:-12.0];
  *(v7 + 48) = v19;
  v20 = [v3 widthAnchor];
  sub_1000A4918();
  v21 = [v20 constraintEqualToConstant:?];

  *(v7 + 56) = v21;
  v22 = [v40 topAnchor];
  v23 = [v3 topAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v7 + 64) = v24;
  *(v7 + 72) = v5;
  v25 = v5;
  v26 = [v40 leadingAnchor];
  v27 = [v3 leadingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v7 + 80) = v28;
  v29 = [v40 trailingAnchor];
  v30 = [v3 trailingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v7 + 88) = v31;
  sub_10003E110(0, &qword_1001FD550, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v7, v32, v33, v34, v35, v36, v37, v38;
  [v39 activateConstraints:isa];
}

void sub_1000A3B88()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardStateNotificationToken);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver:v1];
    swift_unknownObjectRelease();
  }

  v4 = *(v0 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_deviceStateNotificationToken);
  if (v4)
  {
    v5 = objc_opt_self();
    swift_unknownObjectRetain();
    v6 = [v5 defaultCenter];
    [v6 removeObserver:v4];
    swift_unknownObjectRelease();
  }
}

double sub_1000A3C98()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1000A4AFC(v0 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_controller);
  sub_10003C52C(*(v0 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_layoutUpdateHandler), *(v0 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_layoutUpdateHandler + 8));

  return result;
}

id sub_1000A3D2C()
{
  sub_1000A3B88();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000A3E4C(void *a1)
{
  v3 = [a1 changedProperties];
  v20 = [a1 snapshot];
  if ([v20 phase] && objc_msgSend(v20, "phase") != 1)
  {
    v4 = [v20 progress];
    (*((swift_isaMask & *v1) + 0x188))();
  }

  if ((v3 & 0x100) != 0)
  {
    v6 = [v20 durationRemaining];
    (*((swift_isaMask & *v1) + 0x190))(v6);
    v5 = v20;
    if ((v3 & 2) == 0)
    {
LABEL_6:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v5 = v20;
    if ((v3 & 2) == 0)
    {
      goto LABEL_6;
    }
  }

  v7 = [v5 suiteName];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  (*((swift_isaMask & *v1) + 0x198))(v9, v11);
  v11, v12, v13, v14, v15, v16, v17, v18;
  v5 = v20;
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v19 = [v20 sessionSettings];
  (*((swift_isaMask & *v1) + 0x1A0))();

  v5 = v20;
  if ((v3 & 0x40) != 0)
  {
LABEL_8:
    (*((swift_isaMask & *v1) + 0x1A8))(v20);
    v5 = v20;
  }

LABEL_9:
}

uint64_t sub_1000A4104(char a1)
{
  switch(a1)
  {
    case 1:
      result = (*((swift_isaMask & *v1) + 0x1B8))();
      break;
    case 2:
      result = (*((swift_isaMask & *v1) + 0x1C0))();
      break;
    case 3:
      result = (*((swift_isaMask & *v1) + 0x1C8))();
      break;
    case 4:
      result = (*((swift_isaMask & *v1) + 0x1D0))();
      break;
    case 5:
      result = (*((swift_isaMask & *v1) + 0x1D8))();
      break;
    case 6:
      result = (*((swift_isaMask & *v1) + 0x1E0))();
      break;
    case 7:
      result = (*((swift_isaMask & *v1) + 0x1E8))();
      break;
    case 8:
      result = (*((swift_isaMask & *v1) + 0x1F0))();
      break;
    case 9:
      result = (*((swift_isaMask & *v1) + 0x1F8))();
      break;
    case 10:
      result = (*((swift_isaMask & *v1) + 0x200))();
      break;
    case 11:
      result = (*((swift_isaMask & *v1) + 0x208))();
      break;
    case 12:
      result = (*((swift_isaMask & *v1) + 0x210))();
      break;
    default:
      result = (*((swift_isaMask & *v1) + 0x1B0))();
      break;
  }

  return result;
}

id sub_1000A4364()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackViewContainer];
  v3 = [v2 layer];
  v4 = [v3 borderColor];

  v5 = objc_opt_self();
  v6 = [v5 opaqueSeparatorColor];
  v7 = [v6 CGColor];

  if (v4)
  {
    if (v7)
    {
      type metadata accessor for CGColor(0);
      sub_1000A4B64(&qword_1001FF598, type metadata accessor for CGColor, &unk_10017E900);
      v8 = static _CFObject.== infix(_:_:)();

      if (v8)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v7 = v4;
  }

  else if (!v7)
  {
    goto LABEL_10;
  }

LABEL_9:
  v9 = [v2 layer];
  v10 = [v5 opaqueSeparatorColor];
  v11 = [v10 CGColor];

  [v9 setBorderColor:v11];
LABEL_10:
  v13.receiver = v1;
  v13.super_class = type metadata accessor for CardViewCell();
  return objc_msgSendSuper2(&v13, "layoutSubviews");
}

id sub_1000A4578(uint64_t a1, uint64_t a2, DARootViewController *a3)
{
  *&v3[OBJC_IVAR____TtC11Diagnostics12CardViewCell_spacing] = 0x4024000000000000;
  v3[OBJC_IVAR____TtC11Diagnostics12CardViewCell_pauseStateAnimation] = 1;
  *&v3[OBJC_IVAR____TtC11Diagnostics12CardViewCell_deviceStateNotificationToken] = 0;
  *&v3[OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardStateNotificationToken] = 0;
  v6 = OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackView;
  type metadata accessor for CardStackView();
  *&v3[v6] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackViewContainer;
  *&v3[v7] = [objc_allocWithZone(UIView) init];
  v8 = &v3[OBJC_IVAR____TtC11Diagnostics12CardViewCell_controller];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v9 = &v3[OBJC_IVAR____TtC11Diagnostics12CardViewCell_layoutUpdateHandler];
  *v9 = 0;
  v9[1] = 0;
  *&v3[OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardState] = 0;
  if (a3)
  {
    v10 = String._bridgeToObjectiveC()();
    a3, v11, v12, v13, v14, v15, v16, v17;
  }

  else
  {
    v10 = 0;
  }

  v20.receiver = v3;
  v20.super_class = type metadata accessor for CardViewCell();
  v18 = objc_msgSendSuper2(&v20, "initWithStyle:reuseIdentifier:", a1, v10);

  return v18;
}

id sub_1000A4708(void *a1)
{
  *&v1[OBJC_IVAR____TtC11Diagnostics12CardViewCell_spacing] = 0x4024000000000000;
  v1[OBJC_IVAR____TtC11Diagnostics12CardViewCell_pauseStateAnimation] = 1;
  *&v1[OBJC_IVAR____TtC11Diagnostics12CardViewCell_deviceStateNotificationToken] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardStateNotificationToken] = 0;
  v3 = OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackView;
  type metadata accessor for CardStackView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackViewContainer;
  *&v1[v4] = [objc_allocWithZone(UIView) init];
  v5 = &v1[OBJC_IVAR____TtC11Diagnostics12CardViewCell_controller];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v6 = &v1[OBJC_IVAR____TtC11Diagnostics12CardViewCell_layoutUpdateHandler];
  *v6 = 0;
  v6[1] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardState] = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for CardViewCell();
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

uint64_t sub_1000A4870()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

uint64_t sub_1000A48B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000A48D0()
{

  return _swift_deallocObject(v0, 32, 7, v1);
}

void sub_1000A4918()
{
  v0 = [objc_opt_self() sharedApplication];
  sub_100049F8C();

  v1 = objc_opt_self();
  v2 = [v1 currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 != 1)
  {
    v4 = [v1 currentDevice];
    [v4 userInterfaceIdiom];
  }
}

void sub_1000A4A08()
{
  v0 = [objc_opt_self() sharedApplication];
  sub_100049F8C();

  if (!_UISolariumEnabled() || (v1 = objc_opt_self(), v2 = [v1 currentDevice], v3 = objc_msgSend(v2, "userInterfaceIdiom"), v2, v3 == 1) || (v4 = objc_msgSend(v1, "currentDevice"), v5 = objc_msgSend(v4, "userInterfaceIdiom"), v4, v5 == 6))
  {
    sub_1000A4918();
  }
}

uint64_t sub_1000A4AFC(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_1001FD060, &qword_10017EEF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A4B64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1000A4BC0(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC11Diagnostics37SelfServiceSuiteResultsViewController_entry] = a1;
  v3 = a1;
  _StringGuts.grow(_:)(35);
  DeviceClass = GestaltGetDeviceClass();
  v5 = sub_100100580(DeviceClass);
  v7 = v6;
  0xE000000000000000, v6, v8, v9, v10, v11, v12, v13;
  v60 = v5;
  v61 = v7;
  v14._countAndFlagsBits = 0xD000000000000021;
  v14._object = 0x800000010018EC60;
  String.append(_:)(v14);
  v15 = v7;
  v16 = String._bridgeToObjectiveC()();
  v17 = objc_opt_self();
  v18 = [v17 _systemImageNamed:v16];

  if (v18)
  {
    v7, v19, v20, v21, v22, v23, v24, v25;
  }

  else
  {
    v26 = String._bridgeToObjectiveC()();
    v15, v27, v28, v29, v30, v31, v32, v33;
    v18 = [v17 imageNamed:v26];
  }

  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000015, 0x800000010018EC90);
  v35 = v34;
  v36 = String._bridgeToObjectiveC()();
  sub_1000A54B8(v3);
  v38 = v37;
  v39 = String._bridgeToObjectiveC()();
  v38, v40, v41, v42, v43, v44, v45, v46;
  v59.receiver = v2;
  v59.super_class = type metadata accessor for SelfServiceSuiteResultsViewController();
  v47 = objc_msgSendSuper2(&v59, "initWithTitle:detailText:icon:contentLayout:", v36, v39, v18, 2);

  v48 = v47;
  v49 = [v48 navigationItem];
  v50 = String._bridgeToObjectiveC()();
  v35, v51, v52, v53, v54, v55, v56, v57;
  [v49 setBackButtonTitle:v50];

  return v48;
}

void sub_1000A4DEC()
{
  v41.receiver = v0;
  v41.super_class = type metadata accessor for SelfServiceSuiteResultsViewController();
  objc_msgSendSuper2(&v41, "viewDidLoad");
  v1 = [v0 navigationItem];
  [v1 setHidesBackButton:1];

  v2 = [v0 navigationItem];
  sub_10003E110(0, &qword_1001FD3B8, UIBarButtonItem_ptr);
  sub_10003E110(0, &qword_1002023B0, UIAction_ptr);
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v4 = v0;
  v42.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v42.is_nil = 0;
  isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemDone, v42, v43).super.super.isa;
  [v2 setLeftBarButtonItem:{isa, 0, 0, 0, sub_1000A567C, v3}];

  v6 = *&v4[OBJC_IVAR____TtC11Diagnostics37SelfServiceSuiteResultsViewController_entry];
  v7 = [v6 results];
  if (v7)
  {
    v8 = v7;
    [v4 navigationController];
    v9 = [v6 testSuiteName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    objc_allocWithZone(sub_10003C49C(&qword_1001FD538, &qword_10017F270));
    v10 = v8;
    v11 = UIHostingController.init(rootView:)();
    v12 = [v11 view];
    if (v12)
    {
      v13 = v12;
      [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
      v14 = [v4 contentView];
      [v14 addSubview:v13];

      v40 = objc_opt_self();
      sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_10017ED60;
      v16 = [v13 leadingAnchor];
      v17 = [v4 contentView];
      v18 = [v17 leadingAnchor];

      v19 = [v16 constraintEqualToAnchor:v18];
      *(v15 + 32) = v19;
      v20 = [v13 trailingAnchor];
      v21 = [v4 contentView];
      v22 = [v21 trailingAnchor];

      v23 = [v20 constraintEqualToAnchor:v22];
      *(v15 + 40) = v23;
      v24 = [v13 topAnchor];
      v25 = [v4 contentView];
      v26 = [v25 topAnchor];

      v27 = [v24 constraintEqualToAnchor:v26];
      *(v15 + 48) = v27;
      v28 = [v13 bottomAnchor];
      v29 = [v4 contentView];
      v30 = [v29 bottomAnchor];

      v31 = [v28 constraintEqualToAnchor:v30];
      *(v15 + 56) = v31;
      sub_10003E110(0, &qword_1001FD550, NSLayoutConstraint_ptr);
      v32 = Array._bridgeToObjectiveC()().super.isa;
      v15, v33, v34, v35, v36, v37, v38, v39;
      [v40 activateConstraints:v32];
    }

    else
    {
    }
  }

  else
  {
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_1000A5320(int a1, id a2)
{
  v2 = [a2 navigationController];
  if (v2)
  {
    v3 = v2;
  }
}

id sub_1000A5450()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SelfServiceSuiteResultsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000A54B8(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(NSDateFormatter) init];
  [v6 setDateStyle:1];
  [v6 setTimeStyle:1];
  [v6 setDoesRelativeDateFormatting:1];
  v7 = [a1 date];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v5, v2);
  v9 = [v6 stringFromDate:isa];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v10;
}

uint64_t sub_1000A5644()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

id sub_1000A5924(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for BaseTableViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1000A597C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackViewContainer);
  v2 = [objc_opt_self() secondarySystemBackgroundColor];
  [v1 setBackgroundColor:v2];

  v3 = [v1 layer];
  if (qword_1001FC750 != -1)
  {
    swift_once();
  }

  [v3 setCornerRadius:*&qword_10020A3D8];

  [v1 setClipsToBounds:0];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = *(v0 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackView);
  [v4 setAxis:1];
  [v4 setDistribution:0];
  [v4 setAlignment:0];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [objc_opt_self() defaultCenter];
  v6 = String._bridgeToObjectiveC()();
  [v5 addObserver:v0 selector:"handleLaunchURLWithNotification:" name:v6 object:0];
}

void sub_1000A5B64()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackViewContainer];
  v3 = *&v0[OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackView];
  [v2 addSubview:v3];
  v4 = [v1 contentView];
  [v4 addSubview:v2];

  v19 = [objc_allocWithZone(UIView) init];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [v19 heightAnchor];
  v6 = [v5 constraintEqualToConstant:20.0];

  [v6 setActive:1];
  v7 = [v3 arrangedSubviews];
  sub_10003E110(0, &qword_1001FF090, UIView_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = v8;
  if (v8 >> 62)
  {
    v18 = v8;
    v17 = _CocoaArrayWrapper.endIndex.getter();
    v16 = v18;
  }

  else
  {
    v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16, v9, v10, v11, v12, v13, v14, v15;
  sub_1000E9D04(v19, v17, 1);
}

void sub_1000A5D1C(void *a1)
{
  if (!a1)
  {
    goto LABEL_4;
  }

  v48 = a1;
  [v48 floatValue];
  if (v1 < 0.0)
  {

LABEL_4:
    v48 = sub_1000A9710();
    sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000002BLL, 0x800000010018F1E0);
    v3 = v2;
    v4 = [objc_opt_self() monospacedDigitSystemFontOfSize:16.0 weight:UIFontWeightRegular];
    v48[OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned] = 1;
    sub_1000A02DC();
    v12 = *&v48[OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel];
    if (v12)
    {
      v13 = v12;
      v14 = String._bridgeToObjectiveC()();
      [v13 setText:v14];

      if (v4)
      {
        v15 = objc_opt_self();
        v16 = v4;
        v17 = [v15 defaultMetrics];
        v18 = [v17 scaledFontForFont:v16];

        [v13 setFont:v18];
      }
    }

    v19 = *&v48[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler];
    if (v19)
    {
      v20 = *&v48[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler + 8];

      v19(v21);
      sub_10003C52C(v19, v20);
    }

    v3, v5, v6, v7, v8, v9, v10, v11;

    sub_1000A21F4();
    goto LABEL_10;
  }

  [v48 floatValue];
  v23 = v22;
  v24 = floorf(v22 * 100.0);
  if ((LODWORD(v24) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v24 <= -9.2234e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v24 >= 9.2234e18)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v25 = v24;
  v4 = sub_1000A9710();
  sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10017EC00;
  *(v26 + 56) = &type metadata for Int;
  *(v26 + 64) = &protocol witness table for Int;
  *(v26 + 32) = v25;
  sub_1000494C8(0, 0, v26, 0xD00000000000002ALL, 0x800000010018F210);
  v28 = v27;
  v26, v27, v29, v30, v31, v32, v33, v34;
  v4[OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned] = 1;
  sub_1000A02DC();
  v42 = *&v4[OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel];
  if (v42)
  {
    v43 = v42;
    v44 = String._bridgeToObjectiveC()();
    [v43 setText:v44];
  }

  v45 = *&v4[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler];
  if (v45)
  {
    v46 = *&v4[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler + 8];

    v45(v47);
    sub_10003C52C(v45, v46);
  }

  v28, v35, v36, v37, v38, v39, v40, v41;

  if (v23 >= 0.0 && v23 <= 1.0)
  {
    sub_1000A1BD4();
    sub_1000A1E18(v23);
    goto LABEL_11;
  }

  sub_1000A21F4();
LABEL_10:
  sub_1000A19FC();
LABEL_11:
}

void sub_1000A60FC(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v119 = *(v4 - 8);
  __chkstk_darwin(v4);
  v118 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v117 = &v113 - v7;
  v120 = sub_10003C49C(&qword_1001FF6E0, &qword_100181F38);
  v116 = *(v120 - 8);
  __chkstk_darwin(v120);
  v9 = &v113 - v8;
  v10 = sub_10003C49C(&qword_1001FF6E8, &qword_100181F40);
  __chkstk_darwin(v10 - 8);
  v12 = &v113 - v11;
  v13 = sub_10003C49C(&qword_1001FF6F0, &qword_100181F48);
  v114 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v113 - v14;
  v16 = sub_10003C49C(&qword_1001FF6F8, &qword_100181F50);
  v115 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v113 - v17;
  v19 = sub_10003C49C(&qword_1001FF700, &qword_100181F58);
  __chkstk_darwin(v19);
  v22 = &v113 - v21;
  if (a1 <= 0.0)
  {
    v120 = sub_1000A8E18();
    sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000002BLL, 0x800000010018F150);
    v58 = v57;
    *(v120 + OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned) = 1;
    sub_1000A02DC();
    v66 = *(v120 + OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel);
    if (v66)
    {
      v67 = v66;
      v68 = String._bridgeToObjectiveC()();
      [v67 setText:v68];
    }

    v69 = *(v120 + OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler);
    if (v69)
    {
      v70 = *(v120 + OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler + 8);

      v69(v71);
      sub_10003C52C(v69, v70);
    }

    v58, v59, v60, v61, v62, v63, v64, v65;

    sub_1000A21F4();
    sub_1000A19FC();
    v72 = v120;
  }

  else
  {
    v113 = v2;
    if (a1 / 60.0 >= 60.0)
    {
      v73 = v4;
      v74 = v117;
      Date.init(timeIntervalSinceNow:)();
      Date.timeIntervalSinceReferenceDate.getter();
      v75 = v118;
      Date.init(timeIntervalSinceReferenceDate:)();
      v76 = objc_allocWithZone(NSDateFormatter);
      v77 = [v76 init];
      [v77 setDateStyle:3];
      [v77 setTimeStyle:1];
      [v77 setDoesRelativeDateFormatting:1];
      isa = Date._bridgeToObjectiveC()().super.isa;
      v79 = [v77 stringFromDate:isa];

      if (!v79)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v81 = v80;
        v79 = String._bridgeToObjectiveC()();
        v81, v82, v83, v84, v85, v86, v87, v88;
      }

      v89 = sub_1000A8E18();
      sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
      v90 = swift_allocObject();
      *(v90 + 16) = xmmword_10017EC00;
      *(v90 + 56) = sub_10003E110(0, &qword_1001FF708, NSString_ptr);
      *(v90 + 64) = sub_1000AC8BC(&qword_1001FF710, &qword_1001FF708, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(v90 + 32) = v79;
      sub_1000494C8(0, 0, v90, 0xD000000000000025, 0x800000010018F180);
      v92 = v91;
      v90, v91, v93, v94, v95, v96, v97, v98;
      v89[OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned] = 0;
      sub_1000A02DC();
      v106 = *&v89[OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel];
      if (v106)
      {
        v107 = v106;
        v108 = String._bridgeToObjectiveC()();
        [v107 setText:v108];
      }

      v109 = *&v89[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler];
      if (v109)
      {
        v110 = *&v89[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler + 8];

        v109(v111);
        sub_10003C52C(v109, v110);
      }

      v92, v99, v100, v101, v102, v103, v104, v105;

      sub_1000A1BD4();
      sub_1000A21F4();

      v112 = *(v119 + 8);
      v112(v75, v73);
      v112(v74, v73);
    }

    else
    {
      v119 = v20;
      v23 = [objc_opt_self() minutes];
      sub_10003E110(0, &qword_1001FF718, NSUnitDuration_ptr);
      Measurement.init(value:unit:)();
      static Measurement<>.FormatStyle.UnitWidth.wide.getter();
      v24 = sub_10003C49C(&qword_1001FF720, &unk_100181F60);
      (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
      static MeasurementFormatUnitUsage.general.getter();
      static FormatStyle.measurement<A>(width:usage:numberFormatStyle:)();
      (*(v116 + 8))(v9, v120);
      sub_10003DD84(v12, &qword_1001FF6E8, &qword_100181F40);
      (*(v114 + 8))(v15, v13);
      sub_10005C71C(&qword_1001FF728, &qword_1001FF6F8, &qword_100181F50, &protocol conformance descriptor for Measurement<A><>.FormatStyle);
      Measurement<>.formatted<A>(_:)();
      (*(v115 + 8))(v18, v16);
      (*(v119 + 8))(v22, v19);
      v25 = v121;
      v26 = sub_1000A8E18();
      sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_10017EC00;
      v28 = String._bridgeToObjectiveC()();
      v25, v29, v30, v31, v32, v33, v34, v35;
      *(v27 + 56) = sub_10003E110(0, &qword_1001FF708, NSString_ptr);
      *(v27 + 64) = sub_1000AC8BC(&qword_1001FF710, &qword_1001FF708, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(v27 + 32) = v28;
      sub_1000494C8(0, 0, v27, 0xD000000000000027, 0x800000010018F1B0);
      v37 = v36;
      v27, v36, v38, v39, v40, v41, v42, v43;
      v26[OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned] = 0;
      sub_1000A02DC();
      v51 = *&v26[OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel];
      if (v51)
      {
        v52 = v51;
        v53 = String._bridgeToObjectiveC()();
        [v52 setText:v53];
      }

      v54 = *&v26[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler];
      if (v54)
      {
        v55 = *&v26[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler + 8];

        v54(v56);
        sub_10003C52C(v54, v55);
      }

      v37, v44, v45, v46, v47, v48, v49, v50;

      sub_1000A1BD4();
      sub_1000A21F4();
    }
  }
}

void sub_1000A6B64()
{
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v0 = qword_10020A4F8;
  sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10017EC00;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = sub_10003DFBC();
  *(v1 + 32) = 0xD00000000000001BLL;
  *(v1 + 40) = 0x800000010018F130;
  v2 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("%@", 2, 2, &_mh_execute_header, v0, v2, v1);
  v1, v3, v4, v5, v6, v7, v8, v9;
  v10 = sub_1000A84A4();
  sub_1000A7FF0(v10, 0);
}

id sub_1000A6C80()
{
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v1 = qword_10020A4F8;
  sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10017EC00;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 64) = sub_10003DFBC();
  *(v2 + 32) = 0xD000000000000020;
  *(v2 + 40) = 0x800000010018F100;
  v3 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("%@", 2, 2, &_mh_execute_header, v1, v3, v2);
  v2, v4, v5, v6, v7, v8, v9, v10;
  v11 = sub_1000A8860();
  sub_1000A7FF0(v11, 0);

  v12 = sub_1000AA0E4();
  v13 = [v12 viewControllers];

  sub_10003E110(0, &qword_1001FDE30, UIViewController_ptr);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v14 >> 62))
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_12:
    v14, v15, v16, v17, v18, v19, v20, v21;
    return [*&v0[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___enhancedLoggingConsentNavigationController] scheduleModalPresentationWithPriority:0 animated:1 presentationCompletion:0];
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = *(v14 + 32);
LABEL_8:
    v31 = v23;
    v14, v24, v25, v26, v27, v28, v29, v30;
    type metadata accessor for EnhancedLoggingConsentViewController();
    v32 = swift_dynamicCastClass();
    if (v32)
    {
      v33 = v32;
      v36[3] = type metadata accessor for CardViewPersistentCell();
      v36[4] = &off_1001C3A60;
      v36[0] = v0;
      v34 = OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_delegate;
      swift_beginAccess();
      v35 = v0;
      sub_1000AC84C(v36, v33 + v34);
      swift_endAccess();
    }

    return [*&v0[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___enhancedLoggingConsentNavigationController] scheduleModalPresentationWithPriority:0 animated:1 presentationCompletion:0];
  }

  __break(1u);
  return result;
}

void sub_1000A6EDC()
{
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v0 = qword_10020A4F8;
  sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10017EC00;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = sub_10003DFBC();
  *(v1 + 32) = 0xD000000000000019;
  *(v1 + 40) = 0x800000010018F0E0;
  v2 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("%@", 2, 2, &_mh_execute_header, v0, v2, v1);
  v1, v3, v4, v5, v6, v7, v8, v9;
  v10 = sub_1000A8E18();
  sub_1000A7FF0(v10, 0);
}

void sub_1000A6FF8()
{
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v0 = qword_10020A4F8;
  sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10017EC00;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = sub_10003DFBC();
  *(v1 + 32) = 0xD00000000000001ALL;
  *(v1 + 40) = 0x800000010018F0C0;
  v2 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("%@", 2, 2, &_mh_execute_header, v0, v2, v1);
  v1, v3, v4, v5, v6, v7, v8, v9;
  sub_1000ABE6C();
  v10 = sub_1000A926C();
  sub_1000A7FF0(v10, 0);
}

void sub_1000A7118()
{
  v1 = v0;
  v2 = sub_10003C49C(&qword_1001FF688, &qword_100181E90);
  v43 = *(v2 - 8);
  v44 = v2;
  __chkstk_darwin(v2);
  v41 = v37 - v3;
  v40 = sub_10003C49C(&qword_1001FF690, &qword_100181E98);
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v45 = v37 - v4;
  v5 = sub_10003C49C(&qword_1001FF698, &qword_100181EA0);
  __chkstk_darwin(v5 - 8);
  v7 = v37 - v6;
  v8 = sub_10003C49C(&qword_1001FF6A0, &qword_100181EA8);
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v10 = v37 - v9;
  v11 = sub_10003C49C(&qword_1001FF6A8, qword_100181EB0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v37 - v13;
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v15 = qword_10020A4F8;
  sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10017EC00;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_10003DFBC();
  *(v16 + 32) = 0xD00000000000001BLL;
  *(v16 + 40) = 0x800000010018F0A0;
  v17 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("%@", 2, 2, &_mh_execute_header, v15, v17, v16);
  v16, v18, v19, v20, v21, v22, v23, v24;
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  v46 = qword_10020A550;
  if (SessionManager.currentSession.getter())
  {
    v25 = Session.totalProgress.getter();

    swift_getKeyPath();
    v37[0] = v12;
    v37[1] = v1;
    _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

    v26 = [objc_opt_self() mainRunLoop];
    v47 = v26;
    v27 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
    sub_10003E110(0, &qword_1001FF6B0, NSRunLoop_ptr);
    sub_10005C71C(&qword_1001FF6D0, &qword_1001FF6A0, &qword_100181EA8, &protocol conformance descriptor for NSObject.KeyValueObservingPublisher<A, B>);
    sub_1000AC8BC(&qword_1001FF6C0, &qword_1001FF6B0, NSRunLoop_ptr, &protocol conformance descriptor for NSRunLoop);
    v28 = v39;
    Publisher.receive<A>(on:options:)();
    sub_10003DD84(v7, &qword_1001FF698, &qword_100181EA0);

    (*(v38 + 8))(v10, v28);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10005C71C(&qword_1001FF6D8, &qword_1001FF6A8, qword_100181EB0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    Publisher<>.sink(receiveValue:)();

    (*(v37[0] + 8))(v14, v11);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  if (SessionManager.currentSession.getter())
  {
    v29 = Session.totalProgress.getter();

    swift_getKeyPath();
    v30 = v41;
    _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

    v31 = [objc_opt_self() mainRunLoop];
    v47 = v31;
    v32 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v32 - 8) + 56))(v7, 1, 1, v32);
    sub_10003E110(0, &qword_1001FF6B0, NSRunLoop_ptr);
    sub_10005C71C(&qword_1001FF6B8, &qword_1001FF688, &qword_100181E90, &protocol conformance descriptor for NSObject.KeyValueObservingPublisher<A, B>);
    sub_1000AC8BC(&qword_1001FF6C0, &qword_1001FF6B0, NSRunLoop_ptr, &protocol conformance descriptor for NSRunLoop);
    v34 = v44;
    v33 = v45;
    Publisher.receive<A>(on:options:)();
    sub_10003DD84(v7, &qword_1001FF698, &qword_100181EA0);

    (*(v43 + 8))(v30, v34);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10005C71C(&qword_1001FF6C8, &qword_1001FF690, &qword_100181E98, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v35 = v40;
    Publisher<>.sink(receiveValue:)();

    (*(v42 + 8))(v33, v35);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  v36 = sub_1000A9710();
  sub_1000A7FF0(v36, 0);
}

void sub_1000A79C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    isa = Double._bridgeToObjectiveC()().super.super.isa;
    sub_1000A5D1C(isa);
  }
}

void sub_1000A7A30(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (v2)
    {
      sub_1000A5D1C(0);
    }

    else
    {
      if (qword_1001FC7E8 != -1)
      {
        swift_once();
      }

      if (SessionManager.currentSession.getter())
      {
        v5 = Session.totalProgress.getter();

        [v5 fractionCompleted];

        isa = Double._bridgeToObjectiveC()().super.super.isa;
        sub_1000A5D1C(isa);
      }
    }
  }
}

id sub_1000A7B2C()
{
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v0 = qword_10020A4F8;
  sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10017EC00;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = sub_10003DFBC();
  *(v1 + 32) = 0xD000000000000022;
  *(v1 + 40) = 0x800000010018F070;
  v2 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("%@", 2, 2, &_mh_execute_header, v0, v2, v1);
  v1, v3, v4, v5, v6, v7, v8, v9;
  if (qword_1001FC6C8 != -1)
  {
    swift_once();
  }

  v10 = qword_10020A380;
  v11 = sub_100060D74();
  v12 = [v11 navigationItem];

  [v12 setHidesBackButton:1];
  v13 = OBJC_IVAR___DARootViewController____lazy_storage___enhancedLoggingCompletedNavigationController;
  [*&v10[OBJC_IVAR___DARootViewController____lazy_storage___enhancedLoggingCompletedNavigationController] setModalPresentationStyle:0];
  v14 = *&v10[v13];

  return [v10 presentViewController:v14 animated:1 completion:0];
}

void sub_1000A7CD4()
{
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v0 = qword_10020A4F8;
  sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10017EC00;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = sub_10003DFBC();
  *(v1 + 32) = 0xD00000000000001DLL;
  *(v1 + 40) = 0x800000010018F050;
  v2 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("%@", 2, 2, &_mh_execute_header, v0, v2, v1);
  v1, v3, v4, v5, v6, v7, v8, v9;
  v10 = sub_1000A9D28();
  sub_1000A7FF0(v10, 0);

  v11 = sub_1000AA0E4();
  sub_100125854(1, 0, 1, 0, 0);

  v12 = sub_1000AAD20();
  sub_100125854(1, 0, 1, 0, 0);
}

id sub_1000A7E48()
{
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v0 = qword_10020A4F8;
  sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10017EC00;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = sub_10003DFBC();
  *(v1 + 32) = 0xD00000000000001DLL;
  *(v1 + 40) = 0x800000010018F030;
  v2 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("%@", 2, 2, &_mh_execute_header, v0, v2, v1);
  v1, v3, v4, v5, v6, v7, v8, v9;
  if (qword_1001FC6C8 != -1)
  {
    swift_once();
  }

  v10 = qword_10020A380;
  v11 = sub_100060D74();
  v12 = [v11 navigationItem];

  [v12 setHidesBackButton:1];
  v13 = OBJC_IVAR___DARootViewController____lazy_storage___enhancedLoggingCompletedNavigationController;
  [*&v10[OBJC_IVAR___DARootViewController____lazy_storage___enhancedLoggingCompletedNavigationController] setModalPresentationStyle:0];
  v14 = *&v10[v13];

  return [v10 presentViewController:v14 animated:1 completion:0];
}

void sub_1000A7FF0(DARootViewController *a1, char a2)
{
  v5 = v2;
  v8 = OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell_viewQueue;
  swift_beginAccess();
  v9 = *(v2 + v8);
  if (v9 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_10;
    }
  }

  else if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
    goto LABEL_40;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_42;
  }

  v3 = *(v9 + 32);
  while (1)
  {
    sub_10003E110(0, &qword_1001FCE88, NSObject_ptr);
    if (static NSObject.== infix(_:_:)())
    {
      if (qword_1001FC7B0 != -1)
      {
        goto LABEL_47;
      }

      goto LABEL_8;
    }

LABEL_10:
    v9 = *(v5 + v8);
    if (v9 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_19:
        v9 = *(v5 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackView);
        v22 = [v9 arrangedSubviews];
        sub_10003E110(0, &qword_1001FF090, UIView_ptr);
        v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v4 >> 62)
        {
          v3 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v3 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v4, v23, v24, v25, v26, v27, v28, v29;
        sub_1000E9D04(a1, v3, 1);
        goto LABEL_22;
      }
    }

    else if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
LABEL_42:

      v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9, v54, v55, v56, v57, v58, v59, v60;
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_44;
      }

      v3 = *(v9 + 32);
    }

    v9 = *(v5 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackView);
    sub_1000EA498(a1, v3, 1);

LABEL_22:
    swift_beginAccess();
    if (!(*(v5 + v8) >> 62) || (_CocoaArrayWrapper.endIndex.getter() & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_40:

    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v9, v47, v48, v49, v50, v51, v52, v53;
  }

  a1 = a1;
  sub_10003D534(0, 0, a1);
  swift_endAccess();

  if (a2)
  {
    return;
  }

  v4 = *(v5 + v8);
  if (!(v4 >> 62))
  {
    v30 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v31 = v30 - 1;
    if (!__OFSUB__(v30, 1))
    {
      goto LABEL_26;
    }

LABEL_46:
    __break(1u);
LABEL_47:
    swift_once();
LABEL_8:
    v10 = qword_10020A4F8;
    sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10017EC00;
    *(v11 + 56) = sub_10003E110(0, &qword_1001FF090, UIView_ptr);
    *(v11 + 64) = sub_1000AC8BC(&qword_1001FF730, &qword_1001FF090, UIView_ptr, &protocol conformance descriptor for NSObject);
    *(v11 + 32) = a1;
    v12 = a1;
    v13 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Attempted to move forward, but this view is already the current view: %@", 72, 2, &_mh_execute_header, v10, v13, v11);

    v21 = v11;
    goto LABEL_36;
  }

LABEL_44:
  v61 = _CocoaArrayWrapper.endIndex.getter();
  v31 = v61 - 1;
  if (__OFSUB__(v61, 1))
  {
    goto LABEL_46;
  }

LABEL_26:

  v32 = sub_1000AD060(v31, v4);
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v4, v33, v35, v37, v39, v40, v41, v42;
  if ((v38 & 1) == 0)
  {
LABEL_27:
    sub_100098BD4(v32, v34, v36, v38);
    v44 = v43;
    goto LABEL_34;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v45 = swift_dynamicCastClass();
  if (!v45)
  {
    swift_unknownObjectRelease();
    v45 = &_swiftEmptyArrayStorage;
  }

  v46 = *&v45->hostAppBundleIdentifier[8];

  if (__OFSUB__(v38 >> 1, v36))
  {
    __break(1u);
    goto LABEL_50;
  }

  if (v46 != (v38 >> 1) - v36)
  {
LABEL_50:
    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  v44 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v44)
  {
    v44 = &_swiftEmptyArrayStorage;
LABEL_34:
    swift_unknownObjectRelease();
  }

  v21 = *(v5 + v8);
  *(v5 + v8) = v44;
LABEL_36:
  v21, v14, v15, v16, v17, v18, v19, v20;
}

_BYTE *sub_1000A84C4()
{
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000020, 0x800000010018F600);
  v1 = v0;
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000001FLL, 0x800000010018F630);
  v56 = v2;
  v57 = type metadata accessor for PromptView();
  v3 = objc_allocWithZone(v57);
  v3[OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned] = 1;
  v4 = OBJC_IVAR____TtC11Diagnostics10PromptView_promptStackView;
  *&v3[v4] = [objc_allocWithZone(UIStackView) init];
  v5 = OBJC_IVAR____TtC11Diagnostics10PromptView_footerStackView;
  *&v3[v5] = [objc_allocWithZone(UIStackView) init];
  *&v3[OBJC_IVAR____TtC11Diagnostics10PromptView_promptFooterConstraint] = 0;
  v6 = OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel;
  *&v3[OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel] = 0;
  *&v3[OBJC_IVAR____TtC11Diagnostics10PromptView_subtitleLabel] = 0;
  v7 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView;
  *&v3[v7] = [objc_allocWithZone(UIStackView) init];
  v8 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoProgressIndicatorView;
  *&v3[v8] = [objc_allocWithZone(UIProgressView) init];
  v9 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoActivityIndicatorView;
  *&v3[v9] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v10 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel;
  *&v3[OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel] = 0;
  v11 = &v3[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler];
  *v11 = 0;
  v11[1] = 0;
  v3[OBJC_IVAR____TtC11Diagnostics10PromptView_hasExplicitHeight] = 0;
  v12 = [objc_allocWithZone(UILabel) init];
  v13 = *&v3[v6];
  *&v3[v6] = v12;

  v21 = *&v3[v6];
  if (v21)
  {
    v22 = v21;
    v23 = String._bridgeToObjectiveC()();
    v1, v24, v25, v26, v27, v28, v29, v30;
    [v22 setText:v23];
  }

  else
  {
    v1, v14, v15, v16, v17, v18, v19, v20;
  }

  v31 = [objc_allocWithZone(UILabel) init];
  v32 = *&v3[v10];
  *&v3[v10] = v31;

  v40 = *&v3[v10];
  if (v40)
  {
    v41 = v40;
    v42 = String._bridgeToObjectiveC()();
    v56, v43, v44, v45, v46, v47, v48, v49;
    [v41 setText:v42];
  }

  else
  {
    v56, v33, v34, v35, v36, v37, v38, v39;
  }

  *&v3[OBJC_IVAR____TtC11Diagnostics10PromptView_actions] = &_swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView] = 0;
  v3[OBJC_IVAR____TtC11Diagnostics10PromptView_type] = 0;
  [*&v3[v4] setSpacing:20.0];
  [*&v3[v5] setSpacing:20.0];
  v58.receiver = v3;
  v58.super_class = v57;
  v50 = objc_msgSendSuper2(&v58, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v50[OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned] = 1;
  sub_1000A02DC();
  v51 = *&v50[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler];
  if (v51)
  {
    v52 = *&v50[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler + 8];
    v53 = *&v50[OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel];
    v54 = sub_10003E418(v51, v52);
    v51(v54);

    sub_10003C52C(v51, v52);
  }

  sub_1000A21F4();
  sub_1000A19FC();
  return v50;
}

id sub_1000A8880(void *a1)
{
  v2 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0x45554E49544E4F43, 0xE800000000000000);
  v4 = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = a1;
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000020, 0x800000010018F600);
  v8 = v7;
  sub_10003C49C(&unk_100201C20, qword_100184B00);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10017EC00;
  *(v9 + 32) = v2;
  *(v9 + 40) = v4;
  *(v9 + 48) = 7;
  *(v9 + 56) = sub_1000AD058;
  *(v9 + 64) = v5;
  v60 = type metadata accessor for PromptView();
  v10 = objc_allocWithZone(v60);
  v10[OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned] = 1;
  v11 = OBJC_IVAR____TtC11Diagnostics10PromptView_promptStackView;
  v12 = objc_allocWithZone(UIStackView);
  v61 = v4;

  *&v10[v11] = [v12 init];
  v13 = OBJC_IVAR____TtC11Diagnostics10PromptView_footerStackView;
  *&v10[v13] = [objc_allocWithZone(UIStackView) init];
  *&v10[OBJC_IVAR____TtC11Diagnostics10PromptView_promptFooterConstraint] = 0;
  v14 = OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel;
  *&v10[OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel] = 0;
  *&v10[OBJC_IVAR____TtC11Diagnostics10PromptView_subtitleLabel] = 0;
  v15 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView;
  *&v10[v15] = [objc_allocWithZone(UIStackView) init];
  v16 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoProgressIndicatorView;
  *&v10[v16] = [objc_allocWithZone(UIProgressView) init];
  v17 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoActivityIndicatorView;
  *&v10[v17] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *&v10[OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel] = 0;
  v18 = &v10[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler];
  *v18 = 0;
  v18[1] = 0;
  v10[OBJC_IVAR____TtC11Diagnostics10PromptView_hasExplicitHeight] = 0;
  v19 = [objc_allocWithZone(UILabel) init];
  v20 = *&v10[v14];
  *&v10[v14] = v19;

  v28 = *&v10[v14];
  if (v28)
  {
    v29 = v28;
    v30 = String._bridgeToObjectiveC()();
    v8, v31, v32, v33, v34, v35, v36, v37;
    [v29 setText:v30];

    if (*(v9 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:
    v9, v38, v39, v40, v41, v42, v43, v44;
    *&v10[OBJC_IVAR____TtC11Diagnostics10PromptView_actions] = &_swiftEmptyArrayStorage;
    *&v10[OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView] = 0;
    goto LABEL_7;
  }

  v8, v21, v22, v23, v24, v25, v26, v27;
  if (!*(v9 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  *&v10[OBJC_IVAR____TtC11Diagnostics10PromptView_actions] = v9;
  v45 = [objc_allocWithZone(UIStackView) init];
  *&v10[OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView] = v45;
  if (v45)
  {
    v46 = v45;
    v47 = objc_opt_self();
    v48 = v46;
    v49 = [v47 sharedApplication];
    v50 = [v49 preferredContentSizeCategory];

    LOBYTE(v49) = UIContentSizeCategory.isAccessibilityCategory.getter();
    [v48 setAxis:v49 & 1];
  }

LABEL_7:
  v10[OBJC_IVAR____TtC11Diagnostics10PromptView_type] = 0;
  [*&v10[v11] setSpacing:20.0];
  [*&v10[v13] setSpacing:20.0];
  v62.receiver = v10;
  v62.super_class = v60;
  v51 = objc_msgSendSuper2(&v62, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);

  v61, v52, v53, v54, v55, v56, v57, v58;
  return v51;
}

id sub_1000A8C98(uint64_t a1, char *a2)
{
  v3 = sub_1000AA0E4();
  v4 = [v3 viewControllers];

  sub_10003E110(0, &qword_1001FDE30, UIViewController_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v5, v6, v7, v8, v9, v10, v11, v12;
    return [*&a2[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___enhancedLoggingConsentNavigationController] scheduleModalPresentationWithPriority:0 animated:1 presentationCompletion:0];
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v5 + 32);
LABEL_6:
    v22 = v14;
    v5, v15, v16, v17, v18, v19, v20, v21;
    type metadata accessor for EnhancedLoggingConsentViewController();
    v23 = swift_dynamicCastClass();
    if (v23)
    {
      v24 = v23;
      v27[3] = type metadata accessor for CardViewPersistentCell();
      v27[4] = &off_1001C3A60;
      v27[0] = a2;
      v25 = OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_delegate;
      swift_beginAccess();
      v26 = a2;
      sub_1000AC84C(v27, v24 + v25);
      swift_endAccess();
    }

    return [*&a2[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___enhancedLoggingConsentNavigationController] scheduleModalPresentationWithPriority:0 animated:1 presentationCompletion:0];
  }

  __break(1u);
  return result;
}

id sub_1000A8E38()
{
  v0 = sub_100049C98(0xD000000000000021, 0x800000010018F580);
  v2 = v1;
  v3 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v0, v1);
  v5 = v4;
  v2, v4, v6, v7, v8, v9, v10, v11;

  v12._countAndFlagsBits = 2570;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  v5, v13, v14, v15, v16, v17, v18, v19;
  v20 = v3;
  v21 = v5;
  v22 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000002BLL, 0x800000010018F5B0);
  v24 = v23;
  v99 = v20;
  v100 = v21;

  v25._countAndFlagsBits = v22;
  v25._object = v24;
  String.append(_:)(v25);
  v21, v26, v27, v28, v29, v30, v31, v32;
  v24, v33, v34, v35, v36, v37, v38, v39;
  v94 = v21;
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000001ELL, 0x800000010018F5E0);
  v41 = v40;
  v97 = type metadata accessor for PromptView();
  v42 = objc_allocWithZone(v97);
  v42[OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned] = 1;
  v96 = OBJC_IVAR____TtC11Diagnostics10PromptView_promptStackView;
  *&v42[v96] = [objc_allocWithZone(UIStackView) init];
  v95 = OBJC_IVAR____TtC11Diagnostics10PromptView_footerStackView;
  *&v42[v95] = [objc_allocWithZone(UIStackView) init];
  *&v42[OBJC_IVAR____TtC11Diagnostics10PromptView_promptFooterConstraint] = 0;
  v43 = OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel;
  *&v42[OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel] = 0;
  v44 = OBJC_IVAR____TtC11Diagnostics10PromptView_subtitleLabel;
  *&v42[OBJC_IVAR____TtC11Diagnostics10PromptView_subtitleLabel] = 0;
  v45 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView;
  *&v42[v45] = [objc_allocWithZone(UIStackView) init];
  v46 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoProgressIndicatorView;
  *&v42[v46] = [objc_allocWithZone(UIProgressView) init];
  v47 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoActivityIndicatorView;
  *&v42[v47] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v48 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel;
  *&v42[OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel] = 0;
  v49 = &v42[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler];
  *v49 = 0;
  v49[1] = 0;
  v42[OBJC_IVAR____TtC11Diagnostics10PromptView_hasExplicitHeight] = 0;
  v50 = [objc_allocWithZone(UILabel) init];
  v51 = *&v42[v43];
  *&v42[v43] = v50;

  v59 = *&v42[v43];
  if (v59)
  {
    v60 = v59;
    v61 = String._bridgeToObjectiveC()();
    v41, v62, v63, v64, v65, v66, v67, v68;
    [v60 setText:v61];
  }

  else
  {
    v41, v52, v53, v54, v55, v56, v57, v58;
  }

  v69 = [objc_allocWithZone(UILabel) init];
  v70 = *&v42[v44];
  *&v42[v44] = v69;

  v78 = *&v42[v44];
  if (v78)
  {
    v79 = v78;
    v80 = String._bridgeToObjectiveC()();
    v94, v81, v82, v83, v84, v85, v86, v87;
    [v79 setText:v80];
  }

  else
  {
    v94, v71, v72, v73, v74, v75, v76, v77;
  }

  v88 = [objc_allocWithZone(UILabel) init];
  v89 = *&v42[v48];
  *&v42[v48] = v88;

  v90 = *&v42[v48];
  if (v90)
  {
    v91 = v90;
    v92 = String._bridgeToObjectiveC()();
    [v91 setText:v92];
  }

  *&v42[OBJC_IVAR____TtC11Diagnostics10PromptView_actions] = &_swiftEmptyArrayStorage;
  *&v42[OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView] = 0;
  v42[OBJC_IVAR____TtC11Diagnostics10PromptView_type] = 0;
  [*&v42[v96] setSpacing:20.0];
  [*&v42[v95] setSpacing:20.0];
  v98.receiver = v42;
  v98.super_class = v97;
  return objc_msgSendSuper2(&v98, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
}

id sub_1000A928C(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

id sub_1000A92F0(void *a1)
{
  v2 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000020, 0x800000010018F530);
  v4 = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = a1;
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000001FLL, 0x800000010018F560);
  v8 = v7;
  sub_10003C49C(&unk_100201C20, qword_100184B00);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10017EC00;
  *(v9 + 32) = v2;
  *(v9 + 40) = v4;
  *(v9 + 48) = 7;
  *(v9 + 56) = sub_1000ACFFC;
  *(v9 + 64) = v5;
  v60 = type metadata accessor for PromptView();
  v10 = objc_allocWithZone(v60);
  v10[OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned] = 1;
  v11 = OBJC_IVAR____TtC11Diagnostics10PromptView_promptStackView;
  v12 = objc_allocWithZone(UIStackView);
  v61 = v4;

  *&v10[v11] = [v12 init];
  v13 = OBJC_IVAR____TtC11Diagnostics10PromptView_footerStackView;
  *&v10[v13] = [objc_allocWithZone(UIStackView) init];
  *&v10[OBJC_IVAR____TtC11Diagnostics10PromptView_promptFooterConstraint] = 0;
  v14 = OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel;
  *&v10[OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel] = 0;
  *&v10[OBJC_IVAR____TtC11Diagnostics10PromptView_subtitleLabel] = 0;
  v15 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView;
  *&v10[v15] = [objc_allocWithZone(UIStackView) init];
  v16 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoProgressIndicatorView;
  *&v10[v16] = [objc_allocWithZone(UIProgressView) init];
  v17 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoActivityIndicatorView;
  *&v10[v17] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *&v10[OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel] = 0;
  v18 = &v10[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler];
  *v18 = 0;
  v18[1] = 0;
  v10[OBJC_IVAR____TtC11Diagnostics10PromptView_hasExplicitHeight] = 0;
  v19 = [objc_allocWithZone(UILabel) init];
  v20 = *&v10[v14];
  *&v10[v14] = v19;

  v28 = *&v10[v14];
  if (v28)
  {
    v29 = v28;
    v30 = String._bridgeToObjectiveC()();
    v8, v31, v32, v33, v34, v35, v36, v37;
    [v29 setText:v30];

    if (*(v9 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:
    v9, v38, v39, v40, v41, v42, v43, v44;
    *&v10[OBJC_IVAR____TtC11Diagnostics10PromptView_actions] = &_swiftEmptyArrayStorage;
    *&v10[OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView] = 0;
    goto LABEL_7;
  }

  v8, v21, v22, v23, v24, v25, v26, v27;
  if (!*(v9 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  *&v10[OBJC_IVAR____TtC11Diagnostics10PromptView_actions] = v9;
  v45 = [objc_allocWithZone(UIStackView) init];
  *&v10[OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView] = v45;
  if (v45)
  {
    v46 = v45;
    v47 = objc_opt_self();
    v48 = v46;
    v49 = [v47 sharedApplication];
    v50 = [v49 preferredContentSizeCategory];

    LOBYTE(v49) = UIContentSizeCategory.isAccessibilityCategory.getter();
    [v48 setAxis:v49 & 1];
  }

LABEL_7:
  v10[OBJC_IVAR____TtC11Diagnostics10PromptView_type] = 0;
  [*&v10[v11] setSpacing:10.0];
  [*&v10[v13] setSpacing:10.0];
  v62.receiver = v10;
  v62.super_class = v60;
  v51 = objc_msgSendSuper2(&v62, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);

  v61, v52, v53, v54, v55, v56, v57, v58;
  return v51;
}

_BYTE *sub_1000A9730()
{
  v110 = 0xD000000000000023;
  v111 = 0x800000010018F4D0;
  v0 = [objc_opt_self() sharedManager];
  v1 = [v0 snapshot];

  v2 = [v1 consent];
  if (v2 != 3)
  {
    result = MobileGestalt_get_current_device();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v4 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    if (wapiCapability)
    {
      v6 = 0x4E414C575FLL;
    }

    else
    {
      v6 = 0x494649575FLL;
    }

    v7 = 0xE500000000000000;
    String.append(_:)(*&v6);
  }

  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000020, 0x800000010018F500);
  v9 = v8;
  v10 = sub_100049C98(v110, v111);
  v12 = v11;
  v111, v11, v13, v14, v15, v16, v17, v18;
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v10, v12);
  v104 = v19;
  v12, v19, v20, v21, v22, v23, v24, v25;
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000002BLL, 0x800000010018F1E0);
  v106 = v26;
  v108 = type metadata accessor for PromptView();
  v27 = objc_allocWithZone(v108);
  v27[OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned] = 1;
  v107 = OBJC_IVAR____TtC11Diagnostics10PromptView_promptStackView;
  *&v27[v107] = [objc_allocWithZone(UIStackView) init];
  v105 = OBJC_IVAR____TtC11Diagnostics10PromptView_footerStackView;
  *&v27[v105] = [objc_allocWithZone(UIStackView) init];
  *&v27[OBJC_IVAR____TtC11Diagnostics10PromptView_promptFooterConstraint] = 0;
  v28 = OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel;
  *&v27[OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel] = 0;
  v29 = OBJC_IVAR____TtC11Diagnostics10PromptView_subtitleLabel;
  *&v27[OBJC_IVAR____TtC11Diagnostics10PromptView_subtitleLabel] = 0;
  v30 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView;
  *&v27[v30] = [objc_allocWithZone(UIStackView) init];
  v31 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoProgressIndicatorView;
  *&v27[v31] = [objc_allocWithZone(UIProgressView) init];
  v32 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoActivityIndicatorView;
  *&v27[v32] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v33 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel;
  *&v27[OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel] = 0;
  v34 = &v27[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler];
  *v34 = 0;
  v34[1] = 0;
  v27[OBJC_IVAR____TtC11Diagnostics10PromptView_hasExplicitHeight] = 0;
  v35 = [objc_allocWithZone(UILabel) init];
  v36 = *&v27[v28];
  *&v27[v28] = v35;

  v44 = *&v27[v28];
  if (v44)
  {
    v45 = v44;
    v46 = String._bridgeToObjectiveC()();
    v9, v47, v48, v49, v50, v51, v52, v53;
    [v45 setText:v46];
  }

  else
  {
    v9, v37, v38, v39, v40, v41, v42, v43;
  }

  v54 = [objc_allocWithZone(UILabel) init];
  v55 = *&v27[v29];
  *&v27[v29] = v54;

  v63 = *&v27[v29];
  if (v63)
  {
    v64 = v63;
    v65 = String._bridgeToObjectiveC()();
    v104, v66, v67, v68, v69, v70, v71, v72;
    [v64 setText:v65];
  }

  else
  {
    v104, v56, v57, v58, v59, v60, v61, v62;
  }

  v73 = [objc_allocWithZone(UILabel) init];
  v74 = *&v27[v33];
  *&v27[v33] = v73;

  v82 = *&v27[v33];
  if (v82)
  {
    v83 = v82;
    v84 = String._bridgeToObjectiveC()();
    v106, v85, v86, v87, v88, v89, v90, v91;
    [v83 setText:v84];
  }

  else
  {
    v106, v75, v76, v77, v78, v79, v80, v81;
  }

  *&v27[OBJC_IVAR____TtC11Diagnostics10PromptView_actions] = &_swiftEmptyArrayStorage;
  *&v27[OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView] = 0;
  v27[OBJC_IVAR____TtC11Diagnostics10PromptView_type] = 0;
  [*&v27[v107] setSpacing:20.0];
  [*&v27[v105] setSpacing:20.0];
  v109.receiver = v27;
  v109.super_class = v108;
  v92 = objc_msgSendSuper2(&v109, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v93 = [objc_opt_self() monospacedDigitSystemFontOfSize:16.0 weight:UIFontWeightRegular];
  v92[OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned] = 1;
  sub_1000A02DC();
  v94 = *&v92[OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel];
  if (v93)
  {
    if (v94)
    {
      v95 = objc_opt_self();
      v96 = v94;
      v97 = v93;
      v98 = [v95 defaultMetrics];
      v99 = [v98 scaledFontForFont:v97];

      [v96 setFont:v99];
    }
  }

  else
  {
    v100 = v94;
  }

  v101 = *&v92[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler];
  if (v101)
  {
    v102 = *&v92[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler + 8];

    v101(v103);

    sub_10003C52C(v101, v102);
  }

  else
  {
  }

  sub_1000A21F4();
  sub_1000A19FC();

  return v92;
}

_BYTE *sub_1000A9D48()
{
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000022, 0x800000010018F470);
  v1 = v0;
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000021, 0x800000010018F4A0);
  v56 = v2;
  v57 = type metadata accessor for PromptView();
  v3 = objc_allocWithZone(v57);
  v3[OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned] = 1;
  v4 = OBJC_IVAR____TtC11Diagnostics10PromptView_promptStackView;
  *&v3[v4] = [objc_allocWithZone(UIStackView) init];
  v5 = OBJC_IVAR____TtC11Diagnostics10PromptView_footerStackView;
  *&v3[v5] = [objc_allocWithZone(UIStackView) init];
  *&v3[OBJC_IVAR____TtC11Diagnostics10PromptView_promptFooterConstraint] = 0;
  v6 = OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel;
  *&v3[OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel] = 0;
  *&v3[OBJC_IVAR____TtC11Diagnostics10PromptView_subtitleLabel] = 0;
  v7 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView;
  *&v3[v7] = [objc_allocWithZone(UIStackView) init];
  v8 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoProgressIndicatorView;
  *&v3[v8] = [objc_allocWithZone(UIProgressView) init];
  v9 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoActivityIndicatorView;
  *&v3[v9] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v10 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel;
  *&v3[OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel] = 0;
  v11 = &v3[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler];
  *v11 = 0;
  v11[1] = 0;
  v3[OBJC_IVAR____TtC11Diagnostics10PromptView_hasExplicitHeight] = 0;
  v12 = [objc_allocWithZone(UILabel) init];
  v13 = *&v3[v6];
  *&v3[v6] = v12;

  v21 = *&v3[v6];
  if (v21)
  {
    v22 = v21;
    v23 = String._bridgeToObjectiveC()();
    v1, v24, v25, v26, v27, v28, v29, v30;
    [v22 setText:v23];
  }

  else
  {
    v1, v14, v15, v16, v17, v18, v19, v20;
  }

  v31 = [objc_allocWithZone(UILabel) init];
  v32 = *&v3[v10];
  *&v3[v10] = v31;

  v40 = *&v3[v10];
  if (v40)
  {
    v41 = v40;
    v42 = String._bridgeToObjectiveC()();
    v56, v43, v44, v45, v46, v47, v48, v49;
    [v41 setText:v42];
  }

  else
  {
    v56, v33, v34, v35, v36, v37, v38, v39;
  }

  *&v3[OBJC_IVAR____TtC11Diagnostics10PromptView_actions] = &_swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView] = 0;
  v3[OBJC_IVAR____TtC11Diagnostics10PromptView_type] = 0;
  [*&v3[v4] setSpacing:20.0];
  [*&v3[v5] setSpacing:20.0];
  v58.receiver = v3;
  v58.super_class = v57;
  v50 = objc_msgSendSuper2(&v58, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v50[OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned] = 1;
  sub_1000A02DC();
  v51 = *&v50[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler];
  if (v51)
  {
    v52 = *&v50[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler + 8];
    v53 = *&v50[OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel];
    v54 = sub_10003E418(v51, v52);
    v51(v54);

    sub_10003C52C(v51, v52);
  }

  sub_1000A21F4();
  sub_1000A19FC();
  return v50;
}

id sub_1000AA104(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

double sub_1000AA164(char *a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    v9 = Session.requiresDeviceSelection.getter();
  }

  else
  {
    v9 = 0;
  }

  if ((v4 - 1) > 1u)
  {
    if (SessionManager.currentSession.getter())
    {
      Session.cancel()();
    }

    if (qword_1001FC6C8 != -1)
    {
      swift_once();
    }

    sub_100066800(3, 0);
    v25 = sub_1000AA0E4();
    sub_100125854(1, 0, 1, 0, 0);
  }

  else
  {
    v10 = *&a1[OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_consentHandles];
    if (v10[2])
    {
      v11 = v10[4];
      v12 = v10[5];
      objc_allocWithZone(type metadata accessor for DetailedConsentNavigationController());

      v13 = sub_10004520C(v11, v12);
    }

    else
    {
      if ((v9 & 1) == 0)
      {
        v18 = [a1 buttonTray];
        [v18 showButtonsBusy];

        v19 = type metadata accessor for TaskPriority();
        (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
        type metadata accessor for MainActor();
        v20 = v3;
        v21 = a1;
        v22 = static MainActor.shared.getter();
        v23 = swift_allocObject();
        *(v23 + 16) = v22;
        *(v23 + 24) = &protocol witness table for MainActor;
        *(v23 + 32) = v20;
        *(v23 + 40) = v4;
        *(v23 + 48) = v21;
        sub_1000539D8(0, 0, v8, &unk_100181F88, v23);

        return result;
      }

      v14 = objc_allocWithZone(type metadata accessor for DeviceSelector());
      v13 = sub_1000BDA58(v4);
    }

    v15 = v13;
    v25 = sub_1000AA0E4();
    [v25 showViewController:v15 sender:v3];
  }

  v16 = v25;

  return result;
}

uint64_t sub_1000AA498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 112) = a5;
  *(v6 + 24) = a4;
  *(v6 + 32) = a6;
  v7 = type metadata accessor for Session.CollectOptions();
  *(v6 + 40) = v7;
  *(v6 + 48) = *(v7 - 8);
  *(v6 + 56) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v6 + 64) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 72) = v9;
  *(v6 + 80) = v8;

  return _swift_task_switch(sub_1000AA590, v9, v8);
}

uint64_t sub_1000AA590(__n128 a1)
{
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  v2 = SessionManager.currentSession.getter();
  *(v1 + 88) = v2;
  if (v2)
  {
    if (*(v1 + 112) == 1)
    {
      static Session.CollectOptions.upload.getter();
    }

    else
    {
      *(v1 + 16) = &_swiftEmptyArrayStorage;
      sub_1000ACFA4();
      sub_10003C49C(&unk_1001FFE30, &unk_100181F90);
      sub_10005C71C(&qword_100202940, &unk_1001FFE30, &unk_100181F90, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
    }

    v11 = swift_task_alloc();
    *(v1 + 96) = v11;
    *v11 = v1;
    v11[1] = sub_1000AA814;
    v12 = *(v1 + 56);

    return Session.startCollectingFromLocalDevice(options:)(v12);
  }

  else
  {

    sub_10008CDB0();
    v3 = swift_allocError();
    swift_willThrow();
    v5 = *(v1 + 24);
    v4 = *(v1 + 32);
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = v5;
    v8 = sub_1000B99C8(v3, sub_1000ACF9C, v6);

    [v4 presentViewController:v8 animated:1 completion:0];

    v9 = *(v1 + 8);

    return v9();
  }
}

uint64_t sub_1000AA814()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_1000AAA18;
  }

  else
  {
    v5 = sub_1000AA950;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000AA950()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];

  v4 = sub_1000AA0E4();
  sub_100125854(1, 0, 1, 0, 0);

  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000AAA18()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];

  (*(v3 + 8))(v1, v2);
  v4 = v0[13];
  v6 = v0[3];
  v5 = v0[4];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = v6;
  v9 = sub_1000B99C8(v4, sub_1000ACF9C, v7);

  [v5 presentViewController:v9 animated:1 completion:0];

  v10 = v0[1];

  return v10();
}

void sub_1000AAB2C(__n128 a1)
{
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    Session.cancel()();
  }

  v1 = sub_1000AA0E4();
  sub_100125854(1, 0, 1, 0, 0);
}

id sub_1000AABE4(__n128 a1)
{
  v2 = OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell__completeUploadConsentController;
  v3 = *(v1 + OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell__completeUploadConsentController);
  if (!v3)
  {
    v5 = v1;
    if (qword_1001FC7E8 != -1)
    {
      swift_once();
    }

    if (SessionManager.currentSession.getter())
    {
      if (Session.requiresFollowUpQuestion.getter())
      {
        Session.status.getter();
        v6 = SessionStatus.rawValue.getter();
        v7 = SessionStatus.rawValue.getter();

        if (v6 == v7)
        {
          v8 = sub_1000AAD20();
LABEL_11:
          v9 = v8;
          v10 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v8];
          [v10 setModalPresentationStyle:0];

          v11 = *(v5 + v2);
          *(v5 + v2) = v10;
          v4 = v10;

          v3 = 0;
          goto LABEL_12;
        }
      }

      else
      {
      }
    }

    v8 = sub_1000ABD58();
    goto LABEL_11;
  }

  v4 = *(v1 + OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell__completeUploadConsentController);
LABEL_12:
  v12 = v3;
  return v4;
}

char *sub_1000AAD20()
{
  v1 = v0;
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000002DLL, 0x800000010018F260);
  v3 = v2;
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    Session.collectionDeferralDuration.getter();
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = sub_10006C57C(v5);
  if (v6 != 4)
  {
    v7 = v6;
    v8 = sub_10006C470(v5);
    if (v9)
    {
      v16 = v8;
      v17 = v9;
      v3, v9, v10, v11, v12, v13, v14, v15;
      if (v7 > 1u)
      {
        if (v7 == 2)
        {
          v17, v18, v19, v20, v21, v22, v23, v24;
          v25 = "_FOLLOWUP_QUESTION_BODY_HOURS";
          v26 = 0xD00000000000002CLL;
          goto LABEL_13;
        }

        sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_10017EC00;
        *(v28 + 56) = &type metadata for String;
        *(v28 + 64) = sub_10003DFBC();
        *(v28 + 32) = v16;
        *(v28 + 40) = v17;
        v30 = 0x800000010018F2F0;
        v31 = v28;
        v29 = 0xD00000000000002DLL;
      }

      else
      {
        if (!v7)
        {
          v17, v18, v19, v20, v21, v22, v23, v24;
          v25 = "_FOLLOWUP_QUESTION_BODY_MINUTES";
          v26 = 0xD00000000000002ELL;
LABEL_13:
          sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v26, (v25 | 0x8000000000000000));
          v3 = v27;
          goto LABEL_17;
        }

        sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_10017EC00;
        *(v28 + 56) = &type metadata for String;
        *(v28 + 64) = sub_10003DFBC();
        *(v28 + 32) = v16;
        *(v28 + 40) = v17;
        v29 = 0xD00000000000002FLL;
        v30 = 0x800000010018F350;
        v31 = v28;
      }

      sub_1000494C8(0, 0, v31, v29, v30);
      v3 = v32;
      v28, v32, v33, v34, v35, v36, v37, v38;
    }
  }

LABEL_17:
  type metadata accessor for ConsentNoticeViewController();
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000001FLL, 0x800000010018BEE0);
  v40 = v39;
  v41 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v42 = String._bridgeToObjectiveC()();
  v40, v43, v44, v45, v46, v47, v48, v49;
  v50 = String._bridgeToObjectiveC()();
  v3, v51, v52, v53, v54, v55, v56, v57;
  v58 = [v41 initWithTitle:v42 detailText:v50 symbolName:0];

  v59 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000026, 0x800000010018F290);
  v60 = &v58[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryActionTitle];
  v61 = *&v58[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryActionTitle + 8];
  *v60 = v59;
  v60[1] = v62;
  v61, v62, v63, v64, v65, v66, v67, v68;
  v69 = swift_allocObject();
  *(v69 + 16) = v1;
  *(v69 + 24) = v58;
  v70 = &v58[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryAction];
  v71 = *&v58[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryAction];
  v72 = *&v58[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryAction + 8];
  *v70 = sub_1000AC980;
  v70[1] = v69;
  v73 = v1;
  v74 = v58;
  sub_10003C52C(v71, v72);
  v75 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000025, 0x800000010018F2C0);
  v76 = &v74[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_secondaryActionTitle];
  v77 = *&v74[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_secondaryActionTitle + 8];
  *v76 = v75;
  v76[1] = v78;
  v77, v78, v79, v80, v81, v82, v83, v84;
  v85 = swift_allocObject();
  *(v85 + 16) = v74;
  *(v85 + 24) = v73;
  v86 = &v74[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_secondaryAction];
  v87 = *&v74[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_secondaryAction];
  v88 = *&v74[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_secondaryAction + 8];
  *v86 = sub_1000AC988;
  v86[1] = v85;
  v89 = v73;
  v90 = v74;
  sub_10003C52C(v87, v88);
  v91 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v92 = swift_allocObject();
  *(v92 + 16) = v91;
  *(v92 + 24) = v90;
  v93 = &v90[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_cancelAction];
  v94 = *&v90[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_cancelAction];
  v95 = *&v90[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_cancelAction + 8];
  *v93 = sub_1000AC9D0;
  v93[1] = v92;
  v96 = v90;

  v97 = sub_10003C52C(v94, v95);
  v98 = *v93;
  v99 = [v96 navigationItem];
  v100 = v99;
  if (v98)
  {
    v101 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v96 action:"cancelButtonPressed:"];
    [v100 setLeftBarButtonItem:v101];

    v100 = v101;
  }

  else
  {
    [v99 setLeftBarButtonItem:0];
  }

  return v96;
}

void sub_1000AB2B4(uint64_t a1, void *a2, __n128 a3)
{
  v5 = sub_1000ABD58();
  v5[OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_activationReason] = 0;

  v6 = [a2 navigationController];
  if (v6)
  {
    v7 = v6;
    [v6 pushViewController:*(a1 + OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___reviewFilesController) animated:1];
  }
}

double sub_1000AB358(void *a1, void *a2)
{
  v4 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &v15 - v6;
  v8 = [a1 buttonTray];
  [v8 showButtonsBusy];

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  type metadata accessor for MainActor();
  v10 = a2;
  v11 = a1;
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v10;
  v13[5] = v11;
  sub_1000539D8(0, 0, v7, &unk_100181F78, v13);

  return result;
}

uint64_t sub_1000AB4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_1000AB558, v7, v6);
}

uint64_t sub_1000AB558(__n128 a1)
{
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  v2 = SessionManager.currentSession.getter();
  v1[7] = v2;
  if (v2)
  {
    v3 = swift_task_alloc();
    v1[8] = v3;
    *v3 = v1;
    v3[1] = sub_1000AB720;

    return Session.issueDidNotOccur()();
  }

  else
  {

    sub_10008CDB0();
    v4 = swift_allocError();
    swift_willThrow();
    v6 = v1[2];
    v5 = v1[3];
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v8 = v6;
    v9 = sub_1000B99C8(v4, sub_1000ACE80, v7);

    [v5 presentViewController:v9 animated:1 completion:0];

    v10 = v1[1];

    return v10();
  }
}

uint64_t sub_1000AB720(char a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = *(v4 + 40);
    v6 = *(v4 + 48);
    v7 = sub_1000AB9A4;
  }

  else
  {
    *(v4 + 80) = a1 & 1;
    v5 = *(v4 + 40);
    v6 = *(v4 + 48);
    v7 = sub_1000AB84C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1000AB84C()
{
  v1 = *(v0 + 80);

  v3 = *(v0 + 16);
  if (v1 == 1)
  {
    v4 = sub_1000AABE4(v2);
    sub_100125854(1, 0, 1, 0, 0);

    v5 = *(v3 + OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell__completeUploadConsentController);
    *(v3 + OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell__completeUploadConsentController) = 0;
  }

  else
  {
    v6 = *(v0 + 24);
    v7 = sub_1000ABD58();
    v7[OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_activationReason] = 1;

    v8 = [v6 navigationController];
    if (v8)
    {
      v9 = v8;
      v10 = *(*(v0 + 16) + OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___reviewFilesController);
      [v9 pushViewController:v10 animated:1];
    }

    else
    {
    }
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1000AB9A4()
{

  v1 = v0[9];
  v3 = v0[2];
  v2 = v0[3];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = v3;
  v6 = sub_1000B99C8(v1, sub_1000ACE80, v4);

  [v2 presentViewController:v6 animated:1 completion:0];

  v7 = v0[1];

  return v7();
}

void sub_1000ABA94(uint64_t a1, __n128 a2)
{
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    Session.cancel()();
  }

  v4 = sub_1000AABE4(v3);
  sub_100125854(1, 0, 1, 0, 0);

  v5 = *(a1 + OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell__completeUploadConsentController);
  *(a1 + OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell__completeUploadConsentController) = 0;
}

void sub_1000ABB4C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = v4;
    v7 = [a2 navigationItem];
    v8 = [v7 leftBarButtonItem];

    v9 = sub_1000BC190(sub_1000AC9D8, v5, 0, 0, v8);

    [a2 presentViewController:v9 animated:1 completion:0];
  }
}

void sub_1000ABC64(__n128 a1, uint64_t a2, uint64_t a3)
{
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    Session.cancel()();
  }

  if (qword_1001FC6C8 != -1)
  {
    swift_once();
  }

  sub_100066800(3, 0);
  v5 = sub_1000AABE4(v4);
  sub_100125854(1, 0, 1, 0, 0);

  v6 = *(a3 + OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell__completeUploadConsentController);
  *(a3 + OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell__completeUploadConsentController) = 0;
}

char *sub_1000ABD58()
{
  v1 = OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___reviewFilesController;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___reviewFilesController];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___reviewFilesController];
  }

  else
  {
    type metadata accessor for FileReviewingTableViewController();
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v5 = v0;
    v6 = v4;
    v7 = v0;
    v8 = sub_100089D44(sub_1000AC938, v6);
    v9 = *&v0[v1];
    *&v7[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void sub_1000ABE04(uint64_t a1, __n128 a2)
{
  v3 = sub_1000AABE4(a2);
  sub_100125854(1, 0, 1, 0, 0);

  v4 = *(a1 + OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell__completeUploadConsentController);
  *(a1 + OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell__completeUploadConsentController) = 0;
}

void sub_1000ABE6C()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_10003E110(0, &qword_1001FD3F0, UIScene_ptr);
  sub_1000AC8BC(&qword_1001FD3F8, &qword_1001FD3F0, UIScene_ptr, &protocol conformance descriptor for NSObject);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_1001256F8(v2);
  v2, v4, v5, v6, v7, v8, v9, v10;
  if (!v3)
  {
    return;
  }

  v11 = [v3 delegate];

  if (!v11)
  {
    return;
  }

  type metadata accessor for AppDelegate();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    goto LABEL_22;
  }

  v13 = OBJC_IVAR____TtC11Diagnostics11AppDelegate_enhancedLoggingLaunchActions;
  v14 = *(v12 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_enhancedLoggingLaunchActions);
  if (!v14 || !*(v14 + 16))
  {
    goto LABEL_22;
  }

  v15 = v12;
  Hasher.init(_seed:)();

  String.hash(into:)();
  v16 = Hasher._finalize()();
  v24 = -1 << *(v14 + 32);
  v25 = v16 & ~v24;
  if (((*(v14 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
  {
LABEL_11:
    v14, v17, v18, v19, v20, v21, v22, v23;
LABEL_22:

    swift_unknownObjectRelease();
    return;
  }

  v26 = ~v24;
  while (*(*(v14 + 48) + v25) != 1)
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
    0xE000000000000000, v28, v29, v30, v31, v32, v33, v34;
    if (v27)
    {
      goto LABEL_14;
    }

    v25 = (v25 + 1) & v26;
    if (((*(v14 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v14, v17, v18, v19, v20, v21, v22, v23;
  v14 = 0xE600000000000000;
LABEL_14:
  v14, v17, v18, v19, v20, v21, v22, v23;
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (!SessionManager.currentSession.getter())
  {
    goto LABEL_22;
  }

  Session.status.getter();

  v35 = SessionStatus.rawValue.getter();
  if (v35 != SessionStatus.rawValue.getter())
  {
    v37 = SessionStatus.rawValue.getter();
    if (v37 != SessionStatus.rawValue.getter())
    {
      goto LABEL_22;
    }
  }

  v38 = sub_1000AABE4(v36);
  [v38 scheduleModalPresentationWithPriority:0 animated:1 presentationCompletion:0];

  v39 = *(v15 + v13);
  *(v15 + v13) = 0;
  swift_unknownObjectRelease();

  v39, v40, v41, v42, v43, v44, v45, v46;
}

id sub_1000AC2B8(uint64_t a1, uint64_t a2, DARootViewController *a3)
{
  *&v3[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell_formSheetXScaleMultiplier] = 0x3FF0000000000000;
  *&v3[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell_formSheetYScaleMultiplier] = 0x3FF3333333333333;
  *&v3[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell_subscribers] = &_swiftEmptySetSingleton;
  *&v3[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell_viewQueue] = &_swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___persistentEnrollingPrompt] = 0;
  *&v3[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___persistentEnrollFinishedPrompt] = 0;
  *&v3[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___persistentRunningPrompt] = 0;
  *&v3[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___persistentFinishedPrompt] = 0;
  *&v3[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___persistentUploadingPrompt] = 0;
  *&v3[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___persistentUnenrollingPrompt] = 0;
  *&v3[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___enhancedLoggingConsentNavigationController] = 0;
  *&v3[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell__completeUploadConsentController] = 0;
  *&v3[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___reviewFilesController] = 0;
  if (a3)
  {
    v6 = String._bridgeToObjectiveC()();
    a3, v7, v8, v9, v10, v11, v12, v13;
  }

  else
  {
    v6 = 0;
  }

  v16.receiver = v3;
  v16.super_class = type metadata accessor for CardViewPersistentCell();
  v14 = objc_msgSendSuper2(&v16, "initWithStyle:reuseIdentifier:", a1, v6);

  return v14;
}

id sub_1000AC440(void *a1)
{
  *&v1[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell_formSheetXScaleMultiplier] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell_formSheetYScaleMultiplier] = 0x3FF3333333333333;
  *&v1[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell_subscribers] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell_viewQueue] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___persistentEnrollingPrompt] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___persistentEnrollFinishedPrompt] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___persistentRunningPrompt] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___persistentFinishedPrompt] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___persistentUploadingPrompt] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___persistentUnenrollingPrompt] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___enhancedLoggingConsentNavigationController] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell__completeUploadConsentController] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___reviewFilesController] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CardViewPersistentCell();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

void sub_1000AC580(uint64_t a1, const char *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell_subscribers), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell_viewQueue), v9, v10, v11, v12, v13, v14, v15;

  v16 = *(v8 + OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___reviewFilesController);
}

id sub_1000AC650(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CardViewPersistentCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1000AC790@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isIndeterminate];
  *a2 = result;
  return result;
}

uint64_t sub_1000AC7C4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7, v1);
}

id sub_1000AC810@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fractionCompleted];
  *a2 = v4;
  return result;
}

uint64_t sub_1000AC84C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_1001FE8B8, &unk_100180B20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AC8BC(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10003E110(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000AC900()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

uint64_t sub_1000AC940()
{

  return _swift_deallocObject(v0, 32, 7, v1);
}

uint64_t sub_1000AC990()
{

  return _swift_deallocObject(v0, 32, 7, v1);
}

id sub_1000AC9E0()
{
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000001FLL, 0x800000010018F3B0);
  v1 = v0;
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    Session.collectionDeferralDuration.getter();
    v3 = v2;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = sub_10006C57C(v3);
  if (v4 != 4)
  {
    v5 = v4;
    v6 = sub_10006C470(v3);
    if (v7)
    {
      v14 = v6;
      v15 = v7;
      v1, v7, v8, v9, v10, v11, v12, v13;
      if (v5 > 1u)
      {
        if (v5 == 2)
        {
          v15, v16, v17, v18, v19, v20, v21, v22;
          v23 = "ENHANCED_LOGGING_BODY_HOURS";
          v24 = 0xD00000000000001ALL;
          goto LABEL_13;
        }

        v26 = "ENHANCED_LOGGING_TITLE";
        sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_10017EC00;
        *(v27 + 56) = &type metadata for String;
        *(v27 + 64) = sub_10003DFBC();
        *(v27 + 32) = v14;
        *(v27 + 40) = v15;
        v28 = 0xD00000000000001BLL;
      }

      else
      {
        if (!v5)
        {
          v15, v16, v17, v18, v19, v20, v21, v22;
          v23 = "ENHANCED_LOGGING_BODY_MINUTES";
          v24 = 0xD00000000000001CLL;
LABEL_13:
          sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v24, (v23 | 0x8000000000000000));
          v1 = v25;
          goto LABEL_17;
        }

        v26 = "ENHANCED_LOGGING_BODY_HOUR";
        sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_10017EC00;
        *(v27 + 56) = &type metadata for String;
        *(v27 + 64) = sub_10003DFBC();
        *(v27 + 32) = v14;
        *(v27 + 40) = v15;
        v28 = 0xD00000000000001DLL;
      }

      sub_1000494C8(0, 0, v27, v28, (v26 | 0x8000000000000000));
      v1 = v29;
      v27, v29, v30, v31, v32, v33, v34, v35;
    }
  }

LABEL_17:
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000016, 0x800000010018F3D0);
  v37 = v36;
  v38 = objc_allocWithZone(type metadata accessor for EnhancedLoggingConsentViewController());
  v39 = String._bridgeToObjectiveC()();
  v37, v40, v41, v42, v43, v44, v45, v46;
  v47 = String._bridgeToObjectiveC()();
  v1, v48, v49, v50, v51, v52, v53, v54;
  v55 = [v38 initWithTitle:v39 detailText:v47 symbolName:0];

  v56 = v55;
  [v56 formSheetSize];
  v58 = v57;
  v60 = v59;
  CGAffineTransformMakeScale(&v64, 1.0, 1.2);
  v65.width = v58;
  v65.height = v60;
  v61 = CGSizeApplyAffineTransform(v65, &v64);
  [v56 setPreferredContentSize:{v61.width, v61.height}];
  v62 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v56];

  [v62 setModalPresentationStyle:0];
  return v62;
}

uint64_t sub_1000ACD78()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7, v1);
}

uint64_t sub_1000ACDC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000494BC;

  return sub_1000AB4C0(a1, v4, v5, v7, v6);
}

uint64_t sub_1000ACE88()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7, v1);
}

uint64_t sub_1000ACED0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 40);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003DEC8;

  return sub_1000AA498(a1, v4, v5, v6, v8, v7);
}

unint64_t sub_1000ACFA4()
{
  result = qword_100202930;
  if (!qword_100202930)
  {
    type metadata accessor for Session.CollectOptions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202930);
  }

  return result;
}

void sub_1000ACFFC(__n128 a1)
{
  v1 = sub_1000AABE4(a1);
  [v1 scheduleModalPresentationWithPriority:0 animated:1 presentationCompletion:0];
}

uint64_t sub_1000AD060(uint64_t result, DARootViewController *a2)
{
  if (result < 0)
  {
    __break(1u);
LABEL_23:
    v18 = result;
    v5 = _CocoaArrayWrapper.endIndex.getter();
    result = v18;
    v6 = -v5;
    if (!__OFSUB__(0, v5))
    {
      goto LABEL_4;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v3 = a2;
  v4 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_23;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6 = -v5;
  if (__OFSUB__(0, v5))
  {
    goto LABEL_25;
  }

LABEL_4:
  v7 = -result;
  if (v6 > 0 || v6 <= v7)
  {
    v8 = v5 - result;
    if (__OFADD__(v5, v7))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v8 < 0)
    {
LABEL_29:
      __break(1u);
      return result;
    }

    if (!v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    if (!v4)
    {
LABEL_7:
      result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_13;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
LABEL_13:
  if (result < v8)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if ((v3 & 0xC000000000000001) != 0 && v8)
  {
    sub_10003E110(0, &qword_1001FF090, UIView_ptr);

    v9 = 0;
    do
    {
      v10 = v9 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v9);
      v9 = v10;
    }

    while (v8 != v10);
    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }
  }

  else
  {

    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v3, v11, v12, v13, v14, v15, v16, v17;
  return _CocoaArrayWrapper.subscript.getter();
}

id sub_1000AD1F8()
{
  result = [objc_opt_self() defaultManager];
  qword_1001FF740 = result;
  return result;
}

uint64_t sub_1000AD234()
{
  v1 = OBJC_IVAR____TtC11Diagnostics14ReviewableFile____lazy_storage___fileExists;
  LODWORD(v2) = *(v0 + OBJC_IVAR____TtC11Diagnostics14ReviewableFile____lazy_storage___fileExists);
  if (v2 == 2)
  {
    if (qword_1001FC758 != -1)
    {
      swift_once();
    }

    v2 = qword_1001FF740;
    v3 = v0;
    object = URL.path(percentEncoded:)(0)._object;
    v5 = String._bridgeToObjectiveC()();
    object, v6, v7, v8, v9, v10, v11, v12;
    LOBYTE(v2) = [v2 fileExistsAtPath:v5 isDirectory:0];

    *(v3 + v1) = v2;
  }

  return v2 & 1;
}

uint64_t sub_1000AD300()
{
  v1 = OBJC_IVAR____TtC11Diagnostics14ReviewableFile____lazy_storage___isDirectory;
  v2 = *(v0 + OBJC_IVAR____TtC11Diagnostics14ReviewableFile____lazy_storage___isDirectory);
  if (v2 == 2)
  {
    v15 = 0;
    if (qword_1001FC758 != -1)
    {
      swift_once();
    }

    v3 = qword_1001FF740;
    v4 = v0;
    object = URL.path(percentEncoded:)(0)._object;
    v6 = String._bridgeToObjectiveC()();
    object, v7, v8, v9, v10, v11, v12, v13;
    [v3 fileExistsAtPath:v6 isDirectory:&v15];

    LOBYTE(v2) = v15;
    *(v4 + v1) = v15;
  }

  return v2 & 1;
}

void sub_1000AD404()
{
  static UIListContentConfiguration.subtitleCell()();
  v0 = objc_opt_self();
  v1 = [v0 preferredFontForTextStyle:UIFontTextStyleBody];
  v2 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v2(v41, 0);
  v3 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.numberOfLines.setter();
  v3(v41, 0);
  v4 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.lineBreakMode.setter();
  v4(v41, 0);
  v5 = [v0 preferredFontForTextStyle:UIFontTextStyleCaption1];
  v6 = UIListContentConfiguration.secondaryTextProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v6(v41, 0);
  v7 = [objc_opt_self() configurationWithScale:3];
  v8 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.preferredSymbolConfiguration.setter();
  v8(v41, 0);
  if ((sub_1000AD234() & 1) == 0)
  {
    v34 = String._bridgeToObjectiveC()();
    v35 = [objc_opt_self() systemImageNamed:v34];

    UIListContentConfiguration.image.setter();
    sub_1000AECA8();
    UIListContentConfiguration.text.setter();
    sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000020, 0x800000010018F7C0);
    UIListContentConfiguration.secondaryText.setter();
    if (_UISolariumEnabled())
    {
      return;
    }

    goto LABEL_14;
  }

  v9 = [objc_allocWithZone(NSByteCountFormatter) init];
  [v9 setCountStyle:0];
  [v9 setAllowedUnits:0xFFFFLL];
  [v9 setAdaptive:1];
  if (qword_1001FC758 != -1)
  {
    swift_once();
  }

  v10 = qword_1001FF740;
  object = URL.path(percentEncoded:)(0)._object;
  v12 = String._bridgeToObjectiveC()();
  object, v13, v14, v15, v16, v17, v18, v19;
  v20 = [v10 displayNameAtPath:v12];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (sub_1000AD300())
  {
    v21 = "document.circle.fill";
  }

  else
  {
    v21 = "REMOTE_FILE_TEXT";
  }

  v22 = String._bridgeToObjectiveC()();
  (v21 | 0x8000000000000000), v23, v24, v25, v26, v27, v28, v29;
  v30 = [objc_opt_self() systemImageNamed:v22];

  UIListContentConfiguration.image.setter();
  UIListContentConfiguration.text.setter();
  sub_1000ADE38();
  if ((v31 & 1) == 0)
  {
    isa = Int64._bridgeToObjectiveC()().super.super.isa;
    v33 = [v9 stringForObjectValue:isa];

    if (v33)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    UIListContentConfiguration.secondaryText.setter();
  }

  if ((_UISolariumEnabled() & 1) == 0)
  {
LABEL_14:
    v36 = objc_opt_self();
    v37 = [v36 currentDevice];
    v38 = [v37 userInterfaceIdiom];

    if (v38 != 1)
    {
      v39 = [v36 currentDevice];
      v40 = [v39 userInterfaceIdiom];

      if (v40 != 6)
      {
        UIListContentConfiguration.image.setter();
      }
    }
  }
}

void sub_1000AD8E4()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v95 = *(v2 - 8);
  __chkstk_darwin(v2);
  v94 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v93 - v5;
  __chkstk_darwin(v7);
  v9 = &v93 - v8;
  if (URL.pathExtension.getter() == 31335 && v10 == 0xE200000000000000)
  {
    v10, v10, v11, v12, v13, v14, v15, v16;
  }

  else
  {
    v18 = v10;
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v18, v20, v21, v22, v23, v24, v25, v26;
    if ((v19 & 1) == 0)
    {
LABEL_13:
      if (URL.pathExtension.getter() == 0x6968637261676F6CLL && v47 == 0xEA00000000006576)
      {
        0xEA00000000006576, 0xEA00000000006576, v48, v49, v50, v51, v52, v53;
LABEL_26:
        sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
        v76 = swift_allocObject();
        *(v76 + 16) = xmmword_10017EBF0;
        URL._bridgeToObjectiveC()(&unk_10017E000);
        *(v76 + 32) = v77;
        v78 = objc_allocWithZone(QLPreviewController);
        sub_10003C49C(&qword_1001FF8E8, &unk_100182070);
        isa = Array._bridgeToObjectiveC()().super.isa;
        v76, v80, v81, v82, v83, v84, v85, v86;
        [v78 initWithPreviewItems:isa];

        return;
      }

      v65 = v47;
      v66 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v65, v67, v68, v69, v70, v71, v72, v73;
      if ((v66 & 1) != 0 || (sub_1000AD234() & 1) == 0 || (sub_1000AD300() & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  URL.deletingPathExtension()();
  v27 = URL.pathExtension.getter();
  v29 = v28;
  v30 = *(v95 + 8);
  v30(v9, v2);
  if (v27 == 7496052 && v29 == 0xE300000000000000)
  {
    v29, v31, v32, v33, v34, v35, v36, v37;
  }

  else
  {
    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v29, v40, v41, v42, v43, v44, v45, v46;
    if ((v39 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v54 = objc_opt_self();
  URL._bridgeToObjectiveC()(v55);
  v57 = v56;
  URL.deletingLastPathComponent()();
  URL._bridgeToObjectiveC()(v58);
  v60 = v59;
  v30(v6, v2);
  LODWORD(v54) = [v54 extractArchive:v57 toDirectory:v60];

  if (v54)
  {
    if (qword_1001FC758 != -1)
    {
      swift_once();
    }

    v61 = qword_1001FF740;
    URL._bridgeToObjectiveC()(&OBJC_IVAR____TtC11Diagnostics12SuiteManager_deviceManager);
    v63 = v62;
    v96 = 0;
    LODWORD(v61) = [v61 removeItemAtURL:v62 error:&v96];

    if (v61)
    {
      v64 = v96;
    }

    else
    {
      v87 = v96;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_1000AF424();
      v88 = static OS_os_log.default.getter();
      v89 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Failed to delete tar from extracted cosysdiagnose", 49, 2, &_mh_execute_header, v88, v89, &_swiftEmptyArrayStorage);
    }

    v90 = v94;
    URL.deletingPathExtension()();
    URL.deletingPathExtension()();
    v30(v90, v2);
    LOBYTE(v90) = *(v1 + OBJC_IVAR____TtC11Diagnostics14ReviewableFile_isOnRemoteDevice);
    type metadata accessor for ReviewableFile(0);
    v91 = swift_allocObject();
    *(v91 + OBJC_IVAR____TtC11Diagnostics14ReviewableFile____lazy_storage___fileExists) = 2;
    *(v91 + OBJC_IVAR____TtC11Diagnostics14ReviewableFile____lazy_storage___isDirectory) = 2;
    (*(v95 + 32))(v91 + OBJC_IVAR____TtC11Diagnostics14ReviewableFile_url, v6, v2);
    *(v91 + OBJC_IVAR____TtC11Diagnostics14ReviewableFile_isOnRemoteDevice) = v90;
    v92 = objc_allocWithZone(type metadata accessor for FileBrowsingTableViewController());
    v75 = v91;
    goto LABEL_29;
  }

LABEL_25:
  v74 = objc_allocWithZone(type metadata accessor for FileBrowsingTableViewController());

LABEL_29:
  sub_10005A7F8(v75, 0, 0);
}

uint64_t sub_1000ADE38()
{
  v1 = v0;
  v2 = sub_10003C49C(&qword_1001FDF40, &qword_10017F858);
  __chkstk_darwin(v2 - 8);
  v4 = &v81 - v3;
  v5 = type metadata accessor for URL();
  v97 = *(v5 - 8);
  __chkstk_darwin(v5);
  v99 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NSFastEnumerationIterator();
  v100 = *(v7 - 8);
  __chkstk_darwin(v7);
  v102 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10003C49C(&qword_1001FF8D0, &unk_100182060);
  __chkstk_darwin(v9 - 8);
  v11 = &v81 - v10;
  v12 = type metadata accessor for URLResourceValues();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v96 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v81 - v16;
  if ((URL.isFileURL.getter() & 1) == 0)
  {
    return 0;
  }

  v91 = v4;
  v92 = v5;
  v101 = v13;
  v95 = v17;
  v98 = v12;
  v93 = v7;
  v18 = sub_10003C49C(&qword_1001FF8C8, &qword_100182058);
  inited = swift_initStackObject();
  v94 = xmmword_10017EC10;
  *(inited + 16) = xmmword_10017EC10;
  *(inited + 32) = NSURLIsDirectoryKey;
  *(inited + 40) = NSURLFileSizeKey;
  v20 = NSURLIsDirectoryKey;
  v21 = NSURLFileSizeKey;
  sub_10014FB04(inited);
  v23 = v22;
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  v25 = v24;
  swift_arrayDestroy();
  URL.resourceValues(forKeys:)();
  v89 = v1;
  v90 = v18;
  v23, v26, v27, v28, v29, v30, v31, v32;
  v33 = v101;
  v34 = v98;
  (*(v101 + 56))(v11, 0, 1, v98);
  v35 = v95;
  (*(v33 + 32))(v95, v11, v34);
  v36 = URLResourceValues.isDirectory.getter();
  if (v36 == 2 || (v36 & 1) == 0)
  {
    v78 = URLResourceValues.fileSize.getter();
    v80 = v79;
    (*(v101 + 8))(v35, v34);
    if (v80)
    {
      return 0;
    }

    else
    {
      return v78;
    }
  }

  if (qword_1001FC758 != -1)
  {
    swift_once();
  }

  v37 = swift_allocObject();
  *(v37 + 16) = v94;
  *(v37 + 32) = v21;
  *(v37 + 40) = v20;
  v88 = v20;
  v87 = v21;
  v38 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();
  v37, v39, v40, v41, v42, v43, v44, v45;
  v89 = v25;
  if (!v38)
  {
    (*(v101 + 8))(v35, v34);
    return 0;
  }

  v86 = v38;
  NSEnumerator.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (!v103)
  {
    v46 = 0;
LABEL_28:

    (*(v100 + 8))(v102, v93);
    (*(v101 + 8))(v35, v34);
    return v46;
  }

  v46 = 0;
  v47 = (v97 + 7);
  v48 = (v97 + 4);
  v84 = 0x800000010018F730;
  ++v97;
  v82 = (v101 + 8);
  v83 = xmmword_10017EC00;
  v49 = v92;
  v50 = v91;
  while (1)
  {
    v51 = swift_dynamicCast();
    v52 = *v47;
    if (v51)
    {
      break;
    }

    v52(v50, 1, 1, v49);
    sub_10003DD84(v50, &qword_1001FDF40, &qword_10017F858);
LABEL_11:
    NSFastEnumerationIterator.next()();
    if (!v103)
    {
      goto LABEL_28;
    }
  }

  v52(v50, 0, 1, v49);
  v53 = *v48;
  v85 = v48;
  v53(v99, v50, v49);
  v54 = swift_initStackObject();
  *(v54 + 16) = v94;
  v55 = v88;
  *(v54 + 32) = v88;
  v56 = v87;
  *(v54 + 40) = v87;
  v57 = v55;
  v58 = v56;
  sub_10014FB04(v54);
  v60 = v59;
  swift_setDeallocating();
  swift_arrayDestroy();
  v61 = v96;
  URL.resourceValues(forKeys:)();
  v60, v62, v63, v64, v65, v66, v67, v68;
  v69 = URLResourceValues.isDirectory.getter();
  v48 = v85;
  if (v69 == 2 || (v69 & 1) != 0)
  {
    v70 = v61;
    v34 = v98;
    (*v82)(v70, v98);
    (*v97)(v99, v49);
    goto LABEL_11;
  }

  v71 = URLResourceValues.fileSize.getter();
  v72 = v61;
  v74 = v73;
  (*v82)(v72, v98);
  result = (*v97)(v99, v49);
  if (v74)
  {
    v76 = 0;
  }

  else
  {
    v76 = v71;
  }

  v77 = __OFADD__(v46, v76);
  v46 += v76;
  if (!v77)
  {
    v34 = v98;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

DARootViewController *sub_1000AE810()
{
  v0 = type metadata accessor for URL();
  v46 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10003C49C(&qword_1001FDF40, &qword_10017F858);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - v4;
  v6 = type metadata accessor for NSFastEnumerationIterator();
  v45 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 0;
  if (qword_1001FC758 != -1)
  {
    swift_once();
  }

  v9 = qword_1001FF740;
  object = URL.path(percentEncoded:)(0)._object;
  v11 = String._bridgeToObjectiveC()();
  object, v12, v13, v14, v15, v16, v17, v18;
  LODWORD(object) = [v9 fileExistsAtPath:v11 isDirectory:&v47];

  if (!object)
  {
    return &_swiftEmptyArrayStorage;
  }

  if (v47 != 1)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10003C49C(&qword_1001FF8C8, &qword_100182058);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10017EC00;
  *(v19 + 32) = NSURLIsDirectoryKey;
  v20 = NSURLIsDirectoryKey;
  v21 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();
  v19, v22, v23, v24, v25, v26, v27, v28;
  if (!v21)
  {
    return &_swiftEmptyArrayStorage;
  }

  v43 = v21;
  NSEnumerator.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (v48)
  {
    v29 = (v46 + 56);
    v42 = (v46 + 32);
    v44 = &_swiftEmptyArrayStorage;
    do
    {
      v30 = swift_dynamicCast();
      v31 = *v29;
      if (v30)
      {
        v31(v5, 0, 1, v0);
        v32 = *v42;
        (*v42)(v2, v5, v0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v44 = sub_1000D4EA4(0, *&v44->hostAppBundleIdentifier[8] + 1, 1, v44);
        }

        v34 = v44;
        v36 = *&v44->hostAppBundleIdentifier[8];
        v35 = *v44->responder;
        v41 = v36 + 1;
        if (v36 >= v35 >> 1)
        {
          v34 = sub_1000D4EA4((v35 > 1), v41, 1, v44);
        }

        *&v34->hostAppBundleIdentifier[8] = v41;
        v37 = (*(v46 + 80) + 32) & ~*(v46 + 80);
        v44 = v34;
        v40(v34 + v37 + *(v46 + 72) * v36, v2, v0);
      }

      else
      {
        v31(v5, 1, 1, v0);
        sub_10003DD84(v5, &qword_1001FDF40, &qword_10017F858);
      }

      NSFastEnumerationIterator.next()();
    }

    while (v48);
  }

  else
  {
    v44 = &_swiftEmptyArrayStorage;
  }

  (*(v45 + 8))(v8, v6);

  return v44;
}

uint64_t sub_1000AECA8()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = URL.lastPathComponent.getter();
  v6 = v5;
  v86 = v4;
  v87 = v5;
  v85[0] = 46;
  v85[1] = 0xE100000000000000;
  sub_100079A64();
  v7 = StringProtocol.components<A>(separatedBy:)();
  v6, v8, v9, v10, v11, v12, v13, v14;
  v23 = (v7 + 16);
  v22 = *(v7 + 16);
  if (v22)
  {
    v24 = &v23[2 * v22];
    v25 = v24[1];
    v86 = *v24;
    v87 = v25;

    static CharacterSet.decimalDigits.getter();
    StringProtocol.trimmingCharacters(in:)();
    v27 = v26;
    (*(v1 + 8))(v3, v0);
    v25, v28, v29, v30, v31, v32, v33, v34;
    v35 = String.count.getter();
    v27, v36, v37, v38, v39, v40, v41, v42;
    if (v35)
    {
      v7, v43, v44, v45, v46, v47, v48, v49;
      URL.lastPathComponent.getter();
      v51 = v50;
      goto LABEL_9;
    }

    if (*v23)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v53 = *(v7 + 16);
        if (v53)
        {
LABEL_8:
          v54 = v53 - 1;
          v55 = *(v7 + 16 * v54 + 40);
          *(v7 + 16) = v54;
          v55, v43, v44, v45, v46, v47, v48, v49;
          v86 = v7;
          sub_10003C49C(&qword_1001FF8B0, &qword_100182050);
          sub_1000AF3C0();
          BidirectionalCollection<>.joined(separator:)();
          v51 = v56;
          v7, v56, v57, v58, v59, v60, v61, v62;
LABEL_9:
          v63 = objc_opt_self();
          v64 = String._bridgeToObjectiveC()();
          v51, v65, v66, v67, v68, v69, v70, v71;
          v72 = [v63 findEntryForBundleIdentifier:v64];

          if (v72)
          {
            v73 = [v72 displayNameLocalizationKey];
            v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v76 = v75;

            v77 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v74, v76);
            v76, v78, v79, v80, v81, v82, v83, v84;
            return v77;
          }

          return URL.lastPathComponent.getter();
        }

LABEL_15:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_10003B980(v7, v43, v44, v45, v46, v47, v48, v49);
    v7 = result;
    v53 = *(result + 16);
    if (v53)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  v7, v15, v16, v17, v18, v19, v20, v21;
  return URL.lastPathComponent.getter();
}

uint64_t sub_1000AEFBC()
{
  v1 = OBJC_IVAR____TtC11Diagnostics14ReviewableFile_url;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReviewableFile(uint64_t a1)
{
  result = qword_1001FF780;
  if (!qword_1001FF780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000AF0AC(uint64_t a1)
{
  result = type metadata accessor for URL();
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

Swift::Int sub_1000AF150()
{
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  sub_1000AF378(&unk_1001FF8A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000AF1F0(uint64_t a1)
{
  type metadata accessor for URL();
  sub_1000AF378(&unk_1001FF8A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1000AF278(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  sub_1000AF378(&unk_1001FF8A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000AF378(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000AF3C0()
{
  result = qword_1001FF8B8;
  if (!qword_1001FF8B8)
  {
    sub_10003C4E4(&qword_1001FF8B0, &qword_100182050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF8B8);
  }

  return result;
}

unint64_t sub_1000AF424()
{
  result = qword_1001FD6F0;
  if (!qword_1001FD6F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001FD6F0);
  }

  return result;
}

uint64_t sub_1000AF494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
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

uint64_t sub_1000AF564(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
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

uint64_t type metadata accessor for LaunchURL(uint64_t a1)
{
  result = qword_1001FF948;
  if (!qword_1001FF948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000AF668(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_1000AF734(319);
    if (v2 <= 0x3F)
    {
      sub_1000AF7E4();
      if (v3 <= 0x3F)
      {
        sub_1000AF834(319);
        if (v4 <= 0x3F)
        {
          sub_1000AF898();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000AF734(uint64_t a1)
{
  if (!qword_1001FF958)
  {
    sub_1000AF790();
    v1 = type metadata accessor for Set();
    if (!v2)
    {
      atomic_store(v1, &qword_1001FF958);
    }
  }
}

unint64_t sub_1000AF790()
{
  result = qword_1001FF960;
  if (!qword_1001FF960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF960);
  }

  return result;
}

void sub_1000AF7E4()
{
  if (!qword_1001FF968)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1001FF968);
    }
  }
}

void sub_1000AF834(uint64_t a1)
{
  if (!qword_1001FF970)
  {
    sub_10003C4E4(&qword_1001FF978, &unk_1001820C0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1001FF970);
    }
  }
}

unint64_t sub_1000AF898()
{
  result = qword_1001FF980;
  if (!qword_1001FF980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001FF980);
  }

  return result;
}

void sub_1000AF8F4(uint64_t a1)
{
  v82 = type metadata accessor for CharacterSet();
  v3 = *(v82 - 8);
  __chkstk_darwin(v82);
  v81 = v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for URLQueryItem();
  v5 = *(v80 - 8);
  __chkstk_darwin(v80);
  v7 = v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v72[1] = v1;
    v94 = &_swiftEmptyArrayStorage;
    sub_1000B7C18(0, v8, 0);
    v9 = v94;
    v90 = a1 + 64;
    v10 = _HashTable.startBucket.getter();
    v11 = 0;
    v91 = *(a1 + 36);
    v76 = v5 + 32;
    v77 = (v3 + 8);
    v73 = a1 + 72;
    v74 = v8;
    v78 = v7;
    v79 = v5;
    v75 = a1;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      if ((*(v90 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_30;
      }

      if (v91 != *(a1 + 36))
      {
        goto LABEL_31;
      }

      v84 = 1 << v10;
      v85 = v10 >> 6;
      v83 = v11;
      v13 = (*(a1 + 48) + 16 * v10);
      v15 = *v13;
      v14 = v13[1];
      v16 = (*(a1 + 56) + 16 * v10);
      v17 = v16[1];
      v87 = *v16;
      v88 = v14;
      v92 = v15;
      v93 = v14;

      v18 = v81;
      static CharacterSet.urlQueryAllowed.getter();
      sub_100079A64();
      v19 = StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
      v89 = v9;
      v21 = v20;
      v22 = *v77;
      v23 = v82;
      (*v77)(v18, v82);
      if (v21)
      {
        v24 = v19;
      }

      else
      {
        v24 = 0;
      }

      v86 = v24;
      if (!v21)
      {
        v21 = 0xE000000000000000;
      }

      v92 = v87;
      v93 = v17;
      static CharacterSet.urlQueryAllowed.getter();
      StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
      v26 = v25;
      v22(v18, v23);
      if (v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = 0xE000000000000000;
      }

      v28 = v78;
      URLQueryItem.init(name:value:)();
      v17, v29, v30, v31, v32, v33, v34, v35;
      v88, v36, v37, v38, v39, v40, v41, v42;
      v43 = v21;
      v9 = v89;
      v43, v44, v45, v46, v47, v48, v49, v50;
      v27, v51, v52, v53, v54, v55, v56, v57;
      v94 = v9;
      v59 = *&v9->hostAppBundleIdentifier[8];
      v58 = *v9->responder;
      if (v59 >= v58 >> 1)
      {
        sub_1000B7C18((v58 > 1), v59 + 1, 1);
        v9 = v94;
      }

      *&v9->hostAppBundleIdentifier[8] = v59 + 1;
      (*(v79 + 32))(v9 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v59, v28, v80);
      a1 = v75;
      v12 = 1 << *(v75 + 32);
      if (v10 >= v12)
      {
        goto LABEL_32;
      }

      v65 = *(v90 + 8 * v85);
      if ((v65 & v84) == 0)
      {
        goto LABEL_33;
      }

      if (v91 != *(v75 + 36))
      {
        goto LABEL_34;
      }

      v66 = v65 & (-2 << (v10 & 0x3F));
      if (v66)
      {
        v12 = __clz(__rbit64(v66)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v67 = v85 << 6;
        v68 = v85 + 1;
        v69 = (v73 + 8 * v85);
        while (v68 < (v12 + 63) >> 6)
        {
          v71 = *v69++;
          v70 = v71;
          v67 += 64;
          ++v68;
          if (v71)
          {
            sub_1000B2714(v10, v91, 0, v60, v61, v62, v63, v64);
            v12 = __clz(__rbit64(v70)) + v67;
            goto LABEL_4;
          }
        }

        sub_1000B2714(v10, v91, 0, v60, v61, v62, v63, v64);
      }

LABEL_4:
      v11 = v83 + 1;
      v10 = v12;
      if (v83 + 1 == v74)
      {
        return;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

uint64_t sub_1000AFD94(_BYTE *a1, const char *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1 == 0;
  if (*a1)
  {
    v9 = 0x776569766572;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = 0xE000000000000000;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (*a2)
  {
    v11 = 0x776569766572;
  }

  else
  {
    v11 = 0;
  }

  if (*a2)
  {
    v12 = 0xE600000000000000;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  if (v9 == v11 && v10 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v10, a2, v11, a4, a5, a6, a7, a8;
  v12, v15, v16, v17, v18, v19, v20, v21;
  return v14 & 1;
}

Swift::Int sub_1000AFE28()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 0xE600000000000000;
  }

  else
  {
    v2 = 0xE000000000000000;
  }

  String.hash(into:)();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return Hasher._finalize()();
}

void sub_1000AFE98(uint64_t a1)
{
  if (*v1)
  {
    v2 = 0xE600000000000000;
  }

  else
  {
    v2 = 0xE000000000000000;
  }

  String.hash(into:)();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

Swift::Int sub_1000AFEF4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

void sub_1000AFF60(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3._countAndFlagsBits = *a1;
  v4 = a1[1];
  v3._object = v4;
  v5 = _findStringSwitchCase(cases:string:)(&off_1001BDC28, v3);
  v4, v6, v7, v8, v9, v10, v11, v12;
  if (v5 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (!v5)
  {
    v13 = 0;
  }

  *a2 = v13;
}

void sub_1000AFFC0(uint64_t *a1@<X8>)
{
  v2 = 0x776569766572;
  if (!*v1)
  {
    v2 = 0;
  }

  v3 = 0xE000000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1000AFFF0()
{
  result = qword_1001FF9C0;
  if (!qword_1001FF9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF9C0);
  }

  return result;
}

void sub_1000B0044(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v283 = type metadata accessor for URLQueryItem();
  v278 = *(v283 - 8);
  __chkstk_darwin(v283);
  v280 = &v268 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v273 = &v268 - v6;
  __chkstk_darwin(v7);
  v281 = (&v268 - v8);
  __chkstk_darwin(v9);
  v274 = &v268 - v10;
  __chkstk_darwin(v11);
  v282 = (&v268 - v12);
  __chkstk_darwin(v13);
  v275 = &v268 - v14;
  v15 = sub_10003C49C(&qword_1001FF9C8, &unk_100182190);
  __chkstk_darwin(v15 - 8);
  v17 = &v268 - v16;
  v18 = type metadata accessor for URLComponents();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v268 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for LaunchURL(0);
  v23 = v22[5];
  *(a2 + v23) = &_swiftEmptySetSingleton;
  v24 = v22[6];
  *(a2 + v24) = &_swiftEmptySetSingleton;
  v25 = (a2 + v22[7]);
  *v25 = 0;
  v25[1] = 0;
  v277 = v25;
  v26 = v22[8];
  *(a2 + v26) = 0;
  v27 = v22[9];
  v28 = [objc_opt_self() defaultFlow];
  v279 = v27;
  *(a2 + v27) = v28;
  v29 = v28;
  sub_1000B0CB8(a1, a2);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v30 = type metadata accessor for URL();
    (*(*(v30 - 8) + 8))(a1, v30);
    sub_10003DD84(v17, &qword_1001FF9C8, &unk_100182190);
    return;
  }

  v271 = v19;
  (*(v19 + 32))(v21, v17, v18);
  v31 = URL.pathComponents.getter();
  v32 = *(v31 + 16);
  v31, v33, v34, v35, v36, v37, v38, v39;
  v276 = a1;
  v40 = v21;
  v272 = v18;
  if (v32 < 3)
  {
    v60 = &_swiftEmptySetSingleton;
    v42 = v278;
  }

  else
  {
    v41 = URL.pathComponents.getter();
    v42 = v278;
    if (*&v41->hostAppBundleIdentifier[8] < 3uLL)
    {
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    isa = v41[1].super.super.super.super.isa;
    v43 = *v41[1].hostAppBundleIdentifier;
    v45 = v41;

    v45, v46, v47, v48, v49, v50, v51, v52;
    if (sub_1000B1AB4(isa, v43))
    {
      v60 = sub_1000B1CD8();
    }

    else
    {
      v60 = &_swiftEmptySetSingleton;
    }

    v43, v53, v54, v55, v56, v57, v58, v59;
    a1 = v276;
  }

  *(a2 + v23) = v60;
  v61 = URL.pathComponents.getter();
  v62 = *(v61 + 16);
  v61, v63, v64, v65, v66, v67, v68, v69;
  if (v62 < 2)
  {
    v88 = &_swiftEmptySetSingleton;
  }

  else
  {
    v70 = URL.pathComponents.getter();
    if (*&v70->hostAppBundleIdentifier[8] < 2uLL)
    {
LABEL_94:
      __break(1u);
      return;
    }

    v72 = *&v70->remoteCardFilter[16];
    v71 = *&v70->$__lazy_storage_$_enhancedLoggingCompletedNavigationController[7];
    v73 = v70;

    v73, v74, v75, v76, v77, v78, v79, v80;
    if (sub_1000B1AB4(v72, v71))
    {
      v88 = sub_1000B1CD8();
    }

    else
    {
      v88 = &_swiftEmptySetSingleton;
    }

    v71, v81, v82, v83, v84, v85, v86, v87;
    a1 = v276;
  }

  v89 = sub_1000B1EE4(a1);
  sub_1000B1140(v89, v88);
  *(a2 + v24) = v90;
  v91 = URLComponents.queryItems.getter();
  if (v91)
  {
    if (*(v91 + 16))
    {
      v99 = v91;
      v100 = sub_1000B2458(v91);
      v99, v101, v102, v103, v104, v105, v106, v107;
      *(a2 + v26) = v100;
    }

    else
    {
      v91, v92, v93, v94, v95, v96, v97, v98;
    }
  }

  v108 = URLComponents.host.getter();
  if (!v109)
  {
LABEL_40:
    v169 = type metadata accessor for URL();
    (*(*(v169 - 8) + 8))(a1, v169);
    (*(v271 + 8))(v40, v272);
    return;
  }

  v116 = v108;
  v117 = v109;
  v118 = (v109 >> 56) & 0xF;
  if ((v109 & 0x2000000000000000) == 0)
  {
    v118 = v108 & 0xFFFFFFFFFFFFLL;
  }

  if (!v118)
  {
    v109, v109, v110, v111, v112, v113, v114, v115;
    goto LABEL_40;
  }

  v126 = String.lowercased()();
  object = v126._object;
  if (v126._countAndFlagsBits == 0x6E6F6974636E7566 && v126._object == 0xEA00000000006C61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v127 = v116;
    v126._object, object, v120, v121, v122, v123, v124, v125;
    v128 = 1;
    goto LABEL_29;
  }

  v170 = 0xEF656372756F732DLL;
  if (v126._countAndFlagsBits == 0x636974656D736F63 && v126._object == 0xEF656372756F732DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v127 = v116;
    v126._object, v170, v120, v121, v122, v123, v124, v125;
    v128 = 2;
    goto LABEL_29;
  }

  v259 = 0xEF7465677261742DLL;
  if (v126._countAndFlagsBits == 0x636974656D736F63 && v126._object == 0xEF7465677261742DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v127 = v116;
    v126._object, v259, v120, v121, v122, v123, v124, v125;
    v128 = 3;
    goto LABEL_29;
  }

  if (v126._countAndFlagsBits == 0x7265706C6568 && v126._object == 0xE600000000000000)
  {
    0xE600000000000000, v259, v120, v121, v122, v123, v124, v125;
LABEL_88:
    v127 = v116;
    v128 = 4;
    goto LABEL_29;
  }

  v260 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v126._object, v261, v262, v263, v264, v265, v266, v267;
  if (v260)
  {
    goto LABEL_88;
  }

  v127 = v116;
  v128 = 0;
LABEL_29:
  v129 = [objc_allocWithZone(DADiagnosticFlow) initWithDestination:v128 serialNumber:0 sessionID:0 passcode:0];

  *(a2 + v279) = v129;
  v130 = URLComponents.queryItems.getter();
  v131 = v276;
  if (!v130)
  {
LABEL_46:
    v171 = type metadata accessor for URL();
    (*(*(v171 - 8) + 8))(v131, v171);
    (*(v271 + 8))(v40, v272);
    v172 = v277;
    *v277 = v127;
    v172[1] = v117;
    return;
  }

  v132 = v130;
  if (![v129 destination])
  {
    v132, v133, v134, v135, v136, v137, v138, v139;
    goto LABEL_46;
  }

  v117, v133, v134, v135, v136, v137, v138, v139;
  v277 = *(v132 + 16);
  if (v277)
  {
    v269 = v129;
    v270 = v40;
    v147 = 0;
    v279 = v42 + 16;
    v148 = (v42 + 8);
    while (v147 < *(v132 + 16))
    {
      v149 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v150 = *(v42 + 72);
      v151 = *(v42 + 16);
      v151(v282, v132 + v149 + v150 * v147, v283);
      v152 = URLQueryItem.name.getter();
      v160 = v153;
      if (v152 == 0x754E6C6169726573 && v153 == 0xEC0000007265626DLL)
      {
        0xEC0000007265626DLL, 0xEC0000007265626DLL, v154, v155, v156, v157, v158, v159;
LABEL_49:
        v175 = v275;
        v176 = v283;
        (*(v42 + 32))(v275, v282, v283);
        v268 = URLQueryItem.value.getter();
        v282 = v177;
        (*(v42 + 8))(v175, v176);
LABEL_50:
        v178 = 0;
        v179 = v132 + v149;
        while (1)
        {
          if (v178 >= *(v132 + 16))
          {
            goto LABEL_91;
          }

          v151(v281, v179, v283);
          v180 = URLQueryItem.name.getter();
          v188 = v181;
          if (v180 == 0x496E6F6973736573 && v181 == 0xE900000000000044)
          {
            break;
          }

          v189 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v188, v190, v191, v192, v193, v194, v195, v196;
          if (v189)
          {
            goto LABEL_58;
          }

          v178 = (v178 + 1);
          (*v148)(v281, v283);
          v179 += v150;
          if (v277 == v178)
          {
            v281 = 0;
            v275 = 0;
            goto LABEL_59;
          }
        }

        0xE900000000000044, 0xE900000000000044, v182, v183, v184, v185, v186, v187;
LABEL_58:
        v197 = v278 + 32;
        v198 = v274;
        v199 = v283;
        (*(v278 + 32))(v274, v281, v283);
        v275 = URLQueryItem.value.getter();
        v281 = v200;
        (*(v197 - 24))(v198, v199);
LABEL_59:
        v201 = 0;
        v202 = v132 + v149;
        while (1)
        {
          if (v201 >= *(v132 + 16))
          {
            goto LABEL_92;
          }

          v151(v280, v202, v283);
          v203 = URLQueryItem.name.getter();
          v211 = v204;
          if (v203 == 0x65646F6373736170 && v204 == 0xE800000000000000)
          {
            break;
          }

          v212 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v211, v213, v214, v215, v216, v217, v218, v219;
          if (v212)
          {
            v211 = v132;
LABEL_70:
            v40 = v270;
            v211, v220, v221, v222, v223, v224, v225, v226;
            v237 = v278 + 32;
            v238 = v273;
            v239 = v283;
            (*(v278 + 32))(v273, v280, v283);
            URLQueryItem.value.getter();
            v227 = v240;
            (*(v237 - 24))(v238, v239);
            v228 = v271;
            v129 = v269;
            v173 = v281;
            v174 = v282;
            if (v282)
            {
              goto LABEL_67;
            }

            goto LABEL_71;
          }

          v201 = (v201 + 1);
          (*v148)(v280, v283);
          v202 += v150;
          if (v277 == v201)
          {
            v129 = v269;
            v40 = v270;
            v173 = v281;
            v174 = v282;
            goto LABEL_66;
          }
        }

        v132, 0xE800000000000000, v205, v206, v207, v208, v209, v210;
        goto LABEL_70;
      }

      v161 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v160, v162, v163, v164, v165, v166, v167, v168;
      if (v161)
      {
        goto LABEL_49;
      }

      ++v147;
      (*v148)(v282, v283);
      if (v277 == v147)
      {
        v282 = 0;
        v268 = 0;
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v173 = 0;
  v174 = 0;
LABEL_66:
  v132, v140, v141, v142, v143, v144, v145, v146;
  v227 = 0;
  v228 = v271;
  if (v174)
  {
LABEL_67:
    v229 = String._bridgeToObjectiveC()();
    v174, v230, v231, v232, v233, v234, v235, v236;
  }

  else
  {
LABEL_71:
    v229 = 0;
  }

  [v129 setSerialNumber:{v229, v268}];

  if (v173)
  {
    v241 = String._bridgeToObjectiveC()();
    v173, v242, v243, v244, v245, v246, v247, v248;
  }

  else
  {
    v241 = 0;
  }

  [v129 setSessionID:v241];

  if (v227)
  {
    v249 = String._bridgeToObjectiveC()();
    v227, v250, v251, v252, v253, v254, v255, v256;
  }

  else
  {
    v249 = 0;
  }

  v257 = v276;
  [v129 setPasscode:v249];

  v258 = type metadata accessor for URL();
  (*(*(v258 - 8) + 8))(v257, v258);
  (*(v228 + 8))(v40, v272);
}

uint64_t sub_1000B0CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10003C49C(&qword_1001FDF40, &qword_10017F858);
  __chkstk_darwin(v4 - 8);
  v6 = v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v126 - v8;
  v10 = sub_10003C49C(&qword_1001FF9D0, &unk_1001821A0);
  __chkstk_darwin(v10 - 8);
  v12 = v126 - v11;
  v13 = URL.host.getter();
  if (!v14)
  {
    goto LABEL_8;
  }

  v15 = v13;
  v16 = v14;
  v22 = String.lowercased()();
  if (v22._countAndFlagsBits == 0xD00000000000001ALL && 0x800000010018F850 == v22._object)
  {
    v22._object, v22._object, v17, 0x800000010018F850, v18, v19, v20, v21;
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v22._object, v24, v25, v26, v27, v28, v29, v30;
    if ((v23 & 1) == 0)
    {
LABEL_7:
      v16, v31, v32, v33, v34, v35, v36, v37;
LABEL_8:
      v53 = type metadata accessor for URL();
      return (*(*(v53 - 8) + 16))(a2, a1, v53);
    }
  }

  v38 = URL.absoluteString.getter();
  v40 = v39;
  v131 = v38;
  v132 = v39;
  v127 = v15;
  v128 = v16;
  v41 = type metadata accessor for Locale();
  (*(*(v41 - 8) + 56))(v12, 1, 1, v41);
  sub_100079A64();
  StringProtocol.range<A>(of:options:range:locale:)();
  v43 = v42;
  v45 = v44;
  sub_10003DD84(v12, &qword_1001FF9D0, &unk_1001821A0);
  v40, v46, v47, v48, v49, v50, v51, v52;
  if (v45)
  {
    goto LABEL_7;
  }

  v55 = URL.absoluteString.getter();
  v57 = v56;
  v58 = sub_1000B1248(v43, v55, v56);
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v57, v59, v61, v63, v65, v66, v67, v68;
  v127 = v58;
  v128 = v60;
  v129 = v62;
  v130 = v64;
  v126[0] = 47;
  v126[1] = 0xE100000000000000;
  sub_1000B26C0();
  Collection<>.trimmingPrefix<A>(_:)();
  v64, v69, v70, v71, v72, v73, v74, v75;
  v76 = v133;
  v77 = static String._fromSubstring(_:)();
  v79 = v78;
  v76, v78, v80, v81, v82, v83, v84, v85;
  v131 = 0x2F2F3A7367616964;
  v132 = 0xE800000000000000;
  v86._countAndFlagsBits = v77;
  v86._object = v79;
  String.append(_:)(v86);
  v87 = v132;
  URL.init(string:)();
  v87, v88, v89, v90, v91, v92, v93, v94;
  v95 = type metadata accessor for URL();
  v96 = *(v95 - 8);
  v97 = *(v96 + 48);
  if (v97(v9, 1, v95) == 1)
  {
    URL.init(string:)();
    result = v97(v6, 1, v95);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v79, v105, v106, v107, v108, v109, v110, v111;
      v16, v112, v113, v114, v115, v116, v117, v118;
      (*(v96 + 32))(a2, v6, v95);
      result = v97(v9, 1, v95);
      if (result != 1)
      {
        return sub_10003DD84(v9, &qword_1001FDF40, &qword_10017F858);
      }
    }
  }

  else
  {
    v79, v98, v99, v100, v101, v102, v103, v104;
    v16, v119, v120, v121, v122, v123, v124, v125;
    return (*(v96 + 32))(a2, v9, v95);
  }

  return result;
}

void sub_1000B1140(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v20[2] = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    sub_100078568(*v11, v13);
    sub_100108EC8(v20, v12, v13);
    sub_1000784F0(v20[0], v20[1], v14, v15, v16, v17, v18, v19);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

unint64_t sub_1000B1248(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

void sub_1000B1294(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for URL.DirectoryHint();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10003C49C(&qword_1001FDF40, &qword_10017F858);
  __chkstk_darwin(v8 - 8);
  v10 = &v114 - v9;
  URL.init(string:)();
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    __break(1u);
    return;
  }

  (*(v12 + 32))(a1, v10, v11);
  v13 = sub_1000D5698(&_swiftEmptyArrayStorage);
  v14 = [v2 destination];
  v15 = 0;
  v16 = 0xE000000000000000;
  if (v14 > 2)
  {
    if (v14 == 3)
    {
      v77 = [v2 serialNumber];
      if (!v77)
      {
        goto LABEL_20;
      }

      v117 = v4;
      v78 = v77;
      v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v80;

      v81 = [v2 sessionID];
      if (v81)
      {
        v82 = v81;
        v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v83;

        v84 = [v2 passcode];
        if (v84)
        {
          v85 = v84;
          v13, v52, v53, v54, v55, v56, v57, v58;
          v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v115 = v87;

          sub_10003C49C(&unk_100201EC0, &unk_100184C30);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10017EF10;
          strcpy((inited + 32), "serialNumber");
          *(inited + 45) = 0;
          *(inited + 46) = -5120;
          *(inited + 48) = v79;
          *(inited + 56) = v39;
          *(inited + 64) = 0x496E6F6973736573;
          *(inited + 72) = 0xE900000000000044;
          *(inited + 80) = v116;
          *(inited + 88) = v50;
          *(inited + 96) = 0x65646F6373736170;
          *(inited + 104) = 0xE800000000000000;
          *(inited + 112) = v86;
          *(inited + 120) = v115;
          v13 = sub_1000D5698(inited);
          swift_setDeallocating();
          sub_10003C49C(&qword_100201D00, &unk_10017F860);
          swift_arrayDestroy();
          v16 = 0xEF7465677261742DLL;
          v15 = 0x636974656D736F63;
          goto LABEL_24;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (v14 != 4)
      {
        goto LABEL_25;
      }

      v35 = [v2 serialNumber];
      if (!v35)
      {
        goto LABEL_20;
      }

      v117 = v4;
      v36 = v35;
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      v40 = [v2 sessionID];
      if (v40)
      {
        v48 = v40;
        v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v49;

        v51 = [v2 passcode];
        if (v51)
        {
          v59 = v51;
          v13, v52, v53, v54, v55, v56, v57, v58;
          v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v115 = v61;

          sub_10003C49C(&unk_100201EC0, &unk_100184C30);
          v62 = swift_initStackObject();
          *(v62 + 16) = xmmword_10017EF10;
          strcpy((v62 + 32), "serialNumber");
          *(v62 + 45) = 0;
          *(v62 + 46) = -5120;
          *(v62 + 48) = v37;
          *(v62 + 56) = v39;
          *(v62 + 64) = 0x496E6F6973736573;
          *(v62 + 72) = 0xE900000000000044;
          *(v62 + 80) = v116;
          *(v62 + 88) = v50;
          *(v62 + 96) = 0x65646F6373736170;
          *(v62 + 104) = 0xE800000000000000;
          *(v62 + 112) = v60;
          *(v62 + 120) = v115;
          v13 = sub_1000D5698(v62);
          swift_setDeallocating();
          sub_10003C49C(&qword_100201D00, &unk_10017F860);
          swift_arrayDestroy();
          v16 = 0xE600000000000000;
          v15 = 0x7265706C6568;
LABEL_24:
          v4 = v117;
          goto LABEL_25;
        }

LABEL_22:
        v39, v52, v53, v54, v55, v56, v57, v58;
        v89 = v50;
        goto LABEL_23;
      }
    }

    v89 = v39;
LABEL_23:
    v89, v41, v42, v43, v44, v45, v46, v47;
    v15 = 0;
    v16 = 0xE000000000000000;
    goto LABEL_24;
  }

  if (v14 == 1)
  {
    v63 = [v2 serialNumber];
    if (v63)
    {
      v71 = v63;
      v13, v64, v65, v66, v67, v68, v69, v70;
      v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;

      sub_10003C49C(&unk_100201EC0, &unk_100184C30);
      v75 = swift_initStackObject();
      *(v75 + 16) = xmmword_10017EC00;
      *(v75 + 32) = 0x754E6C6169726573;
      v76 = v75 + 32;
      *(v75 + 40) = 0xEC0000007265626DLL;
      *(v75 + 48) = v72;
      *(v75 + 56) = v74;
      v13 = sub_1000D5698(v75);
      swift_setDeallocating();
      sub_10003DD84(v76, &qword_100201D00, &unk_10017F860);
      v16 = 0xEA00000000006C61;
      v15 = 0x6E6F6974636E7566;
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if (v14 != 2)
  {
    goto LABEL_25;
  }

  v17 = [v2 serialNumber];
  if (!v17)
  {
LABEL_20:
    v15 = 0;
    goto LABEL_25;
  }

  v18 = v17;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = [v2 sessionID];
  if (v22)
  {
    v30 = v22;
    v13, v23, v24, v25, v26, v27, v28, v29;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    sub_10003C49C(&unk_100201EC0, &unk_100184C30);
    v34 = swift_initStackObject();
    *(v34 + 16) = xmmword_10017EC10;
    strcpy((v34 + 32), "serialNumber");
    *(v34 + 45) = 0;
    *(v34 + 46) = -5120;
    *(v34 + 48) = v19;
    *(v34 + 56) = v21;
    *(v34 + 64) = 0x496E6F6973736573;
    *(v34 + 72) = 0xE900000000000044;
    *(v34 + 80) = v31;
    *(v34 + 88) = v33;
    v13 = sub_1000D5698(v34);
    swift_setDeallocating();
    sub_10003C49C(&qword_100201D00, &unk_10017F860);
    swift_arrayDestroy();
    v16 = 0xEF656372756F732DLL;
    v15 = 0x636974656D736F63;
  }

  else
  {
    v21, v23, v24, v25, v26, v27, v28, v29;
    v15 = 0;
    v16 = 0xE000000000000000;
  }

LABEL_25:
  v118 = v15;
  v119 = v16;
  (*(v5 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
  sub_100079A64();
  URL.append<A>(path:directoryHint:)();
  (*(v5 + 8))(v7, v4);
  v16, v90, v91, v92, v93, v94, v95, v96;
  if (*(v13 + 16))
  {
    sub_1000AF8F4(v13);
    v105._rawValue = v104;
    v13, v106, v107, v108, v109, v110, v111, v112;
    URL.append(queryItems:)(v105);
    rawValue = v105._rawValue;
  }

  else
  {
    rawValue = v13;
  }

  rawValue, v97, v98, v99, v100, v101, v102, v103;
}

uint64_t sub_1000B1AB4(uint64_t a1, DARootViewController *a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v41 - v9;
  CharacterSet.init(charactersIn:)();
  v41[0] = a1;
  v41[1] = a2;
  CharacterSet.inverted.getter();
  sub_100079A64();
  v11 = StringProtocol.trimmingCharacters(in:)();
  v13 = v12;
  v14 = *(v5 + 8);
  v14(v7, v4);
  if ((v13 & 0x1000000000000000) != 0)
  {
    if (String.UTF8View._foreignCount()() <= 8)
    {
      goto LABEL_6;
    }

LABEL_18:
    v14(v10, v4);
    v13, v34, v35, v36, v37, v38, v39, v40;
    return 0;
  }

  if ((v13 & 0x2000000000000000) != 0)
  {
    v22 = (v13 >> 56) & 0xF;
  }

  else
  {
    v22 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v22 > 8)
  {
    goto LABEL_18;
  }

LABEL_6:
  v23 = v11 & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v23 = (v13 >> 56) & 0xF;
  }

  if (!v23)
  {
    goto LABEL_18;
  }

  if (v11 == a1 && v13 == a2)
  {
    v13, v15, v16, v17, v18, v19, v20, v21;
    v14(v10, v4);
    return 1;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v13, v26, v27, v28, v29, v30, v31, v32;
  v14(v10, v4);
  result = 0;
  if (v25)
  {
    return 1;
  }

  return result;
}

void *sub_1000B1CD8()
{
  v54 = &_swiftEmptySetSingleton;
  v0 = objc_allocWithZone(NSScanner);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithString:v1];

  v53 = 0;
  [v2 scanHexLongLong:&v53];
  v3 = v53;
  if (v53)
  {
    sub_100108EC8(&v55, 0, 0);
    sub_1000784F0(v55, v56, v4, v5, v6, v7, v8, v9);
    v3 = v53;
    if ((v53 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v53 & 2) == 0)
  {
    goto LABEL_3;
  }

  sub_100108EC8(&v55, 0, 1);
  sub_1000784F0(v55, v56, v10, v11, v12, v13, v14, v15);
  v3 = v53;
  if ((v53 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  sub_100108EC8(&v55, 0, 2);
  sub_1000784F0(v55, v56, v16, v17, v18, v19, v20, v21);
  v3 = v53;
  if ((v53 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  sub_100108EC8(&v55, 0, 3);
  sub_1000784F0(v55, v56, v22, v23, v24, v25, v26, v27);
  v3 = v53;
  if ((v53 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  sub_100108EC8(&v55, 0, 4);
  sub_1000784F0(v55, v56, v28, v29, v30, v31, v32, v33);
  v3 = v53;
  if ((v53 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    sub_100108EC8(&v55, 0, 7);
    sub_1000784F0(v55, v56, v40, v41, v42, v43, v44, v45);
    if ((v53 & 0x100) == 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    sub_100108EC8(&v55, 0, 8);

    sub_1000784F0(v55, v56, v46, v47, v48, v49, v50, v51);
    return v54;
  }

LABEL_15:
  sub_100108EC8(&v55, 0, 5);
  sub_1000784F0(v55, v56, v34, v35, v36, v37, v38, v39);
  v3 = v53;
  if ((v53 & 0x80) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v3 & 0x100) != 0)
  {
    goto LABEL_17;
  }

LABEL_9:

  return v54;
}

char *sub_1000B1EE4(uint64_t a1)
{
  v1 = type metadata accessor for URLQueryItem();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10003C49C(&qword_1001FF9C8, &unk_100182190);
  __chkstk_darwin(v5 - 8);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v91 - v9;
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  sub_1000B2650(v10, v7);
  v11 = type metadata accessor for URLComponents();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    sub_10003DD84(v10, &qword_1001FF9C8, &unk_100182190);
    v13 = &_swiftEmptySetSingleton;
    v14 = v7;
LABEL_36:
    sub_10003DD84(v14, &qword_1001FF9C8, &unk_100182190);
    return v13;
  }

  v91 = v10;
  v15 = URLComponents.queryItems.getter();
  result = (*(v12 + 8))(v7, v11);
  if (!v15)
  {
    v13 = &_swiftEmptySetSingleton;
LABEL_35:
    v14 = v91;
    goto LABEL_36;
  }

  v24 = *(v15 + 16);
  if (!v24)
  {
    v13 = &_swiftEmptySetSingleton;
LABEL_34:
    v15, v17, v18, v19, v20, v21, v22, v23;
    goto LABEL_35;
  }

  v25 = 0;
  v26 = v15 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v100 = (v2 + 8);
  v101 = v2 + 16;
  v13 = &_swiftEmptySetSingleton;
  v96 = v2;
  v97 = v1;
  v95 = v4;
  v94 = v15;
  v93 = v24;
  v92 = v26;
  while (v25 < *(v15 + 16))
  {
    (*(v2 + 16))(v4, v26 + *(v2 + 72) * v25, v1);
    if (URLQueryItem.name.getter() == 25705 && v27 == 0xE200000000000000)
    {
      0xE200000000000000, 0xE200000000000000, v28, v29, v30, v31, v32, v33;
LABEL_13:
      v43 = URLQueryItem.value.getter();
      if (v44)
      {
        v105 = v43;
        v106 = v44;
        v107 = 44;
        v108 = 0xE100000000000000;
        v45 = v44;
        sub_100079A64();
        v46 = StringProtocol.components<A>(separatedBy:)();
        v45, v47, v48, v49, v50, v51, v52, v53;
        v103 = *(v46 + 16);
        if (v103)
        {
          v98 = v46;
          v99 = v25;
          v61 = 0;
          v102 = v46 + 32;
          do
          {
            v63 = (v102 + 16 * v61);
            v64 = *v63;
            v65 = v63[1];
            v66 = HIBYTE(v65) & 0xF;
            if ((v65 & 0x2000000000000000) == 0)
            {
              v66 = v64 & 0xFFFFFFFFFFFFLL;
            }

            if (v66)
            {
              v104 = v61;
              Hasher.init(_seed:)();

              String.hash(into:)();
              v67 = Hasher._finalize()();
              v68 = v13 + 56;
              v69 = -1 << v13[32];
              v70 = v67 & ~v69;
              if ((*&v13[((v70 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v70))
              {
                v71 = ~v69;
                v72 = v13;
                while (1)
                {
                  v73 = (*(v13 + 6) + 16 * v70);
                  v75 = *v73;
                  v74 = v73[1];
                  Hasher.init(_seed:)();
                  if (v74 >= 9)
                  {

                    String.hash(into:)();
                  }

                  else
                  {
                    Hasher._combine(_:)(qword_1001821B0[v74]);
                    sub_100078568(v75, v74);
                  }

                  v76 = Hasher._finalize()();
                  Hasher.init(_seed:)();
                  String.hash(into:)();
                  v77 = Hasher._finalize()();
                  sub_1000784F0(v75, v74, v78, v79, v80, v81, v82, v83);
                  if (v76 == v77)
                  {
                    break;
                  }

                  v70 = (v70 + 1) & v71;
                  v13 = v72;
                  if (((*&v68[(v70 >> 3) & 0xFFFFFFFFFFFFFF8] >> v70) & 1) == 0)
                  {
                    goto LABEL_16;
                  }
                }

                v65, v84, v85, v86, v87, v88, v89, v90;
                v13 = v72;
              }

              else
              {
LABEL_16:
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v105 = v13;
                sub_10010B410(v64, v65, v70, isUniquelyReferenced_nonNull_native);
                v13 = v105;
              }

              v61 = v104;
            }

            ++v61;
          }

          while (v61 != v103);
          v98, v54, v55, v56, v57, v58, v59, v60;
          v2 = v96;
          v1 = v97;
          v4 = v95;
          v15 = v94;
          v24 = v93;
          v25 = v99;
          v26 = v92;
        }

        else
        {
          v46, v54, v55, v56, v57, v58, v59, v60;
        }
      }

      goto LABEL_7;
    }

    v34 = v27;
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v34, v36, v37, v38, v39, v40, v41, v42;
    if (v35)
    {
      goto LABEL_13;
    }

LABEL_7:
    ++v25;
    result = (*v100)(v4, v1);
    if (v25 == v24)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000B2458(uint64_t a1)
{
  v2 = type metadata accessor for URLQueryItem();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = &_swiftEmptySetSingleton;
  v45 = &_swiftEmptySetSingleton;
  v8 = *(a1 + 16);
  if (v8)
  {
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    v11(v6, v12, v2, v4);
    while (1)
    {
      v29 = URLQueryItem.name.getter();
      v35 = v28;
      if (v29 == 0x697463612D736C65 && v28 == 0xEA00000000006E6FLL)
      {
        0xEA00000000006E6FLL, 0xEA00000000006E6FLL, 0x697463612D736C65, v30, v31, v32, v33, v34;
      }

      else
      {
        v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v35, v37, v38, v39, v40, v41, v42, v43;
        if ((v36 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v14 = URLQueryItem.value.getter();
      if (v15)
      {
        v16 = v14;
      }

      else
      {
        v16 = 0;
      }

      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0xE000000000000000;
      }

      v18._countAndFlagsBits = v16;
      v18._object = v17;
      v19 = _findStringSwitchCase(cases:string:)(&off_1001BDC78, v18);
      v17, v20, v21, v22, v23, v24, v25, v26;
      sub_100109568(&v44 + 7, v19 == 1);
LABEL_11:
      (*(v9 - 8))(v6, v2);
      v12 += v13;
      if (!--v8)
      {
        return v45;
      }

      v10(v6, v12, v2, v27);
    }
  }

  return result;
}

uint64_t sub_1000B2650(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_1001FF9C8, &unk_100182190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000B26C0()
{
  result = qword_1001FF9D8;
  if (!qword_1001FF9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF9D8);
  }

  return result;
}

void sub_1000B2714(DARootViewController *self, SEL x1_0, id x2_0, uint64_t w3_0, id x4_0, id x5_0, id x6_0, id x7_0)
{
  if (x2_0)
  {
    self, x1_0, x2_0, w3_0, x4_0, x5_0, x6_0, x7_0;
  }
}

id sub_1000B2720(void *a1)
{
  v3 = OBJC_IVAR____TtC11Diagnostics36SelfServiceSuitePickerViewController_tableView;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for IntrinsicSizeAdjustingTableView()) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC11Diagnostics36SelfServiceSuitePickerViewController_tableViewHorizontalPadding] = 0x4034000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics36SelfServiceSuitePickerViewController_tableViewVerticalPadding] = 0x403A000000000000;
  v1[OBJC_IVAR____TtC11Diagnostics36SelfServiceSuitePickerViewController_hidesBackButton] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics36SelfServiceSuitePickerViewController_suiteManager] = a1;
  v4 = a1;
  if (_UISolariumEnabled())
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000016, 0x800000010018F930);
  v7 = v6;
  v8 = String._bridgeToObjectiveC()();
  v7, v9, v10, v11, v12, v13, v14, v15;
  v16 = sub_100049C98(0xD000000000000019, 0x800000010018F950);
  v18 = v17;
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v16, v17);
  v20 = v19;
  v18, v19, v21, v22, v23, v24, v25, v26;
  v27 = String._bridgeToObjectiveC()();
  v20, v28, v29, v30, v31, v32, v33, v34;
  v35 = String._bridgeToObjectiveC()();
  v38.receiver = v1;
  v38.super_class = type metadata accessor for SelfServiceSuitePickerViewController();
  v36 = objc_msgSendSuper2(&v38, "initWithTitle:detailText:symbolName:contentLayout:", v8, v27, v35, v5);

  return v36;
}

void sub_1000B2984()
{
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics36SelfServiceSuitePickerViewController_tableView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics36SelfServiceSuitePickerViewController_suiteManager];
  [v1 setDataSource:v2];
  [v1 setDelegate:v2];
  [v1 setSeparatorStyle:0];
  [v1 setShowsVerticalScrollIndicator:0];
  v3 = [objc_opt_self() clearColor];
  [v1 setBackgroundColor:v3];

  [v1 setScrollEnabled:0];
  [v1 setRowHeight:UITableViewAutomaticDimension];
  [v1 setEstimatedRowHeight:300.0];
  type metadata accessor for SelfServiceViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = String._bridgeToObjectiveC()();
  [v1 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v5];

  v6 = [v0 scrollView];
  [v6 setShowsVerticalScrollIndicator:0];
}

id sub_1000B2B44(uint64_t a1)
{
  v2 = 0.0;
  if (_UISolariumEnabled())
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 20.0;
  }

  if (!_UISolariumEnabled())
  {
    v2 = 26.0;
  }

  v4 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10017ED60;
  v6 = *&v1[OBJC_IVAR____TtC11Diagnostics36SelfServiceSuitePickerViewController_tableView];
  v7 = [v6 leadingAnchor];
  v8 = [v1 contentView];
  v9 = [v8 leadingAnchor];

  v10 = [v7 constraintEqualToAnchor:v9 constant:v3];
  *(v5 + 32) = v10;
  v11 = [v6 trailingAnchor];
  v12 = [v1 contentView];
  v13 = [v12 trailingAnchor];

  v14 = [v11 constraintEqualToAnchor:v13 constant:-v3];
  *(v5 + 40) = v14;
  v15 = [v6 topAnchor];
  v16 = [v1 contentView];
  v17 = [v16 topAnchor];

  v18 = [v15 constraintEqualToAnchor:v17 constant:v2];
  *(v5 + 48) = v18;
  v19 = [v6 bottomAnchor];
  v20 = [v1 contentView];
  v21 = [v20 bottomAnchor];

  v22 = [v19 constraintEqualToAnchor:v21];
  *(v5 + 56) = v22;
  sub_10003E110(0, &qword_1001FD550, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v5, v24, v25, v26, v27, v28, v29, v30;
  [v4 activateConstraints:isa];

  return [v6 invalidateIntrinsicContentSize];
}

void sub_1000B2FD8()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics36SelfServiceSuitePickerViewController_tableView);
}

id sub_1000B3018(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SelfServiceSuitePickerViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1000B30BC(void *a1, void *a2)
{
  v5 = sub_10003C49C(&qword_1001FDF98, qword_100182250);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v123 = (&v116 - v7);
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v129 = *(v8 - 1);
  v130 = v8;
  __chkstk_darwin(v8);
  v126 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v127 = *(v10 - 8);
  v128 = v10;
  __chkstk_darwin(v10);
  v125 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = v2;
  v13 = qword_1001FC738;
  v14 = a2;
  v15 = a1;
  v16 = v14;
  v17 = v15;
  v18 = v16;
  v19 = v2;
  swift_retain_n();
  v20 = v17;
  v21 = v18;
  v22 = v19;
  v23 = v22;
  if (v13 != -1)
  {
    v22 = swift_once();
  }

  v24 = qword_1001FEED8;
  if (qword_1001FEED8)
  {
    v120 = v6;
    v121 = v5;
    v25 = qword_1001FEED0;
    __chkstk_darwin(v22);
    *(&v116 - 4) = v20;
    *(&v116 - 3) = v25;
    *(&v116 - 2) = v24;
    *(&v116 - 1) = v21;
    v26 = sub_10003C49C(&qword_1001FDF90, &unk_10017FE20);
    OS_dispatch_queue.sync<A>(execute:)();
    v27 = aBlock;
    v124 = v23;
    if (aBlock)
    {
      v116 = v26;
      v117 = 0;
      if (qword_1001FC820 != -1)
      {
        v115 = aBlock;
        swift_once();
        v27 = v115;
      }

      v28 = qword_10020A588;
      v119 = v27;
      v29 = [(DARootViewController *)v27 secondaryAssetLocator:v116];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = swift_allocObject();
      v33[2] = v20;
      v33[3] = v21;
      v33[4] = sub_1000B508C;
      v33[5] = v12;
      v118 = v28;
      v34 = v28[5];
      v35 = v20;
      v36 = v21;
      v122 = v12;
      swift_retain_n();
      v37 = v35;
      v38 = v36;
      v39 = v32;
      v40 = v30;
      v41 = v38;
      [v34 lock];
      v42 = HIBYTE(v39) & 0xF;
      if ((v39 & 0x2000000000000000) == 0)
      {
        v42 = v30 & 0xFFFFFFFFFFFFLL;
      }

      if (v42)
      {
        type metadata accessor for ImageLoader(0);
        v43 = swift_allocObject();
        aBlock = 0;
        v133 = 0;
        LOBYTE(v134) = 2;
        Published.init(initialValue:)();
        v44 = OBJC_IVAR____TtC11Diagnostics11ImageLoader_lock;
        *(v43 + v44) = [objc_allocWithZone(NSLock) init];
        *(v43 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_loading) = 0;
        v45 = (v43 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator);
        *v45 = v40;
        v45[1] = v39;
        swift_beginAccess();

        sub_10003C49C(&qword_1001FDFA0, &qword_10017FE30);
        v46 = v123;
        Published.projectedValue.getter();
        swift_endAccess();
        v47 = swift_allocObject();
        v130 = v34;
        v47[2] = sub_1000B50E8;
        v47[3] = v33;
        v47[4] = v118;
        v47[5] = v43;
        sub_10005C71C(&qword_1001FDFA8, &qword_1001FDF98, qword_100182250, &protocol conformance descriptor for Published<A>.Publisher);

        v48 = v121;
        Publisher<>.sink(receiveValue:)();

        (*(v120 + 8))(v46, v48);
        swift_beginAccess();
        AnyCancellable.store(in:)();
        swift_endAccess();

        swift_beginAccess();

        sub_100108C88(&v131, v43);
        swift_endAccess();

        sub_100086EF0();
        [v130 unlock];
      }

      else
      {
        v123 = v39;
        __chkstk_darwin([v34 unlock]);
        v121 = v73;
        *(&v116 - 4) = v73;
        *(&v116 - 3) = v25;
        *(&v116 - 2) = v24;
        *(&v116 - 1) = v41;
        v74 = v122;
        swift_retain_n();
        v75 = v41;
        OS_dispatch_queue.sync<A>(execute:)();
        v76 = aBlock;
        if (aBlock)
        {
          v77 = [(DARootViewController *)aBlock primaryAssetLocator];
          v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v80 = v79;

          sub_10010E128(v78, v80, v118, sub_1000B508C, v74);

          v80, v81, v82, v83, v84, v85, v86, v87;

          v39 = v123;
          v37 = v121;
        }

        else
        {
          sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
          v120 = static OS_dispatch_queue.main.getter();
          v98 = swift_allocObject();
          v99 = v121;
          *(v98 + 16) = v121;
          *(v98 + 24) = v75;
          v100 = v124;
          *(v98 + 32) = 0;
          *(v98 + 40) = v100;
          *(v98 + 48) = 1;
          v136 = sub_1000B51F8;
          v137 = v98;
          aBlock = _NSConcreteStackBlock;
          v133 = 1107296256;
          v134 = sub_100031FA8;
          v135 = &unk_1001C3F30;
          v101 = _Block_copy(&aBlock);
          v102 = v99;
          v118 = v75;
          v103 = v100;

          v104 = v125;
          static DispatchQoS.unspecified.getter();
          aBlock = &_swiftEmptyArrayStorage;
          sub_10005BD2C();
          sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
          sub_10005C71C(&qword_1001FDE70, &unk_1001FD050, &qword_10017F6A0, &protocol conformance descriptor for [A]);
          v105 = v126;
          v106 = v130;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v107 = v120;
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v101);

          (*(v129 + 8))(v105, v106);
          (*(v127 + 8))(v104, v128);

          v39 = v123;
          v37 = v99;
        }
      }

      v39, v108, v109, v110, v111, v112, v113, v114;
    }

    else
    {
      __chkstk_darwin(0);
      *(&v116 - 4) = v20;
      *(&v116 - 3) = v25;
      *(&v116 - 2) = v24;
      *(&v116 - 1) = v21;
      swift_retain_n();
      v58 = v21;
      OS_dispatch_queue.sync<A>(execute:)();
      v59 = aBlock;
      if (aBlock)
      {
        v60 = v124;
        if (qword_1001FC820 != -1)
        {
          swift_once();
        }

        v61 = qword_10020A588;
        v62 = [(DARootViewController *)v59 primaryAssetLocator];
        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = v64;

        sub_10010E128(v63, v65, v61, sub_1000B508C, v12);

        v65, v66, v67, v68, v69, v70, v71, v72;
      }

      else
      {
        sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
        v123 = static OS_dispatch_queue.main.getter();
        v88 = swift_allocObject();
        *(v88 + 16) = v20;
        *(v88 + 24) = v58;
        v89 = v124;
        *(v88 + 32) = 0;
        *(v88 + 40) = v89;
        *(v88 + 48) = 1;
        v136 = sub_1000B51F8;
        v137 = v88;
        aBlock = _NSConcreteStackBlock;
        v133 = 1107296256;
        v134 = sub_100031FA8;
        v135 = &unk_1001C3E90;
        v90 = _Block_copy(&aBlock);
        v91 = v20;
        v92 = v58;
        v93 = v89;

        v94 = v125;
        static DispatchQoS.unspecified.getter();
        aBlock = &_swiftEmptyArrayStorage;
        sub_10005BD2C();
        sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
        v122 = v12;
        sub_10005C71C(&qword_1001FDE70, &unk_1001FD050, &qword_10017F6A0, &protocol conformance descriptor for [A]);
        v95 = v126;
        v96 = v130;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v97 = v123;
        OS_dispatch_queue.async(group:qos:flags:execute:)();

        _Block_release(v90);

        (*(v129 + 8))(v95, v96);
        (*(v127 + 8))(v94, v128);
      }
    }
  }

  else
  {
    sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
    v49 = v21;

    v124 = static OS_dispatch_queue.main.getter();
    v50 = swift_allocObject();
    *(v50 + 16) = v20;
    *(v50 + 24) = v49;
    *(v50 + 32) = 0;
    *(v50 + 40) = v23;
    *(v50 + 48) = 1;
    v136 = sub_1000B509C;
    v137 = v50;
    aBlock = _NSConcreteStackBlock;
    v133 = 1107296256;
    v134 = sub_100031FA8;
    v135 = &unk_1001C3E40;
    v51 = _Block_copy(&aBlock);
    v52 = v20;
    v53 = v49;
    v123 = v23;

    v54 = v125;
    static DispatchQoS.unspecified.getter();
    aBlock = &_swiftEmptyArrayStorage;
    sub_10005BD2C();
    sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
    sub_10005C71C(&qword_1001FDE70, &unk_1001FD050, &qword_10017F6A0, &protocol conformance descriptor for [A]);
    v55 = v126;
    v56 = v130;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v57 = v124;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v51);

    (*(v129 + 8))(v55, v56);
    (*(v127 + 8))(v54, v128);
  }
}

uint64_t sub_1000B3F94(void *a1, char a2, void *a3, void *a4, void *a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v13 = *(v26 - 8);
  __chkstk_darwin(v26);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
  v25 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = a1;
  *(v16 + 40) = a5;
  *(v16 + 48) = a2;
  aBlock[4] = sub_1000B51F8;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C3FA8;
  v17 = _Block_copy(aBlock);
  v18 = a1;
  v19 = a5;
  v20 = a3;
  v21 = a4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10005BD2C();
  sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
  sub_10005C71C(&qword_1001FDE70, &unk_1001FD050, &qword_10017F6A0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = v25;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v27 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v26);
}

void sub_1000B427C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v95 = a5;
  if (qword_1001FC738 != -1)
  {
    a1 = swift_once();
  }

  v11 = qword_1001FEED0;
  v10 = qword_1001FEED8;
  if (qword_1001FEED8)
  {
    __chkstk_darwin(a1);
    v12 = a2;
    sub_10003C49C(&qword_1001FDF90, &unk_10017FE20);
    OS_dispatch_queue.sync<A>(execute:)();
    if (v96)
    {
      v20 = [v96 suiteNameLocalizedString];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v93 = v21;
    }

    else
    {
      0, v13, v14, v15, v16, v17, v18, v19;

      v93 = 0xE000000000000000;
    }

    __chkstk_darwin(v22);
    v30 = v12;
    sub_10003C49C(&qword_1001FDF90, &unk_10017FE20);
    OS_dispatch_queue.sync<A>(execute:)();
    if (v96)
    {
      v31 = [v96 suiteDescriptionLocalizedString];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      goto LABEL_12;
    }
  }

  else
  {
    0, a2, a3, a4, a5, a6, a7, a8;
    v93 = 0xE000000000000000;
  }

  0, v23, v24, v25, v26, v27, v28, v29;
  v33 = 0xE000000000000000;
LABEL_12:
  v34 = sub_100096060(a2, v11, v10);
  if (v35)
  {
    v36 = v34;
    v37 = v35;
    sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_10017EC00;
    *(v38 + 56) = &type metadata for String;
    *(v38 + 64) = sub_10003DFBC();
    *(v38 + 32) = v36;
    *(v38 + 40) = v37;
    sub_1000494C8(0, 0, v38, 0xD00000000000001FLL, 0x800000010018F990);
    v91 = v39;
    v38, v39, v40, v41, v42, v43, v44, v45;
  }

  else
  {
    v91 = 0xE000000000000000;
  }

  v90 = swift_allocObject();
  *(v90 + 16) = a4;
  *(v90 + 24) = a2;
  v46 = type metadata accessor for SelfServiceSuiteDescriptionViewController();
  v47 = objc_allocWithZone(v46);
  *&v47[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_defaultOuterPadding] = 0x4034000000000000;
  *&v47[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_defaultInnerPadding] = 0x4028000000000000;
  *&v47[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_defaultHorizontalPadding] = 0x4042000000000000;
  *&v47[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_closeButtonPointSize] = 0x403E000000000000;
  *&v47[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_closeButtonSize] = 0x4048000000000000;
  *&v47[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_glyphPointSize] = 0x4051800000000000;
  *&v47[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_imageScreenSpaceRatio] = 0x3FD6666666666666;
  v48 = OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_closeButton;
  v49 = objc_opt_self();
  v50 = a2;
  v92 = a4;
  *&v47[v48] = [v49 buttonWithType:0];
  v51 = OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_startDiagnosticButton;
  *&v47[v51] = [objc_opt_self() boldButton];
  v52 = OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_imageView;
  *&v47[v52] = [objc_allocWithZone(UIImageView) init];
  v53 = OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_scrollView;
  *&v47[v53] = [objc_allocWithZone(UIScrollView) init];
  v54 = OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_titleLabel;
  *&v47[v54] = [objc_allocWithZone(UILabel) init];
  v55 = OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_subtitleLabel;
  *&v47[v55] = [objc_allocWithZone(UILabel) init];
  v56 = OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_detailsLabel;
  *&v47[v56] = [objc_allocWithZone(UILabel) init];
  v57 = OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_imageViewContainerView;
  *&v47[v57] = [objc_allocWithZone(UIView) init];
  v47[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_isShowingGlyph] = 0;
  v58 = *&v47[v54];
  v59 = String._bridgeToObjectiveC()();
  [v58 setText:v59];

  v60 = *&v47[v55];
  v61 = String._bridgeToObjectiveC()();
  v33, v62, v63, v64, v65, v66, v67, v68;
  [v60 setText:v61];

  v69 = *&v47[v56];
  v70 = String._bridgeToObjectiveC()();
  v91, v71, v72, v73, v74, v75, v76, v77;
  [v69 setText:v70];

  v78 = &v47[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_startDiagnosticHandler];
  *v78 = sub_1000B517C;
  v78[1] = v90;
  v97.receiver = v47;
  v97.super_class = v46;

  v79 = objc_msgSendSuper2(&v97, "initWithNibName:bundle:", 0, 0);
  v80 = *&v79[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_imageView];
  v81 = v79;
  [v80 setImage:a3];
  v82 = String._bridgeToObjectiveC()();
  v93, v83, v84, v85, v86, v87, v88, v89;
  [v81 setTitle:v82];

  v81[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_isShowingGlyph] = v95 & 1;
  [v81 setModalPresentationStyle:1];

  [v92 presentViewController:v81 animated:1 completion:0];
}

void sub_1000B4918(uint64_t a1, void *a2)
{
  if (qword_1001FC738 != -1)
  {
    swift_once();
  }

  sub_100094488(qword_1001FEED0, qword_1001FEED8, a2, 0);
}

void sub_1000B49B8(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  objc_allocWithZone(type metadata accessor for SuiteInProgressViewController());
  v10 = a2;
  v16 = sub_1000ECABC(a1, a2);
  v11 = &v16[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_onAppear];
  v12 = *&v16[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_onAppear];
  v13 = *&v16[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_onAppear + 8];
  *v11 = a3;
  *(v11 + 1) = a4;
  sub_10003E418(a3, a4);
  v14 = [a5 navigationController];
  if (v14)
  {
    v15 = v14;
    [v14 pushViewController:v16 animated:1];
  }
}

uint64_t sub_1000B4AB4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v23 = *(v12 - 8);
  v24 = v12;
  __chkstk_darwin(v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
  v22 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  v15[6] = v4;
  aBlock[4] = sub_1000B4DF8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C3DC8;
  v16 = _Block_copy(aBlock);
  v17 = a1;
  v18 = a2;
  sub_10003E418(a3, a4);
  v19 = v4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10005BD2C();
  sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
  sub_10005C71C(&qword_1001FDE70, &unk_1001FD050, &qword_10017F6A0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v22;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v25 + 8))(v11, v9);
  return (*(v23 + 8))(v14, v24);
}

uint64_t sub_1000B4DA0()
{
  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 56, 7, v1);
}

uint64_t sub_1000B4E08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000B4E20(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  if (a1)
  {
    return (a4)(a1, 0, a3);
  }

  v9 = qword_1001FC738;
  v10 = swift_retain_n();
  if (v9 != -1)
  {
    v10 = swift_once();
  }

  if (qword_1001FEED8)
  {
    __chkstk_darwin(v10);
    v11 = a3;
    sub_10003C49C(&qword_1001FDF90, &unk_10017FE20);
    OS_dispatch_queue.sync<A>(execute:)();
    if (v25)
    {
      if (qword_1001FC820 != -1)
      {
        swift_once();
      }

      v12 = qword_10020A588;
      v13 = [v25 primaryAssetLocator];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      sub_10010E128(v14, v16, v12, a4, a5);

      v16, v17, v18, v19, v20, v21, v22, v23;
    }

    else
    {
      a4(0, 1);
    }
  }

  else
  {
    v24 = a3;
    a4(0, 1);
  }
}

uint64_t sub_1000B5044()
{

  return _swift_deallocObject(v0, 40, 7, v1);
}

uint64_t sub_1000B50A0()
{

  return _swift_deallocObject(v0, 48, 7, v1);
}

uint64_t sub_1000B50F4()
{

  return _swift_deallocObject(v0, 48, 7, v1);
}

uint64_t sub_1000B513C()
{

  return _swift_deallocObject(v0, 32, 7, v1);
}

uint64_t sub_1000B5184()
{

  return _swift_deallocObject(v0, 49, 7, v1);
}

void sub_1000B5318()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() _systemImageNamed:v1];

  if (v2)
  {
    v3 = [objc_opt_self() systemWhiteColor];
    v4 = [v2 imageWithTintColor:v3 renderingMode:1];

    if (v4)
    {
      v5 = [objc_allocWithZone(UIImageView) initWithImage:v4];
      [v5 setContentMode:1];
      [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v0 addSubview:v5];
      v6 = objc_opt_self();
      sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_10017ED60;
      v8 = [v5 topAnchor];
      v9 = [v0 topAnchor];
      v10 = [v8 constraintEqualToAnchor:v9];

      *(v7 + 32) = v10;
      v11 = [v5 bottomAnchor];
      v12 = [v0 bottomAnchor];
      v13 = [v11 constraintEqualToAnchor:v12];

      *(v7 + 40) = v13;
      v14 = [v5 leadingAnchor];
      v15 = [v0 leadingAnchor];
      v16 = [v14 constraintEqualToAnchor:v15];

      *(v7 + 48) = v16;
      v17 = [v5 trailingAnchor];

      v18 = [v0 trailingAnchor];
      v19 = [v17 constraintEqualToAnchor:v18];

      *(v7 + 56) = v19;
      sub_10003E110(0, &qword_1001FD550, NSLayoutConstraint_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v7, v20, v21, v22, v23, v24, v25, v26;
      [v6 activateConstraints:isa];
    }
  }
}

double sub_1000B578C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v9 = *(v19 - 8);
  __chkstk_darwin(v19);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = v18;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  static DispatchQoS.unspecified.getter();
  v20 = &_swiftEmptyArrayStorage;
  sub_10005BD2C();
  sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
  sub_1000446A0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v19);

  return result;
}

id sub_1000B5A58(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DiagnosticsIconNonAnimatedView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000B5AB0()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

uint64_t sub_1000B5AFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_1000B5B34(uint64_t a1, char a2)
{
  *&v2[OBJC_IVAR____TtC11Diagnostics30AssessmentQRCodeViewController_iconColorHex] = 16717622;
  *&v2[OBJC_IVAR____TtC11Diagnostics30AssessmentQRCodeViewController_qrCodeView] = 0;
  *&v2[OBJC_IVAR____TtC11Diagnostics30AssessmentQRCodeViewController_barButton] = 0;
  *&v2[OBJC_IVAR____TtC11Diagnostics30AssessmentQRCodeViewController_completeInStoreButton] = 0;
  v5 = OBJC_IVAR____TtC11Diagnostics30AssessmentQRCodeViewController_url;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  v2[OBJC_IVAR____TtC11Diagnostics30AssessmentQRCodeViewController_role] = a2 & 1;
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000018, 0x800000010018FB00);
  v9 = v8;
  v10 = String._bridgeToObjectiveC()();
  v9, v11, v12, v13, v14, v15, v16, v17;
  v18 = sub_100049C98(0xD00000000000001BLL, 0x800000010018FB20);
  v20 = v19;
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v18, v19);
  v22 = v21;
  v20, v21, v23, v24, v25, v26, v27, v28;
  v29 = String._bridgeToObjectiveC()();
  v22, v30, v31, v32, v33, v34, v35, v36;
  v47.receiver = v2;
  v47.super_class = type metadata accessor for AssessmentQRCodeViewController(0);
  v37 = objc_msgSendSuper2(&v47, "initWithTitle:detailText:icon:contentLayout:", v10, v29, 0, 1);

  v38 = v37;
  sub_1000B6C5C();
  v40 = v39;
  v41 = type metadata accessor for QRCodeView();
  v42 = objc_allocWithZone(v41);
  *&v42[OBJC_IVAR____TtC11Diagnostics10QRCodeView_qrConfiguration] = v40;
  v46.receiver = v42;
  v46.super_class = v41;

  v43 = objc_msgSendSuper2(&v46, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v43 setOpaque:{0, v46.receiver, v46.super_class}];
  [v43 setNeedsDisplay];

  (*(v7 + 8))(a1, v6);
  v44 = *&v38[OBJC_IVAR____TtC11Diagnostics30AssessmentQRCodeViewController_qrCodeView];
  *&v38[OBJC_IVAR____TtC11Diagnostics30AssessmentQRCodeViewController_qrCodeView] = v43;

  return v38;
}

void sub_1000B5DCC(__n128 a1)
{
  v2 = v1;
  swift_getObjectType();
  v60.receiver = v1;
  v60.super_class = type metadata accessor for AssessmentQRCodeViewController(0);
  objc_msgSendSuper2(&v60, "viewDidLoad");
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  [v3 setAccessibilityIgnoresInvertColors:1];

  sub_10003C49C(&qword_1001FE160, &unk_10017FF78);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10017EC00;
  *(v5 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v5 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();
  v5, v6, v7, v8, v9, v10, v11, v12;
  v13 = [v1 navigationItem];
  [v13 setHidesBackButton:1];

  sub_10003E110(0, &qword_1001FD3B8, UIBarButtonItem_ptr);
  sub_10003E110(0, &qword_1002023B0, UIAction_ptr);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v59 = v14;
  v61.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v61.is_nil = 0;
  v15.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemCancel, v61, v62).super.super.isa;
  v16 = OBJC_IVAR____TtC11Diagnostics30AssessmentQRCodeViewController_barButton;
  v17 = *&v2[OBJC_IVAR____TtC11Diagnostics30AssessmentQRCodeViewController_barButton];
  *&v2[OBJC_IVAR____TtC11Diagnostics30AssessmentQRCodeViewController_barButton] = v15;

  LODWORD(v13) = _UISolariumEnabled();
  v18 = [v2 navigationItem];
  v19 = *&v2[v16];
  v20 = &selRef_setLeftBarButtonItem_;
  if (!v13)
  {
    v20 = &selRef_setRightBarButtonItem_;
  }

  [v18 *v20];

  v21 = *&v2[OBJC_IVAR____TtC11Diagnostics30AssessmentQRCodeViewController_qrCodeView];
  if (v21)
  {
    v22 = v21;
    [v22 setContentMode:1];
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = [v2 contentView];
    v24 = [objc_opt_self() systemBackgroundColor];
    [v23 setBackgroundColor:v24];

    v25 = [v2 contentView];
    [v25 addSubview:v22];

    sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_10017ED60;
    v27 = [v22 widthAnchor];
    v28 = [v2 view];
    if (v28)
    {
      v29 = v28;
      v30 = objc_opt_self();
      [v29 bounds];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;

      v63.origin.x = v32;
      v63.origin.y = v34;
      v63.size.width = v36;
      v63.size.height = v38;
      v39 = [v27 constraintEqualToConstant:CGRectGetWidth(v63) * 0.5];

      *(v26 + 32) = v39;
      v40 = [v22 heightAnchor];
      v41 = [v22 widthAnchor];
      v42 = [v40 constraintEqualToAnchor:v41];

      *(v26 + 40) = v42;
      v43 = [v22 centerXAnchor];
      v44 = [v2 contentView];
      v45 = [v44 centerXAnchor];

      v46 = [v43 constraintEqualToAnchor:v45];
      *(v26 + 48) = v46;
      v47 = [v22 centerYAnchor];

      v48 = [v2 contentView];
      v49 = [v48 centerYAnchor];

      v50 = [v47 constraintEqualToAnchor:v49];
      *(v26 + 56) = v50;
      sub_10003E110(0, &qword_1001FD550, NSLayoutConstraint_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v26, v52, v53, v54, v55, v56, v57, v58;
      [v30 activateConstraints:isa];

      return;
    }

LABEL_9:
    __break(1u);
  }
}

void sub_1000B638C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1000EC128(4);
    *(swift_allocObject() + 16) = v3;
    v4 = v3;
    v5 = [v4 navigationItem];
    v6 = [v5 rightBarButtonItem];

    sub_100088E48(0, v6);

    v7 = *&v4[OBJC_IVAR____TtC11Diagnostics30AssessmentQRCodeViewController_barButton];
    if (v7)
    {
      v8 = v7;
      [v8 setEnabled:0];
    }
  }
}

id sub_1000B64C0()
{
  sub_1000EC128(5);
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  result = *(qword_10020A5F8 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action);
  if (result)
  {

    return [result setResultCode:-4];
  }

  return result;
}

id sub_1000B6594(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for AssessmentQRCodeViewController(0);
  result = objc_msgSendSuper2(&v7, "viewWillAppear:", a1 & 1);
  if (qword_1001FC6B8 != -1)
  {
    result = swift_once();
  }

  v4 = qword_10020A368;
  v5 = OBJC_IVAR____TtC11Diagnostics10Assertions_invertClassicColorsUserSetting;
  v6 = *(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_invertClassicColorsUserSetting);
  if (v6 == 2)
  {
    result = _AXSClassicInvertColorsEnabled();
    *(v4 + v5) = result != 0;
    if (!result)
    {
      return result;
    }
  }

  else if ((v6 & 1) == 0)
  {
    return result;
  }

  return _AXSClassicInvertColorsSetEnabled();
}

void sub_1000B66A0(char a1)
{
  v36.receiver = v1;
  v36.super_class = type metadata accessor for AssessmentQRCodeViewController(0);
  objc_msgSendSuper2(&v36, "viewDidAppear:", a1 & 1);
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10003DAAC(v3, qword_10020A510);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v35 = v8;
    *v7 = 136315138;
    type metadata accessor for URL();
    sub_1000B6FD8();
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    v12 = sub_100056B7C(v9, v10, &v35);
    v11, v13, v14, v15, v16, v17, v18, v19;
    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "Displaying QR code with URL: %s", v7, 0xCu);
    sub_100044554(v8);
  }

  if (v4[OBJC_IVAR____TtC11Diagnostics30AssessmentQRCodeViewController_role])
  {
    if (qword_1001FC6C0 != -1)
    {
      swift_once();
    }

    sub_1000532CC();
  }

  else
  {
    if (qword_1001FC840 != -1)
    {
      swift_once();
    }

    sub_100138DC0();
  }

  if (sub_1000660CC())
  {
    v20 = OBJC_IVAR____TtC11Diagnostics30AssessmentQRCodeViewController_completeInStoreButton;
    if (!*&v4[OBJC_IVAR____TtC11Diagnostics30AssessmentQRCodeViewController_completeInStoreButton])
    {
      v21 = [objc_opt_self() accessoryButton];
      sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000001CLL, 0x800000010018FAE0);
      v23 = v22;
      v24 = String._bridgeToObjectiveC()();
      v23, v25, v26, v27, v28, v29, v30, v31;
      [v21 setTitle:v24 forState:0];

      sub_10003E110(0, &qword_1002023B0, UIAction_ptr);
      v32 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      [v21 addAction:v32 forControlEvents:{64, 0, 0, 0, sub_1000B6B18, 0}];

      v33 = [v4 headerView];
      [v33 addAccessoryButton:v21];

      v34 = *&v4[v20];
      *&v4[v20] = v21;
    }
  }

  sub_1000EBDFC(3);
}

double sub_1000B6B18()
{
  sub_1000EC128(6);
  type metadata accessor for RootViewController();
  return sub_100060770(18);
}

void sub_1000B6C5C()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  v3 = objc_opt_self();
  v4 = &selRef_whiteColor;
  if (v2 != 2)
  {
    v4 = &selRef_systemBackgroundColor;
  }

  v5 = [v3 *v4];
  v6 = [objc_opt_self() clearColor];
  v7 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.0901960784 blue:0.211764706 alpha:1.0];
  v8 = URL.absoluteString.getter();
  v10 = v9;
  type metadata accessor for AppleQRCodeConfiguration();
  swift_allocObject();
  AppleQRCodeConfiguration.init(utf8String:errorCorrection:style:roundedEye:)(v8, v10, 3, v5, v6, v7, 1, 1);
}

id sub_1000B6DF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssessmentQRCodeViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AssessmentQRCodeViewController(uint64_t a1)
{
  result = qword_1001FFAB0;
  if (!qword_1001FFAB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B6F20(uint64_t a1)
{
  result = type metadata accessor for URL();
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

unint64_t sub_1000B6FD8()
{
  result = qword_1001FFAC0;
  if (!qword_1001FFAC0)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FFAC0);
  }

  return result;
}

uint64_t sub_1000B7030()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7, v1);
}

uint64_t sub_1000B7070()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

id sub_1000B70A8()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC11Diagnostics30AssessmentQRCodeViewController_barButton);
  if (result)
  {
    return [result setEnabled:1];
  }

  return result;
}

double sub_1000B70D0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC11Diagnostics30AssessmentQRCodeViewController_qrCodeView);
  if (v1)
  {
    v2 = v1;
    sub_1000B6C5C();
    *&v2[OBJC_IVAR____TtC11Diagnostics10QRCodeView_qrConfiguration] = v3;

    [v2 setNeedsDisplay];
  }

  return result;
}

double sub_1000B7164@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 status];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v20 = v10 == 0x73736563637573 && v12 == 0xE700000000000000;
  if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v12, v13, v14, v15, v16, v17, v18, v19;
    Image.init(systemName:)();
    (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
    v21 = Image.resizable(capInsets:resizingMode:)();

    (*(v5 + 8))(v8, v4);
    v22 = static Color.green.getter();
    *&v43[0] = v21;
    *(v43 + 8) = xmmword_1001802F0;
    *(&v43[1] + 1) = v22;
    LOBYTE(v44) = 0;
LABEL_7:

    sub_10003C49C(&qword_1001FFAF0, &qword_100182310);
    sub_1000B7968();
    _ConditionalContent<>.init(storage:)();
    v43[0] = v46;
    v43[1] = v47;
    v44 = v48;
    goto LABEL_8;
  }

  v28 = v10 == 0x6572756C696166 && v12 == 0xE700000000000000;
  if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v12, v13, v14, v15, v16, v17, v18, v19;
    Image.init(systemName:)();
    (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
    v29 = Image.resizable(capInsets:resizingMode:)();

    (*(v5 + 8))(v8, v4);
    v30 = static Color.red.getter();
    *&v43[0] = v29;
    *(v43 + 8) = xmmword_1001802F0;
    *(&v43[1] + 1) = v30;
    LOBYTE(v44) = 1;
    goto LABEL_7;
  }

  if (v10 == 0x676E696E726177 && v12 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v12, v13, v14, v15, v16, v17, v18, v19;
    Image.init(systemName:)();
    (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
    v31 = Image.resizable(capInsets:resizingMode:)();

    (*(v5 + 8))(v8, v4);
    v32 = static Color.yellow.getter();
    *&v43[0] = v31;
    *(v43 + 8) = xmmword_1001802F0;
    *(&v43[1] + 1) = v32;
    LOBYTE(v44) = 0;

    sub_10003C49C(&qword_1001FFAF0, &qword_100182310);
    sub_1000B7968();
    _ConditionalContent<>.init(storage:)();
    v43[0] = v46;
    v43[1] = v47;
    LOBYTE(v44) = v48;
    HIBYTE(v44) = 1;
  }

  else
  {
    if (v10 == 0x44455050494B53 && v12 == 0xE700000000000000)
    {
      0xE700000000000000, v13, v14, v15, v16, v17, v18, v19;
    }

    else
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v12, v34, v35, v36, v37, v38, v39, v40;
      if ((v33 & 1) == 0)
      {
        v44 = 0;
        memset(v43, 0, sizeof(v43));
        v45 = 1;
        sub_10003C49C(&qword_1001FFAC8, &qword_100182300);
        sub_1000B78EC(&qword_1001FFAD0, &qword_1001FFAC8, &qword_100182300, sub_1000B78BC);
        _ConditionalContent<>.init(storage:)();
        goto LABEL_12;
      }
    }

    Image.init(systemName:)();
    (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
    v41 = Image.resizable(capInsets:resizingMode:)();

    (*(v5 + 8))(v8, v4);
    v42 = static Color.yellow.getter();
    *&v43[0] = v41;
    *(v43 + 8) = xmmword_1001802F0;
    *(&v43[1] + 1) = v42;
    LOBYTE(v44) = 1;

    sub_10003C49C(&qword_1001FFAF0, &qword_100182310);
    sub_1000B7968();
    _ConditionalContent<>.init(storage:)();
    v43[0] = v46;
    v43[1] = v47;
    LOBYTE(v44) = v48;
    HIBYTE(v44) = 1;
  }

LABEL_8:
  sub_10003C49C(&qword_1001FFAE0, &qword_100182308);
  sub_1000B78BC();
  _ConditionalContent<>.init(storage:)();
  if (HIBYTE(v48))
  {
    v23 = 256;
  }

  else
  {
    v23 = 0;
  }

  v43[0] = v46;
  v43[1] = v47;
  v44 = v23 | v48;
  v45 = 0;
  sub_10003C49C(&qword_1001FFAC8, &qword_100182300);
  sub_1000B78EC(&qword_1001FFAD0, &qword_1001FFAC8, &qword_100182300, sub_1000B78BC);
  _ConditionalContent<>.init(storage:)();

LABEL_12:
  result = *&v46;
  v25 = v47;
  v26 = v48;
  v27 = v49;
  *a2 = v46;
  *(a2 + 16) = v25;
  *(a2 + 32) = v26;
  *(a2 + 34) = v27;
  return result;
}

uint64_t sub_1000B78EC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10003C4E4(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000B7968()
{
  result = qword_1001FFAE8;
  if (!qword_1001FFAE8)
  {
    sub_10003C4E4(&qword_1001FFAF0, &qword_100182310);
    sub_1000B79F4();
    sub_1000B7A78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FFAE8);
  }

  return result;
}

unint64_t sub_1000B79F4()
{
  result = qword_1001FFAF8;
  if (!qword_1001FFAF8)
  {
    sub_10003C4E4(&qword_1001FFB00, &qword_100182318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FFAF8);
  }

  return result;
}

unint64_t sub_1000B7A78()
{
  result = qword_1001FD950;
  if (!qword_1001FD950)
  {
    sub_10003C4E4(&qword_1001FD958, &unk_100180C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FD950);
  }

  return result;
}

uint64_t sub_1000B7ADC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_1000BA310();
  isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    v8 = 11;
  }

  else
  {
    v8 = 2;
  }

  sub_1000EC128(v8);
  return a3(a1, a2);
}

DARootViewController *sub_1000B7C18(DARootViewController *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000B8548(a1, a2, a3, *v3, &qword_1001FFB28, &qword_100182340, &type metadata accessor for URLQueryItem);
  *v3 = result;
  return result;
}

DARootViewController *sub_1000B7C5C(DARootViewController *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000B7DA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

DARootViewController *sub_1000B7C7C(DARootViewController *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000B7E98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

DARootViewController *sub_1000B7C9C(DARootViewController *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000B7FE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

DARootViewController *sub_1000B7CBC(DARootViewController *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000B80EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

DARootViewController *sub_1000B7CDC(DARootViewController *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000B8220(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

DARootViewController *sub_1000B7CFC(DARootViewController *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000B8548(a1, a2, a3, *v3, &qword_1001FFB18, &qword_1001824C0, type metadata accessor for DeviceSelector.DataSourceItemState);
  *v3 = result;
  return result;
}

DARootViewController *sub_1000B7D40(DARootViewController *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000B8438(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

DARootViewController *sub_1000B7D60(DARootViewController *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000B8548(a1, a2, a3, *v3, &qword_1001FEAE0, &qword_100180D50, &type metadata accessor for IndexPath);
  *v3 = result;
  return result;
}

DARootViewController *sub_1000B7DA4(DARootViewController *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10003C49C(&qword_1001FFB30, qword_100182348);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *&v10->hostAppBundleIdentifier[8] = v8;
    *v10->responder = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  remoteCardFilter = v10->remoteCardFilter;
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || remoteCardFilter >= &v13[v8])
    {
      memmove(remoteCardFilter, v13, v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(remoteCardFilter, v13, v8);
  }

  return v10;
}

DARootViewController *sub_1000B7E98(DARootViewController *result, int64_t a2, char a3, DARootViewController *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *a4->responder;
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

  v8 = *&a4->hostAppBundleIdentifier[8];
  if (v7 <= v8)
  {
    v9 = *&a4->hostAppBundleIdentifier[8];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10003C49C(&qword_1001FFB08, &qword_100182320);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *&v10->hostAppBundleIdentifier[8] = v8;
    *v10->responder = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10->remoteCardFilter >= &a4->remoteCardFilter[24 * v8])
    {
      memmove(v10->remoteCardFilter, a4->remoteCardFilter, 24 * v8);
    }

    *&a4->hostAppBundleIdentifier[8] = 0;
  }

  else
  {
    sub_10003C49C(&qword_1001FFB10, &qword_100182328);
    swift_arrayInitWithCopy();
  }

  return v10;
}

DARootViewController *sub_1000B7FE0(DARootViewController *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10003C49C(&qword_1001FE6C8, &qword_100180670);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *&v10->hostAppBundleIdentifier[8] = v8;
    *v10->responder = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  remoteCardFilter = v10->remoteCardFilter;
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || remoteCardFilter >= &v14[16 * v8])
    {
      memmove(remoteCardFilter, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

DARootViewController *sub_1000B80EC(DARootViewController *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10003C49C(&qword_100201290, &qword_10017FDD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *&v10->hostAppBundleIdentifier[8] = v8;
    *v10->responder = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  remoteCardFilter = v10->remoteCardFilter;
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || remoteCardFilter >= &v14[16 * v8])
    {
      memmove(remoteCardFilter, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

DARootViewController *sub_1000B8220(DARootViewController *result, int64_t a2, char a3, unint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10003C49C(&qword_1001FFB20, &qword_100182330);
  v10 = *(sub_10003C49C(&unk_100201EF0, &qword_100182338) - 8);
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

  *&v13->hostAppBundleIdentifier[8] = v8;
  *v13->responder = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10003C49C(&unk_100201EF0, &qword_100182338) - 8);
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

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

DARootViewController *sub_1000B8438(DARootViewController *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10003C49C(&unk_1001FF8D8, &qword_100184ED0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *&v10->hostAppBundleIdentifier[8] = v8;
    *v10->responder = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  remoteCardFilter = v10->remoteCardFilter;
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || remoteCardFilter >= &v14[32 * v8])
    {
      memmove(remoteCardFilter, v14, 32 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

DARootViewController *sub_1000B8548(DARootViewController *result, int64_t a2, char a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 24);
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

  v12 = *(a4 + 16);
  if (v11 <= v12)
  {
    v13 = *(a4 + 16);
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10003C49C(a5, a6);
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

  *&v17->hostAppBundleIdentifier[8] = v12;
  *v17->responder = 2 * ((result - v16) / v15);
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

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

id sub_1000B8724(uint64_t a1, uint64_t a2)
{
  v84 = 0xD000000000000017;
  v85 = 0x800000010018FE10;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v4 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    if (wapiCapability)
    {
      v6 = 0x4E414C575FLL;
    }

    else
    {
      v6 = 0x494649575FLL;
    }

    v7 = 0xE500000000000000;
    String.append(_:)(*&v6);

    v8._countAndFlagsBits = 0x454C5449545FLL;
    v8._object = 0xE600000000000000;
    String.append(_:)(v8);

    v9._countAndFlagsBits = 0x4547415353454D5FLL;
    v9._object = 0xE800000000000000;
    String.append(_:)(v9);
    v85, v10, v11, v12, v13, v14, v15, v16;
    sub_1000EBDFC(11);
    sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v84, v85);
    v70 = v17;
    v85, v17, v18, v19, v20, v21, v22, v23;
    sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v84, v85);
    v85, v24, v25, v26, v27, v28, v29, v30;
    v31 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000002ELL, 0x800000010018FE30);
    v33 = v32;
    v78 = v31;
    v79 = v32;
    v80 = 2;
    v81 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000030, 0x800000010018FE60);
    v82 = v34;
    v83 = 0;
    v35 = swift_allocObject();
    *(v35 + 16) = a1;
    *(v35 + 24) = a2;

    v36 = String._bridgeToObjectiveC()();
    v37 = String._bridgeToObjectiveC()();
    v38 = [objc_opt_self() alertControllerWithTitle:v36 message:v37 preferredStyle:1];

    v39 = swift_allocObject();
    v39[2] = sub_1000BA308;
    v39[3] = v35;
    v39[4] = 0;

    v40 = String._bridgeToObjectiveC()();
    v76 = sub_1000BA3AC;
    v77 = v39;
    aBlock = _NSConcreteStackBlock;
    v73 = 1107296256;
    v74 = sub_100072168;
    v75 = &unk_1001C4390;
    v41 = _Block_copy(&aBlock);

    v42 = [objc_opt_self() actionWithTitle:v40 style:2 handler:v41];
    _Block_release(v41);

    [v38 addAction:v42];
    v33, v43, v44, v45, v46, v47, v48, v49;

    v51 = v82;
    v50 = v83;
    v52 = swift_allocObject();
    v52[2] = sub_1000BA308;
    v52[3] = v35;
    v52[4] = 1;

    v53 = String._bridgeToObjectiveC()();
    v76 = sub_1000BA3AC;
    v77 = v52;
    aBlock = _NSConcreteStackBlock;
    v73 = 1107296256;
    v74 = sub_100072168;
    v75 = &unk_1001C4390;
    v54 = _Block_copy(&aBlock);

    v55 = [objc_opt_self() actionWithTitle:v53 style:v50 handler:v54];
    _Block_release(v54);

    [v38 addAction:v55];
    v51, v56, v57, v58, v59, v60, v61, v62;

    sub_10003C49C(&qword_1001FFB10, &qword_100182328);
    swift_arrayDestroy();

    swift_bridgeObjectRelease_n();
    v70, v63, v64, v65, v66, v67, v68, v69;
    return v38;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000B8BDC(uint64_t a1, unint64_t a2)
{
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000027, 0x800000010018FD50);
  v3 = v2;
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000029, 0x800000010018FD80);
  v4 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 19279, 0xE200000000000000);
  v6 = v5;
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000B7C7C(0, 1, 0);
  v7 = &_swiftEmptyArrayStorage;
  v9 = *&_swiftEmptyArrayStorage.hostAppBundleIdentifier[8];
  v8 = *_swiftEmptyArrayStorage.responder;
  v10 = (v9 + 1);

  if (v9 >= v8 >> 1)
  {
    goto LABEL_8;
  }

  while (1)
  {
    *&v7->hostAppBundleIdentifier[8] = v10;
    v11 = &v7->super.super.super.super.isa + 3 * v9;
    v11[4] = v4;
    v11[5] = v6;
    v11[6] = 0;

    v41 = v3;
    v10 = String._bridgeToObjectiveC()();
    v12 = String._bridgeToObjectiveC()();
    v45 = [objc_opt_self() alertControllerWithTitle:v10 message:v12 preferredStyle:1];

    v42 = *&v7->hostAppBundleIdentifier[8];
    if (!v42)
    {
      break;
    }

    v8 = 0;
    v13 = &v7->remoteCardFilter[16];
    while (v8 < *&v7->hostAppBundleIdentifier[8])
    {
      v14 = v7;
      v15 = v6;
      v4 = *(v13 - 1);
      v16 = *v13;
      v17 = swift_allocObject();
      v9 = a2;
      v17[2] = a1;
      v17[3] = a2;
      v17[4] = v8;

      v10 = String._bridgeToObjectiveC()();
      aBlock[4] = sub_1000BA3AC;
      aBlock[5] = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100072168;
      aBlock[3] = &unk_1001C42C8;
      v3 = _Block_copy(aBlock);

      v18 = [objc_opt_self() actionWithTitle:v10 style:v16 handler:v3];
      _Block_release(v3);

      [v45 addAction:v18];
      v4, v19, v20, v21, v22, v23, v24, v25;

      v6 = v15;
      v7 = v14;
      v13 += 24;
      if (v42 == ++v8)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_8:
    sub_1000B7C7C((v8 > 1), v10, 1);
    v7 = aBlock[0];
  }

LABEL_6:

  swift_bridgeObjectRelease_n();
  v41, v26, v27, v28, v29, v30, v31, v32;
  v6, v33, v34, v35, v36, v37, v38, v39;
  return v45;
}

id sub_1000B8F1C(uint64_t a1, unint64_t a2)
{
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000025, 0x800000010018FDB0);
  v3 = v2;
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000027, 0x800000010018FDE0);
  v4 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 19279, 0xE200000000000000);
  v6 = v5;
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000B7C7C(0, 1, 0);
  v7 = &_swiftEmptyArrayStorage;
  v9 = *&_swiftEmptyArrayStorage.hostAppBundleIdentifier[8];
  v8 = *_swiftEmptyArrayStorage.responder;
  v10 = (v9 + 1);

  if (v9 >= v8 >> 1)
  {
    goto LABEL_8;
  }

  while (1)
  {
    *&v7->hostAppBundleIdentifier[8] = v10;
    v11 = &v7->super.super.super.super.isa + 3 * v9;
    v11[4] = v4;
    v11[5] = v6;
    v11[6] = 0;

    v41 = v3;
    v10 = String._bridgeToObjectiveC()();
    v12 = String._bridgeToObjectiveC()();
    v45 = [objc_opt_self() alertControllerWithTitle:v10 message:v12 preferredStyle:1];

    v42 = *&v7->hostAppBundleIdentifier[8];
    if (!v42)
    {
      break;
    }

    v8 = 0;
    v13 = &v7->remoteCardFilter[16];
    while (v8 < *&v7->hostAppBundleIdentifier[8])
    {
      v14 = v7;
      v15 = v6;
      v4 = *(v13 - 1);
      v16 = *v13;
      v17 = swift_allocObject();
      v9 = a2;
      v17[2] = a1;
      v17[3] = a2;
      v17[4] = v8;

      v10 = String._bridgeToObjectiveC()();
      aBlock[4] = sub_1000BA3AC;
      aBlock[5] = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100072168;
      aBlock[3] = &unk_1001C4318;
      v3 = _Block_copy(aBlock);

      v18 = [objc_opt_self() actionWithTitle:v10 style:v16 handler:v3];
      _Block_release(v3);

      [v45 addAction:v18];
      v4, v19, v20, v21, v22, v23, v24, v25;

      v6 = v15;
      v7 = v14;
      v13 += 24;
      if (v42 == ++v8)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_8:
    sub_1000B7C7C((v8 > 1), v10, 1);
    v7 = aBlock[0];
  }

LABEL_6:

  swift_bridgeObjectRelease_n();
  v41, v26, v27, v28, v29, v30, v31, v32;
  v6, v33, v34, v35, v36, v37, v38, v39;
  return v45;
}

id sub_1000B925C(uint64_t a1, unint64_t a2)
{
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000001CLL, 0x800000010018FD10);
  v3 = v2;
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000001FLL, 0x800000010018FD30);
  v4 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0x5353494D534944, 0xE700000000000000);
  v6 = v5;
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000B7C7C(0, 1, 0);
  v7 = &_swiftEmptyArrayStorage;
  v9 = *&_swiftEmptyArrayStorage.hostAppBundleIdentifier[8];
  v8 = *_swiftEmptyArrayStorage.responder;
  v10 = (v9 + 1);

  if (v9 >= v8 >> 1)
  {
    goto LABEL_8;
  }

  while (1)
  {
    *&v7->hostAppBundleIdentifier[8] = v10;
    v11 = &v7->super.super.super.super.isa + 3 * v9;
    v11[4] = v4;
    v11[5] = v6;
    v11[6] = 0;

    v41 = v3;
    v10 = String._bridgeToObjectiveC()();
    v12 = String._bridgeToObjectiveC()();
    v45 = [objc_opt_self() alertControllerWithTitle:v10 message:v12 preferredStyle:1];

    v42 = *&v7->hostAppBundleIdentifier[8];
    if (!v42)
    {
      break;
    }

    v8 = 0;
    v13 = &v7->remoteCardFilter[16];
    while (v8 < *&v7->hostAppBundleIdentifier[8])
    {
      v14 = v7;
      v15 = v6;
      v4 = *(v13 - 1);
      v16 = *v13;
      v17 = swift_allocObject();
      v9 = a2;
      v17[2] = a1;
      v17[3] = a2;
      v17[4] = v8;

      v10 = String._bridgeToObjectiveC()();
      aBlock[4] = sub_1000BA3AC;
      aBlock[5] = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100072168;
      aBlock[3] = &unk_1001C4278;
      v3 = _Block_copy(aBlock);

      v18 = [objc_opt_self() actionWithTitle:v10 style:v16 handler:v3];
      _Block_release(v3);

      [v45 addAction:v18];
      v4, v19, v20, v21, v22, v23, v24, v25;

      v6 = v15;
      v7 = v14;
      v13 += 24;
      if (v42 == ++v8)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_8:
    sub_1000B7C7C((v8 > 1), v10, 1);
    v7 = aBlock[0];
  }

LABEL_6:

  swift_bridgeObjectRelease_n();
  v41, v26, v27, v28, v29, v30, v31, v32;
  v6, v33, v34, v35, v36, v37, v38, v39;
  return v45;
}

id sub_1000B95A8(uint64_t a1, uint64_t a2)
{
  sub_1000EBDFC(10);
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000002DLL, 0x800000010018FBD0);
  v5 = v4;
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000030, 0x800000010018FC00);
  v6 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 19279, 0xE200000000000000);
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  aBlock[0] = &_swiftEmptyArrayStorage;
  v10 = v8;

  sub_1000B7C7C(0, 1, 0);
  v11 = &_swiftEmptyArrayStorage;
  v13 = *&_swiftEmptyArrayStorage.hostAppBundleIdentifier[8];
  v12 = *_swiftEmptyArrayStorage.responder;
  v14 = (v13 + 1);

  if (v13 >= v12 >> 1)
  {
    goto LABEL_8;
  }

  while (1)
  {
    *&v11->hostAppBundleIdentifier[8] = v14;
    v15 = &v11->super.super.super.super.isa + 3 * v13;
    v15[4] = v6;
    v15[5] = v10;
    v15[6] = 0;

    v45 = v5;
    v6 = String._bridgeToObjectiveC()();
    v16 = String._bridgeToObjectiveC()();
    v47 = [objc_opt_self() alertControllerWithTitle:v6 message:v16 preferredStyle:1];

    v5 = v11;
    v46 = *&v11->hostAppBundleIdentifier[8];
    if (!v46)
    {
      break;
    }

    v12 = 0;
    v17 = &v11->remoteCardFilter[16];
    while (v12 < *&v5->hostAppBundleIdentifier[8])
    {
      v6 = *(v17 - 1);
      v18 = *v17;
      v19 = v10;
      v20 = swift_allocObject();
      v20[2] = sub_1000B9964;
      v20[3] = v9;
      v20[4] = v12;

      v21 = String._bridgeToObjectiveC()();
      aBlock[4] = sub_1000B99AC;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100072168;
      aBlock[3] = &unk_1001C4110;
      v22 = _Block_copy(aBlock);

      v14 = [objc_opt_self() actionWithTitle:v21 style:v18 handler:v22];
      _Block_release(v22);

      v10 = v19;
      [v47 addAction:v14];
      v6, v23, v24, v25, v26, v27, v28, v29;

      v17 += 24;
      v13 = ++v12;
      if (v46 == v12)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_8:
    sub_1000B7C7C((v12 > 1), v14, 1);
    v11 = aBlock[0];
  }

LABEL_6:

  swift_bridgeObjectRelease_n();
  v45, v30, v31, v32, v33, v34, v35, v36;
  v10, v37, v38, v39, v40, v41, v42, v43;
  return v47;
}

uint64_t sub_1000B992C()
{

  return _swift_deallocObject(v0, 32, 7, v1);
}

uint64_t sub_1000B9964(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  sub_1000EC128(10);
  return v5(a1, a2);
}

double sub_1000B99B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_1000B99C8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000023, 0x800000010018FC40);
  v81 = v5;
  v6 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000025, 0x800000010018FC70);
  v8 = v7;
  v9 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 19279, 0xE200000000000000);
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = a2;
  v14 = v11;
  sub_10003E418(v13, a3);
  aBlock._countAndFlagsBits = &_swiftEmptyArrayStorage;
  sub_1000B7C7C(0, 1, 0);
  countAndFlagsBits = &_swiftEmptyArrayStorage;
  v17 = *&_swiftEmptyArrayStorage.hostAppBundleIdentifier[8];
  v16 = *_swiftEmptyArrayStorage.responder;
  v18 = v17 + 1;

  if (v17 >= v16 >> 1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    *&countAndFlagsBits->hostAppBundleIdentifier[8] = v18;
    v19 = &countAndFlagsBits->super.super.super.super.isa + 3 * v17;
    v19[4] = v9;
    v19[5] = v14;
    v19[6] = 0;
    v86 = v6;
    v87 = v8;

    swift_errorRetain();
    v79 = v14;
    v80 = v8;
    if (os_variant_has_internal_content())
    {
      strcpy(&aBlock, "\n\n[Internal] ");
      HIWORD(aBlock._object) = -4864;
      swift_errorRetain();
      sub_10003C49C(&qword_100201C30, &unk_100183150);
      v20._countAndFlagsBits = String.init<A>(reflecting:)();
      object = v20._object;
      String.append(_:)(v20);
      object, v22, v23, v24, v25, v26, v27, v28;
      v29 = aBlock._object;
      String.append(_:)(aBlock);
      v29, v30, v31, v32, v33, v34, v35, v36;

      v6 = v86;
      v82 = v87;
    }

    else
    {

      v82 = v8;
    }

    v37 = String._bridgeToObjectiveC()();
    v38 = String._bridgeToObjectiveC()();
    v83 = [objc_opt_self() alertControllerWithTitle:v37 message:v38 preferredStyle:1];

    v18 = countAndFlagsBits;
    v17 = *&countAndFlagsBits->hostAppBundleIdentifier[8];
    if (!v17)
    {
      break;
    }

    v14 = 0;
    v16 = v85;
    v46 = &countAndFlagsBits->remoteCardFilter[16];
    while (v14 < *(v18 + 16))
    {
      v6 = *(v46 - 1);
      v47 = *v46;
      v48 = swift_allocObject();
      v48[2] = sub_1000B9DF4;
      v48[3] = v12;
      v48[4] = v14;

      v9 = String._bridgeToObjectiveC()();
      v85[2] = sub_1000BA3AC;
      v85[3] = v48;
      aBlock._countAndFlagsBits = _NSConcreteStackBlock;
      aBlock._object = 1107296256;
      v85[0] = sub_100072168;
      v85[1] = &unk_1001C4188;
      v8 = _Block_copy(&aBlock);

      v49 = [objc_opt_self() actionWithTitle:v9 style:v47 handler:v8];
      _Block_release(v8);

      [v83 addAction:v49];
      v6, v50, v51, v52, v53, v54, v55, v56;

      v18 = countAndFlagsBits;
      v46 += 24;
      v14 = (v14 + 1);
      if (v17 == v14)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    sub_1000B7C7C((v16 > 1), v18, 1);
    countAndFlagsBits = aBlock._countAndFlagsBits;
  }

LABEL_9:
  v82, v39, v40, v41, v42, v43, v44, v45;

  v80, v57, v58, v59, v60, v61, v62, v63;
  v81, v64, v65, v66, v67, v68, v69, v70;
  v79, v71, v72, v73, v74, v75, v76, v77;
  return v83;
}

id sub_1000B9DF8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000002ELL, 0x800000010018FCA0);
  v81 = v5;
  v6 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000030, 0x800000010018FCD0);
  v8 = v7;
  v9 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 19279, 0xE200000000000000);
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = a2;
  v14 = v11;
  sub_10003E418(v13, a3);
  aBlock._countAndFlagsBits = &_swiftEmptyArrayStorage;
  sub_1000B7C7C(0, 1, 0);
  countAndFlagsBits = &_swiftEmptyArrayStorage;
  v17 = *&_swiftEmptyArrayStorage.hostAppBundleIdentifier[8];
  v16 = *_swiftEmptyArrayStorage.responder;
  v18 = v17 + 1;

  if (v17 >= v16 >> 1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    *&countAndFlagsBits->hostAppBundleIdentifier[8] = v18;
    v19 = &countAndFlagsBits->super.super.super.super.isa + 3 * v17;
    v19[4] = v9;
    v19[5] = v14;
    v19[6] = 0;
    v86 = v6;
    v87 = v8;

    swift_errorRetain();
    v79 = v14;
    v80 = v8;
    if (os_variant_has_internal_content())
    {
      strcpy(&aBlock, "\n\n[Internal] ");
      HIWORD(aBlock._object) = -4864;
      swift_errorRetain();
      sub_10003C49C(&qword_100201C30, &unk_100183150);
      v20._countAndFlagsBits = String.init<A>(reflecting:)();
      object = v20._object;
      String.append(_:)(v20);
      object, v22, v23, v24, v25, v26, v27, v28;
      v29 = aBlock._object;
      String.append(_:)(aBlock);
      v29, v30, v31, v32, v33, v34, v35, v36;

      v6 = v86;
      v82 = v87;
    }

    else
    {

      v82 = v8;
    }

    v37 = String._bridgeToObjectiveC()();
    v38 = String._bridgeToObjectiveC()();
    v83 = [objc_opt_self() alertControllerWithTitle:v37 message:v38 preferredStyle:1];

    v18 = countAndFlagsBits;
    v17 = *&countAndFlagsBits->hostAppBundleIdentifier[8];
    if (!v17)
    {
      break;
    }

    v14 = 0;
    v16 = v85;
    v46 = &countAndFlagsBits->remoteCardFilter[16];
    while (v14 < *(v18 + 16))
    {
      v6 = *(v46 - 1);
      v47 = *v46;
      v48 = swift_allocObject();
      v48[2] = sub_1000BA3B0;
      v48[3] = v12;
      v48[4] = v14;

      v9 = String._bridgeToObjectiveC()();
      v85[2] = sub_1000BA3AC;
      v85[3] = v48;
      aBlock._countAndFlagsBits = _NSConcreteStackBlock;
      aBlock._object = 1107296256;
      v85[0] = sub_100072168;
      v85[1] = &unk_1001C4200;
      v8 = _Block_copy(&aBlock);

      v49 = [objc_opt_self() actionWithTitle:v9 style:v47 handler:v8];
      _Block_release(v8);

      [v83 addAction:v49];
      v6, v50, v51, v52, v53, v54, v55, v56;

      v18 = countAndFlagsBits;
      v46 += 24;
      v14 = (v14 + 1);
      if (v17 == v14)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    sub_1000B7C7C((v16 > 1), v18, 1);
    countAndFlagsBits = aBlock._countAndFlagsBits;
  }

LABEL_9:
  v82, v39, v40, v41, v42, v43, v44, v45;

  v80, v57, v58, v59, v60, v61, v62, v63;
  v81, v64, v65, v66, v67, v68, v69, v70;
  v79, v71, v72, v73, v74, v75, v76, v77;
  return v83;
}

uint64_t sub_1000BA228(__n128 a1)
{
  if (*(v1 + 16))
  {
  }

  return _swift_deallocObject(v1, 32, 7, a1);
}

uint64_t sub_1000BA268()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1000BA298()
{

  return _swift_deallocObject(v0, 40, 7, v1);
}

uint64_t sub_1000BA2D0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7, v1);
}

unint64_t sub_1000BA310()
{
  result = qword_1001FDF50;
  if (!qword_1001FDF50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001FDF50);
  }

  return result;
}

id sub_1000BA3B4()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v0 setFont:v1];

  [v0 setNumberOfLines:0];
  LODWORD(v1) = _UISolariumEnabled();
  v2 = objc_opt_self();
  v3 = &selRef_secondaryLabelColor;
  if (!v1)
  {
    v3 = &selRef_labelColor;
  }

  v4 = [v2 *v3];
  [v0 setTextColor:v4];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setAdjustsFontForContentSizeCategory:1];
  return v0;
}

id sub_1000BA4CC()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v0 setFont:v1];

  [v0 setNumberOfLines:1];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setAdjustsFontForContentSizeCategory:1];
  v2 = [objc_opt_self() systemBlueColor];
  [v0 setTextColor:v2];

  return v0;
}

id sub_1000BA5C8()
{
  [v0 setSelectionStyle:0];
  v1 = objc_opt_self();
  v2 = [v1 secondarySystemBackgroundColor];
  [v0 setBackgroundColor:v2];

  v3 = [v0 layer];
  if (qword_1001FC750 != -1)
  {
    swift_once();
  }

  v4 = *&qword_10020A3D8;
  [v3 setCornerRadius:*&qword_10020A3D8];

  v5 = [v1 secondarySystemBackgroundColor];
  [v0 setBackgroundColor:v5];

  v6 = [v0 layer];
  [v6 setCornerRadius:v4];

  v7 = *&v0[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_rootStackView];
  [v7 setDistribution:0];
  [v7 setDirectionalLayoutMargins:{16.0, 18.0, 16.0, 16.0}];
  [v7 setLayoutMarginsRelativeArrangement:1];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = *&v0[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_descriptionStackView];
  [v8 setLayoutMarginsRelativeArrangement:1];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setDistribution:0];
  [v8 setSpacing:4.0];
  [v7 setAxis:0];
  [v7 setAlignment:3];
  [v8 setAxis:1];

  return [v8 setAlignment:1];
}

void sub_1000BA824()
{
  v1 = OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_titleLabel;
  [*&v0[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_titleLabel] removeFromSuperview];
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_iconImageView];
  [v2 removeFromSuperview];
  v3 = OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleLabel;
  [*&v0[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleLabel] removeFromSuperview];
  v4 = OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_learnMoreLabel;
  [*&v0[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_learnMoreLabel] removeFromSuperview];
  v5 = *&v0[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_descriptionStackView];
  [v5 removeFromSuperview];
  v6 = *&v0[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_rootStackView];
  [v6 removeFromSuperview];
  [v5 addArrangedSubview:*&v0[v1]];
  [v5 addArrangedSubview:*&v0[v3]];
  [v5 addArrangedSubview:*&v0[v4]];
  [v6 addArrangedSubview:v2];
  [v6 addArrangedSubview:v5];
  [v6 setCustomSpacing:v2 afterView:18.0];
  [v6 setCustomSpacing:v5 afterView:16.0];
  v7 = [v0 contentView];
  [v7 addSubview:v6];
}

void sub_1000BA9A8()
{
  v1 = v0;
  v2 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10017EDB0;
  v4 = *&v1[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_rootStackView];
  v5 = [v4 bottomAnchor];
  v6 = [v1 contentView];
  v7 = [v6 bottomAnchor];

  v8 = [v5 constraintEqualToAnchor:v7];
  *(v3 + 32) = v8;
  v9 = [v4 topAnchor];
  v10 = [v1 contentView];
  v11 = [v10 topAnchor];

  v12 = [v9 constraintEqualToAnchor:v11];
  *(v3 + 40) = v12;
  v13 = [v4 trailingAnchor];
  v14 = [v1 contentView];
  v15 = [v14 trailingAnchor];

  v16 = [v13 constraintEqualToAnchor:v15];
  *(v3 + 48) = v16;
  v17 = [v4 leadingAnchor];
  v18 = [v1 contentView];
  v19 = [v18 leadingAnchor];

  v20 = [v17 constraintEqualToAnchor:v19];
  *(v3 + 56) = v20;
  v21 = *&v1[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_iconImageView];
  v22 = [v21 widthAnchor];
  v23 = [v22 constraintEqualToConstant:40.0];

  *(v3 + 64) = v23;
  v24 = [v21 heightAnchor];
  v25 = [v24 constraintEqualToConstant:40.0];

  *(v3 + 72) = v25;
  sub_10007E540();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v3, v26, v27, v28, v29, v30, v31, v32;
  [v2 activateConstraints:isa];
}

CGFloat sub_1000BAD38()
{
  v1 = [v0 contentView];
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v21.origin.x = v3;
  v21.origin.y = v5;
  v21.size.width = v7;
  v21.size.height = v9;
  Width = CGRectGetWidth(v21);
  v11 = [v0 contentView];
  [v11 layoutMargins];
  v13 = v12;

  v14 = Width - v13;
  v15 = [v0 contentView];
  [v15 layoutMargins];
  v17 = v16;

  LODWORD(v18) = 1148846080;
  LODWORD(v19) = 1112014848;
  [*&v0[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_rootStackView] systemLayoutSizeFittingSize:v14 - v17 withHorizontalFittingPriority:1.79769313e308 verticalFittingPriority:{v18, v19}];
  return UIViewNoIntrinsicMetric;
}

id sub_1000BAE58(uint64_t a1, uint64_t a2, DARootViewController *a3)
{
  *&v3[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_iconSpacing] = 0x4032000000000000;
  *&v3[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_defaultSpacing] = 0x4030000000000000;
  *&v3[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_defaultVerticalSpacing] = 0x4010000000000000;
  *&v3[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_iconDimensionSize] = 0x4044000000000000;
  v6 = OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_rootStackView;
  *&v3[v6] = [objc_allocWithZone(UIStackView) init];
  v7 = OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_descriptionStackView;
  *&v3[v7] = [objc_allocWithZone(UIStackView) init];
  *&v3[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_iconImage] = 0;
  v8 = OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_iconImageView;
  v9 = [objc_allocWithZone(UIImageView) init];
  [v9 setContentMode:1];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  *&v3[v8] = v9;
  v10 = OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_titleLabel;
  v11 = [objc_allocWithZone(UILabel) init];
  v12 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v11 setFont:v12];

  [v11 setNumberOfLines:2];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 setAdjustsFontForContentSizeCategory:1];
  *&v3[v10] = v11;
  v13 = &v3[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_titleText];
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleLabel;
  *&v3[v14] = sub_1000BA3B4();
  v15 = &v3[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleText];
  *v15 = 0;
  v15[1] = 0;
  v3[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleTruncated] = 0;
  v16 = OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_learnMoreLabel;
  *&v3[v16] = sub_1000BA4CC();
  v3[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_learnMoreEnabled] = 0;
  if (a3)
  {
    v17 = String._bridgeToObjectiveC()();
    a3, v18, v19, v20, v21, v22, v23, v24;
  }

  else
  {
    v17 = 0;
  }

  v27.receiver = v3;
  v27.super_class = type metadata accessor for SelfServiceViewCell();
  v25 = objc_msgSendSuper2(&v27, "initWithStyle:reuseIdentifier:", a1, v17);

  return v25;
}

id sub_1000BB118(void *a1)
{
  *&v1[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_iconSpacing] = 0x4032000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_defaultSpacing] = 0x4030000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_defaultVerticalSpacing] = 0x4010000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_iconDimensionSize] = 0x4044000000000000;
  v3 = OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_rootStackView;
  *&v1[v3] = [objc_allocWithZone(UIStackView) init];
  v4 = OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_descriptionStackView;
  *&v1[v4] = [objc_allocWithZone(UIStackView) init];
  *&v1[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_iconImage] = 0;
  v5 = OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_iconImageView;
  v6 = [objc_allocWithZone(UIImageView) init];
  [v6 setContentMode:1];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  *&v1[v5] = v6;
  v7 = OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_titleLabel;
  v8 = [objc_allocWithZone(UILabel) init];
  v9 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v8 setFont:v9];

  [v8 setNumberOfLines:2];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setAdjustsFontForContentSizeCategory:1];
  *&v1[v7] = v8;
  v10 = &v1[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_titleText];
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleLabel;
  *&v1[v11] = sub_1000BA3B4();
  v12 = &v1[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleText];
  *v12 = 0;
  v12[1] = 0;
  v1[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleTruncated] = 0;
  v13 = OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_learnMoreLabel;
  *&v1[v13] = sub_1000BA4CC();
  v1[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_learnMoreEnabled] = 0;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for SelfServiceViewCell();
  v14 = objc_msgSendSuper2(&v16, "initWithCoder:", a1);

  if (v14)
  {
  }

  return v14;
}

void sub_1000BB38C()
{
  *(v0 + OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_titleText + 8), v1, v2, v3, v4, v5, v6, v7;

  *(v0 + OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleText + 8), v8, v9, v10, v11, v12, v13, v14;
  v15 = *(v0 + OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_learnMoreLabel);
}

id sub_1000BB444(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SelfServiceViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1000BB560(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_iconImage);
  *(v1 + OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_iconImage) = a1;
  v4 = a1;

  v5 = *(v1 + OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_iconImageView);
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = a1;
  v11[4] = sub_1000BB6D4;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100031FA8;
  v11[3] = &unk_1001C43E0;
  v8 = _Block_copy(v11);
  v9 = v4;
  v10 = v5;

  [v6 transitionWithView:v10 duration:5242880 options:v8 animations:0 completion:0.1];
  _Block_release(v8);
}

uint64_t sub_1000BB694()
{

  return _swift_deallocObject(v0, 32, 7, v1);
}

double sub_1000BB6DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1000BB6F4()
{
  v1 = [v0 buttonTray];
  v2 = [v1 allButtons];

  sub_1000BCAA4();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = v3;
  if (v3 >> 62)
  {
    v13 = v3;
    v14 = _CocoaArrayWrapper.endIndex.getter();
    v13, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      return;
    }
  }

  else
  {
    v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11, v4, v5, v6, v7, v8, v9, v10;
    if (v12)
    {
      return;
    }
  }

  v43 = [objc_opt_self() boldButton];
  v22 = *(v0 + OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryActionTitle + 8);
  if (v22)
  {

    v23 = String._bridgeToObjectiveC()();
    v22, v24, v25, v26, v27, v28, v29, v30;
  }

  else
  {
    v23 = 0;
  }

  [v43 setTitle:v23 forState:0];

  [v43 addTarget:v0 action:"primaryButtonPressed:" forControlEvents:64];
  v31 = [v0 buttonTray];
  [v31 addButton:v43];

  if ((*((swift_isaMask & *v0) + 0xF8))())
  {
    v32 = [objc_opt_self() linkButton];
    v33 = *(v0 + OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_secondaryActionTitle + 8);
    if (v33)
    {

      v34 = String._bridgeToObjectiveC()();
      v33, v35, v36, v37, v38, v39, v40, v41;
    }

    else
    {
      v34 = 0;
    }

    [v32 setTitle:v34 forState:0];

    [v32 addTarget:v0 action:"secondaryButtonPressed:" forControlEvents:64];
    v42 = [v0 buttonTray];
    [v42 addButton:v32];
  }
}

void sub_1000BB9C0(uint64_t a1)
{
  v2 = a1;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for ConsentNoticeViewController();
  objc_msgSendSuper2(&v11, "viewWillAppear:", v2 & 1);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v3 = [v1 navigationController];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 navigationBar];

      v6 = [objc_allocWithZone(UIImage) init];
      [v5 setBackgroundImage:v6 forBarMetrics:0];
    }

    v7 = [v1 navigationController];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 navigationBar];

      v10 = [objc_allocWithZone(UIImage) init];
      [v9 setShadowImage:v10];
    }
  }

  sub_1000BB6F4();
}