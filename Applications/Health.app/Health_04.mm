uint64_t sub_10006A298()
{
  v0 = type metadata accessor for SectionedDataSourceContainerViewType();
  v52 = *(v0 - 8);
  v53 = v0;
  __chkstk_darwin(v0);
  v51 = v40 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006AE8C(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  __chkstk_darwin(v2 - 8);
  v50 = v40 - v3;
  v45 = type metadata accessor for CellDeselectionBehavior();
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v43 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006AE8C(0, &qword_1000DAEF0, &type metadata accessor for UICellAccessory.LayoutDimension, &type metadata accessor for Optional);
  __chkstk_darwin(v5 - 8);
  v7 = v40 - v6;
  v42 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UICellAccessory.DisplayedState();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v46 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for ContentConfigurationItem();
  v49 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v40[1] = UUID.uuidString.getter();
  v40[0] = v19;
  v20 = *(v15 + 8);
  v47 = v15 + 8;
  v48 = v20;
  v20(v17, v14);
  v58[3] = type metadata accessor for UIListContentConfiguration();
  v58[4] = &protocol witness table for UIListContentConfiguration;
  sub_10000AD4C(v58);
  static UIListContentConfiguration.cell()();
  UIListContentConfiguration.text.setter();
  v21 = [objc_opt_self() labelColor];
  v22 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v22(v57, 0);
  sub_10006AE8C(0, &qword_1000DAF00, &type metadata accessor for UICellAccessory, &type metadata accessor for _ContiguousArrayStorage);
  type metadata accessor for UICellAccessory();
  v23 = swift_allocObject();
  v54 = xmmword_1000AE100;
  *(v23 + 16) = xmmword_1000AE100;
  (*(v11 + 104))(v13, enum case for UICellAccessory.DisplayedState.always(_:), v10);
  v24 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
  UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
  static UICellAccessory.disclosureIndicator(displayed:options:)();
  (*(v41 + 8))(v9, v42);
  (*(v11 + 8))(v13, v10);
  (*(v44 + 104))(v43, enum case for CellDeselectionBehavior.default(_:), v45);
  v25 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v25 - 8) + 56))(v50, 1, 1, v25);
  (*(v52 + 104))(v51, enum case for SectionedDataSourceContainerViewType.collectionView(_:), v53);
  v26 = v55;
  ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();
  sub_10006AE8C(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for _ContiguousArrayStorage);
  type metadata accessor for ArrayDataSourceSection();
  *(swift_allocObject() + 16) = v54;
  v53 = "ailabilityDataSource";
  sub_10006AE8C(0, &qword_1000DAC00, sub_1000199DC, &type metadata accessor for _ContiguousArrayStorage);
  v27 = swift_allocObject();
  *(v27 + 16) = v54;
  v28 = v56;
  *(v27 + 56) = v56;
  *(v27 + 64) = sub_10006AEF0(&unk_1000DAC10, &type metadata accessor for ContentConfigurationItem, &protocol conformance descriptor for ContentConfigurationItem);
  v29 = sub_10000AD4C((v27 + 32));
  v30 = v49;
  (*(v49 + 16))(v29, v26, v28);
  UUID.init()();
  UUID.uuidString.getter();
  v31 = v46;
  v32 = v48;
  v48(v17, v46);
  ArrayDataSourceSection.init(title:arrangedItems:identifier:)();
  v58[0] = 0x3C53447961727241;
  v58[1] = 0xE800000000000000;
  UUID.init()();
  v33 = UUID.uuidString.getter();
  v35 = v34;
  v32(v17, v31);
  v36._countAndFlagsBits = v33;
  v36._object = v35;
  String.append(_:)(v36);

  v37._countAndFlagsBits = 62;
  v37._object = 0xE100000000000000;
  String.append(_:)(v37);
  v38 = ArrayDataSource.init(arrangedSections:identifier:)();
  (*(v30 + 8))(v55, v56);
  return v38;
}

void sub_10006AC50(void *a1)
{
  type metadata accessor for InternalSettingsFeatureStateListViewController();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [a1 showViewController:v2 sender:0];
}

uint64_t sub_10006AE08(uint64_t a1)
{
  *(a1 + 8) = sub_10006AEF0(&qword_1000DD278, type metadata accessor for FeatureAvailabilityDataSource, &unk_1000B0278);
  result = sub_10006AEF0(&qword_1000DD280, type metadata accessor for FeatureAvailabilityDataSource, &unk_1000B02A8);
  *(a1 + 24) = result;
  return result;
}

void sub_10006AE8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10006AEF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10006B088()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Health16NoHealthDataView_label);
  v2 = [objc_opt_self() mainBundle];
  v9._object = 0x80000001000A8980;
  v3._countAndFlagsBits = 0x5F617461645F6F6ELL;
  v3._object = 0xEC00000074786574;
  v4._countAndFlagsBits = 0x61746144206F4ELL;
  v4._object = 0xE700000000000000;
  v9._countAndFlagsBits = 0xD000000000000039;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v9);

  v5 = String._bridgeToObjectiveC()();

  [v1 setText:v5];

  sub_100003DDC(0, &qword_1000DD2B8, UIFont_ptr);
  v6 = static UIFont.createFont(with:weight:traits:rounded:maximumContentSizeCategory:respectsDynamicType:)();
  [v1 setFont:v6];

  v7 = [objc_opt_self() tertiaryLabelColor];
  [v1 setTextColor:v7];

  [v1 setNumberOfLines:0];
  [v1 setTextAlignment:1];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_10006B274(v1);
}

void sub_10006B274(void *a1)
{
  [v1 addSubview:a1];
  v3 = objc_opt_self();
  sub_1000157F8();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000B02F0;
  v5 = [a1 centerXAnchor];
  v6 = [v1 centerXAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v4 + 32) = v7;
  v8 = [a1 centerYAnchor];
  v9 = [v1 centerYAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v4 + 40) = v10;
  v11 = [a1 leadingAnchor];
  v12 = [v1 layoutMarginsGuide];
  v13 = [v12 leadingAnchor];

  v14 = [v11 constraintEqualToAnchor:v13];
  *(v4 + 48) = v14;
  v15 = [a1 trailingAnchor];
  v16 = [v1 layoutMarginsGuide];
  v17 = [v16 trailingAnchor];

  v18 = [v15 constraintEqualToAnchor:v17];
  *(v4 + 56) = v18;
  sub_100003DDC(0, &qword_1000DD2C0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:isa];
}

id sub_10006B508()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NoHealthDataView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for WelcomePrivacyInformationViewController(uint64_t a1)
{
  result = qword_1000DD350;
  if (!qword_1000DD350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006B608()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1000DD2C8 = result;
  unk_1000DD2D0 = v3;
  return result;
}

uint64_t sub_10006B70C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1000DD2D8 = result;
  unk_1000DD2E0 = v3;
  return result;
}

uint64_t sub_10006B810()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1000DD2E8 = result;
  unk_1000DD2F0 = v3;
  return result;
}

uint64_t sub_10006B914()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1000DD2F8 = result;
  unk_1000DD300 = v3;
  return result;
}

uint64_t sub_10006BA18()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1000DD308 = result;
  unk_1000DD310 = v3;
  return result;
}

uint64_t sub_10006BB1C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1000DD318 = result;
  unk_1000DD320 = v3;
  return result;
}

uint64_t sub_10006BC20()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1000DD328 = result;
  unk_1000DD330 = v3;
  return result;
}

uint64_t sub_10006BD24()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1000DD338 = result;
  unk_1000DD340 = v3;
  return result;
}

void sub_10006BE28(char a1)
{
  *(v1 + qword_1000DD348 + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = [objc_opt_self() sharedConnection];
  if (!v3)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = [v3 isPasscodeSet];

  if (a1)
  {
    if (v5)
    {
      if (qword_1000DA558 != -1)
      {
        swift_once();
      }

      v6 = qword_1000DA570;

      if (v6 == -1)
      {
        goto LABEL_20;
      }

LABEL_28:
      swift_once();
      goto LABEL_20;
    }

    if (qword_1000DA560 != -1)
    {
      swift_once();
    }

    v8 = qword_1000DA580;

    if (v8 != -1)
    {
      goto LABEL_28;
    }
  }

  else if (v5)
  {
    if (qword_1000DA558 != -1)
    {
      swift_once();
    }

    v7 = qword_1000DA578;

    if (v7 != -1)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (qword_1000DA560 != -1)
    {
      swift_once();
    }

    v9 = qword_1000DA588;

    if (v9 != -1)
    {
      goto LABEL_28;
    }
  }

LABEL_20:

  static OnboardingImageHeight.iconDefaultHeight.getter();
  v11 = [objc_opt_self() configurationWithPointSize:7 weight:3 scale:v10];
  if (qword_1000DA540 != -1)
  {
    swift_once();
  }

  v12 = qword_1000E3DF0;
  v13 = v11;
  v14 = String._bridgeToObjectiveC()();
  v15 = [objc_opt_self() imageNamed:v14 inBundle:v12 withConfiguration:v13];

  if (!v15)
  {
    goto LABEL_30;
  }

  if (qword_1000DA568 != -1)
  {
    swift_once();
  }

  isa = Array._bridgeToObjectiveC()().super.isa;
  v17 = HKUIJoinStringsForAutomationIdentifier();

  if (v17)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  OnboardingIconSmallPaddingViewController.init(title:detailText:heroImage:heroImageHeight:linkButtonText:linkButtonAccessibilityIdentifier:)();
}

void sub_10006C2A8()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = String._bridgeToObjectiveC()();
    [v2 setAccessibilityIdentifier:v3];

    if (qword_1000DA550 != -1)
    {
      swift_once();
    }

    v4 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v6 = HKUIJoinStringsForAutomationIdentifier();
  }

  else
  {
    __break(1u);
  }
}

void sub_10006C3EC(void *a1)
{
  v1 = a1;
  sub_10006C2A8();
}

void sub_10006C434()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = String._bridgeToObjectiveC()();
    v3 = [objc_opt_self() presenterForPrivacySplashWithIdentifier:v2];

    if (v3)
    {
      [v3 setPresentingViewController:v1];
    }

    [v3 present];
    swift_unknownObjectRelease();
  }
}

void sub_10006C514(void *a1)
{
  v1 = a1;
  sub_10006C434();
}

uint64_t sub_10006C55C()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100074FCC();
    swift_unknownObjectRelease();
  }

  v2 = 1;
  v1[3] = type metadata accessor for AnalyticsSender();
  v1[4] = &protocol witness table for AnalyticsSender;
  v1[0] = static AnalyticsSender.shared.getter();
  sub_10004B810();
  AnalyticsSubmitting.submit(sender:)();
  return sub_100003B90(v1);
}

void sub_10006C5F0(void *a1)
{
  v1 = a1;
  sub_10006C55C();
}

void sub_10006C6C0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v39 = a4;
  v40 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v38 = a3;
    aBlock[0] = v12;
    *v11 = 136446466;
    v41 = &type metadata for HealthAppPPT;
    sub_10006D374();
    v13 = String.init<A>(describing:)();
    v15 = sub_1000036D0(v13, v14, aBlock);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    v16 = Array.description.getter();
    v18 = sub_1000036D0(v16, v17, aBlock);

    *(v11 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "[%{public}s]: Setting overrideRelevanceForFeedItemIdentifiers to: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    a3 = v38;
  }

  (*(v6 + 8))(v8, v5);
  v19 = objc_allocWithZone(NSUserDefaults);
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 initWithSuiteName:v20];

  if (v21)
  {
    v22 = String._bridgeToObjectiveC()();
    v23 = [v21 arrayForKey:v22];

    if (v23)
    {
      v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = sub_10006CBD4(v24);
    }

    v25 = objc_allocWithZone(NSUserDefaults);
    v26 = String._bridgeToObjectiveC()();
    v27 = [v25 initWithSuiteName:v26];

    if (v27)
    {
      isa = Array._bridgeToObjectiveC()().super.isa;
      v29 = String._bridgeToObjectiveC()();
      [v27 setObject:isa forKey:v29];

      sub_10006D208(0);
      LOBYTE(isa) = v30;
      static Feed.Kind.relevanceRankedFeeds.getter();
      v31 = objc_allocWithZone(type metadata accessor for PopulateDiscoverFeedOperation());
      v32 = PopulateDiscoverFeedOperation.init(feedKinds:)();
      v33 = swift_allocObject();
      *(v33 + 16) = v39;
      *(v33 + 17) = isa & 1;
      v34 = v40;
      *(v33 + 24) = v23;
      *(v33 + 32) = v34;
      *(v33 + 40) = a3;
      aBlock[4] = sub_10006D360;
      aBlock[5] = v33;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100008310;
      aBlock[3] = &unk_1000CF728;
      v35 = _Block_copy(aBlock);
      v36 = v32;

      sub_10001EC44(sub_10006D360, v33);

      [v36 setCompletionBlock:v35];
      _Block_release(v35);

      sub_100003DDC(0, &qword_1000DBC38, NSOperationQueue_ptr);
      v37 = static NSOperationQueue.userInitiated.getter();
      [v37 addOperation:v36];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t (*sub_10006CB9C(uint64_t (*result)(uint64_t), uint64_t a2, uint64_t a3))(uint64_t)
{
  if (result)
  {
    return result(a3);
  }

  return result;
}

void *sub_10006CBD4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_10007C57C(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_100003B34(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_10007C57C((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_10006CCE8(char a1, char a2, uint64_t a3, void (*a4)(uint64_t (*)(), uint64_t))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 17) = a2;
  *(v8 + 24) = a3;

  a4(sub_10006D3BC, v8);
}

void sub_10006CD88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v35 - v10;
  sub_10006D208(v4);
  if (a3)
  {
    static Logger.general.getter();

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v14 = 136446466;
      v35 = &type metadata for HealthAppPPT;
      sub_10006D374();
      v15 = String.init<A>(describing:)();
      v17 = sub_1000036D0(v15, v16, &v36);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2082;
      v18 = Array.description.getter();
      v20 = sub_1000036D0(v18, v19, &v36);

      *(v14 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v12, v13, "[%{public}s]: Populate feed complete, resetting overrideRelevanceForFeedItemIdentifiers to previous value: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
    }

    (*(v6 + 8))(v11, v5);
    v21 = objc_allocWithZone(NSUserDefaults);
    v22 = String._bridgeToObjectiveC()();
    v23 = [v21 initWithSuiteName:v22];

    if (v23)
    {
      v24.super.isa = Array._bridgeToObjectiveC()().super.isa;
      v25 = String._bridgeToObjectiveC()();
      [v23 setObject:v24.super.isa forKey:v25];

LABEL_10:
      return;
    }

    __break(1u);
  }

  else
  {
    static Logger.general.getter();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v36 = v29;
      *v28 = 136446210;
      v35 = &type metadata for HealthAppPPT;
      sub_10006D374();
      v30 = String.init<A>(describing:)();
      v32 = sub_1000036D0(v30, v31, &v36);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "[%{public}s]: Populate feed complete, removing overrideRelevanceForFeedItemIdentifiers", v28, 0xCu);
      sub_100003B90(v29);
    }

    (*(v6 + 8))(v9, v5);
    v33 = objc_allocWithZone(NSUserDefaults);
    v34 = String._bridgeToObjectiveC()();
    v24.super.isa = [v33 initWithSuiteName:v34];

    if (v24.super.isa)
    {
      v25 = String._bridgeToObjectiveC()();
      [(objc_class *)v24.super.isa removeObjectForKey:v25];
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_10006D208(char a1)
{
  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithSuiteName:v3];

  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 BOOLForKey:v5];

  if (v6 == (a1 & 1))
  {
    return;
  }

  v7 = objc_allocWithZone(NSUserDefaults);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithSuiteName:v8];

  if (!v9)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v10 = String._bridgeToObjectiveC()();
  [v9 setBool:a1 & 1 forKey:v10];
}

unint64_t sub_10006D374()
{
  result = qword_1000DD3A0;
  if (!qword_1000DD3A0)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1000DD3A0);
  }

  return result;
}

id sub_10006D3CC(uint64_t a1, uint64_t a2, int a3, void (*a4)(void), uint64_t a5)
{
  v62 = a5;
  v59 = type metadata accessor for Logger();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v8 = type metadata accessor for DeepLinkActivityType();
  v57 = *(v8 - 8);
  __chkstk_darwin(v8);
  v56 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10006ECF8(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v47[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for DataTypeDetailConfiguration.Context();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v61 = &v47[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for HKTDataTypeDetailFactory();
  v60 = *(v16 - 8);
  __chkstk_darwin(v16);
  v63 = &v47[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = [objc_opt_self() dataTypeWithCode:a2];
  if (result)
  {
    v19 = result;
    sub_100069650(aBlock);
    if (v65)
    {
      v48 = a3;
      v49 = v8;
      v53 = a4;
      v54 = v14;
      v55 = v16;
      sub_1000091BC(aBlock, &v72);
      HKTDataTypeDetailFactory.init()();
      sub_10000BFFC(&v72, v73);
      UIViewController.resolvedHealthExperienceStore.getter();
      v20 = [objc_allocWithZone(HKHealthStore) init];
      v21 = type metadata accessor for PinnedContentManager();
      v22 = v20;
      v23 = PinnedContentManager.__allocating_init(healthStore:domain:)();
      sub_10000ACE8(v71, aBlock);
      v24 = v22;
      v25 = [v24 profileIdentifier];
      v26 = type metadata accessor for Presentation();
      (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
      static DataTypeDetailMode.defaultMode(for:presentation:)();

      sub_10006EDB8(v12, sub_10006ECF8);
      v69 = v21;
      v70 = &protocol witness table for PinnedContentManager;
      v68 = v23;
      v51 = v23;

      v27 = v19;
      v28 = v61;
      v50 = v24;
      DataTypeDetailConfiguration.Context.init(healthExperienceStore:healthStore:mode:pinnedContentManager:chartContext:restorationUserActivity:)();
      v52 = v27;
      v29 = HKTDataTypeDetailFactory.makeViewController(hkType:context:)();
      type metadata accessor for CompoundDataSourceCollectionViewController();
      v30 = swift_dynamicCastClass();
      v31 = v53;
      if (!v30)
      {

        if (v31)
        {
          v31(0);
        }

        (*(v54 + 8))(v28, v13);
        sub_100003B90(v71);
        (*(v60 + 8))(v63, v55);
        return sub_100003B90(&v72);
      }

      v32 = v30;
      v59 = v13;
      (*(v57 + 104))(v56, enum case for DeepLinkActivityType.dataTypeDetail(_:), v49);
      v33 = v62;
      if (!v31)
      {
        v33 = 0;
      }

      v58 = v33;
      v34 = objc_opt_self();
      v35 = v29;
      [v34 begin];
      sub_10000BFFC(&v72, v73);
      dispatch thunk of ViewControllerRouterProtocol.prepareForAppActivity(_:)();
      [v34 commit];
      v36 = [*sub_10000BFFC(&v72 v73)];
      if (v36)
      {
        v37 = v36;
        objc_opt_self();
        v38 = swift_dynamicCastObjCClass();
        if (v38)
        {
          v39 = v38;
          [v34 begin];
          v40 = swift_allocObject();
          v41 = v58;
          v40[2] = v31;
          v40[3] = v41;
          v40[4] = v32;
          v66 = sub_10006EE18;
          v67 = v40;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100008310;
          v65 = &unk_1000CF7A0;
          v42 = _Block_copy(aBlock);
          v43 = v35;
          sub_10001EC44(v31, v62);

          [v34 setCompletionBlock:v42];
          _Block_release(v42);
          [v39 pushViewController:v32 animated:v48 & 1];
          [v34 commit];

          (*(v57 + 8))(v56, v49);
          v44 = v59;
          v45 = v55;
          v46 = v54;
LABEL_4:
          (*(v46 + 8))(v28, v44);
          sub_100003B90(v71);
          (*(v60 + 8))(v63, v45);
          return sub_100003B90(&v72);
        }
      }

      v44 = v59;
      v45 = v55;
      v46 = v54;
      if (v31)
      {
        v31(0);
      }

      (*(v57 + 8))(v56, v49);
      goto LABEL_4;
    }

    result = sub_10006EDB8(aBlock, sub_10006ED50);
  }

  if (a4)
  {
    return (a4)(0);
  }

  return result;
}

uint64_t sub_10006DE7C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t (*a5)(void), uint64_t a6)
{
  v60 = a6;
  v61 = a5;
  v58 = a4;
  v8 = type metadata accessor for DeepLinkActivityType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HKTypeGroup();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v53 - v18;
  __chkstk_darwin(v17);
  v59 = &v53 - v20;
  sub_100069650(aBlock);
  if (!v63)
  {
    result = sub_10006EDB8(aBlock, sub_10006ED50);
    v52 = v61;
    if (!v61)
    {
      return result;
    }

    return v52(0);
  }

  sub_1000091BC(aBlock, v67);
  v21 = static HKTypeGroup.groupsByKeyword.getter();
  if (*(v21 + 16))
  {
    v22 = sub_100033388(a2, a3);
    if (v23)
    {
      v24 = *(v21 + 56) + *(v13 + 72) * v22;
      v54 = *(v13 + 16);
      v54(v19, v24, v12);

      v56 = v13;
      v25 = v59;
      (*(v13 + 32))(v59, v19, v12);
      v55 = *(*sub_10000BFFC(v67, v68) + OBJC_IVAR____TtC6Health16TabBarController_providedHealthStore);
      v53 = *sub_10000BFFC(v67, v68);
      v26 = v11;
      v27 = OBJC_IVAR____TtC6Health16TabBarController_providedHealthExperienceStore;
      v28 = *sub_10000BFFC(v67, v68);
      v29 = v9;
      v30 = v8;
      v31 = OBJC_IVAR____TtC6Health16TabBarController_pinnedContentManager;
      v57 = v12;
      v54(v16, v25, v12);
      v32 = v53 + v27;
      v33 = v26;
      sub_10000ACE8(v32, aBlock);
      v34 = v28 + v31;
      v35 = v30;
      v36 = v29;
      sub_10000ACE8(v34, v66);
      v37 = objc_allocWithZone(type metadata accessor for CategoryViewController());
      v55 = v55;
      v38 = CategoryViewController.init(typeGroup:healthStore:healthExperienceStore:pinnedContentManager:)();
      (*(v29 + 104))(v26, enum case for DeepLinkActivityType.category(_:), v35);
      v39 = v60;
      v40 = v61;
      if (!v61)
      {
        v39 = 0;
      }

      v54 = v39;
      v41 = objc_opt_self();
      v42 = v38;
      [v41 begin];
      sub_10000BFFC(v67, v68);
      dispatch thunk of ViewControllerRouterProtocol.prepareForAppActivity(_:)();
      [v41 commit];
      v43 = [*sub_10000BFFC(v67 v68)];
      if (v43)
      {
        v44 = v43;
        objc_opt_self();
        v45 = swift_dynamicCastObjCClass();
        if (v45)
        {
          v46 = v45;
          [v41 begin];
          v47 = swift_allocObject();
          v48 = v54;
          v47[2] = v40;
          v47[3] = v48;
          v47[4] = v42;
          v64 = sub_10006F0A4;
          v65 = v47;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100008310;
          v63 = &unk_1000CF7F0;
          v49 = _Block_copy(aBlock);
          v50 = v42;
          sub_10001EC44(v40, v60);

          [v41 setCompletionBlock:v49];
          _Block_release(v49);
          [v46 pushViewController:v50 animated:v58 & 1];
          [v41 commit];

LABEL_17:
          (*(v36 + 8))(v33, v35);
          (*(v56 + 8))(v59, v57);
          return sub_100003B90(v67);
        }
      }

      if (v40)
      {
        v40(0);
      }

      goto LABEL_17;
    }
  }

  result = sub_100003B90(v67);
  v52 = v61;
  if (v61)
  {
    return v52(0);
  }

  return result;
}

void sub_10006E474(uint64_t a1, uint64_t a2, int a3, void (*a4)(void), void *a5)
{
  v9 = type metadata accessor for DeepLinkActivityType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() dataTypeWithCode:a2];
  if (!v13)
  {
LABEL_11:
    if (a4)
    {
      a4(0);
    }

    return;
  }

  v14 = v13;
  v34 = a3;
  v15 = [objc_opt_self() sharedInstance];
  v16 = [v15 createListViewController:v14];

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {

    goto LABEL_11;
  }

  v18 = v17;
  sub_100069650(aBlock);
  if (v36)
  {
    sub_1000091BC(aBlock, v39);
    v33 = v10;
    (*(v10 + 104))(v12, enum case for DeepLinkActivityType.summary(_:), v9);
    if (a4)
    {
      v19 = a5;
    }

    else
    {
      v19 = 0;
    }

    v31 = v19;
    v20 = objc_opt_self();
    v32 = v16;
    [v20 begin];
    sub_10000BFFC(v39, v40);
    dispatch thunk of ViewControllerRouterProtocol.prepareForAppActivity(_:)();
    [v20 commit];
    v21 = [*sub_10000BFFC(v39 v40)];
    if (v21)
    {
      v22 = v21;
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      if (v23)
      {
        v30 = v23;
        [v20 begin];
        v24 = swift_allocObject();
        v25 = v31;
        v24[2] = a4;
        v24[3] = v25;
        v24[4] = v18;
        v37 = sub_10006F0A4;
        v38 = v24;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100008310;
        v36 = &unk_1000CF840;
        v26 = _Block_copy(aBlock);
        v31 = v22;
        v27 = v26;
        v28 = v32;
        sub_10001EC44(a4, a5);

        [v20 setCompletionBlock:v27];
        _Block_release(v27);
        [v30 pushViewController:v18 animated:v34 & 1];
        [v20 commit];

LABEL_20:
        (*(v33 + 8))(v12, v9);
        sub_100003B90(v39);
        return;
      }
    }

    if (a4)
    {
      a4(0);
    }

    v29 = v32;

    goto LABEL_20;
  }

  sub_10006EDB8(aBlock, sub_10006ED50);
  if (a4)
  {
    a4(0);
  }
}

uint64_t sub_10006E8A4(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void), uint64_t a5)
{
  sub_100069650(v21);
  if (!v22)
  {
    result = sub_10006EDB8(v21, sub_10006ED50);
    if (!a4)
    {
      return result;
    }

    return a4(0);
  }

  sub_1000091BC(v21, v26);
  sub_10000BFFC(v26, v27);
  v8 = UIViewController.resolvedHealthStore.getter();
  if (!v8)
  {
    result = sub_100003B90(v26);
    if (!a4)
    {
      return result;
    }

    return a4(0);
  }

  sub_10000BFFC(v26, v27);
  v9 = UIViewController.resolvedHealthStore.getter();
  if (!v9)
  {
    v9 = [objc_allocWithZone(HKHealthStore) init];
  }

  v10 = v9;
  v11 = objc_allocWithZone(type metadata accessor for InternalSettingsViewController(0));
  v12 = sub_10002BCE4(v10);

  v13 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v12];
  v14 = objc_allocWithZone(type metadata accessor for InternalFeedItemListViewController());

  v15 = InternalFeedItemListViewController.init(contentKinds:)();
  [v13 pushViewController:v15 animated:a3 & 1];
  sub_10000ACE8(v26, v21);
  sub_100009630(0, &qword_1000DBAB8, &protocol descriptor for RootViewControllerProviding);
  type metadata accessor for TabBarController();
  if (swift_dynamicCast())
  {
    v16 = v25;
    v17 = swift_allocObject();
    v17[2] = a4;
    v17[3] = a5;
    v17[4] = v15;
    v23 = sub_10006F0A4;
    v24 = v17;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_100008310;
    v22 = &unk_1000CF890;
    v18 = _Block_copy(v21);
    sub_10001EC44(a4, a5);
    v19 = v15;

    [v16 presentViewController:v13 animated:a3 & 1 completion:v18];

    _Block_release(v18);
    v13 = v16;
  }

  else
  {
    if (a4)
    {
      a4(0);
    }
  }

  return sub_100003B90(v26);
}

id sub_10006EB68(id result)
{
  if (!result)
  {
    return result;
  }

  result = [result collectionView];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v1 = result;
  v2 = [result visibleCells];

  sub_100003DDC(0, &qword_1000DCCE0, UICollectionViewCell_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_20:

    return 0;
  }

LABEL_19:
  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_20;
  }

LABEL_5:
  v5 = 0;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    type metadata accessor for DataTypeDetailChartCell();
    if (swift_dynamicCastClass())
    {
      break;
    }

    ++v5;
    if (v8 == v4)
    {
      goto LABEL_20;
    }
  }

  v9 = dispatch thunk of DataTypeDetailChartCell.chartViewController.getter();

  if (!v9)
  {
    return 0;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

void sub_10006ECF8(uint64_t a1)
{
  if (!qword_1000DBB80)
  {
    type metadata accessor for Presentation();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DBB80);
    }
  }
}

void sub_10006ED50(uint64_t a1)
{
  if (!qword_1000DBAB0)
  {
    sub_100009630(255, &qword_1000DBAB8, &protocol descriptor for RootViewControllerProviding);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DBAB0);
    }
  }
}

uint64_t sub_10006EDB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_10006EE1C(id result)
{
  if (result)
  {
    result = [result collectionView];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v1 = result;
    v2 = [result visibleCells];

    sub_100003DDC(0, &qword_1000DCCE0, UICollectionViewCell_ptr);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v3 >> 62)
    {
LABEL_25:
      v4 = _CocoaArrayWrapper.endIndex.getter();
      if (v4)
      {
LABEL_5:
        v5 = 0;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_24;
            }

            v6 = *(v3 + 8 * v5 + 32);
          }

          v7 = v6;
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            __break(1u);
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

          type metadata accessor for DataTypeDetailChartCell();
          if (swift_dynamicCastClass())
          {
            break;
          }

          ++v5;
          if (v8 == v4)
          {
            goto LABEL_26;
          }
        }

        v9 = dispatch thunk of DataTypeDetailChartCell.chartViewController.getter();
        if (v9)
        {
          v10 = v9;
          objc_opt_self();
          v11 = swift_dynamicCastObjCClass();
          if (v11)
          {
            v12 = v11;

            return v12;
          }
        }

        v13 = dispatch thunk of DataTypeDetailChartCell.chartViewController.getter();
        if (v13)
        {
          v14 = v13;
          objc_opt_self();
          v15 = swift_dynamicCastObjCClass();
          if (v15)
          {
            v16 = [v15 chartController];

            return v16;
          }
        }

        else
        {
        }

        return 0;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_5;
      }
    }

LABEL_26:

    return 0;
  }

  return result;
}

uint64_t sub_10006F020()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006F068()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(*(v0 + 32));
  }

  return result;
}

uint64_t sub_10006F0B8()
{
  sub_10007488C(0, &qword_1000DC800, &type metadata accessor for URL, &type metadata accessor for Optional);
  v1 = v0;
  sub_1000749DC(v0, qword_1000E3EA0);
  sub_10005A254(v1, qword_1000E3EA0);
  return URL.init(string:)();
}

uint64_t sub_10006F14C()
{
  v1 = OBJC_IVAR____TtC6Health21WelcomeViewController____lazy_storage___signalProvider;
  if (*(v0 + OBJC_IVAR____TtC6Health21WelcomeViewController____lazy_storage___signalProvider))
  {
    v2 = *(v0 + OBJC_IVAR____TtC6Health21WelcomeViewController____lazy_storage___signalProvider);
  }

  else
  {
    v3 = v0;
    type metadata accessor for HealthWelcomeFlowSignalProvider();
    swift_allocObject();
    v2 = HealthWelcomeFlowSignalProvider.init()();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10006F1C8()
{
  sub_1000039F4(0, &qword_1000DAF58, &type metadata for Bool, &type metadata accessor for UserDefault);
  v1 = v0;
  sub_1000749DC(v0, qword_1000DD3B0);
  sub_10005A254(v1, qword_1000DD3B0);
  sub_100003DDC(0, &qword_1000DD4E0, NSUserDefaults_ptr);
  static NSUserDefaults.healthAppShared.getter();
  return UserDefault.init(key:userDefaults:fallbackValue:isAppleInternalOnly:)();
}

char *sub_10006F2C4(uint64_t a1)
{
  v2 = v1;
  v57 = a1;
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for PluginAdvertisableFeatureSourceContext.DeviceSource();
  v53 = *(v5 - 8);
  v54 = v5;
  __chkstk_darwin(v5);
  v55 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ScaleMode();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MicaAnimationView.Animation();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC6Health21WelcomeViewController_animationView;
  if (qword_1000DA5A0 != -1)
  {
    swift_once();
  }

  v16 = sub_10005A254(v11, qword_1000E3EB8);
  (*(v12 + 16))(v14, v16, v11);
  (*(v8 + 104))(v10, enum case for ScaleMode.fit(_:), v7);
  v17 = objc_allocWithZone(type metadata accessor for MicaAnimationView());
  *&v2[v15] = MicaAnimationView.init(animation:inset:scaleMode:)();
  v18 = &v2[OBJC_IVAR____TtC6Health21WelcomeViewController_completionHandler];
  *v18 = 0;
  v18[1] = 0;
  *&v2[OBJC_IVAR____TtC6Health21WelcomeViewController____lazy_storage___signalProvider] = 0;
  v2[OBJC_IVAR____TtC6Health21WelcomeViewController_isCloudSyncEnabled] = 0;
  v2[OBJC_IVAR____TtC6Health21WelcomeViewController_noAccountPresentOrManaged] = 0;
  v2[OBJC_IVAR____TtC6Health21WelcomeViewController_hasSecureContainer] = 0;
  *&v2[OBJC_IVAR____TtC6Health21WelcomeViewController_cancellables] = _swiftEmptyArrayStorage;
  v2[OBJC_IVAR____TtC6Health21WelcomeViewController_needsHealthDetailsTile] = 0;
  v19 = [objc_allocWithZone(HKHealthStore) init];
  *&v2[OBJC_IVAR____TtC6Health21WelcomeViewController_healthStore] = v19;
  v20 = type metadata accessor for CountryOracle();
  swift_allocObject();
  v56 = v19;
  v21 = CountryOracle.init(mobileCountryCodeManagerProvider:)();
  v63 = v20;
  v64 = sub_100074E1C(&qword_1000DD4E8, 255, &type metadata accessor for CountryOracle, &protocol conformance descriptor for CountryOracle);
  v62[0] = v21;
  (*(v53 + 104))(v55, enum case for PluginAdvertisableFeatureSourceContext.DeviceSource.activePairedDevice(_:), v54);
  v22 = type metadata accessor for HealthPluginAdvertisableFeatureManagerFactory();
  swift_allocObject();
  v23 = HealthPluginAdvertisableFeatureManagerFactory.init(healthStore:countryProvider:activeDeviceSource:queue:)();
  v24 = type metadata accessor for HealthAppNotificationManager();
  v25 = HealthAppNotificationManager.__allocating_init()();
  *&v2[OBJC_IVAR____TtC6Health21WelcomeViewController_notificationManager] = v25;
  v63 = v24;
  v64 = &off_1000CE550;
  v62[0] = v25;
  v55 = v25;
  v60 = v22;
  v61 = &protocol witness table for HealthPluginAdvertisableFeatureManagerFactory;
  *&v59 = v23;
  v54 = v23;
  type metadata accessor for HealthNotificationsWelcomeViewModel();
  v26 = swift_allocObject();
  v27 = sub_1000190A0(v62, v24);
  __chkstk_darwin(v27);
  v29 = (&v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29);
  v31 = *v29;
  *(v26 + 40) = v24;
  *(v26 + 48) = &off_1000CE550;
  *(v26 + 16) = v31;
  *(v26 + 96) = 0;
  *(v26 + 104) = 0;
  *(v26 + 112) = 0;
  sub_100014D24(&v59, v26 + 56);
  swift_retain_n();

  sub_100003B90(v62);
  *&v2[OBJC_IVAR____TtC6Health21WelcomeViewController_healthNotificationViewModel] = v26;
  sub_1000748FC(v57, &v2[OBJC_IVAR____TtC6Health21WelcomeViewController_deepLinkCanceler], &unk_1000DD110, &qword_1000DD4C0, &protocol descriptor for AppDeepLinkCanceling, sub_100055124);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v32 = String.init(localized:table:bundle:locale:comment:)();
  v34 = v33;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v35 = String.init(localized:table:bundle:locale:comment:)();
  v37 = v36;
  v38 = String._bridgeToObjectiveC()();

  v62[0] = v32;
  v62[1] = v34;
  v39._countAndFlagsBits = 2570;
  v39._object = 0xE200000000000000;
  String.append(_:)(v39);
  v40._countAndFlagsBits = v35;
  v40._object = v37;
  String.append(_:)(v40);

  v41 = String._bridgeToObjectiveC()();

  v42 = type metadata accessor for WelcomeViewController();
  v58.receiver = v2;
  v58.super_class = v42;
  v43 = objc_msgSendSuper2(&v58, "initWithTitle:detailText:icon:contentLayout:", v38, v41, 0, 1);

  v44 = v43;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v45 = [objc_opt_self() boldButton];
  [v45 addTarget:v44 action:"didTapNext:" forControlEvents:64];
  v46 = String._bridgeToObjectiveC()();

  [v45 setTitle:v46 forState:0];

  v47 = [v44 buttonTray];
  [v47 addButton:v45];

  v48 = v45;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v50 = HKUIJoinStringsForAutomationIdentifier();

  [v48 setAccessibilityIdentifier:v50];
  sub_100003DDC(0, &qword_1000DD4F0, HKCloudSyncObserver_ptr);
  v62[0] = static HKCloudSyncObserver.statusPublisher(for:)();
  *(swift_allocObject() + 16) = v44;
  sub_100074A8C(0);
  sub_100074E1C(&qword_1000DD518, 255, sub_100074A8C, &protocol conformance descriptor for AnyPublisher<A, B>);
  v51 = v44;
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  sub_10007488C(0, &qword_1000DD520, &type metadata accessor for AnyCancellable, &type metadata accessor for Array);
  sub_100074B84(&qword_1000DD528, &qword_1000DD520, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for [A]);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  sub_10000EFB4(v57, &unk_1000DD110, &qword_1000DD4C0, &protocol descriptor for AppDeepLinkCanceling, sub_100055124);
  return v51;
}

void sub_10006FE6C(void *a1, uint64_t a2, uint64_t a3, const char **a4, void (*a5)(id))
{
  v11.receiver = a1;
  v11.super_class = type metadata accessor for WelcomeViewController();
  v8 = *a4;
  v9 = v11.receiver;
  v10 = objc_msgSendSuper2(&v11, v8, a3);
  a5(v10);
}

void sub_10006FF80(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 showsBusyIndicator];
  v7 = UIViewController.resolvedHealthStore.getter();
  if (v7)
  {
    v8 = v7;
    v9 = type metadata accessor for CloudSyncStateObserver();
    memset(v25, 0, sizeof(v25));
    v26 = 0;
    v10 = objc_allocWithZone(v9);
    v11 = v8;
    v12 = CloudSyncStateObserver.init(healthStore:store:)();
    v13 = objc_allocWithZone(ACAccountStore);
    v14 = v12;
    v15 = [v13 init];
    type metadata accessor for CloudSyncBuddyAvailabilityProvider();
    swift_allocObject();
    v16 = sub_100057294(v14, v15);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_100057524(v16, v17, a1, ObjectType);
  }

  else
  {
    static Logger.view.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v21;
      *v20 = 136315138;
      *&v25[0] = ObjectType;
      swift_getMetatypeMetadata();
      v22 = String.init<A>(describing:)();
      v24 = sub_1000036D0(v22, v23, &v27);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "[%s]: Failed to resolve HKHealthStore", v20, 0xCu);
      sub_100003B90(v21);
    }

    (*(v4 + 8))(v6, v3);
    sub_100071A74();
  }
}

char *sub_100070280(int a1, uint64_t a2, void *a3, uint64_t a4)
{
  v33 = a1;
  sub_10007488C(0, &qword_1000DD550, &type metadata accessor for OS_dispatch_queue.SchedulerOptions, &type metadata accessor for Optional);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  sub_100074C3C(0);
  v10 = v9;
  v11 = *(v9 - 8);
  __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100074CD4(0);
  v15 = v14;
  v32 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    sub_100003DDC(0, &qword_1000DD4F0, HKCloudSyncObserver_ptr);
    v20 = *&v19[OBJC_IVAR____TtC6Health21WelcomeViewController_healthStore];
    v31 = a3;
    v21 = v20;
    v22 = static HKCloudSyncObserver.statusPublisher(for:)();
    v30 = a4;
    v23 = v22;

    v34 = v23;
    sub_100074A8C(0);
    sub_100074E1C(&qword_1000DD518, 255, sub_100074A8C, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.first()();

    sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
    v24 = static OS_dispatch_queue.main.getter();
    v34 = v24;
    v25 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
    sub_100074E1C(&qword_1000DD568, 255, sub_100074C3C, &protocol conformance descriptor for Publishers.First<A>);
    sub_100074DA4();
    Publisher.receive<A>(on:options:)();
    sub_10000EFB4(v8, &qword_1000DD550, &type metadata accessor for OS_dispatch_queue.SchedulerOptions, &type metadata accessor for Optional, sub_10007488C);

    (*(v11 + 8))(v13, v10);
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    v28 = v31;
    *(v27 + 16) = v31;
    *(v27 + 24) = v26;
    *(v27 + 32) = v33;
    *(v27 + 40) = v30;
    sub_100074E1C(&qword_1000DD578, 255, sub_100074CD4, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v29 = v28;
    Publisher<>.sink(receiveValue:)();

    (*(v32 + 8))(v17, v15);
    swift_beginAccess();
    sub_10007488C(0, &qword_1000DD520, &type metadata accessor for AnyCancellable, &type metadata accessor for Array);
    sub_100074B84(&qword_1000DD528, &qword_1000DD520, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for [A]);
    AnyCancellable.store<A>(in:)();
    swift_endAccess();
  }

  return result;
}

void sub_1000707C4(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *(a1 + 8);
  [a2 hidesBusyIndicator];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (v14)
    {
      v17 = 0;
    }

    else
    {
      v17 = [v13 accountSupportsSecureContainer];
    }

    if ((a4 & 0xFE) == 2)
    {
      v16[OBJC_IVAR____TtC6Health21WelcomeViewController_noAccountPresentOrManaged] = 1;
      v18 = objc_allocWithZone(type metadata accessor for WelcomePrivacyInformationViewController(0));
      sub_10006BE28(v17);
      v20 = v19;
      *&v19[qword_1000DD348 + 8] = &off_1000CF900;
      swift_unknownObjectWeakAssign();
      v21 = [v16 navigationController];
      if (!v21)
      {
LABEL_8:

        return;
      }

LABEL_7:
      v22 = v21;
      [v21 pushViewController:v20 animated:1];

      goto LABEL_8;
    }

    v16[OBJC_IVAR____TtC6Health21WelcomeViewController_isCloudSyncEnabled] = a4 & 1;
    if (a4)
    {
      if ((v14 & 1) == 0)
      {
        if (([v13 accountSupportsSecureContainer] & 1) == 0)
        {
          v47 = swift_allocObject();
          *(v47 + 16) = v16;
          *(v47 + 24) = a5;
          v48 = v16;
          sub_1000711E4(sub_100074FC4, v47);

          sub_10006644C(v13, 0);
          return;
        }

        sub_10006644C(v13, 0);
      }

      v23 = objc_allocWithZone(type metadata accessor for WelcomePrivacyInformationViewController(0));
      sub_10006BE28(v17);
      v20 = v24;
      *&v24[qword_1000DD348 + 8] = &off_1000CF900;
      swift_unknownObjectWeakAssign();
      v21 = [v16 navigationController];
      if (!v21)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    static Logger.view.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v49 = v28;
      *v27 = 136315138;
      v29 = _typeName(_:qualified:)();
      v31 = sub_1000036D0(v29, v30, &v49);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "[%s] Sync is disabled. Proceed to ask user if they want to turn on sync", v27, 0xCu);
      sub_100003B90(v28);
    }

    (*(v10 + 8))(v12, v9);
    v32 = *&v16[OBJC_IVAR____TtC6Health21WelcomeViewController_healthStore];
    v33 = objc_allocWithZone(_HKBehavior);
    v34 = v32;
    v35 = [v33 init];
    v36 = [v35 isiPad];

    if (v36)
    {
      v37 = objc_allocWithZone(type metadata accessor for WelcomeiPadHealthKitSyncViewController(0));
      v38 = v34;
      v39 = v16;
      sub_100059E48(v38, v16, &off_1000CF8C8, 0);
      v41 = v40;
    }

    else
    {
      v42 = objc_allocWithZone(type metadata accessor for CloudSyncWelcomeViewController());
      v43 = v34;
      v44 = v16;
      v41 = sub_10007CAB8(v43, v16, &off_1000CF8F0);
    }

    v45 = [v16 navigationController];
    if (v45)
    {
      v46 = v45;
      [v45 pushViewController:v41 animated:1];
    }

    else
    {
    }
  }
}

void sub_100070C88(int a1, void *a2, id a3, uint64_t a4)
{
  v49 = a4;
  LODWORD(v6) = a1;
  v7 = type metadata accessor for Logger();
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v44 - v11;
  if (!a2 || (v53 = a2, swift_errorRetain(), sub_100009630(0, &qword_1000DB730, &protocol descriptor for Error), sub_100003DDC(0, &unk_1000DD530, NSError_ptr), (swift_dynamicCast() & 1) == 0))
  {
LABEL_8:
    if (v6)
    {
      goto LABEL_12;
    }

LABEL_9:
    static Logger.view.getter();
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v22 = 136315394;
      v23 = _typeName(_:qualified:)();
      v25 = sub_1000036D0(v23, v24, &v53);
      v48 = v12;
      v26 = v6;
      v6 = v25;

      *(v22 + 4) = v6;
      *(v22 + 12) = 2080;
      v52 = a2;
      swift_errorRetain();
      sub_100055124(0, &qword_1000DD580, &qword_1000DB730, &protocol descriptor for Error);
      v27 = String.init<A>(describing:)();
      v29 = sub_1000036D0(v27, v28, &v53);
      LOBYTE(v6) = v26;

      *(v22 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "[%s] Failed to repair device to device end to end encryption state with error: %s", v22, 0x16u);
      swift_arrayDestroy();

      (*(v50 + 8))(v48, v51);
    }

    else
    {

      (*(v50 + 8))(v12, v51);
    }

    goto LABEL_12;
  }

  v47 = a3;
  v48 = v12;
  v46 = v6;
  v45 = v52;
  v13 = [v52 underlyingErrors];
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = 0;
  v16 = *(v14 + 16);
  while (v16 != v15)
  {
    if (v15 >= *(v14 + 16))
    {
      __break(1u);
      return;
    }

    v17 = v15 + 1;
    swift_errorRetain();
    v18 = _convertErrorToNSError(_:)();
    v19 = [v18 code];

    v15 = v17;
    if (v19 == -7003)
    {

      a3 = v47;
      v12 = v48;
      LOBYTE(v6) = v46;
      goto LABEL_8;
    }
  }

  a3 = v47;
  v42 = [v47 navigationController];
  LOBYTE(v6) = v46;
  v12 = v48;
  if (v42)
  {
    v43 = v42;
    [v42 dismissViewControllerAnimated:1 completion:0];
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_12:
  static Logger.view.getter();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = v6;
    v6 = swift_slowAlloc();
    v53 = v6;
    *v32 = 136315138;
    v34 = _typeName(_:qualified:)();
    v36 = sub_1000036D0(v34, v35, &v53);

    *(v32 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v30, v31, "[%s] Account upgrade flow completed. Continuing to privacy info screen", v32, 0xCu);
    sub_100003B90(v6);
    LOBYTE(v6) = v33;
  }

  (*(v50 + 8))(v10, v51);
  v37 = objc_allocWithZone(type metadata accessor for WelcomePrivacyInformationViewController(0));
  sub_10006BE28(v6 & 1);
  v39 = v38;
  *&v38[qword_1000DD348 + 8] = &off_1000CF900;
  swift_unknownObjectWeakAssign();
  v40 = [a3 navigationController];
  if (v40)
  {
    v41 = v40;
    [v40 pushViewController:v39 animated:1];
  }
}

void sub_1000711E4(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() sharedInstance];
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5;
  v7 = [v5 primaryAccountAltDSID];

  if (!v7)
  {
    return;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = [objc_allocWithZone(UINavigationController) init];
  v12 = [v11 view];
  if (!v12)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = [objc_opt_self() systemBackgroundColor];
  [v13 setBackgroundColor:v14];

  v15 = swift_allocObject();
  v15[2] = v8;
  v15[3] = v10;
  v15[4] = v11;
  v15[5] = a1;
  v15[6] = a2;
  v18[4] = sub_100074C04;
  v18[5] = v15;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_100008310;
  v18[3] = &unk_1000CFB58;
  v16 = _Block_copy(v18);
  v17 = v11;

  [v2 presentViewController:v17 animated:1 completion:v16];
  _Block_release(v16);
}

void sub_1000713CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v10 = objc_allocWithZone(CDPUIDeviceToDeviceEncryptionFlowContext);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithAltDSID:v11];

  v13 = AKSecurityUpgradeContextGeneric;
  [v12 setSecurityUpgradeContext:AKSecurityUpgradeContextGeneric];
  [v12 setDeviceToDeviceEncryptionUpgradeUIStyle:1];
  [v12 setDeviceToDeviceEncryptionUpgradeType:0];
  [v12 setSecurityUpgradeContext:v13];
  [v12 setForceInlinePresentation:1];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v14 = String._bridgeToObjectiveC()();

  [v12 setFeatureName:v14];

  [v12 setPresentingViewController:a3];
  v15 = [objc_allocWithZone(CDPUIDeviceToDeviceEncryptionHelper) initWithContext:v12];
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  aBlock[4] = sub_100074C14;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000099BC;
  aBlock[3] = &unk_1000CFBA8;
  v17 = _Block_copy(aBlock);

  [v15 performDeviceToDeviceEncryptionStateRepairWithCompletion:v17];
  _Block_release(v17);
}

void sub_1000716AC(void *a1)
{
  v3 = [v1 contentView];
  [v3 addSubview:a1];

  v4 = [v1 contentView];
  v5 = objc_opt_self();
  v6 = [v5 systemBackgroundColor];
  [v4 setBackgroundColor:v6];

  v7 = [v1 contentView];
  [v7 setClipsToBounds:1];

  v8 = [v5 systemBackgroundColor];
  [a1 setBackgroundColor:v8];

  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = objc_opt_self();
  sub_1000039F4(0, &qword_1000DBB00, &type metadata for Swift.AnyObject + 8, &type metadata accessor for _ContiguousArrayStorage);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000B02F0;
  v11 = [a1 topAnchor];
  v12 = [v1 contentView];
  v13 = [v12 topAnchor];

  v14 = [v11 constraintEqualToAnchor:v13];
  *(v10 + 32) = v14;
  v15 = [a1 leadingAnchor];
  v16 = [v1 contentView];
  v17 = [v16 leadingAnchor];

  v18 = [v15 constraintEqualToAnchor:v17];
  *(v10 + 40) = v18;
  v19 = [a1 bottomAnchor];
  v20 = [v1 contentView];
  v21 = [v20 bottomAnchor];

  v22 = [v19 constraintEqualToAnchor:v21];
  *(v10 + 48) = v22;
  v23 = [a1 trailingAnchor];
  v24 = [v1 contentView];
  v25 = [v24 trailingAnchor];

  v26 = [v23 constraintEqualToAnchor:v25];
  *(v10 + 56) = v26;
  sub_100003DDC(0, &qword_1000DD2C0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 activateConstraints:isa];
}

void sub_100071A74()
{
  v1 = [*&v0[OBJC_IVAR____TtC6Health21WelcomeViewController_healthStore] viewControllerFactory];
  v4 = [v1 createBuddyViewControllerWithHealthDetailsLast:0];

  [v4 setDelegate:v0];
  v2 = [v0 navigationController];
  if (v2)
  {
    v3 = v2;
    [v2 pushViewController:v4 animated:1];
  }
}

uint64_t sub_100071B3C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v13 = *(v22 - 8);
  __chkstk_darwin(v22);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
  v21 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = a1;
  *(v16 + 40) = a4;
  *(v16 + 48) = a5;
  aBlock[4] = sub_1000749CC;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = &unk_1000CF9C8;
  v17 = _Block_copy(aBlock);
  sub_100044630(a2, a3);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100074E1C(&qword_1000DAD40, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007488C(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100074B84(&qword_1000DAD48, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18 = v21;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v23 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v22);
}

void sub_100071E80(void (*a1)(void), uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v31 = a2;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.view.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v29 = a4;
    v17 = v16;
    v32[0] = v16;
    *v15 = 136315394;
    v18 = _typeName(_:qualified:)();
    v20 = sub_1000036D0(v18, v19, v32);

    *(v15 + 4) = v20;
    *(v15 + 12) = 1024;
    *(v15 + 14) = a3 & 1;
    _os_log_impl(&_mh_execute_header, v12, v13, "[%s] [TCC] Presenting notification authorization onboarding: %{BOOL}d", v15, 0x12u);
    sub_100003B90(v17);

    a1 = v30;
  }

  (*(v9 + 8))(v11, v8);
  if (a3)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_11;
    }

    v22 = Strong;
    v23 = *(Strong + OBJC_IVAR____TtC6Health21WelcomeViewController_healthNotificationViewModel);
    v24 = *(Strong + OBJC_IVAR____TtC6Health21WelcomeViewController_notificationManager);
    objc_allocWithZone(type metadata accessor for HealthNotificationsWelcomeViewController(0));

    v25 = sub_100087A20(v23, v24);
    *&v25[qword_1000DDF88 + 8] = &off_1000CF8B8;
    swift_unknownObjectWeakAssign();
    v26 = [v22 navigationController];
    if (v26)
    {
      v27 = v26;
      [v26 pushViewController:v25 animated:1];
    }
  }

  else
  {
    swift_beginAccess();
    v28 = swift_unknownObjectWeakLoadStrong();
    if (!v28)
    {
      goto LABEL_11;
    }

    v22 = v28;
    sub_100072160();
  }

LABEL_11:
  if (a1)
  {
    a1();
  }
}

uint64_t sub_100072160()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007488C(0, &qword_1000DB158, &type metadata accessor for Date, &type metadata accessor for Optional);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = objc_opt_self();
  [v11 setHasCompletedBuddyWithVersion:kHKHAKeyCurrentBuddyVersion];
  if (*(v0 + OBJC_IVAR____TtC6Health21WelcomeViewController_needsHealthDetailsTile) == 1)
  {
    sub_100003DDC(0, &qword_1000DD4E0, NSUserDefaults_ptr);
    v12 = static NSUserDefaults.healthAppShared.getter();
    [v12 setBool:1 forKey:kHKHealthShowHealthDetailsTile];
  }

  [v11 setForceBuddy:{0, v19}];
  sub_10006F14C();
  Date.init()();
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  dispatch thunk of HealthWelcomeFlowSignalProvider.healthWelcomeFlowCompletionDate.setter();

  dispatch thunk of HealthWelcomeFlowSignalProvider.shouldShowHealthWelcomeFlowOnNextLaunch.setter();

  sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  aBlock[4] = sub_100074BF4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = &unk_1000CFAB8;
  v16 = _Block_copy(aBlock);
  v17 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100074E1C(&qword_1000DAD40, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007488C(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100074B84(&qword_1000DAD48, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v20 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v19);
}

void sub_100072608(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v5[4] = sub_100074BFC;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100008310;
  v5[3] = &unk_1000CFB08;
  v3 = _Block_copy(v5);
  v4 = a1;

  [v4 dismissViewControllerAnimated:1 completion:v3];
  _Block_release(v3);
}

uint64_t sub_1000726E8(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC6Health21WelcomeViewController_completionHandler);
  if (v1)
  {
    v2 = *(result + OBJC_IVAR____TtC6Health21WelcomeViewController_completionHandler + 8);

    v1(v3);

    return sub_10001A394(v1, v2);
  }

  return result;
}

id sub_100072780(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WelcomeViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000728B4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v9 = 2;
  v8[3] = type metadata accessor for AnalyticsSender();
  v8[4] = &protocol witness table for AnalyticsSender;
  v8[0] = static AnalyticsSender.shared.getter();
  sub_10004B810();
  AnalyticsSubmitting.submit(sender:)();
  sub_100003B90(v8);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v5;
  v6[5] = ObjectType;

  sub_100044CD0(sub_1000756F8, v6);
}

void sub_100072A64(void *a1)
{
  swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 profileIdentifier];
  v7 = [v6 type];

  if (v7 == 1)
  {
    static Logger.view.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315138;
      v12 = _typeName(_:qualified:)();
      v14 = sub_1000036D0(v12, v13, &v19);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "[%s] Sending notification that the primary profile name was updated", v10, 0xCu);
      sub_100003B90(v11);
    }

    (*(v3 + 8))(v5, v2);
    static NSNotificationName.primaryProfileNameWasUpdated.getter();
    v15 = objc_allocWithZone(type metadata accessor for PostNotificationOperation());
    v16 = PostNotificationOperation.init(name:userInfo:)();
    sub_100003DDC(0, &qword_1000DBC38, NSOperationQueue_ptr);
    v17 = static NSOperationQueue.userInitiated.getter();
    [v17 addOperation:v16];
  }
}

void sub_100072D1C(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.cloudSync.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v8, v9, "CloudSync buddy continued with enable cloud sync: %{BOOL}d", v10, 8u);
  }

  (*(v5 + 8))(v7, v4);
  v2[OBJC_IVAR____TtC6Health21WelcomeViewController_isCloudSyncEnabled] = a1 & 1;
  if (a1)
  {
    v2[OBJC_IVAR____TtC6Health21WelcomeViewController_needsHealthDetailsTile] = 1;
    if ((v2[OBJC_IVAR____TtC6Health21WelcomeViewController_hasSecureContainer] & 1) == 0)
    {
      v11 = swift_allocObject();
      *(v11 + 16) = v2;
      v12 = v2;
      sub_1000711E4(sub_100074BDC, v11);

      return;
    }
  }

  else
  {
    v13 = [objc_opt_self() sharedBehavior];
    if (!v13)
    {
      __break(1u);
      return;
    }

    v14 = v13;
    v15 = [v13 isiPad];

    if (v15)
    {
      v2[OBJC_IVAR____TtC6Health21WelcomeViewController_needsHealthDetailsTile] = 1;
    }
  }

  v16 = v2[OBJC_IVAR____TtC6Health21WelcomeViewController_hasSecureContainer];
  v17 = objc_allocWithZone(type metadata accessor for WelcomePrivacyInformationViewController(0));
  sub_10006BE28(v16);
  v19 = v18;
  *&v18[qword_1000DD348 + 8] = &off_1000CF900;
  swift_unknownObjectWeakAssign();
  v20 = [v2 navigationController];
  if (v20)
  {
    v21 = v20;
    [v20 pushViewController:v19 animated:1];
  }
}

void sub_100072FCC(char a1, uint64_t a2, void *a3)
{
  v5 = &off_1000D7000;
  if (a2)
  {
    swift_errorRetain();
    sub_100009630(0, &qword_1000DB730, &protocol descriptor for Error);
    sub_100003DDC(0, &unk_1000DD530, NSError_ptr);
    if (swift_dynamicCast())
    {
      v6 = [v20 underlyingErrors];
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = 0;
      v9 = *(v7 + 16);
      while (v9 != v8)
      {
        if (v8 >= *(v7 + 16))
        {
          __break(1u);
          return;
        }

        v10 = v8 + 1;
        swift_errorRetain();
        v11 = _convertErrorToNSError(_:)();
        v12 = [v11 code];

        v8 = v10;
        if (v12 == -7003)
        {

          v5 = &off_1000D7000;
          goto LABEL_11;
        }
      }

      v5 = &off_1000D7000;
      v13 = [a3 navigationController];
      if (v13)
      {
        v14 = v13;
        [v13 dismissViewControllerAnimated:1 completion:0];
      }
    }
  }

LABEL_11:
  v15 = objc_allocWithZone(type metadata accessor for WelcomePrivacyInformationViewController(0));
  sub_10006BE28(a1 & 1);
  v17 = v16;
  *&v16[qword_1000DD348 + 8] = &off_1000CF900;
  swift_unknownObjectWeakAssign();
  v18 = [a3 v5[161]];
  if (v18)
  {
    v19 = v18;
    [v18 pushViewController:v17 animated:1];
  }
}

void sub_1000731F4(void (*a1)(char *, char *, uint64_t), uint64_t a2)
{
  v3 = v2;
  v71 = a1;
  ObjectType = swift_getObjectType();
  sub_1000747EC(0);
  v6 = v5;
  __chkstk_darwin(v5);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007488C(0, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v69 - v13;
  v15 = type metadata accessor for CloudSyncRestoreState();
  v16 = *(v15 - 8);
  v73 = v15;
  v74 = v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v72 = &v69 - v20;
  sub_1000039F4(0, &qword_1000DAF58, &type metadata for Bool, &type metadata accessor for UserDefault);
  v22 = v21;
  v23 = *(v21 - 8);
  __chkstk_darwin(v21);
  v25 = &v69 - v24;
  if (qword_1000DA598 != -1)
  {
    swift_once();
  }

  v26 = sub_10005A254(v22, qword_1000DD3B0);
  (*(v23 + 16))(v25, v26, v22);
  UserDefault.wrappedValue.getter();
  (*(v23 + 8))(v25, v22);
  if (v76 != 1)
  {
    goto LABEL_6;
  }

  sub_1000748FC(a2, v14, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional, sub_10007488C);
  v28 = v73;
  v27 = v74;
  v29 = *(v74 + 48);
  if (v29(v14, 1, v73) == 1)
  {
    sub_10000EFB4(v14, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional, sub_10007488C);
LABEL_6:
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v32 = ObjectType;
    v31[4] = v30;
    v31[5] = v32;

    sub_100044CD0(sub_1000748F0, v31);

    return;
  }

  v70 = v3;
  v33 = v72;
  (*(v27 + 32))(v72, v14, v28);
  v34 = *(v6 + 48);
  sub_1000748FC(v71, v8, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional, sub_10007488C);
  v71 = *(v27 + 16);
  v71(&v8[v34], v33, v28);
  if (v29(v8, 1, v28) != 1)
  {
    sub_1000748FC(v8, v12, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional, sub_10007488C);
    v44 = *(v27 + 88);
    v45 = v44(v12, v28);
    v46 = enum case for CloudSyncRestoreState.activelyRestoring(_:);
    v47 = v70;
    if (v45 == enum case for CloudSyncRestoreState.activelyRestoring(_:))
    {
      v48 = v44(&v8[v34], v28);
      v36 = v28;
      if (v48 != enum case for CloudSyncRestoreState.failed(_:) && v48 != enum case for CloudSyncRestoreState.completed(_:))
      {
        goto LABEL_30;
      }

      sub_10000EFB4(v8, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional, sub_10007488C);
      v49 = v72;
      v71(v19, v72, v28);
      v50 = objc_allocWithZone(type metadata accessor for CloudSyncDownloadingStateViewController(0));
      v51 = sub_10005A93C(v19);
      *&v51[qword_1000DC808 + 8] = &off_1000CF8E0;
      swift_unknownObjectWeakAssign();
      v52 = [v47 navigationController];
      if (v52)
      {
        v53 = v52;
        [v52 pushViewController:v51 animated:1];

        (*(v74 + 8))(v49, v36);
        return;
      }

      (*(v74 + 8))(v49, v28);
LABEL_33:

      return;
    }

    if (v45 != enum case for CloudSyncRestoreState.failed(_:) && v45 != enum case for CloudSyncRestoreState.transientFailure(_:))
    {
      v36 = v73;
      (*(v74 + 8))(v12, v73);
      goto LABEL_30;
    }

    v54 = &v8[v34];
    v36 = v73;
    if (v44(v54, v73) != v46)
    {
LABEL_30:
      v66 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v67 = swift_allocObject();
      v67[2] = 0;
      v67[3] = 0;
      v68 = ObjectType;
      v67[4] = v66;
      v67[5] = v68;

      sub_100044CD0(sub_1000756F8, v67);

      (*(v74 + 8))(v72, v36);

      sub_100074970(v8);
      return;
    }

    sub_10000EFB4(v8, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional, sub_10007488C);
    v55 = [v47 navigationController];
    if (v55 && (v56 = v55, v57 = [v55 previousViewController], v56, v57) && (type metadata accessor for CloudSyncDownloadingViewController(0), v58 = swift_dynamicCastClass(), v57, v58))
    {
      v59 = [v47 navigationController];
      if (v59)
      {
        v60 = v59;
      }
    }

    else
    {
      v61 = *&v47[OBJC_IVAR____TtC6Health21WelcomeViewController_healthStore];
      v62 = objc_allocWithZone(type metadata accessor for CloudSyncDownloadingViewController(0));
      sub_1000861DC(v61);
      v51 = v63;
      *&v63[qword_1000DDEF8 + 8] = &off_1000CF8E0;
      swift_unknownObjectWeakAssign();
      v64 = [v47 navigationController];
      if (!v64)
      {
        (*(v74 + 8))(v72, v36);
        goto LABEL_33;
      }

      v65 = v64;
      [v64 pushViewController:v51 animated:1];
    }

    (*(v74 + 8))(v72, v36);
    return;
  }

  v35 = (*(v27 + 88))(&v8[v34], v28);
  v36 = v28;
  v37 = v70;
  if (v35 != enum case for CloudSyncRestoreState.activelyRestoring(_:))
  {
    goto LABEL_30;
  }

  v38 = *&v70[OBJC_IVAR____TtC6Health21WelcomeViewController_healthStore];
  v39 = objc_allocWithZone(type metadata accessor for CloudSyncDownloadingViewController(0));
  sub_1000861DC(v38);
  v41 = v40;
  *&v40[qword_1000DDEF8 + 8] = &off_1000CF8E0;
  swift_unknownObjectWeakAssign();
  v42 = [v37 navigationController];
  if (v42)
  {
    v43 = v42;
    [v42 pushViewController:v41 animated:1];

    (*(v74 + 8))(v72, v36);
  }

  else
  {
    (*(v74 + 8))(v72, v28);
  }

  sub_10000EFB4(v8, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional, sub_10007488C);
}

void sub_100073CE0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v71 = type metadata accessor for Logger();
  v3 = *(v71 - 8);
  __chkstk_darwin(v71);
  v79 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v85 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AdvertisableFeaturePostCommitWorkItem();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v63 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v70 = &v62 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v62 - v15;
  __chkstk_darwin(v14);
  v89 = &v62 - v17;
  v77 = v1;
  v18 = *&v1[OBJC_IVAR____TtC6Health21WelcomeViewController_healthStore];
  type metadata accessor for AdvertisableFeaturePostCommitWorkItemViewControllerFactory();
  swift_allocObject();
  v19 = v18;
  v66 = AdvertisableFeaturePostCommitWorkItemViewControllerFactory.init(healthStore:)();
  v21 = *(a1 + 16);
  if (!v21)
  {
    goto LABEL_19;
  }

  v80 = 0;
  v65 = 0;
  v24 = *(v9 + 16);
  v23 = v9 + 16;
  v22 = v24;
  v76 = OBJC_IVAR____TtC6Health21WelcomeViewController_deepLinkCanceler;
  v25 = (a1 + ((*(v23 + 64) + 32) & ~*(v23 + 64)));
  v26 = *(v23 + 56);
  v83 = (v23 + 72);
  v84 = v26;
  v82 = enum case for AdvertisableFeaturePostCommitWorkItem.cancelPendingHealthAppDeepLinkIfPresent(_:);
  v27 = (v23 - 8);
  v68 = (v3 + 8);
  v87 = v23;
  v74 = (v6 + 32);
  v75 = (v23 + 80);
  v73 = (v6 + 8);
  *&v20 = 136315394;
  v62 = v20;
  v81 = v5;
  v28 = v85;
  v29 = v89;
  v69 = v16;
  v86 = v24;
  v88 = v27;
  do
  {
    v30 = v8;
    v31 = v22;
    v22(v29, v25, v8);
    v31(v16, v29, v8);
    v32 = (*v83)(v16, v8);
    if (v32 == v82)
    {
      (*v75)(v16, v8);
      (*v74)(v28, v16, v5);
      v33 = v5;
      sub_1000748FC(v77 + v76, v90, &unk_1000DD110, &qword_1000DD4C0, &protocol descriptor for AppDeepLinkCanceling, sub_100055124);
      v34 = v91;
      v35 = v88;
      if (v91)
      {
        v36 = v92;
        sub_10000BFFC(v90, v91);
        v37 = *(v36 + 8);
        v38 = v36;
        v33 = v81;
        v37(v85, v34, v38);
        v28 = v85;
        (*v73)(v85, v33);
        v29 = v89;
        (*v35)(v89, v8);
        sub_100003B90(v90);
      }

      else
      {
        (*v73)(v28, v5);
        v29 = v89;
        (*v35)(v89, v8);
        sub_10000EFB4(v90, &unk_1000DD110, &qword_1000DD4C0, &protocol descriptor for AppDeepLinkCanceling, sub_100055124);
      }

      v5 = v33;
    }

    else
    {
      v39 = v88;
      if (v80)
      {
        v78 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        static Logger.advertisableFeatures.getter();
        v40 = v70;
        v41 = v86;
        v86(v70, v89, v8);
        v42 = Logger.logObject.getter();
        v72 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v42, v72))
        {
          v43 = swift_slowAlloc();
          v67 = v42;
          v44 = v43;
          v90[0] = swift_slowAlloc();
          *v44 = v62;
          v45 = _typeName(_:qualified:)();
          v47 = sub_1000036D0(v45, v46, v90);

          *(v44 + 4) = v47;
          *(v44 + 12) = 2080;
          v41(v63, v40, v30);
          v48 = String.init<A>(describing:)();
          v50 = v49;
          v51 = *v88;
          (*v88)(v40, v30);
          v52 = sub_1000036D0(v48, v50, v90);
          v8 = v30;

          *(v44 + 14) = v52;
          v53 = v67;
          _os_log_impl(&_mh_execute_header, v67, v72, "[%s] Attempted to make view controller for %s but no already created a different view controller", v44, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v51 = *v39;
          (*v39)(v40, v8);
        }

        (*v68)(v79, v71);
        v51(v89, v30);
        v16 = v69;
      }

      else
      {
        v54 = v89;
        v80 = dispatch thunk of AdvertisableFeaturePostCommitWorkItemViewControllerFactory.makeViewController(for:)();
        v65 = v55;
        v51 = *v39;
        v56 = v54;
        v8 = v30;
        (*v39)(v56, v30);
      }

      v51(v16, v8);
      v5 = v81;
      v28 = v85;
      v29 = v89;
    }

    v25 += v84;
    --v21;
    v22 = v86;
  }

  while (v21);
  v57 = v80;
  if (v80)
  {
    swift_getObjectType();
    sub_100074E1C(&unk_1000DD4B0, v58, type metadata accessor for WelcomeViewController, &unk_1000B0408);
    v59 = v77;
    swift_unknownObjectRetain();
    dispatch thunk of AdvertisableFeaturePostCommitWorkItemViewController.navigationDelegate.setter();
    v60 = [v59 navigationController];
    if (v60)
    {
      v61 = v60;
      [v60 pushViewController:v57 animated:1];

      return;
    }
  }

  else
  {
LABEL_19:
    sub_100072160();
  }
}

id sub_1000745A0()
{
  v0 = type metadata accessor for MicaAnimationView.Animation();
  sub_1000749DC(v0, qword_1000E3EB8);
  sub_10005A254(v0, qword_1000E3EB8);
  return sub_1000745EC();
}

id sub_1000745EC()
{
  v0 = type metadata accessor for MicaAnimationView.Animation.AnimationStateWithDuration();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v5 = result;
    [result isiPad];

    type metadata accessor for WelcomeViewController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    *v3 = xmmword_1000B03D0;
    (*(v1 + 104))(v3, enum case for MicaAnimationView.Animation.AnimationStateWithDuration.one(_:), v0);
    return MicaAnimationView.Animation.init(name:bundle:supportsDarkMode:supportsRightToLeft:supportsNumberingSystems:supportsPad:maxStateWithDurations:maxLoopCount:initialDelay:restartLoopDuration:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000747C0()
{
  v0 = HKPreferredRegulatoryDomainProvider();

  return v0;
}

void sub_1000747EC(uint64_t a1)
{
  if (!qword_1000DD4C8)
  {
    sub_10007488C(255, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional);
    type metadata accessor for CloudSyncRestoreState();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000DD4C8);
    }
  }
}

void sub_10007488C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000748FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_100074970(uint64_t a1)
{
  sub_1000747EC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_1000749DC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id sub_100074A40(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(a1 + 8))
  {
    result = 0;
  }

  else
  {
    result = [*a1 accountSupportsSecureContainer];
  }

  *(v2 + OBJC_IVAR____TtC6Health21WelcomeViewController_hasSecureContainer) = result;
  return result;
}

void sub_100074A8C(uint64_t a1)
{
  if (!qword_1000DD4F8)
  {
    sub_100074AF4(255);
    v1 = type metadata accessor for AnyPublisher();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DD4F8);
    }
  }
}

void sub_100074AF4(uint64_t a1)
{
  if (!qword_1000DD500)
  {
    sub_100003DDC(255, &unk_1000DD508, HKCloudSyncObserverStatus_ptr);
    sub_100009630(255, &qword_1000DB730, &protocol descriptor for Error);
    v1 = type metadata accessor for Result();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DD500);
    }
  }
}

uint64_t sub_100074B84(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10007488C(255, a2, a3, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100074C3C(uint64_t a1)
{
  if (!qword_1000DD558)
  {
    sub_100074A8C(255);
    sub_100074E1C(&qword_1000DD518, 255, sub_100074A8C, &protocol conformance descriptor for AnyPublisher<A, B>);
    v1 = type metadata accessor for Publishers.First();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DD558);
    }
  }
}

void sub_100074CD4(uint64_t a1)
{
  if (!qword_1000DD560)
  {
    sub_100074C3C(255);
    sub_100003DDC(255, &qword_1000DBAE0, OS_dispatch_queue_ptr);
    sub_100074E1C(&qword_1000DD568, 255, sub_100074C3C, &protocol conformance descriptor for Publishers.First<A>);
    sub_100074DA4();
    v1 = type metadata accessor for Publishers.ReceiveOn();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DD560);
    }
  }
}

unint64_t sub_100074DA4()
{
  result = qword_1000DD570;
  if (!qword_1000DD570)
  {
    sub_100003DDC(255, &qword_1000DBAE0, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD570);
  }

  return result;
}

uint64_t sub_100074E1C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100074E64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000748FC(a2, v16, &unk_1000DD110, &qword_1000DD4C0, &protocol descriptor for AppDeepLinkCanceling, sub_100055124);
  v7 = objc_allocWithZone(type metadata accessor for WelcomeViewController());
  v8 = sub_10006F2C4(v16);
  v9 = &v8[OBJC_IVAR____TtC6Health21WelcomeViewController_completionHandler];
  v10 = *&v8[OBJC_IVAR____TtC6Health21WelcomeViewController_completionHandler];
  v11 = *&v8[OBJC_IVAR____TtC6Health21WelcomeViewController_completionHandler + 8];
  *v9 = a3;
  *(v9 + 1) = a4;
  sub_100044630(a3, a4);
  sub_10001A394(v10, v11);
  v12 = [objc_allocWithZone(OBNavigationController) initWithRootViewController:v8];
  [v12 setModalInPresentation:1];
  [a1 presentViewController:v12 animated:1 completion:0];
  v13 = type metadata accessor for AnalyticsSender();
  v14 = static AnalyticsSender.shared.getter();
  v16[3] = v13;
  v16[4] = &protocol witness table for AnalyticsSender;
  v16[0] = v14;
  sub_10004B810();
  AnalyticsSubmitting.submit(sender:)();

  return sub_100003B90(v16);
}

void sub_100074FCC()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v34 - v7;
  if (v0[OBJC_IVAR____TtC6Health21WelcomeViewController_noAccountPresentOrManaged] == 1 || (v9 = [objc_allocWithZone(_HKBehavior) init], v10 = objc_msgSend(v9, "isiPad"), v9, !v10))
  {

    sub_100071A74();
  }

  else
  {
    v34 = v0;
    if (v0[OBJC_IVAR____TtC6Health21WelcomeViewController_isCloudSyncEnabled] == 1)
    {
      static Logger.view.getter();
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v35 = v14;
        *v13 = 136315138;
        v15 = _typeName(_:qualified:)();
        v17 = sub_1000036D0(v15, v16, &v35);

        *(v13 + 4) = v17;
        _os_log_impl(&_mh_execute_header, v11, v12, "[%s] cloudsync is enabled, showing the data downloading vc", v13, 0xCu);
        sub_100003B90(v14);
      }

      (*(v3 + 8))(v8, v2);
      v18 = v34;
      v19 = *&v34[OBJC_IVAR____TtC6Health21WelcomeViewController_healthStore];
      v20 = objc_allocWithZone(type metadata accessor for CloudSyncDownloadingViewController(0));
      sub_1000861DC(v19);
      v22 = v21;
      *&v21[qword_1000DDEF8 + 8] = &off_1000CF8E0;
      swift_unknownObjectWeakAssign();
      v23 = [v18 navigationController];
      if (v23)
      {
        v24 = v23;
        [v23 pushViewController:v22 animated:1];
      }
    }

    else
    {
      static Logger.view.getter();
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v35 = v28;
        *v27 = 136315138;
        v29 = _typeName(_:qualified:)();
        v31 = sub_1000036D0(v29, v30, &v35);

        *(v27 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v25, v26, "[%s] cloudsync is disabled, skipping to the notifications or complete vc", v27, 0xCu);
        sub_100003B90(v28);
      }

      (*(v3 + 8))(v6, v2);
      v32 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v33 = swift_allocObject();
      v33[2] = 0;
      v33[3] = 0;
      v33[4] = v32;
      v33[5] = ObjectType;

      sub_100044CD0(sub_1000756F8, v33);
    }
  }
}

void sub_100075434()
{
  v1 = v0;
  v2 = type metadata accessor for ScaleMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MicaAnimationView.Animation();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC6Health21WelcomeViewController_animationView;
  if (qword_1000DA5A0 != -1)
  {
    swift_once();
  }

  v11 = sub_10005A254(v6, qword_1000E3EB8);
  (*(v7 + 16))(v9, v11, v6);
  (*(v3 + 104))(v5, enum case for ScaleMode.fit(_:), v2);
  v12 = objc_allocWithZone(type metadata accessor for MicaAnimationView());
  *(v1 + v10) = MicaAnimationView.init(animation:inset:scaleMode:)();
  v13 = (v1 + OBJC_IVAR____TtC6Health21WelcomeViewController_completionHandler);
  *v13 = 0;
  v13[1] = 0;
  *(v1 + OBJC_IVAR____TtC6Health21WelcomeViewController____lazy_storage___signalProvider) = 0;
  *(v1 + OBJC_IVAR____TtC6Health21WelcomeViewController_isCloudSyncEnabled) = 0;
  *(v1 + OBJC_IVAR____TtC6Health21WelcomeViewController_noAccountPresentOrManaged) = 0;
  *(v1 + OBJC_IVAR____TtC6Health21WelcomeViewController_hasSecureContainer) = 0;
  *(v1 + OBJC_IVAR____TtC6Health21WelcomeViewController_cancellables) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC6Health21WelcomeViewController_needsHealthDetailsTile) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000756A0()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t type metadata accessor for ProfileDataSource(uint64_t a1)
{
  result = qword_1000DD588;
  if (!qword_1000DD588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100075798(void *a1, char a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v28[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (a2 == 1)
    {
      v9 = v6;
      v10 = objc_opt_self();
      v11 = [v10 healthSettingsMedicalIDSpecifier];
      if (!v11)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = String._bridgeToObjectiveC()();
      }

      v12 = [v10 internalHealthSettingsURLTo:v11];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = [objc_opt_self() defaultWorkspace];
      if (v13)
      {
        v15 = v13;
        URL._bridgeToObjectiveC()(v14);
        v17 = v16;
        sub_1000689C0(_swiftEmptyArrayStorage);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v15 openSensitiveURL:v17 withOptions:isa];
      }

      (*(v5 + 8))(v8, v9);
    }

    else
    {
      [objc_allocWithZone(HKHealthStore) init];
      v24 = objc_allocWithZone(type metadata accessor for HealthDetailsViewController());
      v25 = HealthDetailsViewController.init(healthStore:inEditMode:)();
      v27 = [objc_allocWithZone(HKModalNavigationController) initWithRootViewController:v25];
      [a1 presentViewController:v27 animated:1 completion:0];

      v26 = v27;
    }
  }

  else
  {
    v19 = [objc_allocWithZone(HKHealthStore) init];
    v20 = type metadata accessor for PinnedContentManager();
    v21 = v19;
    v22 = PinnedContentManager.__allocating_init(healthStore:domain:)();
    type metadata accessor for ProfileViewController();
    v28[3] = v20;
    v28[4] = &protocol witness table for PinnedContentManager;
    v28[0] = v22;

    v23 = static ProfileViewController.makeProfileNavigationController(healthStore:pinnedContentManager:configurator:)();
    sub_100003B90(v28);
    [a1 presentViewController:v23 animated:1 completion:0];
  }
}

uint64_t sub_100075AF8()
{
  v52 = type metadata accessor for SectionedDataSourceContainerViewType();
  v0 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002FCC4(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  __chkstk_darwin(v2 - 8);
  v50 = v35 - v3;
  v49 = type metadata accessor for CellDeselectionBehavior();
  v4 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for ContentConfigurationItem();
  v6 = *(v47 - 8);
  __chkstk_darwin(v47);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for UUID();
  v9 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002FCC4(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for _ContiguousArrayStorage);
  v11 = *(type metadata accessor for ArrayDataSourceSection() - 8);
  v35[1] = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1000AE100;
  v60 = _swiftEmptyArrayStorage;
  sub_10007C55C(0, 3, 0);
  v12 = v60;
  v13 = objc_opt_self();
  v14 = 0;
  v45 = 0x80000001000A8FB0;
  v46 = v13;
  v44 = 0x80000001000A8FD0;
  v53 = (v9 + 8);
  v43 = enum case for CellDeselectionBehavior.deselectOnDidSelect(_:);
  v42 = (v4 + 104);
  v41 = enum case for SectionedDataSourceContainerViewType.collectionView(_:);
  v40 = (v0 + 104);
  v39 = (v6 + 16);
  v38 = (v6 + 8);
  do
  {
    v15 = *(&off_1000CC1B8 + v14 + 32);
    *(swift_allocObject() + 16) = v15;
    v16 = v54;
    UUID.init()();
    UUID.uuidString.getter();
    v37 = *v53;
    v37(v16, v55);
    v58 = type metadata accessor for UIListContentConfiguration();
    v59 = &protocol witness table for UIListContentConfiguration;
    sub_10000AD4C(&v57);
    static UIListContentConfiguration.cell()();

    UIListContentConfiguration.text.setter();
    v17 = [v46 tintColor];
    v18 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v18(v56, 0);

    v20 = v48;
    v19 = v49;
    *v48 = 1;
    (*v42)(v20, v43, v19);
    v21 = type metadata accessor for UIBackgroundConfiguration();
    (*(*(v21 - 8) + 56))(v50, 1, 1, v21);
    (*v40)(v51, v41, v52);
    ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();
    v60 = v12;
    v23 = v12[2];
    v22 = v12[3];
    if (v23 >= v22 >> 1)
    {
      sub_10007C55C((v22 > 1), v23 + 1, 1);
    }

    ++v14;
    v24 = v47;
    v58 = v47;
    v59 = sub_100076500(&unk_1000DAC10, &type metadata accessor for ContentConfigurationItem, &protocol conformance descriptor for ContentConfigurationItem);
    v25 = sub_10000AD4C(&v57);
    (*v39)(v25, v8, v24);
    v12 = v60;
    v60[2] = v23 + 1;
    sub_100014D24(&v57, &v12[5 * v23 + 4]);
    (*v38)(v8, v24);
  }

  while (v14 != 3);
  v26 = v54;
  UUID.init()();
  UUID.uuidString.getter();
  v27 = v55;
  v28 = v37;
  v37(v26, v55);
  ArrayDataSourceSection.init(title:arrangedItems:identifier:)();
  *&v57 = 0x3C53447961727241;
  *(&v57 + 1) = 0xE800000000000000;
  UUID.init()();
  v29 = UUID.uuidString.getter();
  v31 = v30;
  v28(v26, v27);
  v32._countAndFlagsBits = v29;
  v32._object = v31;
  String.append(_:)(v32);

  v33._countAndFlagsBits = 62;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);
  return ArrayDataSource.init(arrangedSections:identifier:)();
}

uint64_t sub_100076474(uint64_t a1)
{
  *(a1 + 8) = sub_100076500(&qword_1000DD5D8, type metadata accessor for ProfileDataSource, &unk_1000B04F0);
  result = sub_100076500(&qword_1000DD5E0, type metadata accessor for ProfileDataSource, &unk_1000B0520);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_100076500(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for InternalSettingsAllDataTypeDetailViewsDataSource(uint64_t a1)
{
  result = qword_1000DD5E8;
  if (!qword_1000DD5E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1000765D4(unint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v48 = a3;
  v47 = type metadata accessor for CellDeselectionBehavior();
  v7 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for ContentConfigurationItem();
  v49 = *(v45 - 8);
  __chkstk_darwin(v45);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v12 = _swiftEmptyArrayStorage;
    if (!i)
    {
      return v12;
    }

    v54 = _swiftEmptyArrayStorage;
    result = sub_10007C53C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v14 = 0;
    v12 = v54;
    v43 = a2;
    v44 = a1 & 0xC000000000000001;
    v34 = v4;
    v35 = a1 & 0xFFFFFFFFFFFFFF8;
    v38 = (v7 + 8);
    v39 = (v7 + 104);
    v37 = enum case for CellDeselectionBehavior.deselectOnDidSelect(_:);
    v36 = v49 + 32;
    v41 = v10;
    v42 = a1;
    v40 = i;
    v15 = v10;
    while (!__OFADD__(v14, 1))
    {
      v50 = v14 + 1;
      if (v44)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v35 + 16))
        {
          goto LABEL_19;
        }

        v16 = *(a1 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = [v16 localization];
      v19 = [v18 displayName];

      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v52 = v20;
      v53 = v22;
      v23 = *v43;

      v24 = sub_100077B1C(v20, v22, v23);

      if (v24)
      {
        v51._countAndFlagsBits = 10272;
        v51._object = 0xE200000000000000;
        v25 = [v17 displayTypeIdentifierString];
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        v29._countAndFlagsBits = v26;
        v29._object = v28;
        String.append(_:)(v29);

        v30._countAndFlagsBits = 41;
        v30._object = 0xE100000000000000;
        String.append(_:)(v30);
        String.append(_:)(v51);
      }

      else
      {

        sub_10007979C(&v51._countAndFlagsBits, v20, v22);
      }

      a2 = swift_allocObject();
      v31 = v47;
      a2[2] = v48;
      a2[3] = v17;
      v10 = v46;
      *v46 = 1;
      (*v39)(v10, v37, v31);
      v32 = v17;
      static ContentConfigurationItem.makeDisclosureItem(text:automationIdentifier:cellSelectionHandler:deselectionBehavior:)();

      (*v38)(v10, v31);

      v54 = v12;
      v4 = v12[2];
      v33 = v12[3];
      v7 = v4 + 1;
      a1 = v42;
      if (v4 >= v33 >> 1)
      {
        sub_10007C53C((v33 > 1), v4 + 1, 1);
        v12 = v54;
      }

      v12[2] = v7;
      (*(v49 + 32))(v12 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v4, v15, v45);
      ++v14;
      if (v50 == v40)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_100076A84()
{
  v1 = *v0;
  v61 = v0;
  *&v62 = v1;
  v2 = type metadata accessor for SectionedDataSourceContainerViewType();
  v59 = *(v2 - 8);
  v60 = v2;
  __chkstk_darwin(v2);
  v58 = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100078720(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  __chkstk_darwin(v4 - 8);
  v57 = v45 - v5;
  v56 = type metadata accessor for CellDeselectionBehavior();
  v52 = *(v56 - 8);
  __chkstk_darwin(v56);
  v48 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100078720(0, &qword_1000DAEF0, &type metadata accessor for UICellAccessory.LayoutDimension, &type metadata accessor for Optional);
  __chkstk_darwin(v7 - 8);
  v9 = v45 - v8;
  v49 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UICellAccessory.DisplayedState();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UUID();
  v53 = v16;
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v19;
  v64 = type metadata accessor for ContentConfigurationItem();
  v50 = *(v64 - 8);
  v65 = v50;
  __chkstk_darwin(v64);
  v63 = v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = swift_allocObject();
  *(v46 + 16) = v62;
  UUID.init()();
  v45[1] = UUID.uuidString.getter();
  v45[0] = v21;
  v22 = *(v17 + 8);
  v54 = v17 + 8;
  v55 = v22;
  v22(v19, v16);
  v67[3] = type metadata accessor for UIListContentConfiguration();
  v67[4] = &protocol witness table for UIListContentConfiguration;
  sub_10000AD4C(v67);
  static UIListContentConfiguration.cell()();
  UIListContentConfiguration.text.setter();
  v23 = [objc_opt_self() labelColor];
  v24 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v24(v66, 0);
  sub_100078720(0, &qword_1000DAF00, &type metadata accessor for UICellAccessory, &type metadata accessor for _ContiguousArrayStorage);
  type metadata accessor for UICellAccessory();
  v25 = swift_allocObject();
  v62 = xmmword_1000AE100;
  *(v25 + 16) = xmmword_1000AE100;
  (*(v13 + 104))(v15, enum case for UICellAccessory.DisplayedState.always(_:), v12);
  v26 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
  UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
  static UICellAccessory.disclosureIndicator(displayed:options:)();
  (*(v47 + 8))(v11, v49);
  (*(v13 + 8))(v15, v12);
  (*(v52 + 104))(v48, enum case for CellDeselectionBehavior.default(_:), v56);
  v27 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v27 - 8) + 56))(v57, 1, 1, v27);
  (*(v59 + 104))(v58, enum case for SectionedDataSourceContainerViewType.collectionView(_:), v60);
  v28 = v63;
  ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();
  sub_100078720(0, &qword_1000DB6C0, &type metadata accessor for ContentConfigurationItem, &type metadata accessor for _ContiguousArrayStorage);
  v29 = v65;
  v30 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v62;
  v32 = v28;
  v33 = v64;
  (*(v29 + 16))(v31 + v30, v32, v64);
  sub_100078720(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for _ContiguousArrayStorage);
  type metadata accessor for ArrayDataSourceSection();
  *(swift_allocObject() + 16) = v62;
  sub_10009C004(v31);
  swift_setDeallocating();
  v34 = *(v29 + 8);
  v65 = v29 + 8;
  *&v62 = v34;
  v34(v31 + v30, v33);
  swift_deallocClassInstance();
  v35 = v51;
  UUID.init()();
  UUID.uuidString.getter();
  v36 = v53;
  v37 = v55;
  v55(v35, v53);
  ArrayDataSourceSection.init(title:arrangedItems:identifier:)();
  v67[0] = 0x3C53447961727241;
  v67[1] = 0xE800000000000000;
  UUID.init()();
  v38 = UUID.uuidString.getter();
  v40 = v39;
  v37(v35, v36);
  v41._countAndFlagsBits = v38;
  v41._object = v40;
  String.append(_:)(v41);

  v42._countAndFlagsBits = 62;
  v42._object = 0xE100000000000000;
  String.append(_:)(v42);
  v43 = ArrayDataSource.init(arrangedSections:identifier:)();
  (v62)(v63, v64);
  return v43;
}

void sub_1000774C4(void *a1)
{
  v4 = sub_100077544();
  v2 = [a1 navigationController];
  if (v2)
  {
    v3 = v2;
    [v2 pushViewController:v4 animated:1];
  }
}

id sub_100077544()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArrayDataSourceSection();
  v32 = *(v6 - 8);
  v33 = v6;
  __chkstk_darwin(v6);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = &_swiftEmptySetSingleton;
  v9 = sub_10007A738();
  v10 = sub_1000765D4(v9, &v37, v1);

  v31[1] = v10;
  sub_10009C004(v10);
  UUID.init()();
  UUID.uuidString.getter();
  v11 = *(v3 + 8);
  v11(v5, v2);
  v12 = v32;
  ArrayDataSourceSection.init(title:arrangedItems:identifier:)();
  sub_100078720(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for _ContiguousArrayStorage);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  v34 = xmmword_1000AE100;
  *(v14 + 16) = xmmword_1000AE100;
  v15 = v14 + v13;
  v16 = v33;
  (*(v12 + 16))(v15, v8, v33);
  v35 = 0x3C53447961727241;
  v36 = 0xE800000000000000;
  UUID.init()();
  v17 = UUID.uuidString.getter();
  v19 = v18;
  v11(v5, v2);
  v20._countAndFlagsBits = v17;
  v20._object = v19;
  String.append(_:)(v20);

  v21._countAndFlagsBits = 62;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  type metadata accessor for ArrayDataSource();
  swift_allocObject();
  ArrayDataSource.init(arrangedSections:identifier:)();
  v22 = SnapshotDataSource.withLayoutSectionProvider(collapseEmptySections:_:)();

  sub_100013E70(0);
  v23 = swift_allocObject();
  *(v23 + 16) = v34;
  v24 = sub_10007AA58(&qword_1000DD648, sub_10007AAA0, &protocol conformance descriptor for DataSourceWithLayout<A>);
  *(v23 + 32) = v22;
  *(v23 + 40) = v24;
  type metadata accessor for CompoundSectionedDataSource();
  swift_allocObject();

  CompoundSectionedDataSource.init(_:)();
  v25 = objc_allocWithZone(type metadata accessor for CompoundDataSourceCollectionViewController());

  v26 = CompoundDataSourceCollectionViewController.init(dataSource:)();
  v27 = String._bridgeToObjectiveC()();
  [v26 setTitle:v27];

  v28 = SnapshotDataSource<>.createCompositionalLayoutFromDataSource(errorHandler:)();
  result = [v26 collectionView];
  if (result)
  {
    v30 = result;

    [v30 setCollectionViewLayout:v28 animated:0];

    (*(v12 + 8))(v8, v16);

    return v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100077A08(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 localization];
  v4 = [v3 displayName];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = [v2 localization];
  v9 = [v8 displayName];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v5 == v10 && v7 == v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v14 & 1;
}

uint64_t sub_100077B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100077C14(void *a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v19[7] = *(v4 - 8);
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DataTypeDetailConfiguration.Context();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 objectType];
  UIViewController.resolvedHealthExperienceStore.getter();
  v10 = UIViewController.resolvedHealthStore.getter();
  if (v10)
  {
    v11 = v10;
    v19[4] = a1;
    v19[5] = v4;
    UIViewController.resolvedPinnedContentManager.getter();
    sub_10000ACE8(v23, v21);
    sub_10000ACE8(v22, v20);
    v12 = v11;
    DataTypeDetailConfiguration.Context.init(healthExperienceStore:healthStore:mode:pinnedContentManager:chartContext:restorationUserActivity:)();
    v13 = type metadata accessor for MainActor();
    __chkstk_darwin(v13);
    v19[-4] = v9;
    v19[-3] = v8;
    v19[-2] = a2;
    sub_10007DF1C(sub_10007AE64, &v19[-6], "Health/InternalSettingsDataTypeRoomDataSource.swift", 51, 2u, 140);

    sub_100003B90(v22);
    sub_100003B90(v23);
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    v14 = [a1 displayTypeIdentifierString];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    sub_10007AB2C(v15, v17, a2);

    return sub_100003B90(v23);
  }
}

uint64_t sub_1000780F4(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for ListLayoutConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ListLayoutConfiguration.withoutHeader.getter();
  v6 = ListLayoutConfiguration.layout(for:)();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_1000781C8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for HKTDataTypeDetailFactory();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  HKTDataTypeDetailFactory.init()();
  v9 = HKTDataTypeDetailFactory.makeViewController(hkType:context:)();
  if (!v3)
  {
    v10 = v9;
    [a3 showViewController:v9 sender:0];
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000782E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v28 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  v27 = 0xD00000000000001FLL;
  v28 = 0x80000001000A91A0;
  v13._countAndFlagsBits = a2;
  v13._object = a3;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x20726F6620;
  v14._object = 0xE500000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = a4;
  v15._object = a5;
  String.append(_:)(v15);
  v16 = objc_opt_self();
  v17 = String._bridgeToObjectiveC()();

  v18 = String._bridgeToObjectiveC()();
  v19 = [v16 hk_tapToHealthRadarURLWithTitle:v17 description:v18 classification:7 reproducibility:0 keywords:0 autoDiagnostics:0 attachments:0];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = [objc_opt_self() defaultWorkspace];
  if (v20)
  {
    v22 = v20;
    URL._bridgeToObjectiveC()(v21);
    v24 = v23;
    sub_1000689C0(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v22 openSensitiveURL:v24 withOptions:isa];
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10007869C(uint64_t a1)
{
  *(a1 + 8) = sub_10007AA58(&qword_1000DD638, type metadata accessor for InternalSettingsAllDataTypeDetailViewsDataSource, &unk_1000B05D0);
  result = sub_10007AA58(&qword_1000DD640, type metadata accessor for InternalSettingsAllDataTypeDetailViewsDataSource, &unk_1000B0600);
  *(a1 + 24) = result;
  return result;
}

void sub_100078720(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10007878C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1000341B0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100078808(v6);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_100078808(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100003DDC(0, &qword_1000DD658, HKDisplayType_ptr);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_100078AD4(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10007891C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10007891C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v28 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_6:
    v26 = v4;
    v27 = a3;
    v6 = *(v28 + 8 * a3);
    v25 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 localization];
      v11 = [v10 displayName];

      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = [v9 localization];
      v16 = [v15 displayName];

      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      if (v12 == v17 && v14 == v19)
      {

LABEL_5:
        a3 = v27 + 1;
        v4 = v26 + 8;
        v5 = v25 - 1;
        if (v27 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v28)
      {
        break;
      }

      v22 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v22;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_100078AD4(unint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = *(a3 + 8);
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_104:
    v6 = v5;
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    v4 = v8;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v101 = v4;
LABEL_107:
      v124 = v101;
      v4 = *(v101 + 2);
      if (v4 >= 2)
      {
        while (*v6)
        {
          v102 = *&v101[16 * v4];
          v103 = v101;
          v104 = *&v101[16 * v4 + 24];
          sub_10007930C((*v6 + 8 * v102), (*v6 + 8 * *&v101[16 * v4 + 16]), (*v6 + 8 * v104), v5);
          if (v119)
          {
            goto LABEL_115;
          }

          if (v104 < v102)
          {
            goto LABEL_132;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v103 = sub_100033330(v103);
          }

          if (v4 - 2 >= *(v103 + 2))
          {
            goto LABEL_133;
          }

          v105 = &v103[16 * v4];
          *v105 = v102;
          *(v105 + 1) = v104;
          v124 = v103;
          sub_1000332A4(v4 - 1);
          v101 = v124;
          v4 = *(v124 + 2);
          if (v4 <= 1)
          {
            goto LABEL_115;
          }
        }

        goto LABEL_143;
      }

LABEL_115:

      return;
    }

LABEL_139:
    v101 = sub_100033330(v4);
    goto LABEL_107;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v110 = v8;
      v4 = *v5;
      v123 = *(*v5 + 8 * v7);
      v122 = *(v4 + 8 * v9);
      v10 = v122;
      v11 = v123;
      v12 = v10;
      v120 = sub_100077A08(&v123, &v122);
      if (v119)
      {

        return;
      }

      v7 = v9 + 2;
      if (v9 + 2 >= v6)
      {
        v8 = v110;
      }

      else
      {
        v106 = v9;
        v4 += 8 * v9 + 16;
        v115 = v6;
        do
        {
          v117 = v7;
          v14 = *(v4 - 8);
          v15 = *v4;
          v16 = v14;
          v17 = [v15 localization];
          v18 = [v17 displayName];

          v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;

          v22 = [v16 localization];
          v6 = [v22 displayName];

          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;

          if (v19 == v23 && v21 == v25)
          {

            v7 = v117;
            if (v120)
            {
              v5 = a3;
              v8 = v110;
              v9 = v106;
              goto LABEL_21;
            }
          }

          else
          {
            v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v7 = v117;
            if ((v120 ^ v13))
            {
              goto LABEL_19;
            }
          }

          ++v7;
          v4 += 8;
          v6 = v115;
        }

        while (v115 != v7);
        v7 = v115;
LABEL_19:
        v8 = v110;
        v9 = v106;
      }

      v5 = a3;
      if (v120)
      {
LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_136;
        }

        if (v9 < v7)
        {
          v27 = 8 * v7 - 8;
          v28 = 8 * v9;
          v29 = v7;
          v30 = v9;
          do
          {
            if (v30 != --v29)
            {
              v32 = *v5;
              if (!*v5)
              {
                goto LABEL_142;
              }

              v31 = *&v32[v28];
              *&v32[v28] = *&v32[v27];
              *&v32[v27] = v31;
            }

            ++v30;
            v27 -= 8;
            v28 += 8;
          }

          while (v30 < v29);
        }
      }
    }

    v33 = *(v5 + 8);
    if (v7 < v33)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_135;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_51:
    if (v7 < v9)
    {
      goto LABEL_134;
    }

    v54 = v8;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v8 = v54;
    }

    else
    {
      v8 = sub_100031644(0, *(v54 + 2) + 1, 1, v54);
    }

    v4 = *(v8 + 2);
    v55 = *(v8 + 3);
    v56 = v4 + 1;
    if (v4 >= v55 >> 1)
    {
      v8 = sub_100031644((v55 > 1), v4 + 1, 1, v8);
    }

    *(v8 + 2) = v56;
    v57 = &v8[16 * v4];
    *(v57 + 4) = v9;
    *(v57 + 5) = v7;
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if (v4)
    {
      while (1)
      {
        v58 = v56 - 1;
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v59 = *(v8 + 4);
          v60 = *(v8 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_71:
          if (v62)
          {
            goto LABEL_123;
          }

          v75 = &v8[16 * v56];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_126;
          }

          v81 = &v8[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_129;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_130;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v56 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        v85 = &v8[16 * v56];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_85:
        if (v80)
        {
          goto LABEL_125;
        }

        v88 = &v8[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_128;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_92:
        v4 = v58 - 1;
        if (v58 - 1 >= v56)
        {
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*v5)
        {
          goto LABEL_141;
        }

        v96 = v7;
        v97 = v8;
        v98 = *&v8[16 * v4 + 32];
        v99 = *&v8[16 * v58 + 40];
        sub_10007930C((*v5 + 8 * v98), (*v5 + 8 * *&v8[16 * v58 + 32]), (*v5 + 8 * v99), v6);
        if (v119)
        {
          goto LABEL_115;
        }

        if (v99 < v98)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_100033330(v97);
        }

        if (v4 >= *(v97 + 2))
        {
          goto LABEL_120;
        }

        v100 = &v97[16 * v4];
        *(v100 + 4) = v98;
        *(v100 + 5) = v99;
        v124 = v97;
        sub_1000332A4(v58);
        v8 = v124;
        v56 = *(v124 + 2);
        v7 = v96;
        if (v56 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v8[16 * v56 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_121;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_122;
      }

      v70 = &v8[16 * v56];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_124;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_127;
      }

      if (v74 >= v66)
      {
        v92 = &v8[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_131;
        }

        if (v61 < v95)
        {
          v58 = v56 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_71;
    }

LABEL_3:
    v6 = *(v5 + 8);
    if (v7 >= v6)
    {
      goto LABEL_104;
    }
  }

  v34 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_137;
  }

  if (v34 >= v33)
  {
    v34 = *(v5 + 8);
  }

  if (v34 < v9)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v7 == v34)
  {
    goto LABEL_51;
  }

  v111 = v8;
  v121 = *v5;
  v4 = *v5 + 8 * v7 - 8;
  v107 = v9;
  v35 = v9 - v7;
  v113 = v34;
LABEL_40:
  v116 = v4;
  v118 = v7;
  v36 = v121[v7];
  v114 = v35;
  v37 = v35;
  while (1)
  {
    v38 = *v4;
    v39 = v36;
    v6 = v38;
    v40 = [v39 localization];
    v41 = [v40 displayName];

    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = [v6 localization];
    v46 = [v45 displayName];

    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    if (v42 == v47 && v44 == v49)
    {

LABEL_39:
      v7 = v118 + 1;
      v4 = v116 + 8;
      v35 = v114 - 1;
      if (v118 + 1 == v113)
      {
        v7 = v113;
        v5 = a3;
        v8 = v111;
        v9 = v107;
        goto LABEL_51;
      }

      goto LABEL_40;
    }

    v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v51 & 1) == 0)
    {
      goto LABEL_39;
    }

    if (!v121)
    {
      break;
    }

    v52 = *v4;
    v36 = *(v4 + 8);
    *v4 = v36;
    *(v4 + 8) = v52;
    v4 -= 8;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}

uint64_t sub_10007930C(void **__dst, void **a2, char *a3, void **__src)
{
  v4 = a3;
  v5 = a2 - __dst;
  v6 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v6 = a2 - __dst;
  }

  v7 = v6 >> 3;
  v8 = a3 - a2;
  v9 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v9 = a3 - a2;
  }

  v10 = v9 >> 3;
  if (v7 >= v9 >> 3)
  {
    if (__src != a2 || &a2[v10] <= __src)
    {
      v32 = a2;
      v33 = __src;
      memmove(__src, a2, 8 * v10);
      __src = v33;
      a2 = v32;
    }

    v62 = &__src[v10];
    v12 = __src;
    if (v8 >= 8 && a2 > __dst)
    {
      v61 = __src;
LABEL_31:
      v59 = a2;
      v34 = a2 - 1;
      v35 = v4;
      v36 = v62;
      v55 = a2 - 1;
      do
      {
        v37 = *(v36 - 1);
        v36 -= 8;
        v38 = *v34;
        v39 = v37;
        v40 = v38;
        v41 = [v39 localization];
        v42 = [v41 displayName];

        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        v57 = v40;
        v46 = [v40 localization];
        v47 = [v46 displayName];

        v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v49;

        if (v43 == v48 && v45 == v50)
        {

          v4 = v35 - 8;
        }

        else
        {
          v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v4 = v35 - 8;
          if (v52)
          {
            if (v35 != v59)
            {
              *v4 = *v55;
            }

            v12 = v61;
            if (v62 <= v61 || (a2 = v55, v55 <= __dst))
            {
              a2 = v55;
              goto LABEL_48;
            }

            goto LABEL_31;
          }
        }

        v34 = v55;
        if (v62 != v35)
        {
          *v4 = *v36;
        }

        v62 = v36;
        v35 = v4;
      }

      while (v36 > v61);
      v62 = v36;
      a2 = v59;
      v12 = v61;
    }
  }

  else
  {
    v11 = a2;
    v12 = __src;
    v13 = __dst;
    if (__src != __dst || &__dst[v7] <= __src)
    {
      memmove(__src, __dst, 8 * v7);
    }

    v62 = &v12[v7];
    if (v5 >= 8 && v11 < v4)
    {
      v14 = v11;
      v56 = v4;
      while (1)
      {
        v58 = v14;
        v60 = v12;
        v15 = *v12;
        v16 = *v14;
        v17 = v15;
        v18 = [v16 localization];
        v19 = [v18 displayName];

        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v23 = [v17 localization];
        v24 = [v23 displayName];

        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        if (v20 == v25 && v22 == v27)
        {
          break;
        }

        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v29 & 1) == 0)
        {
          goto LABEL_20;
        }

        v30 = v56;
        v31 = v58;
        v14 = v58 + 1;
        if (v13 != v58)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v13;
        if (v12 >= v62 || v14 >= v30)
        {
          goto LABEL_24;
        }
      }

LABEL_20:
      v14 = v58;
      v31 = v12++;
      v30 = v56;
      if (v13 == v60)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v13 = *v31;
      goto LABEL_22;
    }

LABEL_24:
    a2 = v13;
  }

LABEL_48:
  if (a2 != v12 || a2 >= (v12 + ((v62 - v12 + (v62 - v12 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v12, 8 * ((v62 - v12) / 8));
  }

  return 1;
}

uint64_t sub_10007979C(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1000798EC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_1000798EC(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100055EB4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100079A6C();
      goto LABEL_16;
    }

    sub_100079D14(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100079A6C()
{
  v1 = v0;
  sub_10005723C();
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_100079BBC()
{
  v1 = v0;
  sub_10007AEEC(0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        LOBYTE(v18) = *(v18 + 8);
        v20 = *(v4 + 48) + v17;
        *v20 = v19;
        *(v20 + 8) = v18;
        result = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

Swift::Int sub_100079D14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10005723C();
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

void *sub_100079F98(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3((v9 + 4), v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10007A068(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10007AE94(0, &qword_1000DD678, &qword_1000DD670, HKQuantityType_ptr);
          sub_10007AF9C(&qword_1000DD680, &qword_1000DD678, &qword_1000DD670, HKQuantityType_ptr);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_100054724(v13, i, a3);
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100003DDC(0, &qword_1000DD670, HKQuantityType_ptr);
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

uint64_t sub_10007A21C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10007AE94(0, &qword_1000DD690, &qword_1000DD688, HKCategoryType_ptr);
          sub_10007AF9C(&qword_1000DD698, &qword_1000DD690, &qword_1000DD688, HKCategoryType_ptr);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_100054724(v13, i, a3);
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100003DDC(0, &qword_1000DD688, HKCategoryType_ptr);
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

uint64_t sub_10007A3D0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10007AE94(0, &qword_1000DA868, &qword_1000DA870, HKNotificationInstructionDiagnosticDescription_ptr);
          sub_10007AF9C(&qword_1000DD6B0, &qword_1000DA868, &qword_1000DA870, HKNotificationInstructionDiagnosticDescription_ptr);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_100054724(v13, i, a3);
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100003DDC(0, &qword_1000DA870, HKNotificationInstructionDiagnosticDescription_ptr);
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

uint64_t sub_10007A584(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10007AE94(0, &qword_1000DD660, &qword_1000DD658, HKDisplayType_ptr);
          sub_10007AF9C(&qword_1000DD668, &qword_1000DD660, &qword_1000DD658, HKDisplayType_ptr);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1000547A4(v13, i, a3);
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100003DDC(0, &qword_1000DD658, HKDisplayType_ptr);
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

void *sub_10007A738()
{
  v0 = [objc_opt_self() builtinDisplayTypes];
  sub_100003DDC(0, &qword_1000DD658, HKDisplayType_ptr);
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (i)
    {
      v3 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v4 = *(v1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v7 = [v4 objectType];
        v8 = [v7 enabled];

        if (v8)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v3;
        if (v6 == i)
        {
          v9 = v18;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v9 = _swiftEmptyArrayStorage;
LABEL_16:

    v18 = _swiftEmptyArrayStorage;
    if ((v9 & 0x8000000000000000) == 0 && (v9 & 0x4000000000000000) == 0)
    {
      v1 = *(v9 + 16);
      if (!v1)
      {
        break;
      }

      goto LABEL_19;
    }

    v1 = _CocoaArrayWrapper.endIndex.getter();
    if (!v1)
    {
      break;
    }

LABEL_19:
    v10 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *(v9 + 16))
        {
          goto LABEL_33;
        }

        v11 = *(v9 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v14 = [v11 displayCategory];
      v15 = [v14 isMeCategory];

      if (v15)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v10;
      if (v13 == v1)
      {
        goto LABEL_29;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

LABEL_29:

  v18 = sub_100079F98(v16, sub_1000341B4, sub_10007A584);
  sub_10007878C(&v18);

  return v18;
}

uint64_t sub_10007AA58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10007AAA0(uint64_t a1)
{
  if (!qword_1000DD650)
  {
    type metadata accessor for ArrayDataSource();
    v1 = type metadata accessor for DataSourceWithLayout();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DD650);
    }
  }
}

void sub_10007AB2C(uint64_t a1, void *a2, void *a3)
{
  _StringGuts.grow(_:)(68);
  v5._countAndFlagsBits = 0xD000000000000011;
  v5._object = 0x80000001000A9110;
  String.append(_:)(v5);
  v6._countAndFlagsBits = a1;
  v6._object = a2;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0xD000000000000031;
  v7._object = 0x80000001000A9130;
  String.append(_:)(v7);
  _StringGuts.grow(_:)(46);

  v8._countAndFlagsBits = 0xD00000000000002CLL;
  v8._object = 0x80000001000A9170;
  String.append(_:)(v8);
  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();

  v11 = [objc_opt_self() alertControllerWithTitle:v9 message:v10 preferredStyle:1];

  v12 = String._bridgeToObjectiveC()();
  v13 = objc_opt_self();
  v14 = [v13 actionWithTitle:v12 style:1 handler:0];

  [v11 addAction:v14];
  v15 = swift_allocObject();
  v15[2] = 0xD00000000000001ALL;
  v15[3] = 0x80000001000A90F0;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = 0;
  v15[7] = 0xE000000000000000;

  v16 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_10007AE84;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100087848;
  aBlock[3] = &unk_1000CFD28;
  v17 = _Block_copy(aBlock);

  v18 = [v13 actionWithTitle:v16 style:0 handler:v17];
  _Block_release(v17);

  [v11 addAction:v18];
  [v11 setPreferredAction:v14];
  [a3 presentViewController:v11 animated:1 completion:0];
}

void sub_10007AE94(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_100003DDC(255, a3, a4);
    v5 = type metadata accessor for Array();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10007AEEC(uint64_t a1)
{
  if (!qword_1000DD6A0)
  {
    sub_10007AF48();
    v1 = type metadata accessor for _SetStorage();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DD6A0);
    }
  }
}

unint64_t sub_10007AF48()
{
  result = qword_1000DD6A8;
  if (!qword_1000DD6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD6A8);
  }

  return result;
}

uint64_t sub_10007AF9C(unint64_t *a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  result = *a1;
  if (!result)
  {
    sub_10007AE94(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OnboardingAnalyticsEvent(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 65287 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65287 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65287;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65287;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65287;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OnboardingAnalyticsEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65287 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65287 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 16) + 1;
    *result = a2 - 249;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10007B14C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x656D6F636C6557;
    v6 = 0xD000000000000012;
    if (a1 != 2)
    {
      v6 = 0xD000000000000013;
    }

    if (a1)
    {
      v5 = 0x6C61654872756F59;
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
    v1 = 0x5365766F72706D49;
    v2 = 0xD000000000000010;
    if (a1 != 7)
    {
      v2 = 0xD000000000000012;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000018;
    if (a1 != 4)
    {
      v3 = 0xD000000000000014;
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

Swift::Int sub_10007B29C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10004BCEC(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_10007B2EC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10004BCEC(v4, v2);
  return Hasher._finalize()();
}

unint64_t sub_10007B330@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10007C0BC(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10007B360@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10007B14C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_10007B394()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10007B408(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10007B45C@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1000CD128, *a1);

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_10007B4F8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10007C108(*a1);
  *a2 = result;
  return result;
}

void sub_10007B528(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x65756E69746E6F43;
  v5 = 0xED00006E4F206E72;
  v6 = 0x75542074276E6F44;
  if (v2 != 6)
  {
    v6 = 0x7472617453;
    v5 = 0xE500000000000000;
  }

  v7 = 0x80000001000A54C0;
  v8 = 0xD000000000000013;
  if (v2 != 4)
  {
    v8 = 0x6E4F206E727554;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB00000000776F6CLL;
  v10 = 0x6C412074276E6F44;
  if (v2 != 2)
  {
    v10 = 0x794D206572616853;
    v9 = 0xED00006174614420;
  }

  if (*v1)
  {
    v4 = 0x776F6C6C41;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_10007B644(__int16 a1)
{
  sub_10007BACC(0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6E6F69746361;
  *(inited + 16) = xmmword_1000B0650;
  *(inited + 40) = 0xE600000000000000;
  v2 = String._bridgeToObjectiveC()();

  *(inited + 48) = v2;
  *(inited + 56) = 0x747865746E6F63;
  *(inited + 64) = 0xE700000000000000;
  *(inited + 72) = String._bridgeToObjectiveC()();
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x80000001000A91E0;
  sub_10007BBD8();
  static AnalyticsTransforming.activeWatchProductTypeString()();
  v3 = String._bridgeToObjectiveC()();

  *(inited + 96) = v3;
  *(inited + 104) = 1885697139;
  *(inited + 112) = 0xE400000000000000;
  v4 = String._bridgeToObjectiveC()();

  *(inited + 120) = v4;
  v5 = sub_100068C20(inited);
  swift_setDeallocating();
  sub_10007BB24(0);
  swift_arrayDestroy();
  return v5;
}

uint64_t sub_10007B9E4()
{
  v0 = qword_1000DD6B8;

  return v0;
}

unint64_t sub_10007BA20()
{
  result = qword_1000DD6C8;
  if (!qword_1000DD6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD6C8);
  }

  return result;
}

unint64_t sub_10007BA78()
{
  result = qword_1000DD6D0;
  if (!qword_1000DD6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD6D0);
  }

  return result;
}

void sub_10007BACC(uint64_t a1)
{
  if (!qword_1000DD6D8)
  {
    sub_10007BB24(255);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DD6D8);
    }
  }
}

void sub_10007BB24(uint64_t a1)
{
  if (!qword_1000DD6E0)
  {
    sub_10007BB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000DD6E0);
    }
  }
}

unint64_t sub_10007BB8C()
{
  result = qword_1000DD140;
  if (!qword_1000DD140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DD140);
  }

  return result;
}

unint64_t sub_10007BBD8()
{
  result = qword_1000DD6E8;
  if (!qword_1000DD6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD6E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OnboardingAnalyticsEvent.Action(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OnboardingAnalyticsEvent.Action(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OnboardingAnalyticsEvent.Step(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OnboardingAnalyticsEvent.Step(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OnboardingAnalyticsEvent.Context(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for OnboardingAnalyticsEvent.Context(_WORD *result, int a2, int a3)
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

unint64_t sub_10007BFB8()
{
  result = qword_1000DD6F0;
  if (!qword_1000DD6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD6F0);
  }

  return result;
}

unint64_t sub_10007C010()
{
  result = qword_1000DD6F8;
  if (!qword_1000DD6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD6F8);
  }

  return result;
}

unint64_t sub_10007C068()
{
  result = qword_1000DD700;
  if (!qword_1000DD700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD700);
  }

  return result;
}

unint64_t sub_10007C0BC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000CCF50, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10007C108(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000CD048, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

void sub_10007C15C()
{
  v1 = v0;
  v26 = *v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v25 - v6;
  static Logger.general.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Resetting store demo mode pinned content now!", v10, 2u);
  }

  v11 = *(v3 + 8);
  v29 = v3 + 8;
  v30 = v2;
  v28 = v11;
  v11(v7, v2);
  sub_10000ACE8((v1 + 2), v32);
  sub_10000BFFC(v32, v33);
  dispatch thunk of PinnedContentManaging.unpinAll()();
  sub_100003B90(v32);
  sub_10007C5BC();
  v13 = v12;
  v14 = *(v12 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = v12 + 40;
    while (v15 < *(v13 + 16))
    {
      ++v15;
      sub_10000ACE8((v1 + 2), v32);
      sub_10000BFFC(v32, v33);

      dispatch thunk of PinnedContentManaging.pin(identifier:)();

      sub_100003B90(v32);
      v16 += 16;
      if (v14 == v15)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    v17 = v27;
    static Logger.general.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = v21;
      *v20 = 136315138;
      v32[0] = v26;
      swift_getMetatypeMetadata();
      v22 = String.init<A>(describing:)();
      v24 = sub_1000036D0(v22, v23, &v31);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "[%s]: Reset demo mode pinned content completed.", v20, 0xCu);
      sub_100003B90(v21);
    }

    v28(v17, v30);
  }
}

uint64_t sub_10007C4C0()
{
  sub_100003B90((v0 + 16));

  return swift_deallocClassInstance();
}

char *sub_10007C51C(char *a1, int64_t a2, char a3)
{
  result = sub_100031EDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10007C53C(void *a1, int64_t a2, char a3)
{
  result = sub_100031FEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10007C55C(void *a1, int64_t a2, char a3)
{
  result = sub_100032020(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10007C57C(char *a1, int64_t a2, char a3)
{
  result = sub_100032180(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10007C59C(void *a1, int64_t a2, char a3)
{
  result = sub_1000323C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_10007C5BC()
{
  v0 = objc_opt_self();
  v1 = [objc_allocWithZone(HKHealthStore) init];
  v2 = [v0 sharedInstanceForHealthStore:v1];

  if (!v2)
  {
    goto LABEL_40;
  }

  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v4 = [v2 displayTypeWithIdentifier:isa];

  if (v4)
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v5 = Int._bridgeToObjectiveC()().super.super.isa;
  v6 = [v2 displayTypeWithIdentifier:v5];

  if (v6)
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v7 = Int._bridgeToObjectiveC()().super.super.isa;
  v8 = [v2 displayTypeWithIdentifier:v7];

  if (v8)
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v9 = Int._bridgeToObjectiveC()().super.super.isa;
  v10 = [v2 displayTypeWithIdentifier:v9];

  if (v10)
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v11 = Int._bridgeToObjectiveC()().super.super.isa;
  v12 = [v2 displayTypeWithIdentifier:v11];

  if (v12)
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v13 = Int._bridgeToObjectiveC()().super.super.isa;
  v14 = [v2 displayTypeWithIdentifier:v13];

  if (v14)
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if (!(_swiftEmptyArrayStorage >> 62))
  {
    v15 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_28;
    }

LABEL_38:

    return;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  if (!v15)
  {
    goto LABEL_38;
  }

LABEL_28:
  sub_10007C57C(0, v15 & ~(v15 >> 63), 0);
  if (v15 < 0)
  {
    __break(1u);
LABEL_40:
    __break(1u);
    return;
  }

  v26 = v2;
  v16 = 0;
  do
  {
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v17 = _swiftEmptyArrayStorage[v16 + 4];
    }

    v18 = v17;
    v19 = [v17 objectType];
    v20 = HKObjectType.pinnedContentIdentifier.getter();
    v22 = v21;

    v24 = _swiftEmptyArrayStorage[2];
    v23 = _swiftEmptyArrayStorage[3];
    if (v24 >= v23 >> 1)
    {
      sub_10007C57C((v23 > 1), v24 + 1, 1);
    }

    ++v16;
    _swiftEmptyArrayStorage[2] = v24 + 1;
    v25 = &_swiftEmptyArrayStorage[2 * v24];
    v25[4] = v20;
    v25[5] = v22;
  }

  while (v15 != v16);
}

id sub_10007CAB8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = &v3[OBJC_IVAR____TtC6Health30CloudSyncWelcomeViewController_delegate];
  *&v3[OBJC_IVAR____TtC6Health30CloudSyncWelcomeViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = [objc_allocWithZone(HKCloudSyncControl) initWithHealthStore:a1];
  *&v3[OBJC_IVAR____TtC6Health30CloudSyncWelcomeViewController_cloudSyncControl] = v9;
  *(v8 + 1) = a3;
  swift_unknownObjectWeakAssign();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v10 = String._bridgeToObjectiveC()();

  v11 = String._bridgeToObjectiveC()();

  v34.receiver = v3;
  v34.super_class = type metadata accessor for CloudSyncWelcomeViewController();
  v12 = objc_msgSendSuper2(&v34, "initWithTitle:detailText:icon:contentLayout:", v10, v11, 0, 2);

  v13 = v12;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v14 = [objc_opt_self() boldButton];
  [v14 addTarget:v13 action:"didTapEnableCloudSync:" forControlEvents:64];
  v15 = String._bridgeToObjectiveC()();

  [v14 setTitle:v15 forState:0];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v16 = [objc_opt_self() linkButton];
  [v16 addTarget:v13 action:"didTapDisableCloudSync:" forControlEvents:64];

  v17 = String._bridgeToObjectiveC()();

  [v16 setTitle:v17 forState:0];

  sub_1000157F8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AED70;
  *(inited + 32) = v14;
  *(inited + 40) = v16;
  v19 = v14;
  v33 = v16;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_9;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

  for (i = v19; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v21 = i;
    v22 = [v13 buttonTray];
    [v22 addButton:v21];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v23 = *(inited + 40);
      goto LABEL_7;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    ;
  }

  v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
  v24 = v23;
  v25 = [v13 buttonTray];
  [v25 addButton:v24];

  swift_setDeallocating();
  swift_arrayDestroy();
  v26 = v19;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v28 = HKUIJoinStringsForAutomationIdentifier();

  [v26 setAccessibilityIdentifier:v28];
  v29 = v33;
  v30 = Array._bridgeToObjectiveC()().super.isa;
  v31 = HKUIJoinStringsForAutomationIdentifier();

  [v29 setAccessibilityIdentifier:v31];
  swift_unknownObjectRelease();

  return v13;
}

uint64_t sub_10007D11C()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Health30CloudSyncWelcomeViewController_cloudSyncControl);
  v8 = sub_10007D248;
  v9 = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000099BC;
  v7 = &unk_1000CFFC0;
  v2 = _Block_copy(aBlock);
  [v1 enableCloudSyncWithCompletion:v2];
  _Block_release(v2);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100072D1C(1);
    swift_unknownObjectRelease();
  }

  v3 = type metadata accessor for AnalyticsSender();
  v4 = static AnalyticsSender.shared.getter();
  v7 = v3;
  v8 = &protocol witness table for AnalyticsSender;
  aBlock[0] = v4;
  sub_10004B810();
  AnalyticsSubmitting.submit(sender:)();
  return sub_100003B90(aBlock);
}

uint64_t sub_10007D26C()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Health30CloudSyncWelcomeViewController_cloudSyncControl);
  v8 = sub_10007D398;
  v9 = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000099BC;
  v7 = &unk_1000CFF98;
  v2 = _Block_copy(aBlock);
  [v1 disableCloudSyncWithCompletion:v2];
  _Block_release(v2);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100072D1C(0);
    swift_unknownObjectRelease();
  }

  v3 = type metadata accessor for AnalyticsSender();
  v4 = static AnalyticsSender.shared.getter();
  v7 = v3;
  v8 = &protocol witness table for AnalyticsSender;
  aBlock[0] = v4;
  sub_10004B810();
  AnalyticsSubmitting.submit(sender:)();
  return sub_100003B90(aBlock);
}

uint64_t sub_10007D3A4(char a1, uint64_t a2, const char *a3, ...)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.cloudSync.getter();
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = a2;
    v19 = v13;
    *v12 = 67109378;
    *(v12 + 4) = a1 & 1;
    *(v12 + 8) = 2082;
    swift_errorRetain();
    sub_10007D710(0);
    v14 = String.init<A>(describing:)();
    v16 = sub_1000036D0(v14, v15, &v19);

    *(v12 + 10) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, a3, v12, 0x12u);
    sub_100003B90(v13);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10007D598(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  _bridgeAnyObjectToAny(_:)();
  v7 = swift_unknownObjectRelease();
  a4(v7);

  return sub_100003B90(v9);
}

id sub_10007D66C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CloudSyncWelcomeViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10007D710(uint64_t a1)
{
  if (!qword_1000DD580)
  {
    sub_100008C14();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DD580);
    }
  }
}

uint64_t sub_10007D77C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x75542074276E6F44;
    v10 = 0xED00006E4F206E72;
    if (a1 != 6)
    {
      v9 = 0x7472617453;
      v10 = 0xE500000000000000;
    }

    v11 = 0xD000000000000013;
    v12 = 0x80000001000A54C0;
    if (a1 != 4)
    {
      v11 = 0x6E4F206E727554;
      v12 = 0xE700000000000000;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x6C412074276E6F44;
    v5 = 0xEB00000000776F6CLL;
    if (a1 != 2)
    {
      v4 = 0x794D206572616853;
      v5 = 0xED00006174614420;
    }

    v6 = 0x776F6C6C41;
    if (a1)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v6 = 0x65756E69746E6F43;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v13 = 0xE500000000000000;
        if (v7 != 0x776F6C6C41)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xE800000000000000;
        if (v7 != 0x65756E69746E6F43)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_45;
    }

    if (a2 == 2)
    {
      v13 = 0xEB00000000776F6CLL;
      if (v7 != 0x6C412074276E6F44)
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    }

    v14 = 0x794D206572616853;
    v15 = 0x6174614420;
LABEL_42:
    v13 = v15 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
    if (v7 != v14)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v13 = 0x80000001000A54C0;
      if (v7 != 0xD000000000000013)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v7 != 0x6E4F206E727554)
      {
        goto LABEL_47;
      }
    }

    goto LABEL_45;
  }

  if (a2 == 6)
  {
    v14 = 0x75542074276E6F44;
    v15 = 0x6E4F206E72;
    goto LABEL_42;
  }

  v13 = 0xE500000000000000;
  if (v7 != 0x7472617453)
  {
LABEL_47:
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_48;
  }

LABEL_45:
  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v16 = 1;
LABEL_48:

  return v16 & 1;
}

uint64_t sub_10007DA20(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v10 = 0xE700000000000000;
    v11 = 0x80000001000A53D0;
    if (a1 == 2)
    {
      v12 = 0xD000000000000012;
    }

    else
    {
      v12 = 0xD000000000000013;
    }

    if (a1 != 2)
    {
      v11 = 0x80000001000A53F0;
    }

    v13 = 0x6C61654872756F59;
    if (a1)
    {
      v10 = 0xEE00617461446874;
    }

    else
    {
      v13 = 0x656D6F636C6557;
    }

    if (a1 <= 1u)
    {
      v8 = v13;
    }

    else
    {
      v8 = v12;
    }

    if (v2 <= 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    v3 = 0x5365766F72706D49;
    v4 = 0x80000001000A5460;
    v5 = 0xD000000000000010;
    if (a1 != 7)
    {
      v5 = 0xD000000000000012;
      v4 = 0x80000001000A5480;
    }

    if (a1 == 6)
    {
      v4 = 0xED00007974656661;
    }

    else
    {
      v3 = v5;
    }

    v6 = 0x80000001000A5410;
    v7 = 0xD000000000000018;
    if (a1 != 4)
    {
      v7 = 0xD000000000000014;
      v6 = 0x80000001000A5430;
    }

    if (a1 <= 5u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v3;
    }

    if (v2 <= 5)
    {
      v9 = v6;
    }

    else
    {
      v9 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v14 = 0xEE00617461446874;
        if (v8 != 0x6C61654872756F59)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v14 = 0xE700000000000000;
        if (v8 != 0x656D6F636C6557)
        {
          goto LABEL_56;
        }
      }

      goto LABEL_54;
    }

    if (a2 != 2)
    {
      v14 = 0x80000001000A53F0;
      if (v8 != 0xD000000000000013)
      {
        goto LABEL_56;
      }

      goto LABEL_54;
    }

    v15 = "SetUpHealthDetails";
    goto LABEL_51;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v14 = 0xED00007974656661;
      if (v8 != 0x5365766F72706D49)
      {
        goto LABEL_56;
      }

      goto LABEL_54;
    }

    if (a2 == 7)
    {
      v14 = 0x80000001000A5460;
      if (v8 != 0xD000000000000010)
      {
        goto LABEL_56;
      }

      goto LABEL_54;
    }

    v15 = "CloudSyncTurnedOff";
LABEL_51:
    v14 = (v15 - 32) | 0x8000000000000000;
    if (v8 != 0xD000000000000012)
    {
      goto LABEL_56;
    }

    goto LABEL_54;
  }

  if (a2 == 4)
  {
    v14 = 0x80000001000A5410;
    if (v8 != 0xD000000000000018)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v14 = 0x80000001000A5430;
    if (v8 != 0xD000000000000014)
    {
LABEL_56:
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_57;
    }
  }

LABEL_54:
  if (v9 != v14)
  {
    goto LABEL_56;
  }

  v16 = 1;
LABEL_57:

  return v16 & 1;
}

uint64_t sub_10007DCF8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE006574656C706DLL;
  v3 = a1;
  if (a1 <= 2u)
  {
    v10 = 0x80000001000A5160;
    v11 = 0xD000000000000026;
    if (a1 == 1)
    {
      v11 = 0xD000000000000023;
    }

    else
    {
      v10 = 0x80000001000A5190;
    }

    if (a1)
    {
      v8 = v11;
    }

    else
    {
      v8 = 0xD000000000000013;
    }

    if (v3)
    {
      v9 = v10;
    }

    else
    {
      v9 = 0x80000001000A5140;
    }
  }

  else
  {
    v4 = 0x80000001000A5230;
    v5 = 0xD000000000000017;
    if (a1 == 5)
    {
      v5 = 0x6F636E4920444545;
      v4 = 0xEE006574656C706DLL;
    }

    v6 = 0x80000001000A51C0;
    v7 = 0xD000000000000021;
    if (a1 == 3)
    {
      v7 = 0xD000000000000023;
    }

    else
    {
      v6 = 0x80000001000A51F0;
    }

    if (a1 <= 4u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    if (v3 <= 4)
    {
      v9 = v6;
    }

    else
    {
      v9 = v4;
    }
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v2 = 0x80000001000A5140;
      if (v8 != 0xD000000000000013)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    if (a2 != 1)
    {
      v2 = 0x80000001000A5190;
      if (v8 != 0xD000000000000026)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    v12 = "Article Highlight Alert Read States";
    goto LABEL_29;
  }

  if (a2 <= 4u)
  {
    if (a2 != 3)
    {
      v2 = 0x80000001000A51F0;
      if (v8 != 0xD000000000000021)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    v12 = "Health Checklist Update Last Viewed";
LABEL_29:
    v2 = (v12 - 32) | 0x8000000000000000;
    if (v8 != 0xD000000000000023)
    {
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  if (a2 == 5)
  {
    if (v8 != 0x6F636E4920444545)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v2 = 0x80000001000A5230;
    if (v8 != 0xD000000000000017)
    {
LABEL_43:
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_44;
    }
  }

LABEL_41:
  if (v9 != v2)
  {
    goto LABEL_43;
  }

  v13 = 1;
LABEL_44:

  return v13 & 1;
}

uint64_t sub_10007DF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_10008082C();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    v12._object = 0x80000001000A9510;
    v12._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v12);
    v13._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v13);

    v14._countAndFlagsBits = 46;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for BuddyDataSource(uint64_t a1)
{
  result = qword_1000DD950;
  if (!qword_1000DD950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007E160()
{
  v104 = type metadata accessor for SectionedDataSourceContainerViewType();
  v113 = *(v104 - 8);
  __chkstk_darwin(v104);
  v103 = &v73 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100080888(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  __chkstk_darwin(v2 - 8);
  v102 = &v73 - v3;
  v101 = type metadata accessor for CellDeselectionBehavior();
  v112 = *(v101 - 8);
  __chkstk_darwin(v101);
  v100 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100080888(0, &qword_1000DAEF0, &type metadata accessor for UICellAccessory.LayoutDimension, &type metadata accessor for Optional);
  __chkstk_darwin(v5 - 8);
  v85 = &v73 - v6;
  v84 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v111 = *(v84 - 8);
  __chkstk_darwin(v84);
  v83 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for UICellAccessory.DisplayedState();
  v110 = *(v82 - 8);
  __chkstk_darwin(v82);
  v81 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for UIListContentConfiguration();
  v94 = *(v99 - 8);
  __chkstk_darwin(v99);
  v98 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for ContentConfigurationItem();
  v107 = *(v97 - 8);
  __chkstk_darwin(v97);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v95 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v73 - v16;
  *(v0 + qword_1000DD948) = 0;
  v114[0] = 0;
  v114[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(v114, "MutableArray<");
  HIWORD(v114[1]) = -4864;
  UUID.init()();
  v18 = UUID.uuidString.getter();
  v20 = v19;
  v21 = *(v13 + 8);
  v74 = v17;
  v108 = v13 + 8;
  v109 = v12;
  v106 = v21;
  v21(v17, v12);
  v22._countAndFlagsBits = v18;
  v22._object = v20;
  String.append(_:)(v22);

  v23._countAndFlagsBits = 62;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  v24 = MutableArrayDataSource.init(arrangedSections:identifier:)();
  v115 = _swiftEmptyArrayStorage;
  v105 = v24;

  sub_10007C53C(0, 6, 0);
  v25 = 0;
  v26 = v115;
  v27 = 0x80000001000A9550;
  v28 = 0x80000001000A9570;
  v87 = 0x80000001000A9590;
  v93 = (v94 + 32);
  v80 = enum case for UICellAccessory.DisplayedState.always(_:);
  v79 = (v110 + 104);
  v78 = (v111 + 8);
  v77 = (v110 + 8);
  v76 = enum case for CellDeselectionBehavior.default(_:);
  v92 = (v112 + 104);
  v75 = enum case for CellDeselectionBehavior.deselectOnDidSelect(_:);
  v91 = enum case for SectionedDataSourceContainerViewType.collectionView(_:);
  v90 = (v113 + 104);
  v89 = v107 + 32;
  v86 = xmmword_1000AE100;
  v110 = 0x80000001000A9550;
  v94 = 0x80000001000A9570;
  v96 = v11;
  do
  {
    v29 = *(&off_1000CC1E0 + v25 + 32);
    v113 = v26;
    if (v29 > 2)
    {
      v112 = v25;
      v31 = v27;
      v32 = v28;
      v30 = v87;
    }

    else
    {
      if (!v29)
      {
        v44 = 0xE500000000000000;

        v45 = 0;
        v43 = 0x7964647542;
        goto LABEL_43;
      }

      v112 = v25;
      v30 = v87;
      v31 = v110;
      v32 = v28;
    }

    LODWORD(v111) = _stringCompareWithSmolCheck(_:_:expecting:)();

    v33 = 0xD000000000000019;
    v34 = 0xD000000000000016;
    if (v29 == 4)
    {
      v35 = 0xD000000000000016;
    }

    else
    {
      v35 = 0x2065766F72706D49;
    }

    if (v29 == 4)
    {
      v36 = v31;
    }

    else
    {
      v36 = 0xEE00797465666153;
    }

    if (v29 == 3)
    {
      v35 = 0xD000000000000019;
      v36 = v32;
    }

    if (v29 == 1)
    {
      v37 = 0x20656C69666F7250;
    }

    else
    {
      v37 = 0xD000000000000012;
    }

    if (v29 == 1)
    {
      v38 = 0xEF676E6972616853;
    }

    else
    {
      v38 = v30;
    }

    if (v29 <= 2)
    {
      v35 = v37;
      v36 = v38;
    }

    if (v29 == 4)
    {
      v39 = v31;
    }

    else
    {
      v34 = 0x2065766F72706D49;
      v39 = 0xEE00797465666153;
    }

    if (v29 == 3)
    {
      v40 = v32;
    }

    else
    {
      v33 = v34;
      v40 = v39;
    }

    if (v29 == 1)
    {
      v41 = 0x20656C69666F7250;
    }

    else
    {
      v41 = 0xD000000000000012;
    }

    if (v29 == 1)
    {
      v42 = 0xEF676E6972616853;
    }

    else
    {
      v42 = v30;
    }

    if (v29 <= 2)
    {
      v33 = v41;
      v40 = v42;
    }

    if (v111)
    {
      v43 = v33;
    }

    else
    {
      v43 = v35;
    }

    if (v111)
    {
      v44 = v40;
    }

    else
    {
      v44 = v36;
    }

    v45 = (v111 & 1) == 0;
    v25 = v112;
LABEL_43:
    v46 = swift_allocObject();
    swift_weakInit();
    v47 = swift_allocObject();
    *(v47 + 16) = v46;
    *(v47 + 24) = v29;

    v48 = v95;
    UUID.init()();
    v49 = UUID.uuidString.getter();
    v111 = v50;
    v112 = v49;
    v106(v48, v109);
    v51 = v98;
    static UIListContentConfiguration.cell()();
    sub_100080878(v43, v44);
    UIListContentConfiguration.text.setter();
    v52 = objc_opt_self();
    if (v45)
    {
      v53 = [v52 tintColor];
      v54 = UIListContentConfiguration.textProperties.modify();
      UIListContentConfiguration.TextProperties.color.setter();
      v54(v114, 0);
    }

    else
    {
      v55 = [v52 labelColor];
      v56 = UIListContentConfiguration.textProperties.modify();
      UIListContentConfiguration.TextProperties.color.setter();
      v56(v114, 0);
    }

    v57 = v99;
    v114[3] = v99;
    v114[4] = &protocol witness table for UIListContentConfiguration;
    v58 = sub_10000AD4C(v114);
    (*v93)(v58, v51, v57);
    if (v45)
    {
      sub_100080880(v43, v44);
      v59 = v100;
      *v100 = 1;
      v60 = v75;
    }

    else
    {
      sub_100080888(0, &qword_1000DAF00, &type metadata accessor for UICellAccessory, &type metadata accessor for _ContiguousArrayStorage);
      type metadata accessor for UICellAccessory();
      *(swift_allocObject() + 16) = v86;
      v61 = *v79;
      v62 = v81;
      v88 = v44;
      v63 = v82;
      v61(v81, v80, v82);
      v64 = type metadata accessor for UICellAccessory.LayoutDimension();
      (*(*(v64 - 8) + 56))(v85, 1, 1, v64);
      v65 = v83;
      UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
      static UICellAccessory.disclosureIndicator(displayed:options:)();
      (*v78)(v65, v84);
      (*v77)(v62, v63);
      sub_100080880(v43, v88);
      v60 = v76;
      v59 = v100;
    }

    v66 = v96;
    (*v92)(v59, v60, v101);
    v67 = type metadata accessor for UIBackgroundConfiguration();
    (*(*(v67 - 8) + 56))(v102, 1, 1, v67);
    (*v90)(v103, v91, v104);
    ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();

    v26 = v113;
    v115 = v113;
    v69 = *(v113 + 16);
    v68 = *(v113 + 24);
    if (v69 >= v68 >> 1)
    {
      sub_10007C53C((v68 > 1), v69 + 1, 1);
      v26 = v115;
    }

    ++v25;
    *(v26 + 16) = v69 + 1;
    (*(v107 + 32))(v26 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v69, v66, v97);
    v27 = v110;
    v28 = v94;
  }

  while (v25 != 6);
  sub_100080888(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for _ContiguousArrayStorage);
  type metadata accessor for ArrayDataSourceSection();
  *(swift_allocObject() + 16) = v86;
  sub_10009C004(v26);

  v70 = v74;
  UUID.init()();
  UUID.uuidString.getter();
  v106(v70, v109);
  ArrayDataSourceSection.init(title:arrangedItems:identifier:)();
  v71 = v105;
  dispatch thunk of MutableArrayDataSource.replaceAllSections(with:reconfigureOrReloadExistingItems:)();

  return v71;
}

uint64_t sub_10007F0A4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10007F118(a3, a1);
  }

  return result;
}

void sub_10007F118(uint64_t a1, id a2)
{
  if (a1 > 2u)
  {
    if (a1 == 4)
    {
      v6 = type metadata accessor for MainActor();
      __chkstk_darwin(v6);
      v12[2] = a2;
      sub_10007DF1C(sub_100080810, v12, "Health/BuddyDataSource.swift", 28, 2u, 60);
    }

    else
    {
      v11 = objc_opt_self();

      [v11 presentInViewController:a2 completion:0];
    }
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v4 = UIViewController.resolvedHealthStore.getter();
        if (v4)
        {
          v5 = v4;
          UIViewController.resolvedHealthExperienceStore.getter();
          v14 = v2;
          type metadata accessor for BuddyDataSource(0);
          sub_100080714(&qword_1000DD9C8, type metadata accessor for BuddyDataSource, &unk_1000B0AF8);
          SummarySharingOnboardingPresenting.presentOnboardingVC(on:healthStore:healthExperienceStore:isInfoTile:needsOnboardingSetup:isPresentedViaLink:)();

          sub_100003B90(v15);
          return;
        }

        goto LABEL_21;
      }

      v10 = [a2 view];
      if (!v10)
      {
        __break(1u);
LABEL_21:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }

      v13 = v10;
      sub_10007F474(v10, a2);
    }

    else
    {
      v7 = [a2 navigationController];
      if (!v7)
      {
        return;
      }

      v8 = v7;
      v15[3] = type metadata accessor for StubbedDeepLinkCanceler();
      v15[4] = &off_1000D0008;
      v15[0] = swift_allocObject();
      v9 = objc_allocWithZone(type metadata accessor for WelcomeViewController());
      v13 = sub_10006F2C4(v15);
      [v8 pushViewController:v13 animated:1];
    }
  }
}

uint64_t sub_10007F3F0(void *a1)
{
  type metadata accessor for ImprovementDataCollectionOptInViewController();
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  static ImprovementDataCollectionOptInViewController.present(in:completion:)();
}

void sub_10007F474(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = [objc_allocWithZone(HKHealthStore) init];
  v8 = [objc_allocWithZone(HKSharedSummaryCloudSyncManager) initWithHealthStore:v7];

  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v6;
  v13[4] = sub_1000807A4;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100080330;
  v13[3] = &unk_1000D0040;
  v10 = _Block_copy(v13);
  v11 = a1;
  v12 = a2;

  [v8 fetchAccountInfoWithCompletion:v10];
  _Block_release(v10);
}

uint64_t sub_10007F5CC(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v93 = a5;
  v88 = a3;
  v92 = type metadata accessor for DispatchWorkItemFlags();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v90 = *(v10 - 8);
  __chkstk_darwin(v10);
  v89 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100080888(0, &qword_1000DC800, &type metadata accessor for URL, &type metadata accessor for Optional);
  __chkstk_darwin(v12 - 8);
  v94 = &v84 - v13;
  v103 = type metadata accessor for URL();
  v98 = *(v103 - 8);
  v14 = __chkstk_darwin(v103);
  v16 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v97 = &v84 - v17;
  sub_100080888(0, &qword_1000DD9B8, &type metadata accessor for ContactDeepLinkingParameter, &type metadata accessor for Optional);
  __chkstk_darwin(v18 - 8);
  v20 = &v84 - v19;
  v21 = type metadata accessor for SharingInviteFlowURLData();
  v95 = *(v21 - 8);
  v96 = v21;
  __chkstk_darwin(v21);
  v100 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ContactDeepLinkingParameter();
  v101 = *(v23 - 8);
  v102 = v23;
  __chkstk_darwin(v23);
  v99 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Logger();
  v104 = *(v25 - 1);
  v105 = v25;
  v26 = __chkstk_darwin(v25);
  v28 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v84 - v29;
  if (a1)
  {
    v84 = v16;
    v31 = a1;
    static Logger.general.getter();
    v32 = v31;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    v35 = os_log_type_enabled(v33, v34);
    v36 = &off_1000D7000;
    v87 = v10;
    v86 = v9;
    v85 = a4;
    if (v35)
    {
      v37 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v37 = 136315394;
      v38 = _typeName(_:qualified:)();
      v40 = sub_1000036D0(v38, v39, aBlock);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      v41 = [v32 emailAddress];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v45 = sub_1000036D0(v42, v44, aBlock);

      *(v37 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v33, v34, "[%s] Fetched cloudSyncAccountInfo identifier: %s", v37, 0x16u);
      swift_arrayDestroy();
      v36 = &off_1000D7000;
    }

    (*(v104 + 8))(v30, v105);
    v46 = v99;
    v47 = [v32 v36[504]];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    ContactDeepLinkingParameter.init(value:)();
    v49 = v101;
    v48 = v102;
    (*(v101 + 16))(v20, v46, v102);
    (*(v49 + 56))(v20, 0, 1, v48);
    v50 = v100;
    SharingInviteFlowURLData.init(contactData:)();
    v51 = v94;
    SharingInviteFlowURLData.url()();
    v52 = v98;
    v53 = v103;
    if ((*(v98 + 48))(v51, 1, v103) == 1)
    {

      (*(v95 + 8))(v50, v96);
      (*(v49 + 8))(v46, v48);
      return sub_10005A320(v51);
    }

    else
    {
      v64 = v97;
      (*(v52 + 32))(v97, v51, v53);
      v65 = v53;
      v66 = String._bridgeToObjectiveC()();
      v67 = [objc_opt_self() bundleWithIdentifier:v66];

      v68 = String._bridgeToObjectiveC()();
      v69 = [objc_opt_self() imageNamed:v68 inBundle:v67];

      (*(v52 + 16))(v84, v64, v65);
      v105 = v69;
      static String.defaultURLProviderSubtitle.getter();
      v70 = objc_allocWithZone(type metadata accessor for HealthURLActivityItemProvider());
      v71 = HealthURLActivityItemProvider.init(title:url:image:thumbnailImage:subtitle:)();
      sub_10002C1C4();
      v72 = static OS_dispatch_queue.main.getter();
      v73 = swift_allocObject();
      v74 = v88;
      v73[2] = v71;
      v73[3] = v74;
      v75 = v85;
      v73[4] = v85;
      aBlock[4] = sub_1000807B0;
      aBlock[5] = v73;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100008310;
      aBlock[3] = &unk_1000D0090;
      v76 = _Block_copy(aBlock);
      v77 = v71;
      v78 = v74;
      v79 = v75;

      v80 = v32;
      v81 = v89;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100080714(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100080888(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
      sub_100028B74();
      v82 = v86;
      v83 = v92;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v76);

      (*(v91 + 8))(v82, v83);
      (*(v90 + 8))(v81, v87);
      (*(v52 + 8))(v97, v103);
      (*(v95 + 8))(v100, v96);
      return (*(v101 + 8))(v99, v102);
    }
  }

  else
  {
    static Logger.general.getter();
    swift_errorRetain();
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v57 = 136315394;
      v58 = _typeName(_:qualified:)();
      v60 = sub_1000036D0(v58, v59, aBlock);

      *(v57 + 4) = v60;
      *(v57 + 12) = 2080;
      aBlock[6] = a2;
      swift_errorRetain();
      sub_100080888(0, &qword_1000DD580, sub_100008C14, &type metadata accessor for Optional);
      v61 = String.init<A>(reflecting:)();
      v63 = sub_1000036D0(v61, v62, aBlock);

      *(v57 + 14) = v63;
      _os_log_impl(&_mh_execute_header, v55, v56, "[%s] No cloudSyncAccountInfo was fetched: %s", v57, 0x16u);
      swift_arrayDestroy();
    }

    return (*(v104 + 8))(v28, v105);
  }
}

void sub_1000801D4(void *a1, uint64_t a2, void *a3)
{
  sub_1000807BC();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000AE100;
  *(v6 + 56) = type metadata accessor for HealthURLActivityItemProvider();
  *(v6 + 32) = a1;
  v7 = objc_allocWithZone(UIActivityViewController);
  v8 = a1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v7 initWithActivityItems:isa applicationActivities:0];

  v10 = [v12 popoverPresentationController];
  if (v10)
  {
    v11 = v10;
    [v10 setSourceView:a2];
  }

  [a3 presentViewController:v12 animated:1 completion:0];
}

void sub_100080330(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1000803CC()
{
  MutableArrayDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_100080424@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for SummarySharingSetupAnalyticsBaseEvent.OnboardingLocation.summaryTab(_:);
  v3 = type metadata accessor for SummarySharingSetupAnalyticsBaseEvent.OnboardingLocation();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1000804E4(uint64_t a1)
{
  v3 = *v1;
  v4 = qword_1000DD948;
  swift_beginAccess();
  *(v3 + v4) = a1;
}

uint64_t sub_100080690(uint64_t a1)
{
  *(a1 + 8) = sub_100080714(&qword_1000DD9A0, type metadata accessor for BuddyDataSource, &unk_1000B0A68);
  result = sub_100080714(&qword_1000DD9A8, type metadata accessor for BuddyDataSource, &unk_1000B0A98);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_100080714(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000807BC()
{
  if (!qword_1000DD9C0)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DD9C0);
    }
  }
}

void sub_100080888(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10008095C()
{
  v0 = type metadata accessor for LayoutConfiguration();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LayoutConfiguration.card.getter();
  v4 = LayoutConfiguration.layoutSection.getter();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_100080A38@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for UIListContentConfiguration();
  __chkstk_darwin(v2 - 8);
  ForYouSectionKind.localizedTitle.getter();
  static UIListContentConfiguration.extraProminentInsetGroupedHeader()();
  v3 = type metadata accessor for HeaderItem();
  swift_allocObject();
  v4 = HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)();
  a1[3] = v3;
  result = sub_100013D4C(&qword_1000DAE78, &type metadata accessor for HeaderItem, &protocol conformance descriptor for HeaderItem);
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t type metadata accessor for InternalNotificationsDataSource(uint64_t a1)
{
  result = qword_1000DDA20;
  if (!qword_1000DDA20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100080BE4()
{
  v0 = type metadata accessor for SectionedDataSourceContainerViewType();
  v52 = *(v0 - 8);
  v53 = v0;
  __chkstk_darwin(v0);
  v51 = v40 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006AE8C(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  __chkstk_darwin(v2 - 8);
  v50 = v40 - v3;
  v45 = type metadata accessor for CellDeselectionBehavior();
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v43 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006AE8C(0, &qword_1000DAEF0, &type metadata accessor for UICellAccessory.LayoutDimension, &type metadata accessor for Optional);
  __chkstk_darwin(v5 - 8);
  v7 = v40 - v6;
  v42 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UICellAccessory.DisplayedState();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v46 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for ContentConfigurationItem();
  v49 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v40[1] = UUID.uuidString.getter();
  v40[0] = v19;
  v20 = *(v15 + 8);
  v47 = v15 + 8;
  v48 = v20;
  v20(v17, v14);
  v58[3] = type metadata accessor for UIListContentConfiguration();
  v58[4] = &protocol witness table for UIListContentConfiguration;
  sub_10000AD4C(v58);
  static UIListContentConfiguration.cell()();
  UIListContentConfiguration.text.setter();
  v21 = [objc_opt_self() labelColor];
  v22 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v22(v57, 0);
  sub_10006AE8C(0, &qword_1000DAF00, &type metadata accessor for UICellAccessory, &type metadata accessor for _ContiguousArrayStorage);
  type metadata accessor for UICellAccessory();
  v23 = swift_allocObject();
  v54 = xmmword_1000AE100;
  *(v23 + 16) = xmmword_1000AE100;
  (*(v11 + 104))(v13, enum case for UICellAccessory.DisplayedState.always(_:), v10);
  v24 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
  UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
  static UICellAccessory.disclosureIndicator(displayed:options:)();
  (*(v41 + 8))(v9, v42);
  (*(v11 + 8))(v13, v10);
  (*(v44 + 104))(v43, enum case for CellDeselectionBehavior.default(_:), v45);
  v25 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v25 - 8) + 56))(v50, 1, 1, v25);
  (*(v52 + 104))(v51, enum case for SectionedDataSourceContainerViewType.collectionView(_:), v53);
  v26 = v55;
  ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();
  sub_10006AE8C(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for _ContiguousArrayStorage);
  type metadata accessor for ArrayDataSourceSection();
  *(swift_allocObject() + 16) = v54;
  sub_10006AE8C(0, &qword_1000DAC00, sub_1000199DC, &type metadata accessor for _ContiguousArrayStorage);
  v27 = swift_allocObject();
  *(v27 + 16) = v54;
  v28 = v56;
  *(v27 + 56) = v56;
  *(v27 + 64) = sub_100081844(&unk_1000DAC10, &type metadata accessor for ContentConfigurationItem, &protocol conformance descriptor for ContentConfigurationItem);
  v29 = sub_10000AD4C((v27 + 32));
  v30 = v49;
  (*(v49 + 16))(v29, v26, v28);
  UUID.init()();
  UUID.uuidString.getter();
  v31 = v46;
  v32 = v48;
  v48(v17, v46);
  ArrayDataSourceSection.init(title:arrangedItems:identifier:)();
  v58[0] = 0x3C53447961727241;
  v58[1] = 0xE800000000000000;
  UUID.init()();
  v33 = UUID.uuidString.getter();
  v35 = v34;
  v32(v17, v31);
  v36._countAndFlagsBits = v33;
  v36._object = v35;
  String.append(_:)(v36);

  v37._countAndFlagsBits = 62;
  v37._object = 0xE100000000000000;
  String.append(_:)(v37);
  v38 = ArrayDataSource.init(arrangedSections:identifier:)();
  (*(v30 + 8))(v55, v56);
  return v38;
}

void sub_100081594(void *a1)
{
  v2 = UIViewController.resolvedHealthStore.getter();
  sub_10006593C(v2, v16);
  v13 = v16[4];
  v14 = v16[5];
  v15 = v17;
  v9 = v16[0];
  v10 = v16[1];
  v11 = v16[2];
  v12 = v16[3];
  sub_10008188C(0);
  v4 = objc_allocWithZone(v3);
  sub_100066620(v16, v8);
  v5 = UIHostingController.init(rootView:)();
  v6 = [a1 navigationController];
  if (v6)
  {
    v7 = v6;
    [v6 pushViewController:v5 animated:1];
    sub_10008193C(v16);
  }

  else
  {
    sub_10008193C(v16);
  }
}

uint64_t sub_1000817C0(uint64_t a1)
{
  *(a1 + 8) = sub_100081844(&qword_1000DDA70, type metadata accessor for InternalNotificationsDataSource, &unk_1000B0C68);
  result = sub_100081844(&qword_1000DDA78, type metadata accessor for InternalNotificationsDataSource, &unk_1000B0C98);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_100081844(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10008188C(uint64_t a1)
{
  if (!qword_1000DDA80)
  {
    sub_1000818E8();
    v1 = type metadata accessor for UIHostingController();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DDA80);
    }
  }
}

unint64_t sub_1000818E8()
{
  result = qword_1000DDA88;
  if (!qword_1000DDA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDA88);
  }

  return result;
}

uint64_t sub_100081990(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  sub_10000ACE8(a1, v18);
  v6 = [objc_opt_self() primaryProfile];
  v7 = objc_allocWithZone(type metadata accessor for PersonalizedFeedDataSource(0));
  v7[qword_1000DC598] = 0;
  sub_10000BFFC(v18, v18[3]);
  v8 = dispatch thunk of HealthExperienceStore.viewContext.getter();
  v9 = NSManagedObjectContext.makeFeedItemsFetchedResultsController(for:associatedProfileIdentifier:)();

  isa = [v9 fetchRequest];
  v11 = [(objc_class *)isa relationshipKeyPathsForPrefetching];
  if (v11)
  {
    v12 = v11;
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100061574(a4);
    if (v13)
    {
      v14.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v14.super.isa = 0;
    }

    [(objc_class *)isa setRelationshipKeyPathsForPrefetching:v14.super.isa, v13];

    isa = v14.super.isa;
  }

  else
  {
    [(objc_class *)isa setRelationshipKeyPathsForPrefetching:0];
  }

  *&v7[qword_1000DC590] = a2;
  v15 = a2;
  v16 = FetchedResultsControllerDataSource.init(_:)();

  sub_100003B90(v18);
  return v16;
}

uint64_t sub_100081B50(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000827D8(a1, 0, 0);
  }

  return result;
}

uint64_t sub_100081BB8()
{
  v1 = type metadata accessor for SectionedDataSourceCardStackConfiguration();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = *(v0 + qword_1000DDAD0);
  if (v5)
  {
    v6 = [v5 viewController];
  }

  else
  {
    v6 = 0;
  }

  sub_10000ACE8(v0 + qword_1000DDAD8, v12);
  v7 = [*(v0 + qword_1000DDAE0) profileIdentifier];
  v8 = objc_allocWithZone(type metadata accessor for NoticesDataSource());
  v9 = NoticesDataSource.init(healthExperienceStore:associatedProfileIdentifier:)();
  sub_100012EDC();
  static SectionedDataSourceCardStackConfiguration.alertsStack(with:)();
  type metadata accessor for SummaryFeedDataSource(0);
  SnapshotDataSource.presentCardStackOriginalDataSource(viewController:dataSource:config:)();

  return (*(v2 + 8))(v4, v1);
}

void sub_100081D60(char a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  sub_100012248(0, &qword_1000DDBB8, &type metadata accessor for SummaryFeedTrendsSectionDataSource, sub_1000127B0, &type metadata accessor for HideableDataSource.Visibility);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = __chkstk_darwin(v9);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = aBlock - v15;
  sub_100012248(0, &qword_1000DDBC8, sub_1000122C8, sub_10001277C, &type metadata accessor for HideableDataSource.Visibility);
  __chkstk_darwin(v17);
  if (a1)
  {
    v20 = objc_allocWithZone(type metadata accessor for DeleteFeedOperation());
    v21 = DeleteFeedOperation.init(feedKinds:)();
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = a2;
    v23[4] = a3;
    v23[5] = v8;
    aBlock[4] = sub_10008445C;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100008310;
    aBlock[3] = &unk_1000D01C8;
    v24 = _Block_copy(aBlock);

    sub_10001EC44(a2, a3);
    sub_10001EC44(sub_10008445C, v23);

    [v21 setCompletionBlock:v24];
    _Block_release(v24);

    sub_100003DDC(0, &qword_1000DBC38, NSOperationQueue_ptr);
    v25 = static NSOperationQueue.userInitiated.getter();
    [v25 addOperation:v21];
  }

  else
  {
    v26 = enum case for HideableDataSource.Visibility.visible<A>(_:);
    (*(v19 + 104))(aBlock - v18, enum case for HideableDataSource.Visibility.visible<A>(_:));
    dispatch thunk of HideableDataSource.visibility.setter();
    (*(v11 + 104))(v16, v26, v10);
    if (HAFeatureFlagShowTrendsInSummary())
    {
      (*(v11 + 16))(v14, v16, v10);
      dispatch thunk of HideableDataSource.visibility.setter();
    }

    (*(v11 + 8))(v16, v10);
    v27 = qword_1000DDAD8;
    v28 = [*(v4 + qword_1000DDAE0) profileIdentifier];
    sub_100083F88((v4 + v27), v28);

    if (a2)
    {
      a2();
    }
  }
}

uint64_t sub_1000821C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v11 = *(v18 - 8);
  __chkstk_darwin(v18);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  aBlock[4] = sub_1000844B0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = &unk_1000D0218;
  v16 = _Block_copy(aBlock);

  sub_10001EC44(a2, a3);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100012734(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100010760(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100028B74();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v19 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v18);
}

uint64_t sub_1000824D0(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v24 = a3;
  sub_100012248(0, &qword_1000DDBB8, &type metadata accessor for SummaryFeedTrendsSectionDataSource, sub_1000127B0, &type metadata accessor for HideableDataSource.Visibility);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = __chkstk_darwin(v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  sub_100012248(0, &qword_1000DDBC8, sub_1000122C8, sub_10001277C, &type metadata accessor for HideableDataSource.Visibility);
  v13 = v12;
  v14 = *(v12 - 8);
  __chkstk_darwin(v12);
  v16 = &v22 - v15;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v23 = a2;
    v19 = enum case for HideableDataSource.Visibility.visible<A>(_:);
    (*(v14 + 104))(v16, enum case for HideableDataSource.Visibility.visible<A>(_:), v13);
    dispatch thunk of HideableDataSource.visibility.setter();
    (*(v6 + 104))(v11, v19, v5);
    if (HAFeatureFlagShowTrendsInSummary())
    {
      (*(v6 + 16))(v9, v11, v5);
      dispatch thunk of HideableDataSource.visibility.setter();
    }

    (*(v6 + 8))(v11, v5);
    v20 = qword_1000DDAD8;
    v21 = [*(v18 + qword_1000DDAE0) profileIdentifier];
    sub_100083F88((v18 + v20), v21);

    if (v23)
    {
      v23();
    }
  }

  return result;
}

uint64_t sub_1000827D8(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v67 = a3;
  v70 = a2;
  sub_100012248(0, &qword_1000DDBB8, &type metadata accessor for SummaryFeedTrendsSectionDataSource, sub_1000127B0, &type metadata accessor for HideableDataSource.Visibility);
  v60 = *(v5 - 8);
  v61 = v5;
  v6 = __chkstk_darwin(v5);
  v53 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v59 = &v52 - v8;
  sub_100012248(0, &qword_1000DDBC8, sub_1000122C8, sub_10001277C, &type metadata accessor for HideableDataSource.Visibility);
  v58 = v9;
  v57 = *(v9 - 8);
  __chkstk_darwin(v9);
  v56 = &v52 - v10;
  sub_10001DAC4(0);
  v63 = v11;
  __chkstk_darwin(v11);
  v65 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CloudSyncRestoreState();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v52 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v52 - v17;
  sub_100010760(0, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional);
  v20 = __chkstk_darwin(v19 - 8);
  v55 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v64 = &v52 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v52 - v25;
  __chkstk_darwin(v24);
  v28 = &v52 - v27;
  sub_10008312C(a1);
  v29 = qword_1000DDA98;
  swift_beginAccess();
  v68 = v28;
  sub_10001868C(v3 + v29, v28, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
  (*(v14 + 16))(v26, a1, v13);
  v30 = 1;
  v62 = *(v14 + 56);
  v62(v26, 0, 1, v13);
  swift_beginAccess();
  v69 = v3;
  sub_10001877C(v26, v3 + v29, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
  swift_endAccess();
  v31 = v14;
  v32 = *(v14 + 104);
  v32(v18, enum case for CloudSyncRestoreState.completed(_:), v13);
  sub_100012734(&qword_1000DDBB0, &type metadata accessor for CloudSyncRestoreState, &protocol conformance descriptor for CloudSyncRestoreState);
  v66 = a1;
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v72 != v71)
  {
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v54 = *(v31 + 8);
  v54(v18, v13);

  v33 = v68;
  if (v30)
  {
    v34 = v64;
    v32(v64, enum case for CloudSyncRestoreState.activelyRestoring(_:), v13);
    v62(v34, 0, 1, v13);
    v35 = *(v63 + 48);
    v36 = v65;
    sub_10001868C(v33, v65, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
    sub_10001868C(v34, v36 + v35, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
    v37 = *(v31 + 48);
    if (v37(v36, 1, v13) == 1)
    {
      sub_10001870C(v34, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
      if (v37(v36 + v35, 1, v13) == 1)
      {
        sub_10001870C(v36, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
LABEL_17:
        v45 = 1;
        goto LABEL_18;
      }

      goto LABEL_9;
    }

    v38 = v55;
    sub_10001868C(v36, v55, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
    if (v37(v36 + v35, 1, v13) == 1)
    {
      sub_10001870C(v34, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
      v54(v38, v13);
LABEL_9:
      sub_100024650(v36);
      goto LABEL_10;
    }

    v46 = v36 + v35;
    v47 = v52;
    (*(v31 + 32))(v52, v46, v13);
    sub_100012734(&qword_1000DAAE8, &type metadata accessor for CloudSyncRestoreState, &protocol conformance descriptor for CloudSyncRestoreState);
    v48 = dispatch thunk of static Equatable.== infix(_:_:)();
    v49 = v47;
    v50 = v54;
    v54(v49, v13);
    sub_10001870C(v34, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
    v50(v38, v13);
    sub_10001870C(v36, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
    if (v48)
    {
      goto LABEL_17;
    }
  }

LABEL_10:
  if ((CloudSyncRestoreState.isOngoing.getter() & 1) == 0)
  {
    v45 = 0;
LABEL_18:
    sub_100081D60(v45, v70, v67);
    return sub_10001870C(v33, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
  }

  v39 = enum case for HideableDataSource.Visibility.hidden<A>(_:);
  (*(v57 + 104))(v56, enum case for HideableDataSource.Visibility.hidden<A>(_:), v58);
  dispatch thunk of HideableDataSource.visibility.setter();
  v41 = v59;
  v40 = v60;
  v42 = v39;
  v43 = v61;
  (*(v60 + 104))(v59, v42, v61);
  if (HAFeatureFlagShowTrendsInSummary())
  {
    (*(v40 + 16))(v53, v41, v43);
    dispatch thunk of HideableDataSource.visibility.setter();
  }

  v44 = (*(v40 + 8))(v41, v43);
  if (v70)
  {
    (v70)(v44);
  }

  return sub_10001870C(v33, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
}

uint64_t sub_10008312C(uint64_t a1)
{
  v2 = v1;
  v41 = a1;
  v3 = type metadata accessor for Logger();
  v39 = *(v3 - 8);
  __chkstk_darwin(v3);
  v37 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100010760(0, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional);
  __chkstk_darwin(v5 - 8);
  v7 = &v33 - v6;
  v8 = type metadata accessor for CloudSyncRestoreState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v38 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v33 - v13;
  __chkstk_darwin(v12);
  v16 = &v33 - v15;
  v17 = qword_1000DDA98;
  swift_beginAccess();
  v40 = v2;
  sub_10001868C(v2 + v17, v7, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10001870C(v7, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
LABEL_12:
    v25 = CloudSyncRestoreState.isOngoing.getter();

    dispatch thunk of PrimarySecondaryDataSource.primaryDataSource.getter();

    if (v25)
    {
      dispatch thunk of DownloadingPinningDataSource.showDownloadingItem()();
    }

    else
    {
      dispatch thunk of DownloadingPinningDataSource.hideDownloadingItem()();
    }
  }

  v35 = v3;
  (*(v9 + 32))(v16, v7, v8);
  v18 = enum case for CloudSyncRestoreState.activelyRestoring(_:);
  v34 = *(v9 + 104);
  v34(v14, enum case for CloudSyncRestoreState.activelyRestoring(_:), v8);
  sub_100012734(&qword_1000DDBB0, &type metadata accessor for CloudSyncRestoreState, &protocol conformance descriptor for CloudSyncRestoreState);
  v36 = v16;
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v44 == v42 && v45 == v43)
  {
    v19 = 1;
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v20 = *(v9 + 8);
  v20(v14, v8);

  if ((v19 & 1) == 0)
  {
    goto LABEL_11;
  }

  v21 = v38;
  v34(v38, v18, v8);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v44 != v42 || v45 != v43)
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v20(v21, v8);

    v22 = v35;
    v23 = v36;
    v24 = v39;
    if (v27)
    {
      goto LABEL_17;
    }

LABEL_11:
    v20(v36, v8);
    goto LABEL_12;
  }

  v20(v21, v8);

  v22 = v35;
  v23 = v36;
  v24 = v39;
LABEL_17:
  v28 = v20;
  v29 = v37;
  static Logger.view.getter();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Our previous cloud sync state is inProgress. Skipping notifying delegate.", v32, 2u);
  }

  (*(v24 + 8))(v29, v22);
  return v28(v23, v8);
}