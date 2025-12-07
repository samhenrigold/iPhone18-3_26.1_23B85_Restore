uint64_t sub_10003AA58()
{
  v1 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeadphoneProxFeatureManager();
  static HeadphoneProxFeatureManager.shared.getter();
  v5 = v0 + OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController_model;
  swift_beginAccess();
  v6 = type metadata accessor for HeadphoneModel(0);
  result = (*(*(v6 - 8) + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v2 + 104))(v4, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:), v1);

    v8 = dispatch thunk of HeadphoneProxFeatureManager.hearingRecordWithDevice(for:feature:)();
    v10 = v9;

    (*(v2 + 8))(v4, v1);
    if (v8 && (v8, v11 = [v10 hearingProtectionRegionStatus], v10, v11 == 2))
    {
      v12 = "YODEL_LSR_SWITCH_MODE_SUBTITLE";
      v13 = 0xD00000000000001ALL;
    }

    else
    {
      v12 = "CH_MODE_SKIP_BUTTON";
      v13 = 0xD00000000000001ELL;
    }

    v14 = [objc_opt_self() mainBundle];
    v20._object = 0xE000000000000000;
    v15._object = (v12 | 0x8000000000000000);
    v16.value._object = 0x80000001000DC8A0;
    v15._countAndFlagsBits = v13;
    v16.value._countAndFlagsBits = 0xD000000000000011;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v20._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v20)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  return result;
}

void sub_10003ACCC(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(AADeviceConfig) init];
  [v2 setListeningModeOffAllowed:2];
  type metadata accessor for HeadphoneProxFeatureManager();
  static HeadphoneProxFeatureManager.shared.getter();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v4 = Strong;
  v5 = Strong + OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController_model;
  swift_beginAccess();
  v6 = type metadata accessor for HeadphoneModel(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) != 1)
  {
    v7 = *(v5 + 152);

    if (v7)
    {
LABEL_5:

      HeadphoneProxFeatureManager.updateDevice(for:deviceAddress:usecase:completion:)();

      return;
    }

LABEL_4:

    goto LABEL_5;
  }

  __break(1u);
}

void sub_10003AE58(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();

    if (v3)
    {
      sub_1000BAE28();
      swift_unknownObjectRelease();
    }
  }
}

void sub_10003AECC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      sub_1000BAE28();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t type metadata accessor for HeadphoneYodelHearingSwitchListeningModeViewController(uint64_t a1)
{
  result = qword_10011DA38;
  if (!qword_10011DA38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003B068(uint64_t a1)
{
  sub_10000E064(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10003B138()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003B178(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10003B1A0(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController_featureManager;
  type metadata accessor for HeadphoneProxFeatureManager();
  *&v1[v5] = static HeadphoneProxFeatureManager.shared.getter();
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController____lazy_storage___imageView] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController____lazy_storage___topAsset] = 0;
  v6 = OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController_model;
  v7 = type metadata accessor for HeadphoneModel(0);
  (*(*(v7 - 8) + 56))(&v2[v6], 1, 1, v7);
  *&v2[OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController_type] = 34;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "initWithContentView:", a1);
}

uint64_t getEnumTagSinglePayload for HeadphoneViewType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD9)
  {
    goto LABEL_17;
  }

  if (a2 + 39 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 39) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 39;
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

      return (*a1 | (v4 << 8)) - 39;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 39;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x28;
  v8 = v6 - 40;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HeadphoneViewType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 39 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 39) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD9)
  {
    v4 = 0;
  }

  if (a2 > 0xD8)
  {
    v5 = ((a2 - 217) >> 8) + 1;
    *result = a2 + 39;
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
    *result = a2 + 39;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10003B400()
{
  result = qword_10011DA48;
  if (!qword_10011DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DA48);
  }

  return result;
}

uint64_t sub_10003B454()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011DA50);
  v1 = sub_10000A570(v0, qword_10011DA50);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10003B588()
{
  v1 = v0;
  v61 = [objc_allocWithZone(ACAccountStore) init];
  v2 = [v61 aa_primaryAppleAccount];
  if (!v2)
  {
    if (qword_10011C660 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000A570(v10, qword_10011DA50);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "No iCloud account.", v13, 2u);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectRelease();
      if (Strong)
      {
        sub_1000481B8();
        swift_unknownObjectRelease();
      }
    }

    return;
  }

  v3 = v2;
  v60 = [objc_allocWithZone(AAUIProfilePictureStore) initWithAppleAccount:v2 grandSlamAccount:0 accountStore:v61];
  v4 = [v60 profilePictureForAccountOwner];
  v5 = [v3 username];
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

  v15 = (v1 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneLinkingViewController_appleIDInfo);
  v16 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneLinkingViewController_appleIDInfo + 16);
  *v15 = v7;
  v15[1] = v9;
  v15[2] = v4;
  v15[3] = 0;
  v15[4] = 0;
  v59 = v4;

  v17 = [objc_opt_self() sharedInstance];
  v18 = String._bridgeToObjectiveC()();
  v19 = [v3 accountPropertyForKey:v18];

  if (v19)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    *v64 = 0u;
    v66 = 0u;
  }

  v67 = *v64;
  v68 = v66;
  if (!*(&v66 + 1))
  {
    sub_10000E950(&v67, &qword_10011DC40, &qword_1000D7C40);
    goto LABEL_24;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    if (qword_10011C660 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000A570(v25, qword_10011DA50);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "altDSID not available", v28, 2u);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v29 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectRelease();
      if (v29)
      {
        sub_1000481B8();
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_31;
  }

  v20 = String._bridgeToObjectiveC()();

  v21 = [v17 authKitAccountWithAltDSID:v20];

  if (!v21)
  {
    if (qword_10011C660 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000A570(v30, qword_10011DA50);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "No AppleID account", v33, 2u);
    }

LABEL_31:
LABEL_32:

    return;
  }

  v22 = [v17 additionalInfoForAccount:v21];
  if (v22)
  {
    v23 = v22;
    v24 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v24 = 0;
  }

  v57 = [v17 phoneAsAppleIDForAccount:v21];
  if (qword_10011C660 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_10000A570(v34, qword_10011DA50);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  v58 = v21;
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *&v67 = v56;
    *v37 = 136315394;
    v64[0] = v24;

    sub_100008438(&qword_10011DAA8, &qword_1000D7610);
    v38 = String.init<A>(reflecting:)();
    v40 = sub_100078978(v38, v39, &v67);

    *(v37 + 4) = v40;
    *(v37 + 12) = 1024;
    *(v37 + 14) = v57;
    _os_log_impl(&_mh_execute_header, v35, v36, "Additional account info: %s, MAKO: %{BOOL}d", v37, 0x12u);
    sub_10000EA94(v56);
  }

  if (!v24 || !*(v24 + 16))
  {
    goto LABEL_51;
  }

  v41 = sub_1000CD118(0x6D754E656E6F6870, 0xEC00000073726562);
  if ((v42 & 1) == 0)
  {
    goto LABEL_50;
  }

  sub_10003CE5C(*(v24 + 56) + 32 * v41, &v67);

  sub_1000084D4(0, &qword_10011DAB0, NSArray_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_51:

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v67 = v47;
      *v46 = 136315138;
      sub_100008438(&qword_10011DAA8, &qword_1000D7610);
      v48 = String.init<A>(reflecting:)();
      v50 = sub_100078978(v48, v49, &v67);

      *(v46 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v44, v45, "Failed to decode phone number from: %s", v46, 0xCu);
      sub_10000EA94(v47);
    }

    else
    {
    }

    goto LABEL_32;
  }

  v43 = v64[0];
  if ([v64[0] firstObject])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    *v64 = 0u;
    v66 = 0u;
  }

  v67 = *v64;
  v68 = v66;
  if (!*(&v66 + 1))
  {
LABEL_67:

    sub_10000E950(&v67, &qword_10011DC40, &qword_1000D7C40);
    goto LABEL_51;
  }

  sub_1000084D4(0, &qword_10011DAB8, NSDictionary_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_51;
  }

  v65[0] = 0x6D754E656E6F6870;
  v65[1] = 0xEB00000000726562;
  v51 = [v62 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v51)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    *v65 = 0u;
    v66 = 0u;
  }

  v67 = *v65;
  v68 = v66;
  if (!*(&v66 + 1))
  {

    goto LABEL_67;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_51;
  }

  if (v57)
  {

LABEL_50:

    goto LABEL_51;
  }

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *&v67 = v55;
    *v54 = 136315138;
    *(v54 + 4) = sub_100078978(v62, v63, &v67);
    _os_log_impl(&_mh_execute_header, v52, v53, "Phone number: %s", v54, 0xCu);
    sub_10000EA94(v55);
  }

  v15[3] = v62;
  v15[4] = v63;
}

void sub_10003C0E0(uint64_t a1)
{
  v3 = String._bridgeToObjectiveC()();
  [v1 setTitle:v3];

  if (*(a1 + 88))
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  [v1 setBottomTrayTitle:v4];

  sub_10003B588();
  v5 = [objc_allocWithZone(UIImageView) init];
  v70 = v1;
  v6 = &v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneLinkingViewController_appleIDInfo];
  v7 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneLinkingViewController_appleIDInfo + 16];
  v8 = v7;
  if (!v7)
  {
    v9 = String._bridgeToObjectiveC()();
    v8 = [objc_opt_self() systemImageNamed:v9];
  }

  v10 = v7;
  [v5 setImage:v8];

  v69 = v5;
  [v69 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = *(v6 + 1);
  v12 = *(v6 + 4);
  sub_100008438(&qword_10011C8F0, &unk_1000D5640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D5250;
  *(inited + 32) = NSForegroundColorAttributeName;
  v14 = objc_opt_self();

  v15 = NSForegroundColorAttributeName;
  swift_bridgeObjectRetain_n();
  v67 = v15;
  v16 = [v14 labelColor];
  v17 = sub_1000084D4(0, &qword_10011CB40, UIColor_ptr);
  *(inited + 64) = v17;
  *(inited + 40) = v16;
  sub_1000A3410(inited);
  swift_setDeallocating();
  sub_10000E950(inited + 32, &qword_10011C900, &unk_1000D6750);
  v18 = objc_allocWithZone(NSMutableAttributedString);
  v19 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_10003CDAC();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v21 = [v18 initWithString:v19 attributes:isa];

  if (v11)
  {

    if (v12)
    {
      v22 = objc_allocWithZone(NSAttributedString);
      v23 = String._bridgeToObjectiveC()();
      v24 = [v22 initWithString:v23];

      [v21 appendAttributedString:v24];
    }
  }

  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_1000D5250;
  *(v25 + 32) = v67;
  v26 = [v14 secondaryLabelColor];
  *(v25 + 64) = v17;
  *(v25 + 40) = v26;
  sub_1000A3410(v25);
  swift_setDeallocating();
  sub_10000E950(v25 + 32, &qword_10011C900, &unk_1000D6750);
  v27 = objc_allocWithZone(NSAttributedString);
  v28 = String._bridgeToObjectiveC()();

  v29 = Dictionary._bridgeToObjectiveC()().super.isa;

  v30 = [v27 initWithString:v28 attributes:v29];

  [v21 appendAttributedString:v30];
  v31 = [objc_allocWithZone(UILabel) init];
  [v31 setAttributedText:v21];
  v32 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v31 setFont:v32];

  [v31 setTextAlignment:1];
  v33 = v31;
  [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
  v34 = [v70 contentView];
  [v34 addSubview:v69];

  v35 = [v70 contentView];
  [v35 addSubview:v33];

  v36 = [v70 contentView];
  v37 = [v36 mainContentGuide];

  v68 = objc_opt_self();
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1000D6930;
  v39 = [v69 widthAnchor];
  v40 = [v39 constraintEqualToConstant:80.0];

  *(v38 + 32) = v40;
  v41 = [v69 heightAnchor];
  v42 = [v41 constraintEqualToConstant:80.0];

  *(v38 + 40) = v42;
  v43 = [v69 topAnchor];
  v44 = [v37 topAnchor];
  v45 = [v43 constraintGreaterThanOrEqualToAnchor:v44];

  *(v38 + 48) = v45;
  v46 = [v69 centerXAnchor];
  v47 = [v37 centerXAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];

  *(v38 + 56) = v48;
  v49 = [v33 topAnchor];
  v50 = [v69 bottomAnchor];

  v51 = [v49 constraintEqualToAnchor:v50 constant:10.0];
  *(v38 + 64) = v51;
  v52 = [v33 leadingAnchor];
  v53 = [v37 leadingAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];

  *(v38 + 72) = v54;
  v55 = [v33 trailingAnchor];
  v56 = [v37 trailingAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];

  *(v38 + 80) = v57;
  v58 = [v33 bottomAnchor];

  v59 = [v37 bottomAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];

  *(v38 + 88) = v60;
  sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
  v61 = Array._bridgeToObjectiveC()().super.isa;

  [v68 activateConstraints:v61];

  v62 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v63 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_10003CE3C;
  aBlock[5] = v62;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C034;
  aBlock[3] = &unk_100104CB8;
  v64 = _Block_copy(aBlock);
  v65 = [objc_opt_self() actionWithTitle:v63 style:0 handler:v64];

  _Block_release(v64);

  v66 = [v70 addAction:v65];
}

void sub_10003CB14(uint64_t a1, uint64_t a2)
{
  if (qword_10011C660 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011DA50);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = 128;
    _os_log_impl(&_mh_execute_header, v3, v4, "Continue Linking pressed in %ld", v5, 0xCu);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = swift_unknownObjectWeakLoadStrong();

    if (v8)
    {
      sub_1000BA1BC();
      swift_unknownObjectRelease();
    }
  }
}

id sub_10003CCDC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HeadphoneLinkingViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_10003CDAC()
{
  result = qword_10011C908;
  if (!qword_10011C908)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011C908);
  }

  return result;
}

uint64_t sub_10003CE04()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003CE44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003CE5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_10003CEB8(int a1, uint64_t a2, double a3)
{
  v4 = v3;
  LODWORD(v6) = a1;
  v8 = type metadata accessor for BatteryIconStyle();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v47 - v13;
  if (qword_10011C668 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000A570(v15, qword_10011DAC0);
  v16 = *(v9 + 16);
  v49 = a2;
  v16(v14, a2, v8);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v48 = v6;
    v6 = v19;
    v20 = swift_slowAlloc();
    v47 = v4;
    v21 = v20;
    v50 = v20;
    *v6 = 134218498;
    *(v6 + 4) = a3;
    *(v6 + 12) = 1024;
    *(v6 + 14) = v48 & 1;
    *(v6 + 18) = 2080;
    v16(v12, v14, v8);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    (*(v9 + 8))(v14, v8);
    v25 = sub_100078978(v22, v24, &v50);

    *(v6 + 20) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "Battery: ViewUpdate percentage: %f isCharging: %{BOOL}d updateStyle: %s", v6, 0x1Cu);
    sub_10000EA94(v21);
    v4 = v47;

    LOBYTE(v6) = v48;
  }

  else
  {

    (*(v9 + 8))(v14, v8);
  }

  v4[OBJC_IVAR____TtC20HeadphoneProxService19LabelledBatteryView_isCharging] = v6 & 1;
  v26 = [objc_allocWithZone(NSNumberFormatter) init];
  [v26 setNumberStyle:3];
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  v28 = [v26 stringForObjectValue:isa];

  if (v28)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v29 = objc_allocWithZone(NSMutableAttributedString);
  v30 = String._bridgeToObjectiveC()();

  v31 = [v29 initWithString:v30];

  v32 = *&v4[OBJC_IVAR____TtC20HeadphoneProxService19LabelledBatteryView_position];
  v33 = *&v4[OBJC_IVAR____TtC20HeadphoneProxService19LabelledBatteryView_position + 8];
  if (v33 > 1)
  {
    if (v33 == 3)
    {
      goto LABEL_16;
    }
  }

  else if (!v33)
  {
    goto LABEL_16;
  }

  v34 = objc_opt_self();
  v35 = [v34 configurationWithScale:{1, sub_10003DEE0(v32, v33)}];
  v36 = [objc_allocWithZone(NSTextAttachment) init];
  v37 = v35;
  v38 = String._bridgeToObjectiveC()();

  v39 = [objc_opt_self() _systemImageNamed:v38 withConfiguration:v37];

  if (v39)
  {
    v40 = [v39 imageWithRenderingMode:2];
  }

  else
  {
    v40 = 0;
  }

  [v36 setImage:v40];

  v41 = objc_allocWithZone(NSAttributedString);
  v42 = String._bridgeToObjectiveC()();
  v43 = [v41 initWithString:v42];

  [v31 insertAttributedString:v43 atIndex:0];
  v44 = [objc_opt_self() attributedStringWithAttachment:v36];
  [v31 insertAttributedString:v44 atIndex:0];

LABEL_16:
  v45 = *&v4[OBJC_IVAR____TtC20HeadphoneProxService19LabelledBatteryView_batteryPercentageLabel];
  [v45 setAttributedText:v31];
  v46 = *&v4[OBJC_IVAR____TtC20HeadphoneProxService19LabelledBatteryView_batteryView];
  dispatch thunk of ModernBatteryIcon.chargePercent.setter();
  dispatch thunk of ModernBatteryIcon.updateState(_:)();
  [v46 setHidden:a3 == 0.0];
  [v45 setHidden:a3 == 0.0];
  [v4 setNeedsLayout];
}

uint64_t sub_10003D4B0()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011DAC0);
  v1 = sub_10000A570(v0, qword_10011DAC0);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_10003D578(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5)
{
  v6 = v5;
  v68 = a4;
  v71 = a3;
  ObjectType = swift_getObjectType();
  v12 = type metadata accessor for BatteryIconStyle();
  v13 = *(v12 - 8);
  v69 = v12;
  v70 = v13;
  __chkstk_darwin(v12);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[OBJC_IVAR____TtC20HeadphoneProxService19LabelledBatteryView_isCharging] = 0;
  v16 = [objc_allocWithZone(UILabel) init];
  *&v6[OBJC_IVAR____TtC20HeadphoneProxService19LabelledBatteryView_batteryPercentageLabel] = v16;
  (*(v13 + 16))(v15, a4, v12);
  v17 = objc_allocWithZone(type metadata accessor for ModernBatteryIcon());
  *&v6[OBJC_IVAR____TtC20HeadphoneProxService19LabelledBatteryView_batteryView] = ModernBatteryIcon.init(_:darkMode:)();
  v18 = &v6[OBJC_IVAR____TtC20HeadphoneProxService19LabelledBatteryView_position];
  *v18 = a1;
  v18[1] = a2;
  v72.receiver = v6;
  v72.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v72, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20 = OBJC_IVAR____TtC20HeadphoneProxService19LabelledBatteryView_batteryPercentageLabel;
  v21 = *&v19[OBJC_IVAR____TtC20HeadphoneProxService19LabelledBatteryView_batteryPercentageLabel];
  v22 = v19;
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v19[v20] setAdjustsFontForContentSizeCategory:1];
  v23 = *&v19[v20];
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 preferredFontForTextStyle:UIFontTextStyleBody];
  [v25 setFont:v26];

  [*&v19[v20] setNumberOfLines:0];
  v27 = *&v19[v20];
  v28 = objc_opt_self();
  v29 = v27;
  v30 = [v28 labelColor];
  [v29 setTextColor:v30];

  [*&v19[v20] setTextAlignment:1];
  v31 = v22;
  v32 = *&v19[v20];
  v33 = v31;
  [v33 addSubview:v32];
  v34 = OBJC_IVAR____TtC20HeadphoneProxService19LabelledBatteryView_batteryView;
  [*&v33[OBJC_IVAR____TtC20HeadphoneProxService19LabelledBatteryView_batteryView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v33 addSubview:*&v33[v34]];
  v67 = objc_opt_self();
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1000D5260;
  v36 = [*&v33[v34] topAnchor];
  v37 = [v33 topAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];

  *(v35 + 32) = v38;
  v39 = [*&v33[v34] leadingAnchor];
  v40 = [v33 leadingAnchor];

  v41 = [v39 constraintGreaterThanOrEqualToAnchor:v40];
  *(v35 + 40) = v41;
  v42 = [*&v33[v34] trailingAnchor];
  v43 = [v33 trailingAnchor];

  v44 = [v42 constraintLessThanOrEqualToAnchor:v43];
  *(v35 + 48) = v44;
  v45 = [*&v33[v34] centerXAnchor];
  v46 = [v33 centerXAnchor];

  v47 = [v45 constraintEqualToAnchor:v46];
  *(v35 + 56) = v47;
  v48 = [*&v19[v20] topAnchor];
  v49 = [*&v33[v34] bottomAnchor];
  v50 = [v48 constraintEqualToAnchor:v49 constant:5.0];

  *(v35 + 64) = v50;
  v51 = [*&v19[v20] leadingAnchor];
  v52 = [v33 leadingAnchor];

  v53 = [v51 constraintEqualToAnchor:v52];
  *(v35 + 72) = v53;
  v54 = [*&v19[v20] trailingAnchor];
  v55 = [v33 trailingAnchor];

  v56 = [v54 constraintEqualToAnchor:v55];
  *(v35 + 80) = v56;
  v57 = [*&v19[v20] centerXAnchor];
  v58 = [*&v33[v34] centerXAnchor];
  v59 = [v57 constraintEqualToAnchor:v58];

  *(v35 + 88) = v59;
  v60 = [*&v19[v20] bottomAnchor];
  v61 = [v33 bottomAnchor];

  v62 = [v60 constraintEqualToAnchor:v61];
  *(v35 + 96) = v62;
  sub_10000F5A0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v67 activateConstraints:isa];

  v64 = v68;
  sub_10003CEB8(v71, v68, a5);

  (*(v70 + 8))(v64, v69);
  return v33;
}

uint64_t sub_10003DDC8(uint64_t a1)
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

uint64_t sub_10003DDEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 3)
  {
    return (v3 - 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003DE50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_10003DEA0(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

double sub_10003DEE0(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 2)
  {
  }

  return result;
}

uint64_t sub_10003DEF8(uint64_t a1, uint64_t a2)
{
  if (a2 != 3)
  {
    return sub_10003DF08(a1, a2);
  }

  return a1;
}

uint64_t sub_10003DF08(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 2)
  {
  }

  return result;
}

void sub_10003DF20()
{
  v1 = v0;
  v26.receiver = v0;
  v26.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v26, "viewDidLoad");
  [v0 setDismissalType:1];
  v2 = [objc_opt_self() configurationWithPointSize:4 weight:72.0];
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() systemImageNamed:v3 withConfiguration:v2];

  v5 = [objc_allocWithZone(UIImageView) initWithImage:v4];
  v6 = [objc_opt_self() systemRedColor];
  [v5 setTintColor:v6];

  v7 = v5;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [v1 contentView];
  [v8 addSubview:v7];

  v9 = [v1 contentView];
  v10 = [v9 mainContentGuide];

  v11 = objc_opt_self();
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000D6000;
  v13 = [v7 topAnchor];
  v14 = [v10 topAnchor];
  v15 = [v13 constraintGreaterThanOrEqualToAnchor:v14];

  *(v12 + 32) = v15;
  v16 = [v7 bottomAnchor];
  v17 = [v10 bottomAnchor];
  v18 = [v16 constraintLessThanOrEqualToAnchor:v17];

  *(v12 + 40) = v18;
  v19 = [v7 centerXAnchor];
  v20 = [v10 centerXAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v12 + 48) = v21;
  v22 = [v7 centerYAnchor];

  v23 = [v10 centerYAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v12 + 56) = v24;
  sub_10000F5A0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 activateConstraints:isa];
}

void sub_10003E350()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 setTitle:v1];

  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v3 = String._bridgeToObjectiveC()();
  v7[4] = sub_10003E638;
  v7[5] = v2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10000C034;
  v7[3] = &unk_100104DD8;
  v4 = _Block_copy(v7);
  v5 = [objc_opt_self() actionWithTitle:v3 style:0 handler:v4];

  _Block_release(v4);

  v6 = [v0 addAction:v5];
}

void sub_10003E4CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      sub_1000B6688();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10003E600()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003E640(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003E658()
{
  if ([v0 _remoteViewControllerProxy])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_100008438(&qword_10011F940, qword_1000D9880);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10000E950(v5, &qword_10011DC40, &qword_1000D7C40);
    return 0;
  }
}

void sub_10003E778(char a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewDidAppear:", a1 & 1);
  v3 = sub_10003E658();
  if (v3)
  {
    [v3 setStatusBarHidden:1 withDuration:0.3];
    swift_unknownObjectRelease();
  }

  type metadata accessor for SoftwareUpdateRequiredViewController();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = [v1 presentProxCardFlowWithDelegate:v1 initialViewController:v4];
}

double sub_10003EA44()
{
  result = 30.0 - PRXMainContentMargin;
  *&qword_10011DB60 = 30.0 - PRXMainContentMargin;
  return result;
}

void sub_10003EA64()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v24._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0x4552415754464F53;
  v4._object = 0xEF4554414450555FLL;
  v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v5.value._object = 0xEB00000000656C62;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v24);

  v7 = String._bridgeToObjectiveC()();

  [v1 setTitle:v7];

  v23._countAndFlagsBits = 0xD000000000000018;
  v23._object = 0x80000001000DF5B0;
  if (PRXIsPad())
  {
    v8 = 0x534F444150495FLL;
    v9 = 0xE700000000000000;
  }

  else
  {
    v8 = 1397705055;
    v9 = 0xE400000000000000;
  }

  String.append(_:)(*&v8);
  v10 = [v2 mainBundle];
  v25._object = 0xE000000000000000;
  v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v11.value._object = 0xEB00000000656C62;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v11, v10, v12, v25);

  v13 = String._bridgeToObjectiveC()();

  [v1 setSubtitle:v13];

  [v1 setDismissalType:3];
  v14 = [v2 mainBundle];
  v26._object = 0xE000000000000000;
  v15._object = 0x80000001000DF5D0;
  v15._countAndFlagsBits = 0xD000000000000010;
  v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v16.value._object = 0xEB00000000656C62;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v26._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v26);

  v18 = swift_allocObject();
  swift_unknownObjectUnownedInit();

  v19 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10003FF5C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C034;
  aBlock[3] = &unk_100104E28;
  v20 = _Block_copy(aBlock);
  v21 = [objc_opt_self() actionWithTitle:v19 style:0 handler:v20];

  _Block_release(v20);

  sub_10003F340();
}

void sub_10003EDE8(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4[4] = sub_10003EEA0;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_100019340;
  v4[3] = &unk_100104E50;
  v3 = _Block_copy(v4);
  [Strong dismissViewControllerAnimated:1 completion:v3];
  _Block_release(v3);
}

uint64_t sub_10003EEA0()
{
  v0 = sub_100008438(&qword_10011CF08, &unk_1000D7310);
  __chkstk_darwin(v0 - 8);
  v2 = v27 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_10000E950(v2, &qword_10011CF08, &unk_1000D7310);
  }

  (*(v4 + 32))(v6, v2, v3);
  sub_100008438(&qword_10011D810, &unk_1000D7D20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D66A0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v9;
  *(inited + 48) = 1;
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v10;
  *(inited + 72) = 1;
  v11 = sub_1000A3764(inited);
  swift_setDeallocating();
  sub_100008438(&qword_10011D818, qword_1000D7320);
  swift_arrayDestroy();
  v12 = [objc_opt_self() defaultWorkspace];
  if (v12)
  {
    v14 = v12;
    URL._bridgeToObjectiveC()(v13);
    v16 = v15;
    sub_100047958(v11);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v28 = 0;
    v18 = [v14 openSensitiveURL:v16 withOptions:isa error:&v28];

    if (v18)
    {
      v19 = *(v4 + 8);
      v20 = v28;
      return v19(v6, v3);
    }

    else
    {
      v21 = v28;
      v22 = _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100008438(&unk_10011DC30, &unk_1000D7D30);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1000D5250;
      v28 = 0;
      v29 = 0xE000000000000000;
      _StringGuts.grow(_:)(27);
      v24._object = 0x80000001000DF640;
      v24._countAndFlagsBits = 0xD000000000000019;
      String.append(_:)(v24);
      v27[1] = v22;
      sub_100008438(&unk_10011D970, &unk_1000D6500);
      _print_unlocked<A, B>(_:_:)();
      v25 = v28;
      v26 = v29;
      *(v23 + 56) = &type metadata for String;
      *(v23 + 32) = v25;
      *(v23 + 40) = v26;
      print(_:separator:terminator:)();

      return (*(v4 + 8))(v6, v3);
    }
  }

  else
  {
    (*(v4 + 8))(v6, v3);
  }
}

void sub_10003F340()
{
  v1 = v0;
  v2 = [objc_allocWithZone(UILayoutGuide) init];
  v3 = [v0 contentView];
  [v3 addLayoutGuide:v2];

  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 imageNamed:v5];

  v77 = v6;
  v7 = [objc_allocWithZone(UIImageView) initWithImage:v6];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [v1 contentView];
  [v8 addSubview:v7];

  v9 = [objc_allocWithZone(UIView) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = objc_opt_self();
  v11 = [v10 systemRedColor];
  [v9 setBackgroundColor:v11];

  v12 = [v9 layer];
  [v12 setCornerRadius:19.0];

  v13 = [v1 contentView];
  [v13 addSubview:v9];

  v14 = [objc_allocWithZone(UILabel) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = objc_opt_self();
  sub_1000084D4(0, &qword_10011DC20, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  v17 = [v15 localizedStringFromNumber:isa numberStyle:0];

  if (!v17)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = String._bridgeToObjectiveC()();
  }

  [v14 setText:v17];

  v18 = [v10 whiteColor];
  [v14 setTextColor:v18];

  [v14 setTextAlignment:1];
  v19 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption1];
  v20 = [v19 fontDescriptorWithSymbolicTraits:2];

  if (v20)
  {
    v21 = [objc_opt_self() fontWithDescriptor:v20 size:25.0];
    [v14 setFont:v21];
  }

  [v9 addSubview:v14];
  v22 = 0.0;
  if (*(v1 + OBJC_IVAR____TtC20HeadphoneProxService36SoftwareUpdateRequiredViewController_offsetIcon) == 1)
  {
    if (qword_10011C670 != -1)
    {
      swift_once();
    }

    v22 = *&qword_10011DB60;
  }

  v23 = [v1 contentView];
  v24 = [v23 mainContentGuide];

  v76 = objc_opt_self();
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1000D7700;
  v26 = [v2 centerXAnchor];
  v27 = v24;
  v28 = [v24 centerXAnchor];
  v29 = [v26 constraintEqualToAnchor:v28];

  *(v25 + 32) = v29;
  v30 = [v2 topAnchor];
  v31 = [v27 topAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:v22];

  *(v25 + 40) = v32;
  v33 = [v2 bottomAnchor];
  v34 = [v27 bottomAnchor];
  v35 = [v33 constraintLessThanOrEqualToAnchor:v34];

  *(v25 + 48) = v35;
  v36 = [v7 leadingAnchor];
  v37 = [v2 leadingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];

  *(v25 + 56) = v38;
  v39 = [v7 trailingAnchor];
  v40 = [v2 trailingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:-11.0];

  *(v25 + 64) = v41;
  v42 = [v7 topAnchor];
  v43 = [v2 topAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:11.0];

  *(v25 + 72) = v44;
  v45 = [v7 bottomAnchor];
  v46 = [v2 bottomAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v25 + 80) = v47;
  v48 = [v7 widthAnchor];
  v49 = [v48 constraintEqualToConstant:104.0];

  *(v25 + 88) = v49;
  v50 = [v7 heightAnchor];
  v51 = [v7 widthAnchor];

  v52 = [v50 constraintEqualToAnchor:v51];
  *(v25 + 96) = v52;
  v53 = [v9 topAnchor];
  v54 = [v2 topAnchor];
  v55 = [v53 constraintEqualToAnchor:v54];

  *(v25 + 104) = v55;
  v56 = [v9 trailingAnchor];
  v57 = [v2 trailingAnchor];
  v58 = [v56 constraintEqualToAnchor:v57];

  *(v25 + 112) = v58;
  v59 = [v9 widthAnchor];
  v60 = [v59 constraintEqualToConstant:38.0];

  *(v25 + 120) = v60;
  v61 = [v9 heightAnchor];
  v62 = [v9 widthAnchor];
  v63 = [v61 constraintEqualToAnchor:v62];

  *(v25 + 128) = v63;
  v64 = [v14 leadingAnchor];
  v65 = [v9 leadingAnchor];
  v66 = [v64 constraintEqualToAnchor:v65];

  *(v25 + 136) = v66;
  v67 = [v14 topAnchor];
  v68 = [v9 topAnchor];
  v69 = [v67 constraintEqualToAnchor:v68];

  *(v25 + 144) = v69;
  v70 = [v14 bottomAnchor];
  v71 = [v9 bottomAnchor];
  v72 = [v70 constraintEqualToAnchor:v71];

  *(v25 + 152) = v72;
  v73 = [v14 trailingAnchor];

  v74 = [v9 trailingAnchor];
  v75 = [v73 constraintEqualToAnchor:v74];

  *(v25 + 160) = v75;
  sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
  v78 = Array._bridgeToObjectiveC()().super.isa;

  [v76 activateConstraints:v78];
}

id sub_10003FECC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SoftwareUpdateRequiredViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10003FF24()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003FF64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10003FF84()
{
  v1 = v0;
  v37.receiver = v0;
  v37.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v37, "viewDidLoad");
  [v0 setDismissalType:1];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = [v0 traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (v5 == 1)
  {
    v6 = 0x746867694CLL;
  }

  else
  {
    v6 = 1802658116;
  }

  if (v5 == 1)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  _StringGuts.grow(_:)(24);

  v8._countAndFlagsBits = v6;
  v8._object = v7;
  String.append(_:)(v8);
  v9 = objc_allocWithZone(BSUICAPackageView);
  v10 = v3;
  v11 = String._bridgeToObjectiveC()();
  v12 = [v9 initWithPackageName:v11 inBundle:{v10, 0xD000000000000016, 0x80000001000DF6B0}];

  if (v12)
  {

    v13 = String._bridgeToObjectiveC()();
    [v12 setState:v13 animated:1];

    v14 = v12;
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [v1 contentView];
    [v15 addSubview:v14];

    v16 = [v1 contentView];
    v17 = [v16 mainContentGuide];

    v18 = objc_opt_self();
    sub_100008438(&unk_10011D960, &qword_1000D5CF0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1000D5C80;
    v20 = [v14 topAnchor];
    v21 = [v17 topAnchor];
    v22 = [v20 constraintGreaterThanOrEqualToAnchor:v21];

    *(v19 + 32) = v22;
    v23 = [v14 bottomAnchor];
    v24 = [v17 bottomAnchor];
    v25 = [v23 constraintLessThanOrEqualToAnchor:v24];

    *(v19 + 40) = v25;
    v26 = [v14 heightAnchor];
    v27 = [v26 constraintEqualToConstant:160.0];

    *(v19 + 48) = v27;
    v28 = [v14 widthAnchor];
    v29 = [v28 constraintEqualToConstant:320.0];

    *(v19 + 56) = v29;
    v30 = [v14 centerYAnchor];
    v31 = [v17 centerYAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];

    *(v19 + 64) = v32;
    v33 = [v14 centerXAnchor];

    v34 = [v17 centerXAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];

    *(v19 + 72) = v35;
    sub_10000F5A0();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v18 activateConstraints:isa];
  }

  else
  {
    __break(1u);
  }
}

void sub_100040564()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 setTitle:v1];

  v2 = String._bridgeToObjectiveC()();
  [v0 setSubtitle:v2];

  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v4 = String._bridgeToObjectiveC()();
  v17 = sub_100040998;
  v18 = v3;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10000C034;
  v16 = &unk_100104EE0;
  v5 = _Block_copy(&v13);
  v6 = objc_opt_self();
  v7 = [v6 actionWithTitle:v4 style:0 handler:v5];

  _Block_release(v5);

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v9 = String._bridgeToObjectiveC()();
  v17 = sub_1000409D0;
  v18 = v8;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10000C034;
  v16 = &unk_100104F08;
  v10 = _Block_copy(&v13);
  v11 = [v6 actionWithTitle:v9 style:1 handler:v10];

  _Block_release(v10);

  v12 = [v0 addAction:v11];
}

void sub_10004081C(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      sub_1000B7B00(a3 & 1);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100040960()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000409B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000409F8()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011DC80);
  v1 = sub_10000A570(v0, qword_10011DC80);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100040AC0()
{
  if (*(v0 + 24) != 1)
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 80);
    swift_unknownObjectRelease();
    if (!v2)
    {
      return 1;
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(result + 80);
    swift_unknownObjectRelease();
    return v4 == 1;
  }

  return result;
}

uint64_t sub_100040B2C(uint64_t result)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = result;
  if (v2 != (result & 1))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1000B4D14();

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void *sub_100040B90(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchQoS.QoSClass();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for HeadphoneModel(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 24) = 0;
  *(v1 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 56) = 0;
  swift_unknownObjectWeakInit();
  sub_100041F48(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100041FB8(a1);
    sub_100041FB8(v10);
LABEL_7:
    sub_100008598(v1 + 32);
    sub_100008598(v1 + 48);
    swift_deallocPartialClassInstance();
    return 0;
  }

  sub_10000E828(v10, v14);
  if (*&v14[*(v11 + 136)] != 8223 || v14[*(v11 + 188)] != 1)
  {
    sub_100041FB8(a1);
    sub_10000E8F4(v14);
    goto LABEL_7;
  }

  v15 = [objc_allocWithZone(AAUSBSupportedDeviceManager) init];
  sub_100041E90();
  (*(v5 + 104))(v7, enum case for DispatchQoS.QoSClass.userInitiated(_:), v4);
  v16 = static OS_dispatch_queue.global(qos:)();
  (*(v5 + 8))(v7, v4);
  [v15 setDispatchQueue:v16];

  sub_100041FB8(a1);
  sub_10000E8F4(v14);
  *(v2 + 16) = v15;
  return v2;
}

uint64_t sub_100040EB4()
{
  v1 = v0;
  v2 = type metadata accessor for HeadphoneModel(0);
  __chkstk_darwin(v2 - 8);
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004128C();
  if (v5)
  {
    if (qword_10011C678 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000A570(v6, qword_10011DC80);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Requesting USB connect", v9, 2u);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      if (*(Strong + 80))
      {
        *(Strong + 80) = 0;
        sub_1000B4D14();
      }

      swift_unknownObjectRelease();
    }

    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      *(v11 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_hasAutoConnected) = 0;
      *(v11 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_allowRepairAutoConnect) = 1;
      swift_unknownObjectRelease();
    }

    sub_100040B2C(1);
    v12 = *(v1 + 16);
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      v15 = v13;
      swift_beginAccess();
      sub_10000E390(v15 + v14, v4);
      v16 = v12;
      swift_unknownObjectRelease();
      v17 = *(v4 + 19);

      sub_10000E8F4(v4);
      if (v17)
      {
        String.uppercased()();
      }
    }

    else
    {
      v18 = v12;
    }

    v19 = String._bridgeToObjectiveC()();

    v20 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_100041E70;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000419B8;
    aBlock[3] = &unk_100104F58;
    v21 = _Block_copy(aBlock);

    [v12 proxCardUserActionOnHeadphone:v19 withAction:1 completion:v21];
    _Block_release(v21);

    if (!swift_unknownObjectWeakLoadStrong() || (v22 = swift_unknownObjectWeakLoadStrong(), swift_unknownObjectRelease(), !v22) || (v23 = v22 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_currentView, v24 = swift_unknownObjectWeakLoadStrong(), v25 = *(v23 + 8), swift_unknownObjectRelease(), !v24) || (ObjectType = swift_getObjectType(), v27 = (*(v25 + 32))(ObjectType, v25), swift_unknownObjectRelease(), v27 != 3))
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v28 = swift_unknownObjectWeakLoadStrong();
        swift_unknownObjectRelease();
        if (v28)
        {
          sub_10004907C();
          swift_unknownObjectRelease();
        }
      }
    }
  }

  return v5 & 1;
}

uint64_t sub_10004128C()
{
  v1 = type metadata accessor for HeadphoneModel(0);
  v2 = __chkstk_darwin(v1);
  v4 = &v22[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v22[-1] - v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_10011C678 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000A570(v15, qword_10011DC80);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_100078978(0xD000000000000016, 0x80000001000DF7A0, v22);
      _os_log_impl(&_mh_execute_header, v16, v17, "%s: Headphone Model is nil, exiting", v18, 0xCu);
      sub_10000EA94(v19);
    }

    return 0;
  }

  v8 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  v9 = Strong;
  swift_beginAccess();
  sub_10000E390(v9 + v8, v4);
  swift_unknownObjectRelease();
  sub_10000E828(v4, v6);
  if (*&v6[*(v1 + 136)] != 8223 || v6[*(v1 + 188)] != 1)
  {
LABEL_10:
    sub_10000E8F4(v6);
    return 0;
  }

  if (*(v0 + 24))
  {
    if (qword_10011C678 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000A570(v10, qword_10011DC80);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_100078978(0xD000000000000016, 0x80000001000DF7A0, &v21);
      _os_log_impl(&_mh_execute_header, v11, v12, "%s: Connection already requested", v13, 0xCu);
      sub_10000EA94(v14);
    }

    goto LABEL_10;
  }

  sub_10000E8F4(v6);
  return 1;
}

uint64_t sub_1000415E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  result = __chkstk_darwin(v9);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_100041E90();
    v14 = static OS_dispatch_queue.main.getter();
    aBlock[4] = sub_100041EDC;
    aBlock[5] = a3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019340;
    aBlock[3] = &unk_100104F80;
    v15 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10001C380();
    sub_100008438(&unk_100120090, &unk_1000D78C0);
    sub_100041EE4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);

    (*(v6 + 8))(v8, v5);
    return (*(v10 + 8))(v13, v9);
  }

  return result;
}

void sub_100041858(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (*(Strong + 24) != 1)
  {
    goto LABEL_8;
  }

  v2 = swift_unknownObjectWeakLoadStrong();
  if (!v2 || (v3 = *(v2 + 80), swift_unknownObjectRelease(), v3))
  {
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = *(v4 + 80);

      swift_unknownObjectRelease();
      if (v5 != 1)
      {
        return;
      }

      goto LABEL_11;
    }

LABEL_8:

    return;
  }

LABEL_11:
  swift_beginAccess();
  if (!swift_weakLoadStrong() || (v6 = swift_unknownObjectWeakLoadStrong(), , !v6) || (v7 = *(v6 + 80), swift_unknownObjectRelease(), v7 != 1))
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v8 = swift_unknownObjectWeakLoadStrong();

      if (v8)
      {
        sub_1000BD484(0);
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1000419B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

void sub_100041A64(char a1)
{
  v3 = type metadata accessor for HeadphoneModel(0);
  v4 = __chkstk_darwin(v3);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &aBlock[-1] - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
    v11 = Strong;
    swift_beginAccess();
    sub_10000E390(v11 + v10, v6);
    swift_unknownObjectRelease();
    sub_10000E828(v6, v8);
    if (*&v8[*(v3 + 136)] == 8223 && v8[*(v3 + 188)] == 1 && *(v1 + 24) == 1)
    {
      sub_100040B2C(0);
      if ((a1 & 1) == 0)
      {
        v12 = *(v1 + 16);
        if (*(v8 + 19))
        {
          String.uppercased()();
        }

        v18 = v12;
        v19 = String._bridgeToObjectiveC()();

        aBlock[4] = nullsub_1;
        aBlock[5] = 0;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000419B8;
        aBlock[3] = &unk_100104FA8;
        v20 = _Block_copy(aBlock);
        [v18 proxCardUserActionOnHeadphone:v19 withAction:4 completion:v20];
        _Block_release(v20);
      }
    }

    sub_10000E8F4(v8);
  }

  else
  {
    if (qword_10011C678 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000A570(v13, qword_10011DC80);
    v21 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_100078978(0xD000000000000019, 0x80000001000DF780, aBlock);
      _os_log_impl(&_mh_execute_header, v21, v14, "%s: Headphone Model is nil, exiting", v15, 0xCu);
      sub_10000EA94(v16);
    }

    else
    {
      v17 = v21;
    }
  }
}

uint64_t sub_100041DCC()
{
  sub_100008598(v0 + 32);
  sub_100008598(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_100041E38()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100041E78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100041E90()
{
  result = qword_10011D240;
  if (!qword_10011D240)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10011D240);
  }

  return result;
}

unint64_t sub_100041EE4()
{
  result = qword_10011F680;
  if (!qword_10011F680)
  {
    sub_10000A408(&unk_100120090, &unk_1000D78C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F680);
  }

  return result;
}

uint64_t sub_100041F48(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100041FB8(uint64_t a1)
{
  v2 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100042020(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HeadphoneModel(0);
  if (*(a3 + *(v6 + 136)) != 8223)
  {
    return 0;
  }

  if (*(a3 + *(v6 + 188)) != 1)
  {
    return 0;
  }

  v7 = *(a3 + 152);
  if (!v7)
  {
    return 0;
  }

  v8 = *(a3 + 144);
  v9 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v9 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    return 0;
  }

  v10 = String.uppercased()();
  v11 = String.uppercased()();
  if (v10._countAndFlagsBits == v11._countAndFlagsBits && v10._object == v11._object)
  {

    return 0;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    return 0;
  }

  if (qword_10011C678 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000A570(v14, qword_10011DC80);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_100078978(a1, a2, &v19);
    *(v17 + 12) = 2080;
    v18 = sub_100078978(v8, v7, &v19);

    *(v17 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v15, v16, "Device bluetooth address %s does not match expected bluetooth address %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return 1;
}

uint64_t sub_1000422A4()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011DD50);
  v1 = sub_10000A570(v0, qword_10011DD50);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10004236C()
{
  v0 = type metadata accessor for URL();
  sub_10000E32C(v0, qword_10011DD68);
  sub_10000A570(v0, qword_10011DD68);
  return URL.init(fileURLWithPath:)();
}

uint64_t sub_1000423D0()
{
  v0 = sub_1000A3A8C(&off_100102AE0);
  sub_100008438(&unk_100120020, &qword_1000D7C38);
  result = swift_arrayDestroy();
  off_10011DD80 = v0;
  return result;
}

Swift::Int sub_10004242C(int a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  Hasher._combine(_:)(BYTE1(a1) & 1);
  Hasher._combine(_:)(BYTE2(a1) & 1);
  Hasher._combine(_:)(HIBYTE(a1) & 1);
  return Hasher._finalize()();
}

Swift::Int sub_1000424A0()
{
  if (v0[3])
  {
    v1 = 0x1000000;
  }

  else
  {
    v1 = 0;
  }

  if (v0[2])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (v0[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_10004242C(v3 | *v0 | v2 | v1);
}

void sub_1000424E4()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
}

Swift::Int sub_100042544(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

uint64_t sub_100042610()
{
  v1 = sub_100008438(&qword_10011DE28, &unk_1000D98B0);
  v2 = __chkstk_darwin(v1);
  v4 = v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v94 - v5;
  v95[0] = 0;
  v95[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v95[0] = 0xD000000000000011;
  v95[1] = 0x80000001000DF7E0;
  v7 = *(v0 + 152);
  v94[0] = *(v0 + 144);
  v94[1] = v7;

  sub_100008438(&qword_10011E010, &unk_1000D8870);
  v8._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 32;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = v95[0];
  v11 = v95[1];
  v95[0] = 0xD000000000000010;
  v95[1] = 0x80000001000DF7C0;
  v10._object = v11;
  String.append(_:)(v10);

  v13 = v95[0];
  v12 = v95[1];
  strcpy(v95, "colorCode=");
  BYTE3(v95[1]) = 0;
  HIDWORD(v95[1]) = -369098752;
  LOBYTE(v94[0]) = *(v0 + 160);
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  v15._countAndFlagsBits = 32;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  v16 = v95[0];
  v17 = v95[1];
  v95[0] = v13;
  v95[1] = v12;

  v18._countAndFlagsBits = v16;
  v18._object = v17;
  String.append(_:)(v18);

  v20 = v95[0];
  v19 = v95[1];
  strcpy(v95, "deviceID=");
  WORD1(v95[1]) = 0;
  HIDWORD(v95[1]) = -385875968;
  v21 = type metadata accessor for HeadphoneModel(0);
  sub_100046E08(v0 + v21[12], v6);
  sub_100046E08(v6, v4);
  v22 = String.init<A>(reflecting:)();
  v24 = v23;
  sub_10000E950(v6, &qword_10011DE28, &unk_1000D98B0);
  v25._countAndFlagsBits = v22;
  v25._object = v24;
  String.append(_:)(v25);

  v26._countAndFlagsBits = 32;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  v27 = v95[0];
  v28 = v95[1];
  v95[0] = v20;
  v95[1] = v19;

  v29._countAndFlagsBits = v27;
  v29._object = v28;
  String.append(_:)(v29);

  v31 = v95[0];
  v30 = v95[1];
  v95[0] = 0;
  v95[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  strcpy(v95, "deviceVersion=");
  HIBYTE(v95[1]) = -18;
  LODWORD(v94[0]) = *(v0 + v21[13]);
  v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v32);

  v33._countAndFlagsBits = 32;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);
  v34 = v95[0];
  v35 = v95[1];
  v95[0] = v31;
  v95[1] = v30;

  v36._countAndFlagsBits = v34;
  v36._object = v35;
  String.append(_:)(v36);

  v38 = v95[0];
  v37 = v95[1];
  strcpy(v95, "deviceName=");
  HIDWORD(v95[1]) = -352321536;
  String.append(_:)(*(v0 + v21[14]));
  v39._countAndFlagsBits = 32;
  v39._object = 0xE100000000000000;
  String.append(_:)(v39);
  v40 = v95[0];
  v41 = v95[1];
  v95[0] = v38;
  v95[1] = v37;

  v42._countAndFlagsBits = v40;
  v42._object = v41;
  String.append(_:)(v42);

  v43 = v95[0];
  v44 = v95[1];
  v95[0] = 0;
  v95[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v95[0] = 0xD000000000000012;
  v95[1] = 0x80000001000DF800;
  if (*(v0 + v21[21]))
  {
    v45 = 1702195828;
  }

  else
  {
    v45 = 0x65736C6166;
  }

  if (*(v0 + v21[21]))
  {
    v46 = 0xE400000000000000;
  }

  else
  {
    v46 = 0xE500000000000000;
  }

  v47 = v46;
  String.append(_:)(*&v45);

  v48._countAndFlagsBits = 32;
  v48._object = 0xE100000000000000;
  String.append(_:)(v48);
  v49 = v95[0];
  v50 = v95[1];
  v95[0] = v43;
  v95[1] = v44;

  v51._countAndFlagsBits = v49;
  v51._object = v50;
  String.append(_:)(v51);

  v52 = v95[0];
  v53 = v95[1];
  v95[0] = 0;
  v95[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(37);

  v95[0] = 0xD000000000000022;
  v95[1] = 0x80000001000DF820;
  if (*(v0 + v21[22]))
  {
    v54 = 1702195828;
  }

  else
  {
    v54 = 0x65736C6166;
  }

  if (*(v0 + v21[22]))
  {
    v55 = 0xE400000000000000;
  }

  else
  {
    v55 = 0xE500000000000000;
  }

  v56 = v55;
  String.append(_:)(*&v54);

  v57._countAndFlagsBits = 32;
  v57._object = 0xE100000000000000;
  String.append(_:)(v57);
  v58 = v95[0];
  v59 = v95[1];
  v95[0] = v52;
  v95[1] = v53;

  v60._countAndFlagsBits = v58;
  v60._object = v59;
  String.append(_:)(v60);

  v61 = v95[0];
  v62 = v95[1];
  v95[0] = 0;
  v95[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(17);
  v63._countAndFlagsBits = 0x65646F4D74736574;
  v63._object = 0xEE003D6574617453;
  String.append(_:)(v63);
  LOBYTE(v94[0]) = *(v0 + v21[33]);
  _print_unlocked<A, B>(_:_:)();
  v64._countAndFlagsBits = 32;
  v64._object = 0xE100000000000000;
  String.append(_:)(v64);
  v65 = v95[0];
  v66 = v95[1];
  v95[0] = v61;
  v95[1] = v62;

  v67._countAndFlagsBits = v65;
  v67._object = v66;
  String.append(_:)(v67);

  v69 = v95[0];
  v68 = v95[1];
  strcpy(v95, "productID=");
  BYTE3(v95[1]) = 0;
  HIDWORD(v95[1]) = -369098752;
  LODWORD(v94[0]) = *(v0 + v21[34]);
  v70._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v70);

  v71._countAndFlagsBits = 32;
  v71._object = 0xE100000000000000;
  String.append(_:)(v71);
  v72 = v95[0];
  v73 = v95[1];
  v95[0] = v69;
  v95[1] = v68;

  v74._countAndFlagsBits = v72;
  v74._object = v73;
  String.append(_:)(v74);

  v76 = v95[0];
  v75 = v95[1];
  v95[0] = 0;
  v95[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v95[0] = 0x6572617774666F73;
  v95[1] = 0xEF3D656D756C6F56;
  if (*(v0 + v21[35]))
  {
    v77 = 1702195828;
  }

  else
  {
    v77 = 0x65736C6166;
  }

  if (*(v0 + v21[35]))
  {
    v78 = 0xE400000000000000;
  }

  else
  {
    v78 = 0xE500000000000000;
  }

  v79 = v78;
  String.append(_:)(*&v77);

  v80._countAndFlagsBits = 32;
  v80._object = 0xE100000000000000;
  String.append(_:)(v80);
  v81 = v95[0];
  v82 = v95[1];
  v95[0] = v76;
  v95[1] = v75;

  v83._countAndFlagsBits = v81;
  v83._object = v82;
  String.append(_:)(v83);

  v85 = v95[0];
  v84 = v95[1];
  strcpy(v95, "assetBundle=");
  BYTE5(v95[1]) = 0;
  HIWORD(v95[1]) = -5120;
  v94[0] = *(v0 + v21[36]);
  v86 = v94[0];
  sub_100008438(&qword_10011E018, &qword_1000D7C30);
  v87._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v87);

  v88._countAndFlagsBits = 32;
  v88._object = 0xE100000000000000;
  String.append(_:)(v88);
  v89 = v95[0];
  v90 = v95[1];
  v95[0] = v85;
  v95[1] = v84;

  v91._countAndFlagsBits = v89;
  v91._object = v90;
  String.append(_:)(v91);

  v92._countAndFlagsBits = 62;
  v92._object = 0xE100000000000000;
  String.append(_:)(v92);

  return v95[0];
}

unint64_t sub_100042DEC(char a1)
{
  result = 0x6441656369766564;
  switch(a1)
  {
    case 1:
      result = 0x646F43726F6C6F63;
      break;
    case 2:
      result = 0x4344454C65736163;
      break;
    case 3:
      result = 0x7372655665736163;
      break;
    case 4:
      result = 6580592;
      break;
    case 5:
      result = 0x636954646E756F66;
      break;
    case 6:
      result = 0x6C65646F6DLL;
      break;
    case 7:
      result = 845441392;
      break;
    case 8:
      result = 0x6574726F70707573;
      break;
    case 9:
      result = 0x6572617774666F73;
      break;
    case 10:
      result = 0x657461745363626FLL;
      break;
    case 11:
      result = 0x5352726961706572;
      break;
    case 12:
      result = 0x5374657364616568;
      break;
    case 13:
      result = 0x6C46656369766564;
      break;
    case 14:
      result = 1701667182;
      break;
    case 15:
      result = 0x5472656767697274;
      break;
    case 16:
      result = 0x6E69766172676E65;
      break;
    case 17:
      result = 0x736143794D746F6ELL;
      break;
    case 19:
      result = 0xD000000000000010;
      break;
    case 20:
      result = 0x65707954627573;
      break;
    case 21:
      result = 0x6F4D726961706572;
      break;
    case 22:
      result = 0x65746F4E69726973;
      break;
    case 23:
      result = 0x6E4F737574617473;
      break;
    case 24:
      result = 0xD000000000000013;
      break;
    case 25:
      result = 0x506C6C6143646E65;
      break;
    case 26:
      result = 0x6C6C61436574756DLL;
      break;
    case 27:
      result = 0xD000000000000014;
      break;
    case 28:
      result = 0x7473654764616568;
      break;
    case 29:
      result = 0x77654E7374616877;
      break;
    case 30:
      result = 0xD000000000000010;
      break;
    case 31:
      result = 0xD000000000000010;
      break;
    case 32:
      result = 0xD000000000000010;
      break;
    case 33:
      result = 0xD000000000000011;
      break;
    case 34:
      result = 0xD000000000000010;
      break;
    case 35:
      result = 0x6F5368636E75616CLL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_100043278(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100008438(&qword_10011DE28, &unk_1000D98B0);
  __chkstk_darwin(v4 - 8);
  v111 = (&v106 - v5);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v110 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 136) = 9;
  v9 = type metadata accessor for HeadphoneModel(0);
  v10 = v9[12];
  v112 = v7;
  v11 = *(v7 + 56);
  v107 = v10;
  v113 = v6;
  v109 = v7 + 56;
  v108 = v11;
  v11(a2 + v10, 1, 1, v6);
  *(a2 + v9[13]) = 0;
  v12 = (a2 + v9[15]);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = a2 + v9[16];
  *v13 = xmmword_1000D78D0;
  v114 = v9[23];
  *(a2 + v114) = 0;
  *(a2 + v9[24]) = 0;
  *(a2 + v9[25]) = 0;
  *(a2 + v9[27]) = 0;
  v14 = v9[28];
  *(a2 + v14) = 0;
  *(a2 + v9[29]) = MKBGetDeviceLockState() - 1 < 2;
  v15 = MobileGestalt_get_current_device();
  if (!v15)
  {
    __break(1u);
    goto LABEL_214;
  }

  v16 = v15;
  v17 = v9[30];
  greenTeaDeviceCapability = MobileGestalt_get_greenTeaDeviceCapability();

  *(a2 + v17) = greenTeaDeviceCapability;
  v106 = v9[33];
  *(a2 + v106) = 0;
  v19 = v9[35];
  *(a2 + v19) = 0;
  *(a2 + v9[36]) = 0;
  *(a2 + v9[37]) = 0;
  v20 = v9[38];
  v21 = type metadata accessor for Date();
  (*(*(v21 - 8) + 56))(a2 + v20, 1, 1, v21);
  v22 = v9[39];
  *(a2 + v22) = 0;
  *(a2 + v9[40]) = 0;
  *(a2 + v9[42]) = 0;
  *(a2 + v9[43]) = 0;
  *(a2 + v9[44]) = 0;
  v23 = a2 + v9[45];
  *v23 = 0;
  *(v23 + 8) = -1;
  v24 = v9[47];
  *(a2 + v24) = 0;
  *(a2 + v9[48]) = 0;
  *(a2 + v9[49]) = &_swiftEmptyDictionarySingleton;

  strcpy(&v122, "deviceFlags");
  HIDWORD(v122) = -352321536;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v121, a1, &v122);
  sub_100047824(v121);
  if (v123)
  {
    if (swift_dynamicCast())
    {
      LODWORD(v118) = v120[0];
      goto LABEL_7;
    }
  }

  else
  {
    sub_10000E950(&v122, &qword_10011DC40, &qword_1000D7C40);
  }

  LODWORD(v118) = 0;
LABEL_7:
  strcpy(&v122, "deviceAddress");
  HIWORD(v122) = -4864;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v121, a1, &v122);
  sub_100047824(v121);
  if (v123)
  {
    v25 = swift_dynamicCast();
    v26 = v120[0];
    if (v25)
    {
      v27 = v120[1];
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }
  }

  else
  {
    sub_10000E950(&v122, &qword_10011DC40, &qword_1000D7C40);
    v26 = 0;
    v27 = 0;
  }

  v117 = v26;
  *(a2 + 144) = v26;
  *(a2 + 152) = v27;
  strcpy(&v122, "colorCode");
  WORD5(v122) = 0;
  HIDWORD(v122) = -385875968;

  AnyHashable.init<A>(_:)();
  sub_10009C340(v121, a1, &v122);
  sub_100047824(v121);
  if (v123)
  {
    if (swift_dynamicCast())
    {
      v28 = v120[0];
      goto LABEL_17;
    }
  }

  else
  {
    sub_10000E950(&v122, &qword_10011DC40, &qword_1000D7C40);
  }

  v28 = 0;
LABEL_17:
  *(a2 + 160) = v28;
  strcpy(&v122, "caseLEDColor");
  BYTE13(v122) = 0;
  HIWORD(v122) = -5120;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v121, a1, &v122);
  sub_100047824(v121);
  if (v123)
  {
    if (swift_dynamicCast())
    {
      v29 = v120[0];
      goto LABEL_22;
    }
  }

  else
  {
    sub_10000E950(&v122, &qword_10011DC40, &qword_1000D7C40);
  }

  v29 = 0;
LABEL_22:
  *(a2 + 161) = v29;
  strcpy(&v122, "caseVers");
  BYTE9(v122) = 0;
  WORD5(v122) = 0;
  HIDWORD(v122) = -402653184;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v121, a1, &v122);
  sub_100047824(v121);
  if (v123)
  {
    if (swift_dynamicCast())
    {
      v30 = v120[0];
      goto LABEL_27;
    }
  }

  else
  {
    sub_10000E950(&v122, &qword_10011DC40, &qword_1000D7C40);
  }

  v30 = 0;
LABEL_27:
  *(a2 + 162) = v30;
  *&v122 = 6580592;
  *(&v122 + 1) = 0xE300000000000000;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v121, a1, &v122);
  sub_100047824(v121);
  v119 = v27;
  if (v123)
  {
    if (swift_dynamicCast())
    {
      v31 = LODWORD(v120[0]);
      goto LABEL_32;
    }
  }

  else
  {
    sub_10000E950(&v122, &qword_10011DC40, &qword_1000D7C40);
  }

  v31 = 0;
LABEL_32:
  *(a2 + v9[34]) = v31;
  strcpy(&v122, "foundTicks");
  BYTE11(v122) = 0;
  HIDWORD(v122) = -369098752;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v121, a1, &v122);
  sub_100047824(v121);
  if (v123)
  {
    if (swift_dynamicCast())
    {
      v32 = v120[0];
      goto LABEL_37;
    }
  }

  else
  {
    sub_10000E950(&v122, &qword_10011DC40, &qword_1000D7C40);
  }

  v32 = 0;
LABEL_37:
  *(a2 + v9[17]) = v32;
  *&v122 = 0x6C65646F6DLL;
  *(&v122 + 1) = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v121, a1, &v122);
  sub_100047824(v121);
  if (v123)
  {
    if (swift_dynamicCast())
    {
      v33 = v120[0];
      v34 = v120[1];
      goto LABEL_42;
    }
  }

  else
  {
    sub_10000E950(&v122, &qword_10011DC40, &qword_1000D7C40);
  }

  v33 = 0;
  v34 = 0xE000000000000000;
LABEL_42:
  v35 = (a2 + v9[20]);
  *v35 = v33;
  v35[1] = v34;
  *&v122 = 845441392;
  *(&v122 + 1) = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v121, a1, &v122);
  sub_100047824(v121);
  if (v123)
  {
    if (swift_dynamicCast())
    {
      v36 = v120[0];
      goto LABEL_47;
    }
  }

  else
  {
    sub_10000E950(&v122, &qword_10011DC40, &qword_1000D7C40);
  }

  v36 = 0;
LABEL_47:
  *(a2 + v9[32]) = v36;
  *&v122 = 0x6574726F70707573;
  *(&v122 + 1) = 0xEF65636976654464;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v121, a1, &v122);
  sub_100047824(v121);
  if (v123)
  {
    if (swift_dynamicCast())
    {
      v37 = v120[0];
      goto LABEL_52;
    }
  }

  else
  {
    sub_10000E950(&v122, &qword_10011DC40, &qword_1000D7C40);
  }

  v37 = 0;
LABEL_52:
  v115 = v9[21];
  *(a2 + v115) = v37;
  strcpy(&v122, "softwareVolume");
  HIBYTE(v122) = -18;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v121, a1, &v122);
  sub_100047824(v121);
  if (v123)
  {
    if (swift_dynamicCast())
    {
      v38 = v120[0];
      goto LABEL_57;
    }
  }

  else
  {
    sub_10000E950(&v122, &qword_10011DC40, &qword_1000D7C40);
  }

  v38 = 0;
LABEL_57:
  *(a2 + v19) = v38;
  strcpy(&v122, "obcState");
  BYTE9(v122) = 0;
  WORD5(v122) = 0;
  HIDWORD(v122) = -402653184;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v121, a1, &v122);
  sub_100047824(v121);
  if (v123)
  {
    if (swift_dynamicCast())
    {
      v39 = LOBYTE(v120[0]) == 2;
      goto LABEL_62;
    }
  }

  else
  {
    sub_10000E950(&v122, &qword_10011DC40, &qword_1000D7C40);
  }

  v39 = 0;
LABEL_62:
  v116 = v9[22];
  *(a2 + v116) = v39;
  strcpy(&v122, "repairRSSI");
  BYTE11(v122) = 0;
  HIDWORD(v122) = -369098752;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v121, a1, &v122);
  sub_100047824(v121);
  if (v123)
  {
    if (swift_dynamicCast())
    {
      v40 = v120[0];
      goto LABEL_67;
    }
  }

  else
  {
    sub_10000E950(&v122, &qword_10011DC40, &qword_1000D7C40);
  }

  v40 = 0;
LABEL_67:
  *(a2 + v22) = v40;
  strcpy(&v122, "headsetStatus");
  HIWORD(v122) = -4864;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v121, a1, &v122);
  sub_100047824(v121);
  if (v123)
  {
    if (swift_dynamicCast())
    {
      v41 = v120[0];
      goto LABEL_72;
    }
  }

  else
  {
    sub_10000E950(&v122, &qword_10011DC40, &qword_1000D7C40);
  }

  v41 = 0;
LABEL_72:
  *(a2 + v9[31]) = v41;
  *(a2 + v14) = (v118 & 0x1000) != 0;
  v42 = objc_opt_self();
  *(a2 + v9[41]) = [v42 announceCallsState];
  *&v122 = 1701667182;
  *(&v122 + 1) = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v121, a1, &v122);
  sub_100047824(v121);
  if (v123)
  {
    if (swift_dynamicCast())
    {
      v43 = v120[0];
      v44 = v120[1];
      goto LABEL_77;
    }
  }

  else
  {
    sub_10000E950(&v122, &qword_10011DC40, &qword_1000D7C40);
  }

  v43 = 0;
  v44 = 0xE000000000000000;
LABEL_77:
  v45 = (a2 + v9[14]);
  *v45 = v43;
  v45[1] = v44;
  strcpy(&v122, "triggerTicks");
  BYTE13(v122) = 0;
  HIWORD(v122) = -5120;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v121, a1, &v122);
  sub_100047824(v121);
  if (v123)
  {
    if (swift_dynamicCast())
    {
      v46 = v120[0];
      goto LABEL_82;
    }
  }

  else
  {
    sub_10000E950(&v122, &qword_10011DC40, &qword_1000D7C40);
  }

  v46 = 0;
LABEL_82:
  *(a2 + v9[46]) = v46;
  strcpy(&v122, "engravingData");
  HIWORD(v122) = -4864;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v121, a1, &v122);
  sub_100047824(v121);
  if (v123)
  {
    v47 = swift_dynamicCast();
    if (v47)
    {
      v48 = v120[0];
    }

    else
    {
      v48 = 0;
    }

    if (v47)
    {
      v49 = v120[1];
    }

    else
    {
      v49 = 0xF000000000000000;
    }
  }

  else
  {
    sub_10000E950(&v122, &qword_10011DC40, &qword_1000D7C40);
    v48 = 0;
    v49 = 0xF000000000000000;
  }

  sub_100047878(*v13, *(v13 + 8));
  *v13 = v48;
  *(v13 + 8) = v49;
  strcpy(&v122, "notMyCase");
  WORD5(v122) = 0;
  HIDWORD(v122) = -385875968;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v121, a1, &v122);
  sub_100047824(v121);
  if (v123)
  {
    if (swift_dynamicCast())
    {
      v50 = v120[0];
      goto LABEL_95;
    }
  }

  else
  {
    sub_10000E950(&v122, &qword_10011DC40, &qword_1000D7C40);
  }

  v50 = 0;
LABEL_95:
  *(a2 + v9[18]) = v50;
  strcpy(&v122, "deviceAddress2");
  HIBYTE(v122) = -18;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v121, a1, &v122);
  sub_100047824(v121);
  if (v123)
  {
    v51 = swift_dynamicCast();
    v52 = v120[0];
    v53 = v120[1];
    if (!v51)
    {
      v52 = 0;
      v53 = 0;
    }
  }

  else
  {
    sub_10000E950(&v122, &qword_10011DC40, &qword_1000D7C40);
    v52 = 0;
    v53 = 0;
  }

  v54 = (a2 + v9[19]);
  *v54 = v52;
  v54[1] = v53;
  strcpy(v120, "launchSource");
  BYTE5(v120[1]) = 0;
  HIWORD(v120[1]) = -5120;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v121, a1, &v122);
  sub_100047824(v121);
  if (!v123)
  {
    sub_10000E950(&v122, &qword_10011DC40, &qword_1000D7C40);
    goto LABEL_105;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_105:
    v55 = 0;
    goto LABEL_106;
  }

  if (v120[0] == 0xD000000000000021 && 0x80000001000DFA10 == v120[1])
  {

    v55 = 1;
  }

  else
  {
    v55 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

LABEL_106:
  *(a2 + v24) = v55 & 1;
  v56 = [objc_allocWithZone(SFHeadphoneProduct) initWithProductID:v31];
  if (v56)
  {
    v57 = v56;
    v58 = [v56 supportsSiri];
  }

  else
  {
    v58 = 0;
  }

  v59 = [v42 isSiriAllowedWhileLocked];
  v60 = [v42 isHeySiriEnabled];
  v61 = [v42 isCurrentLocaleSupported];
  v62 = (a2 + v9[26]);
  *v62 = v59;
  v62[1] = v60;
  v62[2] = v61;
  v62[3] = v58;
  strcpy(&v122, "subType");
  *(&v122 + 1) = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v121, a1, &v122);
  sub_100047824(v121);
  if (v123)
  {
    if (swift_dynamicCast())
    {
      v63 = LOBYTE(v120[0]) == 4;
    }

    else
    {
      v63 = 0;
    }
  }

  else
  {
    sub_10000E950(&v122, &qword_10011DC40, &qword_1000D7C40);
    v63 = 0;
  }

  strcpy(v120, "repairMode");
  BYTE3(v120[1]) = 0;
  HIDWORD(v120[1]) = -369098752;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v121, a1, &v122);
  sub_100047824(v121);
  if (v123)
  {
    if (swift_dynamicCast() && (v120[0] & 1) != 0)
    {
      if ((v118 & 0x800) == 0)
      {
        goto LABEL_140;
      }

      v64 = MobileGestalt_get_current_device();
      if (v64)
      {
        v65 = v64;
        deviceSupportsWirelessSplitting = MobileGestalt_get_deviceSupportsWirelessSplitting();

        if (deviceSupportsWirelessSplitting)
        {
          v67 = 14;
LABEL_141:
          *(a2 + 136) = v67;
          goto LABEL_142;
        }

LABEL_140:
        v67 = 10;
        goto LABEL_141;
      }

LABEL_214:
      __break(1u);
      return;
    }
  }

  else
  {
    sub_10000E950(&v122, &qword_10011DC40, &qword_1000D7C40);
  }

  strcpy(v120, "siriNote");
  BYTE1(v120[1]) = 0;
  WORD1(v120[1]) = 0;
  HIDWORD(v120[1]) = -402653184;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v121, a1, &v122);
  sub_100047824(v121);
  if (v123)
  {
    if (swift_dynamicCast() && (v120[0] & 1) != 0)
    {
      v67 = 11;
      goto LABEL_141;
    }
  }

  else
  {
    sub_10000E950(&v122, &qword_10011DC40, &qword_1000D7C40);
  }

  if (v63)
  {
    v67 = 8;
    goto LABEL_141;
  }

  strcpy(v120, "statusOnly");
  BYTE3(v120[1]) = 0;
  HIDWORD(v120[1]) = -369098752;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v121, a1, &v122);
  sub_100047824(v121);
  if (v123)
  {
    if (swift_dynamicCast() && (v120[0] & 1) != 0)
    {
      v67 = 13;
      goto LABEL_141;
    }
  }

  else
  {
    sub_10000E950(&v122, &qword_10011DC40, &qword_1000D7C40);
  }

  v120[0] = 0xD000000000000013;
  v120[1] = 0x80000001000DF880;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v121, a1, &v122);
  sub_100047824(v121);
  if (v123)
  {
    if (!swift_dynamicCast() || (v120[0] & 1) == 0)
    {
      v67 = 9;
      goto LABEL_142;
    }

    v67 = 12;
    goto LABEL_141;
  }

  sub_10000E950(&v122, &qword_10011DC40, &qword_1000D7C40);
  v67 = 9;
LABEL_142:
  strcpy(v120, "endCallProx");
  HIDWORD(v120[1]) = -352321536;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v121, a1, &v122);
  sub_100047824(v121);
  if (v123)
  {
    if (swift_dynamicCast() && (v120[0] & 1) != 0)
    {
      v67 = 1;
      *(a2 + 136) = 1;
    }
  }

  else
  {
    sub_10000E950(&v122, &qword_10011DC40, &qword_1000D7C40);
  }

  strcpy(v120, "muteCallProx");
  BYTE5(v120[1]) = 0;
  HIWORD(v120[1]) = -5120;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v121, a1, &v122);
  sub_100047824(v121);
  if (v123)
  {
    if (swift_dynamicCast() && (v120[0] & 1) != 0)
    {
      v67 = 2;
      *(a2 + 136) = 2;
    }
  }

  else
  {
    sub_10000E950(&v122, &qword_10011DC40, &qword_1000D7C40);
  }

  v120[0] = 0xD000000000000014;
  v120[1] = 0x80000001000DF8A0;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v121, a1, &v122);
  sub_100047824(v121);
  if (v123)
  {
    if (swift_dynamicCast() && (v120[0] & 1) != 0)
    {
      v67 = 3;
      *(a2 + 136) = 3;
    }
  }

  else
  {
    sub_10000E950(&v122, &qword_10011DC40, &qword_1000D7C40);
  }

  strcpy(v120, "whatsNew");
  BYTE1(v120[1]) = 0;
  WORD1(v120[1]) = 0;
  HIDWORD(v120[1]) = -402653184;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v121, a1, &v122);
  sub_100047824(v121);
  if (v123)
  {
    if (swift_dynamicCast() && (v120[0] & 1) != 0)
    {
      NSLog(_:_:)();
      v67 = 4;
      *(a2 + 136) = 4;
    }
  }

  else
  {
    sub_10000E950(&v122, &qword_10011DC40, &qword_1000D7C40);
  }

  strcpy(v120, "headGestures");
  BYTE5(v120[1]) = 0;
  HIWORD(v120[1]) = -5120;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v121, a1, &v122);
  sub_100047824(v121);
  if (v123)
  {
    if (swift_dynamicCast() && (v120[0] & 1) != 0)
    {
      NSLog(_:_:)();
      v67 = 5;
      *(a2 + 136) = 5;
    }
  }

  else
  {
    sub_10000E950(&v122, &qword_10011DC40, &qword_1000D7C40);
  }

  v120[0] = 0xD000000000000010;
  v120[1] = 0x80000001000DF8C0;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v121, a1, &v122);
  sub_100047824(v121);
  if (v123)
  {
    if (swift_dynamicCast() && (v120[0] & 1) != 0)
    {
      NSLog(_:_:)();
      v67 = 7;
      *(a2 + 136) = 7;
    }
  }

  else
  {
    sub_10000E950(&v122, &qword_10011DC40, &qword_1000D7C40);
  }

  v120[0] = 0xD000000000000010;
  v120[1] = 0x80000001000DF8E0;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v121, a1, &v122);
  sub_100047824(v121);
  if (v123)
  {
    if (swift_dynamicCast() && (v120[0] & 1) != 0)
    {
      v67 = 0;
      *(a2 + 136) = 0;
    }
  }

  else
  {
    sub_10000E950(&v122, &qword_10011DC40, &qword_1000D7C40);
  }

  strcpy(v120, "launchSource");
  BYTE5(v120[1]) = 0;
  HIWORD(v120[1]) = -5120;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v121, a1, &v122);
  sub_100047824(v121);
  if (!v123)
  {
    sub_10000E950(&v122, &qword_10011DC40, &qword_1000D7C40);
    goto LABEL_183;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_183;
  }

  if (v120[0] != 0xD000000000000025 || 0x80000001000DF920 != v120[1])
  {
    v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v68)
    {
      goto LABEL_186;
    }

LABEL_183:
    if (v67 == 9)
    {
      goto LABEL_188;
    }

    goto LABEL_187;
  }

LABEL_186:
  *(a2 + 136) = 15;
LABEL_187:
  *(a2 + v115) = 1;
LABEL_188:
  v120[0] = 0xD000000000000010;
  v120[1] = 0x80000001000DF900;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v121, a1, &v122);

  sub_100047824(v121);
  if (v123)
  {
    if (swift_dynamicCast())
    {
      v70 = v120[0];
      v69 = v120[1];
      v71 = v111;
      UUID.init(uuidString:)();
      v73 = v112;
      v72 = v113;
      if ((*(v112 + 48))(v71, 1, v113) == 1)
      {

        sub_10000E950(v71, &qword_10011DE28, &unk_1000D98B0);
      }

      else
      {
        v74 = v110;
        (*(v73 + 32))(v110, v71, v72);
        v75 = v107;
        sub_10000E950(a2 + v107, &qword_10011DE28, &unk_1000D98B0);
        (*(v73 + 16))(a2 + v75, v74, v72);
        v108(a2 + v75, 0, 1, v72);
        LOBYTE(v75) = sub_1000452F8(v70, v69);

        (*(v73 + 8))(v74, v72);
        *(a2 + v106) = v75;
      }
    }
  }

  else
  {
    sub_10000E950(&v122, &qword_10011DC40, &qword_1000D7C40);
  }

  v76 = type metadata accessor for HeadphoneProxFeatureManager();
  static HeadphoneProxFeatureManager.shared.getter();
  v77 = dispatch thunk of HeadphoneProxFeatureManager.deviceManager.getter();

  v78 = String._bridgeToObjectiveC()();

  v118 = v77;
  v79 = [v77 fetchAADeviceBatteryInfoForAddress:v78];

  if (v79)
  {
    if (qword_10011C698 != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    sub_10000A570(v80, static Logger.battery);
    v81 = v79;
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v113 = v84;
      v115 = swift_slowAlloc();
      v121[0] = v115;
      *v84 = 136315138;
      v85 = v81;
      v117 = v76;
      v86 = v85;
      v87 = [v85 description];
      LODWORD(v112) = v83;
      v88 = v87;
      v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v111 = v82;
      v90 = v89;
      v92 = v91;

      v93 = sub_100078978(v90, v92, v121);

      v94 = v113;
      *(v113 + 1) = v93;
      v95 = v111;
      _os_log_impl(&_mh_execute_header, v111, v112, "Setting isOptimizedBatteryChargingEnabled: %s", v94, 0xCu);
      sub_10000EA94(v115);
    }

    else
    {
    }

    v100 = [v81 optimizedBatteryChargingCapability] == 2;
    *(a2 + v116) = v100;
    v101 = sub_1000454EC();

    *(a2 + 128) = v101;
    static HeadphoneProxFeatureManager.shared.getter();

    v102 = HeadphoneProxFeatureManager.syncFetchAudioAADevice(_:)();

    if (v102)
    {

      *(a2 + v114) = v102;
    }

    else
    {
      if (qword_10011C680 != -1)
      {
        swift_once();
      }

      sub_10000A570(v80, qword_10011DD50);
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&_mh_execute_header, v103, v104, "Unable to fetch AudioAccessoryDevice!", v105, 2u);
      }
    }
  }

  else
  {
    if (qword_10011C698 != -1)
    {
      swift_once();
    }

    v96 = type metadata accessor for Logger();
    sub_10000A570(v96, static Logger.battery);
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&_mh_execute_header, v97, v98, "Sync Fetch returned no batteries!", v99, 2u);
    }

    *(a2 + 128) = _swiftEmptyArrayStorage;
  }
}

uint64_t sub_1000452F8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000024 && 0x80000001000DFA40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0xD000000000000024 && 0x80000001000DFA70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0xD000000000000024 && 0x80000001000DFAA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0xD000000000000024 && 0x80000001000DFAD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 4;
  }

  result = 5;
  if (a1 != 0xD000000000000024 || 0x80000001000DFB00 != a2)
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t Logger.battery.unsafeMutableAddressor()
{
  if (qword_10011C698 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_10000A570(v0, static Logger.battery);
}

void *sub_1000454EC()
{
  v1 = type metadata accessor for HeadphoneBatteryInfo(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 batteries];
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v7 = v5;
  sub_1000084D4(0, &qword_10011F9D0, AABattery_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_15:

    return v6;
  }

LABEL_4:
  v25 = _swiftEmptyArrayStorage;
  v10 = sub_1000CD644(0, v9 & ~(v9 >> 63), 0);
  if (v9 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = 0;
    v23 = v8 & 0xC000000000000001;
    v6 = v25;
    while (1)
    {
      v12 = v23 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v8 + 8 * v11 + 32);
      v13 = v12;
      v10 = [v12 type];
      if (v10 >= 6)
      {
        break;
      }

      v14 = 0x40201000203uLL >> (8 * v10);
      [v13 level];
      v16 = v15;
      v17 = [v13 state] == 2;
      AABattery.batteryIconStyle.getter();
      *v4 = v16;
      v4[8] = v17;
      v4[9] = v14;
      *&v4[*(v1 + 32)] = v13;
      v25 = v6;
      v19 = v6[2];
      v18 = v6[3];
      if (v19 >= v18 >> 1)
      {
        sub_1000CD644((v18 > 1), v19 + 1, 1);
        v6 = v25;
      }

      ++v11;
      v6[2] = v19 + 1;
      sub_10000A4B8(v4, v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v19);
      if (v9 == v11)
      {
        goto LABEL_15;
      }
    }
  }

  v21 = v10;
  type metadata accessor for AABatteryType(0);
  v24 = v21;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_100045798()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, static Logger.battery);
  sub_10000A570(v0, static Logger.battery);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.battery.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10011C698 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_10000A570(v2, static Logger.battery);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000458BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100045904(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100045950(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_100045974(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1000459BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100045A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BatteryIconStyle();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100045B10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BatteryIconStyle();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100045BEC(uint64_t a1)
{
  result = type metadata accessor for BatteryIconStyle();
  if (v2 <= 0x3F)
  {
    result = sub_1000084D4(319, &qword_10011F9D0, AABattery_ptr);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100045CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 128);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100008438(&qword_10011DE28, &unk_1000D98B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100008438(&qword_10011DE30, &qword_1000D79F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 152);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100045E0C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 128) = (a2 - 1);
  }

  else
  {
    v8 = sub_100008438(&qword_10011DE28, &unk_1000D98B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100008438(&qword_10011DE30, &qword_1000D79F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 152);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100045F68(uint64_t a1)
{
  sub_1000463B0(319, &qword_10011CDA8, &type metadata for HeadphoneModel.AnnounceNotificationSources);
  if (v1 <= 0x3F)
  {
    sub_1000463B0(319, &qword_10011CDB0, &type metadata for HeadphoneModel.LiveTranslationSources);
    if (v2 <= 0x3F)
    {
      sub_10004634C(319, &qword_10011DEA0, type metadata accessor for HeadphoneBatteryInfo, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_1000463B0(319, &qword_10011CD60, &type metadata for String);
        if (v4 <= 0x3F)
        {
          type metadata accessor for SFBluetoothCaseLEDColor(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for SFBluetoothCaseLEDVersion(319);
            if (v6 <= 0x3F)
            {
              sub_10004634C(319, &qword_10011DEA8, &type metadata accessor for UUID, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                sub_1000463B0(319, &qword_10011DEB0, &type metadata for Data);
                if (v8 <= 0x3F)
                {
                  sub_1000463FC(319, &qword_10011DEB8, &qword_10011DEC0, AudioAccessoryDevice_ptr);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for SFBluetoothHeadsetStatus(319);
                    if (v10 <= 0x3F)
                    {
                      sub_1000463FC(319, &qword_10011DEC8, &qword_10011DED0, NSBundle_ptr);
                      if (v11 <= 0x3F)
                      {
                        sub_10004634C(319, &qword_10011DED8, &type metadata accessor for HeadphonePairing2.Assets, &type metadata accessor for Optional);
                        if (v12 <= 0x3F)
                        {
                          sub_10004634C(319, &qword_10011DEE0, &type metadata accessor for Date, &type metadata accessor for Optional);
                          if (v13 <= 0x3F)
                          {
                            type metadata accessor for SFAnnounceCallsState(319);
                            if (v14 <= 0x3F)
                            {
                              sub_100046454(319);
                              if (v15 <= 0x3F)
                              {
                                sub_1000463FC(319, &qword_10011DEF8, &qword_10011DF00, AADeviceBatteryInfo_ptr);
                                if (v16 <= 0x3F)
                                {
                                  sub_1000464B8(319);
                                  if (v17 <= 0x3F)
                                  {
                                    swift_cvw_initStructMetadataWithLayoutString();
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
        }
      }
    }
  }
}

void sub_10004634C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1000463B0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000463FC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1000084D4(255, a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100046454(uint64_t a1)
{
  if (!qword_10011DEE8)
  {
    sub_10000A408(&qword_10011DEF0, &qword_1000D7A08);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10011DEE8);
    }
  }
}

void sub_1000464B8(uint64_t a1)
{
  if (!qword_10011DF08)
  {
    sub_10004651C();
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_10011DF08);
    }
  }
}

unint64_t sub_10004651C()
{
  result = qword_10011DF10;
  if (!qword_10011DF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DF10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeadphoneModel.TestMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HeadphoneModel.TestMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeadphoneModel.SiriState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HeadphoneModel.SiriState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeadphoneModel.Mode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HeadphoneModel.Mode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000468D4()
{
  result = qword_10011DFF0;
  if (!qword_10011DFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DFF0);
  }

  return result;
}

unint64_t sub_10004692C()
{
  result = qword_10011DFF8;
  if (!qword_10011DFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DFF8);
  }

  return result;
}

unint64_t sub_100046984()
{
  result = qword_10011E000;
  if (!qword_10011E000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E000);
  }

  return result;
}

unint64_t sub_1000469DC()
{
  result = qword_10011E008;
  if (!qword_10011E008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E008);
  }

  return result;
}

uint64_t sub_100046A30()
{
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000D5240;
  *(v0 + 32) = dispatch thunk of AADBatteryInfoVM.batteryLeft.getter();
  *(v0 + 40) = dispatch thunk of AADBatteryInfoVM.batteryRight.getter();
  *(v0 + 48) = dispatch thunk of AADBatteryInfoVM.batteryMain.getter();
  *(v0 + 56) = dispatch thunk of AADBatteryInfoVM.batteryCase.getter();
  *(v0 + 64) = dispatch thunk of AADBatteryInfoVM.batteryCombinedLeftRight.getter();
  return v0;
}

BOOL sub_100046AA8()
{
  v0 = sub_100046A30();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v4 = &unk_100116000;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v5 type] && objc_msgSend(v6, v4[375]) == 3)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v4 = &unk_100116000;
      }

      else
      {
      }

      ++v3;
      if (v7 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = _swiftEmptyArrayStorage[2];
  }

  return v8 > 0;
}

BOOL sub_100046C58()
{
  v0 = sub_100046A30();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v4 = &unk_100116000;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v5 type] && objc_msgSend(v6, v4[375]) == 4)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v4 = &unk_100116000;
      }

      else
      {
      }

      ++v3;
      if (v7 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = _swiftEmptyArrayStorage[2];
  }

  return v8 > 0;
}

uint64_t sub_100046E08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008438(&qword_10011DE28, &unk_1000D98B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100046E78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v95 = a2;
  v3 = type metadata accessor for URL();
  v88 = *(v3 - 8);
  v89 = v3;
  v4 = __chkstk_darwin(v3);
  v87 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v83 - v7;
  __chkstk_darwin(v6);
  v90 = &v83 - v9;
  v10 = a1[3];
  v11 = a1[4];
  sub_10000E7E4(a1, v10);
  v12 = *(v11 + 24);
  v13 = v12(v10, v11);
  v93 = v14;
  v94 = v13;
  v16 = a1[3];
  v15 = a1[4];
  sub_10000E7E4(a1, v16);
  v17 = (*(v15 + 16))(v16, v15);
  v91 = v18;
  v92 = v17;
  v19 = a1[3];
  v20 = a1[4];
  sub_10000E7E4(a1, v19);
  v21 = (*(v20 + 40))(v19, v20);
  v22 = v12(v10, v11);
  v24 = v23;
  v25 = [objc_opt_self() currentDevice];
  v26 = [v25 userInterfaceIdiom];

  if (v26 == 1)
  {
    if (v22 == 0xD000000000000012 && 0x80000001000DB870 == v24)
    {
      v27 = 1;
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v27 = 0;
  }

  if (qword_10011C690 != -1)
  {
    swift_once();
  }

  v28 = off_10011DD80;
  if (!*(off_10011DD80 + 2) || (v29 = sub_1000CD118(v22, v24), (v30 & 1) == 0) || (v27 & 1) != 0)
  {
    v31 = objc_opt_self();
    v32 = String._bridgeToObjectiveC()();

    v33 = [objc_opt_self() mainScreen];
    [v33 scale];
    v35 = v34;

    v36 = [v31 _applicationIconImageForBundleIdentifier:v32 format:0 scale:v35];
LABEL_13:
    result = sub_10000EA94(a1);
    v38 = v95;
    v39 = v92;
    v40 = v93;
    *v95 = v94;
    v38[1] = v40;
    v38[2] = v39;
    v38[3] = v91;
    *(v38 + 32) = v21 & 1;
    v38[5] = v36;
    return result;
  }

  v41 = qword_10011C688;
  v86 = *(v28[7] + 16 * v29 + 8);

  if (v41 != -1)
  {
    swift_once();
  }

  v42 = v89;
  sub_10000A570(v89, qword_10011DD68);
  URL.appendingPathComponent(_:)();
  URL.appendingPathExtension(_:)();
  v85 = v88[1];
  v85(v8, v42);
  v43 = objc_allocWithZone(NSBundle);
  URL._bridgeToObjectiveC()(v44);
  v46 = v45;
  v47 = [v43 initWithURL:v45];

  if (!v47)
  {
LABEL_22:

    if (qword_10011C680 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_10000A570(v63, qword_10011DD50);
    v64 = v87;
    v65 = v90;
    (v88[2])(v87, v90, v42);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = v64;
      v70 = swift_slowAlloc();
      v96 = v70;
      *v68 = 136315138;
      sub_100017A58();
      v71 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v42;
      v73 = v21;
      v75 = v74;
      v76 = v85;
      v85(v69, v72);
      v77 = sub_100078978(v71, v75, &v96);
      v21 = v73;

      *(v68 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v66, v67, "No bundle found at %s", v68, 0xCu);
      sub_10000EA94(v70);

      v76(v90, v89);
    }

    else
    {

      v78 = v85;
      v85(v64, v42);
      v78(v65, v42);
    }

    v36 = 0;
    goto LABEL_13;
  }

  v48 = v47;
  v49 = String._bridgeToObjectiveC()();
  v50 = [objc_opt_self() imageNamed:v49 inBundle:v48];

  if (!v50)
  {

    goto LABEL_22;
  }

  v88 = v48;
  v51 = [v50 CGImage];
  v87 = v50;
  [v50 scale];
  v53 = [objc_allocWithZone(IFImage) initWithCGImage:v51 scale:v52];

  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1000D78E0;
  *(v54 + 32) = v53;
  v55 = objc_allocWithZone(ISIcon);
  sub_1000084D4(0, &unk_10011E020, IFImage_ptr);
  v84 = v53;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v57 = [v55 initWithImages:isa];

  v58 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
  v59 = [v57 imageForDescriptor:v58];
  if (!v59)
  {

    if (qword_10011C680 != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    sub_10000A570(v79, qword_10011DD50);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "Could not mask icon", v82, 2u);
    }

    else
    {
    }

    v85(v90, v89);
    v36 = 0;
    goto LABEL_13;
  }

  v60 = v59;
  result = [v59 CGImage];
  if (result)
  {
    v61 = result;

    [v60 scale];
    v36 = [objc_allocWithZone(UIImage) initWithCGImage:v61 scale:0 orientation:v62];

    v85(v90, v89);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

double sub_100047878(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100022640(a1, a2);
  }

  return result;
}

__n128 sub_10004788C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000478A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1000478E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100047958(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100008438(&unk_10011E0B0, &unk_1000D7D40);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + 16 * (v12 | (v11 << 6)));
        v15 = *v13;
        v14 = v13[1];

        swift_dynamicCast();
        sub_10004D3D8(&v22, v24);
        sub_10004D3D8(v24, v25);
        sub_10004D3D8(v25, &v23);
        v16 = sub_1000CD118(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          sub_10000EA94(v10);
          sub_10004D3D8(&v23, v10);
          v7 = v11;
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

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          sub_10004D3D8(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_100047BA0()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011E030);
  v1 = sub_10000A570(v0, qword_10011E030);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100047C68()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Dismissing flow", v5, 2u);
  }

  v6 = v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_currentView;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 32))(ObjectType, v7);
    swift_unknownObjectRelease();
    v10 = (v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_presenter);
    swift_beginAccess();
    v11 = v10[3];
    if (v11)
    {
      sub_10000E7E4(v10, v11);
      sub_1000B562C(v9);
    }
  }

  v12 = v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_presenter;
  swift_beginAccess();
  if (*(v12 + 24))
  {
    sub_10000E9C8(v12, v14);
    sub_10000E7E4(v14, v14[3]);
    type metadata accessor for HeadphonePresenter(0);
    sub_1000C0A08();
    sub_10000EA94(v14);
  }

  result = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (result)
  {
    return [result dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

void sub_100047E70()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing announce intro view", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneAnnounceIntroViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneAnnounceIntroViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneAnnounceIntroViewController_type, sub_100014F40, &off_100103808);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_100048014()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing announce customize view", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneAnnounceCustomizeViewController(0);
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService40HeadphoneAnnounceCustomizeViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService40HeadphoneAnnounceCustomizeViewController_type, sub_1000934C0, &off_1001075F0);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_1000481B8()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing battery view", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneBatteryViewController(0);
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_type, sub_100083E0C, &off_100107068);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_10004835C()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing heart rate monitor view", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadhponeHeartRateViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService32HeadhponeHeartRateViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService32HeadhponeHeartRateViewController_type, sub_10009DAD4, &off_100107B90);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_100048500()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing USB Lossless Audio", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for USBHeadphoneLossLessAudioController(0);
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService35USBHeadphoneLossLessAudioController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService35USBHeadphoneLossLessAudioController_type, sub_1000B2188, &off_100108468);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_1000486A4()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing Yodel Card", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneYodelFeaturesViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneYodelFeaturesViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneYodelFeaturesViewController_type, sub_100038940, &off_100104A50);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_100048848()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing Yodel Hearing Protection Upsell", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneYodelHearingProtectionViewController(0);
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController_type, sub_1000204EC, &off_100103FF8);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_1000489EC()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing Yodel Hearing Switch Listening mode", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneYodelHearingSwitchListeningModeViewController(0);
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController_type, sub_100039ECC, &off_100104B08);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_100048B90()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing Yodel Hearing Test Upsell", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneYodelHearingTestViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService39HeadphoneYodelHearingTestViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService39HeadphoneYodelHearingTestViewController_type, sub_100014068, &off_100103750);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_100048D34()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing Pause Media on Sleep Upsell", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphonePauseMediaOnSleepViewController(0);
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService40HeadphonePauseMediaOnSleepViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService40HeadphonePauseMediaOnSleepViewController_type, sub_10002EA58, &off_1001046D0);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_100048ED8()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing connect view", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneConnectViewController(0);
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_type, sub_1000544B4, &off_1001059F0);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_10004907C()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing connecting view", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for USBHeadphoneConnectingViewController(0);
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_type, sub_1000544B4, &off_1001059F0);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_100049220()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing control center view", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneControlCenterTrainingViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService44HeadphoneControlCenterTrainingViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService44HeadphoneControlCenterTrainingViewController_type, sub_1000AD4E4, &off_1001081A0);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_1000493C4()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing end call", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneEndCallViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneEndCallViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneEndCallViewController_type, sub_100018DB0, &off_100103980);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_100049568()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing Adaptive Controls Upsell", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneAdaptiveControlsUpsellViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneAdaptiveControlsUpsellViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneAdaptiveControlsUpsellViewController_type, sub_10000698C, &off_100102E58);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_10004970C()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing Adaptive Controls - Adaptive Mode Card", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneAdaptiveControlsAdaptiveModeViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneAdaptiveControlsAdaptiveModeViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneAdaptiveControlsAdaptiveModeViewController_type, sub_100040564, &off_100104E78);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_1000498B0()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing Adaptive Controls - Personalized Volume Card", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneAdaptiveControlsPersonalizedVolumeViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService57HeadphoneAdaptiveControlsPersonalizedVolumeViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService57HeadphoneAdaptiveControlsPersonalizedVolumeViewController_type, sub_1000B0318, &off_100108370);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_100049A54()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing Adaptive Controls - Conversation Awareness Card", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneAdaptiveControlsConversationAwarenessViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService60HeadphoneAdaptiveControlsConversationAwarenessViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService60HeadphoneAdaptiveControlsConversationAwarenessViewController_type, sub_10001EC44, &off_100103F40);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_100049BF8()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing Whats New", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneWhatsNewUpsellViewController(0);
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController_type, sub_100090730, &off_1001073D0);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_100049D9C()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing Head Gestures", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneHeadGesturesUpsellViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController_type, sub_10008D5C4, &off_100107318);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_100049F40()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing Live Translation", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneLiveTranslationViewController(0);
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_type, sub_10000D748, &off_100103320);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_10004A0E4()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing Live Translation Asset Download", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneLiveTranslationAssetDownloadViewController(0);
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_type, sub_10007D848, &off_100106CF0);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_10004A288()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing error view", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneErrorViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneErrorViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneErrorViewController_type, sub_10003E350, &off_100104D70);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_10004A42C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for HeadphoneViewModel(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_marketingUpsell);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_marketingUpsell + 8);
    sub_10004CE78();
    v9 = v7;
    v10 = v8;
    v11 = static NSObject.== infix(_:_:)();

    if (v11)
    {
      goto LABEL_5;
    }
  }

  v12 = objc_allocWithZone(type metadata accessor for HeadphoneMarketingUpsellViewController());
  v10 = sub_10003689C(a1);
LABEL_5:
  v13 = qword_10011C6A0;
  v25 = v10;
  if (v13 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000A570(v14, qword_10011E030);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Showing marketing upsell view", v17, 2u);
  }

  v18 = *(v2 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v18)
  {
    v19 = (v2 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_presenter);
    swift_beginAccess();
    v20 = v19[3];
    if (v20)
    {
      sub_10000E7E4(v19, v20);
      *&v25[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneMarketingUpsellViewController_presenter + 8] = &off_1001087F0;
      swift_unknownObjectWeakAssign();
      v21 = v25[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneMarketingUpsellViewController_type];
      v22 = v18;
      sub_1000BB69C(v21, v6);
      sub_10004CE1C(v6);
    }

    else
    {
      v24 = v18;
    }

    *(v2 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_currentView + 8) = &off_1001049E8;
    swift_unknownObjectWeakAssign();
    [v18 pushViewController:v25 animated:1];
  }

  else
  {

    v23 = v25;
  }
}

void sub_10004A700(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_marketingUpsell;
  v4 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_marketingUpsell);
  if (!v4 || (v5 = *(v3 + 8), sub_10004CE78(), v6 = v4, v7 = v5, v8 = static NSObject.== infix(_:_:)(), v7, v6, (v8 & 1) == 0))
  {
    if (qword_10011C6A0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000A570(v9, qword_10011E030);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Preloading request handled", v12, 2u);
    }

    v13 = objc_allocWithZone(type metadata accessor for HeadphoneMarketingUpsellViewController());
    v14 = a1;
    v15 = sub_10003689C(v14);
    v17 = *v3;
    v16 = *(v3 + 8);
    *v3 = v14;
    *(v3 + 8) = v15;

    sub_100021640(v17, v16);
  }
}

void sub_10004A884()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing install FindMy App view", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneInstallFindMyViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneInstallFindMyViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneInstallFindMyViewController_type, sub_10000EC1C, &off_100103400);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_10004AA28()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing AirPods linking view", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneLinkingViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneLinkingViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneLinkingViewController_type, sub_10003C0E0, &off_100104C50);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_10004ABCC()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing not genuine view", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneNotGenuineViewController(0);
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_type, sub_10001D118, &off_100103E88);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_10004AD70()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing repair instructions view", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneRepairViewController(0);
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_type, sub_1000A8798, &off_100107F40);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_10004AF14()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing Hey Siri training view", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneSiriViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneSiriViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneSiriViewController_type, sub_100051D28, &off_100105748);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_10004B0B8()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing share audio done view", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneShareAudioDoneViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneShareAudioDoneViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneShareAudioDoneViewController_type, sub_10002A67C, &off_100104368);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_10004B25C()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing spatial audio profile view", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneSpatialAudioProfileViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService42HeadphoneSpatialAudioProfileViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService42HeadphoneSpatialAudioProfileViewController_type, sub_1000B3024, &off_1001084F8);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_10004B400()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing track workout view", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneTrackWorkoutViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneTrackWorkoutViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneTrackWorkoutViewController_type, sub_10002FB40, &off_100104788);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_10004B5A4(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v3)
  {

    [v3 presentViewController:a1 animated:1 completion:0];
  }

  else
  {
    if (qword_10011C6A0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A570(v4, qword_10011E030);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v5, "No navigation controller", v6, 2u);
    }
  }
}

void sub_10004B6D0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for HeadphoneViewModel(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v56[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(*(a2 + 136))
  {
    case 1:
      type metadata accessor for HeadphoneEndCallUpsellViewController();
      v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
      sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneEndCallUpsellViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneEndCallUpsellViewController_type, sub_100095548, &off_1001076D0);
      v10 = 0xE800000000000000;
      v11 = 0x6C6C616320646E65;
      goto LABEL_27;
    case 2:
      type metadata accessor for HeadphoneMuteCallUpsellViewController();
      v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
      sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneMuteCallUpsellViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneMuteCallUpsellViewController_type, sub_1000506F8, &off_100105640);
      v10 = 0xE90000000000006CLL;
      v11 = 0x6C6163206574756DLL;
      goto LABEL_27;
    case 3:
      v11 = 0xD000000000000011;
      v10 = 0x80000001000DFD30;
      type metadata accessor for HeadphoneAdaptiveControlsPersonalizedVolumeViewController();
      v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
      v9 = v12;
      v13 = &OBJC_IVAR____TtC20HeadphoneProxService57HeadphoneAdaptiveControlsPersonalizedVolumeViewController_presenter;
      v14 = &OBJC_IVAR____TtC20HeadphoneProxService57HeadphoneAdaptiveControlsPersonalizedVolumeViewController_type;
      v15 = &off_100108370;
      v16 = sub_1000B0318;
      goto LABEL_14;
    case 4:
      type metadata accessor for HeadphoneProxFeatureManager();
      static HeadphoneProxFeatureManager.shared.getter();
      v17 = HeadphoneProxFeatureManager.getWhatsNewNotShowedFeatures(deviceAddress:)();

      v18 = *(v17 + 16);

      if (!v18)
      {
        if (qword_10011C6A0 != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        sub_10000A570(v34, qword_10011E030);
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&_mh_execute_header, v35, v36, "whatsNewUpsell: All 2025 features seen, skip showing legacy What's new", v37, 2u);
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_1000A0430();

          swift_unknownObjectRelease();
        }

        return;
      }

      type metadata accessor for HeadphoneWhatsNewUpsellViewController(0);
      v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
      sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController_type, sub_100090730, &off_1001073D0);
      v10 = 0xE900000000000077;
      v11 = 0x656E207374616877;
LABEL_27:
      v23 = qword_10011C6A0;
      v24 = v9;
      if (v23 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000A570(v25, qword_10011E030);

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v56[0] = v29;
        *v28 = 136315138;
        v30 = sub_100078978(v11, v10, v56);

        *(v28 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v26, v27, "Showing first view: %s", v28, 0xCu);
        sub_10000EA94(v29);
      }

      else
      {
      }

      v31 = [a1 presentProxCardFlowWithDelegate:v3 initialViewController:v24];
      v32 = *(v3 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
      *(v3 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController) = v31;

      v33 = mach_absolute_time();
      goto LABEL_33;
    case 5:
      type metadata accessor for HeadphoneHeadGesturesUpsellViewController();
      v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
      sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController_type, sub_10008D5C4, &off_100107318);
      v10 = 0xED00007365727574;
      v11 = 0x7365672064616568;
      goto LABEL_27;
    case 6:
      v10 = 0x80000001000DFD10;
      type metadata accessor for HeadphoneLiveTranslationViewController(0);
      v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
      sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_type, sub_10000D748, &off_100103320);
      v11 = 0xD000000000000010;
      goto LABEL_27;
    case 7:
      v10 = 0x80000001000DFCF0;
      type metadata accessor for USBHeadphoneLossLessAudioController(0);
      v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
      sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService35USBHeadphoneLossLessAudioController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService35USBHeadphoneLossLessAudioController_type, sub_1000B2188, &off_100108468);
      v11 = 0xD000000000000012;
      goto LABEL_27;
    case 8:
      type metadata accessor for HeadphoneMismatchViewController(0);
      v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
      sub_10004C834(v9);
      v10 = 0xED00007364756220;
      v11 = 0x686374616D73696DLL;
      goto LABEL_27;
    case 9:
      if (*(a2 + *(type metadata accessor for HeadphoneModel(0) + 84)) == 1)
      {
        type metadata accessor for HeadphoneConnectViewController(0);
        v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
        sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_type, sub_1000544B4, &off_1001059F0);
        v10 = 0xE700000000000000;
        v11 = 0x7463656E6E6F63;
      }

      else
      {
        v10 = 0x80000001000DFCD0;
        type metadata accessor for HeadphoneUnsupportedViewController(0);
        v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
        sub_10004C634(v9);
        v11 = 0xD000000000000013;
      }

      goto LABEL_27;
    case 0xA:
      v22 = type metadata accessor for HeadphoneModel(0);
      if (*(a2 + *(v22 + 136)) == 8223 && *(a2 + *(v22 + 188)) == 1)
      {
        v11 = 0x72756F7920746F6ELL;
        type metadata accessor for USBHeadphoneNotYoursViewController(0);
        v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
        sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneNotYoursViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneNotYoursViewController_type, sub_100032EFC, &off_1001085B0);
      }

      else
      {
        v11 = 0x72756F7920746F6ELL;
        type metadata accessor for HeadphoneNotYoursViewController(0);
        v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
        sub_10004C4E8(v9);
      }

      v10 = 0xE900000000000073;
      goto LABEL_27;
    case 0xB:
      v10 = 0x80000001000DFC90;
      type metadata accessor for HeadphoneAnnounceIntroViewController();
      v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
      sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneAnnounceIntroViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneAnnounceIntroViewController_type, sub_100014F40, &off_100103808);
      v11 = 0xD000000000000016;
      goto LABEL_27;
    case 0xC:
      v10 = 0x80000001000DFC70;
      type metadata accessor for HeadphoneSpatialAudioProfileViewController();
      v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
      sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService42HeadphoneSpatialAudioProfileViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService42HeadphoneSpatialAudioProfileViewController_type, sub_1000B3024, &off_1001084F8);
      v11 = 0xD000000000000015;
      goto LABEL_27;
    case 0xD:
      type metadata accessor for HeadphoneBatteryViewController(0);
      v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
      sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_type, sub_100083E0C, &off_100107068);
      v10 = 0xE700000000000000;
      v11 = 0x79726574746162;
      goto LABEL_27;
    case 0xE:
      v11 = 0xD000000000000011;
      v10 = 0x80000001000DFCB0;
      type metadata accessor for HeadphoneShareAudioViewController();
      v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
      v9 = v12;
      v13 = &OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneShareAudioViewController_presenter;
      v14 = &OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneShareAudioViewController_type;
      v15 = &off_100107E38;
      v16 = sub_1000A413C;
LABEL_14:
      sub_10004CA28(v12, v13, v14, v16, v15);
      goto LABEL_27;
    case 0xF:
      v19 = *(a2 + 152);
      if (v19)
      {
        v20 = *(a2 + 144);
        v21 = v19;
      }

      else
      {
        v21 = 0xE700000000000000;
        v20 = 0x6E776F6E6B6E75;
      }

      objc_allocWithZone(type metadata accessor for HeadphoneOptimizedBatteryCharingViewController());

      sub_100032894(v20, v21);
      v39 = v38;
      v40 = (v3 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_presenter);
      swift_beginAccess();
      v41 = v40[3];
      if (v41)
      {
        v42 = sub_10000E7E4(v40, v41);
        v43 = &v39[OBJC_IVAR____TtC20HeadphoneProxService46HeadphoneOptimizedBatteryCharingViewController_presenter];
        *v43 = *v42;
        *(v43 + 1) = &off_1001087F0;
        v44 = v39;

        swift_unknownObjectRelease();
        sub_1000BB69C(v44[OBJC_IVAR____TtC20HeadphoneProxService46HeadphoneOptimizedBatteryCharingViewController_type], v8);

        sub_10004CE1C(v8);
      }

      *(v3 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_currentView + 8) = &off_100104868;
      swift_unknownObjectWeakAssign();
      v45 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v39];
      v46 = OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController;
      v47 = *(v3 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
      *(v3 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController) = v45;
      v48 = v45;

      if (!v48)
      {
        __break(1u);
        goto LABEL_54;
      }

      [v48 setModalPresentationStyle:2];

      if (qword_10011C6A0 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_10000A570(v49, qword_10011E030);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v55 = v53;
        *v52 = 136315138;
        *(v52 + 4) = sub_100078978(0xD00000000000001ALL, 0x80000001000DFC50, &v55);
        _os_log_impl(&_mh_execute_header, v50, v51, "Showing first view: %s", v52, 0xCu);
        sub_10000EA94(v53);
      }

      v54 = *(v3 + v46);
      if (!v54)
      {
LABEL_54:
        __break(1u);
        JUMPOUT(0x10004C4A8);
      }

      [a1 presentViewController:v54 animated:1 completion:0];
      v33 = mach_absolute_time();

LABEL_33:
      *(v3 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_initialCardDisplayUpTicks) = v33;
      return;
    default:
      type metadata accessor for HeadphoneNotGenuineViewController(0);
      v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
      sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_type, sub_10001D118, &off_100103E88);
      v10 = 0xEB00000000656E69;
      v11 = 0x756E656720746F6ELL;
      goto LABEL_27;
  }
}

uint64_t sub_10004C4E8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for HeadphoneViewModel(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_presenter);
  swift_beginAccess();
  v8 = v7[3];
  if (v8)
  {
    sub_10000E7E4(v7, v8);
    *(a1 + OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneNotYoursViewController_presenter + 8) = &off_1001087F0;
    swift_unknownObjectWeakAssign();
    sub_1000BB69C(*(a1 + OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneNotYoursViewController_type), v6);
    (*((swift_isaMask & *a1) + 0xF0))(v6);
    sub_10004CE1C(v6);
  }

  *(v2 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_currentView + 8) = &off_1001085B0;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_10004C634(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  __chkstk_darwin(v4 - 8);
  v6 = &v17[-v5];
  v7 = type metadata accessor for HeadphoneViewModel(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = (v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_presenter);
  swift_beginAccess();
  v12 = v11[3];
  if (v12)
  {
    v13 = sub_10000E7E4(v11, v12);
    v14 = (a1 + OBJC_IVAR____TtC20HeadphoneProxService34HeadphoneUnsupportedViewController_presenter);
    *v14 = *v13;
    v14[1] = &off_1001087F0;

    swift_unknownObjectRelease();
    sub_1000BB69C(*(a1 + OBJC_IVAR____TtC20HeadphoneProxService34HeadphoneUnsupportedViewController_type), v10);
    sub_1000260D0(v10, v6);
    (*(v8 + 56))(v6, 0, 1, v7);
    v15 = OBJC_IVAR____TtC20HeadphoneProxService34HeadphoneUnsupportedViewController_viewModel;
    swift_beginAccess();
    sub_10004D3E8(v6, a1 + v15);
    swift_endAccess();
  }

  *(v2 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_currentView + 8) = &off_100107288;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_10004C834(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  __chkstk_darwin(v4 - 8);
  v6 = &v15[-v5];
  v7 = type metadata accessor for HeadphoneViewModel(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = (v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_presenter);
  swift_beginAccess();
  v12 = v11[3];
  if (v12)
  {
    sub_10000E7E4(v11, v12);
    *(a1 + OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_presenter + 8) = &off_1001087F0;
    swift_unknownObjectWeakAssign();
    sub_1000BB69C(*(a1 + OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_type), v10);
    sub_1000260D0(v10, v6);
    (*(v8 + 56))(v6, 0, 1, v7);
    v13 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_viewModel;
    swift_beginAccess();
    sub_10004D3E8(v6, a1 + v13);
    swift_endAccess();
  }

  *(v2 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_currentView + 8) = &off_100104218;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_10004CA28(uint64_t a1, void *a2, void *a3, void (*a4)(char *), uint64_t a5)
{
  v10 = v5;
  v12 = type metadata accessor for HeadphoneViewModel(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (v5 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_presenter);
  swift_beginAccess();
  v16 = v15[3];
  if (v16)
  {
    sub_10000E7E4(v15, v16);
    *(a1 + *a2 + 8) = &off_1001087F0;
    swift_unknownObjectWeakAssign();
    sub_1000BB69C(*(a1 + *a3), v14);
    a4(v14);
    sub_10004CE1C(v14);
  }

  *(v10 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_currentView + 8) = a5;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_10004CCB8()
{
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A570(v0, qword_10011E030);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Flow did dismiss", v3, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000A0430();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10004CE1C(uint64_t a1)
{
  v2 = type metadata accessor for HeadphoneViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10004CE78()
{
  result = qword_10011E0A0;
  if (!qword_10011E0A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10011E0A0);
  }

  return result;
}

uint64_t sub_10004CEC4()
{
  v0 = sub_100008438(&qword_10011CF08, &unk_1000D7310);
  __chkstk_darwin(v0 - 8);
  v2 = v31 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000A570(v7, qword_10011E030);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Launching bluetooth settings", v10, 2u);
  }

  URL.init(string:)();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_10000E950(v2, &qword_10011CF08, &unk_1000D7310);
  }

  (*(v4 + 32))(v6, v2, v3);
  sub_100008438(&qword_10011D810, &unk_1000D7D20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D66A0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v13;
  *(inited + 48) = 1;
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v14;
  *(inited + 72) = 1;
  v15 = sub_1000A3764(inited);
  swift_setDeallocating();
  sub_100008438(&qword_10011D818, qword_1000D7320);
  swift_arrayDestroy();
  v16 = [objc_opt_self() defaultWorkspace];
  if (v16)
  {
    v18 = v16;
    URL._bridgeToObjectiveC()(v17);
    v20 = v19;
    sub_100047958(v15);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v32 = 0;
    v22 = [v18 openSensitiveURL:v20 withOptions:isa error:&v32];

    if (v22)
    {
      v23 = *(v4 + 8);
      v24 = v32;
      return v23(v6, v3);
    }

    else
    {
      v25 = v32;
      v26 = _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100008438(&unk_10011DC30, &unk_1000D7D30);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1000D5250;
      v32 = 0;
      v33 = 0xE000000000000000;
      _StringGuts.grow(_:)(27);
      v28._countAndFlagsBits = 0xD000000000000019;
      v28._object = 0x80000001000DF640;
      String.append(_:)(v28);
      v31[1] = v26;
      sub_100008438(&unk_10011D970, &unk_1000D6500);
      _print_unlocked<A, B>(_:_:)();
      v29 = v32;
      v30 = v33;
      *(v27 + 56) = &type metadata for String;
      *(v27 + 32) = v29;
      *(v27 + 40) = v30;
      print(_:separator:terminator:)();

      return (*(v4 + 8))(v6, v3);
    }
  }

  else
  {
    (*(v4 + 8))(v6, v3);
  }
}

_OWORD *sub_10004D3D8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10004D3E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004D458(uint64_t result, char a2)
{
  if (result <= 0x24u && ((0x10FFFE3C1FuLL >> result) & 1) != 0)
  {
    v3 = qword_1000D7F50[result];
    v4 = v2 + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
    result = type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0);
    *(v4 + *(result + v3)) = a2;
  }

  return result;
}

uint64_t sub_10004D504@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004F8D4(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_10004D540()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_10004D588(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2 + 1);
  return Hasher._finalize()();
}

uint64_t sub_10004D5CC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004F8FC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004D5F8@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 6;
  v2 = type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0);
  v3 = v2[5];
  v4 = type metadata accessor for HeadphoneHardwareModel();
  result = (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v6 = &a1[v2[6]];
  *v6 = 0;
  v6[8] = 1;
  a1[v2[7]] = 2;
  v7 = &a1[v2[8]];
  *v7 = 0;
  v7[4] = 1;
  v8 = &a1[v2[9]];
  *v8 = 0;
  v8[4] = 1;
  a1[v2[10]] = 7;
  a1[v2[11]] = 7;
  a1[v2[12]] = 7;
  a1[v2[13]] = 7;
  a1[v2[14]] = 7;
  a1[v2[15]] = 7;
  a1[v2[16]] = 7;
  a1[v2[17]] = 7;
  a1[v2[18]] = 7;
  a1[v2[19]] = 7;
  a1[v2[20]] = 7;
  a1[v2[21]] = 7;
  a1[v2[22]] = 7;
  a1[v2[23]] = 7;
  a1[v2[24]] = 7;
  a1[v2[25]] = 7;
  a1[v2[26]] = 7;
  a1[v2[27]] = 7;
  a1[v2[28]] = 7;
  a1[v2[29]] = 7;
  a1[v2[30]] = 7;
  a1[v2[31]] = 7;
  a1[v2[32]] = 7;
  a1[v2[33]] = 7;
  a1[v2[34]] = 7;
  a1[v2[35]] = 7;
  a1[v2[36]] = 7;
  a1[v2[37]] = 7;
  a1[v2[38]] = 7;
  a1[v2[39]] = 7;
  a1[v2[40]] = 7;
  a1[v2[41]] = 7;
  a1[v2[42]] = 7;
  a1[v2[43]] = 7;
  a1[v2[44]] = 7;
  return result;
}

void *sub_10004D7D4()
{
  v1 = v0 + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics);
  if (v2 != 6)
  {
    sub_10004E9C0();
    v3.super.super.isa = NSNumber.init(integerLiteral:)(v2 + 1).super.super.isa;
  }

  v4 = type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0);
  v5 = v1 + v4[6];
  if ((*(v5 + 8) & 1) == 0)
  {
    v6 = *v5;
    sub_10004E9C0();
    v7.super.super.isa = NSNumber.init(integerLiteral:)(v6).super.super.isa;
  }

  v8 = *(v1 + v4[7]);
  if (v8 != 2)
  {
    sub_10004E9C0();
    v9.super.super.isa = NSNumber.init(BOOLeanLiteral:)(v8 & 1).super.super.isa;
  }

  v10 = (v1 + v4[8]);
  if ((v10[1] & 1) == 0)
  {
    v11 = *v10;
    sub_10004E9C0();
    v12.super.super.isa = NSNumber.init(integerLiteral:)(v11).super.super.isa;
  }

  v13 = (v1 + v4[9]);
  if ((v13[1] & 1) == 0)
  {
    v14 = *v13;
    sub_10004E9C0();
    v15.super.super.isa = NSNumber.init(integerLiteral:)(v14).super.super.isa;
  }

  v16 = *(v1 + v4[10]);
  if (v16 != 7)
  {
    sub_10004E9C0();
    v17.super.super.isa = NSNumber.init(integerLiteral:)(v16 + 1).super.super.isa;
  }

  v18 = *(v1 + v4[11]);
  if (v18 != 7)
  {
    sub_10004E9C0();
    v19.super.super.isa = NSNumber.init(integerLiteral:)(v18 + 1).super.super.isa;
  }

  v20 = *(v1 + v4[12]);
  if (v20 != 7)
  {
    sub_10004E9C0();
    v21.super.super.isa = NSNumber.init(integerLiteral:)(v20 + 1).super.super.isa;
  }

  v22 = *(v1 + v4[14]);
  if (v22 != 7)
  {
    sub_10004E9C0();
    v23.super.super.isa = NSNumber.init(integerLiteral:)(v22 + 1).super.super.isa;
  }

  v24 = *(v1 + v4[15]);
  if (v24 != 7)
  {
    sub_10004E9C0();
    v25.super.super.isa = NSNumber.init(integerLiteral:)(v24 + 1).super.super.isa;
  }

  v26 = *(v1 + v4[16]);
  if (v26 != 7)
  {
    sub_10004E9C0();
    v27.super.super.isa = NSNumber.init(integerLiteral:)(v26 + 1).super.super.isa;
  }

  v28 = *(v1 + v4[17]);
  if (v28 != 7)
  {
    sub_10004E9C0();
    v29.super.super.isa = NSNumber.init(integerLiteral:)(v28 + 1).super.super.isa;
  }

  v30 = *(v1 + v4[18]);
  if (v30 != 7)
  {
    sub_10004E9C0();
    v31.super.super.isa = NSNumber.init(integerLiteral:)(v30 + 1).super.super.isa;
  }

  v32 = *(v1 + v4[19]);
  if (v32 != 7)
  {
    sub_10004E9C0();
    v33.super.super.isa = NSNumber.init(integerLiteral:)(v32 + 1).super.super.isa;
  }

  v34 = *(v1 + v4[20]);
  if (v34 != 7)
  {
    sub_10004E9C0();
    v35.super.super.isa = NSNumber.init(integerLiteral:)(v34 + 1).super.super.isa;
  }

  v36 = *(v1 + v4[21]);
  if (v36 != 7)
  {
    sub_10004E9C0();
    v37.super.super.isa = NSNumber.init(integerLiteral:)(v36 + 1).super.super.isa;
  }

  v38 = *(v1 + v4[22]);
  if (v38 != 7)
  {
    sub_10004E9C0();
    v39.super.super.isa = NSNumber.init(integerLiteral:)(v38 + 1).super.super.isa;
  }

  v40 = *(v1 + v4[23]);
  if (v40 != 7)
  {
    sub_10004E9C0();
    v41.super.super.isa = NSNumber.init(integerLiteral:)(v40 + 1).super.super.isa;
  }

  v42 = *(v1 + v4[24]);
  if (v42 != 7)
  {
    sub_10004E9C0();
    v43.super.super.isa = NSNumber.init(integerLiteral:)(v42 + 1).super.super.isa;
  }

  v44 = *(v1 + v4[25]);
  if (v44 != 7)
  {
    sub_10004E9C0();
    v45.super.super.isa = NSNumber.init(integerLiteral:)(v44 + 1).super.super.isa;
  }

  v46 = *(v1 + v4[26]);
  if (v46 != 7)
  {
    sub_10004E9C0();
    v47.super.super.isa = NSNumber.init(integerLiteral:)(v46 + 1).super.super.isa;
  }

  v48 = *(v1 + v4[27]);
  if (v48 != 7)
  {
    sub_10004E9C0();
    v49.super.super.isa = NSNumber.init(integerLiteral:)(v48 + 1).super.super.isa;
  }

  v50 = *(v1 + v4[28]);
  if (v50 != 7)
  {
    sub_10004E9C0();
    v51.super.super.isa = NSNumber.init(integerLiteral:)(v50 + 1).super.super.isa;
  }

  v52 = *(v1 + v4[29]);
  if (v52 != 7)
  {
    sub_10004E9C0();
    v53.super.super.isa = NSNumber.init(integerLiteral:)(v52 + 1).super.super.isa;
  }

  v54 = *(v1 + v4[30]);
  if (v54 != 7)
  {
    sub_10004E9C0();
    v55.super.super.isa = NSNumber.init(integerLiteral:)(v54 + 1).super.super.isa;
  }

  v56 = *(v1 + v4[31]);
  if (v56 != 7)
  {
    sub_10004E9C0();
    v57.super.super.isa = NSNumber.init(integerLiteral:)(v56 + 1).super.super.isa;
  }

  v58 = *(v1 + v4[32]);
  if (v58 != 7)
  {
    sub_10004E9C0();
    v59.super.super.isa = NSNumber.init(integerLiteral:)(v58 + 1).super.super.isa;
  }

  v60 = *(v1 + v4[33]);
  if (v60 != 7)
  {
    sub_10004E9C0();
    v61.super.super.isa = NSNumber.init(integerLiteral:)(v60 + 1).super.super.isa;
  }

  v62 = *(v1 + v4[34]);
  if (v62 != 7)
  {
    sub_10004E9C0();
    v63.super.super.isa = NSNumber.init(integerLiteral:)(v62 + 1).super.super.isa;
  }

  v64 = *(v1 + v4[35]);
  if (v64 != 7)
  {
    sub_10004E9C0();
    v65.super.super.isa = NSNumber.init(integerLiteral:)(v64 + 1).super.super.isa;
  }

  v66 = *(v1 + v4[36]);
  if (v66 != 7)
  {
    sub_10004E9C0();
    v67.super.super.isa = NSNumber.init(integerLiteral:)(v66 + 1).super.super.isa;
  }

  v68 = *(v1 + v4[37]);
  if (v68 != 7)
  {
    sub_10004E9C0();
    v69.super.super.isa = NSNumber.init(integerLiteral:)(v68 + 1).super.super.isa;
  }

  v70 = *(v1 + v4[43]);
  if (v70 != 7)
  {
    sub_10004E9C0();
    v71.super.super.isa = NSNumber.init(integerLiteral:)(v70 + 1).super.super.isa;
  }

  v72 = *(v1 + v4[38]);
  if (v72 != 7)
  {
    sub_10004E9C0();
    v73.super.super.isa = NSNumber.init(integerLiteral:)(v72 + 1).super.super.isa;
  }

  v74 = *(v1 + v4[39]);
  if (v74 != 7)
  {
    sub_10004E9C0();
    v75.super.super.isa = NSNumber.init(integerLiteral:)(v74 + 1).super.super.isa;
  }

  v76 = *(v1 + v4[40]);
  if (v76 != 7)
  {
    sub_10004E9C0();
    v77.super.super.isa = NSNumber.init(integerLiteral:)(v76 + 1).super.super.isa;
  }

  v78 = *(v1 + v4[41]);
  if (v78 != 7)
  {
    sub_10004E9C0();
    v79.super.super.isa = NSNumber.init(integerLiteral:)(v78 + 1).super.super.isa;
  }

  v80 = *(v1 + v4[42]);
  if (v80 != 7)
  {
    sub_10004E9C0();
    v81.super.super.isa = NSNumber.init(integerLiteral:)(v80 + 1).super.super.isa;
  }

  return &_swiftEmptyDictionarySingleton;
}

uint64_t sub_10004E2B8()
{
  sub_10004F938(v0 + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics);

  return swift_deallocClassInstance();
}

uint64_t sub_10004E344(uint64_t a1)
{
  result = type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(319);
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

uint64_t sub_10004E408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100008438(&qword_10011E198, &unk_1000D7DA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 2)
    {
      v13 = ((v12 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v13 = -2;
    }

    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_10004E504(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100008438(&qword_10011E198, &unk_1000D7DA0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 2;
  }

  return result;
}

void sub_10004E5CC(uint64_t a1)
{
  sub_1000463B0(319, &qword_10011E208, &type metadata for HeadphoneAnalyticsController.ProxFlowType);
  if (v1 <= 0x3F)
  {
    sub_10004E758(319);
    if (v2 <= 0x3F)
    {
      sub_1000463B0(319, &qword_10011E218, &type metadata for Int);
      if (v3 <= 0x3F)
      {
        sub_1000463B0(319, &qword_10011E220, &type metadata for Bool);
        if (v4 <= 0x3F)
        {
          sub_1000463B0(319, &qword_10011E228, &type metadata for Int32);
          if (v5 <= 0x3F)
          {
            sub_1000463B0(319, &unk_10011E230, &type metadata for HeadphoneAnalyticsController.ProxCardActionType);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10004E758(uint64_t a1)
{
  if (!qword_10011E210)
  {
    type metadata accessor for HeadphoneHardwareModel();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10011E210);
    }
  }
}

uint64_t getEnumTagSinglePayload for HeadphoneAnalyticsController.ProxCardActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HeadphoneAnalyticsController.ProxCardActionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10004E914()
{
  result = qword_10011E300;
  if (!qword_10011E300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E300);
  }

  return result;
}

unint64_t sub_10004E96C()
{
  result = qword_10011E308;
  if (!qword_10011E308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E308);
  }

  return result;
}

unint64_t sub_10004E9C0()
{
  result = qword_10011DC20;
  if (!qword_10011DC20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10011DC20);
  }

  return result;
}

unint64_t sub_10004EA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  result = sub_1000CD118(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    sub_10004EB6C(v16, isUniquelyReferenced_nonNull_native);
    result = sub_1000CD118(a2, a3);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v20 = result;
    sub_10004F448();
    result = v20;
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  if (v4)
  {
LABEL_7:
    v18 = v10[7];
    v19 = *(v18 + 8 * result);
    *(v18 + 8 * result) = a1;
LABEL_12:
    *v5 = v10;
    return v19;
  }

LABEL_10:
  v10[(result >> 6) + 8] |= 1 << result;
  v21 = (v10[6] + 16 * result);
  *v21 = a2;
  v21[1] = a3;
  *(v10[7] + 8 * result) = a1;
  v22 = v10[2];
  v15 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (!v15)
  {
    v10[2] = v23;

    v19 = 0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_10004EB6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100008438(&qword_10011E310, &unk_1000D7F30);
  v36 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
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
    v14 = v6 + 64;
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
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v26 = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_10004EE10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100008438(&qword_10011E318, &unk_1000D7F40);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + 24 * v20;
      v36 = *v22;
      v23 = *(v22 + 8);
      v24 = *(v22 + 16);
      if ((v35 & 1) == 0)
      {
        sub_10004F924(v23, v24);
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v36;
      *(v16 + 8) = v23;
      *(v16 + 16) = v24;
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
}

void sub_10004F0D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100008438(&unk_10011E0B0, &unk_1000D7D40);
  v34 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v34)
      {
        sub_10004D3D8(v24, v35);
      }

      else
      {
        sub_10003CE5C(v24, v35);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      sub_10004D3D8(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

unint64_t sub_10004F388(unint64_t result, char a2, char a3, uint64_t a4, char a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + result) = a2;
  v6 = a6[7] + 24 * result;
  *v6 = a3;
  *(v6 + 8) = a4;
  *(v6 + 16) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

_OWORD *sub_10004F3DC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10004D3D8(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void sub_10004F448()
{
  v1 = v0;
  sub_100008438(&qword_10011E310, &unk_1000D7F30);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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

        v22 = v20;
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
}

void sub_10004F5B4()
{
  v1 = v0;
  sub_100008438(&qword_10011E318, &unk_1000D7F40);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v22 = *(v4 + 56) + 24 * v17;
        *v22 = v19;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        sub_10004F924(v20, v21);
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
}

void sub_10004F730()
{
  v1 = v0;
  sub_100008438(&unk_10011E0B0, &unk_1000D7D40);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10003CE5C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10004D3D8(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

uint64_t sub_10004F8D4(unint64_t a1)
{
  if (a1 >= 8)
  {
    return 7;
  }

  else
  {
    return (0x605040302010007uLL >> (8 * a1));
  }
}

uint64_t sub_10004F8FC(unint64_t a1)
{
  if (a1 >= 7)
  {
    return 6;
  }

  else
  {
    return (0x5040302010006uLL >> (8 * a1));
  }
}

uint64_t sub_10004F924(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    return swift_unknownObjectRetain();
  }

  return v2;
}

uint64_t sub_10004F938(uint64_t a1)
{
  v2 = type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004F9A4()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011E320);
  v1 = sub_10000A570(v0, qword_10011E320);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10004FA6C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for HeadphoneModel(0);
  v4 = __chkstk_darwin(v3);
  v6 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v82 - v7;
  v89.receiver = v1;
  v89.super_class = ObjectType;
  objc_msgSendSuper2(&v89, "viewDidLoad");
  [v1 setDismissalType:1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_beginAccess();
    sub_10000E88C(v10 + 16, &v87, &qword_10011FBC0, &unk_1000D5EF0);
    swift_unknownObjectRelease();
    v11 = *(&v88 + 1);
    if (*(&v88 + 1))
    {
      v12 = sub_10000E7E4(&v87, *(&v88 + 1));
      v13 = *(v11 - 8);
      __chkstk_darwin(v12);
      v15 = (&v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v13 + 16))(v15);
      sub_10000E950(&v87, &qword_10011FBC0, &unk_1000D5EF0);
      v16 = *v15;
      v83 = v8;
      v17 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      v18 = v16 + v17;
      v19 = v83;
      sub_10000E390(v18, v6);
      (*(v13 + 8))(v15, v11);
      sub_10000E828(v6, v19);
      type metadata accessor for HeadphoneEndCallViewController();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v21 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v22 = [v1 traitCollection];
      v23 = [v22 userInterfaceStyle];

      if (v23 == 1)
      {
        v24 = 0x746867694CLL;
      }

      else
      {
        v24 = 1802658116;
      }

      if (v23 == 1)
      {
        v25 = 0xE500000000000000;
      }

      else
      {
        v25 = 0xE400000000000000;
      }

      *&v87 = 0x6C6C61436574754DLL;
      *(&v87 + 1) = 0xE90000000000005FLL;
      LODWORD(v84) = *(v19 + *(v3 + 136));
      v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v26);

      v27._countAndFlagsBits = 95;
      v27._object = 0xE100000000000000;
      String.append(_:)(v27);
      v28._countAndFlagsBits = v24;
      v28._object = v25;
      String.append(_:)(v28);

      v29 = objc_allocWithZone(BSUICAPackageView);
      v30 = v21;
      v31 = String._bridgeToObjectiveC()();

      v32 = [v29 initWithPackageName:v31 inBundle:v30];

      if (!v32)
      {
        if (qword_10011C6A8 != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for Logger();
        sub_10000A570(v44, qword_10011E320);
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&_mh_execute_header, v45, v46, "Mute Call: Headphone Model is nil, exiting", v47, 2u);
        }

        else
        {
        }

        goto LABEL_39;
      }

      v33 = String._bridgeToObjectiveC()();
      [v32 setState:v33 animated:1];

      v34 = v32;
      [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
      v35 = [v1 contentView];
      [v35 addSubview:v34];

      v36 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneMuteCallUpsellViewController_tintColor];
      v82 = v30;
      if (v36)
      {
        v37 = v36;
        v38 = String._bridgeToObjectiveC()();
        v39 = [v34 publishedObjectWithName:{v38, v82}];

        if (v39)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v84 = 0u;
          v85 = 0u;
        }

        v87 = v84;
        v88 = v85;
        if (*(&v85 + 1))
        {
          sub_1000084D4(0, &qword_10011E378, CALayer_ptr);
          if (swift_dynamicCast())
          {
            v48 = v86;
            [v86 setBackgroundColor:v37];

LABEL_38:
            v61 = [v1 contentView];
            v62 = [v61 mainContentGuide];

            v63 = objc_opt_self();
            sub_100008438(&unk_10011D960, &qword_1000D5CF0);
            v64 = swift_allocObject();
            *(v64 + 16) = xmmword_1000D5C80;
            v65 = [v34 topAnchor];
            v66 = [v62 topAnchor];
            v67 = [v65 constraintGreaterThanOrEqualToAnchor:v66];

            *(v64 + 32) = v67;
            v68 = [v34 bottomAnchor];
            v69 = [v62 bottomAnchor];
            v70 = [v68 constraintLessThanOrEqualToAnchor:v69];

            *(v64 + 40) = v70;
            v71 = [v34 heightAnchor];
            v72 = [v71 constraintEqualToConstant:214.0];

            *(v64 + 48) = v72;
            v73 = [v34 widthAnchor];
            v74 = [v73 constraintEqualToConstant:320.0];

            *(v64 + 56) = v74;
            v75 = [v34 centerYAnchor];
            v76 = [v62 centerYAnchor];
            v77 = [v75 constraintEqualToAnchor:v76];

            *(v64 + 64) = v77;
            v78 = [v34 centerXAnchor];

            v79 = [v62 centerXAnchor];
            v80 = [v78 constraintEqualToAnchor:v79];

            *(v64 + 72) = v80;
            sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v63 activateConstraints:isa];

LABEL_39:
            sub_10000E8F4(v19);
            return;
          }
        }

        else
        {

          sub_10000E950(&v87, &qword_10011DC40, &qword_1000D7C40);
        }
      }

      if (qword_10011C6A8 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_10000A570(v49, qword_10011E320);
      v50 = v34;
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v86 = v54;
        *v53 = 136315138;
        v55 = String._bridgeToObjectiveC()();
        v56 = [v50 publishedObjectWithName:v55];

        if (v56)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v84 = 0u;
          v85 = 0u;
        }

        v87 = v84;
        v88 = v85;
        sub_10000E88C(&v87, &v84, &qword_10011DC40, &qword_1000D7C40);
        sub_100008438(&qword_10011DC40, &qword_1000D7C40);
        v57 = String.init<A>(reflecting:)();
        v59 = v58;
        sub_10000E950(&v87, &qword_10011DC40, &qword_1000D7C40);
        v60 = sub_100078978(v57, v59, &v86);

        *(v53 + 4) = v60;
        _os_log_impl(&_mh_execute_header, v51, v52, "Mute Call: mica is nil, %s", v53, 0xCu);
        sub_10000EA94(v54);

        v19 = v83;
      }

      else
      {

        v19 = v83;
      }

      goto LABEL_38;
    }

    sub_10000E950(&v87, &qword_10011FBC0, &unk_1000D5EF0);
  }

  if (qword_10011C6A8 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_10000A570(v40, qword_10011E320);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Mute Call: Headphone Model is nil, exiting", v43, 2u);
  }
}

void sub_1000506F8(uint64_t a1)
{
  v3 = String._bridgeToObjectiveC()();
  [v1 setTitle:v3];

  v4 = String._bridgeToObjectiveC()();
  [v1 setSubtitle:v4];

  v5 = *(a1 + *(type metadata accessor for HeadphoneViewModel(0) + 88));
  v6 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneMuteCallUpsellViewController_tintColor];
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneMuteCallUpsellViewController_tintColor] = v5;
  v7 = v5;

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v9 = String._bridgeToObjectiveC()();
  v13[4] = sub_100050A74;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10000C034;
  v13[3] = &unk_1001056A8;
  v10 = _Block_copy(v13);
  v11 = [objc_opt_self() actionWithTitle:v9 style:3 handler:v10];

  _Block_release(v10);

  v12 = [v1 addAction:v11];
}

void sub_1000508C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      sub_1000B771C();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100050A3C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100050A7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100050A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + *(type metadata accessor for HeadphoneModel(0) + 136));
  v5 = objc_opt_self();
  v6 = [v5 airPods];
  v7 = [v6 productID];

  if (v4 == v7 || (v8 = [v5 airPodsSecondGeneration], v9 = objc_msgSend(v8, "productID"), v8, v4 == v9))
  {
    v14 = a1;

    v10._countAndFlagsBits = 0x53444F505249415FLL;
    v10._object = 0xE800000000000000;
    String.append(_:)(v10);
  }

  else
  {
    v14 = a1;

    v11._countAndFlagsBits = 0x5F4449505FLL;
    v11._object = 0xE500000000000000;
    String.append(_:)(v11);
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);
  }

  return v14;
}

uint64_t sub_100050BE8(uint64_t a1, void *a2, int a3)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = objc_opt_self();
  v8 = [v7 bundleWithIdentifier:v6];

  if (!v8)
  {
    return 0;
  }

  v9 = objc_opt_self();
  v10 = [v9 airPods];
  v11 = [v10 productID];

  if (v11 == a3 || (v12 = [v9 airPodsSecondGeneration], v13 = objc_msgSend(v12, "productID"), v12, v13 == a3))
  {
    v14 = [v7 mainBundle];
    v24._object = 0xE000000000000000;
    v15.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v15.value._object = 0xEB00000000656C62;
    v16._countAndFlagsBits = a1;
    v16._object = a2;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v24._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v15, v14, v17, v24)._countAndFlagsBits;
  }

  else
  {
    _StringGuts.grow(_:)(18);

    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20.value._countAndFlagsBits = 0xD000000000000010;
    v25._object = 0xE000000000000000;
    v21._countAndFlagsBits = a1;
    v21._object = a2;
    v20.value._object = 0x80000001000DEEB0;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v25._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v20, v8, v22, v25)._countAndFlagsBits;
  }

  return countAndFlagsBits;
}

uint64_t sub_100050E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 == 0x5F544355444F5250 && a2 == 0xEC000000454D414ELL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((v7 = *(a3 + *(type metadata accessor for HeadphoneModel(0) + 136)), v8 = objc_opt_self(), v9 = [v8 airPods], v10 = objc_msgSend(v9, "productID"), v9, v7 == v10) || (v11 = objc_msgSend(v8, "airPodsSecondGeneration"), v12 = objc_msgSend(v11, "productID"), v11, v7 == v12)))
  {

    return sub_100033A5C(12);
  }

  else if (a1 == 0x52554F595F544F4ELL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((v14 = *(a3 + *(type metadata accessor for HeadphoneModel(0) + 136)), v15 = objc_opt_self(), v16 = [v15 airPods], v17 = objc_msgSend(v16, "productID"), v16, v14 == v17) || (v18 = objc_msgSend(v15, "airPodsSecondGeneration"), v19 = objc_msgSend(v18, "productID"), v18, v14 == v19)))
  {
    v20 = [objc_opt_self() mainBundle];
    v31._object = 0xE000000000000000;
    v21.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v21.value._object = 0xEB00000000656C62;
    v22._object = 0x80000001000E0110;
    v22._countAndFlagsBits = 0xD000000000000010;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v31._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v21, v20, v23, v31)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    v25 = sub_100050A94(a1, a2, a3);
    v27 = v26;
    v28 = type metadata accessor for HeadphoneModel(0);
    v29 = sub_100050BE8(v25, v27, *(a3 + *(v28 + 136)));

    return v29;
  }
}