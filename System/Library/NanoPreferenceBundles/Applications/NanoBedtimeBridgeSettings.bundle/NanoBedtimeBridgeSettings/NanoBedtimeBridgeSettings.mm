id sub_1C48(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v7 = sub_116BC();
  }

  else
  {
    v7 = 0;
  }

  v13.receiver = v4;
  v13.super_class = type metadata accessor for HKSPMultilinePSTableCell();
  v8 = objc_msgSendSuper2(&v13, "initWithStyle:reuseIdentifier:specifier:", a1, v7, a4);
  v9 = v8;

  if (!v9)
  {
    v8 = 0;
    goto LABEL_8;
  }

  v10 = v9;
  result = [v10 titleLabel];
  if (result)
  {
    v12 = result;
    [result setNumberOfLines:0];

    a4 = v12;
LABEL_8:

    return v8;
  }

  __break(1u);
  return result;
}

id sub_1D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_116BC();
  }

  else
  {
    v5 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for HKSPMultilinePSTableCell();
  v6 = objc_msgSendSuper2(&v10, "initWithStyle:reuseIdentifier:", a1, v5);

  v7 = v6;
  result = [v7 titleLabel];
  if (result)
  {
    v9 = result;
    [result setNumberOfLines:0];

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_204C(uint64_t a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for HKSPDeleteButtonCell();
  objc_msgSendSuper2(&v11, "layoutSubviews");
  v2 = [v1 textLabel];
  if (v2)
  {
    v3 = v2;
    [v2 setTextAlignment:4];
  }

  v4 = [v1 titleLabel];
  if (v4)
  {
    v5 = v4;
    v6 = objc_opt_self();
    v7 = [v6 systemRedColor];
    [v5 setTextColor:v7];

    v8 = [v1 titleLabel];
    if (v8)
    {
      v9 = v8;
      v10 = [v6 systemRedColor];
      [v9 setHighlightedTextColor:v10];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_227C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v7 = sub_116BC();
  }

  else
  {
    v7 = 0;
  }

  v16.receiver = v4;
  v16.super_class = type metadata accessor for HKSPMultiLineSwitchCell();
  v8 = objc_msgSendSuper2(&v16, "initWithStyle:reuseIdentifier:specifier:", a1, v7, a4);
  v9 = v8;

  if (v9)
  {

    v10 = v9;
    v11 = [v10 textLabel];
    if (v11)
    {
      v12 = v11;
      [v11 setNumberOfLines:0];
    }

    v13 = [v10 textLabel];
    if (v13)
    {
      v14 = v13;
      [v13 setAdjustsFontSizeToFitWidth:1];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_23B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_116BC();
  }

  else
  {
    v5 = 0;
  }

  v13.receiver = v3;
  v13.super_class = type metadata accessor for HKSPMultiLineSwitchCell();
  v6 = objc_msgSendSuper2(&v13, "initWithStyle:reuseIdentifier:", a1, v5);

  v7 = v6;
  v8 = [v7 textLabel];
  if (v8)
  {
    v9 = v8;
    [v8 setNumberOfLines:0];
  }

  v10 = [v7 textLabel];
  if (v10)
  {
    v11 = v10;
    [v10 setAdjustsFontSizeToFitWidth:1];
  }

  return v7;
}

uint64_t sub_24C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a4)
  {
    v9 = sub_116EC();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = a6(a3, v9, v11);

  return v12;
}

uint64_t sub_25B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_118DC();
  __break(1u);
  return result;
}

id sub_27C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v7 = sub_116BC();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v4;
  v10.super_class = type metadata accessor for HKSPSelectableSubtitleCell();
  v8 = objc_msgSendSuper2(&v10, "initWithStyle:reuseIdentifier:specifier:", a1, v7, a4);

  if (v8)
  {
  }

  return v8;
}

uint64_t sub_2884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, void *))
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a4)
  {
    v11 = sub_116EC();
    a4 = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = a5;
  v14 = a7(a3, v11, a4, a5);

  return v14;
}

char *sub_2B88(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC25NanoBedtimeBridgeSettings17SectionHeaderView_iconImage;
  sub_3FF4(0, &qword_1D4D0, NSBundle_ptr);
  v4 = sub_1185C();
  v5 = sub_116BC();
  v6 = [objc_opt_self() imageNamed:v5 inBundle:v4 withConfiguration:0];

  *&v2[v3] = v6;
  type metadata accessor for BridgeSettingsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  v9 = [v8 bundleForClass:ObjCClassFromMetadata];
  v80._countAndFlagsBits = 0xE000000000000000;
  v87._countAndFlagsBits = 0x414E5F5045454C53;
  v87._object = 0xEF454C5449545F56;
  v89.value._countAndFlagsBits = 0;
  v89.value._object = 0;
  v10.super.isa = v9;
  v91._countAndFlagsBits = 0;
  v91._object = 0xE000000000000000;
  v11 = sub_1137C(v87, v89, v10, v91, 0, v80);
  v13 = v12;

  v14 = &v2[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings17SectionHeaderView_titleText];
  *v14 = v11;
  v14[1] = v13;
  v15 = [v8 bundleForClass:ObjCClassFromMetadata];
  v81._countAndFlagsBits = 0xE000000000000000;
  v88._countAndFlagsBits = 0x45485F5045454C53;
  v88._object = 0xEC00000052454441;
  v90.value._countAndFlagsBits = 0;
  v90.value._object = 0;
  v16.super.isa = v15;
  v92._countAndFlagsBits = 0;
  v92._object = 0xE000000000000000;
  v17 = sub_1137C(v88, v90, v16, v92, 0, v81);
  v19 = v18;

  v20 = &v2[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings17SectionHeaderView_descriptionText];
  *v20 = v17;
  v20[1] = v19;
  v86.receiver = v2;
  v86.super_class = type metadata accessor for SectionHeaderView();
  v21 = objc_msgSendSuper2(&v86, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v21 setPreservesSuperviewLayoutMargins:1];
  v85 = [objc_allocWithZone(UIImageView) initWithImage:*&v21[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings17SectionHeaderView_iconImage]];
  [v85 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v85 setContentMode:1];
  [v21 addSubview:v85];
  v22 = [objc_allocWithZone(UILabel) init];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v22 setAdjustsFontForContentSizeCategory:1];
  v23 = objc_opt_self();
  v24 = [v23 hk_preferredFontForTextStyle:UIFontTextStyleLargeTitle symbolicTraits:32770];
  [v22 setFont:v24];

  v25 = sub_116BC();

  [v22 setText:v25];

  v26 = objc_opt_self();
  v27 = [v26 whiteColor];
  [v22 setTextColor:v27];

  [v22 setTextAlignment:1];
  [v22 setNumberOfLines:0];
  [v21 addSubview:v22];
  v28 = [objc_allocWithZone(UILabel) init];
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v28 setAdjustsFontForContentSizeCategory:1];
  v82 = v23;
  v29 = v23;
  v30 = [v23 hk_preferredFontForTextStyle:?];
  [v28 setFont:v30];

  v31 = sub_116BC();

  [v28 setText:v31];

  v32 = [v26 whiteColor];
  [v28 setTextColor:v32];

  [v28 setTextAlignment:1];
  [v28 setNumberOfLines:0];
  [v21 addSubview:v28];
  v83 = objc_opt_self();
  sub_408C(0, &qword_1D4D8, &type metadata for Swift.AnyObject + 8, &type metadata accessor for _ContiguousArrayStorage);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_123B0;
  v34 = [v85 topAnchor];
  v35 = [v21 layoutMarginsGuide];
  v36 = [v35 topAnchor];

  v37 = [v29 hk_preferredFontForTextStyle:UIFontTextStyleTitle1 symbolicTraits:0x8000];
  [v37 _scaledValueForValue:34.0];
  v39 = v38;

  v40 = [v34 constraintEqualToAnchor:v36 constant:v39];
  *(v33 + 32) = v40;
  v41 = [v85 centerXAnchor];
  v42 = [v21 layoutMarginsGuide];
  v43 = [v42 centerXAnchor];

  v44 = [v41 constraintEqualToAnchor:v43];
  *(v33 + 40) = v44;
  v45 = [v85 widthAnchor];
  v46 = [v85 heightAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v33 + 48) = v47;
  v48 = [v85 widthAnchor];
  v49 = [v48 constraintEqualToConstant:60.0];

  *(v33 + 56) = v49;
  v50 = [v22 firstBaselineAnchor];
  v51 = [v85 bottomAnchor];

  v52 = [v50 constraintEqualToSystemSpacingBelowAnchor:v51 multiplier:0.72];
  *(v33 + 64) = v52;
  v53 = [v22 leadingAnchor];
  v54 = [v21 layoutMarginsGuide];
  v55 = [v54 leadingAnchor];

  v56 = [v53 constraintEqualToAnchor:v55];
  *(v33 + 72) = v56;
  v57 = [v22 trailingAnchor];
  v58 = [v21 layoutMarginsGuide];
  v59 = [v58 trailingAnchor];

  v60 = [v57 constraintEqualToAnchor:v59];
  *(v33 + 80) = v60;
  v61 = [v28 firstBaselineAnchor];
  v62 = [v22 lastBaselineAnchor];

  v63 = [v82 hk_preferredFontForTextStyle:UIFontTextStyleBody];
  [v63 _scaledValueForValue:26.0];
  v65 = v64;

  v66 = [v61 constraintEqualToAnchor:v62 constant:v65];
  *(v33 + 88) = v66;
  v67 = [v28 leadingAnchor];
  v68 = [v21 layoutMarginsGuide];
  v69 = [v68 leadingAnchor];

  v70 = [v67 constraintEqualToAnchor:v69];
  *(v33 + 96) = v70;
  v71 = [v28 trailingAnchor];
  v72 = [v21 layoutMarginsGuide];
  v73 = [v72 trailingAnchor];

  v74 = [v71 constraintEqualToAnchor:v73];
  *(v33 + 104) = v74;
  v75 = [v21 bottomAnchor];

  v76 = [v28 bottomAnchor];
  v77 = [v75 constraintEqualToAnchor:v76];

  *(v33 + 112) = v77;
  sub_3FF4(0, &qword_1D4E0, NSLayoutConstraint_ptr);
  isa = sub_1176C().super.isa;

  [v83 activateConstraints:isa];

  return v21;
}

id sub_39AC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_3A6C()
{
  sub_116EC();
  v0 = sub_1174C();

  return v0;
}

uint64_t sub_3AA8(uint64_t a1)
{
  sub_116EC();
  sub_1172C();
}

Swift::Int sub_3AFC(uint64_t a1)
{
  sub_116EC();
  sub_1193C();
  sub_1172C();
  v1 = sub_1194C();

  return v1;
}

uint64_t sub_3B78(uint64_t a1, id *a2)
{
  result = sub_116CC();
  *a2 = 0;
  return result;
}

uint64_t sub_3BF0(uint64_t a1, id *a2)
{
  v3 = sub_116DC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_3C70@<X0>(uint64_t *a2@<X8>)
{
  sub_116EC();
  v3 = sub_116BC();

  *a2 = v3;
  return result;
}

void *sub_3CB4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_3CD4(void *a1, uint64_t *a2)
{
  v2 = sub_116EC();
  v4 = v3;
  if (v2 == sub_116EC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1191C();
  }

  return v7 & 1;
}

uint64_t sub_3D5C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_116BC();

  *a2 = v3;
  return result;
}

uint64_t sub_3DA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_116EC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_3DD0(uint64_t a1)
{
  v2 = sub_4144(&qword_1D510, &unk_12640);
  v3 = sub_4144(&qword_1D518, &unk_1255C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

id sub_3E68(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_116BC();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for HKSPDeleteButtonCell();
  v6 = objc_msgSendSuper2(&v8, "initWithStyle:reuseIdentifier:specifier:", 0, v5, a3);

  if (v6)
  {
  }

  return v6;
}

void sub_3EFC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC25NanoBedtimeBridgeSettings17SectionHeaderView_iconImage;
  sub_3FF4(0, &qword_1D4D0, NSBundle_ptr);
  v3 = sub_1185C();
  v4 = sub_116BC();
  v5 = [objc_opt_self() imageNamed:v4 inBundle:v3 withConfiguration:0];

  *(v1 + v2) = v5;
  sub_118DC();
  __break(1u);
}

uint64_t sub_3FF4(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_408C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_4144(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_41C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v44 = a3;
  v5 = sub_1157C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaFeatureStatus] = 0;
  v9 = &v3[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaFooterURL];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = objc_allocWithZone(HKSPSleepStore);
  v11 = sub_116BC();
  v12 = [v10 initWithIdentifier:v11 healthStore:0 options:38];

  v13 = OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepStore;
  *&v4[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepStore] = v12;
  v14 = [objc_allocWithZone(HKWristDetectionSettingManager) init];
  *&v4[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_wristDetectManager] = v14;
  v15 = [objc_allocWithZone(UNUserNotificationCenter) initWithBundleIdentifier:kHKHealthAppBundleIdentifier];
  *&v4[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_notificationCenter] = v15;
  sub_115CC();
  *&v4[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepHealthNotificationSettingsProvider] = sub_115BC();
  v16 = *&v4[v13];
  v17 = objc_allocWithZone(HKHealthStore);
  v18 = v16;
  v19 = [v17 init];
  v20 = [objc_allocWithZone(HKSPSleepHealthDataSource) initWithSleepStore:v18 healthDataSource:v19];

  v21 = [v20 featureAvailabilityProvidingForFeatureIdentifier:HKFeatureIdentifierSleepApneaNotifications];
  if (!v21)
  {
    __break(1u);
  }

  v22 = v21;

  v23 = [objc_allocWithZone(HKFeatureStatusManager) initWithFeatureAvailabilityProviding:v22 healthDataSource:v20 countryCodeSource:1];
  *&v4[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaNotificationsFeatureStatusManager] = v23;
  v24 = type metadata accessor for BridgeSettingsViewController();
  v46.receiver = v4;
  v46.super_class = v24;
  v43[1] = v24;
  v25 = objc_msgSendSuper2(&v46, "initWithNibName:bundle:", 0, 0);
  v26 = *&v25[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepStore];
  v27 = v25;
  [v26 addObserver:v27];
  v28 = *&v27[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_wristDetectManager];
  sub_3FF4(0, &qword_1D6A0, OS_dispatch_queue_ptr);
  v29 = v27;
  v30 = v28;
  v31 = sub_1183C();
  [v30 registerObserver:v29 queue:v31];

  (*(v6 + 104))(v8, enum case for SleepHealthNotificationSettingsProvider.ObservableKey.sleepScoreNotificationLevels(_:), v5);

  sub_1158C();

  (*(v6 + 8))(v8, v5);
  v32 = OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaNotificationsFeatureStatusManager;
  v33 = *&v29[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaNotificationsFeatureStatusManager];
  v34 = sub_1183C();
  [v33 registerObserver:v29 queue:v34];

  v35 = *&v29[v32];
  v45 = 0;
  v36 = [v35 featureStatusWithError:&v45];
  v37 = v45;
  if (!v36)
  {
    v38 = v37;
    sub_1138C();

    swift_willThrow();

    v36 = 0;
  }

  v39 = *&v29[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaFeatureStatus];
  *&v29[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaFeatureStatus] = v36;

  v40 = &v29[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaFooterURL];
  *v40 = 0;
  *(v40 + 1) = 0;

  sub_B2E4(0, &qword_1D778, sub_DAF4, &type metadata accessor for _ContiguousArrayStorage);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_12690;
  *(v41 + 32) = sub_1162C();
  *(v41 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_1182C();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v29;
}

void sub_4704(void *a1, void *a2)
{
  v3 = [a1 traitCollection];
  sub_4CC0(v3, a2);
}

id sub_4910(char *a1)
{
  v2 = sub_1157C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*&a1[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepStore] removeObserver:a1];
  [*&a1[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_wristDetectManager] unregisterObserver:a1];
  (*(v3 + 104))(v5, enum case for SleepHealthNotificationSettingsProvider.ObservableKey.sleepScoreNotificationLevels(_:), v2);

  sub_1159C();

  (*(v3 + 8))(v5, v2);
  [*&a1[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaNotificationsFeatureStatusManager] unregisterObserver:a1];
  v6 = type metadata accessor for BridgeSettingsViewController();
  v8.receiver = a1;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, "dealloc");
}

uint64_t sub_4A90(uint64_t a1, uint64_t a2)
{
  sub_117CC();
  sub_117BC();
  sub_117AC();

  return swift_task_deinitOnExecutor();
}

id sub_4CC0(void *a1, id a2)
{
  if (a2)
  {
    v3 = a1;
    v4 = [a2 preferredContentSizeCategory];
    a1 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [a1 preferredContentSizeCategory];
  v6 = v5;
  if (!v4)
  {

LABEL_12:

    return [v2 reloadSpecifiers];
  }

  v7 = sub_116EC();
  v9 = v8;
  if (v7 != sub_116EC() || v9 != v10)
  {
    v12 = sub_1191C();

    if (v12)
    {
      return result;
    }

    goto LABEL_12;
  }
}

id sub_4E04(int a1)
{
  v23 = a1;
  v2 = sub_113FC();
  v21 = *(v2 - 8);
  v22 = v2;
  __chkstk_darwin(v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1144C();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1139C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_116AC();
  __chkstk_darwin(v10 - 8);
  v20 = sub_113AC();
  v11 = *(v20 - 8);
  __chkstk_darwin(v20);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BridgeSettingsViewController();
  v24.receiver = v1;
  v24.super_class = v14;
  objc_msgSendSuper2(&v24, "viewWillAppear:", v23 & 1);
  sub_1169C();
  *v9 = v14;
  (*(v7 + 104))(v9, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v6);
  sub_1143C();
  sub_113BC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  result = [v16 bundleIdentifier];
  if (result)
  {
    v18 = result;
    sub_116EC();

    result = HKSPSleepWatchAppURL();
    if (result)
    {
      v19 = result;
      sub_115EC();
      sub_113DC();

      sub_115DC();

      (*(v11 + 8))(v13, v20);
      return (*(v21 + 8))(v4, v22);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_52A0()
{
  v1 = v0;
  v2 = &_swiftEmptyArrayStorage;
  v3 = objc_opt_self();
  v4 = sub_116BC();
  v5 = [v3 groupSpecifierWithID:v4];

  if (v5)
  {
    type metadata accessor for SectionHeaderView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = NSStringFromClass(ObjCClassFromMetadata);
    if (!v7)
    {
      sub_116EC();
      v7 = sub_116BC();
    }

    [v5 setProperty:v7 forKey:PSHeaderCellClassGroupKey];

    v8 = v5;
    sub_1175C();
    if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_1177C();
    }

    sub_1178C();
    v9 = sub_56AC();
    if (v9)
    {
      v10 = v9;
      if ([v9 isCurrentSleepCoachingOnboardingCompleted] && (objc_msgSend(v10, "isCurrentSleepTrackingOnboardingCompleted") & 1) != 0)
      {
        v11 = sub_5714();
        if (v11 && (v12 = v11, v13 = [v11 watchSleepFeaturesEnabled], v12, (v13 & 1) != 0))
        {
          sub_6020();
        }

        else
        {
          sub_5D28();
        }
      }

      else
      {
        sub_5A2C();
      }

      sub_54E8(v14);
      sub_DC0C(&_swiftEmptyArrayStorage);
      isa = sub_1176C().super.isa;

      [v1 setSpecifiers:isa];

      v2 = sub_DC0C(&_swiftEmptyArrayStorage);
      v8 = v10;
    }
  }

  return v2;
}

uint64_t sub_54E8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_118EC();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(*v1 >> 62))
  {
    v4 = *(&dword_10 + (*v1 & 0xFFFFFFFFFFFFFF8));
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_118EC();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_BC24(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_BCC4(v8 + 8 * *(&dword_10 + v8) + 32, (*(&dword_18 + v8) >> 1) - *(&dword_10 + v8), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

id sub_56AC()
{

  return sub_577C(&selRef_currentSleepEventRecordWithError_, "[%{public}s] failed to get sleep event record with error %@");
}

id sub_5714()
{

  return sub_577C(&selRef_currentSleepSettingsWithError_, "[%{public}s] failed to get sleep settings with error %@");
}

id sub_577C(SEL *a1, const char *a2)
{
  v5 = v2;
  swift_getObjectType();
  v6 = sub_1161C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v5 + OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepStore);
  v27 = 0;
  v11 = [v10 *a1];
  v12 = v27;
  if (!v11)
  {
    v13 = v12;
    sub_1138C();

    swift_willThrow();
    sub_115FC();
    swift_errorRetain();
    v14 = sub_1160C();
    v15 = sub_1180C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = v26;
      *v16 = 136446466;
      v18 = sub_1195C();
      v20 = sub_B64C(v18, v19, &v27);
      v25 = a2;
      v21 = v20;

      *(v16 + 4) = v21;
      *(v16 + 12) = 2112;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v22;
      *v17 = v22;
      _os_log_impl(&dword_0, v14, v15, v25, v16, 0x16u);
      sub_D60C(v17);

      sub_B418(v26);
    }

    else
    {
    }

    (*(v7 + 8))(v9, v6);
    return 0;
  }

  return v11;
}

void sub_5A2C()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = sub_116BC();
  v4 = [v2 preferenceSpecifierNamed:v3 target:0 set:0 get:0 detail:0 cell:0 edit:0];

  if (!v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v5 = v4;
  sub_1175C();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_1177C();
  }

  sub_1178C();
  type metadata accessor for BridgeSettingsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v13._countAndFlagsBits = 0xE000000000000000;
  v14._object = 0x8000000000013170;
  v14._countAndFlagsBits = 0xD000000000000011;
  v15.value._countAndFlagsBits = 0;
  v15.value._object = 0;
  v8.super.isa = v7;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  sub_1137C(v14, v15, v8, v16, 0, v13);

  v9 = sub_116BC();

  v10 = [v2 preferenceSpecifierNamed:v9 target:v1 set:0 get:0 detail:0 cell:13 edit:0];

  if (!v10)
  {
    goto LABEL_9;
  }

  type metadata accessor for HKSPMultilinePSTableCell();
  sub_D740(0, &qword_1D720, type metadata accessor for HKSPMultilinePSTableCell);
  [v10 setProperty:sub_1192C() forKey:PSCellClassKey];
  swift_unknownObjectRelease();
  [v10 setButtonAction:"setUpSleep:"];
  v11 = sub_116BC();
  [v10 setIdentifier:v11];

  v12 = v10;
  sub_1175C();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_1177C();
  }

  sub_1178C();
}

void sub_5D28()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = sub_116BC();
  v4 = [v2 preferenceSpecifierNamed:v3 target:0 set:0 get:0 detail:0 cell:0 edit:0];

  if (!v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v5 = v4;
  sub_1175C();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_1177C();
  }

  sub_1178C();
  type metadata accessor for BridgeSettingsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v13._countAndFlagsBits = 0xE000000000000000;
  v14._object = 0x8000000000013130;
  v14._countAndFlagsBits = 0xD000000000000012;
  v15.value._countAndFlagsBits = 0;
  v15.value._object = 0;
  v8.super.isa = v7;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  sub_1137C(v14, v15, v8, v16, 0, v13);

  v9 = sub_116BC();

  v10 = [v2 preferenceSpecifierNamed:v9 target:v1 set:0 get:0 detail:0 cell:13 edit:0];

  if (!v10)
  {
    goto LABEL_9;
  }

  type metadata accessor for HKSPMultilinePSTableCell();
  sub_D740(0, &qword_1D720, type metadata accessor for HKSPMultilinePSTableCell);
  [v10 setProperty:sub_1192C() forKey:PSCellClassKey];
  swift_unknownObjectRelease();
  [v10 setButtonAction:"didTapUseWatch:"];
  v11 = sub_116BC();
  [v10 setIdentifier:v11];

  v12 = v10;
  sub_1175C();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_1177C();
  }

  sub_1178C();
}

void sub_6020()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1161C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v118 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = &_swiftEmptyArrayStorage;
  v6 = objc_opt_self();
  v7 = sub_116BC();
  v8 = [v6 preferenceSpecifierNamed:v7 target:0 set:0 get:0 detail:0 cell:0 edit:0];

  if (!v8)
  {
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v115 = ObjectType;
  v116 = v4;
  v117 = v3;
  v9 = v8;
  sub_1175C();
  if (*(&dword_10 + (v128 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v128 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_1177C();
  }

  sub_1178C();
  type metadata accessor for BridgeSettingsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();
  v12 = [v11 bundleForClass:ObjCClassFromMetadata];
  v106._countAndFlagsBits = 0xE000000000000000;
  v129._countAndFlagsBits = 0xD000000000000019;
  v129._object = 0x8000000000012FA0;
  v140.value._countAndFlagsBits = 0;
  v140.value._object = 0;
  v13.super.isa = v12;
  v150._countAndFlagsBits = 0;
  v150._object = 0xE000000000000000;
  sub_1137C(v129, v140, v13, v150, 0, v106);

  v14 = sub_116BC();

  v125 = v6;
  v15 = [v6 preferenceSpecifierNamed:v14 target:v1 set:"setSleepTrackingEnabled:withSpecifier:" get:"sleepTrackingEnabled:" detail:0 cell:6 edit:0];

  if (!v15)
  {
    goto LABEL_43;
  }

  v16 = sub_116BC();
  [v15 setIdentifier:v16];

  v121 = type metadata accessor for HKSPMultiLineSwitchCell();
  v127 = v121;
  v120 = sub_D740(0, &qword_1D710, type metadata accessor for HKSPMultiLineSwitchCell);
  v17 = sub_1192C();
  v123 = PSCellClassKey;
  [v15 setProperty:v17 forKey:?];
  swift_unknownObjectRelease();
  v126 = v1;
  v18 = *(v1 + OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_wristDetectManager);
  [v18 isWristDetectEnabled];
  isa = sub_1179C().super.super.isa;
  [v15 setProperty:isa forKey:PSEnabledKey];

  LODWORD(isa) = [v18 isWristDetectEnabled];
  v20 = [v11 bundleForClass:ObjCClassFromMetadata];
  v122 = v9;
  if (isa)
  {
    v107._countAndFlagsBits = 0xE000000000000000;
    v130._countAndFlagsBits = 0xD00000000000001BLL;
    v130._object = 0x8000000000013110;
    v141.value._countAndFlagsBits = 0;
    v141.value._object = 0;
    v21.super.isa = v20;
    v151._countAndFlagsBits = 0;
    v151._object = 0xE000000000000000;
    sub_1137C(v130, v141, v21, v151, 0, v107);

    v22 = &PSFooterTextGroupKey;
    v23 = &HKSPMultilinePSTableCell;
    v24 = v125;
  }

  else
  {
    v107._countAndFlagsBits = 0xE000000000000000;
    v131._countAndFlagsBits = 0xD000000000000029;
    v131._object = 0x8000000000012FE0;
    v142.value._countAndFlagsBits = 0;
    v142.value._object = 0;
    v25.super.isa = v20;
    v152._countAndFlagsBits = 0;
    v152._object = 0xE000000000000000;
    v26 = sub_1137C(v131, v142, v25, v152, 0, v107);
    v28 = v27;

    v29 = [v11 bundleForClass:ObjCClassFromMetadata];
    v109._countAndFlagsBits = 0xE000000000000000;
    v132._countAndFlagsBits = 0xD000000000000029;
    v132._object = 0x8000000000013010;
    v143.value._countAndFlagsBits = 0;
    v143.value._object = 0;
    v30.super.isa = v29;
    v153._countAndFlagsBits = 0;
    v153._object = 0xE000000000000000;
    sub_1137C(v132, v143, v30, v153, 0, v109);

    sub_D804(0, &qword_1D728, &qword_1D730, &protocol descriptor for CVarArg, &type metadata accessor for _ContiguousArrayStorage);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_12690;
    *(v31 + 56) = &type metadata for String;
    *(v31 + 64) = sub_D86C();
    *(v31 + 32) = v26;
    *(v31 + 40) = v28;

    sub_116FC();

    sub_3FF4(0, &qword_1D718, PSFooterHyperlinkView_ptr);
    v32 = swift_getObjCClassFromMetadata();
    v33 = NSStringFromClass(v32);
    if (!v33)
    {
      sub_116EC();
      v33 = sub_116BC();
    }

    v23 = &HKSPMultilinePSTableCell;
    v34 = v122;
    [v122 setProperty:v33 forKey:PSFooterCellClassGroupKey];

    v9 = v34;
    v35 = sub_116BC();
    [v9 setProperty:v35 forKey:PSFooterHyperlinkViewTitleKey];

    v36 = objc_allocWithZone(NSString);
    v37 = sub_116BC();

    v38 = [v36 initWithString:v37];

    v39 = sub_116BC();

    v40 = [v38 rangeOfString:v39];
    v42 = v41;

    v133.location = v40;
    v133.length = v42;
    v43 = NSStringFromRange(v133);
    if (!v43)
    {
      sub_116EC();
      v43 = sub_116BC();
    }

    [v9 setProperty:v43 forKey:PSFooterHyperlinkViewLinkRangeKey];

    v44 = [objc_opt_self() valueWithNonretainedObject:v126];
    [v9 setProperty:v44 forKey:PSFooterHyperlinkViewTargetKey];

    v45 = NSStringFromSelector("passcodeSettingsLinkTapped");
    v24 = v125;
    if (v45)
    {
      v46 = v45;
      v22 = &PSFooterHyperlinkViewActionKey;
      goto LABEL_15;
    }

    sub_116EC();
    v22 = &PSFooterHyperlinkViewActionKey;
  }

  v46 = sub_116BC();

LABEL_15:
  [v9 v23[29].ivar_lyt];

  v47 = v15;
  sub_1175C();
  if (*(&dword_10 + (v128 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v128 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_1177C();
  }

  v124 = ObjCClassFromMetadata;
  sub_1178C();
  v48 = sub_116BC();
  v49 = [v24 preferenceSpecifierNamed:v48 target:0 set:0 get:0 detail:0 cell:0 edit:0];

  v50 = v126;
  if (!v49)
  {
    goto LABEL_44;
  }

  v119 = v47;
  v51 = v49;
  sub_1175C();
  if (*(&dword_10 + (v128 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v128 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_1177C();
  }

  sub_1178C();
  v52 = v124;
  v53 = [v11 bundleForClass:v124];
  v108._countAndFlagsBits = 0xE000000000000000;
  v134._countAndFlagsBits = 0xD00000000000001DLL;
  v134._object = 0x8000000000013040;
  v144.value._countAndFlagsBits = 0;
  v144.value._object = 0;
  v54.super.isa = v53;
  v154._countAndFlagsBits = 0;
  v154._object = 0xE000000000000000;
  sub_1137C(v134, v144, v54, v154, 0, v108);

  v55 = sub_116BC();

  v56 = [v24 preferenceSpecifierNamed:v55 target:v50 set:"setWatchChargeReminder:withSpecifier:" get:"watchChargeReminder:" detail:0 cell:6 edit:0];

  if (!v56)
  {
    goto LABEL_45;
  }

  v127 = v121;
  [v56 setProperty:sub_1192C() forKey:v123];
  swift_unknownObjectRelease();
  v57 = sub_116BC();
  [v56 setIdentifier:v57];

  v58 = [v11 bundleForClass:v52];
  v110._countAndFlagsBits = 0xE000000000000000;
  v135._countAndFlagsBits = 0xD00000000000001FLL;
  v135._object = 0x8000000000013080;
  v145.value._countAndFlagsBits = 0;
  v145.value._object = 0;
  v59.super.isa = v58;
  v155._countAndFlagsBits = 0;
  v155._object = 0xE000000000000000;
  sub_1137C(v135, v145, v59, v155, 0, v110);

  v60 = sub_116BC();

  [v51 setProperty:v60 forKey:PSFooterTextGroupKey];

  v61 = v56;
  sub_1175C();
  if (*(&dword_10 + (v128 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v128 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_1177C();
  }

  v120 = v61;
  v121 = v51;
  sub_1178C();
  v62 = objc_opt_self();
  v63 = [v62 sharedBehavior];
  if (!v63)
  {
    goto LABEL_46;
  }

  v64 = v63;
  v65 = [v63 hksp_activePairedDeviceSupportsFocusMode];

  v67 = v125;
  v66 = v126;
  v68 = v124;
  if (v65)
  {
    sub_71B4();
    sub_54E8(v69);
  }

  v70 = [v62 sharedBehavior];
  if (!v70)
  {
    goto LABEL_47;
  }

  v71 = v70;
  v72 = [v70 features];

  if (!v72)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    return;
  }

  v73 = [v72 sleepResultsNotificationsOnWatch];

  if (v73)
  {
    sub_7950();
    sub_54E8(v74);
  }

  v75 = *(v66 + OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaFeatureStatus);
  if (v75)
  {
    v76 = v75;
    v77 = sub_7E88(v76);
    sub_54E8(v77);
  }

  else
  {
    v78 = v118;
    sub_115FC();
    v79 = sub_1160C();
    v80 = sub_117FC();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v127 = v82;
      *v81 = 136446210;
      v83 = sub_1195C();
      v85 = sub_B64C(v83, v84, &v127);

      *(v81 + 4) = v85;
      _os_log_impl(&dword_0, v79, v80, "[%{public}s] Feature status is nil, not showing sleep apnea section", v81, 0xCu);
      sub_B418(v82);

      v67 = v125;
    }

    (*(v116 + 8))(v78, v117);
  }

  v86 = sub_116BC();
  v87 = [v67 preferenceSpecifierNamed:v86 target:0 set:0 get:0 detail:0 cell:0 edit:0];

  if (!v87)
  {
    goto LABEL_49;
  }

  v88 = v87;
  sub_1175C();
  if (*(&dword_10 + (v128 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v128 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_1177C();
  }

  sub_1178C();
  sub_3FF4(0, &qword_1D740, PSConfirmationSpecifier_ptr);
  v89 = swift_getObjCClassFromMetadata();
  v90 = [v11 bundleForClass:v68];
  v111._countAndFlagsBits = 0xE000000000000000;
  v136._object = 0x80000000000130A0;
  v136._countAndFlagsBits = 0xD000000000000017;
  v146.value._countAndFlagsBits = 0;
  v146.value._object = 0;
  v91.super.isa = v90;
  v156._countAndFlagsBits = 0;
  v156._object = 0xE000000000000000;
  sub_1137C(v136, v146, v91, v156, 0, v111);

  v92 = sub_116BC();

  v93 = [v89 preferenceSpecifierNamed:v92 target:0 set:0 get:0 detail:0 cell:13 edit:0];

  if (!v93)
  {
    goto LABEL_50;
  }

  v127 = type metadata accessor for HKSPDeleteButtonCell();
  sub_D740(0, &qword_1D748, type metadata accessor for HKSPDeleteButtonCell);
  v94 = v93;
  [v94 setProperty:sub_1192C() forKey:v123];
  swift_unknownObjectRelease();
  v95 = [v11 bundleForClass:v68];
  v112._countAndFlagsBits = 0xE000000000000000;
  v137._countAndFlagsBits = 0x4C45434E4143;
  v137._object = 0xE600000000000000;
  v147.value._countAndFlagsBits = 0;
  v147.value._object = 0;
  v96.super.isa = v95;
  v157._countAndFlagsBits = 0;
  v157._object = 0xE000000000000000;
  sub_1137C(v137, v147, v96, v157, 0, v112);

  v97 = sub_116BC();

  [v94 setCancelButton:v97];

  v98 = [v11 bundleForClass:v68];
  v113._countAndFlagsBits = 0xE000000000000000;
  v138._countAndFlagsBits = 0x46464F5F4E525554;
  v138._object = 0xE800000000000000;
  v148.value._countAndFlagsBits = 0;
  v148.value._object = 0;
  v99.super.isa = v98;
  v158._countAndFlagsBits = 0;
  v158._object = 0xE000000000000000;
  sub_1137C(v138, v148, v99, v158, 0, v113);

  v100 = sub_116BC();

  [v94 setTitle:v100];

  v101 = [v11 bundleForClass:v68];
  v114._countAndFlagsBits = 0xE000000000000000;
  v139._countAndFlagsBits = 0xD000000000000023;
  v139._object = 0x80000000000130C0;
  v149.value._countAndFlagsBits = 0;
  v149.value._object = 0;
  v102.super.isa = v101;
  v159._countAndFlagsBits = 0;
  v159._object = 0xE000000000000000;
  sub_1137C(v139, v149, v102, v159, 0, v114);

  v103 = sub_116BC();

  [v94 setPrompt:v103];

  v104 = sub_1179C().super.super.isa;
  [v94 setProperty:v104 forKey:PSConfirmationDestructiveKey];

  v105 = sub_116BC();
  [v94 setProperty:v105 forKey:PSIDKey];

  [v94 setTarget:v126];
  [v94 setConfirmationAction:"didTapDontUseWatch:"];

  sub_1175C();
  if (*(&dword_10 + (v128 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v128 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_1177C();
  }

  sub_1178C();
}

void sub_71B4()
{
  v1 = sub_1142C();
  v55 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v4 = v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v53 - v5;
  v62 = &_swiftEmptyArrayStorage;
  v7 = [*(v0 + OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepStore) sleepFocusConfiguration];
  v8 = objc_opt_self();
  v9 = sub_116BC();
  v10 = [v8 preferenceSpecifierNamed:v9 target:0 set:0 get:0 detail:0 cell:0 edit:0];

  if (!v10)
  {
    __break(1u);
    goto LABEL_31;
  }

  v54 = v4;
  v59 = v0;
  v60 = v8;
  v11 = v10;
  sub_1175C();
  if (*(&dword_10 + (v62 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v62 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_1177C();
  }

  sub_1178C();
  v12 = [v7 hasSleepFocusMode];
  type metadata accessor for BridgeSettingsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = objc_opt_self();
  v15 = [v14 bundleForClass:ObjCClassFromMetadata];
  v58 = v7;
  v56 = v11;
  if (v12)
  {
    v53[0] = v1;
    v49._countAndFlagsBits = 0xE000000000000000;
    v63._object = 0x8000000000012F30;
    v63._countAndFlagsBits = 0xD000000000000017;
    v68.value._countAndFlagsBits = 0;
    v68.value._object = 0;
    v16.super.isa = v15;
    v73._countAndFlagsBits = 0;
    v73._object = 0xE000000000000000;
    v53[2] = sub_1137C(v63, v68, v16, v73, 0, v49);

    v57 = "manageSleepFocusMode:";
    v17 = [v14 bundleForClass:ObjCClassFromMetadata];
    v50._countAndFlagsBits = 0xE000000000000000;
    v64._countAndFlagsBits = 0xD00000000000001ELL;
    v64._object = 0x8000000000012F50;
    v69.value._countAndFlagsBits = 0;
    v69.value._object = 0;
    v18.super.isa = v17;
    v74._countAndFlagsBits = 0;
    v74._object = 0xE000000000000000;
    v53[1] = sub_1137C(v64, v69, v18, v74, 0, v50);

    v19 = [objc_opt_self() sharedInstance];
    if (!v19)
    {
LABEL_32:
      __break(1u);
      return;
    }

    v20 = v19;
    v21 = [v19 getActivePairedDevice];

    if (v21)
    {
      v22 = v21;
      v23 = sub_D78C();
      if (v23)
      {
        v24 = v23;
        sub_1141C();

        v25.super.isa = sub_1140C().super.isa;
        (*(v55 + 8))(v6, v53[0]);
      }

      else
      {
        v25.super.isa = 0;
      }

      v33 = [v22 supportsCapability:v25.super.isa];

      if (v33)
      {
        v34 = v22;
        v35 = sub_D7C8();
        if (v35)
        {
          v36 = v54;
          v37 = v35;
          sub_1141C();

          v38.super.isa = sub_1140C().super.isa;
          (*(v55 + 8))(v36, v53[0]);
        }

        else
        {
          v38.super.isa = 0;
        }

        v32 = v59;
        v46 = [v34 supportsCapability:v38.super.isa];

        if (v46)
        {
        }

        else
        {

          v47 = [v14 bundleForClass:ObjCClassFromMetadata];
          v51._countAndFlagsBits = 0xE000000000000000;
          v67._countAndFlagsBits = 0xD00000000000002BLL;
          v67._object = 0x8000000000012F70;
          v72.value._countAndFlagsBits = 0;
          v72.value._object = 0;
          v48.super.isa = v47;
          v77._countAndFlagsBits = 0;
          v77._object = 0xE000000000000000;
          sub_1137C(v67, v72, v48, v77, 0, v51);
        }

        goto LABEL_22;
      }
    }

    v32 = v59;
    goto LABEL_22;
  }

  v49._countAndFlagsBits = 0xE000000000000000;
  v65._object = 0x8000000000012EA0;
  v65._countAndFlagsBits = 0xD000000000000017;
  v70.value._countAndFlagsBits = 0;
  v70.value._object = 0;
  v26.super.isa = v15;
  v75._countAndFlagsBits = 0;
  v75._object = 0xE000000000000000;
  sub_1137C(v65, v70, v26, v75, 0, v49);

  v57 = "setUpSleepFocusMode:";
  v27 = [v7 mirrorsFocusModes];
  if (v27)
  {
    v28 = 0xD00000000000001ELL;
  }

  else
  {
    v28 = 0xD000000000000028;
  }

  if (v27)
  {
    v29 = "SLEEP_SET_UP_SLEEP_FOCUS_ID";
  }

  else
  {
    v29 = "SET_UP_SLEEP_FOCUS_MODE";
  }

  v30 = [v14 bundleForClass:ObjCClassFromMetadata];
  v52._countAndFlagsBits = 0xE000000000000000;
  v66._object = (v29 | 0x8000000000000000);
  v66._countAndFlagsBits = v28;
  v71.value._countAndFlagsBits = 0;
  v71.value._object = 0;
  v31.super.isa = v30;
  v76._countAndFlagsBits = 0;
  v76._object = 0xE000000000000000;
  sub_1137C(v66, v71, v31, v76, 0, v52);

  v32 = v59;
LABEL_22:
  v39 = sub_116BC();

  v40 = [v60 preferenceSpecifierNamed:v39 target:v32 set:0 get:0 detail:0 cell:13 edit:0];

  if (!v40)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v61 = type metadata accessor for HKSPMultilinePSTableCell();
  sub_D740(0, &qword_1D720, type metadata accessor for HKSPMultilinePSTableCell);
  [v40 setProperty:sub_1192C() forKey:PSCellClassKey];
  swift_unknownObjectRelease();
  v41 = sub_116BC();
  [v40 setIdentifier:v41];

  [v40 setButtonAction:v57];
  v42 = v40;
  sub_1175C();
  v43 = v56;
  if (*(&dword_10 + (v62 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v62 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_1177C();
  }

  sub_1178C();
  v44 = sub_116BC();

  v45 = PSFooterTextGroupKey;
  [v43 setProperty:v44 forKey:v45];
}

void sub_7950()
{
  v1 = v0;
  v2 = objc_opt_self();
  type metadata accessor for BridgeSettingsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v5 = [v4 bundleForClass:ObjCClassFromMetadata];
  v29._countAndFlagsBits = 0xE000000000000000;
  v32._countAndFlagsBits = 0xD000000000000020;
  v32._object = 0x8000000000012DA0;
  v35.value._countAndFlagsBits = 0;
  v35.value._object = 0;
  v6.super.isa = v5;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  sub_1137C(v32, v35, v6, v38, 0, v29);

  v7 = sub_116BC();

  v8 = [v2 preferenceSpecifierNamed:v7 target:0 set:0 get:0 detail:0 cell:0 edit:0];

  if (!v8)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v9 = [v4 bundleForClass:ObjCClassFromMetadata];
  v30._countAndFlagsBits = 0xE000000000000000;
  v33._countAndFlagsBits = 0xD000000000000020;
  v33._object = 0x8000000000012DD0;
  v36.value._countAndFlagsBits = 0;
  v36.value._object = 0;
  v10.super.isa = v9;
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  sub_1137C(v33, v36, v10, v39, 0, v30);

  v11 = sub_116BC();

  [v8 setProperty:v11 forKey:PSFooterTextGroupKey];

  v12 = v8;
  sub_1175C();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_1177C();
  }

  sub_1178C();
  v13 = [v4 bundleForClass:ObjCClassFromMetadata];
  v31._countAndFlagsBits = 0xE000000000000000;
  v34._object = 0x8000000000012E00;
  v34._countAndFlagsBits = 0xD00000000000001FLL;
  v37.value._countAndFlagsBits = 0;
  v37.value._object = 0;
  v14.super.isa = v13;
  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  sub_1137C(v34, v37, v14, v40, 0, v31);

  v15 = sub_116BC();

  type metadata accessor for BridgeSleepScoreLevelListController();
  v16 = [v2 preferenceSpecifierNamed:v15 target:v1 set:0 get:"sleepScoreNotificationsString:" detail:swift_getObjCClassFromMetadata() cell:2 edit:0];

  if (!v16)
  {
    goto LABEL_11;
  }

  type metadata accessor for HKSPMultilinePSTableCell();
  sub_D740(0, &qword_1D720, type metadata accessor for HKSPMultilinePSTableCell);
  [v16 setProperty:sub_1192C() forKey:PSCellClassKey];
  swift_unknownObjectRelease();
  isa = sub_1179C().super.super.isa;
  [v16 setProperty:isa forKey:PSEnabledKey];

  v18 = sub_5714();
  if (v18)
  {
    v19 = v18;
    v20 = [v18 wakeUpResults];

    v21 = [objc_allocWithZone(NSNumber) initWithBool:v20];
    v22 = sub_116BC();
    [v16 setProperty:v21 forKey:v22];
  }

  v23 = *(v1 + OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepHealthNotificationSettingsProvider);
  v24 = sub_116BC();
  [v16 setProperty:v23 forKey:v24];

  v25 = *(v1 + OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_notificationCenter);
  v26 = sub_116BC();
  [v16 setProperty:v25 forKey:v26];

  v27 = sub_116BC();
  [v16 setIdentifier:v27];

  v28 = v16;
  sub_1175C();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_1177C();
  }

  sub_1178C();
}

void *sub_7E88(uint64_t a1)
{
  swift_getObjectType();
  v2 = sub_1161C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = &_swiftEmptyArrayStorage;
  v6 = [objc_allocWithZone(HKSHSleepApneaNotificationsBridgeSettingsFactory) initWithFeatureStatus:a1];
  v7 = [v6 bridgeSettings];

  if ([v7 settingVisible])
  {
    sub_81F8(v7);
    v9 = v8;
    sub_1175C();
    if (*(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v25 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_1177C();
    }

    sub_1178C();
    v10 = [v7 showOnboarding];
    v11 = [v7 footer];
    if (v10)
    {
      sub_BEF4();
    }

    else
    {
      sub_C040();
    }

    v21 = v12;

    [v7 settingEnabled];
    isa = sub_1179C().super.super.isa;
    [v21 setProperty:isa forKey:PSEnabledKey];

    v23 = v21;
    sub_1175C();
    if (*(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v25 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_1177C();
    }

    sub_1178C();

    return v25;
  }

  else
  {
    sub_115FC();
    v13 = sub_1160C();
    v14 = sub_117FC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136446210;
      v17 = sub_1195C();
      v19 = sub_B64C(v17, v18, &v24);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_0, v13, v14, "[%{public}s] Feature is hidden, not showing sleep apnea section", v15, 0xCu);
      sub_B418(v16);
    }

    (*(v3 + 8))(v5, v2);
    return &_swiftEmptyArrayStorage;
  }
}

void sub_81F8(void *a1)
{
  v3 = objc_opt_self();
  type metadata accessor for BridgeSettingsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v31._countAndFlagsBits = 0xE000000000000000;
  v32._countAndFlagsBits = 0xD000000000000020;
  v32._object = 0x8000000000012D10;
  v34.value._object = 0x8000000000012D40;
  v34.value._countAndFlagsBits = 0xD000000000000012;
  v6.super.isa = v5;
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  sub_1137C(v32, v34, v6, v35, 0, v31);

  v7 = sub_116BC();

  v8 = [v3 preferenceSpecifierNamed:v7 target:0 set:0 get:0 detail:0 cell:0 edit:0];

  if (v8)
  {
    v9 = [a1 footer];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 footerText];
      sub_116EC();

      v12 = [v10 footerLink];
      if (v12)
      {
        v13 = v12;
        v14 = [v10 linkURL];
        if (v14)
        {
          v15 = v14;
          v16 = sub_116EC();
          v18 = v17;
        }

        else
        {
          v16 = 0;
          v18 = 0;
        }

        v20 = (v1 + OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaFooterURL);
        *v20 = v16;
        v20[1] = v18;

        v21 = sub_116BC();

        [v8 setProperty:v21 forKey:PSFooterHyperlinkViewTitleKey];

        sub_3FF4(0, &qword_1D718, PSFooterHyperlinkView_ptr);
        v22 = swift_getObjCClassFromMetadata();
        v23 = NSStringFromClass(v22);
        if (!v23)
        {
          sub_116EC();
          v23 = sub_116BC();
        }

        [v8 setProperty:v23 forKey:PSFooterCellClassGroupKey];

        v24 = sub_116BC();

        v25 = [v24 rangeOfString:v13];
        v27 = v26;

        v33.location = v25;
        v33.length = v27;
        v28 = NSStringFromRange(v33);
        if (!v28)
        {
          sub_116EC();
          v28 = sub_116BC();
        }

        [v8 setProperty:v28 forKey:PSFooterHyperlinkViewLinkRangeKey];

        v29 = NSStringFromSelector("_didTapSleepApneaFooter");
        if (!v29)
        {
          sub_116EC();
          v29 = sub_116BC();
        }

        [v8 setProperty:v29 forKey:PSFooterHyperlinkViewActionKey];

        v30 = [objc_opt_self() valueWithNonretainedObject:v1];
        [v8 setProperty:v30 forKey:PSFooterHyperlinkViewTargetKey];

        goto LABEL_17;
      }

      v19 = sub_116BC();
    }

    else
    {
      v19 = 0;
    }

    [v8 setProperty:v19 forKey:PSFooterTextGroupKey];
    swift_unknownObjectRelease();
LABEL_17:
    type metadata accessor for HKSPMultiLineSwitchCell();
    sub_D740(0, &qword_1D710, type metadata accessor for HKSPMultiLineSwitchCell);
    [v8 setProperty:sub_1192C() forKey:PSCellClassKey];

    swift_unknownObjectRelease();
    return;
  }

  __break(1u);
}

void sub_8688(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_870C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = *&v1[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepStore];
  v6 = a1;
  v7 = [v5 currentSleepSettingsFuture];
  v8 = swift_allocObject();
  v8[2] = sub_D734;
  v8[3] = v4;
  v8[4] = v1;
  v8[5] = ObjectType;
  v12[4] = sub_DBCC;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_8FB0;
  v12[3] = &unk_18C50;
  v9 = _Block_copy(v12);

  v10 = v1;

  v11 = [v7 addCompletionBlock:v9];
  _Block_release(v9);
}

id sub_8A00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = sub_113FC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = a1;
  result = a5();
  if (result)
  {
    v13 = result;
    sub_113DC();

    sub_903C();
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_8B7C()
{
  v0 = sub_5714();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [v0 wakeUpResults];

  return v2;
}

void sub_8CB0(void *a1, void *a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1161C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 || !a1)
  {
    sub_115FC();
    swift_errorRetain();
    v17 = sub_1160C();
    v18 = sub_1180C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v19 = 136446466;
      v20 = sub_1195C();
      v22 = sub_B64C(v20, v21, v27);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2080;
      v28 = a2;
      swift_errorRetain();
      sub_D804(0, &qword_1D6E0, &qword_1D6E8, &protocol descriptor for Error, &type metadata accessor for Optional);
      v23 = sub_1170C();
      v25 = sub_B64C(v23, v24, v27);

      *(v19 + 14) = v25;
      _os_log_impl(&dword_0, v17, v18, "[%{public}s] failed to get sleep settings with error %s", v19, 0x16u);
      swift_arrayDestroy();
    }

    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v14 = a1;
    [v14 mutableCopy];
    sub_1186C();
    swift_unknownObjectRelease();
    sub_3FF4(0, &qword_1D6F0, HKSPMutableSleepSettings_ptr);
    swift_dynamicCast();
    v15 = v28;
    a3(v28);
    v16 = [*(a5 + OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepStore) saveCurrentSleepSettings:v15];
  }
}

void sub_8FB0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_903C()
{
  ObjectType = swift_getObjectType();
  v1 = [objc_allocWithZone(_LSOpenConfiguration) init];
  [v1 setSensitive:1];
  v2 = [objc_opt_self() defaultWorkspace];
  if (v2)
  {
    v4 = v2;
    sub_113CC(v3);
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = ObjectType;
    v10[4] = sub_D604;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_93E0;
    v10[3] = &unk_18BD8;
    v8 = _Block_copy(v10);
    v9 = v1;

    [v4 openURL:v6 configuration:v9 completionHandler:v8];
    _Block_release(v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_91A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1161C();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    sub_115FC();
    swift_errorRetain();
    v9 = sub_1160C();
    v10 = sub_1180C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v19 = v4;
      v12 = v11;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v12 = 136446466;
      v15 = sub_1195C();
      v17 = sub_B64C(v15, v16, &v20);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2112;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v18;
      *v13 = v18;
      _os_log_impl(&dword_0, v9, v10, "[%{public}s] failed to open URL with error %@", v12, 0x16u);
      sub_D60C(v13);

      sub_B418(v14);

      return (*(v5 + 8))(v8, v19);
    }

    else
    {

      return (*(v5 + 8))(v8, v4);
    }
  }

  return result;
}

uint64_t sub_93E0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1167C();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

id sub_94A8(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a3;
  v9 = a1;
  v10 = a5();

  return v10;
}

uint64_t sub_9588(char a1, uint64_t a2, void *a3)
{
  v6 = sub_1161C();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v29 - v12;
  __chkstk_darwin(v11);
  v15 = &v29 - v14;
  if (a1)
  {
    sub_115FC();
    v16 = a3;
    v17 = sub_1160C();
    v18 = sub_117FC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = [v16 integerValue];

      _os_log_impl(&dword_0, v17, v18, "Successfully updated feature enablement state to %ld", v19, 0xCu);
    }

    else
    {

      v17 = v16;
    }
  }

  else
  {
    sub_115FC();
    v17 = sub_1160C();
    v20 = sub_117FC();
    if (os_log_type_enabled(v17, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_0, v17, v20, "Failed updating sleep apnea notification enablement state.", v21, 2u);
    }

    v15 = v13;
  }

  v22 = *(v7 + 8);
  result = v22(v15, v6);
  if (a2)
  {
    swift_errorRetain();
    sub_115FC();
    swift_errorRetain();
    v24 = sub_1160C();
    v25 = sub_1180C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      swift_errorRetain();
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&dword_0, v24, v25, "Error updating feature enablement state: %@", v26, 0xCu);
      sub_D60C(v27);
    }

    else
    {
    }

    return v22(v10, v6);
  }

  return result;
}

void sub_98D8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_996C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id))
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = a3;
  v11 = a4;
  v12 = a1;
  a6(v10);
}

uint64_t sub_9BF0()
{
  sub_B2E4(0, &qword_1D6F8, &type metadata accessor for URL, &type metadata accessor for Optional);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = sub_113FC();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaFooterURL + 8))
  {

    sub_113EC();

    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      return sub_D594(v3, &qword_1D6F8, &type metadata accessor for URL, &type metadata accessor for Optional, sub_B2E4);
    }

    else
    {
      (*(v5 + 32))(v8, v3, v4);
      sub_903C();
      return (*(v5 + 8))(v8, v4);
    }
  }

  return result;
}

id sub_9FB4()
{
  v0 = sub_113FC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_56AC();
  if (result)
  {
    v5 = result;
    if ([result isCurrentSleepCoachingOnboardingCompleted] && !objc_msgSend(v5, "isCurrentSleepTrackingOnboardingCompleted"))
    {
      v6 = &HKSPSleepLaunchURLRouteOnboardSleepTracking;
    }

    else
    {
      v6 = &HKSPSleepLaunchURLRouteOnboardSleepCoaching;
    }

    v7 = *v6;
    result = HKSPSleepURL();
    if (result)
    {
      v8 = result;
      sub_113DC();

      sub_903C();
      return (*(v1 + 8))(v3, v0);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_A134(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  v7 = a1;
  sub_1186C();
  v8 = swift_unknownObjectRelease();
  a5(v8);

  sub_B418(v10);
}

id sub_A258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v10 = [*&v5[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepStore] currentSleepSettingsFuture];
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = 0;
  v11[4] = v5;
  v11[5] = ObjectType;
  v16[4] = a4;
  v16[5] = v11;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_8FB0;
  v16[3] = a5;
  v12 = _Block_copy(v16);
  v13 = v5;

  v14 = [v10 addCompletionBlock:v12];
  _Block_release(v12);

  return [v13 reloadSpecifiers];
}

void sub_A3FC(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, const char *a6, ...)
{
  sub_117CC();
  sub_117BC();
  sub_117AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = a3;
  v11 = a4;
  v12 = a1;
  sub_D10C(a6);
}

void sub_A6C8(uint64_t a1, uint64_t a2, uint64_t a3, Class a4, uint64_t a5)
{
  v33 = a5;
  sub_B2E4(0, &qword_1D6D0, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - v10;
  v12 = sub_1157C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v15, enum case for SleepHealthNotificationSettingsProvider.ObservableKey.sleepScoreNotificationLevels(_:), v12);
  v16 = sub_1156C();
  v18 = v17;
  (*(v13 + 8))(v15, v12);
  if (!a2)
  {

    v21 = 0;
LABEL_9:
    sub_B348(a3, v36);
    v22 = v37;
    if (v37)
    {
      v23 = sub_B3D4(v36, v37);
      v24 = *(v22 - 8);
      __chkstk_darwin(v23);
      v26 = &v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v24 + 16))(v26);
      v27 = sub_1190C();
      (*(v24 + 8))(v26, v22);
      sub_B418(v36);
      if (!a4)
      {
LABEL_12:
        v28 = type metadata accessor for BridgeSettingsViewController();
        v35.receiver = v34;
        v35.super_class = v28;
        objc_msgSendSuper2(&v35, "observeValueForKeyPath:ofObject:change:context:", v21, v27, a4, v33);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v27 = 0;
      if (!a4)
      {
        goto LABEL_12;
      }
    }

    type metadata accessor for NSKeyValueChangeKey(0);
    sub_D954(&qword_1D510, type metadata accessor for NSKeyValueChangeKey, &unk_12640);
    a4 = sub_1166C().super.isa;
    goto LABEL_12;
  }

  if (v16 == a1 && v18 == a2)
  {
  }

  else
  {
    v20 = sub_1191C();

    if ((v20 & 1) == 0)
    {
      v21 = sub_116BC();
      goto LABEL_9;
    }
  }

  v29 = sub_117EC();
  (*(*(v29 - 8) + 56))(v11, 1, 1, v29);
  sub_117CC();
  v30 = v34;
  v31 = sub_117BC();
  v32 = swift_allocObject();
  v32[2] = v31;
  v32[3] = &protocol witness table for MainActor;
  v32[4] = v30;
  sub_DE08(0, 0, v11, &unk_12718, v32);
}

uint64_t sub_AAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_117CC();
  *(v4 + 24) = sub_117BC();
  v6 = sub_117AC();

  return _swift_task_switch(sub_AB8C, v6, v5);
}

uint64_t sub_AB8C()
{
  v1 = *(v0 + 16);

  [v1 reloadSpecifiers];
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_AD7C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1163C();
  v22 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1165C();
  v11 = *(v21 - 8);
  __chkstk_darwin(v21);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 authorizationStatus];
  sub_3FF4(0, &qword_1D6A0, OS_dispatch_queue_ptr);
  v15 = sub_1183C();
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  aBlock[4] = sub_B1F4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_B200;
  aBlock[3] = &unk_18AC0;
  v17 = _Block_copy(aBlock);

  v18 = a4;
  sub_1164C();
  v23 = &_swiftEmptyArrayStorage;
  sub_D954(&qword_1D6A8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_B2E4(0, &qword_1D6B0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_B25C();
  sub_1188C();
  sub_1184C();
  _Block_release(v17);

  (*(v22 + 8))(v10, v8);
  (*(v11 + 8))(v13, v21);
}

void sub_B090(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if ((a1 - 2) >= 3)
  {
    v6 = sub_116BC();
    v7 = HKSHUILocalizedString();

    if (!v7)
    {
      sub_116EC();
      v7 = sub_116BC();
    }

    v8 = objc_opt_self();
    v9 = sub_116BC();
    v10 = [v8 hksp_notificationsWontFireAlertControllerWithLocalizedTitle:v9 localizedDismiss:v7 completion:0];

    [a4 presentViewController:v10 animated:1 completion:0];
  }
}

uint64_t sub_B1B4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_B200(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_B244(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_B25C()
{
  result = qword_1D6B8;
  if (!qword_1D6B8)
  {
    sub_B2E4(255, &qword_1D6B0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D6B8);
  }

  return result;
}

void sub_B2E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_B348(uint64_t a1, uint64_t a2)
{
  sub_D518(0, &unk_1D6C0, &type metadata for Any[8], &type metadata accessor for Optional);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_B3D4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_B418(void *a1)
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

uint64_t sub_B464()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_B4A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_B558;

  return sub_AAF4(a1, v4, v5, v6);
}

uint64_t sub_B558()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_B64C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_B718(v11, 0, 0, 1, a1, a2);
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
    sub_D4BC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_B418(v11);
  return v7;
}

unint64_t sub_B718(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_B824(a5, a6);
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
    result = sub_118CC();
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

char *sub_B824(uint64_t a1, unint64_t a2)
{
  v3 = sub_B870(a1, a2);
  sub_B9A0(&off_18A28);
  return v3;
}

char *sub_B870(uint64_t a1, unint64_t a2)
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

  v6 = sub_BA8C(v5, 0);
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

  result = sub_118CC();
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
        v10 = sub_1173C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_BA8C(v10, 0);
        result = sub_1189C();
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

uint64_t sub_B9A0(uint64_t result)
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

  result = sub_BB18(result, v11, 1, v3);
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

void *sub_BA8C(uint64_t a1, uint64_t a2)
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

  sub_D518(0, &qword_1D6D8, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_BB18(char *result, int64_t a2, char a3, char *a4)
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
    sub_D518(0, &qword_1D6D8, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
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

uint64_t sub_BC24(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_118EC();
LABEL_9:
  result = sub_118BC();
  *v2 = result;
  return result;
}

uint64_t sub_BCC4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_118EC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_118EC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_D694(0, &qword_1D758, &qword_1D750, PSSpecifier_ptr, &type metadata accessor for Array);
          sub_D8C0();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_BE6C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_3FF4(0, &qword_1D750, PSSpecifier_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_BE6C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_118AC();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_BEEC;
  }

  __break(1u);
  return result;
}

void sub_BEF4()
{
  v1 = objc_opt_self();
  type metadata accessor for BridgeSettingsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v7._countAndFlagsBits = 0xE000000000000000;
  v8._countAndFlagsBits = 0xD00000000000001CLL;
  v8._object = 0x8000000000012D60;
  v9.value._object = 0x8000000000012D40;
  v9.value._countAndFlagsBits = 0xD000000000000012;
  v4.super.isa = v3;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1137C(v8, v9, v4, v10, 0, v7);

  v5 = sub_116BC();

  v6 = [v1 preferenceSpecifierNamed:v5 target:v0 set:0 get:0 detail:0 cell:13 edit:0];

  if (v6)
  {
    [v6 setButtonAction:"_didTapSetUpNotificationsInHealth:"];
  }

  else
  {
    __break(1u);
  }
}

void sub_C040()
{
  v1 = objc_opt_self();
  type metadata accessor for BridgeSettingsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v8._countAndFlagsBits = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD000000000000018;
  v9._object = 0x8000000000012D80;
  v10.value._object = 0x8000000000012D40;
  v10.value._countAndFlagsBits = 0xD000000000000012;
  v4.super.isa = v3;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  sub_1137C(v9, v10, v4, v11, 0, v8);

  v5 = sub_116BC();

  v6 = [v1 preferenceSpecifierNamed:v5 target:v0 set:"_sleepApneaNotificationsToggledTapped:specifier:" get:"_areSleepApneaNotificationsEnabled:" detail:0 cell:6 edit:0];

  if (v6)
  {
    isa = sub_1179C().super.super.isa;
    [v6 setProperty:isa forKey:PSEnabledKey];
  }

  else
  {
    __break(1u);
  }
}

void sub_C1AC(void *a1)
{
  sub_116EC();
  v3 = objc_allocWithZone(NSUserDefaults);
  v4 = sub_116BC();

  v5 = [v3 initWithSuiteName:v4];

  if (v5 && (v6 = [v5 BOOLForKey:kHKAgeGatingKeyEnableSleepTracking], v5, v6) && objc_msgSend(a1, "BOOLValue"))
  {
    v7 = [objc_allocWithZone(UIAlertController) init];
    type metadata accessor for BridgeSettingsViewController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = objc_opt_self();
    v10 = [v9 bundleForClass:ObjCClassFromMetadata];
    v32._countAndFlagsBits = 0xE000000000000000;
    v43._object = 0x8000000000013290;
    v43._countAndFlagsBits = 0xD000000000000027;
    v47.value._countAndFlagsBits = 0;
    v47.value._object = 0;
    v11.super.isa = v10;
    v51._countAndFlagsBits = 0;
    v51._object = 0xE000000000000000;
    sub_1137C(v43, v47, v11, v51, 0, v32);

    v12 = swift_allocObject();
    *(v12 + 16) = v1;
    *(v12 + 24) = a1;
    v13 = v1;
    v14 = a1;
    v15 = sub_116BC();

    v40 = sub_DABC;
    v41 = v12;
    aBlock = _NSConcreteStackBlock;
    v37 = 1107296256;
    v38 = sub_8688;
    v39 = &unk_18DB8;
    v16 = _Block_copy(&aBlock);

    v17 = objc_opt_self();
    v18 = [v17 actionWithTitle:v15 style:0 handler:v16];
    _Block_release(v16);

    [v7 addAction:v18];
    v19 = [v9 bundleForClass:ObjCClassFromMetadata];
    v44._countAndFlagsBits = 0xD000000000000026;
    v33._countAndFlagsBits = 0xE000000000000000;
    v44._object = 0x80000000000132E0;
    v48.value._countAndFlagsBits = 0;
    v48.value._object = 0;
    v20.super.isa = v19;
    v52._countAndFlagsBits = 0;
    v52._object = 0xE000000000000000;
    sub_1137C(v44, v48, v20, v52, 0, v33);

    v21 = swift_allocObject();
    *(v21 + 16) = v13;
    v22 = v13;
    v23 = sub_116BC();

    v40 = sub_DAE4;
    v41 = v21;
    aBlock = _NSConcreteStackBlock;
    v37 = 1107296256;
    v38 = sub_8688;
    v39 = &unk_18E08;
    v24 = _Block_copy(&aBlock);

    v25 = [v17 actionWithTitle:v23 style:2 handler:v24];
    _Block_release(v24);

    [v7 addAction:v25];
    v26 = [v9 bundleForClass:ObjCClassFromMetadata];
    v45._countAndFlagsBits = 0xD000000000000025;
    v34._countAndFlagsBits = 0xE000000000000000;
    v45._object = 0x8000000000013310;
    v49.value._countAndFlagsBits = 0;
    v49.value._object = 0;
    v27.super.isa = v26;
    v53._countAndFlagsBits = 0;
    v53._object = 0xE000000000000000;
    sub_1137C(v45, v49, v27, v53, 0, v34);

    v28 = sub_116BC();

    [v7 setTitle:v28];

    v29 = [v9 bundleForClass:ObjCClassFromMetadata];
    v35._countAndFlagsBits = 0xE000000000000000;
    v46._object = 0x8000000000013340;
    v46._countAndFlagsBits = 0xD000000000000027;
    v50.value._countAndFlagsBits = 0;
    v50.value._object = 0;
    v30.super.isa = v29;
    v54._countAndFlagsBits = 0;
    v54._object = 0xE000000000000000;
    sub_1137C(v46, v50, v30, v54, 0, v35);

    v31 = sub_116BC();

    [v7 setMessage:v31];

    [v22 presentViewController:v7 animated:1 completion:0];
  }

  else
  {

    sub_870C(a1);
  }
}

id sub_C70C()
{
  if ([*(v0 + OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_wristDetectManager) isWristDetectEnabled] && (v1 = sub_5714()) != 0)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(NSNumber) initWithBool:{objc_msgSend(v1, "sleepTracking")}];

    return v3;
  }

  else
  {
    v5 = objc_allocWithZone(NSNumber);

    return [v5 initWithBool:0];
  }
}

void sub_C7BC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = *&v2[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepStore];
  v7 = a1;
  v8 = [v6 currentSleepSettingsFuture];
  v9 = swift_allocObject();
  v9[2] = sub_D99C;
  v9[3] = v5;
  v9[4] = v2;
  v9[5] = ObjectType;
  v26 = sub_DBCC;
  v27 = v9;
  v22 = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_8FB0;
  v25 = &unk_18D18;
  v10 = _Block_copy(&v22);

  v11 = v2;

  v12 = [v8 addCompletionBlock:v10];
  _Block_release(v10);

  if ([v7 BOOLValue])
  {
    v13 = sub_116BC();
    v14 = HKSHUILocalizedString();

    v15 = sub_116EC();
    v17 = v16;

    v18 = *&v11[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_notificationCenter];
    v19 = swift_allocObject();
    v19[2] = v15;
    v19[3] = v17;
    v19[4] = v11;
    v26 = sub_DA70;
    v27 = v19;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_8688;
    v25 = &unk_18D68;
    v20 = _Block_copy(&v22);
    v21 = v11;

    [v18 getNotificationSettingsWithCompletionHandler:v20];
    _Block_release(v20);
  }
}

uint64_t sub_CA48()
{
  v1 = sub_114EC();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v18[-v6];
  v19 = v0;
  sub_1155C();
  sub_D954(&qword_1D768, &type metadata accessor for SleepScoreLevels, &protocol conformance descriptor for SleepScoreLevels);
  sub_1187C();
  sub_D954(&qword_1D770, &type metadata accessor for SleepScoreLevels, &protocol conformance descriptor for SleepScoreLevels);
  v8 = sub_1168C();
  v9 = *(v2 + 8);
  v9(v5, v1);
  v9(v7, v1);
  if (v8)
  {
    v10 = 0xD00000000000001DLL;
  }

  else
  {
    v10 = 0xD00000000000001CLL;
  }

  if (v8)
  {
    v11 = "SLEEP_SCORE_NOTIFICATIONS_ON";
  }

  else
  {
    v11 = "v20@?0B8@NSError12";
  }

  type metadata accessor for BridgeSettingsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v17._countAndFlagsBits = 0xE000000000000000;
  v20._object = (v11 | 0x8000000000000000);
  v20._countAndFlagsBits = v10;
  v21.value._countAndFlagsBits = 0;
  v21.value._object = 0;
  v14.super.isa = v13;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v15 = sub_1137C(v20, v21, v14, v22, 0, v17);

  return v15;
}

id sub_CCA8()
{
  v1 = *(v0 + OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaFeatureStatus);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 onboardingRecord];
    v4 = [v3 featureSettings];

    if (v4)
    {
      v5 = [v4 numberForKey:HKFeatureSettingsKeyEnabled];

      if (v5)
      {
        v4 = [v5 BOOLValue];
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = objc_allocWithZone(NSNumber);

  return [v6 initWithBool:v4];
}

void sub_CDA0(void *a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaNotificationsFeatureStatusManager) featureAvailabilityProviding];
  v4 = HKFeatureSettingsKeyEnabled;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v9[4] = sub_D944;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_98D8;
  v9[3] = &unk_18CA0;
  v6 = _Block_copy(v9);
  v7 = v4;
  v8 = a1;

  [v3 setFeatureSettingNumber:v8 forKey:v7 completion:v6];
  _Block_release(v6);
  swift_unknownObjectRelease();
}

id sub_CED0()
{
  sub_B2E4(0, &qword_1D6F8, &type metadata accessor for URL, &type metadata accessor for Optional);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_113FC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_113EC();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_D594(v2, &qword_1D6F8, &type metadata accessor for URL, &type metadata accessor for Optional, sub_B2E4);
  }

  (*(v4 + 32))(v6, v2, v3);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v9 = result;
    sub_113CC(v8);
    v11 = v10;
    [v9 openSensitiveURL:v10 withOptions:0];

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_D10C(const char *a1, ...)
{
  v3 = v1;
  swift_getObjectType();
  v4 = sub_1161C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_115FC();
  v8 = sub_1160C();
  v9 = sub_1181C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17 = a1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    v13 = sub_1195C();
    v15 = sub_B64C(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_0, v8, v9, v17, v11, 0xCu);
    sub_B418(v12);
  }

  (*(v5 + 8))(v7, v4);
  return [v3 reloadSpecifiers];
}

id sub_D2D4(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_1161C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_115FC();
  v8 = sub_1160C();
  v9 = sub_1181C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19 = a1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136446210;
    v13 = sub_1195C();
    v15 = sub_B64C(v13, v14, &v20);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_0, v8, v9, "[%{public}s] Feature status did change", v11, 0xCu);
    sub_B418(v12);

    a1 = v19;
  }

  (*(v5 + 8))(v7, v4);
  v16 = *&v2[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaFeatureStatus];
  *&v2[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings28BridgeSettingsViewController_sleepApneaFeatureStatus] = a1;
  v17 = a1;

  return [v2 reloadSpecifiers];
}

uint64_t sub_D4BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_D518(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_D594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_D60C(uint64_t a1)
{
  sub_D694(0, &qword_1D700, &qword_1D708, NSObject_ptr, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_D694(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_3FF4(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_D6FC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_D740(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_D78C()
{
  v0 = [[NSUUID alloc] initWithUUIDString:@"0E581E21-36BA-4770-9408-0467585E8495"];

  return v0;
}

id sub_D7C8()
{
  v0 = [[NSUUID alloc] initWithUUIDString:@"A97647CC-89CB-4C3C-A144-18371D6DD41F"];

  return v0;
}

void sub_D804(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_DB4C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_D86C()
{
  result = qword_1D738;
  if (!qword_1D738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D738);
  }

  return result;
}

unint64_t sub_D8C0()
{
  result = qword_1D760;
  if (!qword_1D760)
  {
    sub_D694(255, &qword_1D758, &qword_1D750, PSSpecifier_ptr, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D760);
  }

  return result;
}

uint64_t sub_D954(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_D9A8(void *a1, const char **a2)
{
  v5 = [*(v2 + 16) BOOLValue];
  v6 = *a2;

  return [a1 v6];
}

uint64_t sub_DA1C(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 24));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_DA7C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_DAF4()
{
  result = qword_1D780;
  if (!qword_1D780)
  {
    sub_DB4C(255, &qword_1D788, &protocol descriptor for UITraitDefinition);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1D780);
  }

  return result;
}

uint64_t sub_DB4C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

char *sub_DC0C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_118EC();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_10BAC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_118AC();
        sub_3FF4(0, &qword_1D750, PSSpecifier_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_10BAC((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_112D4(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_3FF4(0, &qword_1D750, PSSpecifier_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_10BAC((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_112D4(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_DE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_111E8(0, &qword_1D6D0, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10628(a3, v25 - v10);
  v12 = sub_117EC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_106BC(v11, &qword_1D6D0, &type metadata accessor for TaskPriority);
  }

  else
  {
    sub_117DC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_117AC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1171C() + 32;
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

      sub_106BC(a3, &qword_1D6D0, &type metadata accessor for TaskPriority);

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

  sub_106BC(a3, &qword_1D6D0, &type metadata accessor for TaskPriority);
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

void sub_E140()
{
  v1 = v0;
  v2 = sub_1157C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BridgeSleepScoreLevelListController();
  v34.receiver = v0;
  v34.super_class = v6;
  objc_msgSendSuper2(&v34, "viewDidLoad");
  type metadata accessor for BridgeSettingsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v27._countAndFlagsBits = 0xE000000000000000;
  v35._object = 0x8000000000012E00;
  v35._countAndFlagsBits = 0xD00000000000001FLL;
  v36.value._countAndFlagsBits = 0;
  v36.value._object = 0;
  v9.super.isa = v8;
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  sub_1137C(v35, v36, v9, v37, 0, v27);

  v10 = sub_116BC();

  [v1 setTitle:v10];

  v11 = [v1 specifier];
  if (v11)
  {
    v12 = v11;
    v13 = sub_116BC();
    v14 = [v12 propertyForKey:v13];

    if (v14)
    {
      sub_1186C();
      swift_unknownObjectRelease();
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
    }

    v32 = v30;
    v33 = v31;
    if (*(&v31 + 1))
    {
      sub_115CC();
      v15 = swift_dynamicCast();
      v16 = v29;
      if (!v15)
      {
        v16 = 0;
      }
    }

    else
    {
      sub_104BC(&v32);
      v16 = 0;
    }

    v17 = OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_sleepHealthNotificationSettingsProvider;
    *&v1[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_sleepHealthNotificationSettingsProvider] = v16;

    v18 = sub_116BC();
    v19 = [v12 propertyForKey:v18];

    if (v19)
    {
      sub_1186C();
      swift_unknownObjectRelease();
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
    }

    v32 = v30;
    v33 = v31;
    if (*(&v31 + 1))
    {
      sub_3FF4(0, &qword_1D8C8, UNUserNotificationCenter_ptr);
      v20 = swift_dynamicCast();
      v21 = v29;
      if (!v20)
      {
        v21 = 0;
      }
    }

    else
    {
      sub_104BC(&v32);
      v21 = 0;
    }

    v22 = *&v1[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_notificationCenter];
    *&v1[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_notificationCenter] = v21;

    v23 = sub_116BC();
    v24 = [v12 propertyForKey:v23];

    if (v24)
    {
      sub_1186C();
      swift_unknownObjectRelease();
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
    }

    v32 = v30;
    v33 = v31;
    if (*(&v31 + 1))
    {
      sub_3FF4(0, &qword_1D8C0, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v25 = v29;
        v26 = [v29 BOOLValue];

        v1[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_legacyWakeUpResultsEnabled] = v26;
      }

      if (!*&v1[v17])
      {
        goto LABEL_26;
      }
    }

    else
    {
      sub_104BC(&v32);
      if (!*&v1[v17])
      {
        goto LABEL_26;
      }
    }

    (*(v3 + 104))(v5, enum case for SleepHealthNotificationSettingsProvider.ObservableKey.sleepScoreNotificationLevels(_:), v2);

    sub_1158C();

    (*(v3 + 8))(v5, v2);
LABEL_26:
    [v1 reloadSpecifiers];

    return;
  }

  __break(1u);
}

id sub_E6B0()
{
  v1 = sub_1157C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v0[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_sleepHealthNotificationSettingsProvider])
  {
    (*(v2 + 104))(v4, enum case for SleepHealthNotificationSettingsProvider.ObservableKey.sleepScoreNotificationLevels(_:), v1);

    sub_1159C();

    (*(v2 + 8))(v4, v1);
  }

  v5 = type metadata accessor for BridgeSleepScoreLevelListController();
  v7.receiver = v0;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

char *sub_E974()
{
  v0 = sub_1152C();
  v34 = *(v0 - 8);
  v35 = v0;
  __chkstk_darwin(v0);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1153C();
  v32 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v31 = &v28 - v7;
  v37 = &_swiftEmptyArrayStorage;
  result = [objc_opt_self() groupSpecifierWithName:0];
  if (result)
  {
    v9 = result;
    isa = sub_1179C().super.super.isa;
    [v9 setProperty:isa forKey:PSIsRadioGroupKey];

    type metadata accessor for BridgeSettingsViewController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v27._countAndFlagsBits = 0xE000000000000000;
    v38._object = 0x8000000000013520;
    v38._countAndFlagsBits = 0xD000000000000019;
    v39.value._countAndFlagsBits = 0;
    v39.value._object = 0;
    v13.super.isa = v12;
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    sub_1137C(v38, v39, v13, v40, 0, v27);

    v14 = sub_116BC();

    [v9 setProperty:v14 forKey:PSFooterTextGroupKey];

    v15 = v9;
    sub_1175C();
    if (*(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v37 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_1177C();
    }

    sub_1178C();
    v16 = v37;
    if (*&v36[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_sleepHealthNotificationSettingsProvider])
    {

      sub_115AC();

      (*(v32 + 32))(v31, v6, v3);
      v17 = sub_1150C();
      v18 = *(v17 + 16);
      if (v18)
      {
        v29 = v15;
        v30 = v3;
        sub_117CC();
        v19 = v34 + 16;
        v20 = *(v34 + 16);
        v21 = *(v34 + 80);
        v28 = v17;
        v22 = v17 + ((v21 + 32) & ~v21);
        v33 = *(v34 + 72);
        v34 = v20;
        v23 = (v19 - 8);
        v24 = v35;
        do
        {
          (v34)(v2, v22, v24);
          sub_117BC();
          sub_117AC();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          sub_EF3C();
          sub_1175C();
          if (*(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v37 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_1177C();
          }

          sub_1178C();
          v24 = v35;
          (*v23)(v2, v35);
          v16 = v37;

          v22 += v33;
          --v18;
        }

        while (v18);

        v15 = v29;
        v3 = v30;
      }

      else
      {
      }

      (*(v32 + 8))(v31, v3);
    }

    sub_DC0C(v16);
    v25 = sub_1176C().super.isa;

    [v36 setSpecifiers:v25];

    v26 = sub_DC0C(v16);

    return v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_EF3C()
{
  v1 = v0;
  v2 = sub_114BC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  sub_1151C();
  sub_1149C();
  (*(v3 + 8))(v5, v2);
  v7 = sub_116BC();

  v8 = [v6 preferenceSpecifierNamed:v7 target:v1 set:0 get:"subtitleValue:" detail:0 cell:-1 edit:0];

  if (v8)
  {
    v11[1] = type metadata accessor for HKSPSelectableSubtitleCell();
    sub_10B64();
    [v8 setProperty:sub_1192C() forKey:PSCellClassKey];
    swift_unknownObjectRelease();
    isa = sub_1179C().super.super.isa;
    [v8 setProperty:isa forKey:PSEnabledKey];

    sub_114FC();
    v10 = sub_116BC();

    [v8 setProperty:v10 forKey:PSValueKey];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_F2B0(uint64_t a1, uint64_t a2)
{
  sub_111E8(0, &qword_1D898, &type metadata accessor for SleepScoreLevels, &type metadata accessor for Optional);
  __chkstk_darwin(v4 - 8);
  v6 = v31 - v5;
  v7 = sub_114EC();
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v31 - v11;
  sub_111E8(0, &qword_1D8A0, &type metadata accessor for SleepScoreLevel, &type metadata accessor for Optional);
  __chkstk_darwin(v13 - 8);
  v15 = v31 - v14;
  v16 = sub_114BC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1147C();
  sub_114AC();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_106BC(v15, &qword_1D8A0, &type metadata accessor for SleepScoreLevel);
  }

  v32 = a1;
  v21 = (*(v17 + 32))(v19, v15, v16);
  v22 = OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_sleepHealthNotificationSettingsProvider;
  if (*&v35[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_sleepHealthNotificationSettingsProvider])
  {
    v31[0] = a2;
    v31[1] = v31;
    __chkstk_darwin(v21);
    v23 = v35;
    v31[-2] = v35;

    sub_1155C();

    v24 = v33;
    v25 = v10;
    v26 = v34;
    (*(v33 + 32))(v12, v25, v34);
    result = sub_114CC();
    if (!*&v23[v22])
    {
      __break(1u);
      return result;
    }

    (*(v24 + 16))(v6, v12, v26);
    (*(v24 + 56))(v6, 0, 1, v26);

    sub_1154C();

    sub_106BC(v6, &qword_1D898, &type metadata accessor for SleepScoreLevels);
    v27 = v35;
    sub_FA04(v12);
    v28 = v24;
    isa = sub_1145C().super.isa;
    v30 = type metadata accessor for BridgeSleepScoreLevelListController();
    v36.receiver = v27;
    v36.super_class = v30;
    objc_msgSendSuper2(&v36, "tableView:didSelectRowAtIndexPath:", v32, isa);

    (*(v28 + 8))(v12, v26);
  }

  return (*(v17 + 8))(v19, v16);
}

void sub_FA04(uint64_t a1)
{
  v2 = v1;
  v3 = sub_114EC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10AC4(&qword_1D768, &type metadata accessor for SleepScoreLevels, &protocol conformance descriptor for SleepScoreLevels);
  sub_1187C();
  sub_10AC4(&qword_1D770, &type metadata accessor for SleepScoreLevels, &protocol conformance descriptor for SleepScoreLevels);
  v7 = sub_1168C();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    v8 = sub_116BC();
    v9 = HKSHUILocalizedString();

    v10 = sub_116EC();
    v12 = v11;

    v13 = *&v2[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_notificationCenter];
    if (v13)
    {
      v14 = swift_allocObject();
      v14[2] = v10;
      v14[3] = v12;
      v14[4] = v2;
      aBlock[4] = sub_DA70;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_8688;
      aBlock[3] = &unk_18ED0;
      v15 = _Block_copy(aBlock);
      v16 = v13;
      v17 = v2;

      [v16 getNotificationSettingsWithCompletionHandler:v15];
      _Block_release(v15);
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_FC6C(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_notificationCenter] = 0;
  *&v3[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_sleepHealthNotificationSettingsProvider] = 0;
  v3[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_legacyWakeUpResultsEnabled] = 2;
  if (a2)
  {
    v5 = sub_116BC();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for BridgeSleepScoreLevelListController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id sub_FDEC(void *a1)
{
  *&v1[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_notificationCenter] = 0;
  *&v1[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_sleepHealthNotificationSettingsProvider] = 0;
  v1[OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_legacyWakeUpResultsEnabled] = 2;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for BridgeSleepScoreLevelListController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

void sub_FF4C(uint64_t a1, uint64_t a2, uint64_t a3, Class a4, uint64_t a5)
{
  v33 = a5;
  sub_111E8(0, &qword_1D6D0, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - v10;
  v12 = sub_1157C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v15, enum case for SleepHealthNotificationSettingsProvider.ObservableKey.sleepScoreNotificationLevels(_:), v12);
  v16 = sub_1156C();
  v18 = v17;
  (*(v13 + 8))(v15, v12);
  if (!a2)
  {

    v21 = 0;
LABEL_9:
    sub_B348(a3, v36);
    v22 = v37;
    if (v37)
    {
      v23 = sub_B3D4(v36, v37);
      v24 = *(v22 - 8);
      __chkstk_darwin(v23);
      v26 = &v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v24 + 16))(v26);
      v27 = sub_1190C();
      (*(v24 + 8))(v26, v22);
      sub_B418(v36);
      if (!a4)
      {
LABEL_12:
        v28 = type metadata accessor for BridgeSleepScoreLevelListController();
        v35.receiver = v34;
        v35.super_class = v28;
        objc_msgSendSuper2(&v35, "observeValueForKeyPath:ofObject:change:context:", v21, v27, a4, v33);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v27 = 0;
      if (!a4)
      {
        goto LABEL_12;
      }
    }

    type metadata accessor for NSKeyValueChangeKey(0);
    sub_10AC4(&qword_1D510, type metadata accessor for NSKeyValueChangeKey, &unk_12640);
    a4 = sub_1166C().super.isa;
    goto LABEL_12;
  }

  if (v16 == a1 && v18 == a2)
  {
  }

  else
  {
    v20 = sub_1191C();

    if ((v20 & 1) == 0)
    {
      v21 = sub_116BC();
      goto LABEL_9;
    }
  }

  v29 = sub_117EC();
  (*(*(v29 - 8) + 56))(v11, 1, 1, v29);
  sub_117CC();
  v30 = v34;
  v31 = sub_117BC();
  v32 = swift_allocObject();
  v32[2] = v31;
  v32[3] = &protocol witness table for MainActor;
  v32[4] = v30;
  sub_DE08(0, 0, v11, &unk_12780, v32);
}

uint64_t sub_104BC(uint64_t a1)
{
  sub_112E4(0, &unk_1D6C0, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10534()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10574(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_B558;

  return sub_AAF4(a1, v4, v5, v6);
}

uint64_t sub_10628(uint64_t a1, uint64_t a2)
{
  sub_111E8(0, &qword_1D6D0, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_106BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_111E8(0, a2, a3, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1072C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10824;

  return v6(a1);
}

uint64_t sub_10824()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1091C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10954(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_11344;

  return sub_1072C(a1, v4);
}

uint64_t sub_10A0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_B558;

  return sub_1072C(a1, v4);
}

uint64_t sub_10AC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10B0C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10B4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10B64()
{
  result = qword_1D890;
  if (!qword_1D890)
  {
    type metadata accessor for HKSPSelectableSubtitleCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1D890);
  }

  return result;
}

char *sub_10BAC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10BCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10BCC(char *result, int64_t a2, char a3, char *a4)
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
    sub_112E4(0, &qword_1D8B8, &type metadata accessor for _ContiguousArrayStorage);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10CEC(void *a1)
{
  sub_111E8(0, &qword_1D898, &type metadata accessor for SleepScoreLevels, &type metadata accessor for Optional);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_114EC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_111E8(0, &qword_1D8A0, &type metadata accessor for SleepScoreLevel, &type metadata accessor for Optional);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_114BC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v21 = result;
    v17 = a1;
    sub_1147C();
    sub_114AC();
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {

      return sub_106BC(v11, &qword_1D8A0, &type metadata accessor for SleepScoreLevel);
    }

    else
    {
      v18 = (*(v13 + 32))(v15, v11, v12);
      if (*(v22 + OBJC_IVAR____TtC25NanoBedtimeBridgeSettings35BridgeSleepScoreLevelListController_sleepHealthNotificationSettingsProvider))
      {
        v20 = v17;
        __chkstk_darwin(v18);
        *(&v20 - 2) = v19;

        sub_1155C();

        v17 = v20;
        (*(v6 + 56))(v4, 0, 1, v5);
        (*(v6 + 32))(v8, v4, v5);
      }

      else
      {
        (*(v6 + 56))(v4, 1, 1, v5);
        v23 = &_swiftEmptyArrayStorage;
        sub_10AC4(&qword_1D768, &type metadata accessor for SleepScoreLevels, &protocol conformance descriptor for SleepScoreLevels);
        sub_111E8(0, &qword_1D8A8, &type metadata accessor for SleepScoreLevels, &type metadata accessor for Array);
        sub_1124C();
        sub_1188C();
        if ((*(v6 + 48))(v4, 1, v5) != 1)
        {
          sub_106BC(v4, &qword_1D898, &type metadata accessor for SleepScoreLevels);
        }
      }

      [v21 setChecked:sub_114DC() & 1];

      (*(v6 + 8))(v8, v5);
      return (*(v13 + 8))(v15, v12);
    }
  }

  return result;
}

void sub_111E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1124C()
{
  result = qword_1D8B0;
  if (!qword_1D8B0)
  {
    sub_111E8(255, &qword_1D8A8, &type metadata accessor for SleepScoreLevels, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D8B0);
  }

  return result;
}

_OWORD *sub_112D4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_112E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, char *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Any[8]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}