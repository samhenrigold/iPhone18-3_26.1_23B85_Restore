id sub_100001CBC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SecureWindow();
  return objc_msgSendSuper2(&v4, "dealloc");
}

Swift::Int sub_100001E08(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

void *sub_100001E7C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_100001ED0(void *a1, uint64_t *a2)
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

void *sub_100001F00@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_100001F2C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_100002018(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)(v4, v5, a3, WitnessTable);
}

uint64_t sub_100002098@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10000224C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100002174(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000224C(uint64_t a1)
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

void sub_1000022C0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id sub_1000023A8(void *a1, id a2)
{
  v28.receiver = v2;
  v28.super_class = type metadata accessor for LiveActivityImageAccessoryView();
  v5 = objc_msgSendSuper2(&v28, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v6 = objc_allocWithZone(UIImageView);
  v7 = v5;
  v8 = [v6 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setContentMode:1];
  v27 = a1;
  if (a2)
  {
    a2 = a2;
    v9 = [a1 imageWithTintColor:a2];
    [v8 setImage:v9];
  }

  else
  {
    [v8 setImage:a1];
  }

  v10 = v7;
  [v10 addSubview:v8];
  v11 = objc_opt_self();
  sub_10000280C(&qword_100033478, "VW");
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10001F150;
  v13 = [v8 topAnchor];
  v14 = [v10 topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:4.0];

  *(v12 + 32) = v15;
  v16 = [v8 leadingAnchor];
  v17 = [v10 leadingAnchor];

  v18 = [v16 constraintEqualToAnchor:v17];
  *(v12 + 40) = v18;
  v19 = [v8 trailingAnchor];
  v20 = [v10 trailingAnchor];

  v21 = [v19 constraintEqualToAnchor:v20];
  *(v12 + 48) = v21;
  v22 = [v8 bottomAnchor];

  v23 = [v10 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:-4.0];

  *(v12 + 56) = v24;
  sub_100002854();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 activateConstraints:isa];

  return v10;
}

id sub_1000027B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiveActivityImageAccessoryView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000280C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100002854()
{
  result = qword_100033480;
  if (!qword_100033480)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100033480);
  }

  return result;
}

id sub_1000028A0()
{
  v0 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v0 setFont:v1];

  v2 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor:v2];

  [v0 setNumberOfLines:0];
  [v0 setLineBreakMode:0];
  return v0;
}

void *sub_1000029A8()
{
  v0 = type metadata accessor for UIButton.Configuration.TitleAlignment();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UIButton.Configuration.Size();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UIButton.Configuration();
  v24 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  static UIButton.Configuration.plain()();
  UIButton.Configuration.title.setter();
  (*(v5 + 104))(v7, enum case for UIButton.Configuration.Size.small(_:), v4);
  UIButton.Configuration.buttonSize.setter();
  (*(v1 + 104))(v3, enum case for UIButton.Configuration.TitleAlignment.trailing(_:), v0);
  UIButton.Configuration.titleAlignment.setter();
  UIButton.Configuration.titlePadding.setter();
  UIButton.Configuration.contentInsets.setter();
  UIButton.Configuration.titleLineBreakMode.setter();
  v14 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.cornerRadius.setter();
  v14(v25, 0);
  v15 = v24;
  sub_100003928(0, &qword_100033540, UIButton_ptr);
  (*(v15 + 16))(v11, v13, v8);
  v16 = UIButton.init(configuration:primaryAction:)();
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = [objc_opt_self() systemBlueColor];
  [v16 setTintColor:v17];

  v18 = [v16 titleLabel];
  if (v18)
  {
    v19 = v18;
    [v18 setNumberOfLines:0];
  }

  [v16 setHidden:1];
  [v16 setEnabled:0];
  LODWORD(v20) = 1132068864;
  [v16 setContentCompressionResistancePriority:0 forAxis:v20];
  LODWORD(v21) = 1148846080;
  [v16 setContentHuggingPriority:0 forAxis:v21];
  (*(v15 + 8))(v13, v8);
  return v16;
}

id sub_100002D84(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView_headerLabel;
  *&v2[v4] = sub_1000028A0();
  v5 = OBJC_IVAR____TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView_actionButton;
  *&v2[v5] = sub_1000029A8();
  v6 = &v2[OBJC_IVAR____TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView_action];
  *v6 = 0;
  *(v6 + 1) = 0;
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v11.receiver = v2;
  v11.super_class = type metadata accessor for AppSelectionSectionHeaderView();
  v8 = objc_msgSendSuper2(&v11, "initWithReuseIdentifier:", v7);

  v9 = v8;
  sub_10000301C();

  return v9;
}

uint64_t sub_100002F18(uint64_t a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for AppSelectionSectionHeaderView();
  objc_msgSendSuper2(&v7, "prepareForReuse");
  [*&v1[OBJC_IVAR____TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView_headerLabel] setText:0];
  v2 = *&v1[OBJC_IVAR____TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView_actionButton];
  [v2 setTitle:0 forState:0];
  [v2 setHidden:1];
  [v2 setEnabled:0];
  v3 = &v1[OBJC_IVAR____TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView_action];
  v4 = *&v1[OBJC_IVAR____TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView_action];
  v5 = *&v1[OBJC_IVAR____TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView_action + 8];
  *v3 = 0;
  *(v3 + 1) = 0;
  return sub_100003908(v4, v5);
}

void sub_10000301C()
{
  sub_10000280C(&qword_100033478, "VW");
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10001F190;
  v2 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView_headerLabel];
  v3 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView_actionButton];
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = objc_allocWithZone(UIStackView);
  sub_100003928(0, &qword_100033538, UIView_ptr);
  v5 = v2;
  v32 = v3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [v4 initWithArrangedSubviews:isa];

  v33 = v7;
  [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v33 setAxis:0];
  [v33 setSpacing:8.0];
  [v33 setAlignment:3];
  [v33 setDistribution:0];
  v8 = [v0 contentView];
  [v8 addSubview:v33];

  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10001F150;
  v11 = [v33 topAnchor];
  v12 = [v0 contentView];
  v13 = [v12 layoutMarginsGuide];

  v14 = [v13 topAnchor];
  v15 = [v11 constraintEqualToAnchor:v14];

  *(v10 + 32) = v15;
  v16 = [v33 leadingAnchor];
  v17 = [v0 contentView];
  v18 = [v17 layoutMarginsGuide];

  v19 = [v18 leadingAnchor];
  v20 = [v16 constraintEqualToAnchor:v19];

  *(v10 + 40) = v20;
  v21 = [v33 trailingAnchor];
  v22 = [v0 contentView];
  v23 = [v22 layoutMarginsGuide];

  v24 = [v23 trailingAnchor];
  v25 = [v21 constraintEqualToAnchor:v24];

  *(v10 + 48) = v25;
  v26 = [v33 bottomAnchor];

  v27 = [v0 contentView];
  v28 = [v27 layoutMarginsGuide];

  v29 = [v28 bottomAnchor];
  v30 = [v26 constraintEqualToAnchor:v29];

  *(v10 + 56) = v30;
  sub_100003928(0, &qword_100033480, NSLayoutConstraint_ptr);
  v31 = Array._bridgeToObjectiveC()().super.isa;

  [v9 activateConstraints:v31];

  [v32 addTarget:v0 action:"performAuxillaryAction" forControlEvents:64];
}

id sub_1000034B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v25 = a1;
  v5 = type metadata accessor for UIButton.Configuration.TitleAlignment();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIButton.Configuration.Size();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000280C(&qword_100033530, "hW");
  __chkstk_darwin(v13 - 8);
  v15 = &v25 - v14;
  v16 = *(v4 + OBJC_IVAR____TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView_actionButton);
  static UIButton.Configuration.plain()();

  UIButton.Configuration.title.setter();
  (*(v10 + 104))(v12, enum case for UIButton.Configuration.Size.small(_:), v9);
  UIButton.Configuration.buttonSize.setter();
  (*(v6 + 104))(v8, enum case for UIButton.Configuration.TitleAlignment.trailing(_:), v5);
  UIButton.Configuration.titleAlignment.setter();
  UIButton.Configuration.titlePadding.setter();
  UIButton.Configuration.contentInsets.setter();
  UIButton.Configuration.titleLineBreakMode.setter();
  v17 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.cornerRadius.setter();
  v17(v29, 0);
  v18 = type metadata accessor for UIButton.Configuration();
  (*(*(v18 - 8) + 56))(v15, 0, 1, v18);
  UIButton.configuration.setter();
  [v16 setHidden:{0, v25}];
  [v16 setEnabled:1];
  v19 = v26;
  v20 = &v26[OBJC_IVAR____TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView_action];
  v21 = *&v26[OBJC_IVAR____TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView_action];
  v22 = *&v26[OBJC_IVAR____TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView_action + 8];
  v23 = v28;
  *v20 = v27;
  v20[1] = v23;

  sub_100003908(v21, v22);
  return [v19 setNeedsLayout];
}

id sub_100003850(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppSelectionSectionHeaderView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100003908(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100003918(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100003928(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100003970()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100003A28;

  return GuestUserHandoverService.activate()();
}

uint64_t sub_100003A28()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100003B64, v1, v0);
}

uint64_t sub_100003B64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100003BC4()
{
  v1 = OBJC_IVAR____TtC22GuestUserHandoverSetup17LiveActivityModel_guestUserHandoverService;
  v2 = type metadata accessor for GuestUserHandoverService();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC22GuestUserHandoverSetup17LiveActivityModel_airPlayReceiverCoordinator;
  v4 = type metadata accessor for AirPlayReceiverCoordinator();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t type metadata accessor for LiveActivityModel(uint64_t a1)
{
  result = qword_100033580;
  if (!qword_100033580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100003CF4(uint64_t a1)
{
  result = type metadata accessor for GuestUserHandoverService();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AirPlayReceiverCoordinator();
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

uint64_t sub_100003DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100003DE0, 0, 0);
}

uint64_t sub_100003DE0()
{
  v13 = v0;
  if (qword_100033358 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[4] = sub_10000549C(v1, qword_100034C28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    v6 = _typeName(_:qualified:)();
    v8 = sub_10001C470(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%{public}s] Requesting to end Guest User Mode", v4, 0xCu);
    sub_100005700(v5);
  }

  v0[5] = OBJC_IVAR____TtC22GuestUserHandoverSetup17LiveActivityModel_guestUserHandoverService;
  type metadata accessor for MainActor();
  v0[6] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100003FB0, v10, v9);
}

uint64_t sub_100003FB0()
{

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_100004050;

  return GuestUserHandoverService.endGuestUserMode()();
}

uint64_t sub_100004050()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1000042A4;
  }

  else
  {
    v2 = sub_100004164;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100004164()
{
  v11 = v0;
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136446210;
    v5 = _typeName(_:qualified:)();
    v7 = sub_10001C470(v5, v6, &v10);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%{public}s] Request to end Guest User Mode succeeded", v3, 0xCu);
    sub_100005700(v4);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000042A4()
{
  v13 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v3 = 136446466;
    v6 = _typeName(_:qualified:)();
    v8 = sub_10001C470(v6, v7, &v12);

    *(v3 + 4) = v8;
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v9;
    *v4 = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%{public}s] Request to end Guest User Mode failed with error: %{public}@", v3, 0x16u);
    sub_100005900(v4);

    sub_100005700(v5);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100004464()
{
  v1 = *v0;
  v2 = sub_10000280C(&qword_100033610, &qword_10001F250);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v6[5] = v1;

  sub_10000756C(0, 0, v4, &unk_10001F2A0, v6);
}

uint64_t sub_100004594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1000045B4, 0, 0);
}

uint64_t sub_1000045B4()
{
  v13 = v0;
  if (qword_100033358 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000549C(v1, qword_100034C28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    v6 = _typeName(_:qualified:)();
    v8 = sub_10001C470(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%{public}s] Launching AirPlayReceiver with options to request View Mirroring", v4, 0xCu);
    sub_100005700(v5);
  }

  *(v0 + 32) = OBJC_IVAR____TtC22GuestUserHandoverSetup17LiveActivityModel_airPlayReceiverCoordinator;
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100004780, v10, v9);
}

uint64_t sub_100004780()
{

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_100004820;

  return AirPlayReceiverCoordinator.launchAirPlayReceiver()();
}

uint64_t sub_100004820()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_100004914()
{
  v1 = *v0;
  v2 = sub_10000280C(&qword_100033610, &qword_10001F250);
  __chkstk_darwin(v2 - 8);
  v47 = v46 - v3;
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  if (qword_100033358 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000549C(v6, qword_100034C28);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v46[1] = v1;
  if (v9)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    p_isa = v11;
    *v10 = 136446210;
    v12 = _typeName(_:qualified:)();
    v14 = sub_10001C470(v12, v13, &p_isa);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%{public}s] Posting confirmation alert to end Guest User Mode", v10, 0xCu);
    sub_100005700(v11);
  }

  sub_10000280C(&qword_100033618, &qword_10001F258);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001F1F0;
  if (!kCFUserNotificationAlertHeaderKey)
  {
    __break(1u);
    goto LABEL_15;
  }

  p_isa = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v16;

  AnyHashable.init<A>(_:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17 = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v17;
  *(inited + 80) = v18;
  if (!kCFUserNotificationAlertMessageKey)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  p_isa = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v19;

  AnyHashable.init<A>(_:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20 = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v20;
  *(inited + 152) = v21;
  if (!kCFUserNotificationDefaultButtonTitleKey)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  p_isa = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v22;

  AnyHashable.init<A>(_:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v23 = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 240) = &type metadata for String;
  *(inited + 216) = v23;
  *(inited + 224) = v24;
  if (!kCFUserNotificationAlternateButtonTitleKey)
  {
    goto LABEL_17;
  }

  p_isa = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v25;
  AnyHashable.init<A>(_:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v26 = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 312) = &type metadata for String;
  *(inited + 288) = v26;
  *(inited + 296) = v27;
  p_isa = &kCFUserNotificationAlertTopMostKey->isa;
  v28 = kCFUserNotificationAlertTopMostKey;
  sub_10000280C(&qword_100033620, &qword_10001F260);
  sub_1000054D4();
  AnyHashable.init<A>(_:)();
  *(inited + 384) = &type metadata for Bool;
  *(inited + 360) = 1;
  p_isa = SBUserNotificationDefaultButtonPresentationStyleKey;
  v29 = SBUserNotificationDefaultButtonPresentationStyleKey;
  AnyHashable.init<A>(_:)();
  *(inited + 456) = &type metadata for UInt32;
  *(inited + 432) = 1;
  p_isa = SBUserNotificationDisplayActionButtonOnLockScreen;
  v30 = SBUserNotificationDisplayActionButtonOnLockScreen;
  AnyHashable.init<A>(_:)();
  *(inited + 528) = &type metadata for Bool;
  *(inited + 504) = 1;
  p_isa = SBUserNotificationForcesModalAlertAppearance;
  v31 = SBUserNotificationForcesModalAlertAppearance;
  AnyHashable.init<A>(_:)();
  *(inited + 600) = &type metadata for Bool;
  *(inited + 576) = 1;
  sub_10000621C(inited);
  swift_setDeallocating();
  sub_10000280C(&unk_100033630, &qword_10001F268);
  swift_arrayDestroy();
  v50 = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v33 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 3uLL, &v50, isa);

  if (v33)
  {
    v34 = type metadata accessor for TaskPriority();
    v35 = v47;
    (*(*(v34 - 8) + 56))(v47, 1, 1, v34);
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = 0;
    v36[4] = v33;
    v36[5] = v48;

    sub_10000756C(0, 0, v35, &unk_10001F278, v36);
  }

  else
  {
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v53[0] = swift_slowAlloc();
      *v39 = 136446466;
      v40 = _typeName(_:qualified:)();
      v42 = sub_10001C470(v40, v41, v53);

      *(v39 + 4) = v42;
      *(v39 + 12) = 2082;
      swift_beginAccess();
      v49 = v50;
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = sub_10001C470(v43, v44, v53);

      *(v39 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v37, v38, "[%{public}s] Unable to create user notification with error %{public}s", v39, 0x16u);
      swift_arrayDestroy();
    }
  }
}

uint64_t sub_100005198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[2] = a5;
  v5[3] = *a5;
  sub_10000280C(&qword_100033610, &qword_10001F250);
  v5[4] = swift_task_alloc();
  v6 = swift_task_alloc();
  v5[5] = v6;
  *v6 = v5;
  v6[1] = sub_100005290;

  return CFUserNotificationRef.userResponse()();
}

uint64_t sub_100005290(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_100005390, 0, 0);
}

uint64_t sub_100005390()
{
  if (!v0[6])
  {
    v2 = v0[3];
    v1 = v0[4];
    v3 = v0[2];
    v4 = type metadata accessor for TaskPriority();
    (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
    v5 = swift_allocObject();
    v5[2] = 0;
    v5[3] = 0;
    v5[4] = v3;
    v5[5] = v2;

    sub_10000756C(0, 0, v1, &unk_10001F288, v5);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_10000549C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1000054D4()
{
  result = qword_100033628;
  if (!qword_100033628)
  {
    sub_100005558(&qword_100033620, &qword_10001F260);
    sub_1000055A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100033628);
  }

  return result;
}

uint64_t sub_100005558(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000055A0()
{
  result = qword_1000333E0;
  if (!qword_1000333E0)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000333E0);
  }

  return result;
}

uint64_t sub_1000055F8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100005640(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005A70;

  return sub_100005198(a1, v4, v5, v7, v6);
}

uint64_t sub_100005700(void *a1)
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

uint64_t sub_10000574C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000580C;

  return sub_100003DC0(a1, v4, v5, v7, v6);
}

uint64_t sub_10000580C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100005900(uint64_t a1)
{
  v2 = sub_10000280C(&qword_100034110, &qword_10001F290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000596C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000059AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005A70;

  return sub_100004594(a1, v4, v5, v7, v6);
}

void sub_100005A74()
{
  v0 = sub_10000280C(&qword_100033530, "hW");
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  v18 = type metadata accessor for UIButton.Configuration.Size();
  v3 = *(v18 - 8);
  __chkstk_darwin(v18);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UIButton.Configuration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [objc_msgSend(objc_allocWithZone(UIButton) "init")];
  v10 = [objc_opt_self() sbui_systemApertureSymbolButtonConfiguration];
  static UIButton.Configuration._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = [objc_opt_self() sbui_systemApertureDefaultConfiguration];
  v12 = String._bridgeToObjectiveC()();
  v13 = [objc_opt_self() systemImageNamed:v12 withConfiguration:v11];

  if (v13)
  {

    UIButton.Configuration.image.setter();
    v14 = objc_opt_self();
    v15 = [v14 redColor];
    UIButton.Configuration.baseBackgroundColor.setter();
    v16 = [v14 redColor];
    UIButton.Configuration.baseForegroundColor.setter();
    (*(v3 + 104))(v5, enum case for UIButton.Configuration.Size.medium(_:), v18);
    UIButton.Configuration.buttonSize.setter();
    (*(v7 + 16))(v2, v9, v6);
    (*(v7 + 56))(v2, 0, 1, v6);
    UIButton.configuration.setter();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    __break(1u);
  }
}

id sub_100005DB4()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000549C(v2, qword_100034C10);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10001C470(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s deinit", v5, 0xCu);
    sub_100005700(v6);
  }

  v10 = type metadata accessor for ProxCardSetUpRootViewController();
  v13.receiver = v1;
  v13.super_class = v10;
  return objc_msgSendSuper2(&v13, "dealloc");
}

void sub_100005FAC(char a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for ProxCardSetUpRootViewController();
  objc_msgSendSuper2(&v14, "viewDidAppear:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC22GuestUserHandoverSetup31ProxCardSetUpRootViewController_model];
  v4 = type metadata accessor for AllowGuestProximityCardViewController();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC22GuestUserHandoverSetup37AllowGuestProximityCardViewController_model] = v3;
  v13.receiver = v5;
  v13.super_class = v4;

  v6 = objc_msgSendSuper2(&v13, "initWithContentView:", 0);
  v7 = [objc_opt_self() defaultConfiguration];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() blackColor];
    [v8 setCustomBackgroundColor:v9];

    v10 = v6;
    v11 = [v1 presentProxCardFlowWithDelegate:v1 initialViewController:v10 configuration:v8];

    v12 = *&v1[OBJC_IVAR____TtC22GuestUserHandoverSetup31ProxCardSetUpRootViewController_proxNavigationController];
    *&v1[OBJC_IVAR____TtC22GuestUserHandoverSetup31ProxCardSetUpRootViewController_proxNavigationController] = v11;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_10000621C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000280C(&unk_1000336E0, "|W");
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100006510(v4, v13);
      result = sub_10001CA18(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100006580(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100006338(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000280C(&unk_1000336F0, &qword_10001F2E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10001CAA0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

id sub_10000643C(void *a1)
{
  *&v1[OBJC_IVAR____TtC22GuestUserHandoverSetup31ProxCardSetUpRootViewController_proxNavigationController] = 0;
  *&v1[OBJC_IVAR____TtC22GuestUserHandoverSetup31ProxCardSetUpRootViewController_configurationContext] = a1;
  if (a1 && (v2 = [a1 userInfo]) != 0)
  {
    v3 = v2;
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = v4;
  }

  else
  {
    v5 = sub_10000621C(&_swiftEmptyArrayStorage);
  }

  *&v1[OBJC_IVAR____TtC22GuestUserHandoverSetup31ProxCardSetUpRootViewController_model] = sub_10000B674(v5);
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ProxCardSetUpRootViewController();
  return objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
}

uint64_t sub_100006510(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000280C(&unk_100033630, &qword_10001F268);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100006580(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_100006590()
{
  v0 = [objc_opt_self() blackColor];
  v1 = [v0 colorWithAlphaComponent:0.9];

  qword_100034B60 = v1;
}

id sub_1000065FC(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC22GuestUserHandoverSetup33LiveActivityPlatterViewController_leadingAccessoryView;
  if (qword_100033330 != -1)
  {
    swift_once();
  }

  v5 = qword_100034BD0;
  v6 = objc_allocWithZone(type metadata accessor for LiveActivityImageAccessoryView());
  v7 = sub_1000023A8(v5, 0);
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2[v4] = v7;
  v8 = OBJC_IVAR____TtC22GuestUserHandoverSetup33LiveActivityPlatterViewController_labelAccessoryView;
  v9 = [objc_allocWithZone(type metadata accessor for LiveActivityLabelAccessoryView()) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2[v8] = v9;
  v10 = OBJC_IVAR____TtC22GuestUserHandoverSetup33LiveActivityPlatterViewController_tapGestureInterceptorView;
  v11 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [objc_opt_self() clearColor];
  [v11 setBackgroundColor:v12];

  v13 = [v11 layer];
  [v13 setHitTestsAsOpaque:1];

  *&v2[v10] = v11;
  v14 = OBJC_IVAR____TtC22GuestUserHandoverSetup33LiveActivityPlatterViewController_endGuestUserModeButton;
  sub_100005A74();
  v16 = v15;
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2[v14] = v16;
  *&v2[OBJC_IVAR____TtC22GuestUserHandoverSetup33LiveActivityPlatterViewController_liveActivityModel] = a1;
  v18.receiver = v2;
  v18.super_class = type metadata accessor for LiveActivityPlatterViewController();
  return objc_msgSendSuper2(&v18, "initWithNibName:bundle:", 0, 0);
}

void sub_100006804(uint64_t a1)
{
  v68.receiver = v1;
  v68.super_class = type metadata accessor for LiveActivityPlatterViewController();
  objc_msgSendSuper2(&v68, "viewDidLoad");
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 = v2;
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [v1 view];
  if (!v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = v4;
  v6 = *&v1[OBJC_IVAR____TtC22GuestUserHandoverSetup33LiveActivityPlatterViewController_leadingAccessoryView];
  [v4 addSubview:v6];

  v7 = [v1 view];
  if (!v7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v7;
  v9 = *&v1[OBJC_IVAR____TtC22GuestUserHandoverSetup33LiveActivityPlatterViewController_labelAccessoryView];
  [v7 addSubview:v9];

  v10 = [v1 view];
  if (!v10)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = v10;
  v12 = *&v1[OBJC_IVAR____TtC22GuestUserHandoverSetup33LiveActivityPlatterViewController_tapGestureInterceptorView];
  [v10 addSubview:v12];

  v13 = [v1 view];
  if (!v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v14 = v13;
  v15 = *&v1[OBJC_IVAR____TtC22GuestUserHandoverSetup33LiveActivityPlatterViewController_endGuestUserModeButton];
  [v13 addSubview:v15];

  sub_10000280C(&qword_100033478, "VW");
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10001F2F0;
  v17 = [v6 leadingAnchor];
  v18 = [v1 view];
  if (!v18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v19 = v18;
  v20 = [v18 leadingAnchor];

  v21 = [v17 constraintEqualToAnchor:v20 constant:16.0];
  *(v16 + 32) = v21;
  v22 = [v6 centerYAnchor];
  v23 = [v1 view];
  if (!v23)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v24 = v23;
  v25 = [v23 centerYAnchor];

  v26 = [v22 constraintEqualToAnchor:v25];
  *(v16 + 40) = v26;
  v27 = [v9 leadingAnchor];
  v28 = [v6 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:23.0];

  *(v16 + 48) = v29;
  v30 = [v9 centerYAnchor];
  v31 = [v1 view];
  if (!v31)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v32 = v31;
  v33 = [v31 centerYAnchor];

  v34 = [v30 constraintEqualToAnchor:v33];
  *(v16 + 56) = v34;
  v35 = [v12 topAnchor];
  v36 = [v1 view];
  if (!v36)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v37 = v36;
  v38 = [v36 topAnchor];

  v39 = [v35 constraintEqualToAnchor:v38];
  *(v16 + 64) = v39;
  v40 = [v12 leadingAnchor];
  v41 = [v1 view];
  if (!v41)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v42 = v41;
  v43 = [v41 leadingAnchor];

  v44 = [v40 constraintEqualToAnchor:v43];
  *(v16 + 72) = v44;
  v45 = [v12 trailingAnchor];
  v46 = [v1 view];
  if (!v46)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v47 = v46;
  v48 = [v46 trailingAnchor];

  v49 = [v45 constraintEqualToAnchor:v48];
  *(v16 + 80) = v49;
  v50 = [v12 bottomAnchor];
  v51 = [v1 view];
  if (!v51)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v52 = v51;
  v53 = [v51 bottomAnchor];

  v54 = [v50 constraintEqualToAnchor:v53];
  *(v16 + 88) = v54;
  v55 = [v15 centerYAnchor];
  v56 = [v1 view];
  if (!v56)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v57 = v56;
  v58 = [v56 centerYAnchor];

  v59 = [v55 constraintEqualToAnchor:v58];
  *(v16 + 96) = v59;
  v60 = [v15 trailingAnchor];
  v61 = [v1 view];
  if (v61)
  {
    v62 = v61;
    v63 = objc_opt_self();
    v64 = [v62 trailingAnchor];

    v65 = [v60 constraintEqualToAnchor:v64 constant:-16.0];
    *(v16 + 104) = v65;
    sub_100002854();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v63 activateConstraints:isa];

    v67 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v1 action:"tapGestureDetectedWithSender:"];
    [v12 addGestureRecognizer:v67];
    [v15 addTarget:v1 action:"endGuestUserModeButtonTapped" forControlEvents:64];

    return;
  }

LABEL_29:
  __break(1u);
}

id sub_1000070BC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LiveActivityPlatterViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100007190()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22GuestUserHandoverSetup33LiveActivityPlatterViewController_leadingAccessoryView;
  if (qword_100033330 != -1)
  {
    swift_once();
  }

  v3 = qword_100034BD0;
  v4 = objc_allocWithZone(type metadata accessor for LiveActivityImageAccessoryView());
  v5 = sub_1000023A8(v3, 0);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v2) = v5;
  v6 = OBJC_IVAR____TtC22GuestUserHandoverSetup33LiveActivityPlatterViewController_labelAccessoryView;
  v7 = [objc_allocWithZone(type metadata accessor for LiveActivityLabelAccessoryView()) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v6) = v7;
  v8 = OBJC_IVAR____TtC22GuestUserHandoverSetup33LiveActivityPlatterViewController_tapGestureInterceptorView;
  v9 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [objc_opt_self() clearColor];
  [v9 setBackgroundColor:v10];

  v11 = [v9 layer];
  [v11 setHitTestsAsOpaque:1];

  *(v1 + v8) = v9;
  v12 = OBJC_IVAR____TtC22GuestUserHandoverSetup33LiveActivityPlatterViewController_endGuestUserModeButton;
  sub_100005A74();
  v14 = v13;
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v12) = v14;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100007370(const char *a1, uint64_t (*a2)(void), ...)
{
  swift_getObjectType();
  if (qword_100033358 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000549C(v4, qword_100034C28);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446210;
    v9 = _typeName(_:qualified:)();
    v11 = sub_10001C470(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, a1, v7, 0xCu);
    sub_100005700(v8);
  }

  return a2();
}

void sub_1000074EC(uint64_t a1)
{
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    [v3 pushViewController:a1 animated:1];
  }
}

uint64_t sub_10000756C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000280C(&qword_100033610, &qword_10001F250);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000C77C(a3, v25 - v10, &qword_100033610, &qword_10001F250);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000CBD0(v11, &qword_100033610, &qword_10001F250);
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

      sub_10000CBD0(a3, &qword_100033610, &qword_10001F250);

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

  sub_10000CBD0(a3, &qword_100033610, &qword_10001F250);
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

uint64_t sub_10000786C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_10000280C(&qword_100033610, &qword_10001F250);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for GuestUserRemoteUnlockRequestConfiguration.Version2();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AudioHapticController();
  *(v3 + 16) = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_appRestrictionState) = 1;
  *(v3 + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_shouldPlayAttentionAudioHaptics) = 1;
  GuestUserHandoverService.init()();
  v13 = OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_requestConfiguration;
  v14 = type metadata accessor for GuestUserRemoteUnlockRequestConfiguration.Version1();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v3 + v13, a1, v14);
  static GuestUserRemoteUnlockRequestConfiguration.Version2.emptyConfiguration.getter();
  (*(v10 + 32))(v3 + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_requestDataConfiguration, v12, v9);
  *(v3 + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_playbackBehavior) = a2 & 1;
  *(v3 + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_applicationLibrary) = GuestUserRemoteUnlockRequestConfiguration.Version1.applicationLibrary.getter();
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  type metadata accessor for MainActor();

  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v3;
  sub_10000756C(0, 0, v8, &unk_10001F400, v18);

  (*(v15 + 8))(a1, v14);
  return v3;
}

uint64_t sub_100007B34()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100003A28;

  return GuestUserHandoverService.activate()();
}

uint64_t sub_100007BEC(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_10000280C(&qword_100033610, &qword_10001F250);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for GuestUserRemoteUnlockRequestConfiguration.Version1();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AudioHapticController();
  *(v3 + 16) = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_appRestrictionState) = 1;
  *(v3 + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_shouldPlayAttentionAudioHaptics) = 1;
  GuestUserHandoverService.init()();
  static GuestUserRemoteUnlockRequestConfiguration.Version1.emptyConfiguration.getter();
  (*(v10 + 32))(v3 + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_requestConfiguration, v12, v9);
  v13 = OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_requestDataConfiguration;
  v14 = type metadata accessor for GuestUserRemoteUnlockRequestConfiguration.Version2();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v3 + v13, a1, v14);
  *(v3 + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_playbackBehavior) = a2 & 1;
  *(v3 + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_applicationLibrary) = GuestUserRemoteUnlockRequestConfiguration.Version2.makeApplicationLibrary()();
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  type metadata accessor for MainActor();

  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v3;
  sub_10000756C(0, 0, v8, &unk_10001F3D8, v18);

  (*(v15 + 8))(a1, v14);
  return v3;
}

uint64_t sub_10000802C()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1000080E4;

  return GuestUserHandoverService.activate()();
}

uint64_t sub_1000080E4()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000D338, v1, v0);
}

void sub_100008220()
{
  if (*(v0 + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_shouldPlayAttentionAudioHaptics) == 1)
  {
    if (qword_100033350 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000549C(v1, qword_100034C10);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Playing attention request audio/haptics", v4, 2u);
    }

    v6[4] = sub_10000D30C;
    v6[5] = 0;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_10000B440;
    v6[3] = &unk_10002D308;
    v5 = _Block_copy(v6);

    AudioServicesPlaySystemSoundWithCompletion(0x501u, v5);
    _Block_release(v5);
  }
}

uint64_t sub_100008394()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = type metadata accessor for GuestUserRemoteUnlockRequestConfiguration.Version1();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = type metadata accessor for MainActor();
  v1[8] = static MainActor.shared.getter();
  v3 = swift_task_alloc();
  v1[9] = v3;
  *v3 = v1;
  v3[1] = sub_1000084C8;

  return sub_100008EBC();
}

uint64_t sub_1000084C8(char a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = sub_100008D6C;
    v9 = v5;
    v10 = v7;
  }

  else
  {
    *(v4 + 136) = a1 & 1;
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v12;
    *(v4 + 88) = v11;
    *(v4 + 96) = v12;
    v8 = sub_10000865C;
    v9 = v11;
  }

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10000865C(uint64_t a1)
{
  v23 = v1;
  if (*(v1 + 136) == 1)
  {
    v3 = *(v1 + 40);
    v2 = *(v1 + 48);
    v4 = *(v1 + 32);
    v5 = *(v1 + 16);
    v6 = OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_requestConfiguration;
    static GuestUserRemoteUnlockRequestConfiguration.Version1.emptyConfiguration.getter();
    v7 = static GuestUserRemoteUnlockRequestConfiguration.Version1.== infix(_:_:)();
    (*(v3 + 8))(v2, v4);
    if (v7)
    {
      v8 = *(v1 + 16);
      v9 = OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_requestDataConfiguration;
      v10 = swift_task_alloc();
      *(v1 + 104) = v10;
      *v10 = v1;
      v10[1] = sub_10000895C;

      return GuestUserHandoverService.replayRequest(requestConfiguration:)(v8 + v9);
    }

    else
    {
      v20 = swift_task_alloc();
      *(v1 + 120) = v20;
      *v20 = v1;
      v20[1] = sub_100008C30;

      return GuestUserHandoverService.replayRequest(requestConfiguration:)(v5 + v6);
    }
  }

  else
  {

    if (qword_100033350 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000549C(v11, qword_100034C10);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136446210;
      v16 = _typeName(_:qualified:)();
      v18 = sub_10001C470(v16, v17, &v22);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s unlock request failed", v14, 0xCu);
      sub_100005700(v15);
    }

    v19 = *(v1 + 8);

    return v19();
  }
}

uint64_t sub_10000895C()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_100008DDC;
  }

  else
  {
    v5 = sub_100008A98;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100008A98()
{
  v12 = v0;

  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000549C(v1, qword_100034C10);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v6 = _typeName(_:qualified:)();
    v8 = sub_10001C470(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s successfully sent present prox card request to service", v4, 0xCu);
    sub_100005700(v5);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100008C30()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_100008E4C;
  }

  else
  {
    v5 = sub_10000D330;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100008D6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100008DDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100008E4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100008EBC()
{
  v1[2] = *v0;
  v1[3] = type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_100008F7C, v3, v2);
}

uint64_t sub_100008F7C(uint64_t a1)
{
  v2 = v1[2];
  v3 = static MainActor.shared.getter();
  v1[7] = v3;
  v4 = swift_task_alloc();
  v1[8] = v4;
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  v1[9] = v5;
  *v5 = v1;
  v5[1] = sub_100009084;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v1 + 11, v3, &protocol witness table for MainActor, 0xD000000000000019, 0x8000000100020200, sub_10000D150, v4, &type metadata for Bool);
}

uint64_t sub_100009084()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_100009210;
  }

  else
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1000091A8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000091A8()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100009210()
{

  v1 = *(v0 + 8);

  return v1(0);
}

void sub_10000928C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000280C(&qword_100033948, &qword_10001F438);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_10000D1F8;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100009730;
  aBlock[3] = &unk_10002D2E0;
  v11 = _Block_copy(aBlock);

  SBSRequestPasscodeUnlockUI();
  _Block_release(v11);
}

uint64_t sub_100009440(char a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 1) != 0 && MKBGetDeviceLockState() - 1 >= 2)
  {
    if (qword_100033350 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000549C(v12, qword_100034C10);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20 = v16;
      *v15 = 136446210;
      v17 = _typeName(_:qualified:)();
      v19 = sub_10001C470(v17, v18, &v20);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s unlock request succeeded", v15, 0xCu);
      sub_100005700(v16);
    }

    LOBYTE(v20) = 1;
    sub_10000280C(&qword_100033948, &qword_10001F438);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (qword_100033350 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000549C(v3, qword_100034C10);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v20 = v7;
      *v6 = 136446210;
      v8 = _typeName(_:qualified:)();
      v10 = sub_10001C470(v8, v9, &v20);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s unlock request failed", v6, 0xCu);
      sub_100005700(v7);
    }

    sub_10000D2B8();
    v20 = swift_allocError();
    sub_10000280C(&qword_100033948, &qword_10001F438);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_100009730(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = a2 != 0;

  v2(v3);
}

uint64_t sub_100009788()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_10000280C(&qword_100033610, &qword_10001F250);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for GuestUserRemoteUnlockResponse();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v13 = type metadata accessor for GuestUserAccessError();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  sub_10000CC30(v12, v10);
  type metadata accessor for MainActor();

  v15 = static MainActor.shared.getter();
  v16 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v18[2] = v15;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v1;
  sub_10000CC98(v10, v18 + v16);
  *(v18 + v17) = v2;
  sub_10000756C(0, 0, v5, &unk_10001F430, v18);

  return sub_10000CE2C(v12);
}

uint64_t sub_100009A14()
{
  v1 = v0;
  v18 = *v0;
  v2 = sub_10000280C(&qword_100033610, &qword_10001F250);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for ViewMirroringDevice();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for GuestUserRemoteUnlockResponse();
  v17 = *(v6 - 8);
  v7 = *(v17 + 64);
  v8 = __chkstk_darwin(v6);
  v9 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v17 - v10;
  static ViewMirroringDevice.localDevice.getter();
  if (*(v0 + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_appRestrictionState) == 1)
  {

    ApplicationLibrary.selectedApplicationBundleIds.getter();
  }

  GuestUserModeConfiguration.init(viewMirroringDevice:appRestrictionState:allowedApplicationBundleIds:)();
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  sub_10000CC30(v11, v9);
  type metadata accessor for MainActor();

  v13 = static MainActor.shared.getter();
  v14 = (*(v17 + 80) + 40) & ~*(v17 + 80);
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v1;
  sub_10000CC98(v9, v15 + v14);
  *(v15 + ((v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;
  sub_10000756C(0, 0, v4, &unk_10001F428, v15);

  return sub_10000CE2C(v11);
}

uint64_t sub_100009D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = a6;
  v6[4] = type metadata accessor for MainActor();
  v8 = static MainActor.shared.getter();
  v9 = OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_service;
  v6[5] = v8;
  v6[6] = v9;
  v10 = swift_task_alloc();
  v6[7] = v10;
  *v10 = v6;
  v10[1] = sub_100009DDC;

  return GuestUserHandoverService.sendGuestUserAccessResponse(_:)(a5);
}

uint64_t sub_100009DDC()
{
  v2 = *v1;
  v2[8] = v0;

  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[9] = v4;
  v2[10] = v3;
  if (v0)
  {
    v5 = sub_10000A2A0;
  }

  else
  {
    v5 = sub_100009F3C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100009F3C()
{
  v12 = v0;
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000549C(v1, qword_100034C10);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v6 = _typeName(_:qualified:)();
    v8 = sub_10001C470(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s successfully sent Guest User Mode response", v4, 0xCu);
    sub_100005700(v5);
  }

  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *v9 = v0;
  v9[1] = sub_10000A104;

  return GuestUserHandoverService.dismissRequest()();
}

uint64_t sub_10000A104()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_10000A4B8;
  }

  else
  {
    v5 = sub_10000A240;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10000A240()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000A2A0()
{
  v14 = v0;

  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000549C(v1, qword_100034C10);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v4 = 136446466;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10001C470(v7, v8, &v13);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v10;
    *v5 = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s error sending Guest User Mode response: %{public}@", v4, 0x16u);
    sub_10000CBD0(v5, &qword_100034110, &qword_10001F290);

    sub_100005700(v6);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10000A4B8()
{
  v14 = v0;

  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000549C(v1, qword_100034C10);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v4 = 136446466;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10001C470(v7, v8, &v13);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v10;
    *v5 = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s error sending Guest User Mode response: %{public}@", v4, 0x16u);
    sub_10000CBD0(v5, &qword_100034110, &qword_10001F290);

    sub_100005700(v6);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10000A6D0(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = type metadata accessor for GuestUserAccessError();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000280C(&qword_100033610, &qword_10001F250);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v6 + 16))(v8, a1, v5);
  type metadata accessor for MainActor();

  v13 = static MainActor.shared.getter();
  v14 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v15 = (v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 2) = v13;
  *(v16 + 3) = &protocol witness table for MainActor;
  *(v16 + 4) = v2;
  (*(v6 + 32))(&v16[v14], v8, v5);
  *&v16[v15] = v4;
  sub_10000F63C(0, 0, v11, &unk_10001F410, v16);
}

uint64_t sub_10000A90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = a6;
  v6[4] = type metadata accessor for MainActor();
  v8 = static MainActor.shared.getter();
  v9 = OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_service;
  v6[5] = v8;
  v6[6] = v9;
  v10 = swift_task_alloc();
  v6[7] = v10;
  *v10 = v6;
  v10[1] = sub_10000A9D8;

  return GuestUserHandoverService.transportError(_:)(a5);
}

uint64_t sub_10000A9D8()
{
  *(*v1 + 64) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10000AEBC;
  }

  else
  {
    v4 = sub_10000AB34;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10000AB34()
{
  v12 = v0;
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000549C(v1, qword_100034C10);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v6 = _typeName(_:qualified:)();
    v8 = sub_10001C470(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s successfully sent Guest Mode Error", v4, 0xCu);
    sub_100005700(v5);
  }

  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_10000ACFC;

  return GuestUserHandoverService.dismissRequest()();
}

uint64_t sub_10000ACFC()
{
  *(*v1 + 80) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10000B114;
  }

  else
  {
    v4 = sub_10000AE58;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10000AE58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000AEBC()
{
  v14 = v0;
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000549C(v1, qword_100034C10);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v4 = 136446466;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10001C470(v7, v8, &v13);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v10;
    *v5 = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s error sending Guest Mode Error: %{public}@", v4, 0x16u);
    sub_10000CBD0(v5, &qword_100034110, &qword_10001F290);

    sub_100005700(v6);
  }

  else
  {
  }

  v11 = swift_task_alloc();
  *(v0 + 72) = v11;
  *v11 = v0;
  v11[1] = sub_10000ACFC;

  return GuestUserHandoverService.dismissRequest()();
}

uint64_t sub_10000B114()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000B178()
{

  v1 = OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_requestConfiguration;
  v2 = type metadata accessor for GuestUserRemoteUnlockRequestConfiguration.Version1();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_requestDataConfiguration;
  v4 = type metadata accessor for GuestUserRemoteUnlockRequestConfiguration.Version2();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_service;
  v6 = type metadata accessor for GuestUserHandoverService();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v7, v8);
}

uint64_t type metadata accessor for ProxCardSetUpModel(uint64_t a1)
{
  result = qword_100033780;
  if (!qword_100033780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000B300(uint64_t a1)
{
  result = type metadata accessor for GuestUserRemoteUnlockRequestConfiguration.Version1();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for GuestUserRemoteUnlockRequestConfiguration.Version2();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for GuestUserHandoverService();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_10000B440(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10000B484(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000B57C;

  return v6(a1);
}

uint64_t sub_10000B57C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000B674(uint64_t a1)
{
  v2 = sub_10000280C(&qword_100033900, &qword_10001F3B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v82 - v3;
  v5 = type metadata accessor for GuestUserRemoteUnlockRequestConfiguration.Version2();
  v85 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v83 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v82 - v8;
  v10 = sub_10000280C(&qword_100033908, &qword_10001F3B8);
  __chkstk_darwin(v10 - 8);
  v88 = &v82 - v11;
  v90 = type metadata accessor for GuestUserRemoteUnlockRequestConfiguration.Version1();
  v89 = *(v90 - 8);
  v12 = __chkstk_darwin(v90);
  v91 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v87 = &v82 - v14;
  if (qword_100033350 != -1)
  {
LABEL_77:
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000549C(v15, qword_100034C10);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  v18 = os_log_type_enabled(v16, v17);
  v86 = v5;
  v84 = v9;
  v82 = v4;
  if (v18)
  {
    v9 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v97[0] = v19;
    *v9 = 136446210;
    v20 = Dictionary.description.getter();
    v22 = sub_10001C470(v20, v21, v97);

    *(v9 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "contextUserInfo %{public}s", v9, 0xCu);
    sub_100005700(v19);
  }

  v99 = static GuestUserHandoverSetupCoordinator.Constants.isRetriggerKey.getter();
  v100 = v23;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v24 = sub_10001CA18(v97), (v25 & 1) == 0))
  {
    sub_10000C4A0(v97);
LABEL_10:
    v92 = 0;
    goto LABEL_11;
  }

  sub_10000C550(*(a1 + 56) + 32 * v24, &v94);
  sub_10000C4A0(v97);
  if ((swift_dynamicCast() & 1) == 0 || (v99 & 1) == 0)
  {
    goto LABEL_10;
  }

  v92 = 1;
LABEL_11:
  v5 = a1 + 64;
  v26 = 1 << *(a1 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(a1 + 64);
  v4 = (v26 + 63) >> 6;

  v29 = 0;
  v30 = &qword_100033910;
  v31 = &unk_10001F3C0;
  v93 = a1;
  while (1)
  {
    while (1)
    {
      if (!v28)
      {
        while (1)
        {
          v32 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            __break(1u);
            goto LABEL_76;
          }

          if (v32 >= v4)
          {
            break;
          }

          v28 = *(v5 + 8 * v32);
          ++v29;
          if (v28)
          {
            v29 = v32;
            goto LABEL_20;
          }
        }

        v42 = 1 << *(a1 + 32);
        v43 = -1;
        if (v42 < 64)
        {
          v43 = ~(-1 << v42);
        }

        v44 = v43 & *(a1 + 64);
        v45 = (v42 + 63) >> 6;

        v4 = 0;
        while (v44)
        {
LABEL_38:
          v47 = __clz(__rbit64(v44));
          v44 &= v44 - 1;
          v48 = v47 | (v4 << 6);
          sub_10000C4F4(*(a1 + 48) + 40 * v48, v97);
          sub_10000C550(*(a1 + 56) + 32 * v48, v98);
          sub_10000C77C(v97, &v94, &qword_100033910, &unk_10001F3C0);
          v49 = swift_dynamicCast();
          v9 = v100;
          if (v49)
          {
            v50 = v99;
          }

          else
          {
            v50 = 0;
          }

          v51 = static GuestUserHandoverSetupCoordinator.Constants.requestDataConfigurationKey.getter();
          if (v49 && v9)
          {
            if (v50 == v51 && v9 == v52)
            {

              sub_10000CBD0(v97, &qword_100033910, &unk_10001F3C0);
              sub_100005700(v96);
LABEL_58:

              v94 = static GuestUserHandoverSetupCoordinator.Constants.requestDataConfigurationKey.getter();
              v95 = v68;
              AnyHashable.init<A>(_:)();
              if (*(a1 + 16) && (v69 = sub_10001CA18(v97), (v70 & 1) != 0))
              {
                sub_10000C550(*(a1 + 56) + 32 * v69, &v94);
                sub_10000C4A0(v97);

                v71 = swift_dynamicCast();
                v72 = v86;
                v73 = v84;
                v74 = v82;
                if (v71)
                {
                  v75 = v99;
                  v76 = v100;
                }

                else
                {
                  v75 = 0;
                  v76 = 0xF000000000000000;
                }
              }

              else
              {

                sub_10000C4A0(v97);
                v75 = 0;
                v76 = 0xF000000000000000;
                v72 = v86;
                v73 = v84;
                v74 = v82;
              }

              sub_10000C5AC(v75, v76);
              sub_10000C67C(&qword_100033930, &type metadata accessor for GuestUserRemoteUnlockRequestConfiguration.Version2, &protocol conformance descriptor for GuestUserRemoteUnlockRequestConfiguration.Version2);
              sub_10000C67C(&qword_100033938, &type metadata accessor for GuestUserRemoteUnlockRequestConfiguration.Version2, &protocol conformance descriptor for GuestUserRemoteUnlockRequestConfiguration.Version2);
              sub_10000C67C(&qword_100033940, &type metadata accessor for GuestUserRemoteUnlockRequestConfiguration.Version2, &protocol conformance descriptor for GuestUserRemoteUnlockRequestConfiguration.Version2);
              TransportSerializable<>.init(transportData:)();
              v79 = v85;
              v80 = (*(v85 + 48))(v74, 1, v72);
              v57 = v92;
              if (v80 == 1)
              {
                static GuestUserRemoteUnlockRequestConfiguration.Version2.emptyConfiguration.getter();
                if ((*(v79 + 48))(v74, 1, v72) != 1)
                {
                  sub_10000CBD0(v74, &qword_100033900, &qword_10001F3B0);
                }
              }

              else
              {
                (*(v79 + 32))(v73, v74, v72);
              }

              v81 = v83;
              (*(v79 + 16))(v83, v73, v72);
              type metadata accessor for ProxCardSetUpModel(0);
              v55 = swift_allocObject();
              sub_100007BEC(v81, v57);
              sub_10000C614(v75, v76);
              (*(v79 + 8))(v73, v72);
              goto LABEL_48;
            }

            v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

            sub_10000CBD0(v97, &qword_100033910, &unk_10001F3C0);
            sub_100005700(v96);
            if (v53)
            {
              goto LABEL_58;
            }
          }

          else
          {
            sub_10000CBD0(v97, &qword_100033910, &unk_10001F3C0);

            sub_100005700(v96);
          }
        }

        while (1)
        {
          v46 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            break;
          }

          if (v46 >= v45)
          {

            v54 = v91;
            static GuestUserRemoteUnlockRequestConfiguration.Version1.emptyConfiguration.getter();
            type metadata accessor for ProxCardSetUpModel(0);
            v55 = swift_allocObject();
            v56 = v54;
            v57 = v92;
            sub_10000786C(v56, v92);
            goto LABEL_48;
          }

          v44 = *(v5 + 8 * v46);
          ++v4;
          if (v44)
          {
            v4 = v46;
            goto LABEL_38;
          }
        }

LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

LABEL_20:
      v33 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v34 = v33 | (v29 << 6);
      sub_10000C4F4(*(a1 + 48) + 40 * v34, v97);
      sub_10000C550(*(a1 + 56) + 32 * v34, v98);
      v9 = v30;
      v35 = v31;
      sub_10000C77C(v97, &v94, v30, v31);
      v36 = swift_dynamicCast();
      v37 = v100;
      v38 = v36 ? v99 : 0;
      v39 = static GuestUserHandoverSetupCoordinator.Constants.requestConfigurationKey.getter();
      if (v36)
      {
        if (v37)
        {
          break;
        }
      }

      v30 = v9;
      v31 = v35;
      sub_10000CBD0(v97, v9, v35);

      sub_100005700(v96);
      a1 = v93;
    }

    if (v38 == v39 && v37 == v40)
    {
      break;
    }

    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v30 = v9;
    v31 = v35;
    sub_10000CBD0(v97, v9, v35);
    sub_100005700(v96);
    a1 = v93;
    if (v41)
    {
      goto LABEL_50;
    }
  }

  sub_10000CBD0(v97, &qword_100033910, &unk_10001F3C0);
  sub_100005700(v96);
  a1 = v93;
LABEL_50:

  v94 = static GuestUserHandoverSetupCoordinator.Constants.requestConfigurationKey.getter();
  v95 = v59;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v60 = sub_10001CA18(v97), (v61 & 1) != 0))
  {
    sub_10000C550(*(a1 + 56) + 32 * v60, &v94);
    sub_10000C4A0(v97);

    if (swift_dynamicCast())
    {
      v62 = v99;
      v63 = v100;
      goto LABEL_56;
    }
  }

  else
  {

    sub_10000C4A0(v97);
  }

  v62 = 0;
  v63 = 0xF000000000000000;
LABEL_56:
  v64 = v91;
  v65 = v90;
  v66 = v89;
  sub_10000C5AC(v62, v63);
  sub_10000C67C(&qword_100033918, &type metadata accessor for GuestUserRemoteUnlockRequestConfiguration.Version1, &protocol conformance descriptor for GuestUserRemoteUnlockRequestConfiguration.Version1);
  sub_10000C67C(&qword_100033920, &type metadata accessor for GuestUserRemoteUnlockRequestConfiguration.Version1, &protocol conformance descriptor for GuestUserRemoteUnlockRequestConfiguration.Version1);
  sub_10000C67C(&qword_100033928, &type metadata accessor for GuestUserRemoteUnlockRequestConfiguration.Version1, &protocol conformance descriptor for GuestUserRemoteUnlockRequestConfiguration.Version1);
  v67 = v88;
  TransportSerializable<>.init(transportData:)();
  v77 = (*(v66 + 48))(v67, 1, v65);
  v57 = v92;
  if (v77 == 1)
  {
    v78 = v87;
    static GuestUserRemoteUnlockRequestConfiguration.Version1.emptyConfiguration.getter();
    if ((*(v66 + 48))(v67, 1, v65) != 1)
    {
      sub_10000CBD0(v67, &qword_100033908, &qword_10001F3B8);
    }
  }

  else
  {
    v78 = v87;
    (*(v66 + 32))(v87, v67, v65);
  }

  (*(v66 + 16))(v64, v78, v65);
  type metadata accessor for ProxCardSetUpModel(0);
  v55 = swift_allocObject();
  sub_10000786C(v64, v57);
  sub_10000C614(v62, v63);
  (*(v66 + 8))(v78, v65);
LABEL_48:
  *(v55 + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_shouldPlayAttentionAudioHaptics) = v57 ^ 1;
  return v55;
}

uint64_t sub_10000C550(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000C5AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000C5C0(a1, a2);
  }

  return a1;
}

uint64_t sub_10000C5C0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000C614(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000C628(a1, a2);
  }

  return a1;
}

uint64_t sub_10000C628(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000C67C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000C6C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005A70;

  return sub_10000802C();
}

uint64_t sub_10000C77C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000280C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000C7E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C81C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005A70;

  return sub_10000B484(a1, v4);
}

uint64_t sub_10000C8D4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000C914()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005A70;

  return sub_100007B34();
}

uint64_t sub_10000C9C8()
{
  v1 = type metadata accessor for GuestUserAccessError();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000CAA0(uint64_t a1)
{
  v4 = *(type metadata accessor for GuestUserAccessError() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000580C;

  return sub_10000A90C(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_10000CBD0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000280C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000CC30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GuestUserRemoteUnlockResponse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000CC98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GuestUserRemoteUnlockResponse();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000CCFC(uint64_t a1)
{
  v4 = *(type metadata accessor for GuestUserRemoteUnlockResponse() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100005A70;

  return sub_100009D10(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_10000CE2C(uint64_t a1)
{
  v2 = type metadata accessor for GuestUserRemoteUnlockResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000CE88()
{
  v1 = *(type metadata accessor for GuestUserRemoteUnlockResponse() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for GuestUserModeConfiguration();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
    v6 = type metadata accessor for GuestUserAccessError();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v0 + v3, 1, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_10000D020(uint64_t a1)
{
  v4 = *(type metadata accessor for GuestUserRemoteUnlockResponse() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000580C;

  return sub_100009D10(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_10000D158()
{
  v1 = sub_10000280C(&qword_100033948, &qword_10001F438);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000D1F8(char a1)
{
  v3 = *(sub_10000280C(&qword_100033948, &qword_10001F438) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100009440(a1, v1 + v4, v5);
}

uint64_t sub_10000D2A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000D2B8()
{
  result = qword_100033950;
  if (!qword_100033950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100033950);
  }

  return result;
}

void sub_10000D33C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v17.receiver = v0;
  v17.super_class = type metadata accessor for ErrorProximityCardViewController(0);
  objc_msgSendSuper2(&v17, "viewDidLoad");
  sub_1000186CC();
  sub_10000D608();
  v5 = String._bridgeToObjectiveC()();

  [v0 setTitle:v5];

  type metadata accessor for GuestUserAccessError();
  sub_10000DFCC();
  Error.localizedDescription.getter();
  v6 = String._bridgeToObjectiveC()();

  [v0 setSubtitle:v6];

  sub_10000280C(&qword_100033478, "VW");
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10001F4A0;
  sub_10000DA80();
  *(v7 + 32) = v8;
  sub_10000E024();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setImages:isa];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v10 = String.init(localized:table:bundle:locale:comment:)();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = ObjectType;
  v14 = v1;
  v15 = sub_100019718(v10, v12, 0, sub_10000E0A8, v13);

  v16 = [v14 addAction:v15];
}

uint64_t sub_10000D608()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for GuestUserAccessError();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = *(v6 + 16);
  v12(&v26 - v10, v0, v5);
  if ((*(v6 + 88))(v11, v5) == enum case for GuestUserAccessError.remoteUnlockFailed(_:))
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  else
  {
    v30 = v3;
    if (qword_100033350 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000549C(v14, qword_100034C10);
    v12(v9, v0, v5);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v28 = v16;
      v18 = v17;
      v27 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31 = v29;
      *v18 = 136446466;
      *(v18 + 4) = sub_10001C470(0xD000000000000014, 0x8000000100020320, &v31);
      *(v18 + 12) = 2114;
      sub_10000DFCC();
      swift_allocError();
      v12(v19, v9, v5);
      v20 = _swift_stdlib_bridgeErrorToNSError();
      v21 = v9;
      v22 = *(v6 + 8);
      v22(v21, v5);
      *(v18 + 14) = v20;
      v23 = v27;
      *v27 = v20;
      _os_log_impl(&_mh_execute_header, v15, v28, "%{public}s found unexpected GuestUserAccessError: (%{public}@; falling back to .remoteUnlockFailed", v18, 0x16u);
      sub_100005900(v23);

      sub_100005700(v29);
    }

    else
    {

      v24 = v9;
      v22 = *(v6 + 8);
      v22(v24, v5);
    }

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v25 = String.init(localized:table:bundle:locale:comment:)();
    v22(v11, v5);
    return v25;
  }
}

void sub_10000DA80()
{
  v0 = [objc_opt_self() systemYellowColor];
  v1 = [objc_opt_self() configurationWithPointSize:100.0];
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() _systemImageNamed:v2 withConfiguration:v1];

  if (v3)
  {
    [v3 imageWithTintColor:v0 renderingMode:1];
  }

  else
  {
    __break(1u);
  }
}

id sub_10000DB88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000549C(v7, qword_100034C10);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v10 = 136446466;
    v11 = _typeName(_:qualified:)();
    v13 = sub_10001C470(v11, v12, &v16);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_10001C470(0x4C64694477656976, 0xED0000292864616FLL, &v16);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s %{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  ObjectType = swift_getObjectType();
  (*(a2 + 8))(ObjectType, a2);
  sub_10000A6D0(a3 + OBJC_IVAR____TtC22GuestUserHandoverSetup32ErrorProximityCardViewController_error);

  return [a1 dismissViewControllerAnimated:1 completion:0];
}

id sub_10000DE14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ErrorProximityCardViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ErrorProximityCardViewController(uint64_t a1)
{
  result = qword_100033988;
  if (!qword_100033988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000DF1C(uint64_t a1)
{
  result = type metadata accessor for GuestUserAccessError();
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

unint64_t sub_10000DFCC()
{
  result = qword_100033998;
  if (!qword_100033998)
  {
    type metadata accessor for GuestUserAccessError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100033998);
  }

  return result;
}

unint64_t sub_10000E024()
{
  result = qword_1000339A0;
  if (!qword_1000339A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000339A0);
  }

  return result;
}

uint64_t sub_10000E070()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E0B0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

id sub_10000E224(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v4, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

id sub_10000E308(void *a1)
{
  swift_getObjectType();
  v2 = [a1 role];
  v3 = [objc_allocWithZone(UISceneConfiguration) initWithName:0 sessionRole:v2];

  v4 = [a1 role];
  v21[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21[1] = v5;
  v20[2] = v21;
  LOBYTE(v2) = sub_10000E0B0(sub_10000E5B8, v20, &off_10002CF08);

  if (v2)
  {
    type metadata accessor for LiveActivitySceneDelegate();
  }

  else
  {
    type metadata accessor for ProxCardSetUpSceneDelegate();
  }

  [v3 setDelegateClass:swift_getObjCClassFromMetadata()];
  if (qword_100033340 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000549C(v6, qword_100034BE0);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v21[0] = swift_slowAlloc();
    *v10 = 136446466;
    v11 = _typeName(_:qualified:)();
    v13 = sub_10001C470(v11, v12, v21);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    v14 = [v7 role];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = sub_10001C470(v15, v17, v21);

    *(v10 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s application configuring for role %{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  return v3;
}

uint64_t sub_10000E5B8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

id sub_10000E610(double a1)
{
  v2 = v1;
  v4 = Application.bundleIdentifier.getter();
  v6 = v5;
  swift_beginAccess();
  v7 = *(v1 + 16);
  if (*(v7 + 16) && (, v8 = sub_10001CAA0(v4, v6), v10 = v9, , (v10 & 1) != 0))
  {
    v11 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {

    v12 = Application.appIconImage.getter();
    if (v12)
    {
      v13 = v12;
      v14 = [objc_allocWithZone(UIImage) initWithCGImage:v12 scale:0 orientation:a1];
    }

    else
    {
      if (qword_100033328 != -1)
      {
        swift_once();
      }

      v14 = qword_100033A40;
    }

    v11 = v14;
    v15 = Application.bundleIdentifier.getter();
    v17 = v16;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v2 + 16);
    *(v2 + 16) = 0x8000000000000000;
    sub_10000EBA0(v11, v15, v17, isUniquelyReferenced_nonNull_native);

    *(v2 + 16) = v20;
    swift_endAccess();
  }

  return v11;
}

uint64_t sub_10000E7D4()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

void sub_10000E830()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() systemImageNamed:v0];

  if (v1)
  {
    v2 = [objc_opt_self() systemBlueColor];
    v3 = [v1 imageWithTintColor:v2];

    qword_100033A40 = v3;
  }

  else
  {
    __break(1u);
  }
}

Swift::Int sub_10000E8FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000280C(&unk_1000336F0, &qword_10001F2E0);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10000EBA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10001CAA0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10000E8FC(v16, a4 & 1);
      v11 = sub_10001CAA0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_10000ED18();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

id sub_10000ED18()
{
  v1 = v0;
  sub_10000280C(&unk_1000336F0, &qword_10001F2E0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10000EE84(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10000280C(&qword_100033610, &qword_10001F250);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  type metadata accessor for MainActor();
  v14 = a3;

  v15 = a1;
  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v14;
  v17[5] = a4;
  v17[6] = a5;
  v17[7] = v15;
  v17[8] = a2;
  sub_10000F63C(0, 0, v12, &unk_10001F5B0, v17);
}

uint64_t sub_10000EFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  type metadata accessor for MainActor();
  v8[7] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[8] = v10;
  v8[9] = v9;

  return _swift_task_switch(sub_10000F084, v10, v9);
}

uint64_t sub_10000F084()
{
  v21 = v0;
  v1 = [*(v0 + 16) actions];
  sub_100003928(0, &qword_100033B38, PRXAction_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_18:

    if (qword_100033350 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000549C(v13, qword_100034C10);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v20 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_10001C470(0xD000000000000025, 0x800000010001F530, &v20);
      _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s unable to find primary action", v16, 0xCu);
      sub_100005700(v17);
    }

    v18 = *(v0 + 8);

    return v18();
  }

LABEL_17:
  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_18;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    *(v0 + 80) = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (![v5 style])
    {
      break;
    }

    ++v4;
    if (v7 == v3)
    {
      goto LABEL_18;
    }
  }

  v8 = *(v0 + 24);

  [v6 setEnabled:0];
  v19 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *v9 = v0;
  v9[1] = sub_10000F400;
  v11 = *(v0 + 40);
  v10 = *(v0 + 48);

  return v19(v11, v10);
}

uint64_t sub_10000F400()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_10000F5BC;
  }

  else
  {
    v5 = sub_10000F53C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10000F53C()
{
  v1 = *(v0 + 80);

  [v1 setEnabled:1];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000F5BC()
{
  v1 = *(v0 + 80);

  [v1 setEnabled:1];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000F63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10000280C(&qword_100033610, &qword_10001F250);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100010FFC(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10001106C(v10);
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

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_10001106C(a3);

      return v20;
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

  sub_10001106C(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

id sub_10000F8A8()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000549C(v2, qword_100034C10);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10001C470(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s deinit", v5, 0xCu);
    sub_100005700(v6);
  }

  v10 = type metadata accessor for AllowGuestProximityCardViewController();
  v13.receiver = v1;
  v13.super_class = v10;
  return objc_msgSendSuper2(&v13, "dealloc");
}

void sub_10000FA54()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v28.receiver = v0;
  v28.super_class = type metadata accessor for AllowGuestProximityCardViewController();
  objc_msgSendSuper2(&v28, "viewDidLoad");
  sub_100018938();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v5 = String._bridgeToObjectiveC()();

  [v0 setTitle:v5];

  sub_10001090C();
  if (MKBGetDeviceLockState() - 1 > 1)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v12 = String.init(localized:table:bundle:locale:comment:)();
    v14 = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = ObjectType;
    v16 = sub_100019768(v12, v14, 0, sub_100010DC8, v15);

    v17 = [v1 addAction:v16];

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v18 = String.init(localized:table:bundle:locale:comment:)();
    v20 = v19;
    v21 = swift_allocObject();
    *(v21 + 16) = ObjectType;
    v22 = objc_opt_self();
    v23 = objc_opt_self();
    v24 = [v23 systemBlackColor];
    v25 = [v23 systemWhiteColor];
    v26 = [v22 initWithBackgroundColor:v24 textColor:v25];

    v11 = sub_10001991C(v18, v20, v26, sub_100010DD0, v21);
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v6 = String.init(localized:table:bundle:locale:comment:)();
    v8 = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = ObjectType;
    v10 = swift_allocObject();
    v10[2] = v1;
    v10[3] = &unk_10001F598;
    v10[4] = v9;
    v1;

    v11 = sub_100019768(v6, v8, 0, sub_100010EC4, v10);
  }

  v27 = [v1 addAction:v11];
}

uint64_t sub_10000FEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[6] = v5;
  v3[7] = v4;

  return _swift_task_switch(sub_10000FF8C, v5, v4);
}

uint64_t sub_10000FF8C()
{
  v14 = v0;
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000549C(v1, qword_100034C10);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136446210;
    v6 = _typeName(_:qualified:)();
    v8 = sub_10001C470(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s requesting passcode unlock", v4, 0xCu);
    sub_100005700(v5);
  }

  v9 = v0[3];
  ObjectType = swift_getObjectType();
  v0[8] = (*(v9 + 8))(ObjectType, v9);
  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = sub_100010170;

  return sub_100008394();
}

uint64_t sub_100010170()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_10001028C;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_10000AE58;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10001028C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1000102FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000549C(v4, qword_100034C10);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    v9 = _typeName(_:qualified:)();
    v11 = sub_10001C470(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s continue guest user set up", v7, 0xCu);
    sub_100005700(v8);
  }

  swift_getObjectType();
  v12 = (*(a2 + 8))();
  v13 = type metadata accessor for AppRestrictionProximityCardViewController();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC22GuestUserHandoverSetup41AppRestrictionProximityCardViewController_model] = v12;
  v17.receiver = v14;
  v17.super_class = v13;
  v15 = objc_msgSendSuper2(&v17, "initWithContentView:", 0);
  sub_1000074EC(v15);
}

id sub_1000104D8(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000549C(v5, qword_100034C10);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v8 = 136446466;
    v9 = _typeName(_:qualified:)();
    v11 = sub_10001C470(v9, v10, &v14);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_10001C470(0x4C64694477656976, 0xED0000292864616FLL, &v14);
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  ObjectType = swift_getObjectType();
  (*(a2 + 8))(ObjectType, a2);
  sub_100009788();

  return [a1 dismissViewControllerAnimated:1 completion:0];
}

void sub_100010714(char a1)
{
  swift_getObjectType();
  v12.receiver = v1;
  v12.super_class = type metadata accessor for AllowGuestProximityCardViewController();
  objc_msgSendSuper2(&v12, "viewDidAppear:", a1 & 1);
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000549C(v3, qword_100034C10);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136446466;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10001C470(v8, v9, &v11);

    *(v6 + 4) = v10;
    *(v6 + 12) = 1026;
    *(v6 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s viewDidAppear animated:%{BOOL,public}d", v6, 0x12u);
    sub_100005700(v7);
  }

  sub_100008220();
}

void sub_10001090C()
{
  v1 = v0;
  v2 = *(*&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup37AllowGuestProximityCardViewController_model] + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_playbackBehavior);
  v3 = objc_allocWithZone(type metadata accessor for VideoPlayerView());
  v4 = sub_1000118BC(v2);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [v0 contentView];
  [v5 addSubview:v4];

  v31 = objc_opt_self();
  sub_10000280C(&qword_100033478, "VW");
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10001F540;
  v7 = [v4 topAnchor];
  v8 = [v1 contentView];
  v9 = [v8 mainContentGuide];

  v10 = [v9 topAnchor];
  v11 = [v7 constraintGreaterThanOrEqualToAnchor:v10];

  *(v6 + 32) = v11;
  v12 = [v4 centerXAnchor];
  v13 = [v1 contentView];
  v14 = [v13 mainContentGuide];

  v15 = [v14 centerXAnchor];
  v16 = [v12 constraintEqualToAnchor:v15];

  *(v6 + 40) = v16;
  v17 = [v4 centerYAnchor];
  v18 = [v1 contentView];
  v19 = [v18 mainContentGuide];

  v20 = [v19 centerYAnchor];
  v21 = [v17 constraintEqualToAnchor:v20];

  *(v6 + 48) = v21;
  v22 = [v4 bottomAnchor];
  v23 = [v1 contentView];
  v24 = [v23 mainContentGuide];

  v25 = [v24 bottomAnchor];
  v26 = [v22 constraintLessThanOrEqualToAnchor:v25];

  *(v6 + 56) = v26;
  v27 = [v4 widthAnchor];
  v28 = [v27 constraintEqualToConstant:370.0];

  *(v6 + 64) = v28;
  v29 = [v4 heightAnchor];

  v30 = [v29 constraintEqualToConstant:180.0];
  *(v6 + 72) = v30;
  sub_100003928(0, &qword_100033480, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v31 activateConstraints:isa];
}

uint64_t sub_100010DD8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000580C;

  return sub_10000FEF0(a1, a2, v6);
}

uint64_t sub_100010E84()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100010ED0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100010F20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100005A70;

  return sub_10000EFE4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100010FFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000280C(&qword_100033610, &qword_10001F250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001106C(uint64_t a1)
{
  v2 = sub_10000280C(&qword_100033610, &qword_10001F250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000110DC(uint64_t a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for VideoPlayerView();
  objc_msgSendSuper2(&v9, "layoutSubviews");
  v2 = [v1 layer];
  v3 = [v2 sublayers];

  if (v3)
  {
    sub_100011870();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v4 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = &_swiftEmptyArrayStorage;
    if (!(&_swiftEmptyArrayStorage >> 62))
    {
LABEL_3:
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_12:

      return;
    }
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      [v1 frame];
      [v8 setFrame:{0.0, 0.0}];
    }

    while (v5 != v6);
    goto LABEL_12;
  }

  __break(1u);
}

id sub_100011314(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for VideoPlayerView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t getEnumTagSinglePayload for VideoPlayerView.PlaybackBehavior(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VideoPlayerView.PlaybackBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000114E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7473614C776F6873;
  }

  else
  {
    v3 = 0x6D6F724679616C70;
  }

  if (v2)
  {
    v4 = 0xED00007472617453;
  }

  else
  {
    v4 = 0xED0000656D617246;
  }

  if (*a2)
  {
    v5 = 0x7473614C776F6873;
  }

  else
  {
    v5 = 0x6D6F724679616C70;
  }

  if (*a2)
  {
    v6 = 0xED0000656D617246;
  }

  else
  {
    v6 = 0xED00007472617453;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000115A4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100011640(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000116C8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100011760@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10002CF80, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1000117C0(uint64_t *a1@<X8>)
{
  v2 = 0x6D6F724679616C70;
  if (*v1)
  {
    v2 = 0x7473614C776F6873;
  }

  v3 = 0xED00007472617453;
  if (*v1)
  {
    v3 = 0xED0000656D617246;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_10001181C()
{
  result = qword_100033B68;
  if (!qword_100033B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100033B68);
  }

  return result;
}

unint64_t sub_100011870()
{
  result = qword_100033B70;
  if (!qword_100033B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100033B70);
  }

  return result;
}

id sub_1000118BC(int a1)
{
  swift_getObjectType();
  v3 = type metadata accessor for URL();
  v59 = *(v3 - 8);
  v60 = v3;
  __chkstk_darwin(v3);
  v61 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for VideoPlayerView();
  v63.receiver = v1;
  v63.super_class = v5;
  v62 = objc_msgSendSuper2(&v63, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v6 = [objc_opt_self() mainBundle];
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = [v6 URLForResource:v7 withExtension:v8];

  if (v9)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = objc_allocWithZone(AVPlayerItem);
    URL._bridgeToObjectiveC()(v11);
    v13 = v12;
    v14 = [v10 initWithURL:v12];

    v15 = objc_allocWithZone(AVPlayer);
    v58 = v14;
    v16 = [v15 initWithPlayerItem:v14];
    v17 = [objc_opt_self() playerLayerWithPlayer:v16];
    [v17 setVideoGravity:AVLayerVideoGravityResizeAspectFill];
    v18 = [v62 layer];
    [v18 addSublayer:v17];

    v19 = [objc_opt_self() sharedInstance];
    v64 = 0;
    LODWORD(v13) = [v19 setCategory:AVAudioSessionCategoryPlayback mode:AVAudioSessionModeDefault options:1 error:&v64];

    if (v13)
    {
      v20 = v64;
      if (a1)
      {
        goto LABEL_16;
      }

LABEL_14:
      v38 = &selRef_play;
LABEL_17:
      [v16 *v38];
      if (qword_100033350 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_10000549C(v43, qword_100034C10);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *v46 = 136446722;
        v47 = _typeName(_:qualified:)();
        v49 = sub_10001C470(v47, v48, &v64);

        *(v46 + 4) = v49;
        *(v46 + 12) = 2082;
        *(v46 + 14) = sub_10001C470(0x766F6D2E3130334ELL, 0xE800000000000000, &v64);
        *(v46 + 22) = 2082;
        if (a1)
        {
          v50 = 0x7473614C776F6873;
        }

        else
        {
          v50 = 0x6D6F724679616C70;
        }

        if (a1)
        {
          v51 = 0xED0000656D617246;
        }

        else
        {
          v51 = 0xED00007472617453;
        }

        v52 = sub_10001C470(v50, v51, &v64);

        *(v46 + 24) = v52;
        _os_log_impl(&_mh_execute_header, v44, v45, "%{public}s successfully loaded %{public}s; playbackBehavior: %{public}s", v46, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }

      (*(v59 + 8))(v61, v60);
      return v62;
    }

    v57 = a1;
    v28 = v64;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100033350 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000549C(v29, qword_100034C10);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v64 = v56;
      *v32 = 136446466;
      v33 = _typeName(_:qualified:)();
      v35 = sub_10001C470(v33, v34, &v64);

      *(v32 + 4) = v35;
      *(v32 + 12) = 2114;
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 14) = v36;
      v37 = v55;
      *v55 = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "%{public}s failed to configure AVAudioSession: %{public}@", v32, 0x16u);
      sub_100005900(v37);

      sub_100005700(v56);

      LOBYTE(a1) = v57;
      if ((v57 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {

      LOBYTE(a1) = v57;
      if ((v57 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

LABEL_16:
    v39 = [v58 asset];
    [v39 duration];
    v40 = v64;
    v41 = v66;
    v42 = v65;

    v64 = v40;
    v65 = v42;
    v66 = v41;
    [v16 seekToTime:&v64];
    v38 = &selRef_pause;
    goto LABEL_17;
  }

  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000549C(v21, qword_100034C10);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v24 = 136446466;
    v25 = _typeName(_:qualified:)();
    v27 = sub_10001C470(v25, v26, &v64);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2082;
    *(v24 + 14) = sub_10001C470(0x766F6D2E3130334ELL, 0xE800000000000000, &v64);
    _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s failed to load %{public}s", v24, 0x16u);
    swift_arrayDestroy();
  }

  return v62;
}

uint64_t sub_10001213C(char a1)
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

Swift::Int sub_100012278()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000122E4()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100012338()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  type metadata accessor for Application();
  sub_100015320(&qword_100033C48, &type metadata accessor for Application, &protocol conformance descriptor for Application);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000123D8(uint64_t a1)
{
  Hasher._combine(_:)(0);
  type metadata accessor for Application();
  sub_100015320(&qword_100033C48, &type metadata accessor for Application, &protocol conformance descriptor for Application);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100012470()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  type metadata accessor for Application();
  sub_100015320(&qword_100033C48, &type metadata accessor for Application, &protocol conformance descriptor for Application);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10001250C@<X0>(void *a1@<X8>)
{
  v2._countAndFlagsBits = Application.id.getter();
  String.append(_:)(v2);

  *a1 = 762080353;
  a1[1] = 0xE400000000000000;
  return result;
}

id sub_1000125B4()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = [objc_opt_self() buttonWithProximityType:1];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v3 = String._bridgeToObjectiveC()();

  [v2 setTitle:v3 forState:0];

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v2;
}

id sub_10001271C()
{
  v0 = [objc_allocWithZone(CAGradientLayer) init];
  sub_10000280C(&unk_100033C60, &unk_10001F8C8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10001F6A0;
  v2 = objc_opt_self();
  v3 = [v2 clearColor];
  v4 = [v3 CGColor];

  type metadata accessor for CGColor(0);
  v6 = v5;
  *(v1 + 56) = v5;
  *(v1 + 32) = v4;
  v7 = [v2 blackColor];
  v8 = [v7 colorWithAlphaComponent:0.8];

  v9 = [v8 CGColor];
  *(v1 + 88) = v6;
  *(v1 + 64) = v9;
  v10 = [v2 blackColor];
  v11 = [v10 CGColor];

  *(v1 + 120) = v6;
  *(v1 + 96) = v11;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v0 setColors:isa];

  sub_10000280C(&qword_100033478, "VW");
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10001F6B0;
  sub_100003928(0, &qword_100033C70, NSNumber_ptr);
  *(v13 + 32) = NSNumber.init(floatLiteral:)(0.0);
  *(v13 + 40) = NSNumber.init(floatLiteral:)(0.4);
  *(v13 + 48) = NSNumber.init(floatLiteral:)(1.0);
  v14 = Array._bridgeToObjectiveC()().super.isa;

  [v0 setLocations:v14];

  return v0;
}

char *sub_100012970(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_startButton;
  *&v2[v4] = sub_1000125B4();
  v5 = OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_gradientContainer;
  v6 = [objc_allocWithZone(UIView) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setUserInteractionEnabled:0];
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_gradientLayer;
  *&v2[v7] = sub_10001271C();
  *&v2[OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_model] = a1;

  v8 = sub_100014AD4();
  type metadata accessor for AppIconImageCache();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100006338(&_swiftEmptyArrayStorage);
  *&v2[OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_tableView] = v8;
  v10 = objc_allocWithZone(sub_10000280C(&qword_100033C50, &qword_10001F8C0));
  v11 = v8;

  *&v2[OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_datasource] = UITableViewDiffableDataSource.init(tableView:cellProvider:)();
  v12 = [objc_allocWithZone(PRXScrollableContentView) initWithCardStyle:0 scrollView:v11];
  v13 = [*&v2[v5] layer];
  [v13 addSublayer:*&v2[v7]];

  v19.receiver = v2;
  v19.super_class = type metadata accessor for AppSelectionProximityCardViewController();
  v14 = objc_msgSendSuper2(&v19, "initWithContentView:", v12);
  v15 = *&v14[OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_gradientContainer];
  v16 = v14;
  [v12 addSubview:v15];
  v17 = OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_startButton;
  [v12 addSubview:*&v16[OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_startButton]];
  [v11 setDataSource:*&v16[OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_datasource]];
  [v11 setDelegate:v16];
  [*&v16[v17] addTarget:v16 action:"startGuestMode" forControlEvents:64];

  return v16;
}

id sub_100012BF0()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000549C(v2, qword_100034C10);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10001C470(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s selected start Guest Mode action", v5, 0xCu);
    sub_100005700(v6);
  }

  sub_100009A14();

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_100012DC8()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v6.receiver = v0;
  v6.super_class = type metadata accessor for AppSelectionProximityCardViewController();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  sub_100018BA4();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v3 = String._bridgeToObjectiveC()();

  [v0 setTitle:v3];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v4 = String._bridgeToObjectiveC()();

  [v0 setSubtitle:v4];

  return sub_100013210();
}

id sub_100012FE8(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for UIListContentConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v10 = [a1 dequeueReusableCellWithIdentifier:v8 forIndexPath:isa];

  UITableViewCell.defaultContentConfiguration()();

  Application.localizedTitle.getter();

  UIListContentConfiguration.text.setter();

  sub_100014C74(a1);
  sub_10000E610(v11);

  UIListContentConfiguration.image.setter();
  v16[3] = v4;
  v16[4] = &protocol witness table for UIListContentConfiguration;
  v12 = sub_100014E14(v16);
  (*(v5 + 16))(v12, v7, v4);
  UITableViewCell.contentConfiguration.setter();

  LOBYTE(isa) = Application.isSelectedToShare.getter();

  if (isa)
  {
    v13 = 3;
  }

  else
  {
    v13 = 0;
  }

  [v10 setAccessoryType:v13];
  (*(v5 + 8))(v7, v4);
  return v10;
}

uint64_t sub_100013210()
{
  v1 = sub_10000280C(&qword_100033C80, &qword_10001F8D8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - v3;
  sub_1000153A0();
  sub_1000153F4();
  NSDiffableDataSourceSnapshot.init()();

  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10002CFD0);
  v5 = ApplicationLibrary.applications.getter();
  v6 = v5;
  if (!(v5 >> 62))
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_11:

LABEL_12:
    v12 = 0;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    dispatch thunk of UITableViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    return (*(v2 + 8))(v4, v1);
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_3:
  v13 = &_swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v10 = v0;
    v11 = v2;
    v9 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      ++v9;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v7 != v9);

    v2 = v11;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_100013484(uint64_t a1)
{
  v45.receiver = v1;
  v45.super_class = type metadata accessor for AppSelectionProximityCardViewController();
  objc_msgSendSuper2(&v45, "viewDidLayoutSubviews");
  v2 = *&v1[OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_gradientLayer];
  v3 = *&v1[OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_gradientContainer];
  [v3 bounds];
  [v2 setFrame:?];
  sub_10000280C(&qword_100033478, "VW");
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10001F6C0;
  v5 = [v3 leadingAnchor];
  v6 = [v1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6;
  v8 = [v6 leadingAnchor];

  v9 = [v5 constraintEqualToAnchor:v8];
  *(v4 + 32) = v9;
  v10 = [v3 trailingAnchor];
  v11 = [v1 view];
  if (!v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = v11;
  v13 = [v11 trailingAnchor];

  v14 = [v10 constraintEqualToAnchor:v13];
  *(v4 + 40) = v14;
  v15 = [v3 bottomAnchor];
  v16 = [v1 view];
  if (!v16)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v17 = v16;
  v44 = objc_opt_self();
  v18 = [v17 bottomAnchor];

  v19 = [v15 constraintEqualToAnchor:v18];
  *(v4 + 48) = v19;
  v20 = *&v1[OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_startButton];
  v21 = [v20 topAnchor];
  v22 = [v3 topAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:40.0];

  *(v4 + 56) = v23;
  v24 = [v20 bottomAnchor];
  v25 = [v3 bottomAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:-40.0];

  *(v4 + 64) = v26;
  v27 = [v20 leadingAnchor];
  v28 = [v3 leadingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:30.0];

  *(v4 + 72) = v29;
  v30 = [v20 trailingAnchor];
  v31 = [v3 trailingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:-30.0];

  *(v4 + 80) = v32;
  sub_100003928(0, &qword_100033480, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v44 activateConstraints:isa];

  [v3 frame];
  Height = CGRectGetHeight(v46);
  v35 = Height / 3.0;
  if (Height / 3.0 != 0.0)
  {
    v36 = Height;
    v37 = *&v1[OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_tableView];
    v38 = [v37 tableFooterView];
    if (v38)
    {
      v39 = v38;
      v40 = [v38 widthAnchor];
      [v37 frame];
      v41 = [v40 constraintEqualToConstant:CGRectGetWidth(v47)];

      [v41 setActive:1];
      v42 = [v39 heightAnchor];
      v43 = [v42 constraintEqualToConstant:v35];

      [v43 setActive:1];
    }

    else
    {
      [v37 frame];
      v43 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, CGRectGetWidth(v48), v35}];
      [v37 setTableFooterView:v43];
    }

    [v37 setContentInset:{0.0, 0.0, v36, 0.0}];
    [v37 contentInset];
    [v37 setScrollIndicatorInsets:?];
  }
}

uint64_t sub_100013AA8(char a1)
{
  v2 = sub_10000280C(&qword_100033C80, &qword_10001F8D8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - v4;

  v6 = ApplicationLibrary.applications.getter();

  v8 = v6 >> 62;
  if ((a1 & 1) == 0)
  {
    if (v8)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v11 = result;
      if (!result)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v11 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
        goto LABEL_21;
      }
    }

    if (v11 >= 1)
    {
      for (i = 0; i != v11; ++i)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
        }

        Application.isSelectedToShare.setter();
      }

      goto LABEL_21;
    }

    goto LABEL_23;
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v9 = result;
    if (result)
    {
      goto LABEL_4;
    }

LABEL_21:

    dispatch thunk of UITableViewDiffableDataSource.snapshot()();
    v15._rawValue = &_swiftEmptyArrayStorage;
    v13 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
    sub_100013D58(v13);
    NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v15);

    dispatch thunk of UITableViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
    sub_100013E4C((a1 & 1) == 0);
    return (*(v3 + 8))(v5, v2);
  }

  v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_21;
  }

LABEL_4:
  if (v9 >= 1)
  {
    for (j = 0; j != v9; ++j)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      Application.isSelectedToShare.setter();
    }

    goto LABEL_21;
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_100013D58(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v3 = result;
  if (!*(v5 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return result;
  }

  v6 = *(v3 + 16);
  v7 = __OFADD__(v6, v2);
  v8 = v6 + v2;
  if (!v7)
  {
    *(v3 + 16) = v8;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_100013E4C(char a1)
{
  v9 = [*(v1 + OBJC_IVAR____TtC22GuestUserHandoverSetup39AppSelectionProximityCardViewController_tableView) headerViewForSection:0];
  if (v9)
  {
    type metadata accessor for AppSelectionSectionHeaderView();
    if (swift_dynamicCastClass())
    {
      v3 = a1 & 1;
      v4 = sub_10001213C(v3);
      v6 = v5;
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      *(v8 + 24) = v3;

      sub_1000034B4(v4, v6, sub_10001544C, v8);
    }

    else
    {
    }
  }
}

uint64_t sub_100013FD4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000280C(&qword_100033C80, &qword_10001F8D8);
  v39 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v37 - v9;
  dispatch thunk of UITableViewDiffableDataSource.snapshot()();
  v11 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  v12 = IndexPath.section.getter();
  if ((v12 & 0x8000000000000000) == 0)
  {
    v13 = v12;
    v37[1] = v2;
    v14 = v10;
    v15 = v8;
    v16 = *(v11 + 16);

    v17 = v13 < v16;
    v8 = v15;
    v10 = v14;
    if (!v17)
    {
      goto LABEL_8;
    }

    v18 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
    v19 = IndexPath.row.getter();
    if ((v19 & 0x8000000000000000) == 0 && v19 < *(v18 + 16))
    {
      v20 = *(v18 + 8 * v19 + 32);
      swift_retain_n();

      v21 = Application.isSelectedToShare.modify();
      *v22 = !*v22;
      v21(v40, 0);

      sub_10000280C(&qword_100033C90, qword_10001F8E0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_10001F6D0;
      *(v23 + 32) = v20;

      NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v23);

      dispatch thunk of UITableViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

      LOBYTE(v23) = ApplicationLibrary.areAllApplicationsSelectedToShare.getter();

      sub_100013E4C(v23 & 1);

      return (*(v39 + 8))(v10, v8);
    }
  }

LABEL_8:
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_10000549C(v24, qword_100034C10);
  (*(v5 + 16))(v7, a1, v4);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v40[0] = swift_slowAlloc();
    *v27 = 136446466;
    v28 = _typeName(_:qualified:)();
    v30 = sub_10001C470(v28, v29, v40);
    ObjectType = v8;
    v31 = v30;

    *(v27 + 4) = v31;
    *(v27 + 12) = 2082;
    sub_100015320(&qword_100033C88, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    (*(v5 + 8))(v7, v4);
    v35 = sub_10001C470(v32, v34, v40);

    *(v27 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v25, v26, "[%{public}s] unable to find selected application at index path %{public}s", v27, 0x16u);
    swift_arrayDestroy();

    return (*(v39 + 8))(v10, ObjectType);
  }

  (*(v5 + 8))(v7, v4);
  return (*(v39 + 8))(v10, v8);
}

id sub_100014514(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppSelectionProximityCardViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100014608(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100013AA8(a2 & 1);
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for AppItem(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithCopy for AppItem(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for AppItem(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for AppItem(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for AppItem(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppsSection(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AppsSection(_WORD *result, int a2, int a3)
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

unint64_t sub_100014A28()
{
  result = qword_100033C38;
  if (!qword_100033C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100033C38);
  }

  return result;
}

unint64_t sub_100014A80()
{
  result = qword_100033C40;
  if (!qword_100033C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100033C40);
  }

  return result;
}

id sub_100014AD4()
{
  v0 = [objc_allocWithZone(UITableView) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v0 setAllowsMultipleSelection:1];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 blackColor];
  [v2 setBackgroundColor:v3];

  sub_100003928(0, &qword_100033C58, UITableViewCell_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = String._bridgeToObjectiveC()();
  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v5];

  type metadata accessor for AppSelectionSectionHeaderView();
  v6 = swift_getObjCClassFromMetadata();
  v7 = String._bridgeToObjectiveC()();
  [v2 registerClass:v6 forHeaderFooterViewReuseIdentifier:v7];

  [v2 setEstimatedSectionHeaderHeight:44.0];
  [v2 setSectionHeaderHeight:UITableViewAutomaticDimension];
  return v2;
}

void sub_100014C74(void *a1)
{
  v1 = [a1 window];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 screen];

    [v3 scale];
  }

  else
  {
    if (qword_100033350 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000549C(v4, qword_100034C10);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_10001C470(0xD000000000000030, 0x8000000100020630, &v9);
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s unable to determine scale for current view", v7, 0xCu);
      sub_100005700(v8);
    }
  }
}

uint64_t *sub_100014E14(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

char *sub_100014E78(void *a1)
{
  swift_getObjectType();
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = String._bridgeToObjectiveC()();
  v5 = [a1 dequeueReusableHeaderFooterViewWithIdentifier:v4];

  if (v5)
  {
    type metadata accessor for AppSelectionSectionHeaderView();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v6;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v8 = String.init(localized:table:bundle:locale:comment:)();
      v9 = *&v7[OBJC_IVAR____TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView_headerLabel];
      v29[0] = v8;
      v29[1] = v10;
      sub_100015274();
      StringProtocol.localizedUppercase.getter();
      v11 = String._bridgeToObjectiveC()();

      [v9 setText:v11];

      v12 = v5;
      [v7 setNeedsLayout];

      v13 = ApplicationLibrary.areAllApplicationsSelectedToShare.getter();

      v14 = v13 & 1;
      v15 = sub_10001213C(v13 & 1);
      v17 = v16;
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      *(v19 + 24) = v14;

      sub_1000034B4(v15, v17, sub_100015300, v19);

      return v7;
    }
  }

  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000549C(v20, qword_100034C10);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v29[0] = v24;
    *v23 = 136446210;
    v25 = _typeName(_:qualified:)();
    v27 = sub_10001C470(v25, v26, v29);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "[%{public}s] unable to dequeue header view", v23, 0xCu);
    sub_100005700(v24);
  }

  return 0;
}

unint64_t sub_100015274()
{
  result = qword_100033C78;
  if (!qword_100033C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100033C78);
  }

  return result;
}

uint64_t sub_1000152C8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100015320(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100015368()
{

  return _swift_deallocObject(v0, 25, 7);
}

unint64_t sub_1000153A0()
{
  result = qword_100033C98;
  if (!qword_100033C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100033C98);
  }

  return result;
}

unint64_t sub_1000153F4()
{
  result = qword_100033CA0;
  if (!qword_100033CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100033CA0);
  }

  return result;
}

void sub_100015450()
{
  if (qword_100033348 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000549C(v0, qword_100034BF8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136446210;
    *(v2 + 4) = sub_10001C470(0xD000000000000016, 0x8000000100020790, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Played audio/haptic resource: %{public}s", v2, 0xCu);
    sub_100005700(v3);
  }
}

id sub_1000157EC(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_leadingAccessoryView;
  if (qword_100033330 != -1)
  {
    swift_once();
  }

  v5 = qword_100034BD0;
  v6 = type metadata accessor for LiveActivityImageAccessoryView();
  v7 = objc_allocWithZone(v6);
  v8 = v5;
  v9 = sub_1000023A8(v8, 0);
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2[v4] = v9;
  v10 = OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_trailingAccessoryView;
  if (qword_100033338 != -1)
  {
    swift_once();
  }

  v11 = qword_100034BD8;
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 blueColor];
  v15 = objc_allocWithZone(v6);
  v16 = sub_1000023A8(v13, v14);
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2[v10] = v16;
  v17 = OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_minimalAccessoryView;
  v18 = objc_allocWithZone(v6);
  v19 = sub_1000023A8(v8, 0);
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2[v17] = v19;
  v20 = OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_labelAccessoryView;
  v21 = [objc_allocWithZone(type metadata accessor for LiveActivityLabelAccessoryView()) init];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2[v20] = v21;
  v22 = OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_tapGestureInterceptorView;
  v23 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = [v12 clearColor];
  [v23 setBackgroundColor:v24];

  v25 = [v23 layer];
  [v25 setHitTestsAsOpaque:1];

  *&v2[v22] = v23;
  v26 = OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_endGuestUserModeButton;
  sub_100005A74();
  v28 = v27;
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2[v26] = v28;
  *&v2[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_activeConstraints] = &_swiftEmptyArrayStorage;
  v29 = &v2[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_associatedAppBundleIdentifier];
  *v29 = static AirPlayReceiverCoordinator.applicationBundleIdentifier.getter();
  v29[1] = v30;
  static AirPlayReceiverCoordinator.requestViewMirroringLaunchURLString.getter();
  URL.init(string:)();

  *&v2[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_contentRole] = 2;
  *&v2[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_preferredLayoutMode] = 3;
  *&v2[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_maximumLayoutMode] = 4;
  *&v2[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_presentationBehaviors] = 8;
  *&v2[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_activeLayoutMode] = 0;
  *&v2[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_liveActivityModel] = a1;
  v32.receiver = v2;
  v32.super_class = type metadata accessor for LiveActivityDynamicIslandViewController(0);
  return objc_msgSendSuper2(&v32, "initWithNibName:bundle:", 0, 0);
}

void sub_100015B78()
{
  swift_getObjectType();
  v27.receiver = v0;
  v27.super_class = type metadata accessor for LiveActivityDynamicIslandViewController(0);
  objc_msgSendSuper2(&v27, "viewDidLoad");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = v1;
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];

  v3 = [v0 view];
  if (!v3)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = v3;
  v5 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_leadingAccessoryView];
  [v3 addSubview:v5];

  v6 = [v0 view];
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = v6;
  v8 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_labelAccessoryView];
  [v6 addSubview:v8];

  v9 = [v0 view];
  if (!v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v9;
  v11 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_tapGestureInterceptorView];
  [v9 addSubview:v11];

  v12 = [v0 view];
  if (!v12)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_endGuestUserModeButton];
  [v12 addSubview:v14];

  [v14 addTarget:v0 action:"endGuestUserModeButtonTapped" forControlEvents:64];
  v15 = objc_allocWithZone(UITapGestureRecognizer);
  v16 = v0;
  v17 = [v15 initWithTarget:v16 action:"launchAppGestureDetectedWithSender:"];
  [v5 addGestureRecognizer:v17];
  [v8 addGestureRecognizer:v17];
  v18 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v16 action:"launchAppGestureDetectedWithSender:"];

  [v11 addGestureRecognizer:v18];
  if (qword_100033358 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000549C(v19, qword_100034C28);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v22 = 136446466;
    v23 = _typeName(_:qualified:)();
    v25 = sub_10001C470(v23, v24, &v26);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_10001C470(0x4C64694477656976, 0xED0000292864616FLL, &v26);
    _os_log_impl(&_mh_execute_header, v20, v21, "%{public}s %{public}s Added gesture recognizers", v22, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_100015F64(void *a1)
{
  swift_getObjectType();
  if (qword_100033358 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000549C(v3, qword_100034C28);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v16[0] = swift_slowAlloc();
    *v7 = 136446722;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10001C470(v8, v9, v16);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_10001C470(0xD00000000000001DLL, 0x8000000100020B10, v16);
    *(v7 + 22) = 2050;
    v11 = *&v4[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_activeLayoutMode];

    *(v7 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s %{public}s %{public}ld", v7, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v12 = sub_10001672C();
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  *(v13 + 24) = v12;
  v16[4] = sub_100017CC0;
  v16[5] = v13;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_1000162F8;
  v16[3] = &unk_10002D6C0;
  v14 = _Block_copy(v16);
  v15 = v4;

  [a1 animateAlongsideTransition:v14 completion:0];
  _Block_release(v14);
}

void sub_1000161F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000163C0();
  v5 = objc_opt_self();
  v6 = OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_activeConstraints;
  sub_100002854();

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 deactivateConstraints:isa];

  *(a2 + v6) = a3;

  v8 = Array._bridgeToObjectiveC()().super.isa;

  [v5 activateConstraints:v8];
}

uint64_t sub_1000162F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_1000163C0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_activeLayoutMode;
  v3 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_activeLayoutMode];
  if (v3 <= 1)
  {
    if ((v3 + 1) < 3)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v3 == 4)
  {
    [*&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_leadingAccessoryView] setHidden:0];
    [*&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_trailingAccessoryView] setHidden:1];
    [*&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_minimalAccessoryView] setHidden:1];
    [*&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_labelAccessoryView] setHidden:0];
    v4 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_endGuestUserModeButton];
    v5 = 0;
  }

  else
  {
    if (v3 == 3)
    {
      [*&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_leadingAccessoryView] setHidden:0];
      [*&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_trailingAccessoryView] setHidden:0];
      [*&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_minimalAccessoryView] setHidden:1];
    }

    else
    {
      if (v3 != 2)
      {
LABEL_9:
        if (qword_100033358 != -1)
        {
          swift_once();
        }

        v6 = type metadata accessor for Logger();
        sub_10000549C(v6, qword_100034C28);
        v15 = v0;
        v7 = Logger.logObject.getter();
        v8 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          v10 = swift_slowAlloc();
          v16 = v10;
          *v9 = 136446466;
          v11 = _typeName(_:qualified:)();
          v13 = sub_10001C470(v11, v12, &v16);

          *(v9 + 4) = v13;
          *(v9 + 12) = 2050;
          v14 = *&v1[v2];

          *(v9 + 14) = v14;
          _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s found unexpected activeLayoutMode %{public}ld", v9, 0x16u);
          sub_100005700(v10);
        }

        else
        {
        }

        return;
      }

      [*&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_leadingAccessoryView] setHidden:1];
      [*&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_trailingAccessoryView] setHidden:1];
      [*&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_minimalAccessoryView] setHidden:0];
    }

    [*&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_labelAccessoryView] setHidden:1];
    v4 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_endGuestUserModeButton];
    v5 = 1;
  }

  [v4 setHidden:v5];
}

void *sub_10001672C()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_activeLayoutMode;
  v2 = *(v0 + OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_activeLayoutMode);
  if (v2 > 1)
  {
    switch(v2)
    {
      case 4:
        v3 = sub_100017128();
        goto LABEL_15;
      case 3:
        v3 = sub_100016D1C();
        goto LABEL_15;
      case 2:
        v3 = sub_100016A34();
        goto LABEL_15;
    }
  }

  else
  {
    v3 = &_swiftEmptyArrayStorage;
    if ((v2 + 1) < 3)
    {
      goto LABEL_15;
    }
  }

  if (qword_100033358 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v4 = type metadata accessor for Logger();
    sub_10000549C(v4, qword_100034C28);
    v5 = v0;
    v6 = v0;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20 = v10;
      *v9 = 136446466;
      v11 = _typeName(_:qualified:)();
      v13 = sub_10001C470(v11, v12, &v20);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2050;
      v14 = *(v5 + v1);

      *(v9 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s found unexpected activeLayoutMode %{public}ld", v9, 0x16u);
      sub_100005700(v10);
    }

    else
    {
    }

    v3 = &_swiftEmptyArrayStorage;
LABEL_15:
    if (v3 >> 62)
    {
      v15 = _CocoaArrayWrapper.endIndex.getter();
      if (!v15)
      {
LABEL_25:

        return &_swiftEmptyArrayStorage;
      }
    }

    else
    {
      v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v15)
      {
        goto LABEL_25;
      }
    }

    v20 = &_swiftEmptyArrayStorage;
    v0 = &v20;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v15 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_27:
    swift_once();
  }

  v16 = 0;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v17 = *(v3 + v16 + 4);
    }

    ++v16;
    LODWORD(v18) = 1144750080;
    [v17 setPriority:v18];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v15 != v16);

  return v20;
}

id sub_100016A34()
{
  sub_10000280C(&qword_100033478, "VW");
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10001F150;
  v2 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_minimalAccessoryView];
  v3 = [v2 centerXAnchor];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  v6 = [result SBUISA_systemApertureMinimalViewLayoutGuide];

  v7 = [v6 centerXAnchor];
  v8 = [v3 constraintEqualToAnchor:v7];

  *(v1 + 32) = v8;
  v9 = [v2 centerYAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v10 = result;
  v11 = [result SBUISA_systemApertureMinimalViewLayoutGuide];

  v12 = [v11 centerYAnchor];
  v13 = [v9 constraintEqualToAnchor:v12];

  *(v1 + 40) = v13;
  v14 = [v2 widthAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v15 = result;
  v16 = [result SBUISA_systemApertureMinimalViewLayoutGuide];

  v17 = [v16 widthAnchor];
  v18 = [v14 constraintEqualToAnchor:v17];

  *(v1 + 48) = v18;
  v19 = [v2 heightAnchor];
  result = [v0 view];
  if (result)
  {
    v20 = result;
    v21 = [result SBUISA_systemApertureMinimalViewLayoutGuide];

    v22 = [v21 heightAnchor];
    v23 = [v19 constraintEqualToAnchor:v22];

    *(v1 + 56) = v23;
    return v1;
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_100016D1C()
{
  sub_10000280C(&qword_100033478, "VW");
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10001F6C0;
  v2 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_leadingAccessoryView];
  v3 = [v2 topAnchor];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  v6 = [result topAnchor];

  v7 = [v3 constraintEqualToAnchor:v6];
  *(v1 + 32) = v7;
  v8 = [v2 leadingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = result;
  v10 = [result leadingAnchor];

  v11 = [v8 constraintEqualToAnchor:v10];
  *(v1 + 40) = v11;
  v12 = [v2 trailingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = result;
  v14 = [result SBUISA_systemApertureObstructedAreaLayoutGuide];

  v15 = [v14 leadingAnchor];
  v16 = [v12 constraintEqualToAnchor:v15];

  *(v1 + 48) = v16;
  v17 = [v2 bottomAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = result;
  v19 = [result bottomAnchor];

  v20 = [v17 constraintEqualToAnchor:v19];
  *(v1 + 56) = v20;
  v21 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_trailingAccessoryView];
  v22 = [v21 topAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v23 = result;
  v24 = [result topAnchor];

  v25 = [v22 constraintEqualToAnchor:v24];
  *(v1 + 64) = v25;
  v26 = [v21 trailingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v27 = result;
  v28 = [result trailingAnchor];

  v29 = [v26 constraintEqualToAnchor:v28];
  *(v1 + 72) = v29;
  v30 = [v21 bottomAnchor];
  result = [v0 view];
  if (result)
  {
    v31 = result;
    v32 = [result bottomAnchor];

    v33 = [v30 constraintEqualToAnchor:v32];
    *(v1 + 80) = v33;
    return v1;
  }

LABEL_15:
  __break(1u);
  return result;
}

id sub_100017128()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v2 = result;
  v3 = [result window];

  result = [v0 view];
  v4 = result;
  if (v3)
  {
    if (!result)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v5 = [result widthAnchor];

    v6 = [v3 widthAnchor];
    v7 = [v5 constraintEqualToAnchor:v6];

LABEL_7:
    sub_10000280C(&qword_100033478, "VW");
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10001F930;
    *(v17 + 32) = v7;
    v18 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_leadingAccessoryView];
    v66 = v7;
    v19 = [v18 leadingAnchor];
    result = [v0 view];
    if (result)
    {
      v20 = result;
      v21 = [result SBUISA_systemApertureCustomControlsContentLayoutGuide];

      v22 = [v21 leadingAnchor];
      v23 = [v19 constraintEqualToAnchor:v22];

      *(v17 + 40) = v23;
      v24 = [v18 centerYAnchor];
      result = [v0 view];
      if (result)
      {
        v25 = result;
        v26 = [result centerYAnchor];

        v27 = [v24 constraintEqualToAnchor:v26];
        *(v17 + 48) = v27;
        v28 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_labelAccessoryView];
        v29 = [v28 leadingAnchor];
        v30 = [v18 trailingAnchor];
        v31 = [v29 constraintEqualToAnchor:v30 constant:8.0];

        *(v17 + 56) = v31;
        v32 = [v28 centerYAnchor];
        v33 = [v18 centerYAnchor];
        v34 = [v32 constraintEqualToAnchor:v33];

        *(v17 + 64) = v34;
        v35 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_tapGestureInterceptorView];
        v36 = [v35 topAnchor];
        result = [v0 view];
        if (result)
        {
          v37 = result;
          v38 = [result topAnchor];

          v39 = [v36 constraintEqualToAnchor:v38];
          *(v17 + 72) = v39;
          v40 = [v35 leadingAnchor];
          result = [v0 view];
          if (result)
          {
            v41 = result;
            v42 = [result leadingAnchor];

            v43 = [v40 constraintEqualToAnchor:v42];
            *(v17 + 80) = v43;
            v44 = [v35 trailingAnchor];
            result = [v0 view];
            if (result)
            {
              v45 = result;
              v46 = [result trailingAnchor];

              v47 = [v44 constraintEqualToAnchor:v46];
              *(v17 + 88) = v47;
              v48 = [v35 bottomAnchor];
              result = [v0 view];
              if (result)
              {
                v49 = result;
                v50 = [result bottomAnchor];

                v51 = [v48 constraintEqualToAnchor:v50];
                *(v17 + 96) = v51;
                v52 = *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_endGuestUserModeButton];
                v53 = [v52 topAnchor];
                result = [v0 view];
                if (result)
                {
                  v54 = result;
                  v55 = [result topAnchor];

                  v56 = [v53 constraintEqualToAnchor:v55 constant:16.0];
                  *(v17 + 104) = v56;
                  v57 = [v52 trailingAnchor];
                  result = [v0 view];
                  if (result)
                  {
                    v58 = result;
                    v59 = [result SBUISA_systemApertureCustomControlsContentLayoutGuide];

                    v60 = [v59 trailingAnchor];
                    v61 = [v57 constraintEqualToAnchor:v60];

                    *(v17 + 112) = v61;
                    v62 = [v52 bottomAnchor];
                    result = [v0 view];
                    if (result)
                    {
                      v63 = result;
                      v64 = [result bottomAnchor];

                      v65 = [v62 constraintEqualToAnchor:v64 constant:-16.0];
                      *(v17 + 120) = v65;

                      return v17;
                    }

                    goto LABEL_26;
                  }

LABEL_25:
                  __break(1u);
LABEL_26:
                  __break(1u);
                  goto LABEL_27;
                }

LABEL_24:
                __break(1u);
                goto LABEL_25;
              }

LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (result)
  {
    v3 = [result widthAnchor];

    v8 = [objc_opt_self() mainScreen];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v67.origin.x = v10;
    v67.origin.y = v12;
    v67.size.width = v14;
    v67.size.height = v16;
    v7 = [v3 constraintEqualToConstant:CGRectGetWidth(v67)];
    goto LABEL_7;
  }

LABEL_28:
  __break(1u);
  return result;
}

id sub_1000179EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiveActivityDynamicIslandViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LiveActivityDynamicIslandViewController(uint64_t a1)
{
  result = qword_100033EE0;
  if (!qword_100033EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100017B48(uint64_t a1)
{
  sub_100017C28(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100017C28(uint64_t a1)
{
  if (!qword_100033EF0)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100033EF0);
    }
  }
}

uint64_t sub_100017C80()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100017CC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100017CE0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_leadingAccessoryView;
  if (qword_100033330 != -1)
  {
    swift_once();
  }

  v3 = qword_100034BD0;
  v4 = type metadata accessor for LiveActivityImageAccessoryView();
  v5 = objc_allocWithZone(v4);
  v6 = v3;
  v7 = sub_1000023A8(v6, 0);
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v2) = v7;
  v8 = OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_trailingAccessoryView;
  if (qword_100033338 != -1)
  {
    swift_once();
  }

  v9 = qword_100034BD8;
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 blueColor];
  v13 = objc_allocWithZone(v4);
  v14 = sub_1000023A8(v11, v12);
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v8) = v14;
  v15 = OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_minimalAccessoryView;
  v16 = objc_allocWithZone(v4);
  v17 = sub_1000023A8(v6, 0);
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v15) = v17;
  v18 = OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_labelAccessoryView;
  v19 = [objc_allocWithZone(type metadata accessor for LiveActivityLabelAccessoryView()) init];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v18) = v19;
  v20 = OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_tapGestureInterceptorView;
  v21 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = [v10 clearColor];
  [v21 setBackgroundColor:v22];

  v23 = [v21 layer];
  [v23 setHitTestsAsOpaque:1];

  *(v1 + v20) = v21;
  v24 = OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_endGuestUserModeButton;
  sub_100005A74();
  v26 = v25;
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v24) = v26;
  *(v1 + OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_activeConstraints) = &_swiftEmptyArrayStorage;
  v27 = (v1 + OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_associatedAppBundleIdentifier);
  *v27 = static AirPlayReceiverCoordinator.applicationBundleIdentifier.getter();
  v27[1] = v28;
  static AirPlayReceiverCoordinator.requestViewMirroringLaunchURLString.getter();
  URL.init(string:)();

  *(v1 + OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_contentRole) = 2;
  *(v1 + OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_preferredLayoutMode) = 3;
  *(v1 + OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_maximumLayoutMode) = 4;
  *(v1 + OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_presentationBehaviors) = 8;
  *(v1 + OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_activeLayoutMode) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100018030(const char *a1, uint64_t (*a2)(void), ...)
{
  swift_getObjectType();
  if (qword_100033358 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000549C(v4, qword_100034C28);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446210;
    v9 = _typeName(_:qualified:)();
    v11 = sub_10001C470(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, a1, v7, 0xCu);
    sub_100005700(v8);
  }

  return a2();
}

uint64_t sub_1000181AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000280C(&qword_100033EF8, &qword_10001F988);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001821C(uint64_t a1)
{
  v2 = sub_10000280C(&qword_100033EF8, &qword_10001F988);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100018284()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v7.receiver = v0;
  v7.super_class = type metadata accessor for LiveActivityLabelAccessoryView();
  v3 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v4 = String._bridgeToObjectiveC()();

  [v3 setText:v4];

  v5 = [objc_opt_self() whiteColor];
  [v3 setTextColor:v5];

  return v3;
}

id sub_1000184D4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LiveActivityLabelAccessoryView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10001852C()
{
  v0 = [objc_opt_self() sbui_systemApertureDefaultConfiguration];
  v1 = [objc_opt_self() mainBundle];
  v2 = v0;
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() imageNamed:v3 inBundle:v1 withConfiguration:v2];

  if (v4)
  {

    qword_100034BD0 = v4;
  }

  else
  {
    __break(1u);
  }
}

void sub_100018618()
{
  v0 = [objc_opt_self() sbui_systemApertureDefaultConfiguration];
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() systemImageNamed:v1 withConfiguration:v0];

  if (v2)
  {

    qword_100034BD8 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1000186CC()
{
  v1 = v0;
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000549C(v2, qword_100034C10);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10001C470(0xD000000000000020, 0x8000000100020E50, &v8);
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_10001C470(0xD00000000000001DLL, 0x8000000100020DD0, &v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  [v1 setOverrideUserInterfaceStyle:2];
  [v1 setDismissalType:1];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v7 = sub_1000197B8(0, 0xE000000000000000, 0, sub_10001AF00, v6, &unk_10002D960, &unk_10002D988, sub_10001AED8, &unk_10002D9A0);

  [v1 setDismissButtonAction:v7];
}

void sub_100018938()
{
  v1 = v0;
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000549C(v2, qword_100034C10);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10001C470(0xD000000000000025, 0x8000000100020E20, &v8);
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_10001C470(0xD00000000000001DLL, 0x8000000100020DD0, &v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  [v1 setOverrideUserInterfaceStyle:2];
  [v1 setDismissalType:1];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v7 = sub_1000197B8(0, 0xE000000000000000, 0, sub_10001AE90, v6, &unk_10002D898, &unk_10002D910, sub_10001AE68, &unk_10002D928);

  [v1 setDismissButtonAction:v7];
}

void sub_100018BA4()
{
  v1 = v0;
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000549C(v2, qword_100034C10);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10001C470(0xD000000000000027, 0x8000000100020DF0, &v8);
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_10001C470(0xD00000000000001DLL, 0x8000000100020DD0, &v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  [v1 setOverrideUserInterfaceStyle:2];
  [v1 setDismissalType:1];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v7 = sub_1000197B8(0, 0xE000000000000000, 0, sub_10001AE38, v6, &unk_10002D820, &unk_10002D848, sub_10001AE40, &unk_10002D860);

  [v1 setDismissButtonAction:v7];
}

void sub_100018E10()
{
  v1 = v0;
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000549C(v2, qword_100034C10);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10001C470(0xD000000000000029, 0x800000010001F9A0, &v8);
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_10001C470(0xD00000000000001DLL, 0x8000000100020DD0, &v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  [v1 setOverrideUserInterfaceStyle:2];
  [v1 setDismissalType:1];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v7 = sub_1000197B8(0, 0xE000000000000000, 0, sub_10001ADF8, v6, &unk_10002D758, &unk_10002D7D0, sub_10001ADD0, &unk_10002D7E8);

  [v1 setDismissButtonAction:v7];
}

void sub_10001907C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_100033350 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000549C(v5, qword_100034C10);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_10001C470(0xD000000000000020, 0x8000000100020E50, &v10);
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s selected dismiss action", v8, 0xCu);
      sub_100005700(v9);
    }

    sub_100009788();

    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_100019224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_100033350 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000549C(v5, qword_100034C10);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_10001C470(0xD000000000000025, 0x8000000100020E20, &v10);
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s selected dismiss action", v8, 0xCu);
      sub_100005700(v9);
    }

    sub_100009788();

    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_1000193CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_100033350 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000549C(v5, qword_100034C10);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_10001C470(0xD000000000000027, 0x8000000100020DF0, &v10);
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s selected dismiss action", v8, 0xCu);
      sub_100005700(v9);
    }

    sub_100009788();

    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_100019574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_100033350 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000549C(v5, qword_100034C10);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_10001C470(0xD000000000000029, 0x800000010001F9A0, &v10);
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s selected dismiss action", v8, 0xCu);
      sub_100005700(v9);
    }

    sub_100009788();

    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

id sub_1000197B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a4;
  v14[4] = a5;

  v15 = String._bridgeToObjectiveC()();
  v19[4] = a8;
  v19[5] = v14;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_100019AD0;
  v19[3] = a9;
  v16 = _Block_copy(v19);
  v17 = [objc_opt_self() actionWithTitle:v15 style:a3 handler:v16];

  _Block_release(v16);

  return v17;
}

id sub_10001996C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a4;
  v14[4] = a5;

  v15 = String._bridgeToObjectiveC()();
  v19[4] = a8;
  v19[5] = v14;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_100019AD0;
  v19[3] = a9;
  v16 = _Block_copy(v19);
  v17 = [objc_opt_self() actionWithTitle:v15 customColors:a3 handler:v16];

  _Block_release(v16);

  return v17;
}

void sub_100019AD0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_100019B38(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void sub_100019BB0()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v23.receiver = v0;
  v23.super_class = type metadata accessor for AppRestrictionProximityCardViewController();
  objc_msgSendSuper2(&v23, "viewDidLoad");
  sub_100018E10();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v4 = String._bridgeToObjectiveC()();

  [v0 setTitle:v4];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v5 = String._bridgeToObjectiveC()();

  [v0 setSubtitle:v5];

  sub_10001A458();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v6 = String.init(localized:table:bundle:locale:comment:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = ObjectType;
  v10 = sub_1000197B8(v6, v8, 0, sub_10001ADA4, v9, &unk_10002D758, &unk_10002D7D0, sub_10001ADD0, &unk_10002D7E8);

  v11 = [v0 addAction:v10];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v12 = String.init(localized:table:bundle:locale:comment:)();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = ObjectType;
  v16 = objc_opt_self();
  v17 = objc_opt_self();
  v18 = [v17 systemBlackColor];
  v19 = [v17 systemWhiteColor];
  v20 = [v16 initWithBackgroundColor:v18 textColor:v19];

  v21 = sub_10001996C(v12, v14, v20, sub_10001ADAC, v15, &unk_10002D758, &unk_10002D780, sub_10001AF40, &unk_10002D798);

  v22 = [v0 addAction:v21];
}

void sub_10001A030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000549C(v4, qword_100034C10);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446210;
    v9 = _typeName(_:qualified:)();
    v11 = sub_10001C470(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s selected open apps enabled", v7, 0xCu);
    sub_100005700(v8);
  }

  ObjectType = swift_getObjectType();
  v13 = *(a2 + 8);
  *(v13(ObjectType, a2) + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_appRestrictionState) = 1;

  v14 = v13(ObjectType, a2);
  v15 = objc_allocWithZone(type metadata accessor for AppSelectionProximityCardViewController());
  v16 = sub_100012970(v14);
  sub_1000074EC(v16);
}

id sub_10001A22C(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000549C(v5, qword_100034C10);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    v10 = _typeName(_:qualified:)();
    v12 = sub_10001C470(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s selected all apps enabled", v8, 0xCu);
    sub_100005700(v9);
  }

  ObjectType = swift_getObjectType();
  v14 = *(a2 + 8);
  *(v14(ObjectType, a2) + OBJC_IVAR____TtC22GuestUserHandoverSetup18ProxCardSetUpModel_appRestrictionState) = 0;

  v14(ObjectType, a2);
  sub_100009A14();

  return [a1 dismissViewControllerAnimated:1 completion:0];
}

void sub_10001A458()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() imageNamed:v3];

  if (v4)
  {
    v5 = [objc_allocWithZone(UIImageView) initWithImage:v4];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 setContentMode:1];
    v6 = [v0 contentView];
    [v6 addSubview:v5];

    v56 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
    v7 = [objc_allocWithZone(PRXDisclaimerContentView) initWithCardStyle:0];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v8 = objc_allocWithZone(NSMutableAttributedString);
    v9 = String._bridgeToObjectiveC()();

    v10 = [v8 initWithString:v9];

    v11 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    v12 = [v7 disclaimerLabel];
    [v12 setFont:v56];

    [v11 setAlignment:1];
    v55 = v11;
    v13 = v10;
    [v13 addAttribute:NSParagraphStyleAttributeName value:v55 range:{0, objc_msgSend(v13, "length")}];

    v14 = [v7 disclaimerLabel];
    [v14 setAttributedText:v13];

    v53 = v7;
    [v53 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [v0 contentView];
    [v15 addSubview:v53];

    v54 = objc_opt_self();
    sub_10000280C(&qword_100033478, "VW");
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10001F9B0;
    v17 = [v5 topAnchor];
    v18 = [v0 contentView];
    v19 = [v18 mainContentGuide];

    v20 = [v19 topAnchor];
    v21 = [v17 constraintGreaterThanOrEqualToAnchor:v20];

    *(v16 + 32) = v21;
    v22 = [v5 leadingAnchor];
    v23 = [v0 contentView];
    v24 = [v23 mainContentGuide];

    v25 = [v24 leadingAnchor];
    v26 = [v22 constraintEqualToAnchor:v25];

    *(v16 + 40) = v26;
    v27 = [v5 trailingAnchor];
    v28 = [v0 contentView];
    v29 = [v28 mainContentGuide];

    v30 = [v29 trailingAnchor];
    v31 = [v27 constraintEqualToAnchor:v30];

    *(v16 + 48) = v31;
    v32 = [v5 heightAnchor];
    v33 = [v32 constraintEqualToConstant:100.0];

    *(v16 + 56) = v33;
    v34 = [v53 topAnchor];
    v35 = [v5 bottomAnchor];

    v36 = [v34 constraintEqualToAnchor:v35 constant:16.0];
    *(v16 + 64) = v36;
    v37 = [v53 leadingAnchor];
    v38 = [v0 contentView];
    v39 = [v38 mainContentGuide];

    v40 = [v39 leadingAnchor];
    v41 = [v37 constraintEqualToAnchor:v40];

    *(v16 + 72) = v41;
    v42 = [v53 trailingAnchor];
    v43 = [v0 contentView];
    v44 = [v43 mainContentGuide];

    v45 = [v44 trailingAnchor];
    v46 = [v42 constraintEqualToAnchor:v45];

    *(v16 + 80) = v46;
    v47 = [v53 bottomAnchor];

    v48 = [v0 contentView];
    v49 = [v48 mainContentGuide];

    v50 = [v49 bottomAnchor];
    v51 = [v47 constraintLessThanOrEqualToAnchor:v50];

    *(v16 + 88) = v51;
    sub_100002854();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v54 activateConstraints:isa];
  }
}

id sub_10001AD1C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppRestrictionProximityCardViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10001ADB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001AE00()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001AE98()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t *sub_10001AFD8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10001B064(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  sub_10001AFD8(v5, a2);
  sub_10000549C(v5, a2);
  return Logger.init(subsystem:category:)();
}

id sub_10001B19C(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    objc_allocWithZone(a2(0));

    v9 = v3;
    v10 = a3(v8);
    v11 = *(v3 + v4);
    *(v9 + v4) = v10;
    v6 = v10;

    v5 = 0;
  }

  v12 = v5;
  return v6;
}

id sub_10001B2C8()
{
  v1 = v0;
  v2 = sub_10000280C(&qword_100033610, &qword_10001F250);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  *&v0[OBJC_IVAR____TtC22GuestUserHandoverSetup25LiveActivitySceneDelegate_window] = 0;
  v5 = OBJC_IVAR____TtC22GuestUserHandoverSetup25LiveActivitySceneDelegate_liveActivityModel;
  type metadata accessor for LiveActivityModel(0);
  v6 = swift_allocObject();
  GuestUserHandoverService.init()();
  AirPlayReceiverCoordinator.init()();
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v6;
  sub_10000756C(0, 0, v4, &unk_10001FA28, v9);

  *&v1[v5] = v6;
  *&v1[OBJC_IVAR____TtC22GuestUserHandoverSetup25LiveActivitySceneDelegate____lazy_storage___dynamicIslandViewController] = 0;
  *&v1[OBJC_IVAR____TtC22GuestUserHandoverSetup25LiveActivitySceneDelegate____lazy_storage___platterViewController] = 0;
  v10 = type metadata accessor for LiveActivitySceneDelegate();
  v12.receiver = v1;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "init");
}

id sub_10001B49C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LiveActivitySceneDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10001B560()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001B5A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000580C;

  return sub_100003970();
}

void sub_10001B654(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  type metadata accessor for ActivityScene();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v31 = a1;
    if ([v5 SBUI_isHostedBySystemAperture])
    {
      if (qword_100033358 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_10000549C(v6, qword_100034C28);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v32 = v10;
        *v9 = 136446210;
        v11 = _typeName(_:qualified:)();
        v13 = sub_10001C470(v11, v12, &v32);

        *(v9 + 4) = v13;
        _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s configuring for Dynamic Island", v9, 0xCu);
        sub_100005700(v10);
      }

      v14 = sub_10001B134();
      [v5 setSystemApertureElementViewControllerProvider:v14];

      v15 = v31;
    }

    else
    {
      if (qword_100033358 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_10000549C(v16, qword_100034C28);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v32 = v20;
        *v19 = 136446210;
        v21 = _typeName(_:qualified:)();
        v23 = sub_10001C470(v21, v22, &v32);

        *(v19 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s configuring for Lock Screen platter", v19, 0xCu);
        sub_100005700(v20);
      }

      if (qword_100033320 != -1)
      {
        swift_once();
      }

      v24 = qword_100034B60;
      dispatch thunk of ActivityScene.backgroundTintColor.setter();
      v25 = objc_allocWithZone(type metadata accessor for ActivitySceneMetrics());
      ActivitySceneMetrics.init(size:cornerRadius:)();
      dispatch thunk of ActivityScene.resolvedMetrics.setter();
      v26 = [objc_allocWithZone(type metadata accessor for SecureWindow()) initWithWindowScene:v5];

      v27 = OBJC_IVAR____TtC22GuestUserHandoverSetup25LiveActivitySceneDelegate_window;
      v28 = *(v2 + OBJC_IVAR____TtC22GuestUserHandoverSetup25LiveActivitySceneDelegate_window);
      *(v2 + OBJC_IVAR____TtC22GuestUserHandoverSetup25LiveActivitySceneDelegate_window) = v26;
      v29 = v26;

      v30 = sub_10001B168();
      [v29 setRootViewController:v30];

      v15 = *(v2 + v27);
      [v15 makeKeyAndVisible];
    }
  }
}

id sub_10001BB90(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ProxCardSetUpSceneDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10001BC34(void *a1)
{
  swift_getObjectType();
  v2 = sub_10000280C(&qword_100034108, &unk_10001FA70);
  __chkstk_darwin(v2 - 8);
  v4 = &v50 - v3;
  v5 = type metadata accessor for GuestUserAccessError();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v54 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v50 - v9;
  if (qword_100033350 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_10000549C(v11, qword_100034C10);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = a1;
    v59 = v52;
    *v15 = 136446466;
    v16 = _typeName(_:qualified:)();
    v18 = sub_10001C470(v16, v17, &v59);
    v51 = v13;
    v19 = v18;

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_10001C470(0xD00000000000002ELL, 0x8000000100021010, &v59);
    v13 = v51;
    _os_log_impl(&_mh_execute_header, v51, v14, "%{public}s %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    a1 = v53;
  }

  v20 = *(v55 + OBJC_IVAR____TtC22GuestUserHandoverSetup26ProxCardSetUpSceneDelegate_rootViewController);
  if (!v20)
  {
    goto LABEL_17;
  }

  v21 = v20;
  v22 = [a1 activationContext];
  if (!v22 || (v23 = v22, v24 = [v22 userInfo], v23, !v24))
  {

    v61 = 0u;
    v62 = 0u;
LABEL_16:
    sub_10000CBD0(&v61, &qword_100034118, &qword_10001FA80);
LABEL_17:
    v31 = a1;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v59 = v36;
      *v34 = 136446466;
      v37 = _typeName(_:qualified:)();
      v39 = sub_10001C470(v37, v38, &v59);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2114;
      v40 = [v31 activationContext];
      *(v34 + 14) = v40;
      *v35 = v40;
      _os_log_impl(&_mh_execute_header, v32, v33, "%{public}s failed to handle updated activation context %{public}@", v34, 0x16u);
      sub_10000CBD0(v35, &qword_100034110, &qword_10001F290);

      sub_100005700(v36);
    }

    return;
  }

  v55 = v12;
  v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v57 = static GuestUserHandoverSetupCoordinator.Constants.activationContextErrorKey.getter();
  v58 = v26;
  AnyHashable.init<A>(_:)();
  if (!*(v25 + 16) || (v27 = sub_10001CA18(&v59), (v28 & 1) == 0))
  {

    sub_10000C4A0(&v59);
    v61 = 0u;
    v62 = 0u;
    goto LABEL_15;
  }

  sub_10000C550(*(v25 + 56) + 32 * v27, &v61);
  sub_10000C4A0(&v59);

  if (!*(&v62 + 1))
  {
LABEL_15:

    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_17;
  }

  v30 = v59;
  v29 = v60;
  sub_10000C5C0(v59, v60);
  v52 = sub_10001CA5C(&qword_100034120, &protocol conformance descriptor for GuestUserAccessError);
  sub_10001CA5C(&qword_100034128, &protocol conformance descriptor for GuestUserAccessError);
  sub_10001CA5C(&qword_100034130, &protocol conformance descriptor for GuestUserAccessError);
  v53 = v30;
  TransportSerializable<>.init(transportData:)();
  v52 = v29;
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {

    sub_10000C628(v53, v52);
    sub_10000CBD0(v4, &qword_100034108, &unk_10001FA70);
    goto LABEL_17;
  }

  (*(v6 + 32))(v10, v4, v5);
  v41 = *&v21[OBJC_IVAR____TtC22GuestUserHandoverSetup31ProxCardSetUpRootViewController_model];
  v42 = *(v6 + 16);
  v43 = v54;
  v42(v54, v10, v5);
  v44 = type metadata accessor for ErrorProximityCardViewController(0);
  v45 = objc_allocWithZone(v44);
  *&v45[OBJC_IVAR____TtC22GuestUserHandoverSetup32ErrorProximityCardViewController_model] = v41;
  v42(&v45[OBJC_IVAR____TtC22GuestUserHandoverSetup32ErrorProximityCardViewController_error], v43, v5);
  v56.receiver = v45;
  v56.super_class = v44;

  v46 = objc_msgSendSuper2(&v56, "initWithContentView:", 0);
  v47 = *(v6 + 8);
  v47(v43, v5);
  v48 = *&v21[OBJC_IVAR____TtC22GuestUserHandoverSetup31ProxCardSetUpRootViewController_proxNavigationController];
  if (v48)
  {
    v49 = v48;
    [v49 pushViewController:v46 animated:1];
  }

  else
  {
  }

  sub_10000C628(v53, v52);
  v47(v10, v5);
}

unint64_t sub_10001C470(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001C53C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000C550(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005700(v11);
  return v7;
}

unint64_t sub_10001C53C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10001C648(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10001C648(uint64_t a1, unint64_t a2)
{
  v3 = sub_10001C694(a1, a2);
  sub_10001C7C4(&off_10002CF58);
  return v3;
}

char *sub_10001C694(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10001C8B0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10001C8B0(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10001C7C4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10001C924(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10001C8B0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10000280C(&qword_100034138, &qword_10001FA88);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10001C924(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000280C(&qword_100034138, &qword_10001FA88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_10001CA18(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10001CB18(a1, v4);
}

uint64_t sub_10001CA5C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GuestUserAccessError();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001CAA0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10001CBE4(a1, a2, v4);
}

unint64_t sub_10001CB18(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000C4F4(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000C4A0(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10001CBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_10001CC9C(void *a1)
{
  v2 = v1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v17 = a1;
    [v5 setDelegate:v2];
    [v5 setAllowsAlertStacking:1];
    v6 = [objc_allocWithZone(type metadata accessor for SecureWindow()) initWithWindowScene:v5];
    v7 = OBJC_IVAR____TtC22GuestUserHandoverSetup26ProxCardSetUpSceneDelegate_window;
    v8 = *(v2 + OBJC_IVAR____TtC22GuestUserHandoverSetup26ProxCardSetUpSceneDelegate_window);
    *(v2 + OBJC_IVAR____TtC22GuestUserHandoverSetup26ProxCardSetUpSceneDelegate_window) = v6;

    v9 = [v5 configurationContext];
    v10 = objc_allocWithZone(type metadata accessor for ProxCardSetUpRootViewController());
    v11 = sub_10000643C(v9);

    v12 = OBJC_IVAR____TtC22GuestUserHandoverSetup26ProxCardSetUpSceneDelegate_rootViewController;
    v13 = *(v2 + OBJC_IVAR____TtC22GuestUserHandoverSetup26ProxCardSetUpSceneDelegate_rootViewController);
    *(v2 + OBJC_IVAR____TtC22GuestUserHandoverSetup26ProxCardSetUpSceneDelegate_rootViewController) = v11;

    v14 = *(v2 + v7);
    if (v14)
    {
      [v14 setRootViewController:*(v2 + v12)];
      v15 = *(v2 + v7);
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
    [v16 makeKeyAndVisible];
  }
}