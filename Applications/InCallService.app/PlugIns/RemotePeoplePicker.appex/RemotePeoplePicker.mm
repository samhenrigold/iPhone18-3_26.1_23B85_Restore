void type metadata accessor for MessageComposeResult()
{
  if (!qword_100010C38)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100010C38);
    }
  }
}

void *sub_100001C9C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void sub_100001CDC(uint64_t a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  sub_100001E6C(a1, v10);
  v3 = v11;
  if (v11)
  {
    v4 = sub_100001F24(v10, v11);
    v5 = *(v3 - 8);
    __chkstk_darwin(v4, v4);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v7);
    v8 = sub_100007564();
    (*(v5 + 8))(v7, v3);
    sub_100001F68(v10);
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1000074D4();
  [v2 setValue:v8 forKey:v9];

  swift_unknownObjectRelease();
}

uint64_t sub_100001E6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EDC(&qword_100010D08, &unk_1000082A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100001EDC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_100001F24(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100001F68(void *a1)
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

uint64_t sub_100001FB4(void *a1, unsigned __int8 a2)
{
  v4 = sub_1000074D4();
  v5 = [a1 objectForKey:v4];

  if (v5)
  {
    sub_100007554();
    swift_unknownObjectRelease();
    sub_10000209C(v8);
    v6 = sub_1000074D4();
    a2 = [a1 BOOLForKey:v6];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    sub_10000209C(v8);
  }

  return a2 & 1;
}

uint64_t sub_10000209C(uint64_t a1)
{
  v2 = sub_100001EDC(&qword_100010D08, &unk_1000082A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100002104()
{
  v1 = OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController____lazy_storage___continueButton;
  v2 = *(v0 + OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController____lazy_storage___continueButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController____lazy_storage___continueButton);
  }

  else
  {
    v4 = sub_100002168(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100002168(uint64_t a1)
{
  v2 = [objc_opt_self() boldButton];
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v10._countAndFlagsBits = 0xE000000000000000;
  v11._countAndFlagsBits = 0x45554E49544E4F43;
  v12.value._countAndFlagsBits = 0x6C6172656E6547;
  v11._object = 0xE800000000000000;
  v12.value._object = 0xE700000000000000;
  v5.super.isa = v4;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_1000073B4(v11, v12, v5, v13, 0, v10);

  v6 = sub_1000074D4();

  [v2 setTitle:v6 forState:0];

  v7 = v2;
  v8 = sub_1000074D4();
  [v7 setAccessibilityIdentifier:v8];

  [v7 addTarget:a1 action:"didTapContinueButton" forControlEvents:64];
  return v7;
}

id sub_1000022E8()
{
  v1 = OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController____lazy_storage___sharePlayOnboardingImageView;
  v2 = *(v0 + OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController____lazy_storage___sharePlayOnboardingImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController____lazy_storage___sharePlayOnboardingImageView);
  }

  else
  {
    sub_1000023C8();
    v4 = sub_1000074D4();

    v5 = [objc_opt_self() imageNamed:v4];

    v6 = [objc_allocWithZone(UIImageView) initWithImage:v5];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

unint64_t sub_1000023C8()
{
  v1 = (v0 + OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController____lazy_storage___onboardingImageAssetName);
  if (*(v0 + OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController____lazy_storage___onboardingImageAssetName + 8))
  {
    v2 = *v1;
  }

  else
  {
    v2 = sub_100002440();
    *v1 = v2;
    v1[1] = v3;
  }

  return v2;
}

unint64_t sub_100002440()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  HasHomeButton = TUDeviceHasHomeButton();
  v3 = 0xD000000000000019;
  if (HasHomeButton)
  {
    v4 = 0xD000000000000018;
  }

  else
  {
    v3 = 0xD000000000000018;
    v4 = 0xD000000000000017;
  }

  if (v1)
  {
    v4 = 0xD000000000000017;
  }

  if (v1 == 1)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

id sub_100002510()
{
  v1 = v0;
  v2 = [objc_opt_self() labelColor];
  v3 = [objc_opt_self() configurationWithHierarchicalColor:v2];

  v4 = v3;
  v5 = sub_1000074D4();
  v6 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

  v17._object = objc_allocWithZone(v1);
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  v9 = [v8 bundleForClass:ObjCClassFromMetadata];
  v17._countAndFlagsBits = 0xE000000000000000;
  v20._object = 0x8000000100007D20;
  v20._countAndFlagsBits = 0xD000000000000017;
  v22.value._countAndFlagsBits = 0x6C6172656E6547;
  v22.value._object = 0xE700000000000000;
  v10.super.isa = v9;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  sub_1000073B4(v20, v22, v10, v24, 0, v17);

  v11 = sub_1000074D4();

  v12 = [v8 bundleForClass:ObjCClassFromMetadata];
  v18._countAndFlagsBits = 0xE000000000000000;
  v21._countAndFlagsBits = 0xD000000000000020;
  v21._object = 0x8000000100007D40;
  v23.value._countAndFlagsBits = 0x6C6172656E6547;
  v23.value._object = 0xE700000000000000;
  v13.super.isa = v12;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  sub_1000073B4(v21, v23, v13, v25, 0, v18);

  v14 = sub_1000074D4();

  v15 = [v19 initWithTitle:v11 detailText:v14 icon:v6];

  return v15;
}

void sub_100002854(uint64_t a1, uint64_t a2)
{
  v16.receiver = v2;
  v16.super_class = type metadata accessor for SharePlayWelcomeViewController();
  objc_msgSendSuper2(&v16, "viewWillLayoutSubviews");
  [v2 availableContentViewHeight];
  v4 = v3;
  v5 = sub_1000022E8();
  [v5 frame];
  v7 = v6;

  if (v7 <= v4)
  {
    v8 = OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController_contentViewHeightConstraint;
    v9 = *&v2[OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController_contentViewHeightConstraint];
    if (v9)
    {
      [*&v2[OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController_contentViewHeightConstraint] constant];
      v11 = v10;
    }

    else
    {
      v11 = 0.0;
    }

    [v2 availableContentViewHeight];
    if (v9)
    {
      v13 = v11 == v12;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      v14 = *&v2[v8];
      if (v14)
      {
        v15 = v14;
        [v2 availableContentViewHeight];
        [v15 setConstant:?];
      }
    }
  }
}

void sub_100002994()
{
  v1 = [v0 buttonTray];
  v2 = sub_100002104();
  [v1 addButton:v2];

  v3 = [v0 contentView];
  v4 = sub_1000022E8();
  [v3 addSubview:v4];

  v5 = [v0 contentView];
  v6 = [v5 heightAnchor];

  v7 = OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController____lazy_storage___sharePlayOnboardingImageView;
  [*&v0[OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController____lazy_storage___sharePlayOnboardingImageView] frame];
  v9 = [v6 constraintEqualToConstant:v8];

  v10 = objc_opt_self();
  sub_100001EDC(&qword_100010E70, &unk_1000084A0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000082B0;
  v12 = [*&v0[v7] centerXAnchor];
  v13 = [v0 contentView];
  v14 = [v13 centerXAnchor];

  v15 = [v12 constraintEqualToAnchor:v14];
  *(v11 + 32) = v15;
  v16 = [*&v0[v7] centerYAnchor];
  v17 = [v0 contentView];
  v18 = [v17 centerYAnchor];

  v19 = [v16 constraintEqualToAnchor:v18];
  *(v11 + 40) = v19;
  *(v11 + 48) = v9;
  sub_100003280();
  v20 = v9;
  isa = sub_100007504().super.isa;

  [v10 activateConstraints:isa];

  v22 = *&v0[OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController_contentViewHeightConstraint];
  *&v0[OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController_contentViewHeightConstraint] = v20;
}

uint64_t sub_100002C50()
{
  v1 = OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController_delegate;
  swift_beginAccess();
  sub_1000031AC(v0 + v1, v4);
  if (!v5)
  {
    return sub_1000032CC(v4, &qword_100010D60, &unk_100008310);
  }

  sub_10000321C(v4, v3);
  sub_1000032CC(v4, &qword_100010D60, &unk_100008310);
  sub_100001F24(v3, v3[3]);
  sub_1000063D0();
  return sub_100001F68(v3);
}

id sub_100002D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = &v7[OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController_delegate];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  *&v7[OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController____lazy_storage___continueButton] = 0;
  *&v7[OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController____lazy_storage___sharePlayOnboardingImageView] = 0;
  v12 = &v7[OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController____lazy_storage___onboardingImageAssetName];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v7[OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController_contentViewHeightConstraint] = 0;
  v13 = sub_1000074D4();

  if (!a4)
  {
    v14 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  v14 = sub_1000074D4();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = sub_1000074D4();

LABEL_6:
  v18.receiver = v7;
  v18.super_class = type metadata accessor for SharePlayWelcomeViewController();
  v16 = objc_msgSendSuper2(&v18, "initWithTitle:detailText:symbolName:contentLayout:", v13, v14, v15, a7);

  return v16;
}

id sub_100002F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v10 = &v6[OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController_delegate];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  *&v6[OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController____lazy_storage___continueButton] = 0;
  *&v6[OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController____lazy_storage___sharePlayOnboardingImageView] = 0;
  v11 = &v6[OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController____lazy_storage___onboardingImageAssetName];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v6[OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController_contentViewHeightConstraint] = 0;
  v12 = sub_1000074D4();

  if (a4)
  {
    v13 = sub_1000074D4();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v6;
  v16.super_class = type metadata accessor for SharePlayWelcomeViewController();
  v14 = objc_msgSendSuper2(&v16, "initWithTitle:detailText:icon:contentLayout:", v12, v13, a5, a6);

  return v14;
}

id sub_1000030C4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SharePlayWelcomeViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000031AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EDC(&qword_100010D60, &unk_100008310);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000321C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100003280()
{
  result = qword_100010D68;
  if (!qword_100010D68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100010D68);
  }

  return result;
}

uint64_t sub_1000032CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001EDC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *PeoplePickerShellViewController.connection.getter()
{
  v1 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_connection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PeoplePickerShellViewController.connection.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_connection;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  if (a1)
  {
    v6 = v5;
    v7 = sub_1000073D4();
    v9 = v8;
    v10 = objc_allocWithZone(LSApplicationRecord);
    v11 = sub_100006194(v7, v9, 1);
    if (v11)
    {
      v18 = v11;

      v17 = sub_1000042A8();
      swift_getObjectType();
      v19 = [v18 localizedName];
      sub_1000074E4();

      sub_100007494();
    }

    else
    {
      v12 = sub_100007514();
      sub_100001EDC(&qword_100010D78, &qword_100008350);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_100008320;
      v14 = sub_1000073D4();
      v16 = v15;

      *(v13 + 56) = &type metadata for String;
      *(v13 + 64) = sub_100006270();
      *(v13 + 32) = v14;
      *(v13 + 40) = v16;
      sub_100006FE0(0, &qword_100010D88, OS_os_log_ptr);
      v17 = sub_100007544();
      sub_1000074C4("Couldn't get applicationRecord for bundleID: %@", 47, 2, &_mh_execute_header, v17, v12, v13);
    }
  }
}

uint64_t (*PeoplePickerShellViewController.connection.modify(uint64_t *a1))()
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
  v4 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_connection;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1000035F4;
}

void sub_1000035F4(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[3] + v3[4]);
    if (v4)
    {
      v5 = v4;
      v6 = sub_1000073D4();
      v8 = v7;
      v9 = objc_allocWithZone(LSApplicationRecord);
      v10 = sub_100006194(v6, v8, 1);
      if (v10)
      {
        v17 = v10;

        v16 = sub_1000042A8();
        swift_getObjectType();
        v18 = [v17 localizedName];
        sub_1000074E4();

        sub_100007494();
      }

      else
      {
        v11 = sub_100007514();
        sub_100001EDC(&qword_100010D78, &qword_100008350);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_100008320;
        v13 = sub_1000073D4();
        v15 = v14;

        *(v12 + 56) = &type metadata for String;
        *(v12 + 64) = sub_100006270();
        *(v12 + 32) = v13;
        *(v12 + 40) = v15;
        sub_100006FE0(0, &qword_100010D88, OS_os_log_ptr);
        v16 = sub_100007544();
        sub_1000074C4("Couldn't get applicationRecord for bundleID: %@", 47, 2, &_mh_execute_header, v16, v11, v12);
      }
    }
  }

  free(v3);
}

uint64_t PeoplePickerShellViewController.extensionViewController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_extensionViewController;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

void *PeoplePickerShellViewController.activity.getter()
{
  v1 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_activity;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PeoplePickerShellViewController.activity.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_activity;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (!a1)
  {
    v5 = v4;
    goto LABEL_8;
  }

  if (!v4)
  {
    v5 = a1;
    goto LABEL_7;
  }

  sub_100006FE0(0, &qword_100010DA0, TUConversationActivity_ptr);
  v5 = a1;
  v4 = v4;
  v6 = sub_100007534();

  if ((v6 & 1) == 0)
  {
LABEL_7:
    v7 = sub_1000042A8();
    swift_getObjectType();
    sub_100007474();

    v5 = v7;
    goto LABEL_8;
  }

LABEL_8:
}

void (*PeoplePickerShellViewController.activity.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_activity;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_100003AEC;
}

void sub_100003AEC(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v7 = *(v6 + v5);
  *(v6 + v5) = *v4;
  if (a2)
  {
    if (!v3)
    {
LABEL_13:

      v7 = *v4;
      goto LABEL_17;
    }

    if (v7)
    {
      sub_100006FE0(0, &qword_100010DA0, TUConversationActivity_ptr);
      v8 = v3;
      v7 = v7;
      v9 = sub_100007534();

      if (v9)
      {

LABEL_12:
        goto LABEL_13;
      }
    }

    else
    {
      v8 = v3;
    }

    v12 = sub_1000042A8();
    swift_getObjectType();
    sub_100007474();

    goto LABEL_12;
  }

  if (!v3)
  {
    goto LABEL_17;
  }

  if (!v7)
  {
    v10 = v3;
    goto LABEL_15;
  }

  sub_100006FE0(0, &qword_100010DA0, TUConversationActivity_ptr);
  v10 = v3;
  v7 = v7;
  v11 = sub_100007534();

  if ((v11 & 1) == 0)
  {
LABEL_15:
    v13 = sub_1000042A8();
    swift_getObjectType();
    sub_100007474();

    goto LABEL_16;
  }

LABEL_16:
LABEL_17:

  free(v2);
}

Swift::Void __swiftcall PeoplePickerShellViewController.updateShareSheetRecipients(_:)(Swift::OpaquePointer a1)
{
  v1 = sub_1000042A8();
  swift_getObjectType();

  sub_100007484();
}

void sub_100003D10(void (*a1)(void *), uint64_t a2)
{
  v5 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_activity;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6)
  {
    v7 = v6;
    v8 = sub_100007524();
    sub_100001EDC(&qword_100010D78, &qword_100008350);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100008320;
    *(v9 + 56) = sub_100006FE0(0, &qword_100010DA0, TUConversationActivity_ptr);
    *(v9 + 64) = sub_100006EE8();
    *(v9 + 32) = v7;
    sub_100006FE0(0, &qword_100010D88, OS_os_log_ptr);
    v10 = v7;
    v11 = sub_100007544();
    sub_1000074C4("Not requesting activity, activity already provided activity: %@", 63, 2, &_mh_execute_header, v11, v8, v9);

    v12 = v10;
    a1(v6);
  }

  else
  {
    v13 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_extensionViewController;
    swift_beginAccess();
    v14 = *(v2 + v13);
    if (v14)
    {
      v15 = objc_opt_self();
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v29 = sub_10000738C;
      v30 = v16;
      v25 = _NSConcreteStackBlock;
      v26 = 1107296256;
      v27 = sub_100004128;
      v28 = &unk_10000C888;
      v17 = _Block_copy(&v25);
      swift_unknownObjectRetain();

      v18 = [v15 scheduledTimerWithTimeInterval:0 repeats:v17 block:1.0];
      _Block_release(v17);
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = v18;
      v20[4] = a1;
      v20[5] = a2;
      v29 = sub_100007348;
      v30 = v20;
      v25 = _NSConcreteStackBlock;
      v26 = 1107296256;
      v27 = sub_10000423C;
      v28 = &unk_10000C8D8;
      v21 = _Block_copy(&v25);
      v22 = v18;

      [v14 requestActivity:v21];
      _Block_release(v21);
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = sub_100007514();
      sub_100006FE0(0, &qword_100010D88, OS_os_log_ptr);
      v24 = sub_100007544();
      sub_1000074C4("No valid extensionViewController, can't populate activity", 57, 2, &_mh_execute_header, v24, v23, &_swiftEmptyArrayStorage);

      a1(0);
    }
  }
}

void sub_1000040C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_100004728();
    [v4 startAnimating];
  }
}

void sub_100004128(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_100004190(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [a3 invalidate];
    v9 = sub_100004728();
    [v9 stopAnimating];

    a4(a1);
  }
}

void sub_10000423C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_1000042A8()
{
  v1 = sub_1000073F4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___peoplePickerViewController;
  v7 = *(v0 + OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___peoplePickerViewController);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___peoplePickerViewController);
  }

  else
  {
    (*(v2 + 104))(v5, enum case for PeoplePickerStyle.sharePlay(_:), v1);
    v9 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_activity;
    swift_beginAccess();
    v10 = *(v0 + v9);
    v11 = sub_1000074B4();
    v13 = v12;

    (*(v2 + 8))(v5, v1);
    swift_getObjectType();
    v14 = [v11 navigationItem];
    [v14 setHidesBackButton:1];

    sub_1000072D8();
    swift_unknownObjectRetain();
    sub_1000074A4();
    v15 = *v6;
    *v6 = v11;
    *(v6 + 8) = v13;
    v8 = v11;

    v7 = 0;
  }

  v16 = v7;
  return v8;
}

char *sub_1000044A0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___sharePlayWelcomeViewController;
  v3 = *&v0[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___sharePlayWelcomeViewController];
  v4 = v3;
  if (v3 == 1)
  {
    type metadata accessor for SharePlayWelcomeViewController();
    v4 = sub_100002510();
    v10[3] = type metadata accessor for PeoplePickerShellViewController();
    v10[4] = &off_10000C710;
    v10[0] = v1;
    v5 = OBJC_IVAR____TtC18RemotePeoplePicker30SharePlayWelcomeViewController_delegate;
    swift_beginAccess();
    v6 = v1;
    sub_100006F50(v10, v4 + v5);
    swift_endAccess();
    v7 = *&v1[v2];
    *&v1[v2] = v4;
    v8 = v4;
    sub_100006FC0(v7);
  }

  sub_100006FD0(v3);
  return v4;
}

id sub_100004570()
{
  v1 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___rootNavigationController;
  v2 = *(v0 + OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___rootNavigationController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___rootNavigationController);
  }

  else
  {
    v4 = sub_1000045D4();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1000045D4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_100001FB4(v0, 1u);

  if ((v1 & 1) == 0 || (v2 = sub_1000044A0()) == 0)
  {
    v2 = sub_1000042A8();
  }

  v3 = v2;
  v4 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v2];
  result = [v4 view];
  if (result)
  {
    v6 = result;
    v7 = [objc_opt_self() systemGreenColor];
    [v6 setTintColor:v7];

    if ((v1 & 1) == 0)
    {
      v8 = [v4 navigationBar];
      v9 = [v8 standardAppearance];
      [v8 setScrollEdgeAppearance:v9];
    }

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100004728()
{
  v1 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___spinnerView;
  v2 = *(v0 + OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___spinnerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___spinnerView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:101];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1000047A0()
{
  v1 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___callCreator;
  if (*(v0 + OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___callCreator))
  {
    v2 = *(v0 + OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___callCreator);
  }

  else
  {
    sub_100007444();
    v2 = sub_100007434();
    *(v0 + v1) = v2;
  }

  return v2;
}

Swift::Void __swiftcall PeoplePickerShellViewController.viewDidLoad()()
{
  v35.receiver = v0;
  v35.super_class = type metadata accessor for PeoplePickerShellViewController();
  objc_msgSendSuper2(&v35, "viewDidLoad");
  v1 = sub_100004570();
  v2 = [v1 view];

  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = [v0 view];
  if (!v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v2 setFrame:{v6, v8, v10, v12}];
  v13 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___rootNavigationController;
  v14 = [*&v0[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___rootNavigationController] view];
  if (!v14)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = v14;
  [v14 setAutoresizingMask:18];

  [v0 addChildViewController:*&v0[v13]];
  v16 = [v0 view];
  if (!v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v16;
  v18 = [*&v0[v13] view];
  if (!v18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19 = v18;
  [v17 addSubview:v18];

  [*&v0[v13] didMoveToParentViewController:v0];
  v20 = sub_100004728();
  v21 = [v0 view];
  if (!v21)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22 = v21;
  [v21 bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  [v20 setFrame:{v24, v26, v28, v30}];
  v31 = [*&v0[v13] view];
  if (!v31)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v32 = v31;
  [v31 setAutoresizingMask:18];

  v33 = [*&v0[v13] view];
  if (v33)
  {
    v34 = v33;
    [v33 addSubview:*&v0[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___spinnerView]];

    return;
  }

LABEL_17:
  __break(1u);
}

id PeoplePickerShellViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1000074D4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id PeoplePickerShellViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_connection] = 0;
  *&v3[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_extensionViewController] = 0;
  *&v3[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_activity] = 0;
  v5 = &v3[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___peoplePickerViewController];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v3[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___sharePlayWelcomeViewController] = 1;
  *&v3[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___rootNavigationController] = 0;
  *&v3[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___spinnerView] = 0;
  *&v3[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___callCreator] = 0;
  if (a2)
  {
    v6 = sub_1000074D4();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for PeoplePickerShellViewController();
  v7 = objc_msgSendSuper2(&v9, "initWithNibName:bundle:", v6, a3);

  return v7;
}

id PeoplePickerShellViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id PeoplePickerShellViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_connection] = 0;
  *&v1[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_extensionViewController] = 0;
  *&v1[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_activity] = 0;
  v3 = &v1[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___peoplePickerViewController];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___sharePlayWelcomeViewController] = 1;
  *&v1[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___rootNavigationController] = 0;
  *&v1[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___spinnerView] = 0;
  *&v1[OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___callCreator] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for PeoplePickerShellViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id PeoplePickerShellViewController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PeoplePickerShellViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void *sub_100004EB4()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_connection;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t (*sub_100004F28(uint64_t **a1))()
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
  v2[4] = PeoplePickerShellViewController.connection.modify(v2);
  return sub_100004F9C;
}

void *sub_100004FA0()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_activity;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t (*sub_100005014(uint64_t **a1))()
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
  v2[4] = PeoplePickerShellViewController.activity.modify(v2);
  return sub_100007380;
}

void sub_100005088(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_10000511C(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_extensionViewController;
  swift_beginAccess();
  *(v3 + v4) = a1;
  return swift_unknownObjectRelease();
}

void sub_1000051DC(uint64_t a1)
{
  v1 = sub_1000042A8();
  swift_getObjectType();

  sub_100007484();
}

Swift::Void __swiftcall PeoplePickerShellViewController.peoplePickerCancelled()()
{
  v1 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_extensionViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    [v2 dismissViewControllerWithSuccess:0];
  }
}

uint64_t PeoplePickerShellViewController.peoplePickerInvited(_:withVideo:button:callerID:messagesGroup:)(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = sub_100001EDC(&qword_100010DD0, &qword_100008358);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v20 - v13;
  sub_1000062E8(a5, &v20 - v13);
  v15 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v5;
  *(v16 + 24) = a1;
  *(v16 + 32) = a2;
  *(v16 + 40) = a4;
  sub_10000635C(v14, v16 + v15);
  v17 = a4;
  v18 = v5;

  sub_100003D10(sub_1000063CC, v16);
}

id sub_1000053EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1000047A0();
  sub_100007424();

  v7 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_extensionViewController;
  swift_beginAccess();
  result = *(a2 + v7);
  if (result)
  {
    return [result dismissViewControllerWithSuccess:1];
  }

  return result;
}

Swift::Void __swiftcall PeoplePickerShellViewController.peoplePickerRequestedMessageController(with:chatGUID:)(Swift::OpaquePointer with, Swift::String_optional chatGUID)
{
  object = chatGUID.value._object;
  countAndFlagsBits = chatGUID.value._countAndFlagsBits;

  v6 = v2;
  sub_100006520(v6, with._rawValue, v6, countAndFlagsBits, object);
}

void sub_10000551C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, NSString a5)
{
  v9 = [objc_allocWithZone(MFMessageComposeViewController) init];
  if (a1)
  {
    [v9 insertGroupActivity:a1];
  }

  isa = sub_100007504().super.isa;
  [v9 setRecipients:isa];

  [v9 _setCanEditRecipients:0];
  [v9 setMessageComposeDelegate:a3];
  if (a5)
  {
    a5 = sub_1000074D4();
  }

  [v9 setChatGUID:a5];

  [v9 setModalTransitionStyle:2];
  [v9 setPreferredPresentationStyle:3];
  [a3 presentViewController:v9 animated:1 completion:0];
}

id PeoplePickerShellViewController.peoplePickerRequestedDialCall(using:video:contact:handle:senderIdentity:ttyType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  sub_1000047A0();
  sub_100007404();

  v8 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_extensionViewController;
  swift_beginAccess();
  result = *(v7 + v8);
  if (result)
  {
    return [result dismissViewControllerWithSuccess:1];
  }

  return result;
}

uint64_t PeoplePickerShellViewController.peoplePickerSentInvitation(with:facetimeUnavailablePeople:facetimeAvailablePeople:shouldAddOtherInvitedToRemoteMembers:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = a1;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  *(v10 + 48) = a4;
  v11 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_activity;
  swift_beginAccess();
  v12 = *&v4[v11];
  v47 = a1;
  if (v12)
  {
    v13 = v4;
    v14 = a1;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v15 = v13;
    v16 = v14;
    v17 = v12;
    v18 = sub_100007524();
    sub_100001EDC(&qword_100010D78, &qword_100008350);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100008320;
    *(v19 + 56) = sub_100006FE0(0, &qword_100010DA0, TUConversationActivity_ptr);
    *(v19 + 64) = sub_100006EE8();
    *(v19 + 32) = v17;
    sub_100006FE0(0, &qword_100010D88, OS_os_log_ptr);
    v20 = v17;
    v21 = sub_100007544();
    sub_1000074C4("Not requesting activity, activity already provided activity: %@", 63, 2, &_mh_execute_header, v21, v18, v19);

    v22 = v20;
    sub_1000047A0();
    sub_100007414();

    v23 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_extensionViewController;
    swift_beginAccess();
    v24 = *&v15[v23];
    if (v24)
    {
      [v24 dismissViewControllerWithSuccess:1];
    }
  }

  else
  {
    v26 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_extensionViewController;
    swift_beginAccess();
    v27 = *&v4[v26];
    if (v27)
    {
      v46 = objc_opt_self();
      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v52 = sub_100006EBC;
      v53 = v28;
      aBlock = _NSConcreteStackBlock;
      v49 = 1107296256;
      v50 = sub_100004128;
      v51 = &unk_10000C698;
      v29 = _Block_copy(&aBlock);
      v30 = v5;
      v31 = a1;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v32 = v30;
      v33 = v31;
      swift_unknownObjectRetain();

      v34 = [v46 scheduledTimerWithTimeInterval:0 repeats:v29 block:1.0];
      _Block_release(v29);
      v35 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v36 = swift_allocObject();
      v36[2] = v35;
      v36[3] = v34;
      v36[4] = sub_100006E80;
      v36[5] = v10;
      v52 = sub_100006EDC;
      v53 = v36;
      aBlock = _NSConcreteStackBlock;
      v49 = 1107296256;
      v50 = sub_10000423C;
      v51 = &unk_10000C6E8;
      v37 = _Block_copy(&aBlock);
      v38 = v34;

      v25 = v47;

      [v27 requestActivity:v37];
      _Block_release(v37);

      swift_unknownObjectRelease();

      goto LABEL_8;
    }

    v40 = v5;
    v41 = a1;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v40;
    v42 = v41;
    v43 = sub_100007514();
    sub_100006FE0(0, &qword_100010D88, OS_os_log_ptr);
    v44 = sub_100007544();
    sub_1000074C4("No valid extensionViewController, can't populate activity", 57, 2, &_mh_execute_header, v44, v43, &_swiftEmptyArrayStorage);

    sub_1000047A0();
    sub_100007414();

    v45 = *&v5[v26];
    if (v45)
    {
      [v45 dismissViewControllerWithSuccess:1];
    }
  }

  v25 = v47;
LABEL_8:
}

id sub_100005CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1000047A0();
  sub_100007414();

  v7 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_extensionViewController;
  swift_beginAccess();
  result = *(a2 + v7);
  if (result)
  {
    return [result dismissViewControllerWithSuccess:1];
  }

  return result;
}

uint64_t sub_100005D6C(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = sub_100001EDC(&qword_100010DD0, &qword_100008358);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v20 - v13;
  sub_1000062E8(a5, &v20 - v13);
  v15 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v5;
  *(v16 + 24) = a1;
  *(v16 + 32) = a2;
  *(v16 + 40) = a4;
  sub_10000635C(v14, v16 + v15);
  v17 = a4;
  v18 = v5;

  sub_100003D10(sub_100007384, v16);
}

uint64_t sub_100005EB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v9 = v4;
  v10 = a1;

  sub_10000697C(v9, v9, v10, a2, a3, v5);
}

id PeoplePickerShellViewController.messageComposeViewController(_:didFinishWith:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100007524();
  if (a2)
  {
    sub_100001EDC(&qword_100010D78, &qword_100008350);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100008320;
    type metadata accessor for MessageComposeResult();
    v8 = sub_1000074F4();
    v10 = v9;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_100006270();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    sub_100006FE0(0, &qword_100010D88, OS_os_log_ptr);
    v11 = sub_100007544();
    sub_1000074C4("Dismissing viewController because we received result: %@", 56, 2, &_mh_execute_header, v11, v6, v7);

    v12 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_extensionViewController;
    swift_beginAccess();
    result = *(v3 + v12);
    if (result)
    {
      return [result dismissViewControllerWithSuccess:a2 == 1];
    }
  }

  else
  {
    sub_100006FE0(0, &qword_100010D88, OS_os_log_ptr);
    v14 = sub_100007544();
    sub_1000074C4("Not dismissing ViewController because user cancelled Messages compose view", 74, 2, &_mh_execute_header, v14, v6, &_swiftEmptyArrayStorage);

    return [a1 dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

id sub_100006194(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1000074D4();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_1000073C4();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_100006270()
{
  result = qword_100010D80;
  if (!qword_100010D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010D80);
  }

  return result;
}

uint64_t sub_1000062E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EDC(&qword_100010DD0, &qword_100008358);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000635C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EDC(&qword_100010DD0, &qword_100008358);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000063D0()
{
  v1 = objc_autoreleasePoolPush();
  v2 = sub_100004570();
  sub_100001EDC(&qword_100010E70, &unk_1000084A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100008330;
  *(v3 + 32) = sub_1000042A8();
  sub_100006FE0(0, &qword_100010E78, UIViewController_ptr);
  isa = sub_100007504().super.isa;

  [v2 setViewControllers:isa animated:1];

  v5 = *(v0 + OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___sharePlayWelcomeViewController);
  *(v0 + OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___sharePlayWelcomeViewController) = 0;
  sub_100006FC0(v5);
  objc_autoreleasePoolPop(v1);
  v6 = [*(v0 + OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController____lazy_storage___rootNavigationController) navigationBar];
  v7 = [v6 standardAppearance];
  [v6 setScrollEdgeAppearance:v7];
}

void sub_100006520(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v11 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_activity;
  swift_beginAccess();
  v12 = *(a1 + v11);
  if (v12)
  {

    v13 = v12;

    v33 = a3;
    v14 = sub_100007524();
    sub_100001EDC(&qword_100010D78, &qword_100008350);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100008320;
    *(v15 + 56) = sub_100006FE0(0, &qword_100010DA0, TUConversationActivity_ptr);
    *(v15 + 64) = sub_100006EE8();
    *(v15 + 32) = v13;
    sub_100006FE0(0, &qword_100010D88, OS_os_log_ptr);
    v16 = v13;
    v17 = sub_100007544();
    sub_1000074C4("Not requesting activity, activity already provided activity: %@", 63, 2, &_mh_execute_header, v17, v14, v15);

    v18 = v16;
    sub_10000551C(v12, a2, v33, a4, a5);
  }

  else
  {
    v19 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_extensionViewController;
    swift_beginAccess();
    v20 = *(a1 + v19);
    if (v20)
    {
      v21 = objc_opt_self();
      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v38 = sub_10000738C;
      v39 = v22;
      aBlock = _NSConcreteStackBlock;
      v35 = 1107296256;
      v36 = sub_100004128;
      v37 = &unk_10000C810;
      v23 = _Block_copy(&aBlock);

      swift_unknownObjectRetain();

      v24 = a3;

      v25 = [v21 scheduledTimerWithTimeInterval:0 repeats:v23 block:1.0];
      _Block_release(v23);
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v27 = swift_allocObject();
      v27[2] = v26;
      v27[3] = v25;
      v27[4] = sub_100007270;
      v27[5] = v10;
      v38 = sub_100007348;
      v39 = v27;
      aBlock = _NSConcreteStackBlock;
      v35 = 1107296256;
      v36 = sub_10000423C;
      v37 = &unk_10000C860;
      v28 = _Block_copy(&aBlock);
      v29 = v25;

      [v20 requestActivity:v28];
      _Block_release(v28);

      swift_unknownObjectRelease();
    }

    else
    {

      v30 = a3;
      v31 = sub_100007514();
      sub_100006FE0(0, &qword_100010D88, OS_os_log_ptr);
      v32 = sub_100007544();
      sub_1000074C4("No valid extensionViewController, can't populate activity", 57, 2, &_mh_execute_header, v32, v31, &_swiftEmptyArrayStorage);

      sub_10000551C(0, a2, v30, a4, a5);
    }
  }
}

void sub_10000697C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  *(v12 + 48) = a6;
  v13 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_activity;
  swift_beginAccess();
  v14 = *(a1 + v13);
  if (v14)
  {
    v15 = a2;
    a3;

    v16 = v14;
    v17 = sub_100007524();
    sub_100001EDC(&qword_100010D78, &qword_100008350);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100008320;
    *(v18 + 56) = sub_100006FE0(0, &qword_100010DA0, TUConversationActivity_ptr);
    *(v18 + 64) = sub_100006EE8();
    *(v18 + 32) = v16;
    sub_100006FE0(0, &qword_100010D88, OS_os_log_ptr);
    v19 = v16;
    v20 = sub_100007544();
    sub_1000074C4("Not requesting activity, activity already provided activity: %@", 63, 2, &_mh_execute_header, v20, v17, v18);

    v21 = v19;
    sub_1000047A0();
    sub_100007414();

    v22 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_extensionViewController;
    swift_beginAccess();
    v23 = *&v15[v22];
    if (v23)
    {
      [v23 dismissViewControllerWithSuccess:1];
    }
  }

  else
  {
    v24 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_extensionViewController;
    swift_beginAccess();
    v25 = *(a1 + v24);
    if (v25)
    {
      v41 = objc_opt_self();
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v46 = sub_10000738C;
      v47 = v26;
      aBlock = _NSConcreteStackBlock;
      v43 = 1107296256;
      v44 = sub_100004128;
      v45 = &unk_10000C770;
      v27 = _Block_copy(&aBlock);
      v28 = a2;
      v29 = a3;

      swift_unknownObjectRetain();

      v30 = [v41 scheduledTimerWithTimeInterval:0 repeats:v27 block:1.0];
      _Block_release(v27);
      v31 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v32 = swift_allocObject();
      v32[2] = v31;
      v32[3] = v30;
      v32[4] = sub_100007388;
      v32[5] = v12;
      v46 = sub_100007348;
      v47 = v32;
      aBlock = _NSConcreteStackBlock;
      v43 = 1107296256;
      v44 = sub_10000423C;
      v45 = &unk_10000C7C0;
      v33 = _Block_copy(&aBlock);
      v34 = v30;

      [v25 requestActivity:v33];
      _Block_release(v33);

      swift_unknownObjectRelease();
    }

    else
    {
      v35 = a2;
      v36 = a3;

      v37 = sub_100007514();
      sub_100006FE0(0, &qword_100010D88, OS_os_log_ptr);
      v38 = sub_100007544();
      sub_1000074C4("No valid extensionViewController, can't populate activity", 57, 2, &_mh_execute_header, v38, v37, &_swiftEmptyArrayStorage);

      sub_1000047A0();
      sub_100007414();

      v39 = OBJC_IVAR____TtC18RemotePeoplePicker31PeoplePickerShellViewController_extensionViewController;
      swift_beginAccess();
      v40 = *&v35[v39];
      if (v40)
      {
        [v40 dismissViewControllerWithSuccess:1];
      }
    }
  }
}

uint64_t sub_100006E84()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006EC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100006EE8()
{
  result = qword_100010DD8;
  if (!qword_100010DD8)
  {
    sub_100006FE0(255, &qword_100010DA0, TUConversationActivity_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010DD8);
  }

  return result;
}

uint64_t sub_100006F50(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EDC(&qword_100010D60, &unk_100008310);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100006FC0(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_100006FD0(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_100006FE0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100007028()
{
  v1 = *(sub_100001EDC(&qword_100010DD0, &qword_100008358) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_1000073E4();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

id sub_100007158(uint64_t a1)
{
  v3 = *(sub_100001EDC(&qword_100010DD0, &qword_100008358) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_1000053EC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000071E0()
{

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_10000727C(void (*a1)(void))
{
  a1(*(v1 + 16));

  a1(*(v1 + 40));

  return _swift_deallocObject(v1, 48, 7);
}

unint64_t sub_1000072D8()
{
  result = qword_100010E80;
  if (!qword_100010E80)
  {
    type metadata accessor for PeoplePickerShellViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010E80);
  }

  return result;
}